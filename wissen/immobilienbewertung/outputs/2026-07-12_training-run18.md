# Training-Run 18 — Verifikations-Pass Healthcare-Kennwerte (2026-07-12)

**Modus:** Verifikation/Vertiefung (kein neuer Ingest). Erster Lauf unter der ab 12.07.2026
verbindlichen **Verifikations-Stufe** (Rule auto-verbesserungen 260712, PROGRAMM Abschnitt
«Verifikations-Stufe»). Der auto-schliessbare Ingest-Rueckstand ist seit Run 16 abgearbeitet;
Run 17 war ein reiner Marktpuls-Lauf. Dieser Lauf haertet stattdessen die **meistgenutzten
Zahlen** der KB, bevor sie in reale Bewertungen (LB/RW/MA/CS) einfliessen.

## Ausgangslage

Das Wiki trug bereits eine **dangling «Run 18»-Verifikationsnotiz** in [[realwert-sachwert]]
(Healthcare-8-Objekt-Reproduzierbarkeit), die aber (a) auf eine nicht existierende Luecke **D10**
verwies, (b) die Register (`wissensluecken.md`, `_INGESTED.md`, `INDEX.md`) nicht nachfuehrte und
(c) `last_updated` auf 07-10 stehen liess. Run 18 vollzieht diese Verifikation **unabhaengig nach**
(eigener Recompute, nicht bloss Uebernahme der Notiz), schliesst die Register und macht die
Konsequenz explizit.

## Die 10 verifizierten Kennwert-Komplexe (Modell D — Volltext-Recompute)

Jeder Kennwert wurde direkt aus den Quell-Zahlen (BKP-2-Summe ÷ Flaeche/Zimmer) nachgerechnet:

| # | Kennwert-Komplex | Quelle | Verdikt |
|---|---|---|---|
| 1 | Herose BKP2 / m2 GF = 3'848 | 40.215 Mio / 10'452 = **3'848** | ✓ bestanden (exakt) |
| 2 | Herose BKP2 / m3 GV = 1'105 | 40.215 Mio / 36'406 = **1'105** | ✓ bestanden (exakt) |
| 3 | Herose BKP2 / Zimmer = 346'681 | 40.215 Mio / 116 = **346'682** | ✓ bestanden (Rundung) |
| 4 | 8-Objekt-Tabelle CHF/m2 GF | BKP2÷GF je Objekt | ✓ 6/8, ✗ Averecura/Vella |
| 5 | 8-Objekt-Tabelle CHF/m3 GV | BKP2÷GV je Objekt | ✓ 6/8, ✗ Averecura/Vella |
| 6 | CHF/Pflegezimmer (24-m2-Normierung) | Lanzeln 272'780 ≠ 29.34 Mio/123 = 238'537 | ✓ Normierung bestaetigt |
| 7 | JANS-Wohn-Kennwert Indexierung | 2'900 × 1.16 = **3'365** (BKP 2) | ✓ bestanden (Rundung) |
| 8 | BKP2 → BKP1-5 (÷0.75) | 3'365 / 0.75 = **4'487 ≈ 4'485** | ✓ bestanden (Rundung) |
| 9 | Thalwil-Bohlweg + HNF-Faktor | 950×4'485=4.26 Mio; /580 = **7'348 ≈ 7'350** | ✓ bestanden (Rundung) |
| 10 | USZ-BKP-Aufgliederung (CRB) | Komponentensumme 3'628 ≈ EK 3'767 | ✓ plausibel (Teil-Gliederung) |

**Ergebnis:** 8 von 10 Komplexen voll bestanden; 2 (Komplexe 4/5) mit je zwei beanstandeten
Roh-Zeilen.

## Beanstandungen (→ neue Luecken)

**D10 — Referenzblatt «Kennwerte Altersheime», 2 Roh-Zeilen nicht reproduzierbar:**
- **Averecura:** Tab. CHF/m2 GF 4'250 / CHF/m3 GV 1'420, aber 12.34 Mio ÷ 3'100 = **3'981** bzw.
  ÷ 9'600 = **1'285**.
- **Vella:** Tab. CHF/m2 GF 2'835 / CHF/m3 GV 845 implizieren beide ~20.3 Mio BKP 2, waehrend die
  Zeile **BKP 2 = 24.5 Mio** nennt (24.5/7'150 = **3'427**).
- Das sind Inkonsistenzen **im JANS-Original-Blatt**, kein KB-Fehler. Bring-Schuld Raphael:
  die beiden Zeilen bereinigen (BKP-2-Summe oder Flaeche/Kennwert pruefen). Bis dahin gilt der
  **reproduzierbare Rohband ~2'623-3'981 CHF/m2 GF** bzw. die voll reproduzierbare
  teuerungsbereinigte Spalte **3'042-4'485** als Ansatz.

