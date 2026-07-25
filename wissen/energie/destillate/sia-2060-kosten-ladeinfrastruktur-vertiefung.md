---
quelle: Kanton Zürich, Baudirektion, Amt für Abfall, Wasser, Energie und Luft (AWEL) — «Infrastruktur für Elektrofahrzeuge in Gebäuden, Infoblatt zu Merkblatt SIA 2060» (PDF, zh.ch), diesmal per `pdftotext -layout` vollständig als Text gelesen (Primärquelle, nicht mehr nur Sekundärzitat); ergänzend erneut Härz AG/elektromobilitaet-schweiz.ch («SIA Normen», FAQ-Seite) zum Abgleich; zusätzlich geprüft und OHNE eigene Kostentabelle befunden: EnergieSchweiz/BFE-Leitfaden «laden-punkt.ch DrehPunkt» (Version 2.0, Dezember 2025), Energie 360° «Ausbaustufen Ladeinfrastruktur», Migrol-Blog «Merkblatt SIA 2060»; Referat Matthias Vogelsang (HEFTI.HESS.MARTIGNONI, Mitglied SIA-Kommission 2060), «Elektromobilität und Schnittstellen zum Gebäude — SIA Merkblatt 2060», Energieagentur St. Gallen, 19.02.2019 — jetzt per curl-Download + multimodalem Read-Tool (Bild-Modus, 15 Folien vollständig) erstmals inhaltlich gelesen; enthält KEINE eigene CHF-Kostentabelle, bestätigt aber die Ausbaustufen-Systematik A/B/C1/C2/D und liefert separate Zielwert-Prozentsätze (Erschliessungsquote), siehe eigener Abschnitt unten
herausgeber: Kanton Zürich Baudirektion AWEL, Abteilung Energie (Kontaktperson im Dokument: Silas Gerber, Energiefachmann); Infoblatt erstellt durch IBG Engineering AG Winterthur im Auftrag AWEL
ausgabe: Infoblatt datiert 13. Oktober 2020 (Datum jetzt erstmals gesichert ablesbar — im vorangehenden Destillat noch als «ohne eigenes Datum gefunden» offen); SIA-Merkblatt 2060 selbst Ausgabe 01.05.2020 (Primärnorm weiterhin kostenpflichtig, nicht eingesehen)
gelesen: 2026-07-13 (ZH-Infoblatt-PDF vollständig per pdftotext -layout extrahiert und im Volltext gelesen, S. 1-4 von 4; Härz-AG-Seite per WebFetch erneut gelesen; 5 weitere Quellen per WebFetch/WebSearch auf Kostenangaben geprüft, keine enthielt eine eigene A/B/C1/C2/D-Tabelle); 2026-07-25 (Run 111: Referat Vogelsang PDF per curl heruntergeladen, `file` bestätigt echtes PDF/1.5, 15 Seiten via `Read`-Tool im Bild-Modus vollständig gelesen — die frühere Archivnotiz «bildbasiert, Textextraktion gescheitert» bezog sich nur auf `pdftotext`/WebFetch; multimodales Lesen der Folien-Screenshots funktionierte)
datenstand: 13.10.2020 (Kostenschätzung Kanton ZH, Basis: Durchschnittswerte Wohn-/Gewerbeobjekte Region Zürich, Preisstand Netzbeitrag/Kabel Stand Juni 2019); Härz-AG-Seite ohne eigenes Aktualisierungsdatum; Referat Vogelsang datiert 19.02.2019 (rund 1,5 Jahre vor dem ZH-Infoblatt, laut Folie 11 während der laufenden SIA-2060-Vernehmlassung 2019, also noch vor der definitiven Ausgabe 01.05.2020)
status: emerging
last_updated: 2026-07-25 (Run 111: Referat Vogelsang jetzt vollständig gelesen — keine eigene Kostentabelle enthalten, siehe neuer Abschnitt; Status bleibt emerging, da weiterhin keine dritte unabhängige CHF-Kostenquelle vorliegt)
---

# SIA 2060 — Kosten je Ausbaustufe (A/B/C1/C2/D): Vertiefung und Quellenlage

