---
description: Local market-open execution run (uses .env, no forced git push)
---

Same workflow as `routines/market-open.md`, minus the env-var check block
and the mandatory commit-and-push. Steps:

1. Read memory/TRADING-STRATEGY.md, memory/WATCHLIST.md, today's
   RESEARCH-LOG entry (run pre-market inline first if missing), tail of
   TRADE-LOG for weekly/open-position counts per sleeve.
2. Re-validate with fresh quotes; check spreads.
3. Run the sleeve-aware buy-side gate from TRADING-STRATEGY.md on each
   planned order; skip and log any that fail.
4. Execute approved buys (market, day TIF), wait for fill.
5. Immediately place the sleeve-appropriate trailing stop GTC (10% core /
   15% satellite); PDT fallback ladder: trailing stop -> fixed stop -> queue
   for tomorrow.
6. Log each trade to memory/TRADE-LOG.md with sleeve, thesis, stop, target,
   R:R, and (satellite) catalyst + max loss if it fails.
7. Notify via sendgrid.sh only if a trade was placed.
8. Ask if you'd like it committed.
