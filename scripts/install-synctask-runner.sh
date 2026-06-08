#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task-Runner installieren (launchd, 30-Min-Poll)
# ============================================================================
# Richtet auf DIESER Station einen launchd-Timer ein, der den Pendenzen-Runner
# alle 30 Min (Default) ausfuehrt. launchd laeuft beim Aufwachen still nach —
# kein Toast, keine Kosten im Leerlauf (anders als ein Claude-Scheduled-Task).
#
#   bash install-synctask-runner.sh [interval-sekunden]   # Default 1800 = 30 Min
#   bash install-synctask-runner.sh --uninstall           # Timer entfernen
# ============================================================================

set -euo pipefail

LABEL="ch.jans.synctask-runner"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
RUNNER="$HOME/Developer/jans-ai-hub/scripts/sync-task-run.sh"

if [ "${1:-}" = "--uninstall" ]; then
    launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null || launchctl unload "$PLIST" 2>/dev/null || true
    rm -f "$PLIST"
    echo "Sync-Task-Runner deinstalliert."
    exit 0
fi

INTERVAL="${1:-1800}"

if [ ! -f "$RUNNER" ]; then
    echo "FEHLER: Runner nicht gefunden: $RUNNER"
    echo "Ist das SSD-Repo unter ~/Developer/jans-ai-hub aktuell (git pull)?"
    exit 1
fi

mkdir -p "$HOME/Library/LaunchAgents" "$HOME/Library/Logs"

cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key><string>$LABEL</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>$RUNNER</string>
    </array>
    <key>StartInterval</key><integer>$INTERVAL</integer>
    <key>RunAtLoad</key><true/>
    <key>StandardOutPath</key><string>$HOME/Library/Logs/jans-synctask-runner.out.log</string>
    <key>StandardErrorPath</key><string>$HOME/Library/Logs/jans-synctask-runner.err.log</string>
</dict>
</plist>
EOF

launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null || launchctl unload "$PLIST" 2>/dev/null || true
launchctl bootstrap "gui/$(id -u)" "$PLIST" 2>/dev/null || launchctl load "$PLIST"

echo "Sync-Task-Runner installiert — alle ${INTERVAL}s (= $((INTERVAL/60)) Min)."
echo "  Plist:  $PLIST"
echo "  Runner: $RUNNER"
echo "  Log:    /Volumes/daten/jans-ai-hub/sync-tasks/log/runner-$(date +%Y%m).log"
launchctl list | grep "$LABEL" >/dev/null 2>&1 && echo "  Status: aktiv" || echo "  Status: geladen (pruefe mit: launchctl list | grep $LABEL)"
