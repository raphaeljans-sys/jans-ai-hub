# Wissens-Chef Run 25 — Cross-KB-Konsistenz, sechs Felder, 23 Agenten

**Lauf:** 04.08.2026, 23:11 CEST bis 05.08.2026, 00:00 CEST (Datumsgrenze im Lauf überschritten;
alle Korrekturvermerke tragen das Datum des Laufbeginns, 04.08.2026).
**Vorlauf:** Run 24 vom 03.08.2026, 23:30. **Station:** MacBook Pro. **NAS:** gemountet.

**Bilanz:** 6 Felder · 32 gemeldete Befunde · **12 verifiziert, 12 bestätigt, 0 widerlegt** ·
**über 30 Dateien in 8 KBs, 4 Skills, 1 Rule und 1 Skill-Template korrigiert** ·
2 offene Entscheide für Raphael · 1 terminkritischer operativer Punkt.

---

## 1. Warum dieser Lauf, und warum in dieser Grösse

Seit Run 24 ist substanziell zugewachsen: `energie` Run 123 mit dem eco-bau-/AHB-Beschaffungs-
korpus (neun Destillate, ein neuer Themenartikel, abgeschlossen 15 Minuten vor Laufbeginn),
`normen` Run 43, `baurecht` Buch-Run 72 (revBZO Thalwil), `bauprodukte`, `twin`, `grobkosten`.
Gemessen wurde vorher, nicht angenommen: `git log --stat` über `wissen/` seit dem 03.08. 23:00.

Kontingent bei Laufbeginn: MacBook Pro 25.8 Mio teure Token seit Reset 03.08. 12:00, Mac Mini
12.0 Mio; verstrichener Wochenanteil 21 %. Das trägt sechs Felder statt der vier von Run 24.
Gefahren wurden 6 Finder + 12 Verifikatoren + 5 Ausführungs-Agenten = 23 Agenten, 0 Fehler.

**Ein Feld war kein Suchfeld, sondern ein Reparaturfeld** (F5): der Normen-Run 43 hatte wenige
Stunden zuvor belegt, dass der BKP-Code «271.10» nicht existiert, und 13 offene Dateien als
Ticket N43-1 hinterlassen. Ein bestätigter Identifikator-Fehler, der quer durch Skills und KBs
läuft, ist genau die Sorte Befund, für die diese Instanz da ist.

## 2. Der teuerste Fund: zwei archivierte Normen, die der Hub als geltend führte

**SIA 493 «Deklaration ökologischer Merkmale von Bauprodukten» ist seit dem 30.06.2022
archiviert.** Zwei unabhängige Agenten fanden es in verschiedenen Feldern (F1 und F2), zwei
unabhängige Verifikatoren bestätigten es am Herausgeber (shop.sia.ch, Produktseite SN 550493:
«Gültig ab: 01.03.1998», «Gültig bis: 30.06.2022, archivierter Titel!»). Die führende KB `normen`
führte die Norm im REGISTER als «gilt», und das Destillat trug `status: established`.

Der praktische Schaden war schon eingetreten, nur unbemerkt: der frisch destillierte eco-Bestand
verlangt an drei Stellen ausdrücklich Prüfungen «anhand SIA-Deklarationsraster 493.07» bzw. eine
«Kontrolle der R-Sätze anhand der SIA-Deklaration 493» — und **das JANS-Goldstandard-LV für Türen
führt drei NPK-Positionen (081110, 081210, 081310), die eine Produktedeklaration nach SIA 493
verlangen.** Wer dieses LV als Vorlage nimmt, verlangt vom Unternehmer einen Nachweis, den es
seit vier Jahren nicht mehr gibt. Die Position ist im Streitfall wertlos.

**Ein 1:1-Nachfolger ist nicht belegt** — der Shop weist keinen aus. EPD nach SN EN 15804+A2 und
die KBOB-Ökobilanzdaten treten in der Praxis an diese Stelle, das ist aber sekundärquellen-
gestützt und wurde bewusst **nicht** als Ersatz gesetzt.

**SIA 430 «Entsorgung von Bauabfällen»:** dieselbe Klasse. Die Ausgabe 1993 galt bis 31.07.2023,
seit 01.08.2023 gilt SIA 430:2023 «Vermeidung und Entsorgung von Bauabfällen», der
Organisationsteil steckt neu in SIA 118/430:2023. Der Hub führt die Ausgabe 1993 als Destillat
und hat die 2023er nicht im Haus.

