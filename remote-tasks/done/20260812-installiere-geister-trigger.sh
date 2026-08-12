#!/bin/bash
# Installiert den einmaligen, selbstloeschenden launchd-Trigger fuer den
# Geister-Cleanup (Restpunkt R1, Option B — Freigabe Raphael 12.08.2026).
# Feuert Fr 14.08.2026 09:00 lokal: kopiert das Cleanup-Script in die
# Task-Queue und entfernt sich selbst (Plist weg + bootout).
R="$1"
LABEL="ch.jans.onedrive-geister-trigger"
HELPER_DIR="$HOME/Library/Application Support/jans"
HELPER="$HELPER_DIR/onedrive-geister-trigger.sh"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
mkdir -p "$HELPER_DIR" "$HOME/Library/LaunchAgents"

cat > "$HELPER" <<'HEOF'
#!/bin/bash
# Einmal-Trigger (14.08.2026 09:00): Geister-Cleanup in die Task-Queue legen,
# danach Selbstabbau. Angelegt 12.08.2026, Freigabe Raphael (Option B).
REPO="$HOME/Developer/jans-ai-hub"
SRC="$REPO/docs/konzepte/260812-OneDrive-Sync-Incident/260814-onedrive-geister-cleanup.sh"
DST="$REPO/remote-tasks/pending/mac-mini/260814-onedrive-geister-cleanup.sh"
if [ -f "$SRC" ]; then
    mkdir -p "$(dirname "$DST")"
    cp "$SRC" "$DST" && chmod +x "$DST"
fi
# Selbstabbau: Plist entfernen, Job austragen
rm -f "$HOME/Library/LaunchAgents/ch.jans.onedrive-geister-trigger.plist"
launchctl bootout "gui/$(id -u)/ch.jans.onedrive-geister-trigger" 2>/dev/null &
exit 0
HEOF
chmod +x "$HELPER"

cat > "$PLIST" <<PEOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$LABEL</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>$HELPER</string>
    </array>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Month</key><integer>8</integer>
        <key>Day</key><integer>14</integer>
        <key>Hour</key><integer>9</integer>
        <key>Minute</key><integer>0</integer>
    </dict>
    <key>RunAtLoad</key>
    <false/>
</dict>
</plist>
PEOF

launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null
launchctl bootstrap "gui/$(id -u)" "$PLIST"

{
  echo "=== Trigger-Installation $(date '+%Y-%m-%d %H:%M:%S') ==="
  echo "--- Plist: $PLIST"
  ls -la "$PLIST" 2>&1
  echo "--- Helper: $HELPER"
  ls -la "$HELPER" 2>&1
  echo "--- launchd-Status:"
  launchctl print "gui/$(id -u)/$LABEL" 2>&1 | head -12
  echo
  echo "Feuert: Fr 14.08.2026 09:00 lokale Zeit, danach Selbstabbau."
} > "$R/bericht.txt" 2>&1
echo "Trigger installiert."
