---
title: Kontext-Architektur des Hubs — was wann laedt
status: established
last_updated: 2026-08-03
sources: [messung-260729-grundkontext, messung-260803-grundkontext-wissens-chef-run23, lecture-260729-anthropic]
links: [[lecture-260729-anthropic]], [[INDEX]], [[environment-jans-hub]] (KB spec — formales Layer-3-Modell)
---

# Kontext-Architektur des Hubs — was wann laedt

Gemessener Ist-Zustand am 29.07.2026, eingeordnet nach der Lecture-Systematik
(automatisch gegen lazily). Alle Zahlen sind eigene Messungen dieses Tages; die
Budget-Zahlen tragen Zeitstempel und Commit, weil sie nachweislich innerhalb von Minuten
veralten koennen.

Die Lecture-Systematik «automatisch gegen lazily» ist die **Messebene** zu Marcheses
Layer 3 («The Environment»): [[environment-jans-hub]] (KB `spec`) kartiert die vier
Environment-Bausteine als Modell, dieser Artikel misst, was von ihnen wann tatsaechlich
in den Kontext geladen wird.

## Die vier Schichten im Hub

| Schicht | Ort | Zustand 29.07.2026 |
|---|---|---|
| Enterprise (geteilt) | `/Library/Application Support/ClaudeCode/CLAUDE.md` | **nicht vorhanden** — bewusst, siehe [[QUESTIONS]] Punkt 1 |
| Global (nur ich) | `~/.claude/CLAUDE.md` | **seit 29.07. vorhanden**, 3'269 B, auf beiden Stationen identisch. Quelle `templates/user-level/CLAUDE.md`, verteilt via `scripts/user-claude-sync.sh` |
| Projekt (geteilt) | `CLAUDE.md` + @-importierte Rules | **96'946 B / 20 Importe** (Messung 29.07.2026 23:39); am Diaet-Commit `29bcb1ac` 87'398 B / 19 Importe, davor 105'573 B |
| Projekt (nur ich) | `.claude/settings.local.json` | vorhanden, stationsspezifisch |

Dazu **19 Sub-CLAUDE.md** unter `wissen/<kb>/` — sie laden **on demand**, nicht beim Start.
Der Hub hat dieses Lecture-Muster also schon vor der Lecture umgesetzt.

## Das Grundkontext-Budget (Messung 29.07.2026)

**Messweg (reproduzierbar):** `stat -f%z CLAUDE.md` **plus** `stat -f%z` ueber alle Dateien
aus `grep '^@/Volumes' CLAUDE.md`. CLAUDE.md selbst wird also **mitgezaehlt** — ohne diesen
Punkt ist der Wert nicht reproduzierbar. Token grob mit dem in diesem Artikel durchgehenden
Schluessel 4 B/Token.

| Stand | Bytes | grob Token |
|---|---|---|
| vor der Diaet 2.0 (Commit `29bcb1ac~1`) | 105'573 | ~26'400 |
| nach der Diaet 2.0 (29.07.2026 02:00, Commit `29bcb1ac`) | 87'398 | ~21'800 |
| Ersparnis der Diaet | 18'175 | 17 % |
| Stand 29.07.2026 23:39, 20 @-Importe | 96'946 | ~24'200 |
| Rebound bis dahin seit der Diaet-Messung | +9'548 | 53 % der Ersparnis |
| **Stand 03.08.2026 22:30, 21 @-Importe** | **115'482** | **~28'900** |
| Rebound gesamt seit der Diaet | **+28'084** | **die Ersparnis ist vollstaendig aufgezehrt** |

