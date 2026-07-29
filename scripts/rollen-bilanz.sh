#!/bin/bash
# rollen-bilanz.sh — Rollen-Haushalt des JANS AI Hub messen
#
# Verteilt Bestand (Skills/Loops) UND tatsaechlich verbrauchte Rechenzeit
# auf die fuenf Rollen der Taxonomie:
#   prototyper | builder | sweeper | grower | maintainer
#
# Quelle Bestand:    logbuch/rollen/rollen-map.tsv  (kanonisch, von Hand gepflegt)
# Quelle Verbrauch:  logbuch/vollgas/<Station>.log  (START/ENDE-Zeilen des Runners)
#
# BEWUSSTE MESSGRENZE (nicht verschweigen, im Report ausgewiesen):
# Nur Laeufe ueber den vollgas-runner tragen eine ENDE-Zeile mit Laufzeit.
# Die App-Scheduled-Task-Flotte (Morgenbriefings, Nacht-Lernlaeufe) und die
# launchd-Trainings laufen daran vorbei — ihre Zeit ist hier NICHT enthalten.
# Vgl. Rule auto-verbesserungen 260728 (sechs Feuermechanismen je Station).
#
# Aufruf:  bash scripts/rollen-bilanz.sh [TAGE]      (Default 30)
# Report:  logbuch/rollen/YYMMDD-rollen-bilanz.md
#
# Angelegt 29.07.2026 (Konzept docs/konzepte/260729-Rollen-Taxonomie/).

set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
MAP="$HUB/logbuch/rollen/rollen-map.tsv"
LOGDIR="$HUB/logbuch/vollgas"
OUTDIR="$HUB/logbuch/rollen"
TAGE="${1:-30}"

[ -d "$HUB" ] || { echo "FEHLER: NAS nicht gemountet ($HUB)"; exit 1; }
[ -f "$MAP" ] || { echo "FEHLER: Rollen-Register fehlt ($MAP)"; exit 1; }

STAMP="$(date '+%y%m%d')"
HEUTE="$(date '+%d.%m.%Y')"
SEIT="$(date -v-"${TAGE}"d '+%Y-%m-%d' 2>/dev/null || date -d "-${TAGE} days" '+%Y-%m-%d')"
REPORT="$OUTDIR/${STAMP}-rollen-bilanz.md"

mkdir -p "$OUTDIR"

