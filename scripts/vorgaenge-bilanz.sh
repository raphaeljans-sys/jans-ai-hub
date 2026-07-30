#!/bin/bash
# vorgaenge-bilanz.sh — Durchlaufzeit und Wartezeit des JANS-Betriebs messen
#
# LEITGROESSE (Entscheid Raphael 31.07.2026): Effektivitaet bemisst sich an
# Durchlaufzeit und Wartezeit, nicht an der Zahl erzeugter Artefakte.
#
# DAS PROBLEM, das dieses Script loest:
# Der Logbuch-Radar liefert taeglich exzellente Befunde — aber als Prosa. Im
# Register steht, dass der UBS-Blocker 32 Tage lag, dass eine Notariats-Antwort
# seit 12 Tagen als unversandter Entwurf liegt, dass ein Lueftungsplan
# zurueckgewiesen wurde. Jede dieser Aussagen ist eine Durchlaufzeit, aber keine
# davon ist eine Zahl. Man kann heute nicht beantworten: wie viele Vorgaenge sind
# offen, welcher liegt am laengsten, bei wem liegt der Ball, wo wird nicht
# nachgefasst. Das Signal ist da, es ist nur nicht messbar.
#
# WAS ES TUT:
#   1. extrahiert aus logbuch/fristen.md je Tabellenzeile einen Vorgang
#   2. fuehrt ihn in logbuch/vorgaenge/vorgaenge.tsv (manuell gepflegte Felder
#      wie `eroeffnet` bleiben dabei erhalten)
#   3. rechnet die Kennzahlen und schreibt den Report
#
# EHRLICHKEIT UEBER DIE EXTRAKTION: `ball_bei` wird nur gesetzt, wenn ein Marker
# im Text belegt ist (AKTION JANS / AKTION Raphael / Ball bei X). Sonst bleibt
# "unbekannt" stehen. Es wird NICHT geraten, und die Trefferquote steht im
# Report — eine stille Luecke waere schlimmer als eine ausgewiesene.
#
# Aufruf:  bash scripts/vorgaenge-bilanz.sh [NACHFASS_TAGE]   (Default 7)
# Report:  logbuch/vorgaenge/YYMMDD-durchlauf-bilanz.md

set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
QUELLE="$HUB/logbuch/fristen.md"
OUTDIR="$HUB/logbuch/vorgaenge"
REGISTER="$OUTDIR/vorgaenge.tsv"
SCHWELLE="${1:-7}"

[ -d "$HUB" ]     || { echo "FEHLER: NAS nicht gemountet ($HUB)"; exit 1; }
[ -f "$QUELLE" ]  || { echo "FEHLER: Fristen-Register fehlt ($QUELLE)"; exit 1; }

STAMP="$(date '+%y%m%d')"
HEUTE="$(date '+%d.%m.%Y')"
HEUTE_ISO="$(date '+%Y-%m-%d')"
JAHR="$(date '+%Y')"
REPORT="$OUTDIR/${STAMP}-durchlauf-bilanz.md"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
mkdir -p "$OUTDIR"

