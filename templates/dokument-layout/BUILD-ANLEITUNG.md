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

Alternative fuer MD-Quellen: `skills/studien-generator/tools/md2docx.py <datei>.md --pdf`
(python-docx, JANS-Layout Cambria 11pt).

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
