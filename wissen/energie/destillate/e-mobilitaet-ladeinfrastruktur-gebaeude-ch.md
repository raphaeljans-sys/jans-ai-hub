---
quelle: EnergieSchweiz/Swiss eMobility «Ladeinfrastruktur in Mietobjekten» + «Ladeinfrastruktur im Bestandsbau — Rollen und Prozesse» (energieschweiz.ch/laden-punkt.ch); E-Mobilitaets-Kapitel aus Zogg «Waermepumpen, Photovoltaik und Elektromobilitaet» (HK-Gebaeudetechnik 4/24, Ausgabe Juli 2023)
herausgeber: Swiss eMobility mit Unterstuetzung EnergieSchweiz / Bundesamt fuer Energie BFE; Fachartikel Prof. Dr. David Zogg (FHNW / Smart Energy Engineering)
ausgabe: Leitfaden Mietobjekte akt. November 2024 (Faktenblatt April 2025); Leitfaden Bestandsbau September 2025; Zogg-Artikel Juli 2023
gelesen: 2026-07-11 (3 EnergieSchweiz-Werkzeugseiten + Zogg-Artikel S. 52-57 vollst. via Read)
datenstand: 2024/2025 (Leitfaeden); Zogg 2023; Norm SIA 2060 (Merkblatt), NIV SR 734.27
status: established
last_updated: 2026-07-11
---

# Elektromobilitaet — Ladeinfrastruktur am Wohngebaeude (CH)

**Das Wichtigste in 1 Satz:** Beim Vorbereiten eines (Mehrfamilien-)Hauses fuer Elektroautos ist
nicht die einzelne Wallbox der Knackpunkt, sondern die **vorausschauende Grunderschliessung aller
Parkplaetze mit einer intelligenten, ausbaufaehigen Ladeanlage samt dynamischem Lastmanagement** —
so laedt das Auto tagsueber guenstig den eigenen Solarstrom, ohne den Hausanschluss zu ueberlasten.

## Die zentrale Empfehlung: Grunderschliessung statt Einzelplatz
- **Einzelplatzloesung** (eine Wallbox direkt ab Hausanschluss) vs. **intelligente, ausbaufaehige
  Ladeanlage**: Bei der absehbaren Zunahme der E-Mobilitaet ist die **ausbaufaehige Anlage in den
  meisten Faellen vorteilhafter** — Ladeinfrastruktur ist auf **langfristige Nutzung (20+ Jahre)**
  ausgelegt, **Fehlinvestitionen sind zu vermeiden** (Swiss eMobility/EnergieSchweiz).
- **Bauliches Grundprinzip** (Leitfaden Bestandsbau, drei Stufen entlang **SIA-Merkblatt 2060**):
  1. **«Power to Garage» / Grundinstallation** (SIA 2060 Stufe **C1**): Erschliessung ab
     Hauptverteilung inkl. **Messung fuer das Lastmanagement**, Parkplatz-Vorbereitung (z. B.
     Flachbandkabel-Trasse).
  2. **«Power to Parking» / Vorruestung** (Stufe **C2**): Montageplatte bzw. Anschlusspunkt am
     einzelnen Parkplatz.
  3. **«Ready to charge» / Lademoeglichkeit verfuegbar** (Stufe **D**): Ladestation installiert und
     betriebsbereit.
  → In der Praxis lohnt es sich, die **Grundinstallation (Stromversorgung + Datenverbindung) fuer
  ALLE Parkplaetze auf einmal** zu legen; die einzelne Ladestation wird spaeter einfach nachgeruestet
  (Zogg: «Bei MFH wird empfohlen, eine Grundinstallation mit Stromversorgung und Datenverbindung zu
  installieren … Ladestationen koennen dann spaeter einfach nachgeruestet werden»).
- **Neubau:** Einbau einer Ladestation (**oder zumindest deren Grundinstallation**) grundsaetzlich
  empfohlen; Referenz fuer Neubau/Gesamtsanierung ist die **SIA 2060**.

