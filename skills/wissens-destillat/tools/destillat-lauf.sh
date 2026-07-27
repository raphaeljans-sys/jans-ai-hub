#!/bin/bash
# ============================================================================
# JANS Wissens-Destillat — Pipeline-Treiber (Phase 0 → 1 → 2)
# ============================================================================
# Das ideale Modell je Phase (Rule 260719, «Minimum Viable Model»):
#
#   Phase 0  Inventar          bash            0 Tokens   deterministisch
#   Phase 1  Triage            Haiku 4.5       billig     mechanisch klassifizieren
#   Phase 2  Destillat         Sonnet 5        mittel     Fliessarbeit: Artikel schreiben
#   Phase 3  Verifier/Kurator  Opus 5          teuer      Urteil — laeuft NICHT hier,
#                                                         sondern in der aufrufenden
#                                                         Session (SKILL.md, Schritt 4)
#
# Aufruf:  destillat-lauf.sh <korpus-id> [triage-anzahl] [destillat-anzahl]
# Ausgabe: training/<korpus>-lauf-<JJJJMMTT-HHMM>.md   (Batch-Protokoll fuer Phase 3)
#
# Sendet keine Mails, fuehrt keine git-Befehle aus (Rule 260726 — das Committen
# besorgt Phase 3 einmalig ueber nas-commit-now.sh).
# ============================================================================
set -uo pipefail
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.claude/local:$PATH"

HUB="/Volumes/daten/jans-ai-hub"
REPO="${VOLLGAS_REPO:-$HOME/Developer/jans-ai-hub}"
SKILLDIR="$HUB/skills/wissens-destillat"
TRAIN="$SKILLDIR/training"

KORPUS="${1:-}"
N_TRIAGE="${2:-40}"
N_DEST="${3:-8}"
BUDGET_TRIAGE="${DESTILLAT_BUDGET_TRIAGE:-3}"
BUDGET_DEST="${DESTILLAT_BUDGET_DEST:-15}"

[ -n "$KORPUS" ] || { echo "usage: destillat-lauf.sh <korpus-id> [triage-anzahl] [destillat-anzahl]"; exit 2; }

# --- Abo-Anmeldung (NIE ueber API-Key — Rule 260712c) ------------------------
if [ -f "$HOME/.jans-dispatch.env" ]; then set -a; . "$HOME/.jans-dispatch.env"; set +a; fi
[ -n "${ANTHROPIC_API_KEY:-}" ] && unset ANTHROPIC_API_KEY
if [ -z "${CLAUDE_CODE_OAUTH_TOKEN:-}" ]; then
    echo "FEHLER: kein CLAUDE_CODE_OAUTH_TOKEN in ~/.jans-dispatch.env — Abbruch."; exit 6
fi

CLAUDE_BIN="claude"
command -v "$CLAUDE_BIN" >/dev/null 2>&1 || for p in "$HOME/.local/bin/claude" "/opt/homebrew/bin/claude" "/usr/local/bin/claude" "$HOME/.claude/local/claude"; do
    [ -x "$p" ] && { CLAUDE_BIN="$p"; break; }
done

# --- NAS-Guard (Rule 260725) -------------------------------------------------
if [ -x "$REPO/scripts/ensure-nas-mounted.sh" ]; then
    bash "$REPO/scripts/ensure-nas-mounted.sh" 90 >/dev/null 2>&1 || {
        echo "FEHLER: NAS nach 90s nicht bereit — Lauf abgebrochen."; exit 7; }
fi
[ -d "$HUB" ] || { echo "FEHLER: $HUB nicht erreichbar."; exit 7; }

ZIEL_KB="$(grep -v '^[[:space:]]*#' "$SKILLDIR/tools/korpus.conf" | awk -F'|' -v k="$KORPUS" '$1==k {print $3}' | head -1)"
[ -n "$ZIEL_KB" ] || { echo "FEHLER: Korpus '$KORPUS' unbekannt."; exit 4; }

