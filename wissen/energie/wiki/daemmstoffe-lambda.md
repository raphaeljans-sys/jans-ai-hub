---
title: Dämmstoffe & λ-Werte — Schnellreferenz
status: established
last_updated: 2026-06-09
datenstand: "2002 (ältester zitierter Quellenstand: BFE-U-Wert-Bauteilekatalog Neubauten 2002; SIA-Dokumentation D 0200/2001 «Wärmedämmstoffe» Ausgabe 2005 ist der jüngere der beiden Grundwerte — für die Baueingabe massgebend bleibt die aktuelle SIA-380/1-Ausgabe, hier nur Faustwerte)"
sources: [destillate/sia-2001-waermedaemmstoffe-lambda.md, destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md]
links: [[INDEX]], [[u-werte-grenzwerte-ch]], [[BAUHERREN-FAQ]]
---

# Dämmstoffe & λ-Werte

> **Querbezug KB normen (Bemessungswerte):** Der Bemessungswert-Zuschlag (λ_D → λ_Bemessung) und
> die Umstellung auf SN-EN-Bemessungswerte führt die aktuelle **SIA 279:2018** (Bemessungswert-
> Tabelle 1) — Destillat `wissen/normen/destillate/sia-279-2018`. Das hier zitierte Merkblatt
> **SIA 2001:2005** ist zurückgezogen (über SIA 2001:2015 durch SIA 279:2018 abgelöst); für den
> gültigen Wert dort nachschlagen.

Der **λ-Wert** (Wärmeleitfähigkeit, W/(m·K)) ist die Kernkennzahl jedes Dämmstoffs: je kleiner,
desto besser dämmt das Material bei gleicher Dicke. Er geht direkt in den U-Wert ein
(→ [[u-werte-grenzwerte-ch]]).

## λ_D-Bandbreiten nach Materialklasse
| Dämmstoff | λ_D [W/(m·K)] | typisch | BKZ (VKF) | Einsatz |
|---|---|---|---|---|
| Steinwolle | 0,034–0,045 | 0,035–0,037 | 6q.3 nicht brennbar | Standard, Brand-/Schallschutz |
| Glaswolle | 0,031–0,040 | 0,032–0,035 | 6q.3 | leicht, günstig |
| Schaumglas | 0,040–0,080 | Platten 0,040–0,050 | 6.3 | druckfest, wasser-/dampfdicht |
| EPS | 0,029–0,045 | 0,033–0,038 | 5.1 brennbar | Fassade/Dach; grau (Graphit) bis ~0,030 |
| XPS | 0,029–0,041 | 0,034–0,036 | 5.1 | Perimeter/UG/Umkehrdach (feuchtefest) |
| PUR/PIR | 0,022–0,029 | 0,024–0,028 | 5.2/5.3 | dünne, hochdämmende Aufbauten |
| Phenolharzschaum | 0,021–0,024 | 0,022–0,023 | 5.3 | tiefste λ der gängigen Schäume |

⚠ Werte = Bandbreite aus SIA 2001 **Ausgabe 2005** (Produktbestätigungen liefen 2006 aus). Die
Materialklassen-Bandbreiten sind physikalisch weiterhin als Orientierung brauchbar; **konkrete
Produktwerte** stammen aus der aktuellen Herstellerdeklaration / aktuellen SIA-2001-Ausgabe.

## Natur-/Faserdämmstoffe + Hochleistung (VIP) + Kompaktfassade
| Dämmstoff | λ_D [W/(m·K)] | typisch | BKZ (VKF) | Einsatz |
|---|---|---|---|---|
| Holzfaserplatten | 0,038–0,051 | 0,038–0,044 | 4.3 brennbar | diffusionsoffen, gute Speichermasse (Hitzeschutz) |
| Zellulose (Einblas) | 0,039–0,040 | 0,040 | 5.3 | Hohlraumdämmung, ökologisch, günstig |
| Holzwolle-Leichtbauplatten | 0,090 | 0,090 | 6q.3 nicht brennbar | nur Putzträger/Deckschicht (hohes λ) |
| **VIP** (Vakuum-Paneele) | **0,009** | 0,009 | — | 3–4× besser als Schäume; nur grossflächig & wärmebrückenfrei; nicht schneidbar/bohrbar → schlanke Aufbauten |
| WDVS/Kompaktfassade EPS | 0,031–0,040 | 0,033–0,038 | 5.1 brennbar | verputzte Aussendämmung Standard |
| WDVS/Kompaktfassade Steinwolle | 0,036–0,040 | 0,036–0,040 | 6q.3 nicht brennbar | nicht brennbare Kompaktfassade (Hochhaus) → Skill `brandschutz` |

> **Verbundplatten** (Holzwolle-Deckschicht + Kern): Holzwolle-Deckschicht mit Rechenwert λ_r
> (5 mm = 0,15 · 7,5 mm = 0,125 · 10 mm = 0,10 · >15 mm = λ_D), Kern mit eigenem λ_D rechnen.
> **Merke:** Bei VIP/Kompaktfassade gilt das gute λ **nur wärmebrückenfrei ausgeführt** —
> Dübel/Stösse/Anschlüsse verschlechtern den effektiven U-Wert.

