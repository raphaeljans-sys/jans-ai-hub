#!/bin/bash
# drucken.sh — Versanddokumente auf die richtigen CUPS-Drucker schicken
# Teil des Skills `versandplanung`.
#
#   bash drucken.sh <datei.pdf|ordner> --a4       # → VERSAND_DRUCKER_A4 (bizhub c300i)
#   bash drucken.sh <datei.pdf|ordner> --labels   # → VERSAND_DRUCKER_LABELS (Etikettendrucker)
#
# Drucker-Queues stehen in ~/.versand.env; verfügbare Queues zeigt `lpstat -p`.

set -euo pipefail

ENV_DATEI="$HOME/.versand.env"
[ -f "$ENV_DATEI" ] || { echo "FEHLER: ~/.versand.env fehlt" >&2; exit 1; }
# shellcheck disable=SC1090
set -a; source "$ENV_DATEI"; set +a

ZIEL="${1:?Verwendung: drucken.sh <datei|ordner> --a4|--labels}"
MODUS="${2:?--a4 oder --labels angeben}"

case "$MODUS" in
  --a4)     QUEUE="${VERSAND_DRUCKER_A4:?VERSAND_DRUCKER_A4 fehlt in ~/.versand.env}"
            OPTS=(-o media=A4 -o fit-to-page) ;;
  --labels) QUEUE="${VERSAND_DRUCKER_LABELS:?VERSAND_DRUCKER_LABELS fehlt in ~/.versand.env (Spec E4)}"
            OPTS=(-o fit-to-page) ;;
  *) echo "FEHLER: unbekannter Modus $MODUS (--a4|--labels)" >&2; exit 1 ;;
esac

lpstat -p "$QUEUE" >/dev/null 2>&1 || { echo "FEHLER: Drucker-Queue '$QUEUE' nicht gefunden (lpstat -p zeigt die Queues)" >&2; exit 1; }

drucke() { echo "Drucke $(basename "$1") → $QUEUE"; lp -d "$QUEUE" "${OPTS[@]}" "$1" >/dev/null; }

if [ -d "$ZIEL" ]; then
  ANZ=0
  for f in "$ZIEL"/*.pdf; do
    [ -e "$f" ] || continue
    drucke "$f"; ANZ=$((ANZ+1))
  done
  echo "$ANZ Datei(en) gedruckt auf $QUEUE"
else
  drucke "$ZIEL"
  echo "1 Datei gedruckt auf $QUEUE"
fi
