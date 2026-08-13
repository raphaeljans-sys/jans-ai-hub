---
quelle: "Stadt Zürich, Pflegezentren der Stadt Zürich (PZZ), «Standard Gebäudeautomation»
  (GA-Standard-PZZ_V11.doc), Original-Fundstelle SharePoint PL - 02_Recht_Norm/04_Merkblätter/
  Projektadmin AHB/14-Energie-und Gebaeudetechnik/14.5-Standards/
  Standards_Gebaeudeautomation_Pflegezentren.pdf; lokale Arbeitskopie vollständig gelesen
  (9 von 9 Seiten, Fussvermerk «Seite 9/9» bestätigt Vollständigkeit)"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie und Gebäudetechnik
  (Redaktion Thomas Kessler), erarbeitet mit den Pflegezentren (Erwin Zehnder, Regula
  Pfenninger, Daniel Jegerlehner, Christian Berli) und der Immobilien-Bewirtschaftung
  (Daniel Zbinden, René Büttiker, Jenö Hajas)"
ausgabe: "Version 1.1, Juli 2008 (Dateistempel Fusszeile 15.07.2008, Dateiname
  GA-Standard-PZZ_V11.doc — «V11» bedeutet Version 1.1, NICHT 2011)"
gelesen: "2026-08-13 (vollst., 9 von 9 S.)"
datenstand: "Juli 2008 ⚠ Alterskorpus, rund 18 Jahre alt. Trägt heute: die Systematik
  (Automationsebenen, Bedienlogik, Alarmpriorisierung, Funktionsträger-Prinzip). Trägt NICHT
  mehr ohne Prüfung: die konkrete Systemarchitektur (Züri-Netz, IMMO-Box, ESPA 4.4.4-
  Schnittstelle, EIB/KNX-Verbot) und die genannten Ansprechstellen — diese städtische
  IT-/Gebäudetechnik-Infrastruktur kann seither ersetzt oder umbenannt worden sein. Das
  Dokument selbst nennt keine Norm (kein SIA-380/4-Verweis wie im Schwester-Destillat
  [[ahb-zuerich-gt-rl8-beleuchtung]]), daher keine normbezogene Alterungsfrage in diesem
  Fall — die Alterung betrifft hier Technik und Organisation, nicht Normfassungen."
status: emerging
last_updated: 2026-08-13
---

# Destillat — Pflegezentren der Stadt Zürich: Standard Gebäudeautomation (V1.1, Juli 2008)

> **Das Wichtigste in 1 Satz:** Der PZZ-Standard verlangt für alle Neubauten und
> Gesamterneuerungen der zehn städtischen Pflegezentren ein einheitliches,
> durchgängiges Gebäudeautomationssystem mit dezentralen Automationsstationen, das
> nach Raumtyp abgestufte Bedienlogik (24-Stunden-Pflegebetrieb, Nachtwache als
> Ausfallebene ausserhalb Bürozeiten), dreistufig priorisierte Alarmierung und ein
> zentrales, an die Immobilien-Bewirtschaftung angebundenes Verbrauchs- und
> Betriebsdaten-Monitoring vorschreibt — bewusst getrennt von den
> betriebstechnischen/sicherheitstechnischen Systemen (Patientenruf, Brandmeldeanlage).

## Auftraggeber, Geltungsbereich und Einordnung (Ziff. 1)

Die Dienstabteilung Pflegezentren der Stadt Zürich (PZZ, Teil des Gesundheits- und
Umweltdepartements GUD) betreibt zehn städtische Pflegezentren sowie die Schule für
Berufe im Gesundheitswesen (SGZ) — laut Dokument die grösste Institution dieser Art in
der Schweiz, mit rund 1'800 Voll-/Teilzeitangestellten, über 1'500 stationären Betten
und rund 65 Tageszentrums-Plätzen (Stand 2008). Baumassnahmen werden vom Amt für
Hochbauten (AHB) als Baufachorgan im Auftrag der Immobilien-Bewirtschaftung als
Eigentümervertreterin durchgeführt.

