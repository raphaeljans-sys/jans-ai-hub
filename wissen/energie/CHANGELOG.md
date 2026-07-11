# CHANGELOG — KB Energie

Neueste zuoberst.

## 2026-07-11 — Run 33: Elektromobilität — Ladeinfrastruktur am Gebäude (F39 neu) + Zogg-Destillat geschärft
- **1 neues Destillat (Web/CH-Quellen) → 66 total** + 1 bestehendes geschärft:
  - `e-mobilitaet-ladeinfrastruktur-gebaeude-ch` (established) — EnergieSchweiz/Swiss eMobility
    «Ladeinfrastruktur in Mietobjekten» (Nov 2024) + «im Bestandsbau — Rollen und Prozesse» (Sept 2025) +
    Zogg-Fachartikel HK-Gebäudetechnik 4/24 (S. 52-57, Juli 2023): **Grunderschliessung aller Parkplätze**
    (intelligente, ausbaufähige Anlage) statt Einzel-Wallbox; **SIA-Merkblatt 2060** drei Stufen **C1 Power
    to Garage / C2 Power to Parking / D Ready to charge**; **dynamisches Lastmanagement** verteilt freie
    Leistung → kein Anschluss-Ausbau; Typ 2 (AC), **11 kW** üblich (1,4–22 kW); E-Auto-Batterie **20–100 kWh**
    als flexibler Tagesverbraucher, **Frühling–Herbst bis 100 % PV**; Ladestation gebäudeseitig **ab
    CHF 1'000**; Prozess nach SIA-Phasen real **6–9 Monate**; **Mietobjekt: Refinanzierung über
    Parkplatzmiete**; **V2H/V2G** künftig; NIV SR 734.27.
  - `wp-pv-eigenverbrauch-lastmanagement` (Zogg 2023) **geschärft** um den E-Auto-Teil (offener Punkt
    «E-Mobilität nur überflogen» geschlossen): Ladeleistung/kWh, Frühling–Herbst 100 % PV, V2H/V2G.
- **VERDICHTUNG:** **FAQ F39 neu** «Muss ich mein Haus / MFH für Elektroauto-Ladestationen vorbereiten?»
  (Grunderschliessung > Einzel-Wallbox, SIA-2060-Stufen, dynamisches Lastmanagement, 11 kW, PV-Kopplung,
  Kosten, Prozess, Parkplatzmiete). **FAQ jetzt 39 Kernfragen F1–F39.** **Neuer Themenartikel
  `wiki/elektromobilitaet-ladeinfrastruktur`** (established). Cross-Links in `pv-eigenverbrauch-zev`.
- **Register:** `destillate/INDEX` (+1 → **66**, Zogg-Zeile ergänzt), `wiki/INDEX` (FAQ 38→39, Themenartikel
  `elektromobilitaet-ladeinfrastruktur`), `wiki/BAUHERREN-FAQ` (F39 neu, Frontmatter +1 source/Datum,
  FAQ-Stand-Box), `wiki/QUESTIONS` (**E19 Elektromobilität ✓**), `pdf-inventar` (+1 Web-Zeile), `raw/_INGESTED`
  (+1), `training/curriculum` (**D12 neu**).
- **Methodik:** Kein CHF-/kW-/%-Wert erfunden — 11 kW/1,4–22 kW/20–100 kWh/ab CHF 1'000/6–9 Monate/SIA-2060-
  Stufen aus EnergieSchweiz-Leitfäden + Zogg-Artikel wörtlich belegt; SIA 2060 kostenpflichtig → Stufen als
  referiert markiert; Grunderschliessungs-CHF je Parkplatz bewusst offen (projektabhängig).

## 2026-07-10 — Run 32: Batteriespeicher — «lohnt sich das?» (F38 neu) + F37 geschärft
- **2 neue Destillate (Web, CH-Quellen) → 65 total:**
  - `batteriespeicher-heimspeicher-pv-ch` (established) — Swissolar «Batteriespeicher» + EnergieSchweiz
    «Batterien», trianguliert mit Zogg 2023: Eigenverbrauch **~30 %→50 % (EMS+WP)→bis 70–90 % (Batterie)**;
    **Wirtschaftlichkeit ab ~35 % EV — meist OHNE Batterie erreichbar** (teuerster Hebel, nicht der erste);
    **600–900 CHF/kWh** inkl. WR+Installation; Dimensionierung kWp×1,5 bzw. Jahresverbrauch/730; LFP ~80 %,
    Lebensdauer 10–20 J; **Notstrom nur ~30 % der Systeme**; Tagesspeicher → **Winter-Netzbezug nicht senkbar**.
    Belegte Amortisationsjahre bewusst offen; unplausibler EnergieSchweiz-Extraktionswert verworfen.
  - `behaglichkeit-raumklima-kbob-ipb` (established, ⚠ 2017) — KBOB/IPB-Faktenblatt 1.1.31: **aktive
    Befeuchtung bei normalem Klima nicht nötig** (Feuchte via Lüftung; SIA 180:2014), Sommer primär passiv.
- **VERDICHTUNG:** FAQ **F38 neu** «Lohnt sich ein Batteriespeicher zu meiner Solaranlage?» (FAQ jetzt
  **38 Kernfragen F1–F38**); **F37 geschärft** um die KBOB/SIA-180-Feuchteaussage; neuer Themenartikel
  `wiki/batteriespeicher.md` (Reihenfolge der Eigenverbrauchs-Hebel, Kosten/Dimensionierung, Grenzen,
  MFH via ZEV/vZEV/LEG).
- **Register:** INDEX-Destillate (+2 → 65), wiki/INDEX (FAQ 37→38, 2 Artikel), QUESTIONS (E18 ✓, E17 geschärft),
  pdf-inventar (+2 Web), _INGESTED (+2), curriculum (D11), Output `outputs/2026-07-10_energie-run32.md`.

## 2026-07-09 — Run 31: Komfortlüftung / kontrollierte Wohnungslüftung (F37 neu)
- **1 neues Destillat (Web, CH-Quellen) → 63 total:**
  - `komfortlueftung-wohnungslueftung-ch` (established) — EnergieSchweiz (gebaeudetechnik/lueftung) + Minergie
    «Gute Raumluft» + energie-umwelt.ch (kantonale Fachstellen): **4 Standardsysteme** (Komfortlüftung mit WRG /
    Abluft / dezentral 75–90 % / Grundlüftung); Wärmeverluste **>2/3 tiefer als Handlüftung** (ZH EN-105 ≥70 %);
    Aussenluft ~30 m³/h wach /15 schlafend; CO₂ 400–1'000–2'000 ppm; **die zwei Mythen widerlegt** (Fenster
    jederzeit öffenbar; trockene Luft = Kälte-Phänomen jeder Lüftung → Enthalpietauscher +bis ~10 % Feuchte);
    Filterwechsel ~1–2×/J, EFH ~CHF 12–25k Markt-Richtwert, Gebäudeprogramm fördert bei Sanierung.
- **VERDICHTUNG:** FAQ **F37 neu** «Brauche ich eine Komfortlüftung — wird die Luft trocken, darf ich die
  Fenster nie mehr öffnen?» (FAQ jetzt **37 Kernfragen F1–F37**); neuer Themenartikel `wiki/komfortlueftung.md`
  (established) mit Backlinks auf `en-lueftung-kuehlung-zh` / `minergie-standards` / `pv-eigenverbrauch-zev` /
  `gebaeudeprogramm-bund-hfm-2015` / `sommerlicher-waermeschutz`.
- **Register:** `destillate/INDEX` (+1 → 63), `wiki/INDEX` (FAQ 36→37 + Komfortlüftungs-Zeile), `QUESTIONS`
  (**E17 ✓**), `pdf-inventar` (+1 Web), `raw/_INGESTED` (+1), `curriculum` (**D10**), Output `2026-07-09_energie-run31`.
- **Offen:** WRG-Grad zentraler Anlagen numerisch (Minergie ≥80 %), SIA 382/1 Auslegungs-Luftwechsel,
  Filterklassen/Ventilator-Strom (SIA-Merkblatt 2023, bildbasiert), komfortable rel. Raumluftfeuchte % (SIA 180),
  CHF aus neutraler Quelle.
- **Methodik:** Kein WRG-%-/CHF-/Feuchte-%-Wert erfunden; Minergie-/BFE-PDFs bildbasiert → aus lesbaren
  HTML-Portalen belegt; CHF 12–25k als kommerzieller Markt-Richtwert markiert, Filterintervall als fachüblich.

## 2026-07-08 — Run 30: GEAK / GEAK Plus (F36 neu) + Fenster-Energieetikette FEA
- **2 neue Destillate (Web, CH-Quellen) → 62 total:**
  - `geak-gebaeudeenergieausweis-kantone` (established) — geak.ch / EnDK: amtliche Energieetikette Bestand,
    7 Klassen A–G (Huelle / Gesamtenergie inkl. Eigenstrom / direkte CO₂; **A = null CO₂, Stufe 5 kg/m²·a**);
    **GEAK Plus** = bis 5 Sanierungsvarianten + Beratungsbericht; **Pflicht ab CHF 10'000 Foerderung**;
    **10 J gueltig**; nur zertifizierte Expert:innen; kein Fixpreis (ZH/SZ foerdern 1'000/1'500).
  - `fenster-energieetikette-fea-bfe` (emerging) — BFE, freiwilliges Label: Winter-Bilanz **Uw,eq** am
    Referenzfenster **1,55 × 1,15 m** = Transmissionsverlust − nutzbarer solarer Gewinn; **Klasse A =
    Gewinne > Verluste**. ⚠ Faktenblatt 7731 bildbasiert → Uw,eq/Referenzmass nicht seitengenau, Klassen-
    grenzen offen.
- **FAQ F36 neu** «Brauche ich einen GEAK — was ist das, was bringt er, was kostet er?». **FAQ jetzt
  36 Kernfragen F1–F36.**
