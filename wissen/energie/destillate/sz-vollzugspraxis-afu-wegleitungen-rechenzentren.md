---
quelle: "Kanton Schwyz, Amt für Umwelt und Energie (AfU), Webseite «Grossverbraucher»
  (sz.ch/umweltdepartement/amt-fuer-umwelt-und-energie/energie-und-klima/energieberatung/
  grossverbraucher.html, per WebFetch vollständig ausgewertet, 2026-07-28) samt den dort
  verlinkten Vollzugsdokumenten: «Wegleitung zur Energieverbrauchsanalyse» (EVA-Wegleitung,
  sz.ch/public/upload/assets/75004/…, PDF vollständig per curl+pdftotext gelesen, 701 Zeilen,
  gezielt nach Abwärme/Rechenzentrum/Drittabgabe/Gestehungskosten durchsucht), «Richtlinie
  Zielvereinbarungen mit dem Bund» (UZV), «Leitfaden zur Unterstützung der Kantone bei der
  Umsetzung des Grossverbrauchermodells» (EnDK-Dokument), «Deklaration Vorgehensweise» und
  «FAQ Deklaration»; AfU-SZ-Seite «Rechtliche Grundlagen» (sz.ch/…/rechtliche-grundlagen.html,
  per WebFetch ausgewertet); AfU-SZ-FAQ-PDF «Förderprogramm und Energie-Gesetz»
  (sz.ch/public/upload/assets/75011/…, PDF-Extraktion nur teilweise erfolgreich, siehe Offene
  Punkte); Gemeinde Freienbach, Baureglement (Publikationsexemplar, Ausgabe 2022,
  freienbach.ch/_docn/1403057/Baureglement_Freienbach.pdf, PDF vollständig per curl+pdftotext
  gelesen, 3049 Zeilen, vollständige Stichwortsuche Energie/Abwärme/Grossverbraucher/
  Rechenzentrum/Wärmenetz/Anschlusspflicht/Fernwärme); Gemeinde Wollerau, Baureglement
  (gültig ab 20. Mai 2024, wollerau.ch/_doc/6872488, PDF vollständig per curl+pdftotext
  gelesen, 2359 Zeilen, gleiche Stichwortsuche); ergänzend WebSearch-Recherche zu
  Rechenzentrums-Standorten im Bezirk Höfe/Kanton Schwyz sowie zur kommunalen Energieplanung
  Freienbach (econcept-Projektseite, nur Kurzbeschrieb ohne Volltext erreichbar)"
herausgeber: "Amt für Umwelt und Energie des Kantons Schwyz (Vollzug kEnG/kEnV); Gemeinde
  Freienbach (Baureglement, kommunale Bau- und Zonenordnung); Gemeinde Wollerau (Baureglement,
  kommunale Bau- und Zonenordnung); Konferenz Kantonaler Energiedirektoren (EnDK, Leitfaden
  Grossverbrauchermodell, als Vollzugshilfe von AfU SZ verlinkt)"
ausgabe: "AfU-SZ-Webseite Grossverbraucher und EVA-Wegleitung, Abrufstand 2026-07-28 (kein
  separates Ausgabedatum auf der Wegleitung selbst vermerkt, PDF-Metadaten zeigen Autor Silvan
  Gwerder, FAQ-PDF erstellt 28.08.2025); Baureglement Freienbach, Publikationsexemplar 2022;
  Baureglement Wollerau, gültig ab 20.05.2024 (Vorgängerversion 21.06.2016 durch diese
  ersetzt)"
gelesen: "2026-07-28, AfU-SZ-Webseite und EVA-Wegleitung per WebFetch/curl+pdftotext
  vollständig ausgewertet und gezielt nach Abwärme/Rechenzentrum/Drittabgabe/Gestehungskosten
  durchsucht (kein Treffer zu Drittabgabe/Gestehungskosten, Abwärme nur als Energieträger-
  Faktor in der Verbrauchsanalyse); beide Gemeinde-Baureglemente vollständig im Volltext
  per curl+pdftotext gelesen und mit derselben Stichwortliste durchsucht (grep -niE über den
  kompletten Text, keine Passage übersprungen)"
