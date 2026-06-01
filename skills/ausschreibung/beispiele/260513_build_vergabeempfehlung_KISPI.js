// JANS Vergabeempfehlung — KISPI Therapiestation Gastrokueche
const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType, HeightRule
} = require('docx');

const OUT = '/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/auswertung/260513_Vergabeempfehlung_KISPI_Gastrokueche.docx';

const PAGE_W = 11906;
const PAGE_H = 16838;
const MARGIN = 1133;
const CONTENT_W = PAGE_W - 2 * MARGIN;

const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};
const bottomLine = { style: BorderStyle.SINGLE, size: 4, color: "000000" };
const headerRow = {
  top: noBorder, bottom: bottomLine, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};
const totalRow = {
  top: bottomLine, bottom: noBorder, left: noBorder, right: noBorder,
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
  tabStops: [{ type: TabStopType.LEFT, position: 2200 }],
  children: [
    new TextRun({ text: label, bold: true, size: 22 }),
    new TextRun({ text: "\t", size: 22 }),
    new TextRun({ text: wert, size: 22 }),
  ],
});

const itemBold = (praefix, text) => new Paragraph({
  numbering: { reference: "items", level: 0 },
  spacing: { before: 60, after: 60, line: 280 },
  children: [
    new TextRun({ text: praefix, bold: true, size: 22 }),
    new TextRun({ text: text, size: 22 }),
  ],
});

const item = (text) => new Paragraph({
  numbering: { reference: "items", level: 0 },
  spacing: { before: 50, after: 50, line: 280 },
  children: [new TextRun({ text, size: 22 })],
});

const itemNum = (text) => new Paragraph({
  numbering: { reference: "schritte", level: 0 },
  spacing: { before: 50, after: 50, line: 280 },
  children: [new TextRun({ text, size: 22 })],
});

const tcell = (text, w, opts = {}) => new TableCell({
  borders: opts.borders ?? noBorders,
  width: { size: w, type: WidthType.DXA },
  margins: { top: 40, bottom: 40, left: 60, right: 100 },
  children: [new Paragraph({
    spacing: { before: 0, after: 0, line: 280 },
    alignment: opts.align ?? AlignmentType.LEFT,
    children: [new TextRun({
      text,
      bold: opts.bold ?? false,
      italics: opts.italics ?? false,
      size: opts.size ?? 20,
    })],
  })],
});

const layoutTable = (columnWidths, rows) => new Table({
  width: { size: columnWidths.reduce((a, b) => a + b, 0), type: WidthType.DXA },
  columnWidths,
  rows,
});

const footer = () => new Paragraph({
  alignment: AlignmentType.LEFT,
  spacing: { before: 0, after: 0, line: 240 },
  tabStops: [{ type: TabStopType.RIGHT, position: CONTENT_W }],
  children: [
    new TextRun({ text: "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  13. Mai 2026", size: 16 }),
    new TextRun({ text: "\tSeite ", size: 16 }),
    new TextRun({ children: [PageNumber.CURRENT], size: 16 }),
    new TextRun({ text: " von ", size: 16 }),
    new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 16 }),
  ],
});

// Spaltenbreiten fuer die Gegenuebersichts-Tabelle
const COL_POS = 700;
const COL_BEZ = 4400;
const COL_RAM = 1400;
const COL_GAS = 1400;
const COL_BEM = CONTENT_W - COL_POS - COL_BEZ - COL_RAM - COL_GAS;

const headerCells = (left = "Pos.") => new TableRow({
  tableHeader: true,
  children: [
    tcell(left, COL_POS, { bold: true, borders: headerRow }),
    tcell("Bezeichnung / Bemerkung", COL_BEZ, { bold: true, borders: headerRow }),
    tcell("Rametall CHF", COL_RAM, { bold: true, align: AlignmentType.RIGHT, borders: headerRow }),
    tcell("Gastro-Online CHF", COL_GAS, { bold: true, align: AlignmentType.RIGHT, borders: headerRow }),
    tcell("Bemerkung", COL_BEM, { bold: true, borders: headerRow }),
  ],
});

