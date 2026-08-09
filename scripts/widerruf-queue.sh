#!/bin/bash
# ============================================================================
# JANS AI Hub — Widerrufs-Queue (Aussenwirkung ohne Vorab-Freigabe)
# ============================================================================
# Auftrag Raphael 09.08.2026, Aktions-Whitelist v2 (A7 bis A9).
#
# DIE IDEE:
# Bisher galt: was nach aussen geht, wird VORHER freigegeben. Das setzt voraus,
# dass Raphael erreichbar ist — genau die Bedingung, die bei Routine-Laeufen
# nachts oder unterwegs nicht erfuellt ist. Ergebnis war, dass fertige Arbeit
# liegenblieb, bis jemand hinschaute.
#
# Diese Queue dreht die Reihenfolge um: die Aktion wird angemeldet, Raphael
# bekommt EINE Zeile mit einer Frist, und wenn bis dahin kein Veto kommt, laeuft
# sie automatisch. Der Normalfall braucht ihn nicht mehr, und er kann trotzdem
# eingreifen, solange es noch etwas zu greifen gibt.
#
# WICHTIG: Diese Queue ist NICHT fuer Zahlungen, Bankauftraege oder
# Vermoegenstransfers. Die bleiben laut Whitelist v2 ausgenommen und laufen
# ueber die Einzelfreigabe.
#
# VERWENDUNG:
#   # Aktion anmelden (Fenster in Minuten, Default 30):
#   bash scripts/widerruf-queue.sh --anmelden \
#        --typ mail --was "Nachfassen Roethlisberger Geraeteliste" \
#        --an "ti@schreinermanufaktur.ch" --fenster 30 \
#        --befehl 'bash scripts/versand-draft-senden.sh 12345'
#
#   # Faellige ausfuehren (getaktet, z.B. alle 10 Min):
#   bash scripts/widerruf-queue.sh --pruefen
#
#   # Stand ansehen / Veto setzen:
#   bash scripts/widerruf-queue.sh --liste
#   bash scripts/widerruf-queue.sh --stop <id>
# ============================================================================

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
QUEUE="$HUB/logbuch/widerruf"
OFFEN="$QUEUE/offen"
ERLEDIGT="$QUEUE/erledigt"
GESTOPPT="$QUEUE/gestoppt"
LOGBUCH="$HUB/logbuch/LOGBUCH.md"
EMPFAENGER_INTERN="rj@raphaeljans.ch"

mkdir -p "$OFFEN" "$ERLEDIGT" "$GESTOPPT" 2>/dev/null

jetzt_ts() { date "+%s"; }
jetzt_lesbar() { date "+%Y-%m-%d %H:%M"; }

# --- Meldung an Raphael ------------------------------------------------------
# Bewusst als Draft-freie Direktmeldung: die Zeile ist die Entscheidungsgrundlage,
# nicht das Erzeugnis. Schlaegt der Mailweg fehl, bleibt der Eintrag trotzdem
# stehen und wird beim naechsten --pruefen erneut gemeldet.
melden() {
    local betreff="$1" text="$2"
    local tmp; tmp="$(mktemp)"
    printf '%s\n' "$text" > "$tmp"
    osascript <<OSA >/dev/null 2>&1
tell application id "com.apple.mail"
    set inhalt to (read POSIX file "$tmp" as «class utf8»)
    set neueMail to make new outgoing message with properties {subject:"$betreff", content:inhalt, visible:false}
    tell neueMail
        make new to recipient at end of to recipients with properties {address:"$EMPFAENGER_INTERN"}
        send
    end tell
end tell
OSA
    local rc=$?
    rm -f "$tmp"
    return $rc
}

protokoll() {
    [ -f "$LOGBUCH" ] || return 0
    printf '\n- %s (Widerrufs-Queue) %s\n' "$(jetzt_lesbar)" "$1" >> "$LOGBUCH" 2>/dev/null
}

