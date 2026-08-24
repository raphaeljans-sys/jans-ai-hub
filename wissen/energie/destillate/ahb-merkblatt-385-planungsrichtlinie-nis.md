---
quelle: "Planungsrichtlinie Nichtionisierende Strahlung PR-NIS, stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/vorgaben/energie-gebaeudetechnik/planungsrichtlinie-nichtionisierende-strahlung.pdf"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie- und Gebäudetechnik (FS EGT); Arbeitsgruppe Arnold Engineering, maxwave AG, ewz, Immobilien-Bewirtschaftung"
ausgabe: "Version 2.1, 8. August 2011, M-System-Nr. 385 (34 S.)"
gelesen: "grösstenteils (Kap. 1-2.5, S. 1-14/34 vollständig, PyMuPDF-Volltext via pdftotext -layout; Anhänge A-E S. 19-34 informativ/Messmethodik nicht ausgewertet), HTTP 200/application/pdf vor Auswertung per curl verifiziert, 950'517 Byte"
datenstand: "August 2011 ⚠⚠⚠ 15 Jahre — Richtlinie selbst sieht eine Überprüfung alle vier Jahre vor (Kap. 1.6), letzte dokumentierte Revision 2011; von der aktuellen Dokumentenliste in [[ahb-richtlinie-gebaeudetechnik-229-2025]] (Stand 08.2025) weiterhin unter Dok.-Nr. 385 referenziert (im Fliesstext, nicht in der dortigen Kurzliste namentlich aufgeführt) — keine neuere Fassung gefunden, aber auch nicht gezielt danach gesucht"
status: emerging
last_updated: "2026-08-24"
---

# Destillat — Planungsrichtlinie Nichtionisierende Strahlung (PR-NIS), AHB Stadt Zürich, Dok.-Nr. 385, August 2011

## Das Wichtigste in 1 Satz

Städtische Zusatzrichtlinie zur eidgenössischen NISV: definiert für stadteigene Bauten **strengere,
raumnutzungsabhängige Immissionsgrenzwerte** für elektromagnetische Felder (Nutzungszone A =
besonders empfindliche Nutzung wie Kinderräume/Bettenzimmer, Nutzungszone B = übrige
Daueraufenthaltsräume) und macht sie **messtechnisch überprüfbar** — mit expliziter
Healthcare-Zeile (Bettenzimmer/Stationszimmer/Behandlungsräume).

## Fund-Anlass

Referenziert in `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` als eines der noch nicht einzeln
destillierten AHB-Fachmerkblätter. Primärdokument per direktem PDF-Download gefunden (`curl -sI`
im selben `energie-gebaeudetechnik`-Verzeichnis wie Dok. 229/386/389, HTTP 200/application/pdf),
Volltext extrahierbar (kein Bildproblem).

## Warum diese Richtlinie über die NISV hinausgeht (Kap. 1.1)

Die eidgenössische **NISV** (Verordnung über den Schutz vor nichtionisierender Strahlung, seit
1.2.2000) legt Anlagegrenzwerte nur für bestimmte Anlagetypen fest (Freileitungen, Trafostationen,
Sendeanlagen usw.), **nicht aber für die elektrische Hausinstallation selbst** — dort gilt nur
«Stand der Technik», kein Zahlenwert. Die PR-NIS schliesst diese Lücke für stadteigene Gebäude mit
eigenen Nutzungszonen und Grenzwerten.

## Nutzungszonen (Kap. 1.4)

- **Nutzungszone A (NZA)** — Orte mit besonders empfindlicher Nutzung: Kinderkrippen/-horte/
  -gärten/-spielplätze, Schlafzimmer, **Bettenzimmer**.
- **Nutzungszone B (NZB)** — Räume/Aussenflächen, in denen sich Personen regelmässig während
  längerer Zeit aufhalten (alles Übrige mit Daueraufenthalt).
- **Orte für kurzfristigen Aufenthalt (OKA)** — jede NZA/NZB ist automatisch auch ein OKA.

## Tabelle 3 — Grenzwerte nach Nutzung (Auszug, Healthcare + Wohnen)

| Kategorie | Nutzung | Zone |
|---|---|---|
| Spitäler, Krankenheime | **Bettenzimmer** | **NZA** |
| Spitäler, Krankenheime | Stationszimmer | NZB |
| Spitäler, Krankenheime | Behandlungsräume | NZB |
| Schulen | Schulzimmer | NZA |
| Schulen | Kindergarten, Kinderhort | NZA |
| Wohnen | Wohnraum, Schlafzimmer | NZA (Schlafzimmer) / NZB (Wohnraum) |
| Allgemein | Kinderspielplätze | NZA |
| Verwaltung | Büro, Sitzungszimmer | NZB |

