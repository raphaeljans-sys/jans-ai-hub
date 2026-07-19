# Rule: NAS ist die kanonische Quelle (Sync-Disziplin)

Der **NAS** (`/Volumes/daten/jans-ai-hub/`) ist die **einzige Wahrheit** fuer alle geteilten
Inhalte: `skills/`, `rules/`, `agents/`, `commands/`, `scripts/`, `templates/`, `docs/`,
`wissen/`, `CLAUDE.md`.

1. **Geteilte Inhalte NUR auf dem NAS-Pfad editieren** — nie im SSD-top-level
   (`~/Developer/jans-ai-hub/`) und nie in Worktrees. Die SSD-Ordner sind Lese-Spiegel
   (gleichen sich per `git pull` an).
2. **Claude liest** ueber die Symlinks `.claude/{skills,agents,commands} → NAS`.
3. **Nach jeder Aenderung**: NAS-Repo committen und nach GitHub pushen
   (`cd /Volumes/daten/jans-ai-hub && git add … && git commit && git push github main`).
   So erreicht der Inhalt Backup und zweite Station.

## Warum

Frueher existierten drei divergente Kopien; der Auto-Sync sicherte die falsche. Reconcile
02.06.2026 (`1d566d0`). Genau eine Edit-Quelle = keine Drift.

## NIE

- Geteilte Inhalte im SSD-top-level oder Worktree editieren.
- Einen automatischen Git-Job **ueber den SMB-Mount** auf das NAS-`.git` laufen lassen
  (index.lock-Kollisionen). Praezisierung: der DSM-Cron `scripts/nas-selfcommit.sh` laeuft
  seit 07/2026 **nativ auf der Synology** (ext4, alle 15 Min) und ist erlaubt — er sichert
  liegen gebliebene NAS-Edits automatisch und ergaenzt Claudes direkten Commit+Push.
- `git push --force` gegen GitHub `main`.

## Geltungsbereich

Alle Sessions auf allen Stationen. Ergaenzt `git-auto-push.md` und `SKILL-CONTRACT.md`.
Hintergrund: Memory `project_sync_architektur` + `docs/sync-reconcile-plan.md`.
