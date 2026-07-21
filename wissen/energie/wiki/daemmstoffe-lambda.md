---
title: Dämmstoffe & λ-Werte — Schnellreferenz
status: established
last_updated: 2026-06-09
sources: [destillate/sia-2001-wärmedämmstoffe-lambda.md, destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md]
links: [[INDEX]] [[u-werte-grenzwerte-ch]] [[BAUHERREN-FAQ]]
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

## Offen
- Bemessungswerte-Zuschlag (λ_D → λ_Bemessung) je Materialklasse aus aktueller SIA 279.
- Umstellung SIA 2001 auf SN-EN-Bemessungswerte / aktuelle Produktdeklarationen.

## Quelle
SIA Merkblatt 2001 (Ausgabe 2005) → `[[sia-2001-waermedaemmstoffe-lambda]]`.
