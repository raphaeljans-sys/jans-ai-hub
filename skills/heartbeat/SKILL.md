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

### 5. Sync-Tasks (offene Tasks von anderer Station) + Freigabe-Queue
```bash
ls /Volumes/daten/jans-ai-hub/sync-tasks/macbook-pro/ 2>/dev/null
ls /Volumes/daten/jans-ai-hub/sync-tasks/mac-mini/ 2>/dev/null

# Wartezimmer: zurueckgehaltene Tasks beider Stationen (Pflicht, auch bei 0)
bash /Volumes/daten/jans-ai-hub/scripts/freigabe-status.sh
```
- ✅ Keine offenen Tasks; Freigabe-Queue leer oder alles juenger als 24 h (Exit 0)
- ⚠️ Tasks vorhanden → `/station-sync` ausführen
- ❌ **Exit 1 — ein Eintrag wartet laenger als 24 h.** Immer im Report ausweisen, mit
  Wartezeit und Station. Der Guard verschiebt eine Stoerung, er behebt sie nicht: am
  11./12.08.2026 lag ein korrekt zurueckgehaltener Reparatur-Task 41 h in der Queue,
  waehrend die Wissens-Kette stillstand. **Claude gibt nie selbst frei** (Rule
  `wege-und-vollmachten`) — er legt den fertigen Freigabe-Befehl vor.
- ❌ Exit 2 — NAS nicht gemountet, Queue **UNBEKANNT**. Als unbekannt melden, nie als «0».

**Der Freigabestand wird auch bei null berichtet.** Eine stille Null ist von einer
ungeprueften Queue nicht unterscheidbar; genau diese Verwechslung kostete die 41 Stunden.
Denselben Stand fuehrt der `hub-chef` in jedem Tagesbriefing (Phase 6, Sendegrund 5).

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

**⚠ Ein Log-Eintrag ist noch kein Puls.** Der Selfcommit schreibt auch beim Ueberspringen
eine Zeile. Am 12.08.2026 sah der Puls 41 h lang frisch aus, waehrend die Kette stillstand:
178 Zeilen «Rebase/Merge aktiv — skip» hintereinander. **Immer den letzten ECHTEN
commit/push-Eintrag suchen, nicht die letzte Zeile** (gleiche Familie wie Rule
`auto-verbesserungen` 260807: zuerst fragen, was ein Zaehler wirklich zaehlt).
`LC_ALL=C` ist Pflicht — der Log ist nicht UTF-8, `grep`/`awk` liefern sonst still nichts.

```bash
# a) Selfcommit-Puls: letzter ECHTER Commit (Skip-Zeilen zaehlen NICHT als Puls)
LC_ALL=C awk '/commit:|push OK/{z=$0} END{print (z==""?"KEIN Commit im Monat":z)}' \
  /Volumes/daten/jans-ai-hub/sync-tasks/log/selfcommit-$(date +%Y%m).log 2>/dev/null | cut -c1-120

# a1) Blockade-Zaehler: Skips seit dem letzten echten Commit (>4 = Kette steht > 1 h)
LC_ALL=C awk '/commit:|push OK/{n=0} /skip|WARNUNG/{n++} END{print n" Skip(s) seit letztem Commit"}' \
  /Volumes/daten/jans-ai-hub/sync-tasks/log/selfcommit-$(date +%Y%m).log 2>/dev/null

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

- ✅ Letzter echter Commit < 1 h alt, 0–4 Skips, keine commit-*.task aelter als 1 h,
  NAS dirty < 20, HEADs gleich (oder NAS minimal voraus), Runner geladen
- ⚠️ commit-*.task aelter als 24 h ODER NAS dirty > 50 → Mac-Mini-Runner pruefen
  (`tail sync-tasks/log/runner-*.log`), notfalls dort manuell `bash scripts/nas-git-commit.sh "catch-up"`
- ❌ HEADs weichen um viele Commits ab → `git pull` auf der Station; Runner-Log lesen
- ❌ **Viele Skips in Folge oder eine `WARNUNG:`-Zeile** → die Kette steht. Ursache nativ
  ansehen, **nie ueber SMB**:
  `ssh raphaeljans@diskstation918.tail8265aa.ts.net 'cd /volume2/daten/jans-ai-hub && ls .git/ | grep -iE "rebase|MERGE_HEAD" && git status --short | wc -l'`
  Seit 12.08.2026 raeumt `nas-selfcommit.sh` einen **verwaisten** Rebase-Rest selbst weg
  (Verzeichnis ohne `head-name`/`next`) und laeuft weiter; bleibt die Blockade bestehen,
  ist es ein **echter** Rebase-/Merge-Zustand und braucht Handarbeit auf der Synology.
  Danach `bash scripts/nas-commit-now.sh "<Message>"`. Regel dabei: vor dem Aufraeumen den
  Stand pruefen und **nichts aus HEAD wiederherstellen**, ohne fremde unbestaetigte Arbeit
  auszuschliessen (Rule `auto-verbesserungen` 260811) — ein liegender `autostash` kann
  ueberholt sein, dann darf er NICHT angewendet werden.

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

### 13. Lebt die andere Station? (Stations-Watchdog)

Die Checks 1 bis 12 messen ausschliesslich die Station, auf der sie laufen. Faellt die
andere aus, sieht dieser Heartbeat weiterhin gruen aus. Genau so blieben 09. bis 12.08.2026
vier Tage ohne Tagesbriefing und ohne Radar unbemerkt (Chronik 260812b). Dieser Check liest
die Frische der Gegenstation und der Herzschlag-Stempel aus Massnahme A2:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/stationen-watchdog.sh --pruefen
```

