---
quelle: «Komfortlüftung — Dimensionierungshilfe, Teil 1: Allgemein» (BFE-Publikationsdatenbank, pubdb.bfe.admin.ch/de/publication/download/2783)
herausgeber: Bundesamt für Energie (BFE) / EnergieSchweiz
ausgabe: PDF, 9 Seiten (Ausschnitt aus einer grösseren Fachpublikation, Seitenzahlen 16-24 im Original)
gelesen: 2026-07-13 (vollständig, S. 1-9, lokal via curl heruntergeladen + pdftotext gelesen)
datenstand: praxisorientierte Faustregeln, stützt sich auf SIA-Merkblatt 2023 (⚠ 2021 zurückgezogen, siehe Hinweis unten) — als Faustregel weiterhin gebräuchlich, Zahlen selbst nicht datiert
status: emerging
last_updated: 2026-07-13
---

# BFE-Dimensionierungshilfe Komfortlüftung — Faustregeln für Zu-/Abluft, WRG-Typen, Schall

**Das Wichtigste in 1 Satz:** Die BFE-Praxishilfe gibt einfache Faustregeln für die
Dimensionierung einer Komfortlüftung in Wohnungen (Zuluft 30 m³/h je Wohn-/Schlaf-/
Arbeitszimmer, Abluft Küche 40 / Bad-Dusche 40 / WC 20 m³/h) sowie konkrete
Wärmerückgewinnungs-Wirkungsgrade je Wärmetauscher-Bautyp — nützlich als schnelle
Plausibilisierung, ersetzt aber nicht den normativen Nachweis nach SIA 382/1:2025 (dort strengere/
andere Werte, siehe [[komfortlueftung-wrg-sia382-luftwechsel]]).

## ⚠ Wichtiger Quellenhinweis (Einordnung, nicht in der Quelle selbst)
Das Dokument bezieht sich explizit auf das **SIA-Merkblatt 2023** («Lüftung in Wohnbauten») als
massgebende Grundlage. Dieses Merkblatt wurde gemäss anderer, bereits in der KB verifizierter
Quelle (suissetec-Merkblatt Filterklassen, [[komfortlueftung-filterklassen-epm-stromverbrauch]])
**2021 zurückgezogen** und durch SIA 382/1:2025 + SIA 382/5:2021 ersetzt. Die Faustregeln dieses
BFE-Dokuments sind deshalb als **praxisnahe Näherung**, nicht als aktuell normativ bindende Zahl
zu verstehen — für den formellen Nachweis gilt SIA 382/5 (30/30/20/90 m³/h, siehe Haupttabelle im
Schwester-Destillat). Die Faustregel-Zahlen weichen bei Küche/Bad von der SIA-382/5-Tabelle ab
(BFE: Küche 40 statt 20 m³/h, Bad 40 statt 30 m³/h) — beide Quellen bestätigen aber dieselbe
Grössenordnung fürs Gesamtsystem und dieselbe 30-m³/h-Zuluft-Faustregel pro Zimmer.

## Zuluft-Faustregel
**Jedes Wohn-, Schlaf- und Arbeitszimmer erhält 30 m³/h Zuluft.** Durchströmbereiche (Korridor,
Treppen, teils offener Wohnbereich) erhalten keine eigene Zuluft.

## Minimaler Abluftvolumenstrom (Normalbetrieb, kontinuierlich)
| Raum | Abluftvolumenstrom |
|---|---|
| Küche (Raumabluft) | 40 m³/h |
| Bad, Dusche | 40 m³/h |
| WC (ohne Dusche) | 20 m³/h |

- Bei Wohnungen mit weniger als 3 Zimmern: Tabellenwerte um **30 % reduzierbar**.
- Intensivlüftungsstufe (manuell bei Bad-/Küchennutzung): Abluftvolumenstrom **50 % über** den
  Tabellenwerten. Ausgelegt wird die Anlage aber auf die Normalbetrieb-Werte.
- Ist das rechnerische Zuluft-Total höher als das Abluft-Total, wird zuerst der Küchen-Abluftwert
  erhöht (bis rund 60 m³/h), erst danach die übrigen Räume — Ziel: Zu- und Abluft-Total gleich
  gross (sonst Über-/Unterdruck-Risiko, Radon-/Feuerungs-Störung).

