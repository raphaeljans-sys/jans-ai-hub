# Wissenslücken-Registry (lebendes Dokument)

Zentrale Liste offener Wissens-/Vorlagenlücken des Bauleitungs-Harness.
Pflege nach dem [Selbsttrainings-Mecano](08_selbsttraining-mecano.md).
Status: `offen` · `in Klärung` · `geschlossen`.

## Offene Lücken (aus Archiv-Durchforstung Juni 2026)

| # | Kategorie | Lücke | Schliessungsweg | Status |
|---|---|---|---|---|
| L01 | Vorlage | **Werkvertrag-Vorlage (SIA 118)** als parametrisierte `.md` | aus `08_Bauleitung/Vertraege/2_Werkvertrag` (Ausmass/Pauschal/Kostendach) destilliert → `skills/werkvertrag/templates/werkvertrag-vorlage.md` | **geschlossen** (s.u.) |
| L02 | Vorlage | **Abnahmeprotokoll-Vorlage** | SIA 118 Art. 157 ff. + Protokoll-Skill → `skills/unternehmerkontrolle/templates/abnahmeprotokoll.md` | **geschlossen** (s.u.) |
| L03 | Vorlage | **Garantieschein-Vorlage** | SIA 118 Art. 181 → `skills/unternehmerkontrolle/templates/garantieschein.md` | **geschlossen** (s.u.) |
| L04 | Vorlage | **Nachtrag-/Regie-Formular** | WV-Klauseln Ziff. 2/6 → `skills/unternehmerkontrolle/templates/{nachtrag-formular,regierapport}.md` | **geschlossen** (s.u.) |
| L05 | Vorlage | **Mängelprotokoll** | Protokoll-/Pendenzen-Skill → `skills/unternehmerkontrolle/templates/maengelprotokoll.md` | **geschlossen** (s.u.) |
| L06 | Vorlage | **Begleitbrief/Anschreiben Submission** (Standard) | aus EmailVorlage OffertEingabe + Allgemeintexte | offen |
| L07 | LV | Zentrale **modulare LV-Bibliothek** statt projekt-ad-hoc — Master-LV je Gewerk (R4) | Goldstandards parametrisieren | offen |
| L08 | Wissen | **Standard-Ausschreibungstexte je Gewerk** (zentrale Textbausteine) | aus Knowhow-Docs + Allgemeintexte destillieren | offen |
| L09 | Daten | **Richtpreise/Kostenbandbreiten je BKP** | Skill `kostenschaetzung` + Richtofferten-Auswertung | offen |
| L10 | Wissen | **Submittenten-Qualifizierungskriterien** (Referenzen, Zertifikate) | Ranking-Matrix im Skill `unternehmerfindung` | **geschlossen** (s.u.) |
| L11 | Compliance | **Öffentliche Beschaffung** (IVöB/BöB, SIMAP-Fristen) — Beispiel 200_Schulhaus | Skill `baurecht` + offizielle Quelle | offen |
| L12 | LV | Goldstandards für weitere Gewerke: 211 Baumeister, 214 Holzbau, 221 Fenster, 224 Bedachung, 230 Elektro, 240 Heizung, 250 Sanitär, 273 Schreiner, 275 Schliessanlagen, 421 Umgebung | aus Projekten 71/72 konvertieren wenn .crbx vorhanden | offen |
| L13 | LV | **Maler innen NPK 675 Volltext** — `72 285 AS Maler.xlsm` öffnet nur als PMS-„Musteransicht" (Lizenz lief auf Meili Partner), Positionstexte/Mengen nicht auslesbar. Bisher nur Obergruppen + Benchmark-Preise (`goldstandard-lv/285-maler-72-AS.md`, R1) | SIA-451-Export (.crbx) aus dem Tool ziehen (Sheet `SIA451_Exp`) oder lizenzierte Ansicht | offen |

## Geschlossene Lücken

