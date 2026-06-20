#!/bin/bash
# JANS Studienblatt — HTML zu PDF (A4, eine Seite) via Chrome headless.
# Aufruf:  bash build.sh <datei.html> [ausgabe.pdf]
set -e
SRC="$1"
OUT="${2:-${SRC%.html}.pdf}"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
DIR="$(cd "$(dirname "$SRC")" && pwd)"
BASE="$(basename "$SRC")"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --allow-file-access-from-files \
  --print-to-pdf="$OUT" "file://$DIR/$BASE" 2>/dev/null
PAGES=$(pdfinfo "$OUT" 2>/dev/null | awk '/^Pages/{print $2}')
echo "Erzeugt: $OUT  ($PAGES Seite(n))"
[ "$PAGES" = "1" ] || echo "WARNUNG: nicht genau 1 Seite. Inhalt verdichten (siehe README, Verdichtung)."
