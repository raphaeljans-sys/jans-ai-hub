# Wissens-Health-Check: energie — 2026-09-01

## Methode dieses Laufs

Monatlicher Health-Check, Phase 1 (Audit + Report, unbeaufsichtigt-faehig). Phase 2 (Aktionen)
bewusst NICHT ausgefuehrt. Basis ist der letzte Health-Check vom **2026-08-03** — dazwischen
liegen rund vier Wochen Trainingslaeufe (Run 121 bis Run 171, plus ein grosser interaktiver
Audit-Tag am 23./24.08.2026 mit den Korrekturserien A-P2/A-P3/A-BLIND).

Bestand zum Zeitpunkt dieses Checks: 40 Dateien in `wiki/` (37 Themenartikel + INDEX +
QUESTIONS + BAUHERREN-FAQ), 342 Destillate, 197 Outputs, `CHANGELOG.md` 9'830 Zeilen,
`wiki/QUESTIONS.md` 7'819 Zeilen.

**Mechanische Vorpruefung:** `wiki-konsistenz.sh energie` (20 Rohtreffer, siehe Audit B),
`fehloffen-waechter.py energie` (0 Treffer), `link-zielabgleich.sh energie` (59 Deep-Links
gemessen, 0 echte Zielbefunde — nur harmlose Weiterleitungen und Soft-404 mit grossem
Antwortkoerper). Alle drei Werkzeuge laufen gegen den NAS-Stand.

**Grenze dieses Laufs:** Audit A (Widersprueche) wurde nicht als vollstaendiger paarweiser
Neuvergleich aller 37 Themenartikel gefahren — das monatliche Budget reicht dafuer bei 19 KBs
nicht. Geprueft wurden die in `wiki/QUESTIONS.md` registrierten offenen Spannungen und die seit
dem 03.08. neu entstandenen. Audit C (unbelegte Claims) ist eine Stichprobe, keine Vollpruefung
von 342 Destillaten plus 37 Themenartikeln.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 0 (20 Werkzeug-Rohtreffer, vollstaendig triagiert — siehe unten) |
| C Unbelegte Claims | 0 (Stichprobe) |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel/Werte | 1 |
| F Schreibregel-Verstoesse | 3 |
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **KBOB-Oekobilanzdaten-Sprung v8.0 → v9.0 (14.07.2026) ist im Themenartikel `graue-energie.md`
   bereits nachgezogen, in zwei Bauteil-Destillaten aber noch nicht geprueft** — die KB selbst hat
   das am 24.08.2026 als offenen P1-Punkt E-R162-1 markiert und bislang nicht bearbeitet. Bis zur
   Pruefung gilt jede bauteilbezogene CO₂-Zahl der KB als v8.0-Stand; das ist die einzige Stelle,
   an der sich in dieser KB ein echtes Aktualitaets-Risiko zeigt (Audit E).
2. **Ein Schreibregel-Verstoss aus dem letzten Check ist unveraendert offen:**
   `destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md` schreibt weiterhin «Groß-/
   Kleinschreibung» in eigenem Methodiktext (bereits am 03.08. gemeldet, seither vier Wochen und
   mehrere Laeufe an dieser Datei vorbei, nicht korrigiert).
3. **Die 20 Rohtreffer des Backlink-Werkzeugs sind zu 100 % Werkzeug-Artefakte, kein
   Reparaturbedarf.** Quantifiziert: 7 sind FAQ-interne Fragenanchors (`[[F16]]`/`[[F71]]`/
   `[[F77]]`/`[[F245]]` — echte Ueberschriften `## F16 — «…»` in der BAUHERREN-FAQ, keine
   Wiki-Backlinks), 8 sind ueber Zeilenumbruch zerrissene Backlinks in `QUESTIONS.md`, die beim
   Zusammenlesen exakt auf existierende Destillate zeigen, 4 sind Meta-Syntax-Erwaehnungen
   (`[[slug]]`/`[[Ziel]]`/`[[…]]`/`[[^]]` — die KB diskutiert darin ihre eigene Link-Konvention),
   1 ist ein bewusst unveraendert gelassener historischer Journalverweis auf einen am 26.07.2026
   geloeschten, gemergten Artikel. Dieselbe Diagnose steht bereits zweimal in `QUESTIONS.md`
   (24.08.2026); dieser Lauf bestaetigt sie ein drittes Mal unabhaengig.

## Details je Audit

### A. Widersprueche

