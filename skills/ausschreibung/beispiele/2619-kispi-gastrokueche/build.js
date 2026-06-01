// ============================================================================
// KISPI Therapiestation — Submission Gastrokueche
// Erstellt 3 Dokumente: Anschreiben, LV, Antwortformular (DOCX)
// Layout: JANS Dokument-Layout-Standard (Cambria 11pt, A4, schwarz/weiss)
// ============================================================================

const fs = require('fs');
const path = require('path');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType, HeightRule
} = require('docx');

// === OUTPUT-PFAD ===
const OUT_DIR = '/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/260506-versand';

// === A4 STANDARD ===
const PAGE_W = 11906;
const PAGE_H = 16838;
const MARGIN = 1133; // 20 mm
const CONTENT_W = PAGE_W - 2 * MARGIN;

// === BORDERS ===
const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};
// Subtile horizontale Linie unten an Tabellenzelle (fuer LV-Zeilen-Trenner)
const bottomLine = { style: BorderStyle.SINGLE, size: 4, color: "BBBBBB" };

// ============================================================================
// HELFER
// ============================================================================
const para = (text, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 0, after: opts.after ?? 100, line: 280 },
  alignment: opts.align ?? AlignmentType.LEFT,
  children: [new TextRun({
    text, bold: opts.bold ?? false, italics: opts.italics ?? false,
    size: opts.size ?? 22,
  })],
});

