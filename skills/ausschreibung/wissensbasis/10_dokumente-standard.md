# Ausschreibungs-Dokumente — verbindlicher Standard

Diese Standards bei JEDER Ausschreibung automatisch anwenden (LV, Begleitschreiben,
Mail). Erarbeitet u.a. am Projekt 2620 Albertstrasse 7 / Briefkastenanlage.
Umgesetzt im Tool `tools/jans_docx.py` (wiederverwendbarer DOCX-Baukasten).

## Allgemein (alle Dokumente)

- **Layout:** JANS-Standard — Cambria 11 pt, A4, 20 mm Ränder, schwarz, keine sichtbaren Rahmen, keine Farbflächen.
- **Absenderadresse:** Grubenstrasse 37, 8045 Zürich · rj@raphaeljans.ch · www.raphaeljans.ch (Rule `jans-absenderadresse.md`). Niemals die alte Flüelastrasse-Adresse.
- **Footer mit Seitenzahl:** „… · Seite X von Y" (PAGE/NUMPAGES-Feld) — Pflicht im LV.
- **Sprache:** Deutsch (Schweiz), sz statt ss, sechsstellige Daten wo üblich.
- **Tabellen:** rahmenlos, feste Spaltenbreiten (Summe ≤ 170 mm), Bezeichnungsspalte breit.
- **Export:** immer DOCX **und** PDF.
- **Ablage:** immer doppelt — AI Hub Output **und** Projekt-Versandordner (Anbieter-Unterordner, LOS-Nomenklatur). Siehe SKILL.md „Output-Ablage".

## Leistungsverzeichnis (LV) — Pflicht-Elemente

1. Titel `Leistungsverzeichnis — BKP <Code> <Gewerk>` + „Funktionale Ausschreibung" (falls funktional).
2. Stammzeile: Objekt, Bauherrschaft, Anbieter, Datum.
3. **Grundlagen des Angebots** — die realen Plan-/Dokumentengrundlagen **konkret benennen** (z.B. Objektplan, Terminplan/Grobtermine, Produktkatalog, Anordnungsskizze, Norm SIA 118).
4. Positionsteil nach Bereichen (Pos / Bezeichnung / Menge / EH / Einheitspreis LEER / Betrag LEER).
5. **Termine** (Lieferfrist, Montage nach Abruf, Festpreis-Gültigkeit).
6. **Bauseitige Leistungen** (was NICHT enthalten ist).
7. **Preisbildung und Konditionen** — netto exkl. MWST, Rabatt/Skonto durch Anbieter, **MWST 8,1 %**, „Gleichwertig"-Klausel.
8. **Angaben des Anbieters** (Antwortblock: Firma, Total, Rabatt/Skonto, Lieferfrist, Festpreis gültig bis, Vorbehalte, Datum/Unterschrift).

## Begleitschreiben — Pflicht-Elemente

1. Briefkopf (JANS-Adresse) + Empfängeradresse + Ort/Datum (rechts).
2. Betreff: `Offertanfrage – <Gewerk>, <Objekt> (BKP <Code>)`.
3. Anrede (konkret, z.B. „Sehr geehrter Herr <Name>").
4. Einleitung (Einladung zur Offerte, kurze Beschreibung der Anlage/Leistung).
5. **Plan- und Dokumentengrundlagen** konkret benannt.
6. „Gleichwertig"-Klausel **+ Bauseits-Hinweis**.
7. **Besichtigungstermin** (falls vorhanden): Datum + Uhrzeit, mit Hinweis auf Fragenbeantwortung und Objektbegutachtung.
8. **Eingabefrist** (konkretes Datum).
9. Gruss + Unterschrift.
10. **Beilagen — pro Zeile** aufgelistet (übersichtlich, nicht in einer Zeile).

## Mail-Entwurf (Apple Mail) — Pflicht-Elemente

- Absender rj@raphaeljans.ch · Empfänger (Anbieter) · klarer Betreff.
- Body: Anrede, Einladung, **Besichtigungstermin** (falls vorhanden), **Ausschreibungsunterlagen pro Zeile** aufgelistet, Eingabefrist, Gruss.
- **Alle Beilagen als PDF anhängen** (Begleitschreiben, LV, Plan-/Dokumentengrundlagen).
- Als **Entwurf** erstellen (visible) — niemals automatisch senden.
- Begleitende Termine: Eingabefrist + ggf. Besichtigung als Kalendereintrag (Kalender „Arbeit", Erinnerungen).

## Adressblatt je Submittent (Anbieter-Ordner) — Pflicht

In **jedem** Anbieter-Unterordner unter `…03 AS versand/<ANBIETER>/` zusaetzlich ein
**Adressblatt des Submittenten** ablegen: **nur `…_Adresse.docx`** (KEIN PDF — Ausnahme von
der Regel „DOCX immer mit PDF"), JANS-Layout, fuer Fenstercouvert positioniert (kleine
JANS-Absenderzeile oben ~70 pt Abstand, dann Empfaengerblock: Firma, ggf. Ansprechperson,
Strasse, ggf. Postfach, PLZ Ort). **Immer mit Telefonnummer und E-Mail** des Submittenten.

## Werkzeug

`tools/jans_docx.py` stellt `base_doc, para, h1, h2, table, jans_footer, build_anschreiben`
bereit — damit sind alle obigen Standards (Layout, Adresse, Seitenzahlen, Beilagen
pro Zeile, Besichtigung) bereits eingebaut.
