# KB `claude-code` — Wissen ueber das Werkzeug selbst

## Warum es diese KB gibt

Der JANS AI Hub ruht vollstaendig auf Claude Code. Wissen ueber das Werkzeug — was es kann,
wie es Kontext laedt, welche Mechanik wofuer gedacht ist — bestimmt darum direkt, wie gut
der Hub arbeitet. Bis 29.07.2026 lag dieses Wissen verstreut in CLAUDE.md, in Rules und in
Session-Erinnerungen. Diese KB sammelt es an einem Ort und laesst es kompoundieren:
Lectures, Release-Notes, Doku-Funde und die eigenen Betriebserfahrungen.

**Abgrenzung:** Hier steht, was das WERKZEUG kann und wie man es richtig einsetzt. Was JANS
fachlich weiss, steht in den Fach-KBs. Wie der Hub konkret konfiguriert ist, steht in
`CLAUDE.md` und den Rules — diese KB begruendet die Konfiguration, ersetzt sie nicht.

## Fokus-Bereiche

- **Kontext-Architektur** — CLAUDE.md-Hierarchie (enterprise · user · project · local),
  Sub-CLAUDE.md on demand, @-Mentions, Slash-Commands, was automatisch gegen lazily laedt
- **Werkzeuge** — eingebaute Tools, eigene Bash-CLIs, MCP-Server, Sub-Agenten
- **Teilen im Team** — was wohin gehoert und was in Git eingecheckt wird
- **SDK / Automation** — `claude -p`, Ausgabeformate, Verkettung als Unix-Werkzeug
- **Parallelitaet** — mehrere Instanzen, Worktrees, Ressourcengrenzen
- **Bedienung** — Keybindings, Modi, Wiederaufnahme

## Schreibregeln dieser KB

- Jede Aussage bekommt eine **Quelle** (Lecture-Slide, Doku-URL, eigene Messung mit Datum).
  Was Claude Code kann, wird **nie aus dem Gedaechtnis** behauptet — das Werkzeug aendert
  sich schnell, und eine falsche Faehigkeitsannahme kostet direkt Arbeitszeit.
- **Eigene Messungen sind vollwertige Quellen** und werden als solche gekennzeichnet
  (`sources: [messung-260729-grundkontext]`). Der Hub ist ein Grossnutzer; seine Betriebs-
  erfahrung ist oft praeziser als die allgemeine Doku.
- **Versions-Disziplin:** Was an eine Version gebunden ist, traegt Datum und, wenn bekannt,
  die Version. Eine Aussage ohne Datum ist wertlos, sobald sie nicht mehr stimmt.
- **Umsetzung verlinken:** Wo ein Prinzip im Hub konkret umgesetzt wurde, verweist der
  Artikel auf die Datei (Rule, Script, Konzept) — sonst bleibt es Theorie.
- Schweizer Hochdeutsch, echte Umlaute, `ss` statt `ß` (Rule `umlaute-konvention`).

## Ordner

- `raw/` — Quell-Dumps (Lecture-Fotos, Transkripte, Doku-Auszuege). Nie editieren.
- `wiki/` — kompilierte Artikel + `INDEX.md` + `QUESTIONS.md`. Claudes Domaene.
- `outputs/` — Reports aus konkreten Fragen (`JJJJ-MM-TT_titel.md`).

Meta-Schema: `wissen/WISSEN-CLAUDE.md`. Bibliothekar-Regeln: Rule `wissens-bibliothekar`.