const dataRow = (pos, bez, ram, gas, bem, opts = {}) => new TableRow({
  children: [
    tcell(pos, COL_POS, { borders: opts.borders ?? noBorders }),
    tcell(bez, COL_BEZ, { borders: opts.borders ?? noBorders }),
    tcell(ram, COL_RAM, { align: AlignmentType.RIGHT, borders: opts.borders ?? noBorders }),
    tcell(gas, COL_GAS, { align: AlignmentType.RIGHT, borders: opts.borders ?? noBorders }),
    tcell(bem, COL_BEM, { borders: opts.borders ?? noBorders, size: 18 }),
  ],
});

const subtotalRow = (label, ram, gas) => new TableRow({
  children: [
    tcell("", COL_POS, { borders: totalRow }),
    tcell(label, COL_BEZ, { bold: true, borders: totalRow }),
    tcell(ram, COL_RAM, { bold: true, align: AlignmentType.RIGHT, borders: totalRow }),
    tcell(gas, COL_GAS, { bold: true, align: AlignmentType.RIGHT, borders: totalRow }),
    tcell("", COL_BEM, { borders: totalRow }),
  ],
});

const sectionTable = (title, headerLeft, rows, sub) => layoutTable(
  [COL_POS, COL_BEZ, COL_RAM, COL_GAS, COL_BEM],
  [headerCells(headerLeft), ...rows, subtotalRow(sub.label, sub.ram, sub.gas)]
);

// ====== INHALT ======

const inhalt = [
  h1("Vergabeempfehlung Kuecheneinrichtung"),
  para("Universitaets-Kinderspital Zuerich, Therapiestation, Lenggstrasse 30, 8008 Zuerich", { after: 160 }),
  para("Gegenueberstellung der Angebote Rametall AG und Gastro-Online AG mit Bemerkungen zu Leistungsunterschieden, Risiken und Empfehlung der Vergabe.", { after: 320, italics: true }),

  h2("Stammdaten"),
  stamm("Bauherr", "Universitaets-Kinderspital Zuerich"),
  stamm("Objekt", "Therapiestation, Lenggstrasse 30, 8008 Zuerich"),
  stamm("Projekt-Nr.", "2619"),
  stamm("Gewerk", "Kuecheneinrichtung Therapiestation"),
  stamm("Verfasser", "Raphael Jans Architekten ETH SIA"),
  stamm("Datum Bericht", "13. Mai 2026"),

  h2("Angebote im Vergleich"),
  stamm("Anbieter A", "Rametall AG (Submissionsteilnehmer)"),
  stamm("Angebot", "260506_LV_Submission_Gastrokueche_Therapiestation_RAMETALL"),
  stamm("Datum", "6. Mai 2026 / Eingabefrist 15. Mai 2026"),
  stamm("Plangrundlage", "26-122-01.3 vom 1. Mai 2026"),
  para(""),
  stamm("Anbieter B", "Gastro-Online AG, Marco Schwander (Fachplaner)"),
  stamm("Angebot", "Kostenzusammenstellung Kuecheneinrichtung Therapiestation"),
  stamm("Datum", "13. Mai 2026 (Abgebot nach Plan-Revision)"),
  stamm("Plangrundlage", "26-122-01.4 (neuere Revision)"),

  h2("Kritische Befunde vor dem Preisvergleich"),
  itemBold("Unterschiedliche Plan-Revisionen.  ", "Rametall offerierte auf Plan 26-122-01.3, Gastro-Online auf 26-122-01.4. Zwischen den Revisionen aenderten sich Arbeitstisch-Geometrie (Pos. 2.01: 2289 mm vs. 3040 mm), die Herdanlage (Plan .3 mit Standfriteuse-Ausschnitt, Plan .4 mit groesserer Power-Induktionsanlage) sowie die Positions-Zuordnung im Bereich Lager. Ein direkter positionsweiser Preisvergleich ist daher nur eingeschraenkt fair; Rametall muss vor Auftragserteilung auf Plan 01.4 nachofferieren."),
  itemBold("Additionsfehler Rametall.  ", "Summe der Zwischensummen 60'160 CHF, ausgewiesene Summe Kuecheneinrichtung 64'160 CHF. Differenz 4'000 CHF zugunsten Rametall (Kalkulations- oder Uebertragungsfehler). Vor Auftrag schriftlich klaeren ob 60'160 oder 64'160 verbindlich gilt."),
  itemBold("Funktionaler Unterschied Herdanlage.  ", "Rametall offeriert Infrarot-Kochfelder 2x3 kW (Total 12 kW, Glasmass 350 x 650 mm, Typ Berner BS2ZES) auf Korpus 2100 x 850 x 900 mm. Gastro-Online offeriert Power-Induktion 2x2er-Kochfelder a 360 x 660 mm auf Korpus 3300 x 1100 x 900 mm. Im Spital-Therapiebetrieb (Kinder, Personalwechsel) ist Induktion sicherheits- und reinigungsfreundlicher; das Plan-Update auf .4 reflektiert offensichtlich diesen Wechsel."),
  itemBold("Fehlende Positionen bei Gastro-Online.  ", "Position 1.04 Gemueseschneidemaschine Rotor Varimat Speed Gourmet (Rametall 4'950 CHF) fehlt in der Gastro-Offerte. Zudem sind Putzschrank (Pos. 6.01/6.02), Lagerschrank Fluegeltueren 1000 x 590 (Pos. 5.03 Rametall) und ScanBox bei Gastro als bauseits markiert, bei Rametall im Lieferumfang. Konsolidierter Lieferumfang muss vor Vergabe vereinbart werden."),
  itemBold("Lieferzeit und Zahlung nur bei Gastro angegeben.  ", "Gastro: 8-10 Wochen ab Detailbereinigung; 50/25/25 (50% Anzahlung). Rametall macht im LV keine Angaben zu Lieferfrist und Zahlungsplan. Beides ist bei Vergabe zwingend zu fixieren."),
];

