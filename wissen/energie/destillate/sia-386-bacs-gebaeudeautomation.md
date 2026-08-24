---
quelle: "SIA 386.111:2022 'Energieeffizienz von Gebäuden – Teil 1: Einfluss von Gebäudeautomation und Gebäudemanagement' (SIA-Übernahme von SN EN ISO 52120-1:2021, korrigierte Fassung 2022-09; Nachfolgenorm der Reihe SIA 386.110 → SIA 386.111:2017 → SIA 386.111:2022); MuKEn 2025, 'Projekt MuKEn 2025, Stand 29.08.2025' (EnDK, Volltext-PDF endk.ch/wp-content/uploads/2026/04/MuKEn2025_d-2025-08-29.pdf), dort Art. 1.23 'Gebäudeautomation (V)', Teil D 'Anforderungen an gebäudetechnische Anlagen'; Minergie-Vergleichstabelle 'Minergie im Kontext der MuKEn 2025' (Stand 01.01.2026); BAFU-gehostete TU-Dresden-Kurzstudie Felsmann 2017 zu EN-15232-Effizienzfaktoren; eu.bac-Kostenstudie 2024 (EU-Verband)"
herausgeber: "SIA (Norm kostenpflichtig, Metadaten amtlich via shop.sia.ch); EnDK (MuKEn 2025); Verein Minergie (offizielle PDF-Vergleichstabelle minergie.ch); BAFU/TU Dresden Institut für Energietechnik, Prof. Clemens Felsmann (Kurzstudie, gehostet auf bafu.admin.ch); eu.bac European Building Automation and Controls Association (Kostenstudie 2024, EU-Durchschnitt, zitiert Fallstudie Albesiano et al.)"
ausgabe: "SIA 386.111 Ausgabe 2022, gültig ab 01.09.2022 (Vorgänger SIA 386.111:2017 archiviert seit 31.08.2022, davor SIA 386.110:2012 archiviert seit 30.11.2017, SIA 386.110:2007 noch älter); Bezugsnorm SN EN ISO 52120-1:2021 (korr. 2022-09); MuKEn 2025 verabschiedet EnDK 29.08.2025, Dokument 'Projekt MuKEn 2025, Stand 29.08.2025', 117 Seiten; Minergie-Vergleichstabelle Stand 01.01.2026"
gelesen: "shop.sia.ch Produktseiten SIA 386.110/2007, SIA 386.110/2012, SIA 386.111 (amtliche Normmetadaten, Ausgabejahre, Gültig-ab-/Archiviert-seit-Daten, Preise, Nachfolgeregelung – 2026-07-25); endk.ch/wp-content/uploads/2026/04/MuKEn2025_d-2025-08-29.pdf (amtliches EnDK-Basismodul-Volltext-PDF, 117 Seiten, gefunden über endk.ch/publikationen/, per curl+PyPDF2 vollständig gelesen — Art. 1.23 im Original-Wortlaut, 24.08.2026); energiehub-gebaeude.ch (MuKEn-2025-Fachportal, Art.-1.23-Zusammenfassung, jetzt nur noch Hintergrund, nicht mehr einzige Quelle); minergie.ch/media/minergie_im_kontext_der_muken_2025.pdf (offizielle Minergie-PDF-Vergleichstabelle Minergie V2026.1 vs. MuKEn 2025, Stand 01.01.2026, per curl+pdftotext im Volltext gelesen); bafu.admin.ch/dam/it/sd-web/yzkzzz7aRAt3/Bewertung-effizienter-Regelung-in-Gebaeuden.pdf (TU-Dresden-Kurzstudie Felsmann, 15.03.2017, per curl+pdftotext im Volltext gelesen, inkl. Tabelle 1 'Desaggregieren der Effizienzfaktoren gemäss EN 15232'); eubac.org 2024-eu.bac-Studie 'Building Automation and Control Systems Impact on EPC Classes in Europe' (per curl+pdftotext im Volltext gelesen); minergie.ch/media/reglement_modul_monitoring-v2025.1.pdf und modul_raumkomfort_v1.4.0.pdf (per WebFetch geprüft, keine Automations-/BACS-Treffer); mega-planer.ch/aktuelles/normierungen (CH-Fachverband Gebäudeautomationsplaner, Normliste); Minergie-Anwendungshilfe 2025-2 (per WebFetch geprüft, keine Automations-Treffer im extrahierbaren Text)"
datenstand: "2026-08-24 (MuKEn-2025-Art.-1.23-Wortlaut jetzt direkt am amtlichen EnDK-PDF verifiziert, Stand des Dokuments 29.08.2025); SIA-Normstatus per shop.sia.ch-Abfrage 2026-07-25 amtlich verifiziert; EN-15232-Effizienzfaktoren primärquellennah für Wohngebäude belegt (BAFU-Studie), Nichtwohngebäude-Tabelle weiterhin nicht belegt; CH-spezifische Investitionskosten weiterhin nicht belegt (nur EU-Durchschnittszahl aus eu.bac-Studie)"
status: established
last_updated: "2026-08-24 (Art. 1.23 im Original-Wortlaut am amtlichen EnDK-Basismodul-PDF verifiziert, Artikelnummer korrigiert D.1.23→1.23, siebte Monitoring-Funktion c ergänzt, Offener Punkt geschlossen)"
---

