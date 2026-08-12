---
title: Sommerlicher Wärmeschutz & Hitzeschutz
status: established
last_updated: 2026-07-25
sources: [destillate/minergie-besser-planen-bauen.md, destillate/enfk-en-02-waermeschutz-2013.md, destillate/enfk-en-102-waermeschutz-2018.md, destillate/fassadenbegruenung-hitzeschutz-pv-zielkonflikt.md, destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md, destillate/muken-2025-verabschiedet.md]
links: [[INDEX]], [[BAUHERREN-FAQ]]
---

# Sommerlicher Wärmeschutz & Hitzeschutz

> **Querbezug KB normen (Rechenverfahren/Grenzwerte):** Das konkrete Rechenverfahren und die
> Grenzwerte des sommerlichen Wärmeschutzes nach **SIA 180:2014** (g_tot-Anforderung Ziff. 5.2.4.1,
> Glasanteil-Tabelle 8 Ziff. 5.2.2.3) liegen ziffern-genau im Destillat
> `wissen/normen/destillate/sia-180-2014` — von dort ziehen statt hier nachrechnen.

Mit dem Klimawandel wird der **sommerliche** Wärmeschutz so wichtig wie der winterliche. Ziel: ein
Gebäude, das auch im heisser werdenden Klima ohne (oder mit minimaler) aktiver Kühlung komfortabel
bleibt. Minergie verlangt seit der Überarbeitung 2023 den Nachweis auf Basis **modellierter
Wetterdaten 2035**.

## Die fünf Stellschrauben (in Wirkungsreihenfolge)
1. **Sonnenschutz aussenliegend, beweglich, windfest, gesteuert** — die mit Abstand wirksamste
   Massnahme. Innenliegender Behang stoppt die Hitze kaum (die Wärme ist dann schon im Raum).
   Blend- und Sonnenschutz **nicht in einem Behang** kombinieren.
2. **g-Wert (Verglasung + Beschattung) 0,1–0,15** als Zielwert → 85–90 % der Sonnenwärme bleiben
   draussen. Bei gekühlten Räumen zusätzlich normierte Anforderung an Steuerung + Windfestigkeit.
3. **Speichermasse** (Massivdecken/-wände **oder schwere Faserdämmung**) puffert die Tagesspitze.
   Im Leichtbau/Dachgeschoss übernimmt eine **Naturdämmung mit hoher Speichermasse** (Holzfaser/
   Zellulose, ρ·c ~2× Mineralwolle) diese Rolle → längere Phasenverschiebung (`[[naturdaemmstoffe]]`).
4. **Freecooling / Nachtauskühlung** (öffenbare Fenster, Lüftung) führt die gespeicherte Wärme
   nachts ab. Speichermasse ohne Nachtauskühlung bringt wenig.
5. **Fassadenbegrünung** ergänzt die Beschattung durch Pflanzen: Beschattung der
   Fassadenoberfläche plus Verdunstungskühlung senken die gefühlte Temperatur (PET) in der
   unmittelbaren Umgebung im Schnitt um rund 4,8 °C (Kanton Zürich). Bodengebunden (Kletterpflanzen
   vom Boden) ist gegenüber wandgebunden (Pflanzgefässe an der Wand) beim Kanton Zürich klar
   bevorzugt (Konstruktionsaufwand/Unterhalt/Brandschutz/Wassermanagement). Wichtiger Zielkonflikt:
   dieselbe Fassadenfläche lässt sich nicht gleichzeitig begrünen UND mit PV belegen —
   Flächen-Entscheidung pro Fassadenabschnitt nötig (`[[fassadenbegruenung-hitzeschutz-pv-zielkonflikt]]`).

## Planungs-Hebel
- **Fensterfläche/-orientierung**: grosse Süd- und v.a. Ostwest-Glasflächen ohne wirksame
  Verschattung sind das Hauptrisiko (tiefstehende Sonne, schlecht zu beschatten).
- **g-Wert vs. Tageslicht/solare Gewinne**: Zielkonflikt — im Winter solare Gewinne nutzen, im
  Sommer ausschliessen. Lösung: beweglicher (nicht fixer) Sonnenschutz.
- **Verschattungsfaktor Horizont F_S1** (EN-2): ohne Nachweis 30° (3-/mehrgeschossige Zone oder
  höhere Nachbarn), sonst 20°.

## Vollzug
- **Gesetz (EnFK EN-2, Kap. 8):** g-Wert des Sonnenschutzes nach Stand der Technik; bei gekühlten
  Räumen + Steuerung/Windfestigkeit. Befreit: provisorische Bauten, Umnutzungen ohne neue betroffene
  Räume, Nachweis «kein erhöhter Verbrauch».
