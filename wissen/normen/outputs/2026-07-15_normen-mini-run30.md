---
title: Mini-Run 30 — Vertiefungsstufe (d) Querschnitts-Synthese DIN/VSS/RAL (Intensiv-Lauf auf Zuruf)
datum: 2026-07-15
station: Mac Mini (DIN/VSS/RAL)
---

# Mini-Run 30 — Querschnitts-Synthese DIN/VSS/RAL erweitert (5 neue Abschnitte + 2 Vertiefungen)

Auftrag Raphael (15.07.2026): ein Intensiv-Lauf, ausschliesslich Familie DIN/VSS/RAL
(Stations-Split, SIA/VKF bleibt MacBook Pro), 15-25 Positionen, Verifikations-Stufe und
Token-Vollgas/Workflow-Parallelisierung autorisiert, Arbeitsliste `training/norm-inventar.md`,
Quell-PDFs SharePoint `PL - 02_Recht_Norm/02_Normen`, DRM-PDFs manuell markieren, Register/
CHANGELOG nachfuehren, Report nach `outputs/`, vor Commit `git pull`, dann committen/pushen.

## Befund vor Arbeitsbeginn: Basisinventar bereits komplett

Ein Blick ins `norm-inventar.md` zeigte: DIN (72 Dateien), VSS (17 Dateien) und RAL
(1 Datei) haben **0 offene `[ ]`-Positionen**. Grunddestillation, adversariale
Retro-Verifikation (Vertiefungsstufe b) und Q&A-Selbstbefragung (Vertiefungsstufe c) sind
fuer die komplette Familie bereits seit Mini-Run 29 (260715, siehe
`outputs/2026-07-15_normen-mini-run29.md`) abgeschlossen — inkl. DRM-Pruefung (keine
DRM-geschuetzten PDFs im DIN/VSS/RAL-Bestand angetroffen, das war bereits in frueheren
Laeufen dokumentiert). Es gab daher **nichts mehr aus SharePoint-PDFs neu zu destillieren**.

