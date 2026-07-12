# CHANGELOG — KB Normen
## 2026-07-12 — Wettbewerbs-Layer-Normen: SIA 400 neu destilliert; SIA 142/143 in INDEX nachgezogen
- Auftrag Normen-Destillateur für den neuen Wettbewerbs-Layer: SIA 400 (Planbearbeitung im Hochbau),
  SIA 142 (Wettbewerbe), SIA 143 (Studienaufträge) lokalisieren + destillieren.
- **SIA 142:2009 und SIA 143:2009**: bereits vollständig destilliert vorhanden (`sia-142-2009.md`,
  `sia-143-2009.md`, Original je S.1-19 gelesen) und in REGISTER geführt — nur im destillate/INDEX.md
  gefehlt, jetzt nachgetragen. Kein Doppel angelegt.
- **SIA 400:2000 neu destilliert** (`sia-400-2000.md`): Quelle `SIA_Norm/SIA_Normen/alle/400_2000_d.pdf`
  (72 S., sauberer Textlayer, `pdftotext -layout`), 2. Auflage 2001-03, ersetzt Empfehlung SIA 400:1985.
  Fokus für die MASCHINELLE Planerzeugung (Anhang B): Planformate A0-A4 + 5-mm-Randlinie (B.1.1),
  Plankopf-Pflichtinhalt unten rechts (B.1.3), Massstabsleiter 1:200 Wettbewerb/1:100/1:50/1:20 (B.1.4),
  **max. 3 Liniendicken 0,25/0,50/1,00 oder 0,18/0,35/0,70** + Linienart-Zuordnung Tabelle 4 (B.3),
  Masse/Koten mit Massstrich=2×Masslinie (B.5), Baustoff-Sinnbilder/Kurzzeichen + Schwarz ab 1:100 (B.8.3),
  Bauteildarstellung Fenster/Tür/Treppe (B.9), **CAD/Layer nach Merkblatt SIA 2014** Agent+Element+E/T/D (B.11).
- Inventar `training/norm-inventar.md`: SIA 400 war `[ ]` P2 — auf `[x] 260712` gesetzt.
  REGISTER führt SIA 400/142/143 bereits als gültig (2013er-Register) — keine Änderung nötig.
- Bring-Schuld vermerkt: Merkblatt SIA 2014 (CAD-Layerkatalog) nicht im Bestand (→ QUESTIONS).

## 2026-07-12 — Nacht-Loop Run 2 MacBook Pro: P1-Kernnormen SIA/VKF (Stations-Split, Workflow-parallelisiert)
- Stations-Split eingehalten: NUR SIA/VKF bearbeitet (DIN/VSS/RAL bleiben Mac Mini).
- **10 Destillate neu, alle `established`** (Extraktion `pdftotext`/OCR-Fallback via sonnet,
  danach je ein unabhaengiger Verifikations-Agent auf dem Hauptmodell, der jede Fundstelle am
  Quell-PDF zu WIDERLEGEN versuchte): SIA 103:2003 (Bauingenieur-Honorar, Formeln Art. 7 +
  Leistungstabelle 7.11.3 wortgenau), SIA 105:2020 (Landschaftsarchitekt-Honorar, Kategorie-Modell
  Art. 6, kein Baukosten-Prozentmodell), SIA 111:2014 (Modell Planung und Beratung), SIA 112:2014
  (Modell Bauplanung, 6 Phasen/13 Teilphasen), **SIA 416:2003 (Flächen und Volumen — JANS-Kernnorm
  GSF/GF/NGF/HNF/NNF/KF/AGF/GV)**, SIA 451:1992 (Datenformate LV), VKF 1-15 Brandschutznorm 2015,
  VKF-BRL 16-15 Flucht-/Rettungswege (rev. 2016), VKF-BRL 14-15 Verwendung von Baustoffen (RF-Klassen),
  VKF-BRL 27-15 Nachweisverfahren.
