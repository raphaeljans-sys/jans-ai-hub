# SIA-Sweep, zwölfte Fortsetzung — SIA 385/9-Fassungssprung (2011 → 2023) am Original bestätigt, P1-Bring-Schuld aus Run 18 geschlossen

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
  Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
  beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: elfte Fortsetzung),
  `outputs/2026-08-23_sia-sweep-elfte-fortsetzung.md`.

## Ausgangslage

Die elfte Fortsetzung hatte den Register-Vervollständigungs-Zweig des Sweeps (Nachfolgenorm ohne
eigene Zeile) mit fünf Formulierungsmustern erschöpfend geprüft (0 neue Treffer) und die
Cross-KB-Bringschuld N57-2 (SIA 380:2015 → 2022) vollständig geschlossen. Ausdrücklich als "nicht
geleistet" vermerkt: N-SIASWEEP-2/3 (SIA 422, SIA 2021/2025) bewusst nicht erneut angegangen (neun
Quellenarten erschöpft, Empfehlung mehrerer Vorläufer), Blindzone-Sweep unverändert bei 0 von 187
offenen Zeilen, kein Volltext gekauft (Käufe sind Sache Raphaels).

Zwei parallele Claude-Prozesse derselben Station liefen zeitgleich an derselben KB: ein
QUESTIONS-Abarbeitungs-Lauf (`mschub54`, u.a. SIA 266/1 und SIA 410/410-1/2 web-verifiziert) und
ein Baurecht-Reglemente-Lauf (`mschub53`, andere KB). Beide sind eigenständige, parallel gestartete
Läufe mit demselben Startmuster wie dieser — keine Konkurrenz, siehe Laufauftrag.

Da die drei oben genannten Zweige explizit als erschöpft/bewusst-ausgesetzt gelten, wurde für
diesen Lauf zuerst nach Register-Zeilen gesucht, deren Produktdatenblatt-Verifikation zwar als
Bring-Schuld/offene Frage vermerkt, aber **noch nie am Original selbst** (nur aus einer
Sekundärquelle, hier: KB `energie`) durchgeführt worden war — das ist exakt der Auftragskern
"Produktdatenblätter mit gültig-ab/gültig-bis beschaffen".

## Befund: SIA 385/9

`wiki/QUESTIONS.md`, Eintrag vom 27.07.2026 (Cross-KB `energie` ↔ `normen`, Wissens-Chef Run 18),
P1: das REGISTER führte SIA 385/9 mit «2011 | 2011✓», Quelle `ersetzte_normen.pdf` (Stand
25.02.2013). Die KB `energie` hatte am 27.07.2026 gemeldet, der SIA-Shop weise eine Ausgabe 2023
aus — diese Meldung wurde damals **nur übernommen**, nie eigenständig durch `normen` an der
Produktseite selbst nachvollzogen. Fast vier Wochen stand die Formulierung «bisher nur über die
Shop-Produktseite gemeldet, nicht am Normtext verifiziert» unverändert im REGISTER.

**Direktprüfung 23.08.2026:** `shop.sia.ch/normenwerk/architekt/385-9_2023_d/D/Product` per
WebFetch abgerufen (Primärquelle, nicht Suchergebnis-Snippet — die URL selbst wurde vorher per
WebSearch ermittelt, da der naheliegende URL-Rateversuch am selben Tag mehrfach mit HTTP 500 vom
Shop-Server scheiterte, siehe unten). Bestätigt:

- **SIA 385/9:2023**, SN 546385/9, «Wasser und Wasseraufbereitungsanlagen in öffentlich
  zugänglichen Schwimmbädern und ähnlichen Einrichtungen — Anforderungen und ergänzende
  Bestimmungen für Bau und Betrieb»
- **Gültig ab 01.08.2023**, Status aktuell, 84 Seiten, 200.00 CHF
- Ersetzt ausdrücklich **SIA 385/9:2011** (archiviert seit 31.07.2023, war 180.00 CHF)

Nachgeführt: `wiki/REGISTER.md` Zeile SIA 385/9 (Fassungssprung im Kopf der Zeile markiert, Beleg
im Fliesstext), FRISCH-GEMELDET-Tabelle (neuer Eintrag oben), `wiki/QUESTIONS.md` (P1-Punkt aus
Run 18 mit ✅ GESCHLOSSEN-Nachtrag abgeschlossen, Originaltext unangetastet stehen gelassen).

**Cross-KB-Abnehmer nachgeführt (Rule `wissens-bibliothekar`):**
`wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md` Abschn. 7 — additiver
Verifikations-Vermerk, der die dortige offene Formulierung («Vor einem Zitat mit Ausgabejahr ist
die geltende Fassung darum in `normen` zu verifizieren») nicht löscht, sondern mit dem jetzt
bestätigten Ergebnis ergänzt.

