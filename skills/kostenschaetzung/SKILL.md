---
description: Kostenschaetzungs-Agent fuer Healthcare-Architektur. Nutzt Referenzdaten von Wuest Partner und buerointerne Auswertungen fuer Grobkostenschaetzungen in fruehen Projektphasen. Diesen Skill verwenden wenn der Benutzer Fragen stellt zu Baukosten, Kostenkennwerten, BKP-Struktur, Erstellungskosten, Grobkostenschaetzung, Richtkosten, Benchmarks, Sanierungskosten, Umbaukosten, Neubaukosten, CHF pro m2, oder Kostenvergleiche fuer Healthcare-Projekte (Spital, Klinik, Altersheim, Rehazentrum, Praxis). Auch ausloesen bei: "Was kostet ein Umbau?", "Richtkosten Spital?", "BKP 1-5 Kennwerte?", "Reduktionsfaktor Sanierung?", "Kostenbandbreite Healthcare?".
---

# JANS Kostenschaetzungs-Agent — Healthcare

## Contract

- **Trigger:** Greift, sobald in frühen Projektphasen eine Grobkostenschätzung, Richtkosten, Kostenkennwerte oder ein Benchmark (CHF/m2, BKP 1-5) für ein Healthcare-Bauprojekt verlangt wird — Neubau wie Umbau/Sanierung. Planungsseitiges Gegenstück zu `kostenkontrolle` (dort Kostenkontrolle in der Ausführung).
- **Inputs:** Nutzungstyp (Spital, Altersheim, Reha, Praxis), Neubau/Umbau + Eingriffstiefe, Fläche (m2 NF nach SIA 416), Besonderheiten/Kostentreiber. Referenzen: `referenzen/` (Wüest Partner Kostenkennwerte), `bauteilkennwerte/`, BKP-2017-Liste, KB `wissen/bauprodukte` (Produkt-/Systemwissen nach BKP — Aufbau, Kennwerte, Einsatzgrenzen als Plausibilisierung des Kostentreibers).
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

#### JANS-Umbau-Kostenband «Spektrumskosten» (feinere Auflösung, sobald ein Stationstyp benannt ist)

JANS führt zusätzlich ein eigenes, nach **Stationstyp** gestuftes Healthcare-Umbau-Kostenband
in **CHF/m² NF** (sechs Stufen von «leichter Umbau Büro → Praxis/Therapie» bis «neue
Spezialstation mit hohem Anteil Operationssäle»). Geführt wird es in
`wissen/immobilienbewertung/wiki/realwert-sachwert.md`, Abschnitt «Healthcare-Umbau-Kostenband
(JANS Spektrumskosten, CHF/m2 NF)» — **dort im Original nachschlagen**, die Werte nicht hierhin
kopieren.

- **Kein Widerspruch zu den Reduktionsfaktoren oben, sondern deren feinere Auflösung.** Die beiden
  Wege sind deckungsgleich kalibriert: Büro → Praxis ≈ «gering», somatische Normalpflegestation
  ≈ «mittel», Intensiv-/Spezialstation ≈ «gross/Umnutzung».
- **Vorzuziehen, sobald der Stationstyp benannt ist** — der Faktorweg kann eine Kinder-/Jugend-
  station Akut nicht von einer somatischen Normalpflegestation unterscheiden, das Band schon.
- **Der Faktorweg bleibt zuständig** für Nutzungen ohne eigene Stationstyp-Zeile.
- ⚠ **Bezugsfläche beachten (Pflichtangabe im Erzeugnis):** das Band ist **CHF/m² NF**, nicht GF.
  Der reale JANS-Einordnungsfall **1'100** ist **CHF/m² HNF** und gilt nur bei weitgehendem
  Bestandserhalt der Struktur (reiner Teilumbau); **realistischer Zielkorridor bei Präzisierung
  1'800–2'500 CHF/m² HNF**. Sobald Nasszellen/Tragwerk/Medizintechnik dazukommen, gilt das volle
  Stationsband. **Umbau-NF und Neubau-GF sind nicht direkt vergleichbar** (andere Bezugsfläche,
  andere Leistungstiefe).
- **Provenienz:** JANS-Kundenmemo `Spektrumskosten.docx` («Memorandum of approximate cost») plus
  zwei reale Einordnungsfälle `Umbaukosten 500K.docx` / `Umbaukosten_CHF_2500K.docx`
  (R. Jans, 2025, `IMMO-06 Kennwerte/Healthcare`) — **JANS-Eigenmaterial, keine Wüest-Daten.** Die
  Wüest-Führung dieses Skills betrifft die Wüest-Benchmarks, nicht dieses Band.

*(Verweis gesetzt im Cross-KB-Lauf Run 27, 06.08.2026 — zuvor kannte dieser Skill das Band nicht
und rechnete Healthcare-Umbauten ausschliesslich als Neubau-Median mal Reduktionsfaktor.)*

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
- **Nach Beleglage differenzieren, nicht pauschal bandbreiten** — Positionen ohne vorliegende
  Richtofferte ausdruecklich als «grob, ohne Einzelofferte» kennzeichnen und hoeher zuschlagen als
  Positionen mit Marktbeleg. Besonders anfaellig sind kleine technische Nebengewerke (Elektro,
  Sanitaer, Gipser) bei Umbauten, wo runde Pauschalbetraege naheliegen. Belegter Eigenfall:
  `wissen/projekt-lessons/wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md` — Hauptgewerk traf auf
  +3,3 % genau, Nebengewerke lagen 76 bis 322 % daneben, die Gesamtsumme zeigte davon nur +8,8 %
  (`status: emerging`, ein Beleg; der dort genannte Zuschlags-Erfahrungswert ist NICHT als Kennwert
  zu verwenden, solange er einzelbelegt ist)
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
