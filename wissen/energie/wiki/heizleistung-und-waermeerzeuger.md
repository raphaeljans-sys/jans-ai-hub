---
title: Heizleistung & Waermeerzeuger-Dimensionierung
status: established
last_updated: 2026-06-18
sources: [destillate/bfe-waermeerzeugerleistung-2015.md, destillate/sia-380-1-standardnutzungswerte-tab24-25.md, destillate/sia-380-1-heizwaermebedarf-berechnung.md, destillate/wta-formular-zh-waermetechnische-anlagen.md, destillate/waermepumpe-systemvergleich.md]
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
Effizienzkennzahl (COP = Momentanwert im Pruefpunkt). Richtwerte je WP-Typ (Bandbreiten, Stand 2026):

| WP-Typ | JAZ-Richtwert | Bedingung |
|---|---|---|
| Luft-Wasser | ~2,5–3,5 (modern bis 4,0) | guenstigste Investition; Schall/Nachbarschaft (LN-1a/1b) |
| Sole-Wasser (Erdsonde) | ~4,0–4,5 | Bohrung + AWEL-Gesuch; hoehere Foerderung |
| Wasser-Wasser (Grundwasser) | ~5 | nur wo Grundwasser bewilligt nutzbar |

Entscheidungslogik: **Fernwaermenetz da → Fernwaerme** (kein Erzeuger/Unterhalt im Haus); **sonst
Neubau → Luft-Wasser-WP** Standard, bei Budget/Platz **Erdsonden-WP** (hoehere JAZ + Foerderung);
**Grundwasser nutzbar → Wasser-Wasser-WP**; **WP technisch schwierig → Pellets** (η ~90 %, aber
Lagerraum/Feinstaub/Feuerpolizei) oder **erst Huelle daemmen, dann WP**. Im Minergie-Verfahren rechnet
**WPesti** die verbindliche WP-Effizienz. ⚠ JAZ = Richtwerte, projektgenau via WPesti/SIA 384/3;
Foerder-Mindest-JAZ kantonsabhaengig. Details → `[[waermepumpe-systemvergleich]]` / FAQ F6.

## Bezug
- FAQ: `[[BAUHERREN-FAQ]]` F13 (Leistung) + F14 (Ersatzverfahren) + **F6 (Systemwahl ✓)**.
  Quelle: `[[bfe-waermeerzeugerleistung-2015]]`, `[[waermepumpe-systemvergleich]]`.
- Heizwaermebedarf (≠ Leistung): `[[sia-380-1-heizwaermebedarf-berechnung]]`,
  Standardnutzung/Warmwasser `[[sia-380-1-standardnutzungswerte-tab24-25]]`.
- Heizsystem-Wahl/Heizverbot (Entscheid/Bewilligung) → Skill `baurecht`; Foerderung → `[[foerderung-energie-zh]]`.

## Offen
- Projektgenaue WP-JAZ/COP aus CH-Primaerquelle (FWS/WPesti-Defaults), CHF-Amortisationsvergleich,
  WP + PV-Eigenverbrauch (Lastmanagement) — vgl. `[[waermepumpe-systemvergleich]]`.
