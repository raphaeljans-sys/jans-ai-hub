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
# Frueher Schwester des Dauerschicht-Loops auf dem MacBook Pro. Seit dem Ausbau des
# VOLLGAS-Endlos-Runners (29.07.2026) ist dieser Job der EINZIGE Lern-Taktgeber des Hub;
# der Doppelarbeit-Guard im Prompt ist entsprechend eng gefasst (siehe dort).
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

# --- Zeitfenster 18:00–08:59 plus Versuchs-Slot 13:xx ---------------------------
# ENTSCHEID Raphael 29.07.2026: befristeter Versuch mit EINEM Mittags-Slot (13:30),
# weil zwischen ~07:30 und 23:30 auf keiner Station ein Lern-Loop lief, waehrend das
# Kontingent frei war. Der Slot braucht ZWEI Orte: den launchd-Eintrag in
# ch.jans.nachtschicht.plist UND diese Ausnahme — ohne sie haette der Job um 13:30
# gefeuert und sich hier still beendet (Null-Wirkung, im Log nicht von einem gesunden
# Lauf zu unterscheiden).
# Der Mac Mini traegt tagsueber reale Last (ArchiCAD, Cineware); der Schutz ist das
# Lauf-Gate weiter unten, das bei Speichernot von sich aus abweist.
# RUECKBAU nach dem Versuch (Entscheid Raphael, Grundlage: Liefer-Delta der Woche):
# MITTAG_SLOT auf -1 setzen ODER diese Ausnahme entfernen UND den 13:30-Eintrag aus
# der plist nehmen — wieder beide Orte.
MITTAG_SLOT="${MITTAG_SLOT:-13}"
H=$(date +%H); H=$((10#$H))
if [ "$H" -ge 9 ] && [ "$H" -lt 18 ] && [ "$H" -ne "$MITTAG_SLOT" ]; then
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

# --- Lauf-Gate (stationsweiter Prozess-Deckel) ----------------------------------
# Der Lock oben schuetzt die Nachtschicht nur gegen SICH SELBST. Er verhindert
# nicht, dass ein anderer Mechanismus zeitgleich feuert — belegt 28.07.2026:
# um 00:30 und um 22:30 liefen je zwei Zyklen gleichzeitig, weil nachtschicht
# und ein training-Job denselben Zeitpunkt trafen. Das Gate ist die gemeinsame
# Instanz ueber alle Mechanismen (Rule speicher-deckel, 28.07.2026).
GATE="$HOME/Developer/jans-ai-hub/scripts/lauf-gate.sh"
[ -f "$GATE" ] || GATE="/Volumes/daten/jans-ai-hub/scripts/lauf-gate.sh"
if [ -f "$GATE" ] && ! bash "$GATE" "nachtschicht"; then
    log "Lauf-Gate hat abgewiesen (Station ausgelastet) — Zyklus uebersprungen."
    exit 0
fi

# --- Repo aktualisieren (leise) --------------------------------------------------
cd "$HOME/Developer/jans-ai-hub" 2>/dev/null && git pull --ff-only --quiet 2>/dev/null

log "Zyklus gestartet (Stunde $H)."

PROMPT='Nachtschicht-Zyklus Mac Mini (Fenster 18:00-09:00, dazu der Versuchs-Slot 13:30). Arbeite an genau EINER Aufgabe mit messbarem Ergebnis, nicht an mehreren gleichzeitig.

Prioritaeten (nimm die erste, die faellig ist):
1. remote-tasks/pending/ und sync-tasks/mac-mini/ abarbeiten
2. Mini-exklusive Baustelle: Synobsis Stufe 2 Embeddings (py3.12-venv) fortsetzen, falls offen
3. Fristen-/Pendenzen-Radar aus logbuch/: Ueberfaelliges nur als Entwurf/Zusammenstellung aufbereiten — NIE selbststaendig versenden
4. Naechste faellige Trainingslektion unter wissen/*/training/PROGRAMM.md. Massgeblich fuer «am laengsten nicht trainiert» ist der letzte INHALTLICHE Stand in wiki/ (juengste mtime einer Artikeldatei), NICHT das CHANGELOG-Datum: Struktur-, Register- und Statuspflege setzt den CHANGELOG auf heute, ohne dass ein einziger Artikel gewachsen waere (belegt 29.07.2026 an bauprodukte). Bei aehnlichem Stand zuerst die KB mit den meisten offenen Positionen. Traegt eine PROGRAMM.md einen Stillgelegt-/Ereignis-Trigger-Statuskopf, ist sie kein gueltiges Ziel; Takt-/Drossel-Regeln beachten
5. Offene QUESTIONS.md einer KB recherchieren und als Wiki-Artikel kompilieren
6. Sonst: wissenscheck Phase 1 (unbeaufsichtigt) auf der KB mit dem aeltesten Audit-Datum

Doppelarbeit-Guard (KORRIGIERT 29.07.2026, vollgas-chef-radar): Der VOLLGAS-Endlos-Runner auf dem MacBook Pro ist seit dem 29.07.2026 AUSGEBAUT — die frueher hier behauptete zweite Schicht «rund um die Uhr» gibt es nicht mehr. Du bist der einzige Mechanismus, der diese Liste abarbeitet. Der Guard bleibt bestehen, aber er ist eng zu fassen: Lies das juengste Protokoll unter dispatch/log/ (INHALTLICH, nicht nur den Namen) sowie CHANGELOG.md und Logbuch-Journal der betroffenen KB. Ueberspringe eine Prioritaet NUR, wenn dort heute ein INHALTLICHES Delta belegt ist (neue/gewachsene Datei in wiki/ bzw. outputs/). Ein reiner Struktur-, Status- oder Registereintrag im CHANGELOG ist KEIN erledigtes Training und rechtfertigt kein Ueberspringen. Im Zweifel arbeiten statt ueberspringen — ein doppelt gepruefter Artikel kostet weniger als ein leer verstrichener Slot (belegt 29.07. 13:30: die Prioritaeten 3 und 4 wurden als «abgedeckt» uebersprungen, obwohl bauprodukte mit 55 offenen Positionen seit 28.07. 23:42 unberuehrt lag).

Budget-Disziplin (Lehre aus den Laeufen 00:30/01:30 am 21.07.): Dein Lauf hat ein hartes Budget von 5 USD. Waehle NUR Aufgaben, die inklusive Verifikation und Registerpflege in ~4 USD machbar sind — keine grossen Agent-Fan-outs, keine Recherchen ueber viele Quellen. Ist die naechste faellige Aufgabe erkennbar groesser: NICHT anfangen, sondern in der QUESTIONS.md der KB als «zu gross fuer Nachtschicht-Budget, braucht dedizierten Lauf» vermerken und eine kleinere Aufgabe nehmen. Scheiterte der letzte Lauf an Budget oder Timeout an einer Aufgabe, nimm NIE dieselbe Aufgabe direkt erneut.

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
