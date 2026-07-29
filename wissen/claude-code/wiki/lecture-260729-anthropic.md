---
title: Anthropic Claude-Code-Lecture vom 29.07.2026 — Destillat
status: established
last_updated: 2026-07-29
sources: [raw/IMG_5458.jpeg … raw/IMG_5489.jpeg (32 Slides, fotografiert von Raphael Jans)]
links: [[kontext-architektur]], [[INDEX]]
---

# Anthropic Claude-Code-Lecture, 29.07.2026 — Destillat

Vollstaendiges Destillat der 32 fotografierten Slides. Rohmaterial in `raw/`.
Die daraus abgeleitete Umsetzung im Hub steht in
`docs/konzepte/260729-Anthropic-Lecture-Prinzipien/`.

## Rahmen

Einstieg der Lecture: `npm install -g @anthropic-ai/claude-code`.

**Claude Code ist eine neue Art von KI-Assistent** (fuenf Merkmale):
1. Terminal-basiert, keine IDE
2. Arbeitet mit allen Werkzeugen
3. Fuegt sich in bestehende Workflows ein
4. Allzweck — fuer fast alles nutzbar
5. Beliebig hackbar

Der letzte Punkt traegt die ganze Hub-Architektur: dass Claude Code hackbar ist, ist die
Voraussetzung dafuer, dass ein Architekturbuero daraus eine Fachumgebung bauen kann.

## Setup

`/allowed-tools` (Werkzeug-Berechtigungen) · `/install-github-app` (@claude auf Issues und
PRs) · `/config` (Benachrichtigungen) · `/terminal-setup` (Shift+Enter fuer Zeilenumbruch) ·
`/theme` (hell/dunkel) · macOS-Diktat einschalten.

## Die acht Tips (das Ruckgrat der Lecture)

| # | Tip | Kerngedanke |
|---|---|---|
| 1 | Codebase Q&A als Einstieg | Fragen an den Bestand stellen: kein Setup, Daten bleiben lokal, leichtester Start |
| 2 | Prompten ueben | Lernen, was Claude sofort «kapiert» und was praezisere Anweisung braucht |
| 3 | Claude die eigenen Werkzeuge beibringen | Bash-CLIs («nutze `-h`, um die Bedienung zu pruefen») und MCP-Server |
| 4 | Den Workflow auf die Aufgabe zuschneiden | Nicht ein Vorgehen fuer alles |
| 5 | Mehr Kontext = kluegeres Claude | Kontext ist der wirksamste Hebel |
| 6 | Sich Zeit fuer das Kontext-Tuning nehmen | Zwei Leitfragen: **fuer mich oder fuers Team?** und **automatisch oder lazily?** |
| 7 | CLAUDE.md, MCP-Server, Berechtigungen und Slash-Commands fuers Team konfigurieren — und in Git einchecken | Konfiguration ist Teamgut, nicht Privatsache |
| 8 | (Interludes) Keybindings und Multi-Claude | Bedienung und Parallelitaet |

## Steuerung: Claude die Werkzeuge auf die eigene Art nutzen lassen

Claude Code bringt rund ein Dutzend eingebauter Werkzeuge mit (bash, Dateisuche, Datei-
Listing, Lesen und Schreiben, Web-Abruf und -Suche, TODOs, Sub-Agenten). Die Lecture nennt
die Werkzeuge ausdruecklich den Grund fuer die Maechtigkeit des Tools.

Gezeigte Steuerungsmuster:
- «Schlage ein paar Fixes fuer Issue #8732 vor, dann implementiere den, den ich waehle»
  — **Optionen zuerst, Entscheidung beim Menschen, dann Umsetzung**
- «Identifiziere die Randfaelle, die in @app/tests/signupTest.ts fehlen, dann ergaenze die
  Tests. **think hard**» — Denk-Budget explizit anfordern
- «commit, push, pr» — Kurzkette fuer die Standard-Abgabe
- «Nutze 3 parallele Agenten, um Ideen zu sammeln» — Fan-out fuer Breite

