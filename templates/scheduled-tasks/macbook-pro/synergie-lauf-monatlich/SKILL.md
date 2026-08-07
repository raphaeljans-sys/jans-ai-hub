---
name: synergie-lauf-monatlich
description: Monatlicher Synergie-Orchestrator-Lauf (Struktur-Aufsicht des JANS AI Hub). Takt am 03.08.2026 von 04:40 auf 21:40 verlegt (Empfehlung vollgas-radar 01.08.): der alte Slot lag nur 26 Min hinter planungsgrundlagen-wartung (04:10), also unter der dokumentierten Taktentzerrung von min. 2 h; am 01.08. liefen beide tatsaechlich ueberlappend. Bewusst NICHT am Monatsersten umgestellt — eine Cron-Aenderung re-armt die Task fuer denselben Tag und erzeugt einen Doppellauf.
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