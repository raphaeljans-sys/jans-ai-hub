# RAW-Register — KB Energie

Primaere Rohquelle ist der SharePoint-Ordner **PL - 04 Energie** (nicht hierher kopiert; der
Loop liest ihn direkt, Konvertierungsstand in `training/pdf-inventar.md`). `raw/` sammelt
zusaetzliche Dumps (Mailauskuenfte, Notizen, Web-Clips).

| Quelle | Ort | Status | Bemerkung |
|---|---|---|---|
| PL - 04 Energie (120 PDF + 12 DOCX) | SharePoint (OneDrive-JANS) | **PDF-Bestand erschoepft** | 40 Destillate; jeder substanzielle PDF destilliert — lokale Reste nur noch Datenblaetter (SI-Saphir/megasol/PREFA-Farben/Usermanual) + FEZ-/Kursflyer + Maison-Climat-Plaene (geringe Uebertragbarkeit, nicht einzeln); **Loop primaer Web** (offen: Swissolar Solarmonitor CHF/kWp je Groesse, kg-CO₂ Bauteil KBOB v8.0/SIA-2032, Lignum-Flanke, Bundes-Gebaeudeprogramm) |
| Foerderprogramm Energie Kt. ZH 2026 — PDF VOLLSTAENDIG (S. 1-37) | Web zh.ch (Direkt-Download /tmp) | destilliert 2026-06-26 | schliesst die offenen CHF-Saetze: **Minergie-ECO 110/70/50, -P-ECO 165/100/80, Solarthermie 2'400+1'000/kWth**, GEAK 1'000/1'500 → foerderprogramm-energie-zh-2026 (F7) |
| KBOB-Faktenblatt «Graue Treibhausgasemissionen bei der Erstellung von Gebaeuden» (V1 04.04.2025) | Web kbob.admin.ch (PDF) | destilliert 2026-06-26 | 9 Reduktionshebel + SIA-2032-Messgroessen (kg CO₂-eq/m² EBF) + «Restwert Bestand» + Grenzwert-Logik; Datenbasis KBOB-Oekobilanzdaten v8.0 (20.02.2026) → kbob-graue-treibhausgasemissionen-2025 (F9/F8) |
| SIA 181:2020 Schallschutz Anforderungswerte | Web (baumann akustik & bauphysik, Zusammenfassung Anhang A) | destilliert 2026-06-24 | Luft-/Tritt-/Haustechnik-/Aussenlaerm-Tabellen → `[[sia-181-schallschutz-anforderungswerte]]` (FAQ F25, schliesst E11/A8) |
| PV-Ertrag je Ausrichtung × Neigung (CH) | Web (Swissolar «Anwendung PV» + solar-ratgeber.ch; Quervergleich BFE sonnendach.ch) | destilliert 2026-06-25 | CH-Richtwerte Basis Sued-30°: Flachdach ~90 %, Ost/West 90–95 %, Suedfassade ~70 %, Nord ~40 % → `[[pv-ertrag-ausrichtung-neigung-ch]]` (FAQ F26, schliesst E5-Orientierungsluecke) |
| U-Wert-Bauteilekatalog Neubauten (BFE 2002) | PL-04/U Wert berechnung | destilliert (S.1-10 + Kap.4 Boeden/Waende) | Rest inhomogen/Daecher offen |
| Heizwaermebedarf SIA 380/1 (Kursauszug) | PL-04/_Heizwaermebedarf | destilliert | — |
| EN-102 Waermeschutz (EnFK, Dez 2018) | PL-04/U Wert berechnung | destilliert (vollst.) | U-Wert- + Qh-Grenzwerte |
| EN-104 Eigenstromerzeugung (EnFK) | PL-04/Solaranlage/EN104 | destilliert (vollst.) | 10 W/m²-Regel, JANS-Beispiel |
| Minergie-Wissen «Besser planen» | PL-04/Solaranlage/_Literatur | destilliert (S.1-16) | Minergie-Standards/Kennzahl |
| Bauphysik Heizwaermebedarf-Kennwerte | PL-04/_Heizwaermebedarf | destilliert (S.146-147) | Tab. 6.2 Gebaeudehuellzahl |
| TEC21-Dossier «Solares Bauen» 5/2012 | PL-04/Solaranlage/_Literatur | destilliert (S.1-13) | PV-Typen + Integration (F4) |
| EN-ZH Nachweis-Deckblatt (Baudir. ZH, Juli 2022) | PL-04/_Formulare Kanton ZH | destilliert (vollst.) | Nachweis-Uebersicht; ⚠ seit 1.1.2026 EVEN |
| SIA 2001 Waermedaemmstoffe (Ausgabe 2005) | PL-04/U Wert berechnung | destilliert (vollst. S.1-17) | λ-Bandbreiten + Naturdaemmst./VIP/WDVS (E1) |
| EN-2 Waermeschutz von Gebaeuden (EnFK, Feb 2013) | PL-04/U Wert berechnung | destilliert (vollst.) | Nachweiswege, Waermebruecken Ψ, EBF-Def., sommerl. Waermeschutz |
| Minergie «Besser planen» Ueberarbeitung 09/2023 | PL-04/wissen.minergie.ch | destilliert (S.1-16) | neue Kennzahlen 51/46/29 + THGE 11 kg/m² (F5) |
| Waermeerzeugerleistung (BFE/EnergieSchweiz Nr. 2781, 12.2015) | PL-04/_Heizwaermebedarf | destilliert (vollst.) | Dimensionierung + Brennwerte (F13) |
| SIA 380/1 Standardnutzungswerte Tab. 24/25 | PL-04/_Heizwaermebedarf | destilliert (vollst.) | Gebaeudekat. + Warmwasser Qww |
| Rechenbeispiel Monatsbilanz Heizwaermebedarf | PL-04/_Heizwaermebedarf | destilliert (vollst.) | Buero ZH Januar, Qh durchgerechnet |
| Grundsaetze energieeffizientes Bauen | PL-04/_Heizwaermebedarf | destilliert (vollst.) | Huelle + sanfte Haustechnik (S.88/89) |
| Foerderprogramm Energie Kt. ZH 2026 | Web zh.ch (PDF) | destilliert (S.1-29) | Foerdersaetze 2026 (F7); ⚠ Datenstand 2026-06-08 |
| Betriebsenergie / graue Energie (Lehrmittel S.116) | PL-04/_Heizwaermebedarf | destilliert (vollst.) | graue vs. Betriebsenergie 20-30 %; THGE-Anker (F9) |
| WTA-Formular waermetechn. Anlagen (Kt. ZH 01-2024) | PL-04/endk.ch | destilliert (vollst., 5 S.) | Heizungsersatz-Verfahren/Beilagen + fossil-Verbot (F14) |
| Enerhaus Minergie-Musternachweis (EFH Umbau, 2010) | PL-04/U Wert berechnung | destilliert (vollst., 9 S.) | Systemnachweis + WRG-Hebel (⚠ 2010) |
| CLT by Stora Enso — Bauphysik (Version 06.2021) | PL-04/U Wert berechnung/clt | destilliert (Kap. 1-3 S.4-37) | Holzbau-Bauphysik λ 0,12 / luftdicht folienfrei / s_d (F15) |
| CLT by Stora Enso — Bauteilkatalog (Kap. 4) | PL-04/U Wert berechnung/clt | destilliert (Aussenwand V1-9 + Dach V1-6) | konkrete Aufbauten REI·U·Rw (F15) |
| CLT by Stora Enso — Schallschutz (Kap. 4, S.98-164) | PL-04/U Wert berechnung/clt | destilliert (Innenwand V1-11 + Trennwand V1-8 + Decke V1-6) | R_w 34-58 / L'_n,w 60→46 (F17) |
| Werkhof29 Dossier Erstvermietung (baubuero in situ, 2024) | PL-04/U Wert berechnung/Grassen Biwak | destilliert (S.1-12) | Praxisbeispiel zirkulaeres Bauen: Stroh/Lehm/Re-use/Areal-PV |
| Private Kontrolle — Liste der Befugten (Kt. ZH, April 2025) | PL-04/_Private Kontrolle | destilliert (S.1-3) | wer zeichnet EN-Nachweis + EN-Formular-Matrix (BBV I); Namensregister ausgelassen |
| swissolar STP zu VKF-Brandschutzmerkblatt Solaranlagen (V4.00, 12/2022) | PL-04/Solaranlage/_Brandschutz | destilliert (vollst. Kap. 1-7, S.1-31) | PV-Brandschutz: DC kein PVC/RF1-Rohr, WR-Standort, Kennzeichnung, Feuerwehr ≥30 kW, Brandmauer 1,0 m, Batteriespeicher, RWA, Naturgefahren (F16) |
| Minergie-Nachweiskurs 2023 — Tipps & Tricks (Teil 1) | PL-04/wissen.minergie.ch/Kursunterlagen_230926 | destilliert (S.1-42) | Minergie 2023 Anforderungen + MKZ-Formel + THGE-Grenzwerte je Kategorie (F5/F8) |
| Minergie-Nachweiskurs 2023 — Antrag/Zertifizierung (Teil 2/3) | PL-04/wissen.minergie.ch/Kursunterlagen_230926 | destilliert (S.43-57) | Label-Plattform, Antrags-Checkliste, WPesti/PVopti, Pruefprozess AS↔ZS → minergie-zertifizierung-workflow |
| Minergie-Fallstudie «Maison Climat» (Teil 2) | PL-04/wissen.minergie.ch/Kursunterlagen_230926 | destilliert (S.1-12) | gebautes Plusenergie-MFH Biel, Nachweis-Kennzahlen (F8); ⚠ Uebungswerte teils angepasst |
| Heizsystem-/JAZ-Richtwerte WP/Fernwaerme/Pellets | Web-Synthese (Juni 2026) + KB-Bestand | destilliert (emerging) | JAZ-Richtwerte Luft ~3 / Sole ~4,5 / Wasser ~5 + Entscheidungslogik (F6) → waermepumpe-systemvergleich; ⚠ Richtwerte |
| PV-Ertrag/Eigenverbrauch — 2 Praxisreports (SolarApp Einsiedeln 2024 / EnergieSchweiz Diemtigen 2023) | PL-04/Solaranlage/solarapp.ch + energieschweiz.ch | destilliert | ~950-1'025 kWh/kWp, EV 8-44 %, Autarkie/Saisonalitaet (F18) → pv-ertrag-eigenverbrauch-praxis; ⚠ PVGIS/Meteonorm-Schaetzung |
| Sunskin roof — Indach-Solar Planung+Ausfuehrung (Eternit, Rev. 01.2022) | PL-04/Solaranlage/solar-home.ch/Sunskin | destilliert (S.1-14) | Indach-Eckwerte Neigung 10-60°/Hinterlueftung 60mm/Schneelast/NIN/Blitzschutz → sunskin-roof-indach-planung |
| Energienutzungs-Deklaration geringfuegige Umbauten (Baudir. ZH, Sept 2022) | PL-04/_Formulare Kanton ZH | destilliert (vollst., 2 S.) | Schwellen ≤200k & ≤30 % GVZ + Umbau-U-Werte (B2) → energienutzungs-deklaration-geringfuegige-umbauten-zh |
| PV-Ertrag/Eigenverbrauch — 3. Praxisreport (SolarApp Basel 60 kWp Indach-MFH, 2022) | PL-04/Solaranlage/solarapp.ch/Basel | destilliert (vollst., S.1-12) | ~826 kWh/kWp, EV 33 %/Autarkie 103 %, ~CHF 2'250/kWp 2022 → pv-ertrag-eigenverbrauch-praxis (Bsp. C), F18 |
| PREFA Solar — Aluminium-Solardachplatte (Indach, V5 09.2023) | PL-04/Solaranlage/prefa.solar | destilliert (vollst., 7 S.) | Alu-Indach 100/43 Wp, ab 17°, 12,6 kg/m², keine Unterkonstr./Durchdringung → prefa-solar-indach-aluminium-dachplatte (F4) |
| Checkliste Gebaeudeschadstoffe / Entsorgungskonzept (AWEL Kt. ZH, 02.2023) | PL-04/_Formulare Kanton ZH | destilliert (vollst., 8 S.) | 4-Faelle-Raster vor 1990 / ≤200k / 200 m³, Asbest/PCB/CP-Stichjahre → gebaeudeschadstoffe-checkliste-zh (F23 neu) |
| Gesuch Versickerung von Regenwasser (AWEL ZH Gewaesserschutz) | PL-04/endk.ch | destilliert (vollst., 3 S.) | Bewilligung >20 m²/Zustaendigkeit Gemeinde-AWEL/Metall-Adsorber >50 m²/Versickerungsversuch + 1,0 m Filterschicht; VSA 2019/SN 592 000 → regenwasserbewirtschaftung-versickerung-zh (F24 neu) |
| Swissolar Faktenblatt PV (Juli 2025) + CKW PV-Kosten (Herbst 2025) | Web swissolar.ch + ckw.ch | destilliert | CHF/kWp 2'400–3'200 Aufdach, Indach +60 %, Lebensdauer 33 J, Marktkennzahlen 2024/25 → pv-marktzahlen-kosten-ch-2025 (F18 geschaerft) |
| FAWA Schlussbericht — Feldanalyse Waermepumpenanlagen 1996-2003 (BFE/EnergieSchweiz, ENET 240016, April 2004) | Web fws.ch (PDF 110 S.) | destilliert (Zusammenfassung S. I-VI) | Feld-JAZ S/W 3,5 · L/W 2,7 (+32 %), Vorlauftemp dominiert (Sanierung −9 %), Ueberdimensionierung S/W, Speicher ohne JAZ-Nutzen, Regler +8 % → fawa-jaz-feldanalyse-waermepumpen (F6); schliesst CH-Primaerquelle-Luecke; ⚠ Stand 2004 |
| «SCOP versus COP und JAZ» — Foliensatz Gruenenwald AG (EN 14825) | Web fws.ch (PDF 12 S.) | destilliert (vollst.) | COP=Pruefpunkt (kein Systemvergleich), SCOP EN 14825 mit Strassburg-Klima → CH ~5-7 % zu hoch, JAZ=Feldmessung → cop-scop-jaz-waermepumpe-gruenenwald (F6) |
| BFE-Faktenblatt PV-Foerderung EIV/gl. Marktpraemie/Boni (pubdb 7238) + KLEIV-Saetze (Pronovo/CKW Sept 2025) | Web bfe.admin.ch + ckw.ch/pronovo.ch | destilliert (vollst. S. 1-5) | EIV/KLEIV/GREIV/HEIV-Struktur, KLEIV ~360 CHF/kWp (Indach 400), Deckel 30/60 %, Boni Neigung≥75°/Winterstrom/Parkflaeche → pv-einmalverguetung-bund-bfe (F7 geschaerft) |
| Lignum/BFH-AHB Bericht 2712-SB-01 «Schallschutz im Holzbau» (04.12.2008) | Web lignum.ch (PDF, S. 1-14) | destilliert (Abstract + Kap. 1-5.2) | Flanken-/Nachweis-Mechanik: R_w↔R'_w, K_P/K_F, 12 Nebenwege EN 12354, C/C_tr-Werte, Holzbau-Flankenkennwerte-Luecke → lignum-schallschutz-holzbau-flankenuebertragung (F17/F25 + schallschutz-sia181 geschaerft); ⚠ SIA 181:2006, Mechanik zeitlos |
| Das Gebaeudeprogramm (dasgebaeudeprogramm.ch) + HFM 2015 (EnDK) | Web dasgebaeudeprogramm.ch + endk.ch | destilliert | Bund-/Kanton-Foerder-Mechanik: CO2-Gesetz Art. 34 → Globalbeitraege → kantonaler Vollzug HFM 2015 (18 Module); U≤0,20/Verbesserung ≥0,07/Baujahr<2000/GEAK Plus ab 10k; CHF-Saetze kantonal → gebaeudeprogramm-bund-hfm-2015 (F27 neu) |