- **Verifikations-Verdikte:** 10/10 `bestanden`. Korrekturen durch die Widerlegungs-Instanz:
  105 Tabellen-Seitenangabe 51→52; Brandschutznorm Art. 27 «Abs. 3»→Abs. 2 + Überinterpretation
  «hohe Sicherheitsanforderung»→«Je nach Sicherheitserfordernis» angeglichen; 16-15/27-15
  IVTH-/IOTH-Zuordnung richtiggestellt («alle Kantone», nicht «IVTH-Kantone»). Keine erfundenen
  Ziffern/Kennwerte gefunden.
- Befund: 105:2020 hat KEIN baukostenabhängiges Prozentmodell (Art. 7), nur Kategorie-/Zeitmodell
  (Art. 6) — relevant für `honorarberechnung-sia102`. 3 Normen (105/111/112) sind reine Scans ohne
  Textlayer → via tesseract/ocrmypdf OCR verifiziert.
- Inventar (`training/norm-inventar.md`): 10 Zeilen `[x] 260712`; INDEX + REGISTER (Abschnitt Run-2)
  nachgeführt. Report: `outputs/2026-07-12_normen-nacht-run2.md`.

## 2026-07-12 — Intensiv-Lauf Mac Mini: DIN/VSS/RAL (Stations-Split)
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- **8 Destillate neu:** DIN 277-1:2005, DIN 277-2:2005, DIN 5034-1:1999, RAL-GZ 638:2008
  (Teil-Destillat S.1-10/24), VSS/ZH 700.5 Zugangsnormalien (1987), VSS/ZH 722.15
  Verkehrssicherheitsverordnung (1983), Stadt-ZH-Merkblatt Veloabstellplätze (1996/1998),
  SN 640 050 Grundstückzufahrten (1993). RAL-Familie damit inhaltlich begonnen (1/1 Datei,
  teilweise); VSS 4 von 11 PDF-Normen destilliert; DIN 3 Positionen (Serie 277 Teil 1+2 von 3).
- **Verifikation:** Direktlektuere Original-PDF mit Seiten-/Ziffer-Fundstellen (Modell D,
  Volltextabgleich an der Quelle); keine DRM-Barriere bei den getesteten DIN-PDFs.
- **Reduzierter Umfang:** Lauf wurde bei 8 von geplanten 15-25 Positionen aus Budgetgruenden
  vorzeitig abgeschlossen (Bericht + Register + Commit vollstaendig, aber Fortsetzung noetig).
  Zurueckgestellt: DIN 277-3, DIN 276-1/-4, DIN 18065, DIN 4102-1/2, DIN 18040-1/2 (gross,
  18-20 MB, scanlastig), DIN 1946-6 (125 S.); VSS 640 060/065/066/281/291a/578 (teils gross,
  bis 20 MB); DIN-Sonstiges-Ordner. Alle im `norm-inventar.md` mit Grund/Status vermerkt,
  DRM-Test fuer grosse DIN-EN-Dateien offen (QUESTIONS.md).
- Register (`wiki/REGISTER.md` Abschnitt B) und Destillat-Index nachgefuehrt.
- Report: `outputs/2026-07-12_normen-mini-run1.md`.


## 2026-07-11 — Gültigkeits-Klärung SIA 118 + VKF (Anfrage Raphael)
- **SIA 118:** Web-verifiziert — aktuelle Ausgabe ist 118:2013, keine neuere; SharePoint-weiter
  Suchlauf: nur 1991 im Bestand → Kauf SIA-Shop nötig (Bring-Schuld Raphael). QUESTIONS nachgeführt.
- **VKF:** Web-verifiziert (bsvonline.ch) — BSV 2015 weiterhin rechtsgültig; Inkraftsetzung
  BSV 2026 wird erst im IOTH-Plenum März 2027 behandelt. **Normkonzept BSV 2026** (170 S.,
  Stand 06.10.2022) vom VKF-Publikationsserver beschafft und abgelegt:
  `VKF_Norm/07_BSV 2026 Projekt (noch nicht in Kraft)/260711 VKF Normkonzept BSV 2026 Stand 2022-10-06.pdf`.
  Neue Daueraufgabe in QUESTIONS: definitive BSV-2026-Texte nach Publikation beschaffen.

