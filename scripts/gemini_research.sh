#!/usr/bin/env bash
# Research wrapper. All market/catalyst research routes through Gemini
# 2.5 Flash (generateContent API) with Google Search grounding — not the
# agent's native WebSearch tool — so claims in the research log trace back
# to cited sources.
#
# NOTE (2026-10-03): migrated off the Gemini Deep Research agent
# (Interactions API), which is paid-tier only and returned HTTP 429 on this
# account's free tier. gemini-2.5-flash via generateContent is free within
# quota (5 RPM / 250K TPM / 20 RPD; grounding free up to 500 RPD) and
# answers in seconds. Trade-off: single-shot grounded answers instead of a
# 5-15 minute agentic research loop — shallower per query, so keep prompts
# consolidated and specific (batch tickers, don't fire one query each).
#
# Usage:
#   bash scripts/gemini_research.sh research "<query>" [standard|max]
#       Blocking: one generateContent call; prints the report text plus a
#       "Sources" section built from grounding chunks. The [standard|max]
#       tier arg is accepted for backward compatibility; max raises the
#       output token cap. A single retry follows a 429 after 65s.
#
#   bash scripts/gemini_research.sh submit "<query>" [standard|max]
#       Non-blocking: runs research in the background, prints a job id
#       immediately. Submissions are spaced ~15s apart via a lockfile so
#       parallel submits don't trip the 5 RPM free-tier cap.
#
#   bash scripts/gemini_research.sh poll <job_id>
#       Single status check. Prints "in_progress", or the report text if the
#       job finished, or an error if it failed.
#
# Quota guard: the free tier allows 20 requests/day. If the day's quota is
# exhausted the call exits 4 with a clear message — callers must fall back
# to native WebSearch and note the fallback in the log.
#
# Exits with code 3 if GEMINI_API_KEY is unset, letting callers fall back
# to native WebSearch and flag the fallback in the log.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ -z "${GEMINI_API_KEY:-}" ]]; then
  echo "WARNING: GEMINI_API_KEY not set. Fall back to WebSearch." >&2
  exit 3
fi

API_BASE="${GEMINI_API_BASE:-https://generativelanguage.googleapis.com/v1beta}"
MODEL="${GEMINI_RESEARCH_MODEL:-gemini-2.5-flash}"
ENDPOINT="$API_BASE/models/$MODEL:generateContent"
CURL_TIMEOUT="${GEMINI_RESEARCH_TIMEOUT:-240}"
RETRY_WAIT="${GEMINI_RESEARCH_RETRY_WAIT:-65}"
SUBMIT_SPACING="${GEMINI_RESEARCH_SUBMIT_SPACING:-15}"
STATE_DIR="${GEMINI_RESEARCH_STATE_DIR:-${TMPDIR:-/tmp}/gemini_research_jobs}"

SYSTEM_INSTRUCTION="You are a financial research assistant for an S&P 500 momentum trading strategy. Answer the query directly in concise markdown with short sections. Every factual claim (prices, dates, news events, analyst ratings) must be followed by its source URL in parentheses. Do not invent tickers, prices, dates, or catalysts. If information is unavailable, say so instead of guessing."

max_tokens_for_tier() {
  if [[ "${1:-standard}" == "max" ]]; then
    echo "16384"
  else
    echo "8192"
  fi
}

build_payload() {
  local query="$1" tier="${2:-standard}"
  local max_tokens
  max_tokens="$(max_tokens_for_tier "$tier")"
  python3 -c "
import json, sys
print(json.dumps({
    'system_instruction': {'parts': [{'text': sys.argv[1]}]},
    'contents': [{'parts': [{'text': sys.argv[2]}]}],
    'tools': [{'google_search': {}}],
    'generationConfig': {
        'temperature': 0.2,
        'maxOutputTokens': int(sys.argv[3]),
    },
}))
" "$SYSTEM_INSTRUCTION" "$query" "$max_tokens"
}

# do_call <query> [tier] — one generateContent call with a single 429 retry.
# Prints the raw JSON response on stdout. Exits 4 on failure.
do_call() {
  local query="$1" tier="${2:-standard}"
  local payload http_code body attempt
  payload="$(build_payload "$query" "$tier")"
  for attempt in 1 2; do
    body="$(curl -sS --max-time "$CURL_TIMEOUT" -X POST "$ENDPOINT" \
      -H "x-goog-api-key: $GEMINI_API_KEY" \
      -H "Content-Type: application/json" \
      -d "$payload" -w '\n%{http_code}')"
    http_code="$(echo "$body" | tail -n 1)"
    body="$(echo "$body" | sed '$d')"
    if [[ "$http_code" == "200" ]]; then
      echo "$body"
      return 0
    fi
    if [[ "$http_code" == "429" && "$attempt" == "1" ]]; then
      echo "WARNING: HTTP 429 (rate limit); retrying once after ${RETRY_WAIT}s." >&2
      sleep "$RETRY_WAIT"
      continue
    fi
    echo "ERROR: Gemini API call failed (HTTP $http_code, attempt $attempt)." >&2
    echo "$body" | head -c 2000 >&2
    if [[ "$http_code" == "429" ]]; then
      echo "HINT: free-tier quota exhausted (20 requests/day). Fall back to WebSearch." >&2
    fi
    return 4
  done
}

