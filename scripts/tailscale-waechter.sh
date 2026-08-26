#!/bin/bash
# ============================================================================
# JANS Tailscale-Waechter — gegen den stillen Fernzugangs-Ausfall
# ============================================================================
# Frage, die dieses Script beantwortet: KOMME ICH VON AUSSEN NOCH INS BUERO?
#
# ANLASS (24.08.2026, belegt):
# Der Mac Mini war seit der Nacht des 20.08. gegen 02:20 vom Tailnet getrennt —
# das ganze Wochenende, unbemerkt. `tailscale debug prefs` zeigte
# `WantRunning: false` bei `LoggedOut: false`: angemeldet, aber ausgeschaltet.
# Ursache war das Sparkle-Auto-Update der Standalone-Variante. Es ersetzt das
# App-Bundle nachts still (Zeitstempel Contents/MacOS/Tailscale: 20.08. 02:23),
# die Netzwerk-Extension muss zur neuen Bundle-Version passen, der Tunnel geht
# aus — und `restartAfterSparkleUpdate = 0` heisst: die App startet sich NICHT
# selbst neu. Sie wartet auf einen Klick auf «Relaunch Tailscale».
#
# WARUM NICHTS GEMELDET HAT — und das ist die eigentliche Luecke:
# `stationen-watchdog.sh` prueft, ob eine Station LAEUFT (Frische von
# station-status/ und logbuch/heartbeat/*.stamp). Diese Dateien schreibt der
# Mini ueber den LAN-SMB-Mount, und der LAN lief. Der Mini war also die ganze
# Zeit «frisch» und trotzdem von aussen unerreichbar. Laufen und erreichbar
# sein sind zwei verschiedene Fragen; bisher stellte niemand die zweite.
#
# Verschaerfend: der Mini ist SUBNET-ROUTER fuer 192.168.1.0/24. Mit seinem
# Tunnel fallen nicht nur `ssh mini` und der Dispatch-Kanal aus, sondern der
# ganze Buero-LAN-Zugang von aussen.
#
# ZWEI BLICKRICHTUNGEN, bewusst in EINEM Script (auf beiden Stationen laufen):
#   1. NACH INNEN  — ist mein eigener Tunnel oben? Wenn nicht: selbst heilen.
#   2. NACH AUSSEN — sind die Always-On-Gegenstellen (macmini, diskstation918)
#      im Tailnet sichtbar? Ein Waechter, der nur auf der ausgefallenen
#      Maschine laeuft, schweigt genau dann, wenn er reden muesste.
#
# SENDE-POLITIK (Rule auto-verbesserungen 260803, still by default):
#   - Selbstheilung geglueckt  → Log + Stamp, KEINE Mail (Hub-Intern).
#   - Heilung fehlgeschlagen   → MAIL. Kein Fernzugang ist ein P1-Blocker.
#   - Gegenstelle offline      → MAIL, aber nur von einer anderen Station aus.
#
# Aufruf:
#   bash scripts/tailscale-waechter.sh              # pruefen + heilen + melden
#   bash scripts/tailscale-waechter.sh --pruefen    # nur Ausgabe (heartbeat)
#   bash scripts/tailscale-waechter.sh --briefing   # Zeilen fuer den hub-chef
#   bash scripts/tailscale-waechter.sh --test-mail  # Sendeweg einmal beweisen
#
# Exit: 0 = alles gut (auch nach Selbstheilung) · 1 = Befund · 2 = nicht pruefbar
# ============================================================================
set -uo pipefail

NAS="/Volumes/daten/jans-ai-hub"
HBDIR="$NAS/logbuch/heartbeat"
STATEDIR="$HOME/.jans-watchdog"
LOGFILE="$STATEDIR/tailscale-waechter.log"
MAILTO="rj@raphaeljans.ch"

MODUS="${1:-}"

STATION=$(scutil --get LocalHostName 2>/dev/null || hostname -s)
STATION_LC=$(printf '%s' "$STATION" | tr '[:upper:]' '[:lower:]')

# --- Soll-Zustand je Station ------------------------------------------------
# Nur der Mac Mini kuendigt das Buero-Subnetz an. Die Route wird mitgeprueft,
# weil ein laufender Tunnel OHNE angenommene Route den Fernzugang genauso
# unbrauchbar macht wie kein Tunnel — nur unauffaelliger.
SOLL_ROUTE=""
case "$STATION_LC" in
  macmini*) SOLL_ROUTE="192.168.1.0/24" ;;
