---
quelle: "Stadt Zürich, Energieplanungsbericht (Kommunale Energieplanung, Totalrevision vom
  Stadtrat beschlossen 5.11.2025), Datenstand der Karteneinträge Oktober 2025
  (stadt-zuerich.ch/content/dam/web/de/aktuell/publikationen/2025/energieplanungsbericht/
  energieplanungsbericht.pdf, amtliche Primärquelle, vollständig per curl+pdftotext im Volltext
  gelesen, 3'967 Zeilen/85 Seiten); Stadt Zürich, Wärmeversorgungsverordnung (WVV) vom 16. März
  2022, in Kraft seit 1.7.2023 (AS 734.100, stadt-zuerich.ch/dam/web/de/politik-verwaltung/
  politik-recht/amtliche-sammlung/734/100/..., amtliche Gesetzessammlung, vollständig per
  curl+pdftotext gelesen, alle 23 Artikel); Stadt Zürich, Webseite «Energiekarte EnerGIS»
  (stadt-zuerich.ch/de/umwelt-und-energie/energie/energis.html, per WebFetch gelesen, Seiten-Stand
  Dezember 2024 laut Metadaten); Stadt Zürich, Webseite «Energieplanung Stadt Zürich»
  (stadt-zuerich.ch/de/umwelt-und-energie/energie/planung-strategien/energieplanung.html, per
  WebFetch gelesen); Stadt Zürich, Meldung «Die wichtigsten Anpassungen in der überarbeiteten
  Energieplanung» (stadt-zuerich.ch/de/aktuell/news/2025/energieplanung-neu.html, November 2025,
  per WebFetch gelesen); EnerGIS-Portal selbst (stadt-zuerich.ch/energis/frontend/, per curl
  direkt abgerufen: liefert HTTP 200, keine Login-Weiterleitung, Angular-Single-Page-App ohne
  serverseitig gerenderten Inhalt — UI/Legende daher nur indirekt über den Energieplanungsbericht
  rekonstruierbar, nicht direkt aus dem HTML); energie-cluster.ch, Beitrag «339-001 EnerGIS, die
  Energiekarte der Stadt Zürich» (energie-cluster.ch/news/beitraege/..., Branchenverband, per
  WebFetch-Zusammenfassung gelesen, kein Datum im Artikel erkennbar); bereits vorhandene
  KB-Destillate `[[fernwaerme-anschlusspflicht-zh]]` (§ 295 PBG) und
  `[[waermeplanung-kommunal-zh-sz]]` (§§ 4-7 EnerG ZH) als Anschlussstellen genutzt, nicht neu
  verifiziert; Versuch, den Geodaten-Downloadpunkt zu verifizieren
  (stadt-zuerich.ch/geodaten/download/Kommunale_Energieplanung___Energieplankarte und
  data.stadt-zuerich.ch/dataset/geo_kommunale_energieplanung___energieplankarte) scheiterte an
  HTTP 404 bzw. HTTP 500 — kein Downloadlink primärverifiziert"
herausgeber: "Stadtrat der Stadt Zürich / Amt für Umwelt und Energie der Stadt Zürich (Energieplanung,
  EnerGIS) / Gemeinderat der Stadt Zürich (Wärmeversorgungsverordnung, amtliche Sammlung)"
ausgabe: "Energieplanungsbericht 2025 (Totalrevision, Stadtratsbeschluss 5.11.2025, Karteneinträge
  Stand Oktober 2025 — löst die vorherige Fassung der kommunalen Energieplanung ab); WVV vom
  16.3.2022, in Kraft seit 1.7.2023 (STRB Nr. 1653/2023), seither unverändert laut geprüftem
  PDF-Metadatum (Änderungsdatum 23.2.2024, keine neuere Fassung gefunden); übrige Web-Quellen
  Stand Juli 2026 (Abruf), Energieplanung-Webseite Stand Dezember 2024 laut Seitenmetadaten"
gelesen: "2026-07-27, Energieplanungsbericht 2025 und WVV 2022 vollständig per curl+pdftotext im
  Volltext geprüft (amtliche PDFs); Webseiten EnerGIS/Energieplanung/Medienmitteilung Nov. 2025 via
  WebFetch gelesen; EnerGIS-Portal-HTML direkt per curl geprüft (Zugangstest, kein Inhalt lesbar
  wegen Angular-SPA); Geodaten-Downloadseiten (HTTP 404/500) nicht erfolgreich abgerufen"
