# Speicher-Architektur des JANS AI Hub

Stand 28.07.2026 · Auslöser: Speicher-Notstand auf beiden Stationen

## Auslöser

Am Morgen des 28.07.2026 meldete das MacBook Pro «Dein System hat keinen
Programmspeicher mehr» und musste neu gestartet werden (06:53). Der Dialog wies
Claude mit 20.24 GB aus — bei 16 GB physischem Arbeitsspeicher. Gleichzeitig fiel
das Morgenbriefing aus, und der NAS-Mount über Tailscale zeigte einen Verbindungsfehler.

Raphael stellte drei Fragen: warum es passiert ist, wie viel Arbeitsspeicher ein
neues Gerät braucht, und ob die Serverarchitektur grundsätzlich zu überdenken ist.

## Messergebnis

Die Messung ergab **zwei verschiedene Ursachen auf den beiden Stationen** — die
erste Vermutung (Claude als Speicherfresser auf beiden) war nur zur Hälfte richtig.

### Mac Mini (32 GB): OneDrive, nicht Claude

| Prozess | Speicher-Footprint |
|---|---|
| **OneDrive** | **33 GB** |
| ArchiCAD + Cineware (10 Prozesse) | ~15 GB |
| **Claude (18 Prozesse)** | **1.3 GB** |

Zustand vor dem Eingriff: 31 GB belegt, 17 GB Compressor, Swap 9.4 von 10.2 GB,
**108 MB frei**. OneDrive lief seit dem 23.07. ununterbrochen und synchronisiert
20 CloudStorage-Bibliotheken, davon eine mit 183 GB.

Nach dem Neustart von OneDrive: 16 GB belegt, Compressor 1.6 GB, **15 GB frei**.

Claude war auf dem Mini nie das Problem.

### MacBook Pro (16 GB): Summierung vieler Claude-Läufe

Hier stimmt der ursprüngliche Befund. Ursachen in dieser Reihenfolge:

1. **Morgen-Stau der operativen Tasks.** Zwischen 07:46 und 08:05 feuerten vier
   Scheduled Tasks in 20 Minuten — genau zur Arbeitszeit. Der Speicher-Dialog kam
   um 06:53.
2. **Ein Lern-Loop mitten am Arbeitstag** (twin-mail-training um 15:35).
3. **Parallele Subagenten.** Der Concurrency-Cap liegt bei `min(16, Kerne − 2)`,
   auf 12 Kernen also 10 gleichzeitige Agenten. Die Transcripts der Nacht
   27./28.07. zeigen einzelne Agent-Sessions mit 29, 18 und 14 MB JSONL; im
   Node-Heap belegt das ein Vielfaches.