# Destillat — SIA 386 / BACS-Effizienzklassen: Gebäudeautomation im Energienachweis

## Das Wichtigste in 1 Satz
Die BACS-Effizienzklassen A–D (Building Automation and Control Systems) bewerten, wie stark
Gebäudeautomation den Energiebedarf eines Gebäudes senkt (Klasse C = Referenz, A = beste
Einsparung, D = ineffizient); in der Schweiz normiert heute **SIA 386.111:2022** (Übernahme von
**SN EN ISO 52120-1:2021**) dieses Verfahren, während die Pflicht zu Automation in der Praxis
funktional über **MuKEn 2025 Art. 1.23** (Teil D, Monitoring-Pflicht ab 2'000 m² EBF bei
Nichtwohn-Neubauten) und nicht über eine vorgeschriebene BACS-Klasse greift; **Minergie verlangt
explizit keine Gebäudeautomation** (nur ein eigenes, tiefer schwellendes Monitoring-Modul).

> **Querbezug KB `normen` (Fundstelle/Ausgabe, gesetzt Wissens-Chef Run 31, 13.08.2026):** Die
> Ausgaben- und Gültigkeitshistorie unten war bis zum 13.08.2026 **nur hier** geführt und in der
> für Norm-Fundstellen führenden KB `normen` gar nicht registriert (0 Treffer für «386», «BACS»,
> «52120»). Sie ist jetzt als Registerzeile **SIA 386.111** in `wissen/normen/wiki/REGISTER.md`
> nachgezogen — dort ohne Inhaltsaussage, weil der Volltext nicht im Bestand ist. **Dieses
> Destillat bleibt Träger des Primärbelegs** (shop.sia.ch, abgerufen 25.07.2026); die
> Registerzeile verweist hierher, statt zu kopieren (Muster wie SWKI/Electrosuisse,
> `wissen/koordination/QUERBEZUEGE.md`). Ändert sich der Fassungsstand, ist er in **beiden**
> Dateien nachzuziehen.

## Wichtige Korrektur gegenüber dem ersten Entwurf (Run 105)
Der bisherige Arbeitstitel dieses Destillats («SIA 386.110») bezeichnet die **veraltete** Norm-
Vorstufe. Amtlich verifiziert über die SIA-Shop-Produktseiten (shop.sia.ch, 2026-07-25):

| Ausgabe | Status | Bezugsnorm | Preis |
|---|---|---|---|
| SIA 386.110:2007 | archiviert | SN EN 15232 | CHF 112.– |
| SIA 386.110:2012 (gültig ab 01.04.2012) | **archiviert seit 30.11.2017**, abgelöst durch SIA 386.111 | SN EN 15232 | CHF 136.– |
| SIA 386.111:2017 | **archiviert seit 31.08.2022** | SN EN 15232-1 (Module M10-4 bis M10-10) | – |
| **SIA 386.111:2022 (gültig ab 01.09.2022, aktuell)** | **gültig** | **SN EN ISO 52120-1:2021, korr. 2022-09** | **CHF 144.–** |

Vollständiger aktueller Titel: «Energieeffizienz von Gebäuden – Teil 1: Einfluss von
Gebäudeautomation und Gebäudemanagement (ISO 52120-1:2021, korrigierte Fassung 2022-09)»,
A4, broschiert, 118 Seiten (Quelle: shop.sia.ch, Produktseite SIA 386.111, D, 2026-07-25).
**Für JANS-Erzeugnisse ab sofort SIA 386.111:2022 zitieren, nicht mehr SIA 386.110.**

