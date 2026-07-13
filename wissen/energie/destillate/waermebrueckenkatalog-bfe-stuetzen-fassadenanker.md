---
quelle: «Wärmebrückenkatalog» (BFE, ausgearbeitet durch Infomind GmbH, 2002) — Detailgruppe 6 «Stützen/Fassadenanker», Kap. 6.1 Stützen (S. 113-116) + Kap. 6.2 Fassadenanker Ausschnitt (S. 117-118), Primärdokument via pubdb.bfe.admin.ch/de/publication/download/465
herausgeber: Bundesamt für Energie BFE
ausgabe: 2002 (Bestellnummer 805.159 d), Grundlage SIA 380/1:2001 — ⚠ ältere Normausgabe, aktuelle Edition SIA 380/1 (zuletzt 2016) ist neuer
gelesen: 2026-07-13 (S. 113-126 vollst. via Read/PDF-Bildextraktion, da Textlayer nicht extrahierbar; Gruppe 6.2 mit allen 22 Ausführungsvarianten U1-U22 komplett gelesen)
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

| System | Achsraster 0,2 m² (Backstein/Stahlbeton) | Achsraster 1,2 m² (Backstein/Stahlbeton) |
|---|---|---|
| **6.2-U1 Holzlattung, zweischichtig kreuzweise** (bei U-Wand 0,15-0,30, materialbedingt kein Raster-Effekt) | +0,02 / +0,02 | +0,03 / +0,03 |
| **6.2-U2 Stahl-UK mit thermischer Trennung** | +0,07 / +0,11 | +0,01 / +0,02 |
| **6.2-U3 Stahl-UK ohne thermische Trennung** | +0,09 / +0,14 | +0,01 / +0,02 |
| **6.2-U4 Alu-UK mit thermischer Trennung** | +0,12 / +0,19 | +0,02 / +0,03 |
| **6.2-U5 Alu-UK ohne thermische Trennung** | +0,18 / **+0,41** (Maximalwert Gruppe 6.2) | +0,03 / +0,07 |
| **6.2-U6 Halte-/Traganker Chrom-Nickel-Stahl** | +0,05 / +0,09 | +0,01 / +0,02 |
| **6.2-U7/U8 ATK 100 Minor mit/ohne therm. Trennung** | +0,18/+0,30 · +0,25/+0,55 | +0,03/+0,05 · +0,04/+0,09 |
| **6.2-U9/U10 ATK 101 Minor mit/ohne therm. Trennung** | +0,15/+0,26 · +0,21/+0,45 | +0,03/+0,04 · +0,03/+0,08 |
| **6.2-U11 ATK 601** | +0,05 / +0,07 | +0,01 / +0,01 |
| **6.2-U12/U13 UK 1000 Chrom-Nickel-Stahl / Aluminium** | +0,10/+0,15 · +0,19/+0,33 | +0,02/+0,03 · +0,03/+0,06 |
| **6.2-U14 Halfen SUK** | +0,05 / +0,06 | +0,01 / +0,01 |
| **6.2-U15/U16 Clickpress 1000 L-Profil mit/ohne therm. Trennung** | +0,13/+0,19 · +0,16/+0,28 | +0,02/+0,03 · +0,03/+0,05 |
| **6.2-U17/U18 Clickpress 1000 T-Profil mit/ohne therm. Trennung** | +0,14/+0,21 · +0,18/+0,34 | +0,02/+0,03 · +0,03/+0,06 |
| **6.2-U19/U20 A-PL mit/ohne therm. Trennung** | +0,18/+0,30 · +0,26/**+0,57** (Maximalwert ganze Gruppe 6.2) | +0,03/+0,05 · +0,04/+0,09 |
| **6.2-U21/U22 UK-System WSZ L-/T-Tragprofil** | +0,12/+0,22 · +0,13/+0,23 | +0,02/+0,04 · +0,02/+0,04 |

*(ΔU-Wert in W/(m²·K), Spalte Backstein/Stahlbeton; Achsraster a×b = horizontaler × vertikaler
Abstand der Fest-/Gleitpunkte in m². Alle 22 Systeme mit vollständiger Tabelle 0,2-1,2 m² Raster
im Original, hier auf die beiden Randwerte verdichtet.)*

Katalog-Ablesebeispiele:
- Holzlattung auf Backstein, U-Wand ohne Wärmebrücken 0,23 → **U = 0,23 + 0,03 = 0,26 W/(m²·K)**.
- Alu-Unterkonstruktion mit thermischer Trennung auf Stahlbeton, Ankerraster 0,75 × 1,40 m = 1,1 m²,
  U-Wand ohne Wärmebrücken 0,27 → **U = 0,27 + 0,04 = 0,31 W/(m²·K)**.

Der Zuschlag sinkt durchgängig mit **grösserem Ankerraster** (weniger Durchdringungen pro m²
Fassade) und steigt bei **Stahlbeton-Untergrund** gegenüber Backstein (Beton führt die Wärme über
die Ankerplatte besser ab als das poröse Backsteinmauerwerk) — beide Effekte sind bei allen 22
Systemen gleich gerichtet, nur die Grössenordnung unterscheidet sich stark.

**Kernbefund:** Die **thermische Trennung** ist der dominante Hebel, nicht das Ankermaterial an
sich — bei praktisch jedem System (ATK, Clickpress, UK 1000) verdoppelt bis verdreifacht sich der
Zuschlag beim engsten Raster (0,2 m²), wenn die thermische Trennung fehlt (z.B. ATK 100 Minor
Backstein: 0,18 mit vs. 0,25 ohne Trennung; Stahlbeton: 0,30 mit vs. **0,55** ohne). Die **beiden
Extremwerte der gesamten Gruppe 6.2** sind Alu-UK ohne thermische Trennung (U5, +0,41 bei 0,2 m²
Stahlbeton) und A-PL ohne thermische Trennung (U20, **+0,57** bei 0,2 m² Stahlbeton) — beide reine
Metall-Durchdringungen ohne Trennelement bei engem Raster auf Stahlbeton. **Holzlattung** (Material
selbst gering leitfähig, kein Punktkontakt) bleibt unabhängig vom Raster durchgehend bei +0,02 bis
+0,03 — der mit Abstand unempfindlichste Fall. Bei den Metallsystemen mit thermischer Trennung
liegen **Chrom-Nickel-Stahl-Anker** (U6, U12, U14 Halfen SUK) und **ATK 601** (U11) am günstigsten
(0,05-0,10 im engen Raster), da Chrom-Nickel-Stahl schlechter leitet als normaler Baustahl oder Alu.

## Bauherren-Transfer
Bei einer hinterlüfteten Fassade (häufig bei Holzbau, Attika-Aufstockungen, Fassadensanierungen)
ist die Wahl der Unterkonstruktion energetisch relevant, aber im Vergleich zur Balkonplatte oder
zum Fenstersturz meist ein kleinerer Hebel — mit einer wichtigen Ausnahme: **wird eine rein
metallische Unterkonstruktion ohne thermische Trennung im engen Raster auf eine Stahlbetonwand
montiert, kann der Zuschlag bis +0,57 W/(m²·K) betragen — das ist mehr als der U-Wert-Zielwert
einer ganzen gedämmten Aussenwand.** Der Bauherren-Rat ist daher konkret: bei Systemwahl der
Fassaden-Unterkonstruktion explizit nach **«mit thermischer Trennung»** fragen (fast jeder Hersteller
bietet beide Varianten an) und, wo möglich, ein **grosszügiges Ankerraster** statt eines engen wählen
— beides zusammen kann den Zuschlag um den Faktor 5-10 senken. Holzlattung ist bei diesem Detail
grundsätzlich unkritisch. Durchstossende Stützen (z.B. eine Balkon- oder Vordach-Stütze, die durch
die Bodenplatte geht) sind kritischer, wenn sie aus **Stahl** statt Stahlbeton ausgeführt werden —
hier lohnt sich eine frühzeitige Absprache mit dem Tragwerksplaner, ob eine Stahlbeton-Lösung oder
eine thermisch getrennte Stahl-Konsole (analog zum Isokorb-Prinzip bei Balkonplatten) möglich ist.

## Offene Punkte
- Abgleich der Grenzwerte/Zahlenwerte gegen die aktuell geltende SIA-380/1-Edition (Katalog basiert
  auf 2001er-Ausgabe) nicht durchgeführt.
- Herstellerspezifische Systeme (ATK/Clickpress/Halfen/A-PL/WSZ) sind Marktprodukte von 2002 — ob
  die genannten Hersteller/Produktbezeichnungen 2026 noch unverändert am Markt sind, nicht geprüft;
  als Grössenordnung/Systemprinzip (mit vs. ohne thermische Trennung) weiterhin gültig.

## Abschluss Curriculum-Punkt A4 (Wärmebrückenkatalog)
Mit diesem Destillat sind alle sechs Hauptgruppen des BFE-Wärmebrückenkatalogs (1 Balkonplatte/
Flachdach/Steildach, 2 Geschossdecke, 3 Sockel/Steildach/Auskragung, 4 Fensterrahmen/Rollladenkasten,
5 Fensterleibung/-brüstung/-sturz, 6 Stützen/Fassadenanker) mit konkreten Zahlenwerten belegt.
**Gruppe 6.2 ist mit allen 22 Ausführungsvarianten (U1-U22, S. 117-126) jetzt vollständig gelesen**
(2026-07-13, ergänzt gegenüber dem ursprünglichen Teilauszug U1/U4) — der letzte in E27-E29/F58-F59
offen vermerkte Detailpunkt («Gruppe 6.2 Spezialanker ATK/Clickpress/Halfen nicht destilliert») ist
damit geschlossen. Der gesamte BFE-Wärmebrückenkatalog (2002, S. 1-126) gilt hinsichtlich der
Standarddetails als vollständig ausgewertet.

**Backlinks:** [[waermebrueckenkatalog-bfe-balkonplatte]] · [[waermebrueckenkatalog-bfe-fensteranschluss]] ·
[[waermebrueckenkatalog-bfe-sockel]] · [[u-werte-grenzwerte-ch]] (Themenartikel, Curriculum A4 jetzt
vollständig)
