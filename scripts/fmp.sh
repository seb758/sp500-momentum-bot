#!/usr/bin/env bash
# Financial Modeling Prep wrapper. All fundamentals calls go through here —
# free cash flow, YoY growth, analyst ratings for a given ticker.
# Usage: bash scripts/fmp.sh <subcommand> [args...]
#
# NOTE: FMP retired /api/v3/ (Aug 2025) in favor of /stable/, and the free
# tier does NOT include sp500-constituent or company-screener (both return
# "Restricted Endpoint" — paid plans only). Per-symbol endpoints below all
# work on the free tier. The weekly screen refresh works around the missing
# bulk endpoints by sourcing the S&P 500 list and satellite candidates
# elsewhere (see TRADING-STRATEGY.md) and using this script only to validate
# fundamentals for specific tickers.

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

BASE="${FMP_ENDPOINT:-https://financialmodelingprep.com/stable}"

cmd="${1:-}"
shift || true

get() {
  local path="$1" sep="?"
  [[ "$path" == *"?"* ]] && sep="&"
  curl -fsS "${BASE}${path}${sep}apikey=${FMP_API_KEY}"
}

case "$cmd" in
  profile)
    sym="${1:?usage: profile SYM}"
    get "/profile?symbol=$sym"
    ;;
  quote)
    sym="${1:?usage: quote SYM}"
    get "/quote?symbol=$sym"
    ;;
  cashflow)
    sym="${1:?usage: cashflow SYM [period] [limit]}"
    period="${2:-quarter}"
    limit="${3:-8}"
    get "/cash-flow-statement?symbol=$sym&period=$period&limit=$limit"
    ;;
  growth)
    sym="${1:?usage: growth SYM [limit]}"
    limit="${2:-8}"
    get "/financial-growth?symbol=$sym&limit=$limit"
    ;;
  rating)
    sym="${1:?usage: rating SYM}"
    get "/ratings-snapshot?symbol=$sym"
    ;;
  upgrades)
    sym="${1:?usage: upgrades SYM}"
    get "/grades?symbol=$sym"
    ;;
  gainers)
    get "/biggest-gainers"
    ;;
  sp500|screener)
    echo "ERROR: '$cmd' requires a paid FMP plan (Restricted Endpoint on free tier)." >&2
    echo "See TRADING-STRATEGY.md 'Weekly Screen Refresh' for the free-tier workaround (WebFetch + Gemini Deep Research for candidate sourcing, this script only for per-symbol fundamentals validation)." >&2
    exit 5
    ;;
  *)
    echo "Usage: bash scripts/fmp.sh <profile|quote|cashflow|growth|rating|upgrades|gainers> [args]" >&2
    echo "('sp500' and 'screener' are disabled — free tier doesn't support them, see error if called)" >&2
    exit 1
    ;;
esac
echo
