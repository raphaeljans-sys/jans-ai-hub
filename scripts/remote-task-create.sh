#!/bin/bash
# ============================================================================
# JANS AI Hub — Remote-Task erzeugen
# ============================================================================
# Legt einen Task in die Remote-Task-Queue, den die Ziel-Station beim
# naechsten git-auto-sync (alle 5 Min) automatisch ausfuehrt.
# Protokoll: remote-tasks/README.md
#
# VERWENDUNG:
#   remote-task-create.sh <mini|macbook> <name> [scriptdatei] [--push]
#   echo '<befehle>' | remote-task-create.sh mini <name> [--push]
#
# BEISPIELE:
#   echo 'sw_vers > "$1/macos.txt"' | remote-task-create.sh mini os-check --push
#   remote-task-create.sh macbook backup-pruefen ./mein-task.sh
#
# Im Task-Script ist $1 das Ergebnis-Verzeichnis (remote-tasks/results/<name>/).
# Voller JANS-Harness im Task: bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" "<Auftrag>"
# ============================================================================

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ZIEL="${1:-}"
NAME="${2:-}"

case "$ZIEL" in
    mini|mac-mini)       STATION="mac-mini" ;;
    macbook|macbook-pro) STATION="macbook-pro" ;;
    *) echo "Verwendung: $0 <mini|macbook> <name> [scriptdatei] [--push]"; exit 1 ;;
esac
[ -n "$NAME" ] || { echo "Task-Name fehlt."; exit 1; }

# Script-Inhalt: aus Datei (3. Argument) oder von stdin
SRC="${3:-}"
PUSH="no"
[ "${3:-}" = "--push" ] && { SRC=""; PUSH="yes"; }
[ "${4:-}" = "--push" ] && PUSH="yes"

TASK_DIR="$REPO_DIR/remote-tasks/pending/$STATION"
TASK_FILE="$TASK_DIR/$(date +%Y%m%d)-$NAME.sh"
mkdir -p "$TASK_DIR"

{
    echo "#!/bin/bash"
    echo "# Remote-Task: $NAME — erzeugt $(date '+%F %T') fuer Station $STATION"
    echo "# \$1 = Ergebnis-Verzeichnis (remote-tasks/results/...)"
    if [ -n "$SRC" ] && [ -f "$SRC" ]; then
        cat "$SRC"
    else
        cat            # stdin
    fi
} > "$TASK_FILE"
chmod +x "$TASK_FILE"

echo "Task angelegt: ${TASK_FILE#$REPO_DIR/}"

if [ "$PUSH" = "yes" ]; then
    cd "$REPO_DIR"
    git add "$TASK_FILE"
    git commit -m "remote-task erstellt: $NAME → $STATION"
    git push
    echo "Committet + gepusht — Ausfuehrung beim naechsten Sync der Station (≤5 Min, MacBook: sobald wach)."
else
    echo "Noch committen/pushen:  git add '$TASK_FILE' && git commit -m 'remote-task: $NAME' && git push"
fi
