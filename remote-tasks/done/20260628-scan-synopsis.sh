#!/bin/bash
# ============================================================================
# Remote-Task: Scan 05_Architekten_Synobsis
# ============================================================================
# Durchsucht den NAS-Ordner und erstellt eine komplette Strukturanalyse
# fuer die geplante Referenzbibliothek "Skriptorientiertes Entwerfen".
# ============================================================================

RESULT_DIR="${1:-.}"

# Moegliche Pfade (Tippfehler-Varianten beruecksichtigen)
NAS_BASE="/Volumes/daten"
CANDIDATES=(
    "$NAS_BASE/05_Architekten_Synobsis"
    "$NAS_BASE/05_Architekten_Synopsis"
    "$NAS_BASE/05 Architekten Synobsis"
    "$NAS_BASE/05 Architekten Synopsis"
)

SRC=""
for C in "${CANDIDATES[@]}"; do
    if [ -d "$C" ]; then
        SRC="$C"
        break
    fi
done

# Falls nicht gefunden: alle Top-Level-Ordner auflisten
if [ -z "$SRC" ]; then
    echo "WARNUNG: Keinen passenden Ordner gefunden." > "$RESULT_DIR/output.log"
    echo "Verfuegbare Ordner auf NAS:" >> "$RESULT_DIR/output.log"
    ls -1 "$NAS_BASE/" >> "$RESULT_DIR/output.log" 2>&1
    echo "" >> "$RESULT_DIR/output.log"
    echo "Suche nach *Architekt* oder *Synob* oder *Synop*:" >> "$RESULT_DIR/output.log"
    find "$NAS_BASE" -maxdepth 2 -iname "*architekt*" -o -iname "*synob*" -o -iname "*synop*" 2>/dev/null >> "$RESULT_DIR/output.log"
    echo "not_found" > "$RESULT_DIR/status.txt"
    exit 1
fi

echo "Gefunden: $SRC"
echo "Scan gestartet: $(date -Iseconds)"
echo ""

# --- 1. Ordnerstruktur (Baum, max 4 Ebenen) ---
echo "=== ORDNERSTRUKTUR (4 Ebenen) ===" > "$RESULT_DIR/ordnerstruktur.txt"
echo "Quelle: $SRC" >> "$RESULT_DIR/ordnerstruktur.txt"
echo "" >> "$RESULT_DIR/ordnerstruktur.txt"
find "$SRC" -maxdepth 4 -type d | sed "s|$SRC|.|" | sort >> "$RESULT_DIR/ordnerstruktur.txt"

# --- 2. Alle Dateien mit Groesse und Typ ---
echo "=== DATEILISTE ===" > "$RESULT_DIR/dateiliste.txt"
find "$SRC" -type f -exec stat -f "%z %N" {} \; 2>/dev/null | sed "s|$SRC/||" | sort -k2 > "$RESULT_DIR/dateiliste.txt"
# Fallback fuer Linux-stat (falls auf anderem System)
if [ ! -s "$RESULT_DIR/dateiliste.txt" ]; then
    find "$SRC" -type f -printf "%s %P\n" 2>/dev/null | sort -k2 > "$RESULT_DIR/dateiliste.txt"
fi

# --- 3. Dateitype-Statistik ---
echo "=== DATEITYPEN-STATISTIK ===" > "$RESULT_DIR/dateitypen.txt"
find "$SRC" -type f | sed 's/.*\.//' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -rn >> "$RESULT_DIR/dateitypen.txt"

# --- 4. Groessenverteilung ---
echo "=== GROESSENVERTEILUNG ===" > "$RESULT_DIR/groessenverteilung.txt"
TOTAL=$(find "$SRC" -type f | wc -l | tr -d ' ')
echo "Gesamtanzahl Dateien: $TOTAL" >> "$RESULT_DIR/groessenverteilung.txt"
echo "" >> "$RESULT_DIR/groessenverteilung.txt"
echo "Top 20 groesste Dateien:" >> "$RESULT_DIR/groessenverteilung.txt"
find "$SRC" -type f -exec stat -f "%z %N" {} \; 2>/dev/null | sort -rn | head -20 | while read -r SIZE NAME; do
    HR=$(echo "$SIZE" | awk '{ if ($1>=1073741824) printf "%.1f GB", $1/1073741824; else if ($1>=1048576) printf "%.1f MB", $1/1048576; else if ($1>=1024) printf "%.1f KB", $1/1024; else printf "%d B", $1 }')
    echo "  $HR  $(echo "$NAME" | sed "s|$SRC/||")"
done >> "$RESULT_DIR/groessenverteilung.txt"

# --- 5. Namenskonventionen ---
echo "=== NAMENSKONVENTIONEN ===" > "$RESULT_DIR/namenskonventionen.txt"
echo "Beispiel-Dateinamen (erste 50):" >> "$RESULT_DIR/namenskonventionen.txt"
find "$SRC" -type f -maxdepth 3 | head -50 | sed "s|$SRC/||" >> "$RESULT_DIR/namenskonventionen.txt"
echo "" >> "$RESULT_DIR/namenskonventionen.txt"
echo "Unterordner-Namen (Ebene 1):" >> "$RESULT_DIR/namenskonventionen.txt"
ls -1 "$SRC" >> "$RESULT_DIR/namenskonventionen.txt"

# --- 6. Zusammenfassung ---
DIRS=$(find "$SRC" -type d | wc -l | tr -d ' ')
DU_TOTAL=$(du -sh "$SRC" 2>/dev/null | cut -f1)

cat > "$RESULT_DIR/zusammenfassung.txt" <<SUMMARY
=== ZUSAMMENFASSUNG ===
Quelle:           $SRC
Scan-Datum:       $(date -Iseconds)
Ordner gesamt:    $DIRS
Dateien gesamt:   $TOTAL
Speicher gesamt:  ${DU_TOTAL:-unbekannt}

Die detaillierten Ergebnisse liegen in:
  ordnerstruktur.txt     — Verzeichnisbaum (4 Ebenen)
  dateiliste.txt         — Alle Dateien mit Groesse
  dateitypen.txt         — Statistik nach Dateiendung
  groessenverteilung.txt — Top 20 groesste Dateien
  namenskonventionen.txt — Namensbeispiele + Unterordner
SUMMARY

echo ""
echo "Scan abgeschlossen. Ergebnisse in: $RESULT_DIR"
cat "$RESULT_DIR/zusammenfassung.txt"