**Das Wichtigste in 1 Satz:** Die bisher nur als Sekundärzitat geführten SIA-2060-Kostensätze sind
jetzt direkt aus der Primärquelle (Kanton-ZH-Baudirektion-Infoblatt, 13.10.2020) wortgetreu bestätigt
— eine echte, unabhängig davon berechnete DRITTE Quelle mit eigener A/B/C1/C2/D-Kostentabelle konnte
trotz breiter Recherche aber **nicht gefunden werden**; auch das jetzt vollständig gelesene Referat
Vogelsang (Energieagentur SG, 19.02.2019) liefert keine CHF-Beträge, sondern nur separate
Erschliessungs-Zielwerte in Prozent — alle anderen geprüften Stellen verweisen nur auf den
kostenpflichtigen SIA-Shop oder den SIA-2060-Online-Rechner, statt eigene Zahlen zu nennen.

## Was neu ist gegenüber dem bisherigen Stand

Im Destillat [[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]] war das Kanton-ZH-Infoblatt bisher nur
über ein WebSearch-Zitat bekannt («Primär-PDF bildbasiert nicht auslesbar», zweimal gescheitert). In
diesem Vertiefungslauf liess sich das PDF mit `pdftotext -layout` (statt WebFetch-HTML-Konvertierung)
vollständig und sauber als Text extrahieren. Damit liegt die Primärquelle jetzt im Volltext vor, inkl.
Datum (13. Oktober 2020), Herausgeber-Kontakt (Silas Gerber, AWEL) und der methodischen Grundlage der
Kostenschätzung (Durchschnittswerte unterschiedlich grosser Wohn- und Gewerbeobjekte in Gemeinden rund
um Zürich, Netzbeitrag/Leistungserhöhung je CHF 170.-/kVA, Kabelpreise Stand 16.06.2019).

## Kostentabelle — jetzt wortgetreu aus der Primärquelle

| Stufe | Bezeichnung | Was (Kurzfassung Kanton ZH) | Mehrkosten Wohnungsbau | Mehrkosten Gewerbebau |
|---|---|---|---|---|
| **A** | «Pipe for Power» | Ausbaureserven (Rohre/Tragsysteme, Platzreserven Elektroverteilung) | **CHF 65 pro Wohnung** | CHF 45 pro 100 m² Nutzfläche |
| **B** | «Power for Building» | Elektrische Zuleitung bereits auf Ladeinfrastruktur dimensioniert | **CHF 180 pro Wohnung** | CHF 250 pro 100 m² Nutzfläche |
| **C1** | «Power to Garage» | Stromversorgung per Flachbandkabel zu den Parkplätzen (skalierbar, Abnahme ab 5×16 mm²) | **CHF 350 pro Wohnung** | CHF 320 pro 100 m² Nutzfläche |
| **C2** | «Power to Parking» | Installation je Parkplatz vorbereitet (CEE-16A-Steckdose oder Rückplatte, ohne Fachperson/Sicherheitsnachweis installierbar) | **CHF 400 pro Wohnung** | CHF 380 pro 100 m² Nutzfläche |
| **D** | «Ready to Charge» | Funktionsfähige Ladestation inkl. Lastmanagement- und Abrechnungssystem | **CHF 3'100 pro E-Parkplatz** (nicht mehr auf alle Wohnungen umlegbar, da nutzerverursacht) | CHF 3'100 pro E-Parkplatz (gleich wie Wohnungsbau) |

**Wörtliches Zitat zur Systematik (Kanton ZH, Infoblatt S. 4):** «Die Kosten bis und mit Standard C,
können die Mehrkosten auf das gesamte Objekt umgelegt werden. Da Kosten für die Ladestation beim
Standard D direkt durch den Nutzer (E-Auto Besitzer) verursacht werden, können diese nicht mehr über
alle Wohnungen / Fläche aufgeteilt werden.»

