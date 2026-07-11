# Trading Strategy — S&P 500 Momentum+FCF Core / Small-Cap Catalyst Satellite

## Mission

Beat the S&P 500 on a risk-adjusted basis using two sleeves in one Alpaca
**paper trading** account:

- **Core (target 85% of equity when deployed):** S&P 500 constituents
  selected on price momentum + free cash flow strength.
- **Satellite (target 15% of equity when deployed, hard cap 20%):**
  small-cap biotech and industrials selected on momentum, analyst ratings,
  YoY growth, and a documented catalyst — technicals, news, government or
  regulatory approval (e.g. FDA decisions, contract awards), or a confirmed
  price jump with volume.

## Capital & Constraints

- Platform: Alpaca — **PAPER** (see memory/PROJECT-CONTEXT.md for mode)
- Fundamentals/screening: Financial Modeling Prep (FMP)
- Research: Gemini Deep Research (background agent), WebSearch fallback
- Instruments: stocks only — no options, no leverage, ever
- PDT limit: 3 day trades / 5 rolling business days if equity < $25k
- Combined target 75-85% of total capital deployed across both sleeves

## Sleeve Targets

| | Core | Satellite |
|---|---|---|
| Target allocation | 85% of equity | 15% of equity |
| Hard cap | — (bounded by position/count limits) | 20% of equity |
| Max open positions | 6 | 4 |
| Max position size | 20% of equity | 7.5% of equity (5% if holding through a known binary catalyst date) |
| Max new trades/week | 3 | 2 |
| Default trailing stop | 10% | 15% |
| Hard loss cut | -7% | -15% |
| Tighten stop | 7% at +15%, 5% at +20% | 10% at +25%, 7% at +40% |
| Never tighten within | 3% of price | 5% of price |

Combined max new trades per week across both sleeves: 5.

## Core Sleeve — Entry Criteria (all must be true)

1. Ticker is a current S&P 500 constituent.
2. Ticker appears in the current week's memory/WATCHLIST.md core list —
   i.e. it already passed the weekly momentum + FCF screen. Never trade a
   core name that isn't on the current watchlist.
3. Free cash flow trend is positive/improving over trailing periods
   (`scripts/fmp.sh cashflow`).
4. Price momentum: positive relative strength vs S&P 500 over 3-month and
   6-month lookback, price above 50-day and 200-day moving average
   (computed from `scripts/alpaca.sh bars`).
5. Analyst rating is not Sell/Strong Sell (`scripts/fmp.sh rating` /
   `upgrades`).
6. Buy-side gate below passes.

## Core Sleeve — Stop/Exit Rules

- 10% trailing stop on every position, placed as a real GTC order on
  Alpaca. Never mental.
- Cut a loser at -7% from entry. Manual sell. No averaging down.
- Tighten trail to 7% at +15% gain, to 5% at +20% gain.
- Never tighten within 3% of current price. Never move a stop down.
- Thesis-broken exit: if a name drops off the watchlist two weeks running
  (momentum or FCF trend failed), exit regardless of P&L.

## Satellite Sleeve — Entry Criteria (all must be true)

1. Ticker is small-cap (~$300M–$3B market cap; range set in the weekly
   screener params) biotech or industrials.
2. Ticker appears in the current week's memory/WATCHLIST.md satellite
   list.
3. Positive YoY revenue or earnings growth (`scripts/fmp.sh growth`).
4. Analyst rating Buy/Outperform or better, or a recent upgrade
   (`scripts/fmp.sh rating` / `upgrades`).
5. A specific, documented catalyst — named FDA/regulatory decision or
   approval, government contract award, notable price jump with volume
   confirmation, or material news — sourced via Gemini Deep Research or
   WebSearch fallback, cited in memory/RESEARCH-LOG.md with links.
6. Buy-side gate below passes.

## Satellite Sleeve — Stop/Exit Rules

- 15% trailing stop on every position (wider than core — these names are
  materially more volatile), placed as a real GTC order.
- Cut a loser at -15% from entry. Manual sell.
- Tighten trail to 10% at +25% gain, to 7% at +40% gain.
- Never tighten within 5% of current price. Never move a stop down.
- **Gap risk — read before every satellite entry:** trailing stops do not
  protect against overnight/pre-market gaps, which is exactly how these
  stocks move on FDA/approval news. If entering or holding a position
  through a known binary event date (PDUFA date, trial readout, contract
  decision), document the max-loss-if-catalyst-fails in the trade log and
  cap that specific position at 5% of equity, not the standard 7.5%.
- 2-strike sub-sector rule, tracked separately for biotech and industrials:
  after 2 consecutive losing satellite trades in one sub-sector, stop
  opening new satellite positions in that sub-sector for 2 weeks.

## The Buy-Side Gate (both sleeves — every check must pass, or the trade is skipped and the reason logged)

- Total open positions after fill: core ≤ 6, satellite ≤ 4.
- Trades this week: core ≤ 3, satellite ≤ 2.
- Position cost ≤ the applicable sleeve position cap.
- Position cost ≤ available cash.
- Total satellite sleeve exposure after fill ≤ 20% of equity.
- PDT day-trade count leaves room (under 3 on a sub-$25k account).
- Instrument is a stock — not an option, not anything else.
- Ticker is on the current memory/WATCHLIST.md for the relevant sleeve.
- All sleeve-specific entry criteria above are satisfied and documented in
  today's RESEARCH-LOG entry.

## Sell-Side Rules (evaluated at midday and opportunistically)