datenstand: "Karteneinträge der Energieplankarte: Oktober 2025 (Tabellen 1-13 des
  Energieplanungsberichts); WVV-Rechtstext: 16.3.2022/in Kraft 1.7.2023, keine neuere Fassung
  gefunden; Web-Abruf 2026-07-27"
status: established
last_updated: 2026-07-27
---

# EnerGIS-Kartenwerk Stadt Zürich — was zeigt die Energiekarte und welche rechtliche Bedeutung hat sie?

**Das Wichtigste in 1 Satz:** EnerGIS (öffentlich, ohne Login, unter
`stadt-zuerich.ch/energis/frontend/`) ist die adressgenaue, visuelle Oberfläche der amtlichen
kommunalen Energieplankarte der Stadt Zürich (vier Teilkarten: Wärmeverbunde, Kälteverbunde,
Gasgebiete, Eignungsgebiete für dezentrale Systeme) und zeigt konkrete Wärmequellen-Standorte
(Seewasser-/Flusswasser-Fassungen, Abwärme aus ARA/KVA, Anergie-Transportleitungen) sowie den
Ausbaustatus der Fernwärmegebiete — sie ist gemäss dem amtlichen Energieplanungsbericht 2025
aber ausdrücklich nur eine **«Informationsplattform»** ohne eigene rechtliche Bindungswirkung
gegenüber Grundeigentümern; verbindlich wird die dahinterliegende Planung erst über eine
separate Verfügung (WVV-Gebietsauftrag oder eine Anschlussverfügung nach § 295 PBG).

## 1. Was EnerGIS zeigt (Primärquelle: Energieplanungsbericht 2025, Kapitel 4-6)

Die Energiekarte visualisiert die amtliche **kommunale Energieplankarte**, die laut
Energieplanungsbericht 2025 aus **vier Teilkarten** besteht (Kap. 1.4, wörtlich: «Die
Energieplankarte besteht aus vier Teilkarten … welche die räumlichen Festlegungen für jeden
Bereich enthalten»):

- **Teilkarte «Verbundgebiete Wärme»** (Kap. 4.3.1): Übersichtsplan aller Gebiete mit thermischem
  Netz oder Energieverbund, plus **Ergänzungspläne** je Netz (Gebietsperimeter,
  Quartierhauptversorgungsleitungen — Teil des Gebietsauftrags nach WVV). Stand Oktober 2025
  listet 7 Wärmenetz-Cluster (F1-F7, z.B. F2 Altstetten-Höngg, F5 City, F7 Hottingen) mit je
  mehreren Teilgebieten im Status «in Betrieb» / «in Planung/Bau» / «in Prüfung (bis
  2026-2028)», dazu 20 Energieverbunde (V-Nummern, Schwelle >5 GWh/a Wärmeabsatz).
- **Standorte (Kap. 4.3.1.2, Tabelle 4):** konkrete Wärmequellen und Infrastruktur, u.a.
  Seewasser-Fassungen (Fraumünster, Escherwiese, Mythenquai, Hafen Enge u.a.), Flusswasser-
  Fassungen (Walche, Burrischopf, Autobahnbrücke), **Abwärme-Fassungen** (AWN Werdhölzli =
  Abwasserreinigungsanlage, Flüelastrasse = Prozessabwärme, Adliswil-Sihltal), Energiezentralen
  und Speicher (Hagenholz, Josefstrasse, Rautistrasse u.a.).
- **Leitungen (Kap. 4.3.1.3, Tabelle 5):** Transportleitungen für Fernwärme UND separat für
  **Anergie** («Transport Anergie», z.B. Werdhölzli-Rautistrasse, Hafen Enge-Bederstrasse,
  Klausstrasse-GZ Riesbach) — das Anergienetz ist also explizit als eigener Leitungstyp auf der
  Karte erfasst, nicht nur die klassische Hochtemperatur-Fernwärme.
- **Teilkarte «Verbundgebiete Kälte»** (Kap. 4.3.2): Gebiete mit Kältenetz oder Anergienetz-
  Kälteversorgung, unterschieden nach Zugehörigkeit zu einem thermischen Netz oder Energieverbund.
