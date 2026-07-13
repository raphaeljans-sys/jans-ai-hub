---
quelle: «Wärmebrückenkatalog» (BFE, ausgearbeitet durch Infomind GmbH, 2002) — Detailgruppe 6 «Stützen/Fassadenanker», Kap. 6.1 Stützen (S. 113-116) + Kap. 6.2 Fassadenanker Ausschnitt (S. 117-118), Primärdokument via pubdb.bfe.admin.ch/de/publication/download/465
herausgeber: Bundesamt für Energie BFE
ausgabe: 2002 (Bestellnummer 805.159 d), Grundlage SIA 380/1:2001 — ⚠ ältere Normausgabe, aktuelle Edition SIA 380/1 (zuletzt 2016) ist neuer
gelesen: 2026-07-13 (S. 113-118 vollst. via Read/PDF-Bildextraktion, da Textlayer nicht extrahierbar; von 6.2 nur die ersten zwei von 22 Ausführungsvarianten U1/U4 gelesen, Rest S. 119-126 nicht destilliert)
datenstand: 2002 (Kennwerte-Tabellen); Zahlenwerte als Grössenordnung/Bauherren-Transfer verwenden, für Baueingabe aktuelle Softwaresimulation nach geltender Norm nötig
status: emerging
last_updated: 2026-07-13
---

# Wärmebrückenkatalog BFE — Stützen und Fassadenanker (Gruppe 6)

**Das Wichtigste in 1 Satz:** Punktuelle Wärmebrücken (durchstossende Stützen, Fassadenanker
hinterlüfteter Fassaden) werden im Katalog **anders gerechnet als lineare Wärmebrücken** — Stützen
über den **X-Wert in W/K** (punktbezogen, Grenzwert 0,30 W/K je Durchstossung), Fassadenanker über
einen **ΔU-Wert-Zuschlag in W/(m²·K)** auf die ungestörte Wandfläche (nicht separat, sondern in den
Gesamt-U-Wert der Fassade eingerechnet) — beide Systeme sind bei fachgerechter Ausführung mit
thermischer Trennung unkritisch und liegen deutlich unter den jeweiligen Grenzwerten.

## Gruppe 6.1 — Stützen (X-Wert-Systematik)
Anders als Balkonplatte/Fenster (lineare Ψ-Werte, W/(m·K)) wird eine durchstossende Stütze als
**punktförmige Wärmebrücke** mit einem **X-Wert in W/K** (nicht pro Laufmeter) erfasst. Grenz- und
Zielwert gemäss SIA 380/1: **X ≤ 0,30 W/K** je Durchstossung.

| Ausführung | Durchmesser 10 cm | 12 cm | 15 cm |
|---|---|---|---|
| **Säulenkopf, Stahl** (6.1-U1) | 0,20 | 0,24 | 0,29 |
| **Säulenkopf, Stahlbeton** (6.1-U2, U-Wert Boden 0,20) | 0,05 | 0,07 | 0,10 |
| **Säulenfuss, Stahl** (6.1-U3, U-Wert Decke 0,20) | 0,25 | 0,30 | 0,37 |
| **Säulenfuss, Stahlbeton** (6.1-U4, U-Wert Decke 0,20) | 0,06 | 0,08 | 0,12 |

*(X-Wert in W/K; Boden-/Deckenwerte hier exemplarisch bei U 0,20 W/(m²·K), vollständige Bandbreite
U 0,15-0,30 im Original.)*

Zuschläge (Beispiel Stahlsäule): Stahlummantelungsdicke 5 mm statt 8 mm **−0,04 bis −0,05 W/K**
(dünnere Ummantelung senkt den Wert), Metallsäule oberhalb **+0,03 W/K**, Betonsäule oberhalb
**+0,01 W/K**. Katalog-Ablesebeispiel: Stahlsäule 15 cm Durchmesser, 5 mm Ummantelung, Metallsäule
oberhalb → X = 0,29 − 0,04 + 0,03 = **0,28 W/K** (knapp unter Grenzwert 0,30).

**Kernbefund:** Eine **stählerne** Säule, die eine Bodenplatte/Decke durchstösst, ist deutlich
kritischer (0,20-0,37 W/K, teils über Grenzwert bei grösserem Durchmesser bzw. bei Säulenfuss)
als eine **Stahlbeton**-Säule (0,05-0,12 W/K, klar unter Grenzwert) — Stahl leitet direkt durch,
Stahlbeton hat durch den Beton-Mantel eine gewisse Eigendämmwirkung im Detail.

## Gruppe 6.2 — Fassadenanker (ΔU-Wert-Zuschlag)
Die Unterkonstruktion einer **hinterlüfteten Fassade** (Holzlattung, Metall-/Alu-Traggerüst) muss
die Dämmebene mit Ankern/Konsolen durchdringen. Der Katalog fasst die vielen Einzeldurchdringungen
zu einem **ΔU-Wert-Zuschlag** zusammen, der direkt zum U-Wert der ungestörten Wand addiert wird
(nicht als eigener Term wie beim Ψ-/X-Wert).

