---
quelle: Simulation von Energiesystemen mit dem Tachion-Simulation-Framework — Benutzerdokumentation
herausgeber: EnergieSchweiz, Bundesamt fuer Energie BFE (Muehlestrasse 4, CH-3063 Ittigen; «fuer den Inhalt sind alleine die Autoren verantwortlich», Autoren nicht namentlich genannt)
ausgabe: Benutzerdokumentation, Oktober 2022
gelesen: Seiten 1-28 (vollstaendig)
datenstand: 2026-08-21 (Dokument Oktober 2022, ⚠ 46 Monate alt — Tarif-/Kostentabellen, Foerderstatus ZG/ZH und Steuerrechner-Link vor Gebrauch pruefen)
status: emerging
last_updated: 2026-08-21
---

# Destillat — Tachion-Simulation-Framework (Rechenkern hinter dem EnergieSchweiz-Solarrechner)

> Amtliche Methodik-Dokumentation zum Simulationskern, der **energieschweiz.ch/solarrechner**
> und **swissolar.ch/solardachrechner** antreibt: keine Klick-Anleitung, sondern die Fach- und
> Rechengrundlage (Meteonorm-Wetterdaten, SIA-380/1-Gebaeudesimulation, ISO-9806/EN-14511-Normwerte,
> Wirtschaftlichkeitsmodell) hinter einer kostenlosen, oeffentlich zugaenglichen Grobschaetzung
> fuer PV- und Solarwaermeanlagen.

## Das Wichtigste in 1 Satz
Der Solarrechner von EnergieSchweiz (Tachion-Engine) simuliert PV- und Solarwaerme-Anlagen mit
einer minutengenauen Jahressimulation auf Basis von Meteonorm-Referenzwetter und SIA-380/1-Gebaeudephysik
und liefert daraus Ertrag, Eigenverbrauchsanteil, Investitionskosten, Foerderbeitraege und Amortisationsdauer
als amtliche, kostenlose Erstabschaetzung — die Kosten- und Tarifzahlen selbst stammen aus Erfahrungswerten
von Oktober 2022 und sind bei Gebrauch zu verifizieren.

## Was das Werkzeug rechnet (Methodik, Normbezug, Eingabe-/Ausgabegrössen)

**Werkzeug-Identitaet (belegt Titelseite + Impressum S. 1/28):** Das Dokument ist die
Benutzerdokumentation zum «Tachion-Simulation-Framework», das laut Fliesstext (S. 3, 17) den
«Solarrechner von EnergieSchweiz» (energieschweiz.ch/solarrechner) antreibt. Eine Fussnote (S. 22)
zeigt, dass exakt dieselbe Engine auch hinter dem **Solarrechner von Swissolar**
(swissolar.ch/solardachrechner) steckt — dort stehen zusaetzliche Einstellungen (Vergütungsmodell-Wahl,
Bauherrschaft Firma/Privat) zur Verfuegung, die im EnergieSchweiz-Rechner fehlen. Kein Klick-Handbuch:
die 28 Seiten sind fast vollstaendig Fachmethodik (Kapitel 1-5) und Wirtschaftlichkeitsmodell (Kapitel 6),
nur Kapitel 7 (Monatsdaten-Upload) ist reine Bedienungsanleitung.

**Vier Systemvarianten** (≈ 90 % aller CH-Solaranlagen, S. 3-4):
1. PV Eigenverbrauch Haushalt (+ optional Batterie)
2. PV Haushaltsstrom + Warmwasser (via Waermepumpenboiler oder Elektroheizstab)
3. PV Haushaltsstrom + Warmwasser + Heizung
4. Solarwaerme: nur Warmwasser, oder Warmwasser + Heizung (Kombispeicher)

**Simulationsmethodik (Kap. 2-4):**
- **Wetterdaten:** Meteonorm-Referenzjahr aus 15-jaehriger Messperiode (typische Variabilitaet
  erhalten), stuendliche Aufloesung, 2×2 km raeumlich; alternativ reale MeteoSchweiz-Jahresdaten
  fuer Ertragskalibrierung gegen eine bestehende Anlage.
- **Gebaeude-/Heizsimulation erfuellt SIA 380/1** (S. 9): minutengenaue Sonnenstandsberechnung,
  Waermetransmission, Passivgewinne (bei aelteren Wohnhaeusern ~30 %, bei Passivhaeusern bis 80 %
  der nutzbaren Heizenergie), Luftung/Infiltration, thermische Traegheit, Heizkurve.
- **Speicher-/Leitungsdimensionierung nach SIA 384/385** (S. 10, 12): Speichergroesse und Daemmung
  von Warmwasser- und Zirkulationsleitungen normkonform dimensioniert.
