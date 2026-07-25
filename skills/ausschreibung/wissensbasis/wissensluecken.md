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