# ---------------------------------------------------------------------------
# 1. Extraktion aus dem Fristen-Register
# ---------------------------------------------------------------------------
# Die Tabelle ist ein Lesedokument: der Prosatext enthaelt selbst Pipes, weshalb
# eine feste Spaltennummer unbrauchbar ist. Darum: erstes Feld = Frist, letztes
# Feld = Status, Titel aus dem ersten Fettdruck, Rest als Suchraum fuer Marker.
sed -n '/^## Aktiv/,$p' "$QUELLE" | grep '^| ' | grep -v '^| *Frist *|' | grep -v '^|---' \
| awk -F'|' -v heute="$HEUTE_ISO" -v jahr="$JAHR" '
    function trim(s) { gsub(/^[ \t]+|[ \t]+$/, "", s); return s }
    function slug(s,   t) {
        t = tolower(s); gsub(/[^a-z0-9]+/, "-", t); gsub(/^-+|-+$/, "", t)
        return substr(t, 1, 44)
    }
    # Datum TT.MM.JJJJ oder TT.MM. -> ISO. Ohne Jahr gilt das laufende.
    function iso(d,   p, tag, mon, jr) {
        if (d ~ /[0-9][0-9]?\.[0-9][0-9]?\.[0-9][0-9][0-9][0-9]/) {
            split(d, p, "."); tag = p[1]; mon = p[2]; jr = p[3]
        } else if (d ~ /[0-9][0-9]?\.[0-9][0-9]?\./) {
            split(d, p, "."); tag = p[1]; mon = p[2]; jr = jahr
        } else return ""
        return sprintf("%04d-%02d-%02d", jr, mon, tag)
    }
    {
        zeile = $0
        # VON HINTEN parsen: die letzten vier Felder (Quelle, Projekt, Prio,
        # Status) sind kurz und enthalten nie Pipes. Der Prosatext dagegen schon,
        # weshalb eine feste Spaltennummer von vorne regelmaessig danebengreift
        # (belegt: "mail/Sent Items" landete als Status im Register).
        ende = NF; if (trim($NF) == "") ende = NF - 1   # trailing Pipe

        # Der Status ist ein Enum, kein beliebiger Text. Die Zeilen des Registers
        # sind von Hand gewachsen und haben nicht alle gleich viele Spalten —
        # blind das letzte Feld zu nehmen holt sonst das Quellenfeld herein
        # (belegt: "mail Exchange (29.07. ...)" stand als Status im Register).
        # Darum in den letzten drei Feldern nach einem bekannten Wert suchen.
        status = "unklar"
        for (i = ende; i >= ende - 2 && i >= 2; i--) {
            k = tolower(trim($i))
            if (k ~ /^(offen|beobachten|nachfassen|erledigt|termin|zu pruefen|zu prüfen|zu klaeren|zu klären|entfaellt|entfällt|entscheid raphael|hoch|mittel|tief)/) {
                if (k ~ /^(hoch|mittel|tief)$/) continue   # das ist die Prio-Spalte
                status = trim($i); break
            }
        }
        projekt = trim($(ende-2))
        textbis = ende - 4
        if (textbis < 3) textbis = 3

        frist_roh = trim($2)

        text = ""
        for (i = 3; i <= textbis; i++) text = text (i > 3 ? " " : "") $i
        text = trim(text)

        # Titel: der einleitende Fettdruck-Block, aber nur wenn der Text damit
        # beginnt. Steht das Fett mitten in der Prosa, ist es eine Hervorhebung
        # und kein Titel — dann die ersten Woerter nehmen.
        titel = ""
        if (match(text, /^\*\*[^*]+\*\*/)) {
            titel = substr(text, RSTART + 2, RLENGTH - 4)
        } else {
            titel = text
            gsub(/\*\*/, "", titel)
            if (length(titel) > 80) { titel = substr(titel, 1, 80); sub(/ [^ ]*$/, "", titel) }
        }
        gsub(/\|/, " ", titel); gsub(/`/, "", titel)
        titel = trim(titel)
        sub(/[.:,;]+$/, "", titel)
        if (length(titel) > 90) titel = substr(titel, 1, 90)

        # Ball: nur belegte Marker
        ball = "unbekannt"
        if (zeile ~ /Ball zur(ue|ü)ck bei JANS/)      ball = "JANS"
        else if (zeile ~ /AKTION JANS/)               ball = "JANS"
        else if (zeile ~ /AKTION Raphael/)            ball = "Raphael"
        else if (match(zeile, /Ball bei [A-ZÄÖÜ][A-Za-zÄÖÜäöü\/ -]{2,24}/)) {
            ball = substr(zeile, RSTART + 9, RLENGTH - 9)
            # am ersten Satzende abschneiden, sonst wandert Prosa ins Feld
            sub(/[.,;].*$/, "", ball)
            sub(/ (Haengt|Hängt|Beleg|Der|Die|Das|und) .*$/, "", ball)
            gsub(/[ ,.]+$/, "", ball)
            if (length(ball) > 2) ball = "extern: " ball; else ball = "unbekannt"
        }
        else if (zeile ~ /AKTION:/)                   ball = "JANS"

        # Letzte Bewegung: juengstes Datum im Quellen-/Belegfeld der Zeile
        bewegung = ""
        tmp = zeile
        while (match(tmp, /[0-9][0-9]?\.[0-9][0-9]?\.(20[0-9][0-9])?/)) {
            d = iso(substr(tmp, RSTART, RLENGTH))
            if (d != "" && d <= heute && d > bewegung) bewegung = d
            tmp = substr(tmp, RSTART + RLENGTH)
        }

        # Eroeffnet: nur wenn ausdruecklich "seit <Datum>" im Text steht
        eroeffnet = ""
        if (match(zeile, /seit (dem )?[0-9][0-9]?\.[0-9][0-9]?\.(20[0-9][0-9])?/)) {
            s = substr(zeile, RSTART, RLENGTH)
            sub(/seit (dem )?/, "", s)
            eroeffnet = iso(s)
        }

        frist = iso(frist_roh); if (frist == "") frist = frist_roh

        printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", \
               slug(titel), titel, projekt, frist, status, ball, bewegung, eroeffnet
    }' > "$TMP/neu"

ROH=$(wc -l < "$TMP/neu" | tr -d ' ')

# ---------------------------------------------------------------------------
# 2. Register fortschreiben — manuell gepflegte Felder gewinnen
# ---------------------------------------------------------------------------
# `eroeffnet` und ein korrigiertes `ball_bei` sind das, was ein Mensch (oder der
# Radar) nachtraegt. Ein Neulauf darf das nie ueberschreiben, sonst ist die
# Pflege sinnlos.
if [ -f "$REGISTER" ]; then
    awk -F'\t' '
        FILENAME ~ /vorgaenge.tsv/ {
            if ($0 !~ /^#/ && NF >= 8) { alt_er[$1] = $8; alt_ball[$1] = $6 }
            next
        }
        {
            er = ($8 != "" ? $8 : (($1 in alt_er) ? alt_er[$1] : ""))
            ball = $6
            if (ball == "unbekannt" && ($1 in alt_ball) && alt_ball[$1] != "unbekannt") ball = alt_ball[$1]
            printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", $1, $2, $3, $4, $5, ball, $7, er
        }' "$REGISTER" "$TMP/neu" > "$TMP/merged"
else
    cp "$TMP/neu" "$TMP/merged"
fi

{
    echo "# Vorgangs-Register — Durchlaufzeit und Wartezeit"
    echo "#"
    echo "# Erzeugt aus logbuch/fristen.md von scripts/vorgaenge-bilanz.sh."
    echo "# Spalten: id <TAB> titel <TAB> projekt <TAB> frist <TAB> status <TAB> ball_bei <TAB> letzte_bewegung <TAB> eroeffnet"
    echo "#"
    echo "# ball_bei wird nur gesetzt, wenn ein Marker im Text belegt ist"
    echo "# (AKTION JANS / AKTION Raphael / Ball bei X). Sonst 'unbekannt' — nie geraten."
    echo "# eroeffnet wird von Hand bzw. vom Radar gepflegt und bei Neulaeufen NICHT"
    echo "# ueberschrieben. Ohne dieses Feld gibt es keine Durchlaufzeit."
    echo "#"
    echo "# Stand: $HEUTE"
    sort -t"$(printf '\t')" -k1,1 "$TMP/merged"
} > "$REGISTER"

# ---------------------------------------------------------------------------
# 3. Kennzahlen
# ---------------------------------------------------------------------------
# mktime/gensub sind GNU-awk-Erweiterungen und fehlen im awk von macOS. Die
# Tagesdifferenz wird darum ueber die Julianische Tageszahl gerechnet — portabel,
# ohne externen Aufruf je Zeile.
KENN=$(awk -F'\t' -v heute="$HEUTE_ISO" -v schwelle="$SCHWELLE" '
    function jdn(y, m, d,   a, y2, m2) {
        a = int((14 - m) / 12); y2 = y + 4800 - a; m2 = m + 12 * a - 3
        return d + int((153 * m2 + 2) / 5) + 365 * y2 + int(y2 / 4) \
               - int(y2 / 100) + int(y2 / 400) - 32045
    }
    function tage(von,   p, q) {
        if (von !~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/) return -1
        split(von, p, "-"); split(heute, q, "-")
        return jdn(q[1], q[2], q[3]) - jdn(p[1], p[2], p[3])
    }
    /^#/ || NF < 8 { next }
    {
        gesamt++
        st = tolower($5)
        offen = (st !~ /erledigt|entf/)
        if (!offen) { erledigt++; next }
        aktiv++
        ball[$6]++
        if ($6 == "unbekannt") ballunklar++
        t = tage($8)
        if (t >= 0) { mitdatum++; summe += t; if (t > max) { max = t; maxtitel = $2 } }
        b = tage($7)
        if (b >= 0 && b > schwelle && $6 ~ /extern/) { liegt++; liegtliste = liegtliste "\n- " $2 " (" b " Tage ohne Bewegung, " $6 ")" }
    }
    END {
        printf "gesamt\t%d\naktiv\t%d\nerledigt\t%d\nmitdatum\t%d\nsumme\t%d\nmax\t%d\nmaxtitel\t%s\nballunklar\t%d\nliegt\t%d\n", \
               gesamt, aktiv, erledigt, mitdatum, summe, max, maxtitel, ballunklar, liegt
        for (b in ball) printf "ball\t%s\t%d\n", b, ball[b]
        printf "liegtliste\t%s\n", liegtliste
    }' "$REGISTER" 2>/dev/null)

hole() { printf '%s\n' "$KENN" | awk -F'\t' -v k="$1" '$1==k {print $2; exit}'; }
GESAMT=$(hole gesamt);   AKTIV=$(hole aktiv);     ERLEDIGT=$(hole erledigt)
MITDATUM=$(hole mitdatum); SUMME=$(hole summe);   MAX=$(hole max)
MAXTITEL=$(hole maxtitel); BALLUNKLAR=$(hole ballunklar); LIEGT=$(hole liegt)
MITTEL=$([ "${MITDATUM:-0}" -gt 0 ] && awk "BEGIN{printf \"%.0f\", $SUMME/$MITDATUM}" || echo "-")

# ---------------------------------------------------------------------------
# 4. Report
# ---------------------------------------------------------------------------
{
cat <<HEAD
# Durchlauf-Bilanz — Stand $HEUTE

Leitgrösse des Hubs: Durchlaufzeit und Wartezeit (Entscheid 31.07.2026).
Quelle: logbuch/fristen.md · Register: logbuch/vorgaenge/vorgaenge.tsv

## 1. Bestand

| Grösse | Wert |
|---|---|
| Vorgänge insgesamt | $GESAMT |
| davon aktiv | $AKTIV |
| davon erledigt | $ERLEDIGT |
| mit Eröffnungsdatum (messbar) | $MITDATUM von $AKTIV |
| mittleres Alter der messbaren | $MITTEL Tage |
| ältester offener Vorgang | $MAX Tage |

Ältester: $MAXTITEL

## 2. Bei wem liegt der Ball

| Ball bei | Vorgänge |
|---|---|
HEAD

printf '%s\n' "$KENN" | awk -F'\t' '$1=="ball" {printf "| %s | %d |\n", $2, $3}' | sort -t'|' -k3 -rn

cat <<MID

Bei $BALLUNKLAR von $AKTIV aktiven Vorgängen liess sich der Ball nicht aus dem
Text belegen. Diese Zahl ist die wichtigste Qualitätsangabe dieser Bilanz: sie
sagt, wie gross der blinde Fleck ist. Sie sinkt, sobald der Radar beim Eintragen
konsequent «AKTION JANS», «AKTION Raphael» oder «Ball bei \<Stelle\>» schreibt.

## 3. Nachfass-Schwelle ($SCHWELLE Tage)

Vorgänge, die extern liegen und seit über $SCHWELLE Tagen keine Bewegung zeigen: **$LIEGT**
MID

printf '%s\n' "$KENN" | awk -F'\t' '$1=="liegtliste" {print $2}'

cat <<FOOT

Das ist der Regelkreis: jeder Eintrag hier ist ein Kandidat für einen
Nachfass-Entwurf. Erstellt wird er vom Skill \`logbuch\` bzw. auf Zuruf; versendet
wird nichts ohne Freigabe.

## 4. Was diese Bilanz noch nicht kann

- **Durchlaufzeit misst nur, wo ein Eröffnungsdatum steht.** Aktuell $MITDATUM von
  $AKTIV aktiven Vorgängen. Das Feld wird nur gesetzt, wenn im Text ausdrücklich
  «seit \<Datum\>» steht; es wird nie geraten. Jeder neue Vorgang sollte es
  mitbekommen, dann wächst die Messbasis von selbst.
- **Erledigte Vorgänge tragen kein Abschlussdatum.** Damit lässt sich die
  abgeschlossene Durchlaufzeit (die eigentliche Zielgrösse) noch nicht rechnen,
  nur das Alter der offenen. Das Feld kommt, sobald der Radar es beim Schliessen
  setzt.
- **Wartezeit ist nicht in eigene und fremde Anteile getrennt.** Dafür müsste je
  Vorgang die Ball-Historie mitlaufen, nicht nur der aktuelle Stand.

Erzeugt von scripts/vorgaenge-bilanz.sh · $ROH Tabellenzeilen gelesen
FOOT
} > "$REPORT"

echo "Report:    $REPORT"
echo "Register:  $REGISTER"
echo
echo "  Vorgaenge: $GESAMT gesamt, $AKTIV aktiv, $ERLEDIGT erledigt"
echo "  Messbar:   $MITDATUM von $AKTIV haben ein Eroeffnungsdatum (Mittel $MITTEL Tage, aeltester $MAX)"
echo "  Ball:      bei $BALLUNKLAR von $AKTIV nicht belegbar"
echo "  Nachfass:  $LIEGT Vorgaenge liegen extern ueber $SCHWELLE Tage ohne Bewegung"
