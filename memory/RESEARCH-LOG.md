# Research Log

One dated entry per day, appended by the pre-market workflow (optional
midday addendum). Every trade idea must trace back to an entry here before
it can be executed.

Format each entry:

```
## YYYY-MM-DD — Pre-market Research

### Account
- Equity: $X | Cash: $X | Buying power: $X | Daytrade count: N
- Core exposure: X% | Satellite exposure: X%

### Market Context
- S&P 500 futures / VIX / macro releases today:
- Sector momentum:

### Core Trade Ideas (from current WATCHLIST.md core list)
1. TICKER — FCF trend, momentum confirmation, entry $X, stop $X, target $X, R:R X:1

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. TICKER — catalyst (with source/link), catalyst date, entry $X, stop $X,
   target $X, R:R X:1, max loss if catalyst fails as % of equity

### Risk Factors
- ...

### Decision
TRADE or HOLD (default HOLD if no qualifying edge)
```

## 2026-07-12 — Pre-market Research

### Account
- Equity: $100,000 | Cash: $100,000 | Buying power: $400,000 | Daytrade count: 0 (no trades executed to date; field not present in account payload)
- Core exposure: 0% | Satellite exposure: 0% (flat, Day-0 baseline unchanged — no positions, no open orders)

### Market Context
- **Data-quality gap (per guard in workflow instructions):** Gemini Deep
  Research output did not include section 1 (S&P 500 futures direction /
  VIX level) or section 2 (top macro catalysts / econ releases today) — the
  captured output starts mid-document at sector-level equity analysis.
  Not fabricating futures/VIX figures or an econ-release list this run;
  flagging the gap instead.
- Sector momentum (from what the output did cover): AI-hardware complex
  (semis, memory, cyber, power/industrials) remains the dominant momentum
  driver. Notable overnight/this-week items on watchlist names:
  - **MU**: ~22% drawdown from June highs (profit-taking / Samsung Q2
    read-through) but BofA reiterates Buy, UBS PT raised to $1,500; SK
    Hynix's upcoming Nasdaq listing (SKHYV) is a sector-rotation risk to
    watch, not a thesis break.
  - **MRVL**: +33% repricing on Jensen Huang's public $1T market-cap
    comment; new CFO (ex-Adobe) — outlook reaffirmed, sentiment stable.
  - **AMD**: GS raised PT to $640 on server CPU share gains.
  - **AMAT**: options market pricing a large binary move into earnings
    (sawtooth IV pattern) — no thesis change, just event-vol note.
  - **STX/WDC**: overnight strength (+3.9% / +3.4% futures) on hyperscale
    storage demand.
  - **Cyber dispersion**: FTNT strong (AI-datacenter security moat,
    Google Cloud Partner of the Year) but priced at ~49x fwd P/E; CRWD -6%
    (valuation fatigue post-split, fundamentals intact), PANW -5%, DDOG
    -4.8% pre-market (Bernstein downgrade to Market Perform on AI-growth
    hesitation ahead of earnings). No thesis breaks — momentum/FCF checks
    unchanged, but DDOG's rating just got worse; watch at market-open.
  - **CAT/GEV**: industrials-as-AI-power-derivative thesis reinforced
    (CAT power-gen sales guided to >3x by 2030; GEV earnings growth
    consensus +71.9%). CAT flagged $2.2B tariff headwind + notable short
    disclosure (Michael Burry) — not new info to the watchlist notes.
  - **MPC/VLO**: US-Iran ceasefire breakdown / localized strikes elevated
    crack-spread volatility; Brent retreated from $78.19 peak. Geopolitical
    risk factor, not yet thesis-breaking for either name.

### Core Trade Ideas (from current WATCHLIST.md core list)
No core positions currently open. Nothing in the research surfaced a thesis
break on any of the 24 current core names — all still qualify per last
week's screen. DDOG's fresh sell-side downgrade (Bernstein) and CRWD/PANW's
valuation-driven pullbacks are worth a second look at market-open with live
bars before sizing, but none disqualify the names outright. Deferring
specific entry/stop/target levels to the market-open workflow, which pulls
live Alpaca quotes — not fabricating price levels from this research pass.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **OCUL** — confirmed binary catalyst: Phase 3 SOL-1 (OTX-TKI, wet AMD)
   data presentation Thu Jul 16, 2026, 8:15am ET at ASRS — **within the
   5-trading-day window as of today**. This is a firmer, more specific
   binary event than last week's "conference data Jul 14-22" note (a named
   trial-data readout, not just conference attendance). Per
   TRADING-STRATEGY.md gap-risk rule, this now meets "known binary event
   date (trial readout)" — **if entered, cap at 5% of equity, not the
   standard 7.5%**, and size only with full awareness that a miss could gap
   the stock overnight/pre-market before any stop can act. No entry taken
   pre-market; flagging for market-open evaluation.
2. **MNKD** — negative development this week (not confirmed overnight):
   partner United Therapeutics unveiled "Tresmi," a competing soft-mist
   Tyvaso formulation aimed at cannibalizing the DPI product MNKD earns
   royalties on; shares reportedly fell ~38% in a session on the news.
   This directly threatens the royalty-growth leg of MNKD's documented
   thesis (independent of its own FUROSCIX PDUFA catalyst, still dated Jul
   26 — outside the 5-day window, unaffected by this news). Recommend
   treating MNKD as weakened/high-caution until the royalty-erosion
   magnitude is better understood — do not initiate a new position this
   week on the strength of the FUROSCIX catalyst alone.
3. **RIGL, ORN, FSTR, TWIN** — no catalyst within the 5-trading-day window
   (RIGL ~Aug 4 earnings est., ORN Jul 28 earnings, FSTR ~Aug 10 earnings
   est., TWIN mid-Aug earnings est.). No overnight developments reported.
   No action indicated pre-market.

### Risk Factors
- Data-quality gap: futures/VIX and macro-calendar sections missing from
  today's Gemini output (see Market Context above) — market-open workflow
  should pull a fresh read if a macro-driven decision is needed.
- OCUL binary readout Jul 16 is the single largest near-term satellite risk
  on the watchlist — no position held yet, so no immediate action, but
  flag for the team before any OCUL entry this week.
- MNKD thesis materially weakened by competitive news; avoid new entries
  pending clarity.
- Geopolitical: Iran ceasefire breakdown elevates crack-spread volatility
  for MPC/VLO — not yet actionable, monitor.
- Cyber sub-sector (CRWD/PANW/DDOG) showing valuation-driven weakness and
  one fresh downgrade (DDOG) — not a thesis break, but a caution flag on
  new entries there this week.

### Decision
HOLD — no open positions to protect, no core thesis breaks, and no
satellite entry criteria fully confirmed pre-market (OCUL's binary catalyst
is real but sizing/entry needs live market-open data plus the tightened 5%
cap; MNKD is currently too weakened to enter). Patience > activity.