- ✅ Exit 0 → alle Stationen und Sync-Jobs melden sich innerhalb ihrer Schwelle
  (Mac Mini 60 Min, MacBook Pro 24 h, git-auto-sync 30 Min, sync-task-runner 180 Min)
- ⚠️ Exit 1 → Befundzeilen unveraendert in den Report uebernehmen. Ein fehlender Stempel
  wiegt schwerer als ein alter: «FEHLT ganz» heisst, der Job hat auf jener Station noch nie
  gelaufen oder die Datei wurde geloescht
- ❌ Exit 2 → NAS nicht gemountet; dann ist der Watchdog blind und der Mount-Befund (Check 1)
  hat Vorrang
- **Nicht verwechseln:** `--pruefen` meldet nur. Der scharfe Lauf ohne Flag mailt bei Befund
  einmal taeglich an rj@ und verifiziert dabei, dass die Mail wirklich raus ist statt als
  Entwurf zu haengen. Den Sendeweg einmal beweisen: `--test-mail`

### 14. Methoden-Eingang (Delta-Scan «00 Prompteingaben»)

Meldet neues Methoden-Material, das Raphael im OneDrive-Ordner
`AD - 01 Geschaeftsfuerung/JANS AI/00 Prompteingaben/` ablegt. Gleiche Begruendung wie
Check 12: reines Shell-Script, keine eigene Claude-Session, kein zweiter Taktgeber:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/methoden-scan.sh
```

- ✅ Exit 0 → kein Delta, eine Zeile im Report genuegt
- 🔔 Exit 10 → **neues oder geaendertes Material.** Die Ordnerliste unveraendert in den Report
  uebernehmen und den Satz «methoden-radar ausfuehren» anhaengen. Der Scan-Stand wird hier
  **nicht** eingefroren, sonst verschluckt der heartbeat das Signal fuer den Radar
- ❌ Exit 2/3 → OneDrive oder NAS nicht erreichbar; Mount-Befund (Check 1) hat Vorrang
- **Nie selbst destillieren.** Dieser Check meldet nur. Das Lesen des Materials, das Register
  und der CHANGELOG gehoeren dem Skill/Task `methoden-radar`
- Seit 13.08.2026: Der Radar hat deshalb keinen Wochentakt mehr. Er laeuft monatlich fuer die
  Verifikations-Rotation und sonst nur auf dieses Signal hin (Chronik 260813d)

### 15. Fernzugang (Tailscale-Waechter)

Check 13 fragt, ob die andere Station **laeuft**. Dieser Check fragt, ob sie **erreichbar**
ist. Das sind zwei verschiedene Fragen, und die Luecke dazwischen hat vier Tage gekostet:
vom 20.08.2026 gegen 02:20 bis zum 24.08. war der Mac Mini vom Tailnet getrennt, ohne dass
etwas gemeldet haette. Er schrieb `station-status/` und alle Stempel weiter, denn die
schreibt er ueber den LAN-SMB-Mount, und der LAN lief. Frisch und trotzdem unerreichbar:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/tailscale-waechter.sh --pruefen
```