Gemaess `PROGRAMM.md` (Abschnitt "Nach Inventar-Abschluss einer Familie... Vertiefungsstufen")
und der expliziten Empfehlung im Run-29-Report ("Naechster Lauf: Vertiefungsstufe (d)
Querschnitts-Synthesen fuer die Fach-Skills") wurde dieser Lauf konsequent auf **Stufe (d)**
verlegt: die bestehende Querschnitts-Synthese `wiki/synthese-din-vss-ral-fachskills.md`
(Stand: 9 Abschnitte, zuletzt erweitert Mini-Run 19/20/21/22) um weitere, bisher nicht
synthetisierte DIN/VSS/RAL-Destillate erweitern.

## Workflow

6 parallele Synthese-Agenten, je 1 Themencluster, insgesamt **32 Destillate** (DIN/VSS/RAL)
plus ergaenzende SIA/VKF-Destillate zur Einordnung gelesen. Jeder Agent: nur bereits
`established` verifizierte Destillate lesen (kein Original-PDF neu pruefen), Fundstellen
zitieren, nichts erfinden, offene Luecken transparent ausweisen.

| Cluster | Quell-Destillate (Auszug) | Neuer Abschnitt |
|---|---|---|
| Mauerwerk/Tragwerk/Baugrund | DIN 1053-1/2/3/4/100, DIN 1045-2, DIN 1054, DIN 1055-2 ↔ SIA 266/262/267 | 9 |
| Fenster/Tueren/Einbruchhemmung/Flucht | DIN EN 12207, DIN EN 1627, DIN 68119, VST-Merkblatt, EN 179/1125 ↔ SIA 343.051, VKF-BRL 16-15 | 10 |
| Bodenbelaege/Zeichnung/Material | DIN 18560-2, DIN 1356-1/-6, DIN 1164-10, DIN 1249-11, RAL-GZ 638 ↔ SIA 251/400/2014/331 | 11 |
| Stahlbau-Brandschutz/Treppen/Fassade | SZS steeldoc, DIN 18065, HCU-Treppenskript, DIN 4426 ↔ SIA 358 | 12 |
| Raumakustik + Tageslicht-Vertiefung | DIN 18041, DIN 5034-2/3/4/6 | 13 + Vertiefung Abschnitt 7 |
| Erschliessung/Langsamverkehr/Verkehrssicherheit | VSS 700.5/722.15, SN 640050/060/065/066/281/578, Merkblatt Veloabstellplaetze | Vertiefung Abschnitt 6 |

## Ergebnis

`wiki/synthese-din-vss-ral-fachskills.md`:
- von 9 auf **14 nummerierte Abschnitte** erweitert, plus 2 eingearbeitete Vertiefungen
  (Abschnitt 6 Erschliessung/Velo, Abschnitt 7 Tageslicht-Rechenmethodik).
- Frontmatter `sources:` um **40 neue Destillat-Pfade** ergaenzt, `last_updated: 2026-07-15`.
- Sammelstelle "Grenzen der Uebertragbarkeit" (neu Abschnitt 14) um **24 neue
  Vergleichspaar-Zeilen** gewachsen.
- Abschliessendes Fazit aktualisiert (verweist neu auch auf direkt geltende VSS-
  Erschliessungsnormen und die europaeisch harmonisierten EN 179/1125/1627 als Ausnahmen
  vom sonstigen DIN-Kontrastfolie-Regelfall).

## Kernbefunde

1. **EN 179/EN 1125 und DIN EN 1627** sind — anders als der uebliche DIN-Regelfall dieser
   Synthese — europaeisch harmonisierte Normen, die in der Schweiz **direkt** gelten
   (SIA 343.051 verweist woertlich auf beide Normfamilien).
2. Die **gesamte Erschliessungs-/Langsamverkehrs-Normenfamilie** (VSS 700.5, VSS 722.15,
   SN 640050/060/065/066/281/578) ist direkt geltendes bzw. kantonal (Kt. ZH)/kommunal
   (Stadt Zuerich) verbindliches Schweizer Fachrecht — keine Vergleichsreferenz wie die
   uebrigen DIN-Positionen.
3. **SZS steeldoc** (Brandschutz im Stahlbau) liegt zwar im SharePoint-Ordner der
   VKF-Brandschutzrichtlinien 2015, ist aber eine **Schweizer** Fachverbands-Publikation
   (SZS = Stahlbau Zentrum Schweiz), keine deutsche Norm — gehoert nicht in die
   DIN-vs-SIA-Uebertragbarkeits-Logik, sondern ist eine eigene CH-Zweitquelle.
4. **Faktenkorrektur waehrend der Konsolidierung:** ein Synthese-Agent behauptete
   faelschlich, es existiere kein SIA-331-Destillat im Bestand. Stichprobenverifikation
   zeigte: `destillate/sia-331-1988.md` ist vorhanden. Die Aussage wurde korrigiert
   (offene Luecke = Detailabgleich nicht durchgefuehrt, nicht Nichtexistenz).
5. Spot-Verifikation der von den Agenten zitierten SIA-Kennwerte (γM=2,0 SIA 266,
   Expositionsklassen SIA 262, Partialfaktoren γφ/γc SIA 267) gegen die Original-Destillate
   bestand — keine Abweichungen gefunden.

## Neue offene Luecken (`wiki/QUESTIONS.md`, Abschnitt "Mini-Run 30")

- SIA 266/262/267-Detailkapitel nicht gegen DIN-Mauerwerk/Beton/Baugrund gegengeprueft.
- SIA 331 nicht im Detail gegen EN 12207/DIN 1249-11 gelesen.
- Keine SIA-Raumakustik-Norm in der KB (DIN 18041 dient bis dahin als Zweitquelle).
- Keine Suva-/EKAS-Richtlinie zu Fassadengeruest-Verankerung/Dachhaken.
- VKF-BRL 15-15 (Brandschutzabstaende Tragwerke) noch nicht destilliert.
- Keine Bestaetigung einer "2026 verschaerften kantonalen Velo-Abstellpflicht" — nicht aus
  den bestehenden VSS-Quellen (1983-2011) ableitbar, separate Recherche noetig.
- RAL-GZ 638 ohne explizite BKP-Zuordnung im Destillat.

## Nachgefuehrt

- `wiki/synthese-din-vss-ral-fachskills.md` (Haupt-Deliverable)
- `wiki/QUESTIONS.md` (7 neue Luecken unter "Mini-Run 30")
- `training/norm-inventar.md` (Kopfzeile: Vertiefungsstufe-(d)-Status ergaenzt)
- `CHANGELOG.md` (neuer Eintrag oben)
- dieser Report

## Naechster Lauf

DIN/VSS/RAL ist mit diesem Lauf in allen vier Stufen (Grunddestillation, Retro-Verifikation,
Q&A-Selbstbefragung, Querschnitts-Synthese) substanziell bearbeitet. Verbleibende Vertiefung:
die sieben oben genannten Luecken schliessen, sobald die jeweiligen SIA-Gegenstuecke
(Station MacBook Pro: SIA 266/262/267/331 im Detail) oder externe Quellen (Suva/EKAS,
VKF-BRL 15-15) verfuegbar sind. Ohne neue Zufuhr an Fach-Skill-Bedarf ist eine weitere
grossflaechige DIN/VSS/RAL-Synthese-Runde nicht zwingend — naechster sinnvoller Schritt ist,
diese Luecken gezielt zu schliessen statt weitere Themencluster zu erschliessen.

## Hinweis

Gemaess der Drosselungs-Regel vom 14.07.2026 (Wochenlimit-Schonung) war dieser Lauf als
**ein** Intensiv-Lauf mit moderatem Umfang (15-25 Positionen, hier: 6 Agenten × ca. 5-6
Destillate) angelegt, nicht als Dauerbetrieb im 30-40-Positionen-Vollgas-Modus der
frueheren Token-Vollgas-Phase.
