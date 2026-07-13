---
title: Dichte-Kennwerte (AZ / Baumassenziffer / Überbauungsziffer) je Gemeinde/Zone (D6)
status: emerging
last_updated: 2026-07-13
sources: ["Thalwil: Bau- und Zonenordnung vom 18.03.2005 (teilrevidiert), Art. 3 Grundmasse, Synopse-Fassung (habitatmobilite.ch-Spiegel des amtlichen Thalwil-BZO-PDF)", "Wädenswil: Bau- und Zonenordnung (BZO), Art. 3 Grundmasse (ortsplanung.ch, offizieller Spiegel der Stadt Wädenswil)", "Zollikon: BZO vom 26.06.1996, Art. 15 Grundmasse (oerebdocs.zh.ch docid=1611, kantonaler OEREB-Dokumentenspeicher)", "Maur: BZO neue Fassung (Ortsplanungsrevision, BDV-Genehmigung 26.09.2023), Art. 14/16 Grundmasse (maur.ch, Synoptische Darstellung 19.10.2021)", "Wald ZH: BZO, Art. 43 Grundmasse (wald-zh.ch)", "Einsiedeln: Baureglement Ausgabe 2025, Art. 49 Masse Wohnzonen (einsiedeln.ch sre_610100)", "Wangen SZ: Baureglement, Tabelle der Grundmasse (wangensz.ch)", "Regensdorf: BZO 2020, Art. 16 Grundmasse (oerebdocs.zh.ch docid=8897)", "Muri AG: Bau- und Nutzungsordnung, Stand 31.10.2012, §§ 6-10 (muri.ch)", "Luzern Stadt: Bau- und Zonenreglement BZR 2022, Art. 40/43 (stadtluzern.ch)"]
links: [[marktdaten-gemeinden/zh-thalwil-8800]], [[marktdaten-gemeinden/zh-waedenswil-8820]], [[marktdaten-gemeinden/zh-zollikon-8125]], [[marktdaten-gemeinden/zh-maur-8124]], [[marktdaten-gemeinden/zh-regensdorf-8105]], [[marktdaten-gemeinden/zh-wald-8636]], [[marktdaten-gemeinden/sz-wangen-8854]], [[marktdaten-gemeinden/sz-einsiedeln-8840]], [[marktdaten-gemeinden/ag-muri-5630]], [[marktdaten-gemeinden/lu-luzern-6000]], [[residualwertmethode]], [[realwert-sachwert]], [[flaechendefinitionen-sia]], [[wissensluecken]]
---

# Dichte-Kennwerte (AZ / Baumassenziffer / Überbauungsziffer) je Gemeinde/Zone (D6)

Schliesst **D6** (`wissensluecken.md`) weitgehend: die gemeindlichen **baulichen
Dichtemasse je Wohnzone** der JANS-Bezugsmärkte, direkt aus der amtlichen Bau- und
Zonenordnung (BZO) bzw. dem Baureglement der jeweiligen Gemeinde entnommen. **Methode als
Vorlage für weitere Gemeinden:** amtliche BZO-PDF suchen (Gemeindeseite oder kantonaler
OEREB-Speicher `oerebdocs.zh.ch/getDoc?docid=`) → `pdftotext -layout` → Grundmasse-Tabelle
(Regelbauweise Wohnzonen) extrahieren. Pro Gemeinde ist das ein einzelner Fetch; die
Grossrecherche liegt nur im Umfang, nicht in der Methode.

## Achtung: unterschiedliche Bezugsgrössen — nicht direkt vergleichbar

Der zentrale Befund aus Run 25: die Gemeinden regeln die bauliche Dichte über **drei
verschiedene, nicht ineinander umrechenbare Kennziffern**. Ein Vergleich «AZ Gemeinde A ↔
AZ Gemeinde B» ist nur zulässig, wenn beide dieselbe Bezugsgrösse verwenden:

