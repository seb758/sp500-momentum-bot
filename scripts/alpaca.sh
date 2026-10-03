#!/usr/bin/env bash
# Alpaca API wrapper. All trading + price-history API calls go through here.
# Usage: bash scripts/alpaca.sh <subcommand> [args...]

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

: "${ALPACA_API_KEY:?ALPACA_API_KEY not set in environment}"
: "${ALPACA_SECRET_KEY:?ALPACA_SECRET_KEY not set in environment}"

API="${ALPACA_ENDPOINT:-https://paper-api.alpaca.markets/v2}"
DATA="${ALPACA_DATA_ENDPOINT:-https://data.alpaca.markets/v2}"

H_KEY="APCA-API-KEY-ID: $ALPACA_API_KEY"
H_SEC="APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"

cmd="${1:-}"
shift || true

case "$cmd" in
  account)
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/account"
    ;;
  positions)
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/positions"
    ;;
  position)
    sym="${1:?usage: position SYM}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/positions/$sym"
    ;;
  quote)
    sym="${1:?usage: quote SYM}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$DATA/stocks/$sym/quotes/latest"
    ;;
  bars)
    # Historical daily bars, used for momentum calc (relative return, MA position).
    # usage: bars SYM [timeframe] [start_YYYY-MM-DD] [end_YYYY-MM-DD]
    sym="${1:?usage: bars SYM [timeframe] [start] [end]}"
    timeframe="${2:-1Day}"
    # 400 calendar days ~= 270+ trading days, enough buffer for a 200-day
    # SMA anchored at the start of the 6-month momentum window (260 days
    # undershoots this and silently makes the 200d MA uncomputable).
    start="${3:-$(date -v-400d +%Y-%m-%d 2>/dev/null || date -d '400 days ago' +%Y-%m-%d)}"
    end="${4:-$(date +%Y-%m-%d)}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" \
      "$DATA/stocks/$sym/bars?timeframe=$timeframe&start=${start}T00:00:00Z&end=${end}T00:00:00Z&limit=10000&adjustment=split"
    ;;
  orders)
    status="${1:-open}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/orders?status=$status"
    ;;
  order)
    body="${1:?usage: order '<json>'}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" -H "Content-Type: application/json" \
      -X POST -d "$body" "$API/orders"
    ;;
  cancel)
    oid="${1:?usage: cancel ORDER_ID}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/orders/$oid"
    ;;
  cancel-all)
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/orders"
    ;;
  close)
    sym="${1:?usage: close SYM}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/positions/$sym"
    ;;
  close-all)
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/positions"
    ;;
  news)
    # Benzinga news feed for tickers (structured headlines + summaries).
    # usage: news SYM1,SYM2 [hours_lookback] [limit_per_call]
    # Prints a readable digest, newest first. Free with the Alpaca account —
    # use this for ticker-level overnight/intraday news instead of spending
    # Gemini quota on it.
    syms="${1:?usage: news SYM1,SYM2 [hours_lookback] [limit]}"
    hours="${2:-18}"
    limit="${3:-50}"
    start="$(date -u -d "$hours hours ago" +%Y-%m-%dT%H:%M:%SZ 2>/dev/null || date -u -v-"${hours}"H +%Y-%m-%dT%H:%M:%SZ)"
    end="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    NEWS="${ALPACA_NEWS_ENDPOINT:-https://data.alpaca.markets/v1beta1}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" \
      "$NEWS/news?symbols=$syms&start=$start&end=$end&limit=$limit&sort=desc&include_content=false" | \
    python3 -c "
import json, sys
try:
    data = json.load(sys.stdin)
except Exception as e:
    print(f'ERROR: could not parse news response: {e}', file=sys.stderr)
    sys.exit(4)
items = data.get('news', [])
if not items:
    print('(no news in lookback window)')
    sys.exit(0)
for a in items:
    ts = a.get('created_at', '')[:16].replace('T', ' ')
    syms = ','.join(a.get('symbols', []))
    print(f\"- [{ts} UTC] [{syms}] {a.get('headline', '')} ({a.get('source', '')})\")
    summary = (a.get('summary') or '').strip()
    if summary:
        print(f'  {summary[:500]}')
    url = a.get('url', '')
    if url:
        print(f'  {url}')
"
    ;;
  *)
    echo "Usage: bash scripts/alpaca.sh <account|positions|position|quote|bars|news|orders|order|cancel|cancel-all|close|close-all> [args]" >&2
    exit 1
    ;;
esac
echo