Der Standard ist **verbindlich** für alle Neubauten und Gesamterneuerungen sowie bei
weitgehendem oder vollständigem Ersatz der Gebäudeautomationssysteme; bei solchen,
meist etappierten Vorhaben ist zusätzlich ein Migrationskonzept für bestehende Systeme
zu erarbeiten. Bei Teilerneuerungen und kleineren Umbauten gelten die Vorgaben «im
Sinne dieses Standards» unter Berücksichtigung von Verhältnismässigkeit und
Wirtschaftlichkeit. Die Umsetzung erfordert in jedem Fall eine projektspezifische
Planung durch einen ausgewiesenen Fachingenieur für Gebäudeautomation (Ziff. 1.3).

Als mitgeltendes Dokument werden die «Richtlinien Gebäudetechnik» des AHB genannt
(Ziff. 1.4) — das ist die Dokumentenfamilie, aus der auch die Schwester-Destillate
[[ahb-zuerich-gt-rl9-gebaeudeautomation]] (generische, stadtweite GA-Richtlinie,
V2.1 Juli 2008) sowie [[ahb-zuerich-gt-rl7-elektroanlagen]] und
[[ahb-zuerich-gt-rl8-beleuchtung]] stammen; bei komplexeren Vorhaben wird zusätzlich
ein projektspezifisches Pflichtenheft Gebäudetechnik erstellt. Widersprüche zwischen
diesem PZZ-Standard und den allgemeinen Richtlinien werden mit der Fachstelle Energie
und Gebäudetechnik des AHB geklärt — der PZZ-Standard ist damit die
**nutzungsspezifische Ergänzung** der generischen GA-Richtlinie für den Pflegebetrieb,
nicht deren Ersatz.

## Grundsätze und Betriebsorganisation (Ziff. 2)

Leitidee (Ziff. 2.1): Ein Pflegezentrum verfügt aufgrund seiner Grösse und Komplexität
über eine Vielzahl technischer Anlagen über mehrere Gebäude verteilt. Ein einheitliches,
durchgängiges GA-System soll als Integrationsplattform aller Anlagen dienen und die
Voraussetzung für eine effiziente Betriebsführung schaffen.

Technische Betriebsführung (Ziff. 2.2) — das ist die pflegebetrieb-spezifische
Besonderheit dieser Quelle: Jedes Pflegezentrum hat einen Technischen Dienst (TD) mit
üblichen Bürozeiten. **Ausserhalb der TD-Arbeitszeiten übernimmt das Pflegepersonal
(Nachtwache) die Überwachung der technischen Einrichtungen** und bietet bei Bedarf den
Pikettdienst des TD auf. Einzelne Spezialanlagen (Beispiel Blockheizkraftwerk) werden
vom zentralen Technischen Dienst der Immobilien-Bewirtschaftung (TD-IMMO) betreut. Die
Verbrauchsdaten (Energie und Wasser) werden zentral durch die Immobilien-Bewirtschaftung
erfasst und ausgewertet: PZZ leitet die Verbrauchsabrechnungen der Lieferwerke an die
IMMO weiter, welche PZZ die aufbereiteten Verbrauchszahlen zwecks Benchmarking zur
Verfügung stellt.

## Funktionale Anforderungen (Ziff. 3)

### Welche Anlagen automatisiert bzw. nur überwacht werden (Ziff. 3.1)

Vom GA-System **automatisch gesteuert, geregelt und überwacht** werden (sofern
vorhanden): Wärmeerzeugung (Heizkessel, Wärmepumpe, Blockheizkraftwerk),
Wärmeverteilung (Heizgruppen), Brauchwarmwasseraufbereitung, Lüftungsanlagen (ausser
dezentrale Abluftventilatoren ohne Wärmerückgewinnung) und Klimakälteanlagen. Anlagen
mit werksseitig installierter eigener Steuer-/Regeltechnik (Wärmepumpen, BHKW,
Kältemaschinen) müssen so ins GA-System eingebunden werden, dass sie ihre Funktion im
Gesamtsystem optimal erfüllen (Verweis auf Ziff. 4.1).