esac

# Always-On-Gegenstellen, deren Fehlen ein Befund ist. Die eigene Station wird
# unten uebersprungen. Mobile Geraete (ipad, macbook) stehen absichtlich NICHT
# hier: dort ist offline der Normalfall und eine Meldung nur Rauschen.
PEERS_SOLL=(macmini diskstation918)

TS_BIN=""
for kandidat in /usr/local/bin/tailscale /Applications/Tailscale.app/Contents/MacOS/Tailscale; do
    [ -x "$kandidat" ] && { TS_BIN="$kandidat"; break; }
done

mkdir -p "$STATEDIR" 2>/dev/null

log() {
    printf '%s  %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" >> "$LOGFILE" 2>/dev/null
}

# ============================================================================
# Mailweg — uebernommen aus stationen-watchdog.sh, samt der dort teuer
# bezahlten Lehre: `osascript >/dev/null; $?` verbucht eine NICHT gesendete
# Mail als gesendet, weil Apple Mail sie auch ohne Konto anlegt und `send`
# zurueckkehrt. Darum wird nach dem Senden GEZAEHLT, ob ein Entwurf haengen
# blieb. Ein Melder, der still scheitert, ist schlimmer als keiner.
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
    tmp=$(mktemp /tmp/tailscale-waechter.XXXXXX) || return 1
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

    sleep 2
    nachher=$(entwuerfe_zaehlen)
    if [ "$vorher" -ge 0 ] 2>/dev/null && [ "$nachher" -gt "$vorher" ] 2>/dev/null; then
        log "SENDEN UNKLAR: Entwurf blieb liegen ($vorher -> $nachher): $betreff"
        return 1
    fi
    log "gemailt: $betreff"
    return 0
}

# ============================================================================
# Zustand erheben
# ============================================================================
# Rueckgabe ueber globale Variablen, damit der Aufrufer nicht parsen muss.
ZUSTAND=""        # Running | Stopped | NoState | Kaputt
SELF_ONLINE=""
SELF_ROUTEN=""
PEERS_FEHLEN=""

zustand_lesen() {
    ZUSTAND="Kaputt"; SELF_ONLINE=""; SELF_ROUTEN=""; PEERS_FEHLEN=""
    [ -n "$TS_BIN" ] || { ZUSTAND="Kaputt"; return 1; }

    local json
    json=$("$TS_BIN" status --json 2>/dev/null)
    [ -n "$json" ] || return 1

    local aus
    aus=$(printf '%s' "$json" | python3 -c '
import json, sys
try:
    d = json.load(sys.stdin)
except Exception:
    print("Kaputt||"); sys.exit(0)
s = d.get("Self") or {}
routen = ",".join(s.get("PrimaryRoutes") or [])
peers = []
for p in (d.get("Peer") or {}).values():
    peers.append("%s:%s" % ((p.get("HostName") or "").lower(), p.get("Online")))
print(d.get("BackendState") or "NoState")
print("true" if s.get("Online") else "false")
print(routen)
print(";".join(peers))
' 2>/dev/null)

    ZUSTAND=$(printf '%s' "$aus" | sed -n '1p')
    SELF_ONLINE=$(printf '%s' "$aus" | sed -n '2p')
    SELF_ROUTEN=$(printf '%s' "$aus" | sed -n '3p')
    local peerliste
    peerliste=$(printf '%s' "$aus" | sed -n '4p')

    # Gegenstellen pruefen — die eigene Station ueberspringen, sie steht nicht
    # in der Peer-Liste und wuerde sonst immer als fehlend gelten.
    local soll
    for soll in "${PEERS_SOLL[@]}"; do
        case "$STATION_LC" in "$soll"*) continue ;; esac
        if printf '%s' "$peerliste" | tr ';' '\n' | grep -q "^${soll}:True$"; then
            continue
        fi
        PEERS_FEHLEN="${PEERS_FEHLEN}${PEERS_FEHLEN:+, }${soll}"
    done
    return 0
}

