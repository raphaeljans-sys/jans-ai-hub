# Curriculum — KB Energie

Themenfahrplan fuer den taeglichen Loop. Jede Lektion = beantwortbares Bauherren-relevantes Thema.
Status: `[ ]` offen · `[~]` begonnen · `[x]` belegt (mit Datum). Reihenfolge = Prioritaet.

## Block A — Fachgrundlagen Gebaeudehuelle
- [x] A1 U-Wert verstehen & bestimmen (BFE-Bauteilekatalog) — Grundlagen destilliert 2026-06-05;
  λ-Bandbreiten Daemmstoffe belegt 2026-06-07 via SIA 2001 → `[[daemmstoffe-lambda]]`;
  **Bauteilekatalog Kap. 4 (Standardaufbauten Boeden B1-B21 / Waende W1-W26) belegt 2026-06-10**
  → `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`. **vollstaendig** (inhomogene Bauteile/Daecher offen).
- [x] A2 Heizwaermebedarf SIA 380/1 — Formel + 11 Schritte (2026-06-05); Grenzwerte Q_H,li +
  Gebaeudehuellzahl belegt 2026-06-06 via EN-102 + Bauphysik-Kennwerte → `[[u-werte-grenzwerte-ch]]`;
  Beispielrechnung (Monatsbilanz Buero) + Standardnutzung Tab. 24/25 belegt 2026-06-08
  → `[[sia-380-1-beispiel-monatsbilanz]]`, `[[sia-380-1-standardnutzungswerte-tab24-25]]`. **vollstaendig.**
- [x] A3 Waermedaemmstoffe waehlen — λ/ρ/μ/BKZ je Materialklasse + Naturdaemmstoffe/VIP/WDVS belegt
  (2026-06-07 + 2026-06-09) via SIA 2001 vollst. → `[[daemmstoffe-lambda]]`. **vollstaendig** (Bemessungswerte-Zuschlag SIA 279 offen).
- [x] A4 Waermebruecken — Grenzwerte Ψ/χ (Typ 1/2/3/5/6) belegt via EN-102 + EN-2 (Versionsabgleich
  2013↔2018 dokumentiert) → `[[u-werte-grenzwerte-ch]]`; **BFE-Waermebrueckenkatalog Gruppe 1.1
  Balkonplatte belegt 2026-07-12** (Primaerdokument via Read/PDF-Bildextraktion gelesen: durchbetoniert
  Ψ 0,6-1,05 vs. Grenzwert 0,30; Stahlkorb 0,20-0,26; Dorne 0,06-0,14) → `[[waermebrueckenkatalog-bfe-balkonplatte]]`
  (FAQ F48). **Gruppe 4.1 Fensteranschluss + Gruppe 3.4 Sockel ebenfalls belegt 2026-07-12** (Ψ
  0,08-0,36 bzw. 0,02-0,82 je nach Ausfuehrung/Daemmtiefe) → `[[waermebrueckenkatalog-bfe-fensteranschluss]]`,
  `[[waermebrueckenkatalog-bfe-sockel]]` (FAQ F49/F50). Damit die drei haeufigsten Gebaeudeanschluesse
  (Balkon/Fenster/Sockel) mit konkreten Zahlen belegt. **Gruppe 1.2 Flachdach mit Vordach + Gruppe
  1.3 Flachdach mit Bruestung ebenfalls belegt 2026-07-12** (Vordach ungedaemmt Ψ 0,40-0,53 vs.
  Dorn-Anschluss praktisch null; Bruestung: Material dominiert — Backstein ungedaemmt bereits unter
  Grenzwert 0,02-0,09, Stahlbeton auch gedaemmt hoch 0,12-0,26) → `[[waermebrueckenkatalog-bfe-flachdach-vordach]]`,
  `[[waermebrueckenkatalog-bfe-flachdach-bruestung]]` (FAQ F51/F52). Damit Gruppe 1 (Flachdach-Anschluesse)
  vollstaendig. **Gruppen 3.1 (Flachdach ohne Vordach), 3.2/3.3 (Steildach Traufe/Ort), 3.5
  (Auskragung), 4.2 (Rollladenkasten) und 5.1-5.3 (Fensterleibung/-bruestung/-sturz) ebenfalls
  belegt 2026-07-13** (Flachdach ohne Vordach Ψ 0,44-0,60 ungedaemmt vs. negativ bei durchgehender
  Daemmung; Steildach durchweg unkritisch −0,01 bis −0,16; Auskragung Ψ 0,04-0,29 je
  Unterlagsbodendaemmung; Rollladenkasten Ψ 0,18-0,26; Fensterleibung/-bruestung/-sturz
  Grenzwert 0,10, ungedaemmte Fensterbank +0,20 groesster Einzelfehler) →
  `[[waermebrueckenkatalog-bfe-flachdach-ohne-vordach]]`, `[[waermebrueckenkatalog-bfe-steildach-traufe-ort]]`,
  `[[waermebrueckenkatalog-bfe-auskragung]]`, `[[waermebrueckenkatalog-bfe-rollladenkasten]]`,
  `[[waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz]]` (FAQ F53-F57). **Gruppe 6
  (Stuetzen/Fassadenanker) belegt 2026-07-13** (durchstossende Stahlstuetze X 0,20-0,37 W/K teils
  ueber Grenzwert 0,30 W/K, Stahlbeton-Stuetze nur 0,05-0,12 W/K; Fassadenanker als ΔU-Zuschlag:
  Holzlattung +0,02-0,03 W/(m²·K), Alu mit thermischer Trennung je nach Ankerraster +0,02-0,19
  W/(m²·K)) → `[[waermebrueckenkatalog-bfe-stuetzen-fassadenanker]]` (FAQ F58). **Gruppe 2
  (Geschossdecke/Kellerdecke/Innenwandanschluss, vollstaendig) ebenfalls belegt 2026-07-13**
  (Innenwand-Auflager auf Geschossdecke durchbetoniert Ψ 0,63-0,89 — hoechster Einzelwert des
  ganzen Katalogs — vs. Stahlkorb 0,07-0,15; Wandanschluss Kellerdecke 0,23-0,26 bzw. −0,02-0,14;
  Innenwandanschluss Aussenwand 0,11-0,24) → `[[waermebrueckenkatalog-bfe-geschossdecke-kellerdecke]]`
  (FAQ F59). **Damit A4 wirklich vollstaendig — alle sechs Hauptgruppen des BFE-Waermebrueckenkatalogs
  mindestens einmal zahlenbasiert belegt** (einzelne Ausfuehrungsvarianten innerhalb der Gruppen
  bleiben offen, z.B. Gruppe 6.2 ATK/Clickpress/Halfen-Spezialanker S. 119-126).
