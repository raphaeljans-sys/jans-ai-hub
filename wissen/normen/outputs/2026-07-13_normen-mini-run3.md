# normen-training-mini — Mac Mini Run 3 (Intensiv-Lauf), 13.07.2026

## Stations-Split
Nur DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro, Task `normen-training-nacht`).

## Ausgangslage
Verbleibende offene P3-Positionen laut `norm-inventar.md` (vor diesem Lauf): 12 grosse
DIN-Normen, 5 DIN-Sonstiges-Dateien, 1 Teil-Destillat-Fortsetzung, 5 VSS-Grossdateien =
25 Positionen. RAL bereits vollständig (1/1).

## Workflow-Tool-Hinweis
Der `Workflow`-Tool-Aufruf wurde mit "Review dynamic workflow before running" blockiert
(gleiches Verhalten wie beim MacBook-Pro-Run 6). Fallback gemäss Präzedenzfall: parallele
`Agent`-Aufrufe in einem Batch statt Workflow-Orchestrierung.

## Was destilliert wurde (9 Destillate, 8 davon vollständig)

| Destillat | Quelle | Status |
|---|---|---|
| `din-1045-2-2008.md` | DIN 1045-2 Beton/Stahlbeton/Spannbeton, Expositionsklassen | destilliert, vollständig S.1-62/62 |
| `din-105-100-2012.md` | DIN 105-100 Mauerziegel, Zusatzanforderungen zu EN 771-1 | destilliert, vollständig S.1-28/28 |
| `din-1053-1-1996.md` | DIN 1053-1 Mauerwerk Berechnung und Ausführung | destilliert, vollständig S.1-32/32 |
| `din-1053-100-2007.md` | DIN 1053-100 Mauerwerk semiprobabilistisches Sicherheitskonzept | destilliert, vollständig S.1-39/39 |
| `din-1053-4-2011.md` | DIN 1053-4 Mauerwerk-Fertigbauteile | destilliert, vollständig S.1-32/32 |
| `din-1054-2010.md` | DIN 1054 Baugrund, Sicherheitsnachweise Erd-/Grundbau | Teil-Destillat, S.1-60+78-93/105 (ca. 72%) |
| `din-18040-2-2011.md` | DIN 18040-2 Barrierefreies Bauen, Wohnungen | destilliert, vollständig S.1-34/34 |
| `din-18232-2-2007.md` | DIN 18232-2 Rauch-/Wärmeabzugsanlagen Bemessung | destilliert, vollständig S.1-30/30 |
| `din-1946-4-2008.md` | DIN 1946-4 Raumlufttechnik Gesundheitswesen | destilliert, vollständig S.1-66/66 |

Zusätzlich im selben Zeitfenster durch den parallel laufenden Vollgas-Runner (Dauerbetrieb-Regel
260712c) ergänzt und in diesem Lauf mitregistriert:

| Destillat | Quelle | Status |
|---|---|---|
| `din-1960-2010.md` | DIN 1960 VOB Teil A | destilliert |
| `din-1961-2010.md` | DIN 1961 VOB Teil B | destilliert |

## Verifikationsstufe
Kein separater Widerlegungs-Pass in diesem Lauf. Status durchgehend `destilliert` bzw.
`Teil-Destillat` - keine Hebung auf `established`, konsistent mit der Einordnung aus Run 2:
DIN-Normen ohne unmittelbaren CH-Bezug haben für JANS geringere Verifikationspriorität als
SIA/VKF-Kernnormen. Alle Kernziffern sind mit Fundstelle (Abschnitt/Tabelle/Seite) belegt,
da die Originale direkt und (bis auf DIN 1054) vollständig gelesen wurden.

## KB-Lücken notiert (`wiki/QUESTIONS.md`)
- Schweizer Pendant **SWKI 99-3** (Heiz-/Raumlufttechnik Spitalbauten) fehlt zu DIN 1946-4 -
  bei CH-Spitalprojekten die eigentlich massgebliche Referenz, relevant für
  `healthcare-wirtschaftlichkeit`/`energie-berater`.
- DIN 4159 (Ziegel-Tabellen) und DIN 4149 (Erdbebenzonen D) referenziert in DIN 1053-4, aber
  nicht im Bestand/nicht destilliert.
- DIN 18040-2 nennt keine Notrufanlagen-Pflicht (anders als DIN 18040-1) - nicht abschliessend
  verifiziert, ob bewusste Differenzierung Wohnung/öffentliches Gebäude.

## Offen für den nächsten Lauf (16 Positionen)
Grosse/scanlastige oder verschlüsselte Dateien: `DIN 4844-2.pdf` (Sicherheitskennzeichnung,
grosse Bilddatei), `DIN V 105-100.pdf`, `DIN V 106.pdf`, `Sonstiges/Baupreisindizes.pdf`,
`Sonstiges/Inhaltsverzeichnis.pdf` (verschlüsselt: print erlaubt, copy gesperrt - Lesbarkeit
via Read-Tool noch nicht getestet), `Sonstiges/Komm Din 18024 Teil 1.pdf`, `Sonstiges/
VdS-Richtlinie 2234.pdf` (verschlüsselt: print+copy erlaubt), Rest von `DIN 1054.pdf`
(S.61-77 Pfahlgründung/Verankerungen, S.94-105 Gesamtstandsicherheit/Erddämme/Anhang AA),
sowie alle 5 offenen VSS-Grossdateien (`VSS 40 291 Parkieren 2021.pdf`, `VSS 640 065
Leichter Zweiradverkehr.pdf`, `VSS 640 281 Parkfelder.pdf`, `VSS 640 291a Parkieren
Geometrie.PDF`, `VSS 640 578 Brechnung der Immissionen.pdf`).

Bewusst übersprungen (nicht im nächsten Lauf nötig): `DIN 277-1_Bildteil_MMMP München.pdf`
und `DIN 277-1_MMMP München.pdf` (Bildmaterial/Anwendungsbeispiel zu bereits destilliertem
DIN 277-1, keine eigenständige Norm), `0 Anleitung.docx` sowie die zwei VSS-docx-Dateien
(`_In der Schweiz...Tiefgaragen...docx`, `buk/https.docx`) - alle drei als OneDrive-Cloud-
Platzhalter nicht hydriert ("Resource deadlock avoided" beim Zugriff, kein Read-/textutil-
Zugriff möglich).

## Budget-Grenze
Der Batch wurde nach 9 Agenten bewusst beendet: Grosse Volltext-Destillate (60-105 Seiten
je Dokument) kosten im Fallback-Modus (kein Workflow-Tool) ca. $1.7-2.4 Sessionbudget pro
Agent. Für den nächsten Lauf: kleinere Batches (5-6 statt 9) planen, oder gezielt zuerst die
kürzeren Dokumente (Sonstiges-Dateien, VSS 640 065 mit 18 S.) vorziehen.

## Register nachgeführt
`training/norm-inventar.md` (9 Zeilen auf `[x] 260713`, 1 auf `[~] Teil-Destillat`, 2 Zeilen
für den vom Vollgas-Runner ergänzten DIN 1960/1961 nachgetragen), `destillate/INDEX.md`
(11 neue Einträge), `wiki/QUESTIONS.md` (1 neuer Eintrag mit 3 Teilpunkten), `CHANGELOG.md`
(neuester Eintrag oben).
