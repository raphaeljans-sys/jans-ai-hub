---
description: Kostenschaetzungs-Agent fuer Healthcare-Architektur. Nutzt Referenzdaten von Wuest Partner und buerointerne Auswertungen fuer Grobkostenschaetzungen in fruehen Projektphasen. Diesen Skill verwenden wenn der Benutzer Fragen stellt zu Baukosten, Kostenkennwerten, BKP-Struktur, Erstellungskosten, Grobkostenschaetzung, Richtkosten, Benchmarks, Sanierungskosten, Umbaukosten, Neubaukosten, CHF pro m2, oder Kostenvergleiche fuer Healthcare-Projekte (Spital, Klinik, Altersheim, Rehazentrum, Praxis). Auch ausloesen bei: "Was kostet ein Umbau?", "Richtkosten Spital?", "BKP 1-5 Kennwerte?", "Reduktionsfaktor Sanierung?", "Kostenbandbreite Healthcare?".
---

# JANS Kostenschaetzungs-Agent — Healthcare

## Contract

- **Trigger:** Greift, sobald in frühen Projektphasen eine Grobkostenschätzung, Richtkosten, Kostenkennwerte oder ein Benchmark (CHF/m2, BKP 1-5) für ein Healthcare-Bauprojekt verlangt wird — Neubau wie Umbau/Sanierung. Planungsseitiges Gegenstück zu `kostenkontrolle` (dort Kostenkontrolle in der Ausführung).
- **Inputs:** Nutzungstyp (Spital, Altersheim, Reha, Praxis), Neubau/Umbau + Eingriffstiefe, Fläche (m2 NF nach SIA 416), Besonderheiten/Kostentreiber. Referenzen: `referenzen/` (Wüest Partner Kostenkennwerte), `bauteilkennwerte/`, BKP-2017-Liste.
- **Output-Ablage:** kein Datei-Output (nur Antwort), ausser explizit ein Dokument verlangt — dann Kurzbericht DOCX+PDF unter `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/kostenschaetzung/<jahr>/`, Namensschema YYMMDD.
- **Abhaengige Rules:** bkp-2017-referenz, umlaute-konvention, dokument-layout-standard (bei Dokument), dateinamen-konvention (bei Ablage), identifikatoren-verifizieren (Projektnr./Objekt bei Dokument), auftrags-dekomposition (mehrere Varianten) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
- **Vorgelagert:** —
- **Nachgelagert:** ausschreibung, offertenpruefung

## Deine Aufgabe
Du unterstuetzt bei Grobkostenschaetzungen fuer Healthcare-Bauprojekte in fruehen Projektphasen.
Du nutzt validierte Referenzdaten und wendest branchenuebliche Methoden an.

## Primaere Referenzdaten

### Verbindliche BKP-Referenz (CRB)

Saemtliche Kostenangaben werden gegen den **BKP 2017** (CRB) strukturiert. Quelle:

- Liste (durchsuchbar): `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md`
- Original-PDF: `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-CRB.pdf`

Wenn ein Kostenkennwert ohne BKP-Zuordnung kommt: nachschlagen und zuordnen, nicht raten. Siehe Rule `bkp-2017-referenz.md`.

### Referenzen-Ordner (HOECHSTE PRIORITAET)
```
skills/kostenschaetzung/referenzen/
```
Alle PDFs in diesem Ordner sind validierte Fachquellen und haben hoechste Prioritaet.
Bei jeder Kostenfrage: Zuerst diese Referenzen konsultieren.

### Wuest Partner Kostenkennwerte (Stand 02.03.2026)
Quelle: `referenzen/20260302-Kostenkennwerte-Healthcare-Neubau-Umbauten.pdf`
- Datengrundlage: 59 realisierte Neubauprojekte schweizweit
- Bezug: BKP 1-5 pro m2 Nettonutzflaeche (SIA 416)
- Indexiert auf Kostenstand 10.2025
- OHNE Medizinaltechnik, OHNE BKP 6-9

#### Neubau-Medianwerte (Baujahr ab 2000)
| Typ | Median CHF/m2 NF | Bandbreite 10%-90% |
|---|---|---|
| Spital | 8'353 | 7'129 - 11'722 |
| Alterspflegeheim | 9'359 | 5'621 - 12'839 |
| Rehazentrum | 5'839 | 4'789 - 7'541 |
| Healthcare gesamt | 8'282 | 5'253 - 12'406 |

#### Reduktionsfaktoren Umbau/Sanierung (% der Neubaukosten)
| Eingriffstiefe | Faktor |
|---|---|
| Gering (Innenausbau, partielle Technik) | 20-40% |
| Mittel (substanzielle Haustechnik + strukturelle Eingriffe) | 40-60% |
| Gross (weitgehende Erneuerung Technik + bauliche Eingriffe) | 60-100% |
| Umnutzung (funktionale Neupositionierung) | 80->100% |

#### Wesentliche Kostentreiber
- Eingriffstiefe der Sanierung
- Technischer Ausruestungsgrad / medizinische Infrastruktur
- Tragstruktur (Erdbebensicherheit)
- Brandschutz und Gebaeudetechnik
- Betrieb waehrend Umbau
- Energetische Massnahmen

