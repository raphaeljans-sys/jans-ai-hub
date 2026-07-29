#!/bin/bash
# schutzmechanik-selbsttest.sh — der MAINTAINER des JANS AI Hub
#
# Prueft die Schutzmechaniken des Hub darauf, ob sie noch das tun, was sie
# sollen — und zwar in BEIDE Richtungen.
#
# WARUM DIESES SCRIPT EXISTIERT (Lehre vom 28.07.2026, Rule auto-verbesserungen):
# Eine Schutzmechanik, die IMMER "nein" sagt, sieht im Log genauso ruhig aus wie
# eine, die funktioniert. lauf-gate.sh wies in seiner ersten Fassung einen ganzen
# Tag lang ausnahmslos jeden Lauf ab; speicher-waechter.sh feuerte 24 Fehlalarme
# taeglich je Station. Beides blieb unbemerkt, weil nur der Freigabepfad ODER nur
# der Warnpfad betrachtet wurde. Seither gilt: eine Schutzmechanik ist erst dann
# fertig, wenn ihr Freigabe- UND ihr Abweisungspfad je einmal nachgemessen wurden.
# Dieses Script macht aus dieser einmaligen Pflicht eine stehende Rolle.
#
# Aufruf:  bash scripts/schutzmechanik-selbsttest.sh
# Exit:    0 = alle Pruefungen bestanden, 1 = mindestens ein Befund
# Log:     logbuch/speicher/selbsttest-<Station>.log
#
# UNSCHAEDLICH: das Script startet nichts neu, killt nichts und aendert nichts.
# Es ruft das Gate mit kuenstlichen Schwellen auf (Name "selbsttest") und liest
# ansonsten nur.
#
# Angelegt 29.07.2026 (Konzept docs/konzepte/260729-Rollen-Taxonomie/).

set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
SSD="$HOME/Developer/jans-ai-hub"
STATION="$(hostname -s)"
LOGDIR="$HUB/logbuch/speicher"
LOGFILE="$LOGDIR/selbsttest-${STATION}.log"
GATE="$HUB/scripts/lauf-gate.sh"
WAECHTER="$HUB/scripts/speicher-waechter.sh"

BEFUNDE=0
AUSGABE=""

melde() {
    local status="$1" text="$2"
    AUSGABE="${AUSGABE}  [${status}] ${text}\n"
    [ "$status" = "BEFUND" ] && BEFUNDE=$((BEFUNDE + 1))
}

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

[ -d "$HUB" ] || { echo "FEHLER: NAS nicht gemountet ($HUB)"; exit 1; }

echo "Schutzmechanik-Selbsttest — $STATION, $(date '+%d.%m.%Y %H:%M')"
echo

# ---------------------------------------------------------------------------
# 1. lauf-gate.sh — Freigabepfad
# ---------------------------------------------------------------------------
if [ ! -f "$GATE" ]; then
    melde BEFUND "lauf-gate.sh fehlt ($GATE) — kein Prozess-Deckel aktiv."
else
    if bash "$GATE" selbsttest-freigabe >/dev/null 2>&1; then
        melde OK "lauf-gate Freigabepfad: laesst bei normaler Lage durch."
    else
        # Kein automatischer Befund: bei echter Speichernot ist die Abweisung
        # korrekt. Unterschieden wird ueber den Grund in der Logzeile.
        GRUND=$(tail -3 "$LOGDIR/gate-${STATION}.log" 2>/dev/null | grep "selbsttest-freigabe" | tail -1)
        case "$GRUND" in
            *"Speichermessung unbrauchbar"*)
                melde BEFUND "lauf-gate Freigabepfad: Messung kaputt — ${GRUND##*— }" ;;
            *"Laeufe aktiv"*|*"Speicherdruck"*|*"verfuegbar"*)
                melde OK "lauf-gate Freigabepfad: weist ab, aber mit sachlichem Grund (${GRUND##*— })" ;;
            *)
                melde BEFUND "lauf-gate Freigabepfad: weist ab, ohne erkennbaren Grund im Log." ;;
        esac
    fi

    # -----------------------------------------------------------------------
    # 2. lauf-gate.sh — Abweisungspfad Speicher
    # -----------------------------------------------------------------------
    if MIN_FREI_MB=99999999 bash "$GATE" selbsttest-speicher >/dev/null 2>&1; then
        melde BEFUND "lauf-gate Abweisungspfad Speicher: laesst trotz unerfuellbarer Schwelle durch."
    else
        melde OK "lauf-gate Abweisungspfad Speicher: weist bei zu wenig Speicher ab."
    fi

    # -----------------------------------------------------------------------
    # 3. lauf-gate.sh — Abweisungspfad Prozesszahl
    # -----------------------------------------------------------------------
    if MAX_LAEUFE=0 bash "$GATE" selbsttest-laufzahl >/dev/null 2>&1; then
        melde BEFUND "lauf-gate Abweisungspfad Laufzahl: laesst bei Grenze 0 durch."
    else
        melde OK "lauf-gate Abweisungspfad Laufzahl: weist bei erreichter Grenze ab."
    fi
fi

