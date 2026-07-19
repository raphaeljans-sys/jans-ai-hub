# Kontext-Diät: Token-Reduktion im JANS AI Hub

Stand: 19.07.2026, Vorschlag zur Freigabe (es wird nichts gelöscht oder gekürzt ohne OK)

## Ausgangslage

Auslöser: Wochenlimit am 14.07.2026 bei 81 %, seither Drossel-Regel 260714. Ergänzend die Impulse aus dem Video «Copy This Claude Setup, Never Hit a Token Limit Again» (Austin Marchese, Ordner «Token reduzieren» auf dem Schreibtisch, 25 Screenshots ausgewertet).

Gemessene Grundlast, die in JEDE Session geladen wird (beide Stationen, jeder Scheduled Task, jeder Trainings-Lauf):

| Baustein | Grösse |
|---|---|
| CLAUDE.md | 50.4 kB |
| 19 importierte Rules (via @-Import) | 112.8 kB |
| davon auto-verbesserungen.md | 51.8 kB |
| davon jans-dna.md | 15.4 kB |
| Total Grundkontext | ca. 163 kB, grob 45'000 Tokens |

Multiplikator: aktuell rund 14 aktive Scheduled-Läufe pro Tag plus die interaktiven Sessions auf zwei Stationen. Die Grundlast allein verbraucht damit in der Grössenordnung 0.5 bis 1 Mio Tokens pro Tag, bevor irgendeine Arbeit passiert. Ziel der Kontext-Diät: Grundlast halbieren, ohne Funktions- oder Stilverlust.

## Teil 1: Kürzungsvorschlag CLAUDE.md + Rules

### A. CLAUDE.md: 50.4 kB auf ca. 20 kB

