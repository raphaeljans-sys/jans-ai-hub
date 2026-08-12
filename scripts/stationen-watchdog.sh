#!/bin/bash
# ============================================================================
# JANS Stations-Watchdog — Massnahme A1 (Hub-Audit 260812, gegen R1/R2/R3)
# ============================================================================
# Frage, die dieses Script beantwortet: LEBT DIE ANDERE STATION NOCH?
#
# Das System erkannte bisher seinen eigenen Ausfall nicht. `station-status.sh`
# SCHREIBT den Zustand alle 10 Min auf das NAS, aber niemand LAS die Frische:
# eine Suche nach "station-status" in scripts/, skills/ und commands/ fand nur
# das Script selbst und den interaktiven Slash-Command (Hub-Audit 260812, R2).
# Faellt eine Station aus, verschwindet sie, ohne vermisst zu werden.
#
# Das ist real eingetreten: 09.-12.08.2026 kein Tagesbriefing und kein Radar,
# weil beide Tasks ausschliesslich auf dem MacBook Pro liegen und dort die
# Task-Engine nicht lief (Chronik 260812b). Vier Tage Stille, von einem ruhigen
# Wochenende nicht unterscheidbar.
#
# ZWEI QUELLEN, bewusst getrennt:
#   1. station-status/<station>.md  — schreibt com.jans.station-status (600 s)
#   2. logbuch/heartbeat/*.stamp    — schreiben git-auto-sync (300 s) und
#      sync-task-run (1800 s), Massnahme A2. Ein Stamp bezeugt, dass der Lauf
#      stattfand, unabhaengig davon, ob es Arbeit gab.
# Quelle 1 faellt aus, wenn die Station steht; Quelle 2 zusaetzlich, wenn nur
# ein einzelner Job stirbt. Beide zusammen trennen "Station tot" von "Job tot".
#
# LAEUFT AUF BEIDEN STATIONEN und prueft BEIDE. Ein Watchdog, der nur auf der
# ueberwachten Maschine laeuft, schweigt genau dann, wenn er reden muesste.
#
# Aufruf:
#   bash scripts/stationen-watchdog.sh              # pruefen + bei Befund MAILEN
#   bash scripts/stationen-watchdog.sh --pruefen    # nur Ausgabe (heartbeat)
#   bash scripts/stationen-watchdog.sh --briefing   # Zeilen fuer den hub-chef
#   bash scripts/stationen-watchdog.sh --test-mail  # Sendeweg einmal beweisen
#
# Exit: 0 = alles frisch · 1 = Befund · 2 = nicht pruefbar (NAS nicht gemountet)
# ============================================================================
set -uo pipefail

NAS="/Volumes/daten/jans-ai-hub"
STATUSDIR="$NAS/station-status"
HBDIR="$NAS/logbuch/heartbeat"
STATEDIR="$HOME/.jans-watchdog"
LOGFILE="$STATEDIR/watchdog.log"
MAILTO="rj@raphaeljans.ch"

MODUS="${1:-}"

# --- Schwellen in Minuten ---------------------------------------------------
# Der Mac Mini ist die Always-On-Station und traegt die Nachtschicht: bei ihm
# ist eine Stunde Stille bereits ein Befund. Das MacBook Pro ist mobil; dort
# ist Stille der Normalfall und erst nach einem vollen Tag berichtenswert.
# Die Job-Schwellen liegen bewusst bei rund dem Sechsfachen des Takts, damit
# ein einzelner uebersprungener Lauf (SKIP bei fehlendem Netz) nicht meldet.
SCHWELLE_MINI=60
SCHWELLE_MACBOOK=1440
SCHWELLE_AUTOSYNC=30
SCHWELLE_RUNNER=180

STATION=$(scutil --get LocalHostName 2>/dev/null || hostname -s)

mkdir -p "$STATEDIR" 2>/dev/null
log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null; }