**Die strukturelle Lehre, die über beide Fälle hinausreicht:** Ein Haus-PDF kann seinen eigenen
späteren Rückzug nicht ausweisen. Wer «gilt» aus dem Umstand ableitet, dass das vorliegende PDF
keinen Rückzugsvermerk trägt, misst nichts. Und `status: established` bezeugt die
**Destillier-Treue gegen das Original**, nie die **Gültigkeit der Norm** — die beiden Aussagen
müssen im Frontmatter getrennt geführt werden. Genau das ist jetzt umgesetzt (neues Feld
`gueltigkeit` neben `status`).

## 3. Der Registerprinzip-Fall: wo die Verifikation den Melder gebremst hat

Beide Melder wollten auch die Zeile im REGISTER-Block «A) SIA — Gültigkeit je Norm (Stand
25.02.2013)» auf «archiviert» umstellen. **Beide Verifikatoren haben das unabhängig voneinander
abgelehnt** — und sie hatten recht: per 25.02.2013 war SIA 493 gültig, die Zeile ist als
**datierter Registerstand korrekt**. Eine Umstellung hätte eine Rückdatierung erzeugt und die
tragende Quelle des Registers unnachvollziehbar gemacht. Gesetzt wurde deshalb nur ein
Querverweis auf die Run-5-Zeile; dasselbe bei SIA 430.

Das ist ein neues Muster für dieses Register: **ein Stichtags-Register wird nicht mit Wissen von
heute überschrieben, sondern ergänzt.** Es gehört als viertes Struktur-Muster ins QUERBEZUEGE.

## 4. Ein Phantomcode, zwei Familien: BKP 271.10 und BKP 271.13

Der Durchgriff auf Ticket N43-1 hat mehr gefunden, als das Ticket kannte.

**Familie 1 — 271.10.** Korrigiert in `skills/ausschreibung/SKILL.md` (Formatbeispiel auf 271.0)
und in drei `normen`-Destillaten. Wichtiger als die Korrektur ist die dabei gefundene **Ursache**:
im Ausschreibungs-Skill stehen wenige Zeilen auseinander zwei verschiedene Kataloge in derselben
Schreibweise — LV-Titel nach BKP 2017 (nur einstellige Nachkommastellen) und Gewerk-Ordnernamen
nach dem **Stadt-Zürcher Katalog 2008** («251.00 Sanitärarmaturen», der zweistellige kennt). Ohne
Katalog-Kennzeichnung ist der nächste Transkriptionsfehler nur eine Frage der Zeit. Die
Kennzeichnung ist jetzt gesetzt.

**Der gefährlichste Teilbefund war eine falsche Reparatur, die fast passiert wäre.** Im Skill
`brandschutz` stehen vier Fundstellen von «271.10». Die naheliegende Ersetzung ist 271.0
Innenputze — die Rule hatte den Fehler ja genau so festgestellt. Der Verifikator hat am Text
nachgewiesen, dass alle vier Stellen das **Trockenbau**-LV bezeichnen (die LV-Positionen darunter
sind GKF-Neubeplankung, gleitender Deckenanschluss EI30, Fugenspachtelung Q2/Q3, Abschottungen).
Richtig ist **271.1**. Ein Innenputz-Code als Kopf eines EI30-Trockenbau-LV wäre der schlechtere
Fehler gewesen: er sieht verifizierbar aus und fällt beim nächsten Audit nicht mehr auf.
**Merksatz: einen Phantomcode nie mechanisch durch den erstbesten existierenden ersetzen — erst
den Sachbezug lesen.**

**Familie 2 — 271.13, neu und vorher unbekannt.** Dieselbe Skill-Zeile erfand zusätzlich einen
Code «271.13». Die Spur führt zu einem realen Ort: dem KISPI-Los `LOS_271.13 Trockenbau
Gipserarbeiten OG Süd`. Das ist eine **bürointerne Los-Nummer**, kein BKP-Code — aber das
Skill-Template `build-factsheet-ertuechtigung.template.js` schrieb an fünf Stellen «BKP 271.13»
in den **Dokumenttext**, also in ein Erzeugnis, das an Bauleitung, Bauherrschaft und Unternehmer
geht. Damit bekommt eine Los-Nummer die Etikette eines Katalogcodes, und die zweite Fehlerfamilie
entsteht aus derselben Wurzel wie die erste. Alle fünf Stellen sind auf
`LOS 271.13 (… BKP 271.1 Trockenbauarbeiten)` umgestellt; die Regel dazu steht neu in
`rules/bkp-2017-referenz.md`.

