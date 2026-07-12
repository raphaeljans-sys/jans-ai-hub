#!/bin/bash
# ============================================================================
# JANS AI Hub — Remote-Task Runner installieren
# ============================================================================
# Haengt den Remote-Task Runner an git-auto-sync.sh an, sodass nach jedem
# git pull automatisch auf neue Tasks geprueft wird.
#
# Ausfuehren: bash ~/Developer/jans-ai-hub/remote-tasks/install.sh
# ============================================================================

REPO_DIR="$HOME/Developer/jans-ai-hub"
SYNC_SCRIPT="$REPO_DIR/scripts/git-auto-sync.sh"
RUNNER="$REPO_DIR/remote-tasks/runner.sh"
HOOK_MARKER="# >>> REMOTE-TASK-RUNNER-HOOK"

echo "JANS AI Hub — Remote-Task Runner Setup"
echo "======================================="

# Runner executable machen
chmod +x "$RUNNER"
echo "Runner: $RUNNER (executable)"

# Pruefen ob Hook schon eingebaut
if grep -q "$HOOK_MARKER" "$SYNC_SCRIPT" 2>/dev/null; then
    echo "Hook bereits in git-auto-sync.sh vorhanden — nichts zu tun."
else
    # Hook am Ende von git-auto-sync.sh anfuegen
    cat >> "$SYNC_SCRIPT" <<'HOOK'

# >>> REMOTE-TASK-RUNNER-HOOK (installiert von remote-tasks/install.sh)
# Nach jedem Pull: pruefen ob Remote-Tasks vorliegen
if [ -d "$REPO_DIR/remote-tasks/pending" ]; then
    # Tasks im Root UND in Stations-Unterordnern (mac-mini/, macbook-pro/) erkennen
    if find "$REPO_DIR/remote-tasks/pending" -name '*.sh' -print -quit 2>/dev/null | grep -q .; then
        log "REMOTE-TASKS: Task(s) gefunden — starte Runner"
        bash "$REPO_DIR/remote-tasks/runner.sh" >> "$LOG_FILE" 2>&1
    fi
fi
# <<< REMOTE-TASK-RUNNER-HOOK
HOOK
    echo "Hook in git-auto-sync.sh eingefuegt."
fi

# Erstlauf: sofort pruefen
echo ""
echo "Erstlauf — pruefe auf offene Tasks..."
PENDING_COUNT=$(ls "$REPO_DIR/remote-tasks/pending/"*.sh 2>/dev/null | wc -l | tr -d ' ')
if [ "$PENDING_COUNT" -gt 0 ]; then
    echo "$PENDING_COUNT Task(s) in pending/ gefunden."
    echo ""
    echo "Starte Runner jetzt? (j/n)"
    read -r ANTWORT
    if [ "$ANTWORT" = "j" ] || [ "$ANTWORT" = "J" ]; then
        bash "$RUNNER"
        echo ""
        echo "Ergebnisse in: $REPO_DIR/remote-tasks/results/"
    else
        echo "OK — Tasks werden beim naechsten git-auto-sync ausgefuehrt."
    fi
else
    echo "Keine offenen Tasks — alles bereit."
fi

echo ""
echo "Setup komplett."
echo ""
echo "So funktioniert es:"
echo "  1. Remote (claude.ai/code) erstellt Tasks in remote-tasks/pending/"
echo "  2. git-auto-sync.sh pullt alle 5 Min und fuehrt neue Tasks aus"
echo "  3. Ergebnisse landen in remote-tasks/results/ und werden zurueckgepusht"
echo ""
echo "Manuell Tasks pruefen:  bash $RUNNER"
echo "Log:                    cat $REPO_DIR/remote-tasks/runner.log"