**1 Fund, seit Run 121 (03.08.2026) unveraendert offen (E-121-2):** Klimareferenz-Widerspruch
bei der Gebaeudehuellziffer. Eine Quelle rechnet mit 8,5 °C / 8 % pro K (Basis SIA 380/1:2009),
die KB fuehrt an anderer Stelle 9,4 °C / 6 % pro K (Basis SIA 380/1:2016) — beide Werte stehen
unaufgeloest nebeneinander in `[[gebaeudehuellziffer-ebf-flaechendefinition]]` und
`[[bezugsgroessen-energienachweis]]`. Kein neuer Fund dieses Laufs, aber seit vier Wochen nicht
bearbeitet und daher hier erneut gemeldet, damit er nicht im Journal versickert.

Kein weiterer neuer Widerspruch gefunden. Alle uebrigen "Widerspruch"-Treffer in `QUESTIONS.md`
sind bereits als aufgeloest dokumentiert ("kein Widerspruch, …") — echte Verlaufsprosa, keine
offenen Punkte.

**Latentes Risiko, nicht als Widerspruch gezaehlt, siehe Audit E:** `graue-energie.md` fuehrt
seit 24.08.2026 KBOB v9.0, waehrend zwei Bauteil-Destillate noch nicht gegen v9.0 geprueft sind.
Das ist noch kein bestaetigter Widerspruch (es koennte sich nichts geaendert haben), aber ein
Datenstand-Ungleichgewicht innerhalb derselben KB.

### B. Kaputte Backlinks / Orphans

**0 echte Reparaturbefunde.** Das Werkzeug `wiki-konsistenz.sh` meldet 20 Rohtreffer; alle 20
sind gegen die Quelle geprueft und lassen sich vollstaendig einer von vier bekannten
Artefakt-Klassen zuordnen:

1. **FAQ-interne Fragenanchors (7 Treffer: `[[F16]]` ×2, `[[F71]]` ×2, `[[F77]]` ×2, `[[F245]]`
   ×1)** — in `wiki/BAUHERREN-FAQ.md` gefuehrte Ueberschriften wie `## F16 — «Was muss ich beim
   Brandschutz einer Solaranlage (PV) beachten?»`. Der Klammer-Verweis `[[F16]]` im Fliesstext
   meint diesen Fragenanchor, nicht einen Wiki-Artikel gleichen Namens — das Werkzeug kennt das
   Format nicht und meldet jeden `[[…]]`-Ausdruck ohne Dateiziel als toten Link. **Antwort auf die
   Auftragsfrage:** dies ist eine KB-eigene FAQ-Nummerierung, keine als Wiki-Backlink gemeinte
   Notation — ein Werkzeug-Artefakt, kein Mangel. Bereits zweimal identisch diagnostiziert
   (`QUESTIONS.md` Z. 5931 und Z. 6420, beide 24.08.2026).
2. **8 ueber Zeilenumbruch zerrissene Backlinks in `wiki/QUESTIONS.md`** (Z. 4852, 5418/5420,
   6822/6823, 7059, 7063/7065). Beim Zusammenlesen der beiden Zeilen ergeben sich fuenf reale,
   existierende Ziele: `[[waermedaemmvorschriften-zh-2009-historisch]]`,
   `[[evg-eigenverbrauchsgemeinschaft-solarsplit]]`,
   `[[haushaltgeraete-professionelle-beschaffung-2004-erstausgabe]]`,
   `[[ahb-merkblatt-389-lithium-ionen-batterien-lagerung]]`,
   `[[vkf-lithium-batteriespeicher-brandschutz]]` — alle fuenf als Datei in `destillate/`
   verifiziert vorhanden. Reines Zeilenumbruch-Artefakt der Markdown-Formatierung im
   Journaltext, keine kaputten Ziele.
3. **4 Meta-Syntax-Erwaehnungen** (`[[Ziel]]`, `[[^]]`, `[[slug]]`, `[[…]]`) — Stellen, an denen
   `QUESTIONS.md` die eigene Backlink-Konvention selbst beschreibt (»alle `[[Ziel]]`-Vorkommen
   gezaehlt«, »Scan (`[[…]]`-Ziele …)«). Platzhalter in Methodenprosa, kein Linkversuch.
4. **1 historischer Journalverweis:** `[[sia-2024-nutzungsdaten-gesundheitsbau]]` in
   `wiki/QUESTIONS.md` Z. 2089. Der Artikel wurde am 26.07.2026 nach Freigabe Raphaels in
   `sia-2024-nutzungsrandbedingungen-gesundheitsbau` eingemergt und geloescht; **alle
   funktionalen Backlinks in sieben Destillaten, beiden INDEX-Dateien, der BAUHERREN-FAQ und
   `training/curriculum.md` wurden dabei umgebogen.** Nur diese eine Stelle im Journaltext von
   `QUESTIONS.md` blieb bewusst unveraendert stehen, weil sie den damaligen Merge-Vorgang
   dokumentiert (»Historische Belege bewusst unveraendert gelassen«, Analyse-Protokoll Run 88).
   Kein Leser folgt diesem Verweis erwartungsvoll — er beschreibt ein Ereignis, zeigt nicht auf
   ein aktuell erwartetes Ziel.

