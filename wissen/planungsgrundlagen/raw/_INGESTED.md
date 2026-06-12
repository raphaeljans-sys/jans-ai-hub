# RAW-Register — KB Planungsgrundlagen

Was liegt in `raw/` und wurde es eingearbeitet? Die vier PL-Ordner selbst sind die primaere
Rohquelle (auf SharePoint, nicht hierher kopiert) — sie werden vom Trainings-Loop direkt
gelesen. `raw/` hier sammelt zusaetzliche Dumps (Mailauskuenfte, Screenshots, Behoerdennotizen).

| Quelle | Ort | Status | Bemerkung |
|---|---|---|---|
| PL - 01 Kartenportale | SharePoint (OneDrive-JANS) | teilweise | OEREB/EGRID-Kette + Run4 2026-06-10: Bund-Geodaten (Hoehe/Orthofoto/DTM/Bauzonen) belegt & im Connector; kommunaler ZH-Zonenplan-WMS offen (401) |
| └ geo.admin.ch height + STAC swissimage-dop10/swissalti3d + WMS ch.are.bauzonen | api3/data/wms.geo.admin.ch | eingearbeitet | Run4 2026-06-10 live getestet (Kat. 3338); → [[kartenportale-bund-geodaten]], Connector `--produkt` |
| PL - 02_Recht_Norm | SharePoint | teilweise | Run3 2026-06-08: 10-Ordner-Karte + SR→fedlex-Schema + Datenstand RPG 2/EnG 2026 + BRA-Benchmark-Index. Tiefe via `[[baurecht]]`-KB |
| └ 01_Gesetze/01_Bund (151.3/451/700/700.1/730.0/814.20/814.41 …) | PL-02 | kartiert | SR→fedlex-ELI; Ordner-PDF = historische Fassungen, aktuelle Fassung via fedlex datierte PDF-A |
| └ 01_Gesetze/08_Baurechtsanalysen/231024_Maur.pdf | PL-02 | eingearbeitet | Struktur-Goldstandard Machbarkeitsstudie (Status quo→OPR→Gewaesserraum→Baufeld→Variante→Kennwerte) |
| └ 01_Gesetze/08_Baurechtsanalysen/ (11 Faelle 2010–2023) | PL-02 | indexiert | Benchmark-Tabelle; Inhalt je Fall beim realen Bedarf nachlesen |
| PL - 03 Brandschutz | SharePoint | offen | Verweis auf Skill `brandschutz` |
| PL - 04 Energie | SharePoint | teilweise | PV-Typenwahl/Eignung + EN-ZH + Fachformulare belegt (Run1 2026-06-06, Run5 2026-06-12); U-Wert → KB `wissen/energie`; offen: D5 PV-Benchmarks, E6 Brandschutz-Solar, D6 EVEN-Bedienung |
| └ Solaranlage/190213 E Vorgehen PV.pdf | PL-04 | eingearbeitet | JANS-Benchmark ewzWHH: 850 kWh/kWp, ~CHF 1'600–2'460/kWp (2019), PVSOL, V-Anordnung |
| └ energieschweiz.ch/Usermanual_de.pdf | PL-04 | eingearbeitet | Solarrechner Okt 2022: 4 Systemvarianten, ~5.8 m²/kWp, Renditerechner |
| └ _Formulare Kanton ZH Baueingabe/ (EN-ZH.pdf, EN-105.pdf, EN-110-ZH.pdf, _Du kannst das EN.docx) | PL-04 | eingearbeitet | Run5 2026-06-12: EN-ZH Checkliste S.2-4 → vollstaendige Fachformular-Liste EN-101a…EN-141/S/LN + Rechtsbezug; Detail EN-105 (Aug 2017) / EN-110-ZH (Sep 2022); EVEN-Umstellung 01.01.2026 → [[energie-energienachweis-zh-formulare]] |
| └ zh.ch/energienachweise + energievollzug.ch (EVEN) | Web 2026-06-12 | eingearbeitet | Seit 01.01.2026 Vollzug ueber EVEN; PDF nur noch EN-104-ZH/EN-110-ZH/WTA/Ausfuehrungskontrolle/Lueftung Spezial; Alt-Projekte via Energiehub Gebaeude |
| GIS-Helpdesk-Auskunft (Hannah Gies, Kt. ZH) | dieser Chat 2026-06-05 | eingearbeitet | OEREB-URL-Schema, kein Login |