- **Teilkarte «Gasgebiete»** (Kap. 5, laut Inhaltsverzeichnis, im Detail nicht ausgewertet):
  legt fest, welche Gebiete weiter mit Gas versorgt bleiben bzw. wann/wo das Gasverteilnetz
  stillgelegt wird (siehe Abschnitt 3 unten).
- **Teilkarte «Eignungsgebiete»** für dezentrale Systeme (Kap. 6.3): Grundwasser-
  Koordinationsgebiete (D21 Zürich West, D22 Escherwiese/City) sowie drei Eignungsklassen für
  dezentrale Wärme: **E11 Erdwärmesonden + Luftwasserwärmepumpen**, **E12 nur
  Luftwasserwärmepumpen**, **E13 Abwärmenutzung** (bei Arealen mit grossen Abwärmequellen wie
  KVA/ARA in der Nähe).

**Wichtige Einschränkung zu Erdwärmesonden (Kap. 6.1.3, wörtlich zitiert):** Die geologische
**Bohreignung** des Untergrunds (wo eine Erdsonden-Nutzung zum Schutz des Grundwassers überhaupt
zulässig ist, inkl. Tiefenbeschränkungen und bereits erteilten Bewilligungen) zeigt **nicht**
EnerGIS/die Energieplankarte, sondern der **kantonale Wärmenutzungsatlas (GIS-ZH Nr. P8)**: «Der
Wärmenutzungsatlas des Kantons Zürich zeigt auf, in welchen Gebieten eine Nutzung – allenfalls mit
Auflagen – zulässig ist. Weiter enthält der Wärmenutzungsatlas Informationen zu bereits erteilten
Bewilligungen für Erdsonden sowie Angaben zur Tiefenbeschränkung von Bohrungen.» Die
Energieplankarte legt mit E11/E12/E13 nur eine **planerische Priorisierung** fest (welche
Technologie in einem Gebiet bevorzugt werden soll), nicht die technisch-geologische
Machbarkeit einer einzelnen Bohrung.

## 2. Zugang (verifiziert per direktem Portal-Aufruf)

- **URL:** `https://www.stadt-zuerich.ch/energis/frontend/` (verlinkt u.a. von
  `stadt-zuerich.ch/de/umwelt-und-energie/energie/energis.html`).
- **Öffentlich, ohne Login:** eigener curl-Test lieferte HTTP 200 ohne Login-Redirect oder
  Zugriffssperre; Bedienung laut Web-Beschreibung über Adresseingabe oder Klick auf die Karte.
- ⚠ **Technische Einschränkung dieser Recherche:** Das Portal ist eine Angular-Single-Page-App
  (`<app-root>`, Inhalt wird erst client-seitig per JavaScript nachgeladen) — der reine HTML-Abruf
  liefert kein sichtbares Layer-Menü oder eine Legende. Die oben unter Punkt 1 beschriebenen
  Karteninhalte stammen daher **nicht** aus einem direkten Screenshot/DOM-Read des Portals,
  sondern aus dem amtlichen Energieplanungsbericht, der laut Stadt Zürich dieselbe Energieplankarte
  beschreibt, die EnerGIS visualisiert. Ein Abgleich, ob EnerGIS wirklich alle Tabellen 1-13
  1:1 als Layer zeigt oder nur eine vereinfachte Bauherren-Ansicht, wurde **nicht** vorgenommen.
- Ein direkter Geodaten-Downloadlink (Shapefile/GeoJSON) konnte nicht verifiziert werden: sowohl
  `stadt-zuerich.ch/geodaten/download/Kommunale_Energieplanung___Energieplankarte` (HTTP 404) als
  auch die Open-Data-Katalogseite `data.stadt-zuerich.ch/dataset/geo_kommunale_energieplanung...`
  (HTTP 500) waren beim Abruf nicht erreichbar.

## 3. Rechtliche Bedeutung (Primärquelle: Energieplanungsbericht 2025 Kap. 1.3 + WVV 2022)

**EnerGIS selbst ist ausdrücklich nur Information, keine Rechtsquelle.** Der
Energieplanungsbericht ordnet EnerGIS in Kapitel 7.3.4 «Information» wörtlich so ein:

