---
title: PV-Eigenverbrauch — Solarstrom selbst nutzen (WP-Lastmanagement) & vermarkten (ZEV/vZEV/LEG)
status: established
last_updated: 2026-07-05
sources: [destillate/wp-pv-eigenverbrauch-lastmanagement.md, destillate/zev-eigenverbrauch-mfh-her-2025.md, destillate/zev-mieter-strompreis-eigenverbrauch.md, destillate/leg-lokale-elektrizitätsgemeinschaft-2026.md, destillate/pv-ertrag-eigenverbrauch-praxis.md, destillate/pv-marktzahlen-kosten-ch-2025.md, destillate/pv-einmalvergütung-bund-bfe.md]
links: [[INDEX]] [[BAUHERREN-FAQ]] [[pv-solar-technologien]] [[heizleistung-und-waermeerzeuger]] [[elektromobilitaet-ladeinfrastruktur]] [[batteriespeicher]]
---

# PV-Eigenverbrauch

Nicht der **Ertrag** einer PV-Anlage entscheidet über die Wirtschaftlichkeit, sondern der
**Eigenverbrauch**: selbst genutzter Solarstrom ist ~**2–3× mehr wert** als eingespeister
(Bezugstarif ~20–25 Rp/kWh gegen Einspeisung ~8–10 Rp/kWh), weil er keine Netznutzung/Abgaben
trägt. Zwei Hebel heben ihn — ein **technischer** (den Strom im eigenen Gebäude verbrauchen) und ein
**organisatorischer** (ihn an mehr Verbraucher verkaufen).

## Hebel 1 — technisch: den Strom selbst verbrauchen (WP + Lastmanagement)
- **Die Wärmepumpe ist der grosse «Speicher»:** über ein **Energiemanagement-System (EMS)** fährt sie
  bei PV-Überschuss hoch und speichert die Energie **thermisch** — im Warmwasser-/Pufferspeicher oder in
  der **Gebäudemasse** (Betondecken, EFH 20–60 / MFH 150–450 kWh, gratis). Sommer: Warmwasser bis 100 %
  aus PV. Mit intelligenter Regelung lässt sich der **solare Deckungsgrad der WP ~verdoppeln** (Faktor 2
  beim Heizen mit Gebäudemasse-Nutzung).
- **Reihenfolge:** (1) Lasten in die Sonne schieben (WP-WW/Heizen nachmittags, E-Auto tagsüber) → Eigen-
  verbrauch oft von ~30 auf ~50 %; (2) Speicher/Gebäudemasse per EMS überhöhen; **(3) erst danach**
  Batterie — sie **rechnet sich wirtschaftlich noch nicht**, hat die schlechtere Ökobilanz und **hilft dem
  Winter-Netzbezug nicht** (nur Tagespufferung). Das nötige Bauteil ist das **EMS mit offenen Schnittstellen
  (SmartGridready)**, nicht die Batterie.
- **Effizienz vor Eigenverbrauchs-Show:** nie Überschuss in einen Heizstab «verbraten» — das senkt die JAZ
  und ist unwirtschaftlich. WP-Schnittstellen für die PV-Steuerung: **SG-Ready**, PV-Eingang, Modbus/TCP,
  künftig SmartGridready; Altgeräte über den **EVU-Sperreingang** nachrüstbar.
  → [[wp-pv-eigenverbrauch-lastmanagement]] (EnergieSchweiz/Zogg 2023).

## Hebel 2 — organisatorisch: den Strom vermarkten (ZEV/vZEV im MFH)
- Für **am Ort der Produktion selbst verbrauchten** Strom fallen **keine Netznutzungstarife, kein
  Netzzuschlag, keine SDL/Stromreserve-Abgabe** an (Art. 16 EnG). Im MFH nutzt eine einzelne Partei die
  Mittagsspitze kaum — der **Zusammenschluss zum Eigenverbrauch (ZEV, Art. 17 EnG)** bündelt viele Parteien
  und verkauft ihnen den Solarstrom **direkt** (statt billig einzuspeisen).
- **Neu seit dem Stromgesetz/«Mantelerlass» (1.1.2025): der virtuelle ZEV (vZEV)** — dieselbe Wirkung
  **ohne interne Umverdrahtung**: die bestehenden Zähler werden vom Verteilnetzbetreiber zu **einem
  virtuellen Messpunkt** aggregiert, die Anschlussleitung darf mitgenutzt werden. Das entschärft den
  früheren Hauptaufwand (Steigzonen aufbrechen) — für **Bestandsbauten** der grosse Gewinn.
- **Rollen:** ein **Vertreter** rechnet intern ab und vertritt den ZEV nach aussen (oft ein EVU/Dienstleister).
  Anlagen ≥ 30 kVA brauchen einen separaten Produktionszähler. → [[zev-eigenverbrauch-mfh-her-2025]] (VSE HER-CH 2025).
