#!/bin/bash
# vollgas-supervisor.sh — Keepalive-Waechter fuer den VOLLGAS-Endlos-Runner.
#
# Zweck (Auftrag Raphael 12.07.2026, Rule 260712e — Taktgeber): stirbt der Runner
# still, laeuft das 5h-Fenster leer, bis der stuendliche Radar ihn neu startet
# (bis zu ~1.5 h Verlust). Dieser Waechter laeuft alle paar Minuten via launchd
# (StartInterval, NICHT KeepAlive) und startet den Runner neu, SOBALD er tot ist.
#
# BEWUSST kein launchd-KeepAlive: KeepAlive wuerde den Runner auch nach STOP oder
# nach dem Selbst-Ende (11.08.) sofort wieder hochreissen und so die Stopp-Mechanik
# aushebeln. Dieser Waechter respektiert STOP/STOP-$HOST und das END_DATE selbst und
# startet dann NICHT — der Runner behaelt die volle Kontrolle ueber sein Ende.
#
# Duplikat-Schutz: der Runner selbst haelt /tmp/jans-vollgas-runner.lock; zusaetzlich
# prueft der Waechter per pgrep, ob schon ein Runner laeuft. Zwei Sicherungen.
#
set -euo pipefail

NAS_DIR="/Volumes/daten/jans-ai-hub/logbuch/vollgas"
RUNNER="/Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh"
END_DATE="20260811"   # deckungsgleich mit dem Runner (Selbst-Ende / Drosselung)
HOST="$(hostname -s)"
LOG="$NAS_DIR/supervisor-$HOST.log"

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$HOST] $*" >> "$LOG" 2>/dev/null || true; }

# NAS gemountet?
[ -d "$NAS_DIR" ] || exit 0
[ -x "$RUNNER" ] || { log "Runner fehlt/nicht ausfuehrbar: $RUNNER"; exit 0; }

# Stopp-Bedingungen respektieren (nicht gegen STOP anrennen)
[ -f "$NAS_DIR/STOP" ]        && exit 0
[ -f "$NAS_DIR/STOP-$HOST" ]  && exit 0
[ "$(date +%Y%m%d)" -ge "$END_DATE" ] && exit 0

# Laeuft schon ein Runner? (eigene PID ausschliessen ist bei pgrep -f auf den Skriptnamen
# nicht noetig — dieser Waechter heisst anders.)
if pgrep -f "vollgas-runner.sh" >/dev/null 2>&1; then
    exit 0
fi

# Runner ist tot und darf laufen → neu starten (stehende VOLLGAS-Autorisierung).
nohup bash "$RUNNER" >/dev/null 2>&1 &
log "Runner war tot — neu gestartet (PID $!)."
exit 0
