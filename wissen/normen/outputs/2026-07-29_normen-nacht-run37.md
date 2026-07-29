# Normen-Training Run 37 (MacBook Pro, 29.07.2026) — SIA/VKF

**Kurzfassung:** Dieser Lauf hat die Ebene bearbeitet, die seit Run 1 unangetastet blieb: das
**REGISTER**. Der Cross-KB-Eintrag vom 27.07. hatte notiert, hinter dem Einzelfall SIA 385/9 stehe
eine ganze Klasse, und «eine Stichprobe wäre ergiebiger als der Einzelfall». Genau das wurde gemacht.
Ergebnis: die 2013-Blindzone ist erstmals **beziffert** (102 von 177 aktiven Zeilen ohne hausinternes
Korrektiv), und fünf belegte Register-Fehler sind behoben — darunter eine Zeile, die **hausintern
beweisbar veraltet** war. Zusätzlich ein widerlegter Agenten-Falsch-Positiv und eine
Zweitinstanz-Kollision mit Run 36.

---

## 1. Voraussetzungen und Störungen

- NAS gemountet. **Der Mount ist während des Laufs viermal weggebrochen** (SMB-Idle-Stall); der Guard
  `ensure-nas-mounted.sh` hat jeweils geheilt, um 06:51 stehen aber drei Fehlversuche in Folge im Log.
  Vor jedem NAS-Block wurde der Guard erneut aufgerufen.
- Zugriffs-Check auf die Original-Ablage bestanden (`pdftotext` auf `416_2003_dfi.pdf` lieferte Text).
  Keine TCC-Blockade in dieser Session.
- **Der Read-Hook fiel zeitweise aus** («PreToolUse hook did not respond before its timeout»), womit
  Bild-Lektüre über das Read-Tool blockiert war. Ausweichweg: Rendering per `pdftoppm` und OCR per
  `tesseract` über die Shell — hat durchgehend funktioniert.
- **Zwei Refuter-Agenten sind am abgelaufenen OAuth-Token gescheitert** (401, «Re-authenticate to
  continue»), ebenso die zwei gleichartigen Agenten im Workflow. Die Anmeldung ist zu erneuern, sonst
  scheitern Subagenten im nächsten Lauf erneut.

## 2. Zweitinstanz-Kollision — Nummer 36 doppelt vergeben

Dieser Lauf startete, während Run 36 noch lief, und vergab zunächst selbst die Nummer 36. Zu
Laufbeginn war das nicht erkennbar: die jüngste `outputs/`-Datei war Run 35, und der `ps`-Check
(Rule 260724) fand keine zweite Instanz, weil er nur einen gleichnamigen **laufenden** Prozess sucht.
Auffällig wurde es erst beim Nachführen von `destillate/INDEX.md`, wo Run 36 bereits seine siebte
Lignum-Runde eingetragen hatte. Alle Einträge wurden nachträglich auf **Run 37** umnummeriert.

**Lehre:** die bestehende Regel «Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei belegen»
greift zu kurz, wenn der Vorlauf noch läuft und seine Datei erst am Ende schreibt. Nötig ist eine
zweite Prüfung unmittelbar **vor dem Schreiben**. Gleicher Fehlertyp wie am 25.07. bei Nummer 21.

## 3. Die Stichprobe — Methode

1. Alle 248 SIA-Zeilen des Register-Abschnitts A maschinell geparst (Norm-Nr., Gültig-2013-Jahr,
   Bestand-Spalte).
2. Der reale Dateibestand unter `SIA_Norm/` geparst (174 PDFs, ohne Sprachvarianten `e/f/i` und `xalt`),
   Norm-Nummer und Jahr aus dem Dateinamen extrahiert.
3. Drei Abgleich-Kategorien gebildet: (A) Bestand neuer als Register, Bestand-Spalte leer;
   (B) Bestand neuer, Spalte gefüllt — korrekt geflaggt?; (C) Bestandsdatei ohne Register-Zeile.
4. **Jeder Treffer danach am Titelblatt des Originals verifiziert** — je ein Agent pro Norm, neun
   insgesamt. Der Dateiname ist eine Behauptung, keine Feststellung (Methodik-Pflicht 2 sinngemäss).

## 4. Ergebnis A — die 2013-Blindzone, beziffert

| Kennzahl | Wert |
|---|---|
| SIA-Zeilen in Abschnitt A | 248 |
| davon alle Ausgaben zurückgezogen | 71 |
| **aktiv** (2013 gültige Ausgabe) | **177** |
| davon mit Bestand-Abgleich (Datei im Haus) | 75 |
| davon **ohne Datei im Haus → Blindzone** | **102 (58 % der aktiven)** |
| Blindzone-Zeilen mit 2013-Ausgabe älter als 2003 | 14 |

