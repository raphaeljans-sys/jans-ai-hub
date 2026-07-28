---
quelle: "SIA-Shop (shop.sia.ch), gezielte Produkt-URL-Proben unter der Rubrik Normenwerk
  (mehrere Kategorie-Slugs getestet: Architekt, Gebäudetechnik, Merkblätter) sowie
  Kontroll-Abfrage eines bekannt existierenden Nachbarprodukts (SIA 2061/2021) zum
  Grössenvergleich (curl, 2026-07-28); SNV-Connect Normenshop (connect.snv.ch), Volltextsuche
  „Rechenzentren" mit Herausgeber-Filterliste (curl, 2026-07-28); SIA-Webplattform (sia.ch),
  Artikel „Aus der zweiten Sitzung der Zentralkommission für Normen (ZN) vom 8. Juni 2023"
  (nur Titel/Existenz verifizierbar, Artikeltext client-seitig gerendert und in dieser
  Recherche technisch nicht extrahierbar, auch über r.jina.ai-Reader nicht); WebSearch-
  Recherche zu SIA 2068, SDEA und Parlamentsgeschäft 21.3534; SDEA-Website (sdea.ch/about,
  per WebFetch gelesen); Netzwoche, Artikel „SDEA gewinnt Award für Nachhaltigkeits-
  Plattform", 18.03.2026 (per WebFetch gelesen); ergänzend Sekundärquellen (Netzwoche
  2022, Computerworld, SWI swissinfo.ch, IT-Markt 2020, HPE Community Blog) zur SDEA-
  Gründungsgeschichte, nur über WebSearch-Zusammenfassungen ausgewertet, nicht im
  Volltext gelesen"
herausgeber: "SIA Schweizerischer Ingenieur- und Architektenverein (Schweiz, amtliche
  Normeninstitution, Shop-Betreiber); SNV Schweizerische Normen-Vereinigung (Schweiz,
  Normenshop-Betreiber, listet auch SIA-Titel); SDEA Swiss Datacenter Efficiency
  Association (Schweiz, gemeinnützige Organisation, initiiert von Hewlett Packard
  Enterprise Schweiz/Digitalswitzerland, unterstützt von EnergieSchweiz/BFE, Partner
  EPFL EcoCloud, HSLU, Swiss Data Center Association, asut); Netzwoche (Schweiz,
  Fachmedium ICT/Digitalisierung)"
ausgabe: "Kein Ausgabestand vorhanden, da SIA 2068 nach dieser Recherche noch nicht
  als Produkt im SIA-Shop existiert; Vergleichsprodukt SIA 2061/2021 (Batteriespeicher-
  systeme) als Kontrollstichprobe verwendet; SNV-Connect-Suche ohne Versionsstand
  (Live-Katalogabfrage); Netzwoche-Artikel vom 18.03.2026"
gelesen: "2026-07-28: SIA-Shop-Produktseiten-Proben per curl (drei Kategorie-Slug-
  Varianten, alle mit HTTP 200 aber Inhalt „404 - Produkt nicht gefunden!“, Kontrollprodukt
  SIA 2061 zeigt regulären Produktinhalt mit CHF-Preis und Warenkorb-Button); SNV-Connect-
  Suchseite „Rechenzentren“ per curl geladen (256 KB HTML, Herausgeber-Filterliste
  ausgewertet: DIN, AFNOR, Electrosuisse erscheinen mit Trefferzahlen, SIA erscheint in
  keiner ausgelesenen Filter-Kategorie); SIA-Artikel zur ZN-Sitzung vom 8.6.2023 per
  curl+r.jina.ai geladen, aber Inhalt ist eine JavaScript-Single-Page-Application ohne
  serverseitig gerenderten Artikeltext - nur Existenz der Seite/des Titels verifizierbar,
  NICHT der genaue Wortlaut zum aktuellen Bearbeitungsstand; SDEA-Seite sdea.ch/about
  per WebFetch gelesen; Netzwoche-Artikel vom 18.03.2026 per WebFetch gelesen"
datenstand: "2026-07-28 (Web-/Shop-Abruf); Bezugspunkt AWEL-Bericht-Aussage vom
  31.08.2023 zum ZN-Projektstart 8.6.2023 (siehe Basisdestillat); seither rund 3 Jahre
  ohne verifizierten Publikationsnachweis"
