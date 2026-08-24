# Brandschutz-Lücke in `batteriespeicher` geschlossen: bestehendes VKF-Destillat nie ins Wiki eingearbeitet

Datum: 2026-08-24 · Lauf: interaktive Session, Run-Name `mschub749`, parallel zu zwei weiteren
Läufen desselben Prompts (`mschub741`, `mschub745`)

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Anschluss an den CHANGELOG-Stand des Tages (zuletzt: AHB-Merkblatt
386 Storensteuerung destilliert, 394 Wärmepumpen-Messkonzept als bildbasiert dokumentiert; «Für
den nächsten Lauf» nannte die vier noch offenen AHB-Fachmerkblätter 265/385/389/393).

## Betriebslage (wichtig für die Einordnung dieses Laufs)

Beim Start liefen laut `ps aux` mindestens zwei weitere parallele Claude-Prozesse mit demselben
Prompt (Run-Namen `mschub741` seit 08:37, `mschub745` seit 08:43; dieser Lauf `mschub749` seit
08:45). Erste Prüfung von `git status` zeigte bereits uncommittete neue Destillate für 265, 385,
389 — die Siblings hatten den naheliegendsten nächsten Schritt (die vier benannten AHB-
Fachmerkblätter) bereits übernommen. Um Kollisionen auf denselben Dateien zu vermeiden, wurde
bewusst ein anderer, unblockierter Punkt gewählt statt denselben Weg zu verdoppeln.

## Vorgehen

1. `outputs/` und `CHANGELOG.md` nach dem aktuellsten Stand durchsucht, den letzten Report gelesen
   (`2026-08-24_ahb-beleuchtung-2025-nachfolgesystem.md`) sowie den QUESTIONS.md-Abschnitt, der
   den 389-Fund eines Siblings bereits dokumentierte.
2. Das neue Destillat `destillate/ahb-merkblatt-389-lithium-ionen-batterien-lagerung.md` gelesen —
   darin ein Querverweis auf `[[batteriespeicher-heimspeicher-pv-ch]]`, aber keine Einarbeitung in
   den zugehörigen Wiki-Artikel `wiki/batteriespeicher.md`.
3. `wiki/batteriespeicher.md` vollständig gelesen: **kein einziger Brandschutz-Abschnitt**, obwohl
   die KB seit Run 94 (25.07.2026) das primärquellenbelegte `[[vkf-lithium-batteriespeicher-
   brandschutz]]` führt (VKF-Brandschutzmerkblatt 2005-15 + FAQ 2005-01, vollständig gelesen,
   `established`). Eine echte, seit vier Wochen bestehende Bestandslücke — das wichtigste
   Bauherren-Produkt zum Thema verschweigt bislang die Brandschutzanforderungen.
4. Beide Primärquellen (VKF-Destillat, neues AHB-389-Destillat) gegen den Wiki-Artikel abgeglichen
   und zusammengeführt.

## Ergebnis

**`wiki/batteriespeicher.md`:** neuer Abschnitt «Brandschutz / sichere Lagerung» mit Tabelle nach
Speicherkapazität (< 15 kWh HL I, 15-100 kWh HL II EI 60/EI 30 bei LFP, > 100 kWh HL III), Hinweis
auf die LFP-Chemie-Abfrage in der Ausschreibung (Erleichterung gilt nur für LFP, ~80 % Marktanteil)
und einen Absatz zum ergänzenden AHB-Merkblatt 389 für kleinere mobile Akkus (Velo-/E-Bike-
Ladestationen, Summenbildung bei Mehrfach-Ladeplätzen). Frontmatter nachgeführt: `sources`,
`links` um beide Destillate ergänzt, `datenstand` korrigiert auf **1.6.2021** (ältester zitierter
Stand — VKF-Grundlagentabelle —, nicht mehr nur 2025 Marktzahlen, Rule-Vorgabe «ältester
Datenstand der zitierten Quellen»).

