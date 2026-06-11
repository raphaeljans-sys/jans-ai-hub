#!/bin/bash
# ============================================================================
# JANS AI Hub — Neue Arbeitsstation einbinden (EIN Befehl)
# ============================================================================
# Bindet einen frischen Mac vollstaendig in den JANS AI Hub ein:
#
#   bash /Volumes/daten/jans-ai-hub/scripts/neue-station.sh <stationsname>
#
#   Beispiel:  bash neue-station.sh station-03
#
# Was passiert (idempotent — darf mehrfach laufen):
#   1. NAS-Mount pruefen
#   2. Stations-Identitaet setzen        (~/.jans-station)
#   3. SSD-Repo klonen                   (GitHub, Fallback: NAS-Repo)
#   4. Symlinks skills/agents/commands   (setup-nas-skills.sh)
#   5. launchd-Jobs installieren         (NAS-Auto-Mount, Git-Auto-Sync,
#                                         Sync-Task-Runner 30 Min)
#      + FDA-Check: launchd-bash braucht Festplattenvollzugriff fuer
#        /Volumes/daten (TCC-Falle 11.06.2026) — check-launchd-fda.sh
#   6. Eigene Pendenzen-Queue anlegen    (sync-tasks/<station>/)
#   7. Station im Register eintragen     (docs/stationen.md auf NAS)
#   8. Checkliste der manuellen Schritte ausgeben
#
# Voraussetzung: NAS ist gemountet (im Buero: open smb://192.168.1.10/daten).
# Mehr Komfort (Homebrew, Git-Config, SSH-Keys, Cowork): Skill `workstation-setup`.
# ============================================================================

set -uo pipefail

GREEN='\033[0;32m'; RED='\033[0;31m'; YELLOW='\033[1;33m'; NC='\033[0m'
ok()   { echo -e "  ${GREEN}OK${NC}  $*"; }
warn() { echo -e "  ${YELLOW}!!${NC}  $*"; }
fail() { echo -e "  ${RED}FEHLER${NC}  $*"; }

NAS="/Volumes/daten/jans-ai-hub"
REPO="$HOME/Developer/jans-ai-hub"
GITHUB="git@ssh.github.com:raphaeljans-sys/jans-ai-hub.git"

STATION="${1:-}"
if [ -z "$STATION" ]; then
    echo "Verwendung: bash neue-station.sh <stationsname>"
    echo "Name nur Kleinbuchstaben/Ziffern/Bindestrich, z.B. station-03 oder mb-lukas"
    exit 1
