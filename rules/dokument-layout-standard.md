# Regel: Dokument-Layout-Standard (DOCX/PDF)

Alle von Claude erstellten Dokumente (DOCX/PDF) folgen diesem neutralen Standard: serifige
Lesbarkeit, durchgaengig schwarz, keine Farbflaechen, keine sichtbaren Tabellenrahmen.
Festgelegt 05.05.2026. Build-Workflow, Generator-Vorlage und DXA-Detailparameter:
`templates/dokument-layout/BUILD-ANLEITUNG.md`.

## Verbindliche Konventionen

- **Seite:** A4, Raender 20 mm rundum
- **Schrift:** Cambria, Body 11 pt, Zeilenabstand 1.4, alles Schwarz
- **Hierarchie:** H1 18 pt fett, H2 12 pt fett, Footer 8 pt
- **Keine** Hintergrundfarben, Akzentfarben, sichtbaren Tabellenrahmen; Trennung ueber
  Whitespace, Tabellen nur als unsichtbare Layout-Hilfe
- **Listen:** Bindestrich «-» als Bullet (nicht «•»), Einzug 360 DXA; fette Praefix-Phrase moeglich
- **Footer:** links Verfasser/Mail/Datum, rechts «Seite X von Y»
- **Keine expliziten PageBreaks**; bei Seitenzahl-Vorgabe verdichten statt umbrechen

## Tabellen (verbindlich)

- Zellschrift **mindestens 10 pt** — nie kleiner; passt der Inhalt nicht: Spalten umverteilen
- Bemerkungsspalten **mindestens 2400 DXA (25 %)**; Bezeichnungsspalte max. 50 % der Inhaltsbreite
- **Header, Einheiten und Zahlenwerte duerfen NIE umbrechen** («EP CHF», «pausch.», «m²»
  immer einzeilig); schmale Zell-Innenraender (~0.6 mm, in `tools/jans_docx.py` eingebaut);
  Zahlen-/Einheitsspalten rechts bzw. zentriert
- Mehr als zwei Wertspalten: Querformat statt Spalten einengen
- **Pflicht-Sichtkontrolle vor Abgabe:** PDF rendern und pruefen, dass nichts umbricht

## Sprache

- Schweizer Hochdeutsch; echte Umlaute ä/ö/ü (Rule `umlaute-konvention.md`); «ss» statt «ß»
- **Kein Gedankenstrich (— / –) als Stilmittel**, auch nicht durch Bindestrich ersetzt:
  umformulieren (Komma, Doppelpunkt, Punkt, Klammer). Bindestrich nur in Komposita und als
  Listen-Bullet. (Vorgabe 10.06.2026; gilt fuer Dokumente UND Praesentationen)
- Anfuehrungszeichen «…» bzw. „…"

## Geltung

Alle DOCX/PDF fuer JANS (Factsheets, Berichte, Briefe, Memos, interne Dokumente). NICHT bei
explizit anderem Layout-Wunsch, Briefkopf-Vorlage mit Logo, PPTX (eigene Konvention, aber
Sektion «Sprache» gilt auch dort), XLSX. Im Zweifel: maximale Zurueckhaltung, maximale Lesbarkeit.
