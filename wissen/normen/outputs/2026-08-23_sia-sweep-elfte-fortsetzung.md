# SIA-Sweep, elfte Fortsetzung — erweiterter Nachfolgenorm-Scan ohne neuen Treffer, Cross-KB-Bringschuld N57-2 vollständig geschlossen

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
  Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
  beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: zehnte Fortsetzung),
  `outputs/2026-08-23_sia-sweep-zehnte-fortsetzung.md`, `wiki/REGISTER.md` (Abschnitt A,
  FRISCH-GEMELDET-Tabelle), `wiki/QUESTIONS.md` N57-2.

## Ausgangslage

Der Blindzone-Sweep (leere Bestand-Abgleich-Zellen) ist seit dem sechsten Lauf bei 0 von 187
aktiven Zeilen — vollständig, in diesem Lauf nicht neu gescannt. N-SIASWEEP-2 (SIA 422) und
N-SIASWEEP-3 (SIA 2021/2025) bleiben laut wiederholter Empfehlung der achten/neunten Fortsetzung
unangetastet (neun unabhängige Quellenarten bereits erschöpft).

Die zehnte Fortsetzung hatte per Python-Abgleich aller `ersetzt durch **SIA <Nummer>`-Verweise in
Abschnitt A drei fehlende Register-Zeilen gefunden (SIA 380, SIA 4013, SIA 242.002) und dabei einen
gewichtigeren Fehler entdeckt: die bestehende Bring-Schuld N57-2 zielte auf **SIA 380:2015**, das
selbst bereits seit 31.10.2022 archiviert ist — richtig ist **SIA 380:2022**. Die Korrektur wurde
im Register, in N57-2 und im dringlichsten Cross-KB-Abnehmer (`energie/wiki/u-werte-grenzwerte-
ch.md`) nachgezogen, acht weitere in der N57-2-Tabelle genannte Fremd-KB-Dateien blieben offen.
Als offener Punkt notierte die zehnte Fortsetzung zudem: der Nachfolgenorm-Scan lief nur auf das
Muster `ersetzt durch **SIA`, andere Formulierungen wurden nicht vollständig durchgekämmt.

## Teil 1 — erweiterter Nachfolgenorm-Scan

`python3` über `wiki/REGISTER.md`, Abschnitt A (jetzt 264 Zeilenköpfe inkl. der drei Neuzugänge der
zehnten Fortsetzung): zusätzlich zum bestehenden Muster `ersetzt durch \*\*SIA <Nummer>` vier
weitere Formulierungen gesucht — `löst … ab`, `Nachfolgenorm:`, `abgelöst durch`, `Nachfolger:`.
25 eindeutige Zielnormen über alle fünf Muster gefunden, **0 davon ohne eigene Zeile**. Der
Register-Vervollständigungs-Zweig des Sweeps ist damit mit dieser breiteren Methode erschöpft —
kein neuer Fund, aber auch keine offene Methodik-Lücke mehr.

## Teil 2 — Cross-KB-Bringschuld N57-2 vollständig geschlossen

Acht Dateien korrigiert (Rule `wissens-bibliothekar`, Cross-KB-Bringschuld), jede mit additivem
Korrekturhinweis (Quelle: `shop.sia.ch/normenwerk/architekt/380_2022_d`, abgerufen 23.08.2026,
Zitat «die 2015er-Version ist archiviert, gültig bis 31.10.2022»):