**Weiterhin offen:** weder SIA 385/9:2011 noch :2023 liegen als Volltext im Haus (PL-02/PL-03
bereits in Run 37 erfolglos durchsucht) — die Beschaffung selbst bleibt Bring-Schuld, ausdrücklich
Sache Raphaels (Kauf), nicht mehr eine offene Verifikationsfrage.

## Sackgasse: shop.sia.ch quittiert URL-Rateversuche mit HTTP 500

Vor der WebSearch-Recherche wurde versucht, die drei aus der zehnten/elften Fortsetzung bekannten
Produktseiten-URLs erneut abzurufen (SIA 380:2022, SIA 4013:2021, SIA 242.002:2008) — als
Stichprobe, ob dort inzwischen ein freier Leseprobe-/Vorwort-Link existiert (Muster: SIA 405:2025,
achte Fortsetzung). Alle drei Abrufe scheiterten:

- `380_2022_d` → HTTP 500 (WebFetch und `curl` mit zwei verschiedenen User-Agents, mehrfach)
- `4013_2021_d` → HTTP 500 (WebFetch)
- `242.002_2008_d` → HTTP 404 (WebFetch) — dieselbe URL, die im REGISTER (Zeile SIA 242.002,
  zehnte Fortsetzung) als erfolgreich abgerufen dokumentiert ist

Das deutet auf eine **temporäre Serverinstabilität bei shop.sia.ch** zum Abrufzeitpunkt hin, nicht
auf einen dauerhaft toten Pfad — dieselbe Domain lieferte im selben Lauf für den korrekten
385-9-Pfad (per WebSearch gefunden, mit dem zusätzlichen Pfadsegment `/D/Product`) eine sofortige,
vollständige Antwort. Kein Leseprobe-Link für die drei genannten Normen gefunden oder ausgeschlossen
— die Stichprobe ist wegen der Serverfehler ergebnislos, nicht negativ. Für künftige Läufe: bei
HTTP 500 auf `shop.sia.ch` einen zweiten Anlauf über WebSearch (findet oft eine leicht abweichende,
funktionierende URL-Form wie `/D/Product`-Suffix) statt direktem Wiederholen derselben URL.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

- `wiki/REGISTER.md`: erster Edit 3/3 (die zusätzlichen zwei Zeilen stammen nachweislich vom
  parallel laufenden QUESTIONS-Abarbeitungs-Lauf `mschub54`, per `git diff` gegengelesen — SIA
  266/1 und SIA 410, beide ausserhalb der von mir editierten SIA-385/9-Zeile); zweiter Edit
  (FRISCH-GEMELDET-Tabelle) 4/3, rein eigene additive Zeile, kein Fremdanteil mehr betroffen
- `wiki/QUESTIONS.md`: 85/10 — der eigene Anteil (GESCHLOSSEN-Nachtrag bei SIA 385/9, 8 Zeilen
  additiv) per `git diff` isoliert geprüft, sauber; der Rest des Diffs stammt vom selben parallelen
  QUESTIONS-Lauf (SIA 266/1, SIA 410, VKF-Folgeprüfungen — alles `[ ]` → `[x]` mit Ursprungswortlaut
  erhalten, keine Löschung fremder Substanz)
- `wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md`: 11/1 — eigener Edit
  additiv (6 neue Zeilen); die übrigen 5 Zeilen stammen aus der bereits in der elften Fortsetzung
  vorgenommenen, noch uncommitteten SIA-380-Korrektur derselben Datei (per `git diff` erkennbar an
  Datum/Wortlaut «elfte Fortsetzung»), nicht von diesem Lauf verändert

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 385/9:2023 (oder :2011), SIA 380:2022, SIA 4013:2021, SIA 242.002:2008
  gekauft — bleiben Beschaffungs-Bring-Schulden, Käufe sind Sache Raphaels.
- N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2021/2025) weiterhin bewusst nicht erneut
  angegangen — neun Quellenarten bereits erschöpft.
- Blindzone-Sweep bleibt bei 0 von 187 offenen Zeilen, in diesem Lauf nicht neu gescannt.
- Register-Vervollständigungs-Zweig (Nachfolgenorm ohne eigene Zeile) bleibt bei 0 neuen Treffern
  aus der elften Fortsetzung — kein weiterer Anlauf in diesem Lauf.
- **Empfehlung für die Fortsetzung:** statt der drei erschöpften Zweige systematisch weitere
  Register-Zeilen suchen, deren Bring-Schuld/offene Frage nur auf einer Sekundärquelle beruht statt
  auf einer eigenen Direktprüfung der Produktseite (Muster wie SIA 385/9 hier) — dafür
  `wiki/QUESTIONS.md` nach der Formulierung «bisher nur … gemeldet» bzw. «nicht am Normtext
  verifiziert» durchsuchen. Mindestens ein weiterer Fall ist bekannt: SIA 387/4:2023 wurde laut
  REGISTER-Zeile bereits am 23.08.2026 von der KB `energie` selbst direkt verifiziert (nicht mehr
  offen) — als Positivbeispiel, wie der Abschluss aussieht.
