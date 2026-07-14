---
title: Heizleistung & Waermeerzeuger-Dimensionierung
status: established
last_updated: 2026-07-14
sources: [destillate/bfe-waermeerzeugerleistung-2015.md, destillate/sia-380-1-standardnutzungswerte-tab24-25.md, destillate/sia-380-1-heizwaermebedarf-berechnung.md, destillate/wta-formular-zh-waermetechnische-anlagen.md, destillate/waermepumpe-systemvergleich.md, destillate/fawa-jaz-feldanalyse-waermepumpen.md, destillate/wpz-buchs-feldmessung-jaz-2016-2019.md, destillate/cop-scop-jaz-waermepumpe-gruenenwald.md, destillate/sia-384-3-wpesti-jaz-methode.md, destillate/heizsysteme-vollkostenvergleich-energieschweiz.md, destillate/kaeltemittel-r290-waermepumpen-ch.md, destillate/erdwaermesonden-bewilligung-zh-sz.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[u-werte-grenzwerte-ch]], [[wta-formular-zh-waermetechnische-anlagen]]
---

# Heizleistung & Waermeerzeuger-Dimensionierung

> Wie gross muss die Heizung sein — und warum «so klein wie moeglich, so gross wie noetig»?
> Grundlage fuer FAQ F13 und F6 (Systemwahl).

## Das Wichtigste
Die **Heizleistung [kW]** ist nicht dasselbe wie der **Heizwaermebedarf [MJ/m²·a]**: Leistung =
was am kaeltesten Tag bereitstehen muss, Bedarf = was uebers Jahr zusammenkommt. Aus dem Bedarf
allein laesst sich die Leistung **nicht** genau ableiten — sie wird ueber die Norm-Heizlast
(Neubau, SIA 384.201) oder den Verbrauch (Sanierung) bestimmt.

## Zwei Wege zur Leistung
- **Sanierung (Verbrauchsmethode):** Φ = (man·GCV/tan)·(ηalt/ηneu)·ηneu.
  Volllaststunden tan: **2300 h** (nur Heizung) bzw. **2700 h** (Heizung + Warmwasser), bis 800 m;
  darueber +300 h. Gilt nur fuer **gleichartigen** Ersatz.
- **Neubau (Norm-Heizlast):** Φ = ΦHeizlast + ΦWarmwasser + Φverbundene Systeme.
  Warmwasser-Zuschlag: **MFH 3 / EFH 2 / Verwaltung 1 W/m²** EBF.

## Brennwerte (GCV) & Jahresnutzungsgrade
| Energietraeger | GCV | ηan neu |
|---|---|---|
| Stueckholz Hart-/Weichholz | 2500 / 1800 kWh/rm | 65–75 % |
| Holzschnitzel (W 30 %) | 750–1250 kWh/Srm | 65–75 % |
| Pellets | 5,2–5,5 kWh/kg | 65–75 % |
| Heizoel EL | 10,5 kWh/l | 85–95 % (kond.) |
| Heizgas | 10,4 kWh/m³ | 85–95 % (kond.) |

(Waermepumpe nicht in der Quelle — WP ueber Norm-Heizlast/JAZ separat; → F6 offen.)

## Kontrollwert: spezifische Heizleistung (W/m² EBF)
| Gebaeudetyp | W/m² |
|---|---|
| Bestand schlecht gedaemmt | 50–70 |
| Bestand gut gedaemmt | 40–50 |
| Neubau nach Vorschrift | 25–40 |
| Minergie | 20–30 |
| Minergie-P | 8–20 |

## Bauherren-Transfer
- **Faustregel:** Neubau-EFH ~25–40 W/m² → 150 m² ≈ **4–6 kW**. Altbau locker das Doppelte.
- **Nicht 1:1 ersetzen:** alte Kessel waren oft 1,5–2× zu gross; korrekt (knapp) dimensioniert
  laeuft die neue Anlage effizienter und haelt laenger.
- **Huelle zuerst:** bessere Daemmung → kleinere Leistung → guenstigerer Erzeuger; bei WP zudem
  tiefere Vorlauftemperatur → hoehere Jahresarbeitszahl.

