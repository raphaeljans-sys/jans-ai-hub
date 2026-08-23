---
quelle: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie und Gebäudetechnik,
  «Kennzeichnungssystem und Beschriftungskonzept — Standard Gebäudetechnik»
  (Standards_Kennzeichnungssystem_V2.2.pdf); Original-Fundstelle SharePoint PL - 02_Recht_Norm/
  04_Merkblätter/Projektadmin AHB/14-Energie-und Gebaeudetechnik/14.5-Standards/
  Standards_Kennzeichnungssystem_V2.2.pdf; per M365-CLI (`spo file get --asFile`) heruntergeladen
  und vollständig mit PyMuPDF gelesen (alle 24 von 24 Seiten, Fussvermerk «Seite n/24» je Seite
  bestätigt Vollständigkeit)"
herausgeber: "Stadt Zürich, Hochbaudepartement, Amt für Hochbauten (AHB), Fachstelle Energie und
  Gebäudetechnik, Lindenhofstrasse 21, 8021 Zürich, in Zusammenarbeit mit der
  Immobilien-Bewirtschaftung (IMMO) der Stadt Zürich"
ausgabe: "Version 2.2, Dokumentdatum 1. September 2007 (Dateivermerk «03.09.2007/
  Kennzeichnungssystem V2.2.doc»); die dokumenteigene Revisionstabelle (S. 3, «mindestens
  einmal jährlich zu überprüfen») ist im vorliegenden Exemplar leer — keine spätere Revision
  im Dokument selbst nachweisbar"
gelesen: "2026-08-23, vollständig (24/24 Seiten)"
datenstand: "1. September 2007. ⚠ Alterskorpus (19 Jahre): das Dokument verlangt zwar eine
  jährliche Überprüfung, die Revisionstabelle im vorliegenden Exemplar ist aber leer — ob eine
  aktuellere Fassung existiert, ist mit diesem Exemplar nicht feststellbar. Vor einer
  verbindlichen Anwendung auf ein städtisches Projekt beim AHB die aktuelle Fassung anfragen."
status: emerging
last_updated: 2026-08-23
---

# Stadt Zürich AHB — Kennzeichnungssystem und Beschriftungskonzept Gebäudetechnik (V2.2, 2007)

## Das Wichtigste in 1 Satz

Dieser Stadt-Zürich-Standard regelt, wie **jedes Bauteil, jede Anlage und jeder
Automations-Datenpunkt der Gebäudetechnik** über eine hierarchische Kurzbezeichnung
(Standort → Gebäude → Stockwerk/Raum → Anlage → Komponente → Signal) eindeutig adressiert
wird — er ist damit das praktische Werkzeug, mit dem sich ein Zähler-/Datenpunktkonzept für
Energiemonitoring und Submetering (vgl. `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`)
überhaupt strukturiert umsetzen lässt, enthält selbst aber **keine energetischen Kennwerte,
Schwellenwerte oder Kosten**.

## Einordnung und Reichweite

Verbindlich nur für **Bauten der Stadt Zürich** (Neubauten und weitgehende/vollständige
Ersatzvorhaben der Gebäudetechnik-Installationen zwingend, bei Teilerneuerungen «unter
Berücksichtigung der Verhältnismässigkeit», S. 3); für JANS-Projekte ausserhalb städtischen
Eigentums **kein geltendes Recht**, sondern eine **praxiserprobte, frei referenzierbare
Namenskonvention** für die Koordination zwischen Elektro- und HLK-Planer beim Aufbau eines
Zählerkonzepts. Basiert laut eigener Angabe (S. 3) auf DIN EN 6779-12 i.V.m. DIN 6779-1, DIN EN
61346-1 und DIN EN 61346-2 — derselben Normfamilie, aus der auch das international bekanntere
Kraftwerks-Kennzeichnungssystem (KKS) abgeleitet ist.

## Die sechs Kennzeichnungsblöcke (S. 4-14)

| Präfix | Block | Beispiel |
|---|---|---|
| `S` | Standort | `S0142` |
| `G` | Gebäude | `G00372` |
| (Ort) | Stockwerk und Raum | `UG01.705` |
| `=` | Anlage (Gewerkbuchstabe + fortlaufende Nummer) | `=L02` |
| `.` | Komponente / Strompfad | `.M01` |
| `:` | Anschluss, Funktion, Signal | `:E1` |

Vollständiges Beispiel (Schaltbefehl Motor eines Zuluftventilators, S. 14):
`S0142 G00372 UG01.705=L02.M01:E1`

**Gewerkbuchstaben der Anlagen-Ebene** (Auszug, S. 6): C automatisierungstechnische Anlagen ·
D datentechnische Anlagen · E elektrotechnische Anlagen · H Wärmeversorgungsanlagen ·
K kältetechnische Anlagen · L raumlufttechnische Anlagen · S Abwasser-/Wasser-/Gasanlagen.