| KB | Datei | Vorzustand |
|---|---|---|
| `immobilienbewertung` | `wiki/flaechendefinitionen-sia.md` | hatte Fassungsvermerk Run 37, zielte auf 380:2015 |
| `planungsgrundlagen` | `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | hatte Fassungsvermerk Run 37, zielte auf 380:2015 |
| `baurecht` | `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` | hatte Fassungsvermerk Run 37, zielte auf 380:2015 |
| `energie` | `destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` | zwei Fundstellen, beide Run 37, zielten auf 380:2015 |
| `energie` | `destillate/enfk-en-02-waermeschutz-2013.md` | hatte Fassungsvermerk Run 37, zielte auf 380:2015 |
| `energie` | `destillate/therapiebad-hallenbad-energie-pflegeheim.md` | hatte Fassungsvermerk Run 37, zielte auf 380:2015 |
| `energie` | `destillate/enfk-fensterblatt.md` | **kein** Fassungsvermerk vorhanden — neu gesetzt |
| `energie` | `destillate/systemnachweis-kurs-zh-2009.md` | **kein** Fassungsvermerk vorhanden — neu gesetzt |

Zusammen mit `energie/wiki/u-werte-grenzwerte-ch.md` (bereits in der zehnten Fortsetzung erledigt)
sind damit alle neun in N57-2 genannten Fremd-KB-Fundstellen auf **SIA 380:2022** korrigiert.
`wiki/QUESTIONS.md` N57-2 um einen Abschluss-Nachtrag ergänzt, der alle neun Dateien benennt.

**Bewusste Entscheidung bei den zwei Dateien ohne Vorzustand:** `enfk-fensterblatt.md` und
`systemnachweis-kurs-zh-2009.md` standen zwar in der N57-2-Tabelle als Abnehmer, trugen aber
keinen Fassungsvermerk (nur unkommentierte SIA-416/1-Zitate als Messgrundlage). Statt zunächst
einen Vermerk auf 380:2015 zu setzen und ihn dann zu korrigieren, wurde direkt der korrekte Stand
(SIA 380:2022) eingetragen — vermeidet die Fehlerklasse, die N57-2 selbst aufgedeckt hat.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

- `flaechendefinitionen-sia.md` 8/0, `gebaeudehuellziffer-ebf-flaechendefinition.md` 11/0,
  `enfk-en-02-waermeschutz-2013.md` 6/0, `enfk-fensterblatt.md` 6/0,
  `systemnachweis-kurs-zh-2009.md` 9/0 — alle rein additiv.
- `therapiebad-hallenbad-energie-pflegeheim.md` 5/1 und
  `recht-norm-ahb-stadt-zuerich-projektstandards.md` 8/1 — je eine Löschzeile, per `git diff`
  gegengelesen: in beiden Fällen wurde ein Satzende, das zuvor am Zeilenanfang der Folgezeile
  stand (`Bei` bzw. der Satzschluss vor einem neuen Absatz), durch das Einfügen des neuen Absatzes
  einen Zeilenumbruch verschoben — kein Wort und kein Inhalt verloren, textuell identisch
  weitergeführt.
- `wissen/normen/wiki/QUESTIONS.md` 44/10: die 12 eigenen Zeilen (additiver N57-2-Nachtrag) sauber
  eingefügt; die übrigen 32 Zeilen (10 davon Löschungen) stammen nachweislich aus dem **parallelen**
  Prozess derselben Station (`mschub49`, Auftrag «QUESTIONS-Abarbeitung», Einträge zu SIA 266/1 und
  SIA 410/410-1/2 im selben Zeitfenster) — vor dem eigenen Edit die Zielstelle frisch gelesen
  (unverändert seit dem Vorlauf-Read um 07:49), nach dem Edit per `git diff` den vollständigen Diff
  gelesen: keine eigene Ergänzung überschrieben, keine fremde verloren.
- `wissen/normen/CHANGELOG.md` 98/0, rein additiv, oberhalb des bereits vorhandenen Eintrags des
  parallelen Prozesses.
- Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 380:2022 (oder :2015), SIA 4013:2021, SIA 242.002:2008 gekauft — bleiben
  Beschaffungs-Bring-Schulden, Käufe sind Sache Raphaels.
- N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2021/2025) bewusst nicht erneut angegangen —
  Empfehlung der achten/neunten Fortsetzung befolgt, neun Quellenarten bereits erschöpft.
- Der Blindzone-Sweep-Auftrag (Zeilen ohne Bestand-Abgleich) bleibt bei 0 von 187 offenen Zeilen —
  unverändert vollständig, in diesem Lauf nicht neu gescannt.
- Der Register-Vervollständigungs-Zweig (Nachfolgenorm ohne eigene Zeile) ist nach diesem Lauf mit
  fünf Formulierungsmustern erschöpft geprüft — ein sechster Anlauf mit noch mehr Formulierungen
  wäre voraussichtlich wenig ergiebig, da bereits zwei aufeinanderfolgende Läufe (neunte und elfte
  Fortsetzung) beim jeweils erweiterten Muster nur noch 3 bzw. 0 neue Treffer fanden.
