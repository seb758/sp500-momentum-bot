---
description: Local daily summary run (uses .env, no forced git push)
---

Same workflow as `routines/daily-summary.md`, minus the env-var check block.
Steps:

1. Find yesterday's closing equity from the last TRADE-LOG EOD snapshot.
2. Pull today's final account/positions/orders.
3. Compute day P&L, phase P&L, core/satellite exposure split, trades today
   and this week by sleeve.
4. Append an EOD snapshot section to memory/TRADE-LOG.md per its template.
5. Send one email, always, <= 15 lines.
6. Commit is still recommended even locally — tomorrow's day-P&L math reads
   the last committed EOD snapshot. Ask if you'd like it committed now.
