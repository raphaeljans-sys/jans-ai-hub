---
title: "Wissens-Chef Lauf 59 — eine amtliche Quelle beantwortete drei offene Fragen im Nachbar-KB, und eine Negativaussage hätte ein zweites Destillat ausgelöst"
status: established
last_updated: 2026-09-15
sources:
  - "Delta-Basis 96194d899..facefa10e (Lauf-58-Commit bis nas-selfcommit 15.09.2026 23:00), 116 Commits, 89 Wissensdateien, nativ im SSD-Klon gemessen"
  - "Workflow wf_17842f80-8b7: 7 Melder (model: sonnet), 5 adversariale Verifikatoren (zwei Felder ohne Meldung), Gegenprüfung aller fünf Befunde am Original im Hauptkontext"
  - "Eigene Messungen: Auto-Block rules/jans-dna-facetten.md 33'791 B innen bzw. 33'789 B nach build_dna-Methode, Grenze 34'000 B; raw 260914 Ziff. 2, 3 und 7 selbst gelesen"
---

# Wissens-Chef Lauf 59 — 15.09.2026

## ⚠ Für das Tagesbriefing (hub-chef)

**Kein operativer Befund, kein neuer Entscheid.** Alle fünf Aktionen sind Hub-intern (Datenstand,
Verlinkung, Zuständigkeit). Die offenen Entscheide aus Lauf 58 bleiben unverändert; einzig der
Byte-Riegel hat Luft bekommen (Reserve 211 B statt 16 B).

## Bilanz

| | |
|---|---|
| Meldungen | 5 |
| bestätigt wie gemeldet | 3 |
| bestätigt, anderer Zuschnitt (breiter) | 2 |
| widerlegt | 0 |
| Felder mit Nullbefund | 2 (normen ↔ baurecht, twin ↔ rules/claude-code) + Pflichtpaar Kennwerte ohne Delta |
| geänderte Dateien | 18 (inkl. dieser Bericht), alle additiv; eine benannte Zeilenersetzung (`links:` im Metalldecken-Output) |
| Löschungen | 0 |

Anders als Lauf 58 (0 von 9 in gemeldeter Form) trafen die Melder diesmal. Die Gegenprüfung am
Original fand zweimal **mehr** als gemeldet, nie weniger.

## Big Points

**WC59-1 RPG-2/RPV-Datierungen** (`baurecht` → `planungsgrundlagen`, Pflichtpaar). Buch-Run 143
hat am 14.09. die amtlichen Inkraftsetzungsvermerke von AS 2025 640 und AS 2025 659 in `raw/`
gelegt. Damit sind drei Punkte beantwortet, die `planungsgrundlagen` seit Lauf 55/56 offen führte:
welche RPV-Artikel erst am 01.07.2026 gelten (Art. 25a-25g, 33a, 43, 43b-52a), dass die
Abbruchprämie (Art. 5a RPG) zur zweiten Etappe gehört, und dass Art. 25 Abs. 3/4 RPG (1.7.) und
Abs. 5 (1.1.) das Datum **nicht** teilen. Dazu die Falle: der RPG-Snapshot 20260701 hat die
Änderung vom 01.04.2026 verloren, genau der Snapshot, den der Datenstand-Hinweis empfiehlt.
⚠-Block gesetzt.

**WC59-4 SIA 2017 und SIA 469** (`architektur-fachwissen` ↔ `normen`). Ein Nachtlauf schrieb in
den afw-Artikel und als Cross-KB-Eingang nach `normen`: «SIA 2017 nicht erfasst, Kandidat für
einen künftigen normen-Lauf». Das Destillat ist seit 19.07. established; SIA 469 ebenso. Ohne
Korrektur hätte der nächste normen-Lauf ein zweites Destillat angelegt. Beidseitig berichtigt.
**Übertragbar:** eine stumme Suche nach einer Norm ist zuerst ein Werkzeugbefund.

