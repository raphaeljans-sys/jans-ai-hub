# Roh-Beleg: Richtwerte für die Bestimmung des Neuwertes nach Bauklasse I–VI (Stand 2003)

Kein Projekt-Einzelfall, sondern eine **allgemeine, kuratierte Referenztabelle** — letzter
noch offener Kandidat aus `training/quellen-inventar.md` Run 6 (`IMMO - 03 KNOW-HOW`). Extrahiert
Run 12 (01.08.2026, Mac Mini Nachtschicht).

## Quelle

`IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` (Anhang Schätzungsanleitung,
Teil III schätzungstechnische Grundlagen, Kapitel 5 «Tabellen»), Tabelle 2 «Richtwerte für die
Bestimmung des Neuwertes», Seite 3 des Kapitels (PDF-Seite 4). Fusszeile der Tabelle: «Stand
2003 (Quelle Zürcher Index der Wohnbaukosten)» — dieselbe Indexreihe wie
`raw/zuercher-index-wohnbaukosten-1939-2025.md`. Abrufdatum: 01.08.2026 (pypdf-Extraktion,
OneDrive-Pfad `IMMO - 03 KNOW-HOW`).

## Tabelle 2: Baukosten je m³ umbauter Raum (SIA-Norm 116), Stand 2003, CHF/m³

Bauklassen nach SIA Ordnung Nr. 102. EFH-Spalte bezogen auf ein Einfamilienhaus mit 800 m³,
MFH-Spalte auf ein Mehrfamilienhaus mit 5'000 m³ (8 Wohnungen, Autoeinstellhalle 8 Plätze,
Zuschlag für Aufzug CHF 15–20/m³ nicht in den Werten enthalten).

| Bauklasse | Baubeschrieb | EFH CHF/m³ | MFH CHF/m³ |
|---|---|---|---|
| I | Einfachste ländliche Bauweise, nur mit allernötigsten Installationen | 425 | 350 |
| II | Einfache Konstruktion, Ausbau für bescheidene Ansprüche | 475 | 400 |
| III | Durchschnittliche Qualität, aber einfacher Innenausbau | 525 | 450 |
| IV | Einwandfreie Qualität, besserer Innenausbau, heutigen durchschnittlichen Anforderungen entsprechend | 575 | 500 |
| V | Überdurchschnittliche Qualität, sorgfältiger und komfortabler Ausbau | 675 | 550 |
| VI | Vornehm, beste Qualität, gediegener Ausbau, hoher Komfort | 750 | 625 |

Hinweis Rohdaten: die PDF-Extraktion liefert je Bauklasse zwei Zahlen in der Spaltenreihenfolge
EFH/MFH mit dem höheren Wert zuerst (z.B. Bauklasse I: «425 / 500 / 350 / 425»). Nach Abgleich
mit der Fusszeilen-Definition (EFH 800 m³, MFH 5'000 m³, MFH-Werte durchgehend tiefer als EFH je
Bauklasse — MFH profitiert von Grössendegression) ist die korrekte Zuordnung EFH = erster Wert
je Klasse, MFH = zweiter Wert; die vierstellige Rohfolge pro Zeile ist ein PDF-Layout-Artefakt
(zwei Unterspalten pro Bauklasse, nicht vier Werte) — oben bereits bereinigt dargestellt.

## Tabelle 2b: Grossgewerbe und Industrie (Stand 2003, nicht Wohnbau, nur zur Vollständigkeit)

Bezugsgrösse: Werkhalle/Lagerhaus/Werkstattgebäude mit je 5'000 m³.

| Bauklasse | Baubeschrieb | CHF/m³ |
|---|---|---|
| I | Werkhallen/Lagerhallen, eingeschossig, Raumhöhe >5 m, leichte Konstruktion, ohne/nur Luftheizung | 100–200 |
| II | Lagerhäuser massiv, ohne besonderen Ausbau, ungeheizt | 150–250 |
| III | Werkstattgebäude massiv, beheizt, Wasser-/Elektroanschluss | 200–325 |
| IV | Werkstattgebäude mit umfangreicheren technischen Anlagen (Ventilation, Lifte, Hebebühnen, Büro/Spedition) | 275–375 |