Nur **überwacht** (mindestens eine Störmeldung ans GA-System) werden: Abwasserpumpen
(Pumpenstörung, Niveaualarm), Aufzugsanlagen (technische Störung, Personenalarm),
Blindstrom-Kompensation, Brandmeldeanlage (technische Störung sowie Brand-Alarm intern
und extern), Gaswarnanlagen, gewerbliche Kälteanlagen (technische Störung sowie
Temperatur- und Personenalarm von Kühlzellen), Leckwarnanlagen, Notlichtzentrale,
unterbruchsfreie Stromversorgung (nur zentrale Anlagen), Wasseraufbereitungsanlagen.

**Bewusst ausgeschlossen** vom GA-System: Betriebstechnische Anlagen wie Patientenruf
und Weglaufschutz — Begründung: deren direkte Überwachung ist durch das Pflegepersonal
ohnehin 24 Stunden pro Tag gewährleistet. Auch die Telefonanlage wird nicht durch das
GA-System überwacht, weil bei deren Ausfall auch keine Alarme mehr übermittelt werden
könnten (Zirkelschluss-Vermeidung, Bezug Ziff. 4.4).

### Raumautomation nach Raumtyp (Ziff. 3.2, Tabelle)

Die Quelle unterscheidet fünf Raumtypen mit je spezifischer Regelungs-/Steuerungslogik
für Raumtemperatur, Beleuchtung, Lüftung und Storen:

- **Patientenzimmer:** Raumtemperatur über Thermostatventile; Beleuchtung manuell über
  grosse, beschriftete Taster; Lüftung im Dauerbetrieb; keine Storensteuerung genannt.
- **Gemeinschaftsräume** (Saal, Restaurant u.ä.): Thermostatventile; Beleuchtung manuell,
  eventuell mit Lichtszenen; Lüftung zeitabhängig, bei grossen Räumen zusätzlich mit
  Luftqualitätsregelung; Storen manuell.
- **Verkehrszonen** (Hallen, Korridore, Treppenhäuser): Thermostatventile; Beleuchtung
  zeit- und tageslichtabhängig mit reduzierter Beleuchtungsstärke während der Nacht;
  Lüftung zeitabhängig; Storen je nach Produkt mit Sicherheitsfunktion bei Wind, Regen
  und Frost.
- **Funktionsräume** (Therapie, Küche, Wäscherei u.ä.): Thermostatventile; Beleuchtung
  manuell; Lüftung zeitabhängig, bei Bedarf manuelle Übersteuerung mit Timer.
- **Nebenräume** (Lager, Technik u.ä.): keine Raumtemperaturregelung vorgesehen;
  Beleuchtung präsenz- und tageslichtabhängig über Bewegungsmelder; Lüftung
  zeitabhängig.

Diese Tabelle ist der konkreteste, pflegebetriebsspezifische Kernabschnitt der Quelle:
Sie zeigt, dass der Standard bewusst zwischen «geschützter» Bedienung im Patientenzimmer
(grosse, einfache Taster statt komplexer Bedienlogik) und feiner automatisierter Steuerung
in Verkehrs- und Nebenzonen unterscheidet.

### Bedienung, gestaffelt in vier Ebenen (Ziff. 3.3)

1. **Raumbedienung** (3.3.1): konventionelle Schalter und Taster; in
   Gemeinschaftsräumen mit Präsentations-/Audio-Video-Einrichtungen sind integrierte
   Bedieneinheiten (Touchpanels) zulässig.
