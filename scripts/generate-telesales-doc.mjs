import { Document, Packer, Paragraph, TextRun, Footer, AlignmentType, PageNumber, NumberFormat, HeadingLevel, TabStopPosition, TabStopType, BorderStyle } from "docx";
import * as fs from "fs";

const FONT = "Arial";
const FONT_SIZE_NORMAL = 22; // half-points -> 11pt
const FONT_SIZE_SMALL = 20;  // 10pt
const FONT_SIZE_TITLE = 36;  // 18pt
const FONT_SIZE_SUBTITLE = 26; // 13pt
const FONT_SIZE_H1 = 28;     // 14pt
const FONT_SIZE_H2 = 24;     // 12pt

const FOOTER_TEXT = "Raphael Jans Architekten ETH, Birmensdorferstrasse 55, 8004 Zuerich | E-Mail: rj@raphaeljans.ch | Tel.: +41 76 367 73 06";

function p(text, options = {}) {
  const { bold, size, spacing, alignment, indent, color } = options;
  return new Paragraph({
    alignment: alignment || AlignmentType.LEFT,
    spacing: { after: spacing !== undefined ? spacing : 120 },
    indent: indent ? { left: indent } : undefined,
    children: [
      new TextRun({
        text,
        font: FONT,
        size: size || FONT_SIZE_NORMAL,
        bold: bold || false,
        color: color || "000000",
      }),
    ],
  });
}

function multiRun(runs, options = {}) {
  const { spacing, indent, alignment } = options;
  return new Paragraph({
    alignment: alignment || AlignmentType.LEFT,
    spacing: { after: spacing !== undefined ? spacing : 120 },
    indent: indent ? { left: indent } : undefined,
    children: runs.map(r => new TextRun({
      font: FONT,
      size: r.size || FONT_SIZE_NORMAL,
      bold: r.bold || false,
      italics: r.italics || false,
      color: r.color || "000000",
      text: r.text,
      break: r.break || undefined,
    })),
  });
}

function heading(text, level, numbering) {
  const sizeMap = { 1: FONT_SIZE_H1, 2: FONT_SIZE_H2 };
  return new Paragraph({
    spacing: { before: 240, after: 120 },
    children: [
      new TextRun({
        text: numbering ? `${numbering} ${text}` : text,
        font: FONT,
        size: sizeMap[level] || FONT_SIZE_H1,
        bold: true,
      }),
    ],
  });
}

function bulletItem(text, indentLevel = 0) {
  const indent = 360 + indentLevel * 360;
  const bullet = indentLevel === 0 ? "\u2022 " : "- ";
  return p(`${bullet}${text}`, { indent, spacing: 80 });
}

function letterItem(letter, text, indentLevel = 1) {
  const indent = 360 + indentLevel * 360;
  return p(`${letter}) ${text}`, { indent, spacing: 80 });
}

function numberedItem(num, text, indentLevel = 0) {
  const indent = 360 + indentLevel * 360;
  return p(`${num}. ${text}`, { indent, spacing: 100 });
}

function arrowResponse(text, indentLevel = 2) {
  const indent = 360 + indentLevel * 360;
  return multiRun([
    { text: "-> ", bold: true },
    { text: `"${text}"`, italics: true },
  ], { indent, spacing: 80 });
}

function emptyLine() {
  return new Paragraph({ spacing: { after: 60 }, children: [] });
}

function separator() {
  return new Paragraph({
    spacing: { before: 120, after: 120 },
    border: {
      bottom: { style: BorderStyle.SINGLE, size: 1, color: "CCCCCC" },
    },
    children: [],
  });
}

const footerParagraph = new Paragraph({
  alignment: AlignmentType.CENTER,
  children: [
    new TextRun({
      text: FOOTER_TEXT,
      font: FONT,
      size: 16, // 8pt
      color: "666666",
    }),
  ],
});

