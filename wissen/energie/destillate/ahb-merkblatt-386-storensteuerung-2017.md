---
quelle: "Merkblatt Storensteuerung, stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/vorgaben/energie-gebaeudetechnik/merkblatt-storensteuerung.pdf"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie- und Gebäudetechnik (FS EGT); Bearbeitung Adiutec AG Zürich"
ausgabe: "März 2017, M-System Nr. 386 (33 S.)"
gelesen: "vollständig, 2026-08-24 (PyMuPDF-Volltext, HTTP 200/application/pdf vor Auswertung per curl verifiziert, 353'611 Byte)"
datenstand: "März 2017 — von der aktuellen Dokumentenliste in [[ahb-richtlinie-gebaeudetechnik-229-2025]] (Stand 08.2025) unter Dok.-Nr. 386 weiterhin geführt, keine neuere Fassung gefunden"
status: established
last_updated: "2026-08-24"
---

# Destillat — Merkblatt Storensteuerung, AHB Stadt Zürich, Dok.-Nr. 386, März 2017

## Das Wichtigste in 1 Satz

Städtisches Anforderungsmerkblatt für automatisierte Storensteuerungen: definiert je Funktion
(Wind-/Frost-/Hagel-/Niederschlags-/Brandschutz, Blendschutz, Überhitzungsschutz, Thermoautomatik)
die genauen Grenzwerte, Verzögerungszeiten und Prioritäten — konkretisiert damit exakt die
Steuerungslogik, die `[[sommerlicher-waermeschutz]]` als «aussenliegend, beweglich, windfest,
gesteuert» nur allgemein fordert.

## Fund-Anlass