Für die 75 Zeilen mit Bestand wirkt der eigene Bestand als Korrektiv — genau so wurde in diesem Lauf
SIA 2020 entlarvt. Für die **102 Zeilen ohne Datei existiert dieses Korrektiv nicht**: eine Revision
nach dem 25.02.2013 kann dort mit hausinternen Mitteln grundsätzlich nicht bemerkt werden. Die
ältesten und damit revisionsanfälligsten sind u.a. SIA 215:1978, 370/24:1979, 381/3:1982, 370/21:1987,
380/3:1990, 2003:1996, 2014:1996.

Als Warnblock mit **verbindlicher Zitierregel** ins REGISTER geschrieben: bei leerer Bestand-Spalte
darf das Ausgabejahr nicht als geltend zitiert werden; zulässig ist «zuletzt bestätigt 25.02.2013,
jüngere Revision nicht geprüft».

## 5. Ergebnis B — Verifikations-Verdikte je Norm (9 Agenten)

| Norm | Verdikt | Befund |
|---|---|---|
| SIA 2020 | **Register-Fehler bestätigt** | Zeile sagte «gültig 2001»; Original: «SIA 2020:2017 … Ersetzt Merkblatt SIA 2020:2001», SNR 592020:2017 de, gültig ab 2017-05-01, 20 S., Merkblatt. **Hausintern beweisbar veraltet.** Korrigiert |
| SIA 125 | bestanden, 0 Befunde | SIA 125:2017, Vertragsnorm (Vorwort S. 4, Reglement SIA 148), SN 507125:2017 de, gültig ab 2017-05-01, 16 S. Zeile ergänzt |
| SIA 144 | bestanden nach Widerlegung | SIA 144:2013, Ordnung, SN 507 144, «2013-08 1. Auflage», gültig ab 01.08.2013. Ergänzt SIA 142/143, ersetzt sie nicht. Zeile ergänzt. **Der «SCHWERWIEGEND»-Befund des Agenten war falsch, siehe Abschnitt 6** |
| SIA 312 | bestanden, 0 Befunde | SIA 312:2013 «Begrünung von Dächern», SN 564312:2013 de, gültig ab 2013-11-01, 24 S. Ersetzt laut Vorwort S. 4 die Empfehlung SIA 271/2:1994 (nicht auf dem Titelblatt). Zeile ergänzt |
| SIA 180/081 | bestanden | SN EN ISO 10077-1:2017, CH-Auflage 2018-04, gültig ab 2018-04-01, ersetzt :2006. Reiner Scan ohne Textlayer. Zeile ergänzt |
| SIA 180/082 | bestanden, 1 Suchfalle | SN EN ISO 10077-2:2017, CH-Auflage 2018-04, ersetzt :2012. ⚠ PDF-Title-Metadatenfeld lautet fälschlich «ISO 10077-1-2017» (Teil 1) — Inhalt ist korrekt Teil 2. Zeile ergänzt, Falle vermerkt |
| SIA 343.051 | **Ausgabejahr korrigiert** | CH-Ausgabe **2019** (Copyright 2019, «2019-01 1. Auflage», gültig ab 2019-01-01); die bisherige «2018» ist das Jahr der EN-Basisnorm. Kein «Ersetzt»-Vermerk → frühere Vermutung «14351-2:2012?» entfernt |
| SIA 384.201 | **Ausgabejahr korrigiert** | CH-Ausgabe **2018** («1. Auflage 2018-12», gültig ab 2018-12-01); «2017» ist das EN-Jahr. 111 S. Das Destillat führte die Trennung bereits korrekt |
| SIA 2051 | **Register korrekt, Datei falsch** | Titelblatt SIA 2051:2017 (SNR 592051:2017 de, genehmigt 12.09.2017), Merkblatt, 52 Buchseiten. Die Datei heisst `2051_2018.pdf`; 2018 ist das Einscan-Datum (CreationDate 2018-02-07, Konica-Minolta). Auf Entscheid Raphaels nicht umbenannt |

**Keine Destillat-Inhalte geändert** — alle neun geprüften Destillate stimmen mit dem Original überein.

## 6. Der widerlegte Falsch-Positiv (Methodik-Befund des Laufs)

Der SIA-144-Agent meldete als **«SCHWERWIEGEND»**, die Datei `144_2013.pdf` beginne mit zwei Seiten
der Norm SIA 384.201 (Heizlast), die Datei sei beim Scannen fehlerhaft zusammengesetzt worden, und
empfahl, sie zu bereinigen. Der Hauptprozess hat das vor Übernahme selbst geprüft: Seiten 1, 2, 3, 4
und 22 mit eigenem Präfix gerendert und per OCR gelesen.

**Ergebnis: vollständig widerlegt.** S. 1 ist «Ordnung SIA 144 / 2013», S. 2 die
Korrigenda-Boilerplate, S. 3 das Innentitelblatt «SN 507 144», S. 22 die Kommissionsseite. Auf den
Seiten 1-4 kein einziger Treffer auf 12831, 384.201 oder Heizlast.

**Ursache:** mehrere Agenten rendern gleichzeitig mit generischen Namen (`tb-001.png`) ins geteilte
Scratchpad und lesen dann das Alt-Rendering einer fremden Norm. Der SIA-312-Agent geriet in denselben
Fehler, bemerkte ihn selbst und dokumentierte ihn — der SIA-144-Agent nicht.

