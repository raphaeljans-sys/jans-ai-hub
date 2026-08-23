# QUESTIONS-Nachlauf, siebzehnte Fortsetzung (23.08.2026)

Auftrag: weitere offene Fragen in `wissen/energie/wiki/QUESTIONS.md` abarbeiten, belegt mit
Quelle und Datenstand, dann in die Wiki-Artikel einarbeiten. Zuerst `CHANGELOG.md` und den
Bericht der letzten Session gelesen (sechzehnte Fortsetzung,
`2026-08-23_questions-nachlauf-sechzehnte-fortsetzung.md`), dann dort weitergemacht.

## Ausgangslage

Die sechzehnte Fortsetzung hatte drei Punkte verbleibend offen gelassen:

- **E-R161-1** — Normkauf SN EN ISO 6946 (Luftschicht-Tabellenwert), Beschaffungsentscheid
  Raphaels, keine Recherche möglich.
- **E-R161-3** — PL-02, PL-03, PL-05 nicht filterlos auf Nicht-PDF-Quellen/KI-Erzeugnisse
  gesichtet, «empfohlene Priorität für den nächsten Lauf», aber vom Umfang her ein eigener
  Durchgang analog zum PL-04-Audit in Run 161.
- Eine Reihe seit Run 159/160 bereits mehrfach bestätigter Negativbefunde (E-S1, E103, E94,
  E-R129-5, E-WC32-1, E-R134-3, E-R134-4, E-R148-1, E-R148-2, E-R150-3) — laut Sechzehnter
  Fortsetzung ohne neue Information seit Run 159/160, nicht erneut aufgerollt.

Diese Session hat **E-R161-3** vollständig bearbeitet.

## E-R161-3: PL-02, PL-03, PL-05 filterlos gezählt

**Methodik:** dieselbe filterlose Zählung wie Run 161 (dort PL-04), aber über ein eigenes Script
gefahren statt über einzelne `--get`-Aufrufe des Connectors, weil PL-02 mit über 2'500 Dateien
sonst zu viele Einzelschritte gebraucht hätte. Das Script
(`/tmp/pl-filterlos-260823-scan.mjs`) übernimmt die Zertifikats-Auth wörtlich aus
`connectors/m365-graph.mjs` (App-only, Zertifikat `~/.cli-m365-cert-combined.pem`) und geht
rekursiv über `/drives/{id}/items/{id}/children`, mit Retry bei 429/503.

Die drei Drive-IDs wurden zunächst über `/sites/.../drives` aufgelöst (alle sechs Bibliotheken
der Site `/sites/PL` auf einen Schlag: 01 Kartenportale, 02_Recht_Norm, 03 Brandschutz,
04 Energie, 05 Planungsportale, Dokumente).

### Ergebnis auf einen Blick

| Bibliothek | Dateien | Ordner | Befund |
|---|---|---|---|
| PL-05 Planungsportale | **0** | 0 | vollständig leer |
| PL-03 Brandschutz | 153 | 38 | ausserhalb dieser KB (Skill/KB `brandschutz`) |
| PL-02 Recht_Norm | **2'551** | 403 | bisher nur 1'222 PDF im Register bekannt — 1'329 weitere Dateien nie gezählt |

### PL-05: leer

Kein Ordner, keine Datei. Vollständige Antwort, kein weiterer Klärungsbedarf.

### PL-03 Brandschutz: ausserhalb des Auftrags, Typenverteilung dokumentiert

153 Dateien: 105 PDF, 27 PNG, 11 docx, 7 JPEG, 1 EML, 1 ZIP, 1 Datei ohne Endung (vermutlich ein
Ordnername, der beim rekursiven Walk fälschlich als Dateiname erschien — nicht weiter untersucht,
da ausserhalb des Themas). Diese Bibliothek gehört fachlich zum Skill/zur KB `brandschutz`, nicht
zu `energie`. Die 11 docx und die eine EML wurden **nicht geöffnet** — das wäre Aufgabe eines
Brandschutz-KB-Laufs. Cross-KB-Hinweis in `QUESTIONS.md` hinterlegt (Rule `wissens-bibliothekar`,
Cross-KB-Bringschuld), inklusive der beiden Drive-IDs, damit ein künftiger `brandschutz`-Lauf
nicht neu suchen muss.

### PL-02 Recht_Norm: der grosse Fund