## Wärmerückgewinnungsgrad je Wärmetauscher-Bautyp
| Wärmetauscher-Typ | Wärmerückgewinnung (sensible Wärme) |
|---|---|
| Gegenstrom- / Kreuz-Gegenstrom-Wärmetauscher | rund **80 %** |
| Kreuzstrom-Wärmetauscher | typischerweise **50–60 %** |
| Rotationswärmetauscher (Kleingeräte) | rund **80 %** |
| «Luftkanalwärmetauscher» (Aluminiumprofil-System, kombiniert WRG + Steigleitung) | knapp **80 %** bei optimaler Abstimmung |

Zusätzliche Feuchterückgewinnung ist bei manchen Geräten möglich (entschärft tiefe
Raumluftfeuchte im Winter); im Sommer soll die WRG abschaltbar sein («Sommerbypass» bei
Platten-Wärmetauschern).

## Elektrische Ventilator-Aufnahmeleistung (aus SIA-Merkblatt 2023, ⚠ zurückgezogen)
- Komfortlüftung nur mit WRG: max. **0,28 W/(m³/h)**
- Komfortlüftung mit WRG und Lufterwärmer: max. **0,34 W/(m³/h)**
- ⚠ Diese Werte stammen aus dem 2021 zurückgezogenen Merkblatt SIA 2023 und gelten laut
  suissetec (Filterklassen-Destillat) **nicht mehr** — heute gilt die SFP-/Energieeffizienzklassen-
  Logik der EU-Verordnung 1254/2014 (Klasse A/A+). Hier dennoch dokumentiert als historische
  Referenz/Vergleichsgrösse.

## Schallanforderung
Gemäss SIA-Merkblatt 2023 (⚠ s.o.) darf die Lüftung in Wohnräumen max. **25 dBA** verursachen
(Tag und Nacht), gemessen in Raummitte, 1 m über Boden, unmöbliert, Türen geschlossen.

## Weitere Praxispunkte
- Aussenluftfassung mind. 0,7 m über Terrain, nicht bei Lichtschächten/ebenerdigen Gittern.
- Überström-Durchlässe (Tür zu Durchströmbereich): Druckabfall max. 3 Pa; Türspalt-Faustregel
  **7 mm Spalthöhe für ~30 m³/h**, **>10 mm bei >40 m³/h** (z. B. Bäder).
- Küchenabluft/Dunstabzughaube: separate Intensivlüftung nötig; Kombination mit der
  Komfortlüftung nur mit automatischer Absperrvorrichtung zulässig (VKF-Dokument 25-15) und nur
  bei Geräten mit Platten-WRG (keine Feuchterückgewinnung).
- Unterdruck-Grenzwert bei Feuerungsbetrieb: max. 4 Pa (raumluftabhängig) bzw. 8 Pa
  (raumluftunabhängig) — Richtwert aus SIA-Merkblatt 2023.
- Brandschutz (VKF-Richtlinie 25-15): nicht brennbare Luftaufbereitungsapparate (ausser
  Einzelwohnungsanlagen), Lüftungskanäle RF1 (Ausnahmen RF3 bei einbetonierten Leitungen/
  Erdregistern), keine Brandschutzklappen nötig bis 600 m² zusammengefasster Brandabschnittsfläche
  bei Mehrwohnungsanlagen.

## Bauherren-Transfer
Für ein erstes Bauchgefühl reicht die Faustregel «30 m³/h pro Wohn-/Schlafzimmer» — für den
verbindlichen Nachweis zählt aber die aktuelle Norm SIA 382/5 (leicht andere Küchen-/Bad-Werte,
siehe Schwester-Destillat). Bei der Wärmetauscher-Wahl liefert ein einfacher Kreuzstrom-Typ nur
50–60 % WRG — das reicht für die normative Minimalanforderung (73 %), aber NICHT für Minergie
(≥80 %). Gegenstrom- oder Rotationswärmetauscher (~80 %) sind für Minergie die richtige Wahl.

## Offene Punkte
- Exakte Datierung/Ausgabejahr des BFE-Dokuments selbst nicht im Text gefunden (nur Seitenzahlen
  16-24 im Original-Layout sichtbar, deutet auf Auszug aus einer grösseren mehrteiligen
  Publikationsreihe hin — evtl. "Faktenblätter Komfortlüftung" BFE, Serie mit mehreren Teilen).
- Teile 2+ der Reihe (Systemwahl im Detail, Geräteauswahl) nicht abgerufen.

**Backlinks:** [[komfortlueftung-wrg-sia382-luftwechsel]] · [[komfortlueftung-wohnungslueftung-ch]] ·
[[komfortlueftung-filterklassen-epm-stromverbrauch]] · Themenartikel [[komfortlueftung]].
