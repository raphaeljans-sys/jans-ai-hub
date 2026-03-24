#!/bin/bash
# ============================================================================
# JANS AI Hub — NAS Auto-Mount Installer
# ============================================================================
# Installiert den LaunchAgent fuer automatisches NAS-Mounting.
# Das NAS wird automatisch verbunden sobald es erreichbar ist
# (im Buero via LAN, extern via Tailscale).
# ============================================================================

set -e

GREEN='\033[0;32m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PLIST_NAME="com.jans.nas-auto-mount"
PLIST_SRC="$SCRIPT_DIR/$PLIST_NAME.plist"
PLIST_DST="$HOME/Library/LaunchAgents/$PLIST_NAME.plist"
MOUNT_SCRIPT="$SCRIPT_DIR/nas-auto-mount.sh"

echo ""
echo "=== NAS Auto-Mount Installer ==="
echo ""

# Script ausfuehrbar machen
chmod +x "$MOUNT_SCRIPT"

# Alten Job stoppen falls vorhanden
launchctl unload "$PLIST_DST" 2>/dev/null || true

# Plist mit korrektem Home-Pfad anpassen
sed "s|/Users/raphaeljans|$HOME|g" "$PLIST_SRC" > "$PLIST_DST"

# LaunchAgent starten
launchctl load "$PLIST_DST"

echo -e "${GREEN}NAS Auto-Mount installiert!${NC}"
echo ""
echo "  Was passiert:"
echo "  • Alle 5 Minuten wird geprueft ob NAS erreichbar ist"
echo "  • Bei Netzwerkwechsel wird sofort geprueft"
echo "  • Im Buero: Mount via LAN (192.168.1.10)"
echo "  • Unterwegs: Mount via Tailscale (diskstation918...)"
echo "  • macOS-Notification bei erfolgreicher Verbindung"
echo ""
echo "  Log: ~/Developer/jans-ai-hub/.git/nas-auto-mount.log"
echo "  Stoppen: launchctl unload $PLIST_DST"
echo ""
