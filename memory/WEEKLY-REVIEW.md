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
