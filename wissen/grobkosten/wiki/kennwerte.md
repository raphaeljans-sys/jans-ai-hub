# Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)

Quelle der Wahrheit fuer den Skill `grobkosten-onepager` und den Agenten `grobkosten-rechner`.
Bezug: **Gebaeudevolumen GV nach SIA 416** (inkl. Untergeschoss), **BKP 1–5** (Gebaeude, Umgebung,
Baunebenkosten inkl. Planerhonorare), **exkl. Land (BKP 0) und Reserven/Finanzierung (BKP 6–9)**.
Region Zuerich / Zentralschweiz. Preisstand 2026. Immer als Grobschaetzung ±25 % verwenden.

> Status der Werte: **Seed, Wüest-kalibriert (070626)** — an die belegten Wüest-Kostenbenchmarks
> (m²) angekoppelt, aber noch NICHT mit realen JANS-Schlussabrechnungen (m³) verifiziert. Reife
> steigt mit jedem zurueckgespeisten Realwert (siehe Compounding unten).
>
> **Ankopplung an die m²-Benchmarks (belegt):** Wüest 2022 / Stand 2023 ergibt fuer Wohnen MFH
> Neubau rund **CHF 4'800/m² HNF** (BKP 1–5, inkl. Teuerung). Mit GV/HNF ≈ 4.7 (HNF ≈ 0.70 × GF,
> GV ≈ 3.3 × GF) entspricht das **≈ CHF 1'020/m³ GV** — das bestaetigt den hier gefuehrten Band
> 850–1'050 (gehoben). Quelle: `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`.
>
> **Querbezug KB immobilienbewertung:** Der Realwert-Artikel `wissen/immobilienbewertung/wiki/realwert-sachwert`
> fuehrt eine **andere** Wüest-Kennwerttabelle (aus «Immobilien entwickeln», S. 37, qualitaets-/
> lagegestuft, z.B. Wohnen normale Lage 5'300 / gehoben 7'000 CHF/m² HNF) sowie reale JANS-m³-GV-
> Werte (Ebmatingen ~855 CHF/m³ GV). Das ist **kein Widerspruch**: verschiedene Wüest-Produkte mit
> verschiedener Bezugsbasis (Dimensions-Median vs. Ausbaustandard-Tabelle). Beim Vergleich Basis beachten.
>
> **Entscheid Wissens-Chef (12.07.2026) — Flächeneffizienz-Faktor HNF/GF ist kontextabhängig
> (kanonisch):** Der oben verwendete Wert **HNF ≈ 0.70 × GF** gilt für das **Regelgeschoss**
> (effizientes Wohngeschoss). Für Umrechnungen über das **ganze Gebäude** (Gesamtkosten und GV
> decken auch Sockel, Attika und Untergeschoss mit tieferem HNF-Anteil) gilt der triangulierte
> **Gesamtgebäude-Faktor ≈ 0.60–0.61** aus `wissen/immobilienbewertung/wiki/realwert-sachwert`.
> Für die **m²↔m³-Kostenbrücke** (Gesamtkosten ↔ GV) ist daher der **Gesamtgebäude-Wert 0.60
> massgebend**, nicht 0.70. Die obige ≈ 1'020 CHF/m³-Ankopplung bleibt gültig, weil sie direkt
> auf dem GV/HNF-Verhältnis 4.7 (Gesamtgebäude) beruht; das 0.70 dient nur als Geschoss-Kennwert.

## Wohnbau Neubau (CHF/m³ GV, BKP 1–5)

| Nutzung | Standard | Kennwert | Band (low–high) | Reife |
|---|---|---|---|---|
| MFH (Mehrfamilienhaus) | einfach | 800 | 700–900 | Seed |
| MFH | mittel | 900 | 800–1'000 | Seed |
| MFH | gehoben | 950 | 850–1'050 | Seed |
| EFH (Einfamilienhaus) | mittel–gehoben | 1'000 | 850–1'200 | Seed |
| Reihen-/Doppeleinfamilienhaus | mittel | 900 | 800–1'050 | Seed |

## Zuschlaege (multiplikativ)

| Treiber | Zuschlag | Hinweis |
|---|---|---|
| Hanglage (Gefaelle > 20 %) | + 5–15 % | Aushub, Hangsicherung, Baulogistik |
| Anspruchsvoller Baugrund / Altlasten | + 5–20 % | objektabhaengig, separat abklaeren |
| Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P, Holz) | + 5–15 % | je nach Zielbild |
| Kleines Volumen (< 1'000 m³) | + 5–10 % | Fixkostendegression fehlt |

## Healthcare / Spezialnutzung

Fuer Spital, Klinik, Alters-/Pflegeheim, Reha, Praxis NICHT diese m³-Werte verwenden —
stattdessen die belegten **m²-NF-Kennwerte (Wuest Partner)** aus dem Skill `kostenschaetzung`
(`referenzen/20260302-Kostenkennwerte-Healthcare-Neubau-Umbauten.pdf`).

## Umbau / Sanierung

Grobe Faustregel ueber Reduktionsfaktoren des Neubau-m³-Werts (Eingriffstiefe). Fuer belastbare
Umbau-Schaetzungen den Skill `kostenschaetzung` (Reduktionsfaktoren) heranziehen.

## Umrechnung Baumasse → Gebaeudevolumen

Die baurechtliche **Baumasse** (BMZ) zaehlt meist nur oberirdisch; das **GV SIA 416** schliesst das
Untergeschoss ein und ist groesser. Faustregel bei Wohnbau mit 1 UG: GV ≈ Baumasse × 1.25–1.45
(je nach UG-Anteil/Hang). Im Zweifel GV direkt aus der Kubatur des Vorprojekts nehmen.

## Compounding — wie diese Werte besser werden

1. Realwert faellt an (Schlussabrechnung via `kostenkontrolle`, gepruefte Unternehmer-Offerte,
   Benchmark) → als Rohdatei in `wissen/grobkosten/raw/` ablegen (Projekt, Nutzung, Standard,
   GV, Kosten BKP, Quelle, Datum).
2. KI-Bibliothekar (Rule `wissens-bibliothekar`) verdichtet die Rohwerte je
   Nutzung/Standard/Region zu Median + Band, aktualisiert die Tabelle, hebt die **Reife** von
   "Seed" auf "belegt (n=…)" und protokolliert im `CHANGELOG.md`.
3. Veraltete Werte (Preisstand) werden beim `wissenscheck` markiert und nachgefuehrt.

## Quellen / Provenienz

- Seed 070626: Marktannahme MFH/EFH Neubau Region ZH (Erfahrungswerte JANS), kalibriert an der
  Studie 2621 Giebelweg 12. Noch ohne Realabrechnung.
- Ziel: schrittweise Abloesung durch reale JANS-Daten (raw/) und publizierte Benchmarks.
