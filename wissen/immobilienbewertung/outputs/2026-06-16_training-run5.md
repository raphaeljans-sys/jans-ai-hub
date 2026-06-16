# Training-Run 5 — Immobilienbewertung (2026-06-16)

Unbeaufsichtigter Lauf des Lern-Loops (`training/PROGRAMM.md`). Der Wuest-Kurs ist seit Run 1
vollstaendig eingearbeitet; dieser Lauf zieht die naechste Prioritaet — die **E-Quellen** (reale
JANS-Faelle E6, Marktpuls E7) — und schliesst die offenen Training-Aufgaben T9b, T7b und
(teilweise) T10 sowie D4.

## Schwerpunkt: reale JANS-Bewertungsfaelle quantitativ ausgewertet

Statt nur das Fall-Register (Run 4) wurden in Run 5 drei Deliverables **inhaltlich gelesen und
in belegte Kennwerte verdichtet**:

1. **LB Thalwil 9568, Bohlweg 1** (28.03.2025, 5 S.) — Neubau-Potenzial W3 80 % Sonderbauv.
2. **MA Thalwil 9568** (26.11.2024, 20 S.) — formale Marktwertanalyse mit 4 Bodenwert-Ankern,
   WP-Baukosten-Benchmarks (S. 3-5) und Residualwert-Tool-Logik (S. 9).
3. **LB Ebmatingen 3932, Im Grossacher 2** — Neubau-Potenzial W2 45 %.
4. **Neubau-Potenzial Wangen 2622, Bahnhofstrasse 27** (09.06.2026, 1 S.) — WG3, Maximalrendite.

## Die 10 Themen dieses Laufs

| # | Thema | Aufgabe | Ziel-Artikel |
|---|---|---|---|
| 1 | Thalwil 9568 LB — Ist-Kennzahlen (HNF 580, ME 470 Q90, Landwert 6.26/6.76 Mio) | T9b | projektstruktur-deliverables |
| 2 | Ebmatingen 3932 LB — Ist-Kennzahlen (HNF 500, ME 283 Q50, Landwert 2.73/2.99 Mio) | T9b | projektstruktur-deliverables |
| 3 | Wangen 2622 — Brutto-Anfangsrendite 3.0 %, Land deckelt Rendite | T9b | projektstruktur-deliverables |
| 4 | MA-Wertanker-Synthese (Residualwert/UBS-FS-Mittel/Top → Marktwert) | T9b/E6 | projektstruktur-deliverables |
| 5 | JANS-Gebaeudestandard-/ROE-Ampel (eloquent 1'450/m3; > 5 % wirtschaftlich) | T9b | projektstruktur-deliverables |
| 6 | JANS-Bewertungskonvention (2.50 % Kap., 2.70 % Diskont, 8 % Risiko, −5 % Abschlag) | D4 | ertragswert-dcf |
| 7 | Residualwert-Tool-Struktur reverse-engineered (Wohnungsmix × HNF/GF-Effizienz, Abzuege) | D4 | ertragswert-dcf |
| 8 | T7b Zu-/Abschlagslogik Median → Objekt (6-Schritt-Checkliste + Quantil-Praxisanker) | T7b | vergleichswert-hedonisch |
| 9 | Marktpuls Mieten/SREBI 06.2026 (Angebot +0.7 %, Bestand −0.8 %, SREBI Q4-25 0.48) | T10 | investorenmarkt-makro |
| 10 | Baupreisindex 2025 (BFS 116.2 Okt-2025, +0.9 % Hochbau YoY) | T10 | investorenmarkt-makro, realwert-sachwert |

## Was gelernt wurde (Kerngehalt)

- **Quantil-Wahl ist die zentrale Lage-Stellschraube:** Premiumlagen (Thalwil/Zimmerberg) →
  ME und STWE-Kaufpreis am **Q90** der UBS-FS; Durchschnittslagen (Ebmatingen) am **Q50-60**.
  Belegt mit Ist-Werten beider LB.
- **JANS-Bewertungskonvention ist jetzt belegt** (vorher nur WP-Anker): Mietobjekt
  kapitalisiert mit **2.50 %/40 J**, Residualwert diskontiert mit **2.70 %**, Risiko/Gewinn
  **8 %**, Baukostenabschlag **−5 %**, Renditeschwelle **4.5 %**, ROE-Ampel < 2 / 2-5 / > 5 %.
- **Residualwert-Tool-Struktur** aus der MA Thalwil S. 9 rekonstruiert (Wohnungsmix nach
  Zimmerzahl × HNF/GF-Effizienz 0.73-0.83 → Soll-/Nettoertrag − Erstellungskosten+Risiko −
  Abzuege) → adressiert die Wissensluecke **D4 teilweise**, ohne die `.xlsx`-Freigabe.
- **MA koppelt Vergleichs- und Residualwert:** vier Bodenwert-Anker (Residualwert JANS,
  UBS-FS-Bauland Mittel/Top, Marktwert-Synthese) + Entwicklergewinn-Gegenrechnung
  (Anlagewert − Anlagekosten).
- **Marktpuls 2026:** Mietwachstum stark abgekuehlt (Angebot +0.7 % erwartet nach +6 % 2024),
  Bestandesmieten leicht ruecklaeufig (Referenzzins-Senkungen); Blasenrisiko «moderat», aber
  SREBI Q4-2025 mit dem staerksten Quartalsanstieg seit 1989 (0.27 → 0.48). Baupreise weiter
  leicht steigend (116.2).

## Geaenderte Artikel

- `wiki/projektstruktur-deliverables.md` → **established**, Kennwert-Benchmark-Tabelle + MA-
  Wertanker-Synthese.
- `wiki/ertragswert-dcf.md` → JANS-Bewertungskonvention + Residualwert-Tool-Struktur.
- `wiki/vergleichswert-hedonisch.md` → T7b-Checkliste + Quantil-Praxisanker.
- `wiki/investorenmarkt-makro.md` → Marktpuls-Sektion 06.2026.
- `wiki/realwert-sachwert.md` → **established**, Baupreisindex-2025-Update + JANS-Praxisbeleg.
- Register: `_INGESTED.md`, `curriculum.md`, `wissensluecken.md`, `CHANGELOG.md`.

## Was als naechstes (Run 6)

- **T15** Niederhasli **CS Controlling & Sensitivitaet** auswerten (Szenarienlogik hoch/tief,
  Break-Even-Mechanik — das CS-Deliverable ist methodisch noch unbelegt).
- **T16** Restliche LB-Detail (Langnau 3338, Wangen-LB) + gezielt einen **Healthcare-
  Bewertungsfall** suchen (bisher nur Wohnen/MFH belegt; Bruecke zu `healthcare-wirtschaftlichkeit`).
- **T10 laufend:** neuerer SREBI-Stand, Mietpuls-Aktualisierung; Bodenpreis-Strukturdaten (D2).
- Offene Freigaben (Raphael): D4 `.xlsx`-Formeln, D8 `_Kennwerte Jans.docx`/Healthcare-DOCX.

## Datenstand / Vorbehalte

- Reale Fall-Kennzahlen sind Stand 2024/2025 (LB/MA), Wangen 06.2026 — als Methodik-Benchmark
  belastbar, nicht als aktuelle Marktwerte.
- Marktpuls-Zahlen aus Web (Wuest/SMG-Mietindex, UBS SREBI, BFS Baupreisindex), Stand 06.2026.
- Nichts erfunden; alle Saetze/Kennwerte mit Quelle (LB/MA-Seite bzw. Web) hinterlegt.
