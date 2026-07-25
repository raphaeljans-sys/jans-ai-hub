# /station-status — Was macht die andere Station gerade?

Zeigt den Live-Zustand der anderen Arbeitsstation (Mac Mini ↔ MacBook Pro), um
Doppelspurigkeiten zu vermeiden, wenn beide am gleichen Projekt arbeiten.

## Ablauf

1. Eigenen Status frisch schreiben (damit die Gegenseite auch uns sieht):
   ```bash
   bash /Volumes/daten/jans-ai-hub/scripts/station-status.sh write
   ```
2. Status der anderen Station lesen:
   ```bash
   bash /Volumes/daten/jans-ai-hub/scripts/station-status.sh read
   ```
3. Ergebnis interpretieren und dem Benutzer melden:
   - **Aktive Claude-Sessions** dort + **laufende Prozesse** (Render etc.)
   - **Projektordner-Aktivitaet**: Wenn dasselbe Projekt auch HIER bearbeitet wird
     → **deutlich warnen (Doppelspurigkeits-Gefahr)** und empfehlen, zuerst das
     `PROJEKT-STAND.md` des Projekts zu lesen (Ablage: `09_Dokumente/CLAUDE/`).
   - Ist der Status älter als 30 Min: Station vermutlich offline/Ruhezustand —
     dann gilt der letzte PROJEKT-STAND als Wahrheit.
4. Bei konkretem Projektbezug der Frage (z.B. «arbeitet der Mini an 2621?»):
   zusätzlich das PROJEKT-STAND.md des genannten Projekts lesen und den letzten
   Historie-Eintrag zusammenfassen.

## Hintergrund

- Der Mac Mini (always-on) schreibt seinen Status automatisch alle 10 Min
  (launchd `com.jans.station-status`); das MacBook ebenso, wenn es wach ist.
- Ablage: `/Volumes/daten/jans-ai-hub/station-status/<station>.md`
- Extern: NAS via Tailscale mounten (`open smb://diskstation918.tail8265aa.ts.net/daten`).
