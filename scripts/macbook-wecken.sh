#!/bin/bash
# macbook-wecken.sh — weckt das Display des MacBook Pro vom Mac Mini aus,
# ohne den Deckel anzuheben (Clamshell-Betrieb am externen Bildschirm).
#
# Mechanik: `caffeinate -u` meldet dem MacBook eine Benutzeraktivitaet, das
# Display geht an. Voraussetzung: das MacBook schlaeft nicht (nur das Display
# ist aus) und ist per `ssh macbook` erreichbar. Gemessen 18.09.2026:
# SleepDisabled 1, Netzteil, AppleClamshellState Yes, Display nach 1 s an.
#
# Aufruf: bash scripts/macbook-wecken.sh   (Kurzbefehl auf dem Mini: `wach`)

if ssh -o BatchMode=yes macbook 'caffeinate -u -t 5' 2>/dev/null; then
  echo "MacBook-Display geweckt."
else
  echo "MacBook nicht erreichbar (schlaeft wirklich, kein Netz oder SSH-Schluessel gesperrt)." >&2
  exit 1
fi
