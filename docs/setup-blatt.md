# JANS AI CENTER - Setup-Blatt
Stand: 2026-03-22

## 1. GERÄTE & NETZWERK

| Gerät | IP (LAN) | Tailscale IP | Rolle |
|-------|----------|-------------|-------|
| Mac Mini | 192.168.1.210 | 100.120.219.12 | AI-Hub Server 24/7 |
| NAS DS918+ | 192.168.1.10 | 100.92.246.28 | Datenspeicher |
| MacBook Pro | DHCP | 100.117.99.62 | Mobile Workstation |
| iPad | - | Tailscale App | Monitoring |
| OPNsense FW | 192.168.1.1 | - | Firewall/Router |
| bizhub c300i | 192.168.1.140 | - | Drucker (Kostenstelle JANS) |

## 2. DATENQUELLEN & CONNECTOREN

| Quelle | Connector | Zugriffsmethode | Account |
|--------|-----------|----------------|---------|
| NAS DS918+ | SMB Mount | //DiskStation918/daten | raphaeljans |
| SharePoint | MCP (Graph API) | @pnp/cli-microsoft365-mcp-server | rj@raphaeljans.ch |
| Outlook | MCP (Graph API) | @pnp/cli-microsoft365-mcp-server | rj@raphaeljans.ch |
| OneDrive | MCP + lokaler Mount | Graph API + CloudStorage | rj@raphaeljans.ch |
| Dropbox | Lokaler Mount | ~/Library/CloudStorage/Dropbox/ | raphaeljans |
| Google Calendar | MCP | Google Calendar MCP | raphaeljans@me.com |
| Gmail | MCP | Gmail MCP | raphaeljans@me.com |

## 3. AZURE APP REGISTRATION

| Parameter | Wert |
|-----------|------|
| App Name | JANS AI Hub |
| App ID | 296600a7-9126-422d-b536-36f0acf93940 |
| Tenant ID | d3ea8e1a-8ecc-479d-b831-6c0784ee0b51 |
| Auth Type | Device Code Flow |
| Public Client | Aktiviert |
| Admin Consent | Erteilt |

### API-Berechtigungen (Delegiert)
- Calendars.ReadWrite
- Files.ReadWrite.All
- Mail.Read / Mail.ReadWrite
- Sites.ReadWrite.All
- User.Read
- offline_access, openid, profile

### SharePoint-Berechtigungen (Delegiert)
- AllSites.FullControl
- MyFiles.Read / MyFiles.Write

## 4. MAC MINI SERVER-KONFIGURATION

| Einstellung | Wert |
|-------------|------|
| Schlafmodus | Deaktiviert |
| Display-Schlaf | Erlaubt (Energie sparen) |
| Wake for Network | Aktiviert |
| Tailscale | Subnet Router + Exit Node |
| Node.js | v22.14.0 |
| Claude Code | ~/Developer/claude-code/ |
| Overnight Jobs | ~/ai-jobs/scripts/ |

## 5. NAS KONFIGURATION

| Parameter | Wert |
|-----------|------|
| DSM Version | 6.2.4 (Update auf 7.2 ausstehend) |
| Volume 1 | 1.9 TB (42%) - System |
| Volume 2 | 6 TB (96% → wird reduziert) |
| Volume 3 | Archiv (D1/D4 Verschiebung läuft) |
| Tailscale | Installiert & Connected |
| SSH | Aktiv (Port 22) |
| SMB | Aktiv (Port 445) |

## 6. VPN & FERNZUGRIFF

| Methode | Verwendung |
|---------|-----------|
| Tailscale | Primärer VPN (alle Geräte) |
| WireGuard/OPNsense | Backup VPN (5 Benutzer) |
| SSH | Mac Mini fernsteuern |
| Termius (iPad) | Mobiles SSH |

## 7. AI AGENTEN (GEPLANT)

| Agent | Datenquellen | Output |
|-------|-------------|--------|
| CI Agent | NAS/Referenzprojekte, Dropbox | Website, Präsentationen |
| Baurecht Agent | NAS/Normen, Online | Gutachten, Berichte |
| Content Agent | Dropbox, NAS | WordPress (Hostpoint) |
| Buchhaltung Agent | Bexio API | Finanzberichte |
| Projekt Admin Agent | SharePoint, Outlook, NAS | Terminpläne, Controlling |

## 8. OVERNIGHT-JOB BEFEHLE

```bash
# Job starten
~/ai-jobs/scripts/start-job.sh "Dein AI-Auftrag"

# Status prüfen
~/ai-jobs/scripts/status.sh

# Von unterwegs (iPad/MacBook)
ssh macmini.tail8265aa.ts.net
~/ai-jobs/scripts/status.sh
```

## 9. WICHTIGE PFADE

| Pfad | Beschreibung |
|------|-------------|
| ~/Developer/claude-code/ | Claude Code Projekt |
| ~/Developer/claude-code/.mcp.json | MCP Connector Config |
| ~/ai-jobs/ | Overnight Jobs |
| ~/Library/CloudStorage/Dropbox/ | Dropbox Mount |
| ~/Library/CloudStorage/OneDrive-JANS/ | OneDrive Mount |
| /Volumes/daten/ | NAS SMB Mount |
| ~/.claude/ | Claude Einstellungen |

## 10. NOTFALL-KONTAKTE & ZUGÄNGE

| Dienst | Admin-URL |
|--------|----------|
| Azure Portal | portal.azure.com (admin@raphaeljans.ch) |
| Tailscale Admin | login.tailscale.com (raphaeljans@me.com) |
| OPNsense | http://192.168.1.1 (raphael) |
| NAS DSM | http://192.168.1.10:5000 (raphaeljans) |
| Drucker | http://192.168.1.140 (Administrator) |
