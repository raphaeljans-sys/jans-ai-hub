# Rule: NAS ist die kanonische Quelle (Sync-Disziplin)

Der **NAS** (`/Volumes/daten/jans-ai-hub/`) ist die **einzige Wahrheit** fuer alle geteilten
Inhalte: `skills/`, `rules/`, `agents/`, `commands/`, `scripts/`, `templates/`, `docs/`,
`wissen/`, `CLAUDE.md`.

1. **Geteilte Inhalte NUR auf dem NAS-Pfad editieren** — nie im SSD-top-level
   (`~/Developer/jans-ai-hub/`) und nie in Worktrees. Die SSD-Ordner sind Lese-Spiegel
   (gleichen sich per `git pull` an).
2. **Claude liest** ueber die Symlinks `.claude/{skills,agents,commands} → NAS`.
3. **Nach jeder Aenderung**: NIE selbst `git` im NAS-Repo ueber den SMB-Mount ausfuehren
   (haengt uninterruptibel, kollidiert auf `.git/index.lock`). Stattdessen den **nativen
   Committer** ausloesen:
   `bash /Volumes/daten/jans-ai-hub/scripts/nas-commit-now.sh "<sprechende Message>"`
   — das committet+pusht auf der Synology (ext4, kein SMB) und zieht den SSD-Klon nach.
   Ohne Sofort-Bedarf reicht der 15-Min-Cron `nas-selfcommit.sh` (er sichert liegen
   gebliebene NAS-Edits von allein). So erreicht der Inhalt Backup und zweite Station.

## Warum

Frueher existierten drei divergente Kopien; der Auto-Sync sicherte die falsche. Reconcile
02.06.2026 (`1d566d0`). Genau eine Edit-Quelle = keine Drift.

## NIE

- Geteilte Inhalte im SSD-top-level oder Worktree editieren.
- **IRGENDEIN `git`-Schreibbefehl (commit/push/pull/rebase) ueber den SMB-Mount auf das
  NAS-`.git`** — nicht durch Claude, nicht durch die Loops, nicht als Cron. Solche Befehle
  haengen unter Last uninterruptibel und blockieren die `.git/index.lock` fuer alle (belegt
  25.07.2026 mehrfach). Der EINZIGE erlaubte NAS-Committer ist der **native** `nas-selfcommit.sh`
  (laeuft auf der Synology, ext4, alle 15 Min) — auf Zuruf via `nas-commit-now.sh` (ssh).
  Datei-Edits (Write/Edit) ueber SMB sind erlaubt; nur `git` gehoert nativ auf die Synology.

  ⚠ **Das gilt nur fuer SCHREIBENDE git-Befehle — lesende haengen ueber SMB ebenfalls.**
  Gemessen 29.07.2026: ein reines `git status --porcelain` gegen den Mount lief in den
  2-Minuten-Timeout, waehrend im Hintergrund ein `claude -p`-Lauf und der 15-Min-Committer
  aktiv waren; lesende Befehle treffen dieselbe `.git/index.lock` und dieselbe SMB-Latenz
  (`rules/betrieb-chronik.md` 260729, **nicht importiert**). Wer den Zustand des NAS-Repos
  braucht, fragt nativ per `ssh` — oder gar nicht und loest einfach `nas-commit-now.sh` aus.
  Der Querverweis steht hier, weil der Satz darueber isoliert gelesen den Umkehrschluss
  «lesendes git ueber SMB ist erlaubt» traegt und dieser Schluss bereits in einen Baustein
  gewandert ist (Synergie-Register SYN-61, 30.08.2026). Haengt ein Befehl doch einmal,
  NICHT wiederholen — jeder Versuch bindet einen weiteren uninterruptiblen Prozess.
  (Die fruehere pathspec-Commit-Mitigation aus Rule 260724 ist damit ueberholt.)
- `git push --force` gegen GitHub `main`.

## Geltungsbereich

Alle Sessions auf allen Stationen. Ergaenzt `git-auto-push.md` und `SKILL-CONTRACT.md`.
Hintergrund: Memory `project_sync_architektur` + `docs/sync-reconcile-plan.md`.
