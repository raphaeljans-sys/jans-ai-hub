#!/bin/bash
# ============================================================================
# JANS AI Hub — Dispatch-Launcher  (Cowork → projekt-bewusstes Claude Code)
# ============================================================================
# Die Bruecke zwischen Claude Dispatch/Cowork (Handy → Mac) und dem JANS-Harness.
#
# Claude Dispatch verbindet die Handy-App mit der Cowork-Desktop-App auf dem Mac.
# Cowork allein kennt aber die JANS-Skills/Agents/Rules NICHT. Dieses EINE Skript
# fuehrt einen Auftrag headless durch Claude Code IM Projektverzeichnis aus —
# damit greifen automatisch CLAUDE.md + alle Skills + Agents + Rules.
#
#   Handy (Dispatch) → Cowork (Mac Mini) → dispatch-run.sh → claude -p im Repo
#                    → voller JANS-Harness → Ablage + Rueckmeldung
#
# VERWENDUNG (von Cowork / Terminal auf dem Mac Mini):
#   bash ~/Developer/jans-ai-hub/scripts/dispatch-run.sh "<Auftrag in Worten>"
#   echo "<Auftrag>" | bash ~/Developer/jans-ai-hub/scripts/dispatch-run.sh
#
# BEISPIELE:
#   dispatch-run.sh "Erstelle eine Pendenzenliste aus der letzten KISPI-Sitzung"
#   dispatch-run.sh "Ueberschlage das Architektenhonorar Phase 5, Bausumme 3.2 Mio"
#   dispatch-run.sh "Fasse die ungelesenen Mails von rj@raphaeljans.ch zusammen"
#
# SICHERHEITS-TRICHTER: Dieses Skript ist der EINZIGE Eintrittspunkt. Es pinnt
# Verzeichnis, Permission-Modus, Budget und Logging fest. Frei ist nur der
# Auftragstext. Welche Werkzeuge ohne Rueckfrage laufen, steuert die Allow-Liste
# in .claude/settings.json — siehe DISPATCH-README.md.
# ============================================================================

set -uo pipefail

# --- Konfiguration (per ENV ueberschreibbar) --------------------------------
REPO="${DISPATCH_REPO:-$HOME/Developer/jans-ai-hub}"
CLAUDE_BIN="${DISPATCH_CLAUDE_BIN:-claude}"

# Permission-Modus. 'acceptEdits' = Datei-Edits automatisch; alles andere laeuft
# gemaess Allow-Liste in .claude/settings.json (dort bereits Bash/Write/MCP frei).
# Fuer voll entkoppelte Laeufe ggf. 'bypassPermissions' — siehe DISPATCH-README.md.
PERM_MODE="${DISPATCH_PERMISSION_MODE:-acceptEdits}"

# Kostendeckel je Lauf (schuetzt vor Handy-Vertipper / Endlosschleife).
MAX_BUDGET="${DISPATCH_MAX_BUDGET_USD:-5}"

# Designierter Dispatch-Endpunkt: NUR diese Station fuehrt Handy-Auftraege aus.
# Der Mac Mini ist Always-On (sleep 0) → die Strecke steht nicht still, wenn das
# MacBook unterwegs zugeklappt ist. Bewusste Ausnahme: DISPATCH_ALLOW_ANY_HOST=1.
PRIMARY_HOST="${DISPATCH_PRIMARY_HOST:-Macmini}"

# --- Lokale Secrets laden (NICHT in Git) ------------------------------------
# Ermoeglicht headless-Betrieb via ANTHROPIC_API_KEY ohne OAuth-Login. Die Datei
# liegt NUR lokal auf der Station (chmod 600), nie auf NAS/GitHub. Inhalt z.B.:
#   ANTHROPIC_API_KEY=sk-ant-...
if [ -f "$HOME/.jans-dispatch.env" ]; then
    set -a; . "$HOME/.jans-dispatch.env"; set +a
fi

