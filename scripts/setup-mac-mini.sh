#!/bin/bash
# ============================================================================
# JANS AI Hub — Mac Mini Setup Script
# ============================================================================
# Dieses Script richtet den Mac Mini als Buero-Arbeitsstation ein.
# Ausfuehren: bash /Volumes/daten/jans-ai-hub/scripts/setup-mac-mini.sh
#
# Voraussetzungen:
#   - NAS gemountet unter /Volumes/daten
#   - Git + Node.js installiert (via Homebrew)
#   - Claude Code installiert
# ============================================================================

set -e

echo "============================================"
echo "  JANS AI Hub — Mac Mini Setup"
echo "============================================"
echo ""

# Farben
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

ok()   { echo -e "${GREEN}✅ $1${NC}"; }
warn() { echo -e "${YELLOW}⚠️  $1${NC}"; }
fail() { echo -e "${RED}❌ $1${NC}"; }

# ─── 1. NAS pruefen ────────────────────────────────────────────────────
echo "── 1/7: NAS-Mount pruefen ──"
if [ -d "/Volumes/daten/jans-ai-hub" ]; then
    ok "NAS gemountet unter /Volumes/daten"
else
    fail "NAS nicht gemountet! Zuerst: open smb://192.168.1.10/daten"
    exit 1
fi

# ─── 2. Git Repo klonen/aktualisieren ──────────────────────────────────
echo ""
echo "── 2/7: Git Repo ──"
REPO_DIR="$HOME/Developer/jans-ai-hub"

if [ -d "$REPO_DIR/.git" ]; then
    ok "Repo existiert: $REPO_DIR"
    cd "$REPO_DIR"
    git pull origin main 2>/dev/null && ok "Git pull erfolgreich" || warn "Git pull fehlgeschlagen (offline?)"
else
    echo "Klone Repo..."
    mkdir -p "$HOME/Developer"
    # Port 443 fuer GitHub (Port 22 durch Firewall blockiert)
    GIT_SSH_COMMAND="ssh -p 443 -o StrictHostKeyChecking=no" \
        git clone git@ssh.github.com:raphaeljans-sys/jans-ai-hub.git "$REPO_DIR"
    ok "Repo geklont nach $REPO_DIR"
    cd "$REPO_DIR"
fi

# ─── 3. Node Dependencies ─────────────────────────────────────────────
echo ""
echo "── 3/7: Node Dependencies ──"
cd "$REPO_DIR"
if [ -d "node_modules/@pnp/cli-microsoft365" ]; then
    ok "Dependencies bereits installiert"
else
    echo "Installiere Dependencies..."
    npm install
    ok "npm install abgeschlossen"
fi

# ─── 4. NAS-Symlinks einrichten ───────────────────────────────────────
echo ""
echo "── 4/7: NAS-Symlinks ──"
NAS_BASE="/Volumes/daten/jans-ai-hub"
CLAUDE_DIR="$REPO_DIR/.claude"

mkdir -p "$CLAUDE_DIR"

for DIR in skills agents commands; do
    TARGET="$NAS_BASE/$DIR"
    LINK="$CLAUDE_DIR/$DIR"

    if [ -L "$LINK" ]; then
        ok "Symlink existiert: .claude/$DIR"
    elif [ -d "$LINK" ]; then
        warn ".claude/$DIR ist ein Ordner (kein Symlink) — ueberspringe"
    else
        ln -s "$TARGET" "$LINK"
        ok "Symlink erstellt: .claude/$DIR → $TARGET"
    fi
done

# ─── 5. M365 Zertifikat ──────────────────────────────────────────────
echo ""
echo "── 5/7: M365 Zertifikat ──"
CERT_COMBINED="$HOME/.cli-m365-cert-combined.pem"

if [ -f "$CERT_COMBINED" ]; then
    # Ablaufdatum pruefen
    EXPIRY=$(openssl x509 -enddate -noout -in "$CERT_COMBINED" 2>/dev/null | cut -d= -f2)
    ok "Zertifikat vorhanden: $CERT_COMBINED"
    echo "   Gueltig bis: $EXPIRY"
else
    fail "Zertifikat fehlt: $CERT_COMBINED"
    echo ""
    echo "   Kopiere es vom MacBook Pro:"
    echo "   scp raphaeljans@100.117.99.62:~/.cli-m365-cert-combined.pem ~/.cli-m365-cert-combined.pem"
    echo ""
    echo "   Oder generiere ein neues:"
    echo "   openssl req -x509 -newkey rsa:2048 -keyout ~/.cli-m365-cert-key.pem -out ~/.cli-m365-cert.pem -days 730 -nodes -subj '/CN=JANS-AI-Hub-M365'"
    echo "   cat ~/.cli-m365-cert-key.pem ~/.cli-m365-cert.pem > ~/.cli-m365-cert-combined.pem"
    echo "   chmod 600 ~/.cli-m365-cert-combined.pem"
    echo "   → Dann Public-Cert in Azure Portal hochladen!"
    echo ""
fi

# ─── 6. .env Datei ───────────────────────────────────────────────────
echo ""
echo "── 6/7: .env Credentials ──"
ENV_FILE="$REPO_DIR/.env"

if [ -f "$ENV_FILE" ]; then
    ok ".env vorhanden"
else
    if [ -f "$REPO_DIR/.env.example" ]; then
        cp "$REPO_DIR/.env.example" "$ENV_FILE"
        warn ".env aus .env.example erstellt — bitte pruefen!"
    else
        fail ".env fehlt und kein .env.example vorhanden"
    fi
fi

# ─── 7. M365 Login testen ────────────────────────────────────────────
echo ""
echo "── 7/7: M365 Connector testen ──"

if [ -f "$CERT_COMBINED" ] && [ -f "$ENV_FILE" ]; then
    # .env laden
    set -a; source "$ENV_FILE"; set +a
    export PATH="$REPO_DIR/node_modules/.bin:$PATH"

    CERT_FILE_EXPANDED="${MICROSOFT_CERTIFICATE_FILE/#\~/$HOME}"

    echo "Teste M365 Login..."
    if m365 login --authType certificate \
        --certificateFile "$CERT_FILE_EXPANDED" \
        --appId "$MICROSOFT_CLIENT_ID" \
        --tenant "$MICROSOFT_TENANT_ID" 2>/dev/null; then
        ok "M365 Certificate-Login erfolgreich"

        # Schnelltest
        SITE_COUNT=$(m365 request --url "https://graph.microsoft.com/v1.0/sites?search=*" --accept "application/json" 2>/dev/null | python3 -c "import sys,json; print(len(json.load(sys.stdin).get('value',[])))" 2>/dev/null || echo "?")
        ok "SharePoint: $SITE_COUNT Sites gefunden"
    else
        fail "M365 Login fehlgeschlagen"
    fi
else
    warn "Zertifikat oder .env fehlt — Login uebersprungen"
fi

# ─── Zusammenfassung ─────────────────────────────────────────────────
echo ""
echo "============================================"
echo "  Setup abgeschlossen!"
echo "============================================"
echo ""
echo "Naechste Schritte:"
echo "  1. Claude Code starten: cd $REPO_DIR && claude"
echo "  2. Testen: /m365"
echo "  3. System-Check: /status"
echo ""
echo "Bei Problemen:"
echo "  - NAS mounten: open smb://192.168.1.10/daten"
echo "  - Zertifikat kopieren: scp raphaeljans@100.117.99.62:~/.cli-m365-cert-combined.pem ~/"
echo "  - Git SSH via Port 443: ssh -T -p 443 git@ssh.github.com"
echo ""
