# Remote-Task-Queue — Claude arbeitet selbständig auf den Stationen

**Zweck:** Jede Claude-Session — insbesondere claude.ai/code (Cloud-Container
**ohne** LAN-/Tailscale-Zugriff) — kann Arbeit auf dem Mac Mini oder MacBook Pro
ausführen lassen. Der Transportweg ist das Git-Repo selbst; es braucht keine
Bildschirmfreigabe, keine offenen Ports und keine manuelle Freigabe pro Schritt.

## Funktionsweise

```
Claude-Session (Cloud/Station)                    Ziel-Station (launchd, alle 5 Min)
────────────────────────────                      ──────────────────────────────────
Task-Script schreiben nach                        git-auto-sync.sh zieht das Repo
  pending/<station>/JJJJMMTT-name.sh      ──────► Hook erkennt *.sh → runner.sh
git commit + push                                 führt Task aus (User-Rechte)
                                                  Ergebnis → results/<name>/
Ergebnis lesen unter                              Task → done/
  results/<name>/            ◄──────              commit + push
```

- **Latenz:** ~5–10 Minuten pro Richtung (git-auto-sync läuft alle 300 s).
  Der Mac Mini ist Always-On; das MacBook führt Tasks aus, sobald es wach ist.
- **Ziel-Ordner:**
  - `pending/*.sh` → Mac Mini (Standard, rückwärtskompatibel)
  - `pending/mac-mini/*.sh` → Mac Mini
  - `pending/macbook-pro/*.sh` → MacBook Pro

## Task schreiben

Ein Task ist ein bash-Script. Der Runner übergibt als `$1` das
Ergebnis-Verzeichnis (`results/<taskname>/`) — alles, was dort landet, kommt
per Push zurück und ist für die auftraggebende Session lesbar. stdout/stderr
landen automatisch in `results/<taskname>/output.log`.

```bash
#!/bin/bash
# Beispiel: Systeminfo einsammeln
R="$1"
sw_vers > "$R/macos-version.txt"
df -h /  > "$R/disk.txt"
```

Bequem per Helfer (legt Datei an, committet und pusht auf Wunsch):

```bash
echo 'sw_vers > "$1/os.txt"' | bash scripts/remote-task-create.sh mini os-check --push
```

## Voller JANS-Harness im Task (Skills, Agents, Rules)

Für inhaltliche Aufträge (nicht nur Shell-Befehle) im Task den
Dispatch-Launcher aufrufen — er führt `claude -p` **im Projektverzeichnis**
aus, damit CLAUDE.md + alle Skills/Agents/Rules greifen:

```bash
#!/bin/bash
R="$1"
bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" \
    "Erstelle die Volumenstudie fuer Parzelle X und lege sie ab" > "$R/antwort.md"
```

**Voraussetzung dafür (einmalig pro Station):** Die Claude-CLI braucht für
headless-Läufe unter launchd ein Setup-Token (`claude setup-token`), weil der
macOS-Schlüsselbund in launchd-/SSH-Kontexten gesperrt sein kann —
Details in `scripts/DISPATCH-README.md`.

## Sicherheits-Modell

- Nur `.sh`-Dateien in `pending/` werden ausgeführt, mit den Rechten des
  lokalen Benutzers — wer pushen darf, darf ausführen (privates Repo,
  Schreibzugriff = Vertrauensgrenze).
- Jeder Lauf ist nachvollziehbar: `runner.log`, `done/` (Archiv des Scripts),
  `results/<name>/` (Output, Status, Zeitstempel, Station).
- Geld-/Buchungs-Aktionen bleiben tabu — es gelten dieselben Grenzen wie in
  `logbuch/AKTIONS-WHITELIST.md`.

## Einrichtung auf einer Station

```bash
bash ~/Developer/jans-ai-hub/remote-tasks/install.sh
```
(Hängt den Runner-Hook an `scripts/git-auto-sync.sh` an; auf Mac Mini und
MacBook Pro bereits geschehen.)

## Verwandte Wege

| Von wo | Weg | Latenz |
|---|---|---|
| claude.ai/code (Cloud) | diese Task-Queue | ~5–10 Min |
| Claude Code auf dem MacBook | direkt `ssh mini "<befehl>"` (SSH+tmux, siehe `docs/konzepte/260712-Mac-Mini-Terminal-Verbindung.md`) | sofort |
| Handy (Dispatch/Cowork) | `scripts/dispatch-run.sh` auf dem Mac Mini | sofort |
