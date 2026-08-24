# QUESTIONS-Abarbeitung (24.08.2026, ~07:16-07:25 Uhr) — achte unabhängige Sättigungsbestätigung, freie Zusatzquelle für SIA-Z-Werte gefunden

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established`-Destillate zitierfähig. CHANGELOG-Kopf und Report des
letzten Laufs (siebte unabhängige Sättigungsverifikation, 07:07 Uhr) zuerst gelesen.

## Kollisionscheck

`ps aux` geprüft: eigener Prozess `mschub703` (PID-Kette 83050/83062) ist Kind von
`bash /tmp/vollschub-mini-v2.sh` (PID 78931, aktiv seit 07:09 Uhr) — derselbe Ad-hoc-Burst-Runner,
den die 07:07-Uhr-Analyse bereits identifiziert hatte, offenbar zwischenzeitlich neu gestartet
(**v2**), weiterhin ohne Sättigungs-Erkennung im festen Rotations-Array. Parallel liefen `mschub701`
(`wissen/energie` QUESTIONS) und `mschub702` (Baurecht-Reglemente-Queue) — beide andere
Deliverables, keine Kollision.

## Vorgehen und Befund

`wiki/QUESTIONS.md` zeigt unverändert 33 `[ ]`-Zeilen (identisch zum Stand 07:08 Uhr). Drei
Kandidaten stichprobenartig vertieft, die in den bisherigen Sweep-Klassifikationen nicht einzeln
benannt waren:

1. **N-R40-7 (Lignatec-Grauton, Z. 2623):** Der Eintrag selbst dokumentiert bereits, dass die
   Bedeutung aus der Quelle nicht ableitbar ist — genuin unlösbar ohne eine zweite Quelle
   (Legende/Erratum), die nicht im Haus ist. Kein weiterer Ertrag möglich.
2. **Dateiname-↔-Norm-Nummer-Diskrepanz (Z. 4280):** reine Dokumentationsnotiz
   (`592056.pdf` = SIA 2056, `564_282.pdf` = SIA 282), Umbenennung wäre destruktiv und liegt bei
   Raphael (Rule `wissens-bibliothekar`, Punkt 4).
3. **Z1/Z2-Koeffizienten SIA 103 (Z. 4666):** Beim Nachlesen zeigte sich, dass dieser Punkt bereits
   am 24.08.2026 von einem früheren Lauf geschlossen wurde (`[x]`-Bullet Z. 4655 ff., Verweis auf
   `destillate/sia-honorar-hilfsmittel.md`, Werte SIA 103 Z1 = 0.075 / Z2 = 7.23) — kein neuer
   Handlungsbedarf an der Frage selbst.

**Eigenständiger Zusatzertrag:** Unabhängige Web-Recherche (WebSearch + PyMuPDF-Extraktion, da
`pdftotext` auf dieser Station nicht installiert ist — `which pdftotext` liefert nichts, `fitz`/
`PyPDF2`/`pypdf` sind vorhanden) bestätigte die im Destillat geführten Z1/Z2-Werte exakt gegen eine
bisher nicht zitierte, frei zugängliche Quelle:
`https://vd.sia.ch/sites/vd.sia.ch/files/services_coefficientsz_2016_0.pdf` (SIA Sektion Vaud,
viersprachig D/F/I/E, Jahrgänge 2005-2016, je eine Seite pro Jahrgang). Diese Quelle bestätigt
zusätzlich, dass die Werte auch im Jahrgang 2016 (ein Jahr über den bisher destillierten Stand 2015
hinaus) unverändert sind: SIA 102/105 Z1 0.062/Z2 10.58 · SIA 103 Z1 0.075/Z2 7.23 · SIA 108
Z1 0.066/Z2 11.28 (Jahrgänge 2005-2008 abweichend und niedriger, ebenfalls deckungsgleich mit der
bereits destillierten Zeitreihe). In `destillate/sia-honorar-hilfsmittel.md` ergänzt: neuer Bullet
unter «Offene Punkte», neue `sources`-Zeile, `last_updated` von 2026-07-17 auf 2026-08-24
nachgeführt — alles additiv, kein bestehender Satz verändert oder gelöscht (verifiziert per
`git diff`).

## Für den Rest der KB

Erneute, unabhängige Sättigungsbestätigung — die **achte** insgesamt (siebter SIA-Sweep plus
mehrere QUESTIONS-Abarbeitungen des heutigen Tages). `training/norm-inventar.md` weiterhin 0
offene Zeilen. Die verbleibenden 33 `[ ]`-Zeilen in `wiki/QUESTIONS.md` sind durchgehend entweder
Bring-Schuld (kostenpflichtiger Normenkauf), Strukturentscheide bei Raphael (Duplikat-Merges,
Dateiumbenennungen), genuin unlösbare Quell-Ambiguitäten oder methodische/Betriebs-Notizen ohne
eigene Fundstellen-Aussage. Kein weiterer eigenständiger fachlicher Ertrag über die sieben Vorläufe
hinaus identifizierbar, ausser dem oben dokumentierten Nebenfund.

Der Ad-hoc-Runner `/tmp/vollschub-mini-v2.sh` bleibt unangetastet — Taktungsentscheid ausserhalb
dieses fachlichen Auftrags (Begründung siehe 39. SIA-Sweep-Fortsetzung und 07:07-Uhr-Report).
Praktische Empfehlung unverändert: SIA-Sweep und QUESTIONS-Abarbeitung bis zu Raphaels
Kauf-/Freigabeentscheiden (Register Abschnitt A, u.a. P1 SIA 380/1, 385/1, 266/1; N60-1/N60-2 aus
`logbuch/fristen.md`) pausieren; die Redundanz löst sich spätestens um 11:30 Uhr von selbst.

## Verifikation

`git diff --numstat` nach dem Schreiben geprüft:
`wissen/normen/CHANGELOG.md` +73/-0 (rein additiv, neuer Eintrag oberhalb des bestehenden Kopfs).
`wissen/normen/destillate/sia-honorar-hilfsmittel.md` +3/-1 (die eine Löschung ist der beabsichtigte
`last_updated`-Feldwechsel 2026-07-17 → 2026-08-24, kein Inhaltsverlust — per `git diff` Zeile für
Zeile geprüft). Kein `git commit`/`push`/`pull`/`rebase` über den SMB-Mount ausgeführt.
