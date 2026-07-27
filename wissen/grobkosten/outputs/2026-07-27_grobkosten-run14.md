# Trainings-Run 14 — wissen/grobkosten (27.07.2026)

Station: MacBook Pro. Teil des VOLLGAS-Endlos-Runners. Lauf begann ca. 13:06 Uhr, wenige
Minuten nach dem Commit von Run 13 (13:05:46).

## Kollisionsschutz

`ps`/`PPID`-Abgleich: einziger Treffer war die eigene Prozessinstanz (PID 9381, `claude -p`
mit identischem Prompt-Text). Keine echte Zweitinstanz auf diesem Host.

## Ausgangslage

Run 11–13 hatten übereinstimmend formale Sättigung festgestellt: alle bekannten SharePoint-
Bibliotheken vollständig gesichtet (Run 11), kein neuer Kostenstand seit 26.07. (Run 12), und
Frage 1 (BKP-1-9-vs-1-5-Bezeichnung) am Master-Template des Pre-Check-Tools formelseitig
verifiziert, aber strukturell nur durch Raphaels Antwort lösbar (Run 13). Run 13 empfahl für
Run 14 ausdrücklich: kein weiterer Bibliotheks-Sweep, kein weiterer Ereignis-Trigger-Check in
unmittelbarer Nähe — stattdessen entweder die Rückfrage an Raphael stellen (nicht autonom) oder
die Formel-Ebenen-Methode auf ein bisher nur wertseitig geprüftes Tool anwenden.

## Was in diesem Lauf gemacht wurde

Die in Run 13 vorgeschlagene "Cover Pre-Check"-Sensitivitätsanalyse wurde geprüft, aber als
fachlich unverbunden zu Frage 1 verworfen (bestätigt: enthält keine BKP-1-9-vs-1-5-Bezüge).
Stattdessen ein direkterer, bisher nicht gegangener Weg: die beiden **projekteigenen**
Exceldateien des Wald-Haselstudstrasse-Falls selbst (nicht das generische Master-Template, das
Run 13 prüfte) im Formel-Modus geöffnet:

- `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/8636 Wald Haselstudstrasse Desktopstudie/
  2411_Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` (Variante Miete)
- `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/8636 Wald Haselstudstrasse Volumenstudie STWE/
  2411_Immo-Volumenstudie STWE-02-Pre-Check_Tool_Jans.xlsx` (Variante STWE-Verkauf)

Werkzeug: `openpyxl` (venv `/tmp/venv-xlsx-grobkosten`), sowohl `data_only=False` (Formeln)
als auch `data_only=True` (zwischengespeicherte Werte).

## Befund

1. **Frage 1 unabhängig bestätigt.** Beide Projektdateien tragen dasselbe Sheet-Layout
   `AZ-HNF Tool` wie das Master-Template. `G48 = 1.13`, Zeilenlabel `G47` = "Faktor BKP 2 zu
   BKP 1-5". Formeln `AF69:AF73` (z.B. `AF70 =ROUND((AC70*G37+(C58*F37))*$G$48,-3)`) summieren
   sich in `I56 =ROUND(SUM(AF69:AF73),-4)`, beschriftet "Total BKP 1-9". Kein Rechenschritt für
   BKP 6-8 oder BKP 9 in der Formelkette — identisch zum Master-Template-Befund aus Run 13.
2. **Live-Werte bestätigen die bereits geführten Kennwerte.** GV oi (`AC45`) = 5'925.72 m³
   (Miete) bzw. 5'917.44 m³ (STWE) — im PDF beide auf "5'921 m³" gerundet dargestellt, keine
   echte Diskrepanz. Gesamttotal `J56`/GV = 1'537.4 bzw. 1'766.0 CHF/m³ — deckt sich mit den in
   `raw/2411-wald-haselstudstrasse.md` bereits geführten 1'539/1'765 CHF/m³ (Rundungsdifferenz).
   Kostenniveau `E48` = "durchschnittlich" in beiden Dateien bestätigt, kein Leer-/Vorlagenfeld.

## Einordnung

Frage 1 bleibt strukturell ungelöst — beide Deutungen (Feldlabel `G47`/`G48` falsch vs.
Ausgabelabel `I48`/`I56` falsch) sind rechnerisch in sich schlüssig, eine Klärung ist nur durch
Raphael Jans als Tool-Ersteller möglich. Der Wert dieses Laufs liegt darin, dass die Run-13-
Rückfrage jetzt nicht nur am generischen Tool, sondern auch an der für den geführten Wald-
Kennwert tatsächlich verwendeten Live-Datei bestätigt ist — Raphaels Antwort löst damit in
einem Schritt sowohl den Master-Fall als auch den Wald-Fall auf. Kein neuer Kennwert, keine
Promotion in `wiki/kennwerte.md`.

## Registeränderungen

- `raw/2411-wald-haselstudstrasse.md` — Abschnitt "Nachtrag Run 14" ergänzt.
- `wiki/QUESTIONS.md` — neuer Run-14-Eintrag oben.
- `wiki/INDEX.md` — Run-13/14-Zusammenfassung ergänzt.
- `CHANGELOG.md` — neuer Run-14-Eintrag oben.
- Keine Änderung: `training/quellen-inventar.md` (kein neuer Projekteintrag), `wiki/kennwerte.md`
  (kein neuer Wert).

## Empfehlung für Run 15

Kein weiterer Formel-Sweep zu Frage 1 nötig (Beweislage jetzt vollständig: Master-Template UND
betroffene Projektdatei). Ein weiterer Bibliotheks-Sweep oder Ereignis-Trigger-Check in
unmittelbarer zeitlicher Nähe zu diesem Lauf bleibt ohne Erkenntnisgewinn. Sinnvoll: entweder
die Rückfrage an Raphael Jans stellen (Frage 1 aus Run 13, jetzt doppelt belegt), oder bei
echtem zeitlichem Abstand (nächster regulärer 09/21-Uhr-Takt) einen neuen Ereignis-Trigger-Check
fahren. Diese Rückmeldung bestätigt erneut die bereits in Run 12 ausgesprochene Empfehlung: der
Loop sollte auf einen Ereignis-Trigger statt VOLLGAS-Mehrfachtaktung zurückgefahren werden —
mehrere aufeinanderfolgende Läufe (11–14) liefern denselben strukturellen Befund ohne neuen
Materialzugang.
