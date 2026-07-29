---
titel: Energie-Loop — Nebenlauf: Doppeltakt-Kollision dritte Nacht in Folge, empfohlener Fix nicht ausgefuehrt
datum: 2026-07-29
typ: Kollisions-/Strukturbefund (kein Inhaltslauf)
status: Befund, Fix NICHT ausgefuehrt (nicht beauftragt, Prozess laeuft)
vorlauf: 2026-07-28_energie-nebenlauf-kollision-wiederholung.md
---

# Energie-Loop 29.07.2026 — Nebenlauf statt Run 119

## Kurzfassung

Der Scheduled Task `energie-training` startete um **22:38:09** und traf erneut auf eine bereits
laufende **Zweitinstanz desselben Loops**: PID **15002**, Start **22:30** (Elapsed 08:08 zum
Pruefzeitpunkt), Kette launchd-Agent `ch.jans.training-energie` (PID 14965) →
`cron-training-mini.sh energie` → `claude-run.sh --name dispatch-versuch1`, Budget-Deckel **$25**,
Auftragstext woertlich derselbe Energie-Intensivlauf. Nach Rule `auto-verbesserungen` 260724
(Kollisionsschutz) bin ich als spaetere Instanz **zurueckgetreten**: kein Inhaltslauf, keine
Register-Edits, kein `git`. Die Run-Nummer **119** bleibt unbelegt und gehoert der Erstinstanz
(juengster `outputs/`-Report ist Run 118).

Das ist die **dritte Nacht in Folge** mit exakt derselben Kollision (27.07., 28.07., 29.07.).

## Neubefund 1 — der empfohlene Fix ist nicht ausgefuehrt, der Zustand unveraendert

Der Bestand in `~/Library/LaunchAgents` ist gegenueber dem 28.07. **unveraendert**:

| Agent | Zustand 29.07. 22:38 | Aenderung seit 28.07. |
|---|---|---|
| `ch.jans.training-energie.plist` | scharf im Ordner **und geladen** (PID 14965) | keine |
| `ch.jans.training-normen.plist` | scharf im Ordner, nicht geladen | keine |
| `ch.jans.training-plg.plist.disabled-260728` | abgeschaltet | keine |

`launchctl list` weist genau einen geladenen Trainings-Agenten aus: `ch.jans.training-energie`.
Der in den Reports vom 27.07. und 28.07. vorformulierte Dreizeiler (bootout + beide plists
entschaerfen) wurde nicht angewandt. Damit ist die Prognose beider Vorlaeufe zum zweiten Mal
bestaetigt: ohne Eingriff wiederholt sich die Kollision jede Nacht.

## Neubefund 2 — der Rueckzug hing allein am `ps`-Check, die `outputs/`-Sicht war blind

Zum Pruefzeitpunkt lief die Erstinstanz seit acht Minuten und hatte in
`wissen/energie/` **noch keine einzige Datei geschrieben** (`find -newermt 22:25` → leer). Ihre
Arbeit war also ausschliesslich am laufenden Prozess erkennbar, nicht am Dateibestand.

Das ist die direkte empirische Bestaetigung der zweiten blinden Stelle, die die Betriebs-Kurzregel
zum zweistufigen Zweitinstanz-Check benennt: eine noch laufende Instanz ist ueber `outputs/` nicht
sichtbar, weil sie ihre Datei erst am Ende schreibt. Waere hier nur nach dem juengsten
`outputs/`-Stand geprueft worden, haette der Befund «Run 118 abgeschlossen, 119 frei» gelautet — und
beide Instanzen haetten parallel dieselbe Prioritaetenliste abgearbeitet. Der Unterschied zu den
Vorlaeufen: am 28.07. war die Doppelarbeit an einer bereits angefassten Datei belegbar, heute war sie
nur am Prozess belegbar. Beide Pruefstufen haben je einen Fall abgedeckt, den die andere verpasst
haette.

## Neubefund 3 — die Kosten der beiden Vornaechte sind nicht mehr messbar

Das Lauf-Journal existiert erst seit dem 29.07. (`logbuch/laeufe/` enthaelt einzig
`260729-laeufe.jsonl`); fuer den 27.07. und 28.07. gibt es keine Datei. Die tatsaechlichen Kosten der
beiden vorangegangenen launchd-Naechte sind damit **nicht rekonstruierbar**. Belastbar ist nur:

