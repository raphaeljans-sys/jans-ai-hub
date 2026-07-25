#!/bin/bash
# ============================================================================
# JANS Geo-Connector — Google-Maps-Key setzen (stationsuebergreifend)
# ============================================================================
# Schreibt den Key in die zentrale NAS-Secret-Datei. Weil das NAS auf allen
# Stationen gemountet ist, ist der Key danach UEBERALL sofort verfuegbar —
# kein Kopieren, kein Sync-Task noetig.
#
# Verwendung:
#   bash set-google-key.sh "AIza...DEIN_KEY"
#   bash set-google-key.sh --status      # prueft ob/wo ein Key gesetzt ist
# ============================================================================
set -euo pipefail

SECRET_FILE="/Volumes/daten/jans-ai-hub/secrets/google-maps.env"

if [ ! -d "/Volumes/daten/jans-ai-hub/secrets" ]; then
  echo "FEHLER: NAS-Secrets-Ordner nicht gefunden. Ist das NAS gemountet (/Volumes/daten)?"
  exit 1
fi

if [ "${1:-}" = "--status" ] || [ -z "${1:-}" ]; then
  echo "== Google-Maps-Key Status =="
  if [ -n "${GOOGLE_MAPS_API_KEY:-}" ]; then echo "  ENV: gesetzt (****${GOOGLE_MAPS_API_KEY: -4})"; else echo "  ENV: —"; fi
  if [ -f "$HOME/Developer/jans-ai-hub/.env" ] && grep -q '^GOOGLE_MAPS_API_KEY=.\+' "$HOME/Developer/jans-ai-hub/.env" 2>/dev/null; then echo "  Repo .env: gesetzt"; else echo "  Repo .env: —"; fi
  if [ -f "$SECRET_FILE" ] && grep -q '^GOOGLE_MAPS_API_KEY=.\+' "$SECRET_FILE" 2>/dev/null; then
    K=$(grep '^GOOGLE_MAPS_API_KEY=' "$SECRET_FILE" | cut -d= -f2-); echo "  NAS (shared): gesetzt (****${K: -4})";
  else echo "  NAS (shared): —"; fi
  [ -z "${1:-}" ] && echo -e "\nKey setzen:  bash set-google-key.sh \"AIza...\""
  exit 0
fi

KEY="$1"
case "$KEY" in
  AIza*) ;;
  *) echo "WARNUNG: Key beginnt nicht mit 'AIza' — Google-Keys haben dieses Praefix. Trotzdem speichern? [j/N]"; read -r a; [ "$a" = "j" ] || { echo "Abgebrochen."; exit 1; };;
esac

printf 'GOOGLE_MAPS_API_KEY=%s\n' "$KEY" > "$SECRET_FILE"
chmod 600 "$SECRET_FILE"
echo "OK — Key gespeichert in $SECRET_FILE (chmod 600)."
echo "Ab sofort auf allen Stationen aktiv, die /Volumes/daten gemountet haben."
echo ""
echo "Smoke-Test:"
echo "  node /Volumes/daten/jans-ai-hub/skills/unternehmerfindung/connectors/geo-maps.mjs --gewerk sanitaer --adresse 'Ankerstrasse 7, Zuerich' --plz 8004 --limit 3"
