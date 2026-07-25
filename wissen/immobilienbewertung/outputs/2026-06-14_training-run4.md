# Training-Run 4 — KB Immobilienbewertung (2026-06-14)

Unbeaufsichtigter Lauf des Immobilienbewertungs-Harness (Scheduled Task
`immobewertung-training`). Wüest-Kurs ist seit Run 1 vollständig; dieser Lauf arbeitete die
**E-Quellen und T-Aufgaben** ab. **10 Themen** bearbeitet.

## Bearbeitete Themen

| # | Thema | Quelle | Ziel-Artikel | T-/E-Bezug |
|---|---|---|---|---|
| 1 | UBS SREBI Bubble Index Q2-2024 | `02 UBSFS/srebi-q2-2024-de.pdf` (S. 1-7) | investorenmarkt-makro | T14 ✓ |
| 2 | UBS-FS **Thalwil** (ZH) 7/2024 | `02 UBSFS/.../Thalwil 2407` | marktdaten-gemeinden/zh-thalwil-8800 | T7 |
| 3 | UBS-FS **Muri** (AG) 7/2024 | `02 UBSFS/Muri AG 2407.pdf` | marktdaten-gemeinden/ag-muri-5630 | T7 |
| 4 | UBS-FS **Regensdorf** (ZH) 12/2023 | `02 UBSFS/.../Regensdorf 2312` | marktdaten-gemeinden/zh-regensdorf-8105 | T7 |
| 5 | UBS-FS **Luzern** (Stadt, LU) 12/2023 | `02 UBSFS/.../Luzern 2312` | marktdaten-gemeinden/lu-luzern-6000 | T7 |
| 6 | Hedonik-Modellfamilie CH | Web (UBS/IAZI/bestag/HEV) | vergleichswert-hedonisch | T7 ✓ |
| 7 | JANS-Flächenfaktoren Wohnen | `06 Kennwerte/.../Flächenkonzeption Wohnen.pdf` | flaechendefinitionen-sia | T8 ✓ |
| 8 | Reale JANS-Bewertungsfälle | `01 Projekte/01 BEWERTUNG PROJEKTE/` | projektstruktur-deliverables | T9 ✓ |
| 9 | Marktpuls Zins/Referenzzinssatz 06.2026 | Web (BWO) | investorenmarkt-makro | T10 teilw. |
| 10 | Büromarkt Zürich 2024 | `06 Kennwerte/BUERO/hbre … 082024.pdf` | investorenmarkt-makro | E7 |

## Was gelernt (Kerngehalt)

- **Alle 10 UBS Fact Sheets sind nun kompiliert.** Mit Thalwil/Muri/Regensdorf/Luzern liegt
  jetzt das volle Spektrum vor: Premium-Seelage ZH (Thalwil EFH-Median **15'384 CHF/m²**,
  Preis-Miet 45.7) ↔ ländliches Mittelzentrum (Muri AG **7'978 CHF/m²**, Preis-Miet 36.2) ↔
  Zentrumsstadt (Luzern **10'866 CHF/m²**). Das quantifiziert den Vergleichswert-Leitsatz «Lage
  als stärkster Treiber»: Faktor ~2 allein über die Gemeinde.
- **Hedonik-Modellfamilie:** Wüest Partner / IAZI / Fahrländer (FPRE) / PriceHubble; Methodenkern
  ist überall **Regression über reale Handänderungen** (~70 Kriterien, UBS-Modell seit 1999 mit
  WP, >20'000 Transaktionen/Jahr). Entscheidend für die Verfahrenswahl: hedonisch nur für
  **EFH/EW** belastbar, **nicht für MFH/Gewerbe/Spezialobjekte** (dort Ertrags-/Realwert).
- **SREBI Q2-2024 = 0.74 «moderat»**, rückläufig; getragen von tiefem Umfeld-Score (-0.81) und
  abflauender Dynamik, aber erhöhtem Fundament (1.73). Regionale Hotspots: Stadt ZH, Genf,
  Lausanne, Zug — deckt sich mit den hohen Preis-Miet-Verhältnissen der ZH-Premiumlagen.
- **Marktpuls 06.2026:** Referenzzinssatz **1.25 %** (seit 09.2025, bestätigt 06.2026),
  SNB-Leitzins **0 %**. Asymmetrie wegen verzögerter Referenz-Mechanik. Stützt tiefe
  Kapitalisierungssätze, aber Mietsenkungsdruck via Referenz.
- **JANS-Flächenfaktoren** (Raphaels eigene Benchmarks, 20.10.2024): HNF = 0.20 × Baumasse,
  GF = 0.33 × Baumasse, HNF/GF 0.60 (ganzes Gebäude) bzw. 0.75 (Regelgeschoss) — schnelle
  Volumen→Flächen→Wohnungen-Kette für Vorstudien; in sich konsistent (0.20/0.33 ≈ 0.61 ≈ 0.60).
- **Reale Fälle** bestätigen den Workflow: jedes LB legt das **UBS-FS der Gemeinde** + den
  **OEREB-Auszug** im `link/`-Ordner ab; RW rechnet mit dem Wüest-Tool in **Szenarien tief/hoch**.

## Was geändert

- 4 neue Gemeinde-Artikel (Thalwil/Muri/Regensdorf/Luzern); README + INDEX nachgeführt.
- `investorenmarkt-makro` (+SREBI +Marktpuls +Büromarkt), `vergleichswert-hedonisch`
  (+Modellfamilie), `flaechendefinitionen-sia` (JANS-Faktoren statt Platzhalter),
  `projektstruktur-deliverables` (Fall-Register).
- Register: `_INGESTED.md`, `curriculum.md`, `wissensluecken.md`, `CHANGELOG.md`.

## Was als Nächstes (Run 5)

- **T10 laufend:** Mietpreis-/Angebotsmieten-Puls 2026 + neuerer SREBI-Stand (Q2-2024 ist > 18 Mt.).
- **T9b:** effektive m²/Marktwerte einzelner LB-PDFs als zahlenmässige Benchmarks auswerten
  (z.B. Thalwil 9568, Ebmatingen 3932).
- **T7b:** Zu-/Abschlagslogik Median → konkretes Objekt als Checkliste formalisieren.
- **Freigabe-abhängig (Raphael):** D4 Excel-Tool-Logik, D8 `_Kennwerte Jans.docx` + Healthcare-DOCX.
- Danach: UBS-FS-Aktualisierung (D1, alle Stände nun > 18 Mt.) und Bodenpreis-Quelle (D2).
