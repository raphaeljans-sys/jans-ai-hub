# Vertiefungsläufe 4–6 immobilienbewertung — D1 beziffert, Konsistenz-Check, D16 neu

**Datum:** 23.08.2026 · **Station:** Revendo · Fortsetzung von
`2026-08-23_vertiefungslauf-3-amtliche-preisstatistik-zh.md`.

---

## Lauf 4 — D1 ist beziffert: «veraltet» heisst nicht «zu tief»

D1 führte vier UBS-Fact-Sheets seit Monaten mit einem ⚠ «veraltet», **ohne zu sagen, wie weit sie
danebenliegen**. Mit den in Lauf 3 erschlossenen kantonalen Reihen ist das jetzt beziffert: je
Gemeinde der 3-Jahres-Pool, der auf dem Jahr des Fact-Sheet-Stands endet, gegen den aktuellen Pool
2025–2023.

| Gemeinde | UBS-Stand | EFH | EW |
|---|---|---|---|
| Wädenswil | 7/2024 | +2.1 % | +0.6 % |
| Maur | 2024-Q1 | +4.2 % | **+7.3 %** |
| **Regensdorf** | 12/2023 | **−6.7 %** | **−5.7 %** |
| Wald | 12/2023 | +2.1 % | +4.9 % |

Fallzahlen je Pool: EFH 38–95, EW 99–258 — tragfähig.

**Der Befund kehrt die Intuition um.** In **Regensdorf** liegen die kantonalen Mediane heute rund
**6 % UNTER** dem Stand, auf dem das Blatt von 12/2023 beruht — wer dort mit dem alten Fact Sheet
bewertet, bewertet **zu hoch**. In Wädenswil und Wald ist die Bewegung mit rund 2 % kleiner als die
übliche Bandbreite einer Bewertung, in Maur beim EW mit +7.3 % am grössten.

**Priorisierung, direkt daraus:** **Regensdorf zuerst** (falsche Richtung, materiell), dann
**Maur** (grösste Bewegung); **Wädenswil und Wald sind trotz ⚠-Flag praktisch noch brauchbar**. Das
ist der erste Fall, in dem D1 eine Reihenfolge statt einer Sammelwarnung hat.

**Drei Vorbehalte mitgeschrieben:** die Pools **überlappen** im Jahr 2023, die Deltas sind
**gedämpft** · es sind **Totalpreis-Mediane, nicht CHF/m²** · **Einzeljahre taugen nicht**
(Wädenswil EFH schwankt ungepoolt zwischen 1'640 und 2'500 Tausend CHF bei n = 26–33; in
Regensdorf sind 2021–2023 gar nicht publiziert, n = 12–13 unter der Publikationsschwelle).

## Lauf 5 — Konsistenz-Check der eigenen Tagesarbeit

Nach drei Durchgängen durch die vier Wissensbasen ein Abgleich der Zahlen, die heute in mehrere KBs
geschrieben wurden.

**Sauber:** der verkettete ZIW-Stand **01.04.2026 = 1'221.3** steht einheitlich in
`immobilienbewertung` (führend), `grobkosten` (implizit über die Faktorentabelle) und
`entwurfs-referenzen`; der abgelöste Weg über 1'220.8 ist als Gegenprobe dokumentiert. Der
Stützpunktstreit **1.346 gegen 1.334** ist in beiden KBs unverändert und gleichlautend geführt.

**Zwei Korrekturen:**

1. **Stehengebliebene Erwartung** in `realwert-sachwert.md`: «nächste Publikation ~04/06.2026» las
   sich wie ein offener Punkt, obwohl die Publikation am 08.07.2026 erfolgt ist. Präzisiert, kein
   Wert geändert.
