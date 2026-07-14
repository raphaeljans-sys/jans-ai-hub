# Training-Run 32 — Immobilienbewertung (2026-07-14)

## Ausgangslage

Fuenfter Trigger dieses Loops am selben Kalendertag (nach Run 28 00:38, Run 29 04:51, Run 30
05:44, Run 31 07:32 Uhr) — weiterhin deutlich ausserhalb der in Rule `auto-verbesserungen` 260713
festgelegten Sollfrequenz von 1x taeglich (02:50 Uhr). Das in Run 30 vermerkte Muster (Ueberlappung
Scheduled Task/VOLLGAS-Runner) haelt an und hat sich mit diesem fuenften Trigger verstaerkt.

Da Run 31 (07:32 Uhr, also wenige Stunden vor diesem Lauf) bereits D11 geschlossen und alle
Marktanker frisch per Web-Check bestaetigt hat, wurde hier bewusst KEIN vollstaendiger 10-Themen-
Zyklus gefahren, sondern ein schlanker Delta-Check — ein erneuter Web-Check der Zins-/Marktanker
Stunden nach Run 31 haette keinen Erkenntnisgewinn (naechste Publikationstermine SNB 09.2026,
Referenzzinssatz 01.09.2026).

## Delta-Check

- **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE`) erneut gelistet: weiterhin
  dieselben Faelle wie in Run 31 — Thalwil 9568 (LB/MA/RW), Ebmatingen 3932 (LB/RW), Langnau 3338
  (LB), Niederhasli 2025 (CS), Wald 8636 Haselstudstrasse (Desktopstudie/Volumenstudie STWE,
  bereits in [[projektstruktur-deliverables]]/[[flaechendefinitionen-sia]] referenziert), Wangen
  8855 (LB). **Kein neuer JANS-Bewertungsfall.**
- **Marktanker:** nicht erneut per Web geprueft (Run 31 liegt < 4 Std. zurueck, keine neuen
  Publikationstermine vor September 2026 zu erwarten) — Stand bleibt SNB-Leitzins 0.00 %,
  Referenzzinssatz 1.25 %, Durchschnittszinssatz 1.31 % (per 31.03.2026).
- **D6-Restposten Langnau** weiterhin blockiert (Revision 2026/27 noch nicht rechtskraeftig,
  unveraendert seit Run 26).

## Offener Punkt an Raphael (fuenfte Meldung)

Die Oberrieden-Hoehenkorrektur ist weiterhin nicht behoben: Rule `auto-verbesserungen` 260624
nennt fuer die Zone W2 Oberrieden "9.0 m traufseitig" als Beispiel — amtlich belegt (Run 27,
Stand BZO 26.01.2026) sind es **8.5 m traufseitig** (9.0 m ist die Flachdach-Fassadenhoehe,
13.0 m die Giebelfassadenhoehe). Bitte in der Rule korrigieren.

## Neu: Trigger-Haeufung

Mit diesem fuenften Lauf innerhalb eines Kalendertags ist das in Run 30 erstmals vermerkte Muster
bestaetigt und verstaerkt. Empfehlung: die Trigger-Quelle(n) dieses Scheduled Tasks pruefen (Cron-
Eintrag doppelt registriert? VOLLGAS-Runner zyklisiert zusaetzlich durch denselben Task?), damit
der Token-Einsatz nicht auf reine Delta-Checks ohne Erkenntnisgewinn faellt. Diese KB hat seit
Run 27 nur EINEN produktiven Lauf gehabt (Run 31, D11); die vier uebrigen Laeufe des Tages waren
reine Bestaetigungen.

## Naechster Schritt

Keine auto-schliessbare Aufgabe fuer einen weiteren Vollzyklus vorhanden (D5/D7/D9/D10 sind
Bring-Schulden Raphael, D6-Langnau ist extern blockiert). Naechster produktiver Ansatzpunkt: ein
neuer JANS-Bewertungsfall, eine neue UBS-FS-Bestellung (D1), oder die naechste ZIW-/Marktpuls-
Publikation (fruehestens 09.2026).
