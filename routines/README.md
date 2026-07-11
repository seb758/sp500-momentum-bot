# Cloud Routines

Paste each `routines/*.md` file's contents verbatim into a Claude Code cloud
routine's prompt field. Do not paraphrase — the env-var check block, the
"no .env file" warning, and the commit-and-push step are load-bearing.

## One-time prerequisites

1. **Install the Claude GitHub App** on this repo (or run `/web-setup`
   locally to sync your `gh` CLI token) — gives the cloud container clone +
   push access.
2. **Enable "Allow unrestricted branch pushes"** in each routine's
   environment settings. Without it, `git push origin main` silently fails
   with a proxy error — the #1 first-run breakage.
3. **Set environment variables on each routine** (not in a committed
   `.env`):
   - `ALPACA_API_KEY`, `ALPACA_SECRET_KEY` (required — **paper** keys)
   - `ALPACA_ENDPOINT` (optional; defaults to the paper endpoint if you
     followed env.template — set explicitly here too, don't rely on the
     wrapper default in the cloud)
   - `ALPACA_DATA_ENDPOINT` (optional; defaults to the data URL)
   - `FMP_API_KEY` (required)
   - `GEMINI_API_KEY` (required for research workflows)
   - `GEMINI_RESEARCH_POLL_SECONDS`, `GEMINI_RESEARCH_MAX_WAIT_SECONDS`
     (optional; defaults 20 / 1200)
   - `SENDGRID_API_KEY`, `SENDGRID_FROM_EMAIL`, `SENDGRID_TO_EMAIL`
     (required for notifications — falls back to a local file if omitted,
     but that file only persists if committed, so just set these)

## Cron schedules (America/New_York)

Confirm this timezone matches yours — if you're actually in Central or
another zone, shift these times or change the routine's timezone setting,
don't just relabel the column.

Three buy/sell decision windows a day now (was two): 9:30am, 11am, 3pm.
Each runs the full buy-side gate against ideas already documented in that
day's RESEARCH-LOG entry — most 11am/3pm firings will often be a no-op on
the buy side once the week's trade cap is used, that's expected.

| Routine | Cron | When |
|---|---|---|
| pre-market | `0 6 * * 1-5` | 6:00 AM weekdays — light daily research pass (news/catalyst check against the existing WATCHLIST.md, NOT a full re-screen) |
| market-open | `30 9 * * 1-5` | 9:30 AM weekdays (market open) — buy/sell + learn |
| midday | `0 11 * * 1-5` | 11:00 AM weekdays — buy/sell + learn |
| daily-summary | `0 15 * * 1-5` | 3:00 PM weekdays — buy/sell + learn + close-risky-positions sweep + daily report |
| weekly-review | `0 16 * * 5` | 4:00 PM Fridays — full watchlist re-screen (the only full re-screen; budget it running 20-40 min) + performance report |

Weekly trade caps were raised from 3 core / 2 satellite to **6 core / 4
satellite** (combined 10) on 2026-07-11 to match having 3 decision windows
a day instead of 2 — see memory/TRADING-STRATEGY.md for the reasoning.

## First run

- Populate `memory/WATCHLIST.md` before relying on pre-market/market-open —
  either wait for the first Friday weekly-review, or run `/screen-refresh`
  locally once to seed it immediately.
- Hit "Run now" on each routine after creating it and watch the logs before
  trusting the schedule. Verify the expected memory file was written,
  committed, and pushed.
- The weekly-review routine runs materially longer than the others (it
  dispatches several Gemini Deep Research tasks in parallel and polls them)
  — don't assume a stall if it takes 20-40 minutes.
