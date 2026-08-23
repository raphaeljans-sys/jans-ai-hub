#!/bin/bash
# JANS AI Hub — Mailversand aus Textdatei (Kommando der Widerrufs-Queue, A7/A8)
#
# Angelegt 23.08.2026. Die Queue-Hilfe nannte ein Script `versand-draft-senden.sh`,
# das nie existierte; getestet war die Queue bisher nur mit `echo`-Kommandos. Dieses
# Script schliesst die Lücke: es erzeugt aus Betreff, Body-Datei und Adresse eine
# neue Mail im Konto rj@raphaeljans.ch und sendet sie. Es fasst KEINE bestehenden
# Entwürfe an und entfernt nichts.
#
# Verwendung:
#   bash scripts/versand-mail-senden.sh "<Betreff>" <body-datei> <adresse> [--trocken]
#
# Exit-Code 0 bei Versand, sonst > 0. Jeder Lauf schreibt eine Zeile nach
# logbuch/widerruf/versand.log (Datum, Adresse, Betreff, Ergebnis).

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

HUB="/Volumes/daten/jans-ai-hub"
LOG="$HUB/logbuch/widerruf/versand.log"

BETREFF="${1:-}"; BODYFILE="${2:-}"; ADRESSE="${3:-}"; MODUS="${4:-}"

if [ -z "$BETREFF" ] || [ -z "$BODYFILE" ] || [ -z "$ADRESSE" ]; then
  echo "FEHLER: Betreff, Body-Datei und Adresse sind Pflicht." >&2; exit 2
fi
if [ ! -f "$BODYFILE" ]; then
  echo "FEHLER: Body-Datei nicht gefunden: $BODYFILE" >&2; exit 3
fi

BYTES=$(wc -c < "$BODYFILE" | tr -d ' ')
if [ "$BYTES" -lt 50 ]; then
  echo "FEHLER: Body-Datei zu kurz ($BYTES Bytes) — Schutz gegen den Leer-Draft-Fehler." >&2; exit 4
fi

if [ "$MODUS" = "--trocken" ]; then
  echo "TROCKENLAUF ok: '$BETREFF' an $ADRESSE, Body $BYTES Bytes aus $BODYFILE"
  echo "$(date '+%Y-%m-%d %H:%M') | TROCKEN | $ADRESSE | $BETREFF | $BYTES Bytes" >> "$LOG"
  exit 0
fi

RESULT=$(osascript <<APPLESCRIPT 2>&1
set bodyText to (read POSIX file "$BODYFILE" as «class utf8»)
tell application id "com.apple.mail"
  set neu to make new outgoing message with properties {subject:"$BETREFF", content:bodyText, visible:false}
  tell neu
    set sender to "rj@raphaeljans.ch"
    make new to recipient at end of to recipients with properties {address:"$ADRESSE"}
  end tell
  send neu
  return "GESENDET"
end tell
APPLESCRIPT
)
RC=$?

if [ $RC -eq 0 ] && echo "$RESULT" | grep -q "GESENDET"; then
  echo "$(date '+%Y-%m-%d %H:%M') | GESENDET | $ADRESSE | $BETREFF | $BYTES Bytes" >> "$LOG"
  echo "GESENDET: '$BETREFF' an $ADRESSE ($BYTES Bytes)"
  exit 0
else
  echo "$(date '+%Y-%m-%d %H:%M') | FEHLER | $ADRESSE | $BETREFF | $RESULT" >> "$LOG"
  echo "FEHLER beim Versand: $RESULT" >&2
  exit 5
fi
