---
title: Dichte-Kennwerte (AZ / Baumassenziffer / Überbauungsziffer) je Gemeinde/Zone (D6)
status: emerging
last_updated: 2026-07-17
sources: ["Thalwil: Bau- und Zonenordnung vom 18.03.2005 (teilrevidiert), Art. 3 Grundmasse, Synopse-Fassung (habitatmobilite.ch-Spiegel des amtlichen Thalwil-BZO-PDF)", "Wädenswil: Bau- und Zonenordnung (BZO), Art. 3 Grundmasse (ortsplanung.ch, offizieller Spiegel der Stadt Wädenswil)", "Zollikon: BZO Stand 5.4.2013, Art. 11+15 Grundmasse (zollikon.ch/_doc/4980595, konsolidierter Neudruck 19.02.2024; materiell identisch mit Erlass 26.06.1996; Teilrevision Gemeinderat-Beschluss 20.08.2025 noch nicht in Kraft)", "Maur: BZO neue Fassung (Ortsplanungsrevision, BDV-Genehmigung 26.09.2023), Art. 14/16 Grundmasse (maur.ch, Synoptische Darstellung 19.10.2021)", "Wald ZH: BZO, Art. 43 Grundmasse (wald-zh.ch)", "Einsiedeln: Baureglement Ausgabe 2025, Art. 49 Masse Wohnzonen (einsiedeln.ch sre_610100)", "Wangen SZ: Baureglement, Tabelle der Grundmasse (wangensz.ch)", "Regensdorf: BZO 2020, Art. 16 Grundmasse (oerebdocs.zh.ch docid=8897)", "Muri AG: Bau- und Nutzungsordnung (BNO) vom 21.06.2018, genehmigt RRB Nr. 2019-000184 vom 27.02.2019, § 9 Bauzonen-Tabelle (muri.ch, Bild-PDF ohne Textebene, visuell gelesen)", "Luzern Stadt: Bau- und Zonenreglement vom 17.01.2013, sRSL Nr. 7.1.2.1.1, Ausgabe vom 01.09.2024 (in Kraft seit 03.06.2014, letzte Aenderung 04.05.2023), Art. 4/5/7/24/26 + Anhang 1 (stadtluzern.ch/_docn/5364361; gegengeprueft gegen geoshop.lu.ch/pdf/luze_BZR.pdf Ausgabe 01.08.2024 — inhaltlich identisch). Laufende BZO-Revision (Entwurf Art. 40 Abs. 3, A-F-Systematik): stadtluzern.ch/_doc/4902088; 2. Auflage 28.04.-27.05.2026, Flyer stadtluzern.ch/_docn/6937858 — noch nicht in Kraft, doppelte Massgeblichkeit", "Langnau am Albis: langnauamalbis.ch/bzo, Revisions-Zeitplan BZO 2026/27 (Stand Juli 2026)", "Niederhasli: BZO Nr. 700.1, festgesetzt GV 11.12.2024, in Kraft ab 08.08.2025 (Totalrevision, IVHB), Art. 20/4/23 (niederhasli.ch/_doc/6004822)", "Oberrieden: BZO vom 12.09.2013, Stand 26.01.2026 (IVHB-Teilrevision), Art. 15/1/6 (oerebdocs.zh.ch docid=1253)", "Kilchberg: BZO Teilrevision, GV 23.05.2012, genehmigt 06.01.2014/18.02.2015, Massvorschriften Ziff. 2.1 (oerebdocs.zh.ch docid=1184)", "Horgen: BZO Gesamtrevision GV 15.09.2011, genehmigt 05.07.2016, TR 09.12.2021 genehmigt 05.06.2023, Ziff. 5.1 (oerebdocs.zh.ch docid=1101)", "Kuesnacht: BZO Stand Juli 2019, Art. 1/19/19b (kuesnacht.ch 700.1)", "Meilen: BZO GV 17.09.2020, in Kraft 01.05.2025, Art. 2/28/30 (meilen.ch _docn/2708348)", "Adliswil: BZO festgesetzt 05.04.1995, konsolidiert Stand Juni 2024, Art. 28/25/24/19 (adliswil.ch _docn/51379)", "Richterswil: BZO 1984 mit Aenderungen bis 08.09.2022, genehmigt 31.05.2023, Stand 18.08.2023, Art. 3 (richterswil.ch/_doc/4649779)"]
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

Der zentrale Befund (Run 25, erweitert Run 27): die Gemeinden regeln die bauliche Dichte
über **vier verschiedene, nicht ineinander umrechenbare Logiken**. Ein Vergleich «AZ
Gemeinde A ↔ AZ Gemeinde B» ist nur zulässig, wenn beide dieselbe Bezugsgrösse verwenden:

| Kennziffer/Logik | Definition | Grössenordnung Wohnen | Gemeinden (hier) |
|---|---|---|---|
| **Ausnützungsziffer (AZ)** | anrechenbare Geschossfläche ÷ anrechenbare Landfläche | 0.20–0.85 | Thalwil, Wädenswil, Maur, Wangen SZ, Regensdorf, Muri AG, Oberrieden, Adliswil, Richterswil |
| **Baumassenziffer (BMZ/BZ)** | oberirdisches Bauvolumen (m³) ÷ anrechenbare Landfläche (m²) | 1.0–3.8 m³/m² | Zollikon, Wald ZH, Kilchberg, Horgen, Küsnacht, Meilen |
| **Überbauungsziffer (ÜZ)** | anrechenbare Gebäudegrundfläche ÷ anrechenbare Landfläche | 0.05–1.0 (Einsiedeln 0.20–0.31; Luzern 0.05–1.0 je Ordnungsnummer, Run 36) | Einsiedeln, Luzern, Adliswil (nur Kernzone Ober-Leimbach) |
| **Keine Kennziffer — reine Hüllensteuerung** | Dichte ausschliesslich geometrisch: Fassadenhöhe (max.) + Gebäudelänge/-breite (max.) + Grünflächenziffer (min.); IVHB-Regelbauweise | — (Volumen ergibt sich aus der Hülle) | Niederhasli (BZO 2024) |

**Vierte Logik neu (Run 27):** Niederhasli hat mit der Totalrevision 2024 (IVHB) die
klassischen Dichte-Kennziffern in den **Wohnzonen ganz abgeschafft** — es gibt kein AZ,
kein BMZ, kein ÜZ mehr. Die zulässige Dichte ergibt sich allein aus der maximalen
Gebäudehülle (Fassadenhöhe, Länge, Breite) plus der Grünflächenziffer als einziger
prozentualer Zonenziffer. Für die Bewertung/Machbarkeit heisst das: das Volumen ist **aus
der Hüllgeometrie zu rechnen**, nicht aus einer Ziffer × Landfläche. Klassische BMZ/ÜZ
existieren dort nur noch in den Gewerbe-/Industriezonen. Dieselbe IVHB-Umstellung findet
sich bei Meilen und Oberrieden, die die Kennziffer aber (BMZ bzw. AZ) behalten haben —
die Kennziffer-Abschaffung ist also ein Gestaltungsentscheid der Gemeinde, keine zwingende
IVHB-Folge.

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

## Zollikon (ZH, PLZ 8702) — Baumassenziffer (Quelle bestätigt aktuell, Run 26)

Quelle: BZO Zollikon, **Stand 5. April 2013** (Dokument-Nr. 700.2, konsolidierter Neudruck
vom 19.02.2024, `zollikon.ch/_doc/4980595`), Art. 15 Grundmasse Wohnzonen + Art. 11
Grundmasse Zentrumszone. **Kennziffer: Baumassenziffer (BMZ)**, keine AZ. **Gegenprüfung
Run 26:** die Wohnzonen-Tabelle (W 1.25–WG 2.90) im Stand-2013-Dokument ist **wertidentisch**
mit der 1996-Fassung — der ursprüngliche Erlass von 1996 gilt materiell unverändert weiter,
2013 war eine redaktionelle Inkraftsetzung/Bereinigung. Neu ergänzt: **Zentrumszone (Art. 11)**
— BMZ max. 2.70 (Flachdach) / 2.80 (Schrägdach), Gebäudehöhe max. 13.5 m, Grundabstand
min. 6 m. **Laufende Teilrevision:** der Gemeinderat hat am 20.08.2025 eine überarbeitete
BZO-Teilrevision beschlossen; sie ist der Gemeindeversammlung zur Beschlussfassung vorgelegt
(Infoveranstaltung 05.11.2025) und **noch nicht in Kraft** — bis zum rechtskräftigen Beschluss
gilt die Stand-2013-Tabelle unten unverändert weiter.

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

**Zentrumszone (Art. 11, neu erfasst Run 26):**

| Bestimmung | Zentrumszone |
|---|---|
| BMZ Hauptgebäude Flachdach max. | 2.70 |
| BMZ Hauptgebäude Schrägdach¹ max. | 2.80 |
| BMZ besondere Gebäude max. | 0.20 |
| Gebäudehöhe max. | 13.5 m |
| Grundabstand min. | 6 m |

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

## Muri (AG, PLZ 5630) — Ausnützungsziffer (aktualisiert auf die Revision 2018/2019, Run 26)

Quelle: Bau- und Nutzungsordnung (BNO) Muri AG vom 21. Juni 2018 (Gemeindeversammlung),
genehmigt durch den Regierungsrat mit RRB Nr. 2019-000184 vom 27.02.2019 «mit Änderungen/
Auflagen» (muri.ch, `Bau-_und_Nutzungsordnung_190227.pdf`, § 9 Bauzonen-Tabelle). **Bild-PDF
ohne Textebene — visuell gelesen (Modell D, Read-Tool), nicht per pdftotext extrahierbar.**
**Kennziffer: Ausnützung/AZ**, System auf **Gesamthöhe** umgestellt (IVHB-Harmonisierung,
löst das alte Gebäudehöhe/Firsthöhe-Paar ab). Löst damit den bisherigen Stand 31.10.2012 ab
und schliesst den Revisions-Vorbehalt aus Run 25.

