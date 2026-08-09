#!/bin/bash
# ============================================================================
# JANS AI Hub — Freigabe-Rueckkanal (Entscheid per Mailantwort)
# ============================================================================
# Auftrag Raphael 09.08.2026, Baustein 6 des Autonomie-Ausbaus.
#
# WOZU:
# Die Widerrufs-Queue meldet eine bevorstehende Aktion und wartet eine Frist ab.
# Bisher konnte Raphael nur widersprechen, indem er ein Script auf einer Station
# aufruft — genau das, was unterwegs nicht geht. Dieser Rueckkanal liest seine
# Mailantwort und setzt den Entscheid um. Damit genuegt eine Zeile vom Handy.
#
# ERKANNTE ANTWORTEN (irgendwo in Betreff oder Text, Gross-/Kleinschreibung egal):
#     STOP <id>     Vorgang nicht ausfuehren
#     NEIN <id>     dasselbe
#     JA <id>       sofort ausfuehren, ohne den Rest der Frist abzuwarten
#
# SICHERHEITSMODELL — bitte vor Aenderungen lesen:
#   1. Es werden AUSSCHLIESSLICH Mails ausgewertet, die im Postfach rj@ liegen und
#      deren Absender rj@raphaeljans.ch ist. Sie haben damit die SPF-/DKIM-Pruefung
#      des Tenants passiert.
#   2. Eine Kennung wirkt nur, wenn zu ihr ein OFFENER Vorgang existiert. Beliebige
#      Kennungen aus einer Mail loesen nichts aus.
#   3. STOP und NEIN sind unkritisch: sie koennen eine Aktion nur VERHINDERN.
#      Im schlimmsten Fall unterbleibt etwas, das haette laufen sollen.
#   4. JA ist die einzige ausloesende Richtung. Es verkuerzt nur eine Frist, die
#      ohnehin ablaufen wuerde — es kann nichts starten, was nicht bereits von
#      Claude angemeldet und von der Whitelist gedeckt war.
#   5. Zahlungen sind hier nicht erreichbar. Die Widerrufs-Queue weist sie schon
#      bei der Anmeldung ab (Aktions-Whitelist v2).
#   Wer diesen Rueckkanal erweitert, prueft zuerst, ob die neue Richtung nur
#   verhindern oder auch ausloesen kann. Ausloesende Wege brauchen Punkt 2.
#
# VERWENDUNG:
#     bash scripts/freigabe-inbox.sh              # Antworten auswerten
#     bash scripts/freigabe-inbox.sh --zeigen     # nur anzeigen, nichts tun
# ============================================================================

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
QUEUE_SCRIPT="$HUB/scripts/widerruf-queue.sh"
OFFEN="$HUB/logbuch/widerruf/offen"
LOGDIR="$HUB/logbuch/wege"
LOGFILE="$LOGDIR/freigabe-inbox.log"
ABSENDER="rj@raphaeljans.ch"
STUNDEN_ZURUECK=24

ZEIGEN=0
[ "${1:-}" = "--zeigen" ] && ZEIGEN=1

mkdir -p "$LOGDIR" 2>/dev/null
log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOGFILE" 2>/dev/null; }

