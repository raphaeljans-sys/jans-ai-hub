# Sync-Reconcile-Plan — NAS als kanonische Quelle

**Erstellt:** 02.06.2026 · **Status:** Entwurf zur Freigabe · **Eingriff bisher:** keiner

## Ziel

Eine **Single Source of Truth** herstellen: der **NAS** (`/Volumes/daten/jans-ai-hub/`)
ist die Wahrheit fuer alle geteilten Inhalte (skills, rules, agents, commands, scripts,
templates, references). Die Divergenz der drei Kopien wird aufgeloest, der Auto-Sync
sichert kuenftig den NAS-Stand, und alles bleibt jederzeit reversibel.

## Ausgangslage (gemessen 02.06.2026)

| Ort | Repo | Rolle heute | Problem |
|---|---|---|---|
| NAS `/Volumes/daten/jans-ai-hub` | eigenes Git (main `fef84dd`) | **was Claude liest** (via Symlink) | 72 untracked Dateien; 2 Commits vor GitHub |
| SSD `~/Developer/jans-ai-hub` | eigenes Git (origin/main `37213a1`) | Auto-Sync alle 5 Min → GitHub | traegt **eigene, abweichende** top-level skills/rules/agents |
| GitHub `raphaeljans-sys/jans-ai-hub` | Remote (main) | Backup | 8 Commits vor NAS → Push-Konflikt |

**Kernfehler:** Der Auto-Sync (`scripts/git-auto-sync.sh`, launchd) sichert die
SSD-top-level-Kopie — **nicht** den NAS-Stand, den Claude editiert. Claude liest den NAS
ueber die Symlinks `~/Developer/jans-ai-hub/.claude/{skills,agents,commands} → NAS`.
Die SSD-top-level `skills/ rules/ agents/` werden von Claude gar **nicht** gelesen — sie
sind verwaiste Backup-Dubletten, die auseinandergedriftet sind.

---

## Plan in 7 Phasen (jede einzeln, reversibel)

### Phase 0 — Sicherheitsnetz (zuerst, Pflicht)
- NAS-Repo: `git branch backup/pre-reconcile-260602` (Snapshot der aktuellen main).
- SSD-Repo: `git branch backup/pre-reconcile-260602`.
- GitHub-main-SHA notieren: `37213a1` (Rueckkehrpunkt).
- Datei-Backup ausserhalb Git: `tar czf ~/jans-sync-backup-260602.tgz` von NAS
  `skills rules agents commands scripts templates references` **und** von den
  SSD-top-level `skills rules agents`.
- **Rollback dieser Phase:** nichts veraendert, nur Snapshots erstellt.

### Phase 1 — NAS ↔ GitHub zusammenfuehren (Divergenz aufloesen)
- Auf NAS: `git fetch github`.
- `git merge github/main` (KEIN rebase, KEIN force) → fuehrt die 8 GitHub-Commits und
  die 2 NAS-Commits zusammen.
- Konflikte: bei geteilten Inhalten (skills/rules) zugunsten des **NAS-Standes** aufloesen
  (NAS = Wahrheit), nicht-kollidierende GitHub-Aenderungen aber uebernehmen.
- Ergebnis: NAS-main enthaelt beide Historien, Inhalt = NAS-Wahrheit. **Noch kein Push.**
- **Rollback:** `git merge --abort` bzw. `git reset --hard backup/pre-reconcile-260602`.

