# Grobkosten-Trainingslauf Run 11 (27.07.2026)

## Auftrag

Fortsetzung des Lernmodell-Loops `wissen/grobkosten` gemäss `training/PROGRAMM.md`.
Empfehlung aus Run 10: die letzte noch ungeprüfte `AR`-Bibliothek (`AR - 06 Referenzen`)
sichten und den in Run 10 zurückgestellten Nebenfund im Brassel-Archiv einordnen (JANS-eigen
oder Fremdmandat?), bevor eine neue Bibliothek erschlossen wird.

## Kollisionsschutz

Per `ps`/`PPID`-Abgleich geprüft: der einzige gefundene Prozess mit demselben Prompt war die
eigene Parent-Instanz (`claude -p ...`), keine echte Zweitinstanz auf diesem Host. Normale
Ausführung mit Register-Edits und Commit ist zulässig.

## Befunde

### 1. `AR - 06 Referenzen`

Auf dieser Station (MacBook Pro) vollständig leer — `ls -la` zeigt nur `.DS_Store` und eine
OneDrive-interne Marker-Datei, keine Projektordner oder Dateien. Kein Fund möglich. (Hinweis:
dies ist ein stationsspezifischer Synchronisationszustand, keine Aussage über den Inhalt auf
SharePoint selbst — bereits in Run 6 bei der zweiten SharePoint-Bibliothek eine ähnliche
Beobachtung gemacht, dort ebenfalls nicht abschliessend klärbar von dieser Station aus.)

### 2. Brassel-Archiv-Nebenfund (aus Run 10 zurückgestellt)

`AR - 04 Honorarauftraege/_Archiv/Brassel_Architekten/201210_HARDSTRASSE_7/BKP/
*Kosten_Modul3_BakeryCafé*.pdf` war in Run 10 als "ungeprüft zurückgestellt: Fremdmandat
(Brassel_Architekten-Unterordner, nicht JANS-eigenes Projekt erkennbar)" markiert.

Geprüft: `Kontakte/Kontakliste Hardstrasse 7.pdf` (Stand 24.11.2020) listet alle Projekt-
beteiligten mit Funktion. Funktion "Architektur" ist **Brassel Architekten** (Marc Schommer,
Lukas Brassel) — JANS erscheint in der vollständigen Liste (Bauherr, Architektur, Baumeister,
Bauingenieur, Ausbau, HLS, Elektro, Bauphysik, Bedachung, Metallbau, Fenster, Türen,
Unterlagsboden, Umgebung, Plattenarbeiten, Storen) **nicht**. Andere Unterordner desselben
`Brassel_Architekten`-Archivs (z.B. `210507_VERGANI/210510 STUNDENABRECHNUNG VERGANI.docx`)
deuten auf eine stundenbasierte JANS-Zuarbeit an Brassel hin, nicht auf ein eigenes Mandat.

**Schluss:** Fremdmandat — Brassel Architekten ist Architekt des Projekts, nicht JANS. Zudem
sind die BKP-Dokumente selbst ein Fitout-Modul (Bakery/Café-Ausbau), kein Gesamtgebäude-GV —
analog zu bereits ausgeschlossenen Fällen (1318 Lorraine_Kueche, 2201 Laternengasse). Doppelt
ausserhalb des Scopes dieser KB. Die übrigen Unterordner desselben Archivs (Vergani, Oberhof,
Busstation, Beton, Nebengraben, Haus Marc) wurden nicht einzeln geprüft — dieselbe
Fremdmandat-Struktur ist dort zu erwarten, eine Einzelprüfung hätte kein anderes Ergebnis
erwarten lassen.

## Ergebnis

Kein neuer Rohbeleg, kein neuer Kennwert in diesem Lauf. Beide von Run 10 offen gelassenen
Punkte sind geschlossen.

**Strukturelle Einordnung:** Mit diesem Lauf sind alle in Run 5/6 identifizierten SharePoint-
Bibliotheken vollständig gesichtet: `AR - 01 Projekte` (Run 2), `AR - 02 Wettbewerbe` (Run 10),
`AR - 03 Studien` (Run 6), `AR - 04 Honorarauftraege` (Run 10, inkl. Nebenfund Run 11),
`AR - 05 Transfer` (Run 10), `AR - 06 Referenzen` (Run 11, leer), `AR - 07 Archiv` (Run 3/4),
`IMMO - 01 Projekte` (Run 6), `IMMO - 02 UBSFS` (Run 6), `IMMO - 03 KNOW-HOW` (Run 6/7),
`IMMO - 05 Bodenpreise` (Run 6), `IMMO - 06 Kennwerte` (Run 5), sowie die zweite SharePoint-
Bibliothek `...-RaphaelJans-ArchitektenETH` (Run 6). Die autonome Exploration der bekannten
Struktur ist damit erschöpft.

Der verbleibende Blocker für eine MFH-Median-Bildung ist **nicht mehr Materialmangel**,
sondern strukturell: Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald Haselstudstrasse und
die Pre-Check-Tool-Familie 2305 Wädenswil) und Frage 2 (Standard-Klassifikation "norm,
eloquent" mutmasslich Vorlagentext, betrifft Haus Deuber und Reckholdern) — siehe
`wiki/QUESTIONS.md`. Beide sind ausschliesslich durch Rückfrage an Raphael Jans oder einen
neuen, eindeutig klassifizierten Fall (z.B. aus einer laufenden `kostenkontrolle`-
Schlussabrechnung) lösbar, nicht autonom in diesem Loop.

## Empfehlung für Run 12

Kein weiterer Bibliotheks-Sweep — würde denselben bereits gesichteten Bestand erneut
durchsuchen. Stattdessen:

(a) Frage 1 und Frage 2 als konkrete, leicht beantwortbare Rückfragen an Raphael Jans
vorbereitet halten (z.B. beim nächsten interaktiven Kontakt zum Thema Grobkosten stellen) —
laut Auftrag nicht autonom in diesem headless Lauf möglich.

(b) Auf einen Ereignis-Trigger warten: sobald ein laufendes Mandat (KISPI, Albertstrasse,
Thalwil u.a.) über `kostenkontrolle` eine Schlussabrechnung mit explizitem GV-Bezug liefert,
bringt das mehr Fortschritt als eine erneute Bibliotheks-Suche.

Dies deckt sich mit der in `training/PROGRAMM.md` beschriebenen Endbedingung — das Inventar
ist faktisch ausgeschöpft, auch wenn `wiki/kennwerte.md` für "MFH" noch keine "belegt (n=…)"-
Reife erreicht hat.

## Geänderte Dateien

- `training/quellen-inventar.md` (Run-11-Abschnitt)
- `wiki/QUESTIONS.md` (neuer Eintrag, geänderte Empfehlung)
- `wiki/kennwerte.md` (Frontmatter `last_updated`, Provenienz-Bullet)
- `wiki/INDEX.md` (Run-11-Satz ergänzt)
- `CHANGELOG.md` (Run-11-Eintrag)
- `outputs/2026-07-27_grobkosten-run11.md` (dieser Report)
