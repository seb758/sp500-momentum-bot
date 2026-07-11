---
description: Local midday scan run (uses .env, no forced git push)
---

Same workflow as `routines/midday.md`, minus the env-var check block and the
mandatory commit-and-push. Steps:

1. Read memory/TRADING-STRATEGY.md exit rules, tail of TRADE-LOG, today's
   RESEARCH-LOG, memory/WATCHLIST.md.
2. Pull positions/orders.
3. Cut losers at the sleeve threshold (-7% core / -15% satellite); cancel
   the associated stop; log the exit.
4. Tighten trailing stops on winners per the sleeve's schedule; never
   tighten within the sleeve's price guardrail; never move a stop down.
5. Thesis check: cut a position early if momentum/FCF broke (core) or the
   catalyst resolved negatively/was invalidated (satellite) — don't rely on
   the stop to catch a broken thesis, especially for satellite gap risk.
   Track the 2-strike sub-sector rule for satellite exits.
6. Optional: one consolidated Gemini Deep Research call only if something
   moved sharply with no obvious cause (takes several minutes).
7. Notify only if action was taken.
8. Ask if you'd like it committed.