datenstand: "2026-07-28 (Web-/PDF-Abruf); Baureglement Freienbach materiell Stand 2022,
  Baureglement Wollerau materiell Stand 20.05.2024"
status: emerging
last_updated: 2026-07-28
---

# SZ-Vollzugspraxis: AfU-Wegleitungen und Gemeinde-Baureglemente Freienbach/Wollerau zu Grossverbrauchern/Rechenzentren/Abwärme

## Das Wichtigste in 1 Satz

Auch auf der tieferen Vollzugsebene (AfU-SZ-Wegleitungen zum Grossverbraucher-Modell,
Baureglemente Freienbach und Wollerau im Volltext) findet sich **keine** Vollzugshilfe, kein
Merkblatt und keine kommunale Sonderregel zu Abwärme, Rechenzentren oder einer Drittabgabepflicht
im Kanton Schwyz — die beiden bereits gesetzestextfesten Negativbefunde ([[abwaerme-bereitstellungspflicht-sz]],
[[abwasserwaerme-bewilligung-sz-vertiefung]]) werden damit auch auf der Vollzugsebene bestätigt,
und zusätzlich ergab die Recherche, dass die Prämisse «Freienbach/Wollerau als bekannte
Rechenzentrums-Standorte» sich nicht belegen liess (eigenständiger Zusatzbefund, siehe unten).

## Kernaussagen mit Fundstelle

### 1. AfU-SZ-Vollzugsapparat zum Grossverbraucher-Modell ist vollständig demand-seitig, nicht abwärme-/rechenzentrumsspezifisch

Die AfU-SZ-Seite «Grossverbraucher» verlinkt den kompletten Vollzugs-Dokumentensatz zu § 9 kEnG
(Schwelle 5 GWh Wärme bzw. 0,5 GWh Strom pro Jahr):

- «Wegleitung zur Energieverbrauchsanalyse» (EVA-Wegleitung, 16 Seiten, vollständig gelesen)
- «Richtlinie Zielvereinbarungen mit dem Bund zur Steigerung der Energieeffizienz und
  Verminderung der CO2-Emissionen» (UZV, bundesweit gültiges 10-Jahres-Instrument)
- «Leitfaden zur Unterstützung der Kantone bei der Umsetzung des Grossverbrauchermodells»
  (EnDK-Dokument, kantonsübergreifend, nicht SZ-spezifisch)
- «Umsetzung des Grossverbrauchermodells: Deklaration Vorgehensweise» und die dazugehörige FAQ

Die EVA-Wegleitung enthält **einzige Abwärme-Erwähnung** als Berechnungsfaktor innerhalb der
Energieverbrauchsanalyse selbst: «Fernwärme & -kälte (inkl. externer Abwärme): Faktor 0.6» und
«Umweltwärme (inkl. interner Abwärme) & erneuerbare Stromeigenproduktion: Faktor 0» (EVA-Wegleitung
S. 5 f.), sowie eine Erläuterung, wie der Anteil «externer Abwärme» am Wärmepumpen-/
Kältemaschinen-Betrieb im Berechnungsformular einzutragen ist, und dass «direkt genutzte interne
Abwärme» als Effizienzmassnahme angerechnet werden kann. **Das ist eine Bilanzierungsregel für
die eigene Verbrauchsanalyse eines Grossverbrauchers — keine Pflicht, Abwärme Dritten
bereitzustellen, und kein Rechenzentrums-spezifischer Vollzugstatbestand.** Die Stichwortsuche
nach «Drittabgabe», «Gestehungskosten» und «Rechenzentrum» im vollständigen EVA-Wegleitungstext
ergab **keinen Treffer**.