# Log-/Audit-Verzeichnis: NAS (von jeder Station + Handy einsehbar), Fallback lokal.
# Direkt das NAS-Verzeichnis anlegen versuchen; nur bei Fehlschlag (NAS nicht
# gemountet) lokal ausweichen.
LOG_DIR="${DISPATCH_LOG_DIR:-/Volumes/daten/jans-ai-hub/dispatch/log}"
if ! mkdir -p "$LOG_DIR" 2>/dev/null; then
    LOG_DIR="$HOME/.jans-dispatch-log"
    mkdir -p "$LOG_DIR"
fi

# --- PATH abhaerten ---------------------------------------------------------
# Cowork (GUI-App) und nicht-interaktive Shells haben oft kein Homebrew/node im
# PATH. claude ist ein node-Skript (#!/usr/bin/env node) → ohne node => Exit 127.
# Homebrew/Node-/lokale Bin-Pfade voranstellen, damit claude UND node gefunden werden.
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.bun/bin:$HOME/.claude/local:$PATH"

# --- Auftrag einlesen (Argumente ODER stdin) --------------------------------
if [ "$#" -gt 0 ]; then
    TASK="$*"
else
    TASK="$(cat)"
fi
# fuehrende/abschliessende Leerzeichen trimmen
TASK="$(printf '%s' "$TASK" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"

if [ -z "$TASK" ]; then
    echo "❌ Kein Auftrag uebergeben."
    echo "   Verwendung: dispatch-run.sh \"<Auftrag in Worten>\""
    exit 2
fi

# --- Claude-CLI auffinden ---------------------------------------------------
if ! command -v "$CLAUDE_BIN" >/dev/null 2>&1; then
    # haeufige Installationsorte ergaenzen (Cowork hat ggf. ein schlankes PATH)
    for p in "$HOME/.local/bin/claude" "/opt/homebrew/bin/claude" "/usr/local/bin/claude" "$HOME/.claude/local/claude"; do
        [ -x "$p" ] && { CLAUDE_BIN="$p"; break; }
    done
fi
if ! command -v "$CLAUDE_BIN" >/dev/null 2>&1 && [ ! -x "$CLAUDE_BIN" ]; then
    echo "❌ Claude-CLI nicht gefunden (PATH/CLAUDE_BIN pruefen)."
    echo "   Setze ggf. DISPATCH_CLAUDE_BIN auf den vollen Pfad."
    exit 4
fi

# --- Repo pruefen + hineinwechseln ------------------------------------------
if [ ! -d "$REPO/.claude" ]; then
    echo "❌ JANS-Repo nicht gefunden unter: $REPO"
    echo "   (DISPATCH_REPO auf den richtigen Pfad setzen.)"
    exit 3
fi
cd "$REPO" || { echo "❌ cd $REPO fehlgeschlagen"; exit 3; }

