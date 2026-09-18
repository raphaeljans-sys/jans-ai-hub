---
quelle: «Wärmepumpen, Photovoltaik und Elektromobilität — Planungsgrundlagen für Wohnbauten (EFH und MFH)»
herausgeber: EnergieSchweiz / Bundesamt für Energie BFE (Autor Prof. Dr. David Zogg, FHNW; Co-Autoren BFE, FWS, Swissolar, Swiss-E-Mobility, SmartGridready, Hubacher Engineering)
ausgabe: Version 2.0, 02.07.2023 (mit Elektromobilität ergänzt; V1.0 01.10.2021)
url: https://pubdb.bfe.admin.ch/de/publication/download/10636
fingerabdruck: SHA-256 0c545bc969115c3388c9bc4e145b2da698dd016c5e429a8cd1cc9064395497d0 (6'893'635 Bytes, 78 Seiten, PDF-CreationDate 10.09.2023), geladen 2026-09-18
gelesen: 2026-07-04 (S. 1-16 vollst.); E-Mobilitaets-Teil ergaenzt 2026-07-11 aus dem Zogg-Fachartikel HK-Gebaeudetechnik 4/24 (S. 52-57 vollst.); **2026-09-18 A-BLIND (Run 207): S. 1-52 vollstaendig am Original gegengelesen (pdftotext -layout, Abbildung 3 als Bild geprueft)**, Kap. 4.2-9.2 neu destilliert; Anhang 10-12 (S. 53-78) nicht gelesen
datenstand: 2023 (Basis Forschungsprojekt OPTEG 2016, >50 reale Installationen 2016–2021); SIA 2063 (Energie-/Lastmanagement) weiterhin **in Vorbereitung** — geprueft 2026-08-24 an der SIA-Publikationsliste Stand 30.07.2026, dort nicht gelistet; Quelle am 2026-09-18 unveraendert V2.0
status: established
last_updated: 2026-09-18 (Run 207, A-BLIND: 2 Berichtigungen, Kap. 5-9 neu, Speicherfaehigkeit je Bauweise)
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
  PV-Produktion abgestimmt; **Winter: praktisch der gesamte Solarertrag geht in die WP.** (S. 9)
- **Voraussetzung Nr. 1: eine richtig dimensionierte, gut eingeregelte WP** (Heizkurve aufs Gebaeude,
  hydraulischer Abgleich). Erst das im ersten Betriebsjahr **ohne** PV-Optimierung einregulieren, **dann**
  optimieren. WP-Qualitaetsvorgaben nach WPSM. **Nachkontrolle:** nach WPSM spaetestens nach drei
  Betriebsjahren, bei PV-Optimierung **spaetestens nach einem Jahr** empfohlen (S. 9; Kap. 8.6 nennt
  fuer den WPSM-Check «2-3 Jahre» und empfiehlt den Check spaetestens nach der ersten Heizsaison).
- **Freigabe (praezisiert 2026-09-18):** Nach Merkblatt WPSM-PV 2022 brauchen nur die **offenen**
  Schnittstellen keine Einzelfreigabe mehr: **EVU-Sperreingang, SG-Ready (bwp) und SmartGridready**.
  Die Einbindung ueber **Modbus** braucht weiterhin eine **Einzelfreigabe** mit Zustimmung des
  WP-Herstellers und ein Steuerungs-/Regelkonzept (S. 35, S. 38).

## Basis ist ein Energiemanagement-System (EMS) mit offenen Schnittstellen
- Das EMS ist meist ein **physisches Geraet vor Ort**, das Verbraucher (WP, Boiler, E-Auto-Ladestation,
  Haushaltgeraete) **PV-optimiert koordiniert** und zugleich das **Monitoring** liefert («Cockpit» des
  Gebaeudes). Entscheidend: **offene Schnittstellen** (Standard **SmartGridready [SGr]**), damit Geraete
  verschiedener Hersteller eingebunden werden koennen. Erfuellt ein EMS diese Standards noch nicht,
  muss es mindestens eine transparente Liste unterstuetzter Hersteller und Geraetetypen bieten (S. 7).
- **Warnung vor proprietaeren Teil-Loesungen:** WP-Wechselrichter-Kombinationen, «smarte» Elektroeinsaetze
  oder Batteriesysteme mit Schaltfunktion regeln **nur eine Komponente** und binden an einen Hersteller.
  «Smarte» Elektroeinsaetze **verbraten** den Ueberschuss sogar (Strom → Widerstandswaerme, statt das
  effiziente Warmwasser-Ladefenster der WP auf den Nachmittag zu legen) → **reduzieren die Wirtschaftlichkeit**.
