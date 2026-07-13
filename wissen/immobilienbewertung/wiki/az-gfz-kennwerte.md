---
title: Ausnützungsziffer-Kennwerte je Gemeinde/Zone (D6)
status: emerging
last_updated: 2026-07-13
sources: ["Thalwil: Bau- und Zonenordnung vom 18.03.2005 (teilrevidiert), Art. 3 Grundmasse, Synopse-Fassung (habitatmobilite.ch-Spiegel des amtlichen Thalwil-BZO-PDF)", "Wädenswil: Bau- und Zonenordnung (BZO), Art. 3 Grundmasse (ortsplanung.ch, offizieller Spiegel der Stadt Wädenswil)"]
links: [[marktdaten-gemeinden/zh-thalwil-8800]], [[marktdaten-gemeinden/zh-waedenswil-8820]], [[residualwertmethode]], [[realwert-sachwert]], [[wissensluecken]]
---

# Ausnützungsziffer-Kennwerte je Gemeinde/Zone (D6)

Schliesst **D6** (`wissensluecken.md`) teilweise: die kantonalen/gemeindlichen
**Ausnützungsziffern (AZ) je Wohnzone** der JANS-Bezugsmärkte, direkt aus der amtlichen
Bau- und Zonenordnung (BZO) der jeweiligen Gemeinde entnommen. **Methode als Vorlage für
weitere Gemeinden nutzbar:** amtliche BZO-PDF der Gemeinde suchen → `pdftotext -layout`
→ Tabelle "Art. 3 Grundmasse" (Regelbauweise Wohnzonen) extrahieren. Damit ist die in
Run 23 getroffene Einschätzung «Grossrecherche nötig, nicht in einem Trainingslauf zu
leisten» **zu präzisieren**: pro Gemeinde ist es ein einzelner, gut handhabbarer Fetch —
die Grossrecherche liegt nur im Umfang (11+ Gemeinden), nicht in der Methode.

## Wichtiger Hinweis zur Verwendung

Die AZ ist eine **Momentaufnahme** — Gemeinden revidieren ihre BZO periodisch (Zürich:
i.d.R. alle 15-20 Jahre plus Teilrevisionen). Vor Verwendung in einer Bewertung/Studie
**immer den aktuellen Rechtsstand bei der Gemeinde (Bauamt/Ortsplanung) verifizieren** —
insbesondere ob die BZO in der Zwischenzeit revidiert wurde. Die hier erfassten Werte
sind der Stand der zitierten Quelle, kein Echtzeit-Register.

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

## Offen (nächste Gemeinden für D6, gleiche Methode)

Noch nicht erfasst: Langnau am Albis, Zollikon, Maur, Regensdorf, Wald (alle ZH),
Wangen und Einsiedeln (SZ), Muri (AG), Luzern — alle bereits mit Marktdaten-Fact-Sheets
in `marktdaten-gemeinden/` vorhanden, aber ohne AZ-Tabelle. Nächster Trainingslauf kann
hier direkt anschliessen (BZO-PDF der Gemeinde suchen, `Art. 3 Grundmasse`/`Grundmasse`-
Tabelle extrahieren).
