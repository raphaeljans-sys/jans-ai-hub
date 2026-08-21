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
- **Listen (Neuregelung 14.08.2026, Vorgabe Raphael):** In ausgehenden Dokumenten **keine
  Aufzaehlungs-Bullets** (weder «•» noch «-») — Klick-Listen wirken generisch und sind als
  KI-Erzeugnis identifizierbar. Stattdessen **nummerierte Positionen im Fliesstext**:
  Themenblock als H2 mit Nummer (01, 02 …), darunter je Punkt ein Absatz mit fetter
  Positionsnummer (01.1, 01.2 …) und fettem Stichwort, dann der Text. Vorteil: jede Position
  ist in Sitzung, Protokoll und Mail referenzierbar. Bindestrich-Bullets bleiben nur in
  internen Arbeitsdokumenten und MD-Quellen zulaessig; fette Praefix-Phrase weiterhin moeglich
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

## Laenge (nicht hier geregelt)

Diese Rule regelt die **Form**, nicht den **Umfang**. Die Laenge einer **Abklaerung** (Antwort
auf eine einzelne Fachfrage: Montagehoehe, Mass, Apparatewahl, Zuordnung) steht in Rule
`auto-verbesserungen.md`, Eintrag **260820**: rund drei Saetze plus eine bemasste Erklaerskizze,
welche die Zahlen traegt, ohne Kapitelgliederung und ohne Ausgangslage-Abschnitt. Studien,
Berichte, Gutachten, Offerten und Protokolle bleiben ausfuehrlich. Der Eintrag benennt diese
Datei als die von ihm ergaenzte Rule; der Querverweis steht hier, damit die Laengenvorgabe auch
findet, wer vom Formstandard herkommt (Synergie-Lauf 14, 21.08.2026).

## Geltung

Alle DOCX/PDF fuer JANS (Factsheets, Berichte, Briefe, Memos, interne Dokumente). NICHT bei
explizit anderem Layout-Wunsch, Briefkopf-Vorlage mit Logo, PPTX (eigene Konvention, aber
Sektion «Sprache» gilt auch dort). XLSX hat ein eigenes Tabellen-Layout, folgt aber dem
JANS-Grundsatz: Cambria, schwarz, keine dekorativen Symbole/Emojis, Status ueber
Text/Schriftschnitt (Regel 260601). Im Zweifel: maximale Zurueckhaltung, maximale Lesbarkeit.