- **Nie zwei Energiemanager parallel** (S. 19): die Koordination laeuft zentral ueber ein System. Im
  **MFH mit ZEV** ist ein zentraler Energiemanager zwingend, der auch die Wohnungen abrechnet; die internen
  Zaehler muessen dann **geeicht (MID-/METAS-Zulassung, EMmV SR 941.251)** sein, ebenso die Zaehler der
  Ladestationen (S. 20). Mit bestehender Gebaeudeautomation (KNX u. a.) Aufgabenteilung vorgaengig klaeren;
  das EMS schickt dem GA nur uebergeordnete Sollwerte (S. 8).
- Haushaltgeraete werden mitgemessen, aber nicht optimiert: fuer Wasch-/Geschirrspueler lohnt es sich
  kaum, fuer Kochherd/Backofen ist es nicht sinnvoll (S. 20).

## Kennzahlen (Definitionen aus der Quelle, Kap. 2.2)
| Kennzahl | Formel | Aussage |
|---|---|---|
| **Eigenverbrauchsgrad** R_eig | E_eig / E_prod = (E_ges − E_netz)/E_prod | Anteil der PV-Produktion, der selbst genutzt wird (Hauptfokus der Optimierung) |
| **Autarkiegrad** R_aut | E_eig / E_ges | Unabhaengigkeit vom Netz (100 % mit vertretbarem Aufwand nicht moeglich) |
| **Solarer Deckungsgrad WP** R_sol,WP | E_eig,WP / E_WP | Mass fuer die PV-Optimierung der WP |
| **Netzbezug pro Jahr** | E_netz, auch je m² EBF oder je Person | massgebend im Winter |
| **Netto-Stromkosten** K | r_netz/100 · E_netz − r_einsp/100 · E_einsp (CHF) | Einspeisung fliesst negativ ein |
| **Netzaufwandszahl** R_netz | E_netz / (E_HH + Q_WW + Q_Heiz) | braucht Waermezaehler |
| **JAZ** WP | (Q_WW + Q_Heiz)/E_WP, getrennt fuer Heizen und WW moeglich | Effizienz — sinkt mit hoher WW-/Heiz-Temperatur |

**Kernwarnung der Quelle:** Von einer **einseitigen Maximierung des Eigenverbrauchsgrads ist dringend
abzuraten** — sonst resultieren ineffiziente Systeme (Ueberschuss in ineffizienten Elektroeinsatz).
Immer **alle** Kennzahlen betrachten; **die WP steigert alle** (auch die Effizienz), speziell im Winter.

## Wie stark hebt die Regeltechnik den solaren Deckungsgrad? (Abbildung 3, Bestwerte aus der Praxis)
«Natuerlicher» Deckungsgrad ohne Optimierung = **Faktor 1**; angegeben ist der **Steigerungsfaktor**:

| Regelstrategie | Deckungsgrad **Heizen** | Deckungsgrad **Warmwasser** | Schnittstelle |
|---|---|---|---|
| Keine Optimierung | 1 | 1 | — |
| **Manuell** (Heizen + WW auf den Tag schieben) | 1,1 | **2** | Zeitprogramm |
| **Automatisch, Ueberhoehung Puffer-Speicher** | **1,3** | 2 | EMS + SG-Ready / PV-Eingang |
| **Automatisch, Gebaeudemasse als Speicher** | **2** | 2 | EMS + moderne Schnittstelle (Modbus/SGr) + Raumfuehler |

→ «Mit den intelligenten Optimierungen konnten die solaren Deckungsgrade der Waermepumpen **ca.
verdoppelt** werden» (Faktor 2 beim Heizen). Trinkwarmwasser genuegt in **allen** Faellen die einfache
Methode «Laden auf den Tag». Die Bestwerte gelten nur, wenn Energiemanager und WP optimal eingestellt
und aufeinander abgestimmt sind (S. 15). *Am 2026-09-18 an der Grafik S. 15 gegengeprueft: alle acht
Faktoren stimmen.*

