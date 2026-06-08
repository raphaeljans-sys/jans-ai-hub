#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task (Pendenz) erstellen
# ============================================================================
# Legt eine Pendenz fuer eine Station in deren NAS-Queue ab. Der Sync-Task-Runner
# (launchd, alle 30 Min) bzw. /station-sync arbeitet sie auf der Zielstation ab.
#
# Verwendung:
#   bash sync-task-create.sh <ziel> <titel> <inhalt> [typ]
#
#   typ = shell  (Default) → <inhalt> ist ein Bash-Script
#   typ = prompt           → <inhalt> ist eine Anweisung in Worten; sie laeuft via
#                            dispatch-run.sh (headless claude -p, voller Harness).
#                            prompt-Pendenzen werden NUR auf dem Mac Mini ausgefuehrt
#                            (Host-Weiche im dispatch-run.sh) → fuer rechenintensive,
#                            urteilende Aufgaben die Zielstation mac-mini waehlen.
#
# Beispiele:
#   bash sync-task-create.sh mac-mini "Zertifikat kopieren" "scp ~/.cert.pem user@host:~/"
#   bash sync-task-create.sh mac-mini "Trainings-Tasks pruefen" \
#        "Lies docs/RUNBOOK-trainings-tasks.md und fuehre TEIL A aus." prompt
# ============================================================================

ZIEL="$1"
TITEL="$2"
INHALT="$3"
TYP="${4:-shell}"

if [ -z "$ZIEL" ] || [ -z "$TITEL" ] || [ -z "$INHALT" ]; then
    echo "Verwendung: $0 <mac-mini|macbook-pro> <titel> <inhalt> [shell|prompt]"
    exit 1
fi

case "$TYP" in
    shell|prompt) ;;
    *) echo "FEHLER: typ muss 'shell' oder 'prompt' sein (war: '$TYP')"; exit 1 ;;
esac

NAS_QUEUE="/Volumes/daten/jans-ai-hub/sync-tasks/$ZIEL"
if [ ! -d "$NAS_QUEUE" ]; then
    echo "FEHLER: Queue-Verzeichnis nicht gefunden: $NAS_QUEUE"
    echo "Ist das NAS gemountet?"
    exit 1
fi

QUELLE=$(hostname -s)
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
FILENAME="${TIMESTAMP}_${TITEL// /-}.md"

{
    echo "---"
    echo "von: $QUELLE"
    echo "fuer: $ZIEL"
    echo "erstellt: $(date -Iseconds)"
    echo "status: pending"
    echo "typ: $TYP"
    echo "titel: $TITEL"
    echo "---"
    echo ""
    echo "# Sync-Task: $TITEL"
    echo ""
    echo "Erstellt von **$QUELLE** am $(date '+%d.%m.%Y %H:%M')"
    echo ""
    if [ "$TYP" = "prompt" ]; then
        echo "## Anweisung (laeuft via dispatch-run.sh / claude -p, nur Mac Mini)"
        echo ""
        echo "$INHALT"
    else
        echo "## Auszufuehrendes Script"
        echo ""
        echo '```bash'
        echo "$INHALT"
        echo '```'
    fi
    echo ""
    echo "## Kontext"
    echo ""
    echo "Automatisch erstellt auf $QUELLE — nachzuziehen/auszufuehren auf $ZIEL."
} > "$NAS_QUEUE/$FILENAME"

echo "Pendenz erstellt [$TYP]: $NAS_QUEUE/$FILENAME"
