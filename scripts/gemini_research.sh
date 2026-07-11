#!/usr/bin/env bash
# Research wrapper. All market/catalyst research routes through the Gemini
# Deep Research agent (Interactions API) — not the agent's native WebSearch
# tool — so every claim in the research log traces back to a cited report.
#
# IMPORTANT: Deep Research is a BACKGROUND agent. A single task takes
# 5-20 minutes, not seconds. Do not call this in a loop for many small
# queries the way you would a fast search API — consolidate into fewer,
# higher-value queries, and use submit/poll to run several in parallel
# instead of blocking on them one at a time.
#
# Usage:
#   bash scripts/gemini_research.sh research "<query>" [standard|max]
#       Blocking: submit + poll until done, print the final report text.
#       Fine for a single consolidated daily query.
#
#   bash scripts/gemini_research.sh submit "<query>" [standard|max]
#       Non-blocking: submit and print the interaction id immediately.
#       Use this in a loop to fire off multiple research tasks in parallel,
#       then poll each one.
#
#   bash scripts/gemini_research.sh poll <interaction_id>
#       Single status check. Prints "in_progress", or the report text if
#       status is "completed", or an error if "failed".
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

API="https://generativelanguage.googleapis.com/v1beta/interactions"
POLL_INTERVAL="${GEMINI_RESEARCH_POLL_SECONDS:-20}"
MAX_WAIT="${GEMINI_RESEARCH_MAX_WAIT_SECONDS:-1200}"

agent_for_tier() {
  if [[ "${1:-standard}" == "max" ]]; then
    echo "deep-research-max-preview-04-2026"
  else
    echo "deep-research-preview-04-2026"
  fi
}

do_submit() {
  local query="$1" tier="${2:-standard}"
  local agent payload resp id
  agent="$(agent_for_tier "$tier")"
  payload="$(python3 -c "
import json, sys
print(json.dumps({
    'input': sys.argv[1],
    'agent': sys.argv[2],
    'background': True,
    'agent_config': {
        'type': 'deep-research',
        'thinking_summaries': 'auto',
        'visualization': 'auto',
        'collaborative_planning': False,
    },
    'tools': [
        {'type': 'google_search'},
        {'type': 'url_context'},
    ],
}))
" "$query" "$agent")"

  resp="$(curl -fsS -X POST "$API" \
    -H "x-goog-api-key: $GEMINI_API_KEY" \
    -H "Content-Type: application/json" \
    -d "$payload")"

  id="$(echo "$resp" | python3 -c "import json,sys; print(json.load(sys.stdin).get('id',''))")"
  if [[ -z "$id" ]]; then
    echo "ERROR: no interaction id returned: $resp" >&2
    exit 2
  fi
  echo "$id"
}

do_poll_once() {
  local id="$1"
  curl -fsS "$API/$id" -H "x-goog-api-key: $GEMINI_API_KEY"
}

extract_report() {
  python3 -c "
import json, sys
data = json.load(sys.stdin)
steps = data.get('steps', [])
if not steps:
    print('(no content returned)')
    sys.exit(0)
for block in steps[-1].get('content', []):
    if block.get('type') == 'text':
        print(block.get('text', ''))
"
}

cmd="${1:-}"
shift || true

case "$cmd" in
  research)
    query="${1:?usage: research \"<query>\" [standard|max]}"
    tier="${2:-standard}"
    id="$(do_submit "$query" "$tier")"
    elapsed=0
    status="in_progress"
    resp=""
    while [[ "$status" == "in_progress" && "$elapsed" -lt "$MAX_WAIT" ]]; do
      sleep "$POLL_INTERVAL"
      elapsed=$((elapsed + POLL_INTERVAL))
      resp="$(do_poll_once "$id")"
      status="$(echo "$resp" | python3 -c "import json,sys; print(json.load(sys.stdin).get('status','in_progress'))")"
    done
    if [[ "$status" != "completed" ]]; then
      echo "ERROR: research did not complete (id=$id status=$status elapsed=${elapsed}s)" >&2
      echo "$resp" >&2
      exit 4
    fi
    echo "$resp" | extract_report
    ;;

  submit)
    query="${1:?usage: submit \"<query>\" [standard|max]}"
    tier="${2:-standard}"
    do_submit "$query" "$tier"
    ;;

  poll)
    id="${1:?usage: poll <interaction_id>}"
    resp="$(do_poll_once "$id")"
    status="$(echo "$resp" | python3 -c "import json,sys; print(json.load(sys.stdin).get('status','in_progress'))")"
    if [[ "$status" == "completed" ]]; then
      echo "$resp" | extract_report
    elif [[ "$status" == "failed" ]]; then
      echo "ERROR: interaction $id failed" >&2
      echo "$resp" >&2
      exit 4
    else
      echo "in_progress"
    fi
    ;;

  *)
    echo "Usage: bash scripts/gemini_research.sh <research|submit|poll> ..." >&2
    exit 1
    ;;
esac
