#!/bin/bash
# Remote-Task: cockpit-web — erzeugt 2026-07-31 fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
#
# Richtet den Cockpit-Webserver ein (launchd com.jans.cockpit-web, KeepAlive):
# serviert ~/.jans-cockpit/cockpit.html auf Port 8377 fuer LAN + Tailscale.
# NAS-first wie der Build-Job; danach Erreichbarkeits-Nachweis nach results/.
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

PLIST="$HOME/Library/LaunchAgents/com.jans.cockpit-web.plist"
cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>com.jans.cockpit-web</string>
  <key>ProgramArguments</key>
  <array>
    <string>/bin/bash</string>
    <string>-c</string>
    <string>H="$NAS"; [ -d "\$H" ] || H="$SSD"; exec "$NODE_BIN" "\$H/webtools/cockpit/serve-cockpit.mjs"</string>
  </array>
  <key>KeepAlive</key><true/>
  <key>RunAtLoad</key><true/>
  <key>StandardErrorPath</key><string>/tmp/com.jans.cockpit-web.err</string>
</dict>
</plist>
EOF

launchctl unload "$PLIST" 2>/dev/null || true
launchctl load "$PLIST"
sleep 3

{
  echo "node   : $NODE_BIN"
  echo "launchd: com.jans.cockpit-web geladen (KeepAlive, Port 8377)"
  for u in "http://localhost:8377" "http://192.168.1.210:8377" "http://100.120.219.12:8377"; do
    if curl -m 3 -sf -o /dev/null "$u"; then echo "ERREICHBAR: $u"; else echo "nicht erreichbar: $u"; fi
  done
  echo "Lesezeichen: Buero http://192.168.1.210:8377 · ueberall (Tailscale) http://100.120.219.12:8377"
} > "$R/pruefung.txt" 2>&1
