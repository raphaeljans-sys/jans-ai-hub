#!/bin/bash
# nutzungs-radar.sh — der GROWER des JANS AI Hub
#
# Beantwortet die Frage, die im Hub bisher niemand gestellt hat:
# Wird das, was wir gebaut haben, ueberhaupt benutzt?
#
# Misst je Skill:
#   - wie oft und wann zuletzt er in einer echten Session verwendet wurde
#     (Session-Transcripts beider Stationen)
#   - ob in der Messperiode ueberhaupt Deliverables entstanden sind
#     (Dateien im AI-HUB-OUTPUT-Ordner)
#
# Und liefert daraus die SWEEPER-Sektion: Kaltliste (nie/lange nicht benutzt)
# und Konsolidierungs-Kandidaten (namensverwandte Skills, beide kalt).
#
# Aufruf:  bash scripts/nutzungs-radar.sh [TAGE]      (Default 90)
# Report:  logbuch/rollen/YYMMDD-nutzungs-radar.md
#
# MESSGRENZEN (im Report ausgewiesen, nicht verschweigen):
#   - Transcripts werden nach 14 Tagen archiviert (transcript-rotation.sh);
#     das Archiv wird hier NICHT ausgepackt. Reichweite = was lokal liegt.
#   - Reine Claude-App-Chats (iPhone/iPad) sind headless nicht auslesbar.
#   - Ein Treffer belegt Verwendung im Gespraech, nicht Nutzen beim Kunden.
#
# Angelegt 29.07.2026 (Konzept docs/konzepte/260729-Rollen-Taxonomie/).

set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
MAP="$HUB/logbuch/rollen/rollen-map.tsv"
OUTDIR="$HUB/logbuch/rollen"
PROJ="$HOME/.claude/projects"
DELIV="$HOME/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT"
TAGE="${1:-90}"

[ -d "$HUB" ] || { echo "FEHLER: NAS nicht gemountet ($HUB)"; exit 1; }

STAMP="$(date '+%y%m%d')"
HEUTE="$(date '+%d.%m.%Y')"
REPORT="$OUTDIR/${STAMP}-nutzungs-radar.md"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$OUTDIR"

# --- 1. Treffer je Skill aus den Transcripts der lokalen Station ------------
# Zwei Signale: der Skill-Tool-Aufruf und der Pfad zur SKILL.md.
# HART = echter Werkzeug-Aufruf (Skill-Tool oder Read auf die SKILL.md).
# WEICH = der Pfad kommt irgendwo sonst vor (Audit-Lauf, Aufzaehlung, Zitat).
# Die Unterscheidung ist der Kern: ohne sie zaehlt jeder Skill als benutzt,
# den irgendein Inventar-Lauf einmal aufgelistet hat.
sammle_treffer() {
    local wurzel="$1" ziel="$2"
    [ -d "$wurzel" ] || return 0
    find "$wurzel" -name '*.jsonl' -type f 2>/dev/null | while read -r f; do
        local d
        d=$(date -r "$f" '+%Y-%m-%d' 2>/dev/null)
        LC_ALL=C grep -oE '"skill":"[a-z0-9-]+"|"file_path":"[^"]*skills/[a-z0-9-]+/SKILL\.md"' "$f" 2>/dev/null \
            | sed -E 's/.*"skill":"([a-z0-9-]+)".*/\1/; s|.*skills/([a-z0-9-]+)/SKILL\.md.*|\1|' \
            | sort -u | sed "s|^|H\t$d\t|"
        LC_ALL=C grep -oE 'skills/[a-z0-9-]+/SKILL\.md' "$f" 2>/dev/null \
            | sed -E 's|skills/([a-z0-9-]+)/SKILL\.md|\1|' \
            | sort -u | sed "s|^|W\t$d\t|"
    done >> "$ziel"
}

: > "$TMP/treffer"
sammle_treffer "$PROJ" "$TMP/treffer"
LOKAL=$(wc -l < "$TMP/treffer" | tr -d ' ')