# --- Designierter-Endpunkt-Weiche v2: WEITERLEITEN statt abblocken ----------
# Trifft der Auftrag eine andere Station (z.B. das MacBook, weil Dispatch dessen
# Cowork gewaehlt hat), wird er per SSH an den designierten Endpunkt (Mac Mini,
# Always-On) durchgereicht — die Ausfuehrung landet IMMER dort, das Ergebnis
# fliesst durch die SSH-Verbindung zurueck in den Dispatch-Thread. Das harte
# Abblocken (v1, Exit 5) schickte Cowork in eine Endlosschleife.
#   DISPATCH_ALLOW_ANY_HOST=1 → lokal ausfuehren (bewusste Ausnahme)
#   DISPATCH_NO_FORWARD=1     → altes Verhalten: hart abbrechen (Exit 5)
#   DISPATCH_FORWARDED=1      → intern: Rekursionsschutz auf der Zielseite
PRIMARY_SSH="${DISPATCH_PRIMARY_SSH:-raphaeljans@100.120.219.12}"
CURRENT_HOST="$(hostname -s)"
if [ "$CURRENT_HOST" != "$PRIMARY_HOST" ] && [ "${DISPATCH_ALLOW_ANY_HOST:-0}" != "1" ]; then
    if [ "${DISPATCH_FORWARDED:-0}" = "1" ] || [ "${DISPATCH_NO_FORWARD:-0}" = "1" ]; then
        echo "⛔ Dispatch-Endpunkt ist '$PRIMARY_HOST', nicht '$CURRENT_HOST' — keine Weiterleitung (Schutz)."
        exit 5
    fi
    echo "↪  '$CURRENT_HOST' ist nicht der Endpunkt — leite an '$PRIMARY_HOST' weiter ($PRIMARY_SSH) ..."
    # Auftrag via stdin uebergeben (umgeht alle Quoting-Fallen); Remote-Skript
    # liest stdin, wenn keine Argumente kommen.
    printf '%s' "$TASK" | ssh -o BatchMode=yes -o ConnectTimeout=10 "$PRIMARY_SSH" \
        "DISPATCH_FORWARDED=1 bash ~/Developer/jans-ai-hub/scripts/dispatch-run.sh"
    RC_FWD=$?
    if [ "$RC_FWD" -ne 0 ] && [ "$RC_FWD" -eq 255 ]; then
        echo "❌ Weiterleitung fehlgeschlagen: '$PRIMARY_HOST' per SSH nicht erreichbar ($PRIMARY_SSH)."
        echo "   Ist der Mac Mini wach und Tailscale aktiv?"
    fi
    exit "$RC_FWD"
fi

# --- Lauf-ID + Logfile ------------------------------------------------------
RUN_ID="$(date +%Y%m%d-%H%M%S)-$$"
LOG_FILE="$LOG_DIR/${RUN_ID}.md"
HOST="$(hostname -s)"

{
    echo "---"
    echo "run_id: $RUN_ID"
    echo "host: $HOST"
    echo "primary_host: $PRIMARY_HOST"
    echo "host_match: $([ "$HOST" = "$PRIMARY_HOST" ] && echo ja || echo NEIN)"
    echo "repo: $REPO"
    echo "gestartet: $(date -Iseconds)"
    echo "permission_mode: $PERM_MODE"
    echo "max_budget_usd: $MAX_BUDGET"
    echo "---"
    echo ""
    echo "# Dispatch-Auftrag"
    echo ""
    echo "$TASK"
    echo ""
    echo "# Ergebnis"
    echo ""
} > "$LOG_FILE"

echo "🛰️  JANS Dispatch — Lauf $RUN_ID"
echo "    Auftrag : $TASK"
echo "    Repo    : $REPO"
echo "    Modus   : $PERM_MODE   Budget: \$$MAX_BUDGET"
echo "    Log     : $LOG_FILE"
echo "────────────────────────────────────────────────────────────"

# --- Headless-Lauf durch den JANS-Harness -----------------------------------
# stdin auf /dev/null: der Auftrag steckt im Argument; claude soll nicht 3s auf
# pipe-stdin warten (Warnung "no stdin data received in 3s").
"$CLAUDE_BIN" -p "$TASK" \
    --permission-mode "$PERM_MODE" \
    --max-budget-usd "$MAX_BUDGET" \
    --output-format text < /dev/null 2>&1 | tee -a "$LOG_FILE"
RC=${PIPESTATUS[0]}

{
    echo ""
    echo "---"
    echo "beendet: $(date -Iseconds)"
    echo "exit_code: $RC"
} >> "$LOG_FILE"

echo "────────────────────────────────────────────────────────────"
if [ "$RC" -eq 0 ]; then
    echo "✅ Dispatch erledigt (Lauf $RUN_ID)."
else
    echo "⚠️  Dispatch mit Exit-Code $RC beendet (Lauf $RUN_ID)."
fi
echo "   Protokoll: $LOG_FILE"
exit "$RC"