**Einordnung:** Damit bestätigt sich auf der Vollzugsebene, was die beiden Vorgänger-Destillate
bereits am Gesetzestext (kEnG § 9, § 21 kEnV) gezeigt haben: Das SZ-Grossverbraucher-Modell misst
und adressiert ausschliesslich die **Verbrauchsseite** (Effizienzsteigerung um 15 % in drei Jahren
bei der EVA, ~1,5 % jährlich bei der UZV) — eine Vollzugshilfe, die eine Abwärme-Angebotsseite
(Drittabgabe, Gestehungskosten, Rechenzentrums-Sonderregeln analog zur ZH-AWEL-Merkblattlinie
«2023_rechenzentren_v1.pdf») regeln würde, existiert im AfU-SZ-Dokumentensatz nicht.

### 2. AfU-SZ-Seite «Rechtliche Grundlagen» verweist nur auf die bereits geprüften Erlasse

Die Seite «Rechtliche Grundlagen» (AfU-SZ-Energievorschriften) listet als kantonale Grundlagen
ausschliesslich das bereits im Vorgänger-Destillat vollständig gelesene kEnG (SRSZ 420.100) und
die kEnV (SRSZ 420.111) sowie die MuKEn als Mustervorlage; als Themenschwerpunkte werden
Wärmeerzeugerersatz, Eigenstromerzeugung bei Neubauten, Elektroheizungsverbote und Heizungen im
Freien genannt. Ein Verweis auf «nicht anders nutzbare Abwärme» taucht dort nur im Kontext des
Verbots ungedämmter Aussenheizungen auf (Ausnahmeregel), **nicht** im Kontext einer
Bereitstellungs- oder Drittabgabepflicht. Es gibt auf dieser Seite keinen separaten Abschnitt und
keinen weiterführenden Link zu Rechenzentren oder Grossverbraucher-Abwärme.

### 3. Baureglement Freienbach (2022): keine Bestimmung zu Energie/Abwärme/Rechenzentren über die
    Erschliessungs-Standardformel hinaus

Das vollständige Baureglement der Gemeinde Freienbach (Publikationsexemplar 2022, 3049 Zeilen)
erwähnt «Energie» nur an folgenden Stellen: als Bestandteil der Groberschliessungspflicht (Art. 5
Abs. 4: «Versorgungs- und Entsorgungseinrichtungen [Wasser, Energie, Abwasser]»), als
Baureife-Kriterium (Art. 8 Abs. 1 lit. b: «Trink- und Brauchwasser, Energie, genügender
Löschschutz»), als allgemeine Energiespar-Klausel bei der Wärmedämmung (Art. 16: «Wärmedämmung
der gesamten Gebäudehülle … Vorbehalten bleiben die kantonalen Bestimmungen über das
Energiesparen»), als Kriterium für Ausnahmebewilligungen (Art. mit «besondere Massnahmen zur
Energieeinsparung») und als Bestandteil des Energienachweises im Baugesuch. Die vollständige
Stichwortsuche nach «Abwärme», «Grossverbraucher», «Rechenzentrum», «Wärmenetz»,
«Anschlusspflicht» und «Fernwärme» ergab **keinen einzigen Treffer** im gesamten Baureglement,
auch nicht in den Zonenvorschriften der Gewerbezone (Art. 43), wo eine Rechenzentrums-Nutzung
zonenrechtlich anzusiedeln wäre.

### 4. Baureglement Wollerau (gültig ab 20.05.2024): «Energiekonzept» nur als weicher
    Gestaltungsplan-Bonusfaktor

Das vollständige, aktuell gültige Baureglement der Gemeinde Wollerau (2359 Zeilen) erwähnt
«Energie» nur in einer einzigen inhaltlich relevanten Bestimmung: Bei den Voraussetzungen für
einen Gestaltungsplan mit Mehrwert wird als einer von mehreren möglichen Bonusfaktoren genannt,
dass «ein dem aktuellen Stand der Technik entsprechendes wirtschaftliches und umweltfreundliches
Energiekonzept vorgesehen ist oder andere im öffentlichen Interesse liegende Mehrleistungen
ausgewiesen werden» — neben Kriterien wie architektonischer Qualität, Frei-/Erholungsflächen,
Verkehrstrennung, unterirdischen Garagen und verdichteter Bauweise. **Das ist ein freiwilliges,
unbeziffertes Qualitätskriterium für den Bonus eines Gestaltungsplans** (kein verbindlicher
Schwellenwert, keine Rechenzentrums- oder Abwärme-Erwähnung) — strukturell näher an einer
Ermessens-Anreizklausel als an einer Auflage. Die übrige Stichwortsuche (Abwärme,
Grossverbraucher, Rechenzentrum, Wärmenetz, Anschlusspflicht, Fernwärme) ergab **keinen weiteren
Treffer**.

