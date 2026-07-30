# JANS Hub Cockpit

Die visuelle Kommandobruecke des AI Hub: EINE selbsttragende HTML-Seite, die den
Hub-Zustand auf einen Blick zeigt — statt Markdown-Waelzen im Fristen-Register.
Gedacht als dauerhaft offener Browser-Tab auf dem Mac Mini (Always-On) oder als
Wandbild; die Seite laedt sich alle 5 Minuten selbst neu.

## Was es zeigt

| Panel | Quelle | Inhalt |
|---|---|---|
| Warn-/Hinweisbanner | `logbuch/vollgas/` | Vollgas-Fruehwarnung (nur bei echtem Alarm), gesetzte STOP-Dateien, Backup-statt-NAS-Hinweis |
| KPI-Zeile | Register | sofort/ueberfaellig · heute · naechste 7 Tage · offen gesamt · Queue-Tiefe · KB-Anzahl |
| Fristen-Board | `logbuch/fristen.md` | Register-Zeilen als Karten mit Countdown-Chip, Prio-Farbkante, Projekt-Tag; gruppiert Sofort/Ueberfaellig → Heute → 7 Tage → Spaeter → Ohne Datum; Erledigtes eingeklappt |
| Stationen | `station-status/*.md` | Live-Zustand Mac Mini + MacBook Pro (gruen wenn Stand < 30 Min) |
| Betrieb & Queues | `remote-tasks/`, `sync-tasks/`, `logbuch/LOGBUCH.md` | Queue-Tiefe mit Eintraegen, letzte zwei Journal-Tage |
| Wissens-Layer | `wissen/<kb>/CHANGELOG.md` | Frische je KB (heute/≤3 Tg. gruen, ≤14 gelb, aelter grau) |

**Read-only:** das Script liest den Hub und schreibt ausschliesslich die Ziel-HTML.
Es bucht nichts, versendet nichts, aendert keine Hub-Daten.

## Aufruf

```bash
node webtools/cockpit/build-cockpit.mjs [--hub <pfad>] [--out <datei>] [--open]
```

- `--hub` Hub-Wurzel. Default-Kaskade: `$JANS_HUB` → `/Volumes/daten/jans-ai-hub` (NAS) →
  Repo-Wurzel (Fallback fuer Cloud/Tests am Git-Backup, wird als Hinweis eingeblendet)
- `--out` Ziel-HTML. Default `~/.jans-cockpit/cockpit.html` — bewusst AUSSERHALB von
  Repo und NAS: generiertes Artefakt, gehoert nicht in Git und nicht in den Selfcommit
- `--open` oeffnet das Ergebnis im Browser (macOS `open`)

Einmalig ansehen:

```bash
node /Volumes/daten/jans-ai-hub/webtools/cockpit/build-cockpit.mjs --open
```

## Dauerbetrieb (launchd, Mac Mini)

5-Minuten-Takt nach dem Muster der bestehenden `com.jans.*`-Jobs. Als
`~/Library/LaunchAgents/com.jans.cockpit.plist` ablegen, Pfade pruefen, dann
`launchctl load ~/Library/LaunchAgents/com.jans.cockpit.plist`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>com.jans.cockpit</string>
  <!-- NAS-first: Script UND Daten vom NAS, SSD-Repo nur als Fallback wenn
       /Volumes/daten beim Lauf nicht gemountet ist (Wahl je Lauf neu).
       Node-Pfad an die Station anpassen (command -v node). -->
  <key>ProgramArguments</key>
  <array>
    <string>/bin/bash</string>
    <string>-c</string>
    <string>H=/Volumes/daten/jans-ai-hub; [ -d "$H" ] || H=$HOME/Developer/jans-ai-hub; exec /opt/homebrew/bin/node "$H/webtools/cockpit/build-cockpit.mjs" --hub "$H"</string>
  </array>
  <key>StartInterval</key><integer>300</integer>
  <key>RunAtLoad</key><true/>
  <key>StandardErrorPath</key><string>/tmp/com.jans.cockpit.err</string>
</dict>
</plist>
```

Der Browser-Tab auf `~/.jans-cockpit/cockpit.html` zieht sich den frischen Stand
per Meta-Refresh selbst (5 Min); launchd baut im gleichen Takt neu. Ist das NAS
nicht gemountet, faellt der Lauf auf das lokale Repo zurueck und die Seite traegt
den gelben Backup-Hinweis.

## Zugriff von MacBook / Handy (ohne lokalen Build)

Der Mac Mini serviert das gebaute Cockpit zusaetzlich als Webseite:
`serve-cockpit.mjs` (launchd `com.jans.cockpit-web`, KeepAlive, Port 8377,
liefert ausschliesslich die eine HTML-Datei aus — kein Verzeichniszugriff).

| Von wo | URL |
|---|---|
| Buero (LAN) | `http://192.168.1.210:8377` |
| ueberall (Tailscale) | `http://100.120.219.12:8377` |

Nichts davon ist oeffentlich — LAN + Tailnet only. Auf dem MacBook gibt es
zusaetzlich die Doppelklick-App **`~/Applications/JANS Cockpit.app`**
(duenner Starter fuer `cockpit-oeffnen.sh`): nimmt zuerst den Mini-Server,
baut sonst lokal NAS-first. Auch direkt nutzbar:

```bash
bash /Volumes/daten/jans-ai-hub/webtools/cockpit/cockpit-oeffnen.sh
```

## Slash-Command (optional)

Ein `/cockpit`-Command gehoert nach der Rule `sync-kanonische-quelle` auf das NAS
(`/Volumes/daten/jans-ai-hub/commands/cockpit.md`) und wird dort von Hand oder per
Sync-Task angelegt, z.B. mit dem Inhalt:

```markdown
Baue das Hub-Cockpit neu und oeffne es:
`node /Volumes/daten/jans-ai-hub/webtools/cockpit/build-cockpit.mjs --open`
Danach kurz zusammenfassen, was das Cockpit als dringendste drei Punkte zeigt.
```

## Ausbaustufen (bewusst nicht in diesem Wurf)

- bexio-Live-Zahlen (Debitoren/Verzug) — braucht lokale Credentials; heute zeigen
  die Register-Zeilen den Stand
- Klick-Aktionen (erledigen/nachfassen) — das Cockpit bleibt read-only, Aenderungen
  laufen weiter ueber den Agenten `logbuch`
- Projekt-Filter (nur 2619 KISPI etc.) per Query-Parameter
