#!/bin/bash
# ============================================================================
# JANS Hub Cockpit — Oeffnen mit Auto-Wahl der besten Quelle
# ============================================================================
# 1. Live-Server des Mac Mini (Tailscale-IP, dann LAN-IP) — immer frischer
#    5-Min-Stand, kein lokaler Build noetig
# 2. Fallback: lokal NAS-first bauen und die Datei oeffnen
# Wird von der Doppelklick-App "JANS Cockpit.app" aufgerufen; funktioniert
# auch direkt im Terminal.
# ============================================================================
set -u

for u in "http://100.120.219.12:8377" "http://192.168.1.210:8377"; do
  if curl -m 2 -sf "$u" >/dev/null 2>&1; then
    open "$u"
    exit 0
  fi
done

# Mini nicht erreichbar — lokal bauen (NAS-first, wie ueberall)
H="/Volumes/daten/jans-ai-hub"
[ -d "$H" ] || H="$HOME/Developer/jans-ai-hub"
NODE_BIN="$(command -v node || true)"
if [ -z "$NODE_BIN" ]; then
  for k in /opt/homebrew/bin/node /usr/local/bin/node; do
    [ -x "$k" ] && NODE_BIN="$k" && break
  done
fi
[ -z "$NODE_BIN" ] && { osascript -e 'display alert "JANS Cockpit" message "Mac Mini nicht erreichbar und node lokal nicht gefunden."' >/dev/null 2>&1; exit 1; }
exec "$NODE_BIN" "$H/webtools/cockpit/build-cockpit.mjs" --hub "$H" --open
