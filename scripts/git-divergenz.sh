#!/bin/bash
# ============================================================================
# JANS AI Hub — Git-Divergenz zwischen NAS-Repo, Station und GitHub messen
# ============================================================================
# Zweck: EINE Zahl, die sagt, ob die Repos auseinanderlaufen. Reine Messung,
# schreibt nichts, aendert nichts.
#
# Anlass 24.08.2026 (Chronik 260824e/f): NAS und GitHub liefen sechs Stunden
# auseinander (26/51 Commits), ohne dass es jemand sah. Beide Sync-Waechter
# haben seither Merge-Rueckfall und Eskalation — sie heilen sich also selbst.
# Dieser Check ist das Fenster darauf: er beantwortet die Frage "laeuft der
# Abgleich?" auf Zuruf, statt sie erst beim naechsten Vorfall zu stellen.
#
# Exit: 0 = deckungsgleich · 1 = Divergenz oder Fehlversuche · 2 = nicht pruefbar
# ============================================================================
set -u
NAS_SSH="${JANS_NAS_SSH:-raphaeljans@diskstation918.tail8265aa.ts.net}"
SSD_REPO="$HOME/Developer/jans-ai-hub"
RC=0

echo "Git-Abgleich, Stand $(date '+%d.%m.%Y %H:%M')"

# --- NAS gegen GitHub (nativ per ssh, nie git ueber SMB) ---
NAS=$(ssh -o ConnectTimeout=8 -o BatchMode=yes "$NAS_SSH" '
cd /volume2/daten/jans-ai-hub 2>/dev/null || exit 2
git fetch -q github main 2>/dev/null
printf "%s %s %s" "$(git rev-list --count github/main..HEAD)" \
                  "$(git rev-list --count HEAD..github/main)" \
                  "$(cat sync-tasks/log/selfcommit-fehlversuche 2>/dev/null || echo 0)"
' 2>/dev/null)
if [ -z "$NAS" ]; then
    echo "  NAS -> GitHub      : NICHT PRUEFBAR (Synology per ssh nicht erreichbar)"
    RC=2
else
    set -- $NAS
    if [ "${1:-0}" = "0" ] && [ "${2:-0}" = "0" ]; then
        echo "  NAS -> GitHub      : deckungsgleich"
    else
        echo "  NAS -> GitHub      : DIVERGENZ ${1} Commits nur NAS / ${2} nur GitHub"
        RC=1
    fi
    [ "${3:-0}" != "0" ] && { echo "  NAS-Committer      : ${3} Fehlversuche in Folge"; RC=1; }
fi

# --- Diese Station gegen GitHub ---
if [ -d "$SSD_REPO/.git" ]; then
    git -C "$SSD_REPO" fetch -q 2>/dev/null
    V=$(git -C "$SSD_REPO" rev-list --count '@{u}..HEAD' 2>/dev/null || echo 0)
    Z=$(git -C "$SSD_REPO" rev-list --count 'HEAD..@{u}' 2>/dev/null || echo 0)
    F=$(cat "$SSD_REPO/.git/auto-sync-fehlversuche" 2>/dev/null || echo 0)
    OFFEN=$(git -C "$SSD_REPO" status --porcelain 2>/dev/null | wc -l | tr -d ' ')
    if [ "$V" = "0" ] && [ "$Z" = "0" ]; then
        echo "  Station -> GitHub  : deckungsgleich"
    else
        echo "  Station -> GitHub  : DIVERGENZ ${V} Commits nur lokal / ${Z} nur GitHub"
        RC=1
    fi
    [ "$F" != "0" ] && { echo "  Station-Auto-Sync  : ${F} Fehlversuche in Folge"; RC=1; }
    [ "$OFFEN" != "0" ] && echo "  Station            : ${OFFEN} ungesicherte Datei(en) im Arbeitsbaum (der Auto-Sync holt sie in <=5 Min)"
else
    echo "  Station -> GitHub  : kein SSD-Klon unter $SSD_REPO"
    RC=2
fi

[ "$RC" = "0" ] && echo "Ergebnis: in Ordnung." \
  || echo "Ergebnis: pruefen. Beide Waechter heilen sich selbst (Merge-Rueckfall); bleibt es stehen, melden sie ab dem dritten Fehlversuch im Fristen-Register. Hintergrund: rules/betrieb-chronik.md 260824e/f."
exit $RC
