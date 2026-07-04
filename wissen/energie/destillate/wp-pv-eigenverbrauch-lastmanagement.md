---
quelle: «Wärmepumpen, Photovoltaik und Elektromobilität — Planungsgrundlagen für Wohnbauten (EFH und MFH)»
herausgeber: EnergieSchweiz / Bundesamt für Energie BFE (Autor Prof. Dr. David Zogg, FHNW; Co-Autoren BFE, FWS, Swissolar, Swiss-E-Mobility, SmartGridready, Hubacher Engineering)
ausgabe: Version 2.0, 02.07.2023 (mit Elektromobilität ergänzt; V1.0 01.10.2021)
gelesen: 2026-07-04 (S. 1-16 vollst.: Einführung, Grundlagen Eigenverbrauchsoptimierung, Speicher-/Regelungspotenzial, Speicherbewirtschaftung WP; E-Mob/Schnittstellen-Detail/Praxisbeispiele S. 17-76 nur überflogen)
datenstand: 2023 (Basis Forschungsprojekt OPTEG 2016, >50 reale Installationen 2016–2021); SIA 2063 (Energie-/Lastmanagement) in Vorbereitung
status: established
last_updated: 2026-07-04
---

# WP + PV — Eigenverbrauchsoptimierung & Lastmanagement (EnergieSchweiz/Zogg 2023)

**Das Wichtigste in 1 Satz:** Eine Waermepumpe ist der beste Partner der eigenen PV-Anlage, weil sie den
Solarueberschuss **thermisch speichern** kann (Warmwasser, Pufferspeicher, Gebaeudemasse) — mit einem
Energiemanagement-System (EMS) und intelligenter Regelung laesst sich der **solare Deckungsgrad der
Waermepumpe in der Praxis ~verdoppeln** (Sommer-Warmwasser bis 100 % aus PV), waehrend eine teure
Batterie fuer den Winter-Netzbezug kaum etwas bringt.

## Warum die WP so gut zur PV passt
- **Thermische Speicherung statt Batterie:** Bei PV-Ueberschuss faehrt das EMS die WP gezielt hoch und
  laedt Warmwasser-/Pufferspeicher **ueberhoeht** oder nutzt die **Gebaeudemasse** (Betondecken) als
  Speicher. Sommer: Warmwasser **zu 100 % aus PV**; Uebergangszeit (Fruehling/Herbst): Heizen an die
  PV-Produktion abgestimmt; **Winter: praktisch der gesamte Solarertrag geht in die WP.**
- **Voraussetzung Nr. 1: eine richtig dimensionierte, gut eingeregelte WP** (Heizkurve aufs Gebaeude,
  hydraulischer Abgleich). Erst das im ersten Betriebsjahr **ohne** PV-Optimierung einregulieren, **dann**
  optimieren. WP-Qualitaetsvorgaben nach WPSM; offene Schnittstellen brauchen keine Einzelfreigabe mehr
  (Merkblatt WPSM-PV 2022).

## Basis ist ein Energiemanagement-System (EMS) mit offenen Schnittstellen
- Das EMS ist meist ein **physisches Geraet vor Ort**, das Verbraucher (WP, Boiler, E-Auto-Ladestation,
  Haushaltgeraete) **PV-optimiert koordiniert** und zugleich das **Monitoring** liefert («Cockpit» des
  Gebaeudes). Entscheidend: **offene Schnittstellen** (Standard **SmartGridready [SGr]**), damit Geraete
  verschiedener Hersteller eingebunden werden koennen.
- **Warnung vor proprietaeren Teil-Loesungen:** WP-Wechselrichter-Kombinationen, «smarte» Elektroeinsaetze
  oder Batteriesysteme mit Schaltfunktion regeln **nur eine Komponente** und binden an einen Hersteller.
  «Smarte» Elektroeinsaetze **verbraten** den Ueberschuss sogar (Strom → Widerstandswaerme, statt das
  effiziente Warmwasser-Ladefenster der WP auf den Nachmittag zu legen) → **reduzieren die Wirtschaftlichkeit**.

## Kennzahlen (Definitionen aus der Quelle)
| Kennzahl | Formel | Aussage |
|---|---|---|
| **Eigenverbrauchsgrad** R_eig | E_eig / E_prod = (E_ges − E_netz)/E_prod | Anteil der PV-Produktion, der selbst genutzt wird (Hauptfokus der Optimierung) |
| **Autarkiegrad** R_aut | E_eig / E_ges | Unabhaengigkeit vom Netz (100 % mit vertretbarem Aufwand nicht moeglich) |
| **Solarer Deckungsgrad WP** R_sol,WP | E_eig,WP / E_WP | Mass fuer die PV-Optimierung der WP |
| **JAZ** WP | (Q_WW + Q_Heiz)/E_WP | Effizienz — sinkt mit hoher WW-/Heiz-Temperatur |

**Kernwarnung der Quelle:** Von einer **einseitigen Maximierung des Eigenverbrauchsgrads ist dringend
abzuraten** — sonst resultieren ineffiziente Systeme (Ueberschuss in ineffizienten Elektroeinsatz).
Immer **alle** Kennzahlen betrachten; **die WP steigert alle** (auch die Effizienz), speziell im Winter.

## Wie stark hebt die Regeltechnik den solaren Deckungsgrad? (Bestwerte aus der Praxis)
«Natuerlicher» Deckungsgrad ohne Optimierung = **Faktor 1**; angegeben ist der **Steigerungsfaktor**:

