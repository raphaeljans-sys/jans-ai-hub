---
title: Minergie-Standards & Eigenstromerzeugung
status: established
last_updated: 2026-06-17
sources: [destillate/minergie-besser-planen-bauen.md, destillate/enfk-en-104-eigenstromerzeugung.md, destillate/enfk-en-102-wärmeschutz-2018.md, destillate/minergie-nachweiskurs-2023-mkz-thge.md, destillate/minergie-fallstudie-maison-climat.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[minergie-nachweiskurs-2023-mkz-thge]], [[graue-energie]]
---

# Minergie-Standards & Eigenstromerzeugung

## Gesetz vs. Label
- **Gesetz (MuKEn 2014 / kant. EnerG):** Minimum. Kt. ZH seit 1.9.2022. Verlangt u.a.
  Eigenstromerzeugung am Neubau (10 W/m² EBF, max. 30 kW) und Heizwärmebedarf nach SIA 380/1.
- **Minergie:** freiwilliges Qualitätslabel **über** dem Gesetz — geprüftes Gesamtergebnis,
  nicht nur Einzelmassnahme.

> **Querbezug KB baurecht (verfahrensrechtliche Wirkung):** Das freiwillige Label hat im
> Bewilligungsverfahren eine konkrete Rechtsfolge — die **Minergie-Vermutung § 4 Abs. 4 BBV I**:
> wird das Minergie-Label zugesichert und erteilt, gelten die energetischen Anforderungen als
> erfüllt (mit Zertifikat entfallen EN-101 bis EN-111, siehe `[[energienachweis-zh]]`).
> Rechtsgrundlage geführt in `wissen/baurecht/wiki/baubewilligungsverfahren`.

## Die drei Standards (+ ECO)
| Standard | Idee | Profil |
|---|---|---|
| **Minergie** | besser als Vorschrift, ohne grossen Mehraufwand | Basis |
| **Minergie-P** | Niedrigstenergie, höchster Komfort | HWB 70 % MuKEn, Blower-Door gemessen |
| **Minergie-A** | Plusenergie, deckt Strombedarf selbst | bedarfsdeckende Eigenproduktion |
| **ECO** (Zusatz) | gesund + ökologisch | mit allen kombinierbar |

## Anforderungen Wohnen MFH (Neubau, Überarbeitung 09/2023)
| Kriterium | Minergie | Minergie-P | Minergie-A |
|---|---|---|---|
| Minergie-Kennzahl | 51 kWh/m² | 46 | 29 |
| Heizwärmebedarf | 90 % MuKEn 2014 | 70 % MuKEn | 90 % MuKEn |
| **THGE Erstellung (graue Energie)** | 11 kg CO₂/m²·a | 11 | 11 |
| Luftdichtheit q_a50 | 1,2 | 0,8 (gemessen) | 0,8 (gemessen) |
Immer: Komfortlüftung, **sommerl. Wärmeschutz auf Wetterdaten 2035**, keine fossilen Brennstoffe,
**Dach voll mit PV** (Neubau ≥ 60 % Dachfläche), Leerrohre E-Mobilität. Detail/Erneuerungswerte →
`[[minergie-besser-planen-bauen]]`.

> **Update 2023 (Neubau):** Kennzahl von 55/50/35 auf **51/46/29** gesenkt; neues Kriterium **THGE in
> der Erstellung** (11 kg MFH, **je Gebäudekategorie** 11–17, Spitäler 17 → `[[graue-energie]]`);
> Heizwärmebedarf **90 % Q_h,li** (Minergie/-A); sommerl. Wärmeschutz auf **Klima 2035, max. 100 h**;
> **Monitoring ab 1'000** statt 2'000 m² EBF; **60 % der Parkplätze elektrifiziert** (SIA 2060 C2);
> Wärmeerzeugung Spitzenlast **ab 80 kW max. 10 % fossil** (2017: max. 30 %). Detail →
> `[[minergie-nachweiskurs-2023-mkz-thge]]`.

## Minergie-Kennzahl (MKZ)
Gesamtenergiebilanz nach **gewichteter Endenergie**, abzüglich anrechenbarer Eigenproduktion:
**MKZ = MKZ_HLK + MKZ_WW + MKZ_Bel + MKZ_Geräte + MKZ_AGT − MKZ_Prod** (Bel + Geräte + AGT =
MKZ_El,Wohnen). Rechenweg je Gewerk: Nutzenergie **: η** (COP/Nutzungsgrad) = Endenergiebedarf,
**× g** (Strom **g = 2,0**) = gewichtete Endenergie. PV anrechenbar: Eigenverbrauch 100 % + 40 % der
Netzeinspeisung.
- **Anforderungswert** = Standardverbrauch (MuKEn 14, SIA 2056) − Abzug Effizienz (je Kategorie) −
  Abzug Eigenproduktion (Flächenpotenzial Dach). **Projektwert** = projektspezifisch (SIA 380/1 +
  WPesti, Lüftung) − real installierte PV (PVopti). Erfüllt wenn **Projektwert ≤ Anforderung**.
- Nachweis über die **Label-Plattform** (`label-plattform.ch`). Formel/Rechengrössen →
  `[[minergie-nachweiskurs-2023-mkz-thge]]`.

## Drei Optimierungsfelder
1. Wärmebedarf ↓ (Dämmung, Luftdichtheit, Solar/Fenster, effiziente Erzeugung).
2. Strombedarf ↓ (A+++-Geräte, LED, effiziente Pumpen/Lüftung).
3. Eigenstromproduktion ↑ (PV-Orientierung, Eigenverbrauch via Lastmanagement/Speicher/E-Mobilität).

## Eigenstromerzeugung (gesetzliche PV-Pflicht)
Neubau: **EBF × 10 W/m², max. 30 kW**. Fläche ~8 m²/kW (kristallin) / 16 m²/kW (Dünnschicht).
Ersatzabgabe kantonsabhängig möglich. Detail/JANS-Beispiel → `[[enfk-en-104-eigenstromerzeugung]]`.

## Andere Labels
GEAK (Klasse ≠ automatisch Minergie), GEAK-Plus (Beratung), SNBS, 2000-Watt-Areal — kombinierbar.

## Datenstand
⚠ **Stand 2026-06-09:** Werte aus Minergie-Überarbeitung **September 2023** (Basis MuKEn 2014).
Reglement/Kennzahlen periodisch revidiert — konkrete Limiten je Gebäudekategorie auf minergie.ch.
MuKEn 2025 (EnDK 08/2025) kantonal noch nicht umgesetzt (ZH, 06/2026).

Siehe auch: `[[u-werte-grenzwerte-ch]]`, Bauherren-FAQ F5 + F10.