// ===== Bereiche =====

const sec1 = sectionTable("1.0 Spuelen / Ruesten", "1.0",
  [
    dataRow("1.01", "Arbeitstisch 3380 mm mit Unterbau (Fluegeltuere, Abfallfach, Nische GSP, Doppelfluegeltuere)", "7'900", "9'830", "Identische Beschreibung; Gastro +24%."),
    dataRow("1.02", "Untertisch-Geschirrspuelmaschine Meiko Upster", "bestehend", "bestehend", "Wird uebernommen."),
    dataRow("1.03", "Servicewagen 3-bordig", "450 (CNS)", "bestehend", "LV fordert CNS-Ausfuehrung, Gastro nimmt bestehenden Kunststoff-Wagen. Funktion- und Hygienefrage."),
    dataRow("1.04", "Gemueseschneidemaschine Rotor Varimat Speed Gourmet, 5 Schneidescheiben", "4'950", "—", "Fehlt bei Gastro vollstaendig. Muss nachofferiert werden."),
    dataRow("1.05/1.06", "Wandhaengeschrank Fluegeltueren 800 x 360 x 760 (2 Stk)", "1'860", "2'500", "Gastro +34%."),
  ],
  { label: "Zwischensumme 1.0", ram: "15'160", gas: "12'330" }
);

const sec2 = sectionTable("2.0 Warme Kueche", "2.0",
  [
    dataRow("2.01", "Arbeitstisch mit Becken und Kuehlunterbau — Plan .3: 2289 mm, 2x GN-1/1 Kuehlkorpus / Plan .4: 3040 mm, 1x GN-1/1 + Nische UT-TKS, Fluegeltuere", "6'130", "14'300", "Nicht direkt vergleichbar (andere Geometrie und Kuehlausstattung). Differenz reflektiert Plan-Revision."),
    dataRow("2.02", "Rational iCombi Pro 6 x GN-2/3, UltraVent Plus, Tischuntergestell, 6 Roste", "11'900", "12'100", "Identisches Geraet, Differenz +1.7%. Marktkonform."),
    dataRow("2.03", "UT-Tiefkuehlschrank EK 595 x 642 x 830 (nur Plan .4)", "—", "bestehend", "Nur in Plan .4 explizit gefuehrt."),
    dataRow("2.04 / 2.03", "Wandhaengeschrank — Plan .3: Fluegeltueren 957 mm / Plan .4: Schiebetueren 1200 mm", "1'040", "1'500", "Tuerart und Breite unterschiedlich."),
    dataRow("2.05", "Wandhaengeschrank offen 1000 mm mit Tablar (nur Plan .4)", "—", "670", "Plan-.4-Ergaenzung."),
    dataRow("(2.04 R)", "Regalwagen 8 x GN-2/1 — bei Gastro unter 4.01 gefuehrt", "830", "(in 4.01)", "Position pro Anbieter anders zugeordnet."),
  ],
  { label: "Zwischensumme 2.0", ram: "19'900", gas: "28'570" }
);

