#!/bin/bash
# ============================================================================
# JANS AI Hub — Takt fuer die Widerrufs-Queue installieren (launchd)
# ============================================================================
# Auftrag Raphael 09.08.2026, letzter Baustein des Autonomie-Ausbaus.
#
# WOZU:
# Die Widerrufs-Queue meldet eine Aktion an, wartet eine Frist ab und fuehrt
# danach aus. Ohne Takt passiert der zweite Teil nie — eine angemeldete Aktion
# bliebe liegen, bis zufaellig jemand `--pruefen` aufruft. Dieser Timer schliesst
# die Luecke.
#
# WAS DER TIMER TUT (alle 5 Minuten, Default):
#   1. Mailantworten lesen (nur wenn ueberhaupt ein Vorgang offen ist)
#   2. Vetos umsetzen, BEVOR die Frist geprueft wird
#   3. faellige Vorgaenge ausfuehren und protokollieren
#
#   bash install-widerruf-takt.sh [interval-sekunden]   # Default 300 = 5 Min
#   bash install-widerruf-takt.sh --uninstall           # Timer entfernen
#   bash install-widerruf-takt.sh --status              # Zustand zeigen
#
# WICHTIG (TCC, zwei Huerden):
#   1. launchd-gestartete /bin/bash-Jobs brauchen Festplattenvollzugriff, sonst
#      blockiert macOS den SMB-Mount /Volumes/daten und der Job scheitert STILL
#      (Falle vom 11.06.2026). Die Plist zeigt deshalb auf die LOKALE SSD-Kopie,
#      und am Ende laeuft der FDA-Check.
#   2. Der Job steuert Apple Mail per osascript. Beim ERSTEN Lauf fragt macOS
#      einmalig nach der Automatisierungs-Erlaubnis. Kommt der Dialog nicht,
#      weil niemand am Rechner sitzt, bleibt der Mailteil still wirkungslos —
#      die Fristausfuehrung selbst laeuft trotzdem. Darum nach der Installation
#      einmal von Hand ausloesen, solange man davorsitzt.
#
# EIN TAKTGEBER, NICHT ZWEI (Rule betrieb-chronik 260727):
# Dieser Timer ist der EINZIGE Ort, der die Queue taktet. Wer sie zusaetzlich
# in einen Loop oder Scheduled Task haengt, erzeugt Doppellaeufe.
# ============================================================================

set -euo pipefail

LABEL="ch.jans.widerruf-queue"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
RUNNER="$HOME/Developer/jans-ai-hub/scripts/widerruf-queue.sh"

if [ "${1:-}" = "--uninstall" ]; then
    launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null || launchctl unload "$PLIST" 2>/dev/null || true
    rm -f "$PLIST"
    echo "Widerrufs-Takt deinstalliert. Angemeldete Vorgaenge bleiben liegen,"
    echo "bis sie von Hand geprueft werden: bash scripts/widerruf-queue.sh --pruefen"
    exit 0
fi

if [ "${1:-}" = "--status" ]; then
    if launchctl list | grep -q "$LABEL"; then
        echo "Takt aktiv: $LABEL"
        grep -A1 StartInterval "$PLIST" 2>/dev/null | tail -1 | sed 's/.*<integer>/  Intervall: /;s/<\/integer>/ Sekunden/'
    else
        echo "Takt NICHT aktiv."
    fi
    echo
    bash "$RUNNER" --liste 2>/dev/null || true
    exit 0
fi

INTERVAL="${1:-300}"

if [ ! -f "$RUNNER" ]; then
    echo "FEHLER: Queue-Script nicht gefunden: $RUNNER"
    echo "Der SSD-Klon ist nicht aktuell. Nachziehen mit:"
    echo "    cd ~/Developer/jans-ai-hub && git pull"
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
        <string>--pruefen</string>
    </array>
    <key>StartInterval</key><integer>$INTERVAL</integer>
    <key>RunAtLoad</key><true/>
    <key>EnvironmentVariables</key>
    <dict>
        <key>LANG</key><string>de_CH.UTF-8</string>
        <key>LC_ALL</key><string>de_CH.UTF-8</string>
    </dict>
    <key>StandardOutPath</key><string>$HOME/Library/Logs/jans-widerruf-queue.out.log</string>
    <key>StandardErrorPath</key><string>$HOME/Library/Logs/jans-widerruf-queue.err.log</string>
</dict>
</plist>
EOF

launchctl bootout "gui/$(id -u)/$LABEL" 2>/dev/null || launchctl unload "$PLIST" 2>/dev/null || true
launchctl bootstrap "gui/$(id -u)" "$PLIST" 2>/dev/null || launchctl load "$PLIST"

echo "Widerrufs-Takt installiert — alle ${INTERVAL}s (= $((INTERVAL/60)) Min)."
echo "  Plist:  $PLIST"
echo "  Script: $RUNNER --pruefen"
echo "  Log:    $HOME/Library/Logs/jans-widerruf-queue.out.log"
launchctl list | grep "$LABEL" >/dev/null 2>&1 && echo "  Status: aktiv" || echo "  Status: geladen"

# --- FDA-Check: darf launchd-bash auf /Volumes/daten? (TCC-Falle 11.06.2026) ---
echo ""
echo "FDA-Check (launchd zum SMB-Mount):"
CHECK="$(cd "$(dirname "$0")" && pwd)/check-launchd-fda.sh"
[ -f "$CHECK" ] || CHECK="/Volumes/daten/jans-ai-hub/scripts/check-launchd-fda.sh"
if [ -f "$CHECK" ]; then
    bash "$CHECK" || echo "  Nach dem FDA-Schritt: launchctl kickstart -k gui/$(id -u)/$LABEL"
else
    echo "  check-launchd-fda.sh nicht gefunden — manuell pruefen, ob /bin/bash"
    echo "  Festplattenvollzugriff hat (Systemeinstellungen, Datenschutz und Sicherheit)."
fi

echo ""
echo "Jetzt einmal von Hand ausloesen, solange Du davorsitzt — dann erscheint"
echo "der Automatisierungs-Dialog fuer Apple Mail und Du kannst ihn bestaetigen:"
echo "    bash $RUNNER --pruefen"
