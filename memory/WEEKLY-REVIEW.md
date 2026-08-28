# Weekly Review

Friday recaps, appended here. Also where the weekly watchlist screen-refresh
is logged (full mechanics in TRADING-STRATEGY.md → "Weekly Screen Refresh").

Template for each entry:

```
## Week ending YYYY-MM-DD

### Stats
| Metric | Value |
|---|---|
| Starting portfolio | $X |
| Ending portfolio | $X |
| Week return | ±$X (±X%) |
| S&P 500 week | ±X% |
| Bot vs S&P | ±X% |
| Core trades | N (W:X / L:Y / open:Z) |
| Satellite trades | N (W:X / L:Y / open:Z) |
| Win rate | X% |
| Best trade | SYM +X% (sleeve) |
| Worst trade | SYM -X% (sleeve) |
| Profit factor | X.XX |

### Closed Trades
| Ticker | Sleeve | Entry | Exit | P&L | Notes |

### Open Positions at Week End
| Ticker | Sleeve | Entry | Close | Unrealized | Stop |

### Watchlist Refresh
- Core: N candidates added, N dropped (reason)
- Satellite: N candidates added, N dropped (reason) — link WATCHLIST.md

### What Worked
- ...

### What Didn't Work
- ...

### Key Lessons
- ...

### Adjustments for Next Week
- ...

### Overall Grade: X
```

---

## Week ending 2026-07-12

_(First weekly review. Market week ended Fri 2026-07-10; account was funded
and the initial watchlist seeded 2026-07-11. No trades placed yet — this is a
baseline/launch week.)_

### Stats
| Metric | Value |
|---|---|
| Starting portfolio | $100,000.00 |
| Ending portfolio | $100,000.00 |
| Week return | $0 (0.0%) |
| S&P 500 week | +1.23% (index closed 7,575.39, wk ending 07-10; via Gemini Deep Research) |
| Bot vs S&P | -1.23% (bot flat in cash, S&P advanced) |
| Core trades | 0 (W:0 / L:0 / open:0) |
| Satellite trades | 0 (W:0 / L:0 / open:0) |
| Win rate | n/a (no closed trades) |
| Best trade | n/a |
| Worst trade | n/a |
| Profit factor | n/a |

### Closed Trades
| Ticker | Sleeve | Entry | Exit | P&L | Notes |
| — | — | — | — | — | No trades closed this week |

### Open Positions at Week End
| Ticker | Sleeve | Entry | Close | Unrealized | Stop |
| — | — | — | — | — | — | No open positions — 100% cash |

### Watchlist Refresh
- **Core: 24 names (was 22).** Re-screened the full ~500-name S&P universe on
  fresh Alpaca bars. New this week: STX, MU, AMD*, MRVL, WDC, DDOG, HPE, FTNT,
  AMAT, CRWD, NTAP, GLW, TXN, CSCO, CAT, GEV (mostly the AI-hardware/semis
  complex, which now dominates the momentum ranking). Retained: DELL, PANW,
  DVA, CNC, LRCX, KLAC, MPC, VLO. Dropped vs last week: ANET, WST, CVS, JBHT,
  MNST, IBKR, URI, TRGP, STT, BEN, MGM, CDNS all still pass but fell below the
  24-name cut (held as documented alternates); DAL, ELV dropped out of the top
  ranks. **MRNA** dropped on confirmed negative FCF; **HUM** dropped (FCF not
  confirmable); **FFIV/DOC/EBAY** cut on neutral/soft ratings. See
  WATCHLIST.md for the full added/dropped audit.
- **Satellite: 6 names (was 1).** Added MNKD, RIGL (biotech) and ORN, FSTR,
  TWIN (industrials — first industrials names to clear the screen); retained
  OCUL. Dropped: **REPL** (real Aug-2 PDUFA binary but pre-revenue, fails the
  growth gate — kept off the tradeable list as a high-risk watch), **QTTB**
  (cap ~$213M, below the $300M floor).
- **Data-source note:** FMP's free tier hit a hard daily "Limit Reach" on all
  endpoints mid-run, so core FCF/growth/rating validation came entirely from
  Gemini Deep Research this week (momentum math is Alpaca, unaffected).
- *AMD flagged: appeared last week's dropped list under thin coverage; this
  week Gemini confirmed positive FCF + Outperform, so it passes.

### What Worked
- Screening pipeline held up end-to-end despite FMP's full daily quota
  exhausting — the Gemini fallback carried the entire core fundamentals pass
  (55 tickers) without dropping candidates.
- Corporate-action guard did its job: caught **SNDK** ranking #1 on a bogus
  +432% 6M return (an impossible ~45x bar-series artifact from the SanDisk/WDC
  separation) and held it out instead of trading a data error.
- First industrials names (ORN, FSTR, TWIN) finally cleared the satellite
  screen — last week's list had none.

### What Didn't Work
- No capital was deployed while the S&P rose +1.23%, so the bot underperformed
  the benchmark by that amount for the week purely by being in cash. This is a
  launch-timing artifact (watchlist was only seeded 07-11), not a strategy
  failure — but it's the cost of not yet being invested.
- The core list is dangerously concentrated: ~18 of 24 names are
  semis/AI-hardware/enterprise-tech. A single AI-sector drawdown would hit most
  of the list simultaneously. Correlation risk is the dominant exposure right
  now.

### Key Lessons
- FMP free tier now has *two* failure modes: the known per-symbol allowlist
  402s **and** a hard daily total-quota "Limit Reach." Budget the Gemini
  fallback as the primary core-fundamentals path, not the exception.
- Background research fan-out needs the poller to run to completion in-process
  — a submitted-but-unpolled batch produces nothing. (Operational note for the
  workflow harness, not the strategy.)
- A momentum screen in a narrow, AI-led tape will pile into one correlated
  sector. The FCF/rating gate doesn't diversify it — position sizing and
  sleeve discipline have to.

### Adjustments for Next Week
- On the first pre-market run with capital, favor the *non-semi* core names
  (MPC, VLO, CAT, GEV, DVA, CNC) alongside the strongest 1-2 AI names rather
  than stacking correlated semis, to avoid a single-factor book.
- Verify/repair the SNDK bar series before it can be reconsidered; leave it off
  the tradeable list until then.
- Satellite: OCUL's AXPAXLI conference data (Jul 14-22) lands next week — watch
  for a gap either way; it's on the list but size per the 7.5% cap and the
  documented gap-risk note.
- No strategy-rule changes this week (only one week of live data; nothing has
  proven or failed itself for the 2-week threshold). Core risk caps untouched.

### Overall Grade: N/A — baseline/launch week
No trades to grade. Process executed correctly (screen refreshed, guardrails
fired, watchlist rebuilt); the only "result" is a -1.23% opportunity cost vs
the S&P from sitting in cash during the launch ramp. Judgment deferred to the
first week with live positions.

---

## Week ending 2026-07-24

**Coverage note — this entry spans TWO market weeks (2026-07-13 through
2026-07-24), not one.** The Friday 2026-07-17 weekly-review run never
happened (or ran and never persisted — `git log` shows no
weekly-review/watchlist-refresh commit between 0b2592c on 2026-07-12 and
this session): WATCHLIST.md's "Current" section was still dated "Week of
2026-07-12" going into today, meaning the bot traded off a screen nearly two
weeks stale for all of last week (2026-07-13 to 07-17) and this week
(2026-07-20 to 07-24). This is the single biggest process finding this
period — see "What Didn't Work" and "Adjustments" below. All trade activity
below is aggregated over the full two-week span since the last confirmed
review.

### Stats
| Metric | Value |
|---|---|
| Starting portfolio | $100,000.00 (per week-ending-2026-07-12 review) |
| Ending portfolio | $96,449.19 |
| Period return (2 weeks) | -$3,550.81 (-3.55%) |
| S&P 500, same 2 weeks (Fri 07-10 close to Fri 07-24 close) | -1.85% (7,575.39 -> 7,434.91, via Gemini Deep Research) |
| S&P 500, most recent week alone (07-17 to 07-24) | -0.31% (for reference only) |
| Bot vs S&P (2-week basis) | -1.70pp (bot underperformed) |
| Core trades | 4 (W:0 / L:2 / open:2) |
| Satellite trades | 2 (W:0 / L:1 / open:1) |
| Win rate (closed trades) | 0% (0/3) |
| Best trade (closed) | KLAC -6.62% (core) — least-bad of 3 closed trades; all 3 were losses |
| Worst trade (closed) | OCUL -15.23% (satellite) |
| Profit factor | 0.00 (gross profit $0 / gross loss $2,672.08) |

Income sleeve (SGOV/SPHY/EDGX) is not included in the trade/win-rate stats
above — it's not momentum/catalyst-screened and isn't subject to the weekly
trade caps (see TRADING-STRATEGY.md). Its only activity this period was the
initial rebalance (07-15) and routine cash-floor sweeps (07-16 x2, 07-17,
07-21, 07-23, 07-24) — no P&L signal there worth grading.

