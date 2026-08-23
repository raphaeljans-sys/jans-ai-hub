---
title: QUESTIONS-Abarbeitung 26 — kostenloses SIA-FAQ zu SIA 181:2020 destilliert
datum: 2026-08-23
---

# QUESTIONS-Abarbeitung 26

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. CHANGELOG und Report des letzten Laufs zuerst gelesen, dort weitergemacht. Rule
`wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag gesetzt,
nach jedem Schreiben `git diff --numstat` geprüft.

## Kollisionscheck

`ps aux` vor Beginn geprüft: der einzige laufende Prozess mit identischem Auftragstext auf
dieser KB war der eigene (PID 89008, Parent-Kette des eigenen Laufs) — kein Konkurrent. Kein
paralleler Fremd-Lauf auf `wissen/normen/` zum Startzeitpunkt festgestellt.

## Ausgangslage

Diese KB wurde am 23.08.2026 bereits durch 29 SIA-Sweep-Fortsetzungen und 25 vorherige
QUESTIONS-Abarbeitungen bearbeitet (letzter gelesener Lauf: QUESTIONS-Abarbeitung 25 /
Cross-Check-Lauf, 23:46 — schloss den einzigen zuvor identifizierten loop-lösbaren Punkt
ab, SIA 266/267 ↔ DIN 1053/1054, Zeile 3871 jetzt `[x]`). Von 35 verbleibenden offenen
`- [ ]`-Zeilen war der überwiegende Teil bereits mehrfach als Bring-Schuld (kostenpflichtig,
Kaufentscheid Raphael) oder Strukturentscheid (nicht loop-lösbar) kategorisiert.

## Vorgehen

Statt die 35 Zeilen ein weiteres Mal komplett neu zu screenen (das haben die letzten Läufe
bereits erschöpfend getan), gezielt geprüft, ob die seit der 19./24. SIA-Sweep-Fortsetzung
etablierte, nachweislich wirksame Methode — «Produktseite auf shop.sia.ch prüfen: existiert
neben dem kostenpflichtigen Volltext ein kostenloser Zusatz-Download (Korrigenda, Erläuterung,
FAQ)?» — bereits auf **jede** der dokumentierten SIA-Bring-Schulden angewendet wurde. Die
29. Fortsetzung hatte dafür sechs P1-Zeilen nachgeholt (380/1, 384/6, 269/8, 243, 118/430,
384/1 mit Treffer), aber **nicht** die Zeile 3388 «SIA 181:2020 re-destillieren» (Priorität P1
laut `training/norm-inventar.md`, Wissens-Chef Run 17).

## Durchgeführt

**Produktseite geprüft:** `shop.sia.ch/normenwerk/architekt/181_2020_d/D/Product` (WebFetch).
Neben dem Inhaltsverzeichnis ein zweiter kostenloser Download (Preisgruppe 0): **«FAQ»**,
148 KB PDF. Download-Link extrahiert (`shop.sia.ch/4b2e6695-69e5-4c9a-a195-facc4bf0454c/D/
DownloadAnhang`), per WebFetch als Binärdatei geladen, mit `/opt/homebrew/bin/pdftotext -layout`
vollständig extrahiert (10/10 Seiten gelesen, kein Auszug).

**Inhalt:** «Schallschutz im Hochbau — Fragen und Antworten (FAQ) zur Norm SIA 181:2020»,
Deckblatt September 2025, herausgegeben von der Kommission SIA 181. 16 amtliche
Auslegungsfragen, gegliedert nach Norm-Kapiteln:

- Allgemeine FAQ (Stichdatum-Regel, Raumakustik-Übergangsregel bis SIA 181/1 erscheint,
  Schallschutz-Nichtregelung innerhalb von Nutzungseinheiten Ziff. 0.1.2, dB vs. dB(A),
  Frequenzbereich unter 100 Hz)
- Kapitel 0 Geltungsbereich (Ziff. 0.1.1 Umnutzungen, Ziff. 0.3 Abweichungen/Vollzugsbehörde)
- Kapitel 1 Verständigung (Ziff. 1.1.4.5 Dauergeräusch-Häufigkeit)
- Kapitel 2 Grundsätze (Ziff. 2.3 Grossraumbüro-Einstufung, Ziff. 2.2.3 spezielle
  Anforderungen/ISO-TS 19488)
- Ziff. 3.1 Luftschall extern (Ctr-Spektrum-Anpassungswert, Nachbarschaftslärm)
- Ziff. 3.2 Luftschall intern (Laubengänge, Korridore, Liftschachttüren, tieffrequente
  Nachtemissionen)
- Ziff. 3.4 gebäudetechnische Geräusche (Häufigkeitsregel, LH,tot-Gesamtwert)
- Anhang A.3 Messung (Pegelkorrektur K1, Nachhallzeit-Annahmen 0,5/0,8/1,3 s)
- Anhang A.4 Messgeräte (Kalibrierung Empa-Pendelfallhammer)

Vollständig destilliert nach Ziffer mit Fundstelle je Frage in `destillate/
sia-181-2020-faq.md`.

## Praxisrelevantester Fund

Die Raumakustik-Übergangsregel: bis SIA 181/1 vorliegt, empfiehlt die SIA-Kommission selbst
SIA 500:2009 (verweist auf DIN 18041), DIN 18041:2016, SN EN ISO 3382-3:2012 und
VDI 2569:2019. Das bestätigt amtlich, was `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt 13
bereits mit DIN 18041 als Zweitquelle für die Lücke «keine SIA-Raumakustik-Norm» überbrückt
hatte — ergänzt zusätzlich SN EN ISO 3382-3 und VDI 2569, die dort bislang nicht geführt waren.

