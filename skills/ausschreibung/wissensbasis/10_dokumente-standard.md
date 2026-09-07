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
4. Positionsteil nach Bereichen (Pos / Bezeichnung / Menge / MA / EH / Einheitspreis LEER /
   Betrag LEER). **Mengenart (MA) je Position deklarieren**, Codes nach SIA 451:
   A = Vorausmass, wird nach effektivem Ausmass abgerechnet (Standard bei Flächen, Längen,
   Massen); B = Festmenge, Menge ist Vertragsbestandteil (Stückzahlen, Apparate, Pauschalen);
   D = Vorausmass nur auf Anweisung der Bauleitung auszuführen; E = Eventualposition ohne
   Menge, nur Einheitspreis. Eventualpositionen (D, E) zählen nicht zur Vergleichssumme und
   werden im Summenblock getrennt ausgewiesen. Legende der Codes einmal im LV-Kopf abdrucken.
   **Herleitung je Menge:** bei A-Positionen die Ausmasstabelle (Anzahl x Länge x Breite x Höhe,
   Rundung, Planquelle mit Index) als Zeile unter der Position oder als Beilage «Mengenermittlung»
   mitgeben; keine geratenen Mengen, Unsicheres als «Menge durch UN zu prüfen» markieren.
5. **Termine** (Lieferfrist, Montage nach Abruf, Festpreis-Gültigkeit).
6. **Bauseitige Leistungen** (was NICHT enthalten ist).
7. **Preisbildung und Konditionen** — netto exkl. MWST, Rabatt/Skonto durch Anbieter, **MWST 8,1 %**, „Gleichwertig"-Klausel.
8. **Angaben des Anbieters** (Antwortblock: Firma, Total, Rabatt/Skonto, Lieferfrist, Festpreis gültig bis, Vorbehalte, Datum/Unterschrift).

## Antwortformular, Pflicht-Felder (Ergänzung Selbstdeklaration)

Zusätzlich zu Firma, Kontakt, Summen, Rabatt/Skonto, Lieferfrist, Preisbindung, Gewährleistung,
Zahlungskonditionen, Referenzobjekten und Vorbehalten enthält das Antwortformular folgende
Positionen (Vorlagentext, nummeriert, keine Bullets):

| Pos. | Feld | Inhalt |
|---|---|---|
| 01 | Betriebshaftpflichtversicherung | Versicherer, Deckungssumme, Geltungsbereich Schweiz |
| 02 | Selbstdeklaration GAV | Einhaltung des Gesamtarbeitsvertrags der Branche (Ankreuzfeld ja/nein) |
| 03 | Selbstdeklaration Sozialversicherungen und Steuern | AHV/IV/EO/ALV, BVG, UVG und Steuern bezahlt (Ankreuzfeld ja/nein) |
| 04 | Selbstdeklaration Arbeitsschutz | Keine Lohn- oder Arbeitsschutzverstösse (Ankreuzfeld ja/nein) |
| 05 | Subunternehmer | Subunternehmer und deren Anteil an der Leistung benannt |
| 06 | Ausländischer Sitz | Bei Sitz im Ausland zusätzlich die Felder aus `12_auslaendische-unternehmer.md` |
| 07 | Vollständigkeit | Bestätigung «Ausschreibungsunterlagen inkl. Nachträge Nr. … vollständig erhalten» |

## Drei Bestimmungsebenen, Checkliste vor Versand

Jedes Dossier deckt drei Ebenen ab, jede an ihrem Ort: (1) Büro-Ebene: Allgemeine Bedingungen
aus `05_knowhow-gewerke.md` und Konditionenmodell aus `04_konditionen.md`, in jedem LV identisch;
(2) Objekt-Ebene: Bauherrschaft, Objekt, Bauleitung, Termine, Besichtigung, Grobtermine aus
`projekte/<nr>.md`; (3) Gewerk-Ebene: Grundlagen des Angebots, Bauseits, Termine, Normen der
ABB-Reihe mit Fundstelle, Hinweise und Vorbehalte im LV. Abweichungen zur SIA 118 werden auf
Ebene 1 ausdrücklich benannt oder ausdrücklich ausgeschlossen («keine Ergänzungen zu SIA 118»).

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
