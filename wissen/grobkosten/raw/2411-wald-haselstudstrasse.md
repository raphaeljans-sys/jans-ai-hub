# Roh-Beleg: 2411 WALD - Wohnen, Haselstudstrasse, Wald ZH — Pre-Check-Tool, zwei Nutzungsvarianten

Quelle: SharePoint `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`, zwei Dateien zum selben
Baukörper (identisches Volumen, unterschiedliches Nutzungs-/Vermarktungsszenario):
- `8636 Wald Haselstudstrasse Volumenstudie STWE/
  2411_Immo-Volumenstudie STWE-02-Pre-Check_Tool_Jans.pdf` (Variante STWE-Verkauf), Stand
  08.11.2024.
- `8636 Wald Haselstudstrasse Desktopstudie/
  2411_Immo-02-P23D-Pre-Check_Tool_Jans.pdf` (Variante Miete), Stand 15.05.2024.

Projektnummer **2411 "WALD - Wohnen"** — ausdrücklich zu unterscheiden von **2410 WALD**
(Averecura/Nova Property Fund, Alters-/Pflegeheim, Healthcare-Scope, gehört gemäss
`training/PROGRAMM.md` in den Skill `kostenschaetzung`, nicht hierher). Extrahiert Run 6
(27.07.2026) durch Subagent (sonnet), Werte im Hauptkontext verifiziert.

## Objekt

Neubau MFH Wohnen, 4 Vollgeschosse + Attika, Region Wald ZH. GSF 2'467 m².
**GV (Gebäudevolumen, BMZ-Berechnung) = 5'921 m³** — explizit im Dokument ausgewiesen,
identisch in beiden Varianten (derselbe Baukörper, unterschiedliche Nutzung/Aufteilung).

## Variante Miete (22 Wohnungen, 1'545 m² HNF)

Kostentotal im Dokument als **"BKP 1-9" bezeichnet: CHF 9'110'000** → **1'539 CHF/m³ GV**.

## Variante STWE-Verkauf (16 Wohnungen à 120 m², 1'920 m² HNF)

Kostentotal im Dokument als **"BKP 1-9" bezeichnet: CHF 10'450'000** → **1'765 CHF/m³ GV**.

## Wichtiger Vorbehalt — Bezeichnung "BKP 1-9" vs. Scope dieser KB

Diese KB führt Kennwerte für **BKP 1-5** (exkl. Grundstück BKP 0 und exkl. BKP 6-9). Gemäss
`references/bkp-2017/BKP-2017-Liste.md` sind BKP 6-8 reine "Reserve"-Kategorien (in der Praxis
i.d.R. ungenutzt/null) und BKP 9 = Ausstattung (Möbel, Kunst am Bau, Honorare Ausstattung). Ein
als "BKP 1-9" bezeichnetes Total enthält damit vermutlich zusätzlich BKP 9 (Ausstattung) und
ist **nicht deckungsgleich** mit der hier verwendeten BKP-1-5-Definition — der tatsächliche
BKP-1-5-Wert läge geringfügig darunter. Zusätzliche Unklarheit: Im selben JANS-Tool-Ökosystem
(siehe `raw/kennwerte-jans-referenzdokument.md`, Pre-Check-Tool 2305 Wädenswil unter
`IMMO - 03 KNOW-HOW`) wird ein Faktor "BKP 2 → BKP 1-9 = 1.13" verwendet — im hier vorliegenden
Wald-Dokument wurde der analoge Faktor uneinheitlich einmal als "BKP 2 → BKP 1-9" und einmal
als "BKP 2 → BKP 1-5" bezeichnet (Bezeichnungs-Uneinheitlichkeit im Quellmaterial selbst, nicht
durch diesen Lauf auflösbar ohne Einsicht in die Original-Exceldatei). **Nicht selbst
aufgelöst** (Rule `identifikatoren-verifizieren` — nie raten) — als offene Frage in
`wiki/QUESTIONS.md` festgehalten. Die beiden CHF/m³-Werte oben sind daher als **obere
Näherung** zu lesen (echter BKP-1-5-Wert eher etwas tiefer).

## Standard / Nutzung / Preisstand

Kostenniveau im Dokument: "durchschnittlich". Nutzung: Wohnen MFH, Neubau. Region: Wald ZH.
Preisstand: 15.05.2024 (Miete-Variante) bzw. 08.11.2024 (STWE-Variante) — beide innerhalb
weniger Monate, keine relevante Teuerungsdifferenz zu erwarten.

## Dokumenttyp

