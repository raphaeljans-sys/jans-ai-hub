# CHANGELOG — KB Normen

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