## Einordnung: warum diese Norm existiert
SIA 386.111 übernimmt die europäische Norm zur Gebäudeautomation ins Schweizer Normenwerk.
Die heutige Fassung basiert auf der ISO-52120-Reihe (Nachfolgerin von EN 15232) und liefert wie
ihre Vorgängerin zwei Berechnungsmethoden, um den Einfluss von Gebäudeautomation und
Gebäudemanagement auf die Energieeffizienz abzuschätzen: eine **einfache Faktoren-Methode**
(Multiplikator auf den Energiebedarf, abhängig von der BACS-Klasse) und ein **detailliertes
Verfahren**, das die geplanten Automationsfunktionen einzeln bewertet.

**Normtext weiterhin kostenpflichtig (CHF 144.–), hier nur Metadaten + externe Sekundärstudie
zu den Vorgänger-Effizienzfaktoren.** Die exakten Faktorentabellen der aktuellen Ausgabe
SIA 386.111:2022 / ISO 52120-1:2021 liegen weiterhin nicht frei zugänglich vor.

## Die vier BACS-Klassen A–D (Kernbegriffe)

| Klasse | Charakterisierung | Typische Funktionen (Sekundärquellen-Konsens) |
|---|---|---|
| **D** | Nicht energieeffizient | Keine/minimale Automation, rein manuelle Steuerung, keine Zeitprogramme, keine Sensorik |
| **C** | Standard-Automation, **Referenzklasse (Faktor = 1)** | Zeitgesteuerte Heizung/Lüftung/Beleuchtung nach starrem Zeitplan, keine Echtzeit-Anpassung |
| **B** | Fortgeschrittene Automation | Einzelraumregelung Heizung/Kühlung, bedarfsgeführte/präsenzabhängige Lüftung und Beleuchtung, zentrale Überwachung mit Trenderfassung |
| **A** | Hocheffiziente/integrierte Automation | Vollintegrierte, vernetzte Systeme: automatische Bedarfserfassung je Raum, Vernetzung mit optimierten Erzeugeranlagen, technisches Gebäudemonitoring |

**Faktorlogik:** Klasse C = 1 (Referenz), Klasse D > 1 (verschlechtert den rechnerischen Bedarf),
Klassen A und B < 1 (verbessern ihn) — Klasse D entspricht ineffizienter Automation, nicht deren
völligem Fehlen.

### Erstmals primärquellennah belegte Effizienzfaktoren (Wohngebäude, EN 15232 Tabelle 10/12)
Die BAFU-gehostete TU-Dresden-Kurzstudie (C. Felsmann, «Bewertung effizienter Regelung in
Gebäuden – Kurzstudie zur Bestimmung desaggregierter Effizienzfaktoren in Anlehnung an EN
15232», Dresden 15.03.2017, bafu.admin.ch) zitiert die **konkreten GA-Gesamteffizienzfaktoren
der EN 15232** (Vorgängernorm der heutigen SIA 386.111/ISO 52120-1) — «Tabelle 1: Desaggregieren
der Effizienzfaktoren gemäss EN 15232», hier für **Wohngebäude**:

| Bereich | Klasse C | Klasse B | Klasse A | Einsparung C→A |
|---|---|---|---|---|
| Raumheizung (Funktionen 1.1–1.5, Tabelle 10 EN 15232) | 1,00 | 0,88 | 0,81 | 19 % |
| Trinkwassererwärmung (Funktionen 2.2–2.4, Tabelle 12 EN 15232) | 1,00 | 0,90 | 0,80 | 20 % |

Zusatzangaben aus derselben Studie: Der Wechsel von Klasse C auf B erreicht bei der Raumheizung
**63,2 %** der maximal möglichen Einsparung (C→A), bei der Trinkwassererwärmung **50 %**.
**Wichtige Einschränkung:** Diese Zahlen stammen aus der **EN 15232** (Vorgängernorm, Basis der
archivierten SIA 386.110/386.111:2017) für den **Wohngebäude**-Fall Raumheizung/Warmwasser.
Die entsprechende **Nichtwohngebäude-Tabelle** (Büro/Schule/Hotel je BACS-Klasse) konnte in
dieser Recherche **nicht aus einer belastbaren Quelle verifiziert** werden — kursierende Zahlen
aus Web-Suchsnippets (z.B. «Klasse A 0,70/0,80/0,68» für Büro/Schule/Hotel) sind **nicht
primärquellennah belegt und werden hier bewusst nicht übernommen**. Ob die aktuelle
ISO-52120-1:2021-Fassung dieselben Faktoren wie EN 15232 verwendet oder sie revidiert hat,
ist ebenfalls offen (SIA 386.111:2022 selbst nicht im Volltext zugänglich).