Ausserhalb Scope dieser KB (Wohnbau-Fokus), hier nur dokumentiert, damit ein künftiger
Gewerbe-/Industrie-Bedarf nicht erneut das PDF öffnen muss.

## Tabelle 3 (Kontext, bereits BKP-nah): Prozentanteile an den Gebäudekosten BKP 2 (Stand 2003)

Gleiche Quelle, unmittelbar vorangehende Tabelle. Bezugsobjekt: MFH mittlerer Standard,
Baujahr 1985, Anteil BKP 2 = 906.3 ‰ der Gesamtkosten = 100 %.

| BKP | Arbeitsgattung | % (nur BKP 2) | % (inkl. BKP 29 Honorare) |
|---|---|---|---|
| 20 | Baugrube | 2.73 | 3.12 |
| 21 | Rohbau 1 | 35.95 | 41.11 |
| 22 | Rohbau 2 | 9.42 | 10.77 |
| — | Total 20+21+22 | 48.10 | 55.00 |
| 23 | Elektroanlagen | 4.63 | 5.29 |
| 24 | Heizungs-/Lüftungsanlagen | 4.10 | 4.69 |
| 25 | Sanitäranlagen | 8.16 | 9.33 |
| 26 | Transportanlagen | 0.56 | 0.64 |
| — | Total 23+24+25+26 | 17.45 | 19.95 |
| 27 | Ausbau 1 | 12.60 | 14.41 |
| 28 | Ausbau 2 | 9.30 | 10.64 |
| — | Total 27+28 | 21.90 | 25.05 |
| 29 | Honorare | 12.55 | — |

Nicht direkt Stufe 4 (Teuerung), sondern eine BKP-Binnengliederungs-Referenz — als Nebenfund
mitextrahiert, weil auf derselben Seite und aus derselben Primärquelle wie Tabelle 2. Bezugsjahr
1985, nicht teuerungsnormalisiert; bei Verwendung als BKP-Struktur-Richtwert (nicht als
Preis-Kennwert) ist eine Alters-Normalisierung nicht zwingend nötig, da Prozentanteile über
Bauteil-Massenverhältnisse stabiler sind als absolute Preise — diese Annahme ist selbst nicht
belegt und wird hier nur als Beobachtung festgehalten, nicht als Kennwert übernommen.

## Einordnung für Stufe 4

Der Zürcher Index der Wohnbaukosten liegt in dieser KB bereits als verkettete Reihe bis
01.04.2025 vor (`raw/zuercher-index-wohnbaukosten-1939-2025.md`, Run 8). Tabelle 2 oben ist
damit **kein neuer Index**, sondern ein zweiter, unabhängig nützlicher Datentyp derselben
Primärquelle: absolute CHF/m³-Richtwerte nach Bauklasse und Gebäudetyp für einen festen
Stichtag (Stand 2003), die sich mit dem bereits belegten Faktor auf einen aktuellen Stichtag
heben lassen — siehe `wiki/kennwerte.md`, Abschnitt «Historischer Cross-Check».

**Genauigkeits-Vorbehalt Preisstand:** Die Tabelle nennt «Stand 2003», die Indexreihe selbst
nennt als letzten Wert vor Kapitel-Drucklegung 01.04.2004 (907.6). Ob «Stand 2003» exakt
01.04.2003 (899.2) oder 01.04.2004 (907.6) oder ein Jahresdurchschnitt meint, ist aus dem
Dokument nicht eindeutig ablesbar. Für die Hochrechnung in `kennwerte.md` wird der Stützpunkt
01.04.2004 (907.6) verwendet — konservativ (näher am Berichtsdruck, tieferer Aufwertungsfaktor
als 01.04.2003) und explizit als Annahme ausgewiesen, nicht als exakter Fakt.