2. **Vorortbedienung** (3.3.2): pro automatisierte Anlage ein Anlageschalter mit den
   Stellungen AUTO (automatisch vom GA-System gesteuert) · AUS (von Hand ausgeschaltet)
   · EIN (von Hand eingeschaltet, Dauerbetrieb); dazu drei Anzeigelampen Betrieb (grün),
   Handeingriff (gelb), Störung (rot); pro Schaltschrank eine integrierte Bedieneinheit
   für detaillierte Anzeige von Betriebszuständen, Messwerten, Störmeldungen,
   Betriebsstunden- und Verbrauchszählern sowie zum Einstellen von Betriebsparametern
   (Soll-/Grenzwerte, Schaltzeiten).
3. **Zentralbedienung** (3.3.3): zentrale Bedienstation im TD-Büro mit Bildschirm,
   Tastatur, Maus, Drucker; Funktionen: Visualisierung aller wichtigen Anlagen mit
   aktuellen Betriebszuständen/Mess-/Sollwerten/Stellsignalen/Störmeldungen,
   Handeingriffe (Übersteuern des Automatikbetriebs), Anpassen von Vorgabewerten
   inklusive komfortablem Editieren von Zeitschaltprofilen mit Wochenprogramm und
   Sondertagfunktion, Anzeigen/Quittieren/Protokollieren von Störmeldungen und Alarmen,
   Aufzeichnen und grafische Darstellung von Mess- und Sollwerten sowie Betriebs- und
   Schaltzuständen.
4. **Fernbedienung** (3.3.4): optional, via Telefonnetz oder Internet, funktional
   gleichwertig zur Zentralbedienung. Für komplexe Anlagen (Beispiel Blockheizkraftwerk),
   die vom TD-IMMO oder im Rahmen eines Servicevertrags direkt vom Lieferanten gewartet
   werden, besteht ein separater, direkter Fernzugriff. In beiden Fällen wird ein
   «effizienter Schutz vor Missbrauch» explizit gefordert, ohne technisches Verfahren zu
   benennen.

### Überwachung und Alarmierung, dreistufig priorisiert (Ziff. 3.4)

- **Priorität 1:** Personen und/oder Anlagen gefährdet, oder Ausfall einer
  betriebskritischen Anlage (Beispiel Warmwasserversorgung) → sofortige Reaktion
  erforderlich.
- **Priorität 2:** Anlage oder Anlageteil ausgefallen → Intervention am nächsten
  Arbeitstag.
- **Priorität 3:** Wartungsmeldungen → Behebung im Rahmen der regulären
  Unterhaltsarbeiten.

Alle Meldungen werden auf der zentralen Bedienstation mit Anlagebezeichnung und
Kurzbeschrieb angezeigt und protokolliert. Weiterleitung: während der TD-Arbeitszeiten
gehen Meldungen der Prioritäten 1 und 2 aufs DECT-Handy des TD-Leiters oder seines
Stellvertreters; ausserhalb der TD-Arbeitszeiten gehen Priorität-1-Meldungen aufs
DECT-Handy der zuständigen Nachtwache, gleichzeitig wird der Pikettdienst des TD per SMS
alarmiert. Die konkrete Alarmliste (Prioritäten, Meldetexte) muss objektspezifisch
definiert und mit den Betriebsverantwortlichen abgesprochen werden — die Quelle liefert
das Prinzip, keine Muster-Alarmliste.

### Energiemanagement und Anlagenmonitoring (Ziff. 3.5) — die Brücke zur Energie-KB

Für das zentrale Energiemanagement und Anlagenmonitoring durch die
Immobilien-Bewirtschaftung werden wichtige Verbrauchsdaten, Messwerte, Betriebs- und
Störzustände automatisch erfasst und über die **IMMO-Box** an die zentrale Datenbank
übermittelt. Für die Erfassung von Energie- und Wasserverbräuchen gilt das
**Standard-Messschema der Immobilien-Bewirtschaftung**, das an die objektspezifischen
Gegebenheiten anzupassen ist. Die Quelle nennt weder das Messschema selbst im Detail
noch Kennwerte oder Schwellenwerte — nur den organisatorischen Rahmen (zentrale
Auswertung, Benchmarking-Rückgabe an PZZ, siehe Ziff. 2.2).

