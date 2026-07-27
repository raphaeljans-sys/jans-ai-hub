# Grobkosten-Trainingslauf, Run 13 (27.07.2026)

## Ausgangslage

Run 12 (12:56 Uhr, selber Tag) hatte bereits den Ereignis-Trigger-Check (neuer Kostenstand aus
einem laufenden Mandat seit 26.07.2026) durchgeführt und negativ beschieden, die formale
Sättigung des Loops erklärt und eine Rücktaktung auf Ereignis-Trigger empfohlen. Dieser Lauf
begann nur wenige Minuten später (Kollisionscheck via `ps`: einziger Treffer die eigene
Prozessinstanz, keine echte Zweitinstanz).

## Entscheid: kein Duplikat-Check

Ein erneuter Ereignis-Trigger-Check (SharePoint-`find` nach `*kosten*`-Änderungen) hätte in
dieser Zeitspanne mit an Sicherheit grenzender Wahrscheinlichkeit dasselbe Nullergebnis
geliefert wie Run 12 zwei Minuten zuvor. Gemäss Rule «Kein Leerlauf-Zwang» (keine Füllwerte,
aber auch keine wertlose Wiederholung) wurde stattdessen ein bisher offen gelassener,
genuiner Ansatz verfolgt: die in Run 6/7 vorgeschlagene, aber nie umgesetzte Formel-Ebenen-
Prüfung des Pre-Check-Tools (2305 Wädenswil), um Frage 1 (BKP-1-9-vs-BKP-1-5-Bezeichnung)
möglicherweise autonom aufzulösen.

## Durchführung

1. Die Originaldatei `Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` war über den in `raw/2305-
   waedenswil-precheck.md` dokumentierten Pfad-Alias (`JANS - IMMO - 03 KNOW-HOW/...`) auf
   dieser Station (MacBook Pro) nicht erreichbar (leerer Ordner) — ein weiteres Beispiel des in
   Run 11 dokumentierten Stations-Sync-Musters (nicht alle SharePoint-Aliase sind auf jeder
   Station lokal synchronisiert). Über den direkten Mount
   `OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 03 KNOW-HOW/...` war die Datei jedoch
   vorhanden (mehrere Kopien auch unter `AR - 01 Projekte/2414 THALWIL`, `IMMO - 01 Projekte/…
   Wald Haselstudstrasse` und `AR - 03 Studien/2304 Waedenswil`).
2. `openpyxl` war weder systemweit noch in einer persistenten venv verfügbar (Run 7s venv
   `/tmp/venv-xlsx-grobkosten` existierte nicht mehr, `/tmp` ist sessionflüchtig) — neu
   installiert (`python3 -m venv` + `pip install openpyxl`).
3. Datei zweimal geladen: `data_only=True` (Werte, wie Run 7) und `data_only=False` (Formeln,
   neu in diesem Lauf). Formelkette rückverfolgt vom Faktor `G48 = 1.13` (Blatt «AZ-HNF Tool»)
   über `AF69:AF73` bis zur Summenzelle `I56`, die als «Total BKP 1-9» beschriftet ist.

## Befund

Die Formeln in `AF69:AF73` folgen alle demselben Muster: BKP-2-Einheitskosten (Spalte `AC`,
bereits inkl. Kostenniveau-Zuschlag «günstig 0.9 … luxuriös 2.1») werden **einzig** mit dem
Faktor `G48 = 1.13` multipliziert — demselben Faktor, den das Tool in derselben Zeile (`G47`)
als «Faktor BKP 2 zu BKP 1-5» beschriftet. Es existiert an keiner Stelle der Formelkette ein
separater Rechenschritt für BKP 6-8 (Reserven) oder BKP 9 (Ausstattung). Das bestätigt und
präzisiert den Run-6/7-Befund auf Formel-Ebene (nicht nur auf Basis der PDF-/Werte-Ansicht):
Es gibt in diesem Tool nur einen einzigen Umrechnungsschritt zwischen BKP-2 und der Summe, die
das Tool als «Total BKP 1-9» ausweist — und dieser Schritt ist im Tool selbst als «BKP2→BKP1-5»
beschriftet. Eine der beiden Beschriftungen im Tool (`G47` oder `I48`) ist damit nachweislich
falsch; welche, ist ohne Rücksprache mit Raphael Jans (Tool-Ersteller) nicht entscheidbar.

## Ergebnis

- **Frage 1 weiterhin nicht autonom gelöst** (keine dritte unabhängige Quelle, die eine der
  beiden Lesarten bestätigt) — aber jetzt auf eine einzige, präzise, in einem Satz beantwortbare
  Ja/Nein-Frage zugespitzt (Formulierung siehe `wiki/QUESTIONS.md`, Run-13-Eintrag). Diese eine
  Antwort löst gleichzeitig den strukturgleichen Fall 2411 Wald Haselstudstrasse (identischer
  Tool-Faktor 1.13).
- Kein neuer Kennwert, keine neue Inventar-Zeile. `raw/2305-waedenswil-precheck.md` um den
  Formel-Nachtrag ergänzt.
- Register nachgeführt: `wiki/QUESTIONS.md`, `CHANGELOG.md`. Keine Änderung an
  `training/quellen-inventar.md` oder `wiki/kennwerte.md`.

## Empfehlung für Run 14

Kein weiterer Bibliotheks-Sweep, kein weiterer Ereignis-Trigger-Check in unmittelbarer
zeitlicher Nähe zu Run 12/13 (beide würden dasselbe Nullergebnis liefern). Entweder (a) die
zugespitzte Frage 1 bei nächster Gelegenheit an Raphael stellen (nicht autonom in diesem Loop
möglich), oder (b) falls ein weiterer autonomer Lauf ohne neues Material erforderlich ist: die
in diesem Lauf demonstrierte Formel-Ebenen-Methode auf ein anderes JANS-eigenes Kalkulations-
Tool anwenden, sofern eines mit ungeklärtem Bezug identifizierbar ist.