## 2026-07-11 — Compounding-Zugriff (Anfrage Raphael, Pflichten Architekt/Bauleiter)
- SIA 102:2020 am Original gelesen (S. 21–26, 30–37, visuell — Scan nicht text-extrahierbar)
  → Teil-Destillat `destillate/sia-102-2020.md`: **Ziff. 4.41 verifiziert** (Ausschreibung,
  Offertvergleich, Vergabeantrag = Architekten-Grundleistungen inkl. Durchführung),
  dazu 4.31–4.33, 4.53, 4.6, Art. 5 als Kurzbefund. Rest (v.a. 4.52 Oberleitung vs.
  örtliche Bauleitung, Art. 7 Phasenanteile) an den Nacht-Loop delegiert.

## 2026-07-11 — Nacht-Loop Run 1 (Sonderprogramm: Gültigkeits-Register)
- **Zugriffs-Check OK:** OneDrive-Normenpfad lesbar (keine TCC-Blockade); PDFs via
  `pdftotext -layout` extrahiert (effizienter als visuelles Lesen für Listen-PDFs).
- **Datenstand geklärt:** `ersetzte_normen.pdf` = SIA-Rückzugs-/Ersatz-Register, Stand
  **25.02.2013**; `Gesamtverzeichnis SIA.pdf` = Produkt-/Preiskatalog **~2002** (kein
  Gültigkeitsregister). → QUESTIONS-Punkt 1 beantwortet.
- **`wiki/REGISTER.md` aufgebaut** (330 Zeilen): SIA-Gültigkeit je Norm (Stand 2013),
  Ausgaben-Ketten (✓/✗), Bestand-Abgleich gegen das Inventar, grosse Umnummerierungen
  (26x-Tragwerksreform, 118/xxx-Integration, 116→416, 462→269), Mehrfach-Ausgaben-Flags,
  Nicht-SIA-Familien (VKF 2015, DIN/VSS/RAL). Ehrlicher Hinweis: Register bildet 2013 ab,
  Post-2013-Revisionen als Bestands-Abgleich markiert, nicht erfunden.
- **2 Destillate:** `sia-register-2013.md`, `sia-gesamtverzeichnis-2002.md` (+ INDEX).
- **Inventar nachgeführt:** beide Register-PDFs `[x] 260711`; Mehrfach-Ausgaben markiert
  (SIA 102 2014→2020, 111 2003→2014, 108 2003→2014, 142 1998→2009, 273, 329, 384.201).
- **Wichtige Befunde:** SIA 118 im Bestand = 1991, gültig wäre 118:2013 (Flag in QUESTIONS);
  SIA 102 Bestand 2020 (jünger als Register-Stand 2003, vermutlich aktuell).
- Report: `outputs/2026-07-11_normen-nacht-run1.md`. Nächster Lauf: P1-Destillate (SIA 102/103/105/…).

## 2026-07-11
- KB angelegt (Gerüst nach WISSEN-CLAUDE.md: raw/wiki/outputs + destillate/ + training/).
- `training/norm-inventar.md` automatisch erzeugt: 528 Dateien über die Familien
  SIA (inkl. Gesamtverzeichnis), VKF, DIN, VSS, RAL gescannt; Prioritäten gesetzt
  (P1 = Skill-Kernnormen SIA 102/103/105/111/112/118/380/416/451 + VKF Norm/Richtlinien).
- Skill `normen` (Router) und Rule `normen-referenz` erstellt; Nacht-Loop
  `normen-training-nacht` (täglich 22:00) aufgesetzt.
- Entscheide Raphael 11.07.2026: alle Norm-Familien im Scope; SharePoint bleibt
  einzige PDF-Quelle (keine Kopien); Zugriff via Skill + Rule; Destillierung im
  nächtlichen Loop bis das Inventar abgearbeitet ist.