**Abgleich mit der bisherigen Zweitquelle:** Die auf der Härz-AG-Seite (elektromobilitaet-schweiz.ch,
«SIA Normen») genannten Werte sind mit der jetzt gelesenen Primärquelle **zahlengenau identisch** (65 /
180 / 350 / 400 CHF je Wohnung, 3'100 CHF je E-Parkplatz). Die Härz-Seite nennt dabei **keine eigene
Quellenangabe oder Fussnote** — die exakte Übereinstimmung bis auf den Franken spricht dafür, dass
Härz AG dieselbe Kanton-ZH-Zahlenbasis übernommen hat, statt eine eigene, unabhängige Berechnung
vorzulegen. Es handelt sich damit **nicht** um zwei methodisch unabhängige Quellen, auch wenn es
formal zwei unterschiedliche Publikationen sind.

## Recherchierte, aber ergebnislose Drittquellen (Transparenz)

Für eine echte dritte, unabhängig berechnete Quelle wurden zusätzlich geprüft — keine davon nennt eine
eigene A/B/C1/C2/D-Kostentabelle in CHF:

- **EnergieSchweiz/BFE-Leitfaden «laden-punkt.ch DrehPunkt», Version 2.0 (Dezember 2025):** aktuellstes
  amtliches Dokument zum Thema, verweist zur Kostenschätzung explizit auf den **SIA-2060-Online-Rechner**
  (sia2060online.ch) statt eine eigene Tabelle zu drucken («laden-punkt.ch … der SIA 2060 Online
  Rechner zur Verfügung»). Enthält stattdessen kantonale **Förderbeiträge** (z. B. Kanton ZH «Der
  Anschluss zu Hause»: CHF 500.-/Parkplatz bis 15 Parkplätze, danach CHF 300.-/Parkplatz, in Anlehnung
  an Ausbaustufe C1; Kanton ZH «Elektroauto als Speicher»: CHF 2'000.- pauschal je bidirektionaler
  DC-Ladestation, Ausbaustufe D) — das sind Förderbeiträge, keine Kostenangaben der Norm selbst.
- **Energie 360° «Ausbaustufen Ladeinfrastruktur»:** nennt nur relative Kostenverteilung über die Zeit
  («rund 70 % am Anfang, 30 % später» bei C1), keine CHF-Beträge.
- **Migrol-Blog «Merkblatt SIA 2060»:** nur allgemeine Beschreibung, keine Zahlen.
- **SIA-2060-Online-Rechner (sia2060online.ch) und EnergieSchweiz-Rechner-Seite:** interaktive
  Tools, keine publizierte statische Tabelle einsehbar ohne Rechner-Durchlauf.
- **SIA-Shop-Produktseite:** verweist auf das kostenpflichtige Original, keine Kostenzahlen öffentlich.

## Referat Vogelsang (Energieagentur St. Gallen, 19.02.2019) — jetzt vollständig gelesen, Run 111

Das Referat war seit mehreren Läufen als «PDF bildbasiert, Textextraktion (auch per pdftotext)
gescheitert» archiviert. Am 25.07.2026 liess sich die Datei per `curl -sL -A "Mozilla/5.0"` sauber
herunterladen (`file` bestätigt: echtes PDF, Version 1.5, zip deflate encoded, 15 Seiten) und
anschliessend über das `Read`-Tool im multimodalen Bild-Modus vollständig lesen — die Folien sind
Grafik-lastige PowerPoint-Exporte, für `pdftotext` daher tatsächlich leer, für die multimodale
Bildlektüre aber kein Problem.

**Referent:** Matthias Vogelsang, BSc Gebäude Elektroengineering SIA, HEFTI.HESS.MARTIGNONI,
Mitglied SIA-Kommission 2060. **Kontext:** Vortrag der Energieagentur St. Gallen, 19.02.2019 — zu
diesem Zeitpunkt befand sich das Merkblatt SIA 2060 laut Folie 11 noch in der **Vernehmlassung 2019**
(«Vernehmlassung 2019 · Technischer Standard in der Schweiz · Wichtige Aspekte sind definiert»);
das Referat liegt damit rund 1,5 Jahre vor dem Kanton-ZH-Infoblatt (13.10.2020) und noch vor der
definitiven SIA-Ausgabe 01.05.2020.

**Kernbefund: KEINE eigene CHF-Kostentabelle.** Über alle 15 Folien hinweg (Titel, Herausforderungen,
Marktzahlen E-Auto-Neuzulassungen 2016/nach Kantonen, Ladestationen-Grundlagen, Versorgungsnetze,
SIA-Merkblatt-Einordnung, Ausbaustufen-Schema, Hausanschluss-/Ladeplatz-Zielwerte, Lösungsansätze,
Ausblick) taucht an keiner Stelle ein Frankenbetrag auf. Das Referat ist damit **keine** dritte,
unabhängig berechnete Quelle für die A/B/C1/C2/D-Kostensätze der Kanton-ZH-Tabelle oben — der
Kostenaspekt wird im Vortrag schlicht nicht behandelt.

**Was das Referat stattdessen liefert (andere, aber ergänzende Information):**

- **Folie 12 («Ausbaustufen»):** Bestätigt die fünfstufige SIA-2060-Systematik in derselben
  Benennung wie beim Kanton-ZH-Infoblatt: A «Pipe for power», B «Power to building», C1 «Power to
  garage», C2 «Power to parking», D «Ready to charge» — mit Schemazeichnung (Zuleitung ab Netz/PV
  über Elektroverteilung bis zu den einzelnen Parkfeldern, zunehmender Ausbaugrad je Stufe).
- **Folie 13 («power to building», Hausanschluss) — Zielwerte in %, nicht in CHF:**
  Parkplatz PW EFH: «keine Empfehlung SIA» · Parkplatz PW MFH: **80 % Zielwert** · Parkplatz Fahrrad
  MFH: **100 % Zielwert**. Gemeint ist der Anteil der Parkplätze, für die die Zuleitung bereits auf
  Stufe B (dimensionierte Zuleitung) vorbereitet sein soll.
- **Folie 14 («ready to charge», Anzahl Ladeplätze) — ebenfalls Zielwerte, nicht CHF:**
  Parkplatz PW EFH: **1 Ladeplatz** · Parkplatz PW MFH: **Ausbau 20 %, min. 2 Ladeplätze** ·
  Parkplatz Fahrrad MFH: **Ausbau 80 %**. Das ist der Anteil der Parkplätze, die auf der höchsten
  Stufe D (funktionsfähige Ladestation) tatsächlich ausgerüstet sein sollen.
- **Folie 16 («Lösung»):** Nennt als Planungsfaktoren Ladedauer (Nacht-/Tagladung), Fahrzeugtyp/
  Ladeart, Gleichzeitigkeit (Lastmanagementsystem gegen Lastspitzen/Energiekosten), Abrechnung/Zugang
  sowie «Fahrzeug als Stromspeicher» (Vehicle-to-Grid) — rein qualitativ, ohne Zahlen.

**Einordnung für diese KB:** Diese Prozent-Zielwerte (Erschliessungsquote je Stufe) sind ein
eigenständiger, bisher in dieser Vertiefung nicht dokumentierter Baustein der SIA-2060-Systematik —
sie beantworten «wie viele Parkplätze müssen mindestens ausgerüstet sein», während die Kanton-ZH-
Tabelle oben «was kostet die Ausrüstung pro Einheit» beantwortet. Beide Angaben ergänzen sich, sind
aber nicht direkt vergleichbar und lösen die offene Frage nach einer dritten unabhängigen
Kostenquelle **nicht**. Ob 80 %/100 %/20 % feste SIA-2060-Normwerte sind oder Vogelsangs eigene
Projekterfahrungswerte (HEFTI.HESS.MARTIGNONI), lässt sich aus dem Referat allein nicht sicher
unterscheiden — dafür müsste die kostenpflichtige Norm selbst eingesehen werden (weiterhin offen,
siehe unten).

## Ehrliche Einordnung des Status

Die Zahlen sind **jetzt aus der Primärquelle direkt bestätigt** (nicht mehr nur Sekundärzitat) — das
ist ein echter Fortschritt gegenüber dem vorherigen Stand. Für die strenge KB-Regel «established nur
bei 2 unabhängigen, übereinstimmenden Quellen» reicht das nach heutiger Recherche aber **nicht**, weil
die einzige zweite Fundstelle (Härz AG) keine erkennbar eigenständige Berechnung zeigt, sondern
dieselben Zahlen ohne Quellenangabe übernimmt. Der Status bleibt daher bewusst **emerging** — mit dem
Zusatz, dass die Primärquelle nun im Volltext vorliegt und die Zahlen als «amtlich referiert, aber
nicht durch eine zweite unabhängige Berechnung bestätigt» zu behandeln sind.

## Bauherren-Transfer

- **Für die Kostenschätzung im Neubau/bei Sanierung mit Tiefgarage** sind die Kanton-ZH-Sätze die
  bislang am besten belegte Grössenordnung: Grunderschliessung bis Stufe C1/C2 kostet **CHF 350–400
  pro Wohnung** (also bei 20 Wohnungen rund CHF 7'000–8'000 für die gesamte Vorbereitung aller
  Parkplätze) — die eigentliche Ladestation (Stufe D) kommt erst **on top pro E-Parkplatz** mit rund
  **CHF 3'100**, und diese Kosten sind sinnvollerweise dem jeweiligen Nutzer (Mehrpreis Parkplatzmiete
  oder Direktkauf) zuzuordnen, nicht der Gesamtliegenschaft.
  Grundinstallation Stufe C1/C2 kostet **CHF 350–400 pro Wohnung**, die Ladestation selbst (Stufe D)
  wird korrekt dem Einzelnutzer verrechnet (rund CHF 3'100 pro E-Parkplatz) — das deckt sich mit der
  bereits im Basisdestillat verankerten Empfehlung «zuerst günstige Grunderschliessung, Ladestation
  später nachrüsten».
- **Regionaler Vorbehalt:** Die Kostenbasis stammt aus Durchschnittswerten «rund um Zürich» (2019/2020)
  — für Projekte ausserhalb der Region ZH oder mit heutigem (2026er) Preisniveau ist ein Aufschlag für
  Teuerung/Materialpreise realistisch; als grobe Referenzgrösse für die Grobkostenschätzung bleibt die
  Grössenordnung aber brauchbar.
- **Fördergelder mitrechnen:** Kanton ZH fördert die Grunderschliessung («Der Anschluss zu Hause»)
  aktuell mit CHF 500.- je Parkplatz (bis 15 Parkplätze, danach CHF 300.-) und die bidirektionale
  Ladestation mit CHF 2'000.- pauschal — das reduziert die Netto-Mehrkosten der Bauherrschaft zusätzlich
  zu den oben genannten Bruttosätzen (Quelle: EnergieSchweiz/BFE-Leitfaden «laden-punkt.ch», Version 2.0,
  Dezember 2025; kantonal/kommunal unterschiedlich, im Einzelfall über `[[energiefranken-foerder-suchmaschine-ch]]`
  verifizieren).

## Offene Punkte

- Eine echte, methodisch unabhängige DRITTE Berechnung der A/B/C1/C2/D-Kostensätze wurde **nicht**
  gefunden — weder bei SIA selbst (Norm kostenpflichtig), noch bei EnergieSchweiz/BFE (verweist auf
  den Online-Rechner statt auf eine gedruckte Tabelle), noch bei anderen Kantonen/Gemeinden (keine
  eigene Infoblatt-Kostentabelle auffindbar; der Sevelen-Link aus der Suche war beim Abruf leer/tot).
- Sollte künftig der SIA-2060-Online-Rechner (sia2060online.ch/rechner) mit konkreten Beispieleingaben
  durchgerechnet werden können, liesse sich daraus eine echte zweite, unabhängige Zahlenreihe ableiten
  — das wäre der nächste sinnvolle Vertiefungsschritt, um den Status auf established zu heben.
  **Versuch 2026-07-13 (Run 49):** WebFetch auf sia2060online.ch liefert nur die statische
  Marketing-Beschreibung («Schnellcheck»/«Detailcheck», PDF-Export) — der Rechner selbst ist ein
  interaktives JS-Formular ohne im HTML sichtbare Beispielwerte oder Formeln. Bestätigt: dieser
  Schritt braucht echten interaktiven Zugriff (Browser, keine Text-Extraktion) und bleibt offen;
  nicht erneut per WebFetch versuchen.
- Die Kostenbasis ist inzwischen über 5 Jahre alt (Preisstand 2019/2020); eine aktualisierte
  Kostenschätzung (Teuerung, Materialpreise E-Installation) liegt nicht vor.
- **Neu (Run 111):** Die im Referat Vogelsang genannten Zielwerte (Stufe B: 80 %/100 % Parkplatz-
  Zuleitung PW-MFH/Fahrrad-MFH; Stufe D: 20 % min. 2 Ladeplätze PW-MFH, 80 % Fahrrad-MFH) sind nicht
  eindeutig als feste SIA-2060-Normvorgabe oder als büroeigene Erfahrungswerte von HEFTI.HESS.
  MARTIGNONI erkennbar — Klärung nur über die kostenpflichtige Primärnorm SIA 2060:2020 möglich.
  Bis dahin diese Prozentwerte nur mit Quellenangabe «Referat Vogelsang, nicht amtlich verifiziert»
  weiterverwenden, nicht als gesicherte SIA-Vorgabe darstellen.

**Backlinks:** [[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]] (Basisartikel Ladeinfrastruktur/Grunderschliessung,
enthält dieselbe Tabelle als Übersicht und verweist hierher für die Quellen-Tiefenprüfung).
