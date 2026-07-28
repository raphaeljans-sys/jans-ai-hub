#!/bin/bash
# ============================================================================
# JANS AI Hub — Speicher-Waechter (beide Stationen)
# ============================================================================
# Auftrag Raphael 28.07.2026 nach dem Speicher-Notstand vom 28.07.:
#   MacBook Pro: Dialog "Dein System hat keinen Programmspeicher mehr",
#                Claude aggregiert 20.24 GB bei 16 GB RAM, Neustart erzwungen.
#   Mac Mini:    108 MB freier Speicher bei 32 GB RAM, Swap 9.4/10.2 GB,
#                Compressor 17 GB. Ursache gemessen: OneDrive mit 33 GB
#                Footprint (Claude nur 1.3 GB). Nach OneDrive-Neustart:
#                15 GB frei, Compressor 1.6 GB.
#
# Dieser Waechter verhindert die Wiederholung. Er prueft periodisch:
#   1. OneDrive-Footprint  -> Neustart bei Ueberschreitung der Schwelle
#   2. Freier Speicher     -> Warnung + Eintrag ins Log
# Er beendet NIEMALS Claude-Prozesse und NIEMALS Benutzer-Anwendungen
# (ArchiCAD, InDesign) — dort koennte ungesicherte Arbeit verloren gehen.
# OneDrive ist der einzige Prozess, den er neu startet: ein Sync-Client
# vertraegt einen Neustart jederzeit (lokale Dateien bleiben unberuehrt,
# der Abgleich wird beim Start wieder aufgenommen).
#
# Aufruf: via launchd ch.jans.speicher-waechter (alle 30 Min)
# Log:    logbuch/speicher/<Station>.log auf dem NAS
# ============================================================================

set -uo pipefail

STATION="$(hostname -s)"
LOGDIR="/Volumes/daten/jans-ai-hub/logbuch/speicher"
LOGFILE="$LOGDIR/${STATION}.log"

# --- Schwellen ---------------------------------------------------------------
# OneDrive-Footprint in GB, ab dem neu gestartet wird.
ONEDRIVE_MAX_GB="${ONEDRIVE_MAX_GB:-8}"
# Freier Speicher in MB, unter dem gewarnt wird.
FREI_MIN_MB="${FREI_MIN_MB:-1500}"

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

# --- Freien Speicher ermitteln (MB) ------------------------------------------
frei_mb() {
    local unused
    unused=$(top -l 1 -n 0 2>/dev/null | awk '/PhysMem/ {
        for (i=1; i<=NF; i++) if ($i ~ /unused/) { print $(i-1); exit }
    }')
    case "$unused" in
        *G) echo $(( ${unused%G} * 1024 )) ;;
        *M) echo "${unused%M}" ;;
        *)  echo 99999 ;;
    esac
}

# --- OneDrive-Footprint in GB ------------------------------------------------
# top liefert MEM als "33G" oder "820M". Nur der Hauptprozess zaehlt.
onedrive_gb() {
    local mem
    mem=$(top -l 1 -o mem -n 30 -stats command,mem 2>/dev/null \
          | awk '$1=="OneDrive" {print $2; exit}')
    case "$mem" in
        *G) echo "${mem%G}" ;;
        *M) echo 0 ;;
        *)  echo 0 ;;
    esac
}

# --- OneDrive neu starten ----------------------------------------------------
onedrive_neustart() {
    local pid
    pid=$(pgrep -f "/Applications/OneDrive.app/Contents/MacOS/OneDrive" | head -1)
    [ -z "$pid" ] && { log "OneDrive laeuft nicht — kein Neustart noetig."; return 0; }

    # Erst regulaer beenden, damit OneDrive seinen Zustand sichern kann.
    osascript -e 'tell application "OneDrive" to quit' >/dev/null 2>&1
    sleep 8

    # OneDrive ignoriert das reguläre Beenden im Leck-Zustand regelmaessig
    # (belegt 28.07.2026) — dann hart beenden.
    if kill -0 "$pid" 2>/dev/null; then
        kill -9 "$pid" 2>/dev/null
        sleep 5
        log "OneDrive reagierte nicht auf quit — SIGKILL auf PID $pid."
    fi

    sleep 3
    open -a OneDrive >/dev/null 2>&1
    sleep 10

    if pgrep -f "/Applications/OneDrive.app/Contents/MacOS/OneDrive" >/dev/null 2>&1; then
        return 0
    else
        log "WARNUNG: OneDrive konnte nicht neu gestartet werden."
        return 1
    fi
}

# ============================================================================
# Hauptlauf
# ============================================================================
FREI_VORHER=$(frei_mb)
OD_GB=$(onedrive_gb)

GEHANDELT=0

if [ "${OD_GB%%.*}" -ge "$ONEDRIVE_MAX_GB" ] 2>/dev/null; then
    log "OneDrive-Footprint ${OD_GB} GB >= Schwelle ${ONEDRIVE_MAX_GB} GB — Neustart."
    if onedrive_neustart; then
        sleep 5
        FREI_NACHHER=$(frei_mb)
        log "OneDrive neu gestartet. Freier Speicher ${FREI_VORHER} MB -> ${FREI_NACHHER} MB."
        GEHANDELT=1
    fi
fi

FREI=$(frei_mb)
if [ "$FREI" -lt "$FREI_MIN_MB" ] && [ "$GEHANDELT" -eq 0 ]; then
    # Die drei groessten Verbraucher mitloggen, damit die Ursache belegt ist
    # und nicht beim naechsten Mal wieder erraten werden muss.
    TOP3=$(top -l 1 -o mem -n 3 -stats command,mem 2>/dev/null \
           | tail -3 | awk '{printf "%s=%s ", $1, $2}')
    log "WARNUNG: nur ${FREI} MB frei (Schwelle ${FREI_MIN_MB} MB). Groesste: ${TOP3}"
fi

# Still-by-default: bei unauffaelligem Lauf nur alle 24 h eine Lebendzeile,
# damit das Log nicht zulaeuft, der Waechter aber nachweisbar arbeitet.
if [ "$GEHANDELT" -eq 0 ] && [ "$FREI" -ge "$FREI_MIN_MB" ]; then
    LETZTE=$(tail -1 "$LOGFILE" 2>/dev/null | cut -c1-10)
    HEUTE=$(date '+%Y-%m-%d')
    [ "$LETZTE" != "$HEUTE" ] && log "OK — ${FREI} MB frei, OneDrive ${OD_GB} GB."
fi

exit 0