| Kennziffer | Definition | Grössenordnung Wohnen | Gemeinden (hier) |
|---|---|---|---|
| **Ausnützungsziffer (AZ)** | anrechenbare Geschossfläche ÷ anrechenbare Landfläche | 0.20–0.85 | Thalwil, Wädenswil, Maur, Wangen SZ, Regensdorf, Muri AG |
| **Baumassenziffer (BMZ/BZ)** | oberirdisches Bauvolumen (m³) ÷ anrechenbare Landfläche (m²) | 1.1–3.0 m³/m² | Zollikon, Wald ZH |
| **Überbauungsziffer (ÜZ)** | anrechenbare Gebäudegrundfläche ÷ anrechenbare Landfläche | 0.20–0.31 | Einsiedeln, Luzern |

Faustregel-Umrechnung (grob, **Annahme**, nur zur Einordnung, nie für die Bewertung
selbst): BMZ ÷ ~3.0–3.2 m Geschosshöhe ≈ AZ pro Vollgeschoss-Äquivalent; ÜZ × Anzahl
Vollgeschosse ≈ AZ. Für jede belastbare Rechnung gilt die in der Gemeinde tatsächlich
massgebende Kennziffer und deren amtliche Messweise (kantonal geregelt, in ZH IVHB-Masse).

## Wichtiger Hinweis zur Verwendung

Das Dichtemass ist eine **Momentaufnahme** — Gemeinden revidieren ihre BZO periodisch
(Zürich: i.d.R. alle 15-20 Jahre plus Teilrevisionen; der Kanton stellt zudem von der
alten AZ auf die IVHB-Masse Baumassen-/Überbauungsziffer um). Vor Verwendung in einer
Bewertung/Studie **immer den aktuellen Rechtsstand bei der Gemeinde (Bauamt/Ortsplanung)
verifizieren** — insbesondere ob die BZO zwischenzeitlich revidiert wurde. Die hier
erfassten Werte sind der Stand der zitierten Quelle, kein Echtzeit-Register.

## Thalwil (ZH, BFS 0141, PLZ 8800)

Quelle: Bau- und Zonenordnung Thalwil vom 18.03.2005, Art. 3 Grundmasse (Synopse mit
späterer Teilrevision, beide Fassungen decken sich in den Kernwerten).

| Bestimmung | W1 | W2 | WG2/WGS | W3 | WG3 | WG4 |
|---|---|---|---|---|---|---|
| Max. Ausnützungsziffer | 30 % | 40 % | 40 %¹ | 60 % | 60 % | 70 % |
| Max. Zuschlag Gewerbe | — | — | 10 % | — | 10 % | 10 % |
| Max. Vollgeschosse | 2 | 2 | 2 | 3² | 3² | 4 |
| Max. Dachgeschosse | 1 | 1 | 1 | 1² | 1² | 1 |
| Max. anrechenbare UG | — | — | 1 | 1 | 1 | 1 |
| Zusätzl. Vollgeschosse bei Arealüberbauung | — | 1 | 1 | 2 | 2 | 1 |
| Max. Gebäudehöhe | 7.50 m | 7.50 m | 7.50 m | 10.50 m | 10.50 m | 13.50 m |
| Max. Gebäudelänge | 25 m | 30 m | 30 m | 40 m | 40 m | 40 m |
| Max. Firsthöhe | 4.50 m | 4.50 m | 4.50 m | 5.50 m | 5.50 m | 5.50 m |
| Min. Grundabstand | 5 m | 5 m | 5 m | 5 m | 5 m | 5 m |

¹ In WGS max. 50 % der anrechenbaren Geschossfläche für Wohnen nutzbar.
² Im Rahmen der Sonderbauvorschriften Aufwertung/Verdichtung (Art. 20a) ist anstelle des
Dachgeschosses ein Vollgeschoss zulässig — AZ und Gebäudehöhe erhöhen sich entsprechend,
gebunden an 25 % preisgünstigen/ausnützungseffizienten Wohnraum bei Neubauten.

