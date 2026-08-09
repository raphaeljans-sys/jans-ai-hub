---
description: "System-Health-Check für den JANS AI Hub. Prüft NAS-Mount, Git-Status, M365-Connector, Disk Space, Sync-Tasks und Symlinks. Verwenden wenn: 'Heartbeat', 'System-Health', 'System ok?', 'alles funktioniert?', 'Hub-Status', 'NAS erreichbar?', oder bei Session-Start zur Schnellprüfung."
---

# JANS AI Hub — Heartbeat Skill

## Contract

- **Trigger:** Greift bei einem schnellen System-Health-Check des Hub — NAS-Mount, Git-Status, M365-Connector, Disk Space, Sync-Tasks, Symlinks — auf Anfrage ("Heartbeat", "System ok?", "Hub-Status") oder zur Schnellpruefung bei Session-Start. Infrastruktur-Skill.
- **Inputs:** keine — liest Systemzustand selbst (gemountetes NAS, lokales Repo, Connector-Status).
- **Output-Ablage:** kein Datei-Output (nur Antwort/Status-Report, ggf. JSON).
- **Abhaengige Rules:** antwort-formatierung.
- **Vorgelagert:** —
- **Nachgelagert:** —

## Zweck

Schneller System-Health-Check des JANS AI Hub. Prüft alle kritischen Komponenten
und liefert einen kompakten Status-Report.

## Checks (in dieser Reihenfolge)

### 1. NAS-Mount
```bash
ls /Volumes/daten/jans-ai-hub/ > /dev/null 2>&1
```
- ✅ Erreichbar: `/Volumes/daten` gemountet
- ❌ Nicht erreichbar → Mount versuchen: `open smb://192.168.1.10/daten`

### 2. Git-Status
```bash
cd ~/Developer/jans-ai-hub && git status --short
```
- ✅ Clean: Keine uncommitted Changes
- ⚠️ Dirty: Uncommitted Changes vorhanden (kein Fehler, nur Info)
- ❌ Fehler: Git-Repo nicht vorhanden oder beschädigt

### 3. M365-Connector
```bash
cd ~/Developer/jans-ai-hub && npx m365 status
```
- ✅ Connected: M365 angemeldet
- ❌ Disconnected: `npx m365 login --authType certificate --certificateFile ~/.cli-m365-cert-combined.pem --appId 80c24101-4597-48db-8388-c6e8bdc75f5f --tenant d3ea8e1a-8ecc-479d-b831-6c0784ee0b51`

### 4. Disk Space
```bash
df -h ~ | tail -1 | awk '{print $4}'
```
- ✅ > 10 GB frei
- ⚠️ 5–10 GB frei
- ❌ < 5 GB frei → Aufräumen nötig

### 5. Sync-Tasks (offene Tasks von anderer Station)
```bash
ls /Volumes/daten/jans-ai-hub/sync-tasks/macbook-pro/ 2>/dev/null
ls /Volumes/daten/jans-ai-hub/sync-tasks/mac-mini/ 2>/dev/null
```
- ✅ Keine offenen Tasks
- ⚠️ Tasks vorhanden → `/station-sync` ausführen

### 6. Symlinks
```bash
ls -la ~/Developer/jans-ai-hub/.claude/skills 2>/dev/null
ls -la ~/Developer/jans-ai-hub/.claude/agents 2>/dev/null
ls -la ~/Developer/jans-ai-hub/.claude/commands 2>/dev/null
```
- ✅ Alle Symlinks intakt und zeigen auf NAS
- ❌ Symlink fehlt oder broken → `bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh`

### 7. Sync-Health (Wissens-Kette NAS → GitHub → Stationen)

Die Kette, die alle Stationen aktuell haelt: NAS (kanonisch) → **NAS-Selfcommit**
(DSM-Cron, 15 Min, seit 260610) → GitHub → `git pull` aller SSD-Spiegel (5 Min).
Fallback: Runner auf dem Mac Mini konsumiert commit-*.task. Dieser Check erkennt,
wenn die Kette stockt:

