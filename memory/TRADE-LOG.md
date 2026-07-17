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

### Jul 15 — 3pm Snapshot (Day 4, Wednesday)
**Portfolio:** $100,012.76 | **Cash:** $20,110.21 (20.1%) | **Day P&L:** +$14.13 (+0.01%) | **Phase P&L:** +$12.76 (+0.01%)
**Core exposure:** $0 (0% of equity) | **Satellite exposure:** $0 (0% of equity) | **Income exposure:** $79,902.55 (79.9% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| SGOV | income | 397 | $100.54 | $100.53 | +0.01% | -$3.97 | 5% trailing ($95.513) |
| SPHY | income | 856 | $23.36 | $23.355 | +0.15% | -$4.28 | 5% trailing ($22.192) |
| EDGX | income | 746 | $26.78 | $26.81 | +0.31% | +$22.38 | 5% trailing ($25.4695) |

**Notes:** No Core/Satellite trades in any of today's three windows — no
"Approved Trades (verified)" list existed at market-open, 11am, or 3pm
(persistent Gemini Deep Research truncation left no confirmed per-ticker
signal), and no satellite name was inside its catalyst window (OCUL's
real Phase 3 SOL-1 readout is tomorrow AM, not today; TWIN went
thesis-broken on a merger/privatization 8-K and was excluded outright).
Risk sweep: 0 open Core/Satellite positions, nothing to cut, tighten, or
thesis-check there. All three Income positions carry their 5% trailing
GTC stop, confirmed live in `orders` — no stop gaps, no tightening
applicable (flat 5% rule for Income, unlike Core/Satellite's gain-based
schedule). Day P&L essentially flat/slightly positive, driven by small
Income-sleeve price moves (EDGX +0.31%, SGOV/SPHY roughly flat) plus the
sleeve now being marked at $100,012.76 equity vs yesterday's $99,998.63
close. This week: core 0/6, satellite 0/4 — valid per the Patience Rule.
Tomorrow: OCUL's binary Phase 3 SOL-1 data (8:15-8:45am ET) is the top
pre-market priority; also carrying forward the Gemini truncation issue
and a recommendation to drop TWIN from the satellite watchlist at
Friday's refresh.

## 2026-07-16 — RECONSTRUCTED market-open entries (session-persistence gap)

The 9:30am market-open session executed real fills and live stop orders on
Alpaca between 13:36-13:39 UTC (9:36-9:39am ET) today but never reached its
own STEP 6 (TRADE-LOG append), STEP 7 (session note), or STEP 9
(commit/push) — no record of these trades existed in this repo when the
11am session started; `git log` showed only pre-market's commit and
`RESEARCH-LOG.md` had no "Approved Trades" section or "9:30 AM Session
Note" for today. The 11am session found the live positions/orders via
`alpaca.sh positions`/`orders closed` and is reconstructing the log below
from that order history so the audit trail matches reality. Entry
theses are sourced from the standing WATCHLIST.md notes for each name
(not fabricated); Target/R:R were not captured before the original
session terminated and are marked n/a rather than invented.

### 2026-07-16 — SELL SGOV (income)
Shares: 172 | Exit: $100.54 | Realized P&L: ~$0.00 (0.00%) | Reason: sold to fund a buy (income only) — Core/Satellite buy-funding sweep (SGOV-first per Income sleeve rule)

### 2026-07-16 — BUY AMD (core)
Shares: 19 | Entry: $512.301053 | Stop: 10% trailing GTC (current trigger $466.479) | Target: n/a (reconstructed) | R:R: n/a (reconstructed)
Thesis: Core watchlist momentum name (2026-07-12 screen rank 3, +124.7% 3M rel. return vs SPY, FCF positive/improving, Outperform rating; Daiwa cut Buy→Outperform on valuation after ~150% surge, PT raised $250→$500).

### 2026-07-16 — BUY HPE (core)
Shares: 210 | Entry: $47.27 | Stop: 10% trailing GTC (current trigger $42.714) | Target: n/a (reconstructed) | R:R: n/a (reconstructed)
Thesis: Core watchlist momentum name (2026-07-12 screen rank 8, +84.5% 3M rel. return vs SPY, FCF positive/improving, Buy rating; Zacks upgraded Hold→Strong Buy, GS PT $32→$79 / RJ $29→$74 on AI networking).

### 2026-07-16 — BUY KLAC (core)
Shares: 45 | Entry: $220.389778 | Stop: 10% trailing GTC (current trigger $205.90191) | Target: n/a (reconstructed) | R:R: n/a (reconstructed)
Thesis: Core watchlist momentum name (2026-07-12 screen rank 20, +23.0% 3M rel. return vs SPY, FCF positive/improving, Moderate Buy rating; upgrades on WFE supply constraints, expanding service revenue).

### 2026-07-16 — SELL SGOV (income)
Shares: 197 | Exit: $100.54 | Realized P&L: ~$0.00 (0.00%) | Reason: sold to fund a buy (income only) — Core/Satellite buy-funding sweep (SGOV-first per Income sleeve rule)

### 2026-07-16 — BUY OCUL (satellite)
Shares: 753 | Entry: $9.89 | Stop: 15% trailing GTC (current trigger $8.38525) | Target: n/a (reconstructed) | R:R: n/a (reconstructed)
Thesis: Satellite watchlist biotech name; entered *after* today's binary catalyst resolved (see below), so sized at the standard 7.5% cap (cost = 7.45% of pre-trade equity), not the 5% binary-hold cap — the position was opened post-resolution, not held through an unresolved event.
Catalyst: ASRS 44th Annual Meeting presentation of Phase 3 SOL-1 wet-AMD data for AXPAXLI (OTX-TKI), reported statistically significant superiority vs aflibercept (44.1% vs 34.9% anatomic control at wk 52), clean safety, NDA planned Q4 2026. Pre-market weakness (-3.14%) attributed to a delayed Q1 EPS-miss reaction, not the clinical data (per pre-market RESEARCH-LOG entry). | Catalyst date: 2026-07-16 (resolved pre-market, positive) | Max loss if fails: n/a — catalyst already resolved positively before this entry.

**Funding/sizing reconciliation:** SGOV sold 172 + 197 = 369 sh @ $100.54 =
$37,099.26 raised vs. AMD $9,733.72 + HPE $9,926.70 + KLAC $9,917.54 + OCUL
$7,447.17 = $37,025.13 spent (small residual absorbed into cash, consistent
with SGOV-sweep-first funding). Post-trade cash $20,184.33 / equity
$99,439 = 20.3%, still above the 20% floor. This week (Jul 13 start): core
3/6, satellite 1/4 — all four names confirmed on WATCHLIST.md, position
counts (3 core, 1 satellite) and sizes (~9.7-9.9% core each, 7.45%
satellite) within the buy-side gate. No further gate check needed for this
window — see 11 AM Session Note in RESEARCH-LOG.md for the risk sweep.

### Jul 16 — 3pm Snapshot (Day 5, Thursday)
**Portfolio:** $98,361.75 | **Cash:** $20,184.33 (20.5%) | **Day P&L:** -$1,651.01 (-1.65%) | **Phase P&L:** -$1,638.25 (-1.64%)
**Core exposure:** $28,745.51 (29.2% of equity) | **Satellite exposure:** $6,720.53 (6.8% of equity) | **Income exposure:** $42,716.75 (43.4% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| AMD | core | 19 | $512.301053 | $493.94 | -6.65% | -$348.86 (-3.58%) | 10% trailing ($466.479) |
| HPE | core | 210 | $47.27 | $45.22 | -4.58% | -$430.50 (-4.34%) | 10% trailing ($42.714) |
| KLAC | core | 45 | $220.389778 | $219.21 | -2.36% | -$53.09 (-0.54%) | 10% trailing ($205.90191) |
| OCUL | satellite | 753 | $9.89 | $8.925 | -10.39% | -$726.65 (-9.76%) | 15% trailing ($8.38525) |
| SGOV | income | 28 | $100.54 | $100.5439 | +0.00% | +$0.11 (+0.00%) | 5% trailing ($95.5225) |
| SPHY | income | 856 | $23.36 | $23.345 | -0.06% | -$12.84 (-0.06%) | 5% trailing ($22.192) |
| EDGX | income | 746 | $26.78 | $26.70 | -0.33% | -$59.68 (-0.30%) | 5% trailing ($25.479) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" list existed in today's RESEARCH-LOG.md, so per STEP 3 the buy
side was HOLD. Risk sweep: all 7 positions (4 Core/Satellite + 3 Income)
confirmed carrying live trailing-stop orders, none missing. AMD/HPE/KLAC/
OCUL all widened since 11am but none reached their -7%/-15% hard-cut. OCUL
was checked closest given its drawdown grew to -9.76% (from -5.11% at
11am) — Alpaca bars show a steady same-day drift (no gap/halt), and a
WebSearch for OCUL news turned up only the already-priced-in ASRS SOL-1
presentation and a reaffirmed FDA Q4 2026 NDA-submission timeline, both
consistent with the entry thesis, not a reversal. Read as post-catalyst
profit-taking, not a thesis break — held. No stop tightening applied
(all 4 Core/Satellite positions are currently underwater; the
gain-based tightening schedule only applies to winners). No satellite
catalyst dates inside the next 1-2 trading days for any held name. No
2-strike sub-sector concern (0 satellite losses realized). Cash 20.5%,
above the 20% floor — no funding sweep needed. Day P&L (-1.65%) driven
almost entirely by the four new Core/Satellite positions opened this
morning moving against entry, not by Income-sleeve moves (which were
flat to slightly negative). This week (Jul 13 start): core 3/6 trades,
satellite 1/4 trades — unchanged, valid per the Patience Rule (no new
signal cleared any window today). Tomorrow: weekly-review / watchlist
screen-refresh; also revisit whether OCUL's continued drift stabilizes
or extends before drawing a conclusion on the entry.

## 2026-07-17 — Session-persistence gap: no market-open (9:30am) log exists

Same pattern as 2026-07-16: `git log` shows only the pre-market commit for
today when this 11am session started — no "### Approved Trades (verified)"
or "9:30 AM Session Note" in RESEARCH-LOG.md, no TRADE-LOG entries. Whether
a 9:30am session ran and failed to persist, or never ran, is unknown; either
way its GTC trailing stops were live from 7/16 and did their job
mechanically at the open regardless. Reconstructing the two stop-outs below
from `alpaca.sh orders closed` order history so the audit trail matches
reality (same approach as the 7/16 reconstruction).

### 2026-07-17 — SELL AMD (core) — trailing stop
Shares: 19 | Entry: $512.301053 | Exit: $465.934211 | Realized P&L: -$880.97 (-9.05%) | Reason: 10% GTC trailing stop filled automatically at 2026-07-17T13:38:01Z (9:38am ET), trail from hwm $518.31, trigger $466.479. Fired before any session touched the position today — mechanical stop protection working as designed against the pre-market NAND-oversupply/capex-deferral semis selloff flagged in this morning's pre-market research (AMD wasn't itself named in that selloff group, but sector-wide semis weakness carried through). Past the -7% manual hard-cut level; the stop had already filled by the time this session ran, nothing left to manually cut.

### 2026-07-17 — SELL KLAC (core) — trailing stop
Shares: 45 | Entry: $220.389778 | Exit: $205.80 | Realized P&L: -$656.54 (-6.62%) | Reason: 10% GTC trailing stop filled automatically at 2026-07-17T13:38:36Z (9:38am ET), trail from hwm $228.7799, trigger $205.90191. Directly on-thesis with this morning's flagged risk: KLAC's entry rationale (WFE supply constraints) is exposed to the same NAND-oversupply/capex-deferral narrative hitting WDC/STX/MU/AMAT/LRCX pre-market. Stop fired just under the -7% hard-cut level.

**Post-exit sleeve state:** Core down to 1 open position (HPE, -4.21%, not
at hard-cut). Satellite unchanged (OCUL, 1 position, -7.53%, not at
hard-cut). Neither exit was satellite biotech/industrials, so the 2-strike
sub-sector rule is not triggered by these (core-only exits). This week's
counts unaffected — the weekly cap tracks new entries, not exits: core
3/6, satellite 1/4, unchanged.

### 2026-07-17 — BUY SGOV (income) — cash-floor sweep
Shares: 187 | Entry: $100.58 | Stop: 5% trailing GTC (replaced combined
215-share stop, trigger $95.54625, hwm $100.575) | Target: n/a | R:R: n/a
Thesis: Income sleeve sweep-back rule (TRADING-STRATEGY.md, "Income /
Cash-Parking Sleeve" — sweep freed cash above the 20% floor into SGOV
first at the close-out step following a Core/Satellite sell).
Funding reason (income only): AMD + KLAC stop-outs freed $38,298 cash vs.
a 20% floor of ~$19,447 (equity $97,235.30) — swept $18,808.46 (187 sh)
of the ~$18,850.94 excess into SGOV, leaving cash at ~20.0% (conservative
vs. the floor given intraday price movement). Old 28-share SGOV stop
canceled and replaced with one 5% trailing stop on the combined 215-share
position (215 = 28 existing + 187 new) rather than stacking two stop
orders on the same symbol.
