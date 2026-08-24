# SIA-Sweep, 35. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
SIA-Sweep-Laufs (34. Fortsetzung) zuerst gelesen.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn: eigener Prozess `mschub531` (PID 78211, exakt dieser Auftragstext).
Zusätzlich ein Sibling-Prozess `mschub529` (PID 77189/77188) mit dem Auftrag „Arbeite offene
Fragen in `wiki/QUESTIONS.md` ab" — eigener Lauf, aber anderer Auftragstext, auf denselben
KB-Dateien. Daraus abgeleitet: `wiki/QUESTIONS.md` in diesem Lauf **nicht** bearbeitet (das ist
der Arbeitsbereich des Siblings), nur additive Ergänzungen in `wiki/REGISTER.md` und
`training/norm-inventar.md`.

## Bestandsaufnahme: Abschnitt A (SIA — Gültigkeit je Norm) ist gesättigt

Systematischer Grep aller 54 „Kein Volltext im Haus"-Zeilen in `wiki/REGISTER.md` Abschnitt A:
**52 bereits mit Produktseiten-Abruf verifiziert** (die Formulierung „abgerufen 23.08.2026"
markiert sie), nur **2 ohne** — beide sachlich bereits geklärt (SIA 381/3: Nachfolgeinhalt über
SIA 2028 verifiziert, Basisnorm selbst nicht mehr nötig; SIA 118/430: Preis/Ausgabe verifiziert,
kein kostenloser Zugang gefunden, Bring-Schuld Raphael). `training/norm-inventar.md` bestätigt
zusätzlich: **0 offene `[ ]`-Zeilen mit SIA-Präfix.**

**Damit ist der wörtlich beauftragte Teilauftrag „SIA-Zeilen ohne Datei im Haus, Produktdatenblätter
beschaffen" durch die vorangegangenen 34 Fortsetzungen bereits vollständig abgearbeitet.** Es
verbleiben nur noch **6 cross-KB-Bring-Schulden** im Inventar (SIA 491, SN EN 12193, SN 640 052,
SN 641 400, SN 640 273a, SIA 181:2020) — alle entweder kostenpflichtig (Kaufentscheid Raphael)
oder mit ausgeschöpftem Web-Beschaffungsweg.

## Durchgeführt: Konsolidierung SN 640 052 / SN 641 400 (QUESTIONS → REGISTER)

Geprüft, ob `wiki/REGISTER.md` Abschnitt B (VSS-Gültigkeit) den bereits am 23.08.2026 in
`wiki/QUESTIONS.md` erarbeiteten Stand zu diesen beiden Normen führt — **tat er nicht**, beide
fehlten dort komplett als Zeile, obwohl die Sachlage in QUESTIONS bereits weitgehend geklärt war.

**SN 640 052 „Wendeanlagen":** eigenständig gegengeprüft
(`mobilityplatform.ch/de/vss-shop/product/640052`, WebFetch), Ergebnis deckungsgleich mit dem
23.08.-Befund: Ausgabe 01.01.1977, **ausser Kraft seit 31.03.2019**, Preis CHF 45.20. Cross-KB-
Vorbehalt in `baurecht/wiki/baureife-und-erschliessung.md:76` ist bereits gesetzt (Commit
`fd4ef28d`/`b1533e82`) — kein weiterer Handlungsbedarf dort. Zusätzlich versucht, den bislang
unbekannten Nachfolger über die ASTRA-Strukturanpassungsdokumentation („astra 8A002", VSS-
Normenwerk-Umstellung März 2019) zu finden: **zweifacher Abruf, beide Male HTTP 502** (Server-
Fehler, kein inhaltlicher Befund) — echte Werkzeug-Falle, kein Rückschluss auf Inhalt möglich.

**SN 641 400 „Grenzbedarf Parkplätze":** fünfter Beschaffungsversuch (nach vier bereits in
QUESTIONS dokumentierten). Geprüfte Wege: Wikipedia-Liste „Normen für das Strassen- und
Verkehrswesen in der Schweiz" (Norm nicht geführt), direkter Shop-Retry
(`mobilityplatform.ch/de/641400.html`, HTTP 404, deckt sich mit den vier Vorläufen), ZH-
Wegleitung `pp_wegleitung.pdf` (Scan ohne Textlayer, `pdftotext` liefert 0 Zeilen — bestätigt den
in QUESTIONS bereits dokumentierten Befund „nur Klammerverweis, kein Volltext"). **Kein neuer
Befund.** REGISTER-Zeile verweist auf den einzig offenen, in QUESTIONS bereits recherchierten
nächsten Schritt (VSS-Kundendienst `info@vss.ch`, +41 44 269 40 20) statt den Web-Weg ein
sechstes Mal zu wiederholen.

## Selbstkorrektur im Lauf

Der erste Entwurf der beiden REGISTER-Zeilen stellte die Funde fälschlich als Neuentdeckungen
dieses Laufs dar. Der anschliessende Abgleich mit `wiki/QUESTIONS.md` zeigte, dass SN 640 052
bereits am 23.08.2026 vollständig geklärt und SN 641 400 bereits vierfach erfolglos bearbeitet
war — beide Zeilen wurden noch im selben Lauf korrigiert, um sie korrekt als Konsolidierung
(nicht Neufund) einzuordnen, mit Verweis auf die bereits geleistete Vorarbeit. Kein Datenverlust,
da die Korrektur vor dem Verlassen des Laufs erfolgte.

## Nachgeführt

- `wiki/REGISTER.md` Abschnitt B: 2 neue Tabellenzeilen (SN 640 052, SN 641 400).
- `training/norm-inventar.md`: die zwei bestehenden `[ ]`-Zeilen (560/561) um den
  Konsolidierungsbefund ergänzt, keine neue Zeile, keine Statusänderung (bleiben offen — echte
  Bring-Schulden bestehen fort).
- `CHANGELOG.md`: neuer Kopf-Eintrag oberhalb des vorherigen (chronologisch korrekt eingefügt).

## Offen für den nächsten Lauf

1. **Abschnitt A (SIA) ist gesättigt** — ein weiterer SIA-Produktdatenblatt-Sweep verspricht
   keinen Mehrwert, ausser bei neuem Bestandszugang (Frischecheck SIA/VKF-Dateizahl) oder neuer
   Revision. Der sinnvolle Sweep-Fokus verlagert sich auf **Abschnitt D (Suva/EKAS)**, wo aus der
   34. Fortsetzung noch 12 Titel + 2 EKAS-Richtlinien offen sind.
2. ASTRA-Strukturanpassungsdokument bei Gelegenheit erneut abrufen (HTTP 502 war ein temporäres
   Server-, kein Inhaltsproblem) — könnte den SN-640-052-Nachfolger liefern.
3. SN 641 400: kein weiterer Web-Anlauf sinnvoll, bis der VSS-Kundendienst kontaktiert ist
   (Bring-Schuld Raphael).

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: `wiki/REGISTER.md` 2/0 (rein additiv,
inkl. der im Lauf selbst korrigierten Fassung), `training/norm-inventar.md` 2/2 (exakt die zwei
bearbeiteten Zeilen ersetzt, keine Nachbarzeile berührt — dabei ein eigener Tippfehler
„baureich-und-erschliessung" im selben Lauf sofort auf „baureife-und-erschliessung" korrigiert),
`CHANGELOG.md` 103/0 (rein additiv). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt;
Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
