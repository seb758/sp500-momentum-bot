---
description: Manual trade helper with full sleeve-aware rule validation. Usage — /trade SYMBOL SHARES buy|sell
---

Execute a manual paper trade with full rule validation. Refuse if any rule
fails.

Args: SYMBOL SHARES SIDE (buy or sell). If missing, ask.

1. Pull state: `bash scripts/alpaca.sh account`, `positions`, `quote SYMBOL`
   (capture ask price P). Check memory/WATCHLIST.md for which sleeve (if
   any) SYMBOL belongs to — Core, Satellite, or the fixed Income roster
   (SGOV/SPHY/EDGX).
2. If SYMBOL is not on the current WATCHLIST.md for any of the three, STOP
   and say so — refuse the trade. (Run `/screen-refresh` first for
   Core/Satellite if you believe it should qualify; Income's roster only
   changes on explicit owner instruction, not `/screen-refresh`.)
3. For BUY, validate against the sleeve's rules in memory/TRADING-STRATEGY.md:
   - Core: positions after fill <= 6, trades this week <= 3, cost <= 20% of
     equity
   - Satellite: positions after fill <= 4, trades this week <= 2, cost <=
     7.5% of equity (5% if a binary catalyst date falls within the likely
     hold window — ask if unclear), total satellite exposure after fill <=
     20% of equity
   - Income: no position-count/weekly-trade cap. Buying should not pull
     literal cash below the 20% account-wide floor except momentarily when
     funding a same-session Core/Satellite buy (see TRADING-STRATEGY.md).
   - All three: cost <= available cash (for Income, sell SGOV first if
     cash is short — never SPHY/EDGX), daytrade_count < 3
   - Catalyst documented for satellite (ask for it if not already in
     today's RESEARCH-LOG). Income has no catalyst requirement.
   If any fail, STOP and print the failed checks.
4. For SELL, confirm the position exists with the right qty. No other checks.
5. Print the order JSON + validation results, ask "execute? (y/n)".
6. On confirm:
   `bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"buy|sell","type":"market","time_in_force":"day"}'`
7. For BUYs, immediately place the sleeve-appropriate trailing stop GTC
   (10% core / 15% satellite / 5% income) — same flow as the market-open
   routine.
8. Log to memory/TRADE-LOG.md with full thesis, sleeve, entry, stop, target,
   R:R, and (satellite) catalyst + max loss if it fails. Income entries can
   skip the thesis/target/R:R fields — note the funding reason instead
   (rebalance, dividend reinvestment, or buy-funding sweep).
9. `bash scripts/sendgrid.sh` with trade details.
