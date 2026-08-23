# SIA-Sweep, achtzehnte Fortsetzung — SIA 2028 (Klimadaten) und SIA 118/380 kostenlos beschafft, SIA-118/xxx-Familie systematisch erschöpft

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf zu Sessionbeginn: QUESTIONS-Abarbeitung siebter Lauf)
  und `outputs/2026-08-23_sia-sweep-siebzehnte-fortsetzung.md`.

## Ausgangslage und Kollisionsprüfung

`ps aux` zu Laufbeginn geprüft: der eigene Prozess läuft unter dem Lauf-Namen `mschub91`
(`scripts/claude-run.sh --name mschub91`, gestartet 21:09, identischer Startprompt zu diesem
Auftrag). Zwei weitere parallele `claude -p`-Läufe derselben Klasse: `mschub89` (QUESTIONS-
Abarbeitung derselben KB `wissen/normen`) und `mschub90` (Korpus buero-projekte, fremde KB
`wissen/projekt-lessons`) — beide kein Konkurrent auf denselben Dateien, aber `mschub89`
arbeitet parallel an `wiki/QUESTIONS.md`/`wiki/REGISTER.md` derselben KB, siehe
Kollisionshinweis unten.

Die siebzehnte Fortsetzung hatte die neue Methode «freie Korrigenda-Downloads» erst auf 3 von
56 «Kein Volltext im Haus»-Zeilen angewendet (SIA 269/3, 269/5, 269/8) und ausdrücklich
empfohlen, dieselbe Methode auf die übrigen Zeilen auszuweiten, mit Priorität auf Normen, die
bereits von einem Fach-Skill zitiert werden (SIA 380/x, SIA 118/xxx-Familie, SIA 2028
Klimadaten).

## Priorisierung

`grep -rl "SIA 118/"`, `"SIA 2028"`, `"SIA 380"` über `skills/` geprüft: SIA 118/-Familie wird
von `ausschreibung`, `werkvertrag`, `unternehmerkontrolle` zitiert (konkret SIA 118/262 und
SIA 118/266, beide bereits im Haus); SIA 380 wird von `energie` und `planungsgrundlagen`
zitiert (Basisnorm SIA 380/1 bereits im Haus). SIA 2028 selbst nicht wörtlich in einem Skill
gefunden, aber die REGISTER-Zeile trug bereits einen konkreten Korrigenda-Hinweis mit
gültig-ab-Daten (C1:2015/C2:2023) — als konkretester, am wenigsten spekulativer nächster
Schritt gewählt.

## Durchgeführt

### 1. SIA 2028 «Klimadaten für Bauphysik, Energie- und Gebäudetechnik»

Produktseite `shop.sia.ch/normenwerk/architekt/2028_2010_d/D/Product` — sechs geratene
Bereich-Slugs (bauphysik/energie/haustechnik/unternehmerisch/nachhaltiges-bauen) scheiterten
alle (das Shop-System liefert für jeden falschen Pfad HTTP 200 mit «0 Produkte gefunden» statt
eines 404, daher per WebSearch statt Brute-Force lokalisiert). Drei kostenlose Anhänge
(Preisgruppe 0.00 CHF) identifiziert, per `curl -A "Mozilla/5.0"` geladen und mit
`/opt/homebrew/bin/pdftotext -layout` vollständig gelesen:

1. **Ergänzung 2010** zum Merkblatt (4 S.): Auslegungsdaten Gebäudekühlung (SN EN ISO
   15927-2), dynamische Winter-Auslegungsperiode, Kühler-Auslegungszustände.
2. **Korrigenda C1:2015** (7 S., gültig ab 01.03.2015): Befeuchter-Auslegungsdaten,
   Kühler-Wertepaare, **Akkumulierte Temperaturdifferenzen (ATD) und Heizgradtage 20/12** —
   bestätigt wörtlich, dass diese Daten «die Empfehlung SIA 381/3 ersetzen».
3. **Korrigenda C2:2023** (5 S., gültig ab 01.07.2023): neue «Betroffene Normen»-Liste
   (SIA 180, 380/1, 380/2, 382/1, 384/1-3), neues Kapitel 4 mit kostenlosen
   CH-2018-Klimaszenariendaten (map.geo.admin.ch-Link), innerstädtische Zusatzstationen.

**Kernbefund:** löst `wiki/QUESTIONS.md` N-SIASWEEP-1 von einer Fachpresse-Sekundärquelle
(Espazium) auf eine SIA-Primärquellen-Verifikation auf — SIA 381/3 «Heizgradtage der Schweiz»
(zurückgezogen 03.03.2015) ist inhaltlich in SIA 2028/C1:2015 aufgegangen, gefordert von
Anhang G der neuen Norm SIA 380 (revidierte SIA 416/1).

### 2. SIA-118/xxx-Familie systematisch geprüft