STAMP="$(date '+%Y%m%d-%H%M')"
PROTO="$TRAIN/${KORPUS}-lauf-${STAMP}.md"
INVENTAR="$TRAIN/${KORPUS}-inventar.md"
SPEC="$SKILLDIR/specs/${KORPUS}-spec.md"

mkdir -p "$TRAIN"
{
    echo "# Destillat-Lauf \`$KORPUS\` — $(date '+%Y-%m-%d %H:%M')"
    echo
    echo "Ziel-KB: \`wissen/$ZIEL_KB\` · Station: $(hostname -s)"
    echo
} > "$PROTO"

log() { echo "$(date '+%H:%M:%S') | $*" | tee -a "$PROTO"; }

# ============================ PHASE 0 — Inventar ============================
log "PHASE 0 (bash, 0 Tokens) — Inventar auffrischen"
for _ in 1 2 3; do
    OFFEN="$(bash "$SKILLDIR/tools/inventar.sh" "$KORPUS" --stand 2>/dev/null | sed 's/.*dateien_offen=//')"
    [ "${OFFEN:-0}" -ge "$N_TRIAGE" ] 2>/dev/null && break
    AUS="$(bash "$SKILLDIR/tools/inventar.sh" "$KORPUS" --naechste 2>&1)"
    log "  $AUS"
    echo "$AUS" | grep -q "INVENTAR KOMPLETT" && break
done
log "  Stand: $(bash "$SKILLDIR/tools/inventar.sh" "$KORPUS" --stand)"

# ============================ PHASE 1 — Triage (Haiku) ======================
log "PHASE 1 (Haiku 4.5, Budget \$$BUDGET_TRIAGE) — Triage von max. $N_TRIAGE Positionen"

P1="Du bist die TRIAGE-Stufe des JANS Wissens-Destillats. Reine Klassifikationsarbeit,
kein Fliesstext, keine Recherche, KEINE Quelldateien oeffnen.

Inventar:  $INVENTAR
Spec:      $SPEC   (falls vorhanden zuerst lesen — sie definiert, was relevant ist)
Ziel-KB:   wissen/$ZIEL_KB

