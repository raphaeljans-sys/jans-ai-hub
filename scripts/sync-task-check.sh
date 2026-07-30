#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Tasks pruefen und ausfuehren
# ============================================================================
# Prueft ob auf dem NAS Aufgaben fuer diese Station warten.
# Wird beim Start von Claude Code automatisch ausgefuehrt.
#
# Verwendung:
#   bash sync-task-check.sh                    # Nur anzeigen
#   bash sync-task-check.sh --run              # Anzeigen und ausfuehren
#   bash sync-task-check.sh --freigeben alle   # Zurueckgehaltene Tasks ausfuehren
#   bash sync-task-check.sh --freigeben <datei>
#   bash sync-task-check.sh --notify           # JSON fuer den SessionStart-Hook
#
# Freigabe-Schwelle (30.07.2026): Tasks, die SSH-Zugang, Rechte, Persistenz,
# Zerstoerendes, Versand oder Buchungen beruehren, werden NICHT ausgefuehrt —
# weder unbeaufsichtigt vom Runner noch mit --run. Sie wandern nach
# sync-tasks/freigabe/<station>/ und laufen nur nach ausdruecklichem
# --freigeben. Muster und Begruendung: scripts/sync-task-guard.sh
# ============================================================================

MODUS="${1:-}"
ZIEL="${2:-}"

# Station erkennen: zuerst explizite Identitaet ~/.jans-station (wie sync-task-run.sh),
# dann Hardware-Modell (zuverlaessig), dann Hostname als Fallback
HOSTNAME=$(hostname -s)
STATION=""
if [ -f "$HOME/.jans-station" ]; then
    STATION=$(head -1 "$HOME/.jans-station" | tr -cd 'a-z0-9-')
fi
if [ -z "$STATION" ]; then
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
fi

REPO_NAS="/Volumes/daten/jans-ai-hub"
NAS_QUEUE="$REPO_NAS/sync-tasks/$STATION"
NAS_DONE="$REPO_NAS/sync-tasks/done"
NAS_FREIGABE="$REPO_NAS/sync-tasks/freigabe/$STATION"
GUARD="$REPO_NAS/scripts/sync-task-guard.sh"

# NAS pruefen
if [ ! -d "$NAS_QUEUE" ]; then
    echo "NAS nicht gemountet oder Queue fehlt: $NAS_QUEUE"
    exit 1
fi