## Speicher im Vergleich (Tabelle 1 der Quelle, S. 14)
| Speicher | Kapazitaet | WP-Leistung / Ladeleistung | Zusatzkosten Installation gebaeudeseitig | Ladezyklen |
|---|---|---|---|---|
| **Gebaeudemasse** (Massivbau) | EFH 20–60 kWh th · MFH 150–450 kWh th | EFH-WP 3–5 kW_el · MFH-WP 5–15 kW_el | keine (Gebaeude vorhanden) | beliebig |
| **Warmwasserspeicher** | EFH 10 · MFH 20 kWh thermisch | s. WP | keine (Speicher vorhanden) | beliebig |
| **Batteriespeicher stationaer** | EFH 10 · MFH 20–30 kWh el. | 3–10 / 3–20 kW el. | **ab CHF 10'000 / 20'000** | ab 5'000 Zyklen |
| Batterie E-Auto | 20–100 kWh el. je Fahrzeug | 4–22 kW el. | ab CHF 1'000/Ladestation | ab 5'000 Zyklen |

- **Groesster Speicher ist das Gebaeude selbst:** EFH in Massivbau bis 60 kWh bei 3 °C Anhebung
  (**20 kWh je 1 K**); MFH mit **1'000 m² EBF** 150–450 kWh (S. 13). Ohne Zusatzkosten, beliebig oft
  ladbar, kein Einfluss auf die Lebensdauer.
- ⚠ **Zwei Unschaerfen der Quelle selbst (2026-09-18 festgestellt, nicht aufgeloest):** (1) Die
  E-Auto-Batterie steht auf S. 9 mit «ca. 20 – 80 kWh», auf S. 13 und in Tabelle 1 mit «20...100 kWh».
  Das Destillat fuehrt die Tabellenangabe. (2) «Ab CHF 1'000» meint laut Fliesstext S. 13 die
  **Ladestation exkl. Installation**; die Tabellenspalte ist mit «Zusatzkosten Installation gebaeudeseitig»
  ueberschrieben. Fuer ein Budget also **nicht** als Installationskosten lesen.
- **Ehrliche Batterie-Aussage der Quelle:** Ein **stationaerer Batteriespeicher lohnt sich auch bei den
  heute erhoehten Stromtarifen wirtschaftlich noch nicht**, die Oekobilanz ist schlechter als beim
  thermischen Speicher [SOLBAT 2020], und er dient nur der **kurzfristigen Tagespufferung — der Netzbezug
  im Winter laesst sich damit nicht wesentlich reduzieren.** Nutzen v. a. Brechung von Leistungsspitzen
  (groessere Anlagen) und Notstrom (fuer das sehr stabile CH-Netz eigentlich nicht noetig; Notstrom-Batterien
  muessen stets geladen sein, was im Winter Verluste erzeugt).

## Speicherfaehigkeit des Gebaeudes nach Bauweise (Anhang 9.1, S. 50) — neu 2026-09-18
Die Quelle stuetzt sich auf die Waermekapazitaeten je EBF nach **SIA 380/1, Abschnitt B.9** (Ausgabe dort
nicht genannt):

| Bauweise | Waermekapazitaet je EBF | EFH 140 m², 1 K | EFH 140 m², 3 K | MFH 1'000 m², 1 K | MFH 1'000 m², 3 K |
|---|---|---|---|---|---|
| **schwer** (Stahlbeton, Mauerwerk mit Aussendaemmung) | 0,15 kWh/m²K (540 kJ/m²K) | 21 kWh | 63 kWh | 150 kWh | 450 kWh |
| **mittel** (Holz/Beton-Mischbau) | 0,08 kWh/m²K (288 kJ/m²K) | 11 kWh | 34 kWh | 80 kWh | 240 kWh |
| **leicht** (reiner Holzbau) | 0,03 kWh/m²K (108 kJ/m²K) | 4 kWh | 13 kWh | 30 kWh | 90 kWh |

Zum Vergleich ein technischer Speicher (Wasser 4,19 kJ/kgK): 500 l bei 10 K Anhebung ≈ 6 kWh, 1'000 l
bei 20 K ≈ 23 kWh — «um Groessenordnungen kleiner als beim Gebaeude» (Quelle). Stahl/Glas-Industriebauten
(«sehr leicht») sind nicht tabelliert.

**Eigene Einordnung:** Der reine Holzbau speichert **ein Fuenftel** des Massivbaus. Der Steigerungsfaktor 2
aus «Gebaeudemasse als Speicher» ist deshalb ein **Massivbau-Wert**; im Holzbau bleibt vor allem der
Pufferspeicher-Weg (Faktor ~1,3). Das beruehrt den Heizwaermebedarf kaum (→ FAQ F292), wohl aber das
PV-Eigenverbrauchspotenzial der WP.

