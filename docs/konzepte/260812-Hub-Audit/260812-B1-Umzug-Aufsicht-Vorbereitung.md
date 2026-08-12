---
title: B1 — Umzug der Aufsicht auf den Mac Mini (Vorbereitung)
datum: 2026-08-12
status: vorbereitet, NICHT ausgefuehrt
blockiert durch: bexio.env (Handarbeit Raphael) · B2-Entscheid (FileVault)
---

# B1 — Umzug der Aufsicht auf die Always-On-Station

Vorbereitung zum Hub-Audit 260812, Risiko R3. **Nichts davon ist ausgefuehrt.** Der Umzug
haengt an zwei Vorbedingungen, die beide bei Raphael liegen.

## Warum das dringlicher ist, als das Audit annahm

Das Audit hat R3 als Risiko beschrieben. Es ist kein Risiko mehr, es ist eingetreten:
**09. bis 12.08.2026 gab es kein Tagesbriefing und keinen Radar.** Die letzte Claude-Aktivitaet
auf dem MacBook Pro endet am 09.08. um 19:27, obwohl die Maschine seit 11.08. 15:25 laeuft und
per SSH erreichbar ist — die Task-Engine laeuft dort schlicht nicht. Zwei Warnungen der
Kontingent-Aufsicht («Wochenkontingent ist erschoepft, der Hub steht», 08.08. 23:46;
«Wochenbudget zu 85.2 Prozent», 09.08. 02:10) **liegen bis heute unversendet in den Entwuerfen**
(Chronik 260812b).

Vier Tage Stille, die von einem ruhigen Wochenende nicht zu unterscheiden waren. Seit dem
12.08. deckt der Stations-Watchdog (A1) genau diesen Fall ab — aber er meldet den Ausfall,
er behebt ihn nicht.

## Die sieben Tasks

Sortiert nach Dringlichkeit des Umzugs.

| Task | Was ausfaellt, wenn die Station schlaeft | bexio noetig |
|---|---|---|
| `logbuch-radar` | Fristenschaerfe. Der einzige Loop, der taeglich ungefragt mailen darf | ja |
| `hub-chef-taeglich` | Das Tagesbriefing, der einzige regulaere Meldekanal | ja |
| `mahnwesen-verzugscheck` | Debitoren-Verzug faellt unbemerkt durch | ja |
| `zahlungsabgleich-check` | Zahlungseingaenge werden nicht gegengeprueft | ja |
| `vollgas-fruehwarnung` | Kontingent-Warnung. Ausgerechnet sie lag im August in den Entwuerfen | nein |
| `vollgas-chef-radar` | Takt- und Leerlauf-Aufsicht ueber alle Loops | nein |
| `heartbeat-daily` | Taeglicher System-Check inklusive des neuen Watchdogs (Check 13) | nein |

**Nicht umziehen:** die uebrigen 24 Tasks auf dem MacBook Pro. Trainings- und Lern-Loops
duerfen dort bleiben; faellt einer aus, kostet das eine Lektion, keine Frist. Der Mac Mini
traegt bereits acht eigene Trainingslaeufe und die Nachtschicht.

## Vorbedingungen

**V1 — `~/.bexio.env` auf den Mac Mini.** Vier der sieben Tasks brauchen sie; auf dem Mini
fehlt sie. Handarbeit Raphael, nie ueber das Repo, nie ueber einen Sync-Task. Danach messen,
statt zu glauben:

```bash
node /Volumes/daten/jans-ai-hub/connectors/bexio.mjs --offen | head -5
```

Achtung, unabhaengiger Zweitbefund: `bexio --verzug` antwortete am 12.08. mit **401**. Das
Debitoren-Monitoring ist also derzeit auch auf dem MacBook blind. Der Token gehoert erneuert,
bevor der Umzug Sinn ergibt — sonst zieht ein blinder Task auf eine andere Station um.

