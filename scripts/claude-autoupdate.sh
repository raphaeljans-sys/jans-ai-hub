#!/bin/bash
# ============================================================================
# JANS AI Hub — Claude Auto-Update (pro Station)
# ============================================================================
# Haelt auf jeder Arbeitsstation die Claude-Installationen aktuell:
#
#   1. Claude Code CLI (Homebrew-Cask "claude-code" ODER Native-Installer)
#      → Homebrew-Installationen aktualisieren sich NICHT selbst; hier wird
#        nightly "brew upgrade --cask claude-code" ausgefuehrt.
#   2. Claude Desktop App (/Applications/Claude.app)
#      → Die App laedt Updates selbst herunter (Squirrel/ShipIt), wendet sie
#        aber erst beim Neustart an ("Neu starten, um zu aktualisieren").
#        Liegt ein Update bereit UND laeuft die App, wird sie nachts sanft
#        beendet (SIGTERM, kein TCC noetig) und versteckt neu gestartet.
#
# Aufruf:   bash claude-autoupdate.sh            (launchd, taeglich 05:15)
#           bash claude-autoupdate.sh --status   (nur Stand anzeigen)
#           bash claude-autoupdate.sh --nur-cli  (Desktop-Neustart ueberspringen,
#                                                 z.B. wenn interaktiv getestet wird)
# Install:  bash install-claude-autoupdate.sh
# Log:      NAS logs/claude-autoupdate/<station>.log
#           (Fallback ~/Library/Logs/jans-claude-autoupdate.log ohne NAS)
# ============================================================================
set -u
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/.local/bin:$PATH"

NAS="/Volumes/daten/jans-ai-hub"
HOST=$(hostname -s | tr '[:upper:]' '[:lower:]')
case "$HOST" in
  *mini*) ME="mac-mini" ;;
  *macbook*|*mbp*) ME="macbook-pro" ;;
  *) ME="$HOST" ;;
esac

if [ -d "$NAS" ]; then
    LOGDIR="$NAS/logs/claude-autoupdate"
else
    LOGDIR="$HOME/Library/Logs"
fi
mkdir -p "$LOGDIR" 2>/dev/null
LOG="$LOGDIR/${ME}.log"
[ -d "$NAS" ] || LOG="$HOME/Library/Logs/jans-claude-autoupdate.log"

log() { echo "$(date '+%d.%m.%Y %H:%M:%S') [$ME] $*" >> "$LOG"; }

# ----------------------------------------------------------------------------
# Status-Erhebung
# ----------------------------------------------------------------------------
DESKTOP_APP="/Applications/Claude.app"
SHIPIT_DIR="$HOME/Library/Caches/com.anthropic.claudefordesktop.ShipIt"

desktop_version() {
    plutil -extract CFBundleShortVersionString raw "$DESKTOP_APP/Contents/Info.plist" 2>/dev/null || echo "n/a"
}
desktop_update_pending() {
    # Squirrel/ShipIt legt heruntergeladene Updates als update.* im Cache ab
    ls -d "$SHIPIT_DIR"/update.* >/dev/null 2>&1
}
cli_version() {
    # Watchdog (17.08.2026): eine gewedgete CLI-Fassung laesst `claude --version`
    # NIE zurueckkehren. Belegt am Cask 2.1.224 — die Laeufe vom 15.08. und
    # 16.08. 05:15 blieben genau hier stehen, der zweite hing 19 h 45 min und
    # hielt den naechsten Takt blockiert (launchd startet keine zweite Instanz).
    # `timeout` gibt es auf diesen Stationen nicht, deshalb eigener Watchdog.
    local out tmp pid i
    tmp=$(mktemp -t claude-cliver) || { echo "n/a"; return; }
    command claude --version >"$tmp" 2>/dev/null &
    pid=$!
    for i in $(seq 1 20); do
        kill -0 "$pid" 2>/dev/null || break
        sleep 1
    done
    if kill -0 "$pid" 2>/dev/null; then
        pkill -9 -P "$pid" 2>/dev/null
        kill -9 "$pid" 2>/dev/null
        wait "$pid" 2>/dev/null
        rm -f "$tmp"
        echo "n/a (Zeitueberschreitung nach 20 s)"
        return
    fi
    wait "$pid" 2>/dev/null
    out=$(head -1 "$tmp" 2>/dev/null)
    rm -f "$tmp"
    if [ -n "$out" ]; then echo "$out"; else echo "n/a"; fi
}

if [ "${1:-}" = "--status" ]; then
    echo "Station:        $ME"
    echo "CLI:            $(cli_version)"
    echo "Desktop-App:    $(desktop_version)"
    if desktop_update_pending; then
        echo "Desktop-Update: BEREIT (wartet auf Neustart)"
    else
        echo "Desktop-Update: keines pendent"
    fi
    exit 0
fi

log "=== Lauf gestartet ==="