# --- Anmelden ----------------------------------------------------------------
anmelden() {
    local typ="" was="" an="" fenster=30 befehl=""
    while [ $# -gt 0 ]; do
        case "$1" in
            --typ)     typ="$2"; shift 2 ;;
            --was)     was="$2"; shift 2 ;;
            --an)      an="$2"; shift 2 ;;
            --fenster) fenster="$2"; shift 2 ;;
            --befehl)  befehl="$2"; shift 2 ;;
            *) shift ;;
        esac
    done

    if [ -z "$was" ] || [ -z "$befehl" ]; then
        echo "FEHLER: --was und --befehl sind Pflicht." >&2
        return 2
    fi

    # Zahlungen gehoeren nicht in diese Queue (Whitelist v2)
    if printf '%s %s' "$was" "$befehl" | grep -Eiq 'zahlung|ueberweis|überweis|bankauftrag|vergueten|vergüten|payment|transfer'; then
        echo "ABGEWIESEN: Zahlungen laufen nicht ueber das Widerrufsfenster," >&2
        echo "sondern ueber die Einzelfreigabe (Aktions-Whitelist v2)." >&2
        return 3
    fi

    local id; id="$(date "+%y%m%d-%H%M%S")-$$"
    local faellig_ts=$(( $(jetzt_ts) + fenster * 60 ))
    local datei="$OFFEN/$id.task"

    {
        echo "id=$id"
        echo "typ=${typ:-unbestimmt}"
        echo "was=$was"
        echo "an=${an:-}"
        echo "angemeldet=$(jetzt_lesbar)"
        echo "faellig_ts=$faellig_ts"
        echo "faellig=$(date -r "$faellig_ts" "+%Y-%m-%d %H:%M")"
        echo "station=$(hostname -s)"
        echo "befehl=$befehl"
    } > "$datei"

    local faellig_lesbar; faellig_lesbar="$(date -r "$faellig_ts" "+%H:%M")"
    melden "Geht um $faellig_lesbar raus: $was" \
"$was

An: ${an:-(siehe Entwurf)}
Geht automatisch raus um: $faellig_lesbar
Vorgang: $id

Wenn das nicht rausgehen soll, antworte mit STOP $id
oder fuehre aus: bash scripts/widerruf-queue.sh --stop $id"

    echo "angemeldet: $id (faellig $faellig_lesbar)"
    protokoll "angemeldet $id — $was (faellig $faellig_lesbar)"
}

# --- Pruefen und ausfuehren --------------------------------------------------
pruefen() {
    local jetzt; jetzt="$(jetzt_ts)"
    local anzahl=0

    for datei in "$OFFEN"/*.task; do
        [ -e "$datei" ] || continue
        # shellcheck disable=SC1090
        local id typ was an faellig_ts befehl
        id="$(grep '^id=' "$datei" | cut -d= -f2-)"
        was="$(grep '^was=' "$datei" | cut -d= -f2-)"
        faellig_ts="$(grep '^faellig_ts=' "$datei" | cut -d= -f2-)"
        befehl="$(grep '^befehl=' "$datei" | cut -d= -f2-)"

        [ -n "$faellig_ts" ] || continue
        [ "$jetzt" -lt "$faellig_ts" ] && continue

        echo "faellig: $id — $was"
        if eval "$befehl" >/dev/null 2>&1; then
            mv "$datei" "$ERLEDIGT/" 2>/dev/null
            protokoll "ausgefuehrt $id — $was"
            echo "  ausgefuehrt"
        else
            printf 'fehler=%s\n' "$(jetzt_lesbar)" >> "$datei"
            protokoll "FEHLGESCHLAGEN $id — $was"
            melden "Fehlgeschlagen: $was" \
"Der Vorgang $id konnte nicht ausgefuehrt werden.

$was

Der Eintrag bleibt offen und wird nicht automatisch wiederholt."
            echo "  FEHLGESCHLAGEN"
        fi
        anzahl=$((anzahl+1))
    done

    [ "$anzahl" -eq 0 ] && echo "nichts faellig"
    return 0
}

# --- Veto --------------------------------------------------------------------
stoppen() {
    local id="$1"
    local datei="$OFFEN/$id.task"
    if [ ! -f "$datei" ]; then
        echo "Kein offener Vorgang mit der Nummer $id." >&2
        return 1
    fi
    local was; was="$(grep '^was=' "$datei" | cut -d= -f2-)"
    printf 'gestoppt=%s\n' "$(jetzt_lesbar)" >> "$datei"
    mv "$datei" "$GESTOPPT/" 2>/dev/null
    protokoll "GESTOPPT $id — $was"
    echo "gestoppt: $id — $was"
}

# --- Liste -------------------------------------------------------------------
liste() {
    local gefunden=0
    echo "Offene Vorgaenge:"
    for datei in "$OFFEN"/*.task; do
        [ -e "$datei" ] || continue
        gefunden=1
        printf '  %-24s %-6s %s\n' \
            "$(grep '^id=' "$datei" | cut -d= -f2-)" \
            "$(grep '^faellig=' "$datei" | cut -d= -f2- | cut -d' ' -f2)" \
            "$(grep '^was=' "$datei" | cut -d= -f2-)"
    done
    [ "$gefunden" -eq 0 ] && echo "  (keine)"
}

# --- Kommandozeile -----------------------------------------------------------
case "${1:-}" in
    --anmelden) shift; anmelden "$@" ;;
    --pruefen)  pruefen ;;
    --stop)     stoppen "${2:-}" ;;
    --liste)    liste ;;
    *)          sed -n '2,40p' "$0" | sed 's/^# \{0,1\}//' ;;
esac
