# Grobkosten-Trainingslauf — Run 9 (2026-07-27)

Station: Mac Mini (VOLLGAS-Endlos-Runner). Kollisionscheck via `ps`/`PPID`-Abgleich
durchgeführt: einziger Treffer war die eigene Parent-Instanz dieses Laufs, keine echte
Zweitinstanz auf diesem Host.

## Ausgangslage

`wiki/QUESTIONS.md` (Run 8) nannte zwei Optionen für Run 9: (a) die in Run 8 gefundenen
Baupreisindex-Faktoren auf die bestehenden Einzelfälle anwenden (Preisstand-Normalisierung,
risikolos, mit vorhandenem Material machbar), (b) weitere ungeprüfte SharePoint-Bibliotheken
sichten (`AR - 02 Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer`). Empfehlung:
zuerst (a). Dieser Lauf setzt (a) um.

## Vorgehen

Die vier Einzelfälle mit sauberem GV+BKP-1-5-Tripel (2001 Haus Deuber Thalwil, 2304
Reckholdern 20, 8155 Niederhasli Seestrasse 64, 2620 Albertstrasse 7) wurden auf den
gemeinsamen Stichtag 01.04.2025 (neuster verfügbarer Anker des Zürcher Index der
Wohnbaukosten, `raw/zuercher-index-wohnbaukosten-1939-2025.md`) normalisiert. Methode:
liegt der Preisstand eines Falls zwischen zwei belegten Jahres-Stützstellen, wird linear
interpoliert (Standardverfahren der Bauteuerungs-Indexierung — beide Stützpunkte sind
publizierte, belegte Werte, es wird kein unbekannter Wert geschätzt). Liegt der Preisstand
NACH dem letzten Anker, wird NICHT extrapoliert (Rule «Kennwerte nie raten»).

## Ergebnis

| Projekt | Original | Preisstand | Faktor auf 01.04.2025 | Normalisiert |
|---|---|---|---|---|
| 2001 Haus Deuber, Thalwil | 1'086 CHF/m³ | 10/2020 | +15.1 % | ≈ 1'250 CHF/m³ |
| 2304 Reckholdern 20 | 1'735 CHF/m³ | 12/2023 | +1.3 % | ≈ 1'757 CHF/m³ |
| 8155 Niederhasli, Seestrasse 64 | 1'032 CHF/m³ | 07/2025 | — (nach letztem Anker) | 1'032 CHF/m³ unverändert |
| 2620 Albertstrasse 7 (Umbau) | 2'500 CHF/m³ | 07.03.2026 | — (nach letztem Anker) | 2'500 CHF/m³ unverändert |

Volle Herleitung inkl. Zwischenwerten: `wiki/kennwerte.md`, Abschnitt "Run 9".

## Erkenntnis

Die Preisstand-Korrektur verringert die Streuung zwischen den beiden MFH-Fällen (Haus
Deuber ≈1'250 vs. Niederhasli 1'032, weiterhin ~20 % Differenz) nur geringfügig. Das
bestätigt: die Preisstand-Dimension war nicht die Hauptursache der bisherigen Streuung —
Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald Haselstudstrasse + Pre-Check-Tool-Familie)
und Frage 2 (Standard-Klassifikation "norm, eloquent" mutmasslich Vorlagentext, betrifft
Haus Deuber + Reckholdern) bleiben der eigentliche Blocker für eine MFH-Median-Bildung.
Keine Stufe-3-Promotion in diesem Lauf.

## Register nachgeführt

`training/quellen-inventar.md` (Run-9-Abschnitt), `wiki/QUESTIONS.md` (neuer Eintrag,
Empfehlung für Run 10), `wiki/INDEX.md`, `wiki/kennwerte.md` (neuer Abschnitt "Run 9" +
Frontmatter + Quellen-Abschnitt), `CHANGELOG.md`. `raw/_INGESTED.md` unverändert (kein neuer
Roh-Beleg, reine Ableitung aus bereits vorliegenden Quellen).

## Empfehlung für Run 10

Option (b): bisher ungeprüfte SharePoint-Bibliotheken sichten — `AR - 02 Wettbewerbe`,
`AR - 04 Honorarauftraege`, `AR - 05 Transfer` (aus Run 5 als Kandidaten benannt). Fokus:
ein Fall, der die Standard-Klassifikation textlich eindeutig belegt (Materialbeschrieb/
Ausbaustandard), statt nur ein weiteres Dropdown-Label zu liefern — das würde Frage 2 lösen
und eine MFH-Median-Bildung endlich ermöglichen.
