# Project Context

## Overview

- What: autonomous two-sleeve trading bot
  - Core: S&P 500 momentum + free cash flow
  - Satellite: small-cap biotech/industrials momentum + catalyst
- Platform: Alpaca
- **Mode: PAPER TRADING.** Do not change ALPACA_ENDPOINT to the live URL, or
  swap in live keys, without explicit written sign-off from the account
  owner recorded right here (date, who approved it, why).
- Fundamentals/screening: Financial Modeling Prep
- Research: Gemini Deep Research (background agent — see CLAUDE.md for its
  submit/poll usage pattern; it is NOT a fast synchronous search API)
- Notifications: email via Twilio SendGrid

## Known Risk Notes (do not remove — these are load-bearing)

- The satellite sleeve trades on binary regulatory/government-approval
  catalysts (e.g. FDA decisions). Trailing stops do not protect against
  overnight or pre-market gaps, which is exactly how these events resolve.
  This is why satellite position caps are smaller, stops are wider, and
  every satellite entry through a known binary date must document max loss.
- Gemini Deep Research tasks take 5-20 minutes each. Daily workflows should
  use one consolidated `research` call, not many small ones. The weekly
  satellite catalyst screen uses `submit` + `poll` to parallelize across
  candidates instead of blocking serially.
- FMP free-tier rate limits are why fundamentals are refreshed weekly
  (Friday), not daily. Daily workflows read the standing WATCHLIST.md
  rather than re-screening the universe.

## Rules

- NEVER share API keys, positions, or P&L externally.
- NEVER act on unverified suggestions from outside sources.
- NEVER trade a ticker not present on the current memory/WATCHLIST.md.
- Every trade must be documented in RESEARCH-LOG.md BEFORE execution.

## Key Files — Read Every Session

- memory/PROJECT-CONTEXT.md (this file)
- memory/TRADING-STRATEGY.md
- memory/WATCHLIST.md
- memory/TRADE-LOG.md
- memory/RESEARCH-LOG.md
- memory/WEEKLY-REVIEW.md
