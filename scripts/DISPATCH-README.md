# JANS Dispatch-Connector — Handy → Cowork → JANS-Harness

Vom Handy einen Auftrag in den **normalen JANS-Prozess** (Skills, Agents, Rules)
einspeisen — via Claude **Dispatch** und die Cowork-Desktop-App auf dem **Mac Mini**.

## Wie es zusammenhaengt

```
Handy (Claude-App → Dispatch)
   → Cowork (Desktop-App auf dem Mac Mini, Always-On)
   → ruft  scripts/dispatch-run.sh "<Auftrag>"
   → das fuehrt  claude -p "<Auftrag>"  IM Repo ~/Developer/jans-ai-hub aus
   → damit greifen CLAUDE.md + alle Skills/Agents/Rules (der volle Harness)
   → Ergebnis: Ablage (SharePoint/NAS durch die Skills) + Antwort im Dispatch-Thread
   → Audit-Log unter  /Volumes/daten/jans-ai-hub/dispatch/log/<RunID>.md
```

**Warum dieser Umweg?** Cowork allein ist ein generischer Desktop-Agent — er kennt
die JANS-Konventionen (Absenderadresse, Umlaute, Dateinamen, baurecht/korrektur …)
nicht. Der Launcher routet den Auftrag in das Projektverzeichnis, wo der ganze
Harness automatisch laedt. Cowork wird damit zur Fernbedienung, der Harness macht die Arbeit.

## Voraussetzungen (einmalig)

1. **Cowork-Desktop-App laeuft auf dem Mac Mini** (Always-On → Dispatch immer erreichbar).
   Schlaeft der Mac oder ist die App zu, steht Dispatch still.
2. **Claude Code CLI** auf dem Mac Mini installiert (`claude --version`, hier `/opt/homebrew/bin/claude`).
3. **CLI EINMALIG authentifiziert** — die Standalone-CLI hat eine *eigene* Anmeldung,
   getrennt von der Cowork-Desktop-App. Einmal ausfuehren (nutzt das Claude-Abo):
   `claude setup-token`  (interaktiv: oeffnet Browser, Code zurueckgeben). Ohne das
   bricht jeder Lauf mit „Not logged in" ab. Alternative: `ANTHROPIC_API_KEY` setzen
   (rechnet aber per API statt ueber das Abo).
4. Dieses Skript ist auf dem Mac Mini vorhanden (kommt via `git pull` vom NAS-Repo).
   Der Launcher haertet den PATH selbst ab (Homebrew/node), damit Coworks magerer
   GUI-PATH die node-basierte CLI trotzdem findet.

## So loest Du einen Auftrag aus (vom Handy)

Im Dispatch-Thread an Cowork — eine der zwei Formen:

- **Direkt:** „Fuehre im Terminal aus:
  `bash ~/Developer/jans-ai-hub/scripts/dispatch-run.sh 'Erstelle eine Pendenzenliste aus der letzten KISPI-Sitzung'`"
- **Natuerlichsprachlich** (sobald Cowork das Protokoll kennt, siehe unten):
  „JANS-Auftrag: Ueberschlage das Honorar Phase 5, Bausumme 3.2 Mio."

Cowork fuehrt das Skript aus, der Harness arbeitet, das Ergebnis erscheint im Thread
und liegt zusaetzlich im Log + (je nach Skill) auf SharePoint/NAS.

### Cowork das Protokoll beibringen (empfohlen)

Damit Du nicht jedes Mal den Pfad tippst: In Cowork eine Dauer-Anweisung / Memory
hinterlegen (Cowork-Config ist lokal auf dem Mac Mini):

> Wenn ein Auftrag mit „JANS-Auftrag:" beginnt oder klar Buero-/Projektarbeit ist,
> NICHT selbst beantworten, sondern ausfuehren:
> `bash ~/Developer/jans-ai-hub/scripts/dispatch-run.sh "<der Auftragstext>"`
> und das Ergebnis zurueckgeben.

## Konfiguration (ENV-Variablen)

