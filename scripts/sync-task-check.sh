#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Tasks pruefen und ausfuehren
# ============================================================================
# Prueft ob auf dem NAS Aufgaben fuer diese Station warten.
# Wird beim Start von Claude Code automatisch ausgefuehrt.
#
# Verwendung:
#   bash sync-task-check.sh          # Nur anzeigen
#   bash sync-task-check.sh --run    # Anzeigen und ausfuehren
# ============================================================================

# Station erkennen
HOSTNAME=$(hostname -s)
# Station erkennen: zuerst Hardware-Modell (zuverlaessig), dann Hostname als Fallback
MODEL=$(sysctl -n hw.model 2>/dev/null || echo "unknown")
case "$MODEL" in
    Macmini*)
        STATION="mac-mini"
        ;;
    MacBookPro*|MacBookAir*)
        STATION="macbook-pro"
        ;;
    *)
        # Fallback: Hostname
        case "$HOSTNAME" in
            *mini*|*Mini*)
                STATION="mac-mini"
                ;;
            *)
                STATION="macbook-pro"
                ;;
        esac
        ;;
esac

NAS_QUEUE="/Volumes/daten/jans-ai-hub/sync-tasks/$STATION"
NAS_DONE="/Volumes/daten/jans-ai-hub/sync-tasks/done"

# NAS pruefen
if [ ! -d "$NAS_QUEUE" ]; then
    echo "NAS nicht gemountet oder Queue fehlt: $NAS_QUEUE"
    exit 1
fi

# Pending Tasks zaehlen
TASKS=($(find "$NAS_QUEUE" -name "*.md" -type f 2>/dev/null | sort))
COUNT=${#TASKS[@]}

if [ "$COUNT" -eq 0 ]; then
    # Im --notify Modus: keine Ausgabe wenn leer
    if [ "$1" = "--notify" ]; then
        exit 0
    fi
    echo "✅ Keine offenen Sync-Tasks fuer $STATION"
    exit 0
fi

# Im --notify Modus: JSON-Output fuer Claude Code Hook
if [ "$1" = "--notify" ]; then
    TASK_TITLES=""
    for TASK in "${TASKS[@]}"; do
        T=$(grep "^titel:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
        TASK_TITLES="${TASK_TITLES}${T}, "
    done
    TASK_TITLES="${TASK_TITLES%, }"
    echo "{\"hookSpecificOutput\":{\"hookEventName\":\"SessionStart\",\"additionalContext\":\"STATION-SYNC: Es liegen $COUNT offene Sync-Task(s) fuer diese Station ($STATION) vor: $TASK_TITLES. Fuehre '/station-sync' aus um die Tasks anzuzeigen und auszufuehren.\"}}"
    exit 0
fi

echo "============================================"
echo "  ⚡ $COUNT Sync-Task(s) fuer $STATION"
echo "============================================"
echo ""

for TASK in "${TASKS[@]}"; do
    BASENAME=$(basename "$TASK")
    TITEL=$(grep "^titel:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    VON=$(grep "^von:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    ERSTELLT=$(grep "^erstellt:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)

    echo "📋 $TITEL"
    echo "   Von: $VON | Erstellt: $ERSTELLT"
    echo "   Datei: $BASENAME"

    # Script extrahieren
    SCRIPT=$(sed -n '/^```bash$/,/^```$/p' "$TASK" | grep -v '```')

    if [ -n "$SCRIPT" ]; then
        echo "   Script:"
        echo "$SCRIPT" | sed 's/^/   > /'
    fi

    if [ "$1" = "--run" ]; then
        echo ""
        echo "   ⏳ Ausfuehren..."
        if eval "$SCRIPT" 2>&1 | sed 's/^/   | /'; then
            echo "   ✅ Erfolgreich"
            mv "$TASK" "$NAS_DONE/$BASENAME"
            echo "   → Verschoben nach done/"
        else
            echo "   ❌ Fehlgeschlagen — Task bleibt in Queue"
        fi
    fi

    echo ""
done

if [ "$1" != "--run" ]; then
    echo "Zum Ausfuehren: bash $(basename "$0") --run"
    echo "Oder in Claude Code: /station-sync"
fi
