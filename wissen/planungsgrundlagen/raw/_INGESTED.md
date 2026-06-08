# RAW-Register — KB Planungsgrundlagen

Was liegt in `raw/` und wurde es eingearbeitet? Die vier PL-Ordner selbst sind die primaere
Rohquelle (auf SharePoint, nicht hierher kopiert) — sie werden vom Trainings-Loop direkt
gelesen. `raw/` hier sammelt zusaetzliche Dumps (Mailauskuenfte, Screenshots, Behoerdennotizen).

| Quelle | Ort | Status | Bemerkung |
|---|---|---|---|
| PL - 01 Kartenportale | SharePoint (OneDrive-JANS) | teilweise | OEREB/EGRID-Kette eingearbeitet; Kataster/Zonenplan/Hoehenmodell offen |
| PL - 02_Recht_Norm | SharePoint | teilweise | Run3 2026-06-08: 10-Ordner-Karte + SR→fedlex-Schema + Datenstand RPG 2/EnG 2026 + BRA-Benchmark-Index. Tiefe via `[[baurecht]]`-KB |
| └ 01_Gesetze/01_Bund (151.3/451/700/700.1/730.0/814.20/814.41 …) | PL-02 | kartiert | SR→fedlex-ELI; Ordner-PDF = historische Fassungen, aktuelle Fassung via fedlex datierte PDF-A |
| └ 01_Gesetze/08_Baurechtsanalysen/231024_Maur.pdf | PL-02 | eingearbeitet | Struktur-Goldstandard Machbarkeitsstudie (Status quo→OPR→Gewaesserraum→Baufeld→Variante→Kennwerte) |
| └ 01_Gesetze/08_Baurechtsanalysen/ (11 Faelle 2010–2023) | PL-02 | indexiert | Benchmark-Tabelle; Inhalt je Fall beim realen Bedarf nachlesen |
| PL - 03 Brandschutz | SharePoint | offen | Verweis auf Skill `brandschutz` |
| PL - 04 Energie | SharePoint | teilweise | PV-Typenwahl/Eignung + EN-ZH belegt (Run1 2026-06-06); U-Wert → KB `wissen/energie`; offen: EN-ZH-Fachformulare, E6 Brandschutz-Solar |
| └ Solaranlage/190213 E Vorgehen PV.pdf | PL-04 | eingearbeitet | JANS-Benchmark ewzWHH: 850 kWh/kWp, ~CHF 1'600–2'460/kWp (2019), PVSOL, V-Anordnung |
| └ energieschweiz.ch/Usermanual_de.pdf | PL-04 | eingearbeitet | Solarrechner Okt 2022: 4 Systemvarianten, ~5.8 m²/kWp, Renditerechner |
| └ _Formulare Kanton ZH Baueingabe/ (EN-ZH.pdf, _Du kannst das EN.docx) | PL-04 | eingearbeitet | EN-ZH Hauptformular, Einreichung DLZ vor Baubeginn |
| GIS-Helpdesk-Auskunft (Hannah Gies, Kt. ZH) | dieser Chat 2026-06-05 | eingearbeitet | OEREB-URL-Schema, kein Login |
