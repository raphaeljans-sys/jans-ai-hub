#!/bin/bash
# ============================================================================
# JANS AI Hub — ensure-nas-mounted (Schicht 3: Ueberleben)
# ============================================================================
# Synchroner, BLOCKIERENDER Guard fuer headless-Tasks (Lern-Loops, Hub-Chef,
# Dispatch, Scheduled Tasks). Aufruf ganz am Anfang des Tasks:
#
#     if ! bash "$HOME/Developer/jans-ai-hub/scripts/ensure-nas-mounted.sh" 90; then
#         echo "NAS nicht verfuegbar — Lauf sauber abgebrochen"; exit 0
#     fi
#
# Verhalten:
#   - Prueft echten SMB-Round-Trip (stat Sentinel), nicht nur den Mount-Eintrag.
#   - Ist er nicht bereit: stoesst nas-auto-mount.sh an (nutzt dessen Lock) und
#     pollt bis zu MAX_WAIT Sekunden.
#   - rc 0 = NAS bereit und lesbar.
#   - rc 1 = nach MAX_WAIT nicht bereit -> der Task soll SAUBER abbrechen und
#            nur lokal loggen (nie mitten in NAS-Schreibvorgaenge hineinlaufen).
#
# Idempotent, laeuft NAS-unabhaengig von der SSD. Ergaenzt Rule 260725
# (headless-Remount via Tailscale/osascript). Angelegt 25.07.2026.
# ============================================================================

set -o pipefail

NAS_MOUNT="/Volumes/daten"
SENTINEL="$NAS_MOUNT/jans-ai-hub/.nas-sentinel"
AUTOMOUNT="$HOME/Developer/jans-ai-hub/scripts/nas-auto-mount.sh"
MAX_WAIT="${1:-90}"      # Sekunden Gesamt-Wartebudget
POLL=5                   # Sekunden zwischen Versuchen
STAT_TIMEOUT=4           # Sekunden fuer den Sentinel-Round-Trip
LOG_FILE="$HOME/Developer/jans-ai-hub/.git/nas-ensure.log"

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $1" >> "$LOG_FILE" 2>/dev/null; }

_timeout() {
    local SECS="$1"; shift
    ("$@") & local PID=$!
    (sleep "$SECS" && kill -9 $PID 2>/dev/null) & local WD=$!
    wait $PID 2>/dev/null; local RET=$?
    kill $WD 2>/dev/null; wait $WD 2>/dev/null
    return $RET
}

ready() {
    mount | grep -q " on ${NAS_MOUNT} " && _timeout "$STAT_TIMEOUT" stat "$SENTINEL" >/dev/null 2>&1
}

# Schnellpfad: schon bereit
if ready; then
    exit 0
fi

log "NAS nicht bereit — Guard startet Heilung (Budget ${MAX_WAIT}s)"
SECONDS=0
while [ "$SECONDS" -lt "$MAX_WAIT" ]; do
    [ -x "$AUTOMOUNT" ] && "$AUTOMOUNT" >/dev/null 2>&1
    if ready; then
        log "NAS bereit nach ${SECONDS}s"
        exit 0
    fi
    sleep "$POLL"
done

log "NAS nach ${MAX_WAIT}s NICHT bereit — Guard meldet Abbruch (rc 1)"
exit 1