| Zone | Ausnützung | Vollgeschosse | Gesamthöhe | Grenzabstand klein | Grenzabstand gross | ES | § |
|---|---|---|---|---|---|---|---|
| Kernzone (K) | x¹ | (3) | (15 m) | 4 m | — | III | §10 |
| Dorfzone (D) | (0.8) | (2) | (13 m) | 4 m | — | III | §11 |
| Wohnzone 1 (W1) | 0.35 | 2 | 10 m | 4 m | 8 m | II | §12 |
| Wohnzone 2 (W2) | 0.45 | 2 | 11 m | 4 m | 6 m | II | §12 |
| Wohnzone 3 (W3) | 0.6 | 3 | 14 m | 5 m | 8 m | II | §12 |
| Wohnzone 3 plus (W3+) | 0.8 | 5 | 18 m | 6 m | 12 m | II | §12 |
| Wohn- und Gewerbezone 3 (WG3) | 0.7 | 3 | 15 m | 5 m | 8 m | III | §13 |
| Arbeitszone (A) | — | — | § 9 Abs. 5² | x | — | lt. Bauzonenplan | §15 |
| Spezialzone Im Roos (SR) | x¹ | (3) | (15 m) | 4 m | — | III | §16 |
| Zone für öffentliche Bauten und Anlagen (OE) | — | x¹ | x¹ | x¹ | — | II/III | §17 |

Werte in Klammern gelten bei Neubauten als **Richtwert**, von dem der Gemeinderat abweichen
kann, wenn die Lösung ortsbaulich/architektonisch besser ist und der Zonenzweck gewahrt
bleibt. ¹ Mit «x» bezeichnete Masse legt der Gemeinderat im Einzelfall unter Interessen-
abwägung fest. ² Gesamthöhe der Arbeitszonen im Bauzonenplan festgelegt; in der Zone
«A/IV/18m» ist eine Erhöhung unter Interessenabwägung möglich, in Extremfällen mit
Fachgutachten. **Kernzone Brühl (KB, §14)** wurde von der Gemeindeversammlung am 21.06.2018
**teilzurückgewiesen** und ist damit **nicht in Kraft** — separat beim Gemeinderat zu
verifizieren, bevor eine Bewertung sich darauf stützt.

**Dichtesprung ggü. 2012 (Kernbefund):** die Revision hat die Ausnützung spürbar erhöht und
eine neue Hochdichte-Zone eingeführt — W1 0.30→0.35, W2 0.40→0.45, W3 0.50→0.60, WG3
0.60→0.70, plus die **neue Zone W3+ mit AZ 0.8 / 5 Vollgeschossen / 18 m Gesamthöhe**
(2012 endete der Zonenkatalog bei WG3). Für Machbarkeits-/Residualwertrechnungen in Muri ist
damit ab sofort die 2018/19-Tabelle massgebend, nicht der 2012-Stand.

## Luzern (Stadt, LU, PLZ 6000) — Überbauungsziffer je Ordnungsnummer (BZR 2013)

Quelle: **Bau- und Zonenreglement der Stadt Luzern vom 17. Januar 2013**, Systematische
Rechtssammlung Nr. 7.1.2.1.1, **Ausgabe vom 1. September 2024** (in Kraft seit 03.06.2014,
letzte Änderung 04.05.2023), Art. 4/5/7/24/26 + **Anhang 1**
(`stadtluzern.ch/_docn/5364361/sRSL_7.1.2.1.1_Bau-_und_Zonenreglement_der_Stadt_Luzern.pdf`).
Anhang-1-Werte gegengeprüft gegen den Geoshop-Spiegel (`geoshop.lu.ch/pdf/luze_BZR.pdf`,
Ausgabe 01.08.2024): **inhaltlich identisch**, nur das Ausgabe-Label differiert.

**Korrektur Run 36 (2026-07-17):** Die frühere Fassung dieses Abschnitts («BZR 2022,
Art. 40/43, Wohnzonen A–F nach Gesamthöhe») beschrieb **nicht das geltende Recht**, sondern
den Entwurf der laufenden BZO-Revision (siehe unten). Im geltenden BZR kommt der Begriff
«Gesamthöhe» **null Mal** vor, es gibt **keine** Zonenklassen A–F, und Art. 40/43 regeln
Rutsch-/Sturz-Gebotszone bzw. Energie — nicht die Zonendichte.

**Systematik (geltendes Recht):** Die Wohnzonen heissen **WO** (Wohnzone, Art. 5) und **WA**
(Wohn- und Arbeitszone, Art. 7). «A»/«B» ist die **Ortsbildschutzzone**, keine Höhenklasse.
Die Dichte wird über die **Überbauungsziffer (ÜZ)** gesteuert, die Höhe über **Vollgeschosse
(VG)** *oder* die **maximale Fassadenhöhe (FH)** (Art. 26: FH 21 m / Firsthöhe 27 m /
max. 6 Vollgeschosse als Regelmass). Alle Werte hängen an der **Ordnungsnummer** der Parzelle
im Zonenplan; Art. 4 Abs. 4 erklärt den Anhang für **verbindlich**. Für einen konkreten
Standort ist deshalb zuerst die Ordnungsnummer im Teilzonenplan abzulesen — es gibt keine
gemeindeweite Zonen-Tabelle.

**ÜZ-Bandbreiten je Zonenart** (Anhang 1, ausgezählt; Run 36):

| Zonenart | Ordnungsnummern | ÜZ-Spanne | Steuerung Höhe | Bauweise |
|---|---|---|---|---|
| **WO** Wohnzone | 101–192 | **0.05–0.8** (Schwerpunkt 0.15–0.3) | 1–5 VG *oder* FH 21/24 m | offen / geschlossen |
| **WA** Wohn- und Arbeitszone | 1–66 | **0.15–1.0** (Schwerpunkt 0.25–0.6) | 2–7 VG *oder* FH 21–45 m | offen / geschlossen |