- **Neuer Themenartikel `geak-gebaeudeenergieausweis`** (established); **`fenster-verglasung` geschaerft**
  um einen FEA-Abschnitt.
- **QUESTIONS:** **E16 GEAK ✓**, E3 FEA-Punkt nachgefuehrt (Prinzip belegt, Klassengrenzen offen).
- Register: destillate/INDEX (+2), wiki/INDEX (FAQ 35→36 + GEAK-Zeile), pdf-inventar (+3 Web), _INGESTED
  (+2), curriculum (**D9**), Output `2026-07-08_energie-run30.md`.
- **Offen:** GEAK-Kostenspanne + Klassengrenzen kWh/m²·a; FEA-Klassengrenzen A–G; numerische g-/Uf-Werte (SZFF).

## 2026-07-07 — Run 29: Fenster & Verglasung — Uw/g-Wert/Dreifachglas (F35 neu)
- **1 neues Destillat (Web, CH-Quellen):** `fenster-verglasung-uw-g-wert` — aus vier autoritativen
  CH-Quellen trianguliert: **EnergieSchweiz** «Fenstersanierung» (13 % Energieverlust ueber Fenster,
  Lebensdauer 25–40 J, Kosten ~400/~1'200 CHF/m², Wert +2–3,5 %), **HSLU/enbau-online** (Uw = f(Ug/Uf/ψg);
  Dreifachglas >90 % CH, Ug 0,4–0,8; Argon/Krypton 90 %; warme Kante Kunststoff ψg 0,035 → bis −20 %;
  g-Wert Winter↔Sommer-Konflikt), **Minergie-Modul Fenster** (Uw ≤1,0 · Minergie-P ≤0,80) und
  **nachhaltigleben.ch** (Schimmelwarnung «Fenster nie allein vor der Wand»).
- **FAQ F35 neu** «Zweifach- oder Dreifachverglasung — welche Fenster, und lohnt sich der Ersatz?».
  **FAQ jetzt 35 Kernfragen F1–F35.**
- **Neuer Themenartikel `fenster-verglasung`** (established): Uw-System, Verglasung, g-Wert, Rahmen,
  Anforderungswerte, 5 Bauherren-Kernbotschaften.
- **Register:** `destillate/INDEX` +1 (**60 Destillate**), `wiki/INDEX` (FAQ 34→35, fenster-verglasung-
  Zeile, «im Aufbau»-Liste bereinigt), `wiki/QUESTIONS` **E3 ✓ geschlossen**, `pdf-inventar` +1 Web,
  `raw/_INGESTED` +1, `training/curriculum` **D8 neu**. Report `outputs/2026-07-07_energie-run29.md`.
- **Methodik:** kein Uw-/Ug-/ψ-/g-/CHF-Wert erfunden; g-Glas-Richtwert (~0,5) und MuKEn-1,0/1,3-Nuance
  als eigene Einordnung markiert. Offen: numerische g-/Uf-Werte je Typ (SZFF), Fenster-Energieetikette
  BFE (bildbasiert), GEAK-FAQ (Kandidat F36).

## 2026-07-06 — Run 28: Naturdaemmstoffe — oekologisch daemmen + Sommerhitzeschutz (F34 neu)
- **1 neues Destillat (Web, CH-Quellen):** `naturdaemmstoffe-kennwerte-sommerhitzeschutz` (Materialvergleich
  gesundes-haus.ch + Lignum «Holzfaserdaemmung» + Strohballen). Vergleichstabelle Holzfaser/Zellulose/Hanf/
  Flachs/Schafwolle/Stroh/Kork mit **λ 0,038–0,045** (wie Mineralwolle → keine dickere Daemmung), Rohdichte,
  **spez. Waermekapazitaet c ~2000–2200 J/(kg·K) fuer holzbasierte Stoffe (≈2× Steinwolle ~1030 / EPS ~1450)**
  und Diffusion µ. Kernbotschaft: gegen **Sommerhitze** zaehlt die **Speichermasse ρ·c** (Phasenverschiebung),
  nicht λ — darum schuetzt Holzfaser «besser als die meisten anderen Daemmstoffe vor Sommerhitze» (Lignum).
  Diffusionsoffen/feuchtepuffernd (Holzfaser bis 15 % Eigengewicht). **Stroh** ~100× weniger graue Energie als
  Mineralwolle, verputzt bis **90 min** Feuerwiderstand, Minergie-ECO-Hebel. **Trade-off:** brennbar → CH-VKF
  **RF3** (eigene Uebersetzung der DIN-B2-Angabe der Quelle; VKF-Produktanerkennung je Aufbau → Skill `brandschutz`).
- **Neuer Themenartikel** `naturdaemmstoffe` (oekologisch daemmen, Sommerhitze puffern, Materialwahl nach
  Einbauort); `sommerlicher-waermeschutz` + `daemmstoffe-lambda` verlinkt.
- **FAQ F34 neu** «Oekologisch daemmen ohne Winter-Nachteil — hilft das gegen Sommerhitze?» → 34 Kernfragen F1–F34.
- **Register:** destillate/INDEX (+1 → **59 Destillate**), wiki/INDEX (FAQ 33→34 + naturdaemmstoffe-Zeile,
  «im Aufbau»-Liste bereinigt), pdf-inventar (+1 Web), raw/_INGESTED (+1), training/curriculum (**D7 neu**),
  wiki/QUESTIONS (E12 Naturdaemmstoffe ✓). Schliesst die E12-Naturdaemmstoff-Restluecke.
- **Datenstand-Disziplin:** kein λ/c/Foerderbetrag erfunden; c-Umrechnung Wh/kgK→J/kgK offen ausgewiesen,
  Zellulose-c-Ausreisser der Quelle ⚠ markiert; Brandklasse-Uebersetzung DIN-B2 → CH-VKF-RF3 als eigene
  Einordnung gekennzeichnet, VKF-Anerkennung an Skill `brandschutz` delegiert.

## 2026-07-05 — Run 27: PV-Eigenverbrauch vermarkten — ZEV-Mieter-Preisregel (F32 geschaerft) + LEG (F33 neu)
- **2 neue Destillate (Web-Primaerquellen):** `zev-mieter-strompreis-eigenverbrauch` (EnergieSchweiz
  «Eigenverbrauch und ZEV» + lokalerstrom.ch, Grundlage Leitfaden Eigenverbrauch — die **Mieter-Preisregel**:
  pro kWh **nie mehr als das externe Standardprodukt**; entweder **pauschal ≤80 %** (kein Kostennachweis,
  garantierte 20 % Ersparnis) oder **Gestehungskosten** (reale Kosten − Einspeiseerloes, gedeckelt aufs
  Standardprodukt; bei tieferen Kosten hoechstens **halbe Ersparnis** zusaetzlich); einrechenbar
  PV-Produktion/Messung/Dienstleister/Netzstrom 1:1; **Mieter-Wahlrecht** + Anfechtungsrecht, keine
  Nettomiet-Ueberwaelzung; EnergieSchweiz-Excel 2024-03-11; EnV Art. 16) und
  `leg-lokale-elektrizitaetsgemeinschaft-2026` (EKZ + VSE-Branchenempfehlung LEG — das **dritte** neue
  Instrument, **ab 1.1.2026** (StromVG): Strom mit Nachbarn ueber das **oeffentliche** Quartiernetz;
  **Netzentgelt-Rabatt 40 %** ohne / **20 %** mit Transformation, **nur** auf Wirkenergie/Wirkleistung/
  Grundpreis (nicht SDL/Stromreserve/Netzzuschlag/Gemeinde/Messung); Voraussetzung gleiche **Gemeinde** +
  Netzebene NE5-7/≤36 kV + **≥5 %** Produktionsanteil + Smart Meter; Teilnehmer bleiben **VNB-Kunden** ohne
  Solidarhaftung — anders als ZEV hinter dem Anschluss).
- **FAQ:** **F32 geschaerft** um die konkrete Mieter-Preisregel (80 %/Gestehungskosten, Mieterrechte);
  **F33 neu** «Solarstrom mit den Nachbarn teilen — LEG?» (Rabatt-Logik, Voraussetzungen, ZEV-vs-LEG-Tabelle,
  Faustregel Modellwahl). FAQ-Stand **33 Kernfragen F1-F33**.
- **Themenartikel `pv-eigenverbrauch-zev`** um Mieter-Preisregel (Hebel 2) + **Hebel 3 LEG** erweitert.
- **Register:** `destillate/INDEX` (+2 → **58 Destillate**), `wiki/INDEX` (Kernprodukt-Zeile 32→33,
  pv-eigenverbrauch-zev-Zeile), `raw/_INGESTED` (+2), `pdf-inventar` (+2 Web), `QUESTIONS` (E12 ZEV-Preis ✓ + LEG ✓),
  `curriculum` (D6 ergaenzt). Schliesst die **Run-26-Top-Prioritaeten #1 (ZEV-Mieter-Preisregel) + #2 (LEG)**.

## 2026-07-04 — Run 26: PV-Eigenverbrauch — WP-Lastmanagement (F31) + ZEV/vZEV im MFH (F32), neuer Themenartikel
- **2 neue Destillate (Web-Primaerquellen, via Read voll gelesen):** `wp-pv-eigenverbrauch-lastmanagement`
  (EnergieSchweiz/BFE, Autor D. Zogg FHNW, V2.0 02.07.2023 — WP als **thermischer Speicher via EMS**;
  solarer Deckungsgrad Heizen ~**verdoppelbar** (Faktor 2 mit Gebaeudemasse), Sommer-WW **100 % aus PV**;
  Speichertabelle Gebaeudemasse EFH 20-60/MFH 150-450 kWh; **Batterie lohnt noch nicht/hilft Winter nicht**;
  Schnittstellen SG-Ready/PV-Eingang/Modbus/SmartGridready/EVU-Sperreingang) und
  `zev-eigenverbrauch-mfh-her-2025` (VSE HER-CH 2025, verabschiedet 10.02.2025 — ZEV Art. 17 EnG +
  Eigenverbrauch **abgabenfrei Art. 16 EnG**; **neu vZEV ab 1.1.2025** via virtuellem Messpunkt **ohne
  Umverdrahtung**; Vertreter-Rolle, ≥30 kVA separater Zaehler; **LEG separat** BD-LEG).
