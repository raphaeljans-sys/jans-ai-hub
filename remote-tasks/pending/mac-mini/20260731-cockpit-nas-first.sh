#!/bin/bash
# Remote-Task: cockpit-nas-first — erzeugt 2026-07-31 fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
#
# Korrektur zum Task 20260730-cockpit-dauerbetrieb: die Plist startete das
# Cockpit-Script fest aus ~/Developer/jans-ai-hub (GitHub-Sync-Repo). Neu ist
# der Lauf NAS-first: Script UND Datenquelle kommen vom NAS, das SSD-Repo ist
# nur noch Fallback, wenn /Volumes/daten beim Lauf nicht gemountet ist. Die
# Wahl faellt bei JEDEM 5-Min-Lauf neu (Wrapper), nicht einmalig bei Setup.
set -u
R="$1"
NAS="/Volumes/daten/jans-ai-hub"
SSD="$HOME/Developer/jans-ai-hub"

NODE_BIN="$(command -v node || true)"
if [ -z "$NODE_BIN" ]; then
  for k in /opt/homebrew/bin/node /usr/local/bin/node; do
    [ -x "$k" ] && NODE_BIN="$k" && break
  done
fi
[ -z "$NODE_BIN" ] && { echo "FEHLER: node nicht gefunden" | tee "$R/pruefung.txt"; exit 1; }

PLIST="$HOME/Library/LaunchAgents/com.jans.cockpit.plist"
cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>com.jans.cockpit</string>
  <key>ProgramArguments</key>
  <array>
    <string>/bin/bash</string>
    <string>-c</string>
    <string>H="$NAS"; [ -d "\$H" ] || H="$SSD"; exec "$NODE_BIN" "\$H/webtools/cockpit/build-cockpit.mjs" --hub "\$H"</string>
  </array>
  <key>StartInterval</key><integer>300</integer>
  <key>RunAtLoad</key><true/>
  <key>StandardErrorPath</key><string>/tmp/com.jans.cockpit.err</string>
</dict>
</plist>
EOF

launchctl unload "$PLIST" 2>/dev/null || true
launchctl load "$PLIST"

# Sofortlauf mit derselben Logik + Nachweis, welche Quelle das Cockpit traegt
H="$NAS"; [ -d "$H" ] || H="$SSD"
{
  echo "node        : $NODE_BIN"
  echo "hub-wurzel  : $H"
  "$NODE_BIN" "$H/webtools/cockpit/build-cockpit.mjs" --hub "$H" 2>&1
  echo "--- Quelle-Zeile aus der erzeugten HTML ---"
  grep -o 'Quelle: [^<]*' "$HOME/.jans-cockpit/cockpit.html" || echo "Quelle-Zeile nicht gefunden"
} > "$R/pruefung.txt" 2>&1
