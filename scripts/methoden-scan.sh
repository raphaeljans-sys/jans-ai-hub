#!/bin/bash
# methoden-scan.sh — deterministischer Delta-Scan ueber OneDrive "03 Prompteingaben"
#
# Vergleicht das Ordner-Inventar (Dateizahl, juengste mtime, Bytes je Unterordner)
# mit dem letzten gespeicherten Stand und meldet NEU / GEAENDERT / ENTFERNT.
# Vorfilter-Prinzip der Kontext-Diaet: erst dieses Script, dann (nur bei Delta)
# liest der Loop `methoden-radar` das neue Material wirklich.
#
# Aufruf:
#   bash methoden-scan.sh            # nur vergleichen
#   bash methoden-scan.sh --update   # vergleichen UND neuen Stand schreiben
#
# Exit-Codes: 0 = kein Delta · 10 = Delta vorhanden · 2 = Quelle fehlt · 3 = NAS fehlt
set -u

SRC="$HOME/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/03 Prompteingaben"
STATE_DIR="/Volumes/daten/jans-ai-hub/logbuch/methoden-radar"
STATE="$STATE_DIR/scan-state.tsv"

[ -d "$SRC" ] || { echo "FEHLER: Quelle nicht erreichbar: $SRC"; exit 2; }
[ -d "/Volumes/daten/jans-ai-hub" ] || { echo "FEHLER: NAS nicht gemountet"; exit 3; }
mkdir -p "$STATE_DIR"

inventar() {
  # TSV: ordner<TAB>dateizahl<TAB>max_mtime<TAB>bytes
  find "$SRC" -mindepth 1 -maxdepth 1 -type d | sort | while IFS= read -r d; do
    name=$(basename "$d")
    stats=$(find "$d" -type f ! -name '.DS_Store' -print0 2>/dev/null \
      | xargs -0 stat -f '%m %z' 2>/dev/null \
      | awk '{n++; if($1>m) m=$1; b+=$2} END {printf "%d\t%d\t%d", n, m, b}')
    printf '%s\t%s\n' "$name" "$stats"
  done
}

NEU_INV=$(inventar)

if [ ! -f "$STATE" ]; then
  echo "ERSTLAUF: kein gespeicherter Stand — alle Ordner gelten als NEU."
  echo "$NEU_INV" | awk -F'\t' '{printf "NEU\t%s\t(%s Dateien)\n", $1, $2}'
  [ "${1:-}" = "--update" ] && printf '%s\n' "$NEU_INV" > "$STATE"
  exit 10
fi

DELTA=0
# NEU + GEAENDERT
while IFS=$'\t' read -r name n m b; do
  alt=$(grep -F "$name"$'\t' "$STATE" | head -1)
  if [ -z "$alt" ]; then
    echo "NEU	$name	($n Dateien)"; DELTA=1
  else
    alt_n=$(printf '%s' "$alt" | cut -f2)
    alt_m=$(printf '%s' "$alt" | cut -f3)
    alt_b=$(printf '%s' "$alt" | cut -f4)
    if [ "$n" != "$alt_n" ] || [ "$m" != "$alt_m" ] || [ "$b" != "$alt_b" ]; then
      echo "GEAENDERT	$name	(Dateien $alt_n -> $n)"; DELTA=1
    fi
  fi
done <<< "$NEU_INV"
# ENTFERNT
while IFS=$'\t' read -r name rest; do
  case "$name" in \#*|"") continue;; esac
  printf '%s\n' "$NEU_INV" | grep -qF "$name"$'\t' || { echo "ENTFERNT	$name"; DELTA=1; }
done < "$STATE"

if [ "$DELTA" = "1" ]; then
  [ "${1:-}" = "--update" ] && printf '%s\n' "$NEU_INV" > "$STATE"
  exit 10
fi
echo "KEIN DELTA ($(printf '%s\n' "$NEU_INV" | wc -l | tr -d ' ') Ordner unveraendert)"
exit 0
