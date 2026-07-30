#!/bin/bash
# =============================================================================
# JANS AI Hub — Grundkontext-Messung (heartbeat Check 10)
# =============================================================================
# Misst, wie viel immer geladener Grundkontext jede Session traegt, und warnt,
# sobald eine Schwelle reisst. Dann ist eine Kontext-Diaet-Runde faellig
# (interaktiv, mit Vorschlagsliste — nie automatisch kuerzen).
# Eingefuehrt 31.07.2026 nach dem /doctor-Lauf vom 30.07. (Kadenz-Entscheid
# Raphael: messen taeglich, auditieren monatlich, kuratieren bei Schwellwert).
#
# Gemessen wird:
#   1. Grundkontext gesamt  = Projekt-CLAUDE.md + alle @-Imports + User-CLAUDE.md
#   2. rules/auto-verbesserungen.md einzeln (schnellster Waechser)
#   3. rules/jans-dna.md einzeln (Twin-Regrowth)
#   4. Alter des letzten /doctor-Laufs (Stempel logbuch/doctor-letzter-lauf.txt;
#      am Ende jedes Doctor-Laufs mit dem Tagesdatum YYYY-MM-DD aktualisieren)
#
# Schwellen (per Umgebungsvariable uebersteuerbar, u.a. fuer den Selbsttest):
#   GK_MAX=100000  AV_MAX=22000  DNA_MAX=18000  DOCTOR_MAX_TAGE=35
#
# Exit 0 = alles im Rahmen · Exit 1 = mindestens eine Warnung (Radar aufnehmen)
# =============================================================================
set -u

NAS="/Volumes/daten/jans-ai-hub"
CLAUDE_MD="$NAS/CLAUDE.md"
USER_MD="$HOME/.claude/CLAUDE.md"
STAMP="$NAS/logbuch/doctor-letzter-lauf.txt"

GK_MAX="${GK_MAX:-100000}"
AV_MAX="${AV_MAX:-22000}"
DNA_MAX="${DNA_MAX:-18000}"
DOCTOR_MAX_TAGE="${DOCTOR_MAX_TAGE:-35}"

warn=0

if [ ! -f "$CLAUDE_MD" ]; then
    echo "⚠️ Grundkontext: $CLAUDE_MD nicht erreichbar (NAS gemountet?)"
    exit 1
fi

# --- 1. Grundkontext gesamt (CLAUDE.md + @-Imports + User-CLAUDE.md) ---------
total=$(wc -c < "$CLAUDE_MD")
fehlend=""
while IFS= read -r imp; do
    f="${imp#@}"
    if [ -f "$f" ]; then
        total=$((total + $(wc -c < "$f")))
    else
        fehlend="$fehlend $f"
    fi
done < <(grep '^@/' "$CLAUDE_MD")
[ -f "$USER_MD" ] && total=$((total + $(wc -c < "$USER_MD")))

if [ "$total" -gt "$GK_MAX" ]; then
    echo "⚠️ Grundkontext: $total Zeichen (~$((total / 4)) est. Tokens) — Schwelle $GK_MAX gerissen, Kontext-Diaet-Runde faellig"
    warn=1
else
    echo "✅ Grundkontext: $total Zeichen (~$((total / 4)) est. Tokens, Schwelle $GK_MAX)"
fi
[ -n "$fehlend" ] && { echo "⚠️ Grundkontext: @-Import fehlt:$fehlend"; warn=1; }

# --- 2./3. Einzel-Waechser ----------------------------------------------------
check_datei() {
    local pfad="$1" max="$2" name="$3"
    if [ -f "$pfad" ]; then
        local n
        n=$(wc -c < "$pfad" | tr -d ' ')
        if [ "$n" -gt "$max" ]; then
            echo "⚠️ $name: $n Zeichen — Schwelle $max gerissen (verdichten/auslagern)"
            warn=1
        else
            echo "✅ $name: $n Zeichen (Schwelle $max)"
        fi
    else
        echo "⚠️ $name: $pfad fehlt"
        warn=1
    fi
}
check_datei "$NAS/rules/auto-verbesserungen.md" "$AV_MAX" "auto-verbesserungen"
check_datei "$NAS/rules/jans-dna.md" "$DNA_MAX" "jans-dna"

# --- 4. Alter des letzten Doctor-Laufs ----------------------------------------
if [ -f "$STAMP" ]; then
    letzter=$(head -1 "$STAMP" | tr -d '[:space:]')
    letzter_epoch=$(date -j -f "%Y-%m-%d" "$letzter" "+%s" 2>/dev/null || echo 0)
    if [ "$letzter_epoch" -eq 0 ]; then
        echo "⚠️ Doctor-Stempel: unlesbares Datum in $STAMP («$letzter», erwartet YYYY-MM-DD)"
        warn=1
    else
        tage=$(( ( $(date +%s) - letzter_epoch ) / 86400 ))
        if [ "$tage" -gt "$DOCTOR_MAX_TAGE" ]; then
            echo "⚠️ Doctor-Lauf: letzter vor $tage Tagen ($letzter) — monatlicher /doctor faellig"
            warn=1
        else
            echo "✅ Doctor-Lauf: letzter vor $tage Tagen ($letzter, Schwelle $DOCTOR_MAX_TAGE Tage)"
        fi
    fi
else
    echo "⚠️ Doctor-Stempel fehlt ($STAMP) — nach dem naechsten /doctor-Lauf anlegen"
    warn=1
fi

exit "$warn"