## Systemanforderungen (Ziff. 4)

### Systemtopologie (Ziff. 4.1)

Aufbauprinzipien: dezentrale, modular aufgebaute, programmierbare Automationsstationen
als Funktionsträger; ein durchgängiges Automations-Netzwerk als «Rückgrat» für direkten
Datenaustausch zwischen allen Systemkomponenten. Hoch spezialisierte Systeme
(Brandmeldeanlagen, Audio/Video-Anlagen) werden **nicht** ins GA-System integriert,
sondern nur minimal über potentialfreie Kontakte angebunden. Anlagen mit werksseitiger
Steuerung/Regelung (Wärmepumpen, BHKW, Kältemaschinen) werden je nach technischen
Gegebenheiten und Realisierungskosten entweder über parallele Signale oder eine serielle
Schnittstelle eingebunden. In Bezug auf die Alarmierung ist das GA-System den
sicherheitstechnischen (Brandmeldeanlage) und betrieblichen (Patientenruf) Systemen
**gleichgestellt**: Die Alarmierung läuft über einen externen Alarmserver, der nicht
Bestandteil des GA-Systems ist. Ein Systemtopologie-Schema (S. 8) zeigt die Verkettung
von SMS-Fernalarmierung, Telefonzentrale mit Alarmserver, DECT, zentraler Bedienstation,
Automations-Netzwerk, Automationsstationen mit Vorort-Bedieneinheiten, IMMO-Box mit
M-Bus-Verbrauchszählern und Anbindung ans öffentliche Telekomnetz sowie ans stadteigene
«Züri-Netz».

### Automationsstationen — AS (Ziff. 4.2)

Möglichst nahe bei den gebäudetechnischen Anlagen platziert; enthalten
Signalschnittstellen zur Peripherie, die anlagenspezifische Steuer-/Regel-/
Überwachungs-«Intelligenz» sowie die Netzwerkschnittstelle zu anderen AS, den
Vorort-Bedieneinheiten und der Zentralstation. Anforderung: hohe Flexibilität und
Skalierbarkeit je Einsatzzweck, bei möglichst geringen Grundkosten (Hardware +
Engineering). **Grundsätzlich sind alle Automatisierungsaufgaben auf den AS zu
implementieren; konventionelle Steuergeräte, insbesondere Schaltuhren, sind nicht
gestattet.** Jede AS hat eine Eigenüberwachung (Watchdog); eine Fehlfunktion oder ein
Ausfall wird zuverlässig erkannt und erzeugt eine Störmeldung mit der höchsten
Priorität aller auf dieser AS implementierten Überwachungsfunktionen.

### Automations-Netzwerk (Ziff. 4.3)

Durchgängige Kommunikationsplattform, an die alle GA-Komponenten direkt angeschlossen
werden müssen. **Zusätzliche Datenschnittstellen (Gateways, Router) sind nicht erlaubt,
ebenso wenig zusätzliche Feldbus-Systeme wie EIB/KNX.** Aus Synergiegründen soll das
Automations-Netzwerk dieselbe UKV-Infrastruktur (universelle Kommunikationsverkabelung)
nutzen wie die betrieblichen Daten-/Telekommunikationsnetze — aus Datensicherheitsgründen
jedoch ohne physische Verbindung zu diesen. Voraussetzung: das Automations-Netzwerk muss
auf Ethernet-Technologie basieren, und seine Topologie muss in die UKV-Planung einfliessen.

### Alarmserver (Ziff. 4.4)

