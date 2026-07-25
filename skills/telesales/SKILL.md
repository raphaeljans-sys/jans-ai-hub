---
name: telesales
description: Telesales-Agent fuer JANS Kaltakquise-Kampagnen. Erstellt Gespraechsleitfaeden, Lead-Qualifizierungsblaetter, E-Mail-Vorlagen und Sales-Strategien fuer Architektur-Dienstleistungen.
---

# JANS Telesales Skill

## Contract

- **Trigger:** Greift bei aktiver Kaltakquise — wenn Gespraechsleitfaeden, Lead-Qualifizierungsblaetter, E-Mail-Vorlagen oder Sales-Strategien fuer eine Telesales-Kampagne erstellt werden sollen. Kaltakquise-Gegenstueck zum Sog-Ansatz des Skills `marketing`.
- **Inputs:** Ziel-Case/Zielgruppe (z.B. Healthcare, Asset Management), Kampagnenziel, ggf. Lead-Liste und USP/Referenzen.
- **Output-Ablage:** Gespraechsleitfaeden und Mail-Vorlagen; bei Dateiablage `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/telesales/` mit Namensschema `YYMMDD-Case-Titel.md`.
- **Abhaengige Rules:** umlaute-konvention, mail-formatierung (Mail-Vorlagen), dokument-layout-standard (Leitfaeden), antwort-formatierung, auftrags-dekomposition; Korrektur-Pflicht (Skill `korrektur` vor Ausgabe jedes Mail-/Leitfaden-Erzeugnisses).
- **Vorgelagert:** —
- **Nachgelagert:** —

## Zweck
Unterstuetzung bei der Planung und Durchfuehrung von Telesales-Kampagnen fuer Raphael Jans Architekten ETH.
Der Skill generiert massgeschneiderte Verkaufsunterlagen basierend auf definierten Cases.

## Aktive Cases

### Case 1: Healthcare Architektur
**Zielgruppe**: Spitaeler, Kliniken, Rehabilitationseinrichtungen, Pflegezentren, Psychiatrische Institutionen
**USP / Kernargumente**:
- Testimonial Kinderspital Zuerich (KISPI) — laufendes Umbauprojekt Bettenstation / Psychosomatische Station
- Zusammenarbeit mit Grossfirmen-Fachplanern (Gruner AG Brandschutz, BIQS Baumanagement)
- Kostenprognose mit Wuest Partner Kostenkennwerten (CHF 5'000/m2 GF, CHF 1'100/m3 GV)
- Brandschutzthematik: Spezialisierung auf Brandschutzkonzepte in Gesundheitsbauten
- Betriebskonzepte: Erfahrung in Betriebsplanung fuer Pflegestationen, Therapieraeume, Nasszellen
- Referenzprojekte: KISPI Zuerich, Clienia Oetwil am See, Dolderstrasse 29 Psychiatrische Klinik, Pflegeheim Herose Aarau, Kinder- und Jugendpsychiatrie Chur

**Projekt-Referenz**: 2619_KINDERSPITAL (SharePoint / OneDrive)

### Case 2: Asset Management & Portfolio Management
**Zielgruppe**: Immobilienfonds, Pensionskassen, Versicherungen, Asset Manager, Family Offices, Baugenossenschaften
**USP / Kernargumente**:
- Machbarkeitsstudien fuer Entwicklungsprojekte
- Gebaeudeaufnahmen mittels Matterport (3D-Digitalisierung)
- Grundstuecksentwicklungen und staedtebauliche Konzepte
- Kaufpreisempfehlungen basierend auf Entwicklungspotenzial
- Gebaeudeenergetische Generalsanierungen (GEAK, Energienachweis)
- Baurechtsanalysen (Ausnuetzung, Zonenkonformitaet, Grenzabstaende)

**Projekt-Referenz**: 2201 Laternengasse (SharePoint / OneDrive)

## Dokument-Typen pro Case

Jeder Case besteht aus zwei Dokumenten:

### 1. Lead-Qualifizierungsblatt (analog "LEAD Gastro Sales 2025.pdf")
- Zielsetzung und KPIs der Kampagne
- Erfassungsformular fuer qualifizierte Leads
- Felder: Firma, Ansprechpartner, Position, Kontaktdaten
- Case-spezifische Qualifizierungsfragen
- Interesse an konkreten Dienstleistungen

### 2. Sales-Leitfaden am Telefon (analog "Sales am Telefon Gastro 2025.pdf")
- Gespraechsstruktur (Einstieg, Vorstellung, Pitch)
- Einwandbehandlung (haeufigste Einwaende + Antworten)
- Weitere Argumente fuer Zusammenarbeit
- E-Mail-Textvorlagen (nach Gespraech, nach Terminvereinbarung)
- Hinweise zu Arbeitsweise und Vergueung

## Firmenangaben fuer Dokumente

```
Raphael Jans I Architekten ETH I SIA
Grubenstrasse 37 I 8045 Zürich
Raphael Jans, Founder I MD · MSc ETH I SIA
rj@raphaeljans.ch · +41 79 846 11 65 · www.raphaeljans.ch
```

## Output-Ablage

Generierte Dokumente werden abgelegt unter:
```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/
  AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/telesales/
```
