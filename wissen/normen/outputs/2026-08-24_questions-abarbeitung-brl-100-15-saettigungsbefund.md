# QUESTIONS-Abarbeitung 24.08.2026 (neunter Lauf) — BRL 100-15 geschlossen, Sättigungsbefund

## Auftrag

Fortsetzung der Daueraufgabe: offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des
letzten Laufs derselben Lineage (S42-3/N43-5, `2026-08-24_questions-abarbeitung-s42-3-n43-5-
m365-connector.md`) zuerst gelesen.

## NAS-Hinweis

`/Volumes/daten` war beim Sessionstart nicht gemountet. `wissen/normen` ist versionierter
Repo-Inhalt (kein NAS-Symlink) — keine Blockade für diese Datei.

## Kollisionscheck

`ps aux | grep "claude -p"`: eigener Prozess PID 67644 (identischer Auftragstext) ist Host
dieser Session. PID 65994 (`wissen/baurecht`, andere KB) und PID 67853 (SIA-Sweep derselben
KB, Register/Destillate/Inventar, nicht `wiki/QUESTIONS.md`) liefen parallel, ohne
Dateiüberschneidung. Der SIA-Sweep-Prozess hat während dieses Laufs eigenständig committet
(`de5fa0736`), bevor dieser Lauf zu schreiben begann.

## Vorgehen

Die S42/N43-Lineage war laut letztem Report bereits vollständig abgearbeitet (Restpunkte dort
als Bring-Schuld/Entscheid-Raphael/externe Anfrage klassifiziert). Die gesamte Datei wurde
daher nach verbleibenden `- [ ]`-Checkboxen durchsucht (37 Treffer) und stichprobenartig gegen
`wiki/REGISTER.md`, `destillate/INDEX.md` und `training/norm-inventar.md` gehalten.

## Ergebnis

**Geschlossen:** Teilpunkt (5) des Verify-Abschluss-Eintrags (Zeile ~4490, «BRL 100-15
Brandmauern: Gegenprüfung des REGISTERs auf eine allfällig spätere Ausgabe»), seit 13.07.2026
offen. Antwort lag bereits vor (SIA-Sweep Run 60, 23.08.2026), war aber nie mit der
ursprünglichen Frage verknüpft: `wiki/REGISTER.md` führt BSE 100-15 mit geltender Fassung
**01.01.2017**, Delta-Destillat `destillate/vkf-brl-100-15-fassung-2017-delta.md` (Quelle
VKG-Publikationsportal Dokument BSPUB-1394520214-141, Fassung 01.01.2017, gegen Hausbestand
`PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015/100-15_Brandmauern.pdf`
Fassung 01.01.2015). Acht amtlich gelistete Fundstellen geprüft, keine materiell. Delta-Status
bleibt bewusst `speculative` — nicht angehoben, reine Bookkeeping-Schliessung.

**Sättigungsbefund:** stichprobenartige Prüfung der übrigen 36 offenen Checkboxen (u. a.
N-R40-7, N-R40-3, N-R21-2, N43-1 bis N43-6, SIA 181:2020, SN 640 052/641 400, SIA 118:2013,
BRING-SCHULD-Einträge SIA 380/1, 385/1, 266/1, 410-Nachfolgewerke) zeigt durchgehend: entweder
(a) bereits mehrfach unabhängig als Bring-Schuld/Kaufentscheid/Entscheid-Raphael/externe
Anfrage klassifiziert und erfolglos frei zu beschaffen versucht, oder (b) bereits an anderer
Stelle derselben Datei inhaltlich beantwortet, nur die ursprüngliche Checkbox nie auf `[x]`
gesetzt. Kein neuer, mit Primärquellenlektüre lösbarer offener Punkt gefunden.

## Eingearbeitet

- `wiki/QUESTIONS.md`: additiver Nachtrag unter Teilpunkt (5), +21/-0 Zeilen.
- `CHANGELOG.md`: dieser Lauf vorangestellt, +60/-0 Zeilen.
- Kein Destillat geändert (keine neue Sachaussage, nur Verweis auf bereits verifizierte
  Inhalte).

## Diff-Gegenprobe (`git diff --numstat`)

`wissen/normen/CHANGELOG.md` (+60/-0), `wissen/normen/wiki/QUESTIONS.md` (+21/-0) — beide rein
additiv, keine bestehende Aussage gelöscht oder überschrieben.

## Empfehlung für künftige Läufe

Statt weiterer Einzelfragen-Suche in dieser Lineage einen gezielten Bookkeeping-Sweep über die
verbleibenden ~35 offenen Checkboxen fahren: je Punkt prüfen, ob REGISTER/INDEX/Inventar die
Antwort bereits enthält (wie beim heutigen BRL-100-15-Fund), sonst als Bring-Schuld belassen.
Deutlich günstiger als erneute Primärquellenlektüre und schliesst echte Bookkeeping-Lücken.