## Begriffe
λ_D deklarierter Nennwert (10 °C, gealtert, 90-%-Vertrauen) · ρ Rohdichte · μ Diffusionswiderstand
(tief = diffusionsoffen) · c Wärmekapazität (Speichermasse) · **BKZ** Brandkennziffer (3 leicht
brennbar … 6 nicht brennbar, 6q quasi nicht brennbar; Qualmgrad 1–3) → Skill `brandschutz`.

## Materialwahl nach Einbauort (Bauherren-Take)
- Knapper Platz/Dicke → PUR/PIR oder Phenolharz (tiefstes λ).
- Standardfassade/Dach → Stein-/Glaswolle, EPS (Preis-Leistung).
- Feucht/druckbelastet (Perimeter, UG, Umkehrdach) → XPS/Schaumglas.
- Brandschutz/Schall → Mineralwolle (nicht brennbar); nicht brennbare Fassade → Steinwoll-WDVS.
- Ökologisch/diffusionsoffen → Holzfaser/Zellulose.
- Extrem schlank (Terrasse, Innendämmung, Brüstung) → **VIP** (λ 0,009), aber wärmebrückenfrei.

## Ökologische Rangfolge nach ecoBKP 2026 (Stand Januar 2026)

Die Materialwahl oben ordnet nach **Bauphysik und Preis**. Die geltende Ausgabe ecoBKP 2026
(Merkblatt **ecoBKP 225**, Spezielle Dichtungen und Dämmungen, sowie die Dach- und
Fassaden-Merkblätter) ordnet dieselben Materialien nach **Ökologie und Gesundheit** — und die beiden
Rangfolgen decken sich nicht überall. Das ist der Konflikt, den man am Bautisch benennen muss.

| Einbauort | 1. Priorität nach ecoBKP 2026 |
|---|---|
| Steildach-Wärmedämmung | Steinwolle / Glaswolle (ohne Druckfestigkeits-Anforderung), **Zellulosedämmstoff boratfrei**, Naturfaserplatten |
| Flachdach ohne Nutzschicht | EPS, EPS grau, Steinwolle, Glaswolle, Mineralschaumplatten — **gleichrangig** |
| Fassaden-Wärmedämmputz | **1. Perlit**, 2. EPS |

**Drei belegte Verschiebungen gegenüber der Ausgabe 2008**, die für die Materialwahl praktisch
relevant sind: Zellulose und Naturfaserplatten sind im Steildach von der 2. in die **1. Priorität**
aufgestiegen; EPS ist im Flachdach von der 2. in die 1. Priorität aufgerückt und
**Mineralschaumplatten** sind neu dazugekommen; beim Wärmedämmputz haben Perlit und EPS die Ränge
**getauscht** (Perlit heute vorn). Dampfbremsen werden neu nach **sd-Wert** klassifiziert statt nach
Materialtyp, und ein **PFAS-Ausschluss** ist neu hinzugekommen. Bei Fugendichtungsmassen tritt
**Emicode EC1/EC1plus** an die Stelle des Deklarationsrasters der archivierten SIA 493.

**Bauherren-Take:** Die tiefsten λ-Werte (PUR/PIR, Phenolharz) tauchen in den ersten Prioritäten der
ökologischen Rangfolge **nicht** auf. Wo der Platz es zulässt, ist der ökologisch bessere Weg
deshalb fast immer **mehr Dicke mit Mineralwolle, Zellulose oder Naturfaser** statt weniger Dicke
mit Hochleistungsschaum. Wo der Platz es nicht zulässt (Innendämmung, Brüstung, Terrasse), bleibt
der bauphysikalische Entscheid richtig — er ist dann aber ein **begründeter Abweichungsentscheid**
und gehört als solcher dokumentiert.

⚠ Immer mit Ausgabejahr zitieren: Die ecoBKP werden **jährlich** fortgeschrieben.

Quelle: `[[ecobkp-2026-gebaeudehuelle]]` (ecoBKP 221-228, gelesen 05.08.2026); Vorgängerstand →
`[[eco-bau-merkblaetter-bkp-2008-huelle]]`. Siehe auch `[[naturdaemmstoffe]]`, Bauherren-FAQ F214.

## Offen
- Bemessungswerte-Zuschlag (λ_D → λ_Bemessung) je Materialklasse aus aktueller SIA 279.
- Umstellung SIA 2001 auf SN-EN-Bemessungswerte / aktuelle Produktdeklarationen.
- Die ecoBKP-Prioritäten nennen **keine λ-Werte** — die ökologische und die bauphysikalische
  Rangfolge müssen deshalb weiterhin von Hand zusammengeführt werden.

## Quelle
SIA Merkblatt 2001 (Ausgabe 2005) → `[[sia-2001-waermedaemmstoffe-lambda]]`;
ökologische Rangfolge → `[[ecobkp-2026-gebaeudehuelle]]`.
