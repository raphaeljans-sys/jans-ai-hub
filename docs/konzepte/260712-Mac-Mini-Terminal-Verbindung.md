# Mac Mini per Terminal statt Bildschirmfreigabe (SSH + tmux)

**Datum:** 12.07.2026
**Status:** Konzept + Setup-Scripts bereit
**Ziel:** Vom MacBook Pro aus stabil auf dem Mac Mini arbeiten — Claude Code
laeuft direkt im Terminal des Mac Mini, ohne Bildschirmfreigabe.

---

## 1. Ausgangslage

Bisher wird der Mac Mini vom MacBook Pro aus per **Bildschirmfreigabe**
(Screen Sharing / VNC) bedient. Das ist fuer Terminal-Arbeit die schwerste
und instabilste Loesung:

- Es wird der komplette Bildschirm als Video uebertragen (hohe Bandbreite,
  Latenz, Ruckeln — besonders extern via Tailscale)
- Bricht die Verbindung ab, ist die Sicht auf die laufende Arbeit weg
- Fuer reine Terminal-Arbeit (Claude Code) wird 99% der uebertragenen
  Information gar nicht gebraucht

## 2. Optionen im Vergleich

| Option | Typ | Stabilitaet | Session ueberlebt Abbruch | Aufwand | Bewertung |
|---|---|---|---|---|---|
| Bildschirmfreigabe (VNC) | Apple, Systemeinstellungen > Teilen | schlecht (Video-Stream) | nein | 0 (laeuft) | ersetzen |
| **SSH «Entfernte Anmeldung»** | **Apple, Systemeinstellungen > Teilen** | **sehr gut (nur Text)** | **mit tmux: ja** | **klein** | **EMPFOHLEN** |
| SSH + Mosh | Drittloesung (brew) | exzellent auch bei Funkloechern | ja (eingebaut) | klein | optionales Upgrade |
| Eternal Terminal (et) | Drittloesung (brew) | exzellent | ja | klein | Alternative zu Mosh |
| VS Code Remote-SSH | Drittloesung (Microsoft) | gut | teilweise | mittel | nur falls IDE gewuenscht |
| Screens / Jump Desktop | Drittloesung (App Store) | besser als VNC, aber weiter Video | nein | mittel | nicht noetig |

**Entscheid: SSH + tmux.**
SSH ist das Apple-Bordmittel («Entfernte Anmeldung» in Systemeinstellungen >
Allgemein > Teilen), uebertraegt nur Text statt Video und ist damit um
Groessenordnungen genuegsamer und stabiler als Bildschirmfreigabe. **tmux**
(Terminal-Multiplexer, via Homebrew) haelt die Terminal-Session auf dem
Mac Mini am Leben: Bricht die Verbindung ab (WLAN-Wechsel, Zug, Standby des
MacBook), laeuft Claude Code auf dem Mac Mini einfach weiter — beim naechsten
Verbinden haengt man sich wieder in dieselbe Session ein und sieht alles.

**Wichtig zur Abgrenzung:** Die Notiz in CLAUDE.md «Claude Code SSH
unterstuetzt nur Linux-Hosts» betrifft das *eingebaute Remote-SSH-Feature von
Claude Code* (Claude Code auf Station A steuert Host B). Das brauchen wir hier
nicht: Claude Code laeuft **nativ auf dem Mac Mini**, SSH ist nur der
Transportweg fuer die Tastatur/Anzeige. Das funktioniert auf macOS
uneingeschraenkt.

## 3. Architektur

```
┌─────────────────┐         SSH (Port 22, nur Text)        ┌──────────────────┐
│  MacBook Pro    │ ───────────────────────────────────────►│  Mac Mini        │
│  (mobil)        │   im Buero:  direkt via LAN             │  (Buero, 24/7)   │
│                 │   unterwegs: via Tailscale               │                  │
│  Terminal/iTerm │   (100.120.219.12 — Tailscale waehlt    │  tmux-Session    │
│  `mini`         │    im LAN automatisch den direkten Weg) │   └─ claude      │
└─────────────────┘                                          │      (laeuft     │
                                                             │       lokal!)    │
        Verbindung weg? tmux-Session laeuft weiter ─────────►│                  │
        `mini` erneut = wieder mittendrin                    └──────────────────┘
```

