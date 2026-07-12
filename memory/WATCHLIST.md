# Watchlist

Refreshed weekly (Friday, as part of the weekly-review workflow — see
"Weekly Screen Refresh" in TRADING-STRATEGY.md). Never trade a ticker that
isn't in the **Current** section below. Prior weeks are kept in History for
audit — never delete, only append.

## Current — Week of 2026-07-12

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

**2-strike sub-sector cooldown status:** NONE active. Zero satellite trades
have been executed to date (account still at the Day-0 baseline), so neither
biotech nor industrials is under a cooldown — both sub-sectors are open for new
positions next week.

## History

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
