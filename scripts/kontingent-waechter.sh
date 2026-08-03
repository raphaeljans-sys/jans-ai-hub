#!/bin/bash
# ============================================================================
# JANS AI Hub — Kontingent-Waechter (Meldekanal AUSSERHALB des Kontingents)
# ============================================================================
# Auftrag Raphael 03.08.2026, Block B des Plans nach dem Wochenlimit-Vorfall.
#
# DAS PROBLEM, das dieses Script loest:
# Der vollgas-chef-radar und die vollgas-fruehwarnung sind selbst `claude`-
# Laeufe. Sie trinken aus demselben Kontingent wie das, was sie beaufsichtigen
# — und fallen deshalb GENAU DANN aus, wenn gemeldet werden muesste. Belegt
# 01.-03.08.2026: das Wochenkontingent war 47 Stunden leer, der Radar konnte
# 56 Stunden nicht laufen, und der Vorfall stand erst danach im RADAR.md.
#
# DIESES SCRIPT RUFT KEIN MODELL AUF. Es ist reines bash/python, kostet keine
# Token und funktioniert deshalb auch bei vollstaendig erschoepftem Kontingent.
# Das ist sein ganzer Zweck — jede Erweiterung, die einen Modellaufruf
# einfuehrt, zerstoert ihn.
#
# ZWEI MELDEGRUENDE:
#   (1) REAKTIV  — "weekly limit" ist bereits eingetreten (Vorfall laeuft)
#   (2) PROAKTIV — das gemessene Budget hat die Drosselschwelle erreicht,
#                  bevor das Limit zuschlaegt (das eigentliche Ziel: der
#                  Vorfall vom 01.08. soll sich nicht wiederholen)
#
# JE MELDEGRUND UND WOCHE GENAU EINE MAIL. Die Sperrdatei liegt auf dem NAS
# und wird von beiden Stationen geteilt — sonst meldet jede Station denselben
# Vorfall, und der 30-Minuten-Takt macht daraus eine Mailflut.
#
# VERWENDUNG (haengt an ch.jans.speicher-waechter, alle 30 Min, beide Stationen):
#   bash kontingent-waechter.sh            normal, mailt bei Bedarf
#   bash kontingent-waechter.sh --pruefen  zeigt nur, was es taete (read-only,
#                                          mailt nie, setzt keine Sperre)
# ============================================================================

set -uo pipefail

NASDIR="/Volumes/daten/jans-ai-hub"
STATEDIR="$NASDIR/logbuch/kontingent"
LOGFILE="$STATEDIR/waechter.log"
MAILTO="rj@raphaeljans.ch"
STATION="$(hostname -s)"
MODUS="${1:-}"
STUNDEN_RUECKBLICK="${STUNDEN_RUECKBLICK:-6}"

[ -d "$NASDIR" ] || exit 0        # NAS nicht gemountet: still zuruecktreten

