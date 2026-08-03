---
title: Bezugsgrössen des Energienachweises — EBF, Gebäudehüllziffer, Dämmperimeter
status: emerging
last_updated: 2026-08-03
sources: [destillate/gebaeudehuellziffer-ebf-flaechendefinition.md, destillate/untergeschosse-daemmen.md, destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md, destillate/minergie-p-a-anwendungshilfe-2019.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[u-werte-grenzwerte-ch]], [[minergie-standards]], [[energienachweis-zh]]
---

# Bezugsgrössen des Energienachweises — EBF, Gebäudehüllziffer, Dämmperimeter

Themenartikel zu den drei Grössen, auf die sich **jeder** Energiekennwert bezieht, bevor über
U-Werte oder Heizsysteme gesprochen wird. Wer sie falsch abgrenzt, rechnet den ganzen Nachweis
auf einer falschen Basis — und merkt es erst bei der Prüfung durch die Behörde.

Angelegt in Run 121 (03.08.2026) aus dem neu erschlossenen PL-02-Korpus. Zuvor waren diese
Grössen in der KB nur verstreut in Einzeldestillaten erwähnt, ohne eigenen Artikel.

## Die drei Grössen im Zusammenhang

| Grösse | Was sie beschreibt | Wozu sie im Nachweis dient |
|---|---|---|
| **Dämmperimeter** | Die lückenlose Linie um alle beheizten Räume, inklusive erdberührter Bauteile | Legt physisch fest, welche Bauteile überhaupt gedämmt und nachgewiesen werden |
| **Energiebezugsfläche EBF (AE)** | Die Summe der beheizten bzw. «üblicherweise beheizten» Geschossflächen | Nenner jedes flächenbezogenen Kennwerts (kWh/m²·a) |
| **Gebäudehüllziffer (Ath/AE)** | Verhältnis wärmeabgebende Hüllfläche zu Energiebezugsfläche | Koppelt den zulässigen Grenzwert an die Gebäudeform |

Die Reihenfolge ist keine Geschmacksfrage: zuerst der Perimeter (welche Räume sind drin), daraus
die EBF (wie viel Fläche zählt), daraus mit der Hüllfläche die Ziffer (wie kompakt ist der Bau).

## Dämmperimeter — die Entwurfsentscheidung, die man später nicht mehr korrigiert

Der Dämmperimeter ist in **Grundriss und Schnitt** einzuzeichnen, nicht nur gedanklich zu führen.
Die Zuordnung jedes Raums folgt drei Kriterien gleichzeitig — Dämmung, EBF-Zugehörigkeit und
Beheizung — die zusammen ein Fünf-Felder-Raster ergeben:

| Feld | Beheizung | Lage | EBF |
|---|---|---|---|
| A | nicht aktiv beheizt, Beheizen aber «sonst üblich» (Treppe, Lift, Korridor, Bastelraum) | innerhalb | zählt |
| B | aktiv beheizt (Wohnen, Schlafen, Küche, Bad) | innerhalb | zählt |
| C/D | nicht aktiv beheizt (Trocken-/Waschraum entfeuchtet, Neben-/Pufferräume, Keller) | innerhalb | zählt nicht |
| E | nicht aktiv beheizt (Trocken-/Waschraum ohne Entfeuchtung, Keller, Garage) | ausserhalb | zählt nicht |

**Feste Zuordnungen** aus dem Ratgeber: Garagen mit Toren liegen zwingend ausserhalb.
Zivilschutzräume liegen in der Regel ausserhalb; eine dortige Dämmung muss innerhalb von
24 Stunden demontierbar sein, sonst gilt der Raum als unbeheizter Kellerraum. Heizungsräume und
Brennstofflager im Zweifel ausserhalb; steht der Kessel innerhalb, muss die Zuluft geführt sein.

**Die Merkregel:** im Zweifel dämmen, aber nicht heizen. Eine Heizung lässt sich nachrüsten, eine
Dämmung im Bestand kaum noch wirtschaftlich. Ein unbeheizter, aber gedämmter Raum erreicht rund
17 °C. Details und die Sonderfälle Wäschetrocknung, Radon und Abdichtung: `[[untergeschosse-daemmen]]`.

## Energiebezugsfläche — was zählt und was nicht

Massgeblich ist die Nutzung, nicht die tatsächliche Beheizung im Betrieb: Zur EBF zählen Räume,
für deren Nutzung ein Beheizen **sonst üblich** ist; nicht dazu zählen Räume, für deren Nutzung
Beheizen nicht notwendig ist. Nicht zur EBF gehören damit Garage, Veloraum, offene Laubengänge
und Dachabstellräume.

**Frühphasen-Faustwert:** Ist erst die Nettogeschossfläche bekannt, liegt die EBF belegt bei
**NGF × 1,10 bis 1,15**. Das ersetzt die spätere raumweise Zuordnung nicht, reicht aber für eine
Grössenordnung in Machbarkeits- und Volumenstudien.

## Gebäudehüllziffer — warum die Kubatur zweimal kostet

Der zulässige Heizwärmebedarf wird nicht absolut gesetzt, sondern über Ath/AE an die Gebäudeform
gekoppelt. Ein verwinkelter Baukörper bekommt deshalb einen **grosszügigeren** Grenzwert
zugestanden — er muss aber real mehr Hüllfläche dämmen und mehr Verlust kompensieren. Der
gestalterische Mehraufwand einer aufwendigen Kubatur schlägt damit doppelt durch: auf BKP 2
(mehr Fassadenfläche) und auf den Energienachweis (mehr Transmissionsverlust), bei gleicher
Nutzfläche.

**Konsequenz für die Projektarbeit:** Ath/AE gehört früh neben die Volumenstudie, nicht erst in
den Nachweis. Vgl. Skill `volumenstudie` und `grobkosten-onepager`.

## Offene Punkte / Vorbehalte

- ⚠ **Klimareferenz-Widerspruch, nicht geglättet:** Die Quelle zur Gebäudeform rechnet mit
  SIA 380/1:2009 (8,5 °C, 8 % pro K); die in der KB geführte aktuelle Basis ist SIA 380/1:2016
  (9,4 °C, 6 % pro K). Vgl. `[[u-werte-grenzwerte-ch]]`.
- ⚠ **Schwache Quelle bei der Flächenhierarchie:** Die SIA-416-Hierarchie GF/NGF/HNF/NNF stammt
  im Destillat aus einem Dokument einer privaten Immobilienfirma, nicht von einer Normstelle.
  Für verbindliche Flächendefinitionen ist SIA 416 selbst zu ziehen (Skill `normen`).
- Die EBF-Abgrenzungsregel («Beheizen sonst üblich») ist über SIA 380/1:**2001** Anhang F belegt;
  ob sie in der geltenden Ausgabe wortgleich steht, ist nicht verifiziert.
- Eine belegte Zahlentabelle «Gebäudehüllziffer → Grenzwertzuschlag» fehlt in der KB noch; die
  Grenzwertformel selbst führt `[[u-werte-grenzwerte-ch]]`.

## Verwandte Artikel

`[[u-werte-grenzwerte-ch]]` (Grenzwerte und Nachweiswege) · `[[energienachweis-zh]]` (Verfahren
ZH/EVEN) · `[[minergie-standards]]` (Minergie-Kennzahl und Gebäudehüllzahl) ·
`[[innendaemmung]]` und `[[daemmstoffe-lambda]]` (Bauteilebene)
