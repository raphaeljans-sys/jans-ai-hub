#!/bin/bash
# ============================================================================
# JANS AI Hub — SSH-Client Setup auf dem MacBook Pro
# ============================================================================
# Richtet das MacBook Pro als SSH-Client fuer den Mac Mini ein:
# Schluessel, ~/.ssh/config-Eintrag 'mini' und den Befehl 'mini'
# (SSH + tmux — Session ueberlebt Verbindungsabbrueche).
# Konzept: docs/konzepte/260712-Mac-Mini-Terminal-Verbindung.md
#
# Voraussetzung: setup-ssh-mac-mini.sh wurde auf dem Mac Mini ausgefuehrt.
#
# Ausfuehren AUF DEM MACBOOK PRO:
#   bash ~/Developer/jans-ai-hub/scripts/setup-ssh-macbook.sh
#
# Schritte:
#   1. SSH-Schluessel erzeugen (falls keiner existiert)
#   2. Host-Eintrag 'mini' in ~/.ssh/config (Tailscale-IP + Keep-Alive)
#   3. Schluessel auf dem Mac Mini hinterlegen (einmalig Passwort noetig)
#   4. Befehl 'mini' nach ~/bin installieren
# ============================================================================

set -u

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

ok()   { echo -e "${GREEN}✅ $1${NC}"; }
warn() { echo -e "${YELLOW}⚠️  $1${NC}"; }
fail() { echo -e "${RED}❌ $1${NC}"; }

# Mac Mini: Tailscale-IP als EIN Hostname fuer Buero UND unterwegs —
# Tailscale routet im gleichen LAN automatisch direkt (kein Umweg).
MINI_HOST="100.120.219.12"
MINI_USER="raphaeljans"

echo "============================================"
echo "  JANS AI Hub — SSH-Setup MacBook Pro"
echo "============================================"
echo ""

# ─── 1. SSH-Schluessel ──────────────────────────────────────────────────
echo "── 1/4: SSH-Schluessel ──"
KEY="$HOME/.ssh/id_ed25519"
if [ -f "$KEY" ]; then
    ok "Schluessel vorhanden: $KEY"
else
    mkdir -p "$HOME/.ssh" && chmod 700 "$HOME/.ssh"
    ssh-keygen -t ed25519 -f "$KEY" -N "" -C "$(whoami)@macbook-pro-jans"
    ok "Schluessel erzeugt: $KEY"
fi
echo ""

# ─── 2. ~/.ssh/config Eintrag 'mini' ───────────────────────────────────
echo "── 2/4: ~/.ssh/config ──"
SSH_CONFIG="$HOME/.ssh/config"
touch "$SSH_CONFIG" && chmod 600 "$SSH_CONFIG"
if grep -q "^Host mini$" "$SSH_CONFIG" 2>/dev/null; then
    ok "Host-Eintrag 'mini' bereits vorhanden"
else
    cat >> "$SSH_CONFIG" <<EOF

# JANS AI Hub — Mac Mini (Buero) via Tailscale, funktioniert auch im LAN
Host mini
    HostName $MINI_HOST
    User $MINI_USER
    # Verbindung stabil halten (NAT/VPN-Timeouts vermeiden)
    ServerAliveInterval 30
    ServerAliveCountMax 4
    TCPKeepAlive yes
    # Abgebrochene Verbindungen schneller erkennen
    ConnectTimeout 10
EOF
    ok "Host-Eintrag 'mini' angelegt ($MINI_USER@$MINI_HOST)"
fi
echo ""

# ─── 3. Schluessel auf dem Mac Mini hinterlegen ────────────────────────
echo "── 3/4: Schluessel auf Mac Mini hinterlegen ──"
if ssh -o BatchMode=yes -o ConnectTimeout=5 mini true 2>/dev/null; then
    ok "Schluessel-Login funktioniert bereits"
else
    echo "   Einmalige Passwort-Eingabe fuer $MINI_USER auf dem Mac Mini:"
    if ssh-copy-id -i "$KEY.pub" mini; then
        ok "Schluessel hinterlegt"
    else
        fail "Schluessel konnte nicht hinterlegt werden."
        fail "Ist 'Entfernte Anmeldung' auf dem Mac Mini aktiv? (setup-ssh-mac-mini.sh)"
        fail "Ist Tailscale auf beiden Geraeten verbunden?"
        exit 1
    fi
fi
echo ""

# ─── 4. Befehl 'mini' installieren ─────────────────────────────────────
echo "── 4/4: Befehl 'mini' ──"
mkdir -p "$HOME/bin"
cat > "$HOME/bin/mini" <<'EOF'
#!/bin/bash
# JANS AI Hub — Terminal auf dem Mac Mini (SSH + tmux)
# Gebrauch:
#   mini            Dauer-Session 'jans' oeffnen/fortsetzen
#   mini claude     eigene Session 'claude' (dort 'claude' starten)
#   mini <name>     beliebige benannte Session
# Die Session laeuft auf dem Mac Mini weiter, auch wenn die Verbindung
# abbricht — 'mini' erneut aufrufen und man ist wieder mittendrin.
SESSION="${1:-jans}"
exec ssh -t mini "tmux new-session -A -s '$SESSION'"
EOF
chmod +x "$HOME/bin/mini"
ok "~/bin/mini installiert"

# PATH pruefen
case ":$PATH:" in
    *":$HOME/bin:"*) ok "~/bin ist im PATH" ;;
    *)
        SHELL_RC="$HOME/.zshrc"
        if ! grep -q 'HOME/bin' "$SHELL_RC" 2>/dev/null; then
            echo 'export PATH="$HOME/bin:$PATH"' >> "$SHELL_RC"
            warn "~/bin zum PATH hinzugefuegt ($SHELL_RC) — neues Terminal oeffnen"
        else
            warn "~/bin steht in $SHELL_RC — neues Terminal oeffnen"
        fi
        ;;
esac
echo ""

# ─── Abschlusstest ──────────────────────────────────────────────────────
echo "── Test ──"
if ssh -o BatchMode=yes -o ConnectTimeout=8 mini "echo verbunden" 2>/dev/null | grep -q verbunden; then
    ok "Verbindung zum Mac Mini funktioniert"
else
    warn "Verbindungstest fehlgeschlagen — Tailscale auf beiden Geraeten pruefen"
fi
echo ""

echo "============================================"
echo "  Fertig. Ab jetzt:"
echo "    mini            → Terminal auf dem Mac Mini"
echo "    dort: cd ~/Developer/jans-ai-hub && claude"
echo ""
echo "  Verbindung weg? Einfach wieder 'mini' —"
echo "  die Session laeuft auf dem Mini weiter."
echo "============================================"
echo ""
echo "  Optionale Haertung (nachdem der Schluessel-Login laeuft),"
echo "  auf dem Mac Mini in /etc/ssh/sshd_config setzen:"
echo "    PasswordAuthentication no"
echo "  danach: sudo launchctl kickstart -k system/com.openssh.sshd"