const sec3 = sectionTable("3.0 Herdanlage", "3.0",
  [
    dataRow("3.01", "Herd / Korpus Kochen — Rametall: Infrarot 2x3 kW total 12 kW, Korpus 2100 x 850 x 900, Glas Berner BS2ZES / Gastro: Power-Induktion 2x 2er a 360 x 660, Korpus 3300 x 1100 x 900 inkl. 2 Tablarfaecher und Induktionsfuss", "12'940", "26'750", "Kein gleichwertiger Vergleich. Rametall liefert kleinere, schwaechere Infrarot-Anlage; Gastro die Plan-.4-Power-Induktion. Funktional KRITISCH fuer Therapiebetrieb."),
    dataRow("3.02", "Ablufthaube ca. 1200 x 1200 x 450", "bauseits", "bauseits", "Beide bauseits — durch HLK-Planer abgewickelt."),
  ],
  { label: "Zwischensumme 3.0", ram: "12'940", gas: "26'750" }
);

const sec4 = sectionTable("4.0 Vorbereiten", "4.0",
  [
    dataRow("4.01", "Arbeitstisch 1200 x 600 fahrbar mit Korpus 3 Schubladen, Tablarfach, 4 Lenkrollen", "3'350", "—", "Nur in Plan .3 — bei Gastro nicht enthalten."),
    dataRow("4.02", "Arbeitstisch 1000 x 600 fahrbar mit 2 Fluegeltuerfaechern", "2'680", "—", "Nur in Plan .3 — bei Gastro nicht enthalten."),
    dataRow("4.03 / 4.01", "Servicewagen / Regalwagen — Rametall: Servicewagen CNS / Gastro: Regalwagen 8 x GN-2/1", "450", "970", "Unterschiedliche Geraete trotz aehnlicher Pos.-Nr."),
  ],
  { label: "Zwischensumme 4.0", ram: "6'480", gas: "970" }
);

const sec5 = sectionTable("5.0 Lager / Economat", "5.0",
  [
    dataRow("5.01", "Doppeltuerkuehlschrank GN-2/1 ca. 1400 l", "bestehend", "bestehend", "Wird uebernommen."),
    dataRow("5.02", "Kuehlkorpus mit 2 Kuehlschubladen und CNS-Arbeitsplatte", "bestehend", "bestehend", "Wird uebernommen."),
    dataRow("5.03", "Lagerschrank CNS Fluegeltueren 1000 x 590 x 2000", "2'330", "(als 6.02 bauseits)", "Bei Gastro als bauseits gefuehrt — Lieferumfang-Differenz."),
    dataRow("5.04", "ScanBox Warmhaltewagen (Rametall: bauseits / Gastro: bauseits)", "bauseits", "bauseits", "Bei Gastro als 6.04, beide ohne Preis."),
    dataRow("5.05/5.06 + Aluregale", "Aluminiumregale 4-lagig (3-4 Stk je nach Liste): 770 und 1200 mm", "1'100", "1'530", "Gastro fuehrt 4 Aluregale, Rametall 2. Mengen-Differenz."),
  ],
  { label: "Zwischensumme 5.0", ram: "3'030", gas: "1'530" }
);

const sec6 = sectionTable("6.0 Lager", "6.0",
  [
    dataRow("6.01", "Aluminiumregal 4-lagig 770 x 460 x 1675", "470", "350", "Identische Position; Gastro -26%."),
    dataRow("6.02", "Putzschrank ca. 600 x 590 x 2000 mit Tablaren, Putzmittelkorb, Besenhalterung, abschliessbar", "2'180", "bauseits", "Bei Gastro als bauseits — bei Rametall im Lieferumfang. Material-Differenz fixieren."),
  ],
  { label: "Zwischensumme 6.0", ram: "2'650", gas: "350 + bauseits" }
);