Weiterzuleitende Alarme/Störmeldungen (siehe Ziff. 3.4) werden über eine standardisierte
Schnittstelle (Beispiel in der Quelle: ESPA 4.4.4) an einen externen Alarmserver
übermittelt. Dieser ist zentrale Drehscheibe für alle gebäude-, sicherheits- und
betriebstechnischen Meldungen und wird idealerweise als Komponente des Telefonsystems
implementiert. Konfiguration basiert auf einem objektspezifischen Alarmierungskonzept
(welche Alarme zu welchen Zeiten an welche internen/externen Stellen). Der Alarmserver
muss als zentraler Knotenpunkt die höchstmögliche Verfügbarkeit aufweisen.

### IMMO-Box (Ziff. 4.5)

Die Verbrauchszähler werden über ein separates M-Bus-System direkt auf die IMMO-Box
aufgeschaltet; über eine Schnittstelle zum Automations-Netzwerk erfasst die IMMO-Box die
wichtigsten Messwerte, Betriebs- und Störmeldungen. Anmerkung zur Quelle: Das
Inhaltsverzeichnis (S. 2) beschriftet Ziff. 3.5 und 4.5 mit «Verbrauchsmessungen»,
während die Fliesstext-Überschriften im Dokument selbst «Energiemanagement und
Anlagenmonitoring» (3.5) bzw. «IMMO-Box» (4.5) lauten — eine geringfügige TOC/Fliesstext-
Abweichung im Original, inhaltlich deckungsgleich.

## Bauherren-Transfer

- **Systematik bleibt tragfähig, Technik nicht ungeprüft übernehmen:** Die Grundlogik
  dieses Standards — dezentrale Automationsstationen als Funktionsträger, ein
  durchgängiges Netzwerk als Rückgrat, klare Trennung von GA-System und
  sicherheitstechnischen/betrieblichen Systemen (Brandmeldeanlage, Patientenruf), eine
  dreistufig priorisierte Alarmierung mit definierten Reaktionszeiten und die vier
  Bedienebenen Raum/Vorort/Zentral/Fern — ist auch 2026 eine brauchbare
  **Anforderungsgliederung** für ein Pflichtenheft Gebäudeautomation in einem
  Pflegezentrum oder einer vergleichbaren Gesundheitsimmobilie (relevant für das
  laufende Projekt 2619 Kinderspital Zürich, sinngemäss übertragbar trotz anderer
  Nutzergruppe). Die **konkret genannte Technik** (Züri-Netz, IMMO-Box, ESPA 4.4.4,
  M-Bus, das explizite EIB/KNX-Verbot) ist stadteigene Infrastruktur der Immobilien-
  Bewirtschaftung Zürich von 2008 und darf **nicht** unbesehen als heute gültiger
  Anforderungskatalog in ein privates Pflichtenheft übernommen werden — insbesondere das
  EIB/KNX-Verbot war eine damalige Beschaffungs-/Betriebsentscheidung der Stadt Zürich,
  keine allgemeingültige technische Notwendigkeit; welches Bus-/Netzwerkprotokoll heute
  sinnvoll ist, entscheidet der Fachingenieur GA projektspezifisch.
- **Die Nachtwache-als-Ausfallebene ist der wichtigste Pflegebetrieb-spezifische
  Punkt** dieser Quelle (Ziff. 2.2, 3.1): Ein GA-Pflichtenheft für ein Pflegeheim oder
  eine Klinik muss explizit regeln, wer ausserhalb der TD-Bürozeiten auf
  Priorität-1-Alarme reagiert — hier ist es das Pflegepersonal selbst, nicht ein externer
  Wachdienst. Das ist ein Nutzungsmerkmal, das ein Standard-GA-Pflichtenheft für
  Bürobauten nicht kennt und das bei einem Kinderspital oder Pflegezentrum aktiv
  abgefragt werden muss (wer trägt die Pikettverantwortung, welche Reaktionszeiten sind
  realistisch bei Nachtpersonal, das gleichzeitig Pflegeaufgaben wahrnimmt).
