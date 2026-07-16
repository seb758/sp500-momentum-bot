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

### 2026-07-16 — SELL SGOV (income, buy-funding sweep)
Shares: 172 | Exit: ~$100.54 | Stop: n/a (partial close) | Target: n/a | R:R: n/a
Thesis: Fund market-open Core/Satellite buys — cash was at the 20.1% floor
with no room to absorb new positions. SGOV is the designated buy-funding
source (never SPHY/EDGX) per TRADING-STRATEGY.md's Income sleeve rule.
Funding reason (income only): buy-funding sweep for AMD/HPE/KLAC/OCUL below.

### 2026-07-16 — BUY AMD (core)
Shares: 19 | Entry: $512.301053 | Stop: 10% trailing GTC ($460.73, re-tightens
per +15%/+20% schedule) | Target: $589.15 (+15%) | R:R: 1.5:1
Thesis: Momentum rank #3 on Current watchlist, 3M rel. return vs SPY +124.7%
(screen)/+98.8% (re-verified live). Still above 50-day MA despite today's
broad AI-hardware pullback that broke MU/WDC/CSCO below theirs. FCF
positive/improving. Rating Outperform (Daiwa cut from Buy on valuation after
~150% surge, PT raised $250->$500). Spread ~0.6% at entry — tight vs. most of
today's watchlist (DELL, PANW, CRWD, DDOG, VLO, STX, FTNT, DVA, AMAT, NTAP,
GLW, CNC, TXN, LRCX, MPC, CAT, GEV all skipped on wide/anomalous spreads,
3.5-13%).

### 2026-07-16 — BUY HPE (core)
Shares: 210 | Entry: $47.27 | Stop: 10% trailing GTC ($42.54, re-tightens per
+15%/+20% schedule) | Target: $54.36 (+15%) | R:R: 1.5:1
Thesis: Momentum rank #8, 3M rel. return +84.5% (screen)/+85.0% (re-verified
live), above 50-day MA. FCF positive/improving. Zacks upgraded Hold->Strong
Buy; GS PT $32->$79, RJ PT $29->$74 on AI networking. Spread ~0.2% at entry.

### 2026-07-16 — BUY KLAC (core)
Shares: 45 | Entry: $220.389778 | Stop: 10% trailing GTC ($198.35, re-tightens
per +15%/+20% schedule) | Target: $253.45 (+15%) | R:R: 1.5:1
Thesis: Momentum rank #20, 3M rel. return +23.0% (screen)/+16.3%
(re-verified live), above 50-day MA. FCF positive. Rating Moderate Buy —
upgrades on WFE supply constraints, expanding service revenue. Spread ~0.2%
at entry. Caveat: KLAC had no overnight news color captured this morning
(recurring Gemini Deep Research truncation, Sections 1-6 missing) — entered
on objectively re-verified momentum/spread/rating data only, per "do not
assume clear" guidance; no negative signal found, just an information gap.

### 2026-07-16 — BUY OCUL (satellite)
Shares: 753 | Entry: $9.89 | Stop: 15% trailing GTC ($8.41, re-tightens per
+25%/+40% schedule) | Target: $12.36 (+25%) | R:R: 1.67:1
Thesis: Biotech, Strong Buy rating (>150% upside PT), $2.23B cap, $666.7M
cash runway into 2028.
Catalyst: AXPAXLI (OTX-TKI) Phase 3 SOL-1 wet-AMD readout at ASRS
44th Annual Meeting, reported TODAY 8:15-8:45am ET: statistically
significant superiority vs. aflibercept (44.1% vs 34.9% anatomic control at
wk 52), single injection held vision ~1yr in two-thirds of patients, clean
safety profile. NDA planned Q4 2026 via 505(b)(2). Pre-market dip (~-3.14%)
attributed to a delayed reaction to the Q1 EPS miss, not the clinical data —
entered post-readout with the binary event already resolved positively, not
ahead of it. | Catalyst date: 2026-07-16 (today, resolved) | Max loss if
fails: catalyst already read out positive; residual risk is the Q3 pre-NDA
FDA meeting / Q4 NDA filing — multi-stage, not a single binary date, so
sized at the standard 7.5% satellite cap ($7,499.64 planned; $7,447.17
filled) rather than the 5% binary cap. Re-cap to 5% if a firm PDUFA date is
later set.

