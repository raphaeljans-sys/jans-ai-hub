#!/bin/bash
# ============================================================================
# JANS AI Hub — Sync-Task erstellen
# ============================================================================
# Erstellt eine Aufgabe fuer die andere Station auf dem NAS.
#
# Verwendung:
#   bash sync-task-create.sh <ziel> <titel> <script-inhalt>
#
# Beispiele:
#   bash sync-task-create.sh mac-mini "Zertifikat kopieren" "scp ~/.cert.pem user@host:~/"
#   bash sync-task-create.sh macbook-pro "npm update" "cd ~/Developer/jans-ai-hub && npm install"
# ============================================================================

ZIEL="$1"
TITEL="$2"
SCRIPT="$3"

if [ -z "$ZIEL" ] || [ -z "$TITEL" ]; then
    echo "Verwendung: $0 <mac-mini|macbook-pro> <titel> <script>"
    exit 1
fi

NAS_QUEUE="/Volumes/daten/jans-ai-hub/sync-tasks/$ZIEL"

if [ ! -d "$NAS_QUEUE" ]; then
    echo "FEHLER: Queue-Verzeichnis nicht gefunden: $NAS_QUEUE"
    echo "Ist das NAS gemountet?"
    exit 1
fi

# Hostname der Quell-Station
QUELLE=$(hostname -s)
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
FILENAME="${TIMESTAMP}_${TITEL// /-}.md"

cat > "$NAS_QUEUE/$FILENAME" << EOF
---
von: $QUELLE
fuer: $ZIEL
erstellt: $(date -Iseconds)
status: pending
titel: $TITEL
---

# Sync-Task: $TITEL

Erstellt von **$QUELLE** am $(date '+%d.%m.%Y %H:%M')

## Auszufuehrendes Script

\`\`\`bash
$SCRIPT
\`\`\`

## Kontext

Diese Aufgabe wurde automatisch erstellt, weil auf $QUELLE eine Aenderung
vorgenommen wurde, die auf $ZIEL nachgezogen werden muss.
EOF

echo "✅ Sync-Task erstellt: $NAS_QUEUE/$FILENAME"
