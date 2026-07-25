#!/bin/bash
# synobsis_batch.sh — ein alternierender Aufbereitungs-Lauf (Mac Mini).
# Stufe 1: naechste Charge Architekten scannen.  Stufe 2: Vektorindex neu bauen.
# Aufruf:  bash synobsis_batch.sh [BATCH]   (Standard 25)
set -euo pipefail

BATCH="${1:-25}"
ROOT="/Volumes/daten/05_Architekten_Synobsis"
KB="/Volumes/daten/jans-ai-hub/wissen/architekten-synobsis"
SCAN_PY="$HOME/.venvs/pdftools/bin/python"        # Stufe 1: pypdf/pillow reichen
EMBED_PY="$HOME/.venvs/synobsis/bin/python"       # Stufe 2: sentence-transformers
LOG="$KB/outputs/batch.log"

stamp() { date "+%Y-%m-%dT%H:%M:%S%z"; }

if [ ! -d "$ROOT" ]; then
  echo "$(stamp) FEHLER: NAS-Quelle nicht erreichbar ($ROOT)" | tee -a "$LOG"
  exit 2
fi

echo "$(stamp) START Batch=$BATCH" | tee -a "$LOG"

# Stufe 1 — Scan-Charge
"$SCAN_PY" "$KB/tools/synobsis_scan.py" --batch "$BATCH" 2>&1 | tee -a "$LOG"

# Stufe 2 — Embeddings (nur wenn venv vorhanden; sonst still ueberspringen)
if [ -x "$EMBED_PY" ]; then
  "$EMBED_PY" "$KB/tools/synobsis_embed.py" 2>&1 | tee -a "$LOG" || \
    echo "$(stamp) WARN: Embedding-Lauf fehlgeschlagen (Stufe 1 ist trotzdem aktuell)" | tee -a "$LOG"
else
  echo "$(stamp) HINWEIS: Stufe-2-venv ($EMBED_PY) fehlt -> nur Stichwort-Suche. Siehe RUNBOOK-MAC-MINI.md" | tee -a "$LOG"
fi

# Stand fuer Logbuch/Status
"$SCAN_PY" "$KB/tools/synobsis_scan.py" --status 2>&1 | tee -a "$LOG"
echo "$(stamp) ENDE" | tee -a "$LOG"