const doc = new Document({
  sections: [
    {
      properties: {
        page: {
          size: { width: 11906, height: 16838 }, // A4
          margin: { top: 1134, bottom: 1134, left: 1134, right: 1134 }, // ~2cm
        },
      },
      footers: {
        default: new Footer({
          children: [footerParagraph],
        }),
      },
      children: [
        // TITLE
        new Paragraph({
          alignment: AlignmentType.CENTER,
          spacing: { after: 80 },
          children: [
            new TextRun({
              text: "Sales am Telefon",
              font: FONT,
              size: FONT_SIZE_TITLE,
              bold: true,
            }),
          ],
        }),
        new Paragraph({
          alignment: AlignmentType.CENTER,
          spacing: { after: 40 },
          children: [
            new TextRun({
              text: "Factsheet zur Gespraechsstruktur, Einwandbehandlung,",
              font: FONT,
              size: FONT_SIZE_SUBTITLE,
              bold: false,
              color: "444444",
            }),
          ],
        }),
        new Paragraph({
          alignment: AlignmentType.CENTER,
          spacing: { after: 120 },
          children: [
            new TextRun({
              text: "Argumente, Infos, Textvorlagen",
              font: FONT,
              size: FONT_SIZE_SUBTITLE,
              bold: false,
              color: "444444",
            }),
          ],
        }),
        new Paragraph({
          alignment: AlignmentType.CENTER,
          spacing: { after: 300 },
          children: [
            new TextRun({
              text: "Asset Management und Portfolio Management",
              font: FONT,
              size: FONT_SIZE_SUBTITLE,
              bold: true,
              color: "333333",
            }),
          ],
        }),

        separator(),

        // SECTION 1
        heading("Struktur des Gespraeches", 1, "1."),
        emptyLine(),

        numberedItem(1, "Kurz vorstellen und mit dem Asset Manager / Portfolio Manager / Leiter Immobilien verbinden lassen."),
        p("Wenn nicht moeglich: Namen, E-Mail, Direktwahl herausfinden. Erreichbarkeiten notieren. Selber aktiv nachfassen!", { indent: 720, spacing: 160 }),

        numberedItem(2, "Wenn Entscheider am Telefon:"),
        emptyLine(),

        letterItem("a", "Eroeffnung:", 1),
        multiRun([
          { text: '"Guten Tag Herr/Frau [Name], mein Name ist [Caller Name] und ich rufe im Auftrag von Raphael Jans Architekten ETH an. Wir sind ein spezialisiertes Architekturbuero in Zuerich, das sich auf die Unterstuetzung von institutionellen Immobilienbesitzern spezialisiert hat \u2013 von der Machbarkeitsstudie ueber Gebaeudeaufnahmen bis zur Begleitung von Generalsanierungen."', italics: true },
        ], { indent: 1080, spacing: 80 }),
        p("[Kurze Pause]", { indent: 1080, spacing: 120, color: "888888" }),

        letterItem("b", "Referenz und Terminanfrage:", 1),
        multiRun([
          { text: '"Wir haben kuerzlich ein grosses Entwicklungsprojekt an der Laternengasse in Zuerich begleitet \u2013 eine gebaeudeenergetische Generalsanierung mit Fassade, Dach, Haustechnik und Innenausbau. Dabei haben wir Matterport-3D-Scans fuer die Bestandsaufnahme eingesetzt und eine vollstaendige Baurechtsanalyse mit Ausnuetzungsberechnung erstellt. Herr Jans wuerde sich gerne mit Ihnen austauschen, um zu sehen, wie wir Ihr Portfolio unterstuetzen koennen. Haetten Sie Zeit fuer ein kurzes Gespraech?"', italics: true },
        ], { indent: 1080, spacing: 80 }),
        p("[Auf Antwort warten]", { indent: 1080, spacing: 160, color: "888888" }),

        separator(),

        // SECTION 3 - Einwaende
        heading("Haeufigste Einwaende", 1, "3."),
        emptyLine(),

        // Einwand a
        letterItem("a", '"Wir haben keinen Bedarf / kein aktuelles Projekt"', 0),
        arrowResponse("Das verstehe ich gut. Viele unserer Kunden beginnen mit einer Portfolioanalyse \u2013 wir identifizieren Liegenschaften mit Entwicklungspotenzial, das Ihnen moeglicherweise noch nicht bekannt ist. Duerfen wir Ihnen ein Beispiel unserer Machbarkeitsstudien zusenden?"),
        emptyLine(),

        // Einwand b
        letterItem("b", '"Wir haben bereits Architekten / Berater"', 0),
        arrowResponse("Sehr gut! Arbeiten diese auch mit Matterport-3D-Scans? Wir bieten das als ergaenzende Dienstleistung an. Die digitale Gebaeudeaufnahme spart enorm Zeit und Kosten bei der Planung."),
        p("Bei Grossbueros:", { indent: 720, bold: true, spacing: 60 }),
        arrowResponse("Wir verstehen uns als spezialisierte Ergaenzung \u2013 gerade bei Machbarkeitsstudien und Baurechtsanalysen sind wir schneller und kostenguenstiger als grosse Generalplaner."),
        p("Bei lokalen Architekten:", { indent: 720, bold: true, spacing: 60 }),
        arrowResponse("Wunderbar. Wir koennen mit bestehenden Partnern zusammenarbeiten und bringen unsere Spezialisierung in Bereichen wie energetische Sanierung, GEAK-Berechnungen und Ausnuetzungsoptimierung ein."),
        emptyLine(),

        // Einwand c
        letterItem("c", '"Schicken Sie eine Unterlage"', 0),
        arrowResponse("Sehr gerne! Ich sende Ihnen unsere Referenzunterlagen mit dem Projekt Laternengasse. Darf ich die Direktnummer von Herrn Jans beilegen?"),
        emptyLine(),

        // Einwand d
        letterItem("d", '"Wir kaufen derzeit nicht / Markt ist schwierig"', 0),
        arrowResponse("Gerade in einer solchen Phase lohnt sich die Analyse des Bestandes. Wir helfen Ihnen, den Wert Ihrer bestehenden Liegenschaften durch gezielte Massnahmen zu steigern \u2013 z.B. durch energetische Sanierung oder Ausnuetzungsoptimierung."),

        separator(),

        // Weitere Argumente
        heading("Weitere Argumente", 2),
        emptyLine(),

        multiRun([
          { text: "Matterport 3D-Digitalisierung: ", bold: true },
          { text: "Vollstaendige Gebaeudeaufnahme ohne mehrfache Begehungen. Einmal scannen, unbegrenzt nutzen \u2013 fuer Planung, Vermietung, Due Diligence." },
        ], { indent: 360, spacing: 100 }),

        multiRun([
          { text: "Machbarkeitsstudien in 2\u20134 Wochen: ", bold: true },
          { text: "Schnelle Entscheidungsgrundlagen mit konkreten Zahlen (Ausnuetzung, Kosten, Rendite)." },
        ], { indent: 360, spacing: 100 }),

        multiRun([
          { text: "Baurechtsanalysen: ", bold: true },
          { text: "Wir pruefen Zonenkonformitaet, Grenzabstaende, Ausnuetzungsreserven und Aufstockungspotenzial." },
        ], { indent: 360, spacing: 100 }),

        multiRun([
          { text: "Kaufpreisempfehlungen: ", bold: true },
          { text: "Architektonische Due Diligence \u2013 was ist baulich moeglich, was kostet es?" },
        ], { indent: 360, spacing: 100 }),

        multiRun([
          { text: "Energetische Generalsanierung: ", bold: true },
          { text: "GEAK-Berechnung, Foerderbeitraege, Etappierung, Kostenschaetzung nach BKP." },
        ], { indent: 360, spacing: 100 }),

        multiRun([
          { text: "Referenz Laternengasse Zuerich: ", bold: true },
          { text: "Generalsanierung fuer Nova Property Fund Management AG \u2013 Fassade, Dach, Fenster, HLKS, Innenausbau." },
        ], { indent: 360, spacing: 100 }),

        separator(),

        // SECTION 4 - E-Mail Vorlagen
        heading("E-Mail-Textvorlagen", 1, "4."),
        emptyLine(),

        multiRun([
          { text: "Absender: ", bold: true },
          { text: "rj@raphaeljans.ch" },
        ], { spacing: 60 }),
        multiRun([
          { text: "Anhang: ", bold: true },
          { text: "Asset Management Referenzen PDF" },
        ], { spacing: 60 }),
        multiRun([
          { text: "Betreff: ", bold: true },
          { text: "Architektur-Expertise fuer Ihr Immobilienportfolio" },
        ], { spacing: 160 }),

        // Template 1
        p("Template 1 \u2013 Nach Gespraech, kein Termin:", { bold: true, spacing: 80 }),
        multiRun([
          { text: '"Sehr geehrter Herr / Frau xy', italics: true },
          { text: "\n", break: 1 },
          { text: "Herzlichen Dank fuer das freundliche Gespraech. Gerne sende ich Ihnen im Anhang unsere Referenzunterlagen im Bereich Portfolio-Unterstuetzung und Entwicklung. Setzen Sie sich jederzeit mit uns in Kontakt \u2013 wir freuen uns auf den Austausch.", italics: true },
          { text: "\n", break: 1 },
          { text: "Freundliche Gruesse", italics: true },
          { text: "\n", break: 1 },
          { text: '[Signatur]"', italics: true },
        ], { indent: 360, spacing: 200 }),

        // Template 2
        p("Template 2 \u2013 Termin vereinbart (CC: rj@raphaeljans.ch):", { bold: true, spacing: 80 }),
        multiRun([
          { text: '"Sehr geehrter Herr / Frau xy', italics: true },
          { text: "\n", break: 1 },
          { text: "Herzlichen Dank fuer das freundliche Gespraech. Gerne bestaetigen wir den Termin:", italics: true },
          { text: "\n", break: 1 },
          { text: "[Tag], [Datum] um [Uhrzeit] bei Ihnen vor Ort.", italics: true },
          { text: "\n", break: 1 },
          { text: "Herr Jans freut sich auf den Austausch ueber Ihr Portfolio.", italics: true },
          { text: "\n", break: 1 },
          { text: "Freundliche Gruesse", italics: true },
          { text: "\n", break: 1 },
          { text: '[Signatur]"', italics: true },
        ], { indent: 360, spacing: 200 }),

        // Template 3
        p("Template 3 \u2013 Telefontermin vereinbart (CC: rj@raphaeljans.ch):", { bold: true, spacing: 80 }),
        multiRun([
          { text: '"Sehr geehrter Herr / Frau xy', italics: true },
          { text: "\n", break: 1 },
          { text: "Herzlichen Dank fuer das Gespraech. Gerne bestaetigen wir den Telefontermin:", italics: true },
          { text: "\n", break: 1 },
          { text: "[Tag], [Datum] um [Uhrzeit]", italics: true },
          { text: "\n", break: 1 },
          { text: "Herr Jans wird Sie unter der gewuenschten Nummer anrufen.", italics: true },
          { text: "\n", break: 1 },
          { text: "Freundliche Gruesse", italics: true },
          { text: "\n", break: 1 },
          { text: '[Signatur]"', italics: true },
        ], { indent: 360, spacing: 200 }),

        separator(),

        // SECTION 5
        heading("Weitere Hinweise", 1, "5."),
        emptyLine(),
        p("Asset Manager und Portfolio Manager schaetzen Professionalitaet, Praezision und Geschwindigkeit. Strukturierte Arbeitsweise ist essenziell. Jeder Kontakt ist ein potenzieller Grossauftrag.", { spacing: 200 }),

        separator(),

        // SECTION 6
        heading("Verguetung", 1, "6."),
        emptyLine(),

        multiRun([
          { text: "Pro fuenf vollstaendig vorqualifizierte Termine: ", bold: false },
          { text: "CHF 1\u2019250.\u2013", bold: true },
          { text: " Auszahlung." },
        ], { spacing: 100 }),

        multiRun([
          { text: "Pro unterzeichneten Vertrag ueber CHF 30\u2019000.\u2013: ", bold: false },
          { text: "Praemie von CHF 1\u2019500.\u2013", bold: true },
        ], { spacing: 100 }),

        multiRun([
          { text: "Bei Zielerreichung (15 gute Termine und zwei Vertraege): ", bold: false },
          { text: "Gesamtverdienst CHF 6\u2019750.\u2013", bold: true },
        ], { spacing: 100 }),
      ],
    },
  ],
});

const OUTPUT_PATH = "/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken\u2013JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/telesales/Sales am Telefon Asset Management 2026.docx";

const buffer = await Packer.toBuffer(doc);
fs.writeFileSync(OUTPUT_PATH, buffer);
console.log("Document created successfully at:");
console.log(OUTPUT_PATH);
console.log(`File size: ${(buffer.length / 1024).toFixed(1)} KB`);
