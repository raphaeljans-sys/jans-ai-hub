---
title: Heizleistung & Wärmeerzeuger-Dimensionierung
status: established
last_updated: 2026-07-14
sources: [destillate/bfe-wärmeerzeugerleistung-2015.md, destillate/sia-380-1-standardnutzungswerte-tab24-25.md, destillate/sia-380-1-heizwärmebedarf-berechnung.md, destillate/wta-formular-zh-wärmetechnische-anlagen.md, destillate/wärmepumpe-systemvergleich.md, destillate/fawa-jaz-feldanalyse-wärmepumpen.md, destillate/wpz-buchs-feldmessung-jaz-2016-2019.md, destillate/cop-scop-jaz-wärmepumpe-grünenwald.md, destillate/sia-384-3-wpesti-jaz-methode.md, destillate/heizsysteme-vollkostenvergleich-energieschweiz.md, destillate/kältemittel-r290-wärmepumpen-ch.md, destillate/erdwärmesonden-bewilligung-zh-sz.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[u-werte-grenzwerte-ch]], [[wta-formular-zh-waermetechnische-anlagen]]
---

# Heizleistung & Wärmeerzeuger-Dimensionierung

> Wie gross muss die Heizung sein — und warum «so klein wie möglich, so gross wie nötig»?
> Grundlage für FAQ F13 und F6 (Systemwahl).

## Das Wichtigste
Die **Heizleistung [kW]** ist nicht dasselbe wie der **Heizwärmebedarf [MJ/m²·a]**: Leistung =
was am kältesten Tag bereitstehen muss, Bedarf = was übers Jahr zusammenkommt. Aus dem Bedarf
allein lässt sich die Leistung **nicht** genau ableiten — sie wird über die Norm-Heizlast
(Neubau, SIA 384.201) oder den Verbrauch (Sanierung) bestimmt.

## Zwei Wege zur Leistung
- **Sanierung (Verbrauchsmethode):** Φ = (man·GCV/tan)·(ηalt/ηneu)·ηneu.
  Volllaststunden tan: **2300 h** (nur Heizung) bzw. **2700 h** (Heizung + Warmwasser), bis 800 m;
  darüber +300 h. Gilt nur für **gleichartigen** Ersatz.
- **Neubau (Norm-Heizlast):** Φ = ΦHeizlast + ΦWarmwasser + Φverbundene Systeme.
  Warmwasser-Zuschlag: **MFH 3 / EFH 2 / Verwaltung 1 W/m²** EBF.

## Brennwerte (GCV) & Jahresnutzungsgrade
| Energieträger | GCV | ηan neu |
|---|---|---|
| Stückholz Hart-/Weichholz | 2500 / 1800 kWh/rm | 65–75 % |
| Holzschnitzel (W 30 %) | 750–1250 kWh/Srm | 65–75 % |
| Pellets | 5,2–5,5 kWh/kg | 65–75 % |
| Heizöl EL | 10,5 kWh/l | 85–95 % (kond.) |
| Heizgas | 10,4 kWh/m³ | 85–95 % (kond.) |

(Wärmepumpe nicht in der Quelle — WP über Norm-Heizlast/JAZ separat; → F6 offen.)

## Kontrollwert: spezifische Heizleistung (W/m² EBF)
| Gebäudetyp | W/m² |
|---|---|
| Bestand schlecht gedämmt | 50–70 |
| Bestand gut gedämmt | 40–50 |
| Neubau nach Vorschrift | 25–40 |
| Minergie | 20–30 |
| Minergie-P | 8–20 |

## Bauherren-Transfer
- **Faustregel:** Neubau-EFH ~25–40 W/m² → 150 m² ≈ **4–6 kW**. Altbau locker das Doppelte.
- **Nicht 1:1 ersetzen:** alte Kessel waren oft 1,5–2× zu gross; korrekt (knapp) dimensioniert
  läuft die neue Anlage effizienter und hält länger.
- **Hülle zürst:** bessere Dämmung → kleinere Leistung → günstigerer Erzeuger; bei WP zudem
  tiefere Vorlauftemperatur → höhere Jahresarbeitszahl.

