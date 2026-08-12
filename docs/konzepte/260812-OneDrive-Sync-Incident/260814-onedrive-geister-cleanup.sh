#!/bin/bash
# Gezieltes Loeschen der ZWEI dataless-Phantomordner vom 08.08.2026.
# KEIN Wildcard — die gesunden Ordner OneDrive-JANS und
# OneDrive-FreigegebeneBibliotheken–JANS werden nicht angefasst.
# Ausfuehrung: als Remote-Task (kopieren nach remote-tasks/pending/mac-mini/)
# oder lokal: bash 260814-onedrive-geister-cleanup.sh /tmp/ergebnis
R="${1:-/tmp/onedrive-geister-cleanup}"
mkdir -p "$R"
CS="$HOME/Library/CloudStorage"
G1="$CS/OneDrive-FreigegebeneBibliotheken–OneDrive-FreigegebeneBibliotheken–OneDrive-FreigegebeneBibliotheken–JANS2 2"
G2="$CS/OneDrive-FreigegebeneBibliotheken–OneDrive-FreigegebeneBibliotheken–OneDrive-FreigegebeneBibliotheken–OneDrive-FreigegebeneBibliotheken–JANS2"
{
  echo "=== Geister-Cleanup $(date '+%Y-%m-%d %H:%M:%S') ==="
  for G in "$G1" "$G2"; do
    echo
    echo "--- Ziel: $(basename "$G")"
    if [ ! -d "$G" ]; then
      echo "bereits weg — nichts zu tun"
      continue
    fi
    KB=$(du -sk "$G" 2>/dev/null | cut -f1)
    echo "Groesse: ${KB} KB"
    if [ "${KB:-0}" -gt 2048 ]; then
      echo "ABBRUCH fuer diesen Ordner: groesser als 2 MB — das ist kein leerer"
      echo "Phantomordner. NICHT loeschen, erst manuell pruefen!"
      continue
    fi
    rm -rf "$G" 2>&1
    [ -d "$G" ] && find "$G" -depth -delete 2>&1
    if [ -d "$G" ]; then
      echo "ERGEBNIS: haengt noch (vermutlich weiter von Schnappschuessen"
      echo "gehalten) — spaeter erneut versuchen, ggf. einmalig manuell mit sudo"
    else
      echo "ERGEBNIS: geloescht"
    fi
  done
  echo
  echo "--- CloudStorage danach (Soll: Dropbox, 4x GoogleDrive, OneDrive-JANS,"
  echo "--- OneDrive-FreigegebeneBibliotheken–JANS — sonst nichts):"
  ls -la "$CS"
  echo
  echo "--- Gesunde Ordner unversehrt?"
  [ -d "$CS/OneDrive-JANS" ] && echo "OneDrive-JANS: OK" || echo "OneDrive-JANS: FEHLT!"
  [ -d "$CS/OneDrive-FreigegebeneBibliotheken–JANS" ] && echo "FreigegebeneBibliotheken–JANS: OK" || echo "FreigegebeneBibliotheken–JANS: FEHLT!"
  echo
  echo "--- Quarantaene unangetastet?"
  du -sh "$HOME/OneDrive-Quarantaene-260808" 2>/dev/null || echo "Quarantaene FEHLT!"
} > "$R/bericht.txt" 2>&1
echo "Cleanup-Lauf abgeschlossen."
