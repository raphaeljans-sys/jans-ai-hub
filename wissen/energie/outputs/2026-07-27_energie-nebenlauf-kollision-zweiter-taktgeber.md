---
titel: Energie-Loop — Nebenlauf: Kollision mit Zweitinstanz, zweiter Taktgeber entdeckt
datum: 2026-07-27
typ: Kollisions-/Strukturbefund (kein Inhaltslauf)
status: Befund, Fix NICHT ausgefuehrt (Entscheid Raphael)
---

# Energie-Loop 27.07.2026 — Nebenlauf statt Run 117

## Kurzfassung

Der Scheduled Task `energie-training` startete um **22:37** und traf auf eine **bereits laufende
Zweitinstanz desselben Loops** (Start 22:30:05). Nach Rule 260724 (Kollisionsschutz) bin ich als
spaetere Instanz **zurueckgetreten**: keine Register-Edits, kein `git`, kein Inhaltslauf. Dieser
Report ist die vorgeschriebene Sicherung der eigenen Funde unter eindeutigem Namen — die Run-Nummer
117 bleibt bewusst unbelegt und gehoert der Erstinstanz.

Der eigentliche Fund ist nicht die Kollision, sondern ihre Ursache: **fuer den Energie-Loop
existieren auf dem Mac Mini zwei unabhaengige Taktgeber**, die taeglich sieben Minuten versetzt
feuern. Das ist exakt der von Rule 260727 verbotene Zustand («Kein zweiter Taktgeber»).

## Befund 1 — zwei Taktgeber fuer denselben Loop (Mac Mini)

| Taktgeber | Mechanik | Takt | Heute |
|---|---|---|---|
| **App Scheduled Task** `energie-training` | Task-Registry, `cron 30 22 * * *`, Jitter 429 s | taeglich ~22:37 | dieser Lauf (zweite Instanz) |
| **launchd-Agent** `ch.jans.training-energie` | `~/Library/LaunchAgents/ch.jans.training-energie.plist` → `scripts/cron-training-mini.sh energie` → `dispatch-run.sh` → `claude -p`, Budget **$25** | taeglich **22:30** (`StartCalendarInterval`) | PID 90704/90726, laeuft |

Beide fuehren denselben Auftrag gegen dieselbe KB aus. Der Instanz-Lock des Scripts
(`/tmp/jans-cron-training.lock`) schuetzt **nur** zwei Cron-Dispatches gegeneinander — er kennt den
App-Task nicht. Es gibt also **keinen** mechanismusuebergreifenden Lock.

### Warum die Doppelung eine obsolete Uebergangsloesung ist

Der Kopfkommentar von `scripts/cron-training-mini.sh` (12.07.2026) sagt es selbst:

> «Die App-Scheduled-Tasks auf dem Mini lassen sich headless nicht umtakten (Registry im
> App-Speicher). Diese Tagesläufe ergänzen darum die bestehenden Nacht-Tasks der App über die
> User-Crontab, **bis die App-Tasks interaktiv umgetaktet sind**.»

Der App-Task `energie-training` ist inzwischen umgetaktet und laeuft taeglich um 22:37 (Registry
bestaetigt, `lastRunAt` 27.07.). Die Bedingung der Uebergangsloesung ist damit erfuellt — der
launchd-Weg ist seither **reine Doppelung**. (Nebenbefund: der Agent laeuft ueber **launchd**, nicht
ueber die im Script-Kopf genannte Crontab; `crontab -l` ist auf diesem Host leer. Wer die Doppelung
per Crontab sucht, findet sie nicht.)

### Warum es bisher nicht aufgefallen ist

Die Doppelung war die letzten Naechte folgenlos, weil der Dispatch am leeren Kontingent scheiterte
(`~/Library/Logs/jans-cron-training.log`):

- `2026-07-26 22:30` energie → **«You've hit your weekly limit»**, Exit 1
- `2026-07-27 00:30` plg → **«You've hit your weekly limit»**, Exit 1

Seit dem Kontingent-Reset am 27.07. um 12:00 greift sie wieder. **Heute Nacht ist die erste, in der
beide Taktgeber tatsaechlich parallel arbeiten.** Ohne Eingriff wiederholt sich das ab jetzt jede
Nacht — mit einem $25-Dispatch zusaetzlich zum App-Task.

## Befund 2 — dasselbe Muster bei `plg`

| Agent | launchctl geladen | konkurrierender App-Task |
|---|---|---|
| `ch.jans.training-energie` | **ja** | `energie-training` (taeglich 22:37) |
| `ch.jans.training-plg` | **ja** | `planungsgrundlagen-training` (alle 2 Tage 00:30) |
| `ch.jans.training-normen` | nein (plist vorhanden, nicht geladen) | — |

Der plg-Loop ist damit ebenso doppelt getaktet. `normen` ist derzeit sauber, die plist liegt aber
scharf im Ordner und wuerde beim naechsten Load dasselbe Problem erzeugen.

