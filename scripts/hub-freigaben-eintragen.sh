#!/bin/bash
# ============================================================================
# JANS AI Hub — Freigaben fuer die Hub-Werkzeuge eintragen
# ============================================================================
# Auftrag Raphael 09.08.2026: «gezielte Bash-Regeln ergaenzen», damit Routinen
# ohne Anwesenheit durchlaufen.
#
# WARUM DIESES SCRIPT UND NICHT CLAUDE DIREKT:
# Der Auto-Mode-Klassifikator blockt — richtigerweise — auch den Versuch, die
# eigene Berechtigungsdatei zu bearbeiten. Claude darf sich nicht selbst Rechte
# erteilen. Darum liegt der Eintrag hier und wird von Raphael ausgeloest.
#
# WAS EINGETRAGEN WIRD (bewusst eng, nur benannte Hub-Befehle, keine Wildcards
# auf ganze Programme):
#   - die vier Hub-Scripts wege-doctor, wege-radar, widerruf-queue, nas-commit-now
#   - die beiden KISPI-Scripts
#   - die M365-CLI unter ihrem vollen Pfad
#   - der hub-eigene Graph-Connector
#   - chmod 600 (Haerten von Secret-Dateien, wie am 09.08. noetig)
#
# NICHT eingetragen wird alles, was Geld bewegt, loescht oder Persistenz
# schafft. Diese Grenzen stehen in logbuch/AKTIONS-WHITELIST.md v2.
#
# Das Script ist idempotent: mehrfaches Ausfuehren aendert nichts zusaetzlich.
# Eine Sicherungskopie wird vorher angelegt.
#
# VERWENDUNG:
#     bash scripts/hub-freigaben-eintragen.sh            # eintragen
#     bash scripts/hub-freigaben-eintragen.sh --zeigen   # nur anzeigen
# ============================================================================

set -uo pipefail

ZIEL="$HOME/Developer/jans-ai-hub/.claude/settings.local.json"

REGELN=(
  "Bash(bash /Volumes/daten/jans-ai-hub/scripts/wege-doctor.sh:*)"
  "Bash(bash /Volumes/daten/jans-ai-hub/scripts/wege-radar.sh:*)"
  "Bash(bash /Volumes/daten/jans-ai-hub/scripts/widerruf-queue.sh:*)"
  "Bash(bash /Volumes/daten/jans-ai-hub/scripts/nas-commit-now.sh:*)"
  "Bash(bash /Volumes/daten/jans-ai-hub/scripts/kispi-gastzugriff-wiederherstellen.sh:*)"
  "Bash(bash /Volumes/daten/jans-ai-hub/scripts/kispi-ablaufpolicy-ausnehmen.sh:*)"
  "Bash(/Users/raphaeljans/Developer/jans-ai-hub/node_modules/.bin/m365:*)"
  "Bash(node /Volumes/daten/jans-ai-hub/connectors/m365-graph.mjs:*)"
  "Bash(chmod 600:*)"
)

if [ "${1:-}" = "--zeigen" ]; then
    echo "Diese Regeln wuerden eingetragen in $ZIEL:"
    printf '  %s\n' "${REGELN[@]}"
    exit 0
fi

[ -f "$ZIEL" ] || { echo "FEHLER: $ZIEL nicht gefunden."; exit 1; }

SICHERUNG="$ZIEL.backup-$(date +%y%m%d-%H%M%S)"
cp "$ZIEL" "$SICHERUNG" || { echo "FEHLER: Sicherung fehlgeschlagen."; exit 1; }
echo "Sicherung: $SICHERUNG"

python3 - "$ZIEL" "${REGELN[@]}" <<'PY'
import json, sys

ziel = sys.argv[1]
neue = sys.argv[2:]

with open(ziel, encoding="utf-8") as f:
    daten = json.load(f)

erlaubt = daten.setdefault("permissions", {}).setdefault("allow", [])
vorhanden = set(erlaubt)

ergaenzt = []
for regel in neue:
    if regel not in vorhanden:
        erlaubt.append(regel)
        ergaenzt.append(regel)

with open(ziel, "w", encoding="utf-8") as f:
    json.dump(daten, f, indent=2, ensure_ascii=False)
    f.write("\n")

if ergaenzt:
    print(f"{len(ergaenzt)} Regeln ergaenzt:")
    for r in ergaenzt:
        print(f"  + {r}")
else:
    print("Alle Regeln waren bereits eingetragen, nichts geaendert.")
PY

RC=$?
if [ "$RC" -ne 0 ]; then
    echo "FEHLER beim Schreiben — Sicherung wird zurueckgespielt."
    cp "$SICHERUNG" "$ZIEL"
    exit 1
fi

echo
echo "Damit die Regeln greifen, muss die Claude-Code-Sitzung neu gestartet werden."
echo "Rueckbau jederzeit: cp \"$SICHERUNG\" \"$ZIEL\""
