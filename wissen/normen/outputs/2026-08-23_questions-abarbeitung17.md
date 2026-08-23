# QUESTIONS-Abarbeitung 17 — alle zehn N58-4-Klasse-2-Lücken geschlossen, Dokument-ID-Korrektur, N61 aufgelöst

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
  `claude`-Prozess mit dem eigenen Lauf-Namen ist der eigene, kein Konkurrent.
- **Kollisionsprüfung:** `ps aux` zu Sessionbeginn und im Verlauf geprüft. Zwei weitere,
  eigenständige `claude -p`-Prozesse liefen parallel: einer mit identischem Lauf-Namen/Prompt an
  derselben KB `wissen/normen` (laut Anleitung als eigener behandelt), einer an
  `wissen/baurecht` (Buch-Runs 93-96). Während der Session löste der baurecht-Lauf einen
  repo-weiten `nas-commit-now`-Commit aus (`233767e3`, 22:13:01 CEST), der alle zu diesem
  Zeitpunkt im Arbeitsbaum stehenden Änderungen mit übernahm — auch die eigenen, bereits
  geschriebenen Dateien dieser Session, obwohl die Commit-Message nur die baurecht-Arbeit nennt.
  Geprüft: `git log -1 -- <datei>` und Grep der erwarteten Textmarker im aktuellen Stand
  bestätigen, dass alle eigenen Dateien im Commit enthalten sind, keine eigene Änderung
  verloren. Ein danach verbleibender, nicht von dieser Session stammender 11-Zeilen-Diff in
  `QUESTIONS.md` (SIA 400/410, Bring-Schuld-Nachtrag eines dritten Laufs) wurde identifiziert,
  geprüft und **nicht angefasst** — additiv, kein Konflikt.
- **Vorlauf gelesen:** `outputs/2026-08-23_questions-abarbeitung16.md` (jüngster
  QUESTIONS-Report). Dessen «Nicht geleistet»-Liste nannte fünf verbleibende Klasse-2-Lücken
  (2000-15, 2002-15, 2004-15, 2007-15, 2010-15, N58-4) und den offenen Cross-KB-Fund N61
  (Primärenergiefaktoren SIA 2031-C1 ↔ `wissen/energie`) als nächste Schritte.

## Durchgeführt

**1. Alle fünf verbleibenden Klasse-2-Lücken destilliert.** Damit sind sämtliche zehn in N58-4
benannten VKF-Merkblätter der 2000er-Reihe abgedeckt. Alle fünf PDFs waren kompakt (7-16 Seiten)
mit sauberem Textlayer und über dieselbe Astro-JSON-Katalog-Methode (bsvonline.ch, Cache
`/tmp/normsweep-vorschriften2015.html`, `fileLeafRef` korrekt aus demselben JSON-Objekt wie
`title` extrahiert) beziehbar — keine echte Bring-Schuld, entgegen der bisherigen Einschätzung
im QUESTIONS-Eintrag.

- **2000-15 Brandschutzanwendung im Einzelfall** (8 S., gültig ab 01.08.2015): objektbezogene
  Zustimmung der Brandschutzbehörde bei Bauprodukten ausserhalb des geprüften
  Anwendungsbereichs oder ohne VKF-/EN-Klassifizierung; vierstufige Nachweisstellen-Tabelle
  (Fachperson VKF/Systemhalter/akkreditierte Stelle/VKF-anerkannte Stelle) je Produktegruppe
  (Ziff. 3.4).
- **2002-15 Zeltbauten für temporäre Veranstaltungen** (12 S., 01.01.2017, Stand 01.08.2022):
  Brandschutzabstände 4-10 m je nach Brennbarkeit, abstandsbefreit bis 150 m²; Ausgangsbreiten-
  Formel 0.6 m/100 Personen ab 200 Personen; RF2(cr) für Zeltblachen; offenes Feuer bei grosser
  Personenbelegung (> 300 P.) untersagt.
