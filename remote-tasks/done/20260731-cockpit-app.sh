#!/bin/bash
# Remote-Task: cockpit-app — erzeugt 2026-07-31 fuer Station macbook-pro
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
#
# Baut die Doppelklick-App "JANS Cockpit.app" (~/Applications): oeffnet das
# Cockpit ueber webtools/cockpit/cockpit-oeffnen.sh — zuerst der Live-Server
# des Mac Mini (Port 8377), sonst lokaler NAS-first-Build. Die App ist ein
# duenner Starter; die Logik bleibt versioniert im Repo/NAS.
set -u
R="$1"

SRC="$(mktemp -d)/cockpit.applescript"
cat > "$SRC" <<'EOF'
do shell script "H=/Volumes/daten/jans-ai-hub/webtools/cockpit/cockpit-oeffnen.sh; [ -f \"$H\" ] || H=\"$HOME/Developer/jans-ai-hub/webtools/cockpit/cockpit-oeffnen.sh\"; /bin/bash \"$H\""
EOF

mkdir -p "$HOME/Applications"
APP="$HOME/Applications/JANS Cockpit.app"
rm -rf "$APP"
osacompile -o "$APP" "$SRC"

{
  if [ -d "$APP" ]; then
    echo "App gebaut: $APP"
    echo "Start: Doppelklick in ~/Applications (oder ins Dock ziehen)."
    echo "Logik: webtools/cockpit/cockpit-oeffnen.sh (NAS-first, Mini-Server zuerst)."
  else
    echo "FEHLER: osacompile hat keine App erzeugt"
  fi
} > "$R/pruefung.txt" 2>&1
[ -d "$APP" ]
