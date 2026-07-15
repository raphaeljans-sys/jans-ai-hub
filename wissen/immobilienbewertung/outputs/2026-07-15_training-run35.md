# Lern-Report — Training Run 35 (2026-07-15)

**KB:** immobilienbewertung · **Modus:** minimaler Bestaetigungslauf · **Neuer Ingest:** keiner.

## Ausgangslage

Zweiter Trigger desselben Tages — Run 34 lief heute bereits um 00:58 und hat den vollen
Delta-/Marktpuls-Check gefahren (Bewertungsordner unveraendert, Referenzzins 1.25 % bestaetigt,
kein neuer amtlicher Durchschnittszinssatz). Der Wuest-Kurs (W0-W10), alle Ergaenzungsquellen
(E1-E10) und saemtliche auto-schliessbaren T-Aufgaben sind seit Run 16 eingearbeitet; die Runs
18-34 liefen ausschliesslich im Verifikations-/Delta-Modus.

Es gibt **keine 10 offenen Themen/Lektionen** mehr, die dieser Loop selbststaendig und ehrlich
belegt schliessen koennte. Statt 10 Themen zu erfinden (Verstoss gegen die KB-Leitplanke
«nie erfinden») und statt den Web-Marktpuls wenige Stunden nach Run 34 sinnlos zu wiederholen
(Drossel-Regel `auto-verbesserungen` 260714, Wochenlimit ~81 %), wurde ein minimaler
Bestaetigungslauf gefahren.

## Durchgefuehrte Checks

1. **Neuer JANS-Bewertungsfall?** Bewertungsordner `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE`
   direkt gelistet — **unveraendert 6 Faelle** (Ebmatingen 3932, Langnau 3338, Niederhasli 2025
   Seestrasse, Wald 8636, Thalwil 9568, Wangen 8855). Juengster weiterhin Wangen 8855 (09.06.).
   Kein neuer Fall → keine neue Referenz-Auswertung moeglich.

2. **Marktpuls (Web).** Bewusst NICHT erneut geprueft — Run 34 (heute 00:58, < 8 Std. zurueck)
   hat den Referenzzins (1.25 %, naechste Publikation 01.09.2026) und den amtlichen
   Durchschnittszinssatz (1.31 % per 31.03.2026) bereits bestaetigt. Vor 01.09.2026 ist kein
   neuer amtlicher Wert zu erwarten; ein Web-Recheck waere reiner Token-Verbrauch gegen das
   Wochenlimit (Rule 260714). KB-Anker bleiben unveraendert.

## Was geaendert wurde

- Keine Wiki-Artikel-Aenderung (kein neuer belegter Wert, kein neuer Fall).
- Register nachgefuehrt: `curriculum.md`, `wiki/wissensluecken.md`, `raw/_INGESTED.md` (Stand),
  `CHANGELOG.md` (dieser Lauf).

## Offene Punkte / was als naechstes

- **Bring-Schulden Raphael (nicht auto-schliessbar):** D1 (UBS-FS aktualisieren), D2
  (strukturierte Bodenpreis-Quelle), D5 (Margen-/Finanzierungspraxis), D7/D9/D10 (Restposten).
  D6 breit geschlossen (19 Gemeinden), nur Langnau (BZO-Revision 2026/27) extern blockiert.
- **Offener Punkt an Raphael — 8. Meldung:** Rule `auto-verbesserungen` 260624 nennt fuer
  Oberrieden W2 «9.0 m traufseitig» — amtlich belegt (Run 27) sind es **8.5 m traufseitig**
  (9.0 m ist die Flachdach-Fassadenhoehe). Weiterhin unkorrigiert.
- **Trigger-Haeufung:** erneut zwei Trigger an einem Tag (Run 34 00:58, Run 35). Der Run-33-Fix
  (`vollgas-runner.sh` EXCLUDE_RE) sollte den Endlos-Runner ausgeschlossen haben — falls die
  Haeufung anhaelt, ist die verbleibende Quelle der Scheduled Task selbst zu pruefen (Soll: 1x
  taeglich 02:50, Rule 260713).
- **Naechste erwartete Signale (extern):** Referenzzins/Durchschnittszinssatz 01.09.2026,
  SREBI Q2-2026 (~09.2026), naechste ZIW-Publikation ~04-06/2026 (D11-Fortschreibung).
- **Empfehlung (bestaetigt):** Der 02:50-Nachttakt (Rule 260713) plus die Drossel (Rule 260714)
  sind fuer diese KB der richtige Weg. Ein produktiver Lauf lohnt erst wieder bei einem neuen
  JANS-Fall, neuem Rohmaterial einer D-Luecke oder einem neuen amtlichen Marktwert
  (fruehestens 01.09.2026).

## Sources

- Bewertungsordner (lokale OneDrive-Listung, 2026-07-15) — 6 Faelle unveraendert.
- Marktanker uebernommen aus Run 34 (2026-07-15, 00:58): BWO Referenzzinssatz 1.25 %.
