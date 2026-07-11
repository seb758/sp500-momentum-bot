# Trade Log

Every trade (both sleeves) + daily EOD snapshot. Append-only, dated sections.

## Day 0 — EOD Snapshot (pre-launch baseline)

**Portfolio:** $0.00 | **Cash:** $0.00 | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Fund the paper account and run pre-market + market-open to
begin. Fill in the actual starting equity here on Day 0 before the first
daily-summary run — tomorrow's Day P&L math depends on it.

Trade entry format (market-open / ad-hoc trade workflows append like this):

```
### YYYY-MM-DD — BUY SYM (core|satellite)
Shares: N | Entry: $X.XX | Stop: type/level | Target: $X.XX | R:R: X:1
Thesis: ...
Catalyst (satellite only): ... | Catalyst date: ... | Max loss if fails: X% of equity
```

Exit entry format:

```
### YYYY-MM-DD — SELL SYM (core|satellite)
Shares: N | Exit: $X.XX | Realized P&L: ±$X (±X%) | Reason: stop hit / -7%(-15%) cut / thesis broken / sector 2-strike
```

EOD snapshot format (daily-summary workflow appends like this):

```
### MMM DD — EOD Snapshot (Day N, Weekday)
**Portfolio:** $X | **Cash:** $X (X%) | **Day P&L:** ±$X (±X%) | **Phase P&L:** ±$X (±X%)
**Core exposure:** $X (X% of equity) | **Satellite exposure:** $X (X% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|

**Notes:** one-paragraph plain-english summary.
```