Referenziert in `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (Übersichtstabelle S. 5-6, Dok.-Nr.
386) als eines der noch nicht einzeln destillierten AHB-Fachmerkblätter, dort priorisiert wegen
JANS-Healthcare-Relevanz (Storensteuerung ist Standardbestandteil jeder Fassade). Primärdokument
per direktem PDF-Download gefunden (`curl -sI` gegen mehrere Kandidaten-URLs im selben
`energie-gebaeudetechnik`-Verzeichnis wie Dok. 229 getestet, `merkblatt-storensteuerung.pdf`
lieferte HTTP 200/application/pdf).

## Struktur (Kap. 1)

Vier Teile: **Checkliste** (Leistungszuordnung nach SIA-Phasen), **Zuordnungsmatrix**
(Minimalanforderungen je Gebäudetyp), **Funktionen** (Ausschreibungstexte je Funktion) und
**Festlegungen** (Zusammenspiel der Funktionen). Nicht Teil dieses Destillats: die vollständige
Zuordnungsmatrix (Kap. 3.1) und die grafischen Anhänge (nur Fliesstext extrahiert, keine
Diagramme).

## Kap. 3.2 — Produkt- und Personenschutz (Prioritätsstufe 1, sperrt alle anderen Funktionen)

Priorisierung (höchste zuerst): **Brand → Wind → Frost → Regen(Niederschlag) → Service.**

| Funktion | Grenzwert Aktivierung | Grenzwert Rückstellung | Verzögerung Aktiv. | Verzögerung Rückst. |
|---|---|---|---|---|
| Windschutz | gemäss Storenlieferant | 10 % kleiner als Aktivierungswert | < 10 s | ~15 min |
| Niederschlagsschutz (Markisen) | bei Niederschlag | Ende Niederschlag | < 2 s | ~15 min |
| Frostschutz | < 2 °C (+ Regenhistorie ~4 h) | > 4 °C | < 2 s | ~120 min |
| Hagelschutz | Wetterwarnung (Meteodienst), keine eigene Sensorik | — | — | — |
| Brand | Brandmeldeanlage-Kontakt | Alarm-Aufhebung | — | — |
| Service | manuell (technischer Dienst) | manuell | — | — |

Sensorik-Vorgaben: Windsensor auf dem Dach **mind. 80 cm über höchstem Punkt** (+ ggf.
Fassadensensoren bei Hochhäusern/komplexer Geometrie, dort Windkanalmessung empfohlen);
Niederschlagssensor auf dem Dach, selbstabtrocknend (z. B. beheizt); Frostschutz-Temperatursensor
idealerweise Nordfassade, vor Sonneneinstrahlung geschützt. Wartungsempfehlung durchgehend
**1×/Jahr**. Windschutz-Änderungen brauchen schriftliche AHB-Freigabe.

## Kap. 3.3 — Energie (Prioritätsstufe 2)

**Überhitzungsschutz-Funktion (3.3.1):** Globalstrahlungs-Grenzwert **Beispielwerte «gemäss
HK-Planer»: 250 W/m² Aktivierung / 200 W/m² Rückstellung** (Hysterese, projektspezifisch vom
Heizungs-/Kälte-Planer festzulegen, keine fixe Normzahl). Verzögerung < 60 s Aktivierung / ~15 min
Rückstellung. Nach manueller Nutzerbedienung deaktiviert, Reaktivierung bei Abwesenheit oder
Zeitbefehl.

**Thermoautomatik (3.3.2):** dieselben Globalstrahlungs-Grenzwerte, aber Position abhängig von
Heiz-/Kühlbedarf — bei Kühlbedarf Beschattung, bei Heizbedarf keine Beschattung (Grenzwert vom
HLKS-Planer bestimmt). **Nur bei Abwesenheit aktiv** (Kombination mit Raumbetriebsart).

**Raumbetriebsarten (3.3.3):** mind. 2 (Anwesend/Abwesend), bis 4 möglich (Komfort/Pre-Komfort).
Komfort = Blendschutzfunktion oder keine Automatik; Pre-Komfort = Überhitzungsschutz oder
Thermoautomatik.

## Kap. 3.4 — Komfort (Prioritätsstufe 3)

**Blendschutzfunktion (3.4.1):** Helligkeits-Grenzwert **~25 kLux Aktivierung / ~18 kLux
Rückstellung** (Hysterese), Verzögerung ~10 s / ~15 min. Manuelle Bedienung bleibt immer möglich
(anders als bei den Produktschutzfunktionen).

**Sonnenstandnachführung (3.4.2):** Lamellen-/Schattenkantennachführung in max. 4 Schritten,
Positionswechsel **mind. 30 min auseinander** (Nutzerkomfort, keine störenden Fahrbewegungen).

**Fremdverschattung (3.4.3):** verhindert unnötige Beschattung bei Schattenwurf von
Nachbargebäuden — Aktivierung erst nach vollständiger Verschattung der Zone, Verschattungsdauer
< 15 min löst keine Fahrt aus.

## Kap. 4 — Detailanforderungen

**Prioritätsregelung (4.1.1):** Produktschutzfunktionen sperren alles Übrige (Reihenfolge s. o.);
manuelle Raumnutzerbedienung übersteuert Komfort-/Energiefunktionen, aber nicht die
Produktschutzfunktionen.

**Ausfallverhalten (4.1.3):** bei Sensor-/Kommunikationsausfall geht das System in die
Produktschutzposition. Feste Detektionsfristen: **Windsensor 48 h, Temperatursensor/Gerät/
Kommunikation je 1 h.**

**Wartung (4.2):** in den ersten 2 Jahren **2×/Jahr** (Frühling/Herbst), danach **1×/Jahr**
(Herbst); Interventionszeit vor Ort nach Störungsmeldung **max. 48 h**.

## Kap. 5.3 — Systemklassen (informativ, für die Ausschreibung)

Drei Klassen nach Objektgrösse: **Kleinsteuerungen** (bis ~20 Storen, oft Funk/proprietär, für
Nachrüstungen/Einzelbedienung), **Objektsteuerungen** (bis ~200 Storen, verdrahtet, Fokus
Gewerk Beschattung), **Integrale Steuerungen** (grössere Objekte mit Gebäudeautomations-
Vernetzung, Datenaustausch mit Heizung/Präsenz). Empfehlung durchgehend: **normierte Systeme
(z. B. KNX)** statt herstellerspezifisch proprietär, wegen Wartungsunabhängigkeit vom Lieferanten.

## Bauherren-Transfer

- Die **250/200 W/m²-Globalstrahlungswerte** sind explizit als Beispiel, nicht als feste Norm
  gekennzeichnet («gemäss HK-Planer») — für ein JANS-Projekt im Pflichtenheft nachfordern, nicht
  pauschal übernehmen.
- Für ein Healthcare-Mandat (Pflegeheim/Spital) sind **Windschutz-Freigabepflicht** (AHB-intern,
  aber als Vorbild für ein privates Pflichtenheft brauchbar) und die **Wartungsintervalle**
  (2× im ersten Jahr, dann jährlich) direkt in einen Unterhaltsvertrag übernehmbar.
- **Blendschutz bleibt immer manuell übersteuerbar**, Produktschutzfunktionen nie — dieser
  Unterschied ist eine typische Bauherren-Nachfrage bei der Funktionsbeschreibung.
- Ergänzt `[[sommerlicher-waermeschutz]]` Stellschraube 1 («aussenliegend, beweglich, windfest,
  gesteuert») um die konkrete Regeltechnik dahinter, und `[[fenster-uw-g-wert-zielkonflikt]]`
  (g_tot-Zielkonflikt) um die Steuerungsseite des dort nur bauphysikalisch behandelten Themas.

## Offene Punkte

- Zuordnungsmatrix (Kap. 3.1, welche Funktionen je Gebäudetyp Pflicht sind) nicht extrahiert —
  reine Tabellengrafik, kein Fliesstext.
- Keine Aktualitätsprüfung über den Verweis in Dok. 229 (Stand 08.2025) hinaus — möglich, dass
  eine neuere Fassung existiert, die (anders als bei der Beleuchtungsfamilie RL1-RL9) nicht
  namentlich abgelöst wurde.

**Backlinks:** [[ahb-richtlinie-gebaeudetechnik-229-2025]] · [[sommerlicher-waermeschutz]] ·
[[fenster-uw-g-wert-zielkonflikt]]
