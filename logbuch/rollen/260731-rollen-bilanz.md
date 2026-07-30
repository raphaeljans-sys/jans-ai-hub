# Rollen-Bilanz JANS AI Hub — Stand 31.07.2026

Messfenster: 30 Tage (seit 2026-07-01)
Register: logbuch/rollen/rollen-map.tsv · Liefer-Delta aus: SSD-Klon
Taxonomie: docs/konzepte/260729-Rollen-Taxonomie/

## 0. Aktualität der Datenquelle

**Stand der Quelle (Runner-Logs): VERALTET — jüngster erfasster Lauf ist 2026-07-27, also 4 Tage her.**

Diese Zeile steht vor allen Zahlen, weil eine Bilanz mit versiegter Quelle
weiterhin plausible Werte liefert und nur nicht mehr die Gegenwart beschreibt.
Ist der Wert veraltet, sind alle folgenden Zahlen ein historischer Befund und
kein Betriebszustand.

Zweite Quelle, Lauf-Journal (`logbuch/laeufe/`): 18 Einträge, jüngste Datei
260730-laeufe.jsonl. Erfasste Loops: diagnose-fix-bare dispatch-versuch1 nachtschicht-mac-mini selbsttest-lecture selbsttest-lecture-2 weiche-e2e-test weiche-e2e-test2 

Das Journal aus `scripts/claude-run.sh` trägt rc, Laufzeit und Kosten je Lauf
und wäre die bessere Grundlage. Es wird hier bewusst NICHT in die Rollenzahlen
gemischt, solange dort nur Test- und Dispatch-Läufe stehen: eine Quelle, die
etwas anderes zählt als sie vorgibt, ist schlimmer als eine fehlende. Sobald die
produktiven Loops über `claude-run.sh` laufen, wird sie zur Hauptquelle.

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
| maintainer | 31 | 12 | 17 |
| prototyper | 21 | 9 | 12 |
| sweeper | 9 | 4 | 5 |
| **Total** | **86** | | |

## 3. Produktive Rechenzeit je Rolle

Nur gelieferte Läufe (467 Läufe, 64.5 Stunden).
Die Spalte "Delta Null" zählt Läufe, die selbst melden, dass es nichts Neues gab.

| Rolle | Stunden | Läufe | davon Delta Null | Anteil Zeit |
|---|---|---|---|---|
| grower | 0.3 | 2 | 0 | 0 % |
| maintainer | 0.1 | 1 | 0 | 0 % |
| prototyper | 55.7 | 398 | 17 | 86 % |
| sweeper | 8.6 | 66 | 2 | 13 % |

Bezugsgrösse: 1440 Stunden Wandzeit (zwei Stationen, 30 Tage). Die produktive
Zeit entspricht 4.5 % davon. Der Hub ist also weit von einer
Vollauslastung entfernt; das Problem ist nicht die Menge, sondern die Verteilung.

## 4. Ertrag je Loop

Geliefert = Läufe mit rc=0. Delta Null = Lauf meldet selbst nichts Neues.
Dateien = geänderte Dateien im Zielbereich des Loops laut git.

Die Dateispalte ist ein **Bereichs-Indikator, kein Urheberschaftsnachweis**.
Sie zählt alles, was im Zielbereich geändert wurde, unabhängig davon, wer es
geändert hat. Zwei Folgen, die man kennen muss, sonst liest man die Spalte
falsch: bei geteiltem Zielbereich (normen-nacht und normen-mini, twin-mail und
twin-fidelity, wettbewerbs-dna und -nachbrenner) steht bei beiden derselbe Wert,
er ist nicht aufteilbar und nicht addierbar. Und ein stillgelegter Loop kann
trotzdem eine hohe Zahl tragen, weil andere im selben Bereich gearbeitet haben.

Verdächtig ist die Kombination: viele Läufe, wenig Stunden, Delta-Null-Meldungen.

| Loop | geliefert | Delta Null | Stunden | Dateien im Zielbereich |
|---|---|---|---|---|
| energie-training | 69 | 0 | 12.6 | 1963 |
| planungsgrundlagen-training | 64 | 0 | 9.4 | 1019 |
| normen-training-nacht | 28 | 1 | 8.2 | 2239 |
| baurecht-buch-training | 32 | 0 | 5.8 | 1110 |
| normen-training-mini | 33 | 0 | 5.1 | 2239 |
| twin-fidelity-review | 33 | 1 | 5.0 | 832 |
| twin-mail-training | 33 | 1 | 4.3 | 832 |
| wettbewerbs-dna-training | 33 | 1 | 3.6 | 715 |
| grobkosten-training | 43 | 3 | 2.9 | 199 |
| spec-training | 22 | 1 | 2.6 | 306 |
| immobewertung-training | 23 | 2 | 2.5 | 444 |
| wettbewerbs-layer-nachbrenner | 15 | 4 | 1.5 | 715 |
| synobsis-batch-nacht | 36 | 5 | 0.7 | 2806 |
| syn02-spec-anstoss | 2 | 0 | 0.3 | - |
| wettbewerbs-dna-reaktivierung | 1 | 0 | 0.1 | - |

## 6. Messgrenzen (bewusst ausgewiesen)

- Erfasst sind ausschliesslich Läufe über den vollgas-runner. NICHT erfasst: die
  App-Scheduled-Task-Flotte (Morgenbriefings, Nacht-Lernläufe), die launchd-
  Trainings auf dem Mac Mini und alle interaktiven Sitzungen. Die Bilanz bildet
  den automatisierten Dauerbetrieb ab, nicht die Gesamtlast.
- Das Liefer-Delta zählt geänderte Dateien im Zielbereich eines Loops, nicht
  deren Wert und nicht deren Urheber. Zehn Zeilen Tippfehlerkorrektur zählen wie
  ein neuer Artikel, und eine fremde Änderung im selben Ordner zählt mit. Es ist
  ein Indikator für "im Bereich passiert etwas", nicht für "dieser Loop liefert".
  Wer Urheberschaft braucht, muss die Loops ihre Commits selbst zeichnen lassen.
- Loops ohne hinterlegten Zielpfad im Register erscheinen mit "-". Das ist keine
  Null, sondern "nicht gemessen".
- Delta Null stammt aus dem Selbstbericht des Laufs. Ein Lauf, der abgeschossen
  wird, meldet gar nichts und ist von einem stillen gesunden Lauf nicht zu
  unterscheiden (Rule auto-verbesserungen 260729).

Erzeugt von scripts/rollen-bilanz.sh
