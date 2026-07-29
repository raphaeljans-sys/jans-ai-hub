# Rollen-Taxonomie für den JANS AI Hub

Stand 29.07.2026 · Kanonisch auf dem NAS · Umsetzung erfolgt

## 1. Anlass

Ein YouTube-Beitrag von @niklasvolland («Die 5 Tech-Jobs der Zukunft laut Claude
Code Erfinder») beschreibt fünf Rollen, die entstehen, wenn ein grosser Teil der
Ausführung an Maschinen geht:

1. Prototyper, entwickelt unzählige Ideen
2. Builder, macht daraus schnell ein echtes Produkt
3. Sweeper, schleift alles fein und verständlich
4. Grower, entwickelt es weiter, dass Menschen es lieben
5. Maintainer, sorgt dafür, dass alles skaliert

Das Format ist Social Media, keine validierte Theorie. Als Diagnose-Raster taugt
es trotzdem, weil es eine Achse benennt, die im Hub bisher fehlte: die zwischen
Erzeugen und Wirksamwerden. Die Rollen werden deshalb nicht als neue Bausteine
gebaut, sondern als Buchhaltung über den bestehenden Harness gelegt.

## 2. Die fünf Rollen im Hub-Kontext

| Rolle | Im Hub bedeutet das | Typische Bausteine |
|---|---|---|
| prototyper | erzeugt Neues, Varianten, Optionen, neues Wissen | machbarkeit, volumenstudie, wettbewerb, alle Trainings-Loops |
| builder | macht daraus ein verbindliches Erzeugnis | ausschreibung, werkvertrag, kostenschaetzung, immobilienbewertung |
| sweeper | schleift fein und verständlich, verdichtet | korrektur, twin, wissens-destillat, masterclass |
| grower | sorgt dafür, dass es genutzt und geschätzt wird | marketing, website-content, telesales, synergie-orchestrator |
| maintainer | sorgt dafür, dass es läuft und skaliert | heartbeat, logbuch, hub-chef, zahlungsabgleich, alle Monitore |

### Zuordnungsregel

Massgeblich ist, was der Baustein mit dem Gegenstand macht, nicht sein Fachgebiet:

- Erzeugt er neue Möglichkeiten, ist er Prototyper. Auch ein Lern-Loop, der neues
  Wissen produziert, ist Prototyper, nicht Maintainer.
- Erzeugt er ein Ergebnis, auf das sich jemand verlässt, ist er Builder.
- Verbessert er ein bestehendes Erzeugnis, ohne es inhaltlich zu erweitern, ist er
  Sweeper.
- Bringt er Bestehendes zu Menschen oder misst deren Reaktion, ist er Grower.
- Hält er den Betrieb aufrecht, ist er Maintainer.

Die Zuordnung ist im Register `logbuch/rollen/rollen-map.tsv` festgehalten. Es ist
die kanonische Quelle und wird von Hand gepflegt, nicht geraten.

## 3. Instrumente

| Instrument | Rolle | Zweck |
|---|---|---|
| `scripts/rollen-bilanz.sh` | Messung | verteilt Bestand und verbrauchte Rechenzeit auf die fünf Rollen |
| `scripts/nutzungs-radar.sh` | Grower | misst, welche Skills tatsächlich aufgerufen werden, und liefert die Kaltliste |
| `scripts/schutzmechanik-selbsttest.sh` | Maintainer | prüft die Schutzmechaniken auf Freigabe- und Abweisungspfad |
| `logbuch/rollen/rollen-map.tsv` | Datenschicht | Zuordnung Baustein zu Rolle |
| `rules/rollen-taxonomie.md` | Verhalten | verankert die Rolle als Pflichtfeld bei jedem neuen Baustein |

## 4. Befund der Erstmessung vom 29.07.2026

### Bestand (81 Bausteine)

maintainer 32 %, prototyper 27 %, builder 23 %, sweeper 10 %, grower 7 %.

Der Bestand wirkt ausgewogener als erwartet. Die Schieflage liegt nicht darin,
was gebaut wurde, sondern darin, was arbeitet.

### Verbrauchte Rechenzeit (30 Tage, 10'501 Läufe, 97 Stunden)

prototyper 90 %, sweeper 9 %, grower und maintainer zusammen unter 1 %, builder 0 %.

Die Leseweise: der Teil des Hub, der ohne Raphael läuft, arbeitet fast
ausschliesslich als Prototyper. Er erzeugt Wissen. Er verdichtet kaum, er
misst nicht, ob das Erzeugte gebraucht wird, und er pflegt sich nicht selbst.

