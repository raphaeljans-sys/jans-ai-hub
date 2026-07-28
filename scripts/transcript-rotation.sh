#!/bin/bash
# ============================================================================
# JANS AI Hub — Transcript-Rotation
# ============================================================================
# Auftrag Raphael 28.07.2026 nach dem Speicher-Notstand.
#
# Claude-Code-Session-Transcripts (~/.claude/projects/**/*.jsonl) werden nie
# aufgeraeumt. Stand 28.07.2026 auf dem MacBook Pro: 5'703 Dateien, 4.3 GB in
# EINEM Projektordner — darunter einzelne Agent-Sessions mit 29 MB.
#
# Dieses Script archiviert Transcripts aelter als ALTER_TAGE verlustfrei
# (tar+gzip, ~80 % Ersparnis) und entfernt die Originale ERST, nachdem die
# Vollstaendigkeit des Archivs geprueft wurde.
#
# NICHT geloescht wird etwas ohne Archiv. Bei jeder Unstimmigkeit bricht das
# Script ab und laesst die Originale unangetastet.
#
# Aufruf: via launchd ch.jans.transcript-rotation (woechentlich, So 04:00)
# Archiv: ~/.claude/transcript-archiv/transcripts-bis-YYMMDD.tar.gz
# Log:    logbuch/speicher/transcripts-<Station>.log auf dem NAS
# ============================================================================

set -uo pipefail

ALTER_TAGE="${ALTER_TAGE:-14}"
STATION="$(hostname -s)"
ARCH="$HOME/.claude/transcript-archiv"
LOGDIR="/Volumes/daten/jans-ai-hub/logbuch/speicher"
LOGFILE="$LOGDIR/transcripts-${STATION}.log"

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

PROJDIR="$HOME/.claude/projects"
[ -d "$PROJDIR" ] || { log "Kein Projektverzeichnis — nichts zu tun."; exit 0; }

mkdir -p "$ARCH" 2>/dev/null
STAMP=$(date '+%y%m%d')
CUTOFF=$(date -v-${ALTER_TAGE}d '+%Y-%m-%d')
LISTE="/tmp/jans-transcript-rotation.$$.list0"

cd "$PROJDIR" || exit 1

find . -name "*.jsonl" ! -newermt "$CUTOFF" -print0 2>/dev/null > "$LISTE"
N=$(tr -dc '\0' < "$LISTE" | wc -c | tr -d ' ')

if [ "$N" -eq 0 ]; then
    rm -f "$LISTE"
    # Still-by-default: nur alle 30 Tage eine Lebendzeile.
    LETZTE=$(tail -1 "$LOGFILE" 2>/dev/null | cut -c1-7)
    [ "$LETZTE" != "$(date '+%Y-%m')" ] && log "OK — nichts aelter als ${ALTER_TAGE} Tage."
    exit 0
fi

VORHER=$(du -sm "$PROJDIR" 2>/dev/null | awk '{print $1}')
ZIEL="$ARCH/transcripts-bis-${STAMP}.tar.gz"

# Bereits existierendes Archiv desselben Tages nicht ueberschreiben.
[ -f "$ZIEL" ] && ZIEL="$ARCH/transcripts-bis-${STAMP}-$(date '+%H%M').tar.gz"

if ! tar czf "$ZIEL" --null -T "$LISTE" 2>/dev/null; then
    log "FEHLER: Archivierung fehlgeschlagen — Originale bleiben unangetastet."
    rm -f "$LISTE" "$ZIEL"
    exit 1
fi

# Vollstaendigkeit pruefen, BEVOR geloescht wird. Ohne diesen Abgleich
# koennte ein abgebrochener tar-Lauf zu Datenverlust fuehren.
IM_ARCHIV=$(tar tzf "$ZIEL" 2>/dev/null | wc -l | tr -d ' ')
if [ "$IM_ARCHIV" -ne "$N" ]; then
    log "ABBRUCH: Archiv unvollstaendig (${IM_ARCHIV}/${N}) — nichts geloescht."
    rm -f "$LISTE"
    exit 1
fi

xargs -0 rm -f < "$LISTE"
find . -type d -empty -delete 2>/dev/null
rm -f "$LISTE"

NACHHER=$(du -sm "$PROJDIR" 2>/dev/null | awk '{print $1}')
ARCHGROESSE=$(du -sm "$ZIEL" 2>/dev/null | awk '{print $1}')
log "Rotation: ${N} Dateien archiviert (${ARCHGROESSE} MB). Projektordner ${VORHER} MB -> ${NACHHER} MB."

exit 0
