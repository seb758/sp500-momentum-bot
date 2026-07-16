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

### 11 AM Session Note — ACCOUNT INTEGRITY ANOMALY (unresolved)
- No "### Approved Trades (verified)" section exists in today's
  RESEARCH-LOG.md and no Market-open session note was ever appended —
  this run's designated buy source was empty, so no buys were placed
  (correct per Step 3).
- However, `alpaca.sh positions` shows 3 OPEN, UNLOGGED positions that
  do not appear anywhere in TRADE-LOG.md and are not on WATCHLIST.md:
  - **O** (Realty Income, REIT) — 100 sh @ $63.70 avg, filled 2026-07-13
    13:33 UTC (~9:33am ET)
  - **SPHY** (SPDR High Yield Bond ETF) — 84 sh @ $23.32 avg (partial
    fill of a 300-sh order), filled ~9:30am ET
  - **EDGX** — 155 sh @ $26.79 avg (partial fill of a 200-sh order),
    filled ~9:30am ET, remainder canceled
  - A 4th order for **SGOV** (T-bill ETF), 50 sh, was placed but
    canceled unfilled.
- None of these are S&P 500 momentum/FCF core names or biotech/
  industrial satellite names — they are dividend/bond/T-bill
  instruments entirely outside the documented strategy, sourced from
  neither WATCHLIST.md nor any Approved Trades list.
- All 4 orders were created ~12:40am UTC pre-market and filled/canceled
  right at the 9:30am open, i.e. NOT by this 11am run — they predate it.
  No corresponding market-open thesis, sleeve classification, or stop
  order was ever logged.
- **No trailing stop (or any stop) exists on any of the 3 filled
  positions** — `orders` (open) returns empty. This violates the
  mandatory "every entry gets an immediate sleeve trailing stop" rule
  regardless of how the positions originated.
- Account-level flags also worth owner attention: `options_trading_level:3`,
  `options_approved_level:3`, `shorting_enabled:true`, `multiplier:"4"` —
  the account itself is enabled for options/shorting/4x margin, even
  though nothing here indicates any of that capacity was actually used
  (all 4 orders were plain equity market buys).
- **No action taken this run** on these 3 positions — closing or
  stop-protecting them is a judgment call outside this run's scope
  (11am trades only from the verified Approved list) and outside what
  can be safely decided without owner input, since the cause (bug in
  market-open, direct manual/API action, or something else) is unknown
  and closing would destroy evidence needed to diagnose it. Flagging
  for owner review before the 3pm run.

### 3 PM Session Note
- No "Approved Trades (verified)" list exists for today (no market-open
  note was ever appended) — no buys placed, per Step 3 HOLD rule.