Ausgewählte belegte Zeilen (Anhang 1): Nr. 113–131 WO ÜZ 0.15 (2–5 VG bzw. FH 21 m) ·
Nr. 132–145 WO ÜZ 0.2 · Nr. 146–158 WO ÜZ 0.25 · Nr. 159–171 WO ÜZ 0.3 · Nr. 174–178 WO
ÜZ 0.4 · Nr. 179/180 WO ÜZ 0.5 · Nr. 181 WO ÜZ 0.6 · **Nr. 182 WO ÜZ 0.8 / FH 21 m**
(dichteste reine Wohnzone) · Nr. 11–20 WA ÜZ 0.2–0.25 · Nr. 51–53 WA ÜZ 0.8 ·
**Nr. 54 WA ÜZ 1.0 / FH 21 m** (dichteste Zone überhaupt) · Nr. 50 WA ÜZ 0.6 / **FH 45 m**
(Hochhaus, Gestaltungsplanpflicht). Einzelne Ordnungsnummern tragen **keine** ÜZ
(z.B. 101–106, 183/184, 189/190) — dort gilt eine Sonderregel (Art. 12/13/25) oder das
Dichtemass ist im qualifizierten Verfahren zu bestimmen (Nr. 106).

**Für die Bewertung wichtig — ÜZ-Bonus (Art. 24 Abs. 3):** Im Gestaltungsplan kann ein Bonus
von **10 % auf die ÜZ** gewährt werden, für gemeinnützige Wohnungen zusätzlich **5 %**,
**insgesamt max. 15 %**. Bei Ordnungsnummern mit Gestaltungsplanpflicht ist dieser Bonus im
Residualwert als Chance zu prüfen (nicht als gesichert anzusetzen — «kann»-Vorschrift).
Freiwilliger Gestaltungsplan ab 2'000 m² (WA) bzw. 4'000 m² (übrige Zonen), Art. 24 Abs. 1.

**⚠ Doppelte Massgeblichkeit seit 28.04.2026 (Praxisfolge, Run 36):** Die Stadt führt die
BZO Littau und Luzern zusammen; die **2. öffentliche Auflage lief 28.04.–27.05.2026**
(Entscheid Grosser Stadtrat Ende 2026, Genehmigung Regierungsrat frühestens Mitte 2027 —
`stadtluzern.ch/_docn/6937858/Flyer_BZO_2026_web.pdf`). Bis zur Genehmigung müssen Baugesuche
**sowohl dem geltenden BZR als auch der neuen BZO entsprechen — die jeweils strengere Vorgabe
gilt**. Für Machbarkeits-/Residualwertrechnungen in Luzern ist deshalb ab sofort **beides**
zu prüfen; wer nur auf das BZR 2013 abstellt, rechnet seit 28.04.2026 unvollständig.

**Die neue BZO (Entwurf, noch nicht in Kraft)** führt die A–F-Systematik ein: «Die Wohnzonen
sowie Wohn- und Arbeitszonen sind, in Abhängigkeit von der zulässigen Gesamthöhe,
differenziert in **Wohnzonen A bis F** und in **Wohn- und Arbeitszonen B bis F**»
(Entwurf Art. 40 Abs. 3, `stadtluzern.ch/_doc/4902088`). Genau dieser Satz war die Quelle der
bisherigen Falschangabe. Per-Klassen-Werte (A–F) sind **offen** — bei konkretem Luzerner
Standort aus der Auflage-Fassung nachzuziehen.

**Zusatzbefund:** Für den Stadtteil **Littau** gilt bis zur Zusammenführung ein **separates
BZR** (Art. 4 Abs. 2) — bei einem Littauer Objekt ist nicht das Luzerner BZR massgebend.

## Langnau am Albis (ZH, PLZ 8135) — in Revision, alte BZO ausser Kraft

Die BZO Langnau am Albis von 2005 ist **ausser Kraft** (Vermerk «Erlass ausser Kraft» auf
der Gemeindeseite). Die Gemeinde ist in der Nutzungsplanungs-Revision (BZO 2026/27;
kantonale Vorprüfung/öffentliche Auflage Frühjahr 2026, Inkraftsetzung Frühjahr 2027
geplant). Aktuell ist kein stabil beziehbares, in Kraft stehendes BZO-PDF verfügbar; der
massgebende Rechtsstand ist **direkt bei der Gemeinde** zu beziehen. Für D6 offen, bis die
Revision rechtskräftig ist. (Wichtig für den JANS-Fall 2621 Giebelweg 12 — Zimmerberg.)
**Run 26 bestätigt:** Zeitplan unverändert (`langnauamalbis.ch/bzo`) — Bauformen sollen neu
harmonisiert nach **IVHB** definiert werden, innere Verdichtung in Einfamilienhausquartieren
gefördert, preisgünstiger Wohnraum an ausgewählten Lagen. Kein neues in-Kraft-Datum.

## Niederhasli (ZH, PLZ 8155) — keine Kennziffer / reine Hüllensteuerung (BZO 2024, IVHB)

