#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# session-insights.sh — Transcript-Analyse fuer den Meta-Lern-Loop
# ---------------------------------------------------------------------------
# Liest die Claude-Code-Session-Transcripts dieses Projekts, extrahiert die vom
# Benutzer getippten Prompts (ohne Tool-Resultate/System-Reminder) und liefert:
#   1. Themen-Cluster (worueber wird am haeufigsten gearbeitet)
#   2. Korrektur-Signale (wie oft aeussert der Benutzer Dauer-/Korrekturwuensche)
#   3. Rueckfall-Kandidaten (Korrektur-Themen, die TROTZ bestehender Rule wiederkehren)
#   4. Status der auto-verbesserungen-Eintraege (bereits zu Rule befoerdert?)
#
# Verwendung:
#   bash session-insights.sh                 # Report nach stdout (Markdown)
#   bash session-insights.sh > report.md     # in Datei
#   TRANSCRIPT_DIR=/pfad bash session-insights.sh   # anderes Projekt
#
# Teil des Meta-Lern-Loops — wird vom Masterclass-Modul harness-review.md genutzt.
# ---------------------------------------------------------------------------
set -uo pipefail

NAS="/Volumes/daten/jans-ai-hub"
TRANSCRIPT_DIR="${TRANSCRIPT_DIR:-$HOME/.claude/projects/-Users-raphaeljans-Developer-jans-ai-hub}"
RULES_DIR="$NAS/rules"
AUTO="$RULES_DIR/auto-verbesserungen.md"
TMP="$(mktemp -t jans_prompts.XXXXXX)"
trap 'rm -f "$TMP"' EXIT

if ! command -v jq >/dev/null 2>&1; then
  echo "FEHLER: jq nicht gefunden (brew install jq)"; exit 1
fi
if [ ! -d "$TRANSCRIPT_DIR" ]; then
  echo "FEHLER: Transcript-Ordner nicht gefunden: $TRANSCRIPT_DIR"; exit 1
fi

# --- 1. Prompts extrahieren (nur echte Benutzereingaben) -------------------
# Session-Zahl separat ermitteln (die for-Schleife laeuft unten in einer Subshell)
sessions=$(find "$TRANSCRIPT_DIR" -maxdepth 1 -name '*.jsonl' | wc -l | tr -d ' ')
for f in "$TRANSCRIPT_DIR"/*.jsonl; do
  [ -e "$f" ] || continue
  jq -r 'select(.type=="user") | .message.content as $c |
    if ($c|type)=="string" then $c
    elif ($c|type)=="array" then ($c[] | select(.type=="text") | .text)
    else empty end' "$f" 2>/dev/null
done | grep -v -e '^\[' -e '^<' -e 'tool_result' -e 'system-reminder' \
     | grep -v '^[[:space:]]*$' > "$TMP"

total=$(wc -l < "$TMP" | tr -d ' ')

# --- Helfer: Treffer pro Themen-Regex --------------------------------------
count() { grep -ciE "$1" "$TMP" 2>/dev/null || echo 0; }

echo "# Session-Insights — JANS AI Hub"
echo
echo "- Transcript-Ordner: \`$TRANSCRIPT_DIR\`"
echo "- Sessions: $sessions · getippte Prompt-Zeilen: $total"
echo

# --- 2. Themen-Cluster ------------------------------------------------------
echo "## Themen-Cluster (worueber wird gearbeitet)"
echo
printf '| Thema | Treffer |\n|---|---|\n'
printf '| Ausschreibung/LV/Submission | %s |\n'  "$(count 'lv |leistungsverz|ausschreib|submiss|devis')"
printf '| Kosten/BKP/Kennwerte | %s |\n'         "$(count 'kosten|bkp|kennwert')"
printf '| Skill-/Agent-/Rule-Infrastruktur | %s |\n' "$(count 'skill|agent|rule |command|hook|harness')"
printf '| Offerten/Angebote | %s |\n'            "$(count 'offert|angebot')"
printf '| Mail/Absender | %s |\n'                "$(count 'mail|email|outlook|absender')"
printf '| Protokoll/Pendenzen | %s |\n'          "$(count 'protokoll|pendenz')"
printf '| Werkvertrag/Unternehmer | %s |\n'      "$(count 'werkvertrag|unternehmer|akonto|nachtrag')"
printf '| Brandschutz | %s |\n'                  "$(count 'brandschutz|ei30|vkf')"
printf '| Honorar SIA 102 | %s |\n'              "$(count 'honorar|sia 102')"
printf '| Website/WordPress | %s |\n'            "$(count 'website|wordpress|raphaeljans.ch')"
echo

# --- 3. Korrektur-Signale (Dauerregel-/Korrekturwuensche) ------------------
echo "## Korrektur-/Dauerregel-Signale"
echo
sig='immer|niemals|nie |ab jetzt|kuenftig|künftig|merk dir|merke dir|stattdessen|grundsaetzlich|grundsätzlich|korrigier|nicht so|jedes mal|generell'
printf '| Signal-Gruppe | Treffer |\n|---|---|\n'
printf '| Dauerregel-Wuensche (immer/nie/kuenftig/merk dir) | %s |\n' "$(count "$sig")"
echo

# --- 4. Rueckfall-Kandidaten -----------------------------------------------
# Themen mit bekannter Rule: taucht das Korrektur-Thema TROTZDEM noch auf?
echo "## Rueckfall-Kandidaten (Korrektur trotz bestehender Rule)"
echo
echo "Hohe Treffer bei einem Thema, das bereits eine Rule hat, deutet auf einen"
echo "Rueckfall hin — Kandidat fuer deterministische Absicherung (Guard-Hook)."
echo
printf '| Thema | Rule vorhanden | Treffer im Text |\n|---|---|---|\n'
check_rule() { [ -f "$RULES_DIR/$1" ] && echo "ja ($1)" || echo "NEIN"; }
printf '| ASCII-Umlaute (fuer/rueck/gruess) | %s | %s |\n' "$(check_rule umlaute-konvention.md)" "$(count 'fuer |rueck|gruess|koenn|moeglich|oe|ae')"
printf '| Ablage/Ordnerstruktur | %s | %s |\n'             "$(check_rule dateinamen-konvention.md)" "$(count 'ablage|ordner|ablegen|versand')"
printf '| Adresse veraltet | %s | %s |\n'                  "$(check_rule jans-absenderadresse.md)" "$(count 'flüelastrasse|fluelastrasse|birmensdorfer|adresse aendern|adresse ändern')"
printf '| Fehlerhafte Umbrueche/Layout | %s | %s |\n'      "$(check_rule dokument-layout-standard.md)" "$(count 'umbruch|umbrueche|layout|zwei seiten|nicht umbrechen')"
echo

# --- 5. auto-verbesserungen-Status -----------------------------------------
echo "## auto-verbesserungen.md — Eintraege"
echo
if [ -f "$AUTO" ]; then
  entries=$(grep -cE '^## [0-9]{6} ' "$AUTO" 2>/dev/null || echo 0)
  echo "Aktuell $entries datierte Eintraege. Pruefen: welcher ist ≥N× wiederkehrend"
  echo "und sollte zu dedizierter Rule/Skill-Edit befoerdert werden?"
  echo
  grep -E '^## [0-9]{6} ' "$AUTO" 2>/dev/null | sed 's/^## /- /'
else
  echo "(auto-verbesserungen.md nicht gefunden)"
fi
echo
echo "---"
echo "_Naechster Schritt: \`skills/masterclass/harness-review.md\` — Consolidate → Promote → Rueckfall messen → Prune._"