## Betriebsweise der Waermepumpe (Kap. 5) — neu 2026-09-18
- **On-off vs. Inverter:** Beide eignen sich; die Inverter-WP folgt der PV-Kurve besser (Sollwert-Schieben
  hebt Drehzahl und Leistungsaufnahme; einzelne Hersteller geben die Verdichterdrehzahl direkt frei,
  Lebensdauer-Grenzen beachten). Fuer diese Ansteuerungen ein **bewaehrtes, auf den WP-Hersteller
  abgestimmtes EMS** waehlen (S. 23).
- **Jahreszeiten:** Optimierungspotenzial ist in der **Uebergangszeit am groessten** (Produktion und
  Verbrauch etwa in Waage), im Sommer am kleinsten (WW braucht nur einen Bruchteil der PV-Energie), im
  Winter bezueglich PV klein, dafuer gross bezueglich **Effizienz** (Heizkurve, Raumtemperaturen,
  Daemmung) (S. 22).
- **Warmwasser auf ein festes Tages-Ladefenster:** nachmittags (vormittags wird geheizt) und nicht ueber
  Mittag (andere Verbraucher); Beispiel der Quelle **13:00–15:00**, lang genug fuer die Solltemperatur
  (S. 24). Moderne WP erreichen die hygienisch geforderten **55 bzw. 60 °C nach SIA 385/1** allein.
- **Elektroeinsatz:** bei moderner WP **keiner**; bei aelterer WP, die die Hygienetemperatur nicht
  erreicht, nur **zeitlich nach** der WP und primaer bei PV-Ueberschuss. **Vor** der WP einschalten ist
  «absolut verboten», weil sonst dauernd elektrisch erwaermt wird. Aeltere WP nach 15–20 Jahren ersetzen
  (WPSM). Ueber 60 °C Verbruehungsschutz noetig, Verkalkung nimmt zu (S. 24-25).
- **Zirkulation:** im EFH ausserhalb der Bedarfszeiten abschalten; im **MFH** Zirkulation/Warmhaltung aus
  hygienischen Gruenden **ohne Unterbruch** betreiben (SIA 385/1) (S. 25).
- **Taganhebung statt Nachtabsenkung** (S. 26-27): Die klassische Nachtabsenkung erzeugt die
  Aufheizphase am Morgen, genau wenn die WP (besonders Luft/Wasser) den **tiefsten COP** hat; sie wird in
  modernen, gut gedaemmten Gebaeuden **generell nicht mehr empfohlen** und soll auch nicht zur
  Eigenverbrauchssteigerung dienen. Auch **nachts ganz abschalten** ist abzuraten (Komfortverlust,
  setzt Ueberdimensionierung voraus). Stattdessen die Heizkurve leicht absenken und tagsueber anheben,
  z. B. **10:00–20:00**; in jedem Standard-WP-Regler programmierbar. Im Niedertarif die Heizkurve **nicht**
  anheben und keine Puffer ueberhoehen.
- **Kuehlung** (S. 28): aktive Kuehlung (Prozessumkehr) braucht viel Energie, nur mit PV-Strom und erst
  nach Beschattung/passiven Massnahmen; Taupunktueberwachung, Deckenkuehlung besser als Fussboden.
  **Passive Kuehlung ueber Erdsonden** («Geo-Cooling») senkt die Raumtemperatur um **2–3 K** und
  regeneriert die Sonden, ist fuer die PV-Optimierung aber uninteressant (nur Umwaelzpumpen).

## Schnittstellen zur WP (Tabelle 4, Kap. 7.1) — berichtigt und erweitert 2026-09-18
| Schnittstelle | Wirkung | Einschraenkung | Einzelfreigabe WPSM? |
|---|---|---|---|
| **EVU-Sperreingang** | in jeder WP vorhanden; Nachruestweg fuer aeltere WP | WP kann nur gesperrt werden, Raumtemperatur-Ueberwachung zwingend | nein |
| **SG-Ready (bwp, 2013)** | 4 Zustaende ueber 2 potenzialfreie Kontakte: 1 Sperrung (1:0) · 2 Freigabe (0:0) · 3 «Wunsch» (0:1) · 4 «Zwang» (1:1); weit verbreitet | **nicht kompatibel mit der in der Schweiz ueblichen EVU-Sperre** → mit dem EVU klaeren; Wirkung nur mit optimalen WP-Einstellungen, Grundeinstellungen reichen meist nicht | nein |
| **PV-Eingang** | 1 Relaiskontakt, 2 Zustaende (Normal / PV-Betrieb); **einfacher mit CH-EVU-Sperre kombinierbar** | nur eine erhoehte Stufe, nicht bei allen Herstellern | — (in Tab. 4 nicht genannt) |
| **Modbus TCP / IP** | variable Sollwerte je Speicher, teils Drehzahl; ermoeglicht **Gebaeude als Speicher** (Thermomanagement mit Raumfuehlern) | herstellerspezifisch («Dialekte»), Kompatibilitaetslisten; **LAN statt WLAN** | **ja** (Zustimmung Hersteller + Regelkonzept) |
| **SmartGridready** | kuenftiger CH-Standard (Verein seit 2019), Stufen 1 Ein/Aus · 2 mehrstufig (= SG-Ready) · 3 statische Kennlinien · 4 dynamische Vorgaben (Sollwerte, Tarife) · 5 Regelung mit Rueckfuehrung · 6 mit Prognose | Stand 2023 noch wenige Geraete; WP **und** EMS brauchen das Label | nein (Label = automatische Freigabe) |

