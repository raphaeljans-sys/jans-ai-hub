---
quelle: «Richtlinie Luftdichtheit bei Minergie-Bauten (RiLuMi)», Version 2022.1, 21.12.2021 (minergie.ch/media/211221_rilumi_v2022.1_de.pdf)
herausgeber: Verein Minergie / Thermografie- und Blower-Door Verband Schweiz (theCH), unterstützt durch EnergieSchweiz
ausgabe: PDF, 51 Seiten (vollständig via curl-Download + pdftotext gelesen, Run 55)
gelesen: 2026-07-13 (vollständig: Kap. 1-8 inkl. Anhang; vorher nur S. 1-8/Kap. 1-3 per PDF-Bildextraktion)
datenstand: Version 2022.1, Messnorm SN EN ISO 9972 seit 09/2015 gültig (löst EN 13829 ab, vom SIA zurückgezogen); übergeordnete Norm SIA 180 Ausgabe 07/2014
status: established
last_updated: 2026-07-13
---

# RiLuMi — Luftdichtheits-Grenzwerte Minergie/-P/-A (n50/qE50)

**Das Wichtigste in 1 Satz:** Minergie verlangt für Neubauten eine Luftdurchlässigkeit
qE50 ≤ 1,2 m³/(h·m²) (Minergie-P/-A ≤ 0,8), bei Erneuerungen einheitlich ≤ 1,6, gemessen
per Blower-Door-Test nach SN EN ISO 9972 mit max. ±15 % Gesamtmessunsicherheit — und ein
Luftdichtheitskonzept ist beim Minergie-Basisstandard mit dem Zertifizierungsantrag
**zwingend** einzureichen, nicht erst bei der Messung selbst.

## Warum Luftdichtheit wichtig ist (RiLuMi, Kap. 1.2, wörtlich die vier Gründe)
- Gewährleistung von Bauschadenfreiheit
- Sicherstellung einer hohen Behaglichkeit (z.B. Vermeiden von Zugluft, Geruchsübertragungen, Schall, Feuchte)
- Vermeidung von Infiltrationen
- Minimierung von Wärmeverlusten

## Normen-Hierarchie
- **SIA 180** (Ausgabe 07/2014) = übergeordnete Schweizer Norm, schreibt grundsätzlich die
  Erstellung eines Luftdichtheitskonzepts vor.
- **SN EN ISO 9972** (seit 09/2015, weltweit gültig) = aktuelle Messnorm, hat **EN 13829**
  (11/2000, «vom SIA zurückgezogen») abgelöst. Seit RiLuMi 2018 wird «in Anlehnung an
  Verfahren 2» nach ISO 9972 gemessen statt «Verfahren B» nach EN 13829.
- Kenngrösse ist **qE50** [m³/(h·m²)] (Luftdurchlässigkeit bei 50 Pa Bezugsdruckdifferenz,
  bezogen auf die Hüllfläche AE) — nicht mehr n50 [h⁻¹] (Luftwechselrate, Volumenbezug) wie
  in älteren Quellen/Deutschland üblich. Beide Grössen sind über das Innenvolumen umrechenbar,
  aber **die RiLuMi-Grenzwerttabelle ist in qE50 ausgedrückt**, nicht in n50 — beim Vergleich
  mit deutschen n50-Faustwerten (Passivhaus 0,6 h⁻¹) ist Vorsicht geboten (andere Bezugsgrösse).

## Einzuhaltende Grenzwerte qE50 [m³/(h·m²)] (Tabelle 6, RiLuMi 2022.1)
| | Minergie | Minergie-P | Minergie-A |
|---|---|---|---|
| Anforderung Neubau | ≤ 1,2 * | ≤ 0,8 | ≤ 0,8 |
| Anforderung Erneuerung | ≤ 1,6 | ≤ 1,6 | ≤ 1,6 |

\* Eissporthallen: qE50 ≤ 1,0 m³/(h·m²) (eigene Sonderregel).

Beurteilungsregel: Massgebend ist der auf 1 Dezimalstelle gerundete Messwert (Mittelwert aus
Unter- und Überdruck). Beispiel aus der Quelle: ein Messwert qE50 = 0,84 m³/(h·m²) wird zu
0,8 gerundet → Grenzwert Minergie-P erfüllt.

## Konzept-/Mess-/Nachweispflicht je Standard (Tabelle 5)
| | Minergie | Minergie-P | Minergie-A |
|---|---|---|---|
| Luftdichtheitskonzept | zwingend einzureichen | fakultative Einreichung | fakultative Einreichung |
| Luftdichtheits-Messkonzept | empfohlen ab 5 Nutzungseinheiten | zwingend ab 5 Nutzungseinheiten | zwingend ab 5 Nutzungseinheiten |
| Luftdichtheits-Messung | empfohlen | zwingend | zwingend |

