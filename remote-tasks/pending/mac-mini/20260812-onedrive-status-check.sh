#!/bin/bash
# Status-Check nach OneDrive-Bereinigung vom 12.08.2026 — NUR LESEND.
# Prueft: Prozesse, App-Installation, CloudStorage, FileProvider-Domains,
# Quarantaene-Ordner (muss unangetastet bleiben!), Speicher.
R="$1"
{
  echo "=== OneDrive-Status Mac Mini $(date '+%Y-%m-%d %H:%M:%S') ==="
  echo
  echo "--- OneDrive-Prozesse (leer = keine):"
  pgrep -fl OneDrive || echo "(keine)"
  echo
  echo "--- OneDrive.app installiert?"
  ls -d /Applications/OneDrive.app 2>/dev/null || echo "nicht installiert"
  echo
  echo "--- CloudStorage (Soll: Dropbox + 4x GoogleDrive, max. 2 alte OneDrive-Geister):"
  ls -la "$HOME/Library/CloudStorage/"
  echo
  echo "--- FileProvider-Domains (Soll: keine OneDrive-Eintraege):"
  ls -la "$HOME/Library/Application Support/FileProvider/"
  echo
  echo "--- Quarantaene-Ordner (Soll: vorhanden, ~2.8G):"
  du -sh "$HOME/OneDrive-Quarantaene-260808" 2>/dev/null || echo "FEHLT!"
  echo
  echo "--- Speicher Data-Volume:"
  df -h /System/Volumes/Data | tail -1
  echo
  echo "--- mas-CLI verfuegbar (fuer App-Store-Install per Terminal)?"
  command -v mas || echo "mas nicht installiert"
} > "$R/status.txt" 2>&1
echo "Status-Check abgeschlossen."
