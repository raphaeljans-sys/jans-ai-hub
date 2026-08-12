#!/bin/bash
# contract-check.sh — prueft alle skills/*/SKILL.md gegen skills/SKILL-CONTRACT.md, Abschnitt 2.
#
# Hintergrund: SYN-18 (wissens-destillat, 28.07.2026) und SYN-20 (energie, 13.08.2026) waren
# zwei neue Skills in Folge ohne die drei Pflichtfelder. SYN-20 (b) verlangt deshalb eine
# mechanische Pruefung, damit sich der Defekt beim naechsten neuen Skill nicht wiederholt.
# Gebaut im Synergie-Lauf 05 (13.08.2026), active-with-flagging.
#
# Geprueft werden zwei verschiedene Groessen, die nicht verwechselt werden duerfen:
#   (A) Skills ganz ohne '## Contract'-Block          -> die SYN-14-Groesse
#   (B) Skills mit Block, aber unvollstaendigen Feldern -> die SYN-20-Groesse
#
# Exit-Code: 0 = alles vollstaendig, 1 = mindestens eine Fehlstelle (fuer heartbeat/wissenscheck).

set -u
HUB="${HUB:-/Volumes/daten/jans-ai-hub}"
cd "$HUB" 2>/dev/null || { echo "FEHLER: Hub nicht erreichbar unter $HUB (NAS gemountet?)"; exit 2; }

ohne_block=()
unvollstaendig=()
gesamt=0

for d in skills/*/; do
  s="$d/SKILL.md"
  [ -f "$s" ] || continue
  name=$(basename "$d")
  gesamt=$((gesamt + 1))

  if ! grep -qi "^## *Contract" "$s"; then
    ohne_block+=("$name")
    continue
  fi

  fehlt=""
  grep -qi "Abhaengige Rules\|Abhängige Rules" "$s" || fehlt="$fehlt Abhaengige-Rules"
  grep -qi "Vorgelagert"  "$s" || fehlt="$fehlt Vorgelagert"
  grep -qi "Nachgelagert" "$s" || fehlt="$fehlt Nachgelagert"
  [ -n "$fehlt" ] && unvollstaendig+=("$name:$fehlt")
done

echo "Contract-Check ueber $gesamt Skills ($(date '+%Y-%m-%d %H:%M'))"
echo

if [ ${#ohne_block[@]} -gt 0 ]; then
  echo "A) OHNE '## Contract'-Block (${#ohne_block[@]}):"
  printf '   %s\n' "${ohne_block[@]}"
  echo
fi

if [ ${#unvollstaendig[@]} -gt 0 ]; then
  echo "B) MIT Block, aber unvollstaendige Pflichtfelder (${#unvollstaendig[@]}):"
  printf '   %s\n' "${unvollstaendig[@]}"
  echo
fi

fehl=$(( ${#ohne_block[@]} + ${#unvollstaendig[@]} ))
if [ "$fehl" -eq 0 ]; then
  echo "✅ Alle $gesamt Skills tragen einen Contract-Block mit allen drei Pflichtfeldern."
  exit 0
fi

echo "Summe: $fehl von $gesamt Skills unvollstaendig."
echo "Regel: skills/SKILL-CONTRACT.md Abschnitt 2 — die drei Felder tragen den Prozess-Graphen;"
echo "ohne sie ist ein Skill fuer jeden Ketten-Befund unsichtbar (SYN-14, SYN-18, SYN-20, SYN-23)."
exit 1