- **Berichtigung:** Die bisherige Fassung nannte SG-Ready die «einfachste PV-Ueberschuss-Steuerung». Die
  Quelle sagt es anders: der **PV-Eingang** ist die einfachere Relais-Ansteuerung (1 Stufe), und die fuer
  Kunde und Installateur **«weitaus einfachste Einbindung»** ist die intelligente Schnittstelle ueber LAN
  (Modbus) (S. 37-38).
- **SG-Ready/PV-Eingang heben nur die technischen Speicher an**, nicht das Gebaeude (die Raumthermostate
  regeln zurueck); die JAZ sinkt dabei leicht. Anhebung nur bei effektivem PV-Ueberschuss, nie mit
  Netzstrom; Zustand 1 (Sperrung) nur mit Raumtemperatur-Ueberwachung; bei der Inbetriebnahme alle vier
  Zustaende durchtesten (S. 36-37).
- **Nachruestloesung EVU-Sperreingang** (S. 40-41): Sperr-Relais EVU und lokal in Serie; oft verzichtet
  das EVU bei PV-Betrieb ganz auf die Sperre. Spuerbare Raumtemperatur-Abnahme je nach Gebaeude schon
  nach **zwei Stunden** Sperrzeit. Weil die Speicher waehrend der Sperre abgesenkt und bei Freigabe
  angehoben werden, ist diese Loesung **effizienter** als die reine Speicherueberhoehung. Nur wenige EMS
  koennen die noetige externe Temperaturueberwachung («Thermomanagement»). → EVU-Sperrzeiten:
  [[waermepumpen-sperrzeiten-netzbetreiber-zh-sz-vertiefung]].
- **Mischventil nach dem Pufferspeicher** ist bei jeder Puffer-Ueberhoehung **zwingend**; es darf nur fuer
  die PV-Ueberhoehung abmischen und muss im Normalbetrieb offen sein (WPSM-PV 2022, S. 16-17).

## Das E-Auto als dritter Eigenverbrauchs-Baustein (Kap. 1.3, 3.1, 4.2, 6 sowie Zogg-Artikel 2023)
- Ergaenzend zur WP eignet sich das **Elektroauto sehr gut zur weiteren Eigenverbrauchs-Optimierung**:
  grosse elektrische Speicherfaehigkeit (siehe ⚠ oben: 20–80 bzw. 20–100 kWh je Fahrzeug), Ladeleistung
  **1,4–22 kW** (Typ 2, je Auto/Ladestation). **Von Fruehling bis Herbst bis zu 100 % aus PV** ladbar; im
  Sommer nimmt es den PV-Ueberschuss sinnvoll auf. Im Winter zaehlt tiefe Netzbelastung → **Lastmanagement**
  verteilt die Ladeleistung gleichmaessig und vermeidet Lastspitzen.
- Ladestation ans **EMS** angebunden (i. d. R. **LAN mit Modbus TCP**; robust, funktioniert auch bei
  Internet-Ausfall), das EMS braucht eine Messung am Netzanschlusspunkt. Cloud-Anbindung braucht eine
  staendige Internetverbindung und eine Rueckfall-Loesung; **OCPP** lohnt sich nur in grossen
  Mehrparteiengebaeuden (Tab. 5, S. 42). Minimaler Ladestrom nach IEC-Norm **6 A** (S. 29).
- **Steuerfunktionen (Tabelle 2):** solares Laden EFH 4–11 kW / MFH 4–22 kW (mit Phasenumschaltung
  1,4–3,7 kW) · **Nacht-Laden im Niedertarif mit 4 kW** (1,4 kW) · sofortiges Laden 11 / 22 kW nur im
  Ausnahmefall. Erweitert: Ladeplan (Reichweite, Abfahrtszeit), Car-Sharing-Buchungsplattform, minimaler
  Ladestand bei bidirektionalen Stationen (Tab. 3).
