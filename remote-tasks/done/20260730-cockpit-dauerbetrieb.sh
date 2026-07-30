#!/bin/bash
# Remote-Task: cockpit-dauerbetrieb — erzeugt 2026-07-30 fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
#
# Richtet das JANS Hub Cockpit (webtools/cockpit) als launchd-Dauerbetrieb ein:
# com.jans.cockpit baut alle 5 Min ~/.jans-cockpit/cockpit.html neu; der
# Browser-Tab auf dieser Datei aktualisiert sich per Meta-Refresh selbst.
set -u
R="$1"
REPO="$HOME/Developer/jans-ai-hub"

# Node finden (launchd hat kein Shell-Profil, darum absoluter Pfad in der Plist)
NODE_BIN="$(command -v node || true)"
if [ -z "$NODE_BIN" ]; then
  for k in /opt/homebrew/bin/node /usr/local/bin/node; do
    [ -x "$k" ] && NODE_BIN="$k" && break
  done
fi
if [ -z "$NODE_BIN" ]; then
  echo "FEHLER: node nicht gefunden" | tee "$R/status.txt"
  exit 1
fi
echo "node: $NODE_BIN" > "$R/status.txt"

PLIST="$HOME/Library/LaunchAgents/com.jans.cockpit.plist"
mkdir -p "$HOME/Library/LaunchAgents"
cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>com.jans.cockpit</string>
  <key>ProgramArguments</key>
  <array>
    <string>$NODE_BIN</string>
    <string>$REPO/webtools/cockpit/build-cockpit.mjs</string>
  </array>
  <key>StartInterval</key><integer>300</integer>
  <key>RunAtLoad</key><true/>
  <key>StandardErrorPath</key><string>/tmp/com.jans.cockpit.err</string>
</dict>
</plist>
EOF

launchctl unload "$PLIST" 2>/dev/null || true
launchctl load "$PLIST"
echo "launchd geladen: com.jans.cockpit (Takt 300 s)" >> "$R/status.txt"

# Erstlauf sofort, damit die Datei fuer den Browser-Tab existiert
"$NODE_BIN" "$REPO/webtools/cockpit/build-cockpit.mjs" >> "$R/status.txt" 2>&1 || true
ls -la "$HOME/.jans-cockpit/" >> "$R/status.txt" 2>&1 || true
echo "Cockpit oeffnen: open ~/.jans-cockpit/cockpit.html" >> "$R/status.txt"
