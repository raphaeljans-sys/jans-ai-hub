---
name: synergie-lauf-monatlich
description: STILLGELEGT am 13.08.2026 — abgeloest durch den taeglichen Task `synergie-lauf-taeglich` (17:00, Anordnung Raphael). Nicht geloescht, damit die Lauf-Historie 01–04 dieses Namens zurechenbar bleibt (Rule `rollen-taxonomie`: ein ersetzter Name kappt die ganze Historie in der Rollen-Bilanz). Vorgeschichte: Takt am 03.08.2026 von 04:40 auf 21:40 verlegt (Empfehlung vollgas-radar), Erstlauf 01.08.2026, Laeufe 02–04 am 25.07., 01.08. und 12./13.08.
---

Fuehre den monatlichen Lauf des Skills `synergie-orchestrator` aus (Freigabe Raphael 15.07.2026, Takt: monatlich im Nachtfenster).

Vorgehen (gemaess /Volumes/daten/jans-ai-hub/skills/synergie-orchestrator/SKILL.md):
1. NAS-Mount pruefen (/Volumes/daten). Ohne NAS: abbrechen, kein Ersatzlauf.
2. Inventar-Delta seit dem letzten Lauf ermitteln: Git-Log des NAS-Repos + CHANGELOGs der Wissens-KBs seit dem letzten Eintrag in /Volumes/daten/jans-ai-hub/wissen/koordination/SYNERGIE-REGISTER.md. Nur veraenderte/neue Harnesse und noch offene Register-Eintraege pruefen — bereits geprueft Paare NICHT neu aufrollen (Compounding).
3. Die 6 Pruef-Fragen auf die priorisierten Paare anwenden (Ketten-Luecke, Doppelrechnung, Compounding-Luecke, Service-Kombination, Entwurfsprozess-Potenzial, Redundanz). Jeden Befund am Objekt belegen (Datei/Contract-Zeile), nie aus der Erinnerung.
4. SYNERGIE-REGISTER.md nachfuehren (neue SYN-IDs fortlaufend; Status offener Eintraege aktualisieren), Laufbericht nach /Volumes/daten/jans-ai-hub/wissen/koordination/outputs/JJJJ-MM-TT_synergie-lauf-NN.md, Eintrag in /Volumes/daten/jans-ai-hub/wissen/koordination/CHANGELOG.md (neueste zuoberst).
5. Service-/Geschaeftsmodell-Vorschlaege NUR als ENTWURF formulieren — nie selbst in services/KATALOG.md aktivieren, keine Skills loeschen/mergen. Referenzdokument: docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/.
6. Leichtgewichtig bleiben: Inline-Analyse, KEIN Multi-Agent-Workflow-Fan-out, sofern eine Drossel-Regel aktiv ist (rules/auto-verbesserungen.md pruefen, z.B. 260714).
7. KEINE eigene Mail versenden — die Befunde stehen im Register/Laufbericht; hub-chef-taeglich nimmt Wesentliches ins Tagesbriefing auf.

Schweizer Hochdeutsch, echte Umlaute in Klartext-Erzeugnissen; NAS ist kanonische Quelle (nur dort editieren, Selfcommit sichert nach GitHub).
## Modell-Politik (Minimum Viable Model, Rule modellwahl-routine, 07.08.2026)
Die mechanischen Stufen dieses Laufs (Material sichten, Rohtext destillieren, Artikel
kompilieren, Register nachfuehren) an einen Subagenten mit model: sonnet delegieren; der
Hauptkontext orchestriert, faellt das Urteil und prueft das Ergebnis. Gleiches Ergebnis-Format
wie bisher.