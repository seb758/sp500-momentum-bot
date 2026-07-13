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

## 2026-07-13 — Pre-market Research

### Account
- Equity: $100,000 | Cash: $100,000 | Buying power: $400,000 | Daytrade count: 0 (field not present in account payload; no trades executed to date)
- Core exposure: 0% | Satellite exposure: 0% (flat, no open positions or orders)

### Market Context
- **Major geopolitical escalation over the weekend:** direct US-Iran missile
  exchange plus Iranian threats to close the Strait of Hormuz triggered a
  risk-off flight to safety and a sharp crude oil rally. US 2Y yield spiked
  to a 15-month high (4.23%), 10Y to 4.58% — fixed income is now pricing a
  Fed hike by October 2026 despite a weak June payrolls print (57K vs 110K
  consensus), a genuinely hawkish repricing that pressures equity duration
  and tech multiples.
- **Vol complex bifurcated:** VIX cash 15.02, VIX1D anomalously low at 9.90
  (calm expected for today specifically), but front-month VIX futures
  +3.5% to 17.55, VIX3M 18.57, and SKEW at an extreme 144.27 — institutions
  are aggressively bidding tail-risk puts even as near-term realized vol
  looks contained.
- **No top-tier US macro data today** (Mon 7/13). Tue 7/14: June CPI (the
  key print, given the hawkish yield repricing) + new Fed Chair Kevin
  Warsh's first House testimony; Wed 7/15: Senate testimony. Q2 earnings
  season also kicks off Tue, led by financials.
- **Structural risk flags:** systematic/CTA deleveraging concentrated in
  semis/memory; leveraged-long vs leveraged-short ETF volume ratio at
  extremes last seen in the 2021 blow-off top; a "peak AI capex" narrative
  shift (SK Hynix delaying HBM4 ramp for higher-margin DRAM, Meta reselling
  excess AI compute) triggered a violent WFE selloff (LRCX -10.2%, KLAC
  -12%, AMAT -7% in one session); a ~$109.8M cluster of IT-sector insider
  selling (ANET, CRWD, WDAY) in the first week of July.
- Watchlist-specific overnight items:
  - **DELL**: no thesis change — still the standout AI-hardware story
    ($43.8B rev, +88% YoY, $51.3B AI backlog, new DoD/Pentagon contracts).
  - **CSCO/HPE**: no thesis change — Cisco raised guidance well above
    consensus and is reallocating capital into AI/silicon; HPE PT hikes
    continue.
  - **STX/WDC**: no thesis change — both beat on storage-demand strength;
    STX has pulled back from June highs (~$1,100 to ~$868) and reports Q4
    earnings around Jul 16 — a name to watch for a post-earnings gap next
    week, not actionable pre-market today.
  - **LRCX/KLAC/AMAT**: no confirmed thesis break, but flagging a real
    momentum risk — a "peak AI capex" narrative drove single-day drops of
    10-12% this week (SK Hynix HBM4 delay, Meta compute resale fears).
    Management (Lam) argues foundry/logic now outweighs memory in the mix
    (54%), a structural defense, but Erste Group just initiated AMAT at
    Hold. Verify these three still clear the momentum gate (price vs 50/200
    day MA, 3M/6M relative return) with live bars at market-open before any
    new sizing — a drop this size could have pushed them below the moving
    averages.
  - **MU/AMD**: continued high-beta whipsaw (MU -10.6% one session on
    memory-sector rotation; AMD swinging +8.5%/-6.7% intraday) — no new
    idiosyncratic catalyst, still correlation-driven.
  - **MRVL/TXN/GLW/NTAP**: no idiosyncratic overnight news — trading as
    high-beta index proxies.
  - **PANW**: CEO warned autonomous AI can now execute full cyberattacks in
    minutes, undercutting the bear case, but shares still fell ~6% to $336
    on an Evercore PT cut to $320 (Needham countered, raising to $425) —
    mixed, no thesis break.
  - **CRWD**: fundamentals intact (ARR $5.51B, +24%) but trading ~137x
    forward earnings, and CEO Kurtz sold ~$9.8M in a cluster of tech
    insider selling — a caution flag, not a thesis break.
  - **CAT**: Michael Burry disclosed a new short, -6.9%, on top of the
    tariff headwind already on the watchlist notes; Q1 fundamentals (EPS
    beat, dividend raise) remain solid — no thesis break, but a second
    consecutive session of headline pressure.
  - **MPC/VLO**: direct near-term beneficiaries of the Hormuz-risk crude
    spike — refining margins likely to strengthen short-term; also the
    most exposed to geopolitical reversal risk if the ceasefire situation
    resolves.
  - **GEV**: Erste Group initiated Buy, but shares still -5.22% amid the
    broader risk-off tape — no thesis break.
  - **CNC/DVA**: no idiosyncratic news, trading with defensive healthcare
    rotation flows.
- No core name shows a confirmed thesis break; all 24 remain on this
  week's watchlist.

