---
title: Historisches Terrain rekonstruieren — private Vermessungsbüros für die Baumassenziffer
status: emerging
last_updated: 2026-07-13
sources:
  - Realer JANS-Auftrag Gemeinde Regensdorf, Holenbachstrasse 45-55, Grundstück Nr. 7051
    (Mail-Thread Raphael Jans ↔ Acht Grad Ost AG, 28.–29.02.2024, cc Christoph Bopp/Nova Property,
    Melanie Müller/Gemeinde Regensdorf) — Auftrag "Bestimmung des gewachsenen Bodens für die
    Berechnung der Baumassenziffer"
  - Acht Grad Ost AG, Kloten (achtgradost.ch) — Liefergegenstand
    "Gemeinde_Regensdorf_Holenbachstrasse_45_55_Berechnung_massgebendes_Terrain" (PDF/DWG/LandXML,
    29.02.2024)
  - PL-01/KtZH Zuerich/achtgradost.ch/{240210_Lidar_AV, 240229_Terrain_1980, WebGIS, Zonenplan}
links: [[kartenportale-bund-geodaten]] [[kartenportale-grundlagen-checkliste-neue-parzelle]]
  [[massgebendes-terrain]] [[machbarkeit]]
---

# Historisches Terrain rekonstruieren — private Vermessungsbüros für die Baumassenziffer

Schliesst eine bisher unbearbeitete Lücke in PL-01 (Ordner `KtZH Zuerich/achtgradost.ch/`): die
amtlichen Geodaten-Kanäle aus [[kartenportale-bund-geodaten]] (`swissALTI3D`) liefern nur das
**aktuelle** Terrain. Für die Berechnung der Baumassenziffer/Baumassenreserve nach einer
BZO-Revision oder bei einem Bestandesbau-Abbruch/Neubau ist aber oft der **gewachsene Boden vor
der ersten Überbauung** massgebend (§ 273 PBG ZH bzw. kommunale BZO-Definition des massgebenden
Terrains — Sachverhalt für den Skill `massgebendes-terrain`, hier nur die
Geodaten-Beschaffungsseite). Dieses historische Terrain existiert in keinem amtlichen
Online-Geoportal — es muss aus **historischen Kartengrundlagen rekonstruiert** werden, und das
übernimmt in der Praxis ein **privates Vermessungsbüro**.

## 1. Der reale Fall: Regensdorf Holenbachstrasse 45-55 (2024)

Auftrag von Raphael Jans an **Acht Grad Ost AG** (Steinackerstrasse 2, 8302 Kloten,
`achtgradost.ch`, Kontakt Bruno Böller): "Bestimmung des gewachsenen Bodens für die Berechnung der
Baumassenziffer" für Grundstück Nr. 7051. Auftraggeber-Kontext: Christoph Bopp (Nova Property Fund,
bekannter JANS-Kunde, vgl. Memory `projekt_bewertung_bahnhofstrasse27_wangen`/KB `kunde-bopp`) als
Investor, Melanie Müller (Gemeinde Regensdorf) als behördlicher Ansprechpartner — die Bestellung
lief also im Dreieck Architekt/Investor/Gemeinde ab, nicht rein intern.

**Methode des Vermessungsbüros** (aus der Liefermail wörtlich):
1. Historische Karten des **kantonalen GIS** (hier: Stand **1980**, vor Baubeginn der
   Bestandesbauten) werden als Ausgangsbasis herangezogen (`1980_Geoadmin.pdf`).
2. Die auf der historischen Karte sichtbaren **10-Meter-Höhenlinien** werden abdigitalisiert, im
   gewünschten Bereich zusätzlich eine **Zwischenlinie** (im Fall: die 445-m-Linie) für höhere
   Präzision am Baukörper.
3. Aus den digitalisierten Höhenlinien werden die **Höhenkurven berechnet** und als **Höhenlinienplan**
   ausgegeben.
4. Liefergegenstand: **PDF** (Plan), **DWG** (CAD-Import) und **LandXML** (Geländemodell-Austausch,
   direkt in ArchiCAD/Rhino importierbar) — deckt damit sowohl die Prüfung von Hand als auch den
   direkten CAD-Import ab.