- **2004-15 Durchführungen durch brandabschnittbildende Bauteile** (12 S., 01.01.2020): zitiert
  VKF-BSR 15-15 Ziff. 3.5 im Wortlaut (Abschottung mind. EI 30, sieben Ausnahmen); drei
  Konstruktionsvorschläge; Mindestabstände zwischen Ausschnitten für einzelne/gebündelte
  Leitungen.
- **2007-15 Lagerung von Munition** (7 S., 01.02.2022, zusätzlich fedpol-/VBS-geprüft): fünf
  Lagerklassen nach Bruttogewicht (Kleinmengen bis 50 kg bis Grosslager über 5'000 kg),
  Feuerwiderstand skaliert bis REI 90; keine Lithium-Ionen-Batterien für Staplerfahrzeuge im
  Lager.
- **2010-15 Brandschutz in Kompaktlagern** (16 S., 01.02.2023, letzte der zehn Lücken):
  vierstufige Massnahmenkategorie nach Lagerhöhe/Gebäudehöhe/Lage/Fläche; Kategorie 4 verlangt
  zwingend Sauerstoffreduzierungsanlage plus BMA; Kompaktlager nicht in Hochhäusern zulässig;
  Planung entlang SIA-Phasen 3-6.

**2. Dokument-ID-Verwechslung 2003-15/2007-15 gefunden und korrigiert.** Beim Beschaffen von
2007-15 zeigte die direkte Titelblatt-Verifikation, dass die Dokument-ID
`BSPUB-1394520214-3749` tatsächlich zu 2007-15 gehört (7 S., «Lagerung von Munition», eigenes
Titelblatt gegengeprüft), nicht zu 2003-15, wie im bestehenden Destillat
`vkf-merkblatt-2003-15-brandschutzplaene.md` und der zugehörigen REGISTER-Zeile aus dem
vorherigen Lauf (QUESTIONS-Abarbeitung 16) zitiert. Gegenprobe: `BSPUB-1394520214-203` direkt
geladen und am Titelblatt verifiziert — 73 Seiten, exakter Titel und Umfang, den das
2003-15-Destillat beschreibt. Ursache: ein Zitierfehler-Artefakt aus einer zu naiven
JSON-Feld-Extraktion in einem früheren Lauf (ein Nachbarfeld aus dem vorangehenden
Katalog-Objekt wurde mitgenommen). Der **Inhalt** des 2003-15-Destillats war die ganze Zeit
korrekt — nur die Quell-URL im Frontmatter und die REGISTER-Zeile trugen die falsche ID; beide
in diesem Lauf berichtigt (nicht destruktiv, reine Zitat-Korrektur, keine Rückfrage nötig).

**3. N61 (Cross-KB Primärenergiefaktoren `energie` ↔ SIA 2031-C1) geschlossen — Prämisse war
falsch, kein Korrekturbedarf.** Die beiden in der ursprünglichen Frage genannten Fundstellen in
`wissen/energie` (`geak-klassengrenzen-relative-klassierung.md`,
`sia-380-1-2016-aenderungen-gegenueber-2009.md`) enthalten bei direkter Prüfung **keine**
Primärenergiefaktoren. Die tatsächlich einschlägige Stelle ist
`destillate/geak-normierung-berechnungsmethodik.md`, Tab. 35 (S. 61 der GEAK-Normierung
Version 2.1.0, EnDK/GEAK-CECB-CECE) — dort werden **nationale Gewichtungsfaktoren f_CH**
geführt. Zahlenvergleich (SIA 2031-C1 Primärenergiefaktor gegen GEAK-Gewichtungsfaktor):

| Energieträger | SIA 2031-C1 Primärenergiefaktor | GEAK-Gewichtungsfaktor f_CH |
|---|---|---|
| Heizöl EL | 1,24 | 1,0 |
| Erdgas | 1,15 | 1,0 |
| Holz (Stückholz) | 1,06 | 0,5 |
| Elektrizität | 2,97 | 2,0 |

Die Werte weichen für jeden Energieträger deutlich voneinander ab — kein Fehler, sondern zwei
unterschiedliche, beide korrekt zitierte Grössen für unterschiedliche Zwecke: der
SIA-Primärenergiefaktor bildet den nicht erneuerbaren Primärenergieaufwand je Einheit
Endenergie ab (physikalisch/ökobilanziell hergeleitet, Grundlage Energieausweis SIA 2031); der
EnDK-Gewichtungsfaktor ist eine energiepolitische Systemwahl-Gewichtung für die
GEAK-Etiketten-Gesamteffizienz ohne physikalische Herleitung. Cross-KB-Bringschuld erfüllt
(Rule `wissens-bibliothekar`): Abgrenzungs-Fussnote direkt bei Tab. 35 in
`wissen/energie/destillate/geak-normierung-berechnungsmethodik.md` nachgetragen, inkl.
`last_updated` und eigenem CHANGELOG-Eintrag in jener KB.

## Nachgeführt

- Fünf neue Destillate (alle established, Volltext vollständig gelesen):
  `vkf-merkblatt-2000-15-brandschutzanwendung-einzelfall.md`,
  `vkf-merkblatt-2002-15-zeltbauten.md`,
  `vkf-merkblatt-2004-15-durchfuehrungen-brandabschnittsbildende-bauteile.md`,
  `vkf-merkblatt-2007-15-lagerung-munition.md`, `vkf-merkblatt-2010-15-kompaktlager.md`
- `wiki/REGISTER.md`: fünf neue Zeilen plus Korrektur der 2003-15-Zeile (ID -3749 → -203)
- `destillate/INDEX.md`: fünf neue Zeilen
- `destillate/vkf-merkblatt-2003-15-brandschutzplaene.md`: Frontmatter `quelle` korrigiert
- `destillate/sia-2031-korrigenda-c1.md`: Cross-KB-Hinweis auf das Ergebnis nachgeführt
- `wiki/QUESTIONS.md`: N58-4 (Sammelnachtrag, alle zehn Lücken geschlossen) und N61
  (vollständig geschlossen mit Tabellenvergleich) nachgetragen
- `wissen/energie/destillate/geak-normierung-berechnungsmethodik.md`: Abgrenzungs-Fussnote bei
  Tab. 35, `last_updated` aktualisiert
- `wissen/energie/CHANGELOG.md`: eigener Cross-KB-Nachtrag oben eingefügt
- `CHANGELOG.md`: eigener Eintrag oben (vor dem zuletzt erschienenen SIA-Sweep-Eintrag), dieser
  unverändert gelassen

## Kollisionsprüfung und Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft; sämtliche Diffs rein additiv oder
gezielte Ein-Feld-Korrekturen (Frontmatter-URL, REGISTER-Zeile) ohne fremden Textverlust.
Nach dem repo-weiten Zwischencommit `233767e3` eines parallelen Laufs wurden alle eigenen
Dateien per `git log -1 -- <datei>` und Grep der erwarteten Textmarker im HEAD-Stand
gegengeprüft — vollständig und unverändert enthalten. Kein `git`-Schreibbefehl über den
SMB-Mount ausgeführt (Commit lief über den nativen `nas-commit-now`/`nas-selfcommit`-
Mechanismus eines anderen Prozesses).

## Nicht geleistet / weiterhin offen

- Keine der fünf neuen 2000er-Merkblätter gegen eine neuere Fassung im VKF-Publikationsindex
  geprüft (Bring-Schuld N27-1, gilt für alle zehn 2000er-Merkblätter gleichermassen).
- Verweisnormen der neuen Destillate (SN EN 1627, SN EN 16750, EN 1634-1/1364-1/1363-1, SNR
  464022) selbst nicht beschafft — Zitate stammen ausschliesslich aus der Wiedergabe in den
  Merkblättern.
- Unverändert offen: N56-1 (SIA 416/1 S. 6/S. 27), N57-2 (Nachfolgenorm SIA 416/1), N60-1/N60-2
  (Entscheid Raphael), SVGW-Scope, Bezahlschranken-Beschaffungen (Bring-Schuld Raphael),
  NIN-Geschirrspüler-Frage (260731, kostenpflichtiger Normzugang).