# ----------------------------------------------------------------------------
# 1. Claude Code CLI aktualisieren
# ----------------------------------------------------------------------------
CLI_VOR=$(cli_version)

if command -v brew >/dev/null 2>&1 && brew list --cask claude-code >/dev/null 2>&1; then
    # Homebrew-Installation: aktualisiert sich nicht selbst → brew upgrade
    brew update --quiet >> "$LOG" 2>&1
    if brew outdated --cask --quiet 2>/dev/null | grep -qx "claude-code"; then
        if brew upgrade --cask claude-code >> "$LOG" 2>&1; then
            log "CLI: $CLI_VOR → $(cli_version) (brew upgrade ok)"
        else
            log "CLI: brew upgrade FEHLGESCHLAGEN (Details oben im Log)"
        fi
    else
        log "CLI: $CLI_VOR — bereits aktuell (brew)"
    fi
    # Claude Desktop ebenfalls via brew installiert? Dann mitziehen.
    if brew list --cask claude >/dev/null 2>&1 && brew outdated --cask --quiet 2>/dev/null | grep -qx "claude"; then
        brew upgrade --cask claude >> "$LOG" 2>&1 && log "Desktop-App via brew aktualisiert"
    fi
elif [ -x "$HOME/.local/bin/claude" ]; then
    # Native-Installer: bringt eigenen Updater mit
    if command claude update >> "$LOG" 2>&1; then
        log "CLI: $CLI_VOR → $(cli_version) (claude update)"
    else
        log "CLI: claude update FEHLGESCHLAGEN"
    fi
elif CLI_BIN=$(command -v claude 2>/dev/null) && [ -n "$CLI_BIN" ] \
     && CLI_REAL=$(readlink -f "$CLI_BIN" 2>/dev/null || echo "$CLI_BIN") \
     && case "$CLI_REAL" in */node_modules/@anthropic-ai/claude-code/*) true ;; *) false ;; esac \
     && command -v npm >/dev/null 2>&1; then
    # npm-global-Installation (z.B. Mac Mini: npm-Prefix /opt/homebrew — sieht wie
    # eine brew-Installation aus, ist aber KEIN Cask; der brew-Zweig oben greift
    # deshalb nicht). Aufgenommen 30.07.2026, vollgas-radar: ohne diesen Zweig
    # meldete der Lauf jede Nacht still «keine bekannte Installation gefunden»
    # und der Mini blieb auf 2.1.207 stehen, waehrend er die ganze Lern-Last trug.
    if npm install -g @anthropic-ai/claude-code@latest >> "$LOG" 2>&1; then
        log "CLI: $CLI_VOR → $(cli_version) (npm -g, Prefix $(npm prefix -g 2>/dev/null))"
    else
        log "CLI: npm -g update FEHLGESCHLAGEN (Details oben im Log)"
    fi
else
    log "CLI: keine bekannte Installation gefunden — uebersprungen (geprueft: brew-Cask, ~/.local/bin, npm-global)"
fi

# ----------------------------------------------------------------------------
# 2. Claude Desktop App: pendentes Update durch sanften Neustart anwenden
# ----------------------------------------------------------------------------
if [ "${1:-}" = "--nur-cli" ]; then
    log "Desktop: uebersprungen (--nur-cli)"
elif [ -d "$DESKTOP_APP" ]; then
    V_VOR=$(desktop_version)
    if desktop_update_pending; then
        if pgrep -xq "Claude"; then
            log "Desktop: Update pendent ($V_VOR laeuft) → sanfter Neustart"
            # SIGTERM = sauberes Beenden (Electron), ShipIt installiert beim Quit
            pkill -TERM -x "Claude"
            for i in $(seq 1 30); do
                pgrep -xq "Claude" || break
                sleep 1
            done
            if pgrep -xq "Claude"; then
                log "Desktop: App beendet sich nicht (ungesicherte Arbeit?) — KEIN kill -9, abgebrochen"
            else
                sleep 5   # ShipIt Zeit zum Austauschen des Bundles geben
                open -g -j -a "Claude" 2>>"$LOG"
                sleep 10
                log "Desktop: $V_VOR → $(desktop_version) (neu gestartet, versteckt)"
            fi
        else
            log "Desktop: Update pendent, App laeuft nicht — wird beim naechsten Start angewendet"
        fi
    else
        log "Desktop: $V_VOR — kein Update pendent"
    fi
else
    log "Desktop: Claude.app nicht installiert — uebersprungen"
fi

# ----------------------------------------------------------------------------
# Log auf 500 Zeilen begrenzen
# ----------------------------------------------------------------------------
if [ -f "$LOG" ] && [ "$(wc -l < "$LOG")" -gt 500 ]; then
    tail -n 400 "$LOG" > "$LOG.tmp" && mv "$LOG.tmp" "$LOG"
fi

log "=== Lauf beendet ==="
exit 0