**Reale vs. statutarische Ausnützung (Zusatzbefund, gleiche Quelle, S. 13):** Thalwil weist
für W1/W2 die effektiv realisierte Ausnützung (`AZreal`) deutlich über der Zonen-AZ
(`AZBZO`) aus, Folge der PBG-Revision 1991 (Ausnützungsbefreiung Dach-/Untergeschosse):

| Zone | AZ (BZO) | AZ real (Ø gebaut) | Faktor | Mehrnutzung ggü. 1971 |
|---|---|---|---|---|
| W1 | 30 % | 46 % | 1.8 | +82 % |
| W2 | 40 % | 59 % | 1.5 | +48 % |

Für Machbarkeits-/Residualwertrechnungen in Thalwil ist damit die **reale AZ (≈40-60 %
über der Zonen-AZ)** der realistischere Kalibrierungsanker, nicht die nominelle Zonen-AZ —
konsistent mit dem JANS-Grundsatz «Volumenstudien auf das maximal zulässige Volumen
auslegen» (Rule `auto-verbesserungen` 260624): die maximale reale Ausschöpfung liegt über
dem nominellen AZ-Wert.

## Wädenswil (ZH, PLZ 8820)

Quelle: Bau- und Zonenordnung Wädenswil, Art. 3 Grundmasse (aktuell rechtsgültige Fassung,
ortsplanung.ch-Spiegel).

| Bestimmung | W2/30% | W2/40% | W3/55% | W4/70% |
|---|---|---|---|---|
| Ausnützungsziffer | 30 % | 40 % | 55 % | 70 % |
| Zuschlag Gewerbe | — | — | — | — |
| Empfindlichkeitsstufe | II | II | II | II |
| Vollgeschosse max. | 2 | 2 | 3 | 4 |
| Anrechenbare Dachgeschosse max. | 2 | 2¹ | 2 | 2 |
| Anrechenbare Untergeschosse max. | — | 1¹ | 1 | 1 |
| Zusätzl. Vollgeschosse Arealüberbauung | — | 1 | 1 | 2 |
| Gebäudehöhe max. | 7.5 m | 7.5 m | 10.5 m | 13.5 m |
| Firsthöhe max. | 5.5 m | 5.5 m | 6.5 m | 6.5 m |
| Gebäudelänge max. | 30 m | 30 m² | 40 m | 50 m |
| Grundgrenzabstand klein min. | 4 m | 4 m | 5 m | 6 m |
| Grundgrenzabstand gross min. | 8 m | 8 m | 10 m | 12 m |

| Bestimmung | WG3/55% | WG4/70% | WG5/85% |
|---|---|---|---|
| Ausnützungsziffer | 55 % | 70 % | 85 % |
| Zuschlag Gewerbe max. | 15 % | 15 % | 15 % |
| Vollgeschosse max. | 3 | 4 | 5 |
| Gebäudehöhe max. | 10.5 m | 13.5 m | 16.5 m |

¹ In Unter-/Dachgeschossen ohne Vollgeschossersatz max. die Hälfte der in Vollgeschossen
zulässigen Nutzflächen. ² Im Quartierplan-Gebiet Mühlebach-Baumgarten gilt max. 20 m.

**Ausnützungsbonus behindertengerechtes Wohnen:** In W2/30% und W2/40% erhöht sich die AZ
um 5 Prozentpunkte, wenn zusätzlicher behindertengerechter Wohnraum mit separatem Zugang
geschaffen wird (bestehende Gebäude: Nachrüstung; Neubauten: ≥1 Whg./500 m² anrechenbare
Grundstücksfläche).

**Kernzonen (Sonderfall, nicht Regelbauweise):** Kernzone Oberort B — AZ 90 %; Kernzone
C — AZ 50 % (Art. 16).

