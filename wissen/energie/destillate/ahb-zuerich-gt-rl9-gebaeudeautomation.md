---
quelle: "Stadt Zürich, Amt für Hochbauten (AHB), Richtlinie GT «Gebäudeautomation»
  (GT_RL9_Gebaeudeautomation_V21.pdf), Original-Fundstelle SharePoint PL - 02_Recht_Norm/
  04_Merkblätter/Projektadmin AHB/14-Energie-und Gebaeudetechnik/14.3-Richtlinien/
  GT_RL9_Gebaeudeautomation_V21.pdf; lokale Arbeitskopie vollständig gelesen (7 von 7 Seiten,
  Fussvermerk «Seite 7/7» bestätigt Vollständigkeit)"
herausgeber: "Stadt Zürich, Hochbaudepartement, Amt für Hochbauten (AHB), Fachstelle Energie
  & Gebäudetechnik, in Zusammenarbeit mit der Immobilien-Bewirtschaftung und der
  Liegenschaftenverwaltung; Richtlinien Gebäudetechnik durch die Geschäftsleitung des AHB am
  4. Mai 2004 in Kraft gesetzt, periodisch überarbeitet"
ausgabe: "Version 2.1, Juli 2008 (vorliegende Fassung am 18. Juni 2008 durch die
  Geschäftsleitung des AHB freigegeben; Dateiname trägt V21)"
gelesen: "alle 7 Seiten des Dokuments, 2026-08-03 (Run 122)"
datenstand: "Juli 2008, Version 2.1 — ⚠ Alterskorpus, Zahlenwerte und insbesondere die
  IMMO-Box/Züri-Netz-Systemarchitektur, Kontaktstellen (IMMO-IST, OIZ) und Standard-Verweise
  vor Verwendung gegen die geltende Fassung pruefen (Dokument ist über 18 Jahre alt; die
  beschriebene stadteigene Informatik-Infrastruktur kann seither ersetzt oder umbenannt
  worden sein)"
status: emerging
last_updated: "2026-08-03 (Run 122)"
---

# Destillat — AHB Zürich Richtlinie GT «Gebäudeautomation» (V2.1, Juli 2008)

## Das Wichtigste in 1 Satz

Die Richtlinie des Amts für Hochbauten (AHB) der Stadt Zürich verlangt für städtische
Bauprojekte eine nach Benutzergruppen (Benutzende, Betreibende, Servicepersonal) und
Bedienebenen (Vorort, Zentral, Fern) gestaffelte, herstellerneutrale Gebäudeautomation und
schreibt für Neu-/Umbauten mit mehr als 1'000 m² Energiebezugsfläche den verpflichtenden
Einsatz des stadteigenen Energiemonitoring-Knotens «IMMO-Box» vor.

## Kernbegriffe, Kennwerte, Tabellen

### Geltungsbereich und Grundprinzipien (Ziff. 1, 2.1)

Gebäudeautomation umfasst laut Definition (S. 2) «alle Einrichtungen zur selbsttätigen
Steuerung, Regelung und Überwachung von gebäudetechnischen Anlagen sowie zur Erfassung von
Betriebsdaten» — vom Einzelregler bis zum vernetzten Automationssystem, inklusive HLK-Regelung,
Beleuchtung, Sonnenschutz und Spezialanlagen. Die Richtlinie deckt grundsätzlich alle
Objektgrössen ab, der Grossteil der Vorgaben gilt aber vor allem für grössere/komplexere
Anlagen.

Zwei verbindliche Steuerungs-/Regelgrundsätze (Ziff. 2.1, S. 2):

| Grundsatz | Anforderung wörtlich |
|---|---|
| bedarfsabhängig | «Jede Anlage ist nur dann in Betrieb, wenn dies erforderlich ist.» Bei verteilten Systemen (Heizung, Lüftung) über die Kette Verbraucher → Verteilung → Erzeugung/Aufbereitung |
| automatisch | «Die Anlagen passen sich automatisch den wechselnden Betriebsbedingungen an (Sommer/Winter, Tag/Nacht, Witterung usw.)» — manuelle Umschalt-Eingriffe durch den Betreiber sind zu vermeiden |

### Bedienschnittstellen nach Benutzergruppe (Ziff. 2.2, S. 2-4)

Drei strikt zu trennende Anwendergruppen:

- Benutzende (BewohnerInnen, Angestellte, Gäste, SchülerInnen): Bedienschnittstellen auf ein
  Minimum beschränkt, intuitiv verständlich, jederzeit möglich (ausser sicherheitsrelevante
  Funktionen), mit Feedback; kein Zugriff auf Betreibenden-/Servicepersonal-Ebenen.
- Betreibende (Hauswartung, technischer Dienst): erweiterte Bedienmöglichkeiten für Wartung,
  Unterhalt, Betriebsoptimierung.
- Servicepersonal (Lieferanten-Personal): zusätzliche, über den Betrieb hinausgehende Funktionen;
  Fernzugriff der Lieferfirma (z.B. bei Kältemaschinen via Telefonmodem) ist objektspezifisch
  festzulegen und sinnvollerweise vertraglich an einen Servicevertrag geknüpft.

### Bedienebenen-Matrix Vorort/Zentral/Fern (Ziff. 2.2.2, Tabelle S. 3)

| Bedienfunktion | Vorort | Zentral | Fern |
|---|---|---|---|
| Wartungsmeldungen, Störungen und Alarme anzeigen/melden | X | X | X |
| Störungen und Alarme quittieren | X | X¹ | (X¹) |
| Wartungsmeldungen, Störungen & Alarme aufzeichnen (History) | (X) | (X) | X |
| Betriebszustände und Messwerte anzeigen | X | X | (X) |
| Betriebszustände und Messwerte aufzeichnen (Trendlog) | (X) | (X) | (X) |
| Sollwerte und Betriebsparameter einstellen | X | X¹ | (X¹) |
| Zeitschaltfunktionen programmieren | X | X¹ | (X¹) |
| Anlagen und Anlageteile ein-/ausschalten | X⁴ | X¹ | (X¹) |
| Zustands- und Störungsprotokolle erstellen | | (X) | |
| Betriebsdaten erfassen und aufbereiten | | | X |
| Statistische Auswertungen erstellen | | | (X) |

Fussnoten: ¹ Schutz vor unautorisiertem Zugriff erforderlich. ⁴ Bei programmierbaren
Steuerungen (DDC/SPS) ist eine zusätzliche, von der anlagespezifischen Steuerungssoftware
unabhängige Notbedienebene erforderlich (z.B. Handschalter auf den Ein-/Ausgabemodulen),
gegen unautorisierte Betätigung geschützt, mit gewährleisteten anlagetechnischen Sicherheiten
(Verriegelungen, Verzögerungen). «( )» = optional, objektspezifisch festzulegen.

Die Vorortbedienung ist immer vorhanden; die Notwendigkeit einer Zentralbedienung hängt von
Anzahl/Komplexität/örtlicher Verteilung der Anlagen sowie Häufigkeit nötiger Bedieneingriffe
ab. Die Fernbedienung dient dem Energiemanagement/Anlagenmonitoring durch die
Immobilien-Bewirtschaftung (Kapitel 3). Ist das Bedienkonzept nicht projektspezifisch im
Pflichtenheft Gebäudetechnik festgehalten, muss es mit den Verantwortlichen der
Gebäudebewirtschaftung abgesprochen und durch die Projektleitung AHB genehmigt werden.

### Überwachung und Alarmierung (Ziff. 2.3, S. 4)

Für jedes Objekt ist ein Störmelde- und Alarmierungskonzept zu erstellen (Abstimmung mit
Gebäudebewirtschaftung). Bei Objekten mit vielen/komplexen Anlagen ist die Überwachung zu
automatisieren; verlangte Prioritätenkette der Erfassung:

1. Vermeidung von Personenschäden
2. Vermeidung von Schäden am Gebäude und dessen Einrichtungen
3. Abweichungen vom normalen Betrieb (Störungen) melden
4. Fälligkeit von Unterhaltsmassnahmen (Wartung) melden

Weitere Anforderungen: Störmeldungen priorisiert und zielgerichtet übermitteln, je nach
Tageszeit (Tag/Nacht) unterschiedlich behandeln, Quittierungspflicht mit Möglichkeit einer
alternativen Adresse bei ausbleibender Quittierung, jedes Ereignis mit eindeutigem Ursprung
und Zeitpunkt, Vermeidung mehrfacher Meldungen derselben Ursache, rekonstruierbarer
Ereignisablauf. Sicherheitsanlagen (Brand-, Wert-, Intrusionsschutz, Zutrittskontrolle) haben
weitgehend dieselben Anforderungen; ein gemeinsames Konzept und Nutzung von Synergien ist
anzustreben (die Richtlinie führt diese sicherheitstechnischen Anforderungen nicht im Detail
aus).

