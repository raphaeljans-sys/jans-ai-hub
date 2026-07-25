# Runbook — Trainings-Scheduled-Tasks: Verteilung auf beide Stationen

> **UEBERHOLT-HINWEIS (12.07.2026, Rule auto-verbesserungen 260712):** Die urspruengliche
> Zentralisierung «alles auf den Mac Mini» ist SUPERSEDIERT. Das MacBook Pro ist inzwischen
> Always-On (disablesleep) und Raphael hat die INTENSIVPHASE angeordnet (Trainings auch
> tagsueber + Wochenende, beide Stationen arbeiten). Es gilt die Zwei-Stationen-Arbeitsteilung:
>
> | Station | Loops |
> |---|---|
> | **MacBook Pro** | `baurecht-buch-training`, `twin-mail-training`, `twin-fidelity-review`, `immobewertung-training`, `spec-training`, `normen-training-nacht` (SIA+VKF), `wissens-chef` |
> | **Mac Mini** | `energie-training`, `planungsgrundlagen-training`, `synobsis-batch-nacht`, `normen-training-mini` (DIN+VSS+RAL) |
>
> Kein Loop laeuft doppelt auf beiden Stationen (Duplikate auf der jeweils anderen Station
> deaktivieren, nicht loeschen). TEIL A/B unten nur noch als historische Referenz.

**Zweck (historisch, Stand 08.06.2026):** Die kompoundierenden Wissens-Trainings-Loops sollen **nur auf dem Mac Mini**
laufen (Always-On), nicht auf dem MacBook Pro. Das MacBook schlaeft/klappt zu; feuert der
Scheduler beim Aufwachen, sind NAS-SMB und OneDrive-CloudStorage noch nicht oben → die App
meldet «Geplante Aufgabe … konnte nicht gestartet werden». Genau diese Toasts verschwinden,
wenn die Trainings-Tasks auf dem MacBook deaktiviert sind.

**Prinzip (analog zur Dispatch-Host-Weiche):** Der Mac Mini ist der designierte
Endpunkt fuer alles Unbeaufsichtigte. Die Strecke steht dann nicht still, wenn das MacBook
unterwegs ist. Scheduled Tasks liegen lokal pro Station in `~/.claude/scheduled-tasks/` —
darum muss die Verteilung pro Station gesetzt werden, nicht zentral.

**Bedienung:** Auf dem Mac Mini Claude Code starten und sagen:
«Lies `docs/RUNBOOK-trainings-tasks.md` und mach es so.» — dann TEIL A ausfuehren.
TEIL B wird auf dem MacBook Pro ausgefuehrt (oder ist dort bereits erledigt).

---

## Kanonische Trainings-Task-Liste (6 Loops)

| taskId | Takt | Cron | Zweck |
|---|---|---|---|
| `baurecht-buch-training` | taeglich | `30 7 * * *` | Buch «Zuercher Planungs- und Baurecht Bd 1+2» in KB `wissen/baurecht` |
| `immobewertung-training` | alle 2 Tage | `0 7 */2 * *` | Wuest-Curriculum in KB `wissen/immobilienbewertung` |
| `planungsgrundlagen-training` | alle 2 Tage | (auf Mini gesetzt) | PL-Domaenen + Connector `geo-zh.mjs`, KB `wissen/planungsgrundlagen` |
| `energie-training` | taeglich | (auf Mini gesetzt) | PL-04-PDF → Destillate + BAUHERREN-FAQ, KB `wissen/energie` |
| `twin-mail-training` | taeglich | `42 6 * * *` | Mail-Korpus destillieren in KB `wissen/twin` (digitaler Zwilling) |
| `twin-fidelity-review` | alle 2 Tage | `12 6 */2 * *` | Fidelity-Selbsttest + `jans-dna.md` neu kompilieren |