## Vergleich Thalwil ↔ Wädenswil

Beide Gemeinden liegen am Zürichsee (Bezirk Horgen, Zimmerberg-Achse) und nutzen ein
sehr ähnliches Zonenraster (W2/W3/W4 mit AZ 30/40/55-60/70 %, Gebäudehöhen 7.5/10.5/13.5 m
nahezu identisch) — plausibel, da beide dem kantonalen PBG-Rahmen folgen und strukturell
vergleichbare Vorortsgemeinden sind. Wädenswil hat zusätzlich eine WG5/85%-Zone (5
Vollgeschosse, 16.5 m), die in Thalwils Zonenkatalog (max. WG4/70%) fehlt — Wädenswil
lässt damit an einzelnen Lagen eine höhere bauliche Dichte zu.

## Zollikon (ZH, PLZ 8702) — Baumassenziffer

Quelle: BZO Zollikon vom 26.06.1996, Art. 15 Grundmasse (kantonaler OEREB-Speicher
oerebdocs.zh.ch docid=1611). **Kennziffer: Baumassenziffer (BMZ)**, keine AZ.
⚠ Ausgabe 1996 (bald 30 Jahre) — vor Verwendung zwingend aktuellen Rechtsstand prüfen.

| Zone | BMZ Flachdach | BMZ Schrägdach¹ | BMZ bes. Geb. | Gebäudehöhe max. | Firsthöhe max. | Gebäudelänge max. | Grundabstand min. |
|---|---|---|---|---|---|---|---|
| W 1.25 | 1.25 | 1.30 | 0.20 | 8.1 m | 5 m | 20 m | 7 m |
| W 1.35 | 1.35 | 1.40 | 0.20 | 8.1 m | 5 m | 20 m | 7 m |
| W 1.60 | 1.60 | 1.65 | 0.20 | 8.1 m | 5 m | 25 m | 7 m |
| W 1.75 | 1.75 | 1.85 | 0.20 | 8.1 m | 5 m | 25 m | 6 m |
| W 2.10 | 2.10 | 2.20 | 0.20 | 8.1 m² | 5 m | — | 6 m |
| W 2.20 | 2.20 | 2.30 | 0.20 | 8.1 m² | 5 m | — | 6 m |
| W 2.40 | 2.40 | 2.50 | 0.20 | 11.8 m | — | — | 6 m |
| W 2.60 | 2.60 | 2.70 | 0.20 | 11.8 m | — | — | 6 m |
| WG 2.60 | 2.60 | 2.70 | 0.20 | 11.8 m | — | — | 6 m |
| WG 2.70 | 2.70 | 2.80 | 0.20 | 11.8 m | — | — | 6 m |
| WG 2.90 | 2.90 | 3.00 | 0.20 | 11.8 m | — | — | 6 m |

¹ Beidseitiges Schrägdach über den Hauptfassaden, ein First, ≥ 22.5° Neigung. ² In
besonders bezeichneten Gebieten gilt eine Gebäudehöhe von max. 11.8 m.

## Maur (ZH, PLZ 8124) — Ausnützungsziffer (neue Fassung 2023)

Quelle: BZO Maur, neue Fassung der Ortsplanungsrevision (BDV-Genehmigung 26.09.2023),
Art. 14 Grundmasse Wohnzonen (maur.ch, Synoptische Darstellung 19.10.2021 — neue Fassung).
**Kennziffer: AZ.** Neu ist eine Grünflächenziffer (mind.) in allen Zonen.