# --- 2. Mac Mini dazuholen, wenn erreichbar --------------------------------
MINI_STATUS="nicht erreichbar (nur lokale Station gemessen)"
if ssh -o ConnectTimeout=5 -o BatchMode=yes mini 'true' 2>/dev/null; then
    if ssh -o ConnectTimeout=10 mini '
        find "$HOME/.claude/projects" -name "*.jsonl" -type f 2>/dev/null | while read -r f; do
            d=$(date -r "$f" "+%Y-%m-%d" 2>/dev/null)
            LC_ALL=C grep -oE "\"skill\":\"[a-z0-9-]+\"|\"file_path\":\"[^\"]*skills/[a-z0-9-]+/SKILL\.md\"" "$f" 2>/dev/null \
                | sed -E "s/.*\"skill\":\"([a-z0-9-]+)\".*/\1/; s|.*skills/([a-z0-9-]+)/SKILL\.md.*|\1|" \
                | sort -u | sed "s|^|H\t$d\t|"
            LC_ALL=C grep -oE "skills/[a-z0-9-]+/SKILL\.md" "$f" 2>/dev/null \
                | sed -E "s|skills/([a-z0-9-]+)/SKILL\.md|\1|" \
                | sort -u | sed "s|^|W\t$d\t|"
        done' >> "$TMP/treffer" 2>/dev/null; then
        MINI=$(( $(wc -l < "$TMP/treffer" | tr -d ' ') - LOKAL ))
        MINI_STATUS="einbezogen ($MINI Signale)"
    fi
fi

# --- 3. Je Skill verdichten: harte und weiche Signale getrennt --------------
awk -F'\t' 'NF==3 {
        if ($1 == "H") { h[$3]++; if ($2 > hl[$3]) hl[$3] = $2 }
        else           { w[$3]++; if ($2 > wl[$3]) wl[$3] = $2 }
        alle[$3] = 1
    }
    END {for (s in alle) printf "%s\t%d\t%s\t%d\t%s\n", s, h[s]+0, (hl[s] == "" ? "-" : hl[s]), w[s]+0, (wl[s] == "" ? "-" : wl[s])}' \
    "$TMP/treffer" | sort > "$TMP/verdichtet"

# --- 4. Gegen den Skill-Bestand halten (Rolle anfuegen) ---------------------
ls -1 "$HUB/skills" 2>/dev/null | while read -r s; do
    [ -f "$HUB/skills/$s/SKILL.md" ] && echo "$s"
done | sort > "$TMP/bestand"