```bash
# a) Selfcommit-Puls: letzter Log-Eintrag sollte < 1 h alt sein
tail -2 /Volumes/daten/jans-ai-hub/sync-tasks/log/selfcommit-$(date +%Y%m).log 2>/dev/null

# a2) Fallback-Queue: aelteste offene commit-*.task (sollte leer sein)
ls -t /Volumes/daten/jans-ai-hub/sync-tasks/mac-mini/commit-*.task 2>/dev/null | tail -1

# b) NAS-Repo dirty count (read-only, kein Lock ueber SMB!)
GIT_OPTIONAL_LOCKS=0 git -C /Volumes/daten/jans-ai-hub status --porcelain 2>/dev/null | wc -l

# c) HEAD-Abgleich NAS vs SSD
GIT_OPTIONAL_LOCKS=0 git -C /Volumes/daten/jans-ai-hub rev-parse --short HEAD
git -C ~/Developer/jans-ai-hub rev-parse --short HEAD

# d) Runner aktiv?
launchctl list | grep ch.jans.synctask-runner
```

- ✅ Keine commit-*.task aelter als 1 h, NAS dirty < 20, HEADs gleich (oder NAS minimal voraus), Runner geladen
- ⚠️ commit-*.task aelter als 24 h ODER NAS dirty > 50 → Mac-Mini-Runner pruefen
  (`tail sync-tasks/log/runner-*.log`), notfalls dort manuell `bash scripts/nas-git-commit.sh "catch-up"`
- ❌ HEADs weichen um viele Commits ab → `git pull` auf der Station; Runner-Log lesen

**Wichtig:** Auf dem NAS-Repo NIE git-Befehle ohne `GIT_OPTIONAL_LOCKS=0` und NIE
schreibende git-Befehle von einer Nicht-Committer-Station (SMB-index.lock-Gefahr).

### 8. Projekt-Vertrauen (Trust) fuer headless Laeufe

Claude Code laedt `.claude/settings.json` und die Projekt-`CLAUDE.md` **nur in einem als
vertraut hinterlegten Arbeitsverzeichnis**. Fehlt der Eintrag, laeuft ein headless
`claude -p` ohne Projekt-Berechtigungen und ohne Hub-Kontext weiter — mit rc=0, also
unsichtbar. Belegt 27.07.2026: `planungsgrundlagen-training` antwortete nach 28 s mit
Rueckfragen statt zu arbeiten (Details: `rules/betrieb-chronik.md`, Eintrag 260729).

```bash
bash /Volumes/daten/jans-ai-hub/scripts/trust-check.sh --check
```

- ✅ Beide Hub-Pfade `OK` (SSD-Klon und NAS), Exit 0
- ❌ `LUECKE` bei einem Pfad → `bash scripts/trust-check.sh` (setzt es idempotent, mit
  Backup) oder einmal interaktiv `claude` in dem Verzeichnis starten und den
  Trust-Dialog bestaetigen
- ❌ `WARNUNG … Home-Verzeichnis ist als vertraut markiert` → zurueckstellen; ein
  vertrautes `~` gibt jeder Session von ueberall die vollen Projekt-Berechtigungen

### 9. Stations-Verbindungen (SSH beide Richtungen)

Der Setup-Konnektor prueft von der laufenden Station aus Tailscale, Ping, Port 22
und den SSH-Login zur Gegenstation:

```bash
node /Volumes/daten/jans-ai-hub/connectors/hub-setup.mjs --check
```

Tiefer Beweis auf Wunsch («arbeitet das System als Team?»): `--team` statt `--check` —
prueft zusaetzlich Wissensstand (NAS/SSD/Gegenstation auf demselben Commit), letzte
Commits + Lauf-Journal (getan), laufende Claude-Prozesse (tut) und Queues/Scheduled
Tasks beider Stationen (machen wird); Exit 0 nur wenn alles synchron.

- ✅ Gegenstation Ping OK, Port 22 offen, `ssh mini` bzw. `ssh macbook` OK
- ⚠️ MacBook Pro nicht erreichbar → normal, wenn mobil/schlafend; Auftraege via
  `scripts/sync-task-create.sh macbook-pro …` in die NAS-Queue legen
- ❌ `connection refused` auf eine 100.x-IP → Tailscale-Client einer Seite pausiert/
  ausgeloggt (Menuleisten-App pruefen), NICHT zuerst sshd verdaechtigen

### 10. Grundkontext-Budget (Kontext-Diaet-Waechter)