- **Solarwaerme-Kollektorertrag nach ISO 9806** (S. 13): optischer Wirkungsgrad, lineare/quadratische
  Verlustkoeffizienten, longitudinaler/transversaler Winkelfaktor — Kollektordaten stammen aus dem
  Pruefverfahren des Instituts fuer Solartechnik SPF Rapperswil (kollektorliste.ch).
  ⚠ **Wortlaut-Korrektur:** «kollektorliste.ch» listet nur die in der Schweiz **geförderten**
  Kollektoren, nicht alle je vom SPF getesteten — Formulierung im Dokument («alle geförderten Kollektoren»)
  praezisiert.
- **Waermepumpen-Gütefaktor nach EN 14511** (S. 14): Leistungskennfeld nach Quell-/Vorlauftemperatur
  gemaess Normmessung; vgl. [[sia-384-3-wpesti-jaz-methode]] fuer die JAZ-Methodik selbst (anderes
  Werkzeug, gleicher Normbezug EN 14511).
- **Energie-Paket-Tracking** (S. 12): jedes Energiepaket traegt ein «Absender-Label», das bis zum
  Verbrauch verfolgt wird — objektive Bilanzierung ohne willkuerliche Zuordnungsregeln.
- **Zeitschritte:** ~100'000 Zeitschritte pro Jahressimulation (Sekunden-Rechenzeit); bis 500 Parameter
  bei PV-, bis 1000 bei Solarwaermeanlagen automatisch ermittelt (Tachion-Assistent).

**Eingabegroessen (Tab. 1, S. 5):** Postleitzahl, Technologie (PV/Solarwaerme), Auslegungsmodus
(automatisch/manuell), Bewohnerzahl (PV 1-100, Solarwaerme 1-20), Dachneigung/-orientierung,
Systemwahl, Modulflaeche (2-40 m² Bruttoflaeche), Speichergroesse (Warmwasser 400-2000 l,
Kombispeicher 1000-4000 l), Modul-Wirkungsgrad, bestehendes Heizsystem, Gebaeudetyp/Baujahr,
Wohnflaeche (100-1000 m², bei PV+Heizung bis 5000 m²).

**Ausgabegroessen:** Investitionskosten schluesselfertig, Einmalverguetung (KLEIV/GREIV), kantonale
Foerderung, Amortisationsdauer, mittlere Rendite, Eigenverbrauchsanteil, Performance Ratio (PR).

## Kennwerte / Standardwerte / Tabellen (quellentreu)

**Verbrauchs-Defaults** (S. 3, 6):
- Haushaltsstrom: 2.5 kWh/Person·Tag
- Warmwasser: 50 Liter/Person·Tag bei 55 °C
- 4 Stromverbrauchsprofile wählbar: Haushalt, Gewerbe 5/6/7 Tage (S. 7)

**Eigenverbrauchs-Prioritaet** (S. 6): a) Haushalt direkt → b) Warmwasser → c) Heizung →
d) Batterie → e) Netzeinspeisung. Bezug: f) Batterie → g) Netz.

**Batterie-Auslegung** (Tachion-Assistent, S. 7): nutzbare Speicherkapazitaet [kWh] =
Minimum aus (a) 50 % des durchschnittlichen taeglichen Haushaltsstromverbrauchs und
(b) 1.5 × PV-Feldleistung [kW].

**PV-Technik:** Modul-Wirkungsgrad wählbar 13/17/**19 (Standard)**/20/21/23 %; Degradation
0.34 %/Jahr (nach 30 Jahren ≈ 90 % des Anfangsertrags, S. 23).

**Wirtschaftlichkeitsparameter, 30-Jahre-Modell** (Kap. 6.3, S. 22-23):
- Lebensdauer: 30 Jahre (Anlagen sind haeufig deutlich laenger in Betrieb)
- Inflation: 1 %/Jahr
- Realpreissteigerung: fossile Energietraeger +2 %/Jahr, Strom +1 %/Jahr, Holz 0 %
- Betriebsaufwand: PV 1 %/Jahr, Solarwaerme 0.5 %/Jahr der Investitionskosten
- Synergieeffekt Solarwaerme (Ohnehin-Speicher/-Wartung): ≈ 30 % der Investitionskosten
- Batterie-Investitionskosten: CHF 1'400/kWh
- Eigenverbrauch wird mit dem Ertrag des 15. Jahres (Anlagenmitte) gerechnet
- Stromanteile Hoch-/Niedertarif: Eigenverbrauch 85/15 %, Einspeisung 65/35 %, Netzbezug 50/50 %

