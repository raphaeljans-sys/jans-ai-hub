# JANS AI Hub - Claude Code Projekt

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **AI Hub**: Privates GitHub-Repo (github.com/raphaeljans-sys/jans-ai-hub)
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Multi-Workstation Setup
Jede Workstation hat eine **lokale Kopie** des Repos. Synchronisation über Git.

```
git pull                    # Vor dem Arbeiten
git add -A && git commit    # Nach Änderungen
git push                    # Synchronisieren
```

### Neue Station einrichten
1. SSH-Key erstellen und bei GitHub hinterlegen
2. `~/.ssh/config` mit Port 443 für github.com (falls Firewall Port 22 blockt)
3. `git clone git@github.com:raphaeljans-sys/jans-ai-hub.git ~/Developer/claude-code`
4. `cp .env.example .env` → Credentials eintragen
5. `npm install`

## Netzwerk
- **Firewall**: OPNsense (rjgate.localdomain) @ 192.168.1.1
- **NAS**: Synology DiskStation918 @ 192.168.1.10, SMB-Mount: /Volumes/daten
- **Drucker**: Konica Minolta bizhub c300i (im LAN, IP wird konfiguriert)
- **Mac Mini**: 192.168.1.210
- **VPN**: WireGuard via OPNsense für externen Zugriff
- **GitHub SSH**: Port 443 via ssh.github.com (Port 22 durch Firewall blockiert)

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Bürodaten)
- **Microsoft 365**: OneDrive + SharePoint (~/Library/CloudStorage/OneDrive-*)
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/claude-code (dieses Projekt)

## Wichtige Regeln
- Projekt IMMER lokal auf SSD (`~/Developer/claude-code`), NIEMALS über SMB-Mount bearbeiten
- `~/.claude/` Config ist pro Maschine, wird NICHT synchronisiert
- NAS-Zugriff über SMB-Mount /Volumes/daten
- Passwörter und Credentials NIEMALS committen
- Für sensible Daten: `.env` (in .gitignore) oder macOS Keychain
