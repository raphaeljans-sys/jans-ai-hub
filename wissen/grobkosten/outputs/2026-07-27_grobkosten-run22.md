# Trainings-Run 22 (27.07.2026) — Formelle Sättigungsmeldung (Endbedingung PROGRAMM.md); Taktungsfehler-Beweis verschärft

Kollisionscheck (`ps`): einziger `claude -p`-Treffer mit `grobkosten-training` im Prompt ist
die eigene Prozessinstanz (PID 14979, Parent-Runner 14978). Kein Zweitlauf desselben Loops auf
diesem Host.

## Elfter Lauf in Folge (12–22) ohne neuen Kennwert

`wiki/kennwerte.md`, `wiki/QUESTIONS.md`, `training/quellen-inventar.md` und `CHANGELOG.md`
bleiben in diesem Lauf **unverändert**. Ein erneuter Bibliotheks-/Formel-/Ereignis-Trigger-Sweep
wurde bewusst nicht wiederholt: Run 17 hat den kanonischen Sweep zuletzt gefahren (Nullbefund),
Runs 18–21 haben das bestätigt. Die verbleibenden 5 offenen Inventar-Zeilen (Waedenswil-Tool
1'566 CHF/m³ ohne explizites GV, Langnau Giebelweg 12 nur Annahme-Kosten, Pre-Check-Tool
Waedenswil BKP1-9, Zürcher-Baukostenindex-Referenztabelle 1939–2004 bereits über die externe
Fortführung genutzt) sind alle bereits bewertet und auf einen der beiden offenen strukturellen
Blocker zurückgeführt (Frage 1: BKP-1-9-vs-1-5-Bezeichnung; Frage 2: Standard-Klassifikation
"norm, eloquent" mutmasslich Vorlagentext) — beide sind laut `wiki/QUESTIONS.md` **nur durch
Raphael** auflösbar, nicht autonom.

**Damit ist die Endbedingung aus `training/PROGRAMM.md` inhaltlich erreicht:** kein
verwertbares neues Material mehr auffindbar, die verbleibenden offenen Punkte sind auf zwei
konkrete, an Raphael delegierte Fachentscheide reduziert (nicht auf fehlendes Quellmaterial).
Formale Empfehlung dieses Laufs: **Rücktaktung dieses Loops auf einen Ereignis-Trigger**
(neuer Kostenstand aus `kostenkontrolle`, ODER Raphaels Entscheid zu Frage 1/2) statt
weiterer Zyklen im aktuellen Takt.

## Taktungsfehler: zusätzlicher direkter Beweis (verschärft Run 21)

Run 21 hatte den Root-Cause bereits identifiziert (stale Runner-Prozess seit 25.07. 18:52:59,
PID 68866, haelt `EXCLUDE_RE` ohne `grobkosten` im Speicher). Dieser Lauf liefert den direkten
Beweis der Prozesskette:

```
PID 68866  PPID 1      bash vollgas-runner.sh   (gestartet Sat 25.07.2026 18:52:59)
PID 14978  PPID 68866  bash vollgas-runner.sh   (gestartet Mon 27.07.2026 13:44:58 — dieser Lauf)
PID 14979  PPID 14978  claude -p ... grobkosten-training
```

`grep EXCLUDE_RE scripts/vollgas-runner.sh` bestätigt weiterhin `grobkosten` in der Liste
(Dateistand seit Run 20). Der Fix ist korrekt auf der Platte, aber **PID 68866 hat die Variable
beim eigenen Start am 25.07. einmalig gesetzt und liest die Skript-Konstanten seither nie neu**
— jeder von ihm gespawnte Kindprozess (wie 14978 → 14979, dieser Lauf) erbt den alten Stand.
Das erklärt, weshalb `grobkosten` trotz committetem Fix im 4–8-Minuten-Takt weiterfeuert,
während andere Loops (baurecht/twin/energie/planungsgrundlagen/normen) ebenfalls unter
demselben PID 68866 laufen.

**Weiterhin bewusst NICHT selbst behoben:** ein `kill 68866` würde sämtliche Trainings-Loops
dieser Station gleichzeitig unterbrechen — das liegt ausserhalb des Mandats dieses KB-eigenen
Loops. Empfehlung unverändert: der Runner-Prozess auf dieser Station muss einmal gezielt durch
Raphael oder einen übergeordneten Lauf (`hub-chef`, `vollgas-chef-radar`) neu gestartet werden.
Bis dahin wird dieser Loop weiterhin unnötig oft feuern — jeder weitere Lauf ohne Prozessneustart
wird voraussichtlich denselben Nullbefund liefern und ist reiner Token-Verbrauch ohne
Erkenntnisgewinn, da sowohl der Inhalts- als auch der Prozess-Befund nun vollständig
dokumentiert sind.

## Kein neuer Kennwert, keine Register-Duplikation

`wiki/kennwerte.md`, `wiki/QUESTIONS.md`, `training/quellen-inventar.md`, `CHANGELOG.md`
bleiben unverändert. Dieser Report ist die einzige neue Datei dieses Laufs.