Quelle: Bauordnung (BZO) Niederhasli Nr. 700.1, festgesetzt Gemeindeversammlung 11.12.2024,
**in Kraft ab 08.08.2025** (Totalrevision, IVHB-harmonisiert), Art. 20 (Wohn-/Zentrumszonen),
Art. 4 (Kernzonen), Art. 23 (Gewerbe-/Industriezonen) — `niederhasli.ch/_doc/6004822`.
**JANS-Bezug: CS-Bewertungsfall Seestrasse 64 (2025).** Kernbefund: die Wohnzonen haben
**keine AZ/BMZ/ÜZ** mehr; die Dichte wird geometrisch über die Gebäudehülle plus
Grünflächenziffer (min. 20 %, Zentrumszone 10 %) gesteuert.

| Zone | Dichte-Kennziffer | Fassadenhöhe max. | Gebäudelänge / -breite max. | Bemerkung |
|---|---|---|---|---|
| WE2 | keine (nur EFH/DEFH, Art. 21) | 7.50 m | 16.00 / 16.00 m | giebelseitig +7 m (45°-Schrägdach); Attika +3.3 m; kl. Grundabstand 5.00 m |
| W2 | keine | 8.10 m | 22.00 / 14.00 m | Arealüberbauung: +1 Vollgeschoss → 11.40 m, Länge 40 m |
| W3 | keine | 10.50 m | 30.00 / 14.00 m | Arealüberbauung: → 13.50 m, Länge 50 m; QEZ an W3 angelehnt (Höhen via Höhenkoten) |
| WG2 | keine (Gewerbeanteil ≥ 10 %) | 8.10 m | 30.00 / 14.00 m | — |
| WG3 | keine (Gewerbeanteil ≥ 10 %) | 11.40 m | 50.00 / 14.00 m | — |
| WG4 | keine (Gewerbeanteil ≥ 10 %) | 14.70 m | 60.00 / 14.00 m | giebelseitig +5 m |
| Z (Zentrumszone) | keine (Gewerbe ≥ 20 %) | 15.40 m | 70.00 / unbeschränkt | Grünflächenziffer nur 10 % |
| K3 (Kernzone Niederhasli) | max. 3 VG + 2 DG | 10.50 m | 30.00 / 14.00 m | Satteldach 40–50° |
| K2 (Kernzone übrige) | max. 2 VG + 2 DG | 8.10 m | 30.00 / 14.00 m | Satteldach 40–50° |

