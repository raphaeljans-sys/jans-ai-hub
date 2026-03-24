#!/bin/bash
# JANS AI Hub - Auto-Sync installieren
# Richtet den launchd-Job ein, der alle 5 Minuten synchronisiert.
#
# Ausfuehren: bash scripts/install-auto-sync.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PLIST_SRC="$SCRIPT_DIR/com.jans.git-auto-sync.plist"
PLIST_DST="$HOME/Library/LaunchAgents/com.jans.git-auto-sync.plist"
SYNC_SCRIPT="$SCRIPT_DIR/git-auto-sync.sh"

echo "JANS AI Hub — Auto-Sync Setup"
echo "=============================="

# Pruefen ob Sync-Script existiert
if [ ! -f "$SYNC_SCRIPT" ]; then
    echo "FEHLER: $SYNC_SCRIPT nicht gefunden"
    exit 1
fi

# Alten Job stoppen falls vorhanden
if launchctl list | grep -q "com.jans.git-auto-sync"; then
    echo "Stoppe bestehenden Job..."
    launchctl unload "$PLIST_DST" 2>/dev/null
fi

# Plist anpassen (HOME-Verzeichnis und Pfade fuer aktuelle Station)
CURRENT_HOME="$HOME"
CURRENT_REPO="$HOME/Developer/jans-ai-hub"

sed -e "s|/Users/raphaeljans|$CURRENT_HOME|g" "$PLIST_SRC" > "$PLIST_DST"

echo "Installiert: $PLIST_DST"

# Executable sicherstellen
chmod +x "$SYNC_SCRIPT"

# Job laden
launchctl load "$PLIST_DST"

echo ""
echo "Auto-Sync aktiv! Synchronisiert alle 5 Minuten."
echo "Log: $CURRENT_REPO/.git/auto-sync.log"
echo ""
echo "Befehle:"
echo "  Status:      launchctl list | grep jans"
echo "  Stoppen:     launchctl unload $PLIST_DST"
echo "  Deinstall:   rm $PLIST_DST"
echo "  Log ansehen: tail -f $CURRENT_REPO/.git/auto-sync.log"
