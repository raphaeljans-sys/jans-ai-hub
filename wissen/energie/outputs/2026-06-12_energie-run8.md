# Energie-Trainingslauf — Run 8 (2026-06-12)

Taeglicher strategischer Energie-Loop. NAS + SharePoint PL-04 erreichbar; Voraussetzungen erfuellt.
Schwerpunkt heute: **CLT-Bauteilkatalog** (Curriculum A6, Fortsetzung von Run 7) + **PV-Brandschutz**
(Curriculum C3). Zwei neue Destillate, eine neue FAQ-Antwort, zwei Wiki-Artikel auf **established**.

## BLOCK 1 — TRANSFER (2 neue Destillate)
1. **«CLT by Stora Enso — Bauphysik», Kap. 4 Bauteilaufbauten** (Aussenwand V1-9 S. 40-57 + Dach
   V1-6 S. 166-176 + Kap.-4-Inhaltsverzeichnis) → neues Destillat
   `clt-bauteilkatalog-stora-enso.md` (**established**). Konkrete Aufbauten mit je **REI · U · Rw**:
   - **Aussenwand:** Tragschicht CLT 100/120 (λ 0,110); EPS (λ 0,031, duenner) vs. Mineralwolle
     (λ 0,035, **A1 nicht brennbar**, +2 dB); **GKF innen** hebt REI 60→90; **Installationsebene**
     = **REI 120 + Rw 43**. Spannbreite **U 0,10-0,18 / REI 60-120 / Rw 36-43**, Last 35 kN/m.
   - **Flachdach/Warmdach:** CLT 140, Daemmung 24 cm EPS/Holzfaser, Dampfsperre **aussen** →
     **U 0,11-0,13**, REI 60-90, Rw 36-43.
   - **Kernpointe:** Holz daemmt nicht (CLT 100→120 hebt v.a. REI, kaum U); gute CLT-Wand = 30-40 cm.
   - Innenwand/Trennwand/Deckenelement (S. 98-164) bewusst offen → Folgelaeufe (Schallschutz MFH).
2. **«swissolar Stand-der-Technik-Papier zu VKF-Brandschutzmerkblatt Solaranlagen» V4.00 (12/2022,
   ueberarb. 11/2023), S. 1-16** → neues Destillat `swissolar-stp-vkf-brandschutz-solaranlagen.md`
   (**established**). Kerngewinn — die drei Schnittstellen Solar↔Gebaeude:
   - **DC-Leitungen:** unter Spannung bei Tageslicht; **kein PVC** (halogenfrei); auf brennbarem
     Bauteil/**Holztragwerk** in **RF1-Rohr**; nicht in vertikalen Fluchtwegen → Holzbau-relevant.
   - **Wechselrichter:** nicht in feuer-/explosionsgefaehrdeten Raeumen/Fluchtwegen; EFH-Heizraum ok.
   - **Kennzeichnung** fuer Feuerwehr; Blitz/Batteriespeicher als eigene Gefahren.
   - Kap. 4-7 (Feuerwehreinsatz, konstruktive Details Anhang 7.3) offen.

## BLOCK 2 — VERDICHTUNG (Bauherren-Wert)
- **BAUHERREN-FAQ: F16 neu** «Was muss ich beim Brandschutz einer Solaranlage (PV) beachten?»
  (DC kein PVC/RF1-Rohr, WR-Standort, Kennzeichnung; Holzbau = Knackpunkt). FAQ jetzt **14 belegte
  Antworten** (F1-F5, F7, F9-F16); Status **established**.
- **F15 geschaerft** um die konkreten CLT-Aufbauten (~20 cm EPS bzw. ~18 cm MW → U ≤ 0,17;
  GKF/Installationsebene) + Backlink `[[clt-bauteilkatalog-stora-enso]]`.
- **2 Wiki-Artikel auf established gehoben/gewachsen:** `holzbau-bauphysik-clt.md` (+Bauteilkatalog-
  Tabellen Wand/Dach) und `pv-solar-technologien.md` (+Brandschutz-Sektion, Backlinks F16/Holzbau).

## Register nachgefuehrt
`destillate/INDEX.md` (+2), `wiki/INDEX.md` (FAQ 14/established, Holzbau established),
`wiki/QUESTIONS.md` (E8 Bauteilkatalog ✓, **E10 PV-Brandschutz neu ✓**, E-F auf 14), `wiki/BAUHERREN-FAQ.md`
(F16 neu, F15 geschaerft, Frontmatter +2 sources/established), `training/pdf-inventar.md` (CLT [~]
Kap. 4 Teil, swissolar [~]), `training/curriculum.md` (A6 Bauteilkatalog ✓, **C3 ✓**),
`raw/_INGESTED.md` (22 Destillate, +2), `CHANGELOG.md`.

## Offen / Prioritaet morgen (Run 9)
1. **CLT-Schallschutz** Innenwand/Trennwand/Deckenelement (Stora Enso Kap. 4, S. 98-164) — Tritt-/
   Luftschall fuer MFH/Healthcare; aktuell groesste inhaltliche Luecke im Holzbau.
2. **F6 WP-Systemvergleich** (JAZ/COP Luft ↔ Sole ↔ Wasser ↔ Fernwaerme ↔ Pellets) — eigene Quelle
   noetig (SIA 384/1 Detail / FWS / EN-LCC-ZH-Tool).
3. **Foerderung ZH 2026 — Minergie-ECO + thermische Solaranlagen** (PDF S. 30-38) → `foerderung-energie-zh` schliessen.
4. **F8 Netto-Null-Definition** fuer Neubau/Umbau konkret (Betriebs-CO₂ + graue Energie).
5. **swissolar STP Kap. 4-7** (Feuerwehreinsatz, konstruktive Details) — bei Bedarf, sonst Skill `brandschutz`.

## Qualitaet
Keine erfundenen Werte; alle REI/U/Rw/λ/Brennbarkeitsklassen direkt aus den Quell-Tabellen, DC-/WR-
Regeln aus dem swissolar-STP zitiert. CH-Einordnung markiert: Stora-Enso-Doku ist DE/Hersteller —
**REI ≈ EI/VKF**, λ als Produktwert mit **SIA-279-Vorbehalt**; Solar-Brandschutz-Detailbewertung →
Skill `brandschutz`, Energierecht/PV-Pflicht → Skill `baurecht` (verlinkt, nicht gedoppelt).
Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch. Kompoundiert (Bauteilkatalog ↔ Holzbau-Bauphysik F15;
PV-Brandschutz ↔ pv-solar-technologien/Holzbau-DC-Fuehrung; Daemmstoff-λ ↔ daemmstoffe-lambda).
</content>