### Core Trade Ideas (from current WATCHLIST.md core list)
No core positions currently open. Given the weekend geopolitical shock,
hawkish yield repricing, tomorrow's CPI print, and the ongoing WFE
"peak-AI-capex" selloff (LRCX/KLAC/AMAT), this is not a pre-market entry
setup for any name — elevated event risk into CPI/Fed testimony argues for
letting the dust settle. Deferring any specific entry/stop/target levels to
market-open, which pulls live Alpaca quotes; not fabricating price levels
from this research pass. LRCX/KLAC/AMAT specifically need a live momentum
recheck given this week's sharp single-day drops before being treated as
qualifying candidates.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **OCUL** — catalyst reconfirmed ON TRACK: Phase 3 SOL-1 (AXPAXLI, wet
   AMD) data presentation Thu Jul 16, 2026, 8:15-8:45am ET at ASRS in
   Montreal — still within the 5-trading-day window. Efficacy already
   known/positive (74.1% vs 55.8% vs aflibercept at Wk36); market focus at
   the readout will be the safety profile (vitreous floaters, retinal
   vasculitis risk). No overnight resolution yet — event is Thursday. If
   entered, still capped at 5% of equity per the binary-catalyst gap-risk
   rule, not the standard 7.5%. No entry pre-market; flagging for
   market-open/midday evaluation ahead of Thursday.
2. **MNKD** — FUROSCIX PDUFA date reconfirmed ON TRACK for Jul 26, 2026 (no
   delay/acceleration), outside the 5-day window. No new developments
   beyond last week's UTHR "Tresmi" competitive-royalty-risk news, which
   still leaves the thesis weakened. Recommend continuing to hold off new
   entries pending clarity on royalty-erosion magnitude.
3. **RIGL, ORN, FSTR, TWIN** — no acceleration; all confirmed still in the
   H2-2026/late-Jul-to-mid-Aug catalyst windows, no overnight news. No
   action indicated pre-market.

### Risk Factors
- Major geopolitical: US-Iran military escalation + Strait of Hormuz threat
  is the dominant risk factor today — elevated crude/rates volatility,
  hawkish Fed repricing (market now pricing a hike by Oct 2026), and a
  historically extreme SKEW (144.27) indicating heavy institutional
  tail-risk hedging.
- Binary macro week ahead: June CPI (Tue), new Fed Chair Warsh's first
  Congressional testimony (Tue/Wed), Q2 earnings season kickoff (Tue,
  financials) — all high-impact, all before Thursday's OCUL readout.
  Compounding event risk into a single week.
- WFE "peak AI capex" selloff (LRCX -10.2%, KLAC -12%, AMAT -7%) is a real
  momentum risk to re-verify for these three core names at market-open,
  not yet a confirmed thesis break.
- Crowding/positioning risk: leveraged-long vs leveraged-short ETF ratio at
  2021-extreme levels, plus a notable IT insider-selling cluster
  (~$109.8M) — market fragile to a hawkish CPI/Fed surprise.
- OCUL binary readout Jul 16 remains the single largest near-term satellite
  risk; no position held, so no immediate action, but sizing/entry
  decisions this week should stay disciplined to the 5% binary cap.
- MNKD thesis remains weakened by the UTHR competitive threat; avoid new
  entries pending clarity.

### Decision
HOLD — no open positions to protect. No core thesis breaks, but a
genuinely elevated macro/geopolitical risk backdrop (Hormuz escalation,
hawkish Fed repricing, CPI + Fed testimony this week, WFE selloff) argues
for extra caution on any new core entry until CPI/testimony clear. No
satellite entry criteria confirmed pre-market (OCUL catalyst is real but
resolves Thursday, not today; MNKD still weakened). Patience > activity.

### 9:30 AM Session Note — ANOMALY: unauthorized off-strategy positions found

- Live account check at market-open found 3 open positions and 2 pending
  buy orders that this bot did **not** place: **EDGX** (155 sh @ $26.79,
  order for 200 placed 12:41 UTC), **SPHY** (84 sh @ $23.32, order for 300
  placed 12:40 UTC), **O**/Realty Income (100 sh @ $63.70, filled 13:33
  UTC), plus a pending SGOV order (50 sh, unfilled). None of these tickers
  are on memory/WATCHLIST.md core or satellite lists — SPHY and SGOV are
  bond/T-bill ETFs, O is a REIT, none fit either sleeve's mandate at all.
  Nothing about these orders exists anywhere in this repo (no TRADE-LOG
  entry, no RESEARCH-LOG entry, no commit) — they were placed directly
  against the Alpaca paper account by some process outside this bot's
  documented workflow, between 12:39-12:41 UTC today, before this session
  started.
- This is a direct violation of the hard rule "never trade a ticker that
  isn't on the current watchlist" (CLAUDE.md, PROJECT-CONTEXT.md) and of
  "every trade must be documented in RESEARCH-LOG.md before execution."
- **Action taken (protective, reversible):** canceled the unfilled
  remainder of all open buy orders (EDGX, SPHY, O, SGOV) to stop further
  accumulation. Did **not** sell the 3 positions that had already filled
  (EDGX 155sh / O 100sh / SPHY 84sh, combined ~$12.5k / ~12.5% of equity)
  — liquidating is itself a trade decision and the origin of these
  positions needs owner review first, not a unilateral unwind.
- No legitimate core/satellite trade was planned or executed today —
  pre-market research already called HOLD on macro-risk grounds (Hormuz
  escalation, hawkish Fed repricing, CPI/testimony this week), independent
  of this anomaly. Decision stands: HOLD.
- **Flagged for owner:** investigate what placed these orders (another
  session, a stray script, manual test?) and decide whether to unwind
  EDGX/O/SPHY or keep them (paper account, low real-world stakes, but the
  strategy's discipline is the whole point).
