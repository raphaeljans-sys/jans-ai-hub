# SIA-Sweep, zwanzigste Fortsetzung — 5 Korrigenda-Funde (SIA 232/1, 384/6, 2016, 2042, 2044), 8 Nullbefunde

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf (zu Sessionbeginn: QUESTIONS-Abarbeitung 15, 21:45 Uhr)
  und `outputs/2026-08-23_sia-sweep-neunzehnte-fortsetzung.md` (jüngster SIA-Sweep-Report nach
  Mtime, im CHANGELOG als eigener Abschnitt vorhanden).

## Ausgangslage und Kollisionsprüfung

`ps aux` zu Laufbeginn geprüft: eigener Prozess läuft unter dem Lauf-Namen `mschub126`
(`scripts/claude-run.sh --name mschub126`, PID 34047/34046/34039, Startprompt identisch zu
diesem Auftrag — bestätigt gemäss Hinweis im Auftrag: «ein claude-Prozess mit deinem eigenen
Lauf-Namen ist dein eigener, kein Konkurrent»). Zwei weitere parallele `claude -p`-Läufe:
`mschub127` (KB `wissen/energie`, QUESTIONS-Abarbeitung, fremde KB) und `mschub123`
(KB `wissen/baurecht`, Reglemente-Queue, fremde KB) — beide kein Konkurrent auf denselben
Dateien.

Die neunzehnte Fortsetzung hatte die Methode «Produktseite prüfen, ob neben dem
Inhaltsverzeichnis ein kostenloser Korrigenda-/Ergänzungs-Download existiert» auf 17 Zeilen
angewendet und ausdrücklich als nächste, P1-/Fach-Skill-nahe Kandidaten benannt: SIA 215,
SIA 232/1, SIA 232/2, SIA 274, SIA 283, SIA 284, SIA 384/6 (energie-relevant, Erdwärmesonden)
sowie die verbleibende 20xx-Merkblatt-Restmenge SIA 2016, SIA 2021, SIA 2027, SIA 2042,
SIA 2044, SIA 2045 (13 Zeilen insgesamt).

## Durchgeführt

### Methode (unverändert übernommen, effizienter parametrisiert)

URL-Muster `https://shop.sia.ch/normenwerk/architekt/{slug}/D/Product`. Für Zeilen mit
Schrägstrich in der Normnummer (z.B. SIA 232/1, SIA 384/6) wurde der Slug-Bindestrich-Ersatz
(`232-1_2011_d`, `384-6_2010_d`) zuerst am bereits bekannten Beispiel `118-232_2011_d`
(gefunden im HTML-Cache des vorletzten Laufs) verifiziert, dann auf alle 13 Kandidaten
angewendet — kein einziger Fehltreffer bei der Slug-Konstruktion. Alle 13 Produktseiten per
`curl -A "Mozilla/5.0"` abgerufen und automatisiert auf `lblAnhangBezeichnung`-Labels geprüft
(Muster aus den Vorläufen übernommen).

### Ergebnis der Prüfung

**5 Treffer**, alle Anhänge mit dem Preisvermerk «Preisgruppe: 0» bzw. ohne Bezahlschranke
direkt herunterladbar (per `curl -sL`, PDF-Validität per `file` bestätigt vor dem Lesen) und
vollständig mit `pdftotext -layout` gelesen:

1. **SIA 232/1-C1:2013** («Geneigte Dächer», gültig ab 01.10.2013, 3 S.): fünf
   Korrekturpositionen — praktisch wichtigste ist die Materialdicken-Korrektur für Aluminium-
   Metalldeckungen (Tabelle 7: 1,0 mm → 0,7 mm, Fussnote Kleinformat-Minimaldicke 0,65 mm).
2. **SIA 384/6-Korrigenda** («Erdwärmesonden», Stand 04.02.2010, 1 S.): reine
   Diagrammkorrektur an drei Figuren (20, 23, 26), kein Fliesstext-Inhalt — geringer
   eigenständiger Praxiswert, da die betroffene Ausgabe 2010 selbst bereits seit 30.04.2021
   archiviert ist.
3. **SIA 2016 Erläuterung (2018, gemeinsam mit SIA 2015) + Korrigenda C1:2018** (gültig ab
   01.11.2018, 5 S.): Erläuterung zu Datenaustausch-Details (Strukturattribut «Eigenschaft»,
   XTF-Beispiel, VSA-DSS-Verweis für Abwassermodelle); Korrigenda korrigiert die
   SIA405/INTERLIS-Modellbenennungskonvention und das Elektrizitäts-Modell. Betrifft ein
   bereits archiviertes GEO405-Merkblatt (ersetzt durch SIA 405:2025, dessen Ablösung als
   N-SIASWEEP-4 bereits in der achten Fortsetzung geschlossen wurde).
4. **SIA 2042 Korrigenda C1:2015/C2:2015/C3:2019** («Alkali-Aggregat-Reaktion bei
   Betonbauten»): **C3 (gültig ab 01.05.2019) ist der praktisch wichtigste Fund dieses
   Laufs** — der Anhang F «Beton-Performance Prüfung» ist seit dem 01.05.2019 nicht mehr
   gültig und wurde durch **Anhang G der Norm SIA 262/1** ersetzt. SIA 262/1 liegt bereits als
   eigenes Destillat in dieser KB (Nacht-Loop Run 3, 12.07.2026) — die Korrigenda schliesst
   damit eine Cross-Referenz innerhalb des bestehenden Bestands. C1 korrigiert
   Auswertungskriterien des Dehnungsversuchs, C2 öffnet unter Nachweisbedingungen die
   Restwasser-Verwendung für AAR-beständige Betone.