const paraRich = (runs, opts = {}) => new Paragraph({
  spacing: { before: opts.before ?? 0, after: opts.after ?? 100, line: 280 },
  alignment: opts.align ?? AlignmentType.LEFT,
  children: runs,
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
  tabStops: [{ type: TabStopType.LEFT, position: 1700 }],
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

const itemNum = (text) => new Paragraph({
  numbering: { reference: "schritte", level: 0 },
  spacing: { before: 50, after: 50, line: 280 },
  children: [new TextRun({ text, size: 22 })],
});

// Tabellenzelle (borderless oder mit unterer Linie)
const tcell = (text, w, opts = {}) => new TableCell({
  borders: opts.withBottomLine ? {
    top: noBorder, left: noBorder, right: noBorder,
    bottom: bottomLine
  } : noBorders,
  width: { size: w, type: WidthType.DXA },
  margins: { top: 60, bottom: 60, left: 0, right: 100 },
  verticalAlign: opts.vAlign ?? "top",
  children: [new Paragraph({
    spacing: { before: 0, after: 0, line: 280 },
    alignment: opts.align ?? AlignmentType.LEFT,
    children: [new TextRun({
      text, bold: opts.bold ?? false, size: opts.size ?? 22,
      italics: opts.italics ?? false,
    })],
  })],
});

// Multi-line Tabellenzelle (fuer LV-Beschreibungen) — mit echtem Paragraph-Indent
const tcellMulti = (lines, w, opts = {}) => new TableCell({
  borders: opts.withBottomLine ? {
    top: noBorder, left: noBorder, right: noBorder,
    bottom: bottomLine
  } : noBorders,
  width: { size: w, type: WidthType.DXA },
  margins: { top: 60, bottom: 60, left: 0, right: 100 },
  verticalAlign: opts.vAlign ?? "top",
  children: lines.map((l, i) => new Paragraph({
    spacing: { before: i === 0 ? 0 : 30, after: 0, line: 260 },
    alignment: opts.align ?? AlignmentType.LEFT,
    indent: l.indent ? { left: l.indent } : undefined,
    children: [new TextRun({
      text: l.text ?? l, bold: l.bold ?? opts.bold ?? false,
      italics: l.italics ?? opts.italics ?? false,
      size: l.size ?? opts.size ?? 22,
    })],
  })),
});

const layoutTable = (columnWidths, rows) => new Table({
  width: { size: columnWidths.reduce((a, b) => a + b, 0), type: WidthType.DXA },
  columnWidths,
  rows,
});

const footer = (verfasserzeile = "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  6. Mai 2026") => new Paragraph({
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
// GEMEINSAME DATEN
// ============================================================================
const PROJEKT = {
  nr: "2619",
  name: "Universitäts-Kinderspital Zürich, Therapiestation",
  bauherr: "Universitäts-Kinderspital Zürich",
  adresse: "Lenggstrasse 30, 8008 Zürich",
  gewerk: "Kücheneinrichtung Therapiestation",
  plan: "26-122-01.3",
  planDatum: "1. Mai 2026",
  fristDatum: "Freitag, 15. Mai 2026, 17:00 Uhr",
  fristKW: "Ende KW 20",
  versandDatum: "6. Mai 2026",
};

const BEILAGEN = [
  "Projektplan Grundriss Therapiestation, Plan-Nr. 26-122-01.3 vom 1. Mai 2026",
  "Installationsplan Grundriss Therapiestation, Plan-Nr. 26-122-01.3 vom 1. Mai 2026",
  "Installationslegende Kücheneinrichtung, Plan-Nr. 25-122-01.3 vom 1. Mai 2026",
  "Antwortformular Submission (auszufüllen und mit Offerte zurückzusenden)",
];

const BAUSEITS = [
  "Sanitäre Installationen und Anschlüsse",
  "Elektrische Installationen und Anschlüsse",
  "Kältetechnische Installationen und Anschlüsse",
  "Lüftungstechnische Installationen, Kanäle und Anschlüsse",
  "Baumeisterarbeiten, Kernbohrungen, Fliesenarbeiten",
  "Silikonierungsarbeiten an neuer Buffeteinrichtung",
  "Kücheninventar (Schüsseln, Kellen, Schneidebretter und dergleichen)",
];

// LV-Bereiche mit Positionen
// status: '' | 'bestehend' | 'bauseits'
const LV_BEREICHE = [
  {
    nr: "1.0", name: "Spülen / Rüsten",
    positionen: [
      { nr: "1.01", bez: "Arbeitstisch 3380 x 900/730 x 900 mm, hinten und rechts mit Zarge 100 mm hoch, vorne und links A40, Unterbau mit:", details: [
          "1 Flügeltüre mit Rahmen 600 mm breit, links Sicht geschliffen, Band links",
          "1 Abfallfach 500 mm breit, mit Auszugtüre und CNS-Abfallbehälter",
          "1 Nische 605 mm breit für Geschirrspülmaschine",
          "1 Flügeltürfach 400 mm breit, mit Zylinderschloss, für Spülmittelbidon",
          "1 Doppelflügeltürfach 1200 mm breit",
          "1 CNS-Sockel 100 mm hoch und nötige Blenden",
        ], menge: "1", einheit: "Stk" },
      { nr: "1.02", bez: "Untertischgeschirrspülmaschine", menge: "1", einheit: "Stk", status: "bestehend" },
      { nr: "1.03", bez: "Servicewagen 3 bordig, CNS-Ausführung", menge: "1", einheit: "Stk" },
      { nr: "1.04", bez: "Gemüseschneidemaschine mit 5 Schneidescheiben (Grundsortiment)", menge: "1", einheit: "Stk" },
      { nr: "1.05", bez: "Wandhängeschrank mit Flügeltüren und Tablar 800 x 360 x 760 mm", menge: "1", einheit: "Stk" },
      { nr: "1.06", bez: "Wandhängeschrank mit Flügeltüren und Tablar 800 x 360 x 760 mm", menge: "1", einheit: "Stk" },
    ],
  },
  {
    nr: "2.0", name: "Warme Küche",
    positionen: [
      { nr: "2.01", bez: "Arbeitstisch 2289 x 750/925 x 900 mm, mit Becken 340 x 370 x 160 mm und hinten mit Zarge 100 mm hoch, vorne, links und rechts A40, Unterbau mit:", details: [
          "1 Flügeltüre 500 mm breit, Türband links (Installationsfach)",
          "1 Kühlkorpus 2 x GN-1/1-EK L = 1150 mit 6 Schubladen",
          "1 Flaschenauszug mit oberer Schublade 200 mm breit",
          "1 Abfallfach 400 mm breit, mit Auszugtüre und CNS-Abfallbehälter",
          "1 CNS-Sockel 100 mm hoch und nötige Blenden",
        ], menge: "1", einheit: "Stk" },
      { nr: "2.02", bez: "Rational Kombidämpfer iCombi Pro 6 x GN-2/3 mit UltraVent Plus-Haube, Türbandung links, auf Tischuntergestell inkl. 6 CNS-Roste GN-2/3", menge: "1", einheit: "Stk" },
      { nr: "2.03", bez: "Wandhängeschrank mit Schiebetüren 1000 x 360 x 760 mm", menge: "1", einheit: "Stk" },
      { nr: "2.04", bez: "Regalwagen mit Arbeitsplatte, 8 x GN-2/1 Einschüben und Lenkrollen", menge: "1", einheit: "Stk" },
    ],
  },
  {
    nr: "3.0", name: "Herdanlage",
    positionen: [
      { nr: "3.01", bez: "Induktionskochherd 3300 x 1100 x 900 mm mit Ausschnitt für Standfriteuse, Einbaukomponenten:", details: [
          "2 Multifunktions-Induktionskochfelder à 360 x 660 mm",
          "1 Korpus 600 mm breit mit 3 Schubladenauszügen",
          "1 Tablarfach offen 550 mm breit mit 1 Tablar, beidseitig bedienbar",
          "1 Tablarfach offen 600 mm breit mit 1 Tablar",
          "1 Induktionsfuss 350 x 760 x 560 mm",
          "1 Steckdose Typ 13 an Bedienblende",
          "2 CNS-Rückblenden geschlossen",
          "1 CNS-Sockel 100 mm",
        ], menge: "1", einheit: "Stk" },
      { nr: "3.02", bez: "Ablufthaube ca. 1200 x 1200 x 450 mm, Detailangaben gemäss Lieferant", menge: "1", einheit: "Stk", status: "bauseits" },
    ],
  },
  {
    nr: "4.0", name: "Vorbereiten",
    positionen: [
      { nr: "4.01", bez: "Arbeitstisch 1200 x 600 x 900 mm, rundum A40, Unterbau mit:", details: [
          "1 Korpus 600 mm breit mit 3 Schubladenauszügen",
          "1 Tablarfach offen 500 mm breit",
          "2 CNS-Blenden zwischen den Unterbauten",
          "4 Lenkrollen, 2 davon mit Feststeller",
        ], menge: "1", einheit: "Stk" },
      { nr: "4.02", bez: "Arbeitstisch 1000 x 600 x 900 mm, rundum A40, Unterbau mit:", details: [
          "1 Flügeltürfach 600 mm breit, Tablar verstellbar, Türband links",
          "1 Flügeltürfach 500 mm breit mit oberer Schublade, Türband rechts",
          "2 CNS-Blenden zwischen den Unterbauten",
          "4 Lenkrollen, 2 davon mit Feststeller",
        ], menge: "1", einheit: "Stk" },
      { nr: "4.03", bez: "Servicewagen 3 bordig, CNS-Ausführung", menge: "1", einheit: "Stk" },
    ],
  },
  {
    nr: "5.0", name: "Lager / Economat",
    positionen: [
      { nr: "5.01", bez: "Doppeltürkühlschrank GN-2/1, ca. 1400 Liter, eigengekühlt", menge: "1", einheit: "Stk", status: "bestehend" },
      { nr: "5.02", bez: "Kühlkorpus mit zwei Kühlschubladen, eigengekühlt und CNS-Arbeitsplatte", menge: "1", einheit: "Stk", status: "bestehend" },
      { nr: "5.03", bez: "CNS-Lagerschrank mit Flügeltüren B x T x H 1000 x 590 x 2000 mm, mit 4 Tablaren und Sockel 100 mm hoch", menge: "1", einheit: "Stk" },
      { nr: "5.04", bez: "ScanBox Warmhaltewagen", menge: "1", einheit: "Stk", status: "bauseits" },
      { nr: "5.05", bez: "Aluminiumregal 4-lagig mit Polyethylenauflagen, 1200 x 460 x 1675 mm", menge: "1", einheit: "Stk" },
      { nr: "5.06", bez: "Aluminiumregal 4-lagig mit Polyethylenauflagen, 770 x 460 x 1675 mm", menge: "1", einheit: "Stk" },
    ],
  },
  {
    nr: "6.0", name: "Lager",
    positionen: [
      { nr: "6.01", bez: "Aluminiumregal 4-lagig mit Polyethylenauflagen", menge: "1", einheit: "Stk" },
      { nr: "6.02", bez: "CNS-Schrank für Putz- und Reinigungsmaterial, B x T x H 600 x 590 x 2000 mm, mit Tablaren, Putzmittelkorb und Besenhalterung, Türen abschliessbar, Sockel 100 mm hoch", menge: "1", einheit: "Stk" },
    ],
  },
];

// ============================================================================
// DOKUMENT 1: ANSCHREIBEN
// ============================================================================
function buildAnschreibenInhalt() {
  return [
    h1("Submission Kücheneinrichtung Therapiestation"),
    para("Universitäts-Kinderspital Zürich, Lenggstrasse 30, 8008 Zürich", { after: 320 }),

    h2("Stammdaten"),
    stamm("Bauherr", PROJEKT.bauherr),
    stamm("Objekt", "Therapiestation, " + PROJEKT.adresse),
    stamm("Gewerk", PROJEKT.gewerk),
    stamm("Projekt-Nr.", PROJEKT.nr),
    stamm("Bauleitung", "Raphael Jans Architekten ETH SIA, rj@raphaeljans.ch"),
    stamm("Plangrundlage", PROJEKT.plan + " vom " + PROJEKT.planDatum),
    stamm("Versand", PROJEKT.versandDatum),
    stamm("Eingabefrist", PROJEKT.fristDatum + " (" + PROJEKT.fristKW + ")"),

    h2("Sehr geehrte Damen und Herren"),
    para("Im Rahmen der Therapiestation des Universitäts-Kinderspitals Zürich an der Lenggstrasse 30 in 8008 Zürich wird die bestehende Kücheneinrichtung erneuert und ergänzt. Wir laden Sie ein, eine Offerte auf Basis des beiliegenden Leistungsverzeichnisses und der Plangrundlagen abzugeben.", { before: 80 }),

    h2("Gegenstand der Submission"),
    para("Lieferung, Montage und Inbetriebnahme einer Kücheneinrichtung gemäss beiliegendem Leistungsverzeichnis (sechs Bereiche: Spülen / Rüsten, Warme Küche, Herdanlage, Vorbereiten, Lager / Economat, Lager). Das Leistungsverzeichnis basiert auf den Plangrundlagen 26-122-01.3 vom 1. Mai 2026."),

    h2("Gleichwertige Produkte"),
    para("Soweit im Leistungsverzeichnis Markennamen oder Modellbezeichnungen genannt sind (zum Beispiel Rational iCombi Pro), sind gleichwertige Produkte zugelassen, sofern die technischen Spezifikationen, Funktionen und Anschlussmasse vollumfänglich erfüllt werden. Abweichungen bitte im Antwortformular und in der Offerte explizit ausweisen."),

    h2("Bauseitige Leistungen"),
    para("Folgende Leistungen sind nicht Gegenstand dieser Submission und werden bauseits erbracht:"),
    ...BAUSEITS.map(b => itemBullet(b)),

    h2("Eingabe"),
    para("Bitte reichen Sie Ihre Offerte bis spätestens " + PROJEKT.fristDatum + " elektronisch an rj@raphaeljans.ch ein. Die Eingabe umfasst:"),
    itemNum("Offerte mit Preisen pro Position (auf Basis des beiliegenden Leistungsverzeichnisses, gleiche Positions-Nummerierung)."),
    itemNum("Ausgefülltes Antwortformular mit Firmenangaben, Liefertermin, Zahlungskonditionen, Vorbehalten und Referenzen."),
    itemNum("Allfällige technische Vorbehalte oder Abweichungen klar ausgewiesen."),

    h2("Beilagen"),
    ...BEILAGEN.map(b => itemBullet(b)),

    h2("Rückfragen"),
    para("Für Rückfragen stehe ich gerne zur Verfügung unter rj@raphaeljans.ch oder telefonisch nach Vereinbarung."),

    para("Wir freuen uns auf Ihre Offerte und danken Ihnen für Ihre Bemühungen.", { before: 240 }),
    para("Freundliche Grüsse", { before: 240 }),
    para("Raphael Jans Architekten ETH SIA", { before: 240, bold: true }),
    para("Raphael Jans, dipl. Architekt ETH SIA"),
  ];
}

// ============================================================================
// DOKUMENT 2: LEISTUNGSVERZEICHNIS
// ============================================================================
function buildLVInhalt() {
  // Spaltenbreiten (DXA) — Summe = CONTENT_W = 9640
  // Header-Texte muessen ohne Umbruch reinpassen (Cambria 11pt bold)
  const COL_POS = 600;
  const COL_BEZ = 4200;
  const COL_MEN = 1100;  // "Menge" braucht Cambria 11pt bold ca. 950 DXA inkl. Padding
  const COL_EH = 800;    // "Einh." braucht ca. 700 DXA inkl. Padding
  const COL_EP = 1500;
  const COL_GP = 1440;

  const headerRow = new TableRow({
    tableHeader: true,
    children: [
      tcell("Pos.", COL_POS, { bold: true, withBottomLine: true }),
      tcell("Bezeichnung", COL_BEZ, { bold: true, withBottomLine: true }),
      tcell("Menge", COL_MEN, { bold: true, align: AlignmentType.RIGHT, withBottomLine: true }),
      tcell("Einh.", COL_EH, { bold: true, withBottomLine: true }),
      tcell("Einzelpreis CHF", COL_EP, { bold: true, align: AlignmentType.RIGHT, withBottomLine: true }),
      tcell("Gesamtpreis CHF", COL_GP, { bold: true, align: AlignmentType.RIGHT, withBottomLine: true }),
    ],
  });

  const inhalt = [
    h1("Leistungsverzeichnis Kücheneinrichtung"),
    para("Universitäts-Kinderspital Zürich, Therapiestation, Lenggstrasse 30, 8008 Zürich", { after: 240 }),

    h2("Stammdaten"),
    stamm("Bauherr", PROJEKT.bauherr),
    stamm("Objekt", "Therapiestation, " + PROJEKT.adresse),
    stamm("Gewerk", PROJEKT.gewerk),
    stamm("Projekt-Nr.", PROJEKT.nr),
    stamm("Plangrundlage", PROJEKT.plan + " vom " + PROJEKT.planDatum),
    stamm("Eingabefrist", PROJEKT.fristDatum),

    h2("Hinweise zur Eingabe"),
    itemBullet("Pro Position Einzel- und Gesamtpreis in CHF eintragen (exklusive MwSt)."),
    itemBullet("Positionen mit Vermerk \"bestehend\" werden aus dem Bestand übernommen — keine Lieferung, kein Preis."),
    itemBullet("Positionen mit Vermerk \"bauseits\" sind nicht Gegenstand der Lieferung — kein Preis."),
    itemBullet("Bei Abweichungen vom Plan oder bei gleichwertigen Alternativ-Produkten: Vermerk in der Bemerkungsspalte oder separat in der Offerte."),
    itemBullet("Lieferung, Montage und Inbetriebnahme in separater Position am Ende ausweisen."),
  ];

  // Pro Bereich: H2 + Tabelle
  for (const bereich of LV_BEREICHE) {
    inhalt.push(h2(bereich.nr + " " + bereich.name));

    const rows = [headerRow];

    for (const pos of bereich.positionen) {
      // Beschreibungs-Lines: Hauptbezeichnung + Details (mit echtem Indent) + ggf. Status
      const lines = [{ text: pos.bez, bold: false }];
      if (pos.details) {
        for (const d of pos.details) {
          lines.push({ text: d, size: 21, indent: 220 });
        }
      }
      if (pos.status === "bestehend") {
        lines.push({ text: "(bestehend — wird übernommen)", italics: true, size: 21 });
      } else if (pos.status === "bauseits") {
        lines.push({ text: "(bauseits — nicht Gegenstand der Lieferung)", italics: true, size: 21 });
      }

      const isExcluded = pos.status === "bestehend" || pos.status === "bauseits";
      const priceText = isExcluded ? "—" : "";

      rows.push(new TableRow({
        children: [
          tcell(pos.nr, COL_POS, { withBottomLine: true }),
          tcellMulti(lines, COL_BEZ, { withBottomLine: true }),
          tcell(pos.menge, COL_MEN, { align: AlignmentType.RIGHT, withBottomLine: true }),
          tcell(pos.einheit, COL_EH, { withBottomLine: true }),
          tcell(priceText, COL_EP, { align: AlignmentType.RIGHT, withBottomLine: true }),
          tcell(priceText, COL_GP, { align: AlignmentType.RIGHT, withBottomLine: true }),
        ],
      }));
    }

    // Zwischensumme-Zeile
    rows.push(new TableRow({
      children: [
        tcell("", COL_POS),
        tcell("Zwischensumme " + bereich.nr + " " + bereich.name, COL_BEZ, { bold: true, align: AlignmentType.RIGHT }),
        tcell("", COL_MEN),
        tcell("", COL_EH),
        tcell("", COL_EP),
        tcell("", COL_GP, { bold: true, align: AlignmentType.RIGHT, withBottomLine: true }),
      ],
    }));

    inhalt.push(layoutTable([COL_POS, COL_BEZ, COL_MEN, COL_EH, COL_EP, COL_GP], rows));
  }

  // Total-Bereich (2 Spalten: Label inkl. CHF / Wert)
  inhalt.push(h2("Total"));
  const totalRows = [
    new TableRow({ children: [
      tcell("Summe Kücheneinrichtung exkl. MwSt (CHF)", 7700, { bold: true, align: AlignmentType.RIGHT }),
      tcell("", 1940, { bold: true, align: AlignmentType.RIGHT, withBottomLine: true }),
    ]}),
    new TableRow({ children: [
      tcell("Lieferung, Montage und Inbetriebnahme (CHF)", 7700, { align: AlignmentType.RIGHT }),
      tcell("", 1940, { align: AlignmentType.RIGHT, withBottomLine: true }),
    ]}),
    new TableRow({ children: [
      tcell("Gesamttotal exkl. MwSt (CHF)", 7700, { bold: true, align: AlignmentType.RIGHT, size: 24 }),
      tcell("", 1940, { bold: true, align: AlignmentType.RIGHT, size: 24, withBottomLine: true }),
    ]}),
  ];
  inhalt.push(layoutTable([7700, 1940], totalRows));

  inhalt.push(h2("Bauseitige Leistungen (nicht im Auftrag enthalten)"));
  for (const b of BAUSEITS) inhalt.push(itemBullet(b));

  return inhalt;
}

// ============================================================================
// DOKUMENT 3: ANTWORTFORMULAR
// ============================================================================
function buildAntwortformularInhalt() {
  const COL_LABEL = 3000;
  const COL_VALUE = 6640;

  const labelRow = (label) => new TableRow({
    children: [
      tcell(label, COL_LABEL, { bold: true }),
      tcell("", COL_VALUE, { withBottomLine: true }),
    ],
  });

  return [
    h1("Antwortformular Submission"),
    para("Kücheneinrichtung Therapiestation Universitäts-Kinderspital Zürich", { after: 240 }),
    para("Bitte vollständig ausfüllen und mit der Offerte zusammen einreichen.", { italics: true, after: 240 }),

    h2("Firmenangaben"),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Firma"),
      labelRow("Adresse"),
      labelRow("PLZ / Ort"),
      labelRow("MWST-Nr."),
      labelRow("Kontaktperson Submission"),
      labelRow("Telefon direkt"),
      labelRow("E-Mail"),
    ]),

    h2("Offerte"),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Datum Offerte"),
      labelRow("Gültigkeit Offerte"),
      labelRow("Offert-Total exkl. MwSt (CHF)"),
      labelRow("Offert-Nr."),
    ]),

    h2("Liefertermine"),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Lieferfrist (Wochen ab Auftrag)"),
      labelRow("Frühestmöglicher Liefertermin"),
      labelRow("Montage-Dauer (Tage vor Ort)"),
    ]),

    h2("Zahlungskonditionen"),
    para("Bitte vorgeschlagene Zahlungskonditionen eintragen (z.B. 50% bei Auftragserteilung / 25% vor Lieferung / 25% nach Fertigstellung)."),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Zahlungsplan"),
      labelRow("Zahlungsfrist (Tage netto)"),
      labelRow("Skonto (falls angeboten)"),
    ]),

    h2("Vorbehalte und Abweichungen"),
    para("Allfällige technische oder kommerzielle Vorbehalte hier auflisten, oder gleichwertige Alternativ-Produkte zu Markenvorgaben benennen:"),
    layoutTable([CONTENT_W], [
      new TableRow({ children: [tcell("", CONTENT_W, { withBottomLine: true })], height: { value: 600, rule: HeightRule.EXACT } }),
      new TableRow({ children: [tcell("", CONTENT_W, { withBottomLine: true })], height: { value: 600, rule: HeightRule.EXACT } }),
      new TableRow({ children: [tcell("", CONTENT_W, { withBottomLine: true })], height: { value: 600, rule: HeightRule.EXACT } }),
      new TableRow({ children: [tcell("", CONTENT_W, { withBottomLine: true })], height: { value: 600, rule: HeightRule.EXACT } }),
    ]),

    h2("Referenzen"),
    para("Drei vergleichbare Referenzprojekte (Bauherr, Objekt, Jahr, Auftragsvolumen):"),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Referenz 1"),
      labelRow("Referenz 2"),
      labelRow("Referenz 3"),
    ]),

    h2("Gewährleistung"),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Garantiedauer (Jahre)"),
      labelRow("Service-Vereinbarung optional?"),
    ]),

    h2("Bestätigung"),
    para("Mit Unterzeichnung dieses Formulars bestätigt der Anbieter, dass die Plangrundlagen 26-122-01.3 vom 1. Mai 2026 vollständig erhalten und gesichtet wurden und die Offerte auf diesen Grundlagen basiert."),
    para(""),
    layoutTable([COL_LABEL, COL_VALUE], [
      labelRow("Ort, Datum"),
      labelRow("Unterschrift / Stempel"),
    ]),
  ];
}

