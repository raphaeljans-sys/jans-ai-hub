// ============================================================================
// JANS Dokument-Layout-Standard — Generator-Vorlage
// ============================================================================
// Kopiere diese Datei nach /tmp/build_<projekt>.js, befuelle den INHALT-
// Bereich und fuehre aus mit:
//   NODE_PATH=$(npm root -g) node /tmp/build_<projekt>.js
//
// Layout-Konventionen siehe:
//   /Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md
// ============================================================================

const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType
} = require('docx');

// === ANPASSEN ===
const OUT = '/Pfad/zur/ausgabe/YYMMDD_titel.docx';

// === A4 STANDARD (nicht aendern) ===
const PAGE_W = 11906;
const PAGE_H = 16838;
const MARGIN = 1133; // 20mm
const CONTENT_W = PAGE_W - 2 * MARGIN;

// === BORDERS (unsichtbar) ===
const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};

// ============================================================================
// HELFER-FUNKTIONEN (nicht aendern)
// ============================================================================

// Standard-Absatz
const para = (text, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 0, after: opts.after ?? 100, line: 280 },
  alignment: opts.align ?? AlignmentType.LEFT,
  children: [new TextRun({
    text,
    bold: opts.bold ?? false,
    italics: opts.italics ?? false,
    size: opts.size ?? 22,
  })],
});

// Absatz mit gemischten Runs (z.B. teilweise fett)
const paraRich = (runs, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 0, after: opts.after ?? 100, line: 280 },
  alignment: opts.align ?? AlignmentType.LEFT,
  children: runs,
});

// H1 — Dokument-Titel
const h1 = (text) => new Paragraph({
  spacing: { before: 0, after: 240, line: 280 },
  children: [new TextRun({ text, bold: true, size: 36 })],
});

// H2 — Abschnitts-Ueberschrift
const h2 = (text) => new Paragraph({
  spacing: { before: 240, after: 100, line: 280 },
  children: [new TextRun({ text, bold: true, size: 24 })],
});

// Stammdaten-Zeile (Label fett, Wert mit Tab ausgerichtet)
const stamm = (label, wert) => new Paragraph({
  spacing: { before: 0, after: 40, line: 280 },
  tabStops: [{ type: TabStopType.LEFT, position: 1700 }],
  children: [
    new TextRun({ text: label, bold: true, size: 22 }),
    new TextRun({ text: "\t", size: 22 }),
    new TextRun({ text: wert, size: 22 }),
  ],
});

// Bullet mit fettem Praefix (z.B. "Begriff.  Beschreibung...")
const itemBold = (praefix, text) => new Paragraph({
  numbering: { reference: "items", level: 0 },
  spacing: { before: 60, after: 60, line: 280 },
  children: [
    new TextRun({ text: praefix, bold: true, size: 22 }),
    new TextRun({ text: text, size: 22 }),
  ],
});

// Nummeriertes Item
const itemNum = (text) => new Paragraph({
  numbering: { reference: "schritte", level: 0 },
  spacing: { before: 50, after: 50, line: 280 },
  children: [new TextRun({ text, size: 22 })],
});

// Tabellenzelle ohne sichtbare Borders (fuer Layout-Raster)
const tcell = (text, w, opts = {}) => new TableCell({
  borders: noBorders,
  width: { size: w, type: WidthType.DXA },
  margins: { top: 30, bottom: 30, left: 0, right: 100 },
  children: [new Paragraph({
    spacing: { before: 0, after: 0, line: 280 },
    alignment: opts.align ?? AlignmentType.LEFT,
    children: [new TextRun({
      text,
      bold: opts.bold ?? false,
      size: opts.size ?? 22,
    })],
  })],
});

// Borderlose Tabelle (Layout-Raster)
const layoutTable = (columnWidths, rows) => new Table({
  width: { size: columnWidths.reduce((a, b) => a + b, 0), type: WidthType.DXA },
  columnWidths,
  rows,
});

// Standard-Footer (Verfasser links, Seitenzahl rechts)
const footer = (verfasserzeile = "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch") => new Paragraph({
  alignment: AlignmentType.LEFT,
  spacing: { before: 0, after: 0, line: 240 },
  tabStops: [{ type: TabStopType.RIGHT, position: CONTENT_W }],
  children: [
    new TextRun({ text: verfasserzeile, size: 16 }),
    new TextRun({ text: "\tSeite ", size: 16 }),
    new TextRun({ children: [PageNumber.CURRENT], size: 16 }),
    new TextRun({ text: " von ", size: 16 }),
    new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 16 }),
  ],
});

// ============================================================================
// INHALT (hier befuellen)
// ============================================================================

const dokumentInhalt = [
  h1("Dokument-Titel"),
  para("Untertitel oder Lead-Text, einfach im Body-Style.", { after: 320 }),

  h2("Abschnitt 1"),
  stamm("Projekt", "Beispielprojekt"),
  stamm("Datum", "5. Mai 2026"),

  h2("Abschnitt 2"),
  para("Einleitender Text zum Abschnitt. Hier folgt eine Aufzaehlung."),
  itemBold("Punkt 1.  ", "Beschreibung des ersten Punkts mit allen Details."),
  itemBold("Punkt 2.  ", "Beschreibung des zweiten Punkts."),

  h2("Empfohlene naechste Schritte"),
  itemNum("Erster Schritt."),
  itemNum("Zweiter Schritt."),
  itemNum("Dritter Schritt."),
];

// ============================================================================
// END INHALT
// ============================================================================

const doc = new Document({
  creator: "Raphael Jans Architekten ETH",
  title: "Dokument",
  styles: {
    default: { document: { run: { font: "Cambria", size: 22 } } },
  },
  numbering: {
    config: [
      { reference: "items",
        levels: [{
          level: 0, format: LevelFormat.BULLET, text: "-", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 360, hanging: 360 } } }
        }]
      },
      { reference: "schritte",
        levels: [{
          level: 0, format: LevelFormat.DECIMAL, text: "%1.", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 360, hanging: 360 } } }
        }]
      },
    ],
  },
  sections: [{
    properties: {
      page: {
        size: { width: PAGE_W, height: PAGE_H },
        margin: { top: MARGIN, right: MARGIN, bottom: MARGIN, left: MARGIN },
      },
    },
    footers: { default: new Footer({ children: [footer()] }) },
    children: dokumentInhalt,
  }],
});

Packer.toBuffer(doc).then(buffer => {
  fs.writeFileSync(OUT, buffer);
  console.log("DOCX geschrieben:", OUT);
});