status: emerging - Kernaussage (SIA 2068 ist per 28.07.2026 noch NICHT im SIA-Shop als
  käufliches Produkt gelistet) ist durch eine eigene technische Stichprobe (404-Antwort
  im Kontrast zu einem funktionierenden Nachbarprodukt) gut, aber nicht amtlich beim SIA
  selbst bestätigt - eine Anfrage bei der SIA-Auskunft bleibt der belastbarere Weg für
  eine verbindliche Aussage. Die SDEA-Sektion ist über die eigene SDEA-Website und einen
  Fachmedienbericht 2026 solide belegt.
last_updated: 2026-07-28
---

# SIA 2068 „Energieeffizienz in Rechenzentren" - Publikationsstatus (Stand Juli 2026)

## Das Wichtigste in 1 Satz

Rund drei Jahre nach dem vom SIA am 8. Juni 2023 beschlossenen Projektstart ist das
Merkblatt/die Technische Spezifikation **SIA 2068 „Energieeffizienz in Rechenzentren"
per 28. Juli 2026 weiterhin NICHT im SIA-Shop als käufliches Produkt auffindbar** (drei
unabhängige URL-Proben liefern „404 - Produkt nicht gefunden!", während ein
Kontrollprodukt derselben Normenreihe regulär mit Preis und Warenkorb erscheint) und
taucht auch in keiner ausgewerteten Fachpublikation seit 2023 als publiziert auf; als
gelebte Zwischenlösung bleibt das freiwillige **SDEA-Label/den SDEA Navigator**
(Swiss Datacenter Efficiency Association), das 2026 international einen Award gewann
und damit an Sichtbarkeit gewinnt.

## Kernbefund

### 1. SIA-Shop: kein Produkt SIA 2068 auffindbar (eigene technische Stichprobe, 28.07.2026)

