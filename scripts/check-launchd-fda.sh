#!/bin/bash
# ============================================================================
# JANS AI Hub — launchd-FDA-Check (TCC blockiert SMB-Zugriff)
# ============================================================================
# Prueft, ob von launchd gestartete /bin/bash-Jobs auf den SMB-Mount
# /Volumes/daten zugreifen duerfen. macOS-TCC blockiert Netzwerk-Volumes fuer
# Hintergrund-Agents («Operation not permitted»), solange /bin/bash keinen
# Festplattenvollzugriff (FDA) hat. Folge: Sync-Task-Runner und Stations-
# Status scheitern STILL mit Exit 0 (entdeckt 11.06.2026, beide Stationen).
#
# Methode: startet eine einmalige launchd-Probe, die aus launchd-Kontext eine
# Datei auf das NAS schreibt (kickstart + Schreibtest). Schlaegt sie fehl,
# wird die Anleitung fuer den manuellen FDA-Schritt ausgegeben.
#
#   bash check-launchd-fda.sh
#
# Exit: 0 = Zugriff ok | 1 = blockiert (FDA fehlt) | 2 = nicht pruefbar
# ============================================================================

set -uo pipefail

GREEN='\033[0;32m'; RED='\033[0;31m'; YELLOW='\033[1;33m'; NC='\033[0m'

NAS="/Volumes/daten/jans-ai-hub"
LABEL="ch.jans.fda-probe"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
RESULT="/tmp/jans-fda-probe-result.$(id -u)"
PROBE_FILE="$NAS/sync-tasks/log/.fda-probe-$(hostname -s | tr '[:upper:]' '[:lower:]')"

# Ohne NAS-Mount ist die Probe nicht aussagekraeftig.
if [ ! -d "$NAS" ]; then
    echo -e "  ${YELLOW}!!${NC}  NAS nicht gemountet — FDA-Check uebersprungen."
    echo "      Spaeter nachholen: bash $NAS/scripts/check-launchd-fda.sh"
    exit 2
fi
mkdir -p "$NAS/sync-tasks/log" 2>/dev/null || true
mkdir -p "$HOME/Library/LaunchAgents"

rm -f "$RESULT"
cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key><string>$LABEL</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>-c</string>
        <string>if echo fda-probe > '$PROBE_FILE' 2>/dev/null; then rm -f '$PROBE_FILE'; echo OK > '$RESULT'; else echo FAIL > '$RESULT'; fi</string>
    </array>
    <key>RunAtLoad</key><true/>
</dict>
</plist>
EOF

launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null || true
launchctl bootstrap "gui/$(id -u)" "$PLIST" 2>/dev/null || launchctl load "$PLIST" 2>/dev/null
launchctl kickstart "gui/$(id -u)/$LABEL" 2>/dev/null || true

# bis 15 s auf das Probe-Resultat warten
for _ in $(seq 1 30); do
    [ -f "$RESULT" ] && break
    sleep 0.5
done

launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null || launchctl unload "$PLIST" 2>/dev/null || true
rm -f "$PLIST"

STATUS=$(cat "$RESULT" 2>/dev/null || echo TIMEOUT)
rm -f "$RESULT"

if [ "$STATUS" = "OK" ]; then
    echo -e "  ${GREEN}OK${NC}  launchd-Jobs (/bin/bash) duerfen auf /Volumes/daten schreiben — FDA vorhanden."
    exit 0
fi

echo -e "  ${RED}BLOCKIERT${NC}  launchd-/bin/bash kommt NICHT auf /Volumes/daten (Probe: $STATUS)."
echo ""
echo "  macOS-TCC blockiert Hintergrund-Jobs auf Netzwerk-Volumes, bis /bin/bash"
echo "  Festplattenvollzugriff hat. Einmalig manuell beheben:"
echo ""
echo "   1. Systemeinstellungen oeffnen:"
echo "        open \"x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles\""
echo "   2. Unter «Festplattenvollzugriff» auf «+» klicken"
echo "   3. Cmd+Shift+G druecken und eingeben:  /bin/bash  → Oeffnen → Schalter aktivieren"
echo "   4. Check wiederholen:"
echo "        bash $NAS/scripts/check-launchd-fda.sh"
echo "   5. Runner anstossen:"
echo "        launchctl kickstart -k gui/\$(id -u)/ch.jans.synctask-runner"
echo ""
# Interaktiv: Einstellungs-Pane direkt oeffnen
if [ -t 1 ]; then
    open "x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles" 2>/dev/null || true
fi
exit 1
