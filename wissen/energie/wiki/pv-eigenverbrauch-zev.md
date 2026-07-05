---
title: PV-Eigenverbrauch — Solarstrom selbst nutzen (WP-Lastmanagement) & vermarkten (ZEV/vZEV/LEG)
status: established
last_updated: 2026-07-05
sources: [destillate/wp-pv-eigenverbrauch-lastmanagement.md, destillate/zev-eigenverbrauch-mfh-her-2025.md, destillate/zev-mieter-strompreis-eigenverbrauch.md, destillate/leg-lokale-elektrizitaetsgemeinschaft-2026.md, destillate/pv-ertrag-eigenverbrauch-praxis.md, destillate/pv-marktzahlen-kosten-ch-2025.md, destillate/pv-einmalverguetung-bund-bfe.md]
links: [[INDEX]] [[BAUHERREN-FAQ]] [[pv-solar-technologien]] [[heizleistung-und-waermeerzeuger]]
---

# PV-Eigenverbrauch

Nicht der **Ertrag** einer PV-Anlage entscheidet ueber die Wirtschaftlichkeit, sondern der
**Eigenverbrauch**: selbst genutzter Solarstrom ist ~**2–3× mehr wert** als eingespeister
(Bezugstarif ~20–25 Rp/kWh gegen Einspeisung ~8–10 Rp/kWh), weil er keine Netznutzung/Abgaben
traegt. Zwei Hebel heben ihn — ein **technischer** (den Strom im eigenen Gebaeude verbrauchen) und ein
**organisatorischer** (ihn an mehr Verbraucher verkaufen).

## Hebel 1 — technisch: den Strom selbst verbrauchen (WP + Lastmanagement)
- **Die Waermepumpe ist der grosse «Speicher»:** ueber ein **Energiemanagement-System (EMS)** faehrt sie
  bei PV-Ueberschuss hoch und speichert die Energie **thermisch** — im Warmwasser-/Pufferspeicher oder in
  der **Gebaeudemasse** (Betondecken, EFH 20–60 / MFH 150–450 kWh, gratis). Sommer: Warmwasser bis 100 %
  aus PV. Mit intelligenter Regelung laesst sich der **solare Deckungsgrad der WP ~verdoppeln** (Faktor 2
  beim Heizen mit Gebaeudemasse-Nutzung).
- **Reihenfolge:** (1) Lasten in die Sonne schieben (WP-WW/Heizen nachmittags, E-Auto tagsueber) → Eigen-
  verbrauch oft von ~30 auf ~50 %; (2) Speicher/Gebaeudemasse per EMS ueberhoehen; **(3) erst danach**
  Batterie — sie **rechnet sich wirtschaftlich noch nicht**, hat die schlechtere Oekobilanz und **hilft dem
  Winter-Netzbezug nicht** (nur Tagespufferung). Das noetige Bauteil ist das **EMS mit offenen Schnittstellen
  (SmartGridready)**, nicht die Batterie.
- **Effizienz vor Eigenverbrauchs-Show:** nie Ueberschuss in einen Heizstab «verbraten» — das senkt die JAZ
  und ist unwirtschaftlich. WP-Schnittstellen fuer die PV-Steuerung: **SG-Ready**, PV-Eingang, Modbus/TCP,
  kuenftig SmartGridready; Altgeraete ueber den **EVU-Sperreingang** nachruestbar.
  → [[wp-pv-eigenverbrauch-lastmanagement]] (EnergieSchweiz/Zogg 2023).

## Hebel 2 — organisatorisch: den Strom vermarkten (ZEV/vZEV im MFH)
- Fuer **am Ort der Produktion selbst verbrauchten** Strom fallen **keine Netznutzungstarife, kein
  Netzzuschlag, keine SDL/Stromreserve-Abgabe** an (Art. 16 EnG). Im MFH nutzt eine einzelne Partei die
  Mittagsspitze kaum — der **Zusammenschluss zum Eigenverbrauch (ZEV, Art. 17 EnG)** buendelt viele Parteien
  und verkauft ihnen den Solarstrom **direkt** (statt billig einzuspeisen).
- **Neu seit dem Stromgesetz/«Mantelerlass» (1.1.2025): der virtuelle ZEV (vZEV)** — dieselbe Wirkung
  **ohne interne Umverdrahtung**: die bestehenden Zaehler werden vom Verteilnetzbetreiber zu **einem
  virtuellen Messpunkt** aggregiert, die Anschlussleitung darf mitgenutzt werden. Das entschaerft den
  frueheren Hauptaufwand (Steigzonen aufbrechen) — fuer **Bestandsbauten** der grosse Gewinn.