- [~] A5 Fenster: U-Wert (Aw) + g-Wert — g_tot 0,1-0,15 + sommerl. Waermeschutz belegt 2026-06-09 via
  Minergie 2023 + EN-2 → `[[sommerlicher-waermeschutz]]` (FAQ F11); offen: eigener Fenster-Artikel U_w/Zielkonflikt.
- [x] A6 CLT/Holzbau-Bauphysik — belegt 2026-06-11 via Stora-Enso-Doku Kap. 1-3 (Waerme λ 0,12 /
  Luftdicht folienfrei n₅₀ 0,6 / Feuchte s_d feuchtevariabel) → `[[holzbau-bauphysik-clt]]`,
  `[[clt-bauphysik-stora-enso]]` (FAQ F15). **Bauteilkatalog Kap. 4 belegt 2026-06-12** (Aussenwand
  V1-9 + Dach V1-6: REI·U·Rw) → `[[clt-bauteilkatalog-stora-enso]]`. **Schallschutz Innenwand/
  Trennwand/Decke belegt 2026-06-13** (R_w 34-58, L'_n,w 60→46) → `[[clt-schallschutz-stora-enso]]`
  (FAQ F17). **SIA-181:2020-Anforderungswerte belegt 2026-06-24** → `[[sia-181-schallschutz-anforderungswerte]]`,
  `[[schallschutz-sia181]]` (FAQ F25). Offen: Flankenuebertragung CH (Lignum-Anschlussdetails).
- [~] A7 Naturdaemmstoffe/zirkulaeres Bauen in der Praxis — Seed 2026-06-13 via Werkhof29-Dossier
  (Stroh-Daemmung, Lehmputz, Re-use, Areal-PV) → `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]`.
  Offen: Bemessungs-λ Stroh, Brand/Feuchte, ZEV/Solarsplit-Modell.
- [x] A8 Schallschutz im Hochbau SIA 181:2020 — Anforderungswerte belegt 2026-06-24 via Zusammenfassung
  baumann akustik & bauphysik (Luftschall Di / Trittschall L' / Haustechnik LH / Aussenlaerm De je
  Empfindlichkeit × Stoergrad; erhoeht +4 dB innen / +3 dB aussen; EFH/Reihen-EFH/STWEG = erhoehte
  Aussenlaerm-Anforderung; Bauwert ≠ Laborwert/Flanke) → `[[sia-181-schallschutz-anforderungswerte]]`,
  `[[schallschutz-sia181]]` (FAQ F25). **Flanken-/Nachweis-Mechanik belegt 2026-06-28** (Lignum/BFH-AHB
  2008: R_w↔R'_w, K_P/K_F, 12 Nebenwege EN 12354, C/C_tr-Werte, Holzbau-Datenluecke) →
  `[[lignum-schallschutz-holzbau-flankenuebertragung]]` (F25/F17 geschaerft). Offen: konkrete Lignum-
  Konstruktionsdetails + gemessene K_F-/Bauteilwerte (LIT-Doku).

## Block B — Nachweis & Recht (ZH)
- [x] B1 ZH-Energienachweis EN-ZH: welches Formular wann — belegt 2026-06-07 via EN-ZH-005
  → `[[energienachweis-zh]]` (FAQ F12). ⚠ Vollzug seit 1.1.2026 elektronisch (EVEN, energievollzug.ch).
- [~] B2 Private Kontrolle / wer unterschreibt den EN-Nachweis — belegt 2026-06-11 via Liste der
  Befugten (BBV I LS 700.21 §4-7) → `[[private-kontrolle-zh]]` (FAQ F12 geschaerft: Befugter zeichnet,
  Minergie-Label = Anforderungen erfuellt, EN-Formular-Matrix). Offen: Energienutzungs-Deklaration
  bei geringfuegigen Umbauten (wann genuegt sie?).
- [x] B3 Minergie / Minergie-P / -A / -ECO: Stufen, Nutzen, Aufwand — belegt + auf Stand 2023
  aktualisiert 2026-06-09 via Minergie-Ueberarbeitung 09/2023 (Kennzahl 51/46/29, THGE 11 kg/m²,
  Wetterdaten 2035) → `[[minergie-standards]]` (FAQ F5). **vollstaendig.**
- [~] B4 MuKEn-Umsetzung Kt. ZH — EnerG seit 1.9.2022 (MuKEn 2014); Vollzug seit 1.1.2026 ueber
  EVEN (2026-06-07, Web) → `[[energienachweis-zh]]`. **Inhaltliche Aenderungen MuKEn 2025 belegt
  2026-07-12** (verabschiedet 29.08.2025: Fossilverbot Neubau, PV-Pflicht 20 W/m² EBF, neues
  Graue-Energie-Modul Teil G, Umsetzungshorizont 2025-2030) → `[[muken-2025-verabschiedet]]` (FAQ F47).
  Offen: konkreter ZH-Umsetzungsstand/Gesetzesaenderung (bei naechster Gelegenheit via `baurecht` pruefen).
- [x] B5 Waermeerzeugerleistung dimensionieren — belegt 2026-06-08 via BFE Nr. 2781
  → `[[bfe-waermeerzeugerleistung-2015]]`, `[[heizleistung-und-waermeerzeuger]]` (FAQ F13).
  **Heizsystem-Wahl WP↔Fernwaerme↔Pellets (JAZ-Richtwerte) belegt 2026-06-18** → `[[waermepumpe-systemvergleich]]`
  (FAQ F6). **CH-Primaerquelle Feld-JAZ + COP/SCOP/JAZ-Begriff belegt 2026-06-27** via BFE-Feldanalyse
  FAWA (236 Anlagen, S/W 3,5 · L/W 2,7) → `[[fawa-jaz-feldanalyse-waermepumpen]]` + EN-14825-Foliensatz
  → `[[cop-scop-jaz-waermepumpe-gruenenwald]]`; F6 + `[[heizleistung-und-waermeerzeuger]]` geschaerft.
  **Methode fuer projektgenaue JAZ belegt 2026-07-02** (WPesti/SIA 384/3:2021, gratis endk.ch, JAZ aus
  SIA-380/1-Nachweis + WP-Typ + Einbauart) → `[[sia-384-3-wpesti-jaz-methode]]`.
  **Moderne Feld-JAZ (drehzahlvariabel) belegt 2026-07-03** (WPZ Buchs/EnergieSchweiz, 13 Anlagen 2017-2019:
  LWWP inkl. WW 3,5/3,1/2,8 · SWWP 4,9/4,6/4,3 je Neubau/Sanierung/Altbau; SWWP ~30 % Vorsprung) →
  `[[wpz-buchs-feldmessung-jaz-2016-2019]]`. **CHF-Vollkostenvergleich belegt 2026-07-03** (EnergieSchweiz
  EFH/20 J: WP guenstigstes System, Investition ≠ Gesamtkosten) → `[[heizsysteme-vollkostenvergleich-energieschweiz]]`
  (FAQ **F30** neu). Offen nur noch: **noch aktuellere** Feldstatistik (Anlagen nach 2019), WPesti-Standardwerte.
- [x] B6 Waermetechnische Anlagen WTA-Formular — belegt 2026-06-10 via Kt.-ZH-Formular 01-2024
  → `[[wta-formular-zh-waermetechnische-anlagen]]` (FAQ F14: Heizungsersatz-Verfahren/Beilagen je
  Waermequelle + fossil-Verbot §10a). **vollstaendig.**
- [x] B7 Minergie-Antrag & Zertifizierung (Prozess) — belegt 2026-06-18 via Nachweiskurs Teil 2/3
  (Label-Plattform, Antrags-Checkliste, WPesti/PVopti, Pruefprozess AS↔ZS, prov.→def. Zertifikat)
  → `[[minergie-zertifizierung-workflow]]`. **vollstaendig** (Plattform-Bedienung im Detail = Online-Manual).

## Block C — Solar / PV
- [x] C1 PV-Typen-Entscheidungsbaum (kristallin/Duennschicht/Graetzel/Hybrid + Integration) —
  belegt 2026-06-07 via TEC21-Dossier «Solares Bauen» → `[[pv-solar-technologien]]` (FAQ F4).
- [x] C2 PV-Eignung/Ertrag bestimmen — belegt 2026-06-19/-22 via 3 SolarReports (Willerzell/Diemtigen/
  **Basel 60 kWp MFH**, ~826-1'025 kWh/kWp, EV 8-44 %) + uvek-gis/sonnendach (Eignungsklassen, F19) →
  `[[pv-ertrag-eigenverbrauch-praxis]]`, `[[sonnendach-solarpotenzial-bfe]]` (FAQ F18/F19).
  **Ertrag je Ausrichtung × Neigung belegt 2026-06-25** (CH-Richtwerte: Flachdach ~90 %, Ost/West
  90–95 %, Suedfassade ~70 %, Nord ~40 % vom Sued-30°-Optimum; Swissolar + solar-ratgeber.ch) →
  `[[pv-ertrag-ausrichtung-neigung-ch]]` (FAQ F26). **vollstaendig** (exakte kWh/kWp je Orientierung → sonnendach.ch/PVGIS).
- [x] C3 Brandschutz bei Solaranlagen — belegt 2026-06-12 via swissolar STP V4.00; **vollst. Kap. 1-7
  nachgezogen 2026-06-18** (Feuerwehr-Pflicht Bauherr + ≥30 kW Orientierungsplan, Brandmauer 1,0 m,
  Batteriespeicher RF1, RWA, Naturgefahren SIA 261:2020) → `[[swissolar-stp-vkf-brandschutz-solaranlagen]]`,
  `[[pv-solar-technologien]]` (FAQ F16 geschaerft). Bewertung/Detail → Skill `brandschutz`. **vollstaendig.**
- [x] C4 Indach-Planung & Ausfuehrung — belegt 2026-06-19/-22: Glas-Glas Sunskin (`solar-home.ch`) +
  **Alu-Solardachplatte PREFA** (ab 17°, 12,6 kg/m², keine Unterkonstr./Durchdringung) →
  `[[sunskin-roof-indach-planung]]`, `[[prefa-solar-indach-aluminium-dachplatte]]` (FAQ F4). **vollstaendig.**

## Block D — Nachhaltigkeit / Klima (strategisch)
- [x] D1 Netto-Null im Gebaeude — belegt 2026-06-17 via Minergie-Nachweiskurs 2023 (THGE-Grenzwerte je
  Kategorie + Klimapfad SIA 390/1 9 kg) + Fallstudie Maison Climat (Plusenergie) → FAQ **F8**,
  `[[minergie-nachweiskurs-2023-mkz-thge]]`, `[[minergie-fallstudie-maison-climat]]`. Offen: rechtl.
  Netto-Null-Definition Einzelgebaeude, KBOB-Kompensationsbilanz.
- [~] D2 Graue Energie / CO2 im Bauteil — Sanieren vs. Neubau — Groessenordnung + Tragstruktur-Hebel
  + THGE belegt 2026-06-10/-17 via Lehrmittel «Betriebsenergie» + Nachweiskurs (THGE-Grenzwerte je
  Kategorie, bauliche Hebel) → `[[graue-energie]]` (FAQ F9/F8). **KBOB-Faktenblatt graue THG-Emissionen
  belegt 2026-06-26** (9 Reduktionshebel, SIA-2032-Messgroessen kg CO₂-eq/m² EBF, «Restwert Bestand»,
  bis 40 % MFH, kommende Kantons-Grenzwerte Art. 45 EnG; Datenbasis KBOB-Oekobilanzdaten v8.0) →
  `[[kbob-graue-treibhausgasemissionen-2025]]`. Offen nur noch: konkrete kg CO₂-eq/m² je Bauteilaufbau
  (KBOB v8.0/SIA-2032-Vorprojektwerte, kostenpflichtig), Sanieren-vs-Neubau-Amortisationsschwelle.
- [x] D3 Foerderprogramme Kt. ZH — belegt 2026-06-08 (Stand 01.01.2026, Web); **2026 unveraendert
  bestaetigt 2026-06-23** (Mitteilung 24.10.2025). **CHF-Saetze VOLLSTAENDIG belegt 2026-06-26**
  (PDF S. 1-37: WP 2'900/6'800, Fernwaerme 5'200, Daemmung 40/+60, **Minergie-ECO 110/70/50**,
  **-P-ECO 165/100/80**, **Solarthermie 2'400+1'000/kWth**, GEAK 1'000/1'500)
  → `[[foerderprogramm-energie-zh-2026]]`, `[[foerderung-energie-zh]]` (FAQ F7). **Pronovo-PV-
  Einmalverguetung (Bund) belegt 2026-06-27** via BFE-Faktenblatt (EIV/KLEIV/GREIV/HEIV, KLEIV ~360
  CHF/kWp, Indach 400, Deckel 30 %, Boni Neigung/Winterstrom/Parkflaeche) → `[[pv-einmalverguetung-bund-bfe]]`,
  F7 geschaerft. **Bundes-Gebaeudeprogramm/HFM 2015 belegt 2026-06-28** (CO2-Gesetz Art. 34 →
  Globalbeitraege → kantonaler Vollzug HFM 2015, 18 Module; Rahmenbedingungen U≤0,20/Verbesserung
  ≥0,07/Baujahr<2000/GEAK Plus ab 10k) → `[[gebaeudeprogramm-bund-hfm-2015]]` (FAQ **F27** neu).
  **SZ-Foerderprogramm belegt 2026-06-29** (Vollzugshilfe Kt. SZ 01.01.2026, alle CHF-Saetze →
  `[[foerderprogramm-energie-sz-2026]]`, FAQ **F28**). **Gemeinde-/EWU-Ebene + Foerder-Suchmaschine
  belegt 2026-06-30** (`energiefranken.ch` EnergieSchweiz/BFE standortgenau ueber alle Ebenen +
  Klimapraemie Stiftung KliK ~360/kW, meist alternativ zum Kanton) → `[[energiefranken-foerder-suchmaschine-ch]]`
  (FAQ **F29** neu). **Klimapraemie im Detail belegt 2026-07-02** (Stiftung KliK ~360/kW, keine Obergrenze,
  fossil→WP/Holz, meist alternativ zum Kanton; **Laufzeit voraussichtlich bis spaetestens Ende 2027** —
  aeltere «bis 2025»-Seiten veraltet) → `[[klimapraemie-heizungsersatz-klik]]`. **vollstaendig** (offen nur
  konkrete M-02…M-18-Saetze je Kanton + PLZ-genaue Gemeinde-Beitraege der JANS-Standorte + Klimapraemie
  exakter 2026-CHF-Satz/hartes Enddatum via klimapraemie.ch).
- [x] D5 Regenwasserbewirtschaftung / Versickerung Kt. ZH — belegt 2026-06-23 via AWEL-Gesuchsformular
  (Bewilligung >20 m², Zustaendigkeit Gemeinde/AWEL, Metall-Adsorber >50 m², Versickerungsversuch +
  1,0 m Filterschicht; VSA 2019/SN 592 000) → `[[regenwasserbewirtschaftung-versickerung-zh]]` (FAQ F24).
  Schwammstadt-Querschnitt zu D2/Begruenung. Offen: Bemessungsdetail, Retention/Gruendach, SZ.
- [~] D4 Betriebsenergie vs. Erstellungsenergie ueber den Lebenszyklus — Verhaeltnis 50 J belegt
  2026-06-10 → `[[graue-energie]]` (Betrieb dominiert, graue Energie 20-30 %; bei Minergie kehrt sich
  Gewicht um). Offen: vollstaendige Lebenszyklus-CO₂-Bilanz inkl. Energietraeger.
- [x] D6 **PV-Eigenverbrauch: selbst nutzen (WP/Lastmanagement) + vermarkten (ZEV/vZEV)** — belegt
  2026-07-04. Hebel 1 (EnergieSchweiz/Zogg 2023): WP als thermischer Speicher via EMS, solarer
  Deckungsgrad ~verdoppelbar, SG-Ready/SmartGridready, Batterie erst zuletzt → `[[wp-pv-eigenverbrauch-lastmanagement]]`
  (FAQ F31). Hebel 2 (VSE HER-CH 2025): ZEV Art. 17 EnG, Eigenverbrauch abgabenfrei Art. 16 EnG, **neu
  vZEV ab 1.1.2025** ohne Umverdrahtung, LEG separat → `[[zev-eigenverbrauch-mfh-her-2025]]` (FAQ F32).
  Themenartikel `[[pv-eigenverbrauch-zev]]`. **Ergaenzt 2026-07-05:** ZEV-Mieter-Preisregel (≤80 % des externen
  Standardtarifs ODER Gestehungskosten − Einspeiseerloes mit halber Ersparnis-Teilung, Mieter-Wahlrecht →
  `[[zev-mieter-strompreis-eigenverbrauch]]`, F32) + **Hebel 3 LEG** (ab 1.1.2026, Netzentgelt-Rabatt 40 %/20 %,
  gleiche Gemeinde/Netzebene/≥5 % Produktion → `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]`, FAQ **F33** neu).
  Offen: VSE-BD-LEG-Primaerquelle, interne LEG-Preisbildung, Rp/kWh-Zahlenmuster.

## Meta
- [x] M1 BAUHERREN-FAQ auf 15+ belegte Antworten ausbauen — **alle 17 Kernfragen F1-F17 belegt**
  (F6 WP-Systemvergleich neu 2026-06-18). Backlog nur noch Vertiefungen (Primaerquellen, CHF-Vergleiche).
- [ ] M2 Pruefen: eigenes Skill `energie` rechtfertigt sich? (Trigger-Set entwerfen.) — **FAQ traegt jetzt
  (17 Kernfragen + F18-F59 Vertiefungen, 87 Destillate); PDF-Inventar 2026-07-13 vollstaendig
  abgearbeitet (alle Quellen [x]/[-]).** Reif fuer eine Entscheidung — naechster Meta-Schritt,
  Raphael vorlegen statt weiter aufzuschieben.
- [x] D7 **Naturdaemmstoffe (Holzfaser/Zellulose/Hanf/Stroh) — oekologisch daemmen + Sommerhitzeschutz**
  — belegt 2026-07-06 (gesundes-haus.ch Materialvergleich + Lignum «Holzfaserdaemmung» + Strohballen).
  Winter: λ 0,038–0,045 wie Mineralwolle → keine dickere Daemmung. Sommer: Speichermasse ρ·c holzbasiert
  c ~2000–2200 J/(kg·K) ≈2× Mineralwolle → laengere Phasenverschiebung/besserer Hitzeschutz. Diffusionsoffen
  (Holzfaser bis 15 % Feuchte). Oeko: Stroh ~100× weniger graue Energie, Minergie-ECO-Hebel. Preis: brennbar
  → CH-VKF **RF3**, Bekleidung/Verputz noetig (Stroh verputzt bis 90 min) → `[[naturdaemmstoffe-kennwerte-sommerhitzeschutz]]`,
  Themenartikel `[[naturdaemmstoffe]]` (FAQ **F34** neu). Schliesst E12-Naturdaemmstoff-Restluecke. Offen:
  Produkt-Bemessungswerte/VKF-Anerkennungsnummern, konkrete Phasenverschiebung in Stunden je Aufbau.
- [x] D8 **Fenster & Verglasung — Uw/Ug/Uf, g-Wert, Dreifachglas, Ersatz vs. Sanierung**
  — belegt 2026-07-07 (EnergieSchweiz «Fenstersanierung» + HSLU/enbau-online + Minergie-Modul Fenster +
  nachhaltigleben.ch). Uw = flaechengewichtetes Mittel Ug/Uf + Randverbund ψg («ein Top-Ug nuetzt nichts
  bei schwachem Rahmen»); Dreifachglas Standard >90 % CH (Ug 0,4–0,8, Argon/Krypton 90 %); warme Kante
  Kunststoff ψg 0,035 → bis −20 % Verlust; g-Wert = Winter-Nutzen (Qs) ↔ Sommer-Risiko → aussenliegender
  Sonnenschutz + g_tot 0,1–0,15; Uw ≤1,0 ZH/Minergie · ≤0,80 Minergie-P. **Bauherren-Kernwarnung: Fenster
  nie allein vor der Wand ersetzen** (Taupunkt wandert an Waermebruecken → Schimmel; dichtere Fenster →
  lueften/Komfortlueftung). Kosten ~400/~1'200 CHF/m², Lebensdauer 25–40 J, 13 % Verlust, Wert +2–3,5 %
  → `[[fenster-verglasung-uw-g-wert]]`, Themenartikel `[[fenster-verglasung]]` (FAQ **F35** neu).
  Schliesst E3-Rest. Offen: numerische g-/Uf-Werte je Typ (SZFF-Datenblatt), Fenster-Energieetikette BFE.
- [x] D9 **GEAK — Gebaeudeenergieausweis der Kantone + Fenster-Energieetikette (FEA)**
  — belegt 2026-07-08 (geak.ch / EnDK; BFE voluntary labels). **GEAK** = amtliche Energieetikette Bestand,
  7 Klassen A–G (Huelle / Gesamtenergie inkl. Eigenstrom / direkte CO₂; A=null CO₂, Stufe 5 kg/m²·a);
  **GEAK Plus** = bis 5 Sanierungsvarianten + Beratungsbericht, **Pflicht ab CHF 10'000 Foerderung**,
  10 J gueltig, nur zertifizierte Expert:innen, kein Fixpreis (ZH/SZ foerdern 1'000/1'500), Abgrenzung
  Minergie (Ist-Zustand vs. Ziellabel) → `[[geak-gebaeudeenergieausweis-kantone]]`, Themenartikel
  `[[geak-gebaeudeenergieausweis]]` (FAQ **F36** neu). Zugleich **FEA** (BFE, freiwillig): Winter-Bilanz
  Uw,eq am Referenzfenster 1,55×1,15 m, Klasse A = solare Gewinne > Verluste → `[[fenster-energieetikette-fea-bfe]]`
  (schaerft F35). Offen: GEAK-Klassengrenzen kWh/m²·a (Produktreglement bildbasiert), FEA-Klassengrenzen A–G,
  numerische g-/Uf-Werte (SZFF).
- [x] D10 **Komfortlueftung / kontrollierte Wohnungslueftung**
  — belegt 2026-07-09 (EnergieSchweiz gebaeudetechnik/lueftung + Minergie «Gute Raumluft» + energie-umwelt.ch).
  Vier Standardsysteme: **Komfortlueftung mit WRG** (Neubau-Standard), **Abluftanlage** (ohne WRG),
  **dezentrale Einzelraumlueftung** (WRG 75–90 %, Sanierung), **Grund-/Verbundlueftung** (Minergie ab 2019).
  Waermeverluste **>2/3 tiefer als Handlueftung** (ZH EN-105 ≥70 %); Aussenluftbedarf ~30 m³/h wach /15
  schlafend; CO₂ gut <1'000 ppm / Kopfweh ab 2'000 ppm. **Bauherren-Kernbotschaft: die zwei Mythen widerlegt**
  — Fenster **jederzeit oeffenbar** (man muss nur nicht mehr); **trockene Luft = Kaelte-Phaenomen jeder
  Lueftung**, gemildert durch **Enthalpietauscher (+bis ~10 % Feuchte)** + bedarfsgeregelten Betrieb.
  Minergie fordert kontrollierte Lufterneuerung, schreibt **kein System** vor; Fensterlueftung genuegt nicht.
  Filterwechsel ~1–2×/J, EFH-Invest ~CHF 12–25k (Markt-Richtwert), Gebaeudeprogramm foerdert bei Sanierung
  → `[[komfortlueftung-wohnungslueftung-ch]]`, Themenartikel `[[komfortlueftung]]` (FAQ **F37** neu).
  Offen: WRG-Grad zentraler Anlagen numerisch, SIA-382/1-Auslegungsluftwechsel, Filterklassen/Ventilator-
  Strom (SIA-Merkblatt 2023 / BFE-PDF bildbasiert), komfortable rel. Raumluftfeuchte % (SIA 180), CHF aus
  neutraler Quelle.
- [x] D11 **Batteriespeicher (Heimspeicher) zur PV — «lohnt sich das?»**
  — belegt 2026-07-10 (Swissolar «Batteriespeicher» + EnergieSchweiz «Batterien», trianguliert mit Zogg 2023).
  Eigenverbrauch **~30 % → ~50 % (EMS + WP/E-Auto) → bis 70–90 % (Batterie)**, Autarkie 50–80 %;
  **Wirtschaftlichkeits-Schwelle ab ~35 % Eigenverbrauch — meist schon OHNE Batterie erreichbar** (der
  teuerste Hebel, nicht der erste). Kosten **600–900 CHF/kWh** inkl. WR + Installation; Dimensionierung
  **kWp × 1,5** bzw. **Jahresverbrauch/730**; LFP ~80 %, Lebensdauer 10–20 J; **Notstrom nur ~30 % der
  Systeme**. **Winter-Realitaet: Tagesspeicher, senkt Winter-Netzbezug nicht** — groesster Gratis-Speicher
  bleibt Gebaeudemasse + Warmwasser (via WP/EMS). Reihenfolge Lastverschiebung → thermischer Speicher →
  Batterie → `[[batteriespeicher-heimspeicher-pv-ch]]`, Themenartikel `[[batteriespeicher]]` (FAQ **F38** neu).
  Zugleich Raumklima-Faktenblatt KBOB/IPB destilliert → `[[behaglichkeit-raumklima-kbob-ipb]]` (aktive
  Befeuchtung bei normalem Klima nicht noetig; schaerft F37). Offen: belegte Amortisationszeit in Jahren
  (amtliche Quellen nennen bewusst keine), CHF/kWh-Kurve + Einspeiseverguetungen projektgenau.
- [x] D12 **Elektromobilitaet — Ladeinfrastruktur am Wohngebaeude (EFH/MFH)**
  — belegt 2026-07-11 (EnergieSchweiz/Swiss eMobility «Ladeinfrastruktur in Mietobjekten» Nov 2024 +
  «im Bestandsbau» Sept 2025 + Zogg-Artikel HK-Gebaeudetechnik 4/24). Kernbotschaft: **nicht die einzelne
  Wallbox, sondern die vorausschauende Grunderschliessung aller Parkplaetze** (intelligente, ausbaufaehige
  Anlage + **dynamisches Lastmanagement**). Ausbau nach **SIA 2060** in drei Stufen: **C1 Power to Garage**
  (Erschliessung ab Hauptverteilung inkl. Messung fuers Lastmanagement) → **C2 Power to Parking** → **D
  Ready to charge**. Technik Typ 2 (AC), **11 kW** ueblich (1,4-22 kW), Anbindung ans EMS via Modbus.
  PV-Kopplung: E-Auto (20-100 kWh) als **flexibler Tagesverbraucher**, **Fruehling-Herbst bis 100 % PV**;
  Ladestation gebaeudeseitig **ab CHF 1'000** (guenstiger als stationaerer Speicher). Prozess nach SIA-Phasen
  real 6-9 Mt.; Mietobjekt-Refinanzierung ueber **Parkplatzmiete**; **V2H/V2G** kuenftig → `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]`,
  Themenartikel `[[elektromobilitaet-ladeinfrastruktur]]` (FAQ **F39** neu). Zugleich `[[wp-pv-eigenverbrauch-lastmanagement]]`
  um den E-Auto-Teil geschaerft (offener Punkt geschlossen). Offen: CHF/kW Grunderschliessung je Parkplatz
  (projektabhaengig), SIA 2060 kostenpflichtig, Foerderung Ladeinfrastruktur uneinheitlich, V2H/V2G-Reife.

- **D13 (Run 34, 2026-07-11)** — «Solarthermie oder Photovoltaik — und wie mache ich mein Warmwasser?»
  — belegt 2026-07-11 (EnergieSchweiz «Solarwärme» + Swissolar «Solarwärme»). Kernaussage: Dach nur
  **einmal** belegbar → für ein Haus mit **Wärmepumpe** heute meist **PV + WP-Boiler** besser als separate
  Solarthermie. Solarthermie EFH (4–6 m² Kollektor + ~450 l Speicher) = **60–70 % des Jahres-Warmwassers**,
  MFH ~1 m²/Person = 30–40 %, Kombianlage mind. 30 % Wärmebedarf; hoher Wirkungsgrad (~70–85 % vs. ~20 % PV)
  → weniger Dachfläche, aber Solarwärme kann **nur heizen** (Sommerüberschuss verpufft) → **Nutzen pro m²
  Dach übers Jahr** entscheidend. Solarthermie lohnt bei ganzjährig hohem Warmwasserbedarf (MFH zentral/
  Hotel/Schwimmbad/Prozesswärme); Wärmepumpenboiler = stromsparender WW-Standard; Förderung 2'400+1'000/kWth
  → `[[solarthermie-vs-pv-warmwasser-ch]]`, Themenartikel `[[solarwaerme-warmwasser]]` (FAQ **F40** neu).
  Offen: konkrete CHF-Investition Solarthermie-Anlage (amtlich nicht belegt), Wirkungsgrad 70–85 %/20 %
  aus Sekundärquellen, PVT-Hybridkollektoren (eigener Lauf).

- **D14 (Run 35, 2026-07-12)** — «Lohnt sich ein PVT-Kollektor (Strom + Wärme in einem Modul)?»
  — belegt 2026-07-12 (SPF Institut für Solartechnik OST Rapperswil/EnergieSchweiz, Schlussbericht
  «PVT Wrap-Up» 2017 + PVT Solar AG Produktangaben). Elektrisch ~15–20 %/thermisch ~65 % Wirkungsgrad,
  ~300 CH-Anlagen 2017; lohnt vor allem bei knapper Dachfläche, nicht als Renditeoptimierung gegenüber
  getrennten Systemen; **Kosten widersprüchlich** (CHF 210–650 vs. 1'100–1'600/m²) → `[[pvt-hybridkollektoren]]`,
  FAQ **F41** neu, ergänzt `[[solarwaerme-warmwasser]]`. Status emerging (Kosten nicht adversarial verifiziert).
  Löst den Run-34-Prioritätspunkt «PVT-Hybridkollektoren». Offen: aktuelle CH-Marktzahlen nach 2017.
- **D15 (Run 35, 2026-07-12)** — «Was kostet eine Solarthermie-Anlage bei mir konkret?»
  — belegt 2026-07-12 (hausinfo.ch 07.09.2020 + Meier Tobler AG, keine amtliche Primärquelle). Reine
  WW-Kompaktanlage CHF 15'000–20'000 installiert (Schnittmenge beider Quellen), Kombianlage unsicherer
  CHF 22'000–40'000 (Quellen widersprechen sich) → `[[solarthermie-investitionskosten-ch]]`, FAQ **F42** neu.
  Status emerging, Kombianlage speculative. Ergänzt `[[solarwaerme-warmwasser]]`.
- **D16 (Run 35, 2026-07-12)** — «Komfortlüftung vertieft: Norm, Luftmengen, Filter, Strom»
  — belegt 2026-07-12, **adversarial korrigiert**: SIA 382/1:2025 gilt weiterhin für alle belegten
  Gebäude inkl. Wohnbauten (Gerätekategorie WLA), SIA 382/5:2021 ist wohnbauspezifische Ergänzung, ersetzt
  SIA 382/1 nicht (erste Recherchefassung war falsch); Luftmengen 30/30/20 m³/h je Zimmer/Bad/Küche, Wohnung
  gesamt ≥50 m³/h (Bsp. 4½-Zi ~90 m³/h); Minergie-WRG ≥80 % Temperatur/≥60 % Feuchte (v2.0, 2023, nicht
  Stand 2011 wie erst zitiert) → `[[komfortlueftung-wrg-sia382-luftwechsel]]`, FAQ **F43** neu. **Filterklassen**
  Zuluft ISO ePM1 50 %/Abluft ISO Coarse 80 %, Stromverbrauch über EU-1254/2014-Energieeffizienzklasse
  A/A+ statt veraltetem 0,34-Wh/m³-Wert (Merkblatt SIA 2023, seit 2021 zurückgezogen) → `[[komfortlueftung-filterklassen-epm-stromverbrauch]]`,
  FAQ **F44** neu. Löst Run-34-Prioritätspunkt 3 vollständig, inkl. Aufdeckung zweier veralteter Zitate.
- **D17 (Run 35, 2026-07-12)** — «Welche Raumluftfeuchte ist komfortabel — muss ich befeuchten?»
  — belegt 2026-07-12 (enbau-online.ch, SIA-180-Zitat, + Lungenliga Schweiz). SIA 180:2014 toleriert
  30–70 % rel. Feuchte als Komfortband, Praxis-Zielband 40–60 %; 30 %-Untergrenze als quantitative
  Planungsanforderung (90 % der Nutzungszeit ohne aktive Befeuchtung) → `[[raumluftfeuchte-komfortbereich-sia180]]`,
  FAQ **F45** neu, ergänzt `[[behaglichkeit-raumklima-kbob-ipb]]`. Status emerging (SIA-180-Volltext nicht
  direkt eingesehen, keine adversariale Zweitprüfung). Löst Run-34-Prioritätspunkt 4.
- **D18 (Run 35, 2026-07-12)** — «Was bedeutet meine GEAK-Klasse in kWh — feste Tabelle?»
  — belegt 2026-07-12, wichtige Korrektur: der GEAK hat KEINE festen kWh/m²·a-Grenzwerte je Klasse
  A–G, sondern klassiert RELATIV zu einem individuell berechneten Referenzgebäude (R = Projektwert/
  Referenzwert × 100; A=0-50 %, B=50-100 %, …, G=>300 %) — eine im Web kursierende feste Zahlen-Tabelle
  wurde als falsch widerlegt → `[[geak-klassengrenzen-relative-klassierung]]`, FAQ **F46** neu, adversarial
  am Original-PDF (EnDK-Normierungsdokument v2.1.0, Tab. 40/41) bestätigt, **established**. Löst
  Run-34-Prioritätspunkt 5 vollständig (FEA-Klassengrenzen bleiben offen, separate Frage).