- Der launchd-Weg feuert mit einem **Deckel** von $25 — das ist die autorisierte Obergrenze, keine
  Messung. Der Standard-Deckel des Dispatch liegt bei $5.
- Zwei heute abgeschlossene `dispatch-versuch1`-Laeufe kosteten gemessen **$3.18** (05:35) und
  **$2.28** (13:34) — Groessenordnung eines Nachtlaufs, nicht der Deckel.
- Der laufende 22:30-Lauf hat noch keine Journalzeile (die entsteht erst beim Beenden).

Wer den Doppeltakt beziffern will, hat ab heute die Datenbasis dafuer; rueckwirkend nicht.

## Regel-Konformitaet dieses Laufs

- **Rule 260724 / Betriebs-Kurzregel Zweitinstanz-Check:** beide Stufen ausgefuehrt — `ps` vor jeder
  Aktion (Treffer: PID 15002) und Run-Nummer gegen den juengsten `outputs/`-Stand (118). Nach dem
  `ps`-Treffer zurueckgetreten. Keine Edits an `destillate/INDEX.md`, `training/pdf-inventar.md`,
  `wiki/BAUHERREN-FAQ.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `training/curriculum.md`,
  `raw/_INGESTED.md`, `CHANGELOG.md`. Keine Run-Nummer belegt.
- **Rule 260726 / `sync-kanonische-quelle`:** kein `git` ueber den SMB-Mount. Diese rein additive
  Datei uebernimmt der native `nas-selfcommit` (15-Min-Cron) kollisionsfrei.
- **Lauf-Gate:** `scripts/lauf-gate.sh energie-training` vorab aufgerufen, Exit **0** (Speicher und
  Prozesszahl im Rahmen). Das Gate zaehlt Speicher und Prozesse und erkennt eine **fachliche**
  Loop-Kollision baulich nicht — dafuer ist der Zweitinstanz-Check zustaendig.
- **Leerlauf-Waechter:** dies ist **kein** Delta-Null-Lauf des Energie-Loops. Gemeldet wird ein
  struktureller Doppeltakt, kein fehlender Stoff; die Erstinstanz arbeitet.
- **Keine Konfigurationsaenderung:** der Eingriff in die Autostart-Definitionen ist von diesem Task
  nicht beauftragt, und der betroffene Prozess laeuft. Nicht ausgefuehrt.

## Offen fuer Raphael

1. **Entscheid Doppeltakt `energie`** — dritte Nacht wirksam, Fix seit 27.07. vorformuliert und
   unangewandt. Empfehlung unveraendert: launchd-Agent entfernen, App-Task behalten (er traegt die
   gepflegte SKILL.md mit Modell-Politik und Leitplanken). Der laufende Dispatch sollte vorher zu
   Ende laufen, er schreibt Register und CHANGELOG.

   ```bash
   launchctl bootout gui/$(id -u)/ch.jans.training-energie
   cd ~/Library/LaunchAgents && mv ch.jans.training-energie.plist ch.jans.training-energie.plist.disabled-260729
   mv ch.jans.training-normen.plist ch.jans.training-normen.plist.disabled-260729
   ```

2. **`ch.jans.training-normen`** — plist liegt weiter scharf im Ordner, erzeugt beim naechsten Load
   denselben Defekt. Dritte Nennung.
3. **Rule-Schaerfung aus dem 28.07.-Report** (Abschaltkriterium beim Bereinigen einer Taktgeber-Flotte
   ist allein die Existenz eines zweiten Taktgebers, nie die Ergiebigkeit des Loops) — weiter nicht
   eingetragen, gehoert Raphael.
4. Unveraendert aus Run 116/117: die **fuenf gebuendelten Kaufentscheide** (B1-Konsolidierung,
   SWKI VA105-01, SIA 385/1, SIA 385/2, SIA 384.354) warten jetzt im **einundzwanzigsten** Lauf in
   Folge.
5. Meta-Punkt M2 (eigenstaendiger Skill «energie») seit Run 45 spruchreif.