**Foerderung/Verguetung** (S. 18-21, 24): KLEIV (kleine Einmalverguetung, PV 2-99.9 kW,
Wartezeit ≈ 1.5 Jahre) und GREIV (grosse Einmalverguetung, PV 100-50'000 kW, Wartezeit ≈ 3 Jahre)
via pronovo.ch; kantonale Solarwaerme-Foerderung nach Harmonisiertem Foerdermodell (HFM) = 20 %
der Mehrkosten, «alle Kantone ausser ZG und ZH» (⚠ **Stand 2021**, vor Gebrauch bei Kanton/Gemeinde
verifizieren — betrifft direkt die JANS-Projektkantone ZH/SZ).

**Investitionskosten PV, schluesselfertig inkl. MwSt.** (Tab. S. 23, Auszug):
| Leistung | Aufdach | CHF/kW Aufdach | Indach | CHF/kW Indach |
|---|---|---|---|---|
| 5 kW | 16'863 CHF | 3'373 | 20'236 CHF | 4'047 |
| 10 kW | 27'353 CHF | 2'735 | 32'824 CHF | 3'282 |
| 20 kW | 44'370 CHF | 2'219 | 53'244 CHF | 2'662 |
| 50 kW | 85'478 CHF | 1'710 | 102'574 CHF | 2'051 |
| 100 kW | 146'349 CHF | 1'463 | 175'619 CHF | 1'756 |

Mehrkosten PV+Warmwasser: CHF 500 + CHF 1.-/Liter Boiler-Nennvolumen. Mehrkosten PV+Warmwasser+Heizung
(nur Steuerung): pauschal CHF 1'000 zusaetzlich.

**Investitionskosten Solarwaerme, schluesselfertig inkl. MwSt.** (Tab. S. 24, Auszug; Basis
Feldstudien Basler & Partner):
| Kollektorflaeche | Warmwasser Flach | Warmwasser Roehre | Heizung+WW Flach | Heizung+WW Roehre |
|---|---|---|---|---|
| 4 m² | 12'280 CHF | 12'600 CHF | 15'280 CHF | 15'600 CHF |
| 12 m² | 23'090 CHF | 24'050 CHF | 23'090 CHF | 24'050 CHF |
| 20 m² | 33'400 CHF | 35'000 CHF | 33'400 CHF | 35'000 CHF |
| 32 m² | 43'240 CHF | 45'800 CHF | 50'740 CHF | 53'300 CHF |
| 40 m² | 49'800 CHF | 53'000 CHF | 59'800 CHF | 63'000 CHF |

Diese Tabelle beantwortet direkt die in [[solarthermie-investitionskosten-ch]] als «speculative»
markierte Luecke (dort fehlte eine amtliche EnergieSchweiz/Swissolar-Quelle fuer Kombianlagen-Kosten)
— Delta und Verlinkung siehe dort bei naechster Ueberarbeitung.

## Bauherren-Transfer
Der Solarrechner (energieschweiz.ch/solarrechner) und sein Swissolar-Pendant
(swissolar.ch/solardachrechner) sind fuer JANS ein **kostenloses amtliches Grobschaetzungs-Werkzeug**:
zusammen mit sonnendach.ch/sonnenfassade.ch (Solarkataster fuer Standort/Dachflaeche/-neigung) liefert
er in wenigen Klicks eine plausibilisierbare Erst-Zahl fuer Investitionskosten, Eigenverbrauch und
Amortisationsdauer einer PV- oder Solarwaerme-Anlage — nuetzlich als Gegenprobe zu einer eigenen
Kostenschaetzung, nicht als Ersatz einer Fachplanung. Fuer Solarwaerme-Kombianlagen (Heizung+WW) liegt
mit obigen Tabellen erstmals eine belegte, amtliche CHF-Bandbreite vor. Kantonale Foerderaussagen
(insb. ZH/SZ) und Tarifannahmen sind wegen des Dokumentalters (Okt. 2022) vor Verwendung zu pruefen,
am besten direkt im Solarrechner (der laut Text seine Tarife laufend nachfuehrt).

## Offene Punkte
- ⚠ Foerderstatus «alle Kantone ausser ZG und ZH» ist Stand 2021 — fuer aktuelle JANS-Projekte in ZH
  und SZ gegen die kantonale Foerderstelle direkt verifizieren, nicht aus diesem Destillat uebernehmen.
- Die Investitions- und Batteriekostentabellen sind Erfahrungswerte von 2022; PV-Modulpreise sind
  seither gefallen — vor Verwendung im Solarrechner selbst nachrechnen lassen (Tool aktualisiert
  vermutlich laufend, Doku nicht).
- Keine Angabe im Dokument, ob/wie oft die Kostentabellen seit Oktober 2022 im Tool selbst
  nachgefuehrt wurden — offene Frage an EnergieSchweiz-Infoline (0848 444 444) falls praezise
  Aktualitaet gebraucht wird.
