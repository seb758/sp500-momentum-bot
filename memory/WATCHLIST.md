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

**Rechecked 2026-07-24:** CRDO, VICR, SEZL, DAVE, PACS, STRL
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
None of this pool independently surfaced in that week's fresh Gemini
satellite candidate search either.

**Rechecked 2026-08-07:** AMZN, LITE, CIEN, SNDK all
**still fail** the momentum gate on fresh Alpaca bars (AMZN 3M rel. -4.7pp
despite being above both MAs; LITE 3M rel. -11.2pp, below 50-day MA; CIEN
3M rel. -30.1pp, below 50-day MA; SNDK 3M rel. -11.1pp, below 50-day MA) —
four consecutive refreshes now without a reversal. CRDO/VICR/SEZL/DAVE/
PACS/STRL not re-checked this week (already confirmed core-ineligible and
satellite-sector-mismatched twice running; no new information would change
that). No changes to this queued list.

**Rechecked 2026-08-21 (this refresh):** AMZN, LITE, CIEN, SNDK all
**still fail** the momentum gate on fresh Alpaca bars (AMZN 3M rel. -4.7pp,
above both MAs but momentum gate requires positive on both windows — 6M rel.
also negative; LITE 3M rel. -1.6pp, above both MAs but flat; CIEN 3M rel.
-32.1pp, below 50-day MA; SNDK 3M rel. +12.1pp but 6M rel. very strong at
+146.3pp — a real, verified catalyst (Merck KGaA-style corporate action
aside, SNDK's own recent history includes a genuine spinoff-adjustment
artifact flagged in prior weeks) but still below its 50-day MA, so the
momentum gate (both MA + both windows) is not cleanly met) — five
consecutive refreshes now without a reversal on any of the four.
CRDO/VICR/SEZL/DAVE/PACS/STRL not re-checked this week (already confirmed
core-ineligible and satellite-sector-mismatched three refreshes running; no
new information would change that). No changes to this queued list.

## Current — Week of 2026-08-21

Fifth weekly screen refresh (weekly-review workflow, run 2026-08-21 for the
market weeks ending Fri 2026-08-14 and Fri 2026-08-21 combined — **the
2026-08-14 refresh never ran or never persisted**, the third such miss in
five weeks (7/17, 7/31, 8/14); see WEEKLY-REVIEW.md for detail). Full
~500-name universe re-screened via fresh Alpaca bars (S&P 500 constituent
list sourced from a GitHub-hosted dataset — direct Wikipedia access is
blocked by this environment's egress policy; spot-checked by confirming a
sample of very recent additions — RDDT (added 2026-08-18, three days before
this refresh), FERG (2026-08-05), CASY, HONA — all resolve to valid,
currently-traded securities via Alpaca). FMP 402'd on cashflow/growth/rating
for the entire 59-name shortlist this week (all endpoints, all tickers) —
core fundamentals validation came entirely from Gemini Deep Research,
batched ~10 tickers/query, run in parallel. FMP's `profile` endpoint (market
cap/sector only, no fundamentals) did work and was used to confirm sector
classification for several satellite candidates. Momentum math is Alpaca
price data as usual and is unaffected by the FMP gap.

