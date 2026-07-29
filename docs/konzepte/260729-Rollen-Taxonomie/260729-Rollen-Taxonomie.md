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

### Lauf-Qualität, und warum die erste Fassung dieser Bilanz falsch war

Die erste Fassung zählte jede ENDE-Zeile als Lauf und jede Sekunde als Rechenzeit
und kam zur Aussage «10'501 Läufe, 97 Stunden, 90 % Prototyper». Die Nachmessung
zeigt, dass diese Aussage Betriebsstörungen als Auslastung ausgewiesen hat:

| Klasse | Läufe | Stunden | Anteil | Ø Dauer |
|---|---|---|---|---|
| geliefert (rc=0) | 467 | 64.5 | 66 % | 498 s |
| abgewürgt (Stall-Killer) | 17 | 19.8 | 20 % | 4'188 s |
| Fehlstart | 10'017 | 13.4 | 14 % | 5 s |

Von 10'501 Läufen brachen also 10'017 nach durchschnittlich fünf Sekunden ab,
gegen ein leeres Kontingent oder ein abweisendes Gate. Und 17 hängende Läufe
verbrannten je rund 70 Minuten, bis der Stall-Killer sie beendete: ein Fünftel
der gesamten Zeit, ohne ein einziges Ergebnis.

Der Stall-Killer-Anteil war vorher unsichtbar und ist der grösste einzelne
Hebel, der in dieser Messung sichtbar wurde.

### Produktive Rechenzeit je Rolle (nur gelieferte Läufe)

prototyper 59.3 Stunden und 92 %, sweeper 5.0 Stunden und 8 %, grower 0.3
Stunden, maintainer 0.1 Stunden, builder 0.

Die Schieflage bleibt also bestehen, sie ist sogar etwas deutlicher. Sie beruht
aber jetzt auf 467 echten Läufen statt auf zehntausend Fehlstarts.

Bezugsgrösse: 1'440 Stunden Wandzeit (zwei Stationen, 30 Tage). Die produktive
Zeit entspricht 4.5 % davon. Der Hub ist weit von einer Vollauslastung entfernt.
Das Problem ist nicht die Menge, sondern die Verteilung.

Zwei Einordnungen:

- Builder mit 0 % ist keine Fehlallokation, sondern Bauart. Die Builder-Skills
  arbeiten im interaktiven Betrieb mit Raphael, nicht in Dauerschleifen.
- Die Bilanz erfasst nur Läufe über den vollgas-runner. Die App-Scheduled-Tasks
  und die launchd-Trainings laufen daran vorbei, ihre Zeit fehlt.

### Ertrag je Loop

Der grösste produktive Posten ist `energie-training` mit 12.6 Stunden aus 69
gelieferten Läufen, gefolgt von `planungsgrundlagen-training` mit 9.4 Stunden.
`grobkosten-training`, in der ersten Fassung als grösster Einzelposten mit 3'956
Läufen ausgewiesen, kommt tatsächlich auf 43 gelieferte Läufe und 2.9 Stunden.
Die 3'956 waren fast vollständig Fehlstarts.

Auffällig bleibt `synobsis-batch-nacht`: 36 gelieferte Läufe, davon 5 mit
selbstgemeldetem Delta Null, bei einer stillgelegten und laut Register saturierten
Wissensbasis.

### Nutzung (Reichweite der lokalen Transcripts)

Von 48 Skills (ohne die zwei parkierten) wurden 24 aufgerufen und 24 nie. Von der
Kälte sind 22 erwartet, weil der Skill anlassgebunden ist oder durch einen
Agenten, ein Script oder eine Rule ersetzt wird. Zu klären bleiben zwei:
`masterclass` und `telesales`.

Gemessen wird, ob die SKILL.md geladen wurde, also ob die Anleitung gebraucht
wurde. Eine Leistung kann auch ohne Skill-Load entstehen, etwa über einen Agenten.

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
2. `masterclass` und `telesales`: die beiden einzigen Skills ohne Anlass-
   Erklärung. Die Empfehlung steht im Register und lautet in beiden Fällen
   behalten, nicht stilllegen, weil sie zu den zwei schwächsten Rollen gehören.
   Einen Grower zu streichen, während Grower 0.3 Stunden von 64.5 hält,
   verstärkt genau die diagnostizierte Schieflage.
