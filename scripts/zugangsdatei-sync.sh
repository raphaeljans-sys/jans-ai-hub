#!/bin/bash
# zugangsdatei-sync.sh — Zugangsdateien zwischen den Stationen kopieren.
#
# WIRD VON RAPHAEL IM TERMINAL GESTARTET, nicht von Claude. Der Auto-Mode-Klassifikator
# sperrt Claude das Kopieren von Zugangsdaten zwischen Rechnern; diese Sperre bleibt
# bestehen (Rule wege-und-vollmachten). Claude legt den fertigen Aufruf vor, Raphael
# fuehrt ihn aus. Das Script gibt nie Dateiinhalte aus, nur Namen und Pruefsummen.
#
# Aufruf:  zugangsdatei-sync.sh <holen|bringen> <station> <name> [<name> ...]
#          zugangsdatei-sync.sh --liste
#   station: ssh-Alias (mini, macbook) oder user@host
#   holen   = von <station> auf diese Station
#   bringen = von dieser Station nach <station>
#
# Ein bestehendes Ziel wird vor dem Ueberschreiben als <datei>.bak-JJMMTT gesichert.

set -u

# Whitelist: Kurzname -> Pfad relativ zu $HOME (auf allen Stationen identisch).
# Nur hier ergaenzen; ausserhalb der Liste kopiert das Script nichts.
pfad_von() {
  case "$1" in
    m365-cert)    echo ".cli-m365-cert-combined.pem" ;;
    hub-env)      echo "Developer/jans-ai-hub/.env" ;;
    zefix-env)    echo ".zefix.env" ;;
    versand-env)  echo ".versand.env" ;;
    dispatch-env) echo ".jans-dispatch.env" ;;
    *)            return 1 ;;
  esac
}
NAMEN="m365-cert hub-env zefix-env versand-env dispatch-env"

if [ "${1:-}" = "--liste" ]; then
  for n in $NAMEN; do printf '%-14s ~/%s\n' "$n" "$(pfad_von "$n")"; done
  exit 0
fi

if [ $# -lt 3 ]; then
  sed -n '2,16p' "$0" | sed 's/^# \{0,1\}//'
  exit 2
fi

RICHTUNG="$1"; STATION="$2"; shift 2
case "$RICHTUNG" in holen|bringen) ;; *) echo "FEHLER: Richtung muss holen oder bringen sein."; exit 2 ;; esac

STEMPEL="$(date "+%y%m%d")"
SSHOPT="-o BatchMode=yes -o ConnectTimeout=10"
RC=0

summe_lokal()  { shasum -a 256 "$1" 2>/dev/null | awk '{print $1}'; }
summe_remote() { ssh $SSHOPT "$STATION" "shasum -a 256 \"\$HOME/$1\" 2>/dev/null" | awk '{print $1}'; }

for NAME in "$@"; do
  REL="$(pfad_von "$NAME")" || { echo "UEBERSPRUNGEN $NAME: nicht in der Whitelist (--liste)."; RC=1; continue; }
  LOKAL="$HOME/$REL"

  if [ "$RICHTUNG" = "holen" ]; then
    QUELLSUMME="$(summe_remote "$REL")"
    [ -n "$QUELLSUMME" ] || { echo "FEHLT $NAME: auf $STATION nicht vorhanden."; RC=1; continue; }
    if [ -f "$LOKAL" ]; then
      [ "$(summe_lokal "$LOKAL")" = "$QUELLSUMME" ] && { echo "GLEICH $NAME: bereits identisch."; continue; }
      cp -p "$LOKAL" "$LOKAL.bak-$STEMPEL"; echo "SICHERUNG $LOKAL.bak-$STEMPEL"
    fi
    mkdir -p "$(dirname "$LOKAL")"
    scp -q -p $SSHOPT "$STATION:$REL" "$LOKAL" || { echo "FEHLER $NAME: scp gescheitert."; RC=1; continue; }
    chmod 600 "$LOKAL"
    ZIELSUMME="$(summe_lokal "$LOKAL")"
  else
    [ -f "$LOKAL" ] || { echo "FEHLT $NAME: lokal nicht vorhanden."; RC=1; continue; }
    QUELLSUMME="$(summe_lokal "$LOKAL")"
    ALT="$(summe_remote "$REL")"
    [ "$ALT" = "$QUELLSUMME" ] && { echo "GLEICH $NAME: bereits identisch."; continue; }
    if [ -n "$ALT" ]; then
      ssh $SSHOPT "$STATION" "cp -p \"\$HOME/$REL\" \"\$HOME/$REL.bak-$STEMPEL\"" && echo "SICHERUNG $STATION:~/$REL.bak-$STEMPEL"
    fi
    ssh $SSHOPT "$STATION" "mkdir -p \"\$(dirname \"\$HOME/$REL\")\""
    scp -q -p $SSHOPT "$LOKAL" "$STATION:$REL" || { echo "FEHLER $NAME: scp gescheitert."; RC=1; continue; }
    ssh $SSHOPT "$STATION" "chmod 600 \"\$HOME/$REL\""
    ZIELSUMME="$(summe_remote "$REL")"
  fi

  if [ "$QUELLSUMME" = "$ZIELSUMME" ]; then
    echo "OK $NAME: ~/$REL ($RICHTUNG $STATION), sha256 ${ZIELSUMME:0:12}… stimmt, Rechte 600."
  else
    echo "FEHLER $NAME: Pruefsumme weicht ab."; RC=1
  fi
done
exit $RC
