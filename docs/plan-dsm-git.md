# Umbauplan: Git nativ auf der Synology (DSM) — Selbst-committendes NAS

> **UMGESETZT am 10.06.2026, ~03:30 Uhr.** Git 2.39.1 via Paket-Zentrum, Deploy Key
> «synology-jans-hub» (Read/write) auf GitHub, Cron alle 15 Min als raphaeljans,
> erster Push verifiziert (NAS=GitHub=SSD auf 3dd00c4). Besonderheiten der
> Umsetzung: Remote heisst `github` (nicht origin, Script erkennt dynamisch);
> Synology-`@eaDir`-Ordner korrumpieren .git → Script bereinigt jeden Lauf,
> `.gitignore` um `@eaDir/` ergaenzt. Runner v2 auf dem Mac Mini bleibt als
> Fallback installiert. Log: `sync-tasks/log/selfcommit-JJJJMM.log`.

Entscheid Raphael 10.06.2026 (Systemaudit): JA, angehen.
Ziel: Das NAS committet und pusht sein eigenes Repo **selbst** — nativ auf ext4,
ohne SMB (keine index.lock-Gefahr). Der Single-Committer-Umweg ueber den Mac Mini
(nas-git-commit.sh + commit-*.task) wird abgeloest; Runner v2 bleibt als Fallback.

## Warum das die Endloesung ist

Heute: Stationen editieren das NAS via SMB, der Mac Mini committet stellvertretend
(30-Min-Loop). Funktioniert, aber: Latenz, Abhaengigkeit vom Mini, Git ueber SMB
bleibt grundsaetzlich heikel. Mit DSM-Git laeuft Git DIREKT auf der Synology —
auf dem nativen Dateisystem, vom NAS selbst getaktet. Latenz sinkt auf den
DSM-Task-Intervall (15 Min), und die Kette hat ein Glied weniger.

## Ziel-Datenfluss

```
Beliebige Station editiert /Volumes/daten/jans-ai-hub (SMB, wie bisher)
        ▼
Synology DSM Task Scheduler (15 Min, nativ auf ext4):
  git add -A → commit → push ───► GitHub (Backup)
                                     │
                       git-auto-sync (5 Min) je Station
                                     ▼
                          SSD-Spiegel ueberall aktuell
```

## Schritte

### A. Auf der Synology (DSM-Oberflaeche, ~10 Min, zusammen mit Raphael)
1. **SSH aktivieren:** Systemsteuerung → Terminal & SNMP → SSH-Dienst aktivieren (Port 22, nur LAN/Tailscale).
2. **Git installieren:** Paket-Zentrum → «Git Server» installieren (bringt das git-Binary mit; der eigentliche «Server»-Teil wird nicht gebraucht).
3. **Pruefen per SSH:** `ssh raphaeljans@192.168.1.10` → `git --version`.

### B. GitHub-Zugang fuer die Synology
4. SSH-Key auf der Synology erzeugen: `ssh-keygen -t ed25519 -C "synology-jans-hub"` (ohne Passphrase, Pfad Standard).
5. Public Key als **Deploy Key mit Schreibrecht** im GitHub-Repo hinterlegen (Repo → Settings → Deploy keys).
6. `~/.ssh/config` auf der Synology: GitHub via Port 443 (`Host github.com` → `HostName ssh.github.com`, `Port 443`) — gleiche Firewall-Situation wie die Stationen.
7. Test: `ssh -T git@github.com` → "successfully authenticated".

### C. Selbst-Commit-Script auf dem NAS
8. Script `nas-selfcommit.sh` nach `/volume1/daten/jans-ai-hub/scripts/` legen (Vorlage unten) — gleiche Guards wie nas-git-commit.sh: kein Lauf bei index.lock/Rebase/Merge, pull --rebase vor push.
9. **DSM Task Scheduler:** Aufgabe «JANS Hub Selfcommit», Benutzer raphaeljans (nicht root), alle 15 Min: `bash /volume1/daten/jans-ai-hub/scripts/nas-selfcommit.sh`.
10. Zwei Zyklen beobachten: `git log` + GitHub pruefen.

### D. Stationen umstellen (nach erfolgreichem C)
11. Runner: Commit-Task-Konsum drosseln — bleibt als Fallback, greift nur noch, wenn der NAS-Selfcommit >24 h nichts gepusht hat (Heartbeat meldet es).
12. `nas-git-commit.sh`: Hinweis einbauen, dass der Normalweg jetzt der NAS-Selfcommit ist; Station legt keine commit-*.task mehr ab (oder nur noch als Beleg).
13. Heartbeat Check 7 anpassen: statt Queue-Alter neu «letzter Selfcommit-Push < 1 h».
14. Doku nachfuehren: CLAUDE.md (Sync-Sektion), sync-tasks/README.md, Memory.

### Rollback
DSM-Task deaktivieren → Runner v2 uebernimmt automatisch wieder (Mechanik bleibt installiert).

## Vorlage nas-selfcommit.sh (Kern)

```bash
#!/bin/bash
set -uo pipefail
REPO="/volume1/daten/jans-ai-hub"
cd "$REPO" || exit 1
[ -f .git/index.lock ] || [ -d .git/rebase-merge ] || [ -f .git/MERGE_HEAD ] && exit 0
git add -A
git diff --cached --quiet || git commit -m "nas-selfcommit: $(date '+%Y-%m-%d %H:%M')"
git pull --rebase --autostash 2>/dev/null || { git rebase --abort 2>/dev/null; exit 1; }
git push 2>/dev/null
```

(Definitive Fassung mit Logging entsteht bei der Umsetzung; .gitignore des Repos
greift unveraendert — output/, secrets/, sync-tasks/ bleiben aussen vor.)

## Was ich von Raphael brauche

Einen kurzen gemeinsamen Moment fuer Schritte A1–A3 (DSM-Anmeldung) — den Rest
bereite ich vor und fuehre ihn per Anleitung/SSH aus.