**`wiki/BAUHERREN-FAQ.md` F38:** derselbe Brandschutz-Kern kompakt ergänzt (2,5 m Mindestabstand,
EI 30/60, Chemie in die Ausschreibung), damit die Kern-FAQ-Antwort nicht auf den Themenartikel
verweisen muss, um die wichtigste Sicherheitsanforderung zu nennen.

**Nebenfund:** Das neue `[[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]]` behauptete in
seinen «Offenen Punkten», das VKF-Brandschutzmerkblatt sei «in dieser KB nicht vorhanden» — zum
Bearbeitungszeitpunkt bereits falsch. Richtiggestellt: Verweis mit Kernzahlen, plus Hinweis, dass
die 15-kWh-Schwelle des AHB-Merkblatts und die HL-I/II-Grenze des VKF-Merkblatts **dieselbe Zahl
aus verschiedenen Regelwerken** sind — kein Widerspruch, sondern gegenseitige Bestätigung.

Der Sibling-Lauf, der 265/385/389/393 destillierte, hat diese Korrektur im eigenen CHANGELOG-
Eintrag (24.08.24d) korrekt zur Kenntnis genommen («beim `git diff`-Check sichtbar, inhaltlich
korrekt, keine eigene Korrektur nötig») — kein Konflikt entstanden.

## Eingearbeitet

- `destillate/ahb-merkblatt-389-lithium-ionen-batterien-lagerung.md` — Offene-Punkte-Korrektur,
  Backlink auf `[[vkf-lithium-batteriespeicher-brandschutz]]` ergänzt.
- `wiki/batteriespeicher.md` — neuer Abschnitt, Frontmatter (`sources`, `links`, `datenstand`),
  Backlinks-Zeile.
- `wiki/BAUHERREN-FAQ.md` F38 — Brandschutz-Bullet ergänzt.
- `wiki/QUESTIONS.md` — neuer datierter Abschnitt (mit Korrektur einer zwischenzeitlich durch
  einen Sibling-Lauf überholten Aussage zu Merkblatt 393).
- `CHANGELOG.md` — Eintrag 2026-08-24e oben angefügt (vor 24.08.24d, das während der eigenen
  Bearbeitung durch einen Sibling committet wurde).

## Für den nächsten Lauf

E-R230-2 (Konsolidierungsentscheid ecoBKP) bleibt Raphael vorzulegen. 393/394 (Bühnentechnik/
Wärmepumpen-Messkonzept) bleiben bildbasiert — ein OCR-/Bildlese-Werkzeug wäre nötig, keine
erneute Textextraktion. Die in Dok. 229 referenzierte AHB-Fachmerkblatt-Liste ist damit bis auf
393/394 vollständig abgearbeitet. A-BLIND-Bestand unverändert (rund 20 von ~40 Kandidaten im
18-29-Backlink-Bereich weiterhin einzeln gegen ihre Primärquelle zu prüfen) — in diesem Lauf
bewusst nicht berührt, kein neuer Fortschritt dort.

`git diff --numstat` nach jedem Schreibvorgang geprüft: `destillate/ahb-merkblatt-389-lithium-
ionen-batterien-lagerung.md` +10/-3, `wiki/batteriespeicher.md` +30/-4, `wiki/BAUHERREN-FAQ.md`
+5/-0, `wiki/QUESTIONS.md` +80/-0, `CHANGELOG.md` +112/-0 — durchgehend additiv/präzisierend,
keine Löschung von Bestand. Vier weitere Dateien (`destillate/INDEX.md`, `destillate/
batteriespeicher-heimspeicher-pv-ch.md`, `destillate/elektrosmog-informationsblatt-ahb-ewz.md`,
`destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md`, `wiki/gebaeudetechnik-
pflichtenheft.md`) wurden im selben Zeitfenster durch Sibling-Läufe verändert — vorab und danach
per `git status`/`git diff --numstat` geprüft, keine Überschneidung mit den eigenen Bearbeitungen.
