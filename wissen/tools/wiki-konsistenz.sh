#!/usr/bin/env bash
# wiki-konsistenz.sh — Struktur-Check fuer die Wissens-Layer-KBs unter wissen/
#
# Prueft je KB: Frontmatter-Pflichtfelder, INDEX-Registrierung, Backlink-Aufloesung.
#
# WICHTIG — der Grund fuer dieses Script (28.07.2026): Backlinks [[…]] sind im JANS-Wissens-Layer
# bewusst KB-uebergreifend (ein planungsgrundlagen-Artikel verweist fuer die Tiefe auf
# wissen/energie oder wissen/baurecht) und zeigen zusaetzlich auf Skills/Rules. Wer nur den
# eigenen wiki/-Ordner durchsucht, meldet diese gueltigen Links als "tote Links" — dieser
# Fehlalarm ist bereits DREIMAL entstanden (Health-Check, Nachaudit PL-03) und hat jedes Mal
# Arbeitszeit gekostet. Dieses Script sucht Ziele in ALLEN KBs (wiki/ + destillate/) und in der
# Skill-/Agent-/Rule-Liste, bevor es etwas als fehlend meldet.
#
# Aufruf:  bash wissen/tools/wiki-konsistenz.sh [<kb> …]      (ohne Argument: alle KBs)
# Exit:    0 = keine Befunde · 1 = Befunde vorhanden

set -uo pipefail
HUB="/Volumes/daten/jans-ai-hub"
WISSEN="$HUB/wissen"
cd "$WISSEN" || { echo "wissen/ nicht erreichbar — NAS gemountet?"; exit 2; }

# bash 3.2 auf macOS kennt kein mapfile — bewusst mit while/read statt mapfile arbeiten.
KBS=()
if [ $# -gt 0 ]; then
  KBS=("$@")
else
  while IFS= read -r d; do KBS+=("$d"); done < <(
    find . -maxdepth 2 -type d -name wiki | sed 's|^\./||; s|/wiki$||' | sort)
fi

# --- Ziel-Universum aufbauen: alle Artikel aller KBs + Skills + Agents + Rules
ZIELE=$(mktemp)
trap 'rm -f "$ZIELE"' EXIT
{
  find "$WISSEN" -path "*/wiki/*.md" -o -path "*/destillate/*.md" | while read -r f; do
    basename "$f" .md
  done
  find "$HUB/skills" -maxdepth 1 -mindepth 1 -type d -exec basename {} \; 2>/dev/null
  find "$HUB/agents" -maxdepth 1 -name "*.md" -exec basename {} .md \; 2>/dev/null
  find "$HUB/rules"  -maxdepth 1 -name "*.md" -exec basename {} .md \; 2>/dev/null
} | sort -u > "$ZIELE"

ZAEHLER=$(mktemp); echo 0 > "$ZAEHLER"
trap 'rm -f "$ZIELE" "$ZAEHLER"' EXIT
# melde() laeuft teilweise in Pipe-Subshells — der Zaehler liegt darum in einer Datei,
# sonst meldet das Script Befunde und beendet trotzdem mit "keine Befunde"/Exit 0.
melde() { printf ' ! %-28s %s\n' "$1" "$2"; echo $(( $(cat "$ZAEHLER") + 1 )) > "$ZAEHLER"; }

for kb in "${KBS[@]}"; do
  [ -d "$kb/wiki" ] || { echo "== $kb: kein wiki/ — uebersprungen"; continue; }
  echo "== $kb"
  INDEX="$kb/wiki/INDEX.md"
  for f in "$kb"/wiki/*.md; do
    n=$(basename "$f" .md)
    case "$n" in INDEX|QUESTIONS|CLAUDE) ;; *)
      # Frontmatter
      head -1 "$f" | grep -q '^---$' || melde "$n" "kein Frontmatter"
      for key in title status last_updated sources; do
        awk '/^---$/{c++; next} c==1' "$f" | grep -q "^$key:" || melde "$n" "Frontmatter ohne $key:"
      done
      # INDEX-Registrierung
      [ -f "$INDEX" ] && { grep -q -- "$n" "$INDEX" || melde "$n" "nicht im INDEX registriert"; }
      ;;
    esac
    # Backlinks — Zeilenumbruch im Link zuerst (haeufigster echter Fehler)
    grep -n '\[\[[A-Za-zÄÖÜäöü0-9._-]*$' "$f" | while IFS=: read -r ln _; do
      melde "$n:$ln" "Backlink ueber Zeilenumbruch zerrissen (loest nirgends auf)"
    done
    grep -o '\[\[[^]]*\]\]' "$f" 2>/dev/null | sed 's/^\[\[//; s/\]\]$//' | sort -u | while read -r l; do
      case "$l" in
        *$'\n'*|*/*) melde "$n" "Pfad/Umbruch in Wikilink-Syntax [[$l]] — Backticks verwenden" ;;
        *) grep -qxF "$l" "$ZIELE" || melde "$n" "Ziel existiert nirgends in wissen//skills//agents//rules: [[$l]]" ;;
      esac
    done
  done
done

echo
BEFUNDE=$(cat "$ZAEHLER")
if [ "$BEFUNDE" -eq 0 ]; then echo "keine Befunde."; exit 0; fi
echo "$BEFUNDE Befund(e)."
exit 1
