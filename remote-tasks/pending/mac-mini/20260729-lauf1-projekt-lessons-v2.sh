#!/bin/bash
# Remote-Task: lauf1-projekt-lessons-v2 — erzeugt 2026-07-29 21:13:57 fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
R="$1"
NAS="/Volumes/daten/jans-ai-hub"
E="$R/ERGEBNIS.txt"

# --- Diagnose zuerst (immer, in .txt — *.log ist gitignored) -----------------
{
    echo "== Zeit: $(date -Iseconds) auf $(hostname -s)"
    echo "== Mount:"; ls -d /Volumes/daten 2>&1
    echo "== NAS-Repo:"; git -C "$NAS" status -sb 2>&1 | head -5
    git -C "$NAS" log --oneline -3 2>&1
    echo "== PROGRAMM.md vor Pull:"; ls -la "$NAS/wissen/projekt-lessons/training/" 2>&1
    echo "== Dispatch-Token vorhanden:"; grep -c "CLAUDE_CODE_OAUTH_TOKEN" "$HOME/.jans-dispatch.env" 2>&1
    echo "== runner.log (letzte 20):"; tail -20 "$HOME/Developer/jans-ai-hub/remote-tasks/runner.log" 2>&1
} > "$R/diagnose.txt" 2>&1

# --- Vorbedingungen ----------------------------------------------------------
if [ ! -d "$NAS" ]; then
    echo "ABBRUCH: NAS nicht gemountet — siehe diagnose.txt" > "$E"; exit 0
fi
git -C "$NAS" pull origin main > "$R/nas-pull.txt" 2>&1
if [ ! -f "$NAS/wissen/projekt-lessons/training/PROGRAMM.md" ]; then
    echo "ABBRUCH: PROGRAMM.md nach Pull nicht vorhanden — siehe nas-pull.txt + diagnose.txt" > "$E"; exit 0
fi

# --- Lauf 1 mit vollem JANS-Harness ------------------------------------------
bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" \
"Lauf 1 des Ingest-Programms projekt-lessons. Massgeblich ist /Volumes/daten/jans-ai-hub/wissen/projekt-lessons/training/PROGRAMM.md — zuerst vollstaendig lesen, ebenso wissen/projekt-lessons/CLAUDE.md. Dann NUR die vier Punkte unter 'Naechster Schritt (Lauf 1)' im Tracker ausfuehren: (1) Wurzelpfad des Projekts 2619 Kinderspital unter /Volumes/daten/04_Buero/02_Projekte/ verifizieren und im PROGRAMM-Abschnitt 'Belegte Pfadmuster' mit Datum nachtragen. (2) training/quellen-inventar.md anlegen und aus der Sichtung des Projektordners fuellen; Truninger-DS3 und Mail nur einbeziehen, wenn ohne Rueckfrage erreichbar, sonst im Inventar als offen vermerken. (3) Stufe A auf genau EIN Dokument anwenden — das nach dem Dokumenttypen-Katalog vielversprechendste (QS-Korrektur oder Koordinationsprotokoll bevorzugt). Den Stufe-A-Prompt im PROGRAMM woertlich befolgen: jede Aussage mit woertlichem Zitat und Fundstelle, Unbelegtes unter '## Unsicher', keine Interpretation. Destillat nach raw/, _INGESTED.md und Inventar nachfuehren. (4) AUSDRUECKLICH NICHT Stufe B und NICHT Stufe C — Lauf 1 endet nach dem einen Destillat, das Raphael von Hand gegenliest. Abschluss: CHANGELOG.md der KB und den Tracker im PROGRAMM (Zeile Lauf 1) nachfuehren. Alle Aenderungen NUR auf dem NAS-Pfad /Volumes/daten/jans-ai-hub/ vornehmen und am Ende dort committen und pushen (Rule sync-kanonische-quelle). Zum Schluss eine kurze Zusammenfassung ausgeben: verifizierter Wurzelpfad, Anzahl Inventar-Zeilen, gewaehltes Dokument mit Begruendung, Pfad des Destillats." \
    > "$R/antwort.txt" 2>&1
RC=$?

# --- Ergebnisse zurueckgeben -------------------------------------------------
cp "$NAS/wissen/projekt-lessons/training/quellen-inventar.md" "$R/" 2>/dev/null
NEU="$(ls -t "$NAS"/wissen/projekt-lessons/raw/*.md 2>/dev/null | grep -v _INGESTED | head -1)"
[ -n "$NEU" ] && cp "$NEU" "$R/destillat.md"
if [ "$RC" -eq 0 ] && [ -n "$NEU" ]; then
    echo "OK: Lauf 1 abgeschlossen. Destillat: $(basename "$NEU") — bitte gegenlesen." > "$E"
else
    echo "FEHLER: dispatch rc=$RC, Destillat: ${NEU:-keines}. Siehe antwort.txt + diagnose.txt." > "$E"
fi
exit 0
