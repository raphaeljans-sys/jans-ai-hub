#!/bin/bash
# ============================================================================
# JANS AI Hub — Installer: Claude Auto-Update (launchd, taeglich 05:15)
# ============================================================================
# Richtet auf der aktuellen Station den nightly Auto-Update-Job ein:
#   ~/Library/LaunchAgents/ch.jans.claude-autoupdate.plist
#   → /bin/bash /Volumes/daten/jans-ai-hub/scripts/claude-autoupdate.sh
#
# Voraussetzung: /bin/bash hat Festplattenvollzugriff (launchd→SMB, siehe
# check-launchd-fda.sh) — sonst kann der Job nicht auf das NAS-Log schreiben
# (das Update selbst funktioniert auch ohne, Log faellt auf ~/Library/Logs).
# ============================================================================
set -u

PLIST="$HOME/Library/LaunchAgents/ch.jans.claude-autoupdate.plist"
SCRIPT="/Volumes/daten/jans-ai-hub/scripts/claude-autoupdate.sh"
LABEL="ch.jans.claude-autoupdate"

cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$LABEL</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>$SCRIPT</string>
    </array>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>5</integer>
        <key>Minute</key>
        <integer>15</integer>
    </dict>
    <key>StandardOutPath</key>
    <string>/tmp/claude-autoupdate.out</string>
    <key>StandardErrorPath</key>
    <string>/tmp/claude-autoupdate.err</string>
</dict>
</plist>
EOF

launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null
launchctl bootstrap "gui/$(id -u)" "$PLIST" || { echo "FEHLER: launchctl bootstrap fehlgeschlagen"; exit 1; }

echo "OK: $LABEL installiert (taeglich 05:15)"
launchctl print "gui/$(id -u)/$LABEL" 2>/dev/null | grep -E "state|last exit" | head -3
exit 0
