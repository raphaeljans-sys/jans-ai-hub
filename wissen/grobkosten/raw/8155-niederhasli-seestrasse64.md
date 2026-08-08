# Roh-Beleg: 8155 Niederhasli, Seestrasse 64 — Machbarkeitsstudie/WKB Stand 08.07.2025

Quelle: SharePoint `IMMO - 01 Projekte/04 CONTROLLING/LINK/` → Primärdokument
`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/8155 Niederhasli 2025 Seestrasse 64 CS Controlling
Sensitivität/HVA Machbarkeitsstudie MBS/2025 Niederhasli WKB 080725.pdf`. Erstellt mit
Drittsoftware-Tool "hva" (Ersteller im Dokument: Loris Viola), im JANS-Projektordner abgelegt.
Extrahiert Run 6 (27.07.2026) durch Subagent (sonnet), Werte im Hauptkontext verifiziert.

## Objekt

Neubau MFH Eigentum (Stockwerkeigentum), 4 Wohnungen ("Haus A–D"), Region Niederhasli ZH.
Grundstück 1'049 m², BGF oberirdisch 640 m², HNF 513.95 m².

## Gebäudevolumen (SIA 416, je Geschoss ausgewiesen)

| Geschoss | GV m³ |
|---|---|
| EG | 825 |
| OG | 825 |
| DG | 293 |
| **Oberirdisch total** | **1'942.5** |
| UG | 1'901.3 |
| **Gesamt (ober- + unterirdisch)** | **3'843.8** |

## Kosten nach BKP (Einzelpositionen im selben Dokument)

| BKP | Bezeichnung | CHF |
|---|---|---|
| 1 | Vorbereitungsarbeiten | 408'400 |
| 2 | Gebäude (inkl. MwSt.) | 2'813'573 |
| 3 | Betriebseinrichtungen | 0 |
| 4 | Umgebung | 150'930 |
| 5 | Baunebenkosten | 593'503 |
| **Summe BKP 1–5** | | **3'966'406** |
| 9 | Ausstattung (separat, NICHT in Summe oben) | 88'935 |

Kennwert-Feld im Dokument selbst: 6'336 CHF/m² BGF.

**Nachtrag 08.08.2026 (Mac Mini Nachtschicht, unabhängige Gegenprüfung am Original-PDF):**
Alle Werte dieser Tabelle sowie GV, Summe BKP 1–5 und der abgeleitete Kennwert 1'032 CHF/m³
wurden direkt am Primärdokument (`pdftotext -layout`) nachgemessen und stimmen exakt. Die
oben als "leichte Rundungsdifferenz, nicht aufgelöst" vermerkte Abweichung des dokument-
eigenen Feldes 6'336 CHF/m² BGF zur eigenen Summenrechnung (3'966'406 ÷ 640 = 6'197.51) ist
**kein Rundungsfehler, sondern eine Fehlbeschriftung im Drittsoftware-Tool**: 6'336 ergibt
sich rechnerisch exakt aus (BKP 1–5 + BKP 9) ÷ BGF = (3'966'406 + 88'935) ÷ 640 = 6'336.47 ≈
6'336. Das Tool-Feld, das im Dokumentkopf als "BKP 1-5 CHF/m2 BGF" beschriftet ist, enthält
also faktisch BKP 9 (Ausstattung/Reserve) mit. Gleiches Muster beim Feld "BKP 0-5 CHF/m2 BGF
8'765": das entspricht exakt dem Anlagekosten-Gesamttotal (BKP 0-9 = 5'609'411 CHF) ÷ 640 =
8'764.70 ≈ 8'765 — also ebenfalls BKP 0-9 statt der beschrifteten Spanne BKP 0-5. Für die
Kennwerte-KB folgenlos, da der hier geführte Kennwert (1'032 CHF/m³) ausschliesslich aus der
eigenen BKP-1–5-Summe berechnet ist und nicht auf die Tool-Kopffelder zurückgreift — die
Beobachtung ist als Warnung für künftige Läufe mit demselben Tool "hva" festgehalten: dessen
Kopffelder «BKP x-y CHF/m²» sind nicht wörtlich zu nehmen, sondern vor Übernahme rechnerisch
zu prüfen.

## Abgeleiteter Kennwert

**BKP 1–5 (3'966'406 CHF) ÷ GV gesamt (3'843.8 m³) = 1'032 CHF/m³ GV.**

Hinweis zur BKP2-Binnenaufteilung (im Dokument separat ausgewiesen, nicht Teil des CHF/m³-
Kennwerts oben): BKP2 oberirdisch ≈ 873 CHF/m³ (bezogen auf 1'942.5 m³ oi), BKP2 unterirdisch
≈ 477 CHF/m³ (bezogen auf 1'901.3 m³ UG) — Untergeschoss deutlich günstiger je m³, wie
baurechtlich/konstruktiv zu erwarten.

## Standard / Nutzung

Nutzung: Wohnen, Stockwerkeigentum ("Wohnen Eigentum"). Standard-Einordnung unklar: Das
Dokument nennt als Eingangsgrössen zwei Referenz-Kostenniveaus "Rohbau Standard 1'550 CHF/m²
GF" und "Rohbau Edel 1'850 CHF/m² GF", der tatsächlich verwendete/resultierende Wert liegt mit
2'650 CHF/m² GF über beiden — die Zuordnung zu einer der beiden Kategorien ist im Dokument
nicht eindeutig aufgelöst. **Nicht selbst interpretiert/geraten** (Rule
`identifikatoren-verifizieren`) — Standard hier als "unklar, tendenziell gehoben" vermerkt,
nicht als "gehoben" festgeschrieben.

## Dokumenttyp und Belastbarkeit

Machbarkeitsstudie/WKB (Wirtschaftlichkeitskalkulation, Drittsoftware-Tool), **kein
Ausführungs-/Ist-Beleg**. Preisstand: Dokumentdatum 08.07.2025. Kostengenauigkeit nicht
explizit ausgewiesen (typisch für diese Planungsphase ±20–25 %).

Sekundärdokumente im selben Projektordner (`Controlling_Fact_Sheet_Niederhasli.pdf`,
`Niederhasli_FactSheet_Tiefanalyse.pdf`, `_Archiv/Niederhasli_Szenarien_Vergleich*.pdf`)
enthalten Alternativszenarien zum selben Projekt — nicht zusätzlich ausgewertet, da die
Primärquelle (WKB) bereits das vollständige BKP-Bild liefert.

## Einordnung für die Kennwerte-KB

**Stärkster bisher gefundener Beleg dieser KB**: explizite BKP-1-5-Einzelgliederung UND
explizites SIA-416-Gebäudevolumen im selben, in sich konsistenten Dokument. Dennoch nur
**Einzelfall n=1** (Seed-Band nicht überschrieben) — Standard-Einordnung bleibt unklar
(siehe oben) und es ist eine Planungsschätzung, kein Ausführungsbeleg.

Abrufdatum: 2026-07-27.