3. Die 17 abgewürgten Läufe: ein Fünftel der gesamten Zeit geht an Hänger, die
   erst nach 70 Minuten beendet werden. Kürzere Stall-Schwelle oder Ursachen-
   suche im betroffenen Loop ist der grösste einzelne Hebel dieser Messung.
4. Die 10'017 Fehlstarts: sie kosten kaum Zeit, machen aber jede Lauf-Zählung
   unbrauchbar und deuten auf einen Runner, der gegen ein leeres Kontingent
   anrennt statt zu warten.
5. `synobsis-batch-nacht` läuft trotz Stilllegungsvermerk und meldet Delta Null.
6. Ob die Grower-Achse aus Abschnitt 6 als Geschäftsmodell weiterverfolgt wird.

## 8. Ablage

Kanonisch auf dem NAS unter `docs/konzepte/260729-Rollen-Taxonomie/`. DOCX und PDF
sind bewusst nicht erzeugt, da es sich um ein internes Steuerungsdokument handelt
und nicht um ein Erzeugnis mit Aussenwirkung. Auf Wunsch wird beides nachgeliefert.

## 9. Nachtrag 29.07.2026 — die Rule ist eingedampft, dieses Dokument trägt die Belege

**Anlass, und er ist ein Präzedenzfall.** Der Wissens-Chef hat in Run 20 (Cross-KB-Lauf) einen
Widerspruch im Hub belegt: `rules/rollen-taxonomie.md` stand im @-Import von `CLAUDE.md` und lud
damit in jede Session, obwohl sie die 90-%-Rechenzeit-Messung, «10'501 Läufe / 10'017 Fehlstarts /
17 Hänger», drei Loop-Scripts und zwei datierte Vorfall-Lehren trug. Genau diese Klasse schliesst
die Kontext-Diät-Regel **vom selben Tag** aus (`rules/auto-verbesserungen.md`, Eintrag
260719-Nachtrag: «Belege, Messwerte und Vorfallschroniken sind nie Grundkontext»). Der Hub
widerlegte damit eine zwei Tage alte eigene Regel.

**Entscheid Raphael (29.07.2026): Variante A2 — eindampfen statt aus dem Import nehmen.** Die
Governance-Frage, ob Baustein-Governance in jeder Session gilt, bleibt damit unangetastet; nur die
Belege wandern. Umgesetzt:

| Inhalt | Vorher | Neu |
|---|---|---|
| Messwerte, Erstmessung, Zielbänder, Rollendefinition | Rule (importiert) | **dieses Dokument**, Abschnitte 2–5 (lag hier schon vor) |
| Takt-/Drossel-Entscheide, Radar-Auswertung (Kälte ohne Statuseintrag), Schutzmechanik-Selbsttest, Instrumenten-Tabelle | Rule (importiert) | `rules/betrieb-chronik.md`, Abschnitt «260729b» (nicht importiert) |
| Rollenzuordnung, Prototyper-Prüfung, kein eigenmächtiges Drosseln, Ertrag statt Läufe | Rule | Rule (bleibt importiert, das ist die Kurzregel) |

**Gemessene Wirkung, nicht geschätzt.** Rule 3'559 → 1'911 B (gespart 1'648 B, 46 %).
Grundkontext 96'946 → 95'298 B, entspricht ~24'236 → ~23'824 Token bei 20 @-Importen.
Messweg: `stat -f%z` über `CLAUDE.md` plus alle Dateien aus `grep '^@/Volumes' CLAUDE.md`
(CLAUDE.md selbst zählt mit). **Kein Inhalt gelöscht, nur verlagert.**

**Zwischenschritt, der eine Lehre trägt.** Die erste eingedampfte Fassung sparte nur 874 B, weil
sie zwölf Zeilen Meta-Erklärung einbaute, um dreissig Zeilen Inhalt auszulagern — die Erklärung,
*warum* verlagert wurde, ist selbst Vorfall-Chronik und gehört nach derselben Regel nicht in den
Grundkontext. Nach dem Kürzen dieses Blocks verdoppelte sich die Ersparnis. **Regel daraus: beim
Eindampfen einer importierten Rule gehört die Begründung des Eingriffs ins Konzeptdokument oder
CHANGELOG, nie in die Rule selbst.** Sonst frisst die Dokumentation der Diät die Diät auf.