- **Mieter-Preisregel (konkret):** pro kWh **nie mehr als das externe Standardstromprodukt** — entweder
  **pauschal ≤ 80 %** dieses Tarifs (ohne Kostennachweis; garantierte 20 % Mieter-Ersparnis) oder **effektiv
  nach Gestehungskosten** (reale Kosten minus Einspeiseerlös, gedeckelt aufs Standardprodukt; bei tieferen
  Kosten höchstens die **halbe Ersparnis** zusätzlich). Einrechenbar: PV-Produktionskosten, Messtarife,
  Dienstleistergebühr, Netzstrom 1:1. Mieter haben ein **Wahlrecht** bei ZEV-Gründung + Anfechtungsrecht;
  keine Überwälzung über den Nettomietzins. Berechnung mit dem EnergieSchweiz-Excel (2024-03-11).
  → [[zev-mieter-strompreis-eigenverbrauch]] (EnergieSchweiz-Leitfaden/lokalerstrom.ch, EnV Art. 16).

## Hebel 3 — organisatorisch über die Liegenschaft hinaus: die LEG (ab 1.1.2026)
- Die **Lokale Elektrizitätsgemeinschaft (LEG)** ist das **dritte** neue Instrument (StromVG, Volksentscheid
  9.6.2024, in Kraft **1.1.2026**): Strom wird mit Nachbarn **über das öffentliche Verteilnetz** gehandelt.
- **Netzentgelt-Rabatt 40 %** (keine Transformation) bzw. **20 %** (mit Transformation) — **nur** auf
  Wirkenergie/Wirkleistung/Grundpreis, **nicht** auf SDL/Stromreserve/Netzzuschlag/Gemeindeabgaben/Messtarife.
  Der Vorteil ist damit **kleiner als der ZEV-Vorteil** (dort fallen die Netzkosten für den Eigenverbrauch
  ganz weg), reicht aber **über die eigene Liegenschaft hinaus**.
- **Voraussetzungen:** gleiches Netzgebiet, **gleiche Gemeinde**, gleiche Netzebene (NE5/NE7, ≤ 36 kV),
  **≥ 5 %** Produktionsanteil der Anschlussleistung, Smart Meter. Teilnehmer bleiben **VNB-Kunden** (keine
  Solidarhaftung, anders als im ZEV). vZEV (in der Liegenschaft) und LEG (darüber hinaus) sind **kombinierbar**.
  → [[leg-lokale-elektrizitaetsgemeinschaft-2026]] (EKZ/VSE). Rein rechtlich/tariflich → Skill `baurecht`;
  STWEG-Reglement → Skill `stockwerkeigentum`.
- **Preis-Grössenordnung (⚠ Marktbeispiel, nicht amtlich):** die VSE-Branchenempfehlung selbst lässt die
  Preisbildung **frei**; ein kommerzieller Solar-Ratgeber rechnet beispielhaft mit **12-15 Rp./kWh
  LEG-Gemeinschaftsstrom** vs. **~7 Rp./kWh Referenz-Einspeisevergütung** — plausible Grössenordnung
  fürs Bauherren-Gespräch, projektgenau beim VNB verifizieren → [[leg-lokale-elektrizitaetsgemeinschaft-2026]].
- **Timing verifiziert (13.07.2026, Primärquelle BD LEG – CH 2025 V2 lokal gelesen):** Anmeldeanspruch erst
  ab 1.1.2026, unter der 3-Monats-Frist damit **frühestens per 1.4.2026** aktiv. Speicher lassen sich in
  der LEG **ohne Zusatzzähler** betreiben, solange auf die Rückerstattung des Netznutzungsentgelts für
  Speicher-Rückspeisungen verzichtet wird → [[batteriespeicher-heimspeicher-pv-ch]].

## Kennzahlen (Definitionen)
| Kennzahl | Bedeutung |
|---|---|
| **Eigenverbrauchsgrad** R_eig = E_eig/E_prod | Anteil der PV-Produktion, der selbst genutzt wird |
| **Autarkiegrad** R_aut = E_eig/E_ges | Unabhängigkeit vom Netz (nie 100 %) |
| **Solarer Deckungsgrad WP** R_sol,WP = E_eig,WP/E_WP | PV-Optimierung der Wärmepumpe |

⚠ **Datenstand 2026-07-05:** vZEV/LEG-Regeln sind mit dem Stromgesetz frisch (EnG + EnV Stand 1.1.2025,
LEG ab 1.1.2026) und
altern schnell — konkrete Tarif-/Preisregeln vor Zusagen am aktuellen Stand (VSE / EnergieSchweiz /
Standort-VNB) prüfen. Absolut-Erträge/Eigenverbrauchsquoten → [[pv-ertrag-eigenverbrauch-praxis]];
Marktpreise → [[pv-marktzahlen-kosten-ch-2025]]; Förderung Bund → [[pv-einmalverguetung-bund-bfe]].