**D11 — m3-Neuwert-Richtwerte Stand 2003 aufindexieren:** der belegte Index-Faktor 2003→2026
fehlt der KB (BFS-Reihe erst ab Basis Okt-2020 = 100 dokumentiert; Zuercher Wohnbaukosten-Index
1939er-Basis nicht hinterlegt). Gemaess Leitplanke **nicht geraten** — offen, bis die lange
Index-Reihe als Quelle vorliegt. Die m3-Klassen dienen ohnehin primaer der Sachwert-
Plausibilisierung; der belastbare Ansatz laeuft ueber die belegten CHF/m2-HNF- und
Healthcare-GF-Kennwerte.

## Gesamtverdikt

Die **tragenden, in reale Deliverables uebernommenen Kennwerte** (Herose-Anker, JANS-Wohn-
Kennwert-Kette, teuerungsbereinigtes Healthcare-Neubau-Band ~3'800-4'500 CHF/m2 GF) sind
**reproduzierbar und bleiben `established`**. Die zwei beanstandeten Roh-Ausreisser betreffen
nicht den Ansatzwert (der ueber die teuerungsbereinigte Spalte laeuft), sondern nur die
Roh-Bandkante — mit ⚠ Vorbehalt und D10 dokumentiert.

## Geaenderte Dateien

- `wiki/wissensluecken.md` — neue Luecken **D10** + **D11** in Tabelle A; B-Sektion auf
  Verifikations-Modus umgestellt; Run-18-Erledigt-Eintrag; Ruecktaktungs-Empfehlung.
- `wiki/realwert-sachwert.md` — `last_updated` 07-10 → **07-12**; m3-2003-Flag auf D11 verlinkt;
  Verifikations-Verdikt in «Offen / zu vertiefen». (Die bestehende Run-18-Verifikationsnotiz
  ist durch den unabhaengigen Recompute jetzt belegt und ihr D10-Verweis aufgeloest.)
- `raw/_INGESTED.md` — Run-18-Stand-Block.
- `training/curriculum.md` — Verifikations-Vermerk.
- `wiki/INDEX.md` — Verifikations-Hinweis am realwert-Eintrag.
- `CHANGELOG.md` — Run-18-Eintrag (zuoberst).

## Empfehlung an Raphael (Ruecktaktung)

Der **auto-schliessbare Rueckstand ist abgearbeitet**: Wuest-Kurs, alle lesbaren E-Quellen,
alle T-Aufgaben, D4 und D8 sind eingearbeitet; die tragenden Kennwerte sind jetzt verifiziert.
Verbleibend sind ausschliesslich **nicht durch den Loop schliessbare** Punkte (D5 Margen-/
Finanzierungspraxis, D10 Blatt-Bereinigung, D11 fehlender Index-Faktor — alles Bring-Schuld
bzw. externe Quelle) sowie der laufende Marktpuls, der erst wieder **ab 01.09.2026** (Referenzzins,
SREBI Q2) ein neues Signal liefert.

Gemaess PROGRAMM (Abschnitt «Intensivphase») ist damit der markant bessere Wissensstand
erreicht → **Vorschlag: den Lern-Loop `immobewertung-training` ins Nachtfenster zuruecktakten**
(z.B. alle 2 Tage, 22:00-06:00, gestaffelt). Der Loop laeuft sonst weiter mehrmals taeglich,
ohne dass neues auto-schliessbares Material vorliegt — der Grenznutzen weiterer Laeufe ist bis
zum naechsten Publikations-/Fall-Signal gering. (Entscheid Raphael; nicht stillschweigend
umgesetzt.)

## Naechster Lauf

- **Wenn weiter im Intensiv-Takt:** naechster Verifikations-Komplex — Reproduzierbarkeit der
  Ertragswert-/Diskont-Kennwerte in [[ertragswert-dcf]] (Kapitalisierungs-Kaskade, Break-Even-
  Formel gegen die Niederhasli-Ist-Zahlen) sowie der Residualwert-Excel-Tool-Formeln (D4-Beleg
  gegen die Zellwerte).
- **Neues externes Signal ab 01.09.2026:** Referenzzins-Publikation (Stichtag 30.06.), SREBI
  Q2-2026, danach Baupreisindex Dez-2026 → Marktpuls-Update [[investorenmarkt-makro]].
- **Sobald Raphael liefert:** D5 (Margen/Finanzierung), D10 (Blatt-Bereinigung), D11 (Index-Reihe).
