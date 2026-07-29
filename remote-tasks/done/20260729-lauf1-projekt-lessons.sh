#!/bin/bash
# Remote-Task: lauf1-projekt-lessons — erzeugt 2026-07-29 20:39:12 fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
set -uo pipefail
R="$1"

# --- 1. NAS sicherstellen ---------------------------------------------------
bash "$HOME/Developer/jans-ai-hub/scripts/ensure-nas-mounted.sh" >> "$R/output.log" 2>&1 || true
if [ ! -d /Volumes/daten/jans-ai-hub ]; then
    echo "FEHLER: /Volumes/daten nicht gemountet — Lauf 1 nicht moeglich." > "$R/STATUS.txt"
    exit 1
fi

# --- 2. NAS-Repo (kanonisch) auf Stand main bringen -------------------------
cd /Volumes/daten/jans-ai-hub
git pull origin main > "$R/git-pull.log" 2>&1 || true
if [ ! -f wissen/projekt-lessons/training/PROGRAMM.md ]; then
    echo "FEHLER: PROGRAMM.md nach Pull nicht vorhanden — main nicht angekommen?" > "$R/STATUS.txt"
    exit 1
fi

# --- 3. Lauf 1 mit vollem JANS-Harness ---------------------------------------
bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" \
"Lauf 1 des Ingest-Programms projekt-lessons. Massgeblich ist /Volumes/daten/jans-ai-hub/wissen/projekt-lessons/training/PROGRAMM.md — zuerst vollstaendig lesen, ebenso wissen/projekt-lessons/CLAUDE.md. Dann NUR die vier Punkte unter 'Naechster Schritt (Lauf 1)' im Tracker ausfuehren: (1) Wurzelpfad des Projekts 2619 Kinderspital unter /Volumes/daten/04_Buero/02_Projekte/ verifizieren und im PROGRAMM-Abschnitt 'Belegte Pfadmuster' mit Datum nachtragen. (2) training/quellen-inventar.md anlegen und aus der Sichtung des Projektordners fuellen; Truninger-DS3 und Mail nur einbeziehen, wenn ohne Rueckfrage erreichbar, sonst im Inventar als offen vermerken. (3) Stufe A auf genau EIN Dokument anwenden — das nach dem Dokumenttypen-Katalog vielversprechendste (QS-Korrektur oder Koordinationsprotokoll bevorzugt). Den Stufe-A-Prompt im PROGRAMM woertlich befolgen: jede Aussage mit woertlichem Zitat und Fundstelle, Unbelegtes unter '## Unsicher', keine Interpretation. Destillat nach raw/, _INGESTED.md und Inventar nachfuehren. (4) AUSDRUECKLICH NICHT Stufe B und NICHT Stufe C — Lauf 1 endet nach dem einen Destillat, das Raphael von Hand gegenliest. Abschluss: CHANGELOG.md der KB und den Tracker im PROGRAMM (Zeile Lauf 1) nachfuehren. Alle Aenderungen NUR auf dem NAS-Pfad /Volumes/daten/jans-ai-hub/ vornehmen und am Ende dort committen und pushen (Rule sync-kanonische-quelle). Zum Schluss eine kurze Zusammenfassung ausgeben: verifizierter Wurzelpfad, Anzahl Inventar-Zeilen, gewaehltes Dokument mit Begruendung, Pfad des Destillats." \
    > "$R/antwort.md" 2>&1
DISPATCH_RC=$?

# --- 4. Ergebnisse fuer die Gegenlese zurueckgeben ---------------------------
cp /Volumes/daten/jans-ai-hub/wissen/projekt-lessons/training/quellen-inventar.md "$R/" 2>/dev/null || true
NEUESTES="$(ls -t /Volumes/daten/jans-ai-hub/wissen/projekt-lessons/raw/*.md 2>/dev/null | grep -v _INGESTED | head -1)"
[ -n "$NEUESTES" ] && cp "$NEUESTES" "$R/destillat.md"
if [ "$DISPATCH_RC" -eq 0 ] && [ -n "$NEUESTES" ]; then
    echo "OK: Lauf 1 abgeschlossen. Destillat: $(basename "$NEUESTES") — bitte gegenlesen." > "$R/STATUS.txt"
else
    echo "TEILWEISE/FEHLER: dispatch rc=$DISPATCH_RC, Destillat gefunden: ${NEUESTES:-keines}. Siehe antwort.md." > "$R/STATUS.txt"
fi