# extract_report — stdin: generateContent JSON. Prints report text plus a
# "Sources" section from grounding chunks. Exits 4 if nothing usable.
extract_report() {
  python3 -c "
import json, sys
try:
    data = json.load(sys.stdin)
except Exception as e:
    print(f'ERROR: could not parse Gemini response: {e}', file=sys.stderr)
    sys.exit(4)
cands = data.get('candidates', [])
if not cands:
    fr = data.get('promptFeedback', {}).get('blockReason', 'unknown')
    print(f'ERROR: no candidates returned (blockReason={fr})', file=sys.stderr)
    sys.exit(4)
cand = cands[0]
if cand.get('finishReason') not in (None, 'STOP', 'MAX_TOKENS'):
    print(f'ERROR: generation stopped: {cand.get(\"finishReason\")}', file=sys.stderr)
    sys.exit(4)
texts = [p.get('text', '') for p in cand.get('content', {}).get('parts', []) if p.get('text')]
report = '\n'.join(texts).strip()
if not report:
    print('ERROR: empty response text', file=sys.stderr)
    sys.exit(4)
print(report)
chunks = (cand.get('groundingMetadata', {}) or {}).get('groundingChunks', []) or []
seen = set()
sources = []
for ch in chunks:
    web = ch.get('web', {}) or {}
    uri = web.get('uri', '')
    if uri and uri not in seen:
        seen.add(uri)
        sources.append((web.get('title', uri), uri))
if sources:
    print()
    print('## Sources')
    for title, uri in sources:
        print(f'- [{title}]({uri})')
"
}

do_research() {
  local query="$1" tier="${2:-standard}" resp
  if ! resp="$(do_call "$query" "$tier")"; then
    return 4
  fi
  echo "$resp" | extract_report
}

# Background-job bookkeeping for submit/poll. State lives under $STATE_DIR:
#   <id>.out    — report text (written on success)
#   <id>.done   — marker written on success
#   <id>.failed — stderr log on failure
job_paths() {
  local id="$1"
  echo "$STATE_DIR/$id.out $STATE_DIR/$id.done $STATE_DIR/$id.failed"
}

do_submit() {
  local query="$1" tier="${2:-standard}"
  local id out done failed lock last now wait script_path
  script_path="$ROOT/scripts/gemini_research.sh"
  mkdir -p "$STATE_DIR"
  # Space submissions to respect the 5 RPM free-tier cap.
  lock="$STATE_DIR/.submit_lock"
  exec 9>"$lock"
  flock 9
  last="$(cat "$STATE_DIR/.last_submit" 2>/dev/null || echo 0)"
  now="$(date +%s)"
  wait=$((SUBMIT_SPACING - (now - last)))
  if [[ "$wait" -gt 0 ]]; then
    sleep "$wait"
  fi
  date +%s > "$STATE_DIR/.last_submit"
  flock -u 9
  id="job_$(date +%s)_$RANDOM"
  read -r out done failed < <(job_paths "$id")
  touch "$out"
  # Run detached: nohup so the caller can exit; the job re-invokes this
  # script's research path and records done/failed markers.
  nohup bash -c '
    script="$1"; query="$2"; tier="$3"; out="$4"; done="$5"; failed="$6"
    if bash "$script" research "$query" "$tier" >"$out" 2>"$out.err"; then
      touch "$done"
    else
      mv "$out.err" "$failed"
    fi
  ' _ "$script_path" "$query" "$tier" "$out" "$done" "$failed" >/dev/null 2>&1 &
  disown 2>/dev/null || true
  echo "$id"
}

do_poll() {
  local id="$1" out done failed
  read -r out done failed < <(job_paths "$id")
  if [[ ! -f "$out" && ! -f "$done" && ! -f "$failed" ]]; then
    echo "ERROR: unknown job id: $id" >&2
    return 4
  fi
  if [[ -f "$failed" ]]; then
    echo "ERROR: research job $id failed" >&2
    cat "$failed" >&2
    return 4
  fi
  if [[ -f "$done" ]]; then
    cat "$out"
  else
    echo "in_progress"
  fi
}

cmd="${1:-}"
shift || true

case "$cmd" in
  research)
    query="${1:?usage: research \"<query>\" [standard|max]}"
    tier="${2:-standard}"
    do_research "$query" "$tier"
    ;;
  submit)
    query="${1:?usage: submit \"<query>\" [standard|max]}"
    tier="${2:-standard}"
    do_submit "$query" "$tier"
    ;;
  poll)
    id="${1:?usage: poll <job_id>}"
    do_poll "$id"
    ;;
  *)
    echo "Usage: bash scripts/gemini_research.sh <research|submit|poll> ..." >&2
    exit 1
    ;;
esac
