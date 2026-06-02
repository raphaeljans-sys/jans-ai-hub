// ============================================================================
// JANS Sitzungsprotokoll-Generator — Vorlage (kopieren nach /tmp/build_<projekt>.js)
// ============================================================================
//
// Bedienung:
//   1. Diese Datei nach /tmp/build_<projekt>_protokoll.js kopieren
//   2. INHALT (Stamm-Daten, Personen-Legende, Sektionen, Termine) befuellen
//   3. Ausfuehren:
//        NODE_PATH=$(npm root -g) node /tmp/build_<projekt>_protokoll.js
//        soffice --headless --convert-to pdf /tmp/<output>.docx
//   4. DOCX + PDF in OneDrive-Output ablegen
//
// Layout-Standard:  /Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md
// Skill-Vorgaben:   /Volumes/daten/jans-ai-hub/skills/protokoll/SKILL.md
// ============================================================================

const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun,
  Footer, AlignmentType, LevelFormat, BorderStyle,
  PageNumber, TabStopType
} = require('docx');

// === ANPASSEN ===
const OUT = '/tmp/YYMMDD_<N>_Besprechung_<Projekt>_Protokoll.docx';

// === A4 (nicht aendern) ===
const PAGE_W = 11906, PAGE_H = 16838, MARGIN = 1133;
const CONTENT_W = PAGE_W - 2 * MARGIN;

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
const h3 = (text, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 180, after: opts.after ?? 60, line: 280 },
  keepNext: true, keepLines: true,
  children: [new TextRun({ text, bold: true, size: 22 })],
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

// === PERSONEN-LEGENDE (identisch zur Pendenzenliste) ===
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

// === STAMM-DATEN ===
const SITZUNGS_NR = 1;                                              // 5. Besprechung etc.
const DATUM = "Donnerstag, 28. Mai 2026";                           // Sitzungstag
const PROJEKT = "<Projekt> (<Nummer>)";                              // z.B. "KISPI Umnutzung OG1 (2619)"
const BAUHERR = "<Voller Name Bauherrschaft>";
const UNTERTITEL = "Projekt <Nummer> <Kurzname> — <Phase>";
const FOOTER_LINE = "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  <DD.MM.YYYY>";

// === NÄCHSTE TERMINE (sechsstellig + Volldatum) ===
const NAECHSTE_SITZUNG = "Freitag, 05.06.2026 (260605), 11:00 — 11:45 Uhr";
const UEBERNAECHSTE_SITZUNG = "Termin gemäss bestehender Planung";

// === SEKTIONEN ===
// Reihenfolge (Best Practice): Architektur, Lüftung, Sprinkleranlage, Elektro,
// Sanitär, Brandschutz (inkl. U-Joch/Rückbau), BMA, Signaletik, Diverses,
// Submission, Schliessplan/Türen, Brandfallmatrix, Termine

const inhalt = [
  h1(`Protokoll ${SITZUNGS_NR}. Besprechung`),
  para(UNTERTITEL, { size: 24, after: 200 }),

  stamm("Datum", DATUM),
  stamm("Projekt", PROJEKT),
  stamm("Bauherrschaft", BAUHERR),
  stamm("Verfasser", "Raphael Jans Architekten ETH"),
  stamm("Versand", "Bauherrschaft / Fachplaner"),

  para("", { after: 120 }),
  ...makeLegende(),

  // ----- 1 Architektur -----
  h2("1  Architektur"),
  item("<Pendenz / Auftrag Architektur>"),
  item("<Pendenz / Auftrag Architektur>"),

  // ----- 2 Lüftungsplanung -----
  h2("2  Lüftungsplanung"),
  para("<Erklärender Fliesstext (optional, z.B. Entscheid + Begründung).>"),
  item("<Pendenz>"),

  // ----- 3 Sprinkleranlage (eigene Sektion!) -----
  h2("3  Sprinkleranlage"),
  para("<Sachstand Sprinkleranlage>"),
  item("<Pendenz>"),

  // ----- 4 Elektroplanung -----
  h2("4  Elektroplanung"),
  item("<Pendenz>"),
  para("Elektroplanung Vorabzug:", { bold: true, before: 120, after: 60 }),
  item("<Plan-Referenz / Stand>"),

  // ----- 5 Sanitärplanung -----
  h2("5  Sanitärplanung"),
  item("<Pendenz>"),

  // ----- 6 Brandschutz -----
  h2("6  Brandschutz"),
  para("<Brandlast / Entfluchtungskorridor / Decke>"),
  item("<Pendenz>"),
  para("Erweiterung des Betrachtungsausschnitts:", { bold: true, before: 120, after: 60 }),
  para("<Falls der Brandschutz-Perimeter auf angrenzende Bereiche erweitert werden muss (z.B. Fluchtweg in Nachbarstation), hier explizit ausweisen.>"),
  para("Klärung Brandschutzdecke und Akustikdecke:", { bold: true, before: 120, after: 60 }),
  item("<Pendenz>"),
  para("Weitere brandschutztechnische Detailpunkte:", { bold: true, before: 120, after: 60 }),
  item("<U-Joch / Rückbau-Markierungen / weitere Punkte>"),

  // ----- 7 BMA-Planung -----
  h2("7  BMA-Planung"),
  item("<Pendenz>"),

  // ----- 8 Raumbeschriftung / Signaletik -----
  h2("8  Raumbeschriftung / Signaletik"),
  item("<Pendenz>"),

  // ----- 9 Diverses -----
  h2("9  Diverses"),
  item("<Pendenz>"),

  // ----- 10 Submission -----
  h2("10  Submission"),
  item("<Pendenz>"),

  // ----- 11 Schliessplan und Türen -----
  h2("11  Schliessplan und Türen"),
  para("<Erläuterung Terminkritikalität>"),
  h3("Anforderungsklärung — intern Bauherrschaft"),
  item("<Pendenz>"),
  h3("Abhängigkeiten"),
  item("<Pendenz>"),
  h3("Zu klärende Entscheide"),
  item("<Pendenz>"),
  h3("Vorhandene Plangrundlagen (Plattform)"),
  item("<Plan-Referenz>"),

  // ----- 12 Brandfallmatrix -----
  h2("12  Brandfallmatrix"),
  para("<Sachstand Brandfallmatrix>"),
  item("<Pendenz>"),

  // ----- 13 Termine (immer letzte Sektion, sechsstellig!) -----
  h2("13  Termine"),
  item(`Nächste Sitzung: ${NAECHSTE_SITZUNG}.`),
  item(`Übernächste Sitzung: ${UEBERNAECHSTE_SITZUNG}.`),

  // Schlussklausel
  para("", { after: 200 }),
  para("Ergänzungen und Korrekturen zu diesem Protokoll werden innerhalb von fünf Arbeitstagen erbeten. Andernfalls gilt der Inhalt als anerkannt.", { italics: true }),
];

// === Dokument bauen ===
const doc = new Document({
  creator: "Raphael Jans Architekten ETH",
  title: `Protokoll ${SITZUNGS_NR}. Besprechung ${PROJEKT}`,
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
  console.log("Protokoll geschrieben:", OUT);
});
