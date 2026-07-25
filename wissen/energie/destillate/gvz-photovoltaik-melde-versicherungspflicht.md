---
quelle: GVZ-Formular «Dokumentation Photovoltaikanlage» (21photovoltaikanlagen-doku-pm.pdf, Stand
  April 2021) + VKF-Brandschutzmerkblatt «Solaranlagen» (2001-15de, gültig ab 01.01.2022) +
  GVZ-Medienmitteilung «Schweizweit einheitlicher Brandschutz für Fassaden: Für Photovoltaikanlagen
  gelten bewährte Schutzregeln» (22.05.2023)
herausgeber: Gebäudeversicherung Kanton Zürich (GVZ); Vereinigung Kantonaler Feuerversicherungen (VKF)
ausgabe: GVZ-Formular April 2021 (Feld «Erstellt … April 2021 / Sk/we»); VKF-Merkblatt 2001-15de,
  Ausgabe 01.01.2022 (genehmigt durch die Technische Kommission Brandschutz VKF am 08.12.2021);
  Medienmitteilung vom 22.05.2026
gelesen: 2026-07-25 (Sonnet-Rechercheagent), curl+pdftotext -layout aus
  https://www.gvz.ch/_file/1661/21photovoltaikanlagen-doku-pm.pdf (GVZ-Formular, 1 Seite, AcroForm)
  und https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-197.pdf/content
  (VKF-Merkblatt, 15 Seiten); Medienmitteilung per curl+HTML-Textextraktion von
  https://www.gvz.ch/topnavigation/medien/medienmitteilungen?id=47724016-2205-4EEB-8B85-6B299828BDBD
datenstand: 2026-07-25
status: established (beide Primärquellen ziffern-/wortgenau ausgelesen und zitiert; die genaue
  Einbettung des GVZ-Formulars in einen verbindlichen Melde-Workflow gegenüber der GVZ selbst bleibt
  offen, siehe unten)
last_updated: 2026-07-25
---

# Destillat — GVZ-Formular «Dokumentation Photovoltaikanlage» und VKF-Feuerwehr-Auflagen für Solaranlagen

## Das Wichtigste in 1 Satz
Das gesuchte GVZ-PDF `21photovoltaikanlagen-doku-pm.pdf` ist **kein Merkblatt mit Fliesstext**,
sondern ein **ausfüllbares Feuerwehr-Dokumentationsformular** (Stand April 2021) für die Lage von
PV-Komponenten inkl. Batterien am Gebäude; die dahinterliegende **Pflicht, eine solche Dokumentation
zu erstellen und der Feuerwehr abzugeben**, steht explizit im nationalen VKF-Brandschutzmerkblatt
«Solaranlagen» (2001-15de, gültig ab 01.01.2022) — dort auch die einzige gefundene GVZ-nahe Aussage
zu **Hagel** als eigenständige Naturgefahren-Anforderung an PV-Module.

## Kernpunkte

### 1. Das GVZ-Formular selbst (curl+pdftotext, Volltext vollständig ausgelesen)
`21photovoltaikanlagen-doku-pm.pdf` ist ein 1-seitiges, interaktives PDF-Formular (AcroForm,
JavaScript-gestützt, Adobe InDesign/Acrobat erzeugt, Fussvermerk «April 2021 / Sk/we»). Wörtlicher
Kopftitel: «Dokumentation «Photovoltaikanlage»». Enthaltene Felder (vollständig, aus dem Textlayout):

- Projekt-Nr., **GVZ-Nr.**, Datum, PV-Fläche (m²)
- Kunde: Name, Strasse/Nr., PLZ/Ort, Tel.-Nr.
- Aufstellort der PV-Anlage: Strasse/Nr., PLZ/Ort
- Erstellt durch (Installationsfirma): Name, Strasse/Nr., PLZ/Ort, Tel.-Nr.
- Beilagen: Checkbox **«Strangplan»**
- Legende zum Plan: **PV-Generator, spannungsführende Leitung, Wechselrichter,
  DC-Trenneinrichtung, Schaltstelle, Batterien**