## Schweizer Praxisbezug: wo BACS/Gebäudeautomation heute konkret verlangt wird

1. **MuKEn 2025, Basismodul Teil D «Anforderungen an gebäudetechnische Anlagen», Art. 1.23
   «Gebäudeautomation (V)» — jetzt am amtlichen EnDK-Original-PDF im Wortlaut verifiziert**
   (`MuKEn2025_d-2025-08-29.pdf`, endk.ch, Stand 29.08.2025, S. 31/117, gefunden über
   endk.ch/publikationen/, 24.08.2026): *«Neubauten der Kategorien III bis XII (Norm SIA 380/1)
   mit mindestens 2000 m² EBF sind mit Einrichtungen zur Gebäudeautomation auszurüsten, die
   folgende Überwachungsfunktionen aufweisen:»*
   a) Erfassung der Energieverbrauchsdaten getrennt nach Hauptenergieträger,
   b) Ermittlung der Energieeffizienz-Kennzahlen der Wärmepumpen und Kältemaschinen,
   c) **Ermittlung der Energieeffizienz-Kennzahlen von Wärmerückgewinnungs- und
   Abwärmenutzungsanlagen** — bislang in diesem Destillat fälschlich fehlende siebte Funktion,
   jetzt ergänzt,
   d) Erfassung der Betriebszeiten der Hauptkomponenten für Aufbereitung und Verteilung von
   Wärme, Kälte und Luft,
   e) Erfassung der wichtigsten Vor- und Rücklauftemperaturen sowie einiger repräsentativer
   Raumlufttemperaturen **und der Aussentemperatur** (Aussentemperatur bislang in der
   Zusammenfassung übergangen),
   f) benutzerfreundliche Darstellung der Daten a–e an zentraler Stelle für mindestens Jahr,
   Monat (oder Woche), Tag, je Tag mindestens eine Periode während und eine ausserhalb
   Nutzungszeit,
   g) benutzerfreundliche Vergleichsmöglichkeiten mit aussagekräftigen Vorperioden.
   **Korrektur gegenüber dem bisherigen Stand dieses Destillats:** Die amtliche Artikelnummer
   lautet **«Art. 1.23»** (fortlaufende Basismodul-Nummerierung), nicht «Art. D.1.23» — «D»
   bezeichnet nur den Teil-Buchstaben («Teil D»), ist aber nicht Bestandteil der Artikelnummer
   selbst. Ausserdem hatte die bisherige, aus zwei Sekundärquellen (energiehub-gebaeude.ch,
   Minergie-Vergleichstabelle) rekonstruierte Liste nur sechs statt sieben Funktionen genannt —
   Funktion c) fehlte vollständig, Funktion e) nannte die Aussentemperatur nicht. Bei
   Erneuerungen macht MuKEn 2025 laut Minergie-Vergleichstabelle weiterhin **keine Vorgaben** zu
   Art. 1.23. **Weiterhin bestätigt, jetzt am Originaltext:** keine explizite BACS-
   Effizienzklasse (A/B/C/D) wird in Art. 1.23 genannt — die Pflicht ist funktional (die
   Überwachungsfunktionen a–g als «Stand der Technik»), nicht klassenbasiert.

