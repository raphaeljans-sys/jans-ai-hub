# Build-Anleitung Dokument-Layout (ausgelagert aus Rule dokument-layout-standard, 19.07.2026)

> ⚠ **Listen-Neuregelung 14.08.2026 noch nicht in der Vorlage abgebildet** (Synergie-Lauf 07,
> SYN-27): Rule `dokument-layout-standard.md` verbietet in ausgehenden Dokumenten
> Aufzaehlungs-Bullets und verlangt **nummerierte Positionen** (Themenblock 01, 02 …;
> Positionen 01.1, 01.2 … mit fetter Nummer und fettem Stichwort). Der Helper `itemBold`
> und die Referenz `items` in `build-document.template.js` (Z. 81 ff.) erzeugen weiterhin
> Bullet-Listen. Bis zur Umstellung fuer ausgehende Dokumente `itemNum` bzw. nummerierte
> Absaetze verwenden, nicht `itemBold`.

## Generator-Vorlage

Fertige docx-js Vorlage: `/Volumes/daten/jans-ai-hub/templates/dokument-layout/build-document.template.js`
Enthaelt alle Helper (h1, h2, para, paraRich, stamm, itemBold, itemNum, tcell) korrekt konfiguriert.

## Build-Workflow

1. Template kopieren: `cp build-document.template.js /tmp/build_<projekt>.js`
2. Inhaltsbereich (zwischen `// ====== INHALT ======` und `// ====== END INHALT ======`) befuellen
3. OUT-Pfad anpassen
4. Bauen: `NODE_PATH=$(npm root -g) node /tmp/build_<projekt>.js`
5. PDF: `soffice --headless --convert-to pdf "<datei>.docx"`
6. Seitenanzahl pruefen: `pdfinfo "<datei>.pdf" | grep Pages`

## Alternative fuer MD-Quellen: md2docx.py

`python3 /Volumes/daten/jans-ai-hub/skills/studien-generator/tools/md2docx.py <datei>.md --pdf`
(python-docx). Seit 19.09.2026 erfuellt der Aufruf **ohne Optionen** die Rule
`dokument-layout-standard.md`: Cambria 11 pt mit Zeilenabstand 1.4, H1 18 pt, H2 12 pt,
Tabellen rahmenlos ohne Schattierung mit 10 pt Zellschrift und festen, aus dem Inhalt
geschaetzten Spaltenbreiten, Fusszeile 8 pt (links Verfasser · Mail · Datum, rechts
«Seite X von Y»). Das Datum der Fusszeile kommt aus dem Dateinamen (`YYMMDD-…` oder
`JJJJ-MM-TT…`), sonst gilt das lokale Tagesdatum.

| Option | Wirkung |
|---|---|
| `--footer "<Text>"` | linker Fusszeilentext statt des Defaults; `{datum}` wird ersetzt, `""` laesst links leer |
| `--tabellenlinien` | Gitterlinien behalten, nur fuer interne Arbeitsdokumente; ausgehend gilt rahmenlos |
| `--spalten "1,4,2"` | Spaltenanteile von Hand fuer Tabellen mit so vielen Spalten, mehrfach angebbar; zu knappe Anteile werden auf die Mindestbreite angehoben |

In der MD-Quelle steuerbar: die Trennzeile setzt die Ausrichtung je Spalte (`:---` links,
`:---:` zentriert, `---:` rechts), reine Zahlenspalten werden ohne Angabe rechtsbuendig. Eine
leere Kopfzeile (`| | |`) ergibt eine Tabelle ohne Kopf, passend fuer Stammdaten-Raster.

Der Konverter warnt auf stderr, wenn eine Tabelle nicht ohne Umbruch auf die
Satzspiegelbreite passt oder die Bemerkungsspalte unter 25 % bleibt. Dann gilt die Rule:
Querformat oder weniger Spalten, nicht Spalten einengen. Die Warnung ersetzt die
Sichtkontrolle nicht, die Breiten sind geschaetzt.

**Schrift im PDF:** `pdffonts` zeigt **Caladea**, nicht Cambria. Cambria liegt auf den
Stationen nur im Word-Bundle, LibreOffice ersetzt sie durch die metrisch gleiche Caladea.
Das ist der Sollzustand. Ein Fehler waere **Carlito** oder eine andere Sans: dann tragen
Styles noch Theme-Font-Verweise (`w:asciiTheme` schlaegt ein gesetztes `w:ascii`). Die Falle
trifft jeden python-docx-Generator, der die Heading-Styles der Vorlage nutzt und nur
`font.name` setzt; am 19.09.2026 war md2docx.py der einzige im Hub (`jans_docx.py` setzt die
Schrift je Run und ist nicht betroffen).

Offen bleibt im Konverter die Listen-Neuregelung (Hinweis oben, SYN-27): «- »-Zeilen werden
weiterhin Word-Bullets.

## Detail-Parameter (DXA)

- Papier A4: 11906 x 16838; Raender 20 mm (1133); Inhaltsbreite 9640
- Body 11 pt = size 22 (docx-js); H1 36, H2 24, Footer 16; Zeilenabstand line: 280
- Listen-Einzug 360; Stammdaten-Tabstop 1700; Abstand vor Abschnitten spacing.before: 240
- Zell-Innenraender schmal (~0.6 mm) via `_tight_margins` in `tools/jans_docx.py`

### Spaltenbreiten Vergleichs-Tabellen (Inhaltsbreite 9640)

| Spalten | Pos | Bezeichnung | Wert A | Wert B | Bemerkung |
|---|---|---|---|---|---|
| 5-spaltig | 700 (7%) | 3600 (37%) | 1100 (11%) | 1100 (11%) | 3140 (33%) |
| 4-spaltig | — | 4700 (49%) | 1100 (11%) | 1100 (11%) | 2740 (29%) |

Richtwerte Zahlenspalten: Menge ~14 mm, Einheit ~18 mm, Preis/Betrag je ~20 mm;
Bezeichnung max. ~50 % der Inhaltsbreite; Summe ≤ 170 mm. Bei mehr als zwei Wertspalten:
Querformat statt Spalten einengen.

Build-Zeit-Check je Tabelle: `COL_BEM >= 2400 DXA` und `COL_BEM >= 0.25 * Inhaltsbreite`.
Pflicht-Sichtkontrolle vor Abgabe: PDF rendern (`pdftoppm -png`) und pruefen, dass kein
Header/keine Einheit/keine Zahl umbricht.