- **Minergie (2023):** erhöhte Anforderung auf Basis **Wetterdaten 2035** (klimaangepasst).
- **Nachweisverfahren SIA 180:2014 (Kt. ZH, ziffern-genau):** drei gestufte Verfahren — V1 einfache
  Kennwerte (Dach-U ≤ 0,20, g-Wert Sonnenschutz+Verglasung ≤ 0,10, Raumtiefe ≥ 3,5/7 m,
  Nachtauskühlung ≥ 10 m³/h·m² EBF), V2 Berechnung (g_tot je Orientierung, Ziff. 5.2.4.1: N ≤ 0,20/f_g,
  NO/NW ≤ 0,13/f_g, übrige inkl. O/W ≤ 0,07/f_g), V3 dynamische Simulation (zwingend bei
  Kältemaschine/Ventilatoren) → volle Herleitung, Formularbezug EN-102a/b/EN-110-ZH und Beispielwerte
  in `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]`.
- **MuKEn 2025 Art. 1.9 (Ausblick, Basismodul):** hebt den sommerlichen Wärmeschutz erstmals in
  einen eigenen Gesetzesartikel (bisher nur über Vollzugshilfe EN-102 geregelt); Kernaussage: bei
  Kühlabsicht g-Wert + Windfestigkeit + Steuerung «nach Stand der Technik» (Ausnahme reversible
  Wärmepumpe ohne aktive Kühlabgabe), bei **allen übrigen Räumen inkl. Wohnbauten ohne Kühlung**
  bleibt zumindest der g-Wert-Nachweis Pflicht. ⚠ Empfehlung der EnDK, noch nicht automatisch
  geltendes kantonales Recht (`[[muken-2025-verabschiedet]]`).
- **Kt. Schwyz:** seit 1.5.2022 auf Basis MuKEn 2014, seit 1.1.2026 Einreichung über **EVEN** wie
  Kt. ZH; keine eigene, von der nationalen EN-102-Vollzugshilfe abweichende Wegleitung zum
  sommerlichen Wärmeschutz auffindbar (Negativbefund, Stand Recherche 25.07.2026).

## Bauherren-Take
«Gegen Hitze hilft kein dickeres Glas, sondern **aussen** beschatten, **Masse** speichern, **nachts**
auskühlen — und wo sinnvoll die Fassade begrünen statt/neben PV zu belegen.» Wer das in der
Planung setzt, spart sich Klimaanlage und Betriebskosten — und erfüllt zugleich Minergie. Wer
grosse Glasflächen plant, führt den SIA-180-Nachweis früh (spätestens Vorprojekt) — sobald eine
Kühlmaschine ins Spiel kommt, ändert sich das Nachweisregime komplett (Verfahren 3, Simulation,
zusätzliches Formular).
→ Bauherren-FAQ **F11**, **F67**, **F88**, **F145**.

## Rückkühlwerk/Kühlturm bei aktiver Kühlung (Run 114, 2026-07-25)

Sobald eine Kältemaschine ins Spiel kommt (Healthcare: Spital/Pflegeheim, Kühllast oft
unvermeidbar), stellt sich die Frage Nasskühlturm vs. Trockenkühler vs. Grundwasserkühlung. Ein
offener Nasskühlturm bringt meist den besseren Wirkungsgrad, erzeugt aber ein dauerhaftes
**Legionellen-Betriebsthema**: die BAG/BLV-Empfehlungen Modul 14 verlangen für Verdunstungskühl-
anlagen ≤200 MW (praktisch immer der Fall) periodische Wasserkontrollen nach VDI 2047 Blatt 2,
mit klarer Eingriffsschwelle (Tabelle 14A: ab >10⁴ KBE/l Legionellen droht die Stilllegung).
Trockenkühler sind hygienisch unkritisch, aber im Sommer weniger effizient. Grundwasserkühlung
kann sich energetisch lohnen, braucht in Kt. ZH aber eine AWEL-Konzession (GSchG Art. 29f/GSchV
Art. 32), die die baurechtliche Bewilligung einschliesst. Eine eigenständige Baubewilligungspflicht
für Rückkühlwerke selbst ist bisher nur per Analogieschluss zur Klimaanlagen-Bewilligungspraxis
hergeleitet (offen), ebenso ein quantitativer CH-Beleg zum energetischen Vorteil der Nasskühlung.
→ Bauherren-FAQ **F165**, Destillat `[[ruckkuehlwerk-kuehlturm-legionellen-bewilligung-ch]]`.

## Gebäude mit hohem Glasanteil — die Schwelle (Ergänzung Run 128, 2026-08-12)

