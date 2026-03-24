#!/bin/bash
# ============================================================================
# JANS AI Hub — NAS Auto-Mount
# ============================================================================
# Prueft ob das NAS gemountet ist und mountet es automatisch.
# Erkennt automatisch ob wir im Buero (LAN) oder extern (Tailscale) sind.
#
# Wird alle 5 Minuten per LaunchAgent ausgefuehrt.
# ============================================================================

NAS_MOUNT="/Volumes/daten"
NAS_LAN_IP="192.168.1.10"
NAS_TAILSCALE="diskstation918.tail8265aa.ts.net"
SMB_SHARE="daten"
LOG_FILE="$HOME/Developer/jans-ai-hub/.git/nas-auto-mount.log"

# Logging
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$1] $2" >> "$LOG_FILE" 2>/dev/null
}

# Logfile-Groesse begrenzen (max 500 Zeilen)
if [ -f "$LOG_FILE" ] && [ "$(wc -l < "$LOG_FILE" 2>/dev/null)" -gt 500 ]; then
    tail -200 "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"
fi

# -------------------------------------------
# 1. Bereits gemountet?
# -------------------------------------------
if mount | grep -q "$NAS_MOUNT"; then
    # Pruefe ob Mount noch funktioniert (manchmal haengt SMB)
    if ls "$NAS_MOUNT" > /dev/null 2>&1; then
        exit 0  # Alles OK, nichts zu tun
    else
        log "WARN" "NAS gemountet aber nicht erreichbar — wird neu gemountet"
        umount -f "$NAS_MOUNT" 2>/dev/null
        sleep 2
    fi
fi

# -------------------------------------------
# 2. Internet-Verbindung pruefen
# -------------------------------------------
if ! ping -c 1 -W 2 8.8.8.8 > /dev/null 2>&1; then
    log "INFO" "Kein Internet — uebersprungen"
    exit 0
fi

# -------------------------------------------
# 3. NAS-Adresse bestimmen (LAN oder Tailscale)
# -------------------------------------------
NAS_HOST=""

# Zuerst LAN pruefen (schneller)
if ping -c 1 -W 1 "$NAS_LAN_IP" > /dev/null 2>&1; then
    NAS_HOST="$NAS_LAN_IP"
    log "INFO" "NAS im LAN erreichbar ($NAS_LAN_IP)"
else
    # Tailscale pruefen
    if command -v tailscale > /dev/null 2>&1; then
        TS_STATUS=$(tailscale status 2>/dev/null | head -1)
        if [ -n "$TS_STATUS" ]; then
            if ping -c 1 -W 3 "$NAS_TAILSCALE" > /dev/null 2>&1; then
                NAS_HOST="$NAS_TAILSCALE"
                log "INFO" "NAS ueber Tailscale erreichbar ($NAS_TAILSCALE)"
            else
                log "WARN" "Tailscale aktiv aber NAS nicht erreichbar"
                exit 0
            fi
        else
            log "INFO" "Tailscale nicht verbunden"
            exit 0
        fi
    else
        log "INFO" "Weder LAN noch Tailscale — NAS nicht erreichbar"
        exit 0
    fi
fi

# -------------------------------------------
# 4. SMB-Mount ausfuehren
# -------------------------------------------
if [ -z "$NAS_HOST" ]; then
    exit 0
fi

# Mount-Punkt erstellen falls noetig
if [ ! -d "$NAS_MOUNT" ]; then
    sudo mkdir -p "$NAS_MOUNT" 2>/dev/null || true
fi

# Keychain-Credentials verwenden (gespeichert beim ersten manuellen Mount)
# osascript oeffnet den Finder-basierten Mount der Keychain-Passwort nutzt
osascript -e "
try
    mount volume \"smb://${NAS_HOST}/${SMB_SHARE}\"
end try
" > /dev/null 2>&1

# Verifizieren
sleep 2
if mount | grep -q "$NAS_MOUNT" && ls "$NAS_MOUNT" > /dev/null 2>&1; then
    log "OK" "NAS erfolgreich gemountet via $NAS_HOST"

    # macOS Notification
    osascript -e "display notification \"NAS verbunden via ${NAS_HOST}\" with title \"JANS AI Hub\" subtitle \"Skill-Bibliothek verfuegbar\"" 2>/dev/null || true
else
    log "ERROR" "Mount fehlgeschlagen ($NAS_HOST)"
fi
