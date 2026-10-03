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
- Research: Alpaca news feed (Benzinga) for ticker-level overnight/intraday
  news; Gemini 2.5 Flash via generateContent with Google Search grounding
  (free tier: 20 req/day, ~15s between submits; synchronous, answers in
  under a minute — see CLAUDE.md) for market context and Friday candidate
  discovery
- Notifications: email via Gmail SMTP (`scripts/gmail_smtp.sh`, Google app password)

## Known Risk Notes (do not remove — these are load-bearing)

- The satellite sleeve trades on binary regulatory/government-approval
  catalysts (e.g. FDA decisions). Trailing stops do not protect against
  overnight or pre-market gaps, which is exactly how these events resolve.
  This is why satellite position caps are smaller, stops are wider, and
  every satellite entry through a known binary date must document max loss.
- Gemini research calls are synchronous and answer in under a minute.
  Free-tier quota is 20 requests/day with ~15s spacing between submits
  (enforced by the script). Daily workflows should use one consolidated
  `research` call; the weekly satellite catalyst screen batches tickers
  (~5-8 per prompt) and uses `submit` + `poll` across batches. If a call
  exits 4 (quota exhausted), fall back to native WebSearch.
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