# --- Zuerst pruefen, ob es ueberhaupt etwas zu entscheiden gibt --------------
# Das Durchsuchen aller Mailboxen ist der teuerste Schritt. Bei einem
# Fuenf-Minuten-Takt laeuft er sonst den ganzen Tag ins Leere, obwohl gar kein
# Vorgang offen ist.
OFFENE_IDS=""
for datei in "$OFFEN"/*.task; do
    [ -e "$datei" ] || continue
    OFFENE_IDS="$OFFENE_IDS $(basename "$datei" .task)"
done

if [ -z "$OFFENE_IDS" ]; then
    log "keine offenen Vorgaenge, Postfach nicht gelesen"
    echo "Keine offenen Vorgaenge."
    exit 0
fi

# --- Antworten aus Apple Mail holen ------------------------------------------
# Bewusst nur Betreff und die ersten Zeilen: der Entscheid steht oben, und der
# zitierte Originaltext darunter enthaelt dieselbe Kennung und wuerde jeden
# Vorgang endlos wieder treffen.
ANTWORTEN="$(osascript <<'OSA' 2>/dev/null
set ausgabe to ""
set grenze to (current date) - (24 * hours)
tell application id "com.apple.mail"
    repeat with acct in every account
        try
            repeat with mbx in every mailbox of acct
                try
                    set treffer to (every message of mbx whose date received > grenze)
                    repeat with m in treffer
                        try
                            set abs to (extract address from (sender of m))
                            if abs is "rj@raphaeljans.ch" then
                                set betr to subject of m
                                set inhalt to content of m
                                if (count of inhalt) > 400 then
                                    set inhalt to text 1 thru 400 of inhalt
                                end if
                                set ausgabe to ausgabe & betr & " || " & inhalt & linefeed & "---SATZ---" & linefeed
                            end if
                        end try
                    end repeat
                end try
            end repeat
        end try
    end repeat
end tell
return ausgabe
OSA
)"

if [ -z "$ANTWORTEN" ]; then
    log "keine Antworten von $ABSENDER in den letzten $STUNDEN_ZURUECK Stunden"
    echo "Keine Antworten gefunden."
    exit 0
fi

# --- Entscheide zuordnen ------------------------------------------------------
GEFUNDEN=0

for id in $OFFENE_IDS; do
    # Nur Zeilen betrachten, die diese Kennung tragen
    TREFFER="$(printf '%s' "$ANTWORTEN" | grep -i -- "$id" | head -3)"
    [ -n "$TREFFER" ] || continue

    ENTSCHEID=""
    if printf '%s' "$TREFFER" | grep -Eqi "(^|[^A-Za-z])(stop|nein)([^A-Za-z]|$).*$id|$id.*[^A-Za-z](stop|nein)([^A-Za-z]|$)"; then
        ENTSCHEID="stop"
    elif printf '%s' "$TREFFER" | grep -Eqi "(^|[^A-Za-z])ja([^A-Za-z]|$).*$id|$id.*[^A-Za-z]ja([^A-Za-z]|$)"; then
        ENTSCHEID="ja"
    fi

    [ -n "$ENTSCHEID" ] || continue
    GEFUNDEN=$((GEFUNDEN+1))

    WAS="$(grep '^was=' "$OFFEN/$id.task" 2>/dev/null | cut -d= -f2-)"

    if [ "$ZEIGEN" -eq 1 ]; then
        echo "  wuerde $ENTSCHEID: $id — $WAS"
        continue
    fi

    case "$ENTSCHEID" in
        stop)
            echo "  Veto: $id — $WAS"
            log "VETO per Mail: $id — $WAS"
            bash "$QUEUE_SCRIPT" --stop "$id" >/dev/null 2>&1
            ;;
        ja)
            echo "  Freigabe: $id — $WAS"
            log "FREIGABE per Mail: $id — $WAS"
            # Faelligkeit auf jetzt ziehen, danach die Queue regulaer laufen lassen.
            # So durchlaeuft der Vorgang dieselbe Ausfuehrungs- und Protokollstrecke
            # wie ein regulaer abgelaufener — kein zweiter Ausfuehrungspfad.
            TMP="$(mktemp)"
            sed "s/^faellig_ts=.*/faellig_ts=$(date +%s)/" "$OFFEN/$id.task" > "$TMP" \
                && mv "$TMP" "$OFFEN/$id.task"
            bash "$QUEUE_SCRIPT" --pruefen >/dev/null 2>&1
            ;;
    esac
done

if [ "$GEFUNDEN" -eq 0 ]; then
    echo "Antworten gelesen, aber kein Entscheid zu einem offenen Vorgang."
    log "Antworten ohne zuordenbaren Entscheid"
else
    echo "$GEFUNDEN Entscheid(e) umgesetzt."
fi
exit 0