*(Zeile 03.08. nachgemessen Wissens-Chef Run 23; Messweise unveraendert: `stat -f %z` ueber
`CLAUDE.md` + `~/.claude/CLAUDE.md` + alle @-importierten Rules. Der Stand liegt jetzt **ueber**
dem Vor-Diaet-Wert von 105'573 B — die Kontext-Diaet 2.0 ist rechnerisch rueckgaengig gemacht,
allein durch das Wachstum von `jans-dna.md` (+17'072 B in fuenf Tagen) und einen 21. Import.)*

Die Ersparnis-Zeile misst die **Wirkung des Eingriffs** am Commit `29bcb1ac` und bleibt
gueltig; sie wird nicht mit dem heutigen Stand verrechnet. Das Wiederanwachsen ist eine
eigene Groesse und steht darum als eigene Zeile.

**Korrektur Wissens-Chef Run 20, 29.07.2026.** Der Artikel fuehrte «19 @-importierte Rules /
87'398 B» als Ist-Zustand ohne Zeitstempel und ohne Messweg. Der Wert war beim Schreiben
(Commit `fe6f1150`, 02:11) richtig und neun Minuten spaeter ueberholt: der Import
`rules/rollen-taxonomie.md` kam mit Commit `83f03e82` um 02:20 hinzu. Der Rebound von
9'548 B verteilt sich auf `rules/auto-verbesserungen.md` +3'921 B (41 %),
`rules/rollen-taxonomie.md` +3'559 B (neu, 37 %), `rules/anrede-kontakte.md` +1'279 B (13 %)
und `CLAUDE.md` +789 B (8 %). Nur 37 % gehen also auf den neuen Import, 63 % auf das
Wiederanwachsen schon importierter Rules. Den groessten Einzelbeitrag leistet
`rules/auto-verbesserungen.md`, genau die Datei, deren Auslagerung die Diaet war und deren
eigener Eintrag «260719 — Kontext-Diaet» mahnt, eine neue Verbesserung «nicht reflexhaft
hierhin» zu schreiben.

Groesster Einzelposten vor der Diaet: `rules/auto-verbesserungen.md` mit 36'029 B
(**34 %** des gesamten Grundkontexts). Ueberwiegend Betriebsprotokoll — launchd-Jobs,
Speicher-Messwerte, Vorfallschroniken —, das bei fachlicher Arbeit (Offerte, Baurecht,
Mail) keine Rolle spielt. Ausgelagert nach `rules/betrieb-chronik.md` (nicht importiert).

**Groesster Einzelposten: `rules/jans-dna.md`.** Sie bleibt bewusst importiert — sie rahmt jede
Texterzeugung und ist damit echter Grundkontext. Aber sie waechst, und zwar schnell:

| Messung | jans-dna.md | Anteil am Grundkontext |
|---|---|---|
| 29.07.2026 23:39 | 15'356 B | 14 % (zweitgroesster Posten) |
| **03.08.2026 22:30** | **32'428 B** | **28.1 % (groesster Posten)** |

In fuenf Tagen mehr als verdoppelt. Ursache ist der Kompilationsmechanismus: `twin` schreibt die
sechs Facetten-Artikel fort, `skills/twin/tools/build_dna.py` kompiliert sie in den Auto-Block
der Rule, und **keine Stufe dieser Kette misst oder meldet die resultierende Dateigroesse**. Der
zweitgroesste Posten ist `rules/auto-verbesserungen.md` mit 17'194 B.
Erzeuger-KB: `wissen/twin/` (dort in `CLAUDE.md` der Gegenverweis auf diese Messung).
*(Nachgemessen Wissens-Chef Run 23, 03.08.2026.)*

## Die Entscheidungsregel

Vor jedem neuen @-Import und vor jedem Anwachsen einer importierten Rule:

- **Automatisch (importiert)** nur, was in nahezu JEDER Session gilt: Ton, Anrede, Ablage,
  Quellenpflicht, Sicherheitsgrenzen.
- **Lazily (nicht importiert)** alles, was nur eine Rolle betrifft — Loops, Infrastruktur,
  eine einzelne KB, ein einzelner Skill. Der Betroffene liest es bei Bedarf.
- **Belege, Messwerte und Vorfallschroniken sind nie Grundkontext.** Sie gehoeren in eine
  Chronik, auf die die Kurzregel verweist.

Verankert als Nachtrag 29.07. im Eintrag «260719 — Kontext-Diaet» in
`rules/auto-verbesserungen.md`.

## Warum das mehr ist als Sparen

Die Lecture stellt Tip #5 («mehr Kontext = kluegeres Claude») und Tip #6 («Zeit fuers
Kontext-Tuning nehmen») bewusst nebeneinander — sie widersprechen sich nur scheinbar.
Mehr *relevanter* Kontext hilft; mehr *irrelevanter* verdraengt ihn. 36 KB Betriebsprotokoll
im Kontext einer Offerte machen die Offerte nicht besser, sondern kosten den Platz, den die
Fachgrundlage braucht.
