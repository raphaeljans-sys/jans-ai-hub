---
name: wissenscheck-monatlich
description: Monatlicher Wissens-Health-Check (Phase 1) ueber alle KBs unter wissen/. Takt am 03.08.2026 von 07:00 auf 19:30 verlegt (Empfehlung vollgas-radar 01.08.): der alte Slot lag 6 Min hinter dem operativen logbuch-radar (06:54) und 14 Min vor der vollgas-fruehwarnung (07:14). Bewusst NICHT am Monatsersten umgestellt — eine Cron-Aenderung re-armt die Task fuer denselben Tag und erzeugt einen Doppellauf (am 01.08. passiert und sofort zurueckgenommen).
---

Fuehre den monatlichen Wissens-Health-Check fuer den JANS AI Hub durch.

Kontext: Der Wissens-Layer liegt kanonisch auf dem NAS unter /Volumes/daten/jans-ai-hub/wissen/. Jeder Unterordner (ausser README.md und WISSEN-CLAUDE.md) ist ein Knowledge Base (KB) mit raw/ wiki/ outputs/ + CLAUDE.md + CHANGELOG.md.

Vorgehen:
1. Pruefe zuerst, ob das NAS gemountet ist (ls /Volumes/daten/jans-ai-hub/wissen/). Falls nicht erreichbar: kurz melden und abbrechen.
2. Liste alle KB-Ordner unter wissen/ auf.
3. Fuer JEDEN KB: fuehre den Skill `wissenscheck` aus, aber NUR Phase 1 (Audit und ablegen) — die 7 Audits, vollen Report nach <kb>/outputs/JJJJ-MM-TT_health-check.md schreiben, 1-Zeilen-Summary ins <kb>/CHANGELOG.md anhaengen. Phase 2 (interaktive Aktionen) NICHT ausfuehren — dieser Task laeuft unbeaufsichtigt.
4. Nach allen KBs: committe und pushe die Aenderungen im NAS-Repo (cd /Volumes/daten/jans-ai-hub && git add wissen/ && git commit && git push github main), gemaess Rule sync-kanonische-quelle.md und git-auto-push.md.
5. Gib eine kompakte Gesamt-Kurzfassung aus: je KB die Audit-Zahlen (A-G) und die wichtigsten Findings, plus die Pfade zu den Reports.

Halte dich an die Skill-Definition skills/wissenscheck/SKILL.md und die Rule wissens-bibliothekar.md. Aktuelle KBs (Stand 02.06.2026): baurecht, projekt-lessons.