### 2026-07-16 — SELL SGOV (income, buy-funding sweep, correction)
Shares: 197 | Exit: ~$100.54 | Stop: n/a (partial close) | Target: n/a | R:R: n/a
Thesis: First SGOV sale (172 sh) under-funded the four buys above relative
to the 20% account-wide cash floor — cash fell to $377.95 (0.4% of equity)
after all four fills, a real floor breach, not the "momentary dip while
funding a same-moment buy" the rule tolerates. Sold an additional 197 SGOV
shares immediately to restore cash to $20,184.33 (20.2% of equity). Net
effect: SGOV fell from 397 to 28 shares (from ~50% to ~11% of the Income
sleeve) — well off its target split as the designated sole funding source
for today's Core/Satellite deployment. Flagging for Friday's weekly
rebalance (Part C) to restore SGOV/SPHY/EDGX to the 50/25/25 split; owner
should also sanity-check the sizing math on any future multi-position
same-session entry funded from cash-at-the-floor before firing all orders.
Funding reason (income only): buy-funding sweep correction (cash-floor
restoration).

### Jul 16 — Market-Open Snapshot (Day 5, Thursday)
**Portfolio:** $99,945.81 | **Cash:** $20,184.33 (20.2%) | **Core exposure:**
$29,617.99 (29.6% of equity) | **Satellite exposure:** $7,405.76 (7.4% of
equity) | **Income exposure:** $42,738.14 (42.8% of equity: SGOV $2,815.26 /
SPHY $19,987.60 / EDGX $19,983.40)

| Ticker | Sleeve | Shares | Entry | Stop |
|---|---|---|---|---|
| AMD | core | 19 | $512.301053 | 10% trailing ($460.73) |
| HPE | core | 210 | $47.27 | 10% trailing ($42.54) |
| KLAC | core | 45 | $220.389778 | 10% trailing ($198.35) |
| OCUL | satellite | 753 | $9.89 | 15% trailing ($8.41) |
| SGOV | income | 28 | $100.54 | 5% trailing ($95.52) |
| SPHY | income | 856 | $23.36 | 5% trailing ($22.19) |
| EDGX | income | 746 | $26.78 | 5% trailing ($25.47) |

**Notes:** First real Core/Satellite trades since the bot launched
(2026-07-11) — 4 trading days of zero Core/Satellite activity (valid per
the Patience Rule) ended today on a signal-rich open: a broad market-wide
bid/ask anomaly made most of the 24-name core watchlist untradeable on
spread (DELL, PANW, CRWD, DDOG, VLO, STX, MRVL, FTNT, DVA, AMAT, NTAP, GLW,
CNC, TXN, LRCX, MPC, CAT, GEV all 3.5-13% wide, skipped), while AMD/HPE/KLAC
kept tight sub-1% spreads and objectively re-verified momentum (still above
50-day MA, unlike MU/WDC/CSCO which broke below theirs today — confirming
the "hardware complex" thesis-risk flag from this morning's pre-market
note). Satellite: OCUL's binary Phase 3 readout resolved positive this
morning: entered post-data, not pre-resolution, sized at the standard 7.5%
cap since no further single-date binary event is imminent. This week: core
3/6, satellite 1/4 used.
**Process note (self-correction):** initial funding sweep (172 SGOV shares)
was sized against the pre-buy cash shortfall only, not against maintaining
the 20% floor *after* all four buys landed — cash briefly hit $377.95
(0.4%) once all fills confirmed. Caught and corrected immediately with a
second 197-share SGOV sale; final state is floor-compliant (20.2% cash).
No trade was placed while out of compliance since all four buys had already
filled before the check; the fix was a same-session Income-sleeve sale, not
a Core/Satellite trade reversal.
