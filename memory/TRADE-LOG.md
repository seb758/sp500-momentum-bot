# Trade Log

Every trade (both sleeves) + daily EOD snapshot. Append-only, dated sections.

## Day 0 — EOD Snapshot (pre-launch baseline, 2026-07-11)

**Portfolio:** $100,000.00 | **Cash:** $100,000.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0
**Core exposure:** $0 (0%) | **Satellite exposure:** $0 (0%)

Alpaca paper account confirmed live via `scripts/alpaca.sh account` — no
open positions yet. Fundamentals (FMP), research (Gemini), and email
(SendGrid) credentials still being wired up before the first pre-market run.

No positions yet. Fund the paper account and run pre-market + market-open to
begin. Fill in the actual starting equity here on Day 0 before the first
daily-summary run — tomorrow's Day P&L math depends on it.

Trade entry format (market-open / ad-hoc trade workflows append like this):

```
### YYYY-MM-DD — BUY SYM (core|satellite|income)
Shares: N | Entry: $X.XX | Stop: type/level | Target: $X.XX | R:R: X:1
Thesis: ...
Catalyst (satellite only): ... | Catalyst date: ... | Max loss if fails: X% of equity
Funding reason (income only): rebalance / dividend reinvestment / buy-funding sweep
```

Exit entry format:

```
### YYYY-MM-DD — SELL SYM (core|satellite|income)
Shares: N | Exit: $X.XX | Realized P&L: ±$X (±X%) | Reason: stop hit / -7%(-15%) cut / thesis broken / sector 2-strike / sold to fund a buy (income only)
```

EOD snapshot format (daily-summary workflow appends like this):

```
### MMM DD — EOD Snapshot (Day N, Weekday)
**Portfolio:** $X | **Cash:** $X (X%) | **Day P&L:** ±$X (±X%) | **Phase P&L:** ±$X (±X%)
**Core exposure:** $X (X% of equity) | **Satellite exposure:** $X (X% of equity) | **Income exposure:** $X (X% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|

**Notes:** one-paragraph plain-english summary.
```

## 2026-07-13 — ANOMALY FLAG (11am run, not a strategy trade)

Live Alpaca paper positions found open that were never entered here and
are not on WATCHLIST.md: **O** (100 sh @ $63.70), **SPHY** (84 sh @
$23.32), **EDGX** (155 sh @ $26.79) — filled ~9:30am ET today, orders
created ~pre-market. A 4th, SGOV 50 sh, was placed and canceled unfilled.
None classify as core or satellite (REIT/bond/T-bill instruments, not
S&P 500 momentum/FCF or biotech/industrial catalyst names). No stop
orders exist on any of the 3 filled positions. Cause unknown (market-open
run malfunction vs. direct manual/API action outside the bot). No action
taken this run pending owner review — see RESEARCH-LOG.md 11am Session
Note for full detail.

