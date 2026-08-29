---
title: "Thermische Behaglichkeit: PMV/PPD-Modell nach Fanger, Bekleidungswerte, Kaltluftabfall (ETH Bauphysik III, Kapitel 2, Manz FS 2009)"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/04_Bauphysik_Energie/02_Skripte/00_Uebersicht/deutsch Manz/2 Thermische Behaglichkeit.pdf (Bauphysik III, FS 2009, ETH Zürich, Lehrstuhl für Bauphysik, Doz. Dr. H. Manz, Kapitel 2 «Thermische Behaglichkeit», 17 Seiten, vollständig gelesen; identische Kopie unter 02_Skripte/03_Energie/03_ETHZ/2 Thermische Behaglichkeit.pdf, MD5 f0a3b509e60c77a4adf3440e1ef9db55)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[aussenklima-grundlagen-solarstrahlung-erdreichtemperatur-eth-bauphysik-iii-manz]]", "[[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]]"]
---

# Thermische Behaglichkeit (ETH Bauphysik III, Kapitel 2)

## Kontext

Kapitel 2 «Thermische Behaglichkeit» aus dem Skript zur Vorlesung Bauphysik III, ETH Zürich, FS 2009, Dozent Dr. H. Manz. Fliesstext mit Formeln, Tabellen und Diagrammen. Behandelt das PMV/PPD-Modell nach P. O. Fanger als quantitatives Werkzeug, um thermischen Komfort im Innenraum vorherzusagen — ergänzt die eher konstruktionsseitigen Bauphysik-Artikel dieser KB um die Nutzerperspektive.

## Kennwert/Verfahren: PMV/PPD, Bekleidung, Kaltluftabfall

**Der Mensch in Zahlen** (Tab. 2.3, Referenzperson): Masse 70 kg, Volumen 70 dm³, Oberfläche 1.8 m², Körperkerntemperatur 37 °C, Hauttemperatur 34 °C, Atemluftmenge 0.5 m³/h, Atemzüge 16/min, Pulsschläge 60–80/min, H₂O-Produktion 40 g/h, CO₂-Produktion 15–20 l/min.

**Bekleidungswerte clo** (Tab. 2.2, Auszug der im Original lesbaren Werte): nackt/stehend 0.0 clo (0.0 m²K/W); Shorts/Badeanzug 0.1 clo (0.015 m²K/W); typische Tropenbekleidung (Slip, kurzärmliges Hemd/Bluse mit offenem Kragen, Shorts, leichte Socken, Sandalen) 0.3 clo (0.045 m²K/W). Als Referenz gilt: typische Winterbekleidung in Innenräumen entspricht ca. 1 clo. «Clo» ist die Abkürzung für englisch «cloth».

**PMV/PPD-Modell nach Fanger:** ausgehend von der globalen, stationären Energiebilanz des menschlichen Körpers berechnet das Modell ein Predicted Mean Vote (PMV) und daraus den erwarteten Prozentsatz Unzufriedener (PPD) über eine empirische Funktion. Auch im rechnerisch optimalen Raumzustand (PMV = 0) bleiben demnach 5 % der Personen unzufrieden — PPD hat ein Minimum von 5 %, nie 0 %.

**Optimale Raumtemperatur:** bei sitzender Tätigkeit und üblicher Hausbekleidung im Winter liegt die optimale Raumtemperatur θo bei 21.5 °C mit einem Toleranzbereich von ±2 K. Niedrigere Oberflächentemperaturen können durch höhere Lufttemperaturen kompensiert werden, jedoch sollte der Temperaturunterschied zwischen Oberfläche und Luft nicht grösser als etwa 1.5 bis 3 K sein.

**Lokale Komfortkriterien:** neben dem globalen PMV/PPD-Kriterium führt das Kapitel lokale Kriterien — Zugluft, Strahlungsasymmetrie, Fussbodentemperatur — als eigene Komfort-Teilaspekte.

**Zugluftrisiko:** das Modell zur Berechnung des Zugluftrisikos basiert auf Experimenten mit 150 Testpersonen bei Lufttemperaturen zwischen 20 °C und 26 °C, Luftgeschwindigkeiten bis 0.4 m/s und Turbulenzgraden zwischen 0 und 70 %; anwendbar für Personen mit leichter, vorwiegend sitzender Tätigkeit und annähernd neutralem Komfortempfinden für den ganzen Körper.

**Kaltluftabfall:** an kalten vertikalen Flächen — insbesondere Verglasungen im Winter — entstehen Abtriebsströmungen (Kaltluftabfall). Relevant ist meist weniger die maximale Luftgeschwindigkeit direkt am Fuss der kalten Fläche als die maximale Geschwindigkeit in der eigentlichen Aufenthaltszone (Abstand x ≥ 1 m von der Fläche). Soll aus Komfortgründen eine bestimmte Luftgeschwindigkeit nicht überschritten werden (im Skript beispielhaft vmax < 0.15 m/s), lässt sich daraus die zulässige Temperaturdifferenz zwischen Raumluft und kalter Oberfläche in Abhängigkeit der Höhe der kalten Fläche ableiten.

**Adaptiver Komfort:** Modelle zum adaptiven Komfort gehen davon aus, dass die Wetterbedingungen das Komfortempfinden mitbestimmen — je höher die mittlere Aussenlufttemperatur, desto höhere operative Raumtemperaturen werden noch als behaglich empfunden. Für die Nutzerzufriedenheit ist es meist vorteilhaft, wenn Nutzende das Innenraumklima in gewissen Grenzen selbst beeinflussen können (z. B. Fenster im Sommer öffnen).

## Praxisregel/Anwendung

21.5 °C ± 2 K (sitzende Tätigkeit, übliche Winterbekleidung) ist ein belegter Richtwert für Gespräche mit HLK-Planer oder Bauherrschaft zur Auslegungstemperatur — verständlicher als ein reiner Normwert, weil er mit dem PMV/PPD-Hintergrund erklärbar ist («auch im Optimum bleiben 5 % unzufrieden»). Das Kaltluftabfall-Kriterium (Komfortgrenze der Luftgeschwindigkeit in der Aufenthaltszone ab 1 m Abstand von der Fläche) ist ein sachliches Argument dafür, unter grossflächigen Verglasungen entweder einen ausreichend tiefen Uw-Wert (vgl. [[uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten]]) oder eine Kompensationsheizung vorzusehen, statt die Frage pauschal zu entscheiden.

## Offene Punkte

- Die konkrete Formel des PMV/PPD-Zusammenhangs sowie die Herleitung des Zugluft- und Kaltluftabfall-Kriteriums enthalten im Original mathematische Ausdrücke, die von der Textextraktion teils nur fragmentarisch erfasst wurden; im Artikel deshalb nur die textlich eindeutig belegten Kennwerte und Zusammenhänge wiedergegeben, keine rekonstruierten Formeln.
- Literaturliste nennt ASHRAE Standard 55 (2004) und ASHRAE Fundamentals Handbook Kap. 8 (2001) sowie eine Studie des Dozenten selbst (Manz/Frank 2004, CFD-Analyse Kaltluftabfall). Keine SIA- oder EN-ISO-Norm-Fundstelle für das PMV/PPD-Modell auf den gelesenen Seiten sichtbar — der eigentliche Normbezug (EN ISO 7730) ist gegen `wissen/normen` zu verifizieren, bevor dieser Artikel in einem verbindlichen JANS-Dokument als Normnachweis zitiert wird (Rule `normen-referenz`).
- Datenstand FS 2009; die zitierten ASHRAE-Standards wurden seither mehrfach revidiert.