- **Ein Hostname fuer alles:** Der SSH-Alias `mini` zeigt auf die
  Tailscale-IP des Mac Mini (100.120.219.12). Tailscale erkennt, wenn beide
  Geraete im gleichen LAN sind, und routet dann direkt — es braucht also
  keine Fallunterscheidung Buero/extern.
- **tmux** laeuft auf dem Mac Mini und haelt die Session (inkl. laufendem
  Claude Code) unabhaengig von der Verbindung am Leben.

## 4. Einrichtung (einmalig)

### Schritt 1 — auf dem Mac Mini
```bash
bash ~/Developer/jans-ai-hub/scripts/setup-ssh-mac-mini.sh
```
Aktiviert «Entfernte Anmeldung» (SSH-Server), installiert tmux und legt eine
sinnvolle tmux-Grundkonfiguration an. Falls das Script die Anmeldung nicht
selbst aktivieren darf (macOS-Schutz): Systemeinstellungen > Allgemein >
Teilen > **Entfernte Anmeldung** einschalten (Zugriff: nur Benutzer
`raphaeljans`).

### Schritt 2 — auf dem MacBook Pro
```bash
bash ~/Developer/jans-ai-hub/scripts/setup-ssh-macbook.sh
```
Erzeugt (falls noetig) einen SSH-Schluessel, hinterlegt ihn auf dem Mac Mini
(einmalige Passwort-Eingabe), schreibt den Host-Eintrag `mini` in
`~/.ssh/config` (mit Keep-Alive-Einstellungen fuer stabile Verbindungen) und
installiert den Befehl `mini` nach `~/bin`.

## 5. Taeglicher Gebrauch

| Befehl (auf dem MacBook) | Wirkung |
|---|---|
| `mini` | Terminal auf dem Mac Mini, haengt sich in die Dauer-Session `jans` ein (oder erstellt sie) |
| `mini claude` | dito, eigene Session `claude` — dort einfach `claude` starten |
| `mini <name>` | beliebige weitere benannte Session |
| `ssh mini` | rohes SSH ohne tmux (fuer schnelle Einzelbefehle) |

Typischer Ablauf:
1. `mini` tippen → man ist auf dem Mac Mini
2. `cd ~/Developer/jans-ai-hub && claude` → Claude Code laeuft **auf dem Mac Mini**
3. Deckel zu, Zug, WLAN-Wechsel — egal: Claude arbeitet weiter
4. Spaeter wieder `mini` → gleiche Session, voller Verlauf

tmux-Minimalwissen: `Ctrl-b d` = Session verlassen (laeuft weiter),
`Ctrl-b [` = zurueckscrollen (q beendet), Maus-Scrollen ist aktiviert.

## 6. Optionales Upgrade: Mosh

Wenn unterwegs (Zug, Hotspot) selbst SSH-Verbindungen zu oft neu aufgebaut
werden muessen: **Mosh** (mobile shell) auf beiden Geraeten installieren
(`brew install mosh`). Mosh laeuft ueber UDP, uebersteht IP-Wechsel und
Funkloecher nahtlos und tippt ohne Latenzgefuehl (lokales Echo). Aufruf:
`mosh mini -- tmux new -A -s jans`. Fuer den Anfang ist SSH + tmux + Tailscale
aber bereits sehr stabil — Mosh erst nachruesten, wenn es sich lohnt.

## 7. Sicherheit

- SSH-Zugriff nur mit Schluessel (Passwort-Login kann nach erfolgreichem
  Schluessel-Setup deaktiviert werden, siehe Hinweis im Setup-Script)
- Von aussen ist der Mac Mini nur ueber Tailscale erreichbar (kein
  Port-Forwarding auf der OPNsense noetig — nichts ist im Internet exponiert)
- «Entfernte Anmeldung» auf den Benutzer `raphaeljans` beschraenken

## 8. Was mit der Bildschirmfreigabe passiert

Sie kann aktiviert bleiben (fuer die seltenen Faelle, wo wirklich GUI noetig
ist — z.B. macOS-Dialoge, Finder). Fuer die taegliche Claude-Code-Arbeit wird
sie durch `mini` ersetzt.
