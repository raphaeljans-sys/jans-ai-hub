# Audit Skills `ausschreibung` und `offertenpruefung` gegen das Referenzmodell Bauadministration (BBase-Scan 07.09.2026)

Datum: 07.09.2026
Prüfraster: `scratchpad/260907-bbase-scan.md`, Abschnitte 02.7 bis 02.9, 03.5, Prinzipien 04.17 bis 04.23, Datenfelder 05.9 und 05.10, Beobachtung 07.4.
Geprüfte Dateien (nur gelesen, nichts verändert):
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/SKILL.md`
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/01_workflow-ausschreibung.md`, `03_sia451-crbx-format.md`, `04_konditionen.md`, `05_knowhow-gewerke.md`, `06_glossar.md`, `07_werkvertrag-unternehmerkontrolle.md`, `10_dokumente-standard.md`, `13_uebergabe-bauleitung.md`, `14_bauadministration-prinzipien.md`, `wissensluecken.md`, `README.md`, `00_ordnerstruktur-bauleitung.md`, `02_gewerksliste-bkp-npk.md`
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/templates/vergabeempfehlung_template.md` (einzige Datei im Ordner)
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/tools/jans_docx.py`, `dossier_build.py`, `configs/_TEMPLATE.json`
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/referenzen/goldstandard-lv/*.md` (Stichproben 221, 228, 271, 272), `referenzen/bbase-handbuecher/README.md`
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/projekte/README.md`, `2620-albertstrasse-7.md`, `2619-kispi.md` (Los-Nomenklatur)
`/Volumes/daten/jans-ai-hub/skills/offertenpruefung/SKILL.md`, `templates/vergleichsmatrix_template.md`, `factsheet_template.md`, `klaerungsfragen_template.md`
Gegenprobe in `werkvertrag`, `kostenkontrolle`, `unternehmerkontrolle`, `unternehmerfindung` (nur grep nach Vergabeantrag, KV-Summe, Abgebot).

Vorbemerkung zum Bestand: `wissensbasis/14_bauadministration-prinzipien.md` (54 kB, angelegt 07.09.2026 15:59) ist eine vollständige Kopie des Scans mit der Kopfzeile «der Loop bauleitung-training prüft je Lauf einen Skill dagegen». Während dieses Audits (16:02) wurde die Verdrahtung nachgezogen: `SKILL.md` (Wissensbasis-Baum, Zeilen 51 bis 54) und `wissensbasis/README.md` (Index Zeilen 36, 37, 44) führen jetzt `14_`, das neue Register `15_bauleitung-training-register.md` und `referenzen/bbase-handbuecher/`. Einzig der Referenzen-Baum in `SKILL.md` (Zeilen 58 bis 61: goldstandard-lv, npk-struktur, produkt-kataloge) nennt `bbase-handbuecher/` noch nicht; eine Zeile genügt. Im Register 15 steht die Zeile «ausschreibung + offertenpruefung | 04.17 bis 04.23 | ausstehend»; die Ampelbilanz dieses Berichts kann dort eingetragen werden.

## 01 Abgleichstabelle

Ampel: grün = vorhanden, gelb = teilweise oder nur implizit, rot = fehlt.

| Prinzip | Kurzname | Stand im Skill (Datei, Abschnitt, Zitat) | Ampel |
|---|---|---|---|
| 04.17 | Vergabeeinheit als Klammer (Adresse, Submittenten, LV, Offertvergleich, WV, Vergabeantrag, Kontoauszug, Zahlung laufen über die VE) | JANS führt die Klammer als LOS-Nummer und Gewerk-Ordner: `SKILL.md` «Output-Ablage», Phasenordner `01 Grundlagen … 11 SR` je Gewerk; `06_glossar.md` «Vergabeeinheit (VE): Gliederung der Bauarbeiten in vergebbare Pakete … wird aus dem Kostenvoranschlag übernommen»; `projekte/2619-kispi.md` «Los-Nomenklatur (bürointern, belegt): LOS <BKP>.<lfd>»; `02_gewerksliste-bkp-npk.md` «gliedert Gewerke nach BKP (Ablage/Vergabeeinheit)». Was fehlt: ein VE-Kürzel als Datenfeld und die Zuordnung, welche BKP-Konti (KV) ein Los deckt; die Projekt-Stammdatei führt Lose nur als Liste ausgeschriebener Nummern, nicht als Kontenklammer. Kein Datenfeld in `configs/_TEMPLATE.json`. | gelb |
| 04.18 | Drei Bestimmungsebenen AVB (Büro) / OSB (Objekt) / USB (Gewerk) plus UN-Selbstdeklaration | Implizit dreistufig: Büroebene = `05_knowhow-gewerke.md` «Allgemeine Bedingungen (gelten für alle LV)» und Goldstandard NPK 103 Kostengrundlagen (5 Jahre Garantie, Werkpreis vollständig, Plan vor Text) sowie `04_konditionen.md` (Bau-Nebenabzüge «JANS-Standard und werden vorgegeben»); Objektebene = `projekte/<nr>.md` (Bauherrschaft, Besichtigung, Grobtermine); Gewerkebene = LV-Pflichtelemente in `10_dokumente-standard.md` (Grundlagen, Termine, Bauseits, Konditionen). `00_ordnerstruktur` kennt «1_Submission/a_Allgemeine Bedingungen». Nicht gefunden: Eignungs-/Zuschlagskriterien, benannte Abweichungen zur SIA 118 (Goldstandard sagt nur «011100 Keine Ergänzungen zu SIA 118»), Verfahrensart (bewusst nicht, Regel 260626). UN-Blatt: `jans_docx.py build_antwortformular` hat Firma, Kontakt, Summen, Rabatt/Skonto, Lieferfrist, Preisbindung, Gewährleistung, Zahlung, Referenzobjekte, Vorbehalte, Unterschrift; keine Versicherung, keine Selbstdeklaration (GAV, Sozialversicherungen, Steuern, Subunternehmer). Versicherungsnachweis nur für AT/DE-Anbieter (`12_auslaendische-unternehmer.md`). | gelb |
| 04.19 | Submittentenliste mit Bauherr besprochen und vor Ausschreibung bereinigt; Grundlage des Offertvergleichs | Vorgelagert `unternehmerfindung` (Shortlist ≥ 3, Ranking); `SKILL.md` «Verbindliche Regeln»: «Submittentenlisten (Regel 260601): 3 Unternehmen je Gewerk … Abgleich gegen den realen Postausgang»; `13_uebergabe-bauleitung.md` Ziff. 3.5 «Anbieterliste des Loses: Firmen, Kontakte, Bauherren-Vorgaben (z.B. 2-Angebote-Regel, gesetzte Anbieter)». Ein Bauherren-Checkpoint vor dem Versand steht im Normalmodus (Phase 2) nicht; die Anbieterliste der Config wird nicht als Spaltenkopf der Vergleichsmatrix wiederverwendet (Vergleichsmatrix baut die Spalten aus den eingegangenen Offerten). | gelb |
| 04.20 | Mengenarten SIA 451 (A/B/D/E, Varianten J/K/M, Q/R/U); Ausmasstabelle je Mengenzeile; Ausmass und Regie in getrennten LV | Mengenarten: nicht gefunden (kein Treffer in SKILL.md, Wissensbasis, Templates, Generator; `03_sia451-crbx-format.md` führt die Mengenfelder «roh mit», das Feld MA wird nicht geparst). Einziger Ansatz: `jans_docx.py build_lv` «Mengen sind verbindlich, sofern nicht als 'ca.' bezeichnet» (zwei implizite Klassen). Ausmasstabelle: nur im Übergabe-Modus, `13_uebergabe-bauleitung.md` Ziff. 4 «Mengen nachvollziehbar: Herleitung (Plan-Massaufnahme/Raumbuch) vermerkt»; kein Feld in `_TEMPLATE.json` (`pos, bez, menge, einheit, spez`). Regie: die JANS-Goldstandards führen NPK 111 «Regiearbeiten» mit «Budgetbetrag, Abrechnung nach effektivem Ausmass» im selben LV wie die Ausmasspositionen (z.B. `228-sonnenschutz-LV347.md`, `271-gipser-WW…md`); eine Regel, den Regieteil getrennt auszuweisen und aus der Vergleichssumme herauszuhalten, fehlt. | rot |
| 04.21 | Vollständigkeitsprüfung vor Versand; exportierte Ausschreibung eingefroren; Normtexte unverändert; Angebote beim Einlesen auf Vollständigkeit geprüft | Vor Versand: `01_workflow-ausschreibung.md` «Versand-Checkliste» (7 Punkte: Kein Fremdblatt, Reihenfolge, Zeitplan am Schluss, Begleitschreiben, Lieferschein, Terminsendung, Porto) und `SKILL.md` «Plan-Versionen einheitlich … Vor Versand prüfen!»; Korrektur-Pflicht (`korrektur`). Das inhaltliche Konsistenz-Gate (Plan ↔ LV, Mengen, Bauseits, Identifikatoren, Selbsttest) existiert nur im Übergabe-Modus (`13_uebergabe-bauleitung.md` Ziff. 4). Beim Eingang: `SKILL.md` Phase 3.1 «Vollständigkeit (Anschreiben, LV mit Preisen, Antwortformular, allfällige Vorbehalte) erfassen»; `offertenpruefung` Phase 1 «Fehlt ein angekündigter Anhang?». Eingefrorene Ausschreibung: nur implizit («PDF ist der Verbindlichkeitsstand», SKILL.md «Grundregel Dateiformate»); eine Regel «nach Versand keine Änderung am LV, Ergänzungen als nummerierte Ausschreibungs-Nachträge an alle» nicht gefunden. Normtexte unverändert: nicht gefunden (JANS schreibt überwiegend Eigentext). | gelb |
| 04.22 | Offertvergleich gegen KV-Preise und gegen den Favoriten, positionsweise mit Abweichungsfilter; Abgebotsrunde mit Rangierung und neutraler Übersicht; Auftragsbestätigung und Absagen | `offertenpruefung/templates/vergleichsmatrix_template.md`: Anbieter in EP/GP-Spalten, «Differenz GP: Absolut (CHF) und optional Prozent», «Bemerkung: Pflicht wenn Differenz > 20 %» (ein Abweichungsfilter, Referenz ist aber der andere Anbieter, nicht der Favorit); `SKILL.md` Phase 3.4 Plausibilität über `kostenschaetzung` (Bandbreite, nicht der Projekt-KV); Phase 02 «Richtofferten: Richtpreis-Basis» als KV-Ersatz vorhanden, aber nicht als Spalte der Matrix. Rangierung: Vergabeempfehlung Sektion 8 «Erstplatzierung … Zweitempfehlung als Backup». Abgebot: `SKILL.md` Phase 3.6 «Mit dem 1.-platzierten Anbieter Detailbereinigung in 1-2 Runden» (bilateral); `06_glossar.md` «Abgebot: … Verhandlungsergebnis mit dem Erstplatzierten». Neutrale Übersichtstabelle einer Abgebotsrunde an mehrere Anbieter: nicht gefunden. Absagen: Phase 3.7 «Absage-Mails … kurz, professionell»; Auftragsbestätigung: «Werkvertrag / Bestellbestätigung». | gelb |
| 04.23 | Vergabeantrag mit vergleichbarer KV-Summe (KV minus Rückstellungen Regie, Teuerung, Ausmassreserve), Unterschrift Architekt und Bauherr, Beilage Offertvergleich | `templates/vergabeempfehlung_template.md` (10 Sektionen) und `SKILL.md` Phase 3.5: Beilagen «Vergleichsmatrix (xlsx), Factsheets» vorhanden; Sektion 10 «Vergabeempfehlung Bauherr zur Freigabe». Nicht gefunden: KV-/Budgetbetrag je Los, «vergleichbare KV-Summe», Rückstellungen Regie/Teuerung/Ausmassreserve, Unterschriftenfeld Bauherrschaft. `06_glossar.md` definiert «Vergabeantrag: Bewertung + Rankingempfehlung an den Bauherrn» (ohne Budgetbezug). Auch `kostenkontrolle/SKILL.md` kennt nur «Verpflichtungen buchen je vergebenem Gewerk», keinen Vergabeantrag als Beleg; `werkvertrag` und `unternehmerkontrolle`: kein Treffer. | rot |
| 05.9 | Datenfelder Ausschreibung (Titel, Daten, Submittenten, Planungsteam, AVB/OSB/USB, UN, Auswertung mit Zwischentotalen und Konditionenmodell, LV-Position mit Menge, Mengenart, Einheit, EP, Betrag, Ausmasstabelle, Bild, Gliederungen) | `configs/_TEMPLATE.json`: los_prefix, los_titel, betreff, projekt_adresse, datum_ort, bauherr_zeilen, Einleitung, grundlagen_satz, gleichwertig_bauseits, eingabefrist_satz, besichtigung, lv_einleitung, bauseits, positionen (pos, bez, menge, einheit, spez), beilagen, anbieter (kurzname, zeilen, empfaenger, anrede). Konditionenmodell: als Wissen in `04_konditionen.md` (KBOB/ESTV, Bau-Nebenabzüge), im Generator nur die Zeile «Rabatt / Skonto (falls gewährt)» im Summenblock. Zwischentotale je Bereich: in `SKILL.md` «LV-Struktur (Standard)» vorgesehen («Zwischensumme»), in `build_lv` nicht erzeugt (nur Summenblock am Ende). Fehlend: Mengenart, Ausmasstabelle, Bild je Position, Gliederungen (PSL/KAG/EGL/OGL), Planungsteam, Versicherung/Selbstdeklaration. | gelb |
| 05.10 | Datenfelder Offertvergleich (EP und Konditionen je UN in Spalten, KV-Preise auf Position/Abschnitt/Bruttototal, Favorit, Abweichung %/absolut, Rangierung, Nettobetrag) | `vergleichsmatrix_template.md`: EP/GP je Anbieter, Differenz absolut/Prozent, Total-Tabelle mit «Projektrabatt / Skonto», «Gesamttotal exkl. MwSt», «Bereinigte Schätzung auf gleichen Stand»; `vergabeempfehlung_template.md` Sektion 6 Konditionen-Vergleich (Plan-Stand, Lieferzeit, Zahlung, Gewährleistung, Bauseits, Rabatt, Marken, Rolle). Fehlend: KV-Preisspalte, vollständige Rangliste aller Anbieter (nur Erst/Zweit), Favorit als Bezugsspalte für die Abweichung. | gelb |

Bilanz: 0 grün, 6 gelb, 2 rot (04.20, 04.23). Bezogen auf die neun Zeilen der Tabelle: 0 grün, 7 gelb, 2 rot.

Zu 07.4 (AVB/OSB/USB und Mengenart-Codes als Checkliste im Skill): beides ist heute nicht als Checkliste vorhanden; die Vorschläge 3 und 5 unten schliessen das.

## 02 Lücken, priorisiert nach Nutzen für die JANS-Bauleitung

### Lücke 1 (04.23, 05.10): Vergabeantrag ohne Budgetbezug und ohne Unterschrift Bauherrschaft

Was fehlt: Die Vergabeempfehlung stellt die Angebote nur untereinander gegenüber. Der Betrag, den der KV für dieses Los vorsieht, die vergleichbare KV-Summe (KV abzüglich Rückstellungen für Regie, Teuerung, Ausmassreserve) und ein Unterschriftenfeld für die Bauherrschaft fehlen.
Risiko: Die Bauherrschaft erfährt beim Vergabeantrag nicht, ob das Los im Budget liegt, und die Freigabe ist nicht als Beleg dokumentiert; bei einer Kostenüberschreitung fehlt der Nachweis, dass sie vor der Vergabe ausgewiesen wurde (Haftungsregel 5.61: «Die Kostenprognosen sind einzuhalten»).
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/templates/vergabeempfehlung_template.md`, neue Sektion zwischen 5 und 6 (Nummerierung der Folgesektionen um eins schieben) sowie Ergänzung in Sektion 8; parallel `SKILL.md` Phase 3, Schritt 5, Strukturliste.
Einzufügender Text:

```
### 6. Vergabesumme im Budget (Pflicht-Sektion)
Tabelle mit je einer Zeile:
- KV-Betrag des Loses (Quelle: Kostenvoranschlag Phase D, BKP-Konti des Loses gemäss Projekt-Stammdatei; fehlt ein KV, die Richtofferte aus Phase 02 nennen und als solche kennzeichnen)
- abzüglich Rückstellungen im KV: Regie, Teuerung, Ausmassreserve (je Zeile, Betrag oder «keine»)
- = vergleichbare KV-Summe
- Vergabesumme Erstplatzierter netto exkl. MwSt (nach Abgebot)
- Differenz absolut und in Prozent der vergleichbaren KV-Summe
Liegt die Vergabesumme über der vergleichbaren KV-Summe, ist die Abweichung in Sektion 3 als kritischer Befund und in Sektion 9 als Verhandlungspunkt zu führen. Nie den KV-Betrag schätzen: fehlt die Quelle, Platzhalterlinie und Rückfrage.

### 9. Empfehlung der Vergabe (Ergänzung am Ende)
Abschluss mit Freigabeblock: «Vergabe freigegeben» mit zwei Unterschriftszeilen (Raphael Jans Architekten ETH/SIA; Bauherrschaft, Name gemäss Projekt-Stammdatei), Ort/Datum, sowie Beilagenzeile «Vergleichsmatrix vom <Datum>, Factsheets je Anbieter». Die Freigabe der Bauherrschaft wird nach Rücklauf im Vergabe-Ordner `05 Vergabe` abgelegt und ist Voraussetzung für Skill `werkvertrag`.
```

### Lücke 2 (04.21): Kein inhaltliches Versand-Gate im Normalmodus und keine eingefrorene Ausschreibung

Was fehlt: Das Konsistenz-Gate aus `13_uebergabe-bauleitung.md` Ziff. 4 gilt nur, wenn eine externe Bauleitung übernimmt. Im Normalmodus prüft die Versand-Checkliste nur Form und Reihenfolge. Es gibt keine Regel, dass das versandte LV nach dem Versand unverändert bleibt und Änderungen als nummerierte Nachträge an alle Anbieter gehen.
Risiko: Anbieter offerieren auf verschiedenen Ständen, die Vergleichbarkeit (Kernprinzip 2 «Faire Vergleichbarkeit») geht verloren, und beim Eingang lässt sich nicht mehr feststellen, welcher Stand bepreist wurde.
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/SKILL.md`, Abschnitt «Phase 2: Versand», vor dem ersten Aufzählungspunkt.
Einzufügender Text:

```
**Versand-Gate (PFLICHT, jeder Modus):** Vor dem Erzeugen der Mail-Drafts läuft das
Konsistenz-Gate aus `wissensbasis/13_uebergabe-bauleitung.md` Ziff. 4 (Plan ↔ LV in beide
Richtungen, Mengen nachvollziehbar, Materialisierung eindeutig, Bauseits-Abgrenzung, Plan-Stand
einheitlich, Identifikatoren verifiziert, Korrektur-Harness gelaufen). Es gilt nicht nur im
Übergabe-Modus. Erst wenn alle Punkte grün sind, wird das Paket erzeugt.

**Eingefrorene Ausschreibung:** Mit dem Versand ist der Stand des Dossiers fixiert (Datum und
Index im Dateinamen, PDF ist der Verbindlichkeitsstand). Nach dem Versand wird das LV nicht mehr
verändert. Ergänzungen, Korrekturen und Fragenbeantwortungen gehen als nummerierter
«Ausschreibungs-Nachtrag Nr. n vom <Datum>» gleichzeitig an alle Anbieter und werden im
Versand-Ordner abgelegt; beim Eingang wird je Offerte festgehalten, welcher Nachtrag-Stand
bepreist wurde (Phase 3, Schritt 1).
```

### Lücke 3 (04.20, 05.9): Mengenart und Mengenherleitung je Position fehlen

Was fehlt: Das LV kennt nur Menge und Einheit. Weder wird deklariert, ob eine Menge Vorausmass (nach effektivem Ausmass abgerechnet), Festmenge oder Eventualposition ist, noch trägt die Position eine Herleitung (Faktor, Länge, Breite, Höhe, Quelle).
Risiko: Ohne Mengenart streiten Bauleitung und Unternehmer bei der Schlussrechnung darüber, ob eine Mengenabweichung vergütet wird; ohne Herleitung kann das Ausmass in `unternehmerkontrolle` nicht gegen die LV-Menge geprüft werden.
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/10_dokumente-standard.md`, Abschnitt «Leistungsverzeichnis (LV) — Pflicht-Elemente», Punkt 4 ersetzen; zusätzlich Feld `ma` und `herleitung` in `tools/configs/_TEMPLATE.json` und `jans_docx.py build_lv` (Spalte MA zwischen Menge und Einheit).
Einzufügender Text:

```
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
```

### Lücke 4 (04.22, 05.10): Offertvergleich ohne KV-Spalte, ohne Favoriten-Bezug und ohne neutrale Abgebotsübersicht

Was fehlt: Die Vergleichsmatrix misst Abweichungen nur zwischen den Anbietern; es gibt keine Spalte mit dem KV- oder Richtpreis je Position und keine Regel, den Favoriten als Bezugsspalte zu setzen. Die Abgebotsrunde ist als bilaterale Verhandlung mit dem Erstplatzierten definiert; eine neutrale Übersicht (Rang, Angebot, Abgebot, Nettobetrag je Anbieter) fehlt.
Risiko: Ein Los, bei dem alle Anbieter über dem KV liegen, fällt im Vergleich nicht auf; ohne neutrale Abgebotsübersicht ist die Rangierung nach dem Abgebot gegenüber der Bauherrschaft nicht nachvollziehbar.
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/offertenpruefung/templates/vergleichsmatrix_template.md`, Abschnitt «Spaltenstruktur» (Ergänzung) und neuer Abschnitt nach «Total-Tabelle am Ende».
Einzufügender Text:

```
Zusätzliche Bezugsspalten (Pflicht, sobald ein KV oder eine Richtofferte vorliegt):
| … | KV/Richtpreis EP | Favorit EP | Abw. Favorit % |
- **KV/Richtpreis**: Einheitspreis aus dem Kostenvoranschlag (Phase D) oder der Richtofferte
  (Phase 02), Quelle in der Kopfzeile nennen; fehlt beides, Spalte leer lassen und im Bericht
  als «kein Budgetbezug» ausweisen. Vergleich mindestens auf Bereichs- und Gesamttotal.
- **Favorit**: der nach Bereinigung erstplatzierte Anbieter ist die Bezugsspalte; die
  Abweichung der übrigen Anbieter wird je Position in Prozent zum Favoriten geführt.
- **Abweichungsfilter**: Positionen mit mehr als 20 % oder mehr als 2'000 CHF Abweichung zum
  Favoriten oder zum KV werden in einer eigenen Liste «Auffällige Einheitspreise» ausgewiesen
  und im Unternehmergespräch je Position geklärt (zu tief = Ausführungsrisiko, zu hoch =
  Verhandlungspunkt).

## Abgebotsrunde (neutrale Übersicht)
Wird nach der Bereinigung mehr als ein Anbieter zum Abgebot eingeladen, entsteht eine
Übersichtstabelle: Rang | Anbieter | Angebot netto | Abgebot netto | Nettobetrag nach Konditionen
| Bemerkung. Alle Eingeladenen erhalten dieselbe Frist und dieselbe Frage; Beträge anderer
Anbieter werden nie offengelegt (Regel 260626). Die Tabelle ist Beilage der Vergabeempfehlung.
```

### Lücke 5 (04.18, 05.9): Antwortformular ohne Selbstdeklaration und Versicherung; keine Drei-Ebenen-Checkliste

Was fehlt: Das UN-Blatt (Antwortformular) fragt keine Betriebshaftpflicht, keine Einhaltung von GAV und Sozialversicherungspflichten, keine Steuerkonformität und keine Subunternehmer ab. Die drei Bestimmungsebenen sind im Skill nur implizit verteilt (Knowhow-Bedingungen, Projekt-Stammdatei, LV-Hinweise), es gibt keine Checkliste, die vor dem Versand prüft, ob jede Ebene abgedeckt ist.
Risiko: Bei öffentlichen Bauherrschaften (KISPI) ist die Selbstdeklaration Eignungsvoraussetzung; fehlt sie, ist die Offerte formell angreifbar und die Bauherrschaft haftet solidarisch für nicht bezahlte Sozialabgaben.
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/10_dokumente-standard.md`, neuer Abschnitt nach «Leistungsverzeichnis (LV) — Pflicht-Elemente»; Felder zusätzlich in `jans_docx.py build_antwortformular`.
Einzufügender Text:

```
## Antwortformular, Pflicht-Felder (Ergänzung Selbstdeklaration)
Zusätzlich zu Firma, Kontakt, Summen, Rabatt/Skonto, Lieferfrist, Preisbindung, Gewährleistung,
Zahlungskonditionen, Referenzobjekten und Vorbehalten:
- Betriebshaftpflichtversicherung (Versicherer, Deckungssumme, Geltungsbereich Schweiz)
- Selbstdeklaration mit Ankreuzfeldern: Einhaltung des GAV der Branche; Sozialversicherungen
  (AHV/IV/EO/ALV, BVG, UVG) und Steuern bezahlt; keine Lohn- oder Arbeitsschutzverstösse;
  Subunternehmer und deren Anteil benannt; bei ausländischem Sitz die Felder aus
  `12_auslaendische-unternehmer.md`
- Bestätigung «Ausschreibungsunterlagen inkl. Nachträge Nr. … vollständig erhalten»

## Drei Bestimmungsebenen, Checkliste vor Versand
Jedes Dossier deckt drei Ebenen ab, jede an ihrem Ort: (1) Büro-Ebene: Allgemeine Bedingungen
aus `05_knowhow-gewerke.md` und Konditionenmodell aus `04_konditionen.md`, in jedem LV identisch;
(2) Objekt-Ebene: Bauherrschaft, Objekt, Bauleitung, Termine, Besichtigung, Grobtermine aus
`projekte/<nr>.md`; (3) Gewerk-Ebene: Grundlagen des Angebots, Bauseits, Termine, Normen der
ABB-Reihe mit Fundstelle, Hinweise und Vorbehalte im LV. Abweichungen zur SIA 118 werden auf
Ebene 1 ausdrücklich benannt oder ausdrücklich ausgeschlossen («keine Ergänzungen zu SIA 118»).
```

### Lücke 6 (04.17): Los ist Ablageklammer, aber keine Kontenklammer

Was fehlt: Die Projekt-Stammdatei listet ausgeschriebene Lose, ordnet ihnen aber keine BKP-Konti des KV und keinen KV-Betrag zu. Damit fehlt der Anker, über den Vergabeantrag (Lücke 1), Baubuchhaltung (`kostenkontrolle`) und Schlussrechnung dasselbe Los meinen.
Risiko: Ein Los, das Leistungen aus zwei BKP-Untergruppen bündelt (z.B. Plattenarbeiten 281.6 und 282.4 im KISPI), lässt sich in der Kostenkontrolle nicht sauber gegen den KV buchen; Doppel- oder Nichtzuordnung.
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/projekte/README.md`, Abschnitt «Konvention» (Pflichtfelder), sowie je Stammdatei ein Abschnitt «Lose als Vergabeeinheiten».
Einzufügender Text:

```
## Lose als Vergabeeinheiten (Pflicht ab dem ersten ausgeschriebenen Los)
Jedes Los ist die Vergabeeinheit des Projekts: ein Vertrag, ein Unternehmer, ein Kontoauszug.
Je Los eine Zeile: Los-Nr. (bürointern) | Kürzel (zwei Buchstaben, z.B. GI Gipser, MA Maler,
PL Plattenarbeiten) | BKP-2017-Codes der zugeordneten KV-Konti | KV-Betrag des Loses
(Quelle, Datum) | Rückstellungen Regie/Teuerung/Ausmassreserve im KV | Stand (AS versandt,
vergeben, WV, SR). Dieselbe Zeile ist die Grundlage für Sektion «Vergabesumme im Budget» der
Vergabeempfehlung und für die Buchung in `kostenkontrolle`. Kürzel und Kontenzuordnung
werden beim Anlegen des Loses gesetzt, nie erst bei der Schlussrechnung.
```

### Lücke 7 (04.20): Regie im selben LV wie das Ausmass, ohne Trennregel

Was fehlt: Die Goldstandard-LVs führen NPK 111 «Regiearbeiten» mit Regieansätzen und einem Budgetbetrag im selben Dokument wie die Ausmasspositionen. Ob und wie der Regieteil aus der Vergleichssumme herausgehalten und im Werkvertrag als Rückstellung geführt wird, steht nirgends.
Risiko: Regiebudgets verzerren den Offertvergleich (ein Anbieter mit hohem Regieansatz erscheint teurer, obwohl die Regie nie abgerufen wird) und wandern unbemerkt in die Werkvertragssumme statt in die Rückstellung «Diverse».
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/SKILL.md`, Abschnitt «LV-Struktur (Standard)», nach dem Spaltenhinweis.
Einzufügender Text:

```
**Ausmass und Regie getrennt führen.** Regieleistungen (Stundenansätze nach Berufskategorie,
Maschinen, Material mit Zuschlag) stehen in einem eigenen LV-Teil «Regiearbeiten» am Ende des
Dokuments, mit Budgetbetrag als Vorausmass (MA = A) und dem Vermerk «Abrechnung nach
bewilligten Regierapporten». Der Regieteil wird im Summenblock getrennt ausgewiesen und zählt
nicht zur Vergleichssumme des Offertvergleichs; verglichen werden die Regieansätze in einer
eigenen Zeile der Konditionen-Tabelle. Im Werkvertrag wird der Regiebetrag als Rückstellung
(«Diverse») geführt, nicht als Vertragssumme. Bei reinen Regieaufträgen entsteht ein eigenes
LV ohne Ausmasspositionen.
```

### Lücke 8 (04.19): Kein Bauherren-Checkpoint für die Submittentenliste im Normalmodus

Was fehlt: Im Übergabe-Modus werden Bauherren-Vorgaben zur Anbieterliste erfasst, im Normalmodus (Phase 2) gibt es keinen Schritt, der die Liste vor dem Versand mit der Bauherrschaft bereinigt und ihre Freigabe festhält.
Risiko: Ein von der Bauherrschaft gesetzter oder ausgeschlossener Anbieter fehlt oder ist dabei; das fällt erst beim Vergabeantrag auf und kostet eine zweite Runde.
Zieldatei: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/SKILL.md`, Abschnitt «Phase 2: Versand», als erster Aufzählungspunkt.
Einzufügender Text:

```
- Submittentenliste des Loses (Shortlist aus `unternehmerfindung`, 3 bis 6 Anbieter) vor dem
  Versand mit der Bauherrschaft bereinigen: gesetzte Anbieter, ausgeschlossene Anbieter,
  Mindestzahl Offerten. Rückmeldung als Datum und Kanal in der Projekt-Stammdatei festhalten
  («Submittentenliste LOS <nr> freigegeben <Datum>, per Mail/Sitzung»). Ohne diesen Vermerk
  kein Versand. Die freigegebene Liste ist zugleich der Spaltenkopf der Vergleichsmatrix
  (Phase 3): jeder Eingeladene erscheint dort, auch mit «kein Eingang».
```

## 03 Was der JANS-Skill besser oder anders löst als das Referenzmodell

Besser oder für ein Einpersonenbüro angemessener:
- Kritische Befunde vor dem Preisvergleich und die «bereinigte Schätzung auf gleichen Stand» (Vergabeempfehlung Sektionen 3 und 5, Vergleichsmatrix): BBase vergleicht Einheitspreise; JANS macht Plan-Revisions-Inkonsistenzen, Rechenfehler und Lieferumfangs-Verschiebungen zum ersten Prüfschritt. Das ist bei funktionalen Ausschreibungen (Gastroküche, Metallbau) der eigentliche Hebel.
- Risiko-Matrix und Reduktionsmatrix (`offertenpruefung`): ein belegter Verhandlungsspielraum je Branche und eine Ampel je Risiko fehlen im Referenzmodell ganz.
- Deterministische Dossier-Engine (`dossier_build.py`) mit Doppelablage, identischem Antwortformular je Anbieter und lock-sicherer PDF-Konvertierung: das ist die schlanke Entsprechung von Büro-, Projekt- und Ausschreibungsvorlage, ohne Excel-Arbeitsmappen.
- Neutralitätsregel 260626 (keine Vergabeart, keine Offenlegung der Eingeladenen, generische Formulierung): BBase sieht Absagebriefe «wahlweise mit Firma und Betrag der Vergabe» vor; die JANS-Regel ist bei privaten Bauherrschaften die sauberere Praxis.
- Projekt-Stammdatei mit verifizierten Identifikatoren, Norm-Fundstellenpflicht (ABB-Reihe je Gewerk, Status des Destillats) und BKP-2017-Bindung: das Referenzmodell setzt Datenidentität als Softwarefunktion voraus; JANS erzwingt sie als Regel.
- Übergabe-Modus für externe Bauleitung mit Leistungsschnitt SIA 102 und Konsistenz-Gate: dafür kennt BBase kein Gegenstück.
- Ausländische Unternehmer (MWST/Zoll, Entsendung, EUR-Normierung) und Herstellerneutralität mit «Gleichwertig»-Klausel: im Scan nicht belegt.

Vom Referenzmodell bewusst nicht zu übernehmen:
- Die volle NPK/IfA18-Positionsmechanik (siebenstellige Laufnummer mit Prüfsumme, Gliederungen PSL/KAG/EGL/OGL, CRB-Prüfprogramm, R-Positionen): JANS schreibt überwiegend Eigentext und funktional; die Mengenart-Codes (Lücke 3) sind der einzige Teil, der den Nutzen trägt.
- Getrennte Bürovorlagen für private und öffentliche Bauherrschaften: bei JANS reicht die Projekt-Stammdatei plus die Selbstdeklaration (Lücke 5) für den öffentlichen Fall.
- Beurteilung der Bauleitung durch den Unternehmer und ein Formularapparat für Lieferscheine: für ein Einpersonenbüro ohne Ertrag.

## 04 Offene Fragen an Raphael

1. Soll der Vergabeantrag ein Unterschriftenfeld der Bauherrschaft tragen (Freigabe als Dokument im Ordner `05 Vergabe`), oder bleibt die Freigabe per Mail der Standard? Davon hängt ab, ob Lücke 1 im Template oder nur im Prozess (Mail-Beleg ablegen) umgesetzt wird.
2. Woher kommt die KV-Referenz je Los: gibt es je Projekt einen ratifizierten Kostenvoranschlag nach BKP (Phase D, Skill `kostenschaetzung`), oder ist im JANS-Alltag die Richtofferte aus Phase 02 die Budgetgrösse? Ohne diese Festlegung bleibt die Spalte «vergleichbare KV-Summe» leer.
3. Regie: soll der Regieteil, wie in den Goldstandards, im selben LV bleiben (dann nur getrennt ausweisen und aus der Vergleichssumme nehmen, Lücke 7), oder soll ein eigenes Regie-LV entstehen, wie BBase es für die Unterscheidung Akkord/Regie verlangt?