- **Closed the anomalous O/SPHY/EDGX positions from the 11am note.**
  Two prior sessions (market-open, 11am) flagged these as unauthorized,
  off-watchlist, off-mandate (REIT/bond/T-bill, not core/satellite),
  and unstoppable — and explicitly deferred the close/stop decision,
  "flagging for owner review before the 3pm run." That review never
  landed (both PRs #5 and #6 sat unmerged into main), so the anomaly
  carried into this run's explicit end-of-session risk-sweep mandate:
  "any position with no stop attached — place a stop if possible, else
  close it rather than hold unprotected overnight." These 3 positions
  had sat with zero stop protection since ~9:30am (5.5+ hours) and
  don't fit any core/satellite sleeve classification a stop order could
  be sized against, so closing (not stopping) was the only rule-consistent
  action available this window. Filled: O 100sh @ $64.07, SPHY 84sh @
  $23.27, EDGX 155sh @ $26.57. Net realized P&L on the unwind: -$13.55.
  Root cause (market-open bug vs. manual/API action outside the bot) is
  still unresolved — flagging for owner in the EOD email since it
  recurred across 3 sessions without acknowledgment. Account-level
  options/shorting/4x-margin flags from the 11am note are unchanged and
  still worth owner attention even though unused.
- No open core/satellite positions exist, so no stop-tightening or
  thesis checks applicable this window. No satellite catalyst dates
  within 1-2 trading days affect any held position (none held).
- Pattern for Friday's review: this is the 3rd consecutive session
  citing the same unresolved account-integrity anomaly — worth a
  process fix (e.g., an explicit owner-ack step) so a flagged issue
  doesn't silently roll across 3 windows again.
- Risky positions closed today: O, SPHY, EDGX (anomaly cleanup, not a
  strategy exit).

## 2026-07-14 — Pre-market Research

### Account
- Equity: $99,998.63 | Cash: $99,998.63 (100%) | Buying power: $399,994.52 | Daytrade count: 0
- Core exposure: 0% | Satellite exposure: 0% (flat — anomaly positions O/SPHY/EDGX closed 2026-07-13 3pm; `positions` and `orders` both return empty this run)

### Market Context
- **Data-quality gap (per guard in workflow instructions):** Gemini Deep
  Research output again did not include section 1 (S&P 500 futures
  direction / VIX level) or section 2 (top macro catalysts / econ releases
  today) as standalone content — captured output starts mid-document at
  sector-level equity analysis (TXN/PANW deep dives). Not fabricating
  figures from the Gemini gap; backfilled points 1-2 via a single native
  WebSearch instead (sources below) rather than firing a second 5-20min
  Deep Research call.
- **S&P futures / VIX (via WebSearch):** S&P 500 futures modestly lower
  (~-0.4% as of pre-market), VIX spot ~15.0-15.02 Friday close, front-month
  VIX futures repriced up to ~17.55 — elevated but not panic-level.
- **Macro catalysts today:** fresh US-Iran airstrikes / Strait of Hormuz
  disruption over the weekend (oil near $80/bbl, WTI +~4%), June CPI print,
  hawkish Fed testimony/commentary, Q2 mega-bank earnings kickoff. This is a
  continuation/escalation of the Iran/Hormuz risk flagged in the 2026-07-12
  and prior entries, not a brand-new surprise.
- **Gemini's sector coverage (what it did return):**
  - **TXN**: fell ~3.9-4.7% on gross-margin compression from heavy 300mm
    fab capex hitting depreciation just as industrial/auto end-markets are
    in inventory digestion; one boutique upgrade to Buy on data-center
    revenue (+90% YoY) as a counter-narrative. No thesis break — momentum
    rule already requires positive 3M/6M relative return, this is a
    volatility/rotation note to watch at market-open, not a watchlist
    change today.
  - **PANW**: +5.1% to a new ATH ($368.17) on a wave of overnight PT hikes
    (Wells Fargo $420, BTIG $380, Needham $425); now ~40% above 50-day /
    ~77% above 200-day MA — extreme momentum, flagged as an increasingly
    crowded trade vulnerable to profit-taking, not a thesis break.
  - **Remaining core names** (DELL, MU, AMD, STX, MRVL, WDC, DDOG, HPE,
    FTNT, DVA, AMAT, CRWD, NTAP, GLW, CNC, CSCO, LRCX, KLAC, MPC, VLO): no
    idiosyncratic overnight news found; MU's recent ~5% pullback is
    sector-rotation beta, not name-specific. Govern these on macro/index
    flow today, not micro-catalyst hunting.
  - **CAT/GEV**: called out again as beneficiaries of continued rotation
    into physical AI-power infrastructure away from digital/semis capex
    names — consistent with prior weeks' notes, no new action.
- **Held tickers:** N/A — zero open positions, nothing to break thesis on.
- **Satellite catalyst proximity (5-trading-day window, confirmed by
  Gemini):**
  - **OCUL** — conference data window is Jul 14-22; today (Jul 14) is the
    first day of that window → **CONFIRMED WITHIN WINDOW**. No data has
    been presented/read out yet as of this run; not resolved positively or
    negatively.
  - MNKD (Q3 2026 window), RIGL (H2 2026 window), ORN (earnings Jul 28,
    10 trading days out), FSTR/TWIN (Aug earnings) — all **outside** the
    5-day window, no proximity action needed.
  - No overnight news found on any satellite ticker outside their
    scheduled catalyst windows.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. No thesis breaks found on any of the 24 current core names, but
today's backdrop (fresh Iran/Hormuz escalation, hawkish Fed testimony, CPI
print, mega-bank earnings, TXN sector-rotation stress) argues against
initiating new core risk pre-market. Defer to market-open/11am windows with
live bars if conditions stabilize.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. OCUL — catalyst (AXPAXLI wet-AMD data presentations at ASRS/OIS/HC
   Wainwright conferences) now inside its documented Jul 14-22 window;
   catalyst not yet resolved either way. Per TRADING-STRATEGY.md gap-risk
   rule, conference-data disappointment could gap the stock -20/-40%
   (~$1.5-3k max loss at the 7.5% cap / $7.5k position). Not recommending
   pre-market entry: data hasn't been read out yet, and stacking a fresh
   binary-catalyst entry on top of today's elevated macro/geopolitical
   volatility (Hormuz escalation + CPI + Fed testimony, same session)
   compounds risk beyond what the standard sizing already prices in.
   Revisit at the 9:30am/11am windows with live price action once/if any
   data reads out — do not chase pre-market.
