#!/bin/bash
# ============================================================================
# JANS AI Hub — Mac-Mini-Nachtschicht (Fenster 18:00–09:00)
# ============================================================================
# Auftrag Raphael 20.07.2026: Der Mac Mini arbeitet neu in den Abend- und
# Nachtstunden (18:00–09:00) als Dauerschicht. launchd (ch.jans.nachtschicht,
# NUR auf dem Mac Mini installiert) startet dieses Skript stuendlich um :30;
# ausserhalb des Fensters beendet es sich sofort und kostenlos.
#
# Ein Lauf = EIN Arbeitszyklus (eine Aufgabe, messbares Ergebnis) durch den
# vollen JANS-Harness via dispatch-run.sh (Budget-Deckel, Logging auf NAS).
# Schwester des Dauerschicht-/loop auf dem MacBook Pro — mit Doppelarbeit-Guard.
#
# Installation (Mac Mini): Plist ~/Library/LaunchAgents/ch.jans.nachtschicht.plist
# Log: ~/Library/Logs/ch.jans.nachtschicht.log + dispatch/log auf dem NAS
# ============================================================================

set -uo pipefail

LOGFILE="$HOME/Library/Logs/ch.jans.nachtschicht.log"
log() { echo "$(date -Iseconds) $*" >> "$LOGFILE" 2>/dev/null; }

# --- Nur auf dem Mac Mini ----------------------------------------------------
HOST="$(hostname -s)"
if [ "$HOST" != "Macmini" ] && [ "${NACHTSCHICHT_ALLOW_ANY_HOST:-0}" != "1" ]; then
    echo "Nachtschicht laeuft nur auf dem Mac Mini (aktuell: $HOST)."
    exit 0
fi

# --- Zeitfenster 18:00–08:59 ---------------------------------------------------
H=$(date +%H); H=$((10#$H))
if [ "$H" -ge 9 ] && [ "$H" -lt 18 ]; then
    exit 0
fi

# --- NAS-Pflicht ---------------------------------------------------------------
if [ ! -d /Volumes/daten/jans-ai-hub/wissen ]; then
    log "NAS nicht gemountet — Zyklus uebersprungen."
    exit 0
fi

# --- Ueberlappungsschutz (ein Zyklus aufs Mal) ----------------------------------
LOCK="/tmp/ch.jans.nachtschicht.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    log "Vorheriger Zyklus laeuft noch — uebersprungen."
    exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

# --- Repo aktualisieren (leise) --------------------------------------------------
cd "$HOME/Developer/jans-ai-hub" 2>/dev/null && git pull --ff-only --quiet 2>/dev/null

log "Zyklus gestartet (Stunde $H)."

PROMPT='Nachtschicht-Zyklus Mac Mini (Fenster 18:00-09:00). Arbeite an genau EINER Aufgabe mit messbarem Ergebnis, nicht an mehreren gleichzeitig.

Prioritaeten (nimm die erste, die faellig ist):
1. remote-tasks/pending/ und sync-tasks/mac-mini/ abarbeiten
2. Mini-exklusive Baustelle: Synobsis Stufe 2 Embeddings (py3.12-venv) fortsetzen, falls offen
3. Fristen-/Pendenzen-Radar aus logbuch/: Ueberfaelliges nur als Entwurf/Zusammenstellung aufbereiten — NIE selbststaendig versenden
4. Naechste faellige Trainingslektion unter wissen/*/training/PROGRAMM.md (KB, die am laengsten nicht trainiert wurde; Takt-/Drossel-Regeln beachten)
5. Offene QUESTIONS.md einer KB recherchieren und als Wiki-Artikel kompilieren
6. Sonst: wissenscheck Phase 1 (unbeaufsichtigt) auf der KB mit dem aeltesten Audit-Datum

Doppelarbeit-Guard: Der Dauerschicht-Loop auf dem MacBook Pro arbeitet dieselbe Liste rund um die Uhr. Lies darum IMMER zuerst CHANGELOG.md und Logbuch-Journal der betroffenen KB; ist die Aufgabe erledigt oder erkennbar in Arbeit, nimm die naechste Prioritaet.

Jeder Zyklus endet mit: Ergebnis in wiki/ bzw. outputs/ auf dem NAS, CHANGELOG-Eintrag, eine Journalzeile im Logbuch (der NAS committet sich selbst, kein Git ueber SMB).

Harte Grenzen: nur Aktionen gemaess logbuch/AKTIONS-WHITELIST.md. Nie E-Mails versenden, nichts publizieren, nichts buchen, nichts loeschen, keine Einkaeufe. Wenn keine sinnvolle Aufgabe ansteht: in einem Satz begruenden und sauber beenden statt Beschaeftigung zu erfinden.'

# Background-Agenten brauchen Zeit zum Fertigschreiben: Der Lauf 21.07. 00:30 wurde
# nach dem 600-s-Default terminiert, BEVOR der Orchestrator Verifikation/Register/Commit
# ausfuehren konnte — alle Agent-Ergebnisse verloren. 30 Min Ceiling; der Lock oben
# verhindert Ueberlappung mit dem naechsten Stundenzyklus (der dann sauber uebersprungen wird).
DISPATCH_MAX_BUDGET_USD="${NACHTSCHICHT_BUDGET_USD:-5}" \
CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS="${NACHTSCHICHT_BG_WAIT_MS:-1800000}" \
    bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" "$PROMPT"
RC=$?

log "Zyklus beendet (Exit $RC)."
exit "$RC"
