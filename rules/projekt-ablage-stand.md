# Regel: Projekt-Ablage und PROJEKT-STAND.md (verbindlich)

## Hintergrund

Damit alle Arbeitsstationen (und jede Claude-Session) über denselben Projekt- und
Wissensstand verfügen, gilt ein einheitliches Ablage-Prinzip für projektgebundene
Arbeit — festgelegt am 11.06.2026 am Fall 2621 Giebelweg 12.

## Die drei Ablage-Ebenen (wo gehört was hin)

| Ebene | Ort | Inhalt |
|---|---|---|
| **Projekt** | SharePoint-Projektordner (z.B. `AR - 03 Studien/2621 Giebelweg 12/`) | ALLE projektgebundenen Erzeugnisse und Grundlagen. Die eine Projekt-Wahrheit; via OneDrive auf allen Stationen synchron. |
| **Hub/Konzept** | NAS `/Volumes/daten/jans-ai-hub/` (`docs/konzepte/`, `skills/`, `wissen/`, `connectors/`) | Projektübergreifendes: Prinzipien, Pipelines, Werkzeuge, kompoundierendes Wissen. |
| **Schaufenster** | OneDrive `30 JANS AI HUB OUTPUT/` | NUR projekt-UNgebundene Outputs (allgemeine Reports, Tests). Projektgebundenes gehört in den Projektordner, nicht hierhin. |

## Claude-Erzeugnisse im Projektordner

- Unter `09_Dokumente/CLAUDE/` mit nummerierten Themenordnern (`NN_Thema/`), Dateien nach
  Dateinamen-Konvention (YYMMDD-Titel). Abgelöste Stände nach `_Archiv/`.
- CAD-Austausch (Schichtenvertrag) unter `09_Dokumente/CLAUDE/09_CAD-Austausch/`
  mit `00_Grundlage/ 10_Raphael/ 20_Rueck/ 99_Archiv/`.

## PROJEKT-STAND.md (das Projekt-Gedächtnis — Pflicht)

Jedes aktive Projekt hat **eine** Datei `09_Dokumente/CLAUDE/PROJEKT-STAND.md`:

1. **Zuerst lesen:** Jede Session, die am Projekt arbeitet, liest diese Datei VOR der Arbeit
   — sie ist der Einstiegspunkt und ersetzt das Zusammensuchen des Stands.
2. **Immer nachführen:** Nach jedem Arbeitsschritt wird sie aktualisiert (Stammdaten,
   Studien-Stand/Kennzahlen, Deliverables-Tabelle, Historie-Eintrag, offene Punkte).
3. **Aufbau:** Stammdaten (amtlich verifiziert) · baurechtlicher Rahmen · Studien-Stand ·
   Deliverables chronologisch · Historie (neuester Eintrag zuoberst) · offene Punkte/nächste Schritte.
4. **Belegt statt geraten:** Kennzahlen mit Quelle/Datum; Annahmen explizit als Annahmen markieren
   (Rule `identifikatoren-verifizieren.md`).
5. Existiert die Datei noch nicht: beim ersten substanziellen Arbeitsschritt anlegen
   (Vorlage: 2621 Giebelweg 12).

## Warum

- Ein Ort pro Projekt = kein divergierender Wissensstand zwischen MacBook Pro und Mac Mini.
- PROJEKT-STAND.md macht jede neue Session sofort arbeitsfähig — sie baut auf dem letzten
  Stand auf, statt ihn zu rekonstruieren (Compounding auf Projektebene).
- Trennung Projekt (SharePoint) / Hub (NAS) hält das NAS-Repo frei von Projektdaten und
  die Projektordner frei von Hub-Interna.

## Geltungsbereich

Alle Sessions auf allen Stationen, alle projektgebundenen Skills (machbarkeit, volumenstudie,
kostenschaetzung, ausschreibung, …). Ergänzt `sync-kanonische-quelle.md` (Hub-Inhalte),
`dateinamen-konvention.md` (Benennung) und den Auto-Verbesserungs-Eintrag 260611
(Konzept-Dokumente → NAS `docs/konzepte/`).
