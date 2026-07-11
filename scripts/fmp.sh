#!/usr/bin/env bash
# Financial Modeling Prep wrapper. All fundamentals/screening calls go through
# here — free cash flow, YoY growth, analyst ratings, S&P 500 constituents,
# and the small-cap sector screener for the satellite sleeve.
# Usage: bash scripts/fmp.sh <subcommand> [args...]

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

: "${FMP_API_KEY:?FMP_API_KEY not set in environment}"

BASE="${FMP_ENDPOINT:-https://financialmodelingprep.com/api/v3}"

cmd="${1:-}"
shift || true

get() {
  local path="$1" sep="?"
  [[ "$path" == *"?"* ]] && sep="&"
  curl -fsS "${BASE}${path}${sep}apikey=${FMP_API_KEY}"
}

case "$cmd" in
  sp500)
    # Full current S&P 500 constituent list — one call, use weekly not daily.
    get "/sp500_constituent"
    ;;
  profile)
    sym="${1:?usage: profile SYM}"
    get "/profile/$sym"
    ;;
  quote)
    sym="${1:?usage: quote SYM}"
    get "/quote/$sym"
    ;;
  cashflow)
    sym="${1:?usage: cashflow SYM [period] [limit]}"
    period="${2:-quarter}"
    limit="${3:-8}"
    get "/cash-flow-statement/$sym?period=$period&limit=$limit"
    ;;
  growth)
    sym="${1:?usage: growth SYM [limit]}"
    limit="${2:-8}"
    get "/financial-growth/$sym?limit=$limit"
    ;;
  rating)
    sym="${1:?usage: rating SYM}"
    get "/rating/$sym"
    ;;
  upgrades)
    sym="${1:?usage: upgrades SYM}"
    get "/upgrades-downgrades/$sym"
    ;;
  screener)
    # Free-form query string, e.g.:
    #   'sector=Healthcare&industry=Biotechnology&marketCapMoreThan=300000000&marketCapLowerThan=3000000000&exchange=NASDAQ&limit=200'
    qs="${1:?usage: screener 'key=value&key=value...'}"
    get "/stock-screener?$qs"
    ;;
  gainers)
    get "/stock_market/gainers"
    ;;
  *)
    echo "Usage: bash scripts/fmp.sh <sp500|profile|quote|cashflow|growth|rating|upgrades|screener|gainers> [args]" >&2
    exit 1
    ;;
esac
echo
