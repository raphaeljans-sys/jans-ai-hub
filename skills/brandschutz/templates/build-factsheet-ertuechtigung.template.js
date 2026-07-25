// ============================================================================
// Factsheet Ertuechtigung Leichtbauwaende — KISPI Therapiestation 1.OG
// ============================================================================

const fs = require('fs');
const {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  Footer, AlignmentType, LevelFormat, BorderStyle, WidthType,
  PageNumber, TabStopType, HeightRule
} = require('docx');

const OUT = '/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/03_BKP/LOS_271.13 Trockenbau Gipserarbeigten OG Sued/260513-Factsheet-Ertuechtigung-Leichtbauwaende.docx';

// === A4 ===
const PAGE_W = 11906;
const PAGE_H = 16838;
const MARGIN = 1133;
const CONTENT_W = PAGE_W - 2 * MARGIN;

// === BORDERS ===
const noBorder = { style: BorderStyle.NONE, size: 0, color: "FFFFFF" };
const noBorders = {
  top: noBorder, bottom: noBorder, left: noBorder, right: noBorder,
  insideHorizontal: noBorder, insideVertical: noBorder
};

// === HELPERS ===
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
  spacing: { before: 280, after: 120, line: 280 },
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

const itemPlain = (text) => new Paragraph({
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
  borders: noBorders,
  width: { size: w, type: WidthType.DXA },
  margins: { top: 60, bottom: 60, left: 0, right: 100 },
  children: [new Paragraph({
    spacing: { before: 0, after: 0, line: 280 },
    alignment: opts.align ?? AlignmentType.LEFT,
    children: [new TextRun({
      text,
      bold: opts.bold ?? false,
      size: opts.size ?? 20,  // 10 pt fuer Tabellen
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
    new TextRun({ text: "Raphael Jans - Architekten ETH  -  rj@raphaeljans.ch  -  13. Mai 2026", size: 16 }),
    new TextRun({ text: "\tSeite ", size: 16 }),
    new TextRun({ children: [PageNumber.CURRENT], size: 16 }),
    new TextRun({ text: " von ", size: 16 }),
    new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 16 }),
  ],
});

// ============================================================================
// INHALT
// ============================================================================

// Spaltenbreiten Wand-Abgleichs-Tabelle (5-spaltig, total 9640 DXA)
// Bereich (2400) | Wandtyp Bestand (1500) | Anforderung Soll (1500) | Massnahme (2740) | Prioritaet (1500)
const COL = { bereich: 2400, ist: 1500, soll: 1500, massn: 2740, prio: 1500 };

const wandRow = (bereich, ist, soll, massn, prio, bold = false) => new TableRow({
  cantSplit: true,
  children: [
    tcell(bereich, COL.bereich, { bold }),
    tcell(ist, COL.ist, { bold, align: AlignmentType.CENTER }),
    tcell(soll, COL.soll, { bold, align: AlignmentType.CENTER }),
    tcell(massn, COL.massn, { bold }),
    tcell(prio, COL.prio, { bold, align: AlignmentType.CENTER }),
  ],
});

// Massnahmen-Tabelle (3-spaltig, total 9640)
// Pos (700) | Massnahme (3940) | Anforderung / Referenz (5000)
const M = { pos: 700, m: 3940, ref: 5000 };
const mRow = (pos, m, ref, bold = false) => new TableRow({
  cantSplit: true,
  children: [
    tcell(pos, M.pos, { bold, align: AlignmentType.CENTER }),
    tcell(m, M.m, { bold }),
    tcell(ref, M.ref, { bold }),
  ],
});

const dokumentInhalt = [
  h1("Factsheet Ertuechtigung Leichtbauwaende"),
  para("Bestand Gipsstaenderwaende, BKP 271.13 — Therapiestation 1.OG, KISPI Zuerich", { after: 280 }),

  stamm("Projekt", "2619 KISPI — Umnutzung Etage B (1.OG) zur Therapiestation"),
  stamm("Bauherrschaft", "Universitaets-Kinderspital Zuerich — Eleonorenstiftung"),
  stamm("Architektur", "Raphael Jans - Architekten ETH"),
  stamm("Brandschutz", "Gruner AG, Zuerich (Stellungnahme vom 09.04.2026)"),
  stamm("Empfaenger", "Bauleitung / Bauherrschaft / Unternehmer LOS 271.13"),
  stamm("Bezug", "Stellungnahme Brandschutz Gruner / Brandschutzplan 1.OG vom 09.04.2026"),
  stamm("Datum", "13. Mai 2026"),
  stamm("Version", "1.0"),

  // ---------------------------------------------------------------------------
  h2("1  Zweck dieses Factsheets"),
  para("Dieses Factsheet dient als Beilage zur Ausschreibung BKP 271.13 (Trockenbau / Gipserarbeiten OG Sued) und definiert verbindlich, wie bestehende Leichtbauwaende (Gipsstaenderwaende des urspruenglichen Buerolayouts) im Perimeter der neuen Therapiestation zu ertuechtigen sind, damit die Brandschutzanforderung EI30-RF1 gemaess Stellungnahme Brandschutz Gruner AG vom 09.04.2026 erfuellt ist."),
  para("Es richtet sich an die Bauleitung, die Bauherrschaft und den ausfuehrenden Unternehmer und ist im Leistungsverzeichnis als verbindliche Grundlage zu zitieren."),

  // ---------------------------------------------------------------------------
  h2("2  Geltende Brandschutzanforderungen"),
  para("Aus der Stellungnahme Brandschutz Gruner AG (Kap. 3.2) und dem Brandschutzplan 1.OG vom 09.04.2026 ergibt sich:"),
  itemBold("Nutzung. ", "Beherbergungsbetrieb Typ a, Gebaeude mittlerer Hoehe, Loeschanlagenvollschutz."),
  itemBold("Brandabschnittsbildende Waende. ", "EI30-RF1 (Tueren EI30) fuer alle Waende zwischen Wohneinheit, Patientenzimmern, Aufenthaltsraeumen, Kueche/Reduit und horizontalen Fluchtwegen."),
  itemBold("Fluchtwege horizontal. ", "Waende EI30-RF1, Tueren EI30."),
  itemBold("Vertikale Fluchtwege / Tragwerk. ", "REI 60-RF1 (nicht Gegenstand dieser Ausschreibung)."),
  itemBold("Bestandeswaende. ", "Gruner-Hinweis Kap. 3.2: 'Die Waende sind zu kontrollieren respektive zu ertuechtigen (Verglasung / Tueren) oder zu ersetzen, dass die Brandschutzanforderung EI30-RF1 erfuellt werden.'"),

  // ---------------------------------------------------------------------------
  h2("3  Ist-Zustand Bestandeswaende"),
  para("Die in der Etage B bestehenden Leichtbauwaende sind als Bueroinnenwaende konzipiert und in den Architektenplaenen mit den Wandtypen W320-00 oder W340-00 in der Klassifizierung EI00 gefuehrt. Konstruktiv handelt es sich um Gipsstaenderwaende in zweilagiger Beplankung:"),
  itemBold("W320-00 ", "(GK-Einfachstaenderwand 12,5 cm; CW75): 2x12,5 mm GKB / 60 mm Mineralfaser / 2x12,5 mm GKB. Schallschutz Di = 30-40 dB."),
  itemBold("W340-00 ", "(GK-Einfachstaenderwand 15,0 cm; CW100): 2x12,5 mm GKB / 80 mm Mineralfaser / 2x12,5 mm GKB. Schallschutz Di = 30-45 dB."),
  para("Beide Wandtypen-Steckbriefe sehen die Auswahlspanne EI00 / EI30 / EI60 vor. In den Bestandeswaenden ist die EI00-Variante mit GKB-Platten ausgefuehrt. Damit erfuellen sie konstruktiv NICHT automatisch EI30-RF1, da fuer EI30 mindestens die Auswahl GKF (Faserarmierte Gipsplatte) als aeussere Lage erforderlich ist und alle Anschluss-, Durchdringungs- und Tuerelemente entsprechend zugelassen sein muessen.", { before: 80 }),

  // ---------------------------------------------------------------------------
  h2("4  Wandgruppen-Abgleich Brandschutzplan / Architekturplan"),
  para("Der nachfolgende Abgleich fasst die Wandgruppen im Perimeter der Therapiestation zusammen, vergleicht die heutige Plan-Klassifizierung (Architektur) mit der Brandschutz-Anforderung (Gruner) und ordnet die Massnahmenstufe zu. Die exakte Achsenfuehrung ist dem Brandschutzplan vom 09.04.2026 zu entnehmen."),
  layoutTable(
    [COL.bereich, COL.ist, COL.soll, COL.massn, COL.prio],
    [
      // Header
      new TableRow({
        tableHeader: true,
        cantSplit: true,
        children: [
          tcell("Wandgruppe / Bereich", COL.bereich, { bold: true }),
          tcell("Ist (Plan)", COL.ist, { bold: true, align: AlignmentType.CENTER }),
          tcell("Soll (BSP)", COL.soll, { bold: true, align: AlignmentType.CENTER }),
          tcell("Massnahme", COL.massn, { bold: true }),
          tcell("Prio", COL.prio, { bold: true, align: AlignmentType.CENTER }),
        ],
      }),
      wandRow("Perimeter Wohneinheit gegen horizontalen Fluchtweg (Korridor)", "EI00", "EI30-RF1", "Ertuechtigung Plattenmaterial + Anschluesse + Tueren", "Hoch"),
      wandRow("Patientenzimmer Nord (Doppel-/Einzelzimmer) untereinander und zu Aufenthalt", "EI00", "EI30-RF1", "Ertuechtigung oder Ersatz", "Hoch"),
      wandRow("Aufenthaltsraeume 1-4 / Speisen gegen horizontalen Fluchtweg", "EI00", "EI30-RF1", "Ertuechtigung Plattenmaterial + Anschluesse", "Hoch"),
      wandRow("Kueche inkl. Reduit (eigener Brandabschnitt)", "EI00", "EI30-RF1", "Ertuechtigung + EI30-Tuer + Loeschdecke (HLK)", "Hoch"),
      wandRow("Sitzungs- / Untersuchungs- / Ruheraum / Stations-Zimmer", "EI00", "EI30-RF1", "Ertuechtigung Plattenmaterial + Anschluesse", "Hoch"),
      wandRow("Korridor Wohngruppe (innerhalb Wohneinheit)", "EI00", "EI30-RF1", "Ertuechtigung Plattenmaterial + Anschluesse", "Mittel"),
      wandRow("Neue Trennwaende (rot im Architekturplan A 2.1.8)", "Neu", "EI30-RF1", "Neuausfuehrung in EI30-Qualitaet von Beginn an", "Neu"),
      wandRow("Trennung Therapiestation zu bestehender Bueronutzung (Brandabschnitts-Grenze)", "EI00", "EI30-RF1", "Vollertuechtigung inkl. Durchdringungen + bestehender Tueren", "Kritisch"),
    ]
  ),
  para("Die Klassifizierungsangabe 'EI00 / EI30 / EI60' im Wandtyp-Steckbrief beschreibt die Auswahlspanne — sie ist KEINE automatische Konformitaetsbestaetigung. Massgebend ist die Klassifizierung in den Architektenplaenen und im Brandschutzplan.", { italics: true, before: 80 }),

  // ---------------------------------------------------------------------------
  h2("5  Ertuechtigungs-Massnahmen Bestand"),
  para("Fuer jede mit EI30-RF1 zu ertuechtigende Bestandeswand sind die folgenden Massnahmen kumulativ umzusetzen. Bei Nichterfuellung eines Punktes gilt die Wand brandschutzrechtlich als nicht EI30, unabhaengig von den uebrigen Massnahmen."),
  layoutTable(
    [M.pos, M.m, M.ref],
    [
      new TableRow({
        tableHeader: true, cantSplit: true,
        children: [
          tcell("Pos", M.pos, { bold: true, align: AlignmentType.CENTER }),
          tcell("Massnahme", M.m, { bold: true }),
          tcell("Anforderung / Referenz", M.ref, { bold: true }),
        ],
      }),
      mRow("5.1", "Plattenmaterial pruefen / ergaenzen",
        "Aeussere Lage beidseitig GKF (faserarmierte Gips-Bauplatte) gemaess Wandtyp-Steckbrief W320-00 / W340-00. Wenn aktuell GKB verbaut: aeussere Lage abnehmen und durch GKF ersetzen ODER zweite aeussere GKF-Lage aufdoppeln gemaess VKF-Anerkennung des Plattenherstellers (Knauf, Rigips, Siniat o.gl.)."),
      mRow("5.2", "Daemmung pruefen / ergaenzen",
        "Mineralfaserdaemmung 60/80 mm gemaess Wandtyp (W320-00: 60 mm; W340-00: 80 mm). Bei fehlender oder unvollstaendiger Daemmung ist diese zu ergaenzen und gegen Abgleiten gem. Herstellerrichtlinie zu sichern."),
      mRow("5.3", "Gleitender Deckenanschluss",
        "Anschluss Wand-Decke in zugelassener EI30-RF1-Qualitaet (zertifiziertes Anschlusssystem, z.B. Knauf EI-Anschluss). Einfache Schaumfugen oder offene Anschluesse sind NICHT zulaessig. Zulassung vorlegen."),
      mRow("5.4", "Anschluss Wand-Boden / Wand-Wand",
        "Anschluesse mit nicht brennbarer Hinterstopfung (Mineralwolle Schmelzpunkt > 1000 Grad) und EI30-zertifizierter Fugenausbildung. Auch bei Fassadenanschluessen."),
      mRow("5.5", "Durchdringungen / Abschottungen",
        "Saemtliche Wanddurchdringungen (Kabel, Rohre, Lueftung) mit zugelassenen Brandschutz-Abschottungen in EI30 verschliessen. VKF-Anerkennung pro Abschottungs-System beizulegen. Provisorische Verschluesse waehrend Bauphase taeglich pruefen (siehe Gruner Kap. 6)."),
      mRow("5.6", "Tueren in der Wand",
        "Tueren in EI30-zu-ertuechtigenden Waenden in Qualitaet EI30 (T30) ausfuehren. Bestehende Tueren ohne EI-Zertifizierung sind zu ersetzen oder durch zertifizierte Aufruestsaetze zu ertuechtigen, sofern Herstellerzulassung vorhanden."),
      mRow("5.7", "Verglasungen",
        "Verglasungen in EI30-Waenden als EI30-Verglasung (gem. Brandschutzplan-Legende rote Pfeile EI30). Rahmen, Verklotzung und Anschluss gem. VKF-Anerkennung."),
      mRow("5.8", "Elektrobrandlasten (Kabel im Fluchtweg)",
        "Bei Wanddurchfuehrungen im Korridor / Fluchtweg ist die Brandlast gem. Gruner Kap. 3.2 (200 MJ/Lfm) zu pruefen. Bei Ueberschreitung Brandlasten EI30 abtrennen."),
      mRow("5.9", "Anhaengelasten",
        "Vorgabe min. 70 kg/Lfm bei zweilagiger Beplankung gem. Steckbrief. Bei Sonderlasten (z.B. Pflegebetten-Wandhalterung) ist Wandverstaerkung gem. Plan M250 / M251 / M252 vorzusehen."),
      mRow("5.10", "Sauberkeitsprotokoll Bauphase",
        "Waehrend des Umbaus im laufenden Betrieb (Gruner Kap. 6): Abschottungen taeglich provisorisch mit Steinwolle / zugelassenem Provisorium verschliessen. Abfall / brennbares Material taeglich entfernen."),
    ]
  ),

  // ---------------------------------------------------------------------------
  h2("6  Materialspezifikation (verbindlich fuer LV)"),
  itemBold("Plattentyp aeussere Lage. ", "GKF (DIN 18180 / EN 520 Typ DF), Mindestdicke 12,5 mm, RF1 / A2-s1,d0 nach EN 13501-1. Hersteller mit gueltiger VKF-Anerkennung."),
  itemBold("Plattentyp innere Lage. ", "GKB oder GKF gem. Herstellerzulassung fuer den jeweiligen EI30-Aufbau."),
  itemBold("Daemmung. ", "Mineralfaser, Schmelzpunkt > 1000 Grad, RF1, Rohdichte gem. Herstellerzulassung (typisch 30-50 kg/m3 fuer Schallschutz, fuer EI30 Brandschutz hoeher gem. Zulassung)."),
  itemBold("Ständerprofile. ", "Verzinkter Stahl gem. EN 14195, CW75 / CW100 wie Wandtyp, bei Tueren UA-Profile (Knauf UA oder gleichwertig)."),
  itemBold("Schrauben / Befestigung. ", "Schnellbauschrauben gem. Hersteller, Lochbild gem. EI30-Zulassung (Abstand verdichtet gegenueber EI00)."),
  itemBold("Fugen / Spachtelung. ", "Qualitaet Q2 als Mindeststandard, in sichtbaren Bereichen Q3 (Bauherr/Architekt bestimmt). Brandschutzkonformes Fugenmaterial gem. Zulassung."),

  // ---------------------------------------------------------------------------
  h2("7  Nachweispflichten des Unternehmers"),
  para("Gemaess Gruner-Stellungnahme Kap. 1.3 sind folgende Nachweise vom Unternehmer beizubringen und durch die Bauleitung an den QS-Verantwortlichen Brandschutz (QSV-BS) weiterzuleiten:"),
  itemBold("Konformitaetserklaerung pro Wandtyp. ", "Schriftliche Bestaetigung des Errichters, dass der ausgefuehrte Wandaufbau der VKF-Anerkennung des Plattenherstellers entspricht (Hersteller, Anerkennungs-Nr., Datum)."),
  itemBold("VKF-Anerkennungen. ", "Kopien aller eingesetzten VKF-Anerkennungen (Platten, Anschluesse, Abschottungen, Tueren, Verglasungen) als Anhang zur Konformitaetserklaerung."),
  itemBold("Fotodokumentation. ", "Vor jeder Beplankungs-Schliessung: Foto-Dokumentation des Staender-Innenausbaus, der Daemmung und der Durchdringungen mit Datum und Raumnummer."),
  itemBold("Revisionsplaene. ", "Markierte Bestandes- und Neu-Waende mit jeweiliger EI-Klassifizierung, Tuer- und Verglasungspositionen — als Beilage zur Schlussabnahme."),
  itemBold("Lieferschein Plattenmaterial. ", "Nachweis Material-Identitaet (GKF statt GKB) durch Lieferschein, gesammelt durch die Bauleitung."),

  // ---------------------------------------------------------------------------
  h2("8  Schnittstellen und Verantwortlichkeiten"),
  itemBold("Architekt. ", "Erstellung Architekturplan mit EI-Klassifizierung pro Wand und Tuer; Abgleich mit Brandschutzplan; Detailplanung der Anschluesse."),
  itemBold("Brandschutz-Fachplaner (Gruner). ", "Klassifizierung der Brandabschnitte, Brandschutzplan, QS-Begleitung, Schlusspruefung."),
  itemBold("Bauleitung. ", "Sammlung und Pruefung der Konformitaetserklaerungen, Fotodokumentation, Weiterleitung an QSV-BS. Koordination mit HLK / Elektro fuer Durchdringungen / Abschottungen."),
  itemBold("Unternehmer Trockenbau. ", "Fachgerechte Ausfuehrung gem. VKF-Anerkennung und Wandtyp-Steckbrief, Konformitaetserklaerung."),
  itemBold("Unternehmer Tueren. ", "Lieferung und Einbau zugelassener EI30-Tueren inkl. Konformitaetserklaerung."),
  itemBold("Unternehmer HLK / Elektro. ", "EI30-zugelassene Abschottungen aller eigenen Durchdringungen, Konformitaetserklaerung."),
  itemBold("QS-Verantwortlicher Brandschutz (QSV-BS). ", "Sammelt Konformitaetserklaerungen, bestaetigt gegenueber Bauleitung und Feuerpolizei vor Inbetriebnahme."),

  // ---------------------------------------------------------------------------
  h2("9  Empfehlung fuer die Ausschreibung BKP 271.13"),
  para("Folgende Klauseln und Positionen sind in das Leistungsverzeichnis aufzunehmen:"),
  itemBold("Klausel A — Bezug. ", "Verbindliche Geltung dieses Factsheets sowie der Stellungnahme Brandschutz Gruner vom 09.04.2026 und des Brandschutzplans 1.OG vom 09.04.2026 (Plan-Nr. E2501526.004 / 001 / A)."),
  itemBold("Klausel B — Material. ", "Aeussere Plattenlage zwingend GKF in allen mit EI30 / EI60 klassifizierten Waenden. Bei Lieferung von GKB statt GKF: Beanstandung und Ersatz ohne Mehrkosten."),
  itemBold("Klausel C — Konformitaetserklaerung. ", "Konformitaetserklaerung pro Wandtyp ist Bestandteil der Schlussrechnung; ohne Konformitaetserklaerung erfolgt kein Schlussfreigabe."),
  itemBold("Klausel D — Bestand-Aufnahme. ", "Vor Ausfuehrung: Bestandes-Aufnahme der zu ertuechtigenden Waende durch den Unternehmer in Anwesenheit Bauleitung und Architekt; Protokoll mit Plattenstaerke, Plattentyp, Daemmungsstatus, Anschluss-Situation; Freigabe Massnahmen vor Beginn."),
  itemBold("Klausel E — Provisorium Bauphase. ", "Taegliche Schliessung aller Durchdringungen, taegliche Entsorgung brennbarer Materialien, BMA-/SPA-Stilllegungen nur in Absprache mit KISPI FM und QSV-BS."),
  itemBold("Position Pauschal — Bestand-Ertuechtigung. ", "Eigene LV-Position pro Wandgruppe (gem. Tabelle Kap. 4): Demontage aeussere Plattenlage, Daemmungs-Ergaenzung, GKF-Neubeplankung, Q2-Spachtelung, Anschluss-Ertuechtigung."),
  itemBold("Position Pauschal — Abschottungen. ", "Eigene LV-Position pro Durchdringungs-Typ (Kabel, Lueftung, Sanitaer) mit VKF-anerkanntem System."),
  itemBold("Position Pauschal — Konformitaets-Dokumentation. ", "Eigene LV-Position fuer Erstellung der Konformitaetserklaerungen, Foto-Dokumentation und Revisionsplaene."),

  // ---------------------------------------------------------------------------
  h2("10  Naechste Schritte"),
  itemNum("Bauleitung: Aufnahme dieses Factsheets als Beilage in die Ausschreibung BKP 271.13."),
  itemNum("Architekt: Wandbezeichnungen in den Architekturplaenen pruefen und auf 'W340-00 EI30 ...' bzw. 'W320-00 EI30 ...' anpassen, wo die Brandschutz-Anforderung EI30 verlangt."),
  itemNum("Brandschutz-Fachplaner: Visa des Factsheets durch Gruner einholen (Bestaetigung der Kohaerenz mit Stellungnahme vom 09.04.2026)."),
  itemNum("Bauherrschaft: Freigabe Massnahmen-Katalog und Vorgabe der LV-Klauseln A bis E."),
  itemNum("Unternehmer Trockenbau: Vor Offerteingabe Bestandes-Aufnahme der zu ertuechtigenden Waende; Rueckfragen zu Material / Anschluss / Tuer schriftlich an Bauleitung."),
  itemNum("Vor Inbetriebnahme: Vollstaendige Konformitaets-Dokumentation an QSV-BS uebergeben; Schlussabnahme durch Feuerpolizei Stadt Zuerich."),

  // ---------------------------------------------------------------------------
  h2("Anhang — Referenzdokumente"),
  itemPlain("Stellungnahme Brandschutz, Gruner AG, 09.04.2026 (Auftrags-Nr. 4_25_01526_004)"),
  itemPlain("Brandschutzplan 1.OG Therapiestation, Gruner AG, Plan-Nr. E2501526.004 / 001 / A, vom 09.04.2026"),
  itemPlain("Baueingabe Plan Architektur, Raphael Jans - Architekten ETH, A 2.1.8 vom 01./02.04.2026"),
  itemPlain("Wandtyp-Steckbrief W320-00, G-ARC_5641_W320-00.pdf"),
  itemPlain("Wandtyp-Steckbrief W340-00, G-ARC_5641_W340-00.pdf (Index A)"),
  itemPlain("VKF-Brandschutzvorschriften (aktuelle Fassung), insbesondere BSR 14-15de 'Verwendung von Baustoffen', BSR 15-15de 'Tragwerke / Brandabschnitte', BSR 16-15de 'Flucht- und Rettungswege'"),
  itemPlain("Uebergeordnetes Brandschutzkonzept KISPI, Gruner AG, Stand 06.02.2026"),
];

// ============================================================================
// DOCUMENT
// ============================================================================

const doc = new Document({
  creator: "Raphael Jans Architekten ETH",
  title: "Factsheet Ertuechtigung Leichtbauwaende KISPI Therapiestation",
  description: "Beilage Ausschreibung BKP 271.13 — Brandschutz-Ertuechtigung Bestand-Gipsstaenderwaende",
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
