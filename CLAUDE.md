# JANS AI Center - Claude Code Projekt

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **Standort**: Mac Mini (AI-Hub), Grossraumbüro mit eigenem LAN hinter OPNsense Firewall
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Netzwerk
- **Firewall**: OPNsense (rjgate.localdomain) @ 192.168.1.1
- **NAS**: Synology DiskStation918 @ 192.168.1.10, SMB-Mount: /Volumes/daten
- **Drucker**: Konica Minolta bizhub c300i (im LAN, IP wird konfiguriert)
- **Mac Mini**: 192.168.1.210 (AI-Hub)
- **VPN**: WireGuard via OPNsense für externen Zugriff

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Bürodaten)
- **Microsoft 365**: OneDrive + SharePoint (~/Library/CloudStorage/OneDrive-*)
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/claude-code (dieses Projekt)

## Wichtige Regeln
- Projektdateien und ~/.claude/ Config IMMER lokal auf SSD, NIEMALS auf Cloud-Sync
- NAS-Zugriff über SMB-Mount /Volumes/daten
- Passwörter und Credentials NIEMALS in Dateien speichern
- Für sensible Daten: macOS Keychain oder .env mit .gitignore verwenden
