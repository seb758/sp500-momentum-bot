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
