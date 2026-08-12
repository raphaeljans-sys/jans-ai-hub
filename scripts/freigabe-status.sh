#!/bin/bash
# ============================================================================
# JANS AI Hub — Freigabe-Status (wer wartet im Wartezimmer?)
# ============================================================================
# Meldet je Station, wie viele Sync-Tasks in sync-tasks/freigabe/<station>/
# auf Raphaels Einzelfreigabe warten — IMMER auch dann, wenn es null sind.
#
# Anlass 12.08.2026: Ein korrekt zurueckgehaltener Reparatur-Task lag 41 h in
# der Queue, waehrend die Wissens-Kette stillstand. Guard und Diagnose hatten
# fehlerfrei gearbeitet; niemand las das Wartezimmer. Seither gilt: der
# Freigabestand steht in JEDEM Tagesbriefing und in JEDEM Heartbeat, und ein
# Eintrag aelter als 24 h ist ein Befund, kein Hintergrundrauschen.
# Beleg: rules/betrieb-chronik.md 260812.
#
#   Nutzung:  bash scripts/freigabe-status.sh            # Menschenlesbar
#             bash scripts/freigabe-status.sh --kurz     # Eine Zeile (Briefing)
#
#   Exit 0 = nichts wartet, oder alles juenger als 24 h
#   Exit 1 = mindestens ein Eintrag ist aelter als 24 h  → melden
#   Exit 2 = NAS nicht erreichbar (Queue nicht pruefbar) → als UNBEKANNT melden,
#            niemals stillschweigend als "0" durchgehen lassen
# ============================================================================
set -uo pipefail

QUEUE="/Volumes/daten/jans-ai-hub/sync-tasks/freigabe"
STATIONEN="mac-mini macbook-pro"
KURZ=0
[ "${1:-}" = "--kurz" ] && KURZ=1

if [ ! -d "$QUEUE" ]; then
    echo "Freigaben: UNBEKANNT (NAS nicht gemountet — Queue nicht pruefbar)"
    exit 2
fi

NOW=$(date +%s)
GESAMT=0
ALT_GESAMT=0
DETAIL=""
KURZTEILE=""

for ST in $STATIONEN; do
    N=0
    ALT=0
    for F in "$QUEUE/$ST"/*; do
        # Der Glob bleibt unaufgeloest stehen, wenn das Verzeichnis leer ist.
        [ -e "$F" ] || continue
        case "$(basename "$F")" in .*) continue;; esac
        N=$((N + 1))
        # Alter ueber die mtime, nicht ueber das Frontmatter-Feld "erstellt":
        # die mtime ist plattformunabhaengig auslesbar, waehrend das ISO-Feld
        # mit Zeitzonen-Suffix auf BSD-date ein Parsing-Bastard ist.
        MTIME=$(stat -f %m "$F" 2>/dev/null || stat -c %Y "$F" 2>/dev/null || echo "$NOW")
        STD=$(( (NOW - MTIME) / 3600 ))
        MARK=""
        if [ "$STD" -ge 24 ]; then
            ALT=$((ALT + 1))
            MARK="  ⚠️ WARTET SEIT ${STD} h"
        fi
        DETAIL="${DETAIL}    - [$ST] $(basename "$F") (${STD} h)${MARK}"$'\n'
    done
    GESAMT=$((GESAMT + N))
    ALT_GESAMT=$((ALT_GESAMT + ALT))
    if [ "$ALT" -gt 0 ]; then
        KURZTEILE="${KURZTEILE}${ST}: ${N} (davon ${ALT} > 24 h) · "
    else
        KURZTEILE="${KURZTEILE}${ST}: ${N} · "
    fi
done

KURZTEILE="${KURZTEILE% · }"

if [ "$KURZ" -eq 1 ]; then
    if [ "$ALT_GESAMT" -gt 0 ]; then
        echo "Freigaben offen — ${KURZTEILE}  ⚠️ ${ALT_GESAMT} Eintrag/Eintraege aelter als 24 h"
    else
        echo "Freigaben offen — ${KURZTEILE}"
    fi
else
    echo "Freigabe-Queue (sync-tasks/freigabe/):"
    echo "  ${KURZTEILE}"
    [ -n "$DETAIL" ] && printf '%s' "$DETAIL"
    if [ "$ALT_GESAMT" -gt 0 ]; then
        echo "  → ${ALT_GESAMT} Eintrag/Eintraege warten laenger als 24 h."
        echo "    Inhalt ansehen: cat auf den Pfad oben (geht von jeder Station)."
        echo "    Freigeben:      bash scripts/sync-task-check.sh --freigeben <dateiname>"
        echo "                    bzw. /station-sync — beides wirkt NUR fuer die eigene"
        echo "                    Station; ein Task fuer die Gegenstation wird dort"
        echo "                    freigegeben, nicht hier."
        echo "    Claude gibt NIE selbst frei (Rule wege-und-vollmachten)."
    fi
fi

[ "$ALT_GESAMT" -gt 0 ] && exit 1
exit 0
