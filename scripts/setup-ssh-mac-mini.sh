#!/bin/bash
# ============================================================================
# JANS AI Hub — SSH-Server Setup auf dem Mac Mini
# ============================================================================
# Richtet den Mac Mini als SSH-Ziel ein, damit vom MacBook Pro aus per
# Terminal (statt Bildschirmfreigabe) gearbeitet werden kann.
# Konzept: docs/konzepte/260712-Mac-Mini-Terminal-Verbindung.md
#
# Ausfuehren AUF DEM MAC MINI:
#   bash ~/Developer/jans-ai-hub/scripts/setup-ssh-mac-mini.sh
#
# Schritte:
#   1. «Entfernte Anmeldung» (SSH-Server) aktivieren
#   2. tmux installieren (haelt Sessions bei Verbindungsabbruch am Leben)
#   3. tmux-Grundkonfiguration anlegen
#   4. Erreichbarkeit anzeigen (LAN + Tailscale)
# ============================================================================

set -u

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

ok()   { echo -e "${GREEN}✅ $1${NC}"; }
warn() { echo -e "${YELLOW}⚠️  $1${NC}"; }
fail() { echo -e "${RED}❌ $1${NC}"; }

echo "============================================"
echo "  JANS AI Hub — SSH-Setup Mac Mini"
echo "============================================"
echo ""

# ─── 1. Entfernte Anmeldung (SSH-Server) ───────────────────────────────
echo "── 1/4: Entfernte Anmeldung (SSH) aktivieren ──"
if sudo systemsetup -getremotelogin 2>/dev/null | grep -qi "On"; then
    ok "Entfernte Anmeldung ist bereits aktiv"
else
    if sudo systemsetup -setremotelogin on 2>/dev/null; then
        ok "Entfernte Anmeldung aktiviert"
    else
        warn "Konnte Entfernte Anmeldung nicht per Befehl aktivieren (macOS-Schutz/TCC)."
        warn "Bitte manuell einschalten:"
        warn "  Systemeinstellungen > Allgemein > Teilen > Entfernte Anmeldung"
        warn "  Zugriff erlauben fuer: nur Benutzer '$(whoami)'"
    fi
fi
echo ""

# ─── 2. tmux installieren ───────────────────────────────────────────────
echo "── 2/4: tmux installieren ──"
# Homebrew liegt unter /opt/homebrew (Apple Silicon) bzw. /usr/local (Intel).
# In nicht-interaktiven SSH-Sessions fehlt dieser Pfad im PATH — deshalb
# explizit einbinden, sonst meldet das Script faelschlich "Homebrew fehlt".
for BREW_BIN in /opt/homebrew/bin/brew /usr/local/bin/brew; do
    if [ -x "$BREW_BIN" ]; then
        eval "$("$BREW_BIN" shellenv)"
        break
    fi
done
if command -v tmux >/dev/null 2>&1; then
    ok "tmux vorhanden ($(tmux -V))"
elif command -v brew >/dev/null 2>&1; then
    brew install tmux && ok "tmux installiert ($(tmux -V))" || fail "tmux-Installation fehlgeschlagen"
else
    fail "Homebrew fehlt — zuerst Homebrew installieren, dann: brew install tmux"
fi
echo ""

# ─── 3. tmux-Grundkonfiguration ────────────────────────────────────────
echo "── 3/4: tmux-Grundkonfiguration ──"
TMUX_CONF="$HOME/.tmux.conf"
if [ -f "$TMUX_CONF" ] && grep -q "JANS" "$TMUX_CONF" 2>/dev/null; then
    ok "~/.tmux.conf bereits vorhanden (JANS-Block)"
elif [ -f "$TMUX_CONF" ]; then
    warn "~/.tmux.conf existiert bereits (fremder Inhalt) — wird nicht angefasst"
else
    cat > "$TMUX_CONF" <<'EOF'
# JANS AI Hub — tmux Grundkonfiguration
set -g mouse on
set -g history-limit 50000
set -g default-terminal "screen-256color"
set -g status-style "bg=colour236,fg=colour248"
set -g status-left "[#S] "
setw -g automatic-rename on
EOF
    ok "~/.tmux.conf angelegt (Maus, 50k Scrollback)"
fi
echo ""

# ─── 4. Erreichbarkeit anzeigen ────────────────────────────────────────
echo "── 4/4: Erreichbarkeit ──"
LAN_IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "unbekannt")
echo "   LAN:       $LAN_IP (erwartet: 192.168.1.210)"
if command -v tailscale >/dev/null 2>&1; then
    TS_IP=$(tailscale ip -4 2>/dev/null | head -1)
    echo "   Tailscale: ${TS_IP:-nicht verbunden} (erwartet: 100.120.219.12)"
elif [ -x "/Applications/Tailscale.app/Contents/MacOS/Tailscale" ]; then
    TS_IP=$(/Applications/Tailscale.app/Contents/MacOS/Tailscale ip -4 2>/dev/null | head -1)
    echo "   Tailscale: ${TS_IP:-nicht verbunden} (erwartet: 100.120.219.12)"
else
    warn "Tailscale nicht gefunden — extern ist der Mac Mini dann nicht erreichbar"
fi
echo ""

echo "============================================"
echo "  Fertig. Naechster Schritt AUF DEM MACBOOK:"
echo "  bash ~/Developer/jans-ai-hub/scripts/setup-ssh-macbook.sh"
echo "============================================"