> «Die Energiekarte der Stadt Zürich (EnerGIS) übernimmt eine zentrale Rolle als
> Informationsplattform gegenüber der Bevölkerung. Sie unterstützt die transparente Vermittlung
> der energieplanerischen Zielsetzungen der Stadt Zürich. Darüber hinaus bietet EnerGIS
> Orientierung für Eigentümerinnen und Eigentümer, Fachplanende und weitere Interessierte und
> ermöglicht eine frühzeitige Information über zukünftige Entwicklungen im Bereich der Wärme- und
> Kälteversorgung sowie der Stilllegung der Gasverteilnetze.»

**Die dahinterliegende Energieplanung** (Karte + Planungsbericht) ist laut Kapitel 1.3
(«Verbindlichkeit», wörtlich) **behördenverbindlich, für Grundeigentümer direkt nicht
verbindlich**:

> «Die Ziele und Festsetzungen der kommunalen Energieplanung (Energieplankarte und
> Planungsbericht) sind für sämtliche Körperschaften und Anstalten des öffentlichen und privaten
> Rechts verbindlich, die gemäss Energiegesetz an der Versorgung mit Elektrizität, Wärme und Gas
> mitwirken. […] Für Grundeigentümerschaften hat die kommunale Energieplanung direkt keine
> verbindliche Auswirkung. Sie wird jedoch als Kommunikationsinstrument genutzt.
> Umsetzungsmassnahmen, welche grundeigentümerverbindliche Wirkung entfalten, benötigen eine
> entsprechende gesetzliche Grundlage, wie beispielsweise die gebietsweise Stilllegung der
> Gasverteilnetze oder Vorgaben zur Energieversorgung im Rahmen von Gestaltungsplänen. Die
> kommunale Energieplanung entfaltet somit nur dann eine allgemeinverbindliche Wirkung, wenn sie
> als Grundlage für den Erlass von Verfügungen insbesondere im Rahmen des kantonalen Planungs- und
> Baurechts oder der kommunalen Wärmeversorgungsverordnung dient.»

Das deckt sich exakt mit der bereits im Destillat `[[waermeplanung-kommunal-zh-sz]]`
dokumentierten Zweistufigkeit (Planungsgrundlage → separate Verfügung nach § 295 PBG) — dieses
Destillat vertieft nun zusätzlich die **städtische** Rechtsgrundlage, die WVV selbst, die dort
als offener Punkt vermerkt war.

**Wärmeversorgungsverordnung (WVV) vom 16.3.2022, in Kraft seit 1.7.2023 — Volltext geprüft:**
Es gibt **keine generelle Anschlusspflicht**, aber ein enges, funktional wirkendes System:

- **Kein Anschlusszwang, sondern Anschlussangebot:** Art. 9 lit. a WVV verlangt von der
  Betreiberschaft nur, «sämtlichen Grundeigentümerinnen und Grundeigentümern innerhalb des
  Perimeters, die ein Anschlussinteresse zeigen, … ein Anschlussangebot» zu unterbreiten — keine
  Pflicht, das Angebot anzunehmen.
- **Faktischer Umstiegsdruck über das Gasverbot:** Art. 16 Abs. 1 WVV: «Eigentümerinnen und
  Eigentümer verwenden für Heizung und Warmwasser von Gebäuden und für Gaskochstellen spätestens
  ab 2040 kein fossiles Gas mehr.» Art. 18 Abs. 1: «Die Erstellung von neuen Gasanschlüssen für
  Heizung und Warmwasser von Gebäuden … ist nicht zulässig» (Ausnahmen nur in energieplanerisch
  begründeten Fällen bzw. bei vertraglicher Anschlusszusage ans künftige thermische Netz, Art. 18
  Abs. 2).
- **Gebietsweise Gasnetz-Stilllegung mit Vorlauffrist:** Art. 19 Abs. 2 WVV: der Stadtrat legt im
  Rahmen der Energieplanung fest, «welche Gebiete zur Versorgung mit Gas vorgesehen sind und in
  welchen Gebieten und zu welchem Zeitpunkt das Gasverteilnetz ganz oder teilweise stillgelegt
  wird». Ankündigungsfrist Art. 20: **grundsätzlich mindestens 10 Jahre im Voraus**, in Gebieten
  mit bestehendem/geplantem thermischem Netz **verkürzt auf mindestens 5 Jahre**.
