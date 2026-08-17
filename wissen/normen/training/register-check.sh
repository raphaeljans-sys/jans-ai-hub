#!/bin/bash
# register-check.sh — Register gegen Destillat, die dritte Pruefachse
#
# Warum es das gibt (Entscheid Raphael 17.08.2026, nach Run 54):
# Der normen-Loop prueft Destillat gegen Original in ZWEI Richtungen (Refuter:
# «stimmt, was das Destillat behauptet» / Abdeckung: «was fehlt»). Niemand prueft
# die dritte Achse: Register gegen Destillat. In Run 54 fielen vier veraltete
# Registerstellen NUR ZUFAELLIG beim Lesen auf:
#   - INDEX-Zeile SIA 215 trug eine Schlussfolgerung, die Run 53 zurueckgenommen hatte
#   - INDEX-Zeile SIA 416/1 nannte eine Refuter-Runde als «ausstehend», die gelaufen war
#   - Inventar fuehrte SIA 215 als offene Position `[ ]`, drei Laeufe nach dem Destillat
#   - Inventar-Zeile SIA 416/1 ebenfalls «Refuter-Runde ausstehend»
# Dieses Script haette alle vier gefunden.
#
# LAEUFT NUR AUF ZURUF — bewusst kein Automatik-Takt, kein heartbeat-Einhang
# (Entscheid Raphael 17.08.2026: keine neue Fehlerquelle im Nachtfenster).
#
# Aufruf:  bash /Volumes/daten/jans-ai-hub/wissen/normen/training/register-check.sh
#          bash .../register-check.sh --kb energie      # andere KB, gleiches Schema
#
# Exit: 0 = keine Drift · 1 = Drift gefunden · 2 = Aufrufproblem
# Das Script AENDERT NICHTS. Es meldet nur.

set -uo pipefail

KB="normen"
while [ $# -gt 0 ]; do
  case "$1" in
    --kb) KB="${2:-}"; shift 2 ;;
    -h|--hilfe|--help)
      sed -n '2,25p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) echo "unbekanntes Argument: $1 (--hilfe)" >&2; exit 2 ;;
  esac
done

BASE="/Volumes/daten/jans-ai-hub/wissen/$KB"
DEST="$BASE/destillate"
INDEX="$DEST/INDEX.md"
INVENTAR="$BASE/training/norm-inventar.md"

[ -d "$DEST" ]    || { echo "FEHLER: $DEST nicht erreichbar (NAS gemountet?)" >&2; exit 2; }
[ -f "$INDEX" ]   || { echo "FEHLER: $INDEX fehlt" >&2; exit 2; }

befunde=0
melde() { printf '  %s\n' "$1"; befunde=$((befunde+1)); }

# Registerzeile zu einer Datei holen. NUR Tabellenzeilen (beginnen mit '|') —
# sonst trifft der Treffer die Prosa-Zeile «Je Norm ein Destillat `sia-102-2020.md`»
# aus der Einleitung und meldet jeden Status als Drift (Falsch-Positiv-Klasse,
# gefunden beim Kalibrieren am 17.08.2026).
regzeile() { grep -F "\`$2\`" "$1" 2>/dev/null | grep '^|' | head -1; }

# Historische Zitate in Guillemets ausblenden. Eine Korrektur schreibt sich als
# «hier stand ‹Refuter-Runde ausstehend›, sie war seit Run 53 gefahren» — das Wort
# steht dann noch da, meint aber den behobenen Zustand. Zweite Falsch-Positiv-Klasse.
ohne_zitate() { sed 's/«[^»]*»//g'; }

echo "Register-Check KB '$KB' — $(date '+%Y-%m-%d %H:%M %Z')"
echo "Destillate: $(ls -1 "$DEST"/*.md 2>/dev/null | grep -cv 'INDEX.md$')  ·  INDEX: $(basename "$INDEX")"
echo

