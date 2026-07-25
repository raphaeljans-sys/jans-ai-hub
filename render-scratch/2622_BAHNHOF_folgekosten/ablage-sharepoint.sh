#!/usr/bin/env bash
# ============================================================================
# Studie 2622 — Ablage der AI-Hub-Dokumente in den SharePoint-Projektordner
# ============================================================================
# Kopiert die in diesem Ordner erzeugten Dokumente in die korrekten
# Unterordner des Projektordners (OneDrive-Sync der Library JANS.PROJEKTE).
#
# Auf einer Mac-Station mit OneDrive-Sync ausfuehren:
#   bash ablage-sharepoint.sh
#
# Der Projektordner wird automatisch unter ~/Library/CloudStorage/ gesucht.
# Alternativ Projekt-Root explizit setzen:
#   PROJEKT_ROOT="/Pfad/zu/2622 Bahnhofstrasse 27 Wangen SZ" bash ablage-sharepoint.sh
# ============================================================================
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# --- Projektordner finden -----------------------------------------------------
if [ -n "${PROJEKT_ROOT:-}" ]; then
  ROOT="$PROJEKT_ROOT"
else
  echo "Suche Projektordner unter ~/Library/CloudStorage/ ..."
  ROOT="$(find "$HOME/Library/CloudStorage" -type d -path "*03 Studien/2622 Bahnhofstrasse 27 Wangen SZ" -maxdepth 6 2>/dev/null | head -1)"
fi

if [ -z "${ROOT:-}" ] || [ ! -d "$ROOT" ]; then
  echo "FEHLER: Projektordner '2622 Bahnhofstrasse 27 Wangen SZ' nicht gefunden."
  echo "Ist OneDrive (Library JANS.PROJEKTE) gemountet/synchronisiert?"
  echo "Sonst PROJEKT_ROOT explizit setzen (siehe Kopf dieses Skripts)."
  exit 1
fi
echo "Projektordner: $ROOT"

# --- Zielordner ---------------------------------------------------------------
BEWERTUNG="$ROOT/09_Dokumente/04_Bewertung"
BAURECHT="$ROOT/09_Dokumente/02_Baurecht"
ARBEIT="$ROOT/09_Dokumente/06_Arbeitsdokumente"
mkdir -p "$BEWERTUNG" "$BAURECHT" "$ARBEIT"

# --- Kopieren (mit Mapping) ---------------------------------------------------
copy() { # <ziel> <datei>
  if [ -f "$SRC/$2" ]; then cp -f "$SRC/$2" "$1/" && echo "  -> $1/$2"; else echo "  (fehlt: $2)"; fi
}

echo "Kopiere Kosten-/Kaufpreis-Dokumente nach 04_Bewertung ..."
copy "$BEWERTUNG" "260619_Grobkostenschaetzung_Folgekosten_Bahnhofstrasse-27_Wangen-SZ.pdf"
copy "$BEWERTUNG" "260619_Kaufpreisempfehlung-bereinigt_Bahnhofstrasse-27_Wangen-SZ.pdf"

echo "Kopiere Brandschutz-Vorabklaerung nach 02_Baurecht ..."
copy "$BAURECHT" "260619_Brandschutz-Vorabklaerung_Treppenhaus_Bahnhofstrasse-27_Wangen-SZ.pdf"

echo "Kopiere Repro-Record + Konfig nach 06_Arbeitsdokumente ..."
copy "$ARBEIT" "260619_Repro_Wissensstand_Grobkosten-Kaufpreis_Bahnhofstrasse-27_Wangen-SZ.pdf"
copy "$ARBEIT" "260619_Repro_Wissensstand_Grobkosten-Kaufpreis_Bahnhofstrasse-27_Wangen-SZ.md"
copy "$ARBEIT" "260619_Kostenmodell_Bahnhofstrasse-27_Wangen-SZ.config.json"

echo "Fertig. OneDrive synchronisiert die Dateien automatisch nach SharePoint."