// ============================================================================
// DOKUMENT-FACTORY
// ============================================================================
function createDocument(inhalt, titel) {
  return new Document({
    creator: "Raphael Jans Architekten ETH SIA",
    title: titel,
    styles: { default: { document: { run: { font: "Cambria", size: 22 } } } },
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
      children: inhalt,
    }],
  });
}

// ============================================================================
// BUILD ALL
// ============================================================================
async function buildAll() {
  if (!fs.existsSync(OUT_DIR)) {
    fs.mkdirSync(OUT_DIR, { recursive: true });
  }

  const dokumente = [
    { name: "260506_Anschreiben_Submission_Gastrokueche_Therapiestation.docx",
      titel: "Submission Kücheneinrichtung Therapiestation",
      inhalt: buildAnschreibenInhalt() },
    { name: "260506_LV_Submission_Gastrokueche_Therapiestation.docx",
      titel: "Leistungsverzeichnis Kücheneinrichtung Therapiestation",
      inhalt: buildLVInhalt() },
    { name: "260506_Antwortformular_Submission_Gastrokueche_Therapiestation.docx",
      titel: "Antwortformular Submission Kücheneinrichtung Therapiestation",
      inhalt: buildAntwortformularInhalt() },
  ];

  for (const d of dokumente) {
    const doc = createDocument(d.inhalt, d.titel);
    const buffer = await Packer.toBuffer(doc);
    const outPath = path.join(OUT_DIR, d.name);
    fs.writeFileSync(outPath, buffer);
    console.log("DOCX geschrieben:", outPath);
  }
}

buildAll().catch(e => { console.error(e); process.exit(1); });