- Checkbox **Blitzschutzsystem: ja / nein**

Die Auswertung der eingebetteten Formularfelder (pypdf) bestätigt zusätzlich ein Dropdown-Feld
für die Planbeilage mit den Optionen «Bitte wählen:» / «siehe Beilage» / «Bild importieren (nur mit
Adobe Pro)» — das Formular ist also für die **Beilage eines Lageplans/Strangplans mit eingezeichneten
Anlageteilen** konzipiert, nicht für eine reine Textmeldung.

**Wichtige Korrektur/Ergänzung zum bestehenden Destillat `gvz-praemienmechanik-pv-speicher.md`:**
Dort steht, «Batteriespeicher» komme auf keiner GVZ-Seite vor — das GVZ-Formular selbst widerlegt
das für den **Feuerwehr-Dokumentationskontext**: «Batterien» ist dort explizit ein eigener
Legende-Punkt. Es bleibt aber weiterhin richtig, dass es **keine eigene GVZ-Versicherungs-/
Prämienaussage** zu Batteriespeichern gibt — die Batterie-Erwähnung hier betrifft die
Feuerwehr-Ortsdokumentation, nicht die Prämie.

### 2. Die Pflicht dahinter: VKF-Brandschutzmerkblatt «Solaranlagen» Ziffer 4 (Feuerwehreinsätze)
Wörtlich aus dem VKF-Merkblatt 2001-15de (Ziffer 4, S. 10 f., pdftotext-verifiziert):

> «Der Bauherr informiert das Feuerwehrkommando über die Installation einer Solaranlage.»

> «Es ist ein Orientierungsplan über die PV-Anlage zu erstellen mit Angabe der Standorte der
> PV-Module, DC-Leitungen, Wechselrichter sowie der optionalen Schalt- und Schutzeinrichtungen.
> Eine entsprechende Dokumentation ist der Feuerwehr abzugeben und vor Ort für die Feuerwehr an
> einer geeigneten, gut zugänglichen Stelle zu hinterlegen. Die Solaranlage ist in vorhandenen
> Brandschutz- und Feuerwehreinsatzplänen nachzuführen.»

Zusätzlich zur Dokumentationspflicht eine **Kennzeichnungspflicht**:

> «Es ist ein Gefahrenhinweis anzubringen: Die Kennzeichnung soll aus witterungsbeständigem und
> farbechtem Material angefertigt sein. Anbringungsort der Kennzeichnung gemäss SN 411000 (NIN).
> Bei Gebäuden mit Brandmelde- oder Sprinkleranlage ist zusätzlich beim Feuerwehrbedien- und
> Anzeigeteil eine Kennzeichnung anzubringen.»

**Einordnung:** Das GVZ-Formular `21photovoltaikanlagen-doku-pm.pdf` ist damit erkennbar die
**praktische GVZ-Vorlage, um genau diese VKF-Ziffer-4-Pflicht** (Orientierungsplan +
Standortangaben PV-Module/DC-Leitungen/Wechselrichter/Schalt- und Schutzeinrichtungen, inkl.
Batterien) zu erfüllen — die Meldung geht an das **Feuerwehrkommando** (Gemeinde-/Stützpunkt-
Feuerwehr), nicht primär an die GVZ-Versicherungsabteilung als Prämienstelle. Die «GVZ-Nr.»
im Formularkopf deutet auf eine Verknüpfung mit der bestehenden Gebäudeversicherungsnummer hin,
aber ein expliziter GVZ-Satz «dieses Formular ist Voraussetzung für X» liess sich auf den in
dieser Session erreichbaren Seiten nicht finden (offener Punkt, siehe unten).

### 3. Naturgefahr Hagel — neue, eigenständige Anforderung (VKF-Merkblatt Ziffer 3.3)
Wörtlich (Ziffer 3.3 Naturgefahren, S. 10):