Excluded from the stats above: the 2026-07-13 O/SPHY/EDGX "anomaly" open
positions and their same-day cleanup close (net -$1.30) — explicitly
flagged in TRADE-LOG.md as unauthorized/off-watchlist, not a strategy trade.

### Closed Trades
| Ticker | Sleeve | Entry | Exit | P&L | Notes |
|---|---|---|---|---|---|
| AMD | core | $512.301053 | $465.934211 | -$880.97 (-9.05%) | 10% GTC trailing stop, filled 2026-07-17 09:38 ET, ahead of a NAND-oversupply/capex-deferral semis selloff |
| KLAC | core | $220.389778 | $205.80 | -$656.54 (-6.62%) | 10% GTC trailing stop, filled 2026-07-17 09:38 ET, same selloff (WFE-supply-constraint thesis hit by the same narrative) |
| OCUL | satellite | $9.89 | $8.383267 | -$1,134.57 (-15.23%) | 15% GTC trailing stop, filled 2026-07-23 09:51 ET, after a multi-session drift with no negative catalyst news — mechanical stop, not a thesis break. First satellite loss; biotech 2-strike tracker now at strike 1/2 |

### Open Positions at Week End
| Ticker | Sleeve | Entry | Close | Unrealized | Stop |
|---|---|---|---|---|---|
| HPE | core | $47.27 | $47.69 | +$88.20 (+0.89%) | 10% trailing, trigger $44.712 (hwm $49.68) |
| MU | core | $966.531 | $920.2367 | -$462.94 (-4.79%) | 10% trailing, trigger $869.481 (hwm $966.09) |
| MNKD | satellite | $4.00 | $4.05 | +$60.75 (+1.25%) | 15% trailing, trigger $3.5955 (hwm $4.23) |
| EDGX | income | $26.78 | $26.2162 | -$420.59 (-2.11%) | 5% trailing, trigger $25.479 (hwm $26.82) |
| SGOV | income | $100.591143 | $100.6377 | +$6.24 (+0.05%) | 5% trailing, trigger $95.608 (hwm $100.64) |
| SPHY | income | $23.36 | $23.18 | -$154.08 (-0.77%) | 5% trailing, trigger $22.2015 (hwm $23.37) |

All 6 open positions confirmed carrying live GTC trailing stop orders via
`alpaca.sh orders open`, none missing. Week-end exposure: core $19,217.27
(19.93% of equity), satellite $4,920.75 (5.10%), income $52,895.13 (54.84%),
cash $19,416.04 (20.13%, above the 20% floor).

### Watchlist Refresh
- **Core: 25 names (was 24, but the prior list was ~2 weeks stale — see
  coverage note above).** Full ~500-name universe re-screened on fresh
  Alpaca bars. FMP's daily quota was effectively exhausted before this
  session started (0/55 shortlisted names returned cashflow/growth; only
  5/55 returned a rating) — core fundamentals validation came entirely from
  Gemini Deep Research this week, batched 11 tickers/query. Momentum math
  (Alpaca) unaffected. New this week: DDOG, HUM, PANW, FTNT, CNC, DVA,
  NTAP, WDC, URI, MPC, CVS, DOC, BBY, VLO, WST, LLY, ABBV, GE — largely
  names either newly clearing the momentum+FCF gate or promoted off last
  cycle's "documented alternates" bench. Retained: DELL, MU, AMD, HPE, STX,
  CRWD, AMAT. Dropped vs the prior (07-12) list on failed fundamentals this
  week specifically: none of the 07-12 names failed outright, but FTNT,
  TXN, CSCO, LRCX, KLAC, CAT, GEV and the rest of the 07-12 list fell out
  of the top-25 cut on momentum re-ranking (KLAC/LRCX in particular now
  fail the momentum gate outright post the 07-23 semi selloff, consistent
  with this week's live market-open findings). Six names failed
  fundamentals this pass and are logged as such (not just cut-line
  casualties): PSX, ADM, TRV, HPQ, BAX, D — see WATCHLIST.md for the
  specific negative-FCF/growth/rating reasons on each.
- **Satellite: 5 names (was 6).** Added CVLG, CGEM. Retained MNKD (held),
  RIGL, FSTR. Dropped: **OCUL** (stopped out 07-23, thesis technically
  intact but momentum turned negative across every window plus a new
  REGENXBIO competitive-risk factor — sitting out a re-entry this week, not
  a permanent exclusion), **ORN** (three straight sessions failing the
  illiquid-spread skip rule, worsening each time — a liquidity exclusion,
  not fundamentals), **TWIN** (confirmed broken thesis, reverse-merger into
  a mining shell, flagged unactioned for two weeks pending this refresh).
  Considered and dropped from this week's fresh candidate search: KFRC
  (near-flat YoY growth, no dated catalyst), MLTX (dilutive equity raise +
  concentrated insider selling right after positive trial data, heavy
  Sell-rating dissent), PTGX (market cap ~$8.9B, over the $3B cap), TILE/
  BXC/JBI (weak or negative momentum). REPL re-considered and still
  excluded (existential cash-burn risk vs. CGEM's much stronger balance
  sheet, the reason CGEM cleared this week and REPL still doesn't).
- **Core sector mix (25 names):** semis/AI-hardware cluster (DELL, MU, AMD,
  HPE, STX, NTAP, WDC, AMAT) held at 8/25 (32%, under the ~40% cap) despite
  momentum ranking more names from that cluster — see "sector-capped
  alternates" in WATCHLIST.md. Cybersecurity/software 4 (DDOG, PANW, FTNT,
  CRWD), health care 7 (HUM, CNC, DVA, CVS, WST, LLY, ABBV), industrials 2
  (URI, GE), energy 2 (MPC, VLO), real estate 1 (DOC), consumer
  discretionary 1 (BBY) — 6 distinct GICS sectors represented, concentration
  risk meaningfully better distributed than the 07-12 list's ~18/24
  AI-adjacent skew.
- **Candidate queue rechecked:** CRDO, VICR, SEZL, DAVE, PACS, STRL
  confirmed not S&P 500 constituents (core-ineligible) and don't fit the
  satellite sector box. LITE and CIEN both still fail the momentum gate a
  second time running. SNDK still excluded (now fails on price vs. 50-day
  MA regardless of the prior corporate-action data concern). No changes to
  the queue.

### What Worked
- Mechanical stop discipline held on every closed trade this period (AMD,
  KLAC, OCUL) — all three exited via a real GTC trailing-stop fill, no
  manual override, no averaging down, no mental stops.
- Buy-side gate and sleeve caps were never breached: every position sized
  within its cap (core <=20%/position, satellite <=7.5% standard / 5%
  binary-catalyst), satellite total exposure stayed under the 20% sleeve
  cap all period, and MNKD was correctly sized at the tightened 5%
  binary-catalyst cap ahead of its PDUFA date.
- MNKD's satellite catalyst thesis resolved positively: the FDA approved
  FUROSCIX ReadyFlow Autoinjector on 2026-07-24, ahead of the 07-26 PDUFA
  target — the documented-catalyst entry process worked as designed.
- The 2-strike sub-sector tracker and the 20%-cash-floor rule both fired
  correctly when tested (OCUL's stop-out correctly logged as biotech strike
  1/2; both cash-floor breaches below were caught and corrected the same or
  next session, never left unresolved).
- A Gemini Deep Research fabrication (see below) was correctly NOT acted on
  — the pre-market session flagged it as unconfirmed and only treated MNKD's
  PDUFA as resolved after independent multi-source WebSearch confirmation
  at 11am. The data-quality guard did its job on a real, live-money-relevant
  case.

### What Didn't Work
- **The 07-17 weekly watchlist refresh never ran or never persisted.**
  WATCHLIST.md's "Current" section was still dated "Week of 2026-07-12"
  through all of this period — the bot traded off a screen up to 12 calendar
  days stale. No rule was technically broken (all traded names were still on
  the 07-12 list), but this is a real process failure: the strategy requires
  a fresh weekly screen, and one full cycle was silently skipped.
- **Two market-open sessions (07-16, 07-17) executed real fills and live
  stop orders on Alpaca but terminated before writing to TRADE-LOG.md /
  RESEARCH-LOG.md or committing.** Both had to be reconstructed after the
  fact from Alpaca order history by the following 11am session. For several
  hours on each of those two days, live positions existed with no entry in
  this repo's audit trail.
- **The SGOV pre-buy funding sweep was skipped twice, by the same
  mechanism, in the same period:** the 07-21 MNKD buy and the 07-24 MU buy
  were both funded from literal cash instead of a pre-buy SGOV sweep,
  dropping cash to 15.02% and 10.07% of equity respectively (real breaches
  of the 20% floor, not the expected momentary same-trade dip) until caught
  and corrected the same session. Same root cause both times: the
  funding-sweep check only fires when literal cash is short of the order
  cost, not when the trade would push post-trade cash below the floor.
- **Gemini Deep Research reliability kept degrading.** Output truncation was
  effectively constant this period (07-13 through 07-24, nearly every
  session), and on 07-24 pre-market it escalated from truncation to outright
  fabrication — Gemini reported MNKD's PDUFA as "Approved" citing a URL that
  contained no such release, on a position actively held into a weekend gap.
  Correctly caught and not acted on (see "What Worked"), but it's a step up
  in severity from prior sessions' pure content-dropping.
- **ORN's illiquid spread failed the wide-spread skip rule in 3 straight
  sessions** (07-21 stale ~$4-wide quote, 07-22 ~27%, 07-24 ~31%, each
  reading worse) despite sitting inside its Jul 28 earnings catalyst window.
  Never traded, but repeatedly re-evaluated at research cost for no result.
- **TWIN's thesis-broken status (reverse-merger/privatization into a mining
  shell, confirmed as early as 07-13 and re-confirmed 07-21) sat on the
  "current" watchlist unaddressed** because no refresh ran to drop it.

