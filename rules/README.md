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

- `jans-dna.md` — das immer-aktive Gehirn des Twin-Harness (Stil-Fingerabdruck von Raphael Jans), steht ganz oben im @-Import, rahmt jede Erzeugung vor jedem Fach-Skill; Auto-Block kompiliert aus `wissen/twin/wiki/` via `skills/twin/tools/build_dna.py`
- `anrede-kontakte.md` — Anredeform (Du/Sie) je Kontakt, Default Sie
- `antwort-formatierung.md` — Copy-Paste-Tauglichkeit (kein Markdown in Antworten mit Listen/Kontaktdaten)
- `auftrags-dekomposition.md` — bei Mehrfach-Auftraegen zuerst eine explizite Deliverable-Checkliste via TaskCreate, dann abarbeiten (verhindert verlorene Teilpunkte aus Buendelsaetzen)
- `auto-verbesserungen.md` — Auto-erfasste Verbesserungen; wird vom Hook `scripts/verbesserung-capture.sh` (UserPromptSubmit) gepflegt, jede Daueranweisung des Benutzers landet hier als datierter Eintrag
- `bkp-2017-referenz.md` — BKP-Nummern immer aus der offiziellen Liste in `references/bkp-2017/` nachschlagen, nie raten
- `dateinamen-konvention.md` — Datum-Prefix XXYYZZ (YYMMDD) für alle abgelegten Dokumente
- `dokument-layout-standard.md` — Cambria 11 pt, A4, schwarz, keine Farben/Linien (mit Generator-Vorlage in `templates/dokument-layout/`)
- `git-auto-push.md` — Nach jedem `git commit` immer direkt pushen (GitHub als Backup-Layer), ohne nachzufragen
- `identifikatoren-verifizieren.md` — Projektnr./Bauherrschaft/Adressen/Termine/Firmennamen/BKP, die in ein Dokument wandern, immer aus kanonischer Quelle verifizieren, nie raten
- `jans-absenderadresse.md` — verbindliche JANS-Firmenadresse/Briefkopf/Signatur, aktuelle vs. veraltete Adresse
- `mail-formatierung.md` — Aptos 12 pt als Standardschrift für alle E-Mails (Apple Mail, M365)
- `normen-referenz.md` — Baunorm-Aussagen (SIA/VKF/DIN/VSS/RAL) immer aus der Normen-KB/Original belegen, nie aus dem Gedaechtnis zitieren
- `osascript-apple-apps.md` — Apple-Apps (Mail, Calendar) immer über Bundle-ID ansprechen (Tahoe-Workaround)
- `projekt-ablage-stand.md` — Projektgebundenes in den SharePoint-Projektordner (eine Projekt-Wahrheit), Claude-Erzeugnisse unter `09_Dokumente/CLAUDE/`, Pflicht-Gedaechtnis `PROJEKT-STAND.md` (zuerst lesen, immer nachfuehren)
- `spec-methode.md` — bei JEDER Anfrage zuerst pruefen, ob die Spec-Methode (Karpathy/Marchese: erst Ziel als Spec aufdecken, dann bauen) angewandt werden soll; Gate-Test + Durchfuehrung via Skill `spec`, Faktenbasis KB `wissen/spec`
- `sync-kanonische-quelle.md` — NAS ist die einzige Wahrheit fuer geteilte Inhalte; nur auf NAS editieren, NAS-Repo commit+push; kein Git-Job ueber SMB
- `sync-single-committer.md` — **NICHT aktiv** (kein @-Import, historischer Kontext). Stopgap-Gedanke von 07.06.2026 gegen Git-ueber-SMB-Korruption (nur Mac Mini committet ueber `scripts/nas-git-commit.sh`). Reconciliation durch Spec-Training Lauf 9 (13.07.2026) abgeschlossen: der NAS-native Git-Cron (`scripts/nas-selfcommit.sh`, DSM alle 15 Min) ist live, alle Stationen committen faktisch direkt (`git-auto-push.md`), keine Korruption seit der DSM-Migration belegt (`sync-tasks/log/selfcommit-*.log`) — Details im Status-Banner der Datei selbst.
- `umlaute-konvention.md` — Immer ä/ö/ü statt ae/oe/ue in allen Outputs (E-Mails, Dokumente, Antworten)
- `wissens-bibliothekar.md` — KI-Bibliothekar-Rolle fuer den Wissens-Layer (`wissen/`): active-with-flagging, raw→wiki→outputs, CHANGELOG-Pflicht, Compounding-Loop; Health-Check via Skill `wissenscheck`

## Neue Rule anlegen

1. Neue Datei `neuer-bereich.md` hier im Ordner erstellen
2. In der CLAUDE.md einen Import hinzufuegen: `@/Volumes/daten/jans-ai-hub/rules/neuer-bereich.md`
3. CLAUDE.md committen und auf andere Stationen syncen

## Wichtig

- Rules werden nur geladen, wenn das NAS gemountet ist (`/Volumes/daten`)
- Bei Offline-Arbeit fallen die Rules weg — fuer kritische Regeln (Credentials, Sicherheit) deshalb weiterhin inline in CLAUDE.md im Git halten
- Rules sind fuer Verhaltens- und Stil-Regeln gedacht, nicht fuer Architektur-Dokumentation