inhalt.push(h2("Positions-Gegenueberstellung"));
inhalt.push(para("Preise in CHF, exkl. MwSt. Bauseits = nicht Bestandteil der Lieferung. Bestehend = wird aus Bestand uebernommen.", { italics: true, after: 200 }));

inhalt.push(sec1);
inhalt.push(para("", { after: 100 }));
inhalt.push(sec2);
inhalt.push(para("", { after: 100 }));
inhalt.push(sec3);
inhalt.push(para("", { after: 100 }));
inhalt.push(sec4);
inhalt.push(para("", { after: 100 }));
inhalt.push(sec5);
inhalt.push(para("", { after: 100 }));
inhalt.push(sec6);

// ===== Totale =====

inhalt.push(h2("Gesamttotale exkl. MwSt"));
const totalRows = [
  headerCells("Pos."),
  dataRow("", "Summe der Zwischensummen 1.0-6.0", "60'160", "70'500", "Rametall: rechnerische Summe der Bereiche."),
  dataRow("", "Ausgewiesene Summe Kuecheneinrichtung", "64'160", "70'500", "Rametall mit Additionsfehler +4'000."),
  dataRow("", "Projektrabatt", "—", "-2'800", "Nur Gastro: Projektrabatt 4% auf Kuecheneinrichtung."),
  dataRow("", "Zwischentotal Kuecheneinrichtung", "64'160", "67'700", ""),
  dataRow("", "Lieferung / Montage / Inbetriebnahme", "5'000", "4'700", ""),
  subtotalRow("Gesamttotal exkl. MwSt (gemaess Offerte)", "69'160", "72'400"),
];
inhalt.push(layoutTable([COL_POS, COL_BEZ, COL_RAM, COL_GAS, COL_BEM], totalRows));

inhalt.push(para("", { after: 100 }));
inhalt.push(para("Bereinigte Schaetzung auf gleichen Stand (Plan 01.4, vollstaendiger Lieferumfang) — eigene Naeherung des Verfassers:", { italics: true, after: 80 }));
inhalt.push(itemBold("Rametall.  ", "Aufschlag fuer Plan-.4-Anpassungen (Power-Induktionsanlage statt Infrarot, Arbeitstisch 3040 mm statt 2289 mm) geschaetzt 12'000 - 14'000 CHF. Korrigierte Bandbreite rund 78'000 - 83'000 CHF brutto."));
inhalt.push(itemBold("Gastro-Online.  ", "Aufschlag fuer aktuell bauseits gefuehrte Positionen (Gemueseschneider, Putzschrank, Lagerschrank Fluegeltueren) geschaetzt 9'000 - 12'000 CHF. Bandbreite rund 81'000 - 85'000 CHF brutto."));
inhalt.push(para("Auf bereinigter Basis liegen beide Angebote in einem Korridor von etwa 78'000 - 85'000 CHF, mit leichtem Vorteil Rametall — vorbehaltlich Klaerung der Plan-Anpassung und des Additionsfehlers.", { after: 200 }));

// ===== AGB-/Konditionen-Vergleich =====

inhalt.push(h2("Konditionen-Vergleich"));
const COL_KRIT = 2800;
const COL_RA = 4000;
const COL_GA = CONTENT_W - COL_KRIT - COL_RA;

const kRow = (krit, ra, ga) => new TableRow({
  children: [
    tcell(krit, COL_KRIT, { bold: true }),
    tcell(ra, COL_RA),
    tcell(ga, COL_GA),
  ],
});
const kHeader = new TableRow({
  tableHeader: true,
  children: [
    tcell("Kriterium", COL_KRIT, { bold: true, borders: headerRow }),
    tcell("Rametall AG", COL_RA, { bold: true, borders: headerRow }),
    tcell("Gastro-Online AG", COL_GA, { bold: true, borders: headerRow }),
  ],
});

