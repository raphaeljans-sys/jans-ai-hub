#!/bin/bash
# ============================================================================
# JANS Stations-Status — gegenseitige Sichtbarkeit der Arbeitsstationen
# ============================================================================
# Jede Station schreibt ihren Live-Zustand auf das NAS; jede Station kann den
# Zustand der anderen lesen. Zweck: Doppelspurigkeiten vermeiden, wenn beide
# am gleichen Projekt arbeiten (z.B. Buero Mac Mini / zu Hause MacBook).
#
#   station-status.sh write          eigenen Status nach NAS schreiben
#   station-status.sh read [name]    Status der anderen Station(en) anzeigen
#
# Status-Inhalt: aktive Claude-Sessions (Projekt + letzte Aktivitaet),
# laufende Schwerlast-Prozesse (Render/Geo), juengste Projektordner-Aktivitaet
# (OneDrive AR-Bereiche), Git-Stand. Ablage: NAS station-status/<host>.md
# Der Mac Mini schreibt automatisch alle 10 Min (launchd: com.jans.station-status).
# ============================================================================
set -u
NAS="/Volumes/daten/jans-ai-hub"
DIR="$NAS/station-status"
HOST=$(hostname -s | tr '[:upper:]' '[:lower:]')
case "$HOST" in
  *mini*) ME="mac-mini" ;;
  *macbook*|*mbp*) ME="macbook-pro" ;;
  *) ME="$HOST" ;;
esac

[ -d "$NAS" ] || { echo "NAS nicht gemountet (/Volumes/daten)"; exit 2; }
mkdir -p "$DIR"

schreiben() {
  local f="$DIR/$ME.md"
  {
    echo "# Stations-Status: $ME"
    echo ""
    echo "Stand: $(date '+%d.%m.%Y %H:%M:%S')"
    echo ""
    echo "## Aktive Claude-Sessions (Transkript-Aktivitaet < 30 Min)"
    local found=0
    for d in "$HOME/.claude/projects"/*/; do
      [ -d "$d" ] || continue
      # juengstes JSONL im Projekt
      local neu
      neu=$(find "$d" -name "*.jsonl" -mmin -30 2>/dev/null | head -1)
      if [ -n "$neu" ]; then
        local proj
        proj=$(basename "$d" | sed 's/^-Users-[^-]*-//' | tr '-' '/')
        local zeit
        zeit=$(stat -f "%Sm" -t "%H:%M" "$neu" 2>/dev/null)
        echo "- $proj  (letzte Aktivitaet $zeit)"
        found=1
      fi
    done
    [ "$found" = 0 ] && echo "- keine"
    echo ""
    echo "## Laufende Arbeits-Prozesse"
    local procs
    procs=$(pgrep -fl "c4dpy|Commandline.*-render|geo-zh.mjs|geo-sz.mjs|volumen_generator|situationsmodell|soffice.*convert" 2>/dev/null | sed 's/^[0-9]* /- /' | cut -c1-120)
    [ -n "$procs" ] && echo "$procs" || echo "- keine"
    echo ""
    echo "## Projektordner-Aktivitaet (OneDrive, letzte 12 h)"
    local od="$HOME/Library/CloudStorage"
    local akt
    # geaenderte Dateien suchen und auf Bereich/Projektordner verdichten
    akt=$(find "$od"/OneDrive*/AR* -type f -mmin -720 -not -name ".DS_Store" 2>/dev/null \
          | sed "s|$od/[^/]*/||" | awk -F/ 'NF>=2 {print $1" / "$2}' | sort | uniq -c \
          | sort -rn | head -8 | sed 's/^ *\([0-9]*\) /\1 Datei(en): /')
    [ -n "$akt" ] && echo "$akt" | sed 's/^/- /' || echo "- keine"
    echo ""
    echo "## Hub-Git-Stand (NAS)"
    echo "- $(git -C "$NAS" log --oneline -1 2>/dev/null || echo 'nicht lesbar')"
  } > "$f.tmp" && mv "$f.tmp" "$f"
  echo "Status geschrieben: $f"
}

lesen() {
  local wer="${1:-}"
  local any=0
  for f in "$DIR"/*.md; do
    [ -f "$f" ] || continue
    local name
    name=$(basename "$f" .md)
    [ "$name" = "$ME" ] && continue                      # eigene Station ueberspringen
    [ -n "$wer" ] && [ "$name" != "$wer" ] && continue
    any=1
    local alter_min=$(( ( $(date +%s) - $(stat -f %m "$f") ) / 60 ))
    echo "============================================"
    echo "  $name  (Status vor $alter_min Min geschrieben)"
    [ "$alter_min" -gt 30 ] && echo "  ! HINWEIS: Status aelter als 30 Min — Station evtl. offline/im Ruhezustand"
    echo "============================================"
    cat "$f"
    echo ""
  done
  [ "$any" = 0 ] && echo "Kein Status der anderen Station gefunden ($DIR)."
}

case "${1:-}" in
  write) schreiben ;;
  read)  lesen "${2:-}" ;;
  *) echo "Verwendung: station-status.sh write | read [station]"; exit 1 ;;
esac
