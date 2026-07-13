# Stations-Status: mac-mini

Stand: 13.07.2026 20:29:36

## Aktive Claude-Sessions (Transkript-Aktivitaet < 30 Min)
- Developer/jans/ai/hub  (letzte Aktivitaet 20:25)

## Laufende Arbeits-Prozesse
- claude -p --permission-mode acceptEdits --max-budget-usd 25 --fallback-model sonnet --output-format text -- ---
name: planungsgrundlagen-training
description: INTENSIVPHASE taeglich Lern-Loop KB Planungsgrundlagen — TOKEN-VOLLGAS 2 PL-Domaenen + 10-16 Selbstfragen
cron_target: "30 11 * * *"
---

Du bist der KI-Bibliothekar des JANS AI Hub und fuehrst einen Trainingslauf fuer die Wissensbasis `planungsgrundlagen` a

VORAUSSETZUNG: NAS muss gemountet sein (`/Volumes/daten`). Wenn nicht erreichbar, brich ab und melde das.

ABLAUF (verbindlich, folge `/Volumes/daten/jans-ai-hub/wissen/planungsgrundlagen/training/PROGRAMM.md`):

1. STAND LESEN:
-   - `wissen/planungsgrundlagen/training/curriculum.md` (offene Lektionen)
-   - `wissen/planungsgrundlagen/wiki/QUESTIONS.md` (offene A-E-Aufgaben)
-   - letzter Report in `wissen/planungsgrundlagen/outputs/` (welche Domaene war zuletzt dran)

2. SCHWERPUNKT-DOMAENEN bestimmen (TOKEN-VOLLGAS: 2 Domaenen pro Lauf) per Rotation: Kartenportale -> Energie -> Recht/N

3. 10-16 PRAEZISE SELBSTFRAGEN stellen (TOKEN-VOLLGAS: erhoehtes Volumen; aus curriculum.md / QUESTIONS.md der Schwerpun
-   - Quelle lesen: den passenden PL-Ordner auf SharePoint unter
-     `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/` (PL - 01 Kartenportale / PL - 02_Recht_Norm / P
-   - In den passenden Wiki-Artikel einarbeiten: Fakten mit Quelle (+Seite/URL), Endpunkte/Kennwerte belegt, Annahmen ma

4. CONNECTOR VERBESSERN (nur wenn Schwerpunkt = Kartenportale): neu kartierte Endpunkte/Kantone in `/Volumes/daten/jans-

5. REGISTER PFLEGEN: `raw/_INGESTED.md`, `training/curriculum.md` (Lektion mit Datum auf [x]), `wiki/QUESTIONS.md` (Aufg

6. OUTPUT SCHREIBEN: `wissen/planungsgrundlagen/outputs/<JJJJ-MM-TT>_training-run<N>.md` — welche Domaene, welche Frag

7. CHANGELOG ergaenzen (`wissen/planungsgrundlagen/CHANGELOG.md`, neueste zuoberst).

8. SICHERN: NAS-Repo committen + pushen (Rules `git-auto-push` / `sync-kanonische-quelle`).

LEITPLANKEN: Nie erfinden (kein EGRID/Endpunkt/Kennwert ohne Beleg; Unsicheres bleibt speculative mit Vermerk). Endpunkt
Hinweis: Dieser Lauf ist Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026).
Fahre den naechsten Batch gemaess dem jeweiligen training/PROGRAMM.md bzw. Lauf-Zustand.
Sende KEINE Mails ausser der Prompt verlangt es ausdruecklich. Git-Disziplin (VOLLGAS):
Am Ende NUR LOKAL committen (git add der geaenderten Dateien, dann git commit mit
sprechender Nachricht) — NICHT pushen und NICHT pullen. Der git-auto-sync-Job erledigt
pull --rebase und push alle 5 Min gebuendelt; das vermeidet die Push-Kollisionen zwischen
den Stationen und laesst jeden Lauf sauber mit rc=0 enden.

## Projektordner-Aktivitaet (OneDrive, letzte 12 h)
- 41 Datei(en): AR - 01 Projekte / 2619_KINDERSPITAL
- 1 Datei(en): AR - 07 Archiv / .849C9593-D756-4E56-8D6E-42412F2A707B
- 1 Datei(en): AR - 06 Referenzen / .849C9593-D756-4E56-8D6E-42412F2A707B
- 1 Datei(en): AR - 05 Transfer / .849C9593-D756-4E56-8D6E-42412F2A707B
- 1 Datei(en): AR - 04 Honorarauftraege / .849C9593-D756-4E56-8D6E-42412F2A707B
- 1 Datei(en): AR - 03 Studien / 2620 ALBERTSTRASSE 7
- 1 Datei(en): AR - 03 Studien / .849C9593-D756-4E56-8D6E-42412F2A707B
- 1 Datei(en): AR - 02 Wettbewerbe / .849C9593-D756-4E56-8D6E-42412F2A707B

## Hub-Git-Stand (NAS)
- 880edbd8 normen-training-mini Run 14: Retro-Verifikation 6 DIN-Destillate (Healthcare-RLT, Brandschutz, VOB/B, Einbruchhemmung)