## 5. Was die Verifikation sonst korrigiert hat

**Alle 12 verifizierten Befunde halten. In 11 von 12 Fällen musste die Auflösung des Melders
korrigiert werden.** Die Quote ist stabil über die Läufe 23 bis 25 und misst nicht die Melder,
sondern den Wert des zweiten Blicks. Die drei lehrreichsten Fälle:

- **VVEA (F3):** Der Melder schrieb, ein Entsorgungskonzept nach altem Stand biete einen
  Verwertungsweg an, den die Verordnung nicht mehr vorsehe. Der Verifikator hat den Schaden
  gedämpft: **keine Hub-Datei gibt Art. 20 VVEA inhaltlich wieder**, und die einzige materielle
  VVEA-Aussage stützt sich auf **Art. 16**, der unverändert gilt. Der Mangel ist ein undatierter,
  zu weit gefasster Rechtsbasis-Zeiger — also **Belegpflege, keine Fehlerkorrektur**. Zugleich
  war das Revisionsbild des Melders unvollständig: die geltende Fassung trägt vier Revisionen,
  darunter AS 2026 357, in Kraft seit dem 01.08.2026, also drei Tage vor diesem Lauf.
- **Vorwirkung (F4):** Der Melder etikettierte einen `planungsgrundlagen`-Abschnitt als «reine
  Rechtsmechanik und damit abnehmendes Wissen». Der Verifikator hat das ausdrücklich abgelehnt:
  der Abschnitt ist **nicht mangelhaft, sondern quellenbegrenzt**, und er muss bleiben — er
  erklärt, warum das Connector-Flag `revision_laeuft` rechtliche Bedeutung hat. Wer die
  Melder-Formulierung wörtlich nimmt, kürzt beim nächsten Sweep genau den Absatz weg, der den
  Connector-Output erst brauchbar macht. Gesetzt wurde nur der Zeiger.
- **Healthcare-Kennwerte (F6):** Der Melder wollte Bänder in den Skill kopieren. Der Verifikator
  hat nachgewiesen, dass schon die Melder-Zahlen so nirgends stehen und dass das Band
  CHF/Pflegezimmer eine belegte Trennung verwischt (272'780–530'000 reine Heime; 780'000
  St. Anna als Zentrum-Ausreisser). Gesetzt wurde ein reiner **Zeiger, keine Zahlenkopie** —
  genau weil die Drift beim Kopieren entsteht.

## 6. Ein Attributionsfehler, der aus der Quelle kam

Der neue `energie`-Wiki-Artikel gibt eine Dreierliste als Vertragshierarchie «gemäss SIA 118»
aus. Der Melder vermutete einen Abstraktionsfehler des Wiki. Der Verifikator hat die Ursache
woanders gefunden: **die Primärquelle selbst** (Stadt Zürich HBD, OEKO 3.14.C vom 29.08.2006)
schreibt «Gemäss SIA 118 gilt folgende Reihenfolge» — die falsche Norm-Attribution ist ein
Fehler der Quelle, den Destillat und Wiki unbeanstandet weitergereicht haben.

Das ändert die Reparatur: Es genügt **nicht**, den Satz als «AHB-spezifisch» zu kennzeichnen.
Der Attributionsfehler muss als solcher benannt werden, sonst wird er beim nächsten Destillieren
erneut abgeleitet. Der materielle Mangel ist zudem grösser als gemeldet: die Dreierliste
**unterschlägt die drei Ränge oberhalb des LV** (SIA 118:1991 Art. 7/21). Korrigiert an drei
Propagationsstellen — Wiki-Artikel, Destillat, `destillate/INDEX.md`.

## 7. Thalwil: zwei gegensätzliche Arbeitsanweisungen zu einem laufenden Projekt

2414 Thalwil ist ein laufendes JANS-Projekt, der Befund wirkt also unmittelbar. Zwei
`baurecht`-Erzeugnisse gaben für Klein- und Anbauten gegensätzliche Anweisungen; die ältere,
unkorrigierte steuert.