4. **4.3 GB nie aufgeräumte Session-Transcripts** (5'703 Dateien).

## Der strukturelle Befund: keine gemeinsame Instanz

Der Hub hatte **sechs unabhängige Feuermechanismen je Station**, die nichts
voneinander wussten. Die bestehende Regel 260728 nennt ausdrücklich «DREI Orte» —
das war unvollständig. Vollständiges Inventar vom 28.07.2026:

**MacBook Pro**
1. Claude Scheduled Tasks (29 registriert)
2. `ch.jans.vollgas-supervisor` → `vollgas-runner.sh` (alle 180 s)
3. `com.jans.aihub.runner` (alle 15 Min) — **seit 7. Juni ohne einen einzigen Job**
4. `ch.jans.synctask-runner` (alle 30 Min)
5. `ch.jans.wissens-trigger` (täglich 06:30)
6. `ch.jans.claude-autoupdate`

**Mac Mini**
1. Claude Scheduled Tasks (7)
2. `ch.jans.nachtschicht` — **15 Feuerungen täglich**, in keiner Regel erwähnt
3. `ch.jans.training-energie` (22:30, Budget 25 USD)
4. `ch.jans.vollgas-supervisor`
5. `ch.jans.synctask-runner`
6. `ch.jans.wissens-trigger`

Jeder dieser Mechanismen hatte höchstens einen Lock gegen **sich selbst**. Keiner
zählte, wie viele Läufe stationsweit bereits aktiv waren. Belegt: am 28.07. um
00:30 und um 22:30 feuerten je zwei Läufe gleichzeitig, weil `nachtschicht` und
ein `training`-Job denselben Zeitpunkt trafen.

## Umgesetzte Massnahmen (28.07.2026)

| Massnahme | Wirkung |
|---|---|
| OneDrive auf dem Mini neu gestartet | 108 MB → 15 GB frei |
| `speicher-waechter.sh` + launchd, beide Stationen, alle 30 Min | Startet OneDrive bei über 8 GB Footprint neu; warnt bei unter 1.5 GB freiem Speicher |
| `lauf-gate.sh` als zentraler Prozess-Deckel | Jeder automatische Mechanismus fragt vor dem Start; Grenze MacBook 2 Läufe / 3 GB frei, Mini 3 Läufe / 4 GB frei |
| Gate eingehängt in nachtschicht, cron-training-mini, vollgas-runner, wissens-trigger | Erstmals eine stationsweite Obergrenze |
| Nachtschicht 15 → 3 Läufe, entzerrt auf 23:30 / 02:30 / 05:30 | Keine Kollision mehr mit training-energie (22:30), wissens-trigger (06:30) und logbuch-radar (06:51) |
| `com.jans.aihub.runner` abgeschaltet | 7 Wochen Leerlauf beendet |
| Morgen-Tasks entzerrt | Vier Läufe in 20 Min → maximal zwei in 25 Min |
| twin-mail-training 2x → 1x (nur nachts) | Arbeitszeit am MacBook frei |
| `transcript-rotation.sh` + launchd, wöchentlich | MacBook 4.3 → 2.9 GB, Mini 5.2 → 3.7 GB; verlustfrei archiviert |

Alle Eingriffe sind reversibel; Sicherungen liegen als `.bak-*` bzw.
`.disabled-260728` neben den Originalen.

## Antwort auf die Hardware-Frage

Für ein neues Gerät bei unveränderter Arbeitsweise: **64 GB**.

Rechnung: beobachteter Spitzenbedarf 24 GB, plus macOS-Grundlast, plus ArchiCAD
und Rhino lokal, plus Reserve, damit der Compressor nicht greift. 48 GB ist die
untere sinnvolle Grenze.

**Wichtiger Zusammenhang beim Kauf:** Der Agenten-Cap skaliert mit den Kernen.
Ein M4 Max mit 16 Kernen fährt 14 statt 10 parallele Agenten — ein 16-Kerner mit
32 GB wäre also schlechter dran als das heutige Gerät. Kerne und Arbeitsspeicher
gehören zusammen dimensioniert.

**Einschränkung, die gegen einen schnellen Neukauf spricht:** Der Mac Mini zeigte
mit 32 GB dieselbe Erschöpfung wie das MacBook mit 16 GB. Die Ursache dort war
OneDrive und liess sich ohne einen Franken Hardware beheben. Hardware kaufen,
bevor die Software-Ursachen bereinigt sind, verschiebt das Problem nur.

## Offene Punkte

1. **OneDrive-Bibliotheken auf dem Mini reduzieren.** 20 synchronisierte
   CloudStorage-Bibliotheken sind die Wurzel des 33-GB-Footprints. Welche davon
   auf dem Mini wirklich gebraucht werden, ist eine Entscheidung Raphaels.
2. **Echte Loop-Migration MacBook → Mini.** In diesem Durchgang wurden die Läufe
   nur zeitlich entzerrt, nicht verschoben. Die Verschiebung zwischen den
   Task-Registries beider Stationen braucht eine inhaltliche Zuteilung
   (welcher Loop wohin) und sollte separat entschieden werden.
3. **Repo weg vom SMB-Mount.** Zurückgestellt: betrifft 19 `@`-Importe und drei
   Symlinks, und löst für den Mini nichts (dessen NAS-Mount läuft über die
   Büro-LAN-IP und ist stabil). Nutzen beschränkt auf das mobile MacBook.
4. **Grundsatzentscheid Endlos-Runner.** Steht seit 27.07. offen: bekommt er
   eigene Aufgaben, oder wird er ausgebaut? Beide STOP-Dateien liegen weiterhin.

## Verwandte Regeln

- `auto-verbesserungen.md` 260727/260728 — Feuermechanismen (hier korrigiert und
  vervollständigt)
- `auto-verbesserungen.md` 260727 — Leerlauf-Wächter (Grundlage für die
  Abschaltung des aihub-Runners)
- `sync-kanonische-quelle.md` — NAS kanonisch, kein Git über SMB