- **Ziel:** Art. 4 WVV: fossilfreie Wärmeversorgung ab 2040, «mindestens sechzig Prozent des
  Siedlungsgebiets» bis 2040 mit thermischen Netzen erschlossen.
- **Ökologische Mindestanforderung an jeden Gebietsauftrag/jede -konzession:** Art. 8 lit. a WVV:
  Anteil Ab-/Umweltwärme oder erneuerbare Energien am Energieträgermix **mindestens 70 %**
  (ab 2040: 100 %).
  > ⚠ **Korrektur Wissens-Chef Run 18 (27.07.2026): die 70 % sind NICHT die Voraussetzung der
  > Anschlussverfügung.** Hier standen bis zu diesem Lauf zwei verschiedene Normen kurzgeschlossen.
  > Es sind drei Regeln mit verschiedenen Bezugsgrössen zu trennen: (1) **Art. 8 lit. a WVV**
  > (städtisch) — Mindestanteil im Energieträgermix eines Gebietsauftrags; (2) **§ 47 g BBV I**
  > (kantonal) — Erfüllungsfiktion für § 11 Abs. 1-4 EnerG beim Wärmenetzanschluss; (3) das
  > städtische AfB-Merkblatt (Vollzug). **§ 295 Abs. 2 PBG kennt gar keine Prozentschwelle**:
  > amtlicher Wortlaut (`wissen/baurecht/raw/260607_amtlich_zh_pbg.md:3035-3040`, führende KB
  > `baurecht`) verlangt **zwei kumulative Voraussetzungen** — die Fernwärmeversorgung nutzt lokale
  > Abwärme oder erneuerbare Energien **und** bietet die Wärme «zu technisch und wirtschaftlich
  > gleichwertigen Bedingungen wie aus konventionellen Anlagen» an; die Verpflichtung ergeht stets
  > über eine anfechtbare Verfügung. Der Gleichwertigkeits-Vorbehalt ist der praktische Hebel jeder
  > Einsprache und fehlte hier ganz. Siehe `[[fernwaerme-anschlusspflicht-zh]]`.

**Fazit rechtliche Bedeutung:** EnerGIS/die Energieplankarte begründet **keine** Anschlusspflicht
aus sich selbst heraus. Sie ist aber die räumliche Grundlage für zwei Instrumente, die
Grundeigentümer sehr wohl faktisch binden: (a) den **WVV-Gebietsauftrag**, der einen
Wärmeverbund-Betreiber verpflichtet, Anschlussangebote zu machen, kombiniert mit dem
**Gasverbot/den Gasnetz-Stilllegungsfristen**, die einen Umstieg erzwingen, sobald das Gebiet
dran ist; und (b) die kantonale **Anschlussverfügung nach § 295 Abs. 2 PBG**, die im Einzelfall
einen konkreten Anschlusszwang aussprechen kann. EnerGIS zeigt, wo diese beiden Mechanismen
absehbar greifen könnten — verfügt aber selbst nichts.

## 4. Die Karte ist lebend — Novemberrevision 2025 als Beleg

Der Stadtrat hat die Energieplanung am 5.11.2025 total revidiert; die Meldung vom November 2025
nennt drei konkrete Gebietsänderungen, die zeigen, wie schnell sich der Status ändern kann:

- **Hottingen (F701):** Prüfperimeter erweitert bis ins Seefeld, Versorgungskonzept erst 2026.
- **Seeufer West:** Prüfgebiet Wollishofen aufgelöst (dezentrale Lösung machbar); der nördliche
  Teil (Rieterstrasse) wird künftig vom Gebiet Enge (F401) mitversorgt.
- **Nieder-/Oberdorf:** ganz aus dem Prüfgebiet entlassen, weil ein Netzbau bis 2040 wegen
  bestehender Infrastruktur und Werkleitungsarbeiten bis 2029 unrealistisch ist — Zitat: das gibt
  «den Eigentümer*innen und Planenden klare Verhältnisse, um sich frühzeitig auf alternative
  Lösungen auszurichten – etwa auf die energetische Sanierung der Gebäudehüllen oder den Einsatz
  von Biogas.»

## 5. Bauherren-Transfer — wann und wie in der Vorprojektphase konsultieren

