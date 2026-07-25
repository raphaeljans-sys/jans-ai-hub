# Regel: Git Auto-Push nach Commit

## Geltungsbereich

Gilt für alle Git-Repositories im JANS AI Hub-Kontext, insbesondere:
- `~/Developer/jans-ai-hub` (lokales Repo)
- `/Volumes/daten/jans-ai-hub` (NAS-Repo)

## Regel

**Nach jedem `git commit` immer direkt `git push` zum entsprechenden Remote ausführen — ohne den Benutzer zu fragen.**

Hintergrund: GitHub dient als Backup-Layer. Wenn ein Commit nicht gepusht wird, ist die Änderung nur lokal vorhanden — bei Datenverlust auf der Station ist sie weg. Der Benutzer möchte, dass jeder Commit sofort gesichert wird.

## Konkrete Anweisung

Wenn der Benutzer einen Commit-Auftrag gibt (z. B. "commit das", "commit den Fix", "speichere das"), führe als ein Workflow durch:

1. `git add <spezifische Dateien>` (keine `-A`, keine `.`)
2. `git commit -m "..."` (mit Co-Authored-By Trailer)
3. `git push <remote> <branch>` (typisch `git push github main` auf dem NAS-Repo)
4. Falls Push fehlschlägt (z. B. wegen divergenter History): `git pull --rebase`, Konflikte lösen, dann nochmal pushen
5. Erst dann dem Benutzer berichten — mit Commit-Hash + Push-Bestätigung

## Ausnahmen

Nicht automatisch pushen wenn:
- Der Benutzer explizit "nur committen, nicht pushen" sagt
- Es sich um einen Force-Push (`--force`, `--force-with-lease`) handeln würde — vorher nachfragen
- Der Push auf `main` eines fremden Repos gehen würde (Sicherheits-Check)

## Sonderfall: divergente Histories

Wenn `git push` mit "rejected (fetch first)" fehlschlägt:
- `git pull --rebase <remote> <branch>` ausführen
- Bei Konflikten: lösen und `git rebase --continue`
- Falls unstaged-Änderungen blockieren: vorher `git stash push -m "wip"` (nur tracked), nach Push `git stash pop`
- Niemals `--force` ohne explizite User-Freigabe

## Verifikation

Nach dem Push immer kurz bestätigen, dass das Backup auf GitHub angekommen ist (Push-Output enthält Hash-Range), bevor "Erledigt" gemeldet wird.
