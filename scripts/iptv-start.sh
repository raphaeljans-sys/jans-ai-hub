#!/bin/bash
# IPTV-Sender direkt in VLC starten (10 s Puffer, Vollbild). Zugangsdaten kommen zur Laufzeit aus der
# GSE-SMART-IPTV-Datenbank (Xtream-Konto Ste2022) und werden nie ausgegeben.
# Sender finden:  python3 "$(dirname "$0")/iptv-sender-kategorien.py" "champions|sport" "prime|blue sport|dazn"
# Starten:        bash iptv-start.sh <stream_id>     (z.B. 836879 = Amazon Prime Sport FHD, 816153 = Blue Sport 1 Live)
set -e
[ -n "$1" ] || { echo "Aufruf: iptv-start.sh <stream_id>"; exit 1; }
URL=$(python3 "$(dirname "$0")/iptv-sender.py" --url "$1")
pkill -x VLC 2>/dev/null || true; sleep 1
nohup /Applications/VLC.app/Contents/MacOS/VLC --network-caching=10000 --fullscreen "$URL" >/dev/null 2>&1 &
echo "VLC gestartet, Stream $1"