- **Rechenbeispiele der Quelle:** 100 km/Tag ≈ 20 kWh → 2 kW ueber 10 h genuegen, statt 11 kW beim
  Einstecken; im MFH mit zwei Vielfahrern seriell je 4 kW statt 2 × 22 kW, also **40 kW weniger** Spitze
  ohne Komfortverlust. «Bei MFH braucht es deshalb zwingend ein Lastmanagement» (S. 30-31). Fahrzeuge
  stehen zu mehr als 90 % an einer Steckdose; Pendler 2020 im Mittel 28 km Arbeitsweg, 52 % mit dem Auto
  [PENDMOB 2023] (S. 33-34).
- **MFH-Loesung nach SIA-Merkblatt 2060:** langlebige Grundinstallation mit Steuerung (Ausbaustufe
  A–C1/C2), daran bei Bedarf Ladestationen (Stufe D); intelligent steuerbar, abrechenbar (geeichte
  Zaehler, meist ueber das ZEV-EMS), ausbaufaehig, zukunftssicher (S. 18). Installation mit FI-Schutz
  inkl. DC-Schutz, im MFH MID-/METAS-Zaehler (S. 46).
- **V2H/V2G** laut Quelle «in naher Zukunft» — heute noch nicht Standard.
- **Gebaeudeseitige Planung der Ladeinfrastruktur** (Grunderschliessung, SIA 2060, dynamisches
  Lastmanagement, Rollen/Prozess, Kostentragung) → eigenes Destillat
  [[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]].

## Projektablauf (Kap. 8) — neu 2026-09-18
1. **Eine verantwortliche Gesamtplanung**, die PV, Elektro, HLKS, WP-Lieferant und EMS-Lieferant
   koordiniert; alle wissen von Anfang an, dass ihre Komponente PV-optimiert werden muss. Einregulierung
   und Optimierung **von Beginn weg in den Kosten** einrechnen (S. 44).
2. **Zielkennzahlen** (Kap. 2.2) in der Planung festlegen, per Simulation (Polysun ab Update 2022.8 mit
   PV-WP-Vorlagen, oder PVopti).
3. **Speicher:** Trinkwarmwasser mit **einer Tagesladung**, 60 °C auch ohne Elektroeinsatz;
   **Pufferspeicher um 1/3 des Nennvolumens groesser** [WPSM-SP 2018], Mischventil zwingend; fuer das
   Gebaeude als Speicher Raumfuehler zwingend (S. 45).
4. **Schnittstellen:** WP mit SG-Ready-/SmartGridready-Label bzw. freigegebenem Modbus; Ladestation mit
   SGr-Label bzw. Modbus mit variablem Ladestrom; Wechselrichter mit Modbus nach **SunSpec** von Vorteil.
5. **Monitoring** nach Minergie-Vorgaben (Produktreglement 2021.1, Anhang C), Minergie-Modul
   «Monitoring+» (S. 45). → [[minergie-produktreglement-2026-1-muken-vergleich]]
6. **Installation:** WP nach **WPSM bis 15 kW** Heizleistung, darueber **Leistungsgarantie** [WP-LG 2020];
   EMS im EFH als guenstige Consumer-Loesung zulaessig, im MFH robust und langlebig; LAN vor WLAN (S. 46).
7. **Inbetriebnahme mit Funktionskontrolle** (alle Stufen durchtesten, Fahrzeug an der Station), alle
   Einstellungen dokumentieren, Endkunde instruieren (S. 46-47).
8. **Erste Betriebsphase ohne PV-Optimierung der WP** (eine Heizsaison), «natuerliche» Kennzahlen
   festhalten; die Ladestation darf von Anfang an PV-optimiert laufen. Abkuerzung nur, wenn die WP schon
   eine Heizsaison einreguliert ist oder eine vom WP-Hersteller freigegebene Kombination vorliegt (S. 47).
9. **Zweite Phase mit PV-Optimierung**, Kennzahlen vergleichen, Schaltschwellen und Temperaturniveaus
   nachjustieren, Heizstab vorzugsweise deaktivieren, keine «Legionellen-Schaltungen» nachts (S. 48).
10. **Betrieb:** mindestens jaehrliche Kennzahlenpruefung, **Service nach ca. 5 Jahren** (WPSM); im MFH
    Service-Vertraege und definierte Betreiber, Datenzugriff gegenueber Mietern/STWEG vorgaengig klaeren
    (Datenschutz) (S. 44, 49).

