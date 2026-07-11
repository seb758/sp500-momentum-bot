#!/usr/bin/env bash
# Notification wrapper. Sends email via Twilio SendGrid's Mail Send API.
# Usage: bash scripts/sendgrid.sh "<message>"
# If credentials are unset, appends to a local fallback file instead of
# failing — the agent never crashes on missing notification creds.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
FALLBACK="$ROOT/DAILY-SUMMARY.md"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/sendgrid.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

if [[ -z "${SENDGRID_API_KEY:-}" || -z "${SENDGRID_TO_EMAIL:-}" || -z "${SENDGRID_FROM_EMAIL:-}" ]]; then
  printf "\n---\n## %s (fallback — SendGrid not configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[sendgrid fallback] appended to DAILY-SUMMARY.md"
  echo "$msg"
  exit 0
fi

subject="Trading Bot: $(echo "$msg" | head -n1 | cut -c1-78)"

payload="$(python3 -c "
import json, sys
msg, subject, from_addr, to_addr = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
html = '<pre style=\"white-space:pre-wrap;font-family:monospace;font-size:14px\">' + \
    msg.replace('&', '&amp;').replace('<', '&lt;').replace('>', '&gt;') + '</pre>'
print(json.dumps({
    'personalizations': [{'to': [{'email': to_addr}]}],
    'from': {'email': from_addr},
    'subject': subject,
    'content': [
        {'type': 'text/plain', 'value': msg},
        {'type': 'text/html', 'value': html},
    ],
}))
" "$msg" "$subject" "$SENDGRID_FROM_EMAIL" "$SENDGRID_TO_EMAIL")"

curl -fsS -X POST "https://api.sendgrid.com/v3/mail/send" \
  -H "Authorization: Bearer $SENDGRID_API_KEY" \
  -H "Content-Type: application/json" \
  -d "$payload"
echo "[sendgrid] sent"
