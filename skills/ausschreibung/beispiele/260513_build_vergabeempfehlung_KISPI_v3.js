// JANS Vergabeempfehlung v2 — KISPI Therapiestation Gastrokueche (korrigiert)
const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType
} = require('docx');

const OUT = '/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/auswertung/260513_Vergabeempfehlung_KISPI_Gastrokueche_v3.docx';

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
    new TextRun({ text: "Raphael Jans Architekten ETH SIA  -  rj@raphaeljans.ch  -  13. Mai 2026  -  v3 (Layout korrigiert)", size: 16 }),
    new TextRun({ text: "\tSeite ", size: 16 }),
    new TextRun({ children: [PageNumber.CURRENT], size: 16 }),
    new TextRun({ text: " von ", size: 16 }),
    new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 16 }),
  ],
});

// Tabellen-Helfer fuer Detail-Tabellen
// Spaltenbreiten so dimensioniert, dass die Bemerkungs-Spalte mindestens 25%
// der Inhaltsbreite (>=2400 DXA / ~4 cm) erhaelt — sonst werden Bemerkungen
// unleserlich. Faustregel JANS-Layout: Bezeichnung max. 50%, Werte je 12%,
// Bemerkung mindestens 25% der Inhaltsbreite.
const COL_BEZ_A = 4700;   // ca. 49% — Bezeichnung mit Spezifikation
const COL_R_A   = 1100;   // ca. 11% — Rametall CHF
const COL_G_A   = 1100;   // ca. 11% — Gastro CHF
const COL_BEM_A = CONTENT_W - COL_BEZ_A - COL_R_A - COL_G_A; // ca. 29% — Bemerkung

const detailHeader = () => new TableRow({
  tableHeader: true,
  children: [
    tcell("Position", COL_BEZ_A, { bold: true, borders: headerRow }),
    tcell("Rametall", COL_R_A, { bold: true, align: AlignmentType.RIGHT, borders: headerRow }),
    tcell("Gastro", COL_G_A, { bold: true, align: AlignmentType.RIGHT, borders: headerRow }),
    tcell("Bemerkung", COL_BEM_A, { bold: true, borders: headerRow }),
  ],
});

const dRow = (b, r, g, bem) => new TableRow({
  children: [
    tcell(b, COL_BEZ_A),
    tcell(r, COL_R_A, { align: AlignmentType.RIGHT }),
    tcell(g, COL_G_A, { align: AlignmentType.RIGHT }),
    tcell(bem, COL_BEM_A),
  ],
});

const dTotal = (b, r, g, bem) => new TableRow({
  children: [
    tcell(b, COL_BEZ_A, { bold: true, borders: totalRow }),
    tcell(r, COL_R_A, { bold: true, align: AlignmentType.RIGHT, borders: totalRow }),
    tcell(g, COL_G_A, { bold: true, align: AlignmentType.RIGHT, borders: totalRow }),
    tcell(bem, COL_BEM_A, { bold: true, borders: totalRow }),
  ],
});

// ====== INHALT ======