Alle Wohnzonen zusätzlich: Grünflächenziffer min. 20 %, kleiner Grundabstand min. 5.00 m,
Gebäudeabstand min. 10.00 m; Attikageschoss (Flachdach) +3.3 m fassadenbündig, +1.00 m bei
offener Absturzsicherung. Zusätzliche Dichte via Arealüberbauung (Art. 27–29, +10 %
Geschossfläche / zusätzliches Vollgeschoss, ab 3'000 m²). Klassische BMZ (6–7 m³/m²) und ÜZ
(65 %) existieren nur in den **Gewerbe-/Industriezonen** (GA6, GB6, I7, IT7; Art. 23), nicht
in den Wohnzonen.

## Oberrieden (ZH, PLZ 8942) — Ausnützungsziffer (BZO 2013, Stand 26.01.2026 IVHB)

Quelle: BZO Oberrieden vom 12.09.2013, **Stand 26.01.2026** (IVHB-Teilrevision, GV-Beschluss
05.06.2025, in Kraft seit 26.01.2026), Art. 15 (Grundmasse Wohnzonen), Art. 1 (Zonen/
Kennziffern), Art. 6 (Kernzonen) — `oerebdocs.zh.ch/getDoc?docid=1253`. **JANS-Bezug:
Machbarkeits-Studio-Markt (Zürichsee-Westufer).** Massgebend bleibt die AZ; Gewerbezonen
G3/G6 nutzen BMZ (3 bzw. 6 m³/m²).

| Zone | AZ | Vollgeschosse | Fassadenhöhe trauf / giebel / Flachdach | Gesamthöhe Flachdach | Grünflächenz. min. |
|---|---|---|---|---|---|
| W2 (25 %) | 25 % | 2 | 8.5 / 13.0 / 9.0 m | 12.3 m | 40 % |
| W2 (35 %) | 35 % | 2 | 8.5 / 13.0 / 9.0 m | 12.3 m | 40 % |
| WG2 (30 %) | 30 % | 2 | 8.5 / 13.0 / 9.0 m | 12.3 m | 40 % (ES III) |
| W3 (55 %) | 55 % | 3 | 11.5 / 17.0 / 12.0 m | 15.3 m | 30 % |
| WG3 (50 %) | 50 % | 3 | 11.5 / 17.0 / 12.0 m | 15.3 m | 30 % (ES III) |
| Kernzone KB | 35 % | 2 | 7.5 / 13.0 m | — | 30 % (Gebäudebreite max. 12 m) |
| Kernzone KA | — (keine AZ) | 3 | 10.5 / 16.0 m | — | 20 % |

W2/W3: Dachgeschoss max. 1 bzw. 2, Attikageschoss max. 1, anrechenbare UG max. ½;
Gebäudelänge max. 25 m (W2) / 40 m (W3), Grundabstand min. 5 m. Bei Flachdach mit offener/
transparenter Brüstung +1 m Fassadenhöhe.

**Korrektur einer JANS-Altannahme (wichtig):** Eine frühe interne Notiz (Grundlage von Rule
`auto-verbesserungen` 260624) führte für die Oberriedner W2 «9.0 m traufseitig / 13.0 m
giebelseitig». Amtlich ist die **traufseitige Fassadenhöhe 8.5 m**; 9.0 m gilt nur für die
**Flachdach**-Fassadenhöhe (Gesamthöhe Flachdach 12.3 m). Für Volumenstudien in Oberrieden
sind die drei Höhenmasse (trauf 8.5 / giebel 13.0 / Flachdach 9.0 m) sauber auseinanderzuhalten.

## Kilchberg (ZH, PLZ 8802) — Baumassenziffer

Quelle: BZO Kilchberg, Teilrevision Nutzungsplanung, GV 23.05.2012, genehmigt 06.01.2014 /
18.02.2015, Teil B «Massvorschriften» Ziff. 2.1 — `oerebdocs.zh.ch/getDoc?docid=1184`.
**JANS-Bezug: Healthcare-Fall Emilienheim.** Kennziffer: **Baumassenziffer (BMZ, m³/m²)**.

| Zone | BMZ Hauptgeb. | Vollgeschosse | Gebäudehöhe max. | Gesamtlänge max. | BMZ bes. Geb. |
|---|---|---|---|---|---|
| W1 | 1.40 | 1 | 4.80 m | 24.00 m | 0.20 |
| W2A | 1.60 | 2 | 8.10 m | 24.00 m | 0.30 |
| W2B | 1.80 | 2 | 8.10 m | 32.00 m | 0.30 |
| W3A | 2.00 | 3 | 11.40 m | 40.00 m | 0.40 |
| W3B | 2.50 | 3 | 11.40 m | 40.00 m | 0.40 |
| WG2 | 1.90 | 2 | 8.10 m | 32.00 m | 0.30 (ES III) |
| WG3 | 2.60 | 3 | 11.40 m | 40.00 m | 0.40 (ES III) |

Anrechenbare Dachgeschosse max. 2 (Schrägdach) / 1 (Flachdach), anrechenbares UG max. 1;
Grundabstand 5–6 m. Zuschlag bis max. 0.2 m³/m² zur BMZ Hauptgebäude für Pflichtabstellplätze
im Hauptgebäude über gewachsenem Terrain (Ziff. 2.2).

## Horgen (ZH, PLZ 8810) — Baumassenziffer (Zonencode = BMZ)

Quelle: BZO Horgen, Gesamtrevision GV 15.09.2011, genehmigt 05.07.2016, jüngste Teilrevision
09.12.2021 (genehmigt 05.06.2023), Ziff. 5.1 Grundmasse — `oerebdocs.zh.ch/getDoc?docid=1101`.
Kennziffer: **BMZ Hauptgebäude** (die Zonenbezeichnung codiert die BMZ direkt, z.B. W2.5 =
BMZ 2.5). **Alte Messweise** (PBG/ABV/BBV, NICHT IVHB); keine Vollgeschosszahl (Aufteilung
auf Dach-/Unter-/Vollgeschosse innerhalb der Höhe frei, Ziff. 5.1.1).

| Zone | BMZ | Gebäudehöhe max. | Firsthöhe max. | Gesamtlänge max. | Grundabstand kl./gr. |
|---|---|---|---|---|---|
| W1.2 | 1.2 | 7.5 m | 7.0 m | 25.0 m (30 bei GH ≤ 7.5) | 4.0 / 8.0 m |
| W1.6 | 1.6 | 7.5 m | 7.0 m | 25.0 m | 4.0 / 8.0 m |
| W1.9 | 1.9 | 10.5 m | 7.0 m | 30.0 m | 4.0 / 10.0 m |
| W2.5 | 2.5 | 10.5 m | 7.0 m | 30.0 m | 4.0 / 10.0 m |
| W2.7 | 2.7 | 13.5 m | 7.0 m | 40.0 m | 5.0 / 12.0 m |
| W3.3 | 3.3 | 16.5 m | 7.0 m | 50.0 m | 5.0 / 15.0 m |
| WG1.6 | 1.6 | 7.5 m | 7.0 m | 30.0 m | 4.0 / 8.0 m |
| WG2.5 | 2.5 | 10.5 m | 7.0 m | 40.0 m | 4.0 / 10.0 m |
| WG4.8 | 4.8 | Gesamthöhe 24.5 m | — | — | 4.0 / 10.0 m |

WG-Zonen: Baumassenzifferzuschlag ¼ der Grundausnützung für dauernd gewerblich genutzte
Teile (Ziff. 5.5.3), Gewerbeanteil min. 15 % (WG4.8).

## Küsnacht (ZH, PLZ 8700) — Baumassenziffer (Goldküste, vgl. Zollikon)

Quelle: BZO Küsnacht, Stand Juli 2019, Art. 1 (Zoneneinteilung/BMZ), Art. 19 (Grundmasse) +
Art. 19b (Sonderbauvorschriften) — `kuesnacht.ch/.../700.1_Bau-_und_Zonenordnung.pdf`.
Kennziffer: **BMZ (m³/m²)**; die W2 ist allein über die BMZ-Stufe (7 Stufen) differenziert.

| Zone | BMZ | Vollgeschosse | Gebäudehöhe | Firsthöhe | Gebäudelänge |
|---|---|---|---|---|---|
| W2 | 1.00 | 2 | 7.5 m (2 VG + DG) / 8.1 m (2 VG + UG) | 4.5 m | 25.0 m |
| W2 | 1.15 | 2 | 7.5 / 8.1 m | 4.5 m | 25.0 m |
| W2 | 1.20 | 2 | 7.5 / 8.1 m | 4.5 m | 25.0 m |
| W2 | 1.30 | 2 | 7.5 / 8.1 m | 4.5 m | 25.0 m |
| W2 | 1.40 | 2 | 7.5 / 8.1 m | 5.0 m | 25.0 m |
| W2 | 1.50 | 2 | 7.5 / 8.1 m | 5.0 m | 25.0 m |
| W2 | 1.75 | 2 | 7.5 / 8.1 m | 5.0 m | 25.0 m |
| WG2 | 2.30 | 2 | 10.5 m | 5.0 m | 25.0 m |
| W3 | 2.40 | 3 | 10.5 m | 6.0 m | 30.0 m |
| W3 | 2.75 | 3 | 10.5 m | 6.0 m | 30.0 m |
| WG3 | 2.75 | 3 | 10.5 m | 6.0 m | 40.0 m |
| W4 | 3.80 | 4 | 13.5 m | 6.0 m | 40.0 m |
| W4 | ohne BMZ (oB) | 4 | 13.5 m | 6.0 m | 40.0 m |

BMZ besondere Gebäude 0.20 (bis 1'000 m² 0.20, darüber 0.10); bei beidseitig geneigtem
Schrägdach BMZ Hauptgebäude +0.10 (Art. 19 Abs. 5); Grundgrenzabstand 5–7 m. W4 «oB»: in
bezeichneten Gebieten gilt keine Baumassenziffer (Art. 19 Abs. 2).

## Meilen (ZH, PLZ 8706) — Baumassenziffer (BZO 2020, in Kraft 01.05.2025, IVHB)

Quelle: BZO Meilen, Revision Nutzungsplanung, GV 17.09.2020, **in Kraft seit 01.05.2025**,
Art. 2 (Zonen/BMZ), Art. 28 (Grundmasse), Art. 30 (Wohnzone mit Gewerbeanteil) —
`meilen.ch/_docn/2708348`. Kennziffer: **BMZ**; keine Vollgeschosszahl (IVHB, Fassadenhöhe
traufseitig gemessen).

| Zone | BMZ | Fassadenhöhe trauf max. | Gesamtlänge max. | ES |
|---|---|---|---|---|
| W 1.0 | 1.0 | 7.5 m | 20 m | II |
| W 1.4 | 1.4 | 7.5 m | 30 m | II |
| W 1.8 | 1.8 | 7.5 m | 30 m | II |
| W 2.2 | 2.2 | 10.5 m | 30 m (50 in bez. Gebieten) | II |
| W 2.4 | 2.4 | 10.5 m | 30 / 50 m | II |
| W 2.6 | 2.6 | 13.5 m | 50 m | II |
| WG 1.4 | 1.4 | 8.1 m | — | III |
| WG 2.2 | 2.2 | 11.4 m | wie W 2.2 | III |
| WG 2.4 | 2.4 | 11.4 m | — | III |
| WG 2.8 | 2.8 | 14.7 m | 50 m | III |

Zuschläge Fassadenhöhe (Art. 28 Abs. 2): Attika +3.3 m (= zugleich Gesamthöhe), Schrägdach
+5 m giebelseitig; Dachneigung Schrägdächer 15–45°. WG: erhöhte Fassadenhöhe wegen
Gewerbeanteil; BMZ für dauernd gewerblich genutzte Bauten erhöhbar (Art. 30 Abs. 2).

## Adliswil (ZH, PLZ 8134) — Ausnützungsziffer (Alt-BZO 1995, Stand Juni 2024)

Quelle: BZO Stadt Adliswil, festgesetzt 05.04.1995, genehmigt RR 04.10.1995, konsolidierte
Fassung **Stand Juni 2024**, Art. 28 (Wohnzonen), Art. 25 (Zentrumszonen), Art. 24
(Quartiererhaltungszonen), Art. 19 (Kernzone Ober-Leimbach) — `adliswil.ch/_docn/51379`.
**JANS-Bezug: Zimmerberg, Nachbar Langnau am Albis.** Kennziffer: **AZ** (Alt-BZO, nicht IVHB);
Kernzone Ober-Leimbach abweichend **ÜZ**.

| Zone | AZ | Vollgeschosse | Gebäudehöhe max. | Firsthöhe max. | ES |
|---|---|---|---|---|---|
| W2 | 30 % | 2 (+1 DG) | 7 m | 4 m | II |
| W3 | 50 % | 3 | 9 m | 3 m | II |
| W4 | 70 % | 4 | 12 m | 3 m | II |
| WG | 70 % | 4 (+1 DG) | 14 m | 4 m | III |
| ZW (Zentrum West) | 110 % | 5 (+1 DG) | 16 m | 4 m | III |
| ZO (Zentrum Ost) | 85 % | 4 (+1 DG) | 14 m | 4 m | III |
| ZQ (Zentrum Quartier) | 100 % | 5 | 16 m | — (kein First) | III |
| K Ober-Leimbach | 20 % ÜZ (25 % inkl. bes. Geb.) | 3 (+2 DG) | 8.5 m | — | — |

Quartiererhaltungszonen QE Büni (2 VG, GH 6 m) und QE Grundstrasse (3 VG, GH 9 m) ohne AZ —
Dichte über Vollgeschosse/Höhe/Gebäudemasse. Grundabstand W2/W3 klein 5 / gross 9 m, W4/WG
6 / 10 m. Adliswil hat mit ZW 110 % / 5 VG spürbar höhere Dichten als die Zürichsee-
Wohngemeinden — Vorortsstadt-Charakter am Sihltal.

## Richterswil (ZH, PLZ 8805) — Ausnützungsziffer (Zonencode = AZ)

Quelle: BZO Richterswil, erlassen 02./04.10.1984 mit Änderungen bis 08.09.2022, genehmigt
Baudirektion 31.05.2023, **Stand 18.08.2023**, Art. 3 Grundmasse — `richterswil.ch/_doc/4649779`.
Kennziffer: **AZ** (Zonencode codiert AZ-Grundwert, z.B. W3/50 = AZ 50 %). Nur W2/W3, keine
W1/W4.

| Zone | AZ | Vollgeschosse | Fassadenhöhe trauf max. | giebelseitig / Flachdach | Gebäudelänge |
|---|---|---|---|---|---|
| W2/30 | 30 % | 2 (+1 DG/Attika) | 7.5 m | +5.0 m Schrägdach / +3.3 m Attika / +1.0 m Flachdach | 30.0 m |
| WG2/30 | 30 % | 2 (+1 DG/Attika) | 7.5 m | wie W2/30 | 30.0 m |
| W3/50 | 50 % | 3 (+1 DG/Attika) | 10.5 m | +5.0 m / +3.3 m / +1.0 m | — |
| WG3/60 | 60 % | 3 (+1 DG/Attika) | 10.5 m | wie W3/50 | — |

AZ-Boni: Arealüberbauung +5 %; nachhaltige Siedlungserneuerung +17 % (W3) / +20 % (WG3,
Art. 9a); Arealüberbauung mit preisgünstigem Wohnungsbau +10 % (Art. 34). Anrechenbare UG
max. 1; Grundabstand W2 4.0 / 8.0 m. Hanglagen-Zuschlag ab 15 % Hangneigung (talseitige
Fassadenhöhe erhöht, Fussnote 2) — relevant am Zürichsee-Hang.

## Offen / nächste Schritte

- **Langnau am Albis** — Wiedervorlage, sobald die BZO 2026/27 rechtskräftig ist (Run 26:
  Zeitplan bestätigt, kein neues Datum).
- **Luzern** — Per-Ordnungsnummer-Werte (ÜZ/Gesamthöhe) aus der Zonenplan-Legende, falls
  für einen konkreten Standort gebraucht.
- **Zollikon** — Wiedervorlage, sobald die am 20.08.2025 vom Gemeinderat beschlossene
  Teilrevision von der Gemeindeversammlung verabschiedet und in Kraft ist (Run 26: aktuell
  gültiger Stand 5.4.2013 bestätigt materiell identisch mit 1996, Zentrumszone ergänzt).
- **Muri AG** — ✓ Run 26 geschlossen: Revision 2018/2019 vollständig erfasst (Bild-PDF
  visuell gelesen), neue Zone W3+ (AZ 0.8) + generelle AZ-Erhöhung dokumentiert.
- **Run 27 (2026-07-13):** 8 weitere JANS-Bezugsmärkte ergänzt — Niederhasli (CS-Fall),
  Oberrieden (Studio-Markt), Kilchberg (Emilienheim/Healthcare), Horgen, Küsnacht, Meilen
  (Goldküste/Zimmerberg), Adliswil, Richterswil. Zwei materielle Befunde: (a) **Oberrieden-
  Höhenkorrektur** — amtlich 8.5 m traufseitig (nicht 9.0 m; 9.0 m ist die Flachdach-
  Fassadenhöhe); korrigiert eine Altannahme aus Rule 260624. (b) **Niederhasli** (IVHB-BZO
  2024) führt die **vierte Steuerungslogik** ein: Wohnzonen ohne Kennziffer, reine
  Hüllensteuerung. Übrige Goldküsten-/Zimmerberg-Gemeinden bestätigen das BMZ-Muster
  (Kilchberg/Horgen/Küsnacht/Meilen wie Zollikon), Adliswil/Richterswil das AZ-Muster.
- Damit deckt D6 nun **19 Gemeinden** ab: 16 mit vollständiger, aktueller Dichte-Tabelle
  (9 AZ, 6 BMZ, 1 keine-Kennziffer/Hülle), 1 System-Beschrieb (Luzern, ÜZ), 1 mit
  Status-Vorbehalt (Langnau ausser Kraft, Revision hängig). Alle 10 UBS-FS-Gemeinden plus
  alle Gemeinden mit realem JANS-Bewertungsfall sind erfasst.
- **Nächste Kandidaten** (falls der Intensiv-Takt weiterläuft): weitere JANS-Studien-
  Gemeinden nach Bedarf; sonst fällt die KB in den Marktpuls-/Bewertungsfall-Beobachtungs-
  modus zurück (Rücktaktung ins Nachtfenster erneut sinnvoll).
