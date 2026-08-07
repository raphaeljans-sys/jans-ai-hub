---
name: behoerden-zh-check
description: Wöchentliche Verfügbarkeits-/Änderungsprüfung der amtlichen Bau-Dokumente Stadt+Kanton ZH (Connector behoerden-zh.mjs); aktualisiert den NAS-Spiegel und meldet nur bei toten Links oder Änderungen.
---

Wöchentlicher Behörden-Dokumenten-Check für den JANS AI Hub (Skill planungsgrundlagen, Connector behoerden-zh.mjs).

ZWECK: Frühwarnung, falls die Stadt/der Kanton ZH ein amtliches Bau-Formular/Merkblatt umbenennt, verschiebt oder aktualisiert (CMS-Relaunch bricht dann die Direkt-URL). Hält ausserdem den lokalen NAS-Spiegel aktuell.

VORBEDINGUNG: Das NAS muss gemountet sein. Prüfe zuerst, ob /Volumes/daten existiert. Wenn nicht: brich ab und melde nichts (Mount-Problem ist Sache von heartbeat).

ABLAUF:
1. Führe den Live-Check aus (read-only, schreibt nichts):
   cd /Volumes/daten/jans-ai-hub/skills/planungsgrundlagen/connectors && node behoerden-zh.mjs --check --json
   Das JSON enthält pro Eintrag den status (aktuell/geaendert/neu/TOT) plus die Zählung (aktuell/geaendert/neu/tot).

2. Wenn es geänderte oder neue Dokumente gibt (geaendert>0 oder neu>0): führe danach den Sync aus, damit der NAS-Spiegel die neue amtliche Fassung übernimmt:
   node behoerden-zh.mjs --sync --json

3. AUSWERTUNG und MELDUNG:
   - Wenn ALLES "aktuell" ist (tot=0, geaendert=0, neu=0): NICHTS tun, KEINE Mail, KEINE Notiz. Stiller Lauf.
   - Wenn TOTE Links (tot>0): das ist echter Handlungsbedarf (URL gebrochen, vermutlich CMS-Relaunch). Sende eine knappe Mail an rj@raphaeljans.ch (Absender rj@raphaeljans.ch, via Apple Mail / osascript gemäss Hub-Konvention) mit Betreff "Behörden-Dokumente ZH: N toter/tote Link(s)" und liste je toten Eintrag die id, den Titel und die URL auf, plus den Hinweis: Registry-Datei behoerden-zh.registry.json prüfen und URL aktualisieren (neue Direkt-URL über die Behörden-Formularseite suchen, dann mit "node behoerden-zh.mjs --check --id <id>" verifizieren).
   - Wenn nur geänderte/neue Dokumente (tot=0, aber geaendert>0 oder neu>0): KEINE Mail nötig. Der Spiegel wurde in Schritt 2 aktualisiert. Notiere in einer knappen Zeile, welche Dokumente aktualisiert wurden (für das Session-Log / die Completion-Notification reicht das).

WICHTIG:
- Erfinde nie eine URL. Tote Links nur melden, nicht raten.
- Der Connector und die Registry liegen kanonisch auf dem NAS; nichts committen (der NAS-Selfcommit-Cron sichert Änderungen am _manifest.json ohnehin nicht, da der Dokumenten-Ordner gitignored ist — das ist korrekt so).
- Halte dich kurz und sachlich (JANS-Stil).
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Scripts ausfuehren,
Outputs zusammenfassen, Report formatieren) an einen Subagenten mit model: haiku delegieren
(bei textlastiger Zusammenfassung model: sonnet); der Hauptkontext orchestriert nur und
prueft das Ergebnis. Gleiches Ergebnis-Format wie bisher.
