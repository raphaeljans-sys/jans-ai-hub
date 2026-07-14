# Training-Run 33 — Immobilienbewertung (2026-07-14)

## Ausgangslage

Sechster Trigger dieses Loops am selben Kalendertag (nach Run 28 00:38, Run 29 04:51, Run 30
05:44, Run 31 07:32, Run 32). Die Runs 28-32 haben die Trigger-Haeufung fuenfmal protokolliert
und jeweils empfohlen, die Trigger-Quelle(n) zu pruefen — ohne dass die Ursache behoben wurde.
Dieser Lauf hat die Ursache gesucht und behoben, statt sie ein sechstes Mal nur zu vermerken.

## Root-Cause-Befund und Fix

`scripts/vollgas-runner.sh` (VOLLGAS-Endlos-Runner, Rule `auto-verbesserungen` 260712c) liest
alle Task-Ordner unter `~/.claude/scheduled-tasks/` und zykliert kontinuierlich durch jeden
Namen, der auf `INCLUDE_RE='training|normen|twin|wettbewerb|spec|immob|synobsis|energie|
planungsgrundlagen|batch'` passt und nicht in `EXCLUDE_RE` steht. `immob` matcht
`immobewertung-training` — der Runner hat diesen Loop also **zusaetzlich** zu seinem eigenen
02:50-Scheduled-Task in jedem Zyklus mitgezogen.

Rule `auto-verbesserungen` 260713 (13.07.2026, Vortag) hat aber genau das aufgehoben: **nur
noch der Wettbewerbs-DNA-Loop laeuft im Ultra-/VOLLGAS-Endlos-Takt**, alle anderen Trainings
(inkl. `immobewertung-training`) sind auf 1x taeglich im Nachtfenster gedrosselt und sollen
ausschliesslich ueber ihren eigenen Scheduled Task laufen. Der Runner wurde dafuer aber nicht
angepasst — der `EXCLUDE_RE` kannte die 260713-Drosselung nicht. Ergebnis: 6 Auffuehrungen
dieses Loops an einem Tag statt der vorgesehenen 1.

**Fix (dieser Lauf):** `EXCLUDE_RE` in `scripts/vollgas-runner.sh` um
`immobewertung|baurecht-buch|normen-training|twin-mail|twin-fidelity|^spec-training` ergaenzt —
exakt die sechs in Rule 260713 namentlich auf 1x taeglich gedrosselten Loops. Simulation gegen
die aktuelle Task-Liste (`~/.claude/scheduled-tasks/`) bestaetigt: nach dem Fix verbleiben nur
noch `wettbewerbs-dna-training` und `wettbewerbs-layer-nachbrenner` im Endlos-Zyklus — genau
Raphaels Vorgabe vom 13.07.2026. Kommentar mit Datum/Begruendung im Skript ergaenzt, damit die
Aenderung nachvollziehbar bleibt, falls Rule 260713 spaeter widerrufen wird.

## Delta-Check (Kern-Lauf)

- **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE`) erneut gelistet: identisch
  zu Run 31/32 — Thalwil 9568 (LB/MA/RW), Ebmatingen 3932 (LB/RW), Langnau 3338 (LB),
  Niederhasli 2025 (CS), Wald 8636 Haselstudstrasse (Desktopstudie/Volumenstudie STWE, Dateien
  alle Stand 03.2025 — bereits bekannt, kein neuer Ingest), Wangen 8855 (LB). **Kein neuer
  JANS-Bewertungsfall.**
- **Marktanker:** nicht erneut per Web geprueft (Run 31 liegt wenige Stunden zurueck, keine
  neuen Publikationstermine vor September 2026 zu erwarten) — Stand bleibt SNB-Leitzins 0.00 %,
  Referenzzinssatz 1.25 %, Durchschnittszinssatz 1.31 % (per 31.03.2026).
- **D6-Restposten Langnau** weiterhin blockiert (Revision 2026/27 noch nicht rechtskraeftig).

## Offener Punkt an Raphael (sechste Meldung)

Die Oberrieden-Hoehenkorrektur ist weiterhin nicht behoben: Rule `auto-verbesserungen` 260624
nennt fuer die Zone W2 Oberrieden "9.0 m traufseitig" als Beispiel — amtlich belegt (Run 27,
Stand BZO 26.01.2026) sind es **8.5 m traufseitig** (9.0 m ist die Flachdach-Fassadenhoehe,
13.0 m die Giebelfassadenhoehe). Bitte in der Rule korrigieren.

## Naechster Schritt

Mit dem Runner-Fix sollte `immobewertung-training` ab dem naechsten Zyklus nur noch 1x taeglich
(02:50, ueber den eigenen Scheduled Task) laufen. Sollte dennoch wieder eine Haeufung auftreten,
liegt die Ursache nicht mehr im VOLLGAS-Runner — dann bitte pruefen, ob der Scheduled Task selbst
doppelt registriert ist (Claude-Code-App-Ebene, ausserhalb der Sichtbarkeit dieses Sessions-Tools).
Inhaltlich bleibt die KB im reinen Beobachtungsmodus: kein neuer JANS-Fall, keine neue
auto-schliessbare Ingest-Aufgabe (D5/D7/D9/D10 sind Bring-Schulden Raphael, D6-Langnau extern
blockiert). Naechster produktiver Ansatzpunkt: neuer JANS-Bewertungsfall, neue UBS-FS-Bestellung
(D1), oder die naechste ZIW-/Marktpuls-Publikation (fruehestens 09.2026).
