#!/bin/bash
# ============================================================================
# JANS AI Hub — VOLLGAS-SCHUB starten (alle fuenf Lanes, beide Stationen)
# ============================================================================
# Auftrag Raphael 29.08.2026. Startet zwei Lanes lokal auf dem MacBook Pro und
# drei per ssh auf dem Mac Mini. Entfernt zuvor die STOP-Datei.
#
#   bash scripts/vollgas-schub-start.sh ["YYYY-MM-DD HH:MM"]
#
# Ohne Argument gilt die Frist Montag 2026-08-31 11:00 (eine Stunde vor dem
# Wochen-Reset). Stoppen jederzeit:
#   touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP-SCHUB
#
# VORBEDINGUNG: der headless-OAuth muss auf BEIDEN Stationen gueltig sein.
# Ist er es nicht, brechen alle Laeufe mit rc=1 ab (Vorfall 29.08.2026,
# RADAR-Eintrag 19:15 [LOGIN]). Dieses Script prueft das vorher.
# ============================================================================
set -uo pipefail

HUB="/Volumes/daten/jans-ai-hub"
FRIST="${1:-2026-08-31 11:00}"
STOP="$HUB/logbuch/vollgas/STOP-SCHUB"

# Die app-gebuendelte CLI ermitteln. Der Homebrew-Pfad ist auf dem MacBook seit
# dem 29.08. gewedgt (Fassung 2.1.236, --version kehrt nicht zurueck) — ein Lauf
# darueber wuerde still haengen statt zu arbeiten.
APPDIR=$(ls -d "$HOME/Library/Application Support/Claude/claude-code/"*/ 2>/dev/null | sort -V | tail -1)
MBP_BIN="${APPDIR}claude.app/Contents/MacOS/claude"
MINI_BIN="/opt/homebrew/bin/claude"

[ -x "$MBP_BIN" ] || { echo "schub-start: app-gebuendelte CLI nicht gefunden ($MBP_BIN)"; exit 2; }

echo "== Login-Vorpruefung =="
LOGIN_OUT=$("$MBP_BIN" -p "Antworte nur mit: OK" --model haiku < /dev/null 2>&1)
case "$LOGIN_OUT" in
    *OK*) echo "   MacBook Pro: Login gueltig." ;;
    *)    echo "   MacBook Pro: LOGIN DEFEKT — $LOGIN_OUT"
          echo "   Zuerst 'claude setup-token' und den Token nach ~/.jans-dispatch.env."
          exit 1 ;;
esac
MINI_OUT=$(ssh -o ConnectTimeout=10 mini "$MINI_BIN -p 'Antworte nur mit: OK' --model haiku < /dev/null" 2>&1)
case "$MINI_OUT" in
    *OK*) echo "   Mac Mini:    Login gueltig." ;;
    *)    echo "   Mac Mini:    LOGIN DEFEKT — $MINI_OUT"
          echo "   Auf dem Mini 'security unlock-keychain', dann 'claude setup-token'."
          exit 1 ;;
esac

rm -f "$STOP"
echo "== Lanes starten, Frist $FRIST =="

for LANE in fachwissen normen-pruefstand; do
    VOLLGAS_BIN="$MBP_BIN" nohup bash "$HUB/scripts/vollgas-schub.sh" "$LANE" "$FRIST" > /dev/null 2>&1 &
    echo "   MacBook Pro: $LANE (PID $!)"
done

for LANE in synobsis baurecht-thalwil grobkosten; do
    ssh -o ConnectTimeout=10 mini \
        "VOLLGAS_BIN=$MINI_BIN nohup bash $HUB/scripts/vollgas-schub.sh $LANE '$FRIST' > /dev/null 2>&1 & echo \"   Mac Mini:    $LANE (PID \$!)\"" 2>/dev/null
done

echo
echo "Verlauf:  tail -f $HUB/logbuch/vollgas/schub/*.log"
echo "Stoppen:  touch $STOP"
