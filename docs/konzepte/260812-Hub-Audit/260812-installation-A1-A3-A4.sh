#!/bin/bash
# ============================================================================
# Hub-Audit 260812 — Installation der Massnahmen A1, A3 und A4
# ============================================================================
# NICHT von Claude ausgefuehrt. Alle drei Massnahmen fassen LaunchAgents an,
# also Persistenz — die Klasse, die `rules/interaktive-eingriffe.md` und der
# Sync-Task-Guard beide zurueckhalten. Dieses Script legt die Arbeit fertig
# vor, damit sie ein Befehl ist und keine Bastelei.
#
# AUFRUF
#   bash docs/konzepte/260812-Hub-Audit/260812-installation-A1-A3-A4.sh --probe
#   bash docs/konzepte/260812-Hub-Audit/260812-installation-A1-A3-A4.sh --scharf
#
#   --probe   zeigt jede Aenderung an, fasst nichts an (Standard, wenn nichts folgt)
#   --scharf  fuehrt aus
#
# Laeuft auf BEIDEN Stationen. A4 ist auf dem MacBook Pro bereits installiert
# und wird dort uebersprungen; A1 und A3 gelten fuer beide.
#
# Alles ist umkehrbar: jede geaenderte Plist wird vorher nach
# ~/Library/LaunchAgents/_backup-260812/ kopiert. Rueckweg am Ende des Scripts.
# ============================================================================
set -uo pipefail

MODUS="${1:---probe}"
[ "$MODUS" = "--scharf" ] || MODUS="--probe"

LA="$HOME/Library/LaunchAgents"
BACKUP="$LA/_backup-260812"
LOGDIR="$HOME/Library/Logs/jans"
REPO="$HOME/Developer/jans-ai-hub"
NAS="/Volumes/daten/jans-ai-hub"
UID_=$(id -u)
STATION=$(scutil --get LocalHostName 2>/dev/null || hostname -s)

rot()  { printf '\033[0;31m%s\033[0m\n' "$*"; }
gruen(){ printf '\033[0;32m%s\033[0m\n' "$*"; }
info() { printf '  %s\n' "$*"; }
titel(){ printf '\n\033[1m%s\033[0m\n' "$*"; }

tun() {   # tun <beschreibung> <befehl...>
    local b="$1"; shift
    if [ "$MODUS" = "--probe" ]; then info "WUERDE: $b"; return 0; fi
    if "$@"; then info "getan:  $b"; return 0; else rot "  FEHLER: $b"; return 1; fi
}

neu_laden() {   # Label sauber neu laden, alte und neue launchctl-Syntax
    local label="$1" plist="$LA/$1.plist"
    launchctl bootout "gui/$UID_/$label" 2>/dev/null || launchctl unload "$plist" 2>/dev/null
    launchctl bootstrap "gui/$UID_" "$plist" 2>/dev/null || launchctl load "$plist" 2>/dev/null
}

echo "=========================================================================="
echo " Hub-Audit 260812 — Installation A1/A3/A4   Station: $STATION   [$MODUS]"
echo "=========================================================================="
[ "$MODUS" = "--probe" ] && rot "PROBELAUF — es wird nichts veraendert. Mit --scharf ausfuehren."

# --- Vorbedingungen ---------------------------------------------------------
titel "Vorbedingungen"
FEHLT=0
[ -d "$NAS" ] || { rot "  NAS nicht gemountet ($NAS) — A1 braucht ihn zum Messen."; FEHLT=1; }
for s in "$REPO/scripts/stationen-watchdog.sh" "$REPO/scripts/nas-auto-mount.sh" "$REPO/scripts/nas-keepalive.sh"; do
    [ -f "$s" ] || { rot "  fehlt: $s (git pull?)"; FEHLT=1; }
done
[ "$FEHLT" -eq 0 ] && gruen "  alle Vorbedingungen erfuellt"
[ "$FEHLT" -eq 1 ] && { rot "Abbruch."; exit 1; }

if [ "$MODUS" = "--scharf" ]; then mkdir -p "$BACKUP" "$LOGDIR"; fi

# ============================================================================
# A3 — Job-Logs aus /tmp herausnehmen              (Hub-Audit R9)
# ----------------------------------------------------------------------------
# /tmp wird beim Boot geleert. Belegt am 12.08.2026: /tmp/nas-mount.log,
# /tmp/nas-mount-error.log und /tmp/jans-git-sync-err.log trugen alle den
# Zeitstempel 17:50 — die Boot-Zeit. Genau die Zeilen, die erklaeren wuerden,
# warum der Rechner neu startete, sind der erste Kollateralschaden des
# Neustarts. Ab jetzt: ~/Library/Logs/jans/<label>.{out,err}.log
# ============================================================================
titel "A3 — Job-Logs von /tmp nach ~/Library/Logs/jans/ (gegen R9)"