**Entscheidungsmatrix (S. 43):** neue WP → vollstaendiger Ablauf, EMS zwingend, SmartGridready sonst
SG-Ready, **kein Elektroeinsatz**; bestehende WP → abgekuerzter Ablauf, SG-Ready nachruesten wenn
moeglich, EMS empfohlen sobald eine PV-Anlage neu dazukommt, sonst genuegen Taganhebung und
WW-Ladefenster; **Monitoring in jedem Fall**.

## Bauherren-Transfer
- **PV + Waermepumpe gehoeren zusammen** — die WP ist der grosse, guenstige «Speicher», der den
  Solarstrom in Warmwasser und Heizwaerme umwandelt und so aus einer «nur-Mittags»-Anlage ganzjaehrigen
  Nutzen macht. **Das noetige Bauteil ist nicht die Batterie, sondern das EMS** (mit offenen Schnittstellen).
- **Reihenfolge fuer mehr Eigennutzen:** (1) **Lasten in die Sonne schieben** (WP-Warmwasser nachmittags,
  Taganhebung beim Heizen, E-Auto tagsueber); (2) **Speicher/Gebaeudemasse ueberhoehen** per EMS;
  **(3) erst danach** eine Batterie erwaegen — sie rechnet sich laut dieser Quelle noch nicht und hilft
  **nicht fuer den Winter**. *Die Zahlen «Eigenverbrauch von ~30 auf ~50 %» und «selbstverbrauchter Strom
  ~2–3× mehr wert als eingespeister» stammen **nicht** aus dieser Quelle: die 30→50 % aus
  [[batteriespeicher-heimspeicher-pv-ch]] (Swissolar/EnergieSchweiz «Batterien»), das 2–3× ist ein
  Tarifverhaeltnis im Themenartikel [[pv-eigenverbrauch-zev]] (Bezug ~20–25 gegen Einspeisung ~8–10 Rp/kWh,
  tarifabhaengig). Zogg selbst sagt nur qualitativ, der Bezugstarif sei «wesentlich hoeher» als der
  Einspeisetarif (S. 12). Zuordnung am 2026-09-18 berichtigt.*
- **Effizienz vor Eigenverbrauchs-Show:** Nie den Ueberschuss in einen Heizstab «verbraten», nur damit die
  Eigenverbrauchszahl steigt — die JAZ der WP faellt und es wird unwirtschaftlich. Keine Nachtabsenkung
  «fuer die Sonne».
- **Holzbau:** die Gebaeudemasse speichert nur rund ein Fuenftel; Faktor 2 beim Heizen ist dort nicht
  realistisch, der Puffer-Weg bleibt.
- **Schweizer EVU-Sperre mitdenken:** Wer eine WP mit SG-Ready kauft, klaert vorher mit dem Netzbetreiber,
  ob er auf die Sperre verzichtet; der PV-Eingang ist dafuer die einfachere Loesung.
- **Grundvoraussetzung**: WP zuerst korrekt einregulieren (Heizkurve, hydraulischer Abgleich), dann
  optimieren; die Optimierung ist ein **eigener, bezahlter Arbeitsschritt** im ersten Betriebsjahr.

## Aktualitaets-Check 2026-08-24 — beides bestaetigt, ein Zusatz

**01 SIA 2063 ist weiterhin nicht publiziert.** Die offizielle SIA-Publikationsliste
(cms.sia.ch/de/api/getMedia/674, **Stand 30.07.2026**, Abruf 24.08.2026) springt im Nummernbereich
von «2062 2023 Photovoltaik auf und an Gebaeuden» direkt auf «2065 2024 Planen und Bauen in
Projektallianzen» — **eine Zeile 2063 existiert dort nicht**. Der Vermerk «in Vorbereitung» im
Frontmatter bleibt damit sachlich richtig; er traegt jetzt ein Pruefdatum, damit der naechste Lauf
nicht bei null beginnt. (Die SIA-Vernehmlassungsseite selbst ist eine JS-Huelle und lieferte keinen
Volltext — kein Widerspruch, nur keine Zusatzbestaetigung.)

**02 Die Quelle selbst ist unveraendert Version 2.0.** Das von pubdb.bfe.admin.ch ausgelieferte PDF
traegt im Versionsverlauf (S. 2) woertlich «1.0 01.10.2021 D. Zogg Planungsgrundlagen
PV-Waermepumpen» und «2.0 02.07.2023 D. Zogg Mit Elektromobilitaet ergaenzt und ueberarbeitet» —
keine V3. Dieses Destillat zitiert die aktuellste verfuegbare Fassung.

