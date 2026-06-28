#!/bin/bash
# ============================================================================
# JANS AI Hub — Remote-Task Runner
# ============================================================================
# Fuehrt Tasks aus, die von der Remote-Umgebung (claude.ai/code) ins Repo
# gepusht wurden. Wird nach jedem git pull automatisch aufgerufen.
#
#   remote-tasks/pending/*.sh  →  ausfuehren  →  remote-tasks/done/
#   Ergebnis                   →  remote-tasks/results/<taskname>/
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

# --- Ausfuehrungs-Station begrenzen -----------------------------------------
# Remote-Tasks werden NUR auf der Always-On-Station (Mac Mini) ausgefuehrt.
# Der Lock unten wirkt nur pro Maschine und verhindert KEINEN Doppellauf ueber
# mehrere Stationen. Andere Stationen (MacBook, NAS) sind reine Auftraggeber
# und ueberspringen die Ausfuehrung still.
EXEC_STATION="Macmini"
THIS_STATION="$(scutil --get ComputerName 2>/dev/null || hostname -s)"
if [ "$THIS_STATION" != "$EXEC_STATION" ]; then
    log "Station '$THIS_STATION' != Ausfuehrungs-Station '$EXEC_STATION' — uebersprungen"
    exit 0
fi

# Lock gegen Ueberlappung
LOCK="/tmp/jans-remote-task-runner.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    log "Lauf bereits aktiv — uebersprungen"
    exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

# Pending-Tasks sammeln
shopt -s nullglob
TASKS=("$PENDING"/*.sh)
[ ${#TASKS[@]} -eq 0 ] && exit 0

log "=== Start: ${#TASKS[@]} Task(s) gefunden ==="

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

    # Zeitstempel
    echo "$(date -Iseconds)" > "$RESULT_DIR/completed.txt"

    # Task nach done/ verschieben
    mv "$TASK" "$DONE/${BN}.sh"

    log "  $STATUS → results/$BN/"
done

# Ergebnisse committen und pushen
cd "$REPO_DIR" || exit 1
git add remote-tasks/results/ remote-tasks/done/
if [ -n "$(git diff --cached --name-only)" ]; then
    STATION=$(head -1 "$HOME/.jans-station" 2>/dev/null || hostname -s)
    git commit -m "remote-task erledigt [$STATION]: ${#TASKS[@]} Task(s)"
    log "Commit erstellt"

    # Push mit Retry
    for i in 1 2 3 4; do
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