Auftrag: Nimm die ERSTEN $N_TRIAGE Zeilen mit Status \`[ ]\` aus dem Inventar. Entscheide je
Zeile ALLEIN aus Sektion und Dateiname (nicht aus dem Inhalt):

  P1  Kernwissen — beantwortet eine Frage, die JANS im Tagesgeschaeft wirklich stellt
  P2  nuetzlich, aber nicht dringend
  P3  Randmaterial
  -   ueberspringen (Werbeprospekt ohne technischen Gehalt, Dublette, reine Bilddatei,
      Preisliste ohne Datum, veraltete Ausgabe, projektspezifischer Einzelfall ohne Lehre)

Setze je bearbeiteter Zeile mit Edit den Status auf \`[t]\` (bzw. \`[-]\` bei Ueberspringen)
und trage in die Spalte Bemerkung ein: \`<P1|P2|P3> · <Thema in 2-5 Woertern>\`, bei \`[-]\`
stattdessen den Grund in drei Woertern. Aendere sonst NICHTS an der Datei — Spaltenzahl und
Reihenfolge bleiben, keine Zeile wird geloescht.

Am Schluss geben genau diese drei Zeilen aus:
TRIAGIERT: <n>
P1: <n> | P2: <n> | P3: <n> | UEBERSPRUNGEN: <n>
NAECHSTE-P1: <die bis zu $N_DEST wichtigsten P1-Dateipfade, kommagetrennt>"

T0=$(date +%s)
OUT1="$("$CLAUDE_BIN" -p --model haiku --permission-mode acceptEdits \
        --max-budget-usd "$BUDGET_TRIAGE" --output-format text \
        -- "$P1" < /dev/null 2>&1)"
RC1=$?
log "  rc=$RC1, $(( $(date +%s) - T0 ))s"
{ echo; echo "## Phase 1 — Triage (Haiku)"; echo '```'; printf '%s\n' "$OUT1" | tail -c 1200; echo '```'; } >> "$PROTO"

# ============================ PHASE 2 — Destillat (Sonnet) ==================
log "PHASE 2 (Sonnet 5, Budget \$$BUDGET_DEST) — max. $N_DEST Destillate"

P2="Du bist die DESTILLAT-Stufe des JANS Wissens-Destillats. Fliessarbeit: aus Quelldokumenten
werden Wiki-Artikel. Du urteilst NICHT ueber Status-Promotion und committest NICHT — das macht
die nachgelagerte Kurator-Stufe.

Inventar:  $INVENTAR
Spec:      $SPEC   (falls vorhanden: verbindlich — Artikelschnitt, Umfang, Pflichtfelder)
Ziel-KB:   wissen/$ZIEL_KB   (Schema: wissen/WISSEN-CLAUDE.md und wissen/$ZIEL_KB/CLAUDE.md)

Auftrag: Nimm bis zu $N_DEST Positionen mit Status \`[t]\` und Prioritaet P1 (fehlen P1, dann P2).
Je Position:
 1. Quelldatei mit Read oeffnen (PDF: mit \`pages\`, max 20 Seiten pro Request; grosse Werke
    ueber mehrere Laeufe, Lesefortschritt im Artikel-Frontmatter \`gelesen:\` festhalten).
 2. Artikel nach wissen/$ZIEL_KB/wiki/ schreiben oder einen bestehenden erweitern.
    Frontmatter: title, status, last_updated, sources, links. Dateiname kebab-case, ASCII.
 3. status IMMER \`emerging\` setzen — \`established\` vergibt nur die Kurator-Stufe.
 4. Jede nicht-triviale Aussage traegt ihre Quelle (Dokument + Seite/Ziffer). Was nicht im
    Dokument steht, wird NICHT geschrieben — Luecken gehoeren nach wiki/QUESTIONS.md.
 5. wiki/INDEX.md nachfuehren, [[backlinks]] zu bestehenden Artikeln setzen.
 6. Inventarzeile auf \`[x]\` setzen; laesst sich die Datei nicht lesen (DRM, defekt, TCC),
    auf \`[-]\` mit dem konkreten Grund — nicht raten, nicht erfinden.

Schweizer Hochdeutsch, echte Umlaute ae/oe/ue als ä/ö/ü, ss statt ß. Keine Mails, KEINE
git-Befehle (Rule 260726).

Am Schluss genau diese Zeilen ausgeben:
DESTILLIERT: <n> | ERWEITERT: <n> | UEBERSPRUNGEN: <n>
ARTIKEL: <Dateinamen, kommagetrennt>
OFFENE-FRAGEN: <n neu in QUESTIONS.md>
DELTA: <JA wenn Dateien geschrieben wurden, sonst NEIN>"

T0=$(date +%s)
OUT2="$("$CLAUDE_BIN" -p --model sonnet --permission-mode acceptEdits \
        --max-budget-usd "$BUDGET_DEST" --fallback-model sonnet --output-format text \
        -- "$P2" < /dev/null 2>&1)"
RC2=$?
log "  rc=$RC2, $(( $(date +%s) - T0 ))s"
{ echo; echo "## Phase 2 — Destillat (Sonnet)"; echo '```'; printf '%s\n' "$OUT2" | tail -c 2500; echo '```'; } >> "$PROTO"

# ============================ Uebergabe an Phase 3 ==========================
{
    echo
    echo "## Uebergabe an Phase 3 (Kurator, Opus — aufrufende Session)"
    echo
    echo "- Protokoll: \`$PROTO\`"
    echo "- Inventar-Stand: $(bash "$SKILLDIR/tools/inventar.sh" "$KORPUS" --stand)"
    echo "- Exit-Codes: Triage rc=$RC1 · Destillat rc=$RC2"
} >> "$PROTO"

echo
echo "PROTOKOLL: $PROTO"
printf '%s\n' "$OUT2" | grep -E '^(DESTILLIERT|ARTIKEL|OFFENE-FRAGEN|DELTA):' || true
