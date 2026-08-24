---
quelle: "Merkblatt Storensteuerung, Fachstelle Energie- und Gebäudetechnik (FS EGT), stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/vorgaben/energie-gebaeudetechnik/merkblatt-storensteuerung.pdf"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie- und Gebäudetechnik (FS EGT), Amtshaus III, Lindenhofstrasse 21, Postfach, 8021 Zürich (Bearbeitung Adiutec AG Zürich)"
ausgabe: "März 2017, M-System-Nr. 386 (Änderungsgeschichte-Tabelle im Dokument leer — keine dokumentierte Revision seit Erstausgabe; PDF-Metadaten zeigen ein technisches ModDate 13.06.2024, jedoch keinen inhaltlichen Änderungsvermerk)"
gelesen: "S. 1-33 vollständig, 2026-08-24 (PyPDF2-Volltext, HTTP 200/application/pdf verifiziert, 353'611 Byte)"
datenstand: "März 2017 ⚠ 9 Jahre alt, aber laut Dokumentenliste der Richtlinie 229 (August 2025) weiterhin als gültiges Fachmerkblatt Nr. 386 geführt — keine neuere Fassung gefunden"
status: established
last_updated: "2026-08-24"
---

# Destillat — Merkblatt Storensteuerung, AHB Stadt Zürich, M-System-Nr. 386, März 2017

## Das Wichtigste in 1 Satz

Für AHB-Bauvorhaben der Stadt Zürich definiert dieses Merkblatt die verbindliche Funktions- und
Steuerungslogik für Storen/Sonnenschutz (Produktschutz vor Komfort vor Energie vor Bedienung),
mit konkreten Grenzwerten für Wind-, Frost-, Regen- und Helligkeitsautomatik sowie einer
Raumtyp-Matrix, die auch **Bettenzimmer** und **Stationszimmer** explizit erfasst.

## Fund-Anlass und Einordnung

