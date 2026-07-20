---
titel: "Normen-Training Mini-Run 33 (Mac Mini) — Uebergabe-Punkte aus Run 15 abgearbeitet"
datum: 2026-07-20
station: "Mac Mini"
familien: "DIN, VSS, RAL (Stations-Split; SIA/VKF nicht angefasst)"
---

# Normen-Training Mini-Run 33 — Mac Mini (DIN/VSS/RAL)

## Auftrag

Die KB `normen` fuehrt in `wiki/QUESTIONS.md` unter "Uebergabe an den Mac Mini (DIN/VSS/RAL)"
zwei von der MacBook-Pro-Seite (Run 15, 17.07.2026) explizit an diese Station adressierte,
noch nicht bearbeitete Punkte. Der Scheduled Task `normen-training-mini` selbst ist seit
17.07. stillgelegt (Inventar dreimal komplett bestaetigt) — die beiden Uebergabe-Punkte sind
davon unberuehrt und wurden in diesem Lauf bearbeitet, ohne den Task zu reaktivieren.

## 1. Zaehl-Differenz Inventar ↔ Live-Ablage — AUFGELOEST, kein Fehlbestand

Run 15 hatte am 17.07. gemeldet: DIN live 71 vs. Inventar 72, VSS live 14 vs. Inventar 17.
Frischer, rekursiver Datei-fuer-Datei-Abgleich heute (20.07., `find -type f` gegen die live
gemountete SharePoint-Ablage, alle Unterordner inkl. `DIN-Norm/`, `Sonstiges/`, `buk/`,
`chatgpt/`, `xalt/`):

- **DIN_Norm: 72 Dateien live** (2 Root-Dateien `0 Anleitung.docx` + `FileOpenInstaller.dmg`,
  54 in `DIN-Norm/`, 16 in `Sonstiges/`) = **exakt 72**, deckungsgleich mit `norm-inventar.md`.
- **VSS_Norm: 17 Dateien live** (14 Root-PDF/Bild/docx, 2 in `buk/`, 1 in `xalt/`) = **exakt 17**.
  Die Inventarliste fuehrt 18 Tabellenzeilen im VSS-Abschnitt, davon eine virtuelle Zeile
  (`SN 640 105a`, Anhang S.25-37 **innerhalb** von `VSS 640 291a.PDF`, keine eigene Datei) —
  netto ebenfalls 17 reale Dateien. Kein Widerspruch.
- **RAL_Norm: 1 Datei live** = Inventar 1. **Lignum: 0 Dateien live** = Inventar 0.

**Befund:** Die von Run 15 gemeldete Differenz reproduziert sich heute nicht. Ursache
vermutlich ein transienter OneDrive-Sync-/Mount-Zustand auf der Gegenstation am 17.07.
(z.B. kurzzeitig nicht materialisierte Platzhalter-Dateien), nicht ein echter Bestandsfehler.
**Kein Handlungsbedarf** — die "Inventar komplett"-Aussage aus Mini-Run 29-32 bleibt bestaetigt.

## 2. Auszug-Plausibilisierung DIN/VSS — TEILBEFUND, neuer Fund: Datei nicht lesbar

Getestet: `pdfinfo` auf den beiden von Run 15 als auffaellig kurz genannten Dateien plus
Vergleichsstichprobe (`DIN 105-100.pdf`, `DIN 1946-6.pdf`, `DIN 4102-1.pdf`).

- **`DIN EN 12207.pdf`:** liest sich normal, `pdfinfo` bestaetigt **6 Seiten** (Adobe-Acrobat-
  Bildscan 2012). Deckt sich mit dem bestehenden Destillat-Status; kein Hinweis auf Kuerzung
  ueber die reine Seitenzahl hinaus pruefbar (kein Original-Umfangsvergleich ohne externe Quelle
  verfuegbar).
- **`DIN 277-1.pdf`: auf dieser Station AKTUELL NICHT LESBAR.** `pdfinfo` meldet "May not be a
  PDF file / Couldn't find trailer dictionary / Couldn't read xref table"; ein direkter
  Byte-Zugriff (`cat`/`tail`/Read-Tool) schlaegt reproduzierbar mit `EDEADLK` ("Resource
  deadlock avoided") fehl. Alle vier Vergleichsdateien im selben Ordner (`DIN 105-100.pdf`,
  `DIN EN 12207.pdf`, `DIN 1946-6.pdf`, `DIN 4102-1.pdf`) lesen sich einwandfrei mit korrekten
  Seitenzahlen — der Fehler ist **spezifisch auf diese eine Datei begrenzt**, kein genereller
  Mount-/DRM-Effekt (der Ordner enthaelt laut `0 Anleitung.docx` FileOpen-DRM-Hinweise, aber
  die anderen DRM-Dateien im selben Ordner sind lesbar).
- Datei-Metadaten: 577'967 Bytes, macOS-Aenderungsdatum 18.03.2025 (unveraendert seit Ablage,
  keine kuerzliche Fremdaenderung). Das bestehende Destillat `destillate/din-277-1-2005.md`
  dokumentiert eine erfolgreiche Vollstaendigkeits-Verifikation ("gelesen: S. 1-6, vollstaendig,
  6 Seiten Gesamtumfang") samt mehrfacher Q&A-Selbstbefragung gegen das Original — diese Lese-
  Zugriffe muessen von der Gegenstation (MacBook Pro, 12.-14.07.) erfolgt sein, wo die Datei
  offenbar noch normal zugaenglich war.
- **Einordnung:** Dies ist vermutlich ein defekter/nur teilweise materialisierter OneDrive-
  Platzhalter auf dem Mac Mini, kein Beleg fuer einen inhaltlichen Auszugs-Fehler der Norm
  selbst — das bestehende Destillat bleibt nach seiner eigenen Verifikationshistorie
  vertrauenswuerdig. Die urspruengliche Frage aus Run 15 ("ist DIN 277-1 ein Auszug?") ist
  damit **von dieser Station aus aktuell nicht abschliessend pruefbar** (die Datei kann hier
  nicht geoeffnet werden) — sie bleibt als Bring-Schuld offen, jetzt aber mit einer konkreteren,
  reproduzierbaren technischen Ursache statt einer reinen Verdachtslage.

## Empfehlung / naechster Schritt

- **Keine Aktion am Scheduled Task** (bleibt stillgelegt, Reaktivierungs-Trigger unveraendert:
  neues Material in DIN_Norm/VSS_Norm/RAL_Norm/Lignum).
- Punkt 1 (Zaehl-Differenz) kann als **geklaert** aus der Uebergabe-Liste in `QUESTIONS.md`
  entfernt/archiviert werden.
- Punkt 2 (Auszug-Plausibilisierung) bleibt offen, aber praezisiert: naechster Schritt waere,
  `DIN 277-1.pdf` auf einer anderen Station (MacBook Pro, wo die Datei nachweislich lesbar war)
  gegenzupruefen, ob sie dort weiterhin oeffenbar ist — falls ja, ist es ein Mac-Mini-lokales
  OneDrive-Platzhalter-Problem (kein Raphael-Handlungsbedarf); falls dort ebenfalls nicht mehr
  lesbar, waere das ein echter Datenverlust in der SharePoint-Ablage und Raphael zu melden.

## Nachgefuehrte Dateien

- `wiki/QUESTIONS.md` (Abschnitt "Uebergabe an den Mac Mini" aktualisiert)
- `CHANGELOG.md` (neuer Eintrag)
- Dieser Report