Der Melder wollte den Doppelnachweis «auf die markierten Bestimmungen begrenzen». Der Verifikator
hat das als zu grob und irreführend zurückgewiesen: **die 50-m²-Prüfung fällt nicht weg, sie hat
nur eine andere Rechtsgrundlage.** § 2a Abs. 1 ABV definiert Kleinbauten als freistehende Gebäude
von höchstens 50 m² Grundfläche (Gesamthöhe 4,0 m, bei Schrägdächern 5,0 m, nur Nebennutzflächen)
— das ist **geltendes kantonales Recht**, nicht neues kommunales. Die Bemerkungsspalte der
Synopse erklärt damit nur, warum die 7 %-Quote entbehrlich wird. Richtige Arbeitsanweisung:
Art. 24 Abs. 1 BZO (7 %, grau markiert, gilt) **+** § 2a ABV (50 m² Begriffsgrenze) **+**
Grünflächenziffer/Umgebungsgestaltung nach Art. 31 und Art. 50 revBZO.

**Ein zweiter Fehler, den niemand gemeldet hatte:** «GFZ» in der Bemerkungsspalte meint die
**Grünflächenziffer**, nicht die Geschossflächenziffer. Am raw-Volltext nachgezählt:
`Geschossflächenziffer` null Treffer, `GFZ` genau ein Treffer. Die Deutung «plus
Geschossflächenziffer» ist damit falsch und im Korrekturvermerk ausgewiesen.

Die zugehörige offene Frage in `baurecht/wiki/QUESTIONS.md` vom 31.07. ist mit dem Erlassbeleg
geschlossen.

## 8. Ausgeführte Aktionen (Übersicht)

| KB / Ort | Was |
|---|---|
| `normen` | SIA 493 an drei Orten als archiviert ausgewiesen (Destillat-Frontmatter mit neuem Feld `gueltigkeit`, Warnblock, INDEX, REGISTER Run-5-Zeile); SIA 430:2023 in REGISTER-Bemerkung, Destillat `ersetzt_durch`, Bring-Schuld in QUESTIONS; drei Übergaben aus `energie` Run 123 (E-123-2/-3/-6) angekommen; drei Phantomcodes korrigiert (Sachbezug je Stelle geprüft, einmal bewusst auf 281.0 statt geraten) |
| `energie` | SIA-312-Fassungsvorbehalt bei der Dachbegrünung (Fussnote + eigene Zeile in der Aktualitätsprüfung, Selbstwiderspruch in der Schlusszeile aufgelöst); SIA-118-Attributionsfehler an drei Stellen benannt; vier SIA-493-Warnvermerke an den LV-/Devis-Klauseln; VVEA-Belegpflege artikelgenau; drei offene Fragen angemeldet |
| `baurecht` | Korrekturvermerk am Thalwil-Output (4 Punkte, inkl. GFZ-Verwechslung); Arbeitsregel 2 der Korpus-Queue präzisiert; Rückkante zum OEREB-Prüfweg; 50-m²-Frage geschlossen |
| `planungsgrundlagen` | Querbezug-Kasten auf den führenden `baurecht`-Artikel (§ 3 vollständig erhalten, nichts gekürzt); neuer offener Punkt K68 (maschineller Prüfweg T-01) |
| `projekt-lessons` | Zeiger ins Baurecht gesetzt (kein Rechtsinhalt kopiert) |
| `bauprodukte` | Erst-Verlinkung zur eco-BKP-Achse: Teil-Antworten zu den Punkten 3, 8, 9 mit Datierungsvorbehalt (Ausgabe 2008); ausdrücklich vermerkt, dass die Blockade nicht aufgehoben, nur teilweise umgangen ist |
| `grobkosten` / `immobilienbewertung` | Gegenseitiger Zeiger + Vorbehalt zu den Neuwert-Richtwerten (beide Teuerungsanker benannt, keiner überschrieben); falsifizierter Cross-Check-Schluss ausgewiesen; HNF/GF-Entscheid registriert; ein Kennwert als «Preisstand unbelegt» markiert |
| `skills/` | `ausschreibung` (Formatbeispiel + Katalog-Warnblock), `brandschutz` (4 Stellen auf 271.1), `healthcare-wirtschaftlichkeit` (Anker datiert + Zeiger statt Zahlen), `grobkosten-onepager` (Healthcare-Route korrigiert), Goldstandard-LV Türen (SIA-493-Fassungswarnung), Brandschutz-Template (5 Stellen «BKP 271.13» → Los-Nummer) |
| `rules/` | `bkp-2017-referenz.md`: Nachzug dokumentiert, Sachbezugs-Regel und die zweite Fehlerklasse «Los-Nummern sind keine BKP-Codes» aufgenommen |

## 9. ⚠ Terminkritisch — für das Tagesbriefing

