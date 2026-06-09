#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task Auto-Runner  (Pendenzen pro Geraet, 30-Min-Poll)
# ============================================================================
# Fuehrt alle offenen Pendenzen der EIGENEN Station unbeaufsichtigt aus.
# Aufgerufen von launchd (alle 1800 s), manuell, oder via /station-sync.
#
#   sync-tasks/<station>/*.md  →  ausfuehren  →  sync-tasks/done/
#
# Task-Typen (Frontmatter-Feld `typ:`):
#   typ: shell   (Default) → der ```bash```-Block wird via eval ausgefuehrt
#   typ: prompt            → der Body wird an dispatch-run.sh (headless claude -p,
#                            voller JANS-Harness) uebergeben. Laeuft NUR auf dem
#                            Mac Mini — die Host-Weiche im dispatch-run.sh blockt
#                            andere Stationen automatisch (Pendenz bleibt liegen).
#
# Sicherheits-Modell: Es laufen nur Tasks, die auf einer vertrauten Station
# (Mac Mini / MacBook) bzw. von Claude in die NAS-Queue gelegt wurden — dieselbe
# Vertrauensbasis wie das manuelle /station-sync --run. Pro Station eine eigene
# Queue → keine Kollision zwischen den Geraeten.
# ============================================================================

set -uo pipefail

REPO_NAS="/Volumes/daten/jans-ai-hub"
[ -d "$REPO_NAS/sync-tasks" ] || exit 0   # NAS nicht gemountet → still beenden

# --- Station erkennen (identisch zu sync-task-check.sh) ----------------------
MODEL=$(sysctl -n hw.model 2>/dev/null || echo unknown)
case "$MODEL" in
    Macmini*)                STATION="mac-mini" ;;
    MacBookPro*|MacBookAir*) STATION="macbook-pro" ;;
    *) case "$(hostname -s)" in
           *[Mm]ini*) STATION="mac-mini" ;;
           *)         STATION="macbook-pro" ;;
       esac ;;
esac

QUEUE="$REPO_NAS/sync-tasks/$STATION"
DONE="$REPO_NAS/sync-tasks/done"
LOGDIR="$REPO_NAS/sync-tasks/log"
DISPATCH="$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh"

mkdir -p "$LOGDIR" 2>/dev/null
LOG="$LOGDIR/runner-$(date +%Y%m).log"
log() { echo "$(date -Iseconds) [$STATION] $*" >> "$LOG"; }

# --- Lock gegen Ueberlappung (zwei Laeufe gleichzeitig) ---------------------
LOCK="/tmp/jans-synctask-runner.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    log "Lauf bereits aktiv — uebersprungen"
    exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

# --- Offene Pendenzen sammeln -----------------------------------------------
shopt -s nullglob
TASKS=("$QUEUE"/*.md)
[ ${#TASKS[@]} -eq 0 ] && exit 0

log "Start — ${#TASKS[@]} Pendenz(en) fuer $STATION"

for TASK in "${TASKS[@]}"; do
    BN=$(basename "$TASK")
    TITEL=$(grep -m1 '^titel:' "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=$(grep -m1 '^typ:'   "$TASK" 2>/dev/null | cut -d: -f2- | xargs)
    TYP=${TYP:-shell}
    log "→ [$TYP] ${TITEL:-$BN}"

    OK=1
    if [ "$TYP" = "prompt" ]; then
        # Body = alles nach dem zweiten '---' (die Anweisung in Worten)
        BODY=$(awk 'f; /^---$/ { c++; if (c==2) f=1 }' "$TASK")
        if [ -f "$DISPATCH" ]; then
            if printf '%s\n' "$BODY" | bash "$DISPATCH" >> "$LOG" 2>&1; then OK=1; else OK=0; fi
        else
            log "  dispatch-run.sh fehlt auf dieser Station — prompt-Pendenz uebersprungen"
            OK=0
        fi
    else
        SCRIPT=$(sed -n '/^```bash$/,/^```$/p' "$TASK" | grep -v '```')
        if [ -n "$SCRIPT" ]; then
            if eval "$SCRIPT" >> "$LOG" 2>&1; then OK=1; else OK=0; fi
        else
            log "  kein Bash-Block gefunden — uebersprungen"
            OK=0
        fi
    fi

    if [ "$OK" = "1" ]; then
        mv "$TASK" "$DONE/$BN" && log "  erledigt → done/$BN"
    else
        log "  fehlgeschlagen — bleibt in Queue (naechster Lauf versucht erneut)"
    fi
done

log "Ende"
