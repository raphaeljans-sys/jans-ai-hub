# Rollen-Bilanz JANS AI Hub — Stand 29.07.2026

Messfenster: 30 Tage (seit 2026-06-29)
Register: logbuch/rollen/rollen-map.tsv · Liefer-Delta aus: SSD-Klon
Taxonomie: docs/konzepte/260729-Rollen-Taxonomie/

## 1. Lauf-Qualität — was von den Läufen überhaupt Arbeit war

Diese Sektion steht bewusst zuoberst. Ohne sie liest man Betriebsstörungen als
Auslastung.

| Klasse | Läufe | Stunden | Anteil Zeit | Ø Dauer |
|---|---|---|---|---|
| abgewuergt | 17 | 19.8 | 20 % | 4188 s |
| fehlstart | 10017 | 13.4 | 14 % | 5 s |
| geliefert | 467 | 64.5 | 66 % | 498 s |
| **Total** | **10501** | **97.7** | | |

Lesehilfe:

- **geliefert** heisst, der Lauf kam durch (rc=0). Nur diese Zeit ist Arbeit.
- **abgewürgt** heisst, der Stall-Killer hat einen Hänger nach über einer Stunde
  beendet (rc>128). Diese Zeit ist vollständig verbrannt.
- **Fehlstart** heisst, der Lauf brach sofort ab, typisch nach wenigen Sekunden
  (leeres Kontingent, abweisendes Gate). Er kostet fast keine Zeit, bläht aber
  jede Lauf-Zählung auf.

## 2. Bestand je Rolle

| Rolle | Bausteine | davon Skills | davon Loops |
|---|---|---|---|
| builder | 19 | 19 | 0 |
| grower | 6 | 4 | 2 |
| maintainer | 27 | 12 | 15 |
| prototyper | 22 | 9 | 13 |
| sweeper | 8 | 4 | 4 |
| **Total** | **82** | | |

## 3. Produktive Rechenzeit je Rolle

Nur gelieferte Läufe (467 Läufe, 64.5 Stunden).
Die Spalte "Delta Null" zählt Läufe, die selbst melden, dass es nichts Neues gab.

| Rolle | Stunden | Läufe | davon Delta Null | Anteil Zeit |
|---|---|---|---|---|
| grower | 0.3 | 2 | 0 | 0 % |
| maintainer | 0.1 | 1 | 0 | 0 % |
| prototyper | 59.3 | 431 | 18 | 92 % |
| sweeper | 5.0 | 33 | 1 | 8 % |

Bezugsgrösse: 1440 Stunden Wandzeit (zwei Stationen, 30 Tage). Die produktive
Zeit entspricht 4.5 % davon. Der Hub ist also weit von einer
Vollauslastung entfernt; das Problem ist nicht die Menge, sondern die Verteilung.

## 4. Ertrag je Loop

Geliefert = Läufe mit rc=0. Delta Null = Lauf meldet selbst nichts Neues.
Dateien = im Zielbereich des Loops tatsächlich geänderte Dateien laut git.
Ein Loop mit vielen Läufen und wenigen Dateien arbeitet im Leerlauf.

| Loop | geliefert | Delta Null | Stunden | Dateien im Zielbereich |
|---|---|---|---|---|
| energie-training | 69 | 0 | 12.6 | 1939 |
| planungsgrundlagen-training | 64 | 0 | 9.4 | 989 |
| normen-training-nacht | 28 | 1 | 8.2 | 2161 |
| baurecht-buch-training | 32 | 0 | 5.8 | 1102 |
| normen-training-mini | 33 | 0 | 5.1 | 2161 |
| twin-fidelity-review | 33 | 1 | 5.0 | 811 |
| twin-mail-training | 33 | 1 | 4.3 | 811 |
| wettbewerbs-dna-training | 33 | 1 | 3.6 | 711 |
| grobkosten-training | 43 | 3 | 2.9 | 187 |
| spec-training | 22 | 1 | 2.6 | 299 |
| immobewertung-training | 23 | 2 | 2.5 | 443 |
| wettbewerbs-layer-nachbrenner | 15 | 4 | 1.5 | 711 |
| synobsis-batch-nacht | 36 | 5 | 0.7 | 2806 |
| syn02-spec-anstoss | 2 | 0 | 0.3 | - |
| wettbewerbs-dna-reaktivierung | 1 | 0 | 0.1 | - |

## 6. Messgrenzen (bewusst ausgewiesen)

- Erfasst sind ausschliesslich Läufe über den vollgas-runner. NICHT erfasst: die
  App-Scheduled-Task-Flotte (Morgenbriefings, Nacht-Lernläufe), die launchd-
  Trainings auf dem Mac Mini und alle interaktiven Sitzungen. Die Bilanz bildet
  den automatisierten Dauerbetrieb ab, nicht die Gesamtlast.
- Das Liefer-Delta zählt geänderte Dateien im Zielbereich eines Loops, nicht
  deren Wert. Zehn Zeilen Tippfehlerkorrektur zählen wie ein neuer Artikel.
- Loops ohne hinterlegten Zielpfad im Register erscheinen mit "-". Das ist keine
  Null, sondern "nicht gemessen".
- Delta Null stammt aus dem Selbstbericht des Laufs. Ein Lauf, der abgeschossen
  wird, meldet gar nichts und ist von einem stillen gesunden Lauf nicht zu
  unterscheiden (Rule auto-verbesserungen 260729).

Erzeugt von scripts/rollen-bilanz.sh
