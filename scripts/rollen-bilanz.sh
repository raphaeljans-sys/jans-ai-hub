#!/bin/bash
# rollen-bilanz.sh — Rollen-Haushalt des JANS AI Hub messen
#
# Verteilt Bestand UND tatsaechlichen ERTRAG auf die fuenf Rollen:
#   prototyper | builder | sweeper | grower | maintainer
#
# WARUM ERTRAG UND NICHT AUFWAND (Korrektur vom 29.07.2026):
# Die erste Fassung zaehlte jede ENDE-Zeile als "Lauf" und jede Sekunde als
# "Rechenzeit fuer Rolle X". Ergebnis war die Aussage "10'501 Laeufe, 97 Stunden,
# 90 % Prototyper". Die Nachmessung zeigte: von 10'501 Laeufen endeten 10'017 mit
# rc=1 nach im Schnitt FUENF Sekunden — Fehlstarts gegen ein leeres Kontingent
# oder ein abweisendes Gate. Weitere 17 Laeufe wurden nach je rund 70 Minuten vom
# Stall-Killer abgewuergt (rc=143) und verbrannten 20 % der gesamten Zeit, ohne
# je ein Ergebnis abzuliefern. Produktiv waren 467 Laeufe.
# Eine Bilanz, die Fehlstarts und abgewuergte Haenger als "Arbeit an Rolle X"
# ausweist, misst Betriebsstoerungen und nennt sie Auslastung.
#
# Darum trennt diese Fassung drei Lauf-Klassen und misst den Ertrag:
#   GELIEFERT  rc=0                  — der Lauf kam durch
#   ABGEWUERGT rc>128 (Signal)       — Stall-Killer, Zeit verbrannt
#   FEHLSTART  sonstiges rc          — gar nicht erst angelaufen
# und innerhalb der gelieferten Laeufe zusaetzlich:
#   DELTA NULL — der Lauf meldet selbst, dass es nichts Neues gab
#   LIEFER-DELTA — im Zielbereich des Loops wurden Dateien geaendert (git)
# Vgl. Rule auto-verbesserungen 260727/260729 (Leerlauf am Liefer-Delta messen).
#
# Quelle Bestand:    logbuch/rollen/rollen-map.tsv  (kanonisch, von Hand gepflegt)
# Quelle Laeufe:     logbuch/vollgas/<Station>.log  (ENDE-Zeilen des Runners)
# Quelle Lieferung:  git log des Repos (lesend, ueber den SSD-Klon)
#
# MESSGRENZE: nur Laeufe ueber den vollgas-runner tragen eine ENDE-Zeile. Die
# App-Scheduled-Task-Flotte und die launchd-Trainings laufen daran vorbei.
#
# Aufruf:  bash scripts/rollen-bilanz.sh [TAGE]      (Default 30)
# Report:  logbuch/rollen/YYMMDD-rollen-bilanz.md

set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
SSD="$HOME/Developer/jans-ai-hub"
MAP="$HUB/logbuch/rollen/rollen-map.tsv"
LOGDIR="$HUB/logbuch/vollgas"
OUTDIR="$HUB/logbuch/rollen"
TAGE="${1:-30}"

[ -d "$HUB" ] || { echo "FEHLER: NAS nicht gemountet ($HUB)"; exit 1; }
[ -f "$MAP" ] || { echo "FEHLER: Rollen-Register fehlt ($MAP)"; exit 1; }

STAMP="$(date '+%y%m%d')"
HEUTE="$(date '+%d.%m.%Y')"
SEIT="$(date -v-"${TAGE}"d '+%Y-%m-%d' 2>/dev/null || date -d "-${TAGE} days" '+%Y-%m-%d')"
REPORT="$OUTDIR/${STAMP}-rollen-bilanz.md"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$OUTDIR"