### Key Lessons
- A missed Friday refresh isn't a no-op — it silently lets the watchlist run
  stale for a full trading week with no error raised anywhere. Worth an
  explicit persistence check (e.g. confirm the refresh commit landed on
  main) before a weekly-review run is considered complete, so a skipped or
  failed run is caught immediately rather than discovered the following
  Friday.
- The two "reconstructed from Alpaca" incidents point at a session
  finishing its trading steps but terminating before its own logging/commit
  steps run. That's a real risk independent of strategy quality: a session
  that never gets a downstream reconstruction pass would leave live,
  unstopped-looking positions with zero audit trail.
- A Gemini fabrication on a specific binary-outcome claim (not just missing
  content) is materially more dangerous than truncation — it can only be
  caught by independent verification, not by noticing something is absent.
  Treat any Gemini-reported resolution of a binary catalyst as unconfirmed
  until corroborated by a second, independent source before acting on it.
- The Income sleeve's pre-buy funding-sweep rule is currently checked
  against the wrong condition ("is literal cash short of the order cost")
  instead of the one that actually matters ("would post-trade cash fall
  below the 20% floor") — it has now failed the same way twice. Fixing the
  TRADING-STRATEGY.md wording in this commit (see below).

### Adjustments for Next Week
- Watchlist refresh is caught up as of this session (see Watchlist Refresh
  below) — confirm next Friday's run actually lands on main before ending.
- Clarified TRADING-STRATEGY.md's Income-sleeve funding-sweep trigger to
  check post-trade cash against the 20% floor pre-trade, not just whether
  literal cash covers the order cost (see strategy-doc change note below).
  This is a mechanics/wording fix, not a change to risk tolerance.
- Drop ORN and TWIN from the satellite watchlist this refresh (see
  Watchlist Refresh below) — ORN for three straight illiquid-spread misses,
  TWIN for its confirmed broken thesis.
- Continue monitoring MU (semis-selloff-driven drawdown, -4.79% unrealized,
  analysts still Strong Buy, no thesis break yet) and HPE/MNKD (both
  currently in gain).
- No core risk-cap changes (sleeve %, stop widths) — two weeks of live data
  isn't enough to justify touching stop widths or position caps, and this
  period's shortfalls were process/execution bugs, not a sign the risk
  parameters themselves are wrong.

### Overall Grade: C
Process discipline on live risk management was solid — every stop fired
mechanically, every cap was respected, and the one live data-integrity
scare (the Gemini MNKD fabrication) was caught before it could cause a bad
decision. But the period's actual results were weak (0% win rate on 3
closed trades, -3.55% vs the S&P's -1.85% over the same two weeks) and, more
importantly, two structural process failures went undetected for most of
the period: a full missed watchlist refresh (a real rule-adherence risk,
even though no traded name ended up violating it) and a twice-repeated
funding-sweep bug. A rough two weeks for the broader market (AI-capex
selloff, new tariffs, a 10Y yield spike to an 18-month high) explains some
of the drawdown, but not the process gaps. Grade reflects that mix: neither
a clean pass nor a rule violation, but real operational debt that needs to
close out before it compounds.

---

## Week ending 2026-08-07

**Coverage note — this entry spans TWO market weeks (2026-07-27 through
2026-08-07), not one.** The Friday 2026-07-31 weekly-review run never
happened or never persisted — WATCHLIST.md's "Current" section and
WEEKLY-REVIEW.md's most recent dated entry were both still "2026-07-24"
going into this session, meaning the bot traded off a screen 14 calendar
days stale for the back half of this period. This is the second time this
exact failure mode has occurred (the first was 7/17, caught up in the
7/24 review) — see "What Didn't Work" below. All trade activity below is
aggregated over the full two-week span since the last confirmed review.

### Stats
| Metric | Value |
|---|---|
| Starting portfolio | $96,449.19 (per week-ending-2026-07-24 review) |
| Ending portfolio | $96,078.42 |
| Period return (2 weeks) | -$370.77 (-0.38%) |
| S&P 500, same 2 weeks (Fri 07-24 close to Fri 08-07 close) | +4.62% (index closed 7,754.28, via Gemini Deep Research; note: last week's cited 07-24 close of 7,434.91 implies +4.30% by direct arithmetic — a ~0.3pp discrepancy between Gemini's stated headline figure and the two point-in-time levels it separately cited across the two sessions; flagging per the data-quality guard rather than silently picking one, direction and magnitude both clearly a strong rally either way) |
| Bot vs S&P (2-week basis) | -5.00pp (bot underperformed) |
| Core trades | 2 (W:0 / L:2 / open:0) |
| Satellite trades | 0 new (MNKD carried over from before this period, held throughout, no new entries/exits — 1 open) |
| Win rate (closed trades) | 0% (0/2) |
| Best trade (closed) | HPE -5.71% (core) — least-bad of 2 closed trades, both losses |
| Worst trade (closed) | MU -10.05% (core) |
| Profit factor | 0.00 (gross profit $0 / gross loss $1,538.75) |

Income sleeve (SGOV/SPHY/EDGX) is not included in the trade/win-rate stats
above — it's not momentum/catalyst-screened and isn't subject to the weekly
trade caps. No Income-sleeve trades this period (no Core/Satellite sell
triggered a sweep-back, and no buy triggered a pre-trade funding sweep) —
cash drifted below the 20% floor as a result, see "What Didn't Work."

### Closed Trades
| Ticker | Sleeve | Entry | Exit | P&L | Notes |
|---|---|---|---|---|---|
| MU | core | $966.531 | $869.37 | -$971.61 (-10.05%) | 10% GTC trailing stop, filled 2026-07-27T14:26:22Z (10:26am ET), trail from hwm $966.09. Sector-wide semis/AI-hardware selloff, no company-specific negative catalyst (analysts still Strong Buy); second consecutive week this cluster stopped out (following the week-ending-07-24 MU loss) |
| HPE | core | $47.27 | $44.569333 | -$567.14 (-5.71%) | 10% GTC trailing stop, filled 2026-07-28T13:35:18Z (9:35am ET), trail from hwm $49.68. Continuation of the same sector-wide semis/AI-hardware rout, no company-specific news. Third consecutive mechanical core stop-out in the same cluster (MU week-ending-07-24, MU 07-27, HPE 07-28) — core sleeve reduced to zero open positions and stayed there for the rest of the period (10 consecutive trading sessions through 08-07) |

### Open Positions at Week End
| Ticker | Sleeve | Entry | Close | Unrealized | Stop |
|---|---|---|---|---|---|
| MNKD | satellite | $4.00 | $4.08 | +$97.20 (+2.00%) | 15% trailing, trigger $3.59975 (hwm $4.235) |
| EDGX | income | $26.78 | $27.1851 | +$302.20 (+1.51%) | 5% trailing, trigger $25.9255 (hwm $27.29) |
| SGOV | income | $100.631425 | $100.485 | -$46.33 (-0.15%) | 5% trailing, trigger $95.684 (hwm $100.72) |
| SPHY | income | $23.36 | $23.28 | -$68.48 (-0.34%) | 5% trailing, trigger $22.2015 (hwm $23.37) |

All 4 open positions confirmed carrying live GTC trailing stop orders via
`alpaca.sh orders open`, none missing. Week-end exposure: core $0.00 (0.00%
of equity), satellite $4,957.20 (5.16%), income $72,004.52 (74.94%), cash
$19,116.70 (19.90%, below the 20% floor — see "What Didn't Work").

### Watchlist Refresh
- **Core: 22 names (was 25).** Full ~500-name universe re-screened on
  fresh Alpaca bars (S&P 500 list sourced from a GitHub-hosted dataset —
  see data-quality note below). FMP 402'd on cashflow/growth for
  effectively the entire ~50-name shortlist (only 5/50 — PYPL, CSCO, DAL,
  UAL, TGT — returned a usable rating directly); core fundamentals
  validation came almost entirely from Gemini Deep Research, batched ~10
  tickers/query, run in parallel. New this week (13 names): ZBRA, CRL,
  ANET, PYPL, BAX, CSCO, GRMN, FFIV, STT, NUE, GEN, XYZ, MET. Retained (9):
  DELL, PANW, HPE, CRWD, NTAP, VLO, CNC, MPC, URI. Dropped from the prior
  25-name list (16): MU, DDOG, HUM, AMD, STX, DVA, WDC, CVS, AMAT, DOC,
  BBY, LLY, ABBV, GE — all fell below this week's momentum cut or failed
  the live gate outright (MU/AMD/STX/WDC/AMAT in particular have now
  failed the momentum gate on every live session check this week, per
  daily research-log notes); plus **FTNT** and **WST**, which passed
  momentum but failed fundamentals specifically this week (FTNT: Hold
  consensus with a growing Sell/Strong Sell lean including a DZ Bank
  downgrade; WST: FCF trend turned explicitly negative over the last few
  quarters). See WATCHLIST.md for the full ticker-by-ticker audit,
  including 6 names that failed fundamentals this week (FTNT, HPQ, WST,
  TRV, FDS, PAYX) and 22 "sector-capped alternates" held out only by the
  cut line.
- **Satellite: 4 names (was 5).** Added **SVRA** (new). Retained MNKD
  (held), RIGL, CGEM. Dropped **FSTR** and **CVLG** — both now fail the
  live momentum gate (FSTR below its 50-day MA despite its real 08-10
  earnings catalyst; CVLG flat/below its 50-day MA, consistent with the
  margin-compression concern flagged in the 07-24 refresh materializing in
  price action).
- **Data-quality catch:** this week's Gemini satellite-candidate sourcing
  round surfaced two tickers — **SCPH** and **NVEE** — presented as live,
  independently-tradeable small/mid-cap candidates with fabricated-looking
  Q2 2026 detail. Both were disproved before being added: SCPH
  (scPharmaceuticals) was fully acquired by MannKind — the bot's own held
  MNKD position — in a deal that closed 2025-10-07 and is no longer an
  independent public company; NVEE (NV5 Global)'s Alpaca bar history stops
  in early August 2025, a full year stale, consistent with an
  unmentioned-but-real merger/delisting. Neither would have been caught
  without the independent Alpaca price-history cross-check STEP 7c
  requires — a concrete instance of exactly the failure mode the
  data-quality guard exists to catch, not a hypothetical one. Full detail
  in WATCHLIST.md.
- **Core sector mix (22 names):** IT hardware/storage 3 (DELL, HPE, NTAP),
  cybersecurity/software 3 (PANW, CRWD, GEN), other IT hardware/networking/
  instruments 4 (ZBRA, ANET, CSCO, FFIV), health care 3 (CRL, BAX, CNC),
  financials 4 (PYPL, STT, XYZ, MET), energy 2 (VLO, MPC), consumer
  discretionary 1 (GRMN), materials 1 (NUE), industrials 1 (URI) — 7
  distinct GICS sectors. The semis/AI-hardware cluster (DELL, HPE, NTAP)
  is only 3 of 22 names (13.6%) — the lowest concentration of any refresh
  to date (32% on 07-24, ~72% at launch) — but this is a direct
  consequence of AMD/MU/STX/WDC/AMAT all failing the live momentum gate
  this week, not a deliberate diversification choice; if that cluster's
  momentum recovers, expect the concentration to climb back toward the cap
  at the next refresh.

### What Worked
- Mechanical stop discipline held again on both closed trades (MU, HPE) —
  real GTC trailing-stop fills, no manual override, no averaging down, no
  mental stops.
- MNKD navigated a genuine overnight gap-risk event (Q2 2026 earnings,
  08-05 after close, no stop protection over the print) without incident:
  held through per documented, repeatedly-reconfirmed rationale (FUROSCIX
  PDUFA catalyst already resolved 07-24, not a re-triggered binary), drew a
  soft-print dip to -6.46% intraday on 08-06, and recovered to +2.00%
  unrealized by week end — the "hold through, don't force-react" call was
  vindicated.
- The Patience Rule held under real pressure: core sleeve stayed at zero
  new trades for 10 straight sessions despite DELL/DDOG/PANW/FTNT/CRWD
  live-passing the momentum gate on multiple days, because fundamentals
  couldn't be freshly verified (stale watchlist + FMP allowlist gaps +
  Gemini truncation) — the bot did not force an entry off unverified data.
