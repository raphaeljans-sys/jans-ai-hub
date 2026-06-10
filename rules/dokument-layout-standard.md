# Regel: Dokument-Layout-Standard (DOCX/PDF)

## Hintergrund

Alle von Claude erstellten Dokumente (Word/DOCX, PDF) folgen einem einheitlichen, neutralen Layout-Standard. Dieser ist bewusst zurueckhaltend gehalten: serifige Lesbarkeit, durchgaengig schwarz, keine Farbflaechen, keine sichtbaren Tabellenrahmen — wirkt professionell und uebersteht das Drucken auf Schwarzweiss-Geraeten ohne Verlust.

Der Standard wurde am 5. Mai 2026 anhand der Entscheidungshilfe fuer die KISPI-Therapiestation festgelegt und gilt fuer alle Folgedokumente, sofern der Benutzer nicht explizit ein anderes Layout fordert.

## Verbindliche Layout-Konventionen

### Format und Seite
- Papier: **A4** (11906 x 16838 DXA)
- Raender: **20 mm** rundum (1133 DXA)
- Inhaltsbreite: 9640 DXA

### Typografie
- Schrift: **Cambria** (Serif, universell verfuegbar in Word/LibreOffice/Pages)
- Body-Groesse: **11 pt** (size: 22 in docx-js)
- Zeilenabstand: **1.4** (line: 280)
- Standard-Farbe: **Schwarz** (kein Farb-Akzent)

### Hierarchie
- **H1** (Dokument-Titel): 18 pt fett (size: 36)
- **H2** (Abschnitts-Ueberschrift): 12 pt fett (size: 24)
- **Body**: 11 pt regular
- **Footer**: 8 pt regular (size: 16), in Schwarz

### Strukturelle Elemente
- **Keine Hintergrundfarben** (kein Shading, keine farbigen Boxen)
- **Keine sichtbaren Tabellenrahmen** (BorderStyle.NONE)
- **Keine Akzentfarben** (kein Rot, Blau, Gelb, Gruen — alles schwarz)
- **Tabellen nur als unsichtbare Layout-Hilfe**, wenn Spalten-Ausrichtung noetig
- Trennung zwischen Abschnitten ueber Whitespace (spacing.before: 240), nicht ueber Linien

### Tabellen-Spaltenbreiten (verbindlich)

Inhaltsbreite bei A4 hoch mit 20 mm Raendern: **9640 DXA** (~16 cm).

- **Schrift in Tabellenzellen mindestens 10 pt (size 20)** — niemals 9 pt oder kleiner als Lesbarkeits-Schutz. Wenn der Inhalt nicht passt: Spalten umverteilen, niemals Schrift verkleinern.
- **Bemerkungs-/Kommentarspalten mindestens 2400 DXA (25%) breit** — sonst werden Mehrwort-Bemerkungen unleserlich abgehackt.
- **Bezeichnungs-Spalten maximal 50% der Inhaltsbreite**, damit Werte- und Bemerkungs-Spalten genug Platz haben.

Empfohlene Verteilung fuer Vergleichs-Tabellen mit Bemerkungsspalte:

| Spalten | Pos | Bezeichnung | Wert A | Wert B | Bemerkung |
|---|---|---|---|---|---|
| 5-spaltig | 700 (7%) | 3600 (37%) | 1100 (11%) | 1100 (11%) | 3140 (33%) |
| 4-spaltig | — | 4700 (49%) | 1100 (11%) | 1100 (11%) | 2740 (29%) |

Bei mehr als zwei Wertspalten (z.B. 3 Anbieter): Tabelle auf **Querformat** umstellen, nicht Bezeichnungs- oder Bemerkungsspalte einengen.

Build-Zeit-Check: Jede neue Tabelle vor dem Speichern verifizieren: `COL_BEM >= 2400 DXA` und `COL_BEM >= 0.25 * Inhaltsbreite`.

### Keine fehlerhaften Umbrueche (Lesbarkeit — verbindlich)

Fehlerhafte/unnoetige Zeilenumbrueche in Tabellen sind der Lesbarkeit abtraeglich und **nicht zulaessig**. Insbesondere:

- **Spalten-Header, Einheiten und Zahlenwerte duerfen NIE umbrechen.** „EP CHF", „Betrag", „pausch.", „Stk", „Std", „m²" usw. stehen immer einzeilig. Wenn etwas umbricht: Spalte verbreitern oder Header kuerzen — niemals so lassen.
- **Schmale Zell-Innenraender verwenden** (L/R ~0.6 mm statt Word-Default 1.9 mm), damit die nutzbare Spaltenbreite nicht durch Raender aufgefressen wird. Im DOCX-Baukasten `tools/jans_docx.py` ist das in `table()` (via `_tight_margins`) bereits eingebaut.
- **Zahlen-/Einheitsspalten rechts- bzw. zentriert ausrichten** (`aligns`-Parameter in `table()`), Bezeichnungsspalte links.
- **Richtwert Zahlenspalten:** Menge ~14 mm, Einheit ~18 mm, Preis/Betrag je ~20 mm; Bezeichnung max. ~50 % der Inhaltsbreite. Summe aller Spalten ≤ 170 mm.
- **Pflicht-Sichtkontrolle vor Abgabe:** erzeugtes PDF rendern (`pdftoppm -png`) und visuell prüfen, dass kein Header/keine Einheit/keine Zahl umbricht. Erst dann ablegen/versenden.

