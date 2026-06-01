// JANS-Cover-Page fuer Installationslegende Kuecheneinrichtung Therapiestation
// Layout-Standard: Cambria 11pt, A4 Querformat (passend zu den 5 Folge-Seiten)

const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType, PageOrientation
} = require('docx');

const OUT = '/tmp/build_kispi/cover_installationslegende.docx';

// A4 Querformat (passend zu den Folge-Seiten 841.68 x 595.2 pt)
const PAGE_W = 16838;
const PAGE_H = 11906;
const MARGIN = 1133;
const CONTENT_W = PAGE_W - 2 * MARGIN;

const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};

const para = (text, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 0, after: opts.after ?? 100, line: 280 },
  alignment: opts.align ?? AlignmentType.LEFT,
  children: [new TextRun({ text, bold: opts.bold ?? false, italics: opts.italics ?? false, size: opts.size ?? 22 })],
});

const h1 = (text) => new Paragraph({
  spacing: { before: 0, after: 240, line: 280 },
  children: [new TextRun({ text, bold: true, size: 36 })],
});

const h2 = (text) => new Paragraph({
  spacing: { before: 240, after: 100, line: 280 },
  children: [new TextRun({ text, bold: true, size: 24 })],
});

const stamm = (label, wert) => new Paragraph({
  spacing: { before: 0, after: 40, line: 280 },
  tabStops: [{ type: TabStopType.LEFT, position: 2000 }],
  children: [
    new TextRun({ text: label, bold: true, size: 22 }),
    new TextRun({ text: "\t", size: 22 }),
    new TextRun({ text: wert, size: 22 }),
  ],
});

const itemBullet = (text) => new Paragraph({
  numbering: { reference: "items", level: 0 },
  spacing: { before: 60, after: 60, line: 280 },
  children: [new TextRun({ text, size: 22 })],
});

const footer = () => new Paragraph({
  alignment: AlignmentType.LEFT,
  spacing: { before: 0, after: 0, line: 240 },
  tabStops: [{ type: TabStopType.RIGHT, position: CONTENT_W }],
  children: [
    new TextRun({ text: "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  6. Mai 2026", size: 16 }),
    new TextRun({ text: "\tSeite 1 von 6", size: 16 }),
  ],
});

const inhalt = [
  h1("Installationslegende Kuecheneinrichtung"),
  para("Therapiestation Universitaets-Kinderspital Zuerich, Lenggstrasse 30, 8008 Zuerich", { after: 240 }),

  h2("Projekt"),
  stamm("Bauherr", "Universitaets-Kinderspital Zuerich"),
  stamm("Objekt", "Therapiestation, Lenggstrasse 30, 8008 Zuerich"),
  stamm("Gewerk", "Kuecheneinrichtung"),
  stamm("Projekt-Nr.", "2619"),
  stamm("Plan-Nr.", "26-122-01.3"),
  stamm("Datum", "6. Mai 2026"),

  h2("Bauleitung"),
  stamm("Buero", "Raphael Jans Architekten ETH SIA"),
  stamm("Kontakt", "rj@raphaeljans.ch"),

  h2("Nicht Bestandteil der Submission"),
  para("Beleuchtung (Decken-, Not- und Sicherheitsbeleuchtung), Brandmelde- und Sicherheitstechnik, Putzsteckdosen sowie alle Gewerke ausserhalb der Kuecheneinrichtung."),

  h2("Allgemeine Angaben"),
  itemBullet("Massangaben in mm, bezogen auf den Endausbau (a.f.B. = ab fertig Wandbelag und fertig Bodenbelag)."),
  itemBullet("Saemtliche Installationen sind nach oertlichen Vorschriften und den jeweiligen Apparate-Schemas auszufuehren."),
  itemBullet("Sanitaer: Wasserleitungen sind bauseits mit Abstellventil zu versehen. Ablaeufe inkl. Tropfwasserablaeufe (TW) bauseits zu siphonieren; TW fuer Kuehlkorpus unter dem Boden."),
  itemBullet("Elektro: Hauptschalter, Revisionsschalter und Potentialausgleich gemaess geltenden Vorschriften — Verantwortung beim Elektroplaner bzw. ausfuehrenden Elektriker."),
  itemBullet("Lueftung: Angaben sind approximativ — verbindliche Auslegung durch den Lueftungsplaner."),
  itemBullet("Anschlussangaben fuer bauseitige Apparate sind ohne Gewaehr auf Vollstaendigkeit und Richtigkeit."),
  itemBullet("Kontrolle der Installationen obliegt dem ausfuehrenden Unternehmer sowie der Bauleitung."),
  itemBullet("Massdifferenzen und Abweichungen sind unverzueglich der Bauleitung mitzuteilen; bei Unklarheiten Ruecksprache mit der Bauleitung."),

  h2("Beilage"),
  para("Folgeseiten 2 bis 6: technische Installations-Spezifikationen pro Position (Bezeichnung, Anschluesse, Elektroleistung, Lueftung, Bemerkungen).", { after: 80 }),
];

const doc = new Document({
  creator: "Raphael Jans Architekten ETH SIA",
  title: "Installationslegende Kuecheneinrichtung — Cover",
  styles: { default: { document: { run: { font: "Cambria", size: 22 } } } },
  numbering: {
    config: [
      { reference: "items",
        levels: [{ level: 0, format: LevelFormat.BULLET, text: "-", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 360, hanging: 360 } } } }] },
    ],
  },
  sections: [{
    properties: {
      page: {
        // Portrait-Dimensionen + LANDSCAPE-Flag — docx-js dreht intern
        size: { width: 11906, height: 16838, orientation: PageOrientation.LANDSCAPE },
        margin: { top: MARGIN, right: MARGIN, bottom: MARGIN, left: MARGIN },
      },
    },
    footers: { default: new Footer({ children: [footer()] }) },
    children: inhalt,
  }],
});

Packer.toBuffer(doc).then(buf => {
  fs.writeFileSync(OUT, buf);
  console.log("OK:", OUT);
});
