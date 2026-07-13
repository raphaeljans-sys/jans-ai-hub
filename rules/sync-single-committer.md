# Regel: Single-Committer fuer das NAS-Repo (kein rohes SMB-Git)

> **STATUS 2026-07-13 (Spec-Training Lauf 9): durch die Praxis ueberholt, NICHT aktiv geladen.**
> Diese Regel ist nie per @-Import in CLAUDE.md gelandet (Befund Spec-Training Lauf 8,
> 13.07.2026) — und die Realitaet hat sich seither anders entwickelt, als der Text unten
> annimmt. Belegte Fakten (`git log`/`git config` auf dem NAS-Repo, `sync-tasks/log/
> selfcommit-202607.log`, Stand 13.07.2026):
> 1. Der in "Verwandt" unten als *Backlog* bezeichnete **NAS-native Git-Cron** (`scripts/
>    nas-selfcommit.sh`, DSM-Cron alle 15 Min, laeuft direkt auf ext4 der Synology) ist
>    **live und aktiv** — bestaetigt auch in Memory `project_systemaudit_260610`.
> 2. Trotzdem committen praktisch **alle Trainings-Loops direkt und unrestriktiert** ueber
>    den SMB-Mount (`git add`/`git commit` von MacBook Pro UND Mac Mini aus, mit
>    sprechenden Commit-Messages) — genau das, was diese Regel verbietet. `nas-git-commit.sh`
>    (Sync-Task-Umweg fuer Nicht-Mac-Mini-Stationen) wird **nicht** genutzt.
> 3. Das Log zeigt **keine Korruption** seit der DSM-Migration — nur vereinzelte, vom
>    Selfcommit-Skript sauber abgefangene `index.lock aktiv — skip`-Meldungen (transiente
>    Kollisionen, kein Fehler). Der 15-Minuten-Cron laeuft als Sicherheitsnetz daneben und
>    holt liegen gebliebene Aenderungen sowie den Pull/Push nach.
> **Praktische Fazit:** Der befuerchtete SMB-Korruptionsfall (index.lock durch paralleles
> Git, real 07.06.2026) tritt seit der DSM-Migration nicht mehr auf; die aktive Regel
> `git-auto-push.md` (direkt committen + pushen) beschreibt den tatsaechlichen, seit Tagen
> stabilen Betrieb korrekter als der Text unten. Diese Datei bleibt als **historischer
> Kontext** stehen (Stopgap-Gedanke, Ursprungsvorfall), wird aber nicht importiert. Raphael
> kann bei Bedarf explizit reaktivieren — dann muesste zuerst der Mac-Mini-Only-Workflow
> unten wieder real durchgesetzt werden (aktuell laeuft er nicht).

## Hintergrund

Das NAS-Repo `/Volumes/daten/jans-ai-hub` liegt ueber **SMB**. Fuehren mehrere Stationen
gleichzeitig Git-Operationen darauf aus (commit / rebase / push), beherrscht SMB Gits Lock-Semantik
nicht zuverlaessig: Folge sind `index.lock`-Korruption und haengende `rebase --autostash`-Zustaende
(real aufgetreten 070626). Diese Regel ist der Stopgap bis zur NAS-nativen Git-Loesung
(bare Repo ueber SSH, siehe Vorschlag `30 JANS AI HUB OUTPUT/infrastruktur/`).

## Regel

1. **Niemals rohes Git direkt auf `/Volumes/daten/jans-ai-hub` ausfuehren** (kein manuelles
   `git commit` / `git rebase` / `git pull` / `git push` ueber den SMB-Pfad, kein Cron-Loop darauf).
2. **Genau eine designierte Station committet/pusht das NAS-Repo** — der **Mac Mini** (always-on).
   Sie traegt den Marker `~/.jans-git-committer`.
3. Alle Git-Schreiboperationen aufs NAS-Repo laufen ausschliesslich ueber den abgesicherten Pfad
   **`scripts/nas-git-commit.sh`**:
   - **single-flight** (atomarer Lock) — nie zwei Laeufe gleichzeitig,
   - **Sauberkeits-Guard** — bricht ab bei `index.lock` / laufendem Rebase / Merge,
   - **Single-Committer** — nur die markierte Station committet; andere Stationen legen automatisch
     einen **Sync-Task** unter `sync-tasks/mac-mini/` ab, den der Mac Mini serialisiert abarbeitet.

## Konkrete Anweisung fuer Claude

- Aenderungen an geteilten Inhalten (skills/agents/rules/commands/CLAUDE.md) werden wie gewohnt
  **im NAS-Arbeitsbaum editiert** (sofort live via Symlink) — das ist nur ein Datei-Edit, kein Git.
- Fuer das **Backup/Commit** dieser Aenderungen NICHT roh `git commit` auf dem NAS aufrufen, sondern:
  ```
  bash /Volumes/daten/jans-ai-hub/scripts/nas-git-commit.sh "<message>" <pfad ...>
  ```
  Auf einer Nicht-Committer-Station legt das automatisch einen Sync-Task ab (kein Commit) — das ist
  korrekt, nicht ein Fehler. Der Mac Mini committet anschliessend serialisiert.
- Stoesst du auf ein **haengendes Rebase / index.lock** auf dem NAS-Repo: **nicht selbst aufloesen**
  (fremde in-flight-Arbeit). Melden und die Bereinigung der Committer-Station / dem Benutzer
  ueberlassen.

## Einrichtung (einmalig)

- Auf dem Mac Mini: `touch ~/.jans-git-committer` (macht ihn zum designierten Committer).
- Der per launchd laufende `scripts/git-auto-sync.sh` (SSD-Repo → GitHub) ist davon unberuehrt; er
  hat neu ebenfalls einen single-flight-Lock und ueberspringt laufende Rebases.

## Verwandt

- `git-auto-push.md` (Push nach Commit), `sync-kanonische-quelle.md` (NAS kanonisch).
- Ziel-Architektur (loest die Ursache): NAS-natives bare Repo ueber SSH —
  `30 JANS AI HUB OUTPUT/infrastruktur/260607_Vorschlag_Git-Sync_NAS-nativ.md`.