awk -F'\t' '
    FILENAME ~ /rollen-map/ { if ($0 !~ /^#/ && NF >= 3) rolle[$1] = $3; next }
    FILENAME ~ /verdichtet/ { h[$1] = $2; hl[$1] = $3; w[$1] = $4; wl[$1] = $5; next }
    {
        s = $1
        printf "%s\t%d\t%s\t%d\t%s\t%s\n", s, h[s]+0, (hl[s] == "" ? "-" : hl[s]), \
               w[s]+0, (wl[s] == "" ? "-" : wl[s]), (s in rolle ? rolle[s] : "?")
    }' "$MAP" "$TMP/verdichtet" "$TMP/bestand" > "$TMP/final"

WARM=$(awk -F'\t' '$2 > 0' "$TMP/final" | wc -l | tr -d ' ')
KALT=$(awk -F'\t' '$2 == 0' "$TMP/final" | wc -l | tr -d ' ')
NURERW=$(awk -F'\t' '$2 == 0 && $4 > 0' "$TMP/final" | wc -l | tr -d ' ')
GES=$(wc -l < "$TMP/final" | tr -d ' ')

# --- 5. Deliverables der Messperiode ---------------------------------------
if [ -d "$DELIV" ]; then
    DELIV_N=$(find "$DELIV" -type f -mtime -"${TAGE}" 2>/dev/null | wc -l | tr -d ' ')
    DELIV_TXT="$DELIV_N Dateien in den letzten $TAGE Tagen"
else
    DELIV_TXT="OUTPUT-Ordner nicht erreichbar (OneDrive nicht gemountet)"
fi

# --- 6. Report --------------------------------------------------------------
{
cat <<HEAD
# Nutzungs-Radar (Grower) — Stand $HEUTE

Der Hub misst hier zum ersten Mal nicht, was er produziert, sondern was
tatsaechlich verwendet wird.

Skills im Bestand: $GES · wirklich aufgerufen: $WARM · nie aufgerufen: $KALT
davon nur erwaehnt (Inventar-/Audit-Spur, kein Aufruf): $NURERW
Mac Mini: $MINI_STATUS
Deliverables: $DELIV_TXT

Zwei Signalklassen, bewusst getrennt: AUFGERUFEN heisst Skill-Werkzeug oder
Read auf die SKILL.md — der Skill hat tatsaechlich gearbeitet. ERWAEHNT heisst,
der Pfad kam irgendwo vor (Inventar-Lauf, Aufzaehlung, Zitat). Ohne diese
Trennung gilt jeder Skill als benutzt, den ein Audit-Lauf einmal aufgelistet
hat — und die Kaltliste ist leer, obwohl nichts genutzt wird.

## 1. Aufgerufene Skills (harte Nutzung)

| Skill | Rolle | Aufrufe | zuletzt | nur erwaehnt |
|---|---|---|---|---|
HEAD

sort -t$'\t' -k2,2nr "$TMP/final" | awk -F'\t' '$2 > 0 {printf "| %s | %s | %d | %s | %d |\n", $1, $6, $2, $3, $4}'

cat <<MID

## 2. Kaltliste — nie aufgerufen

Diese Skills existieren, haben in der Messreichweite aber nie gearbeitet.
Das ist kein Urteil ueber ihre Qualitaet: ein Skill kann fachlich gut und
trotzdem ungenutzt sein, weil der Anlass fehlte. Es ist die Liste, ueber
die entschieden werden muss — behalten, zusammenlegen oder stilllegen.
Die Spalte "erwaehnt" zeigt, ob der Skill wenigstens im Blickfeld war.

| Skill | Rolle | erwaehnt | zuletzt erwaehnt |
|---|---|---|---|
MID

sort -t$'\t' -k4,4nr "$TMP/final" | awk -F'\t' '$2 == 0 {printf "| %s | %s | %d | %s |\n", $1, $6, $4, $5}'

cat <<MID2

## 3. Sweeper — Konsolidierungs-Kandidaten

Namensverwandte Skills (gemeinsamer Wortstamm). Wo beide kalt sind, ist eine
Zusammenlegung zu pruefen; wo einer warm und einer kalt ist, ist der kalte
vermutlich im warmen aufgegangen.

MID2

awk -F'\t' '{stamm = $1; sub(/-.*$/, "", stamm); n[stamm] = n[stamm] " " $1 "(" ($2>0?"warm":"kalt") ")"; c[stamm]++}
    END {for (s in c) if (c[s] > 1) printf "- %s:%s\n", s, n[s]}' "$TMP/final" | sort

cat <<MID3

Zusaetzlich pruefenswert: jeder kalte Skill, dessen Rolle im Hub bereits
mehrfach besetzt ist. Die Rollen-Bilanz (scripts/rollen-bilanz.sh) zeigt,
wo Ueberbesetzung vorliegt.
MID3

cat <<FOOT

## 4. Messgrenzen

- Transcripts werden nach 14 Tagen archiviert (scripts/transcript-rotation.sh).
  Das Archiv wird hier nicht ausgepackt — die Reichweite ist das, was lokal
  liegt. Ein "nie" heisst also: kein Signal in der lokalen Reichweite.
- Reine Claude-App-Chats (iPhone/iPad) sind headless nicht auslesbar.
- Ein Treffer belegt Verwendung im Gespraech, nicht Nutzen beim Kunden. Die
  zweite Haelfte des Growers (Wirkung beim Bauherrn) ist damit noch nicht
  gemessen — sie braucht ein Rueckmeldesignal, das der Hub heute nicht hat.
- WICHTIG, sonst wird die Kaltliste falsch gelesen: gemessen wird, ob die
  SKILL.md geladen wurde — nicht, ob die Faehigkeit erbracht wurde. Eine
  Leistung kann auch ohne Skill-Load entstehen: direkt aus der CLAUDE.md-
  Tabelle heraus, ueber einen Agenten (z.B. die linkedin-Agenten statt des
  Skills marketing) oder von Hand. "Nie aufgerufen" heisst darum: die
  Anleitung wurde nie gebraucht — was ein Hinweis auf einen ueberfluessigen
  ODER auf einen vergessenen Skill ist. Welches von beidem, entscheidet der
  Mensch, nicht dieses Script.

Erzeugt von scripts/nutzungs-radar.sh
FOOT
} > "$REPORT"

echo "Report: $REPORT"
echo "  Skills gesamt: $GES   benutzt: $WARM   kalt: $KALT"
echo "  Mac Mini: $MINI_STATUS"