Der SIA-Shop (shop.sia.ch) ist eine klassische ASP.NET-Webforms-Anwendung ohne
durchsuchbare, per Volltext indexierbare Produktliste; eine gezielte Google-Suche
`site:shop.sia.ch 2068` liefert ausschliesslich andere Normen der 2000er-Reihe (SIA 2061,
2056, 2028, 2051, 2039 usw.), aber **keinen einzigen Treffer mit „2068"**. Als
Gegenprobe wurden drei plausible Produkt-URLs nach dem beim Shop üblichen Muster
`/normenwerk/<kategorie>/sia%202068/d/D/Product` abgerufen (Kategorien „architekt",
„gebäudetechnik", „merkblaetter") - alle drei liefern zwar HTTP 200 (der Shop gibt bei
unbekannten Pfaden keinen echten 404-Statuscode zurück), enthalten aber im HTML-Body
explizit den Text **„404 - Produkt nicht gefunden!"** sowie einen Link „zur Übersicht"
und keinerlei Preis-/Warenkorb-Elemente (Dateigrösse durchgehend ca. 60 KB). Als
Kontrollprobe wurde dieselbe URL-Struktur für das real existierende Nachbarprodukt
**SIA 2061:2021 „Batteriespeichersysteme in Gebäuden"** abgerufen: dort liefert die
identische Seitenstruktur einen regulären Produktinhalt (136 KB, 28× „CHF", 3× „in den
Warenkorb", korrekte Produktdetails) - der Unterschied zwischen beiden Antworten ist
eindeutig. Diese Stichprobe ist eine **indirekte, aber technisch saubere Evidenz**: sie
beweist nicht mit letzter Sicherheit, dass keine abweichende URL-Struktur existiert,
macht eine bereits erfolgte Publikation aber sehr unwahrscheinlich.

### 2. SNV-Connect (connect.snv.ch): keine SIA-Treffer zu „Rechenzentren"

Die Volltextsuche im Schwesterportal SNV-Connect (das auch SIA-Titel führt) nach
„Rechenzentren" liefert eine mehrseitige Trefferliste, deren Herausgeber-Filter jedoch
nur DIN, AFNOR und Electrosuisse mit Trefferzahlen ausweist - **SIA erscheint in der
ausgewerteten Filterliste nicht**. Auch dies ist ein Indiz, kein Beweis (die Filterliste
könnte nach Relevanz gekürzt sein), stützt aber den Befund aus Ziff. 1.

### 3. SIA-Artikel zur ZN-Sitzung: Existenz bestätigt, Wortlaut nicht extrahierbar

Der vom Basisdestillat zitierte SIA-Artikel „Aus der zweiten Sitzung der
Zentralkommission für Normen (ZN) vom 8. Juni 2023" existiert nachweislich als Seite auf
sia.ch (von WebSearch mit Titel indexiert). Die SIA-Webplattform ist jedoch eine
JavaScript-Single-Page-Application; sowohl ein direkter curl-Abruf als auch der
Reader-Proxy r.jina.ai lieferten nur das leere HTML-Gerüst (Cookie-Banner, Navigation),
**nicht den eigentlichen Artikeltext**. Der genaue Wortlaut zum damaligen Projektstart
konnte in dieser Recherche technisch nicht zusätzlich verifiziert werden - die bereits im
Basisdestillat zitierte AWEL-Bericht-Aussage (Rz. 35, sekundär über den AWEL-Bericht
vom 31.08.2023) bleibt damit die einzige inhaltlich ausgewertete Quelle zum Projektstart.

### 4. Namensänderung seit 2025 beachten: „Merkblatt" heisst neu „Technische Spezifikation (TS)"

Eine Websuche zur SIA-Publikationssystematik ergab: **Seit Anfang 2025 ersetzt der SIA
den Begriff „Merkblatt" durch „Technische Spezifikation (TS)"** für neue Publikationen
(bestehende Merkblätter behalten ihre alte Bezeichnung). Sollte SIA 2068 künftig
erscheinen, ist es plausibel, dass es als „SIA TS 2068" firmiert statt als „Merkblatt
SIA 2068" wie im AWEL-Bericht 2023 noch angekündigt. Diese Umbenennung selbst ist nur
über eine WebSearch-Zusammenfassung (Verweis auf „Standards and regulations" / SIA-
Korrigenda-Seite) belegt, nicht im SIA-Originaltext gelesen - als Hinweis für die
nächste Suchrunde festgehalten.

### 5. SDEA als gelebte Zwischenlösung: aktiv und 2026 ausgezeichnet

Die im Basisdestillat nur namentlich erwähnte **SDEA (Swiss Datacenter Efficiency
Association)** ist eine gemeinnützige Organisation, laut eigener Website initiiert von
**Hewlett Packard Enterprise (HPE) Schweiz** (Gründungskontext um 2020, vormals auch mit
Digitalswitzerland verknüpft), mit den Partnern **EPFL EcoCloud, Hochschule Luzern
(HSLU), Swiss Data Center Association (SDCA/vormals Vigiswiss) und asut**, unterstützt
vom **Bundesamt für Energie (EnergieSchweiz)**. Sie bietet zwei Instrumente:

- **SDEA Label** - ein Zertifizierungssystem für Rechenzentren.
- **SDEA Navigator** - ein Erhebungs-/Auswertungstool, das über **vier Dimensionen**
  misst: Energieeffizienz der Infrastruktur (RZ-seitig), IT-Effizienz/Auslastung,
  CO2-Fussabdruck und Wasserverbrauch - gestützt auf **12 Monate tatsächlich gemessener
  Betriebsdaten** (nicht auf theoretische Design-/Planwerte) und einem unabhängigen
  Drittaudit.
- **Aktualität 2026:** Die SDEA gewann in London den **„Data Centre World Award 2026"**
  in der Kategorie „Special Contribution to Improving Energy Efficiency" für den SDEA
  Navigator (Netzwoche, 18.03.2026); Digital Realty erhielt laut demselben Artikel eine
  „Gold+"-Zertifizierung. Konkrete Verbreitungszahlen (wie viele CH-Rechenzentren
  zertifiziert sind) wurden in dieser Recherche **nicht** gefunden - offener Punkt.
- Ein direkter Bezug der SDEA zur SIA oder zu kantonalem Baurecht (z.B. als anerkannter
  Nachweis im Baubewilligungsverfahren) liess sich auf der SDEA-eigenen Website **nicht**
  finden - das Label ist derzeit ein freiwilliges, marktgetriebenes Instrument, keine
  Ersatznorm mit Rechtswirkung.

## Bauherren-Transfer

**Kurz-Antwort für Bauherr:** «Gibt es inzwischen eine Schweizer Norm für die
Energieeffizienz meines Rechenzentrums/Serverraums?»