Bei Minergie-P/-A ist die Messung **inkl. Leckageortung** durchzuführen; bei einfachem
Minergie-Standard ist die Messung zur Grenzwert-Feststellung nur **fakultativ** (kann aber als
vorgezogene Qualitätssicherungsmessung sinnvoll sein, um Leckagen vor der Verkleidung zu finden).

## Mess-Randbedingungen (Kap. 3.1/3.2)
- Max. Gesamt-Messunsicherheit: **±15 %**.
- Max. natürliche Druckdifferenz während der Messung: **5 Pa** (Punkt 5.5.5 SN EN ISO 9972).
- Messzeitpunkt: entweder als vorgezogene Messung (vor Fertigstellung, zur Leckageortung) oder
  als Abnahmemessung des fertig erstellten Bauwerks.
- Erfüllte Grenzwerte schliessen einzelne Leckagen/verdeckte Konstruktionsmängel nicht
  vollständig aus; die Luftdurchlässigkeit kann sich über die Zeit verändern (ausdrücklicher
  Vorbehalt in der Quelle).

## Bauherren-Transfer
Für den Bauherrn heisst das konkret: Ein Blower-Door-Test ist bei Minergie-P/-A **Pflicht**,
bei einfachem Minergie **nur das Konzept** Pflicht, die Messung selbst freiwillig (aber
empfehlenswert, weil verdeckte Mängel — Steckdosen, Kabeldurchführungen, Fensteranschlüsse —
sich sonst erst nach Fertigstellung/Einzug als Zugluft, Schimmelrisiko oder unnötig hohe
Heizkosten zeigen). Bei einer **Sanierung** ist die Anforderung mit 1,6 deutlich lockerer als
im Neubau (0,8-1,2) — realistische Rücksicht auf bestehende, oft nicht vollständig sanierbare
Bauteile (Böden, Decken). Der Test selbst muss vor Fertigstellung der Bekleidung geplant werden
(vorgezogene Messung), sonst sind Leckagen nur noch mit Rückbau auffindbar.

## Norm SIA 180:2014 selbst — Grenzwerte gelten für JEDES Gebäude, nicht nur Minergie (Kap. 8.2, Tab. 9)
Wichtiger Befund, der den bisher offenen Punkt löst: Die Norm SIA 180 setzt **eigene, von Minergie
unabhängige Grenz- und Zielwerte** für die Luftdichtheit — sie gelten grundsätzlich für **jedes**
Gebäude in der Schweiz, das nach SIA 180 geplant wird (nicht nur für zertifizierte Minergie-Bauten):

| | Grenzwert natürl. Lüftung qa50,li | Grenzwert mech. Lüftung qa50,li | Zielwert qa50,ta |
|---|---|---|---|
| Neubauten | 2,4 m³/(h·m²) | 1,6 m³/(h·m²) | 0,6 m³/(h·m²) |
| Umbauten/Erneuerungen | 3,6 m³/(h·m²) | 2,4 m³/(h·m²) | 1,2 m³/(h·m²) |

Grenzwerte sind **zwingend einzuhalten**, Zielwerte nur «anzustreben». Wichtig: diese SIA-180-Werte
sind **lockerer** als die Minergie-Anforderungen (Minergie-Neubau 1,2/1,6 je nach Lüftungsart liegt
zwischen SIA-Grenz- und Zielwert) — Minergie verschärft die ohnehin geltende SIA-Norm, ersetzt sie
nicht. Zusätzlich verlangt SIA 180 Kap. 3.3.4 einen separaten Grenzwert **2 m³/(h·m²)** für Trennwände
zwischen Wohnräumen und Räumen mit Luftverschmutzungs-/Feuchtequellen (Garage, Keller, Radon-Räume).
**Bauherren-Kernaussage:** Auch ohne Minergie-Zertifizierung gilt für jeden SIA-180-konformen
Schweizer Neubau eine Luftdichtheits-Mindestanforderung — «wir bauen nicht nach Minergie» befreit
nicht automatisch von einer Luftdichtheits-Sorgfaltspflicht.

## Luftdichtheitskonzept — wann was verlangt wird (Kap. 4)
- **Minergie-Basisstandard:** Luftdichtheitskonzept ist mit dem Zertifizierungsantrag **zwingend
  einzureichen** — entweder als Grobkonzept (Nachweisformular Planzeichnung) oder als ausgefüllter
  Fragebogen. Enthält u.a. Grundrisse/Schnitte mit eingezeichneter luftdichter Ebene (durchgehende
  farbige Linie), kritische Detailpunkte, Materialisierung der Regelaufbauten.
- **Minergie-P/-A:** Konzept nach SIA 180 zu erstellen, Einreichung bei der Zertifizierungsstelle
  nur **fakultativ**.
- **Wohnungsbau:** Wohnungen müssen untereinander luftdicht sein (kaum Spielraum); wird eine Garage
  in den Dämmperimeter integriert, muss die luftdichte Ebene zwischen Wohnteil und Garage verlaufen
  (Tür UND Garagentor luftdicht). Bei baugleichen Geschossen genügt ein Konzept pro Geschosstyp.