# ---------------------------------------------------------------- Pruefung 1
# Jedes Destillat muss eine INDEX-Zeile haben, und jede INDEX-Zeile eine Datei.
echo "[1] Destillat <-> INDEX: existiert je Datei eine Zeile und umgekehrt?"
for f in "$DEST"/*.md; do
  b="$(basename "$f")"
  [ "$b" = "INDEX.md" ] && continue
  grep -qF "\`$b\`" "$INDEX" || melde "OHNE INDEX-ZEILE: $b"
done
# Rueckrichtung: im INDEX genannte Dateien, die es nicht gibt
grep -o '`[a-z0-9._-]*\.md`' "$INDEX" 2>/dev/null | tr -d '`' | sort -u | while read -r n; do
  [ -z "$n" ] && continue
  [ "$n" = "INDEX.md" ] && continue
  [ -f "$DEST/$n" ] || echo "  INDEX NENNT FEHLENDE DATEI: $n"
done
echo

# ---------------------------------------------------------------- Pruefung 2
# Der `status:` der Frontmatter muss in der INDEX-Zeile wieder auftauchen.
# Das faengt den Fall «Destillat established, INDEX sagt speculative» und umgekehrt.
echo "[2] status: der Frontmatter gegen den Status in der INDEX-Zeile"
for f in "$DEST"/*.md; do
  b="$(basename "$f")"
  [ "$b" = "INDEX.md" ] && continue
  # Status = erstes Wort nach 'status:', ohne Anfuehrung und ohne Satzzeichen am Ende
  st="$(awk -F': *' '/^status:/{print $2; exit}' "$f" | tr -d '"' | awk '{print $1}' | sed 's/[,;.:]*$//')"
  [ -z "$st" ] && { melde "OHNE status: IN FRONTMATTER: $b"; continue; }
  zeile="$(regzeile "$INDEX" "$b")"
  [ -z "$zeile" ] && continue   # in Pruefung 1 bereits gemeldet
  case "$zeile" in
    *"$st"*) : ;;
    *) melde "STATUS-DRIFT: $b sagt '$st', INDEX-Zeile sagt es nicht" ;;
  esac
done
echo

# ---------------------------------------------------------------- Pruefung 3
# Genau der Fall aus Run 54: das Destillat ist geprueft, das Register nennt die
# Pruefung weiterhin als ausstehend.
echo "[3] «ausstehend» im Register, obwohl die Frontmatter eine Pruefung ausweist"
for f in "$DEST"/*.md; do
  b="$(basename "$f")"
  [ "$b" = "INDEX.md" ] && continue
  grep -q '^geprueft:' "$f" || continue
  for reg in "$INDEX" "$INVENTAR"; do
    [ -f "$reg" ] || continue
    regzeile "$reg" "$b" | ohne_zitate | grep -qiE 'ausstehend|noch nicht geprueft|noch nicht geprüft' \
      && melde "REGISTER VERALTET: $b traegt 'geprueft:', aber $(basename "$reg") sagt 'ausstehend'"
  done
done
echo

# ---------------------------------------------------------------- Pruefung 4
# Inventar-Zeilen, die eine Norm als offen `[ ]` fuehren, obwohl ein Destillat
# dazu existiert. Genau der SIA-215-Fall (drei Laeufe lang uebersehen).
echo "[4] Inventar fuehrt '[ ]' offen, obwohl ein Destillat existiert"
if [ -f "$INVENTAR" ]; then
  grep -n '^| \[ \]' "$INVENTAR" 2>/dev/null | while IFS= read -r zeile; do
    nr="${zeile%%:*}"
    # Norm-Nummer aus der Zeile: erstes Muster wie 416/1, 118, 215, 266/2
    norm="$(printf '%s' "$zeile" | grep -oE '(SIA|VKF|DIN|SN EN|SN) [0-9]+(/[0-9]+)?' | head -1)"
    [ -z "$norm" ] && continue
    num="$(printf '%s' "$norm" | awk '{print $NF}' | tr '/' '-')"
    fam="$(printf '%s' "$norm" | awk '{print tolower($1)}')"
    treffer="$(ls -1 "$DEST" 2>/dev/null | grep -E "^${fam}-${num}-" | head -1)"
    [ -n "$treffer" ] && echo "  INVENTAR VERALTET (Z. $nr): '$norm' steht auf [ ], aber $treffer existiert"
  done
else
  echo "  (kein norm-inventar.md in dieser KB — Pruefung uebersprungen)"
fi
echo

# ---------------------------------------------------------------- Pruefung 5
# Datenstand: Frontmatter juenger als der INDEX-Eintrag ihn kennt, ist unkritisch;
# aber ein Destillat ohne datenstand: ist immer ein Befund.
echo "[5] Pflichtfelder der Frontmatter"
# Kalibriert am Bestand 17.08.2026 (369 Destillate): status 369x, datenstand/ausgabe/
# gelesen 366x, quelle/herausgeber 365x. NICHT geprueft wird `norm:` — das Feld fuehren
# nur wenige Destillate, es ist keine Konvention. Eine Pruefung, die 398 Mal feuert,
# misst die eigene Fehlkalibrierung und nicht den Bestand.
for f in "$DEST"/*.md; do
  b="$(basename "$f")"
  [ "$b" = "INDEX.md" ] && continue
  for feld in status datenstand ausgabe quelle; do
    grep -q "^${feld}:" "$f" || melde "FELD FEHLT ($feld): $b"
  done
done
echo

# ---------------------------------------------------------------- Ergebnis
echo "----------------------------------------------------------------"
if [ "$befunde" -eq 0 ]; then
  echo "Register-Check: KEINE DRIFT gefunden."
  exit 0
else
  echo "Register-Check: $befunde Befund(e) — bitte im naechsten Lauf bereinigen."
  echo "Das Script aendert nichts; die Korrektur gehoert in den Lauf, der sie belegen kann."
  exit 1
fi