## Kontext-Architektur (der inhaltliche Kern)

**Automatisch geladen (Memory-Hierarchie):**
- `/<enterprise root>/CLAUDE.md` — ueber alle Projekte geteilt
- `~/.claude/CLAUDE.md` — ueber alle Projekte geteilt, nur ich
- `project-root/CLAUDE.md` — eingecheckt, Team
- `project-root/CLAUDE.local.md` — nicht eingecheckt
- Abkuerzung: `#` erzeugt einen Memory-Eintrag

**Auf Abruf geladen (lazily):**
- `~/.claude/commands/foo.md` → `/user:foo`
- `.claude/commands/foo.md` → `/project:foo`
- Unterordner `a/commands/foo.md` → `/project:a:foo`
- **`a/CLAUDE.md` wird bei Bedarf nachgeladen**, nicht beim Start
- `@a` bzw. `@a/foo.py` zieht Ordner oder Datei in den Kontext

Die Trennung «automatisch gegen lazily» ist die eigentliche Lehre: alles Automatische
kostet in **jeder** Session Kontext, auch wenn es fast nie gebraucht wird.

## Teilen mit dem Team

|  | Enterprise-Policy (geteilt) | Global (nur ich) | Projekt (geteilt) | Projekt (nur ich) |
|---|---|---|---|---|
| Memory | `/Library/Application Support/ClaudeCode/CLAUDE.md` | `~/.claude/CLAUDE.md` | `CLAUDE.md` | `CLAUDE.local.md` |
| Slash-Commands | — | `~/.claude/commands/` | `.claude/commands/` | — |
| Berechtigungen | `/Library/Application Support/ClaudeCode/policies.json` | `~/.claude/settings.json` | `.claude/settings.json` | `.claude/settings.local.json` |
| MCP-Server | — | `claude mcp` | `.mcp.json` | `claude mcp` |

Die Spalte «Projekt (geteilt)» ist in der Lecture hervorgehoben — das ist die Spalte, die
in Git gehoert (Tip #7). `/memory` zeigt die geladenen Memory-Dateien inkl. der
Unterordner-Dateien.

## Keybindings

Shift+Tab Bearbeitungen automatisch annehmen · `#` Memory anlegen · `!` Bash-Modus ·
`@` Datei/Ordner in den Kontext · Esc abbrechen · Doppel-Esc in der Historie
zurueckspringen (`--resume` zum Fortsetzen) · Ctrl+R ausfuehrliche Ausgabe · `/vibe`.

## SDK

- Programmatischer, tiefer Zugang zu Claude Code
- Fuer CI, nicht-interaktive Kontexte, Automation und als Baustein interaktiver Anwendungen
- Zum Zeitpunkt der Lecture: CLI (TypeScript- und Python-SDKs angekuendigt)
- Als Unix-Werkzeug gedacht — **pipe in, pipe out**:
  `git status | claude -p "what are my changes?" --output-format=json | jq '.result'`
  bzw. `claude -p "what did i do this week?" --allowedTools Bash(git log:*) --output-format json`
- Schichtung: eigene agentische Anwendung → Claude Code SDK → Anthropic/Bedrock/Vertex API
  → Claude-Modelle

## Multi-Claude

Vier Wege, mehrere Instanzen parallel zu fahren:
1. Mehrere Checkouts in getrennten Terminal-Tabs
2. Ein Checkout mit **git worktrees**
3. SSH + tmux
4. GitHub Actions, Jobs parallel starten

## Was die Lecture NICHT behandelt

Kein Wort zu Ressourcengrenzen paralleler Laeufe (Speicher, Swap), kein Wort zu Kosten-
kontrolle im Dauerbetrieb und nichts zu Netz-/Mount-Abhaengigkeiten. Genau dort liegen die
Betriebserfahrungen des Hubs (siehe `rules/betrieb-chronik.md`) — die Lecture zeigt, was
moeglich ist, nicht, was eine 16-GB-Maschine im Dauerlauf traegt.