2. **Minergie: explizit KEINE Gebäudeautomations-Pflicht, kein Automations-«Bonus».** Die
   offizielle Minergie-Vergleichstabelle (minergie.ch/media/minergie_im_kontext_der_muken_2025.pdf,
   Stand 01.01.2026, Zeile «D 1.23 Monitoring/Gebäudeautomation») stellt Minergie V2026.1 der
   MuKEn 2025 direkt gegenüber:
   - **Minergie Neubau:** «Monitoring für Gebäudekategorien ab 1'000 m², bei Minergie-A für alle
     Projekte, **keine GA**» — die Monitoring-Schwelle ist mit 1'000 m² **tiefer** als die
     MuKEn-Schwelle (2'000 m²), bei Minergie-A gilt sie unabhängig von der Fläche für **alle**
     Projekte; explizit **keine** Gebäudeautomations-(GA-)Pflicht und damit kein BACS-Klassen-
     Bonus.
   - **Minergie Erneuerung:** «Pflicht ab 1'000 m² bei wesentlichen Eingriffen in Gebäudetechnik
     (**keine GA**)».
   Damit ist die frühere offene Frage «gibt es einen Minergie-Automations-Bonus» primärquellen-
   belegt **verneint**: Minergie regelt ein eigenständiges, strengeres Monitoring-Modul, aber
   keinen Bonus über die BACS-Klassifizierung A–D. Ergänzend geprüft (keine Treffer im
   extrahierbaren Text): Minergie-Anwendungshilfe 2025-2, Reglement Minergie-Modul Monitoring
   v2025.1, Reglement Minergie-Modul Raumkomfort v1.4.0.

3. **Kt. Zürich, Energienachweis EN-141 «Gebäudeautomation»** (Teil der «Speziellen Bauten» im
   EN-ZH-/EVEN-Formularkatalog, vgl. `[[en-zh-nachweis-uebersicht]]` und `[[private-kontrolle-zh]]`):
   ein eigenständiges Nachweisformular existiert — Inhalt/Schwelle des Formulars selbst wurde in
   dieser Recherche weiterhin nicht im Detail geöffnet (liegt als PDF im Projektordner
   `PL - 04 Energie`, nicht web-recherchiert); plausibel deckungsgleich mit der MuKEn-Art.-D.1.23-
   Monitoring-Pflicht.

4. **Betriebsoptimierung HLKKSE (§ 13d EnerG ZH, MuKEn Modul 7)** — bereits vertieft in
   `[[muken-2025-modul-7-betriebsoptimierung-hlkkse]]`: Gebäudeautomation ist dort explizit eines
   der Gewerke (HLKKSE **+ Gebäudeautomation**), für die ab 200'000 kWh Stromverbrauch/Jahr die
   dreijährliche Erstoptimierung + 10-jährige Dokumentationspflicht gilt (auch von der Minergie-
   Vergleichstabelle bestätigt: Zeile «M7 Betriebsoptimierung» identisch 200'000 kWh/a für MuKEn
   und Minergie-Betrieb). Funktionierende BACS ist damit indirekt Voraussetzung, um die
   Betriebsoptimierung überhaupt nachweisbar zu erbringen.

5. **EU-Kontext (nicht direkt CH-Recht, Vergleichsdruck):** Die EU-Gebäuderichtlinie EPBD verlangt
   für grosse Nichtwohnbauten ab einer bestimmten Anlagenleistung Gebäudeautomation mindestens
   der Klasse B (Websuche-Konsens deutscher Fachportale, nicht amtlich verifiziert für die
   Schweiz). Für die Schweiz gilt das nicht direkt.

6. **SIA 380/1 / Behaglichkeitsblatt** (bereits in `[[behaglichkeit-raumklima-kbob-ipb]]` notiert):
   SIA 386.111 wird dort als Grundlage für den Heizwärmebedarfs-/Raumklima-Nachweis aufgeführt
   (Backlink-Artikel nennt noch die alte Norm-Bezeichnung 386.110:2012 — dort bei Gelegenheit auf
   386.111:2022 nachführen).

## Investitionskosten — weiterhin keine belastbare CH-Zahl, aber jetzt eine seriöse EU-Referenz
Es wurde weiterhin **keine belastbare, quellenfeste CHF-Zahl** für die Mehrkosten einer besseren
BACS-Klasse (z.B. Klasse B statt C) bei einem typischen Schweizer MFH oder Gewerbebau gefunden.
Neu gefunden, aber **explizit nicht CH-spezifisch**: Die eu.bac-Studie 2024 («Building Automation
and Control Systems Impact on EPC Classes in Europe», European Building Automation and Controls
Association, eubac.org, im Volltext gelesen) zitiert für eine **110 m² grosse Wohnung** (Fallstudie
Albesiano et al., italienischer Kontext, EU-Durchschnittswerte) folgende Grössenordnungen:
- **BACS Klasse B:** rund **EUR 1'400** Investition (≈ 13 EUR/m²), 20 % Energieeinsparung,
  Amortisation ≈ 3 Jahre (PBT 2,9 Jahre), ROI ≈ 376 % über 10 Jahre Lebensdauer.
- **BACS Klasse A:** rund **EUR 2'850** Investition (≈ 26 EUR/m²), 26 % Energieeinsparung,
  Amortisation ≈ 4 Jahre (PBT 3,9 Jahre), ROI ≈ 204 % über 10 Jahre.
- Reine Heiz-/Kühl-Automation allein: rund **EUR 10/m²**; für die volle BACS-Klasse A (inkl.
  Licht, Lüftung, BMS) macht Heiz-/Kühl-Automation nur rund **10 %** der Gesamtinvestition aus.

**Diese Zahlen sind ein EU-Durchschnitt/eine Einzel-Fallstudie (Wohnung, Italien), keine
Schweizer Marktzahl und kein Gewerbe-/Healthcare-Massstab (JANS-Fokus).** Für eine Bauherren-
taugliche CH-Aussage müsste weiterhin ein HLK-/Elektroplaner oder ein GA-Fachplaner-Kostenkennwert
aus einem realen JANS-Projekt herangezogen werden — **bewusst nicht als CH-Kennwert übernommen.**

## Bauherren-Transfer
1. **«Muss ich für mein Projekt eine bestimmte BACS-Klasse nachweisen?»** — In der Schweiz gibt es
   heute **keine belegte Pflicht zu einer bestimmten BACS-Klasse A/B/C/D**. Verlangt wird
   stattdessen ab **2'000 m² EBF bei Nichtwohn-Neubauten** (MuKEn 2025 Art. 1.23) eine
   Gebäudeautomation mit bestimmten Monitoring-Funktionen (a–g, siehe oben). Bei Minergie-Zertifi-
   zierung greift zusätzlich das eigene, tiefer schwellende Minergie-Monitoring-Modul (ab
   1'000 m², bei Minergie-A immer) — auch dort **keine** BACS-Klassenpflicht.
   **Geltungsstatus präzisiert (Run 118, Cross-Check zu `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`):**
   Im **Kanton Zürich gilt heute effektiv eine höhere, nicht die MuKEn-2025-Schwelle** — § 41a BBV I
   (LS 700.21, amtlich am Primärtext verifiziert) verlangt Gebäudeautomation nach EN-141 erst ab
   **5'000 m² EBF** bei Neubauten der Gebäudekategorien III–XII. Die MuKEn-2025-Schwelle von
   2'000 m² (Art. 1.23) ist **verabschiedet, aber Stand Juli 2026 noch nicht ins ZH-Recht
   überführt** — für ein heute eingereichtes ZH-Baugesuch bleibt die 5'000-m²-Schwelle massgebend.
   Ein Pflegeheim/Bürobau zwischen 2'000 und 5'000 m² EBF unterliegt damit in ZH **heute noch
   keiner Automationspflicht**, sollte aber angesichts der absehbaren Verschärfung vorsorglich
   geplant werden.
2. **«Lohnt sich eine bessere BACS-Klasse finanziell?»** — Die Normlogik (SIA 386.111 / SN EN ISO
   52120-1, methodisch identisch zur Vorgängernorm EN 15232) ist darauf ausgelegt, genau diese
   Frage rechnerisch zu beantworten: Klasse C ist die neutrale Referenz, A/B rechnen sich
   rechnerisch besser, D schlechter. Für Wohngebäude zeigt die dokumentierte EN-15232-Rechnung
   rund **19 % Heizenergie-Einsparung** und **20 % Warmwasser-Einsparung** beim Wechsel C→A (siehe
   Tabelle oben) — als Grössenordnung, nicht als verbindliche SIA-386.111-Zahl. Eine belastbare
   CHF-Antwort für die Schweiz kann JANS weiterhin **nicht** pauschal geben — projektspezifisch
   mit dem HLK-/Elektroplaner durchzurechnen.
3. **«Wo taucht Gebäudeautomation in meinem Energienachweis auf?»** — Im Kt. ZH über das eigene
   EN-141-Formular (Teil des EN-ZH-/EVEN-Formularsatzes) sowie indirekt über die
   Betriebsoptimierungspflicht (HLKKSE + GA) ab 200'000 kWh Stromverbrauch/Jahr.
4. **Einordnung für Healthcare-/Gewerbeprojekte (JANS-Fokus):** Ein Pflegeheim/Spital ab rund
   3'000–7'000 m² EBF überschreitet ohnehin regelmässig sowohl die 2'000-m²-MuKEn-Schwelle als
   auch die 200'000-kWh-Schwelle für die Betriebsoptimierung (vgl.
   `[[muken-2025-modul-7-betriebsoptimierung-hlkkse]]`) — eine funktionierende Gebäudeautomation
   mit Monitoring ist damit faktisch Voraussetzung, unabhängig von einer formalen BACS-Klasse.

## Offene Punkte (weiterhin ungeklärt trotz neuem Recherchezugang)
- **GESCHLOSSEN 24.08.2026:** Literal-Wortlaut MuKEn 2025 Art. 1.23 jetzt direkt am amtlichen
  EnDK-Basismodul-PDF gelesen (`MuKEn2025_d-2025-08-29.pdf`, gefunden über endk.ch/publikationen/,
  vollständig mit PyPDF2 extrahiert). Artikelnummer korrigiert (**1.23**, nicht «D.1.23»), siebte
  Monitoring-Funktion c) Wärmerückgewinnungs-/Abwärmenutzungs-Effizienzkennzahlen ergänzt (fehlte
  in der bisherigen Sekundärquellen-Zusammenfassung vollständig), Funktion e) um Aussentemperatur
  präzisiert. Die beiden bisherigen Sekundärquellen (energiehub-gebaeude.ch, Minergie-
  Vergleichstabelle) waren in den übernommenen sechs Punkten inhaltlich korrekt, aber
  unvollständig — kein Widerspruch, sondern eine Auslassung.
