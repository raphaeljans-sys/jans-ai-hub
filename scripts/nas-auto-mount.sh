#!/bin/bash
# ============================================================================
# JANS AI Hub — NAS Auto-Mount (v2 — robust, multi-network)
# ============================================================================
# Haelt die Verbindung zum NAS in allen drei Szenarien aufrecht:
#
#   1. BUERO LAN    — 192.168.1.10  (direkt, schnellste Verbindung)
#   2. HEIMNETZ     — 100.92.246.28 (via Tailscale, da anderes Subnetz)
#   3. UNTERWEGS    — 100.92.246.28 (via Tailscale, egal wo)
#
# Tailscale-Erkennung: Prueft ob ein utun-Interface mit 100.x.x.x IP
# existiert — braucht KEINEN tailscale CLI-Befehl (Mac App Store Version).
#
# Wird alle 3 Minuten per LaunchAgent ausgefuehrt + bei Netzwerkwechsel.
# ============================================================================

set -o pipefail

# macOS hat kein 'timeout' — eigene Implementierung
_timeout() {
    local SECS="$1"; shift
    ("$@") &
    local PID=$!
    (sleep "$SECS" && kill -9 $PID 2>/dev/null) &
    local WATCHDOG=$!
    wait $PID 2>/dev/null
    local RET=$?
    kill $WATCHDOG 2>/dev/null
    wait $WATCHDOG 2>/dev/null
    return $RET
}

NAS_MOUNT="/Volumes/daten"
NAS_LAN_IP="192.168.1.10"
NAS_TAILSCALE_IP="100.92.246.28"
NAS_TAILSCALE_DNS="diskstation918.tail8265aa.ts.net"
SMB_SHARE="daten"
LOG_FILE="$HOME/Developer/jans-ai-hub/.git/nas-auto-mount.log"

# --- Logging ---
log() {
    local LEVEL="$1" MSG="$2"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$LEVEL] $MSG" >> "$LOG_FILE" 2>/dev/null
}

# Logfile begrenzen (max 500 Zeilen)
if [ -f "$LOG_FILE" ] && [ "$(wc -l < "$LOG_FILE" 2>/dev/null)" -gt 500 ]; then
    tail -200 "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"
fi

# -------------------------------------------
# 1. Bereits gemountet und funktional?
# -------------------------------------------
if mount | grep -q " on ${NAS_MOUNT} "; then
    # Pruefe ob Mount noch lebt (SMB kann haengen bleiben)
    if _timeout 5 ls "$NAS_MOUNT" > /dev/null 2>&1; then
        exit 0  # Alles OK
    else
        log "WARN" "Mount haengt — wird getrennt und neu verbunden"
        umount -f "$NAS_MOUNT" 2>/dev/null
        sleep 3
    fi
fi

# -------------------------------------------
# 2. Internet pruefen
# -------------------------------------------
if ! ping -c 1 -W 2 8.8.8.8 > /dev/null 2>&1; then
    log "INFO" "Kein Internet — uebersprungen"
    exit 0
fi

# -------------------------------------------
# 3. NAS-Erreichbarkeit pruefen (Prioritaet: LAN > Tailscale)
# -------------------------------------------
NAS_HOST=""
CONNECTION_TYPE=""

# 3a. Buero-LAN pruefen (schnellste Verbindung)
if ping -c 1 -W 1 "$NAS_LAN_IP" > /dev/null 2>&1; then
    # Sicherheitscheck: Tatsaechlich SMB erreichbar? (nicht nur Ping)
    if nc -z -w 2 "$NAS_LAN_IP" 445 2>/dev/null; then
        NAS_HOST="$NAS_LAN_IP"
        CONNECTION_TYPE="LAN"
    else
        log "WARN" "NAS LAN pingbar aber SMB-Port 445 nicht erreichbar"
    fi
fi