⚠ Bemerkenswert für Healthcare-Projekte: **das Bettenzimmer selbst liegt in der strengeren Zone A**,
Stationszimmer und Behandlungsräume dagegen nur in der weniger strengen Zone B — die Abstufung
folgt der Aufenthaltsdauer/-art der Patientinnen und Patienten, nicht dem medizinischen Charakter
des Raums allgemein.

## Tabelle 4 — Grenzwerte für elektrische/magnetische Felder (Auszug, 50 Hz — typische Netzfrequenz)

| Frequenz | GNZB Magnet. Flussdichte [µT] | GNZB El. Feldstärke [V/m] | GNZA Magnet. Flussdichte [µT] | GNZA El. Feldstärke [V/m] |
|---|---|---|---|---|
| 50 Hz | 1 | 500 | 0.4 | 50 |

Zone A ist damit bei 50 Hz **10× strenger** als Zone B (0.4 vs. 1 µT bzw. 50 vs. 500 V/m) — die
vollständige Tabelle (1 Hz bis 300 GHz) im Original, Kap. 2.3.

## Planungsablauf und Kosten (Kap. 2.1, 2.5)

Erste Massnahme: **NIS-Zonenplan** mit Raumzuordnung nach Nutzung, phasengerecht nach SIA 102/108
(ab Vorstudie). Massnahmenkatalog u. a.: Hauptleitungen/Steigzonen/Verteilanlagen nicht in
NZA/NZB-Räumen, TN-S-Erdungssystem für die gesamte Elektroinstallation, streufeldarme
Gruppenleitungen in NZA/NZB. **Kostenfolge:** bei den Elektroinstallationen (BKP 23) ist mit
**Mehrkosten von 1–3 %** zu rechnen; zusätzlich Planungsmehraufwand (SIA-Honorarordnung 102/108)
und Abnahme-/Kontrollmessungen.

## Bauherren-Transfer

- Für **JANS-Healthcare-Mandate** (Pflegeheim/Spital) liefert diese Richtlinie eine konkrete,
  zahlenbasierte Vorgabe, die über die blosse NISV-Konformität hinausgeht — insbesondere die
  Bettenzimmer-Einstufung in die strengere Zone A ist ein direkt zitierfähiges Argument gegenüber
  Elektroplanern, auch ausserhalb eines AHB-Auftrags.
- **1–3 % Mehrkosten BKP 23** ist eine belastbare Grössenordnung für eine frühe Kostenschätzung,
  wenn ein privater Bauherr ein ähnlich strenges NIS-Konzept wünscht.
- Ergänzt das bereits vorhandene, deutlich ältere Destillat
  `[[elektrosmog-informationsblatt-ahb-ewz]]` (2002, allgemeines Informationsblatt ohne eigenes
  Zonen-/Grenzwertsystem) um die konkrete, messtechnisch prüfbare AHB-Systematik.
- **Datenstand-Warnung ernst nehmen:** die Richtlinie selbst schreibt eine Überprüfung alle vier
  Jahre vor: seit der letzten dokumentierten Revision (2011) sind das mindestens drei ausgefallene
  Zyklen. Für ein aktuelles Bauherren-Pflichtenheft vor Zitat prüfen, ob eine neuere Fassung
  existiert (in diesem Lauf nicht gezielt gesucht, nur über den Verweis in Dok. 229 gefunden).

## Offene Punkte

- Anhänge A–E (Herleitung der Grenzwerte, Referenzmessungen, NIS-Zonenplan-Muster,
  Messempfehlung, Messprotokoll-Muster, S. 19-34) nicht ausgewertet — für ein reales
  NIS-Zonenplan-Mandat nachzuholen.
- Ob eine Fassung nach 2011 existiert, ist nicht gezielt recherchiert (nur Negativbefund über den
  Verweis in Dok. 229, keine eigene Websuche nach «PR-NIS» + neuerem Jahr).
- Vollständige Grenzwerttabelle (alle Frequenzbänder 1 Hz–300 GHz, Tab. 3 alle ~35 Raumnutzungen)
  nur auszugsweise übernommen — Original für Einzelfall-Nachweise konsultieren.

**Backlinks:** [[ahb-richtlinie-gebaeudetechnik-229-2025]] · [[elektrosmog-informationsblatt-ahb-ewz]]
