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

### Jul 17 — 3pm Snapshot (Day 6, Friday)
**Portfolio:** $97,361.71 | **Cash:** $19,489.54 (20.0%) | **Day P&L:** -$1,000.04 (-1.02%) | **Phase P&L:** -$2,638.29 (-2.64%)
**Core exposure:** $9,685.20 (9.9% of equity) | **Satellite exposure:** $6,844.77 (7.0% of equity) | **Income exposure:** $61,342.20 (63.0% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $46.12 | +2.19% | -$241.50 (-2.43%) | 10% trailing ($42.714) |
| OCUL | satellite | 753 | $9.89 | $9.09 | -0.82% | -$602.40 (-8.09%) | 15% trailing ($8.38525) |
| EDGX | income | 746 | $26.78 | $26.4605 | -0.88% | -$238.35 (-1.19%) | 5% trailing ($25.479) |
| SGOV | income | 215 | $100.574791 | $100.575 | +0.03% | +$0.04 (+0.00%) | 5% trailing ($95.551) |
| SPHY | income | 856 | $23.36 | $23.34 | -0.09% | -$17.12 (-0.09%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market,
11am, and 3pm all returned zero qualifying ideas), so per STEP 3 the buy
side was HOLD. Core is down to 1 open position (HPE) and satellite to 1
(OCUL) after this morning's AMD/KLAC mechanical stop-outs (reconstructed
at 11am — see above). Risk sweep: both remaining positions checked against
hard-cuts (HPE -2.43% vs -7%, OCUL -8.09% vs -15%) — neither breached. All
5 open positions confirmed carrying live GTC trailing stops, none missing.
No satellite catalyst inside the next 1-2 trading days for OCUL (next
milestone is the informational H.C. Wainwright fireside chat 2026-07-22,
not binary) so no gap-risk action needed. Thesis check: HPE and OCUL both
intact per this morning's research, nothing closed. No stop tightening —
neither position is in gain. Cash 20.0%, right at the floor, no funding
sweep needed (no new buy this window). Day P&L (-1.02%) driven mostly by
OCUL's continued drift, partly offset by HPE's intraday bounce. This week
(Jul 13 start): core 3/6, satellite 1/4 — unchanged (exits don't count
against the weekly new-entry cap), valid per the Patience Rule. Tomorrow:
none (weekend) — next session is Monday pre-market; Friday's weekly-review
watchlist screen-refresh should also revisit TWIN (no confirmed catalyst,
merger/privatization 8-K) and the NAND-oversupply-hit core names
(WDC/STX/MU/AMAT/LRCX) per this morning's flags.

## Jul 20 — 3pm Snapshot (Day 8, Monday)
**Portfolio:** $96,804.92 | **Cash:** $19,489.51 (20.13%) | **Day P&L:** -$556.79 (-0.57%) | **Phase P&L:** -$3,195.08 (-3.20%)
**Core exposure:** $9,433.41 (9.74% of equity) | **Satellite exposure:** $6,584.99 (6.80% of equity) | **Income exposure:** $61,297.02 (63.32% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $44.921 | -1.96% | -$493.29 (-4.97%) | 10% trailing ($42.714) |
| OCUL | satellite | 753 | $9.89 | $8.745 | -2.51% | -$862.19 (-11.58%) | 15% trailing ($8.38525) |
| SGOV | income | 215 | $100.574791 | $100.585 | +0.01% | +$2.19 (+0.00%) | 5% trailing ($95.5605) |
| SPHY | income | 856 | $23.36 | $23.32 | -0.04% | -$34.24 (-0.17%) | 5% trailing ($22.2015) |
| EDGX | income | 746 | $26.78 | $26.42 | -0.09% | -$268.56 (-1.34%) | 5% trailing ($25.479) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market or
11am), so per STEP 3 the buy side was HOLD; new trading week (Jul 20
start) stays at core 0/6, satellite 0/4. Risk sweep: both open
Core/Satellite positions checked against hard-cuts (HPE -4.97% vs -7%,
OCUL -11.58% vs -15%) — neither breached, though OCUL continues to sit
closest to its cut (eased slightly from -11.78% at 11am). All 5 open
positions confirmed carrying live GTC trailing stops via `alpaca.sh
orders`/`orders closed`, none missing, no fills today. Thesis check: fresh
WebSearch on both held names found nothing negative — OCUL's only news is
forward-looking conference items (HC Wainwright fireside chat Jul 22,
still informational, not a binary PDUFA date) plus a routine
inducement-grant 8-K; HPE has no new developments beyond the already-
logged 7/19 Buy->Hold rating change, Juniper/AI-infra story intact. No
closes. No satellite catalyst inside the next 1-2 trading days is binary,
so no gap-risk action needed. No stop tightening — both positions remain
underwater; Income names roughly flat to slightly negative. No 2-strike
sub-sector concern (0 satellite losses realized this week). Day P&L
(-0.57%) driven by HPE/OCUL continuing to drift against entry plus a
modest EDGX pullback, partly offset by flat SGOV/SPHY. This week (Jul 20
start): core 0/6, satellite 0/4 — valid per the Patience Rule, a clean
slate so far this week. Tomorrow: continue monitoring OCUL's proximity to
its -15% hard-cut and HPE's rating-downgrade watch item; Wednesday's
Alphabet earnings (7/22) is the next major AI-capex read-through for the
core semis/AI-infra cluster.