- ✅ Exit 0 → Tunnel oben, Subnet-Route `192.168.1.0/24` freigegeben, Gegenstellen sichtbar
- ⚠️ Exit 1 → Befundzeilen unveraendert uebernehmen. **Ein laufender Tunnel ohne die Route
  ist kein halber Erfolg**, sondern derselbe Ausfall in unauffaelligerer Form: Tailscale
  zeigt «verbunden», das Buero-LAN samt NAS ist aber weg
- ⚠️ Zeile «Update wartet auf einen Reboot» → Sparkle-Fingerabdruck. Das ist die Ursache des
  Vorfalls vom 20.08., nicht eine Nebenbemerkung: das Auto-Update ersetzt das Bundle nachts
  still, die Netzwerk-Extension passt danach nicht mehr, und `restartAfterSparkleUpdate = 0`
  heisst, die App startet sich **nicht** selbst neu
- ❌ Exit 2 → Tailscale-CLI nicht gefunden; die Station ist dann gar nicht pruefbar
- **Nicht verwechseln:** `--pruefen` meldet nur. Der scharfe Lauf ohne Flag **heilt** zuerst
  selbst (`tailscale up`, danach App-Neustart wie der Knopf «Relaunch Tailscale») und mailt
  nur, wenn die Heilung scheitert. Sendeweg beweisen: `--test-mail`

### 16. Git-Abgleich (Divergenz NAS / Station / GitHub)

Check 1 fragt, ob das NAS **gemountet** ist. Dieser Check fragt, ob die Repos noch
**denselben Stand** haben. Auch das sind zwei verschiedene Fragen: am 24.08.2026 liefen
NAS-Repo und GitHub sechs Stunden auseinander (26 Commits nur NAS, 51 nur GitHub), waehrend
Mount, Herzschlag und Stationsstatus durchgehend gruen waren.

```bash
bash /Volumes/daten/jans-ai-hub/scripts/git-divergenz.sh
```

- ✅ Exit 0 → NAS und Station deckungsgleich mit GitHub, keine Fehlversuche
- ⚠️ Exit 1 → Divergenz oder Fehlversuche. **Kein Sofort-Eingriff noetig:** beide
  Sync-Waechter haben seit dem 24.08. einen Merge-Rueckfall und heilen sich in der Regel
  im naechsten Takt selbst (NAS alle 15 Min, Station alle 5 Min). Erst wenn dieselbe
  Divergenz ueber mehrere Laeufe stehen bleibt, ist es ein Befund — dann meldet sie sich
  ohnehin ab dem dritten Fehlversuch selbst im Fristen-Register
- ⚠️ Zeile «ungesicherte Datei(en) im Arbeitsbaum» → normal direkt nach einem Lauf, der
  Auto-Sync holt sie. Bleibt sie ueber mehrere Checks stehen, schreibt etwas in den Klon,
  ohne dass der Sync greift
- ❌ Exit 2 → Synology per ssh nicht erreichbar oder kein SSD-Klon; dann ist der Check blind
- Hintergrund und Fallchronik: `rules/betrieb-chronik.md` 260824e und 260824f

## Output-Format

Gib einen kompakten Report aus:

```
🔵 JANS AI Hub — Heartbeat [DATUM UHRZEIT]

NAS-Mount:      ✅ /Volumes/daten erreichbar
Git-Status:     ✅ Clean (oder ⚠️ 3 uncommitted files)
M365-Connector: ✅ Connected as rj@raphaeljans.ch
Disk Space:     ✅ 47 GB frei (von 500 GB)
Sync-Tasks:     ✅ Keine offenen Tasks
Freigaben:      ✅ mac-mini 0 · macbook-pro 0 (keine > 24 h)
Symlinks:       ✅ skills / agents / commands OK
Sync-Health:    ✅ Wissens-Kette fliesst (0 Commit-Anfragen offen, NAS↔SSD gleichauf)
Grundkontext:   ✅ 95'536 Zeichen (~23'900 est. Tokens, Schwelle 100'000); Doctor vor 1 Tag
Task-Spiegel:   ✅ macbook-pro 31 + mac-mini 8 Tasks gespiegelt
Methoden:       ✅ kein neues Material (oder 🔔 2 Ordner neu → methoden-radar ausfuehren)

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
