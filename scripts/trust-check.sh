#!/bin/bash
# ============================================================================
# JANS AI Hub — Trust-Check (Projekt-Vertrauen fuer headless Laeufe)
# ============================================================================
# DAS PROBLEM, das dieses Script loest (gefunden 29.07.2026):
#
# Claude Code laedt die Projekt-Berechtigungen aus `.claude/settings.json` und die
# Projekt-`CLAUDE.md` nur, wenn das Arbeitsverzeichnis als **vertraut** hinterlegt ist.
# Der Zustand steht in `~/.claude.json` unter `projects[<pfad>].hasTrustDialogAccepted`
# und entsteht normalerweise durch den interaktiven Trust-Dialog. Ein headless
# `claude -p` kann diesen Dialog nicht beantworten — es meldet nur:
#
#     Ignoring N permissions.allow entries from .claude/settings.json:
#     this workspace has not been trusted.
#
# und arbeitet dann OHNE Projekt-Kontext weiter. Das faellt nicht auf: der Lauf endet
# mit rc=0. Belegt im eigenen Log am 27.07.2026 21:52 — `planungsgrundlagen-training`
# antwortete nach 28 s mit Rueckfragen statt zu arbeiten, weil es im Home-Verzeichnis
# lief (`~` traegt ausdruecklich hasTrustDialogAccepted:false).
#
# WAS ES TUT: prueft die Hub-Pfade dieser Station, setzt fehlendes Vertrauen atomar
# und mit Backup, und meldet den Zustand. Idempotent — ein zweiter Lauf aendert nichts.
#
# AUFRUF:
#   bash scripts/trust-check.sh            # pruefen und fehlendes setzen
#   bash scripts/trust-check.sh --check    # NUR pruefen (Exit 1 bei Luecke)
#   bash scripts/trust-check.sh --alle     # zusaetzlich den Mac Mini mitziehen
#
# SICHERHEIT: Vertrauen wird ausschliesslich fuer die unten fest verdrahteten
# Hub-Pfade gesetzt — nie fuer das Home-Verzeichnis, nie fuer einen per Argument
# uebergebenen Pfad. Das Home-Verzeichnis bleibt bewusst untrusted: waere es vertraut,
# bekaeme jede Session von ueberall die vollen Projekt-Berechtigungen.
# ============================================================================
set -uo pipefail

CFG="$HOME/.claude.json"
MINI="raphaeljans@100.120.219.12"
MODE="${1:-sync}"

# Die einzigen Pfade, denen dieses Script Vertrauen aussprechen darf.
PFADE=(
    "$HOME/Developer/jans-ai-hub"      # SSD-Klon: Arbeitsverzeichnis der Loops
    "/Volumes/daten/jans-ai-hub"       # NAS: kanonische Quelle, interaktive Arbeit
)

[ -f "$CFG" ] || { echo "FEHLER: $CFG fehlt — Claude Code hier nie gestartet?"; exit 2; }

# Nur Pfade betrachten, die es auf dieser Station wirklich gibt (das NAS kann
# unterwegs fehlen — dann ist der Eintrag nicht noetig und wuerde nur Rauschen sein).
VORHANDEN=()
for p in "${PFADE[@]}"; do [ -d "$p" ] && VORHANDEN+=("$p"); done
[ "${#VORHANDEN[@]}" -gt 0 ] || { echo "Kein Hub-Pfad auf dieser Station gefunden."; exit 0; }

pruefe() {
    python3 - "$CFG" "${VORHANDEN[@]}" <<'PY'
import json,sys
cfg=sys.argv[1]; pfade=sys.argv[2:]
d=json.load(open(cfg)); pr=d.get('projects',{})
fehlend=[]
for p in pfade:
    v=pr.get(p)
    if isinstance(v,dict) and v.get('hasTrustDialogAccepted') is True:
        print(f"OK      {p}")
    else:
        zustand="kein Eintrag" if v is None else "hasTrustDialogAccepted=%r" % v.get('hasTrustDialogAccepted')
        print(f"LUECKE  {p}  ({zustand})")
        fehlend.append(p)
# Kontrollblick: das Home-Verzeichnis MUSS untrusted bleiben.
import os
home=os.path.expanduser('~')
hv=pr.get(home)
if isinstance(hv,dict) and hv.get('hasTrustDialogAccepted') is True:
    print(f"WARNUNG {home} ist als vertraut markiert — das sollte es NICHT sein.")
sys.exit(1 if fehlend else 0)
PY
}

setze() {
    python3 - "$CFG" "${VORHANDEN[@]}" <<'PY'
import json,sys,os,tempfile,shutil,time
cfg=sys.argv[1]; pfade=sys.argv[2:]
d=json.load(open(cfg))
pr=d.setdefault('projects',{})
geaendert=[]
for p in pfade:
    v=pr.get(p)
    if not isinstance(v,dict):
        v={}; pr[p]=v
    if v.get('hasTrustDialogAccepted') is not True:
        v['hasTrustDialogAccepted']=True
        geaendert.append(p)
if not geaendert:
    print("nichts zu tun — alle Hub-Pfade bereits vertraut.")
    sys.exit(0)
# Backup, dann atomar ersetzen. ~/.claude.json wird auch von laufenden Claude-
# Prozessen geschrieben; ein Teilschreiben wuerde die Datei zerstoeren.
shutil.copy2(cfg, cfg + time.strftime(".bak-%y%m%d-%H%M%S"))
fd,tmp=tempfile.mkstemp(dir=os.path.dirname(cfg), prefix=".claude.json.")
with os.fdopen(fd,'w') as f:
    json.dump(d,f,indent=2)
os.replace(tmp,cfg)
for p in geaendert: print(f"GESETZT {p}")
PY
}

echo "Station: $(hostname -s)  Konfiguration: $CFG"
case "$MODE" in
    --check)
        pruefe; exit $? ;;
    --alle)
        pruefe || setze
        pruefe
        echo
        if ssh -o ConnectTimeout=8 -o BatchMode=yes "$MINI" true 2>/dev/null; then
            ssh "$MINI" "bash /Volumes/daten/jans-ai-hub/scripts/trust-check.sh" 2>&1 | sed 's/^/  mini: /'
        else
            echo "UEBERSPRUNGEN Mac Mini: nicht erreichbar ($MINI)"
        fi ;;
    *)
        pruefe || setze
        pruefe ;;
esac