Nein, jedenfalls keine, die Sie beim SIA kaufen können: Das seit 2023 angekündigte
Merkblatt SIA 2068 ist per heute (Stand dieser Recherche, 28.07.2026) im SIA-Shop nicht
auffindbar - es gibt also weiterhin **keine spezifische Schweizer Norm**, auf die sich
ein Bauprojekt technisch berufen könnte oder müsste. Was gilt, bleibt unverändert das im
Basisdestillat [[serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch]] beschriebene
Recht (kantonale Abwärme-/Grossverbraucherpflichten) plus internationale Praxisempfehlungen
(ASHRAE, BFE-Massnahmenblatt). Als **freiwilliges, zusätzliches Qualitätssignal** kann das
SDEA-Label geprüft werden - es misst über 12 Monate reale Betriebsdaten (nicht nur
Planwerte) in vier Dimensionen und wurde 2026 international ausgezeichnet; es ersetzt aber
keine Norm und ist gegenüber Behörden nicht bindend. Vor einer verbindlichen Aussage im
konkreten Projekt (insbesondere wenn ein Bauherr sich vertraglich auf „SIA 2068" berufen
möchte) empfiehlt sich eine kurze Direktanfrage beim SIA-Kundendienst, da die eigene
Stichprobe zwar technisch sauber, aber keine amtliche Bestätigung ist.

**Fachliche Begründung:** Drei unabhängige URL-Proben im SIA-Shop liefern für SIA 2068
„404 - Produkt nicht gefunden!", während dieselbe Seitenstruktur für ein tatsächlich
existierendes Nachbarprodukt (SIA 2061:2021) den vollständigen Produktinhalt mit Preis
liefert; ergänzend erscheint SIA in der Herausgeber-Filterliste einer Rechenzentren-
Suche auf dem Schwesterportal SNV-Connect nicht. Der SIA-Artikel zum Projektstart vom
8.6.2023 existiert weiterhin, sein aktueller Wortlaut zum Bearbeitungsstand liess sich
technisch nicht auslesen (JavaScript-Seite).

**Quelle und Datenstand:** SIA-Shop (shop.sia.ch), eigene technische Stichprobe
28.07.2026; SNV-Connect (connect.snv.ch), eigene Suchabfrage 28.07.2026; SDEA
(sdea.ch/about) und Netzwoche (18.03.2026), beide per WebFetch gelesen 28.07.2026.

## Offene Punkte

- **Keine amtliche Bestätigung durch den SIA selbst eingeholt.** Die eigene
  Shop-Stichprobe ist starke Indizienlage, aber kein offizielles Statement des SIA zum
  aktuellen Bearbeitungsstand von SIA 2068 (in Vernehmlassung? sistiert? umbenannt in
  „TS 2068"? anderer Projekttitel?). Nächster Schritt: direkte Anfrage über das
  SIA-Kontaktformular (sia.ch/de/cms/beratung) oder telefonisch (+41 44 283 15 15).
- **Genauer Wortlaut des ZN-Sitzungsartikels vom 8.6.2023 nicht erneut verifizierbar**,
  weil sia.ch eine reine Client-Side-Rendering-Anwendung ist; auch der Reader-Proxy
  r.jina.ai lieferte nur das Seitengerüst. Bei Bedarf: Artikel im normalen Browser
  öffnen und Text manuell kopieren, oder SIA-Newsletter-Archiv/TEC21 nach Folgeartikeln
  durchsuchen.
- **Umbenennung „Merkblatt" → „Technische Spezifikation (TS)" seit 2025** nur über
  WebSearch-Zusammenfassung belegt, nicht im SIA-Originaldokument gelesen - falls SIA
  2068 künftig gesucht wird, auch unter der Bezeichnung „SIA TS 2068" suchen.
- **SDEA-Verbreitungszahlen in der Schweiz 2026** (wie viele Rechenzentren zertifiziert,
  Kosten des Labels/Navigators, Bezug zu Grossverbraucher-Zielvereinbarungen nach
  § 13a EnerG ZH) nicht recherchiert - eigener Zwischenschritt, sollte ein Bauherr das
  SDEA-Label konkret erwägen.
- **Kein Vergleich mit ausländischen/internationalen Normen** (EN 50600, ISO/IEC TS
  22237, deutsche PUE-Effizienzvorgaben laut ZUP-112-Interview Altenburger im
  Basisdestillat) angestellt, obwohl diese als Referenzrahmen dienen könnten, solange
  SIA 2068 fehlt - eigener Vertiefungsbedarf für ein konkretes Projekt.
- **Parlamentarisches Geschäft 21.3534** («SIA-Norm und Effizienz-Label für
  Rechenzentren», Interpellation) konnte technisch nicht im Volltext gelesen werden
  (parlament.ch ebenfalls Client-Side-Rendering) - für eine vollständige Chronologie der
  politischen Vorgeschichte wäre der Volltext (Frage, Antwort Bundesrat, Datum) noch zu
  beschaffen.

## Backlinks

[[serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch]]