### 5. Zusatzbefund (Prämisse korrigiert): Rechenzentrums-Konzentration liegt recherchierbar nicht in
    Freienbach/Wollerau, sondern im Grossraum Zürich

Die Recherche (WebSearch zu Rechenzentrums-Standorten Schweiz, insbesondere AlgorithmWatch-
Recherche «Rechenzentren in der Schweiz») nennt als tatsächliche Standort-Schwerpunkte Volketswil,
Rümlang, Dielsdorf, Winterthur und Glattfelden (alle Kt. ZH), Laufenburg (Kt. AG), Beringen
(Kt. SH) und Saint-Triphon (Kt. VD) — **kein einziger Treffer** für Freienbach, Wollerau,
Pfäffikon SZ oder einen anderen Ort im Bezirk Höfe. Auch eine gezielte `site:sz.ch`-Suche nach
«Rechenzentrum» ergab nur Treffer zu kantonseigenen IT-Rechenzentren (Verwaltung, Schulen:
Schulrechenzentrum Ausserschwyz SRZA in Pfäffikon, Kantonspolizei), nicht zu kommerziellen
Data-Center-Ansiedlungen. **Dieser Befund korrigiert die im Recherche-Auftrag formulierte
Prämisse** (Freienbach/Wollerau als «historisch/aktuell Standorte fuer Rechenzentren/
Datacenter»): Sie liess sich mit den verfügbaren Quellen nicht bestätigen — die beiden
Vorgänger-Destillate bleiben deshalb strategisch relevant für den Kanton Schwyz insgesamt, nicht
weil in diesen beiden Gemeinden nachweislich Rechenzentren stehen. Das erklärt zugleich plausibel,
weshalb weder das AfU-SZ-Vollzugsmaterial noch die beiden Baureglemente eine
Rechenzentrums-spezifische Regel kennen: Es fehlt (soweit recherchierbar) der lokale
Anlassfall, der eine solche Regel ausgelöst hätte.

### 6. Kommunale Energieplanung Freienbach existiert, Inhalt nicht im Volltext zugänglich

Eine WebSearch fand eine abgeschlossene «Kommunale Energieplanung für die Gemeinde Freienbach
SZ» durch das Beratungsunternehmen econcept («räumliche Koordination von Wärmeangebot und
-nachfrage»); die econcept-Projektseite selbst lieferte im WebFetch keinen Volltext und keine
Erwähnung von Abwärme/Grossverbrauchern/Rechenzentren. Ob dieser Energierichtplan eine
Anschlusspflicht an ein Wärmenetz oder eine Rechenzentrums-/Grossverbraucher-Klausel enthält,
bleibt **offen** (siehe Offene Punkte) — ein solcher kommunaler Energierichtplan wäre, anders als
das Baureglement, die richtige Fundstelle für eine allfällige Anschluss- oder
Abwärmenutzungspflicht und wurde in diesem Lauf nicht im Volltext erreicht.

## Bauherren-Transfer

- **Für ein JANS-Projekt mit grossem Energieverbrauch (Rechenzentrum, Kälteanlage, Gewerbe) in
  Freienbach oder Wollerau** gilt: Weder das kantonale AfU-Vollzugsmaterial noch die beiden
  Gemeinde-Baureglemente enthalten eine bezifferte Abwärme-Drittabgabepflicht oder ein
  Rechenzentrums-spezifisches Bewilligungsregime — die bereits dokumentierten kantonalen
  Negativbefunde gelten unverändert auch für diese beiden Gemeinden.