**2'551 Dateien statt der bisher bekannten 1'222 PDF.** Die Typenverteilung zeigte zunächst ein
verwirrendes Bild mit Dutzenden exotischen Endungen (`.nib`, `.plist`, `.framework/...`, `.dwg`,
`.pln`, `.mpr` u.a.) — das sah zunächst nach dem PL-04-Muster (KI-generierte Fremddokumente) aus,
löste sich aber anders auf:

**Fund 1 — ein komplettes App-Bundle.** `06_Richtlinien/Minergie/Tool/Tool_MiEcoV23/MiEcoV23.app/`
ist das MINERGIE-ECO-Rechentool selbst, als macOS-Programmpaket abgelegt: 145 Dateien, 72,9 MB
(`Info.plist`, `.nib`-Interface-Dateien, `.framework`-Unterverzeichnisse für eine eingebettete
FileMaker-Laufzeitumgebung). Kein Dokument, keine Destillation möglich oder nötig — erklärt den
Grossteil der ungewöhnlichen Endungen.

**Fund 2 — 57 fehlplatzierte CAD-Dateien.** Verstreut unter Baurecht-/SIA-/AHB-/
Tiefgarage-Ordnern: `.dwg`, `.pln`, `.mpr`, `.ad4`, `.ctb`, `.upr`, `.stp`, `.wld`, `.cat` u.a. —
JANS-eigene ArchiCAD-/Vectorworks-Arbeitsdateien ohne erkennbaren Energiebezug, offenbar über
Jahre versehentlich in die Rechts-Bibliothek statt in Projektordner gespeichert. Nicht inhaltlich
geprüft (ausserhalb des Auftrags dieser KB, kein Sachbezug erkennbar).

**Die eigentlich relevante Menge:** 108 Dateien in gängigen Office-Formaten (docx, doc, dot,
dotx, xls, xlsx, xlt, indd, txt, htm, md, url), von denen rund 20 in einem erkennbar
Energie-Kontext liegen (Ordner `06_Richtlinien/Minergie/`, `06_Richtlinien/2000 Watt/`,
`04_Merkblätter/Projektadmin AHB/14-Energie-und Gebaeudetechnik/`). Die übrigen ~88 sind
Baurecht-, SIA-Vertragsrecht- und STWEG-Themen — fachlich ausserhalb dieser KB (Cross-KB-Hinweis
gesetzt für `baurecht`, `normen`, `stockwerkeigentum`).

**Fünf der Energie-Kandidaten wurden tatsächlich heruntergeladen und geöffnet** (nicht nur am
Dateinamen eingestuft — der Unterschied ist wichtig, weil genau dieses Muster in Run 161 zwei
echte KI-Fremddokumente unter scheinbar harmlosen Namen fand):

1. **`Nuetzliche Unterlagen/Verschattungs-Tool-Internet.doc`** (34 kB) — seit Run 134 als
   «nächste Priorität» geführt, aber nie geöffnet. Mit `textutil -convert txt` gelesen: der
   gesamte Inhalt ist ein toter Windows-Pfadverweis
   (`C:\Documents and Settings\freimann\Desktop\KursSIA380-1\PV potential estimation
   utility.mht`) — eine kaputte Verknüpfung, kein Fliesstext. Löst den seit drei Läufen offenen
   Punkt mit einem klaren Negativbefund.
2. **`SIA380_1_Energie_im_Hochbau/Energienachweise EnDk.ch.docx`** (489 kB) — Docx-Metadaten:
   Autorin Ursula Buri, erstellt **18.04.2010**, derselbe Tag wie die Metadaten des bereits
   destillierten `faustregeln-energieeffizientes-gebaeude` (Indiz für denselben
   SIA-380/1-Kursordner «KursSIA380-1», auf den auch Fund 1 verweist). Der Fliesstext im
   `document.xml` besteht nur aus den Ziffern «1»/«2» (Seitenzahlen); der gesamte Inhalt steckt
   in 6 eingebetteten PNG-Screenshots der damaligen EnDK-Website (Kontaktdaten, eine Tabelle der
   EN-1-bis-EN-16-Vollzugshilfen mit Ständen 2003-2010, eine Kantons-Übersichtsseite). Inhaltlich
   durch die bereits vollständig gelesenen `vollzugsordner-energie-zh-abschnitt1` bis
   `-abschnitt7-10` (Run 143/144, Stand 2026) überholt. Dokumentiert als überholte Quelle, kein
   eigenes Destillat.
