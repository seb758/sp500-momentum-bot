# S&P 500 Momentum + FCF / Small-Cap Catalyst Trading Bot

Autonomous, cloud-scheduled trading agent built on Claude Code. Two sleeves
in one paper account:

- **Core (85% target):** S&P 500 stocks, screened weekly on price momentum
  + free cash flow strength.
- **Satellite (15% target, 20% hard cap):** small-cap biotech and
  industrials, screened weekly on momentum, analyst ratings, YoY growth,
  and a documented catalyst (technicals, news, government/regulatory
  approval, price jumps).

Full rules: `memory/TRADING-STRATEGY.md`. Current tradeable universe:
`memory/WATCHLIST.md`.

**Mode: paper trading.** See `memory/PROJECT-CONTEXT.md` before ever
pointing this at a live account.

## Stack

| Concern | Tool |
|---|---|
| Execution | Alpaca (paper) |
| Fundamentals / screening | Financial Modeling Prep |
| Catalyst / market research | Gemini Deep Research (background agent) |
| Notifications | Email (Twilio SendGrid) |
| Memory | Markdown files committed to `main` |

## Quickstart (local)

1. `cp env.template .env` and fill in your Alpaca **paper** keys, an FMP
   key, a Gemini API key, and (optionally) SendGrid credentials.
2. Open this repo in Claude Code.
3. Run `/portfolio` — should print account + positions cleanly (empty
   account is fine, it just means no positions yet).
4. Run `/screen-refresh` to populate `memory/WATCHLIST.md` for the first
   time (this replaces waiting for Friday). It fires several Gemini Deep
   Research tasks in parallel for the satellite catalyst check — budget
   10-20 minutes for it to finish, not seconds.
5. Once the watchlist is populated, run `/pre-market` then `/market-open`
   to place the first paper trades.

## Cloud routines (production path)

Same five-workflow cadence as a standard version of this system:
pre-market, market-open, midday, daily-summary, and a Friday weekly-review
that also runs the watchlist screen-refresh. See `routines/README.md` for
cron schedules and the one-time setup (GitHub App install, "allow
unrestricted branch pushes" toggle, environment variables on each routine —
**not** a `.env` file).

## Why research is slower here than a typical version of this bot

Gemini Deep Research is a background agent — a single query takes 5-20
minutes, not seconds, because it's doing real multi-step web research with
citations rather than a single-shot completion. That's a good trade for the
weekly satellite catalyst screen (FDA calendars, government contracts — the
kind of thing worth being thorough about) but too slow to run many small
queries serially in a tight daily cron window. Daily workflows use one
consolidated research call instead of many; the weekly screen dispatches
several catalyst lookups in parallel via `submit`/`poll` rather than
blocking on them one at a time. See `scripts/gemini_research.sh` and
`CLAUDE.md` for the usage pattern.

## Why satellite guardrails differ from core

Biotech/industrials catalyst trades resolve on binary events (FDA
decisions, contract awards) that typically hit overnight or pre-market —
exactly when trailing stops can't protect you, because gaps jump straight
through them. That's why the satellite sleeve has a smaller max position
size, a wider stop (15% vs core's 10%), and a required "max loss if
catalyst fails" note on every position held through a known event date. See
`memory/TRADING-STRATEGY.md`.
