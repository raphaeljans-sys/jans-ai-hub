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
# ARCHIVORT (Entscheid Raphael 14.08.2026): das NAS, NICHT der lokale Mac und
# NICHT das Hub-Repo. Das Repo wird nach GitHub gepusht — 1.8 GB Binaerarchive
# waeren dort unumkehrbar (Git behaelt jede Version), und Transcripts enthalten
# Mailinhalte, Kundennamen und Projektinterna, die in kein GitHub-Backup
# gehoeren. Deshalb ein NAS-Ordner AUSSERHALB von jans-ai-hub/.
#
# Ist das NAS nicht gemountet (mobile Station), archiviert das Script lokal
# weiter und schiebt den Rueckstand beim naechsten Lauf mit Mount aufs NAS
# nach. Die Rotation darf nie daran scheitern, dass gerade kein NAS da ist.
#
# VERFALL (Entscheid Raphael 14.08.2026): Archive aelter als VERFALL_TAGE
# werden geloescht — der Wissenswert der Sessions liegt bereits destilliert in
# logbuch/konversationen/ (412 kB gegen 1.8 GB Rohdaten) und bleibt unbefristet.
# Das juengste Archiv wird NIE geloescht, auch wenn es die Frist reisst.
#
# Aufruf: via launchd ch.jans.transcript-rotation (woechentlich, So 04:00)
# Archiv: /Volumes/daten/06_Claude_Archiv/transcripts/<Station>/transcripts-bis-YYMMDD.tar.gz
#         Rueckfall lokal: ~/.claude/transcript-archiv/
# Log:    logbuch/speicher/transcripts-<Station>.log auf dem NAS
# ============================================================================

set -uo pipefail

ALTER_TAGE="${ALTER_TAGE:-14}"
VERFALL_TAGE="${VERFALL_TAGE:-180}"
STATION="$(hostname -s)"
ARCH_LOKAL="$HOME/.claude/transcript-archiv"
ARCH_NAS="/Volumes/daten/06_Claude_Archiv/transcripts/${STATION}"
LOGDIR="/Volumes/daten/jans-ai-hub/logbuch/speicher"
LOGFILE="$LOGDIR/transcripts-${STATION}.log"

# Zielordner waehlen: NAS wenn erreichbar UND beschreibbar, sonst lokal.
if mkdir -p "$ARCH_NAS" 2>/dev/null && [ -w "$ARCH_NAS" ]; then
    ARCH="$ARCH_NAS"
    NAS_DA=1
else
    ARCH="$ARCH_LOKAL"
    NAS_DA=0
fi

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

# --- Verfall: Archive aelter als VERFALL_TAGE entfernen ----------------------
# Laeuft bei JEDEM Lauf, auch wenn nichts zu archivieren war — sonst verfaellt
# in ruhigen Wochen nie etwas. Das juengste Archiv bleibt IMMER stehen, damit
# nie ein Zustand ganz ohne Sicherung entsteht.
verfall_pruefen() {
    [ -d "$ARCH" ] || return 0
    local gesamt juengstes
    gesamt=$(ls -1 "$ARCH"/transcripts-bis-*.tar.gz 2>/dev/null | wc -l | tr -d ' ')
    [ "$gesamt" -le 1 ] && return 0
    juengstes=$(ls -t "$ARCH"/transcripts-bis-*.tar.gz 2>/dev/null | head -1)

    local n=0 mb=0
    while IFS= read -r f; do
        [ -n "$f" ] || continue
        [ "$f" = "$juengstes" ] && continue
        mb=$((mb + $(du -sm "$f" 2>/dev/null | awk '{print $1}')))
        rm -f "$f" && n=$((n + 1))
    done < <(find "$ARCH" -maxdepth 1 -name "transcripts-bis-*.tar.gz" -mtime +${VERFALL_TAGE} 2>/dev/null)

    [ "$n" -gt 0 ] && log "Verfall: ${n} Archiv(e) aelter als ${VERFALL_TAGE} Tage entfernt (${mb} MB)."
    return 0
}

# --- Nachschub: liegengebliebene lokale Archive aufs NAS holen ---------------
# Heilt den Fall "unterwegs ohne Mount archiviert". Verschoben wird nur, was
# auf dem NAS noch nicht liegt; bei Namensgleichheit bleibt die lokale Datei
# stehen und wird beim naechsten Lauf erneut angeboten (nie stillschweigend
# ueberschreiben).
if [ "$NAS_DA" -eq 1 ] && [ -d "$ARCH_LOKAL" ]; then
    VERSCHOBEN=0
    for f in "$ARCH_LOKAL"/transcripts-bis-*.tar.gz; do
        [ -e "$f" ] || continue
        if [ -e "$ARCH_NAS/$(basename "$f")" ]; then
            log "Nachschub: $(basename "$f") liegt bereits auf dem NAS — lokal belassen."
            continue
        fi
        mv "$f" "$ARCH_NAS"/ 2>/dev/null && VERSCHOBEN=$((VERSCHOBEN + 1))
    done
    [ "$VERSCHOBEN" -gt 0 ] && log "Nachschub: ${VERSCHOBEN} lokale(s) Archiv(e) aufs NAS verschoben."
    rmdir "$ARCH_LOKAL" 2>/dev/null   # entfernt sich nur, wenn wirklich leer
fi

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
    verfall_pruefen
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
[ "$NAS_DA" -eq 1 ] && ORT="NAS" || ORT="lokal (NAS nicht gemountet)"
log "Rotation: ${N} Dateien archiviert (${ARCHGROESSE} MB, ${ORT}). Projektordner ${VORHER} MB -> ${NACHHER} MB."

verfall_pruefen

exit 0