| # | Lücke | Ergebnis | Datum |
|---|---|---|---|
| — | SIA-451/.crbx maschinell lesbar machen | `tools/crbx_parser.py` | Juni 2026 |
| — | Goldstandard-LVs Gipser/Maler/Sonnenschutz/Türen/Unterlagsboden/Plattenbeläge | `referenzen/goldstandard-lv/` | Juni 2026 |
| — | Fachbegriffe-Glossar | `06_glossar.md` | Juni 2026 |
| — | Werkvertrag/Unternehmerkontrolle-Methodik | `07_werkvertrag-unternehmerkontrolle.md` | Juni 2026 |
| — | Parser-Header bei alten CRB-Layouts fehlerhaft (Gewerk/Objekt) | Gewerk aus Dateiname ableiten + Code-Tokens verwerfen (`crbx_parser.py`) | Juni 2026 |
| L12a | Goldstandards 66/67/68 konvertiert: +221 Garagentor, +272 Metallbau, +281 Parkett/Holz, +282 Plattenarbeiten | `goldstandard-lv/` (12 LVs, 7/18 Gewerke) | Juni 2026 |
| L10 | Submittenten-Qualifizierungskriterien | Neuer Skill `unternehmerfindung` + Ranking-Matrix (`wissensbasis/ranking-kriterien.md`); Stammdaten-DB aus JANS-Submittentenliste geerntet (`anbieter/stammdaten/`, 35 Gewerke / 378 Firmen) via `tools/submittentenliste_import.py`; Scout-Agent `unternehmer-scout` | Juni 2026 |
| L01–L05 | Back-End-Vorlagen (Werkvertrag, Abnahme-/Mängel-/Garantie-/NT-/Regie) | Quelle `08_Bauleitung/Vertraege` (3 Vergütungsmodelle) + SIA 118 + Protokoll-Skill; 3 neue Skills **`werkvertrag`** (Phase G), **`unternehmerkontrolle`** (Phase H), **`kostenkontrolle`** (Phase I) angelegt; Lebenszyklus-Doku `11_lebenszyklus-reifegrad.md`. MWST auf 8,1 % aktualisiert. Reifegrad R2 (Benutzer-Validierung ausstehend) | Juni 2026 |

## Vorhandene .crbx im Archiv (Konvertierungs-Backlog für L07/L12)

Gefüllte Projekt-LVs (per `crbx_parser.py` konvertierbar):
- 66_ZOLL: 271 Gipser, 272 Metallbau, 281 Parkett, 285 Maler
- 67_BISCH: 221.6 Garagentor, 228 Sonnenschutz, 272 Metallbau, 285 Maler
- 68_FALL: 271 Gipser, 281 Bodenbeläge Holz, 282 Plattenarbeiten, 285 Maler
- 71_Gsteig / 72_Ryhner: 271 Gipser, 285 Maler, 226.2 WDVS

## NPK-Zuordnung Schreinerarbeiten / Küchen-Revision (offen, 2026-06-01)
- LV 2620 BKP 273 (Schreiner: Kellerabteile/Lattenverschläge, Türenkontrolle, Küchenkontrolle) bewusst ohne feine NPK-Kapitel erstellt (nur "Schreinerarbeiten (Innenausbau)/Türen + SIA 118"). Gesichert: NPK 622 Türen. Offen/zu verifizieren: NPK-Kapitel für allg. Schreiner-Innenausbau (Verschläge/Gestelle) und für Küchen-Revision (BKP 258). Bei Vorliegen einer .crbx-Goldstandard-Vorlage Schreiner ergänzen.

## Offene Lücken aus dem Audit gegen das Bauadministrations-Raster (07.09.2026)

Quelle: `14_bauadministration-prinzipien.md` (bbase.ch-Scan), fünf Audits je Skill plus Praxistest
`kostenkontrolle` mit den Daten 2619 KISPI. Die umkehrbaren Vorschläge sind am 07.09.2026 direkt in
die Skills eingearbeitet (Laufbericht `training/2026-09-07_bauleitung-run0.md`); hier stehen nur die
Punkte, die eine Entscheidung Raphaels oder Werkzeugarbeit brauchen. Status `offen`.