## Befund 3 — der Schaden ist historisch belegt

`wissen/energie/outputs/` zaehlt fuer den **25.07.2026 neunundzwanzig** Energie-Run-Reports
(Runs 88–114) an einem einzigen Tag. Das ist der in Rule 260727 dokumentierte Runaway, der zusammen
mit den uebrigen Doppellaeufen das Wochenkontingent leerfuhr (Totalausfall 26.07. 00:53 bis 27.07.
12:00). Die hier gefundene Taktgeber-Doppelung ist derselbe Defekt-Typ an einer weiteren Stelle.

## Was die Erstinstanz gerade leistet (nichts geht verloren)

Die laufende Instanz arbeitet produktiv und hat seit 22:30 bereits drei neue Destillate angelegt:

- `destillate/abwaerme-bereitstellungspflicht-sz.md`
- `destillate/abwasserwaerme-bewilligung-sz-vertiefung.md`
- `destillate/energis-kartenwerk-stadt-zuerich.md`

Das sind **exakt die Prioritaeten 4 und 6 des Run-116-Reports** (gezielter SZ-Lauf mit kEnG/kEnV,
EnerGIS-Kartenwerk). Damit ist belegt, dass ein paralleler Inhaltslauf meinerseits dieselben Themen
doppelt bearbeitet haette — der Rueckzug war nicht nur regelkonform, sondern sachlich richtig.

## Empfohlener Fix — NICHT ausgefuehrt

Bewusst nicht ausgefuehrt: eine Aenderung an den Autostart-Definitionen ist eine Konfigurations-
Aenderung, die dieser Task nicht beauftragt, und der betroffene Prozess laeuft gerade. Entscheid und
Ausfuehrung gehoeren zu Raphael bzw. zum `vollgas-chef-radar` als Leerlauf-Waechter.

Nach Rule 260727 ist eine Deaktivierung erst vollzogen, wenn **beide Orte** nachgezogen sind —
Agent entladen **und** plist entschaerfen, sonst kehrt sie beim naechsten Login/Reboot zurueck:

```bash
launchctl bootout gui/$(id -u)/ch.jans.training-energie
launchctl bootout gui/$(id -u)/ch.jans.training-plg
cd ~/Library/LaunchAgents && mv ch.jans.training-energie.plist ch.jans.training-energie.plist.bak-doppeltakt-20260727 && mv ch.jans.training-plg.plist ch.jans.training-plg.plist.bak-doppeltakt-20260727 && mv ch.jans.training-normen.plist ch.jans.training-normen.plist.bak-doppeltakt-20260727
```

Danach bleibt je Loop **genau ein** Taktgeber: der App Scheduled Task. Der laufende Dispatch sollte
vorher zu Ende laufen (er schreibt Register und CHANGELOG).

Alternative, falls der Dispatch-Weg der bevorzugte bleiben soll: dann stattdessen den **App-Task**
deaktivieren (`update_scheduled_task`, `enabled: false`) und die launchd-Agenten behalten — aber
nicht beides. Empfehlung: App-Task behalten, launchd-Agenten entfernen, weil der App-Task die
gepflegte SKILL.md mit Modell-Politik und Leitplanken traegt.

## Regel-Konformitaet dieses Laufs

- **Rule 260724 (Kollisionsschutz):** Zweitinstanz erkannt → zurueckgetreten. Keine Edits an
  `destillate/INDEX.md`, `pdf-inventar.md`, `BAUHERREN-FAQ.md`, `wiki/INDEX.md`, `QUESTIONS.md`,
  `curriculum.md`, `raw/_INGESTED.md`, `CHANGELOG.md`. Keine Run-Nummer belegt.
- **Rule 260726 / sync-kanonische-quelle:** kein `git` ueber den SMB-Mount. Diese additive Datei
  uebernimmt der native `nas-selfcommit` (15-Min-Cron) kollisionsfrei.
- **Rule 260727 (Leerlauf-Waechter):** dieser Lauf ist **kein** Delta-Null-Lauf im Sinne der Regel —
  er meldet keinen fehlenden Stoff, sondern einen strukturellen Doppeltakt. Der Energie-Loop selbst
  ist inhaltlich weiter produktiv (Run 116: vier neue Destillate; heute drei weitere).

## Offen fuer Raphael

1. **Entscheid Doppeltakt** (energie + plg): launchd-Agenten entfernen oder App-Tasks deaktivieren —
   eines von beidem, taeglich wirksam ab heute Nacht.
2. Unveraendert offen aus Run 116: die **fuenf gebuendelten Kaufentscheide** (B1-Konsolidierung,
   SWKI VA105-01, SIA 385/1, SIA 385/2, SIA 384.354) warten jetzt im neunzehnten Lauf in Folge.
3. Meta-Punkt M2 (eigenstaendiger Skill «energie») seit Run 45 spruchreif.