- **Verdichtung:** **FAQ F31 neu** «Lohnt sich PV zusammen mit einer Waermepumpe — Solarstrom selbst nutzen?»
  (Steigerungsfaktoren-Tabelle, Reihenfolge Lasten-schieben→Speicher→Batterie-zuletzt, Effizienz-vor-Show);
  **FAQ F32 neu** «PV auf dem MFH — Strom an Mieter verkaufen (ZEV)?» (ZEV↔vZEV-Tabelle, Art. 16/17 EnG,
  vZEV ab 1.1.2025, Abgrenzung LEG). **Neuer Themenartikel `pv-eigenverbrauch-zev`** (buendelt beide Hebel).
- **Register:** destillate/INDEX (+2 → 56), wiki/INDEX (+Themenartikel, FAQ 30→32), BAUHERREN-FAQ
  (F31+F32, sources +2, Footer, Backlog WP+PV gestrichen), QUESTIONS (E12 ZEV [~], E15 neu), pdf-inventar
  (+2 Web), raw/_INGESTED (+2), curriculum (D6). Output: `outputs/2026-07-04_energie-run26.md`.
- **Belegluecke geschlossen:** Run-24/25-Prioritaet «WP + PV-Eigenverbrauch (Lastmanagement)» + ZEV-Teil E12.

## 2026-07-03 — Run 25: moderne WP-Feld-JAZ (WPZ Buchs 2017-2019, FAWA-Nachfolger) + Vollkostenvergleich Heizsysteme (FAQ F30 neu)
- **2 neue Destillate (Web):** `wpz-buchs-feldmessung-jaz-2016-2019` (WPZ Buchs/OST i.A. EnergieSchweiz,
  BFE-Tagungsband 24.06.2020 — Tabelle 1 gemessene JAZ nach Gebaeudeart: **LWWP inkl. WW 3,5/3,1/2,8 ·
  SWWP 4,9/4,6/4,3** je 30/40/50 °C; reine Heizen-Werte LWWP 3,7 · SWWP 5,7 Neubau; SWWP ~30 % Vorsprung
  ggue. modernen drehzahlvar. LWWP; JAZ=SPF_H2/SEPEMO; 13 Anlagen 2017-2019 — der **modernere Nachfolger zu
  FAWA 2004**) und `heizsysteme-vollkostenvergleich-energieschweiz` (EnergieSchweiz-Heizkostenrechner,
  Vollkosten EFH/20 J: Luft-WP 4'344 · **Erdsonde 4'090** · Pellets 5'052 · Fernwaerme 4'940 · Oel 5'043
  CHF/Jahr — WP guenstigstes System, Investition ≠ Gesamtkosten).
- **Verdichtung:** **FAQ F30 neu** «Was kostet mein Heizsystem ueber die Lebensdauer wirklich?»
  (Vollkosten-Tabelle + drei Lehren); **FAQ F6 geschaerft** mit gemessenen modernen Feld-JAZ (WPZ Buchs
  ersetzt den «moderne Geraete hoeher»-Hinweis durch echte Werte); Themenartikel
  `heizleistung-und-waermeerzeuger` gewachsen (moderne Feld-JAZ + Vollkosten-Backlinks).