- **Aktuelle SIA-386.111:2022-Effizienzfaktoren (Klassen A–D, differenziert nach Gebäudekategorie)**
  liegen weiterhin hinter der Kostenpflicht der Norm (CHF 144.–) — nicht belegt. Die hier zitierten
  Zahlen (0,88/0,81 Heizung, 0,90/0,80 Warmwasser) stammen aus der **Vorgängernorm EN 15232**
  (Wohngebäude) und wurden aus einer BAFU-gehosteten Sekundärstudie übernommen, nicht aus der
  aktuellen ISO-52120-1-Fassung selbst.
- **Nichtwohngebäude-Effizienzfaktoren** (Büro/Schule/Hotel je Klasse) weiterhin nicht aus einer
  belastbaren Quelle verifiziert.
- **Investitionskosten-Delta je BACS-Klasse für die Schweiz** (MFH/Gewerbebau/Healthcare) weiterhin
  keine CH-Quelle gefunden — die neue eu.bac-Zahl ist EU-Durchschnitt/Wohnungs-Fallstudie, kein
  CH-Kennwert. Als Aufgabe für ein konkretes Projekt mit realem Planerangebot vorzumerken.
- **EN-141-Formularinhalt (Kt. ZH)** — **ERLEDIGT (Run 118):** § 41a BBV I (5'000 m² EBF-
  Schwelle, sieben Monitoring-Funktionen a–g) am amtlichen Primärtext verifiziert in
  `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`; dort auch der Kt.-SZ-Negativbefund
  (keine EN-141-Analogie).

## Backlinks
- [[behaglichkeit-raumklima-kbob-ipb]] — nennt SIA 386.110:2012 bereits als Normbezug im
  Raumklima-/Heizwärmebedarfs-Kontext; bei Gelegenheit auf SIA 386.111:2022 nachführen.
- [[en-zh-nachweis-uebersicht]] — listet EN-141 „Gebäudeautomation" im ZH-Formularkatalog.
- [[private-kontrolle-zh]] — Formularübersicht mit Zeile 141 „Gebäudeautomation".
- [[energiemonitoring-submetering-grossverbraucher-zh-sz]] — § 41a BBV I im Volltext (5'000 m²
  EBF, sieben Monitoring-Funktionen), MuKEn-2025-Verschärfung auf 2'000 m² noch nicht in ZH-Recht
  überführt (Stand Juli 2026), Kt.-SZ-Negativbefund.
- [[muken-2025-modul-7-betriebsoptimierung-hlkkse]] — Betriebsoptimierungspflicht HLKKSE + GA, an
  die eine funktionierende Gebäudeautomation faktisch gekoppelt ist.
