# QUESTIONS-Abarbeitung 9 — Dateiname/Inhalt-Mismatch bei `vkf-merkblatt-brandschutzklassifikation-bauteile.md` aufgeklärt

- **Datum:** 23.08.2026
- **Auftrag Raphael:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
  ist zitierfähig. CHANGELOG und Report des letzten Laufs zuerst lesen, dort weitermachen. Rule
  `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen,
  nach jedem Schreiben `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 8),
  `outputs/2026-08-23_questions-abarbeitung8.md`.

## Ausgangslage

An diesem Tag liefen bereits acht QUESTIONS-Abarbeitungen und dreizehn SIA-Sweep-Fortsetzungen
über dieselbe KB. `ps aux` bestätigte zwei weitere, echt parallele `claude`-Prozesse derselben
Station an derselben KB zum Startzeitpunkt dieses Laufs. Die meisten in `wiki/QUESTIONS.md`
sichtbaren offenen Punkte waren bereits geschlossen oder ausdrücklich an Raphael vertagt (N60-1
Duplikat-Merge, N60-2 Methodik-Pflicht-Vorschlag, NIN-Frage hinter Bezahlschranke der
Electrosuisse-NIN-Online-Datenbank).

Ein tragfähiger, lösbarer Punkt blieb: der seit 13.07.2026 offene Verdacht «Dateiname passt nicht
zum Inhalt» bei `destillate/vkf-merkblatt-brandschutzklassifikation-bauteile.md`.

## Befund: kein Mismatch

`Brandschutz-Praevention.pdf` am Original beschafft — SharePoint-Site `PL`, Drive `02_Recht_Norm`
über den M365-Graph-Connector aufgelöst (`node connectors/m365-graph.mjs --site pl`, dann
`--get "/sites/<id>/drives"`), Datei über `@microsoft.graph.downloadUrl` per `curl` geladen
(52'369 Byte, 1 Seite), vollständig mit `pdftotext -layout` gelesen.

Die Kopfzeile des Blatts trägt den Serien-/Herausgeber-Brand **«Brandschutz + Prävention» /
«Merkblatt»** der herausgebenden regionalen Fachstellen (NSV, Gebäudeversicherung Luzern, Kt.
Schwyz, Kt. Obwalden, Kt. Uri) — erst darunter der eigentliche Inhaltstitel
«Brandschutz-Klassifikation von häufig verwendeten Bauteilen». Die PDF-Metadaten (`pdfinfo`)
bestätigen das unabhängig: `Title: Merkblatt_Klassifikation Bauteile_V.1`. Der Dateiname stammt
also vom Serien-Brand des Dokuments selbst, nicht von einer Fehlablage. Die Tabelle im Original
(REI/EI/R/E-Klassen, Kapselungsregel K 30-RF1, Brandschutzabschlüsse EI 30/E 30) deckt sich Zeile
für Zeile mit dem bestehenden Destillat.

**Zweite Teilfrage mitgeprüft:** Ob `Brandverhuetung & organisatorischer Brandschutz.pdf` (Quelle
von `vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md`) und
`Brandschutz-Praevention.pdf` in Wahrheit dieselbe Datei sind. Ordnerlisting des SharePoint-
Ordners `VKF_Norm/02_Brandschutzrichtlinien 2015` (`--get .../children`) bestätigt: beide
Dateinamen existieren dort unabhängig nebeneinander — zwei verschiedene PDFs, kein Merge-Fall.

## Nachgeführt

- `destillate/vkf-merkblatt-brandschutzklassifikation-bauteile.md`: additiver Absatz in «Offene
  Punkte» mit der Aufklärung, `last_updated` auf 2026-08-23 gesetzt.
- `wiki/QUESTIONS.md`: der Punkt ist mit ✅-Schliessung versehen; Ursprungswortlaut bleibt
  unangetastet als durchgestrichene Zeile darunter stehen (Rule `wissens-bibliothekar` — kein
  Löschen).
- `CHANGELOG.md`: eigener Eintrag oben.

## Selbstkorrektur (wichtigster Teil dieses Laufs)

Der erste Schreibversuch des eigenen CHANGELOG-Eintrags hat versehentlich die Kopfzeile des
direkt darüberliegenden, fremden Eintrags («SIA-Sweep, dreizehnte Fortsetzung») entfernt: das
`old_string` traf nur die Kopfzeile, das `new_string` gab sie nicht zurück, wodurch deren
Fliesstext kopflos hinter dem eigenen Eintrag stand. Sofort per `git diff --numstat` bemerkt
(121/0 statt der erwarteten ~48/0 additiven Zeilen), mit vollem `git diff` lokalisiert und die
Kopfzeile im selben Lauf wortgleich wiederhergestellt, mit `---`-Trenner sauber abgegrenzt.
Kein Inhalt des fremden Laufs ging verloren, nur die Kopfzeile war für die Dauer eines einzigen
Edits weg — kein Commit hat diesen Zwischenzustand je gesehen (dieselbe Session, vor jedem
`nas-selfcommit`-Fenster geprüft). **Lehre für künftige Läufe:** bei additiven Edits an Dateien
mit aktiv laufenden Parallelprozessen `old_string` niemals auf eine alleinstehende Kopfzeile ohne
umgebenden Kontext beschränken, wenn `new_string` sie nicht selbst wieder ausgibt — sonst
verschluckt der Edit die Zeile.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:
- `destillate/vkf-merkblatt-brandschutzklassifikation-bauteile.md`: 12/1 (rein eigener Edit, die
  eine Löschzeile ist die bewusste `last_updated`-Ersetzung).
- `wiki/QUESTIONS.md`: 37/1 statt der erwarteten ~17/1 — per `git diff` (nicht nur `--numstat`)
  gegengelesen: der zusätzliche Block (23 Zeilen, SIA-500-Korrigenda C1/C2) stammt nachweislich
  vom parallel laufenden SIA-Sweep-Prozess, eigener Hunk an anderer Stelle (Zeile ~4054), keine
  Überschneidung mit der eigenen Bearbeitungsstelle.
- `CHANGELOG.md`: nach der Selbstkorrektur 132/0, ausschliesslich additiv geprüft.

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / weiterhin offen

- Die Nachbar-Teilfrage in der alten Sammel-Notiz (Zeile ~3393, «Verify-Abschluss MacBook») zur
  K-30-RF1-Definition (bisher nur sinngemäss aus BSR 13-15, speculative) ist NICHT mitgeklärt —
  dafür wäre das BSR-13-15-Original selbst (`Baustoff & Bauteile.pdf`) nötig, nicht nur das
  Merkblatt.
- N60-1 (AFC-Synopse-Duplikat) und N60-2 (Methodik-Pflicht-Vorschlag) unverändert bei Raphael.
- NIN-Frage (eigener Stromkreis Geschirrspüler) unverändert hinter Bezahlschranke.
- Kein weiterer tragfähiger, eigenständig lösbarer offener Punkt in `wiki/QUESTIONS.md` gefunden,
  der nicht bereits von einem der beiden parallel laufenden Prozesse bearbeitet wird oder an
  Raphael/Kauf vertagt ist — die KB ist nach neun QUESTIONS-Abarbeitungen und dreizehn
  SIA-Sweep-Fortsetzungen an diesem Tag für eigenständig lösbare Punkte praktisch ausgeschöpft.