### Phase 2 — NAS-Inhalt vollstaendig versionieren
- Die 72 untracked NAS-Dateien triagieren: geteilte Inhalte (rules/*.md, commands/*,
  agents/*, skills/*, scripts/*, das heutige Harness-Paket) **scoped** stagen + committen.
  Stations-lokales/Muell (output/, *.log, .DS_Store) in `.gitignore` aufnehmen, nicht committen.
- 1 sauberer Commit: „chore(sync): NAS-Inhalt vollstaendig versionieren (kanonische Quelle)".
- **Rollback:** `git reset --soft backup/pre-reconcile-260602` (Commits zuruecknehmen, Dateien bleiben).

### Phase 3 — SSD-Dubletten entfernen (Claude liest sie ohnehin nicht)
- Im SSD-Repo die **getrackten** top-level Dubletten aus der Versionierung nehmen:
  `git rm -r --cached skills rules agents` (Dateien zunaechst auf Platte lassen).
- Nach Verifikation (Phase 6) die physischen SSD-Ordner `skills/ rules/ agents/` loeschen
  oder durch Symlinks auf den NAS ersetzen — konsistent mit `.claude/skills → NAS`.
- `.gitignore` ergaenzen, damit diese Pfade nie wieder als Dublette getrackt werden.
- CLAUDE.md **bleibt** auf der SSD (wird vom Projektverzeichnis gelesen, importiert NAS-Rules
  per `@`-Pfad) — ein einzelnes File, keine Dublette.
- **Rollback:** `git restore --staged` + Backup-Tar zurueckspielen.

### Phase 4 — Genau ein Auto-Sync-Writer
- Entscheidung: **NAS-Repo** pusht die geteilten Inhalte nach GitHub.
- `git-auto-sync.sh` so anpassen/duplizieren, dass es auf das **NAS-Repo** zielt
  (oder ein zweites launchd-Job fuer den NAS-Pfad). Der SSD-Auto-Sync sichert dann nur
  noch stations-lokale Dateien (CLAUDE.md, .claude/settings.json, package.json, scripts/
  sofern SSD-spezifisch) — keine geteilten Inhalte mehr.
- Divergenz-Wachhund: Script meldet, wenn NAS- und GitHub-main auseinanderlaufen, statt
  still die falsche Kopie zu sichern.
- **Rollback:** alte launchd-plist / Script-Version aus Backup.

### Phase 5 — Worktree-Wildwuchs aufraeumen
- `git worktree list` sichten → `git worktree prune`.
- Verwaiste `claude/*`-Branches (alle 30–40 Commits hinter main) lokal und remote loeschen,
  ausser aktiv genutzten. Remote-Backup-Branches (`backup/...`) bewusst behalten.
- **Rollback:** Branches sind via reflog/Backup-Branch wiederherstellbar.

### Phase 6 — Push & Verifikation
- NAS-main nach GitHub pushen (jetzt fast-forward-faehig dank Phase 1).
- Verifizieren: NAS gemountet → Symlinks loesen auf → Claude liest korrekten Stand;
  `session-insights.sh` laeuft; `@`-Importe in CLAUDE.md greifen; GitHub-main = NAS-main.
- Auf der zweiten Station (Mac Mini) Gegenprobe (liest denselben NAS → automatisch aktuell).

### Phase 7 — Als verbindliche Rule verankern
- `rules/sync-kanonische-quelle.md` anlegen: NAS ist kanonisch fuer geteilte Inhalte;
  nur der NAS-Pfad pusht geteilte Inhalte; SSD haelt nur Stations-Config + CLAUDE.md;
  niemals getrackte Dubletten geteilter Inhalte anlegen.
- In `rules/README.md` registrieren, `@`-Import in CLAUDE.md ergaenzen.
- Eintrag in `auto-verbesserungen.md` + Protokoll in `masterclass/FORTSCHRITT.md` (Harness-Review).

---

## Offene Entscheide vor Start
1. **SSD-Dubletten** nach Phase 3: physisch loeschen oder durch Symlinks ersetzen? (Empfehlung: loeschen — Claude liest sie nicht.)
2. **Auto-Sync-Mechanik** Phase 4: zweiter launchd-Job fuer NAS, oder ein Script das beide Pfade kennt? (Empfehlung: dedizierter NAS-Job, klar getrennt.)
3. Reihenfolge-Risiko: Phasen 1–2 (NAS↔GitHub) sollten **vor** Phase 3 (SSD-Abbau) laufen, damit jederzeit eine vollstaendige Kopie existiert.

## Reversibilitaet — Gesamt-Rollback
Solange Phase 0 ausgefuehrt wurde, stellt `git reset --hard backup/pre-reconcile-260602`
(je Repo) plus das Backup-Tar jeden Vorzustand wieder her. Kein Schritt nutzt `--force`
gegen GitHub, bevor Phase 1 die Historien sauber vereint hat.
