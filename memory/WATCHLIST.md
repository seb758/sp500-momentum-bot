# Watchlist

Refreshed weekly (Friday, as part of the weekly-review workflow — see
"Weekly Screen Refresh" in TRADING-STRATEGY.md). Never trade a ticker that
isn't in the **Current** section below. Prior weeks are kept in History for
audit — never delete, only append.

## Current — Week of 2026-07-11

First real screen refresh (`/screen-refresh`, run ad hoc rather than waiting
for Friday, per its intended use). Full ~500-name universe screened via
Alpaca bars; FMP fundamentals validated where available (only ~6/60
shortlisted names cleared FMP without a 402), Gemini Deep Research used as
the documented fallback for the rest, batched ~9 tickers per query — see
the "Considered and dropped" notes under each sleeve below for what that
process excluded and why.

### Core (S&P 500 momentum + FCF)

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

**Considered and dropped this week** (fundamentals or momentum didn't hold
up under the letter of the entry criteria — logged for audit, not a
blanket exclusion for next week):
- **AMAT, GLW, ON, AXON, CDNS, URI, IBKR, COHR, TRGP** — negative FCF trend
  and/or sell-leaning rating despite strong momentum score.
- **LITE, VRT, GEV, CIEN** — passed fundamentals but failed the momentum
  gate itself: each has a *negative* 3-month relative return vs SPY despite
  a strong 6-month number, and core rule #4 requires positive relative
  strength over **both** windows, not just the blended score.
- **FTNT, HUM, DVA, NTAP, TXN, AKAM, CAT, BEN, STT, FIX, NXPI, MGM, DOC,
  BBY, CSX, HPQ, GEN** — Gemini Deep Research coverage was too thin/mixed
  to call FCF trend, growth, and rating all clearly positive; treated as
  unconfirmed rather than assumed-pass.

### Satellite (small-cap biotech / industrials)

| Ticker | Sub-sector | YoY Growth | Analyst Rating | Catalyst | Catalyst Date | Max Loss If Catalyst Fails | Notes |
|---|---|---|---|---|---|---|---|
| OCUL | Biotech | +0.81% YoY (legacy DEXTENZA revenue actually down 12.76% TTM) — weak/flat, see note | Strong Buy (~$27 avg PT vs ~$10 price) | AXPAXLI (wet AMD) data presentations at ASRS/OIS/HC Wainwright conferences Jul 14-22, 2026; Pre-NDA FDA meeting Q3 2026; NDA filing Q4 2026 | Jul 14-22, 2026 (conference data); no single PDUFA date yet — this is a multi-stage regulatory process, not one binary date | Not yet a single-date binary event — size per standard 7.5% satellite cap, not the 5% binary-catalyst cap, until a PDUFA date exists. Re-evaluate cap if a firm PDUFA date is set. | **Growth criterion is a judgment call, not a clean pass**: OCUL's own revenue growth is flat/negative — its investment case is the regulatory catalyst and Strong Buy rating, not current top-line growth. $2.23B market cap, $666.7M cash (runway into 2028). Included with this caveat rather than silently passed. |

**Considered and dropped this week:**
- **CAPR** — real, dated catalyst (FDA AdCom Jul 29, PDUFA Aug 22, 2026) but
  momentum is currently *negative* (-28.6% since April) — fails the
  "currently showing price momentum" criterion despite the catalyst.
- **VERA** — catalyst already resolved (FDA approved Trutakna Jul 7, 2026,
  now in commercial launch) rather than a forward-looking binary event;
  momentum weak (+3.7%); market cap ($3.01B) at/slightly over the $3B cap.
- **TTMI, ONDS** — momentum and news flow looked good, but both are now
  over the $3B satellite cap ($15.2B and $3.8B respectively) and FMP
  classifies both as Technology/Communication Equipment, not Industrials —
  excluded on cap and sector grounds.
- **No industrials name cleared cap + sector + momentum + catalyst
  together this week** — per the Patience Rule, a thin satellite list is a
  valid outcome; not forcing a weak industrials name in to fill the slot.

## History

_(previous weeks' lists appended below by the weekly-review routine, most recent first — no prior real weeks exist yet, this is the first screen refresh)_