| System | Mauerwerk Backstein | Mauerwerk Stahlbeton |
|---|---|---|
| **Zweischichtige, kreuzweise Holzlattung** (6.2-U1, bei U-Wand 0,25) | +0,03 | +0,03 |
| **Alu-Unterkonstruktion mit thermischer Trennung** (6.2-U4, bei Ankerraster 1,1 m², U-Wand 0,27) | +0,02 | +0,04 |

Katalog-Ablesebeispiele:
- Holzlattung auf Backstein, U-Wand ohne Wärmebrücken 0,23 → **U = 0,23 + 0,03 = 0,26 W/(m²·K)**.
- Alu-Unterkonstruktion mit thermischer Trennung auf Stahlbeton, Ankerraster 0,75 × 1,40 m = 1,1 m²,
  U-Wand ohne Wärmebrücken 0,27 → **U = 0,27 + 0,04 = 0,31 W/(m²·K)**.

Der Zuschlag sinkt mit **grösserem Ankerraster** (weniger Durchdringungen pro m² Fassade: bei
Alu mit thermischer Trennung auf Stahlbeton fällt der Zuschlag von 0,19 W/(m²·K) bei 0,2 m² Raster
auf 0,03 W/(m²·K) bei 1,2 m² Raster) — die Zuschlagstabellen sind explizit nach Rasterfläche (a×b
in m²) gestaffelt, nicht nach einer festen Ankerzahl.

**Kernbefund:** **Holzlattung** (Material selbst gering leitfähig) liegt bei allen geprüften U-Wert-
Stufen bei einem sehr kleinen Zuschlag von +0,02 bis +0,03 W/(m²·K) — unabhängig vom Mauerwerk.
**Metallische Unterkonstruktionen** (Alu, in weiteren nicht gelesenen Varianten auch Stahl) sind
je nach Ankerraster und Ausführung (mit/ohne thermische Trennung) empfindlicher; ein **grosszügiges
Ankerraster** und eine **thermische Trennung** an den Ankerpunkten senken den Zuschlag deutlich.

## Bauherren-Transfer
Bei einer hinterlüfteten Fassade (häufig bei Holzbau, Attika-Aufstockungen, Fassadensanierungen)
ist die Wahl der Unterkonstruktion energetisch relevant, aber im Vergleich zur Balkonplatte oder
zum Fenstersturz ein kleinerer Hebel: Der Zuschlag bewegt sich im Bereich von wenigen Hundertstel
W/(m²·K) und lässt sich über Material (Holzlattung günstiger als Metall), Ankerraster (grösser
= besser) und thermische Trennung an den Ankerpunkten steuern. Durchstossende Stützen (z.B. eine
Balkon- oder Vordach-Stütze, die durch die Bodenplatte geht) sind kritischer, wenn sie aus
**Stahl** statt Stahlbeton ausgeführt werden — hier lohnt sich eine frühzeitige Absprache mit dem
Tragwerksplaner, ob eine Stahlbeton-Lösung oder eine thermisch getrennte Stahl-Konsole (analog zum
Isokorb-Prinzip bei Balkonplatten) möglich ist.

## Offene Punkte
- Von Gruppe 6.2 (Fassadenanker) wurden nur die ersten 2 von 22 Ausführungsvarianten gelesen
  (U1 Holzlattung, U4 Alu mit thermischer Trennung) — Stahl-Unterkonstruktion, Alu ohne thermische
  Trennung, sowie die spezialisierten Anker-/Halte-Systeme (ATK, Clickpress, Halfen SUK, UK-System
  WSZ, S. 119-126) nicht destilliert.
- Abgleich der Grenzwerte/Zahlenwerte gegen die aktuell geltende SIA-380/1-Edition (Katalog basiert
  auf 2001er-Ausgabe) nicht durchgeführt.

## Abschluss Curriculum-Punkt A4 (Wärmebrückenkatalog)
Mit diesem Destillat sind alle sechs Hauptgruppen des BFE-Wärmebrückenkatalogs (1 Balkonplatte/
Flachdach/Steildach, 2 Geschossdecke, 3 Sockel/Steildach/Auskragung, 4 Fensterrahmen/Rollladenkasten,
5 Fensterleibung/-brüstung/-sturz, 6 Stützen/Fassadenanker) mindestens einmal mit konkreten
Zahlenwerten belegt — der Curriculum-Punkt A4 gilt damit als inhaltlich abgedeckt, auch wenn
innerhalb einzelner Gruppen noch nicht alle Ausführungsvarianten gelesen wurden.

**Backlinks:** [[waermebrueckenkatalog-bfe-balkonplatte]] · [[waermebrueckenkatalog-bfe-fensteranschluss]] ·
[[waermebrueckenkatalog-bfe-sockel]] · [[u-werte-grenzwerte-ch]] (Themenartikel, Curriculum A4 jetzt
vollständig)