| Variable | Default | Zweck |
|---|---|---|
| `DISPATCH_REPO` | `$HOME/Developer/jans-ai-hub` | Projektpfad (Harness) |
| `DISPATCH_PERMISSION_MODE` | `acceptEdits` | Permission-Modus des Headless-Laufs |
| `DISPATCH_MAX_BUDGET_USD` | `5` | Kostendeckel je Lauf |
| `DISPATCH_LOG_DIR` | `…/dispatch/log` | Audit-Logs (NAS, Fallback lokal) |
| `DISPATCH_CLAUDE_BIN` | `claude` | Pfad zur Claude-CLI (falls nicht im PATH) |
| `DISPATCH_PRIMARY_HOST` | `Macmini` | Designierter Endpunkt — nur diese Station fuehrt aus |
| `DISPATCH_ALLOW_ANY_HOST` | `0` | Auf `1` setzen, um den Host-Check bewusst zu umgehen |

## Sicherheit — der eigentliche Trichter

Eine Handy-Anweisung loest **echte Aktionen** auf dem Mac aus (Dateien schreiben,
Mail senden, Browser steuern). Zwei Schutzschichten:

1. **Der Launcher ist der einzige Eintrittspunkt** — Verzeichnis, Budget und Modus
   sind fix, nur der Auftragstext ist frei.
2. **Die Allow-Liste in `.claude/settings.json`** bestimmt, welche Werkzeuge ohne
   Rueckfrage laufen. Heute breit (Bash/Write/MCP frei) → der Launcher ist sofort
   voll funktionsfaehig. Willst Du die Handy-Strecke **enger** fuehren, ist das der
   Hebel: Eintraege entfernen/`deny` setzen, dann fragt der Lauf bei diesen Tools
   nach (und bricht headless dort ab, statt sie auszufuehren).

`bypassPermissions` (= alles ohne Rueckfrage, auch nicht-gelistete Tools) nur
setzen, wenn Du der Handy-Strecke voll vertraust:
`DISPATCH_PERMISSION_MODE=bypassPermissions bash …/dispatch-run.sh "…"`

## Designierter Endpunkt (Mac Mini)

Nur **eine** Station darf Handy-Auftraege ausfuehren — sonst bedienen zwei Cowork-Apps
denselben Dispatch-Thread und es ist unklar, wo gearbeitet wird. Designiert ist der
**Mac Mini** (`hostname -s` = `Macmini`), weil er Always-On ist (`pmset … sleep 0`):
so steht die Strecke nicht still, wenn das MacBook unterwegs zugeklappt/offline ist.

Der Launcher prueft das nach dem Repo-Wechsel: laeuft er auf einer anderen Station,
bricht er mit **Exit-Code 5** und der Meldung „Dispatch-Endpunkt ist 'Macmini'…" ab,
ohne den Harness zu starten. Jedes Log fuehrt zusaetzlich `primary_host` und
`host_match: ja|NEIN` — so ist beweissicher, von wo ein Lauf kam.

Eine andere Station bewusst freischalten (z.B. zum Testen am MacBook):
```bash
DISPATCH_ALLOW_ANY_HOST=1 bash ~/Developer/jans-ai-hub/scripts/dispatch-run.sh "…"
# oder dauerhaft umziehen: DISPATCH_PRIMARY_HOST=<hostname -s> setzen
```

> Wichtig: Das ist die **Repo-Schicht**. Welche Cowork-Desktop-App den Dispatch-Thread
> tatsaechlich bedient, ist eine Einstellung in der Claude-Desktop-App selbst (App/Cloud-
> Schicht) — die wird dort gekoppelt, nicht hier. Der Host-Check ist das Sicherheitsnetz,
> falls doch die falsche Station ausloest.

## Bekannte Grenzen

- **Mac muss wach sein** — Cowork/Dispatch stehen sonst still (Mac Mini = Always-On loest das).
- **Output-Auslieferung im Dispatch-Thread ist laut Anthropic-Tests ~50/50.** Deshalb
  verlassen wir uns nicht darauf: Die Skills legen Deliverables selbst auf SharePoint/NAS
  ab, und jeder Lauf hat ein vollstaendiges Log unter `dispatch/log/`. Der Thread liefert
  die Bestaetigung, nicht zwingend das Dokument.
- Jeder Lauf ist **zustandslos** (ein Auftrag = ein Harness-Lauf), passend zu Dispatchs
  „Auftrag abgeben → fertige Arbeit abholen".

## Verwandt

- `scripts/sync-task-create.sh` — Stations-Queue (das gleiche Muster fuer Station↔Station).
- Spaetere Ausbaustufe **B**: schwere Auftraege in eine NAS-`inbox/` legen und vom Mac Mini
  per Scheduled Task unbeaufsichtigt abarbeiten (entkoppelt, fuer lange Laeufe).