### Listen
- **Aufzaehlungen**: Bindestrich "-" als Bullet (nicht "•"), Einzug 360 DXA
- **Nummerierte Listen**: "1." Format mit Punkt, Einzug 360 DXA
- Listen-Items mit fetter Praefix-Phrase moeglich: `**Praefix.** Beschreibung...`

### Stammdaten-Block (Label-Wert-Paare)
- Tab-Stop bei 1700 DXA fuer Wert-Spalte
- Label fett, Wert regular
- Spacing nach jeder Zeile: 40

### Footer
- Links: Verfasser, Mail, Datum (kompakt mit "  -  " getrennt)
- Rechts (Tab-Stop am rechten Rand): "Seite X von Y"
- Schriftgroesse: 8 pt (size: 16)

### Seitenwechsel
- **Keine expliziten PageBreaks** einsetzen — Inhalte fliessen lassen
- Falls eine bestimmte Seitenzahl gewuenscht ist (z.B. exakt 2 A4): Inhalt verdichten statt Umbruch erzwingen
- Erst wenn klar ueber 1 Seite Differenz: Inhalt kuerzen oder zustimmen mit Benutzer

### Sprache
- Schweizer Hochdeutsch
- Umlaute ä, ö, ü immer als echte Umlaute schreiben (gemäss umlaute-konvention.md) — niemals die ASCII-Ersatzform ae/oe/ue
- "ss" statt "ß" (kein Eszett im Schweizer Hochdeutsch)
- **Kein Gedankenstrich (— / –) als Stilmittel** — weder als langer noch als kurzer Strich, und auch NICHT durch einen Bindestrich ersetzen. Stattdessen den Satz umformulieren: Komma, Doppelpunkt, Punkt oder Klammer. Zulaessig bleibt der Bindestrich nur in Komposita («Plan- und Dokumentenliste») und als Listen-Bullet «-». (Vorgabe Raphael, 10.06.2026; gilt fuer Dokumente UND Praesentationen)
- Einfache Anführungszeichen «…» bzw. „…"

## Wann gilt diese Regel

- Alle DOCX/PDF-Dokumente, die Claude fuer JANS erzeugt
- Insbesondere: Factsheets, Entscheidungshilfen, Berichte, Briefe, Memos, Reports
- Auch interne Arbeitsdokumente und Klaerungsschreiben

## Wann NICHT

- Wenn der Benutzer explizit ein anderes Layout fordert ("mit Farben", "mit Buero-CI", "wie XY")
- Briefkopf mit JANS-Logo (eigene Vorlage, separat zu pflegen)
- Praesentationen (PPTX folgt eigener Layout-Konvention) — **ABER: die Sektion «Sprache» (inkl. Gedankenstrich-Verbot) und die JANS-DNA-Stilregeln gelten auch fuer Folien**
- Excel/Tabellen (XLSX braucht Spaltenformat, nicht Layout-Standard)

## Generator-Vorlage

Eine fertige docx-js Generator-Vorlage liegt unter:
```
/Volumes/daten/jans-ai-hub/templates/dokument-layout/build-document.template.js
```

Diese Datei kann pro Dokument kopiert und mit Inhalt befuellt werden. Sie enthaelt alle Helper-Funktionen (h1, h2, para, paraRich, stamm, itemBold, itemNum, tcell) bereits korrekt konfiguriert.

## Build-Workflow

1. Template kopieren: `cp /Volumes/daten/jans-ai-hub/templates/dokument-layout/build-document.template.js /tmp/build_<projekt>.js`
2. Inhaltsbereich (zwischen `// ====== INHALT ======` und `// ====== END INHALT ======`) befuellen
3. OUT-Pfad anpassen
4. Bauen: `NODE_PATH=$(npm root -g) node /tmp/build_<projekt>.js`
5. PDF erzeugen: `soffice --headless --convert-to pdf "<datei>.docx"`
6. Seitenanzahl pruefen: `pdfinfo "<datei>.pdf" | grep Pages`

## Im Zweifel

Bei Layout-Fragen, die hier nicht abgedeckt sind, gilt die Faustregel: **Maximale Zurueckhaltung, maximale Lesbarkeit**. Lieber zu wenig Gestaltung als zu viel.
