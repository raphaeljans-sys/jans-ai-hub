# QUESTIONS-Abarbeitung (24.08.2026, ~06:30 Uhr) — Q1-Q4-Quellenfrage SIA 242/KISPI geschlossen

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` zitierfähig.
CHANGELOG und Report des letzten Laufs (SIA-Sweep, sechste unabhängige Sättigungs-Verifikation,
~06:20 Uhr) zuerst gelesen.

**Kollisionscheck:** `ps aux` geprüft. Ein Prozess mit identischem Auftragstext läuft parallel
(gleicher Lauf-Name) — kein Konkurrenzlauf. Nach jedem Schreiben `git diff --numstat` geprüft,
keine fremde Zeile verändert.

## Bestandsaufnahme

`wiki/QUESTIONS.md` ist mit 5480 Zeilen und ~30 unmarkierten `[ ]`/`[~]`-Checkboxen deutlich
grösser als die reinen Abschnittstitel vermuten lassen (viele Titel klingen offen, sind aber
im Fliesstext bereits geschlossen). Systematischer Scan auf tatsächliche offene Checkboxen statt
nur Abschnittstitel. Die meisten Kandidaten fielen in drei Klassen, die dieser Lauf bewusst NICHT
angefasst hat:

1. **Bring-Schuld Raphael** (Normenkauf: SIA 380/1, 385/1, 266/1, 118:2013, VA 105-01, SIA 242:2012
   u.a.) — nicht selbständig lösbar.
2. **Strukturentscheide Raphael** (N60-1 Doppelbestand-Merge, N60-2 Methodik-Pflicht-14) — bereits
   korrekt in `logbuch/fristen.md` erfasst, keine Nacharbeit nötig.
3. **Bereits andernorts geschlossen, nur Checkbox nicht nachgezogen** — z.B. die Z1/Z2-Koeffizienten
   des SIA-103-Grundfaktors (Zeile ~4610): bereits am selben Tag früher geschlossen
   (`destillate/sia-honorar-hilfsmittel.md`, established, Z1=0.075/Z2=7.23 für SIA 103, Datenstand
   Z-Werte-Blatt 2015). Eigene unabhängige Web-Recherche bestätigte denselben Befund von der
   Gegenseite: das öffentlich gehostete **SIA 103-K:2018 «Kalkulationshilfe zur Ordnung SIA 103»**
   (`irbnet.de/daten/rswb/19059019871.pdf`, per `pdftotext -layout` gelesen) bestätigt wortgleich
   Ziff. 7.2.2, dass Z1/Z2 «aus statistischen Reihen abgeleitet und durch den SIA periodisch
   veröffentlicht» werden — die Werte stehen nicht im Kalkulationshilfe-Dokument selbst. Ein
   KBOB-Zweitbeleg («Vergleich Z-Werte des SIA») wurde identifiziert, aber `kbob.admin.ch` lieferte
   auf allen getesteten Pfadvarianten konsistent HTTP 502 (vermutlich Bot-Schutz an der Edge) — kein
   neuer Bring-Schuld-Eintrag, da der Sachverhalt bereits über das established-Destillat gedeckt ist.

## Genuiner, bearbeiteter Punkt

`wiki/QUESTIONS.md`, Abschnitt SIA 242 (Zeile ~3905): Restfrage «Quelle der Q1-Q4-Stufen für die
KISPI-Fachfrage LBW-Beschichtung bleibt offen (vermutlich Hersteller- oder DIN/EN-Quelle, nicht
SIA)».

**Vorgehen:**
1. Bestand geprüft: `destillate/crb-merkblatt-16d-06-spachtelungen-weissputze.md` (CRB/SMGV/FRMPP,
   Ausgabe 01/2006, status `speculative`) führt bereits eine Q1-Q4-Systematik für Gipsplatten und
   nennt in Ziff. 6, S. 4 als eine seiner drei Quellen wörtlich «Merkblatt Nr. 2 ‹Verspachtelung
   von Gipsplatten – Oberflächengüten› der deutschen Industriegruppe Gipsplatten».
2. Per WebSearch identifiziert und per WebFetch + `pdftotext -layout` **vollständig gelesen** (12
   Seiten): **«Verspachteln von Gipsplatten — Klassifizierung der Oberflächenqualitäten»**,
   Gemeinschaftsdokument von **Eurogypsum** und **UEEP** (Vereinigung der europäischen Gipser-,
   Trockenbau- und Stuckateur-Verbände), frei zugänglich unter
   `eurogypsum.org/wp-content/uploads/2015/04/EUROGYPSUMFINSHINGDE.pdf`, PDF-Metadaten
   CreationDate 11.03.2010. Definiert wortgleich dieselben vier Stufen Q1 (Grundverspachtelung/
   Stossfugen) bis Q4 (vollflächiges Überziehen, Schichtdicke > 1 mm), Verweis für
   Spachtelmaterialien auf **EN 13963**.
3. **Ergebnis: nicht SIA, keine CH-Norm.** Eine europäische Branchenvereinbarung
   (Eurogypsum/UEEP), in der Schweiz über CRB/SMGV/FRMPP als NPK-Devisierungsgrundlage
   übernommen — die ursprüngliche Vermutung «Hersteller- oder DIN/EN-Quelle» war in der Substanz
   richtig (EN-Bezug über EN 13963), die Trägerschaft ist aber eine Verbands-, keine
   DIN-Normungsquelle.
4. **Ehrlich benannte Einschränkung:** die exakte deutsche Quelldatei («Merkblatt Nr. 2 der
   Industriegruppe Gipsplatten») selbst wurde nicht aufgefunden/gelesen. Die Gleichsetzung mit
   dem Eurogypsum/UEEP-Dokument stützt sich auf Titel- und Inhaltsübereinstimmung (identische
   Vierstufigkeit, identische Kernformulierungen), nicht auf Dateiidentität — als belegte, aber
   nicht letztbewiesene Zuordnung gekennzeichnet.

## Nachgeführt

- `wiki/QUESTIONS.md`: additiver Nachtrag am bestehenden SIA-242-Eintrag (23 Zeilen, 0 Löschungen).
- `destillate/crb-merkblatt-16d-06-spachtelungen-weissputze.md`: additive Provenienz-Fussnote
  (14 Zeilen, 0 Löschungen).
- `destillate/sia-242-v1994.md`: bestehender «offen»-Absatz durch «Quelle geklärt»-Verweis ersetzt
  (8 Zeilen neu, 4 Zeilen ersetzt — Diff einzeln gegengelesen, ausschliesslich die eigene
  alte Formulierung betroffen).
- `CHANGELOG.md`: neuer Kopf-Eintrag (58 Zeilen, additiv).
- Kein neues Destillat angelegt — das CRB-Merkblatt bleibt die praxisrelevante CH-Fundstelle,
  das Eurogypsum/UEEP-Dokument ist Beleg/Provenienz, kein eigenständiger KB-Gegenstand.

## Nicht geleistet / weiterhin offen

- SIA 242:2012 (heute gültige Ausgabe) bleibt Bring-Schuld Raphael.
- Das exakte deutsche «Merkblatt Nr. 2 der Industriegruppe Gipsplatten» wurde nicht beschafft —
  bei Bedarf eigener Punkt, aber kein Praxisnachteil, da der Eurogypsum/UEEP-Beleg inhaltlich
  hinreichend ist.
- Die übrigen ~29 offenen Checkboxen wurden gesichtet, aber nicht bearbeitet (Bring-Schuld/
  Strukturentscheid-Klassen, siehe oben) — kein weiterer Sachfortschritt ohne Raphaels
  Kauf-/Freigabeentscheid oder externen Zugang möglich.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Werte siehe oben je Datei), Diffs
einzeln gegengelesen — ausschliesslich eigene Zeilen verändert, nichts vom parallelen Prozess
angetastet. Kein `git commit`/`push`/`pull`/`rebase` über den SMB-Mount ausgeführt.
