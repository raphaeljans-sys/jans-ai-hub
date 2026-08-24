---
quelle: "Merkblatt Sichere Lagerung von Lithium-Ionen-Batterien, stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/vorgaben/energie-gebaeudetechnik/merkblatt-lithium-ionen-batterien.pdf"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie- und Gebäudetechnik (FS EGT), in Zusammenarbeit mit Immobilien Stadt Zürich"
ausgabe: "September 2023, M-System-Nr. 389 (9 S.)"
gelesen: "vollständig, 2026-08-24 (pdftotext -layout, HTTP 200/application/pdf vor Auswertung per curl verifiziert, 217'189 Byte)"
datenstand: "September 2023 — von der aktuellen Dokumentenliste in [[ahb-richtlinie-gebaeudetechnik-229-2025]] (Stand 08.2025) unter Dok.-Nr. 389 weiterhin geführt, keine neuere Fassung gefunden"
status: established
last_updated: "2026-08-24"
---

# Destillat — Merkblatt Sichere Lagerung von Lithium-Ionen-Batterien, AHB Stadt Zürich, Dok.-Nr. 389, September 2023

## Das Wichtigste in 1 Satz

Dreistufiges Schutzkonzept für die Lagerung mobiler Lithium-Ionen-Akkus (Handy/Velo/
Elektrowerkzeug u. ä.) nach Energieinhalt: **sichere Platzierung** (< 1 kWh) → **zertifizierter
Sicherheitsschrank** (1–15 kWh) → **eigener Raum nach anerkannten Regeln + Rücksprache
Brandschutz** (> 15 kWh, Hazard Level II/III) — direkt anwendbar auf jedes JANS-Projekt mit
Velo-/E-Bike-Ladestationen oder Werkstatt-/Unterhaltsräumen.

## Fund-Anlass

Referenziert in `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (S. 5-6, Dok.-Nr. 389) als eines der
noch nicht einzeln destillierten AHB-Fachmerkblätter. Primärdokument per direktem PDF-Download
gefunden (`curl -sI` gegen Kandidaten-URL im selben `energie-gebaeudetechnik`-Verzeichnis wie
Dok. 229/386, HTTP 200/application/pdf), Volltext vollständig extrahierbar (kein Bildproblem wie
bei Dok. 393/394).

## Einordnung (Kap. 1–2)

Gilt für AHB-Bauvorhaben der Stadt Zürich (neu, um- oder instandgesetzt), ergänzt die
KBOB-Empfehlung Gebäudetechnik und `[[ahb-richtlinie-gebaeudetechnik-229-2025]]`. Grundsatz:
Lithium-Ionen-Batterien sind **wie Gefahrstoffe** zu behandeln — Brandgefahr durch havarierende
Energiespeichersysteme. Risikobeurteilung ist **objektbezogen**, zuständig Eigentümer/Nutzende
(Unterhalt) bzw. Fachplanung Elektro (Gesamtinstandsetzung/Neubau).

## Kap. 5 — Anforderungen nach Energieinhalt

| Energieinhalt | Massnahme | Kernkriterien |
|---|---|---|
| **< 1 kWh** | Sichere Platzierung/Verortung | Nicht in Nähe von Zündquellen; Lagerung in nicht brennbarem Volumenkörper; nur passende Ladegeräte, nach Ladung entfernen; keine Hitzeexposition |
| **1–15 kWh** | Zertifizierter Sicherheitsschrank | **Feuerwiderstand 90 Min. aussen→innen nach SN EN 14470-1**; **90 Min. innen→aussen nach SN EN 1363-1**; Konformitätserklärung; bei **aktiver** Lagerung (mit Lademöglichkeit) zusätzlich Rauchmelder |
| **> 15 kWh (Hazard Level II/III)** | Eigener Raum | Nach anerkannten Regeln der Technik erstellen/unterhalten; Details mit Brandschutzorganen klären; Verweis auf VKF-Brandschutzmerkblatt Lithium-Ionen-Batterien |

**Alarmierung (5.4):** Ist eine Brandmeldeanlage vorhanden/geplant, ist im aktiven
Sicherheitsschrank zwingend ein Rauchmelder des Brandmeldesystems zu installieren; ohne
Brandmeldeanlage ein unabhängiger Rauchmelder mit potentialfreiem Alarmkontakt, aufgeschaltet
auf ein bauseitiges Alarmierungsportal.

## Literaturverzeichnis (Kap. 6) — Anschlussnormen

KBOB-Empfehlung Gebäudetechnik · `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` ·
**SIA 2061 Batteriespeichersysteme in Gebäuden** · VKF-Brandschutzmerkblatt Lithium-Ionen-Batterien
· **NIN SN 411000** (Niederspannungs-Installationsnorm) · **SNR 460712** (Stationäre elektrische
Speichersysteme, NIN).

## Bauherren-Transfer

- **Velo-/E-Bike-Räume und Unterhaltswerkstätten** sind der typische JANS-Praxisfall unterhalb
  1 kWh je Einzelgerät, aber die **Summe** mehrerer Ladeplätze kann rasch die 1-kWh-Schwelle
  überschreiten (Energieinhalt ist kumulativ über «sämtlich vorhandene» Batterien im Raum zu
  rechnen) — bei Mehrfach-Ladestationen früh die Sicherheitsschrank-Schwelle prüfen, nicht erst
  bei der Ausschreibung.
- **PV-Heimspeicher/Batteriespeicher** (vgl. `[[batteriespeicher-heimspeicher-pv-ch]]`) fallen
  energetisch regelmässig über 15 kWh und damit in die Raumkriterien-Stufe — dieses Merkblatt
  liefert dafür nur den Verweis auf SIA 2061 und die VKF, keine eigenen Bauteilanforderungen (Kap.
  5.3 bewusst nicht ausformuliert, nur «nach anerkannten Regeln der Technik»).
- Die **90-Minuten-Feuerwiderstandswerte** (SN EN 14470-1/1363-1) sind konkrete, sofort in ein
  Pflichtenheft übernehmbare Produktanforderungen an Sicherheitsschränke — nützlich als
  Ausschreibungstext-Vorlage unabhängig vom AHB-Kontext.

## Offene Punkte

- Kap. 5.3 (Raumkriterien > 15 kWh) verweist nur auf «anerkannte Regeln der Technik» und die VKF,
  ohne eigene Bauteilwerte. **Korrektur (24.08.2026):** Das VKF-Brandschutzmerkblatt ist entgegen
  einer früheren Fassung dieses Abschnitts **in dieser KB bereits vorhanden und primärquellen-
  belegt** — `[[vkf-lithium-batteriespeicher-brandschutz]]` (Run 94, established) liefert genau die
  hier fehlenden Bauteilwerte: dreistufige Hazard-Level-Tabelle nach kWh/Brandabschnitt (HL I
  < 15 kWh, HL II 15–100 kWh EI 60/EI 30 bei LFP nach FAQ 2005-01, HL III > 100 kWh
  Freiaufstellung/RF1-Nebenbaute). Die 15-kWh-Schwelle dieses AHB-Merkblatts und die HL-I/II-Grenze
  des VKF-Merkblatts sind **dieselbe Zahl**, nur aus verschiedenen Regelwerken — kein Widerspruch,
  sondern Bestätigung.
- Keine Aktualitätsprüfung über den Verweis in Dok. 229 (Stand 08.2025) hinaus.

**Backlinks:** [[ahb-richtlinie-gebaeudetechnik-229-2025]] · [[batteriespeicher-heimspeicher-pv-ch]] ·
[[vkf-lithium-batteriespeicher-brandschutz]]