# ---------------------------------------------------------------- Ausfuehrung
# Fuehrt EINEN Task aus (shell oder prompt), gibt Output eingerueckt aus und
# verschiebt bei Erfolg nach done/. Rueckgabe: 0 = erledigt, sonst Fehler.
fuehre_aus() {
    local TASK="$1"
    local BASENAME TYP SCRIPT BODY OUTPUT RC DISPATCH
    BASENAME=$(basename "$TASK")
    TYP=$(grep -m1 "^typ:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=${TYP:-shell}
    SCRIPT=$(sed -n '/^```bash$/,/^```$/p' "$TASK" | grep -v '```')

    if [ "$TYP" = "prompt" ]; then
        # prompt-Pendenz: Body (alles nach dem zweiten '---') an dispatch-run.sh
        # uebergeben — wie im Auto-Runner sync-task-run.sh. Die Host-Weiche im
        # dispatch-run.sh blockt Fremd-Stationen (Exit 5) → Task bleibt liegen.
        DISPATCH="$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh"
        if [ ! -f "$DISPATCH" ]; then
            echo "   ❌ dispatch-run.sh fehlt auf dieser Station — Task bleibt in Queue"
            return 1
        fi
        BODY=$(awk 'f; /^---$/ { c++; if (c==2) f=1 }' "$TASK")
        echo "   ⏳ Ausfuehren (dispatch-run.sh)..."
        OUTPUT=$(printf '%s\n' "$BODY" | bash "$DISPATCH" 2>&1)
        RC=$?
    elif [ -z "$SCRIPT" ]; then
        # KEIN still-Archivieren: ohne Bash-Block wurde nichts ausgefuehrt —
        # frueher lief hier eval "" (Exit 0) und der Task landete faelschlich
        # in done/ (beobachtet 11.06.2026 bei /tmp-Pfad-Tasks).
        echo "   ❌ Kein Bash-Block im Task gefunden — nichts ausgefuehrt, Task bleibt liegen"
        return 1
    else
        # /tmp ist stationslokal: referenzierte Dateien, die hier fehlen, sind
        # vermutlich auf der Quellstation erstellt worden (Alt-Format vor Fix
        # 11.06.2026). Neue Tasks betten den Script-Inhalt ein oder verweisen
        # auf sync-tasks/<station>/scripts/ (NAS, ueberall erreichbar).
        for PFAD in $(printf '%s\n' "$SCRIPT" | grep -oE '(/private)?/tmp/[A-Za-z0-9._/-]+' | sort -u); do
            if [ ! -e "$PFAD" ]; then
                echo "   ⚠️  Referenziert $PFAD — existiert auf dieser Station NICHT (/tmp ist stationslokal)"
            fi
        done
        echo "   ⏳ Ausfuehren..."
        OUTPUT=$(eval "$SCRIPT" 2>&1)
        RC=$?
    fi

    [ -n "$OUTPUT" ] && printf '%s\n' "$OUTPUT" | sed 's/^/   | /'
    if [ $RC -eq 0 ]; then
        echo "   ✅ Erfolgreich"
        mv "$TASK" "$NAS_DONE/$BASENAME"
        echo "   → Verschoben nach done/"
        return 0
    fi
    echo "   ❌ Fehlgeschlagen (Exit $RC) — Task bleibt liegen"
    return 1
}

zeige_kopf() {
    local TASK="$1"
    local TITEL VON ERSTELLT TYP
    TITEL=$(grep "^titel:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    VON=$(grep "^von:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    ERSTELLT=$(grep "^erstellt:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=$(grep -m1 "^typ:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=${TYP:-shell}
    echo "📋 $TITEL [$TYP]"
    echo "   Von: $VON | Erstellt: $ERSTELLT"
    echo "   Datei: $(basename "$TASK")"
}

zeige_script() {
    local SCRIPT
    SCRIPT=$(sed -n '/^```bash$/,/^```$/p' "$1" | grep -v '```')
    if [ -n "$SCRIPT" ]; then
        echo "   Script:"
        echo "$SCRIPT" | sed 's/^/   > /'
    fi
}

# ------------------------------------------------------- Modus --freigeben
# Fuehrt zurueckgehaltene Tasks aus — nur auf ausdrueckliche Anweisung.
if [ "$MODUS" = "--freigeben" ]; then
    FTASKS=($(find "$NAS_FREIGABE" -maxdepth 1 -name "*.md" -type f 2>/dev/null | sort))
    if [ ${#FTASKS[@]} -eq 0 ]; then
        echo "✅ Keine zurueckgehaltenen Tasks fuer $STATION"
        exit 0
    fi
    if [ -z "$ZIEL" ]; then
        echo "Aufruf: sync-task-check.sh --freigeben alle|<dateiname>"
        exit 2
    fi
    for TASK in "${FTASKS[@]}"; do
        if [ "$ZIEL" != "alle" ] && [ "$(basename "$TASK")" != "$ZIEL" ]; then
            continue
        fi
        zeige_kopf "$TASK"
        echo "   🔓 Freigegeben durch ausdrueckliche Anweisung"
        fuehre_aus "$TASK"
        echo ""
    done
    exit 0
fi

# Pending Tasks zaehlen
TASKS=($(find "$NAS_QUEUE" -maxdepth 1 -name "*.md" -type f 2>/dev/null | sort))
COUNT=${#TASKS[@]}
FTASKS=($(find "$NAS_FREIGABE" -maxdepth 1 -name "*.md" -type f 2>/dev/null | sort))
FCOUNT=${#FTASKS[@]}

if [ "$COUNT" -eq 0 ] && [ "$FCOUNT" -eq 0 ]; then
    # Im --notify Modus: keine Ausgabe wenn leer
    if [ "$MODUS" = "--notify" ]; then
        exit 0
    fi
    echo "✅ Keine offenen Sync-Tasks fuer $STATION"
    exit 0
fi

# Im --notify Modus: JSON-Output fuer Claude Code Hook
if [ "$MODUS" = "--notify" ]; then
    TASK_TITLES=""
    for TASK in "${TASKS[@]}"; do
        T=$(grep "^titel:" "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
        TASK_TITLES="${TASK_TITLES}${T}, "
    done
    TASK_TITLES="${TASK_TITLES%, }"
    FTEXT=""
    if [ "$FCOUNT" -gt 0 ]; then
        FTEXT=" Zusaetzlich warten $FCOUNT Task(s) auf ausdrueckliche FREIGABE (sicherheitsrelevant, wurden nicht ausgefuehrt)."
    fi
    echo "{\"hookSpecificOutput\":{\"hookEventName\":\"SessionStart\",\"additionalContext\":\"STATION-SYNC: Es liegen $COUNT offene Sync-Task(s) fuer diese Station ($STATION) vor: $TASK_TITLES.$FTEXT Fuehre '/station-sync' aus um die Tasks anzuzeigen und auszufuehren.\"}}"
    exit 0
fi

if [ "$COUNT" -gt 0 ]; then
    echo "============================================"
    echo "  ⚡ $COUNT Sync-Task(s) fuer $STATION"
    echo "============================================"
    echo ""
fi

for TASK in "${TASKS[@]}"; do
    BASENAME=$(basename "$TASK")
    zeige_kopf "$TASK"
    zeige_script "$TASK"

    # Freigabe-Schwelle: heikle Tasks werden auch hier nicht mit --run gestartet
    GRUENDE=""
    BRAUCHT_FREIGABE=0
    if [ -f "$GUARD" ]; then
        GRUENDE=$(bash "$GUARD" "$TASK" --gruende)
        [ $? -eq 10 ] && BRAUCHT_FREIGABE=1
    else
        BRAUCHT_FREIGABE=1
        GRUENDE="Guard fehlt: $GUARD"
    fi

    if [ "$BRAUCHT_FREIGABE" = "1" ]; then
        echo "   ⚠️  BRAUCHT FREIGABE — nicht ausgefuehrt:"
        printf '%s\n' "$GRUENDE" | sed 's/^/      /'
        mkdir -p "$NAS_FREIGABE" 2>/dev/null
        if mv "$TASK" "$NAS_FREIGABE/$BASENAME" 2>/dev/null; then
            echo "   → Zurueckgehalten in freigabe/$STATION/"
            echo "   Freigeben mit: bash sync-task-check.sh --freigeben $BASENAME"
        fi
        echo ""
        continue
    fi

    if [ "$MODUS" = "--run" ]; then
        echo ""
        fuehre_aus "$TASK"
    fi

    echo ""
done

# ------------------------------------------------- Zurueckgehaltene anzeigen
FTASKS=($(find "$NAS_FREIGABE" -maxdepth 1 -name "*.md" -type f 2>/dev/null | sort))
FCOUNT=${#FTASKS[@]}
if [ "$FCOUNT" -gt 0 ]; then
    echo "============================================"
    echo "  🔒 $FCOUNT Task(s) warten auf FREIGABE ($STATION)"
    echo "============================================"
    echo ""
    for TASK in "${FTASKS[@]}"; do
        zeige_kopf "$TASK"
        zeige_script "$TASK"
        echo "   Grund der Zurueckhaltung:"
        bash "$GUARD" "$TASK" --gruende 2>/dev/null | sed 's/^/      /'
        echo "   Freigeben mit: bash sync-task-check.sh --freigeben $(basename "$TASK")"
        echo ""
    done
fi

if [ "$MODUS" != "--run" ] && [ "$COUNT" -gt 0 ]; then
    echo "Zum Ausfuehren: bash $(basename "$0") --run"
    echo "Oder in Claude Code: /station-sync"
fi