const inhalt = [
  h1("Vergabeempfehlung Kuecheneinrichtung — korrigiert"),
  para("Universitaets-Kinderspital Zuerich, Therapiestation, Lenggstrasse 30, 8008 Zuerich", { after: 160 }),
  para("Korrigierte Auswertung der Angebote Rametall AG und Gastro-Online AG mit isoliertem Preisvergleich der gleichen Positionen, vollstaendigem Lieferumfangs-Mapping und bereinigter Empfehlung. Loest die erste Fassung vom selben Tag ab.", { after: 320, italics: true }),

  h2("Stammdaten"),
  stamm("Bauherr", "Universitaets-Kinderspital Zuerich"),
  stamm("Objekt", "Therapiestation, Lenggstrasse 30, 8008 Zuerich"),
  stamm("Projekt-Nr.", "2619"),
  stamm("Gewerk", "Kuecheneinrichtung Therapiestation"),
  stamm("Verfasser", "Raphael Jans Architekten ETH SIA"),
  stamm("Datum Bericht", "13. Mai 2026, Fassung v3 (Layout korrigiert)"),

  h2("Kernfrage und Methodik"),
  para("Die zentrale Frage ist nicht, welches Total-Angebot tiefer steht — es ist, welcher Anbieter den gleichen Lieferumfang zu welchem Preis liefert. Die Nominal-Totale sind nicht direkt vergleichbar, weil (a) die Offerten auf unterschiedlichen Plan-Revisionen beruhen und (b) der Lieferumfang signifikant variiert.", { after: 100 }),
  para("Die Auswertung trennt daher in drei Bloecke:", { after: 80 }),
  itemBold("A. Gleich offerierte Positionen.  ", "Was beide Anbieter zur gleichen Spezifikation offeriert haben — der einzig faire Direktpreis-Vergleich."),
  itemBold("B. Nur in einem Angebot enthalten.  ", "Welche Position fehlt beim anderen oder wurde als bauseits markiert."),
  itemBold("C. Spezifikations-Differenz.  ", "Wo gleicher Zweck, aber unterschiedliche Spezifikation (Geometrie, Geraet, Plan-Stand)."),

  h2("Block A — gleich offerierte Positionen"),
  para("Beide Offerten enthalten diese Positionen mit identischer Spezifikation. Direkter Preisvergleich moeglich.", { italics: true, after: 100 }),

  layoutTable([COL_BEZ_A, COL_R_A, COL_G_A, COL_BEM_A], [
    detailHeader(),
    dRow("Arbeitstisch 3380 mm Spuelen/Ruesten mit Unterbau (Pos. 1.01)", "7'900", "9'830", "Gastro +1'930 / +24%"),
    dRow("Wandhaengeschrank 800 x 360 x 760 Fluegeltueren  -  Stk. 1", "930", "1'250", "Gastro +320 / +34%"),
    dRow("Wandhaengeschrank 800 x 360 x 760 Fluegeltueren  -  Stk. 2", "930", "1'250", "Gastro +320 / +34%"),
    dRow("Rational iCombi Pro 6 x GN-2/3, UltraVent Plus, Tischuntergestell (Pos. 2.02)", "11'900", "12'100", "Gastro +200 / +1.7%"),
    dRow("Regalwagen 8 x GN-2/1 mit Lenkrollen", "830", "970", "Gastro +140 / +17%"),
    dRow("Aluminiumregal 1200 x 460 x 1675", "630", "480", "Rametall +150 / +31%"),
    dRow("Aluminiumregal 770 x 460 x 1675  -  Stk. 1", "470", "350", "Rametall +120 / +34%"),
    dRow("Aluminiumregal 770 x 460 x 1675  -  Stk. 2", "470", "350", "Rametall +120 / +34%"),
    dTotal("Summe Block A — direkt vergleichbar", "24'060", "26'580", "Gastro +2'520 / +10.5%"),
  ]),

  h2("Block B — nur in einem Angebot enthalten"),

  para("B1) Nur Rametall offeriert (bei Gastro fehlt oder bauseits markiert):", { bold: true, after: 80 }),
  layoutTable([COL_BEZ_A, COL_R_A, COL_G_A, COL_BEM_A], [
    detailHeader(),
    dRow("Gemueseschneidemaschine Rotor Varimat Speed Gourmet (Pos. 1.04 LV)", "4'950", "—", "Fehlt bei Gastro vollstaendig"),
    dRow("Arbeitstisch 1200 x 600 fahrbar, Korpus 3 Schubladen, Tablar (Pos. 4.01)", "3'350", "—", "Fehlt bei Gastro"),
    dRow("Arbeitstisch 1000 x 600 fahrbar, 2 Fluegelfaecher (Pos. 4.02)", "2'680", "—", "Fehlt bei Gastro"),
    dRow("Servicewagen 3-bordig CNS Vorbereiten (Pos. 4.03)", "450", "—", "Fehlt bei Gastro"),
    dRow("Servicewagen 3-bordig CNS Spuelen (Pos. 1.03)", "450", "bestehend", "Gastro nimmt Bestand (Kunststoff)"),
    dRow("CNS-Lagerschrank Fluegeltueren 1000 x 590 x 2000 (Pos. 5.03)", "2'330", "bauseits", "Gastro: bauseits"),
    dRow("Putzschrank 600 x 590 x 2000, abschliessbar (Pos. 6.02)", "2'180", "bauseits", "Gastro: bauseits"),
    dTotal("Summe Block B1 — Rametall-Mehrleistung", "16'390", "0", "Material, das Gastro nicht offeriert"),
  ]),

  para("", { after: 100 }),
  para("B2) Nur Gastro offeriert (bei Rametall fehlt):", { bold: true, after: 80 }),
  layoutTable([COL_BEZ_A, COL_R_A, COL_G_A, COL_BEM_A], [
    detailHeader(),
    dRow("Wandhaengeschrank offen 1000 x 360 x 760 (Pos. 2.05 Plan .4)", "—", "670", "Nur in Plan .4 vorgesehen"),
    dRow("Aluminiumregale 770 x 460 x 1675  -  2 zusaetzliche Stueck", "—", "700", "Mengen-Differenz (4 statt 2)"),
    dTotal("Summe Block B2 — Gastro-Mehrleistung", "0", "1'370", ""),
  ]),

  h2("Block C — Spezifikations-Differenzen (gleicher Zweck, anderes Mass/Geraet)"),
  layoutTable([COL_BEZ_A, COL_R_A, COL_G_A, COL_BEM_A], [
    detailHeader(),
    dRow("Arbeitstisch warme Kueche mit Becken und Kuehlunterbau  -  Plan .3: 2289 mm, 2x GN-1/1  /  Plan .4: 3040 mm, 1x GN-1/1 + Nische UT-TKS", "6'130", "14'300", "Plan-Update Geometrie; Gastro 751 mm laenger"),
    dRow("Wandhaengeschrank warme Kueche  -  Plan .3: Fluegeltueren 957 mm  /  Plan .4: Schiebetueren 1200 mm", "1'040", "1'500", "Andere Tuerart und Mass"),
    dRow("Herdanlage Korpus Kochen  -  Rametall: Infrarot 2x3 kW = 12 kW, Korpus 2100 x 850, Glas Berner BS2ZES  /  Gastro: Power-Induktion 2x 2er a 360 x 660 mm, Korpus 3300 x 1100, Tablarfaecher, Induktionsfuss", "12'940", "26'750", "UNTERANGEBOT Rametall — Plan .4 fordert Induktion"),
  ]),

  h2("Total-Vergleich (gemaess Offerten, exkl. MwSt)"),
  layoutTable([COL_BEZ_A, COL_R_A, COL_G_A, COL_BEM_A], [
    detailHeader(),
    dRow("Summe der Zwischensummen (rechnerisch)", "60'160", "70'500", "Rametall -10'340 / -14.7%"),
    dRow("Ausgewiesene Summe Kuecheneinrichtung", "64'160", "70'500", "Rametall hat Additionsfehler +4'000"),
    dRow("Projektrabatt", "—", "-2'800", "Nur Gastro"),
    dRow("Zwischentotal Kuecheneinrichtung", "64'160", "67'700", ""),
    dRow("Lieferung / Montage / Inbetriebnahme", "5'000", "4'700", ""),
    dTotal("Gesamttotal gemaess Offerte", "69'160", "72'400", "Rametall -3'240 / -4.5%"),
  ]),

  h2("Bereinigte Schaetzung auf gleichen Plan-/Lieferumfangs-Stand"),
  para("Eigene Naeherung des Verfassers fuer den Fall, dass beide Anbieter exakt denselben Lieferumfang nach Plan 01.4 liefern (alle Positionen aufgenommen, Power-Induktionsanlage gemaess Plan .4, Arbeitstisch warme Kueche 3040 mm).", { italics: true, after: 100 }),

  itemBold("Rametall AG.  ", "Aufschlag Arbeitstisch warme Kueche groesser ca. +2'500; Aufschlag Wandhaengeschrank Schiebetueren +500; Zusatz Wandhaengeschrank offen 1000 mm +700; Aufschlag Herdanlage Power-Induktion statt Infrarot +7'000 bis +10'000; Zusatz 2 Aluregale 770 +940. Bereinigte Bandbreite rund 77'000 - 80'000 CHF brutto."),
  itemBold("Gastro-Online AG.  ", "Aufnahme Gemueseschneider +5'500; Arbeitstische Vorbereiten (4.01 + 4.02) +6'700; Servicewagen CNS +500; CNS-Lagerschrank +2'600; Putzschrank +2'400. Bereinigte Bandbreite rund 88'000 - 91'000 CHF brutto."),
  para("Auf bereinigter Basis ist Rametall ca. 10'000 - 13'000 CHF (12 - 15%) guenstiger. Diese Differenz ist nicht durch Plan-Wechsel oder Mengen-Unterschied erklaerbar, sondern reflektiert den durchgehenden Preisvorteil von Rametall auf der Submissions-Ebene.", { after: 200 }),

  h2("Risiko-Matrix"),
  itemBold("Rot - Rametall: Plan-Inkonsistenz.  ", "Offerte auf Plan .3 - Nachofferte auf Plan .4 ist Vergabevoraussetzung. Insbesondere die Herdanlage muss von Infrarot auf Power-Induktion umgestellt werden."),
  itemBold("Rot - Rametall: Funktion Herdanlage.  ", "Infrarot 12 kW ist eine deutlich kleinere und funktional andere Loesung als die Plan-.4-Power-Induktion. Im Therapiebetrieb mit Kindern ist Induktion (kalte Glaskeramik) deutlich sicherer und reinigungsfreundlicher. Muss vor Vergabe schriftlich auf Power-Induktion gemaess Plan .4 umgestellt werden."),
  itemBold("Rot - Rametall: Additionsfehler.  ", "Differenz 4'000 CHF zwischen Zwischensummen (60'160) und ausgewiesenem Total (64'160). Verbindliche Summe schriftlich klaeren. Bei Bestaetigung von 60'160 statt 64'160 verstaerkt sich der Preisvorteil Rametall um weitere 4'000 CHF."),
  itemBold("Gelb - Rametall: Konditionen nicht angegeben.  ", "Lieferzeit, Zahlungsplan und Gewaehrleistung sind im LV nicht ausgewiesen. Vor Vergabe verbindlich fixieren."),
  itemBold("Gelb - Gastro: Lieferumfang reduziert.  ", "Bei Annahme des Gastro-Angebots muessen Gemueseschneider, beide Vorbereitungstische, CNS-Lagerschrank und Putzschrank in einer Zusatz-Vereinbarung aufgenommen werden — kostentreibend ca. 17'000 CHF."),
  itemBold("Gelb - Gastro: 50% Anzahlung.  ", "Marktueblich sind 30%. Bei Vergabe an Gastro Reduktion oder Bankgarantie verhandeln."),
  itemBold("Gruen - Schluesselgeraet iCombi Pro.  ", "Markengleich bei beiden Anbietern, Preisdifferenz minim (+1.7% Gastro)."),
  itemBold("Gruen - Bestehende Geraete.  ", "UT-Geschirrspuelmaschine, UT-Tiefkuehlschrank, Doppeltuerkuehlschrank, Kuehlkorpus werden bei beiden Anbietern aus dem Bestand uebernommen. Identisch."),

  h2("Empfehlung der Vergabe — korrigiert"),
  para("Erstplatzierung: Rametall AG, vorbehaltlich Nachofferte auf Plan 01.4 und Klaerung Additionsfehler.", { bold: true, after: 80 }),
  para("Begruendung:", { bold: true, after: 60 }),
  item("Direkter Preisvergleich (Block A — gleiche Positionen): Rametall ist 2'520 CHF (10.5%) guenstiger. Das ist der einzig saubere Direktpreis-Vergleich und er ist eindeutig."),
  item("Lieferumfang: Rametall liefert Material im Wert von 16'390 CHF MEHR als Gastro (Gemueseschneider, zwei Vorbereitungstische, Servicewagen CNS, CNS-Lagerschrank, Putzschrank). Gastro liefert nur 1'370 CHF mehr (2 zusaetzliche Aluregale, Wandhaengeschrank offen)."),
  item("Auf bereinigter Basis (beide auf Plan 01.4 mit identischem Lieferumfang) ist Rametall 10'000 - 13'000 CHF (12 - 15%) guenstiger. Diese Differenz ist substantiell und nicht durch Plan-Unterschiede erklaerbar."),
  item("Submissionsergebnis respektieren: Rametall hat regulaer an der Submission teilgenommen. Eine Vergabe an den nicht-submittierten Fachplaner Gastro waere submissionsrechtlich erklaerungsbeduerftig — die Submission verliert dann ihren Sinn."),
  item("Mehrleistungen von Rametall (CNS-Schrank, Putzschrank, fahrbare Arbeitstische) sind klassische Architektur-Lieferungen, die Rametall als Metallbauer effizient herstellen kann — kein Risiko fuer den Bauherrn."),

  para("Zweitempfehlung: Gastro-Online AG als Backup. Aktiviert wird sie, wenn Rametall die Plan-.4-Anpassung der Herdanlage (Power-Induktion) zeitlich oder fachlich nicht liefern kann — was bei einem reinen Metallbauer ohne Gastrokuechen-Spezialisierung ein realistisches Risiko ist. In diesem Fall muss Gastro alle heute bauseits gefuehrten Positionen in den Auftrag aufnehmen.", { before: 160, after: 200 }),

  h2("Verhandlungspunkte mit Rametall AG"),
  itemNum("Verbindliche Nachofferte auf Plan 26-122-01.4 mit Power-Induktionsanlage gemaess Plan .4 (statt der angebotenen Infrarot-Loesung). Termin: bis 22. Mai 2026."),
  itemNum("Klaerung Additionsfehler: Verbindliche Summe Kuecheneinrichtung schriftlich bestaetigen (60'160 vs. 64'160). Die rechnerisch korrekte Zahl ist 60'160."),
  itemNum("Verbindliche Lieferzeit gemaess Bauprogramm; Konventionalstrafe bei Ueberschreitung nach SIA 118."),
  itemNum("Zahlungsplan: 30/40/30 statt der bei Gastro genannten 50/25/25. Restzahlung erst nach mangelfreier Inbetriebnahme."),
  itemNum("Gewaehrleistung: 2 Jahre auf Geraete (Herstellerstandard), 5 Jahre auf CNS-Bauteile gemaess SIA 118."),
  itemNum("Reduktion in Bandbreite 5 - 10% auf das bereinigte Total (Begruendung: Submissionsteilnahme, Direktverhandlung, Healthcare-Segment, Bauleitungs-Erfahrung)."),
  itemNum("Klaerung Servicewagen 1.03: CNS-Ausfuehrung gemaess LV oder Verzicht zugunsten des bestehenden Kunststoff-Wagens (mit entsprechendem Abzug). Entscheidung Bauherr."),
  itemNum("Schnittstellen mit HLK (Ablufthaube), Sanitaer, Elektro, Kaeltetechnik schriftlich abgrenzen — wer plant, wer liefert, wer montiert."),

  h2("Naechste Schritte"),
  itemNum("Rametall: Klaerungsschreiben mit den 8 Verhandlungspunkten versenden. Antwortfrist 22. Mai 2026."),
  itemNum("Gastro-Online: Hoeflichkeitsschreiben mit Stand der Auswertung (Zweitempfehlung). Keine Absage vor Vorliegen der Rametall-Nachofferte."),
  itemNum("Nach Eingang Rametall-Nachofferte: Aktualisierte Vergleichsmatrix v3 erstellen."),
  itemNum("Vergabeempfehlung KISPI zur Freigabe vorlegen, anschliessend Werkvertrag SIA 118 vorbereiten."),
  itemNum("Termin-Synchronisation der Bauseitigen (HLK Ablufthaube, Sanitaer, Elektro) mit dem Bauprogramm."),

  h2("Aenderungen gegenueber v1 (Transparenz)"),
  itemBold("Empfehlung gedreht.  ", "v1 empfahl Gastro-Online, v2 empfiehlt Rametall. Grund: Der Direktpreis-Vergleich der gleich offerierten Positionen (Block A) zeigt Rametall durchgehend guenstiger, und der Lieferumfangs-Vergleich (Block B1 / B2) bestaetigt das Bild. Mein urspruenglicher Aufschlag fuer die Plan-.4-Anpassung war zu hoch angesetzt und hat das Bild irrefuehrend gedreht."),
  itemBold("Methodik formalisiert.  ", "Statt 'bereinigter Schaetzung mit Bandbreite' jetzt explizite Trennung in Block A (gleich offeriert), B (nur einer), C (Spezifikations-Differenz). So bleibt nachvollziehbar, welcher Vergleich auf welchen Daten beruht."),
  itemBold("Zahlen offengelegt.  ", "Summe Block A: Rametall 24'060 / Gastro 26'580 (+2'520, +10.5%). Summe Block B1: Rametall 16'390 Mehrleistung. Summe Block B2: Gastro 1'370 Mehrleistung. Diese drei Zahlen sind die belastbare Basis der Empfehlung."),
];

// ====== END INHALT ======

const doc = new Document({
  creator: "Raphael Jans Architekten ETH",
  title: "Vergabeempfehlung KISPI Gastrokueche v2",
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
