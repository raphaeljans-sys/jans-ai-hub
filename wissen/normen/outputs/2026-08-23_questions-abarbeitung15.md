# QUESTIONS-Abarbeitung 15 — VKF-Merkblatt 2009-15 (Sicherheitsstromversorgung) destilliert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
  `claude`-Prozess mit dem eigenen Lauf-Namen ist der eigene, kein Konkurrent.
- **Kollisionsprüfung:** `ps aux` zu Laufbeginn geprüft — kein weiterer `claude -p`-Lauf auf
  denselben KB-Dateien aktiv (nur der eigene, nicht-interaktive Prozess mit identischem
  Startprompt). Die KB stand zu Sessionbeginn bereits mit einem uncommitteten Stand aus dem
  vorangegangenen SIA-Sweep-Lauf («neunzehnte Fortsetzung», 95 Zeilen `CHANGELOG.md`) — dieser
  wurde unverändert stehen gelassen, der eigene Eintrag oben ergänzt.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf und `outputs/2026-08-23_questions-abarbeitung14.md`
  (jüngster QUESTIONS-Report nach Mtime). Dessen konkrete Empfehlung: vier VKF-Merkblatt-PDFs
  (2003-15, 2008-15, 2009-15, 2011-15) sind bereits lokal unter `/tmp/` bezogen, aber
  ungelesen — direkter nächster Schritt ohne erneute Recherche.

## Durchgeführt

`/tmp/vkf-2009-15.txt` (bereits per `pdftotext -layout` extrahiert, aus dem vorangegangenen
Lauf) vollständig gelesen (21 Seiten, alle Ziffern 1-8 plus Anhang). VKF-Brandschutzmerkblatt
**2009-15de «Sicherheitsstromversorgung»**, Ausgabe 01.01.2023, **Stand 09.12.2024** (spätere
TKB-Änderung zu Ziffer 5.5.2 Lit. b bereits in den vorliegenden konsolidierten Text
eingearbeitet, Titelblatt-Hinweis S. 2).

Die Download-URL wurde nicht neu recherchiert, sondern aus dem in Run 13 bereits erzeugten
Astro-JSON-Cache `/tmp/normsweep-vorschriften2015.html` rekonstruiert: Suche nach dem Titel
«2009-15 Sicherheitsstromversorgung» ergab `fileLeafRef: "BSPUB-1394520214-3917.pdf"`, daraus
`https://services2.vkf.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-3917.pdf/content`
nach dem etablierten Muster.

Kerninhalt (mit Fundstelle, siehe Destillat für die vollständige Liste):
- Drei Schutzsysteme mit unterschiedlicher Ausfalltoleranz — Brandbegrenzung, Personensicherheit,
  Intervention (Ziff. 4.1-4.3, S. 7-8).
- Aufstellungsraum der Stromquelle mindestens EI 30, Abtrennung von der allgemeinen Verteilung
  EI 60, mit Ausnahme bei den Systemen Brandbegrenzung/Intervention (Ziff. 5.2, S. 9-10).
- Leistungsschwelle 70 kW für Stromerzeugungsaggregate: bis 70 kW EI 30 im Brandabschnitt,
  darüber separater Raum EI 60 (Ziff. 5.3.1, S. 10).
- Mindestbetriebsdauer 30 Minuten, Sicherheitsbeleuchtung 60 Minuten nach SN EN 1838
  (Ziff. 5.6/5.6.1, S. 12).
- Abnahme erst mit dokumentiertem, erfolgreich durchgeführtem Blackout-Test (Ziff. 7.2, S. 14).

## Nachgeführt

- `destillate/vkf-merkblatt-2009-15-sicherheitsstromversorgung.md` (neu, `established`):
  Einordnung, Kernziffern mit Fundstelle (Systeme, Standort, Aggregate, Verteilnetz/
  Betriebsdauer, Besonderes, Projekte/Kontrollen, Gültigkeit), JANS-Praxis-Transfer für
  `brandschutz`, `ausschreibung`/`werkvertrag`, `unternehmerkontrolle`/`kostenkontrolle`,
  `auflagebereinigung`.
- `wiki/REGISTER.md`: neue Zeile in der VKF-Tabelle, direkt vor der bestehenden
  2001-15-Solaranlagen-Zeile.
- `destillate/INDEX.md`: neue Zeile, direkt nach `vkf-merkblatt-2006-15-bfs.md`.
- `wiki/QUESTIONS.md`: additiver ✅-Nachtrag an N58-4 Klasse 2 (2000er-Merkblätter),
  Ursprungswortlaut unangetastet.
- `CHANGELOG.md`: eigener Eintrag oben, vorangegangenen SIA-Sweep-Eintrag unverändert gelassen.

## Kollisionsprüfung und Verifikation

`git diff --numstat` nach Abschluss aller Schreibvorgänge:

| Datei | Befund |
|---|---|
| `destillate/vkf-merkblatt-2009-15-sicherheitsstromversorgung.md` | `??` (echte Neuanlage) |
| `wiki/REGISTER.md` | 1/0, rein additiv |
| `destillate/INDEX.md` | 1/0, rein additiv |
| `wiki/QUESTIONS.md` | 14/0, rein additiv (Nachtrag unter N58-4) |
| `CHANGELOG.md` | 154/0 gesamt — davon 105 Zeilen der eigene neue Eintrag, der Rest (49 Zeilen)
war bereits der uncommittete Stand aus dem vorangegangenen SIA-Sweep-Lauf, unverändert |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

## Nicht geleistet / weiterhin offen

- **2003-15 (Brandschutzpläne, 73 S./44 MB), 2008-15 (Baustellen-Brandverhütung, 35 S.) und
  2011-15 (Gebäudebegrünung, 18 S.)** sind als PDF bereits lokal bezogen
  (`/tmp/vkf-2003-15.pdf`, `/tmp/vkf-2008-15.pdf`, `/tmp/vkf-2011-15.pdf`, nur lokaler
  Lauf-Cache, nicht Teil des Repos) — **nächstliegender Ertrag für eine Fortsetzung**, keine
  erneute Recherche nötig, direkt mit `pdftotext -layout` lesen und destillieren. 2003-15 ist
  mit Abstand das aufwändigste (viele Rastergrafiken der Musterpläne/Symbole).
- Anhangbeispiel zu Ziff. 5.2 von 2009-15 (Layoutvarianten Schaltgerätekombination, S. 19-20)
  nicht gesondert ausgewertet — reine Bildinhalte ohne über den Haupttext hinausgehenden
  Fliesstext.
- Kein Abgleich gegen den VKF-Publikationsindex, ob «Stand 09.12.2024» die aktuell gültige
  Fassung von 2009-15 ist (gleiche offene Bring-Schuld N27-1 wie bei den übrigen
  2000er-Merkblättern).
- Unverändert offen: N58-1 (Systemaudit, ausserhalb des Einzelfrage-Formats), N60-1/N60-2
  (Entscheid Raphael), SVGW-Scope (Entscheid Raphael), Bezahlschranken-Beschaffungen
  (Bring-Schuld Raphael), IOTH-Asylsuchende-Reihe (bewusst zurückgestellt laut Run 13).
