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

## 2026-07-22 — Pre-market Research

### Account
- Equity: $98,030.56 | Cash: $19,558.40 (19.95%) | Buying power: $294,019.03 (margin-inflated by the standing 4x multiplier flag — no margin/leverage was or will be used) | Daytrade count: not present in account payload
- Core exposure: $10,195.50 (10.40%, HPE) | Satellite exposure: $11,810.70 (12.05%: MNKD $4,920.75 / OCUL $6,889.95) | Income exposure: $56,465.96 (57.60%: EDGX $19,804.44 / SGOV $16,699.60 / SPHY $19,961.92)
- Cash 19.95% is marginally below the 20% floor (~$77 short) — a same-moment price-appreciation drift, not a funding-shortfall breach (no buy was placed since the last sweep). Not actionable pre-market; re-check at market-open if a new buy needs funding.
- All 6 open positions (HPE, MNKD, OCUL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing.

### Market Context
- **Data-quality gap (recurring):** today's Gemini Deep Research output again started mid-document — it returned the OCUL/ORN/FSTR/TWIN/RIGL satellite section and a "Strategic Synthesis" close, but sections 1-3 (S&P futures/VIX, macro catalysts/GOOGL reaction, HPE held-ticker check) and the full core-watchlist section 4 were not returned as standalone content. Backfilled via native WebSearch below rather than firing a second 5-20min Deep Research call. This is now a long-recurring pattern (flagged 07-12, 07-13, 07-14, and again today) — still unresolved at the prompt-structure level, worth a hard look at the next weekly review.
- **Data-integrity flag:** Gemini's OCUL commentary cited "recent closes situated between $14.56 and $18.21" — this is wildly inconsistent with our live Alpaca fill ($9.15) and WebSearch-confirmed mid-July trading range (~$8.90-$9.15). Treating this as a hallucinated/wrong-ticker data point, not a real price level — not used for any decision.
- **S&P 500 futures / VIX (via WebSearch):** futures -0.33% premarket, Nasdaq-100 futures -0.7%; VIX ~17.41 (+2.11%). Premarket weakness attributed to investors positioning ahead of Alphabet (GOOGL) and Tesla (TSLA) earnings after today's close, plus fresh tariff headlines and rising oil prices.
- **GOOGL earnings — correcting an error in today's research query:** I mistakenly asked Gemini for GOOGL's "reaction" as if it had already reported. It has NOT reported yet — Alphabet reports Q2 results after market close TODAY (7/22), not yesterday. Consensus: EPS $2.87 (+24% YoY), revenue ~$116.5B (+21% YoY). Alphabet raised FY26 capex guidance to $180-190B and flagged 2027 capex rising further; Q1 FCF fell 47% YoY as capex rose 107%. This is the single biggest incremental read-through for the core AI-hardware cluster (18/24 core names) and will not resolve until after tonight's close — not a pre-market factor today, but the top risk item into tomorrow.
- **HPE (held, core) — thesis check (via WebSearch):** no negative news. GTT Communications expanded a strategic partnership with HPE for cloud-first enterprise networking; Private Cloud AI business continues strong YoY growth. Thesis intact, no action.
- **MNKD (held, satellite) — thesis check (via WebSearch):** no negative news. FDA PDUFA for FUROSCIX ReadyFlow Autoinjector reconfirmed on track for Jul 26, 2026 (4 calendar days out) — same date as documented at entry, no delay. No new competitive or safety signal beyond the already-logged UTHR Tresmi thesis note.
- **OCUL (held, satellite) — thesis check (via WebSearch):** no negative news. HC Wainwright 6th Annual Ophthalmology Virtual Conference fireside chat is TODAY (informational, not binary, as previously flagged). AXPAXLI NDA filing still planned Q4 2026. Thesis intact, no action.
- **Semiconductor/AI-hardware sector — material escalation vs. prior sessions:** WebSearch confirms the Philadelphia Semiconductor Index (SOX) is now down ~24% from its late-June high and has technically entered a bear market, with ~$3.3T in global semiconductor market value erased since June 22. Drivers: TSMC's Q3 capex guide feeding margin-compression worries, SK Hynix HBM expansion slowdown, hawkish Fed repricing under Chair Warsh, and broadening skepticism on AI-infra ROI. This directly affects the AI-hardware-concentrated core watchlist (MU, AMD, STX, WDC, MRVL, DDOG, AMAT, LRCX, KLAC — 9 of 24 names, part of the broader 18/24 AI-adjacent cluster). No confirmed thesis break on any individual name from this research pass (would require live Alpaca bars to check 50/200-day MA and 3M/6M relative return, which is a market-open/weekly-review task, not pre-market), but this is a materially worse read than 07-21's "semis stabilizing" note — flag as the top core-side risk factor today, compounding into tonight's GOOGL print.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. No confirmed thesis break on any of the 24 current core names, but the SOX bear-market confirmation above plus tonight's GOOGL earnings argue strongly against any new core entry pre-market. Defer to market-open/11am with live bars if conditions stabilize — do not chase into this much sector-level uncertainty.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — PDUFA reconfirmed on track for Jul 26, 2026, 4 calendar days out — still inside the 5-trading-day gap-risk window, already sized at the 5% binary-catalyst cap per the 07-21 entry. No new information changes the thesis. Continue holding through the catalyst per the documented plan; re-check Thu/Fri as the window closes.
2. **ORN** — Gemini confirms Q2 2026 earnings after close Tue Jul 28, 2026 (call Jul 29) — exactly 4 trading days out, inside the 5-day window. Technicals noted as weakened (short/long MA crossover, lower volume, pulled back to ~$12.80) heading into the print — a real risk factor for a name whose thesis was data-center/marine-infrastructure momentum. No position held. Not an entry pre-market (no live quote pulled); flag for market-open re-evaluation with a fresh quote (last session's quote was implausible/stale per the 07-21 note — recheck before treating any level as tradeable).
3. **RIGL, FSTR** — no overnight news, no near-term catalyst confirmed within the 5-day window. No action.
4. **TWIN** — still thesis-broken (reverse-merger/privatization into a mining shell, flagged since 07-13/07-15). Repeating the standing recommendation to formally drop it at the next weekly screen refresh — this has now been flagged unactioned across multiple sessions.

### Risk Factors
- SOX in a confirmed technical bear market (-24% from late-June highs, ~$3.3T erased) — the single largest risk to the core sleeve given its heavy AI-hardware concentration (9+ of 24 names direct semis/memory/equipment exposure). Materially worse than the "stabilizing" read from 07-21.
- GOOGL earnings after tonight's close is the key incremental catalyst for the AI-hardware complex — unresolved as of this research pass; my initial query incorrectly assumed it had already reported, corrected above.
- MNKD's PDUFA (Jul 26) and ORN's earnings (Jul 28) are both now inside their 5-trading-day satellite catalyst windows — MNKD already held and sized at the tightened 5% cap; ORN not yet entered, needs a fresh live-quote check (prior session's quote was stale/implausible).
- Cash at 19.95%, marginally below the 20% floor from price drift, not a funding breach — monitor, no action needed absent a new buy.
- Recurring Gemini output truncation (missing standalone futures/VIX/macro/held-ticker sections again today, 4th+ occurrence) — still unresolved, still backfilled via WebSearch. A hallucinated OCUL price range in today's output is a new, more serious variant of this problem (fabricated data, not just missing sections) — worth flagging explicitly to the owner, not just noting internally.
- Standing account-level flags (options_trading_level 3, shorting_enabled true, multiplier "4") unchanged, unused, still worth owner attention.

### Decision
HOLD — no core thesis breaks, no satellite entry executed pre-market. MNKD (held) and ORN (not held) are both inside their catalyst windows; ORN needs a fresh live quote at market-open before any evaluation. SOX bear-market confirmation plus tonight's GOOGL print argue for extra caution on any new core risk. Patience > activity.

### 9:30 AM Session Note
- No trades this window. No core ideas from pre-market research; account/positions re-validated live (equity $97,768.36, cash $19,558.40 = 20.00% — right at the floor, no sweep needed).
- ORN re-checked with a fresh live quote per pre-market's flag: bid $11.18 / ask $15.27, ~27% wide — still tripping the wide/illiquid-spread skip rule (same issue as 07-21, not a stale artifact this time, a genuinely thin book). Skipped again; needs a materially tighter spread before it's tradeable regardless of catalyst/momentum standing.
- MNKD (held) and OCUL (held) both re-confirmed intact, no action; MNKD's Jul 26 PDUFA is now inside the gap-risk window per pre-market, continue holding per the documented plan.
- Pattern worth flagging for Friday's review: ORN has now failed the live-quote/spread check twice in a row (07-21 stale, 07-22 wide) despite clearing every other satellite gate — worth deciding whether to keep carrying it as a candidate or drop it until its liquidity genuinely improves.

### 11 AM Session Note
- No "### Approved Trades (verified)" list exists in today's log (only the 9:30 AM Session Note) — per STEP 3, no buys placed this window. HOLD on new entries.
- Account: equity $97,525.08, cash $19,558.40 (20.05%) — at/above the 20% floor, no funding sweep needed.
- Risk sweep: all 6 positions (HPE core; MNKD, OCUL satellite; EDGX, SGOV, SPHY income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No hard-cuts breached: HPE +3.83% (in gain), MNKD -2.13%, OCUL -12.59% (widened from -8.80% at 9:30am pre-market baseline but still short of the -15% satellite cut). No stop tightening — HPE's +3.83% gain is well below the +15% core tightening threshold; MNKD and OCUL are not in gain.
- Thesis check: HPE and OCUL both intact, no new negative news since this morning's research. MNKD's Jul 26 PDUFA is now 2 trading days out (Thu 7/23, Fri 7/24 remain) — inside the gap-risk window, already sized at the 5% binary-catalyst cap and documented at entry; continue holding per plan, re-check Thursday/Friday as the window closes further.
- No name moved sharply with an unexplained cause today (OCUL's drift and MNKD's dip are continuations of already-documented patterns; HPE's gain has no negative flag) — skipped the optional Step 7 Gemini call.
- No 2-strike sub-sector concern (0 satellite losses realized this week). This week (Jul 20 start): core 0/6, satellite 1/4 (MNKD) — unchanged.
- Sleeve exposure: core 10.57% (HPE), satellite 11.55% (MNKD+OCUL), income 57.82%, cash 20.05%.
- No action taken this window — no email notification sent per STEP 9 (action-only).

### 3 PM Session Note
- No "### Approved Trades (verified)" list exists anywhere in today's log — per STEP 3, no buys placed this window. HOLD on new entries.
- Account: equity $97,368.31, cash $19,558.40 (20.09%) — at/above the 20% floor, no funding sweep needed.
- Risk sweep: all 6 positions (HPE core; MNKD, OCUL satellite; EDGX, SGOV, SPHY income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No hard-cuts breached: HPE +2.30% (in gain), MNKD -4.75%, OCUL -11.93% (eased slightly from -12.59% at 11am, still short of the -15% satellite cut). No stop tightening — HPE's gain is well below +15%; MNKD and OCUL are not in gain.
- Fresh WebSearch thesis check on all three non-income names found nothing negative: HPE — Buy-rated, Private Cloud AI/Juniper story intact, no new items. MNKD — FDA approved Afrezza for ages 6+ (pediatric label expansion, stock +20% on the news per search results, though our live fill shows -4.75% today — treating the search snippet's price reference as stale/inconsistent, not acting on it) and the Furoscix ReadyFlow PDUFA reconfirmed on track for Jul 26. OCUL — HC Wainwright fireside chat happened today as scheduled (informational), AXPAXLI NDA still tracking Q4 2026, no negative news. Thesis intact on all three, nothing closed.
- Gap-risk check (STEP 4): MNKD's Jul 26 PDUFA is now 2 trading days out (Thu 7/23, Fri 7/24 remain before the Sunday PDUFA date) — inside the 1-2-trading-day gap-risk trigger. It WAS properly sized/documented at entry (5% binary-catalyst cap, $4,860 cost = 5.00% of equity at entry, max-loss-if-fails logged in the 7/21 BUY note) and conviction has not weakened (today's Afrezza pediatric approval is incrementally positive, not negative) — holding through is valid per the rule, stated explicitly here rather than silently doing nothing. OCUL has no firm binary PDUFA date (still multi-stage regulatory process, conference data only) — gap-risk trigger does not apply.
- No stop tightening this window (no position crossed a tightening threshold since 11am). No 2-strike sub-sector concern (0 satellite losses realized this week).
- Risky positions closed today: none.
- This week (Jul 20 start): core 0/6, satellite 1/4 (MNKD) — unchanged, valid per the Patience Rule.
- Pattern for Friday's review: ORN has now failed the live-quote/spread check twice in a row (07-21 stale, 07-22 wide) — decide whether to keep carrying it as a candidate or drop it until liquidity improves. Also carry forward the recurring Gemini output-truncation/hallucination flag from pre-market.

## 2026-07-21 — Pre-market Research

### Account
- Equity: $96,893.55 | Cash: $19,489.51 (20.11%) | Buying power: $294,689.34 (margin-inflated by the standing 4x multiplier flag — no margin/leverage was or will be used) | Daytrade count: not present in account payload
- Core exposure: $9,586.50 (9.89%, HPE) | Satellite exposure: $6,558.63 (6.77%, OCUL) | Income exposure: $61,258.91 (63.22%: EDGX $19,661.58 / SGOV $21,626.85 / SPHY $19,970.48)
- All 5 open positions (HPE, OCUL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing.

### Market Context
- **Data-quality gap (recurring):** today's Gemini Deep Research output again started mid-document — it answered point (4) [satellite watchlist catalyst/overnight check] in full plus a "Strategic Posture" conclusion, but points (1) futures/VIX, (2) macro catalysts/econ releases, and (3) held-ticker [HPE/Income] overnight checks were not returned as standalone sections. Not fabricating those from the Gemini gap — backfilled via two native WebSearch queries below instead of a second 5-20min Deep Research call.
- **S&P 500 futures / VIX (via WebSearch):** futures +0.45% pre-market; VIX ~17.58, down ~5.7% overnight. Backdrop: cooler US inflation data, 10Y yield eased to ~4.52%, oil retreating on reports of renewed US-Iran diplomatic contact (vs. last week's escalation), semis stabilizing after last week's selloff.
- **HPE (held, core) — thesis check (via WebSearch, since Gemini's held-ticker section didn't return):** no new negative development beyond the analyst downgrade to Hold already logged 7/19 (rating still Hold, not Sell — still clears the core "not Sell/Strong Sell" bar). Company raised FY26 revenue growth guide to 29-33% and FCF outlook to ≥$3.5B — fundamentals intact, recent price weakness read as AI-hardware-complex profit-taking/de-rating, not thesis break.
- **OCUL (held, satellite) — thesis check (via WebSearch):** no new negative news. Only items found are the already-known HC Wainwright fireside chat tomorrow (7/22, informational, not binary) and a routine 7/9 inducement-grant 8-K. Thesis intact, no action.
- **Gemini's covered section — AI-hardware complex:** flags HPE's downgrade and a sharp KLAC/LRCX/AMAT selloff as evidence that "AI capex" valuations are hitting their limit; distinguishes pass-through hardware margin compression from names capturing structural IP value. Calls out **Alphabet (GOOGL) earnings tomorrow (7/22 PM)** as the key read-through for hyperscaler capex sustainability — a real risk factor for the whole core AI-hardware cluster (18/24 names concentrated there per the 7/12 screen), not just HPE.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. No thesis breaks on any of the 24 current core names; nothing in Gemini's partial output or the WebSearch backfill surfaced a new qualifying entry. GOOGL earnings tomorrow is a live risk to the AI-hardware cluster broadly — not a reason to enter pre-market, but a reason for caution sizing into it today. Deferring to market-open for any live-quote entry check.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD** — FDA PDUFA (Furoscix ReadyFlow Autoinjector) confirmed on track for Jul 26, 2026; last trading session before the date is Fri Jul 24 — **within the 5-trading-day window**. Fundamentals reaffirmed: Q1 rev +15% YoY to $90.2M, management reaffirmed $110-120M FY26 Furoscix target. One Rule 10b5-1 director sale ($213K, 7/17) is a routine vesting-triggered sale, not a bearish signal. If entered, **cap at 5% of equity** per the binary-catalyst gap-risk rule (PDUFA = known binary event date) — max loss if the decision misses is a gap of unknown magnitude on an FDA rejection, sized to ~5% of equity at that cap. No entry taken pre-market; flagging for market-open/11am evaluation with live quotes ahead of Friday's date.
2. **ORN** — Q2 earnings confirmed for Jul 28 (after close); counting forward, that's exactly the 5th trading day — **within the 5-trading-day window**. Momentum strong (~$12.66), thesis (data-center/hyperscale-adjacent concrete + marine construction backlog) unchanged from the 7/12 screen. This is an earnings catalyst, not a PDUFA/trial-readout/contract-decision event, so the standard 7.5% cap applies (per WATCHLIST.md's existing max-loss note), not the tighter 5%. No entry pre-market; flagging for evaluation with live quotes closer to the print.
3. **RIGL, FSTR** — confirmed still outside their 5-trading-day windows (RIGL: H2 2026 window, no specific date yet; FSTR: ~Aug 10 earnings estimate). No overnight developments. No action.
4. **TWIN — thesis-broken status reconfirmed.** Gemini independently re-verified the 7/13 definitive reverse-merger/privatization (Twin Vee PowerCats/VEEE into a nickel-mining shell via USFM Corp): legacy marine business goes into a private trust, public entity becomes a mining-exploration vehicle. Thesis is void regardless of price action. No position held. Recommend confirming TWIN's removal at the next weekly screen refresh (flagged 7/15, still pending — watchlist hasn't refreshed since 7/12).

### Risk Factors
- GOOGL earnings tomorrow (7/22 PM) is the single biggest near-term risk to the core AI-hardware cluster (18/24 names) — any CapEx-hesitation signal could trigger broad multiple compression across HPE (held) and the rest of the semis/AI-infra names.
- MNKD's PDUFA (Jul 26) and ORN's earnings (Jul 28) are both now inside the 5-trading-day satellite catalyst window — real gap risk on both if entered; neither entered yet.
- Recurring Gemini output truncation (missing standalone futures/VIX/held-ticker sections again today) — same pattern flagged repeatedly in prior sessions; still unresolved, still backfilled via WebSearch rather than skipped.
- Standing account-level flags (options_trading_level 3, shorting_enabled true, multiplier "4") unchanged from prior notes — unused, but still worth owner attention.

### Decision
HOLD — no core thesis breaks, no satellite entry executed pre-market. MNKD and ORN are both live satellite candidates now inside their catalyst windows; deferring sizing/entry to market-open with live quotes and the applicable gap-risk caps (5% MNKD, 7.5% ORN). Patience > activity.

### 9:30 AM Session Note
- Traded: BUY MNKD (satellite), 1215 sh @ $4.00, 5% binary-catalyst cap ahead of the Jul 26 PDUFA decision. Gate passed clean (satellite 2/4 positions, 1/4 weekly trades, 11.75% satellite exposure). 15% trailing stop placed immediately (trigger $3.3915).
- Held: ORN — skipped despite being inside its earnings catalyst window. Live quote showed a ~$4-wide bid/ask (bid $11.15/ask $15.12) against a $12.68 prior close, a stale/bad quote that trips the wide-spread skip rule. No entry; re-check next session with a fresh quote before treating it as tradeable.
- Core: no live-quote change to the pre-market HOLD — no thesis breaks, GOOGL earnings tomorrow remains the key overhang for the AI-hardware cluster.
- Pattern to flag for Friday's review: this is the second time a live quote has looked implausible/stale on a lower-liquidity satellite name (ORN, ~100-share quoted size) — worth checking whether Alpaca's SIP feed lags on thin names around the open, rather than assuming it's always a real market condition.

### 11 AM Session Note
- No "### Approved Trades (verified)" list exists in today's log (only the 9:30 AM Session Note format) — per STEP 3, no buys placed this window. HOLD on new entries.
- **Cash-floor breach found and corrected:** account cash was $14,629.51 (15.02% of equity) at session start — below the 20% floor, because market-open's MNKD buy wasn't preceded by the required SGOV-first funding sweep. Sold 49 sh SGOV ($100.59) to restore cash to $19,558.42 (20.08% of equity); canceled and re-placed the SGOV trailing stop on the remaining 166 sh (5%, trigger $95.56525). Logged to TRADE-LOG.md. Flagging market-open's funding-sweep step for review so this doesn't recur.
- Risk sweep: all 6 positions (HPE core -1.90%; MNKD, OCUL satellite -0.13%/-8.29%; EDGX, SPHY, SGOV income) confirmed carrying live GTC trailing stops, none missing. No hard-cuts breached (core -7% / satellite -15% thresholds far off). No stop tightening — no Core/Satellite position is currently in gain.
- Thesis check: HPE and OCUL both intact per this morning's research (no new negative news); MNKD not yet at its Jul 26 PDUFA date. No closes. No 2-strike sub-sector concern (0 satellite losses realized this week).
- Sleeve exposure: core 10.00% (HPE), satellite 12.00% (MNKD+OCUL), income 57.93%, cash 20.08%.
- This week (Jul 20 start): core 0/6, satellite 1/4 (MNKD) — unchanged from market-open.

### 3 PM Session Note
- No "### Approved Trades (verified)" list exists anywhere in today's log — buy side stayed HOLD per STEP 3, no new positions.
- Risk sweep: all 6 open positions (HPE core; MNKD, OCUL satellite; EDGX, SGOV, SPHY income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No hard-cuts breached: HPE -2.17% (vs -7%), OCUL -8.80% (vs -15%), MNKD +4.75% (in gain, no cut applies). Thesis intact on HPE and OCUL per this morning's research, nothing new since 11am.
- MNKD's PDUFA (Jul 26, last trading session before it Fri Jul 24) is 3 trading days out from today (Wed/Thu/Fri remain) — not yet inside the STEP 4 "next 1-2 trading days" gap-risk trigger. Already sized at the 5% binary-catalyst cap and documented at entry, so no action; will need explicit re-check Thursday or Friday as the window closes. OCUL's only near-term item is tomorrow's HC Wainwright fireside chat (informational, not binary) — no gap-risk action needed.
- No stop tightening: MNKD's +4.75% gain is well below the +25% satellite tightening threshold; HPE is not in gain. No stops moved.
- Cash $19,558.42 = 20.03% of equity, at/above the 20% floor — no funding sweep needed. This week (Jul 20 start): core 0/6, satellite 1/4 (MNKD) — unchanged from 11am, valid per the Patience Rule.
- Risky positions closed today: none.

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

### 9:30 AM Session Note (RECONSTRUCTED post-hoc by the 11am session)
- **Session-persistence gap:** the market-open session executed real trades
  on Alpaca (fills + live stops, 13:36-13:39 UTC) but never wrote this note,
  never appended to TRADE-LOG.md, and never committed — it must have
  terminated right after STEP 5 (placing stops). The 11am session
  discovered this via `alpaca.sh positions`/`orders closed` (no prior
  commit existed) and reconstructed the trade log entries from Alpaca's
  order history; see the "RECONSTRUCTED market-open entries" block in
  TRADE-LOG.md for full detail and the gate-compliance check.
- **What was decided (reconstructed):** bought AMD, HPE, KLAC (core,
  ~9.7-9.9% of equity each, all top-20 momentum names on the current
  watchlist) and OCUL (satellite, 7.45% of equity) after its Phase 3
  SOL-1 readout resolved positively pre-market. Funded via two SGOV sells
  (SGOV-first sweep rule) totaling 369 sh. 10%/15% trailing stops placed
  on all four immediately per rule.
- **Pattern to flag for Friday's review:** this is the second session in
  four trading days (see 2026-07-13 ANOMALY FLAG) where a scheduled window
  produced live account state with no corresponding commit — unlike the
  13th, this one *was* legitimate/gate-compliant, just unlogged. Worth
  checking whether the market-open routine's STEP 6-9 sequence is
  vulnerable to truncation/timeout after order placement.

### 11 AM Session Note
- Verified the reconstructed market-open trades above against the
  buy-side gate: all four names on current WATCHLIST.md, position/sleeve
  counts (3 core, 1 satellite) and sizes within cap, cash floor intact
  (20.3%) — no corrective action needed.
- No "Approved Trades (verified)" section existed for this window (expected
  — market-open filled everything itself, nothing left over) — no new buys.
- Risk sweep on all 4 Core/Satellite positions: AMD -0.15%, HPE -2.48%,
  KLAC +1.21%, OCUL -5.11% — none near the -7%/-15% cut thresholds, none
  near the +15%/+20% (core) or +25%/+40% (satellite) tighten thresholds,
  no thesis breaks (OCUL's catalyst resolved positively, momentum/FCF
  intact on the three core names). No 2-strike sub-sector concern (0
  satellite losses to date). Income sleeve (SGOV/SPHY/EDGX) unchanged,
  stops intact. No unexplained sharp intraday moves — skipped the optional
  Gemini call. This week: core 3/6, satellite 1/4.

### 3 PM Session Note
- No "### Approved Trades (verified)" section exists in today's
  RESEARCH-LOG entry — per STEP 3, no buys placed this window.
- Risk sweep re-run since 11am: AMD -3.58%, HPE -4.34%, KLAC -0.54%, OCUL
  -9.76% — all four have widened since 11am but none at the -7%
  (core)/-15% (satellite) hard-cut. All four plus SGOV/SPHY/EDGX confirmed
  carrying live trailing-stop orders (`orders` cross-checked against
  `positions` — 7 positions, 7 stops, none missing).
- OCUL flagged for a closer look given the drawdown widened from -5.11%
  (11am) to -9.76%: pulled Alpaca quote/daily bars (steady drift from
  yesterday's $9.96 close through today, no single-bar gap) and ran a
  WebSearch for same-day news. No thesis-breaking headline found — the
  ASRS SOL-1 presentation (this morning's already-priced-in catalyst) and
  a reaffirmed FDA agreement on the Q4 2026 NDA submission timeline are
  the only OCUL-specific items today, both consistent with or supportive
  of the entry thesis. Reads as continued technical/profit-taking drift
  post-catalyst, not a reversal — held, not closed. Watching -15% cut
  level ($8.4065) going into tomorrow.
- Core names (AMD/HPE/KLAC): no thesis-breaking news, still on current
  WATCHLIST.md, momentum/FCF basis unchanged since the 2026-07-12 screen.
  Broader hardware/memory-complex weakness (flagged pre-market) is the
  likely driver of AMD/HPE softness, not a name-specific break.
- No tightening applicable — all 4 Core/Satellite positions are currently
  underwater (tightening schedule only applies to winners at +15%/+20%
  core, +25%/+40% satellite). No stop moved down (none eligible).
- No satellite catalyst dates inside the next 1-2 trading days for any
  held name (OCUL's binary event already resolved pre-entry). No 2-strike
  sub-sector concern (0 satellite losses realized to date).
- Risky positions closed today: none.
- Cash $20,184.33 / equity $98,361.75 = 20.52%, above the 20% floor — no
  funding sweep needed.
- This week (Jul 13 start): core 3/6 trades, satellite 1/4 trades —
  unchanged from 11am (no new trades either window).
- Carryforward for Friday's review: OCUL's continued single-day drift
  (-9.76% vs entry, despite a reportedly positive catalyst and reaffirmed
  FDA timeline) is worth a second look — possible profit-taking on the
  "buy the rumor, sell the news" pattern common after conference data;
  watch whether it stabilizes or keeps bleeding into next week before
  concluding either way.

## 2026-07-17 — Pre-market Research

### Account
- Equity: $98,325.22 | Cash: $20,184.25 (20.5%, above the 20% floor) |
  Buying power: $299,531.71 (margin; unused — stocks only, no leverage) |
  Daytrade count: n/a (equity > $25k, PDT not binding)
- Core exposure: $28,261.10 (28.7%) — AMD $9,323.30, HPE $9,330.30, KLAC
  $9,607.50
- Satellite exposure: $7,153.50 (7.3%) — OCUL
- Income exposure: $42,726.37 (43.5%) — EDGX $19,914.25 (20.3%), SPHY
  $19,996.16 (20.3%), SGOV $2,815.96 (2.9% — depleted vs. its 50%-of-sleeve
  target from Jul 16's two funding sweeps; a rebalance-back-to-target is a
  weekly-review action, not a pre-market one)
- All 7 positions confirmed carrying live GTC trailing stops in `orders`
  (AMD 10% @ $466.479, HPE 10% @ $42.714, KLAC 10% @ $205.90191, OCUL 15%
  @ $8.38525, SGOV/SPHY/EDGX 5% each) — none missing.

### Market Context
- **DATA GAP (recurring, same issue flagged the last several sessions):**
  the captured Gemini output began mid-document at a "SGOV and SPHY"
  section — the requested item (1) S&P 500 futures direction/VIX level,
  and the dedicated item (3) held-ticker write-up for AMD/HPE/KLAC (the
  output explicitly refers back to "as previously noted" and "the
  held-tickers section" for content that isn't actually present in what
  was captured) did not render. No specific futures or VIX number is
  reported below — not fabricated. Carryforward: the Gemini
  prompt-structure fix flagged in prior sessions is still outstanding.
- What did come through, well-sourced: a real, violent pre-market
  semiconductor-equipment/memory selloff on 2026-07-17, triggered by
  manufacturer guidance that NAND oversupply persists through H2 2026,
  forcing a capex-deferral repricing. Reported pre-market moves: WDC
  -9.15%, STX -10.00%, MU -5.65%, AMAT -6.46%, LRCX also down sharply
  (>-10% in the prior session's rotation) — all five are current core
  watchlist names, none currently held.
- Distinct from the above, AI-networking/infra names (MRVL, CSCO, DELL)
  and cybersecurity (CRWD, PANW, FTNT, DDOG) are described as
  fundamentally intact, with the sell-off read as a rotation out of
  memory/equipment rather than a broad AI-demand collapse.
- **Data-quality flag:** `alpaca.sh quote` for AMD/HPE/KLAC/OCUL returned
  anomalous bid-only NBBOs (ap=0, as=0 on all four) timestamped exactly at
  yesterday's 4pm ET close, inconsistent with (and ~3-6% below) the same
  names' `positions` current_price/change_today figures, which do
  independently reconcile against fresh daily bars. Treated the `quote`
  output as unreliable/stale and used `positions`/`bars` for all pricing
  below — flagging the `quote` discrepancy for engineering follow-up
  (possible free-tier feed gap in pre-market hours), not used as a signal.

### Held-Position Thesis Check (AMD, HPE, KLAC, OCUL, SGOV, SPHY, EDGX)
- **AMD (core):** -4.22% since entry ($490.70 vs $512.301053). Not in the
  memory/equipment collapse group — described as a favored "pure-play
  compute provider." No thesis break.
- **HPE (core):** -6.01% since entry ($44.43 vs $47.27) — **closest of the
  four to the -7% core hard-cut.** Described as an "integrated
  architecture builder," thesis intact per the research, but watch closely
  at market-open given the proximity to the cut level.
- **KLAC (core):** -3.13% since entry ($213.50 vs $220.389778). Explicitly
  named alongside LRCX/AMAT as an equipment name being "heavily
  discounted" on the NAND-oversupply/capex-deferral narrative — this
  directly touches KLAC's original entry rationale ("upgrades on WFE
  supply constraints"). Not a thesis break yet (still on watchlist, no
  two-week-running drop), but flag for the weekly review given the
  sector-wide read-through.
- **OCUL (satellite):** -3.94% since entry ($9.50 vs $9.89). Post-catalyst
  confirmed intact — Phase 3 SOL-1 superiority/durability data stands;
  next milestone is the H.C. Wainwright conference fireside chat
  2026-07-22 (informational, not a binary regulatory date). No thesis
  break.
- **SGOV/SPHY (income):** no thesis-breaking news. Context: the broader
  Bloomberg U.S. Aggregate Bond Index is in a record 71-month drawdown;
  SGOV's ~0.10yr duration continues to serve its intended
  capital-preservation/liquidity role, SPHY's high-yield book unaffected
  by any acute credit event.
- **EDGX (income):** thesis reinforced — Cboe secured SEC approval for
  23/5 near-continuous EDGX equities trading (launch Dec 2026), building
  on the near-24-hour options session that went live Jul 13. No
  thesis-breaking news.

### Core Trade Ideas (from current WATCHLIST.md core list)
Pre-market is research/documentation only; execution happens at the
market-open/midday/3pm windows. Overnight/pre-market color to weigh then
(not a pre-authorization):
- **WDC, STX, MU, AMAT, LRCX** — severe pre-market drawdowns (-5% to -10%,
  see Market Context) on the NAND-oversupply/capex-deferral narrative.
  Momentum-gate qualification (Core rule #4: positive 3M/6M relative
  return + above both MAs) for these five is now in real doubt — worth
  confirming at the next screen refresh rather than assuming continued
  pass.
- CRWD — named 2026 Global Company of the Year (ITDR) by Frost & Sullivan;
  a CEO insider sale (20,000 sh @ $193.23) noted but read as minor/
  technical, not thesis-breaking.
- PANW — added 110 new platformized customers this quarter (~2,280 total),
  on track for its 2030 targets; intact.
- CSCO — beat Q_ revenue/EPS; announced ~4,000 job cuts to reallocate
  capex toward silicon/fiber/AI-security. Intact.
- DELL — Q1 FY27 revenue $43.8B (+87.5% YoY), operating income +213.8%
  YoY. Intact.
- CAT, GEV — data-center power-infrastructure beneficiary thesis
  reinforced (CAT: up to 2.1 GW gas-generator agreement).
- DVA, CNC, DDOG, FTNT, NTAP, GLW, TXN, MPC, VLO — no thesis-breaking
  overnight news reported.
- No new Core buy candidate cleared this pre-market pass — none needed
  given the research-only nature of this window.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **MNKD — binary catalyst now inside the 5-trading-day window.** PDUFA
  target action date is Sunday 2026-07-26; since FDA decisions land during
  market hours, the effective date is Friday 2026-07-24 — 5 trading days
  from today. Modeled probability of approval >73% per the research (favorable
  precedent: legacy On-body Infusor formulation already FDA-approved for
  CHF/CKD; ReadyFlow Autoinjector cuts administration time from ~5hr to
  <10sec). Flag prominently for market-open/midday: any entry ahead of the
  Jul 24 resolution is a same-day-gap binary hold and must use the 5% cap
  (not 7.5%), with max-loss-if-fails documented per strategy rule.
- OCUL — catalyst already resolved (see Held-Position section); no change
  needed to sizing/status.
- RIGL — Phase 1b dose-expansion ongoing (R289, transfusion-dependent
  lower-risk MDS), no confirmed near-term date, still H2 2026 window. No
  change.
- ORN — Q2 earnings 2026-07-28 (post-market), call 2026-07-29 — 7
  trading days out, not yet inside the 5-day window.
- FSTR — Q2 earnings 2026-08-10 (pre-market) — well outside the window.
- TWIN — research turned up **no confirmed near-term catalyst** at all
  (last earnings reported back on 2026-02-04). Combined with last week's
  merger/privatization 8-K thesis-break flag, this reinforces the standing
  recommendation to drop TWIN at the next screen refresh.

### Risk Factors
- NAND-oversupply-driven equipment/memory selloff (WDC/STX/MU/LRCX/AMAT,
  all core watchlist, -5% to -10% pre-market) — momentum-gate risk for
  those five, and a sector-narrative headwind for held KLAC specifically.
- HPE at -6.01%, nearest held position to its -7% hard-cut — watch at
  market-open; not yet breached, so no notification triggered this run.
- MNKD's PDUFA event (effectively 2026-07-24) is now inside the
  5-trading-day satellite catalyst window — binary-event sizing discipline
  applies to any new entry from here forward.
- Data quality: recurring Gemini truncation (futures/VIX and the
  dedicated held-ticker section both missing again this run) plus an
  anomalous/stale `alpaca.sh quote` reading on all four held equities
  (see Market Context) — neither treated as a trading signal, both
  flagged for follow-up.
- Cash at 20.5%, essentially at the 20% floor — any new Core/Satellite buy
  this week requires an SGOV funding sweep per the Income-sleeve rule, and
  SGOV itself is already thin ($2,815.96, well under its 50%-of-sleeve
  target) after Jul 16's two funding sales.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No
position is below its hard-cut threshold pre-market, so no urgent
notification triggered. Handoff to market-open: (1) watch HPE closely
(-6.01%, nearest to the -7% core cut); (2) MNKD's PDUFA is now inside the
5-day satellite window — size any entry at the 5% binary cap with
documented max loss; (3) KLAC's equipment-sector headwind is not a thesis
break yet but bears watching; (4) WDC/STX/MU/AMAT/LRCX momentum-gate
status is in doubt — confirm at the next screen refresh rather than
assume; (5) no Core signal to act on this window. This week (Jul 13
start): core 3/6, satellite 1/4 — unchanged, valid per the Patience Rule.

### 11 AM Session Note
- **No 9:30am session log exists for today** — same persistence gap as
  2026-07-16 (no "Approved Trades" section, no "9:30 AM Session Note").
  Buy-side this window: HOLD, no buys — nothing in today's RESEARCH-LOG
  qualifies as an approved list per STEP 3.
- **AMD and KLAC stopped out automatically** at the open (9:38am ET,
  before this session ran): AMD 10% trailing stop filled -9.05% ($880.97
  realized loss), KLAC 10% trailing stop filled -6.62% ($656.54 realized
  loss) — both squarely in this morning's flagged NAND-oversupply/
  capex-deferral semis selloff (KLAC directly, via its WFE-supply-
  constraint entry thesis; AMD via broader sector contagion). Mechanical
  GTC stops did their job; reconstructed both to TRADE-LOG since no
  session had logged them. Core down to 1 open position (HPE, -4.27%,
  not near cut). No 2-strike sub-sector impact (core, not satellite).
- **Income sweep executed:** AMD+KLAC exits freed cash to 39%+ of equity,
  well above the 20% floor. Swept $18,808.46 (187 sh) into SGOV per the
  sweep-back rule, replacing the old 28-share stop with one 5% trailing
  stop on the combined 215-share position. Cash now ~20.0%, at floor.
- Remaining positions (HPE -4.27%, OCUL -7.79%) checked against hard-cuts
  (-7% / -15%) — neither breached. Thesis check: HPE's "integrated
  architecture builder" thesis and OCUL's post-catalyst thesis both
  intact per this morning's research, no break. No stops eligible for
  tightening (no positions in gain). No unexplained sharp moves beyond
  the already-documented NAND selloff — skipped the optional Gemini call.
- **Lesson:** two sessions running now (7/16, 7/17) have failed to persist
  a 9:30am log. Worth flagging for engineering follow-up at the weekly
  review — mechanical stops are covering the gap so far, but a session
  that needed to *manually* cut (not just let a trailing stop fire) would
  be exposed. This week (Jul 13 start): core 3/6, satellite 1/4 —
  unchanged, valid per the Patience Rule.

### 3 PM Session Note
- No "Approved Trades (verified)" section exists anywhere in today's log
  (pre-market Decision was HOLD; 11am confirmed no qualifying list) — no
  buy source, so no buys placed per Step 3. Only 2 open Core/Satellite
  slots occupied (HPE core, OCUL satellite) after this morning's AMD/KLAC
  stop-outs, but there was nothing approved to fill them with.
- Risk sweep: HPE (core) -2.43% and OCUL (satellite) -8.09%, both well
  inside their -7%/-15% hard-cuts. All 5 open positions (HPE, OCUL, EDGX,
  SGOV, SPHY) confirmed carrying live GTC trailing stops in `orders` — none
  missing. No satellite catalyst inside the next 1-2 trading days for OCUL
  (next milestone is the informational H.C. Wainwright fireside chat
  2026-07-22, not binary). Thesis check: HPE's "integrated architecture
  builder" thesis and OCUL's post-catalyst thesis both intact per this
  morning's research — no breaks, nothing closed this window.
- No stop tightening: neither HPE nor OCUL is in gain (both underwater);
  the gain-based tightening schedule doesn't apply. Income stops are flat
  5% by rule, no tightening schedule.
- Cash $19,489.54 = 20.0% of equity, essentially at the 20% floor — no
  funding sweep triggered (no new buy this window).
- Day P&L -$1,000.04 (-1.02%) vs yesterday's 3pm snapshot, driven mostly
  by OCUL's continued drift (-8.09%, up from -7.79% at 11am) partially
  offset by HPE's intraday bounce (+2.19% today despite still -2.43% since
  entry). Income sleeve roughly flat.
- This week (Jul 13 start): core 3/6, satellite 1/4 — unchanged (today's
  AMD/KLAC stop-outs are exits, not new entries, so they don't touch the
  weekly cap). Valid per the Patience Rule — zero tradeable ideas across
  all three windows today.
- Risky positions closed today: none this window (AMD and KLAC were
  already stopped out mechanically before market-open and reconstructed
  into the log at 11am — see above).

## 2026-07-18 — Pre-market Research

### Account
- Equity: $97,188.82 | Cash: $19,489.51 (20.06%) | Buying power: $295,516.11 | Daytrade count: not present in account payload (same pattern as prior entries)
- Core exposure: $9,622.20 (9.90%) | Satellite exposure: $6,754.41 (6.95%) | Income exposure: $61,322.70 (63.10%)
- Open positions: HPE (core, 210 sh, -3.07% unrealized), OCUL (satellite, 753 sh, -9.30% unrealized), SGOV/SPHY/EDGX (income). All 5 positions confirmed carrying live GTC trailing stops via `alpaca.sh orders` (HPE 10% trail $42.714; OCUL 15% trail $8.38525; SGOV 5% trail $95.551; SPHY 5% trail $22.2015; EDGX 5% trail $25.479) — none missing.
- This week (Jul 13 start): core 3/6 trades, satellite 1/4 trades used.

### Data-quality flag
The consolidated Gemini Deep Research call returned a **truncated/mid-document** output — it opens directly on "Tickers Within 5 Trading Days of a Catalyst," with sections 1 (futures/VIX), 2 (top catalysts/econ releases), and most of section 3 (per-held-ticker overnight-news check for HPE/EDGX/SGOV/SPHY — only OCUL, which doubles as a watchlist name, came through) missing from the structured body. Per the data-quality guard, not fabricating any number not actually visible in the output. Some directional color leaked through in Gemini's own Conclusion paragraph (S&P testing the 7,500 level, VIX futures near 19, a China-open-weight-AI-driven rotation out of semi capex into software/industrials) and is corroborated by the WebSearch fallback below, so it's used with that caveat. Supplemented with native WebSearch for the missing points (market context, HPE-specific check, and confirmation of the ongoing semis rout flagged Friday) rather than leaving those blank.

### Market Context (WebSearch fallback for Gemini's missing sections 1-2)
- **S&P 500 futures:** 7,503.50, down ~74 pts / -0.98% pre-market. **VIX:** ~18.8-18.9 (elevated; opened 18.01, ranged 17.68-19.50 intraday Fri/pre-market).
- **Dominant catalyst:** the NAND-oversupply/AI-capex-sustainability selloff flagged in Friday's pre-market run has **deepened, not resolved**. Trigger is Chinese startup Moonshot's new "Kimi K3" open-weight AI model matching frontier-model performance, reigniting doubts about the ROI on U.S. AI infrastructure capex. Friday: AMD -5%, Intel -4%, NVDA -3%, AMAT/LRCX >-4%, MU/WDC/STX/SNDK all down; Nasdaq -1.4% to 25,520.24; SMH ETF -9% over the trailing 4 weeks (third weekly decline in four), sector approaching bear-market territory; global semis have shed ~$3.3T in market cap since Jun 22.
- Gemini's own conclusion frames this as a rotation **out of** semiconductor capital equipment and **into** software/industrial value plays — directionally consistent with the WebSearch findings but not independently confirmed per-ticker for the software names (DDOG, CRWD, PANW, FTNT, CSCO) this run.

### Held-Position Thesis Check
- **HPE (core, -3.07%):** no negative overnight news found. Recent catalysts are bullish and unresolved-positive: Vultr AI-datacenter deal w/ NVIDIA, GreenLake/Morpheus expansion, new Qblox quantum-computing partnership. Analyst consensus still Buy, PT ~$64 (+40% from last price). Note: HPE is still AI-hardware-adjacent, so it isn't fully insulated from the sector rotation above even though its own news is positive — watch, not a thesis break.
- **OCUL (satellite, -9.30%):** catalyst window is live and, per the visible (non-truncated) part of Gemini's output, resolving **positively so far** — Phase 3 SOL-1 data for AXPAXLI presented at ASRS (through Jul 18) showed p=0.0006 for visual maintenance vs. standard of care, reinforcing the FDA-aligned Q4 2026 NDA path. Follow-on HC Wainwright fireside chat Jul 22 (CEO Dr. Dugel) also falls inside the 5-day proximity window. No thesis break — the price drift looks like continued post-catalyst churn, not a negative resolution.
- **SGOV/SPHY/EDGX (income):** no thesis-breaking news; Gemini's conclusion fragment describes both as functioning as intended (SGOV/SPHY as fixed-income ballast amid equity distress, EDGX's covered-call income benefiting from elevated options premiums in this vol regime).

### Core Trade Ideas (from current WATCHLIST.md core list)
- No new core buy signal clears this run. Gemini's per-ticker section-4 coverage was lost to truncation, so most of the 24-name core list (DELL, DDOG, CRWD, PANW, CSCO, FTNT, GLW, NTAP, TXN, DVA, CNC, MPC, CAT, GEV, VLO) has **no confirmed overnight check** today beyond the sector-rotation framing above — not treated as a pass.
- **WDC, STX, MU, AMAT, LRCX, MRVL, KLAC** — the NAND-oversupply/AI-capex selloff flagged Friday has deepened (see Market Context); momentum-gate qualification (Core rule #4) for this cluster is now in serious doubt. No new entries from this group; confirm status at the next screen refresh rather than assume a pass.
- HPE (held) — thesis intact, no action.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **MNKD** — catalyst still valid, not resolved/invalidated overnight. Standing record (2026-07-17 log) has the FUROSCIX ReadyFlow Autoinjector PDUFA action date as Sun 2026-07-26 / effective Fri 2026-07-24 (5 trading days out). Today's Gemini pass corroborates an active PDUFA window (less precise: "clustered July 11-Aug 17") without contradicting the firmer Jul 24 date — treating MNKD as inside the 5-trading-day binary window per the standing record. Any entry from here forward must use the 5% binary-catalyst cap ($4.86k) with documented max-loss-if-fails, not the standard 7.5%. Not executed this window (pre-market is research-only).
- **OCUL** (held) — catalyst resolving positively so far, see Held-Position Thesis Check. No change to sizing/status.
- **RIGL** — no near-term catalyst (Phase 1b R289 readout still H2 2026 window); only routine corporate news (RSU grants, Pfizer/Arvinas licensing digestion). No change.
- **ORN** — Q2 earnings Jul 28 (10 trading days out). Not yet in window.
- **FSTR** — Q2 earnings Aug 10. Not in window.
- **TWIN** — next catalyst is fiscal Q4 earnings, mid-to-late August; no near-term date. Added to Russell 2000/3000 (Jun 29) — a structural/passive-flow event, not a fundamental catalyst. Reinforces the standing recommendation to revisit TWIN's inclusion at the next screen refresh (no confirmed near-term catalyst two weeks running now).

### Risk Factors
- **Sector rout deepening, not resolving:** AI-capex-sustainability selloff in semis/memory is now a multi-week, ~$3.3T rout (since Jun 22) — directly threatens the momentum-gate status of WDC/STX/MU/AMAT/LRCX/MRVL/KLAC on the core watchlist (7 of 24 names, plus adjacency risk for held HPE).
- **VIX elevated (~18.8-19)** and S&P testing the 7,500 level pre-market (-0.98%) — broad risk-off tone, not name-specific.
- **OCUL** continues to drift (-9.30%, worsening from -8.09% Fri close) despite an on-thesis positive data readout — worth re-checking at market-open/midday if the drift continues without a clear explanatory headline; not yet a hard-cut concern (-15%).
- **Data quality:** Gemini output truncated again (same recurring issue noted 7/16-7/17) — missing sections backfilled via WebSearch this run rather than left blank or fabricated. Worth a standing engineering note (see PROJECT-CONTEXT.md known-risk section) that this is now a recurring, not one-off, tool reliability issue.
- Cash at 20.06%, essentially at the 20% floor — any new Core/Satellite buy this week requires an SGOV funding sweep per the Income-sleeve rule.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). Neither held position (HPE -3.07%, OCUL -9.30%) is near its hard-cut threshold (-7% / -15%), OCUL's catalyst is resolving positively not negatively, and no major geopolitical event — so no urgent pre-market notification triggered per Step 5. Handoff to market-open: (1) no core buy candidate confirmed today given lost Gemini coverage — don't treat silence as a pass; (2) WDC/STX/MU/AMAT/LRCX/MRVL/KLAC momentum-gate status increasingly doubtful amid the deepening AI-capex selloff — watch, don't add; (3) MNKD's PDUFA window remains active — any entry must use the 5% binary cap with documented max loss; (4) OCUL's continued drift despite positive catalyst news bears a closer look at midday if it persists. This week (Jul 13 start): core 3/6, satellite 1/4 — unchanged, valid per the Patience Rule.

## 2026-07-19 — Pre-market Research

**Note:** today (2026-07-19) is a Sunday — markets closed. Account/position
data below is Friday 2026-07-17's close carried forward unchanged (no
weekend price action). Running per the standard schedule; findings feed
Monday's market-open decision.

### Account
- Equity: $97,188.82 | Cash: $19,489.51 (20.06%) | Buying power: $295,516.11 | Daytrade count: not present in account payload (same pattern as prior entries)
- Core exposure: $9,622.20 (9.90%) | Satellite exposure: $6,754.41 (6.95%) | Income exposure: $61,322.70 (63.10% — SGOV $21,624.70 / EDGX $19,727.52 / SPHY $19,970.48)
- Open positions: HPE (core, 210 sh, -3.07% unrealized), OCUL (satellite, 753 sh, -9.30% unrealized), SGOV/SPHY/EDGX (income). All 5 positions confirmed carrying live GTC trailing stops via `alpaca.sh orders` (HPE 10% trail $42.714; OCUL 15% trail $8.38525; SGOV 5% trail $95.551; SPHY 5% trail $22.2015; EDGX 5% trail $25.479) — none missing, all unchanged since Friday.
- This week (Jul 13 start): core 3/6 trades, satellite 1/4 trades used.

### Data-quality flag
Gemini Deep Research output was again truncated/mid-document — it opens directly on a "Cybersecurity, Energy, and Defensive Rotations" sector section. Missing entirely: section 1 (S&P futures/VIX as explicit figures), section 2 (top macro catalysts/econ releases), and section 3 (per-held-ticker overnight check for HPE/OCUL/SGOV/SPHY/EDGX specifically — none of the five were addressed by name). This is the same recurring truncation pattern flagged every session since 2026-07-12 (now 8+ consecutive occurrences) — still unresolved, escalate again at the next weekly review. Not fabricating any missing figure. Additionally, the per-ticker "pre-market" percentage moves Gemini did report (e.g. PANW +6.84%, WDC -4.64%) cannot be genuine today's pre-market data since markets are closed Sunday — treating these as a likely (unconfirmed) carryover/restatement of Friday 7/17's session action, not as fresh Monday signal. Backfilled points 1 and held-position checks via native WebSearch instead of a second 5-20min Deep Research call.

### Market Context (WebSearch fallback + Gemini's covered sections)
- **VIX:** confirmed closed at 18.77 on Fri 7/17 (+12.19% from 16.73) — elevated, consistent with the past week's climb, not a new spike.
- **S&P futures:** WebSearch could only surface a vague "-0.27% as of mid-July" figure, not a specific today/Monday pre-market number — treating S&P futures direction as **unconfirmed** for Monday rather than citing that stale figure as current.
- **Iran/Strait of Hormuz:** the closure Gemini's conclusion frames as fresh ("collapse of the ceasefire," "20% tariff on the Strait") traces back to Iran's IRGC closure declaration on **2026-07-11** — this is the same escalation already carried in every research-log entry since 07-12/07-13, **not a new overnight development**. No confirmed fresh escalation beyond what's already on record. Brent/WTI remain elevated on this backdrop (consistent with prior entries), still a live tailwind for MPC/VLO.
- **Sector rotation (Gemini, not independently verified per-ticker):** narrative continues out of high-multiple semis/hardware (DELL, AMD, MRVL, MU, WDC, STX, NTAP flagged "severe negative") and into cybersecurity (PANW, CRWD, FTNT, DDOG — "strong positive," acting as a defensive tech proxy) and energy/industrials (MPC, VLO, CAT, GEV — "strong positive" on the crude spike). Gemini flags AMAT/LRCX/TXN as anomalously positive even as the broader semi-equipment index reportedly falls — flagged as an inconsistency in the source, not confirmed with live bars this run. CSCO/GLW described as pressured. None of this is a confirmed thesis break on any core name; treat as a coloring for market-open's live-bar check, not a pre-authorization.

### Held-Position Thesis Check
- **HPE (core, -3.07%):** no negative news found. WebSearch confirms continued positive catalyst flow — Vultr AI-datacenter deal w/ NVIDIA (GB300 NVL72, Spectrum-X networking), Qblox quantum-computing collaboration, expanded ScanSource/Juniper distribution partnership, record Q2 FY26 (revenue +40% YoY, networking +148%, Juniper synergies guided $600M+). Thesis intact, no break. Still AI-hardware-adjacent so not fully insulated from the sector-rotation narrative above, but nothing name-specific negative.
- **OCUL (satellite, -9.30%):** ASRS 44th Annual Meeting (where the Phase 3 SOL-1 data was presented Jul 16) ran through Jul 18; WebSearch found no negative follow-on news post-conference. No new information since the Jul 18 entry's positive-resolution read (p=0.0006 vs. standard of care). Continued price drift reads as post-catalyst churn, not a thesis break — not near the -15% hard-cut.
- **SGOV/SPHY/EDGX (income):** no thesis-breaking news found; no name-specific search run beyond the standing Income-sleeve rationale (rates ballast / high-yield carry / covered-call income), consistent with prior entries.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Gemini's per-ticker section-4 coverage was largely lost to truncation (only the sector-rotation table above came through, not individual news items), so none of the 24 core names has a confirmed overnight check beyond that unverified sector framing. WDC/STX/MU/AMAT/LRCX/MRVL/KLAC's momentum-gate status remains in doubt per last several entries (deepening AI-capex selloff) — no new entries from this group; needs a live-bar recheck at market-open, not assumed to have failed or passed.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD** — Gemini confirms FDA PDUFA target action date **July 26, 2026** for the FUROSCIX ReadyFlow Autoinjector sNDA, and because Jul 26 is a Sunday, action is expected to land by Fri Jul 24 or Mon Jul 27 — **within the 5-trading-day window as of Monday's open**. Not held. Any entry from here forward must use the 5% binary-catalyst cap (~$4.86k at current equity), with documented max-loss-if-fails, per the gap-risk rule. Not executed this run (pre-market is research-only) — flagging for market-open/midday evaluation.
2. **OCUL** (held) — no near-term additional catalyst; next scheduled event is Q2 earnings ~Aug 4, outside the 5-day window. See Held-Position Thesis Check above; no status change.
3. **ORN** — Q2 earnings Jul 28 (7 trading days out as of Monday) — not yet in window. Gemini notes a bullish 30%-raised 2026 EPS estimate ($0.33) and a $23B bidding pipeline post-J.E. McAmis; no action needed pre-window.
4. **RIGL** — Q2 earnings ~Aug 4; not in window. Gemini notes the new VEPPANU (vepdegestrant) licensing deal with Arvinas/Pfizer as a positive fundamental update; recent EPS miss ($0.44 vs $0.80 est.) noted but doesn't change catalyst timing.
5. **FSTR** — Q2 earnings ~Aug 10; not in window. No overnight thesis break.
6. **TWIN** — remains thesis-broken per the 2026-07-15 merger/privatization 8-K (unchanged); Gemini's own estimate now pegs next earnings ~Aug 7. Still excluded from consideration regardless of price action — reiterating the standing recommendation to drop it from the satellite watchlist at the next screen refresh.

### Risk Factors
- Gemini Deep Research truncation is now an 8+ session-running, unresolved reliability issue — sections 1-3 (macro figures, held-position check) lost again this run. Needs a prompt-structure or tooling fix at the next weekly review, not just another flag.
- Iran/Strait-of-Hormuz closure (declared 07-11) remains the dominant standing macro risk, unchanged from every prior entry this week — no fresh escalation confirmed overnight, but still live and unresolved.
- VIX elevated (18.77 Fri close, +12% week) — consistent with ongoing risk premium, not a new spike.
- Gemini's sector-rotation narrative (semis/hardware weak, cybersecurity/energy strong) is unverified per-ticker this run and includes an internally flagged inconsistency (AMAT/LRCX/TXN "anomalously positive" vs. a falling broader semi-equipment index) — needs live-bar confirmation at market-open before acting on it either way.
- MNKD's PDUFA window opens Monday — the single largest near-term satellite risk/opportunity on the list; any entry must respect the 5% binary cap.
- Cash at 20.06%, essentially at the 20% floor — any new Core/Satellite buy this week still requires an SGOV funding sweep per the Income-sleeve rule.

### Decision
**HOLD** (pre-market default; research-only, no trades this run; also a non-trading Sunday). Neither held position (HPE -3.07%, OCUL -9.30%) is near its hard-cut threshold, no satellite catalyst has resolved negatively, and the "escalation" framing in Gemini's conclusion traces to an 8-day-old, already-logged development rather than a fresh overnight event — so no urgent notification triggered per Step 5. Handoff to Monday's market-open: (1) no core buy candidate confirmed given lost Gemini coverage — don't treat silence as a pass, recheck WDC/STX/MU/AMAT/LRCX/MRVL/KLAC's momentum-gate status live; (2) MNKD enters its 5-trading-day PDUFA window Monday — evaluate at the 5% binary cap if considering entry; (3) HPE and OCUL theses both intact, no action. This week (Jul 13 start): core 3/6, satellite 1/4 — unchanged, valid per the Patience Rule.

## 2026-07-20 — Pre-market Research

### Account
- Equity: $97,461.79 | Cash: $19,489.51 (20.00%) | Buying power: $296,280.42 | Daytrade count: not present in account payload (same pattern as prior entries)
- Core exposure: $9,720.90 (9.97%) | Satellite exposure: $6,927.60 (7.11%) | Income exposure: $61,323.78 (62.92% — SGOV $21,625.78 / EDGX $19,727.52 / SPHY $19,970.48)
- Open positions: HPE (core, 210 sh, -2.07% unrealized), OCUL (satellite, 753 sh, -6.98% unrealized), SGOV/SPHY/EDGX (income). All 5 positions confirmed carrying live GTC trailing stops via `alpaca.sh orders` (HPE 10% trail $42.714; OCUL 15% trail $8.38525; SGOV 5% trail $95.551; SPHY 5% trail $22.2015; EDGX 5% trail $25.479) — none missing.
- **New trading week (Jul 20 start): core 0/6, satellite 0/4** — last week's (Jul 13-17) 3/6 core and 1/4 satellite trades don't carry over.

### Data-quality flag
Gemini Deep Research output was **truncated/mid-document again** — opens directly mid-paragraph on an OCUL/4DMT competitive-positioning point, then a brief "Remaining Satellite Tickers" note (RIGL/ORN/FSTR/TWIN: no material news, none in a 5-day catalyst window) and a "Strategic Conclusion" paragraph. Missing entirely: section 1 (S&P futures/VIX as explicit figures), section 2 (top macro catalysts/econ releases), section 3 (per-held-ticker overnight check for EDGX/HPE/OCUL/SGOV/SPHY — none addressed individually), and nearly all of section 4's per-ticker core coverage (only DELL, HPE, KLAC, FTNT, PANW, CRWD get passing mention, bundled into the sector-rotation narrative, not individual checks). This is the same recurring truncation pattern flagged every session since 2026-07-12 — now 9+ consecutive occurrences, still unresolved. Not fabricating any missing figure; backfilled via native WebSearch below per the data-quality guard.

### Market Context (WebSearch fallback for Gemini's missing sections 1-2)
- **VIX:** ~18.83 (futures), range 18.63-19.03 — elevated, consistent with the past week+, not a fresh spike.
- **S&P 500 futures:** WebSearch could not confirm a live today-specific pre-market figure; the only number surfaced (~7,457.69, -1.01%) is unconfirmed as today's vs. a carryover of a recent session — **not treated as confirmed live data**, per the data-quality guard.
- **Dominant catalyst, ongoing:** the semiconductor/AI-capex rout continues — PHLX Semiconductor Index on track for ~20% decline from recent highs. Netflix earnings disappointed (double-digit stock loss). Oil >$80/bbl (+2%) and gold ~$4,000 on intensifying US-Iran tension (Strait of Hormuz backdrop, already on record since 07-11/07-12 — not a fresh escalation). No major US econ data or Fed events today; light calendar this week but heavy on earnings — **Alphabet reports Wednesday 7/22**, its AI capex guidance a key read-through for the whole AI-infra trade (relevant to HPE, DELL, MRVL, and the broader core semis cluster).
- Gemini's own (partial) framing continues the prior sessions' rotation narrative: AI-infra/server names (DELL, HPE) and wafer-fab equipment (KLAC) under margin/valuation-reset pressure, cybersecurity (FTNT, PANW, CRWD) benefiting from a security-budget bid. Not independently confirmed per-ticker this run beyond the HPE-specific check below.

### Held-Position Thesis Check
- **HPE (core, -2.07%):** one incremental development — an analyst **downgraded HPE to Hold on 2026-07-19** (from Buy), citing ~217% return since the original 2023 call and calling upside now "balanced by execution risk," fully-priced-in guidance; would need valuation cooling or a new catalyst to re-upgrade. This is a rating *change*, not a Sell/Strong Sell — still passes core entry rule #5 on a going-forward basis (rule #5 governs new entries; HPE is a hold, not a new buy) — but it's a directional signal worth tracking, not dismissing. No other negative news; the underlying Q2 FY26 print (revenue +40% YoY, networking +148%) and Juniper-integration story are unchanged and intact.
- **OCUL (satellite, -6.98%):** no new news since the 07-18/07-19 entries. ASRS conference (through Jul 18) produced no negative follow-on; next scheduled event is the HC Wainwright fireside chat **Jul 22** (informational, not binary). Continued price recovery from Friday's low (-9.30% → -6.98%) reads as stabilization, not further deterioration. No thesis break, not near the -15% hard-cut.
- **SGOV/SPHY/EDGX (income):** no thesis-breaking news found; no name-specific search run this session beyond the standing rationale — elevated VIX (~18.8) and oil-driven volatility continue to support the case for short-duration/high-yield ballast and covered-call income working as designed.

### Core Trade Ideas (from current WATCHLIST.md core list)
- No new core buy signal clears this run. Gemini's per-ticker section-4 coverage was again lost to truncation — only DELL, HPE, KLAC, FTNT, PANW, CRWD got even a bundled sector-level mention (not individual overnight checks); the remaining 18 core names (MU, AMD, STX, MRVL, WDC, DDOG, DVA, AMAT, CRWD, NTAP, GLW, CNC, TXN, CSCO, LRCX, MPC, CAT, GEV, VLO) have **no confirmed overnight check** today — not treated as a pass.
- **WDC, STX, MU, AMAT, LRCX, MRVL, KLAC** — the multi-week NAND-oversupply/AI-capex selloff continues per the PHLX Semiconductor Index framing above (~20% off highs). Momentum-gate qualification for this cluster remains in serious doubt; no new entries from this group, needs a live-bar recheck at market-open.
- HPE (held) — see Held-Position Thesis Check; rating downgrade noted as a watch item, not a thesis break.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **MNKD** — confirmed via WebSearch: FDA PDUFA target action date for the FUROSCIX ReadyFlow Autoinjector sNDA remains **July 26, 2026** — no change, no negative resolution overnight. That's within the 5-trading-day window as of today (Jul 20). Not held. Any entry from here forward must use the 5% binary-catalyst cap (~$4.87k at current equity) with documented max-loss-if-fails, per the gap-risk rule. Not executed this window (pre-market is research-only) — flag for market-open/midday evaluation.
- **OCUL** (held) — see Held-Position Thesis Check; no status change.
- **RIGL, ORN, FSTR, TWIN** — per Gemini's (partial) coverage: no material overnight news for any of the four, and none has a catalyst date inside the 5-trading-day window — consistent with the standing record (RIGL H2 2026 readout window; ORN Q2 earnings Jul 28; FSTR Q2 earnings ~Aug 10; TWIN still thesis-broken per the 07-15 merger/privatization 8-K, still flagged for removal at the next screen refresh).

### Risk Factors
- Gemini Deep Research truncation is now a 9+ session-running, unresolved reliability issue — sections 1-3 lost again this run. This needs an actual fix (prompt restructuring, output-length limit, or splitting into multiple smaller calls) at the next weekly review rather than another flag with no action.
- Semiconductor/AI-capex rout continues deepening (PHLX Semi Index ~20% off highs) — directly threatens the momentum-gate status of WDC/STX/MU/AMAT/LRCX/MRVL/KLAC on the core watchlist, and is adjacency risk for held HPE (now also carrying a fresh analyst downgrade to Hold).
- VIX elevated (~18.8) but not spiking further — consistent with an ongoing, not escalating, risk premium.
- Oil >$80/bbl and gold ~$4,000 on US-Iran tension — same standing Strait-of-Hormuz backdrop since 07-11, no fresh escalation confirmed, but still a live macro risk (tailwind for MPC/VLO, headwind for broad risk sentiment).
- Alphabet earnings Wednesday 7/22 is the next major AI-capex data point — could move the whole AI-infra/semis cluster (HPE, DELL, MRVL, WDC/STX/MU/AMAT/LRCX/KLAC) sharply either direction.
- MNKD's PDUFA window is live (Jul 26) — the single largest near-term satellite risk/opportunity on the list; any entry must respect the 5% binary cap.
- Cash at 20.00%, exactly at the floor — any new Core/Satellite buy this week requires an SGOV funding sweep per the Income-sleeve rule.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). Neither held position (HPE -2.07%, OCUL -6.98%) is near its hard-cut threshold (-7% / -15%), no satellite catalyst has resolved negatively (MNKD's PDUFA is unchanged and still 6 days out), and there's no fresh geopolitical escalation beyond the standing 07-11 backdrop — so no urgent pre-market notification triggered per Step 5. HPE's rating downgrade to Hold is a watch item, not a thesis break (still passes the not-Sell/Strong-Sell bar). Handoff to market-open: (1) no core buy candidate confirmed given lost Gemini coverage — don't treat silence as a pass, recheck the NAND-oversupply cluster's momentum-gate status live; (2) MNKD's PDUFA window is active — any entry must use the 5% binary cap with documented max loss; (3) HPE and OCUL theses both intact, no action; (4) watch Wednesday's Alphabet earnings as the next AI-capex catalyst. New trading week (Jul 20 start): core 0/6, satellite 0/4 — a clean slate, Patience Rule applies as always.

### 11 AM Session Note
- No "### Approved Trades (verified)" section or "9:30 AM Session Note" exists in today's log — same recurring market-open persistence gap as prior sessions. Per STEP 3, buy side is HOLD; no unapproved names traded.
- Account: equity $96,868.48, cash $19,489.51 (20.12%, above the 20% floor) — no funding sweep needed since no buy this window.
- Positions checked against hard-cuts: HPE (core) -4.04% unrealized (vs -7% cut, not breached); OCUL (satellite) -11.78% unrealized (vs -15% cut, not breached — drawdown widened from -6.98% pre-market). All 5 open positions (HPE, OCUL, SGOV, SPHY, EDGX) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- OCUL's continued slide prompted a WebSearch check (not a full Gemini call — no sharp/discontinuous move, just a continuing drift already flagged pre-market) for fresh negative news: none found. Confirms OTX-TKI/SOL-1 thesis unchanged, no catalyst reversal — read as continued post-catalyst profit-taking, not a thesis break. Next scheduled event remains the informational HC Wainwright fireside chat Jul 22 (not binary).
- No winners to tighten (HPE and OCUL both underwater; income names roughly flat). No thesis breaks. No 2-strike sub-sector concern (0 satellite losses realized this week). This week (Jul 20 start): core 0/6, satellite 0/4 — unchanged, valid per the Patience Rule.
- No action taken this window (no buys, cuts, or stop tightens) — no notification sent per STEP 9.

### 3 PM Session Note
- No "### Approved Trades (verified)" section exists anywhere in today's log (pre-market Decision was HOLD; 11am confirmed no qualifying list) — no buy source, so per STEP 3 no buys placed. HOLD.
- Account: equity $96,804.92, cash $19,489.51 (20.13%, above the 20% floor) — no funding sweep needed, no buy this window.
- Risk sweep: HPE (core) -4.97% unrealized (vs -7% cut, not breached); OCUL (satellite) -11.58% unrealized (vs -15% cut, not breached — drawdown eased slightly from -11.78% at 11am). All 5 open positions (HPE, OCUL, SGOV, SPHY, EDGX) confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`orders closed`, none missing, no fills today.
- Fresh WebSearch on both held Core/Satellite names given OCUL's continued proximity to its hard-cut: OCUL — only forward-looking conference items (HC Wainwright fireside chat Jul 22, still informational not binary) and a routine inducement-grant 8-K, no negative news; SOL-1/OTX-TKI thesis unchanged, read as continued post-catalyst drift, not a thesis break. HPE — no new developments beyond the already-logged 7/19 Buy->Hold rating change; Juniper/AI-infra networking story intact. No closes triggered.
- No satellite catalyst inside the next 1-2 trading days is binary (OCUL's Jul 22 event remains informational) — no gap-risk close required. No 2-strike sub-sector concern (0 satellite losses realized this week).
- No stops eligible for tightening (both Core/Satellite positions still underwater; Income names roughly flat). No stop moved down.
- This week (Jul 20 start): core 0/6, satellite 0/4 — unchanged, valid per the Patience Rule. Risky positions closed today: none.