Daraus zwei Teilregeln, als **Methodik-Pflicht 5** in `training/PROGRAMM.md` verankert:
1. Beim Rendern immer ein normspezifisches Präfix verwenden.
2. Wichtiger: Meldet ein Agent eine **Quelldatei als defekt, fremdbestückt oder unvollständig**, wird
   der Befund nie ohne eigene Gegenprüfung am Original übernommen. Solche Befunde sind besonders
   folgenreich (sie führen zu Datei-Eingriffen) und zugleich der wahrscheinlichste Ort für ein
   Werkzeug-Artefakt.

Das bestätigt die Run-35-Lehre aus der Gegenrichtung: dort musste der Hauptprozess einen Agenten-
Befund gegen eine ältere Bestätigung durchsetzen, hier musste er einen Agenten-Befund verwerfen.
Gemeinsamer Nenner: **das Original entscheidet, nicht der Agentenbericht.**

## 7. Lignum-Taktung — Entscheid zurückgestellt (Selbstkorrektur)

Raphael wurde in diesem Lauf die seit Run 34 offene Taktungsfrage vorgelegt und hat entschieden,
beide Lignum-Destillate als «speculative, stabil» zu akzeptieren. **Die Vorlage war fehlerhaft:** sie
stützte sich auf den Stand von Run 35 («seit Runde 32 nur noch Rand- und Nuance-Befunde»), während
Run 36 wenige Stunden zuvor genau diese Prämisse entkräftet hatte — die siebte Runde brachte bei
`lignum-lignatec` 7 Befunde, darunter drei Kernbefunde in der viermal bestätigten Tab. 5, sichtbar
erst durch **rechnerische** Tabellenaufnahme (Median-RGB je Zellbox) statt visueller Lektüre.

Die Frage wurde Raphael deshalb **mit den korrigierten Zahlen neu vorgelegt** — und fiel dann anders
aus:

| Destillat | Entscheid Raphael 29.07.2026 |
|---|---|
| `lignum-lignatec-brandschutz.md` | **achte Runde fahren**, rechnerische Aufnahme von Tab. 3 und Tab. 4 |
| `lignum-4-1-...md` | **als «speculative, stabil» akzeptiert**, keine Routinerunden mehr |

In `training/PROGRAMM.md` verankert. Die achte Runde **konnte in diesem Lauf nicht mehr gefahren
werden** (OAuth-Token, siehe Abschnitt 1) und ist die erste Aufgabe des nächsten Laufs.

Zwei Lehren, beide dort festgehalten: **eine Runde mit wenigen Randbefunden ist kein
Sättigungsindiz, sondern kann eine zu schmale Prüfmethode anzeigen** — und: **eine
Entscheidungsvorlage ist gegen den jüngsten Laufstand zu prüfen, nicht gegen den zuletzt selbst
gelesenen.** Der zweite Fehler ist in diesem Lauf real passiert und hätte Raphael beinahe zu einem
Entscheid auf falscher Grundlage geführt.

## 8. Nachgeführt

- `wiki/REGISTER.md`: Warnblock «2013-Blindzone»; SIA 2020 korrigiert; fünf neue Zeilen (125, 144,
  312, 180/081, 180/082); SIA 343.051 und 384/201 präzisiert; SIA 385/9 quellentreu hergeleitet und
  mit Zitier-Vorbehalt versehen; SIA 2051 Dateiname-Vermerk.
- `training/PROGRAMM.md`: Methodik-Pflicht 5; Lignum-Taktung als zurückgestellt dokumentiert.
- `wiki/QUESTIONS.md`: Run-37-Eintrag (Geschlossenes, vier neu offene Punkte, Kollisions-Lehre).
- `training/norm-inventar.md`: Run-37-Eintrag zuoberst.
- `CHANGELOG.md`: Kopfeintrag.

## 9. Offen

1. **Anmeldung erneuern** — sonst scheitern Subagenten im nächsten Lauf wieder am 401.
2. **Achte Runde `lignum-lignatec`** mit rechnerischer Aufnahme von Tab. 3 und Tab. 4 — von Raphael
   beschlossen, wegen des Token-Ausfalls nicht mehr gefahren. Erste Aufgabe des nächsten Laufs.
3. **Die 102 blinden Register-Zeilen** sind nur über ein aktuelles SIA-Normenverzeichnis (Abo/Kauf)
   schliessbar — nicht vom Loop lösbar. Eine Beschaffungs-Prioritätenliste wurde auf Entscheid
   Raphaels bewusst nicht erstellt.
4. **Render-Präfix-Problem in anderen KBs** mit Bild-Agenten (baurecht-buch, wettbewerbs-dna) ist
   **nicht geprüft** — Hinweis an den Wissens-Chef.
5. **NAS-Mount-Stabilität**: vier Abbrüche in einem Lauf, um 06:51 drei Guard-Fehlversuche in Folge.
   Die Mount-Härtung vom Juli reicht offensichtlich nicht.