> «Alle Bauelemente der Gebäudehülle sind den Windkräften und dem Hagel ausgesetzt. […] Werden
> solche Bauelemente inklusive deren Befestigungselemente nicht korrekt dimensioniert, fachlich
> falsch eingebaut oder werden ungeeignete Produkte eingesetzt, können sie aus der Befestigung
> gerissen werden. […] Diese Gefährdung gilt insbesondere auch für solare Bauelemente.»

Schutzziel: «Es muss sichergestellt werden, dass Solaranlagen den Einwirkungen gemäss SIA-Normen
standhalten» — konkret SIA 261 «Einwirkungen auf Tragwerke» und SIA 261/1 (Ergänzende
Festlegungen). Lösungsansatz wörtlich: **«Einwirkung Hagel: Solar-Module (PV und SW) mit einem
nachgewiesenen Hagelwiderstand einsetzen»** sowie analog ein nachgewiesener Widerstand gegen die
lokale Schneelast. Das ist eine eigenständige, von Blitzschlag (VKF-Richtlinie 22-15, bereits im
Destillat `vkf-richtlinie-22-15-blitzschutzsysteme.md` behandelt) unabhängige Anforderung: **Hagel-
und Windwiderstand der Module/Befestigung**, belegt über SIA 261/261-1, nicht über eine
GVZ-Prämienregel.

### 4. Ergänzende Brandschutz-Auflagen für PV (VKF-Merkblatt Ziffer 3.1–3.2, Auswahl mit Neuwert)
- Aufgesetzte Solaranlagen mit **nicht brennbarer äusserster Schicht** dürfen auf VKF-konformen
  Flach-/Steildächern **ohne weitere Brandschutzanforderungen** montiert werden (Ziffer 3.2 Abs. 3).
- Solaranlagen dürfen die Wirkung von **Brandmauern** und **Rauch-/Wärmeabzugsanlagen (RWA)**
  nicht beeinträchtigen (Verweis auf VKF-Brandschutzerläuterung 100-15 «Brandmauern»); zu
  RWA-Öffnungen ist ein für deren Funktionsfähigkeit (Öffnungswinkel, Schnee) ausreichender
  Abstand einzuhalten.
- Bei **gebäudeintegrierten** Solaranlagen mit Verlegeunterlage und einer Flächenausdehnung
  **> 1'200 m²** muss die Verlegeunterlage aus Baustoffen der Klasse RF1 bestehen (bzw. der
  Luftraum in Felder ≤ 1'200 m² mit RF1-Unterteilungen von mind. 0,5 m Breite gegliedert werden).
- DC-Leitungen: erhöhter Schutz gegen Berührung/mechanische Einwirkung/Nagetierfrass gemäss
  SN 411000 (NIN); nicht in vertikalen Fluchtwegen ausser in feuerwiderstandsfähigem Kanal;
  Wechselrichter ausserhalb feuer-/explosionsgefährdeter Räume.
- Fassaden-PV an Gebäuden **über 11 bis 30 Meter**: Nachweis, dass sich ein Brand nicht übermässig
  ausbreiten kann (Brandversuche vorausgesetzt); für **Einfamilienhäuser und Gebäude unter 11
  Metern bestehen keine erhöhten Brandschutzanforderungen** (wörtlich aus der GVZ-Medienmitteilung
  vom 22.05.2026, dort im Auftrag der VKF publiziert); für Dachmontagen gilt schweizweit die
  Swissolar-Branchenlösung («Stand-der-Technik-Papier»).

### 5. Melde-/Versicherungswert-Neubemessung bei PV — bereits abgedeckt, hier nicht dupliziert
Die Schwellen «kleine Wertvermehrung» (bis CHF 50'000 und bis 50 % des Versicherungswerts, formlos
anmeldbar ohne Schätzung) vs. Bauzeitversicherungspflicht + Schätzungsgesuch (darüber) stehen bereits
ziffern-genau im Destillat `gvz-praemienmechanik-pv-speicher.md` — hier nicht wiederholt. Neu in
diesem Destillat ist ausschliesslich die **Feuerwehr-Dokumentations-/Kennzeichnungspflicht** (Ziffer
4 VKF-Merkblatt) und die **Hagel-Anforderung** (Ziffer 3.3), die dort noch fehlten.

