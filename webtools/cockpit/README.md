# JANS Hub Cockpit

Die visuelle Kommandobruecke des AI Hub: EINE selbsttragende HTML-Seite, die den
Hub-Zustand auf einen Blick zeigt — statt Markdown-Waelzen im Fristen-Register.
Gedacht als dauerhaft offener Browser-Tab; die Seite laedt sich alle 5 Minuten
selbst neu.

Seit 31.07.2026 ist das Cockpit **interaktiv**: laeuft der lokale
`cockpit-server.mjs` (http://127.0.0.1:8737, nur localhost), traegt jede offene
Frist einen **«✓ erledigt»-Button**, der die Zeile direkt im Register
`logbuch/fristen.md` auf «erledigt (Cockpit TT.MM.JJJJ)» setzt. Dazu zeigt die
Sektion **«Second Brain»** den Wissens-Layer grafisch: eine Blase je KB
(Flaeche = Wiki-Artikelbestand, Farbe = Frische, Tooltip mit Artikel/Reports/raw).

## Was es zeigt

| Panel | Quelle | Inhalt |
|---|---|---|
| Warn-/Hinweisbanner | `logbuch/vollgas/` | Vollgas-Fruehwarnung (nur bei echtem Alarm), gesetzte STOP-Dateien, Backup-statt-NAS-Hinweis |
| KPI-Zeile | Register | sofort/ueberfaellig · heute · naechste 7 Tage · offen gesamt · Queue-Tiefe · KB-Anzahl |
| Fristen-Board | `logbuch/fristen.md` | Register-Zeilen als Karten mit Countdown-Chip, Prio-Farbkante, Projekt-Tag; gruppiert Sofort/Ueberfaellig → Heute → 7 Tage → Spaeter → Ohne Datum; Erledigtes eingeklappt |
| Stationen | `station-status/*.md` | Live-Zustand Mac Mini + MacBook Pro (gruen wenn Stand < 30 Min) |
| Betrieb & Queues | `remote-tasks/`, `sync-tasks/`, `logbuch/LOGBUCH.md` | Queue-Tiefe mit Eintraegen, letzte zwei Journal-Tage |
| Second Brain | `wissen/<kb>/` (wiki/outputs/raw) + CHANGELOG | Blase je KB: Flaeche = Wiki-Artikel (ohne INDEX/QUESTIONS), Farbe = Frische (≤3 Tg. gruen, ≤14 gelb), Totalzeile Artikel/Reports/Roh-Quellen |

**Builder read-only:** `build-cockpit.mjs` liest den Hub und schreibt ausschliesslich
die Ziel-HTML. Die EINZIGE Schreiboperation des Systems sitzt im lokalen
`cockpit-server.mjs` (`POST /api/erledigt`): Status-Zelle einer Registerzeile in
`logbuch/fristen.md` auf «erledigt (Cockpit TT.MM.JJJJ)» setzen — sonst nichts.
Es bucht nichts, versendet nichts, loescht nichts.

## Interaktiver Betrieb (cockpit-server.mjs)

```bash
node webtools/cockpit/cockpit-server.mjs [--hub <pfad>] [--port 8737] [--open]
```

- Bindet NUR an `127.0.0.1` (Port 8737) — kein Zugriff aus dem Netz
- `GET /` baut das Cockpit je Aufruf frisch (mit `--interaktiv`-Flag → ✓-Buttons)
  und liefert es aus; eigene Zieldatei `~/.jans-cockpit/cockpit-interaktiv.html`
- `POST /api/erledigt {hash}` markiert die Zeile; der Zeilen-Hash (cockpit-lib.mjs,
  SHA1 ueber Frist+Was) ist stabil ueber Rebuilds. Abgewiesen wird mit klarer
  Meldung: Zeile nicht gefunden (Register geaendert), schon erledigt, NAS nicht
  gemountet (Guard `sync-kanonische-quelle` — geschrieben wird nur auf dem NAS)
- Commit uebernimmt der native 15-Min-Selfcommit der Synology, nie der Server
- Laeuft der Server im SSD-Fallback und das NAS kommt zurueck, beendet er sich
  nach der naechsten Antwort selbst; launchd (KeepAlive) startet ihn NAS-seitig neu
- launchd: `~/Library/LaunchAgents/com.jans.cockpit-server.plist` (KeepAlive,
  RunAtLoad; auf dem MacBook Pro seit 31.07.2026 installiert), Logs unter
  `/tmp/com.jans.cockpit-server.{log,err}`

Der statische Mini-Webserver (Port 8377, unten) liefert dieselbe Seite OHNE
Buttons aus — die HTML zeigt die ✓-Buttons nur, wenn sie mit `--interaktiv`
gebaut UND ueber http geladen wurde.

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
- ~~Klick-Aktionen (erledigen)~~ — seit 31.07.2026 gebaut (`cockpit-server.mjs`);
  weitere Aktionen (nachfassen, snoozen, neue Frist) laufen weiterhin ueber den
  Agenten `logbuch`
- Interaktiver Server auch auf dem Mac Mini (Sync-Task erstellt, Freigabe-Weg) —
  dann koennte auch der 8377-Weg auf die interaktive Fassung zeigen
- Projekt-Filter (nur 2619 KISPI etc.) per Query-Parameter