- **Rollen:** ein **Vertreter** rechnet intern ab und vertritt den ZEV nach aussen (oft ein EVU/Dienstleister).
  Anlagen ≥ 30 kVA brauchen einen separaten Produktionszaehler. → [[zev-eigenverbrauch-mfh-her-2025]] (VSE HER-CH 2025).
- **Mieter-Preisregel (konkret):** pro kWh **nie mehr als das externe Standardstromprodukt** — entweder
  **pauschal ≤ 80 %** dieses Tarifs (ohne Kostennachweis; garantierte 20 % Mieter-Ersparnis) oder **effektiv
  nach Gestehungskosten** (reale Kosten minus Einspeiseerloes, gedeckelt aufs Standardprodukt; bei tieferen
  Kosten hoechstens die **halbe Ersparnis** zusaetzlich). Einrechenbar: PV-Produktionskosten, Messtarife,
  Dienstleistergebuehr, Netzstrom 1:1. Mieter haben ein **Wahlrecht** bei ZEV-Gruendung + Anfechtungsrecht;
  keine Ueberwaelzung ueber den Nettomietzins. Berechnung mit dem EnergieSchweiz-Excel (2024-03-11).
  → [[zev-mieter-strompreis-eigenverbrauch]] (EnergieSchweiz-Leitfaden/lokalerstrom.ch, EnV Art. 16).

## Hebel 3 — organisatorisch ueber die Liegenschaft hinaus: die LEG (ab 1.1.2026)
- Die **Lokale Elektrizitaetsgemeinschaft (LEG)** ist das **dritte** neue Instrument (StromVG, Volksentscheid
  9.6.2024, in Kraft **1.1.2026**): Strom wird mit Nachbarn **ueber das oeffentliche Verteilnetz** gehandelt.
- **Netzentgelt-Rabatt 40 %** (keine Transformation) bzw. **20 %** (mit Transformation) — **nur** auf
  Wirkenergie/Wirkleistung/Grundpreis, **nicht** auf SDL/Stromreserve/Netzzuschlag/Gemeindeabgaben/Messtarife.
  Der Vorteil ist damit **kleiner als der ZEV-Vorteil** (dort fallen die Netzkosten fuer den Eigenverbrauch
  ganz weg), reicht aber **ueber die eigene Liegenschaft hinaus**.
- **Voraussetzungen:** gleiches Netzgebiet, **gleiche Gemeinde**, gleiche Netzebene (NE5/NE7, ≤ 36 kV),
  **≥ 5 %** Produktionsanteil der Anschlussleistung, Smart Meter. Teilnehmer bleiben **VNB-Kunden** (keine
  Solidarhaftung, anders als im ZEV). vZEV (in der Liegenschaft) und LEG (darueber hinaus) sind **kombinierbar**.
  → [[leg-lokale-elektrizitaetsgemeinschaft-2026]] (EKZ/VSE). Rein rechtlich/tariflich → Skill `baurecht`;
  STWEG-Reglement → Skill `stockwerkeigentum`.

## Kennzahlen (Definitionen)
| Kennzahl | Bedeutung |
|---|---|
| **Eigenverbrauchsgrad** R_eig = E_eig/E_prod | Anteil der PV-Produktion, der selbst genutzt wird |
| **Autarkiegrad** R_aut = E_eig/E_ges | Unabhaengigkeit vom Netz (nie 100 %) |
| **Solarer Deckungsgrad WP** R_sol,WP = E_eig,WP/E_WP | PV-Optimierung der Waermepumpe |

⚠ **Datenstand 2026-07-05:** vZEV/LEG-Regeln sind mit dem Stromgesetz frisch (EnG + EnV Stand 1.1.2025,
LEG ab 1.1.2026) und
altern schnell — konkrete Tarif-/Preisregeln vor Zusagen am aktuellen Stand (VSE / EnergieSchweiz /
Standort-VNB) pruefen. Absolut-Ertraege/Eigenverbrauchsquoten → [[pv-ertrag-eigenverbrauch-praxis]];
Marktpreise → [[pv-marktzahlen-kosten-ch-2025]]; Foerderung Bund → [[pv-einmalverguetung-bund-bfe]].
