#!/bin/bash
# ============================================================================
# JANS AI Hub — VOLLGAS-SCHUB (befristeter Treiber, KEIN Daemon)
# ============================================================================
# Auftrag Raphael 29.08.2026: beide Stationen ausfahren, damit das Wochen-
# kontingent bis zum Reset am Montag 12:00 nicht ungenutzt verfaellt.
# Gemessen am 29.08. 12:57: 50.6 von 167 Mio teuer verbraucht bei 72 %
# verstrichener Woche — rund 116 Mio wuerden sonst verfallen.
#
# ABGRENZUNG ZUM AUSGEBAUTEN ENDLOS-RUNNER (stehender Entscheid 30.07.2026):
# Dieses Script ist KEIN launchd-Job und wird KEINER. Es laeuft als gewoehnlicher
# Hintergrundprozess, endet von selbst an einer harten Frist und laesst nichts
# zurueck, was einen Neustart ueberlebt. Die beiden *.disabled-260729-plists
# bleiben unangetastet. Wiederbelebung des Runners bleibt Raphaels Entscheid.
#
# AUFRUF:
#   VOLLGAS_BIN=<pfad-zur-claude-cli> nohup bash vollgas-schub.sh <lane> <deadline> &
#   <deadline> = "YYYY-MM-DD HH:MM" lokal
#
# STOPPEN (jederzeit, wirkt auf ALLE Lanes beider Stationen):
#   touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP-SCHUB
# ============================================================================
set -uo pipefail
export LANG="de_CH.UTF-8" LC_ALL="de_CH.UTF-8"

# Headless-Anmeldung laden. PFLICHT, nicht optional (Befund 29.08.2026, 20:15):
# auf beiden Buero-Stationen ist die SCHLUESSELBUND-Sitzung abgelaufen, der
# CLAUDE_CODE_OAUTH_TOKEN in dieser Datei dagegen GUELTIG. Ohne das Einlesen
# scheitert jeder Lauf mit «OAuth session expired and could not be refreshed»,
# mit dem Einlesen antwortet dieselbe CLI mit rc=0. claude-run.sh liest die
# Datei NICHT selbst (anders als dispatch-run.sh) — es muss hier geschehen.
if [ -f "$HOME/.jans-dispatch.env" ]; then
    set -a; . "$HOME/.jans-dispatch.env"; set +a
fi

LANE="${1:?lane fehlt}"
DEADLINE_TXT="${2:?deadline fehlt (YYYY-MM-DD HH:MM)}"

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
STOP="$HUB/logbuch/vollgas/STOP-SCHUB"
PROMPT_F="$HUB/logbuch/vollgas/schub/${LANE}.prompt"
GATE="$HUB/scripts/lauf-gate.sh"
LOG="$HUB/logbuch/vollgas/schub/${LANE}.log"
STATION="$(hostname -s)"

DEADLINE=$(date -j -f "%Y-%m-%d %H:%M" "$DEADLINE_TXT" "+%s" 2>/dev/null) || {
    echo "schub: Frist unlesbar: $DEADLINE_TXT" >&2; exit 2; }

[ -f "$PROMPT_F" ] || { echo "schub: Prompt fehlt: $PROMPT_F" >&2; exit 2; }

# Die CLI wird EXPLIZIT uebergeben. Grund: auf dem MacBook Pro zeigt
# /opt/homebrew/bin/claude seit 29.08. auf die gewedgte Fassung 2.1.236
# (--version kehrt nicht zurueck) — ein Lauf ueber PATH wuerde dort still
# haengen statt zu arbeiten. Der Mac Mini hat eine gesunde npm-Installation.
export CLAUDE_BIN="${VOLLGAS_BIN:-claude}"

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION/$LANE] $*" >> "$LOG"; }

log "SCHUB START — Frist $DEADLINE_TXT, CLI $CLAUDE_BIN"
RUNDE=0
BLIND=0
while :; do
    if [ -f "$STOP" ]; then log "STOP-Datei gesetzt — beende."; break; fi
    JETZT=$(date +%s)
    if [ "$JETZT" -ge "$DEADLINE" ]; then log "Frist erreicht — beende."; break; fi

    if ! bash "$GATE" "schub-$LANE" >/dev/null 2>&1; then
        # Gate weist ab (Laufplaetze belegt oder Speicher knapp). Das ist der
        # Normalfall bei mehreren Lanes und KEIN Fehler — kurz warten, neu fragen.
        sleep 90
        continue
    fi

    RUNDE=$((RUNDE+1))
    log "Runde $RUNDE — starte Lauf."
    START=$(date +%s)
    OUT="$(bash "$HUB/scripts/claude-run.sh" \
             --name "schub-$LANE" --budget 15 --perm acceptEdits \
             -- "$(cat "$PROMPT_F")" 2>>"$LOG")"
    RC=$?
    DAUER=$(( $(date +%s) - START ))
    log "Runde $RUNDE beendet — rc=$RC, ${DAUER}s, ${#OUT} Zeichen Ergebnis."
    log "  ${OUT: -400}"

    # Limit-Erkennung: laeuft das Kontingent leer, hat weiteres Feuern keinen
    # Sinn (Rule: Fehlversuche gegen ein leeres Fenster sind Verschwendung).
    case "$OUT" in
        *"usage limit"*|*"Usage limit"*|*"rate limit"*|*"weekly limit"*)
            log "KONTINGENT ERSCHOEPFT laut Ergebnis — Lane beendet sich."
            break ;;
    esac

    # Ein Lauf, der in unter 25 s ohne Ergebnis zurueckkommt, ist ein Blindgaenger.
    # Drei in Folge -> Lane beendet sich, statt das Fenster leer zu verbrennen.
    if [ "$DAUER" -lt 25 ] && [ "${#OUT}" -lt 80 ]; then
        BLIND=$((BLIND+1))
        log "  Blindgaenger $BLIND/3."
        if [ "$BLIND" -ge 3 ]; then log "Drei Blindgaenger — Lane beendet sich."; break; fi
    else
        BLIND=0
    fi

    sleep 20
done
log "SCHUB ENDE nach $RUNDE Runden."
