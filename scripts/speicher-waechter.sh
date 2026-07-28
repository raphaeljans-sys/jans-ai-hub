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

# --- Verfuegbaren Speicher ermitteln (MB) ------------------------------------
# KORREKTUR 28.07.2026 12:57 (vollgas-chef-radar): die erste Fassung las `top`s
# Feld "unused" — derselbe Messfehler, der am selben Tag im Lauf-Gate behoben
# wurde (Rule 260728). macOS meldet unter "unused" nur voellig unberuehrtes RAM;
# auf einer warmgelaufenen Maschine ist das immer nahe null, weil freier Speicher
# als Cache gehalten wird. Folge hier: der Waechter warnte bei JEDEM Lauf, auf
# beiden Stationen, 24x taeglich — belegt 28.07. 07:33 bis 12:34 ("nur 72-305 MB
# frei") bei real 4402 MB (MacBook) bzw. 14233 MB (Mini) und normalem Druck.
# Damit war eine echte Speichernot von der Dauerwarnung nicht mehr zu
# unterscheiden, und die "OK"-Lebendzeile erschien nie.
# Nebenbei behoben: die alte Fassung haette einen Dezimalwert ("5.2G") in
# Ganzzahlarithmetik gegeben und waere dort abgestuerzt.
#
# Massgeblich ist der Speicher, den das System OHNE Auslagern herausgeben kann:
# free + inactive + purgeable (vm_stat). Identische Messung wie in lauf-gate.sh,
# damit Gate und Waechter nie wieder auseinanderlaufen. Die Schwelle (1500 MB)
# bleibt unveraendert — korrigiert ist die Messung, nicht die Politik.
frei_mb() {
    vm_stat 2>/dev/null | awk '
        /page size of/  { for (i=1;i<=NF;i++) if ($i ~ /^[0-9]+$/) { ps=$i; break } }
        /Pages free/      { f=$3+0 }
        /Pages inactive/  { i2=$3+0 }
        /Pages purgeable/ { p=$3+0 }
        END {
            if (ps=="" || ps==0) ps=4096
            printf "%d", (f+i2+p) * ps / 1048576
        }'
}

# --- Speicherdruck des Systems (1=normal, 2=warnend, 4=kritisch) -------------
# Zweites, unabhaengiges Kriterium: die Mengenmessung allein uebersieht eine
# Maschine, die zwar noch Seiten herausgeben kann, aber bereits swappt. Fehlt
# der sysctl, gilt "normal".
druck() {
    local d
    d=$(sysctl -n kern.memorystatus_vm_pressure_level 2>/dev/null)
    case "$d" in
        ''|*[!0-9]*) echo 1 ;;
        *)           echo "$d" ;;
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
DRUCK=$(druck)

# Schutz gegen eine kaputte Messung: statt stillschweigend "alles gut" oder
# "Dauerwarnung" wird der Fall benannt — genau daran ist die erste Fassung
# unbemerkt gescheitert.
case "$FREI" in
    ''|*[!0-9]*)
        log "WARNUNG: Speichermessung unbrauchbar (vm_stat lieferte '${FREI}') — Lauf ohne Befund."
        exit 0 ;;
esac

KNAPP=0
[ "$FREI" -lt "$FREI_MIN_MB" ] && KNAPP=1
[ "$DRUCK" -ge 2 ] && KNAPP=1

if [ "$KNAPP" -eq 1 ] && [ "$GEHANDELT" -eq 0 ]; then
    # Die drei groessten Verbraucher mitloggen, damit die Ursache belegt ist
    # und nicht beim naechsten Mal wieder erraten werden muss.
    TOP3=$(top -l 1 -o mem -n 3 -stats command,mem 2>/dev/null \
           | tail -3 | awk '{printf "%s=%s ", $1, $2}')
    log "WARNUNG: nur ${FREI} MB verfuegbar (Schwelle ${FREI_MIN_MB} MB), Druck ${DRUCK}. Groesste: ${TOP3}"
fi

# Still-by-default: bei unauffaelligem Lauf nur alle 24 h eine Lebendzeile,
# damit das Log nicht zulaeuft, der Waechter aber nachweisbar arbeitet.
if [ "$GEHANDELT" -eq 0 ] && [ "$KNAPP" -eq 0 ]; then
    LETZTE=$(tail -1 "$LOGFILE" 2>/dev/null | cut -c1-10)
    HEUTE=$(date '+%Y-%m-%d')
    [ "$LETZTE" != "$HEUTE" ] && log "OK — ${FREI} MB verfuegbar, Druck ${DRUCK}, OneDrive ${OD_GB} GB."
fi

exit 0