# --- 1. Bestand je Rolle ----------------------------------------------------
BESTAND=$(awk -F'\t' '
    /^#/ || NF < 3 { next }
    $3 == "-"      { next }
    { anz[$3"|"$2]++; rolle[$3]++ }
    END { for (r in rolle) printf "%s\t%d\t%d\t%d\n", r, rolle[r], anz[r"|skill"], anz[r"|task"] }
    ' "$MAP" | sort)
BGESAMT=$(printf '%s\n' "$BESTAND" | awk -F'\t' '{s+=$2} END{print s+0}')

# --- 2. Laeufe einlesen: datum, loop, rc, sekunden, ergebnistext, kosten ----
# ZWEI Quellen, zusammengefuehrt (Umstellung 11.09.2026):
#   (a) Runner-Logs logbuch/vollgas/<Station>.log — der vollgas-runner schrieb
#       seit dem 27.07.2026 keine Zeile mehr; ab dem 26.08. lag er ganz ausserhalb
#       jedes 30-Tage-Fensters, und die Bilanz meldete "keine Daten", waehrend die
#       Loops laut Radar laengst lieferten. Bleibt fuer die Historie drin.
#   (b) Lauf-Journal logbuch/laeufe/*.jsonl aus scripts/claude-run.sh bzw.
#       vollgas-schub.sh — die Hauptquelle, sobald die produktiven Loops dort
#       schreiben (Bedingung vom 31.07., am 11.09. mit 2'508 Laeufen erfuellt).
#       Traegt zusaetzlich die KOSTEN je Lauf.
# Keine Ueberlappung: die Runner-Logs enden am 27.07., das Journal beginnt am
# 29.07. Wer eine neue Quelle anhaengt, prueft das erneut — sonst zaehlt ein Lauf
# doppelt.
cat "$LOGDIR"/*.log 2>/dev/null | sed -nE \
    's/^([0-9]{4}-[0-9]{2}-[0-9]{2}) [0-9:]+ \[[A-Za-z]+\] ENDE +([a-z0-9-]+) \(rc=([0-9-]+), ([0-9]+)s\):? ?(.*)$/\1\t\2\t\3\t\4\t\5\t/p' \
    | awk -F'\t' -v seit="$SEIT" '$1 >= seit' > "$TMP/laeufe"
J_IM_FENSTER=0
if ls "$HUB"/logbuch/laeufe/*.jsonl >/dev/null 2>&1; then
    cat "$HUB"/logbuch/laeufe/*.jsonl 2>/dev/null | python3 -c '
import json, sys
seit = sys.argv[1]
for zeile in sys.stdin:
    try:
        d = json.loads(zeile)
    except Exception:
        continue
    if "rc" not in d:          # die zwei verschachtelten Testzeilen vom 29.07.
        continue
    datum = str(d.get("ts", ""))[:10]
    if datum < seit:
        continue
    rc = d.get("rc", 1)
    if d.get("is_error") and rc == 0:
        rc = 1                 # SDK meldet Fehler trotz rc=0: nicht als Arbeit zaehlen
    text = str(d.get("result_tail", "")).replace("\t", " ").replace("\n", " ")
    kosten = d.get("cost_usd") or 0
    print("%s\t%s\t%s\t%d\t%s\t%.4f" % (datum, d.get("loop", "unbenannt"), rc,
          int(d.get("wall_s") or 0), text, float(kosten)))
' "$SEIT" >> "$TMP/laeufe"
    J_IM_FENSTER=$(awk -F'\t' '$6 != ""' "$TMP/laeufe" | wc -l | tr -d ' ')
fi

# Lauf-Klasse und Delta-Null-Marker je Lauf bestimmen.
# Delta Null erkennt der Lauf selbst: er sagt im Ergebnistext, dass es nichts
# Neues gab. Das ist ein schwaecheres Signal als das Liefer-Delta unten, aber es
# ist da, wo kein Zielpfad hinterlegt ist, das einzige verfuegbare.
# Nummerierte Serienlaeufe (mschub543, vollschub410, rev88 …) sind EIN Vorgang,
# nicht 1'300 Loops. Steht der Name nicht im Register, wird die Endziffer durch
# "#" ersetzt; das Register fuehrt die Serie dann als "mschub#". Ohne diese
# Zusammenfassung stand am 11.09.2026 44 % der produktiven Zeit als
# "unzugeordnet" und die Ertragstabelle haette ueber tausend Zeilen gezaehlt.
awk -F'\t' '
    NR == FNR { if ($0 !~ /^#/ && NF >= 3) reg[$1] = 1; next }
    {
        if (!($2 in reg) && $2 ~ /[0-9]+$/) { s = $2; sub(/[0-9]+$/, "#", s); if (s in reg) $2 = s }
        print
    }' OFS='\t' "$MAP" "$TMP/laeufe" > "$TMP/laeufe.norm" && mv "$TMP/laeufe.norm" "$TMP/laeufe"

awk -F'\t' '{
        rc = $3 + 0
        if (rc == 0)       klasse = "geliefert"
        else if (rc > 128) klasse = "abgewuergt"
        else               klasse = "fehlstart"
        t = tolower($5)
        leer = 0
        if (t ~ /nichts neu/ || t ~ /keine aenderung/ || t ~ /keine .nderung/ \
            || t ~ /delta[ -]?null/ || t ~ /bereits vollst/ || t ~ /bereits abgedeckt/ \
            || t ~ /unver.ndert/ || t ~ /keine neuen/ || t ~ /kein neuer/ \
            || t ~ /kein diff/ || t ~ /entf.llt, da keine/) leer = 1
        printf "%s\t%s\t%s\t%s\t%d\t%s\n", $1, $2, klasse, $4, leer, ($6 == "" ? 0 : $6)
    }' "$TMP/laeufe" > "$TMP/klassiert"

# --- 2b. Frische der Datenquelle -------------------------------------------
# Eine Bilanz, deren Quelle versiegt ist, liefert weiter plausible Zahlen — sie
# beschreibt nur nicht mehr die Gegenwart. Belegt am 31.07.2026: der
# vollgas-runner schrieb seit dem 27.07. keine Zeile mehr, die Bilanz zeigte
# aber unveraendert 467 Laeufe und 64.5 Stunden, als waere nichts geschehen.
# Darum meldet sie ihre eigene Aktualitaet, bevor irgendeine Zahl kommt
# (Rule auto-verbesserungen 260730b: Betriebszustand messen, nie fortschreiben).
JUENGSTE=$(awk -F'\t' '{if ($1 > m) m = $1} END {print m}' "$TMP/laeufe")
JUENGSTE=${JUENGSTE:-keine}
if [ "$JUENGSTE" = "keine" ]; then
    FRISCHE="KEINE DATEN im Messfenster — die Quelle liefert nichts."
    FRISCHE_ALT=999
else
    FRISCHE_ALT=$(( ( $(date +%s) - $(date -j -f "%Y-%m-%d" "$JUENGSTE" +%s 2>/dev/null || echo 0) ) / 86400 ))
    if [ "$FRISCHE_ALT" -le 1 ]; then
        FRISCHE="aktuell (jüngster erfasster Lauf: $JUENGSTE)"
    else
        FRISCHE="VERALTET — jüngster erfasster Lauf ist $JUENGSTE, also $FRISCHE_ALT Tage her."
    fi
fi

# Zweite, moderne Quelle: das Lauf-Journal aus scripts/claude-run.sh. Es traegt
# rc, Laufzeit und Kosten je Lauf und waere die bessere Grundlage — solange dort
# aber nur Test- und Dispatch-Laeufe stehen, wird es NICHT in die Rollenzahlen
# gemischt, sondern nur ausgewiesen. Eine Quelle, die etwas anderes zaehlt als
# sie vorgibt, ist schlimmer als eine fehlende.
JOURNAL="$HUB/logbuch/laeufe"
if [ -d "$JOURNAL" ]; then
    J_N=$(cat "$JOURNAL"/*.jsonl 2>/dev/null | grep -c . )
    J_LOOPS=$(cat "$JOURNAL"/*.jsonl 2>/dev/null | sed -nE 's/.*"loop":"([^"]+)".*/\1/p' | sort -u | tr '\n' ' ')
    J_JUENGST=$(ls -t "$JOURNAL"/*.jsonl 2>/dev/null | head -1 | xargs -I{} basename {} 2>/dev/null)
else
    J_N=0; J_LOOPS=""; J_JUENGST=""
fi

# --- 3. Lauf-Qualitaet insgesamt -------------------------------------------
QUAL=$(awk -F'\t' '{n[$3]++; s[$3]+=$4; c[$3]+=$6} END {for (k in n) printf "%s\t%d\t%d\t%.2f\n", k, n[k], s[k], c[k]}' "$TMP/klassiert")
GES_N=$(awk -F'\t' '{s+=$2} END{print s+0}' <<<"$QUAL")
GES_S=$(awk -F'\t' '{s+=$3} END{print s+0}' <<<"$QUAL")
PROD_S=$(awk -F'\t' '$1=="geliefert"{print $3+0}' <<<"$QUAL"); PROD_S=${PROD_S:-0}
PROD_N=$(awk -F'\t' '$1=="geliefert"{print $2+0}' <<<"$QUAL"); PROD_N=${PROD_N:-0}

# --- 4. Liefer-Delta aus git je Zielpfad -----------------------------------
# Lesend und ueber den SSD-Klon, damit kein git-Befehl den SMB-Mount beruehrt
# (Rule sync-kanonische-quelle: kein git ueber SMB).
GITREPO="$SSD"; GITQUELLE="SSD-Klon"
[ -d "$GITREPO/.git" ] || { GITREPO="$HUB"; GITQUELLE="NAS (kein SSD-Klon gefunden)"; }
if [ -d "$GITREPO/.git" ]; then
    git -C "$GITREPO" log --since="$SEIT" --name-only --pretty=format: 2>/dev/null \
        | grep -v '^$' | sort | uniq -c | awk '{print $2"\t"$1}' > "$TMP/geaendert"
else
    : > "$TMP/geaendert"
fi

# Je Loop mit hinterlegtem Pfad die Zahl geaenderter Dateien summieren.
awk -F'\t' '
    NR == FNR { if ($0 !~ /^#/ && NF >= 6 && $6 != "") pfad[$1] = $6; next }
    { for (l in pfad) if (index($1, pfad[l]) == 1) delta[l] += $2 }
    END { for (l in delta) printf "%s\t%d\n", l, delta[l] }
    ' "$MAP" "$TMP/geaendert" > "$TMP/lieferdelta"

# --- 5. Produktive Zeit je Rolle -------------------------------------------
ROLLENZEIT=$(awk -F'\t' '
    NR == FNR { if ($0 !~ /^#/ && NF >= 3 && $3 != "-") rolle[$1] = $3; next }
    $3 == "geliefert" {
        r = (($2 in rolle) ? rolle[$2] : "unzugeordnet")
        sek[r] += $4; n[r]++; if ($5 == 1) leer[r]++; kost[r] += $6
    }
    END { for (r in sek) printf "%s\t%d\t%d\t%d\t%.2f\n", r, sek[r], n[r], leer[r]+0, kost[r] }
    ' "$MAP" "$TMP/klassiert" | sort)

# --- 6. Report --------------------------------------------------------------
{
cat <<HEAD
# Rollen-Bilanz JANS AI Hub — Stand $HEUTE

Messfenster: $TAGE Tage (seit $SEIT)
Register: logbuch/rollen/rollen-map.tsv · Liefer-Delta aus: $GITQUELLE
Taxonomie: docs/konzepte/260729-Rollen-Taxonomie/

## 0. Aktualität der Datenquelle

**Stand der Quellen (Runner-Logs + Lauf-Journal): $FRISCHE**

Diese Zeile steht vor allen Zahlen, weil eine Bilanz mit versiegter Quelle
weiterhin plausible Werte liefert und nur nicht mehr die Gegenwart beschreibt.
Ist der Wert veraltet, sind alle folgenden Zahlen ein historischer Befund und
kein Betriebszustand.

Zweite Quelle, Lauf-Journal (\`logbuch/laeufe/\`): $J_N Einträge, jüngste Datei
$J_JUENGST. Erfasste Loops: $J_LOOPS

Davon im Messfenster: $J_IM_FENSTER Läufe. Seit dem 11.09.2026 ist das Journal die
**Hauptquelle** der Bilanz: die Bedingung vom 31.07. (produktive Loops schreiben
dort, nicht nur Tests) ist mit den Schub-Lanes erfüllt. Die Runner-Logs bleiben
für die Historie eingelesen; sie enden am 27.07., das Journal beginnt am 29.07.,
es zählt also kein Lauf doppelt. Das Journal trägt zusätzlich die **Kosten** je
Lauf (USD, Selbstauskunft des SDK).

## 1. Lauf-Qualität — was von den Läufen überhaupt Arbeit war

Diese Sektion steht bewusst zuoberst. Ohne sie liest man Betriebsstörungen als
Auslastung.

| Klasse | Läufe | Stunden | Anteil Zeit | Ø Dauer | Kosten USD |
|---|---|---|---|---|---|
HEAD

printf '%s\n' "$QUAL" | sort | awk -F'\t' -v g="$GES_S" '
    {printf "| %s | %d | %.1f | %.0f %% | %.0f s | %.0f |\n", $1, $2, $3/3600, (g>0?100*$3/g:0), ($2>0?$3/$2:0), $4}'
printf '| **Total** | **%d** | **%.1f** | | | **%.0f** |\n' "$GES_N" "$(awk "BEGIN{print $GES_S/3600}")" "$(awk -F'\t' '{s+=$4} END{print s+0}' <<<"$QUAL")"

cat <<MID

Lesehilfe:

- **geliefert** heisst, der Lauf kam durch (rc=0). Nur diese Zeit ist Arbeit.
- **abgewürgt** heisst, der Stall-Killer hat einen Hänger nach über einer Stunde
  beendet (rc>128). Diese Zeit ist vollständig verbrannt.
- **Fehlstart** heisst, der Lauf brach sofort ab, typisch nach wenigen Sekunden
  (leeres Kontingent, abweisendes Gate). Er kostet fast keine Zeit, bläht aber
  jede Lauf-Zählung auf.

## 2. Bestand je Rolle

| Rolle | Bausteine | davon Skills | davon Loops |
|---|---|---|---|
MID

printf '%s\n' "$BESTAND" | awk -F'\t' 'NF>=4 {printf "| %s | %d | %d | %d |\n", $1, $2, $3, $4}'
echo "| **Total** | **$BGESAMT** | | |"

cat <<MID2

## 3. Produktive Rechenzeit je Rolle

Nur gelieferte Läufe ($PROD_N Läufe, $(awk "BEGIN{printf \"%.1f\", $PROD_S/3600}") Stunden).
Die Spalte "Delta Null" zählt Läufe, die selbst melden, dass es nichts Neues gab.

| Rolle | Stunden | Läufe | davon Delta Null | Anteil Zeit | Kosten USD |
|---|---|---|---|---|---|
MID2

printf '%s\n' "$ROLLENZEIT" | awk -F'\t' -v g="$PROD_S" '
    {printf "| %s | %.1f | %d | %d | %.0f %% | %.0f |\n", $1, $2/3600, $3, $4, (g>0?100*$2/g:0), $5}'

WAND=$(( TAGE * 24 * 2 ))
cat <<MID3

Bezugsgrösse: $WAND Stunden Wandzeit (zwei Stationen, $TAGE Tage). Die produktive
Zeit entspricht $(awk "BEGIN{printf \"%.1f\", 100*$PROD_S/3600/$WAND}") % davon. Der Hub ist also weit von einer
Vollauslastung entfernt; das Problem ist nicht die Menge, sondern die Verteilung.

## 4. Ertrag je Loop

Geliefert = Läufe mit rc=0. Delta Null = Lauf meldet selbst nichts Neues.
Dateien = geänderte Dateien im Zielbereich des Loops laut git.

Die Dateispalte ist ein **Bereichs-Indikator, kein Urheberschaftsnachweis**.
Sie zählt alles, was im Zielbereich geändert wurde, unabhängig davon, wer es
geändert hat. Zwei Folgen, die man kennen muss, sonst liest man die Spalte
falsch: bei geteiltem Zielbereich (normen-nacht und normen-mini, twin-mail und
twin-fidelity, wettbewerbs-dna und -nachbrenner) steht bei beiden derselbe Wert,
er ist nicht aufteilbar und nicht addierbar. Und ein stillgelegter Loop kann
trotzdem eine hohe Zahl tragen, weil andere im selben Bereich gearbeitet haben.

Verdächtig ist die Kombination: viele Läufe, wenig Stunden, Delta-Null-Meldungen.

| Loop | geliefert | Delta Null | Stunden | Dateien im Zielbereich |
|---|---|---|---|---|
MID3

awk -F'\t' '
    NR == FNR { d[$1] = $2; next }
    $3 == "geliefert" { n[$2]++; s[$2] += $4; if ($5 == 1) leer[$2]++ }
    END { for (l in n) printf "%d\t%s\t%d\t%d\t%s\n", s[l], l, n[l], leer[l]+0, (l in d ? d[l] : "-") }
    ' "$TMP/lieferdelta" "$TMP/klassiert" | sort -rn \
    | awk -F'\t' '{printf "| %s | %d | %d | %.1f | %s |\n", $2, $3, $4, $1/3600, $5}'

UNZ=$(awk -F'\t' '
    NR == FNR { if ($0 !~ /^#/ && NF >= 3 && $3 != "-") rolle[$1] = 1; next }
    !($2 in rolle) { n[$2]++ }
    END { for (l in n) printf "%s (%d Laeufe)\n", l, n[l] }' "$MAP" "$TMP/klassiert")

if [ -n "$UNZ" ]; then
cat <<UNZHEAD

## 5. Nicht im Register geführt — Registerpflege nötig

Diese Loops sind gelaufen, tragen aber keine Rolle. Ihre Zeit steht oben unter
"unzugeordnet" und verfälscht jede Quote, solange sie fehlt:

UNZHEAD
printf '%s\n' "$UNZ" | sed 's/^/- /'
fi

cat <<FOOT

## 6. Messgrenzen (bewusst ausgewiesen)

- Erfasst sind ausschliesslich Läufe über den vollgas-runner. NICHT erfasst: die
  App-Scheduled-Task-Flotte (Morgenbriefings, Nacht-Lernläufe), die launchd-
  Trainings auf dem Mac Mini und alle interaktiven Sitzungen. Die Bilanz bildet
  den automatisierten Dauerbetrieb ab, nicht die Gesamtlast.
- Das Liefer-Delta zählt geänderte Dateien im Zielbereich eines Loops, nicht
  deren Wert und nicht deren Urheber. Zehn Zeilen Tippfehlerkorrektur zählen wie
  ein neuer Artikel, und eine fremde Änderung im selben Ordner zählt mit. Es ist
  ein Indikator für "im Bereich passiert etwas", nicht für "dieser Loop liefert".
  Wer Urheberschaft braucht, muss die Loops ihre Commits selbst zeichnen lassen.
- Loops ohne hinterlegten Zielpfad im Register erscheinen mit "-". Das ist keine
  Null, sondern "nicht gemessen".
- Delta Null stammt aus dem Selbstbericht des Laufs. Ein Lauf, der abgeschossen
  wird, meldet gar nichts und ist von einem stillen gesunden Lauf nicht zu
  unterscheiden (Rule auto-verbesserungen 260729).

Erzeugt von scripts/rollen-bilanz.sh
FOOT
} > "$REPORT"

echo "Report: $REPORT"
echo
if [ "$FRISCHE_ALT" -gt 1 ]; then
    echo "  ACHTUNG Quelle: $FRISCHE"
    echo "  Die folgenden Zahlen sind ein historischer Befund, kein Betriebszustand."
    echo
fi
printf '%s\n' "$QUAL" | sort | awk -F'\t' -v g="$GES_S" '
    {printf "  %-11s %6d Laeufe  %6.1f h  %3.0f %% der Zeit  USD %.0f\n", $1, $2, $3/3600, (g>0?100*$3/g:0), $4}'
echo
printf '%s\n' "$ROLLENZEIT" | awk -F'\t' -v g="$PROD_S" '
    {printf "  %-14s %6.1f h produktiv  %3.0f %%  (%d Laeufe, %d Delta Null, USD %.0f)\n", $1, $2/3600, (g>0?100*$2/g:0), $3, $4, $5}'