- Core: -7% stop, thesis break (off watchlist 2 weeks), +15%/+20% trail
  tightening.
- Satellite: -15% stop, thesis break (catalyst resolved negatively or
  invalidated), +25%/+40% trail tightening.
- 2-strike sub-sector exit rule for satellite (biotech, industrials
  tracked separately).

## Weekly Screen Refresh (Friday, folded into the weekly-review workflow)

Screening all ~500 S&P names plus the small-cap universe for fundamentals
every day would blow through FMP's rate limits fast. Fundamentals (FCF,
growth) don't change daily anyway — only price does. So the fundamental
screen runs once a week; daily workflows read the standing watchlist instead
of re-screening the whole universe.

**FMP free-tier note:** `sp500-constituent` and the sector/market-cap
`company-screener` endpoints are paid-plan-only on FMP (confirmed:
"Restricted Endpoint" on the free tier as of July 2026). `scripts/fmp.sh`
only exposes the per-symbol endpoints that do work free — quote, profile,
cashflow, growth, rating, upgrades, gainers. The steps below source
candidate lists elsewhere and use FMP only to validate a specific ticker's
fundamentals. If FMP is ever upgraded to a paid plan, steps 1 and 5 can go
back to a single bulk `fmp.sh sp500` / `fmp.sh screener` call each.

**FMP per-symbol restriction (confirmed July 2026 via a 40-ticker test
run):** the free tier also 402s on a large, seemingly arbitrary subset of
*individual* symbols even on the documented per-symbol endpoints — not a
rate limit, an allowlist. It hit ~40% of large-cap S&P 500 names tested
(ORCL, LLY, MRK, HD, MCD, CAT, PG, and others all failed) and essentially
all small/mid-caps tested (11/12, including every satellite candidate
tried). Treat any FMP 402/error as "data unavailable," never as "failed
the fundamentals check" — and fall back to Gemini Deep Research per step 3a
/ 6a below rather than silently dropping the candidate.

**Corporate-action guard:** spinoff/split-adjustment artifacts can produce
a single-day price move that swamps the momentum calc without being a real
gain or loss (e.g. HON's ~51% one-day drop from its 2026 spinoff
adjustment, which `adjustment=split` does not correct for). When computing
momentum in step 2, flag any ticker with a >20% single-day close-to-close
move within the lookback window for manual sanity-check before trusting
its score — don't auto-exclude, since a real 20%+ move (earnings gap,
biotech catalyst) is a legitimate signal, but don't rank on an
unscrutinized artifact either.

1. Get the current S&P 500 constituent list via native WebFetch against a
   public source (e.g. Wikipedia's "List of S&P 500 companies"). This list
   changes only a handful of times a year, so staleness risk is low even at
   weekly cadence. WebFetch's AI summarization can truncate or invent
   tickers on a table this large — spot-check a sample of the returned
   tickers against a second source before trusting the full list, or parse
   the raw table programmatically instead of relying on summarization.
2. Compute momentum for all constituents from Alpaca historical bars (3M/6M
   relative return vs SPY, 50/200-day MA position) — price math only, no FMP
   calls needed. Apply the corporate-action guard above.
3. Shortlist the top ~40-60 names by momentum. Only for this shortlist, pull
   FCF trend, growth, and analyst rating from FMP per-symbol
   (`scripts/fmp.sh cashflow` / `growth` / `rating`) — bounds the API
   budget to the shortlist size, not all 500 names.
   a. For any shortlisted name FMP 402s/errors on, don't drop it — submit a
      Gemini Deep Research query for that subset in parallel (submit all,
      then poll each) asking for recent FCF trend, YoY growth, and current
      analyst sentiment, and use that in place of the FMP fields.
4. Rank and select the qualifying core watchlist: positive FCF trend +
   momentum + not-a-sell rating.
5. Generate small-cap biotech + industrials candidates via Gemini Deep
   Research / native WebSearch instead of an FMP bulk screener: ask for
   specific small-cap ($300M-$3B) biotech and industrials tickers currently
   showing price momentum, positive YoY growth, and a documented
   catalyst — the research agent proposes names directly rather than FMP
   pre-filtering by sector/market-cap.
6. For each proposed candidate, confirm momentum via Alpaca bars (apply the
   corporate-action guard). For fundamentals, try FMP per-symbol
   (`scripts/fmp.sh growth` / `rating`) first, but expect it to 402 for
   most small/mid-caps.
   a. Given FMP's near-total small-cap coverage gap, fold the YoY growth
      and analyst-sentiment check into the same Gemini Deep Research
      catalyst query in step 7 rather than a separate FMP call — one
      consolidated prompt per candidate, not two API calls. Drop anything
      that doesn't check out (from FMP where it works, from the Gemini
      report otherwise) — the research agent's candidate list is a
      starting point, not a pass.
7. Submit a Gemini Deep Research task per surviving satellite candidate in
   parallel (`scripts/gemini_research.sh submit`, then poll each) asking
   for: a documented catalyst (FDA/PDUFA calendar, government contracts,
   recent news, or price-jump reasoning) AND recent YoY revenue/earnings
   growth AND current analyst sentiment (per step 6a). Drop any candidate
   with no confirmed catalyst or with negative growth/sentiment.
8. Write memory/WATCHLIST.md with both lists for the new week, moving the
   prior week's lists into the History section (never delete history).

## Patience Rule

A week with zero new trades in either sleeve is a valid outcome. Do not
force a trade to "use" the weekly budget.