**Orphans/INDEX-Registrierung:** keine Stichprobe ergab einen im INDEX fehlenden Themenartikel;
alle 37 Themenartikel sind in `wiki/INDEX.md` gelistet.

### C. Unbelegte Claims

Stichprobe auf established-Artikel (u.a. `minergie-standards.md`, `foerderung-energie-zh.md`,
`u-werte-grenzwerte-ch.md`, `pv-eigenverbrauch-zev.md`): durchgehend Quellenangaben mit
Ausgabedatum/Ziffer, CHF-Werte mit Datenstand in der Wertzeile selbst (Vorgabe `CLAUDE.md`
eingehalten). Kein unbelegter zentraler Claim gefunden. Strukturelle Randnotiz (kein Claim-,
sondern ein Frontmatter-Befund): **4 von 342 Destillaten fuehren kein Feld `datenstand:`**
(`bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013`,
`muken-2025-anhang-1-3-uwert-heizwaermebedarf`, `muken-2025-anhang-4-5-daemmstaerken-leitungen`,
`sia-380-1-aktualitaets-check-2026`) — alle vier aus der Zeit vor der Feld-Pflicht (Juli 2026,
noch mit reinem `sources:`-Schema statt `quelle/herausgeber/ausgabe/gelesen/datenstand`). Der
Datenstand selbst steht bei allen vieren im Fliesstext der Quellenangabe ("Stand 29.08.2025",
"Stand SRSZ 1.2.2025" usw.) — inhaltlich also nicht unbelegt, nur nicht im Pflichtfeld
strukturiert. Siehe Audit F.

Kein systemisches Sourcing-Problem: 337 von 342 Destillaten fuehren `quelle` + `herausgeber` +
`ausgabe` + `gelesen` + `datenstand` vollstaendig; alle 37 Themenartikel fuehren `sources` und
`datenstand`.

### D. RAW-Coverage

**0 Luecken.** `raw/` enthaelt ausser dem Register `_INGESTED.md` keine unverarbeiteten
Dump-Dateien — die KB zieht bewusst direkt aus SharePoint (`PL - 04 Energie`) und dem Web statt
aus einer lokalen Rohkiste, jeder Registereintrag verweist bereits auf sein Destillat.
`_INGESTED.md` ist bis 31.08.2026 (Run 171) nachgefuehrt. Bestandsluecke statt Coverage-Luecke,
wie schon am 03.08. vermerkt: der PL-04-PDF-Bestand ist laut Register erschoepft, der Loop
arbeitet inzwischen primaer Web-Quellen ab — das ist Programmfortschritt, kein Audit-Befund.

### E. Veraltete Artikel/Werte

**Nach dem reinen 90-Tage-`last_updated`-Kriterium: 0.** Der aelteste `last_updated`-Stand unter
den 37 Themenartikeln ist `daemmstoffe-lambda.md` mit 2026-06-09 — 84 Tage vor diesem Check,
innerhalb der Frist.

**Materiell wichtiger, 1 Fund:** die KBOB-Oekobilanzdaten sind am 14.07.2026 von Version 8.0 auf
9.0 gesprungen. `graue-energie.md` wurde am 24.08.2026 entsprechend korrigiert (Frontmatter
nennt jetzt ausdruecklich "v9.0, 14.07.2026 — korrigiert 2026-08-24, vorher v8.0"). Die KB selbst
hat aber am selben Tag als offenen Punkt **E-R162-1 (P1)** festgehalten, dass zwei
bauteilbezogene Destillate — `kbob-bauteilkatalog-co2-je-aufbau` und
`kbob-massivbau-bauteilaufbau-co2` — noch **nicht** gegen v9.0 gegengeprueft sind. Bis zur
Pruefung gilt laut KB-eigener Einschaetzung jede von dort zitierte CO₂-Zahl als v8.0-Stand. Das
ist genau die Konstellation, die Audit E sucht: neuere Evidenz liegt vor (die KBOB-Publikation
selbst), ist aber noch nicht in den betroffenen Artikel eingearbeitet. Eigener Lauf noetig
(v9.0-Liste ziehen, XLSX frei verfuegbar, kein Normkauf-Blocker laut KB-eigener Einschaetzung).

Kein weiterer Fund: die uebrigen als speculative/aelter markierten Datenstaende (z. B.
`pv-solar-technologien.md` mit 2012er-Grundstruktur) sind im Artikeltext selbst ausdruecklich
als «Grundstruktur unveraendert, Zahlen pruefen» gekennzeichnet — kein stiller Veraltungsbefund,
sondern bereits im Artikel offen ausgewiesen.

