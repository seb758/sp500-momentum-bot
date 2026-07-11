---
description: Local weekly review + watchlist refresh (uses .env, no forced git push)
---

Same workflow as `routines/weekly-review.md` (Part A performance review +
Part B watchlist screen refresh), minus the env-var check block. This is the
long-running one — the satellite catalyst confirmation dispatches several
Gemini Deep Research tasks in parallel via `submit`/`poll`, budget 20-40
minutes. Steps: see routines/weekly-review.md STEP 1 through STEP 10 exactly
(everything except the mandatory git push — ask before committing).
