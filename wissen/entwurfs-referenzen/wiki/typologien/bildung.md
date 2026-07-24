---
title: "Typologie Bildungsbau — Volksschule (CH)"
status: established
last_updated: 2026-07-24
sources:
  - "wissen/entwurfs-referenzen/wiki/parameter-sets/schule-volksschule-ch.json (v1.0, schema-valide, refuter-BESTANDEN 21.07.2026)"
  - "wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md (B6, established, 25 Quellen / 431 refuter-bestaetigte Kennzahlen, 20.07.2026)"
  - "wissen/wettbewerbs-dna/wiki/muster/jury-argumente-schulbauten.md (B4, established, 23 ausgewertete Juryberichte + 3 eigene Teilnahmen, 14.07.2026)"
links:
  - "[[../parameter-sets/schule-volksschule-ch.json]]"
  - "[[wettbewerbs-dna/kennwerte-schulbauten]]"
  - "[[wettbewerbs-dna/jury-argumente-schulbauten]]"
  - "[[wettbewerbs-dna/delta-zum-ersten-rang]]"
---

# Typologie Bildungsbau — Volksschule (CH)

Erster kompilierter Wiki-Artikel dieser KB (bisher reine Parameter-Set-Sammlung). Fasst
das schema-valide, refuter-verifizierte Parameter-Set `schule-volksschule-ch.json` und den
established Kennwert-Benchmark `kennwerte-schulbauten` aus `wissen/wettbewerbs-dna`
so zusammen, dass es direkt fuer Machbarkeitsstudien und Wettbewerbsbeitraege lesbar
ist. Keine neue Recherche — reine Kompilation bereits belegter Quellen (Doppelarbeit-
Guard: die zugrunde liegenden Kennzahlen sind am 20./21.07.2026 unabhaengig
refuter-geprueft worden, hier nur redaktionell verdichtet).

## 1. Gebaeude-Geometrie

- **Geschosse:** 1 bis 5, meist 2 bis 4.
- **Erschliessung:** Atrium bzw. zentrale, moeblierbare Halle/Marktplatz statt reinem
  Korridor — zugleich Aufenthalts- und Unterrichtsflaeche (Beispiele Faellanden, Wattwil,
  Muhen).
- **900-m²-Schwellenwert (harte Entwurfsregel):** Geschossflaeche unter 900 m² je
  Geschoss halten. Unterhalb dieser Schwelle genuegt ein einziges Fluchttreppenhaus, was
  Erschliessungsflaeche spart und direkt auf die HNF/GF-Effizienz einzahlt. Zwei
  unabhaengige Quellen, zwei Kantone: 2102 Muttenz (Siegerprojekt «hannes», vierge-
  schossiger Klassentrakt bleibt Gebaeude mittlerer Hoehe) und Oberstufe Schoenau
  Steffisburg («Geschossflaeche knapp unter 900 m² → eine Fluchttreppe genuegt»). Erklaert,
  warum in knappen Arealen der kompakte, hoehere Solitaer gewinnt (Stapeln statt
  Ausbreiten).
- **Orientierungsregeln:**
  - Klassenzimmer in die Gebaeudeecken, zweiseitig belichtet (Volksschule Stoeckacker
    Bern: Sieger UND Rang 2 gleichermassen dafuer gelobt).
  - Sichtbezug Lernlandschaft ↔ Klassenzimmer sicherstellen — fehlende Transparenz war
    beim eigenen Beitrag 2206 Schoental der K.o.-Beleg gegen das Projekt.
  - Erdgeschoss oeffentlich/belebt; Freiraum zonieren in oeffentlichen Vorplatz
    (Quartier-Adresse) und baulich gefassten, geschuetzten Schulfreiraum.
  - Geschossigkeit aus Ort, Bestand und Betrieb herleiten, nicht voraussetzen: im
    Dorf-/Landkontext ist flacher (ein-/zweigeschossig) oft richtiger als der kompakte
    Solitaer (Grossaffoltern: Mehrgeschossigkeit dort funktional nachteilig beurteilt).

## 2. Flaecheneffizienz

**Referenzband HNF/GF: 0.52–0.54** — der tragfaehigste Kennwert des gesamten
Benchmarks, weil zwei voellig unabhaengige Quellen mit unterschiedlicher Bauaufgabe
nahezu denselben Wert ergeben:

| Fall | HNF/GF | Charakter |
|---|---|---|
| Kantonsschule Wattwil (rund 7'500 m² / 14'100 m²) | 0.532 (abgeleitet) | Programm-Soll der Auslobung |
| 2507 Halden «LIMO» (UG–2.OG) | 0.528 (abgeleitet) | eigene SIA-416-Abgabe (Ist) |