## Nebenbefund (dokumentiert, nicht aufgelöst)

Das FAQ-Dokument widerspricht sich selbst zur Auflagen-Nummer: Deckblatt und Fusszeile jeder
Seite nennen «2. Auflage», der Einleitungstext auf S. 3 sagt «In dieser 3. Auflage wurden die
Verweisungen…». Keine externe Quelle geprüft, die eine der beiden Zahlen bestätigt — als offene
Diskrepanz im Frontmatter des neuen Destillats vermerkt (Regel: nichts raten).

## Wichtige Abgrenzung — was NICHT erledigt ist

Der eigentliche Auftrag der QUESTIONS-Zeile 3388 (Volltext-Re-Destillat SIA 181:2020,
REGISTER Zeile 109 von 2006 auf 2020 heben) bleibt offen. Die Norm selbst ist weiterhin nicht
im Haus (150 CHF, Bring-Schuld Raphael). Das FAQ ist ein eigenständiges Auslegungsdokument der
SIA-Kommission, kein Ersatz für den Normtext — die im Destillat zitierten Ziffern-Nummern
stammen aus dem FAQ selbst, nicht aus einer Gegenprüfung am Normtext. Das bereits dokumentierte
Ausgaben-Delta (Innenlärm-Anforderung 2006 = +3 dB, 2020 = +4 dB, Wissens-Chef Run 16) wird
durch dieses FAQ nicht berührt — andere Ziffern betroffen. Checkbox in `QUESTIONS.md` bleibt
darum bewusst `[ ]`, nur mit einem Teilfortschritt-Absatz ergänzt.

## Nachgeführt

- Neues Destillat `destillate/sia-181-2020-faq.md` (established, Modell D — Volltext des
  FAQ-PDF vollständig gelesen, keine separate Refuter-Runde bei einem kurzen, tabellarisch
  strukturierten Auslegungsdokument mit geringem Fehlerrisiko).
- `wiki/REGISTER.md`: Zeile SIA 181 um den FAQ-Fund ergänzt (Bring-Schuld-Status unverändert).
- `wiki/QUESTIONS.md`: Zeile 3388 mit Teilfortschritt-Absatz ergänzt, Checkbox unverändert `[ ]`.
- `destillate/INDEX.md`: neue Zeile.

## Offen für den nächsten Lauf

- Die Methode «Korrigenda-/Zusatz-Download prüfen» ist jetzt auf die P1-Bring-Schulden
  380/1, 384/6, 269/8, 243, 118/430, 384/1 (29. Fortsetzung) und 181:2020 (dieser Lauf)
  angewendet. Noch nicht gezielt so geprüft: 385/1:2011, 266/1:2015 (Bring-Schulden, siehe
  Zeilen 4061/4072/4083 `QUESTIONS.md`) — Kandidaten für den nächsten Lauf.
- SIA 181/1:2026 (Raumakustik-Norm selbst) bleibt eigenständige Bring-Schuld, unverändert.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: `wiki/REGISTER.md` 1/1 (genau die eine
SIA-181-Zeile erweitert, keine fremde Zeile berührt), `wiki/QUESTIONS.md` 10/0 (reine Ergänzung
an bestehender Stelle, kein Text gelöscht), `destillate/INDEX.md` 1/0 (eine neue Zeile),
`CHANGELOG.md` als reiner Prepend an Position 1 (neueste zuoberst, Konvention eingehalten),
neues Destillat additiv (neue Datei). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt;
Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