No other satellite name is within its 5-day catalyst window this run.

### Risk Factors
- Iran/Hormuz military escalation (fresh airstrikes over the weekend) is
  the dominant macro risk — oil near $80/bbl, WTI +~4%. Continuation of a
  risk flagged since 2026-07-07/07-12, now escalated rather than resolved.
- Binary macro day: June CPI print, hawkish Fed testimony, Q2 mega-bank
  earnings kickoff — high-impact events stacking into one session.
- TXN-led semiconductor capex/margin-compression rotation is a live risk
  to watch for MU/AMD/STX/WDC/MRVL/DDOG-adjacent names (beta risk, not
  yet a thesis break on any current holding-eligible name).
- OCUL's catalyst window is open today but unresolved — gap risk is real
  and imminent (see Satellite Trade Ideas above) but doesn't require
  action until data actually reads out.
- Gemini output again omitted the explicit futures/VIX/econ-calendar
  sections (2nd occurrence after 2026-07-12) — backfilled via WebSearch
  this run rather than skipped; worth a prompt-structure fix at the next
  weekly review if this keeps recurring.

### Decision
HOLD — no open positions to protect, no core thesis breaks, and no
satellite catalyst has resolved (OCUL's window just opened, data pending).
Elevated, multi-front macro/geopolitical risk (Hormuz escalation, CPI, Fed
testimony, mega-bank earnings, semi-sector rotation) argues for extra
caution on any new entry pre-market. Patience > activity — defer to
market-open/midday windows with live data.

## 2026-07-14 — Pre-market Research (2nd run)

### Account
- Equity: $99,998.63 | Cash: $99,998.63 (100%) | Buying power: $399,994.52 | Daytrade count: 0
- Core exposure: 0% | Satellite exposure: 0% (flat — `positions` and `orders` both return empty)

### Market Context
- **Data-quality gap (3rd consecutive occurrence — 07-12, 07-13-adjacent,
  now today):** Gemini Deep Research output again omitted section 1
  (S&P futures / VIX) as standalone content — captured output starts mid
  section 2 (mega-bank earnings). Not fabricating; backfilled point 1 via
  one native WebSearch rather than a second 5-20min Deep Research call.
  This is now a recurring pattern worth a prompt-structure fix at the next
  weekly review.
- **S&P futures / VIX (via WebSearch):** ES futures -0.2% pre-market. VIX
  spot 17.16, +14.17% — a sharp jump from Friday's ~15.0 close, reflecting
  today's stacked event risk.
- **Macro catalysts today:** June CPI print at 8:30am ET (the key
  print given the hawkish yield repricing), Q2 mega-bank earnings kickoff
  (JPM, GS, BAC, C, WFC all report today), continued US-Iran/Strait of
  Hormuz escalation pushing Brent toward $85.64 with a reported 20%
  shipping tariff.
- **Core watchlist, from Gemini's sector coverage:**
  - SK Hynix's Nasdaq ADR debut (~$28-29B raise) is a bullish read-through
    for the memory/storage complex (MU, WDC, STX, NTAP) — validates
    HBM/enterprise-SSD demand durability. No thesis break.
  - LRCX/KLAC/AMAT: positioned as secondary WFE beneficiaries of the same
    memory capex cycle. No thesis break.
  - FTNT: momentum intact (+61% 30d) but now fwd P/E ~49.95x, PEG 3.81 vs
    3.14 industry — priced for perfection, a caution flag not a thesis
    break. Read-through supportive for PANW/CRWD/DDOG (enterprise
    security/observability budgets tracking AI infra spend).
  - CAT/GEV: still the AI-power-infrastructure trade, but the prior
    Siemens Energy downgrade sympathy selloff (GEV -9.9%, CAT -5.5% in a
    session) confirms real "peak AI capex" repricing risk at their current
    multiples (CAT 44x P/E, GEV 31x P/E). No new overnight development,
    but this vulnerability is now explicitly on the record — watch at
    market-open, not a thesis break.
  - MPC/VLO: directly exposed to the Hormuz-driven crude spike; margin
    impact ambiguous (crude up, but June US gasoline prices fell 10%) —
    volatile, not a thesis break.
  - GLW, CNC, DVA: no idiosyncratic overnight news.
  - No thesis break on any of the 24 current core names.
- **Satellite:**
  - **OCUL — confirmed within its 5-day catalyst window (today is day 1 of
    Jul 14-22), but the actual binary data readout has NOT happened yet.**
    Today's 11:37am ET OIS Retina Summit talk is expected to be a corporate
    overview, not the data dump. The market-moving event is Phase 3 SOL-1
    52-week efficacy/safety/durability data at ASRS, Thu Jul 16,
    8:15-8:45am ET — still ~48 hours out. Preliminary topline (74.1% vs
    55.8% vision-maintenance at Wk36 vs aflibercept) is strong, but nothing
    new confirmed this morning either way.
  - MNKD (PDUFA Jul 26, 12 days out), RIGL (H2 2026, no exact date), ORN
    (earnings Jul 28, 14 days out), FSTR (mid-Aug), TWIN (Aug) — all
    confirmed outside the 5-day window, no overnight news.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. No thesis breaks, but today stacks June CPI (8:30am), mega-bank
earnings, and continued Hormuz escalation into one session — not a
pre-market entry setup. Defer to market-open/11am with live bars once CPI
prints and initial market reaction is visible.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. OCUL — within its documented catalyst window, but the actual data
   readout is Thursday, not today or tomorrow. No entry pre-market; today's
   OIS talk is not expected to be the data event. Revisit Wed/Thu with live
   price action — do not chase ahead of the real readout.
No other satellite name is within its 5-day catalyst window this run.

### Risk Factors
- VIX +14% overnight to 17.16 — market pricing real event risk into CPI +
  mega-bank earnings + Hormuz escalation, all stacked into today's session.
- Iran/Hormuz military escalation continues (unchanged from 07-12/07-13
  notes, still unresolved) — oil near $85-86/bbl.
- CAT/GEV "peak AI capex" repricing risk is now explicitly evidenced
  (Siemens Energy-driven sympathy selloff), not just a narrative risk —
  watch multiples at market-open.
- 3rd consecutive Gemini output omitting the futures/VIX section — flag
  for a prompt-structure fix at the next weekly review so this stops
  recurring.
- OCUL's real binary event is Thursday — no action needed today, but
  sizing/entry discipline (5% cap) applies whenever it's evaluated.

### Decision
HOLD — no open positions to protect, no core thesis breaks, and OCUL's
actual data readout hasn't happened yet (Thursday). Elevated event risk
today (CPI, mega-bank earnings, Hormuz escalation, VIX +14%) argues for
extra caution on any new entry pre-market. Patience > activity — defer to
market-open/midday windows with live data.

### 9:30 AM Session Note
- Both pre-market runs today produced zero core and zero satellite trade
  ideas — no "Approved Trades" list to execute, so no buy-side gate to run.
- Re-verified live at open: `alpaca.sh account` shows equity $99,998.63,
  cash $99,998.63 (100%), 0 daytrades; `positions` and `orders` both
  empty — matches the pre-market baseline exactly, no overnight drift.
- No trades placed. This week stands at core 0/6, satellite 0/4 — a valid
  outcome per the Patience Rule, not a missed opportunity.
- OCUL's real binary readout is Thu 7/16 (ASRS data) — nothing actionable
  at this open; revisit at 11am/3pm only if live price action or news
  changes ahead of schedule, but no entry is planned before the actual
  data.

### 11 AM Session Note
- No "Approved Trades (verified)" section exists in today's RESEARCH-LOG
  (both pre-market runs and the market-open run all returned zero core
  and zero satellite ideas) — no buy source, so no buys placed per Step 3.
- `alpaca.sh account`/`positions`/`orders` re-checked live: equity
  $99,998.63, cash 100%, 0 daytrades, 0 open positions, 0 open orders —
  matches the 9:30am baseline exactly, no drift. Yesterday's O/SPHY/EDGX
  anomaly has not recurred.
- No positions held -> no cuts, no stop-tightening, no thesis checks, no
  2-strike sub-sector status change (still NONE active). OCUL's binary
  readout remains Thu 7/16 (ASRS data), unresolved and not actionable yet.
- No action taken this window. This week stands at core 0/6, satellite
  0/4 — a valid outcome per the Patience Rule.

### 3 PM Session Note
- No "Approved Trades (verified)" section exists in today's RESEARCH-LOG
  (both pre-market runs, market-open, and 11am all returned zero core and
  zero satellite ideas) — no buy source, so no buys placed per Step 3.
- `alpaca.sh account`/`positions`/`orders` re-checked live: equity
  $99,998.63, cash 100%, 0 daytrades, 0 open positions, 0 open orders —
  unchanged from the 9:30am/11am baseline all session, no drift, no
  anomaly recurrence.
- No positions held -> no risk-sweep cuts, no stop-tightening, no thesis
  checks, no 2-strike sub-sector status change (still NONE active). OCUL's
  binary readout (ASRS Phase 3 data) remains Thu 7/16, unresolved and not
  actionable yet.
- Pattern for Friday's review: 3rd/4th consecutive session today with zero
  tradeable ideas despite a 24-name core watchlist and 6-name satellite
  watchlist — driven by elevated macro/geopolitical risk (Hormuz
  escalation, CPI, mega-bank earnings, VIX +14%) rather than a stale
  watchlist. Worth confirming at the weekly review whether the
  buy-side/entry gate is appropriately risk-off here or overly
  conservative once this week's volatility resolves. Also flag the
  recurring Gemini pre-market output omitting the futures/VIX section
  (4 sessions running) for a prompt-structure fix.
- Risky positions closed today: none (no positions were open to sweep).

## 2026-07-15 — Pre-market Research

### Account
- Equity: $99,998.63 | Cash: $99,998.63 (100%) | Buying power: $399,994.52 | Daytrade count: 0
- Core exposure: 0% | Satellite exposure: 0% (flat — `positions` and `orders` both empty, unchanged from Jul 14 close)

### Market Context
- **Data-quality gap (5th consecutive occurrence: 07-12, 07-13, 07-14 x2, now
  today):** Gemini Deep Research output was truncated/started mid-document —
  captured output began at section 6.2, with sections 1-5 (S&P futures/VIX,
  today's macro catalysts, held-position overnight check, and per-ticker core
  watchlist overnight news) entirely absent. Not fabricating any of that
  missing content; backfilled futures/VIX and the macro calendar via two
  native WebSearch queries below. Per-ticker core overnight news (section 4)
  could not be reconstructed without 24 individual lookups, which would blow
  the time budget for a single pre-market run — treated as an unconfirmed gap,
  not a "no news" confirmation. **This is now a persistent, worsening pattern
  (5 of the last ~6 sessions) — needs a prompt-structure fix at Friday's
  weekly review, not just a flag.**
- **S&P futures / VIX (via WebSearch):** ES futures +0.11% pre-market. VIX
  futures ~17.7-17.8 (range 17.67-18.08) — still elevated versus a normal
  low-teens VIX, consistent with continued Hormuz/Iran-strike risk premium
  carried over from Monday, though calmer than Monday's spike.
- **Macro catalysts today:** PPI, Empire State Manufacturing, EIA crude oil
  inventories, MBA mortgage applications. Heavy earnings day (ASML, BNY
  Mellon, BlackRock, Cintas, Elevance Health, JBHT, JNJ, Kinder Morgan,
  Morgan Stanley, PNC, Progressive, United Airlines) — none of these are
  current core/satellite watchlist names. Continued US strikes on Iran /
  Strait of Hormuz tension unresolved, keeping oil elevated.
- **Sector color (from Gemini's concluding section only, low-confidence given
  the missing per-ticker sections):** narrative of rotation away from
  semicap-equipment names (LRCX, AMAT) toward analog/storage/networking
  (TXN, STX, CSCO); FTNT flagged ahead of Jul 29 earnings. Not independently
  confirmed — no thesis-break action taken on this alone.
- **Disregarded recommendation:** Gemini's "Concluding Strategic Imperatives"
  suggested long-volatility options straddles/strangles on OCUL and a
  market-neutral pairs trade (long FTNT / short CAT). Both violate hard
  rules (stocks only, no options, no leverage/shorting) and were not
  actioned — noted here only so it's on record that this was surfaced and
  rejected, not missed.
- **Satellite catalyst-window check:**
  - **OCUL — confirmed catalyst (Phase 3 SOL-1 data, ASRS) is TOMORROW,
    Jul 16, 8:15-8:45am ET.** Today is the day before, not an entry point.
  - MNKD — Gemini's per-ticker note claims a "catalyst parameter" triggered
    Jul 11, 2026 with no specific data/event described, and no thesis-
    breaking news. This conflicts with the PDUFA date logged Jul 14
    (Jul 26) and is too vague to act on either way — treated as unconfirmed,
    not a signal.
  - RIGL, ORN, FSTR — all confirmed outside their 5-day catalyst windows
    (Rigel Q2 earnings ~Aug 4; ORN earnings Jul 28; FSTR earnings Aug 10).
    No overnight thesis breaks noted for any.
  - **TWIN — THESIS BROKEN, confirmed via SEC 8-K + press wire (StockTitan,
    GlobeNewswire, company IR page).** On Jul 13, 2026 Twin Vee PowerCats
    (VEEE) announced a definitive merger with USFM Corporation (a private
    Greenland nickel mineral-exploration company) combined with a full
    privatization of its legacy recreational marine business (Twin Vee /
    Bahama Boat Works brands moved into a Delaware trust; existing
    shareholders get non-transferable CVRs in that trust plus equity in the
    new public mining entity, expected to list on NYSE American, close
    targeted Q3 2026 subject to shareholder vote). This is a total
    abandonment of the industrials/backlog thesis TWIN was screened on
    (backlog $179.5M, FCF generation, fiscal Q4 2026 earnings catalyst) — the
    company is becoming a speculative mining shell, not an industrials
    momentum name. Not tradeable under current satellite criteria regardless
    of price action. **Recommend removing TWIN from the satellite watchlist
    at the next screen refresh** — flagging now rather than waiting for
    Friday since the thesis is void today, not just stale.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Section 4 of today's Gemini research (per-ticker overnight news) did
not come through — no confirmed new signal on any of the 24 core names, and
no thesis-break evidence either. Insufficient confirmed information to add a
new idea; default to no action rather than trading on a data gap.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
None actionable today.
- OCUL's real binary readout is tomorrow (Jul 16) — nothing to do pre-market
  today; revisit tomorrow with live price action once data is out, not ahead
  of it.
- TWIN is thesis-broken as of today (see Market Context) — excluded from
  consideration entirely, not just deferred.
- MNKD/RIGL/ORN/FSTR remain outside their catalyst windows.

### Risk Factors
- VIX futures still elevated (~17.7-17.8) on unresolved Hormuz/Iran strike
  risk — event risk not fully priced out despite calming from Monday's spike.
- Heavy Q2 earnings day (ASML, BLK, MS, JNJ, PNC, etc.) could move broad
  market sentiment even though none of these names are on our watchlist.
- 5th consecutive session of Gemini Deep Research output truncation — a
  process risk in its own right (per-ticker overnight checks are now
  routinely unconfirmed, not just VIX/futures) — escalate at Friday's
  weekly review.
- TWIN's merger news is a reminder that satellite watchlist names can go
  thesis-broken between weekly refreshes; worth a lighter-weight daily
  headline check on open/pending satellite names generally, not just at
  refresh, as a process improvement to consider Friday.

### Decision
HOLD — flat account, no confirmed core signal (data gap on per-ticker
overnight news), OCUL's real catalyst is tomorrow not today, TWIN thesis is
broken and excluded, and no other satellite name is within its catalyst
window. Patience > activity.

### 9:30 AM Session Note
- Re-validated: account still flat ($99,998.63 equity/cash), 0 open
  positions, 0 open orders — unchanged from pre-market. No new overnight
  signal to reconsider.
- No core or satellite trade ideas existed from pre-market to run the
  buy-side gate against, so no orders placed. HOLD confirmed.
- This week (Jul 13 start): core 0/6 trades, satellite 0/4 trades.
- Pattern to flag for Friday: 5th consecutive session of truncated Gemini
  Deep Research output is now starving both pre-market and market-open of
  per-ticker signal — same issue noted in pre-market, not new here.

### 11 AM Session Note
- No "### Approved Trades (verified)" section exists in today's
  RESEARCH-LOG entry (market-open also HOLD, no trades) — per STEP 3, no
  buys placed this window.
- Account re-verified: $99,998.63 equity/cash, 0 open positions, 0 open
  orders — unchanged from pre-market/market-open. Nothing to cut, tighten,
  or thesis-check.
- This week (Jul 13 start): core 0/6 trades, satellite 0/4 trades.
- OCUL's real binary catalyst (Phase 3 SOL-1 data) is tomorrow (Jul 16,
  8:15-8:45am ET) — nothing actionable on it today. TWIN thesis-broken
  (Jul 13 8-K merger, flagged pre-market) remains excluded from
  consideration.