**Data-quality catches this week (three, all more serious than any prior
week's):**
1. **TWIN (Twin Disc) was wrongly excluded for ~4 weeks on a fabricated
   "reverse-merger into a mining shell" finding.** That claim, first made in
   the 2026-07-24 refresh and never re-verified since, does not hold up:
   independent WebSearch this week found real, wire-verified full-year/Q4
   FY2026 earnings from Twin Disc (GlobeNewswire, AP, Motley Fool transcript,
   Investing.com) reported 2026-08-20 — record $114.4M Q4 revenue (+18.3%
   YoY), a 25% dividend increase, and continuous normal Nasdaq trading
   throughout (confirmed via Alpaca's own price/volume history, no gap or
   halt). Twin Disc has been a real, normally-operating public company the
   entire time; the "reverse merger" finding was never real. Re-added to the
   satellite list this week — see Satellite table.
2. **TENX (Tenax Therapeutics) and EYPT (EyePoint Pharmaceuticals) were
   sourced by this week's Gemini biotech-candidate search as live,
   upcoming-catalyst opportunities — for trials that had already failed
   catastrophically days before this screen ran.** TENX's Phase 3 LEVEL
   trial missed its primary endpoint on 2026-08-10 (confirmed via WebSearch:
   stock -89% that day, closed $1.69); Gemini's report described this as a
   still-pending "highly anticipated August data readout." EYPT's Phase 3
   LUGANO trial for DURAVYU missed its primary endpoint on 2026-08-17
   (confirmed: stock -71.5% that day); Gemini's report described EYPT as
   "maintaining robust technical support" heading into a "mid-to-late 2026"
   readout. Both were caught by the same mechanism that caught SCPH/NVEE
   (8/07) and SVRA's wrong PDUFA date (8/20): independent Alpaca price-history
   / WebSearch cross-check before trusting a Gemini-sourced catalyst as
   pending. Neither was added. **Process gap identified and closed this
   week** — see TRADING-STRATEGY.md change note below.
3. **ORN (Orion Group Holdings)** was resourced by this week's Gemini
   industrials search with a bullish "52-week high, JPM Overweight
   initiation" framing, but fresh Alpaca bars show it is **below both the
   50-day and 200-day MA with a -39.8pp 3-month relative return** — the
   opposite of the report's characterization, and consistent with ORN's
   long-standing illiquid-spread problems (flagged 07-21 through 08-10).
   Excluded on momentum-gate failure; the report's framing was not trusted
   over live price data.

The biotech satellite search (Gemini) was also **severely truncated** —
retrieved output opened mid-document, only 4 of the 11 named candidates
(CUE, CAPR, TENX, EYPT) had any supporting detail; the other 7 (KURA, PHAT,
ANAB, ACHV, SANA, VYGR, ENTA) were named with zero support and are **treated
as data-unavailable, not screened**, per the data-quality guard. Of the 4
with detail: TENX/EYPT excluded per above; CUE fails the momentum gate
(below 50-day MA despite volatile post-reverse-split price action, several
>20% single-day moves); CAPR has a real PDUFA catalyst but it is **tomorrow
(2026-08-22)** — too imminent for this workflow's weekly cadence to action
responsibly, logged as a high-risk binary watch only, not tradeable (same
treatment as REPL in prior weeks).

### Core (S&P 500 momentum + FCF)

| Ticker | Momentum Rank | 3M Rel. Return vs SPY | FCF Trend | Analyst Rating | Notes |
|---|---|---|---|---|---|
| DELL | 1 | +76.1% | Positive/improving (TTM FCF $9.44B) | Moderate Buy (1 Sell) | Rev +87.5%, AI-server demand. Flagged 21.9%/32.8% moves (02-27, 05-29) — real, verified prior weeks |
| MRVL | 2 | +31.5% | Positive/improving (TTM FCF +21.3% YoY) | Strong Buy | Rev +35% (Q2 FY27 est). Flagged +32.5% single-day (06-02) — verified real: Jensen Huang called MRVL "next trillion-dollar company" at Computex |
| HPE | 3 | +53.6% | Positive/improving (Q2 FCF $915M, FY guide >=$3.5B) | Moderate Buy | Rev +40%, AI systems bookings. Stopped out of a prior position 08-17 at +2.79% (winning exit); re-qualifies fresh this week |
| PANW | 4 | +38.8% | Positive/expanding (Q3 FCF +57% YoY) | Moderate Buy (1 Sell) | Rev +31.1%, NGS ARR +60%. A prior position was mandatory-cut -8.04% 08-19 (broad intraday softness, no thesis break found); re-qualifies fresh this week |
| MU | 5 | +30.2% | Positive/rapidly improving ($18.3B Q3 FCF) | Buy | Rev +345.8%, memory supercycle |
| NTAP | 6 | +59.1% | Positive/stable (29.8% FCF margin) | Hold (0 Sell — thin pass) | Rev +2.8%. Flagged +22.4% (05-29) — real, verified prior weeks |
| MPC | 7 | +35.8% | Positive/stable ($8.55B TTM FCF) | Hold/Moderate Buy (moderate Sell lean, 2/17) | Rev +55%, elevated crack spreads |
| EXPE | 8 | +46.1% | Positive (sequential decline from a Q1 peak) | Hold (0 Sell) | Rev +14%, B2B strength offsetting consumer macro headwinds |
| VLO | 9 | +31.7% | Positive/improving | Moderate Buy | Rev +48.8%, EPS $2.28->$12.54 YoY |
| IQV | 10 | +46.4% | Positive/improving (+23.3% YoY Q2) | Moderate Buy (0 Sell) | Rev +8.7%, record $34.2B R&DS backlog |
| WDAY | 11 | +53.0% | Positive/improving (Q1 FCF $616M, +46% YoY) | Moderate Buy, shifting toward Hold/Neutral | Rev +13.5%. Cautious FY27 guidance (12-13% subscription growth) drove recent downgrades — thin pass, watch |
| ZBRA | 12 | +45.2% | Positive/improving (FY guide raised to >=$1B) | Moderate Buy | Rev +20.4%, EPS $6.35 vs $4.36 est. Flagged +26.5% (08-04) — real Q2 beat, verified prior weeks |
| VEEV | 13 | +49.0% | Positive/improving (43.5% FCF margin) | Moderate Buy (minimal Sell) | Rev +16.3%, Falcon AI platform adoption |
| PSX | 14 | +30.9% | Positive/improving (Q2 opcf $5.6B) | Moderate Buy | Rev $52.04B (from $33.3B YoY), EPS $2.15->$9.59 |
| ABNB | 15 | +33.6% | Positive/improving (37% FCF margin) | Buy (minor 4% Sell) | Rev +17%, international + Gen Z adoption |
| BBY | 16 | +37.7% | Positive/improving (FCF/share +30.5% TTM) | Hold (9% Sell, 2/22 — thin pass) | Rev +2.0%, computing/gaming offsetting appliance weakness |
| TGT | 17 | +26.5% | Positive reversal (9.2% FCF margin, up from a Q1 outflow) | Hold (9.3% Sell, 3/32 — thin pass) | Rev +5.3%, EPS +20% |
| APA | 18 | +10.0% | Positive/consistent ($1.2B H1 FCF) | Hold (0 explicit Sell) | Rev +8.7%, paid down $752M debt |
| ANET | 19 | +27.9% | Positive/expanding (TTM FCF $5.15B) | Buy (unanimous, 0 Sell) | Rev +35.1%, AI-inference networking demand |
| BKNG | 20 | +30.8% | Positive/accelerating (+16% YoY Q2) | Buy (convicted, 0 Sell) | Rev +8.0%, 97% ROIC |
| DASH | 21 | +35.5% | Positive/sharply improving (+109% YoY) | Buy (overwhelming, 0 Sell) | Rev +36%, retail/grocery vertical growth |
| XYZ | 22 | +10.1% | Positive/accelerating (TTM FCF +172% YoY) | Moderate/Strong Buy (minor 3.8% Strong Sell) | Rev +9.3%, gross profit +25%, Cash App scaling |

**Sector-concentration cap:** semis + AI-hardware cluster (DELL, MRVL, HPE,
MU, NTAP) is 5 of 22 names (22.7%), well under the ~40% cap — not binding
this refresh. Distinct groupings represented: AI-hardware/semis (5),
software (PANW, WDAY — 2), other IT hardware/networking (ZBRA, ANET — 2),
energy (MPC, VLO, PSX, APA — 4), consumer discretionary (EXPE, ABNB, BBY,
BKNG, DASH — 5), health care (IQV, VEEV — 2), consumer staples (TGT — 1),
financials (XYZ — 1) — 8 distinct groupings.

**BAX (currently held core position, bought 08-13) drops off this week's
list.** Momentum still clears cleanly (above both MAs, +37.8pp 3M rel.
return), but the fresh fundamentals check found real deterioration since
the 08-07 screen: analyst consensus moved from "Constructive, no Sell" to
**Hold with a distinct 15% Sell lean (2 of 13 analysts)**, and Gemini's
report separately flagged negative net margins and elevated leverage as
live analyst concerns. This is week 1 off the watchlist — per
TRADING-STRATEGY.md's thesis-broken rule, a name off the watchlist two
Fridays running triggers an exit regardless of P&L. Flagging prominently for
daily sessions to track; BAX's position P&L (currently modestly negative,
well clear of its -7% cut) does not itself force an exit yet.