- Every session's risk sweep (all 4 open positions, GTC stops, 2-strike
  tracker, cash floor) was logged in full even through the persistence gap
  — the audit trail itself never broke down, even though the watchlist
  refresh did.

### What Didn't Work
- **Second consecutive missed Friday watchlist refresh (07-31).** The
  week-ending-07-24 review's own "Key Lesson" was to add "an explicit
  persistence check... before a weekly-review run is considered complete,
  so a skipped or failed run is caught immediately." That did not prevent
  a second miss three weeks later — WATCHLIST.md sat 14 calendar days
  stale by today, and no session flagged it as more than a recurring
  research-log footnote until this review. This is now a demonstrated
  pattern (7/17 and 7/31 both missed within a 4-week span), not a one-off.
- **Gemini Deep Research truncation, now 5 consecutive weeks unresolved
  (since 2026-07-12).** Every pre-market run in this period lost
  significant structured content — VIX/futures, econ calendar, and
  per-ticker checks were repeatedly dropped, sometimes entirely (08-05,
  08-06 captured almost no structured sections). WebSearch fallback
  covered the decision-relevant gaps each day, so no bad trade resulted,
  but the persistent coverage gap materially contributed to core staying
  un-invested: several sessions could not confirm fresh fundamentals on
  live-momentum-passing names (DELL, DDOG, PANW, FTNT, CRWD) because
  Gemini's per-ticker section was the mechanism meant to supply that
  confirmation. Flagged as needing "an actual fix" in at least four
  separate daily research-log entries (08-04 through 08-07) before this
  review — see Key Lessons and Adjustments.
- **Semis/AI-hardware sector concentration risk materialized exactly as
  warned in the week-ending-07-24 review.** MU (07-27) and HPE (07-28)
  both stopped out mechanically on sector-wide (not company-specific)
  drawdown — the third and fourth such mechanical stop in the same
  cluster in three weeks (MU week-ending-07-24, MU 07-27, HPE 07-28). Core
  sleeve then sat at zero positions for 10 consecutive trading sessions
  through the end of this period.
- **The bot underperformed the S&P 500 by roughly 5 percentage points this
  period** (-0.38% vs +4.62%), driven almost entirely by sitting at 0%
  core exposure through a strong two-week rally (Fed-cut repricing on a
  weak jobs report, mega-cap software/AI strength), compounded by locking
  in two core losses on the way in. This is the direct, quantified cost of
  the concentration-driven stop-outs plus the process gaps (stale
  watchlist, degraded research pipeline) that prevented a timely,
  verified re-entry.
- **A new, broader wide/illiquid-spread pattern emerged 08-05/08-06**:
  normally-liquid mega-caps (CRWD, PANW, DDOG, FTNT) tripped the
  wide-spread skip rule at the open alongside the usual thin small/mid-cap
  names (RIGL, CGEM) — a session note flagged this as possibly an
  IEX-feed thin-top-of-book pattern at the opening auction, not yet
  root-caused. Worth monitoring for recurrence; if it persists, it is
  independently blocking core entries, not just satellite ones.
- **Cash floor sat below 20% (19.89%-19.98%) for roughly the back half of
  this period**, purely from price drift on existing positions, with no
  Core/Satellite trade to trigger the SGOV funding-sweep mechanism (which
  the strategy document specifies as pre-trade-only, not a standalone
  rebalance trigger). Flagged in at least 6 separate session notes across
  08-04 through 08-07 without correction — a structural gap, not an
  oversight in any single session.

### Key Lessons
- A documented mitigation that is never actually executed provides no
  protection: the 07-24 review's proposed "explicit persistence check" did
  not stop a second consecutive missed refresh. A real fix needs to change
  what a daily session *does* when it finds the watchlist stale beyond a
  threshold (e.g., treat >7-calendar-days-stale as a hard escalation in
  the pre-market report, not a routine footnote), not just add another
  reminder to check.