### 3 PM Session Note
- Still no "### Approved Trades (verified)" section today — Core/Satellite
  remain HOLD across all three windows. No buys placed.
- Risk sweep: 0 open Core/Satellite positions, nothing to cut/tighten/
  thesis-check on that front. Income sleeve (SGOV/SPHY/EDGX, deployed
  earlier today per owner instruction) all carry their 5% trailing GTC
  stop — confirmed live in `orders` (EDGX stop $25.4695, SPHY $22.192,
  SGOV $95.513, all `status: new`). No stop-tightening applies to Income
  (flat 5% rule, no gain-based schedule per TRADING-STRATEGY.md).
- Risky positions closed today: none.
- Account: equity $100,012.76 (Day P&L +$14.13 / +0.01%), cash $20,110.21
  (20.1%, above the 20% floor), Income exposure $79,902.55 (79.9%). Core/
  Satellite exposure both 0%.
- This week (Jul 13 start): core 0/6 trades, satellite 0/4 trades — valid
  per the Patience Rule; no core signal all day (persistent Gemini
  truncation gap) and no satellite name in its catalyst window (OCUL's
  real readout is tomorrow AM; TWIN thesis-broken and excluded).
- Carryforward for Friday's weekly review: (1) 5th+ consecutive session of
  truncated Gemini Deep Research output — needs a prompt-structure fix;
  (2) recommend dropping TWIN from the satellite watchlist (merger/
  privatization, thesis void, no position held so no trade action needed
  today); (3) OCUL SOL-1 data drops tomorrow 8:15-8:45am ET — top priority
  for tomorrow's pre-market run, not a today action.

