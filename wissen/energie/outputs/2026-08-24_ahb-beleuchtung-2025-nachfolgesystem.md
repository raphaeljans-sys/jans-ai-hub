# Aktuelles AHB-Dokumentensystem Gebäudetechnik/Beleuchtung 2025 gefunden — E-R143-2 aufgelöst

Datum: 2026-08-24 · Lauf: interaktive Session, Anschluss an `energie-training`-Fortsetzungen desselben Tages

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Anschluss an den CHANGELOG-Stand des Tages (zuletzt: E-R132-4
präzisiert, «Für den nächsten Lauf» verwies auf den A-BLIND-Bestand von 21 der 37/40 Kandidaten
im 18-29-Backlink-Bereich).

## Vorgehen

1. Backlink-Zählung selbst neu gezogen (`grep -oh '\[\[...\]\]' wiki/*.md destillate/*.md | sort |
   uniq -c`), 18-29-Bereich reproduziert (~40 Treffer). Kandidaten nach Frontmatter-`status`
   gefiltert (emerging/speculative mit explizitem offenem Punkt bevorzugt, ecoBKP-Familie
   ausgeschlossen — dort blockiert der Konsolidierungsentscheid E-R230-2 weitere Arbeit).
2. `[[ahb-zuerich-gt-rl8-beleuchtung]]` (24 Backlinks, emerging) ausgewählt. Wichtig: ein früherer
   Lauf desselben Tages hatte diesen Kandidaten bereits geprüft und verworfen («Alterskorpus-
   Problem, keine A-BLIND-Frage») — diese Prüfung fragte aber nur, ob die im Dokument zitierten
   Normen korrekt als abgelöst markiert sind, nicht ob die AHB-Richtlinie selbst inzwischen ersetzt
   wurde. Genau das war der ergiebigere offene Punkt.
3. WebSearch/WebFetch: aktuelle EN-12464-1-Fassung geprüft (2021 löste 2011 ab, Sekundärquellen).
   Über eine Kette von Websuchen (stadt-zuerich.ch-Volltextsuche → Standards-Seite → PDF-Direktfund)
   zwei aktuelle AHB-Primärquellen gefunden.
4. Beide PDFs geladen (curl, Content-Type/Byte-Grösse vor Auswertung geprüft) und vollständig mit
   PyPDF2 ausgelesen.

## Ergebnis

**Quelle 1 — «Richtlinie Gebäudetechnik» (Ergänzung zur KBOB-Empfehlung Gebäudetechnik), Dok.-Nr.
229, Zürich August 2025, 17 Seiten, vollständig gelesen.** AHB-Bauvorhaben wenden heute primär die
**KBOB-Empfehlung Gebäudetechnik** (Stand 01.2020) «in vollem Umfang» an; dieses AHB-Dokument
beschränkt sich auf «wenige Ergänzungen und Präzisierungen» je Fachgebiet — bei Widerspruch geht
die AHB-Richtlinie vor. Acht Teile: Konzeptionelles, Elektro, **Beleuchtung**, Sicherheit,
Gebäudeautomation, Heizung/Kälte, Lüftung, Sanitär. Neues Destillat:
`destillate/ahb-richtlinie-gebaeudetechnik-229-2025.md`.

Kernbefund Teil 3 (Beleuchtung): **DALI/DALI-2 ist heute der verbindliche Bus-Standard** für
regulierbare LED-Betriebsgeräte, mit fixen Nachlaufzeiten (5 Min. halbautomatisch — Büro/
Sitzungszimmer/Schulzimmer, 2 Min. automatisch — Verkehrsflächen/Toiletten/Garderoben), optionaler
«Schwarmtechnologie» für Korridore/Garagengeschosse. Keine MINERGIE-¾-Skala mehr (folgerichtig,
SIA 380/4 seit 2019 archiviert).

**Struktureller Nebenbefund, wichtig für die ganze AHB-Dokumentenfamilie dieser KB:** Die
Dokumentenliste (S. 5-6, rund 40 aktuell gültige Richtlinien/Standards/Merkblätter mit eigener
Dok.-Nr. und Stand) führt die in dieser KB unter `ahb-zuerich-gt-rl1-planungsgrundlagen` bis
`ahb-zuerich-gt-rl9-gebaeudeautomation` geführte 9-teilige Richtlinienfamilie (Version 2.1, Juli
2008) **namentlich nicht mehr**. Das ist ein Indiz für eine strukturelle Ablösung der alten
Nummerierung, aber **nicht abschliessend geprüft** — dafür müsste die vollständige Liste unter
www.stadt-zuerich.ch/egt Fachgebiet für Fachgebiet durchgesehen werden; WebFetch lieferte dort
bisher nur Navigationsstruktur (JS-Single-Page-App), keine Dokumentenliste — dieselbe Werkzeuggrenze
wie bei `kantonsrat.zh.ch` (siehe `zh-energiegesetz-revision-solarpflicht-2026`).