**Praxisrelevanz:** ohne diesen Schritt würde die Baumassenziffer/-reserve fälschlich gegen das
**heutige** (durch die Bestandesbauten bereits veränderte) Terrain gerechnet — ein systematischer
Fehler zulasten oder zugunsten des Bauherrn, je nachdem ob seither auf- oder abgetragen wurde.
Gerade bei Ersatzneubauten auf Parzellen mit jahrzehntealtem Bestand (hier: Überbauung vor 1980)
ist die Differenz zwischen historischem und heutigem Terrain nicht vernachlässigbar.

## 2. Wann amtliche Geodaten NICHT reichen — und wann ein privates Vermessungsbüro nötig wird

| Situation | Ausreichende Quelle |
|---|---|
| Aktuelles Terrain (unveränderte, unbebaute Parzelle) | `swissALTI3D` via `geo-zh.mjs --produkt height,dtm` ([[kartenportale-bund-geodaten]]) — kostenlos, sofort, login-frei |
| Terrain **vor** einer Überbauung, die vor Jahrzehnten stattfand | **Nicht** amtlich online verfügbar — swissALTI3D bildet nur den Ist-Zustand ab. Rekonstruktion aus historischen Karten/Vermessungsplänen nötig → privates Vermessungsbüro |
| Bestätigung/Beglaubigung des rekonstruierten Terrains gegenüber der Behörde | Vermessungsbüro liefert plausibilisierten Höhenlinienplan; Abgleich mit Gemeinde (im Fall: telefonischer Abgleich mit Frau Müller vorgesehen, aber nicht erreicht) bleibt sinnvoll, bevor der Plan in die Baueingabe geht |

**Weitere Dienstleistungen desselben Anbieter-Typs** (aus der Signatur, generisch auf die
Berufsgattung übertragbar, nicht anbieterspezifisch zu verstehen): Fixpunktnetze, Absteckungen,
Höhenangaben, Meterrisse, Volumenberechnungen, Deformationsmessungen — d.h. dieselben Büros, die
den amtlichen Grundstückskataster einmessen (vgl. [[kartenportale-geoportale-uebersicht]]
Abschnitt Amtliche Vermessung), bieten historische Terrain-Rekonstruktion als **Zusatzleistung**
an, nicht als eigenständiges Marktsegment.

## 3. Einordnung in die Beschaffungskette

Ergänzt die Standard-Checkliste in [[kartenportale-grundlagen-checkliste-neue-parzelle]] um einen
**bedingten** 9. Schritt: **"Wird das massgebende Terrain gegen den Zustand VOR einer
Bestandesüberbauung gerechnet (Baumassenreserve/-ziffer bei Abbruch-Neubau oder BZO-Revision)?
Falls ja: historische Terrain-Rekonstruktion bei einem Vermessungsbüro beauftragen — nicht bei
swissALTI3D suchen, das Produkt existiert dort nicht."** Dieser Schritt ist zeit- und kostenrelevant
(externe Bestellung, kein Self-Service) und sollte deshalb früh im Vorprojekt ausgelöst werden, wie
im realen Fall auch geschehen ("...bitte ich Sie die offerierten Arbeiten jetzt unverzüglich
auszulösen").

## 4. Offene Punkte

- Kein amtlicher/kantonaler Ersatz für diesen Schritt bekannt — bewusst kein Connector-Versprechen,
  da die Leistung zwingend eine individuelle Auftragsvergabe an ein Vermessungsbüro voraussetzt.
- Datengrundlage variiert je nach Verfügbarkeit historischer Karten (hier 1980er-Kataster-Scan);
  bei älteren/lückenhafteren Gemeindearchiven kann die erreichbare Genauigkeit geringer sein — im
  Einzelfall beim Vermessungsbüro erfragen, nicht pauschal annehmen.
- Verhältnis zum Skill `massgebendes-terrain` (dort die fachliche MT-Festlegung/Berechnung) noch
  nicht als expliziter Querverweis im Skill selbst verankert — Anschlussaufgabe (analog M2-Befund
  in [[kartenportale-grundlagen-checkliste-neue-parzelle]]).