# ============================================================================
# Ein gestagtes Update erkennen
# ============================================================================
# Nach einem Sparkle-Update stehen zwei Extension-Versionen im System: die alte
# als «terminated waiting to uninstall on reboot», die neue als aktiv. Das ist
# der Fingerabdruck genau des Vorfalls vom 20.08. — er gehoert in den Bericht,
# damit die Ursache beim naechsten Mal nicht wieder gesucht werden muss.
update_haengt() {
    # `grep -c` gibt bei 0 Treffern "0" aus UND endet mit rc=1 — ein zusaetzliches
    # `|| echo 0` feuert dann ebenfalls und macht daraus zwei Zeilen ("0\n0").
    # Jeder spaetere `[ "$HAENGT" -gt 0 ]`-Test brach damit mit
    # "integer expression expected" ab, statt zu greifen: die Sparkle-Warnung
    # (Ursache des Ausfalls 20.-24.08.2026) konnte nie ausloesen. Befund heartbeat 26.08.2026.
    local n
    n=$(systemextensionsctl list 2>/dev/null \
        | grep -c "io.tailscale.*waiting to uninstall" 2>/dev/null)
    echo "${n:-0}"
}

# ============================================================================
# Heilen
# ============================================================================
# Stufe 1: `tailscale up`. Deckt den beobachteten Fall (WantRunning=false) ab.
# Stufe 2: App neu starten — das ist, was der Knopf «Relaunch Tailscale» tut.
#          Nur in diesem Zweig, in dem der Tunnel ohnehin schon unten ist.
heilen() {
    local ausgabe
    log "Tunnel ist '$ZUSTAND' — Heilung Stufe 1: tailscale up"
    ausgabe=$("$TS_BIN" up 2>&1)
    [ -n "$ausgabe" ] && log "  up: $(printf '%s' "$ausgabe" | tr '\n' ' ')"
    sleep 8
    zustand_lesen
    [ "$ZUSTAND" = "Running" ] && { log "  geheilt in Stufe 1"; return 0; }

    log "Heilung Stufe 2: Tailscale.app neu starten (entspricht «Relaunch Tailscale»)"
    osascript -e 'tell application id "io.tailscale.ipn.macsys" to quit' >/dev/null 2>&1
    sleep 5
    pkill -x Tailscale >/dev/null 2>&1
    sleep 2
    open -a /Applications/Tailscale.app >/dev/null 2>&1
    sleep 20
    ausgabe=$("$TS_BIN" up 2>&1)
    [ -n "$ausgabe" ] && log "  up: $(printf '%s' "$ausgabe" | tr '\n' ' ')"
    sleep 8
    zustand_lesen
    [ "$ZUSTAND" = "Running" ] && { log "  geheilt in Stufe 2"; return 0; }

    log "  NICHT geheilt (Zustand: $ZUSTAND)"
    return 1
}

# ============================================================================
# Hauptlauf
# ============================================================================
if [ -z "$TS_BIN" ]; then
    echo "⚠ Tailscale-CLI nicht gefunden (weder /usr/local/bin/tailscale noch im Bundle)"
    exit 2
fi

if [ "$MODUS" = "--test-mail" ]; then
    mailen "Tailscale-Waechter: Testmail ($STATION)" \
"Dies ist die Sendeweg-Probe des Tailscale-Waechters.

Station: $STATION
Zeit: $(date '+%d.%m.%Y %H:%M')"
    exit $?
fi

zustand_lesen
HAENGT=$(update_haengt)
GEHEILT=0

# --- Selbstheilung (nicht im Pruef-/Briefing-Modus) -------------------------
if [ "$ZUSTAND" != "Running" ] && [ "$MODUS" != "--pruefen" ] && [ "$MODUS" != "--briefing" ]; then
    if heilen; then
        GEHEILT=1
    else
        mailen "P1 Tailscale unten auf $STATION — Fernzugang weg" \
"Der Tailscale-Tunnel auf $STATION ist unten und liess sich nicht selbst heilen.

Zustand: $ZUSTAND
Selbstheilung: tailscale up und App-Neustart beide erfolglos.
$([ "$HAENGT" -gt 0 ] && echo "Hinweis: eine Extension-Version wartet auf einen Reboot — das ist der Fingerabdruck eines Sparkle-Auto-Updates.")

Folge, solange das so bleibt:
$([ -n "$SOLL_ROUTE" ] && echo "- Der Buero-LAN-Zugang von aussen ($SOLL_ROUTE) ist weg, inklusive NAS.")
- ssh und der Dispatch-Kanal auf diese Station sind von aussen nicht erreichbar.

Von Hand: Tailscale-Menuleiste oeffnen, «Relaunch Tailscale» bzw. Connect.
Log: $LOGFILE"
        # Stamp trotzdem schreiben — er bezeugt, dass geprueft wurde.
        [ -d "$HBDIR" ] && date '+%Y-%m-%dT%H:%M:%S%z' > "$HBDIR/tailscale-${STATION_LC}.stamp" 2>/dev/null
        echo "❌ Tailscale unten auf $STATION ($ZUSTAND) — Heilung fehlgeschlagen, gemeldet"
        exit 1
    fi