3. **`14.3-Richtlinien/Verzeichnis_Vorschriften_Normen_Richtlinien.xls`** (259 kB, mit
   `soffice --headless --convert-to csv` gelesen, da kein `openpyxl`/`xlrd` auf der Station
   installiert ist) — eine sorgfältig gebaute AHB-Rechtsmatrix (Gewerk × Erlass, mit SR-Nummer,
   Kurzinhalt, Link, Gültigkeitsbereich Bund/Kt. ZH/Stadt ZH). Eintragsdatum aber **12.12.2006**,
   Erlassstände 2000-2006 — 20 Jahre veraltet. Alle zitierten Grundlagen (EnG 2004, EnV 2006,
   PBG 2003 u.a.) sind seither revidiert. Nach Rule `identifikatoren-verifizieren` kein
   zitierfähiger aktueller Rechtsstand. Dokumentiert als historische Quelle, kein Destillat.
4. **`ME-Antrag/GK3-2010ME1.xlsx`** (518 kB, ebenfalls via `soffice`/CSV gelesen) — ein leeres
   MINERGIE-Nutzungsantragsformular, Version 11a, «gültig bis 31.12.2010». Alle Felder
   Platzhalter.
5. **`ME-Antrag/Beispiel 1 Pellets Solar.xls`** (1,1 MB, via `soffice`/CSV gelesen) — ein
   **fiktives** Lehrbeispiel («Objekt: Beispiel 1: Neubau Einfamilienhaus: Variante
   Pellets/Solar», Adresse «Musterstrasse 99, 9999 Musterhausen»), MINERGIE-Version 11, gültig
   bis 31.03.2009. Keine reale Projektzahl, reines Kursmaterial.

Alle fünf sind Negativbefunde. Punkt 4/5 bestätigen (jetzt tatsächlich geöffnet statt nur
vermutet) die bereits in `training/pdf-inventar.md` seit Run 134 stehende Einschätzung, die
`.xls/.xlt`-Dateien im ME-Antrag-Ordner trügen «keinen eigenen Fachinhalt über
`minergie-reglement-wegleitung-2010-historisch` hinaus» — diese Einschätzung war bis heute nicht
am Original verifiziert, sondern nur plausibel vermutet.

**Nicht geöffnet** (Zeit-/Budgetgrenze, niedrige erwartete Priorität nach dem Muster der fünf
geprüften Dateien): `Links/Links.docx`, `Nuetzliche Unterlagen/Gebaeudehuellziffer/IMG_5910.docx`,
`2000 Watt/Module_Wand_Dach.xls`,
`Nuetzliche Unterlagen/Gebaeudehuellziffer/19_sia_380-1_2016_-mac-10_1_12.xlsx` (die offizielle
SIA-380/1-Rechentabelle für Mac — potenziell das wertvollste der nicht geprüften Dokumente, aber
ein Rechenwerkzeug statt Fliesstext und daher kein Kandidat für eine schnelle Sichtung, eher für
einen dedizierten Lauf), die beiden `Weg_zum_Minergiezertifikat/*.indd` (InDesign-Quelldateien
der bereits destillierten PDF-Fassung `weg-zum-minergiezertifikat-ablauf`, reine Layoutdateien
ohne eigenen Fachinhalt zu erwarten), sowie die übrigen `.xls`/`.xlt`-Dateien derselben
ME-Antrag-/Tool-Familie (`GK3-2010ME.xlt`, `minergie11a.xlt`, `Beispiel 2 Gas Solar.xls`,
`NachweisVers11a.xls`, die vier `MINERGIE_ECO_*.xls`-Tool-Formulare) — für diese gilt der
Analogieschluss aus Punkt 4/5, **nicht als Einzelbeleg**, sondern als plausible Fortschreibung
gekennzeichnet.

**Kein KI-generiertes Dokument in PL-02 gefunden.** Anders als in PL-04 (Run 161, zwei
ChatGPT-Erzeugnisse mit charakteristischen Anrede-/Sprach-/UTM-Mustern) sind alle fünf geöffneten
Nicht-PDF-Quellen in PL-02 vordigitale Kursunterlagen bzw. Formulartemplates aus der Zeit
2006-2011 — kein einziges Indiz für einen Chatbot-Ursprung (keine Du-Anrede, kein
bundesdeutsches ß, keine `utm_source`-Parameter, keine leergelaufenen Platzhalter-Formeln).