setze_pfad() {   # setze_pfad <plist> <Schluessel> <Wert>
    local p="$1" k="$2" v="$3"
    /usr/libexec/PlistBuddy -c "Set :$k $v" "$p" 2>/dev/null \
      || /usr/libexec/PlistBuddy -c "Add :$k string $v" "$p" 2>/dev/null
}

A3_ZAHL=0
for plist in "$LA"/ch.jans.*.plist "$LA"/com.jans.*.plist; do
    [ -e "$plist" ] || continue
    case "$plist" in *.bak-*|*.disabled-*) continue;; esac
    label=$(basename "$plist" .plist)

    alt_out=$(/usr/libexec/PlistBuddy -c "Print :StandardOutPath" "$plist" 2>/dev/null)
    alt_err=$(/usr/libexec/PlistBuddy -c "Print :StandardErrorPath" "$plist" 2>/dev/null)
    # Nur anfassen, was noch nach /tmp zeigt oder gar nicht loggt.
    case "$alt_out$alt_err" in "$LOGDIR"*) continue;; esac

    A3_ZAHL=$((A3_ZAHL+1))
    info "$label:  out='${alt_out:-(keins)}'  err='${alt_err:-(keins)}'"
    if [ "$MODUS" = "--scharf" ]; then
        cp -p "$plist" "$BACKUP/" 2>/dev/null
        setze_pfad "$plist" "StandardOutPath"   "$LOGDIR/$label.out.log"
        setze_pfad "$plist" "StandardErrorPath" "$LOGDIR/$label.err.log"
        plutil -lint "$plist" >/dev/null 2>&1 || { rot "  $label: Plist beschaedigt, stelle Backup zurueck"; cp -p "$BACKUP/$(basename "$plist")" "$plist"; continue; }
        neu_laden "$label"
        info "  -> $LOGDIR/$label.{out,err}.log, neu geladen"
    fi
done
[ "$A3_ZAHL" -eq 0 ] && gruen "  nichts zu tun — alle Jobs loggen bereits nach $LOGDIR"
info "betroffene Jobs: $A3_ZAHL"

# ============================================================================
# A4 — NAS-Mount mit Wiederherstellung             (Hub-Audit R6)
# ----------------------------------------------------------------------------
# Der Mac Mini hatte nur `com.jans.nas-mount`: RunAtLoad ohne StartInterval,
# also genau EIN Versuch pro Login, dazu ein `try ... end try`, das jeden
# Fehler verschluckt. Bricht der Mount weg, arbeiten Nachtschicht und Loops
# gegen leere Pfade weiter, ohne Meldung. Das MacBook Pro faehrt seit je die
# belastbare Loesung (auto-mount alle 180 s + keepalive alle 60 s, beide mit
# Netzwerkwechsel-Erkennung). Diese wird hier uebernommen.
# ============================================================================
titel "A4 — NAS-Mount-Wiederherstellung uebernehmen (gegen R6)"

if [ -f "$LA/com.jans.nas-auto-mount.plist" ] && [ -f "$LA/com.jans.nas-keepalive.plist" ]; then
    gruen "  bereits installiert (das ist auf dem MacBook Pro der Fall) — uebersprungen"
else
    schreibe_plist() {   # schreibe_plist <label> <script> <intervall> <throttle> <watchpaths ja/nein>
        local label="$1" script="$2" iv="$3" th="$4" wp="$5"
        cat > "$LA/$label.plist" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key><string>$label</string>
    <key>ProgramArguments</key>
    <array><string>/bin/bash</string><string>$REPO/scripts/$script</string></array>
    <key>StartInterval</key><integer>$iv</integer>
    <key>RunAtLoad</key><true/>
PLIST
        if [ "$wp" = "ja" ]; then
            cat >> "$LA/$label.plist" <<PLIST
    <key>WatchPaths</key>
    <array>
        <string>/Library/Preferences/SystemConfiguration</string>
        <string>/var/run/resolv.conf</string>
    </array>
PLIST
        fi
        cat >> "$LA/$label.plist" <<PLIST
    <key>StandardOutPath</key><string>$LOGDIR/$label.out.log</string>
    <key>StandardErrorPath</key><string>$LOGDIR/$label.err.log</string>
    <key>ThrottleInterval</key><integer>$th</integer>
</dict>
</plist>
PLIST
        plutil -lint "$LA/$label.plist" >/dev/null 2>&1
    }

    tun "com.jans.nas-auto-mount anlegen (180 s + Netzwerkwechsel)" \
        schreibe_plist com.jans.nas-auto-mount nas-auto-mount.sh 180 30 ja
    tun "com.jans.nas-keepalive anlegen (60 s, SMB warmhalten)" \
        schreibe_plist com.jans.nas-keepalive nas-keepalive.sh 60 20 nein
    tun "com.jans.nas-auto-mount laden" neu_laden com.jans.nas-auto-mount
    tun "com.jans.nas-keepalive laden"  neu_laden com.jans.nas-keepalive

    # Den alten Einmal-Mount stilllegen — er wuerde sonst beim Login gegen den
    # neuen Waechter arbeiten. Plist bleibt liegen, nur umbenannt: umkehrbar.
    if [ -f "$LA/com.jans.nas-mount.plist" ]; then
        tun "com.jans.nas-mount entladen" launchctl bootout "gui/$UID_/com.jans.nas-mount"
        tun "com.jans.nas-mount.plist -> .abgeloest-260812 (umkehrbar)" \
            mv "$LA/com.jans.nas-mount.plist" "$LA/com.jans.nas-mount.plist.abgeloest-260812"
    fi
