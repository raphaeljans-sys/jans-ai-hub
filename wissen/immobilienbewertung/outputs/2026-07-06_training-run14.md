# Training-Run 14 — 2026-07-06

**KB:** immobilienbewertung · **Modus:** T19-Schliessung (Healthcare-Kennwert-Raster) +
Aktualisierung · **Dauer-Kontext:** Wuest-Kurs + alle lesbaren E-Quellen bereits ✓; dies war die
**letzte offene T-Aufgabe**.

## Ausgangslage

Der Wuest-Fachkurs (W0-W10) und die E-Quellen E1-E9 sind eingearbeitet; einzige offene
Training-Aufgabe war **T19 — das leere JANS-Blatt «Kennwerte von Alters- und Pflegeheime»
(R. Jans 27.04.2024) befuellen**. Das Blatt definiert vier Wirtschaftlichkeitsfaktoren (Anzahl
Bettzahl, Bauvolumen/HNF, HNF/Bett, GF/Bett) in Tief/Mittel/Hoch, vier Referenzobjekte (Emilienheim
Bestand/Erweiterung, Wald Tertianum Bestand/Szenarios) und drei Fragestellungen — war aber ohne
Werte.

## Die 10 Themen dieses Laufs

1. **T19-Raster-Struktur** exakt erfasst (2411-PDF): 4 Faktoren, 4 Referenzobjekte, 3 Fragestellungen.
2. **JANS-8-Objekt-Referenzvergleich** ingestiert (`Kennwerte Altersheime Gesundheitszentren.pdf`) —
   JANS' eigenes, bereits gefuelltes Vergleichsblatt mit 8 realen CH-Heimen (2011-2025).
3. **Anzahl Bettzahl / optimale Betriebsgroesse** (Crivelli 2001, SECO): Optimum 70-80 Betten.
4. **GF/Bett-Benchmark**: 90-135 m2 GF/Bett, sinkt mit Heimgroesse (Skaleneffekt).
5. **NF/Bett-Benchmark**: 51-71 m2 NF/Bett.
6. **Bauvolumen/HNF + Healthcare-HNF/GF-Faktor** (~0.55): flaechendefinitionen-sia.
7. **WALD-Tertianum Baumassen-Varianten** (Richtprojekt V1-V7, Gruenegg) = «Bestand/Szenarios».
8. **Healthcare-BKP-2-Kostenband** von 1 auf 8 Objekte erweitert (2'623-4'250 CHF/m2 GF).
9. **Kosten/Pflegezimmer** (BKP 2): 273'000-780'000 CHF/PZ (8 Objekte statt frueher 4).
10. **Marktpuls E7** (Web): SNB 0.00 % / Referenzzins 1.25 % unveraendert (naechste Publ. 09.2026).

## Was gelernt (belegte Kern-Ergebnisse)

**Wirtschaftlichkeitsfaktoren (8 reale Objekte: Averecura/Dankensberg/Vella/Trotte/Herosé/Lanzeln/
Mathysweg/St.Anna):**

| Faktor | Tief | Mittel | Hoch |
|---|---|---|---|
| Anzahl Bettzahl (PZ) | ~28-35 | ~55-70 | ~90-123 |
| GF/Bett (m2 GF) | 90 (gross) | 110-118 | 135 (klein) |
| NF/Bett (m2 NF) | 51-53 | 58-67 | 71 |
| Bauvolumen/HNF (m3 GV/m2 HNF) | 4.3 | 5.4-6.6 | 7.1+ |

- **Skaleneffekt flaechenseitig:** grosse Heime (116-123 PZ) brauchen nur ~90 m2 GF/Bett, kleine
  (28 PZ) ~111 — der Gebaeudeaufwand je Pflegeplatz sinkt mit der Groesse.
- **Optimale Betriebsgroesse (Crivelli/Filippini/Lunati 2001, SECO, 835 Heime):** 70-80 Betten
  (SE = 1 bei 79); ab ~50 Betten Kostenersparnisse nicht mehr betraechtlich; ~50 % der CH-Heime
  suboptimal (zu klein). Normale Groesse: Median 52 / Ø 62 / IQR 33-79 Betten. Warnung: nicht
  uebermaessig gross (Qualitaet menschlicher Kontakte).
- **Healthcare-Kostenband (BKP 2):** 2'623-4'250 CHF/m2 GF (roh) / 3'042-4'485 (indexiert) /
  826-1'420 CHF/m3 GV / 273'000-780'000 CHF/PZ → Neubauansatz **~3'850-4'500 CHF/m2 GF**.
- **Healthcare-Flaechenfaktor:** HNF/GF ~0.43-0.61 (Ø ~0.55) — deutlich unter Wohnen (0.60-0.75).

## Was geaendert (Wiki)

- `projektstruktur-deliverables.md` — T19-Raster von «leer» auf **befuellt** (Faktoren-Tabelle,
  3 Fragestellungen beantwortet, Referenzobjekte identifiziert).
- `realwert-sachwert.md` — Healthcare-Kostenband auf 8 Objekte erweitert (neue Tabelle + Baender).
- `flaechendefinitionen-sia.md` — neue Sektion JANS-Flaechenfaktoren Healthcare.
- `ertragswert-dcf.md` — Skalen-/Betriebsgroessen-Befund in die Ertragsseite eingewoben.
- Register: `_INGESTED.md`, `wissensluecken.md` (T19 → Erledigt), `curriculum.md` (E10 + E7),
  `INDEX.md`, `CHANGELOG.md`.

## Vorbehalte / Grenzen

- Crivelli-Studie: Datenstand ~1998/2001 — der **strukturelle** Skalenbefund ist durabel, die
  **absoluten** Bettzahl-Schwellen mit heutigen Betriebsmodellen zu plausibilisieren.
- Index-115-Normierung des JANS-Referenzblatts nicht vollstaendig rekonstruierbar → Rohwerte je
  Baujahr sind der harte Beleg.
- «Emilienheim» ist im Referenzblatt nicht mit Flaechen-Kennwerten hinterlegt (nur als
  Entwicklungsfall/Medienquelle bekannt).

## Was als naechstes

**Keine offenen T-Aufgaben mehr.** Der Loop laeuft im Aktualisierungs-/Vertiefungs-Modus. Naechste
Kandidaten bei Verfuegbarkeit: D4 (`.xlsx`-Tool-Formeln, Freigabe), D8 (JANS-Kennwerte-DOCX,
Freigabe), Emilienheim-Flaechenkennwerte, sonst Marktpuls (SNB/Referenzzins naechste Termine 09.2026)
und Baupreisindex-Auffrischung.