| Bestimmung | W1 | W2/35 | W2/45 | W3 |
|---|---|---|---|---|
| Ausnützungsziffer | 20 % | 35 % | 45 % | 60 % |
| Grünflächenziffer mind. | 40 % | 40 % | 40 % | 40 % |
| Vollgeschosszahl | 1 | 2 | 2 | 3 |
| Dachgeschosszahl | 1 | 1 | 2 | 2 |
| Untergeschosszahl | 1 | 1 | 1 | 1 |
| Gebäudelänge | 25.00 m | 25.00 m | 30.00 m | 40.00 m |
| Fassadenhöhe (generelles Mass) | 4.80/5.40 m* | 7.50 m | 7.50 m | 10.50 m |
| Grosser Grundabstand min. | 10.00 m | 10.00 m | 8.00 m | 10.00 m |
| Kleiner Grundabstand min. | 6.00 m | 6.00 m | 4.00 m | 6.00 m |

Wohnzonen mit Gewerbeanteil (Art. 16): WG2 AZ 45 % (2 Vollgeschosse, 2 Dachgeschosse),
WG3 AZ 60 % (3 Vollgeschosse, 2 Dachgeschosse); Grünflächenziffer je 40 %. Kernzone KB
AZ 45 %. * Bei Schrägdach erhöht sich die Fassadenhöhe (max. + 5 m gemäss 45°-Dachneigung),
bei Attika um max. 3.3 m (IVHB).

## Wald (ZH, PLZ 8636) — Baumassenziffer

Quelle: BZO Wald ZH, Art. 43 Grundmasse (wald-zh.ch). **Kennziffer: Baumassenziffer (BZ).**
Besonderheit: die Aufteilung der zulässigen Nutzung auf Dach-, Voll- und Untergeschosse
ist im Rahmen der Höhen **frei** (Art. 43.2) — keine feste Vollgeschosszahl.

| Zone | BZ Hauptgeb. (m³/m²) | Gebäudehöhe Flachdach ohne Attika | Gebäudehöhe Schrägdach/Attika | Firsthöhe max. | Gebäudelänge max. |
|---|---|---|---|---|---|
| W 1.1 | 1.1 | 10.5 m | 7.5 m | 5 m | 25 m |
| W 1.4 | 1.4 | 10.5 m | 7.5 m | 5 m | 25 m |
| W 1.8 | 1.8 | 10.5 m | 7.5 m | 5 m | 35 m |
| W 2.4 | 2.4 | 14 m | 10.5 m | 7 m | 40 m |
| W 2.8 | 2.8 | 17 m | 14 m | 7 m | 40 m |
| WG 2.0 | 2.0 | 11 m | 8 m | 5 m | 40 m |
| WG 2.6 | 2.6 | 15 m | 11.5 m | 7 m | 50 m |
| WG 2.8 | 2.8 | 17 m | 14 m | 7 m | 50 m |

BZ besondere Gebäude 0.2–0.3 je Zone; kleiner/grosser Grundabstand 4–6 / 8–12 m.

## Regensdorf (ZH, PLZ 8105) — Ausnützungsziffer (BZO 2020)

Quelle: BZO Regensdorf 2020, Art. 16 Grundmasse (oerebdocs.zh.ch docid=8897).
**Kennziffer: AZ.**

| Bestimmung | W2A | W2B | W3/WG3 |
|---|---|---|---|
| Ausnützungsziffer max. | 27 % | 35 % | 50 % |
| Grünflächenziffer mind. | 30 % | 30 % | 40 % |
| Vollgeschosse max. | 2 | 2 | 3 |
| Dachgeschosse max. | 1 | 2 | 2 |
| Attikageschosse max. | 1 | 1 | 1 |
| Fassadenhöhe (generelles Mass) max. | 8.1 m | 8.1 m | 11.4 m |
| Fassadenhöhe Schrägdach giebelseitig max. | 12.0 m | 12.0 m | 18.0 m |
| Gebäudelänge max. | 25.0 m | 30.0 m | 50.0 m |
| Grosser Grundabstand min. | 9.0 m | 9.0 m | 11.0 m |
| Kleiner Grundabstand min. | 5.0 m | 5.0 m | 6.0 m |

## Wangen (SZ, PLZ 8855) — Ausnützungsziffer

