#!/usr/bin/env bash
# Notification wrapper. Sends email via Gmail SMTP using a Google app password.
# Usage: bash scripts/gmail_smtp.sh "<message>"
# Env (exported as process env vars — there is NO .env file and you MUST NOT
# create one):
#   GMAIL_FROM_EMAIL    — Gmail address sending (also the SMTP login user)
#   GMAIL_TO_EMAIL      — recipient address
#   GMAIL_APP_PASSWORD  — 16-char Google app password, spaces removed
# If credentials are unset, appends to DAILY-SUMMARY.md fallback instead of
# failing — the agent never crashes on missing notification creds.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FALLBACK="$ROOT/DAILY-SUMMARY.md"

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/gmail_smtp.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

if [[ -z "${GMAIL_FROM_EMAIL:-}" || -z "${GMAIL_TO_EMAIL:-}" || -z "${GMAIL_APP_PASSWORD:-}" ]]; then
  printf "\n---\n## %s (fallback — Gmail not configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[gmail fallback] appended to DAILY-SUMMARY.md"
  echo "$msg"
  exit 0
fi

subject="Trading Bot: $(echo "$msg" | head -n1 | cut -c1-78)"

mime="$(python3 -c "
import sys
from email.message import EmailMessage
msg_text, subject, from_addr, to_addr = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
m = EmailMessage()
m['From'] = from_addr
m['To'] = to_addr
m['Subject'] = subject
m.set_content(msg_text)
sys.stdout.write(m.as_string())
" "$msg" "$subject" "$GMAIL_FROM_EMAIL" "$GMAIL_TO_EMAIL")"

curl -fsS --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
  --mail-from "$GMAIL_FROM_EMAIL" \
  --mail-rcpt "$GMAIL_TO_EMAIL" \
  --user "$GMAIL_FROM_EMAIL:$GMAIL_APP_PASSWORD" \
  -T <(printf '%s' "$mime") \
  > /dev/null
echo "[gmail] sent to $GMAIL_TO_EMAIL"