| # | Kategorie | Lücke | Schliessungsweg | Status |
|---|---|---|---|---|
| L14 | Entscheid | **Vergabeantrag**: Freigabeblock Sektion 8a in der Vergabeempfehlung (heute so gebaut) oder eigenes einseitiges Formular wie im Referenzmodell? Unterschrift Bauherrschaft oder Freigabe per Mail genügend? | Entscheid Raphael; danach `werkvertrag` Schritt 1a und `kostenkontrolle` Vorlage angleichen | offen |
| L15 | Entscheid | **SIA-118-Ausgabe im JANS-Werkvertrag** (1991 oder 2013 inkl. C1:2026) und Bezug auf das SIA-Formular 1023: Vorlage nennt keine Ausgabe, SKILL.md zitiert beide | Entscheid Raphael; Destillat der gewaehlten Ausgabe in `wissen/normen` (2013 fehlt im Hausbestand) | offen |
| L16 | Entscheid | **Los-Nummer als Vergabeeinheit** im Vertragskopf und als Konto-Kuerzel (`211-01`) in der Baubuchhaltung: heute so gebaut, aendert den Kopf aller kuenftigen Vertraege | Bestaetigung Raphael | offen |
| L17 | Entscheid | **KV-Ratifizierung**: ab welcher Schwelle wird der KV vom Bauherrn schriftlich ratifiziert und eingefroren (Mutationen mit Aenderungsprotokoll)? | Entscheid Raphael | offen |
| L18 | Entscheid | **Regie im LV**: im selben LV als getrennter Teil (heute so geregelt) oder eigenes Regie-LV wie im Referenzmodell? | Entscheid Raphael | offen |
| L19 | Werkzeug | **Mengenart (MA) im DOCX-Generator**: `tools/jans_docx.py build_lv` kennt die Spalte MA (A/B/D/E) und die Herleitungszeile noch nicht; Dokumentstandard und `_TEMPLATE.json` sind vorbereitet | Generator ergaenzen, an einem LV testen | offen |
| L20 | Werkzeug | **Selbstdeklaration im Antwortformular**: `jans_docx.py build_antwortformular` ohne die Felder Haftpflicht, GAV, Sozialversicherungen, Subunternehmer | Generator ergaenzen | offen |
| L21 | Entscheid | **Honorar, MwSt-Status**: Skill sagt «nicht MWST-pflichtig», K-Berechnung rechnet 8.1 %, Offerte HOP2 «exkl. MwSt», bexio AN-00037 «von Steuer befreit» | Entscheid Raphael (Stand heute und ab AG-Gruendung) | offen |
| L22 | Entscheid | **Aufwandbestimmende Baukosten B**: Definition BKP 1 bis 4 nach Rabatt exkl. MwSt (Referenz) gegen JANS-Praxis «BKP 1/2/4/5/9 inkl. MwSt mal 70 %»; Fachplaner-Reduktion gewerkweise oder pauschal; Nachlass sichtbar ueber r | Entscheid Raphael | offen |
| L23 | Daten | **Tarifblatt Stundenansaetze**: Herleitung aus der Betriebskostenrechnung fehlt (135 in der Berechnung, 155/160 Mitteltarif in Offerten); Zahlungsfrist 14 gegen 20 Tage | Raphael liefert Herleitung; `honorarberechnung-sia102/referenzen/260907-Stundenansaetze-JANS.md` nachfuehren | offen |
| L24 | Vorlage | **Honorarofferte als Vertragsurkunde**: `honorarberechnung-sia102/referenzen/` ist leer; anonymisierte Kopie von 2619-HOP2 als Goldstandard ablegen | Kopie anonymisieren, ablegen | offen |
| L25 | Wissen | **Ausschreibung**: Quelle der KV-Referenz je Los (ratifizierter KV Phase D oder Richtofferte Phase 02) fuer den Vergabeantrag | Entscheid Raphael | offen |
| L26 | Daten | **Kostenschaetzung**: Kurzbericht ohne Genauigkeit, Preisstand, MwSt-Behandlung; ob die Wuest-Baender inkl. oder exkl. MwSt sind, steht nicht im Skill | `kostenschaetzung/SKILL.md` ergaenzen, Wuest-Quelle pruefen | offen |
