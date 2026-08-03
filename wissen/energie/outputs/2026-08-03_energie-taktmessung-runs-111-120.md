---
titel: "Energie — Taktmessung Runs 111-120 (Entscheidgrundlage Rücktaktung)"
datum: 2026-08-03
typ: messung
auftrag: Entscheid Raphael 03.08.2026 — Rücktaktungsfrage auf echtem Liefer-Delta beurteilen
---

# Taktmessung KB Energie — Runs 111 bis 120

## Auftrag und Methode

Die PROGRAMM.md trägt seit der Intensivphase die offene Frage, ob der Loop ins Nachtfenster
zurückgetaktet werden soll. Sie wurde bisher aus Lauf-Reports heraus beantwortet, die den
Zustand jeweils selbst beurteilten. Diese Messung erhebt stattdessen das **Liefer-Delta** über
zehn Läufe, gemäss Rule `auto-verbesserungen` Abschnitt Betrieb («Leerlauf am Liefer-Delta
messen, nie am Registry-lastRunAt»). Reine Zählung aus den Lauf-Reports und dem CHANGELOG,
Beurteilung getrennt davon.

## Ergebnis: keine Sättigung — der Loop liefert

| Grösse | Wert |
|---|---|
| Neue Destillate über Runs 111–120 | **+39** (Stand 173 → 212) |
| Neue FAQ-Antworten über Runs 111–120 | **+39** (Stand 157 → 196) |
| Läufe mit null neuen Destillaten UND null neuen FAQ | **0 von 10** |
| Läufe, die sich selbst als gesättigt bezeichnen | **0 von 10** |
| Schwächster Lauf | Run 115: 2 neue Destillate, 1 neue FAQ |
| Stärkste Läufe | Run 119 und 120: je 7 neue Destillate |

Die Lauf-Reports formulieren durchgehend die **Gegenaussage** zur Sättigungsdiagnose, mit
fortlaufender Zählung von der «ersten» bis zur «neunten Bestätigung in Folge».

**Wichtige Unterscheidung, die in der Diskussion mehrfach verwischt wurde:** Erschöpft ist seit
Run 65 das **PDF-Primärquellen-Inventar** (PL-04 Energie auf SharePoint). Das ist eine Aussage
über die Quelllage, nicht über die Themenfelder der KB. Der Loop hat den Beschaffungspfad
seither auf Web-Primärquellen umgestellt und findet damit unvermindert neue Themen. Alle zehn
Reports halten diese Unterscheidung selbst sauber auseinander; die Rücktaktungsempfehlung
früherer Läufe hat sie vermischt.

## Empfehlung: Takt NICHT zurücknehmen

Auf dieser Datenlage gibt es keinen Grund für eine Rücktaktung. Ein Loop, der über zehn Läufe
39 neue belegte Destillate und 39 neue Bauherren-Antworten liefert und keinen einzigen Leerlauf
aufweist, ist das Gegenteil eines Drossel-Kandidaten. Die Rücktaktungsfrage in der PROGRAMM.md
sollte damit **geschlossen** werden, statt in jedem Report erneut aufzutauchen.

## Aber: eine echte Schwäche, die die Volumenzahlen verdecken

Die Messung legt ein anderes Problem frei, das nichts mit Sättigung zu tun hat — eine
**wachsende Verifikationsschuld**:

- **Statushebungen sind selten.** In acht der zehn Läufe wurde **keine einzige** Hebung auf
  `established` vollzogen; nur Run 119 weist zwei aus. Run 118 sagt es offen: «Keine
  Status-Hebung auf `established` in diesem Lauf — alle sechs neuen Destillate sind
  `emerging`.»
- **Der Bestand wächst also schneller als er verifiziert wird.** 39 neue Destillate stehen
  2 Hebungen gegenüber. Der `emerging`-Anteil der KB steigt strukturell.
- **Die Verifikationsstufe wurde bereits verkürzt.** Run 120 dokumentiert offen, das
  PROGRAMM.md-Vollprotokoll sei «aus Budgetgründen auf einen leichteren Spot-Check reduziert»
  worden. Das ist eine Abweichung von der seit 12.07.2026 verbindlichen Verifikations-Stufe.

**Empfehlung dazu:** Nicht den Takt drosseln, sondern das **Mischungsverhältnis** verschieben.
Konkret: jeden zweiten oder dritten Lauf als reinen **Konsolidierungslauf** fahren, der keine
neuen Themen aufnimmt, sondern bestehende `emerging`-Destillate adversarial verifiziert und
hebt. Das Volumen bleibt, die Qualität zieht nach. Ein Vorschlag zur konkreten Taktung des
Konsolidierungslaufs gehört Raphael vorgelegt, nicht selbst gesetzt.

## Nebenbefund: die Datierung der Lauf-Reports ist unzuverlässig

Die Messung musste Dateiname und echtes mtime getrennt erheben, weil beide auseinanderlaufen:

- **Runs 111–114** tragen alle den Dateinamen `2026-07-25`, obwohl Run 114 laut mtime erst am
  **26.07. um 00:05** geschrieben wurde.
- **Run 119** heisst `2026-07-29`, wurde laut mtime aber am **30.07. um 23:36** zuletzt
  geschrieben (teils erklärbar durch einen nachträglichen Korrekturvermerk in derselben Datei).

Ursache ist dasselbe Muster, das Rule 260730b beschreibt: das Arbeitsdatum wird aus dem Kontext
abgeleitet statt mit `date` gemessen. Folge: die Chronologie in `outputs/` ist nicht belastbar,
und jede Auswertung, die sich auf die Dateinamen stützt, zählt falsch. Das ist auch der Grund,
weshalb die Nebenläufe vom 25.–30.07. wiederholt auf veralteten Ständen aufsetzten.

**Empfehlung:** Im PROGRAMM.md verbindlich festhalten, dass der Report-Dateiname aus
`date "+%Y-%m-%d"` stammt, und beim Einstieg in den Lauf den jüngsten Stand über die **höchste
Run-Nummer** zu bestimmen, nicht über die Dateisortierung.

## Belege

Alle Zahlen stammen aus den Lauf-Reports `outputs/*_energie-run111.md` bis `*run120.md` und dem
`CHANGELOG.md` (Einträge der entsprechenden Läufe); die Stand-Werte sind die von den Reports
selbst ausgewiesenen «Destillate-Stand»/«FAQ-Stand»-Zeilen. Run 116 enthält eine
Nachzähl-Korrektur um eins nach unten (`destillate/INDEX.md` war fälschlich als Destillat
mitgezählt worden); diese Korrektur ist in den Ständen berücksichtigt.
