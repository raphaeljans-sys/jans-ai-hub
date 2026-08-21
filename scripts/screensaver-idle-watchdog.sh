#!/bin/bash
# Startet den Bildschirmschoner nach Ablauf der in den Systemeinstellungen
# hinterlegten Leerlaufzeit — auch dann, wenn eine Display-Assertion
# (z.B. Universal Control) den eingebauten Automatismus unterdrueckt.
# Weckt nichts, beendet nichts, beruehrt den Ruhemodus nicht.

limit=$(defaults -currentHost read com.apple.screensaver idleTime 2>/dev/null)
case "$limit" in ''|*[!0-9]*) exit 0 ;; esac
[ "$limit" -le 0 ] && exit 0            # Schoner in den Einstellungen deaktiviert

pgrep -x ScreenSaverEngine >/dev/null && exit 0   # laeuft bereits

idle=$(ioreg -c IOHIDSystem 2>/dev/null | awk '/HIDIdleTime/ {print int($NF/1000000000); exit}')
case "$idle" in ''|*[!0-9]*) exit 0 ;; esac

if [ "$idle" -ge "$limit" ]; then
  /usr/bin/open -a /System/Library/CoreServices/ScreenSaverEngine.app
  echo "$(date '+%Y-%m-%d %H:%M:%S') Schoner gestartet nach ${idle}s Leerlauf (Grenze ${limit}s)" \
    >> "$HOME/Library/Logs/screensaver-idle.log"
fi
