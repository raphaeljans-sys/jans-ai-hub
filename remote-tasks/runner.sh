#!/bin/bash
# ============================================================================
# JANS AI Hub — Remote-Task Runner
# ============================================================================
# Fuehrt Tasks aus, die von einer Claude-Session (z.B. claude.ai/code, andere
# Station, Handy) ins Repo gepusht wurden. Wird nach jedem git pull
# automatisch aufgerufen (Hook in scripts/git-auto-sync.sh).
#
#   remote-tasks/pending/*.sh              → Standard-Ziel: NUR Mac Mini
#   remote-tasks/pending/mac-mini/*.sh     → nur Mac Mini
#   remote-tasks/pending/macbook-pro/*.sh  → nur MacBook Pro (wenn wach)
#
#   Ausfuehrung → done/   ·   Ergebnis → results/<taskname>/   → commit+push
#
# Task-Konvention: bash-Script, erhaelt als $1 das Ergebnis-Verzeichnis.
# Fuer Auftraege mit vollem JANS-Harness (Skills/Agents/Rules) im Task
# aufrufen:  bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" "<Auftrag>"
#
# Sicherheits-Modell: Nur .sh-Dateien in pending/ werden ausgefuehrt.
# Jeder Task laeuft mit den Rechten des lokalen Benutzers.
# ============================================================================

set -uo pipefail

REPO_DIR="$HOME/Developer/jans-ai-hub"
PENDING="$REPO_DIR/remote-tasks/pending"
DONE="$REPO_DIR/remote-tasks/done"
RESULTS="$REPO_DIR/remote-tasks/results"
LOGFILE="$REPO_DIR/remote-tasks/runner.log"

log() { echo "$(date '+%F %T') $*" >> "$LOGFILE"; }

# --- Station bestimmen und auf Ordnernamen normieren ------------------------
# Ordnernamen folgen der Konvention von sync-tasks/ und station-status/:
# "mac-mini" und "macbook-pro".
RAW_STATION="$(scutil --get ComputerName 2>/dev/null || hostname -s)"
case "$(echo "$RAW_STATION" | tr '[:upper:]' '[:lower:]' | tr -d ' -')" in
    *macmini*)  STATION_DIR="mac-mini" ;;
    *macbook*)  STATION_DIR="macbook-pro" ;;
    *)          STATION_DIR="$(echo "$RAW_STATION" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')" ;;
esac

# Lock gegen Ueberlappung (wirkt nur pro Maschine)
LOCK="/tmp/jans-remote-task-runner.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    log "Lauf bereits aktiv — uebersprungen"
    exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

# --- Zustaendige Tasks sammeln ----------------------------------------------
# Root-Ordner pending/*.sh: Standard-Ziel Mac Mini (rueckwaertskompatibel).
# Stations-Unterordner: jede Station fuehrt nur ihren eigenen aus.
shopt -s nullglob
TASKS=()
if [ "$STATION_DIR" = "mac-mini" ]; then
    TASKS+=("$PENDING"/*.sh)
fi
TASKS+=("$PENDING/$STATION_DIR"/*.sh)
[ ${#TASKS[@]} -eq 0 ] && exit 0

log "=== Start [$STATION_DIR]: ${#TASKS[@]} Task(s) gefunden ==="
mkdir -p "$DONE" "$RESULTS"

for TASK in "${TASKS[@]}"; do
    BN=$(basename "$TASK" .sh)
    RESULT_DIR="$RESULTS/$BN"
    mkdir -p "$RESULT_DIR"

    log "→ Starte: $BN"

    # Task ausfuehren, stdout/stderr in Ergebnis-Datei
    chmod +x "$TASK"
    TASK_LOG="$RESULT_DIR/output.log"
    if bash "$TASK" "$RESULT_DIR" > "$TASK_LOG" 2>&1; then
        STATUS="OK"
        echo "success" > "$RESULT_DIR/status.txt"
    else
        STATUS="FEHLER (exit $?)"
        echo "failed" > "$RESULT_DIR/status.txt"
    fi

    # Zeitstempel + ausfuehrende Station
    echo "$(date -Iseconds)" > "$RESULT_DIR/completed.txt"
    echo "$STATION_DIR" > "$RESULT_DIR/station.txt"

    # Task nach done/ verschieben
    mv "$TASK" "$DONE/${BN}.sh"

    log "  $STATUS → results/$BN/"
done

# --- Ergebnisse committen und pushen ----------------------------------------
cd "$REPO_DIR" || exit 1
git add -A remote-tasks/
if [ -n "$(git diff --cached --name-only)" ]; then
    STATION=$(head -1 "$HOME/.jans-station" 2>/dev/null || hostname -s)
    git commit -m "remote-task erledigt [$STATION]: ${#TASKS[@]} Task(s)"
    log "Commit erstellt"

    # Push mit Retry; vorher rebase, falls die Gegenstation parallel gepusht hat
    for i in 1 2 3 4; do
        git pull --rebase --autostash >>"$LOGFILE" 2>&1
        if git push 2>>"$LOGFILE"; then
            log "Push OK"
            break
        fi
        WAIT=$((2 ** i))
        log "Push fehlgeschlagen, Retry in ${WAIT}s..."
        sleep "$WAIT"
    done
fi

log "=== Ende ==="
