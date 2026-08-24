# SIA-Sweep, 34. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
SIA-Sweep-Laufs (33. Fortsetzung) zuerst gelesen, dort weitergemacht.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn: eigener Prozess (Skript-Wrapper `mschub526`, PID 74963, exakt dieser
Auftragstext). Keine anderen Prozesse mit demselben Auftragstext auf denselben Dateien gefunden.

## Ausgangslage geprüft

Die 33. Fortsetzung hatte einen grossen neuen Bring-Schuld-Block (16 Suva-Titel + 2
EKAS-Richtlinien) aus dem Verweisnetz von 44002.d, Kap. 8, entdeckt und empfohlen, ihn in
mehreren kleineren Fortsetzungen statt einem Lauf abzuarbeiten. `training/norm-inventar.md`
unverändert bei 5 offenen kostenpflichtigen SIA/VKF-Bring-Schulden — kein Kaufentscheid seit der
33. Fortsetzung.

## Durchgeführt: erste vier Titel des Blocks (Seil-/Kletter-Reihe) beschafft, gelesen, destilliert

Thematisch zusammengehörende Auswahl aus dem 16-Titel-Block: 33016.d, 33006.d, 33032.d, 33070.d
(alle mit Seilsicherung/Seilzugang befasst).

Beschaffungsweg: `curl -A "Mozilla/5.0" https://www.suva.ch/waswo/<Nr>.D` — lieferte bei allen
vier Publikationen erneut die HTML-Produktseite (Content-Type text/html) statt des PDFs,
identische Werkzeug-Falle wie bei den Publikationen der 32./33. Fortsetzung. Lösung unverändert:
aus dem `<a href="…">`-Tag unmittelbar **vor** dem Linktext „PDF Deutsch" (nicht irgendein
`sitecorecontenthub.cloud`-Link auf der Seite — es gibt pro Seite mehrere, u. a. Bild-Assets)
den echten Downloadlink extrahiert (Python-Regex auf den 400 Zeichen vor dem Fundstellen-Index
von „PDF Deutsch"), danach mit `pymupdf` (Python `fitz`) Text und Metadaten gelesen.

| Nr. | Titel | Ausgabe | Seiten | Kernwert |
|---|---|---|---|---|
| 33016.d | Arbeiten am hängenden Seil (SZP) | Stand März 2026 | 2 | Projektleiter SZP Level 3, dreistufiges Ausbildungskonzept (je 5 Tage, Fortbildung max. alle 3 Jahre), zwei-Seile-Redundanz, Gefahrenzonen-Tabelle nach Arbeitshöhe |
| 33006.d | Rigging in der Veranstaltungstechnik | Stand Mai 2023 | 2 | Vier-Rollen-Matrix Hallenbesitzer/Veranstalter/Projektleiter/Rigger, PSAgA-Ausbildung mind. 1 Tag, Alleinarbeitsverbot |
| 33032.d | Seilwurfsystem mit Industrieschleuder | Stand Juni 2022 | 2 | Schnellsicherung installierbar innert 15 Min., Materialliste, vierstufige Umsteigpunkt-Prozedur |
| 33070.d | Seilsicherung im steilen Gelände | Stand Januar 2024 | 2 | Abgrenzung zur Seilzugangstechnik (33016.d), Ausbildung mind. 1 Tag, zweite Person mit PSA zur Rettung vor Ort |

Alle vier PDFs mit echtem Textlayer (kein Scan), vollständig gelesen. Alle vier
PDF-Metadatentitel ohne Sprachsuffix (.f/.i) als deutsche Fassung bestätigt.

**Datierungsbefund — Ausgabenlogik nachgeführt:** 33016.d (Stand März 2026) ist jünger als
44002.d (Oktober 2025), das bisher als zweitjüngste Suva-Publikation dieser KB geführt wurde.
Rang korrigiert: 67150.d (Juli 2026) > 33016.d (März 2026) > 44002.d (Oktober 2025). Im REGISTER
mit ⚠-Korrektur-Vermerk nachgetragen.

**Neue Cross-Referenzen aus den vier gelesenen Titeln, die im ursprünglichen 44002.d-Verzeichnis
noch nicht genannt waren:** 67061.d (Notfallplanung), 67154.d (Gebirgsbaustellen), 33019.d
(Naturgefahren), 33062.d (Kettensäge), 33076.d (Warnkleider) — dazu die bereits im Block
geführten 88816.d/84044.d. Nicht verfolgt in diesem Lauf, im REGISTER dokumentiert.

## Nachgeführt

- 4 neue Destillat-Dateien in `destillate/` (siehe Tabelle), alle Frontmatter mit `quelle`,
  `herausgeber`, `ausgabe`, `gelesen`, `status: established`, `verifikation`-Vermerk inkl.
  Werkzeug-Falle.
- `destillate/INDEX.md`: 4 neue Zeilen nach der bestehenden `suva-67018`-Zeile.
- `training/norm-inventar.md`: 1 neue Sammelzeile `[x] 260824` mit vollem Beleg, inkl. Rest-Liste
  der noch offenen 12 Titel + 2 EKAS-Richtlinien.
- `wiki/REGISTER.md` Abschnitt D: 4 neue Tabellenzeilen; der Bring-Schuld-Absatz wurde um die
  vier erschlossenen Titel (✅-Markierung), die Datierungs-Korrektur (44002.d ↔ 33016.d) und die
  aktualisierte Rest-Liste ergänzt.
- `CHANGELOG.md`: neuer Kopf-Eintrag oberhalb des vorherigen Eintrags (chronologisch korrekt
  eingefügt, bestehende Einträge unverändert darunter belassen).

## Offen für den nächsten Lauf

1. **Rest des Bring-Schuld-Blocks** (12 Suva-Titel + 2 EKAS-Richtlinien, siehe REGISTER Abschnitt
   D) — direkte Fortsetzung; empfiehlt sich weiterhin in kleineren Fortsetzungen, gleiche
   HTML-Fallen-Route erwartbar. Nächste sinnvolle Gruppierung: 33071.d/33072.d (Bäume) +
   33102.d/33103.d/33104.d (ortsfeste Leitern) als thematische Zweiergruppe.
2. Die fünf neu entdeckten Cross-Referenzen (67061.d, 67154.d, 33019.d, 33062.d, 33076.d) sind
   noch nicht formal in den Bring-Schuld-Block aufgenommen, nur in den Destillaten vermerkt —
   beim nächsten REGISTER-Update konsolidieren.
3. Danach unverändert wie in den Vorläufen: Raphaels Kaufentscheide zu den 5 kostenpflichtigen
   SIA/VKF-Bring-Schulden, oder Rest-Check der übrigen bfu-Publikationen auf neuere Fassungen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: 4 neue Destillat-Dateien (`git status
--porcelain`, alle `??` — kein Bestand überschrieben), `destillate/INDEX.md` rein additiv (4/0),
`training/norm-inventar.md` rein additiv (1/0), `wiki/REGISTER.md` 24/12 — Volltextvergleich
zeigt: die 12 gelöschten Zeilen sind exakt der alte Bring-Schuld-Absatz, ersetzt durch die
erweiterte Fassung (4 neue Tabellenzeilen zusätzlich addiert), keine fremde Zeile berührt. Kein
`git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-
Cron bzw. `scripts/nas-commit-now.sh`.