**Quelle 2 — Merkblatt Übersichtstabelle Beleuchtungsanforderungen, M-System-Nr. 376, August 2025,
2 Seiten, vollständig gelesen.** Vollständige, datierte Lux-Tabelle nach **SIA 387/4** und
**EN 12464-1** für rund 35 Raumnutzungen in 8 Kategorien, mit Evm/k0/E0/UGR/Uo-Spalten plus
«spezielle Bereiche». Schliesst den seit Run 122 (03.08.2026) offenen Punkt «keine konkreten
Lux-Werte im Dokument» ab. Für JANS als Healthcare-Büro direkt relevant: **Bettenzimmer 100 lx
(E0 = 300 lx, k0 = 3 — höchster Korrekturfaktor der Tabelle), Behandlungsraum 500 lx allgemein/
750 lx Referenzwert/1'000 lx bei Untersuchung, Stationszimmer 500 lx, 24-h-Verkehrsflächen 200 lx
tags/50 lx reduzierter Nachtbetrieb.** Neues Destillat:
`destillate/ahb-merkblatt-376-uebersichtstabelle-beleuchtungsanforderungen-2025.md`.

**E-R143-2 (Selbstwiderspruch Turnhalle Wettkampfsport 500 vs. 750 lx in der 2007er-Tabelle)
plausibel aufgelöst.** Die 2025er-Tabelle zeigt für dieselbe Raumnutzung exakt dieselben zwei
Zahlen — aber sauber in drei getrennten Spalten: Evm = 300 lx (allgemein), **E0 = 500 lx**
(rechnerischer Referenzwert = Evm × k0 = 300 × 1,67, keine eigene Wettkampf-Aussage),
**Wettkampfsport (spezielle Bereiche) = 750 lx**. Das macht plausibel, dass die undatierte
2007er-Tabelle (ohne eigene k0/E0-Spalten) den E0-Wert versehentlich in die Spalte «spezielle
Bereiche» gesetzt hatte, statt ihn als Referenzwert auszuweisen — **kein am Original bewiesener
Redaktionsfehler** (die 2007er-PDF wurde in diesem Lauf nicht erneut eingesehen), aber eine
strukturelle Erklärung ohne echten Widerspruch. Für aktuelle Bauherren-Antworten ist ab sofort die
2025er-Tabelle massgebend.

## Eingearbeitet

- `destillate/ahb-richtlinie-gebaeudetechnik-229-2025.md` (neu) — vollständiges Destillat, 8 Teile.
- `destillate/ahb-merkblatt-376-uebersichtstabelle-beleuchtungsanforderungen-2025.md` (neu) —
  vollständige Lux-Tabelle.
- `destillate/ahb-zuerich-gt-rl8-beleuchtung.md` — zwei Offene Punkte geschlossen, neuer Abschnitt
  «Nachfolge-Dokumentensystem gefunden», EN-12464-1-Fassungsnachtrag, Backlinks ergänzt.
- `destillate/ahb-zuerich-uebersichtstabelle-beleuchtung-en12464.md` — E-R143-2-Auflösung
  nachgetragen, als historischer Datenpunkt markiert.
- `destillate/INDEX.md` — zwei neue Zeilen, zwei bestehende Zeilen präzisiert.
- `wiki/gebaeudetechnik-pflichtenheft.md` — Beleuchtung-Zeile, Lichtsteuerung-Abschnitt und
  Frontmatter (`sources`, `last_updated`) aktualisiert; Warnhinweis zur möglichen RL1-RL9-Ablösung
  gesetzt (betrifft den ganzen Artikel, nicht nur Beleuchtung).
- `wiki/BAUHERREN-FAQ.md` — zwei Beleuchtungs-Antworten mit Nachtrag versehen.
- `wiki/energienachweis-zh.md` — Verweis auf die neue Lux-Tabelle ergänzt.
- `wiki/INDEX.md` — Nachtrag am Run-122-Block (Original nicht verändert).
- `wiki/QUESTIONS.md` — neuer datierter Abschnitt, E-R143-2 geschlossen.
- `CHANGELOG.md` — Eintrag oben angefügt.

`git diff --numstat` **nativ per ssh** (`raphaeljans@192.168.1.10`) nach allen Schreibvorgängen
geprüft: zwei neue Dateien (additiv), alle bestehenden Dateien additiv/präzisierend verändert,
keine Löschung von Bestand.

## Für den nächsten Lauf

Neuer, konkreter Folgepunkt: **ob die alte RL1-RL9-Familie (2008) formell aufgehoben ist**, bleibt
ungeprüft — bräuchte einen methodisch anderen Zugriffsversuch auf die vollständige Dokumentenliste
unter www.stadt-zuerich.ch/egt (WebFetch liefert dort bisher nur Navigationsstruktur). Die in
Richtlinie 229 referenzierten AHB-Fachmerkblätter (386 Storensteuerung, 394
Wärmepumpen-Messkonzept, 389 Lithium-Ionen-Lagerung u. a.) sind noch nicht einzeln destilliert.
E-R230-2 (Konsolidierungsentscheid ecoBKP) bleibt Raphael vorzulegen. E-R134-3 (Lambda-Anomalie,
P3) bleibt bewusst offen. Der A-BLIND-Bestand ausserhalb der jetzt geprüften Beleuchtungsfamilie
umfasst noch rund 20 von ~40 Kandidaten im 18-29-Backlink-Bereich.