- Repeatedly flagging an unresolved data-quality issue without anyone
  actually changing the mechanism produces the same outcome every time.
  The Gemini truncation problem was correctly diagnosed early (too much
  requested content in one blocking `research` call) and the fix was
  named explicitly in session notes ("prompt restructuring / splitting
  into smaller calls") but never implemented, because the daily pre-market
  workflow's Gemini call pattern lives in `.claude/commands/pre-market.md`
  / `routines/pre-market.md`, outside this weekly-review session's file
  scope (STEP 11 only commits specific `memory/` files). Recording the
  concrete fix here so it's actionable by whichever session next has
  write access to those files: split the single consolidated pre-market
  `research` call into 2 smaller parallel `submit`+`poll` calls (e.g. one
  for macro/VIX/econ-calendar + held-position checks, one for the core
  watchlist's per-ticker checks), each of which fits comfortably under
  the truncation threshold that's been triggering for 5 weeks running.
- The Income sleeve's cash-floor sweep is, by design, a pre-trade-only
  check (confirmed again this period) — a multi-session drift below the
  floor with zero Core/Satellite trading activity has no mechanism that
  will ever self-correct it. Either the rule needs to explicitly tolerate
  small drift (documented as immaterial below some threshold) or it needs
  a standalone periodic check independent of trade activity. Addressing
  this directly in TRADING-STRATEGY.md this session (see strategy-doc
  change note below) since it's now failed the same way for a full week.
- Sector-concentration risk isn't fully addressed by capping the
  *watchlist* construction (~40% cap, semis/AI-hardware as one cluster) —
  it also needs to be managed at the *portfolio* level, since the buy-side
  gate doesn't independently limit how many positions from one correlated
  cluster can be open at once. The watchlist cap held at 8/25 (32%) both
  of the last two refreshes and did what it was designed to do at
  screen-construction time; the portfolio-level concentration that hurt
  this period came from which names got bought and stopped out, not from
  the watchlist being miscalibrated.

### Adjustments for Next Week
- This session's screen refresh (see Watchlist Refresh below) resets
  WATCHLIST.md to current data — treat a missing or failed weekly-review
  commit on a future Friday as a hard blocker requiring owner escalation,
  not just a footnote in next week's "what didn't work."
- **TRADING-STRATEGY.md change (this commit):** clarified the Income
  sleeve's cash-floor rule to explicitly tolerate a small drift (<1% of
  equity) from price movement alone as immaterial and not requiring
  action, while adding that a drift persisting beyond 3 consecutive
  trading sessions should trigger a standalone SGOV sale to restore the
  floor even with no Core/Satellite trade pending — closing the gap where
  the sweep is otherwise pre-trade-only. This is a mechanics fix, not a
  change to the 20% floor itself or to risk tolerance.
- Flag prominently (this review's email + PR description) that
  `.claude/commands/pre-market.md` / `routines/pre-market.md` need the
  Gemini-query-splitting fix described in Key Lessons — this is outside
  weekly-review's file scope this session but is now the single
  highest-value reliability fix outstanding.
- Watch the new mega-cap wide-spread pattern (CRWD/PANW/DDOG/FTNT on
  08-05/08-06) for recurrence next week; if it repeats, treat it as a
  standing data-feed issue worth its own investigation rather than a
  per-session anomaly.
- No core risk-cap changes (sleeve %, stop widths, sector-cap threshold)
  this week — this period's shortfalls were process/reliability failures
  (missed refresh, degraded research pipeline, cash-mechanism gap) and a
  genuinely difficult sector-concentration outcome, not evidence the risk
  parameters themselves are miscalibrated.

### Overall Grade: D+
Mechanical risk controls again performed exactly as designed (every stop
fired correctly, MNKD's binary-adjacent earnings gap was handled with
documented conviction rather than a knee-jerk exit, and the Patience Rule
held even under multi-session pressure to chase live-passing momentum
names). But the period's actual outcome was weak on every measure that
matters: a 0% closed-trade win rate, a real dollar loss while the S&P
rallied nearly 5%, and — more importantly — two process failures that
were each explicitly flagged as needing a fix in a prior review or
session and recurred anyway (a second missed Friday refresh, a fifth
straight week of unaddressed Gemini truncation). Unlike the week-ending-
07-24 review, where the drawdown was substantially explained by adverse
market conditions, this period's underperformance is harder to excuse:
the market rallied hard and the bot missed nearly all of it because of
compounding, previously-identified operational gaps. Grade reflects that:
solid mechanical execution can't offset a second consecutive miss on a
lesson the bot already claimed to have learned.

---

## Week ending 2026-08-21

**Coverage note — this entry spans TWO market weeks (2026-08-10 through
2026-08-21), not one.** The Friday 2026-08-14 weekly-review run never
happened or never persisted — WATCHLIST.md's "Current" section and this
file's most recent dated entry were both still "2026-08-07" going into this
session, meaning the bot traded off a screen up to 14 calendar days stale
for the back half of this period. **This is the third time this exact
failure mode has occurred in five weeks** (7/17, 7/31, now 8/14) — see "What
Didn't Work" below. All trade activity below is aggregated over the full
two-week span since the last confirmed review.

### Stats
| Metric | Value |
|---|---|
| Starting portfolio | $96,078.42 (per week-ending-2026-08-07 review) |
| Ending portfolio | $95,787.38 |
| Period return (2 weeks) | -$291.04 (-0.30%) |
| S&P 500, same 2 weeks (Fri 08-07 close to Fri 08-21 close) | -1.02% (7,754.28 -> 7,678.72, via Gemini Deep Research; headline figure and point-in-time levels reconciled cleanly this week, no discrepancy to flag) |
| Bot vs S&P (2-week basis) | +0.72pp (bot outperformed) |
| Core trades | 3 (W:1 / L:1 / open:1) |
| Satellite trades | 1 (W:0 / L:0 / open:1; MNKD held throughout, not a new trade this period) |
| Win rate (closed trades) | 50% (1/2) |
| Best trade (closed) | HPE +2.79% (core) |
| Worst trade (closed) | PANW -8.04% (core) |
| Profit factor | 0.45 (gross profit $266.60 / gross loss $591.47) |

Income sleeve (SGOV/SPHY/EDGX) is not included in the trade/win-rate stats
above — it's not momentum/catalyst-screened and isn't subject to the weekly
trade caps. This period's income activity was routine sweep-backs after the
HPE (08-17) and PANW (08-19) exits, both funding SGOV per the sweep-first
rule — no floor breaches this period.

### Closed Trades
| Ticker | Sleeve | Entry | Exit | P&L | Notes |
|---|---|---|---|---|---|
| HPE | core | $55.56 | $57.11 | +$266.60 (+2.79%) | 10% GTC trailing stop, filled 2026-08-17T13:40:15Z (9:40am ET), trail from hwm $63.44 (+14.2% above entry). A winning exit, not a loss cut — no company-specific negative news found |
| PANW | core | $387.45 | ~$356.32 | -$591.47 (-8.04%) | Mandatory -7% hard cut, executed 2026-08-19 ahead of the still-live 10% GTC trailing stop (which hadn't yet triggered). No negative catalyst found (analyst sentiment stayed positive, PTs reiterated/raised same day) — broad intraday softness/profit-taking after PANW's recent run, not a thesis break, but the -7% rule is mechanical |

### Open Positions at Week End
| Ticker | Sleeve | Entry | Close | Unrealized | Stop |
|---|---|---|---|---|---|
| BAX | core | $27.27 | $26.34 | -$331.08 (-3.41%) | 10% trailing, trigger $24.705 (hwm $27.45) |
| MNKD | satellite | $4.00 | $4.15 | +$182.25 (+3.75%) | 15% trailing, trigger $3.74 (hwm $4.40) |
| RIGL | satellite | $41.84 | $45.89 | +$461.70 (+9.68%) | 15% trailing, trigger $40.239 (hwm $47.34) |
| EDGX | income | $26.78 | — | +$85.27 (+0.43%) | 5% trailing, trigger $25.9825 (hwm $27.35) |
| SGOV | income | $100.578 | — | +$7.81 (+0.05%) | 5% trailing, trigger $95.5985 (hwm $100.63, 166 of 166.740468683 sh covered) |
| SPHY | income | $23.36 | — | -$51.36 (-0.26%) | 5% trailing, trigger $22.2015 (hwm $23.37) |

All 6 open positions confirmed carrying live GTC trailing stop orders via
`alpaca.sh orders open`, none missing. Week-end exposure: core $9,377.04
(9.79% of equity), satellite $10,273.71 (10.73%), income $56,786.21
(59.28%), cash $19,350.42 (20.20%, above the 20% floor).

### Watchlist Refresh
- **Core: 22 names (was 22, but the prior list was 2 weeks stale — see
  coverage note above).** Full ~500-name universe re-screened on fresh
  Alpaca bars. FMP 402'd on cashflow/growth/rating for the entire 59-name
  shortlist this week — core fundamentals validation came entirely from
  Gemini Deep Research, batched ~10 tickers/query, run fully in parallel
  (7 batches, all completed this session; one batch and the satellite
  biotech query both hit transient infrastructure 502/500 errors near the
  end and needed a resubmit — noted for the record, not a strategy issue).
  New this week (14 names): MRVL, NTAP, EXPE, IQV, WDAY, VEEV, ABNB, BBY,
  TGT, APA, ANET, BKNG, DASH, XYZ. Retained (8): DELL, HPE, PANW, MU, MPC,
  VLO, PSX, ZBRA. Dropped from the prior 22-name list on this week's
  momentum re-rank or fundamentals: CRL, CSCO, GRMN(cut-line, not failed),
  FFIV, STT(cut-line), XYZ(retained, ignore), MET, GEN — see WATCHLIST.md
  for the full ticker-by-ticker audit, including 16 names that failed
  fundamentals this week (MRNA, CRL, HPQ, FDS, PYPL, TECH, **BAX**, AMGN,
  LH, IT, GPN, AXON, SWK, PAYX, ADP, RVTY) and 19 "sector-capped
  alternates."
- **BAX (currently held core position) dropped off the list this week** —
  momentum still clean, but analyst consensus deteriorated from
  "Constructive, no Sell" (08-07) to Hold with a 15% Sell lean plus flagged
  negative net margins. This starts the thesis-broken clock (exit if still
  off the list next Friday); not itself a forced exit today. See
  WATCHLIST.md for full detail.
- **Satellite: 5 names (was 4).** Added **TWIN** and **SHIP**. Retained MNKD
  (held), RIGL (held), CGEM. Dropped **SVRA** (fails the live momentum gate
  this week after clearing cleanly at 08-07 — the PDUFA catalyst itself is
  unchanged, a pure price-action reversal).
- **Major data-quality correction this week:** TWIN (Twin Disc) had been
  wrongly excluded since the 07-24 refresh on a **fabricated
  "reverse-merger into a mining shell" finding** that never held up —
  independently confirmed this week via WebSearch (GlobeNewswire, AP,
  Motley Fool earnings-call transcript) and Alpaca's own continuous
  price/volume history that Twin Disc has been a real, normally-trading
  public company the entire time, reporting record Q4 FY26 results and a
  25% dividend increase on 08-20. Re-added this week. Full detail and root
  cause in WATCHLIST.md.
- **Two more serious data-quality catches, both averted:** this week's
  Gemini biotech-candidate search presented **TENX** and **EYPT** as live,
  upcoming-catalyst opportunities — for Phase 3 trials that had already
  failed catastrophically (TENX -89% on 08-10, EYPT -71.5% on 08-17) days
  before the search ran. Both caught by the standing Alpaca price-history
  cross-check (STEP 7c) before being added — see "Key Lessons" and the
  TRADING-STRATEGY.md change note below for the process fix this earns.
  Separately, **ORN** was resourced with a bullish "52-week-high, JPM
  Overweight" framing that directly contradicts fresh Alpaca bars (below
  both MAs, -39.8pp 3M relative return) — excluded on the data, not the
  narrative. The biotech search was also severely truncated (7 of 11 named
  candidates had zero supporting detail) — treated as data-unavailable, not
  screened, per the guard.
- **Core sector mix (22 names):** semis/AI-hardware cluster (DELL, MRVL,
  HPE, MU, NTAP) 5/22 (22.7%), well under the 40% cap. 8 distinct GICS-level
  groupings represented (AI-hardware/semis, software, other IT hardware/
  networking, energy, consumer discretionary, health care, consumer
  staples, financials) — see WATCHLIST.md for the full breakdown.

### What Worked
- Mechanical stop discipline held on both closed trades — HPE's winning
  exit (ran to +14.2% before the 10% trail gave back gains to +2.79%, real
  GTC fill) and PANW's mandatory -7% hard cut (executed ahead of the
  still-live trailing stop, no hesitation) both fired exactly as designed,
  no manual override, no averaging down.
- Buy-side discipline stayed genuinely conservative under real pressure: on
  each of the three entry days (08-12 HPE, 08-13 BAX, 08-14 PANW) multiple
  names cleared the live momentum/spread checks simultaneously, but the bot
  entered one name per session rather than batch-entering all clean names
  at once — a deliberate choice to avoid exhausting the weekly trade
  budget and SGOV funding capacity in a single unsupervised session.
- **The data-quality guard caught its two highest-stakes findings to
  date.** TENX and EYPT were both independently verified against live
  price action before being added to the satellite list — had either gone
  unchecked, the watchlist would have presented an already-crashed
  (-89% / -71.5%) biotech as a fresh momentum opportunity. This is a step
  up in real-money relevance from every prior catch (SCPH/NVEE 8/07, SVRA's
  wrong PDUFA date 8/20).
- A separate, non-trivial correction: TWIN's ~4-week wrongful exclusion on
  a fabricated corporate-action finding was identified and reversed this
  week, restoring a real, currently-strong candidate to the pool.
- The bot **outperformed the S&P 500 by 0.72pp** this period despite the
  market environment being genuinely difficult (per this week's Gemini
  benchmark research: a Treasury-buyback-driven bond-market head-fake,
  renewed Iran/Strait-of-Hormuz escalation, a Shiller CAPE near 41, and a
  late-week S&P pullback below technical support) — low core deployment
  (a consequence of the stale watchlist, not a deliberate defensive call)
  happened to help this period, unlike the 08-07 period where the same
  under-deployment cost 5 points against a rallying tape.

### What Didn't Work
- **Third consecutive missed/duplicated Friday watchlist refresh in five
  weeks (7/17, 7/31, 8/14).** WATCHLIST.md sat up to 14 calendar days stale
  through this period, directly capping the core sleeve near-empty (1 of 6
  positions, ~9.8% of equity vs. an 85% target) for most of the two weeks —
  every daily session correctly declined to force a trade off stale data,
  but the structural cause went unaddressed for a third straight cycle
  despite two prior reviews each proposing a fix.
- **The `gemini_research.sh` `extract_report()` truncation bug, now 12+
  consecutive sessions unresolved (since 8/9), escalated this week from
  "wrong details" to "recommending trades on things that already
  catastrophically failed."** 8/20 caught a wrong PDUFA date (SVRA); this
  week's biotech search presented two already-failed Phase 3 trials as
  live opportunities. Both were caught before being acted on, but the
  failure mode has now clearly moved from an annoyance to a real-money risk
  that came down to a single verification step.
- **The recurring wide/erratic-spread data-feed anomaly** (DELL, PANW,
  ANET, CRWD, CSCO and others showing erratic quotes at the open) continued
  through this period, repeatedly blocking entries into the
  highest-momentum core names and forcing entries into lower-ranked but
  clean-spread alternatives (HPE, BAX, PANW) instead.
- **A fourth market-open session-persistence gap occurred (08-14, PANW)** —
  a real fill and stop order executed on Alpaca but the session never
  reached its own TRADE-LOG append or commit step, requiring
  reconstruction by the following 11am session. Same pattern as 7/16,
  7/17, 7/24.

### Key Lessons
- **A documented mitigation that is never actually enforced provides no
  protection — this is now the third time this exact lesson has had to be
  relearned.** The 07-24 review proposed an "explicit persistence check";
  the 08-07 review proposed treating a stale watchlist as "a hard blocker
  requiring owner escalation." Neither prevented this week's miss. Writing
  another process fix into this file is very unlikely to break the
  pattern on its own — this needs owner-level attention to the underlying
  scheduling/trigger reliability (outside any single session's file scope
  to fix), not a fourth documented reminder.
- **A Gemini-sourced "pending catalyst" needs the same skepticism as a
  Gemini-sourced fundamental figure — treat it as unconfirmed until an
  independent price/news check, not just when the framing looks odd.**
  TENX and EYPT were both presented in confident, well-cited prose as
  live, building-momentum opportunities; nothing in the text itself
  signaled staleness. Only a mechanical cross-check (recent single-day
  price flags -> WebSearch) surfaced that both catalysts had already
  resolved, catastrophically, days earlier. Formalizing this check (see
  TRADING-STRATEGY.md change below) closes a gap that has now produced two
  near-misses in two weeks (SVRA's date, TENX/EYPT's resolution status).
- **An authoritative structured source beats narrative framing for sector
  classification.** UMAC's Gemini writeup described it as a "defense
  supplier" fitting the industrials box; FMP's `profile` endpoint (which
  works even when fundamentals endpoints 402) classified it Technology
  Hardware. Trusting the structured field over the narrative avoided a
  sector-mismatched addition — worth using `fmp.sh profile` as a standard
  sector-fit check in future satellite screens, not just for market cap.

