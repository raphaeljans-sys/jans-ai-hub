#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task Freigabe-Schwelle (Guard)
# ============================================================================
# Entscheidet fuer EINEN Sync-Task, ob er unbeaufsichtigt laufen darf oder
# eine ausdrueckliche Einzelfreigabe von Raphael braucht.
#
# Verwendung:
#   bash sync-task-guard.sh <taskdatei>        # still, nur Exit-Code
#   bash sync-task-guard.sh <taskdatei> --gruende   # Gruende auf stdout
#
# Exit-Codes:
#   0  = harmlos, darf unbeaufsichtigt laufen
#   10 = braucht Freigabe (Gruende auf stdout, je Zeile "LABEL: <Treffer>")
#   2  = Aufrufsfehler (Datei fehlt)
#
# Hintergrund (30.07.2026): Der launchd-Runner ch.jans.synctask-runner arbeitet
# die Queue der eigenen Station alle 30 Min unbeaufsichtigt ab. Am 30.07. hat er
# einen Task der Gegenstation ausgefuehrt, der einen fremden SSH-Public-Key in
# ~/.ssh/authorized_keys eingetragen hat — wenige Minuten BEVOR die Freigabe
# dafuer erteilt war. Der Absender war echt und das Ergebnis gewollt, aber das
# Freigabe-Gate war damit wirkungslos: ein Task aus der Queue kann Dauerzugang,
# Rechte oder Persistenz setzen, ohne dass jemand vorher gefragt wird.
# Diese Schwelle schliesst die Luecke, ohne den bequemen Weg zu verlieren:
# harmlose Tasks laufen weiter von allein, heikle warten auf ein Ja.
#
# Bewusst grosszuegig gemustert: ein Falsch-Positiv kostet eine Rueckfrage,
# ein Falsch-Negativ kostet Zugang. Im Zweifel Freigabe verlangen.
# ============================================================================

set -uo pipefail

TASK="${1:-}"
MODUS="${2:-}"

if [ -z "$TASK" ] || [ ! -f "$TASK" ]; then
    echo "Aufruf: sync-task-guard.sh <taskdatei> [--gruende]" >&2
    exit 2
fi

# --- Musterkatalog ----------------------------------------------------------
# Format je Eintrag: LABEL::REGEX (grep -Ei). Neue Muster hier ergaenzen.
MUSTER=(
  "SSH-Zugang::authorized_keys|ssh-copy-id|ssh-keygen|id_(ed25519|rsa|ecdsa)|\.ssh/"
  "Rechteausweitung::(^|[^a-z])sudo[ 	]|/etc/sudoers|chown +root|chmod +[0-7]*777"
  "Keychain und Secrets::security +(unlock-keychain|add-generic-password|import)|\.env([^a-z]|$)|\.pem([^a-z]|$)|PRIVATE KEY"
  "Systemschutz::csrutil|spctl|tccutil|nvram|systemsetup|networksetup|pmset"
  "Persistenz::launchctl|LaunchAgents|LaunchDaemons|crontab|periodic|/etc/rc\."
  "Zerstoerend::rm +-[a-z]*[rR][a-z]* +/|diskutil +(erase|partition|reformat)|mkfs|dd +if=|> */dev/(disk|rdisk)"
  "Zerstoerend rekursiv (auch relativ)::rm +-[a-z]*[rR]"
  "Eingriff in Git-Interna::rm +.*\.git/|\.git/(rebase-merge|rebase-apply|index\.lock|MERGE_HEAD|CHERRY_PICK_HEAD)|update-ref|git +stash +(drop|clear)"
  "Fernausfuehrung auf einer anderen Station::ssh +[^|]*(diskstation|tail8265aa|volume2/daten|jans-ai-hub)"
  "Git-Historie::git +push +.*--force|--force-with-lease|git +reset +--hard|filter-branch|git +clean +-[a-z]*f"
  "Fremdcode aus dem Netz::(curl|wget)[^|]*\|[ ]*(ba)?sh|base64 +-[dD][^|]*\|[ ]*(ba)?sh|eval +\"?\\\$\((curl|wget)"
  "Aussenwirkung Versand::osascript.*(com\.apple\.mail|\"Mail\").*(send|senden)|mail +-s|sendmail|--senden|--mahnen"
  "Zahlungen und Buchen::--buchen|--ja([^a-z]|$).*(buch|mahn)|bexio.*(buchen|mahnen)"
)

TREFFER=""
INHALT=$(cat "$TASK" 2>/dev/null)

for EINTRAG in "${MUSTER[@]}"; do
    LABEL="${EINTRAG%%::*}"
    REGEX="${EINTRAG#*::}"
    # -e ist Pflicht: Muster wie "--buchen|..." wuerde grep sonst als Option lesen
    FUND=$(printf '%s\n' "$INHALT" | grep -Eio -e "$REGEX" | sort -u | head -3 | paste -sd ', ' -)
    if [ -n "$FUND" ]; then
        TREFFER="${TREFFER}${LABEL}: ${FUND}"$'\n'
    fi
done

if [ -z "$TREFFER" ]; then
    exit 0
fi

if [ "$MODUS" = "--gruende" ]; then
    printf '%s' "$TREFFER"
fi
exit 10
