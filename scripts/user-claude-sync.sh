#!/bin/bash
# user-claude-sync.sh — verteilt die User-Level-CLAUDE.md auf die Stationen.
#
# Zweck: ~/.claude/CLAUDE.md traegt die JANS-Grundregeln in JEDE Claude-Session, auch
# ausserhalb des Hub-Repos und auch ohne NAS-Mount. Darum eine echte KOPIE, kein Symlink.
#
# Aufruf:
#   bash scripts/user-claude-sync.sh            # lokale Station abgleichen
#   bash scripts/user-claude-sync.sh --check    # nur pruefen (Exit 1 bei Drift)
#   bash scripts/user-claude-sync.sh --alle     # lokal + Mac Mini via ssh
#
# Kanonische Quelle: templates/user-level/CLAUDE.md auf dem NAS (Rule sync-kanonische-quelle).
set -uo pipefail

SRC="/Volumes/daten/jans-ai-hub/templates/user-level/CLAUDE.md"
DST="$HOME/.claude/CLAUDE.md"
MINI="raphaeljans@100.120.219.12"

MODE="${1:-sync}"

if [ ! -f "$SRC" ]; then
    echo "FEHLER: Quelle nicht erreichbar: $SRC"
    echo "        NAS mounten: open smb://diskstation918.tail8265aa.ts.net/daten"
    exit 2
fi

sync_local() {
    mkdir -p "$(dirname "$DST")"
    if [ -f "$DST" ] && [ "$(md5 -q "$SRC")" = "$(md5 -q "$DST")" ]; then
        echo "OK      lokal: $DST ist aktuell"
        return 0
    fi
    if [ -f "$DST" ]; then
        cp "$DST" "$DST.bak-$(date +%y%m%d-%H%M%S)"
        echo "        vorherige Fassung gesichert als $DST.bak-*"
    fi
    cp "$SRC" "$DST"
    echo "GESETZT lokal: $DST ($(wc -c < "$DST" | tr -d ' ') Bytes)"
}

check_local() {
    if [ ! -f "$DST" ]; then
        echo "DRIFT   lokal: $DST fehlt"
        return 1
    fi
    if [ "$(md5 -q "$SRC")" = "$(md5 -q "$DST")" ]; then
        echo "OK      lokal: aktuell"
        return 0
    fi
    echo "DRIFT   lokal: $DST weicht von der Quelle ab"
    return 1
}

sync_mini() {
    # Der Mini hat denselben NAS-Mount, darum dort dasselbe Script fahren.
    if ! ssh -o ConnectTimeout=8 -o BatchMode=yes "$MINI" true 2>/dev/null; then
        echo "UEBERSPRUNGEN Mac Mini: nicht erreichbar ($MINI)"
        return 0
    fi
    ssh "$MINI" "bash /Volumes/daten/jans-ai-hub/scripts/user-claude-sync.sh" 2>&1 \
        | sed 's/^/  mini: /'
}

case "$MODE" in
    --check) check_local; exit $? ;;
    --alle)  sync_local; sync_mini ;;
    *)       sync_local ;;
esac