- **Die bewusste Nicht-Integration von Patientenruf und Weglaufschutz ins GA-System**
  ist eine Abgrenzungsentscheidung mit Begründung (24-Stunden-Überwachung durch
  Pflegepersonal ohnehin gegeben) — ein Argument, das bei der Schnittstellenplanung
  zwischen Gebäudeautomation und betriebstechnischen Systemen in jedem Pflegebau
  wiederkehrt und in der Devis-/Pflichtenheft-Abgrenzung explizit benannt werden sollte,
  damit kein Gewerk sich für die Alarmierung dieser Systeme zuständig wähnt.
- **Energieverbrauchs-Brücke (Ziff. 3.5, 4.5):** Der Standard verankert Verbrauchs- und
  Betriebsdatenerfassung als **Systemanforderung**, nicht als optionale Zusatzleistung —
  Verbrauchszähler ans GA-System/Monitoring anschliessen ist Teil der GA-Grundausstattung,
  nicht nachträglich zu verhandeln. Für ein heutiges Projekt ist die konkrete Umsetzung
  (M-Bus, IMMO-Box) durch das aktuell gültige Zähl- und Monitoringkonzept des jeweiligen
  Bauherrn bzw. Betreibers zu ersetzen; das Prinzip «zentrale, automatisierte
  Verbrauchserfassung mit Rückgabe an den Betrieb zwecks Benchmarking» bleibt jedoch die
  richtige Anforderung und lässt sich unmittelbar in ein heutiges Pflichtenheft
  übernehmen. Kennwerte oder Schwellen für den Energieverbrauch selbst liefert diese
  Quelle nicht — dafür ist die energie-KB heranzuziehen (Skill `energie`).
- **Keine Normverweise in dieser Quelle**, anders als im Schwester-Destillat
  [[ahb-zuerich-gt-rl8-beleuchtung]] (dort SIA 380/4, heute archiviert). Diese Quelle
  braucht daher keine Norm-Aktualisierung im Bauherren-Transfer — die Alterung betrifft
  hier ausschliesslich Systemtechnik und städtische Betriebsorganisation, nicht
  Normfassungen. Für den heute gültigen Energienachweisweg im Kanton Zürich (EVEN,
  Formulare seit 01.01.2026) gilt ohnehin die eigenständige, projektaktuelle Prüfung über
  Skill `energie`, unabhängig von dieser Quelle.

## Offene Punkte

- Keine Kennwerte, Grenzwerte oder Schwellen zum Energieverbrauch (kWh, W/m², Lastgang)
  in der Quelle — nur das organisatorische Prinzip der zentralen Verbrauchserfassung.
  Für Kennwerte ist die Energie-KB (`wissen/energie`) heranzuziehen.
- Das «Standard-Messschema der Immobilien-Bewirtschaftung» (Ziff. 3.5) wird erwähnt,
  aber nicht im Dokument selbst beigelegt oder inhaltlich beschrieben — Fundstelle
  unbekannt, nicht Teil dieser Quelle.
- Unklar, ob eine aktuellere Fassung dieses PZZ-Standards existiert (die Quelle datiert
  Juli 2008, Version 1.1); bei Bedarf über die AHB-Fachstelle Energie und Gebäudetechnik
  bzw. die Nachfolgeorganisation der Pflegezentren Stadt Zürich zu verifizieren. Die
  Dienstabteilung PZZ selbst kann seit 2008 reorganisiert oder umbenannt worden sein —
  nicht Teil dieser Quelle, nicht recherchiert.
- Keine Angaben zu Kosten, Ausschreibungsverfahren oder konkreten Fabrikaten/Produkten —
  der Standard ist rein funktional/anforderungsseitig formuliert.
- Systemtopologie-Schema (S. 8) enthält im PDF-Textextrakt unleserliche Platzhalter-
  Zeichenfolgen bei der Vorort-Bedieneinheit-Box (Extraktionsartefakt der Quelle, nicht
  inhaltlich relevant) — bei Bedarf im Original-PDF visuell prüfen, nicht aus dem
  Textextrakt zitieren.