inhalt.push(layoutTable([COL_KRIT, COL_RA, COL_GA], [
  kHeader,
  kRow("Plan-Stand offeriert", "26-122-01.3 vom 1. Mai 2026", "26-122-01.4 (aktueller Stand)"),
  kRow("Lieferzeit", "Keine Angabe im LV", "8-10 Wochen ab Detailbereinigung / Bestellung"),
  kRow("Zahlung", "Keine Angabe im LV", "50% Anzahlung / 25% vor Lieferung / 25% nach Fertigstellung"),
  kRow("Gewaehrleistung", "Keine Angabe", "Keine Angabe (SIA 118 anzunehmen)"),
  kRow("Bauseits-Leistungen", "Standard (Sanitaer, Elektro, HLK, Baumeister, Silikon, Inventar)", "Identisch + ScanBox, Putzschrank, Lagerschrank Fluegeltueren"),
  kRow("Projektrabatt", "Nicht angegeben", "4% auf Kuecheneinrichtung (2'800 CHF) bereits eingerechnet"),
  kRow("Marken / Geraete", "Berner Infrarot, kleinere Herdanlage", "Rational iCombi Pro, Meiko Upster, Power-Induktion gemaess Plan .4"),
  kRow("Rolle Anbieter", "Submissionsteilnehmer", "Fachplaner Gastro (urspruengliche Submissions-Begleitung)"),
]));

// ===== Risiko-Matrix =====

inhalt.push(h2("Risiko-Matrix"));
inhalt.push(itemBold("Rot - Plan-Inkonsistenz.  ", "Vergleich nicht auf gleichem Plan-Stand; Vergabe ohne Nachofferte auf Plan 01.4 nicht moeglich."));
inhalt.push(itemBold("Rot - Additionsfehler Rametall.  ", "4'000 CHF Differenz zwischen Zwischensummen und Total. Verbindliche Summe muss schriftlich bestaetigt werden."));
inhalt.push(itemBold("Rot - Funktion Herdanlage.  ", "Infrarot vs. Power-Induktion. Therapiestation mit Kindern: Induktion deutlich sicherer (kalte Glaskeramik nach Abschalten) und reinigungsfreundlicher."));
inhalt.push(itemBold("Gelb - Lieferumfang.  ", "Gemueseschneider, Putzschrank, Lagerschrank — Verschiebungen zwischen Lieferung und bauseits muessen bilateral identisch werden."));
inhalt.push(itemBold("Gelb - Zahlung Gastro.  ", "50% Anzahlung ist hoch (marktueblich 30%). Reduktion auf 30/40/30 oder Bankgarantie ueber Anzahlung im Verhandlungsgespraech adressieren."));
inhalt.push(itemBold("Gelb - Lieferzeit Rametall offen.  ", "Mit Bauprogramm abzugleichen; Verbindlicher Liefertermin ist Vergabevoraussetzung."));
inhalt.push(itemBold("Gruen - Schluesselgeraet iCombi Pro.  ", "Markengleich, Preisdifferenz minim (1.7%). Kein Risiko."));
inhalt.push(itemBold("Gruen - Bauseitige Schnittstellen.  ", "Beide Anbieter listen identische Bauseits-Position (Sanitaer/Elektro/HLK/Baumeister/Silikon/Inventar)."));

// ===== Empfehlung =====

inhalt.push(h2("Empfehlung der Vergabe"));
inhalt.push(para("Erstplatzierung: Gastro-Online AG, vorbehaltlich Nachverhandlung.", { bold: true, after: 80 }));
inhalt.push(para("Begruendung:", { bold: true, after: 60 }));
inhalt.push(item("Offeriert auf dem aktuellen Plan-Stand 01.4 und damit verbindlich. Rametall muesste vor Vergabe komplett neu offerieren — das verzoegert und schafft neuen Verhandlungsbedarf."));
inhalt.push(item("Geraete-Spezifikation deckt die funktionalen Anforderungen der Therapiestation vollstaendig (Power-Induktion sicher fuer Therapiebetrieb, Rational iCombi Pro als Industriestandard, vollwertiger Arbeitstisch warme Kueche)."));
inhalt.push(item("Konditionen transparent (Lieferzeit 8-10 Wochen, Zahlungsplan, Projektrabatt 4% bereits eingerechnet) — direkt vertragsreif nach Detailbereinigung."));
inhalt.push(item("Fachplaner-Rolle: Schwander hat die Submission begleitet und kennt den Bestand (uebernommene Geraete iCombi Pro / Meiko Upster / Doppeltuerkuehlschrank). Schnittstellenrisiko niedriger."));
inhalt.push(item("Kein bewiesener Preisvorteil bei Rametall: Die scheinbare Differenz 69'160 vs. 72'400 reduziert sich nach Bereinigung um Plan-Stand, Additionsfehler und Lieferumfang voraussichtlich auf ein Niveau (78'000 - 85'000 CHF). Preisliche Vergleichbarkeit ist heute nicht belastbar."));

