// ============================================================================
// JANS Pendenzenlisten-Generator — Vorlage (kopieren nach /tmp/build_<projekt>.js)
// ============================================================================
//
// Bedienung:
//   1. Diese Datei nach /tmp/build_<projekt>_pendenzen.js kopieren
//   2. INHALT (Stamm-Daten, Personen-Legende, Gruppen + Pendenzen) befuellen
//   3. Ausfuehren:
//        NODE_PATH=$(npm root -g) node /tmp/build_<projekt>_pendenzen.js
//        soffice --headless --convert-to pdf /tmp/<output>.docx
//   4. DOCX + PDF in OneDrive-Output ablegen
//
// Layout-Standard: /Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md
// Skill-Vorgaben:   /Volumes/daten/jans-ai-hub/skills/pendenzenliste/SKILL.md
// ============================================================================

const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType
} = require('docx');

// === ANPASSEN ===
const OUT = '/tmp/YYMMDD_Pendenzen_<Projekt>.docx';

// === A4 (nicht aendern) ===
const PAGE_W = 11906, PAGE_H = 16838, MARGIN = 1133;
const CONTENT_W = PAGE_W - 2 * MARGIN;

const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};
const hairline = { style: BorderStyle.SINGLE, size: 4, color: "000000" };

// === HELFER ===
const para = (text, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 0, after: opts.after ?? 100, line: 280 },
  alignment: opts.align ?? AlignmentType.LEFT,
  children: [new TextRun({ text, bold: opts.bold ?? false, italics: opts.italics ?? false, size: opts.size ?? 22 })],
});
const h1 = (text) => new Paragraph({
  spacing: { before: 0, after: 240, line: 280 },
  keepNext: true, keepLines: true,
  children: [new TextRun({ text, bold: true, size: 36 })],
});
const h2 = (text) => new Paragraph({
  spacing: { before: 240, after: 100, line: 280 },
  keepNext: true, keepLines: true,
  children: [new TextRun({ text, bold: true, size: 24 })],
});
const stamm = (label, wert) => new Paragraph({
  spacing: { before: 0, after: 40, line: 280 },
  tabStops: [{ type: TabStopType.LEFT, position: 1700 }],
  children: [
    new TextRun({ text: label, bold: true, size: 22 }),
    new TextRun({ text: "\t", size: 22 }),
    new TextRun({ text: wert, size: 22 }),
  ],
});
const item = (text) => new Paragraph({
  numbering: { reference: "items", level: 0 },
  spacing: { before: 50, after: 50, line: 280 },
  keepLines: true,
  children: [new TextRun({ text, size: 22 })],
});
const itemBold = (praefix, text) => new Paragraph({
  numbering: { reference: "items", level: 0 },
  spacing: { before: 50, after: 50, line: 280 },
  keepLines: true,
  children: [
    new TextRun({ text: praefix, bold: true, size: 22 }),
    new TextRun({ text: text, size: 22 }),
  ],
});
const tcell = (text, w, opts = {}) => new TableCell({
  borders: opts.borders ?? noBorders,
  width: { size: w, type: WidthType.DXA },
  margins: { top: 50, bottom: 50, left: 80, right: 80 },
  columnSpan: opts.columnSpan,
  children: [new Paragraph({
    spacing: { before: 0, after: 0, line: 260 },
    alignment: opts.align ?? AlignmentType.LEFT,
    children: [new TextRun({ text, bold: opts.bold ?? false, size: opts.size ?? 20 })],
  })],
});
const footer = (verfasserzeile) => new Paragraph({
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

// === PERSONEN-LEGENDE (anpassen je Projekt) ===
// keepNext/keepLines: Legende wird als geschlossener Block gehalten und nie
// ueber zwei Seiten getrennt (header + alle Zeilen binden aneinander).
const legendeLine = (label, text) => new Paragraph({
  spacing: { before: 0, after: 40, line: 240 },
  keepNext: true, keepLines: true,
  children: [
    new TextRun({ text: label, bold: true, italics: true, size: 18 }),
    new TextRun({ text: text, italics: true, size: 18 }),
  ],
});
const legendeHeader = () => new Paragraph({
  spacing: { before: 60, after: 60, line: 280 },
  keepNext: true, keepLines: true,
  children: [new TextRun({ text: "Legende Personenkürzel", bold: true, size: 20 })],
});
const makeLegende = () => [
  legendeHeader(),
  legendeLine("Architektur:  ",
    "JNS Raphael Jans (Architekt ETH, Gesamtleitung)"),
  legendeLine("Bauherrschaft <Projekt>:  ",
    "SPA <Name> (<Funktion>)  ·  BH Bauherrschaft"),
  legendeLine("Planungsteam <Büro>:  ",
    "ZIE <Name> (Brandschutz)  ·  KUE <Name> (HLK-Leitung)  ·  ..."),
  legendeLine("Externe / Sammelbegriffe:  ",
    "GAP Gastroplaner  ·  TFP Türfachplaner XY  ·  ALLE alle Fachplaner"),
  para("", { after: 160 }),
];

// ============================================================================
// INHALT (hier befuellen)
// ============================================================================

// Pendenzen gruppiert nach Fachplanung. Codes A-Z laufend. Nummern projektweit fortlaufend.
const gruppen = [
  { code: "A", name: "Architektur", pendenzen: [
    { nr: 1, titel: "<Kurzer Pendenz-Titel>", verant: "JNS", status: "Offen",
      sachstand: "<2-5 Sätze neutral formuliert, was der aktuelle Stand ist.>",
      tun: ["<konkreter Erledigungspunkt>", "<weiterer Punkt>"] },
    // weitere Pendenzen ...
  ]},
  { code: "B", name: "Lüftungsplanung", pendenzen: [
    // ...
  ]},
  // weitere Gruppen ...
];

// === STAMM-DATEN ===
const STAND = "28. Mai 2026";                                  // Stand der Liste
const PROJEKT = "<Projektname> (<Nummer>)";                    // z.B. "KISPI Umnutzung OG1 (2619)"
const BAUHERR = "<Voller Name Bauherrschaft>";
const TITEL = "Pendenzen <Thema/Gewerk>";                       // z.B. "Pendenzen Umnutzung OG1"
const UNTERTITEL = "Projekt <Nummer> <Kurzname> — Stand nach <Bezugspunkt>";
const FOOTER_LINE = "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  " + STAND;

// === HÖCHSTE PRIORITÄTSSTUFE ===
// 3-7 wichtigste offene Punkte mit kurzer Begruendung
const hoechstePrio = [
  { praefix: "<Pendenz-Titel>.  ", begruendung: "<Warum kritisch — terminbezogen, kostenrelevant, Blockade>" },
  // ...
];

// ============================================================================
// AUFBAU (nicht aendern)
// ============================================================================

const allP = gruppen.flatMap(g => g.pendenzen);
const cntAbg = allP.filter(p => p.status === "Abgeschlossen").length;
const cntInB = allP.filter(p => p.status === "In Bearbeitung").length;
const cntOff = allP.filter(p => p.status === "Offen").length;

// Übersichtstabelle (gruppiert) — 4-spaltig, einzeilig
const COL_NR = 600, COL_TITEL = 5550, COL_VERANT = 1590, COL_STATUS = 1900;

const headerRow = new TableRow({
  tableHeader: true,
  children: [
    tcell("Nr.", COL_NR, { bold: true, borders: { top: noBorder, bottom: hairline, left: noBorder, right: noBorder } }),
    tcell("Pendenz", COL_TITEL, { bold: true, borders: { top: noBorder, bottom: hairline, left: noBorder, right: noBorder } }),
    tcell("Verant.", COL_VERANT, { bold: true, borders: { top: noBorder, bottom: hairline, left: noBorder, right: noBorder } }),
    tcell("Status", COL_STATUS, { bold: true, borders: { top: noBorder, bottom: hairline, left: noBorder, right: noBorder } }),
  ],
});
const groupRow = (label) => new TableRow({
  children: [
    new TableCell({
      borders: { top: hairline, bottom: noBorder, left: noBorder, right: noBorder },
      width: { size: COL_NR + COL_TITEL + COL_VERANT + COL_STATUS, type: WidthType.DXA },
      columnSpan: 4,
      margins: { top: 120, bottom: 40, left: 0, right: 0 },
      children: [new Paragraph({
        spacing: { before: 0, after: 0, line: 260 },
        children: [new TextRun({ text: label, bold: true, size: 22 })],
      })],
    }),
  ],
});
const tableRows = [headerRow];
gruppen.forEach(g => {
  tableRows.push(groupRow(`${g.code} — ${g.name}`));
  g.pendenzen.forEach(p => {
    tableRows.push(new TableRow({
      children: [
        tcell(String(p.nr), COL_NR),
        tcell(p.titel, COL_TITEL),
        tcell(p.verant, COL_VERANT),
        tcell(p.status, COL_STATUS),
      ],
    }));
  });
});
const uebersichtsTabelle = new Table({
  width: { size: COL_NR + COL_TITEL + COL_VERANT + COL_STATUS, type: WidthType.DXA },
  columnWidths: [COL_NR, COL_TITEL, COL_VERANT, COL_STATUS],
  rows: tableRows,
});

// === Detail-Blöcke (blockartig mit Trennlinie) ===
const blockSeparator = () => new Paragraph({
  spacing: { before: 240, after: 0, line: 60 },
  border: { bottom: hairline },
  keepNext: true,
  children: [new TextRun({ text: "", size: 2 })],
});
const metaZeile = (status, verant) => new Paragraph({
  spacing: { before: 120, after: 80, line: 280 },
  tabStops: [{ type: TabStopType.LEFT, position: 4200 }],
  keepNext: true, keepLines: true,
  children: [
    new TextRun({ text: "Status:  ", bold: true, size: 22 }),
    new TextRun({ text: status, size: 22 }),
    new TextRun({ text: "\t", size: 22 }),
    new TextRun({ text: "Verantwortlich:  ", bold: true, size: 22 }),
    new TextRun({ text: verant, size: 22 }),
  ],
});
const labelLine = (text) => new Paragraph({
  spacing: { before: 80, after: 40, line: 280 },
  keepNext: true, keepLines: true,
  children: [new TextRun({ text, bold: true, size: 22 })],
});

const detailBloecke = [];
gruppen.forEach(g => {
  detailBloecke.push(new Paragraph({
    spacing: { before: 320, after: 100, line: 280 },
    keepNext: true, keepLines: true,
    children: [new TextRun({ text: `${g.code}   ${g.name}`, bold: true, size: 24 })],
  }));
  g.pendenzen.forEach(p => {
    detailBloecke.push(blockSeparator());
    detailBloecke.push(new Paragraph({
      spacing: { before: 140, after: 40, line: 280 },
      keepNext: true, keepLines: true,
      children: [new TextRun({ text: `${p.nr}.  ${p.titel}`, bold: true, size: 22 })],
    }));
    detailBloecke.push(metaZeile(p.status, p.verant));
    detailBloecke.push(labelLine("Sachstand"));
    detailBloecke.push(para(p.sachstand));
    detailBloecke.push(labelLine("Zu erledigen"));
    p.tun.forEach(t => detailBloecke.push(item(t)));
    detailBloecke.push(para("", { after: 120 }));
  });
});

// === Dokument-Inhalt ===
const inhalt = [
  h1(TITEL),
  para(UNTERTITEL, { size: 24, after: 200 }),

  stamm("Stand", STAND),
  stamm("Projekt", PROJEKT),
  stamm("Bauherrschaft", BAUHERR),
  stamm("Verfasser", "Raphael Jans Architekten ETH"),

  h2("Übersicht nach Fachplanung"),
  uebersichtsTabelle,
  para("", { after: 80 }),
  para(`Abgeschlossen: ${cntAbg}     In Bearbeitung: ${cntInB}     Offen: ${cntOff}`, { bold: true, after: 120 }),
  ...makeLegende(),

  h2("Höchste Prioritätsstufe"),
  ...hoechstePrio.map(p => itemBold(p.praefix, p.begruendung)),

  h2("Detail je Fachplanung"),
  para("Pro Pendenz: Status, Verantwortung, Sachstand und konkrete Erledigungspunkte. Reihenfolge folgt der Übersichtstabelle.", { after: 80 }),
  ...detailBloecke,
];

// === Dokument bauen ===
const doc = new Document({
  creator: "Raphael Jans Architekten ETH",
  title: TITEL,
  styles: { default: { document: { run: { font: "Cambria", size: 22 } } } },
  numbering: {
    config: [
      { reference: "items",
        levels: [{
          level: 0, format: LevelFormat.BULLET, text: "-", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 360, hanging: 360 } } }
        }]
      },
    ],
  },
  sections: [{
    properties: { page: {
      size: { width: PAGE_W, height: PAGE_H },
      margin: { top: MARGIN, right: MARGIN, bottom: MARGIN, left: MARGIN },
    }},
    footers: { default: new Footer({ children: [footer(FOOTER_LINE)] }) },
    children: inhalt,
  }],
});

Packer.toBuffer(doc).then(buffer => {
  fs.writeFileSync(OUT, buffer);
  console.log("Pendenzenliste geschrieben:", OUT);
});
