---
title: Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)
status: emerging
last_updated: 2026-07-25
sources: [skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md, wissen/immobilienbewertung/wiki/realwert-sachwert, wissen/immobilienbewertung/wiki/investorenmarkt-makro, raw/2414-thalwil.md, raw/2518-grubenackerstrasse.md, raw/2515-wartstrasse.md]
links: []
---

# Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)

Quelle der Wahrheit für den Skill `grobkosten-onepager` und den Agenten `grobkosten-rechner`.
Bezug: **Gebäudevolumen GV nach SIA 416** (inkl. Untergeschoss), **BKP 1–5** (Gebäude, Umgebung,
Baunebenkosten inkl. Planerhonorare), **exkl. Land (BKP 0) und Reserven/Finanzierung (BKP 6–9)**.
Region Zürich / Zentralschweiz. Preisstand 2026. Immer als Grobschätzung ±25 % verwenden.

> Status der Werte: **Seed, Wüest-kalibriert (07.06.2026)** — an die belegten Wüest-Kostenbenchmarks
> (m²) angekoppelt, aber noch NICHT mit realen JANS-Schlussabrechnungen (m³) verifiziert. Reife
> steigt mit jedem zurückgespeisten Realwert (siehe Compounding unten).
>
> **Ankopplung an die m²-Benchmarks (belegt):** Wüest 2022 / Stand 2023 ergibt für Wohnen MFH
> Neubau rund **CHF 4'800/m² HNF** (BKP 1–5, inkl. Teuerung). Mit GV/HNF ≈ 4.7 (HNF ≈ 0.70 × GF,
> GV ≈ 3.3 × GF) entspricht das **≈ CHF 1'020/m³ GV** — das bestätigt den hier geführten Band
> 850–1'050 (gehoben). Quelle: `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`.
>
> **Querbezug KB immobilienbewertung:** Der Realwert-Artikel `wissen/immobilienbewertung/wiki/realwert-sachwert`
> führt eine **andere** Wüest-Kennwerttabelle (aus «Immobilien entwickeln», S. 37, qualitäts-/
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
>
> ⚠ **needs-decision — Wissens-Chef Run 15 (25.07.2026), adversarial verifiziert (BESTAETIGT):**
> Der letzte Halbsatz hält nicht nach. Die 4.7 ist rechnerisch **3.3 / 0.70 = 4.71**, also
> **regelgeschoss-basiert** — sie ist nicht vom 0.70 unabhängig. Mit den Gesamtgebäude-Faktoren
> ergäbe sich GV/HNF ≈ 5.0 (über die belegten JANS-Flächenfaktoren 0.20/0.33 in
> `immobilienbewertung/wiki/flaechendefinitionen-sia`) bis ≈ 5.5 (3.3 / 0.60) und damit ein Anker
> von ~870–960 statt ~1'020 CHF/m³ GV. Der geführte Anker bleibt **bis zum Entscheid gültig** — er
> liegt am oberen Rand des eigenen Bands 850–1'050 und innerhalb der ±25-%-Grobschätzungsspanne.
> **Zweiter, gekoppelter Punkt:** der E1-Regelgeschoss-Wert **0.70** kollidiert mit dem belegten
> **0.75** (Band 0.73–0.80 je Wohnungstyp, Flächenkonzeption Wohnen R. Jans 20.10.2024) im
> führenden Flächen-Artikel `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Beides ist ein
> **Fachentscheid Raphael** (Korrektur eines früheren Wissens-Chef-Entscheids), nicht autonom
> änderbar — vorgelegt im Bericht `koordination/outputs/2026-07-25_wissens-chef-run15.md`.
>
> **Teuerungs-Check (12.07.2026):** Die Kalibrierung 2022/23 bleibt gültig — der BFS-Baupreisindex
> (Stand April 2026 = 100.6 auf neuer Basis Okt-2025, +1.0 % YoY, moderat) ergibt eine kumulierte
> Bauteuerung seit Kalibrierung von nur ~2–3 %, weit innerhalb der ±25 %-Grobschätzungsspanne.
> Aktueller Marktstand: `wissen/immobilienbewertung/wiki/investorenmarkt-makro`.

## Wohnbau Neubau (CHF/m³ GV, BKP 1–5)

| Nutzung | Standard | Kennwert | Band (low–high) | Reife |
|---|---|---|---|---|
| MFH (Mehrfamilienhaus) | einfach | 800 | 700–900 | Seed |
| MFH | mittel | 900 | 800–1'000 | Seed |
| MFH | gehoben | 950 | 850–1'050 | Seed |
| EFH (Einfamilienhaus) | mittel–gehoben | 1'000 | 850–1'200 | Seed |
| Reihen-/Doppeleinfamilienhaus | mittel | 900 | 800–1'050 | Seed |

## Erste reale Datenpunkte (Run 2, 25.07.2026) — Einzelfälle, noch nicht promotionsfähig

Erster Ingest aus `raw/` (SharePoint `AR - 01 Projekte`, aktive Mandate). Beide Fälle sind zu
dünn belegt für eine Median-Bildung mit dem Seed-Band (Reife bleibt **Seed**, siehe Stufe-3-
Regel in `training/PROGRAMM.md`: bei n=1 den Seed nicht überschreiben) — hier nur transparent
als Einzelfall mit vollem Kaveat geführt, damit sie beim nächsten Fall (n=2) sofort verdichtet
werden können.

| Projekt | Bezug | Kennwert | Kaveat | Reife |
|---|---|---|---|---|
| 2414 Thalwil (EFH-Umbau) | Aufstockung mit Terrasse, Neubauteil, 160 m³ | 1'600 CHF/m³ | Teilvolumen (nicht Gesamt-GV), JANS-Grobschätzung 03/2025, kein Ausführungsbeleg | Einzelfall n=1 |
| 2414 Thalwil (EFH-Umbau) | Velokeller/Terrasse, Neubauteil, 90 m³ | 800 CHF/m³ | Teilvolumen (nicht Gesamt-GV), JANS-Grobschätzung 03/2025, kein Ausführungsbeleg | Einzelfall n=1 |
| 2518 Grubenackerstrasse 7 | Gesamtvolumen 1'668 m³ (TG/ZG/UG/EG/OG) | 950–1'050 CHF/m³ | Volumen NICHT SIA-416-verifiziert (rohe Fläche×Höhe-Rechnung), Nutzung/Standard/Bauherrschaft unbekannt, keine BKP-Gliederung, Preisstand 04/2023 | Einzelfall n=1, unverifiziert |

Vollständige Extraktion inkl. BKP-Detailpositionen: `raw/2414-thalwil.md`,
`raw/2518-grubenackerstrasse.md`. Ebenfalls geprüft, aber ohne verwertbaren CHF/m³-Datenpunkt:
`raw/2515-wartstrasse.md` (Fassaden-Teilprojekt ohne GV-Bezug, CHF 25'200).

## Zuschläge (multiplikativ)

| Treiber | Zuschlag | Hinweis |
|---|---|---|
| Hanglage (Gefälle > 20 %) | + 5–15 % | Aushub, Hangsicherung, Baulogistik |
| Anspruchsvoller Baugrund / Altlasten | + 5–20 % | objektabhängig, separat abklären |
| Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P, Holz) | + 5–15 % | je nach Zielbild |
| Kleines Volumen (< 1'000 m³) | + 5–10 % | Fixkostendegression fehlt |

## Healthcare / Spezialnutzung

Für Spital, Klinik, Alters-/Pflegeheim, Reha, Praxis NICHT diese m³-Werte verwenden —
stattdessen die belegten **m²-NF-Kennwerte (Wüest Partner)** aus dem Skill `kostenschaetzung`
(`referenzen/20260302-Kostenkennwerte-Healthcare-Neubau-Umbauten.pdf`).

## Umbau / Sanierung

Grobe Faustregel über Reduktionsfaktoren des Neubau-m³-Werts (Eingriffstiefe). Für belastbare
Umbau-Schätzungen den Skill `kostenschaetzung` (Reduktionsfaktoren) heranziehen.

## Umrechnung Baumasse → Gebäudevolumen

Die baurechtliche **Baumasse** (BMZ) zählt meist nur oberirdisch; das **GV SIA 416** schliesst das
Untergeschoss ein und ist grösser. Faustregel bei Wohnbau mit 1 UG: GV ≈ Baumasse × 1.25–1.45
(je nach UG-Anteil/Hang). Im Zweifel GV direkt aus der Kubatur des Vorprojekts nehmen.

## Compounding — wie diese Werte besser werden

1. Realwert fällt an (Schlussabrechnung via `kostenkontrolle`, geprüfte Unternehmer-Offerte,
   Benchmark) → als Rohdatei in `wissen/grobkosten/raw/` ablegen (Projekt, Nutzung, Standard,
   GV, Kosten BKP, Quelle, Datum).
2. KI-Bibliothekar (Rule `wissens-bibliothekar`) verdichtet die Rohwerte je
   Nutzung/Standard/Region zu Median + Band, aktualisiert die Tabelle, hebt die **Reife** von
   "Seed" auf "belegt (n=…)" und protokolliert im `CHANGELOG.md`.
3. Veraltete Werte (Preisstand) werden beim `wissenscheck` markiert und nachgeführt.

## Querbezug KB energie (Haustechnik-Detailkosten)

Wärmeerzeuger-, PV- und Fernwärme-**Komponentenkosten** (CHF/kWp, Anschlusskosten, Rp/kWh) werden
in der KB `wissen/energie` geführt (`destillate/pv-marktzahlen-kosten-ch-2025`,
`destillate/fernwaerme-anschlusskosten-zh`, `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch`).
Diese stecken als BKP-2-Unterpositionen (BKP 23/24/25) **bereits in den hier geführten CHF/m3-GV-Kennwerten
(BKP 1-5)** — nicht additiv daraufrechnen (Doppelzählungs-Gefahr). Führend für die m3-GV-Erstellungs-
kennwerte bleibt diese KB; energie liefert nur die Detail-/Betriebskosten (Wissens-Chef Run 4, 14.07.2026).

## Quellen / Provenienz

- Seed 07.06.2026: Marktannahme MFH/EFH Neubau Region ZH (Erfahrungswerte JANS), kalibriert an der
  Studie 2621 Giebelweg 12. Noch ohne Realabrechnung.
- Ziel: schrittweise Ablösung durch reale JANS-Daten (raw/) und publizierte Benchmarks.
- Run 2 (25.07.2026): erster raw/-Ingest aus SharePoint `AR - 01 Projekte` (aktive Mandate,
  Zweitquelle nach Nullbefund im NAS-Altarchiv `04_Buero/02_Projekte`, siehe
  `training/quellen-inventar.md`). Zwei dünne Einzelfälle (2414 Thalwil, 2518 Grubenacker-
  strasse) oben unter "Erste reale Datenpunkte" dokumentiert — Seed-Werte bewusst NICHT
  überschrieben (Provenienz zu schwach für n=1-Promotion).