1. **Vor jedem Heizsystementscheid, spätestens in der Vorprojektphase**, die Bauparzelle in
   EnerGIS (`stadt-zuerich.ch/energis/frontend/`, Adresseingabe) prüfen: liegt sie in einem
   Wärmeverbund-/Energieverbund-Gebiet (F-/V-Nummer) und in welchem Status («in Betrieb» /
   «in Planung/Bau» / «in Prüfung bis Jahr X»)? Status «in Prüfung» heisst: Realisierung
   zeithorizontlich unsicher — hier lohnt sich die Rückfrage, ob eine befristete
   Übergangslösung nach § 11 Abs. 6 EnerG (bereits dokumentiert in
   `[[waermeplanung-kommunal-zh-sz]]`) bewilligungsfähig ist, statt sofort eine teure autarke
   Lösung zu bauen, die in wenigen Jahren durch den Fernwärmeanschluss ersetzt würde.
2. **Für Erdwärmesonden zusätzlich den kantonalen Wärmenutzungsatlas (GIS-ZH Nr. P8, via
   maps.zh.ch) konsultieren** — EnerGIS/die städtische Energieplankarte zeigt nur die
   planerische Eignungsklasse (E11/E12/E13), nicht die geologisch/gewässerschutzrechtlich
   zulässige Bohreignung und -tiefe im Detail.
3. **Gasgebiete/Stilllegungsfristen prüfen**, falls (noch) keine Fernwärme/Erdwärme in Frage
   kommt: liegt das Grundstück in einem Gebiet mit angekündigter Gasnetz-Stilllegung (Art. 19-20
   WVV), sind ab Ankündigung nur noch 5-10 Jahre Zeit — bei einem Neubau mit langer Nutzungsdauer
   ist eine neue Gasheizung dort ein Fehlinvestment.
4. **EnerGIS ersetzt keine Rechtsauskunft.** Da die Karte selbst «nur» informiert (Kap. 7.3.4
   Energieplanungsbericht), sollte bei einem konkreten Projekt in einem Wärmeverbund-/
   Prüfgebiet zusätzlich bei der städtischen Energieberatung nachgefragt werden, ob/wann ein
   formeller Gebietsauftrag vorliegt bzw. ob eine Anschlussverfügung nach § 295 PBG im Raum steht.
5. **Stand jedes Mal neu abfragen, nicht auf altem Ausdruck verlassen** — die Novemberrevision
   2025 zeigt, dass sich Gebietsgrenzen und Status innerhalb weniger Jahre ändern (Abschnitt 4).
6. **Kostenfolge nicht vergessen:** Liegt die Parzelle in einem realisierten Fernwärmegebiet,
   sind die Anschlusskosten bereits im Destillat `[[fernwaerme-anschlusskosten-zh]]` mit der
   amtlichen ewz-Tarifformel (2026) durchgerechnet.

## Offene Punkte

- UI/Legende/Bedienung von EnerGIS selbst nicht direkt geprüft (Angular-SPA, kein
  serverseitig lesbarer Inhalt) — Karteninhalte hier aus dem amtlichen Energieplanungsbericht
  rekonstruiert, nicht 1:1 als Screenshot des Portals verifiziert.
- Nicht verifiziert, ob EnerGIS für Fachplaner einen Datenexport/eine API/einen
  GIS-Layer-Download anbietet — die zwei versuchten Downloadpfade (stadt-zuerich.ch/geodaten,
  data.stadt-zuerich.ch) waren beim Abruf nicht erreichbar (HTTP 404/500).
- Teilkarte «Gasgebiete» (Kap. 5 Energieplanungsbericht) und Teilkarte «Verbundgebiete Kälte»
  (Kap. 4.3.2) nur angerissen, nicht im Detail (Tabellen) ausgewertet — bei Bedarf für ein
  konkretes Kälte- oder Gas-Projekt nachrecherchieren.
- Nicht geprüft, ob die in EnerGIS als «Ergänzungspläne» geführten, detaillierten
  Gebietsauftrags-Pläne öffentlich einsehbar sind oder nur verwaltungsintern (WVV nennt sie als
  «Teil des Gebietsauftrages», Zugänglichkeit für Dritte nicht explizit geregelt).
- Rechtsprechung zu einzelnen WVV-Gebietsaufträgen oder Streitfällen zur Gasnetz-Stilllegung
  nicht recherchiert.
