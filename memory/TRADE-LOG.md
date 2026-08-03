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