- **Geschlossene Luecken:** «FWS-Feldstatistik / moderne Geraete-JAZ nach 2004» (Run-24-Prioritaet #1) und
  «CHF-Amortisationsvergleich Heizsysteme» (Run-24-Prioritaet #4) belegt.
- Register: `destillate/INDEX` (+2 → **54**), `wiki/INDEX` (+2, FAQ-Zaehler 29→30), `wiki/QUESTIONS`
  (E-F FWS+CHF ✓), `pdf-inventar` (+2 Web), `raw/_INGESTED` (+2), `training/curriculum`, `wiki/BAUHERREN-FAQ`
  (F30 + F6 + Frontmatter + Footer). Output `outputs/2026-07-03_energie-run25.md`.
- **Offen:** noch aktuellere Feldstatistik (Anlagen nach 2019), WPesti-Standardwerte, kg CO₂-eq/m² je
  Bauteil (KBOB v8.0), Lignum-K_F-Konstruktionsdetails, WP+PV-Lastmanagement.

## 2026-07-02 — Run 24: Klimapraemie-Laufzeit aufgeloest (⚠→Ende 2027) + WPesti/SIA 384/3:2021 (projektgenaue JAZ) + Health-Check-Kleinfixes
- **2 neue Destillate (Web):** `klimapraemie-heizungsersatz-klik` (Stiftung KliK: ~CHF 360/kW, keine
  Obergrenze, fossil→WP/Holz, meist alternativ zum Kanton, PV unberuehrt; **Laufzeit voraussichtlich bis
  spaetestens Ende 2027** — loest den Run-23-⚠, aeltere «bis 2025»-Seiten veraltet) und
  `sia-384-3-wpesti-jaz-methode` (WPesti gratis endk.ch, JAZ projektgenau aus SIA-380/1-Nachweis + WP-Typ
  + Einbauart; SIA 384/3 Ausgabe 2021, publ. 02.06.2021; keine JAZ-Zahlen im Artikel).
- **Verdichtung:** FAQ **F29** (Klimapraemie-Laufzeit ⚠ aufgeloest) + FAQ **F6** (verbindliche
  projektgenaue Effizienz via WPesti/SIA 384/3) geschaerft; Themenartikel `heizleistung-und-waermeerzeuger`
  gewachsen (WPesti-Methode im Fliesstext + `sources:`).
- **Health-Check-Kleinfixes (2026-07-01) miterledigt:** Finding F1 — `holzbau-bauphysik-clt` `sources:`
  auf `sia-2001-waermedaemmstoffe-lambda.md` korrigiert; Finding B — INDEX-Doppelzeile
  `pv-einmalverguetung-bund-bfe` verschmolzen. **Destillat-Zaehlung jetzt konsistent: 52** (= 52 INDEX-Zeilen).
- Register: `destillate/INDEX` (+2, −1 Doppel → 52), `wiki/INDEX` (+2), `wiki/QUESTIONS`, `pdf-inventar`
  (+2 Web), `raw/_INGESTED` (+2), `training/curriculum`. Output `outputs/2026-07-02_energie-run24.md`.
- **Offen:** FWS-Feldstatistik (moderne Geraete-JAZ), kg CO₂-eq/m² je Bauteil (KBOB v8.0), Lignum-K_F,
  CHF-Amortisationsvergleich Heizsysteme, Health-Check-Restfixes (`links:`-Komma, 2 Promotions).

## 2026-07-01 — Wissens-Health-Check (Phase 1, unbeaufsichtigt)
- **7 Audits**, KB sehr gesund: A gruen (0 echte Widersprueche, WP-JAZ + Umbau-Faktor sauber geflaggt),
  B gelb (0 tote `[[Backlinks]]`; **INDEX-Doppelzeile** `pv-einmalverguetung-bund-bfe` → Zaehlung 51 statt
  real 50 Destillate), C gruen (0 unbelegte Kennwerte/Foerdersaetze), D gruen (RAW-Vollabdeckung),
  E gruen (kein Artikel < 2026-04-02), F gelb (**holzbau-bauphysik-clt** `sources:` verweist auf nicht
  existentes `destillate/daemmstoffe-lambda.md`; 3× `links:` leer- statt kommagetrennt), G 2 Promotions
  (`regenwasserbewirtschaftung-versickerung-zh` + `sommerlicher-waermeschutz` emerging→established).
  Nur Audit/Report, keine Fixes. Report `outputs/2026-07-01_health-check.md`.

## 2026-06-30 — Run 23: energiefranken.ch (standortgenaue Foerder-Suchmaschine) + Klimapraemie — der Foerder-Stapel ueber alle Ebenen
- **+1 Destillat** (established): `energiefranken-foerder-suchmaschine-ch` — Web (energiefranken.ch © 2026
  EnergieSchweiz/BFE + energieschweiz.ch + gebaeudeklima-schweiz.ch). Standortgenaue Suchmaschine: **PLZ →
  alle verfuegbaren Programme** aus **Bund / Kanton / Gemeinde / Energieversorger / Stiftungen**. Foerderung
  als **Stapel** (Tabelle: wer zahlt was, Antrag wann — Kanton/Gemeinde VOR Baubeginn, Bund-PV/Pronovo NACH
  IBN). **Klimapraemie** (Stiftung KliK) ca. **CHF 360/kW, keine Obergrenze**, fossiler Heizungsersatz →
  WP/Holz; **meist NICHT mit kantonaler Heizungsfoerderung kombinierbar** (Beleg SZ-Vollzugshilfe). ⚠
  Klimapraemie-Laufzeit Quellen widerspruechlich («bis 2025» vs. «bis Ende 2027») → Live-Pruefung noetig.
- **FAQ F29 neu** «Wie finde ich heraus, welche Foerdergelder ich an MEINEM Standort wirklich bekomme — auch
  von der Gemeinde?» (energiefranken.ch + Foerder-Stapel-Tabelle + Reihenfolge-Heuristik + «hoehere Variante
  rechnen statt addieren») → **29 Kernfragen F1-F29**.
- **`foerderung-energie-zh` + `foerderung-energie-sz` geschaerft:** Gemeinde/EWU via energiefranken.ch +
  Klimapraemie-als-Alternative (hoehere Variante waehlen) ergaenzt, Backlinks gesetzt.
- **Register:** `destillate/INDEX` (50→**51**), `wiki/INDEX` (FAQ 28→29 + Themen-Zeile), `wiki/QUESTIONS`
  (E-D7 Gemeinde-/EWU-Ebene ✓), `pdf-inventar` (+1 Web), `raw/_INGESTED` (+1), `curriculum` (Foerder-Block
  erweitert). Output `outputs/2026-06-30_energie-run23.md`. **Keine CHF-Saetze erfunden.**

## 2026-06-29 — Run 22: Foerderprogramm Energie Kanton Schwyz 2026 (Primaerquelle vollst.) + PV-EIV-Aktualitaetscheck
- **+1 Destillat** (established): `foerderprogramm-energie-sz-2026` — Vollzugshilfe Foerderprogramm Energie
  2026 Kt. SZ (AfU, Ausgabe 01.01.2026, **S. 1-40 vollst. via Read** aus lokal gespeicherter PDF). **ALLE
  CHF-Saetze Kanton Schwyz:** Daemmung 60/m² (+40 Gesamtsanierungsbonus), Luft/Wasser-WP 3'200+120/kW_th,
  Sole/Wasser-WP 4'800+360/kW_th, Waermenetz 4'000+200/kW_th, Holzfeuerung 360/kW_th (Stueckholz 5'000/Anlage),
  Solarthermie 2'400+1'000/kW_th, Minergie EFH/MFH/andere 100/60/40 & -P 155/90/60 CHF/m² EBF, Ersatz dezentral
  15'000/60-m², GEAK 1'000/1'500; min 3'000/max 300'000, max 50 %, Baujahr <2000, Gesuch vor Baubeginn, WP nur
  Elektromotor (WPSM/FWS), Klimapraemie nicht kombinierbar. Inkl. SZ↔ZH-Vergleich (linear vs. Pauschale).
- **FAQ F28 neu** «Welche Energie-Foerderbeitraege bekomme ich im Kanton Schwyz?» (volle Satztabelle +
  Bedingungen + SZ↔ZH-Unterschied + Rechenbeispiele) → **28 Kernfragen F1-F28**. **F7 geschaerft** (SZ-Querverweis).
- **Neuer Themenartikel `foerderung-energie-sz`** (established) — Kurzreferenz + Regeln + SZ↔ZH-Vergleich;
  Gegenstueck zu `foerderung-energie-zh`.
- **`pv-einmalverguetung-bund-bfe` aktualisiert:** Aktualitaets-Check 2026 (Pronovo «Neuerungen» + CKW) —
  Basis-EIV-Saetze fuer 2026 unveraendert; einzige Aenderung Winterstrombonus ≥100 kW ab IBN 1.1.2026.
  Sekundaerquellen-Ambiguitaet (Leistungs-/Grund-/Neigungsbonus) → keine feinere CHF-Aufschluesselung (nicht geschaetzt).
- **Register:** destillate/INDEX (+1, +1 Aktualisierung), wiki/INDEX (+1 Artikel, FAQ/EIV aktualisiert),
  wiki/QUESTIONS (E-D7 «Schwyzer Foerderprogramm SZ» ✓ + EIV-2026 verifiziert), pdf-inventar (+2 Web-Zeilen),
  raw/_INGESTED (+2). **Destillatzahl 48 → 49.** Leitplanken: alle SZ-CHF-Saetze aus amtlicher Primaerquelle, nichts erfunden.

## 2026-06-28 — Run 21: Schallschutz-Flanken-Mechanik Holzbau (Lignum/BFH 2008) + Bundes-Gebaeudeprogramm/HFM 2015
- **+2 Destillate** (beide established): `lignum-schallschutz-holzbau-flankenuebertragung` (Lignum/BFH-AHB
  Bericht 2712-SB-01, 2008 — die **Flanken-/Nachweis-Mechanik**: R_w↔R'_w, Projektierungszuschlag K_P +
  Flanken-Zuschlag K_F, **12 Nebenwege ueber EN 12354**, Spektrum-Anpassungswerte C/C_tr; Holzbau-Flanken-
  kennwerte oft nicht verfuegbar → Prognose + Reserve + elastische Stoesse; ⚠ SIA 181:2006, Mechanik
  zeitlos); `gebaeudeprogramm-bund-hfm-2015` (Das Gebaeudeprogramm + HFM 2015 — **Bund-/Kanton-Foerder-
  Mechanik**: CO2-Gesetz Art. 34 → Globalbeitraege → kantonaler Vollzug nach HFM 2015, 18 Module M-01…M-18,
  Rahmenbedingungen U≤0,20/Verbesserung ≥0,07/Baujahr<2000/GEAK Plus ab 10k; CHF-Saetze kantonal).
- **FAQ F27 neu** «Was ist ‹das Gebaeudeprogramm› — Bund UND Kanton?» (ein Topf, ein Gesuch beim
  Standortkanton vor Baubeginn, PV separat ueber Pronovo nach IBN) → 27 Kernfragen.
- **F25 + F17 + Themenartikel `schallschutz-sia181` geschaerft:** Flanken-Mechanik (R_w↔R'_w, K_P/K_F,
  12 Nebenwege EN 12354, C-Werte) eingearbeitet — **schliesst die E11-Belegluecke «Flanken-Mechanik»**
  (konkrete Holzbau-Anschlussdetails/K_F-Werte bleiben offen, spaetere Lignum-LIT-Doku).
- **`foerderung-energie-zh` gewachsen:** Sektion «Woher das Geld kommt (Bund ↔ Kanton)» + Offen-Punkt
  «Bundes-Gebaeudeprogramm» geschlossen; F7 verweist neu auf F27.
- Register: `destillate/INDEX` (+2), `wiki/INDEX` (+2 + 3 Zeilen aktualisiert), `wiki/QUESTIONS` (E-D7 +
  E11 ✓), `pdf-inventar` (+2 Web-Zeilen), `raw/_INGESTED` (+2). Destillatzahl 43 → **45**.
- Hinweis: Lignum- + HFM-PDFs liessen sich nicht per WebFetch-Text extrahieren; Lignum direkt via Read
  (S. 1-14) destilliert, HFM-/Gebaeudeprogramm-Fakten aus den Webseiten + verifizierter Web-Suche
  (keine CHF-Saetze erfunden — Modul-Saetze bleiben kantonal/ungenannt).

## 2026-06-27 — Run 20: Waermepumpen-Effizienz (FAWA Feld-JAZ + COP/SCOP/JAZ) + PV-Foerderung Bund (Pronovo-EIV)
- **+3 Destillate** (alle established): `fawa-jaz-feldanalyse-waermepumpen` (BFE-Feldanalyse, 236 Anlagen,
  **die erste CH-Primaerquelle fuer gemessene JAZ**: S/W Ø 3,5 · L/W Ø 2,7 +32 %, Planungslehren
  Vorlauftemp/Ueberdimensionierung/Speicher; ⚠ Stand 2004); `cop-scop-jaz-waermepumpe-gruenenwald`
  (COP-Pruefpunkt vs. SCOP EN 14825 — Strassburg-Klima → CH ~5-7 % zu hoch — vs. JAZ-Feldmessung);
  `pv-einmalverguetung-bund-bfe` (BFE-Faktenblatt EIV/KLEIV/GREIV/HEIV + KLEIV ~360 CHF/kWp, Indach 400,
  Deckel 30 %, Boni Neigung/Winterstrom/Parkflaeche).
- **F6 geschaerft:** COP/SCOP/JAZ-Begriffsklaerung + FAWA-Feldbeweis (3 Bauherren-Lehren). **Schliesst die
  seit 18.06. offene Belegluecke «WP-JAZ aus Schweizer Primaerquelle».**
- **F7 geschaerft:** Bund-PV-Absatz zur vollen Pronovo-EIV-Erklaerung ausgebaut.
- **Themenartikel `heizleistung-und-waermeerzeuger` gewachsen** + Destillat `waermepumpe-systemvergleich`
  emerging→**established** (Belegluecke geschlossen, COP/SCOP/JAZ + FAWA-Sektion eingefuegt).
- Register: destillate/INDEX (+3, WP-systemvergleich established), wiki/INDEX (+3), QUESTIONS (E-F + E-D7 ✓),
  pdf-inventar (+3 Web), curriculum (B5/D3), raw/_INGESTED (+3). Destillatzahl 40 → **43**. Output: run20.

## 2026-06-26 — Run 19: ZH-Foerdersaetze komplett (Solarthermie/Minergie-ECO) + KBOB graue THG-Emissionen
- **Foerder-PDF S. 1-37 VOLLSTAENDIG** (Direkt-Download /tmp): die seit Tagen offenen CHF-Saetze
  beziffert → **Minergie-ECO 110/70/50, Minergie-P-ECO 165/100/80 CHF/m² EBF; Solarthermie 2'400 +
  1'000/kWth**. Destillat `foerderprogramm-energie-zh-2026` auf «vollst.» gehoben, offener Punkt geschlossen.
- **+1 Destillat:** `kbob-graue-treibhausgasemissionen-2025` (established) — KBOB-Faktenblatt
  (V1 04.04.2025): 9 Reduktionshebel, SIA-2032-Messgroessen (kg CO₂-eq/m² EBF), «Restwert Bestand»,
  bis 40 % MFH, Grenzwert-Logik (Minergie-ECO/SNBS/SIA 390/1), kommende Kantons-Grenzwerte
  (Art. 45 EnG); Datenbasis KBOB-Oekobilanzdaten **v8.0** (20.02.2026).
- **FAQ geschaerft:** **F7** (Foerderung) Tabelle + Rechenbeispiele, «Betrag offen» entfernt; **F9**
  (graue Energie) KBOB-Hebel-Reihenfolge + Restwert + 40 %-Potenzial. F-Anzahl unveraendert (26).
- **Themenartikel gewachsen:** `graue-energie` (KBOB-Sektion) + `foerderung-energie-zh`
  (Minergie-ECO/Solarthermie-Saetze, offen geschlossen).
- **Register:** destillate/INDEX (+1, Foerder vollst.), wiki/INDEX (+KBOB-Zeile, «im Aufbau» bereinigt),
  QUESTIONS (**E-D7 CHF-Saetze ✓**, **E6 KBOB ✓**), pdf-inventar (Foerder-Web [x] vollst. + KBOB [x]),
  curriculum (D3 vollst., D2 KBOB), raw/_INGESTED (+2). Destillate 38 → **40**.
  Output `outputs/2026-06-26_energie-run19.md`.

## 2026-06-25 — Run 18: PV-Ertrag je Ausrichtung × Neigung belegt (neue FAQ F26, schliesst E5-Orientierungsluecke)
- **+1 Destillat:** `pv-ertrag-ausrichtung-neigung-ch` (established) — CH-Richtwerte aus **zwei CH-Quellen
  trianguliert** (Swissolar «Anwendung PV» + solar-ratgeber.ch, Quervergleich BFE sonnendach.ch).
  Basis 100 % = Sued ~30°: **Flachdach ~90 %, Ost/West 90–95 %, Suedfassade senkrecht ~70 %, Nord
  steil ~40 %**; Optimum Sued ~30° / Ost-West ~15°; Verluste 0–50° Neigung gering; ≤45° von Sueden
  besonders gut geeignet. DE-Blog-Tabellen bewusst nicht uebernommen (Leitplanke CH-Quelle).
- **FAQ +1 → 26 Kernfragen (F1-F26):** **F26** «Mein Dach zeigt nicht nach Sueden — wieviel Ertrag
  verliere ich je Ausrichtung/Neigung?» (Entwarnung: Ost-West 90–95 % und fuer Eigenverbrauch oft im
  Vorteil; Matrix + Regeln Winkel/Selbstreinigung/Verschattung).
- **Themenartikel `pv-solar-technologien` gewachsen:** neue Sektion «Ausrichtung × Neigung (CH-Richtwerte)»
  mit Matrix + Regeln; Frontmatter/Sources +1.
- **PDF-Bestand erschoepft festgestellt:** jeder substanzielle PL-04-PDF destilliert (38 Destillate);
  Reste nur Datenblaetter/Flyer/Plaene (geringe Uebertragbarkeit). `U-Wert_Gebäudehülle.pdf` als
  1-Seiter geklaert (keine weiteren Buchseiten). Loop pivotiert auf Web/Aktualitaet + Vertiefung.
- **Register:** destillate/INDEX (+1), wiki/INDEX (FAQ 25→26 + pv-Artikel-Zeile + «im Aufbau» bereinigt),
  QUESTIONS (**E5-Orientierung ✓**), pdf-inventar (U-Wert [x] + Web-PV-Ausrichtung [x]), raw/_INGESTED
  (PDF «erschoepft» + Web-Zeile), curriculum (C2 ergaenzt). Output `outputs/2026-06-25_energie-run18.md`.

## 2026-06-24 — Run 17: Schallschutz SIA 181:2020 belegt (neue FAQ F25, schliesst E11/A8)
- **+1 Destillat:** `sia-181-schallschutz-anforderungswerte` (established) — vollstaendige Anforderungs-
  tabellen aus SIA 181:2020 (Zusammenfassung baumann akustik & bauphysik, Anhang A): **Luftschall Di**
  (Wohnen mittel: 47/52/57/62), **Trittschall L'** (58/53/48/43), **Haustechnik LH** dB(A) und
  **Aussenlaerm De**; erhoehte Anforderung **+4 dB innen / +3 dB aussen**; Schluesselregel **EFH/Reihen-
  EFH/STWEG = erhoehte Aussenlaerm-Anforderung zwingend**; Bauwert D_nT/L'_nT inkl. Flanke ≠ Labor-R_w.
- **+1 Themenartikel:** `schallschutz-sia181` (established) — Schnellreferenz Anforderungen + Bauherren-
  Schluesselregel + Bauwert-vs-Laborwert + Einbindung in Werkvertrag/Ausschreibung/Abnahme.
- **FAQ +1 → 25 Kernfragen (F1-F25):** **F25** «Welcher Schallschutz ist Pflicht — wie laut darf der
  Nachbar/die Haustechnik sein?» (Wohnungstrennung Luftschall ≥52/56 dB, Trittschall ≤53/49 dB,
  Haustechnik Schlafraum ≤28 dB(A); erhoehtes Niveau Pflicht bei EFH/STWEG, Komfort innen vertraglich).
- **F17 (CLT-Holzbau) geschaerft:** SIA-181-Anforderung Wohnungstrennung Di≥52/L'≤53 konkret eingesetzt
  (erklaert die zweischalige CLT-Trennwand mit Labor-Reserve ≥56-58); Datenstand-Vermerk aktualisiert.
  `holzbau-bauphysik-clt` Schallschutz-Abschnitt + Frontmatter-Backlinks ergaenzt.
- **Register:** destillate/INDEX (+1), wiki/INDEX (FAQ 24→25 + neuer Artikel), pdf-inventar (SIA-181-Web
  [x] + PV-Ausrichtung [ ] offen), QUESTIONS (**E11 ✓** belegt), curriculum (A6 geschaerft + **A8 neu [x]**),
  raw/_INGESTED (+1 + SharePoint-Zeile 37 Destillate).
- **Offen/Prioritaet morgen:** (1) **PV-Ertrag je Ausrichtung × Neigung** aus autoritativer CH-Quelle
  (EnergieSchweiz/sonnendach-Ertragstabelle) — Web-Blogs lieferten nur Bild/Excel auf DE-Basis, daher
  nicht uebernommen («nie erfinden»); (2) SIA-181-**Flankendetails Holzbau** (Lignum-Anschluesse);
  (3) CHF-Saetze Solarthermie/Minergie-ECO (Foerderbroschuere S.30-38).

## 2026-06-23 — Run 16: neue Domaene Regenwasser/Versickerung (FAQ F24) + aktuelle PV-Marktpreise 2025 (F18) + Foerderprogramm 2026 bestaetigt (F7)
- **+2 Destillate:** `regenwasserbewirtschaftung-versickerung-zh` (established; AWEL Kt. ZH Gewaesser-
  schutz — Versickerung **bewilligungspflichtig ab 20 m²** entwaesserter Flaeche, Zustaendigkeit
  **Gemeinde** (AWEL nur in GW-Schutzzonen/belasteten Standorten), **Metallflaechen Cu/Zn/Pb > 50 m²
  → Adsorber obligatorisch**, Versickerungsversuch + **1,0 m Filterschicht** ueber HW10; Normen
  VSA 2019 / SN 592 000:2012 / AWEL-Richtlinie 2022); `pv-marktzahlen-kosten-ch-2025` (established;
  Swissolar-Faktenblatt Juli 2025 + CKW Herbst 2025 — Aufdach **2'400–3'200 CHF/kWp**, **Indach +60 %**,
  Solarziegel ~2×, **Lebensdauer 33 Jahre**, 8'200 MW/300'000 Anlagen CH Ende 2024, Speicher 42 %).
- **Bestehendes Destillat gewachsen:** `foerderprogramm-energie-zh-2026` — Aktualisierung **2026
  unveraendert** (Baudirektion-Mitteilung 24.10.2025; 2025 = 61 Mio. CHF) + **Minergie-ECO (nur mit
  ECO!) + Solarthermie foerderfaehig**; konkrete CHF-Saetze S.30-38 bleiben offen (Broschuere-PDF nicht
  erreichbar — nicht geschaetzt, Leitplanke «nie erfinden»).
- **FAQ +1 → 24 Kernfragen (F1-F24):** **F24** «Was passiert mit dem Regenwasser — muss ich versickern,
  brauche ich eine Bewilligung?». **F18** geschaerft (aktuelle Marktpreise 2025 + Lebensdauer 33 J),
  **F7** geschaerft (2026 unveraendert + Solarthermie/Minergie-ECO + PV = Bund/Pronovo).
- **Themenartikel:** neuer Artikel `regenwasserbewirtschaftung-versickerung-zh` (Schwammstadt-Querschnitt
  zu Begruenung F20); `foerderung-energie-zh` + `pv-solar-technologien` (Marktpreise 2025) gewachsen.
- **Register:** destillate/INDEX (+2), pdf-inventar (Regenwasser [x] + Foerder/Swissolar-Web), QUESTIONS
  (E-D7 + E5 geschaerft, **E14 Regenwasser neu**), wiki/INDEX (FAQ 23→24 + neuer Artikel), raw/_INGESTED
  (+2), curriculum (D3 geschaerft, **D5 Regenwasser neu**). Offen: CHF-Saetze Solarthermie/Minergie-ECO
  (Broschuere), kWh/kWp je Orientierung, SIA 181, Naturdaemmstoffe-Praxis.

## 2026-06-22 — Run 15: Indach-Solarprodukt + 3. PV-Ertragsreport (MFH) + neue Domaene Gebaeudeschadstoffe (FAQ F23)
- **+2 Destillate:** `prefa-solar-indach-aluminium-dachplatte` (emerging; PREFA Alu-Solardachplatte
  Indach — gross 100 Wp/5,88 m²/kWp ≈ 170 W/m², klein 43 Wp, **ab 17°**, 12,6 kg/m², keine
  Unterkonstruktion/Durchdringung → kein PV-Zusatzstatik; ⚠ Produktbroschuere 2023),
  `gebaeudeschadstoffe-checkliste-zh` (established; AWEL Kt. ZH 02.2023 — **4-Faelle-Raster** Baujahr
  1990 / Bausumme CHF 200'000 / 200 m³ Rueckbaumaterial; Stichjahre **Asbest 1990, PCB 1987/1976,
  CP 1990**; Checkliste ↔ Fachperson + private Kontrolle; Art. 16-20 VVEA).
- **Bestehendes Destillat gewachsen:** `pv-ertrag-eigenverbrauch-praxis` um **Beispiel C** (SolarApp
  Basel **60 kWp Indach-MFH** 2022 — ~826 kWh/kWp, **EV 33 %**, Autarkie 103 %, ~CHF 2'250/kWp) →
  drittes reales Ertrags-/Eigenverbrauchsbeispiel zwischen Single (8 %) und WP-Haushalt (44 %).
- **FAQ +1 → 23 Kernfragen (F1-F23):** **F23** «Muss ich vor meinem Umbau eine Asbest-/Schadstoff-
  abklaerung machen?» (Kt.-ZH-Vierfaelle-Raster + Stichjahre + Kosten-/Planungs-Transfer). **F18**
  geschaerft (3. Praxisbeispiel MFH EV 33 % + ZEV/Mieterstrom), **F4** geschaerft (konkrete
  Indach-Produkte Alu-Solardachplatte/Glas-Glas).
- **Themenartikel:** `pv-solar-technologien` (Indach-Sektion → zwei Systemtypen Glas-Glas/Alu;
  Eigenverbrauch + ZEV; Flaeche/kWp differenziert).
- **Register:** destillate/INDEX (+2), pdf-inventar (PREFA/Checkliste/Basel [x]), QUESTIONS (E5
  geschaerft, E13 Schadstoffe neu), wiki/INDEX (FAQ 22→23), raw/_INGESTED (+3), curriculum (C2+C4
  vollstaendig). Offen: Foerderprogramm ZH S.30-38 (web), kWh/kWp je Orientierung, SIA 181, Naturdaemmstoffe.

## 2026-06-21 — Run 14: Fassaden-PV-Ertrag quantitativ (FAQ F21) + ZH-Lueftung/Kuehlung EN-105/EN-110 (FAQ F22)
- **+2 Destillate:** `pv-fassade-ertrag-pvsol` (emerging; PV*SOL-Praxissimulation Thomas Lüem Partner AG
  2019, Klima ZH — Vierfassaden-Anlage 491 kWp vertikal, Gesamtanlage **603 kWh/kWp** = ~60-65 % Dach,
  **PR 87,8 %**, Eigenverbrauch 32 %, Saison Sommer:Winter ≈ 4:1 mit hoeherem Winteranteil; ⚠ CHF 2019),
  `en-lueftung-kuehlung-zh` (established; EN-105 Lueftung [WRG ≥70 %/75 %, Luftgeschw. ≤2 m/s + Kanaele
  3-7 m/s, Kanaldaemmung 3-10 cm] + EN-110-ZH Kuehlung [≤12 W/m² ODER Kaelteerzeugung ODER PV-Deckung,
  θ_CW ≥14/10 °C, EER/SIA 382/1]; ⚠ seit 1.1.2026 EVEN, EN-110-PDF abgelaufen).
- **FAQ +2 → 22 Kernfragen (F1-F22):** **F21** «Wie viel weniger Strom bringt PV an der Fassade?»
  (~603 kWh/kWp = 60-65 % des Dachs, flacheres Jahresprofil, BIPV-Mehrwert) — schliesst die quantitative
  Fassaden-Ertragsluecke aus F20; **F22** «Brauche ich fuer Kuehlung/Klimaanlage einen Nachweis?»
  (EN-110, ≤12 W/m²/PV-Deckung, hohe Kaltwassertemperatur, sommerlicher Waermeschutz zuerst).
- **Themenartikel:** `pv-solar-technologien` (Fassaden-Ertrag quantitativ ergaenzt), `energienachweis-zh`
  (neue Sektion EN-105/EN-110 Kerngrenzwerte). ZH-EN-Formularmatrix damit vollstaendig destilliert.
- **Register:** destillate/INDEX (+2), pdf-inventar (PV*SOL + EN-105/110 [x]), QUESTIONS (E5 Fassade +
  E9 EN-105/110 geschlossen), wiki/INDEX (FAQ 20→22).

## 2026-06-20 — Run 13: Dach-Eignung (sonnendach.ch, FAQ F19) + Fassaden-PV & Begruenung (FAQ F20) + PV-Kosten
- **+3 Destillate:** `sonnendach-solarpotenzial-bfe` (established; BFE-Tool sonnendach.ch — 5 Eignungs-
  klassen nach Einstrahlung, Tool-Annahmen Wirkungsgrad 20 %/PR 80 %, reale Monatsproduktion
  Sommer ≈ 7,5× Winter, Verguetung 14 Rp), `greenpv-fassade-pv-begruenung-hslu` (emerging; HSLU-
  Forschungsprojekt GreenPV — Fassaden-PV opak 20 %/transparent 14 %, NOCT 42 °C, Temp-Koeff −0,4 %/°C,
  Begruenung boden-/wandgebunden ≤30 kg/m²; Klimaanpassung Stadtklima), `pv-kosten-amortisation-praxis-ewz`
  (emerging; ewz-Projektkorrespondenz 2019 — CHF 1'600–2'460/kWp, Lebensdauer 25-30 J, Verschattungs-
  Tradeoff, PV+Gruendach; ⚠ Marktwerte veraltet).
- **BAUHERREN-FAQ F19 neu** «Taugt mein Dach fuer Solar — sonnendach.ch?» + **F20 neu** «Fassaden-PV
  oder Fassadenbegruenung?» → **20 Kernfragen F1-F20 belegt**.
- **Themenartikel `pv-solar-technologien`** um 3 Sektionen gewachsen: Dach-Eignung (sonnendach.ch),
  Fassaden-PV & Klimaanpassung, Kosten & Amortisation.
- **Erschoepft Prio-2-Solar-Block:** alle hoch-uebertragbaren Solar-PDFs (sonnendach, GreenPV, Vorgehen-PV)
  destilliert; offen nur noch redundante/Datenblatt-Quellen (Basel-Report, PV*SOL, PREFA, FEZ-Flyer).
- **QUESTIONS E5** weiter geschlossen (Dach-Eignung + Fassaden-PV); offen: Ertrag je Ausrichtung/Neigung,
  quantitative Fassadenertraege, aktuelle CHF/kWp (Swissolar-Marktbericht).
- Register nachgefuehrt: destillate/INDEX, pdf-inventar (Prio-2-Block), wiki/INDEX, QUESTIONS.

## 2026-06-19 — Run 12: PV-Ertrag/Eigenverbrauch (FAQ F18) + Indach-Ausfuehrung + geringfuegige Umbauten
- **Befund:** Das Inventar (2026-06-05) hatte mehrere Solar-/PV-PDFs im SharePoint **nicht erfasst** —
  neuer Prio-2-Block im `pdf-inventar.md` angelegt; 4 davon heute destilliert.
- **+3 Destillate:** `pv-ertrag-eigenverbrauch-praxis` (established; zwei reale CH-Reports — SolarApp
  Einsiedeln Indach 7,9 kWp/981 kWh/kWp/EV 44 % + EnergieSchweiz Diemtigen 6 kWp/~1'025 kWh/kWp/EV ~8 %;
  Saisonalitaet 3-4×, Eigenverbrauchs-Hebel), `sunskin-roof-indach-planung` (emerging; Eternit Indach-
  Eckwerte Neigung 10-60°/Hinterlueftung 60 mm/Schnee-Wind/NIN/Blitzschutz), `energienutzungs-
  deklaration-geringfuegige-umbauten-zh` (established; Schwellen ≤200k & ≤30 % GVZ + Umbau-U-Werte).
- **BAUHERREN-FAQ F18 neu** «Wieviel Strom bringt meine PV-Anlage / Eigenverbrauch?» → **18 Kernfragen
  F1-F18 belegt**. **F12 geschaerft** (geringfuegiger Umbau = Deklaration statt Vollnachweis).
- **Themenartikel `pv-solar-technologien`** um Ertrag/Eigenverbrauch + Indach-Ausfuehrung gewachsen.
- **Geschlossen:** QUESTIONS **E5** (kWh/kWp + Eigenverbrauch) und **B2** (geringfuegige Umbauten).
- Register nachgefuehrt: destillate/INDEX, pdf-inventar (Prio-2-Block), raw/_INGESTED, wiki/INDEX, QUESTIONS.

## 2026-06-18 — Run 11: FAQ vollstaendig (F6 WP-Systemvergleich) + swissolar Kap. 4-7 + Minergie-Zertifizierung
- **+2 Destillate:** `minergie-zertifizierung-workflow` (established; Nachweiskurs Teil 2/3 — Label-
  Plattform, Antrags-Checkliste, WPesti/PVopti/SoWs-Tools, Pruefprozess AS↔ZS prov.→def. Zertifikat,
  MKZ-Optimierung) und `waermepumpe-systemvergleich` (emerging; JAZ-Richtwerte Luft ~3 / Sole ~4,5 /
  Wasser ~5 + Entscheidungslogik WP/Fernwaerme/Pellets — ⚠ Richtwerte, projektgenau via WPesti/SIA 384/3).
- **swissolar-STP vollst. (Kap. 4-7 ergaenzt):** Batteriespeicher RF1/SNR 460712, Brandmauer Module
  1,0 m / 0,3 m hochziehen, integrierte PV >1'200 m² RF1-Unterlage, RWA-Abstand, **Feuerwehr: Bauherren-
  Pflicht zur Info + ab 30 kW Orientierungsplan in Einsatzplaene**, Systemdoku SN EN 62446-1,
  Naturgefahren SIA 261:2020. Quelle damit erschoepft (nur noch Anhang-Skizzen 7.3.x).
- **BAUHERREN-FAQ F6 neu** «Welches Heizsystem — WP/Fernwaerme/Pellets?» → **alle 17 Kernfragen F1-F17
  belegt** (Backlog nur noch Vertiefungen). **F16 (PV-Brandschutz) geschaerft** (Feuerwehr-Pflicht,
  ≥30 kW Einsatzplan, Brandmauer 1,0 m, Batteriespeicher).
- **Wiki gewachsen:** `heizleistung-und-waermeerzeuger.md` +WP-Systemwahl-Abschnitt (JAZ-Tabelle +
  Entscheidungslogik, F6 ✓). INDEX: FAQ 17/17, neue Artikel/Destillate gelistet.
- **Register:** destillate/INDEX (+2, swissolar/Nachweiskurs vollst.), QUESTIONS (E-F F6 ✓, E10 Kap. 4-7 ✓),
  pdf-inventar (Nachweiskurs [x], swissolar [x]), curriculum (B5 F6 ✓, B7 neu ✓, C3 vollst., M1 17/17),
  _INGESTED (29 Destillate). Output `outputs/2026-06-18_energie-run11.md`.

## 2026-06-17 — Run 10: Minergie-Nachweiskurs 2023 (MKZ/THGE) + Fallstudie → FAQ F8 Netto-Null
- **+2 Destillate:** `minergie-nachweiskurs-2023-mkz-thge` (established; Minergie-2023-Anforderungen,
  MKZ-Formel, **THGE-Grenzwerte je Gebaeudekategorie** MFH 11 / Spitaeler 17 kg CO₂-eq/m²·a, Klimapfad
  SIA 390/1 9 kg, nutzbare-Dachflaeche-Logik, Hitzeschutz Klima 2035) und `minergie-fallstudie-maison-
  climat` (emerging; gebautes Plusenergie-MFH Biel 2022, Nachweis-Kennzahlen; ⚠ Uebungswerte teils angepasst).
- **BAUHERREN-FAQ F8 neu** «Netto-Null konkret fuer meinen Neubau?» (Betrieb fossilfrei + THGE begrenzen;
  groesster Hebel baulich; Plusenergie-Beispiel) → **16 belegte Antworten** (F1-F5/F7-F17); offen nur F6.
  **F5 (Minergie) geschaerft** (konkrete 2023-Verschaerfungen + THGE je Kategorie).
- **Wiki gewachsen:** `graue-energie.md` → **established**, +THGE-Grenzwerte-Tabelle je Kategorie +
  bauliche Hebel + Klimapfad SIA 390/1. `minergie-standards.md` +MKZ-Formel +2023-Neuerungen (90 % Q_h,li,
  Monitoring 1'000 m², 60 % E-Parkplaetze, Spitzenlast 80 kW/10 % fossil).
- **Register:** INDEX/QUESTIONS/curriculum (D1 ✓, M1 ✓), pdf-inventar (Fallstudie [x], Nachweiskurs [~]),
  _INGESTED (26 Destillate). Output `outputs/2026-06-17_energie-run10.md`.

## 2026-06-13 — Run 9: CLT-Schallschutz + Praxisbeispiel zirkulaeres Bauen
- **+2 Destillate:** `clt-schallschutz-stora-enso` (established; Stora-Enso-Doku Kap. 4 Schallschutz —
  Innenwand V1-11 + Trennwand V1-8 + Deckenelement V1-6; R_w 34-58 / Trittschall L'_n,w 60→46;
  Hebel Vorsatzschale/Beschwerung/abgehaengte Decke; SIA-181-Bauwert/Flanke als Einordnung markiert).
  Damit ist die CLT-Stora-Enso-Doku (Kap. 1-4) vollstaendig erschlossen. Und `werkhof29-zirkulaeres-
  bauen-stroh-lehm` (emerging; baubuero-in-situ-Dossier ZH 2024 — Stroh/Lehm/Re-use/Areal-PV als
  gebautes graue-Energie-Beispiel zu F9).
- **BAUHERREN-FAQ F17 neu** «Wird mein Holzbau hellhoerig — CLT fuer MFH/Pflegeheim?» → **15 belegte
  Antworten** (F1-F5/F7/F9-F17; F6/F8 offen). Frontmatter +2 Quellen, `last_updated` → 2026-06-13.
- **Wiki `holzbau-bauphysik-clt.md`** um eine Schallschutz-Sektion gewachsen (Tabelle Wand/Decke +
  SIA-181-Hinweis).
- **QUESTIONS:** E8-Schallschutz ✓; neu **E11** (SIA 181 + Holzbau-Flanke) und **E12** (Naturdaemmstoffe
  Stroh/Lehm + ZEV/Solarsplit). **curriculum** A6 Schallschutz ✓, neu **A7** Naturdaemmstoffe/zirkulaer.
- Register: destillate/INDEX (+2), wiki/INDEX, raw/_INGESTED (24 Destillate), pdf-inventar (CLT [x]
  vollst., Werkhof29 [x]). Output `2026-06-13_energie-run9.md`.

## 2026-06-12 — Run 8: CLT-Bauteilkatalog + PV-Brandschutz
- **+2 Destillate:** `clt-bauteilkatalog-stora-enso` (established; Stora-Enso-Doku Kap. 4 — Aussenwand
  V1-9 S. 40-57 + Dach V1-6 S. 166-176, je REI·U·Rw + Schichttabelle; EPS vs. Mineralwolle/Holzfaser,
  GKF hebt REI, Installationsebene REI 120 + Rw 43; Innen-/Trennwand/Decke S. 98-164 offen) und
  `swissolar-stp-vkf-brandschutz-solaranlagen` (established; STP V4.00 12/2022 S. 1-16 — DC kein PVC/
  RF1-Rohr, WR-Standort, Kennzeichnung; Basis VKF-BSM 2001-15).
- **BAUHERREN-FAQ F16 neu** «Brandschutz Solaranlage (PV)» → **14 belegte Antworten** (Status
  established); **F15 geschaerft** um die konkreten CLT-Aufbauten. Frontmatter +2 Quellen,
  `last_updated` 2026-06-11 → 2026-06-12.
- **2 Wiki-Artikel:** `holzbau-bauphysik-clt.md` (+Bauteilkatalog-Tabellen Wand/Dach, emerging →
  established) und `pv-solar-technologien.md` (+Brandschutz-Sektion, Backlinks F16/Holzbau).
- **Register:** destillate/INDEX (+2), wiki/INDEX (FAQ 14, Holzbau established), QUESTIONS (E8 ✓,
  E10 neu ✓), pdf-inventar (CLT/swissolar [~]), curriculum (A6 Bauteilkatalog ✓, C3 ✓),
  _INGESTED (22 Destillate). Output `outputs/2026-06-12_energie-run8.md`.
- **Naechster Lauf:** CLT-Schallschutz (Innen-/Trennwand/Decke), F6 WP-JAZ-Matrix, Foerderung ZH
  S. 30-38 (Minergie-ECO/Solarthermie), F8 Netto-Null.

## 2026-06-11 — Run 7: Holzbau-Bauphysik (CLT) + Private Kontrolle ZH
- **+2 Destillate:** `clt-bauphysik-stora-enso` (established; Stora-Enso-Doku Kap. 1-3, S. 4-37 —
  λ_CLT 0,12, 100 mm CLT pur U ≈ 1,0, ~180 mm Zusatzdaemmung fuer U ≤ 0,17, luftdicht ab 3 Lagen
  ohne Folie n₅₀ 0,6, feuchtevariable Dampfbremse; Kap. 4 Bauteilkatalog S. 38-178 offen) und
  `private-kontrolle-zh` (established; Liste der Befugten Kt. ZH April 2025 — wer zeichnet den
  EN-Nachweis, EN-Formular-Matrix, BBV I §4-7, Minergie-Shortcut).
- **BAUHERREN-FAQ F15 neu** «Lohnt sich Massivholz (CLT) energetisch?» → 13 belegte Antworten;
  **F12 geschaerft** um die Private-Kontrolle-Mechanik. Frontmatter +2 Quellen, `last_updated`
  2026-06-09 → 2026-06-11.
- **+1 Themenartikel** `wiki/holzbau-bauphysik-clt.md` (emerging); `wiki/graue-energie.md` um die
  «Holzbau-Pointe» (Holz daemmt nicht besser — Vorteil allein graue Energie) gewachsen.
- **Curriculum A6 ✓** (CLT/Holzbau-Bauphysik), **B2 angereichert** (Private Kontrolle), M1 → 13.
  QUESTIONS E8/E9 ✓. Register (destillate-INDEX +2, wiki-INDEX +1, pdf-inventar 2×, _INGESTED 20).
- **Treue:** λ 0,12 = Produktwert EN ISO 10456 (SIA-279-Vorbehalt); EVEN-Hinweis bei Privater
  Kontrolle (seit 1.1.2026); Brandschutz/Schallschutz Holzbau verwiesen, nicht gedoppelt.
- Output: `outputs/2026-06-11_energie-run7.md`.

## 2026-06-10 — Projektvermerk: KISPI 2619 Auflage II.8 → EN-ZH/EN-105/EN-110-ZH
- **Fallanwendung in `wiki/energienachweis-zh.md`**: neuer Abschnitt «Fallanwendung — KISPI 2619
  (Bauentscheid-Auflage II.8)» mit verifizierter Formularzuordnung **II.8.a → EN-ZH** (Deckblatt/
  EVEN), **II.8.b → EN-105** (Lueftung/Klima neu), **II.8.c → EN-110-ZH** (Kuehlung/umbaubetroffene
  Anlagen). `last_updated` 2026-06-07 → 2026-06-10.
- **Lehrstueck festgehalten:** der spezialisierte Sub-Agent hatte zunaechst plausible, aber falsche
  Formularnummern erfunden; korrekt erst nach Abgleich mit dieser KB + amtlichen ZH-Quellen
  (Rule `identifikatoren-verifizieren`). Verweis auf Skill `auflagebereinigung` (Fall 2619) gesetzt.
- **Treue:** Auflagen-Wortlaut bewusst NICHT reproduziert (nur belegte Formularzuordnung);
  EN-105/EN-110-ZH waren bereits in der Tabelle «Welche Nachweise wann» belegt.

## 2026-06-10 — Run 6: graue Energie (F9) + Heizungsersatz-Verfahren ZH (F14) + Bauteilekatalog Kap. 4 + 2. Nachweis-Beispiel
- **3 neue Destillate + 1 gewachsenes**: (1) **«Betriebsenergie» / graue Energie** (Lehrmittel S. 116)
  → neues `graue-energie-betriebsenergie` (graue Energie 20-30 % der Betriebsenergie/50 J; Tragstruktur
  groesster Posten; Holz < Massiv; Lehrbeispiel 1:9); (2) **WTA-Formular waermetechnische Anlagen
  Kt. ZH 01-2024** → neues `wta-formular-zh-waermetechnische-anlagen` (Verfahren + Beilagen je
  Waermequelle, fossil-Verbot §10a, EN-LCC-ZH/EN-120; established); (3) **Enerhaus Minergie-
  Musternachweis EFH Umbau** → neues `enerhaus-minergie-nachweis-efh-umbau` (Systemnachweis, WRG-Hebel
  70→60 kWh/m²); (4) **Bauteilekatalog (BFE 2002) gewachsen** um **Kap. 4 Standardaufbauten** (Boeden
  B1-B21 / Waende W1-W26) → established, schliesst E2.
- **FAQ +2 neu**: **F9** «graue Energie / Sanieren vs. Neubau» und **F14** «Heizung ersetzen — was
  einreichen, ist fossil erlaubt?». FAQ nun **12 belegt** (F1-F5, F7, F9, F10, F11, F12, F13, F14).
- **+1 Themenartikel** `wiki/graue-energie.md` (emerging); gewachsen: `heizleistung-und-waermeerzeuger`
  (Abschnitt Heizungsersatz-Verfahren ZH).
- **Register**: INDEX destillate (+3, 18 total) / wiki (+1), QUESTIONS (E2 ✓, E6/E7/E-F), pdf-inventar
  (3× [x]), curriculum (A1/B6 vollst., D2/D4/M1), _INGESTED (+3). Output `2026-06-10_energie-run6.md`.
- **Treue**: Lehrmittel-Grobwerte + 2010er-Beispiel mit ⚠ markiert; KBOB/SIA 2032 als fehlende
  belastbare graue-Energie-Quelle benannt; Brandschutz→`brandschutz`, Energierecht→`baurecht` verwiesen.

## 2026-06-09 — Run 5: Minergie 2023-Update (THGE) + EN-2 Waermebruecken/EBF + Naturdaemmstoffe/VIP + sommerl. Waermeschutz
- **3 PDFs destilliert/aktualisiert**: (1) **SIA 2001** vollst. (S. 15-17: Holzfaser/Zellulose/
  Holzwolle/**VIP λ 0,009**/WDVS) → `sia-2001-waermedaemmstoffe-lambda` (established); (2) **EnFK EN-2
  «Waermeschutz von Gebaeuden»** (Feb 2013, vollst.) → neues `enfk-en-02-waermeschutz-2013`
  (Nachweiswege, Waermebruecken Ψ, **EBF-Definition**, sommerl. Waermeschutz; established); (3)
  **Minergie «Besser planen» Ueberarbeitung 09/2023** → `minergie-besser-planen-bauen` auf Stand 2023
  gehoben (Kennzahl **51/46/29**, neues Kriterium **THGE 11 kg CO₂/m²·a**, Wetterdaten 2035).
- **FAQ +1 neu, +1 geschaerft**: **F11** «Hitzeschutz im Sommer» neu belegt (g-Wert 0,1-0,15,
  aussenliegend/beweglich, Speichermasse, Nachtauskuehlung); **F5** Minergie auf Stand 2023
  aktualisiert (55/50/35 → 51/46/29 + THGE). FAQ nun **10 belegt** (F1-F5, F7, F10, F11, F12, F13).
- **+1 Themenartikel** `wiki/sommerlicher-waermeschutz.md` (emerging); gewachsen:
  `minergie-standards` (Stand 2023 + THGE), `daemmstoffe-lambda` (Naturdaemmst./VIP/WDVS, established),
  `u-werte-grenzwerte-ch` (EBF-Def. + **Versionsabgleich EN-2 2013 ↔ EN-102 2018** geflaggt).
- **Widerspruch dokumentiert (E-D8):** Q_h,li-Grundwerte zwischen EN-2 (2013) und EN-102 (2018)
  identisch; abweichend Fenster-Grenzwert (1,3→1,0), Umbau-Faktor (1,25× ↔ 1,5×) und Ψ-Fensteranschlag
  (0,10 ↔ 0,15) — als zu pruefen markiert statt still verrechnet.
- Register: INDEX (destillate +1, wiki +1), pdf-inventar (3× [x]), QUESTIONS (E1 ✓, E3/E-D8/E-F ~),
  curriculum (A3/B3 vollst.), _INGESTED (15 Destillate), Output `2026-06-09_energie-run5.md`.

## 2026-06-08 — Run 4: Heizleistung/Waermeerzeuger + SIA-380/1-Standardnutzung + Foerderung ZH 2026
- **4 PDFs + 1 Web-Quelle destilliert**: BFE «Ermittlung der Waermeerzeugerleistung» (Nr. 2781,
  12.2015, vollst., established), SIA 380/1 Standardnutzungswerte Tab. 24/25 (Warmwasser Qww,
  established), Rechenbeispiel Monatsbilanz Heizwaermebedarf (Buero ZH, established), Grundsaetze
  energieeffizientes Bauen (emerging), **Foerderprogramm Energie Kt. ZH 2026** (Web zh.ch,
  Version 01.01.2026, S. 1-29, established).
- **FAQ +2 belegte Antworten**: **F7** (Foerderbeitraege Kt. ZH 2026 mit CHF-Tabelle + Datenstand),
  **F13** (Wie gross muss meine Heizung sein? — spez. Heizleistung). FAQ nun **9 belegt** (F1-F5, F7,
  F10, F12, F13).
- **2 neue Themenartikel**: `wiki/foerderung-energie-zh.md`, `wiki/heizleistung-und-waermeerzeuger.md`.
- **Datenstand-Web (2026-06-08):** Foerdersaetze ZH 2026 verifiziert aus amtlichem PDF —
  Luft-Wasser-WP CHF 2'900, Erdsonden-/Grundwasser-WP CHF 6'800, Fernwaerme CHF 5'200 (je ≤15 kWth),
  Daemmung CHF 40/m² (+Bonus 60/m²), GEAK Plus CHF 1'000/1'500; ⚠ Rahmenkredit 2026-29.
- Register: INDEX (destillate +5 / wiki +2), QUESTIONS (E-D7/E-H1/E-H2 ✓), pdf-inventar (4× [x]
  + Web-Sektion), curriculum (A2 vollst., B5/D3 ✓), _INGESTED (14 Destillate). Output: `outputs/2026-06-08_energie-run4.md`.

## 2026-06-07 — Run 3: PV-Typen + EN-ZH-Nachweis (EVEN) + λ-Werte Daemmstoffe
- **3 PDFs destilliert**: TEC21-Dossier «Solares Bauen» 5/2012 (PV-Typen kristallin/Duennschicht/
  Graetzel/Hybrid + Integration, established), EN-ZH-Nachweis-Deckblatt (Baudir. ZH Juli 2022,
  established), SIA 2001 Waermedaemmstoffe (λ-Bandbreiten je Materialklasse, emerging).
- **FAQ +2 belegte Antworten**: F4 (welcher PV-Typ), F12 (welche Energienachweise im Kt. ZH);
  F10 um EVEN-Datenstand ergaenzt. FAQ nun **7 belegt** (F1-F5, F10, F12).
- **3 neue Themenartikel**: `wiki/pv-solar-technologien.md`, `wiki/energienachweis-zh.md`,
  `wiki/daemmstoffe-lambda.md`.
- **Datenstand-Web (2026-06-07):** Kt. ZH Energienachweis seit **1.1.2026 elektronisch ueber EVEN
  (energievollzug.ch)** — PDF-Formulare abgeloest; ⚠-Markierung gesetzt. Foerderprogramm ZH 2026 unveraendert.
- Register: INDEX (destillate +3 / wiki +3), QUESTIONS (E1/E5/E-D6 ✓, neu E-D8), pdf-inventar
  (3× [x] + Dublette), curriculum (B1/C1 ✓), _INGESTED (9 Destillate).
- Output: `outputs/2026-06-07_energie-run3.md`.

## 2026-06-06 — Run 2: U-Wert-/Qh-Grenzwerte + Minergie + PV-Pflicht belegt
- **4 PDFs destilliert** (3 established, 1 emerging): EN-102 Waermeschutz (EnFK Dez 2018, vollst.),
  EN-104 Eigenstromerzeugung (10 W/m²-Regel), Minergie-Wissen «Besser planen», Bauphysik
  Heizwaermebedarf-Kennwerte (Gebaeudehuellzahl).
- **FAQ +3 belegte Antworten**: F3 (U-Wert Pflicht/empfohlen), F5 (Minergie vs. Gesetz),
  F10 (PV-Pflicht/Groesse). FAQ nun 5 belegt.
- **2 neue Themenartikel**: `wiki/u-werte-grenzwerte-ch.md`, `wiki/minergie-standards.md`.
- Bestehendes SIA-380/1-Destillat auf established gehoben + querverlinkt.
- Datenstand-Web: Kt. ZH EnerG seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025, ZH-Umsetzung
  ausstehend — ⚠-Markierung gesetzt.
- Register: INDEX (destillate/wiki), QUESTIONS, pdf-inventar (4× [x]), curriculum, _INGESTED.
- Output: `outputs/2026-06-06_energie-run2.md`.

## 2026-06-05 — KB Energie angelegt (strategischer taeglicher Loop)
- Eigene KB `wissen/energie/` mit **Destillate-Layer** (PDF→MD) erstellt.
- Seed-Inventar `training/pdf-inventar.md`: 30 Prioritaets-Quellen aus PL-04 erfasst.
- **2 echte Destillate** aus real gelesenen PDFs:
  - `destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` (BFE 2002, S. 1-10).
  - `destillate/sia-380-1-heizwaermebedarf-berechnung.md` (Qh-Formel + 11 Schritte).
- `wiki/BAUHERREN-FAQ.md` mit 2 belegten Antworten (F1 Daemmung-Nutzen, F2 Effizienz-Prioritaet)
  + Backlog F3-F9.
- Schema/Register: `CLAUDE.md`, `training/PROGRAMM.md` (taeglich), `training/curriculum.md`,
  `destillate/INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `outputs/`.
- Scheduled Task `energie-training` (taeglich) angelegt; Agent `energie-berater` auf diese KB
  ausgerichtet; Bruecke aus `wissen/planungsgrundlagen/wiki/energie-uebersicht`.