### Betriebsdatenerfassung, -aufbereitung und Energiemanagement (Ziff. 2.4, 3.1-3.8, S. 4-6)

Zwecke der Betriebsdatenerfassung: individuelle Verbrauchsabrechnung (Heizenergie, Warmwasser
usw. pro Nutzungseinheit separat gemessen), Betriebsoptimierung (Soll-/Ist-Vergleich; Werte
nur für Betriebsoptimierung sollen mit mobilen Messgeräten erfasst werden statt fest
installiert), Planung von Wartungs-/Unterhaltsarbeiten (Betriebsstundenerfassung) und
Energiemanagement.

Das stadteigene System heisst **IMMO-Box**: ein programmierbarer, in jedem Gebäude
eingesetzter Knoten der Immobilien-Bewirtschaftung (IMMO), der laufend Energieverbrauch,
wichtige Betriebszustände und den Ölheiztank-Füllstand erfasst, lokal in einer Datenbank
ablegt und die Daten täglich automatisch an eine zentrale Betriebsdatenbank weiterleitet
(Übertragung über das städtische **Züri-Netz**). Zentral werden daraus
Energiebuchhaltung/Rechnungsprüfung/Kostenverteilung sowie Analysen (Kennzahlen, Benchmarks,
Portfolio-Auswertungen, Nachhaltigkeitsrating) erzeugt, zugänglich einheitlich über
Web-Browser.

Einsatzpflicht (Ziff. 3.2, S. 5): «Grundsätzlich soll die IMMO-Box in allen Neu- und Umbauten
mit einer Energiebezugsfläche von mehr als 1'000 m² eingesetzt werden.» Bei Umbauten/
Instandsetzungen hängt der Einsatz vom Umfang der Gebäudetechnik-Erneuerung ab; Entscheid
liegt bei der Abteilung Spezialtechnik der Immobilien-Bewirtschaftung (IMMO-IST).

Weitere IMMO-Box-Vorgaben:
- Objektspezifische Funktionalität (Ziff. 3.3) in Absprache mit IMMO-IST festzulegen:
  Verbrauchserfassung gemäss portfolio-spezifischen Standard-Messschemas, Erfassung von
  Betriebszuständen/Messwerten/Alarmen/Störmeldungen, Zeitschaltprogramme und übergeordnete
  Steuerbefehle.
- Objektspezifische Kennzeichnung (Ziff. 3.4): alle Datenpunkte nach einheitlichem Konzept
  gekennzeichnet, von der Feldgerät-Beschilderung bis zur Visualisierung; Vorgaben im
  AHB-Standard «Kennzeichnungssystem und Beschriftungskonzept» (im gelesenen Dokument nur
  referenziert, nicht inhaltlich ausgeführt).
- Schnittstellen IMMO-Box↔Anlagen (Ziff. 3.5): gemäss Spezifikation der
  IMMO-Box-Standardschnittstellen; Anpassungen/zusätzliche Protokolle mit dem Lieferanten zu
  klären.
- Anbindung ans Züri-Netz (Ziff. 3.6): nicht alle städtischen Gebäude erschlossen; Art der
  Anbindung frühzeitig in Absprache mit OIZ klären, erforderliche Installationen in die
  Elektroplanung einfliessen lassen.
- Schaltschrank (Ziff. 3.7): IMMO-Box separat oder im gemeinsamen Schaltschrank mit anderen
  Regelkomponenten, Standort unter Berücksichtigung von Verkabelungsaufwand und
  Leitungslängen-Begrenzungen.
- Inbetriebsetzung und Test (Ziff. 3.8): Datenpunkttest (Informationsübertragung IMMO-Box↔
  Anlagen), Austesten Visualisierung/übergeordnete Steuerfunktionen, Einrichten der
  Kommunikation IMMO-Box↔zentraler Server, Erweitern der zentralen Datenbank; nach Abschluss
  End-zu-End-Signaltest der gesamten Kommunikations-/Funktionskette vom Feldgerät bis zum
  Bildschirm des Anwenders (und umgekehrt).

