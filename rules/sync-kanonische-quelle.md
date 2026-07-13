# Rule: NAS ist die kanonische Quelle (Sync-Disziplin)

## Regel

Der **NAS** (`/Volumes/daten/jans-ai-hub/`) ist die **einzige Wahrheit** fuer alle
geteilten Inhalte: `skills/`, `rules/`, `agents/`, `commands/`, `scripts/`,
`templates/`, `docs/`, `CLAUDE.md`.

1. **Geteilte Inhalte werden NUR auf dem NAS-Pfad editiert** — nie in den top-level
   `skills/ rules/ agents/`-Ordnern des SSD-Repos (`~/Developer/jans-ai-hub/`) und nie
   in einem `.claude/worktrees/`-Worktree. Die SSD-Ordner sind ein **Lese-Spiegel**,
   der sich per `git pull` automatisch an den NAS angleicht.
2. **Claude liest** geteilte Inhalte ueber die Symlinks
   `~/Developer/jans-ai-hub/.claude/{skills,agents,commands} → NAS`.
3. **Nach jeder Aenderung an NAS-Inhalten**: das **NAS-Repo** committen und nach GitHub
   pushen (`cd /Volumes/daten/jans-ai-hub && git add … && git commit && git push github main`).
   So erreicht der Inhalt das GitHub-Backup und die zweite Station (die per Pull konvergiert).

## Warum

- Frueher existierten drei divergente Kopien (NAS, SSD-top-level, GitHub); der Auto-Sync
  sicherte die **falsche** (SSD-)Kopie, waehrend Claude den NAS editierte. Reconcile 02.06.2026
  hat sie auf einen Stand zusammengefuehrt (`1d566d0`). Diese Rule haelt sie zusammen.
- Genau **eine** Edit-Quelle = keine Drift. Solange Inhalte nur auf dem NAS geaendert werden,
  bleiben SSD und GitHub blosse Spiegel, die nie auseinanderlaufen.

## Sync-Mechanik (verbindlich)

| Was | Wo editiert | Wie es nach GitHub kommt | Wie die andere Station es bekommt |
|---|---|---|---|
| Geteilte Inhalte (skills/rules/agents/…) | **NAS** | NAS-Repo commit + push (durch Claude, Rule `git-auto-push.md`) | SSD-Auto-Sync `git pull` (FF) |
| Stations-Config (`.claude/settings.local.json`) | lokal je Station | gar nicht (gitignored) | — |

## NIE

- Geteilte Inhalte im SSD-top-level oder in einem Worktree editieren → erzeugt Drift.
- Einen automatischen Git-Job (launchd/cron) **ueber den SMB-Mount** auf das NAS-`.git`
  laufen lassen. Git-ueber-SMB ist langsam und erzeugt `index.lock`-Kollisionen/Index-Korruption
  (am 02.06.2026 live aufgetreten). NAS-Inhalte werden **durch Claudes commit+push** gesichert,
  nicht durch einen SMB-Hintergrundjob.
- `git push --force` gegen GitHub `main`.

## Bekannte Luecke / spaeter

Manuelle NAS-Edits **ausserhalb** von Claude werden erst beim naechsten Push gesichert.

**Update 2026-07-13 (Spec-Training Lauf 9):** die hier als Backlog gefuehrte Loesung ist
**bereits umgesetzt** — `scripts/nas-selfcommit.sh` laeuft nativ auf der Synology (DSM-Cron,
alle 15 Min, ext4 statt SMB) und sichert liegen gebliebene NAS-Edits automatisch, inkl.
Pull/Push. Er ergaenzt (ersetzt nicht) Claudes direkten Commit+Push nach Aenderungen — beide
laufen parallel als Sicherheitsnetz. Damit ist auch das Verbot "kein automatischer Git-Job
ueber SMB" in der NIE-Liste oben praezise zu lesen als *kein Job ueber den SMB-Mount*; der
DSM-Cron laeuft nicht ueber SMB, sondern lokal auf dem NAS-Dateisystem — kein Widerspruch.
Details/Belege: `rules/sync-single-committer.md` (Status-Banner), Memory
`project_systemaudit_260610`.

## Geltungsbereich

Alle Sessions auf allen Stationen. Ergaenzt `git-auto-push.md` (Push nach Commit) und
die Skill-`Output-Ablage`-Vertraege (`SKILL-CONTRACT.md`). Hintergrund: Memory
`project_sync_architektur` + `docs/sync-reconcile-plan.md`.