Quelle: Baureglement Wangen SZ, Tabelle der Grundmasse (wangensz.ch). **Kennziffer: AZ.**
Drei Werte je Zone: Einzelbauweise / Gestaltungsplan (GP) / GP mit erhöhter Anforderung.

| Zone | AZ Einzel | AZ GP | AZ GP+ | Vollgeschosse (Einzel) | Gebäudehöhe | Firsthöhe | Gebäudelänge |
|---|---|---|---|---|---|---|---|
| K (Kernzone) | — | — | — | bis 5 | 14 m | 17 m | 40 m |
| W1 | 0.25 | 0.25 | 0.25 | 1 | 4 m | 7 m | 20 m |
| W2 NS (Nuolen See) | 0.40 | 0.40 | 0.40 | 2 | 7 m | 10 m | 30 m |
| W2 O (Ochsenboden) | 0.25 | 0.25 | 0.25 | 2 | 7 m | 10 m | 30 m |
| W2 | 0.45 | 0.55 | 0.60 | 2 | 8 m | 10 m | 35 m |
| W3 | 0.55 | 0.65 | 0.70 | 3 | 10 m | 13 m | 40 m |
| W4 | 0.70 | 0.80 | 0.85 | 4 | 12 m | 15 m | 40 m |
| WG2 | 0.60 | 0.70 | 0.75 | 2 | 8 m | 10 m | 40 m |
| WG3 | 0.75 | 0.85 | 0.90 | 3 | 10 m | 13 m | 50 m |

Kernzone K: keine AZ (Bestand/Ortsbild massgebend). WG-AZ gilt nur bei Wohnbauten bzw.
< 1/3 Gewerbeanteil der anrechenbaren BGF.

## Einsiedeln (SZ, PLZ 8840) — Überbauungsziffer (Baureglement 2025)

Quelle: Baureglement Bezirk Einsiedeln, Ausgabe 2025, Art. 49 Masse Wohnzonen
(einsiedeln.ch sre_610100). **Kennziffer: Überbauungsziffer (ÜZ)** — Verhältnis
anrechenbare Gebäudegrundfläche zur Landfläche, **nicht** AZ. Zweiter Wert = maximale
ÜZ bei Gestaltungsplan.

| Bestimmung | W4 | W3 | W2 | W1 | WG |
|---|---|---|---|---|---|
| Überbauungsziffer | 20 % | 24 % | 28 % | 20 % | 24 %¹ |
| Max. ÜZ bei Gestaltungsplan | 25 % | 28 % | 31 % | 25 % | 31 %¹ |
| ÜZ Nebenbauten | 8 % | 8 % | 8 % | 8 % | 8 % |
| Grenzabstand | 6 m | 5 m | 4 m | 4 m | 5 m¹ |
| Grosser Grenzabstand | 12 m | 8 m | 8 m | 8 m | 8 m¹ |
| Gebäudehöhe | 12 m | 9 m | 6 m | 6 m | 10 m |
| Firsthöhe | 16 m | 14 m | 10 m | 9 m | 14 m |
| Max. Gebäudelänge | — | 40 m | 30 m | 30 m | — |

¹ Für eingeschossige, ausschliesslich gewerblich genutzte Gebäudeteile bis 5 m Höhe
gelten Erleichterungen (Grenzabstand 3 m; ÜZ + 4 %).

## Muri (AG, PLZ 5630) — Ausnützungsziffer

Quelle: Bau- und Nutzungsordnung Muri AG, Stand 31.10.2012, §§ 6-10 (muri.ch). **Kennziffer:
AZ.** ⚠ Eine Revision 2019 existiert, liegt aber nur als Bild-PDF (ohne Textebene) vor —
vor Verwendung aktuellen Stand verifizieren.