## Bauherren-Transfer
1. Bei jeder PV-Installation (unabhängig vom Wertvermehrungs-Betrag) gilt zusätzlich zur
   versicherungstechnischen Meldung (GVZ, siehe separates Destillat) eine **eigenständige
   Feuerwehr-Informationspflicht**: der Bauherr informiert das lokale Feuerwehrkommando, und die
   Installationsfirma erstellt einen Orientierungsplan/Strangplan mit den Standorten von
   PV-Modulen, DC-Leitungen, Wechselrichter, Schalt-/Schutzeinrichtungen und Batterien — dieser
   Plan wird der Feuerwehr abgegeben und vor Ort hinterlegt.
2. Das GVZ-Formular `21photovoltaikanlagen-doku-pm.pdf` ist die naheliegende Vorlage dafür (Felder
   für Projekt-Nr., GVZ-Nr., Kunden-/Installateur-Kontakt, Strangplan-Beilage, Legende inkl.
   Batterien, Blitzschutzsystem ja/nein) — für die Bauleitung ein direkt verwendbares Formular,
   das der Elektro-/Solarinstallateur zusammen mit dem Strangplan ausfüllt.
2b. Wer das Formular konkret ausfüllt und wohin es geht (Feuerwehrkommando der Standortgemeinde
    versus direkt an die GVZ) ist auf den in dieser Session erreichbaren GVZ-Seiten nicht explizit
    gesagt — in der Praxis bei grösseren Bauprojekten am besten direkt bei der zuständigen
    Feuerwehr/GVZ-Fachstelle nachfragen, nicht selbst festlegen.
3. Bei der Modulwahl ist ein **nachgewiesener Hagel- und Windwiderstand** (Prüfnachweis gemäss
   SIA 261/261-1) zu verlangen — das ist eine eigene technische Anforderung, unabhängig von der
   Blitzschutzfrage, und gehört in die Ausschreibung/Devis der PV-Anlage als Anforderungspunkt.
4. Fassaden-PV an Gebäuden über 11 m Höhe braucht ein objektspezifisches, schutzzielorientiertes
   Brandschutzkonzept bei der kantonalen Brandschutzbehörde, solange kein schweizweites
   Stand-der-Technik-Papier für Fassaden vorliegt; auf Dächern und bei EFH/Gebäuden unter 11 m
   bestehen keine erhöhten Anforderungen (Swissolar-Branchenlösung genügt).

## Offene Punkte
- Ob und wie das GVZ-Formular formal mit der GVZ-Versicherungsprämie/-Wertvermehrungsmeldung
  verknüpft ist (z.B. verpflichtende Beilage zum Schätzungsgesuch bei grossen Anlagen) — auf den
  erreichbaren GVZ-Seiten nicht explizit bestätigt; direkte Rückfrage bei der GVZ
  (versicherung@gvz.ch) nötig für eine verbindliche Bauherren-Aussage.
- Auf welcher GVZ-Navigationsseite das Formular offiziell verlinkt ist (Brandschutz/Formulare oder
  Feuerwehr/Weisungen-Merkblätter) liess sich innerhalb dieser Recherche nicht auffinden — die
  Direkt-URL (`_file/1661/...`) ist aber verifiziert erreichbar und lädt das Original-PDF.
- Kt. Schwyz: keine dem VKF-Merkblatt entsprechende, öffentlich einsehbare Formularvorlage
  identifiziert — GUSTAVO-Kanton, siehe bereits bestehender Negativbefund im Schwester-Destillat.

Querbezug: `[[gvz-praemienmechanik-pv-speicher]]` (Prämienformel, Meldeschwellen kleine
Wertvermehrung/Schätzung), `[[vkf-richtlinie-22-15-blitzschutzsysteme]]` (Blitzschutzpflicht/
-integration, hier nur kurz referenziert, nicht dupliziert), `[[pv-solar-technologien]]`,
`[[batteriespeicher-heimspeicher-pv-ch]]`.
