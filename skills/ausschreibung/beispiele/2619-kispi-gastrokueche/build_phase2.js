// ============================================================================
// KISPI Therapiestation — Phase 2: Pakete pro Anbieter
// Erstellt 6 personalisierte Anschreiben + kopiert LV/Antwortformular/Plaene
// in den KISPI-Projektordner, ein Unterordner pro Anbieter.
// ============================================================================

const fs = require('fs');
const path = require('path');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType
} = require('docx');
const { execSync } = require('child_process');

// === BASIS-PFADE ===
const PHASE1_DIR = '/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/260506-versand';

const KISPI_BASE = '/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/02_Korrespondenz/5_Spezialplaner/Küchenplaner';
const VERSAND_ROOT = path.join(KISPI_BASE, 'Submission', '260506-Versand-Gastrokueche');

const PLAN_DIR = path.join(KISPI_BASE, 'Gastro-online', '260505 Angebot');
const PLAN_FILES = [
  '26-122-01.3_2026-05-01_Projektplan_Grundriss_Therapiestation_Kispi_Zürich.pdf',
  '26-122-01.3_2026-05-01_Installationsplan_Grundriss_Therapiestation_Kispi_Zürich.pdf',
  '25_122-01.3_Installationslegende_2026_05_01_Kücheneinrichtung_Kispi_Zürich.pdf',
];

// === A4 STANDARD ===
const PAGE_W = 11906, PAGE_H = 16838, MARGIN = 1133;
const CONTENT_W = PAGE_W - 2 * MARGIN;

const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};

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

const footer = () => new Paragraph({
  alignment: AlignmentType.LEFT,
  spacing: { before: 0, after: 0, line: 240 },
  tabStops: [{ type: TabStopType.RIGHT, position: CONTENT_W }],
  children: [
    new TextRun({ text: "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  6. Mai 2026", size: 16 }),
    new TextRun({ text: "\tSeite ", size: 16 }),
    new TextRun({ children: [PageNumber.CURRENT], size: 16 }),
    new TextRun({ text: " von ", size: 16 }),
    new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 16 }),
  ],
});

// ============================================================================
// DATEN
// ============================================================================
const PROJEKT = {
  nr: "2619",
  bauherr: "Universitäts-Kinderspital Zürich",
  adresse: "Lenggstrasse 30, 8008 Zürich",
  gewerk: "Kücheneinrichtung Therapiestation",
  plan: "26-122-01.3",
  planDatum: "1. Mai 2026",
  fristDatum: "Freitag, 15. Mai 2026, 17:00 Uhr",
  fristKW: "Ende KW 20",
  versandDatum: "6. Mai 2026",
};

const BAUSEITS = [
  "Sanitäre Installationen und Anschlüsse",
  "Elektrische Installationen und Anschlüsse",
  "Kältetechnische Installationen und Anschlüsse",
  "Lüftungstechnische Installationen, Kanäle und Anschlüsse",
  "Baumeisterarbeiten, Kernbohrungen, Fliesenarbeiten",
  "Silikonierungsarbeiten an neuer Buffeteinrichtung",
  "Kücheninventar (Schüsseln, Kellen, Schneidebretter und dergleichen)",
];

const BEILAGEN = [
  "Projektplan Grundriss Therapiestation, Plan-Nr. 26-122-01.3 vom 1. Mai 2026",
  "Installationsplan Grundriss Therapiestation, Plan-Nr. 26-122-01.3 vom 1. Mai 2026",
  "Installationslegende Kücheneinrichtung, Plan-Nr. 25-122-01.3 vom 1. Mai 2026",
  "Leistungsverzeichnis Kücheneinrichtung Therapiestation",
  "Antwortformular Submission",
];

const ANBIETER = [
  { slug: "Pius-Nadler-AG", firma: "Pius Nadler AG", adresse: "Haldenstrasse 4", plzort: "8181 Höri", email: "info@piusnadlerag.ch" },
  { slug: "RAMETALL-AG", firma: "RAMETALL AG", adresse: "", plzort: "", email: "info@rametall.ch" },
  { slug: "Schmocker-AG", firma: "Schmocker AG", adresse: "Dammweg 15", plzort: "3800 Interlaken", email: "info@schmocker-ag.ch" },
  { slug: "Hauser-Gastro-AG", firma: "Hauser Gastro AG", adresse: "Werkstrasse 4", plzort: "8620 Wetzikon ZH", email: "info@hauser-gastro.ch" },
  { slug: "Hugentobler-AG", firma: "Hugentobler Schweizer Kochsysteme AG", adresse: "Gewerbestrasse 11", plzort: "3322 Schönbühl", email: "info@hugentobler.ch" },
  { slug: "Resta-AG", firma: "Resta AG", adresse: "Mühlegasse 12", plzort: "9230 Flawil", email: "info@resta.ch" },
];

