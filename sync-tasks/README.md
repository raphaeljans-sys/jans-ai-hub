# Pendenzen pro Geraet (Sync-Tasks) — Auto-Abarbeitung alle 30 Min

Geraete-spezifische Aufgaben-Queues auf dem NAS. Jede Station liest **nur ihren
eigenen Ordner** und arbeitet die Pendenzen unbeaufsichtigt ab — der manuelle
Stations-Handoff (etwas auf Station A einrichten, das Station B nachziehen muss)
laeuft damit automatisch.

```
sync-tasks/
  mac-mini/      ← Pendenzen fuer den Mac Mini   (Always-On, fuehrt prompt-Tasks aus,
                                                  konsumiert commit-*.task als Committer)
    scripts/     ← von sync-task-create.sh hierher kopierte Task-Scripts
                   (NAS = von jeder Station erreichbar; bleiben nach Erledigung als Archiv)
  macbook-pro/   ← Pendenzen fuer das MacBook Pro
  <station>/     ← jede weitere Station (Queue legt neue-station.sh bzw. der Runner an)
  done/          ← erledigte Pendenzen (Archiv)
  log/           ← Lauf-Protokoll des Runners (runner-JJJJMM.log)
```

**Stations-Identitaet:** Der Runner liest den Stationsnamen aus `~/.jans-station`
(gesetzt von `scripts/neue-station.sh`); Fallback ist die Hardware-Erkennung
(Mac Mini / MacBook). Neue Station einbinden = EIN Befehl:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/neue-station.sh station-03
```

## Wie es laeuft

Pro Station ein **launchd-Timer** (`ch.jans.synctask-runner`, alle 30 Min) ruft
`scripts/sync-task-run.sh` auf. launchd holt verpasste Laeufe beim Aufwachen still
nach — **kein Toast, keine Kosten im Leerlauf** (bewusst kein Claude-Scheduled-Task,
der auf dem schlafenden MacBook „konnte nicht gestartet werden" meldet).

Jede Pendenz wird ausgefuehrt und bei Erfolg nach `done/` verschoben; bei Fehler
bleibt sie liegen und der naechste Lauf versucht es erneut.

## Zwei Task-Typen

| typ | Inhalt | Ausfuehrung | Wo |
|---|---|---|---|
| `shell` (Default) | Bash-Script | `eval` des ```bash```-Blocks | jede Station |
| `prompt` | Anweisung in Worten | via `dispatch-run.sh` → headless `claude -p`, voller JANS-Harness | **nur Mac Mini** |

`prompt`-Pendenzen laufen nur auf dem Mac Mini, weil die **Host-Weiche** in
`scripts/dispatch-run.sh` (`PRIMARY_HOST=Macmini`) andere Stationen blockt — die
Pendenz bleibt dort liegen. Darum rechenintensive/urteilende Aufgaben immer fuer
`mac-mini` einstellen.

## NAS committet sich selbst (Normalweg seit 10.06.2026)

Das NAS-Repo wird **vom NAS selbst** committet + gepusht: DSM-Cron alle 15 Min
ruft `scripts/nas-selfcommit.sh` auf (nativ auf ext4, kein SMB-Risiko, Log
`sync-tasks/log/selfcommit-JJJJMM.log`). Neues Wissen ist damit **max. ~20 Min
nach Entstehung auf GitHub** und via Git-Auto-Sync (5 Min) auf allen
SSD-Spiegeln — egal auf welcher Station es entstanden ist. Details/Betrieb:
`docs/plan-dsm-git.md`.

## Commit-Anfragen (`commit-*.task`) — Fallback

Nicht-Committer-Stationen koennen via `scripts/nas-git-commit.sh` weiterhin eine
`commit-<station>-<zeit>.task` in die Queue `mac-mini/` legen. Der Runner auf dem
**Mac Mini** (Marker `~/.jans-git-committer`) konsumiert sie automatisch mit
einem serialisierten `nas-git-commit.sh`-Lauf. Seit dem NAS-Selfcommit ist das
nur noch das **Sicherheitsnetz** (z.B. wenn der DSM-Cron ausfaellt — der
Heartbeat meldet das).

## Pendenz erstellen

```bash
# Shell-Pendenz (Default)
bash scripts/sync-task-create.sh mac-mini "npm update" "cd ~/Developer/jans-ai-hub && git pull && npm install"

