# Watchlist

Refreshed weekly (Friday, as part of the weekly-review workflow — see
"Weekly Screen Refresh" in TRADING-STRATEGY.md). Never trade a ticker that
isn't in the **Current** section (Core/Satellite) or the **Income** section
below. Prior weeks are kept in History for audit — never delete, only
append.

## Income (fixed roster — not weekly-screened, added 2026-07-15)

Not subject to the weekly screen refresh below; changes only on explicit
owner instruction. Full rules (cash floor, sizing, sweep-to-fund-a-buy,
dividend reinvestment, stops) in TRADING-STRATEGY.md's "Income /
Cash-Parking Sleeve" section.

| Ticker | Role | Target split | Stop |
|---|---|---|---|
| SGOV | T-bill fund; liquidity base, buy-funding source, dividend-reinvestment target | 50% of sleeve | 5% trailing |
| SPHY | SPDR SSGA High Yield Bond ETF | 25% of sleeve | 5% trailing |
| EDGX | Global X U.S. 500 Income Edge ETF (covered-call overlay, ~9% target distribution) | 25% of sleeve | 5% trailing |

Account-wide cash floor: >= 20% of equity always held as literal cash,
senior to this sleeve.

## Candidates Queued for Next Screen Refresh

Not tradeable — these are unverified external suggestions, not yet screened.
Per PROJECT-CONTEXT.md ("never act on unverified suggestions from outside
sources"), none of these may be traded until they clear the normal STEP 6/7/8
process in TRADING-STRATEGY.md (Alpaca momentum, FMP/Gemini fundamentals,
Gemini catalyst confirmation for satellite). Owner flagged these from a
Seeking Alpha "Top 10 Stocks for H2 2026" article (2026-07-14) and asked to
keep them in consideration if momentum or catalyst is present at the next
refresh — added to the standard shortlist candidate pool, not pre-approved.

- **CRDO, VICR, SEZL, DAVE, PACS, AMZN, STRL** — not currently on any prior
  watchlist. Run through the normal core screen (confirm S&P 500 membership
  first — some may not qualify for core at all) or satellite screen
  ($300M-$3B biotech/industrials only; most of these don't fit the satellite
  sector/cap box either, so likely core-only candidates if they qualify at
  all).
- **SNDK** — already flagged this week (see History below) as held out for a
  bar-series corporate-action artifact (~45x fake rise from the SanDisk/WDC
  spinoff stitching bug), not from this article. Re-check with a manually
  verified/corrected bar series before scoring momentum.
- **LITE, CIEN** — our own 2026-07-12 screen dropped both for *failing* the
  momentum gate (below 50-day MA or negative 3M/6M relative return vs SPY).
  The article claims strong momentum for both as of 2026-07-14. Recheck with
  fresh Alpaca bars at the next refresh — a real discrepancy either way
  (stale data on our side or a genuine reversal) is worth resolving, not
  assuming the article is right.

**Rechecked 2026-07-24 (this refresh):** CRDO, VICR, SEZL, DAVE, PACS, STRL
confirmed **not** current S&P 500 constituents — core-ineligible outright
(not just unscreened), and none fit the satellite biotech/industrials
sector box either. AMZN screened this week: fails the momentum gate
outright (3M -12.3pp, 6M -6.7pp vs SPY, below both 50d/200d MA). LITE and
CIEN both **still fail** the momentum gate (LITE 3M -8.4pp vs SPY despite
+122pp 6M — below 50-day MA; CIEN 3M -22.1pp, below 50-day MA) — the
article's momentum claim from 07-14 did not hold up on fresh data twice
running. SNDK still excluded: now fails the momentum gate outright (below
50-day MA) independent of the corporate-action bar-series concern flagged
prior weeks — moot until/unless it clears on its own re-verified data.
None of this pool independently surfaced in this week's fresh Gemini
satellite candidate search either. No changes to this queued list.

## Current — Week of 2026-07-24

Third weekly screen refresh (weekly-review workflow, run 2026-07-24 for the
market weeks ending Fri 2026-07-17 and Fri 2026-07-24 combined — **the
2026-07-17 refresh never ran or never persisted**, so this refresh covers
two full trading weeks of drift since 2026-07-12; see WEEKLY-REVIEW.md for
detail). Full ~500-name universe re-screened via fresh Alpaca bars. FMP's
daily quota was effectively exhausted before this session started (0/55
shortlisted names returned cashflow/growth data; only 5/55 returned a
rating) — core fundamentals validation came entirely from Gemini Deep
Research, batched 11 tickers/query, run in parallel. Momentum math is
Alpaca price data as usual and is unaffected by the FMP gap.

### Core (S&P 500 momentum + FCF)

| Ticker | Momentum Rank | 3M Rel. Return vs SPY | FCF Trend | Analyst Rating | Notes |
|---|---|---|---|---|---|
| DELL | 1 | +100.9% | Positive/improving | Strong Buy/Moderate Buy | Record $4.1B Q1 FY27 OCF; rev +88%/EPS +214% on AI server demand. Flagged 33% single-day move (05-29) — real (verified prior weeks), not artifact |
| MU | 2 | +99.3% | Positive/improving | Buy | Memory supercycle; rev +346% Q3 FY26, $18.3B adj FCF, 84.6% gross margin |
| DDOG | 3 | +81.2% | Positive/improving | Buy | Rev +32%/EPS +18%, 4th consecutive quarter of accelerating growth. Flagged 31% move (05-07) — real (verified prior weeks) |
| HUM | 4 | +77.7% | Positive/improving | Hold | Rev +23.5%, $1.1B Q1 FCF. Momentum partly a rebound off the 2026-01-27 Medicare Advantage rate-shock crash (-20.7%, verified real news, outside the 3M/6M measurement window) — base-effect caveat, not pure organic momentum |
| PANW | 5 | +75.9% | Positive/improving | Strong Buy | Rev +31%, NGS ARR +60%, CyberArk acquisition |
| AMD | 6 | +74.0% | Positive/improving | Buy | Rev +38%/EPS +43%, record $2.6B Q1 FCF, Data Center +57%. Flagged 24% move — real (verified prior weeks) |
| FTNT | 7 | +70.2% | Positive/improving | Hold | Rev +20%/EPS +41%, record $1.01B FCF on AI-workload hardware demand |
| HPE | 8 | +63.3% | Positive/improving | Moderate Buy | Rev +40.6%, $915M Q2 FCF, full-year FCF target raised to >=$3.5B |
| CNC | 9 | +59.9% | Positive/improving | Buy/Hold | $4.17B Q1 FCF, revenue +7%. Flagged 40% move — real guidance swing (verified prior weeks), verify thesis before entry |
| STX | 10 | +53.7% | Positive/improving | Strong Buy | Rev +44%/EPS +115%, decade-high 31% FCF margin, mass-capacity storage cycle |
| CRWD | 11 | +53.4% | Positive/improving | Strong Buy | TTM FCF $1.43B (+39.5% YoY), TTM revenue $5.09B |
| DVA | 12 | +49.9% | Positive/flat | Hold | Rev +6%/EPS +23.2%, raised FY operating income guidance. Flagged 24% move — real (verified prior weeks) |
| NTAP | 13 | +44.5% | Positive/improving | Moderate Buy/Hold | Record $900M Q4 FCF (+40% YoY), 7 consecutive quarters of billings growth on AI all-flash demand. Flagged 22% move — real (verified prior weeks) |
| WDC | 14 | +39.7% | Positive/improving | Buy | Rev +45%(Q3)/+27%(Q1FY27), cloud storage demand, 1040bp gross margin expansion |
| URI | 15 | +38.2% | Positive/improving | Buy | Rev +12.7%, record Q2, $1.149B H1 FCF. Flagged 23% move (04-23) — real, confirmed Q1 earnings beat + guidance raise |
| MPC | 16 | +36.8% | Positive/flat | Moderate Buy/Buy | Rev +8.5%, $6.7B TTM FCF, elevated refining crack spreads |
| CVS | 17 | +36.1% | Positive/flat | Strong Buy/Buy | Rev +6.2%, FY cash flow guidance raised to >=$9.5B |
| AMAT | 18 | +35.7% | Positive/flat (TTM FCF -8.8% on heavy reinvestment) | Strong Buy | Rev +11%, gross margin crossed 50% for first time in 25 years |
| DOC | 19 | +31.4% | Positive/flat | Buy/Hold | Healthpeak REIT; $1.29B TTM adj FCF, modest +1.66% revenue pace — stable, slow-growing |
| BBY | 20 | +29.1% | Positive/improving | Hold | EPS +37%, rev +1.9%, FCF/share $7.62 TTM, early AI-electronics momentum |
| VLO | 21 | +26.5% | Positive/flat | Moderate Buy | Q1 rev $32.38B, EPS $4.22, elevated crack spreads |
| WST | 22 | +25.8% | Positive/flat | Buy | Rev +13.8% on GLP-1/biologics demand, EPS beat by ~14%. Flagged 23% move — real (verified prior weeks) |
| LLY | 23 | +24.9% | Positive/improving | Strong Buy (implied) | $3.01B Q1 FCF, 40% 3-yr FCF CAGR |
| ABBV | 24 | +24.4% | Positive/flat | Moderate Buy | Rev +12.4%, EPS guided +23.2% for Q2 |
| GE | 25 | +22.5% | Positive/improving | Moderate Buy/Strong Buy | GE Aerospace; robust commercial execution, operational efficiency gains |

**Sector-concentration cap applied:** semis + AI-hardware (DELL, MU, AMD,
HPE, STX, NTAP, WDC, AMAT) capped at 8 of 25 names (32%, under the ~40%
cap) — momentum ranked more names from this cluster (see "sector-capped
alternates" below) but the cap held at 8. Distinct groupings represented:
AI-hardware (8), cybersecurity/software (DDOG, PANW, FTNT, CRWD — 4),
health care (HUM, CNC, DVA, CVS, WST, LLY, ABBV — 7), industrials (URI,
GE — 2), energy (MPC, VLO — 2), real estate (DOC — 1), consumer
discretionary (BBY — 1).

**Failed fundamentals this week (momentum passed, FCF/growth/rating did
not):**
- **PSX** — negative FCF ($2.26B Q1 operating cash deficit), net income
  -57.5% YoY despite +6.9% revenue.
- **ADM** — negative FCF ($44M Q1 deficit), EBITDA -8% TTM, crush profits
  -69% YoY, Reduce/Neutral consensus.
- **TRV** — Hold consensus but heavily bearish-skewed distribution (5 Sell
  + 4 Strong Sell of 23 analysts, ~39% negative) plus flat/declining net
  premiums (-1.5%); EPS growth driven by a one-off drop in catastrophe
  losses, not a durable trend.
- **HPQ** — consensus leans "Hold/Reduce" with 4-5 active Sell/Strong Sell
  ratings depending on brokerage — too bearish-skewed to clear the
  not-Sell/Strong-Sell bar cleanly.
- **BAX** — negative FCF trend, Q2 consensus EPS guided -39% YoY, Zacks
  downgraded to Strong Sell alongside 4 other Sell ratings.
- **D (Dominion Energy)** — negative FCF (Q1 capex of $3.03B consumed
  operating cash flow), 8% Sell allocation.

**Sector-capped alternates** (passed momentum + fundamentals, held out only
by the semis/AI-hardware cap or the 25-name cut, not a fundamentals fail):
SJM, STT, TRGP, INCY, MET, UNH, AIZ, HWM, VTRS, ALL, EXPD, GWW, BNY, AAPL,
IBKR, JBHT, NSC, PM, MMM — all confirmed positive FCF + positive growth +
not-Sell/Strong-Sell consensus via this week's Gemini batches; none is a
sector-cap or fundamentals casualty, just below the cut line.

### Satellite (small-cap biotech / industrials)

| Ticker | Sub-sector | YoY Growth | Analyst Rating | Catalyst | Catalyst Date | Max Loss If Catalyst Fails | Notes |
|---|---|---|---|---|---|---|---|
| MNKD | Biotech | Positive (Q1 rev +15.1% YoY to $90.2M) | Moderate Buy/Buy, but polarized — see note | MNKD-201 IPF (idiopathic pulmonary fibrosis) inhaled-nintedanib readout; also quarterly commercial ramp of FUROSCIX ReadyFlow (approved 07-24) and pediatric Afrezza | No firm date yet for MNKD-201 (pipeline milestone, not imminent) | Not a single near-dated binary → standard 7.5% cap. Existing position was sized at the 5% binary cap ahead of the (now-resolved) PDUFA; no forced resize on an existing position | **Held position.** PDUFA risk fully resolved 07-24 (FDA approved). Rating caveat: highly polarized this week — Zacks downgraded to Strong Sell (07-07) and Weiss reiterated Sell (07-08), vs. Mizuho Outperform $7 PT and Wells Fargo Overweight $11 PT (both 05-07/02-27) — treat the "not Sell/Strong Sell" pass as thin, not clean, going forward |
| RIGL | Biotech | Positive (net product sales +26% YoY; TAVALISSE +31%, REZLIDHIA +31%, GAVRETO +7%) | Hold (3 Buy/2 Hold/1 Sell — consensus not Sell) | Q2 2026 earnings (TAVALISSE growth durability, SG&A control); VEPPANU (vepdegestrant) integration updates | Early-to-mid August 2026 (earnings, ~1-2 weeks out — outside the 5-day window as of today) | Not binary-regulatory → standard 7.5% cap ($7.5k) | Commercial-stage, real product revenue (unlike the pre-revenue biotech names) — cleanest growth-criterion pass of the biotech set. Passed above 200-day MA this week, traded to $41.59 intraweek. Institutional ownership 66.2% |
| CGEM | Biotech | **Growth criterion is a judgment call** — pre-revenue ($0 YoY), same treatment as OCUL's prior-week caveat | Strong Buy/Moderate Buy (1 Sell of 8-12 analysts) | Rolling NDA submission for zipalertinib (EGFR ex20ins NSCLC, partnered w/ Taiho, FDA Breakthrough Therapy) — Gemini's reported timing was internally inconsistent (cited both "Q1 2026" and an "August 6" Q1-earnings date, a data-quality flag, not a confirmed fact) | Unconfirmed/inconsistent per above — treat as imminent-but-unverified, re-check before sizing an entry | Not yet a single verified date → standard 7.5% cap, re-evaluate if a firm date is confirmed | Included on the strength of its balance sheet, not its growth: implied EV ~$256M vs ~$1.3B market cap, ~12.8-quarter cash runway heavily de-risks near-term dilution — the key distinction from REPL (excluded again this week, see below) which carries the same growth caveat with existential burn risk instead |
| FSTR | Industrials | Positive (Q1 net sales +23.9% YoY, EBITDA +183% YoY) | Hold (headline), but underlying PT revisions bullish (Sidoti $39->$46, SimplyWallSt $32.50->$40) | Specific federal/state contract awards (DART Silver Line $30.5M, VRE L'Enfant $25M federal funding, CA High-Speed Rail $3.5B JV sub-contract opportunity) + Q2 earnings early August | Contract flow ongoing; earnings early August 2026 | Not binary-regulatory → standard 7.5% cap ($7.5k) | L.B. Foster; leverage reduced from 2.5x to 1.2x gross leverage ratio YoY. Carryover holding candidate, re-verified this week — Q2 earnings will confirm the Rail segment's +38.4% growth isn't a one-off |
| CVLG | Industrials | Positive revenue (+15.9% YoY freight revenue, +14% total), but **earnings/margin declining** — adj. operating income -11.5% YoY in Q1, GAAP net income down, operating ratio deteriorated to 98.0% | Buy/Moderate Buy, 0 Sell/0 Strong Sell (Zacks upgraded Strong Sell->Hold->Strong Buy across Apr-Jul) | Q2 2026 earnings, **July 29 after market close** — inside the 5-trading-day window | 2026-07-29 | Earnings catalyst (not FDA/regulatory) → standard 7.5% cap per the established ORN/FSTR precedent, not the tightened 5% binary cap | Covenant Logistics; YTD momentum +111%+. **Live margin-compression concern**, not resolved: driver-wage inflation projected to consume 30-40% of early rate gains, equipment cost inflation, aging fleet (26mo vs 20mo prior year). Revenue growth clears the gate; earnings trend is the explicit risk to watch at the 07-29 print |

**Considered and dropped this week:**
- **OCUL** — stopped out 2026-07-23 (-15.23%, mechanical 15% trailing stop,
  no thesis break at the time). Regulatory thesis (AXPAXLI Q4 2026 NDA
  filing) is described as still intact per this week's research, but a new
  competitive risk emerged (REGENXBIO 5-year gene therapy data pressuring
  the wet-AMD competitive picture) and momentum has turned negative across
  every window since (1M -14.8%, 3M -10.8%, 6M -24.5%). Combination of
  fresh negative momentum, a new competitive-risk factor, and the recency
  of the stop-out argues for sitting out a re-entry this week rather than
  immediately re-adding — not a permanent exclusion, revisit if momentum
  stabilizes or a firm PDUFA date is set.
- **KFRC (Kforce)** — strong momentum (3M +65.8%) and a real earnings beat
  in the rearview (Q1 stock +44% on a return-to-growth quarter), but
  current YoY revenue growth is essentially flat (+0.1%) and the forward
  catalyst has no confirmed date ("late July/early August" Q2 earnings,
  unscheduled as of this research). Fails the spirit of the growth gate and
  the "specific, documented catalyst" bar — a momentum story, not a
  catalyst story, which is core-screen territory, not satellite's.
- **MLTX (MoonLake Immunotherapeutics)** — genuine near-term catalyst (BLA
  submission for sonelokimab in HS, end of September 2026, backed by
  strong Phase 3 data) but two red flags: an upsized, dilutive $200M equity
  offering priced at a discount just days after the positive data (June
  23), followed by concentrated C-suite insider selling (CFO, CEO, CSO all
  sold in the following weeks) — and unusually heavy analyst dissent (3
  Sell + 2 Strong Sell of 17 analysts, ~30% negative, well above the other
  candidates considered this week). 1-month momentum is negative (-8.8%)
  with a credible, documented negative cause (dilution + insider-selling
  optics), not just noise.
- **PTGX (Protagonist Therapeutics)** — real, near-term catalyst (Q3 2026
  PDUFA for rusfertide) but market cap ~$8.9B, far over the $300M-$3B
  satellite cap. Out on size, same as prior weeks' cap-based exclusions.
- **TILE (Interface)** — industrials, in-range cap ($1.69B), clean analyst
  ratings, but momentum too weak to differentiate (3M +15.5%, 6M +4.7%) and
  no specific dated catalyst, only soft "guidance improvement" language.
- **BXC (BlueLinx)** — in-range cap (~$470M) but negative 6-month momentum
  (-23.3%) and a deteriorating EBITDA-margin narrative (lowest Q2 margin
  since 2018); earnings 07-27 is a real date but the underlying trend is
  negative, not the setup satellite wants.
- **JBI (Janus International)** — in-range cap (~$736M) but negative
  momentum across 3M/6M (-4.0%/-26.0%) and confirmed downward
  revenue/earnings revisions from persistent self-storage-sector headwinds.
- **ORN** — dropped this refresh. Failed the wide/illiquid-spread skip rule
  in 3 straight trading sessions (07-21 stale ~$4-wide quote, 07-22 ~27%,
  07-24 ~31%, each reading worse), despite a real earnings catalyst
  (Q2, Jul 28) and passing momentum/fundamentals in prior weeks. Not a
  fundamentals exclusion — revisit if the quoted spread genuinely tightens.
- **TWIN** — dropped this refresh. Thesis confirmed broken as far back as
  2026-07-13 and re-confirmed 2026-07-21: a definitive reverse-merger/
  privatization of the legacy marine business into a nickel-mining shell
  (USFM Corp). Flagged unactioned for two weeks pending this refresh.
- **REPL (Replimune)** — re-considered, still excluded. Real near-term
  binary catalyst but pre-revenue with existential cash-burn risk per prior
  research (~$314M annual burn); the CGEM comparison above is the reason
  it's excluded again while CGEM is included — CGEM's balance sheet lacks
  the same existential-burn profile. Kept as a high-risk binary watch only,
  not tradeable.

**2-strike sub-sector cooldown status (updated 2026-07-24):** NONE active.
Biotech still at strike 1 of 2 (OCUL's 2026-07-23 stop-out); one more
consecutive losing biotech satellite trade triggers a 2-week cooldown.
Industrials remains at 0 strikes.

## History

### Week of 2026-07-12

Second weekly screen refresh (weekly-review workflow, run 2026-07-12 for the
market week ending Fri 2026-07-10). Full ~500-name universe screened via
Alpaca bars for momentum; core fundamentals validated via Gemini Deep
Research. **Note on data source this week:** FMP's free tier hit a hard daily
"Limit Reach" on every endpoint mid-run (not the usual per-symbol allowlist
402 — the whole daily quota was exhausted), so this week's core FCF / growth /
rating validation came *entirely* from Gemini Deep Research, not FMP. Momentum
math is Alpaca price data as usual and is unaffected.

### Core (S&P 500 momentum + FCF)

| Ticker | Momentum Rank | 3M Rel. Return vs SPY | FCF Trend | Analyst Rating | Notes |
|---|---|---|---|---|---|
| DELL | 1 | +128.7% | Positive/improving | Buy | AI-infra inflection; FCF "exceptionally positive," 88% rev / 214% EPS growth last Q, $500 median PT. Flagged 33% single-day move — real (AI backlog re-rating), not artifact |
| MU | 2 | +121.3% | Positive/improving | Strong Buy | Memory supercycle; very wide bull/bear PT dispersion ($400–$2,200) reflects boom/bust debate |
| AMD | 3 | +124.7% | Positive/improving | Outperform | Daiwa cut Buy→Outperform on valuation after ~150% surge (PT raised $250→$500). Flagged 24% move — real |
| STX | 4 | +70.8% | Positive/improving | Moderate Buy | HDD upcycle; some Equal-Weight/Hold downgrades on cyclicality — watch pricing-power thesis |
| MRVL | 5 | +85.6% | Positive/improving | Buy | Data-center; high institutional conviction on FCF. Flagged 33% move — real |
| WDC | 6 | +61.4% | Positive/improving | Moderate Buy | HDD cyclical; some Hold/Neutral (GS, Susquehanna) but consensus anchored up |
| DDOG | 7 | +125.3% | Positive/expanding | Buy | FCF structurally expanding; ~25-27% FY26 rev guide. Flagged 31% move — real |
| HPE | 8 | +84.5% | Positive/improving | Buy | Zacks upgraded Hold→Strong Buy; GS PT $32→$79, RJ $29→$74 on AI networking |
| FTNT | 9 | +84.2% | Positive | Buy (mixed w/ Hold) | Flawless execution but priced-for-perfection; consensus "wait-and-see." Flagged 22% move — real |
| DVA | 10 | +43.5% | Positive | Hold (not Sell) | Dialysis; neutral/cautiously-optimistic consensus, reimbursement-pressure watch. Flagged 23% move — real |
| PANW | 11 | +84.1% | Positive | Moderate Buy | Execution unblemished but fwd P/E ~90x — mean-reversion risk on macro shock |
| AMAT | 12 | +40.4% | Positive/improving | Buy/Overweight | Overwhelming consensus; GAA + advanced-packaging beneficiary of AI hardware cycle |
| CRWD | 13 | +78.7% | Positive/expanding | Buy | Expanding FCF + GAAP profitability; steep EV/rev multiple the main caution |
| NTAP | 14 | +65.5% | Positive | Hold (not Sell) | Massive FCF but upside "efficiently priced in" — near-term constrained. Flagged 22% move — real |
| GLW | 15 | +1.4% | Positive | Buy/Outperform | Ranked on a very strong 6M (+107% rel) — 3M rel barely positive; JPM lone Neutral. Optical/AI |
| CNC | 16 | +68.3% | Positive (+$4B qtrly FCF) | Hold | Pivoted from unprofitable 2025 to cash-generative; Hold consensus wants sequential consistency. Flagged 40% move — real guidance swing, verify thesis before entry |
| TXN | 17 | +33.8% | Positive/surging | Hold→turning bullish | Wave of upgrades; thesis shifting to AI power-management boom + margin expansion |
| CSCO | 18 | +34.8% | Positive | Buy/Overweight | Blowout Q3 FY26; Zacks Strong Buy, BofA street-high $150 PT |
| LRCX | 19 | +24.3% | Positive | Buy (some Hold) | AI upside largely priced in; cautious downgrades + insider selling noted |
| KLAC | 20 | +23.0% | Positive | Moderate Buy | Upgrades on WFE supply constraints; expanding service revenue |
| MPC | 21 | +15.9% | Positive (normalizing) | Buy | Refining; FCF sequentially normalizing, much upside near PT already |
| CAT | 22 | +10.0% | Positive | Buy (mixed w/ Hold) | Priced for perfection — Michael Burry disclosed a first-ever short; execution excellent |
| GEV | 23 | +1.7% | Positive | Buy | Power/electrification; brief ~6.5% sympathy selloff on Siemens Energy downgrade, fundamentals sterling |
| VLO | 24 | +8.4% | Positive | Buy | Refining; persistent PT upgrades into Q2 print, operational leverage on cash generation |

**Held out pending manual data verification (corporate-action guard):**
- **SNDK** — screened #1 on a +432% 6-month relative return, but its Alpaca
  bar history shows an impossible ~45x rise ($41.82 Jun-2025 → $1,915.92
  Jul-2026) with no split adjustment. This is a data/corporate-action
  stitching artifact (SanDisk/WDC separation), **not** a real signal. Excluded
  from the tradeable list until the bar series is manually verified/corrected.
  VLO fills the 24th slot in its place.

**Considered and dropped this week** (logged for audit, not a blanket
exclusion for next week):
- **MRNA** — cleared the momentum gate but Gemini confirms a *negative* free
  cash flow profile ($4.2B annual adjusted cash burn); fails the core FCF
  criterion despite strong 6M momentum.
- **HUM** — Hold consensus with analysts unwilling to upgrade until margin
  recovery is proven; FCF trend not confirmably positive/improving. Treated as
  a fundamentals fail, not assumed-pass.
- **FFIV** — neutral-to-bearish consensus (BofA "Underperform," others
  Equal-Weight/Hold); fails the "not Sell-leaning / genuinely positive rating"
  bar despite a top-25 momentum score.
- **DOC (Healthpeak)** — REIT (FFO, not FCF — doesn't fit the core screen
  cleanly), neutral consensus (MS downgraded to Equal-Weight), and the weakest
  momentum among survivors.
- **EBAY** — neutral analyst sentiment + near-term Depop-integration EPS
  headwind; weakest momentum tier. Passed both gates marginally but cut for
  quality.
- **INTC, FLEX, VRT, ON, LITE, COHR, FIX, GNRC, CIEN, HOOD, Q, NXPI, PWR,
  AXON** — failed the momentum gate itself: each is either below its 50-day MA
  or has a *negative* 3M or 6M relative return vs SPY. Core rule #4 requires
  positive relative strength over **both** windows and price above both MAs.
- **Strong survivors just below the 24-name cut** (passed both gates, held as
  documented alternates, not on the tradeable list): ANET, TRGP, URI, STT,
  WST, IBKR, CVS, UNH, JBHT, CSX, CDNS, MNST, GWW, PSX, BEN, MGM.

**Concentration note:** ~18 of the 24 core names are semis / AI-hardware /
enterprise-tech — the momentum screen is heavily loading the AI supercycle
this week. MPC/VLO (energy), CAT/GEV (industrials) and DVA/CNC (healthcare)
are the only real diversifiers on the list. Size and correlation-manage
accordingly; a single AI-sector drawdown would hit most of this list at once.

### Satellite (small-cap biotech / industrials)

| Ticker | Sub-sector | YoY Growth | Analyst Rating | Catalyst | Catalyst Date | Max Loss If Catalyst Fails | Notes |
|---|---|---|---|---|---|---|---|
| MNKD | Biotech | Positive (Afrezza + royalty revenue growing) | Buy (~$8.50 PT vs ~$4.09) | MNKD-201 IPF Phase clinical readout ("imminent"); pending FDA regulatory decisions on pipeline | Q3 2026 (window, not a single PDUFA date) | Not a single binary date → 7.5% cap ($7.5k). Clinical readout carries gap risk; a bad IPF print could gap the stock -30/-50% → ~$2.3-3.8k (2.3-3.8% of equity) | $1.26B cap (in range). Strong current momentum (1M +14.6%, 3M +59.8%; 6M -30% is stale). Legacy royalty floor + pipeline optionality |
| OCUL | Biotech | Flat/negative (legacy DEXTENZA rev down) — judgment call, see note | Strong Buy (>150% upside) | AXPAXLI (wet AMD) data at ASRS/OIS/HC Wainwright; Pre-NDA FDA meeting Q3; NDA filing Q4 | Conference data Jul 14–22, 2026 (imminent); no single PDUFA yet | Multi-stage, not single binary → 7.5% cap ($7.5k). Conference-data disappointment could gap -20/-40% → ~$1.5-3k. Re-cap to 5% if a firm PDUFA date is set | Carryover from last week. $2.23B cap, ~$666M cash (runway into 2028). Growth is the caveat — thesis is the regulatory catalyst + Strong Buy, not current top line |
| RIGL | Biotech | Positive (rising organic cash flow, commercial products) | Buy / re-rating | R289 Phase 1b dose-expansion readout (transfusion-dependent lower-risk MDS) + non-dilutive government validations | H2 2026 (window) | 7.5% cap ($7.5k). Readout gap risk; a miss could gap -20/-35% → ~$1.5-2.6k | ~$787M cap (in range). Strongest current momentum of the biotech set (1M +38.5%, 3M +39.5%). Commercial-stage — meets growth criterion cleanly, unlike the pre-revenue names |
| ORN | Industrials | Positive (backlog + J.E. McAmis M&A accretion) | Buy-leaning | Q2 2026 earnings; data-center + domestic maritime infrastructure buildout exposure | Jul 28, 2026 (earnings) | 7.5% cap ($7.5k). Earnings-miss gap ~-15/-25% → ~$1.1-1.9k | ~$668M cap (in range). Momentum 3M +16.2% / 6M +35.7% (1M flat on index-rebalance selling pressure — a headwind to watch) |
| FSTR | Industrials | Positive (15% sequential backlog surge) | Buy (PT $40–46 vs ~$42.55) | Q2 2026 earnings (backlog→revenue conversion); multimillion govt awards + rail safety tech | Mid-August 2026 (earnings) | 7.5% cap ($7.5k). Earnings-miss gap ~-15/-25% → ~$1.1-1.9k | L.B. Foster, ~$400-450M cap (in range). Strong momentum (3M +42%, 6M +54%); trading right at consensus PT — limited headroom to target |
| TWIN | Industrials | Positive (backlog $179.5M, FCF generation) | Positive | Fiscal Q4 2026 earnings; backlog execution + pricing discipline, short-covering potential | August 2026 (earnings) | 7.5% cap ($7.5k). Earnings-miss gap ~-15/-25% → ~$1.1-1.9k | Twin Disc, $340.7M cap (just above the $300M floor). Momentum 3M +25.7%, 6M +36.1% |

**Considered and dropped this week:**
- **REPL (Replimune)** — real, hard, near-term binary catalyst (FDA AdCom Jul
  30, PDUFA Aug 2, 2026) and strong momentum (1M +18.9%, 3M +86%), BUT it is
  pre-commercial/pre-revenue and fails satellite entry criterion #3 (positive
  YoY revenue/earnings growth). Gemini flags an *existential* $313.9M annual
  cash burn — "catastrophic equity destruction" if the AdCom/PDUFA fails. This
  is the exact overnight-gap profile the strategy warns against, on a name that
  doesn't clear the growth gate. Documented as a high-risk binary watch, kept
  **off** the tradeable list.
- **QTTB (Q32 Bio)** — huge momentum (3M +128%, 6M +237%) and a binary clinical
  catalyst, but market cap ~$213.5M is **below** the $300M satellite floor;
  also extreme volatility (81% single-day move in the lookback). Out on cap.
- **No additional industrials cleared cap + sector + momentum + a specific
  catalyst** beyond ORN/FSTR/TWIN. Per the Patience Rule, a focused list is a
  valid outcome — not forcing weaker names in.

**2-strike sub-sector cooldown status (updated 2026-07-23 11am):** NONE
active — but **biotech is at strike 1 of 2** after OCUL's 15% trailing-stop
exit today (2026-07-23, -15.23%, no thesis break — mechanical stop after a
multi-session drift; see TRADE-LOG.md). One more consecutive losing biotech
satellite trade triggers a 2-week new-entry cooldown in biotech. Industrials
remains at 0 strikes, no satellite industrials trade executed yet.

### Week of 2026-07-11 (first screen refresh — seeded ad hoc via `/screen-refresh`)

First real screen refresh (`/screen-refresh`, run ad hoc rather than waiting
for Friday, per its intended use). Full ~500-name universe screened via
Alpaca bars; FMP fundamentals validated where available (only ~6/60
shortlisted names cleared FMP without a 402), Gemini Deep Research used as
the documented fallback for the rest, batched ~9 tickers per query — see
the "Considered and dropped" notes under each sleeve below for what that
process excluded and why.

#### Core (S&P 500 momentum + FCF)

| Ticker | Momentum Rank | 3M Rel. Return vs SPY | FCF Trend | Analyst Rating | Notes |
|---|---|---|---|---|---|
| DELL | 1 | +133.5% | Positive/improving | Buy | Large single-day move flagged — sanity-checked, real (AI server demand re-rating), not a data artifact |
| MU | 2 | +121.7% | Positive/improving | Strong Buy | |
| STX | 3 | +69.8% | Positive/improving | Moderate Buy | |
| DDOG | 4 | +133.3% | Positive/improving | Buy (mixed w/ some Hold) | Large single-day move flagged — sanity-checked, real |
| WDC | 5 | +58.5% | Positive/improving | Moderate Buy | |
| MRVL | 6 | +72.4% | Positive/improving | Moderate Buy/Buy | Large single-day move flagged — sanity-checked, real |
| HPE | 7 | +83.9% | Positive/improving | Moderate Buy | |
| PANW | 8 | +98.2% | Positive/improving | Moderate Buy (recent downgrade to Hold noted) | Rating mixed — watch |
| FLEX | 9 | +65.9% | Positive/improving | Buy | Large single-day move flagged — sanity-checked, real |
| CRWD | 10 | +86.4% | Positive/improving | Buy | |
| CNC | 11 | +69.5% | Positive/improving (+367% TTM) | Buy | Large single-day move flagged — this one swung hard on real 2025-26 guidance news; verify current thesis before entry, don't trust the FCF% at face value |
| KLAC | 12 | +22.2% | Positive/improving | Moderate Buy | |
| LRCX | 13 | +21.8% | Positive/improving | Buy | |
| MPC | 14 | +16.3% | Positive/improving | Buy | |
| ANET | 15 | +15.8% | Positive/improving | Buy | |
| WST | 16 | +26.8% | Positive/improving | Strong Buy/Overweight | Large single-day move flagged — sanity-checked, real |
| CVS | 17 | +20.2% | Positive/improving | Buy | |
| VLO | 18 | +6.4% | Positive/improving | Moderate Buy | |
| JBHT | 19 | +12.2% | Positive/improving | Buy | Large single-day move flagged — sanity-checked, real |
| MNST | 20 | +17.5% | Positive/improving | Buy | |
| DAL | 21 | +17.7% | Positive/improving | Buy | |
| ELV | 22 | +22.5% | Positive/improving (+78.8% TTM) | Buy | |

**Considered and dropped that week:** AMAT, GLW, ON, AXON, CDNS, URI, IBKR,
COHR, TRGP (negative FCF / sell-leaning despite momentum); LITE, VRT, GEV,
CIEN (failed the both-windows momentum gate); FTNT, HUM, DVA, NTAP, TXN, AKAM,
CAT, BEN, STT, FIX, NXPI, MGM, DOC, BBY, CSX, HPQ, GEN (Gemini coverage too
thin/mixed to confirm — treated as unconfirmed).

#### Satellite (small-cap biotech / industrials)

| Ticker | Sub-sector | YoY Growth | Analyst Rating | Catalyst | Catalyst Date | Max Loss If Catalyst Fails | Notes |
|---|---|---|---|---|---|---|---|
| OCUL | Biotech | +0.81% YoY (legacy DEXTENZA revenue actually down 12.76% TTM) — weak/flat, see note | Strong Buy (~$27 avg PT vs ~$10 price) | AXPAXLI (wet AMD) data presentations at ASRS/OIS/HC Wainwright conferences Jul 14-22, 2026; Pre-NDA FDA meeting Q3 2026; NDA filing Q4 2026 | Jul 14-22, 2026 (conference data); no single PDUFA date yet — this is a multi-stage regulatory process, not one binary date | Not yet a single-date binary event — size per standard 7.5% satellite cap, not the 5% binary-catalyst cap, until a PDUFA date exists. Re-evaluate cap if a firm PDUFA date is set. | **Growth criterion is a judgment call, not a clean pass**: OCUL's own revenue growth is flat/negative — its investment case is the regulatory catalyst and Strong Buy rating, not current top-line growth. $2.23B market cap, $666.7M cash (runway into 2028). Included with this caveat rather than silently passed. |

**Considered and dropped that week:** CAPR (dated catalyst but negative
momentum), VERA (catalyst already resolved; cap at/over $3B), TTMI/ONDS (over
$3B cap and classified Technology, not Industrials). No industrials name
cleared cap + sector + momentum + catalyst together.

_(no prior real weeks before 2026-07-11 — the bot launched that week)_
