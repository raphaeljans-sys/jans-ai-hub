# Roh-Beleg: Zürcher Index der Wohnbaukosten 1939–2025 (verketteter Baupreisindex)

Kein Projekt-Einzelfall, sondern ein **allgemeiner, öffentlich publizierter Baupreisindex** —
Kandidat für Stufe 4 (Teuerungs-Normalisierung) aus `training/PROGRAMM.md`. Gefunden Run 8
(27.07.2026), Hauptkontext (WebSearch + WebFetch, kein OneDrive/SharePoint-Zugriff nötig).

## Quelle

- Ursprungsreihe: «Zürcher Index der Wohnbaupreise», Stadt Zürich (Statistik Stadt Zürich),
  Erhebung seit 01.06.1939, Publikation jährlich Juni/Juli.
- Diese Tabelle (Weiterführung mit Rebasierungspunkten): HEV Kanton Schwyz,
  `https://www.hev-sz.ch/fileadmin/Files/Dokumente/Statistiken/1.5.pdf`, Stand 01.01.2026.
  Abrufdatum: 2026-07-27.
- Bereits in der KB bekannte, aber bei 01.04.2004 abbrechende Fassung derselben Reihe:
  `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` (Stand 2003, Tabelle 4).
  Die Werte bis 01.04.2004 sind in beiden Quellen **identisch** (z.B. 01.04.2004 = 907.6 auf
  Basis 1939=100) — die HEV-SZ-Fassung ist eine reine Fortführung derselben amtlichen Reihe,
  keine andere Methodik.

## Vollständige Tabelle (Basis 1939 = 100, Auszug ab Rebasierungspunkt 1998 für Lesbarkeit)

| Datum | Index (Basis 1939=100) | Index (Basis 1998=100) | Index (Basis 2005=100) | Index (Basis 2010=100) | Index (Basis 2020=100) |
|---|---|---|---|---|---|
| 01.04.1998 | 843.8 | 100.0 | — | — | — |
| 01.04.2000 | 887.1 | 105.1 | — | — | — |
| 01.04.2003 | 899.2 | 106.6 | — | — | — |
| 01.04.2004 | 907.6 | 107.6 | — | — | — |
| 01.04.2005 | 929.5 | 110.2 | 100.0 | — | — |
| 01.04.2010 | 1042.6 | 123.6 | 112.2 | 100.0 | — |
| 01.04.2015 | 1053.2 | 124.8 | 113.3 | 101.0 | — |
| 01.04.2020 | 1045.6 | 123.9 | 112.4 | 100.2 | 100.0 |
| 01.04.2021 | 1057.7 | 125.3 | 113.7 | 101.4 | 101.2 |
| 01.04.2022 | 1128.6 | 133.7 | 121.3 | 108.2 | 107.9 |
| 01.04.2023 | 1190.8 | 141.1 | 128.1 | 114.2 | 113.9 |
| 01.04.2024 | 1197.2 | 141.9 | 128.8 | 114.8 | 114.5 |
| 01.04.2025 | 1210.4 | 143.4 | 130.2 | 116.1 | 115.8 |

Volle Reihe (1939–2025, alle Rebasierungspunkte 1939/1966/1977/1988/1998/2005/2010/2017/2020/
2021/2022/2023/2024) liegt als Rohextrakt vor, hier nur die für Preisstand-Normalisierung
relevanten Stützstellen wiedergegeben. Bei Bedarf erneuter Abruf über obige URL.

**Datenqualitäts-Hinweis:** Der Rohextrakt enthält bei 01.04.1995 einen offensichtlichen
Ausreisser (574.2 statt eines plausiblen Werts nahe 854, verglichen mit 01.10.1994 = 856.4 und
01.10.1995 = 856.2) — vermutlich ein Tippfehler in der Quelle oder ein Extraktionsfehler. Dieser
Einzelwert wird NICHT verwendet; alle übrigen Werte sind intern konsistent (Kolonnen-Faktoren
stimmen über alle Rebasierungspunkte hinweg exakt überein, siehe Gegenprobe unten).

## Fertig nutzbare Umrechnungsfaktoren (Preisstand X → 01.04.2025)

| Preisstand X | Faktor auf 01.04.2025 | Zuschlag |
|---|---|---|
| 01.04.2004 | 1210.4 / 907.6 = 1.3336 | +33.4 % |
| 01.04.2010 | 1210.4 / 1042.6 = 1.1609 (Kontrolle: 116.1/100.0 Basis-2010-Spalte) | +16.1 % |
| 01.04.2020 | 115.8 / 100.0 | +15.8 % |
| 01.04.2021 | 115.8 / 101.2 = 1.1443 | +14.4 % |
| 01.04.2022 | 107.2 / 100.0 (Basis-2022-Spalte) | +7.2 % |
| 01.04.2023 | 101.6 / 100.0 (Basis-2023-Spalte) | +1.6 % |
| 01.04.2024 | 101.1 / 100.0 (Basis-2024-Spalte) | +1.1 % |

Gegenprobe (Konsistenz über Rebasierungspunkte): 1210.4/907.6 = 1.3336; unabhängig berechnet
über die Kette 1998→2005→2025 (110.2/107.6 × 130.2/100.0 × ... ) ergibt denselben Faktor —
die Reihe ist intern kohärent verkettet, kein Bruch an den Rebasierungspunkten.

**Neuster Stand:** 01.04.2025 (Publikation der Folgeausgabe turnusgemäss Juni/Juli — ein
01.04.2026-Wert lag zum Abrufzeitpunkt 27.07.2026 in dieser Quelle noch nicht vor; bei
Bedarf erneut abrufen).

## Einordnung / Verwendung

Löst die in `wiki/QUESTIONS.md` (Run 6, 27.07.2026) offen gelassene Frage, ob sich der bei
2004 abbrechende JANS-eigene Auszug mit einem aktuellen Baupreisindex verketten lässt: **ja**,
über dieselbe amtliche Reihe (Stadt Zürich), hier bis 2025 fortgeführt. Verwendung: Details
und Anwendungshinweis in `wiki/kennwerte.md`, Abschnitt "Baupreisindex ZH (Teuerungs-
Normalisierung, Stufe 4)". Ergänzt (nicht ersetzt) den bereits geführten BFS-Baupreisindex-
Cross-Check (`wissen/immobilienbewertung/wiki/investorenmarkt-makro`) — beide Quellen zeigen
eine moderate Bauteuerung von rund 1 %/Jahr in den letzten Jahren, kein Widerspruch.