5. **SIA 2044 Korrigenda C1/C2:2013** («Klimatisierte Gebäude — Standard-
   Berechnungsverfahren»): überwiegend Formel-/Symbolkorrekturen; C2 wechselt einen
   Literaturverweis von SIA 416/1:2007 auf SIA 384/3:2013 und korrigiert eine
   Vorzeichenkorrektur in Gleichung 87.

**8 Nullbefunde** (Produktseite führt ausschliesslich das reguläre Inhaltsverzeichnis, kein
weiterer Anhang): SIA 215, SIA 232/2, SIA 274, SIA 283, SIA 284, SIA 2021, SIA 2027,
SIA 2045. Als Sammelvermerk im Register dokumentiert, damit ein künftiger Lauf diese 8 Zeilen
nicht erneut auf Korrigenda prüfen muss.

## Neue Destillate und Nachführungen

- `destillate/sia-232-1-korrigenda-c1.md` (neu, `established`).
- `destillate/sia-384-6-korrigenda.md` (neu, `established`).
- `destillate/sia-2016-korrigenda-erlaeuterung.md` (neu, `established`).
- `destillate/sia-2042-korrigenda.md` (neu, `established`).
- `destillate/sia-2044-korrigenda.md` (neu, `established`).
- `wiki/REGISTER.md`: fünf Zeilen inhaltlich ergänzt (SIA 232/1, 384/6, 2016, 2042, 2044) und
  neuer Sammelabsatz «Korrigenda-Check-Sweep, 23.08.2026 (zwanzigste Fortsetzung)» im
  Blindzone-Abschnitt.
- `destillate/INDEX.md`: fünf neue Zeilen.
- `CHANGELOG.md`: eigener Eintrag oben, vorangegangenen QUESTIONS-Abarbeitung-Eintrag (Run 14)
  unverändert gelassen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Rule `auto-verbesserungen` 260811):

| Datei | Befund |
|---|---|
| `destillate/sia-232-1-korrigenda-c1.md` | `??` (echte Neuanlage) |
| `destillate/sia-384-6-korrigenda.md` | `??` (echte Neuanlage) |
| `destillate/sia-2016-korrigenda-erlaeuterung.md` | `??` (echte Neuanlage) |
| `destillate/sia-2042-korrigenda.md` | `??` (echte Neuanlage) |
| `destillate/sia-2044-korrigenda.md` | `??` (echte Neuanlage) |
| `wiki/REGISTER.md` | je 1/1 für die fünf Einzelzeilen-Edits (gezielte Ersetzung), dann 18/5 für den Sammelabsatz-Einschub (netto 13 neue Zeilen) — bei jedem Schritt ausschliesslich eigene, gerade selbst geschriebene Zeilen betroffen |
| `destillate/INDEX.md` | 5/0, rein additiv |
| `CHANGELOG.md` | 90/0, rein additiv (eigener Eintrag oben eingefügt, `git diff \| grep "^-"` zeigt keine gelöschten Zeilen) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

## Nicht geleistet / offene Bring-Schulden

- Alle fünf Basisnormen (SIA 232/1:2011, SIA 384/6:2010 sowie die aktuelle Ausgabe 2021,
  SIA 2016:2012, SIA 2042:2012 sowie die aktuelle Ausgabe 2022, SIA 2044:2011 sowie die
  aktuelle Ausgabe 2019) bleiben kostenpflichtig und nicht im Haus — nur die kostenlosen
  Korrigenda-/Ergänzungsdokumente sind erschlossen.
- **SIA 384/6:2021 und SIA 2042:2022** (die jeweils aktuell gültigen Ausgaben) tragen bislang
  keine eigene Registerzeile in dieser KB. Für einen künftigen Lauf: eigene Zeile anlegen und
  ebenfalls auf kostenlose Korrigenda prüfen (gleiches URL-Muster).
- Von den 13 in diesem Lauf geprüften Kandidaten hat sich die Korrigenda-Methode bei rund
  einem Drittel als fündig erwiesen (5/13) — deutlich höher als die Trefferquote der
  neunzehnten Fortsetzung (1/17). Das spricht dafür, die Methode auf die verbleibenden,
  bisher nicht priorisierten Blindzone-Zeilen (von ursprünglich ~55, abzüglich der in der
  achtzehnten/neunzehnten/zwanzigsten Fortsetzung geprüften 17+13=30 Zeilen: rund 25 Zeilen
  offen) weiter auszudehnen, statt sie als erledigt zu betrachten.
- Kein neuer eigener QUESTIONS-Eintrag für den Cross-Referenz-Fund SIA 2042/Anhang G ↔
  SIA 262/1 gesetzt — beide Normen liegen bereits in derselben KB, der Verweis steht direkt im
  Destillat und in der Register-Zeile, eine separate Klärungsfrage wäre redundant.
- **Empfehlung an den nächsten Lauf:** verbleibende ungeprüfte Blindzone-Zeilen systematisch
  fortsetzen (kein vorgegebener Kandidaten-Filter mehr nötig — die Methode selbst ist jetzt an
  drei verschiedenen Stichproben mit brauchbarer Trefferquote erprobt); parallel die zwei
  fehlenden Registerzeilen SIA 384/6:2021 und SIA 2042:2022 anlegen, da beide als
  Nachfolgenorm bereits mehrfach referenziert werden, aber selbst keine Zeile haben.