Statt jede der 16 Register-Zeilen einzeln per Browser zu prüfen: ein Python-Script fragt die
Produktseiten aller 14 noch offenen SIA-118/xxx-Nummern (118/262 und 118/266 bereits im Haus)
automatisiert nach den Anhänge-Labels ab (`re.findall(r'lblAnhangBezeichnung">([^<]+)<', html)`).
**13 von 14 führen ausschliesslich «Inhaltsverzeichnis»** (kein Destillat-würdiger Fund, an
SIA 118/232 stichprobenartig per Volltext bestätigt — reine TOC-Datei ohne Ziffern-Inhalt).
**Eine Ausnahme: SIA 118/380** führt zusätzlich eine kostenlose **Korrigenda C1:2017**
(3 S., gültig ab 01.09.2017) — geladen und gelesen: Begriffskorrektur in Ziff. 0.3.1/2.3.3/6.1.2
der Norm «Allgemeine Bedingungen für Gebäudetechnik» — «Integrierte Tests» wird auf die
gewerkeinterne Prüfung verengt, ein neuer Begriff «Integrale Tests» für die gewerkeübergreifende
System-/Schnittstellenprüfung eingeführt.

## Neue Destillate und Nachführungen

- `destillate/sia-2028-ergaenzung-korrigenda.md` (neu, `established`).
- `destillate/sia-118-380-korrigenda-c1.md` (neu, `established`).
- `wiki/REGISTER.md`: drei Zeilen inhaltlich ergänzt (SIA 2028, SIA 381/3, SIA 118/380).
- `wiki/QUESTIONS.md`: N-SIASWEEP-1 auf «am Original verifiziert» angehoben, bleibt geschlossen.
- `destillate/INDEX.md`: zwei neue Zeilen.
- `CHANGELOG.md`: eigener Eintrag oben, in zwei Schritten (SIA 2028, dann SIA 118/380) erweitert.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

| Datei | Befund |
|---|---|
| `destillate/sia-2028-ergaenzung-korrigenda.md` | `??` (echte Neuanlage) |
| `destillate/sia-118-380-korrigenda-c1.md` | `??` (echte Neuanlage) |
| `wiki/REGISTER.md` | 2/2, dann 1/1 (je Schreibvorgang gezielte Zeilenersetzung, ausschliesslich eigene Zeilen betroffen) |
| `wiki/QUESTIONS.md` | 19/16 (ein Abschnitt erweitert, keine fremden Zeilen berührt) |
| `destillate/INDEX.md` | 1/0, dann 1/0 (reine Neuzeilen) |
| `CHANGELOG.md` | 91/0, dann 44/18 (zweiter Wert = Nacharbeit am eigenen, oben stehenden Eintrag; alle entfernten Zeilen per `git diff | grep "^-"` als eigene, zuvor selbst geschriebene Zeilen bestätigt) |

**Kollisionshinweis:** beim zweiten `wiki/REGISTER.md`-Edit meldete das Werkzeug, die Datei sei
seit dem letzten eigenen Lesevorgang extern verändert worden — ein paralleler Lauf
(vermutlich `mschub89`, QUESTIONS-Abarbeitung derselben KB) hatte in der Zwischenzeit
ebenfalls geschrieben. Der Edit wurde dennoch sauber angewendet; `git diff --numstat` direkt
danach zeigte exakt `1/1`, ausschliesslich die eigene Zeile betroffen. Rule
`auto-verbesserungen` 260811 befolgt: kein globales Ersetzen, Umfang nach jedem Schreiben
gemessen, keine fremde Arbeit überschrieben.

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Die Basisnormen SIA 2028:2010 und SIA 118/380:2007 selbst bleiben kostenpflichtig und nicht
  im Haus — nur die kostenlosen Zusatzdokumente sind erschlossen, nicht der vollständige
  Normtext.
- Von den verbleibenden ~54 «Kein Volltext im Haus»-Zeilen (nach Abzug der 3 aus der
  siebzehnten und 15 aus dieser Fortsetzung) wurde die SIA-118/xxx-Familie vollständig
  erschöpft (14/14 geprüft, nur 118/380 hatte einen Fund). SIA 4010 (Nebenbefund aus
  SIA-2028-Korrigenda C2, Wegleitung für szenarienbasierte Auslegungsdaten) ist nicht
  recherchiert, keine eigene Registerzeile.
- **Cross-KB-Bringschuld an `wissen/energie` nicht in deren eigener QUESTIONS.md
  nachgetragen** (Zeitbudget dieses Laufs) — der Befund (SIA 2028 als Klimadatengrundlage für
  SIA 380/x, kostenlose CH-2018-Szenariendaten über map.geo.admin.ch) steht vorerst nur hier
  und in `wiki/REGISTER.md`.
- **Empfehlung an den nächsten Lauf:** die Methode «Produktseite per WebSearch lokalisieren,
  Anhänge-Labels automatisiert per Python-Script abfragen, nur bei Treffer ≠ ‹Inhaltsverzeichnis›
  den Volltext laden» skaliert gut und sollte auf die übrigen Blindzone-Zeilen ausgeweitet
  werden. Nächste Kandidaten mit P1-Relevanz: SIA 122/123/124/190/205/242/243 (allgemeine
  Planungsgrundlagen), danach die restlichen Erhaltungsnormen SIA 269/1/2/4/7 (Fortsetzung der
  siebzehnten Fortsetzung, dort nur 269/3/5/8 geprüft), danach die Merkblatt-Familie SIA 20xx
  (2007, 2016, 2021, 2025, 2027, 2029, 2031, 2035, 2036, 2039, 2042, 2044, 2045).