# 3b. Tailscale pruefen (Heimnetz + Unterwegs)
if [ -z "$NAS_HOST" ]; then
    # Tailscale-Erkennung: Pruefe ob ein Interface mit 100.x.x.x IP existiert
    # Funktioniert mit Mac App Store Version (kein CLI noetig)
    TAILSCALE_ACTIVE=$(ifconfig 2>/dev/null | grep "inet 100\." | grep -v "127\." | head -1)

    if [ -n "$TAILSCALE_ACTIVE" ]; then
        # Tailscale laeuft — pruefe NAS-Erreichbarkeit via Tailscale IP
        if ping -c 1 -W 3 "$NAS_TAILSCALE_IP" > /dev/null 2>&1; then
            # SMB-Port pruefen
            if nc -z -w 3 "$NAS_TAILSCALE_IP" 445 2>/dev/null; then
                NAS_HOST="$NAS_TAILSCALE_DNS"
                CONNECTION_TYPE="Tailscale"
            else
                log "WARN" "NAS Tailscale pingbar aber SMB-Port 445 nicht offen"
            fi
        else
            log "INFO" "Tailscale aktiv aber NAS nicht erreichbar (NAS offline?)"
            exit 0
        fi
    else
        log "INFO" "Kein Tailscale-Interface — NAS nicht erreichbar"
        exit 0
    fi
fi

# -------------------------------------------
# 4. SMB-Mount ausfuehren
# -------------------------------------------
if [ -z "$NAS_HOST" ]; then
    log "WARN" "Kein NAS-Host ermittelt — abbruch"
    exit 0
fi

log "INFO" "Mount wird versucht via $CONNECTION_TYPE ($NAS_HOST)"

# Mount-Punkt vorbereiten
if [ -d "$NAS_MOUNT" ] && [ ! -L "$NAS_MOUNT" ]; then
    # Verwaister Mount-Punkt: aufräumen
    rmdir "$NAS_MOUNT" 2>/dev/null || true
fi

# osascript-Mount nutzt Keychain-Credentials automatisch
MOUNT_RESULT=$(osascript -e "
try
    mount volume \"smb://${NAS_HOST}/${SMB_SHARE}\"
    return \"OK\"
on error errMsg
    return \"ERROR: \" & errMsg
end try
" 2>&1)

# -------------------------------------------
# 5. Verifizieren (warten bis Mount bereit)
# -------------------------------------------

# Pruefen ob osascript selbst einen Fehler gemeldet hat
if [[ "$MOUNT_RESULT" == ERROR:* ]]; then
    log "ERROR" "Mount-Befehl fehlgeschlagen via $CONNECTION_TYPE ($NAS_HOST): $MOUNT_RESULT"
    exit 1
fi

# Warten bis Mount bereit — Tailscale braucht laenger
WAIT_SECS=3
[ "$CONNECTION_TYPE" = "Tailscale" ] && WAIT_SECS=6
sleep "$WAIT_SECS"

if mount | grep -q " on ${NAS_MOUNT} " && _timeout 5 ls "$NAS_MOUNT" > /dev/null 2>&1; then
    log "OK" "NAS gemountet via $CONNECTION_TYPE ($NAS_HOST)"

    # Symlinks pruefen
    CLAUDE_DIR="$HOME/Developer/jans-ai-hub/.claude"
    BROKEN=false
    for DIR in skills agents commands; do
        if [ -L "$CLAUDE_DIR/$DIR" ] && [ ! -d "$CLAUDE_DIR/$DIR" ]; then
            BROKEN=true
            break
        fi
    done

    if [ "$BROKEN" = true ]; then
        log "WARN" "Kaputte Symlinks erkannt — Notification angezeigt"
        osascript -e "display notification \"NAS verbunden via ${CONNECTION_TYPE} — Symlinks pruefen\" with title \"JANS AI Hub\"" 2>/dev/null || true
    fi
else
    log "ERROR" "Mount-Verifizierung fehlgeschlagen via $CONNECTION_TYPE ($NAS_HOST) — Mount-Punkt nicht bereit nach ${WAIT_SECS}s"
fi
