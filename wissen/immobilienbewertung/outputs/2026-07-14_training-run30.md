# Training-Run 30 — Immobilienbewertung (2026-07-14, 05:44 Uhr)

## Kurzbefund

Dritter Trigger desselben Tages (nach Run 28, 00:38 Uhr, und Run 29, 04:51 Uhr) — erneut ausserhalb
der von Rule `auto-verbesserungen` 260713 vorgesehenen Sollfrequenz (1x taeglich, 02:50 Uhr). Der
Abstand zu Run 29 betraegt rund 53 Minuten; in diesem Zeitfenster ist weder ein neuer JANS-
Bewertungsfall noch eine neue Zins-/Referenzzins-Publikation zu erwarten. Wie in Run 29 daher nur
ein kurzer Delta-Check, kein voller Recherche-/Ingest-Zyklus.

## Geprueft

1. **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`): unveraendert 5 Projektordner
   (Ebmatingen 3932, Langnau/Giebelweg 12, Niederhasli/Seestrasse 64, Wald/Haselstudstrasse,
   Thalwil 9568, Wangen 8855) — **kein neuer Fall**.
2. **Marktanker** (Web-Check SNB + BWO): SNB-Leitzins weiterhin **0.00 %** (Entscheid 19.06.2026
   gehalten, naechster Entscheid 09.2026); hypothekarischer Referenzzinssatz weiterhin **1.25 %**
   (gueltig seit 02.06.2026/01.09.2025, naechste Publikation 01.09.2026); Durchschnittszinssatz
   weiterhin **1.31 %** per 31.03.2026 (kein Q2-Wert publiziert, naechste Publikation erst mit dem
   September-Referenzzins-Entscheid) — alle Werte identisch zu Run 17/28/29, keine neue Publikation.
3. **D6-Restposten Langnau:** weiterhin blockiert (Revision 2026/27 nicht rechtskraeftig).

## Ergebnis

Keine neue Erkenntnis, kein Korrekturbefund, kein Ingest, keine Wiki-Aenderung. Die in Run 28
protokollierte Erinnerung an Raphael (Oberrieden-Hoehenkorrektur, Rule 260624 nennt fuer die W2-Zone
Oberrieden faelschlich «9.0 m traufseitig», amtlich belegt sind 8.5 m) bleibt unveraendert offen und
wird hier zum dritten Mal vermerkt statt eigenmaechtig in der Rule-Datei korrigiert.

## Beobachtung zur Taktung

Drei Trigger an einem Tag (00:38 / 04:51 / 05:44) bei einer Soll-Frequenz von 1x taeglich deuten auf
eine Ueberlappung mehrerer Scheduled-Task-Quellen oder des VOLLGAS-Runners hin, die diesen Loop
zusaetzlich zum planmaessigen 02:50-Lauf anstossen. Fachlich unproblematisch (Delta-Checks sind
guenstig und liefern korrekt "nichts Neues"), aber token-ineffizient bei einer bereits ausgeschoepften
KB. Empfehlung: bei Gelegenheit die Trigger-Quellen fuer `immobewertung-training` pruefen (Scheduled
Task + Runner-Zyklus koennten sich ueberschneiden).

## Empfehlung

Unveraendert: Drosselung auf 1x taeglich bleibt fuer diese KB angemessen; Mehrfach-Trigger am
selben Tag werden weiterhin als kurzer Delta-Check statt vollem 10-Themen-Lauf abgehandelt.