## Heizungsersatz im Kt. ZH — Verfahren & Beilagen (Bewilligung)
Der Erzeuger-Ersatz ist meldepflichtig (**Gesuch-/Meldeformular wärmetechnische Anlagen**, beim
Gemeindebauamt). Beilagen je Quelle: **Luft-WP → Lärmschutznachweis LN-1a**; **Erdsonde/Grundwasser
→ AWEL-Gewässerschutzgesuch**; **Fernwärme → Wärmetauscher-Meldung**; **Neubau → immer EN-103**.
Energierecht: **fossil im Neubau verboten (§ 11 Abs. 1 EnerG)**, im Bestand nur mit **EN-LCC-ZH + EN-120**;
neue Heizflächen auf **max. 35 °C Vorlauf** (§ 23 BBV I) — die Bedingung für eine effiziente WP.
Details → `[[wta-formular-zh-waermetechnische-anlagen]]` / FAQ F14. ⚠ seit 1.1.2026 Vollzug über EVEN.

## Heizsystem-Wahl: WP ↔ Fernwärme ↔ Pellets (F6)
Die **Jahresarbeitszahl (JAZ)** = gelieferte Wärme je kWh Strom übers Jahr ist die praxisrelevante
Effizienzkennzahl. Drei Kennzahlen auseinanderhalten: **COP** = einzelner Labor-Prüfpunkt (kein
Maschinenvergleich), **SCOP** = saisonal nach EN 14825, aber mit Klima Strassburg → für CH **~5-7 %
zu hoch**, **JAZ** = im Feld über das Jahr gemessen (→ `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
**Feldbeweis CH — moderne Geräte (WPZ Buchs/EnergieSchweiz, 13 drehzahlvariable Anlagen 2017-2019):**
gemessene JAZ **inkl. Warmwasser** je Vorlauftemperatur — Luft/Wasser **3,5 / 3,1 / 2,8** (Neubau 30 /
Sanierung 40 / Altbau 50 °C), Sole/Wasser **4,9 / 4,6 / 4,3**; SWWP behalten ~**30 %** Vorsprung selbst
ggü. modernen drehzahlvariablen LWWP und bleiben bei Sanierung (JAZ > 4) sehr effizient →
`[[wpz-buchs-feldmessung-jaz-2016-2019]]`. Die ältere **BFE/FAWA** (236 Anlagen, 2004: S/W Ø 3,5 vs.
L/W Ø 2,7, +32 %) liefert die zeitlosen Planungslehren: Sanierung −9 % (Vorlauftemperatur +5 K), Regler
mit Raumtemperatur-Aufschaltung +8 %, technische Speicher ohne JAZ-Nutzen, S/W oft zu gross ausgelegt →
`[[fawa-jaz-feldanalyse-waermepumpen]]`. Richtwerte je WP-Typ (Bandbreiten, Stand 2026):

| WP-Typ | JAZ-Richtwert | Bedingung |
|---|---|---|
| Luft-Wasser | ~2,5–3,5 (modern bis 4,0) | günstigste Investition; Schall/Nachbarschaft (LN-1a/1b) |
| Sole-Wasser (Erdsonde) | ~4,0–4,5 | Bohrung + AWEL-Gesuch; höhere Förderung |
| Wasser-Wasser (Grundwasser) | ~5 | nur wo Grundwasser bewilligt nutzbar |

Entscheidungslogik: **Fernwärmenetz da → Fernwärme** (kein Erzeuger/Unterhalt im Haus); **sonst
Neubau → Luft-Wasser-WP** Standard, bei Budget/Platz **Erdsonden-WP** (höhere JAZ + Förderung);
**Grundwasser nutzbar → Wasser-Wasser-WP**; **WP technisch schwierig → Pellets** (η ~90 %, aber
Lagerraum/Feinstaub/Feuerpolizei) oder **erst Hülle dämmen, dann WP**. Die **verbindliche projektgenaue**
WP-Effizienz rechnet das **kostenlose** Tool **WPesti** (basiert auf **SIA 384/3**, Ausgabe **2021**;
Download endk.ch) aus dem SIA-380/1-Nachweis + WP-Typ + Einbauart — die so bestimmte JAZ liegt bei gut
ausgelegten Anlagen **oft deutlich höher** als die Tabellen-Richtwerte (→ `[[sia-384-3-wpesti-jaz-methode]]`).
⚠ JAZ-Bandbreiten = Richtwerte, projektgenau via WPesti/SIA 384/3:2021; Förder-Mindest-JAZ
kantonsabhängig. Details → `[[waermepumpe-systemvergleich]]` / FAQ F6.

## Kältemittel R290 (Propan) — Regulatorik & Brandschutz (F72)
Die Schweiz stellt die Kältemittel-Regulierung ab **2027** (Einfuhr 1.1./Abgabe 1.7., ChemRRV Anh.
2.10, revidiert 29.10.2025) so um, dass natürliche Kältemittel wie **Propan R290 (GWP 3)** für
neue Wärmepumpen kleiner/mittlerer Leistung faktisch zum Standard werden; synthetische Kältemittel
mit hohem GWP (R410A GWP 2'088, R32 GWP 675) werden gestaffelt eingeschränkt. **Bestandsschutz:**
laufende Anlagen dürfen unverändert weiterbetrieben/nachgefüllt werden. Propan ist als **A3**
(brennbar) klassiert: ab **0,15 kg** Füllmenge pro Kreislauf braucht eine Innenaufstellung
zusätzliche Massnahmen (Belüftung/Gaswarnanlage/belüftetes Gehäuse), ab **1,5 kg** greift die
EKAS-Richtlinie 6517. Aussenaufstellung ist regulatorisch der einfachere Weg (Gefahrenbereich frei
von Öffnungen/Zündquellen halten); Alternative **Hydrosplit** (Kältekreis bleibt aussen, nur
Wasser-Glykol-Kreislauf ins Gebäude). **Effizienz (Run 67):** BAFU/EnergieSchweiz-Kältemittel-Fibel
zeigt für Klimakälte tendenziell **höhere Effizienz von R290 gegenüber R32/R410A** (EER-Vergleich),
belastbare Heizbetrieb-SCOP/JAZ-Zahlen fehlen aber weiterhin. **CHF-Mehrkosten** R290 vs. R32/R410A
bleiben trotz gezielter Nachrecherche unbelegt (nur widersprüchliche Marketing-Quellen). Details →
`[[kaeltemittel-r290-waermepumpen-ch]]`, FAQ **F72**.

## Erdwärmesonden — Bewilligung Kt. ZH/SZ (F71)
Jede Erdsonden-WP braucht eine **gewässerschutzrechtliche Bewilligung**: in ZH via Gemeinde/AWEL
(Bohrtiefe max. 500 m, Grenzabstand 2,5 m, in Grundwasserschutzzonen S1/S2 faktisch ausgeschlossen,
im Gewässerschutzbereich Au bewilligungspflichtig), in SZ über eine kostenlose Vorabklärung beim
Amt für Umwelt und Energie + eBau-Baugesuch. **Gebühr ZH (Run 67 primärquellen-verifiziert):**
keine Pauschale, reine **Aufwandgebühr** (§ 35/§ 69 KGSchV + GebV UR: Zeit-Mitteltarif abzüglich
20 %) mit gesetzlicher **Obergrenze CHF 25'000** pro Einzelfall — für ein EFH-Standardgesuch dürfte
der effektive Betrag deutlich darunter liegen. Details → `[[erdwaermesonden-bewilligung-zh-sz]]`,
FAQ **F71**.

## Bezug
- FAQ: `[[BAUHERREN-FAQ]]` F13 (Leistung) + F14 (Ersatzverfahren) + **F6 (Systemwahl ✓)**.
  Quelle: `[[bfe-waermeerzeugerleistung-2015]]`, `[[waermepumpe-systemvergleich]]`.
- Heizwärmebedarf (≠ Leistung): `[[sia-380-1-heizwaermebedarf-berechnung]]`,
  Standardnutzung/Warmwasser `[[sia-380-1-standardnutzungswerte-tab24-25]]`.
- Heizsystem-Wahl/Heizverbot (Entscheid/Bewilligung) → Skill `baurecht`; Förderung → `[[foerderung-energie-zh]]`.

## Offen
- CH-Primärquelle Feld-JAZ + COP/SCOP/JAZ-Begriff **belegt ✓ 2026-06-27**
  (`[[fawa-jaz-feldanalyse-waermepumpen]]`, `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
- **Methode** WPesti/SIA 384/3:2021 (projektgenaue JAZ, gratis endk.ch) **belegt ✓ 2026-07-02**
  → `[[sia-384-3-wpesti-jaz-methode]]`.
- **Moderne Feld-JAZ (drehzahlvariabel, 2017-2019) belegt ✓ 2026-07-03** → `[[wpz-buchs-feldmessung-jaz-2016-2019]]`
  (löst die «FWS-Feldstatistik nach 2004»-Lücke). **CHF-Amortisations-/Vollkostenvergleich belegt
  ✓ 2026-07-03** (EnergieSchweiz EFH/20 J: WP günstigstes System) → `[[heizsysteme-vollkostenvergleich-energieschweiz]]` / FAQ F30.
- Offen nur noch: **noch aktuellere Feldstatistik** (Anlagen nach 2019), WPesti-Standardwerte,
  WP + PV-Eigenverbrauch (Lastmanagement) — vgl. `[[waermepumpe-systemvergleich]]`.
