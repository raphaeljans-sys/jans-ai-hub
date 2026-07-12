# Normen-Nacht-Loop — Run 2 (P1-Kernnormen SIA/VKF, Workflow-parallelisiert)

- **Datum:** 12.07.2026 · **Station:** MacBook Pro · **Modus:** Intensivphase (Rule auto-verbesserungen 260712)
- **Stations-Split:** eingehalten — NUR SIA/VKF destilliert; DIN/VSS/RAL bleiben Mac Mini (dort parallel gelaufen, eigener Report `2026-07-12_normen-mini-run1.md`).
- **Voraussetzungen:** NAS gemountet ✓; OneDrive-Normenpfad via Read + `pdftotext`/OCR lesbar ✓ (keine TCC-Blockade).
- **Methode:** Workflow-Pipeline (von Raphael 12.07.2026 autorisiert) — je Norm ein Destillier-Agent (`sonnet`, `pdftotext -layout`; bei Scan-PDFs OCR-Fallback tesseract/ocrmypdf) gefolgt von einem unabhaengigen Verifikations-Agenten (Hauptmodell), der jede Fundstelle (Norm/Ausgabe/Ziffer/Kennwert) am Quell-PDF zu WIDERLEGEN versuchte. 20 Agenten, 0 Fehler, ~6,9 Min.

## Destillate (10 neu, alle `established`)

| Destillat | Norm | Verdikt | gelesen (Quelle) |
|---|---|---|---|
| `sia-103-2003` | SIA 103:2003 Leistungen + Honorare Bauingenieure | bestanden | Textlayer; Art. 1 + Art. 6.4–7.17 (Formeln, Leistungstabelle 7.11.3) |
| `sia-105-2020` | SIA 105:2020 Leistungen + Honorare Landschaftsarchitekten | bestanden | Scan → OCR 300 dpi; Art. 1, 5, 6 |
| `sia-111-2014` | SIA 111:2014 Modell Planung und Beratung | bestanden | Scan → OCR 200 dpi; S. 1–14, 25–27 |
| `sia-112-2014` | SIA 112:2014 Modell Bauplanung | bestanden | Scan → OCR (ocrmypdf); Phasen/Teilphasen |
| `sia-416-2003` | SIA 416:2003 Flächen und Volumen von Gebäuden | bestanden | Textlayer; dt. Normteil komplett Ziff. 0–6 |
| `sia-451-1992` | SIA 451:1992 Datenformate für Leistungsverzeichnisse | bestanden | Textlayer; S. 1–12 komplett |
| `vkf-brandschutznorm-2015` | VKF 1-15 Brandschutznorm 2015 | bestanden | Textlayer; Art. 6–27 |
| `vkf-brl-16-15-flucht-rettungswege` | VKF-BRL 16-15 (rev. 2016) Flucht-/Rettungswege | bestanden | Textlayer; Fluchtweg-Kennwerte + Ziff. 5 |
| `vkf-brl-verwendung-baustoffe` | VKF-BRL 14-15 Verwendung von Baustoffen | bestanden | Textlayer; Ziff. 1–7 (RF1/RF2/RF3) |
| `vkf-brl-nachweisverfahren` | VKF-BRL 27-15 Nachweisverfahren im Brandschutz | bestanden | Textlayer; Ziff. 1–10 + Anhang |

## Verifikations-Verdikte (Widerlegungs-Instanz)

**10/10 bestanden.** Vom Verifikations-Agenten am Original korrigierte Beanstandungen (keine erfundenen Ziffern/Kennwerte gefunden, nur Präzisierungen):

- **SIA 105:2020** — Tabellen-Seitenangabe der Qualifikationskategorien 51 → 52 richtiggestellt.
- **VKF 1-15 Brandschutznorm** — Art. 27 «Abs. 3» → **Abs. 2**; Überinterpretation «mit hoher Sicherheitsanforderung» → PDF-Wortlaut «Je nach Sicherheitserfordernis».
- **VKF-BRL 16-15 / 27-15** — Inkraftsetzungsbeschluss 18.09.2014 korrekt der **IVTH** (nicht IOTH) zugeordnet; Verbindlichkeit «für alle Kantone» statt «IVTH-Kantone».
- **SIA 103/111/112/416/451, VKF 14-15** — keine inhaltlichen Fehler; Status nur von `emerging` (konservativ vom Extraktor gesetzt) auf `established` gehoben.

## Wichtige Befunde (für Raphael / die Skills)

- **SIA 105:2020 hat KEIN baukostenabhängiges Prozentmodell (Art. 7)** — die Landschaftsarchitekten-Ordnung honoriert nur über Qualifikationskategorie/Zeitaufwand (Art. 6). Für den Skill `honorarberechnung-sia102` gilt das Prozent-Phasenmodell also nur für SIA 102 (Architekten) und SIA 103 (Bauingenieure), nicht für 105.
- **SIA 416:2003** ist jetzt belegt destilliert (GSF/GF/NGF/HNF/NNF/KF/AGF/GV, Ziff. 0–6) — Kernnorm für `flaechen-nachweis`, `machbarkeit`, `volumenstudie`, `grobkosten-onepager`. Wichtig: SIA 416 definiert **keine** baurechtlichen Begriffe (Ausnützungsziffer, anrechenbare GF, BMZ) — dafür kantonales Baurecht.
- **3 Scans ohne Textlayer** (105/111/112) via OCR verifiziert — Methode ist auch für scanlastige SIA-Normen tragfähig.

## Offen / nächste Nacht (Run 3)

- **SIA P1-Rest:** SIA 118:1991 (gross, Alt-Kontext über mehrere Nächte; gültige 118:2013 = Bring-Schuld Kauf), SIA 102:2020-Vervollständigung (Art. 7 Phasenanteile / 4.52 Oberleitung).
- **SIA 380/1** (Bestand-Ordner `SIA 380_1_2016` — Ausgabe verifizieren) und **SIA 385/1** (nur Screenshots? PDF prüfen).
- **SIA P2** (übrige de-Normen, ~90 Positionen): grosse Familie, ab Run 3 blockweise.
- **VKF P1-Rest:** übrige Brandschutzrichtlinien (Löscheinrichtungen, Sprinkler, BMA, RWA, lufttechnische Anlagen, Brandschutzabstände Tragwerke, Baustoffe & Bauteile) + P2 Erläuterungen/Arbeitshilfen.

**Status Inventar:** SIA/VKF noch NICHT komplett — P1-Kern (ohne 102-Rest/118) + VKF-Kernrichtlinien erledigt, P2 steht aus. Endbedingung «SIA/VKF KOMPLETT» noch nicht erreicht.
