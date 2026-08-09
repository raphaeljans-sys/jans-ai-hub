#!/bin/bash
# ============================================================================
# JANS AI Hub — Wege-Radar (taeglicher stiller Selbsttest aller Zugangswege)
# ============================================================================
# Auftrag Raphael 09.08.2026, Baustein 7 des Autonomie-Ausbaus.
#
# WARUM:
# Der KISPI-Vorfall hatte zwei Defekte als Vorgeschichte, die beide seit Wochen
# bestanden, ohne dass sie jemandem auffielen: `node_modules` fehlte auf dem
# NAS-Pfad, und die M365-CLI lag nicht im `PATH`. Beide waren harmlos, bis sie
# im falschen Moment gebraucht wurden.
#
# Dieser Radar prueft die Wege, SOLANGE sie nicht gebraucht werden. Er ist
# still, wenn alles traegt — gemeldet wird nur, was er nicht selbst beheben
# konnte (Ein-Mail-Prinzip, Rule auto-verbesserungen 260803).
#
# ZUSAETZLICHE AUFGABE seit 09.08.2026:
# Die Site «JANS - 2619-KISPI» ist von der 60-Tage-Gastablauf-Policy
# ausgenommen. Damit laufen Gaeste dort nie mehr automatisch ab, und die
# Bereinigung wird zur bewussten Aufgabe. Der Radar legt darum monatlich den
# Gaestebestand zur Durchsicht vor.
#
# VERWENDUNG:
#     bash scripts/wege-radar.sh              # normaler Lauf (still bei Erfolg)
#     bash scripts/wege-radar.sh --laut       # immer berichten
# ============================================================================

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
SSD="$HOME/Developer/jans-ai-hub"
DOCTOR="$SSD/scripts/wege-doctor.sh"
[ -f "$DOCTOR" ] || DOCTOR="$HUB/scripts/wege-doctor.sh"
CONNECTOR="$HUB/connectors/m365-graph.mjs"
LOGDIR="$HUB/logbuch/wege"
LOGFILE="$LOGDIR/radar-$(hostname -s).log"
EMPFAENGER="rj@raphaeljans.ch"

LAUT=0
[ "${1:-}" = "--laut" ] && LAUT=1

mkdir -p "$LOGDIR" 2>/dev/null
log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOGFILE" 2>/dev/null; }

# --- Lauf-Gate respektieren (Rule betrieb-chronik 260728) --------------------
GATE="$SSD/scripts/lauf-gate.sh"
[ -f "$GATE" ] || GATE="$HUB/scripts/lauf-gate.sh"
if [ -f "$GATE" ]; then
    bash "$GATE" "wege-radar" >/dev/null 2>&1 || { log "Gate: zurueckgestanden"; exit 0; }
fi

BEFUNDE=""
notiere() { BEFUNDE="${BEFUNDE}$1"$'\n'; }

# --- 1. Werkzeuge pruefen, bei Defekt einmal reparieren ---------------------
AUSGABE="$(bash "$DOCTOR" --nur-pruefen --leise 2>&1)"
if [ -n "$AUSGABE" ]; then
    log "Doctor meldet Defekte, Reparaturversuch"
    REPARATUR="$(bash "$DOCTOR" --leise 2>&1)"
    NACHHER="$(bash "$DOCTOR" --nur-pruefen --leise 2>&1)"
    if [ -n "$NACHHER" ]; then
        notiere "Werkzeuge — nach Reparaturversuch weiterhin defekt:"
        notiere "$NACHHER"
    else
        log "Defekte selbst behoben"
    fi
fi

# --- 2. Beide M365-Wege unabhaengig testen ----------------------------------
M365="$SSD/node_modules/.bin/m365"
if [ -x "$M365" ]; then
    "$M365" status --output json 2>/dev/null | grep -q '"authType"' \
        || notiere "Weg 1 (M365-CLI) antwortet nicht mehr — Anmeldung pruefen."
else
    notiere "Weg 1 (M365-CLI) nicht gefunden unter $M365"
fi

if [ -f "$CONNECTOR" ]; then
    node "$CONNECTOR" --selbsttest >/dev/null 2>&1 \
        || notiere "Weg 2 (m365-graph.mjs) traegt nicht mehr — Zertifikat pruefen."
else
    notiere "Weg 2 (m365-graph.mjs) fehlt."
fi

# --- 3. Monatliche Durchsicht des Gaestebestands ----------------------------
# Nur am ersten Tag des Monats, damit daraus keine taegliche Meldung wird.
if [ "$(date '+%d')" = "01" ] && [ -f "$CONNECTOR" ]; then
    GAESTE="$(node "$CONNECTOR" --gaeste kispi 2>/dev/null)"
    if [ -n "$GAESTE" ]; then
        notiere "Monatliche Durchsicht — Gaeste auf JANS - 2619-KISPI:"
        notiere "$GAESTE"
        notiere ""
        notiere "Die Site ist seit 09.08.2026 von der 60-Tage-Ablaufpolicy ausgenommen."
        notiere "Wer nicht mehr am Projekt arbeitet, muss von Hand entfernt werden."
    fi
fi

# --- Ergebnis ----------------------------------------------------------------
if [ -z "$BEFUNDE" ]; then
    log "ohne Befund, still beendet"
    [ "$LAUT" -eq 1 ] && echo "Alle Wege tragen."
    exit 0
fi

log "Befunde gemeldet"
echo "$BEFUNDE"

TMP="$(mktemp)"
printf 'Wege-Radar %s\n\n%s\n' "$(date '+%d.%m.%Y')" "$BEFUNDE" > "$TMP"
osascript <<OSA >/dev/null 2>&1
tell application id "com.apple.mail"
    set inhalt to (read POSIX file "$TMP" as «class utf8»)
    set m to make new outgoing message with properties {subject:"Wege-Radar: Befund", content:inhalt, visible:false}
    tell m
        make new to recipient at end of to recipients with properties {address:"$EMPFAENGER"}
        send
    end tell
end tell
OSA
rm -f "$TMP"
exit 1