## Verifikations-Protokoll

| Aussage | Prüfung | Verdikt |
|---|---|---|
| «PL-05 ist leer» | direkter Graph-Root-Call, 0 Kinder | **bestanden** |
| «PL-02 hat 2'551 statt 1'222 Dateien» | rekursiver Vollzähler, Typenhistogramm gegen bekannten PDF-Stand geprüft | **bestanden** |
| «MiEcoV23.app ist ein App-Bundle, kein Dokument» | Pfadstruktur (`.app/Contents/Frameworks/...`), Dateitypen (`.plist`, `.nib`, `.framework`) eindeutig | **bestanden** |
| «Verschattungs-Tool-Internet.doc hat keinen Inhalt» | mit `textutil` tatsächlich geöffnet, nicht nur Dateiname/-grösse beurteilt | **bestanden** |
| «Energienachweise EnDk.ch.docx hat keinen Fliesstext» | `document.xml` direkt aus dem docx-Zip gelesen, zusätzlich alle 6 PNG einzeln betrachtet | **bestanden** |
| «Verzeichnis_Vorschriften ist 20 Jahre alt» | Datumsspalte «Eintrag am» im CSV-Export, Stichprobe der Erlassjahre | **bestanden** |
| «GK3-2010ME1/Beispiel 1 sind ohne reale Projektdaten» | CSV-Export gelesen, Platzhalterfelder («0», «ww») bzw. Musteradresse identifiziert | **bestanden** |
| «Kein KI-generiertes Dokument in PL-02» | alle 5 geöffneten Dateien auf Run-161-Muster (Du-Anrede, ß, utm_source, leere Formeln) geprüft | **bestanden** (keine Treffer) |

## Register gepflegt

`wiki/QUESTIONS.md` (E-R161-3 auf `[x]`, vollständiger Befund inkl. Cross-KB-Hinweis) ·
`training/pdf-inventar.md` (neuer Nachtrag-Abschnitt, zwei neue Drive-IDs) · `CHANGELOG.md`
(dieser Eintrag). Kein neues Destillat, kein neuer FAQ-Eintrag — alle fünf geöffneten Quellen
sind Negativbefunde ohne neuen zitierfähigen Bauherren-Fakt.

Nach jedem Schreibvorgang `git diff --numstat` geprüft: `QUESTIONS.md` +83/-1 (die eine gelöschte
Zeile ist der Statuswechsel `[ ]` → `[x]` derselben Zeile, keine fremde Löschung),
`pdf-inventar.md` +43/-0, `CHANGELOG.md` +26/-0 — ausschliesslich additiv bzw. der erwartete
eigene Statuswechsel.

## Verbleibend offen

- **E-R161-1** — Normkauf SN EN ISO 6946 (Luftschicht-Tabellenwert), Beschaffungsentscheid
  Raphaels, unverändert.
- **E103** — Pflegeplatz-Flächenkennwert aus JANS-Projektdaten, Entscheid Raphaels nötig.
- **E94** — Innendämmungs-Kennwert aus einer realen JANS-Offerte, Entscheid Raphaels nötig.
- Die 88 Baurecht-/SIA-/STWEG-/Brandschutz-Nicht-PDF-Dateien in PL-02/PL-03, die diese Session
  bewusst nicht geöffnet hat — Cross-KB-Fundstelle in `QUESTIONS.md` E-R161-3 hinterlegt, gehört
  fachlich in die KBs `baurecht`, `normen`, `stockwerkeigentum`, `brandschutz`.
- Die nicht einzeln geöffneten Restdateien der Minergie-ME-Antrag-/Tool-Familie in PL-02 (siehe
  oben) — falls ein künftiger Lauf Zeit hat, könnten sie einzeln bestätigt werden, aber die
  erwartete Priorität ist nach dem Muster der fünf geprüften Dateien niedrig.
- Sonstige, bereits mehrfach bestätigte Negativbefunde (E-S1, E-R129-5, E-WC32-1, E-R134-3,
  E-R134-4, E-R148-2, E-R150-3) — unverändert, diese Session hat sie nicht erneut aufgerollt.