**WC59-2 PV-Brandschutz RF2 (cr)** (`energie` ↔ `planungsgrundlagen`). energie berichtigte am
15.09. «RF1-Rohr» → «Rohr RF2 (cr)»; `planungsgrundlagen` hatte das seit 06.08. richtig. Kein
Verweis zwischen den Artikeln, in keiner Richtung. Drei Zeiger gesetzt, Inhalt deckungsgleich.
**Übertragbar:** vor einer Berichtigung am Original die Schwester-KB mit derselben Quelle greppen.

**WC59-3 Art. 8 RPG, Absatznummer** (`energie` ↔ `baurecht`). energie übernahm «Abs. 4» ohne den
Vorbehalt der führenden KB (AS «Abs. 4», SR-Konsolidierung «Abs. 3»). ⚠-Zeile und Nachtrag an
E-B143-1.

**WC59-5 Metalldecken Nassraum** (`normen` → `bauprodukte`). Der neue normen-Output ist
überwiegend Produktwissen BKP 283; Übergabe als Kandidat in bauprodukte/QUESTIONS, `links:` gesetzt.

## Nullbefunde mit Aussage

- **normen ↔ baurecht (Pflichtpaar):** keine der 34 Run-85-Korrekturen wird ausserhalb normen in
  alter Fassung fortgeschrieben; SIA 312 (Abflussbeiwerte Gründach) ohne Konsumenten.
- **twin ↔ rules:** Batch 120 und Fidelity 15.09. berühren keine Zeile der Kontaktliste;
  Kandidaten korrekt als offene Fragen geparkt (twin QUESTIONS 260915b #2/#3).
- **Byte-Riegel:** 33'789 B gegen 34'000 B, Reserve **211 B** (Lauf 58: 16 B), selbst nachgemessen.
- **claude-code:** ugrep-Alias-Fund in Rule 260730b und `wege-und-vollmachten` verankert.
- **Pflichtpaar grobkosten ↔ immobilienbewertung ↔ kostenschaetzung:** kein Commit seit Lauf 58.

## Offene Entscheide für Raphael (unverändert aus Lauf 58)

1. **Byte-Riegel (a)/(b)/(c)** (SYN-69/78/80): durch die neue Reserve von 211 B weniger dringend.
2. **Stadelmann** und **Sonderegger** in die Kontaktliste; neu dazu die twin-Kandidaten 260915b #2/#3
   (Christen, Albin-Routine-Opener), dort geparkt.
3. **Klauseltext Anlassgewicht** (twin QUESTIONS 260911 #3).
4. **Twin-Gold 2007-2014**, bei `normen` **N83-1**.

## Eigener Betriebsbefund

Beim Setzen der PV-Zeiger hing ein Befehl an einem `cat` ohne Eingabe; nur der erste Anhang war
geschrieben. Hänger gestoppt, die zwei übrigen Zeiger einzeln am Anker gesetzt und per Zählung
nachgeprüft. Keine Datei doppelt oder halb beschrieben.

## Geänderte Dateien

`wissen/planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` ·
`wissen/planungsgrundlagen/wiki/energie-pv-brandschutz.md` · `wissen/planungsgrundlagen/CHANGELOG.md` ·
`wissen/energie/wiki/eng-revision-2026-solarwind-nationales-interesse.md` ·
`wissen/energie/wiki/QUESTIONS.md` · `wissen/energie/wiki/pv-solar-technologien.md` ·
`wissen/energie/wiki/BAUHERREN-FAQ.md` · `wissen/energie/CHANGELOG.md` ·
`wissen/architektur-fachwissen/wiki/erhaltungswert-bewertung-sia-merkblatt-2017.md` ·
`wissen/architektur-fachwissen/CHANGELOG.md` · `wissen/normen/wiki/QUESTIONS.md` ·
`wissen/normen/outputs/2026-09-15_metalldecken-nassraum-en-13964.md` · `wissen/normen/CHANGELOG.md` ·
`wissen/bauprodukte/wiki/QUESTIONS.md` · `wissen/bauprodukte/CHANGELOG.md` ·
`wissen/koordination/QUERBEZUEGE.md` · `wissen/koordination/CHANGELOG.md` · dieser Bericht.