fi

# --- Route pruefen ----------------------------------------------------------
ROUTE_OK=1
if [ -n "$SOLL_ROUTE" ] && [ "$ZUSTAND" = "Running" ]; then
    printf '%s' "$SELF_ROUTEN" | grep -qF "$SOLL_ROUTE" || ROUTE_OK=0
fi

# --- Gegenstellen: nur von einer ANDEREN Station ist das eine Aussensicht ---
PEER_BEFUND=0
[ -n "$PEERS_FEHLEN" ] && PEER_BEFUND=1

# --- Ausgabe ----------------------------------------------------------------
if [ "$MODUS" = "--briefing" ]; then
    [ "$ZUSTAND" = "Running" ] || echo "- Tailscale auf $STATION: $ZUSTAND (Fernzugang unterbrochen)"
    [ "$ROUTE_OK" -eq 1 ] || echo "- Subnet-Route $SOLL_ROUTE wird von $STATION nicht mehr angekuendigt"
    [ "$PEER_BEFUND" -eq 0 ] || echo "- Im Tailnet nicht sichtbar: $PEERS_FEHLEN"
    [ "$HAENGT" -gt 0 ] && echo "- Tailscale-Update wartet auf einen Reboot ($STATION)"
    exit 0
fi

BEFUND=0
if [ "$ZUSTAND" = "Running" ]; then
    echo "✅ Tailscale laeuft auf $STATION ($("$TS_BIN" ip -4 2>/dev/null | head -1))"
else
    echo "❌ Tailscale: $ZUSTAND auf $STATION"; BEFUND=1
fi
[ "$GEHEILT" -eq 1 ] && echo "   ↳ war unten, vom Waechter selbst wieder eingeschaltet"
if [ -n "$SOLL_ROUTE" ]; then
    if [ "$ROUTE_OK" -eq 1 ]; then
        echo "✅ Subnet-Route $SOLL_ROUTE angekuendigt und freigegeben"
    else
        echo "❌ Subnet-Route $SOLL_ROUTE fehlt — Buero-LAN von aussen nicht erreichbar"; BEFUND=1
    fi
fi
if [ -n "$PEERS_FEHLEN" ]; then
    echo "❌ Im Tailnet nicht sichtbar: $PEERS_FEHLEN"; BEFUND=1
else
    echo "✅ Gegenstellen sichtbar"
fi
[ "$HAENGT" -gt 0 ] && echo "⚠  Ein Tailscale-Update wartet auf einen Reboot (Sparkle-Fingerabdruck)"

# --- Stamp fuer den heartbeat ----------------------------------------------
[ -d "$HBDIR" ] && date '+%Y-%m-%dT%H:%M:%S%z' > "$HBDIR/tailscale-${STATION_LC}.stamp" 2>/dev/null

# --- Meldung nur bei echtem Befund (Selbstheilung bleibt still) ------------
if [ "$MODUS" != "--pruefen" ]; then
    if [ "$PEER_BEFUND" -eq 1 ]; then
        mailen "Tailscale: $PEERS_FEHLEN nicht im Tailnet" \
"Von $STATION aus gesehen sind folgende Always-On-Gegenstellen nicht im Tailnet: $PEERS_FEHLEN

Das ist die Aussensicht: die betroffene Station kann ihren eigenen Ausfall
nicht melden. Solange das so bleibt, ist von auswaerts kein Zugriff auf das
Buero moeglich.

Von Hand auf der betroffenen Station: Tailscale-Menuleiste, Connect bzw.
«Relaunch Tailscale».
Log: $LOGFILE"
    fi
    if [ "$ROUTE_OK" -eq 0 ]; then
        mailen "Tailscale: Subnet-Route $SOLL_ROUTE fehlt ($STATION)" \
"Der Tunnel auf $STATION laeuft, kuendigt aber die Route $SOLL_ROUTE nicht mehr an.

Der Fernzugang aufs Buero-LAN ist damit weg, obwohl Tailscale «verbunden»
anzeigt. Freigabe der Route in der Tailscale-Admin-Konsole pruefen.
Log: $LOGFILE"
    fi
fi

[ "$GEHEILT" -eq 1 ] && log "Selbstheilung erfolgreich, still beendet (Zustand: Running)"
exit "$BEFUND"
