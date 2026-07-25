#!/bin/bash
# ============================================================================
# JANS AI Hub — NAS Keepalive (Schicht 1: Verhindern)
# ============================================================================
# Haelt die SMB-Sitzung zu /Volumes/daten warm, damit macOS sie nicht im
# Leerlauf abbaut (idle-disconnect = Haupt-Stall-Ursache, belegt im
# nas-auto-mount.log: Mount "haengt" alle 15-20 Min bei gesundem Netz).
#
# Alle 60 s (LaunchAgent StartInterval 60):
#   - Mount vorhanden + Sentinel in < TIMEOUT lesbar  -> Sitzung ist warm, fertig.
#   - sonst (stale/haengt/fehlt) -> nas-auto-mount.sh EINMAL zum Heilen anstossen
#     (max. 60 s Erkennungslatenz statt bis zu 180 s beim 3-Min-Waechter).
#
# Bewusst minimal: kein eigener Remount-Code (DRY) — Heilung immer ueber
# nas-auto-mount.sh, das eine gemeinsame Lock haelt (kein Doppel-Remount).
#
# Laeuft NAS-unabhaengig von der lokalen SSD.  Angelegt 25.07.2026.
# ============================================================================

set -o pipefail

NAS_MOUNT="/Volumes/daten"
SENTINEL="$NAS_MOUNT/jans-ai-hub/.nas-sentinel"
AUTOMOUNT="$HOME/Developer/jans-ai-hub/scripts/nas-auto-mount.sh"
TIMEOUT=4
LOG_FILE="$HOME/Developer/jans-ai-hub/.git/nas-keepalive.log"

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $1" >> "$LOG_FILE" 2>/dev/null; }

# Logfile begrenzen
if [ -f "$LOG_FILE" ] && [ "$(wc -l < "$LOG_FILE" 2>/dev/null)" -gt 400 ]; then
    tail -150 "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"
fi

# macOS hat kein 'timeout' — eigene Implementierung
_timeout() {
    local SECS="$1"; shift
    ("$@") & local PID=$!
    (sleep "$SECS" && kill -9 $PID 2>/dev/null) & local WD=$!
    wait $PID 2>/dev/null; local RET=$?
    kill $WD 2>/dev/null; wait $WD 2>/dev/null
    return $RET
}

# Mount vorhanden UND Sentinel-Zugriff generiert echten SMB-Round-Trip?
if mount | grep -q " on ${NAS_MOUNT} " && _timeout "$TIMEOUT" stat "$SENTINEL" >/dev/null 2>&1; then
    # Sitzung ist warm — genau das war das Ziel. Kein Log im Normalfall (Rauschen).
    exit 0
fi

# Stall / stale / nicht gemountet erkannt -> sofort heilen lassen
log "STALL erkannt (Mount fehlt oder Sentinel > ${TIMEOUT}s) -> nas-auto-mount.sh"
if [ -x "$AUTOMOUNT" ]; then
    "$AUTOMOUNT"
else
    log "FEHLER: $AUTOMOUNT nicht ausfuehrbar"
fi
exit 0