2. **Widerspruch im eigenen Artikel** `investorenmarkt-makro.md`: der Eintrag vom 20.08.2026 nannte
   als nächsten BFS-Publikationstermin **«Okt-2026»**, der vom 13.08.2026 **«Dez-2026»** — dieselbe
   Reihe, zwei Termine. **Richtig ist Dez-2026**, primärverifiziert («halbjährlich berechnet, April
   und Oktober; Ergebnisse im Juni und Dezember publiziert»). Die Fehlangabe verwechselte den
   **Erhebungs**- mit dem **Publikations**monat — eine Verwechslung, die einen Marktpuls zwei Monate
   zu früh ansetzt und den Wert dann fälschlich als «noch nicht publiziert» verbucht. Die falsche
   Angabe ist **durchgestrichen stehen gelassen**, damit die Korrektur nachvollziehbar bleibt.

**Nebenbefund, der einen ⚠-Vermerk entschärft:** `investorenmarkt-makro` führt bereits den
**massgebenden Durchschnittszinssatz 1.31 % per 31.03.2026**. Der in `ertragswert-dcf` mit ⚠
geflaggte **Basiszinssatz** ist damit näherungsweise abgedeckt — der Vermerk bleibt richtig, aber
der Stand ist **in dieser KB vorhanden und nicht erst zu beschaffen**.

## Lauf 6 — D16: der BKP-2-Anteil von 75 % weicht um 15 Prozentpunkte ab

Beim Abgleich der in `grobkosten` eingearbeiteten amtlichen BKP-Anteilsstruktur gegen die
JANS-Kennwertkette dieser KB ist eine materielle Abweichung aufgefallen.

Der Schritt **BKP 2 → BKP 1–5 über einen BKP-2-Anteil von 75 %** ist der einzige Rechenschritt der
Kette, der **nicht aus einer Preisreihe** stammt, sondern aus dem JANS-Kalkulationsblatt selbst
(R. Jans, 25.03.2025).

| Quelle | Grundgesamtheit | BKP-2-Anteil | daraus BKP 1–5 aus 3'365 |
|---|---|---|---|
| JANS-Kalkulationsblatt | EFH/ZFH, Praxisregel | **75.0 %** | **4'485** (geführt) |
| ZIW Revision 2025 | 54 reale KV Zürcher MFH-Neubauten 2020–2024 | **89.4 %** | **3'765** |
| Schätzungsanleitung Tab. 3 | MFH 1985 | **90.6 %** | **3'713** |

**Materiell:** der geführte Ansatz liegt rund **19 % höher**. Am eigenen Rechenbeispiel der KB
(Thalwil Bohlweg 1, 950 m² GF) sind das **4'262'000 gegen 3'577'000 CHF — rund 686'000 CHF aus
diesem einen Faktor**.

**Ausdrücklich kein Fehlerbefund.** Drei Erklärungen sind offen und keine ausgeschlossen: (a) die
75 % gelten für **EFH/ZFH**, die Strukturquellen für **MFH** — ein Einfamilienhaus trägt anteilig
mehr Umgebung und Vorbereitung je m², ein tieferer Anteil ist plausibel, 15 Prozentpunkte sind
damit aber nicht gezeigt; (b) ein höherer Ansatz ist für einen Neuwert **konservativ**; (c) es ist
eine gerundete **Praxisregel**, keine Messung.

**Nichts geändert** — 4'485 bleibt stehen. Neu als **D16** registriert (Priorität **hoch**), mit
einer Frage, die Raphael als Autor des Blatts in einem Satz beantworten kann. Ein ⚠-Block mit der
Vergleichstabelle steht jetzt unmittelbar bei der Herleitung, damit der Vorbehalt mitwandert.

---

## Geänderte Dateien

`wiki/amtliche-preisstatistik-zh.md` (Abschnitt 4b) · `wiki/wissensluecken.md` (D1 beziffert,
D16 neu) · `wiki/realwert-sachwert.md` (⚠-Block D16, eine Zeile präzisiert) ·
`wiki/investorenmarkt-makro.md` (Korrektur + `last_updated`) · `CHANGELOG.md`.
