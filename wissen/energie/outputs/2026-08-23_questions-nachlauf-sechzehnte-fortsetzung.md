# QUESTIONS-Nachlauf, sechzehnte Fortsetzung (23.08.2026)

Auftrag: weitere offene Fragen in `wissen/energie/wiki/QUESTIONS.md` abarbeiten, belegt mit
Quelle und Datenstand, dann in die Wiki-Artikel einarbeiten. Zuerst `CHANGELOG.md` und den
Bericht des letzten Laufs gelesen (`2026-08-23_energie-run161.md`), dann dort weitergemacht.

## Ausgangslage

Run 161 hatte drei neue offene Punkte eröffnet:

- **E-R161-1** — Tabellenwert für Luftschichten nach SN EN ISO 6946 fehlt. Als
  Beschaffungsentscheid Raphaels markiert (Normkauf), keine Recherche möglich.
- **E-R161-2** — zwei Stora-Enso-λ-Werte (0,110 vs. 0,12) nebeneinander, Differenz unerklärt.
  Ausdrücklich als «aus eigener Kraft lösbarer Rechercheauftrag» markiert.
- **E-R161-3** — PL-02/03/05 nicht filterlos auf KI-erzeugte/Nicht-PDF-Quellen gesichtet.
  Empfohlene Priorität für den nächsten Lauf, aber vom Umfang her ein eigener Durchgang
  (analog zum PL-04-Audit in Run 161, der einen ganzen Lauf mit M365-Graph-Zugriff brauchte).

Die übrigen offenen `- [ ]`-Zeilen (E-S1, E103, E94, E-R129-5, E-WC32-1, E-R134-3, E-R134-4,
E-R148-1, E-R148-2, E-R150-3) sind laut Run-160-Bericht bereits in der vierzehnten Fortsetzung
einzeln durchgesehen und als weiterhin nicht durch Recherche lösbar bestätigt worden
(Prozessnotizen, Entscheidungen Raphaels oder dokumentierte Negativbefunde ohne neue Quelle).
Diese Sitzung hat sie nicht erneut aufgerollt — eine Wiederholung ohne neue Information hätte
nur den bereits bestätigten Befund reproduziert.

## Nebenfund: leaked Tool-Tags in 12 KB-Dateien

Beim Lesen von `[[clt-bauteilkatalog-stora-enso]]` (für E-R161-2 nötig) fiel am Dateiende der
wörtliche Text `</content>` gefolgt von `</invoke>` auf — keine Markdown-Syntax, sondern XML-Tags
eines Tool-Aufrufs, die offenbar bei einem früheren Schreibvorgang direkt mit in den Artikeltext
geraten sind (Ursache nicht mehr rekonstruierbar; Commit `7b4c0777` vom 25.07.2026, ein
Massen-Commit «3185 Datei(en)», trägt die letzte Änderung an der betroffenen Datei).

Gezielter Grep über die ganze KB (`grep -rl '^</content>$\|^</invoke>$' wissen/energie/`) fand
12 betroffene Dateien:

Destillate (zitierfähiger Bestand, 8 Dateien):
- `clt-bauteilkatalog-stora-enso.md` (`</content>` + `</invoke>`)
- `minergie-zertifizierung-workflow.md` (`</content>` + `</invoke>`)
- `pv-fassade-ertrag-pvsol.md` (`</content>` + `</invoke>`)
- `minergie-nachweiskurs-2023-mkz-thge.md` (`</content>` + `</invoke>`)
- `swissolar-stp-vkf-brandschutz-solaranlagen.md` (nur `</content>`)
- `en-lueftung-kuehlung-zh.md` (nur `</content>`)
- `waermepumpe-systemvergleich.md` (nur `</content>`)
- `minergie-fallstudie-maison-climat.md` (nur `</content>`)

Outputs (Laufberichte, 4 Dateien, alle Juni 2026, nur `</content>`):
- `2026-06-12_energie-run8.md`, `2026-06-17_energie-run10.md`,
  `2026-06-18_energie-run11.md`, `2026-06-21_energie-run14.md`

In jeder Datei stand die Garbage-Zeile ausschliesslich als letzte(s) Zeile(n) — nie mitten im
Fliesstext, keine sonstige Verstümmelung gefunden (geprüft u.a. auf falsch eingefügte
`**`-Markierungen, Fehlanzeige). Alle 12 Dateien mit gezieltem `Edit` bereinigt (kein globales
Suchen-Ersetzen, Rule 260811); `git diff --numstat` je Datei zeigt exakt die erwarteten 1-2
gelöschten Zeilen und 0 Zeilen hinzugefügt.

**Einordnung:** kein bisheriger `wissenscheck`-Lauf hat dieses Muster aufgedeckt. Die
betroffenen Destillate sind seit Juni/Juli 2026 im aktiven, zitierfähigen Bestand und wurden in
dieser Zeit bereits in FAQ-Einträgen und Backlinks referenziert — die Garbage-Zeile selbst hatte
keine inhaltliche Wirkung (sie stand nach dem eigentlichen Textende), war aber ein sichtbarer
Makel bei jedem Öffnen der Datei. Empfehlung an einen künftigen `wissenscheck`-Lauf: das
Grep-Muster `^</content>$|^</invoke>$` (bzw. allgemeiner `^<\/[a-z_]+>$`) als Standardprüfung
aufnehmen, auch für die anderen KBs unter `wissen/`.