Pre-Check-/Volumenstudien-Tool (Vorprüfungs-Schätzung), **kein Ausführungs-/Ist-Beleg**.

## Einordnung für die Kennwerte-KB

**Einzelfall n=1** (zwei Varianten desselben Volumens, nicht als zwei unabhängige Fälle
gezählt) — MFH durchschnittlich, Region Wald ZH. Wegen des ungeklärten BKP-1-9-vs-1-5-
Vorbehalts oben **nicht in die Haupttabelle `wiki/kennwerte.md` promoviert**, nur als
referenzierter Einzelfall mit vollem Kaveat geführt.

Abrufdatum: 2026-07-27.

## Nachtrag Run 14 (27.07.2026) — Formel-Ebene der PROJEKTEIGENEN Exceldateien geprüft (nicht nur des generischen Master-Tools)

Run 13 hatte den BKP-1-9-vs-1-5-Faktor (1.13) nur am generischen Master-Template
(`IMMO - 03 KNOW-HOW/05 Residualwert/Exel Tabelle/jans/Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`)
im Formel-Modus verifiziert. Dieser Lauf hat zusätzlich die beiden **projekteigenen**
Exceldateien zu diesem Wald-Fall selbst geöffnet (`openpyxl`, `data_only=False` und
`data_only=True`, dieselbe venv `/tmp/venv-xlsx-grobkosten`):
- `8636 Wald Haselstudstrasse Desktopstudie/2411_Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` (Miete)
- `8636 Wald Haselstudstrasse Volumenstudie STWE/2411_Immo-Volumenstudie STWE-02-Pre-Check_Tool_Jans.xlsx` (STWE-Verkauf)

**Befund 1 — Frage 1 (BKP-1-9-vs-1-5) unabhängig bestätigt, nicht nur im Master-Template:**
Beide Dateien tragen identisches Sheet-Layout `AZ-HNF Tool`. Zelle `G48 = 1.13`, deren
Zeilenlabel `G47` explizit **"Faktor BKP 2 zu BKP 1-5"** lautet. Dieser Faktor fliesst
ausschliesslich in die Formeln `AF69:AF73` (z.B. `AF70 =ROUND((AC70*G37+(C58*F37))*$G$48,-3)`)
ein, deren Summe `I56 =ROUND(SUM(AF69:AF73),-4)` mit dem Label **"Total BKP 1-9"** beschriftet
ist. Kein zusätzlicher Rechenschritt für BKP 6-8 (Reserven) oder BKP 9 (Ausstattung) existiert
in der Formelkette — identisch zum Run-13-Befund am Master-Template. Die Inkonsistenz ist damit
nicht auf eine veraltete/unbereinigte Master-Kopie beschränkt, sondern auch in der tatsächlich
für dieses Projekt verwendeten Live-Datei vorhanden.

**Befund 2 — Live-Werte bestätigen die aus dem PDF extrahierten CHF/m³-Werte (keine
Übertragungsfehler):** GV oi (`AC45`) = 5'925.72 m³ (Miete) bzw. 5'917.44 m³ (STWE) — im PDF
beide auf "5'921 m³" gerundet/identisch dargestellt (Rundungsdifferenz von ±0.1 %, kein
Widerspruch). Gesamttotal inkl. Parkplätze (`J56 = I56 + J50`) / GV ergibt 1'537.4 CHF/m³
(Miete) bzw. 1'766.0 CHF/m³ (STWE) — deckt sich mit den bereits oben geführten 1'539 bzw.
1'765 CHF/m³ (Differenz nur Rundung). Die Kostenniveau-Auswahl `E48` ist in beiden Dateien
tatsächlich auf "durchschnittlich" gesetzt (kein leeres/generisches Dropdown-Feld) — bestätigt
den bereits im Haupttext genannten Wert, keine neue Erkenntnis, aber Gegenprobe bestanden.

**Einordnung:** Frage 1 bleibt weiterhin nicht autonom lösbar (beide Deutungen — Feldlabel
`G47`/`G48` falsch beschriftet vs. Ausgabelabel `I48`/`I56` falsch beschriftet — sind
rechnerisch in sich schlüssig). Der Wert dieses Nachtrags liegt darin, dass die in Run 13
formulierte Rückfrage an Raphael jetzt nicht nur am generischen Tool, sondern auch an der
konkreten, für diesen Kennwert tatsächlich verwendeten Projektdatei bestätigt ist — die Antwort
auf die Run-13-Frage löst damit direkt und ohne Zusatzprüfung auch diesen Wald-Fall auf.
Keine Änderung am geführten Kennwert (weiterhin nicht promoviert, "obere Näherung").
