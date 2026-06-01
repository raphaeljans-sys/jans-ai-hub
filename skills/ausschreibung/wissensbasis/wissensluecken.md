# Wissenslücken-Registry (lebendes Dokument)

Zentrale Liste offener Wissens-/Vorlagenlücken des Bauleitungs-Harness.
Pflege nach dem [Selbsttrainings-Mecano](08_selbsttraining-mecano.md).
Status: `offen` · `in Klärung` · `geschlossen`.

## Offene Lücken (aus Archiv-Durchforstung Juni 2026)

| # | Kategorie | Lücke | Schliessungsweg | Status |
|---|---|---|---|---|
| L01 | Vorlage | **Werkvertrag-Vorlage (SIA 118)** als parametrisierte `.md` — bisher nur PDF-Beispiele (Seba Metallbau) | Beispiel-PDFs auswerten + Benutzer-Standard erfragen | offen |
| L02 | Vorlage | **Abnahmeprotokoll-Vorlage** | Struktur aus W695 + Benutzer-Muster | offen |
| L03 | Vorlage | **Garantieschein-Vorlage** | SIA 118 + Benutzer-Muster | offen |
| L04 | Vorlage | **Nachtrag-/Regie-Formular** | BBase-Logik (H/D/S) + Benutzer | offen |
| L05 | Vorlage | **Mängelprotokoll** | aus Protokoll-Skill ableiten | offen |
| L06 | Vorlage | **Begleitbrief/Anschreiben Submission** (Standard) | aus EmailVorlage OffertEingabe + Allgemeintexte | offen |
| L07 | LV | Zentrale **modulare LV-Bibliothek** statt projekt-ad-hoc — Master-LV je Gewerk (R4) | Goldstandards parametrisieren | offen |
| L08 | Wissen | **Standard-Ausschreibungstexte je Gewerk** (zentrale Textbausteine) | aus Knowhow-Docs + Allgemeintexte destillieren | offen |
| L09 | Daten | **Richtpreise/Kostenbandbreiten je BKP** | Skill `kostenschaetzung` + Richtofferten-Auswertung | offen |
| L10 | Wissen | **Submittenten-Qualifizierungskriterien** (Referenzen, Zertifikate) | Benutzer-Praxis erfragen | offen |
| L11 | Compliance | **Öffentliche Beschaffung** (IVöB/BöB, SIMAP-Fristen) — Beispiel 200_Schulhaus | Skill `baurecht` + offizielle Quelle | offen |
| L12 | LV | Goldstandards für weitere Gewerke: 211 Baumeister, 214 Holzbau, 221 Fenster, 224 Bedachung, 230 Elektro, 240 Heizung, 250 Sanitär, 273 Schreiner, 275 Schliessanlagen, 421 Umgebung | aus Projekten 71/72 konvertieren wenn .crbx vorhanden | offen |

## Geschlossene Lücken

| # | Lücke | Ergebnis | Datum |
|---|---|---|---|
| — | SIA-451/.crbx maschinell lesbar machen | `tools/crbx_parser.py` | Juni 2026 |
| — | Goldstandard-LVs Gipser/Maler/Sonnenschutz/Türen/Unterlagsboden/Plattenbeläge | `referenzen/goldstandard-lv/` | Juni 2026 |
| — | Fachbegriffe-Glossar | `06_glossar.md` | Juni 2026 |
| — | Werkvertrag/Unternehmerkontrolle-Methodik | `07_werkvertrag-unternehmerkontrolle.md` | Juni 2026 |

## Vorhandene .crbx im Archiv (Konvertierungs-Backlog für L07/L12)

Gefüllte Projekt-LVs (per `crbx_parser.py` konvertierbar):
- 66_ZOLL: 271 Gipser, 272 Metallbau, 281 Parkett, 285 Maler
- 67_BISCH: 221.6 Garagentor, 228 Sonnenschutz, 272 Metallbau, 285 Maler
- 68_FALL: 271 Gipser, 281 Bodenbeläge Holz, 282 Plattenarbeiten, 285 Maler
- 71_Gsteig / 72_Ryhner: 271 Gipser, 285 Maler, 226.2 WDVS
