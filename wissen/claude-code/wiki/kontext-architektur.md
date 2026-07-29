---
title: Kontext-Architektur des Hubs — was wann laedt
status: established
last_updated: 2026-07-29
sources: [messung-260729-grundkontext, lecture-260729-anthropic]
links: [[lecture-260729-anthropic]], [[INDEX]]
---

# Kontext-Architektur des Hubs — was wann laedt

Gemessener Ist-Zustand am 29.07.2026, eingeordnet nach der Lecture-Systematik
(automatisch gegen lazily). Alle Zahlen sind eigene Messungen dieses Tages.

## Die vier Schichten im Hub

| Schicht | Ort | Zustand 29.07.2026 |
|---|---|---|
| Enterprise (geteilt) | `/Library/Application Support/ClaudeCode/CLAUDE.md` | **nicht vorhanden** — bewusst, siehe [[QUESTIONS]] Punkt 1 |
| Global (nur ich) | `~/.claude/CLAUDE.md` | **seit 29.07. vorhanden**, 3'269 B, auf beiden Stationen identisch. Quelle `templates/user-level/CLAUDE.md`, verteilt via `scripts/user-claude-sync.sh` |
| Projekt (geteilt) | `CLAUDE.md` + 19 @-importierte Rules | 87'398 B nach der Diaet (vorher 105'573 B) |
| Projekt (nur ich) | `.claude/settings.local.json` | vorhanden, stationsspezifisch |

Dazu **19 Sub-CLAUDE.md** unter `wissen/<kb>/` — sie laden **on demand**, nicht beim Start.
Der Hub hat dieses Lecture-Muster also schon vor der Lecture umgesetzt.

## Das Grundkontext-Budget (Messung 29.07.2026)

| Stand | Bytes | grob Token |
|---|---|---|
| vor der Diaet 2.0 | 105'573 | ~26'400 |
| nach der Diaet 2.0 | 87'398 | ~21'800 |
| Ersparnis | 18'175 | 17 % |

Groesster Einzelposten vor der Diaet: `rules/auto-verbesserungen.md` mit 36'029 B
(**34 %** des gesamten Grundkontexts). Ueberwiegend Betriebsprotokoll — launchd-Jobs,
Speicher-Messwerte, Vorfallschroniken —, das bei fachlicher Arbeit (Offerte, Baurecht,
Mail) keine Rolle spielt. Ausgelagert nach `rules/betrieb-chronik.md` (nicht importiert).

Zweitgroesster Posten: `rules/jans-dna.md` mit 15'356 B (14 %). Bleibt bewusst importiert —
sie rahmt jede Texterzeugung und ist damit echter Grundkontext.

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