Wann der sommerliche Wärmeschutz vom Nachweispunkt zum eigenen Planungsthema wird, hat eine
benennbare Schwelle: Nach **SIA Merkblatt 2021** gilt ein Bau als «Gebäude mit hohem Glasanteil»,
wenn der durchsichtige Glasanteil der Fassadenfläche **> 50 %** beträgt **oder** in einzelnen Räumen
das Verhältnis Glasfläche zu EBF **> 30 %** übersteigt. Die Definition knüpft am Glasanteil an, nicht
an der Konstruktion — auch eine Putz- oder Holzfassade mit sehr grossen Fenstern fällt darunter.

Zwei Mechanismen, die der AHB-Zürich-Katalog für diesen Fall belegt und die neben den fünf
Stellschrauben oben stehen:
- **Winter, nicht nur Sommer:** An hohen, glatten Glasflächen ab ca. 3 m Glashöhe entsteht
  Kaltluftabfall. Wird er statt baulich (Riegelprofil auf ca. 2 m, verstärkte Randheizung, rasch
  reagierendes Wärmeabgabesystem) über eine höhere Raumlufttemperatur kompensiert, kostet das
  **ca. 7 % Mehrverbrauch je °C**.
- **Verantwortungslücke:** Bei Einzelverträgen nach SIA 102/103/108 erfüllt jeder Planer seinen
  Leistungsbeschrieb, während für das übergreifende Problem «zu warm im Sommer» niemand zuständig
  ist. Gegenmittel laut Quelle: Pflichtenheft Gebäudetechnik mit messbaren Kriterien plus
  Gesamtplanervertrag mit Systemgarantie.

⚠ Die Zahlenwerte des Merkblatts (U-Wert Fassade < 0,9 · Glas < 0,7 W/m²K, g-Wert Glas+Sonnenschutz
< 0,1, τᵥ > 0,5, TQ > 3 %) sind **Stand April 2005** und liegen über heutigen Anforderungen; sie
ersetzen keine Rechnung gegen SIA 380/1 und den kantonalen Nachweis. Ob die zitierte Fassung des
SIA-Merkblatts 2021 noch gilt, ist nicht verifiziert (→ Skill `normen`).
→ Bauherren-FAQ **F227**, Destillat `[[glasbauten-hoher-glasanteil-sia2021]]`.

## Offen
- Geltung und aktuelle Fassung des SIA-Merkblatts 2021 (Gebäude mit hohem Glasanteil) nicht
  verifiziert; g-/U-Wert-Empfehlungen daraus stammen aus 2005.
- SIA 180:2014 Figur 13 (Dachflächenfenster/Oberlichter, gtot je Orientierung) liegt nur als
  Grafik vor, nicht als Formel/Zahlentabelle extrahiert.
- Rückkühlwerk-Baubewilligungspflicht selbst amtlich verifizieren (bisher nur Analogieschluss);
  quantitativer COP-Vergleich Nass-/Trockenkühlung für CH-Klima offen (siehe Abschnitt oben).
- Quantitativer Effekt der Fassadenbegrünung auf Kühllast/Heizwärmebedarf (kWh/m²) offen.
- MuKEn-2025-Kommentar zu Art. 1.9 Abs. 2 zitiert SIA 380/2:2022 Ziff. 3.2 für «Kühlung notwendig/
  erwünscht», die Stadt-ZH-/HBA-Praxis zitiert SIA 382/1:2014 — Verhältnis der beiden Normzitate
  zueinander nicht verifiziert.
- Kt.-SZ-Befund ist ein Negativbefund («nichts Eigenes gefunden»), kein positiver Beleg — bei
  realem SZ-Projekt beim Amt für Umwelt und Energie verifizieren.

**Status-Hebung 2026-07-25 (Run 88):** auf `established` gehoben — vier triangulierte Quellen
(EnFK EN-2/EN-102, Minergie-Nachweiskurs, Fassadenbegrünungs-Destillat), alle selbst bereits
established, tragen die Kernaussagen (g-Wert-Zielwert, Fünf-Stellschrauben-Logik, EnFK-EN-2-
Vollzug). Belegdichte höher als bei mehreren bereits established geführten KB-Artikeln. Dritte
Health-Check-Empfehlung (01.07./21.07./25.07.) damit umgesetzt.

Siehe auch: `[[u-werte-grenzwerte-ch]]`, `[[minergie-standards]]`, `[[daemmstoffe-lambda]]`,
`[[naturdaemmstoffe]]` (Holzfaser/Zellulose als Hitzeschutz durch Speichermasse),
`[[fassadenbegruenung-hitzeschutz-pv-zielkonflikt]]` (Begrünung vs. Fassaden-PV).