**V2 — B2-Entscheid (FileVault).** Der Umzug verlagert die Aufsicht auf eine Station, die
nach jedem Stromausfall am FileVault-Prompt stehen bleibt (R1). Ohne einen Weg, der den Mini
selbstaendig hochkommen laesst, tauscht der Umzug nur die Ausfallart: statt «MacBook zu» dann
«Mini haengt am Prompt». Der Watchdog auf dem MacBook meldet das zwar — vorausgesetzt, das
MacBook laeuft.

**V3 — A4 installiert.** Der Mini braucht die Mount-Wiederherstellung, bevor die Aufsicht
dort haengt. Liegt als Befehl vor:
`docs/konzepte/260812-Hub-Audit/260812-installation-A1-A3-A4.sh --scharf`.

## Durchfuehrung

Der Umzug ist **Handarbeit in der Claude-Code-App**. Eine Session kann die
Scheduled-Task-Registry nicht schreiben (Hub-Audit R11, belegt am Stale-Fire vom 08.08.: die
Deaktivierung vom 03.08. setzte nur den Beschreibungstext, die Task feuerte weiter). Der
Spiegel unter `templates/scheduled-tasks/` ist ausdruecklich Doku, nie Live-Zustand.

Je Task:

1. Auf dem **Mac Mini** in der App neu anlegen. Prompt, Zeitplan und Modell-Politik-Block aus
   `templates/scheduled-tasks/macbook-pro/<task>/SKILL.md` uebernehmen, wortgleich.
2. Auf dem **MacBook Pro** dieselbe Task loeschen, nicht nur deaktivieren. Ein deaktivierter
   Eintrag, der trotzdem feuert, ist genau der Fall vom 08.08.
3. **Nachmessen, nicht abhaken.** Am Folgetag pruefen, ob die Task auf dem Mini wirklich lief:

```bash
grep -l "<task-name>" ~/.claude/projects/*/[0-9]*.jsonl 2>/dev/null | tail -3
ls -la /Volumes/daten/jans-ai-hub/logbuch/laeufe/ | tail -5
```

4. Spiegel nachziehen: `bash /Volumes/daten/jans-ai-hub/scripts/scheduled-tasks-mirror.sh`

**Zeitplaene entzerren.** Die sieben Tasks treffen auf einem Mini, der um 23:30, 02:30, 05:30
und 13:30 die Nachtschicht faehrt. Rule `betrieb-chronik` 260728 (Speicher-Deckel) und der
Morgen-Stau vom 28.07. sind der Grund: vier Tasks zwischen 07:46 und 08:05 haben das MacBook
damals in den Swap getrieben. Vorschlag, der die bestehenden Abstaende beibehaelt:
`logbuch-radar` 06:55, `vollgas-fruehwarnung` 06:25, `heartbeat-daily` 08:00,
`hub-chef-taeglich` 08:35, `mahnwesen-verzugscheck` und `zahlungsabgleich-check` nach 09:00.

## Was nach dem Umzug nachzuziehen ist

- **Der eigene blinde Fleck bleibt.** Liegt die Aufsicht auf dem Mini, meldet sie dessen
  Ausfall nicht mehr selbst. Genau dafuer laeuft der Watchdog (A1) auf **beiden** Stationen.
  Nach dem Umzug pruefen, dass er auf dem MacBook Pro geladen ist — sonst ist der Tausch ein
  Nullsummenspiel.
- **Rule `betrieb-chronik`** um einen Eintrag ergaenzen, welche Task wo liegt und warum.
  Ohne das faellt der naechste Radar ueber eine Task her, die er auf der falschen Station sucht.
- **Rollen-Register** `logbuch/rollen/rollen-map.tsv`: die Zeilen bleiben stehen, der
  Stationswechsel gehoert in die Begruendungsspalte. Rule `rollen-taxonomie` Ziffer 1 — eine
  umgewidmete Zeile kappt sonst die Historie.