### Projektierungsgrundsätze für GA-Systeme (Ziff. 4.1-4.3, S. 7)

Drei Grundsätze für die Planung von Gebäudeautomationssystemen:

- **Hohe Betriebssicherheit und Verfügbarkeit:** Steuer-/Regelaufgaben durch dezentrale,
  autonome Funktionseinheiten (Regler, Steuergeräte, Automationsstationen) nahe am jeweiligen
  Prozess; bei Ausfall der Datenkommunikation oder des übergeordneten Leitsystems muss jede
  Einheit autark weiterfunktionieren; bei Ausfall einer Systemkomponente/der
  Spannungsversorgung darf kein Datenverlust entstehen; Geräteaustausch möglichst ohne
  Konfigurations-/Programmierarbeiten.
- **Erweiterbarkeit:** genügend Ausbaureserven einplanen, **Richtwert 30 %**, bezogen auf
  sämtliche Systemgrenzen (Anzahl Ein-/Ausgänge, Adressraum, Speicherplatz, CPU-Belastung,
  Busbelastung, Leitungslängen usw.).
- **Zukunftssicherheit:** spätere Änderungen/Erweiterungen/Ersatz von Systemteilen sollen ohne
  umfangreiches Reengineering oder Geräteaustausch möglich sein, auch ohne Mitwirkung der
  ursprünglichen Lieferfirma.

Schnittstellen und Standards (Ziff. 4.2): Forderung nach **herstellerunabhängigen,
allgemein verbreiteten Standards** für alle Schnittstellen, über die ganze Lebensdauer des
Systems. Ausnahmen (z.B. bei unverhältnismässig hohem Aufwand) müssen durch die Fachstelle
Energie & Gebäudetechnik des AHB genehmigt werden. Konkrete Protokollnamen (BACnet, KNX,
Modbus o.ä.) werden im gelesenen Dokument **nicht genannt** — die Richtlinie bleibt auf der
Ebene des Grundsatzes.

Systemintegration (Ziff. 4.3): Integration verschiedener Teil-/Subsysteme zu einer
Gesamtlösung nur, wenn erforderlich (kein Selbstzweck); für funktional in sich abgeschlossene
Anlagen (z.B. Storensteuerung) autonome, erprobte Standardlösungen einsetzen; Integrationsart
muss den tatsächlichen Erfordernissen entsprechen (wird z.B. von einem Subsystem nur ein
Freigabesignal plus Betriebs-/Störmeldung benötigt, soll die Integration durch parallele
Signalübertragung erfolgen statt über eine unverhältnismässig aufwändige
Datenkommunikationsschnittstelle); von Hand konfigurierte Datenschnittstellen (Gateways,
Router) sind zu vermeiden; Anzahl verschiedenartiger Kommunikationsnetzwerke (Bussysteme)
möglichst klein halten, Synergien mit betrieblichen Infrastrukturen nutzen (z.B.
Mitbenutzung der universellen Kommunikationsverkabelung); bei Geräten verschiedener
Lieferanten am selben Kommunikationsnetzwerk muss die Gesamtverantwortung für die
Systemintegration klar geregelt sein.

## Bauherren-Transfer

*Eigene Einordnung, nicht Teil des Originaldokuments:*

- Diese Richtlinie ist eine **stadteigene Bauherren-Vorgabe** der Stadt Zürich an ihre
  eigenen Bauten (Verwaltungs-, Schul-, Sportbauten usw.), kein allgemeingültiges Gesetz und
  keine Norm. Für private JANS-Projekte (Healthcare, Wohnbau) ist sie **nicht direkt
  anwendbar**, taugt aber als belegtes Beispiel dafür, wie eine grosse professionelle
  Bauherrschaft ihre GA-Anforderungen strukturiert — nützlich als Formulierungsvorlage für ein
  eigenes Pflichtenheft Gebäudetechnik.
- **Stadteigene Sonderregel, nicht übertragbar:** die IMMO-Box (Ziff. 3) samt Züri-Netz-
  Anbindung und Anbindung an IMMO-IST/OIZ ist eine spezifische städtische
  Informatik-Infrastruktur für das Immobilienportfolio der Stadt Zürich. Für private
  Bauherrschaften ist stattdessen ein herstellerneutrales, marktübliches
  Energiemonitoring-/Submetering-Konzept zu wählen (siehe KB-Destillat
  `energiemonitoring-submetering-grossverbraucher-zh-sz`) — die 1'000-m²-Einsatzschwelle der
  IMMO-Box ist NICHT mit der MuKEn-2025-Monitoring-Pflicht ab 2'000 m² EBF zu verwechseln
  (siehe `sia-386-bacs-gebaeudeautomation`); beide Schwellenwerte stammen aus unterschiedlichen
  Regelwerken und dürfen nicht vermischt werden.
