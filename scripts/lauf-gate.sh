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

# --- Verfuegbaren Speicher ermitteln (MB) ------------------------------------
# KORREKTUR 28.07.2026 (vollgas-chef-radar): die erste Fassung las `top`s Feld
# "unused" und wies damit AUSNAHMSLOS jeden Lauf ab. macOS meldet unter "unused"
# nur voellig unberuehrtes RAM; auf einer warmgelaufenen Maschine ist das immer
# nahe null, weil das System freien Speicher als Cache haelt. Gemessen am
# 28.07. 09:5x: MacBook "104M unused" bei real 4402 MB verfuegbar, Mac Mini
# "253M unused" bei real 14233 MB — beide Stationen haetten die Schwelle
# (3000/4000 MB) nie erreicht. Belegt im Gate-Log: der Einrichtungstest um
# 07:34 wurde mit "nur 79 MB frei" bereits selbst abgewiesen.
#
# Massgeblich ist der Speicher, den das System OHNE Auslagern herausgeben kann:
# free + inactive + purgeable (vm_stat). Die Schwellen oben bleiben unveraendert
# — korrigiert wird nur die Messung, nicht die Politik.
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
# der sysctl, gilt "normal" — das Gate soll nie an einer fehlenden Kennzahl
# haengenbleiben.
druck() {
    local d
    d=$(sysctl -n kern.memorystatus_vm_pressure_level 2>/dev/null)
    case "$d" in
        ''|*[!0-9]*) echo 1 ;;
        *)           echo "$d" ;;
    esac
}

# ============================================================================
# Entscheidung
# ============================================================================
AKTIV=$(laufende)
FREI=$(frei_mb)
DRUCK=$(druck)

# --- Nur-Messung (read-only) -------------------------------------------------
# `bash lauf-gate.sh --messung` gibt genau die Kennzahlen aus, die das Gate
# SELBST liest, entscheidet nichts und protokolliert nichts.
# Grund (vollgas-chef-radar 29.07.2026): der Seitengroessen-Fehler — hart
# kodierte 4096 Byte statt der auf Apple Silicon tatsaechlichen 16384 — ist mir
# am 28.07. UND am 29.07. unterlaufen, beide Male weil ich die Messung fuer eine
# Nachkontrolle des Gates selbst nachgebaut habe. Beide Male ergab er rund ein
# Viertel des wahren Werts und liess das Gate faelschlich defekt aussehen. Die
# Lehre stand nach dem ersten Mal als Notiz im RADAR und hat die Wiederholung
# nicht verhindert. Eine Notiz ist kein Schutz — ein Werkzeug schon.
if [ "$NAME" = "--messung" ]; then
    printf 'Station:        %s\n' "$STATION"
    printf 'Laeufe aktiv:   %s (Grenze %s)\n' "$AKTIV" "$MAX_LAEUFE"
    printf 'Verfuegbar:     %s MB (Mindestwert %s MB)\n' "$FREI" "$MIN_FREI_MB"
    printf 'Speicherdruck:  %s (1=normal, 2=warnend, 4=kritisch)\n' "$DRUCK"
    exit 0
fi

# Schutz gegen eine kaputte Messung: liefert frei_mb nichts Zaehlbares, wird
# NICHT stillschweigend durchgewunken und auch nicht alles blockiert — der Fall
# wird sichtbar protokolliert und der Lauf zurueckgestellt.
case "$FREI" in
    ''|*[!0-9]*)
        log "ABGEWIESEN $NAME — Speichermessung unbrauchbar (vm_stat lieferte '${FREI}')."
        exit 1 ;;
esac

if [ "$AKTIV" -ge "$MAX_LAEUFE" ]; then
    log "ABGEWIESEN $NAME — bereits $AKTIV Laeufe aktiv (Grenze $MAX_LAEUFE)."
    exit 1
fi

if [ "$FREI" -lt "$MIN_FREI_MB" ]; then
    log "ABGEWIESEN $NAME — nur ${FREI} MB verfuegbar (Mindestwert ${MIN_FREI_MB} MB)."
    exit 1
fi

if [ "$DRUCK" -ge 2 ]; then
    log "ABGEWIESEN $NAME — Speicherdruck $DRUCK (2=warnend, 4=kritisch), ${FREI} MB verfuegbar."
    exit 1
fi

# Freigabe wird nur protokolliert, wenn es eng war — sonst laeuft das Log zu.
if [ "$AKTIV" -gt 0 ] || [ "$FREI" -lt $(( MIN_FREI_MB * 2 )) ]; then
    log "FREIGABE $NAME — $AKTIV/$MAX_LAEUFE Laeufe, ${FREI} MB verfuegbar, Druck $DRUCK."
fi

exit 0