## E-R161-2 geklärt: Herkunft exakt lokalisiert, Lesart begründet

**Korrektur zur eigenen Prämisse der QUESTIONS-Notiz:** Es handelt sich nicht um zwei
verschiedene Stora-Enso-Dokumente, sondern um **ein einziges** PDF, aus dem beide Destillate
unterschiedliche Kapitel lesen: «CLT by Stora Enso — Technische Dokumentation: Bauphysik»,
Version 06.2021, 178 Seiten. Fundort: `~/Library/CloudStorage/Dropbox/YORCK/_Archiv/2408 WB
BIWAK/07 Referenzen/_clt/CLT by Stora Enso-Technical documentation - Building physics-2021-DE.pdf`
(per `mdfind` gefunden). Kein `pdftotext` auf der Station installiert; Text mit Python/PyMuPDF
(`fitz`, bereits im System vorhanden) extrahiert.

**Befund am Original:**

- **S. 6 (Kap. 1, «Wärmeschutz»):** wörtlich «Laut Norm EN ISO 10456 beträgt die
  Wärmeleitfähigkeit λ von CLT **0,12 W/mK**.» Dieser Wert wird in allen Beispielrechnungen
  S. 6-13 (100 mm CLT pur, gedämmte Varianten, Vergleichstabelle S. 10-11) als
  Materialkonstante «CLT von Stora Enso» verwendet, ohne Bezug auf eine Sortier-/Produktklasse.
- **S. 41-96 (Kap. 4, Bauteilkatalog, Aussenwand-Varianten V1-V9 geprüft) und S. 167
  (Dach-Variante 1):** die Schichttabelle nennt durchgehend **λ 0,110 W/(m·K), μ 50,
  ρ 470 kg/m³** — für die Wandtragschicht «CLT 100/120 **C3s**» ebenso wie für die
  Dachtragschicht «CLT 140 **L5s**» exakt dasselbe Zahlentripel. 27 von 56 durchsuchten Seiten
  im Aussenwand-Abschnitt (S. 40-96) enthalten diesen Wert.
- **Keine Auflösung im Dokument selbst:** Front- und Kapitelseiten (S. 1-5, 38-39) enthalten
  kein Glossar, das «C3s»/«L5s» erklärt. Volltextsuche über alle 178 Seiten nach
  «Leistungserklärung», «Deklarationswert», «Festigkeitsklasse», «Sortierklasse» ohne Treffer.

**Lesart (plausibel, nicht im Dokument ausdrücklich bestätigt):** 0,12 ist der **normative
Pauschalwert** (EN ISO 10456), mit dem Kap. 1 nur illustriert, wie ein U-Wert überhaupt
gerechnet wird. 0,110 (mit ρ/μ in gleicher Präzision danebengestellt) ist der Wert, mit dem
Stora Enso in seinem **eigenen Bauteilkatalog** tatsächlich rechnet — identisch für zwei
verschiedene Sortierklassen, was eher für einen herstellerinternen Bemessungswert als für einen
Tippfehler spricht. Für eine Bauherren-Aussage ist der Unterschied unerheblich (~0,015 W/m²K
bei 140 mm CLT); für einen konkreten Bauteilnachweis ist 0,110 aus dem Bauteilkatalog die dem
Produkt näherliegende Zahl, sofern kein aktuelles Datenblatt/EPD des tatsächlich verbauten
Produkts vorliegt — dann hat dieses Vorrang.

**Eingearbeitet in:**
- `wiki/QUESTIONS.md` — E-R161-2 auf `[x]` mit vollem Beleg.
- `destillate/clt-bauphysik-stora-enso.md` — Präzisierung im Abschnitt «Offene Punkte»,
  `last_updated` auf 2026-08-23.
- `destillate/clt-bauteilkatalog-stora-enso.md` — Präzisierung bei «Grundbausteine»,
  `last_updated` auf 2026-08-23.
- `wiki/BAUHERREN-FAQ.md` — F15-Präzisierung (23.08.2026) ersetzt durch die belegte Fassung.

## Verbleibend offen

- **E-R161-1** — Beschaffungsentscheid Raphaels (Normkauf SN EN ISO 6946), unverändert.
- **E-R161-3** — grösserer Audit-Auftrag (PL-02/03/05 filterlos zählen), empfohlen für einen
  eigenen, dedizierten Folgelauf mit M365-Graph-Zugriff analog zu Run 161.
- E-S1, E103, E94, E-R129-5, E-WC32-1, E-R134-3, E-R134-4, E-R148-1, E-R148-2, E-R150-3 —
  unverändert, keine neue Information seit Run 159/160 vorhanden.

Alle Schreibvorgänge dieser Session mit `git diff --numstat` geprüft (additiv bzw. gezielte
Löschung der Garbage-Zeilen, keine fremden Zeilen berührt — auch nicht die des parallel
laufenden Scheduled-Task-Prozesses mit identischem Auftrag).