- **Grundsätzlich übertragbar** und für private Bauherrschaften direkt brauchbar sind die drei
  Projektierungsgrundsätze aus Ziff. 4.1 (Betriebssicherheit/Autarkie bei Kommunikationsausfall,
  30-%-Erweiterungsreserve, Herstellerunabhängigkeit der Schnittstellen/Zukunftssicherheit) und
  die Bedienebenen-Matrix Vorort/Zentral/Fern aus Ziff. 2.2.2 — sie geben einer Bauherrschaft
  eine handhabbare Checkliste, um vom Fachplaner ein GA-Pflichtenheft einzufordern, ohne
  technisches Detailwissen zu benötigen.
- **Was das für eine Bauherrschaft entscheidungsrelevant heisst:** die 30-%-Ausbaureserve und
  die Herstellerneutralitäts-Forderung sind Investitionsentscheide mit unmittelbarer
  Kostenwirkung (ein offenes, herstellerneutrales System ist in der Erstellung tendenziell
  teurer, spart aber spätere Lock-in-Kosten beim Servicevertrag und beim Ersatz einzelner
  Komponenten). Diese Abwägung sollte in jedem Pflichtenheft Gebäudetechnik explizit
  entschieden werden, unabhängig von der Objektgrösse.
- **Verweis statt Doppelung:** die technischen BACS-Klassen (A-D nach SIA 386.111:2022/
  SN EN ISO 52120-1:2021), die MuKEn-2025-Monitoring-Pflicht ab 2'000 m² EBF (Art. D.1.23)
  und die Aussage, dass Minergie keine Automation verlangt, stehen bereits belegt im
  KB-Destillat `sia-386-bacs-gebaeudeautomation` — hier nicht wiederholt. Ebenso verweist
  dieses Destillat für Submetering-/Messkonzept-Details bei privaten Grossverbrauchern auf
  `energiemonitoring-submetering-grossverbraucher-zh-sz`.

## Offene Punkte

- Das Dokument nennt **keine konkreten Protokollnamen** (kein BACnet/KNX/Modbus/LON
  ausdrücklich erwähnt) — die Herstellerneutralitäts-Forderung bleibt auf Grundsatzebene; für
  eine konkrete Protokollwahl müsste der AHB-Standard «Kennzeichnungssystem und
  Beschriftungskonzept» sowie die «Spezifikation der Standard-Schnittstellen der IMMO-Box»
  beigezogen werden — beide werden nur referenziert, liegen dieser Destillation nicht vor.
- Keine Datenpunktlisten im Detail (nur Kategorien: Verbrauchserfassung, Betriebszustände,
  Messwerte, Alarme, Störmeldungen, Zeitschaltprogramme, Steuerbefehle) — die tatsächliche
  Datenpunktliste wird objektspezifisch mit IMMO-IST festgelegt und ist nicht Teil dieser
  Richtlinie.
- Unklar, ob und wie die IMMO-Box/Züri-Netz-Infrastruktur seit 2008 ersetzt oder umbenannt
  wurde (Alterskorpus-Warnung, siehe Frontmatter `datenstand`) — vor jedem konkreten Verweis
  auf «IMMO-Box» gegenüber einer Bauherrschaft oder Behörde die aktuelle Bezeichnung bei der
  Stadt Zürich verifizieren.
- Keine Zahlenangaben zu Kosten der IMMO-Box-Installation oder zu Amortisationszeiten des
  Energiemonitorings — nicht Gegenstand dieses Dokuments.
- Sicherheitsanlagen (Brand-, Wert-, Intrusionsschutz, Zutrittskontrolle) werden nur am Rand
  erwähnt («weitgehend dieselben Anforderungen» wie Störmeldungen) und nicht im Detail
  ausgeführt — verweist implizit auf andere Richtlinien/Fachplaner (Brandschutz gemäss
  Skill `brandschutz` separat behandeln, hier nicht ausgebreitet).
