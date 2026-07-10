# Training-Run 16 — Immobilienbewertung (2026-07-10)

**Modus:** Aktualisierung/Vertiefung (Wuest-Kurs + alle lesbaren E-Quellen + D4 seit Run 15
eingearbeitet). Schwerpunkt dieses Laufs: die **letzte auto-schliessbare Daten-Luecke D8**
(JANS-Kennwerte-DOCX) — moeglich, weil Run 15 gezeigt hat, dass die als «freigabegebunden»
angenommenen SharePoint-Dateien TCC-lesbar sind (unzip + XML-Parser).

## Die 10 Themen dieses Laufs

1. **aGF ↔ GF-Umrechnungsfaktor** (JANS): Altbau **0.8**, Neubau **0.9** → `flaechendefinitionen-sia`
2. **JANS-Wohn-Erstellungskosten-Kennwert EFH/ZFH**: Median 2020 = 2'900 CHF/m2 GF BKP 2 → `realwert-sachwert`
3. **Indexierung + BKP2→BKP1-5**: Index 2020=100 → 2025=116 → 3'365 BKP 2 → /0.75 → **4'485 CHF/m2 GF BKP 1-5**; TG 42'000/SP
4. **Worked example Thalwil Bohlweg 1**: 950 m2 GF → 4.6 Mio inkl. TG; **HNF-Faktor 7'350 CHF/m2 HNF BKP 1-5**
5. **Healthcare-Spitalumbau-Kostenband** (CHF/m2 NF, «Spektrumskosten», 6 Stationstypen) → `realwert-sachwert`
6. **Realer Fall Psychiatrie-Teilumbau** (12 UEP): 1'100 CHF/m2 HNF, Zielkorridor 1'800-2'500
7. **Realer Fall Kispi ZH** (Admin → Kinder-/Jugendstation): 4'412 CHF/m2 NF (normal/defensiv)
8. **`_Kennwerte_Links.docx`** Quellen-Linkverzeichnis → `datenquellen-registry`
9. **Emilienheim-Flaechenkennwerte-Gap** bestaetigt nicht verfuegbar (nur Tages-Anzeiger-Medienquelle)
10. **Marktpuls-Web-Check** (SNB/Referenzzins/Mietindex/Baupreisindex)

## Was gelernt / eingearbeitet

### D8 — `_Kennwerte Jans.docx` (R. Jans, 25.03.2025)

- **aGF/GF-Faktor:** Altbau 0.8, Neubau 0.9. Faustwert, um aus der baurechtlich anrechenbaren
  Flaeche (AZ × Grundstueck) die geometrische SIA-416-GF fuer Volumen-/Kostenrechnung abzuleiten
  (GF ≈ aGF / 0.9 Neubau). → `flaechendefinitionen-sia` (aGF/BGF-Sektion).
- **Wohn-Erstellungskosten-Kennwert EFH/ZFH (indexiert, Preisstand 2025):**
  - Median 2020 = 2'900 CHF/m2 GF BKP 2 → Index 116 → **3'365 CHF/m2 GF BKP 2**
  - BKP 2 = 75 % → **BKP 1-5 = 4'485 CHF/m2 GF** (JANS-Ansatzkennwert)
  - Tiefgarage: **42'000 CHF/Einstellplatz BKP 1-5**
  - Worked example Thalwil Bohlweg 1 (Fall 9568): 950 m2 GF × 4'485 = 4'262'000; + 8 SP × 42'000 =
    335'000; **Total 4'598'000 → «4.6 Mio»**; **HNF-Faktor = 4'262'000 / 580 m2 = 7'350 CHF/m2 HNF BKP 1-5**.
  - Einordnung: liegt ueber den WP-MFH-Benchmarks (gute/gehobene Lage 5'800-7'000/m2 HNF) — plausibel
    fuer ein EFH/ZFH (kleinteilig, hoeherer Standard, Premiumlage Zimmerberg). → `realwert-sachwert`.

### Healthcare-Umbau-Kostenband (`Spektrumskosten.docx` + `Umbaukosten 500K/2500K.docx`)

