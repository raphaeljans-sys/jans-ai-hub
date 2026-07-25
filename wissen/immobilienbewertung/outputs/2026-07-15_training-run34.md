# Lern-Report — Training Run 34 (2026-07-15)

**KB:** immobilienbewertung · **Modus:** Delta-/Marktpuls-Check (erster Lauf am neuen Tag,
nach dem Run-33-Root-Cause-Fix der Trigger-Haeufung) · **Neuer Ingest:** keiner.

## Ausgangslage

Der Wuest-Kurs (W0-W10), alle Ergaenzungsquellen (E1-E10) und saemtliche auto-schliessbaren
T-Aufgaben sind seit Run 16 eingearbeitet; die Runs 18-33 liefen ausschliesslich im
Verifikations-/Delta-Modus. Am 14.07. (Run 33) wurde die Ursache der Trigger-Haeufung behoben
(`vollgas-runner.sh` zog diesen Loop trotz Rule-260713-Drosselung weiter in seinen
Endlos-Zyklus; `EXCLUDE_RE` ergaenzt). Dieser Lauf am 15.07. ist damit der erste am neuen Tag
im Soll-Takt.

Es gibt **keine 10 offenen Themen/Lektionen** mehr, die dieser Loop selbststaendig und ehrlich
belegt schliessen koennte. Statt 10 Themen zu erfinden (Verstoss gegen die KB-Leitplanke
«nie erfinden»), wurde ein schlanker Delta-Check gefahren.

## Durchgefuehrte Checks

1. **Neuer JANS-Bewertungsfall?** Bewertungsordner `01 Projekte/01 BEWERTUNG PROJEKTE`
   direkt gelistet — **unveraendert 6 Faelle** (Ebmatingen 3932, Langnau 3338, Niederhasli
   2025 Seestrasse, Wald 8636, Thalwil 9568, Wangen 8855). Juengster weiterhin Wangen 8855
   (09.06.). Kein neuer Fall → keine neue Referenz-Auswertung moeglich.

2. **Marktpuls (Web).** Referenzzinssatz **1.25 %** bestaetigt (gueltig seit 02.06.2026,
   naechste Publikation 01.09.2026, Stichtag 30.06.). Erhoehungskorridor unveraendert
   (Schwellen 1.13 % / 1.37 %); der Durchschnittszinssatz liegt weiterhin nahe der oberen
   Grenze (~1.32-1.33 % gemaess Marktkommentaren). **Kein neuer amtlicher Durchschnittszinssatz**
   publiziert — der belegte KB-Wert bleibt 1.31 % per 31.03.2026 (BWO). SNB-Leitzins unveraendert
   (naechster Entscheid 09.2026), Erhoehung fruehestens 2027 erwartet. → **Kein neuer Wert, keine
   Artikelaenderung** (eine Uebernahme der unpraezisen Blog-Spanne 1.32-1.33 % waere ein Verstoss
   gegen die Quellenpflicht — der amtliche Stichtagswert kommt erst 01.09.2026).
   Quelle: [BWO Referenzzinssatz](https://www.bwo.admin.ch/de/referenzzinssatz).

## Was geaendert wurde

- Keine Wiki-Artikel-Aenderung (kein neuer belegter Wert, kein neuer Fall).
- Register nachgefuehrt: `curriculum.md`, `wiki/wissensluecken.md`, `raw/_INGESTED.md`,
  `CHANGELOG.md` (dieser Lauf).

## Offene Punkte / was als naechstes

- **Bring-Schulden Raphael (nicht auto-schliessbar):** D1 (UBS-FS aktualisieren), D2
  (strukturierte Bodenpreis-Quelle), D5 (Margen-/Finanzierungspraxis), D7/D9/D10
  (Restposten). D6 breit geschlossen (19 Gemeinden), nur Langnau (BZO-Revision 2026/27)
  extern blockiert.
- **Offener Punkt an Raphael — 7. Meldung:** Rule `auto-verbesserungen` 260624 nennt fuer
  Oberrieden W2 «9.0 m traufseitig» — amtlich belegt (Run 27) sind es **8.5 m traufseitig**
  (9.0 m ist die Flachdach-Fassadenhoehe). Weiterhin unkorrigiert.
- **Naechste erwarteten Signale (extern):** Referenzzins/Durchschnittszinssatz 01.09.2026,
  SREBI Q2-2026 (~09.2026), naechste ZIW-Publikation ~04-06/2026 (D11-Fortschreibung).
- **Empfehlung (bestaetigt):** Die Rule-260714-Drosselung (14.07.) und die seit Run 18
  wiederholte Empfehlung zur Ruecktaktung ins Nachtfenster sind fuer diese KB der richtige
  Weg — der Loop hat ohne neues Rohmaterial oder neuen Bewertungsfall keinen selbststaendig
  schliessbaren Erkenntnisgewinn mehr. Der 02:50-Nachttakt (Rule 260713) ist angemessen;
  ein produktiver Lauf lohnt erst wieder bei einem neuen JANS-Fall, neuem Rohmaterial einer
  D-Luecke oder einem neuen amtlichen Marktwert (fruehestens 01.09.2026).

## Sources

- [BWO — Hypothekarischer Referenzzinssatz](https://www.bwo.admin.ch/de/referenzzinssatz)
- [BWO — Entwicklung Referenz-/Durchschnittszinssatz](https://www.bwo.admin.ch/de/entwicklung-referenzzinssatz-und-durchschnittszinssatz)