# --- 1. Bestand je Rolle aus dem Register -----------------------------------
BESTAND=$(awk -F'\t' '
    /^#/ || NF < 3 { next }
    $3 == "-"      { next }
    { anz[$3"|"$2]++; rolle[$3]++ }
    END {
        for (r in rolle) printf "%s\t%d\t%d\t%d\n", r, rolle[r], anz[r"|skill"], anz[r"|task"]
    }' "$MAP" | sort)

# --- 2. Verbrauchte Runner-Zeit je Loop im Zeitfenster ----------------------
# Logzeile:  2026-07-27 21:50:56 [Macbookpro] ENDE  <loop> (rc=0, 1081s): ...
LAEUFE=$(cat "$LOGDIR"/*.log 2>/dev/null | sed -nE \
    's/^([0-9]{4}-[0-9]{2}-[0-9]{2}) [0-9:]+ \[[A-Za-z]+\] ENDE +([a-z0-9-]+) \(rc=[^,]+, ([0-9]+)s\).*/\1\t\2\t\3/p' \
    | awk -F'\t' -v seit="$SEIT" '$1 >= seit')

VERBRAUCH=$(printf '%s\n' "$LAEUFE" | awk -F'\t' '
    NR == FNR {
        if ($0 ~ /^#/ || NF < 3 || $3 == "-") next
        rolle[$1] = $3
        next
    }
    NF < 3 { next }
    {
        r = (($2 in rolle) ? rolle[$2] : "unzugeordnet")
        sek[r] += $3; laeufe[r]++
        loopsek[$2] += $3; looplauf[$2]++
    }
    END {
        for (r in sek) printf "R\t%s\t%d\t%d\n", r, sek[r], laeufe[r]
        for (l in loopsek) printf "L\t%s\t%d\t%d\n", l, loopsek[l], looplauf[l]
    }' "$MAP" -)

GESAMT_SEK=$(printf '%s\n' "$VERBRAUCH" | awk -F'\t' '$1=="R"{s+=$3} END{print s+0}')
GESAMT_LAUF=$(printf '%s\n' "$VERBRAUCH" | awk -F'\t' '$1=="R"{s+=$4} END{print s+0}')

# --- 3. Report schreiben ----------------------------------------------------
{
cat <<HEAD
# Rollen-Bilanz JANS AI Hub — Stand $HEUTE

Messfenster: $TAGE Tage (seit $SEIT)
Register: logbuch/rollen/rollen-map.tsv
Taxonomie: docs/konzepte/260729-Rollen-Taxonomie/

## 1. Bestand je Rolle

| Rolle | Bausteine | davon Skills | davon Loops |
|---|---|---|---|
HEAD

printf '%s\n' "$BESTAND" | awk -F'\t' 'NF>=4 {printf "| %s | %d | %d | %d |\n", $1, $2, $3, $4}'

BGESAMT=$(printf '%s\n' "$BESTAND" | awk -F'\t' '{s+=$2} END{print s+0}')
echo "| **Total** | **$BGESAMT** | | |"

cat <<MID

Anteil am Bestand:

MID

printf '%s\n' "$BESTAND" | awk -F'\t' -v g="$BGESAMT" 'NF>=2 && g>0 {printf "- %s: %.0f %%\n", $1, 100*$2/g}'

cat <<MID2

## 2. Verbrauchte Rechenzeit je Rolle (Runner-Laeufe)

Gemessen: $GESAMT_LAUF Laeufe, $((GESAMT_SEK / 3600)) Stunden.

| Rolle | Stunden | Laeufe | Anteil Zeit |
|---|---|---|---|
MID2

printf '%s\n' "$VERBRAUCH" | awk -F'\t' -v g="$GESAMT_SEK" '
    $1=="R" {printf "| %s | %.1f | %d | %.0f %% |\n", $2, $3/3600, $4, (g>0 ? 100*$3/g : 0)}' | sort

cat <<MID3

## 3. Die zeitstaerksten Loops

| Loop | Stunden | Laeufe |
|---|---|---|
MID3

printf '%s\n' "$VERBRAUCH" | awk -F'\t' '$1=="L" {printf "%d\t%s\t%d\n", $3, $2, $4}' \
    | sort -rn | head -15 \
    | awk -F'\t' '{printf "| %s | %.1f | %d |\n", $2, $1/3600, $3}'

UNZ=$(printf '%s\n' "$LAEUFE" | awk -F'\t' '
    NR == FNR { if ($0 !~ /^#/ && NF >= 3 && $3 != "-") rolle[$1] = 1; next }
    NF >= 3 && !($2 in rolle) { n[$2]++ }
    END { for (l in n) printf "%s (%d Laeufe)\n", l, n[l] }' "$MAP" -)

if [ -n "$UNZ" ]; then
cat <<UNZHEAD

## 3b. Nicht im Register gefuehrt — Registerpflege noetig

Diese Loops sind gelaufen, tragen aber keine Rolle. Ihre Zeit steht oben unter
"unzugeordnet" und verfaelscht jede Quote, solange sie fehlt:

UNZHEAD
printf '%s\n' "$UNZ" | sed 's/^/- /'
fi

cat <<FOOT

## 4. Messgrenze (bewusst ausgewiesen)

Erfasst sind ausschliesslich Laeufe ueber den vollgas-runner (START/ENDE-Zeile
mit Laufzeit). NICHT erfasst:

- die App-Scheduled-Task-Flotte (Morgenbriefings, Nacht-Lernlaeufe) — sie wird
  vom App-Scheduler getrieben und schreibt keine Runner-Zeile
- die launchd-Trainings auf dem Mac Mini (ch.jans.training-*)
- interaktive Sessions an beiden Stationen

Die Zeitbilanz bildet damit den automatisierten Dauerbetrieb ab, nicht die
Gesamtlast. Wer sie als Gesamtlast liest, liegt zu tief. Vgl. Rule
auto-verbesserungen 260728 (sechs Feuermechanismen je Station).

Erzeugt von scripts/rollen-bilanz.sh
FOOT
} > "$REPORT"

echo "Report: $REPORT"
echo
printf '%s\n' "$VERBRAUCH" | awk -F'\t' -v g="$GESAMT_SEK" '
    $1=="R" {printf "  %-14s %6.1f h  %3.0f %%  (%d Laeufe)\n", $2, $3/3600, (g>0 ? 100*$3/g : 0), $4}' | sort
