# Rollen-Bilanz JANS AI Hub — Stand 29.07.2026

Messfenster: 30 Tage (seit 2026-06-29)
Register: logbuch/rollen/rollen-map.tsv
Taxonomie: docs/konzepte/260729-Rollen-Taxonomie/

## 1. Bestand je Rolle

| Rolle | Bausteine | davon Skills | davon Loops |
|---|---|---|---|
| builder | 19 | 19 | 0 |
| grower | 6 | 4 | 2 |
| maintainer | 26 | 12 | 14 |
| prototyper | 22 | 9 | 13 |
| sweeper | 8 | 4 | 4 |
| **Total** | **81** | | |

Anteil am Bestand:

- builder: 23 %
- grower: 7 %
- maintainer: 32 %
- prototyper: 27 %
- sweeper: 10 %

## 2. Verbrauchte Rechenzeit je Rolle (Runner-Laeufe)

Gemessen: 10501 Laeufe, 97 Stunden.

| Rolle | Stunden | Laeufe | Anteil Zeit |
|---|---|---|---|
| grower | 0.3 | 2 | 0 % |
| maintainer | 0.1 | 1 | 0 % |
| prototyper | 88.4 | 9838 | 90 % |
| sweeper | 9.0 | 660 | 9 % |

## 3. Die zeitstaerksten Loops

| Loop | Stunden | Laeufe |
|---|---|---|
| baurecht-buch-training | 14.3 | 668 |
| energie-training | 13.1 | 636 |
| normen-training-nacht | 12.7 | 661 |
| planungsgrundlagen-training | 9.9 | 632 |
| twin-fidelity-review | 9.0 | 660 |
| twin-mail-training | 8.7 | 661 |
| wettbewerbs-dna-training | 8.4 | 662 |
| normen-training-mini | 6.6 | 604 |
| grobkosten-training | 5.3 | 3956 |
| immobewertung-training | 3.3 | 259 |
| spec-training | 2.9 | 257 |
| wettbewerbs-layer-nachbrenner | 1.9 | 241 |
| synobsis-batch-nacht | 1.0 | 601 |
| syn02-spec-anstoss | 0.3 | 2 |
| wettbewerbs-dna-reaktivierung | 0.1 | 1 |

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