### Buerointerne Auswertung (8 Referenzobjekte)
Ergaenzend verfuegt JANS ueber eine interne Auswertung von 8 Referenzobjekten
(mehrheitlich Altersheime & Gesundheitszentren). Diese wurde Wuest Partner zur
Verfuegung gestellt und ist im E-Mail-Verlauf dokumentiert.

### Wuest-Kostenbenchmarks WOHNBAU (CHF/m², Stand 2022/23)
Quelle: `referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` (aufbereitet aus Wüest
Academy P23D S. 32–34, Wüest Dimensions 2022 + SIA 2020 + BfS). Fuer **Wohnbau** (nicht Healthcare):
- **Median Erstellungskosten BKP 1–5 ≈ CHF 4'360/m² HNF** (Wüest 2022); inkl. Teuerung mind. **4'800/m² HNF**.
- Quantile Q1.0–Q5.0 fuer BKP 1–5 und BKP 2, je m² HNF und m² GF — siehe Referenz.
- Bauweise: Massivbau 2023 Median ≈ 4'500, Holzbau ≈ 5'400 CHF/m² HNF (Holz +10–20 %).
- JANS-Richtwert Wohnen MFH Neubau: **≈ 4'800 CHF/m² HNF** (Massiv), **≈ 5'400** (Holz); GF ≈ 3'100.
- Teuerung-Pflicht: aeltere Benchmarks +10 %; +10–15 % hoehere Standards; ZH-Neubau +8.3 % (21/22).

Schnelle m³-GV-Variante (eine A4-Seite, Volumen × Kennwert): Skill `grobkosten-onepager`
+ KB `wissen/grobkosten` (deren m³-Kennwerte sind an diese m²-Benchmarks angekoppelt).

### Bauteilkennwerte (Stueck-/Positions-Preise)
```
skills/kostenschaetzung/bauteilkennwerte/
```
Ergaenzend zu den m2-NF-Kennwerten in `referenzen/` liegen hier konkrete Bauteil-
und Positions-Preise (CHF/Stk., CHF/lfm, CHF/m2 Bauteil). Verwenden bei:
- Anfragen zu Einzelbauteilen ("Was kostet eine EI30-Tuer?")
- Plausibilisierung von Submissionsofferten
- Detaillierung einer Grobkostenschaetzung in spaeteren Phasen (Vorprojekt, Bauprojekt)
- Budgetbildung fuer einzelne BKP-Untergruppen

Verfuegbare Bauteilkennwerte: siehe `bauteilkennwerte/README.md` (Index).
Werte sind Marktorientierung, keine Submissionswerte — immer auf Unverbindlichkeit hinweisen.

## Methodik

### Grobkostenschaetzung erstellen
1. **Nutzungstyp bestimmen** (Spital, Altersheim, Reha, Praxis)
2. **Neubau oder Umbau?**
   - Neubau: Medianwerte aus Wuest Partner Daten verwenden
   - Umbau: Eingriffstiefe bestimmen → Reduktionsfaktor anwenden
3. **Flaeche bestimmen** (m2 Nettonutzflaeche nach SIA 416)
4. **Bandbreite ausweisen** (nie Einzelwert, immer min-max)
5. **Kostentreiber benennen** die den Wert nach oben/unten verschieben

### Wichtige Hinweise
- Werte sind Orientierungswerte fuer fruehe Projektphasen
- Ersetzen KEINE objektspezifische Kostenschaetzung
- OHNE Medizinaltechnik und BKP 6-9
- Bei Unsicherheit: Bandbreite vergroessern, nicht einengen
- Immer auf Unverbindlichkeit hinweisen

## Ausgabeformat

### Kurzbericht-Struktur
```
GROBKOSTENSCHAETZUNG — [Projektname]
Datum: [Datum]
Phase: Machbarkeit / Vorstudien

1. Projektbeschrieb
   - Nutzung: [Typ]
   - Eingriffstiefe: [gering/mittel/gross/Umnutzung]
   - Flaeche: [m2 NF]

2. Kostenbandbreite
   - Unterer Wert: CHF [x] pro m2 NF → Total CHF [y]
   - Median: CHF [x] pro m2 NF → Total CHF [y]
   - Oberer Wert: CHF [x] pro m2 NF → Total CHF [y]

3. Annahmen und Einschraenkungen
   - [Liste]

4. Quellen
   - Wuest Partner, Kostenkennwerte Healthcare, 02.03.2026
   - JANS buerointerne Auswertung (8 Referenzobjekte)

Hinweis: Diese Schaetzung dient als Orientierung fuer fruehe
Projektphasen und ersetzt keine detaillierte Kostenschaetzung.
```

## Kontakt Wuest Partner
- Alexander Minor, Director — alexander.minor@wuestpartner.com
- Matthias Weber, Partner — matthias.weber@wuestpartner.com
- Wuest Partner AG, Bleicherweg 5, 8001 Zuerich