Ergaenzend belegt (2507 Halden, eigene Abgabe, alle fuenf Geschosse): **HNF/NGF = 0.606**.

**Nicht im Band, Quellen-Widerspruch:** 2206 Schoental «ARCHE» fuehrt zwei GF-Totale
(1'792 m² bzw. 1'545 m²), woraus sich HNF/GF 0.655 respektive 0.759 ergaebe — beides
deutlich ueber dem Band. Der Widerspruch liegt in der eigenen Quelle und ist ungeklaert
(offener Punkt in `wettbewerbs-dna/QUESTIONS.md`); bis zur Klaerung nicht als Referenz
verwenden.

**Volumenkennwert GV/GF:** nur ein einziger Beleg (2206 Schoental, 3.84–4.46 m³/m²
je nach GF-Lesart) — **Arbeitsannahme, kein Benchmark**. Ein belastbares CHF/m³-Band
ist aus Schweizer Schul-Juryberichten strukturell nicht ableitbar (Kosten erscheinen dort
fast nur als absolutes Kostendach oder relativ zur Machbarkeitsstudie, nicht als
spezifischer Kennwert). Fuer CHF/m³ bleibt `wissen/grobkosten/` die fuehrende Quelle;
das Parameter-Set laesst `kosten_referenz.chf_m3_gv_band` deshalb bewusst leer.

## 3. Programm-Mengengeruest

- **Klassenzimmer-Flaeche:** Referenzband **64–75 m²**, Planungswert **75 m²**. Die
  75 m² erscheinen in zwei unabhaengigen Deutschschweizer Programmen (2206 Schoental
  Altstaetten SG, 2507 Halden St. Gallen); 64 m² ist der belegte untere Rand
  (Grossaffoltern, Mittelstufe).
- **Lichte Raumhoehe Klassenzimmer:** mindestens 3.00 m (2206 Schoental, Raumprogramm).
- **Verhaeltnis Klassenzimmer zu Gruppen-/Halbklassenzimmer:** 2:1, zwei unabhaengige
  Quellen (Sekundarschule Sursee, Zelgli Schlieren).
- **Cluster-Koernung:** 3 bis 4 Klassenzimmer je Geschoss bzw. Cluster (Niederrohrdorf,
  Sursee, Stoeckacker Bern). Der eigene Beitrag 2103 Steinhofschule lag mit 2
  Klassenzimmern je Lernwelt darunter — ein Datenpunkt, der zum Befund in
  [[wettbewerbs-dna/delta-zum-ersten-rang]] passt (Betriebsebene entscheidet mit).
- **Schuelerzahl je Klasse:** Regelklasse 19–21 (Steffisburg rund 21, 2206 Schoental
  18.9 abgeleitet); Foerder-/Integrationsklasse rund 10 (Steffisburg KbF/IK).
- **Mehrfachnutzung:** 2507 Halden belegt eine Mehrfachnutzungsquote von 25 % der HNF
  Tagesbetreuung — Raeume doppelt belegen senkt das Flaechensoll.
- **Betriebs-Entflechtung:** getrennte Zugaenge je Nutzung (Schule/Sport/Tagesstruktur/
  Kindergarten), Mittagsspitze und Kueche-Anlieferung konfliktfrei loesen. Bei
  kombiniertem Programm Kindergarten/Primar die Stufen erkennbar durchmischen statt
  additiv zu trennen (Ochsenmatt Menzingen, vierfach belegter Befund).
- **Zweites Fluchttreppenhaus:** befreit die Erschliessungsflaeche von zusaetzlichen
  Brandschutzauflagen und kann der Lernlandschaft zugeschlagen werden (Zelgli
  Schlieren).
- **Unterirdische/versenkte Raeume:** nur mit belegtem Tageslichtkonzept (Rundgang,
  Oblicht) — der meistwiederholte Abwertungsgrund in den ausgewerteten Juryberichten.

## 4. Materialien und Ausdruck

- **Tragwerk:** Vorfabrikation/Systemtrennung, reversibel in klassische Zimmer;
  Holz-/Hybridbau belegt, Grossspannweiten (Turnhallen, Aulen) statisch kritisch pruefen.
- **Fassade:** warm, kindgerecht, eher geschlossen — ein institutioneller Ausdruck ist in
  den ausgewerteten Juryberichten ein wiederkehrender Abwertungsgrund fuer den
  Primarschul-Massstab. Glasanteil unter 50 % (Minergie-P / graue Energie nach SIA 2040).
- **Innenausbau-Standard:** mittel.