| Regelstrategie | Deckungsgrad **Heizen** | Deckungsgrad **Warmwasser** | Schnittstelle |
|---|---|---|---|
| Keine Optimierung | 1 | 1 | — |
| **Manuell** (Heizen + WW auf den Tag schieben) | 1,1 | **2** | Zeitprogramm |
| **Automatisch, Ueberhoehung Puffer-Speicher** | **1,3** | 2 | EMS + SG-Ready / PV-Eingang |
| **Automatisch, Gebaeudemasse als Speicher** | **2** | 2 | EMS + moderne Schnittstelle (Modbus/SGr) + Raumfuehler |

→ «Mit den intelligenten Optimierungen konnten die solaren Deckungsgrade der Waermepumpen **ca.
verdoppelt** werden» (Faktor 2 beim Heizen). Trinkwarmwasser genuegt in **allen** Faellen die einfache
Methode «Laden auf den Tag».

## Speicher im Vergleich (Tabelle 1 der Quelle)
| Speicher | Kapazitaet | WP-Leistung / Ladeleistung | Zusatzkosten Installation | Ladezyklen |
|---|---|---|---|---|
| **Gebaeudemasse** (Massivbau) | EFH 20–60 kWh th · MFH 150–450 kWh th | EFH-WP 3–5 kW_el · MFH-WP 5–15 kW_el | keine (Gebaeude vorhanden) | beliebig |
| **Warmwasserspeicher** | EFH 10 · MFH 20 kWh thermisch | s. WP | keine (Speicher vorhanden) | beliebig |
| **Batteriespeicher stationaer** | EFH 10 · MFH 20–30 kWh el. | 3–10 / 3–20 kW el. | **ab CHF 10'000 / 20'000** | ab 5'000 Zyklen |
| Batterie E-Auto | 20–100 kWh el. je Fahrzeug | 4–22 kW el. | ab CHF 1'000/Ladestation | ab 5'000 Zyklen |

- **Groesster Speicher ist das Gebaeude selbst** (Massivbau, 3 °C Temperaturhub ≈ 20 kWh je 1 K) — ohne
  Zusatzkosten, beliebig oft ladbar, kein Einfluss auf «Lebensdauer».
- **Ehrliche Batterie-Aussage der Quelle:** Ein **stationaerer Batteriespeicher lohnt sich auch bei den
  heute erhoehten Stromtarifen wirtschaftlich noch nicht**, die Oekobilanz ist schlechter als beim
  thermischen Speicher, und er dient nur der **kurzfristigen Tagespufferung — der Netzbezug im Winter
  laesst sich damit nicht wesentlich reduzieren.** Nutzen v. a. Brechung von Leistungsspitzen (groessere
  Anlagen) und Notstrom (fuer das sehr stabile CH-Netz eigentlich nicht noetig).

## Schnittstellen zur WP (fuer die PV-Steuerung)
1. **SG-Ready** (Standard, potenzialfreier Relaiskontakt) — einfachste PV-Ueberschuss-Steuerung.
2. **PV-Eingang** der WP.
3. **Modbus (TCP)** — feinere Regelung.
4. **SmartGridready** — zukuenftiger, herstelleruebergreifender Standard.
5. **EVU-Sperreingang** — Weg zur **Nachruestung aelterer WP**.

## Bauherren-Transfer
- **PV + Waermepumpe gehoeren zusammen** — die WP ist der grosse, guenstige «Speicher», der den
  Solarstrom in Warmwasser und Heizwaerme umwandelt und so aus einer «nur-Mittags»-Anlage ganzjaehrigen
  Nutzen macht. **Das noetige Bauteil ist nicht die Batterie, sondern das EMS** (mit offenen Schnittstellen).
- **Reihenfolge fuer mehr Eigennutzen** (selbstverbrauchter Strom ist ~2–3× mehr wert als eingespeister):
  (1) **Lasten in die Sonne schieben** (WP-Warmwasser/Heizen am Nachmittag, E-Auto tagsueber) → Eigenverbrauch
  oft von ~30 auf ~50 %; (2) **Gebaeudemasse/Speicher ueberhoehen** per EMS; **(3) erst danach** eine
  Batterie erwaegen — sie rechnet sich meist erst nach den (fast gratis) Steuerungs-Massnahmen und **nicht
  fuer den Winter**.
- **Effizienz vor Eigenverbrauchs-Show:** Nie den Ueberschuss in einen Heizstab «verbraten», nur damit die
  Eigenverbrauchszahl steigt — die JAZ der WP faellt und es wird unwirtschaftlich.
- **Grundvoraussetzung**: WP zuerst korrekt einregulieren (Heizkurve, hydraulischer Abgleich), dann optimieren.

## Offene Punkte
- Konkrete kWh-/CHF-Endergebnisse der 5 Praxisbeispiele (S. 59–75: EFH Remigen, MFH Wettingen/Wetzikon,
  Areal Moeriken, Erlenmatt Ost) noch nicht destilliert.
- E-Mobilitaet (intelligentes Laden EFH/MFH, V2H) und Schnittstellen-Detail (Kap. 6/7) nur ueberflogen.
- Absolute solare Deckungsgrade in % (statt Faktoren) nennt die Quelle nicht generisch — projektgenau via
  Simulation (Polysun, mit hinterlegtem SG-Ready-Regler). Verweis Norm **SIA 2063** (integrales Energie-/
  Lastmanagement) noch in Vorbereitung.

**Backlinks:** Absolut-Ertrag/Eigenverbrauch [[pv-ertrag-eigenverbrauch-praxis]] · JAZ/WP-Systemwahl
[[waermepumpe-systemvergleich]] / [[wpz-buchs-feldmessung-jaz-2016-2019]] · PV-Marktpreise
[[pv-marktzahlen-kosten-ch-2025]] · Speicher/graue Energie [[graue-energie-betriebsenergie]] · Mehrparteien-
Vermarktung [[zev-eigenverbrauch-mfh-her-2025]].