**Ein versandbereites Deliverable enthält einen falschen Rechtssatz, Termin 06.08.2026.**
Ziffer 4.5 des Begleitbeschriebs zur Projektänderung Bohlweg 3 (2414 Thalwil,
`09 Dokumente/CLAUDE/01_Projektaenderung-Umgebung/260806-Begleitbeschrieb-…`) trägt laut
Verifikation weiterhin den falschen Satz über Art. 45 revBZO. Der Verifikator hat eine fertige
Zwei-Sätze-Ersetzung **ohne Neuberechnung** formuliert (im Belegprotokoll dieses Laufs,
F4-thalwil-V1 Punkt F). Nicht angefasst: ausgehendes Erzeugnis, ausserhalb des Wissens-Layers.
**Braucht Raphaels Freigabe vor dem 06.08.**

## 10. Offene Entscheide für Raphael

**10.1 — Teuerungsanker für die Neuwert-Richtwerte (ändert Realwert-Ergebnisse).**
`grobkosten` rechnet mit Faktor 1.334 (Anker 01.04.2004 = 907.6), `immobilienbewertung` mit 1.346
(Anker 01.04.2003 = 899.2). Rund 1 % Abweichung, dieselbe Fremdtabelle. Der Verifikator empfiehlt
**1.346 / 01.04.2003**, weil die Tabelle im Kopf die Fusszeile «Stand 2003» trägt und das
Gegenargument («näher am Berichtsdruck») eine Vermutung gegen eine ausdrückliche Beschriftung
ist. Vorschlag: beide KBs auf 1.346 festlegen, die Alternative als benannte ±1-%-Unsicherheit
stehen lassen. **Nicht ausgeführt** — Zahlenentscheid mit Wirkung auf Bewertungen.

**10.2 — Doppelführung derselben Fremdtabelle auflösen?** Empfehlung des Verifikators: reiner
Verweis von `grobkosten` auf `immobilienbewertung` statt zwei materiell gepflegter Kopien —
genau die Doppelführung hat den Widerspruch erzeugt. **Nicht ausgeführt**, weil es eine
Führungsentscheidung ist. Gesetzt sind vorerst Zeiger und Vorbehalt in beiden Richtungen.

**Nachgelagert, kein Entscheid, aber zu wissen:** die Fehlerwurzel liegt in
`grobkosten/raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` (halbierte Tabelle).
`raw/` wird nach Rule `wissens-bibliothekar` nicht editiert. **Ohne eine Freigabe dort leitet ein
Folgelauf denselben Fehler erneut aus `raw/` ab.**

## 11. Bewusst nicht ausgeführt

- Alle Melder-Auflösungen, die die Verifikation gekippt hat (Registerprinzip, Kürzung des
  `planungsgrundlagen`-Abschnitts, Zahlenkopien in Skills, mechanisches 271.10 → 271.0).
- REGISTER-weite Umstellung aller flachen «gilt»-Aussagen in `normen` — Umstrukturierung, nicht
  Auftrag dieses Laufs. Die Lehre ist in `normen/wiki/QUESTIONS.md` dokumentiert.
- Asbest-Meldepflicht bei Abbruch: nur als offene Frage angemeldet, nicht materiell eingebaut —
  die Fundstelle gehört in die führende KB.
- Die OEREB-Weisung V5 (01.06.2026, löst V3 ab) — vom Verifikator beiläufig gefunden, gehört in
  die Korpus-Queue von `planungsgrundlagen`, nicht in diesen Lauf.

## 12. Methodisches für Folgeläufe

1. **Ein Stichtags-Register wird ergänzt, nicht überschrieben** (viertes Struktur-Muster).
2. **`status: established` ≠ Norm gilt.** Inhaltsstatus und Gültigkeitsstatus gehören in zwei
   getrennte Frontmatter-Felder. In `normen` jetzt umgesetzt; für die übrigen Destillate offen.
3. **Ein Phantomcode wird nie mechanisch ersetzt** — erst den Sachbezug der Stelle lesen.
4. **Ein Attributionsfehler der Quelle muss als solcher benannt werden**, sonst wird er beim
   nächsten Destillieren erneut abgeleitet.
5. **Konvergenz zweier unabhängiger Felder ist ein starkes Signal:** SIA 493 wurde in F1 und F2
   getrennt gefunden, SIA 430 in F2 und F3. Beide hielten. Wo zwei Finder ohne Kenntnis
   voneinander dieselbe Stelle melden, lohnt die Verifikation am meisten.