log() {
    mkdir -p "$STATEDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

# --- Wochenstart (identisch zu kontingent-budget.sh) --------------------------
DOW=$(date +%u); HOUR=$(date +%H)
if [ "$DOW" -eq 1 ] && [ "$HOUR" -lt 12 ]; then ZURUECK=7; else ZURUECK=$((DOW - 1)); fi
WOCHE="$(date -v-${ZURUECK}d '+%Y-%m-%d')"

# ============================================================================
# Mailversand — die EINZIGE Stelle im Budget-Regime, die nach aussen wirkt.
# Empfaenger ist fest rj@raphaeljans.ch (Raphael an sich selbst), nie ein
# Dritter. Aptos 12 pt gemaess Rule mail-formatierung.md.
# ============================================================================
mailen() {
    local betreff="$1" text="$2" tmp
    tmp=$(mktemp /tmp/kontingent-waechter.XXXXXX) || return 1
    python3 - "$text" > "$tmp" <<'PY'
import sys
t = sys.argv[1].replace("&", "&amp;").replace("<", "&lt;").replace("\n", "<br>")
print('<span style="font-family:Aptos,Calibri,Helvetica,sans-serif;'
      'font-size:12pt;color:#000000;">' + t + '</span>')
PY
    osascript >/dev/null 2>&1 <<AS
set htmlBody to (read POSIX file "$tmp" as «class utf8»)
tell application id "com.apple.mail"
	set m to make new outgoing message with properties {subject:"$betreff", content:"", visible:false}
	tell m
		set html content to htmlBody
		set sender to "$MAILTO"
		make new to recipient at end of to recipients with properties {address:"$MAILTO"}
	end tell
	send m
end tell
AS
    local rc=$?
    rm -f "$tmp"
    return $rc
}

# Sperre je Meldegrund UND Woche. Vorhanden = fuer diese Woche schon gemeldet.
melden() {
    local grund="$1" betreff="$2" text="$3"
    local sperre="$STATEDIR/gemeldet-${grund}-${WOCHE}.flag"
    if [ -f "$sperre" ]; then
        [ "$MODUS" = "--pruefen" ] && echo "  ($grund: fuer die Woche $WOCHE bereits gemeldet, still)"
        return 0
    fi
    if [ "$MODUS" = "--pruefen" ]; then
        echo "  WUERDE MAILEN [$grund]: $betreff"
        return 0
    fi
    if mailen "$betreff" "$text"; then
        mkdir -p "$STATEDIR" 2>/dev/null
        date '+%Y-%m-%d %H:%M:%S' > "$sperre"
        log "MAIL [$grund] versendet: $betreff"
    else
        log "MAIL [$grund] FEHLGESCHLAGEN — keine Sperre gesetzt, naechster Lauf versucht erneut."
    fi
}

# ============================================================================
# (1) REAKTIV: ist das Wochenlimit bereits eingetreten?
# ============================================================================
# Zwei Quellen, weil keine allein vollstaendig ist:
#   - dispatch/log/*.md  schreibt der Mac Mini (Nachtschicht, Trainings)
#   - Transcripts        fangen die Scheduled Tasks beider Stationen
# Bewusst NUR "weekly limit": ein 5-Stunden-Limit ist normaler Betrieb und
# kein Meldegrund (Vorgabe im vollgas-chef-radar).
#
# ACHTUNG — WARUM HIER NICHT NACH TEXT GEGREPT WIRD (Fehlschlag 03.08.2026):
# Die erste Fassung suchte schlicht `grep -l "weekly limit"`. Beim ersten
# Trockenlauf schlug sie sofort an und fand 36 Dateien — darunter die Session,
# die den Waechter GERADE BAUTE. Ein Text-Grep kann "die API hat ein Limit
# gemeldet" nicht von "jemand schreibt ueber ein Limit" unterscheiden, und
# jeder Radar-Lauf, jeder Bericht und jede Konversation ueber den Vorfall
# haette den Waechter ausgeloest. Ein Melder, der auf das Reden ueber seinen
# eigenen Gegenstand anspringt, meldet Dauerfeuer.
#
# Massgeblich ist deshalb der STRUKTURELLE Marker `isApiErrorMessage: true`
# in Verbindung mit dem Limit-Text — nachgemessen am echten Ausfallfenster
# 01.-03.08.: 29 Zeilen tragen ihn, die Prosa-Treffer tragen ihn nicht.
# Dasselbe Prinzip nennt die vollgas-fruehwarnung in ihrem Schritt 2.
# Bei den Dispatch-Logs zaehlt nur, was NACH der Zeile "# Ergebnis" steht —
# also die Ausgabe des Laufs, nicht sein Auftragstext.
#
# Ausserdem: fuer Transcripts gilt der Zeitstempel IM Inhalt, nicht die
# Datei-mtime. Die Transcript-Rotation fasst alte Dateien an und wuerde ein
# Jahr altes Ereignis als frisch erscheinen lassen.
TREFFER=$(python3 - "$NASDIR/dispatch/log" "$HOME/.claude/projects" "$STUNDEN_RUECKBLICK" <<'PY'
import json, glob, os, sys, time, datetime
logdir, projdir, stunden = sys.argv[1], sys.argv[2], float(sys.argv[3])
grenze_utc = (datetime.datetime.now(datetime.timezone.utc)
              - datetime.timedelta(hours=stunden)).strftime("%Y-%m-%dT%H:%M")
grenze_mtime = time.time() - stunden * 3600
treffer = []

# (a) Dispatch-Logs: nur der Ergebnisteil zaehlt
for f in glob.glob(os.path.join(logdir, "*.md")):
    try:
        if os.path.getmtime(f) < grenze_mtime:
            continue
        txt = open(f, errors="ignore").read()
        if "# Ergebnis" not in txt:
            continue
        if "weekly limit" in txt.split("# Ergebnis", 1)[1]:
            treffer.append(os.path.basename(f))
    except Exception:
        pass

# (b) Transcripts: struktureller API-Fehler, nicht Prosa
for f in glob.glob(os.path.join(projdir, "**", "*.jsonl"), recursive=True):
    try:
        if os.path.getmtime(f) < grenze_mtime:
            continue          # Vorfilter, spart das Parsen alter Dateien
        for line in open(f, errors="ignore"):
            if "weekly limit" not in line:
                continue
            try:
                d = json.loads(line)
            except Exception:
                continue
            if not d.get("isApiErrorMessage"):
                continue
            if d.get("timestamp", "") < grenze_utc:
                continue
            treffer.append(os.path.basename(f))
            break
    except Exception:
        pass
print(" ".join(sorted(set(treffer))[:3]))
PY
)

if [ -n "${TREFFER// /}" ]; then
    QUELLE="$TREFFER"
    melden "limit" \
        "Wochenkontingent ist erschoepft, der Hub steht" \
"Das Wochenkontingent ist aufgebraucht. Laeufe brechen mit «You've hit your weekly limit» ab, bis das Kontingent am Montag um 12:00 zurueckgesetzt wird.

Bis dahin liefern die Lern-Loops nichts. Die operativen Briefings sind ebenso betroffen, sobald sie faellig werden.

Gefunden im Rueckblick ueber $STUNDEN_RUECKBLICK Stunden, gemeldet von der Station $STATION.
Belegstellen: $QUELLE

Diese Meldung kommt aus dem Kontingent-Waechter, der ohne Modellaufruf laeuft und deshalb auch bei leerem Kontingent noch melden kann. Radar und Fruehwarnung koennen das nicht.

Lieber Gruss
Raphael"
fi

# ============================================================================
# (2) PROAKTIV: Budget-Schwelle erreicht, bevor das Limit zuschlaegt
# ============================================================================
BUDGET="$NASDIR/scripts/kontingent-budget.sh"
if [ -f "$BUDGET" ]; then
    # --json misst und schreibt die eigene Stationsdatei; der Waechter ist
    # damit zugleich der Mechanismus, der den Messstand aktuell haelt.
    B=$("$SHELL" "$BUDGET" --json 2>/dev/null | tail -1)
    if [ -n "$B" ]; then
        AMPEL=$(echo "$B" | python3 -c "import json,sys; print(json.load(sys.stdin).get('ampel',''))" 2>/dev/null)
        if [ "$AMPEL" = "DROSSEL" ]; then
            ZEILEN=$(echo "$B" | python3 -c "
import json,sys
b=json.load(sys.stdin)
print(f\"Verbraucht: {b['gesamt_mio']} von rund {b['budget_mio']} Mio (Schaetzgroesse 'teuer') = {b['anteil_prozent']} %.\")
print(f\"Die Woche ist erst zu {b['woche_verstrichen_prozent']} % verstrichen, der Verbrauch liegt {b['vorsprung_punkte']} Punkte vor dem Zeitplan.\")
for s,v in sorted(b['stationen'].items()):
    print(f\"  {s}: {v['teuer_mio']} Mio\")
" 2>/dev/null)
            melden "schwelle" \
                "Wochenbudget zu $(echo "$B" | python3 -c "import json,sys; print(json.load(sys.stdin)['anteil_prozent'])" 2>/dev/null) Prozent aufgebraucht" \
"Das Wochenkontingent naehert sich dem Ende, bevor die Woche vorbei ist.

$ZEILEN

Der Radar drosselt ab dieser Schwelle die Lern-Loops, damit das Kontingent bis zum Reset am Montag 12:00 reicht. Die operativen Briefings bleiben unangetastet.

Die Obergrenze ist eine Schaetzgroesse, kalibriert am Limit-Treffer vom 01.08.2026, kein von Anthropic ausgewiesener Wert. Wenn Du die Drossel nicht willst, setzt Du WOCHE_MIO in scripts/kontingent-budget.sh hoch oder schaltest die Loops von Hand wieder scharf.

Lieber Gruss
Raphael"
        fi
    fi
fi

exit 0
