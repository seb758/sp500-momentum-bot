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

## Cron schedules (example: America/Chicago — adjust to your timezone)

| Routine | Cron | When |
|---|---|---|
| pre-market | `0 6 * * 1-5` | 6:00 AM weekdays |
| market-open | `30 8 * * 1-5` | 8:30 AM weekdays (market open) |
| midday | `0 12 * * 1-5` | Noon weekdays |
| daily-summary | `0 15 * * 1-5` | 3:00 PM weekdays (market close) |
| weekly-review | `0 16 * * 5` | 4:00 PM Fridays (includes watchlist refresh — budget it running long) |

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