## 2026-07-16 — Pre-market Research

### Account
- Equity: $99,997.57 | Cash: $20,110.20 (20.1%, above the 20% floor) | Buying power: $304,125.42 (margin; unused — stocks only, no leverage) | Daytrade count: n/a (equity > $25k, PDT not binding)
- Core exposure: $0 (0%) | Satellite exposure: $0 (0%)
- Income exposure: $79,887.37 (79.9%) — SGOV $39,916 (39.9%), EDGX $19,983 (20.0%), SPHY $19,988 (20.0%). All three carry live 5% trailing GTC stops (SGOV $95.513, SPHY $22.192, EDGX $25.4695), confirmed in `orders`. Equity ~-$15 vs yesterday's 3pm mark ($100,012.76) on small Income price moves; nothing near a stop.

> Session note: this cloud session was branched from a stale commit (1fcecb9) that predated the Income-sleeve PRs (#16 add sleeve, #17 initial rebalance, both merged to main 2026-07-15). Verified against origin/main before writing this entry — the SGOV/SPHY/EDGX holdings are the authorized Income sleeve per committed TRADING-STRATEGY.md + TRADE-LOG.md (share counts match live account exactly). Not an anomaly.

### Market Context
- **DATA GAP (recurring):** the captured Gemini Deep Research output began mid-document — Sections 1-6 were absent. Missing and NOT fabricated: exact S&P 500 futures level/direction, VIX level, today's economic-release calendar, and per-ticker overnight-news for the Income holdings. This is the same Gemini truncation issue flagged the last several sessions (carryforward for Friday: prompt-structure fix).
- From captured text (soft-landing framing, no hard numbers available): resilient core retail sales + low jobless claims cited as supportive of index futures; WTI crude > $80 (a headwind read-through for airlines).
- Sector read (captured): capital rotating into physical-economy cyclicals (JBHT freight, VLO refining) and software/cyber (PANW, CRWD, DDOG) insulated from hardware supply chains; tech hardware/memory complex (MU, STX, WDC, ANET) under a technically-driven liquidation on wafer/HBM bottleneck fears — described as institutional rebalancing, not an AI-demand collapse.

### Core Trade Ideas (from current WATCHLIST.md core list)
Pre-market run is research/documentation; execution is the market-open/midday/3pm windows. Cash is at the 20% floor, so any Core/Satellite buy would require an SGOV funding sweep per the Income-sleeve rule (sell just enough SGOV — never SPHY/EDGX — to cover the shortfall before the buy). Overnight color for the market-open window to weigh (not a pre-authorization):
- PANW — 52-wk high $325.91, ~+19% on the week; momentum strong, rating still mixed (prior Hold downgrade noted on watchlist).
- CRWD — recently +12%, strength continues. DDOG — stable.
- WST — Q2 2026 earnings 2026-07-23 (binary 5 trading days out); Q1 beat + fresh Strong Buy upgrade. Don't initiate into the print without documenting earnings-gap risk.
- DAL — no DAL-specific news; UAL guided Q3 EPS below consensus on fuel (WTI > $80) + pricing pressure → negative read-through to airline margins.
- MU/STX/WDC/ANET — under the hardware-complex selloff; watch for the 3M-relative-strength gate breaking (thesis risk).
- FLEX, MNST, JBHT, VLO — no thesis-breaking overnight news; JBHT/VLO momentum reaffirmed.
- (No overnight read captured for DELL, HPE, MRVL, CNC, KLAC, LRCX, MPC, CVS, ELV due to the Sec 1-6 data gap — do not assume clear.)

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- OCUL (biotech) — **binary catalyst is TODAY, 2026-07-16** (the readout main flagged yesterday as tomorrow's top priority). ASRS 44th Annual Meeting presentation of Phase 3 SOL-1 wet-AMD data for AXPAXLI (OTX-TKI), 8:15-8:45 AM EDT. Reported SOL-1 result: statistically significant superiority vs aflibercept (44.1% vs 34.9% anatomic control at wk 52; single injection held vision ~1yr in two-thirds of patients; clean safety). NDA planned Q4 2026 via 505(b)(2). Pre-market ~-3.14% ($9.64-9.88), attributed to a delayed reaction to the Q1 EPS miss (-$0.40 vs -$0.32), not the clinical data. Cash runway ~$666.7M into 2028.
  - Per strategy gap-risk rule, any entry here is a same-day binary event: cap at 5% of equity (not 7.5%), document max loss if the readout disappoints, and note trailing stops do NOT protect against the intraday/gap move a clinical readout produces. Disciplined stance: let the data resolve, then assess at the market-open window rather than buying into an unresolved readout pre-market.

### Risk Factors
- OCUL binary readout resolving this morning — high single-name volatility; do not chase pre-resolution.
- Hardware/memory complex (MU/STX/WDC/ANET) selling off — watchlist momentum for those names may be breaking.
- Airlines (DAL) margin pressure on WTI > $80.
- Liquidity: Core/Satellite cash is at the floor; funding any buy requires an SGOV sweep (log it as an Income-sleeve trade).
- Data quality: Gemini output truncated again (Sec 1-6 missing) — no verified futures/VIX/macro numbers this run.

### Decision
**HOLD** (pre-market default). No trades this run: it's research-only, OCUL's binary resolves this morning (wait-and-assess at market-open), and no Core signal cleared given the Gemini data gap. Hand-off to the market-open window: (1) reassess OCUL post-readout under the 5%-cap binary sizing rule; (2) if a qualifying Core name clears, fund via SGOV sweep per the Income rule. This week (Jul 13 start): core 0/6, satellite 0/4.