fi

# ============================================================================
# A1 — Stations-Watchdog                           (Hub-Audit R1/R2/R3)
# ----------------------------------------------------------------------------
# Muss auf BEIDEN Stationen laufen. Ein Watchdog, der nur auf der ueberwachten
# Maschine liegt, schweigt genau dann, wenn er reden muesste.
# Takt 1800 s: der Watchdog meldet ohnehin nur einmal taeglich, haeufigeres
# Pruefen erzeugt keine zusaetzliche Information.
# ============================================================================
titel "A1 — Stations-Watchdog installieren (gegen R1/R2/R3)"

if [ -f "$LA/ch.jans.stationen-watchdog.plist" ]; then
    gruen "  bereits installiert — nur neu laden"
    tun "neu laden" neu_laden ch.jans.stationen-watchdog
else
    watchdog_plist() {
        cat > "$LA/ch.jans.stationen-watchdog.plist" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key><string>ch.jans.stationen-watchdog</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>-c</string>
        <string>S="\$HOME/Developer/jans-ai-hub/scripts/stationen-watchdog.sh"; [ -f "\$S" ] || S="/Volumes/daten/jans-ai-hub/scripts/stationen-watchdog.sh"; [ -f "\$S" ] || exit 0; exec /bin/bash "\$S"</string>
    </array>
    <key>StartInterval</key><integer>1800</integer>
    <key>RunAtLoad</key><true/>
    <key>StandardOutPath</key><string>$LOGDIR/ch.jans.stationen-watchdog.out.log</string>
    <key>StandardErrorPath</key><string>$LOGDIR/ch.jans.stationen-watchdog.err.log</string>
    <key>ThrottleInterval</key><integer>60</integer>
</dict>
</plist>
PLIST
        plutil -lint "$LA/ch.jans.stationen-watchdog.plist" >/dev/null 2>&1
    }
    tun "Plist schreiben" watchdog_plist
    tun "laden"           neu_laden ch.jans.stationen-watchdog
fi

# --- Messung ----------------------------------------------------------------
titel "Messung"
if [ "$MODUS" = "--probe" ]; then
    info "im Probelauf keine Messung — mit --scharf ausfuehren"
else
    sleep 3
    echo "  launchctl:"
    launchctl list | grep -E "jans\.(stationen-watchdog|nas-auto-mount|nas-keepalive)" | sed 's/^/    /' || info "    (keine der drei Jobs geladen — Befund)"
    echo "  Watchdog-Selbsttest:"
    bash "$REPO/scripts/stationen-watchdog.sh" --pruefen 2>&1 | sed 's/^/    /'
    echo "  Logverzeichnis:"
    ls -la "$LOGDIR" 2>/dev/null | tail -6 | sed 's/^/    /'
fi

cat <<'ENDE'

--------------------------------------------------------------------------
NOCH VON HAND, weil es eine echte Mail verschickt:

    bash /Volumes/daten/jans-ai-hub/scripts/stationen-watchdog.sh --test-mail

  Beweist den Sendeweg. Kommt keine Mail an, meldet der Befehl das — genau
  dafuer zaehlt er die Entwuerfe vor und nach dem Senden. Solange dieser
  Test nicht gelaufen ist, ist der Watchdog nur ein Melder auf dem Papier.

RUECKWEG, falls etwas nicht passt:

    cp -p ~/Library/LaunchAgents/_backup-260812/*.plist ~/Library/LaunchAgents/
    mv ~/Library/LaunchAgents/com.jans.nas-mount.plist.abgeloest-260812 \
       ~/Library/LaunchAgents/com.jans.nas-mount.plist
    for j in ch.jans.stationen-watchdog com.jans.nas-auto-mount com.jans.nas-keepalive; do
        launchctl bootout gui/$(id -u)/$j 2>/dev/null
        rm -f ~/Library/LaunchAgents/$j.plist
    done
    # danach einmal ab- und wieder anmelden, damit alle Jobs frisch laden
--------------------------------------------------------------------------
ENDE