### Adjustments for Next Week
- This session's screen refresh (see Watchlist Refresh above) resets
  WATCHLIST.md to current data. Repeating, for the third time, that a
  missed Friday refresh is a hard blocker — but per the Key Lessons above,
  simply repeating this note has not worked twice already, so this is
  being flagged in the email/PR as an item needing owner attention to the
  scheduling layer itself, not left as another in-file reminder alone.
- **TRADING-STRATEGY.md change (this commit):** add an explicit
  requirement that any Gemini-sourced satellite catalyst described as
  "pending," "upcoming," or "building" must be cross-checked against the
  candidate's own recent price action (the same single-day-move scan
  already used for the corporate-action guard) before being treated as
  live — if a large recent move is present, confirm via independent
  WebSearch whether the catalyst has already resolved before treating it
  as a forward-looking opportunity. This is a mechanics fix closing a
  now twice-proven gap, not a change to risk tolerance.
- BAX needs tracking against the thesis-broken clock — a second
  consecutive week off the watchlist next Friday triggers an exit
  regardless of P&L (currently -3.41%, well clear of the -7% cut).
- Continue watching MNKD's weakening 6-month relative momentum (-34.4pp,
  turned negative since 08-07) — catalyst remains resolved and no thesis
  break yet, but worth a closer look if the trend persists.
