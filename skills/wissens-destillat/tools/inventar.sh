#!/bin/bash
# ============================================================================
# JANS Wissens-Destillat — PHASE 0: Inventar (deterministisch, OHNE Modell)
# ============================================================================
# Rule 260719 (Kontext-Diaet): vor lese-intensiven Routinen ein deterministischer
# Vorfilter statt Rohmaterial-Lektuere. Diese Phase kostet null Tokens.
#
# Ueber SMB ist ein `find` ueber einen ganzen Archiv-Baum minutenlang und laeuft
# in Timeouts. Darum wird IMMER ordnerweise inventarisiert: erst die Sektionen
# (maxdepth 1), dann je Sektion die Dateien. Jeder Aufruf ist wiederaufnehmbar.
#
#   inventar.sh <korpus-id>                 → Sektionsliste anlegen/auffrischen
#   inventar.sh <korpus-id> --naechste      → naechste unverarbeitete Sektion inventarisieren
#   inventar.sh <korpus-id> "<sektion>"     → genau diese Sektion inventarisieren
#   inventar.sh <korpus-id> --stand         → Fortschritt ausgeben (fuer Fruehwarnung/Radar)
# ============================================================================
set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
CONF="$HUB/skills/wissens-destillat/tools/korpus.conf"
TRAIN="$HUB/skills/wissens-destillat/training"

KORPUS="${1:-}"
MODUS="${2:-}"

[ -n "$KORPUS" ] || { echo "usage: inventar.sh <korpus-id> [--naechste|--stand|<sektion>]"; exit 2; }
[ -r "$CONF" ]   || { echo "FEHLER: $CONF nicht lesbar (NAS gemountet?)"; exit 3; }

ZEILE="$(grep -v '^[[:space:]]*#' "$CONF" | grep -v '^[[:space:]]*$' | awk -F'|' -v k="$KORPUS" '$1==k' | head -1)"
[ -n "$ZEILE" ] || { echo "FEHLER: Korpus '$KORPUS' steht nicht in korpus.conf"; exit 4; }

WURZEL="$(echo "$ZEILE" | awk -F'|' '{print $2}')"
ZIEL_KB="$(echo "$ZEILE" | awk -F'|' '{print $3}')"
EXTS="$(echo "$ZEILE"    | awk -F'|' '{print $4}')"
AUSSCHLUSS="$(echo "$ZEILE" | awk -F'|' '{print $5}')"

[ -d "$WURZEL" ] || { echo "FEHLER: Korpus-Wurzel nicht erreichbar: $WURZEL"; exit 5; }

mkdir -p "$TRAIN"
SEKTIONEN="$TRAIN/${KORPUS}-sektionen.md"
INVENTAR="$TRAIN/${KORPUS}-inventar.md"

# --- Ausschluss als grep -F Musterdatei (Teilstrings, keine Regex-Fallen) ----
AUSFILE="$(mktemp)"; trap 'rm -f "$AUSFILE"' EXIT
echo "$AUSSCHLUSS" | tr ',' '\n' | sed '/^$/d' > "$AUSFILE"

passt_ext() {  # $1 = pfad
    local e; e="$(echo "${1##*.}" | tr 'A-Z' 'a-z')"
    echo ",$EXTS," | grep -q ",$e,"
}

# ---------------------------------------------------------------- --stand ---
if [ "$MODUS" = "--stand" ]; then
    ges=$(grep -c '^- \[' "$SEKTIONEN" 2>/dev/null || echo 0)
    fer=$(grep -c '^- \[x\]' "$SEKTIONEN" 2>/dev/null || echo 0)
    dat=$(grep -c '^| \[' "$INVENTAR" 2>/dev/null || echo 0)
    off=$(grep -c '^| \[ \]' "$INVENTAR" 2>/dev/null || echo 0)
    echo "korpus=$KORPUS ziel_kb=$ZIEL_KB sektionen=$fer/$ges dateien_inventarisiert=$dat dateien_offen=$off"
    exit 0
fi

# ------------------------------------------------- Sektionsliste anlegen ----
if [ ! -f "$SEKTIONEN" ]; then
    {
        echo "# Sektionen — Korpus \`$KORPUS\`"
        echo
        echo "Quelle: \`$WURZEL\` · Ziel-KB: \`wissen/$ZIEL_KB\` · angelegt $(date '+%Y-%m-%d %H:%M')"
        echo
        echo "\`[x]\` = Sektion vollstaendig inventarisiert (nicht: destilliert)."
        echo
    } > "$SEKTIONEN"
    # maxdepth 1, damit SMB nicht in die Knie geht
    find "$WURZEL" -mindepth 1 -maxdepth 1 -type d 2>/dev/null \
        | grep -vFf "$AUSFILE" \
        | sort \
        | while IFS= read -r d; do echo "- [ ] $(basename "$d")"; done >> "$SEKTIONEN"
    echo "Sektionsliste angelegt: $SEKTIONEN ($(grep -c '^- \[' "$SEKTIONEN") Sektionen)"
fi

# ------------------------------------------------- Sektion bestimmen --------
if [ "$MODUS" = "--naechste" ] || [ -z "$MODUS" ]; then
    SEKTION="$(grep -m1 '^- \[ \] ' "$SEKTIONEN" | sed 's/^- \[ \] //')"
    if [ -z "$SEKTION" ]; then
        echo "INVENTAR KOMPLETT — alle Sektionen von '$KORPUS' sind erfasst."
        exit 0
    fi
else
    SEKTION="$MODUS"
fi

ORDNER="$WURZEL/$SEKTION"
[ -d "$ORDNER" ] || { echo "FEHLER: Sektion nicht gefunden: $ORDNER"; exit 6; }

# ------------------------------------------------- Dateien erfassen ---------
if [ ! -f "$INVENTAR" ]; then
    {
        echo "# Inventar — Korpus \`$KORPUS\`"
        echo
        echo "Quelle: \`$WURZEL\` · Ziel-KB: \`wissen/$ZIEL_KB\`"
        echo
        echo "Status je Datei: \`[ ]\` offen · \`[t]\` triagiert (Phase 1) · \`[x]\` destilliert (Phase 2)"
        echo "· \`[-]\` bewusst uebersprungen (Grund in der Bemerkung)."
        echo
        echo "| St | Sektion | Datei | KB | Bemerkung |"
        echo "|---|---|---|---|---|"
    } > "$INVENTAR"
fi

NEU=0
while IFS= read -r f; do
    passt_ext "$f" || continue
    rel="${f#$WURZEL/}"
    # Idempotent: schon erfasste Datei nicht doppeln
    grep -qF "| $rel |" "$INVENTAR" && continue
    printf '| [ ] | %s | %s | %s | |\n' "$SEKTION" "$rel" "$ZIEL_KB" >> "$INVENTAR"
    NEU=$((NEU + 1))
done < <(find "$ORDNER" -type f 2>/dev/null | grep -vFf "$AUSFILE" | sort)

# Sektion als inventarisiert markieren (BSD sed)
sed -i '' "s|^- \[ \] ${SEKTION}$|- [x] ${SEKTION}|" "$SEKTIONEN" 2>/dev/null

echo "Sektion '$SEKTION' inventarisiert: $NEU neue Dateien → $INVENTAR"
echo "Stand: $(bash "$0" "$KORPUS" --stand)"