**03 Zusatz SmartGridready: das EMS-Label kommt erst.** smartgridready.ch/ems, Abruf 24.08.2026,
woertlich: «Mit unserem neuen Label (ab Herbst 2026) zeichnen wir EMS aus, die grundlegende
Funktionen erfuellen.» Genannt sind sechs Zertifizierungskriterien (Sicherheit, Kommunikation
innerhalb von Gebaeuden, Netzanbindung, Leistungsbegrenzung, Systemoptimierung, Monitoring),
geprueft ueber FHNW und BFH. **Nicht belegt und deshalb nicht behauptet:** Anzahl bereits
zertifizierter Produkte sowie ein Foerder- oder Pflichtbezug. Fuer die Bauherrschaft heisst das:
ein herstelleruebergreifendes EMS-Guetesiegel ist im Entstehen, aber zum heutigen Zeitpunkt noch
kein Auswahlkriterium, auf das man sich in einer Ausschreibung stuetzen koennte.

## A-BLIND-Gegenlesung 2026-09-18 (Run 207)

PDF frisch von pubdb.bfe.admin.ch geladen (Fingerabdruck im Frontmatter), Versionsverlauf S. 2 weiterhin
V2.0. **Umfang:** S. 1-52 vollstaendig im Fliesstext, Tabelle 1-5 und Abbildung 3 (als Bild) geprueft.
**Ergebnis:** Kennzahlen-Definitionen, alle acht Steigerungsfaktoren, alle Werte der Tabelle 1, die
Batterie- und Notstrom-Aussagen, die EMS-Teilloesungen, V2H und die Quellenzitate **bestaetigt**.
**Berichtigt:** (1) SG-Ready war als «einfachste» Steuerung bezeichnet — die Quelle nennt den PV-Eingang
einfacher und die LAN-Einbindung die weitaus einfachste; (2) «offene Schnittstellen brauchen keine
Einzelfreigabe» war richtig, liess aber offen, dass **Modbus** eine Einzelfreigabe braucht, obwohl die
Schnittstellenliste Modbus fuehrte. **Zuordnung berichtigt:** die Kennzahlen 30→50 % und 2–3× im
Bauherren-Transfer stammen aus einer anderen Quelle. **Unschaerfen der Quelle markiert:** E-Auto-Kapazitaet
20–80 vs. 20–100 kWh; «ab CHF 1'000» exkl. Installation. **Abdeckung:** die Angabe «S. 1-16 vollst.» traf
zu, deckte aber nur 16 von 78 Seiten; Kap. 4.2 bis 9.2 sind jetzt destilliert.

## Offene Punkte
- Konkrete kWh-/CHF-Endergebnisse der 5 Praxisbeispiele (Kap. 12, S. 59–75: EFH Remigen, MFH
  Wettingen/Wetzikon, Areal Moeriken, Erlenmatt Ost) noch nicht destilliert; ebenso Anhang 10
  (Ausbaustufen SIA 2060, Stecker, AC-/DC-Ladeleistungen, S. 53-57) und 11 (LAN-Varianten, S. 58).
- Absolute solare Deckungsgrade in % (statt Faktoren) nennt die Quelle nicht generisch — projektgenau via
  Simulation (Polysun, mit hinterlegtem SG-Ready-Regler). Verweis Norm **SIA 2063** (integrales Energie-/
  Lastmanagement) noch in Vorbereitung.
- Die Waermekapazitaeten je Bauweise (0,15 / 0,08 / 0,03 kWh/m²K) zitiert die Quelle aus SIA 380/1 B.9 ohne
  Ausgabejahr; gegen die Norm selbst nicht geprueft (E-R207-1).

**Backlinks:** Absolut-Ertrag/Eigenverbrauch [[pv-ertrag-eigenverbrauch-praxis]] · JAZ/WP-Systemwahl
[[waermepumpe-systemvergleich]] / [[wpz-buchs-feldmessung-jaz-2016-2019]] · PV-Marktpreise
[[pv-marktzahlen-kosten-ch-2025]] · Speicher/graue Energie [[graue-energie-betriebsenergie]] · Mehrparteien-
Vermarktung [[zev-eigenverbrauch-mfh-her-2025]] · Themenartikel [[pv-eigenverbrauch-zev]] · Batterie [[batteriespeicher-heimspeicher-pv-ch]] ·
EVU-Sperre [[waermepumpen-sperrzeiten-netzbetreiber-zh-sz-vertiefung]] · WPSM
[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]].