**NICHT betroffen** (bleiben wie gehabt, pro Station sinnvoll):
- `heartbeat-daily` — System-Health-Check, stationslokal, lightweight → auf beiden Stationen OK.
- `wissenscheck-monatlich` — monatlicher KB-Audit. Optional auf den Mini beschraenken
  (1×/Monat, niedrige Last); kein Muss.
- `masterclass-woche1` — Einmal-Task, bereits deaktiviert.

---

## TEIL A — auf dem MAC MINI ausfuehren

Ziel: Alle 6 Trainings-Loops sind hier **vorhanden und aktiviert**.

1. **Station pruefen:** `hostname` muss `Macmini` (bzw. den Mac-Mini-Namen) zeigen.
   Wenn es `Macbookpro.local` zeigt → STOPP, das ist die falsche Station, hier nur TEIL B.
2. **Bestand listen:** Scheduled Tasks auflisten (`list_scheduled_tasks`).
3. **Soll/Ist abgleichen** gegen die kanonische Liste oben:
   - Jede der 6 Tasks, die existiert: sicherstellen `enabled: true`
     (sonst `update_scheduled_task` mit enabled true).
   - Fehlt eine Task auf dem Mini: SKILL-Definition von einer anderen Station holen
     (`~/.claude/scheduled-tasks/<taskId>/SKILL.md`) bzw. aus der jeweiligen KB unter
     `wissen/<domaene>/training/PROGRAMM.md` neu anlegen, mit dem Cron aus der Tabelle.
4. **Crons pruefen:** Gestaffelt am fruehen Morgen, damit nicht alle gleichzeitig feuern
   (06:12 / 06:42 / 07:00 / 07:30 … bestehende Werte beibehalten, nicht ohne Grund aendern).
5. **Voraussetzungen am Mini:** NAS `/Volumes/daten/jans-ai-hub` gemountet und OneDrive
   (`PL - 02_Recht_Norm/…` u.a.) erreichbar — der Mini ist Always-On, das ist hier gegeben.
6. **Melden:** Kurz zurueckmelden, welche Tasks aktiv sind, welche neu angelegt/aktiviert
   wurden, und der naechste Lauf je Task.

---

## TEIL B — auf dem MACBOOK PRO ausfuehren

Ziel: Die 6 Trainings-Loops sind hier **deaktiviert** (Toasts verschwinden).

1. **Station pruefen:** `hostname` zeigt `Macbookpro.local`.
2. **Deaktivieren** (NICHT loeschen — so bleiben sie als Fallback erhalten):
   Fuer jede vorhandene der 6 Tasks `update_scheduled_task` mit `enabled: false`.
   Stand 08.06.2026 vorhanden: `baurecht-buch-training`, `immobewertung-training`,
   `twin-mail-training`, `twin-fidelity-review` (die anderen zwei sind hier ohnehin nicht
   installiert).
3. `heartbeat-daily` und `wissenscheck-monatlich` **aktiv lassen**.
4. **Melden:** Welche Tasks deaktiviert wurden.

---

## Hintergrund / Wartung

- Soll das MacBook bei Bedarf doch trainieren (z. B. Mini in Wartung): die betreffende
  Task auf dem MacBook kurz `enabled: true` setzen, danach wieder false.
- Alternative statt Deaktivieren: in die SKILL.md jeder Task vorne eine **Host-Weiche**
  einbauen («Wenn `hostname` ≠ Mac Mini und nicht `TRAIN_ALLOW_ANY_HOST=1` → sauber
  abbrechen»), analog `scripts/dispatch-run.sh` (`PRIMARY_HOST=Macmini`). Aufwendiger,
  aber dann ist die Regel in der Task selbst dokumentiert statt nur im enabled-Flag.
- Kanonische Quelle dieses Runbooks: NAS `docs/RUNBOOK-trainings-tasks.md`.

_Erstellt 08.06.2026 — Anlass: Start-Fehler-Toast `baurecht-buch-training` auf dem MacBook._