### 2026-07-21 — BUY MNKD (satellite)
Shares: 1215 | Entry: $4.00 | Stop: 15% trailing GTC, trigger $3.3915 (hwm $3.99) | Target: ~$8.50 (analyst consensus PT per 7/12 screen; wide dispersion, contingent on PDUFA outcome, not a firm near-term level) | R:R: ~7.5:1 (nominal, vs. trailing-stop risk only — see gap-risk note)
Thesis: FDA PDUFA decision (Furoscix ReadyFlow Autoinjector) confirmed on track for Jul 26, 2026 — inside the 5-trading-day window as of today (last session before the date is Fri Jul 24). Fundamentals reaffirmed in today's pre-market research: Q1 revenue +15% YoY to $90.2M, management reaffirmed $110-120M FY26 Furoscix target, Buy rating intact. One 7/17 director sale ($213K) is routine Rule 10b5-1 vesting, not a bearish signal.
Catalyst (satellite): FDA PDUFA decision, Furoscix ReadyFlow Autoinjector | Catalyst date: Jul 26, 2026 | Max loss if fails: position capped at 5% of equity ($4,860, actual cost $4,860.00) per the binary-catalyst gap-risk rule — trailing stop does not protect against an overnight/pre-market gap on an FDA rejection; full position value is the realistic worst case, not the 15% trail level.
Gate: satellite positions after fill 2/4, satellite trades this week 1/4, cost $4,860.00 = 5.00% of equity ($97,219.47) — at the tightened binary-catalyst cap, not the standard 7.5%. Satellite exposure after fill ~$11,418.63 (11.75% of equity, within the 20% sleeve cap). MNKD/spread confirmed tight (bid $3.97/ask $4.00) via live quote at market-open, consistent with prior close $3.98 — no gap or illiquidity flag.
Note: ORN (the other candidate flagged in today's pre-market research) was skipped this window — live quote showed an implausible bid/ask spread (bid $11.15/ask $15.12, ~$4 wide, stale timestamp) against a $12.68 prior close, tripping the wide/illiquid-spread skip rule in STEP 2. Re-check with a fresh quote next session; do not treat today's quote as a real market condition.

### 2026-07-21 — SELL SGOV (income) — cash-floor sweep
Shares: 49 | Exit: $100.59 | Realized P&L: ~$0.00 (0.00%) | Reason: cash-floor restoration (income only) — Income sleeve rule requires literal cash always >= 20% of equity. Market-open's MNKD buy ($4,860) was not preceded by the required SGOV-first funding sweep, leaving cash at $14,629.51 = 15.02% of equity ($97,408.87) at this session's start — a real floor breach, not the expected momentary same-moment dip. Sold 49 sh to restore the floor with a small buffer: post-sale cash $19,558.42 = 20.08% of equity ($97,401.06).
Mechanics: canceled the standing 215-share 5% trailing stop (dc9b994b...), sold 49 sh market/day, re-placed a fresh 5% trailing GTC stop on the remaining 166 sh (trigger $95.56525, hwm $100.595) — same cancel-then-replace pattern as the 7/17 sweep, avoiding two stacked stop orders on one symbol.
Flag for review: market-open should be checked for why the pre-buy SGOV sweep didn't fire before the MNKD fill — recurring risk if the funding-shortfall check is being skipped at that session.

### Jul 21 — 3pm Snapshot (Day 9, Tuesday)
**Portfolio:** $97,641.25 | **Cash:** $19,558.42 (20.03%) | **Day P&L:** +$836.33 (+0.86%) | **Phase P&L:** -$2,358.75 (-2.36%)
**Core exposure:** $9,711.45 (9.94% of equity) | **Satellite exposure:** $11,882.91 (12.17% of equity) | **Income exposure:** $56,488.47 (57.85% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $46.245 | +3.78% | -$215.25 (-2.17%) | 10% trailing ($42.714) |
| MNKD | satellite | 1215 | $4.00 | $4.19 | +5.28% | +$230.85 (+4.75%) | 15% trailing ($3.5955) |
| OCUL | satellite | 753 | $9.89 | $9.02 | +3.56% | -$655.11 (-8.80%) | 15% trailing ($8.38525) |
| SGOV | income | 166 | $100.574791 | $100.5962 | +0.01% | +$3.55 (+0.02%) | 5% trailing ($95.57) |
| SPHY | income | 856 | $23.36 | $23.31 | -0.09% | -$42.80 (-0.21%) | 5% trailing ($22.2015) |
| EDGX | income | 746 | $26.78 | $26.59 | +0.89% | -$141.74 (-0.71%) | 5% trailing ($25.479) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG, so per STEP 3
the buy side was HOLD (this morning's MNKD buy came from the 9:30am
market-open window, not this session). Risk sweep: all 6 open positions
confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none
missing. Hard-cut check: HPE -2.17% and OCUL -8.80% both well clear of
their -7%/-15% cuts; MNKD is in gain (+4.75%), no cut applies. Thesis
intact on HPE and OCUL, nothing new since 11am. MNKD's Jul 26 PDUFA
(last trading session before it Fri Jul 24) is 3 trading days out — not
yet inside the 1-2-trading-day gap-risk trigger; already sized at the 5%
binary-catalyst cap and documented at entry, holding through is valid,
re-check Thu/Fri as the window closes. OCUL's only near-term item is
tomorrow's informational HC Wainwright fireside chat, not binary — no
action. No stop tightening: MNKD's gain is below the +25% satellite
tightening threshold, HPE is not in gain. No 2-strike sub-sector concern
(0 satellite losses realized this week). Cash 20.03%, at/above the 20%
floor, no funding sweep needed. Day P&L (+0.86%) driven by a broad
across-the-board bounce (HPE +3.78%, OCUL +3.56%, MNKD +5.28% intraday)
recovering some of yesterday's drift; Income sleeve roughly flat. This
week (Jul 20 start): core 0/6, satellite 1/4 (MNKD) — unchanged, valid
per the Patience Rule. Tomorrow: GOOGL earnings (7/22 PM) is the key
read-through risk for the core AI-hardware cluster; continue tracking
MNKD's approach to its Jul 26 PDUFA and OCUL's HC Wainwright fireside
chat (informational only).

## Jul 22 — 3pm Snapshot (Day 10, Wednesday)
**Portfolio:** $97,368.31 | **Cash:** $19,558.40 (20.09%) | **Day P&L:** -$272.94 (-0.28%) | **Phase P&L:** -$2,631.69 (-2.63%)
**Core exposure:** $10,154.55 (10.43% of equity) | **Satellite exposure:** $11,187.78 (11.49% of equity) | **Income exposure:** $56,463.98 (57.99% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $48.355 | +3.50% | +$227.85 (+2.30%) | 10% trailing ($44.712) |
| MNKD | satellite | 1215 | $4.00 | $3.81 | -5.93% | -$230.85 (-4.75%) | 15% trailing ($3.5955) |
| OCUL | satellite | 753 | $9.89 | $8.71 | -2.46% | -$888.54 (-11.93%) | 15% trailing ($8.38525) |
| SGOV | income | 166 | $100.58 | $100.61 | +0.01% | +$4.98 (+0.03%) | 5% trailing ($95.5795) |
| SPHY | income | 856 | $23.36 | $23.27 | -0.21% | -$77.04 (-0.39%) | 5% trailing ($22.2015) |
| EDGX | income | 746 | $26.78 | $26.60 | +0.20% | -$134.28 (-0.67%) | 5% trailing ($25.479) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG, so per STEP 3
the buy side was HOLD; this week (Jul 20 start) stays at core 0/6,
satellite 1/4 (MNKD). Risk sweep: all 6 open positions confirmed carrying
live GTC trailing stops via `alpaca.sh orders`, none missing. Hard-cut
check: HPE +2.30% (in gain), MNKD -4.75%, OCUL -11.93% (eased slightly
from -12.59% at 11am) — none at their -7%/-15% cuts. Fresh WebSearch
thesis check on HPE, MNKD, and OCUL found nothing negative (MNKD's
pediatric Afrezza FDA approval is incrementally positive; Furoscix
ReadyFlow PDUFA reconfirmed on track for Jul 26; OCUL's HC Wainwright
fireside chat occurred today as scheduled, informational only) — nothing
closed. Gap-risk check: MNKD's Jul 26 PDUFA is now 2 trading days out
(Thu 7/23, Fri 7/24 remain) — inside the 1-2-trading-day gap-risk window.
It was properly sized/documented at entry (5% binary-catalyst cap, max
loss logged 7/21) and conviction hasn't weakened, so holding through is
valid per the rule — stated explicitly rather than silently doing
nothing. OCUL has no firm binary PDUFA date, so the gap-risk trigger
doesn't apply to it. No stop tightening — no position crossed a
tightening threshold since 11am. No 2-strike sub-sector concern (0
satellite losses realized this week). Cash 20.09%, at/above the 20%
floor, no funding sweep needed. Risky positions closed today: none. Day
P&L (-0.28%) driven mainly by MNKD's intraday dip and OCUL's continued
drift, partly offset by HPE's gain and flat-to-slightly-negative Income
sleeve. Tomorrow: GOOGL's after-close earnings tonight (7/22) is the key
overnight read-through for the core AI-hardware cluster (HPE among
others); continue tracking MNKD into its Jul 26 PDUFA (2 trading days
left) and monitor OCUL's proximity to its -15% hard-cut.

### 2026-07-23 — SELL OCUL (satellite) — trailing stop
Shares: 753 | Exit: $8.383267 | Realized P&L: -$1,134.57 (-15.23%) | Reason: 15% GTC trailing stop filled automatically at 2026-07-23T13:51:58Z (9:51am ET), trail from hwm $9.865, trigger $8.38525. Filled before this 11am session ran — mechanical stop protection working as designed after several sessions of documented drift (no thesis break, no negative catalyst news; last check at 9:30am today had it at -13.55%, still short of the -15% hard-cut). First satellite loss realized this week; first biotech-sub-sector loss under the 2-strike cooldown tracker (strike 1 of 2 — cooldown not yet triggered, needs a second consecutive biotech loss).

### 2026-07-23 — BUY SGOV (income) — sweep-back after satellite sell
Shares: 64.102464718 | Entry: $100.62 | Stop: 5% trailing GTC on the combined 230-share round-lot position (fractional 0.102 sh left unprotected, immaterial ~$10.3), trigger $95.58425 (hwm $100.615) | Target: n/a | R:R: n/a
Thesis: Income sleeve sweep-back rule (TRADING-STRATEGY.md — sweep freed cash above the 20% floor into SGOV first after a Core/Satellite sell).
Funding reason (income only): OCUL's stop-out freed cash to $25,871 (26.72% of $96,832.39 equity) vs. the 20% floor (~$19,366.48) — swept $6,450 (excess ~$6,504.52, left a ~$54 buffer) into SGOV. Post-sweep cash $19,421.01 = 20.06% of equity, at/above the floor. Canceled the standing 166-share 5% trailing stop and re-placed one 5% trailing GTC stop on the combined 230-share round-lot position (same cancel-then-replace pattern as prior sweeps).

## Jul 23 — 3pm Snapshot (Day 11, Thursday)
**Portfolio:** $96,672.69 | **Cash:** $19,421.01 (20.09%) | **Day P&L:** -$695.62 (-0.71%) | **Phase P&L:** -$3,327.31 (-3.33%)
**Core exposure:** $9,975.00 (10.32% of equity) | **Satellite exposure:** $4,744.58 (4.91% of equity) | **Income exposure:** $62,528.13 (64.68% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $47.50 | -1.31% | +$48.30 (+0.49%) | 10% trailing ($44.712) |
| MNKD | satellite | 1215 | $4.00 | $3.905 | +1.69% | -$115.43 (-2.37%) | 15% trailing ($3.5955) |
| EDGX | income | 746 | $26.78 | $26.19 | -1.29% | -$440.14 (-2.20%) | 5% trailing ($25.479) |
| SGOV | income | 230.102 | $100.591143 | $100.60 | +0.00% | +$2.04 (+0.00%) | 5% trailing ($95.589) |
| SPHY | income | 856 | $23.36 | $23.18 | -0.47% | -$154.08 (-0.77%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market, 9:30am,
11am, and 3pm all returned zero qualifying ideas), so per STEP 3 the buy side
was HOLD; this week (Jul 20 start) stays at core 0/6, satellite 1/4 (MNKD).
Risk sweep: HPE +0.49% and MNKD -2.37% both well clear of their -7%/-15%
hard-cuts; all 5 open positions confirmed carrying live GTC trailing stops via
`alpaca.sh orders`, none missing. Fresh WebSearch found no adverse news on HPE
(DOE Genesis Mission selection incrementally positive, insider sale routine)
or MNKD (no PDUFA decision has landed yet) since 11am — both theses intact,
nothing closed. Gap-risk check: MNKD's Furoscix PDUFA is now 1 trading day out
(decision expected Fri 7/24 after-hours or Mon 7/27 pre-market — no weekend
stop protection either way); it was properly sized/documented at entry (5%
binary-catalyst cap, max loss logged 7/21) and conviction hasn't weakened, so
holding through remains valid — stated explicitly rather than silently doing
nothing. No stop tightening this window (HPE below +15%, MNKD not in gain;
Income sleeve has no gain-based schedule). 2-strike sub-sector tracker
unchanged: biotech strike 1/2 (from today's OCUL stop-out), no cooldown
triggered; industrials 0 strikes. Cash 20.09%, at/above the 20% floor, no
funding sweep needed (no trades this window). Risky positions closed today:
none. Day P&L (-0.71%) driven mainly by EDGX/HPE/SPHY pulling back with the
broader semi-sector-led selloff, partly offset by MNKD's intraday bounce
ahead of its PDUFA date. Tomorrow: MNKD's Furoscix PDUFA decision is the top
event risk (expected Fri after-hours or Mon pre-market, no weekend stop
protection); continue monitoring HPE's DOE/Genesis Mission read-through and
watch for the semi-sector selloff's effect on core watchlist names into
Friday's weekly-review screen refresh.

### 2026-07-24 — BUY MU (core)
Shares: 10 | Entry: $966.531 | Stop: 10% trailing GTC, trigger $869.481 (hwm $964.34) | Target: n/a — no reliable consensus PT (bull/bear PT dispersion $400-$2,200 per 7/12 screen); momentum-continuation thesis, exit governed by trailing stop / tightening schedule | R:R: n/a
Thesis: Core watchlist momentum name (2026-07-12/19 screen rank 2, FCF positive/improving, Strong Buy rating). Pre-market 07-24 research flagged MU's momentum-gate status as unresolved after 07-23's semi selloff and deferred the live recheck to market-open. Recomputed today from fresh Alpaca daily bars (2024-10-01 to 2026-07-24): last $990.21 (7/23 close) above both 50-day MA ($952.30) and 200-day MA ($498.41); 3M relative return vs SPY +99.3pp, 6M relative return +146.8pp — both well positive, no >20% single-day move in the lookback window. Momentum gate cleanly passes. Live quote at entry: bid $958.65/ask $965.54 (~0.7% spread) — tight, no illiquidity flag.
Gate: core positions after fill 2/6 (HPE, MU), core trades this week 1/6, cost $9,665.31 = 9.98% of pre-trade equity ($96,894.94) — within the 20% single-position cap and available cash ($19,420.87 pre-trade). Ticker confirmed on WATCHLIST.md core list.
Also rechecked per pre-market handoff: WDC, STX, AMAT passed the momentum gate (all above 50d/200d MA, positive 3M/6M relative return) but were skipped — live quotes showed wide bid/ask spreads (WDC ~6.5%, STX ~9.7%, AMAT ~10.2%), tripping the wide/illiquid-spread skip rule in STEP 2, consistent with thin opening-auction liquidity ~3-4 min after the 9:30am open. LRCX and KLAC failed the momentum gate outright (both below their 50-day MA: LRCX $319.78 vs MA50 $338.13; KLAC $218.73 vs MA50 $220.19) — skipped regardless of spread.

### 2026-07-24 — SELL SGOV (income) — cash-floor sweep
Shares: 96 | Exit: $100.63 | Realized P&L: ~$0.00 (0.00%) | Reason: cash-floor restoration (income only) — the MU buy above ($9,665.31) was funded from literal cash rather than a pre-buy SGOV sweep, dropping cash to $9,755.56 = 10.07% of equity ($96,894.94), well below the 20% floor (a real breach per the 7/21 precedent, not the expected momentary same-trade dip). Sold 96 sh to restore the floor with a small buffer: post-sale cash $19,416.04 = 20.06% of equity ($96,790.84).
Mechanics: canceled the standing 230-share 5% trailing stop, sold 96 sh market/day, re-placed a fresh 5% trailing GTC stop on the remaining 134 whole shares (trigger $95.608, hwm $100.64; 0.102 fractional sh left unprotected, immaterial ~$10.3) — same cancel-then-replace pattern as the 7/17 and 7/23 sweeps.
Flag for review: the SGOV-first funding sweep should be checked *before* placing a Core/Satellite buy whenever post-trade cash would fall below the 20% floor, not only when literal cash is short of the order cost — same recurring gap flagged 7/21 (MNKD). Worth tightening the STEP 3/4 wording in the market-open workflow so the sweep fires pre-buy by default.

### 2026-07-24 — SKIP ORN (satellite)
No entry. Live quote bid $10.93/ask $15.00 — ~31% spread, same illiquid/wide-spread condition flagged 07-21 through 07-23 (now failed the liquidity check three sessions running, worse than the prior ~17-27% reads). Skipped per STEP 2 skip rule despite being inside its Jul 28 earnings catalyst window. Per pre-market's flag, this is now a standing pattern worth dropping/deprioritizing at Friday's weekly-review regardless of catalyst/momentum strength.

### 2026-07-27 — SKIP CVLG (satellite)
No entry. Inside its Jul 29 earnings window (2 trading days out per today's pre-market entry) — the only satellite name in-window this session. Live quote at market-open: bid $39.36/ask $55.75, ~35% spread — grossly wide/stale, same thin-opening-liquidity condition repeatedly flagged for ORN in the 7/21-7/24 entries. Skipped per the wide/illiquid-spread skip rule in STEP 2; never reached the buy-side gate. Re-check with a fresh quote at 11am/3pm if the spread tightens before the earnings print.

## Jul 24 — 3pm Snapshot (Day 12, Friday)
**Portfolio:** $96,385.55 | **Cash:** $19,416.04 (20.14%) | **Day P&L:** -$287.14 (-0.30%) | **Phase P&L:** -$3,614.45 (-3.61%)
**Core exposure:** $19,032.75 (19.75% of equity) | **Satellite exposure:** $5,004.22 (5.19% of equity) | **Income exposure:** $52,929.05 (54.91% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $47.465 | -0.37% | +$40.95 (+0.41%) | 10% trailing ($44.712) |
| MU | core | 10 | $966.531 | $906.51 | -8.45% | -$600.21 (-6.21%) | 10% trailing ($869.481) |
| MNKD | satellite | 1215 | $4.00 | $4.1187 | +5.88% | +$144.22 (+2.97%) | 15% trailing ($3.5955) |
| EDGX | income | 746 | $26.78 | $26.25 | +0.17% | -$395.38 (-1.98%) | 5% trailing ($25.479) |
| SGOV | income | 134.102 | $100.591143 | $100.6388 | +0.03% | +$6.39 (+0.05%) | 5% trailing ($95.608) |
| SPHY | income | 856 | $23.36 | $23.19 | -0.04% | -$145.52 (-0.73%) | 5% trailing ($22.2015) |

**Notes:** One core trade this window's predecessor (9:30am BUY MU) and one income
sweep (SELL SGOV, cash-floor restoration) already logged above; no "### Approved
Trades (verified)" list existed anywhere in today's RESEARCH-LOG, so per STEP 3 the
3pm buy side was HOLD — this week (Jul 20 start) stays at core 1/6 (MU), satellite
1/4 (MNKD). Risk sweep: MU -6.21% is the closest any position has come to a
hard-cut today (core cut -7%), but WebSearch confirms the drop tracks a broad
semiconductor sector selloff (Micron -5.5% intraday sector-wide, not company
news) — analysts maintain Strong Buy, Citigroup called the selloff a buying
opportunity; momentum/FCF gate passed fresh this morning, no thesis break — held,
no action. HPE +0.41% and MNKD +2.97% are both well clear of their cuts. All 6
open positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`,
none missing. MNKD's PDUFA gap risk is resolved: the FDA approved FUROSCIX
ReadyFlow Autoinjector this morning (independently confirmed via multiple primary
sources at 11am), so no binary event risk remains into the weekend. No stop
tightening this window — no position crossed a tightening threshold. No 2-strike
sub-sector concern change (biotech still 1/2 from OCUL's 7/23 stop-out;
industrials 0). Cash 20.14%, at/above the 20% floor, no funding sweep needed.
Risky positions closed today: none. Day P&L (-0.30%) driven mainly by MU's
sector-selloff-driven drift since this morning's entry, partly offset by
HPE/MNKD gains; Income sleeve roughly flat to slightly negative. Tomorrow:
monitor MU for further sector-wide semi weakness vs. a genuine thesis break
(analysts still Strong Buy); no near-term satellite catalyst remains open
(MNKD resolved); watch ORN's Jul 28 earnings and its now 3-session-running
illiquid spread ahead of Friday's weekly-review screen refresh.

### 2026-07-27 — SELL MU (core)
Shares: 10 | Exit: $869.37 | Realized P&L: -$971.61 (-10.05%) | Reason: 10% GTC trailing stop filled automatically at 2026-07-27T14:26:22Z (10:26am ET), trail from hwm $966.09, trigger $869.481. Filled before this 11am session ran — mechanical stop protection working as designed; continuation of the sector-wide semi/AI-hardware rout flagged across pre-market and the 9:30am note (no company-specific negative catalyst, analysts still Strong Buy, forward P/E ~5.7x). Fill price came in slightly below the $869.481 trigger (normal slippage). First core loss realized this week; core has no 2-strike sub-sector cooldown rule (satellite-only).

### 2026-07-27 — BUY SGOV (income) — sweep-back after core sell
Shares: 87.900477634 | Entry: $100.619252 (notional $8,836.88) | Stop: 5% trailing GTC on the whole-share portion (221 of 221.900477634 total sh), trigger $95.6175 (hwm $100.65); 0.900 fractional sh left unprotected, immaterial (~$90.60) | Target: n/a | R:R: n/a
Thesis: Income sleeve sweep-back rule (TRADING-STRATEGY.md — sweep freed cash above the 20% floor into SGOV first after a Core/Satellite sell).
Funding reason (income only): MU's mechanical stop-out (see above) freed cash to $28,109.71 (29.32% of $95,864.13 equity) vs. the 20% floor (~$19,172.83) — swept $8,836.88 (excess ~$8,936.88, left a ~$100 buffer) into SGOV. Post-sweep cash $19,272.84 = 20.10% of equity ($95,887.00). Canceled the standing 134-share 5% trailing stop and re-placed one 5% trailing GTC stop on the 221 whole shares of the combined position (same cancel-then-replace pattern as the 7/23 and 7/24 sweeps).

## Jul 27 — 3pm Snapshot (Day 13, Monday)
**Portfolio:** $95,885.60 | **Cash:** $19,272.84 (20.10%) | **Day P&L:** -$499.95 (-0.52%) | **Phase P&L:** -$4,114.40 (-4.11%)
**Core exposure:** $9,992.85 (10.42% of equity) | **Satellite exposure:** $4,932.90 (5.15% of equity) | **Income exposure:** $61,687.01 (64.35% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 210 | $47.27 | $47.585 | -0.22% | +$66.15 (+0.67%) | 10% trailing ($44.712) |
| MNKD | satellite | 1215 | $4.00 | $4.06 | -1.70% | +$72.90 (+1.50%) | 15% trailing ($3.5995) |
| EDGX | income | 746 | $26.78 | $26.125 | -0.35% | -$488.63 (-2.45%) | 5% trailing ($25.479) |
| SGOV | income | 221.900 | $100.619252 | $100.65 | +0.01% | +$6.82 (+0.03%) | 5% trailing ($95.6175) |
| SPHY | income | 856 | $23.36 | $23.205 | +0.11% | -$132.68 (-0.66%) | 5% trailing ($22.2015) |

**Notes:** MU's mechanical 10% trailing-stop loss (-$971.61, -10.05%) and the
SGOV sweep-back both already happened before 11am today and are logged above;
no "### Approved Trades (verified)" list existed anywhere in today's
RESEARCH-LOG (pre-market, 9:30am, 11am, and 3pm all returned zero qualifying
ideas), so per STEP 3 the buy side was HOLD all session — this week (Jul 27
start) stays at core 0/6, satellite 0/4. Risk sweep: HPE +0.67% and MNKD
+1.50% both well clear of their -7%/-15% hard-cuts; all 5 open positions
confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none
missing. Fresh WebSearch found no adverse news on HPE (Paul Singer top-pick
mention, Buy consensus, $64.13 PT) or MNKD (no new developments beyond the
already-resolved 7/24 Furoscix approval) since 11am — both theses intact,
nothing closed. No satellite catalyst inside the 1-2 trading-day gap-risk
window (MNKD's PDUFA fully resolved 7/24). No stop tightening this window —
neither position crossed a tightening threshold. 2-strike sub-sector tracker
unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 20.10%, at/above the
20% floor, no funding sweep needed. Risky positions closed today: none this
window (MU's stop-out and SGOV sweep predate this session, already logged).
Day P&L (-0.52%) driven mainly by the earlier mechanical MU stop-out plus
modest income-sleeve drift (EDGX -2.45%, SPHY -0.66%), partly offset by
HPE/MNKD gains. Phase P&L now -4.11% since Day 0 ($100,000 -> $95,885.60).
Tomorrow: monitor for a genuine thesis break vs. continued sector-wide semi
drift (no held core semis names remain after MU's exit); no near-term
satellite catalyst open; revisit the semis/AI-hardware sector-concentration
cap and the two-week-running mechanical-stop pattern at Friday's weekly
review.

### 2026-07-28 — SELL HPE (core)
Shares: 210 | Exit: $44.569333 | Realized P&L: -$567.14 (-5.71%) | Reason: 10% GTC trailing stop filled automatically at 2026-07-28T13:35:18Z (9:35am ET), trail from hwm $49.68, trigger $44.712. Filled before this 11am session ran — continuation of the sector-wide semi/AI-hardware rout flagged pre-market and at 9:30am (HPE down ~6.10% intraday this morning per the 9:30am note); no company-specific negative news identified. Third consecutive week a held core position has stopped out mechanically on sector-wide (not company-specific) drawdown (MU 7/27, MU 7/24-week, now HPE) — flagging again for Friday's review re: the semis/AI-hardware sector-concentration cap. Core has no 2-strike sub-sector cooldown rule (satellite-only). Core sleeve now has zero open positions.

### 2026-07-28 — BUY SGOV (income) — sweep-back after core sell
Shares: 94.53238625 | Entry: $100.66 (notional $9,515.64) | Stop: 5% trailing GTC on the whole-share portion (316 of 316.432863884 total sh), trigger $95.627 (hwm $100.66); 0.432863864 fractional sh left unprotected, immaterial (~$43.56) | Target: n/a | R:R: n/a
Thesis: Income sleeve sweep-back rule (TRADING-STRATEGY.md — sweep freed cash above the 20% floor into SGOV first after a Core/Satellite sell).
Funding reason (income only): HPE's mechanical stop-out (see above) freed cash to $28,632.38 (30.10% of $95,108.18 equity) vs. the 20% floor (~$19,021.64) — swept $9,515.64 into SGOV, leaving cash at $19,116.75 = 20.10% of equity ($95,106.12). Canceled the standing 221-share 5% trailing stop and re-placed one 5% trailing GTC stop on the 316 whole shares of the combined position (same cancel-then-replace pattern as the 7/23, 7/24, and 7/27 sweeps).

## Jul 28 — 3pm Snapshot (Day 14, Tuesday)
**Portfolio:** $95,209.81 | **Cash:** $19,116.75 (20.08%) | **Day P&L:** -$675.79 (-0.70%) | **Phase P&L:** -$4,790.19 (-4.79%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,708.13 (4.94% of equity) | **Income exposure:** $71,384.94 (74.98% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.875 | -1.90% | -$151.88 (-3.13%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $26.3379 | +0.72% | -$329.81 (-1.65%) | 5% trailing ($25.479) |
| SGOV | income | 316.433 | $100.631425 | $100.6598 | +0.01% | +$8.98 (+0.03%) | 5% trailing ($95.627) |
| SPHY | income | 856 | $23.36 | $23.2299 | +0.09% | -$111.37 (-0.56%) | 5% trailing ($22.2015) |

**Notes:** HPE's mechanical 10% trailing-stop loss (-$567.14, -5.71%) and the
SGOV sweep-back both happened at 9:35am today and are logged above; core
sleeve now has zero open positions. No "### Approved Trades (verified)" list
existed anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am, and 3pm
all returned zero qualifying ideas — the deepening global chip-sector rout
kept every core watchlist momentum-gate recheck ambiguous/failing and both
satellite candidates in-window, CVLG and RIGL, tripped the wide/illiquid
opening-spread skip rule), so per STEP 3 the buy side was HOLD all session —
this week (Jul 27 start) stays at core 0/6, satellite 0/4. Risk sweep: no
position at/beyond its hard-cut (MNKD -3.13% vs -15% cut; EDGX/SPHY/SGOV all
within 2% of entry vs their 5% income stop); all 4 open positions confirmed
carrying live GTC trailing stops via `alpaca.sh orders`, none missing. Fresh
WebSearch found no new adverse MNKD news since 11am (FUROSCIX approval and
the associated $50M private placement remain the latest, already-known
items) — today's -3.13% move tracks broader market softness, not a
company-specific event; thesis intact, no action. No satellite catalyst
inside the 1-2 trading-day gap-risk window (MNKD's PDUFA fully resolved
7/24). No stop tightening this window — core has no open positions and MNKD
is at a loss, not a gain; Income sleeve has no gain-based schedule. 2-strike
sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash
20.08%, at/above the 20% floor (already restored by the 11am sweep), no
fresh sweep needed. Risky positions closed today: none this window (HPE's
stop-out and SGOV sweep predate this session, already logged at 11am). Day
P&L (-0.70%) driven almost entirely by HPE's morning stop-out; income sleeve
roughly flat to slightly negative on the day. Phase P&L now -4.79% since Day
0 ($100,000 -> $95,209.81). Third consecutive week a held core position has
stopped out mechanically on sector-wide (not company-specific) drawdown (MU
7/24, MU 7/27, HPE 7/28) — flagging again for Friday's review re: the
semis/AI-hardware sector-concentration cap. Tomorrow: core sleeve is flat
(zero positions) with no fresh candidate given the deepening chip rout;
watch CVLG's Jul 29 AMC earnings print (satellite, not held, repeatedly
skipped on opening-liquidity) and RIGL's Aug 4 earnings date for
re-verification; revisit the semis-concentration pattern and the persistent
opening-liquidity skip pattern at Friday's weekly review.

## Jul 29 — 3pm Snapshot (Day 15, Wednesday)
**Portfolio:** $94,992.12 | **Cash:** $19,116.70 (20.13%) | **Day P&L:** -$217.69 (-0.23%) | **Phase P&L:** -$5,007.88 (-5.01%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,744.58 (5.00% of equity) | **Income exposure:** $71,130.85 (74.88% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.905 | -0.13% | -$115.43 (-2.37%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $25.985 | -1.16% | -$593.07 (-2.97%) | 5% trailing ($25.479) |
| SGOV | income | 316.433 | $100.631425 | $100.675 | +0.01% | +$13.79 (+0.04%) | 5% trailing ($95.646) |
| SPHY | income | 856 | $23.36 | $23.235 | -0.02% | -$107.00 (-0.54%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market, 9:30am,
11am, and 3pm all returned zero qualifying ideas — satellite candidates CVLG
and RIGL both failed the wide/illiquid-spread skip rule again, and core stayed
flat on the Patience Rule despite DELL/DDOG/PANW/FTNT flagged as live-passing
the momentum gate at 9:30am, per the standing sector-concentration caution),
so per STEP 3 the buy side was HOLD all session — this week (Jul 27 start)
stays at core 0/6, satellite 0/4. Risk sweep: MNKD -2.37% well clear of its
-15% hard-cut; EDGX -2.97% and SPHY -0.54% both well inside their 5% income
stops; all 4 open positions confirmed carrying live GTC trailing stops via
`alpaca.sh orders`, none missing. FOMC held rates steady at 3.50-3.75% (9-3
vote, 3 dissents favoring a hike) at 2pm ET — no surprise, no held-position
impact. WebSearch confirms no new MNKD news since 11am beyond the
already-logged Aug 5 Q2 earnings date; FDA approval (7/24) remains the latest
material item. No thesis break on any held name. No stop tightening this
window — no position is in gain past its threshold (MNKD underwater, Income
sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector
tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 20.13%,
at/above the 20% floor, no funding sweep needed. Risky positions closed
today: none. Day P&L (-0.23%) driven by modest EDGX/MNKD drift; core sleeve
remains flat (zero positions) since HPE's 7/28 stop-out, pushing Income
exposure to 74.88% of equity. Phase P&L now -5.01% since Day 0 ($100,000 ->
$94,992.12). Tomorrow: decide explicitly at Friday's (7/31) weekly review
whether to act on DELL/DDOG/PANW/FTNT's live-passing momentum-gate status
given the standing sector-concentration caution (3 consecutive mechanical
core stop-outs in the AI-hardware/semis cluster: MU 7/24, MU 7/27, HPE 7/28);
CVLG (satellite, not held) reports after today's close; RIGL earnings 8/4 now
inside its catalyst window for future consideration.

## Jul 30 — 3pm Snapshot (Day 16, Thursday)
**Portfolio:** $95,429.08 | **Cash:** $19,116.70 (20.03%) | **Day P&L:** +$436.96 (+0.46%) | **Phase P&L:** -$4,570.92 (-4.57%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,938.98 (5.18% of equity) | **Income exposure:** $71,373.40 (74.79% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $4.065 | +5.58% | +$78.98 (+1.63%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $26.26 | +1.20% | -$387.92 (-1.94%) | 5% trailing ($25.479) |
| SGOV | income | 316.433 | $100.631425 | $100.685 | +0.01% | +$16.95 (+0.05%) | 5% trailing ($95.6555) |
| SPHY | income | 856 | $23.36 | $23.275 | +0.37% | -$72.76 (-0.36%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market and
11am both returned zero qualifying ideas; no 3pm buy-side idea list either),
so per STEP 3 the buy side was HOLD all session — this week (Jul 27 start)
stays at core 0/6, satellite 0/4. Risk sweep: MNKD +1.63% well clear of its
-15% hard-cut; all 4 open positions confirmed carrying live GTC trailing
stops via `alpaca.sh orders`, none missing. MNKD's FUROSCIX FDA-approval
catalyst remains fully resolved since 7/24 and WATCHLIST.md shows no firm
near-dated binary event for MNKD, so no 1-2 trading-day gap-risk window is
open on it. No thesis break on any held name. No stop tightening this
window — MNKD's +1.63% gain is far below the satellite +25% tightening
threshold; Income sleeve has no gain-based schedule. No stop moved down.
2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials
0/2. Cash 20.03%, at/above the 20% floor, no funding sweep needed. Risky
positions closed today: none. Day P&L (+0.46%) driven mainly by MNKD's
continued FUROSCIX-approval follow-through (+5.58% intraday) and a modest
EDGX bounce, partly offset by SPHY's slight drift; core sleeve remains flat
(zero positions) since HPE's 7/28 stop-out. Phase P&L now -4.57% since Day 0
($100,000 -> $95,429.08). Tomorrow: Friday's (7/31) weekly review is the
key decision point on whether to act on the standing AI-hardware/semis
sector-concentration caution (3 consecutive mechanical core stop-outs: MU
7/24, MU 7/27, HPE 7/28) now that core sleeve has sat flat for 2 full
sessions; also re-verify CVLG's Jul 29 AMC earnings result and RIGL's 8/4
earnings date at the weekly screen refresh.

## Jul 31 — 3pm Snapshot (Day 17, Friday)
**Portfolio:** $95,298.43 | **Cash:** $19,116.70 (20.06%) | **Day P&L:** -$130.65 (-0.14%) | **Phase P&L:** -$4,701.57 (-4.70%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,726.35 (4.96% of equity) | **Income exposure:** $71,454.84 (74.98% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.89 | -5.35% | -$133.65 (-2.75%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $26.38 | +0.26% | -$298.40 (-1.49%) | 5% trailing ($25.479) |
| SGOV | income | 316.433 | $100.631425 | $100.7133 | +0.02% | +$25.91 (+0.08%) | 5% trailing ($95.684) |
| SPHY | income | 856 | $23.36 | $23.2551 | -0.02% | -$89.79 (-0.45%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas; RIGL and CGEM both
inside their earnings-catalyst windows but not evaluated for entry this
session, no idea chain existed for either), so per STEP 3 the buy side was
HOLD all session — this week (Jul 27 start) stays at core 0/6, satellite
0/4. Risk sweep: no position at/beyond its sleeve hard-cut (MNKD -2.75% vs
-15%; no core positions); all 4 open positions confirmed carrying live GTC
trailing stops via `alpaca.sh orders`, none missing. No satellite catalyst
inside the 1-2 trading-day gap-risk window (MNKD's FUROSCIX approval
remains resolved since 7/24; Q2 earnings now 8/5, still outside the
window). No thesis break on any held name. No stop tightening this
window — MNKD is underwater, not past a gain-based threshold; income
sleeve has no gain-based schedule. No stop moved down. 2-strike sub-sector
tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 20.06%,
at/above the 20% floor, no funding sweep needed. Risky positions closed
today: none. Day P&L (-0.14%) driven by MNKD's continued drift and a
modest EDGX/SPHY offset; core sleeve remains flat (zero positions) since
HPE's 7/28 stop-out. Phase P&L now -4.70% since Day 0 ($100,000 ->
$95,298.43). Tomorrow: Monday carries forward Friday's weekly-review
decision on the AI-hardware/semis sector-concentration caution (DELL/DDOG/
PANW/FTNT live-passing the momentum gate across multiple sessions); watch
RIGL's Aug 4 and CGEM's Aug 6 earnings dates as they move inside/through
the satellite catalyst window, and MNKD's Aug 5 earnings as it approaches
the 1-2 trading-day gap-risk window next week.

## Aug 3 — 3pm Snapshot (Day 18, Monday)
**Portfolio:** $95,286.30 | **Cash:** $19,116.70 (20.06%) | **Day P&L:** -$12.13 (-0.01%) | **Phase P&L:** -$4,713.70 (-4.71%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,623.08 (4.85% of equity) | **Income exposure:** $71,546.94 (75.09% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.805 | -2.69% | -$236.93 (-4.88%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $26.7055 | +1.50% | -$55.58 (-0.28%) | 5% trailing ($25.479) |
| SGOV | income | 316.433 | $100.631425 | $100.4266 | -0.28% | -$64.81 (-0.20%) | 5% trailing ($95.684) |
| SPHY | income | 856 | $23.36 | $23.185 | -0.37% | -$149.80 (-0.75%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas; RIGL and CGEM both
failed the recurring wide/illiquid-spread skip rule again at 9:30am, and
core stayed flat on the standing, still-unresolved AI-hardware/semis
sector-concentration caution around DELL/DDOG/PANW/FTNT), so per STEP 3 the
buy side was HOLD all session — this new trading week (Aug 3 start) stays at
core 0/6, satellite 0/4. Risk sweep: no position at/beyond its sleeve
hard-cut (MNKD -4.88% vs -15%; EDGX/SPHY/SGOV all well inside their 5%
income stops); all 4 open positions confirmed carrying live GTC trailing
stops via `alpaca.sh orders`, none missing. MNKD's Aug 5 Q2 earnings print
is 2 trading days out, inside the 1-2 trading-day proximity window flagged
by STEP 4, but WATCHLIST.md documents no firm near-dated FDA/regulatory
binary date for this name (the FUROSCIX PDUFA the position was originally
sized against at the 5% binary cap resolved 7/24) — this is a standard
earnings print, not a re-triggered binary-gap case; conviction unchanged and
the position is well clear of its hard-cut, so holding through rather than
closing, documented explicitly per STEP 4 rather than silently passing. No
other thesis break on any held name. No stop tightening this window — no
position is in gain past its sleeve's gain-based threshold (all 4 currently
underwater vs. entry; Income sleeve has no gain-based schedule). No stop
moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23),
industrials 0/2. Cash 20.06%, at/above the 20% floor, no funding sweep
needed. Risky positions closed today: none. Day P&L (-0.01%) essentially
flat — MNKD's -2.69% intraday drift roughly offset by EDGX's +1.50% bounce;
core sleeve remains flat (zero positions) since HPE's 7/28 stop-out, now 4
full sessions running. Phase P&L now -4.71% since Day 0 ($100,000 ->
$95,286.30). Tomorrow: RIGL's Aug 4 earnings (after close, 4:30pm ET) moves
inside the satellite catalyst window for live re-evaluation at market-open;
MNKD's Aug 5 earnings is now 1 trading day out; the AI-hardware/semis
re-entry decision and the missed 7/31 weekly refresh both remain open items
needing owner/Friday-review resolution — recommend running `/screen-refresh`
ad hoc given two consecutive missed Friday refreshes (7/17, 7/31).

## Aug 4 — 3pm Snapshot (Day 19, Tuesday)
**Portfolio:** $95,867.15 | **Cash:** $19,116.70 (19.95%) | **Day P&L:** +$584.26 (+0.61%) | **Phase P&L:** -$4,132.85 (-4.13%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,811.40 (5.02% of equity) | **Income exposure:** $71,940.63 (75.04% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.96 | +4.21% | -$48.60 (-1.00%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $27.14 | +1.67% | +$268.56 (+1.34%) | 5% trailing ($25.783) |
| SGOV | income | 316.433 | $100.631425 | $100.43 | +0.01% | -$63.74 (-0.20%) | 5% trailing ($95.684) |
| SPHY | income | 856 | $23.36 | $23.265 | +0.28% | -$81.32 (-0.41%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" section existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, 11am, and 3pm all returned zero qualifying ideas; core stayed flat
on the standing AI-hardware/semis sector-concentration caution plus lost
Gemini per-ticker coverage this morning, and RIGL again failed the
wide/illiquid-spread skip rule ahead of tonight's earnings), so per STEP 3
the buy side was HOLD all session — this week (Aug 3 start) stays at core
0/6, satellite 0/4. Risk sweep: MNKD -1.00% well clear of its -15%
hard-cut; its Q2 earnings tomorrow (8/5, after close) is now 1 trading day
out and was reconfirmed as a standard commercial print, not a re-triggered
binary (the FUROSCIX PDUFA it was originally sized/documented against at
the 5% binary cap resolved 7/24) — conviction unchanged and well clear of
the hard-cut, so holding through rather than closing, documented explicitly
per STEP 4 rather than silently passing. All 4 open positions confirmed
carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No
other thesis break on any held name. No stop tightening this window — no
position is past its sleeve's gain-based threshold (Income sleeve has no
gain-based schedule). No stop moved down. 2-strike sub-sector tracker
unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 19.95%, a hair
below the 20% floor purely from today's portfolio gains (no trade this
window to trigger the SGOV funding-sweep mechanism, which is a pre-trade
check, not a standalone rebalance trigger) — flagged for Friday's weekly
rebalance touch rather than forcing a sale today. Risky positions closed
today: none. Day P&L (+0.61%) driven by MNKD's +4.21% and EDGX's +1.67%
intraday moves; core sleeve remains flat (zero positions) since HPE's
7/28 stop-out, now 5 full sessions running. Phase P&L now -4.13% since Day
0 ($100,000 -> $95,867.15). Tomorrow: MNKD's Q2 earnings after close (8/5,
4:30pm ET) is the key overnight event, already sized/documented at entry,
no forced action expected pre-print; RIGL's tonight (8/4) earnings print
moves it to a fresh post-print re-evaluation at market-open; the missed
7/31 weekly screen refresh and today's cash-floor dip both remain open
items for the next weekly review.

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" list existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas; RIGL and CGEM both
failed the recurring wide/illiquid-spread skip rule again at 9:30am, and
core stayed flat on the standing, still-unresolved AI-hardware/semis
sector-concentration caution around DELL/DDOG/PANW/FTNT), so per STEP 3 the
buy side was HOLD all session — this new trading week (Aug 3 start) stays at
core 0/6, satellite 0/4. Risk sweep: no position at/beyond its sleeve
hard-cut (MNKD -4.88% vs -15%; EDGX/SPHY/SGOV all well inside their 5%
income stops); all 4 open positions confirmed carrying live GTC trailing
stops via `alpaca.sh orders`, none missing. MNKD's Aug 5 Q2 earnings print
is 2 trading days out, inside the 1-2 trading-day proximity window flagged
by STEP 4, but WATCHLIST.md documents no firm near-dated FDA/regulatory
binary date for this name (the FUROSCIX PDUFA the position was originally
sized against at the 5% binary cap resolved 7/24) — this is a standard
earnings print, not a re-triggered binary-gap case; conviction unchanged and
the position is well clear of its hard-cut, so holding through rather than
closing, documented explicitly per STEP 4 rather than silently passing. No
other thesis break on any held name. No stop tightening this window — no
position is in gain past its sleeve's gain-based threshold (all 4 currently
underwater vs. entry; Income sleeve has no gain-based schedule). No stop
moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23),
industrials 0/2. Cash 20.06%, at/above the 20% floor, no funding sweep
needed. Risky positions closed today: none. Day P&L (-0.01%) essentially
flat — MNKD's -2.69% intraday drift roughly offset by EDGX's +1.50% bounce;
core sleeve remains flat (zero positions) since HPE's 7/28 stop-out, now 4
full sessions running. Phase P&L now -4.71% since Day 0 ($100,000 ->
$95,286.30). Tomorrow: RIGL's Aug 4 earnings (after close, 4:30pm ET) moves
inside the satellite catalyst window for live re-evaluation at market-open;
MNKD's Aug 5 earnings is now 1 trading day out; the AI-hardware/semis
re-entry decision and the missed 7/31 weekly refresh both remain open items
needing owner/Friday-review resolution — recommend running `/screen-refresh`
ad hoc given two consecutive missed Friday refreshes (7/17, 7/31).

## Aug 5 — 3pm Snapshot (Day 20, Wednesday)
**Portfolio:** $96,060.91 | **Cash:** $19,116.70 (19.90%) | **Day P&L:** +$193.76 (+0.20%) | **Phase P&L:** -$3,939.09 (-3.94%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,993.65 (5.20% of equity) | **Income exposure:** $71,950.56 (74.90% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $4.11 | +3.79% | +$133.65 (+2.75%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $27.1699 | +0.15% | +$290.87 (+1.46%) | 5% trailing ($25.9255) |
| SGOV | income | 316.433 | $100.631425 | $100.445 | +0.02% | -$58.99 (-0.19%) | 5% trailing ($95.684) |
| SPHY | income | 856 | $23.36 | $23.245 | -0.11% | -$98.44 (-0.49%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" section existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas: a broad wide/illiquid-
spread anomaly hit most core candidates at market-open, and RIGL again
failed the same skip rule despite a positive 8/4 earnings print), so per
STEP 3 the buy side was HOLD all session — this week (Aug 3 start) stays at
core 0/6, satellite 0/4. Risk sweep: no position at/beyond its sleeve
hard-cut (MNKD +2.75% vs -15%; no core positions); all 4 open positions
confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none
missing. MNKD's Q2 2026 earnings print after today's close (4:30pm ET) is a
genuine overnight gap-risk event with no stop protection, but was
reconfirmed for the fourth time today as a standard commercial print, not a
re-triggered binary — the FUROSCIX ReadyFlow PDUFA the position was
originally sized/documented against at the 5% binary cap resolved 7/24, and
WATCHLIST.md documents no new firm near-dated FDA/regulatory binary date.
Conviction unchanged and well clear of the hard-cut, so holding through
rather than closing, documented explicitly per STEP 4 rather than silently
passing. No other thesis break on any held name. No stop tightening this
window — MNKD's +2.75% gain is well below the +25% satellite tightening
threshold; Income sleeve has no gain-based schedule. No stop moved down.
2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials
0/2. Cash 19.90%, still a hair below the 20% floor purely from price drift
(no trade this window to trigger the SGOV funding-sweep mechanism, which is
a pre-trade check, not a standalone rebalance trigger) — flagged again for
Friday's weekly rebalance touch. Risky positions closed today: none. Day
P&L (+0.20%) driven mainly by MNKD's +3.79% move ahead of tonight's print,
partly offset by SPHY's modest pullback; core sleeve remains flat (zero
positions) since HPE's 7/28 stop-out, now 6 full sessions running. Phase
P&L now -3.94% since Day 0 ($100,000 -> $96,060.91). Tomorrow: MNKD's Q2
earnings after tonight's close (4:30pm ET) is the key overnight event,
already sized/documented at entry, no forced action expected pre-print
beyond a live re-check at market-open; CGEM's Q2 print is tomorrow
pre-market (8/6), moving it into a fresh post-print re-evaluation; the
missed 7/31 weekly screen refresh and the still-below-floor cash level both
remain open items for Friday's (8/7) weekly review.

## Aug 6 — 3pm Snapshot (Day 21, Thursday)
**Portfolio:** $95,652.79 | **Cash:** $19,116.70 (19.98%) | **Day P&L:** -$408.12 (-0.42%) | **Phase P&L:** -$4,347.21 (-4.35%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,659.53 (4.87% of equity) | **Income exposure:** $71,876.56 (75.14% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.835 | -6.46% | -$200.48 (-4.13%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $27.06 | -0.22% | +$208.88 (+1.05%) | 5% trailing ($25.9255) |
| SGOV | income | 316.433 | $100.631425 | $100.4567 | +0.01% | -$55.29 (-0.17%) | 5% trailing ($95.684) |
| SPHY | income | 856 | $23.36 | $23.25 | -0.04% | -$94.16 (-0.47%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "### Approved Trades
(verified)" section existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas: a broad wide/illiquid-
spread condition hit the core cybersecurity cluster and satellite CGEM/RIGL
at open, and core stayed flat on the standing semis/memory weakness plus a
near-total Gemini coverage gap), so per STEP 3 the buy side was HOLD all
session — this week (Aug 3 start) stays at core 0/6, satellite 0/4. Risk
sweep: MNKD -4.13% unrealized (-6.46% today) well clear of its -15%
hard-cut; all 4 open positions confirmed carrying live GTC trailing stops
via `alpaca.sh orders`, none missing. MNKD's post-earnings drift widened
steadily through the day (pre-market -3.42% -> 11am -5.85% -> now -6.46%)
on no incremental news beyond yesterday's (8/5) Q2 print, already assessed
as a soft print (revenue beat, EPS/margin miss on launch spend) and not a
thesis break — the FUROSCIX ReadyFlow PDUFA the position was originally
sized/documented against at the 5% binary cap resolved 7/24, and no new
near-dated binary catalyst is documented in WATCHLIST.md. Conviction
unchanged and well clear of the hard-cut, so holding through rather than
closing, documented explicitly per STEP 4 rather than silently passing. No
other thesis break on any held name. No stop tightening this window — no
position is past its sleeve's gain-based threshold (MNKD underwater; Income
sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector
tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 19.98%,
still a hair below the 20% floor purely from price drift (no trade this
window to trigger the SGOV funding-sweep mechanism) — flagged again for
tomorrow's (8/7) weekly rebalance touch. Risky positions closed today:
none. Day P&L (-0.42%) driven almost entirely by MNKD's continued
post-earnings slide, partly offset by EDGX's gain; core sleeve remains flat
(zero positions) since HPE's 7/28 stop-out, now 8 full sessions running.
Phase P&L now -4.35% since Day 0 ($100,000 -> $95,652.79). Tomorrow (8/7)
is the weekly review/screen-refresh — two consecutive Friday refreshes
(7/17, 7/31) were already missed and WATCHLIST.md is now 13+ calendar days
stale; also carries the still-open Gemini-truncation and wide-spread
process items flagged across this week's sessions, plus the still-below-
floor cash level. RIGL's VEPPANU commercial-launch catalyst window and
FSTR's 8/10 earnings window both continue approaching for satellite
consideration once the weekly refresh confirms current watchlist status.

## Aug 7 — 3pm Snapshot (Day 22, Friday)
**Portfolio:** $96,124.12 | **Cash:** $19,116.70 (19.89%) | **Day P&L:** +$415.66 (+0.43%) | **Phase P&L:** -$3,875.88 (-3.88%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,994.74 (5.20% of equity) | **Income exposure:** $72,008.74 (74.91% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $4.1109 | +5.68% | +$134.74 (+2.77%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $27.18 | +0.42% | +$298.40 (+1.49%) | 5% trailing ($25.9255) |
| SGOV | income | 316.433 | $100.631425 | $100.4833 | +0.02% | -$46.87 (-0.15%) | 5% trailing ($95.684) |
| SPHY | income | 856 | $23.36 | $23.29 | +0.26% | -$59.92 (-0.30%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" section existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas; the AI-hardware/semis
core cluster remains parked pending today's overdue weekly screen-refresh
rather than acted on stale fundamentals), so per STEP 3 the buy side was
HOLD all session — this week (Aug 3 start) stays at core 0/6, satellite
0/4. Risk sweep: MNKD +2.77% unrealized, well clear of the -15% hard-cut;
all 4 open positions confirmed carrying live GTC trailing stops via
`alpaca.sh orders`, none missing. MNKD's catalyst remains resolved
(FUROSCIX ReadyFlow PDUFA, 7/24) with no new near-dated binary documented
in WATCHLIST.md — no thesis break, holding through as usual, documented
explicitly per STEP 4 rather than silently passing. No other thesis break
on any held name. No stop tightening this window — MNKD's +2.77% gain is
well below the +25% satellite tighten threshold; Income sleeve has no
gain-based schedule. No stop moved down. 2-strike sub-sector tracker
unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 19.89%, still a
hair below the 20% floor purely from price drift (no trade this window to
trigger the SGOV funding-sweep mechanism) — carries into today's weekly
review for the rebalance touch. Risky positions closed today: none. Day
P&L (+0.43%) driven mainly by MNKD's continued post-earnings recovery
(+5.68% today), plus modest EDGX/SGOV gains; core sleeve remains flat
(zero positions) since HPE's 7/28 stop-out, now 10 full sessions running.
Phase P&L now -3.88% since Day 0 ($100,000 -> $96,124.12). Tomorrow: the
overdue weekly review/screen-refresh (today, 8/7) remains the standing
top-priority item — WATCHLIST.md 14 calendar days stale, two consecutive
Friday refreshes missed — along with the unresolved Gemini-truncation
issue; FSTR's 8/10 earnings and RIGL's ~5-8-trading-day-out VEPPANU launch
are the live satellite catalyst items to watch next week.

### 2026-08-10 — SELL SGOV (income) — cash-floor sweep
Shares: 3 | Exit: $100.49 | Realized P&L: ~$0.00 (0.00%) | Reason: cash-floor restoration (income only) — cash had been below the 20% floor continuously since 8/4 (range 19.89%-19.98%), past TRADING-STRATEGY.md's 3-consecutive-session action threshold (rule added 8/7) for a standalone sweep independent of any pending buy. Flagged as materially overdue by pre-market research; executed at this session's first trading window per that handoff. Pre-sale: cash $19,116.70 = 19.90% of equity ($96,058.21). Post-sale: cash $19,418.17 = 20.24% of equity ($96,013.19).
Mechanics: canceled the standing 316-share 5% trailing stop (b3c364c7...), sold 3 sh market/day, re-placed a fresh 5% trailing GTC stop on 313 of the remaining 313.432863884 sh (trigger $95.4655, hwm $100.49) — same cancel-then-replace pattern as the 7/21 and 7/17 sweeps, avoiding two stacked stop orders on one symbol. The 0.432863884-share fractional remainder is left unstopped, consistent with how the prior 316-share stop already excluded it.

## Aug 10 — 3pm Snapshot (Day 23, Monday)
**Portfolio:** $95,822.40 | **Cash:** $19,418.17 (20.27%) | **Day P&L:** -$301.72 (-0.31%) | **Phase P&L:** -$4,177.60 (-4.18%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $4,768.88 (4.98% of equity) | **Income exposure:** $71,634.04 (74.76% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.925 | -4.50% | -$91.13 (-1.88%) | 15% trailing ($3.59975) |
| EDGX | income | 746 | $26.78 | $27.14 | -0.17% | +$268.56 (+1.34%) | 5% trailing ($25.9255) |
| SGOV | income | 313.433 | $100.631425 | $100.495 | +0.01% | -$42.76 (-0.14%) | 5% trailing ($95.475, 313 sh covered) |
| SPHY | income | 856 | $23.36 | $23.235 | -0.19% | -$107.00 (-0.54%) | 5% trailing ($22.2015) |

**Notes:** No Core/Satellite trades this window — no "Approved Trades
(verified)" section existed anywhere in today's RESEARCH-LOG (pre-market,
9:30am, and 11am all returned zero qualifying ideas: RIGL failed the
illiquid-spread skip rule for a 5th straight session despite being inside
its VEPPANU catalyst window, and the broad wide-spread anomaly continued
hitting DELL/PANW/CRWD/ANET), so per STEP 3 the buy side was HOLD all
session — this week (Aug 10 start) stays at core 0/6, satellite 0/4 (MNKD
carryover holding). Risk sweep: MNKD -1.88% unrealized, well clear of the
-15% hard-cut; all 4 open positions confirmed carrying live GTC trailing
stops via `alpaca.sh orders`, none missing. MNKD drifted -4.50% intraday
(close $4.11 -> $3.925) on no fresh company-specific news; the FUROSCIX
ReadyFlow PDUFA remains resolved (7/24) with no new near-dated binary
documented in WATCHLIST.md, so treated as ordinary noise, not a thesis
break — conviction unchanged, holding through, documented explicitly per
STEP 4 rather than silently passing. No other thesis break on any held
name. No stop tightening this window — no position past its sleeve's
gain-based threshold (MNKD underwater; Income sleeve has no gain-based
schedule). No stop moved down. 2-strike sub-sector tracker unchanged:
biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 20.27%, at/above the 20%
floor following this morning's overdue standalone SGOV sweep (9:30am) — no
further action needed. Risky positions closed today: none. Day P&L
(-0.31%) driven almost entirely by MNKD's intraday slide, partly offset by
EDGX's gain; core sleeve remains flat (zero positions) since HPE's 7/28
stop-out, now 11 full sessions running. Phase P&L now -4.18% since Day 0
($100,000 -> $95,822.40). Tomorrow: SVRA's Q2 2026 earnings call (Tue 8/11,
4:00pm ET) is the key near-term satellite watch item (not itself a binary,
PDUFA remains Nov 22); RIGL stays inside its VEPPANU launch window pending
a liquidity normalization; CPI (Wed 8/12 pre-market) and CSCO earnings
(Wed 8/12 post-market, core watchlist name) are the next macro/company
catalysts on the calendar; the still-open gemini_research.sh
extract_report() bug (3 consecutive sessions reproduced) remains flagged
for owner attention.

### 2026-08-11 — SELL SGOV (income) — cash-floor sweep (pre-trade, funds RIGL buy)
Shares: 46 | Exit: ~$100.51 | Realized P&L: ~$0.00 (0.00%) | Reason: pre-trade cash-floor check ahead of the RIGL buy below — post-trade cash without a sweep would have fallen to ~$14,646 (15.3% of equity), below the 20% floor. Sold 46 sh to bring projected post-buy cash to ~$19,269 (>=20% floor) before placing the RIGL order, per TRADING-STRATEGY.md's buy-funding sweep rule.
Mechanics: canceled the standing 313-share 5% trailing stop (4b50729e...), sold 46 sh market/day, re-placed a fresh 5% trailing GTC stop on 267 of the remaining 267.432863884 sh (trigger $95.475, hwm $100.50) — same cancel-then-replace pattern as prior sweeps. The 0.432863884-share fractional remainder is left unstopped, consistent with prior sweeps.

### 2026-08-11 — BUY RIGL (satellite)
Shares: 114 | Entry: $41.84 | Stop: 15% trailing GTC, trigger $35.20275 (hwm $41.415) | Target: n/a (no firm analyst PT tied to the launch catalyst specifically) | R:R: n/a
Thesis: VEPPANU (vepdegestrant) commercial launch guided for "mid-August 2026" on the 8/4 earnings call — inside the 5-trading-day gap-risk window as of today per pre-market research. Momentum clears the gate (3M rel. +44.4pp vs SPY per the 8/7 screen, above both 50d/200d MA), commercial-stage with real product revenue (Q2 2026 record rev $78.7M beat, EPS $0.88 vs $0.21 consensus, FY26 guidance raised to $285-295M ex-VEPPANU), consensus not Sell. Live spread confirmed tight and stable across 3 checks this session (bid $40.95/ask $41.84-41.90, ~2.2%) — the recurring RIGL illiquid-spread pattern (7/27, 7/29, 8/3, 8/4, 8/10) did not reproduce today.
Catalyst (satellite): VEPPANU commercial launch | Catalyst date: mid-August 2026 (guided, not a single confirmed day) | Max loss if fails: position capped at 5% of equity ($4,790 cap, actual cost $4,769.76 = 4.98% of equity) per the binary-catalyst gap-risk rule — a disappointing launch could plausibly gap the stock -20/-30% overnight (trailing stop does not protect against this) => ~$954-$1,431 (~1.0-1.5% of equity) realistic worst case, not the 15% trail level.
Gate: satellite positions after fill 2/4 (MNKD, RIGL), satellite trades this week 1/4, cost $4,769.76 = 4.98% of equity ($95,806.66) — under the tightened 5% binary-catalyst cap. Satellite exposure after fill ~$9,491.05 (9.91% of equity, well within the 20% sleeve cap). Cash floor pre-checked and funded via the SGOV sweep above; post-trade cash confirmed $19,271.38 (20.13% of equity, $95,747.08) via `alpaca.sh account` — at/above the 20% floor.

## Aug 11 — 3pm Snapshot (Day 24, Tuesday)
**Portfolio:** $95,597.35 | **Cash:** $19,271.38 (20.16%) | **Day P&L:** -$225.05 (-0.23%) | **Phase P&L:** -$4,402.65 (-4.40%)
**Core exposure:** $0.00 (0.00% of equity) | **Satellite exposure:** $9,369.99 (9.80% of equity) | **Income exposure:** $66,956.46 (70.04% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| MNKD | satellite | 1215 | $4.00 | $3.85 | -2.04% | -$182.25 (-3.75%) | 15% trailing ($3.59975) |
| RIGL | satellite | 114 | $41.84 | $41.16 | -1.20% | -$77.52 (-1.63%) | 15% trailing ($35.70374) |
| EDGX | income | 746 | $26.78 | $27.04 | -0.11% | +$193.96 (+0.97%) | 5% trailing ($25.9255) |
| SGOV | income | 267.433 | $100.631917 | $100.505 | +0.00% | -$33.94 (-0.13%) | 5% trailing ($95.4845, 267 sh covered) |
| SPHY | income | 856 | $23.36 | $23.255 | +0.06% | -$89.88 (-0.45%) | 5% trailing ($22.2015) |

**Notes:** One satellite trade this window's predecessor (9:30am BUY RIGL, 4.98% of
equity, 5% binary-catalyst cap) plus its pre-trade SGOV funding sweep already
logged above; no "Approved Trades (verified)" section existed anywhere in
today's RESEARCH-LOG (pre-market, 11am, and this 3pm check all confirm none
beyond the 9:30am live recheck that executed RIGL), so the 3pm buy side was
HOLD — this week (Aug 10 start) stays at core 0/6, satellite 1/4 (RIGL).
Risk sweep: no position at/beyond its sleeve hard-cut (MNKD -3.75% and RIGL
-1.63% vs. -15%; no core positions); all 5 open positions confirmed carrying
live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing.
Neither satellite catalyst is inside the 1-2 trading-day gap-risk window —
MNKD's FUROSCIX PDUFA remains resolved since 7/24, and RIGL's VEPPANU
commercial launch is a guided "mid-August 2026" window rather than a single
dated event, already sized/documented at the 5% binary cap at this morning's
entry — holding through both remains valid, stated explicitly rather than
silently doing nothing. No thesis break on any held name. No stop
tightening this window — MNKD and RIGL are both underwater vs. entry;
Income sleeve has no gain-based schedule. No stop moved down. 2-strike
sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
Cash 20.16%, at/above the 20% floor, no funding sweep needed beyond this
morning's pre-trade RIGL sweep. Risky positions closed today: none. Day
P&L (-0.23%) driven mainly by MNKD's continued intraday drift (-2.04%
today) and RIGL's modest pullback since this morning's entry (-1.20%
today), partly offset by EDGX's gain; core sleeve remains flat (zero
positions) since HPE's 7/28 stop-out, now 14 full sessions running. Phase
P&L now -4.40% since Day 0 ($100,000 -> $95,597.35). Tomorrow: CPI (Wed
8/12 pre-market) is the key macro swing factor per this morning's research;
CSCO earnings (Wed 8/12 post-market, core watchlist name) is the next
company-specific catalyst; SVRA's 8/11 4pm ET earnings call (tonight, after
this session) is a real near-term volatility event to check at tomorrow's
pre-market open; the recurring DELL/PANW/ANET/CRWD/CSCO wide-spread
data-feed anomaly (8/10, 8/11) and the still-open `gemini_research.sh`
`extract_report()` bug (4 consecutive sessions reproduced) both remain open
items for the next weekly review.

### 2026-08-12 — SELL SGOV (income) — cash-floor sweep (pre-trade, funds HPE buy)
Shares: 95 | Exit: ~$100.51 | Realized P&L: ~$0.00 (0.00%) | Reason: pre-trade cash-floor check ahead of the HPE buy below — cash was sitting right at the 20% floor ($19,271.26 vs. $19,167.75 floor on $95,838.76 equity), leaving essentially no headroom to fund a new core buy. Sold 95 sh to raise cash for the buy while keeping post-trade cash >= the 20% floor, per TRADING-STRATEGY.md's buy-funding sweep rule.
Mechanics: canceled the standing 267-share 5% trailing stop (9a90161c...), sold 95 sh market/day, re-placed a fresh 5% trailing GTC stop on 172 of the remaining 172.432863884 sh (trigger $95.486685, hwm $100.5123) — same cancel-then-replace pattern as prior sweeps. The 0.432863884-share fractional remainder is left unstopped, consistent with prior sweeps. SGOV position now $17,410 (35% of original), reduced deliberately to fund only this one entry rather than depleted further — preserving buffer for future sweeps.

### 2026-08-12 — BUY HPE (core)
Shares: 172 | Entry: $55.56 | Stop: 10% trailing GTC, trigger $50.067 (hwm $55.63) | Target: n/a (no firm analyst PT tied to this entry) | R:R: n/a
Thesis: Core watchlist momentum name, 2026-08-07 screen rank 3 of 22 (3M rel. return +71.5% vs SPY, above both 50d/200d MA), FCF positive/improving (Q2 FCF $915M, +$1.8B YoY, FY outlook raised to >=$3.5B on AI systems bookings), Moderate Buy/Buy rating, rev +40%. Pre-market research (8/12) found no new red flags: AI-infrastructure buildout thesis intact, pivoting to higher-margin networking (Juniper integration) over lower-margin AI-server contracts. Previously held core position (stopped out 2026-07-28); core sleeve has been empty for 15 straight sessions since, largely because the top-ranked names (DELL, PANW, ANET, CRWD) have been blocked by a recurring wide-spread data-feed anomaly (flagged 8/10, 8/11 and again today). Today's live market-open spread check found HPE clean (bid $55.49/ask $55.55, ~0.1%) — one of only 6 of the 22 core watchlist names with a normal spread this window (HPE, PYPL, BAX, CNC, GEN, XYZ all clean; DELL/PANW/ANET/CRWD/ZBRA/NUE/URI/VLO/MPC/MET/STT/CRL/GRMN/FFIV all showing anomalous 5-12% spreads consistent with the known bug, not genuine illiquidity). Entered HPE alone rather than all 6 clean names at once — deliberately conservative given this is an unsupervised scheduled run and entering all 6 would have exhausted this week's entire 6-trade/6-position core budget in a single session and required selling down almost the entire SGOV position; PYPL/BAX/CNC/GEN/XYZ left as documented candidates for a future session, not a fail (XYZ specifically carries a post-earnings insider-selling caution flag from pre-market research, worth extra scrutiny before any entry).
Gate: core positions after fill 1/6, core trades this week 1/6, cost $9,556.32 = 9.97% of equity ($95,836.38 pre-trade) — under the 20% per-position cap. Cash floor pre-checked and funded via the SGOV sweep above; post-trade cash confirmed $19,263.39 (20.10% of equity, $95,841.47) via `alpaca.sh account` — at/above the 20% floor.
Note: Core buy-side was HOLD this window — DELL, PANW, ANET, CRWD, and CSCO all showed erratic/unstable quotes (asks jumping $10-20+ within seconds while bids stayed frozen, e.g. PANW ask $378.02 -> $395.50 in under a minute with bid unchanged), consistent with the recurring wide-spread data-feed anomaly flagged in prior sessions (8/10 note) rather than genuine illiquidity. Skipped per the "skip anything wide or zero (halted/illiquid)" rule — not a fundamentals or momentum fail. PYPL (real overnight M&A speculation: Stripe/Advent $53B take-over bid, stock +19% to ~$59) was also skipped — a take-over-bid price spike is not the momentum+FCF signal this screen is built to capture, and is the same category of poor fit documented for AVDL's M&A-completion catalyst in WATCHLIST.md (excluded there as "poor fit, not a fundamentals fail") — applying the same judgment here even though PYPL sits in the core sleeve rather than satellite.

## Aug 12 — 3pm Snapshot (Day 25, Wednesday)
**Portfolio:** $96,213.61 | **Cash:** $19,263.39 (20.02%) | **Day P&L:** +$616.26 (+0.64%) | **Phase P&L:** -$3,786.39 (-3.79%)
**Core exposure:** $9,926.12 (10.32% of equity) | **Satellite exposure:** $9,475.22 (9.85% of equity) | **Income exposure:** $57,548.89 (59.81% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 172 | $55.56 | $57.71 | +6.12% | +$369.80 (+3.87%) | 10% trailing ($51.9885) |
| MNKD | satellite | 1215 | $4.00 | $3.885 | +1.17% | -$139.73 (-2.88%) | 15% trailing ($3.59975) |
| RIGL | satellite | 114 | $41.84 | $41.71 | -0.74% | -$14.82 (-0.31%) | 15% trailing ($36.533) |
| EDGX | income | 746 | $26.78 | $27.18 | +0.47% | +$298.40 (+1.49%) | 5% trailing ($25.9255) |
| SGOV | income | 172.433 | $100.640847 | $100.515 | +0.01% | -$21.70 (-0.13%) | 5% trailing ($95.494, 172 sh covered) |
| SPHY | income | 856 | $23.36 | $23.295 | +0.15% | -$55.64 (-0.28%) | 5% trailing ($22.2015) |

**Notes:** One core trade this window's predecessor (9:30am BUY HPE, 9.97% of
equity at entry, funded via a 95-sh SGOV sweep) already logged above; no
"### Approved Trades (verified)" section existed anywhere in today's
RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm check all confirm none
beyond the 9:30am live recheck that executed HPE), so the 3pm buy side was
HOLD — this week (Aug 10 start) stays at core 1/6 (HPE), satellite 1/4
(RIGL). Risk sweep: no position at/beyond its sleeve hard-cut (HPE +3.87%
vs. -7% cut; MNKD -2.88% and RIGL -0.31% vs. -15% cut); all 6 open
positions confirmed carrying live GTC trailing stops via `alpaca.sh
orders`/`positions`, none missing. RIGL's VEPPANU commercial launch
catalyst remains inside its guided "mid-August" window (pre-market Gemini
put it ~120 hours out) but was properly sized/documented at the 5%
binary-catalyst cap at entry (8/11, 4.98% of equity, max-loss logged
$954-$1,431) with conviction unchanged — holding through remains valid,
stated explicitly per STEP 4 rather than silently passing. MNKD's catalyst
remains resolved (FUROSCIX PDUFA, 7/24), no new near-dated binary. No other
thesis break on any held name. No stop tightening this window — HPE's
+3.87% gain is below the core +15% tighten threshold; MNKD/RIGL both
underwater; Income sleeve has no gain-based schedule. No stop moved down.
2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials
0/2. Cash 20.02%, at/above the 20% floor, no sweep needed beyond this
morning's pre-trade HPE sweep. Risky positions closed today: none. Day
P&L (+0.64%) driven mainly by HPE's continued post-entry gain (+6.12%
today, CPI print absorbed cleanly) plus modest EDGX/SPHY gains, partly
offset by MNKD's drift; core sleeve holds its first position (HPE) after
15 sessions flat since the 7/28 stop-out. Phase P&L now -3.79% since Day 0
($100,000 -> $96,213.61). Tomorrow: the 3-consecutive-session wide-spread
data-feed anomaly (DELL/PANW/ANET/CRWD/CSCO and others, widening in scope)
and the 5-consecutive-session `gemini_research.sh` `extract_report()`
truncation bug both remain open items flagged for the next weekly review;
RIGL's VEPPANU launch stays the key near-term satellite watch item as it
enters its guided mid-August window; CSCO earnings (post-market today) is
the next company-specific catalyst to check at tomorrow's pre-market open.

### 2026-08-13 — SELL SGOV (income) — cash-floor sweep (pre-trade, funds BAX buy)
Shares: 98 | Exit: ~$100.52 | Realized P&L: ~$0.00 (0.00%) | Reason: pre-trade cash-floor check ahead of the BAX buy below — cash was $19,263.16 (19.85% of $97,028.30 equity), already a hair under the 20% floor before any buy; a ~$9,700 core buy funded from that cash alone would have pushed cash materially below the floor. Sold 98 sh to raise cash to $29,114.12 pre-buy, per TRADING-STRATEGY.md's buy-funding sweep rule.
Mechanics: canceled the standing 172-share 5% trailing stop (245358a8...), sold 98 sh market/day, re-placed a fresh 5% trailing GTC stop on 74 of the remaining 74.432863884 sh (trigger $95.49875, hwm $100.525) — same cancel-then-replace pattern as prior sweeps. The 0.432863884-share fractional remainder is left unstopped, consistent with prior sweeps.

### 2026-08-13 — BUY BAX (core)
Shares: 356 | Entry: $27.27 | Stop: 10% trailing GTC, trigger $24.534 (hwm $27.26) | Target: n/a (no firm analyst PT tied to this entry) | R:R: n/a
Thesis: Core watchlist momentum name, 2026-08-07 screen rank 11 of 22 (3M rel. return +49.4% vs SPY, above both 50d/200d MA), FCF positive/improving (Q2 FCF $181M, up sharply from $76M prior quarter), "Constructive, no Sell" analyst consensus, rev +5.0% on medical products/therapies demand. Pre-market research (8/13) found no new red flags on the core watchlist generally; today's live market-open spread check found BAX clean and stable across 4 checks over ~90 seconds (bid/ask ~0.2-0.3% spread, both sides moving together) — one of only 3 of the 21 non-held core watchlist names with a normal, stable spread this window (GEN, BAX, CSCO clean; DELL, MPC, CRL, ANET, PANW, NTAP, ZBRA, VLO, CNC, GRMN, FFIV, STT, NUE, URI, MET all showing the recurring wide/erratic-spread data-feed anomaly — ask running away while bid stayed frozen or lagged, reproduced live on DELL/MPC/CRL specifically during this session's checks). PYPL also clean but excluded again: the Stripe/Advent $53B take-over bid remains unresolved (price still ~$59, unchanged from 8/12), same poor-fit judgment as 8/12 (M&A price spike, not the momentum+FCF signal this screen targets). Entered BAX alone rather than all 3 clean names (BAX/CSCO/GEN) — same deliberately conservative judgment as 8/12's HPE-alone entry: funding 2-3 simultaneous core buys from cash would have required selling down nearly the entire remaining SGOV position (only $17.3k) in one unsupervised session. BAX was the strongest of the three (rank 11 vs. CSCO's 12 and GEN's 19; GEN also carries only a Hold rating vs. BAX's cleaner "Constructive, no Sell"). CSCO and GEN left as documented candidates for a future session, not a fail.
Gate: core positions after fill 2/6 (HPE, BAX), core trades this week 2/6 (HPE 8/12, BAX 8/13), cost $9,708.12 = 10.02% of equity ($96,929.48 pre-trade) — under the 20% per-position cap. Cash floor pre-checked and funded via the SGOV sweep above; post-trade cash confirmed $19,406.00 (20.02% of equity, $96,912.27) via `alpaca.sh account` — at/above the 20% floor.

## 2026-08-14 — RECONSTRUCTED market-open entries (session-persistence gap)

Same recurring pattern as 7/16, 7/17, 7/24: the 9:30am market-open session
executed a real fill + live stop order on Alpaca at 14:49-14:50 UTC (10:49-
10:50am ET) today, but never reached its own TRADE-LOG append or
RESEARCH-LOG "9:30 AM Session Note" — today's RESEARCH-LOG.md contains only
the Pre-market entry when this 11am session started; `alpaca.sh positions`/
`orders`/`orders closed` show the live fill/stop. Reconstructing from that
order history so the audit trail matches reality; thesis is sourced from the
standing WATCHLIST.md/RESEARCH-LOG.md pre-market notes for PANW, not
fabricated.

### 2026-08-14 — SELL SGOV (income) — cash-floor sweep (pre-trade, funds PANW buy)
Shares: 74 | Exit: $100.55 | Realized P&L: ~$0.00 (0.00%) | Reason: pre-trade cash-floor check ahead of the PANW buy below, per TRADING-STRATEGY.md's SGOV-first buy-funding sweep rule. Order filled 2026-08-14T14:49:40Z, cash after: pre-market $19,405.76 + $7,440.70 (sale proceeds) = $26,846.46.
Mechanics: canceled the standing 74-share 5% trailing stop (960a9589...) ahead of the sale — same cancel-then-replace-adjacent pattern as prior sweeps. The 0.432863884-share fractional remainder is left unstopped, consistent with prior sweeps (immaterial, ~$43).

### 2026-08-14 — BUY PANW (core)
Shares: 19 | Entry: $387.45 | Stop: 10% trailing GTC, trigger $348.73182 (hwm $387.4798) | Target: n/a (no firm analyst PT tied to this entry) | R:R: n/a
Thesis: Core watchlist momentum name, 2026-08-07 screen rank 2 of 22 (3M rel. return +77.9% vs SPY, above both 50d/200d MA), FCF positive/improving (Q3 adj FCF +57% YoY), Buy/Moderate Buy analyst consensus, rev +31.1% on platformization + AI product adoption driving bookings. Order filled 2026-08-14T14:50:08Z, immediately after the SGOV sweep above.
Gate (reconstructed): core positions after fill 3/6 (HPE, BAX, PANW), core trades this week 3/6 (HPE 8/12, BAX 8/13, PANW 8/14), cost $7,361.55 = ~7.65% of post-fill equity ($96,198.42) — under the 20% per-position cap. Cash floor pre-checked and funded via the SGOV sweep above; post-trade cash reconciles exactly to the live $19,484.91 (20.25% of $96,198.42 equity) confirmed via `alpaca.sh account` this session — at/above the 20% floor throughout, no breach.

**Post-reconstruction sleeve state:** Core 3 open positions (HPE, BAX, PANW), satellite 2 (MNKD, RIGL — MNKD a carryover holding, not a new trade this week). This week (Aug 10 start): core 3/6, satellite 1/4 (RIGL) new-trade count; combined 4/10 weekly cap. Satellite exposure $9,352.19 (9.72% of equity), well within the 20% sleeve cap.

## Aug 13 — 3pm Snapshot (Day 26, Thursday)
**Portfolio:** $96,457.63 | **Cash:** $19,406.00 (20.12%) | **Day P&L:** +$244.02 (+0.25%) | **Phase P&L:** -$3,542.37 (-3.54%)
**Core exposure:** $20,034.56 (20.77% of equity) | **Satellite exposure:** $9,175.19 (9.51% of equity) | **Income exposure:** $47,841.15 (49.60% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 172 | $55.56 | $60.41 | +2.76% | +$834.20 (+8.73%) | 10% trailing ($57.096) |
| BAX | core | 356 | $27.27 | $27.09 | +0.52% | -$64.08 (-0.66%) | 10% trailing ($24.705) |
| MNKD | satellite | 1215 | $4.00 | $3.715 | -3.51% | -$346.28 (-7.13%) | 15% trailing ($3.59975) |
| RIGL | satellite | 114 | $41.84 | $40.89 | -2.34% | -$108.30 (-2.27%) | 15% trailing ($36.533) |
| EDGX | income | 746 | $26.78 | $27.3255 | +0.61% | +$406.94 (+2.04%) | 5% trailing ($25.9825) |
| SGOV | income | 74.433 | $100.655482 | $100.52 | +0.00% | -$10.08 (-0.13%) | 5% trailing ($95.5035, 74 sh covered) |
| SPHY | income | 856 | $23.36 | $23.3345 | +0.19% | -$21.83 (-0.11%) | 5% trailing ($22.2015) |

**Notes:** One core trade this window's predecessor (9:30am BUY BAX, 10.02% of
equity at entry, funded via a 98-sh SGOV sweep) already logged above; no
"### Approved Trades (verified)" section existed anywhere in today's
RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm check all confirm none
beyond the 9:30am live recheck that executed BAX), so the 3pm buy side was
HOLD — this week (Aug 10 start) stays at core 2/6 (HPE, BAX), satellite 1/4
(RIGL). Risk sweep: no position at/beyond its sleeve hard-cut (BAX -0.66%
and MNKD -7.13% vs. -7%/-15% cuts, RIGL -2.27% vs. -15%, HPE +8.73% in
gain); all 7 open positions confirmed carrying live GTC trailing stops via
`alpaca.sh orders`/`positions`, none missing. MNKD continued its intraday
slide (-3.51% today) on no fresh company-specific news — FUROSCIX PDUFA
remains resolved (7/24) with no new near-dated binary documented in
WATCHLIST.md, so treated as ordinary drift, not a thesis break — conviction
unchanged, holding through, documented explicitly per STEP 4 rather than
silently passing. RIGL's VEPPANU commercial launch stays inside its guided
mid-August window (not yet inside the 1-2 trading-day forced-close window),
already sized/documented at the 5% binary cap at entry — holding through
remains valid, stated explicitly. No other thesis break on any held name.
No stop tightening this window — HPE's +8.73% gain is below the core +15%
tighten threshold (pulled back slightly from 11am's +10.97% on a modest
afternoon giveback); BAX/MNKD/RIGL all underwater; Income sleeve has no
gain-based schedule. No stop moved down. 2-strike sub-sector tracker
unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 20.12%, at/above
the 20% floor, no further sweep needed beyond this morning's pre-trade BAX
sweep. Risky positions closed today: none. Day P&L (+0.25%) driven mainly
by HPE's continued gain and EDGX's steady climb, partly offset by MNKD's
intraday slide and a slight BAX/RIGL pullback; core sleeve now holds 2
positions (HPE, BAX) after 15 sessions flat through 8/11. Phase P&L now
-3.54% since Day 0 ($100,000 -> $96,457.63). Tomorrow: MNKD's continued
drift is the key satellite watch item to confirm as ordinary noise vs. an
emerging thesis concern if it persists; RIGL's VEPPANU launch enters its
final approach to the mid-August guided window; the recurring
DELL/PANW/ANET/CRWD/CSCO wide-spread data-feed anomaly (now 5+ consecutive
sessions) and the `gemini_research.sh` `extract_report()` bug (6 consecutive
sessions, today's manual-poll workaround itself also failed) both remain
open items escalating for the next weekly review; CSCO earnings
(post-market 8/12, already absorbed) and retail sales (8/14 pre-market) are
the next macro items on the calendar.

## Aug 14 — 3pm Snapshot (Day 27, Friday)
**Portfolio:** $96,221.94 | **Cash:** $19,484.91 (20.25%) | **Day P&L:** -$235.69 (-0.24%) | **Phase P&L:** -$3,778.06 (-3.78%)
**Core exposure:** $26,975.31 (28.03% of equity) | **Satellite exposure:** $9,469.59 (9.84% of equity) | **Income exposure:** $40,291.27 (41.87% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| HPE | core | 172 | $55.56 | $58.945 | -1.46% | +$582.22 (+6.09%) | 10% trailing ($57.096) |
| BAX | core | 356 | $27.27 | $26.825 | -0.83% | -$158.42 (-1.63%) | 10% trailing ($24.705) |
| PANW | core | 19 | $387.45 | $383.53 | -3.15% | -$74.48 (-1.01%) | 10% trailing ($348.73182) |
| MNKD | satellite | 1215 | $4.00 | $3.81 | +2.15% | -$230.85 (-4.75%) | 15% trailing ($3.59975) |
| RIGL | satellite | 114 | $41.84 | $42.46 | +4.09% | +$70.68 (+1.48%) | 15% trailing ($36.533) |
| EDGX | income | 746 | $26.78 | $27.21 | -0.33% | +$320.78 (+1.61%) | 5% trailing ($25.9825) |
| SGOV | income | 0.433 | $100.66 | $100.5567 | +0.03% | -$0.04 (-0.10%) | none (fractional dust, ~$43, unstopped since 8/14's sweep) |
| SPHY | income | 856 | $23.36 | $23.305 | -0.11% | -$47.08 (-0.24%) | 5% trailing ($22.2015) |

**Notes:** Today's trade activity was entirely the reconstructed 9:30am
window (SELL 74 SGOV pre-trade sweep, BUY 19 PANW core) already logged
above — no "### Approved Trades (verified)" section existed anywhere in
today's RESEARCH-LOG (pre-market, 9:30am reconstruction, 11am, and this
3pm check all confirm none beyond that), so the 3pm buy side was HOLD —
this week (Aug 10 start) stays at core 3/6 (HPE, BAX, PANW), satellite 1/4
(RIGL). Risk sweep: no position at/beyond its sleeve hard-cut (BAX -1.63%,
PANW -1.01% vs. -7% core cut; MNKD -4.75%, RIGL +1.48% vs. -15% satellite
cut; HPE +6.09% in gain); all 8 open positions confirmed via `alpaca.sh
orders`/`positions` — 7 carry live GTC trailing stops, only the
0.432863884-sh SGOV fractional remainder is unstopped (same immaterial
~$43 dust flagged every prior sweep, not a new gap). No thesis break on
any held name — BAX's interim-CFO resignation and MNKD's stale 7/24
private placement (both surfaced pre-market) remain non-red-flag
housekeeping items; RIGL's VEPPANU commercial launch (announced 8/13) is a
resolved positive catalyst, not inside the 1-2 trading-day gap-risk
window — holding through remains valid, stated explicitly rather than
silently doing nothing; MNKD's FUROSCIX PDUFA remains resolved (7/24), no
near-dated binary. No stop tightening this window — HPE's +6.09% gain is
below the core +15% threshold; no other position cleared its tighten
threshold. No stop moved down. 2-strike sub-sector tracker unchanged:
biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 20.25%, at/above the 20%
floor, no sweep needed. Risky positions closed today: none. Day P&L
(-0.24%) driven by a broad afternoon pullback in HPE/EDGX/SPHY/BAX/PANW
partly offset by MNKD/RIGL's intraday gains; core sleeve holds 3 positions
(HPE, BAX, PANW) after 15 sessions flat through 8/11. Phase P&L now -3.78%
since Day 0 ($100,000 -> $96,221.94). This is the last session of the
current trading week (Aug 10 start) — Friday's weekly review/screen-refresh
is the next scheduled workflow. Open items for that review: the market-open
session-persistence gap (now 4 instances: 7/16, 7/17, 7/24, 8/14), the
`gemini_research.sh` `extract_report()` bug (7 consecutive sessions,
8/9-8/14, still unpatched), and the DELL/PANW/ANET/CRWD/CSCO wide/erratic-
spread data-feed anomaly (5+ consecutive sessions, 8/10-8/14, widening in
scope).

### 2026-08-17 — SELL HPE (core)
Shares: 172 | Exit: $57.11 | Realized P&L: +$266.60 (+2.79%) | Reason: 10% GTC trailing stop filled automatically at 2026-08-17T13:40:15Z (9:40am ET), trail from hwm $63.44 (+14.2% above entry), trigger $57.096. Filled 3 minutes after the 9:30am market-open session's commit (09:37:26 ET) correctly reported "no trades" — the stop hit at 9:40am ET, after that session ended and before this 11am session started; this is a standing GTC order firing mechanically between sessions, not a session-persistence gap. A winning exit, not a loss cut: HPE ran from entry $55.56 to a $63.44 high before the 10% trail gave back most of the gain. No company-specific negative news found this session (BAX/PANW/MNKD/RIGL thesis checks below also found nothing new). Core sleeve now holds BAX and PANW (2 open positions); this week (Aug 17 start) stays core 0/6 new trades (exits don't count against the weekly buy cap).

### 2026-08-17 — BUY SGOV (income) — sweep-back after core sell
Shares: 100.098339465 | Entry: $100.57 (notional $10,066.90) | Stop: 5% trailing GTC on the whole-share portion (100 of 100.531203349 total sh), trigger $95.53675 (hwm $100.565); 0.531203349 fractional sh left unprotected, immaterial (~$53.42) | Target: n/a | R:R: n/a
Thesis: Income sleeve sweep-back rule (TRADING-STRATEGY.md — sweep freed cash above the 20% floor into SGOV first after a Core/Satellite sell).
Funding reason (income only): HPE's mechanical stop-out (see above) freed cash to $29,307.64 (30.63% of $95,703.70 equity) vs. the 20% floor (~$19,140.74) — swept $10,066.90 into SGOV, leaving cash at $19,240.75 = 20.11% of equity ($95,686.38). This also resolves the SGOV-depletion funding blocker flagged pre-market/9:30am today (SGOV had been swept down to ~$43 across 7 sweeps in 5 weeks with no offsetting rebalance) — SGOV is back to ~$10,110, restoring real buy-funding capacity for future Core/Satellite entries.

## Aug 17 — 3pm Snapshot (Day 28, Monday)
**Portfolio:** $95,561.89 | **Cash:** $19,240.75 (20.13%) | **Day P&L:** -$660.05 (-0.69%) | **Phase P&L:** -$4,438.11 (-4.44%)
**Core exposure:** $16,405.87 (17.17% of equity) | **Satellite exposure:** $9,579.69 (10.02% of equity) | **Income exposure:** $50,337.36 (52.68% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| BAX | core | 356 | $27.27 | $25.985 | -2.79% | -$457.46 (-4.71%) | 10% trailing ($24.705) |
| PANW | core | 19 | $387.45 | $376.59 | -2.00% | -$206.34 (-2.80%) | 10% trailing ($348.73182) |
| MNKD | satellite | 1215 | $4.00 | $3.91 | +1.56% | -$109.35 (-2.25%) | 15% trailing ($3.59975) |
| RIGL | satellite | 114 | $41.84 | $42.36 | -0.52% | +$59.28 (+1.24%) | 15% trailing ($36.771) |
| EDGX | income | 746 | $26.78 | $27.20 | -0.22% | +$313.32 (+1.57%) | 5% trailing ($25.9825) |
| SGOV | income | 100.531 | $100.570388 | $100.565 | +0.01% | -$0.54 (-0.01%) | 5% trailing ($95.5415, 100 sh covered) |
| SPHY | income | 856 | $23.36 | $23.29 | -0.09% | -$59.92 (-0.30%) | 5% trailing ($22.2015) |

**Notes:** HPE's mechanical 10% trailing stop fired at 9:40am ET (winning exit,
+2.79%, +$266.60) and the SGOV sweep-back already logged above; no
"### Approved Trades (verified)" section existed anywhere in today's
RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm check all confirm
none, still blocked by the stale 8/07 watchlist), so the 3pm buy side was
HOLD — this week (Aug 17 start) stays at core 0/6, satellite 0/4 new
trades (HPE's exit doesn't count against the cap). Risk sweep: no
position at/beyond its sleeve hard-cut (BAX -4.71%, PANW -2.80% vs. -7%
core cut; MNKD -2.25% vs. -15% satellite cut; RIGL +1.24% in gain); all 7
stop-protected positions confirmed carrying live GTC trailing stops via
`alpaca.sh orders`, none missing (SGOV's 0.531-sh fractional remainder
stays unstopped, same immaterial ~$53 dust flagged every prior sweep).
Thesis check: WebSearch found no negative news on BAX (continuing drift,
-3.70% at 11am to -4.71% now, read as broad market/sector pressure, not
company-specific — routine tender-offer item only) or PANW (TD Cowen
raised PT to $400/Buy today, Wells Fargo flagged AI/identity momentum;
Sept 1 earnings date confirmed genuine vs. this morning's flagged Gemini
fabrication) — both held, no cuts. No satellite catalyst inside the
1-2-trading-day gap-risk window (MNKD's PDUFA resolved 7/24; RIGL's
VEPPANU launch resolved 8/13) — no gap-risk action needed. No stop
tightening this window (RIGL's +1.24% well below the +25% satellite
threshold; no core position in double-digit gain). No stop moved down.
2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23),
industrials 0/2. Cash 20.13%, at/above the 20% floor, no further sweep
needed beyond this morning's HPE sweep-back. Risky positions closed
today: none (beyond the mechanical HPE stop already logged). Day P&L
(-0.69%) driven by broad afternoon softness across BAX/PANW/MNKD/SPHY,
partly offset by RIGL/EDGX gains. Phase P&L now -4.44% since Day 0
($100,000 -> $95,561.89). Tomorrow: continue watching BAX's drift for a
genuine thesis break vs. ordinary noise; PANW's Sept 1 earnings date is
the next real company-specific catalyst; the `gemini_research.sh`
`extract_report()` truncation/fabrication bug (10+ consecutive sessions)
and the still-stale WATCHLIST.md ("Week of 2026-08-07") both remain the
top open items for this week's weekly review.

## Aug 18 — 3pm Snapshot (Day 29, Tuesday)
**Portfolio:** $95,610.66 | **Cash:** $19,240.49 (20.12%) | **Day P&L:** +$48.77 (+0.05%) | **Phase P&L:** -$4,389.34 (-4.39%)
**Core exposure:** $16,373.56 (17.13% of equity) | **Satellite exposure:** $9,876.78 (10.33% of equity) | **Income exposure:** $50,115.55 (52.41% of equity)

| Ticker | Sleeve | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|---|
| BAX | core | 356 | $27.27 | $26.025 | +0.44% | -$443.22 (-4.57%) | 10% trailing ($24.705) |
| PANW | core | 19 | $387.45 | $374.14 | -0.43% | -$252.89 (-3.44%) | 10% trailing ($348.73182) |
| MNKD | satellite | 1215 | $4.00 | $4.075 | +4.49% | +$91.13 (+1.88%) | 15% trailing ($3.59975) |
| RIGL | satellite | 114 | $41.84 | $43.2075 | +1.78% | +$155.90 (+3.27%) | 15% trailing ($37.1535) |
| EDGX | income | 746 | $26.78 | $26.93 | -0.81% | +$111.90 (+0.56%) | 5% trailing ($25.9825) |
| SGOV | income | 100.531 | $100.570388 | $100.575 | +0.01% | +$0.46 (+0.00%) | 5% trailing ($95.551, 100 sh covered) |
| SPHY | income | 856 | $23.36 | $23.265 | -0.11% | -$81.32 (-0.41%) | 5% trailing ($22.2015) |

**Notes:** No trade activity today — no "### Approved Trades (verified)"
section existed anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am,
and this 3pm check all confirm none, still blocked by the stale 8/07
watchlist), so buy side stayed HOLD all four checks; this week (Aug 17
start) stays at core 0/6, satellite 0/4 new trades. Risk sweep: no position
at/beyond its sleeve hard-cut (BAX -4.57%, PANW -3.44% vs. -7% core cut;
MNKD +1.88%, RIGL +3.27%, both in gain, vs. -15% satellite cut); all 7
stop-protected positions confirmed carrying live GTC trailing stops via
`alpaca.sh orders`, none missing (SGOV's 0.531203349-sh fractional
remainder stays unstopped, same immaterial ~$53 dust flagged every prior
sweep). Fresh thesis check this window (WebSearch on all four core/
satellite names) found no negative news: BAX's continuing drift remains
broad market/sector pressure, not company-specific (no new items beyond
the known interim-CFO transition); PANW strengthened (Citizens reiterated
Outperform $415 PT, Wells Fargo raised PT to $475 from $420); MNKD
unchanged (FUROSCIX PDUFA resolved 7/24, no new binary); RIGL strengthened
(Citi raised PT to $83 from $81, VEPPANU launch resolved positively
8/13-14). No thesis break, nothing cut. No satellite catalyst inside the
1-2 trading-day gap-risk window for either MNKD or RIGL. No stop
tightening this window — MNKD/RIGL both well below the +25% satellite
threshold, no core position in gain. No stop moved down. 2-strike
sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
Cash 20.12%, at/above the 20% floor, no sweep needed. Risky positions
closed today: none. Day P&L (+0.05%) driven by MNKD's intraday gain and a
modest BAX bounce, mostly offset by EDGX/PANW softness. Phase P&L now
-4.39% since Day 0 ($100,000 -> $95,610.66). Persistence note: the
multi-session `main`-sync gap flagged in this morning's 9:30am note is
resolved — `origin/main` merged through PR #125 (11am session) and is
fully caught up with this branch as of this snapshot. Tomorrow: continue
watching BAX's drift for a genuine thesis break vs. ordinary noise; the
`gemini_research.sh` `extract_report()` bug and the still-stale
WATCHLIST.md ("Week of 2026-08-07," now 2 consecutive missed Friday
refreshes) remain the top open items for this week's weekly review.