## Heizungsersatz im Kt. ZH — Verfahren & Beilagen (Bewilligung)
Der Erzeuger-Ersatz ist meldepflichtig (**Gesuch-/Meldeformular waermetechnische Anlagen**, beim
Gemeindebauamt). Beilagen je Quelle: **Luft-WP → Laermschutznachweis LN-1a**; **Erdsonde/Grundwasser
→ AWEL-Gewaesserschutzgesuch**; **Fernwaerme → Waermetauscher-Meldung**; **Neubau → immer EN-103**.
Energierecht: **fossil im Neubau verboten (§ 10a EnerG)**, im Bestand nur mit **EN-LCC-ZH + EN-120**;
neue Heizflaechen auf **max. 35 °C Vorlauf** (§ 23 BBV I) — die Bedingung fuer eine effiziente WP.
Details → `[[wta-formular-zh-waermetechnische-anlagen]]` / FAQ F14. ⚠ seit 1.1.2026 Vollzug ueber EVEN.

## Heizsystem-Wahl: WP ↔ Fernwaerme ↔ Pellets (F6)
Die **Jahresarbeitszahl (JAZ)** = gelieferte Waerme je kWh Strom uebers Jahr ist die praxisrelevante
Effizienzkennzahl. Drei Kennzahlen auseinanderhalten: **COP** = einzelner Labor-Pruefpunkt (kein
Maschinenvergleich), **SCOP** = saisonal nach EN 14825, aber mit Klima Strassburg → fuer CH **~5-7 %
zu hoch**, **JAZ** = im Feld ueber das Jahr gemessen (→ `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
**Feldbeweis CH — moderne Geraete (WPZ Buchs/EnergieSchweiz, 13 drehzahlvariable Anlagen 2017-2019):**
gemessene JAZ **inkl. Warmwasser** je Vorlauftemperatur — Luft/Wasser **3,5 / 3,1 / 2,8** (Neubau 30 /
Sanierung 40 / Altbau 50 °C), Sole/Wasser **4,9 / 4,6 / 4,3**; SWWP behalten ~**30 %** Vorsprung selbst
ggue. modernen drehzahlvariablen LWWP und bleiben bei Sanierung (JAZ > 4) sehr effizient →
`[[wpz-buchs-feldmessung-jaz-2016-2019]]`. Die aeltere **BFE/FAWA** (236 Anlagen, 2004: S/W Ø 3,5 vs.
L/W Ø 2,7, +32 %) liefert die zeitlosen Planungslehren: Sanierung −9 % (Vorlauftemperatur +5 K), Regler
mit Raumtemperatur-Aufschaltung +8 %, technische Speicher ohne JAZ-Nutzen, S/W oft zu gross ausgelegt →
`[[fawa-jaz-feldanalyse-waermepumpen]]`. Richtwerte je WP-Typ (Bandbreiten, Stand 2026):

| WP-Typ | JAZ-Richtwert | Bedingung |
|---|---|---|
| Luft-Wasser | ~2,5–3,5 (modern bis 4,0) | guenstigste Investition; Schall/Nachbarschaft (LN-1a/1b) |
| Sole-Wasser (Erdsonde) | ~4,0–4,5 | Bohrung + AWEL-Gesuch; hoehere Foerderung |
| Wasser-Wasser (Grundwasser) | ~5 | nur wo Grundwasser bewilligt nutzbar |

Entscheidungslogik: **Fernwaermenetz da → Fernwaerme** (kein Erzeuger/Unterhalt im Haus); **sonst
Neubau → Luft-Wasser-WP** Standard, bei Budget/Platz **Erdsonden-WP** (hoehere JAZ + Foerderung);
**Grundwasser nutzbar → Wasser-Wasser-WP**; **WP technisch schwierig → Pellets** (η ~90 %, aber
Lagerraum/Feinstaub/Feuerpolizei) oder **erst Huelle daemmen, dann WP**. Die **verbindliche projektgenaue**
WP-Effizienz rechnet das **kostenlose** Tool **WPesti** (basiert auf **SIA 384/3**, Ausgabe **2021**;
Download endk.ch) aus dem SIA-380/1-Nachweis + WP-Typ + Einbauart — die so bestimmte JAZ liegt bei gut
ausgelegten Anlagen **oft deutlich hoeher** als die Tabellen-Richtwerte (→ `[[sia-384-3-wpesti-jaz-methode]]`).
⚠ JAZ-Bandbreiten = Richtwerte, projektgenau via WPesti/SIA 384/3:2021; Foerder-Mindest-JAZ
kantonsabhaengig. Details → `[[waermepumpe-systemvergleich]]` / FAQ F6.

## Kaeltemittel R290 (Propan) — Regulatorik & Brandschutz (F72)
Die Schweiz stellt die Kaeltemittel-Regulierung ab **2027** (Einfuhr 1.1./Abgabe 1.7., ChemRRV Anh.
2.10, revidiert 29.10.2025) so um, dass natuerliche Kaeltemittel wie **Propan R290 (GWP 3)** fuer
neue Waermepumpen kleiner/mittlerer Leistung faktisch zum Standard werden; synthetische Kaeltemittel
mit hohem GWP (R410A GWP 2'088, R32 GWP 675) werden gestaffelt eingeschraenkt. **Bestandsschutz:**
laufende Anlagen duerfen unveraendert weiterbetrieben/nachgefuellt werden. Propan ist als **A3**
(brennbar) klassiert: ab **0,15 kg** Fuellmenge pro Kreislauf braucht eine Innenaufstellung
zusaetzliche Massnahmen (Belueftung/Gaswarnanlage/belueftetes Gehaeuse), ab **1,5 kg** greift die
EKAS-Richtlinie 6517. Aussenaufstellung ist regulatorisch der einfachere Weg (Gefahrenbereich frei
von Oeffnungen/Zuendquellen halten). Details → `[[kaeltemittel-r290-waermepumpen-ch]]`, FAQ **F72**.

## Erdwaermesonden — Bewilligung Kt. ZH/SZ (F71)
Jede Erdsonden-WP braucht eine **gewaesserschutzrechtliche Bewilligung**: in ZH via Gemeinde/AWEL
(Bohrtiefe max. 500 m, Grenzabstand 2,5 m, in Grundwasserschutzzonen S1/S2 faktisch ausgeschlossen,
im Gewaesserschutzbereich Au bewilligungspflichtig), in SZ ueber eine kostenlose Vorabklaerung beim
Amt fuer Umwelt und Energie + eBau-Baugesuch. Details → `[[erdwaermesonden-bewilligung-zh-sz]]`,
FAQ **F71**.

## Bezug
- FAQ: `[[BAUHERREN-FAQ]]` F13 (Leistung) + F14 (Ersatzverfahren) + **F6 (Systemwahl ✓)**.
  Quelle: `[[bfe-waermeerzeugerleistung-2015]]`, `[[waermepumpe-systemvergleich]]`.
- Heizwaermebedarf (≠ Leistung): `[[sia-380-1-heizwaermebedarf-berechnung]]`,
  Standardnutzung/Warmwasser `[[sia-380-1-standardnutzungswerte-tab24-25]]`.
- Heizsystem-Wahl/Heizverbot (Entscheid/Bewilligung) → Skill `baurecht`; Foerderung → `[[foerderung-energie-zh]]`.

## Offen
- CH-Primaerquelle Feld-JAZ + COP/SCOP/JAZ-Begriff **belegt ✓ 2026-06-27**
  (`[[fawa-jaz-feldanalyse-waermepumpen]]`, `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
- **Methode** WPesti/SIA 384/3:2021 (projektgenaue JAZ, gratis endk.ch) **belegt ✓ 2026-07-02**
  → `[[sia-384-3-wpesti-jaz-methode]]`.
- **Moderne Feld-JAZ (drehzahlvariabel, 2017-2019) belegt ✓ 2026-07-03** → `[[wpz-buchs-feldmessung-jaz-2016-2019]]`
  (loest die «FWS-Feldstatistik nach 2004»-Luecke). **CHF-Amortisations-/Vollkostenvergleich belegt
  ✓ 2026-07-03** (EnergieSchweiz EFH/20 J: WP guenstigstes System) → `[[heizsysteme-vollkostenvergleich-energieschweiz]]` / FAQ F30.
- Offen nur noch: **noch aktuellere Feldstatistik** (Anlagen nach 2019), WPesti-Standardwerte,
  WP + PV-Eigenverbrauch (Lastmanagement) — vgl. `[[waermepumpe-systemvergleich]]`.
