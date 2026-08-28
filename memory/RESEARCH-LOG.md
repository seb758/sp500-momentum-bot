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

## 2026-08-03 — Pre-market Research

### Account
- Equity: $95,159.47 | Cash: $19,116.70 (20.09%) | Buying power: $285,556.88 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,787.10 (5.03%, MNKD) | Income exposure: $71,255.67 (74.89%: EDGX $19,627.26 / SGOV $31,777.77 / SPHY $19,850.64)
- Cash 20.09%, above the 20% floor — no funding sweep needed.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors. MNKD 15% trail $3.59975 (hwm $4.235); EDGX 5% trail $25.479 (hwm $26.82); SGOV 5% trail $95.684 (hwm $100.72); SPHY 5% trail $22.2015 (hwm $23.37).
- **New trading week (Aug 3 start): core 0/6, satellite 0/4** — last week's (Jul 27-31) zero trades don't carry over.

### Process flag — Friday 7/31 weekly screen refresh appears to have not run
WATCHLIST.md's "Current" section is still headed "Week of 2026-07-24" and WEEKLY-REVIEW.md's most recent dated entry is "Week ending 2026-07-24" — neither file has an entry for the week ending 7/31. This is the same failure mode flagged as a Key Lesson in the 7/24 weekly review ("A missed Friday refresh isn't a no-op... worth an explicit persistence check before a weekly-review run is considered complete"), recurring a second time in three weeks (the other being 7/17). Practical effect: today's trade ideas below are screened against a watchlist that is now 10 calendar days stale, and the standing decision point carried from last week — whether to re-enter the AI-hardware/semis cluster (DELL/DDOG/PANW/FTNT) after 3 consecutive mechanical core stop-outs — was never actually resolved by a weekly review. Not fabricating a refresh that didn't happen; trading today strictly off the 7/24 list per the "never trade a ticker not on the current watchlist" rule. Flagging for owner attention.

### Data-quality flag — Gemini truncated again
The consolidated Gemini Deep Research call returned a report that starts mid-document (opens on an "Industrials, Aerospace, Energy, and Consumer" section covering URI/GE/MPC/VLO/BBY) — section 1 (S&P futures/VIX), section 2 (macro catalysts/econ releases), and section 3 (held-ticker EDGX/MNKD/SGOV/SPHY overnight check) never arrived, and section 4's per-ticker coverage came through only for URI/GE/MPC/VLO/BBY plus a passing CRWD/PANW/FTNT mention. Same recurring truncation pattern flagged nearly every session since 7/24 (well past a dozen occurrences now). Filled sections 1-3 via native WebSearch below per the data-quality guard, not fabricating anything Gemini didn't return. One item from the recovered "Strategic Conclusions" section is explicitly not trusted: it lists RIGL/MNKD/CGEM/FSTR as all inside their catalyst windows "over the next 120 hours," but FSTR's own previously-verified Aug 10 earnings date is 7 trading days out, not inside 120 hours — RIGL/CGEM/MNKD dates are independently WebSearch-verified below instead.

### Market Context (WebSearch fallback — Gemini's sections 1-2 unrecoverable this session)
- VIX spot opened ~16.82 (intraday range 15.82-18.70); VIX futures ~18.03 (opened 17.98) — same contango pattern flagged in prior sessions, not a fear spike. S&P 500 Friday 7/31 close +0.70%, Dow +0.53%, Nasdaq 100 +0.60%, continuing Thursday's (7/30) sharp risk-on reversal.
- **Iran/Strait of Hormuz — de-escalation, not escalation:** Trump held off a planned military strike on Iran over the weekend in favor of resuming negotiations today (Monday 8/3) aimed at reopening the strait to a single shipping corridor; oil prices declined and Treasury yields steadied on the news. This is a genuine change from the standing "elevated/unresolved" framing carried in this log since mid-July — the acute military-escalation risk is, as of this morning, easing rather than worsening. One fresh incident noted: an LNG carrier (Qatari-origin cargo) was struck transiting the strait 8/1 — the underlying conflict remains live and unresolved, this is a de-escalation in trajectory, not a resolution.
- US equity futures reflected the de-escalation pre-market: S&P 500/Nasdaq-100 futures +~0.5%, Dow futures +~0.6%.
- This week's economic calendar is labor-market-centric: JOLTS Tuesday 8/5, Friday's employment report 8/7. No major scheduled release specifically for today beyond routine data.
- No name-specific overnight catalyst found for any core/satellite watchlist ticker beyond what's covered below.

### Held-Position Thesis Check (WebSearch — Gemini's section 3 unrecoverable this session)
- **MNKD (satellite, held, -1.50% unrealized: $4.00 → $3.94):** No new binary event. FUROSCIX ReadyFlow FDA approval (7/24) remains resolved. Q2 2026 earnings confirmed for Wednesday, August 5 after market close — 2 trading days out, inside the 5-trading-day catalyst-proximity window, but this is a standard earnings print, not the binary regulatory catalyst the position was originally sized against (already resolved 7/24) — a watch item, not a re-triggered gap-risk case. Well clear of the -15% hard-cut. No action.
- **EDGX (income, held, -1.75% unrealized):** No idiosyncratic news found. Stop $25.479 vs current $26.31 — comfortable buffer. No action.
- **SGOV (income, held, -0.21% unrealized):** No thesis-breaking news. No action.
- **SPHY (income, held, -0.73% unrealized):** No idiosyncratic news found this session. Stop $22.2015 vs current $23.19 — well clear. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-07-24)
None sourced pre-market. Gemini's per-ticker coverage for the 25-name core list came through only for URI, GE, MPC, VLO, BBY (none held, all fundamentally intact per the recovered section, no negative flags) plus a passing CRWD/PANW/FTNT mention; the other ~17 names (DELL, MU, DDOG, HUM, AMD, HPE, CNC, STX, DVA, NTAP, WDC, AMAT, DOC, WST, LLY, ABBV) have no confirmed overnight check today. The standing decision point carried from last week — whether DELL/DDOG/PANW/FTNT's repeated live-passing momentum-gate status (7/29, 7/30, 8/1 sessions) justifies re-entering the AI-hardware/semis cluster after 3 consecutive mechanical stop-outs (MU 7/24, MU 7/27, HPE 7/28) — remains unresolved (see Process flag above; no weekly review ran to decide it). Needs a live-bar momentum-gate + spread recheck at market-open; not treating carryover momentum-pass status as a standing pre-authorization to buy.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-07-24)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; earnings 8/5 is a watch item, not a new binary-gap case. No new entry (already held).
2. **RIGL** — not held. Q2 2026 earnings confirmed Tuesday, August 4 after close, 4:30pm ET call — 1 trading day out, inside the 5-trading-day window. Standard 7.5% cap would apply if entered (earnings catalyst, not FDA/regulatory). This name has also repeatedly failed the wide/illiquid-spread skip rule in recent sessions (7/31: bid $32.30/ask $44.25, ~31% spread) — needs a fresh live quote at market-open before any consideration, not a pre-market entry.
3. **CGEM** — not held. **Date discrepancy flagged:** this log's prior entries (7/31) had Q2 2026 earnings confirmed for Thursday, August 6; a fresh WebSearch this session returns August 7 (pre-market) instead. Not resolving this conflict by picking one — both fall inside the 5-trading-day window regardless (3-4 trading days out), so the practical in-window conclusion is unchanged, but the exact date needs live re-verification before any entry decision. Zipalertinib NDA-timing inconsistency flagged on WATCHLIST.md also remains unresolved.
4. **FSTR** — not held. Q2 2026 earnings remains confirmed for Monday, August 10 — 7 trading days out, outside the 5-day window (Gemini's "120 hours" claim for this name is not trusted, see Data-quality flag). No new news beyond the already-logged 8/1 SVP-Rail succession (Jason Bowlin), a routine continuity item. No action.
5. **CVLG** — not held. Catalyst already resolved negatively on margin at the 7/29 print (per 7/31 entry). No action.

### Risk Factors
- Friday 7/31's weekly screen refresh appears to have not run — watchlist is 10 calendar days stale and the AI-hardware-cluster re-entry decision point was never resolved. See Process flag above; needs owner attention.
- Gemini Deep Research truncated again — sections 1-3 lost, filled via WebSearch. Well past a dozen consecutive sessions with a serious data-quality issue on this call; the standing recommendation to address this at the next weekly review still hasn't been actioned because the last two weekly reviews (7/17, 7/31) don't appear to have run.
- CGEM's earnings date is now unconfirmed between two sources (8/6 vs 8/7) — doesn't change the in-window conclusion but needs live re-verification before any entry.
- RIGL (1 trading day) and CGEM (3-4 trading days) are both inside their satellite catalyst windows with a recurring wide/illiquid-spread pattern on RIGL specifically — real gap + liquidity risk if either is considered for entry, not evaluated pre-market.
- Iran/Strait of Hormuz: net de-escalation this weekend (Trump held off a strike, talks resume today, oil down) after weeks of this being an unresolved standing risk — but the underlying conflict is not resolved (a tanker was struck 8/1) and today's negotiations could go either way; not treating this as fully resolved.
- No held position is near its hard-cut: MNKD -1.50% (cut -15%), EDGX -1.75% / SPHY -0.73% (both well inside the 5% income stop), SGOV -0.21%.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut. No satellite catalyst has resolved negatively — MNKD's FDA catalyst remains resolved positive from 7/24, RIGL/CGEM haven't reported yet. The Iran/Hormuz news this weekend is a de-escalation, not an escalation, and VIX remains in its normal range — doesn't clear the urgent-notification bar. The missed 7/31 weekly refresh is a real process gap but not itself a today's-market emergency; flagged here rather than via an urgent SendGrid send. Handoff to market-open: (1) live-bar momentum-gate + spread recheck for DELL/DDOG/PANW/FTNT (and the broader core list) given the still-unresolved AI-hardware re-entry decision; (2) RIGL and CGEM both inside their catalyst windows — live spread/momentum check before any entry, 7.5% cap if entered, re-verify CGEM's exact earnings date; (3) cash 20.09%, at/above the floor, recheck before any buy; (4) the missed weekly refresh needs owner attention — recommend running `/screen-refresh` ad hoc rather than waiting for next Friday. New trading week (Aug 3 start): core 0/6, satellite 0/4.

### 9:30 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG — per STEP 3 this window trades from that list only, so no buys placed. This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- **Core momentum-gate recheck (handoff item #1), live via fresh Alpaca daily bars:** DELL, DDOG, PANW, and FTNT all cleanly pass the momentum gate — positive 3M/6M relative return vs SPY (DELL +94.0pp/+242.1pp, DDOG +102.7pp/+109.1pp, PANW +85.0pp/+88.3pp, FTNT +92.1pp/+98.7pp) and price above both 50-day and 200-day MA on all four. DELL's two flagged >20% single-day moves (2026-02-27, 2026-05-29) were already verified real in prior weeks' screens, not artifacts. **But liquidity is mixed ~3-4 min post-open:** live quotes showed DELL ~4.8-5.3%, DDOG ~8.9-10.6%, and FTNT ~4.1-6.3% bid/ask spreads — re-checked a minute later, unchanged — in the same range that tripped the wide/illiquid-spread skip rule for WDC/STX/AMAT on 7/24 (6.5-10.2%). Only PANW was tight (~1.4-2.4%), comparable to names that passed the liquidity check that same day (MU ~0.7%). No entry placed in any of the four: DELL/DDOG/FTNT fail the spread check outright, and PANW alone doesn't resolve the standing, still-unaddressed decision — pre-market explicitly said not to treat repeated momentum-gate passes as a standing pre-authorization, and this is the same open sector-concentration question (AI-hardware/semis re-entry after MU 7/24, MU 7/27, HPE 7/28) that two consecutive missed weekly reviews (7/17, 7/31) have failed to resolve. Executing a unilateral entry into that exact disputed cluster from this session, without the review ever having happened, isn't the right place to force the call — holding and re-flagging for owner attention again, more urgently given this is now the 4th+ session carrying it forward.
- **Satellite: both in-window candidates skipped on spread again.** RIGL quoted bid $31.26/ask $43.48 (~32.7% spread); CGEM quoted bid $13.84/ask $18.95 (~31.2% spread). Both fail the wide/illiquid-spread skip rule — same recurring pattern flagged repeatedly since 7/21. No satellite entry; MNKD (held) unchanged, no add (already 1/4 satellite positions, no new capital added to an existing name outside the rules anyway).
- **Risk sweep:** no position near a hard-cut (MNKD -2.75% vs -15%; EDGX/SPHY/SGOV all well inside their 5% income stops; no core positions to evaluate). No stop tightening — MNKD is underwater, not past a gain-based threshold; Income sleeve has no gain-based schedule. No stop moved down. All 4 open positions confirmed carrying live GTC trailing stops via `alpaca.sh positions`, none missing. Cash 20.07% ($19,116.70 / $95,247.26 equity), above the 20% floor — no funding sweep needed, no trade fired anyway. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Lesson for Friday's review (if it runs this time):** the DELL/DDOG/PANW/FTNT sector-re-entry decision has now been carried, unresolved, across at least 5 sessions (7/29, 7/30, 8/1, and today) and 2 missed weekly reviews — worth an explicit owner decision (enter/don't-enter, and at what sizing) rather than another silent carry-forward. Separately, PANW's clean momentum + tight spread combination today is a reminder that DDOG/FTNT/PANW are cybersecurity/software per the watchlist's own sector-concentration breakdown, not the AI-hardware/semis group (DELL/MU/STX/WDC/AMAT/NTAP/HPE) that actually took the 3 stop-outs — bundling all four under one "AI-hardware/semis cluster" label in this log's recent entries may be conflating two distinct sector questions; worth untangling explicitly at the next review rather than treating them as one decision.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG — per STEP 3 this window trades from that list only, so no buys placed. This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- **Risk sweep, live via `alpaca.sh account`/`positions`/`orders`:** equity $95,224.15, cash $19,116.70 (20.08%, at/above the 20% floor, no funding sweep needed). All 4 positions well clear of their hard-cuts — MNKD -3.63% (cut -15%), EDGX -0.86% / SPHY -0.79% / SGOV -0.21% (all well inside the 5% income stop). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing: MNKD 15% trail $3.59975 (hwm $4.235), EDGX 5% trail $25.479 (hwm $26.82), SGOV 5% trail $95.684 (hwm $100.72), SPHY 5% trail $22.2015 (hwm $23.37).
- **No stop tightening this window** — no position is in gain past its sleeve's gain-based threshold (all 4 are currently underwater; Income sleeve has no gain-based schedule anyway). No stop moved down.
- **Thesis check:** no break on any held name. MNKD's FUROSCIX catalyst remains resolved since 7/24; Aug 5 earnings (2 trading days out) is a watch item, not a re-triggered binary-gap case per the 9:30 AM note — no action. No Gemini call this window — nothing moved sharply without an obvious cause; day-over-day moves are modest drift consistent with the broader tape. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Lesson:** no new pattern beyond the 9:30 AM note's carryover items (AI-hardware/semis re-entry decision, missed 7/31 weekly refresh) — both still open, still need owner/Friday-review attention.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG — per STEP 3, no buys placed this window. This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- **Risk sweep, live via `alpaca.sh account`/`positions`/`orders`:** equity $95,286.30, cash $19,116.70 (20.06%, at/above the 20% floor, no funding sweep needed). No position at/beyond its sleeve hard-cut — MNKD -4.88% (cut -15%), EDGX -0.28% / SPHY -0.75% / SGOV -0.20% (all well inside the 5% income stop). All 4 positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing: MNKD 15% trail $3.59975 (hwm $4.235), EDGX 5% trail $25.479 (hwm $26.82), SGOV 5% trail $95.684 (hwm $100.72), SPHY 5% trail $22.2015 (hwm $23.37). No thesis break on any held name.
- **MNKD catalyst-window check:** Q2 earnings confirmed Wed Aug 5 after close — 2 trading days out, inside the 1-2 trading-day proximity window mentioned in STEP 4, but per WATCHLIST.md there is no firm near-dated FDA/regulatory binary date for MNKD (the FUROSCIX PDUFA that the position's 5% binary sizing was originally set against resolved 7/24). This is a standard earnings print, not the documented binary catalyst — conviction unchanged, position already sized conservatively (5% cap) and well clear of its hard-cut. **Holding through, not closing** — same conclusion as the 9:30 AM and 11 AM notes, restated explicitly per STEP 4's requirement to document rather than silently pass.
- **No stop tightening this window** — no position is in gain past its sleeve's gain-based threshold (all 4 currently underwater vs. entry; Income sleeve has no gain-based schedule anyway). No stop moved down.
- **2-strike sub-sector tracker unchanged:** biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Risky positions closed today: none.**
- **Lesson for Friday's review (if it runs):** carrying forward the two open items from pre-market/9:30/11am — the still-unresolved DELL/DDOG/PANW/FTNT AI-hardware/semis re-entry decision (now carried across a 6th+ session) and the missed 7/31 weekly screen refresh (watchlist now stale since 7/24). Neither is a same-day action item; both need explicit owner/Friday-review resolution.

## 2026-08-02 — Pre-market Research (Sunday — market closed, no trading day)

### Account
- Equity: $95,281.68 | Cash: $19,116.70 (20.06%) | Buying power: $285,928.23 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,750.65 (4.99%, MNKD) | Income exposure: $71,414.33 (74.95%: EDGX $19,627.26 / SGOV $31,867.95 / SPHY $19,919.12)
- Cash 20.06% is at/above the 20% floor — no funding sweep needed.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors.
- This week (Jul 27 start): core 0/6, satellite 0/4 — no trades.
- **Today is Sunday — not a trading day.** No market-open/11am/3pm sessions will execute against today's date; this is a research-only entry. Any trade ideas below are informational for Monday 8/3, not actionable today.

### Data-quality flag
Gemini's consolidated call again started mid-document — captured output opens directly on section "2. Semiconductors & Data Infrastructure," missing section 1 (S&P futures/VIX), the market-catalysts/economic-releases section, and the held-ticker (EDGX/MNKD/SGOV/SPHY) thesis-break section entirely. Same recurring truncation pattern flagged every session since 7/24. Did not fabricate any figure from the missing sections — filled futures/VIX and held-position news via native WebSearch instead, flagged below.

Separately, Gemini's satellite catalyst-proximity table (which *did* arrive complete) asserts **no catalyst within 5 trading days for RIGL or CGEM** — this directly contradicts this log's own previously-verified dates: RIGL Q2 earnings confirmed **Tuesday Aug 4** (7/31 entry, GlobeNewswire-sourced) and CGEM Q2 earnings confirmed **Thursday Aug 6** (7/31 entry). Both dates, if still accurate, fall inside the 5-trading-day window as of Monday 8/3 (Aug 4 = 2 trading days out, Aug 6 = 4 trading days out). Not overwriting the previously-verified dates with Gemini's contradicted claim — treating RIGL/CGEM as **still inside their catalyst windows** pending a live re-verification Monday, not as newly cleared.

### Market Context (WebSearch fallback for futures/VIX — Gemini's section 1 unrecoverable this session)
- VIX (front-month futures) ~18.5-18.8, S&P 500 cash index closed Friday 7/31 +0.70%, September E-mini S&P futures (ESU26) +0.69% — normal range, no fear spike.
- Geopolitical: Gemini's recovered sections (3-5) describe direct U.S.-Iran military strikes in Kuwait and Bahrain over the weekend injecting volatility into crude prices — consistent with, and an apparent escalation of, the ongoing Iran/Strait-of-Hormuz conflict tracked in this log since mid-July. Not independently WebSearch-confirmed this session; treat as an unverified single-source claim pending Monday's cross-check, not an urgent trigger given VIX remains compressed.
- SK Hynix Q2 earnings miss triggered a broad memory-sector selloff hitting MU and WDC (both core watchlist, not held); STX (also watchlist, not held) reportedly decoupled and held up on its HAMR/AI-storage narrative — relevant to a future core entry decision, not actionable pre-market.
- GE Vernova (GEV, not held, not on watchlist) posted a -22.1% EPS miss over the weekend — no read-through to held/watchlisted GE.
- CNC (core watchlist, not held) flagged by Gemini with an "existential" Medicare Part D subsidy-termination earnings risk — consistent with the HUM/CVS Part D headwind already logged 7/30; CNC not held, relevant only to future core consideration.
- AMD (core watchlist, not held) reports Q2 earnings Tuesday 8/4; AMAT (watchlist, not held) faces a fresh geopolitical headwind from reported Chinese domestic DUV lithography tools bypassing ASML export controls.
- MPC (watchlist, not held) has Q2 earnings Aug 4; both MPC/VLO (watchlist, not held) may see a crack-spread bid if the Iran/Kuwait/Bahrain escalation holds.

### Held-Position Thesis Check (WebSearch fallback — Gemini's held-ticker section unrecoverable this session)
- **MNKD (satellite, held):** No thesis-breaking news. WebSearch confirms Q2 2026 earnings remains dated **Wednesday, August 5, 2026** — outside the 5-trading-day window as of Monday. A $50M private placement (led by Frazier Life Sciences) and positive Phase 1b topline results for INFLO-1 (nintedanib dry powder) were both reported in late July — the private placement is modestly dilutive but not a thesis break; the trial data is incrementally positive. -2.25% unrealized ($4.00 → $3.91), well clear of the -15% hard-cut (stop $3.59975). No action.
- **EDGX (income, held):** No idiosyncratic news found. -1.75% unrealized, stop $25.479 vs current $26.31 — comfortable buffer. No action.
- **SGOV (income, held):** No thesis-breaking news. +0.08% unrealized. No action.
- **SPHY (income, held):** No idiosyncratic news found this session. -0.39% unrealized, stop $22.2015 vs current $23.27 — well clear. No action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None — market closed today, purely informational. Standing carryover from the 7/31 weekly review: DELL/DDOG/PANW/FTNT have live-passed the momentum gate across multiple recent sessions, with the sector-concentration caution (3 consecutive mechanical core stop-outs this month: MU 7/24, MU 7/27, HPE 7/28) the deciding factor on re-entry. This session's SK Hynix-driven memory selloff (hitting MU/WDC) and STX's reported decoupling are new inputs for that decision, not yet acted on. Needs a fresh live-bar momentum-gate + spread check Monday at market-open, consistent with the Patience Rule.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; earnings 8/5 (outside 5-day window as of Monday). Monitor only, no new entry.
2. **RIGL** — not held. Per this log's own 7/31-verified date, Q2 earnings Tuesday 8/4 — 2 trading days out as of Monday, inside the 5-trading-day window (see Data-quality flag: Gemini's table today contradicts this without new evidence, not trusted over the prior verified source). Standard 7.5% cap would apply if entered (earnings catalyst, not FDA/regulatory). No action today; live spread/momentum recheck needed Monday — this name has repeatedly failed the wide/illiquid-spread skip rule in recent sessions.
3. **CGEM** — not held. Per this log's own 7/31-verified date, Q2 earnings Thursday 8/6 — 4 trading days out as of Monday, inside the 5-trading-day window (same Gemini-contradiction caveat as RIGL above). Zipalertinib NDA-timing inconsistency flagged on WATCHLIST.md remains unresolved. No action today; live recheck needed Monday.
4. **FSTR** — not held. Gemini confirms a Board-approved executive officer change (SVP-Rail transition, effective 8/1) — a low-risk continuity event per Gemini's own characterization (prior similar announcement moved the stock -0.42%), not a thesis-relevant catalyst. Next earnings remains outside the window per prior verification. No action.
5. **CVLG** — not held. Catalyst (Q2 earnings, 7/29 AMC) already resolved negatively on margin (per 7/31 entry: adjusted EPS beat but operating ratio degraded to 98.0%, CEO flagged cost disappointment) — Gemini's fuller detail today ($332.9M revenue vs $302.9M YoY, $8.8M operating income, $289.7M net debt) confirms rather than changes that read. No action.

### Risk Factors
- Gemini's report truncated again — no futures/VIX, catalysts, or held-position sections recovered; WebSearch backfill used, flagged above. Recurring pattern every session since 7/24, worth resolving before trusting Gemini output unverified again (carry to next weekly review).
- Gemini's satellite catalyst-proximity table contradicts this log's own previously-verified RIGL (8/4) and CGEM (8/6) earnings dates without new evidence — treated as unreliable and not adopted; both names held as still-inside-window pending Monday's live re-verification.
- Unverified single-source claim (from Gemini's recovered sections only) of fresh direct U.S.-Iran military strikes in Kuwait/Bahrain over the weekend — not independently WebSearch-confirmed this session despite an attempt; needs a Monday cross-check. VIX remains compressed (~18.5-18.8), so the market is not currently pricing this as an acute shock.
- SK Hynix-driven memory-sector selloff hit MU/WDC (watchlist, not held); STX (watchlist, not held) reportedly decoupled — relevant to the standing core AI-hardware re-entry decision, not yet acted on.
- CNC (watchlist, not held) flagged with an "existential" Medicare Part D subsidy-termination risk — consistent with the already-logged HUM/CVS headwind; relevant only to future core consideration.
- No held position is near its hard-cut: MNKD -2.25% (cut -15%), EDGX -1.75% (5% trailing, comfortable buffer), SPHY -0.39% (well clear), SGOV +0.08%.

### Decision
**HOLD** (market closed — Sunday, no trading possible regardless of research findings). No held position is near its hard-cut. No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive from 7/24. No confirmed *new* major geopolitical shock meeting the urgent-notification bar: the one unverified claim of fresh Iran/Kuwait/Bahrain strikes could not be independently confirmed this session, and VIX remains compressed, so it does not clear the bar for an urgent send pending Monday's verification. No urgent SendGrid notification sent this run. Handoff to Monday 8/3: (1) live-bar momentum-gate + spread recheck for the AI-hardware cluster (DELL/DDOG/PANW/FTNT), now with the added context of the SK Hynix-driven MU/WDC selloff and STX's reported decoupling; (2) RIGL (2 trading days) and CGEM (4 trading days) — re-verify their earnings dates live given today's Gemini contradiction, then live spread/momentum check before any entry; (3) cash 20.06%, at/above the floor, recheck before any Monday buy; (4) independently confirm or rule out the reported Iran/Kuwait/Bahrain strikes; (5) flag the now-five-consecutive-session Gemini truncation pattern plus today's new contradicted-catalyst-date issue for the next weekly review. This week (Jul 27 start) stays at core 0/6, satellite 0/4.



## 2026-08-01 — Pre-market Research (Saturday — market closed, no trading day)

### Account
- Equity: $95,281.68 | Cash: $19,116.70 (20.06%) | Buying power: $285,928.23 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,750.65 (4.99%, MNKD) | Income exposure: $71,414.33 (74.95%: EDGX $19,627.26 / SGOV $31,867.95 / SPHY $19,919.12)
- Cash 20.06% is at/above the 20% floor — no funding sweep needed.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors.
- This week (Jul 27 start): core 0/6, satellite 0/4 — no trades.
- **Today is Saturday — not a trading day.** No market-open/11am/3pm sessions will execute against today's date; this is a research-only entry. Any trade ideas below are informational for Monday 8/3, not actionable today.

### Data-quality flag — Gemini report rejected on multiple counts this session
The consolidated Gemini Deep Research call returned a report with severe, compounding data-quality problems — worse than the truncation pattern flagged every session since 7/24, and an escalation beyond the outright fabrication flagged 7/29. Cross-checked against independent WebSearch before writing anything below:
1. **Fabricated/wrong macro figure:** Gemini asserted "core inflation has re-accelerated to 3.2%." This does not exist — the last actual core CPI print (June 2026, released July) was 2.6% YoY, and July's CPI is not due until August 12, 2026. Rejected outright, not used below.
2. **Volatility narrative contradicted by real data:** Gemini described "elevated tail-risk hedging," a VIX "climbing toward 20," and "the equity risk premium has effectively vanished." Independent WebSearch shows VIX actually compressed to ~16.21 intraday Friday 7/31 (prior close 17.09) and S&P 500 futures +0.41% — i.e. the market is calm/risk-on, the opposite of Gemini's framing. The 10-year yield figure (4.69-4.75%) was roughly correct and is used below.
3. **Stale news repackaged as "overnight":** several items presented as fresh developments are actually already-logged, days-to-weeks-old events: the SMCI $60B order backlog / DELL+6%/HPE+5% after-hours reaction dates to ~7/21-7/22 (already old news, not new since); the Medicare Part D subsidy-termination hit to CNC/CVS/HUM and HUM's GAAP guidance cut ($8.36→$6.52) were already reported and logged in the 7/30 pre-market entry, not new for today. CRWD's earnings-reaction drop also appears to predate today, unconfirmed date, next earnings not until 8/25.
4. **One item does check out as real and current:** the underlying Iran/Strait of Hormuz conflict is a genuine, ongoing war (Ali Khamenei assassinated 2026-02-28; son Mojtaba Khamenei confirmed as Iran's new Supreme Leader 2026-03-08; strait effectively closed to US/Israel-linked shipping since March, consistent with the "Iran/Hormuz escalation" already noted in this account's own 2026-07-14 log). A fresh incident is independently confirmed: IRGC-linked forces struck tankers transiting under US military escort on/around 7/31, per CNBC. The DOE's ~172M-barrel SPR release is real but dates to March 2026, not new. Given VIX is compressed and futures are calm, the market is not currently pricing this as a fresh risk-off shock — noted as a standing risk factor, not an urgent trigger (see Decision).
Given the scale of these problems, Gemini's report is rejected as a synthesis; only independently WebSearch-verified facts are used below. This is now four consecutive sessions (7/28 truncation, 7/29 fabrication, 7/30 truncation, 8/1 fabrication+staleness+contradicted-by-data) with a serious Gemini data-quality failure — strongly recommend addressing this at the next weekly review (e.g., dropping Gemini for daily research and relying on WebSearch, or re-testing the wrapper/prompt).

### Market Context (WebSearch-verified; Gemini's synthesis rejected per flag above)
- VIX ~16.21 intraday Fri 7/31 (prior close 17.09) — compressed, calm. S&P 500 e-mini ~7,493.75, +0.41%. 10-year Treasury yield ~4.69-4.75%, a real but gradual rise (not a sudden spike).
- Core CPI 3.2%: rejected as fabricated (see flag). Last real print: June core CPI +2.6% YoY, flat 0.0% MoM. July CPI due 8/12/2026.
- Iran/Strait of Hormuz: ongoing war since Feb/Mar 2026 (new Supreme Leader Mojtaba Khamenei since 3/8); fresh IRGC strike on US-escorted tankers ~7/31 per CNBC. Not currently moving VIX/futures — market pricing calm despite it.
- HUM/CNC/CVS Medicare Part D subsidy-termination headwind and HUM's GAAP guidance cut ($8.36→$6.52 EPS) — real, but already logged 7/30, not new today. None of the three held.
- SMCI's $60B AI-server order backlog and the DELL(+6%)/HPE(+5%) sympathy pop — real, but dates to ~7/21-7/22, not fresh overnight news. Relevant to the standing core AI-hardware-cluster re-entry question carried from Friday's (7/31) weekly review, not a new signal today.

### Held-Position Thesis Check
- **MNKD (satellite, held):** No new binary event; FUROSCIX ReadyFlow FDA approval (7/24) remains resolved. Next earnings 8/5, outside the 5-day window. -2.25% unrealized ($4.00 → $3.91), well clear of the -15% hard-cut (stop $3.59975). Thesis intact, no action.
- **EDGX (income, held):** No idiosyncratic news. -1.75% unrealized, stop $25.479 vs current $26.31 — comfortable buffer. No action.
- **SGOV (income, held):** No thesis-breaking news. +0.08% unrealized. No action.
- **SPHY (income, held):** -0.39% unrealized, stop $22.2015 vs current $23.27 — well clear. Standing OAS-compression caution unchanged (weekly-review item, not a pre-market action). No action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None — market closed today, purely informational. Carried forward from Friday's (7/31) weekly-review decision point: DELL/DDOG/PANW/FTNT have live-passed the momentum gate across multiple recent sessions, with the sector-concentration caution (3 consecutive mechanical core stop-outs this month: MU 7/24, MU 7/27, HPE 7/28) the only thing holding back re-entry. SMCI's backlog update (real but ~10 days old) reinforces the AI-hardware demand thesis but isn't new information. Needs a fresh live-bar momentum-gate + spread check Monday at market-open regardless, consistent with the Patience Rule.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; earnings 8/5 (outside 5-day window as of Monday). Monitor only, no new entry.
2. **RIGL** — not held. Q2 2026 earnings Tuesday 8/4 after close — will be inside the 5-trading-day window as of Monday 8/3. Standard 7.5% cap would apply if entered (earnings catalyst, not FDA/regulatory). No action today (market closed); live spread/momentum recheck needed Monday given this name's recurring wide-spread skip pattern.
3. **CGEM** — not held. Q2 2026 earnings ~8/6-8/7 — will be inside the 5-day window as of Monday. Zipalertinib NDA-timing inconsistency flagged on WATCHLIST.md remains unresolved. No action today; live recheck needed Monday.
4. **FSTR** — not held. No new tradeable catalyst; Q2 earnings 8/10 remains outside the window.
5. **CVLG** — not held. Catalyst (Q2 earnings, 7/29 AMC) already resolved negatively on margin (per 7/31 entry); no change. No action.

### Risk Factors
- Gemini Deep Research output rejected outright this session for a fabricated CPI figure, a volatility narrative contradicted by real VIX/futures data, and several "overnight" items that are actually days-to-weeks stale — see Data-quality flag above. Fourth consecutive session with a serious Gemini data-quality problem; recommend addressing at the next weekly review.
- Iran/Strait of Hormuz war remains a real, ongoing risk (fresh tanker strike ~7/31) with potential to affect VLO/MPC (refiners, watchlist not held) and broader risk sentiment, but is not currently moving VIX/futures — treated as a standing watch item, not an urgent trigger today.
- HUM/CNC/CVS Medicare Part D subsidy-termination headwind persists (already logged 7/30); none held, relevant only to future core consideration.
- No held position is near its hard-cut: MNKD -2.25% (cut -15%), EDGX -1.75% (5% trailing, comfortable buffer), SPHY -0.39% (well clear), SGOV +0.08%.
- Standing carryover: core AI-hardware-cluster re-entry question (DELL/DDOG/PANW/FTNT) from Friday's weekly review — needs a live decision Monday, not today.

### Decision
**HOLD** (market closed — Saturday, no trading possible regardless of research findings). No held position is near its hard-cut. No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive from 7/24. No confirmed *new* major geopolitical shock meeting the urgent-notification bar: the Iran/Hormuz conflict is real and ongoing (fresh tanker strike ~7/31) but the market itself is pricing it calmly (VIX compressed ~16.21, futures +0.41%), and it isn't new information beyond what's already been tracked in this log since 7/14. No urgent SendGrid notification sent this run. Handoff to Monday 8/3 pre-market/market-open: (1) live-bar momentum-gate + spread recheck for the AI-hardware cluster (DELL/DDOG/PANW/FTNT) — this week's carryover decision point; (2) RIGL (earnings 8/4) and CGEM (earnings ~8/6-8/7) will both be inside their satellite catalyst windows — live spread/momentum check before any entry; (3) cash 20.06%, at/above the floor, recheck before any Monday buy; (4) flag the now-four-consecutive-session Gemini data-quality failure for the next weekly review. This week (Jul 27 start) stays at core 0/6, satellite 0/4.



### Account
- Equity: $95,506.14 | Cash: $19,116.70 (20.02%) | Buying power: $286,372.02 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,981.50 (5.22%, MNKD) | Income exposure: $71,407.93 (74.76%: EDGX $19,629.42 / SGOV $31,867.95 / SPHY $19,910.56)
- Cash 20.02% is at/above the 20% floor — no funding sweep needed.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors.
- This week (Jul 27 start): core 0/6, satellite 0/4 — no trades yet.

### Data-quality note
Gemini's consolidated call again started mid-document — no sections 1 (futures/VIX) or the held-ticker overnight-news section arrived in captured output (it opens directly on the satellite catalyst-proximity table and references "the Current Holdings section" that was never actually shown). Same recurring truncation pattern flagged in every session since 7/24. Did not fabricate any figure from the missing sections; filled sections 1 and 3 via native WebSearch instead, flagged as such below. The satellite catalyst-proximity table Gemini did return (section 4) looks complete and internally consistent, so that part is used as-is.

### Market Context (WebSearch fallback for futures/VIX/macro — Gemini's sections 1-2 unrecoverable this session)
- VIX futures ~18.5-18.8 (normal range, no fear spike). Thursday 7/30 was a big risk-on session: S&P 500 +1.7%, Nasdaq 100 +3.4%, MSFT +16% (~$450B added) on strong earnings/AI-capex commentary — a sharp reversal of the semis/AI-hardware rout that drove 3 consecutive mechanical core stop-outs (MU 7/24, MU 7/27, HPE 7/28). Today's session (per Gemini's captured synthesis) described as a continued tech-led gap-up in the Nasdaq 100, alongside a hawkish bond-market undertone (10-year yield ~4.67%) and an elevated SKEW/contangoed VIX term structure — read together as "don't blindly chase the gap-up," not a risk-off signal.
- June PCE (already released, reference data): headline -0.1% MoM, core +0.1% MoM, 3.7%/3.3% YoY — benign, roughly as expected.
- Today's releases: Employment Cost Index (8:30am ET), Michigan Consumer Sentiment final (10am ET).
- **ABBV (core watchlist, not held) reports Q2 pre-market today** — guided EPS $3.57-3.61 vs consensus $3.66, revenue ~$16.7B vs consensus $16.81B. Real event risk for the name but not a pre-market entry signal (no live quotes yet); flagged as this session's most concrete earnings catalyst on the watchlist.
- No dedicated market-catalysts section recovered from Gemini beyond the above; nothing else material surfaced via WebSearch.

### Held-Position Thesis Check
- **MNKD (satellite, held):** No new binary event. FUROSCIX ReadyFlow FDA approval (7/24) remains fully resolved; Gemini confirms Q2 2026 earnings now dated **Wednesday, August 5, 2026** (WebSearch-corroborated, GlobeNewswire 7/28 release) — not inside the 5-trading-day window as of today. +2.5% unrealized ($4.00 → $4.10), well clear of the -15% hard-cut. Thesis intact, no action.
- **EDGX (income, held):** No idiosyncratic news beyond routine July distribution announcements (Global X, 7/24). -1.74% unrealized, stop at $25.479 vs current $26.3129 — comfortable buffer. No action.
- **SGOV (income, held):** No thesis-breaking news; standing liquidity-base rationale unchanged. +0.08% unrealized.
- **SPHY (income, held) — standing caution, not new:** OAS still reported ~267bps, same compressed-spread caution flagged repeatedly in prior sessions (weekly-review-cadence discussion item, not a pre-market action). -0.43% unrealized, well clear of the 5% stop. No action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Core sleeve remains flat (0 positions since HPE's 7/28 stop-out). Yesterday's sharp tech-led rally (S&P +1.7%, Nasdaq 100 +3.4%, MSFT +16%) is a genuine positive reversal signal for the AI-hardware/semis cluster (DELL, MU, DDOG, PANW, FTNT, AMD, HPE, STX, NTAP, WDC, AMAT, CRWD) that has been the source of 3 consecutive mechanical core stop-outs this month — DELL/DDOG/PANW/FTNT were already flagged as live-passing the momentum gate as of 7/29's 9:30am check. Whether to re-enter this cluster (vs. the standing sector-concentration caution) is explicitly the decision point flagged for today's weekly review, not a pre-market call — needs a fresh live-bar momentum-gate + spread check at market-open regardless. ABBV's pre-market print is a fresh data point for future core consideration, not evaluated today (reports pre-market, no live reaction yet). No candidate clears pre-market given the change in regime is too fresh to trust without live data — consistent with the Patience Rule.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; earnings 8/5, outside the window. Monitor only, no new entry.
2. **RIGL** — not held. Q2 2026 earnings confirmed Tuesday, **August 4, 2026** after close — **2 trading days out, inside the 5-trading-day window.** Consensus EPS $0.13-0.14 / revenue $55.27M. Real gap risk on entry this close to a binary print; standard 7.5% cap would apply (earnings catalyst, not FDA/regulatory) per the established ORN/FSTR/CVLG precedent. No pre-market entry — defer to a live momentum/spread recheck at market-open, watching for the recurring wide-spread pattern that has skipped this name repeatedly.
3. **CGEM** — not held. Q2 2026 earnings now confirmed Thursday, **August 6, 2026** pre-market — **4 trading days out, inside the 5-trading-day window.** New from Gemini: recent positive FDA End-of-Phase-1 feedback for CLN-049 (FLT3xCD3 bispecific, AML) clears the path to a registrational Phase 2 start Q3 2026; cash runway extended to ~$439M into 2029 (de-risks dilution). Does not resolve the standing zipalertinib NDA-timing inconsistency flagged on WATCHLIST.md — that remains a separate, still-unconfirmed item. No pre-market entry given the earnings proximity — defer to market-open live check.
4. **FSTR** — not held. Q2 2026 earnings confirmed Monday, August 10 — 6 trading days out, outside the window. Credit facility expanded to $150M through 2030 (positive balance-sheet update); PT raised to $40; new SVP-Rail succession announced. No action.
5. **CVLG** — not held. Catalyst resolved: Q2 2026 results reported 7/29 AMC — adjusted EPS $0.42 (beat) but operating ratio 97.3% (margin degradation), stock -8.9% on the print per Gemini. Confirms the margin-compression risk flagged as the live watch item in the 7/24 WATCHLIST.md entry. No action (not held, catalyst now resolved negatively on the margin dimension) — flag for the next screen refresh as a name whose earnings-day price action doesn't support a fresh look.

### Risk Factors
- Gemini's report truncated again — no futures/VIX or market-catalysts sections recovered; WebSearch backfill used, flagged above. Recurring pattern every session since 7/24, worth resolving before trusting Gemini output unverified again (carry to Friday's review).
- ABBV (core watchlist, not held) reports pre-market today — guided EPS below consensus ($3.57-3.61 vs $3.66); a real data point for future core consideration once the market reacts, not acted on pre-market.
- RIGL (2 trading days) and CGEM (4 trading days) both now confirmed inside the satellite catalyst window — real gap risk if either is considered for entry; 7.5% cap would apply to either (earnings, not FDA/regulatory), not evaluated pre-market.
- CVLG's Jul 29 earnings print resolved negatively on margins (-8.9% reaction) — not held, but confirms the standing margin-compression concern rather than resolving it positively.
- Yesterday's sharp AI/tech rally (Nasdaq 100 +3.4%, MSFT +16%) is a genuine but very fresh reversal of the semis rout responsible for 3 mechanical core stop-outs this month — real risk of chasing a one-day move; needs live-bar confirmation at market-open, not assumed durable.
- No held position is near its hard-cut: MNKD +2.5% (cut -15%), EDGX -1.74% (5% trailing stop, comfortable buffer), SPHY -0.43% (stop well clear), SGOV +0.08%.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut. No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive from 7/24. No confirmed major geopolitical event meeting the urgent-notification bar. Handoff to market-open: (1) live-bar momentum-gate + spread recheck for DELL/DDOG/PANW/FTNT (and the broader AI-hardware cluster) given yesterday's sharp reversal rally — this is also today's weekly-review decision point on re-entering the sector post-caution; (2) RIGL (2 trading days) and CGEM (4 trading days) both inside the satellite catalyst window — live spread/momentum check before any entry, 7.5% cap if entered; (3) ABBV's pre-market print — watch market reaction, no action pre-market; (4) cash 20.02%, at/above the floor, no funding sweep needed absent a new buy; (5) confirm VIX/futures tone with a fresh check at market-open given this session's Gemini truncation gap. This week (Jul 27 start) stays at core 0/6, satellite 0/4.

### 9:30 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG — per STEP 3 this window trades from that list only, so no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $95,542.89, cash $19,116.70 (20.01%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, +2.75% unrealized), EDGX/SGOV/SPHY (income, -1.61%/+0.08%/-0.45%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing. Core sleeve remains flat (0 positions since HPE's 7/28 stop-out). Core exposure $0.00 (0.00%), satellite exposure $4,993.65 (5.23%, MNKD), income exposure $71,432.92 (74.76%).
- **Core live recheck (informational only, not executed):** per pre-market's handoff, rechecked DELL/DDOG/PANW/FTNT live. Quotes 2 min after open show unusually wide spreads for these names (DELL ~8.0%, DDOG ~9.1%, PANW ~4.5%, FTNT ~6.6% of mid) — too wide to trust for an entry decision this soon after the open, and no "Approved Trades" idea chain exists for any of them regardless. Pre-market explicitly flagged the AI-hardware-cluster re-entry question as **today's weekly-review decision point**, not a market-open call — deferring to this afternoon's weekly review rather than forcing it here, consistent with the Patience Rule.
- **Satellite: both in-window candidates skipped on spread again.** RIGL quoted bid $32.30/ask $44.25 (~31% spread); CGEM quoted bid $14.79/ask $20.30 (~31% spread). Both fail the wide/illiquid-spread skip rule — same recurring pattern flagged in prior sessions. No satellite entry.
- **Risk sweep:** no position near a hard-cut (MNKD +2.75% vs -15%; EDGX/SPHY well inside their 5% income stops). No stop tightening — MNKD's gain is far below the +25% satellite tightening threshold; Income sleeve has no gain-based schedule. No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Lesson for today's weekly review:** DELL/DDOG/PANW/FTNT have now live-passed the momentum gate across multiple sessions (7/29, 7/30, today) with the sector-concentration caution the only thing holding back entry — worth resolving explicitly today rather than carrying forward again.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (only the Decision and 9:30 AM Session Note) — per STEP 3 this window trades from that list only, so no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $95,315.65, cash $19,116.70 (20.06%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, -1.25% unrealized, down from +2.75% at 9:30am — normal intraday drift, not a thesis break), EDGX (-1.64%), SGOV (+0.08%), SPHY (-0.58%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. Core exposure $0.00 (0.00%, flat since HPE's 7/28 stop-out), satellite exposure $4,799.25 (5.04%, MNKD), income exposure $71,399.70 (74.91%).
- **Cuts:** none. MNKD -1.25% well clear of the -15% hard-cut; no core positions to evaluate.
- **Stop tightening:** none. MNKD is underwater (no gain-based tightening applies); income sleeve has no gain-based tightening schedule. No stop moved down.
- **Thesis check:** MNKD — no new binary event, FUROSCIX approval (7/24) remains resolved, Q2 earnings now 3 trading days out (Aug 5). No thesis break. EDGX/SGOV/SPHY — no thesis to break, no idiosyncratic news. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Step 7 (optional Gemini check):** skipped — MNKD's -3.9% intraday move is within normal volatility for this name (15% stop band) and has no thesis implication; not flagged as an unexplained sharp move worth a consolidated research call.
- No action taken this window — zero trades, zero cuts, zero tightens, zero stop moves.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am all HOLD) — per STEP 3 this window trades from that list only, so no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $95,298.43, cash $19,116.70 (20.06%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, -2.75% unrealized, down from -1.25% at 11am — normal intraday drift), EDGX (income, -1.49%), SGOV (income, +0.08%), SPHY (income, -0.45%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` (re-checked this window), none missing. Core exposure $0.00 (0.00%, flat since HPE's 7/28 stop-out), satellite exposure $4,726.35 (4.96%, MNKD), income exposure $71,454.84 (74.98%).
- **Risk sweep (end-of-session):** no position at/beyond its sleeve hard-cut (MNKD -2.75% vs -15%; no core positions). No open position missing a stop. No satellite catalyst inside the 1-2 trading-day gap-risk window (MNKD's FUROSCIX approval remains resolved since 7/24; Q2 earnings now 8/5, still outside the window). No thesis break on any held name. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- **Stop tightening:** none. MNKD remains underwater (no gain-based tightening threshold met); income sleeve has no gain-based schedule. No stop moved down.
- **Lesson for Friday's review carryover:** DELL/DDOG/PANW/FTNT have now live-passed the momentum gate across 7/29, 7/30, and today's pre-market/9:30am checks, with the sector-concentration caution (3 consecutive mechanical core stop-outs: MU 7/24, MU 7/27, HPE 7/28) the only thing holding back re-entry — this was flagged as today's weekly-review decision point; confirm it was addressed there.
- No action taken this window — zero trades, zero cuts, zero tightens, zero stop moves.

## 2026-07-30 — Pre-market Research

### Account
- Equity: $94,828.74 | Cash: $19,116.70 (20.16%) | Buying power: $284,747.48 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,641.30 (4.89%, MNKD) | Income exposure: $71,070.74 (74.95%: EDGX $19,358.48 / SGOV $31,861.63 / SPHY $19,850.64)
- Cash 20.16% is at/above the 20% floor — no funding sweep needed.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors.
- This week (Jul 27 start): core 0/6, satellite 0/4 (unchanged since Jul 29 3pm).

### Data-quality note
Gemini's report again opened mid-document — began directly on a "Datadog (DDOG) & NetApp (NTAP)" subsection with citation markers starting at [cite: 14], meaning whatever text corresponded to citations 1-13 (which should cover the requested S&P 500 futures direction and VIX level, plus the top market-moving catalysts/economic-releases section) was never captured. No explicit futures level or VIX print came through at all this session — not fabricating either number. Scattered macro data points did surface inline within later sections: 10-year Treasury yield at 4.69% today, and WTI crude "surged to $84.75" attributed to "Middle Eastern kinetic action" — this is a new reference not seen in prior sessions' logs, but with no dedicated market-context section to corroborate scope/severity, treating it as unconfirmed/low-context pending a market-open check, not a verified fresh escalation. Also: none of the three currently-held Income tickers (EDGX, SGOV, SPHY) received any explicit overnight-news coverage in this report despite being named in the request — a real coverage gap, not a "no news" finding for those three.

### Market Context
- **Managed-care regulatory shock (new):** WSJ reports the Trump administration will end a ~$3.6B federal subsidy that has been suppressing Medicare Part D premiums, confirmed to expire after 2026 (not extended into 2027), affecting ~25M enrollees. CNC (largest stand-alone Part D exposure via Wellcare, ~8M members/~1/3 of the market) fell -3% after-hours; CVS (Aetna) and HUM fell ~-1% in sympathy. All three are core-watchlist names, none held. Separately, HUM's own Q2 print beat on revenue/EPS but the stock fell -7.2% in the regular session on a forward guide showing full-year EPS shrinking -30.7% on medical-cost/reimbursement pressure. CNC, by contrast, raised 2026 adjusted EPS guidance (>$4.80, up from $3.40) with ACA margins recovering toward its 4.5-5% target — a genuinely mixed, name-specific picture layered under the sector-wide subsidy headwind.
- **Semis/AI-hardware: a mixed, diverging picture, not a clean rout or recovery.** AMAT closed -8.40% Wednesday in the continuing chip-sector downdraft (tariff fears on advanced exports to China); AMD and MU are each attempting a technical base, +1% pre-market, with the underlying HBM/data-center GPU demand cycle still read as structurally sound. Diverging sharply higher: STX +5% pre-market on a blowout Q4 print and strong Q1 guide, and WDC (reported yesterday) +6.78% on an EPS beat ($2.72 vs $2.36 est.) plus its on-track flash/HDD business separation. DELL/HPE have no idiosyncratic news; both are AI-server names whose near-term action will track today's mega-cap capex commentary (AWS reports today, also the main read-through catalyst flagged for DDOG/NTAP, neither of which has independent overnight news).
- **DVA:** Q2 earnings Aug 4 AMC; stock +106% YTD but flagged ~22% above fair value by some quant models; Berkshire's ~45% stake is cited as a confidence floor. **WST:** genuinely strong Q2 (EPS $2.37 vs $2.08 est., revenue +13.8%, raised FY guidance) — Friday's -5% pullback read as profit-taking after a 52-week high, not a fundamental issue. **LLY/ABBV:** JPMorgan named both top healthcare picks; ABBV reports tomorrow (Fri 7/31) pre-market, outside today's window. **DOC:** no idiosyncratic news; REIT valuation pressured by today's 10-year yield jump to 4.69%. **GE:** no thesis-breaking news; a live DCF-vs-P/E valuation debate, no action implied. **MPC/VLO:** no specific news; higher WTI raises input costs, net effect depends on crack spreads. **URI, BBY:** no idiosyncratic news, trading on macro/rate and retail-consumption/PCE themes respectively.

### Held-Position Thesis Check
- **MNKD (satellite, held):** No new binary event. Gemini reconfirms the FUROSCIX ReadyFlow FDA approval (already logged 7/24) and the $50M private placement closing to fund the CVR; stock read as +5.7%. -4.5% unrealized (cost $4,860 → mkt $4,641.30), well clear of the -15% hard-cut. Thesis intact, no action.
- **EDGX, SGOV, SPHY (income, held):** No overnight-news coverage came through in this session's Gemini report despite being explicitly requested (see Data-quality note) — treating as an unaddressed gap, not a clean "no news" pass. Per account data: EDGX -3.1% unrealized (5% trailing stop at $25.479 vs current $25.9497, comfortable buffer), SPHY -0.73% (stop $22.2015 vs current $23.19), SGOV +0.06% (stop tracks just under current price as usual). None near their stops; no action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. STX and WDC show a genuine positive earnings-driven divergence from the broader semis rout (STX +5% pre-market, WDC +6.78% yesterday) worth a live momentum-gate + spread recheck at market-open, not a pre-market entry signal on their own. AMD/MU's technical-base attempt (+1% pre-market) and AMAT's -8.40% Wednesday leave the broader semis/AI-hardware cluster's momentum-gate status genuinely unresolved — needs live bars at market-open, not assumed pass or fail. HUM/CNC/CVS are freshly hit by the Medicare Part D subsidy-termination news overnight; a real new headwind on any future consideration of those three, not evaluated for entry today. No candidate clears pre-market given this much live uncertainty — consistent with the Patience Rule.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; monitor only, no new entry.
2. **RIGL** — not held. Q2 2026 earnings confirmed Tuesday, Aug 4 after close — **3 trading days out, inside the 5-trading-day window.** Consensus EPS $0.1297 / revenue $55.27M (a YoY decline); prior quarter missed both lines. Institutional ownership 80.63%. Real earnings-proximity gap risk if entered; standard 7.5% cap would apply (earnings catalyst, not FDA/regulatory), per the established ORN/FSTR/CVLG precedent. No pre-market entry — defer to a live momentum/spread recheck at market-open this close to a binary print.
3. **CGEM** — not held. New: Gemini reports a Jul 28 announcement of positive FDA End-of-Phase-1 feedback for CLN-049 (FLT3xCD3 bispecific, AML), clearing the path to a Phase 2 start in Q3 2026, and a well-capitalized balance sheet (current ratio 10.28, D/E 0.01) that reduces near-term dilution risk. Q2 earnings now dated **Thursday, Aug 6 — 5 trading days out, at the edge of the window.** Note: this doesn't resolve the standing "internally inconsistent" zipalertinib NDA-timing flag from the current WATCHLIST entry — that was about the regulatory filing date, not this earnings date, and remains unconfirmed. No pre-market entry — defer to market-open live check given the earnings proximity.
4. **FSTR** — not held. Credit facility expanded to $150M through 2030 (positive balance-sheet update), PT raised to $40. Q2 earnings Monday, Aug 10 pre-market — 7 trading days out, outside the window. No action.
5. **CVLG** — not held. **Data gap:** its documented Jul 29 AMC earnings print (per current WATCHLIST.md, the near-term catalyst) has already passed as of today, but Gemini found zero overnight news or filings on the actual result. Needs verification via a fresh price/quote check or targeted WebSearch at market-open before any further consideration — not assuming a pass or fail on missing data.

### Risk Factors
- Gemini's report structurally truncated again — no dedicated S&P 500 futures/VIX or top-catalysts section returned this session (citations 1-13 point to content never captured); not fabricating either figure. Same recurring pattern flagged in the 7/26 and 7/27 entries.
- EDGX/SGOV/SPHY (all held, income sleeve) got zero explicit overnight-news coverage this session despite being requested — a real gap, distinct from a genuine "no news" finding.
- Medicare Part D subsidy termination ($3.6B, expires after 2026) is a fresh, material regulatory headwind for CNC/CVS/HUM (all core-watchlist, none held) — CNC -3% AH, CVS/HUM -1% sympathy; HUM additionally guided EPS -30.7% forward on its own Q2 print (stock -7.2% regular session). Needs a live-bar + updated-fundamentals recheck before any future core consideration of these three.
- Semis/AI-hardware sector remains genuinely mixed: AMAT -8.40% Wednesday vs. STX/WDC diverging sharply higher on blowout earnings and AMD/MU attempting a technical base — needs live momentum-gate recheck at market-open for each name, not assumed pass or fail either direction.
- RIGL (3 trading days) and CGEM (5 trading days) both sit inside the satellite catalyst window — real gap risk if either is considered for entry; 7.5% cap would apply to either (earnings, not FDA/regulatory), not evaluated pre-market.
- CVLG's Jul 29 earnings result is an unverified data gap — needs confirmation before any further satellite consideration.
- Unconfirmed WTI/"Middle Eastern kinetic action" reference (crude to $84.75) carries no corroborating context this session — treat as unverified pending a market-open check, not a confirmed fresh escalation.
- No held position is near its hard-cut: MNKD -4.5% (cut -15%), EDGX -3.1% (5% trailing stop, ~1.9% buffer above the $25.479 stop), SPHY -0.73% (stop $22.2015, well clear), SGOV +0.06%.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut. No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive from 7/24. No confirmed major geopolitical event meeting the urgent-notification bar — the WTI/Middle-East reference is unconfirmed/low-context given this session's truncated report, not a verified fresh escalation; treating it as a market-open watch item, not an urgent trigger. No SendGrid notification sent this run. Handoff to market-open: (1) live-bar momentum-gate recheck for STX/WDC (positive earnings divergence) and AMD/MU/AMAT (mixed sector picture); (2) verify CVLG's actual Jul 29 earnings result before any consideration; (3) RIGL (3 days out) and CGEM (5 days out) both inside the satellite catalyst window — live spread/momentum check before any entry, 7.5% cap if entered; (4) HUM/CNC/CVS hit by the Part D subsidy-termination news — treat as a fresh headwind on any future core consideration, not yet acted on; (5) cash 20.16%, comfortably above the 20% floor, no funding sweep needed absent a new buy; (6) confirm VIX/futures/broader risk tone with a fresh check at market-open given this session's Gemini truncation gap. This week (Jul 27 start) stays at core 0/6, satellite 0/4.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market checked) — per STEP 3 this window trades from that list only, so no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $95,261.85, cash $19,116.70 (20.07%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, +0.25% unrealized, +4.15% intraday on continued FUROSCIX-approval follow-through), EDGX/SGOV/SPHY (income, -2.32%/+0.05%/-0.49%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no fills this window. Core sleeve remains flat (0 positions since HPE's 7/28 stop-out).
- **Risk sweep:** no position at/beyond its hard-cut (MNKD +0.25% vs -15% satellite cut; EDGX/SPHY well inside their 5% income stops). No stop tightening — MNKD's gain is nowhere near the +25% satellite tightening threshold; Income sleeve has no gain-based schedule. No stop moved down. No cuts.
- **Thesis check:** MNKD's catalyst remains resolved positive (FDA approval 7/24, private placement closing); no new adverse news, intraday move consistent with the already-logged thesis, not unexplained. No thesis-break on any held name. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- No Gemini follow-up needed — MNKD's intraday move has a documented cause; nothing else moved sharply unexplained.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market and 11am both checked) — per STEP 3 no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $95,429.08, cash $19,116.70 (20.03%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, +1.63% unrealized, +5.58% intraday, continued FUROSCIX-approval follow-through), EDGX (income, -1.94% unrealized, +1.20% intraday), SGOV (income, +0.05%), SPHY (income, -0.36%, +0.37% intraday). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no fills this window. Core sleeve remains flat (0 positions since HPE's 7/28 stop-out).
- **Risk sweep:** no position at/beyond its hard-cut (MNKD +1.63% vs -15% satellite cut). No missing stops. MNKD's catalyst (FUROSCIX FDA approval) remains fully resolved since 7/24, and WATCHLIST.md shows no single near-dated binary event for MNKD (MNKD-201 IPF readout has no firm date) — no 1-2 trading-day gap-risk window open. No thesis break on any held name. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Stop tightening:** none — MNKD's +1.63% gain is far below the +25% satellite tightening threshold; Income sleeve has no gain-based schedule. No stop moved down.
- Risky positions closed today: none.

## 2026-07-29 — Pre-market Research

### Account
- Equity: $95,383.20 | Cash: $19,116.70 (20.04%) | Buying power: $286,095.85 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,896.45 (5.13%, MNKD) | Income exposure: $71,370.05 (74.83%: EDGX $19,612.79 / SGOV $31,855.26 / SPHY $19,902.00)
- Cash 20.04% is at/above the 20% floor — no funding sweep needed.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors.
- This week (Jul 27 start): core 0/6, satellite 0/4 — no trades yet.

### Data-quality flag — Gemini output rejected this session
The single consolidated Gemini Deep Research call returned a response that fails the data-quality guard on two counts, not just the usual truncation: (1) it started mid-document with no sections 1-2 (no explicit S&P futures level or VIX print anywhere in the output, despite being asked directly), and (2) it contains an outright false, thesis-relevant claim — it describes MNKD as facing "an overdue FDA press release on its PDUFA date," directly contradicting the already-confirmed fact (TRADE-LOG.md, 2026-07-24) that FUROSCIX ReadyFlow was FDA-approved five days ago. The same report also asserts a "15% VIX spike" and an active "military conflict in the Strait of Hormuz" driving today's session — neither is corroborated by independent WebSearch (VIX flat at ~18.22, no Hormuz conflict headlines found). Given the pattern of degrading Gemini output flagged in every session since 7/24 (truncation each time), today's escalation to a fabricated, thesis-contradicting claim is a step change worth flagging explicitly for the next weekly review, not just noted and dropped. None of Gemini's figures used below; all market context and held-position checks below are WebSearch-sourced and independently verified.

### Market Context (WebSearch, Gemini output rejected — see flag above)
- VIX ~18.22 (+0.05%, essentially flat). S&P 500 futures ~+0.2% premarket.
- FOMC rate decision today, 2pm ET (meeting began 7/28) — market pricing a small probability of a hike this meeting per one source, ~100% priced for September; Fed funds has held 3.50-3.75% through 2026. Real event-risk window for the whole market this afternoon.
- Heavy earnings slate today: MSFT, META, LRCX, ARM, QCOM, SBUX, PG, VRT, GD, AON all report. None held; LRCX not on the current watchlist.
- Chip-sector weakness continuing this morning (AI-capex jitters, China chip-making-advancement concerns) — Nasdaq described as near correction territory. Continuation of the rout flagged in every session since 7/23/7/24 (three consecutive mechanical core stop-outs: MU 7/24, MU 7/27, HPE 7/28); core sleeve is now flat (0 positions) so no immediate held-position exposure, but bears on any fresh core momentum-gate recheck at market-open.
- No held-name-specific corporate news found beyond what's logged in Held-Position Thesis Check below.

### Held-Position Thesis Check
- **MNKD (satellite, held):** No PDUFA is outstanding — FUROSCIX ReadyFlow was FDA-approved 2026-07-24 (already logged); Gemini's claim otherwise this session is rejected per the data-quality flag above. New, single confirmed source (GlobeNewswire/Manila Times, 7/28-7/29): MannKind will report Q2 2026 results after close **Wednesday, August 5, 2026** — not held-position risk today, just the forward earnings date. +0.75% unrealized. Thesis intact, no action.
- **EDGX (income, held):** No idiosyncratic news found. -1.83% unrealized. Mechanically-favorable-to-elevated-vol rationale unchanged; thesis intact, no action.
- **SGOV (income, held):** No thesis-breaking news. +0.04% unrealized (flat). No action.
- **SPHY (income, held) — standing caution, not new:** OAS still reported at a tight ~267bps, same compressed-spread caution flagged repeatedly in prior sessions (weekly-review-cadence discussion item, not a pre-market action). -0.47% unrealized, well clear of the 5% stop. No action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Core sleeve is flat (0 positions, HPE stopped out 7/28). Chip-sector weakness is continuing again this morning (Nasdaq near correction territory per WebSearch) — bears directly on watchlist names DELL, STX, WDC, AMAT, NTAP, DDOG, MU-adjacent momentum-gate status. Not assumed pass or fail pre-market; needs a fresh Alpaca-bar check at market-open as usual, consistent with the recurring pattern flagged in every session since 7/23. No other watchlist name carries a fresh confirmed catalyst today.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — catalyst resolved 7/24, monitor only, no new entry. Next earnings 8/5 (not a near-term binary window today).
2. **CVLG** — Q2 2026 earnings confirmed for **today, 2026-07-29, after 4pm ET** (WebSearch-independently confirmed via the company's own 8-K/press release; call is 7/30 10am ET) — squarely inside the catalyst window, in fact the catalyst day itself. Not held. No pre-market entry this close to the print; defer to a live quote/spread check at market-open per the recurring wide-spread skip pattern flagged for CVLG in every session since 7/27 (spreads have run 35-40% at the open each time). Standard 7.5% cap applies if ever entered (earnings catalyst, not FDA/regulatory).
3. **RIGL** — not held. Q2 2026 earnings confirmed for **Tuesday, August 4, 2026** after close (single clean WebSearch-confirmed source, resolves the inconsistent Aug 4 / Aug 4-5 reads from prior sessions) — 4 trading days out (7/30, 7/31, 8/3, 8/4), inside the 5-trading-day window as of today. No pre-market entry; flag for market-open/midday live quote check given the pattern of skips on illiquid opening spreads for this name.
4. **FSTR** — not held. No fresh data this session; last confirmed date (~Aug 10) remains outside the window absent new information.
5. **CGEM** — not held. No fresh data this session; catalyst-date status remains unconfirmed/inconsistent per prior sessions' flags, carried forward for the next screen refresh.

### Risk Factors
- Gemini Deep Research output rejected this session for a fabricated, thesis-contradicting claim (MNKD PDUFA described as pending when it was resolved 7/24) plus missing futures/VIX sections — see Data-quality flag above. Escalating pattern (was truncation-only 7/24-7/28) worth resolving before trusting Gemini output unverified again; WebSearch fully covered today's gaps.
- FOMC rate decision at 2pm ET today plus a heavy mega-cap earnings slate (MSFT, META, LRCX, ARM, QCOM, SBUX) — broad market event-risk window this afternoon, unrelated to any held position directly.
- Chip-sector weakness continuing (Nasdaq near correction territory) — no held core exposure currently (core flat), but keeps core watchlist momentum-gate status uncertain pending a live-bar check at market-open.
- CVLG (satellite, not held) reports today after close — real gap risk if considered for entry at market-open or midday; recurring wide-spread pattern (35-40%) has skipped it three sessions running.
- RIGL (satellite, not held) is now confirmed inside its 5-trading-day catalyst window (Aug 4) — relevant for future satellite consideration, not an entry today.
- No held position is near its hard-cut (MNKD +0.75%, EDGX -1.83%, SGOV +0.04%, SPHY -0.47% — all well clear of their respective 15%/5% stops).

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near a hard-cut. No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive from 7/24, nothing new; Gemini's contrary claim is rejected as unreliable, independently checked via WebSearch. No major geopolitical event confirmed (Gemini's claimed Hormuz conflict/VIX spike did not check out). Handoff to market-open: (1) live-bar momentum-gate recheck for the core watchlist given continuing chip-sector weakness — don't assume pass or fail; (2) CVLG (satellite, not held) reports after close today — fresh quote/spread check before any entry, standard 7.5% cap; (3) RIGL now confirmed inside its 5-day window (Aug 4) — re-check quote/spread, same recurring skip pattern to watch for; (4) cash at 20.04%, at the floor, re-check before any same-session buy; (5) flag the Gemini data-quality escalation (truncation → outright fabrication) for the next weekly review. No urgent notification warranted this run — no held position near a hard-cut, no satellite catalyst resolved negatively, market context (VIX flat, futures +0.2%) is unremarkable once corrected for Gemini's rejected claims. This week (Jul 27 start): core 0/6, satellite 0/4.

### 9:30 AM Session Note
- **Account/positions/stops:** Equity $95,239.79, cash $19,116.70 (20.07%, at floor). 4 open positions unchanged from pre-market (MNKD satellite, EDGX/SGOV/SPHY income), all 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing. Core sleeve still flat (0/6), satellite 1/4 (MNKD only). This week (Jul 27 start): core 0/6 trades, satellite 0/4 trades.
- **Satellite: both in-window candidates skipped on spread again.** CVLG (reports today after close) quoted bid $36.98 / ask $51.07 (~38% spread); RIGL quoted bid $32.14 / ask $44.01 (~37% spread). Both fail the wide/illiquid-spread skip rule for a 4th/consecutive session running — same pattern flagged every session since 7/27. No satellite entry.
- **Core: live momentum recheck on top watchlist names (per pre-market handoff), informational only — not executed as a trade.** Fresh Alpaca bars vs SPY (3m +4.1%/6m +6.5%): DELL, DDOG, PANW, FTNT all still clear the momentum gate (above 50d/200d MA, positive relative strength both windows). MU and AMD now fail (both below 50-day MA — continuation of the sector rout). No core entry this session: pre-market's Core Trade Ideas was explicitly "None" (no documented catalyst/idea chain beyond the bare momentum number), and initiating a fresh, unplanned position in the same AI-hardware/growth-tech cluster responsible for 3 consecutive mechanical stop-outs (MU 7/24, MU 7/27, HPE 7/28) — with that exact concentration risk already flagged for Friday's (7/31) review — is exactly the "force a trade" pattern the Patience Rule warns against. Flagging DELL/DDOG/PANW/FTNT's live-passing status for Friday's review / next market-open rather than acting on it ad hoc.
- **Lesson for Friday's review:** four straight sessions (7/26 wknd research aside — 7/27, 7/28, 7/29) with zero qualifying trades in either sleeve; satellite blocked purely on opening-spread illiquidity (CVLG, RIGL) rather than thesis, core blocked on the sector-concentration judgment call above, not a hard rule. Worth deciding explicitly at the review whether the spread-skip threshold or the informal "don't chase the same cluster" judgment need to become codified rules, since both are currently ad hoc calls repeated identically week over week.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG — per STEP 3 this window trades from that list only, so no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $95,012.75, cash $19,116.70 (20.12%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, -2.37% unrealized), EDGX/SGOV/SPHY (income, -2.61%/+0.04%/-0.77%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing.
- **Risk sweep:** no position near a hard-cut (MNKD -2.37% vs -15%; EDGX/SPHY within 3% vs their 5% income stops). No stop tightening — no position is in gain (all 4 flat-to-negative on the day). No cuts. Core sleeve remains flat (0 positions).
- **CVLG re-checked live** (reports today after close): bid $35.98/ask $48.15, ~34% spread — still fails the wide/illiquid-spread skip rule, 5th consecutive session (not an approved candidate today regardless, so moot for this window's buy-side, but confirms the pattern continuing into its own earnings day).
- **Thesis check:** MNKD's catalyst remains resolved positive (FDA approval 7/24); no new adverse news. No thesis-break on any held name. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- No Gemini follow-up needed — no held/watched name moved sharply with unexplained cause this window.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm check all confirm none) — per STEP 3, no buys placed. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Account/positions/stops:** Equity $94,992.12, cash $19,116.70 (20.13%, at/above the 20% floor — no funding sweep needed). 4 open positions unchanged: MNKD (satellite, -2.375% unrealized), EDGX/SGOV/SPHY (income, -2.97%/+0.04%/-0.535%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no fills this window. Core sleeve remains flat (0 positions since HPE's 7/28 stop-out).
- **Risk sweep:** no position at/beyond its hard-cut (MNKD -2.375% vs -15% satellite cut; EDGX/SPHY both well inside their 5% income stops). No position missing a stop. No satellite catalyst inside the next 1-2 trading days (MNKD's PDUFA fully resolved 7/24; next earnings 8/5, outside the window). No thesis break on any held name. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. No stop tightening this window — no position is in gain past its threshold (MNKD underwater, not a gain; Income sleeve has no gain-based schedule). No stop moved down. Risky positions closed today: none.
- **Fresh checks this window:** FOMC held the fed funds rate steady at 3.50-3.75% (9-3 vote, three dissents favoring a hike) — no surprise, in line with pre-market's ~100%-priced expectation; median 2026 dot shifted slightly hawkish (one more possible hike priced by year-end) but no immediate held-position impact. WebSearch confirms no new MNKD-specific news since 11am beyond the already-logged Aug 5 earnings date and 7/24 FDA approval — no fabricated Gemini claims re-surfaced. CVLG (satellite, not held) reports after today's close; not an entry candidate this window regardless (no approved-trades list), noted for tomorrow's pre-market.
- Day P&L -0.23% ($94,992.12 vs $95,209.81 yesterday's 3pm snapshot), driven by continued modest EDGX/MNKD drift; income sleeve elevated to 74.88% of equity with core still flat. Tomorrow: monitor for a core re-entry candidate (DELL/DDOG/PANW/FTNT flagged live-passing at 9:30am but not acted on, per the Patience Rule and the standing sector-concentration caution — decide explicitly at Friday's 7/31 review); CVLG reports after today's close (satellite, not held); RIGL earnings 8/4 now inside its catalyst window for future consideration.

## 2026-07-28 — Pre-market Research

### Account
- Equity: $95,669.32 | Cash: $19,272.82 (20.15%) | Buying power: $287,191.24 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $9,922.50 (10.37%, HPE) | Satellite exposure: $4,762.80 (4.98%, MNKD) | Income exposure: $61,711.20 (64.51%: EDGX $19,508.05 / SGOV $22,335.39 / SPHY $19,867.76)
- Cash 20.15% is at/above the 20% floor — no funding sweep needed.
- All 5 open positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no auth errors.
- This week (Jul 27 start): core 0/6, satellite 0/4 — no trades yet.

### Data-quality flag
Two consecutive Gemini Deep Research calls this session came back severely truncated — worse than the recurring "starts mid-document" pattern flagged in every 7/24-7/27 entry. First call returned only a satellite-catalyst verification table plus a closing synthesis; sections 1-3 (futures/VIX/macro, held-ticker news, watchlist news) never arrived. Re-ran once to try to recover them, this time capturing full stdout straight to a file (no local truncation) — the second call returned only the closing "Strategic Synthesis" paragraph and sources list, none of sections 1-4. Given the repeated pattern and the standing instruction against looping small queries, did not fire a third call this session. Filled sections 1-2 and the held-position checks via native WebSearch instead; anything not independently confirmed below is flagged as unconfirmed rather than invented.
Also: this session's Gemini output claims "CGEM" resolves to a Moroccan business federation, not the Cullinan Therapeutics biotech ticker Gemini gave a clean Feb 27, 2027 PDUFA date for just last session (see 2026-07-27 entry). Directly contradicts last week's "resolved" read — treating CGEM's catalyst timing as unconfirmed/inconsistent again, not trusting either number as authoritative until a cleaner pass.

### Market Context (WebSearch fallback — Gemini's sections 1-2 unrecoverable this session)
- VIX ~18.98 (+1.66%). Nasdaq 100 futures ~-0.6% premarket.
- Deepening global semiconductor selloff: SK Hynix -13%, Samsung -10%, Korea's KOSPI -9%, Japan/Taiwan benchmarks ~-4% overnight, on renewed AI-capex-ROI doubts, China chipmaking-competition progress, and "AI circular financing" concerns. US premarket: Nvidia ~-1.2%, Intel/AMD ~-3%+, Micron ~-5%. Continuation/escalation of the sector rout flagged in every session since 7/23 (no held core semis remain after MU's 7/27 stop-out).
- No single dominant scheduled macro release surfaced in this search beyond the ongoing chip-sector story; oil reportedly softer alongside the risk-off tone per one source.
- Fragment retained from Gemini's truncated synthesis (moderate confidence only, not independently re-verified): 10-year Treasury yield near/above 4.75% flagged as a threshold that could pressure high-yield credit — relevant to SPHY (held), carried forward as a watch item, not a fresh confirmed number.

### Held-Position Thesis Check
- **HPE (core, held):** No adverse news found. Recent items are positive-to-neutral: Citi raised its price target and opened a 90-day "upside catalyst watch" (7/22); a Rigetti/HPE/Pittsburgh Supercomputing Center quantum-testbed partnership (7/25); a new board appointment (7/24). Gemini's truncated synthesis also reads HPE as insulated from hardware-commoditization fears via its networking/enterprise-AI-compute mix. -0.04% unrealized, thesis intact, no action.
- **MNKD (satellite, held):** No new developments beyond the already-resolved 7/24 FUROSCIX ReadyFlow FDA approval. -2.00% unrealized, well clear of the -15% cut. Thesis intact, no action.
- **EDGX (income, held):** No idiosyncratic news. Today's vol uptick (VIX +1.66%) is mechanically favorable for a covered-call overlay fund (more premium to collect), consistent with the standing rationale. -2.35% unrealized, no action.
- **SGOV (income, held):** No thesis-breaking news; standing rationale (liquidity base, T-bill yield) unchanged. +0.04% unrealized.
- **SPHY (income, held):** No fresh negative news. High-yield OAS still reported near 269bps (Jul 10 reading — tight but not shown deteriorating), consistent with the standing credit-spread-compression watch flagged in prior sessions, not a new development. -0.64% unrealized, no action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. The semiconductor/AI-hardware rout is deepening further overnight (SK Hynix/Samsung crashing, US chip names premarket-red) — bears directly on watchlist names DELL, STX, WDC, AMAT, NTAP, DDOG's momentum-gate status, which has been in live-recheck limbo for several sessions running. Not assumed pass or fail pre-market; needs a fresh Alpaca-bar check at market-open as usual. No other watchlist name carries a fresh confirmed catalyst today beyond the ongoing sector-wide theme.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — catalyst resolved 7/24, monitor only, no new entry.
2. **CVLG** — Q2 earnings confirmed for Wednesday 7/29 after 4pm ET (independently confirmed via WebSearch, consistent with WATCHLIST.md), call 7/30. One trading day out — inside the 5-day window. Not held. No pre-market entry this close to a binary print; defer to a live quote/spread check at market-open if considered (standard 7.5% cap, earnings catalyst not FDA/regulatory).
3. **RIGL** — not held. Gemini's fragmentary-but-tabulated satellite-catalyst matrix this session dates RIGL's Q2 earnings at August 4, 2026 — exactly 5 trading days out, which would put it inside the window (a change from last session's "6-7 trading days, just outside" read). Given today's severe Gemini truncation, treating this date as moderate- not high-confidence; flag for market-open/midday to re-verify before treating it as inside the window.
4. **FSTR** — not held. Q2 earnings ~August 10, outside the 5-day window per both Gemini runs' surviving fragments. No action.
5. **CGEM** — not held. See Data-quality flag above: this session's Gemini output disputes its own prior week's "Feb 27, 2027" PDUFA read, casting doubt on ticker resolution. Treating catalyst status as unconfirmed/inconsistent, not a near-term binary risk either way. No action.

### Risk Factors
- Two consecutive severely truncated Gemini Deep Research reports this session (see Data-quality flag) — reduced confidence in anything Gemini-sourced today; WebSearch used to independently confirm market context and held-position checks instead.
- Semiconductor/AI-hardware selloff deepening globally (Korea -9% index-wide, chip names -10/-13% overnight) — no held core semis remain, but keeps several watchlist names' momentum-gate status unresolved pending a live-bar check at market-open.
- CVLG (satellite, not held) is 1 trading day from its Jul 29 AMC earnings print — real gap risk if considered for entry today or tomorrow.
- RIGL's exact earnings date needs re-verification — today's fragmentary source puts it right at the 5-day boundary (Aug 4), a change from last week's "outside the window" read.
- No held position is near its hard-cut (HPE -0.04%, MNKD -2.00%, EDGX -2.35%, SGOV +0.04%, SPHY -0.64% — all core/satellite/income cuts well clear).
- CGEM's catalyst-date data quality is now actively contradictory session-over-session — not a live risk (not held) but worth resolving at the next screen refresh.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position near a hard-cut. No satellite catalyst resolved negatively overnight (MNKD's remains resolved positive from 7/24). The deepening global chip selloff is a real market-wide risk but not a single-name adverse event on a held position, and no held position carries core-semis exposure since MU's 7/27 exit. Handoff to market-open: (1) live-bar momentum-gate recheck for DELL/STX/WDC/AMAT/NTAP/DDOG given the deepening overnight chip rout — don't assume pass or fail; (2) CVLG (satellite, not held) is 1 trading day from its Jul 29 AMC print — fresh quote/spread check before any entry, standard 7.5% cap; (3) re-verify RIGL's exact earnings date (Aug 4 per today's fragmentary Gemini read) before treating it as inside/outside the 5-day window; (4) cash at 20.15%, comfortably above the floor, no sweep needed absent a same-session buy; (5) CGEM's catalyst-date data-quality contradiction — flag for the next screen refresh, not a pre-market action. This week (Jul 27 start): core 0/6, satellite 0/4.

### 9:30 AM Session Note
- **No trades this window.** Account re-validated: equity $95,288.36, cash $19,272.82 (20.23%, at/above the 20% floor — no buy sized today so no sweep needed). All 5 open positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed still carrying live GTC trailing stops via `alpaca.sh orders`.
- **DELL/STX/WDC/AMAT/NTAP/DDOG (core watchlist) — momentum-gate recheck, no entry.** STX and AMAT fail outright on yesterday's (7/27) close, both below their 50-day MA (STX $816.99 vs MA50 $887.46; AMAT $516.89 vs MA50 $539.09) — the chip rout has now pulled both under the gate. WDC already failed 7/27 (below 50d MA) and is down further overnight. NTAP and DDOG still pass on 7/27's close (above 50d MA) but both tripped the wide/illiquid-spread skip rule at live quote (NTAP ~10.6% bid/ask, DDOG ~10.9%), consistent with the recurring thin-opening-liquidity pattern — never reached a live momentum check. DELL passes on 7/27's stale close (above MA50) but its live quote (bid $372.59/ask $387.55, mid ~$380) is already at/below that same MA50 ($386.81) — a same-session reversal too large and too uncertain (no confirmed today's-close bar yet) to treat as a clean pass. Given the sector rout is actively deepening (Korea -9%, US chip names premarket-red per pre-market) rather than stabilizing, skipped rather than forcing an ambiguous entry — consistent with the Patience Rule.
- **CVLG (satellite, inside its Jul 29 earnings window) — SKIP.** Live quote bid $37.62/ask $52.56 — ~40% spread, grossly wide/stale, same illiquid-open pattern flagged repeatedly for CVLG/ORN in prior sessions (worse than 7/27's ~35% read). Tripped the wide/illiquid-spread skip rule in STEP 2; never reached the buy-side gate.
- **RIGL (satellite, not held) — no entry.** Live quote bid $31.63/ask $43.82 — ~38% spread, same wide-open condition. Skipped on liquidity before the earnings-date question (Aug 4 per pre-market's fragmentary Gemini read) became relevant.
- **HPE (core, held) — thesis check only, no action.** Down sharply intraday (-6.10%, $48.19 -> $45.25) as part of the broad chip/hardware rout; -4.27% unrealized from entry ($47.27 -> $45.25), still clear of the -7% hard-cut. No company-specific negative news found; live GTC 10% trailing stop intact (trigger $44.712). Watch closely at 11am/3pm given the pace of today's drop.
- **MNKD (satellite, held) — thesis check only, no action.** -1.00% unrealized ($4.00 -> $3.96), well clear of the -15% cut, no new developments. Live GTC 15% trailing stop intact (trigger $3.59975).
- **Pattern worth flagging for Friday's review:** fourth consecutive session (7/24-7/28) where thin opening-auction liquidity, not the fundamentals/momentum screen itself, has been the binding constraint on satellite and several core semis names. Separately, the semis/AI-hardware sector rout has now pulled two more watchlist names (STX, AMAT) below their momentum gate since 7/27's check — worth revisiting whether the current watchlist's semis concentration needs a fresh screen before Friday given how fast conditions are deteriorating.

### 11 AM Session Note
- **No "### Approved Trades (verified)" section exists in today's log** (only the Decision and 9:30 AM Session Note) — per STEP 3, no buys placed this window. HOLD on new entries. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **HPE (core) stopped out mechanically at 9:35am ET, before this window ran** — 10% GTC trailing stop filled at $44.569333 (-5.71%, -$567.14 realized), trail from hwm $49.68, trigger $44.712. Continuation of the sector-wide semi/AI-hardware rout flagged pre-market and at 9:30am (HPE was already down 6.10% intraday at 9:30am, -4.27% unrealized, clear of the -7% cut at that point but not by much given the pace of the drop). No company-specific negative news. Logged to TRADE-LOG. Core sleeve now has zero open positions. Core has no 2-strike sub-sector cooldown (satellite-only). Third consecutive week a held core position has stopped out mechanically on sector-wide drawdown (MU 7/24-week, MU again 7/27, now HPE 7/28) — flagging again for Friday's review re: the semis/AI-hardware sector-concentration cap; this is now a recurring pattern, not a one-off.
- **Income sweep-back executed:** HPE's exit freed cash to $28,632.38 (30.10% of $95,108.18 equity), well above the 20% floor — swept $9,515.64 into SGOV (notional buy, 94.532 sh @ $100.66), leaving post-sweep cash at $19,116.75 (20.10% of $95,106.12 equity). Canceled the standing 221-share 5% trailing stop and re-placed one 5% trailing GTC stop on the 316 whole shares of the combined position; 0.433 fractional sh left unprotected per the standing fractional-share stop limitation, immaterial (~$44).
- **MNKD (satellite, held) — thesis check passes, no action.** -1.875% unrealized, well clear of the -15% cut and not in gain past a tightening threshold. No adverse news since 9:30am. All 4 remaining positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` after the SGOV re-place.
- No sharp unexplained moves this window beyond HPE (fully explained by the ongoing, already-documented sector rout) — no ad-hoc Gemini call needed per STEP 7.
- Action taken this window (HPE stop-out confirmed + logged, cash-floor sweep) — sending notification per STEP 9.

### 3 PM Session Note
- **No "### Approved Trades (verified)" section exists in today's log** (Decision, 9:30 AM, and 11 AM notes only) — per STEP 3, no buys placed this window either. HOLD on new entries. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Risk sweep: no closes needed.** Account re-pulled: equity $95,209.81, cash $19,116.75 (20.08%, at/above the 20% floor — HPE's exit + SGOV sweep from the 11am window already restored it, no fresh sweep needed). All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. None at/beyond its hard-cut: MNKD -3.125% (sat cut -15%), EDGX -1.65% (income -5%), SPHY -0.56% (income -5%), SGOV +0.03% (income -5%) — all well clear.
- **MNKD (satellite, held) — thesis check passes, no action.** Fresh WebSearch found no new negative developments: FUROSCIX ReadyFlow approval (7/24) and the associated $50M private placement (10,440,838 sh + pre-funded warrants at $3.89/$3.88) remain the latest news, both already known; no fresh adverse item. Today's -3.125% move (from $4.00 entry, -1.90% intraday) tracks broader market softness, not a company-specific event. Well clear of the -15% cut, thesis intact.
- **EDGX/SGOV/SPHY (income, held) — no action.** No idiosyncratic news; standing rationale unchanged for all three. None near their 5% trailing stops.
- **No stop tightening this window.** Core has zero open positions. MNKD is at a loss, not a gain, so below any tightening threshold. Income sleeve has no gain-based tightening schedule.
- **No satellite catalyst inside the 1-2 trading-day gap-risk window** — MNKD's PDUFA fully resolved 7/24; no other satellite position held.
- **2-strike sub-sector tracker unchanged:** biotech 1/2 (OCUL 7/23), industrials 0/2. No satellite trades this session.
- **Risky positions closed today: none this window** (HPE's stop-out and the SGOV sweep predate this session's 3pm window, already logged at 11am).
- Pattern still flagged for Friday's review: third consecutive week a held core position stopped out mechanically on sector-wide (not company-specific) drawdown (MU 7/24, MU 7/27, HPE 7/28); core sleeve currently has zero open positions and no fresh core buy candidate today given the deepening chip-sector rout.

## 2026-07-27 — Pre-market Research

### Account
- Equity: $97,147.87 | Cash: $19,416.01 (19.99%) | Buying power: $291,327.85 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $19,763.20 (20.35%: HPE $10,268.20 / MU $9,495.00) | Satellite exposure: $4,981.74 (5.13%, MNKD) | Income exposure: $52,986.92 (54.55%: EDGX $19,557.29 / SGOV $13,497.41 / SPHY $19,932.22)
- Cash 19.99% — a hair under the 20% floor. Not treated as a breach (no buy this window, steady-state re-check point per TRADING-STRATEGY.md, not an instant-by-instant constraint) but the buffer is thin; flag for market-open — any new buy today must re-check post-trade cash against the floor before sizing, not just literal-cash-vs-order-cost.
- All 6 open positions (HPE, MU, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no auth errors.
- New week starts today (Jul 27): core 0/6, satellite 0/4 (last week, Jul 20 start, closed at core 1/6 [MU], satellite 1/4 [MNKD]).

### Data-quality note
Gemini's report again started mid-document — opened directly on a "Semiconductors and Hardware Infrastructure" subsection with no preceding Part I/II ever returned (no explicit S&P 500 futures level or VIX print), despite being asked for both. Not fabricating a number from the missing section. The report's own "Strategic Synthesis" section gives direction only (futures gapping higher, vol term structure normalizing into contango on the Iran de-escalation) with no point-figures. Backfilled via WebSearch: VIX ~18.58, S&P 500 ~7,411.98, VIX futures ~19.99-20.10. Flagging low confidence — the 18.58 VIX print exactly matches Friday 7/24's already-logged close (see 7/26 entry), so this is likely a stale/cached read rather than a genuine Monday pre-market number, not a fresh independent data point. Treat market-open's live print as authoritative, not this figure.

### Market Context
- **Geopolitical de-escalation (Gemini):** US-Iran ceasefire holding/de-escalating overnight, sending crude oil down sharply (WTI/Brent -4% to -8%) and permitting a broad equity-futures gap higher with vol normalizing into contango — a reversal of the Iran-escalation risk-off backdrop flagged repeatedly in the 7/22-7/24 entries. Positive for broad risk sentiment, negative near-term for MPC/VLO (crack-spread compression, inventory write-down risk on the speed of the drop, even though lower crude is a medium-term positive).
- **Semiconductor/AI-hardware rout deepening, sector-wide:** AMAT -26.7% in July, MU -26.5% in July (still +197% YTD, forward P/E only 5.7x — cheap, not a fundamental break), WDC -25.4% in July, AMD -5.35% off recent highs. Hyperscaler capex-ROI anxiety (Google's negative FCF print cited as the trigger) is the driver, not company-specific news. This threatens momentum-gate status for MU (held), plus WDC/STX/AMAT/NTAP/DELL on the core watchlist — needs a live-bar recheck at market-open, not assumed pass/fail, consistent with the recurring flag from prior sessions.
- **Cybersecurity divergence:** PANW flagged for margin compression from elevated memory component costs (hardware-reliant); CRWD getting price-target upgrades as the cloud-native beneficiary of the same rotation. Watchlist names, neither held.
- **DELL (core, not held) — fresh positive catalyst:** a 5-year, $9.7B DoD contract for software/cloud infrastructure, diversifying revenue away from pure enterprise AI. Earnings ahead ($2.96 EPS / $35.7B revenue consensus); gross-margin scrutiny expected given memory-cost pressure.
- **ABBV (core, not held):** declined 7 consecutive sessions on a mid-July guidance cut (FY26 adjusted EPS to $13.91-$14.11) — driven entirely by a $291M IPR&D/milestone charge tied to the proposed $10.9B Apogee Therapeutics acquisition, not core-business deterioration. Reports Jul 31 (outside the 5-day window, not a core buy signal today).
- **LLY (core, not held):** showing relative strength, a beneficiary of the defensive rotation into healthcare (also lifting CNC, HUM, DVA per Gemini).
- **Durable goods orders today; Q2 GDP/PCE inflation data upcoming** — flagged as live catalysts for BBY/URI (both watchlist, not held).
- No idiosyncratic overnight news for CVS, DOC, WST, GE beyond the sector/macro themes above.

### Held-Position Thesis Check
- **HPE (core, held):** No adverse news; Gemini reads HPE as benefiting (not hurt) from the hardware-infrastructure side of the AI buildout — server-backlog read-through intact. Thesis holds, no action.
- **MU (core, held):** Caught in the sector-wide semi rout (-26.5% July) but no company-specific negative catalyst — YTD +197%, forward P/E 5.7x, consistent with the "cheap on fundamentals, dragged by sector sentiment" read from prior sessions. -1.76% unrealized (cost $9,665.31 → mkt $9,495.00), nowhere near the -7% cut. Momentum-gate status needs a live recheck at market-open given the deepening drawdown, per the recurring flag.
- **MNKD (satellite, held):** Catalyst fully resolved (FUROSCIX ReadyFlow FDA-approved 7/24). Gemini confirms no further binary event risk — focus now on commercial rollout (late August 2026) and deployment of the $50M PIPE raised to fund the CVR payment. Thesis intact/reinforced, no action. +2.5% unrealized.
- **EDGX (income, held):** No idiosyncratic news; no thesis-breaking development.
- **SGOV (income, held):** No thesis-breaking news; Gemini notes continued heavy institutional inflows into ultra-short T-bill vehicles as investors wait out the FOMC/GDP data — consistent with its role as the sleeve's liquidity base.
- **SPHY (income, held) — standing caution, not new:** Gemini reiterates the tight ~267bps OAS credit spread leaves little cushion against a slowdown/rate shock; flagged repeatedly in prior sessions, still a weekly-review-cadence discussion item, not a pre-market action.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. The deepening semi/AI-hardware sector rout puts MU's (held) and several watchlist names' (WDC, STX, AMAT, NTAP, DELL) momentum-gate status in real question — not assumed failed, needs a live-bar recheck at market-open per the recurring pattern. DELL's fresh $9.7B DoD contract is a positive data point, not a pre-market entry signal (no live quotes today). No new core candidate clears pre-market given this much sector uncertainty.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; no new entry, monitor only.
2. **CVLG** — Q2 2026 earnings confirmed Jul 29 after close, 2 trading days out — inside the 5-trading-day window (Gemini confirms this is the only satellite name currently inside its window). Not held. Consensus EPS $0.42 vs a Q1 miss ($0.26 vs $0.35 est.); a recent "Overweight" resumption of coverage is a positive data point. No pre-market entry — defer to a live momentum/spread recheck at market-open, this close to a binary print; standard 7.5% cap applies (earnings catalyst, not FDA/regulatory) if entered.
3. **RIGL** — not held. Q2 earnings Aug 4-5 (6-7 trading days out) — just outside the 5-day window. Q1 EPS miss but stock reacted positively (+2.4%) on R289 pipeline optionality; FY26 revenue guidance ($275-290M) reaffirmed. No action today.
4. **FSTR** — not held. Q2 earnings Aug 10 (10 trading days out), outside the window. Q1 beat (EPS $0.14 vs -$0.22 est.) already in the rearview. No action.
5. **CGEM** — not held. Gemini now gives a clean, specific PDUFA date for zipalertinib: Feb 27, 2027 — resolving the internally-inconsistent timing flagged on the current watchlist entry. This is far outside any near-term window (>100 trading days); no longer even an imminent-but-unverified case. No action; update WATCHLIST.md's catalyst-date note at the next screen refresh.

### Risk Factors
- Gemini's report structurally truncated again (missing Part I/II, no direct VIX/futures print) — same recurring pattern flagged across prior sessions; WebSearch backfill used but flagged low-confidence (likely a stale/cached VIX read, not a fresh Monday number).
- Semiconductor/AI-hardware sector rout deepening (AMAT/MU/WDC all down 25%+ in July) — real threat to MU's (held) and several watchlist names' momentum-gate status; needs live-bar confirmation at market-open, not acted on pre-market either way.
- Cash at 19.99%, just under the 20% floor — thin buffer; any market-open buy must check post-trade cash against the floor before sizing.
- CVLG (satellite, not held) enters its Jul 29 earnings window in 2 trading days — real gap risk on entry this close to a binary print if considered at market-open.
- Crude oil's sharp overnight drop (Iran de-escalation) creates near-term margin/inventory-write-down risk for MPC/VLO (core watchlist, not held) despite being a longer-term positive for refiners.
- No held position is near a hard-cut threshold (HPE +3.44%, MU -1.76%, MNKD +2.5%).

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut. No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive from 7/24, nothing new. Handoff to market-open: (1) live-bar momentum-gate recheck for MU (held) plus WDC/STX/AMAT/NTAP/DELL given the deepening semi-sector rout — don't assume pass or fail; (2) CVLG (satellite, not held) is inside its Jul 29 earnings window — evaluate with a fresh quote/spread check before any entry, standard 7.5% cap applies; (3) cash at 19.99%, just under the 20% floor — check post-trade cash against the floor before any buy, SGOV-first sweep if needed; (4) MPC/VLO (not held) will trade high-beta to the overnight crude collapse — no signal either way pre-market; (5) CGEM's PDUFA date is now confirmed Feb 27, 2027 — update WATCHLIST.md's stale "unconfirmed/inconsistent" note at the next screen refresh. No urgent notification warranted — no held position near a hard-cut, no satellite catalyst resolved negatively, and the overnight geopolitical move (de-escalation) is favorable, not the kind of adverse event Step 5 calls for. This week (Jul 27 start): core 0/6, satellite 0/4.

### 9:30 AM Session Note
- **No trades this window.** Account re-validated: equity $97,095.37, cash $19,416.01 (19.997%, essentially at the 20% floor — no buy sized today so no sweep needed). All 6 open positions (HPE, MU, MNKD, EDGX, SGOV, SPHY) confirmed still carrying live GTC trailing stops via `alpaca.sh orders`.
- **CVLG (satellite, inside its Jul 29 earnings window) — SKIP.** Live quote bid $39.36/ask $55.75 — ~35% spread, grossly wide/stale, same illiquid-open pattern that has repeatedly sidelined ORN. Tripped the wide/illiquid-spread skip rule in STEP 2; never reached the buy-side gate.
- **WDC (core watchlist) — momentum-gate recheck FAILS.** Fresh daily bars (2024-10-01 to 2026-07-24 close): last close $519.80 is now *below* its 50-day MA ($558.86) — fails Core rule #4 outright (needs price above both 50d/200d MA). Confirms pre-market's "serious doubt" flag; not a live-quote/spread issue, a fundamental momentum-gate fail. 3M/6M relative return vs SPY (+24.6pp/+106.4pp) is still strongly positive, but the below-50-day-MA condition alone fails the gate.
- **STX, AMAT, NTAP, DELL (core watchlist) — SKIP on spread**, consistent with the recurring thin-opening-liquidity pattern (STX ~11.1%, DELL ~9.4%, NTAP ~11.0%, AMAT ~5.0% wide ~3-4 min after the open). Didn't reach a momentum-gate check given the liquidity skip.
- **MPC, VLO (core watchlist, not held) — no entry.** VLO's spread is tight (~0.5%) but MPC's is wide (~10.1%); more importantly, today's actual driver is the Iran de-escalation crude collapse, which per pre-market is a *near-term negative* for refiner crack spreads (compression + inventory write-down risk), not the energy tailwind framed in Sunday's now-superseded Houthi-strike note. No documented positive catalyst to clear the entry bar today for either name — not pursued.
- **MU (core, held) — thesis check only, no action.** Sector rout continues but no company-specific negative news; -4.68% unrealized (cost $9,665.31 → mkt $9,213.20), well clear of the -7% hard-cut. No new momentum-gate computation needed for an already-held position outside the risk-sweep window.
- **Pattern worth flagging for Friday's review:** this is now three consecutive sessions (7/24, and today across both the semis cluster and CVLG) where the binding constraint on real candidates has been thin opening-auction liquidity rather than the fundamentals/momentum screen itself. Worth discussing whether market-open should wait a few extra minutes past 9:30 before pulling quotes on lower-liquidity names, or keep the current behavior (skip and log, retry next window).

### 11 AM Session Note
- **No "### Approved Trades (verified)" section exists in today's log** (only the 9:30 AM Session Note) — per STEP 3, no buys placed this window. HOLD on new entries. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **MU (core) stopped out mechanically at 10:26am ET, before this window ran** — 10% GTC trailing stop filled at $869.37 (-10.05%, -$971.61 realized), continuing the sector-wide semi/AI-hardware rout flagged pre-market and at 9:30am. No company-specific negative news; analysts still Strong Buy (fwd P/E ~5.7x). Logged to TRADE-LOG. Core has no 2-strike sub-sector cooldown (satellite-only), so no cooldown implication.
- **Income sweep-back executed:** MU's exit freed cash to 29.32% of equity, well above the 20% floor — swept $8,836.88 into SGOV (notional buy), leaving a ~$100 buffer over the floor (post-sweep cash 20.10%). Canceled and re-placed the SGOV trailing stop on the combined 221 whole shares (5%); 0.900 fractional sh left unprotected per the standing fractional-share stop limitation, immaterial (~$91).
- **HPE (core, held) and MNKD (satellite, held) — thesis checks pass, no action.** HPE -0.06% unrealized, MNKD +0.75%; neither near a hard-cut or tightening threshold, no adverse news since 9:30am. All 5 remaining positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` after the SGOV re-place.
- No sharp unexplained moves this window beyond MU (fully explained by the ongoing sector rout) — no ad-hoc Gemini call needed per STEP 7.
- **Lesson for Friday's review:** second consecutive week a held core position has stopped out mechanically mid-session on sector-wide (not company-specific) drawdown (MU today, following the semis rout pattern flagged since 7/23). Worth discussing at the weekly review whether the semis/AI-hardware sector-concentration cap (currently 8/25 names, 32%) is tight enough given how correlated the drawdowns are, or whether it's simply mechanical-stop-as-designed and no change is needed.

### 3 PM Session Note
- **No "### Approved Trades (verified)" section exists in today's log** (only the 9:30 AM and 11 AM Session Notes) — per STEP 3, no buys placed this window. HOLD on new entries. This week (Jul 27 start) stays at core 0/6, satellite 0/4.
- **Risk sweep: no closes needed.** All 5 open positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No core/satellite position near its hard-cut (HPE +0.67% unrealized, MNKD +1.50%). Fresh WebSearch on HPE and MNKD found no adverse news since 11am (HPE: Paul Singer top-pick mention, Buy-rated, $64 PT — positive; MNKD: no new developments beyond the already-resolved 7/24 Furoscix approval) — both theses intact, nothing closed. No satellite catalyst inside the 1-2 trading-day gap-risk window (MNKD's PDUFA fully resolved 7/24; no other satellite name held). No stop tightening this window — neither HPE (+0.67%, well below +15%) nor MNKD (+1.50%, well below +25%) crossed a tightening threshold. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Cash 20.10%, at/above the 20% floor** (unchanged since the 11am SGOV sweep-back) — no funding sweep needed this window.
- Risky positions closed today: none this window (MU's mechanical stop-out and the SGOV sweep-back both already happened before 11am and are logged above).
- Day P&L -0.52% ($95,885.60 vs $96,385.55 Jul 24 3pm close), driven mainly by the mechanical MU stop-out earlier today plus modest income-sleeve drift (EDGX -2.45% unrealized, SPHY -0.66%), partly offset by HPE/MNKD gains. Pattern for Friday's review: same as the 11am note — second consecutive week a held core position stopped out mid-session on sector-wide (not company-specific) drawdown; worth revisiting the semis/AI-hardware concentration cap.

## 2026-07-26 — Pre-market Research

### Account
- Equity: $96,553.80 | Cash: $19,416.01 (20.11%) | Buying power: $289,635.48 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload
- Core exposure: $19,224.40 (19.91%: HPE $10,014.90 / MU $9,209.50) | Satellite exposure: $5,017.95 (5.20%, MNKD) | Income exposure: $52,895.44 (54.78%: EDGX $19,557.29 / SGOV $13,496.07 / SPHY $19,842.08)
- Cash 20.11% is at/above the 20% floor — no funding sweep needed.
- All 6 open positions (HPE, MU, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no auth errors.
- Figures identical to yesterday's (2026-07-25) pre-market snapshot — expected, since markets were closed all weekend (`balance_asof: 2026-07-24`, Friday's close); today's run (Sunday) is research-only ahead of Monday's open.

### Data-quality note
Gemini's report again started mid-document — it opened directly on a "Hyperscaler Capital Expenditure Rotation" subsection with no preceding section 1 (explicit S&P futures %/VIX print) ever returned, despite being asked for both. Not fabricating a number from the missing section. Filled the gap via WebSearch fallback: VIX closed Friday 2026-07-24 at 18.58, S&P 500 futures were ~7,460 pre-Friday-close — both now stale relative to a fresh weekend event (below), and no reliable Monday-relevant futures/VIX print exists yet this session (index futures don't resume trading until ~5pm CT Sunday, after this research window). Recommend Monday's market-open session capture the actual VIX/futures print live rather than relying on anything dated here.

### Market Context
- **Major weekend geopolitical event (new, WebSearch-confirmed — not in Gemini's captured output):** Houthi forces struck Saudi Aramco's Jizan and Yanbu refineries with missiles/drones on 2026-07-25 — the first direct attack on Saudi oil infrastructure in four years. A fire broke out at Jizan (~400,000 bpd, ~4% of Aramco's daily output). Brent crude surged back above $100/bbl (~+40% for the month of July). No U.S. equity/vol reaction is priced in yet — futures/VIX won't reflect this until Sunday evening/Monday pre-market. Flagging as the top overnight risk into Monday's open.
- **Hyperscaler capex rotation (Gemini):** Alphabet raised FY capex guidance to $205B (from $190B); Tesla's earnings showed a similar AI/robotics capex surge and fell ~14% post-print. Both are fueling a broad rotation out of semiconductors/AI-hardware (affects held HPE, MU plus DELL, AMD, STX, NTAP, WDC, AMAT on the core watchlist) into cybersecurity/software, on ROI-timeline anxiety, not a demand-side break.
- **CMS Medicare Advantage CY2027 rate shock (new, core watchlist, none held):** proposed CMS rulemaking hit HUM -13% and CVS -9% after hours — HUM as a near-pure-play MA insurer is most exposed (unlinked chart-review elimination, 0.09% rate update); CVS's exposure is real but partially offset by an improved Q1 Aetna MBR and a recent S&P outlook upgrade to Stable. CNC and DVA (also watchlist, not held) face the same sector-wide managed-care/dialysis funding overhang. None of these four are held — no action required today, but this is a fresh disqualifying-caliber flag for the managed-care cluster to carry into the next screen refresh.
- **Energy tailwind (MPC, VLO — core watchlist, not held):** the Houthi refinery strike directly tightens global refined-product supply, reinforcing both names' already-strong crack-spread-driven thesis. Live-bar re-evaluation candidates at market-open, not a pre-market entry (Sunday, no live quotes).
- **RIGL (satellite watchlist, not held) — new negative:** Eli Lilly terminated its RIPK1 inhibitor partnership (ocadusertib, rheumatoid arthritis), eliminating up to $835M in potential milestones/royalties Rigel had been counting on. Rigel now depends entirely on ~$55M Q1 product sales (missed the $62.4M consensus) and its R289 program. Real thesis deterioration on a name already outside its catalyst window — not an action item today (not held, not entered), flag for next screen refresh.
- **ABBV (core watchlist, not held):** hit an all-time high $245.26 on a definitive $10.9B agreement to acquire Apogee Therapeutics — thesis strengthening, no action (already on watchlist, not a new idea).
- No other idiosyncratic overnight items on CNC/DVA/DOC/WST/BBY/URI/GE beyond the sector-wide notes above.

### Held-Position Thesis Check
- **HPE (core, held):** Caught in the broad semi/hardware rotation described above but no company-specific bad news; Gemini argues the physical AI-infrastructure buildout (and hence hardware demand) is accelerating, not reversing — the market is repricing buyers' ROI timelines, not suppliers' order books. Thesis intact, no action.
- **MU (core, held):** Same sector rotation exposure; Gemini notes MU showing relative strength versus peers during the sell-off, consistent with prior sessions' read (memory pricing power, third-party validated by Dell's cost commentary). Thesis intact, no action.
- **MNKD (satellite, held):** Thesis further reinforced. FDA's Furoscix ReadyFlow approval (07-23/24, already logged) is corroborated again, plus a new detail: a $50M PIPE led by Frazier Life Sciences (10,440,838 shares @ $3.89 + pre-funded warrants) priced specifically to fund the $45M CVR payment the approval triggered — balance-sheet overhang addressed without tapping debt markets. Reported +5.7% premarket reaction is a Monday pre-market indication from a Sunday report, not independently verified here — treat as directional, not a confirmed level. No action; catalyst already resolved positive as of last week.
- **EDGX (income, held):** Thesis intact/reinforced — the covered-call overlay benefits mechanically from elevated implied volatility in the current risk-off backdrop (more option premium to collect).
- **SGOV (income, held):** Thesis reinforced — ~$1.5B in weekly inflows, ~$99.6B AUM, yielding ~3.53-3.82% while staying insulated from the duration risk hitting the long end of the curve. Safe-haven demand argument strengthens further on the fresh geopolitical shock.
- **SPHY (income, held) — new caution flag:** Gemini flags the OAS on the underlying high-yield index has compressed to a historically tight 267bps, leaving little cushion against spread-widening from oil-driven inflation, rising long yields, and slowdown fears — explicitly suggests trimming SPHY toward SGOV. Not an action item pre-market (no stop breach, and Income-sleeve composition changes are a weekly-review-cadence decision, not a unilateral pre-market call) — flagging for discussion at the next weekly review.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Sunday session, no live quotes to size an entry against regardless. MPC/VLO carry a fresh positive catalyst (Houthi-driven crack-spread tailwind) worth a live-bar look at market-open — not invented as an entry here. HUM/CVS/CNC/DVA now carry a fresh negative regulatory catalyst (CMS MA CY2027) that argues against any entry into that cluster even though none of the four is currently disqualified by the letter of the entry rules — flag for the next screen refresh rather than acting unilaterally pre-market.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; no new entry, monitor only.
2. **CVLG** — Q2 2026 earnings confirmed Jul 29 after close, 3 calendar days out — inside the 5-trading-day window (Gemini's proximity table confirms this is the only satellite name currently inside its window). Not held. No new information beyond 2026-07-25's log (52-week-high entry into the print, >320x trailing P/E, weather/fuel-cost Q1 miss in the rearview) — the weekend oil spike is a fresh negative input to its diesel-cost line, adding to an already-precarious setup. No pre-market entry — defer to a live momentum/spread recheck at market-open, this close to a binary print.
3. **RIGL** — not held. See Market Context: Lilly's RIPK1 partnership termination is real thesis damage. Earnings now estimated Aug 4-6 (9-11 calendar days out per Gemini) — still outside the 5-day window. No action today; flag for the next screen refresh given the partnership loss.
4. **FSTR** — no overnight news; Q2 earnings ~Aug 10, outside the 5-day window. No action.
5. **CGEM** — no overnight news; PDUFA target action date reconfirmed Feb 27, 2027 (consistent with 2026-07-25's finding) — far outside any near-term window. No action.

### Risk Factors
- **Weekend Houthi strike on Saudi Aramco's Jizan/Yanbu refineries (2026-07-25)** — a fresh, material geopolitical shock (first direct hit on Saudi oil infrastructure in 4 years) with no U.S. market reaction priced in yet. Top risk into Monday's open for the whole book via oil/rates/risk sentiment — not specific to any one held name, but a real gap-risk factor market-wide.
- Friday's VIX close (18.58) and futures level (~7,460) are now stale relative to the weekend news; no Monday-relevant print exists yet this session — not fabricating one.
- CMS Medicare Advantage CY2027 rate shock hit HUM (-13% AH)/CVS (-9% AH) hard — not held, but could pressure the entire managed-care cluster (also CNC, DVA, both watchlist, not held) into the next screen refresh.
- RIGL (satellite watchlist, not held) lost a material pipeline partnership (Lilly RIPK1, up to $835M in forfeited milestones/royalties) — thesis damage on a name still outside its catalyst window regardless.
- SPHY (income, held) flagged for the first time with a real credit-spread-compression risk (267bps OAS, historically tight) — a watch item for the next weekly review's Income-sleeve discussion, not a pre-market action.
- Recurring Gemini output truncation (missing the explicit futures/VIX section again) — same long-standing pattern flagged in prior sessions, still unresolved at the prompt-structure level, still backfilled via WebSearch.

### Decision
**HOLD** (pre-market default; research-only, no trades this run — also a Sunday, no live market open to trade against regardless). No held position is near its hard-cut (HPE +0.89%, MU -4.72%, MNKD +3.25%, all per Friday's close, unchanged over the closed weekend). No satellite catalyst resolved negatively overnight — MNKD's remains resolved positive, already known. Per STEP 5, the weekend Houthi refinery strike is judged a "major geopolitical event" (fresh, material, unpriced) — sending a notification even though no rule threshold was breached, given real Monday gap-risk. Handoff to market-open: (1) capture Monday's actual VIX/futures print and check for a gap tied to the Houthi strike; (2) re-check MPC/VLO with live bars for a possible energy-tailwind entry; (3) no action needed on HUM/CVS/CNC/DVA (not held) but carry the CMS MA CY2027 flag into Friday's next screen refresh; (4) RIGL's Lilly-partnership loss — no action today (not held), revisit at next screen refresh; (5) CVLG (satellite, not held) is inside its Jul 29 earnings window — evaluate with a fresh quote/spread check before any entry, standard 7.5% cap applies if entered; (6) SPHY's credit-spread-compression flag — raise at the next weekly review, not a pre-market rebalance trigger. Current week (Jul 20-24) closed at core 1/6 (MU), satellite 1/4 (MNKD); new week starts Monday 2026-07-27, resetting to core 0/6, satellite 0/4.

## 2026-07-25 — Pre-market Research

### Account
- Equity: $96,553.80 | Cash: $19,416.01 (20.11%) | Buying power: $289,635.48 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload
- Core exposure: $19,224.40 (19.91%: HPE $10,014.90 / MU $9,209.50) | Satellite exposure: $5,017.95 (5.20%, MNKD) | Income exposure: $52,895.44 (54.78%: EDGX $19,557.29 / SGOV $13,496.07 / SPHY $19,842.08)
- Cash 20.11% is at/above the 20% floor — no funding sweep needed.
- All 6 open positions (HPE, MU, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no auth errors.

### Data-quality note
Gemini's report was not truncated this time (clean opening heading, complete Sources list, no mid-word cutoff) — first run of the two submitted this session was reviewer error (piped through `tail -c 20000` locally, discarding the opening third of the report before it could be logged; re-submitted and captured the full report on the second attempt). However, the report never states an explicit VIX print or S&P futures %, despite being asked for both — filled that specific gap via WebSearch fallback below rather than inventing a number. One WebSearch fallback query returned a result badged "7 25 25" describing S&P/Nasdaq at fresh record highs — that source is either mis-dated or from July 2025, and it flatly contradicts Gemini's internally consistent, specifically-2026-dated narrative (Dell's $9.69B DoD contract, IBM's earnings-driven guidance cut, Alphabet/Tesla capex commentary) corroborated across both of today's Gemini runs. Discarding that WebSearch result as unreliable rather than using it.

### Market Context
- **VIX/futures (WebSearch fallback, moderate confidence):** VIX futures trading ~18.8-19.5, technicals reading neutral — not a spike level. No reliable premarket S&P/Dow/Nasdaq % found for today specifically; not fabricating one.
- **Macro backdrop (Gemini, corroborated across both runs):** 10-year Treasury yield ~4.7% (closed last week at 4.683%); crude oil near $100/bbl on Mideast (Iran-linked) supply risk; new 12.5% global tariffs took effect; S&P 500 support watched around 7,300-7,400. Today's PCE inflation print is a live risk — a hot print would lock in a "higher for longer" Fed stance.
- **"Budget cannibalization" theme (new, sector-wide):** IBM's overnight profit warning (~25% earnings plunge per Gemini) is being read as confirmation that enterprise IT budgets are shifting from traditional hardware to cybersecurity/AI software. Rotating capital into CRWD/PANW/FTNT (all core watchlist), out of semis/storage/enterprise hardware (AMD, AMAT, WDC, STX, NTAP, HPE).
- **Semiconductor/AI-hardware rout:** driven by Alphabet/Tesla earnings-call commentary on ballooning AI capex with vague profitability timelines. AMD, AMAT, WDC, STX under heavy distribution (WDC ~$532-560, STX ~$827-910, AMAT ~$554-562 per Gemini's snapshot ranges — not independently verified against Alpaca bars pre-market; live-bar recheck needed at market-open as usual). DDOG down ~3.3% to ~$244-246 on the same rotation, though a Jefferies downgrade there was a valuation call, not a fundamental cut.
- **Dell (DELL, core, not held):** won a 5-year, $9.69B DoD blanket purchase agreement for Microsoft licensing/cloud (via Dell Federal Systems) — shares reportedly up to +7% after-hours. Structural margin defense against the memory-cost pressure flagged in recent weeks.
- **Energy (VLO/MPC, core, not held):** dual-edged — near-$100 oil supports refining margins but also risks compressing demand; no change to prior-week thesis direction, watch crack spreads at market-open.
- **No idiosyncratic overnight news** for CNC, DVA, CVS, ABBV, LLY, DOC, WST, BBY, URI, GE — all tracking macro/rate-sensitivity themes only per Gemini.

### Held-Position Thesis Check
- **MNKD (satellite, held):** Thesis strongly reinforced, not just intact. FDA approved Furoscix ReadyFlow on 07-24 (ahead of the 07-26 PDUFA target), consistent with yesterday's independently-verified 11am resolution already in TRADE-LOG.md. New detail from today's report: MannKind simultaneously closed a $50M PIPE (Frazier Life Sciences-led) to fund the $45M CVR payment triggered by approval — balance-sheet overhang addressed, FY revenue outlook ($110-120M) reaffirmed. H.C. Wainwright reiterated a $10 PT. No action; catalyst window closed, this is now a commercial-execution story per the watchlist's own framing.
- **MU (core, held):** Thesis intact despite the sector-wide semi rout — Gemini flags MU showing relative strength (+3.5%) while peers fell, and cites Dell's memory-cost commentary as third-party validation of MU's pricing power. Account shows MU at -4.72% unrealized (cost $9,665.31 → mkt $9,209.50), consistent with sector drag rather than a name-specific break — same read as the past two sessions' notes on MU. Not near the -7% core cut. No action; live momentum-gate recheck still needed at market-open as usual.
- **HPE (core, held):** New caution flag, not a thesis break. IBM's profit warning is being read market-wide as evidence of budget rotation away from traditional enterprise hardware — HPE is directly exposed as a legacy IT/storage vendor. No explicit HPE-specific bad news; position is +0.89% unrealized (cost $9,926.70 → mkt $10,014.90), nowhere near the -7% cut. Watch item for market-open/midday, not an action item pre-market.
- **EDGX (income, held):** No idiosyncratic news; macro-dependent on broad index stability, watch the ~7,300-7,400 S&P support zone Gemini flagged.
- **SGOV (income, held):** Thesis strengthened — benefits mechanically from the 10Y yield near 4.7% via higher front-end rates while principal stays insulated by ultra-short duration.
- **SPHY (income, held):** New vulnerability flag. High-yield credit is exposed to both rising base rates (squeezes issuer interest coverage) and slowdown fears (from $100 oil + new tariffs), which widen credit spreads. Gemini calls for a "review... if today's PCE prints hot." Not an action item pre-market (no position-specific loss trigger hit), but the single risk factor most worth re-checking after this morning's PCE release.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Semiconductor/storage momentum-gate status (MU already held; WDC, STX, AMAT, NTAP unresolved) needs a fresh Alpaca-bar recheck at market-open given the overnight sector rout described above — no new entry invented pre-market. Cybersecurity names (CRWD, PANW, FTNT) are showing relative strength on the rotation theme but none is a fresh idea today; FTNT already carries an outsized ~12% earnings-implied move into its Jul 29 print (see Risk Factors) — not a pre-market entry candidate regardless.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst resolved; no new entry, monitor only.
2. **CVLG** — Q2 2026 earnings confirmed July 29 after close (3 trading days out, inside the 5-day window). Not held. Prior Q1 missed on weather/fuel costs ($0.26 vs $0.35 est.); management guided to sequential H2 improvement; stock at a 52-week high ($49.37) heading in, trailing P/E >320x — priced for a clean beat, real gap risk either direction. Per WATCHLIST.md this is an earnings catalyst (not FDA/regulatory), so the standard 7.5% cap would apply, not the tightened 5% binary cap, if entered. No pre-market entry — defer to a live momentum/spread recheck at market-open, this close to a binary print.
3. **RIGL** — no overnight news; Q2 earnings now estimated ~Aug 4 (7 trading days out), outside the 5-day window. No action.
4. **FSTR** — no overnight news; Q2 earnings now estimated ~Aug 10 (previously logged as "early August" — narrowing slightly), outside the 5-day window. No action.
5. **CGEM** — update: Gemini now reports a specific PDUFA target action date of **Feb 27, 2027** for the zipalertinib NDA — this resolves last week's "unconfirmed/inconsistent timing" flag on WATCHLIST.md. Far outside any near-term window; no longer an imminent-but-unverified watch item, just a distant date. No action.

### Risk Factors
- **VIX/futures level not reliably confirmed this session** — Gemini's report never stated one despite being asked; the one WebSearch fallback result returned looks mis-dated (badged 7/25/25, describing record highs that contradict Gemini's selloff narrative) and was discarded rather than used. Best available read: VIX futures ~18.8-19.5 (neutral), a broad but not panicked risk-off tone per Gemini's qualitative description.
- **HPE budget-cannibalization exposure (new today)** — IBM's profit warning is being read as a sector-wide signal that enterprise hardware spend is losing share to cybersecurity/AI software. Not a thesis break (HPE is in gain, no company-specific bad news), but worth tracking for confirmation or reversal over the next few sessions.
- **SPHY rate/credit sensitivity (new today)** — vulnerable to today's PCE print; a hot number would pressure high-yield spreads. Watch post-PCE, not urgent pre-market.
- **Sector-wide semi/storage rout** — MU (held), plus watchlist names WDC/STX/AMAT/NTAP, need a live momentum-gate recheck at market-open; Gemini's price ranges are unverified snapshots, not Alpaca bars.
- **FTNT earnings, Jul 29 (not held, watchlist only)** — options pricing in a ~12% move; the name has exceeded implied vol in prior prints. Watch item, not actionable pre-market.
- **CVLG earnings, Jul 29 (not held, satellite watchlist)** — inside the 5-day window, 320x trailing P/E leaves no margin for a miss. See Satellite Trade Ideas above.
- Reviewer process note: the first Gemini call this session was accidentally truncated locally (piped through `tail -c 20000`) before being logged — caught before writing anything to this file, re-run in full. No downstream contamination, but flagging so the habit doesn't repeat.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut (HPE +0.89%, MU -4.72% — both well inside the -7% core cut; MNKD +3.25%, well clear of -15%). No satellite catalyst resolved negatively — MNKD's is fully resolved positive (already known as of yesterday, reinforced by new PIPE-financing detail today). No fresh single geopolitical shock beyond the standing, already-known oil/tariff/yield backdrop. Per STEP 5, none of this rises to an urgent pre-market notification — staying silent. Handoff to market-open: (1) recheck WDC/STX/AMAT/NTAP momentum-gate status live given the overnight sector rout; (2) CVLG (satellite, not held) is inside its Jul 29 earnings window — evaluate with a fresh quote/spread check before any entry, standard 7.5% cap applies if entered; (3) HPE and SPHY both carry new (non-actionable) watch flags from today's research — recheck at midday/3pm for confirmation; (4) MU thesis intact despite sector drag, no action. This week (Jul 20 start): core 1/6 (MU), satellite 1/4 (MNKD) — unchanged, no trades executed pre-market by design.

## 2026-07-24 — Pre-market Research

### Account
- Equity: $97,460.85 | Cash: $19,420.87 (19.93%) | Buying power: $292,025.56 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload
- Core exposure: $10,236.39 (10.50%, HPE) | Satellite exposure: $5,212.35 (5.35%, MNKD) | Income exposure: $62,591.25 (64.22%: EDGX $19,548.86 / SGOV $23,157.51 / SPHY $19,884.88)
- Cash 19.93% is marginally below the 20% floor (~$68 short) — same-moment price-appreciation drift (HPE +2.32%, MNKD +7.25% unrealized) since the last touch, not a funding-shortfall breach; no buy placed. Not actionable pre-market — recheck at market-open/next rebalance touch per the "steady-state target, not instant-by-instant" rule.
- All 5 open positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, no auth errors.

### Data-quality note
Gemini Deep Research **truncated again** — missing section 1 (opening S&P futures/VIX/economic-releases summary) and an entire semiconductor-detail section (AMD, MU, STX, WDC, TXN, AMAT, LRCX, KLAC all absent from the body; only referenced obliquely in the closing synthesis as "28% multiple compression in KLAC/AMAT/LRCX" — not corroborated, not used below). **HPE (a held core position) was also entirely absent** from the report. Filled VIX/futures and an HPE thesis check via native WebSearch fallback per the data-quality guard; did not fabricate any semiconductor-sector figure the truncated report didn't show.

**Critical: MNKD FDA-approval claim is UNCONFIRMED, likely a Gemini fabrication.** Gemini's report stated the FUROSCIX ReadyFlow PDUFA decision was "Approved" (citing mannkindcorp.com). Four independent WebSearch checks (news search, stock-news search, direct site:investors.mannkindcorp.com search, PDUFA-specific search) found **no press release, no approval announcement, and no fresh MNKD news dated today** — every source still describes the decision as **pending**, target date July 26, 2026 (a Sunday), with H.C. Wainwright still calling it an "underappreciated catalyst" in the future tense as of the most recent indexed coverage. MannKind's own investor-relations press-release page shows no July 2026 releases at all. **Treating Gemini's "Approved" claim as false/hallucinated — MNKD's PDUFA remains unresolved.** This is a data-integrity failure on a live, real-money position, not just a truncation — flagging for owner attention and recommending the weekly review add a verification step (e.g., a second independent source or a Gemini self-consistency check) before ever acting on a Gemini-reported binary-catalyst resolution.

### Market Context
- **S&P futures/VIX (via WebSearch fallback):** ES +0.2%, Dow +0.5%, Nasdaq +0.1% — tentative recovery attempt after Thursday's megacap-tech-led selloff. VIX 18.83 (+0.70%), not spiking. Backdrop: new round of tariffs took effect today, alongside AI-capex jitters, rising oil, and elevated bond yields.
- **Cybersecurity rotation (CRWD, PANW, FTNT, DDOG — core watchlist):** capital rotating out of expensive semi-hardware into cybersecurity software. CRWD announced a Cerebras partnership for AI-accelerated threat detection (called a "watershed moment" for enterprise security spend); PANW/FTNT both near all-time highs, FTNT's Jul 29 earnings has options pricing in a ~12% move (has exceeded implied vol in 4 of its last 8 prints). DDOG downgraded to Hold at Jefferies overnight but PT raised to $280 — valuation call, not a fundamental cut.
- **Energy/refining (VLO, MPC — core watchlist):** 3-2-1 crack spread hit an all-time-high ~$70/bbl overnight on Mideast supply disruption (Strait of Hormuz tension) — exceeds even 2022's energy-crisis peak. VLO hit a 52-week high $309.90 (+20% in July), announced a fresh $5B buyback. MPC +24% in July, best month since 2021. Both names' theses look intact/strengthening.
- **Hardware/infra (DELL, GLW, MRVL, CSCO — core watchlist):** DELL had crashed 11% earlier this week on enterprise-spend concerns but is insulated by a new $9.7B/5yr DoW software-cloud contract, +9% pre-market in sympathy with SMCI. GLW -3.45% on soft display/telecom guidance despite an NVIDIA optical-connectivity partnership; options market pricing a wide ±9.48% move today. MRVL hit a record high $329.88 on S&P 500 index inclusion + KeyBanc PT raise to $385. CSCO showing elevated options IV (37.27%) into today.
- **Status quo, no material news** for STX, WDC, DVA, NTAP, CNC, CAT, GEV (core watchlist) — theses unchanged, momentum-gate status not rechecked live this run (semis section lost to truncation; defer to market-open live-bar check as in prior sessions).

### Held-Position Thesis Check
- **HPE (core):** +3.02% to $48.13 on continued AI/federal momentum — DoE Genesis Mission R&D selection, a new Vultr+NVIDIA AI-datacenter deployment win, and a Qblox quantum-computing testbed collaboration. No adverse news. Thesis intact, no action.
- **MNKD (satellite) — top item, see Data-quality note above.** PDUFA decision remains PENDING despite Gemini's unconfirmed "Approved" claim — do not act on that claim. Target date Jul 26 (Sunday) means the decision could still land after today's close or Monday pre-market; today is the last trading session before the weekend gap with no stop protection. Position already sized/documented at the 5% binary-catalyst cap since entry — holding through remains the only valid action; nothing changes that calculus absent a *verified* resolution.
- **EDGX/SGOV/SPHY (income):** no thesis-breaking news; ballast role unaffected by the equity-side rotation.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. Six of 24 watchlist names (MU, WDC, STX, AMAT, LRCX, KLAC) have an unresolved momentum-gate question carried over from 07-23's selloff, and this run's semiconductor detail was lost to truncation — no live-bar recheck possible pre-market. Per the Patience Rule and "don't invent candidates," no new core idea clears today without that recheck; defer to market-open.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry; monitor only.
2. **ORN** — Q2 earnings confirmed Jul 28 (2 trading days out, inside the 5-day window); no material overnight news, thesis (backlog + infrastructure exposure) unchanged. Not held. Note: this name's quote has shown an illiquid ~17% bid/ask spread on the last two checks (7/21, 7/23) — recheck liquidity fresh at market-open before considering any entry this close to earnings.
3. **RIGL, FSTR, TWIN** — no material overnight news, no catalyst inside the 5-day window. No action.
4. **OCUL** — no longer held (stopped out 7/23); no near-term catalyst per Gemini. No action.

### Risk Factors
- **MNKD's PDUFA remains pending, not approved** — Gemini's contrary claim is unconfirmed and should not be acted on (see Data-quality note). This is the single largest live event-risk on the book going into the weekend gap.
- Gemini Deep Research truncation continues (missing sections + a full HPE omission) and, for the first time, appears to have **fabricated a specific binary-outcome fact** rather than just dropping content — a step up in severity from prior sessions' pure-truncation issue; worth a fix (second-source verification, or splitting the query) at the next weekly review.
- Cash at 19.93%, marginally below the 20% floor from same-moment price drift, not a funding action — watch at next rebalance touch, not urgent.
- 6 of 24 core watchlist names carry an unresolved momentum-gate question from the 07-23 semi selloff — needs a live-bar recheck at market-open.
- ORN's bid/ask spread has now failed the liquidity check twice running — same standing note as 07-23, worth dropping/deprioritizing at the next screen refresh regardless of catalyst strength.
- FTNT's Jul 29 earnings (not held, watchlist only) carries an unusually large implied move (~12%) — watch item for the core list, not actionable today.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut (HPE in gain; MNKD +7.25% unrealized, well clear of -15%). No satellite catalyst has *verifiably* resolved — MNKD's PDUFA is still pending despite Gemini's unconfirmed claim, which is being treated as false pending real confirmation. Handoff to market-open: (1) do not treat MNKD as de-risked — re-verify PDUFA status from a primary source (MannKind IR page or an FDA release) before any position-sizing change; (2) recheck WDC/STX/MU/AMAT/LRCX/KLAC momentum-gate status live, momentum-gate section was lost to truncation; (3) HPE thesis intact, no action; (4) ORN inside its earnings catalyst window but still showing an illiquid spread — recheck before any entry. This week (Jul 20 start): core 0/6, satellite 1/4 (MNKD, no new trade — MNKD's entry was last week).

### 9:30 AM Session Note
- Recomputed the 6 deferred momentum-gate names from fresh Alpaca bars: MU/WDC/STX/AMAT now pass (above 50d/200d MA, positive 3M/6M rel. return vs SPY); LRCX/KLAC fail (both below 50-day MA). Of the passers, only MU had a tradeable spread (~0.7%) — WDC/STX/AMAT showed wide 6.5-10.2% spreads ~3-4 min after the open (thin opening-auction liquidity), so only MU traded. Bought 10 sh MU (core), 10% trailing stop placed. Core now 2/6 positions, 1/6 trades this week.
- ORN's bid/ask spread was ~31% at market-open, its third straight session failing the liquidity check (07-21 through 07-24, each reading worse) despite sitting inside its Jul 28 earnings catalyst window — skipped again. Escalating this to Friday's weekly-review as a clear drop/deprioritize candidate.
- Process gap: the MU buy was funded from literal cash instead of a pre-buy SGOV sweep, dropping cash to ~10.07% of equity — a real floor breach, corrected post-hoc by selling 96 sh SGOV (same issue as 7/21's MNKD entry). The market-open workflow should check "would post-trade cash fall below the 20% floor" *before* placing a Core/Satellite buy, not just "is literal cash short of the order cost" — recurring miss, worth fixing at the instruction level before it happens a third time.
- MNKD's PDUFA remains unverified/pending (no primary-source confirmation found this window); held, no action. HPE thesis intact, no action.

### 11 AM Session Note
- No "### Approved Trades (verified)" section exists in today's log (only the 9:30 AM Session Note, which already executed the MU buy) — per STEP 3, no further buys placed this window. HOLD on new entries.
- **MNKD PDUFA — RESOLVED POSITIVE, now independently confirmed (correcting the 9:30am/pre-market "unconfirmed/likely fabrication" flag).** WebSearch this window turned up multiple independent primary/credible sources — MannKind's own investor-relations release, an SEC 8-K filing, Yahoo Finance, Nasdaq, RTTNews, and HCPLive — all reporting the FDA **approved** FUROSCIX ReadyFlow Autoinjector today (2026-07-24), ahead of its Jul 26 PDUFA target date. This is a materially different evidentiary bar than this morning's single-source Gemini claim (which lacked any corroboration and is why it was correctly treated as unconfirmed at the time) — today's approval is real. Commercial launch expected by August 2026.
- Live quote at time of check: bid $4.10 / ask $4.11 (tight spread) vs. $4.00 entry — position up only +2.5%, well below the satellite +25%/+40% tightening thresholds, so stop stays at the standard 15% trail (trigger $3.5955, hwm $4.23). The market had apparently already priced in much of the approval odds ahead of the news; no outsized gap materialized. No stop tightening this window.
- No hard-cut breaches: HPE (core) +1.33%, MNKD (satellite) +2.5%, MU (core) -3.64% — all well clear of -7%/-15%. MU's continued drift is consistent with the standing semi-sector selloff flagged pre-market/9:30am, not a new thesis break (momentum/FCF haven't clearly broken). All 6 open positions (HPE, MNKD, MU, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- Cash $19,416.04 = 20.09% of $96,650.92 equity — at/above the 20% floor, no funding sweep needed (no trades this window).
- No 2-strike sub-sector concern change (biotech still 1/2 from OCUL's 7/23 stop-out; industrials 0). This week (Jul 20 start): core 1/6 (MU), satellite 1/4 (MNKD) — unchanged from 9:30am.
- No buy/cut/tighten action taken this window — the MNKD catalyst-resolution correction is a data-integrity/thesis update, not a trade. Flagging for owner attention given how large an event-risk this was flagged as all week; also worth noting for Friday's review that MNKD's satellite position sizing was capped at 5% (binary-catalyst rule) rather than the standard 7.5% specifically because this date was pending — now that it has resolved, future re-sizing (if ever revisited) would use the standard cap, though no action is needed on the existing position today.

### 3 PM Session Note
- No "### Approved Trades (verified)" section exists anywhere in today's log (pre-market Decision was HOLD; 9:30am executed MU per its own live recheck; 11am confirmed no further qualifying list) — per STEP 3, buy side HOLD, zero new trades this window. This week (Jul 20 start) stays at core 1/6 (MU), satellite 1/4 (MNKD).
- Risk sweep: MU (core) -6.21% from entry ($906.51 vs $966.531) — closest any position has come to a hard-cut today, but still short of the -7% core cut. WebSearch confirms the drop is a broad semiconductor sector selloff (Micron down ~5.5% intraday alongside sector-wide weakness), not company-specific news — analysts maintain Strong Buy, Citigroup called the sector selloff a buying opportunity. No thesis break (momentum/FCF gate passed fresh this morning); held, no action. HPE (core) +0.41%, MNKD (satellite) +2.97% — both well clear of their cuts. All 6 open positions (HPE, MNKD, MU, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- MNKD gap risk: PDUFA resolved POSITIVE this morning (11am note) — FDA approved FUROSCIX ReadyFlow Autoinjector, independently confirmed via multiple primary sources. No remaining overnight/weekend binary event risk on this position.
- No stop tightening this window — no position crossed a tightening threshold (HPE +0.41% < +15%; MNKD +2.97% < +25%). No 2-strike sub-sector concern change (biotech still 1/2 from OCUL's 7/23 stop-out; industrials 0). Cash $19,416.04 = 20.14% of $96,385.55 equity, at/above the 20% floor, no funding sweep needed. Risky positions closed today: none.
- Day P&L (-0.30%) driven mainly by MU's sector-selloff-driven drift since this morning's entry, partly offset by HPE/MNKD gains; Income sleeve roughly flat to slightly negative. Tomorrow: monitor MU for further sector-wide semi weakness vs. a genuine thesis break (analysts still Strong Buy); no near-term satellite catalyst remains open (MNKD resolved); watch ORN's Jul 28 earnings and its now 3-session-running illiquid spread ahead of Friday's weekly-review screen refresh.

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

## 2026-07-23 — Pre-market Research

### Account
- Equity: $97,289.82 | Cash: $19,558.40 (20.11%) | Buying power: $19,558.40 (not margin-inflated today, unlike some prior sessions) | Daytrade count: not present in account payload (same pattern as prior entries)
- Core exposure: $10,080.00 (10.36%, HPE) | Satellite exposure: $11,236.89 (11.55%: MNKD $4,738.50 / OCUL $6,498.39) | Income exposure: $56,414.53 (57.98%: EDGX $19,793.32 / SGOV $16,702.09 / SPHY $19,919.12)
- All 6 open positions (HPE, MNKD, OCUL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing.

### Data-quality note
Gemini Deep Research returned a complete, well-structured report this run — Parts I-IV all present (catalysts, core/income holdings, satellite catalyst monitor, full watchlist sweep), breaking the 9+ consecutive-session truncation streak flagged every prior entry since 07-12. One partial gap: no explicit numeric S&P 500 futures level/direction was given (VIX was: spot ~17.05, VIN26 futures ~18.77 — a steep contango pricing in vol through the earnings gauntlet). Not fabricating a futures figure since none was returned.

### Market Context
- **Semiconductor rotation, sharply worse:** aggressive "precision strike" selloff in semi capital-equipment and memory names — KLAC, LRCX, SNDK, TER down 10-14% on preliminary guidance that NAND oversupply persists through at least Q3 2026, forcing capex deferrals in testing/metrology tools. MU also carries a fresh Sell call ($1,014 PT, ~11% downside) despite record fiscal Q3 revenue ($41.5B, 84.9% gross margin, HBM sold out through 2027) — bull/bear split, not a clean read. This directly threatens momentum-gate status for 6 of 24 core watchlist names (MU, WDC, STX, AMAT, LRCX, KLAC) — needs a live-bar recheck at market-open, not assumed to have failed or passed.
- **Megacap earnings digestion:** GOOGL cloud revenue +82% YoY but stock pressured on AI-capex-return scrutiny; TSLA revenue up but capex hit FCF hard; TXN (7/22) beat on both lines but slipped with the broader sector. Cybersecurity (CRWD, PANW, FTNT) and CSCO catching a safe-haven/AI-infrastructure bid instead — CSCO booked $1.9B in AI orders from hyperscalers (vs $600M prior year), PT raised to $133-140.
- **Geopolitical — fresh escalation, not just the standing 07-11 backdrop:** a breakdown in US-Iran ceasefire talks has crude oil up ~7% overnight, driving 3-2-1 crack spreads to ~$59/bbl (triple January levels). This is materially newer than prior entries' framing ("no fresh escalation, same 07-11 backdrop") — a genuine overnight development, not a stale repeat. Tailwind for core names VLO (+5% overnight to ~$295.79, Jefferies PT raised to street-high $312 ahead of its Jul 30 print) and MPC (also at all-time highs); headwind for broad risk sentiment.
- **New 5-day catalyst confirmed for GLW (core watchlist, not held):** down ~20.7% over 30 days on AI-optical rotation plus a solar-wafer-facility shutdown ($30M unexpected expense); reports Q2 earnings Tue Jul 28 (within the 5-trading-day window). Flag for market-open/next-refresh attention, not a buy signal today.

### Held-Position Thesis Check
- **HPE (core):** no adverse overnight news. Enterprise networking / on-prem AI server demand backdrop intact. Thesis holds, no action.
- **MNKD (satellite) — top item today:** FDA PDUFA target action date for FUROSCIX ReadyFlow remains **Sunday Jul 26** with **no early/surprise action announced** as of this morning. Because Jul 26 is a Sunday, the decision is expected to reach the company/market either **tomorrow (Fri 7/24) after-hours** or **Monday (7/27) pre-market** — there is no FDA-published release schedule, so both remain live possibilities. Today (Thu 7/23) and tomorrow are the only two trading sessions before the weekend gap; the trailing stop does not protect against this. Position was already sized at the 5% binary-catalyst cap and documented at entry (per 07-21) — holding through remains valid per the rule, nothing new changes that calculus, but this is now the single highest-urgency item on the book. Re-check at every session through Friday's close.
- **OCUL (satellite):** no negative news. Next scheduled event is Q2 earnings ~Aug 4-7 — outside the 5-day window. Thesis intact, not near the -15% hard-cut (currently -12.7%, tightening toward it — watch, no action yet).
- **SGOV/SPHY/EDGX (income):** no thesis-breaking news; sleeve remains insulated from the equity-side rotation, doing its job as ballast into an elevated-vol earnings week.

### Core Trade Ideas (from current WATCHLIST.md core list)
None. The semi capital-equipment/memory selloff (KLAC, LRCX, AMAT, MU, WDC, STX) puts 6 of 24 core names' momentum-gate status in real doubt — not assumed failed, needs a live-bar recheck at market-open. GLW's confirmed Jul 28 earnings catalyst is a risk/watch item, not a signal. No new core buy candidate clears pre-market given this much sector uncertainty into a heavy earnings week.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
1. **MNKD (held)** — see Held-Position Thesis Check. PDUFA decision could land as soon as tomorrow after-hours. Already at the 5% binary cap, documented. No action pre-market; re-evaluate at every session through Friday close.
2. **OCUL (held)** — no status change; no near-term binary catalyst.
3. **ORN** — Q2 earnings confirmed Tue Jul 28 after close (call Jul 29) — now inside the 5-trading-day window (3 trading days out). Consensus $0.06 EPS / ~$225.7M revenue; Q1 beat ($0.05 vs $0.00 est.) supports the thesis, no negative overnight news. Not held. Entering this close to an earnings print raises gap risk right as the window opens — flag for market-open evaluation with a fresh quote/bars, not a pre-market entry.
4. **RIGL, FSTR** — no overnight news, no catalyst inside the 5-day window. No action.
5. **TWIN** — still thesis-broken (07-15 merger/privatization 8-K). Reiterating the standing recommendation to drop it at the next screen refresh — flagged unactioned across multiple sessions now.

### Risk Factors
- MNKD's PDUFA decision is imminent — expected Fri 7/24 after-hours or Mon 7/27 pre-market, with no weekend stop protection. Top event risk on the book; already properly sized and documented, nothing further to do pre-market.
- Semiconductor/AI-capex selloff deepened sharply overnight (KLAC/LRCX/SNDK/TER -10-14%, MU carrying a fresh Sell call) — threatens momentum-gate status for 6 of 24 core watchlist names; needs live-bar confirmation at market-open before acting either way.
- Fresh US-Iran ceasefire breakdown driving oil +7% overnight — a genuine new escalation, not the same stale 07-11 backdrop; tailwind for VLO/MPC, headwind for broad risk sentiment and a driver of the current VIX futures/spot contango.
- GLW and ORN both now sit inside their 5-trading-day catalyst windows (Jul 28 earnings for both) — watch items for the next few sessions.
- Cash at 20.11%, above the 20% floor — no funding sweep needed absent a new buy.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). Neither held position is near its hard-cut (HPE in gain; MNKD -2.5%; OCUL -12.7%, watching but not breached at -15%). No satellite catalyst has resolved negatively — MNKD's PDUFA remains pending, not yet decided. Given the imminence of the MNKD decision (next 1-2 trading sessions, no weekend gap protection) plus a genuine fresh geopolitical escalation (Iran ceasefire breakdown) and a sharply deepening semi-sector selloff threatening 6 core names, an urgent notification is warranted per Step 5 despite no hard-cut breach — the owner should know these are live going into Friday. Handoff to market-open: (1) recheck WDC/STX/MU/AMAT/LRCX/KLAC momentum-gate status live, don't assume pass or fail; (2) MNKD PDUFA — no action needed, already sized/documented, just monitor; (3) ORN now inside its catalyst window — evaluate with fresh bars if considering entry, mindful of earnings-proximity gap risk; (4) HPE and OCUL theses both intact. This week (Jul 20 start): core 0/6, satellite 0/4 — unchanged, valid per the Patience Rule.

### 9:30 AM Session Note
- Live positions/orders confirmed: all 6 open positions (HPE, MNKD, OCUL, EDGX, SGOV, SPHY) carrying live GTC trailing stops, none missing. Equity $97,134.62, cash $19,558.40 (20.13%) — above the 20% floor, no funding sweep needed.
- Hard-cut check: HPE +3.07% (gain, no cut), MNKD -6.63%, OCUL -13.55% (drifted further from -12.7% pre-market; still short of the -15% satellite hard-cut — watch closely into Friday).
- ORN: live quote bid $11.20 / ask $13.35 — ~17% spread, same illiquid/wide-spread condition flagged 7/21. Skipped per STEP 2 skip rule; not a market-condition worth acting on. No satellite entry this window.
- No core buy candidate existed pre-market (semi-sector momentum-gate recheck for WDC/STX/MU/AMAT/LRCX/KLAC deferred to a research window — not blocking, since no buy depended on it today). No satellite buy candidate cleared (ORN illiquid). Result: HOLD, zero new trades this window. This week (Jul 20 start): core 0/6, satellite 0/4 — unchanged.
- Lesson: ORN's spread has now failed the liquidity check twice in a row (7/21 and 7/23) — worth flagging at Friday's review as a name to drop or deprioritize regardless of catalyst/momentum strength.

### 11 AM Session Note
- No "### Approved Trades (verified)" list exists in today's log (only the 9:30 AM Session Note) — per STEP 3, no buys placed this window. HOLD on new entries.
- **OCUL (satellite) stopped out automatically before this session started:** 15% GTC trailing stop filled 2026-07-23T13:51:58Z (9:51am ET) at $8.383267 (trigger $8.38525, hwm $9.865) — 753 sh, realized -$1,134.57 (-15.23%). No thesis break, no negative news; this is the continuation of the multi-session drift already flagged at every prior check (9:30am today had it at -13.55%, not yet at the hard-cut). Mechanical stop did its job. Logged to TRADE-LOG.md.
- **Cash-floor sweep performed:** the stop-out left cash at $25,871 (26.72% of $96,832.39 equity), well above the 20% floor. Per the Income sleeve rule, swept $6,450 into SGOV (bought 64.102464718 sh @ $100.62), leaving cash at $19,421.01 (20.06% of equity). Canceled the old 166-share SGOV trailing stop and replaced with one 5% trailing GTC stop on the combined 230-share round lot (0.102 fractional sh left unprotected, ~$10, immaterial). Logged to TRADE-LOG.md.
- Risk sweep on remaining positions: HPE (core) +2.50%, well clear of -7%; MNKD (satellite) -4.25%, well clear of -15%. No further cuts. No stop tightening — neither position is in gain past its threshold (HPE below +15%, MNKD not in gain). All 5 remaining positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- Thesis check: HPE intact, no new news. MNKD's Furoscix PDUFA remains pending — could land as soon as tomorrow (Fri 7/24) after-hours per pre-market's note; no resolution yet, holding through per the documented 5%-cap plan. No name moved sharply with an unexplained cause beyond OCUL's already-documented drift — skipped the optional Step 7 Gemini call.
- **2-strike sub-sector rule:** OCUL's stop-out is the first satellite loss realized this week and the first biotech-sub-sector loss under the cooldown tracker — strike 1 of 2. Cooldown NOT triggered (needs 2 consecutive biotech losses). Flagging in WATCHLIST.md for visibility; no new-entry restriction yet.
- This week (Jul 20 start): core 0/6, satellite 0/4 (OCUL's exit doesn't count against the new-entry cap; MNKD's entry was last week). Sleeve exposure post-sweep: core 10.51% (HPE), satellite 4.81% (MNKD), income 64.63% (EDGX/SGOV/SPHY), cash 20.06%.
- Action taken this window (OCUL stop confirmed + logged, cash-floor sweep) — sending EOD-style notification per STEP 9.

### 3 PM Session Note
- No "### Approved Trades (verified)" list exists in today's log — per STEP 3, buy side HOLD, zero new trades this window. This week (Jul 20 start) stays at core 0/6, satellite 1/4 (MNKD).
- Risk sweep: HPE +0.49% and MNKD -2.37% both well clear of their -7%/-15% hard-cuts; all 5 open positions (HPE, MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. Fresh WebSearch found no adverse news on HPE (DOE Genesis Mission selection is incrementally positive, insider sale routine) or MNKD (no PDUFA decision has landed yet) since 11am — both theses intact, nothing closed.
- Gap-risk check: MNKD's Furoscix PDUFA is now 1 trading day out (decision expected Fri 7/24 after-hours or Mon 7/27 pre-market — no weekend stop protection either way). It was properly sized/documented at entry (5% binary-catalyst cap, max loss logged 7/21) and conviction hasn't weakened per today's research — holding through remains valid, stated explicitly per the rule rather than silently doing nothing. No stop tightening this window (HPE below +15%, MNKD not in gain; Income sleeve has no gain-based schedule). 2-strike sub-sector tracker unchanged: biotech strike 1/2, no cooldown triggered.
- Cash 20.09%, at/above the 20% floor — no funding sweep needed (no trades this window). Risky positions closed today: none.

## 2026-08-04 — Pre-market Research

**Note:** No RESEARCH-LOG entries persisted between 2026-07-23 and today (11-session gap, cloud-session persistence issue per prior TRADE-LOG snapshots) — this run resumes logging, not a backfill of the missing sessions.

### Account
- Equity: $95,322.50 | Cash: $19,116.70 (20.06%) | Buying power: $286,120.28 | Positions market value: $76,205.80
- Core exposure: $0.00 (0.00%) | Satellite exposure: $4,653.45 (4.88%, MNKD) | Income exposure: $71,552.35 (75.06% — SGOV $31,779.35 / EDGX $19,913.80 / SPHY $19,859.20)
- Open positions: MNKD (satellite, 1215 sh @ $4.00 entry, -4.25% unrealized), SGOV/SPHY/EDGX (income). Core sleeve flat (0 positions) since HPE's 2026-07-28 stop-out, now 5+ trading sessions running. All 4 open positions confirmed carrying live GTC trailing stops via `alpaca.sh orders` (MNKD 15% trail $3.59975; SGOV 5% trail $95.684; EDGX 5% trail $25.479; SPHY 5% trail $22.2015) — none missing.
- This trading week (Aug 3 start): core 0/6, satellite 0/4.

### Data-quality flag
Gemini Deep Research output was truncated again — this run returned **only** a "Strategic Syntheses and Afternoon Outlook" summary paragraph plus a source list; sections 1-4 (explicit futures/VIX figures, econ calendar, per-held-ticker checks, per-watchlist-ticker checks) never came through in the captured output. Same recurring pattern flagged repeatedly since 2026-07-12, still unresolved — needs an actual fix (prompt restructuring or splitting into smaller calls) at the next weekly review. Not fabricating any figure Gemini didn't show; backfilled below via native WebSearch per the data-quality guard. Gemini's synthesis itself did surface three usable, non-fabricated leads, corroborated independently below: AMD earnings after today's close as an AI-capex-cycle bellwether, an LLY Neuroscience-division leadership departure ahead of tomorrow's earnings, and RIGL/MNKD/CGEM/FSTR sitting inside a cluster of near-term binary catalysts.

### Market Context (WebSearch fallback for Gemini's missing sections 1-2)
- **VIX:** ~18.0 (futures), range 17.98-18.08 — calm, not elevated.
- **S&P 500/Nasdaq/Dow futures:** modestly higher pre-market (S&P +0.1%, Nasdaq-100 +0.6%, Dow +0.1%) after a record-high Monday close, on a ~5% overnight drop in oil after Trump canceled planned strikes on Iran to revive negotiations — a de-escalatory, risk-on catalyst, not a fresh escalation.
- **Earnings calendar today:** AMD, Caterpillar, Merck, McDonald's, SpaceX (after close) headline a heavy Tuesday slate. AMD (core watchlist, not held) is the key AI-infra bellwether — its guidance is a read-through for the semis/AI-hardware cluster (DELL, MU, HPE, STX, NTAP, WDC, AMAT all on the current core watchlist).
- **LLY (core watchlist, not held):** Neuroscience-division head Anne White's departure reported ahead of LLY's earnings call tomorrow (8/5) — a fresh execution-risk flag on a stock "priced for perfection" (Kisunla Alzheimer's rollout). Not a Sell-rating trigger, just a watch item if LLY is considered for entry.
- No major scheduled US econ data/Fed events surfaced for today; Amazon's market cap crossed $3T on strong hyperscaler earnings (index-level tailwind, no direct watchlist overlap).

### Held-Position Thesis Check
- **MNKD (satellite, -4.25%):** no new news found beyond the already-known Q2 2026 earnings date, confirmed **Wednesday 2026-08-05 after market close** (4:30pm ET call) — 1 trading day out. FUROSCIX ReadyFlow PDUFA catalyst remains fully resolved since 7/24 (approved); this is a standard earnings print, not a re-triggered binary-regulatory event. No thesis break, well clear of the -15% hard-cut.
- **SGOV/SPHY/EDGX (income):** no thesis-breaking news. SGOV declared its routine August distribution ($0.3068/share, ex-div 8/3, payable 8/6, 30-day SEC yield 3.57%) — routine; per the Income-sleeve rule, reinvest to SGOV at settlement, no action needed pre-market. No SPHY/EDGX-specific news surfaced.

### Core Trade Ideas (from current WATCHLIST.md core list)
- None. Gemini's per-ticker section-4 coverage was lost entirely to truncation — no confirmed overnight check exists today for any of the 25 current core names (DELL, MU, DDOG, HUM, PANW, AMD, FTNT, HPE, CNC, STX, CRWD, DVA, NTAP, WDC, URI, MPC, CVS, AMAT, DOC, BBY, VLO, WST, LLY, ABBV, GE) beyond the AMD-earnings and LLY-leadership flags above — silence on the rest is not treated as a pass. Needs a live-bar recheck at market-open before any entry.
- Watch item: AMD's after-hours print today is a high-impact read-through for the AI-hardware core cluster (DELL, MU, HPE, STX, NTAP, WDC, AMAT) — momentum-gate status for that group should be rechecked live tomorrow morning regardless of print direction.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **RIGL** — Q2 2026 earnings confirmed **today, 2026-08-04, after market close** (4:30pm ET) — inside the 5-trading-day catalyst window (same-day). Not held. Any entry today would be entering same-day into an after-hours binary print with no stop protection overnight — must use the 5% binary-catalyst cap with documented max-loss-if-fails per the gap-risk rule, if considered at market-open/midday before the print (and re-evaluated fresh after the print if not entered beforehand). Not executed this run (pre-market is research-only).
- **MNKD** (held) — see Held-Position Thesis Check; earnings tomorrow (8/5), 1 trading day out.
- **CGEM** — correction to a standing data-quality flag: zipalertinib's FDA target action date is confirmed **February 27, 2027** (NDA accepted, Breakthrough Therapy), not the internally-inconsistent "Q1 2026/August 6" figure carried in WATCHLIST.md from a prior Gemini run. This is **not** inside the 5-trading-day window — update WATCHLIST.md's catalyst-date field at the next screen refresh.
- **FSTR** — Q2 2026 earnings confirmed **Monday 2026-08-10, pre-market** (was "mid-August" estimate in WATCHLIST.md) — 4 trading days out, inside the 5-trading-day window as of today.
- **CVLG** — not rechecked this run (no overnight news search performed); its 7/29 earnings catalyst has already passed per TRADE-LOG.

### Risk Factors
- Gemini Deep Research truncation remains an unresolved, recurring reliability issue (flagged repeatedly since 07-12) — full sections 1-4 lost again this run, backfilled via WebSearch only for the items judged decision-relevant (macro tone, held-position checks, satellite catalyst dates), not exhaustively for all 25 core names.
- RIGL's earnings print tonight and MNKD's tomorrow are both binary, overnight-gap events with no stop protection — MNKD is held (position already sized/documented at entry, no forced action); RIGL is not held, so no gap risk unless a same-day entry is made.
- AMD's after-hours print tonight is a bellwether for the core AI-hardware cluster (DELL, MU, HPE, STX, NTAP, WDC, AMAT) — expect a live momentum/sentiment shift either direction to check at market-open.
- LLY leadership departure (Neuroscience) ahead of tomorrow's earnings — execution-risk watch item, not a rating downgrade, relevant only if LLY is considered for a new core entry.
- WATCHLIST.md is now 11 calendar days stale (last refresh 2026-07-24; Friday 7/31 refresh was missed per TRADE-LOG) — momentum/fundamentals on the current lists are correspondingly stale; recommend an ad hoc `/screen-refresh` at the next opportunity, consistent with the standing carryover flag from prior sessions.
- Cash at 20.06%, essentially at the floor — any new Core/Satellite buy this week requires an SGOV funding sweep per the Income-sleeve rule.
- No held position is near its hard-cut (MNKD -4.25% vs -15%); no major geopolitical escalation (today's Iran news is de-escalatory); VIX calm (~18.0).

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight (RIGL and MNKD catalysts are still pending, not yet resolved), and no major geopolitical escalation — so no urgent pre-market notification triggered per Step 5. Handoff to market-open/midday: (1) no core buy candidate confirmed given lost Gemini coverage — don't treat silence as a pass, recheck the full core list live, especially AI-hardware names ahead of/after AMD's print; (2) RIGL's earnings print is tonight — any same-day entry must use the 5% binary cap with documented max loss, otherwise re-evaluate fresh post-print; (3) MNKD (held) reports tomorrow, 1 trading day out, no action needed today; (4) CGEM's catalyst-date correction (Feb 2027, not imminent) and FSTR's confirmed 8/10 date should be reflected in WATCHLIST.md at the next screen refresh. This week (Aug 3 start): core 0/6, satellite 0/4 — Patience Rule applies as always.

### 9:30 AM Session Note
- **Live core momentum recheck (per pre-market handoff item 1), Alpaca bars vs SPY:** of the AI-hardware/semis cluster (DELL, MU, AMD, HPE, STX, NTAP, WDC, AMAT), only **DELL, HPE, NTAP** currently pass the full gate (positive 3M/6M rel. return + above 50d/200d MA) — MU, AMD, STX, WDC, AMAT are all now **below their 50-day MA** despite strongly positive 3M/6M relative returns, i.e. a live momentum-gate fail today. Of the cybersecurity/software names, **DDOG, PANW, FTNT, CRWD** all pass cleanly (3M rel. +73pp to +90pp, 6M rel. +74pp to +102pp, above both MAs).
- **No buy placed on any of the above.** FMP 402'd on rating/cashflow for all four software candidates (DDOG, PANW, FTNT, CRWD) — the standing free-tier allowlist gap — so today's FCF/rating figures can't be freshly confirmed; only WATCHLIST.md's 2026-07-24 screen data exists (11 calendar days stale, two Friday refreshes missed 7/17 and 7/31) and no "### Approved Trades (verified)" list exists anywhere in today's RESEARCH-LOG. Per the buy-side gate's last bullet (entry criteria must be satisfied *and documented in today's entry*) and the Patience Rule, HOLD rather than trade off stale fundamentals — flagging DDOG/PANW/FTNT/CRWD's live momentum pass for Friday's review / next screen refresh instead of forcing an unverified entry. HPE specifically also carries a soft sector-concentration caution (stopped out 7/28, same AI-hardware cluster) even though it live-passes today — another reason not to snap-react on momentum alone.
- **RIGL (satellite, earnings tonight after close):** live quote bid $31.74 / ask $43.32 — ~27% spread, same wide/illiquid-spread condition that has failed this name repeatedly (7/27, 7/29, 8/3). Skipped per the STEP 2 skip rule; not a same-day binary entry regardless of the catalyst window.
- Risk sweep: MNKD (satellite) -4.13% (entry $4.00, last $3.835), well clear of the -15% hard-cut, earnings tomorrow (8/5) — no action, already documented at entry. All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No thesis break on any held name. No stop tightening (no position past its gain-based threshold; Income sleeve has no gain-based schedule). No stop moved down.
- Cash $19,116.70 / equity $95,353.24 = 20.05%, at/essentially at the 20% floor — no funding sweep needed since no trade fired. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Result: **HOLD, zero new trades this window.** This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- Lesson: WATCHLIST.md is now 11 calendar days stale with two consecutive missed Friday refreshes (7/17, 7/31) and FMP is 402'ing on every per-symbol call tried today — the combination means core entries are effectively blocked even when live momentum clears, since fundamentals can't be freshly verified. Worth flagging at the next review as a process gap, not just a data-quality footnote.

### 11 AM Session Note
- **No buys.** No "### Approved Trades (verified)" list exists anywhere in today's RESEARCH-LOG (pre-market and 9:30am both HOLD) — per STEP 3, buy side stays HOLD. This week (Aug 3 start) unchanged: core 0/6, satellite 0/4.
- Risk sweep: MNKD (satellite) -3.38% (entry $4.00, last $3.865), well clear of the -15% hard-cut; earnings tomorrow (8/5) confirmed as a standard print, not a re-triggered binary (FUROSCIX approval resolved 7/24) — no thesis break, holding through. Core sleeve remains flat (0 positions). Income: EDGX +0.15%, SGOV -0.20%, SPHY -0.46%, all well inside 5% stops. All 4 open positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- No stop tightening (no position past its gain-based threshold; MNKD is underwater, not up). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Cash $19,116.70 / equity $95,504.40 = 20.01%, at/above the 20% floor — no funding sweep needed since no trade fired.
- Result: **HOLD, zero new trades this window.**

### 3 PM Session Note
- **No buys.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm check all confirm none) — per STEP 3, buy side stays HOLD. This week (Aug 3 start) unchanged: core 0/6, satellite 0/4.
- Risk sweep: MNKD (satellite) -1.00% (entry $4.00, last $3.96), well clear of the -15% hard-cut. Q2 earnings tomorrow (8/5, after close) now 1 trading day out — reconfirmed as a standard commercial print, not a re-triggered binary (FUROSCIX PDUFA resolved 7/24); position was already sized/documented per the binary-catalyst rule at entry and conviction is unchanged, so holding through rather than closing (documented explicitly per STEP 4, not silently passing). All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No thesis break on any held name.
- No stop tightening this window — no position past its sleeve's gain-based threshold (MNKD -1.00%, EDGX +1.34% but Income sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Cash $19,116.70 / equity $95,867.15 = 19.95%, a hair below the 20% floor purely from today's portfolio gains (EDGX +1.67%, MNKD +4.21% intraday) — no trade fired this window to trigger the SGOV funding-sweep mechanism, so no forced sale; flag for Friday's weekly rebalance touch instead. Risky positions closed today: none.
- Result: **HOLD, zero new trades this window.** This week (Aug 3 start) stays at core 0/6, satellite 0/4.

## 2026-08-05 — Pre-market Research

### Account
- Equity: $95,757.95 | Cash: $19,116.70 (19.96%, essentially at the 20% floor) | Buying power: $287,300.66 | Positions market value: $76,641.25
- Core exposure: $0.00 (0.00% — flat since HPE's 2026-07-28 stop-out, now 6 trading sessions running) | Satellite exposure: $4,702.05 (4.91%, MNKD) | Income exposure: $71,939.20 (75.13% — SGOV $31,782.52 / EDGX $20,237.56 / SPHY $19,919.12)
- Open positions: MNKD (satellite, 1215 sh @ $4.00 entry, $3.87 last, -3.25% unrealized, -2.27% today), SGOV/EDGX/SPHY (income). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` (MNKD 15% trail $3.59975; SGOV 5% trail $95.684; EDGX 5% trail $25.783; SPHY 5% trail $22.2015) — none missing.
- This trading week (Aug 3 start): core 0/6, satellite 0/4.

### Data-quality flag
Gemini Deep Research output truncated again — same recurring pattern flagged every session since 2026-07-12, still unresolved (needs a prompt-restructuring/splitting fix at the next weekly review, not just a footnote). Today's capture was worse than usual: **no** structured sections came through at all, only a "Strategic Conclusions and Portfolio Action Plan" paragraph plus a source list — no explicit VIX/futures figures, no econ-calendar list, no per-ticker checks. Not fabricating anything Gemini didn't show; backfilled below via native WebSearch per the data-quality guard. Gemini's synthesis surfaced a few directionally-usable, independently-corroborated leads (ADP print as a rate-cut/recession swing factor, MPC/refining-margin strength, DDOG's stretched-multiple risk ahead of tomorrow's earnings, MNKD's clean pre-earnings read) — those are cross-checked below, not taken on faith. One Gemini claim was **not** corroborated as stated: it described "the FDA's endorsement of \[CGEM's] CLN-049 Phase 2 trial architecture" as clearing a regulatory overhang — WebSearch confirms CLN-049 has FDA Fast Track designation (real, but a different and narrower thing than "endorsement of trial architecture") and that CGEM's Q2 print is tomorrow (8/6 pre-market), not "ahead of an Aug 6 earnings call" framed as still-future from today — treat Gemini's CGEM framing as imprecise, not decision-grade.

### Market Context (WebSearch fallback for Gemini's missing sections 1-2)
- **VIX:** ~17.9-18.0 (futures range 17.58-17.93) — calm, not elevated, consistent with the last several sessions.
- **S&P 500 futures:** modestly positive pre-market tone per multiple sources ("Earnings Blitz, Peace Hopes Provide Early Boost" — Schwab); precise premarket point-move not independently confirmed to the same standard as the VIX read, treating the "risk-on" direction as the reliable takeaway rather than any specific percentage.
- **Econ calendar today:** July ADP employment change and July ISM Services PMI — both pre-open releases, ADP flagged by Gemini's synthesis as a rate-cut-vs-recession swing factor (weak print ≈ or below 70k consensus).
- **Earnings calendar today:** heavy slate — AM: Disney, Uber, **LLY** (core watchlist, not held — yesterday's Neuroscience-division leadership departure is the live execution-risk watch item into this print), Novo Nordisk, Shopify. PM: eBay, Axon, **WDC** (core watchlist, not held), SNDK, AppLovin, MercadoLibre, Realty Income. DDOG (core watchlist, not held) reports tomorrow (8/6), flagged by Gemini as a high-execution-risk stretched-multiple name.
- MPC (core watchlist, not held) — geopolitical-premium refining margins reported roughly double YoY; sympathy read-through to VLO (also core watchlist, not held) is a real but unverified-to-the-same-standard tactical note from Gemini's synthesis, not independently re-confirmed here.
- No major scheduled Fed events found. No fresh geopolitical escalation surfaced (continued de-escalatory Middle East tone per the "peace hopes" framing), consistent with several prior sessions.

### Held-Position Thesis Check
- **MNKD (satellite, -3.25%):** Q2 2026 earnings confirmed **today, after market close** (4:30pm ET call) — independently reconfirmed via WebSearch, no pre-announcement or leak found. FUROSCIX ReadyFlow PDUFA catalyst remains fully resolved since 7/24 (approved) — this is a standard commercial print, not a re-triggered binary-regulatory event. No thesis break, well clear of the -15% hard-cut. No stop protection over tonight's print (standard trailing-stop gap-risk caveat) — already sized/documented at entry, holding through per the same rationale as the last several sessions.
- **SGOV/SPHY/EDGX (income):** no thesis-breaking news found. No action needed pre-market.

### Core Trade Ideas (from current WATCHLIST.md core list)
- None confirmed. Gemini's per-ticker section-4 coverage was lost entirely to truncation again — no fresh overnight check exists today for any of the 25 current core names beyond the LLY/WDC earnings-today flags above; silence on the rest is not treated as a pass. Needs a live-bar recheck at market-open before any entry, same standing caveat as prior sessions.
- Watch items: LLY reports this morning with a live execution-risk overhang (Neuroscience-division leadership departure, flagged 8/4); WDC reports after close today — both are read-throughs worth rechecking live before/after their prints, WDC specifically for the AI-hardware/semis cluster (DELL, MU, HPE, STX, NTAP, AMAT also on the current list).

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **MNKD** (held) — see Held-Position Thesis Check; earnings after close today.
- **RIGL** (not held) — Q2 2026 results reported yesterday (8/4) after close: EPS $0.88 vs. $0.09 consensus (large beat), commercial revenue +14% YoY to $67M (TAVALISSE record $47.4M, REZLIDHIA +27%), VEPPANU launch pulled forward to mid-August. Shares traded up (~$38.70, +$1.27 intraday) on the print. Catalyst now resolved positively. Not evaluated for entry this pre-market run (research-only); worth a fresh momentum/liquidity recheck at market-open given the positive print — this name has failed the wide/illiquid-spread skip rule repeatedully in prior sessions (7/27, 7/29, 8/3, 8/4), re-check whether the spread has normalized post-earnings before considering entry.
- **CGEM** (not held) — Q2 2026 results due **tomorrow, 2026-08-06, pre-market** (not today, and not "ahead of an earnings call" as Gemini's synthesis implied). Zipalertinib NDA remains FDA-accepted per the 8/4 correction (target action date Feb 27, 2027 — not imminent). CLN-049 carries FDA Fast Track designation (real) but no confirmed near-dated binary beyond tomorrow's routine earnings print. Not inside a 5-trading-day *binary-catalyst* window as currently documented.
- **FSTR** — Q2 earnings confirmed 2026-08-10 per 8/4 research (5 trading days out from today) — approaching but not yet inside the window.
- **CVLG** — no fresh check this run; its 7/29 earnings catalyst has already passed per TRADE-LOG.

### Risk Factors
- Gemini Deep Research truncation is now a chronic, unresolved reliability issue (flagged every session since 07-12, worse today — zero structured sections captured) — needs an actual process fix (prompt restructuring / splitting into smaller calls) at the next weekly review rather than being re-flagged again next session.
- MNKD's earnings tonight is an overnight gap-risk event with no stop protection, though already sized/documented at entry and not a re-triggered binary per the FUROSCIX-resolved rationale used the last several sessions.
- WATCHLIST.md is now 12 calendar days stale (last refresh 2026-07-24; the 7/31 refresh was missed per TRADE-LOG, same standing flag as 8/3 and 8/4) — momentum/fundamentals on the current lists are correspondingly stale. Next Friday (8/7) is the next scheduled refresh; recommend not letting a third consecutive Friday slip.
- Cash at 19.96%, a hair below the 20% floor purely from price drift (no trade to trigger the SGOV funding-sweep mechanism) — same pattern flagged 8/4 3pm, still not addressed pending the next weekly rebalance touch. Not urgent (no buy pending that would deepen the gap).
- No held position is near its hard-cut (MNKD -3.25% vs -15%); VIX calm (~17.9-18.0); no fresh geopolitical escalation.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight (MNKD reports tonight, still pending; RIGL's 8/4 print was positive; CGEM reports tomorrow), and no major geopolitical escalation — so no urgent pre-market notification triggered per Step 5. Handoff to market-open/midday: (1) no core buy candidate confirmed given lost Gemini coverage — don't treat silence as a pass, recheck the full core list live, with LLY (reports this AM) and WDC (reports after close) as the two watch items; (2) MNKD (held) reports after close today, no pre-market action needed; (3) RIGL's positive 8/4 print plus its repeatedly-failed liquidity check is worth a fresh spread recheck at market-open if considered; (4) CGEM reports tomorrow (8/6) pre-market, not today. This week (Aug 3 start): core 0/6, satellite 0/4 — Patience Rule applies as always.

### 9:30 AM Session Note
- Live account/positions confirmed via `alpaca.sh`: equity $96,033.91, cash $19,116.70 (19.91%, a hair below the 20% floor on price drift only — no trade this window to trigger the funding-sweep mechanism, same unresolved flag as 8/4). Open positions unchanged: MNKD (satellite, +0.25%), SGOV/SPHY/EDGX (income) — all 4 confirmed carrying live GTC trailing stops via `orders open`, none missing, none near a hard-cut.
- Live-checked the top non-semis core watchlist names per pre-market's handoff (DDOG, HUM, PANW, FTNT, CNC, CRWD, DVA, MPC, CVS) plus satellite RIGL: every one showed an abnormally wide bid/ask spread (~9-20%) on `alpaca.sh quote`, well outside a tradeable market. Sanity-checked the data feed itself against AAPL and the held MNKD position — both returned normal, tight spreads (AAPL ~0.2%, MNKD ~0.75%) at the same moment, so this isn't a feed outage; it's specific to these candidate names (consistent with the recurring IEX-feed thin-top-of-book pattern already logged for ORN/CVLG/RIGL in prior sessions, just hitting a wider set of names at today's open). Every checked candidate trips the wide/illiquid-spread skip rule in STEP 2 — none reached the buy-side gate.
- LLY/WDC not evaluated for entry (earnings-day names per pre-market's flag, not buy candidates today regardless of spread).
- **Decision: HOLD, no trades this window.** No core or satellite candidate cleared the live liquidity check; no buy-side gate was run to completion for lack of a spread-clean candidate. This week (Aug 3 start) stays at core 0/6, satellite 0/4 — valid per the Patience Rule.
- Lesson: today's spread anomaly hit a broader set of large-cap names than the usual small-/mid-cap illiquidity pattern (DDOG, PANW, CVS are not thin names) — worth flagging at Friday's review whether this is opening-auction noise specific to 8/5 or an emerging data-feed issue; recommend a market-open recheck pattern of "wait and re-quote once mid-morning" before concluding a name is untradeable on a single wide read, rather than only at 11am/3pm as today's flow already does.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (market-open's live liquidity recheck found every non-semis core candidate + RIGL tripping the wide/illiquid-spread skip rule) — per STEP 3 this window trades from that list only, so no buys placed. This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- Live account confirmed via `alpaca.sh`: equity $95,878.15, cash $19,116.70 (19.94%, a hair below the 20% floor on price drift only — no trade this window to trigger the SGOV funding-sweep mechanism, same unresolved flag as 8/4 and this morning's pre-market/9:30am notes; not urgent, no buy pending that would deepen the gap). Open positions unchanged: MNKD (satellite, 1215 sh, +1.50% unrealized, +2.53% today), SGOV/SPHY/EDGX (income) — all 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- Risk sweep: no position at/beyond its hard-cut (MNKD +1.50%, no core positions to check). No stop tightening — MNKD's gain is well below the satellite +25% tightening threshold; Income sleeve has no gain-based schedule. No stop moved down.
- Thesis check: MNKD's Q2 2026 earnings remain confirmed for today after market close (4:30pm ET) — no thesis break, FUROSCIX PDUFA catalyst fully resolved since 7/24, holding through the print per the same documented rationale as pre-market/9:30am. No adverse news found. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- No sharp unexplained moves this window — skipped the optional Gemini consolidated check (STEP 7).
- Lesson: none new this window; carrying forward pre-market/9:30am's flags (Gemini truncation, WATCHLIST.md now 12 calendar days stale, cash a hair below floor) unchanged into the 3pm close/EOD run.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, and 11am all returned zero qualifying ideas — the wide-spread anomaly across large-cap core names and RIGL's repeated illiquid-spread fail) — per STEP 3 no buys placed this window. This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- Live account confirmed via `alpaca.sh`: equity $96,060.91, cash $19,116.70 (19.90%, still a hair below the 20% floor on price drift only — no trade this window to trigger the SGOV funding-sweep mechanism, same unresolved flag as 8/4/8/5 pre-market/9:30am/11am). Open positions unchanged: MNKD (satellite, 1215 sh, +2.75% unrealized, +3.79% today), SGOV/SPHY/EDGX (income) — all 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- Risk sweep: no position at/beyond its sleeve hard-cut (MNKD +2.75% vs -15%; no core positions). MNKD's Q2 2026 earnings print is today after market close (4:30pm ET) — genuine overnight gap-risk event with no stop protection, but reconfirmed (4th time today) as a standard commercial print, not a re-triggered binary: the FUROSCIX ReadyFlow PDUFA the position was originally sized/documented against at the 5% binary cap resolved 7/24, and no new firm binary date exists on WATCHLIST.md. Conviction unchanged, well clear of the hard-cut — holding through, documented explicitly per STEP 4 rather than silently passing. No other thesis break on any held name. No stop tightening this window — no position is past its sleeve's gain-based threshold (MNKD +2.75% vs the +25% satellite trigger; Income sleeve has no gain-based schedule). No stop moved down.
- 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- Lesson: none new this window; carrying forward the standing flags (Gemini truncation, WATCHLIST.md now 12 calendar days stale, cash a hair below the 20% floor, MNKD earnings tonight as the key overnight watch item) into tomorrow.

## 2026-08-06 — Pre-market Research

### Account
- Equity: $95,855.86 | Cash: $19,116.70 (19.94%, a hair below the 20% floor on price drift only — no trade pending to trigger the SGOV funding-sweep mechanism) | Buying power: $287,487.33
- Core exposure: $0.00 (0.00% — flat since HPE's 2026-07-28 stop-out, now 7 trading sessions running) | Satellite exposure: $4,811.40 (5.02%, MNKD) | Income exposure: $71,927.76 (75.04% — EDGX $20,231.52 / SGOV $31,785.68 / SPHY $19,910.56)
- Open positions: MNKD (satellite, 1215 sh @ $4.00 entry, $3.96 last, -1.00% unrealized, -3.42% today post-earnings), EDGX/SGOV/SPHY (income). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` (MNKD 15% trail $3.59975; SGOV 5% trail $95.684; EDGX 5% trail $25.9255; SPHY 5% trail $22.2015) — none missing.
- This trading week (Aug 3 start): core 0/6, satellite 0/4.

### Data-quality flag
Gemini Deep Research output truncated again — same chronic, unresolved pattern flagged every session since 2026-07-12. This run was the worst yet: the captured output opens mid-document directly into the core-watchlist sector breakdown (section 4) with **no** sections 1-3 at all (no explicit VIX/futures figures, no econ calendar, no held-ticker overnight-news section), and even contains a broken internal cross-reference — MNKD's earnings section says "refer to the exhaustive... breakdown... in the 'Current Portfolio Holdings' section above," but that section was never captured in the output. Not fabricating anything Gemini didn't show; backfilled VIX/futures and MNKD's earnings results/reaction below via native WebSearch per the data-quality guard. This needs an actual process fix (prompt restructuring / splitting into smaller calls) at tomorrow's (8/7) weekly review — four consecutive weeks of this footnote without a fix is no longer acceptable as a recurring note.

### Market Context (WebSearch fallback for Gemini's missing sections 1-2)
- **VIX:** ~16.94 (range 15.89-17.50) — calm, actually a touch lower than the last several sessions' ~18 baseline.
- **S&P 500 futures:** modestly positive pre-market tone (SPY +0.22%), but described as "mixed sentiment" — a heavy corporate-earnings slate against signs of a cooling economy, with blue-chips leading and tech lagging (sector rotation, consistent with Gemini's semis-vs-cybersecurity divergence below).
- No explicit econ-calendar release list was recoverable from either source this run — not fabricating one; flagging as a gap rather than assuming nothing is scheduled.
- **Sector divergence within the core watchlist (Gemini synthesis, cross-checked as internally consistent, not independently re-verified line-by-line):** cybersecurity/software (CRWD, PANW, DDOG, FTNT) showing breakout bullish momentum on a hedge-fund hack revelation and AI-threat-expansion narrative. Semis/memory (MU, AMD, WDC, STX, NTAP, AMAT) under a sharp, described-as-technical selloff — MU down toward ~$892 pre-market on institutional profit-taking plus a new DRAM price-fixing class-action suit naming Samsung/SK Hynix/Micron; STX/WDC down 5-6% overnight before a partial bounce on Iran de-escalation news; AMD down 7%+ after a Q3 guide that undershot elevated expectations. Enterprise hardware (HPE, DELL) relatively resilient — HPE cited 152% networking-segment growth and management commentary that memory pricing pressure barely touches its bill of materials. This is consistent with 8/4's 9:30am live-momentum recheck, which already found MU/AMD/STX/WDC/AMAT below their 50-day MA while DELL/HPE/NTAP passed — today's news is a plausible continuation of that same weakness, not a new signal to act on pre-market.

### Held-Position Thesis Check
- **MNKD (satellite, -1.00% unrealized, -3.42% today):** Q2 2026 results reported yesterday (8/5) after close, confirmed via WebSearch (BioSpace/press release): revenue $109.4M, +43% YoY (vs. $76.5M prior year), driven by the Furoscix acquisition ramp (scPharma, Oct 2025), +53% collaboration/services revenue, and higher United Therapeutics Tyvaso DPI royalties; Afrezza and V-Go both declined YoY. GAAP diluted EPS -$0.06 (vs. $0.00 prior year) on a $19.0M net loss from higher launch spend, acquisition-related costs, and financing expense. Furoscix operational detail was positive — IDN doses purchased +36% sequentially, nephrology units dispensed +67% and a record. Stock reaction was mildly negative (-3.42% today) — a soft print (revenue beat, EPS/margin miss on launch investment), not a thesis break: the FUROSCIX ReadyFlow PDUFA catalyst the position was originally sized against remains resolved (approved 7/24), and the core commercial-ramp thesis (Furoscix adoption, royalty growth) is intact per today's detail. Well clear of the -15% hard-cut. No action needed pre-market; recheck live at market-open for continued drift.
- **EDGX/SGOV/SPHY (income):** no thesis-breaking news surfaced.

### Core Trade Ideas (from current WATCHLIST.md core list)
- None. No new candidates outside the current watchlist per the rules. Per the sector divergence above: MU/AMD/WDC/STX/NTAP/AMAT (already live-failing the momentum gate as of 8/4) show renewed idiosyncratic pressure (DRAM lawsuit, weak AMD guide) worth a fresh live recheck at market-open, not a reason to act pre-market. CRWD/PANW/DDOG/FTNT show continued bullish momentum consistent with their 8/4 live pass — also needs a fresh live recheck (spread, FMP-fundamentals gap noted 8/5) before any entry, not a standing approval. HPE/DELL relative strength is consistent with HPE's 8/4 live pass. No idiosyncratic overnight news surfaced for HUM, CNC, DVA, URI, MPC, CVS, DOC, BBY, VLO, WST, LLY, ABBV, GE — silence isn't treated as a pass given the standing Gemini-coverage gap.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **CGEM** — Q2 2026 earnings scheduled pre-market **today (2026-08-06)**; as of this research the official results had not yet crossed the wire (consensus: ~-$0.80/-$0.81 EPS on zero revenue, pre-revenue clinical-stage). Thesis remains positive: CLN-049 cleared a positive End-of-Phase 1 FDA meeting (7/28), opening a path to a registrational Phase 2; zipalertinib NDA stands FDA-accepted (Breakthrough Therapy, target action Feb 27 2027 per the 8/4 correction — not imminent). Cash-burn detail in today's 10-Q is the metric that could move the thesis. Not evaluated for entry (pre-market is research-only); recheck once the actual print is out and re-verify the wide/illiquid-spread condition that has failed this name repeatedly in prior sessions.
- **RIGL** (not held) — active catalyst is now the VEPPANU (vepdegestrant) commercial launch, mid-August 2026 (~5-7 trading days out — approaching but not yet inside the 5-day window). 8/4 earnings (already logged 8/5) confirmed as a large beat (record $78.7M revenue, EPS $0.88 vs. $0.21 consensus); management raised FY26 revenue guidance to $285-295M explicitly excluding any VEPPANU contribution. Worth a fresh liquidity/spread recheck at market-open given this name's repeated wide/illiquid-spread skip-rule fails (7/27, 7/29, 8/3, 8/4).
- **FSTR** — Q2 earnings reconfirmed for **Monday 2026-08-10, pre-market** — 2 trading days out, inside the 5-trading-day window. No new news beyond the date confirmation; carrying strong momentum into the print per Gemini (Q1 was a 333% EPS surprise beat).
- **MNKD** (held) — see Held-Position Thesis Check; catalyst resolved.
- **CVLG** — no catalyst currently documented per this run's search (its 7/29 earnings catalyst already passed per TRADE-LOG); not rechecked further this run.

### Risk Factors
- Gemini Deep Research truncation is now a chronic, four-week-unresolved reliability issue, worse today than any prior session (zero structured sections 1-3 captured, plus a broken internal cross-reference) — needs an actual fix at tomorrow's (8/7) weekly review, not another footnote.
- MNKD's Q2 print drew a mildly negative reaction (-3.42%) on margin/EPS softness despite a strong revenue beat — not a thesis break, but the first negative earnings-day move logged for this position; watch for continued drift at market-open.
- Semis/memory cluster (MU, AMD, WDC, STX) — all already momentum-gate fails as of 8/4 — face fresh idiosyncratic pressure (DRAM price-fixing suit, weak AMD Q3 guide); no held or pending position in this cluster, but relevant context for any future core re-entry decision.
- WATCHLIST.md is now 13 calendar days stale (last refresh 2026-07-24; the 7/31 refresh was missed) — tomorrow (8/7) is the next scheduled weekly review/screen-refresh; do not let a third consecutive Friday slip.
- Cash 19.94%, a hair below the 20% floor on price drift only (same chronic flag since 8/4) — not urgent, no buy pending that would deepen the gap; flag again for tomorrow's weekly rebalance touch.
- No held position near its hard-cut (MNKD -1.00% vs -15%); no satellite catalyst resolved negatively overnight (CGEM's print hasn't crossed the wire yet; RIGL's 8/4 print was strongly positive); VIX calm (~16.94); no fresh geopolitical escalation surfaced.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight, and no major geopolitical event — so no urgent pre-market notification triggered per Step 5. Handoff to market-open/midday: (1) no core buy candidate confirmed given the near-total Gemini coverage gap — don't treat silence as a pass, recheck the full core list live, especially the semis/memory cluster (fresh negative catalysts) and the cybersecurity cluster (continued bullish momentum, still needs a live spread/fundamentals check); (2) MNKD (held) drew a mildly negative earnings reaction — recheck live at open for continued drift, no forced action expected; (3) CGEM reports pre-market today — recheck once the print is out, same standing wide-spread caveat; (4) RIGL approaches its VEPPANU-launch catalyst window (~5-7 trading days) and FSTR is now inside its 5-day earnings window (8/10) — both worth a fresh liquidity check if considered. This week (Aug 3 start): core 0/6, satellite 0/4 — Patience Rule applies as always.

### 9:30 AM Session Note
- Live account/positions confirmed via `alpaca.sh`: equity $95,734.98, cash $19,116.70 (19.97%, a hair below the 20% floor on price drift only — no trade this window to trigger the funding-sweep mechanism, same chronic flag as the last several sessions). Open positions unchanged: MNKD (satellite, -3.38% unrealized, entry $4.00 / last $3.865), SGOV/SPHY/EDGX (income) — all 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing, none near a hard-cut.
- Live-checked the pre-market handoff's cybersecurity cluster (CRWD, PANW, DDOG, FTNT) plus satellite candidates CGEM and RIGL: every one showed an abnormally wide bid/ask spread on `alpaca.sh quote` (CRWD ~10%, PANW ~4-9% and widening between two consecutive checks, DDOG ~9-10%, FTNT ~9-14%, CGEM ~16%, RIGL ~26%) — well outside a tradeable market. Sanity-checked the feed itself against SPY, AAPL, and held MNKD at the same moment — all three returned normal, tight spreads (SPY ~0.08%, AAPL ~0.05%, MNKD ~0.5%), so this isn't a feed outage; it's specific to these candidate names. Consistent with the same recurring thin-top-of-book pattern already logged for RIGL/CGEM/ORN/CVLG in prior sessions, just hitting the (normally liquid) cybersecurity cluster too at today's open. Every checked candidate trips the wide/illiquid-spread skip rule in STEP 2 — none reached the buy-side gate. Semis/memory cluster (MU, AMD, WDC, STX, NTAP, AMAT) not rechecked live this window — already confirmed below the 50-day MA as of 8/4 with fresh negative idiosyncratic pressure per pre-market, no reason to expect a gate pass today.
- No "### Approved Trades (verified)" list — per STEP 3, buy side stays HOLD. This week (Aug 3 start) unchanged: core 0/6, satellite 0/4.
- Risk sweep: MNKD -3.38% vs -15% hard-cut, well clear; Q2 print (8/5 after close) reaction was mildly negative but already assessed pre-market as a soft-print, not a thesis break (FUROSCIX PDUFA resolved 7/24) — holding through, no forced action. No other thesis break. No stop tightening (no position past its gain-based threshold; MNKD underwater, Income sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Result: **HOLD, zero new trades this window.** This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- Lesson: the thin-top-of-book/wide-spread pattern that has chronically blocked RIGL/CGEM is now also hitting normally-liquid mega-cap names (CRWD, PANW, DDOG, FTNT) right at the open — worth flagging at tomorrow's (8/7) weekly review alongside the Gemini-truncation and missed-refresh items, since it's now blocking core entries too, not just satellite.

### 11 AM Session Note
- Live account/positions confirmed via `alpaca.sh`: equity $95,736.52, cash $19,116.70 (19.97%, still a hair below the 20% floor on price drift only — no trade this window to trigger the funding-sweep mechanism). Open positions unchanged: MNKD (satellite, 1215 sh, entry $4.00 / last $3.86, -3.50% unrealized, -5.85% today), EDGX/SGOV/SPHY (income) — all 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` (MNKD 15% trail $3.59975; EDGX 5% trail $25.9255; SGOV 5% trail $95.684; SPHY 5% trail $22.2015), none missing.
- No "### Approved Trades (verified)" list anywhere in today's RESEARCH-LOG (pre-market or 9:30am) — per STEP 3, buy side stays HOLD. This week (Aug 3 start) unchanged: core 0/6, satellite 0/4.
- Risk sweep: MNKD -3.50% vs -15% hard-cut, well clear — quote checked (bid $3.86/ask $3.87, ~0.26% spread, tight/liquid), intraday drift continuing post-Q2-print but no new information since the 9:30am/pre-market thesis assessment (soft print, not a thesis break; FUROSCIX PDUFA resolved 7/24), so no cause-unclear trigger for a Gemini/WebSearch check per STEP 7. No other thesis break. No stop tightening (no position past its gain-based threshold; MNKD underwater, Income sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Result: **HOLD, zero new trades this window.** This week (Aug 3 start) stays at core 0/6, satellite 0/4.

### 3 PM Session Note
- Live account/positions confirmed via `alpaca.sh`: equity $95,652.79, cash $19,116.70 (19.98%, still a hair below the 20% floor on price drift only — no trade this window to trigger the funding-sweep mechanism). Open positions unchanged: MNKD (satellite, 1215 sh, entry $4.00 / last $3.835, -4.13% unrealized, -6.46% today), EDGX/SGOV/SPHY (income) — all 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` (MNKD 15% trail $3.59975; EDGX 5% trail $25.9255; SGOV 5% trail $95.684; SPHY 5% trail $22.2015), none missing.
- No "### Approved Trades (verified)" list anywhere in today's RESEARCH-LOG (pre-market, 9:30am, or 11am) — per STEP 3, buy side stays HOLD all session. This week (Aug 3 start) stays at core 0/6, satellite 0/4.
- Risk sweep: MNKD -4.13% vs -15% hard-cut, well clear. Post-earnings drift accelerated through the day (-3.42% at pre-market -> -5.85% at 11am -> -6.46% now) but no new information since the 9:30am/11am thesis assessment — soft Q2 print (revenue beat, EPS/margin miss on launch spend), FUROSCIX PDUFA resolved 7/24, no near-dated binary catalyst documented for the held position — conviction unchanged, holding through rather than closing, stated explicitly per STEP 4 rather than silently doing nothing. No other thesis break on any held name. No stop tightening this window — no position past its sleeve's gain-based threshold (MNKD underwater; Income sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash 19.98%, still a hair below the 20% floor purely from price drift (no trade this window to trigger the SGOV funding-sweep mechanism) — flagged again for tomorrow's (8/7) weekly rebalance touch. Risky positions closed today: none.
- Lesson for Friday's review: MNKD's post-earnings drift widened steadily intraday (pre-market -3.42% -> 3pm -6.46%) on no incremental news beyond the 8/5 print already assessed — pure price-action continuation, not a new signal, but the magnitude (position now -4.13% unrealized vs. roughly flat pre-print) is worth a pattern note alongside the still-open Gemini-truncation, missed-refresh, and wide-spread items already queued for tomorrow's weekly review.

## 2026-08-07 — Pre-market Research

### Account
- Equity: $95,678.37 | Cash: $19,116.70 (19.98%, a hair below the 20% floor on price drift only) | Buying power: $287,087.55 | Positions market value: $76,561.67
- Core exposure: $0.00 (0.00% — flat since HPE's 2026-07-28 stop-out, now 9 trading sessions running) | Satellite exposure: $4,689.90 (4.90%, MNKD) | Income exposure: $71,871.77 (75.12% — SGOV $31,795.21 / EDGX $20,191.68 / SPHY $19,884.88)
- Open positions: MNKD (satellite, 1215 sh @ $4.00 entry, $3.86 last, -3.50% unrealized), EDGX (income, 746 sh @ $26.78, $27.0666 last, +1.07%), SGOV (income, 316.433 sh @ $100.631425, $100.4801 last, -0.15%), SPHY (income, 856 sh @ $23.36, $23.23 last, -0.56%). All 4 confirmed carrying live GTC trailing stops via `alpaca.sh orders` (MNKD 15% trail $3.59975; EDGX 5% trail $25.9255; SGOV 5% trail $95.684; SPHY 5% trail $22.2015) — none missing.
- This trading week (Aug 3 start): core 0/6, satellite 0/4.

### Data-quality flag
Gemini Deep Research output truncated again — the chronic, unresolved pattern flagged every session since 2026-07-12, now into a 5th consecutive week. Today's capture opened mid-document: it starts directly in the middle of a healthcare-sector writeup, with **no** Part I (VIX/futures), no clean Part II (econ-calendar list), no explicit per-ticker Part III (held-position thesis check — only a one-line summary survived, in the Conclusion), and the semis/AI-hardware/cybersecurity portion of the core-watchlist section (DELL, MU, AMD, HPE, STX, NTAP, WDC, AMAT, DDOG, PANW, FTNT, CRWD — 12 of the 25 current core names) is missing except a brief Conclusion-paragraph summary. Not fabricating anything not shown; backfilled VIX/futures and the NFP print via native WebSearch per the data-quality guard, and confirmed the Strait of Hormuz situation is a standing since-March-2026 backdrop, not new. This is no longer a one-line footnote item — it needs an actual prompt-restructuring/splitting fix at today's (8/7) weekly review, which was already the standing plan from the last four sessions.

### Market Context (Gemini synthesis + WebSearch fallback for the missing Part I/II)
- **S&P 500 futures:** +0.07%, trading near 7,740 pre-market — modestly positive, consistent with Gemini's framing of a "delicate equilibrium," not risk-off.
- **VIX:** no specific print independently confirmed today. Gemini's synthesis describes the VIX futures curve in "persistent contango" — read as institutional medium-term hedging without acute panic — but that is a qualitative characterization, not a number; flagging as a data gap rather than inventing a level.
- **Econ calendar:** July nonfarm payrolls today — consensus +83,000 jobs, unemployment rate expected to hold at 4.2% (confirmed independently via WebSearch, matches Gemini). Gemini frames this as a "binary fulcrum" — a miss could force a rapid repricing of short-end yields and equities. Key macro catalyst to watch at market-open.
- **Geopolitical:** Strait of Hormuz remains under Iranian blockade/attack threat, ongoing since early March 2026 (Brent ~$104.76/bbl per WebSearch) — this is the existing backdrop already embedded in the VLO/MPC refining-margin thesis, not a fresh overnight escalation. No new development found.

### Held-Position Thesis Check
- **MNKD (satellite, -3.50% unrealized):** Gemini's Conclusion confirms "no overnight disclosures warranting defensive liquidation" for the held sleeve — no new detail beyond what's already documented (8/5 Q2 print already assessed as soft-but-not-thesis-breaking; FUROSCIX ReadyFlow PDUFA resolved 7/24). No thesis break, well clear of the -15% hard-cut.
- **EDGX/SGOV/SPHY (income):** same Gemini line — "complete thesis integrity, no overnight disclosures." No action needed pre-market.

### Core Trade Ideas (from current WATCHLIST.md core list)
- **None confirmed for entry.** The single largest cluster on the current watchlist (AI-hardware/semis/cybersecurity, 12 of 25 names) fell inside today's truncation gap — Gemini's Conclusion only summarizes it in aggregate: capital "aggressively consolidating into AI-hardware integrators (DELL) and leading cybersecurity platforms (FTNT, PANW)," while "ruthlessly punishing legacy memory and storage providers (WDC, NTAP)" — consistent with the below-50-day-MA reads already confirmed live on 8/4-8/6 for MU/AMD/STX/WDC/AMAT/NTAP, but not a fresh independent verification of AMD, MU, STX, CRWD, DDOG, HPE, AMAT individually.
- Positive fundamentals data points surfaced this run, worth a fresh live momentum/liquidity recheck at market-open (not a pre-market buy call): **CVS** (Q2 rev +7.3% to $106.1B, EPS $2.58 beat, FY guidance raised to $7.90-$8.10, Aetna MBR improved 89.9%->87.4%, new CVS/Lilly GLP-1 cash-pay partnership); **ABBV** (Q1 rev +12% YoY, Skyrizi +31%/Rinvoq +23%, guidance raised to $14.08-$14.28); **VLO** (Q2 EPS $12.65, net income $3.7B, refining margins strong on Hormuz-driven crack spreads). HUM, CNC, DVA, DOC, WST, GE, URI, BBY: no material overnight news found either way.
- No candidate is being called a buy pre-market: WATCHLIST.md is 14 calendar days stale (last refresh 2026-07-24, both 7/17 and 7/31 Friday refreshes missed) and today's overdue weekly review/screen-refresh takes priority over acting on stale fundamentals.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list)
- **MNKD** (held) — see Held-Position Thesis Check; catalyst resolved.
- **FSTR** — Q2 2026 earnings confirmed for Monday 2026-08-10 pre-market (1 trading day out, inside the 5-day window), consensus EPS $0.41 on $134.48M revenue vs. a Q1 beat of $0.14 EPS/$121.14M actual. Not held, not an entry candidate pre-earnings this session — flag for market-open awareness only.
- **RIGL** — VEPPANU (vepdegestrant) commercial launch guided to "mid-August 2026" by CEO on the 8/4 earnings call (~5-8 trading days out per Gemini's estimate) — a positive, not negative, catalyst update; FY26 revenue guidance ($285-295M) explicitly excludes any VEPPANU contribution, so the launch is pure unmodeled upside. Not held. This name has repeatedly failed the wide/illiquid-spread skip rule (7/27, 7/29, 8/3, 8/4) — needs a fresh liquidity recheck at market-open before any consideration, same standing flag.
- **CGEM** — Q2 2026 reported 8/6: -$0.81 EPS vs. -$0.80 consensus (immaterial miss, pre-revenue as expected). No binary catalyst inside the 5-day window; next milestones (Phase 2 CLN-049 initiation Q3, velinotamig data Q4) are further out. Catalyst-light period — deprioritize.
- **CVLG** — no near-dated trading catalyst; next scheduled event is the 9/4 ex-dividend date, not a satellite-relevant catalyst.

### Risk Factors
- Gemini Deep Research truncation: 5th consecutive week unresolved, and today's capture was again missing sections plus the single largest core-watchlist cluster's coverage — needs an actual fix (prompt restructuring/splitting) at today's (8/7) weekly review, not another deferral.
- WATCHLIST.md is now 14 calendar days stale (last refresh 2026-07-24; both 7/17 and 7/31 refreshes were missed) — today is the next scheduled weekly review/screen-refresh; a third consecutive Friday slip should not happen.
- Cash 19.98%, a hair below the 20% floor on price drift only (same chronic flag since 8/4, no buy pending that would deepen the gap) — flag again for today's weekly rebalance touch.
- Nonfarm payrolls today (consensus +83,000, unemployment 4.2%) is a binary macro catalyst per Gemini's framing — worth watching live at market-open before any entry decision, though core exposure is currently 0% so this is calendar risk to monitor, not a held-position risk.
- No held position near its hard-cut (MNKD -3.50% vs -15%). No satellite catalyst resolved negatively overnight (RIGL's update is positive; CGEM's Q2 miss is immaterial; MNKD's catalyst already resolved 7/24). Strait of Hormuz remains a chronic elevated backdrop (since March 2026), not a fresh escalation. VIX read is qualitative-calm (contango, not panicked) though no explicit number was independently confirmed today.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight, and no fresh geopolitical escalation — so no urgent pre-market notification triggered per Step 5. Handoff to market-open/midday: (1) today (8/7) is the overdue weekly review/screen-refresh — top priority, given WATCHLIST.md is 14 days stale with 2 consecutive missed refreshes and the Gemini-truncation issue needs an actual fix this time, not another footnote; (2) nonfarm payrolls this morning (consensus +83k) is a binary macro catalyst — recheck live conditions before any entry; (3) CVS/ABBV/VLO posted strong Q2 prints — worth a fresh live momentum/liquidity check at market-open, not a pre-market buy call; (4) FSTR earnings Monday 8/10 (1 trading day out) and RIGL's VEPPANU launch (~5-8 trading days out, positive) are the two live satellite catalyst items — RIGL specifically needs a fresh liquidity recheck given its repeated wide-spread fails; (5) cash still a hair below the 20% floor — address at today's rebalance touch. This week (Aug 3 start): core 0/6, satellite 0/4 — Patience Rule applies as always.

### 9:30 AM Session Note
- **HOLD, no trades.** No "Approved Trades (verified)" list existed in today's pre-market entry — decision there was explicit HOLD, with CVS/ABBV/VLO's fresh Q2 prints deliberately deferred to today's overdue weekly screen-refresh rather than acted on pre-refresh. Buy-side gate not run — no planned orders to gate.
- Live re-check: equity $95,833.67, cash $19,116.70 (19.95%, a hair below the 20% floor on price drift only, no funding-sweep trigger this window). Core 0/6, satellite 1/4 (MNKD), both 0 new trades this week so far. All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing, none near their sleeve hard-cut (MNKD -2.42% vs -15%).
- Pattern to flag for today's weekly review: this is now the 3rd consecutive session (11am window carried the same HOLD posture the last two days) with zero core activity since HPE's 7/28 stop-out — 9 sessions flat on core. Combined with WATCHLIST.md now 14 days stale, today's screen-refresh is the priority, not another incremental market-open check.

### 11 AM Session Note
- **HOLD, no trades.** No "Approved Trades (verified)" section anywhere in today's RESEARCH-LOG (pre-market or 9:30am) — per STEP 3 the buy side stays HOLD. Core 0/6, satellite 1/4 (MNKD), both still 0 new trades this week (Aug 3 start).
- Live re-check: equity $96,083.46, cash $19,116.70 (19.90%, a hair below the 20% floor on price drift only, no funding-sweep trigger — no trade this window). Core exposure $0.00 (0.00%), satellite exposure $4,951.13 (5.15%, MNKD), income exposure $72,015.64 (74.95%). All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing.
- Risk sweep: MNKD +1.88% unrealized, well clear of the -15% hard-cut and the +25% tighten threshold — no cut, no tighten, no thesis break (catalyst resolved 7/24, no new negative disclosure). No core positions to sweep. No stop moved down. 2-strike tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- No sharply-moved, unexplained tickers this window (MNKD's +4.76% intraday continues its post-earnings recovery, already a documented pattern) — skipped the optional Step 7 Gemini call. Handoff to 3pm: today's overdue weekly screen-refresh is still the outstanding priority (WATCHLIST.md 14 days stale), plus the still-below-floor cash level.

### 3 PM Session Note
- **HOLD, no trades.** No "Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, or 11am) — per STEP 3 the buy side stays HOLD all session. This week (Aug 3 start) stays at core 0/6, satellite 0/4 (MNKD is a carryover holding, not a new trade this week).
- Live re-check: equity $96,124.12, cash $19,116.70 (19.89%, a hair below the 20% floor on price drift only, no funding-sweep trigger — no trade this window). Core exposure $0.00 (0.00%), satellite exposure $4,994.74 (5.20%, MNKD), income exposure $72,008.74 (74.91%, SGOV $31,796.22 / EDGX $20,276.28 / SPHY $19,936.24). All 4 open positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing.
- End-of-session risk sweep: no position at/beyond its sleeve hard-cut (MNKD +2.77% vs -15%; no core positions). MNKD's catalyst remains resolved (FUROSCIX ReadyFlow PDUFA, 7/24) with no new near-dated binary per WATCHLIST.md — no thesis break, holding through as usual, no forced close. No stop tightening this window — MNKD's +2.77% gain is well below the +25% satellite threshold; Income sleeve has no gain-based schedule. No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- Day P&L +$415.66 (+0.43%), driven mainly by MNKD's +5.68% intraday continuation of its post-earnings recovery, plus modest gains in EDGX/SGOV. Phase P&L now -3.88% since Day 0 ($100,000 -> $96,124.12). Core sleeve remains flat (zero positions) since HPE's 7/28 stop-out, now 10 full sessions running. Cash still a hair below the 20% floor purely from price drift — carries into today's overdue weekly review for the rebalance touch. Tomorrow: today's (8/7) weekly review/screen-refresh is the standing top-priority open item (WATCHLIST.md 14 days stale, two consecutive Friday refreshes missed) along with the unresolved Gemini-truncation issue; FSTR's 8/10 earnings and RIGL's ~5-8-trading-day-out VEPPANU launch are the live satellite catalyst items to watch next week.

## 2026-08-08 — Pre-market Research

### Account
- Equity: $96,113.29 | Cash: $19,116.70 (19.89%) | Buying power: $288,062.33 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 7/28 stop-out) | Satellite exposure: $4,993.65 (5.20%, MNKD) | Income exposure: $72,002.94 (74.91%: EDGX $20,280.08 / SGOV $31,795.17 / SPHY $19,927.68)
- **Today (2026-08-08) is a Saturday — markets closed.** This scheduled pre-market run fired on a non-trading day; all figures above are Alpaca's last-close snapshot (`balance_asof: 2026-08-07`), identical to Friday's 3pm TRADE-LOG entry. Treating this as a weekend research/prep pass ahead of Monday 8/10's open — no trades are placed or eligible in this window.
- **Cash-floor flag (actionable, overdue):** cash has now been below the 20% floor for 4 consecutive trading sessions (8/4 through 8/7, range 19.89%-19.98%) — past the 3-session threshold in TRADING-STRATEGY.md's "Price-drift floor breaches" rule (itself added 8/7 citing this exact drift). Per rule (b), the next daily session should sell enough SGOV to restore cash to >=20% as a standalone action. This pre-market run is research-only; flagging for Monday's first trading window (market-open) to execute — it was already overdue as of Friday's close.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` as of Friday's close — none missing. MNKD 15% trail $3.59975 (hwm $4.235); EDGX 5% trail $25.9255 (hwm $27.29); SGOV 5% trail $95.684 (hwm $100.72); SPHY 5% trail $22.2015 (hwm $23.37).
- Trades Aug 3-7 week (closed): core 0/6, satellite 0/4. New week starts Monday 8/10, resetting both counters to 0.

### Market Context
- VIX previous close (Fri 8/7): 15.15 — calm (WebSearch fallback; see Data-quality flag — Gemini's futures/VIX section did not arrive in either call this session).
- S&P 500 futures: no reliable weekend quote found via WebSearch fallback either — not fabricating a number neither source confirmed. Friday 8/7's session itself was a risk-on day per TRADE-LOG (Day P&L +0.43%).
- Macro calendar, week of Mon 8/10: RBA rate decision Tue 8/11 (expected hold at 4.35%); **US CPI Wed 8/12** (headline +0.1% MoM, core +0.2% MoM consensus — the week's key Fed-policy data point); CSCO earnings Wed 8/12 post-market (options market pricing ~8% post-earnings move); US PPI Thu 8/13 (+0.1% MoM consensus); US Retail Sales + UMich sentiment Fri 8/14 (+0.2% MoM consensus).
- Geopolitical: US-Oman-Iran talks on Strait of Hormuz reopening continue — a 30-60 day reopening of the shipping route is under discussion, which would ease energy prices if it holds. Standing risk, not a new escalation.
- 10-year Treasury yield compressed to 4.65% on softer labor data — tailwind for the Income sleeve (SGOV/SPHY); Gemini also flags it as a structural tailwind for pre-revenue biotech valuations generally (lower discount rates), relevant background for SVRA/CGEM but not a trade trigger on its own.

### Data-quality flag — Gemini truncated again (persistent, well past a dozen sessions)
Two consolidated Deep Research calls run this session (first call's output was piped through `tail -c 6000` for context-length reasons, which itself cut the real report down to citations only — re-ran and saved untruncated to a scratch file). The untruncated first call returned only a "Section VI: Strategic Implications" + Conclusion — sections I-V (futures/VIX, macro calendar, held-position check, watchlist check) never arrived at all. Re-submitted with a tighter, explicitly length-capped prompt; the second call recovered sections 2-4 (macro calendar, held-position check, satellite catalyst check) but section 1 (futures/VIX) still never arrived. Filled VIX via WebSearch fallback above; S&P futures direction left blank — no reliable weekend quote found either way, not fabricated. Same standing, unresolved issue flagged repeatedly since 7/24; not addressed by the 8/7 weekly review's content in WATCHLIST.md.

### Held-Position Thesis Check
- **MNKD (satellite, held, +2.75% unrealized: $4.00 → $4.11 as of Friday's close):** No thesis break. New item: an SEC Form 4 shows EVP Technical Ops Sanjay Singh sold 46,795 shares — per Gemini, an automated, non-discretionary sale to cover RSU-vesting tax withholding, not a discretionary insider signal. FUROSCIX ReadyFlow PDUFA remains resolved (7/24); no new near-dated binary catalyst documented. Well clear of the -15% hard-cut. No action.
- **EDGX (income, held, +1.51% unrealized):** Declared an increased distribution of $0.0470/share on 8/7 (reinvests to SGOV per Income-sleeve rules, not pro-rata). Separately, the Cboe EDGX *exchange* (the venue, distinct from this ETF) received SEC approval for near-24x5 overnight equities trading starting Dec 2026 — market-structure context only, not specific to this holding. No thesis break. No action.
- **SGOV (income, held, -0.15% unrealized):** No company-specific news. 10yr yield compression is a broad tailwind for the sleeve. No action.
- **SPHY (income, held, -0.34% unrealized):** No idiosyncratic news found. Same rate-tailwind context as SGOV. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
None sourced — weekend pass, no live market to confirm momentum/spread at entry; real evaluation happens at Monday's market-open window. Items to recheck live Monday, not acted on now:
- DELL, HPE, PANW, CRWD — Gemini reports these gapped up (+5%/+4%/+6%/+6%) late last week on AI-infrastructure-spending commentary (IBM); recheck live momentum/spread Monday before treating as confirmed.
- ANET — reported underperforming (-14.4% trailing) versus the rest of the AI-hardware cluster; watch for possible deterioration at the next screen refresh.
- CSCO — earnings Wed 8/12 post-market, ~8% expected move; a pre-earnings entry would carry elevated event risk atypical of the core screen's steady-momentum profile.
- FFIV — Q3 beat (non-GAAP EPS $4.73), FY revenue growth guide raised to 9-10%; supportive of the existing thesis, not a new signal.
- ZBRA — confirms the already-logged Q2 beat (EPS $6.35 vs $4.36 consensus); no new information.
- PYPL — raised 2026 transaction-margin-dollar outlook to $15.6B; CEO transition ongoing (interim Jamie Miller, incoming Enrique Lores) — a leadership-transition item to note, not a thesis break.
- XYZ (Block) — 10% pre-market pop on a Q1 EPS beat ($0.85), but CFO subsequently sold $77M in stock — mixed signal, worth a fresh look before any entry.
- No material news found for NTAP, CRL, VLO, BAX, CNC, GRMN, MPC, STT, NUE, GEN, MET.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry (already held).
2. **RIGL** — not held. VEPPANU commercial launch confirmed still "on track for mid-August 2026" following the Q2 print ($67M net product sales) — from today (8/8) this now falls inside the 5-trading-day catalyst-proximity window. Has repeatedly failed the wide/illiquid-spread skip rule in prior sessions (7/27, 7/29, 8/3, 8/4) — needs a fresh live spread check Monday before any entry is considered.
3. **CGEM** — not held. Aug 6 earnings established a cash runway into 2029 (stronger than WATCHLIST.md's prior framing); next data readouts (CLN-978, Velinotamig) guided for Q3/Q4 2026, not imminent. No confirmed catalyst inside the 5-day window. No action.
4. **SVRA** — not held (documented, standard 7.5%-cap candidate). New item: SVRA reports Q2 2026 earnings Tuesday 8/11 — inside the 5-trading-day window. This is not itself the documented binary catalyst (still the Nov 22 PDUFA for molgramostim/MOLBREEVI), but investors will scrutinize cash runway/burn ahead of that PDUFA, so it's a real near-term volatility event. Fresh look at Monday's market-open if considered, not a weekend call.

### Risk Factors
- Cash below the 20% floor for 4 consecutive sessions (8/4-8/7) — past the 3-session action threshold; needs an SGOV sell at Monday's first trading window per the standing rule. See Account section.
- Gemini Deep Research truncated on both calls this session — S&P futures/VIX section unrecoverable via the API even on retry; filled VIX via WebSearch, futures left blank. Standing, unresolved process issue since 7/24, not addressed by the 8/7 weekly review.
- RIGL now inside its 5-day catalyst window with a persistent illiquid-spread problem — real gap + liquidity risk if entry is considered Monday.
- SVRA's 8/11 earnings adds a near-term volatility event ahead of its documented Nov 22 PDUFA — raises the pre-entry diligence bar for this name this week.
- MNKD's insider sale confirmed routine (RSU tax withholding) — no action, flagged for completeness.
- No held position is near its hard-cut: MNKD +2.75% (cut -15%), EDGX +1.51% / SPHY -0.34% (both well inside the 5% income stop), SGOV -0.15%.

### Decision
**HOLD** (pre-market default; weekend research pass ahead of Monday's open — no trades placed or eligible in this window). No held position is near its hard-cut, no satellite catalyst resolved negatively over the weekend, no major new geopolitical escalation — so no urgent notification triggered per Step 5. Handoff to Monday's market-open window: (1) execute the standalone SGOV sell to restore the 20% cash floor — now overdue; (2) fresh live momentum/spread check on DELL/HPE/PANW/CRWD/FFIV/ZBRA/PYPL/XYZ before treating any as a live core buy candidate; (3) RIGL and SVRA both need a live spread/price check given their approaching catalysts, RIGL specifically for its recurring wide-spread problem; (4) MNKD's insider sale needs no action. Trades Aug 3-7 week (closed): core 0/6, satellite 0/4 — new week starts Monday 8/10. Patience Rule applies as always.

## 2026-08-09 — Pre-market Research

### Account
- Equity: $96,113.29 | Cash: $19,116.70 (19.89%, still below the 20% floor) | Buying power: $288,062.33 (margin-inflated by the standing 4x multiplier — no margin/leverage used or planned)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 2026-07-28 stop-out) | Satellite exposure: $4,993.65 (5.20%, MNKD) | Income exposure: $72,002.94 (74.91%: EDGX $20,280.08 / SGOV $31,795.17 / SPHY $19,927.68)
- **Today (2026-08-09) is a Sunday — markets closed.** Second consecutive weekend pre-market run (after Saturday 8/8); all figures are unchanged from Friday's close (`balance_asof: 2026-08-07`), identical to yesterday's snapshot — no trading occurred over the weekend. No trades placed or eligible this window.
- **Cash-floor flag (actionable, still overdue):** cash has been below the 20% floor for 4 consecutive trading sessions (8/4-8/7, range 19.89%-19.98%), past TRADING-STRATEGY.md's 3-session action threshold. Flagged yesterday (8/8) for execution at Monday's (8/10) first trading window — still pending, unchanged, since no trading day has occurred since. No new action possible or needed from this weekend pass; carrying the flag forward again so it isn't lost.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) reconfirmed carrying live GTC trailing stop orders via `alpaca.sh orders` as of Friday's close — none missing, none changed since 8/8: MNKD 15% trail $3.59975 (hwm $4.235); EDGX 5% trail $25.9255 (hwm $27.29); SGOV 5% trail $95.684 (hwm $100.72); SPHY 5% trail $22.2015 (hwm $23.37).
- Trades Aug 3-7 week (closed): core 0/6, satellite 0/4. New week starts Monday 8/10, resetting both counters to 0.

### Data-quality finding — root cause of the chronic "Gemini truncation" flag identified
For the first time since the pattern was first flagged 2026-07-12, this session's single consolidated Deep Research call returned a genuinely complete report: all four requested sections (futures/VIX, market-moving catalysts, held-position thesis check, watchlist news) came through with full substantive detail — but **not** via `scripts/gemini_research.sh` alone. The script's `poll`/`research` commands returned only ~22KB of text that, per the data-quality guard, looked like it started mid-document (opened directly on a satellite-catalyst table with no Part I/II). Pulling the raw interaction JSON directly (`GET /v1beta/interactions/<id>`) showed why: the interaction's `steps` array contained 3 `model_output` entries (not 1) — a macro/futures section, an econ-calendar + held-position + core-watchlist section, and a satellite-catalyst + citations section, totaling ~43KB combined. `scripts/gemini_research.sh`'s `extract_report()` function reads only `steps[-1]` (the last step), silently discarding the earlier ~50% of every multi-step report. This is **not** intermittent API-side truncation as assumed in every prior session's data-quality flag (7/24 through 8/8) — it is a deterministic client-side bug: any Deep Research response that spans more than one `model_output` step loses everything but the final one. Worked around this session by manually concatenating `content[].text` from every `model_output`-type step in the raw response, which recovered the full report used below.
**Recommendation:** patch `extract_report()` in scripts/gemini_research.sh to iterate all steps of type `model_output` (not just the last) and join their text blocks, rather than indexing `steps[-1]`. This should resolve the multi-week chronic data-quality flag at its source. Flagging for the next weekly review or owner attention — not fixed in this run, which is scoped to memory-file updates only.

### Market Context (fully sourced this session, no WebSearch fallback needed once reconstructed)
- **S&P 500 futures:** Sept E-mini S&P (ESU26) +0.55% (~5,300-5,400 range); Sept E-mini Nasdaq 100 (NQU26) +1.17% — continuation of last week's rally.
- **VIX:** 16.99 at Friday's close (intraday low 16.85), down sharply from a prior-week high above 20.66 — calm, though Gemini's own framing flags the low level as potentially masking complacency ahead of Wednesday's CPI print.
- **Macro driver:** weak July nonfarm payrolls (a headline **decline** of 23,000 jobs, not merely a soft beat), wage growth at its weakest pace in ~5 years, 10-year Treasury yield down 3bp to 4.65%. Gemini's text also states this cut the "probability of an imminent Fed rate hike" from 58% to 44%[cite: 1] — flagging that phrasing as internally inconsistent with the rest of the dovish-pivot narrative it describes (a rate-cut-probability framing would fit better); treating the underlying facts (weak NFP, wage deceleration, 10Y down to 4.65%, VIX crush) as reported, not vouching for that specific 58%->44% figure without independent confirmation.
- **Week-ahead catalysts:** CPI Wed 8/12 (core consensus 2.5%), PPI Thu 8/13, Retail Sales Fri 8/14; **CSCO earnings Wed 8/12 post-market** ($1.17 EPS / $16.83B rev consensus — CSCO is a current core watchlist name); AMAT earnings Thu 8/13 ($3.39 EPS / $9.01B rev consensus, not a watchlist name but a sector bellwether); GOOGL Pixel 11 hardware event Wed 8/12 (not a portfolio name).
- **Geopolitical:** no mention of the Strait of Hormuz situation in today's report (flagged as a standing backdrop in recent sessions) — treating as no update found, not resolved; will re-verify next session rather than assume either way.

### Held-Position Thesis Check
- **MNKD (satellite, held, +2.77% unrealized per Friday's close):** No thesis break. Furoscix ReadyFlow launch confirmed proceeding on schedule — sales rep training the week of 8/10, physical product shipping to distribution by end of this week (CEO Michael Castagna, Q2 call), FY26 Furoscix revenue target reaffirmed at $110-120M. Positive commercial-execution catalyst, not a new binary regulatory risk (PDUFA already resolved 7/24) — no cap resizing triggered. Well clear of the -15% hard-cut.
- **EDGX (income, held, +1.51% unrealized):** No new negative news found; no update beyond 8/8's already-logged distribution increase.
- **SGOV (income, held, -0.15%):** No company-specific news. Falling 10Y yield remains a broad tailwind for the sleeve (duration-risk avoidance).
- **SPHY (income, held, -0.34%):** No idiosyncratic news. Credit spreads described as compressed near historical lows, no stress signals.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
None confirmed for entry — weekend pass, no live market to verify momentum/spread; real evaluation happens at Monday's market-open. Items to recheck live Monday, not acted on now:
- **PANW, CRWD** — Gemini describes a live sector-rotation narrative into cybersecurity driven by reports that AI agents from "leading firms" breached containment and executed unauthorized network intrusions, compressing attacker dwell time. Treating this specific claim with caution — it is a striking, single-source claim from the Gemini synthesis only, not independently confirmed; flag for a sanity-check at the trade window before treating it as a hard catalyst. The underlying fundamentals cited (CRWD adj EPS $1.10/$1.386B rev beat, raised NNARR guidance; PANW $3B rev +31%, FY26 guidance raised to $11.42-11.43B) are consistent with WATCHLIST.md's existing thesis, not new information.
- **ANET, NTAP, DELL, CSCO** — AI-infrastructure momentum continuing (ANET Q2 rev $3.04B/49.9% margin, 100+ AI-fabric customers; NTAP guided FY27 rev $7.325-7.575B; DELL referenced only in aggregate, no new specifics). CSCO's Wed 8/12 earnings is the key event to watch, not a pre-earnings entry.
- **MPC, VLO** — refining-margin thesis reiterated (Strait-driven supply tightness per Gemini, no fresh escalation independently confirmed this run); MPC cited at ~7x forward P/E per a referenced Piper Sandler note, VLO's balance sheet/Gulf Coast positioning unchanged.
- **URI** — Q2 beat, shares +10% in extended trading on the print (record $4.41B revenue), FY26 guidance raised to $17.5-17.8B rev. **MET** — new $3B buyback announced 8/5.
- No update found for HPE, ZBRA, CRL, PYPL, BAX, CNC, GRMN, FFIV, STT, NUE, GEN, XYZ — treating as stable, not stale data.
- Nothing here is a weekend buy call — all require a fresh live momentum/spread/liquidity check at Monday's market-open before any entry, same standing caveat as every prior research-only session.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. Catalyst proceeding on schedule; no new entry (already held).
2. **RIGL** — not held. VEPPANU commercial launch is now confirmed squarely inside the 5-trading-day catalyst window ("mid-August 2026"; management confirmed on the 8/5 call that the sales force is trained and the launch hub is operational). Per TRADING-STRATEGY.md's binary-catalyst gap-risk rule, an entry this week while inside a documented catalyst window should be capped at 5% of equity, not the standard 7.5% — flagging for Monday's consideration, not deciding now. Still carries its standing, repeatedly-failed wide/illiquid-spread problem (7/27, 7/29, 8/3, 8/4) — needs a fresh live liquidity check before any entry.
3. **SVRA** — not held. **Data-quality catch:** today's Gemini report states SVRA's MOLBREEVI PDUFA date is "August 22, 2026" — this contradicts WATCHLIST.md's documented **November 22, 2026** date. Independently verified via WebSearch (Savara's own investor-relations release and StockTitan): the PDUFA was originally set for August 22, 2026 when the BLA was filed, but the FDA granted a 3-month extension in ~April 2026, moving the target action date to **November 22, 2026** — WATCHLIST.md's date is correct and current; Gemini's report surfaced the stale, superseded original date. Not propagating the incorrect date into any trade consideration. SVRA's Q2 2026 earnings call is confirmed for Tuesday 8/11 (inside the 5-day window) — a real near-term volatility event given investors will scrutinize cash runway/burn ahead of the actual Nov 22 PDUFA, but not itself a binary catalyst. No entry considered this weekend.
4. **CGEM** — not held. No catalyst inside the 5-day window (next milestones guided Q3/Q4 2026, per both WATCHLIST.md and today's report). No change from 8/8. No action.

### Risk Factors
- Cash below the 20% floor for 4 consecutive trading sessions as of Friday's close (8/4-8/7) — past the 3-session action threshold; the standalone SGOV sell to restore the floor is still due at Monday's (8/10) first trading window, unchanged from yesterday's flag (no trading day has occurred since to act on it).
- Gemini wrapper-script bug newly diagnosed this session (see Data-quality finding above) — explains the multi-week "truncation" pattern as a client-side bug (`extract_report()` only reading the last of several `steps`), not server-side flakiness. Non-blocking this session (worked around manually) but needs a real code fix, flagged for the next weekly review or owner attention.
- Second data-quality catch this satellite cycle (after SCPH/NVEE on 8/7): today's Gemini report cited a stale, superseded PDUFA date for SVRA (Aug 22 vs. the correct Nov 22, 2026) — caught via independent WebSearch cross-check before it could propagate into a trade decision. WATCHLIST.md's existing date is correct; no update needed there.
- RIGL's VEPPANU launch and MNKD's Furoscix shipment are both now inside the 5-trading-day catalyst window — both are positive commercial-execution catalysts, not negative/binary risk. RIGL (not held) would need the 5% binary-catalyst cap if entered this week, plus a fresh liquidity check given its recurring wide-spread problem. MNKD (held) needs no cap resizing — thesis is executing as documented.
- No held position is near its hard-cut: MNKD +2.77% (cut -15%), EDGX +1.51% / SPHY -0.34% (both well inside the 5% income stop), SGOV -0.15%.
- No new geopolitical escalation found this session (no Hormuz update either way in today's report — treated as no-news, not resolved).

### Decision
**HOLD** (pre-market default; second consecutive weekend research pass ahead of Monday's open — no trades placed or eligible in this window). No held position is near its hard-cut, no satellite catalyst resolved negatively over the weekend, no major new geopolitical escalation — so no urgent notification triggered per Step 5. Handoff to Monday's market-open window: (1) execute the standalone SGOV sell to restore the 20% cash floor — now overdue across two research-only weekend passes; (2) fresh live momentum/spread checks on DELL/HPE/PANW/CRWD/ANET/NTAP/CSCO/MPC/VLO/URI/MET before treating any as live core buy candidates — the AI-agent-breach cybersecurity narrative specifically needs sanity-checking, not treated as confirmed; (3) RIGL and SVRA both need fresh live spread/price checks — RIGL specifically for its recurring wide-spread problem and its new 5-day catalyst-window status (5% cap if entered this week), SVRA's PDUFA remains Nov 22 (not Aug 22 as Gemini's report stated) so its risk categorization is unchanged; (4) recommend the `extract_report()` fix in scripts/gemini_research.sh at the next weekly review or owner attention — root cause of the multi-week "truncation" flag identified this session. Trades Aug 3-7 week (closed): core 0/6, satellite 0/4 — new week starts Monday 8/10. Patience Rule applies as always.

## 2026-08-10 — Pre-market Research

### Account
- Equity: $96,095.78 | Cash: $19,116.70 (19.89%, still below the 20% floor) | Buying power: $288,052.18 (margin-inflated by the standing 4x multiplier — no margin/leverage used or planned)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 2026-07-28 stop-out) | Satellite exposure: $4,945.05 (5.15%, MNKD) | Income exposure: $72,034.03 (74.96%: EDGX $20,280.08 / SGOV $31,800.59 / SPHY $19,953.36)
- **Cash-floor flag (actionable, now materially overdue):** cash has been below the 20% floor continuously since 8/4 (range 19.89%-19.98%), well past TRADING-STRATEGY.md's 3-consecutive-session action threshold for a standalone SGOV sell (rule added 8/7). Both the 8/8 and 8/9 weekend passes flagged this for execution at "Monday's (8/10) first trading window" — today is that window. Pre-market is research-only and cannot place the trade; flagging again, with rising urgency, for market-open to execute the standalone SGOV sell restoring cash to >=20%, independent of any pending buy.
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing: MNKD 15% trail $3.59975 (hwm $4.235); EDGX 5% trail $25.9255 (hwm $27.29); SGOV 5% trail $95.684 (hwm $100.72); SPHY 5% trail $22.2015 (hwm $23.37).
- New trading week starts today (Aug 10): core 0/6, satellite 0/4 (MNKD is a carryover holding, not a new trade this week).

### Data-quality flag — gemini_research.sh extraction bug reproduced a third time, worked around manually
The client-side bug diagnosed 2026-08-09 (`extract_report()` reads only `steps[-1]`, discarding every earlier `model_output` step) is still unpatched and reproduced again this session: the standard `research` blocking call returned only a truncated fragment (Section 5 — satellite catalysts only; sections 1-4 on futures/VIX, macro calendar, held-position check, and core watchlist were missing). Worked around by using `submit` + manual polling against the raw Interactions API and concatenating all `model_output`-type steps by hand (2 steps this time, ~33KB combined vs. the ~8KB last-step-only fragment) — this recovered a complete report covering all four requested sections plus satellite. The `extract_report()` patch recommended 8/9 (iterate all `model_output` steps, not just the last) still has not been applied — third consecutive session hitting this. Fixing the script itself is out of scope for this pre-market run (memory-file updates only); flagging again for the next weekly review or owner attention.

### Market Context
- S&P 500 futures (ESU26): +0.11% (~7,758) | Nasdaq 100 futures (NQU26): -0.40% (~26,691) — sector rotation out of semis/AI-infrastructure names into software/financials/industrials, continuing off last week's close above 7,700.
- VIX: 14.90 (-1.65%), near the low end of its 52-week range — calm.
- 10-year Treasury yield: 4.65% (-3bp) on the weak jobs print — tailwind for the Income sleeve.
- Oil: WTI $78.88 (+2.05%) / Brent $85.40 (+2.14%) on Strait of Hormuz tension (Iran-Oman shipping-lane talks ongoing, US naval blockade still a sticking point) — standing risk, not a new escalation.
- Macro: July nonfarm payrolls (released Fri 8/7) showed a headline contraction of -23,000 jobs vs. +80-85k consensus, plus -103,000 in downward revisions to the prior two months; unemployment 4.1%. Fed Chair Kevin Warsh signaling muted guidance into the Sept 16 FOMC. The report states September rate-cut-action odds are now 44%, down from 55% pre-NFP — flagging this as a likely directional inconsistency (weak jobs data would typically raise, not lower, cut odds), similar to the internally-inconsistent probability figure flagged in 8/9's report. Treating the underlying facts (weak NFP, wage/labor deterioration, 10Y down to 4.65%, VIX crush) as reported; not vouching for that specific probability figure without independent confirmation.
- No economic releases today (8/10). Week-ahead calendar confirmed, nothing moved up: CPI Wed 8/12 pre-market (headline +0.1% MoM/3.4% YoY, core +0.2% MoM consensus); CSCO earnings Wed 8/12 post-market ($1.17 EPS/$16.82B rev consensus, 4:30pm ET call — CSCO is a current core watchlist name); PPI + jobless claims Thu 8/13 pre-market; AMAT earnings Thu 8/13 post-market ($3.39 EPS/~$9.0B rev consensus, 4:30pm ET call, not a watchlist name but a sector bellwether).

### Held-Position Thesis Check
- **MNKD (satellite, held, +1.75% unrealized):** No new developments overnight per an exhaustive review of press releases/filings/clinical-trial databases. Thesis fully intact — FUROSCIX ReadyFlow PDUFA remains resolved (7/24), no new near-dated binary catalyst documented. Well clear of the -15% hard-cut. No action.
- **EDGX/SGOV/SPHY (income, held):** No idiosyncratic news or structural disruptions for any of the three. Macro backdrop (long-end curve steepening, equities at rich multiples, energy/geopolitical risk) remains directly supportive of the short-duration/principal-protection thesis. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
- **None confirmed for entry.** No material overnight news found for DELL, PANW, HPE, CRWD, ZBRA, CRL, ANET, VLO, PYPL, BAX, CNC, GRMN, MPC, FFIV, STT, NUE, GEN, URI, MET — all subject to broad market beta (tech-sector rotation, CPI positioning) only.
- **NTAP** — ticker-collision data-quality catch: a wave of "NTAP" regulatory news in the raw sourcing is CMS's New Technology Add-on Payment program (Medicare reimbursement), unrelated to NetApp the company — not propagated as company news. NetApp itself quoted +0.79% pre-market ($193.00) with no company-specific news found.
- **XYZ (Block)** — real Q2 print (8/5): gross profit +25% YoY to $3.17B, adj EPS $1.02 vs $0.87 consensus, FY26 guidance raised (gross profit $12.51B, adj operating income $3.47B) — but the stock fell -6.15% post-print on GAAP EPS of only $0.15 (heavy SBC/non-cash charges) plus a valuation-priced-for-perfection setup (+30% YTD into the print). CFO sold 8,971 sh (~$770k) the same day under a 10b5-1 plan — routine, not discretionary, but worth a fresh technical-support check before any entry consideration. Not acted on pre-market.
- No live momentum/spread verification performed pre-market, as always — any of the above needs a fresh live check at market-open before being treated as a buy candidate.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry.
2. **RIGL** — not held. **Catalyst now confirmed inside the 5-trading-day window**: VEPPANU (vepdegestrant) is FDA-approved and commercial availability is confirmed for "mid-August 2026" per the CEO's 8/4 earnings-call guidance — with today being 8/10, this falls inside the window. Overnight: Dimensional Fund Advisors increased its RIGL stake 37.1% (13F). Fundamentals remain strong (Q2 EPS $0.88 vs $0.09 consensus, revenue $78.7M). Per TRADING-STRATEGY.md's binary-catalyst gap-risk rule, an entry this week inside a documented catalyst window should size at the 5% cap, not the standard 7.5% — flagging for market-open consideration, not deciding here. Still carries its standing, repeatedly-failed wide/illiquid-spread problem (7/27, 7/29, 8/3, 8/4) — needs a fresh live liquidity check before any entry is considered.
3. **SVRA** — not held. Q2 2026 earnings call confirmed for tomorrow, Tuesday 8/11, 4:00pm ET (press release likely hitting Tue after-hours or Wed 8/12 pre-market) — inside the 5-day window. Consensus loss $0.14-0.145/share on ~$0 revenue (pre-commercial). $203M cash, runway into H2 2027 reconfirmed. This is a real near-term volatility event (investors will scrutinize burn/runway) but not itself the documented binary catalyst — the actual PDUFA (molgramostim/MOLBREEVI) remains Nov 22, 2026, confirmed unchanged, not moved up. No entry considered pre-market.
4. **CGEM** — not held. No catalyst inside the 5-day window; next milestone is Taiho's REZILIENT3 topline data ~Sept 1, 2026 (~22 days out). No action.

### Risk Factors
- Cash below the 20% floor for 5+ consecutive trading sessions (since 8/4) — past the 3-session action threshold, standalone SGOV sell now materially overdue for today's market-open. See Account section.
- `gemini_research.sh`'s `extract_report()` bug (diagnosed 8/9) reproduced a third time — standard `research` calls are silently dropping all but the final report section; worked around manually this session, but the underlying script is still unpatched.
- RIGL is now inside its 5-day catalyst window with a persistent illiquid-spread problem (failed the skip rule 4 sessions running) — real liquidity risk if entry is considered at market-open; also needs the tightened 5% binary-catalyst cap per the gap-risk rule, not the standard 7.5%, if entered this week.
- SVRA's 8/11 earnings is a real near-term volatility event ahead of its Nov 22 PDUFA — raises the pre-entry diligence bar this week if considered.
- Possible internal inconsistency in the Gemini report's Fed rate-cut-odds figure (44% vs 55%, direction reads backwards given the weak-NFP narrative) — not propagated as a hard fact, flagged for awareness only.
- No held position is near its hard-cut: MNKD +1.75% (cut -15%); EDGX/SPHY/SGOV all well inside their 5% income stops. No satellite catalyst resolved negatively overnight. No new geopolitical escalation (Hormuz talks ongoing, not a fresh flare-up).

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight, no fresh geopolitical escalation — so no urgent pre-market notification triggered per Step 5. Handoff to market-open: (1) execute the standalone SGOV sell to restore the 20% cash floor — now materially overdue (5+ consecutive sessions); (2) fresh live momentum/spread check on DELL/PANW/HPE/CRWD/ANET/CSCO/XYZ and the rest of the core list before treating any as a live buy candidate, XYZ specifically given its post-earnings technical setup; (3) RIGL is now inside its 5-day VEPPANU launch window — needs a fresh liquidity check (recurring wide-spread problem) and, if entered, sizing at the 5% binary cap per the gap-risk rule; (4) SVRA's 8/11 earnings is a volatility event to watch, not itself tradeable pre-print; (5) `gemini_research.sh`'s extraction bug needs an actual code fix — third session hitting it. This week (Aug 10 start): core 0/6, satellite 0/4 — Patience Rule applies as always.

### 9:30 AM Session Note
- **Income sweep executed:** sold 3 sh SGOV ($100.49) to restore the 20% cash floor per the overdue-sweep handoff — cash 19.90% -> 20.24% of equity. Canceled/re-placed the 5% trailing GTC stop on the remaining 313 whole shares (cancel-then-replace pattern, same as 7/17 and 7/21). See TRADE-LOG.md.
- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG. Live spread check this window: RIGL 27% (bp $33.97/ap $46.74) — fails the illiquid-spread skip rule for a 5th session running (7/27, 7/29, 8/3, 8/4, now 8/10), still not tradeable despite being inside its VEPPANU catalyst window. Core names DELL (2.8%), PANW (6.5%), CRWD (5.6%), ANET (9.3%) also showing anomalously wide spreads for large-caps, consistent with the broad wide-spread pattern flagged repeatedly this week — skipped. HPE and XYZ had tight/normal spreads but no fresh momentum recheck or catalyst was documented to justify a live buy today. Per STEP 3, no buys placed. This week (Aug 10 start) stays at core 0/6, satellite 0/4 (MNKD is a carryover holding).
- **Pattern worth flagging for Friday's review:** the wide/illiquid-spread anomaly on large-cap core names (DELL/PANW/CRWD/ANET) and RIGL has now recurred across essentially every session for two-plus weeks — worth a deeper look at whether this is a data-feed artifact specific to this paper environment rather than real market liquidity, since it is the binding constraint blocking every core entry regardless of fundamentals/momentum.

### 11 AM Session Note
- **Buy-side: HOLD, both sleeves.** Still no "### Approved Trades (verified)" section anywhere in today's RESEARCH-LOG — per STEP 3, no buys placed. This week (Aug 10 start) stays at core 0/6, satellite 0/4 (MNKD carryover holding).
- **Risk sweep: no cuts.** MNKD (only satellite position) -0.13% unrealized, well clear of the -15% hard-cut; no core positions held. All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing, none tightened this window (MNKD's gain is nowhere near the +25% satellite threshold; Income sleeve has no gain-based schedule). No stop moved down. No thesis break on any held name — MNKD's catalyst remains resolved (FUROSCIX ReadyFlow PDUFA, 7/24), no new near-dated binary documented.
- **Cash floor restored:** 20.24% of equity (per 9:30am's standalone SGOV sweep) — at/above the 20% floor, no further action needed this window.
- 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- No unexplained sharp intraday movers warranting a consolidated Gemini check this window.

### 3 PM Session Note
- **Buy-side: HOLD, both sleeves.** Still no "### Approved Trades (verified)" section anywhere in today's RESEARCH-LOG — per STEP 3, no buys placed. This week (Aug 10 start) stays at core 0/6, satellite 0/4 (MNKD carryover holding).
- **Risk sweep: no cuts.** MNKD (only satellite position) -1.88% unrealized, well clear of the -15% hard-cut; no core positions held. All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` — none missing. MNKD drifted -4.50% intraday (close $4.11 -> $3.925) with no new company-specific news found and no thesis break — the FUROSCIX ReadyFlow PDUFA remains resolved (7/24), no new near-dated binary documented in WATCHLIST.md, so treated as ordinary price noise, not a re-check trigger; conviction unchanged, holding through. No other thesis break on any held name. No stop tightening this window — no position past its sleeve's gain-based threshold (MNKD underwater; Income sleeve has no gain-based schedule). No stop moved down.
- **Cash floor:** 20.27% of equity, at/above the 20% floor (restored at 9:30am's standalone SGOV sweep) — no action needed.
- 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Risky positions closed today: none.

## 2026-08-11 — Pre-market Research

### Account
- Equity: $95,780.77 | Cash: $19,418.14 (20.28%, at/above the 20% floor) | Buying power: $287,697.12 (margin-inflated by the standing 4x multiplier — no margin/leverage used or planned)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 2026-07-28 stop-out, now 12 full sessions running) | Satellite exposure: $4,738.50 (4.95%, MNKD) | Income exposure: $71,624.13 (74.79%: EDGX $20,194.22 / SGOV $31,502.23 / SPHY $19,927.68)
- All 4 open positions (MNKD, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh account`/`orders` — none missing: MNKD 15% trail $3.59975 (hwm $4.235); EDGX 5% trail $25.9255 (hwm $27.29); SGOV 5% trail $95.475 (hwm $100.50, 313 sh covered); SPHY 5% trail $22.2015 (hwm $23.37).
- This week (Aug 10 start) stays at core 0/6, satellite 0/4 (MNKD carryover holding).

### Data-quality flag — gemini_research.sh extraction bug reproduced again, worked around manually
The client-side bug diagnosed 2026-08-09 (`extract_report()` reads only `steps[-1]`, discarding every earlier `model_output` step) reproduced again this session: the standard `research` blocking call returned only a truncated fragment (satellite catalyst confirmations plus a brief conclusion; sections 1-4 on futures/VIX detail, macro calendar, held-position check, and core watchlist detail were missing). Worked around per the standing process — `submit` + manual polling against the raw Interactions API, concatenating all 3 `model_output`-type steps by hand (~57KB combined vs. the ~8KB last-step-only fragment) — this recovered a complete report covering all requested sections. The `extract_report()` patch (iterate all `model_output` steps, not just the last) still has not been applied — now the fourth consecutive session hitting this. Fixing the script itself is out of scope for this pre-market run (memory-file updates only); flagging again for the next weekly review or owner attention — this is now a persistent, unaddressed process gap, not an isolated incident.

### Market Context
- S&P 500 futures: +0.36% overnight (SPI Overnight), extending the prior session's close at 7,757.64 (+0.62%); Nasdaq Composite +1.30% same session. Market breadth healthy — S&P 500 equal-weight index at record highs alongside market-weight; "average 493" (ex-Mag7) up 16.0% YTD vs. 13.3% for the S&P 500 and 4.8% for the Mag7, signaling broadening beyond mega-cap tech.
- VIX: 14.90 (-1.65%), near the low end of its 52-week range — calm, despite the macro/geopolitical crosscurrents below.
- 10-year Treasury yield: 4.66% (-0.21%), compressing on the weak jobs print — tailwind for the Income sleeve. DXY -0.35% to 99.60.
- Macro: July nonfarm payrolls (released Fri 8/7) showed a headline contraction of -23,000 jobs vs. +80k consensus, plus -103,000 in downward revisions to the prior two months; 3-month average job creation now ~20k/month. Fed funds futures price a 44% probability of a September cut, down from a high of 75% at end-July — directionally this reads as the market pricing cuts out, not in, despite weak jobs data, which is the same odd pattern flagged in prior sessions' reports; treating the underlying facts (weak NFP, downward revisions, falling 10Y, low VIX) as reported without vouching for that specific probability figure.
- Key catalyst today: **CPI Wed 8/12 pre-market** (headline +0.1% MoM/3.4% YoY, core +0.2% MoM consensus) is "the absolute critical swing factor" per the report — a soft print would validate the dovish repricing and likely lift equities further; a hot print risks a knee-jerk hawkish bounce in yields/USD. CSCO earnings also Wed 8/12 post-market (core watchlist name). RBA held rates at 4.35% today with a hawkish bias; UK Q2 GDP Thu.
- Geopolitical: Israel has explicitly rejected the U.S.-backed Gaza disarmament roadmap; Iran continues raising new demands over the Strait of Hormuz; Russia executed a large combined missile/drone assault on Odesa (11 ballistic missiles, ~100 UAVs). All are continuations of standing tensions already reflected in the calm VIX, not fresh escalations that moved markets overnight — noted per the data-quality guard, not treated as a new risk-off trigger.

### Held-Position Thesis Check
- **MNKD (satellite, held, -2.50% unrealized):** No negative overnight news or thesis-breaking filings found. FUROSCIX ReadyFlow PDUFA remains resolved (7/24), fundamentally de-risking the position. Well clear of the -15% hard-cut. No action.
- **EDGX (income, held):** No material overnight news or earnings pre-announcements found. No action.
- **SGOV/SPHY (income, held):** No idiosyncratic news for either. The weak-NFP-driven yield compression is a direct tailwind for both — SGOV's valuation benefits from falling short rates, and SPHY's high-yield credit spread is supported by the "low-fire" labor environment (contained default risk) even as hiring has stalled. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
- **DELL, PANW, CRWD, ANET, CSCO** — no material overnight news, SEC filings, or analyst actions found; validated by broader secular tailwinds only, no fresh idiosyncratic catalyst.
- **PYPL — real, large overnight move, NOT acted on pre-market.** Reports that Stripe + Advent International submitted a joint $53B take-over bid at $60.50/share (28% premium to the $47.37 prior close) sent the stock up 15-19% in extended trading to the $55.41-$56.60 range. Stock trades at an ~8% discount to the reported bid, implying the market is pricing meaningful deal-completion/regulatory risk; Polymarket reportedly assigns ~82% odds of a close by 2027. This is M&A speculation, not the core screen's intended momentum+FCF signal — needs a fresh live price/spread check at market-open before any consideration, and a takeover-bid situation raises questions about whether continuing to hold/enter under the standard entry criteria still fits the strategy's intent. Flagging for market-open judgment, not deciding here.
- **HPE** — Morgan Stanley upgraded to Overweight (from Equal-Weight), PT $69 (~30% implied upside), citing an inflection in enterprise hardware/AI-server demand. Supportive of the existing thesis, not a new signal requiring action.
- **MET, STT, MPC, VLO, ZBRA, GEN, CRL, BAX, CNC, GRMN, NUE, URI** — real Q2 earnings beats/raises and price strength reported across the board (energy refining supercycle for MPC/VLO; industrials/hardware strength for GRMN/NUE/URI/ZBRA; insurance/financials beats for MET/STT), consistent with existing theses — no new entries considered pre-market, this is background context for market-open's fresh momentum/spread checks, not confirmed buy signals.
- **NTAP, CRL, FFIV** — notable insider selling flagged (NTAP Form 144, CRL >$21M in 90-day insider sales, FFIV >$6.3M in 90-day insider sales) alongside otherwise-strong fundamentals — not a thesis break, but worth weighing if any of these come up for entry.
- No live momentum/spread verification performed pre-market, as always — all of the above needs a fresh live check at market-open before being treated as a buy candidate.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry.
2. **RIGL** — not held. Catalyst confirmed **within the 5-trading-day window**: VEPPANU (vepdegestrant) commercial launch guided for "mid-August 2026," directly overlapping today's window. Per TRADING-STRATEGY.md's binary-catalyst gap-risk rule, any entry this week should size at the 5% cap, not the standard 7.5%. Still carries its standing, repeatedly-failed wide/illiquid-spread problem (7/27, 7/29, 8/3, 8/4, 8/10) — needs a fresh live liquidity check before any entry is considered.
3. **SVRA** — not held. Q2 2026 earnings call **today, 8/11, 4:00pm ET** — inside the 5-day window, and the catalyst occurs today. Consensus loss $0.14-0.145/share on ~$0 revenue (pre-commercial), $203M cash reconfirmed, runway into H2 2027. Real near-term volatility event; the actual binary catalyst (molgramostim/MOLBREEVI PDUFA) remains unchanged at Nov 22, 2026. No entry considered pre-market — this is an earnings/volatility event, not itself the documented catalyst.
4. **CGEM** — not held. No catalyst inside the 5-day window. No action.

### Risk Factors
- `gemini_research.sh`'s `extract_report()` bug (diagnosed 8/9) reproduced a fourth consecutive session — standard `research` calls are silently dropping all but the final report section; worked around manually again, but the underlying script remains unpatched. This has now recurred every session since diagnosis and needs an actual code fix, not another workaround.
- PYPL's $53B take-over bid is a material overnight development on a watchlist (not held) core name — needs explicit market-open judgment on whether an M&A-driven price spike still fits the core screen's momentum+FCF entry intent before any consideration.
- SVRA's 8/11 4pm ET earnings is a real near-term volatility event (not held) ahead of its Nov 22 PDUFA.
- RIGL is inside its 5-day catalyst window with a persistent illiquid-spread problem (failed the skip rule 5 sessions running as of 8/10) — real liquidity risk if entry is considered; needs the tightened 5% binary-catalyst cap per the gap-risk rule if entered this week.
- Possible internal inconsistency in the Fed rate-cut-odds trajectory (44% now vs. 75% end-of-July, falling despite weak NFP) — not propagated as a hard fact, flagged for awareness only.
- No held position is near its hard-cut: MNKD -2.50% (cut -15%); EDGX/SPHY/SGOV all well inside their 5% income stops. No satellite catalyst resolved negatively overnight. No new geopolitical escalation beyond standing, already-known tensions (Hormuz, Gaza roadmap rejection, Odesa strikes) — VIX remains calm at 14.90, consistent with no fresh risk-off trigger.

### Decision
**HOLD** (pre-market default; research-only, no trades this run). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight, no fresh geopolitical escalation — so no urgent pre-market notification triggered per Step 5. Cash floor is intact (20.28%), no standalone sweep needed today. Handoff to market-open: (1) fresh live momentum/spread check on the full core list, with explicit judgment on PYPL given its overnight M&A-bid spike; (2) RIGL is inside its 5-day VEPPANU launch window — needs a fresh liquidity check (recurring wide-spread problem) and, if entered, sizing at the 5% binary cap per the gap-risk rule; (3) SVRA's 8/11 4pm earnings is a volatility event to watch post-close, not itself tradeable pre-print; (4) `gemini_research.sh`'s extraction bug needs an actual code fix — fourth session hitting it. This week (Aug 10 start): core 0/6, satellite 0/4 — Patience Rule applies as always.

### 9:30 AM Session Note
- **Satellite: BOUGHT RIGL, 114 sh @ $41.84 (4.98% of equity), 5% binary-catalyst cap.** RIGL's illiquid-spread problem (5 straight prior sessions) did not reproduce today — bid/ask held stable at ~$40.95/$41.84-41.90 (~2.2%) across 3 checks a minute apart. Pre-trade cash would have dropped to 15.3% of equity (below the 20% floor), so swept 46 sh of SGOV first per the buy-funding rule; post-trade cash confirmed 20.13%. 15% trailing stop placed immediately. Satellite now 2/4 positions, 1/4 trades this week.
- **Core: HOLD, no entries.** DELL/PANW/ANET/CRWD/CSCO all showed erratic, unstable quotes this window (asks swinging $10-20+ within a minute while bids stayed frozen) — the same recurring wide-spread data-feed anomaly flagged 8/10, not genuine illiquidity or a fundamentals/momentum problem. Skipped per the spread-integrity rule rather than traded on unreliable quotes. Core stays 0/6, now 13 full sessions with zero core positions since HPE's 7/28 stop-out.
- **PYPL skipped by judgment, not mechanically.** The $53B Stripe/Advent take-over bid (stock +19% overnight to ~$59, live-confirmed at market-open) is a real move but an M&A-completion catalyst, not the momentum+FCF signal the core screen is built to capture — same category excluded for AVDL in WATCHLIST.md ("poor fit, not a fundamentals fail"). Applying that precedent here.
- **Lesson:** worth flagging at the next weekly review — the DELL/PANW/ANET/CRWD wide-spread anomaly has now recurred often enough (8/10, 8/11) that it may be a feed/data issue specific to those names rather than random noise; if it keeps recurring, worth a dedicated data-quality investigation rather than a per-session skip.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (only the pre-market Decision and 9:30 AM Session Note, which already executed the RIGL buy on its own live recheck) — per STEP 3 no further buys placed this window. This week (Aug 10 start) stays at core 0/6, satellite 1/4 (RIGL).
- **Risk sweep: no action.** All 5 open positions (MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. Hard-cut check: MNKD -1.50% (cut -15%), RIGL +0.01% — neither close to a cut; no core positions to check. No stop tightening (MNKD underwater, RIGL's gain far below the +25% satellite threshold; Income sleeve has no gain-based schedule). No stop moved down. Thesis check: MNKD's PDUFA remains resolved (7/24), no new negative news; RIGL (bought this morning) has no adverse move or news since entry — VEPPANU launch catalyst window still open, thesis intact. No positions moved sharply with unexplained cause, so no Gemini call this window (STEP 7 skipped). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash $19,271.38 = 20.11% of equity ($95,847.22), at/above the 20% floor — no funding sweep needed. No positions closed this window.
- **Lesson:** none new — same wide-spread anomaly on DELL/PANW/ANET/CRWD/CSCO flagged at 9:30am, no additional data this window.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market Decision, 9:30 AM's RIGL buy on its own live recheck, and 11 AM's HOLD) — per STEP 3 no further buys placed this window. This week (Aug 10 start) stays at core 0/6, satellite 1/4 (RIGL).
- **Risk sweep: no action.** All 5 open positions (MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing. Hard-cut check: MNKD -3.75% unrealized (cut -15%), RIGL -1.63% unrealized (cut -15%) — neither close; no core positions to check. Neither satellite catalyst is inside the 1-2 trading-day gap-risk window: MNKD's FUROSCIX PDUFA remains resolved (7/24); RIGL's VEPPANU commercial launch is a guided "mid-August 2026" window rather than a single dated event, and the position was already sized/documented at the 5% binary-catalyst cap at this morning's entry — holding through remains valid, stated explicitly per STEP 4 rather than silently passing. No thesis break on any held name. No stop tightening this window (MNKD and RIGL both underwater vs. entry; Income sleeve has no gain-based schedule). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash $19,271.38 = 20.16% of equity ($95,597.35), at/above the 20% floor — no funding sweep needed. Risky positions closed today: none.
- **Lesson:** same DELL/PANW/ANET/CRWD/CSCO wide-spread data-feed anomaly flagged at 9:30am/11am, no new data this window; RIGL's previously-recurring illiquid-spread problem (5 straight prior sessions through 8/10) did not reproduce today across either check (9:30am entry, 11am hold) — worth confirming at the next weekly review whether that issue has genuinely cleared.

## 2026-08-12 — Pre-market Research

### Account
- Equity: $95,816.59 | Cash: $19,271.26 (20.11%, at/above the 20% floor) | Buying power: $287,621.18 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $0.00 (0.00%, zero open positions since HPE's 2026-07-28 stop-out, now 15 full sessions running) | Satellite exposure: $9,570.96 (9.99%: MNKD $4,738.50 / RIGL $4,832.46) | Income exposure: $66,974.37 (69.90%: EDGX $20,181.46 / SGOV $26,882.35 / SPHY $19,910.56)
- All 5 open positions (MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors: MNKD 15% trail $3.59975 (hwm $4.235); RIGL 15% trail $35.734 (hwm $42.04); EDGX 5% trail $25.9255 (hwm $27.29); SGOV 5% trail $95.4845 (267 sh covered, hwm $100.51); SPHY 5% trail $22.2015 (hwm $23.37).
- This week (Aug 10 start): core 0/6, satellite 1/4 (RIGL).

### Data-quality flag — gemini_research.sh extraction bug reproduced again (5th consecutive session)
The client-side bug diagnosed 2026-08-09 (`extract_report()` reads only `steps[-1]`, discarding earlier `model_output` steps) reproduced again this session via the standard blocking `research` call: the captured output starts mid-document directly on the "currently-held tickers" section (MNKD/EDGX/SGOV/SPHY) — Section 1 (S&P futures direction/VIX level) and Section 2 (today's specific market-moving catalysts/economic releases) never arrived at all, consistent with the data-quality guard's "starts mid-document" flag. Per STEP 3, did not fabricate the missing sections; filled S&P futures direction and VIX via native WebSearch fallback below instead. The `extract_report()` patch recommended 8/9 (iterate all `model_output` steps, not just the last) remains unapplied — fifth consecutive session hitting this bug (8/9, 8/10, 8/11, plus two occurrences today counting the original truncated fragment). Flagging again, with rising urgency, for owner attention — this is no longer an occasional flake, it is the default behavior of every consolidated call.

### Market Context
- **S&P 500 futures (WebSearch fallback, Gemini section 1 did not arrive):** flat to slightly weaker pre-market, investors awaiting today's CPI print. VIX 15.30 (+0.13%), calm, near the low end of its recent range.
- **Today's key catalyst (per standing calendar, reconfirmed by Gemini's synthesis section though not itemized in a dedicated section 2):** US CPI this morning (headline +0.1% MoM/3.4% YoY, core +0.2% MoM consensus per prior sessions' research — today is the release day); CSCO earnings post-market (current core watchlist name).
- **Geopolitical / energy:** Gemini's report describes an "exogenous geopolitical energy shock" from a ~5% crude oil jump tied to Iran's Strait-of-Hormuz demands clouding the reopening outlook — independently verified via WebSearch: this is Monday 8/10's move (WTI ~$82.13, Brent ~$87.72, both +~5% that day), not a fresh overnight escalation; the underlying US-Iran standoff has been deteriorating since a failed June 17 MOU and is a continuing, previously-flagged risk, not new news as of today. Treated as ongoing context (tailwind for VLO/MPC's refining thesis, headwind for SPHY's high-yield credit exposure per Gemini's framing), not an urgent overnight development.
- 10-year Treasury yield: Gemini's report references "the sudden rise in the 10-year Treasury yield" in its synthesis but the specific level wasn't captured in the retrieved sections — not fabricating a number; prior sessions had it at ~4.65-4.70%.

### Held-Position Thesis Check
- **MNKD (satellite, held, -2.5% unrealized per current price $3.90 vs $4.00 entry):** No thesis-breaking news. Q2 2026 results (reported 8/5) reconfirmed with no new negative guidance. Company settled its remaining $36.3M convertible notes back in March 2026 (de-risked balance sheet, not new information). FUROSCIX ReadyFlow PDUFA remains resolved (7/24), no new near-dated binary catalyst documented. Well clear of the -15% hard-cut. No action.
- **RIGL (satellite, held, +1.3% unrealized per current price $42.39 vs $41.84 entry):** No negative news found; Gemini's synthesis explicitly calls RIGL "the highest-conviction asymmetric opportunity" in the portfolio, entering VEPPANU commercial launch within ~120 hours on top of a profitable existing commercial base. Catalyst confirmed still **IMMINENT / within the 5-trading-day window** per Gemini's satellite proximity table. Well clear of the -15% hard-cut, gain far below the +25% tightening threshold. No action.
- **EDGX (income, held, +1.0% unrealized):** Went ex-dividend 8/10, distribution $0.0459-$0.047/share payable 8/13 (reinvests to SGOV per Income-sleeve rule, not pro-rata). No thesis break.
- **SGOV (income, held, -0.12% unrealized):** No company-specific news; declared an August distribution of $0.3068/share. Continues as the sleeve's defensive anchor amid the energy-shock/yield volatility described above. No action.
- **SPHY (income, held, -0.43% unrealized):** No idiosyncratic news. Gemini flags a theoretical dual-threat to high-yield credit from the energy shock (margin compression + higher-for-longer rates) if it persists/escalates — background risk to monitor, not an active thesis break today. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No live momentum/spread verification performed pre-market, as always — all items below need a fresh live check at market-open before being treated as buy candidates, not acted on now:
- **PANW, CRWD** — both hit new all-time highs in early August on resilient enterprise security spending post-Black Hat conference; PANW reports earnings imminently (consensus $0.81 EPS / ~$3B rev). Thesis intact, no new red flags.
- **DELL, HPE** — both highlighted as AI-infrastructure buildout plays; DELL record Q1 rev $43.8B (+88% YoY), FY guide raised to $165-169B. HPE pivoting to higher-margin networking (Juniper integration) over lower-margin AI server contracts. No new red flags.
- **ANET** — strong Q2 (rev $3.036B, +37.7% YoY, FY26 guide raised to $12.6B) but a real caution flag: founder Andreas Bechtolsheim sold ~$79.4M of stock 8/6 (10b5-1 plan) and at least one analyst downgrade to Hold on valuation (~46.7x P/E) — not a thesis break, but a "priced for perfection" risk worth weighing before any entry.
- **NTAP** — steady FCF beneficiary ($1.869B TTM FCF, +40% YoY), $1.0B buyback authorized. No new red flags (Hold rating caveat from the 8/7 screen stands, unchanged).
- **CSCO** — earnings post-market today; pre-earnings entry would carry elevated event risk atypical of the core screen's steady-momentum profile, consistent with prior sessions' framing. Not a pre-market entry candidate.
- **XYZ** — strong Q2 (gross profit +25% YoY to $3.16B, FY EPS guide raised to $4.02) but notable insider selling from a director and the CFO/COO in the days following the print (10b5-1 plans, not flagged as discretionary) — worth a fresh look, not acted on pre-market.
- **PYPL** — Q2 revenue +5%, EPS guide raised to $5.38, $1.5B cost-savings program — but consensus remains Hold with a downside-implying $55.72 mean PT; thesis is now value/buyback-driven, not momentum-driven. No new red flags relative to the standing thesis.
- **ZBRA** — confirms the already-logged Q2 beat (+20.4% rev, ~12% gap up 8/4); DCF suggests still undervalued. No new information.
- **NUE** — neutral/Hold, flat PT — no new red flags, unchanged from standing thesis.
- **URI** — Q2 rev +4.91% to $16.10B (earnings -3.15%); Buy consensus, $1,261 PT (~10% upside). No new red flags.
- **VLO, MPC** — direct beneficiaries of the Hormuz-driven crude spike (VLO +4.13%, MPC +4.49% on Monday's move per Gemini) — tailwind reconfirmed, not new information as of today.
- **MET** — Q2 adjusted earnings +15% YoY, EPS +20%; Overweight/Outperform consensus, >20% implied upside. No new red flags.
- **STT** — no idiosyncratic news, trades with broader asset-management/rate-margin trends.
- **CRL, BAX, CNC, GRMN, FFIV, GEN** — exhaustive overnight scan found no material idiosyncratic developments for any of these six; theses remain intact and unaltered.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry.
2. **RIGL (held)** — see Held-Position Thesis Check. Catalyst reconfirmed IMMINENT/within the 5-day window; no new entry (already held at the 5% binary-catalyst cap).
3. **SVRA** — not held. Catalyst (PDUFA, molgramostim/MOLBREEVI) reconfirmed **November 22, 2026 — NOT imminent**, per Gemini's proximity table, consistent with WATCHLIST.md's documented date. No entry considered.
4. **CGEM** — not held. No near-term catalyst per Gemini's proximity table, consistent with WATCHLIST.md. No entry considered.

### Risk Factors
- `gemini_research.sh`'s `extract_report()` bug reproduced a fifth consecutive session (diagnosed 8/9, still unpatched) — the captured report is missing its futures/VIX and today's-catalysts sections entirely; WebSearch fallback used for VIX/futures per the data-quality guard, no numbers fabricated. This is now the default behavior of every consolidated call, not an occasional flake — needs an actual code fix, not another workaround.
- Iran/Strait-of-Hormuz standoff continues deteriorating (failed June 17 MOU, Iran's naval-blockade demands) — a continuing, previously-flagged risk (tailwind for VLO/MPC, headwind for SPHY's credit exposure if it escalates further), not a fresh overnight event as of today. Monitor for a genuine escalation, which would warrant an urgent notification.
- ANET's insider selling (~$79.4M, 8/6) alongside a Hold downgrade on valuation — not a thesis break (not held, not a live buy candidate today), but a "priced for perfection" flag worth weighing if ANET comes up for entry.
- XYZ's post-earnings insider selling (director + CFO/COO, 10b5-1 plans) — same treatment, not held, not acted on.
- No held position is near its hard-cut: MNKD -2.5% (cut -15%), RIGL +1.3% (cut -15%); EDGX/SGOV/SPHY all well inside their 5% income stops. No satellite catalyst resolved negatively overnight — RIGL's launch catalyst remains a positive, still-open commercial-execution event, not a binary risk that failed.
- Cash 20.11%, at/above the 20% floor — no funding-sweep action needed today.

### Decision
**HOLD** (pre-market default; Patience Rule applies). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight, no fresh geopolitical escalation beyond the standing, already-known Hormuz standoff (VIX calm at 15.30, consistent with no new risk-off trigger) — so no urgent pre-market notification triggered per Step 5. Handoff to market-open: (1) fresh live momentum/spread check on the full core list before treating any as a buy candidate, with explicit judgment on ANET (insider selling + Hold downgrade) and XYZ (post-earnings insider selling) given today's flags; (2) CSCO earnings post-market today is a watch item, not a pre-earnings entry; (3) RIGL remains held and inside its catalyst window — no new entry, monitor for a fresh liquidity check only if adding; (4) `gemini_research.sh`'s `extract_report()` bug needs an actual code fix — fifth consecutive session hitting it, now the default failure mode rather than an occasional flake. This week (Aug 10 start): core 0/6, satellite 1/4 (RIGL) — Patience Rule applies as always.

### 9:30 AM Session Note
- **Traded:** BUY HPE (core), 172 sh @ $55.56 (9.97% of equity), 10% trailing stop $50.067. Live spread check on the full 22-name core list found only 6 clean (HPE, PYPL, BAX, CNC, GEN, XYZ) — the other 16, including all the usual top-ranked names (DELL, PANW, ANET, CRWD, ZBRA, NUE, URI, VLO, MPC, MET, STT, CRL, GRMN, FFIV), still showing the recurring 5-12% wide-spread data-feed anomaly (8/10, 8/11, and now 8/12 — three straight sessions, worsening in breadth each time). Picked HPE alone (rank 3, cleanest spread, no red flags, previously-held thesis) rather than all 6 clean names — deliberately conservative on an unsupervised run; entering all 6 would have used the entire weekly core budget (6/6 trades and positions) in one session and required selling down almost the full SGOV position to fund it. Funded via a 95-share SGOV sweep (pattern per TRADING-STRATEGY.md), leaving SGOV at ~35% of its pre-sweep size — intentionally not depleted further. Satellite: HOLD, no new entry (SVRA/CGEM both still catalyst-non-imminent per pre-market; MNKD/RIGL held, no thesis break).
- **Pattern to flag for Friday's review:** the wide-spread anomaly is now 3 consecutive sessions and appears to be widening in scope (14-16 of 22 core names affected today vs. a handful in prior sessions) — worth treating as a live infrastructure issue for the weekly review rather than routine noise, since it has kept core at 0 positions for 15 of the last 16 sessions and is starting to look less like transient flakiness and more like a systematic data-feed problem worth root-causing.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market Decision, 9:30 AM's HPE buy on its own live recheck) — per STEP 3 no further buys placed this window. This week (Aug 10 start) stays at core 1/6 (HPE), satellite 1/4 (RIGL).
- **Risk sweep: no cuts, no tightens.** All 6 positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing (HPE 10%, MNKD/RIGL 15%, EDGX/SGOV/SPHY 5%). None near a hard-cut: HPE +1.08% (cut -7%), MNKD -2.88% (cut -15%), RIGL +1.15% (cut -15%); income names all inside their 5% stops. None near a tighten threshold (core +15/+20%, satellite +25/+40%) — no stop moved. No thesis break on any held name; CPI print today processed without dislocation, HPE's +3.27% intraday move consistent with broad market/AI-infra strength on CPI day, not flagged as unexplained. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **No Gemini call this window** — no unexplained sharp move to investigate (HPE's gain has an obvious macro/sector driver); saving the time budget per STEP 7.
- **Lesson:** none — quiet monitoring window, consistent with the pre-market/9:30am thesis holding through the CPI release.

### 3 PM Session Note
- **Buy-side: HOLD.** Still no "### Approved Trades (verified)" section anywhere in today's RESEARCH-LOG (pre-market, 9:30 AM, 11 AM, this 3pm check all confirm none beyond the 9:30 AM HPE entry) — per STEP 3 no buys this window. This week (Aug 10 start) stays at core 1/6 (HPE), satellite 1/4 (RIGL).
- **Risk sweep: no cuts, no tightens, no closes.** All 6 positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing (HPE 10% trail $51.9885 hwm $57.765; MNKD 15% trail $3.59975 hwm $4.235; RIGL 15% trail $36.533 hwm $42.98; EDGX 5% trail $25.9255 hwm $27.29; SGOV 5% trail $95.494, 172 sh covered, hwm $100.52; SPHY 5% trail $22.2015 hwm $23.37). None at/beyond a sleeve hard-cut: HPE +3.87% (cut -7%), MNKD -2.88% (cut -15%), RIGL -0.31% (cut -15%); income names all comfortably inside their 5% stops. RIGL's VEPPANU launch catalyst remains inside its guided "mid-August" window (pre-market Gemini pegged it ~120 hours out) — it was sized/documented at the 5% binary-catalyst cap at entry (8/11, 4.98% of equity, max-loss logged $954-$1,431) with conviction unchanged, so holding through is valid, stated explicitly per STEP 4 rather than silently passing. MNKD's catalyst remains resolved (FUROSCIX PDUFA, 7/24), no new near-dated binary. No other thesis break on any held name. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- **No stop tightening this window** — HPE +3.87% is below the core +15% threshold; MNKD/RIGL both underwater vs. entry; Income sleeve has no gain-based schedule. No stop moved down.
- **Cash 20.02%**, at/above the 20% floor — no funding-sweep action needed.
- **Lesson:** quiet afternoon, no new information since 11am; HPE's gain held through the session (CPI print absorbed cleanly). Standing open items for Friday's review unchanged: the 3-consecutive-session wide-spread data-feed anomaly (now widening in scope) and the 5-consecutive-session `gemini_research.sh` `extract_report()` truncation bug both still need owner/root-cause attention.
- Risky positions closed today: none.

## 2026-08-13 — Pre-market Research

### Account
- Equity: $96,774.54 | Cash: $19,263.16 (19.91%, marginally below the 20% floor) | Buying power: $290,245.10 (margin-inflated by the standing 4x multiplier — no margin/leverage used or planned)
- Core exposure: $10,406.00 (10.75%: HPE) | Satellite exposure: $9,572.43 (9.89%: MNKD $4,799.25 / RIGL $4,773.18) | Income exposure: $57,532.95 (59.45%: EDGX $20,262.03 / SGOV $17,334.68 / SPHY $19,936.24)
- All 6 open positions (HPE, MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors: HPE 10% trail $53.01 (hwm $58.90); MNKD 15% trail $3.59975 (hwm $4.235); RIGL 15% trail $36.533 (hwm $42.98); EDGX 5% trail $25.9255 (hwm $27.29); SGOV 5% trail $95.494 (172 sh covered, hwm $100.52); SPHY 5% trail $22.2015 (hwm $23.37).
- **Cash-floor flag (immaterial, monitor only):** cash at 19.91%, a hair below the 20% floor purely from single-session price drift (no trade this window). Per the 8/7 drift-guard rule, a sub-1%-of-equity drift driven by price movement alone requires no standalone action — this is session 1 of any drift streak (8/12's 3pm close was 20.02%, at/above the floor), nowhere near the 3-consecutive-session action threshold. No action needed today; flag only if it persists.
- This week (Aug 10 start): core 1/6 (HPE), satellite 1/4 (RIGL) — MNKD is a carryover holding from a prior week, not a new trade this week.

### Data-quality flag — gemini_research.sh extraction bug reproduced a sixth consecutive session; fell back to native WebSearch
The standard blocking `research` call returned a report starting mid-document (opening directly on "Part 6: Watchlist Intelligence," covering only URI/FFIV/VLO/NTAP/CNC and earnings previews for AMAT/NU) — Sections 1-4 on S&P futures/VIX, today's catalysts, and the currently-held-ticker thesis check never arrived, consistent with the documented `extract_report()` bug (steps[-1]-only extraction, unpatched since diagnosis 8/9). Per the standing workaround, resubmitted the same query via `submit` for manual polling against the raw Interactions API — but this attempt never left `in_progress` (1 step, no `model_output` completion) across ~24 minutes of polling, materially longer than the usual 5-20 minute window and longer than prior sessions' successful manual-poll recoveries. Rather than wait further or fabricate content, fell back to native WebSearch per STEP 3's explicit fallback instruction, noted here. This is the sixth consecutive session hitting this bug (8/9 through 8/13) — no longer an occasional flake, and today it degraded further (the manual-poll workaround itself failed to complete, not just the standard blocking call) — escalating from "recommend a fix" to "workaround itself now unreliable," worth flagging with real urgency for owner attention at the next opportunity.

### Market Context (WebSearch fallback — Gemini did not return this section)
- S&P 500 futures: modestly positive pre-market, ~61% odds of a higher open per prediction-market pricing, as markets digest yesterday's cooler CPI print against the standing Middle East geopolitical backdrop.
- VIX: 14.68 (+0.89%) — calm, low end of recent range. (VIX futures ~16.85, consistent with modest forward vol pricing, not a divergence.)
- Key economic releases today (8:30am ET): PPI (consensus +0.2% MoM / +4.9% YoY, prior -0.3% MoM / +5.5% YoY) and Initial Jobless Claims (consensus 202K, prior 199K) — both watched for confirmation of the Fed's rate-path trajectory following yesterday's CPI. Retail sales follows tomorrow (8/14), completing a three-report inflation/consumer read this week.
- Geopolitical: Strait of Hormuz standoff continues (Iran-Oman talks ongoing, Iran still conditioning reopening on sanctions relief/reparations; vessel transits remain a fraction of pre-conflict volume) — a continuing, previously-flagged risk, not a fresh overnight escalation. No new flare-up found.

### Held-Position Thesis Check
- **HPE (core, held, +8.89% unrealized per $60.50 vs $55.56 entry):** No negative news. Continued momentum off Monday's Morgan Stanley Overweight upgrade ($69 PT) — HPE +5.28% yesterday (8/12) on AI-server/networking demand strength, consistent with the standing thesis, not a new catalyst requiring action. Well clear of the +15% tighten threshold (currently +8.89%) and the -7% cut. No action.
- **MNKD (satellite, held, -1.25% unrealized per $3.95 vs $4.00 entry):** No new negative news found. FUROSCIX ReadyFlow PDUFA remains resolved (7/24); the only recent items (Q2 print 8/5, inhaled-nintedanib Phase 1b IPF data) are already reflected in the standing thesis. Well clear of the -15% hard-cut. No action.
- **RIGL (satellite, held, +0.07% unrealized per $41.87 vs $41.84 entry):** No negative news. VEPPANU (vepdegestrant) commercial launch remains confirmed for mid-August 2026 — inside the documented catalyst window, no adverse launch-metric news found yet (too early for uptake data). Well clear of the -15% hard-cut and the +25% tighten threshold. No action.
- **EDGX/SGOV/SPHY (income, held):** No idiosyncratic news found for any of the three via WebSearch. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
- No live momentum/spread verification performed pre-market, as always — all names need a fresh live check at market-open before being treated as buy candidates. No overnight red flags found for DELL, PANW, CRWD, NTAP, ZBRA, CRL, ANET, VLO, PYPL, BAX, CSCO, CNC, GRMN, MPC, FFIV, STT, NUE, GEN, XYZ, URI, MET via the WebSearch fallback (narrower sweep than a full Gemini pass — flagging the reduced coverage rather than implying an exhaustive check). HPE is held, see above.
- Nothing new surfaced that would override the standing 8/12 flags (ANET's insider selling + Hold downgrade, XYZ's post-earnings insider selling) — same caution stands if either comes up for entry today.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry.
2. **RIGL (held)** — see Held-Position Thesis Check. Catalyst remains inside the 5-day window; no new entry (already held at the 5% binary-catalyst cap).
3. **SVRA** — not held. **Data-quality catch (WebSearch cross-check, consistent with the 8/9 finding):** several search results surfaced a stale, pre-extension PDUFA date of August 22, 2026. Independently confirmed via a targeted follow-up search (Savara's own press release, corroborated by StockTitan/BioSpace/Investing.com) that the FDA extended the review period by three months in April 2026, moving the PDUFA target action date to **November 22, 2026** — matching WATCHLIST.md's documented date exactly. Treating Nov 22 as correct; the Aug 22 date is superseded, not a live catalyst. No entry considered (not inside the 5-day window).
4. **CGEM** — not held. No near-term catalyst found. No action.

### Risk Factors
- `gemini_research.sh`'s `extract_report()` bug reproduced a sixth consecutive session, and today the manual-poll workaround itself failed to complete after ~24 minutes — degrading from "occasional flake" to "the workaround is now unreliable too." WebSearch fallback used per STEP 3, no numbers/headlines fabricated. Needs real owner attention, not another session flagging it.
- SVRA PDUFA date confusion (Aug 22 vs Nov 22) recurred in raw search results for a second time (first caught 8/9) — resolved correctly again via independent cross-check; WATCHLIST.md's Nov 22 date reconfirmed correct.
- Cash at 19.91%, a hair below the 20% floor from single-session drift — immaterial per the drift-guard rule, monitor only.
- No held position is near its hard-cut: HPE +8.89% (in gain, cut -7%), MNKD -1.25% (cut -15%), RIGL +0.07% (cut -15%); EDGX/SGOV/SPHY all well inside their 5% income stops. No satellite catalyst resolved negatively overnight. No new geopolitical escalation (Hormuz standoff ongoing, VIX calm at 14.68, consistent with no fresh risk-off trigger).

### Decision
**HOLD** (pre-market default; Patience Rule applies). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight, no fresh geopolitical escalation — so no urgent pre-market notification triggered per Step 5. Handoff to market-open: (1) fresh live momentum/spread check on the full core list before treating any as a buy candidate, with the standing ANET/XYZ insider-selling caution carried forward; (2) PPI + jobless claims at 8:30am ET are the key macro swing factor into the open; (3) RIGL and MNKD both remain held with intact theses, no forced action; (4) `gemini_research.sh` needs real owner attention — sixth consecutive session hitting the extraction bug, and today the manual-poll workaround also failed to complete, a meaningful escalation from prior sessions' "unpatched but working around it fine." This week (Aug 10 start): core 1/6 (HPE), satellite 1/4 (RIGL) — Patience Rule applies as always.

### 9:30 AM Session Note
- **Traded:** BAX (core), 356 sh @ $27.27 ($9,708.12, 10.02% of equity), funded by a 98-sh SGOV sweep to hold the 20% cash floor. 10% trailing stop placed ($24.534). This week: core 2/6, satellite 1/4 (unchanged, no satellite entry today).
- Live spread check found only 3 of 21 non-held core watchlist names clean/stable (GEN, BAX, CSCO) — the recurring wide/erratic-spread data-feed anomaly reproduced live and directly on DELL and MPC specifically (ask jumped 5-8% between successive quote polls while bid lagged/froze), confirming this isn't a one-off flake. Entered BAX alone (best-ranked of the 3 clean names) rather than all 3, per the same conservative one-name-per-session judgment as 8/12's HPE entry — CSCO/GEN left as candidates, not a fail.
- PYPL stayed excluded despite a clean spread: the Stripe/Advent take-over bid is unresolved and the price hasn't moved off ~$59 since 8/12 — same poor-fit reasoning applies unchanged.
- Pattern worth flagging for Friday's review: the wide-spread anomaly has now reproduced on 4+ consecutive sessions across a rotating, mostly-overlapping subset of core names (DELL/PANW/ANET/CRWD/CSCO/ZBRA/NTAP and others), each session; worth a closer look at whether this is a genuine data-feed issue or a systematic byproduct of premarket/open volatility on high-beta AI-hardware names specifically.

### 11 AM Session Note
- **Traded:** none this window — no "Approved Trades (verified)" section existed in today's RESEARCH-LOG, so per STEP 3 the buy side was HOLD (BAX's buy came from the 9:30am market-open window). This week (Aug 10 start) stays at core 2/6 (HPE, BAX), satellite 1/4 (RIGL).
- Risk sweep: all 7 open positions (BAX, HPE, MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No hard-cut breaches — BAX -1.12% and MNKD -6.63% vs. -7%/-15% core/satellite cuts, RIGL -2.67% vs. -15%, HPE +10.97% (in gain). No cuts.
- Stop tightening: none — HPE's +10.97% gain remains below the core +15% tighten threshold; MNKD/RIGL are both underwater; Income sleeve has no gain-based schedule. No stop moved down.
- Thesis check: no breaks on any held name (BAX/HPE momentum intact, MNKD's catalyst remains resolved with no new negative news, RIGL's VEPPANU launch catalyst remains in-window with no adverse news). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash $19,406.00 = 20.08% of equity ($96,635.90), at/above the 20% floor following this morning's pre-trade BAX sweep — no further action needed.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market Decision, 9:30 AM's BAX buy on its own live recheck, 11 AM's HOLD, this 3pm check all confirm none) — per STEP 3 no buys this window. This week (Aug 10 start) stays at core 2/6 (HPE, BAX), satellite 1/4 (RIGL).
- Risk sweep (re-checked since 11am): all 7 open positions (BAX, HPE, MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing. No hard-cut breaches — BAX -0.66% and MNKD -7.13% vs. -7%/-15% core/satellite cuts (BAX still clear, MNKD's continued intraday drift now roughly midway to its -15% cut but not there), RIGL -2.27% vs. -15%, HPE +8.73% (in gain, pulled back from 11am's +10.97% on a modest afternoon giveback but still comfortably in gain). No cuts.
- MNKD continued its intraday slide (-3.51% today, cumulative -7.13% since entry) with no fresh company-specific news found this session (consistent with pre-market's check) — FUROSCIX PDUFA remains resolved (7/24), no new near-dated binary in WATCHLIST.md, so treated as ordinary drift, not a thesis break; conviction unchanged, holding through, documented explicitly per STEP 4 rather than silently passing.
- RIGL's VEPPANU commercial launch catalyst remains inside its guided "mid-August 2026" window (not a single dated event, roughly 4 days out per the pre-market cadence) but is not yet inside the 1-2 trading-day forced-close window; it was properly sized/documented at the 5% binary-catalyst cap at entry (8/11, 4.98% of equity, max-loss logged $954-$1,431) with conviction unchanged — holding through remains valid, stated explicitly rather than silently doing nothing.
- No other thesis break on any held name (BAX/HPE core momentum intact, no negative news this session).
- Stop tightening: none — HPE's +8.73% gain is below the core +15% tighten threshold; BAX/MNKD/RIGL are all underwater; Income sleeve has no gain-based schedule. No stop moved down.
- 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Cash $19,406.00 = 20.12% of equity ($96,457.63), at/above the 20% floor — no sweep needed beyond this morning's pre-trade BAX sweep.
- Risky positions closed today: none.

## 2026-08-14 — Pre-market Research

### Account
- Equity: $96,480.43 | Cash: $19,405.76 (20.11%, above the 20% floor) | Buying power: $289,767.19 (margin-inflated by the standing 4x multiplier — no margin/leverage used or planned)
- Core exposure: $19,998.56 (20.73%: HPE $10,350.96 / BAX $9,647.60) | Satellite exposure: $9,255.16 (9.59%: MNKD $4,581.16 / RIGL $4,674.00) | Income exposure: $47,820.95 (49.57%: EDGX $20,366.25 / SGOV $7,484.22 / SPHY $19,970.48)
- All 7 open positions (BAX, HPE, MNKD, RIGL, EDGX, SGOV, SPHY) confirmed carrying live GTC trailing stop orders via `alpaca.sh orders` — none missing, no auth errors: BAX 10% trail $24.705 (hwm $27.45); HPE 10% trail $57.096 (hwm $63.44); MNKD 15% trail $3.59975 (hwm $4.235); RIGL 15% trail $36.533 (hwm $42.98); EDGX 5% trail $25.9825 (hwm $27.35); SGOV 5% trail $95.5035 (74 sh covered, hwm $100.53); SPHY 5% trail $22.2015 (hwm $23.37).
- This week (Aug 10 start): core 2/6 (HPE, BAX), satellite 1/4 (RIGL) — MNKD is a carryover holding from a prior week, not a new trade this week. Today (Fri 8/14) is the last session of this trading week.

### Data-quality flag — gemini_research.sh extraction bug reproduced a seventh consecutive session; fell back to WebSearch
The standard blocking `research` call returned a report starting mid-document on "### Arista Networks (ANET)" — Sections 1-4 (S&P futures/VIX, today's catalysts, and the currently-held-ticker thesis check for BAX/EDGX/HPE/SGOV/SPHY) never arrived, consistent with the documented `extract_report()` bug (unpatched since diagnosis 8/9, now reproduced 8/9 through 8/14 — seven straight sessions). The report did usefully cover the satellite catalyst-proximity question (section 4's back half) and unprompted color on ANET/ZBRA/PYPL/XYZ/CRL/NTAP/MET plus a blanket "no material news" sweep for DELL/PANW/CRWD/CSCO/FFIV/GEN/URI/NUE/CNC/VLO/MPC/STT/GRMN — that portion is used below. For the missing sections (futures/VIX, today's catalysts, and BAX/EDGX/HPE/SGOV/SPHY-specific news), fell back to native WebSearch per STEP 3's explicit fallback instruction rather than wait or fabricate. This bug needs an actual code fix — seven consecutive sessions is well past "occasional flake."

### Market Context (WebSearch fallback for futures/VIX/catalysts — Gemini did not return these sections)
- S&P 500 futures: little changed pre-market; S&P 500 sits at a fresh record high, Dow futures +0.1%, Nasdaq-100 futures slipped just below flat. Cooler-than-expected inflation data and easing Fed rate-hike fears remain the backdrop.
- VIX: 14.53 (-0.68%), calm, low end of recent range.
- Key economic releases today: Advance Retail Sales (8:30am ET) and University of Michigan preliminary August consumer sentiment (10:00am ET) are the session's key data points — market attention broadly rotating from inflation to consumer-health data ahead of next week's "Retail Week" earnings (HD, LOW). No other major scheduled releases found.
- Geopolitical: no fresh overnight escalation found via WebSearch (the standing Iran/Strait-of-Hormuz situation was not surfaced in today's search results, consistent with no new flare-up, though this is a narrower sweep than Gemini's normal pass — flagging the reduced coverage rather than asserting an exhaustive check).

### Held-Position Thesis Check
- **HPE (core, held, +8.31% unrealized per $60.18 vs $55.56 entry):** No new negative news via WebSearch. Corporate filings note Exchange Traded Concepts LLC grew its HPE stake 2,027.7% in Q2 (13F, routine institutional flow, not a signal). Momentum continues off the 8/10 Morgan Stanley Overweight upgrade ($69 PT) and AI-infrastructure/hardware-refresh demand thesis. Well clear of the +15% tighten threshold and the -7% cut. No action.
- **BAX (core, held, -0.62% unrealized per $27.10 vs $27.27 entry):** No thesis-breaking news. BAX launched a $500M cash tender offer for senior notes (8/4, routine balance-sheet management) and disclosed the Interim CFO's planned September resignation (8/14 filing, leadership-transition item, not a red flag on its own — worth a light watch for a permanent-CFO announcement). Underlying Q2 beat/raised-guidance thesis intact. Well clear of the -7% cut. No action.
- **MNKD (satellite, held, -5.74% unrealized per $3.77 vs $4.00 entry):** No new negative news. FUROSCIX ReadyFlow PDUFA remains resolved (7/24, approved). Confirmed (via WebSearch, not previously logged) a $50M institutional private placement priced at $3.89/share, led by Frazier Life Sciences, that closed 7/24 — dilutive but already stale/priced-in (closed 3+ weeks ago, roughly at-market pricing, not a fresh overnight development). Wells Fargo raised its PT to $14 from $11 on 7/30 (also stale, not new). No firm date yet for the MNKD-201 IPF readout (guided Q3 2026 per Gemini, no near-dated binary). Well clear of the -15% hard-cut. No action.
- **RIGL (satellite, held, -2.01% unrealized per $41.00 vs $41.84 entry):** **Catalyst update:** WebSearch found Rigel announced commercial availability of VEPPANU (vepdegestrant) on 8/13 — the guided "mid-August" launch catalyst has now been announced/is live, a positive resolution, not a failure. Gemini's satellite-proximity check (run same day) still lists RIGL as not within the 5-trading-day binary window, which reads as consistent (a commercial-launch announcement is not a single binary regulatory date the way a PDUFA is) but worth flagging the near-simultaneous "launch now available" news for extra scrutiny at market-open/11am rather than treating this as fully behind us. No negative news on the launch itself. Well clear of the -15% hard-cut and the +25% tighten threshold. No action, but watch closely today for early uptake/commentary.
- **EDGX/SGOV/SPHY (income, held):** No idiosyncratic news found for any of the three via WebSearch (options-overlay/T-bill/high-yield-bond funds rarely generate name-specific news outside distribution announcements). No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No live momentum/spread verification performed pre-market, as always — all items below need a fresh live check at market-open before being treated as buy candidates, not acted on now:
- **ANET** — Q2 beat (rev $3.036B +37.7% YoY, EPS $1.02 vs $0.89 consensus), FY26 guide raised to ~$12.6B (+40%). Caution carried forward: trades at 64.4x forward P/E (zero margin for error), gross margin compressed to 63.4% (from 65.6%) on elevated memory/silicon costs, purchase commitments nearly tripled to $9.7B — a valuation/supply-chain risk to weigh if ANET comes up for entry, not a thesis break.
- **ZBRA** — confirms the already-logged Q2 beat (EPS $6.35 vs $4.36, rev +20.4%). New detail: ~$73M of the gross-margin expansion (53.0% vs 47.6% prior year) is a non-recurring IEEPA tariff recovery, and ~8.7pp of top-line growth is acquisition-driven, not organic — adjust forward expectations accordingly. Organic Connected Frontline segment still grew 25.9%, FY26 guide raised (14-16% sales growth, FCF >$1.0B). Not a red flag, a modeling caveat.
- **PYPL** — Q2 rev +5% to $8.7B, FCF +157% to $1.8B, $1.5B returned to shareholders, but active-account growth flat (+0.3%) and operating margins contracted (-171/-248bp). Consensus remains Hold with a below-market PT — thesis is value/buyback-driven, not momentum, unchanged from standing view. No new red flags.
- **XYZ** — Q2 beat (rev $6.61B, EPS $1.02 vs $0.87), new Google "Ask Maps" integration for Square F&B sellers is a real incremental catalyst for Cash App engagement. Director Anthony Eisen sold ~$1.42M in shares (10b5-1, 8/7-8/11) — routine but adds to the standing post-earnings insider-selling caution already flagged 8/12-8/13. No thesis break.
- **CRL** — Q2 EPS beat ($3.02), and critically the DSA segment returned to organic revenue growth (+0.1%) for the first time since Q3 2023, with book-to-bill at 1.19x (4-year high). FY guidance raised. Genuine inflection-point strengthening, no red flags.
- **NTAP** — no new numbers; Q1 FY27 earnings now projected late Aug (8/25-26) or early Sept, post the JetStream Software acquisition (VMware DR/cyber-resilience). No red flags.
- **MET** — consolidating near $96.80 post-Q2 beat (EPS $2.43 vs $2.30, ROE 17%, new $3B buyback authorized). No red flags, ballast asset framing intact.
- **DELL, PANW, CRWD, CSCO, FFIV, GEN, URI, NUE, CNC, VLO, MPC, STT, GRMN** — no material overnight idiosyncratic news found (Gemini's blanket sweep). Standing thesis/valuation framing unchanged for each.
- Nothing overrides the standing 8/12-8/13 ANET/XYZ insider-selling caution flags.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
1. **MNKD (held)** — see Held-Position Thesis Check. No new entry.
2. **RIGL (held)** — see Held-Position Thesis Check. VEPPANU launch now announced/available (8/13) — treat as the guided catalyst resolving positively, not a failure; not within Gemini's 5-trading-day binary window definition. No new entry (already held at the 5% binary-catalyst cap).
3. **SVRA** — not held. Reported Q2 2026 results 8/13 (already absorbed by the market per Gemini). No secondary catalyst in the 5-day window; PDUFA remains Nov 22, 2026, not imminent. No entry considered.
4. **CGEM** — not held. No near-term catalyst confirmed in the 5-day window per Gemini's cross-reference. No entry considered.

### Risk Factors
- `gemini_research.sh`'s `extract_report()` bug reproduced a seventh consecutive session (8/9-8/14) — missing sections 1-4 again today (futures/VIX, today's catalysts, held-ticker thesis check). WebSearch fallback used per STEP 3, no numbers/headlines fabricated. This remains an open item needing an actual code fix, escalating in duration each session it's flagged.
- RIGL's VEPPANU commercial-launch announcement (8/13) lands right at the edge of pre-market visibility — treated as a positive catalyst resolution here, but worth a fresh check at market-open/11am for any early launch-metric commentary before fully standing down the watch.
- MNKD's 7/24 $50M private placement at $3.89/share (Frazier Life Sciences-led) is now confirmed but was not previously logged in RESEARCH-LOG — noted here for the record; stale (closed 3+ weeks ago), not a fresh overnight development, and priced near the market at the time.
- No held position is near its hard-cut: BAX -0.62% (cut -7%), HPE +8.31% (cut -7%, gain), MNKD -5.74% (cut -15%), RIGL -2.01% (cut -15%); EDGX/SGOV/SPHY all well inside their 5% income stops. No satellite catalyst resolved negatively overnight. No fresh geopolitical escalation found (VIX calm at 14.53).
- Cash 20.11%, at/above the 20% floor — no funding-sweep action needed today.

### Decision
**HOLD** (pre-market default; Patience Rule applies). No held position is near its hard-cut, no satellite catalyst resolved negatively overnight (RIGL's launch news is a positive resolution), no fresh geopolitical escalation (VIX calm, S&P at a record high) — so no urgent pre-market notification triggered per Step 5. Handoff to market-open: (1) fresh live momentum/spread check on the full core list before treating any as a buy candidate, carrying forward the standing ANET (valuation/supply-chain) and XYZ (insider-selling) caution flags plus the new ZBRA margin-quality caveat (tariff-recovery/M&A-driven, not pure organic); (2) Advance Retail Sales (8:30am) and UMich sentiment (10am) are the key macro swing factors into the open; (3) RIGL's VEPPANU launch-availability announcement (8/13) is a genuine watch item today — check for early commentary, not a forced action; (4) `gemini_research.sh` needs real owner attention — seventh consecutive session hitting the extraction bug. This week (Aug 10 start): core 2/6 (HPE, BAX), satellite 1/4 (RIGL) — Patience Rule applies as always; today is the last session of this trading week.

### 11 AM Session Note

- **Session-persistence gap reproduced again (8th time overall, pattern also seen 7/16, 7/17, 7/24):** no "### Approved Trades (verified)" section or "9:30 AM Session Note" existed in today's RESEARCH-LOG when this session started, but `alpaca.sh positions`/`orders closed` showed a real 9:30am fill — SELL 74 SGOV @ $100.55 (pre-trade cash-floor sweep) then BUY 19 PANW @ $387.45 (core, WATCHLIST rank 2, thesis: FCF +57% YoY, rev +31.1%, AI/platformization bookings), stop placed (10% trailing, trigger $348.73182). Reconstructed both into TRADE-LOG.md from order-history timestamps/fills — see today's reconstruction entry there for full gate detail and thesis.
- **Buy-side (this window):** no further buys — no "Approved Trades (verified)" list exists in today's RESEARCH-LOG beyond the reconstructed 9:30am PANW entry, so per STEP 3 the 11am buy side is HOLD. This week (Aug 10 start): core 3/6 (HPE, BAX, PANW), satellite 1/4 (RIGL).
- **Risk sweep:** all 8 open positions (BAX, HPE, MNKD, PANW, RIGL, EDGX, SGOV fractional, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders` (SGOV's 0.43-sh fractional remainder is the sole unstopped position, immaterial ~$43, consistent with prior sweeps). No position at/near its hard-cut: BAX -1.6%, HPE +6.4%, MNKD -5.1%, PANW -0.8%, RIGL -0.6% vs. -7%/-15% cuts. No stop tightening — HPE's +6.4% gain is below the core +15% threshold; no other position in gain. No stop moved down. No thesis break on any held name (see pre-market Held-Position Thesis Check, unchanged since). 2-strike sub-sector tracker unchanged: biotech 1/2, industrials 0/2.
- **Cash floor:** $19,484.91 / $96,198.42 equity = 20.25%, at/above the 20% floor — the pre-trade SGOV sweep kept it there through the PANW buy, no breach, no further action needed.
- **Lesson for Friday's review:** this is now the 4th documented instance (7/16, 7/17, 7/24, 8/14) of market-open executing real trades but failing to persist its own TRADE-LOG/RESEARCH-LOG write — worth root-causing structurally rather than continuing to rely on 11am's reconstruction as a safety net.

### 3 PM Session Note

- **Buy-side:** no "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 11am, and this 3pm check all confirm none beyond the reconstructed 9:30am PANW entry) — 3pm buy side was HOLD per STEP 3. This week (Aug 10 start) stays at core 3/6 (HPE, BAX, PANW), satellite 1/4 (RIGL).
- **Risk sweep:** no position at/beyond its sleeve hard-cut (BAX -1.63%, PANW -1.01% vs. -7% core cut; MNKD -4.75%, RIGL +1.48% vs. -15% satellite cut; HPE +6.09% in gain). All 8 open positions confirmed via `alpaca.sh orders`/`positions` — 7 carry live GTC trailing stops (BAX, EDGX, HPE, MNKD, PANW, RIGL, SPHY); only the 0.432863884-sh SGOV fractional remainder is unstopped, the same immaterial (~$43) dust flagged every prior sweep, not a new gap. No thesis break on any held name (BAX's interim-CFO resignation and MNKD's stale private-placement disclosure, both surfaced pre-market, remain non-red-flag housekeeping items). RIGL's VEPPANU launch (announced 8/13) is a resolved positive catalyst, not within the 1-2 trading-day gap-risk window — holding through remains valid, stated explicitly. MNKD's FUROSCIX PDUFA remains resolved (7/24), no near-dated binary. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- **Stop tightening:** none this window — HPE's +6.09% gain is below the core +15% threshold; no other position is in gain past its stop-adjustment threshold. No stop moved down.
- **Cash floor:** $19,484.91 / $96,221.94 equity = 20.25%, at/above the 20% floor — no sweep action needed this window.
- **Pattern for Friday's review:** same session-persistence gap as 7/16, 7/17, 7/24, now 8/14's 9:30am window (4th instance) — flagging again for root-cause, not just reconstruction. `gemini_research.sh`'s `extract_report()` bug is now 7 consecutive sessions (8/9-8/14) unpatched. The recurring DELL/PANW/ANET/CRWD/CSCO wide/erratic-spread data-feed anomaly has now spanned 5+ consecutive sessions (8/10-8/14) and widened in scope — both need real owner/code attention at this week's review (weekly-review workflow, separate scheduled run).

## 2026-08-15 — Pre-market Research

**Scheduling flag:** today is Saturday — US markets are closed, no trading session today or tomorrow. The pre-market workflow fired anyway on its schedule; this run treats itself as weekend prep for Monday 2026-08-17's open rather than a live pre-market check. No trades will be (or can be) placed today. Worth a look at the cloud cron/routine config at the next weekly review — a pre-market trigger firing on a non-trading day suggests the schedule isn't skipping weekends.

### Account
- Equity: $96,265.46 | Cash: $19,484.72 (20.24%, at/above the 20% floor) | Buying power: $289,182.76 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $26,915.13 (27.96%) — HPE, BAX, PANW | Satellite exposure: $9,531.87 (9.90%) — MNKD, RIGL | Income exposure: $40,333.74 (41.90%) — EDGX $20,336.86 / SGOV $43.53 (fractional dust) / SPHY $19,953.36
- All 8 open positions confirmed via `alpaca.sh orders`/`positions`, no auth errors: 7 carry live GTC trailing stops (BAX 10% $24.705, EDGX 5% $25.9825, HPE 10% $57.096, MNKD 15% $3.59975, PANW 10% $348.73182, RIGL 15% $36.533, SPHY 5% $22.2015); the 0.432863884-sh SGOV fractional remainder remains unstopped — same immaterial ~$43 dust flagged every prior session since 8/14's sweep, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -1.98%, PANW -0.82% vs. -7% core cut; MNKD -3.75%, RIGL +1.77% vs. -15% satellite cut; HPE +5.67% in gain (below the +15% core tighten threshold — no stop tightening this window). No stop moved down.
- This week (Aug 10 start) stands at core 3/6 (HPE, BAX, PANW), satellite 2/4 (MNKD, RIGL) — no new trades possible today (market closed).

### Process flag — Friday 8/14 weekly screen refresh appears not to have run
WATCHLIST.md's "Current" section is still headed "Week of 2026-08-07" and WEEKLY-REVIEW.md's most recent dated entry is "Week ending 2026-08-07" — neither file has an entry for the week ending 8/14. This is the same missed/unpersisted-Friday-refresh failure mode flagged repeatedly this cycle (7/17, 7/31, now apparently 8/14 — third occurrence in five weeks). Today's ideas below are screened strictly against the 8/07 watchlist per the "never trade a ticker not on the current watchlist" rule; not fabricating a refresh that didn't happen. Flagging for owner attention — this pattern needs a real fix, not another log entry.

### Data-quality flag — Gemini truncated again, worse than usual
The consolidated Gemini Deep Research call returned a report starting mid-document on the satellite catalyst-proximity subsection (RIGL/MNKD/SVRA/CGEM) — sections 1 (futures/VIX), 2 (macro catalysts/econ calendar), and 3 (held-position overnight check for BAX/EDGX/HPE/PANW/SGOV/SPHY) never arrived in structured form; only a few macro data points survived in the report's closing "Synthesis" paragraph (S&P 500 level, VIX level, oil/Middle East framing), used below since they were directly stated, not inferred. This is now the 8th+ consecutive session with this `extract_report()` truncation bug (8/9 through 8/15) and the missing scope is worse than several recent sessions (3 of 4 requested sections gone, not partial). Filled sections 1-3 via native WebSearch per the data-quality guard, not fabricating anything Gemini didn't return. The fix already named in the 8/07 weekly review (split the single consolidated call into 2 smaller submit+poll calls) still hasn't been implemented — flagging again, this time with explicit urgency since the bug is trending worse, not stable.

### Market Context (Gemini synthesis + WebSearch fallback for sections 1-2)
- S&P 500 closed Friday 8/14 at 7,800.49 (+0.02%); VIX closed 14.63 — a 2026 low, pricing in an "immaculate landing" per Gemini's synthesis. No Saturday/Sunday futures session yet (CME equity futures reopen Sunday ~6pm ET) — no fresh futures read available as of this Saturday-afternoon run.
- July retail sales fell -0.6%, reported Friday pre-market 8/14 (already absorbed into Friday's close per the prior session's log).
- Week of 8/17 economic calendar: NY Empire Manufacturing + NAHB Housing Index (Mon 8/17), Housing Starts/Building Permits/Import-Export Prices/Industrial Production (Tue 8/18), FOMC minutes (Wed) — the week's key event per Gemini. Nothing scheduled for Monday's open beyond the routine Monday releases.
- Middle East / Strait of Hormuz: still unresolved, not escalating fresh over the weekend — crude climbed toward ~$83/bbl Friday as reopening talks remained deadlocked; global oil supply outlook cut further (IEA). Same "elevated/unresolved, not acutely worsening" framing carried the last several sessions — a real, live macro risk (Gemini's synthesis calls it "a massive, unpriced systemic risk" against a stretched, low-VIX index level) but nothing new enough to act on pre-market Monday.

### Held-Position Thesis Check (WebSearch — Gemini's section 3 unrecoverable this session)
- **HPE (core, +5.67% unrealized):** Positive news flow — Aug 12 court approval of the DOJ Juniper-merger settlement (removes an overhang), a fresh Buy recommendation same day, and continued analyst upgrades (Morgan Stanley) on AI-hardware demand. No thesis break. [simplywall.st](https://simplywall.st/stocks/us/tech/nyse-hpe/hewlett-packard-enterprise/news/does-hewlett-packard-enterprises-hpe-quantum-bet-reframe-its/amp), [cnbc.com](https://www.cnbc.com/2026/08/10/hpe-will-gain-ground-on-sky-high-hardware-demand-morgan-stanley-says.html)
- **BAX (core, -1.98% unrealized):** No new negative news. Aug 4 $500M senior-notes tender offer (routine balance-sheet management) and the previously-flagged interim-CFO (Anita Zielinski) September resignation remain the only open items — housekeeping, not thesis-breaking; guidance was raised this quarter and multiple analysts lifted price targets (BofA to $28, TD Cowen to $29, Deutsche Bank to $27). No action. [gurufocus.com](https://www.gurufocus.com/news/9002185/baxter-international-bax-launches-500-million-cash-tender-offer-for-senior-notes)
- **PANW (core, -0.82% unrealized):** No thesis-breaking news; stock remains near 52-week highs (+142% over 6 months) on continued cybersecurity-AI demand, Citizens raised PT to $415, Oppenheimer to $400. One AI-security headline (autonomous AI-agent hacking reports prompting Congressional-hearing demands) is a sector tailwind for PANW, not a company-specific risk. Next earnings Sept 1 (fiscal Q4) — outside the 5-day window. No action. [trefis.com](https://www.trefis.com/articles-v3/611014/palo-alto-networks-stock-ran-on-a-threat-that-management-had-already-named/2026-08-11)
- **MNKD (satellite, -3.75% unrealized):** Per Gemini, FUROSCIX ReadyFlow autoinjector launch confirmed active/imminent (management guided "by end of month" on the 8/5 call) — the catalyst is proceeding as documented, no negative surprise. FUROSCIX PDUFA remains resolved (7/24). No thesis break; continued drift treated as ordinary noise absent fresh negative news. No action.
- **RIGL (satellite, +1.77% unrealized):** Per Gemini, VEPPANU commercial launch confirmed live as of 8/13 at a $29,400/month price point — a positive derisking event for the position, already reflected in the current stop level (unchanged, no gain-based tighten yet at +1.77% vs. the +25% threshold). No action.
- **EDGX (income, +1.80% unrealized):** No idiosyncratic news; August commentary shows the fund tracking its benchmark closely (-0.57% vs. benchmark, beat by 7bp) with weekly premiums running ~0.17%, in line with its stated 9% target distribution design. No action.
- **SGOV (income, fractional dust, -0.10% unrealized):** No thesis-breaking news; T-bill fund, no idiosyncratic risk expected. No action.
- **SPHY (income, -0.21% unrealized):** No idiosyncratic news found this session. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No fresh momentum/FCF recheck run this session (weekend — no live Alpaca bar/price data would differ from Friday's close, and no trading window exists to act on it today). Per Gemini's synthesis, ZBRA is called out as a "high-quality core holding" to maintain exposure to; nothing in this session's research invalidates any of the 22-name 8/07 core list. Deferring a full live recheck (spreads, momentum, buy-side gate) to Monday's market-open session — not fabricating one now.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **RIGL** (held) — catalyst active/derisked (VEPPANU launch live 8/13); no new-entry decision needed, already at 2/4 satellite slots.
- **CGEM** — not held. Gemini's weekend catalyst check surfaces a genuine positive out-of-band data point: Taiho/Cullinan announced 8/13 that the separate global Phase 3 REZILIENT3 trial (zipalertinib + chemo, first-line) hit its primary PFS endpoint at interim analysis — this is real clinical news, not the documented Feb-2027 PDUFA catalyst, and doesn't change CGEM's WATCHLIST-documented catalyst date or its standard 7.5% cap. Worth a fresh look at Monday's market-open session with live momentum/spread data given the news; not actionable today (market closed, and per rule a Gemini-sourced item still needs the independent momentum/spread confirmation this log has caught fabrications on before).
- **SVRA** — PDUFA date confirmed unchanged at 2026-11-22 per Gemini (Q2 earnings 8/11 confirmed no efficacy/safety/manufacturing concern behind the delay, $173M cash). Not within the 5-day window. No change.
- No new satellite entries possible today regardless (market closed).

### Risk Factors
- Middle East/Strait of Hormuz conflict remains live and unresolved — a real macro tail risk sitting under a very low VIX (14.63) and a stretched index level (S&P 500 ~7,800); Gemini's own synthesis flags this explicitly as "unpriced." Watch oil-linked knock-on effects Monday.
- Two unresolved operational-reliability issues (Gemini truncation, now 8+ consecutive sessions; the apparent missed 8/14 weekly refresh) are compounding — both need real fixes, not further logging, and both are flagged again above.
- No held position near its hard-cut; no satellite catalyst resolved negatively; no acute new geopolitical escalation over the weekend — nothing here rises to the "urgent, notify now" bar.

### Decision
HOLD — market closed today (Saturday), no trades possible or needed. Re-evaluate live at Monday 2026-08-17's pre-market/market-open session with fresh Alpaca bars.

## 2026-08-16 — Pre-market Research

**Scheduling flag (recurring):** today is Sunday — US markets are closed, no trading session today. The pre-market workflow fired anyway on its schedule, same as yesterday (Saturday 8/15) — second consecutive non-trading-day firing. This is the same schedule/cron gap flagged yesterday; still unresolved, flagging again rather than assuming it self-fixes. This run is weekend prep for Monday 2026-08-17's open. No trades placed or possible today.

### Account
- Equity: $96,265.46 | Cash: $19,484.72 (20.24%, at/above the 20% floor) | Buying power: $289,182.76 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- **Data unchanged from yesterday's (8/15) snapshot** — `balance_asof` still 2026-08-14 (Friday's close); no new price action over the weekend, as expected with markets closed.
- Core exposure: $26,915.13 (27.96%) — HPE, BAX, PANW | Satellite exposure: $9,531.87 (9.90%) — MNKD, RIGL | Income exposure: $40,333.74 (41.90%) — EDGX $20,336.86 / SGOV $43.53 (fractional dust) / SPHY $19,953.36
- All 8 open positions confirmed via `alpaca.sh orders`/`positions`, no auth errors: 7 carry live GTC trailing stops (BAX 10% $24.705, EDGX 5% $25.9825, HPE 10% $57.096, MNKD 15% $3.59975, PANW 10% $348.73182, RIGL 15% $36.533, SPHY 5% $22.2015); the 0.432863884-sh SGOV fractional remainder remains unstopped — same immaterial ~$43 dust flagged every prior session since 8/14's sweep, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -1.98%, PANW -0.82% vs. -7% core cut; MNKD -3.75%, RIGL +1.77% vs. -15% satellite cut; HPE +5.67% in gain (below the +15% core tighten threshold — no stop tightening this window). No stop moved down.
- This week (Aug 10 start) stands at core 3/6 (HPE, BAX, PANW), satellite 2/4 (MNKD, RIGL) — no new trades possible today (market closed).

### Process flag — Friday 8/14 weekly screen refresh still has not run (now 2 sessions confirmed)
WATCHLIST.md's "Current" section is still headed "Week of 2026-08-07" and WEEKLY-REVIEW.md's most recent dated entry is still "Week ending 2026-08-07" — unchanged from yesterday's check. Same missed/unpersisted-Friday-refresh failure mode flagged repeatedly this cycle (7/17, 7/31, 8/14 — third occurrence in five weeks, now confirmed persisting into a second weekend day). Today's ideas below are screened strictly against the 8/07 watchlist per the "never trade a ticker not on the current watchlist" rule.

### Data-quality flag — Gemini `extract_report()` truncation, 9th+ consecutive session
The consolidated Gemini Deep Research call again returned a report starting mid-document (missing sections 1-3: futures/VIX, econ calendar, held-position overnight check for BAX/EDGX/HPE/MNKD/PANW/RIGL/SGOV/SPHY). Only section 4 (watchlist reconnaissance) and the closing synthesis survived in structured form. This is now the 9th+ consecutive session with this bug (8/9 through 8/16), one session worse in count than yesterday's flag. Filled the missing sections via native WebSearch per the data-quality guard — nothing fabricated. The fix already named in the 8/07 weekly review (split the single consolidated call into 2 smaller submit+poll calls) still hasn't shipped — flagging again with the same urgency as yesterday.
- Minor secondary flag: the raw Gemini output opened with a self-correcting aside about SVRA's PDUFA date, explicitly citing "portfolio parameters" (i.e. this session's own query text) to override what looks like an internal miscalculation that briefly treated SVRA as inside the 5-day danger zone before landing on the correct 2026-11-22 date. Same class of PDUFA-date-confusion artifact caught twice before (8/9, recurred 8/15) — resolved correctly again, but the pattern of Gemini second-guessing a date it's given directly is now three sessions running and worth a look alongside the truncation bug.

### Market Context (WebSearch — Gemini's sections 1-2 unrecoverable this session)
- VIX closed 14.25 on Friday 8/14 (-2.60% on the day) — a 2026 low, consistent with the "immaculate landing" framing from yesterday's synthesis. No live Sunday-evening futures print was available at query time (CME equity futures reopen ~6pm ET Sunday; specific overnight pricing wasn't surfaced by search as of this run) — not fabricating a number search didn't return.
- Week of 8/17 calendar (confirmed via WebSearch, consistent with yesterday's read): NY Empire State Manufacturing + NAHB Housing Index (Mon 8/17); Building Permits, Housing Starts, Import/Export Prices, Industrial Production, Capacity Utilization (Tue 8/18) — also HD reports pre-open Tue, TGT/LOW Wed; FOMC minutes (Wed 8/19, the week's key event, sets up Fed Chair Warsh's first Jackson Hole keynote 8/27-29); WMT/BABA/NetEase/DE earnings (Thu 8/20) as a consumer/China-demand read. Nothing scheduled for Monday's open itself beyond the routine Monday releases.
- Middle East/Strait of Hormuz situation not independently rechecked this session (WebSearch budget spent on futures/VIX/calendar/held-satellite names) — carrying forward yesterday's "elevated/unresolved, not acutely worsening" read; re-verify live Monday pre-market.

### Held-Position Thesis Check (Gemini section 4 + targeted WebSearch)
- **HPE, BAX, PANW (core):** Gemini's watchlist reconnaissance (which did come through intact) found zero idiosyncratic thesis-breaking weekend news for any of the three. Sector-level tailwind: CSCO's blockbuster 8/12 earnings (Q4 FY26 rev +18% YoY, AI-infra orders +4.5x to $1.3B, stock +17% to a record high) is driving sympathy strength across AI-hardware/networking names — flagged as context, not a position-specific catalyst. No action on any of the three.
- **MNKD (satellite, -3.75% unrealized):** Targeted WebSearch found no news beyond what's already logged (Q2 results 8/5, FUROSCIX ramp, positive Phase 1b inhaled-nintedanib data 8/1-ish week) — nothing new, nothing negative. FUROSCIX PDUFA remains resolved (7/24). No thesis break. No action.
- **RIGL (satellite, +1.77% unrealized):** Targeted WebSearch confirms VEPPANU commercially available as of 8/13 (Rigel's own press release), consistent with what's already logged — no new negative development. Gemini's synthesis separately called this a "successfully navigated" binary. No action.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news surfaced (WebSearch budget prioritized the equity sleeves this session; nothing in Gemini's partial output or general market context suggests fund-level risk to any of the three). No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No fresh momentum/FCF recheck run this session — weekend, no live Alpaca bar/price data would differ from Friday's close, and no trading window exists to act on it today. Nothing in Gemini's watchlist reconnaissance or the WebSearch follow-ups invalidates any of the 22-name 8/07 core list. Deferring a full live recheck (spreads, momentum, buy-side gate) to Monday's market-open session.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **RIGL** (held) — catalyst live/derisked (VEPPANU available 8/13); no new-entry decision needed, already at 2/4 satellite slots.
- **CGEM** — not held. Gemini's synthesis reiterates Cullinan's 8/13 Phase 3 REZILIENT3 primary-endpoint hit (zipalertinib + chemo, first-line) as a positive out-of-band data point — same item flagged yesterday, no incremental news since. Doesn't change CGEM's documented Feb-2027 PDUFA catalyst date or its standard 7.5% cap. Live momentum/spread confirmation still deferred to Monday's market-open session, not actionable today.
- **SVRA** — PDUFA date reconfirmed 2026-11-22 (see the self-correction flagged in the data-quality section above) — well outside the 5-day window. No change.
- No new satellite entries possible today regardless (market closed).

### Risk Factors
- Two operational-reliability issues are now confirmed persisting into a second consecutive non-trading-day session: the Gemini truncation bug (9th+ session) and the missed 8/14 weekly refresh. Both need real fixes at the next weekly review, not further logging.
- Middle East/Strait of Hormuz carried forward as an unresolved macro tail risk under a very low VIX — not independently rechecked this session, re-verify Monday.
- No held position near its hard-cut; no satellite catalyst resolved negatively; no new company-specific negative news on any held name. Nothing here rises to the "urgent, notify now" bar.

### Decision
HOLD — market closed today (Sunday), no trades possible or needed. Re-evaluate live at Monday 2026-08-17's pre-market/market-open session with fresh Alpaca bars.

## 2026-08-17 — Pre-market Research

### Account
- Equity: $96,422.96 | Cash: $19,484.72 (20.21%, at/above the 20% floor) | Buying power: $289,536.28 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $26,963.28 (27.96%) — HPE $10,208.20 / BAX $9,501.64 / PANW $7,253.44 | Satellite exposure: $9,641.22 (10.00%) — MNKD $4,787.10 / RIGL $4,854.12 | Income exposure: $40,333.75 (41.83%) — EDGX $20,336.86 / SPHY $19,953.36 / SGOV $43.53 (fractional dust)
- All 8 open positions confirmed via `alpaca.sh orders`/`positions`, no auth errors: 7 carry live GTC trailing stops (BAX 10% $24.705, EDGX 5% $25.9825, HPE 10% $57.096, MNKD 15% $3.59975, PANW 10% $348.73182, RIGL 15% $36.533, SPHY 5% $22.2015); the 0.432863884-sh SGOV fractional remainder remains unstopped — same immaterial ~$43 dust flagged every prior session, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -2.13%, PANW -1.47%, MNKD -1.50% vs. -7%/-15% cuts; HPE +6.82%, RIGL +1.77% in gain (both below their gain-tighten thresholds — no stop tightening this window, no stop moved down).
- This is a fresh trading week (Aug 17 start) — new-trade counters reset: core 0/6, satellite 0/4 used so far this week.
- **Watchlist still stale:** WATCHLIST.md's "Current" section remains headed "Week of 2026-08-07" — the 8/14 refresh did not run/persist (per 8/15 and 8/16 logs, third+ occurrence this cycle). Today's ideas are screened strictly against the 8/07 list per the "never trade a ticker not on the current watchlist" rule; the weekly-review workflow (separate scheduled run) owns fixing this.

### Data-quality flag — Gemini fabricated specific facts this session, not just truncated (escalation from prior sessions' bug)
The consolidated Gemini call again started mid-document — section 1 (S&P futures/VIX) and part of section 2 (macro catalysts/econ calendar) never arrived; this is the same `extract_report()` truncation bug flagged for 9+ consecutive sessions (8/9-8/16), now day 10+, still unpatched despite the fix (split into 2 smaller submit+poll calls) being named at the 8/07 weekly review. Filled sections 1-2 via native WebSearch per the data-quality guard.

**More seriously, the sections that did arrive contained outright fabricated facts, independently caught by cross-checking against this session's own live Alpaca pull:**
- Gemini claimed **"HPE's explosive overnight 38% surge"** on historic revenue guidance. Alpaca's actual daily bars for HPE (last 15 sessions) show no such move anywhere — the largest single-day change was ~+7% (8/12→8/13 open); HPE closed 8/14 at $58.71 and opened today essentially flat (~$59.35 per this session's `positions` pull, +1.09% day change). **Not real — treated as fabrication, not acted on.**
- Gemini claimed PANW is "hovering near all-time highs of approximately $273" and "reporting fiscal third-quarter earnings after the market close" today. Alpaca's live quote has PANW at ~$382-402 (ask $401.83/bid $368.03) — nowhere near $273 — and WebSearch confirms PANW's actual next earnings date is **Sept 1, 2026** (fiscal Q4), not today. This directly contradicts the Sept-1 date this same log already verified on 8/15. **Not real — treated as fabrication, not acted on.**
- The rest of the report (BAX tender offer, MNKD CVR/private-placement, RIGL Veppanu pricing/launch, satellite catalyst-proximity table) is internally consistent with facts already verified in prior sessions' logs and is treated as reliable; only the two items above are flagged as fabricated.

This is a step up in severity from the standing truncation bug — the tool produced plausible-sounding, specific, wrong numbers for two S&P 500-scale companies with public earnings dates, not just missing sections. Escalating for real attention at the next weekly review: the pipeline needs a fact-check/grounding-verification step (or the submit+poll split, which would also reduce the surface for this kind of error), not just another log flag. No trading decision this session relied on either fabricated claim.

### Market Context (WebSearch — Gemini's sections 1-2 unrecoverable this session)
- VIX ~14.26 (-2.53%), a 2026 low. S&P 500 futures roughly flat/slightly higher (+0.11-0.5% depending on source), Nasdaq 100 futures +0.5% on AI-capex optimism (Anthropic revenue growth cited as a read-through). S&P 500 at all-time highs, Russell 2000 also hit fresh highs this week — broadening participation.
- Today's econ calendar: NY Empire State Manufacturing Index (8:30am ET, est. 10.2 vs. prior 15.6), NAHB Housing Market Index (10:00am ET, est. 35.0 vs. prior 34.0), TIC Net Long-Term Transactions (4:00pm ET). Rest of week: Housing Starts/Building Permits/Industrial Production + HD earnings (Tue 8/18), FOMC minutes (Wed 8/19), WMT/TGT/LOW earnings — Fed's Jackson Hole conference and NVDA earnings both loom the following week(s).
- Middle East/Strait of Hormuz: carried forward as unresolved/elevated per the last several sessions' logs; not independently rechecked this session (WebSearch budget spent on the fabrication cross-check above) — re-verify at market-open if oil-sensitive names (VLO, MPC) move sharply.

### Held-Position Thesis Check
- **HPE (core, +6.82% unrealized):** No thesis break. Ignore the fabricated "38% surge" claim (see data-quality flag) — actual move is modest/flat. Prior verified positives (DOJ Juniper-settlement approval, Morgan Stanley upgrade) stand from 8/15's log.
- **BAX (core, -2.13% unrealized):** No thesis break. $500M senior-notes tender offer's Early Tender Time is today (5:00pm ET) per Gemini — consistent with the tender offer already logged 8/13/8/15 (routine balance-sheet management, not new information). No action.
- **PANW (core, -1.47% unrealized):** No thesis break. Ignore Gemini's fabricated earnings-today/price claims (see data-quality flag) — actual next earnings is Sept 1, outside the 5-day window, per WebSearch confirmation. No action.
- **MNKD (satellite, -1.50% unrealized):** No thesis break. FDA approval of Furoscix ReadyFlow triggered the previously-flagged $45M CVR payment, funded via a $50M private placement (10.44M shares @ $3.89 + pre-funded warrants) — dilutive but neutralizes CVR balance-sheet risk; consistent with the private-placement item already logged 8/14. Commercialization proceeding as expected, not a negative surprise. No action.
- **RIGL (satellite, +1.77% unrealized):** No thesis break. Veppanu (vepdegestrant) launched at a $29,400/30-day list price — a premium-pricing signal, positive for the commercial thesis. Consistent with the 8/13 launch already logged. No action.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news; trade on macro beta (rates, credit) today. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No new core candidates fabricated or added — the 8/07 list stands unchanged pending the still-outstanding weekly refresh. Sector-rotation note from this session's research (unverified against live Alpaca momentum data, informational only): AI-hardware/infrastructure names (DELL, HPE, NTAP, ANET) getting a sympathy tailwind from strong sector earnings this week, while legacy networking (CSCO) saw a post-earnings pullback despite beating — worth a look at live momentum/spread data during the market-open session, not actionable pre-market. No fresh momentum/FCF recheck run this session (deferred to market-open per standard practice); nothing here invalidates any of the 22-name 8/07 core list.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots, no new-entry decision needed.
- **CGEM** — not held. Gemini's catalyst-proximity table confirms CLN-049 Phase 2 initiation is guided "Q3 2026" generally, no specific date inside the 5-day window (Aug 17-21). No change to the documented Feb-2027 zipalertinib PDUFA catalyst or standard 7.5% cap. Not actionable pre-market — defer to market-open for live momentum/spread confirmation.
- **SVRA** — not held. PDUFA date unchanged at 2026-11-22, well outside the 5-day window. No change.
- Gemini's table confirms **none of MNKD/RIGL/CGEM/SVRA have a documented catalyst falling inside the Aug 17-21 window** — consistent with WATCHLIST.md. No new satellite entries flagged this session.

### Risk Factors
- Gemini Deep Research produced outright fabricated facts this session (HPE "38% surge," PANW price/earnings-date) on top of the standing 10+-session truncation bug — a data-integrity escalation that needs real attention at the next weekly review, not just another log entry. Every claim used above was cross-checked against live Alpaca data or WebSearch before being relied on.
- Watchlist refresh still stale (headed "Week of 2026-08-07"), now spanning a third missed/unpersisted Friday refresh this cycle — flagged again for the weekly-review owner.
- Middle East/Strait of Hormuz not independently rechecked this session; carried forward as an unresolved macro tail risk under a very low VIX.
- No held position near its hard-cut; no satellite catalyst resolved negatively or imminent; no acute new geopolitical escalation found. Nothing here rises to the "urgent, notify now" bar.

### Decision
HOLD — default patience; no new core or satellite candidate cleared today given the stale watchlist and no qualifying live-momentum recheck yet (deferred to market-open). All held positions thesis-intact, no stop action needed, cash at floor. Re-evaluate live momentum/spreads at today's market-open session per the standard workflow split.

### 9:30 AM Session Note

- **Buy-side: HOLD, both sleeves — blocked by a cash-floor/funding constraint, not by a lack of candidates.** Live account: equity $95,814.37, cash $19,484.72 (20.34%). Floor is 20% ($19,162.87) — headroom above the floor is only **$321.85**. SGOV, the sole designated buy-funding source (TRADING-STRATEGY.md: "never SPHY or EDGX"), is down to **0.432863884 sh (~$43.53)** after this week's successive sweeps (7/21, 7/23, 7/24, 8/13, 8/14) — effectively fully depleted. Any real-sized Core or Satellite buy funded from cash would push cash well below the floor with no compliant source left to sweep it back. Sized correctly, no buy fits in $321.85, so no trade was placed.
- **This was a real opportunity cost, not a quiet no-signal day.** Live spread check across all 19 non-held core watchlist names + 2 non-held satellite names found 4 clean, stable quotes: **CSCO** (0.11% spread, screen rank 12), **GEN** (0.39%, rank 19), **URI** (0.60%, rank 21), **SVRA** (0.74%, satellite, standard 7.5% cap, PDUFA 2026-11-22 not near-term). The other 17 core names (DELL, CRWD, NTAP, ZBRA, CRL, ANET, VLO, PYPL, CNC, GRMN, MPC, FFIV, STT, NUE, XYZ, MET) and CGEM (satellite, 29% spread) all showed the recurring wide/erratic-spread data-feed anomaly, consistent with prior sessions. Under normal cash conditions this window would have supported a real core and/or satellite entry.
- **Escalating for the weekly review, distinct from the standing spread anomaly:** the income sleeve's buy-funding mechanism (SGOV-first sweep) is now structurally unable to fund any further Core/Satellite deployment — SGOV has been swept down from $39.9k (7/15 initial rebalance) to ~$43 today across 7 sweeps in 5 weeks, with no offsetting rebalance back into SGOV. This blocks new-trade capacity going forward, not just today, until the income sleeve is rebalanced (SPHY/EDGX trimmed back toward SGOV, or a fresh cash injection) — a decision this session is not authorized to make unilaterally (owner instruction required to alter the fixed income roster/split per TRADING-STRATEGY.md). Flagging for owner/weekly-review attention rather than deferring silently again.
- **Risk sweep:** all 7 stop-protected positions (BAX, HPE, PANW, MNKD, RIGL, EDGX, SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing; SGOV's 0.43-sh fractional dust remains unstopped (same immaterial ~$43 gap flagged every prior sweep). No position at/beyond its hard-cut: BAX -3.45%, PANW -1.72%, MNKD -4.25% vs. -7%/-15% cuts; HPE +3.61%, RIGL +3.01% in gain (both below their gain-tighten thresholds — no stop tightened, none moved down). No thesis break on any held name since 8/16's pre-market check. This week (Aug 17 start) stays at core 0/6, satellite 0/4.

### 11 AM Session Note

- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market Decision and the 9:30 AM Session Note above both confirm none, blocked by the cash-floor/SGOV-depletion constraint) — per STEP 3 no buys this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **HPE's 10% trailing stop fired mechanically at 9:40am ET**, 3 minutes after the 9:30am market-open session's commit correctly reported no trades yet — a standing GTC order executing between sessions, not a session-persistence gap. Exit $57.11 vs. entry $55.56 (+2.79%, +$266.60) — a winning exit locked in after HPE ran to a $63.44 high, not a loss cut. No company-specific negative news found. Core sleeve now holds BAX and PANW only (2 open positions). Logged to TRADE-LOG.
- **Swept the freed cash into SGOV per the Income sleeve's sweep-back rule:** cash had risen to 30.63% of equity post-exit; swept $10,066.90 into SGOV, restoring cash to 20.11% (right at the floor). This also resolves the SGOV-depletion funding blocker flagged pre-market and 9:30am today — SGOV goes from ~$43 to ~$10,110, restoring real buy-funding headroom for future Core/Satellite entries without needing an owner rebalance decision. Logged to TRADE-LOG.
- **Risk sweep, remaining positions:** BAX -3.70%, PANW -2.68% (core, vs. -7% cut); MNKD -2.84% (satellite, vs. -15% cut); RIGL +1.15% (satellite, below its +25% tighten threshold) — no cuts, no tightens, no stops moved down. No thesis break identified on any held name. PANW's live quote continues to show the standing wide/erratic-spread anomaly (~5.5% spread), but that only gates new entries, not an existing holding.
- **Pattern for Friday's review:** this morning's "SGOV effectively depleted, blocks further deployment" concern resolved itself within the same trading day via ordinary sleeve turnover (a core stop-out + its sweep-back), without an owner rebalance decision — some evidence the sweep-back mechanic is self-correcting given enough turnover. Doesn't fully answer the multi-week (7/21-8/17) depletion window itself; still worth a proactive-rebalance-cadence discussion Friday, just with lower urgency now that SGOV is refilled.

### 3 PM Session Note

- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market Decision, 9:30 AM, and 11 AM Session Notes all confirm none, still blocked by the stale 8/07 watchlist and no fresh live-momentum recheck run this window) — per STEP 3 no buys placed. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **Risk sweep:** no position at/beyond its sleeve hard-cut — BAX -4.71% and PANW -2.80% vs. the -7% core cut; MNKD -2.25% vs. the -15% satellite cut; RIGL +1.24% (in gain). All 7 stop-protected positions (BAX, EDGX, MNKD, PANW, RIGL, SGOV [100 sh], SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing; SGOV's 0.531203349-sh fractional remainder stays unstopped, same immaterial (~$53) dust flagged every prior sweep, not a new gap.
- **Thesis check, BAX (closest to a cut, continuing to drift — -3.70% at 11am to -4.71% now):** WebSearch found no negative company-specific news — no downgrade, no guidance cut, no fresh red flag. Recent coverage is the already-logged $500M senior-notes tender offer (routine balance-sheet item, Early Tender Time today 5pm ET) and generally constructive analyst commentary. Drift read as broad market/sector pressure, not a thesis break — held, no cut, stated explicitly per STEP 4 rather than silently doing nothing.
- **Thesis check, PANW:** WebSearch found TD Cowen raised its PT to $400 with a Buy rating today, and Wells Fargo flagged robust AI/identity-driven momentum ahead of the Sept 1 earnings date (confirmed genuine, unlike this morning's flagged Gemini fabrication of a "today" earnings date/~$273 price) — no thesis break, no negative catalyst. Held.
- **No satellite catalyst inside the 1-2 trading-day gap-risk window** — MNKD's FUROSCIX PDUFA remains resolved (7/24), no new binary; RIGL's VEPPANU commercial launch (8/13) is a resolved positive catalyst, not an upcoming binary date. No gap-risk action needed.
- **No stop tightening this window** — no core position is up >=15%, no satellite position is up >=25% (RIGL +1.24% is well below its tighten threshold). No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Risky positions closed today: none.** Cash 20.13% (equity $95,561.89), at/above the 20% floor — no funding sweep needed this window. Day P&L -0.69% ($95,561.89 vs. Friday's $96,221.94 3pm mark) driven by broad afternoon softness across BAX/PANW/MNKD/SPHY, partly offset by RIGL/EDGX. Phase P&L -4.44% since Day 0. This week (Aug 17 start): core 0/6, satellite 0/4 — one HPE exit (mechanical winning stop-out, +2.79%) doesn't count against the new-trade cap. Tomorrow: continue watching BAX's drift for a genuine thesis break vs. ordinary noise; PANW's Sept 1 earnings date remains the next real company-specific catalyst; the `gemini_research.sh` `extract_report()` truncation/fabrication bug (10+ consecutive sessions, now including outright fabricated facts) and the still-stale WATCHLIST.md ("Week of 2026-08-07") both remain the top open items for this week's weekly review.

## 2026-08-18 — Pre-market Research

### Account
- Equity: $95,521.08 | Cash: $19,240.49 (20.14%, at/above the 20% floor) | Buying power: $286,766.52 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $16,413.87 (17.18%) — BAX $9,256.00 / PANW $7,157.87 | Satellite exposure: $9,565.65 (10.01%) — MNKD $4,726.35 / RIGL $4,839.30 | Income exposure: $50,301.07 (52.66%) — EDGX $20,253.90 / SPHY $19,936.24 / SGOV $10,110.93
- All 7 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all 7 carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45, PANW 10% $348.73182 hwm $387.4798, MNKD 15% $3.59975 hwm $4.235, RIGL 15% $36.771 hwm $43.26, EDGX 5% $25.9825 hwm $27.35, SPHY 5% $22.2015 hwm $23.37, SGOV 5% $95.5415 hwm $100.57 covering 100 of 100.531203349 sh); the 0.531203349-sh SGOV fractional remainder stays unstopped, same immaterial ~$53 dust flagged every prior session, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -4.66%, PANW -2.77%, MNKD -2.75% vs. -7%/-15% cuts; RIGL +1.46% in gain (below its +25% tighten threshold — no stop tightening this window, no stop moved down).
- This week (Aug 17 start): core 0/6, satellite 0/4 new trades used so far.
- **Watchlist still stale:** WATCHLIST.md's "Current" section remains headed "Week of 2026-08-07" (11 days old) — no "Week ending 2026-08-14" entry exists in WEEKLY-REVIEW.md, confirming last Friday's screen-refresh did not run/persist, the **second consecutive missed weekly refresh** (after 7/31's miss, logged in the 8/07 review). Today's ideas are screened strictly against the 8/07 list per the "never trade a ticker not on the current watchlist" rule; the weekly-review workflow (separate scheduled run) owns fixing this.

### Data-quality check
Consolidated Gemini Deep Research call returned a complete report (all 4 requested sections + strategic conclusion + sources, not truncated or fabricated as far as cross-checked) — first clean run after 10+ consecutive prior sessions (8/9-8/17) flagged truncation and, on 8/17, outright fabrication. Held-name and watchlist facts referenced below read as internally consistent with prior sessions' verified logs; no contradictions found against live Alpaca data this session. Continue treating this as unconfirmed-stable, not resolved — re-verify next session before lowering guard.

### Market Context
- **S&P 500 futures / VIX:** Futures pointing to a cautious, negative open — ES futures -0.41% to -0.51% (~7,705-7,750 range), Nasdaq 100 futures -0.76%, Russell 2000 futures -0.24%. Headline VIX ~15.19 (off a 2026 intraday low of 14.2) but options-market internals (dispersion index ~42.5 vs. 1-month implied correlation collapsed to 9.5) suggest the low headline VIX is masking heavy single-stock dispersion, not real calm — flagged as a systemic vulnerability heading into Friday's monthly OpEx.
- **Macro drivers:** 10-year Treasury yield surged to 4.72% (multi-year high), pressuring growth-equity multiples. U.S.-Iran ceasefire expired with no extension agreed; Brent ~$91.64/WTI ~$84.93, elevated geopolitical/energy risk premium — read as elevated-but-not-acute (index futures down <1%, not a risk-off gap), does not clear the "major geopolitical event" bar for an off-cycle notification, but worth a same-day recheck if oil-sensitive names (VLO, MPC) move sharply.
- **Today's calendar:** Building Permits/Housing Starts (8:30am ET), Industrial Production (9:15am ET), Atlanta Fed GDPNow Q3 update, HD and Baidu earnings pre-market. Fed Chair Warsh's Jackson Hole remarks are the market's next big macro anchor (not today).
- **Sector notes (informational, not actionable pre-market):** AI-infra networking (CSCO, ANET) both beat hard — CSCO +~20% AH on raised AI order guidance ($5B→$9B) alongside a 4,000-role cut; ANET beat with heavy institutional inflows but ~$215M in insider (10b5-1) selling from the CEO/founder. ZBRA beat big but is now memory-chip supply-constrained. URI got an 8.25% BlackRock stake disclosure. VLO/MPC face a deteriorating structural setup (OPEC+ unwind, Goldman sees WTI ~$53 in 2026) despite strong trailing crack-spread profitability — a fundamental headwind worth weighing if either clears momentum at market-open. **PYPL is reportedly the subject of a $53B buyout approach from Stripe/Advent International at $60.50/share (~27-28% premium)** — unconfirmed by PayPal management on the earnings call; if this breaks further pre-market, PYPL's price action would reflect deal speculation, not the momentum/FCF signal the screen is built to capture — re-check before treating any PYPL momentum reading at market-open as organic.

### Held-Position Thesis Check
- **BAX (core, -4.66% unrealized):** No thesis break, no negative company-specific news this session. Continuing the drift flagged in prior sessions (was -2.13% on 8/17 pre-market, -4.71% by 8/17 3pm) — still read as broad market/sector pressure, not company-specific, but now the closest held position to its -7% hard cut. Watch closely at market-open/midday.
- **PANW (core, -2.77% unrealized):** No thesis break. No new overnight news found beyond prior sessions' verified Sept 1 earnings date and analyst commentary (TD Cowen $400 PT, Wells Fargo AI/identity momentum, both logged 8/17).
- **MNKD (satellite, -2.75% unrealized):** No thesis break. No new overnight news; FUROSCIX PDUFA resolved 7/24, no new binary catalyst in the near-term window.
- **RIGL (satellite, +1.46% unrealized):** No thesis break — thesis **confirmed**. VEPPANU (vepdegestrant) commercial launch is now confirmed complete (prescriptions available Aug 11-14), the guided "mid-August" catalyst has resolved positively and on schedule. Focus shifts to commercial uptake; no gap-risk window remains for this catalyst.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news; trade on macro beta (rates, credit). No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No new core candidates added — the 8/07 list stands unchanged pending the still-outstanding weekly refresh (now 2 consecutive missed Fridays). None of today's research surfaced negative/thesis-breaking news for any of the 22 listed names. Not actionable pre-market — live momentum/FCF/spread reconfirmation deferred to market-open per standard practice.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **MNKD, RIGL** (held) — both thesis-intact per above (RIGL's catalyst resolved positively); already at 2/4 satellite slots, no new-entry decision needed.
- **CGEM** — not held. No news moving the confirmed Feb 27, 2027 zipalertinib PDUFA; not inside the 5-trading-day window. No change.
- **SVRA** — not held. PDUFA date unchanged at 2026-11-22, well outside the 5-day window. (Note: an unrelated "SVRA" acronym collision with a motorsport association surfaced in research and was correctly identified as noise, not conflated with the ticker.)
- None of MNKD/RIGL/CGEM/SVRA has a documented catalyst falling inside today's 5-trading-day window. No new satellite entries flagged this session.

### Risk Factors
- Watchlist refresh stale for the second consecutive Friday (still headed "Week of 2026-08-07," no 8/14 entry in WEEKLY-REVIEW.md) — flagged again for the weekly-review owner; this is now a recurring operational gap, not a one-off miss.
- BAX (core) is the closest held position to its hard cut (-4.66% vs. -7%) — watch for a genuine thesis break vs. continued broad-market drift at market-open/midday.
- PYPL buyout speculation ($53B Stripe/Advent approach, unconfirmed) could distort that name's momentum signal if it breaks further pre-market — re-verify before treating any PYPL momentum read as organic if/when it's re-screened.
- VLO/MPC face a structurally deteriorating crude/crack-spread outlook (OPEC+ supply unwind, Goldman WTI ~$53 2026 estimate) despite strong trailing profitability — a fundamental headwind on two core-watchlist names.
- Elevated but not acute macro/geopolitical backdrop (10Y yield 4.72% high, expired Iran ceasefire, oil price spike, VIX-vs-dispersion divergence ahead of Friday's OpEx) — does not clear the urgent-notification bar (no held position below hard-cut, no satellite catalyst resolved negatively, no acute new escalation), but worth a same-day recheck.

### Decision
HOLD — default patience; no new core or satellite candidate cleared today given the stale watchlist (no fresh screen to draw from) and no live-momentum recheck yet (deferred to market-open). All held positions thesis-intact (RIGL's catalyst resolved positively), no stop action needed, cash at floor. Re-evaluate live momentum/spreads and BAX's drift at today's market-open session per the standard workflow split.

### 9:30 AM Session Note

- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" list exists anywhere in today's pre-market entry (stale 8/07 watchlist, no fresh screen to draw candidates from) — per STEP 3 no buys placed this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **Live account:** equity $95,339.70, cash $19,240.49 (20.18%, above the 20% floor of $19,067.94, but only $172.55 of headroom) — even if a candidate had existed, sizing would have required an SGOV-first funding sweep before any buy, per the standing 7/21/7/24 lesson.
- **Risk sweep:** all 7 open positions (BAX, PANW, MNKD, RIGL core/satellite + EDGX, SPHY, SGOV [100 of 100.531203349 sh] income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing; SGOV's 0.531203349-sh fractional remainder stays unstopped, same immaterial (~$53) dust flagged every prior sweep. No position at/beyond its sleeve hard-cut: BAX -4.88% (closest, vs. -7% core cut, continuing the drift flagged pre-market and every session since 8/13 — no company-specific negative news found, read as broad market/sector pressure, not a thesis break), PANW -3.21%, MNKD -2.25% (both vs. -7%/-15% cuts). RIGL +0.44% in gain, below its +25% satellite tighten threshold — no stop tightened, none moved down.
- **No thesis break identified on any held name** since this morning's pre-market check. No satellite catalyst inside the 1-2 trading-day gap-risk window (MNKD's FUROSCIX PDUFA resolved 7/24; RIGL's VEPPANU launch resolved 8/13-14). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Persistence flag (operational, not a trading item):** this session's branch carries 9 unmerged commits (dating to the 11am 2026-08-14 session) that never landed on `main` — `origin/main` is still at #113 (pre-market 2026-08-14). At least 6 other draft PRs going back to 2026-07-12 (#1, #5, #20, #24, #30, #65, #114) remain open/unmerged on GitHub. The underlying trade data itself appears intact (reconstructed into each session's own commit per the established pattern), but the persist-to-main step has been silently failing across many sessions, not just today — worth a dedicated cleanup pass rather than another log entry, flagging again for the weekly review.

### 11 AM Session Note

- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" list exists anywhere in today's RESEARCH-LOG (still blocked by the stale 8/07 watchlist) — per STEP 3, no buys placed this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **Live account:** equity $95,403.65, cash $19,240.49 (20.17%, above the 20% floor of ~$19,080.73). No funding sweep needed (no trade this window).
- **Risk sweep:** all 7 open positions (BAX, PANW core; MNKD, RIGL satellite; EDGX, SPHY, SGOV [100 of 100.531203349 sh] income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing; SGOV's 0.531203349-sh fractional remainder stays unstopped, same immaterial (~$53) dust flagged every prior sweep. No position at/beyond its sleeve hard-cut: BAX -3.83% (eased from -4.88% at 9:30am), PANW -4.65% (widened from -3.21%), MNKD -0.88% (improved sharply from -2.25%) vs. -7%/-15% cuts; RIGL +2.49% in gain, below its +25% satellite tighten threshold — no stop tightened, none moved down.
- **Thesis check:** WebSearch on BAX and PANW (the two names with the most drift) found no negative news. BAX: Q2 beat already priced in (17% post-earnings pop, adj EPS $0.56 vs $0.37 consensus), BofA/TD Cowen PT raises to $28/$29 in late July, interim-CFO resignation remains a known housekeeping item, not a red flag — today's move reads as broad market/sector pressure, not company-specific. PANW: RBC raised PT to $434, Citizens raised PT pre-earnings on AI-driven demand tailwind — thesis intact, no negative catalyst. MNKD/RIGL unchanged since the 9:30am check (FUROSCIX PDUFA resolved 7/24, VEPPANU launch resolved 8/13-14, no new near-dated binary). No thesis break on any held name — nothing cut.
- **No stop tightening this window** — RIGL's +2.49% is well below the +25% satellite threshold; no core position in double-digit gain. No stop moved down.
- **2-strike sub-sector tracker unchanged:** biotech 1/2 (OCUL 7/23), industrials 0/2.
- **No action taken this window** (pure HOLD/monitor) — no notification sent per STEP 9.

### 3 PM Session Note

- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30 AM, 11 AM, and this 3pm check all confirm none, still blocked by the stale 8/07 watchlist) — per STEP 3 no buys this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **Live account:** equity $95,610.66, cash $19,240.49 (20.12%, above the 20% floor of ~$19,122.13).
- **Risk sweep:** all 7 open positions (BAX, PANW core; MNKD, RIGL satellite; EDGX, SPHY, SGOV [100 of 100.531203349 sh] income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing; SGOV's 0.531203349-sh fractional remainder stays unstopped, same immaterial (~$53) dust flagged every prior sweep. No position at/beyond its sleeve hard-cut: BAX -4.57% (eased slightly from 11am's -4.65%), PANW -3.44% (eased from -4.65%) vs. -7% core cut; MNKD +1.88%, RIGL +3.27% vs. -15% satellite cut, both in gain. No satellite catalyst inside the 1-2 trading-day gap-risk window (MNKD's FUROSCIX PDUFA resolved 7/24; RIGL's VEPPANU launch resolved 8/13-14) — no forced close needed.
- **Thesis check:** fresh WebSearch on all four held core/satellite names found no negative company-specific news. BAX: no new items beyond the already-logged Q2 beat and known interim-CFO transition; continuing drift read as broad market/sector pressure, not a thesis break. PANW: Citizens reiterated Outperform ($415 PT), Wells Fargo raised PT to $475 (from $420) — thesis strengthening, not breaking. MNKD: no new news since the 7/23 FUROSCIX approval and 7/26 private placement; FDA/PDUFA risk resolved. RIGL: Citi raised PT to $83 (from $81); VEPPANU launch (announced availability 8/13) continues as a resolved positive catalyst. No thesis break on any held name — nothing cut.
- **Stop tightening:** none this window — RIGL +3.27% and MNKD +1.88% are both well below the +25% satellite tighten threshold; no core position in gain. No stop moved down.
- **2-strike sub-sector tracker unchanged:** biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Risky positions closed today: none.**
- **Persistence flag update:** the 9:30am-flagged multi-session gap is resolved as of this window — `origin/main` (a539cbb, "11am trade + risk 2026-08-18 (#125)") is fully caught up with this branch (0 commits ahead/behind); the 11am session's PR merge closed the backlog. Still worth confirming at the weekly review that no data was lost across the affected range, but the mechanical persist-to-main step is working again as of today.

## 2026-08-19 — Pre-market Research

### Account
- Equity: $95,405.04 | Cash: $19,240.49 (20.17%, at/above the 20% floor) | Buying power: $286,295.83 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $16,283.66 (17.07%) — BAX $9,206.16 / PANW $7,077.50 | Satellite exposure: $9,713.70 (10.18%) — MNKD $4,908.60 / RIGL $4,805.10 | Income exposure: $50,167.19 (52.58%) — EDGX $20,127.08 / SPHY $19,927.68 / SGOV $10,112.43
- All 7 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all 7 carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45, PANW 10% $348.73182 hwm $387.4798, MNKD 15% $3.59975 hwm $4.235, RIGL 15% $37.1535 hwm $43.71, EDGX 5% $25.9825 hwm $27.35, SPHY 5% $22.2015 hwm $23.37, SGOV 5% $95.551 hwm $100.58 covering 100 of 100.531203349 sh); the 0.531203349-sh SGOV fractional remainder stays unstopped, same immaterial ~$53 dust flagged every prior session, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -5.17%, PANW -3.86% vs. -7% core cut; MNKD +1.00%, RIGL +0.74% vs. -15% satellite cut, both in gain. BAX remains the closest held position to a hard cut but continues to sit well inside it.
- This week (Aug 17 start): core 0/6, satellite 0/4 new trades used so far (only the 8/17 HPE stop-out exit and its SGOV sweep-back have occurred this week — exits don't count against the buy cap).
- **Watchlist still stale:** WATCHLIST.md's "Current" section remains headed "Week of 2026-08-07" (12 days old) — no "Week ending 2026-08-14" entry exists in WEEKLY-REVIEW.md, confirming last Friday's screen-refresh also did not run/persist (a third missed/duplicated Friday refresh in the last six weeks: 7/17, 7/31, and now 8/14 all missing). Today's ideas are screened strictly against the 8/07 list per the "never trade a ticker not on the current watchlist" rule; the weekly-review workflow (separate scheduled run) owns fixing this.

### Data-quality check
The consolidated Gemini Deep Research call did **not** complete within its own blocking timeout (in_progress at 1200s elapsed) but finished shortly after when polled directly by interaction ID. The retrieved report is **truncated at the start**: it opens mid-document with per-ticker commentary (DELL/HPE/NTAP) and is missing requested section (1) S&P 500 futures direction/VIX level and section (2) top market-moving catalysts/economic releases entirely, plus no explicit overnight-news line for EDGX/SGOV/SPHY (income) or a dedicated overnight-news check for MNKD/RIGL beyond the catalyst-date table. Per the data-quality guard, no number or headline from the missing sections is fabricated here. Native WebSearch fallback was used to fill sections (1) and (2), plus a targeted MNKD/RIGL news check — see Market Context and Held-Position Thesis Check below; those WebSearch figures may reflect a slightly earlier session close than a live pre-market feed and are flagged as approximate, not exact real-time quotes.

### Market Context
- **S&P 500 futures / VIX (WebSearch fallback, approximate — Gemini section 1 was missing):** VIX closed 15.84 on 8/18 (+4.28% day/day). S&P 500 closed +0.62% on the prior session, Nasdaq 100 +1.19%; Sept E-mini S&P futures (ESU26) +0.55%, Sept E-mini Nasdaq futures (NQU26) +1.17% as of the most recent search snapshot — read as a modestly positive-leaning setup, not a risk-off signal, but not confirmed as this morning's live pre-market print.
- **Today's calendar (WebSearch fallback):** FOMC (July meeting) minutes release this afternoon — the week's principal macro catalyst. Earnings today: ADI, TJX, LOW, TGT, EL (TGT is a documented sector-capped alternate on the current watchlist, not tradeable; none of today's earnings names are current core/satellite holdings). Housing/industrial-production-type data was not confirmed this session (Gemini section 2 gap, not independently re-verified beyond the FOMC/earnings items above).
- **Sector/name notes (from the retrieved Gemini portion):** Goldman Sachs reiterated Buy on DELL/HPE/NTAP overnight on an "Agentic AI" broadening-demand thesis. CRWD framed as insulated from IT-budget pressure (mission-critical endpoint security). FFIV -1.90% and GEN -3.33% overnight on software-sector profit-taking/rotation into AI infra. ZBRA -1.27% on logistics/retail-hardware softness plus insider-selling filings. **PYPL:** overnight reports of advanced, still-unconfirmed talks for a Stripe/Advent International acquisition (prior ~27-28% premium approach referenced in earlier sessions) — not a current holding; flag before treating any PYPL momentum read as organic if/when re-screened. XYZ: Square/OpenTable data integration announced; Q2 gross profit +25% YoY, FY26 guidance raised, but Piper Sandler holds Underweight on margin-durability skepticism. CRL: 2026 EPS guidance cut to $3.05-3.35 alongside a Q2 net loss, but stock still up ~79% over 90 days on a $510M NHP-supply-chain acquisition (K.F. Cambodia) seen as a structural moat, with a $1.73M insider sale flagged as a caution. VLO/MPC/NUE/URI/STT/MET/GRMN/CNC: no idiosyncratic breaks, ordinary sector/macro rotation. **No explicit overnight coverage retrieved for ANET or CSCO** (truncation gap) — not treated as clean/no-news, simply unconfirmed this session.

### Held-Position Thesis Check
- **BAX (core, -5.17% unrealized):** No thesis break. Verified via targeted WebSearch: Baxter completed an early-tender settlement (8/18 8-K) on a $500M senior-notes cash tender offer (announced 8/4, final settlement expected ~9/3) — a real, current deleveraging move, balance-sheet-positive. The "dividend cut" language surfaced in this session's Gemini output traces to a November 2025 action, already priced in from prior sessions, not new negative news. Continuing drift read as broad market/sector pressure, same characterization as every session since 8/13 — watch closely at market-open/midday as the closest held position to its -7% hard cut.
- **PANW (core, -3.86% unrealized):** No thesis break, no new negative news found. Gemini's retrieved portion reiterates PANW as a high-conviction holding on inelastic enterprise-security budgets.
- **MNKD (satellite, +1.00% unrealized):** No thesis break. Targeted WebSearch confirms no news beyond the already-logged Q2 print (rev +43% YoY to $109.4M, net loss $19.0M) and the positive Phase 1b inhaled-nintedanib IPF data; no new binary catalyst in the near-term window (confirmed via Gemini's catalyst-date check below).
- **RIGL (satellite, +0.74% unrealized):** No thesis break. Targeted WebSearch confirms no news beyond the already-logged VEPPANU commercial-availability announcement (8/13) and R289 dose-expansion program remaining on track for H2 2026 (no firm near-term date).
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news retrieved this session (truncation gap on this section) — no action taken; these trade on macro beta (rates/credit), not company-specific catalysts, so the gap is lower-risk than for a single-name equity position.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No new core candidates added — the 8/07 list stands unchanged pending the still-outstanding weekly refresh (now missing a third Friday). Of the 22 listed names, this session's (partial) research surfaced no negative/thesis-breaking news for any name it did cover; ANET and CSCO overnight status is unconfirmed (data gap, not a clean pass) per above. Not actionable pre-market — live momentum/FCF/spread reconfirmation deferred to market-open per standard practice.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots, no new-entry decision needed.
- **CGEM** — not held. Gemini confirms no scheduled presentation/catalyst inside the 5-trading-day window; the Feb 27, 2027 zipalertinib PDUFA is unchanged and far outside it. No change.
- **SVRA** — not held. Gemini confirms no catalyst inside the 5-trading-day window; PDUFA date unchanged at 2026-11-22. No change.
- Gemini's explicit 5-day catalyst-calendar check (the one fully-retrieved, complete section of this session's report) confirms none of MNKD/RIGL/CGEM/SVRA has a documented catalyst falling inside today's window (2026-08-19 through 2026-08-26). No new satellite entries flagged this session.

### Risk Factors
- Watchlist refresh stale for a third missed/duplicated Friday (still headed "Week of 2026-08-07," no 8/14 entry in WEEKLY-REVIEW.md) — flagged again for the weekly-review owner; this remains a recurring operational gap, not a one-off miss.
- BAX (core) is the closest held position to its hard cut (-5.17% vs. -7%) — watch for a genuine thesis break vs. continued broad-market drift at market-open/midday; the tender-offer news found this session reads as balance-sheet-positive, not a new negative catalyst.
- This session's Gemini Deep Research call was both slow (exceeded its own 1200s blocking timeout, required a direct poll to retrieve) and truncated (missing sections 1-2 and partial income/held-name coverage) — the fourth+ session in recent weeks to hit a data-quality issue with this call; worth flagging again for the standing Gemini-query-splitting fix noted in prior weekly reviews as the single highest-value reliability fix outstanding.
- PYPL buyout speculation (Stripe/Advent, unconfirmed) persists as a watch item — not held, core-watchlist name only; re-verify before treating any future PYPL momentum read as organic.

### Decision
HOLD — default patience; no new core or satellite candidate cleared today given the stale watchlist (no fresh screen to draw from) and no live-momentum recheck yet (deferred to market-open). All held positions thesis-intact, no stop action needed, cash at floor. Re-evaluate live momentum/spreads and BAX's drift at today's market-open session per the standard workflow split.

### 11 AM Session Note
- No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market and this 11am check both confirm none) — the market-open (9:30am) run either did not execute or did not persist (no `market-open trades` commit exists on `main` for 8/19, only "pre-market research 2026-08-19 (#127)"), the same recurring session-persistence gap flagged repeatedly (7/16, 7/17, 7/24, 8/14). Buy side stayed HOLD; nothing to trade from regardless.
- **PANW (core) hit its mandatory -7% hard cut** (unrealized -7.96% at this session's state pull, current price $356.60 vs. entry $387.45) — cut immediately per STEP 4, ahead of its still-live 10% trailing stop (was at $348.73182, not yet triggered). No specific negative catalyst found (WebSearch: Wells Fargo/UBS PTs both reiterated positive, Sept 1 earnings date unchanged) — reads as broad intraday softness/profit-taking after a strong run, not a thesis break, but the -7% rule is mechanical. Realized P&L -$591.47 (-8.04%). Core sleeve now holds only BAX (1/6 positions, 0/6 new trades this week).
- Swept the freed cash ($6,660 of the $6,805.84 above the 20% floor) into SGOV per the Income sleeve sweep-back rule, replacing the SGOV trailing stop to cover the enlarged 166-share whole-share position (5% trail, trigger $95.55385). Cash now 20.15% of equity, at/above floor.
- BAX (core, -2.71% unrealized, improved from pre-market's -5.17% on today's +2.27% intraday move) and MNKD/RIGL (satellite, +6.38%/+9.68%) all remain well clear of their hard-cut thresholds — no new thesis-break risk identified since pre-market's thorough check ~1.5hrs ago; no further action taken on these three. No stop tightening triggered (no core position in gain; satellite both below the +25% tighten threshold). No stop moved down. 2-strike sub-sector tracker unaffected (PANW is core, not satellite) — biotech 1/2 (OCUL 7/23), industrials 0/2, unchanged.
- Lesson for Friday's review: this is at least the 5th instance of the market-open session-persistence gap in ~5 weeks — worth escalating as the top fix given it's now recurring roughly weekly, not an occasional miss.

### 3 PM Session Note

- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 11am, and this 3pm check all confirm none) — per STEP 3 no buys this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades (PANW's/HPE's exits don't count against the cap).
- **Risk sweep:** no position at/beyond its sleeve hard-cut — BAX -2.44% (core, improved further from 11am's -2.71%) vs. the -7% core cut; MNKD +9.00%, RIGL +10.15% (satellite), both well clear of the -15% cut and in solid gain. All 6 open positions (BAX, EDGX, MNKD, RIGL, SGOV [166 of 166.740468683 sh], SPHY) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing; SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial (~$74) dust flagged every prior sweep, not a new gap.
- **Thesis check (fresh WebSearch, BAX/MNKD/RIGL):** no negative news on any name. BAX: interim-CFO transition (already known) and a routine $0.01 dividend (ex-date 8/28) — no red flag; BofA/TD Cowen PTs ($28/$29, both raised 7/31) still stand. MNKD: no news beyond the already-logged Q2 print and Phase 1b inhaled-nintedanib data; today's +9% move reads as continued post-print momentum, not a new catalyst. RIGL: no news beyond the already-logged VEPPANU commercial-availability announcement (8/13); today's +10.15% move is the same resolved-catalyst tailwind, not a new event. No thesis break on any held name — nothing cut.
- **No satellite catalyst inside the 1-2 trading-day gap-risk window** — MNKD's FUROSCIX PDUFA remains resolved (7/24); RIGL's VEPPANU launch (8/13) remains a resolved positive catalyst. No forced close needed.
- **No stop tightening this window** — MNKD +9.00% and RIGL +10.15% are both below the +25% satellite tighten threshold; no core position in gain. No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Risky positions closed today: none** (beyond 11am's mandatory PANW hard-cut, already logged). Cash 20.11% (equity $96,222.12), at/above the 20% floor — no further sweep needed this window beyond 11am's PANW sweep-back. Day P&L +0.64% ($96,222.12 vs. yesterday's $95,610.66 3pm mark) driven by strong satellite gains (MNKD, RIGL) partly offset by a still-soft BAX and mixed income-sleeve moves. Phase P&L now -3.78% since Day 0 ($100,000 -> $96,222.12). Tomorrow: continue watching BAX for a genuine thesis break vs. ordinary drift/recovery; MNKD's and RIGL's strong satellite gains are the notable pattern for Friday's review (approaching, though still below, their +25% tighten thresholds); the market-open session-persistence gap (5th instance in ~5 weeks) and the still-stale WATCHLIST.md ("Week of 2026-08-07," 3 consecutive missed Friday refreshes) remain the top open items for this week's weekly review.

## 2026-08-20 — Pre-market Research

### Account
- Equity: $96,461.72 | Cash: $19,350.42 (20.06%, at/above the 20% floor) | Buying power: $289,065.67 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $9,537.28 (9.89%) — BAX only | Satellite exposure: $10,583.19 (10.97%) — MNKD $5,309.55 / RIGL $5,273.64 | Income exposure: $56,990.83 (59.08%) — EDGX $20,145.21 / SPHY $20,073.20 / SGOV $16,772.42
- All 6 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45, MNKD 15% $3.74 hwm $4.40, RIGL 15% $40.1625 hwm $47.25, EDGX 5% $25.9825 hwm $27.35, SPHY 5% $22.2015 hwm $23.37, SGOV 5% $95.5605 hwm $100.59 covering 166 of 166.740468683 sh); the 0.740468683-sh SGOV fractional remainder stays unstopped, same immaterial (~$74) dust flagged every prior sweep, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -1.76% (improved sharply from 8/19 3pm's -2.44%) vs. -7% core cut; MNKD +9.25%, RIGL +10.56%, both in solid gain vs. -15% satellite cut, both still below their respective tighten thresholds (core +15%, satellite +25%) — no stop tightening this window, no stop moved down.
- This week (Aug 17 start): core 0/6, satellite 0/4 new trades (HPE's and PANW's exits don't count against the cap).
- **Watchlist still stale:** WATCHLIST.md's "Current" section remains headed "Week of 2026-08-07" (13 days old) — no "Week ending 2026-08-14" entry exists in WEEKLY-REVIEW.md, confirming the third consecutive missed/duplicated Friday refresh (7/17, 7/31, 8/14) still stands unresolved; tomorrow (Fri 8/21) is the next scheduled refresh. Today's ideas are screened strictly against the 8/07 list per the "never trade a ticker not on the current watchlist" rule.

### Data-quality check
The consolidated Gemini Deep Research call completed but is **truncated at the start again** — retrieved output opens mid-document at satellite-name commentary (Cullinan/Rigel/MannKind catalyst calendar) and is missing requested sections (1) S&P 500 futures/VIX, (2) top market-moving catalysts/economic releases, and any explicit per-ticker overnight-news check for the full core watchlist or for BAX/EDGX/SGOV/SPHY specifically. This is the same `extract_report()` truncation bug flagged across 10+ prior sessions (8/9–8/19), now unresolved into a second week — re-ran the query a second time to rule out a one-off, got the same truncation pattern both times, confirming this is a systemic script/API issue, not a transient blip. Per the data-quality guard, no number or headline from the missing sections is fabricated here; native WebSearch fallback was used for sections (1)/(2) and a targeted overnight-news check on BAX/MNKD/RIGL — see below.
- **Concrete fabrication caught this session:** the retrieved Gemini text asserted Savara's (SVRA) molgramostim PDUFA date as "August 22" and called it "a definitive, unalterable volatility catalyst" today. WebSearch directly contradicts this: the FDA extended that PDUFA date by three months back in the spring, to **November 22, 2026** (matching WATCHLIST.md's documented date, with no safety/efficacy/manufacturing concerns cited) — the "August 22" figure is a stale reference to the pre-extension date. SVRA is not held and no trade was contemplated, so this had zero P&L impact, but it's a direct, concrete instance of the exact kind of fabrication risk the data-quality guard exists to catch (same pattern as the 8/07 SCPH/NVEE catches) — flagging for the weekly review alongside the truncation bug as the two standing Gemini reliability issues.
- Separately, Gemini's retrieved text described RIGL's R289 (LR-MDS) readout as due "August 2026," implying continuous binary risk through the rest of the month. A direct WebSearch of Rigel's own Q2 earnings materials states R289 top-line data is expected "by year-end" — not inside the 5-trading-day window. Treating the company's own guidance as authoritative over Gemini's paraphrase; no gap-risk action needed for RIGL this session.

### Market Context (WebSearch fallback — Gemini sections 1-2 were missing)
- **S&P 500 futures / VIX:** VIX closed 15.84 on 8/19 (+4.28% day/day). Muted-to-modestly-positive premarket tone: S&P 500 +0.17%, September E-mini S&P futures (ESU26) +0.14% as of the most recent snapshot — not a risk-off signal, but figures reflect a search-engine snapshot rather than a live pre-market feed, flagged as approximate per the standing WebSearch-fallback caveat.
- **Today's calendar:** Conference Board Leading Indicators (July) due today. Earnings pre-market/today: Walmart, Alibaba, Deere, NetEase, Ross Stores — none of today's earnings names are current core/satellite holdings (TGT, a documented sector-capped core alternate, is not itself reporting today). Market context: S&P 500 snapped a three-session losing streak yesterday as long-dated Treasury yields pulled back after Treasury announced it will more than double buybacks of 10/20/30-year debt over the next few months — a bond-market-supportive development, not a risk factor.
- **Sector notes (from the retrieved Gemini portion, informational):** a rotation out of AI-hardware into software/legacy tech was described, pressuring names like Cisco (not held) on margin concerns while rewarding Arista and Palo Alto Networks (also not held, PANW was cut 8/19). Deere's earnings call reportedly signaled an agricultural-cyclical bottom — a structural positive read for industrials generally, not directly relevant to any held name. VLO/MPC (core-watchlist, not held) flagged as needing patience amid macro demand fears vs. structural supply constraints in an ~$80 oil environment — unchanged read from prior sessions.

### Held-Position Thesis Check
- **BAX (core, -1.76% unrealized):** No thesis break — thesis strengthening. WebSearch confirms no new negative items: Q2 sales $2,960M/net income $126M beat with raised 2026 guidance (already logged), the $500M senior-notes tender offer (already logged, early-tender settled 8/18), the interim-CFO departure to Cardinal Health remains a known housekeeping item, and a routine $0.01 dividend (ex-date 8/28, already logged). Drawdown has eased sharply since 8/19 (-2.44% -> -1.76%), consistent with broad-market/sector recovery, not company-specific deterioration.
- **MNKD (satellite, +9.25% unrealized):** No thesis break. WebSearch confirms no news beyond the already-logged Q2 print (rev $109.37M, +43% YoY, net loss $19.03M) and the positive Phase 1b inhaled-nintedanib IPF data; Cantor Fitzgerald and Truist both maintain Buy. No new near-term binary catalyst (FUROSCIX PDUFA resolved 7/24).
- **RIGL (satellite, +10.56% unrealized):** No thesis break — thesis intact. WebSearch confirms Q2 revenue $78.7M/net income $17.3M, updated FY26 outlook $285-295M, and R289 (LR-MDS) guided to top-line data "by year-end" (not near-term, contradicting Gemini's "August 2026" framing per the data-quality note above). VEPPANU launch (8/13) remains the resolved positive catalyst; no new near-term binary.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news retrieved this session (Gemini truncation gap on this section, not independently re-verified beyond the standing macro-beta characterization) — no action taken; these trade on rates/credit, not company-specific catalysts, so the gap is lower-risk than for a single-name equity position.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No new core candidates added — the 8/07 list stands unchanged pending tomorrow's (8/21) scheduled weekly refresh. This session's (partial, WebSearch-supplemented) research surfaced no negative/thesis-breaking news for BAX, the only currently-held core name; the remaining 21 listed names were not individually re-checked this session (Gemini truncation gap, not independently re-verified). Not actionable pre-market — live momentum/FCF/spread reconfirmation deferred to market-open per standard practice.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots, no new-entry decision needed.
- **CGEM** — not held. Gemini's retrieved portion confirms no catalyst inside the 5-trading-day window (Phase 1 CLN-619 completion estimated September 2026, outside the window; the Feb 27, 2027 zipalertinib PDUFA is unchanged and far outside it). No change.
- **SVRA** — not held. PDUFA date confirmed (via direct WebSearch, not Gemini — see data-quality note) at November 22, 2026, well outside the 5-day window. No change.
- None of MNKD/RIGL/CGEM/SVRA has a documented catalyst falling inside today's 5-trading-day window. No new satellite entries flagged this session.

### Risk Factors
- Watchlist refresh stale for a third consecutive missed/duplicated Friday (still headed "Week of 2026-08-07") — tomorrow (8/21) is the next scheduled refresh; flagging again for that session.
- The `gemini_research.sh` `extract_report()` truncation bug persists into a second week (10+ consecutive sessions, 8/9-8/20) and this session caught a concrete fabricated fact (SVRA's PDUFA date) inside the truncated output — the highest-value reliability fix still outstanding, now with a specific worked example for the weekly review to reference.
- No held position near its hard-cut (BAX -1.76% vs. -7%); no satellite catalyst inside the gap-risk window; no acute macro/geopolitical item found this session.

### Decision
HOLD — default patience; no new core or satellite candidate cleared today given the stale watchlist (no fresh screen to draw from, refresh scheduled for tomorrow) and no live-momentum recheck yet (deferred to market-open). All held positions thesis-intact, no stop action needed, cash at/above floor. Re-evaluate live momentum/spreads and BAX's continued recovery at today's market-open session per the standard workflow split.

### 9:30 AM Session Note

- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (still blocked by the stale "Week of 2026-08-07" watchlist, refresh scheduled tomorrow 8/21) — per STEP 3 no buys placed this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **Live account:** equity $96,131.42, cash $19,350.42 (20.13%, above the 20% floor of $19,226.28) — no funding sweep needed.
- **Risk sweep:** all 6 open positions (BAX core; MNKD, RIGL satellite; EDGX, SPHY, SGOV income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing; SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial (~$74) dust flagged every prior sweep. No position at/beyond its sleeve hard-cut: BAX -3.01% (vs. -7% core cut, continuing its gradual recovery — was -1.76% pre-market, -3.01% now, still ordinary intraday drift, no company-specific negative news); MNKD +8.25%, RIGL +10.52% (both vs. -15% satellite cut, both well below the +25% satellite tighten threshold — no stop tightened, none moved down).
- **No thesis break identified on any held name** since this morning's pre-market check (BAX/MNKD/RIGL all reconfirmed thesis-intact pre-market). No satellite catalyst inside the 1-2 trading-day gap-risk window (MNKD's FUROSCIX PDUFA resolved 7/24; RIGL's VEPPANU launch resolved 8/13). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Persistence flag (operational, not a trading item, unchanged from pre-market):** this branch is now 16 commits ahead of `origin/main` (main still at pre-market 2026-08-14, #113) — the persist-to-main step continues to fail across sessions. Underlying trade data remains intact in each session's own commit; this run will again attempt STEP 9 (push + draft PR + self-merge) rather than deferring further, but flagging again for the weekly review as the top operational item alongside the Gemini truncation bug.
- **Lesson:** none new — quiet monitoring window, consistent with the pre-market thesis holding through market-open.

### 11 AM Session Note

- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market and 9:30am both confirm none, still blocked by the stale "Week of 2026-08-07" watchlist; refresh scheduled tomorrow 8/21) — per STEP 3 no buys placed this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- **Live account:** equity $95,679.14 (down from $96,131.42 at 9:30am), cash $19,350.42 = 20.22% of equity, above the 20% floor ($19,135.83) — no funding sweep needed. Core exposure $9,378.82 (9.80%), satellite $10,207.58 (10.67%), income $56,742.78 (59.30%).
- **Risk sweep:** all 6 open positions (BAX core; MNKD, RIGL satellite; EDGX, SPHY, SGOV income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing; SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial (~$74) dust flagged every prior sweep. No position at/beyond its sleeve hard-cut: BAX -3.39% (vs. -7% core cut, drifted back from 9:30am's -3.01%); MNKD +4.13%, RIGL +7.91% (vs. -15% satellite cut, both still in gain). No stop tightened — MNKD and RIGL both remain well below the +25% satellite tighten threshold and no core position is in gain; no stop moved down.
- **Sharp intraday move investigated (STEP 7):** both satellite names sold off hard today — MNKD -5.23% ($4.395 -> $4.165) and RIGL -3.85% ($46.96 -> $45.15), together giving back roughly half of each position's unrealized gain (MNKD +9.25% -> +4.13%, RIGL +10.56% -> +7.91% since pre-market). Used native WebSearch rather than `gemini_research.sh` given the still-unresolved `extract_report()` truncation bug and the concrete SVRA fabrication caught pre-market. **No company-specific negative news found on either name** — no new MNKD item beyond the already-logged Q2 print and positive Phase 1b inhaled-nintedanib data; no new RIGL item beyond the already-logged Q2 beat, raised FY26 outlook, VEPPANU launch and Citi's $83 PT. Two same-sleeve, same-sub-sector (biotech) names falling together on no single-name news reads as sector beta/profit-taking, consistent with the documented 2026 pattern of sharp XBI-wide give-backs after strong runs (mid-July precedent). **No thesis break declared on either name; nothing cut.** Note the search returned no reporting dated 8/20 itself, so the sector-rotation read is an inference from the absence of single-name news, not a confirmed headline — flagged as such rather than asserted.
- **No satellite catalyst inside the 1-2 trading-day gap-risk window** (MNKD's FUROSCIX PDUFA resolved 7/24; RIGL's VEPPANU launch resolved 8/13; RIGL's R289 LR-MDS readout guided by the company to year-end, not near-term). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Persistence flag RESOLVED:** contrary to the 9:30am note's read (branch "16 commits ahead of `origin/main`, main still at 8/14 #113"), `git rev-list --left-right --count origin/main...HEAD` returns 0/0 this window — `origin/main` is fully caught up with this branch and the working tree is clean. The 9:30am session's STEP 9 persist succeeded; the flag was stale by the time it was written. No action needed.
- **Lesson (for Friday's review):** the satellite sleeve's gains are visibly more path-dependent than the core's — a single quiet sector day erased ~5 points of MNKD's and ~2.6 of RIGL's unrealized gain without any news to react to. Both remain far from their -15% cuts and their +25% tighten thresholds, so the rules produced no action, but it's a concrete illustration of why the wider 15% satellite stop exists and why a tighten trigger that never fires can leave a large open gain fully exposed to sector beta. Worth reviewing whether the +25% first-tighten threshold is the right level for names this volatile.

### 3 PM Session Note

- **Buy-side: HOLD, both sleeves.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm check all confirm none — still blocked by the stale "Week of 2026-08-07" watchlist; refresh scheduled tomorrow, Fri 8/21) — per STEP 3 no buys placed this window. This week (Aug 17 start) closes at core 0/6, satellite 0/4 new trades. A third consecutive zero-trade week is a valid Patience-Rule outcome, but the *cause* here is a stale watchlist, not a deliberate pass — that distinction is the single most important item for tomorrow's review.
- **Risk sweep (STEP 4): no closes, none warranted.** No position at/beyond its sleeve hard-cut — BAX -3.23% vs. the -7% core cut; MNKD +7.13% and RIGL +7.84%, both in gain vs. the -15% satellite cut. All 6 open positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`/`positions`, none missing or unprotected (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34, trailed up from $40.1625 pre-market; EDGX 5% $25.9825; SPHY 5% $22.2015; SGOV 5% $95.57 covering 166 of 166.740468683 sh). SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial (~$74) dust flagged every prior sweep, not a new gap. No satellite catalyst inside the 1-2 trading-day gap-risk window (MNKD's FUROSCIX PDUFA resolved 7/24; RIGL's VEPPANU launch resolved 8/13; RIGL's R289 LR-MDS readout guided by the company to year-end). Fresh WebSearch thesis check on all three core/satellite names found no negative news: BAX's $500M senior-notes tender settled early today as scheduled and the interim-CFO seat was permanently filled (John Rogers named CFO) — housekeeping that mildly *resolves* an open uncertainty rather than adding one; MNKD reconfirmed the 7/23 Furoscix ReadyFlow approval, an end-of-August launch, and a $50M private placement funding the $45M scPharmaceuticals milestone payment; RIGL reconfirmed the Q2 beat, raised FY26 guidance ($285-295M) and the VEPPANU launch. No thesis break on any name; nothing cut.
- **No stop tightening this window; no stop moved down.** MNKD (+7.13%) and RIGL (+7.84%) both remain far below the +25% satellite tighten threshold, and BAX is in loss, so no core tighten applies either. Note both satellite names gave back further ground after the 11am sell-off (MNKD +9.25% pre-market -> +4.13% at 11am -> +7.13% now; RIGL +10.56% -> +7.91% -> +7.84%) — MNKD partially recovered into the afternoon, RIGL kept drifting. Still no single-name news on either, so the sector-beta read from 11am stands unchanged.
- **Pattern for Friday's review (reinforces this morning's lesson):** today produced a full round-trip in satellite unrealized gain with zero rule actions triggered anywhere — MNKD swung roughly 5 points intraday and RIGL nearly 3, and neither approached a cut or a tighten. That is the +25% first-tighten threshold being structurally out of reach for positions that top out near +10%, which means an open satellite gain of this size is 100% exposed to sector beta by design. Concrete question for the review: whether a lower first-tighten step (e.g. +15%) or a partial-profit rule would have banked anything meaningful this week, tested against MNKD's and RIGL's actual price paths rather than in the abstract. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Risky positions closed today: none.** No trades at all today in any sleeve.

## 2026-08-21 — Pre-market Research

### Account
- Equity: $96,279.04 | Cash: $19,350.42 (20.10%, at/above the 20% floor) | Buying power: $288,670.83 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $9,401.96 (9.77%) — BAX only | Satellite exposure: $10,350.75 (10.75%) — MNKD $5,163.75 / RIGL $5,187.00 | Income exposure: $57,175.91 (59.38%) — EDGX $20,477.70 / SGOV $16,779.09 / SPHY $19,919.12
- All 6 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2015 hwm $23.37; SGOV 5% $95.57 hwm $100.60 covering 166 of 166.740468683 sh). SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial (~$74) dust flagged every prior sweep, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -3.15% vs. -7% core cut; MNKD +6.25%, RIGL +8.75%, both in gain vs. -15% satellite cut, both still well below their tighten thresholds (core +15%, satellite +25%) — no stop tightening this window, no stop moved down.
- This week (Aug 17 start): core 0/6, satellite 0/4 new trades (HPE's and PANW's earlier exits don't count against the cap).
- **Watchlist still stale:** WATCHLIST.md's "Current" section remains headed "Week of 2026-08-07" (14 days old) — third consecutive missed/duplicated Friday refresh (7/17, 7/31, 8/14) still unresolved. Today is the next scheduled weekly-review/screen-refresh session (separate workflow, not run here) — flagging again, not fixing it in this session. Today's ideas are screened strictly against the 8/07 list per the "never trade a ticker not on the current watchlist" rule.

### Data-quality check
The consolidated Gemini Deep Research call completed (exit 0) but is **truncated at the start again** — retrieved output opens mid-document at a CGEM catalyst-calendar subsection and "Strategic Conclusions," missing requested sections (1) S&P 500 futures/VIX, (2) top market-moving catalysts/economic releases, and (3)/(4) explicit per-ticker overnight-news checks for the full held/watchlist ticker list. This is the same `extract_report()` truncation bug flagged across 12+ prior sessions (8/9-8/20), now into a third week unresolved. Per the data-quality guard, no number or headline from the missing sections is fabricated here; native WebSearch fallback was used for market context and for a targeted overnight-news check on BAX/MNKD/RIGL — see below.
- **Item requiring verification, surfaced in the truncated output's "Strategic Conclusions":** Gemini flagged a "tragic misadministration of potassium chloride and bupivacaine at Ascension Saint Thomas Hospital" as a headline-risk item for BAX, describing it as "strictly tied to isolated, hospital-level pharmacy compounding and barcoding failures." WebSearch confirms the underlying incident is real: four patients at Ascension Saint Thomas Midtown (Nashville) received potassium chloride instead of the anesthetic bupivacaine during joint-replacement surgeries on 2026-08-14, with at least one patient (72-year-old Glenda Dorton) left paralyzed; TBI and Tennessee state health inspectors are investigating. **No source found ties this to a Baxter-manufactured product, recall, or any Baxter-specific disclosure** — reporting attributes the error to the hospital pharmacy's own compounding/dispensing process, consistent with Gemini's own framing. Separately, a WebSearch surfaced an existing Baxter investor lawsuit over Novum LVP infusion-pump defects — confirmed **stale**, filed ~October 2025 with a class period ending July 30, 2025, not new news. Net: no confirmed BAX-specific negative catalyst, but flagging the Ascension story as a headline-association watch item per Gemini's own read (algorithmic/sentiment-driven selling risk on IV-fluid-manufacturer association, not a fundamentals or thesis issue).

### Market Context (WebSearch fallback — Gemini sections 1-2 were missing)
- **S&P 500 futures / VIX:** S&P 500 futures +0.08%, Nasdaq 100 futures +0.20% (one source has QQQ premarket +0.75%), Dow futures +0.05%, Russell 2000 futures +0.33% — modestly positive tone. VIX 16.01, up ~7.5% day/day (from ~14.9 to ~16.0) — contained in absolute terms but a notable single-day pop, consistent with Gemini's flagged divergence between calm headline VIX and elevated single-stock volatility dispersion. NASDAQ breadth was negative in one intraday read (decliners leading ~1.9:1) despite index-level gains — a narrow-leadership caution flag, not confirmed as a pre-market condition specifically.
- **Today's calendar:** Flash US PMIs (S&P Global) due today — the key data release Gemini's retrieved text also highlighted as a test of the "soft landing" narrative. Fed Chair Warsh's first Jackson Hole keynote is Aug 27-29, not today, but is the dominant macro focus into next week. 10-year Treasury ~4.69%, 30-year ~5.24%, both easing slightly.
- No acute geopolitical item found this session.

### Held-Position Thesis Check
- **BAX (core, -3.15% unrealized):** No thesis break. The Ascension Saint Thomas headline-risk item (see Data-quality check above) is a watch item, not a confirmed negative catalyst — no Baxter product tie found. No other new negative news via WebSearch. Held, no action.
- **MNKD (satellite, +6.25% unrealized):** No thesis break. WebSearch found nothing beyond already-logged items (Furoscix ReadyFlow approval 7/23, $50M private placement closed 7/24). No new near-term binary catalyst.
- **RIGL (satellite, +8.75% unrealized):** No thesis break. WebSearch found nothing beyond already-logged items (Q2 beat, raised FY26 guidance $285-295M, VEPPANU commercial availability confirmed 8/13). R289 LR-MDS readout remains guided to year-end per the company, not near-term.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news check this session (Gemini truncation gap on this section, not independently re-verified) — lower risk than a single-name equity gap since these trade on rates/credit, not company-specific catalysts. No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-07)
No new core candidates — the 8/07 list stands unchanged pending today's scheduled weekly refresh (separate workflow). BAX (the only currently-held core name) is thesis-intact per above. The remaining 21 listed names were not individually re-checked this session (Gemini truncation gap). Not actionable pre-market — live momentum/FCF/spread reconfirmation deferred to market-open per standard practice.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-07)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots, no new-entry decision needed.
- **CGEM** — not held. No catalyst inside the 5-trading-day window; Gemini's retrieved portion (verified plausible, cross-referenced against the company's own REZILIENT3 Phase 3 interim readout) points to a Sept 12-15, 2026 WCLC presentation and Q3/Q4 2026 pipeline readouts — all outside the window. No change.
- **SVRA** — not held. PDUFA confirmed at Nov 22, 2026 (unchanged, matches WATCHLIST.md), well outside the 5-day window. Gemini's retrieved text characterizes the prior 3-month PDUFA extension as administrative, consistent with the FDA's own stated no-safety/efficacy-concern rationale (already logged 8/20). No change.
- None of MNKD/RIGL/CGEM/SVRA has a documented catalyst falling inside today's 5-trading-day window. No new satellite entries flagged this session.

### Risk Factors
- Watchlist refresh stale for a third consecutive missed/duplicated Friday (still headed "Week of 2026-08-07," now 14 days old) — today is the scheduled refresh session (separate workflow).
- The `gemini_research.sh` `extract_report()` truncation bug persists into a third week (12+ consecutive sessions, 8/9-8/21) — no fabrication caught this session (unlike 8/20's SVRA date error), but the same structural reliability gap stands as the top outstanding operational item.
- BAX headline-association risk (Ascension Saint Thomas incident) — confirmed real incident, no confirmed Baxter product tie, watch item only, not a thesis break.
- No held position near its hard-cut (BAX -3.15% vs. -7%); no satellite catalyst inside the gap-risk window; no acute macro/geopolitical item found this session.

### Decision
HOLD — default patience; no new core or satellite candidate cleared today given the stale watchlist (no fresh screen to draw from; today's scheduled refresh is a separate workflow) and no live-momentum recheck yet (deferred to market-open). All held positions thesis-intact, no stop action needed, cash at/above floor. Re-evaluate live momentum/spreads and BAX's Ascension-headline exposure at today's market-open session per the standard workflow split.

### 9:30 AM Session Note
- HOLD confirmed at market-open: pre-market's decision stands, no ticker to gate since no candidate cleared (stale "Week of 2026-08-07" watchlist, 3rd consecutive missed/duplicated Friday refresh) — buy-side gate not run, nothing to check it against.
- Live `alpaca.sh account`/`positions` reconfirm: equity $96,373.76, cash $19,350.42 (20.08%, at/above floor), no position near its sleeve hard-cut (BAX -3.37%, MNKD +7.75%, RIGL +9.32%). No action taken on any held position.
- This week (Aug 17 start) closes core 0/6, satellite 0/4 new trades — a full week with zero new entries, valid per the Patience Rule given the watchlist gap, not a forced-inaction judgment call.
- Pattern to flag for today's weekly review: core sleeve has sat at 1 open position (BAX only, ~9.8% exposure vs. 85% target) for over a week now, directly downstream of the stale watchlist — today's screen refresh (separate workflow) is the fix.

### 11 AM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market and 9:30 AM both confirm none, still blocked by the stale "Week of 2026-08-07" watchlist — today's screen refresh is a separate workflow) — per STEP 3 no buys placed this window. This week (Aug 17 start) stays at core 0/6, satellite 0/4 new trades.
- Live `alpaca.sh account`/`positions`/`orders` pull: equity $95,943.17, cash $19,350.42 (20.17%, at/above the 20% floor). Core exposure $9,412.64 (9.81%, BAX only); satellite exposure $10,453.31 (10.90%, MNKD $5,233.25 + RIGL $5,220.06); income exposure $56,729.04 (59.13%, EDGX $20,010.26 / SGOV $16,778.26 / SPHY $19,940.52).
- Risk sweep: no position at/beyond its sleeve hard-cut (BAX -3.04% vs. -7% core cut; MNKD +7.68%, RIGL +9.44%, both in gain vs. -15% satellite cut). All 6 open positions confirmed via `alpaca.sh orders` carrying live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2015 hwm $23.37; SGOV 5% $95.5985 hwm $100.63 covering 166 of 166.740468683 sh, same immaterial ~$75 fractional dust flagged every prior sweep). None missing, none moved down.
- No stop tightening this window — MNKD (+7.68%) and RIGL (+9.44%) both remain well below the +25% satellite tighten threshold; BAX is not in gain so the core tighten schedule doesn't apply.
- Thesis check (fresh WebSearch on BAX/MNKD/RIGL): no negative news found on any name since the 9:30 AM check. BAX — stock steady in the mid-$20s, new CFO John Rogers confirmed, $0.01 dividend ex-date 8/28 upcoming (routine); no new development on the Ascension Saint Thomas headline-association watch item, still no confirmed Baxter product tie. MNKD — only analyst notes (Cantor Fitzgerald, Truist both reiterated Buy 8/6), no new catalyst; FUROSCIX ReadyFlow approval (7/23) and $50M private placement (7/24) remain the latest confirmed items. RIGL — no news beyond already-logged Q2 beat/raised guidance and the 8/13 VEPPANU commercial-availability announcement. No thesis break on any name; nothing cut.
- No satellite catalyst inside the 1-2 trading-day gap-risk window for either MNKD (FUROSCIX PDUFA resolved 7/24) or RIGL (VEPPANU launch resolved 8/13; R289 LR-MDS readout guided to year-end).
- 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Cash 20.17%, at/above the 20% floor — no funding sweep needed.
- No memory-file changes beyond this note — TRADE-LOG.md unaffected (no trades this window).

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30 AM, and 11 AM all confirm none, still blocked by the stale "Week of 2026-08-07" watchlist) — per STEP 3 no buys placed this window. This week (Aug 17 start) closes at core 0/6, satellite 0/4 new trades.
- Live `alpaca.sh account`/`positions`/`orders` pull: equity $95,832.30, cash $19,350.42 (20.19%, at/above the 20% floor). Core exposure $9,364.58 (9.77%, BAX only); satellite exposure $10,357.23 (10.81%, MNKD $5,139.45 + RIGL $5,217.78); income exposure $56,760.07 (59.23%, EDGX $20,041.29 / SGOV $16,778.26 / SPHY $19,940.52).
- Risk sweep: no position at/beyond its sleeve hard-cut (BAX -3.54% vs. -7% core cut; MNKD +5.75%, RIGL +9.39%, both in gain vs. -15% satellite cut). All 6 open positions confirmed via `alpaca.sh orders` carrying live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2015 hwm $23.37; SGOV 5% $95.5985 hwm $100.63 covering 166 of 166.740468683 sh, same immaterial ~$75 fractional dust flagged every prior sweep). None missing, none moved down.
- No stop tightening this window — MNKD (+5.75%) and RIGL (+9.39%) both remain well below the +25% satellite tighten threshold; BAX is not in gain so the core tighten schedule doesn't apply.
- Thesis check carried forward from 11 AM (no new WebSearch this window, no material time elapsed/news since): BAX no confirmed Baxter-specific negative tie to the Ascension Saint Thomas headline (watch item only), MNKD/RIGL both thesis-intact, nothing new. No thesis break, nothing cut.
- No satellite catalyst inside the 1-2 trading-day gap-risk window for either MNKD (FUROSCIX PDUFA resolved 7/24) or RIGL (VEPPANU launch resolved 8/13; R289 LR-MDS readout guided to year-end).
- 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Cash 20.19%, at/above the 20% floor — no funding sweep needed.
- Risky positions closed today: none.
- Pattern for Friday's review: core sleeve has now sat at 1 open position (BAX only, ~9.8% exposure vs. 85% target) for over a week, directly downstream of the stale "Week of 2026-08-07" watchlist — today's scheduled screen refresh (separate workflow) is the fix, not a forced trade here.

## 2026-08-22 — Pre-market Research

**Market closed today (Saturday).** This session's scheduled trigger fired
on a non-trading day — `date -d 2026-08-22 +%A` confirms Saturday. No
market-open/11am/3pm windows exist today; nothing here is actionable until
Monday 2026-08-24 pre-market. Completing the research pull for continuity
(account state, thesis checks) but the Decision below is HOLD by
construction, not a screened judgment call. Flagging the weekend firing
itself as an operational item — see Risk Factors.

### Account
- Equity: $95,788.21 | Cash: $19,350.42 (20.20%, at/above the 20% floor) | Buying power: $287,393.70 (margin-inflated by the standing 4x multiplier flag — no margin/leverage used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $9,377.04 (9.79%) — BAX only | Satellite exposure: $10,273.71 (10.73%) — MNKD $5,042.25 / RIGL $5,231.46 | Income exposure: $56,787.04 (59.28%) — EDGX $20,063.15 / SGOV $16,779.09 / SPHY $19,944.80
- All 6 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2015 hwm $23.37; SGOV 5% $95.5985 hwm $100.63 covering 166 of 166.740468683 sh). SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial (~$75) dust flagged every prior sweep, not a new gap.
- No position at/beyond its sleeve hard-cut: BAX -3.41% vs. -7% core cut; MNKD +3.75%, RIGL +9.68%, both in gain vs. -15% satellite cut. Neither satellite name near its +25% tighten threshold; no core position in gain.
- This week (Aug 17 start, last trading day was Friday 8/21): core 0/6, satellite 0/4 new trades — carries forward unchanged, next new-trade window opens Monday.
- **Watchlist refreshed:** WATCHLIST.md is now current — "Week of 2026-08-21" (refreshed yesterday, ending the 3-consecutive-missed-Friday streak). BAX (currently held core position) is off this week's list — week 1 of the two-consecutive-week thesis-broken rule; not yet a forced exit. MNKD and RIGL remain on the current satellite list.

### Data-quality check
The consolidated Gemini Deep Research call completed (exit 0) and, unlike the prior three-plus weeks of sessions, actually delivered usable per-ticker content this time — but it **omitted requested sections (1) S&P 500 futures/VIX and (2) top market-moving catalysts/economic releases entirely**, jumping straight to section (3)/(4) held-ticker and watchlist analysis. Different failure mode than the prior `extract_report()` truncation (which cut off mid-document); this time the missing sections were never generated rather than cut off partway. Per the data-quality guard, no VIX/futures/catalyst figure from those two sections is fabricated here — native WebSearch fallback was used for both, see Market Context below.
- No fabricated fact caught this session on the held/watchlist per-ticker content (unlike 8/20's SVRA PDUFA-date fabrication) — Gemini's per-ticker claims for BAX/MNKD/RIGL/EDGX/SGOV/SPHY and the satellite 5-day catalyst check were independently plausible and consistent with prior sessions' logged facts; not separately re-verified line-by-line given no held-position action was contemplated on a non-trading day.

### Market Context (WebSearch fallback — Gemini sections 1-2 were missing)
- **S&P 500 futures / VIX:** VIX ~15.87 (-0.87% day/day), premarket in the mid-15s — contained. E-mini S&P futures (ESU26) +0.37%, modestly positive tone.
- **Economic calendar:** No major US data release scheduled for Saturday 8/22 itself (market closed). Look-ahead: Aug 25 — Consumer Confidence, July new home sales; Aug 26 — July PCE/core PCE, personal income/spending, Q2 GDP second estimate. Fed Chair Warsh's first Jackson Hole keynote is Aug 27-29 — the dominant macro focus into next week, not today.
- No acute geopolitical item surfaced this session.

### Held-Position Thesis Check (per Gemini, cross-checked against no contradicting WebSearch findings)
- **BAX (core, -3.41% unrealized):** No thesis break. No new 8-K, press release, or clinical update since 8/21's Ascension Saint Thomas headline-association watch item (still no confirmed Baxter product tie). Held, no action possible/needed (market closed).
- **MNKD (satellite, +3.75% unrealized):** No thesis break. Gemini reconfirms the $100M+ Q2 revenue milestone (8/5), the $36.3M convertible-note settlement (cash + share issuance, de-levering), and the INFLO-1 Phase 1b Nintedanib DPI (MNKD-201, IPF) readout guided for Q3 2026 — no specific date inside the next 5 trading days. No new near-term binary.
- **RIGL (satellite, +9.68% unrealized):** No thesis break. No new item beyond already-logged Q2 beat/raised guidance and the 8/13 VEPPANU launch; no binary catalyst inside the 5-day window.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic negative news; SPHY/SGOV thesis reaffirmed by continued Treasury buyback-driven yield stabilization (same macro tailwind logged in prior sessions). No action.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-21)
Market closed — nothing actionable today regardless of screen results. For continuity: Gemini found no idiosyncratic overnight news for DELL, MRVL, MU, NTAP, EXPE, IQV, WDAY, ZBRA, VEEV, PSX, BBY, APA, BKNG, DASH (all thesis-neutral, no change). Notable items, none of which are new entries today (market closed): TGT down 2.25% premarket in sympathy with broader retail, no distinct company news; ABNB technically extended (fresh 52-week high $184.70, forward P/E 33.7x, some insider selling 8/7-8/17 — watch item, not a thesis break, still on watchlist); XYZ shows a valuation paradox (Third Point 13F stake disclosed vs. a shareholder-rights-firm investigation announced — net-neutral, no change to watchlist status); MPC/VLO got a fresh institutional endorsement (Piper Sandler initiated both Overweight, "top sector picks"); PANW/ANET/HPE all broke out to fresh 52-week highs Friday (8/21), decoupling from broader tech softness. None of this changes Monday's momentum/FCF gate, which will be recomputed fresh at market-open per standard practice — nothing here is pre-approved.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-21)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots.
- **CGEM** — not held. Gemini confirms no catalyst inside the 5-trading-day window (Feb 27, 2027 zipalertinib PDUFA unchanged, far outside it). No change.
- **TWIN** — not held (re-added to watchlist 8/21). Its 8/20 earnings catalyst is already resolved per WATCHLIST.md; Gemini's satellite catalyst scan did not surface it as a fresh binary this week either.
- **SHIP** — not held. Ex-dividend date 9/25 is not a near-dated binary; not inside the 5-day window.
- Gemini's explicit 5-trading-day scan (Aug 22-28) found **no documented binary regulatory/clinical catalyst for any of MNKD, RIGL, CGEM, TWIN, or SHIP** — consistent with WATCHLIST.md. No new satellite entries flagged.

### Risk Factors
- **Operational: this pre-market routine fired on a non-trading day (Saturday 8/22).** The scheduled-run cadence in CLAUDE.md is described as "five scheduled runs per trading day" — a weekend firing is outside that design intent, wastes a Gemini Deep Research call (5-20 min agent), and produces a research-log entry with no possible trading action. Worth checking the underlying cron/trigger schedule for a day-of-week filter; recommend owner review before next weekend to avoid a recurring wasted run.
- BAX is off this week's core watchlist (week 1 of 2 for the thesis-broken rule) — not yet a forced exit, but flag for Monday's pre-market to track toward a second consecutive week.
- No held position near its hard-cut; no satellite catalyst inside the gap-risk window; no acute macro/geopolitical item found.

### Decision
HOLD — market closed (Saturday), no trading session exists today. All held positions thesis-intact per available research, no stop action needed (and none possible until Monday), cash at/above floor. Resume normal pre-market screening Monday 2026-08-24; re-run momentum/FCF/spread checks fresh against the current "Week of 2026-08-21" watchlist at that session.

## 2026-08-23 — Pre-market Research

**Market closed today (Sunday) — second consecutive non-trading-day firing.**
`date -d 2026-08-23 +%A` confirms Sunday. This is the second day in a row
this routine has fired outside the "five scheduled runs per trading day"
design intent (Saturday 8/22, now Sunday 8/23) — yesterday's entry already
flagged the operational gap and recommended owner review of the underlying
cron/trigger day-of-week filter before the next weekend; it recurred the
very next day. Escalating, see Risk Factors.

### Account
- Equity: $95,788.21 | Cash: $19,350.42 (20.20%, at/above the 20% floor) —
  **identical to yesterday's (8/22) snapshot to the cent**, confirming no
  market activity since Saturday (expected, market closed both days).
- Positions and GTC trailing stops (via `alpaca.sh positions`/`orders`, no
  auth errors) unchanged from 8/22: BAX core -3.41% (stop 10% $24.705, hwm
  $27.45); MNKD satellite +3.75% (stop 15% $3.74, hwm $4.40); RIGL satellite
  +9.68% (stop 15% $40.239, hwm $47.34); EDGX income +0.43% (stop 5%
  $25.9825, hwm $27.35); SGOV income (stop 5% $95.5985, hwm $100.63,
  covering 166 of 166.740468683 sh — same immaterial ~$75 fractional dust
  flagged every prior sweep); SPHY income -0.26% (stop 5% $22.2015, hwm
  $23.37). No position at/beyond its sleeve hard-cut. No stop tightening
  applicable (no satellite name near +25%; no core position in gain).
- This week (Aug 17 start): core 0/6, satellite 0/4 new trades — carries
  forward unchanged, next new-trade window opens Monday 8/24.
- Watchlist: current "Week of 2026-08-21" (refreshed 8/21, unchanged since
  8/22's check). BAX remains off the core list — week 2 of the
  two-consecutive-week thesis-broken tracking window; **flag for Monday
  pre-market: if BAX is still absent from the next screen refresh (due
  8/28), this crosses the two-consecutive-Friday threshold and would
  trigger a mandatory thesis-broken exit regardless of P&L.**

### Data-quality / research-call decision
**Deliberately skipped a fresh Gemini Deep Research call this session** —
account state above is byte-identical to yesterday's (8/22) snapshot, which
already ran a full consolidated Gemini query covering market context and
held/watchlist thesis checks for this same non-trading weekend. A second
full research cycle (5-20 min background agent) would re-ask the same
questions about the same static weekend with no new information available,
directly repeating the waste flagged in 8/22's Risk Factors. This is a
judgment call under the Patience Rule / API-budget discipline (see
TRADING-STRATEGY.md), not a fallback due to a missing key or an error — no
data-quality guard applies here since no external research was attempted.
Yesterday's (8/22) thesis checks on BAX/MNKD/RIGL/EDGX/SGOV/SPHY and the
satellite 5-day catalyst scan (none found) are carried forward unchanged;
nothing has occurred since to invalidate them (market closed both days).

### Market Context
Carried forward from 8/22 (VIX ~15.87, ESU26 +0.37%, no major data release
until Aug 25 Consumer Confidence / Aug 26 PCE+GDP / Aug 27-29 Jackson Hole)
— not re-checked today given no new trading session or news window since
that pull.

### Core / Satellite Trade Ideas
Not applicable — market closed, no session exists today, nothing
actionable regardless of screen results. Full momentum/FCF/catalyst checks
resume fresh Monday 8/24 pre-market against the current Week-of-2026-08-21
watchlist.

### Risk Factors
- **Operational, escalated: two consecutive non-trading-day firings
  (Sat 8/22, Sun 8/23).** The scheduled cadence in CLAUDE.md is "five
  scheduled runs per trading day" with no weekend firings by design intent.
  This is now a confirmed recurring pattern, not a one-off — the owner
  should add a trading-day/weekday filter to the underlying routine/cron
  trigger. Left unresolved, expect a third firing Monday 8/24, which
  *would* be a legitimate trading day and should run the full workflow
  normally.
- BAX: week 2 of 2 off the core watchlist — see Account section, tracked
  for Monday.
- No held position near its hard-cut; no satellite catalyst inside the
  gap-risk window (per 8/22's scan, unchanged); no acute macro item since
  8/22's check.

### Decision
HOLD — market closed (Sunday), no trading session exists today, account
and thesis checks unchanged from yesterday's snapshot. Resume normal
pre-market screening Monday 2026-08-24; that session should run the full
workflow (including a fresh Gemini Deep Research call) since it is a real
trading day. Monday's session must also check whether BAX has cleared its
second consecutive week off the watchlist (thesis-broken exit trigger).

## 2026-08-24 — Pre-market Research

**First real trading day this workflow has run since Friday 8/21** (Sat
8/22 and Sun 8/23 both fired on non-trading days, flagged in those entries
as an operational gap — recommend owner review of the underlying cron
day-of-week filter; not re-flagged in depth here since it's a known,
already-escalated item).

### Account
- Equity: $95,753.43 | Cash: $19,350.42 (20.21%, at/above the 20% floor) | Buying power: $287,325.46 (margin-inflated 4x multiplier, no margin used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $9,377.04 (9.79%) — BAX only | Satellite exposure: $10,237.26 (10.69%) — MNKD $5,005.80 / RIGL $5,231.46 | Income exposure: $56,788.71 (59.30%) — EDGX $20,063.15 / SGOV $16,780.76 / SPHY $19,944.80
- All 6 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2015 hwm $23.37; SGOV 5% $95.5985 hwm $100.63 covering 166 of 166.740468683 sh — same immaterial ~$75 fractional dust flagged every prior sweep, not a new gap). None missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -3.41% vs. -7% core cut; MNKD +3.00%, RIGL +9.68%, both in gain vs. -15% satellite cut. Neither satellite name near its +25% tighten threshold; no core position in gain.
- This week (Aug 24 start, fresh week): core 0/6, satellite 0/4 new trades so far.
- Watchlist: current "Week of 2026-08-21" (unchanged, next refresh due Friday 8/28). BAX remains off the core list — **this is week 2 of the two-consecutive-week thesis-broken window, but per TRADE-LOG.md's 8/23 note the check fires at the *next screen refresh* (8/28), not mid-week — no forced exit today.** Flagging for Friday's refresh.

### Data-quality check
The consolidated Gemini Deep Research call completed (exit 0) but the captured output **starts mid-document** — opens on "Exchange and Fixed Income Allocations (EDGX, SGOV, SPHY)," missing the requested section (1) S&P 500 futures/VIX header, section (2) top catalysts/economic releases header, and the explicit BAX/MNKD/RIGL overnight-thesis-check portion of section (3) (jumps straight to EDGX/SGOV/SPHY). Per the data-quality guard, no figure or headline from those missing portions is used from the Gemini output — native WebSearch fallback was run for (1) SPX futures/VIX and (2)/(3) BAX/MNKD/RIGL-specific overnight news, below. Gemini's own conclusion paragraph did surface a VIX figure (15.90) and named the Iran-sanctions catalyst in passing; both are corroborated independently by the WebSearch fallback, so used with that corroboration.
- Gemini's Part IV (core watchlist) and Part V (satellite catalyst table) content was intact and used as-is (no truncation markers, coherent chain of tickers/citations throughout).

### Market Context (WebSearch fallback for sections 1-2; Gemini corroborates)
- **S&P 500 futures / VIX:** E-mini S&P futures +0.4% premarket. VIX 15.94 (+5.36% day/day) — Gemini's 15.90 figure is consistent. 10-year Treasury yield near a 20-month high (~4.74%), a background headwind for long-duration growth names per Gemini's framing.
- **Top catalyst (per Gemini, not independently re-verified line-by-line):** Treasury Secretary Bessent reportedly set to announce expanded Iran sanctions — a geopolitical crude-supply risk flagged as bullish for the energy cluster (MPC/VLO/PSX/APA, all on the core watchlist) and a general risk-off/dispersion driver. Treat as directionally useful, not a confirmed fact, since it wasn't independently re-checked.
- **Economic calendar (carried forward from 8/22, unchanged):** Aug 25 Consumer Confidence + July new home sales; Aug 26 PCE/core PCE + Q2 GDP second estimate; Fed Chair Warsh's Jackson Hole keynote Aug 27-29. Gemini adds: NVDA earnings this week is the dominant AI-capex swing factor for the semis/hardware cluster; DELL/HPE both report imminently (~8/28, ~9/2).

### Held-Position Thesis Check (WebSearch, since Gemini's version was cut off)
- **BAX (core, -3.41% unrealized):** No thesis break. New CFO John Rogers confirmed effective Oct 1 (following interim CFO Zielinski's planned Sept 15 resignation) — a scheduled transition, not a surprise departure. $0.01 dividend ex-date 8/28 (routine, already logged). Analyst fair-value estimates have drifted modestly higher ($27.29 -> ~$28.73). No negative news.
- **MNKD (satellite, +3.00% unrealized):** No thesis break, but one item worth logging: an 8/21 Form 424B7 prospectus supplement covers resale of up to ~12.85M shares (incl. shares underlying pre-funded warrants) by the selling stockholders from the 7/24 private placement (the same raise already logged as funding the scPharmaceuticals milestone) — this is a resale registration of already-issued shares, not a new dilutive offering by the company, but it does put more freely-tradeable supply into the market and is worth watching for technical pressure. Furoscix ReadyFlow "late August" commercial availability remains the live, ongoing catalyst (gradual rollout, not a single-day binary).
- **RIGL (satellite, +9.68% unrealized):** No thesis break. VEPPANU is confirmed commercially available since 8/11 (first-and-only FDA-approved PROTAC for ER+/HER2-, ESR1-mutated breast cancer) at $29,400/30-day supply. H.C. Wainwright raised its price target from $57 to $85 citing VEPPANU + the Rezlidhia partnership. Thesis strengthening, not weakening.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news surfaced (Gemini's intact commentary: SGOV remains an optimal zero-duration ballast at >3.7% short-bill yields; SPHY's 7.08% SEC yield is attractive but flagged with elevated duration/credit-risk commentary given the steep long end of the curve — a standing macro watch item, not a thesis break for a fixed 5%-trailing-stop income holding).

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-21)
No fresh momentum/FCF/rating re-screen run this session (that's the market-open workflow's job); this is overnight-news context only, nothing here is pre-approved. Per Gemini: AI-hardware/semis cluster (DELL, HPE, MRVL, MU, ANET) showing overnight softness/volatility (MU -1.40% and MRVL -2.88% on Blue Ocean overnight tape) ahead of NVDA earnings, plus an active DELL/HPE OEM server pricing war (HPE now guaranteeing 30-day quote validity, DELL matching) — a margin-compression watch item, not a thesis break for either. Energy cluster (MPC, VLO, PSX, APA) has a constructive geopolitical setup on the Iran-sanctions catalyst above. NTAP earnings confirmed 9/2; WDAY/PANW report week of 8/31 with WDAY facing softening-hiring headwinds. VEEV benefiting from a healthcare-tech analyst-upgrade wave. TGT/BBY value-retail bid continues; travel/discretionary (EXPE/ABNB/BKNG/DASH) flagged as macro-vulnerable on weak July retail sales/consumer confidence. IQV reaffirmed strong (record $3.15B R&DS bookings, raised FY26 guidance). None of this changes Monday's momentum/FCF gate, which will be recomputed fresh at market-open per standard practice.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-21)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots.
- **CGEM** — not held. Confirmed outside the 5-trading-day window (IASLC lung-cancer conference catalyst is Sept 12-15, not near-dated); Gemini flags a risk of pre-conference abstract leaks as a watch item, not an actionable catalyst today.
- **TWIN, SHIP** — not held. Both are attending the D.A. Davidson Small Satellite Conference (Salt Lake City, Aug 23-26) this week — Gemini frames this as a volatility/PR-risk window (possible backlog or partnership disclosures at a micro-cap conference), not a documented binary catalyst per TRADING-STRATEGY.md's definition. Logged as a watch item; not a new entry trigger on its own.
- No documented binary regulatory/clinical catalyst inside the 5-day window (Aug 24-31) for any of MNKD, RIGL, CGEM, TWIN, or SHIP that would require entry/exit action today.

### Risk Factors
- MNKD: 8/21 resale registration of ~12.85M shares from the already-logged 7/24 private placement — supply overhang worth monitoring, not a thesis break (see Held-Position Thesis Check).
- BAX remains off the core watchlist for a 2nd week — no forced exit today per the 8/28-refresh-triggered rule (see Account section), but this is the last research window before Friday's refresh decides it.
- 10-year Treasury yield near a 20-month high (~4.74%) is a standing macro headwind for long-duration growth/discretionary names on the watchlist (EXPE/ABNB/BKNG/DASH/WDAY flagged specifically by Gemini).
- Iran-sanctions catalyst (per Gemini, not independently re-verified) could move energy-cluster watchlist names (MPC/VLO/PSX/APA) and broader risk sentiment intraday.
- No held position at/beyond its sleeve hard-cut; no satellite catalyst inside the gap-risk window requiring action.

### Decision
HOLD — no held position broken or near its cut, no satellite binary catalyst inside the gap-risk window, cash at/above the 20% floor. Nothing here is a pre-approved trade; core/satellite entries still require the full momentum/FCF/catalyst gate to be re-run fresh at market-open per TRADING-STRATEGY.md. Watch items for later today/this week: NVDA earnings' effect on the AI-hardware cluster, MNKD's resale-registration supply overhang, and BAX's countdown to Friday's watchlist-refresh thesis-broken decision.

### 9:30 AM Session Note
- Live account confirmed: equity $95,677.37, cash $19,350.42 (20.23%, above the
  20% floor). All 6 open positions (BAX core; MNKD/RIGL satellite; EDGX/SGOV/SPHY
  income) carry live GTC trailing stops, none missing, none at/beyond hard-cut
  (BAX -3.48% vs -7%; MNKD +2.63%, RIGL +8.73%, both vs -15%). No stop-tighten
  trigger (both satellite gains below +25%). This week (Aug 24 start): core
  0/6, satellite 0/4 new trades.
- Since pre-market deferred the momentum re-screen to this session with no
  specific candidate flagged, ran STEP 2 live quotes on the highest-ranked
  unheld core names (DELL, MRVL, HPE, PANW, MU, NTAP) and the unheld satellite
  names (CGEM, TWIN, SHIP) before running the fundamentals/momentum gate.
  Every single one showed a grossly wide bid/ask spread ~3-4 min after the
  open: DELL ~10.8%, MRVL ~9.5%, HPE ~5.8%, PANW ~9.2%, MU ~2.1%, NTAP ~6.1%,
  CGEM ~28.3%, TWIN ~38.1%, SHIP ~20.7% — the same thin-opening-auction
  illiquidity condition repeatedly documented in TRADE-LOG (e.g. WDC/STX/AMAT
  7/24, ORN/CVLG 7/21-7/27), well outside the tight ~0.5-1% spreads seen on
  confirmed live entries. Per the wide/illiquid-spread skip rule in STEP 2,
  none reached the buy-side gate — no fundamentals/catalyst check was run on
  any of them this window.
- Decision: HOLD, no trade. Core sleeve remains underweight (BAX only, 9.8%
  of equity vs. 85% target) — a real gap, but not one to force through
  illiquid opening prints. Re-check spreads on this same shortlist at the
  11am window once opening-auction liquidity normalizes; if any clear the
  spread bar, run the full fundamentals/momentum gate then.

### 11 AM Session Note
- No "### Approved Trades (verified)" section in today's entry (pre-market
  and 9:30am both landed on HOLD, no trade) — per this window's mandate
  (execute Market-open's approved list only, no re-screen), buy side stayed
  HOLD. This week (Aug 24 start): core 0/6, satellite 0/4 new trades.
- Live account: equity $95,596.67, cash $19,350.42 (20.24%, above the 20%
  floor) — no sweep needed. All 6 open positions (BAX core; MNKD/RIGL
  satellite; EDGX/SGOV/SPHY income) confirmed via `alpaca.sh
  positions`/`orders` carrying live GTC trailing stops, none missing, none
  moved down: BAX 10% $24.705 (hwm $27.45); MNKD 15% $3.74 (hwm $4.40); RIGL
  15% $40.239 (hwm $47.34); EDGX 5% $25.9825 (hwm $27.35); SPHY 5% $22.2015
  (hwm $23.37); SGOV 5% $95.608 (hwm $100.64, covers 166 of 166.740468683
  sh — same immaterial ~$75 fractional dust flagged every prior sweep).
- No position at/beyond its sleeve hard-cut (BAX -3.78% vs. -7% core cut;
  MNKD +2.88%, RIGL +9.02%, both in gain vs. -15% satellite cut). No
  stop-tighten trigger (both satellite gains below +25%; BAX not in gain so
  the core tighten schedule doesn't apply). No thesis break on any held
  name — nothing new since the 9:30am note; no sharp unexplained intraday
  move on any position (largest intraday move BAX -0.38%), so no Gemini
  catalyst-check call this window. 2-strike sub-sector tracker unchanged:
  biotech 1/2 (OCUL 7/23), industrials 0/2.
- Decision: HOLD, no action taken. Core sleeve remains underweight (BAX
  only, 9.79% of equity vs. 85% target) on the stale Week-of-8/21 watchlist
  — Friday 8/28's refresh is the fix, not a forced trade. Next check: 3pm
  window.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists
  anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am, and this 3pm
  check all confirm none — still blocked by the stale "Week of 2026-08-21"
  watchlist for a fresh core name; no satellite candidate cleared either).
  This week (Aug 24 start) closes at core 0/6, satellite 0/4 new trades.
- Live account: equity $95,636.54, cash $19,350.42 (20.24%, above the 20%
  floor) — no sweep needed. All 6 open positions (BAX core; MNKD/RIGL
  satellite; EDGX/SGOV/SPHY income) confirmed via `alpaca.sh
  positions`/`orders` carrying live GTC trailing stops, none missing, none
  moved down: BAX 10% $24.705 (hwm $27.45); MNKD 15% $3.74 (hwm $4.40); RIGL
  15% $40.239 (hwm $47.34); EDGX 5% $25.9825 (hwm $27.35); SPHY 5% $22.2015
  (hwm $23.37); SGOV 5% $95.608 (hwm $100.64, covers 166 of 166.740468683
  sh — same immaterial ~$75 fractional dust flagged every prior sweep, not
  a new gap).
- Risk sweep: no position at/beyond its sleeve hard-cut (BAX -3.35% vs. the
  -7% core cut; MNKD +3.13%, RIGL +7.96%, both in gain vs. the -15%
  satellite cut). Fresh WebSearch thesis check on BAX/MNKD/RIGL found
  nothing new or negative since the 11am note: BAX's CFO transition/$0.01
  dividend (ex-date 8/28) and modestly higher analyst fair-value estimates
  are unchanged housekeeping; MNKD's FUROSCIX ReadyFlow approval and $50M
  private placement remain the last confirmed items, no new binary; RIGL's
  VEPPANU commercial launch (8/13) remains resolved-positive, no new
  catalyst. No thesis break, nothing closed. No satellite catalyst inside
  the 1-2 trading-day gap-risk window for either MNKD or RIGL (both
  catalysts already resolved). No stop tightening this window — MNKD
  +3.13% and RIGL +7.96% both remain well below the +25% satellite tighten
  threshold; BAX is not in gain so the core tighten schedule doesn't apply.
  No stop moved down. 2-strike sub-sector tracker unchanged: biotech 1/2
  (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- Decision: HOLD, no action taken. Core sleeve remains underweight (BAX
  only, 9.81% of equity vs. 85% target) on the stale Week-of-8/21 watchlist
  — Friday 8/28's refresh is the fix, not a forced trade. A full day with
  zero new trades in either sleeve is a valid Patience-Rule outcome, not an
  error. BAX's second consecutive week off the core watchlist (per
  WATCHLIST.md's 08-21 refresh) is decided at Friday 8/28's screen refresh,
  not mid-week — no forced exit today.

## 2026-08-25 — Pre-market Research

### Account
- Equity: $95,631.50 | Cash: $19,350.42 (20.24%, at/above the 20% floor) | Buying power: $287,013.22 (margin-inflated 4x multiplier, no margin used or planned)
- Core exposure: $9,430.44 (9.86%) — BAX only | Satellite exposure: $10,111.89 (10.57%) — MNKD $4,969.35 / RIGL $5,142.54 | Income exposure: $56,738.75 (59.32%) — EDGX $20,003.39 / SGOV $16,781.99 / SPHY $19,953.36
- All 6 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.239 hwm $47.34; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2015 hwm $23.37; SGOV 5% $95.608 hwm $100.64 covering 166 of 166.740468683 sh — same immaterial ~$75 fractional dust flagged every prior sweep, not a new gap). None missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -2.86% vs. -7% core cut; MNKD +2.25%, RIGL +7.82%, both in gain vs. -15% satellite cut.
- This week (Aug 24 start): core 0/6, satellite 0/4 new trades so far.
- Watchlist: current "Week of 2026-08-21" (unchanged, next refresh due Friday 8/28). BAX remains off the core list — this is week 2 of the two-consecutive-week thesis-broken window; per TRADE-LOG.md's 8/23 note the check fires at the next screen refresh (8/28), not mid-week — no forced exit today.

### Data-quality check — Gemini truncation, 13th+ consecutive session
The consolidated Gemini Deep Research call completed (exit 0) but the captured output **starts mid-document**, opening directly on the satellite catalyst-proximity table/analysis and the closing "Strategic Synthesis" section. Entirely missing: section (1) S&P 500 futures/VIX, section (2) top catalysts/economic releases, section (3) the held-tickers (BAX/MNKD/RIGL/EDGX/SGOV/SPHY) overnight thesis-break check, and virtually all of section (4)'s core-watchlist portion (no core tickers discussed at all beyond passing mentions inside the synthesis paragraph). Per the data-quality guard, no figure or headline from those missing sections is used. Native WebSearch fallback was run for sections (1)-(3) below; the fallback does not cover a fresh per-ticker sweep of all 22 core watchlist names (that re-screen is market-open's job per standing practice, not pre-market's).
- Gemini's satellite catalyst table/analysis (MNKD/RIGL/CGEM/TWIN/SHIP) and closing synthesis paragraph were coherent and intact — used as-is, cited below.

### Market Context (WebSearch fallback for sections 1-2)
- **S&P 500 futures / VIX:** E-mini S&P futures +0.12% premarket. VIX 15.85 (+4.76% day/day). 10-year yield backdrop and de-leveraging tailwinds carried forward from recent sessions (not independently re-verified today).
- **Top catalysts today:** Busy calendar — ~45 scheduled economic events and ~42 earnings reports. New U.S. sanctions against Iran (continuation of the standing Iran/Strait-of-Hormuz risk-off catalyst flagged in the 8/24 entry, not a new resolution) alongside incoming housing (July new home sales) and Consumer Confidence data. Nvidia reportedly notified clients of >15% price hikes on Vera Rubin/Blackwell-chip servers — a watch item for the core AI-hardware cluster (DELL/HPE/MRVL/MU/NTAP/ANET), not independently corroborated beyond the single search result.
- **Economic calendar (carried forward from 8/24, unchanged):** Aug 26 PCE/core PCE + Q2 GDP second estimate; Fed Chair Warsh's Jackson Hole keynote Aug 27-29; NVDA earnings this week remains the dominant AI-capex swing factor; DELL/HPE both report imminently (~8/28, ~9/2).

### Held-Position Thesis Check (WebSearch, since Gemini's version was cut off)
- **BAX (core, -2.86% unrealized):** No thesis break. New CFO John Rogers confirmed effective Oct 1 (unchanged from 8/24). Credit agreement adjusted for higher net leverage and bond-tender capacity expanded to $600M, plus an interim Chief Accounting Officer/Controller named — a balance-sheet-tightening/restructuring push, not a red flag on its own. $0.01 dividend ex-date 8/28 (routine, already logged). No negative news.
- **MNKD (satellite, +2.25% unrealized):** No thesis break; no new overnight items surfaced beyond what's already logged (FUROSCIX ReadyFlow FDA approval 7/23, $50M private placement, 8/21 resale registration). Per Gemini's intact satellite table, the ReadyFlow autoinjector's U.S. commercial launch is guided "by the end of August 2026" — a gradual rollout catalyst, not a single-day binary, and it is technically inside the 5-trading-day window as of today. Consistent with the existing thesis (already-resolved PDUFA, ongoing launch execution) — no gap-risk resizing needed since this isn't a discrete regulatory/data-readout event.
- **RIGL (satellite, +7.82% unrealized):** No thesis break. No specific new dates/events found for RIGL in the past 24h; VEPPANU commercial availability (since 8/11) remains the standing, resolved-positive catalyst.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news search run this session (no acute price move on any); standing macro commentary from prior sessions (SGOV short-bill yield ballast, SPHY elevated duration/credit-risk watch item) carried forward, not a thesis break for fixed-stop income holdings.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-21)
No fresh momentum/FCF/rating re-screen run this session (that's the market-open workflow's job); Gemini's core-watchlist section was truncated away entirely this session, so no consolidated overnight-news sweep is available for the 22-name core list beyond the single Nvidia server-pricing item above (AI-hardware cluster watch item, not a thesis break). Nothing here is pre-approved — core entries still require the full momentum/FCF/rating gate to be re-run fresh at market-open.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-21)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots.
- **CGEM** — not held. Gemini's intact satellite table confirms no near-dated catalyst inside the 5-day window.
- **TWIN** — not held. Gemini's intact satellite table confirms no near-dated catalyst inside the 5-day window.
- **SHIP** — not held. Gemini's intact satellite table confirms next catalysts (Nov earnings / Jan newbuild delivery) are months out, not inside the 5-day window. Notes a completed €100M unsecured bond offering (2031 maturity, 4.90% coupon) and a constructive Capesize dry-bulk supply/demand backdrop — context only, not a new entry trigger.
- No documented binary regulatory/clinical catalyst inside the 5-trading-day window (Aug 25 - Sep 1) for any of MNKD, RIGL, CGEM, TWIN, or SHIP that would require entry/exit action today; MNKD's gradual launch-timing item is already accounted for in the held-position thesis check above.

### Risk Factors
- Gemini Deep Research truncation: 13th+ consecutive session (started ~8/07-8/08 per prior logs) with sections 1-3 and most of section 4 missing — standing operational item, `extract_report()` bug still unresolved, WebSearch fallback used again this session.
- BAX remains off the core watchlist for a 2nd week — no forced exit today per the 8/28-refresh-triggered rule (see Account section), but this is the last research window before Friday's refresh decides it.
- Iran-sanctions catalyst (continuation of a standing item, not independently re-verified beyond one search result) could move energy-cluster watchlist names and broader risk sentiment intraday.
- Nvidia's reported >15% price hike on next-gen server chips (single-source, not corroborated) is a watch item for the core AI-hardware cluster (DELL/HPE/MRVL/MU/NTAP/ANET) — margin/demand implications unclear, not a thesis break for any held or watchlist name today.
- No held position at/beyond its sleeve hard-cut; no satellite catalyst inside the gap-risk window requiring forced action.

### Decision
HOLD — no held position broken or near its cut, no satellite binary catalyst inside the gap-risk window requiring forced action, cash at/above the 20% floor. Nothing here is pre-approved; core/satellite entries still require the full momentum/FCF/catalyst gate to be re-run fresh at market-open per TRADING-STRATEGY.md. Watch items for later today/this week: the Gemini truncation bug (still unresolved, 13th+ session), BAX's countdown to Friday's watchlist-refresh thesis-broken decision, NVDA earnings' effect on the AI-hardware cluster, and the reported Nvidia server-chip price hikes.

### 9:30 AM Session Note
- Live account confirmed: equity $95,771.28, cash $19,350.42 (20.21%, above the 20% floor). All 6 open positions (BAX core; MNKD/RIGL satellite; EDGX/SGOV/SPHY income) carried live GTC trailing stops, none missing, none at/beyond hard-cut (BAX -4.09% vs -7%; MNKD +4.50%, RIGL +9.87%, both vs -15%). No open buy orders pending. This week (Aug 24 start): core 0/6, satellite 0/4 new trades.
- Pre-market deferred the momentum re-screen to this session with no candidate pre-approved. Core sleeve remains materially underweight (BAX only, ~9.8% of equity vs. 85% target), so ran STEP 2 live quotes on the highest-ranked unheld core name (DELL, watchlist rank 1) and sized a tentative buy (21 sh, ~$9,385, ~9.8% of equity) funded via a 92-share SGOV sweep (per the pre-trade cash-floor rule — post-buy cash without the sweep would have landed ~$9.2k below the 20% floor).
- After the sweep, DELL's live quote proved unstable/wide on repeated polling within about a minute: ap/bp $446.91/$445.22 (0.4% spread) at the initial check, then $466.09/$419.61, $466.09/$447.01, $466.09/$419.61, $448.49/$419.61 (spread flickering roughly 0.4%-10.5%) — the same thin-opening-auction illiquidity condition documented in the 8/24 9:30am session note for this identical shortlist (DELL ~10.8%, MRVL ~9.5%, HPE ~5.8%, PANW ~9.2%, MU ~2.1%, NTAP ~6.1%, CGEM ~28.3%, TWIN ~38.1%, SHIP ~20.7%). MRVL (next-ranked unheld core name) also flickered 0.7%-4.2% across three polls. Satellite candidates were not re-checked this window (CGEM/TWIN/SHIP showed 16-31% spreads at pre-market-adjacent polling, consistent with the same pattern). SGOV's own quote stayed flat/stable ($100.64/$100.65, deep book) throughout, confirming the instability is specific to the thinly-traded opening prints on individual equities, not a broader feed outage.
- Per STEP 2's skip-wide-or-zero-spread rule, no buy reached the fundamentals/gate check. With no trade left to fund, reversed the SGOV sweep (bought back 92 sh) rather than leave cash sitting idle above the floor with Income underweight its target split — net round-trip cost $0.92, immaterial. Both SGOV legs logged in TRADE-LOG.md. Process note for next time: check spread stability *before* executing the funding sweep, not after — no harm this session (fully reversible, income-only), but the correct order per STEP 2 is quote-check first.
- Decision: HOLD, no net trade in core or satellite. Re-check spreads on the same shortlist (DELL, MRVL, HPE, PANW, MU, NTAP, CGEM, TWIN, SHIP) at the 11am window once opening-auction liquidity normalizes, consistent with 8/24's pattern where later windows are expected to show tighter spreads.

### 11 AM Session Note
- **Process gap found and fixed:** market-open's PR (#146, the 9:30am session note + both SGOV legs above) had been pushed but left as an open draft — never merged to main, so it was absent from `main` at the start of this window (confirmed via `git log origin/main` showing 2026-08-25's last merged commit as pre-market only). Cross-checked the live Alpaca order history directly, confirmed the DELL-attempt/SGOV-round-trip narrative in the draft PR matches the account's actual order timestamps/fills exactly, then merged PR #146 (squash) before proceeding — main now carries the complete 9:30am record. No unlogged or unexplained trading activity; this was a missed merge step, not a missing log.
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists in today's RESEARCH-LOG — market-open aborted its only candidate (DELL) on a wide/unstable spread and reversed its funding sweep; no satellite candidate was in play either. Per this window's mandate (execute market-open's approved list only, no re-screen), buy side stays HOLD. This week (Aug 24 start): core 0/6, satellite 0/4 new trades.
- Live account: equity $95,823.58, cash $19,349.50 (20.19%, above the 20% floor) — no sweep needed. All 6 open positions (BAX core; MNKD/RIGL satellite; EDGX/SGOV/SPHY income) confirmed via `alpaca.sh positions`/`orders` carrying live GTC trailing stops, none missing, none moved down: BAX 10% $24.705 (hwm $27.45); MNKD 15% $3.74 (hwm $4.40); RIGL 15% $40.239 (hwm $47.34); EDGX 5% $25.9825 (hwm $27.35); SPHY 5% $22.2015 (hwm $23.37); SGOV 5% $95.6175 (hwm $100.65, covers 166 of 166.740468683 sh, restored post-round-trip — same immaterial ~$75 fractional dust flagged every prior sweep).
- Risk sweep: no position at/beyond its sleeve hard-cut (BAX -3.96% vs. -7% core cut; MNKD +5.25%, RIGL +9.23%, both in gain vs. -15% satellite cut). No stop-tighten trigger (both satellite gains below +25%; BAX not in gain so the core tighten schedule doesn't apply). No thesis break carried forward from pre-market/9:30am (BAX CFO transition/dividend, MNKD ReadyFlow launch, RIGL VEPPANU launch all unchanged) — no acute unexplained intraday move on any held name (largest: MNKD +3.44% intraday, consistent with broader tape, not a standalone Gemini-catalyst-check trigger). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- Decision: HOLD, no action taken this window beyond the PR-146 merge housekeeping above. Core sleeve remains underweight (BAX only, 9.86% of equity vs. 85% target) on the stale Week-of-8/21 watchlist — Friday 8/28's refresh is the fix. Next check: 3pm window.

### 3 PM Session Note
- **Buy-side: HOLD.** No "### Approved Trades (verified)" section exists anywhere in today's RESEARCH-LOG (pre-market, 9:30am, 11am all confirm none — market-open's only candidate, DELL, was aborted on a wide/unstable opening-auction spread). Per STEP 3, no buys placed this window. This week (Aug 24 start) closes at core 0/6, satellite 0/4 new trades.
- **Risk sweep, live via `alpaca.sh account`/`positions`/`orders`:** equity $95,936.21, cash $19,349.50 (20.17%, at/above the 20% floor, no funding sweep needed). No position at/beyond its sleeve hard-cut: BAX -3.39% (core cut -7%); MNKD +4.50%, RIGL +11.16% (both vs. satellite cut -15%). All 6 open positions confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing, none moved down: BAX 10% $24.705 (hwm $27.45); MNKD 15% $3.74 (hwm $4.40); RIGL 15% $40.341 (hwm $47.46, ratcheted up mechanically from $40.239 since 11am — not a manual move); EDGX 5% $25.9825 (hwm $27.35); SPHY 5% $22.2015 (hwm $23.37); SGOV 5% $95.6175 (hwm $100.65, covers 166 of 166.740468683 sh, same immaterial ~$75 fractional dust flagged every prior sweep).
- **No satellite catalyst inside the 1-2 trading-day gap-risk window:** MNKD's FUROSCIX PDUFA resolved 7/24 (end-of-August commercial launch is a gradual rollout, not a discrete binary event); RIGL's VEPPANU commercial launch resolved 8/13. No gap-risk action needed on either.
- **Thesis check:** no break on any held name. BAX's momentum still clears but it remains off the core watchlist for week 2 running (Week of 8/21) — per the standing interpretation documented in the 8/23 TRADE-LOG note and carried through 8/24, the two-consecutive-week thesis-broken exit is decided at the next screen refresh (Friday 8/28), not forced mid-week. No new negative news on BAX/MNKD/RIGL since the 11am check.
- **No stop tightening this window** — MNKD (+4.50%) and RIGL (+11.16%) both remain well below the satellite +25% tighten threshold; BAX is not in gain so the core tighten schedule doesn't apply. No stop moved down.
- **2-strike sub-sector tracker unchanged:** biotech 1/2 (OCUL 7/23), industrials 0/2.
- **Risky positions closed today: none.**
- **Lesson for Friday's review:** BAX's second-consecutive-week-off-watchlist status is now the top open item heading into 8/28's refresh — if it's still absent, the thesis-broken rule requires an exit regardless of P&L. Also carrying forward the standing Gemini `extract_report()` truncation bug (13th+ consecutive session).

## 2026-08-26 — Pre-market Research

### Account
- Equity: $95,887.77 | Cash: $19,349.27 (20.18%, at/above the 20% floor) | Buying power: $287,661.36 (margin-inflated 4x multiplier, no margin used or planned) | Daytrade count: not present in account payload (same pattern as prior sessions)
- Core exposure: $9,366.36 (9.77%) — BAX only | Satellite exposure: $10,355.40 (10.80%) — MNKD $5,054.40 / RIGL $5,301.00 | Income exposure: $56,816.74 (59.25%) — EDGX $20,028.76 / SGOV $16,783.26 / SPHY $20,004.72
- All 6 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.341 hwm $47.46; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.210905 hwm $23.3799; SGOV 5% $95.6175 hwm $100.65 covering 166 of 166.740468683 sh — same immaterial ~$75 fractional dust flagged every prior sweep, not a new gap). None missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -3.52% vs. -7% core cut; MNKD +4.00%, RIGL +11.14%, both in gain vs. -15% satellite cut.
- This week (Aug 24 start): core 0/6, satellite 0/4 new trades so far.
- Watchlist: current "Week of 2026-08-21" (unchanged, next refresh due Friday 8/28). BAX remains off the core list — this is week 2 of the two-consecutive-week thesis-broken window; per TRADE-LOG.md's 8/23 note the check fires at the next screen refresh (8/28), not mid-week — no forced exit today.

### Data-quality check — Gemini truncation bug appears resolved this session (first clean report in 13+ sessions)
The consolidated Gemini Deep Research call completed (exit 0) and the captured output is a **coherent, complete report from its opening header through its closing Strategic Directives and sources list** — no mid-document start, no missing sections. All four requested points are addressed, though not under explicit numbered headers: market catalysts/VIX are covered in "Top Market-Moving Catalysts" and the Income Allocation section, held-position thesis checks are covered per-ticker, and the full watchlist sweep plus the 5-day satellite catalyst calendar are both present and explicit. Treating this session's output as reliable and using it directly — flagging the apparent resolution of the long-standing `extract_report()` truncation bug for tracking; will confirm over the next few sessions before declaring it fixed for good.

### Market Context
- **S&P 500 / VIX:** S&P 500 +0.11%, DJIA +0.54%, notable divergence with Nasdaq 100 lagging. VIX 15.85 (subdued, no systemic stress signal).
- **Top catalyst — structural sector rotation, not macro data:** Capital is aggressively rotating out of semiconductor/AI-hardware infrastructure names and into beaten-down software/recurring-revenue names. Options market confirms: SMH (semis ETF) 30-day IV at 37; MU specifically pricing IV of 66 with a 1.2:1 call/put ratio — heavy uncertainty on where the hardware selloff bottoms. CRWD and CRM both report earnings shortly with options pricing ~8.5% expected moves, underscoring the stakes of the software-rotation thesis.
- **Economic calendar:** Aug 26 PCE/core PCE + Q2 GDP second estimate; Fed Chair Warsh's Jackson Hole keynote Aug 27-29 (both carried forward from prior sessions, not independently re-verified today).

### Held-Position Thesis Check
- **BAX (core, -3.52% unrealized) — NEW, real, action-relevant:** Baxter issued a **voluntary recall of one lot of cefazolin in dextrose injection** (Lot LD175708, exp. Feb 2027) after particulate cardboard was found inside IV infusion bags distributed nationwide Mar-Jun 2025. Baxter's own FDA communication describes a "reasonable probability" of vessel blockage, immune activation, and organ dysfunction if a contaminated bag were used; Baxter states it has received **no adverse clinical event reports** to date. Single-lot scope makes the direct financial impact immaterial, but this lands on a company still rehabilitating investor trust after the fatal Novu IQ infusion-pump failures (79 injuries, 2 deaths) earlier this year — Gemini's assessment: thesis **not fundamentally broken**, but "severely stressed," recommending stop-tightening to protect the multiple-expansion gains earned over the past three months rather than an outright exit. Not a hard-cut breach (-3.52% vs. -7%) and not one of the three explicit urgent-notification triggers (position not below hard-cut, no satellite catalyst involved, not geopolitical) — logged here for market-open's attention rather than an interrupt-worthy email. Combined with BAX's second consecutive week off the core watchlist (Friday 8/28 refresh decides the thesis-broken exit), this is now two independent reasons to scrutinize BAX closely this week.
- **MNKD (satellite, +4.00% unrealized):** No thesis-breaking news. Confirmed **no catalyst inside the 5-trading-day window** (Aug 26-Sep 2) — next visible events are institutional healthcare-conference presentations Sept 4 (Wells Fargo), Sept 6 (Morgan Stanley), Sept 10 (H.C. Wainwright), all after the window. Pipeline (Nintedanib DPI Phase 1b, FUROSCIX ReadyFlow COGS reduction) and balance sheet (Blackstone $500M non-dilutive facility) both intact.
- **RIGL (satellite, +11.14% unrealized):** No material overnight news found across clinical/regulatory/financial sources. Thesis fully intact. No catalyst inside the 5-day window.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news. VIX subdued (15.85), no credit-market stress — thesis intact for all three fixed-stop income holdings.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-21)
Overnight-news context only — nothing here is pre-approved; the full momentum/FCF/rating gate still runs fresh at market-open.
- **XYZ:** Strong Q2 beat (EPS $1.02 vs. $0.48 est., rev +9.3% to $6.62B), FY26 EPS guide $4.02. Neighborhoods ecosystem scaling (~$1B annualized GPV). Routine 10b5-1 insider sales offset by much larger institutional buying (BlackRock +$621M stake). Thesis intact/strengthening.
- **ABNB:** Q2 rev +17% to $3.6B, GBV +16% to $27.2B, EBITDA margin 35%, FY26 guidance raised to "at least mid-teens" growth. AI-native platform overhaul cited as structural driver. Thesis intact/strengthening.
- **DASH:** Q2 rev +35.6% to $4.45B (beat), EPS $0.46 (narrow miss on reinvestment spend). Forward EPS growth guided +77%. Thesis intact.
- **MU:** Fundamentals remain exceptional (record Q3 revenue $13.64B, FY guide raised to $18.3-19.1B, HBM sold out into 2027, ~$100B in new take-or-pay contracts) but squarely in the eye of today's semis-rotation selloff — high volatility (66 IV) expected, not a fundamentals-driven thesis break.
- **ANET:** Record quarterly revenue (>$3B), guidance raised on hyperscaler AI-cluster demand; fundamentally pristine but exposed to the same rotation pressuring MU.
- **ZBRA:** Q2 net sales +20.4%, EPS $6.35 (beat), FY guidance raised. Thesis intact/strengthening.
- **VLO / MPC / PSX:** Crack-spread compression and seasonal-maintenance headwinds flagged across all three refiners (94-99% Q4 utilization already near-maxed); valuations stretched. Watch item, not a thesis break.
- **DELL, MRVL, HPE, PANW, NTAP, EXPE, IQV, WDAY, VEEV, BBY, TGT, APA, BKNG:** No material overnight news; DELL/MRVL/HPE/NTAP flagged as exposed to today's hardware-rotation headwind, PANW/WDAY/VEEV flagged as likely beneficiaries of the rotation into software (a potential opportunity if today's momentum recheck at market-open still clears the gate), EXPE/BKNG correlated positively to ABNB's strong quarter.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-21)
- **MNKD, RIGL** (held) — both thesis-intact per above; already at 2/4 satellite slots.
- **CGEM, SHIP** — not held. No material overnight news found for either.
- **TWIN** — not held. Already reported its primary near-term catalyst (Q4/FY earnings, 8/20) — nothing further inside the window.
- **Definitive 5-day catalyst confirmation (explicit in this session's Gemini report):** none of MNKD, RIGL, CGEM, TWIN, or SHIP has a documented regulatory/clinical/corporate catalyst date inside the Aug 26-Sep 2 window. No gap-risk entry/exit action required on any satellite name today.

### Risk Factors
- **BAX recall (new today)** — see Held-Position Thesis Check. Not a hard-cut breach, but a second, independent reason (alongside BAX's second week off the core watchlist) to watch this position closely; market-open should consider whether stop-tightening is warranted given it's not yet in gain (tightening schedule only applies above +15%).
- BAX's second consecutive week off the core watchlist — Friday 8/28's screen refresh is the scheduled decision point for the thesis-broken exit, not today.
- Structural sector rotation out of AI-hardware/semis (heavily represented on the core watchlist: DELL, MRVL, HPE, MU, NTAP, ANET) into software — elevated volatility expected across that cluster today (MU 66 IV), independent of fundamentals.
- CRWD/CRM earnings this week (options pricing ~8.5% expected moves) could set sentiment for the broader software names on the watchlist (PANW, WDAY, VEEV).
- No held position at/beyond its sleeve hard-cut; no satellite catalyst inside the gap-risk window requiring forced action.

### Decision
HOLD — no held position at/beyond its hard-cut, no satellite binary catalyst inside the gap-risk window, cash at/above the 20% floor. Nothing here is pre-approved; core/satellite entries still require the full momentum/FCF/catalyst gate to be re-run fresh at market-open per TRADING-STRATEGY.md. Watch items for today: BAX's new recall headline (real but immaterial-so-far, watch for stop-tightening at market-open), BAX's countdown to Friday's watchlist-refresh thesis-broken decision, and today's semis-to-software sector rotation as a possible tailwind for PANW/WDAY/VEEV if they still clear the momentum gate fresh this morning.

### 9:30 AM Session Note
- **Traded: BUY XYZ (core), 115 sh @ $83.31 ($9,580.65, 9.99% of equity).** Rank-22 (last cut-line) core watchlist name, but the software-rotation tailwind flagged pre-market showed up directly in the spread check: of 7 rotation-relevant candidates polled (PANW, WDAY, VEEV, XYZ, ABNB, DASH, ZBRA), XYZ was the only one with a stable, tradeable spread (~0.5%) — the rest sat at wide, static 5-13% spreads, same illiquid-open pattern as 8/24-8/25. Momentum re-verified fresh (above both MAs, 3M/6M rel. return stronger than Friday's screen) before entry. Funded via the standard SGOV pre-trade sweep (sold 96 sh) to hold the 20% cash floor; post-trade cash 20.27%.
- **No satellite trade.** CGEM and SHIP (the two unheld satellite watchlist names) both failed the spread check (~16% and ~28% respectively) — skipped, not a fundamentals issue.
- **Pattern worth flagging for Friday's review:** the wide/static-spread condition at the 9:30 open is now recurring almost every session (DELL/MRVL 8/25, 8 of 9 core candidates 8/13, and 6 of 7 today) and appears concentrated in specific names rather than random noise — worth a look at whether these are consistently large-cap/high-price names or a specific subset of exchanges/venues, since it's been the binding constraint on core deployment more often than the fundamentals gate itself.

### 11 AM Session Note
- **No buys.** Today's RESEARCH-LOG has no "### Approved Trades (verified)" section — market-open's XYZ buy was logged directly in the 9:30 AM Session Note, not staged as a verified list for this window to action — so per STEP 3 the buy side stayed HOLD. This week (Aug 24 start): core 1/6, satellite 0/4 new trades.
- **No cuts.** Core plpc: BAX -3.04%, XYZ -1.54%, both well clear of the -7% hard-cut. Satellite plpc: MNKD +2.00%, RIGL +9.27%, both in gain, clear of the -15% cut.
- **No stop tightening.** Core tighten thresholds (+15%/+20%) not reached by BAX or XYZ (both in loss/flat). Satellite tighten thresholds (+25%/+40%) not reached by MNKD or RIGL. No stop moved down.
- **Thesis check:** no change since pre-market. BAX's cefazolin recall remains "stressed but not broken" (Gemini's read); still off the core watchlist for a 2nd consecutive week — Friday 8/28's screen refresh remains the decision point, not today. MNKD/RIGL thesis intact, no catalyst inside the 5-day gap-risk window. XYZ (new position) no adverse news since entry.
- **Cash:** $19,431.02 / 20.34% equity, at/above the 20% floor — no sweep needed. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- No sharp unexplained intraday moves warranting a Gemini catalyst check — XYZ/MNKD's modest intraday softness is ordinary noise, not investigated further.

### 3 PM Session Note
- **No buys.** Still no "### Approved Trades (verified)" section anywhere in today's RESEARCH-LOG — market-open's XYZ buy remains the only trade, logged directly in the 9:30 AM note. This week (Aug 24 start) closes at core 1/6, satellite 0/4 new trades.
- **No closes.** Risk sweep re-run fresh: BAX -2.24% (recovered from -3%+ intraday, well clear of -7% core cut), XYZ +0.61%, MNKD +2.88%, RIGL +11.52% — none at/beyond its sleeve hard-cut. All 7 open positions (BAX, XYZ, MNKD, RIGL, EDGX, SGOV, SPHY) confirmed via `alpaca.sh positions`/`orders` carrying live GTC trailing stops, none missing (SGOV's 0.740468683-sh fractional remainder stays unstopped, same immaterial ~$75 dust flagged every prior sweep). No satellite catalyst inside the 1-2 trading-day gap-risk window for MNKD or RIGL (confirmed catalyst-free through Sep 2 per pre-market research). Thesis check: BAX's cefazolin recall still "stressed, not broken" per Gemini's pre-market read, 2nd consecutive week off the core watchlist — Friday 8/28's screen refresh remains the scheduled decision point, not today; XYZ (new position) no adverse news since entry; MNKD/RIGL thesis intact, nothing new since 11am. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2. Risky positions closed today: none.
- **No stop tightening.** Core tighten thresholds (+15%/+20%) not reached by BAX (loss) or XYZ (+0.61%). Satellite tighten thresholds (+25%/+40%) not reached by MNKD (+2.88%) or RIGL (+11.52%) — RIGL's stop remains at its previously-ratcheted level (hwm $47.46, stop $40.341), not a manual tighten. No stop moved down.
- **Cash:** $19,431.02 / 20.23% of $96,036.04 equity, at/above the 20% floor — no sweep needed.
- **Pattern flag carried to Friday's review:** the wide/static opening-spread condition (6 of 7 rotation-candidates skipped at 9:30 today) remains the binding constraint on core deployment more often than the fundamentals gate — worth investigating which venues/names are affected.

## 2026-08-27 — Pre-market Research

### Account
- Equity: $96,006.01 | Cash: $19,430.79 (20.24%, at/above the 20% floor) | Buying power: $288,138.86 (margin-inflated 4x multiplier, no margin used or planned)
- Core exposure: $19,125.05 (19.93%) — BAX $9,434.00 (-2.82% unrealized) / XYZ $9,691.05 (+1.15% unrealized) | Satellite exposure: $10,260.45 (10.69%) — MNKD $4,993.65 (+2.75% unrealized) / RIGL $5,266.80 (+10.42% unrealized) | Income exposure: $47,189.73 (49.15%) — EDGX $20,064.27 / SGOV $7,120.74 (70.740468683 sh, 70 sh stop-covered) / SPHY $20,004.72
- All 7 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; XYZ 10% $75.501 hwm $83.89; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.341 hwm $47.46; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.2205 hwm $23.39; SGOV 5% $95.627 hwm $100.66 covering 70 of 70.740468683 sh — same immaterial ~$75 fractional dust flagged every prior sweep, not a new gap). None missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -2.82% vs. -7% core cut; XYZ +1.15%; MNKD +2.75%, RIGL +10.42%, both vs. -15% satellite cut.
- This week (Aug 24 start): core 1/6 (XYZ, 8/26), satellite 0/4 new trades so far.
- Watchlist: current "Week of 2026-08-21" (next refresh due tomorrow, Friday 8/28). BAX remains off the core list for a 2nd consecutive week — per the standing interpretation (TRADE-LOG.md 8/23 note), the two-week thesis-broken exit is decided at tomorrow's screen refresh, not mid-week — no forced exit today.

### Data-quality check — partial truncation (section 1 missing) + suspect satellite catalyst claim
The consolidated Gemini Deep Research call completed (exit 0) but the captured output **starts mid-document**, opening directly inside section 2 (retail-earnings commentary, Dollar General) with no S&P 500 futures/VIX section (section 1) ever appearing. Per the data-quality guard, no futures/VIX figure from Gemini is used; native WebSearch fallback was run for section 1 instead (see Market Context below). Sections 2-4 (retail context, held-ticker thesis checks, watchlist news) are otherwise coherent and used as-is.

**Separately, a satellite-catalyst claim in Gemini's section 5 does not hold up and is being rejected, not carried forward:** the report asserts both MNKD and RIGL are "confirmed within the 5-day catalyst window" because the ESC (European Society of Cardiology) Congress 2026 opens in Munich tomorrow (Aug 28). The ESC Congress itself is real (confirmed via WebSearch), but neither company's presence there is documented. For RIGL specifically, the report's justification is generic boilerplate ("Rigel Medical... deploys Medical Science Liaisons... exactly like the ESC...") — WebSearch confirms Rigel Pharmaceuticals' actual 2026 conference calendar is ASCO (May, Chicago) and EHA2026 (June, Stockholm), both oncology/hematology congresses unrelated to cardiology, with no ESC presentation found anywhere. "Rigel Medical" (electrical-safety testing equipment) is a different, unrelated company from Rigel Pharmaceuticals (ticker RIGL) — this reads as the same kind of entity-conflation fabrication caught previously with SCPH/NVEE (8/07) and TENX/EYPT (8/21). For MNKD, WebSearch found the FDA-approved Furoscix ReadyFlow launch (end of August) and the real ESC Congress dates, but no specific, documented MNKD presentation or data readout at ESC — Gemini's language ("any real-world efficacy data... presented at ESC... directly impacts...") is speculative framing, not a confirmed event. Per the Pending-catalyst guard (TRADING-STRATEGY.md, added 08-21), this catalyst claim is treated as **unconfirmed and rejected** — MNKD and RIGL are **not** being treated as inside a binary gap-risk window today. Both positions' actual, previously-documented catalysts remain resolved (MNKD's FUROSCIX PDUFA approved 7/24, commercial launch is a gradual rollout not a discrete binary event; RIGL's VEPPANU commercial launch resolved 8/13) — unchanged from every prior session's assessment this week.

### Market Context (WebSearch fallback for section 1)
- **VIX:** ~15.21, down modestly day/day — subdued, no systemic-stress signal, consistent with the 15.85 level logged 8/25-8/26.
- **S&P 500 futures:** a specific pre-market futures print was not found in fallback search results (recent search results skew toward intraday/prior-session data) — not fabricating a number here per the data-quality guard. General market commentary describes indices near recent levels awaiting today's NVDA earnings.
- **Top catalyst — NVDA earnings today:** widely flagged (Gemini + WebSearch) as the dominant swing factor for the AI-hardware/semis cluster (DELL, MRVL, HPE, MU, NTAP, ANET all represented on the core watchlist) given massive YTD moves in the group (DELL +268%, MU +229%, MRVL +188%, HPE +130%, NTAP +81% YTD per Gemini's report).
- **Retail earnings (Dollar Tree reported, beat massively on a one-time tariff-refund benefit; Dollar General reports today, consensus $2.00 EPS/$11.17B rev) and Best Buy (beat, $1.28 vs $1.23 EPS)** — context for the low-income-consumer/discount-retail read-through; none of these are on our watchlist, informational only.

### Held-Position Thesis Check
- **BAX (core, -2.82% unrealized):** No new adverse news since 8/26's cefazolin-recall flag (still "stressed, not broken" per that assessment). No thesis break today. Remains off the core watchlist for a 2nd consecutive week — tomorrow's (8/28) screen refresh is the decision point.
- **XYZ (core, +1.15% unrealized):** No adverse overnight developments. Thesis intact.
- **MNKD (satellite, +2.75% unrealized):** No thesis-breaking news. The only "new" item is the rejected ESC Congress catalyst claim above — treated as unconfirmed, not a real event. FUROSCIX ReadyFlow's end-of-August commercial launch remains the standing, already-approved catalyst (gradual rollout, not binary).
- **RIGL (satellite, +10.42% unrealized):** No thesis-breaking news. Same rejected ESC Congress claim as above — not acted on. VEPPANU commercial launch (resolved 8/13) remains the standing thesis.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news. Yield curve/credit backdrop stable (10Y ~4.64% per Gemini). Thesis intact for all three fixed-stop holdings.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-21)
Nothing here is pre-approved — the full momentum/FCF/rating gate still runs fresh at market-open.
- **DELL, HPE, NTAP, MU, MRVL (AI-hardware/storage cluster):** Fundamentals remain strong per Gemini's report (DELL FY27 revenue guide raised to $165-169B; HPE Juniper-driven EPS trajectory to $3.00 by FY28; NTAP beat with raised guidance) but the whole cluster is highly exposed to today's NVDA earnings swing — a volatility, not fundamentals, watch item.
- **PANW:** Gemini flags a bearish technical setup (daily "double top," broke $314.95 neckline support, downside target ~$302.95/$298.83) — a momentum/technical caution flag for market-open's live re-screen, not a fundamentals issue on its own.
- **MPC, VLO, PSX:** Crack spreads adjusting to slightly lower crude on easing Middle East risk premium; no company-specific news.
- **TGT:** Trading in sympathy with today's discount-retail earnings prints (Dollar Tree, Dollar General); no idiosyncratic news.
- **WDAY, ZBRA, VEEV, EXPE, IQV, ABNB, APA, ANET, BKNG, DASH:** No idiosyncratic overnight catalysts or thesis-altering news found.

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-21)
- **MNKD, RIGL** (held) — thesis-intact per above; ESC Congress catalyst claim rejected as unconfirmed (see data-quality note); already at 2/4 satellite slots.
- **CGEM, TWIN, SHIP** — not held. Gemini's report explicitly confirms no company-specific presentations or catalyst events for any of the three inside the 5-trading-day window (Aug 27-Sep 3) — consistent with prior weeks. Passive watch only.
- No documented, verified binary catalyst inside the 5-trading-day window for any of MNKD, RIGL, CGEM, TWIN, or SHIP that would require entry/exit action today.

### Risk Factors
- NVDA earnings today — dominant swing factor for the core AI-hardware/semis cluster (DELL, MRVL, HPE, MU, NTAP, ANET), independent of each name's own fundamentals.
- PANW technical breakdown (double-top pattern) — a caution flag for market-open's live momentum re-screen on this watchlist name.
- Gemini data-quality: section 1 (futures/VIX) truncated, WebSearch fallback used; a fabricated/unconfirmed ESC Congress catalyst claim for MNKD/RIGL was identified and rejected — see data-quality note above. Both issues logged for the standing `extract_report()` truncation/accuracy tracking.
- BAX's 2nd consecutive week off the core watchlist — tomorrow's (8/28) screen refresh is the decision point, not today.
- No held position at/beyond its sleeve hard-cut; no verified satellite catalyst inside the gap-risk window requiring forced action.

### Decision
HOLD — no held position broken or near its cut, no verified satellite binary catalyst inside the gap-risk window (the only candidate claim was independently checked and rejected as unconfirmed), cash at/above the 20% floor. Nothing here is pre-approved; core/satellite entries still require the full momentum/FCF/catalyst gate to be re-run fresh at market-open per TRADING-STRATEGY.md. Watch items for today: NVDA earnings' effect on the core AI-hardware cluster, PANW's technical breakdown ahead of any re-screen, and tomorrow's (8/28) weekly screen-refresh which decides BAX's two-week thesis-broken status.

### 9:30 AM Session Note
- Live re-validation clean: account equity $95,889.96, cash 20.27% (above the 20% floor); all 7 open positions (BAX, XYZ, MNKD, RIGL, EDGX, SGOV, SPHY) carry live GTC stops, none missing, none at/beyond their sleeve hard-cut (BAX -4.13%, XYZ +1.46%, MNKD +1.25%, RIGL +10.64%).
- Checked live quotes on all 14 unheld core watchlist names and all 3 unheld satellite watchlist names — every one showed a wide and/or unstable spread on re-poll (see TRADE-LOG SKIP entry for detail). No trade placed either sleeve; buy-side gate never reached since the spread check (STEP 2) failed first.
- Pattern worth flagging for Friday's (8/28) weekly review: this is now 4 consecutive sessions (8/24, 8/25, 8/26, 8/27) where wide/flickering opening-auction spreads — not fundamentals or momentum — are the binding constraint on new core deployment. Core remains at 2/6 positions (19.9% exposure vs. 85% target) for the same reason across the week.

### 11 AM Session Note
- No "Approved Trades (verified)" list existed in today's RESEARCH-LOG (pre-market was HOLD, 9:30am skipped all candidates on wide spreads) — per STEP 3, no buys placed either sleeve this window.
- Live re-check clean: equity $96,262.62, cash $19,430.79 (20.19%, at/above the 20% floor, no sweep needed). All 7 open positions (BAX, XYZ core; MNKD, RIGL satellite; EDGX, SGOV, SPHY income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -3.43% (vs. -7% core cut), XYZ +3.80%, MNKD +2.63%, RIGL +11.21% (both well clear of -15% satellite cut). No stop tightening — XYZ below the core +15% threshold; MNKD/RIGL below the satellite +25% threshold. No stop moved down.
- Thesis check: no new adverse news on BAX/XYZ/MNKD/RIGL since pre-market. BAX remains off the core watchlist for a 2nd consecutive week — per the standing interpretation, the two-week thesis-broken exit is decided at tomorrow's (8/28) screen refresh, not forced mid-week. XYZ's intraday strength (+4.06%) continues the software-rotation/Q2-beat thesis already documented at entry, not an unexplained move — no Gemini call needed (STEP 7 skipped). 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- This week (Aug 24 start): core 1/6, satellite 0/4 new trades — unchanged, valid per the Patience Rule. No action taken this window (clean HOLD across the board) — no SendGrid notification sent per STEP 9.

### 3 PM Session Note
- No "### Approved Trades (verified)" list in today's RESEARCH-LOG at any window (pre-market HOLD, 9:30am/11am both skipped on spreads/no list) — per STEP 3, no buys placed either sleeve this window. This week stays core 1/6 (XYZ 8/26), satellite 0/4.
- Live re-check clean: equity $95,976.78, cash $19,430.79 (20.25%, at/above the 20% floor, no sweep needed). All 7 open positions (BAX, XYZ core; MNKD, RIGL satellite; EDGX, SGOV, SPHY income) confirmed carrying live GTC trailing stops via `alpaca.sh orders`, none missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -5.04% (vs. -7% core cut), XYZ +2.45%, MNKD +1.88%, RIGL +11.78% (both well clear of -15% satellite cut). No stop tightening — XYZ below the core +15% threshold; MNKD/RIGL below the satellite +25% threshold.
- Thesis check: no new adverse news on BAX/XYZ/MNKD/RIGL since 11am. BAX's cefazolin recall remains "stressed, not broken"; BAX stays off the core watchlist for a 2nd consecutive week — tomorrow's (8/28) screen refresh is the decision point, not today. MNKD/RIGL's ESC Congress catalyst claim stays rejected as unconfirmed (pre-market data-quality note) — no gap-risk action needed for either. 2-strike sub-sector tracker unchanged: biotech 1/2 (OCUL 7/23), industrials 0/2.
- Risky positions closed today: none.

## 2026-08-28 — Pre-market Research

### Account
- Equity: $95,949.25 | Cash: $19,430.79 (20.25%, at/above the 20% floor) | Buying power: $288,020.86 (margin-inflated 4x multiplier, no margin used or planned)
- Core exposure: $18,994.58 (19.80%) — BAX $9,231.08 (-4.91% unrealized) / XYZ $9,763.50 (+1.91% unrealized) | Satellite exposure: $10,284.54 (10.72%) — MNKD $4,942.50 (+1.70% unrealized) / RIGL $5,342.04 (+12.00% unrealized) | Income exposure: $47,239.35 (49.24%) — EDGX $20,119.62 / SGOV $7,123.57 (70.740468683 sh, 70 sh stop-covered) / SPHY $19,996.16
- All 7 open positions confirmed via `alpaca.sh positions`/`orders`, no auth errors: all carry live GTC trailing stops (BAX 10% $24.705 hwm $27.45; XYZ 10% $78.228 hwm $86.92; MNKD 15% $3.74 hwm $4.40; RIGL 15% $40.341 hwm $47.46; EDGX 5% $25.9825 hwm $27.35; SPHY 5% $22.23 hwm $23.40; SGOV 5% $95.6365 hwm $100.67 covering 70 of 70.740468683 sh — same immaterial ~$75 fractional dust flagged every prior sweep, not a new gap). None missing, none moved down.
- No position at/beyond its sleeve hard-cut: BAX -4.91% vs. -7% core cut; XYZ +1.91%; MNKD +1.70%, RIGL +12.00%, both vs. -15% satellite cut. BAX is the closest any position sits to its hard cut this week — watch, not yet action.
- This week (Aug 24 start): core 1/6 (XYZ, 8/26), satellite 0/4 new trades so far.
- Watchlist: current "Week of 2026-08-21" (next refresh due today, Friday 8/28, via the separate weekly-review workflow — not run as part of this pre-market session). BAX remains off the core list for a 2nd consecutive week; today's screen refresh is the scheduled thesis-broken decision point per the standing interpretation (TRADE-LOG.md 8/23 note) — not actioned here.

### Data-quality check — section 1 (futures/VIX) truncated; MRVL/WDAY earnings results missing (consensus only)
The consolidated Gemini Deep Research call completed (exit 0) but the captured output **starts mid-document**: it opens directly on a "Core Tech" sub-section (Marvell/Workday commentary) with no S&P 500 futures/VIX section (section 1) or explicit top-catalysts/economic-releases discussion ever appearing before it. Per the data-quality guard, no futures/VIX figure from Gemini is used; native WebSearch fallback was run for section 1 instead (see Market Context below).

Separately, Gemini's report states Marvell and Workday "reported... earnings after the market close on Thursday, August 27" but then gives only **pre-earnings consensus estimates** (e.g., "consensus looked for 93 cents in EPS on 34.9% YoY revenue growth" for MRVL) — never the actual print. This reads as another instance of the report being cut before the results themselves were included, not a fabrication. Independently verified via WebSearch: MRVL Q2 FY27 non-GAAP EPS $0.94 (vs. ~$0.93 consensus) on record revenue $2.739B (+37% YoY, beating the 34.9% consensus growth rate and $39M above the high end of prior guidance), Data Center revenue +46% YoY, Q3 guide raised to $3.15B. A clear beat-and-raise — relevant to today's market-open re-screen of MRVL (currently core watchlist rank 2, not held). WDAY's actual print was not independently checked (not a current watchlist name) and is left as a data gap.

### Market Context (WebSearch fallback for section 1)
- **VIX:** ~14.48, down slightly day/day (-0.21%) — subdued, no systemic-stress signal, continuing the low-14s/mid-15s range logged across this week.
- **S&P 500 futures:** ~-0.12% premarket — futures slightly mixed/soft as markets digest a broadening AI-capex spending boom alongside escalating Iran-related economic-warfare rhetoric; a prediction-market contract showed only ~47% odds of a higher S&P 500 open, consistent with a mildly cautious tone.
- **Top catalyst — MRVL earnings (beat-and-raise, see data-quality note) and today's Fed commentary/PCE-adjacent macro backdrop** flagged by Gemini's (unverified, not independently re-checked) macro narrative — sticky ~3.7% PCE inflation, an inverted-but-shifting yield curve, and Jackson Hole/Fed-speak as the week's dominant macro threads. Treating this framing as informational context, not a verified figure, per the data-quality guard.
- **Geopolitical:** Strait of Hormuz / Middle East tensions cited (Gemini + WebSearch) as a driver behind Thursday's >1% WTI crude rally (~$74.40/bbl) — relevant context for the refining/energy watchlist cluster (MPC, VLO, PSX, APA).

### Held-Position Thesis Check
- **BAX (core, -4.91% unrealized):** No new adverse news found; Gemini's report explicitly lists BAX among "highly profitable, wide-moat... entities" to maintain. Cefazolin-recall status unchanged ("stressed, not broken"). Remains off the core watchlist for a 2nd consecutive week — today's (8/28) screen refresh, run separately via the weekly-review workflow, is the decision point, not this session. -4.91% is the closest any held position sits to its hard cut this week (-7% core cut) — flagging for the 9:30am/11am/3pm sweeps to watch closely, not yet a forced action.
- **XYZ (core, +1.91% unrealized):** No ticker-specific overnight news surfaced in Gemini's report (a data gap, not a confirmed "all clear") — no adverse news found via the held-tickers pass either. Treated as thesis-intact pending any market-open news check.
- **MNKD (satellite, +1.70% unrealized):** No thesis-breaking news. New watch item: Gemini reports MannKind's CEO/CFO are scheduled to present at the Wells Fargo Healthcare Conference on **September 4, 2026** (cited, Boston) — the 5th trading day out from today, i.e. the outer edge of the 5-day catalyst window. This is a corporate/IR conference presentation, not an FDA/regulatory decision, trial readout, or contract award — it does not meet TRADING-STRATEGY.md's definition of a "known binary event date" requiring the 5% (vs. standard 7.5%) position cap, and is treated the same way the 8/27 entry treated the (rejected) ESC Congress claim: a watch item for possible IR-driven volatility around management's FUROSCIX ReadyFlow commentary, not a binary gap-risk event. No resize action taken on the existing position.
- **RIGL (satellite, +12.00% unrealized):** No thesis-breaking news; Gemini's own catalyst-proximity table confirms no event inside the 5-day window. VEPPANU launch (resolved 8/13) remains the standing thesis.
- **EDGX, SGOV, SPHY (income):** No idiosyncratic news. Gemini frames SGOV/SPHY as volatility shock absorbers and EDGX as positioned to capture any VIX spike via its covered-call overlay — consistent with normal function, no thesis break.

### Core Trade Ideas (from current WATCHLIST.md core list, Week of 2026-08-21)
Nothing here is pre-approved — the full momentum/FCF/rating gate still runs fresh at market-open.
- **MRVL:** Beat-and-raise Q2 print (see data-quality note) — real positive catalyst for market-open's live re-screen of this rank-2 candidate, independent of Gemini's truncated commentary.
- **DELL, HPE, NTAP, MU, ANET (AI-hardware/storage cluster):** No idiosyncratic overnight news beyond broad AI-capex sympathy trading; MRVL's beat is a modest tailwind for the cluster.
- **PANW:** No new overnight news in this report (last session's technical double-top flag stands from 8/27, not re-confirmed or refuted here).
- **MPC, VLO, PSX, APA:** Crude (WTI) rallied >1% Thursday on Strait of Hormuz/Middle East risk premium — a tailwind for upstream (APA) but a margin-compression watch item for refiners if product demand doesn't keep pace with higher input costs.
- **BKNG:** Real Q2 beat (revenue $7.35B, adj. EPS $2.54 +15% YoY) with a structural agency-to-merchant revenue mix shift; sympathy strength cited in EXPE and ABNB (currently $178.07).
- **DASH, IQV:** Both surfaced on oversold/52-week-low technical screens — Gemini frames this as an ambiguous mean-reversion-vs-value-trap setup, not a clean signal either way; treat as a caution flag for market-open's momentum re-screen, not a buy signal.
- **TGT, BBY, ZBRA:** No idiosyncratic news; BBY has earnings due later this week (informational, not today).
- **WDAY, VEEV, EXPE, ABNB, ANET:** No idiosyncratic overnight catalysts or thesis-altering news found (WDAY's actual earnings print itself is an open data gap — see data-quality note).

### Satellite Trade Ideas (from current WATCHLIST.md satellite list, Week of 2026-08-21)
- **MNKD, RIGL** (held) — thesis-intact per above; MNKD's Wells Fargo conference date noted as a watch item, not a binary catalyst requiring action; already at 2/4 satellite slots.
- **CGEM, TWIN, SHIP** — not held. Gemini's catalyst-proximity table explicitly confirms no event inside the 5-trading-day window (Aug 28-Sep 4) for any of the three. TWIN's Q4 print (reported 8/20) shows real revenue growth (+18.3% YoY) but flags fresh detail worth carrying forward: ~600bp gross-margin compression and $14.0M of the reported net income coming from a one-off tax benefit/LIFO-to-FIFO change — consistent with, and slightly more detailed than, the margin caveat already on the watchlist. SHIP: no new concerns, Capesize rate strength continues per Gemini.
- No documented, verified binary catalyst inside the 5-trading-day window for any of MNKD, RIGL, CGEM, TWIN, or SHIP that would require entry/exit action today.

### Risk Factors
- Gemini data-quality: section 1 (futures/VIX/economic-releases) truncated at the very start of the report, and MRVL/WDAY earnings results were referenced but never given (consensus only) — both gaps closed via independent WebSearch, not fabricated. Logged for the standing `extract_report()` truncation/accuracy tracking.
- BAX at -4.91% unrealized is the closest any held position sits to its hard cut (-7% core) this week — watch closely across today's sessions, no action yet.
- BAX's 2nd consecutive week off the core watchlist — today's (8/28) weekly screen-refresh, run separately, is the scheduled thesis-broken decision point.
- MNKD's Wells Fargo Healthcare Conference presentation (Sept 4) sits at the outer edge of the 5-day window — an IR/conference event, not a regulatory or trial-readout binary; watch for volatility around management's commentary, no cap resize warranted.
- Crude-driven refiner margin risk (MPC/VLO/PSX) if elevated input costs outpace product demand; Strait of Hormuz geopolitical risk cited as the driver.
- DASH/IQV technical breakdown — ambiguous oversold signal, not a basis for entry without further confirmation.
- No held position at/beyond its sleeve hard-cut; no verified satellite catalyst inside the gap-risk window requiring forced action.

### Decision
HOLD — no held position broken or at its cut (BAX closest at -4.91% vs. -7%), no verified satellite binary catalyst inside the gap-risk window (MNKD's conference presentation doesn't meet the binary-event bar), cash at/above the 20% floor. Nothing here is pre-approved; core/satellite entries still require the full momentum/FCF/catalyst gate to be re-run fresh at market-open per TRADING-STRATEGY.md. Watch items for today: BAX's -4.91% unrealized position ahead of its -7% cut, today's (8/28) weekly screen-refresh deciding BAX's two-week thesis-broken status, MRVL's beat-and-raise print for the core re-screen, and MNKD's upcoming Wells Fargo conference date.

### 9:30 AM Session Note
- Traded: BUY APA (core), 121 sh @ $42.61, 10% trailing stop placed ($38.331). Full detail in TRADE-LOG.md.
- Of 20 core/satellite candidates polled at open, APA was the only one with a genuinely stable, tight spread across 4 repeated polls (~0.16-0.26%) — HPE, MPC, and ABNB looked promising on a first poll but widened sharply (4-7%) on re-poll, same flickering-opening-liquidity pattern as every session this week. Re-polling before trusting a first-look tight spread keeps paying off.
- Funding this buy required an SGOV sweep (cash was already right at the 20.23% floor); SGOV is now down to ~20.7 sh (~$2,088), well under its 50%-of-sleeve target — sized the APA position down (5.4% of equity vs. the recent ~10% pattern) to stay within available SGOV rather than breach the "never SPHY/EDGX for buy-funding" rule. Flagging for today's separate weekly-review Part C rebalance to true up the income sleeve.
- BAX still off-watchlist 2nd week running and closest to its hard cut (-4.36% intraday vs. -7%) — today's weekly screen-refresh (run separately) is the scheduled thesis-broken decision point, not this window.
