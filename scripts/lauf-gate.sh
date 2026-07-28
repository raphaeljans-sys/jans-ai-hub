#!/bin/bash
# ============================================================================
# JANS AI Hub — Lauf-Gate (zentraler Prozess-Deckel)
# ============================================================================
# Auftrag Raphael 28.07.2026 nach dem Speicher-Notstand.
#
# DAS PROBLEM, das dieses Script loest:
# Der Hub hat MEHRERE unabhaengige Feuermechanismen, die nichts voneinander
# wissen (Inventar 28.07.2026):
#   MacBook Pro: Claude Scheduled Tasks (29) · vollgas-supervisor/-runner ·
#                com.jans.aihub.runner (alle 15 Min) · ch.jans.synctask-runner
#                (alle 30 Min) · ch.jans.wissens-trigger · claude-autoupdate
#   Mac Mini:    Claude Scheduled Tasks (7) · ch.jans.nachtschicht (15x taeglich)
#                · ch.jans.training-energie · vollgas-supervisor ·
#                synctask-runner · wissens-trigger
# Keiner davon zaehlt, wie viele Laeufe bereits aktiv sind. Belegt: am 28.07.
# feuerten um 00:30 und um 22:30 je ZWEI Laeufe gleichzeitig, weil nachtschicht
# und ein training-Job denselben Zeitpunkt trafen — der Lock der Nachtschicht
# schuetzt sie nur gegen sich selbst, nicht gegen fremde Mechanismen.
#
# DIESES GATE ist die fehlende gemeinsame Instanz. Jeder Mechanismus fragt es
# VOR dem Start, ob er starten darf.
#
# VERWENDUNG in jedem Feuermechanismus, direkt vor dem `claude`-Aufruf:
#     GATE="$HOME/Developer/jans-ai-hub/scripts/lauf-gate.sh"
#     [ -f "$GATE" ] || GATE="/Volumes/daten/jans-ai-hub/scripts/lauf-gate.sh"
#     bash "$GATE" "<name-des-laufs>" || exit 0
#
# Exit 0 = darf starten. Exit 1 = zurueckstehen (der Aufrufer beendet sich
# still und versucht es beim naechsten Takt wieder — kein Fehler, kein Retry).
# ============================================================================

set -uo pipefail

NAME="${1:-unbenannt}"
STATION="$(hostname -s)"
LOGDIR="/Volumes/daten/jans-ai-hub/logbuch/speicher"
LOGFILE="$LOGDIR/gate-${STATION}.log"

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

# --- Obergrenzen je Station --------------------------------------------------
# Bemessung: ein headless `claude -p`-Lauf mit grossem Kontext belegt erfahrungs-
# gemaess 1.5-3 GB (Transcripts der Nacht 27./28.07.: einzelne Agent-Sessions
# mit 29/18/14 MB JSONL, im Heap ein Vielfaches davon). Dazu die Grundlast der
# Claude-Desktop-App. Konservativ gerechnet, damit der Speicher NIE knapp wird.
case "$STATION" in
    Macbookpro) MAX_LAEUFE="${MAX_LAEUFE:-2}"; MIN_FREI_MB="${MIN_FREI_MB:-3000}" ;;
    Macmini)    MAX_LAEUFE="${MAX_LAEUFE:-3}"; MIN_FREI_MB="${MIN_FREI_MB:-4000}" ;;
    *)          MAX_LAEUFE="${MAX_LAEUFE:-2}"; MIN_FREI_MB="${MIN_FREI_MB:-3000}" ;;
esac

# --- Laufende headless Laeufe zaehlen ----------------------------------------
# Nur `claude -p` / `claude --print` (die automatisierten Laeufe). Die
# interaktive Claude-Desktop-App und ihre Helper werden NICHT gezaehlt —
# sie ist Raphaels Arbeitswerkzeug und darf nie durch das Gate blockiert werden.
laufende() {
    pgrep -f "claude (-p|--print)" 2>/dev/null | wc -l | tr -d ' '
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

# ============================================================================
# Entscheidung
# ============================================================================
AKTIV=$(laufende)
FREI=$(frei_mb)

if [ "$AKTIV" -ge "$MAX_LAEUFE" ]; then
    log "ABGEWIESEN $NAME — bereits $AKTIV Laeufe aktiv (Grenze $MAX_LAEUFE)."
    exit 1
fi

if [ "$FREI" -lt "$MIN_FREI_MB" ]; then
    log "ABGEWIESEN $NAME — nur ${FREI} MB frei (Mindestwert ${MIN_FREI_MB} MB)."
    exit 1
fi

# Freigabe wird nur protokolliert, wenn es eng war — sonst laeuft das Log zu.
if [ "$AKTIV" -gt 0 ] || [ "$FREI" -lt $(( MIN_FREI_MB * 2 )) ]; then
    log "FREIGABE $NAME — $AKTIV/$MAX_LAEUFE Laeufe, ${FREI} MB frei."
fi

exit 0