### 2026-07-13 15:10 ET — CLOSED O, SPHY, EDGX (anomaly cleanup, not a strategy exit)
Reason: unauthorized/off-watchlist positions (see 2026-07-13 ANOMALY FLAG
above), still carrying zero stop protection 5.5+ hours after discovery
with no owner response. 3pm risk-sweep rule ("no stop attached -> place
one or close before overnight") applied since none of the 3 fit a
core/satellite sleeve a stop could be sized against.
- O: sold 100 sh @ $64.07 (entry $63.70) — realized +$37.00
- SPHY: sold 84 sh @ $23.27 (entry $23.32) — realized -$4.20
- EDGX: sold 155 sh @ $26.57 (entry $26.79) — realized -$34.10 (partial-fill entry)
Net realized P&L: -$1.30 (immaterial; not a strategy P&L event). Account
is now 100% cash, 0 open positions. Root cause of the original entries
still unresolved — see RESEARCH-LOG.md 3 PM Session Note.

### Jul 13 — EOD Snapshot (Day 2, Monday)
**Portfolio:** $99,998.70 | **Cash:** $99,998.70 (100%) | **Day P&L:** -$1.30 (-0.00%) | **Phase P&L:** -$1.30 (-0.00%)
**Core exposure:** $0 (0% of equity) | **Satellite exposure:** $0 (0% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| — | — | — | — | — | — | — | no open positions |

**Notes:** No strategy trades today (no Approved Trades list existed at
market-open or 11am, so no core/satellite buys all day). The only
account activity was closing out the 3 unauthorized O/SPHY/EDGX
positions flagged since market-open/11am — see anomaly notes above and
RESEARCH-LOG.md. Account is now flat cash, 0% core, 0% satellite
exposure, essentially breakeven since Day 0 ($100,000 -> $99,998.70).
This week: core 0/6 trades, satellite 0/4 trades. Tomorrow: pre-market
research resumes normal watchlist-driven screening; owner should
confirm root cause of the anomaly and, if resolved, whether the
options/shorting/4x-margin account flags need addressing.

### Jul 14 — 3pm Snapshot (Day 3, Tuesday)
**Portfolio:** $99,998.63 | **Cash:** $99,998.63 (100%) | **Day P&L:** -$0.07 (-0.00%) | **Phase P&L:** -$1.37 (-0.00%)
**Core exposure:** $0 (0% of equity) | **Satellite exposure:** $0 (0% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| — | — | — | — | — | — | — | no open positions |

**Notes:** No trades all session (pre-market x2, market-open, 11am, 3pm) —
no "Approved Trades (verified)" list existed at any point today, so no
buy-side gate was run. Zero open positions all day means no risk sweep,
no stop-tightening, no thesis checks, and no 2-strike sub-sector change
(still NONE active). OCUL's binary readout (ASRS Phase 3 data) remains
Thu 7/16, unresolved. Today's backdrop (Iran/Hormuz escalation, June CPI,
mega-bank earnings, VIX +14% overnight) kept every window risk-off by
design, not by a stale watchlist — the 24-name core / 6-name satellite
lists are current. Account essentially flat since Day 0 ($100,000 ->
$99,998.63). This week: core 0/6 trades, satellite 0/4 trades — valid
per the Patience Rule. Tomorrow: resume normal pre-market screening;
watch for CPI/earnings follow-through and Thursday's OCUL data.

### 2026-07-15 — BUY SGOV (income)
Shares: 397 | Entry: $100.54 | Stop: 5% trailing GTC ($95.51) | Target: n/a | R:R: n/a
Thesis: Income sleeve liquidity base — see TRADING-STRATEGY.md's "Income /
Cash-Parking Sleeve" section (owner instruction, 2026-07-15).
Funding reason (income only): initial sleeve rebalance from 100% cash.

### 2026-07-15 — BUY SPHY (income)
Shares: 856 | Entry: $23.36 | Stop: 5% trailing GTC ($22.19) | Target: n/a | R:R: n/a
Thesis: Income sleeve yield leg (high-yield bond).
Funding reason (income only): initial sleeve rebalance from 100% cash.

### 2026-07-15 — BUY EDGX (income)
Shares: 746 | Entry: $26.78 | Stop: 5% trailing GTC ($25.43) | Target: n/a | R:R: n/a
Thesis: Income sleeve yield leg (S&P 500 covered-call income ETF).
Funding reason (income only): initial sleeve rebalance from 100% cash.

**Income sleeve initial rebalance summary:** account was 100% cash
($99,998.63 equity) with 0 open positions. Deployed per the new sleeve
rule (20% cash floor, remainder SGOV 50% / SPHY 25% / EDGX 25%): SGOV
$39,914.38 (397 sh), SPHY $19,996.16 (856 sh), EDGX $19,977.88 (746 sh) —
total $79,888.42. Post-trade: cash $20,110.21 (20.1% of $99,978.68
equity, above the 20% floor), Income exposure $79,868.47 (79.9%), Core/
Satellite exposure $0. 5% trailing GTC stop placed on all three
immediately after fill. No Core/Satellite trades today.