- No core risk-cap changes (sleeve %, stop widths, tighten thresholds) this
  week. A daily session note (08-20) raised a fair question about whether
  the satellite +25% first-tighten threshold is too wide for names that
  historically top out nearer +10%, but one week of anecdote (MNKD/RIGL
  both round-tripping meaningful gains on quiet sector-beta days) isn't
  enough to justify touching a deliberately-set parameter — logged as a
  standing discussion item for a future review with more data.

### Overall Grade: C-
Risk controls again performed exactly as designed on every trade that
happened (a clean mechanical win on HPE, a clean mechanical loss cut on
PANW, no overrides either direction), and the bot actually beat the S&P
this period by 0.72pp — a genuinely good relative result, even though it
mostly reflects being under-invested during a rough two weeks for the
broader market rather than a skillful call. What keeps this from a better
grade: a third consecutive miss on a specific, previously-identified,
twice-"fixed" process failure (the Friday refresh), and a Gemini
data-reliability problem that escalated this week to its most dangerous
form yet — recommending trades on clinical assets that had already failed
catastrophically. Both dangerous outcomes were caught before any capital
was at risk, which is meaningfully better than a near-miss that gets
missed, and this week's process fix (formalizing the pending-catalyst
price check) is concrete rather than another vague reminder. Grade
reflects that mix: better outcomes and a real, actionable fix earned this
week, set against a systemic scheduling failure that has now resisted two
prior attempts to fix it and needs escalation beyond what any single
session can do.

---

## Week ending 2026-08-28

**Coverage note — this entry covers a single market week (2026-08-24 through
2026-08-28).** Unlike the last three reviews, this refresh ran **on
schedule** — the 08-21 review ran on time the prior Friday, so this is the
first back-to-back on-time pair since 07-12/07-24 (the original 07-17,
07-31, and 08-14 misses are the three-in-five-weeks pattern flagged in the
last two reviews). Worth noting explicitly since the last review flagged
this as needing "owner-level attention... not a fourth documented reminder"
— whatever changed, this week's refresh landing on time is the first
positive data point since that escalation.

### Stats
| Metric | Value |
|---|---|
| Starting portfolio | $95,787.38 (per week-ending-2026-08-21 review) |
| Ending portfolio | $95,644.46 |
| Week return | -$142.92 (-0.15%) |
| S&P 500 week | +0.49% (7,674.37 -> 7,711.99, via Gemini Deep Research; note: last week's review cited a 7,678.72 close for 08-21 vs. this week's report citing 7,674.37 as the same date's starting level — a ~0.06% discrepancy between consecutive weeks' Gemini reports, flagged per the data-quality guard rather than silently picking one; direction and magnitude of this week's S&P advance are clear either way) |
| Bot vs S&P | -0.64pp (bot underperformed) |
| Core trades | 2 (W:0 / L:0 / open:2) |
| Satellite trades | 0 (W:0 / L:0 / open:2; MNKD and RIGL both carried over, held throughout, no new entries/exits this period) |
| Win rate | n/a (no closed trades) |
| Best trade | n/a |
| Worst trade | n/a |
| Profit factor | n/a (no closed trades) |

Income sleeve (SGOV/SPHY/EDGX) is not included in the trade/win-rate stats
above — it's not momentum/catalyst-screened and isn't subject to the weekly
trade caps. This period's income activity was a partial SGOV sweep (50 sh,
08-28) to fund the APA buy, plus a same-day sweep/reversal round trip
(08-25, DELL buy aborted on a spread-check failure, net cost $0.92) — no
floor breaches this period, but SGOV is now materially depleted (~20.7 sh,
~$2,088, vs. its 50%-of-sleeve target) and flagged for rebalancing.

### Closed Trades
| Ticker | Sleeve | Entry | Exit | P&L | Notes |
|---|---|---|---|---|---|
| — | — | — | — | — | No trades closed this week |

### Open Positions at Week End
| Ticker | Sleeve | Entry | Close | Unrealized | Stop |
|---|---|---|---|---|---|
| APA | core | $42.61 | $42.54 | -$8.47 (-0.16%) | 10% trailing, trigger $38.655 (hwm $42.95) |
| BAX | core | $27.27 | $26.13 | -$405.84 (-4.18%) | 10% trailing, trigger $24.705 (hwm $27.45) |
| XYZ | core | $83.31 | $83.57 | +$29.90 (+0.31%) | 10% trailing, trigger $78.228 (hwm $86.92) |
| MNKD | satellite | $4.00 | $3.95 | -$60.75 (-1.25%) | 15% trailing, trigger $3.74 (hwm $4.40) |
| RIGL | satellite | $41.84 | $46.48 | +$528.96 (+11.09%) | 15% trailing, trigger $40.341 (hwm $47.46) |
| EDGX | income | $26.78 | $26.9676 | +$139.95 (+0.70%) | 5% trailing, trigger $25.9825 (hwm $27.35) |
| SGOV | income | $100.65 | $100.6985 | +$1.01 (+0.05%) | 5% trailing, trigger $95.665 (hwm $100.70, 20 of 20.740468683 sh covered) |
| SPHY | income | $23.36 | $23.33 | -$25.68 (-0.13%) | 5% trailing, trigger $22.23 (hwm $23.40) |

All 8 open positions confirmed carrying live GTC trailing stop orders via
`alpaca.sh orders open`, none missing. Week-end exposure (equity
$95,644.46): core $24,060.17 (25.16%), satellite $10,097.97 (10.56%),
income $42,176.84 (44.09%), cash $19,309.48 (20.19%, above the 20% floor).

