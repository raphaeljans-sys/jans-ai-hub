---
name: token-drosselung-100810
description: DEAKTIVIERT 25.07.2026 auf Anweisung Raphael (Vollgas laeuft offen weiter). Frueher: One-Time 10.08.2026 Rücktaktung auf 5x-Abo-Sparbetrieb. Wieder scharfschalten nur, wenn Vollgas beendet werden soll.
---

Heute endet die TOKEN-VOLLGAS-Phase (Original-Eintrag 260712b im Archiv /Volumes/daten/jans-ai-hub/rules/auto-verbesserungen-archiv.md; aktiver Takt-Zustand: Eintrag 260714 in rules/auto-verbesserungen.md): Ab jetzt steht nur noch das 5x-Abo zur Verfuegung. Fuehre die Drosselung auf Sparbetrieb aus. HINWEIS: Seit 14.07. ist bereits die Drossel-Taktung aktiv (1x taeglich, Nachtfenster) — pruefe je Punkt, ob er schon umgesetzt ist, und takte nur, was noch abweicht.

1. Stand erheben: list_scheduled_tasks + die letzten outputs/-Reports der Lern-KBs unter /Volumes/daten/jans-ai-hub/wissen/ (normen, baurecht, twin, immobilienbewertung, spec, energie, planungsgrundlagen) lesen. Pruefe je Loop, ob die ENDBEDINGUNG erreicht ist ("SIA/VKF KOMPLETT", "VERIFIKATIONS-RUECKSTAND ABGEBAUT", Inventar/Curriculum abgearbeitet).
2. Umtakten auf DIESER Station (MacBook Pro) via update_scheduled_task:
   - Loops mit erreichter Endbedingung: enabled false (deaktivieren, nicht loeschen) bzw. bei baurecht auf Erhaltungs-Takt woechentlich Mo 23:30 ('30 23 * * 1').
   - normen-training-nacht (falls noch offen): auf 1x naechtlich 22:00 ('0 22 * * *'), Batch-Volumen im Prompt auf 8-12 Positionen senken, Workflows nur noch fuer die Verifikations-Stufe.
   - twin-mail-training: zurueck auf 1x taeglich 06:42 ('42 6 * * *'), Beschreibung ohne Vollgas-Zusatz.
   - wissens-chef: auf woechentlich So 17:00 ('0 17 * * 0').
   - spec-training: zurueck auf alle 3 Tage ('20 8 */3 * *').
   - immobewertung-training: unveraendert (alle 2 Tage).
   - Beschreibungen entsprechend bereinigen (Zusatz "TOKEN-VOLLGAS" entfernen, "Sparbetrieb ab 11.08." vermerken).
   - Nachtfenster-Regel 260711 lebt wieder auf: alle Trainings-Crons in das Fenster 22:00-06:00 legen, gestaffelt.
3. Mac Mini per SSH (raphaeljans@100.120.219.12) zuruecktakten — die Intensivphase-Tageslaeufe dort laufen als launchd-Agents, NICHT als Crontab:
   - launchctl bootout gui/501/ch.jans.training-energie und gui/501/ch.jans.training-plg ausfuehren und die plists ~/Library/LaunchAgents/ch.jans.training-energie.plist + ch.jans.training-plg.plist loeschen (die App-Nacht-Tasks energie-training 22:30 / planungsgrundlagen-training 00:30 uebernehmen wieder allein).
   - ch.jans.training-normen: falls DIN/VSS/RAL noch offen, per plist-Edit auf 1x naechtlich 21:30 reduzieren (StartCalendarInterval nur noch ein Eintrag) und launchctl bootout+bootstrap zum Neuladen; falls komplett, ganz entfernen wie oben.
   - In /Volumes/daten/jans-ai-hub/scripts/cron-training-mini.sh die Zeile "export DISPATCH_MAX_BUDGET_USD=25" entfernen (zurueck auf Default 5) und die Batch-Volumen-Vorgaben in den SKILL.md-Prompts der Mini-Tasks (energie-training) auf die Normal-Werte senken lassen (Pendenz oder SSH-Edit der SKILL.md nur nach den bekannten Regeln; scheitert es, als offenen Punkt melden).
4. Rule nachfuehren: In /Volumes/daten/jans-ai-hub/rules/auto-verbesserungen.md beim konsolidierten Eintrag 260714 (Takt-Zustand) eine Zeile "**Vollzogen am 10.08.2026:** <was umgetaktet/beendet wurde>" ergaenzen; im Archiv auto-verbesserungen-archiv.md nichts aendern. Die Trainingsprogramme unter wissen/*/training/PROGRAMM.md: Sektion "Token-Vollgas bis 10.08.2026" als beendet markieren (kurzer Zusatz, nicht loeschen).
5. BERICHT: Kurzer Abschlussbericht (was erreicht in der Vollgas-Phase: Destillat-/Artikel-Zahlen je KB aus den Registern, was beendet, was gedrosselt, was offen bleibt) nach /Volumes/daten/jans-ai-hub/wissen/koordination/outputs/2026-08-10_vollgas-abschluss.md schreiben, prominente CHANGELOG-Zeile in wissen/koordination/CHANGELOG.md (der hub-chef nimmt es ins Tagesbriefing). Vor Commits git pull; dann committen/pushen (Rules git-auto-push, sync-kanonische-quelle).

Strikt: nichts loeschen ausser den genannten Intensivphase-Artefakten; Schweizer Hochdeutsch, echte Umlaute ä/ö/ü.