fi
STATION=$(echo "$STATION" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z0-9-')

echo ""
echo "============================================================"
echo "  JANS AI Hub — Station «$STATION» einbinden"
echo "============================================================"

# --- 1. NAS-Mount -----------------------------------------------------------
echo "1. NAS-Mount"
if [ -d "$NAS" ] && [ -r "$NAS" ]; then
    ok "$NAS erreichbar"
else
    fail "NAS nicht gemountet."
    echo "     Im Buero:  open smb://192.168.1.10/daten"
    echo "     Extern:    open smb://diskstation918.tail8265aa.ts.net/daten (Tailscale noetig)"
    exit 1
fi

# --- 2. Stations-Identitaet -------------------------------------------------
echo "2. Stations-Identitaet"
echo "$STATION" > "$HOME/.jans-station"
ok "~/.jans-station = $STATION"

# --- 3. SSD-Repo ------------------------------------------------------------
echo "3. SSD-Repo (~/Developer/jans-ai-hub)"
if [ -d "$REPO/.git" ]; then
    ok "existiert bereits"
else
    mkdir -p "$HOME/Developer"
    if git clone "$GITHUB" "$REPO" 2>/dev/null; then
        ok "von GitHub geklont"
    else
        warn "GitHub-Clone fehlgeschlagen (SSH-Key fehlt?) — klone vom NAS-Repo"
        if git clone "$NAS" "$REPO" 2>/dev/null; then
            git -C "$REPO" remote set-url origin "$GITHUB"
            ok "vom NAS geklont, origin auf GitHub gesetzt (Pull klappt nach SSH-Setup)"
        else
            fail "Clone fehlgeschlagen — manuell pruefen"; exit 1
        fi
    fi
fi

# --- 4. Symlinks ------------------------------------------------------------
echo "4. Symlinks (Skill-Bibliothek)"
if bash "$NAS/scripts/setup-nas-skills.sh" >/dev/null 2>&1; then
    ok "skills/agents/commands → NAS"
else
    warn "setup-nas-skills.sh meldete Fehler — manuell ausfuehren"
fi

# --- 5. launchd-Jobs --------------------------------------------------------
echo "5. launchd-Jobs"
for INST in install-nas-auto-mount.sh install-auto-sync.sh install-synctask-runner.sh; do
    if [ -f "$REPO/scripts/$INST" ]; then
        if bash "$REPO/scripts/$INST" >/dev/null 2>&1; then
            ok "$INST"
        else
            warn "$INST fehlgeschlagen — manuell: bash $REPO/scripts/$INST"
        fi
    else
        warn "$INST fehlt im Repo (git pull noetig?)"
    fi
done

# --- 5b. FDA-Check (TCC-Falle 11.06.2026) -----------------------------------
# macOS-TCC blockiert launchd-gestartete /bin/bash-Jobs auf dem SMB-Mount
# /Volumes/daten — Stations-Status und Sync-Task-Runner scheitern dann STILL.
# Die Probe testet den NAS-Zugriff aus echtem launchd-Kontext (Schreibtest).
echo "5b. Festplattenvollzugriff (launchd → SMB)"
FDA_OK=1
if bash "$NAS/scripts/check-launchd-fda.sh"; then
    FDA_OK=0
fi

# --- 6. Pendenzen-Queue -----------------------------------------------------
echo "6. Pendenzen-Queue"
mkdir -p "$NAS/sync-tasks/$STATION"
ok "sync-tasks/$STATION/"

# --- 7. Stations-Register ---------------------------------------------------
echo "7. Stations-Register"
REG="$NAS/docs/stationen.md"
if [ ! -f "$REG" ]; then
    {
        echo "# JANS AI Hub — Stations-Register"
        echo ""
        echo "Jede eingebundene Arbeitsstation. Eingetragen automatisch von neue-station.sh."
        echo ""
        echo "| Station | Hostname | Benutzer | Eingebunden | Rolle |"
        echo "|---|---|---|---|---|"
        echo "| mac-mini | Macmini | raphaeljans | 2026-03 | Committer (always-on), Dispatch |"
        echo "| macbook-pro | Macbookpro | raphaeljans | 2026-03 | Mobil |"
    } > "$REG"
fi
HOSTN=$(scutil --get LocalHostName 2>/dev/null || hostname -s)
if ! grep -q "^| $STATION " "$REG" 2>/dev/null; then
    echo "| $STATION | $HOSTN | $(whoami) | $(date +%Y-%m-%d) | Arbeitsstation |" >> "$REG"
    ok "in docs/stationen.md eingetragen"
else
    ok "bereits registriert"
fi

# --- 8. Checkliste ----------------------------------------------------------
echo ""
echo "============================================================"
echo -e "  ${GREEN}Station «$STATION» ist eingebunden.${NC}"
echo "============================================================"
echo ""
echo "  Automatisch aktiv:"
echo "   • Skills/Agents/Commands/Rules vom NAS (sofort, alle Stationen identisch)"
echo "   • Pendenzen-Runner alle 30 Min (sync-tasks/$STATION/)"
echo "   • Git-Auto-Sync alle 5 Min (SSD-Spiegel ← GitHub)"
echo "   • NAS-Auto-Mount nach Neustart"
echo ""
echo "  Manuell noch noetig (einmalig):"
if [ "${FDA_OK:-1}" -ne 0 ]; then
    echo "   [ ] FESTPLATTENVOLLZUGRIFF fuer /bin/bash (sonst laufen Runner/Status NICHT):"
    echo "       open \"x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles\""
    echo "       dort «+» → Cmd+Shift+G → /bin/bash → aktivieren, danach:"
    echo "       bash $NAS/scripts/check-launchd-fda.sh"
fi
echo "   [ ] Claude Code installieren + anmelden  (https://claude.com/claude-code)"
echo "   [ ] Tailscale installieren + anmelden    (fuer NAS-Zugriff von extern)"
echo "   [ ] SSH-Key fuer GitHub hinterlegen      (ssh-keygen + GitHub Settings)"
echo "   [ ] M365-Zertifikat kopieren:"
echo "       scp raphaeljans@100.120.219.12:~/.cli-m365-cert-combined.pem ~/"
echo "       chmod 600 ~/.cli-m365-cert-combined.pem"
echo "   [ ] .env aus .env.example befuellen      (Credentials, NICHT committen)"
echo "   [ ] Apple Mail Konten pruefen            (rj@raphaeljans.ch via iCloud/M365)"
echo ""
echo "  Vollausbau (Homebrew, Tools, macOS-Settings): in Claude Code den Skill"
echo "  «workstation-setup» starten — er erkennt diese Vorarbeit und ergaenzt nur."
echo ""