- **Zweckbauten** (Büro/Hotel/Altersheim/Spital/Hallenbad/Eissporthalle): der Luftdichtheitsperimeter
  muss schon in der Projektierung je Nutzungszone festgelegt werden (z.B. einzelne Patientenzimmer/
  OP/Reinräume im Spital). Wichtiger Hinweis: «rauchdicht» (Brandabschnitt) ist **nicht gleichbedeutend
  mit luftdicht** — Brandschutztore müssen ohne gesonderte Planer-Festlegung weder rauch- noch
  luftdicht sein (SIA 180, Kap. 3.6.1.1).
- **Kritische Bauteile** (Roll-/Schiebe-/Falttore, Publikumseingänge, Rauch-/Wärmeabzugsflügel RWA,
  Cheminée-Frischluftklappen, Katzenklappen, Dunstabzug mit Abluftbetrieb): dürfen bei der
  Minergie-Messung provisorisch abgedichtet werden (gelten als «absichtlich vorhandene Öffnungen»),
  bleiben aber im Betrieb eine unvermeidbare, wenn auch quantifizierbare Schwachstelle.

## Messkonzept, Messzonen-Anzahl und Messdurchführung (Kap. 5-6)
- Bei Wohnüberbauungen müssen nicht alle Wohnungen gemessen werden — Tabelle 7 gibt die
  Bandbreite vor: z.B. bei 10 Messzonen sind 6-9 Messungen gefordert, bei 100 Messzonen 14-20.
  Auswahlkriterien: unterschiedliche Wohnungstypen/-expositionen, grosse Fassadenflächen,
  «kritische Lage» (Dachgeschoss, Erdgeschoss, Anschluss an Lift) bevorzugt.
- Bei **Erweiterungen/Umnutzungen**: sind Alt- und Neubauteil klar getrennt, gilt für jeden Teil
  sein eigener Grenzwert (Neubau 0,8/1,2, Bestand 1,6); sind sie offen verbunden, wird ein
  flächengewichteter **objektspezifischer Grenzwert (osGW)** errechnet:
  osGW·qE50 = (A_E,Altbau × 1,6 + A_E,Neubau × 0,8 oder 1,2) / (A_E,Altbau + A_E,Neubau).
  Bei Umnutzung mit Raumtemperaturänderung >5 K gilt der Neubau-Grenzwert, bei ≤5 K oder ohne
  Temperaturänderung der Erneuerungs-Grenzwert 1,6.
- **Vorgezogene Messung** (vor Fertigstellung der Bekleidung/Ausbauarbeiten): wird als
  Minergie-Nachweis anerkannt, wenn Grenzwert erreicht — keine zweite Abnahmemessung nötig. In
  der Praxis von Unternehmern erwünscht, weil Leckagen dann noch einfach nachbesserbar sind.
- **Provisorische Abdichtungen bei der Messung** (Tabelle 8, Auszug): Aussentüren/Fenster/
  Dachfenster schliessen; Innentüren offen; Türen zu unbeheizten Bereichen (Keller, Garage)
  schliessen; Zu-/Abluft der Wohnungslüftung abdichten und dokumentieren; Elektrokasten/Steckdosen/
  Einbaulampen NICHT abdichten («keine» = gehören zur Gebäudehülle-Beurteilung dazu).
- **Leckageortung** (qualitative Prüfung, Pflicht zusätzlich zur quantitativen Messung) erfolgt
  typischerweise bei ca. 50 Pa Unterdruck mit Handrücken/Strömungsröhrchen/Rauch/Thermografie.
- Max. Gesamt-Messunsicherheit ±15 %, max. natürliche Druckdifferenz während Messung 5 Pa,
  Messgerät-Genauigkeit Druck ±1 Pa (0-100 Pa) / Temperatur ±0,5 K.

## Messbericht (Kap. 7)
Muss neben den ISO-9972-Pflichtangaben zusätzlich enthalten: Minergie-Standard des Gebäudes,
Wind-Lagefaktor (A/B/C), Gesamthöhe der Messzone (Stack-Effekt), AE-Berechnung mit Planunterlagen,
genaue Beschreibung aller provisorischen Abdichtungen, Zustand der Nachbarzonen (Fenster offen?) —
unabhängig vom Bestehen/Nichtbestehen sind die wichtigsten gefundenen Leckagen mit Fotos zu
dokumentieren.

## Offene Punkte
- Kosten eines Blower-Door-Tests in der Schweiz (CHF) weiterhin nicht recherchiert (Fachthema
  fehlt in dieser Quelle vollständig — reine Regelwerks-/Verfahrensquelle, keine Marktpreise).
- Kapitel 8.3-8.5 (weitere Messmethoden, Lüftungsanlagen-Abdichtung im Detail, grosse Gebäude)
  nur überflogen, nicht im Wortlaut übernommen — geringe Bauherren-Relevanz gegenüber Kap. 1-7.
