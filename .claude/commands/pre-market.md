---
description: Local pre-market research run (uses .env, no forced git push)
---

Same workflow as `routines/pre-market.md`, minus the env-var check block and
the mandatory commit-and-push (local mode uses `.env`, and you can commit
manually when ready). Steps:

1. Read memory/TRADING-STRATEGY.md, memory/WATCHLIST.md (today's tradeable
   universe), tail of memory/TRADE-LOG.md and memory/RESEARCH-LOG.md.
2. Pull account/positions/orders via scripts/alpaca.sh.
3. One consolidated `bash scripts/gemini_research.sh research "..."`
   covering: futures/VIX, today's catalysts, overnight news on held
   positions, overnight news + catalyst-date proximity on watchlist names.
   This takes several minutes — that's expected. Fall back to WebSearch if
   it exits 3.
4. Write a dated entry to memory/RESEARCH-LOG.md per its template (core +
   satellite ideas, only from the current watchlist).
5. Notify via `bash scripts/clickup.sh` only if something is urgent.
6. Ask if you'd like it committed; if yes, commit memory/RESEARCH-LOG.md.