Referenziert namentlich in `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (Dokumentenliste S. 5-6,
Doc.-Nr. 386) als eines der aktuell gültigen AHB-Fachmerkblätter, dort als Kandidat mit
Healthcare-Relevanz priorisiert. Primärquelle direkt über dieselbe `stadt-zuerich.ch`-Verzeichnisstruktur
gefunden wie die bereits destillierte Richtlinie 229 (Dateiname nach demselben Muster erraten und
per `curl` gegen HTTP-Status/Content-Type verifiziert, bevor gelesen wurde).

## Aufbau des Merkblatts

Vier Teile: **Checkliste** (Leistungszuordnung nach SIA-Phasen), **Zuordnungsmatrix** (welche
Funktion je Raumtyp), **Funktionen** (Definitionstexte für Ausschreibungen) und **Festlegungen**
(Detailanforderungen, Steuerungsverhalten, Wartung).

## Funktionsmatrix pro Raum (Kap. 3.1) — Auszug Healthcare-relevant

Legende: ■ = Muss, ☑ = Empfohlen (prüfen), □ = Kann projektspezifisch festgelegt werden.

| Raumtyp | Produktschutz | Service | Brand | Blendschutz | Zeitfunktion | Bedienung Raum | Szene | Bedienung Zentral |
|---|---|---|---|---|---|---|---|---|
| **Bettenzimmer** | ■ | ☑ | □ | ☑ | ☑ | ■ | □ | □ |
| **Stationszimmer** | ■ | ☑ | □ | ☑ | ☑ | ■ | □ | ☑ |
| Sitzungszimmer | ■ | ☑ | □ | ☑ | ☑ | ■ | ☑ | ☑ |
| Turnhalle | ■ | ☑ | □ | □ | ☑ | ■ | □ | ☑ |

(Übrige Spalten: Überhitzungsschutz/Thermoautomatik/Raumbetriebsarten/Sonnenstandsnachführung/
Fremdverschattung/Trennwandfunktion tragen bei Bettenzimmer/Stationszimmer durchweg □ — projektspezifisch,
kein Muss/Empfehlung.) Insgesamt 20 Raumtypen tabelliert (Ausstellungshalle bis Wasch-/Trockenraum);
volle Matrix im Original S. 8.

## Produktschutz-Grenzwerte (Kap. 3.2, Kap. 4.1)

| Funktion | Aktivierung | Rückstellung | Verzögerungszeit Aktivierung |
|---|---|---|---|
| Windschutzautomatik | gemäss Storenlieferant (kein CH-weiter Fixwert) | 10 % kleiner als Grenzwert Aktivierung | < 10 s (Rückstellung ~15 min) |
| Regenschutzautomatik (Markisen) | — | nach Ende Niederschlag + Verzögerung | < 2 s |
| Frostschutzautomatik | < 2 °C | > 4 °C | < 2 s |
| Thermoautomatik (Globalstrahlung) | gemäss HLK-Planer, z. B. 250 W/m² | gemäss HLK-Planer, z. B. 200 W/m² | < 60 s |
| Blendschutz (Helligkeit) | ~ 25 kLux | — | ~ 10 s |

**Priorität bei Konflikt (Kap. 4.1.1, höchste zuerst):** Brandfunktion → Windschutzautomatik →
Frostschutzautomatik → Regenschutzautomatik → Servicefunktion. Eine manuelle Raumbedienung
übersteuert alle Komfort-/Energiefunktionen, aber keine Schutzfunktion.

**Ausfallverhalten (Kap. 4.1.3):** bei Ausfall Windsensor Reaktion (obere Endlage) spätestens nach
48 h; Temperatursensor/Gerät/Kommunikation spätestens nach 1 h. Windsensor-Positionierung:
mind. 80 cm über höchstem Dachpunkt, bei Bedarf zusätzliche Fassadensensoren.

## Wartung (Kap. 4.2)

Erste zwei Jahre nach Übergabe **zweimal jährlich** (Frühling/Herbst), danach **einmal jährlich**
(Herbst); Interventionszeit vor Ort nach Störungsmeldung max. **48 Stunden**.

## Konkretisierte Normen/Richtlinien (durchgehend im Dokument zitiert)

NPK 784 Raumautomation, VDI 3813 Raumautomation (Ausgabe Mai 2011), SIA 386.110 (SN EN
15232:2012) Energieeffizienz von Gebäuden — Einfluss Gebäudeautomation, Minergie®-Modul
«Sonnenschutz» Version 1.10.2009a.

## Bauherren-Transfer

Bei Spitalprojekten (Bettenzimmer, Stationszimmer) verlangt die Stadt-Zürich-Praxis mindestens
Produktschutz (Muss) und Raumbedienung (Muss), Service und Blendschutz sind zu prüfen —
Vollautomatik (Sonnenstandsnachführung, Thermoautomatik) ist dort **nicht** Standard, sondern
projektspezifisch zu begründen. Die numerischen Grenzwerte (Frost < 2 °C / > 4 °C, Blendschutz
~25 kLux, Globalstrahlung ~250/200 W/m²) sind Planungsvorgaben der Stadt Zürich, keine
Schweizer Norm — bei privaten/kantonalen Bauherrschaften ausserhalb AHB nur als Orientierungswert
zu verwenden.

## Offene Punkte

- **Cross-Quellen-Spannung, nicht in diesem Lauf aufgelöst:** die beiden Raummodule
  `[[ahb-raummodul-buero]]` und `[[ahb-raummodul-klassenzimmer]]` (AHB Stadt Zürich, 2008) nennen
  für dieselbe Frostschutzfunktion eine **kombinierte** Bedingung «< 2 °C UND relative Feuchte
  > 95 %», dieses jüngere Merkblatt (2017) nennt in Kap. 3.2 nur «< 2 °C» ohne Feuchtebedingung
  (im ganzen Dokument kommt «Feuchte» nur in einem SIA-180-Literaturverweis vor, nicht in der
  Frostschutz-Parametertabelle selbst). Beide Quellen sind vom selben Herausgeber (AHB), das
  Merkblatt ist die spätere, generischere Fassung — nicht geklärt, ob die Feuchtebedingung bewusst
  gestrichen wurde (z. B. weil ein Feuchtesensor in der Praxis selten verbaut wird) oder ob sie
  nur in den älteren Raummodulen redaktionell ergänzt war. Für ein aktuelles Projekt ist die
  Feuchtebedingung baupraktisch die plausiblere (reine Kälte ohne Kondensat vereist Storen kaum),
  aber ohne weitere Quelle nicht als Regel zu verallgemeinern.
- Kein CH-weiter oder normierter Windgeschwindigkeits-Grenzwert (bewusst herstellerabhängig) —
  für eine eigene Bauherren-Faustregel bräuchte es eine Zusatzquelle (z. B. Storenhersteller-Datenblatt).
- Anhang 5.3 «Systeme» (S. 31-33, Systemvergleiche/Topologien) nicht im Detail transkribiert —
  informativ, ohne eigene Zahlenwerte über die bereits erfassten hinaus.
- Ob eine neuere Fassung existiert, ist nicht abschliessend geprüft (gleiche Werkzeuggrenze wie bei
  `[[ahb-richtlinie-gebaeudetechnik-229-2025]]`: die vollständige Dokumentenliste unter
  www.stadt-zuerich.ch/egt liefert per WebFetch nur Navigationsstruktur).

## Backlinks

- `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (referenzierende Übersicht, Doc.-Nr. 386)
- `wiki/gebaeudetechnik-pflichtenheft.md`
