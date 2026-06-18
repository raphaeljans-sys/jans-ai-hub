# RAW-Register — KB Planungsgrundlagen

Was liegt in `raw/` und wurde es eingearbeitet? Die vier PL-Ordner selbst sind die primaere
Rohquelle (auf SharePoint, nicht hierher kopiert) — sie werden vom Trainings-Loop direkt
gelesen. `raw/` hier sammelt zusaetzliche Dumps (Mailauskuenfte, Screenshots, Behoerdennotizen).

| Quelle | Ort | Status | Bemerkung |
|---|---|---|---|
| PL - 01 Kartenportale | SharePoint (OneDrive-JANS) | teilweise | OEREB/EGRID-Kette + Run4 2026-06-10: Bund-Geodaten; **Run5 2026-06-16: kommunaler ZH-Zonenplan (A2) GELOEST** via OGD-WFS 0156; offen A5 ObjektwesenZH |
| └ geo.admin.ch height + STAC swissimage-dop10/swissalti3d + WMS ch.are.bauzonen | api3/data/wms.geo.admin.ch | eingearbeitet | Run4 2026-06-10 live getestet (Kat. 3338); → [[kartenportale-bund-geodaten]], Connector `--produkt` |
| └ maps.zh.ch/wfs/OGDZHWFS — Nutzungsplanung 0156 Grundnutzung + 0154 ES Laerm (GeoJSON) | maps.zh.ch | eingearbeitet | Run5 2026-06-16 live getestet (Langnau Kat. 3338 W/1.5/BMZ + Egg WG60/AZ); login-frei, BMZ+AZ+Hoehen+VG+Rechtsstatus → [[kartenportale-zonenplan-zh]], Connector `--produkt zonenplan` |
| PL - 02_Recht_Norm | SharePoint | teilweise | Run3 2026-06-08: 10-Ordner-Karte + SR→fedlex-Schema + Datenstand RPG 2/EnG 2026 + BRA-Benchmark-Index. Tiefe via `[[baurecht]]`-KB |
| └ 01_Gesetze/01_Bund (151.3/451/700/700.1/730.0/814.20/814.41 …) | PL-02 | kartiert | SR→fedlex-ELI; Ordner-PDF = historische Fassungen, aktuelle Fassung via fedlex datierte PDF-A |
| └ 01_Gesetze/08_Baurechtsanalysen/231024_Maur.pdf | PL-02 | eingearbeitet | Struktur-Goldstandard Machbarkeitsstudie (Status quo→OPR→Gewaesserraum→Baufeld→Variante→Kennwerte) |
| └ 01_Gesetze/08_Baurechtsanalysen/ (11 Faelle 2010–2023) | PL-02 | indexiert | Benchmark-Tabelle; Inhalt je Fall beim realen Bedarf nachlesen |
| PL - 03 Brandschutz | SharePoint | offen | Verweis auf Skill `brandschutz` |
| PL - 04 Energie | SharePoint | teilweise | PV-Typenwahl/Eignung + EN-ZH + Fachformulare + **Brandschutz-Solar (E6) + PV-Benchmarks (D5) + EN-104** belegt (Run1 2026-06-06, Run5 2026-06-12, **Run6 2026-06-18**); U-Wert → KB `wissen/energie`; offen: D5 Typ B/C/D, D6 EVEN-Bedienung |
| └ Solaranlage/_Brandschutz/stp_solaranlagen_swissolar_v_4.0.pdf | PL-04 | eingearbeitet | Run6 2026-06-18: Swissolar STP V4.00 (12/2022, red. 11/2023) zu VKF-BSM 2001-15 → [[energie-pv-brandschutz]]: Einbauarten, oberste Schicht (Glas/Folie ≤1.5 mm RF1), Brandmauer-Uebergang, RWA-Lichtraumprofil, Feuerwehr/Kennzeichnung ≥30 kW, Naturgefahren SIA 261/261-1, Zugaenglichkeit SUVA |
| └ Solaranlage/solarapp.ch/Willerzell (Reckholdern 20, Einsiedeln) + Basel SolarReports | PL-04 | eingearbeitet | Run6 2026-06-18: D5-Benchmarks — Indach-Tile 2024 (7.9 kWp/981 kWh-kWp/~7'370 CHF-kWp) + MFH Basel Aufdach 2022 (59.93 kWp/852 kWh-kWp/~2'255 CHF-kWp) → [[energie-pv-eignung-typenwahl]] §3 |
| └ Solaranlage/EN104/26_EN-104.pdf | PL-04 | eingearbeitet | Run6 2026-06-18: Eigenstrom-Pflicht Neubau — EBF×10 W/m² max 30 kW, 8 m²/kW mono / 16 m²/kW Duennschicht, Ersatzabgabe/EN-133-Alternative; realer Beleg Einsiedeln Parz.3301 → [[energie-energienachweis-zh-formulare]] |
| └ endk.ch / energiehub-gebaeude.ch (MuKEn 2025) | Web 2026-06-18 | eingearbeitet | Run6: MuKEn 2025 EnDK 08/2025 verabschiedet, Inhalte (graue Energie/erneuerbare Waerme/mehr Eigenstrom), ZH-Ueberfuehrung ausstehend |
| └ Solaranlage/190213 E Vorgehen PV.pdf | PL-04 | eingearbeitet | JANS-Benchmark ewzWHH: 850 kWh/kWp, ~CHF 1'600–2'460/kWp (2019), PVSOL, V-Anordnung |
| └ energieschweiz.ch/Usermanual_de.pdf | PL-04 | eingearbeitet | Solarrechner Okt 2022: 4 Systemvarianten, ~5.8 m²/kWp, Renditerechner |
| └ _Formulare Kanton ZH Baueingabe/ (EN-ZH.pdf, EN-105.pdf, EN-110-ZH.pdf, _Du kannst das EN.docx) | PL-04 | eingearbeitet | Run5 2026-06-12: EN-ZH Checkliste S.2-4 → vollstaendige Fachformular-Liste EN-101a…EN-141/S/LN + Rechtsbezug; Detail EN-105 (Aug 2017) / EN-110-ZH (Sep 2022); EVEN-Umstellung 01.01.2026 → [[energie-energienachweis-zh-formulare]] |
| └ zh.ch/energienachweise + energievollzug.ch (EVEN) | Web 2026-06-12 | eingearbeitet | Seit 01.01.2026 Vollzug ueber EVEN; PDF nur noch EN-104-ZH/EN-110-ZH/WTA/Ausfuehrungskontrolle/Lueftung Spezial; Alt-Projekte via Energiehub Gebaeude |
| GIS-Helpdesk-Auskunft (Hannah Gies, Kt. ZH) | dieser Chat 2026-06-05 | eingearbeitet | OEREB-URL-Schema, kein Login |