// ============================================================================
// PERSONALISIERTES ANSCHREIBEN
// ============================================================================
function buildAnschreibenInhalt(anbieter) {
  const empfaengerZeilen = [
    para(anbieter.firma, { bold: true, after: 20 }),
  ];
  if (anbieter.adresse) empfaengerZeilen.push(para(anbieter.adresse, { after: 20 }));
  if (anbieter.plzort) empfaengerZeilen.push(para(anbieter.plzort, { after: 20 }));
  empfaengerZeilen.push(para(anbieter.email, { after: 240 }));

  return [
    h1("Submission Kücheneinrichtung Therapiestation"),
    para("Universitäts-Kinderspital Zürich, Lenggstrasse 30, 8008 Zürich", { after: 320 }),

    h2("Empfänger"),
    ...empfaengerZeilen,

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

function createDocument(inhalt, titel) {
  return new Document({
    creator: "Raphael Jans Architekten ETH SIA",
    title: titel,
    styles: { default: { document: { run: { font: "Cambria", size: 22 } } } },
    numbering: {
      config: [
        { reference: "items",
          levels: [{ level: 0, format: LevelFormat.BULLET, text: "-", alignment: AlignmentType.LEFT,
            style: { paragraph: { indent: { left: 360, hanging: 360 } } } }] },
        { reference: "schritte",
          levels: [{ level: 0, format: LevelFormat.DECIMAL, text: "%1.", alignment: AlignmentType.LEFT,
            style: { paragraph: { indent: { left: 360, hanging: 360 } } } }] },
      ],
    },
    sections: [{
      properties: { page: { size: { width: PAGE_W, height: PAGE_H }, margin: { top: MARGIN, right: MARGIN, bottom: MARGIN, left: MARGIN } } },
      footers: { default: new Footer({ children: [footer()] }) },
      children: inhalt,
    }],
  });
}

// ============================================================================
// ORDNER + DATEIEN PRO ANBIETER
// ============================================================================
async function buildAnbieterPaket(anbieter) {
  const ordner = path.join(VERSAND_ROOT, anbieter.slug);
  fs.mkdirSync(ordner, { recursive: true });

  // 1. Personalisiertes Anschreiben (DOCX)
  const anschreibenName = `260506_Anschreiben_Submission_Gastrokueche_${anbieter.slug}.docx`;
  const anschreibenPath = path.join(ordner, anschreibenName);
  const doc = createDocument(buildAnschreibenInhalt(anbieter), `Submission Kücheneinrichtung Therapiestation - ${anbieter.firma}`);
  const buffer = await Packer.toBuffer(doc);
  fs.writeFileSync(anschreibenPath, buffer);
  console.log("DOCX:", anschreibenPath);

  // 2. LV (generisch, aus Phase 1 kopieren)
  const lvSrc = path.join(PHASE1_DIR, '260506_LV_Submission_Gastrokueche_Therapiestation.docx');
  const lvDst = path.join(ordner, '260506_LV_Submission_Gastrokueche_Therapiestation.docx');
  fs.copyFileSync(lvSrc, lvDst);
  console.log("LV:", lvDst);

  // 3. Antwortformular (generisch)
  const afSrc = path.join(PHASE1_DIR, '260506_Antwortformular_Submission_Gastrokueche_Therapiestation.docx');
  const afDst = path.join(ordner, '260506_Antwortformular_Submission_Gastrokueche_Therapiestation.docx');
  fs.copyFileSync(afSrc, afDst);
  console.log("Antwortformular:", afDst);

  // 4. Plangrundlagen kopieren
  for (const planFile of PLAN_FILES) {
    const planSrc = path.join(PLAN_DIR, planFile);
    const planDst = path.join(ordner, planFile);
    fs.copyFileSync(planSrc, planDst);
  }
  console.log("3 Plangrundlagen kopiert");

  return { ordner, anschreibenPath };
}

// ============================================================================
// MAIN
// ============================================================================
async function main() {
  fs.mkdirSync(VERSAND_ROOT, { recursive: true });
  console.log("Versand-Root:", VERSAND_ROOT);
  console.log("");

  for (const anbieter of ANBIETER) {
    console.log(`=== ${anbieter.firma} ===`);
    await buildAnbieterPaket(anbieter);
    console.log("");
  }

  // Anschreiben-PDFs konvertieren via soffice (alle DOCX im Versand-Root, rekursiv)
  console.log("--- Konvertiere Anschreiben zu PDF ---");
  for (const anbieter of ANBIETER) {
    const ordner = path.join(VERSAND_ROOT, anbieter.slug);
    const docxName = `260506_Anschreiben_Submission_Gastrokueche_${anbieter.slug}.docx`;
    const docxPath = path.join(ordner, docxName);
    try {
      execSync(`soffice --headless --convert-to pdf --outdir "${ordner}" "${docxPath}"`, { stdio: 'pipe' });
      console.log(`PDF: ${anbieter.slug}`);
    } catch (e) {
      console.error("PDF-Konvertierung fehlgeschlagen fuer", anbieter.slug, e.message);
    }
  }

  // Generische LV/Antwortformular PDFs aus Phase 1 in jeden Anbieter-Ordner kopieren
  console.log("\n--- LV/Antwortformular PDFs kopieren ---");
  const lvPdfSrc = path.join(PHASE1_DIR, '260506_LV_Submission_Gastrokueche_Therapiestation.pdf');
  const afPdfSrc = path.join(PHASE1_DIR, '260506_Antwortformular_Submission_Gastrokueche_Therapiestation.pdf');
  for (const anbieter of ANBIETER) {
    const ordner = path.join(VERSAND_ROOT, anbieter.slug);
    fs.copyFileSync(lvPdfSrc, path.join(ordner, path.basename(lvPdfSrc)));
    fs.copyFileSync(afPdfSrc, path.join(ordner, path.basename(afPdfSrc)));
  }
  console.log("LV-PDF + Antwortformular-PDF in alle 6 Anbieter-Ordner kopiert");

  console.log("\nFERTIG. 6 Anbieter-Pakete unter:", VERSAND_ROOT);
}

main().catch(e => { console.error(e); process.exit(1); });
