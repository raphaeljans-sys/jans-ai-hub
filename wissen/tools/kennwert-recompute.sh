#!/usr/bin/env bash
# kennwert-recompute.sh — rechnet die Kennwerte einer Wissens-KB gegen ihre eigenen
# Bezugsgroessen zurueck und meldet, wo sie nicht aufgehen.
#
# Dritte Schwester von wiki-konsistenz.sh (Struktur) und link-frischecheck.sh (Erreichbarkeit):
# dort Form und Zugang, hier die INHALTLICHE Konsistenz der Zahlen.
#
# WARUM ES DIESES SCRIPT GIBT (23.08.2026). Ein Vertiefungslauf hat die Rechnung
# `Kosten / Bezugsgroesse` bei acht Projektbelegen von Hand nachgezogen und dabei ZWEI Fehler
# gefunden, die seit Juli bzw. seit Run 14 unentdeckt lagen:
#   1. `grobkosten`, Reckholdern Dok. 2: Kennwerte 698/1'008/1'086 CHF/m3 bei GV 1'715 m3 —
#      alle drei um exakt +59 % daneben. Ursache: Kosten- UND Flaechenblock stammen aus einer
#      Thalwil-Vorlage (GV 2'725), nur das GV-Feld war aktualisiert.
#   2. `immobilienbewertung`, 8-Objekt-Referenzvergleich, Zeile Lanzeln, Spalte CHF/Pflegezimmer:
#      Tabelle 272'780, gerechnet 29.34 Mio / 123 = 238'537 (12.6 %). Die beiden anderen Spalten
#      derselben Zeile reproduzieren exakt — der Fehler sitzt in einer einzelnen Zelle.
#
# DIE LEHRE, die das Script mechanisiert: eine in sich SUMMENRICHTIGE Tabelle ist noch kein
# Beleg dafuer, dass sie das richtige Objekt beschreibt. Die Zahlen einer Vorlage sind intern
# immer konsistent, weil sie aus einem echten Projekt stammen. Auffallen kann es nur, wenn man
# Kosten durch Bezugsgroesse teilt und gegen den behaupteten Kennwert haelt.
#
# WAS GEPRUEFT WIRD
#   (a) Explizite Rechenbehauptungen im Fliesstext: "a / b = c", "a ÷ b = c", auch mit
#       Tausender-Apostroph, Einheiten und Text dazwischen.
#   (b) Markdown-Tabellenzeilen: enthaelt eine Zeile einen CHF-Betrag, eine Bezugsgroesse
#       (m2/m3/Stueck-Spalte) und einen Je-Einheit-Wert, wird der Quotient geprueft.
#
# BEWUSSTE GRENZEN — das Script ist ein Sieb, kein Richter:
#   - Es kennt den fachlichen Kontext nicht. Ein Treffer ist ein PRUEFAUFTRAG, kein Fehler.
#   - Gerundete Quellwerte erzeugen kleine Abweichungen; Standard-Toleranz 1.5 % faengt das ab.
#   - Prozentwerte, Indexstaende und Verhaeltniszahlen werden NICHT geprueft (zu viele
#     Falsch-Positive), nur Geldbetraege gegen Mengen.
#
# HUB-PFAD — bewusst anders als bei den Schwester-Scripts. Diese setzen HUB fest auf das NAS
# und messen deshalb IMMER die NAS-Kopie, nie die lokale Arbeitskopie. Wer lokal korrigiert und
# sofort neu misst, sieht den alten Stand und haelt die Korrektur fuer gescheitert (belegt
# 23.08.2026, s. wissen/planungsgrundlagen/wiki/QUESTIONS.md). Dieses Script nimmt darum den
# Hub, in dem es selbst liegt, laesst ihn per --hub ueberschreiben und SCHREIBT IHN IN DEN
# KOPF DER AUSGABE, damit nie unklar ist, was gemessen wurde.
#
# Aufruf:  bash wissen/tools/kennwert-recompute.sh [<kb> …] [--toleranz <prozent>] [--hub <pfad>] [--raw]
#          ohne <kb>: alle KBs mit wiki/ · --raw: raw/ mitpruefen (nur lesend)
# Exit:    0 = keine Befunde · 1 = Befunde vorhanden · 2 = Bedienfehler

set -uo pipefail

TOLERANZ=1.5
MIT_RAW=0
HUB_OVERRIDE=""
KBS=()
while [ $# -gt 0 ]; do
  case "$1" in
    --toleranz) TOLERANZ="${2:-}"; shift 2 ;;
    --hub)      HUB_OVERRIDE="${2:-}"; shift 2 ;;
    --raw)      MIT_RAW=1; shift ;;
    --hilfe|-h) sed -n '2,48p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*)         echo "unbekannte Option: $1" >&2; exit 2 ;;
    *)          KBS+=("$1"); shift ;;
  esac
done

if [ -n "$HUB_OVERRIDE" ]; then
  HUB="$HUB_OVERRIDE"
else
  SELF="$(cd "$(dirname "$0")" && pwd -P)"
  HUB="$(cd "$SELF/../.." && pwd -P)"
fi
WISSEN="$HUB/wissen"
[ -d "$WISSEN" ] || { echo "wissen/ nicht gefunden unter $HUB — falscher --hub oder NAS nicht gemountet?" >&2; exit 2; }

echo "Hub: $HUB"
echo "Toleranz: ${TOLERANZ} %$( [ "$MIT_RAW" = 1 ] && echo ' · raw/ mitgeprueft')"
echo

KB_ARGS=""
[ ${#KBS[@]} -gt 0 ] && KB_ARGS="${KBS[*]}"

KERN="$(cd "$(dirname "$0")" && pwd -P)/kennwert-recompute.py"
[ -f "$KERN" ] || { echo "Kern fehlt: $KERN" >&2; exit 2; }
python3 "$KERN" "$WISSEN" "$TOLERANZ" "$MIT_RAW" ${KB_ARGS}
exit $?
