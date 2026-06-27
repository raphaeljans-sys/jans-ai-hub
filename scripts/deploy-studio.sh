#!/bin/bash
# ============================================================================
# deploy-studio.sh — Machbarkeits-Studio (oder beliebige selbst-tragende .html)
# auf das JANS-Webhosting (Hostpoint unupebin) publizieren und Link ausgeben.
#
#   deploy-studio.sh <lokale.html> [--name <dateiname.html>] [--public]
#
#   Standard: unauffaelliger Dateiname mit Zufallstoken -> PRIVATER Link
#             (nur wer den Link hat; noindex via .htaccess).
#   --name X  fester Dateiname (z.B. fuer die oeffentliche Demo: studio.html).
#   --public  Alias, nur zur Lesbarkeit (Name sollte dann sprechend sein).
#
# Zugang key-basiert aus ~/Developer/jans-ai-hub/.env (HOSTPOINT_SSH_*).
# Public Key liegt in Hostpoint authorized_keys; jederzeit widerrufbar.
# ============================================================================
set -euo pipefail

ENV_FILE="$HOME/Developer/jans-ai-hub/.env"
[ -f "$ENV_FILE" ] || { echo "FEHLER: .env nicht gefunden: $ENV_FILE"; exit 1; }
# shellcheck disable=SC1090
source "$ENV_FILE"

: "${HOSTPOINT_SSH_HOST:?HOSTPOINT_SSH_HOST fehlt in .env}"
: "${HOSTPOINT_SSH_USER:?}"; : "${HOSTPOINT_SSH_KEY:?}"; : "${HOSTPOINT_WEBROOT:?}"; : "${HOSTPOINT_STUDIO_URL:?}"
PY="${JANS_VENV_PY:-$HOME/.venvs/volumen3d/bin/python}"

SRC="${1:?Aufruf: deploy-studio.sh <lokale.html> [--name <datei.html>] [--public]}"; shift || true
[ -f "$SRC" ] || { echo "FEHLER: Datei nicht gefunden: $SRC"; exit 1; }

NAME=""
while [ $# -gt 0 ]; do
  case "$1" in
    --name) NAME="$2"; shift 2;;
    --public) shift;;
    *) echo "Unbekannte Option: $1"; exit 1;;
  esac
done
if [ -z "$NAME" ]; then
  BASE=$(basename "$SRC" .html | tr ' _' '--' | tr -cd 'A-Za-z0-9-')
  NAME="${BASE}-$(openssl rand -hex 4).html"
fi

"$PY" - "$SRC" "$NAME" <<PY
import paramiko, sys
src, name = sys.argv[1], sys.argv[2]
host="${HOSTPOINT_SSH_HOST}"; user="${HOSTPOINT_SSH_USER}"; key="${HOSTPOINT_SSH_KEY}"
studio="${HOSTPOINT_WEBROOT}/studio"
k=paramiko.Ed25519Key.from_private_key_file(key)
t=paramiko.Transport((host,22)); t.connect(username=user,pkey=k)
s=paramiko.SFTPClient.from_transport(t)
try: s.mkdir(studio)
except IOError: pass
ht='<IfModule mod_headers.c>\nHeader set X-Robots-Tag "noindex, nofollow"\n</IfModule>\nOptions -Indexes\n'
try:
    with s.open(studio+"/.htaccess","w") as f: f.write(ht)
except Exception: pass
s.put(src, studio+"/"+name)
print("OK", s.stat(studio+"/"+name).st_size, "bytes ->", name)
s.close(); t.close()
PY

echo ""
echo "LIVE: ${HOSTPOINT_STUDIO_URL}/${NAME}"