Neue Dimension: bisher hatte die KB nur **Neubau**-Kennwerte (CHF/m2 GF). Der haeufigere
Healthcare-Fall ist **Umbau/Umnutzung im Bestand** — dafuer fuehrt JANS ein Band je m2 **NF**:

| Stationstyp | CHF/m2 NF |
|---|---|
| Buero → Praxis/Therapie | 2'000-3'000 |
| Buero → Psychiatrische Normalstation (Uebernachtung, ohne Akut) | 2'200-3'500 |
| Somatische Normalpflegestation | 3'500-4'500 |
| Kinder-/Jugendstation Akut | 4'000-5'500 |
| Intensiv-/Spezialstation | 6'500-9'000 |
| Neue Spezialstation mit hohem OP-Anteil | ab 10'000 |

Zwei reale JANS-Kalibrierungsfaelle: Psychiatrie-**Teilumbau** 500K/452 m2 = ~1'100/m2 HNF (unter
dem Band, weil Struktur/Brandschutz Bestand → Zielkorridor bei Praezisierung 1'800-2'500); Kispi ZH
Admin → Paediatrie-Station 4'412/m2 NF (im laufenden Betrieb, unteres Band → normal/defensiv).
Wichtig dokumentiert: **Umbau (NF) ≠ Neubau (GF)** — nicht direkt vergleichbar. → `realwert-sachwert`.

### Marktpuls (Web-Check 10.07.2026) — alle Anker unveraendert

- SNB-Leitzins **0.00 %** (Entscheid 19.06.2026 gehalten, naechster 09.2026)
- Hypothekarischer Referenzzinssatz **1.25 %** (BWO, letzte Bestaetigung 01.06.2026, naechste Publ. 01.09.2026)
- SARON 0.78 %; Festhypothek 5 J ab 1.11 % / 10 J ab 1.41 %
- SMG/Homegate-Mietindex **Mai-2026 = 133.7** (+0.2 % MoM, +2.5 % YoY) — juengster publ. Stand
- BFS-Baupreisindex **April-2026 = 100.6** (+1.0 % YoY, Basis Okt-2025=100) — unveraendert seit Run 15

## Was geaendert (Artikel + Register)

- `wiki/flaechendefinitionen-sia.md` — aGF/GF-Faktor-Tabelle; last_updated 07-10
- `wiki/realwert-sachwert.md` — 2 neue Sektionen (JANS-Wohn-Kennwert D8 + Healthcare-Umbau-Band);
  Offen-Log + Frontmatter; last_updated 07-10
- `wiki/datenquellen-registry.md` — DOCX eingearbeitet-Status + `_Kennwerte_Links.docx`; last_updated 07-10
- `wiki/investorenmarkt-makro.md` — Marktpuls-Log Run 16; last_updated 07-10
- `wiki/INDEX.md` — realwert-sachwert + flaechendefinitionen-sia Beschreibungen
- `raw/_INGESTED.md` — 3 DOCX-Zeilen + Stand-Run-16-Block
- `wiki/wissensluecken.md` — D8 erledigt; Emilienheim-Gap bestaetigt nicht verfuegbar; nur D5 offen
- `training/curriculum.md` — E5 ✓ vollstaendig
- `CHANGELOG.md` — Run-16-Eintrag

## Stand / was als Naechstes

- **Alle auto-schliessbaren Luecken zu.** Wuest-Kurs, alle E-Quellen, T-Aufgaben, D4 und D8 eingearbeitet.
- **Verbleibend nur D5** (buerospezifische Margen-/Finanzierungspraxis — echte Bring-Schuld Raphael,
  nicht durch den Loop schliessbar).
- Naechste Laeufe: reine **Auffrischung/Marktpuls** — SREBI Q2-2026 (~09.2026), Referenzzins-Publikation
  01.09.2026 (ob Durchschnittszins ueber 1.37 % steigt), neue Baupreisindex-Staende, ggf. neue reale
  JANS-Bewertungsfaelle sobald im Bewertungsordner vorhanden.
