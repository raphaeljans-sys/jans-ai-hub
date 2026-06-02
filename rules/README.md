# JANS AI Hub - Rules (Verhaltensregeln)

Dieser Ordner enthaelt geteilte Verhaltens- und Stil-Regeln, die Claude in jeder Konversation befolgen soll.

## Konzept

Im Unterschied zu Skills (die bei Bedarf getriggert werden) und Agents (die als Sub-Agents aufgerufen werden), sind Rules **immer aktiv**. Sie werden aus der CLAUDE.md im Projekt-Repo ueber die `@`-Import-Syntax eingebunden und sofort in jede Konversation geladen.

## Speicherort

`/Volumes/daten/jans-ai-hub/rules/` (NAS)

## Vorteile gegenueber Inline-Regeln in CLAUDE.md

- Eine zentrale Datei pro Thema, einzeln aenderbar
- Aenderungen sofort auf allen Stationen wirksam (MacBook Pro, Mac Mini) sobald NAS gemountet
- Kein Git-Commit/Push noetig fuer Regel-Aenderungen
- Gleiche Logik wie skills/, agents/, commands/

## Aktive Rules

- `antwort-formatierung.md` — Copy-Paste-Tauglichkeit (kein Markdown in Antworten mit Listen/Kontaktdaten)
- `auftrags-dekomposition.md` — bei Mehrfach-Auftraegen zuerst eine explizite Deliverable-Checkliste via TaskCreate, dann abarbeiten (verhindert verlorene Teilpunkte aus Buendelsaetzen)
- `auto-verbesserungen.md` — Auto-erfasste Verbesserungen; wird vom Hook `scripts/verbesserung-capture.sh` (UserPromptSubmit) gepflegt, jede Daueranweisung des Benutzers landet hier als datierter Eintrag
- `bkp-2017-referenz.md` — BKP-Nummern immer aus der offiziellen Liste in `references/bkp-2017/` nachschlagen, nie raten
- `dateinamen-konvention.md` — Datum-Prefix XXYYZZ (YYMMDD) für alle abgelegten Dokumente
- `dokument-layout-standard.md` — Cambria 11 pt, A4, schwarz, keine Farben/Linien (mit Generator-Vorlage in `templates/dokument-layout/`)
- `git-auto-push.md` — Nach jedem `git commit` immer direkt pushen (GitHub als Backup-Layer), ohne nachzufragen
- `identifikatoren-verifizieren.md` — Projektnr./Bauherrschaft/Adressen/Termine/Firmennamen/BKP, die in ein Dokument wandern, immer aus kanonischer Quelle verifizieren, nie raten
- `mail-formatierung.md` — Aptos 12 pt als Standardschrift für alle E-Mails (Apple Mail, M365)
- `osascript-apple-apps.md` — Apple-Apps (Mail, Calendar) immer über Bundle-ID ansprechen (Tahoe-Workaround)
- `sync-kanonische-quelle.md` — NAS ist die einzige Wahrheit fuer geteilte Inhalte; nur auf NAS editieren, NAS-Repo commit+push; kein Git-Job ueber SMB
- `umlaute-konvention.md` — Immer ä/ö/ü statt ae/oe/ue in allen Outputs (E-Mails, Dokumente, Antworten)

## Neue Rule anlegen

1. Neue Datei `neuer-bereich.md` hier im Ordner erstellen
2. In der CLAUDE.md einen Import hinzufuegen: `@/Volumes/daten/jans-ai-hub/rules/neuer-bereich.md`
3. CLAUDE.md committen und auf andere Stationen syncen

## Wichtig

- Rules werden nur geladen, wenn das NAS gemountet ist (`/Volumes/daten`)
- Bei Offline-Arbeit fallen die Rules weg — fuer kritische Regeln (Credentials, Sicherheit) deshalb weiterhin inline in CLAUDE.md im Git halten
- Rules sind fuer Verhaltens- und Stil-Regeln gedacht, nicht fuer Architektur-Dokumentation
