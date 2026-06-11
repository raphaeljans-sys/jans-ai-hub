#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task (Pendenz) erstellen
# ============================================================================
# Legt eine Pendenz fuer eine Station in deren NAS-Queue ab. Der Sync-Task-Runner
# (launchd, alle 30 Min) bzw. /station-sync arbeitet sie auf der Zielstation ab.
#
# Verwendung:
#   bash sync-task-create.sh <ziel> <titel> <inhalt> [typ]
#
#   typ = shell  (Default) → <inhalt> ist ein Bash-Script
#   typ = prompt           → <inhalt> ist eine Anweisung in Worten; sie laeuft via
#                            dispatch-run.sh (headless claude -p, voller Harness).
#                            prompt-Pendenzen werden NUR auf dem Mac Mini ausgefuehrt
#                            (Host-Weiche im dispatch-run.sh) → fuer rechenintensive,
#                            urteilende Aufgaben die Zielstation mac-mini waehlen.
#
# WICHTIG (Fix 11.06.2026): /tmp ist STATIONSLOKAL. Bei typ=shell wird darum:
#   - ein als <inhalt> uebergebener Script-PFAD automatisch als INHALT eingebettet
#   - jedes im Inhalt referenzierte, lokal existierende /tmp-Script nach
#     sync-tasks/<ziel>/scripts/ kopiert und der Pfad im Task umgeschrieben
#
# Beispiele:
#   bash sync-task-create.sh mac-mini "Zertifikat kopieren" "scp ~/.cert.pem user@host:~/"
#   bash sync-task-create.sh mac-mini "venv einrichten" /tmp/venv-setup.sh   # ← wird eingebettet
#   bash sync-task-create.sh mac-mini "Trainings-Tasks pruefen" \
#        "Lies docs/RUNBOOK-trainings-tasks.md und fuehre TEIL A aus." prompt
# ============================================================================

ZIEL="$1"
TITEL="$2"
INHALT="$3"
TYP="${4:-shell}"

if [ -z "$ZIEL" ] || [ -z "$TITEL" ] || [ -z "$INHALT" ]; then
    echo "Verwendung: $0 <mac-mini|macbook-pro> <titel> <inhalt> [shell|prompt]"
    exit 1
fi

case "$TYP" in
    shell|prompt) ;;
    *) echo "FEHLER: typ muss 'shell' oder 'prompt' sein (war: '$TYP')"; exit 1 ;;
esac

NAS_QUEUE="/Volumes/daten/jans-ai-hub/sync-tasks/$ZIEL"
if [ ! -d "$NAS_QUEUE" ]; then
    echo "FEHLER: Queue-Verzeichnis nicht gefunden: $NAS_QUEUE"
    echo "Ist das NAS gemountet?"
    exit 1
fi

QUELLE=$(hostname -s)
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
FILENAME="${TIMESTAMP}_${TITEL// /-}.md"

# ----------------------------------------------------------------------------
# Stationslokale Pfade aufloesen (Fix 11.06.2026)
# /tmp & Co. existieren nur auf DIESER Station — die Zielstation sieht sie nie.
# Darum: (a) ist <inhalt> selbst ein Script-File, wird sein INHALT eingebettet;
# (b) referenzierte, lokal existierende /tmp-Scripts werden in die NAS-Queue
# (sync-tasks/<ziel>/scripts/) kopiert und der Pfad im Task umgeschrieben;
# (c) fuer verbleibende /tmp-Referenzen gibt es eine Warnung (vermutlich erst
# auf der Zielstation erzeugte Temp-Dateien — das ist legitim).
# ----------------------------------------------------------------------------
if [ "$TYP" = "shell" ]; then
    # (a) Inhalt ist selbst ein lokales Script-File → Inhalt einbetten
    # (Herkunft im Kommentar nur als Basename + Verzeichnis-Wort, damit Schritt (b)
    #  den Kommentar nicht als /tmp-Referenz matcht und unnoetig kopiert)
    if [ -f "$INHALT" ] && [ -r "$INHALT" ]; then
        QUELLPFAD="$INHALT"
        INHALT="# Eingebettet aus $(basename "$QUELLPFAD") [$(dirname "$QUELLPFAD"), Station $QUELLE] — Original war stationslokal
$(cat "$QUELLPFAD")"
        echo "Hinweis: Script-Inhalt aus $QUELLPFAD eingebettet (Pfad waere auf $ZIEL nicht erreichbar)"
    fi

    # (b) referenzierte lokale /tmp-Scripts → auf NAS kopieren, Pfad umschreiben
    SCRIPTS_DIR="$NAS_QUEUE/scripts"
    for PFAD in $(printf '%s\n' "$INHALT" | grep -oE '(/private)?/tmp/[A-Za-z0-9._/-]+' | sort -u); do
        if [ -f "$PFAD" ]; then
            mkdir -p "$SCRIPTS_DIR"
            NAS_KOPIE="$SCRIPTS_DIR/${TIMESTAMP}_$(basename "$PFAD")"
            cp "$PFAD" "$NAS_KOPIE" && chmod +x "$NAS_KOPIE"
            INHALT=${INHALT//"$PFAD"/"$NAS_KOPIE"}
            echo "Hinweis: $PFAD → $NAS_KOPIE kopiert (stationslokaler /tmp-Pfad)"
        fi
    done

    # (c) verbleibende /tmp-Referenzen existieren lokal nicht → nur warnen
    if printf '%s\n' "$INHALT" | grep -qE '(/private)?/tmp/'; then
        echo "WARNUNG: Task referenziert weiterhin /tmp/-Pfade. /tmp ist stationslokal —"
        echo "         nur OK, wenn das Script diese Dateien auf der Zielstation SELBST erzeugt."
    fi
fi

{
    echo "---"
    echo "von: $QUELLE"
    echo "fuer: $ZIEL"
    echo "erstellt: $(date -Iseconds)"
    echo "status: pending"
    echo "typ: $TYP"
    echo "titel: $TITEL"
    echo "---"
    echo ""
    echo "# Sync-Task: $TITEL"
    echo ""
    echo "Erstellt von **$QUELLE** am $(date '+%d.%m.%Y %H:%M')"
    echo ""
    if [ "$TYP" = "prompt" ]; then
        echo "## Anweisung (laeuft via dispatch-run.sh / claude -p, nur Mac Mini)"
        echo ""
        echo "$INHALT"
    else
        echo "## Auszufuehrendes Script"
        echo ""
        echo '```bash'
        echo "$INHALT"
        echo '```'
    fi
    echo ""
    echo "## Kontext"
    echo ""
    echo "Automatisch erstellt auf $QUELLE — nachzuziehen/auszufuehren auf $ZIEL."
} > "$NAS_QUEUE/$FILENAME"

echo "Pendenz erstellt [$TYP]: $NAS_QUEUE/$FILENAME"