**Failed fundamentals this week (momentum passed, FCF/growth/rating did
not):**
- **MRNA** — real, verified momentum catalyst (Phase 3 melanoma vaccine data
  with Merck, +177% single-day 08-19, confirmed via WebSearch — not a data
  artifact) but **negative FCF** (-$1.58B TTM, -$1.15B H1 2026 burn) fails
  the core FCF criterion outright, same treatment as MRNA's 07-12 exclusion.
- **CRL** — FCF trend flat/declining ($21M YoY dip to $149M) plus revenue
  -2.7% YoY.
- **HPQ** — Reduce/Sell-leaning consensus (5 Sell vs 2 Buy).
- **FDS** — Reduce/Sell-leaning consensus (6 Sell of ~18 analysts).
- **PYPL** — Hold leaning neutral-to-negative (3 Sell + 1 Underperform vs 5
  Buy of 41); separately a poor technical fit given the ongoing
  Stripe/Advent takeover-bid speculation (~$59, +19% on the bid) — same
  "M&A price spike, not the momentum+FCF signal this screen targets"
  judgment applied to AVDL/TECH.
- **TECH (Bio-Techne)** — pending $11.3B all-cash acquisition by Merck KGaA
  (board-approved, trading within pennies of the $73 deal price) — poor
  technical fit (M&A arb, not organic momentum), also Hold with a Sell lean
  and flat revenue.
- **BAX** — see callout above (currently held, dropped this week).
- **AMGN** — FCF not explicitly isolated in the report (data gap, treated as
  unconfirmed per the data-quality guard) plus a notable 9.7% Sell lean
  (3/31).
- **LH** — FCF declining 42% YoY to $314M.
- **IT (Gartner)** — notable Sell-leaning sentiment, multiple Sell/Strong
  Sell/Underweight ratings on valuation.
- **GPN** — definitive Sell-leaning consensus, multiple Sell/Strong Sell on
  Worldpay integration risk.
- **AXON** — FCF flat/near-zero this quarter (inventory build), premium
  valuation (>50x forward) keeping some institutions on the sidelines.
- **SWK** — Hold with a Sell lean present, flat reported revenue.
- **PAYX** — Hold with a notable ~23% Sell lean.
- **ADP** — Hold with a notable ~18% Sell lean (2/11).
- **RVTY** — flat/declining FCF trend, FY26 revenue forecast slightly
  negative (-0.18%).