## Dynamisches Lastmanagement — warum es Pflicht wird
- Laden mehrere Autos gleichzeitig, wuerde der **Hausanschluss ueberlastet**. Das **Lastmanagement
  verteilt die verfuegbare Leistung intelligent auf alle Ladepunkte, ohne den Hausanschluss zu
  ueberlasten** (Swiss eMobility).
- **Dynamisch > statisch:** Ein **dynamisches** Lastmanagement misst den momentanen Hausverbrauch
  und gibt den Ladestationen nur die **gerade freie** Leistung — so wird die bestehende
  Hausanschluss-Kapazitaet optimal genutzt und ein teurer Anschluss-Ausbau oft vermieden.
- Zogg: «**ist ein Lastmanagement notwendig, welches die Ladeleistung moeglichst gleichmaessig
  verteilt und Lastspitzen vermeidet**» — gerade im Winter zaehlt die tiefe Netzbelastung.

## Ladeleistung & Technik (Kennwerte)
- **Steckerstandard: Typ 2** (AC). Ladeleistung je Fahrzeug/Station **1,4 – 22 kW** (abhaengig von
  Auto und Ladestation; Zogg, Tabelle 1). Ueblich am MFH: **11 kW** (dreiphasig) je Ladepunkt —
  fuer die naechtliche Vollladung mehr als genug.
- **E-Auto-Batterie: ca. 20 – 100 kWh** je Fahrzeug — grosse elektrische Speicherfaehigkeit, im
  Alltag nur teilweise genutzt.
- **Meist AC-Laden**; zur Steuerung braucht die Ladestation eine **digitale Datenschnittstelle
  (i. d. R. Modbus)** und ist ans **EMS** angebunden (Ladung wird gesperrt/freigegeben).

## Kopplung mit der eigenen PV-Anlage (der eigentliche Bauherren-Nutzen)
- Das E-Auto ist ein **flexibler Tagesverbraucher**: Von **Fruehling bis Herbst kann es bis zu
  100 % aus PV-Strom** geladen werden; im Sommer nimmt es den hohen PV-Ueberschuss sinnvoll auf.
- Reihenfolge des Eigenverbrauchs: Ladung **tagsueber in die Sonne** legen (EMS steuert), bei Bedarf
  **nachts mit tiefer Leistung** im Niedertarif nachladen (Zogg, Abb. 2 «optimiertes Laden»).
- **Investition je Ladestation ab CHF 1'000** (gebaeudeseitig, Zogg Tab. 1) — deutlich guenstiger
  als ein stationaerer Batteriespeicher (ab CHF 10'000 EFH / 20'000 MFH); das E-Auto liefert die
  «Batterie» gratis mit. Das noetige Bauteil ist das **EMS mit offenen Schnittstellen**, nicht eine
  Zusatzbatterie.
- **Zukunft V2H/V2G:** «In naher Zukunft koennen Elektroautos auch zur Pufferung elektrischer
  Energie genutzt werden, welche wieder ins Gebaeude zurueckgespeist wird (**Vehicle to Home**), oder
  gar mithelfen, das Stromnetz zu entlasten (**Vehicle to Grid**)» (Zogg 2023) — heute noch nicht
  Standard, aber bei der Grunderschliessung mitzudenken.

## Prozess, Rollen & Kosten
- **Ablauf nach SIA-Phasenmodell:** Vorstudie → Projektierung/Ausschreibung → Realisierung →
  Bewirtschaftung. **Dauer real 6–9 Monate** (min. 3 Monate) wegen Vorabklaerungen (Hausanschluss,
  Netzbetreiber). Fuer groessere Projekte **Fachbauleitung durch Elektroplaner/versierte
  Elektrofachperson** empfohlen.
- **Beteiligte:** Eigentuemer/Verwaltung, Elektroplaner/-installateur, Lieferant der Ladeloesung,
  Netzbetreiber (EVU); bei WP+PV zusaetzlich der **«Systemintegrator»** (PV-/Elektroplaner mit
  Zusatzausbildung), der alle Gewerke koordiniert.
