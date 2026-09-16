# InDesign-Präsentation per Script (Vorlage und Bauweg)

Angelegt 16.09.2026 aus dem Fall 2619 KISPI PPTS (Sitzungsvorlage «Abgleich Umbau», 13 und 11 Folien).
Grund: Rule `auto-verbesserungen` 260913 verlangt Folien als InDesign-Dokument, nie als PPTX. Dieser Ordner
hält den erprobten Bauweg fest, damit die nächste Präsentation nicht wieder von null startet. Das
vollständige Beispielskript liegt beim Projekt, nicht hier (es trägt Honorar- und Rechnungsdaten, Rule 260823):
`AR - 01 Projekte/2619_KINDERSPITAL/09_Dokumente/CLAUDE/04_Sitzung-Auftragslage/260914-KISPI-Sitzung-Auftragslage/260914-KISPI-Abgleich-Umbau-Auftragslage-build.jsx`

## Bauweg

1. ExtendScript (`.jsx`) schreiben, als UTF-8 **mit BOM** speichern (Python `encoding="utf-8-sig"`), sonst
   verliert InDesign die Umlaute.
2. Ausführen: `osascript -e 'tell application id "com.adobe.InDesign" to do script (POSIX file "<pfad>.jsx") language javascript'`
   (Adobe InDesign 2025 auf dem MacBook Pro). Das Script schreibt ein Log (`indesign-log.txt`) in den Zielordner.
3. Das Script speichert `.indd`, exportiert `.idml` (offenes Austauschformat) und das PDF mit dem Preset
   «Qualitativ hochwertiger Druck».
4. Sichtkontrolle: PDF mit pymupdf je Seite als PNG rendern (80 dpi genügt) und jede Seite ansehen. Das Log
   nennt jeden Textrahmen mit Übersatz (`tf.overflows`) samt Seite und Geometrie; erst bei «Übersatz: 0» ablegen.
5. Text für den Korrektur-Harness aus dem IDML ziehen (Zip, `Stories/*.xml`, Reihenfolge aus `designmap.xml`).

## Layout-Konventionen (JANS)

A4 quer 297 x 210 mm, Rand 20 mm, Helvetica Neue Light/Regular/Bold gemäss JANS-Master, Schwarz und Grau 60 %,
keine Farbflächen, keine Bullets (nummerierte Positionen 02.1, 02.2 mit fettem Stichwort), Leitsatz je Folie
über einer Linie, Musterseite mit Fusszeile «Raphael Jans I Architekten ETH I SIA · <Projekt>, <Anlass>» links und
«Seite X von Y» rechts (AUTO_PAGE_NUMBER). Absatzformate: 01 Titel 34/38 Light, 03 Datum 13 Grau, 04 Kernpunkte 13,
10 Folientitel 24 Regular, 11 Leitsatz 15 Bold, 12 Zwischentitel 12 Bold, 20 Grosszahl 34 Light, 21 Label 9.5 Grau,
30/31 Positionsnummer und Position 11.5, 32–34 Tabellenzeilen 11 und Total 20 Bold, 50/51 Termin 13 Bold und
Termintext 9.5 zentriert, 60–64 Kategorie-Tabelle (30 Light, 10 Regular, 8.5 Grau, 14 Bold), 90/91 Fusszeile 8 Grau.

## Fallen, alle belegt

- Masseinheit: `app.scriptPreferences.measurementUnit = MeasurementUnits.POINTS` und alle Masse über
  `function mm(v){ return v*72/25.4; }` umrechnen. Das Setzen auf MILLIMETERS wirkte nicht auf `geometricBounds`.
- `doc.textPreferences.typographersQuotes = false`, sonst werden Apostrophe in 1'824 zu typografischen Zeichen.
- Zeichenformate über `tf.parentStory.characters.itemByRange(...)` setzen, nicht über `tf.characters` (Fehler
  bei noch nicht umbrochenem Text).
- Geschützte Leerzeichen als ` ` im String («SIA 102», «EI 30», «ETH I SIA»), damit
  Normbezeichnungen und der Absender nie umbrechen.
- Rahmenhöhen grosszügig setzen und den Übersatz-Log lesen; zweizeilige Positionen brauchen 12 bis 18 mm.
- Für Text mit fettem Stichwort und Regular-Fortsetzung genügt ein Rahmen: Stichwort per Zeichenformat «Fett»,
  Trennung mit zwei Leerschlägen, kein Satzzeichen (einheitlich über alle Folien).