- **Die einzige verbindliche Vollzugsschiene bleibt das Grossverbraucher-Modell nach § 9 kEnG**
  (Schwelle 5 GWh Wärme / 0,5 GWh Strom pro Jahr): Wer diese Schwelle überschreitet, muss eine
  Verbrauchsanalyse (EVA) durchführen oder eine Zielvereinbarung (UZV/KZV) abschliessen — dabei
  wird «externe Abwärme» nur als Rechengrösse in der eigenen Bilanz erfasst (Faktor 0.6 bei
  Fernwärme/-kälte inkl. externer Abwärme, Faktor 0 bei interner Abwärme/Umweltwärme), nicht als
  Grundlage einer Abgabepflicht an Dritte.
- **In Wollerau lohnt sich ein Blick auf den Gestaltungsplan-Bonus:** Ein «wirtschaftliches und
  umweltfreundliches Energiekonzept nach Stand der Technik» ist dort einer von mehreren
  möglichen Faktoren, die einen Gestaltungsplan mit Mehrwert (Abweichungen von der
  Normalbauweise) rechtfertigen — das ist ein Verhandlungsargument bei einem Gestaltungsplan-
  Vorhaben, keine Pflicht.
- **Der offene kommunale Energierichtplan Freienbach (econcept) ist die nächstliegende
  Fundstelle**, sollte ein konkretes Projekt eine Abwärmenutzung oder einen Wärmenetzanschluss
  prüfen wollen — vor einer definitiven Projektierung lohnt sich die direkte Anfrage bei der
  Gemeindeverwaltung Freienbach (Bauamt Unterdorfstrasse 9, Pfäffikon) nach dem aktuellen Stand
  dieses Energierichtplans.
- **Die korrigierte Standort-Prämisse ist selbst ein Ergebnis:** Sollte ein Mandat tatsächlich ein
  Rechenzentrum in Freienbach oder Wollerau betreffen, handelt es sich um einen neuen, bisher
  regulatorisch nicht antizipierten Fall in beiden Gemeinden — das spricht dafür, frühzeitig mit
  der Gemeinde und dem AfU SZ das Gespräch zu suchen, statt sich auf eine bestehende Praxis zu
  verlassen, die es (soweit recherchierbar) noch nicht gibt.

## Offene Punkte

- **Kommunaler Energierichtplan Freienbach (econcept) nicht im Volltext geprüft.** Die
  Projektseite nennt nur den Titel und den generischen Zweck («räumliche Koordination von
  Wärmeangebot und -nachfrage»); ob der Richtplan eine Anschlusspflicht, ein
  Fernwärme-Vorranggebiet oder eine Grossverbraucher-/Rechenzentrums-Klausel enthält, ist
  **nicht** geklärt — nächster Schritt: direkte Anfrage bei der Gemeindeverwaltung Freienbach
  oder bei econcept nach dem Schlussbericht.
- **AfU-SZ-FAQ-PDF «Förderprogramm und Energie-Gesetz» nicht vollständig durchsuchbar.** Der
  WebFetch-Textextrakt lieferte nur PDF-Metadaten statt der eigentlichen Frage-Antwort-Inhalte;
  ob dieses FAQ Abwärme- oder Rechenzentrums-Fragen behandelt, konnte in diesem Lauf **nicht**
  abschliessend geprüft werden (Datei liegt lokal als Binärobjekt vor, eine erneute
  pdftotext-Extraktion wäre der nächste Schritt).
- **Aktualität des Wollerau-Baureglements der Vorgängerversion (gültig bis 19.05.2024) nicht
  gegengeprüft** — nur die aktuell gültige Fassung (ab 20.05.2024) wurde vollständig gelesen;
  falls ein Bestandesprojekt nach altem Recht beurteilt werden muss, ist die Vorgängerversion
  gesondert zu beschaffen.
