# Systemaudit JANS AI Hub — 10.06.2026

Vollaudit der Systemarchitektur (Mac Mini, MacBook Pro, NAS DS918+, GitHub) mit
Fokus: Synchronisierung der Lernprozesse ueber alle Geraete + Skalierung auf
5 weitere Arbeitsstationen. Baut auf `docs/sync-reconcile-plan.md` (260602) auf.

## Architektur-Bewertung (Ist)

Die Grundarchitektur ist **richtig gewaehlt und traegt die Skalierung**:

| Schicht | Mechanik | Zustand |
|---|---|---|
| Faehigkeiten (skills/agents/commands/rules) | NAS + Symlink, live auf allen Stationen | ✅ solide |
| Wissen (wissen/, docs/) | NAS kanonisch → Git → SSD-Spiegel | ⚠️ Kette war unterbrochen (s. Befund 1) |
| Pendenzen pro Geraet | sync-tasks/<station> + launchd-Runner 30 Min | ✅ solide |
| Rechenzentrum | Mac Mini always-on (Dispatch, prompt-Tasks, Trainings) | ✅ solide |
| Backup | GitHub (nur was committet ist!) | ⚠️ haengt an Befund 1 |
| Lern-Loops | 5 Scheduled Tasks (taeglich/2-taegig) + wissenscheck monatlich | ✅ solide |

## Befunde

### 1. KRITISCH — Commit-Anfragen hatten keinen Konsumenten (behoben)
`nas-git-commit.sh` legt auf Nicht-Committer-Stationen eine `commit-*.task` ab,
aber nichts hat sie abgearbeitet: 4 Anfragen seit 08.06. offen, **33 Dateien auf
dem NAS uncommittet** (Twin-Agenten-Familie, Trainings-Wissen immobilienbewertung/
baurecht). Folge: kein GitHub-Backup dieses Wissens, SSD-Spiegel veraltet, bei
NAS-Ausfall Wissensverlust.
**Fix:** `sync-task-run.sh` v2 — die Committer-Station (Mac Mini) konsumiert
Commit-Anfragen automatisch bei jedem 30-Min-Lauf. Einmaliger Bootstrap-Task
holt den Rueckstau auf. **Wissens-Latenz neu: max. ~35 Min** von Entstehung
(beliebige Station) bis aktuell auf allen Stationen (30 Min Commit + 5 Min Pull).

### 2. MITTEL — Stations-Erkennung war auf 2 Geraete hartkodiert (behoben)
Runner erkannte nur mac-mini/macbook-pro via Hardware-Modell. **Fix:** Identitaet
aus `~/.jans-station` (Prioritaet), Hardware-Fallback bleibt; Queue der eigenen
Station wird automatisch angelegt.

### 3. MITTEL — Kein Ein-Befehl-Onboarding (behoben)
Setup war auf setup-nas-skills.sh + 3 install-Scripts + Skill workstation-setup
verteilt. **Fix:** `scripts/neue-station.sh <name>` — ein Befehl: Repo-Clone
(GitHub, Fallback NAS), Symlinks, alle launchd-Jobs, Stations-Identitaet, Queue,
Eintrag in neuem Register `docs/stationen.md`, Checkliste der manuellen Schritte
(Tailscale, M365-Zertifikat, SSH-Key, .env).

### 4. KLEIN — Sync-Gesundheit wurde nirgends ueberwacht (behoben)
**Fix:** Heartbeat-Skill (laeuft werktags 07:57 als Scheduled Task) prueft neu
Check 7 «Sync-Health»: Alter der aeltesten Commit-Anfrage, NAS-dirty-count,
HEAD-Abgleich NAS↔SSD, Runner-Status. Stockt die Kette, meldet es der
Morgen-Heartbeat am Folgetag.

### 5. Inhaber-Entscheide (eingeholt 10.06.2026)
- **NAS-Backup:** laeuft bereits (Hyper Backup/Snapshots vorhanden) → kein Handlungsbedarf. ✅
- **Git nativ auf der Synology:** ENTSCHIEDEN: angehen. Umbauplan liegt vor:
  `docs/plan-dsm-git.md` (selbst-committendes NAS via DSM Task Scheduler,
  Runner v2 bleibt Fallback). Braucht ~10 Min DSM-Zugang mit Raphael.
- **Mitarbeiter-Stationen:** voller Zugriff fuer alle (Entscheid Raphael) —
  neue-station.sh deckt das ab, kein Berechtigungsmodell noetig.
- **Claude-Konten:** zentral ueber Raphaels Account auf allen Stationen.
  Hinweis: gemeinsame Rate-Limits und geteilte Memory — bei Engpaessen auf
  Team-Plan wechseln.
- **git-auto-sync auf 7 Stationen:** Auto-Commit-Frequenz vom SSD-Spiegel kann
  Merge-Rauschen erzeugen; bei Skalierung beobachten, ggf. SSD-Spiegel auf
  pull-only stellen (Stationen aendern Inhalte ohnehin nur auf dem NAS).

## Ziel-Datenfluss (Soll, ab heute aktiv)

```
Beliebige Station editiert NAS (kanonisch)
        │ nas-git-commit.sh → commit-*.task
        ▼
Mac Mini Runner (30 Min): commit + push ──► GitHub (Backup)
                                               │
                              git-auto-sync (5 Min) auf jeder Station
                                               ▼
                                   SSD-Spiegel ueberall aktuell
```

Skills/Agents/Commands/Rules brauchen diese Kette nicht — sie sind via Symlink
**sofort** ueberall aktuell. Die Kette sichert Wissen + Versionierung.

## Naechster Audit

Kompoundierend: Naechstes Systemaudit baut auf diesem auf (Rule 260610 in
auto-verbesserungen.md). Ausloeser: vor Inbetriebnahme der ersten neuen
Arbeitsstation, spaetestens beim Masterclass-Harness-Review.