# ---------------------------------------------------------------------------
# 4. Verworfene Messgroesse "unused" darf nirgends mehr vorkommen
# ---------------------------------------------------------------------------
# Am 28.07. steckte dieselbe falsche Messung in Gate UND Waechter, weil beide
# aus derselben Vorlage entstanden. Die Korrektur am einen liess den anderen
# stehen. Darum wird hier der ganze Script-Bestand geprueft, nicht nur ein Ort.
# NUR Code-Zeilen pruefen: in lauf-gate.sh und speicher-waechter.sh steht das
# Wort "unused" absichtlich in den Kommentaren, die die Korrektur dokumentieren.
# Ein Waechter, der darauf anschlaegt, ist selbst ein Fehlalarm — genau das,
# was hier verhindert werden soll.
TREFFER=""
for F in "$HUB"/scripts/*.sh; do
    case "$F" in *schutzmechanik-selbsttest*) continue ;; esac
    if sed 's/#.*//' "$F" 2>/dev/null | grep -qE 'unused'; then
        TREFFER="$TREFFER $(basename "$F")"
    fi
done
TREFFER="${TREFFER# }"
if [ -n "$TREFFER" ]; then
    melde BEFUND "verworfene Speicher-Metrik 'unused' noch vorhanden in: $TREFFER"
else
    melde OK "verworfene Speicher-Metrik 'unused' kommt im Script-Bestand nicht mehr vor."
fi

# ---------------------------------------------------------------------------
# 5. speicher-waechter.sh — schreibt er ueberhaupt noch?
# ---------------------------------------------------------------------------
WLOG="$LOGDIR/${STATION}.log"
if [ ! -f "$WAECHTER" ]; then
    melde BEFUND "speicher-waechter.sh fehlt ($WAECHTER)."
elif [ ! -f "$WLOG" ]; then
    melde BEFUND "speicher-waechter hat noch nie ins Log geschrieben ($WLOG)."
else
    ALTER=$(( ( $(date +%s) - $(stat -f %m "$WLOG" 2>/dev/null || echo 0) ) / 3600 ))
    if [ "$ALTER" -gt 48 ]; then
        melde BEFUND "speicher-waechter-Log seit ${ALTER} h unveraendert — Job laeuft vermutlich nicht."
    else
        melde OK "speicher-waechter-Log ist ${ALTER} h alt — Job lebt."
    fi
    # Dauerwarnung erkennen: warnt er bei JEDEM Lauf, ist die Schwelle oder die
    # Messung falsch — das war der Fehler vom 28.07. (24 Fehlalarme taeglich).
    LETZTE=$(tail -20 "$WLOG" 2>/dev/null)
    N_WARN=$(printf '%s\n' "$LETZTE" | grep -c "WARNUNG")
    N_OK=$(printf '%s\n' "$LETZTE" | grep -c "OK —")
    if [ "$N_WARN" -ge 20 ] && [ "$N_OK" -eq 0 ]; then
        melde BEFUND "speicher-waechter warnt in den letzten 20 Zeilen ausnahmslos — Dauerwarnung, Messung pruefen."
    else
        melde OK "speicher-waechter warnt nicht im Dauerbetrieb (${N_WARN}/20 Warnungen)."
    fi
fi

# ---------------------------------------------------------------------------
# 6. Drift NAS gegen SSD bei Scripts mit SSD-Vorrang
# ---------------------------------------------------------------------------
# Vier bis sieben launchd-Jobs starten bevorzugt die SSD-Kopie. Eine Korrektur
# auf dem NAS wirkt dort ERST nach dem Commit-/Pull-Zyklus. Faellt der aus,
# laeuft die Station auf altem Stand, waehrend die Aufsicht "behoben" meldet.
DRIFT=""
for P in "$HOME"/Library/LaunchAgents/*.plist; do
    [ -f "$P" ] || continue
    grep -q "Developer/jans-ai-hub" "$P" 2>/dev/null || continue
    for S in $(grep -oE '[A-Za-z0-9_./-]*jans-ai-hub/scripts/[a-z0-9-]+\.sh' "$P" 2>/dev/null \
               | sed 's|.*/scripts/||' | sort -u); do
        [ -f "$SSD/scripts/$S" ] && [ -f "$HUB/scripts/$S" ] || continue
        A=$(md5 -q "$SSD/scripts/$S" 2>/dev/null)
        B=$(md5 -q "$HUB/scripts/$S" 2>/dev/null)
        [ "$A" = "$B" ] || DRIFT="$DRIFT $S"
    done
done
if [ -n "$DRIFT" ]; then
    melde BEFUND "SSD-Kopie weicht vom NAS-Kanon ab:$DRIFT — nas-commit-now + Pull noetig."
else
    melde OK "Scripts mit SSD-Vorrang sind driftfrei (NAS = SSD)."
fi

# ---------------------------------------------------------------------------
# Ergebnis
# ---------------------------------------------------------------------------
printf "%b" "$AUSGABE"
echo

if [ "$BEFUNDE" -eq 0 ]; then
    echo "Ergebnis: alle Pruefungen bestanden."
    log "OK — alle Pruefungen bestanden."
    exit 0
else
    echo "Ergebnis: $BEFUNDE Befund(e) — siehe oben."
    log "BEFUND — $BEFUNDE Pruefung(en) nicht bestanden: $(printf "%b" "$AUSGABE" | grep BEFUND | tr '\n' ' ')"
    exit 1
fi