Misst den immer geladenen Grundkontext (CLAUDE.md + @-Imports + User-CLAUDE.md) und
die zwei schnellsten Waechser einzeln, plus das Alter des letzten /doctor-Laufs:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/grundkontext-messung.sh
```

- ✅ Alles unter den Schwellen (Grundkontext 100'000 Zeichen · auto-verbesserungen 22'000 ·
  jans-dna 18'000 · Doctor-Lauf max. 35 Tage alt)
- ⚠️ Schwelle gerissen → im Radar/Briefing melden: Kontext-Diaet-Runde bzw. /doctor faellig.
  NIE automatisch kuerzen — die Diaet laeuft interaktiv mit Vorschlagsliste und Freigabe
  (Vorgehen wie 30.07.2026, siehe `rules/betrieb-chronik.md` 260731). Nach jedem
  /doctor-Lauf den Stempel aktualisieren: `date "+%Y-%m-%d" > logbuch/doctor-letzter-lauf.txt`

### 11. Scheduled-Tasks-Spiegel (Backup der Wecker beider Stationen)

Die Task-Registries (~/.claude/scheduled-tasks/, «Routinen» in der App) liegen auf
User-Ebene ausserhalb des Git-Backups. Der Spiegel-Lauf sichert sie nach
`templates/scheduled-tasks/<station>/` (Commit uebernimmt der NAS-Committer):

```bash
bash /Volumes/daten/jans-ai-hub/scripts/scheduled-tasks-mirror.sh
```

- ✅ Lokale Registry gespiegelt; vom MacBook Pro aus auch die des Mac Mini (via ssh)
- ⚠️ Mini nicht erreichbar → kein Fehler, letzter Spiegel-Stand bleibt stehen (melden,
  wenn das mehrere Werktage in Folge auftritt)
- ❌ NAS nicht gemountet oder rsync-Fehler → im Report ausweisen
- Details/Restore: `templates/scheduled-tasks/README.md`. Der Spiegel ist Doku,
  nie Live-Zustand (Frontmatter `enabled:` kann dem Betrieb widersprechen).

### 12. Zugangswege (Wege-Radar)

Prueft alle in `connectors/WEGE.md` gefuehrten Zugangswege und repariert die mechanischen
Defekte selbst. Bewusst hier eingehaengt statt als eigener Taktgeber (Rule
`betrieb-chronik` 260727: kein zweiter Taktgeber), und weil es ein reines Shell-Script ist,
das keine eigene Claude-Session braucht:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/wege-radar.sh
```

- ✅ Exit 0, keine Ausgabe → alle Wege tragen, nichts zu berichten
- ⚠️ Exit 1 → Ausgabe in den Report uebernehmen; der Radar hat bereits einmal
  selbst zu reparieren versucht (`wege-doctor.sh`) und meldet nur, was uebrig blieb
- Am ersten Tag des Monats legt er zusaetzlich den Gaestebestand der Site
  «JANS - 2619-KISPI» zur Durchsicht vor. Grund: die Site ist seit 09.08.2026 von der
  60-Tage-Gastablauf-Policy ausgenommen, Gaeste laufen dort also nie mehr automatisch ab
- Anlass: KISPI-Vorfall 08./09.08.2026, bei dem zwei seit Wochen bestehende
  Werkzeugdefekte erst auffielen, als sie gebraucht wurden

## Output-Format

Gib einen kompakten Report aus:

```
🔵 JANS AI Hub — Heartbeat [DATUM UHRZEIT]

NAS-Mount:      ✅ /Volumes/daten erreichbar
Git-Status:     ✅ Clean (oder ⚠️ 3 uncommitted files)
M365-Connector: ✅ Connected as rj@raphaeljans.ch
Disk Space:     ✅ 47 GB frei (von 500 GB)
Sync-Tasks:     ✅ Keine offenen Tasks
Symlinks:       ✅ skills / agents / commands OK
Sync-Health:    ✅ Wissens-Kette fliesst (0 Commit-Anfragen offen, NAS↔SSD gleichauf)
Grundkontext:   ✅ 95'536 Zeichen (~23'900 est. Tokens, Schwelle 100'000); Doctor vor 1 Tag
Task-Spiegel:   ✅ macbook-pro 31 + mac-mini 8 Tasks gespiegelt

STATUS: ✅ Alles OK
```

Bei Problemen: Kurze Anleitung zur Behebung ausgeben.

## Schnell-Ausführung

Das Heartbeat-Script kann direkt ausgeführt werden:
```bash
bash /Volumes/daten/jans-ai-hub/scripts/heartbeat.sh
```

## Als Scheduled Task

Für automatischen täglichen Check als Desktop Scheduled Task einrichten:
- Name: `heartbeat-daily`
- Prompt: `Führe den Heartbeat-Check aus und berichte kurz.`
- Frequenz: Daily, 08:00 Uhr
- Skill: heartbeat

## Verwandte Befehle

- `/status` — Vollständiger System-Report (detaillierter)
- `/nas` — NAS-Mount prüfen und reparieren
- `/m365` — M365 Connector testen
- `/station-sync` — Sync-Tasks der anderen Station ausführen