1. Skill-Tabelle (grösster Block): jede Zeile auf einen Einzeiler kürzen (Skill-Name, Pfad, maximal 10 Wörter Zweck). Die Langbeschreibungen stehen bereits vollständig im description-Feld der jeweiligen SKILL.md und werden dort beim Aufruf ohnehin geladen. Die Tabelle ist heute doppelte Datenhaltung. Einsparung ca. 20 kB.
2. Agents-Tabelle: ebenso Einzeiler. Die Agent-Beschreibungen liegen in den agents/*.md und erscheinen der Session zusätzlich über die Agent-Liste. Einsparung ca. 6 kB.
3. Wissens-Layer-Sektion: KB-Aufzählung als Einzeiler-Tabelle, Details gehören in wissen/WISSEN-CLAUDE.md (wird beim Arbeiten am Wissens-Layer ohnehin zuerst gelesen). Einsparung ca. 3 kB.
4. Unverändert bleiben: Netzwerk, E-Mail-Konten, M365-Konfiguration, Multi-Station-Regeln, Sync-Mechanik, Projektstruktur. Das ist der funktionale Wegweiser (Prinzip «CLAUDE.md als Verzeichnis, nicht als Dokumentation»).

### B. auto-verbesserungen.md: 51.8 kB auf ca. 15 kB

Die Datei ist zur Chronik gewachsen. Vorschlag: Split in einen aktiven Teil (bleibt importiert) und ein Archiv `auto-verbesserungen-archiv.md` (liegt daneben, wird NICHT importiert, bleibt via Grep/Verweis auffindbar).

1. VOLLGAS-Serie konsolidieren: die Einträge 260711, 260712, 260712b, 260712c, 260712d, 260712e, 260713 und 260714 (zusammen ca. 15 kB) widersprechen sich teilweise und sind durch die Drosselung überholt. Ersatz durch EINEN Eintrag «Aktueller Takt-Zustand» (ca. 15 Zeilen): Drossel aktiv, Trainings 1x täglich im Nachtfenster 22:00 bis 06:00, operative Briefings am Morgen unverändert, Rücktaktung 10.08. via Task token-drosselung-100810, Wiederhochfahren nur auf Anweisung. Die Historie wandert vollständig ins Archiv. Der One-Time-Task token-drosselung-100810 wird auf den Archiv-Pfad nachgeführt.
2. Bereits promotete Einträge auf Verweis-Einzeiler kürzen: 260602 Sync (eigene Rule sync-kanonische-quelle.md), 260602 Korrektur-Harness (Skill korrektur plus Stop-Hook), 260604 Ordner-Benennung (in dateinamen-konvention.md verankert), 260616 Disclaimer-Regeln und weitere, die wortgleich in Rules/Skills übernommen wurden.
3. Auslöser-Zitate kürzen: die langen wörtlichen Benutzer-Zitate je Eintrag sind Historie und wandern ins Archiv; im aktiven Teil bleibt je Regel der imperative Kern («Regel» und «Gilt für»).
4. Vollumfänglich aktiv bleiben (nur redaktionell gestrafft): 260716 Super-Brain, 260710 Radar-Briefing, 260709 Mails/Anhänge lesen, 260702 bexio-Freigabe, 260629 Baurecht-Destillat zuerst, 260627 und 260627b Geodaten/Baukörper, 260624 Maximalvolumen, 260619 vollständige Pfade, 260611 Render-Weiche, 260626 neutrale Submission und die übrigen fachlich aktiven Regeln.

### C. jans-dna.md: 15.4 kB auf ca. 10 kB (separater Entscheid)

Der Auto-Block wird aus den sechs Facetten-Artikeln kompiliert (build_dna.py). Vorschlag: Kompilierung auf eine kompakte Marker-Fassung umstellen. Die vielen Einzelfall-Präzedenzen (Fidelity-Datumseinträge) bleiben in den Facetten-Wikis erhalten, wo der twin-chef sie bei der Veredelung ohnehin liest; in der immer geladenen DNA-Rule stehen nur die Marker und Kernregeln. Risiko für die Twin-Fidelity ist gering, aber nicht null, deshalb als eigener Punkt zur Freigabe. Umsetzung über das Build-Script, nie von Hand im Auto-Block.

### D. Mittlere Rules: zusammen ca. 6 kB Ersparnis

| Rule | heute | Ziel | Massnahme |
|---|---|---|---|
| dokument-layout-standard.md | 7.0 kB | 4.5 kB | Build-Workflow und Generator-Details in templates/dokument-layout/ verschieben |
| mail-formatierung.md | 3.8 kB | 1.5 kB | Font-Installations-Anleitung (Einmal-Setup) nach docs/, Kern behalten |
| osascript-apple-apps.md | 3.7 kB | 2.0 kB | Kern-Pattern und Bundle-IDs behalten, lange Beispiele nach docs/ |
| sync-kanonische-quelle.md | 3.4 kB | 2.0 kB | Historien-Updates straffen |

Kleine Rules unter 2.5 kB bleiben unverändert. Nicht importierte Dateien (README.md, sync-single-committer.md) kosten keine Tokens, keine Aktion.

### Wirkung Teil 1

Grundkontext von ca. 163 kB auf ca. 80 bis 90 kB, das heisst von grob 45'000 auf 22'000 bis 25'000 Tokens je Session. Wirkt auf jede Session jeder Station und jeden Scheduled-Lauf, dauerhaft.

## Teil 2: Minimum Viable Model für die Lern-Loops

Prinzip aus dem Video, deckungsgleich mit der bestehenden Vorgabe in Rule 260712b («mechanische Stufen auf günstige Modelle»), bisher nicht umgesetzt. Mechanische Stufen (lesen, destillieren, formatieren, Inventar nachführen) laufen auf Haiku oder Sonnet; Urteils- und Verifikationsstufen (Refuter, Status-Hebung, Stil-Urteil) bleiben auf dem Hauptmodell. Umsetzung je Task im SKILL.md über die Modell-Angabe der Agent-/Workflow-Stufen.

| Scheduled Task | Vorschlag |
|---|---|
| konversations-log | ganzer Lauf auf Sonnet (reines Destillat) |
| normen-training-nacht | Destillat-Stufen Haiku/Sonnet, Refuter-Verifikation Hauptmodell |
| immobewertung-training | Einarbeitungs-Stufen Sonnet, Verifikation Hauptmodell |
| twin-mail-training | Korpus-Extraktion Haiku, Stil-Analyse Hauptmodell |
| spec-training | Auswertung Sonnet, KB-Hebungen Hauptmodell |
| wettbewerbs-dna-training (ab 20.07.) | Jurybericht-Destillate Sonnet, Refuter Hauptmodell |
| heartbeat-daily, behoerden-zh-check, tenant-hygiene-weekly | Haiku (Checks sind script-getrieben) |
| logbuch-radar, hub-chef-taeglich, mahnwesen, zahlungsabgleich, ag-gruendung-monitor | unverändert Hauptmodell (Urteils- und Beleg-Arbeit) |

## Teil 3: Vorfilter-Scripts (grep-Prinzip)

Deterministische Vorstufe vor den lese-intensivsten Routinen: ein Script filtert das Rohmaterial, Claude liest nur den Extrakt. Scripts kosten null Tokens und halluzinieren nie.

1. Mail-Vorfilter für logbuch-radar und hub-chef: Script extrahiert je Mail Absender, Betreff, Datum, Beträge, Fristen und Frage-Sätze in eine kompakte Liste; Claude priorisiert auf dem Extrakt und öffnet nur die relevanten Threads samt Anhängen im Original. Die Lese-Disziplin aus Regel 260709 bleibt unangetastet: bei status-relevanten Belegen wird weiterhin das Original-PDF vollständig gelesen; der Vorfilter reduziert die Breite, nicht die Beleg-Tiefe.
2. Session-Vorfilter für konversations-log: scripts/konversations-extract.sh um einen jq-Filter erweitern, der aus den Session-JSONL nur die User- und Assistant-Texte zieht (Tool-Outputs und Zwischenschritte raus), bevor destilliert wird.

## Nicht übernommen (bewusst)

Engine-Swap auf GLM/DeepSeek und lokale Modelle (Datenschutz Kundendaten, Qualitätsleitplanken), Codex als Zweit-Engine (Bruch mit dem Harness, zweites Abo), Text-als-Bild (kostet bei Claude eher mehr Tokens als Text).

## Umsetzungsreihenfolge nach Freigabe

1. auto-verbesserungen.md splitten (Archiv anlegen, aktiven Teil konsolidieren), Task token-drosselung-100810 nachführen
2. CLAUDE.md Tabellen auf Einzeiler kürzen
3. Mittlere Rules straffen, ausgelagerte Inhalte nach docs/ bzw. templates/
4. MVM-Modell-Angaben in die Task-SKILL.md der Lern-Loops
5. Vorfilter-Scripts bauen und in logbuch-radar/konversations-log einhängen
6. jans-dna.md kompakt kompilieren (nur bei separater Freigabe)
7. NAS-Repo commit + push, Kontrolle nach einer Woche im /usage-Vergleich