- **Keine Interview-/Telefonrecherche beim AfU SZ oder den Bauämtern Freienbach/Wollerau
  durchgeführt.** Die hier dokumentierten Negativbefunde beruhen auf der Auswertung publizierter
  Webseiten und PDFs, nicht auf einer behördlichen Bestätigung, dass keine ungeschriebene
  Vollzugspraxis (z.B. eine Standard-Auflage im Einzelfall-Baubewilligungsverfahren) existiert.
  Für ein konkretes Mandat mit Rechenzentrums- oder Grossverbraucher-Bezug in einer dieser beiden
  Gemeinden ist die direkte Anfrage beim zuständigen Bauamt bzw. beim AfU SZ weiterhin der
  nächste, in beiden Vorgänger-Destillaten bereits empfohlene Schritt.
- **Standort-Prämisse nur negativ, nicht abschliessend geprüft.** Dass die WebSearch-Recherche
  keine Rechenzentrums-Ansiedlung in Freienbach/Wollerau fand, schliesst eine noch nicht
  publizierte, im Bau befindliche oder in Planung stehende Ansiedlung nicht sicher aus — ein
  Amtsblatt-/Baugesuchs-Check der beiden Gemeinden für die letzten 2-3 Jahre wäre der nächste
  Schritt, sollte diese Frage für ein konkretes Mandat wichtig werden.

## Quellen

- Kanton Schwyz, Amt für Umwelt und Energie, Seite «Grossverbraucher»,
  `sz.ch/umweltdepartement/amt-fuer-umwelt-und-energie/energie-und-klima/energieberatung/
  grossverbraucher.html` (WebFetch, 2026-07-28).
- Kanton Schwyz, Amt für Umwelt und Energie, «Wegleitung zur Energieverbrauchsanalyse»,
  `sz.ch/public/upload/assets/75004/Wegleitung_zur_Energieverbrauchsanalyse.pdf` (PDF, 16
  Seiten, vollständig per curl+pdftotext gelesen, 2026-07-28).
- Kanton Schwyz, Amt für Umwelt und Energie, Seite «Rechtliche Grundlagen»,
  `sz.ch/umweltdepartement/amt-fuer-umwelt-und-energie/energie-und-klima/energievorschriften/
  rechtliche-grundlagen.html` (WebFetch, 2026-07-28).
- Kanton Schwyz, Amt für Umwelt und Energie, FAQ-PDF «Förderprogramm und Energie-Gesetz»,
  `sz.ch/public/upload/assets/75011/FAQ_Haeufig_gestellte_Fragen_zu_den_Themen_Foerderprogramm_
  und_Energie-Gesetz.pdf` (PDF-Metadaten ausgewertet, Volltext-Extraktion nicht erfolgreich,
  2026-07-28).
- Gemeinde Freienbach, Baureglement, Publikationsexemplar 2022,
  `freienbach.ch/_docn/1403057/Baureglement_Freienbach.pdf` (PDF, vollständig per
  curl+pdftotext gelesen, 3049 Zeilen, 2026-07-28).
- Gemeinde Wollerau, Baureglement, gültig ab 20.05.2024, `wollerau.ch/_doc/6872488` (PDF,
  vollständig per curl+pdftotext gelesen, 2359 Zeilen, 2026-07-28).
- AlgorithmWatch CH, «Rechenzentren in der Schweiz: Generieren ohne Grenzen?»,
  `algorithmwatch.ch/de/recherche-rechenzentren-schweiz/` (WebFetch, 2026-07-28, als
  Negativbeleg für Rechenzentrums-Standorte im Bezirk Höfe).
- econcept AG, Projektseite «Kommunale Energieplanung für die Gemeinde Freienbach SZ»,
  `econcept.ch/en/projects/kommunale-energieplanung-fur-die-gemeinde-freienbach-sz_0/`
  (WebFetch, 2026-07-28, nur Kurzbeschrieb ohne Volltext).
- Vorgänger-Destillate `wissen/energie/destillate/abwaerme-bereitstellungspflicht-sz.md` und
  `wissen/energie/destillate/abwasserwaerme-bewilligung-sz-vertiefung.md` (Run 116/117,
  2026-07-27) als Ausgangspunkt und Grundlage der hier vertieften Vollzugsprüfung.

## Backlinks

[[abwaerme-bereitstellungspflicht-sz]] · [[abwasserwaerme-bewilligung-sz-vertiefung]]