### Watchlist Refresh
- **Core: 24 names (was 22, +2 net).** Full ~503-name universe re-screened
  via fresh Alpaca bars (a single long-running scan script rather than
  per-ticker calls). FMP 402'd on cashflow/growth/rating for 54 of the
  59-name shortlist — only MRNA, TGT, PYPL, HOOD, PLTR returned usable data;
  the rest came from Gemini Deep Research, batched ~9 tickers/query, run in
  parallel. New this week: PANW, VEEV, ZBRA, IQV, EXPE, TGT, PYPL, STT,
  HOOD, PLTR, ADP, RVTY, INCY (13 names either newly clearing the gate or
  promoted off last week's alternates bench). Retained: DELL, MRVL, HPE,
  CRWD, CRL, NTAP, MPC, VLO, ANET, XYZ, CNC (11). Dropped from the prior
  22-name list on this week's momentum re-rank: MU, WDAY, ABNB, BBY, BKNG,
  DASH, PSX (fell below the cut or failed the live momentum gate this week
  — MU in particular joined AMD/STX/WDC/AMAT/CSCO/LRCX/KLAC in failing on
  price this week, a live sector rotation out of semis/AI-hardware). Six
  names failed fundamentals despite passing momentum and are logged with
  reasons in WATCHLIST.md (FTNT, HUM, PSX, WDAY, FDS, PAYX, HPQ, TECH, CDW,
  ROP, EXPD, LH, WAT, A, TRV, ALL, GPC, MRNA, AMGN — 19 names, the fullest
  "failed fundamentals" audit trail to date).
- **BAX (held core position) drops off the list for a 2nd consecutive
  week — this triggers the thesis-broken exit rule.** Flagging for the next
  trading session to execute (this workflow doesn't place trades). **APA
  (bought this week) also drops off the list** on a fresh Sell-lean finding
  since the 08-21 screen that qualified it — week 1 off the list, no forced
  exit yet, clock starts today. Full detail in WATCHLIST.md.
- **Satellite: 8 names (was 5, +3 net).** Added **ZYME, DCO, PLPC** — all
  independently confirmed via `fmp.sh profile` for market cap ($2.08B/
  $2.66B/$1.98B, all in range) and correct sector (Healthcare/Biotechnology;
  Industrials/Aerospace & Defense; Industrials/Electrical Equipment).
  Retained MNKD, RIGL (both held), CGEM, TWIN, SHIP (all momentum-confirmed
  clean again this week). No satellite names dropped this week (SVRA
  remains excluded, still failing momentum for a 2nd straight refresh).
- **Data-quality catch this week: HEES (H&E Equipment Services)** was
  sourced by Gemini as a live small-cap industrials candidate but returns
  **zero price bars from Alpaca** — no independent trading history exists,
  consistent with a real-world acquisition (not an independent public
  company any longer). Caught by the standing Alpaca price-history
  cross-check before being added, the same mechanism that caught SCPH/NVEE
  (8/07) and TENX/EYPT (8/21).
- **A notable reversal: LITE (Lumentum) clears the core momentum gate for
  the first time in six consecutive refreshes** (above both MAs, +8.9pp 3M /
  +29.4pp 6M rel. return) and also clears fundamentals cleanly (FCF turned
  positive, +222% QoQ; revenue +109% YoY on AI-datacenter optics demand) —
  it lands in this week's sector-capped alternates, just below the 24-name
  cut line, not excluded on the merits. Full detail in WATCHLIST.md's
  "Candidates Queued" section.
- **Gemini Deep Research truncated three separate times this session**
  (the core-fundamentals batch covering CNC/BAX/APA/ADP/RVTY/INCY/GEN/FFIV/
  GPC; the combined satellite-candidate query's biotech half; and the
  fundamentals batch covering FDS/PAYX/STT/XYZ/HPQ/TECH, which was missing
  DASH/CRM/ABNB). Separately, two Gemini interactions started returning
  `400 invalid_request` on poll after running 25+ minutes with no prior
  error — a new failure mode, not seen in prior weeks (previously
  truncation and outright fabrication, not a mid-flight interaction
  failure). Per the data-quality guard, nothing was taken from a truncated
  or failed report — every one was resubmitted and re-verified before use,
  costing roughly 35 extra minutes this session but keeping every
  fundamentals figure traceable to a complete report.
- **Core sector mix (24 names):** semis/AI-hardware cluster (DELL, MRVL,
  HPE, NTAP) is 4/24 (16.7%), well under the ~40% cap and the lowest
  concentration since the 08-07 refresh's 13.6% low — driven by a real,
  live momentum reversal in MU/AMD/STX/WDC/AMAT/CSCO/LRCX/KLAC this week,
  not a deliberate diversification choice. 10 distinct sector groupings
  represented (AI-hardware/semis, cybersecurity/software, life
  sciences/CRO, energy, other IT hardware/networking, consumer/travel,
  financials/fintech, software/data, health care, business services) — the
  most diversified core list to date. Full ticker-level detail, the failed-
  fundamentals audit, and the alternates bench are all in WATCHLIST.md.

### What Worked
- **The weekly screen refresh ran on schedule for the second Friday
  running** — after three misses in five weeks (7/17, 7/31, 8/14) prompted
  the 08-21 review to flag this as needing owner-level attention beyond
  another in-file reminder, this is the first confirming data point that
  whatever changed is holding.
- The data-quality guard caught its most subtle case yet: HEES returned
  *no data at all* from Alpaca (not a truncated or fabricated report, just
  a real ticker with zero trading history) — the standing independent
  price-history cross-check flagged it correctly regardless of the failure
  mode, the fourth consecutive week this exact mechanism has caught a bad
  candidate before it reached the tradeable list (SCPH/NVEE 8/07, TENX/EYPT
  8/21, HEES 8/28).
- Spot-checking WebFetch's summarized S&P 500 list against a second source
  paid off in the other direction this week: six tickers that looked like
  plausible AI-hallucinated symbols (HONA, PSKY, Q, FDXF, MRSH, VMRK) were
  all confirmed real via `fmp.sh profile` — the summarizer had not invented
  anything this time, avoiding a false-positive exclusion of legitimate
  constituents.
- Live spread re-polling before trusting a first-look tight quote continued
  paying off all week — XYZ (8/26) and APA (8/28) were both correctly
  identified as the one genuinely liquid entry among 7-20 candidates checked
  each session, while several names that looked tight on a first poll
  widened sharply on re-poll.
- The SGOV-first funding-sweep rule and the "never tap SPHY/EDGX" rule both
  held under real pressure: when available SGOV couldn't fully fund a
  standard ~10%-of-equity APA position on 08-28, the position was sized
  down (5.4% of equity) to fit available SGOV rather than breach the
  sweep-source rule.
- Risk sweep discipline held all week: every session confirmed all open
  positions carrying live GTC trailing stops, no position reached its hard
  cut, no stop moved down, 2-strike sub-sector tracker correctly held
  unchanged (biotech 1/2, industrials 0/2).

### What Didn't Work
- **The wide/flickering opening-auction spread pattern, now affecting core
  names as often as satellite ones, blocked most of the week's would-be
  core entries.** DELL/MRVL flickered 08-24 and 08-25; 6 of 7 candidates
  failed on 08-26; all 17-20 candidates checked failed on 08-27 (a full
  no-trade day); HPE/MPC/ABNB flickered again on 08-28. Only 2 of 5 trading
  days produced a clean core fill — this is a continuation of a pattern
  flagged in the 08-21 review, now persisting into a fourth-plus week
  without a root cause identified.
- **BAX's thesis-broken clock ran out this week** — held off-watchlist for
  a second consecutive Friday, triggering the exit rule. The position was
  correctly flagged and tracked all week (per the standing interpretation
  that the exit decision belongs at the Friday refresh, not mid-week), but
  it's a real example of a held position losing its qualifying thesis while
  still open, and the sell itself has to wait for the next trading session.
- **APA failed fresh fundamentals validation the same week it was bought** —
  not a process error (it passed cleanly at both the 08-21 screen and at
  market-open verification on 08-28), just a reminder that a name's
  qualifying status can turn over within days on live data, and the
  thesis-broken clock is now running on a position barely a day old.
- **Gemini truncation escalated in variety, if not severity, this week** —
  in addition to the now-familiar mid-document truncation, two interactions
  began returning outright `400` errors on poll after running normally for
  25+ minutes, a failure mode not seen in prior sessions. Every instance was
  caught and resubmitted rather than used, but it added real session time
  (~35 minutes) and is a new wrinkle on an already 15+-session-old
  reliability problem.
- **Core sleeve stayed well under its 85% target all week** (9.8%-25.2% of
  equity) — a direct function of the spread-blocking pattern above plus the
  watchlist having been nearly cleared out through most of the week, not a
  deliberate defensive stance.

### Key Lessons
- A single clean Gemini report should not be read as "the truncation bug is
  fixed" (the 08-26 daily note flagged exactly this trap after one clean
  report) — this week's pattern confirms it: three separate truncations
  plus two new-style `400` failures occurred in the same session that
  otherwise ran cleanly for several other batches. Track Gemini reliability
  as intermittent-but-unresolved, verified per-call, not something that
  gets "fixed" and stays fixed.
- The wide-spread pattern has now blocked or partially blocked core entries
  in four of the last five weekly reviews' covered periods — worth
  escalating from "watch for recurrence" to "standing infrastructure
  question" (IEX-feed opening-auction data quality) the same way the
  missed-Friday-refresh pattern was escalated in the last review, rather
  than re-flagging it as a fresh observation each week.
- A name can pass the watchlist screen one week and fail it the next on
  real, live analyst-rating movement (APA's fresh Sell lean) — the
  thesis-broken two-week rule exists precisely for this, and it is now
  tracking two positions (BAX exiting, APA on watch) simultaneously for the
  first time, a real test of whether the daily sessions correctly action
  both without conflating them.
- Independently verifying a WebFetch-summarized list against a structured
  source (`fmp.sh profile`) is worth doing even when nothing looks obviously
  wrong — this week's six unusual-looking tickers all turned out to be real,
  which is itself useful information (the summarizer isn't reliably
  hallucinating on this particular table), but the check only has value if
  it's run every time, not just when a name looks suspicious.

### Adjustments for Next Week
- This session's screen refresh (see Watchlist Refresh above) resets
  WATCHLIST.md to current data. **BAX must be exited at the next trading
  session regardless of P&L** (thesis-broken, 2nd consecutive week off the
  list) — this is the single most important action item from this review.
- **Track APA's watchlist status at the 09-04 refresh closely** — if still
  off the list, it triggers the same 2-week thesis-broken exit BAX is
  hitting this week.
- Rebalance the Income sleeve back toward its 50% SGOV / 25% SPHY / 25%
  EDGX target — SGOV is currently ~20.7 sh (~$2,088) against a sleeve that
  should be roughly $21,000 SGOV given ~$42,000 total income exposure.
- Continue watching the wide/flickering-spread pattern into next week; if
  it persists a second full week running at this severity, treat it as a
  standing data-feed issue worth its own investigation (per Key Lessons
  above) rather than a per-session anomaly.
- No core risk-cap changes (sleeve %, stop widths, tighten thresholds,
  sector-cap threshold) this week — this period's shortfalls were a
  spread/liquidity access problem and two held-position thesis
  developments (one triggering, one starting its clock), not evidence the
  risk parameters themselves are miscalibrated.

### Overall Grade: B-
The single biggest process story this week is positive and overdue: the
weekly refresh ran on time for a second straight Friday after three misses
in five weeks forced an explicit escalation in the last review — the first
real evidence that whatever was broken is fixed, or at least improving. The
data-quality guard also had its best week yet, catching a genuinely novel
failure mode (a candidate with zero price history, not a truncated or
fabricated report) using the same standing mechanism, and a WebFetch
spot-check this week confirmed six unusual tickers were real rather than
hallucinated — the guard is working in both directions, not just excluding
good names or including bad ones. Risk discipline was clean throughout (no
hard-cut breaches, no missing stops, correct funding-sweep behavior under
real capital constraints). Against that: the bot modestly underperformed
the S&P (-0.64pp) on a week where a persistent wide-spread pattern blocked
most attempted core entries, and — more consequentially — a held core
position (BAX) hit its thesis-broken exit trigger this week, with a second
(APA) starting the same clock the day after being bought. Neither is a
process failure (both were caught and flagged exactly as the rules
require), but they're real portfolio actions the next session has to
execute correctly. Grade reflects a genuinely better process week than the
last several, tempered by a benchmark-lagging result and two live
thesis-broken situations that need clean follow-through.