# NAS nicht gemountet: der Watchdog kann nichts sehen. Das ist SELBST ein
# Befund (Hub-Audit R6), aber keiner, den dieses Script beurteilen kann — es
# wuerde sonst bei jedem Mount-Aussetzer eine Stationswarnung mailen.
if [ ! -d "$STATUSDIR" ]; then
    echo "NICHT PRUEFBAR: $NAS nicht erreichbar (NAS-Mount pruefen)"
    log "nicht pruefbar — NAS nicht gemountet"
    exit 2
fi

# --- Altersmessung ----------------------------------------------------------
alter_min() {
    local f="$1" m
    [ -e "$f" ] || { echo "-1"; return; }
    m=$(stat -f %m "$f" 2>/dev/null || stat -c %Y "$f" 2>/dev/null) || { echo "-1"; return; }
    echo $(( ( $(date +%s) - m ) / 60 ))
}

# Minuten menschenlesbar: 45 Min · 3 h 20 · 2 Tage 4 h
lesbar() {
    local m="$1"
    if [ "$m" -lt 120 ]; then echo "${m} Min"
    elif [ "$m" -lt 2880 ]; then
        if [ $((m%60)) -eq 0 ]; then echo "$((m/60)) h"; else echo "$((m/60)) h $((m%60))"; fi
    else
        if [ $(( (m%1440)/60 )) -eq 0 ]; then echo "$((m/1440)) Tage"; else echo "$((m/1440)) Tage $(( (m%1440)/60 )) h"; fi
    fi
}

BEFUNDE=""
befund() { BEFUNDE="${BEFUNDE}$1"$'\n'; }

pruefe() {
    local name="$1" datei="$2" schwelle="$3" was="$4" a
    a=$(alter_min "$datei")
    if [ "$a" -lt 0 ]; then
        befund "- ${name}: ${was} FEHLT ganz ($(basename "$datei")) — nie geschrieben oder geloescht"
        return 1
    fi
    if [ "$a" -gt "$schwelle" ]; then
        befund "- ${name}: ${was} ist $(lesbar "$a") alt (Schwelle $(lesbar "$schwelle"))"
        return 1
    fi
    [ "$MODUS" = "--pruefen" ] && echo "  OK   ${name}: ${was} $(lesbar "$a") alt"
    return 0
}

[ "$MODUS" = "--pruefen" ] && echo "Stations-Watchdog (von $STATION aus):"

pruefe "Mac Mini"    "$STATUSDIR/mac-mini.md"    "$SCHWELLE_MINI"    "Stations-Status"
pruefe "MacBook Pro" "$STATUSDIR/macbook-pro.md" "$SCHWELLE_MACBOOK" "Stations-Status"

# --- Herzschlag-Stempel (A2) ------------------------------------------------
# NICHT ueber den Glob iterieren. Eine Schleife ueber vorhandene Dateien kann
# eine FEHLENDE Datei niemals bemerken: sie laeuft dann einfach null Mal und
# das Ergebnis ist von "alles frisch" nicht zu unterscheiden. Genau daran ist
# die erste Fassung dieses Scripts im Test gescheitert (Stamp geloescht ->
# rc=0, "alles frisch") — dieselbe Fehlerfamilie, gegen die der Watchdog
# gebaut ist (Hub-Audit 260812, R5).
#
# Richtig herum: die ERWARTETEN Stationen bestimmen und je Station fragen, ob
# ihr Stamp da ist. Erwartet ist, wer eine Datei in station-status/ hat.
#
# Die beiden Quellen benennen Stationen unterschiedlich — station-status
# schreibt "mac-mini", die Stamps tragen den LocalHostName "Macmini". Statt
# eine Konvention ueber drei fremde Scripts zu erzwingen, wird normalisiert
# (klein, ohne Bindestrich): mac-mini und Macmini treffen sich bei "macmini".
# sed statt `tr -d '-_'`: BSD-tr liest das fuehrende Minus als Option, bricht ab
# und liefert einen LEEREN String. Beide Seiten des Vergleichs waeren dann leer
# und wuerden immer matchen — der Watchdog haette jeden Stamp fuer jede Station
# akzeptiert und Test 1 und 2 stillschweigend bestanden.
normname() { printf '%s' "$1" | tr '[:upper:]' '[:lower:]' | sed 's/[-_]//g'; }