## 5. Kosten — Groessenordnung (kein Rang-, sondern Korridor-Kriterium)

**Vorpruefungs-Toleranz:** Anlagekosten werden mit ±20 % Genauigkeit vorgeprueft; die
tatsaechliche Kostenspreizung zwischen Finalisten liegt mit 16–24 % in derselben
Groessenordnung. Kosten koennen deshalb methodisch kaum ranggebend sein — sie wirken als
Korridor und Tie-Breaker, nicht als Rangordnung (siehe [[wettbewerbs-dna/jury-argumente-schulbauten]],
These 3). Praktische Konsequenz fuer den Entwurf: **innerhalb des Korridors bleiben**
(GV unter der Referenz der Machbarkeitsstudie, Richtwert rund 95 %) schlaegt Sparen um
jeden Preis.

**Kostendach-Groessenordnung** (nur zur Plausibilisierung, nicht als CHF/m³-Kennwert):
Regelschul-Neubau rund **1.6–1.8 Mio. CHF je Klassenzimmer** (Gesamtanlage, nicht nur
der Raum); Sonderschule rund **2.5 Mio. CHF je Klassenzimmer** (ein Fall, Aufschlag
plausibel durch Therapie-/Pflege-/Erschliessungsflaechen, aber nicht mehrfach belegt).
BKP-Schwerpunkte gemaess Parameter-Set: BKP 2 (Gebaeude) und BKP 4 (Umgebung); CHF/m³
fuehrend aus `wissen/grobkosten/`.

## 6. Referenzprojekte

| Projekt | JANS-Nr. | Relevanz |
|---|---|---|
| 2507 Halden (TKHL, PS St. Gallen) | 2507 | eigene SIA-416-Abgabe: HNF/GF 0.528, Klassenzimmer/Gruppenraum 75 m², Mehrfachnutzungsquote 25 % HNF |
| 2206 Schoental (Altstaetten) | 2206 | Programm 75-m²-Klassenzimmer, lichte Raumhoehe 3.00 m; fehlende Transparenz Lernlandschaft↔Klassenzimmer als eigener K.o.-Beleg |
| 2102 Muttenz — Siegerprojekt hannes | 2102 | 900-m²-Schwelle je Geschoss; eigener Beitrag scheiterte am Extremwert groesste GF+GV |
| Kantonsschule Wattwil — CELESTE | — | kompakter Grossbaukoerper mit zentralem Atrium; HNF/GF-Soll 0.532 (720 Schueler, GF 14'100 m²) |
| Oberstufe Schoenau Steffisburg | — | GF knapp unter 900 m² → eine Fluchttreppe genuegt; begruendeter Ersatzneubau statt Vollerhalt |
| Volksschule Stoeckacker Bern | — | Klassenzimmer in den Gebaeudeecken, zweiseitig belichtet (Sieger + Rang 2) |

## 7. Verwendung in der Hub-Pipeline

- **Parameter-Set:** `../parameter-sets/schule-volksschule-ch.json` (v1.0) — direkt
  einlesbar fuer `volumen_generator.py`. ⚠ Kein Auto-Sync: wird ein Kennwert im
  Benchmark `kennwerte-schulbauten` revidiert, muss das Set neu abgeleitet und die
  Version hochgezaehlt werden (Cross-KB Run 11).
- **Agent `flaechen-nachweis`:** HNF/GF-Band 0.52–0.54 als Soll-/Ist-Ampel; Klassenzimmer
  75 m²; Verhaeltnis 2:1 Klassen- zu Gruppenraum.
- **Agent `grobkosten-rechner`:** Kostendach-Tabelle als Plausibilisierung der
  Groessenordnung; CHF/m³ weiterhin aus `wissen/grobkosten/`.
- **Skill `volumenstudie` / `machbarkeit`:** 900-m²-Schwelle als harte Entwurfsregel;
  GV/GF 3.8–4.5 m³/m² nur als Arbeitsannahme, nicht als Benchmark zitieren.

## Offene Punkte (nicht in diesem Artikel geloest)

- GF-Widerspruch 2206 Schoental «ARCHE» (0.655 vs. 0.759 HNF/GF) — siehe
  `wettbewerbs-dna/QUESTIONS.md`, nur durch Raphael bzw. die Original-Abgabeunterlagen
  klaerbar.
- Reha-Subtyp und reines Aerztehaus/Ambulatorium fehlen im Wettbewerbs-Sample
  (betrifft die Typologie Gesundheitsbau, nicht Bildungsbau — hier nur zur
  Vollstaendigkeit vermerkt, siehe `wettbewerbs-dna/QUESTIONS.md`).