| Zone | AZ | Gebäudehöhe | Firsthöhe | Kl. Grenzabstand | Gr. Grenzabstand | ES |
|---|---|---|---|---|---|---|
| Kernzone Wey/Klosterrain/Bahnhofquartier (K) | 1.0¹ | 10.0 m | 15 m | 4 m | — | III |
| Kernzone (K) | 0.6¹ | 7.5 m | 13 m | 4 m | — | III |
| Wohnzone 1 (W1) | 0.3 | 7 m | 12 m | 4 m | 8 m | II |
| Wohnzone 2 (W2) | 0.4 | 7 m | 12 m | 4 m | 8 m | II |
| Wohnzone 3 (W3) | 0.5 | 10 m | 15 m | 6 m | 10 m | II |
| Wohn- und Gewerbezone 3 (WG3) | 0.6² | 10 m | 15 m | 6 m | 10 m | III |

¹ Richtwert; der Gemeinderat legt die Masse in den Kernzonen im Einzelfall fest
(Ortsbildschutz). ² Gilt nur bei Gewerbeanteil ≥ 20 % der BGF, sonst W3-Wert 0.5. In
Arealüberbauungen sind höhere AZ (0.9/1.0) möglich; in besonders einsehbaren W1-Gebieten
AZ 0.25.

## Luzern (Stadt, LU, PLZ 6000) — Überbauungsziffer + Gesamthöhe-System (BZR 2022)

Quelle: Bau- und Zonenreglement der Stadt Luzern (BZR 2022), Art. 40/43 (stadtluzern.ch).
**Anderes System als die ZH/SZ/AG-Gemeinden:** die Wohnzonen (A–F) und Wohn- und
Arbeitszonen (B–F) sind **nach zulässiger Gesamthöhe** differenziert; die bauliche Dichte
wird über die **Überbauungsziffer (ÜZ)** zusammen mit der Gesamthöhe geregelt. Die
konkreten ÜZ-/Gesamthöhe-Werte hängen an der **Ordnungsnummer im Zonenplan** (Anhang/
Legende), nicht an einer einheitlichen Zonen-Tabelle im Reglement. Für einen konkreten
Standort ist deshalb die Ordnungsnummer der Parzelle im Zonenplan abzulesen.
→ Per-Ordnungsnummer-Werte (Zonenplan-Legende) sind **offen** (nicht erfunden).

## Langnau am Albis (ZH, PLZ 8135) — in Revision, alte BZO ausser Kraft

Die BZO Langnau am Albis von 2005 ist **ausser Kraft** (Vermerk «Erlass ausser Kraft» auf
der Gemeindeseite). Die Gemeinde ist in der Nutzungsplanungs-Revision (BZO 2026/27;
kantonale Vorprüfung/öffentliche Auflage Frühjahr 2026, Inkraftsetzung Frühjahr 2027
geplant). Aktuell ist kein stabil beziehbares, in Kraft stehendes BZO-PDF verfügbar; der
massgebende Rechtsstand ist **direkt bei der Gemeinde** zu beziehen. Für D6 offen, bis die
Revision rechtskräftig ist. (Wichtig für den JANS-Fall 2621 Giebelweg 12 — Zimmerberg.)

## Offen / nächste Schritte

- **Langnau am Albis** — Wiedervorlage, sobald die BZO 2026/27 rechtskräftig ist.
- **Luzern** — Per-Ordnungsnummer-Werte (ÜZ/Gesamthöhe) aus der Zonenplan-Legende, falls
  für einen konkreten Standort gebraucht.
- **Muri AG** — auf die Revision 2019 aktualisieren, sobald eine Textebene-Fassung vorliegt.
- **Zollikon** — auf einen allfälligen Nachfolger der BZO 1996 aktualisieren.
- Damit ist D6 für die JANS-Bezugsmärkte **substanziell geschlossen**: 8 von 11 Gemeinden
  mit vollständiger Dichte-Tabelle, 1 System-Beschrieb (Luzern), 2 mit Status-/Aktualitäts-
  Vorbehalt (Langnau ausser Kraft, Muri Revision).
