# Fidelity-Review 2026-07-25c — abgebrochen (Kollision + M365-Ausfall)

## Kollision (Rule 260724, Kollisionsschutz)
Beim Start dieses Laufs (twin-fidelity-review, 15:30) lief bereits eine zweite Instanz
desselben Tasks auf demselben Host: `ps aux` zeigte PID 40520, gestartet 15:27, mit
identischem Prompt (`--- name: twin-fidelity-review ...`). Ausserdem war der letzte reguläre
Fidelity-Review des Tages (`2026-07-25b_fidelity.md`, Fidelity 85) bereits um 14:19–14:30
abgeschlossen und committet (`3444c00d nas-selfcommit: 21 Datei(en) 2026-07-25 14:30`).

Gemäss Rule 260724 daher **zurückgetreten**: keine Edits an den sechs Facetten-Artikeln,
keine Änderung an `wissen/twin/wiki/QUESTIONS.md`, keine Neukompilierung von
`rules/jans-dna.md`, kein `git commit`/`push`. Dieser Report ist die einzige Ablage dieses
Laufs und wird vom nativen `nas-selfcommit.sh` (alle 15 Min) kollisionsfrei übernommen.

## Operativer Befund: M365-Connector in dieser Session nicht funktionsfähig
Unabhängig von der Kollision: der für Schritt 2 (Goldprobe-Pull) vorgesehene Weg über den
Microsoft-365-Connector war in dieser Session nicht nutzbar.

- `mcp__microsoft-365__m365_search_commands` lieferte durchgehend:
  `Failed to retrieve commands: Error: @pnp/cli-microsoft365 npm package not found or
  allCommandsFull.json file not found`.
- `mcp__microsoft-365__m365_run_command` quittierte jeden Befehl mit
  `/bin/sh: <command>: command not found` — die CLI-Bridge selbst ist nicht installiert/
  erreichbar, nicht nur ein einzelner Befehl.
- Es existiert in dieser Session kein `outlook_email_search`-Tool und keine MCP-Ressourcen
  unter dem Server `microsoft-365` (`ListMcpResourcesTool` → leer).

Das betrifft vermutlich auch die parallel laufende Instanz (PID 40520), falls sie in
derselben Umgebung gestartet wurde. Sollte der nächste reguläre Fidelity-Review ebenfalls
ohne frische Goldprobe auskommen müssen, lohnt sich ein Blick auf die npm-Installation von
`@pnp/cli-microsoft365` auf dieser Station (vermutlich MacBook Pro, da Mac Mini der
Committer ist) — Rule `git-auto-push`/`sync-kanonische-quelle` betroffen sind nicht, nur die
Mail-Ziehung für den Goldproben-Vergleich.

## Ergebnis
Kein neuer Fidelity-Score, keine neuen Marker, keine neuen Selbstfragen in diesem Lauf —
bewusst, um die laufende Zweitinstanz nicht zu stören. Nächster reguläser Review sollte den
M365-Connector-Status zuerst prüfen, bevor er Schritt 2 versucht.