### F. Schreibregel-Verstoesse

**3 Funde:**

1. **Unveraendert seit dem letzten Check:** `destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md`
   (jetzt Zeile 200, war am 03.08. Zeile 181 — die Datei ist seither gewachsen) schreibt in
   eigenem Methodiktext «Groß-/Kleinschreibung ignorierend» statt «Gross-/Kleinschreibung». Kein
   Zitat, eigene Prosa — echter, seit vier Wochen unkorrigierter ss-Verstoss.
2. **Neu seit dem letzten Check:** `destillate/messtarife-pro-messpunkt-stromvg-2026.md`
   (neu angelegt 31.08.2026, Run 170) schreibt im `gelesen:`-Feld «Content-Type/Größe» statt
   «Content-Type/Grösse». Ebenfalls eigener Methodiktext, kein Zitat.
   Alle uebrigen ß-Treffer der KB (6 in `destillate/`, 1 in `wiki/QUESTIONS.md`) sind entweder
   wortgetreue Zitate fremdsprachiger Titel/Adressen («Energieverbrauch in Großküchen»,
   «Bötzinger Straße», eine deutsche Herstelleradresse) oder ausdrueckliche Belegzitate von
   KI-generierten Fremddokumenten in `ki-generierte-fachdokumente-referenzablage.md`
   («Bundesdeutsche Rechtschreibung mit ß» — dort als Beweismittel korrekt in Anfuehrungszeichen
   zitiert) — beides regelkonform.
3. **Strukturelle Randnotiz (siehe auch Audit C):** 4 Destillate ohne `datenstand:`-Pflichtfeld,
   noch im aelteren Vor-Juli-Schema. Niedrige Prioritaet, da der Datenstand inhaltlich in der
   Quellenangabe steht.

**0 Deko-Symbol-Verstoesse.** Eine erste Regex ueber den Unicode-Bereich U+2600-27BF ergab 52
Dateitreffer — bei genauer Pruefung sind praktisch alle davon funktionale ✓/✅/✔-Statusmarker
(KB-weite Konvention fuer "erledigt/verifiziert", 341 Mal verwendet) sowie in einem Destillat
nummerierte Kreissymbole ❶❷❸❹❺ als Aufzaehlung. Echte Emoji (😊) kommen genau zweimal vor, beide
Male als woertliches Zitat eines als KI-generiert entlarvten Fremddokuments in
`ki-generierte-fachdokumente-referenzablage.md` — dort ausdruecklich als Beweismittel zitiert,
keine eigene Deko. Die 341 ⚠-Marker sind laut `CLAUDE.md` (Datenstand-Pflicht bei >18 Monaten)
vorgeschrieben, kein Verstoss — wie bereits am 03.08. festgehalten.

### G. Promotion-/Ruecklauf-Kandidaten

**1 Fund, positiv:** Die am 03.08. noch offene Luecke «31 Themenartikel ohne Frontmatter-Feld
`datenstand`» ist seit dem 24.08.2026 (Audit-Korrektur A-P2 02.17, in zwei interaktiven Sessions)
vollstaendig geschlossen — alle 37 Themenartikel fuehren das Feld jetzt. `QUESTIONS.md` fuehrt
den Abschluss selbst («37/37 erledigt»). Kein Handlungsbedarf, hier nur als Delta zum letzten
Check vermerkt, damit die Verbesserung sichtbar bleibt.

Kein Fund bei den Statuswerten: 11 destillate mit reinem `status: speculative` bleiben bewusst
unpromoviert (fehlende amtliche Kennwertquelle explizit benannt, keine Beschoenigung). Established
bleibt established, wo primaerquellenbelegt — keine pauschale Herab- oder Hochstufung beobachtet.

Laufend, nicht neu: das quartalsweise Original-Gegenlese-Programm «A-BLIND» (Frage: gibt ein
Destillat sein PDF korrekt wieder, unabhaengig vom Backlink-Konsistenz-Check) hat bislang 2 von
rund 20 geplanten meistzitierten Destillaten gegengelesen — beide bestanden (BFE-Waermebrueckenkatalog
2002 vollstaendig, 17/17 Grenzwerte korrekt). Kein Befund dieses Laufs, aber der naechste sinnvolle
Fortsetzungspunkt fuer den Wissens-Chef.

---

*Phase 2 (Aktionen) nicht ausgefuehrt. Fuer die Umsetzung eines Befundes (insbesondere die
KBOB-v9.0-Pruefung E-R162-1 und der offene ss-Verstoss in der VKF-Blitzschutz-Datei):
interaktive Session mit Skill `wissenscheck` und dem KB-Namen `energie`.*