- **Wer zahlt (Mietobjekt):** Die **Investitionskosten koennen ueber eine Erhoehung der
  Parkplatzmiete gedeckt werden** — die Ladeinfrastruktur wird nicht auf die Wohnungsmiete
  ueberwaelzt (EnergieSchweiz, Leitfaden Mietobjekte).
- **STWEG/Mieter:** eigene Leitfaeden «Ladeinfrastruktur im Stockwerkeigentum» bzw. «in Mietobjekten»
  regeln Zustimmung/Kostentragung (→ Skill `stockwerkeigentum` fuer die STWEG-Beschluesse).
- **Rechtsrahmen Elektrosicherheit:** Niederspannungs-Installationsverordnung **NIV (SR 734.27)**;
  Detail-Technik im Leitfaden «Installation von Ladeinfrastruktur fuer E-Fahrzeuge».

## Praxisbeispiel (Zogg, MFH Wetzikon ZH, Minergie-P-Eco, Neubau 2018)
Vier E-Auto-Ladestationen mit **variabler Ansteuerung und PV-Optimierung**; ein Fahrzeug als
**Car-Sharing** fuer die Bewohner; Einbindung in **ZEV** mit geeichten Privatzaehlern und ins EMS
gekoppelter Abrechnung. Dank Ladestationen + Car-Sharing im Sommer **ueberdurchschnittlich hoher
Eigenverbrauch**; im Winter bleibt Netzbezug massgebend (Effizienz Gebaeude+WP entscheidend).

## Bauherren-Transfer
- **Jetzt die Leitungen legen, spaeter die Wallboxen** — die Grunderschliessung aller Parkplaetze in
  einem Zug ist um ein Vielfaches guenstiger als spaeteres einzelnes Aufstemmen; sie ist der eine
  Punkt, den man beim Neubau/bei der Sanierung **nicht** vergessen darf.
- **Intelligent + ausbaufaehig + dynamisches Lastmanagement** ist die Standardempfehlung — nie eine
  «dumme» Einzel-Wallbox pro Platz, die den Hausanschluss sprengt.
- **PV + E-Auto + WP + EMS gehoeren zusammen:** Das Auto laedt tagsueber gratis-Solarstrom; das EMS
  (nicht die Batterie) ist das Herzstueck.
- **Kosten planbar:** ab CHF 1'000/Ladestation gebaeudeseitig; Refinanzierung im Mietobjekt ueber die
  **Parkplatz**miete.

## Offene Punkte
- **Konkrete CHF/kW-Kosten** der Grunderschliessung je Parkplatz (Leitfaeden nennen keine
  Pauschalen — projekt-/objektabhaengig; Elektroplaner-Offerte).
- **SIA 2060** ist ein kostenpflichtiges Merkblatt — genaue Stufendefinitionen C1/C2/D hier aus dem
  EnergieSchweiz-Leitfaden referiert, nicht aus der Norm selbst.
- **Foerderung** fuer Ladeinfrastruktur: kantonal/kommunal uneinheitlich → standortgenau via
  `[[energiefranken-foerder-suchmaschine-ch]]` pruefen.
- **V2H/V2G** rechtlich/technisch (bidirektionale Wallbox, Netzbetreiber-Zulassung) noch in
  Entwicklung — Stand beobachten.

**Backlinks:** PV-/WP-Eigenverbrauch & EMS [[wp-pv-eigenverbrauch-lastmanagement]] · Mehrparteien-
Vermarktung [[zev-eigenverbrauch-mfh-her-2025]] / [[pv-eigenverbrauch-zev]] · Batterie-Abgrenzung
[[batteriespeicher-heimspeicher-pv-ch]] · Foerderung [[energiefranken-foerder-suchmaschine-ch]] ·
PV-Marktzahlen [[pv-marktzahlen-kosten-ch-2025]].
