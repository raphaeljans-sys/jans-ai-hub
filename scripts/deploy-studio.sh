#!/bin/bash
# ============================================================================
# deploy-studio.sh — Machbarkeits-Studio (selbst-tragende .html) auf Cloudflare
# Pages publizieren (getrennt von raphaeljans.ch) und privaten Link ausgeben.
#
#   deploy-studio.sh <lokale.html> [--name <slug>]
#
#   Standard: unauffaelliger Slug mit Zufallstoken -> PRIVATER Link
#             (nur wer den Link hat; noindex via _headers).
#   --name X  fester Slug (z.B. kunde-mueller).
#
# Hosting: Cloudflare Pages, Projekt CF_PAGES_PROJECT (Default jans-studio),
# Auth via wrangler-OAuth (lokal, `wrangler login`). Das persistente Deploy-
# Verzeichnis CF_PAGES_DIR enthaelt ALLE bisherigen Studien (Pages deployt den
# ganzen Ordner) + _headers (noindex) + neutrale index.html.
# Bewusst NICHT auf raphaeljans.ch (Wunsch: vom Portfolio fernhalten).
# ============================================================================
set -euo pipefail

ENV_FILE="$HOME/Developer/jans-ai-hub/.env"
[ -f "$ENV_FILE" ] && { set -a; # shellcheck disable=SC1090
  source "$ENV_FILE"; set +a; }

PROJECT="${CF_PAGES_PROJECT:-jans-studio}"
PAGES_DIR="${CF_PAGES_DIR:-$HOME/jans-studio-pages}"
BASEURL="${CF_PAGES_BASEURL:-https://${PROJECT}.pages.dev}"
export WRANGLER_SEND_METRICS=false

SRC="${1:?Aufruf: deploy-studio.sh <lokale.html> [--name <slug>]}"; shift || true
[ -f "$SRC" ] || { echo "FEHLER: Datei nicht gefunden: $SRC"; exit 1; }

NAME=""
while [ $# -gt 0 ]; do
  case "$1" in
    --name) NAME="$2"; shift 2;;
    *) echo "Unbekannte Option: $1"; exit 1;;
  esac
done
if [ -z "$NAME" ]; then
  BASE=$(basename "$SRC" .html | tr ' _' '--' | tr -cd 'A-Za-z0-9-')
  NAME="${BASE}-$(openssl rand -hex 4)"
fi

mkdir -p "$PAGES_DIR"
# noindex + neutrale Startseite sicherstellen
[ -f "$PAGES_DIR/_headers" ] || printf '/*\n  X-Robots-Tag: noindex, nofollow\n' > "$PAGES_DIR/_headers"
[ -f "$PAGES_DIR/index.html" ] || printf '<!doctype html><meta charset=utf-8><title>JANS</title><body style="font-family:sans-serif;color:#6a6a6a;padding:3rem">Werkzeug. Zugriff nur ueber direkten Link.</body>' > "$PAGES_DIR/index.html"
cp "$SRC" "$PAGES_DIR/${NAME}.html"

( cd "$PAGES_DIR" && npx --yes wrangler@latest pages deploy . \
    --project-name "$PROJECT" --branch main --commit-dirty=true 2>&1 | tail -6 )

echo ""
echo "LIVE (privat, neutral): ${BASEURL}/${NAME}"
