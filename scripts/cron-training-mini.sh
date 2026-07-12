#!/bin/bash
# ============================================================================
# JANS AI Hub — Intensivphase-Tagesläufe Mac Mini (Cron → dispatch-run.sh)
# ============================================================================
# Hintergrund (12.07.2026, Rules 260712 + 260712b TOKEN-VOLLGAS): Die App-
# Scheduled-Tasks auf dem Mini lassen sich headless nicht umtakten (Registry
# im App-Speicher). Diese Tagesläufe ergänzen darum die bestehenden Nacht-
# Tasks der App über die User-Crontab, bis die App-Tasks interaktiv umgetaktet
# sind. Ab 11.08.2026 (Drosselung, Task token-drosselung-100810) werden die
# Crontab-Zeilen wieder entfernt.
#
# Verwendung (Crontab Mac Mini):
#   bash /Volumes/daten/jans-ai-hub/scripts/cron-training-mini.sh <energie|plg|normen>
# ============================================================================

export PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"
DISPATCH="$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh"
LOG="$HOME/Library/Logs/jans-cron-training.log"

[ -d /Volumes/daten/jans-ai-hub ] || { echo "$(date '+%F %T') NAS fehlt" >> "$LOG"; exit 0; }
[ -f "$DISPATCH" ] || { echo "$(date '+%F %T') dispatch-run.sh fehlt" >> "$LOG"; exit 0; }

# Kollisionsschutz: nie zwei Trainings-Dispatches gleichzeitig
LOCK="/tmp/jans-cron-training.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    echo "$(date '+%F %T') Lauf aktiv - $1 uebersprungen" >> "$LOG"; exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

case "${1:-}" in
  energie)
    PROMPT="Fuehre EINEN Intensiv-Lauf des Energie-Trainings aus. Verbindlich: /Volumes/daten/jans-ai-hub/wissen/energie/training/PROGRAMM.md inkl. Sektionen Verifikations-Stufe, Intensivphase und Token-Vollgas (6-10 PDFs pro Lauf, Workflow-Parallelisierung autorisiert). Quelle PL - 04 Energie auf SharePoint/OneDrive. Register und CHANGELOG nachfuehren, Report nach outputs/, vor Commit git pull, dann committen und pushen."
    ;;
  plg)
    PROMPT="Fuehre EINEN Intensiv-Lauf des Planungsgrundlagen-Trainings aus. Verbindlich: /Volumes/daten/jans-ai-hub/wissen/planungsgrundlagen/training/PROGRAMM.md inkl. Sektionen Verifikations-Stufe, Intensivphase und Token-Vollgas (2 Domaenen + 10-16 Fragen pro Lauf). Register und CHANGELOG nachfuehren, Report nach outputs/, vor Commit git pull, dann committen und pushen."
    ;;
  normen)
    PROMPT="Fuehre EINEN Intensiv-Lauf des Normen-Trainings aus - NUR die Familien DIN, VSS und RAL (Stations-Split: SIA und VKF gehoeren dem MacBook Pro, nie anfassen). Verbindlich: /Volumes/daten/jans-ai-hub/wissen/normen/training/PROGRAMM.md inkl. Verifikations-Stufe und Token-Vollgas (15-25 Positionen pro Lauf, Workflow-Parallelisierung autorisiert). Arbeitsliste training/norm-inventar.md, Quell-PDFs SharePoint PL - 02_Recht_Norm/02_Normen. DRM-PDFs als DRM manuell markieren. Register, REGISTER.md, CHANGELOG nachfuehren, Report nach outputs/, vor Commit git pull, dann committen und pushen."
    ;;
  *)
    echo "Verwendung: $0 <energie|plg|normen>"; exit 1 ;;
esac

echo "$(date '+%F %T') Start $1" >> "$LOG"
printf '%s\n' "$PROMPT" | bash "$DISPATCH" >> "$LOG" 2>&1
echo "$(date '+%F %T') Ende $1 (rc=$?)" >> "$LOG"
