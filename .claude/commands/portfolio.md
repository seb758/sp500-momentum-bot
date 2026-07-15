---
description: Read-only snapshot of account, positions, open orders, and stops, split by sleeve
---

Print a clean ad-hoc snapshot. No state changes, no orders, no file writes.

1. bash scripts/alpaca.sh account
2. bash scripts/alpaca.sh positions
3. bash scripts/alpaca.sh orders
4. Cross-reference each open position against memory/WATCHLIST.md to tag it
   core, satellite, or income.

Format the output as a single concise summary:

```
Portfolio — <today's date> (PAPER)
Equity: $X | Cash: $X (X%) | Buying power: $X
Core exposure: $X (X%) | Satellite exposure: $X (X%) | Income exposure: $X (X%)
Daytrade count: N/4 | PDT: <bool>

Positions:
  SYM (core|sat|income) | Sh | Entry -> Now | Unrealized P&L | Stop

Open orders:
  TYPE | SYM | qty | trail/stop | order_id
```

No commentary unless something is broken: a position without a stop, a stop
below current price, satellite exposure over the 20% hard cap, or literal
cash under the 20% account-wide floor.