Zwei Einordnungen, damit die Zahl nicht überinterpretiert wird:

- Builder mit 0 % ist keine Fehlallokation, sondern Bauart. Die Builder-Skills
  arbeiten im interaktiven Betrieb mit Raphael, nicht in Dauerschleifen.
- Die Bilanz erfasst nur Läufe über den vollgas-runner. Die App-Scheduled-Tasks
  und die launchd-Trainings laufen daran vorbei, ihre Zeit fehlt. Die Bilanz
  bildet den automatisierten Dauerbetrieb ab, nicht die Gesamtlast.

Der grösste Einzelposten ist `grobkosten-training` mit 3'956 Läufen.

### Nutzung (Reichweite der lokalen Transcripts)

Von 50 Skills wurden 24 tatsächlich aufgerufen, 26 nie. Gemessen wird, ob die
SKILL.md geladen wurde, also ob die Anleitung gebraucht wurde. Eine Leistung kann
auch ohne Skill-Load entstehen, etwa über einen Agenten. «Nie aufgerufen» heisst
darum: entweder überflüssig oder vergessen. Welches von beidem, entscheidet der
Mensch.

## 5. Quoten-Regime (Vorschlag, noch nicht wirksam)

Heute wird pro Loop gedrosselt und entdrosselt, weshalb die Drossel-Diskussion
seit dem 14.07. im Kreis läuft. Eine Quote beantwortet die Frage «welchen Loop
schalte ich ab» strukturell:

| Rolle | Zielband Rechenzeit | Begründung |
|---|---|---|
| prototyper | höchstens 50 % | Wissenserzeugung bleibt wichtig, darf aber nicht alles verbrauchen |
| sweeper | mindestens 20 % | Verdichtung ist die Gegenkraft zum Wachstum des Bestands |
| grower | mindestens 10 % | ohne Nutzungssignal arbeiten die anderen Rollen blind |
| maintainer | mindestens 10 % | der Betrieb hat sich zweimal selbst überrascht |
| builder | ohne Quote | arbeitet interaktiv, nicht in Loops |

Wichtig: Die Quote drosselt nichts von selbst. Sie wird gemessen und berichtet,
die Entscheidung bleibt bei Raphael. Das ist die Lehre aus dem 25.07., als der
Radar eigenmächtig drosselte.

## 6. Dieselbe Achse für JANS als Büro

Die Taxonomie ist auf Software gemünzt, beschreibt aber die Architektur-
Wertschöpfung fast eins zu eins:

| Rolle | Im Architekturbüro |
|---|---|
| prototyper | Studie, Wettbewerb, Variantenuntersuchung |
| builder | Vorprojekt, Baueingabe, Ausschreibung |
| sweeper | Ausführungsplanung, Detail, Qualitätssicherung |
| grower | Bewirtschaftung, Nutzerfeedback, Optimierung im Betrieb |
| maintainer | Betrieb, Instandhaltung, laufende Kontrolle |

JANS verdient heute in den Stufen eins bis drei, also mit Einmalhonoraren. Die
Stufen vier und fünf sind die, die Asset Manager, Bewirtschafter und FM-Anbieter
abschöpfen, und zwar mit laufendem Ertrag. Der Hub hat die Werkzeuge dafür bereits
(`ankaufspruefung`, `immobilienbewertung`, `kostenkontrolle`,
`unternehmerkontrolle`), verkauft sie aber als Projektleistung statt als
Dauerleistung. Das ist der Geschäftsmodell-Hinweis der Taxonomie und gehört vor
den `synergie-orchestrator`.

## 7. Offene Entscheide für Raphael

1. Quoten-Regime aus Abschnitt 5 verbindlich setzen oder als reine Beobachtung
   laufen lassen.
2. Kaltliste abarbeiten: welche der 26 nie aufgerufenen Skills werden behalten,
   zusammengelegt oder stillgelegt.
3. `grobkosten-training` mit 3'956 Läufen prüfen, ob der Ertrag den Anteil
   rechtfertigt.
4. Ob die Grower-Achse aus Abschnitt 6 als Geschäftsmodell weiterverfolgt wird.

## 8. Ablage

Kanonisch auf dem NAS unter `docs/konzepte/260729-Rollen-Taxonomie/`. DOCX und PDF
sind bewusst nicht erzeugt, da es sich um ein internes Steuerungsdokument handelt
und nicht um ein Erzeugnis mit Aussenwirkung. Auf Wunsch wird beides nachgeliefert.