stamp_fuer() {
    local praefix="$1" norm="$2" f n
    for f in "$HBDIR"/${praefix}-*.stamp; do
        [ -e "$f" ] || continue
        n=$(basename "$f" .stamp); n=${n#${praefix}-}
        [ "$(normname "$n")" = "$norm" ] && { echo "$f"; return 0; }
    done
    return 1
}

if [ ! -d "$HBDIR" ]; then
    # Eine Aussage ueber den Hub, nicht ueber die Stationen: getrennt melden,
    # sonst sieht ein nicht ausgerolltes A2 wie ein Stationsausfall aus.
    befund "- Hub: $HBDIR fehlt — Massnahme A2 (Herzschlag-Stempel) ist auf keiner Station aktiv"
else
    for sf in "$STATUSDIR"/*.md; do
        [ -e "$sf" ] || continue
        st=$(basename "$sf" .md); norm=$(normname "$st")
        for paar in "git-auto-sync:$SCHWELLE_AUTOSYNC" "synctask-runner:$SCHWELLE_RUNNER"; do
            praefix="${paar%%:*}"; schwelle="${paar##*:}"
            if hb=$(stamp_fuer "$praefix" "$norm"); then
                pruefe "$st" "$hb" "$schwelle" "Herzschlag $praefix"
            else
                befund "- ${st}: Herzschlag ${praefix} FEHLT ganz — Stamp nie geschrieben oder geloescht"
            fi
        done
    done
fi

# ============================================================================
# Mailversand MIT SENDEVERIFIKATION
# ----------------------------------------------------------------------------
# Die Lehre vom 12.08.2026 (Chronik 260812b): zwei Kontingent-Warnungen lagen
# **unversendet in den Entwuerfen**, waehrend das erzeugende Script sie als
# gesendet verbuchte. Ursache ist das Muster `osascript >/dev/null 2>&1` mit
# anschliessendem `$?`: Apple Mail legt die Nachricht auch dann an, wenn kein
# Konto online ist, `send` kehrt zurueck, und osascript meldet 0.
#
# Deshalb hier: nach dem Senden wird GEZAEHLT, ob ein Entwurf dazugekommen
# ist. Eine Warnung, die nicht rausgeht, muss lauter scheitern als eine, die
# gar nicht erst erzeugt wurde — sonst ist der Melder selbst der stille Ausfall,
# vor dem er warnen soll.
# ============================================================================
entwuerfe_zaehlen() {
    osascript 2>/dev/null <<'AS' || echo "-1"
tell application id "com.apple.mail"
	try
		return count of messages of drafts mailbox
	on error
		return -1
	end try
end tell
AS
}

mailen() {
    local betreff="$1" text="$2" tmp vorher nachher rc
    tmp=$(mktemp /tmp/stationen-watchdog.XXXXXX) || return 1
    python3 - "$text" > "$tmp" <<'PY'
import sys
t = sys.argv[1].replace("&", "&amp;").replace("<", "&lt;").replace("\n", "<br>")
print('<span style="font-family:Aptos,Calibri,Helvetica,sans-serif;'
      'font-size:12pt;color:#000000;">' + t + '</span>')
PY
    vorher=$(entwuerfe_zaehlen)

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
    rc=$?
    rm -f "$tmp"

    if [ "$rc" -ne 0 ]; then
        log "SENDEN FEHLGESCHLAGEN (osascript rc=$rc): $betreff"
        return 1
    fi

    # Apple Mail braucht einen Moment, bis ein nicht zustellbarer Entwurf im
    # Postfach erscheint. Ohne diese Pause misst die Zaehlung den Zustand von
    # vorher und bestaetigt einen Versand, der nie stattfand.
    sleep 3
    nachher=$(entwuerfe_zaehlen)

    if [ "$vorher" -ge 0 ] && [ "$nachher" -gt "$vorher" ]; then
        log "SENDEN UNBESTAETIGT — Entwuerfe $vorher -> $nachher, Mail haengt: $betreff"
        return 2
    fi
    log "gesendet und bestaetigt: $betreff"
    return 0
}

# Sperre je Tag: ein Befund meldet einmal taeglich, nicht alle 30 Minuten.
# Bewusst tages- und nicht befundgebunden — bei einer toten Station aendert
# sich der Wortlaut mit jeder Stunde, und ein Watchdog, der deswegen jede
# halbe Stunde mailt, wird weggeklickt statt gelesen.
melden() {
    local text="$1"
    local heute sperre betreff
    heute=$(date +%Y-%m-%d)
    sperre="$STATEDIR/gemeldet-$heute.flag"
    [ -f "$sperre" ] && { log "Befund, fuer heute bereits gemeldet — still"; return 0; }

    betreff="Hub-Watchdog: eine Station meldet sich nicht"
    if mailen "$betreff" "$text"; then
        touch "$sperre"
        echo "→ Warnung gesendet und bestaetigt an $MAILTO"
        return 0
    else
        # KEINE Sperre setzen: der naechste Lauf soll es erneut versuchen.
        echo "→ WARNUNG KONNTE NICHT GESENDET WERDEN. Text liegt in $LOGFILE."
        echo "$text" >> "$LOGFILE"
        # Zweiter Kanal, damit der Fehlschlag nicht selbst still bleibt: eine
        # Datei, die heartbeat Check 5 und der hub-chef ohnehin lesen.
        mkdir -p "$NAS/logbuch/heartbeat" 2>/dev/null
        printf '%s\n%s\n' "$(date '+%Y-%m-%d %H:%M') UNZUSTELLBARE WATCHDOG-WARNUNG von $STATION:" "$text" \
            > "$NAS/logbuch/heartbeat/UNZUSTELLBAR-$STATION.txt" 2>/dev/null
        return 1
    fi
}

# --- Ausgabe je Modus -------------------------------------------------------
case "$MODUS" in
    --test-mail)
        # Beweist den Sendeweg, ohne auf einen echten Ausfall zu warten.
        if mailen "Hub-Watchdog: Testmail" "Testlauf des Stations-Watchdogs von $STATION, $(date '+%d.%m.%Y %H:%M'). Wenn diese Mail ankommt, traegt der Sendeweg."; then
            echo "Testmail gesendet UND bestaetigt (kein neuer Entwurf)."; exit 0
        else
            echo "Testmail NICHT bestaetigt — der Sendeweg traegt nicht. $LOGFILE lesen."; exit 1
        fi
        ;;
    --briefing)
        if [ -n "$BEFUNDE" ]; then printf '%s' "$BEFUNDE"; else echo "- alle Stationen und Sync-Jobs melden sich fristgerecht"; fi
        [ -n "$BEFUNDE" ] && exit 1 || exit 0
        ;;
    --pruefen)
        if [ -n "$BEFUNDE" ]; then echo; echo "BEFUND:"; printf '%s' "$BEFUNDE"; exit 1; fi
        echo "  alles frisch"; exit 0
        ;;
    *)
        [ -z "$BEFUNDE" ] && { log "alles frisch"; exit 0; }
        TEXT="Der Stations-Watchdog auf $STATION findet mindestens eine Station oder einen Sync-Job, der sich nicht mehr meldet.

$BEFUNDE
Geprueft um $(date '+%d.%m.%Y %H:%M'). Schwellen: Mac Mini $(lesbar $SCHWELLE_MINI), MacBook Pro $(lesbar $SCHWELLE_MACBOOK), git-auto-sync $(lesbar $SCHWELLE_AUTOSYNC), sync-task-runner $(lesbar $SCHWELLE_RUNNER).

Naechste Schritte: laeuft die Station? Ist das NAS dort gemountet? Steht der Mac Mini am FileVault-Prompt (Hub-Audit 260812, R1)?

Diese Meldung kommt einmal pro Tag, auch wenn der Befund bestehen bleibt."
        melden "$TEXT"; exit 1
        ;;
esac