# Shell-Pendenz aus einem lokalen Script-File → Inhalt wird EINGEBETTET
bash scripts/sync-task-create.sh mac-mini "venv einrichten" /tmp/venv-setup.sh

# Prompt-Pendenz (laeuft als voller Claude-Lauf auf dem Mac Mini)
bash scripts/sync-task-create.sh mac-mini "Trainings-Tasks pruefen" \
     "Lies docs/RUNBOOK-trainings-tasks.md und fuehre TEIL A aus." prompt
```

## Stationslokale Pfade (/tmp) — Fix 11.06.2026

**Konstruktionsfehler (behoben):** Task-MDs, die nur einen `/tmp/...`-Pfad als Script
enthielten, liefen auf der Zielstation ins Leere — `/tmp` ist **stationslokal**, das
Script existiert dort nie (passiert am 11.06.2026 bei 2 Tasks fuer mac-mini; Inhalt
musste aus der Doku rekonstruiert werden).

`sync-task-create.sh` loest das jetzt selbst auf (nur `typ: shell`):

1. **Einbetten:** Ist `<inhalt>` ein lesbares lokales File, wird sein **Inhalt** in den
   ```bash```-Block der Task-MD geschrieben (mit Herkunfts-Kommentar) — nie der Pfad.
2. **NAS-Kopie:** Referenziert der Inhalt lokal existierende `/tmp/`-Dateien (z.B.
   `bash /tmp/x.sh arg`), werden sie nach `sync-tasks/<ziel>/scripts/` kopiert
   (`chmod +x`) und der Pfad im Task auf den NAS-Pfad umgeschrieben.
3. **Warnung:** Verbleibende `/tmp/`-Referenzen (lokal nicht existent) sind nur OK,
   wenn das Script sie auf der Zielstation **selbst erzeugt** — Create warnt.

Ausfuehrungsseitig (`sync-task-check.sh --run` und `sync-task-run.sh`) wird vor dem
`eval` geprueft, ob referenzierte `/tmp/`-Pfade lokal fehlen → Warnung in Ausgabe bzw.
Runner-Log (faengt Alt-Format-Tasks ab). Eingebettete Bloecke und NAS-Pfade unter
`sync-tasks/<station>/scripts/` laufen unveraendert ueber den bestehenden `eval`.
Zusaetzlich behoben: `sync-task-check.sh --run` wertete bisher den Exit-Code von `sed`
statt des Scripts aus — Fehlschlaege wurden faelschlich nach `done/` verschoben.

## Runner installieren (pro Station, einmalig)

```bash
bash scripts/install-synctask-runner.sh            # alle 30 Min (1800 s)
bash scripts/install-synctask-runner.sh 900        # alle 15 Min
bash scripts/install-synctask-runner.sh --uninstall
```

## Manuell / Diagnose

```bash
bash scripts/sync-task-check.sh        # offene Pendenzen anzeigen (nur shell)
bash scripts/sync-task-run.sh          # jetzt einmal abarbeiten (shell + prompt)
/station-sync                          # in Claude Code: anzeigen + abarbeiten
tail -f sync-tasks/log/runner-$(date +%Y%m).log
launchctl list | grep ch.jans.synctask-runner
```

## Sicherheits-/Vertrauensmodell

- Es laufen nur Pendenzen, die von einer vertrauten Station / von Claude in die
  NAS-Queue gelegt wurden — dieselbe Basis wie das manuelle `/station-sync --run`.
- `prompt`-Pendenzen laufen durch den Dispatch-Trichter: fixes Verzeichnis,
  Permission-Modus und **Budget-Deckel** (`DISPATCH_MAX_BUDGET_USD`), mit Audit-Log
  unter `dispatch/log/`.
- Pro Station getrennte Queues → keine Doppel-Ausfuehrung, keine Kollision.

## Off-Switch

```bash
bash scripts/install-synctask-runner.sh --uninstall   # Timer weg, Queues bleiben
```