- **WST** — **data-quality flag, not a clean fundamentals fail**: this
  week's Gemini report cites the identical "$128.0M" FCF figure used in the
  08-07 exclusion, but frames it oppositely — as a single strong Q2 figure
  (up from $47.2M in Q1, TTM +27% YoY) rather than a declining H1 total
  (08-07: "$128.0M H1 2026 vs. $160.0M prior year"). Two irreconcilable
  readings of the same number in consecutive weeks — held out pending a
  clean re-verification rather than flipped on an unresolved conflict.

**Sector-capped alternates** (passed momentum + fundamentals, held out only
by the 22-name cut line): GPC, DXCM, ROP, BNY, WTW, TRGP, NOW, AJG, GRMN,
LLY, DGX, NWS, WSM, STT, A, TMO, INCY, PLTR, MRK — all confirmed
positive/flat-or-better FCF + positive-or-stable growth + not-Sell/Strong-Sell
consensus via this week's Gemini batches. (NWSA, News Corp's non-voting
share class, is a duplicate of NWS and excluded as such, not screened
separately.)

### Satellite (small-cap biotech / industrials)

| Ticker | Sub-sector | YoY Growth | Analyst Rating | Catalyst | Catalyst Date | Max Loss If Catalyst Fails | Notes |
|---|---|---|---|---|---|---|---|
| MNKD | Biotech | Positive (Q2 rev +43% YoY to $109.4M) | Polarized (Zacks/Weiss Sell vs. Mizuho/Wells Fargo bullish) | FUROSCIX ReadyFlow PDUFA resolved 07-24 (approved); MNKD-201 IPF readout next, no firm date | No firm date | Not a single near-dated binary -> standard 7.5% cap | **Held position**, +5.8% unrealized. **Momentum watch item**: 6M relative return has turned decisively negative (-34.4pp, below where it was at the 08-07 refresh) even though 3M remains strongly positive (+28.2pp) and both MAs still hold — a post-earnings cooldown, not (yet) a thesis break. Catalyst remains resolved; no new binary |
| RIGL | Biotech | Positive (Q2 record rev $78.7M beat, FY26 guide raised to $285-295M) | Hold-to-Buy, consensus not Sell | VEPPANU commercial launch resolved 08-13 | Resolved | Not a single near-dated binary -> standard 7.5% cap | **Held position**, +9.4% unrealized. Momentum clean on both windows (+54.1pp 3M, +12.1pp 6M rel., above both MAs). Thesis fully intact |
| CGEM | Biotech | Growth is a judgment call — pre-revenue, same treatment as prior weeks | Strong Buy/Moderate Buy | zipalertinib NDA FDA-accepted (Breakthrough Therapy, target action Feb 27, 2027 — confirmed, not imminent) | Not inside the 5-day window | Not a single near-dated binary -> standard 7.5% cap | Balance sheet remains the strength (heavily de-risks near-term dilution). Momentum strengthened further this week (+46.3pp 3M, +42.6pp 6M rel., above both MAs) |
| TWIN | Industrials | Positive (Q4 FY26 rev +18.3% YoY to $114.4M, record; FY net income $27.1M vs. a prior-year loss) | Historically Buy-leaning (specific consensus not confirmable this week) | Aug 20 Q4/FY earnings (resolved, positive) + 25% dividend increase; defense backlog +56% YoY (17% of $178.3M six-month backlog) | Resolved 08-20 | Not a single near-dated binary -> standard 7.5% cap | **Re-added — see data-quality catch #1 above.** Wrongly excluded since 07-24 on a fabricated "reverse merger" finding; independently confirmed this week as a real, continuously-traded company via GlobeNewswire/AP/Motley Fool coverage plus Alpaca price/volume history. Full annual profit included a $14.0M non-operational tax benefit and a LIFO->FIFO accounting change — noted, doesn't change the underlying 18% revenue growth |
| SHIP | Industrials | Positive (Q2 rev +49% YoY to $55.7M, EPS $0.14->$1.21) | Strong Buy | Dry-bulk Capesize rate strength (Red Sea rerouting); $0.35/share dividend declared (ex-date 09-25, ~8% annualized yield) | Dividend ex-date 09-25 (not binary-regulatory) | Not a single near-dated binary -> standard 7.5% cap | Seanergy Maritime, ~$325M cap (at the floor). Momentum modest but clean (+3.7pp 3M, +13.0pp 6M rel., above both MAs). Only caution flag: continued net insider selling over the past year (most recent: a director's $258K sale) |

**Considered and dropped this week:**
- **SVRA** — dropped: **fails the live momentum gate** (below both the
  50-day and 200-day MA, after clearing cleanly at the 08-07 refresh) even
  though its PDUFA catalyst (Nov 22, 2026, Priority Review) remains real and
  unchanged. A momentum reversal, not a data issue — revisit if price action
  recovers ahead of the PDUFA date.
- **CUE** — sourced this week (biotech), real +293% YTD move, but fails the
  momentum gate (below the 50-day MA) and carries multiple large single-day
  swings tied to a 1-for-30 reverse split — not clean enough to trust
  despite a real Q3 2026 catalyst window.
- **CAPR** — real, hard PDUFA catalyst (Deramiocel, DMD cardiomyopathy) but
  the goal date is **2026-08-22 — tomorrow**. Too imminent for this weekly
  workflow to action responsibly; logged as a high-risk binary watch only,
  not tradeable, same treatment as REPL.
- **TENX, EYPT** — sourced this week as live opportunities but both already
  had catastrophic Phase 3 failures (TENX -89% on 08-10, EYPT -71.5% on
  08-17) before this screen ran. See data-quality catch #2 above. Excluded
  outright.
- **KURA, PHAT, ANAB, ACHV, SANA, VYGR, ENTA** — named in the biotech report
  with zero supporting detail (severe truncation). Treated as data
  unavailable, not screened this week — not a pass, not a documented fail.
- **ORN** — see data-quality catch #3 above. Fails the live momentum gate
  despite a bullish (and incorrect) Gemini characterization.
- **UMAC (Unusual Machines)** — real momentum and fundamentals (687% YoY
  revenue growth, Moderate Buy, DoD drone-procurement tailwind) but FMP's
  `profile` endpoint classifies it **Technology — Hardware, Equipment &
  Parts**, not Industrials. Excluded on sector-fit grounds, same treatment
  as GCT/KRT below — the strategy's satellite box is biotech or industrials
  only.
- **RCAT, WLDN** — both fail the live momentum gate on one window (RCAT: 6M
  rel. -37.1%; WLDN: both windows negative) despite real earnings beats.
- **GCT (GigaCloud)** — clears momentum cleanly but is a B2B e-commerce/
  logistics platform, not biotech or industrials — sector mismatch, same
  judgment as UMAC.
- **KRT (Karat Packaging)** — momentum clears, but headline 168% net income
  growth is mostly a one-time tariff-refund artifact (core margin actually
  contracted 190bp), rating is mixed Hold/Buy — doesn't clear the "Buy/
  Outperform or better" bar cleanly.
- **BXC (BlueLinx)** — momentum is weak on the 6-month window (+1.5pp rel.,
  essentially flat) despite a real Q2 beat and new Trex partnership; held
  out this week, revisit if 6M strengthens.
- **AMZN, LITE, CIEN, SNDK** (standing queued candidates, rechecked this
  refresh) — all still fail the momentum gate; see "Candidates Queued for
  Next Screen Refresh" above.
- **OCUL, FSTR, CVLG, TWIN(pre-correction), REPL, QTTB, KFRC, MLTX, PTGX,
  TILE, BXC(prior weeks), JBI** — no fresh research run on these beyond what's
  covered above; prior exclusion reasoning stands where not superseded.

**2-strike sub-sector cooldown status (updated 2026-08-21):** NONE active.
Biotech still at strike 1 of 2 (OCUL's 2026-07-23 stop-out) — no new
biotech loss this period (MNKD, RIGL both held throughout, no exits).
Industrials remains at 0 strikes; TWIN/SHIP being newly added doesn't affect
this tracker.

## History

### Week of 2026-08-07

Fourth weekly screen refresh (weekly-review workflow, run 2026-08-07 for the
market weeks ending Fri 2026-07-31 and Fri 2026-08-07 combined — **the
2026-07-31 refresh never ran or never persisted**, the second such miss in
four weeks (the first was 7/17); see WEEKLY-REVIEW.md for detail). Full
~500-name universe re-screened via fresh Alpaca bars (S&P 500 constituent
list sourced from a GitHub-hosted, Wikipedia-derived dataset since direct
Wikipedia/stockanalysis.com/GitHub-API access was blocked by this
environment's egress policy this session — spot-checked by confirming a
sample of unusual recent-addition tickers, e.g. FERG/HONA/CASY/ARES/VEEV,
resolve to valid, currently-traded securities via Alpaca rather than via a
true second listing source). FMP 402'd on cashflow/growth for effectively
the entire ~50-name shortlist (only 5/50 — PYPL, CSCO, DAL, UAL, TGT —
returned a usable rating directly) — core fundamentals validation came
almost entirely from Gemini Deep Research, batched ~10 tickers/query, run
in parallel. Momentum math is Alpaca price data as usual and is unaffected
by the FMP gap.

**Data-quality catch this week:** the satellite candidate-sourcing round
(see Satellite section) surfaced two tickers — SCPH and NVEE — presented as
live, independently-tradeable small/mid-cap candidates. Both were
disproved before being added: SCPH (scPharmaceuticals) was fully acquired
by MannKind (MNKD, the bot's own held satellite position) in a deal that
closed 2025-10-07 and is no longer an independent public company; NVEE (NV5
Global)'s Alpaca bar history stops dead in early August 2025, a full year
before this screen, consistent with a merger/delisting the sourcing report
itself half-described (an "Acuren merger completion" catalyst). Neither
would have been caught without the independent Alpaca price-history
cross-check required by STEP 7c — flagging this as a concrete, real
instance of the kind of fabrication the data-quality guard exists to catch,
not a hypothetical.

### Core (S&P 500 momentum + FCF)

| Ticker | Momentum Rank | 3M Rel. Return vs SPY | FCF Trend | Analyst Rating | Notes |
|---|---|---|---|---|---|
| DELL | 1 | +85.0% | Positive/rapidly improving (+174% YoY TTM FCF to $9.44B) | Buy/Strong Buy | Rev +87.5%, $43B backlog, AI-server demand. Flagged 21.9%/32.8% moves (02-27, 05-29) — real, verified prior weeks |
| PANW | 2 | +77.9% | Positive/improving (Q3 adj FCF +57% YoY) | Buy/Moderate Buy | Rev +31.1%, platformization + AI product adoption driving bookings |
| HPE | 3 | +71.5% | Positive/improving (Q2 FCF $915M, +$1.8B YoY) | Moderate Buy/Buy | Rev +40%, FY FCF outlook raised to >=$3.5B on AI systems bookings |
| CRWD | 4 | +59.0% | Positive/improving (Q1 FCF $493M, +24.8% seq) | Strong Buy/Buy | Rev +26%, >27% of revenue converts to cash, Falcon-platform consolidation |
| NTAP | 5 | +64.4% | Positive/improving (FY FCF $1.869B, +40% YoY) | Hold | Rev +12.5%. Rating caveat: Hold with some minor sell-leaning sentiment vs. legacy-storage headwinds — not a clean pass, watch |
| ZBRA | 6 | +54.3% | Positive/improving (FY guide raised to >=$1.0B) | Buy | Best quarter in company history (EPS $6.35 vs $4.36 est, rev +20.4%). Flagged 26.5% move (08-04) — real Q2 beat, independently verified |
| CRL | 7 | +41.1% | Positive/flat ($21M YoY dip on working-capital timing) | Buy | Rev -2.7% (NA small-research-model demand weakness) but FY FCF guide raised to $400-420M — growth is the caveat here, not FCF |
| ANET | 8 | +30.6% | Positive/improving (TTM FCF $5.278B, +39.4% YoY) | Buy/Strong Buy | Rev +37.7%, AI-inference data-center networking demand |
| VLO | 9 | +23.1% | Positive/cyclically flat | Buy/Strong Buy | Rev +58%, net income +420%, tight refining capacity + Gulf Coast crude advantage |
| PYPL | 10 | +24.3% | Positive/improving ($7B TTM FCF) | A-grade (FMP), no Sell | $6B buyback authorized; rev +5%, EPS -1% YoY (transformation-spend margin compression) |
| BAX | 11 | +49.4% | Positive/improving (Q2 FCF $181M, up from $76M prior qtr) | Constructive, no Sell | Rev +5.0%, medical products/therapies demand |
| CSCO | 12 | +26.1% | Positive/flat | B-grade (FMP), no Sell | Rev +12% (record $15.8B), EPS +10%, hyperscaler AI-infra orders + core networking |
| CNC | 13 | +11.7% | Positive/rapidly improving (TTM FCF $8.97B, margin 2.9%->8.3%) | Constructive, no Sell | Rev +7.1%. Flagged 40% move — real guidance swing (verified prior weeks), verify thesis before entry |
| GRMN | 14 | +19.7% | Positive/improving (TTM FCF $1.60B, +19.3%) | Moderate Buy | Rev +9.0%, fitness/marine/aviation demand |
| MPC | 15 | +18.5% | Positive/flat (Q2 opcf $6.6B) | Moderate Buy | Rev +8.5%, elevated refining crack spreads |
| FFIV | 16 | +14.7% | Positive/flat-improving (Q3 FCF $281M) | Constructive, no Sell | Rev +11.0%, 8th consecutive quarter of double-digit product-revenue growth |
| STT | 17 | +19.2% | Positive/improving | Moderate Buy | Q2 rev $4.0B (all-time high, +17%), EPS +68% |
| NUE | 18 | +14.9% | Positive/improving (Q2 FCF $829M) | Buy | Rev +23.0%, pricing tailwinds + record shipment volumes |
| GEN | 19 | +34.1% | Positive/flat (Q2 FCF $476M, TTM FCF +26% to $1.52B) | Hold | Rev +11.0% |
| XYZ | 20 | +7.6% | Positive/aggressively improving (TTM FCF $3.26B, +172% YoY) | Strong Buy | Gross profit +31%, Cash App scaling + S&P 500 inclusion |
| URI | 21 | +18.1% | Positive/flat (H1 FCF -4.1% YoY on elevated equipment capex) | Buy/Overweight | Rev +11.8%, EPS +10.1%, record margins + raised guidance. Flagged 22.9% move (04-23) — real, verified prior weeks |
| MET | 22 | +21.8% | Positive/flat | Buy/Hold | Q2 PFOs +7%, adj EPS +20% to $2.43, 17% adjusted ROE |

**Sector-concentration cap:** semis + AI-hardware cluster (DELL, HPE, NTAP —
the only names from that group to clear momentum this week; AMD/MU/STX/
WDC/AMAT all failed the live momentum gate, continuing the pattern flagged
across every daily session this week) is 3 of 22 names (13.6%), well under
the ~40% cap — not a binding constraint this refresh. Distinct groupings
represented: IT hardware/storage (DELL, HPE, NTAP — 3), cybersecurity/
software (PANW, CRWD, GEN — 3), other IT hardware/networking/instruments
(ZBRA, ANET, CSCO, FFIV — 4), health care (CRL, BAX, CNC — 3), financials
(PYPL, STT, XYZ, MET — 4), energy (VLO, MPC — 2), consumer discretionary
(GRMN — 1), materials (NUE — 1), industrials (URI — 1) — 7 distinct GICS
sectors.

**Failed fundamentals this week (momentum passed, FCF/growth/rating did
not):**
- **FTNT** — Hold consensus with a notable and growing Sell/Strong Sell
  leaning fraction, including a recent downgrade to Strong Sell by DZ Bank,
  despite strong FCF (Q2 FCF more than tripled YoY to $966M) and rev
  +25.6% — valuation/timing-risk concerns, not a fundamentals miss.
- **HPQ** — consensus leans "Hold/Reduce" with 5 analysts issuing Strong
  Sell ratings, too bearish-skewed to clear the not-Sell/Strong-Sell bar,
  despite positive/improving FCF.
- **WST** — FCF trend is explicitly negative over the last few quarters
  ($128.0M H1 2026 vs. $160.0M prior year, on working-capital/capacity
  investment) despite strong rev +13.8%/EPS +28.8% growth — fails the core
  FCF criterion specifically.
- **TRV** — Hold consensus with a distinct Sell leaning (5 of 26 analysts,
  ~19%) on catastrophe-loss and AI-pricing-cycle valuation concerns.
- **FDS** — Hold consensus with a distinct Sell leaning (29% Sell + 7%
  Strong Sell, ~36% combined) on margin-compression and competitive
  concerns.
- **PAYX** — Hold consensus with a distinct Sell leaning (23-29% of
  analysts) on expected organic-growth deceleration and premium valuation.

**Sector-capped alternates** (passed momentum + fundamentals, held out only
by the 22-name cut line, not a fundamentals fail — the sector cap itself
was not binding this refresh): APH, IQV, DAL, ALL, PSX, DXCM, BBY, EXPE,
BNY, AXON, UAL, WSM, TER, TGT, CPAY, AIZ, DGX, GL, GPN, VEEV, STLD, ROST —
all confirmed positive/flat-or-better FCF + positive growth +
not-Sell/Strong-Sell consensus via this week's Gemini batches or direct FMP
ratings.

### Satellite (small-cap biotech / industrials)

| Ticker | Sub-sector | YoY Growth | Analyst Rating | Catalyst | Catalyst Date | Max Loss If Catalyst Fails | Notes |
|---|---|---|---|---|---|---|---|
| MNKD | Biotech | Positive (Q2 rev +43% YoY to $109.4M, Furoscix-acquisition-driven; EPS -$0.06 miss on launch spend) | Polarized — see note | FUROSCIX ReadyFlow PDUFA resolved 07-24 (approved); MNKD-201 IPF readout is the next pipeline milestone, no firm date | No firm date yet for MNKD-201 (pipeline milestone, not imminent) | Not a single near-dated binary → standard 7.5% cap. Existing position was sized at the 5% binary cap ahead of the (now-resolved) PDUFA; no forced resize on an existing position | **Held position**, +2.0% unrealized. Rating remains polarized (Zacks/Weiss Sell vs. Mizuho/Wells Fargo bullish, per 07-24 refresh, unchanged this week). New watch item: momentum has turned decisively negative post-earnings (6M rel. return -42.8%, now below both 50d/200d MA) — not a thesis break (catalyst resolved, growth still positive) but worth tracking if it persists |
| RIGL | Biotech | Positive (Q2 2026 record revenue $78.7M beat, EPS $0.88 vs $0.21 consensus; FY26 guidance raised to $285-295M, excludes VEPPANU) | Consensus not Sell | VEPPANU (vepdegestrant) commercial launch, guided "mid-August 2026" on the 8/4 earnings call | ~5-8 trading days out as of 08-07 (approaching the 5-day gap-risk window) | Not a single regulatory binary → standard 7.5% cap ($7.5k); re-evaluate cap if the launch date firms up further | Momentum now clears the gate cleanly (3M rel. +44.4pp, above both MAs) after a strong post-earnings run. **Repeatedly failed the wide/illiquid-spread skip rule in prior sessions (7/27, 7/29, 8/3, 8/4)** — re-verify live liquidity before any entry, don't assume the spread has normalized |
| CGEM | Biotech | **Growth criterion is a judgment call** — pre-revenue, same treatment as prior weeks. Q2 2026 EPS -$0.81 vs -$0.80 consensus (immaterial miss, reported 08-06) | Strong Buy/Moderate Buy | zipalertinib NDA FDA-accepted (Breakthrough Therapy, target action **Feb 27, 2027** — confirmed, not imminent); CLN-049 cleared a positive End-of-Phase 1 FDA meeting 07-28, Phase 2 initiation guided Q3 2026 | No binary catalyst inside the 5-day window as of 08-07 — catalyst-light near-term period | Not yet a single near-dated binary → standard 7.5% cap | Balance sheet remains the strength (heavily de-risks near-term dilution vs. REPL, excluded again below). Momentum still clears cleanly (3M rel. +16.9pp, above both MAs) despite the quiet catalyst calendar |
| SVRA | Biotech | **Growth criterion is a judgment call** — pre-revenue, same treatment as CGEM/OCUL prior weeks | Strong Buy (8 of 8 analysts) | FDA PDUFA date for molgramostim (MOLBREEVI) in autoimmune PAP — Priority Review; the FDA's 3-month extension explicitly cited no safety/efficacy/manufacturing concerns. First-ever approved therapy for this indication if cleared | **2026-11-22** (Priority Review PDUFA) — ~3.5 months out, not within the 5-day gap-risk window yet | Not within the near-term binary window → standard 7.5% cap for now; re-cap to the 5% binary-catalyst tier as the PDUFA date approaches | **New this week.** Independently verified via WebSearch after a related candidate (SCPH, see below) from the same sourcing round proved to be a fabrication — extra scrutiny applied. $203M cash, runway into H2 2027. Momentum clears the gate (3M rel. +7.2pp, above both MAs) |

**Considered and dropped this week:**
- **FSTR** — dropped: now **fails the live momentum gate** (below the
  50-day MA, 3M rel. return -1.3%) despite a real Q2 earnings catalyst
  (08-10, pre-market) and passing fundamentals in the prior refresh — a
  genuine reversal in price action, not a data issue. Revisit post-earnings
  if momentum recovers.
- **CVLG** — dropped: **fails the live momentum gate** (below the 50-day
  MA, 3M rel. return ~flat at +0.2%), consistent with the margin-
  compression concern flagged in the 07-24 refresh (driver-wage inflation,
  equipment-cost inflation) now showing up in price action. No near-dated
  catalyst currently documented either (next scheduled event is a 09-04
  ex-dividend date, not catalyst-relevant).
- **SCPH (scPharmaceuticals)** — sourced this week's Gemini candidate round
  as a live "$304M standalone biotech" with a Q2 2026 print, but WebSearch
  confirms it was fully acquired by MannKind (MNKD — the bot's own held
  satellite position) in a deal that closed 2025-10-07; it is not an
  independent public company. Excluded as a **confirmed fabrication**, not
  a fundamentals fail — see the data-quality note above the Core table.
- **NVEE (NV5 Global)** — same sourcing round; Alpaca's bar history for
  this ticker stops in early August 2025, a full year stale relative to
  this screen, consistent with the merger the sourcing report itself
  half-described ("Acuren merger completion" catalyst). Excluded as
  unconfirmable / likely delisted-or-renamed.
- **ARVN, EYPT, XERS, WLDN, LMAT** — all sourced this week, all **fail the
  live momentum gate** (below the 50-day and/or 200-day MA, negative 3M
  relative return) despite strong headline fundamentals in some cases —
  e.g. ARVN's reported "+1,014% YoY revenue" is a one-off deferred-
  collaboration-revenue recognition (Pfizer/Rigel payments), not organic,
  and the price action doesn't confirm a real momentum signal. Momentum/
  volume confirmation is required per STEP 7c, not just a fundamentals
  pass — the research agent's candidate list is a starting point, not a
  pass, per the standing rule.
- **AVDL (Avadel)** — real momentum and growth, but the rating is
  explicitly "Hold, pending Alkermes merger finalization," not
  Buy-leaning, and the driving "catalyst" is M&A-completion rather than
  the strategy's intended catalyst types (FDA/regulatory decision,
  government contract, trial readout, confirmed price jump). Excluded as a
  poor fit, not a fundamentals fail.
- **HEES, MYRG, QURE, DFTX, MIRM, COGT** — all sourced this week with
  genuinely strong momentum/growth, but all now trade at $3.15B-$6.96B
  market cap, over the $300M-$3B satellite cap. Out on size, same as prior
  weeks' cap-based exclusions (PTGX, etc.) — the sourcing report itself
  flagged these as over-cap outliers included only for momentum-study
  purposes, not as tradeable candidates.
- **AMZN, LITE, CIEN, SNDK** (standing queued candidates, rechecked this
  refresh) — all still fail the momentum gate; see "Candidates Queued for
  Next Screen Refresh" above.
- **OCUL, KFRC, MLTX, PTGX, TILE, BXC, JBI, ORN, TWIN, REPL, QTTB** —
  no fresh research run on these this week (satellite sourcing focused on
  new candidates per STEP 7a); their 07-24-refresh exclusion reasoning
  stands unchanged. REPL remains a high-risk binary watch only, not
  tradeable, per the same existential-cash-burn reasoning as before.

**2-strike sub-sector cooldown status (updated 2026-08-07):** NONE active.
Biotech still at strike 1 of 2 (OCUL's 2026-07-23 stop-out) — no new
biotech loss this period (MNKD held throughout, not stopped out); one more
consecutive losing biotech satellite trade triggers a 2-week cooldown.
Industrials remains at 0 strikes.

### Week of 2026-07-24

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

#### Core (S&P 500 momentum + FCF)

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

#### Satellite (small-cap biotech / industrials)

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