inhalt.push(para("Zweitempfehlung: Rametall AG als Backup, falls Verhandlung mit Gastro-Online scheitert oder Bauherr aus Submissionsgruenden auf den Submissionsteilnehmer bestehen will. In diesem Fall ist eine vollstaendige Nachofferte auf Plan 01.4 zwingend vor Vergabe einzuholen.", { before: 160, after: 200 }));

// ===== Verhandlungspunkte =====

inhalt.push(h2("Verhandlungspunkte Gastro-Online"));
inhalt.push(itemNum("Reduktion in Bandbreite 8 - 12% auf das Total nach Aufnahme der heute bauseits gefuehrten Positionen (Gemueseschneider, Putzschrank, Lagerschrank). Begruendung: Erstofferte, Direktverhandlung, Healthcare-Segment, Fachplaner-Beziehung."));
inhalt.push(itemNum("Zahlungsplan anpassen: Anzahlung von 50% auf 30% reduzieren, alternativ Bankgarantie ueber die Anzahlung. Restzahlung erst nach mangelfreier Inbetriebnahme."));
inhalt.push(itemNum("Aufnahme Gemueseschneider Rotor Varimat Speed Gourmet (Pos. 1.04 LV) als Nachtrag mit Preis-Cap aus dem Rametall-Vergleich (4'950 CHF Richtwert)."));
inhalt.push(itemNum("Klaerung Putzschrank und Lagerschrank Fluegeltueren — wer liefert (Bauherr separat oder im Auftrag aufgenommen)? Kostentransparenz herstellen."));
inhalt.push(itemNum("Servicewagen 3-bordig CNS-Ausfuehrung (nicht Kunststoff bestehend) gemaess LV — entweder mitliefern oder gemeinsamer Verzicht dokumentieren."));
inhalt.push(itemNum("Verbindlicher Liefertermin im Bauprogramm verankern; Konventionalstrafe bei Ueberschreitung gemaess SIA 118."));
inhalt.push(itemNum("Gewaehrleistung 2 Jahre auf Geraete (Herstellervorgaben) und 5 Jahre auf CNS-Bauteile gemaess SIA 118 bestaetigen."));

// ===== Naechste Schritte =====

inhalt.push(h2("Naechste Schritte"));
inhalt.push(itemNum("Schriftliche Klaerungsfragen an Rametall senden (Plan-.4-Nachofferte, Additionsfehler, Lieferzeit, Zahlung, Gewaehrleistung) — Eingangsfrist 22. Mai 2026."));
inhalt.push(itemNum("Detailbereinigungs-Gespraech mit Gastro-Online (Marco Schwander) ansetzen — vor Vergabe-Entscheid."));
inhalt.push(itemNum("Nach Eingang Rametall-Klaerung: Aktualisierter Quervergleich auf gleicher Plan-Basis (Plan 01.4) erstellen."));
inhalt.push(itemNum("Vergabeempfehlung der Bauherrschaft KISPI zur Freigabe vorlegen. Werkvertrag nach SIA 118 vorbereiten."));
inhalt.push(itemNum("Termin-Synchronisation mit HLK (Ablufthaube), Sanitaer und Elektro fuer die bauseitigen Schnittstellen."));

// ====== END INHALT ======

const doc = new Document({
  creator: "Raphael Jans Architekten ETH",
  title: "Vergabeempfehlung KISPI Gastrokueche",
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

Packer.toBuffer(doc).then(buffer => {
  fs.writeFileSync(OUT, buffer);
  console.log("DOCX geschrieben:", OUT);
});
