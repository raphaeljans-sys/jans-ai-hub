# CHANGELOG — KB Immobilienbewertung

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-06-09 — UBS Fact Sheets Wangen (SZ) + Zollikon (ZH) eingearbeitet

- Zwei neue UBS Real Estate Local Fact Sheets (12/2025, Daten 2025-Q3) aus
  `IMMO - 02 UBSFS` kompiliert und als maschinenlesbare Marktdaten-Blaetter abgelegt:
  - `wiki/marktdaten-gemeinden/sz-wangen-8854.md` (Wangen SZ, BFS 1349) — EFH-Median
    10'690, EW-Median 9'616, Miete-Median 265 CHF/m²/Jahr.
  - `wiki/marktdaten-gemeinden/zh-zollikon-8125.md` (Zollikon ZH, BFS 0161) — EFH-Median
    19'514, EW-Median 20'000, Miete-Median 388 CHF/m²/Jahr.
- Neuer Sammel-Index `wiki/marktdaten-gemeinden/README.md` (Lesehilfe UBS-FS-Spaltenlogik).
- `wiki/INDEX.md` um Sektion "Marktdaten Gemeinden" erweitert.
- `datenquellen-registry.md`: UBS-FS-Zeile auf 10 Gemeinden / Stand 2212-2512 aktualisiert,
  Verweis auf kompilierte Blaetter; **UBS Swiss Real Estate Bubble Index Q2-2024**
  (`srebi-q2-2024-de.pdf`) als Makro-Quelle neu registriert (Status offen).
- `raw/_INGESTED.md`: UBS-FS-Zeile auf "teilweise — Wangen/Zollikon eingearbeitet" gesetzt.
- Im Wangen-Blatt **Anwendungshinweis** zum erwarteten Folgefall *Bahnhofstrasse 27, Wangen
  SZ* (Plausibilisierung Verkaufspreis 3.1 Mio. vs. Bankschaetzung 2.8 Mio.) hinterlegt —
  Bewertung noch nicht durchgefuehrt.

## 2026-06-03 — KB angelegt (Seed aus IMMO-Sammlung)

- KB `immobilienbewertung` erstellt nach Meta-Schema (`wissen/WISSEN-CLAUDE.md`).
- `CLAUDE.md` (KB-Schema, Fokus-Bereiche, Quellen-Hierarchie) geschrieben.
- Struktur `raw/ wiki/ outputs/ training/` angelegt.
- **Seed-Artikel** im `wiki/` aus der ersten Sichtung der Ordner `IMMO - 01` bis
  `IMMO - 06` und der Wuest-Partner-Praesentation "Immobilien entwickeln" (21.06.2023,
  236 Seiten):
  - `bewertungsverfahren-ueberblick` (established)
  - `residualwertmethode` (established)
  - `ertragswert-dcf` (emerging)
  - `vergleichswert-hedonisch` (emerging)
  - `realwert-sachwert` (emerging)
  - `flaechendefinitionen-sia` (established)
  - `lageklasse-landwertanteil` (emerging)
  - `nutzungskonzepte` (emerging)
  - `investorenmarkt-makro` (emerging)
  - `erfolgsfaktoren-wettbewerb` (emerging)
  - `datenquellen-registry` (established)
  - `projektstruktur-deliverables` (established)
- `wiki/INDEX.md` und `wiki/wissensluecken.md` angelegt; 20+ Wissensluecken aus der
  Datenquellen-Pruefung erfasst (veraltete UBS-FS, CRB-OAK 2011, Bodenpreise nur als
  Screenshots, Ausnuetzungsziffer-Ordner leer, Diskontsatz-Herleitung undokumentiert,
  Excel-Residualwert-Logik nicht reverse-engineered).
- `training/PROGRAMM.md` (Lern-Loop alle 2 Tage, 10 Themen/Lauf) und
  `training/curriculum.md` (Lektionsplan aus dem 236-seitigen Wuest-Kurs) angelegt.
- `raw/_INGESTED.md` als Quellen-Register angelegt.