**Signal-Kennbuchstaben der Feldebene** (S. 14) unterscheiden u.a. `T` Prozesssignal analog
(Messgrösse) und **`Z` Zählwert** — dieser Buchstabe ist die unmittelbare technische Brücke zum
Submetering: ein Zähler-Datenpunkt einer Anlage erhält in diesem System eine eigene,
eindeutige Adresse, konsistent mit allen anderen Signalen derselben Anlage.

## Bezug zum Energiemonitoring (S. 3, S. 16)

Das Dokument nennt seinen eigenen Zweck explizit im Kontext des städtischen
Energie-Monitorings: es sei «in Zusammenarbeit mit der Immobilien-Bewirtschaftung (IMMO) der
Stadt Zürich entstanden. Berücksichtigt wurden die Vorgaben der Portfoliostruktur und der
Parameter für das **Energie- und Anlagenmonitoring (IMMO-Box)** der IMMO» (S. 3, Ausgangslage).
Die Abkürzungstabelle für Medien/Gewerke (S. 15 f.) führt unter der Rubrik **«IMMO-Box /
Energiedatenbank»** eigene Kürzel für Betriebsmeldungen (`BMH` Betriebsstunden, `BMS` Starts),
Störungen (`ALS`) und Tarifsignale (`ENN`/`ENH` Nieder-/Hochtarif) — dieselbe städtische
Energiedatenbank, die auch im Schwester-Destillat `[[ahb-zuerich-gt-rl9-gebaeudeautomation]]`
als «IMMO-Box ab 1'000 m² EBF» auftaucht. Beide Dokumente stammen aus derselben AHB-Richtlinien-
Familie und ergänzen sich: RL9 beschreibt die Gebäudeautomations-**Funktionen** (Bedienebenen,
Autarkie, Erweiterbarkeit), dieses Dokument die **Adressierung** ihrer Datenpunkte.

## Beschriftungskonzept (Kap. 3, S. 15-24)

Zweiter Teil des Dokuments: physische Beschriftung vor Ort — Medienbezeichnungen/Abkürzungen
für Pläne und Schemata (z.B. `HEV`/`HER` Heizung Vor-/Rücklauf, `ZUL`/`ABL` Zu-/Abluft, `WTK`/
`WTW` Trinkwasser kalt/warm), Bezeichnungsschilder für Feldapparate und Schaltgerätekombinationen
(inkl. Farbcode nach RAL: Elektro RAL 1004 goldgelb, HLKKS RAL 5012 lichtblau, UKV RAL 7035
hellgrau), Medienpfeile für Leitungen, Beschriftung von Hauptkabeln, UKV- und
Installationskabeln. Rein ausführungstechnisch, ohne Bauherren- oder Kostenrelevanz.

## Bauherren-Transfer

Für ein JANS-Projekt mit Submetering-/Gebäudeautomationspflicht (EN-141-Schwelle 5'000 m² EBF
bzw. künftig 2'000 m², vgl. `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`) liefert
dieser Standard kein Muss, aber ein **einsatzbereites Vorbild**: statt für jedes Projekt eine
eigene Adressierungslogik für Zähler-Datenpunkte zu erfinden, kann das Elektro-/HLK-Planerteam
auf eine seit 2007 in der Praxis erprobte, DIN-basierte Systematik zurückgreifen — das spart
Koordinationsaufwand und vermeidet uneinheitliche Bezeichnungen zwischen Dokumentation,
Gebäudeautomation und Vor-Ort-Beschriftung (die im Dokument selbst als Ziel genannte «gleiche
Struktur wie bei der Adressierung», S. 4). Für ein städtisches Projekt (Stadt Zürich als
Bauherrin) ist die Anwendung ohnehin verbindlich vorausgesetzt — dort vor Planungsbeginn beim
AHB die jeweils aktuelle Fassung anfragen, da die vorliegende Version (2007) keine im Dokument
nachweisbare spätere Revision trägt.

## Offene Punkte

- **Aktualität ungeklärt:** die Revisionstabelle (S. 3) ist im vorliegenden Exemplar leer; ob
  seit 2007 eine neuere Fassung existiert, ist damit nicht feststellbar (vgl. Datenstand oben).
- **Keine eigenständige Prüfung, ob Version 2.2 gegenüber einer möglichen Vorgänger-/
  Nachfolgeversion inhaltlich abweicht** — nur dieses eine Exemplar lag im Bestand.

## Quellen

- Stadt Zürich, Amt für Hochbauten, Fachstelle Energie und Gebäudetechnik,
  «Kennzeichnungssystem und Beschriftungskonzept — Standard Gebäudetechnik», Version 2.2,
  1. September 2007, PDF, 24 S. vollständig gelesen 2026-08-23.

## Backlinks

[[energiemonitoring-submetering-grossverbraucher-zh-sz]] · [[ahb-zuerich-gt-rl9-gebaeudeautomation]] ·
[[sia-386-bacs-gebaeudeautomation]]
