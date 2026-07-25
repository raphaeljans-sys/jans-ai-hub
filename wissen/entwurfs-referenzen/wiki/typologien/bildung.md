---
title: "Typologie Bildungsbau — Volksschule (CH)"
status: established
last_updated: 2026-07-25
sources:
  - "wissen/entwurfs-referenzen/wiki/parameter-sets/schule-volksschule-ch.json (v1.0, schema-valide, refuter-BESTANDEN 21.07.2026)"
  - "wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md (B6, established, 25 Quellen / 431 refuter-bestätigte Kennzahlen, 20.07.2026)"
  - "wissen/wettbewerbs-dna/wiki/muster/jury-argumente-schulbauten.md (B4, established, 23 ausgewertete Juryberichte + 3 eigene Teilnahmen, 14.07.2026)"
links:
  - "[[../parameter-sets/schule-volksschule-ch.json]]"
  - "[[wettbewerbs-dna/kennwerte-schulbauten]]"
  - "[[wettbewerbs-dna/jury-argumente-schulbauten]]"
  - "[[wettbewerbs-dna/delta-zum-ersten-rang]]"
  - "KB architekten-synobsis → wiki/THEMEN.md §1.4 Bildungsbauten + wiki/RAUMTYPOLOGIEN.md (Referenz-Fundstellen/Raumfiguren; Querbezug gesetzt Wissens-Chef Run 15, 25.07.2026 — bis dahin war dieser Artikel ohne eine einzige synobsis-Quelle kompiliert, obwohl der Referenz-Katalog der deklarierte Arbeitsweg dieser KB ist)"
---

# Typologie Bildungsbau — Volksschule (CH)

Erster kompilierter Wiki-Artikel dieser KB (bisher reine Parameter-Set-Sammlung). Fasst
das schema-valide, refuter-verifizierte Parameter-Set `schule-volksschule-ch.json` und den
established Kennwert-Benchmark `kennwerte-schulbauten` aus `wissen/wettbewerbs-dna`
so zusammen, dass es direkt für Machbarkeitsstudien und Wettbewerbsbeiträge lesbar
ist. Keine neue Recherche — reine Kompilation bereits belegter Quellen (Doppelarbeit-
Guard: die zugrunde liegenden Kennzahlen sind am 20./21.07.2026 unabhängig
refuter-geprüft worden, hier nur redaktionell verdichtet).

## 1. Gebäude-Geometrie

- **Geschosse:** 1 bis 5, meist 2 bis 4.
- **Erschliessung:** Atrium bzw. zentrale, möblierbare Halle/Marktplatz statt reinem
  Korridor — zugleich Aufenthalts- und Unterrichtsfläche (Beispiele Fällanden, Wattwil,
  Muhen).
- **900-m²-Schwellenwert (harte Entwurfsregel):** Geschossfläche unter 900 m² je
  Geschoss halten. Unterhalb dieser Schwelle genügt ein einziges Fluchttreppenhaus, was
  Erschliessungsfläche spart und direkt auf die HNF/GF-Effizienz einzahlt. Zwei
  unabhängige Quellen, zwei Kantone: 2102 Muttenz (Siegerprojekt «hannes», vierge-
  schossiger Klassentrakt bleibt Gebäude mittlerer Höhe) und Oberstufe Schönau
  Steffisburg («Geschossfläche knapp unter 900 m² → eine Fluchttreppe genügt»). Erklärt,
  warum in knappen Arealen der kompakte, höhere Solitär gewinnt (Stapeln statt
  Ausbreiten).
- **Orientierungsregeln:**
  - Klassenzimmer in die Gebäudeecken, zweiseitig belichtet (Volksschule Stöckacker
    Bern: Sieger UND Rang 2 gleichermassen dafür gelobt).
  - Sichtbezug Lernlandschaft ↔ Klassenzimmer sicherstellen — fehlende Transparenz war
    beim eigenen Beitrag 2206 Schöntal der K.o.-Beleg gegen das Projekt.
  - Erdgeschoss öffentlich/belebt; Freiraum zonieren in öffentlichen Vorplatz
    (Quartier-Adresse) und baulich gefassten, geschützten Schulfreiraum.
  - Geschossigkeit aus Ort, Bestand und Betrieb herleiten, nicht voraussetzen: im
    Dorf-/Landkontext ist flacher (ein-/zweigeschossig) oft richtiger als der kompakte
    Solitär (Grossaffoltern: Mehrgeschossigkeit dort funktional nachteilig beurteilt).

## 2. Flächeneffizienz

**Referenzband HNF/GF: 0.52–0.54** — der tragfähigste Kennwert des gesamten
Benchmarks, weil zwei völlig unabhängige Quellen mit unterschiedlicher Bauaufgabe
nahezu denselben Wert ergeben:

| Fall | HNF/GF | Charakter |
|---|---|---|
| Kantonsschule Wattwil (rund 7'500 m² / 14'100 m²) | 0.532 (abgeleitet) | Programm-Soll der Auslobung |
| 2507 Halden «LIMO» (UG–2.OG) | 0.528 (abgeleitet) | eigene SIA-416-Abgabe (Ist) |

Ergänzend belegt (2507 Halden, eigene Abgabe, alle fünf Geschosse): **HNF/NGF = 0.606**.

**Nicht im Band, Quellen-Widerspruch:** 2206 Schöntal «ARCHE» führt zwei GF-Totale
(1'792 m² bzw. 1'545 m²), woraus sich HNF/GF 0.655 respektive 0.759 ergäbe — beides
deutlich über dem Band. Der Widerspruch liegt in der eigenen Quelle und ist ungeklärt
(offener Punkt in `wettbewerbs-dna/QUESTIONS.md`); bis zur Klärung nicht als Referenz
verwenden.

**Volumenkennwert GV/GF:** nur ein einziger Beleg (2206 Schöntal, 3.84–4.46 m³/m²
je nach GF-Lesart) — **Arbeitsannahme, kein Benchmark**. Ein belastbares CHF/m³-Band
ist aus Schweizer Schul-Juryberichten strukturell nicht ableitbar (Kosten erscheinen dort
fast nur als absolutes Kostendach oder relativ zur Machbarkeitsstudie, nicht als
spezifischer Kennwert). Für CHF/m³ bleibt `wissen/grobkosten/` die führende Quelle;
das Parameter-Set lässt `kosten_referenz.chf_m3_gv_band` deshalb bewusst leer.

## 3. Programm-Mengengerüst

- **Klassenzimmer-Fläche:** Referenzband **64–75 m²**, Planungswert **75 m²**. Die
  75 m² erscheinen in zwei unabhängigen Deutschschweizer Programmen (2206 Schöntal
  Altstätten SG, 2507 Halden St. Gallen); 64 m² ist der belegte untere Rand
  (Grossaffoltern, Mittelstufe).
- **Lichte Raumhöhe Klassenzimmer:** mindestens 3.00 m (2206 Schöntal, Raumprogramm).
- **Verhältnis Klassenzimmer zu Gruppen-/Halbklassenzimmer:** 2:1, zwei unabhängige
  Quellen (Sekundarschule Sursee, Zelgli Schlieren).
- **Cluster-Körnung:** 3 bis 4 Klassenzimmer je Geschoss bzw. Cluster (Niederrohrdorf,
  Sursee, Stöckacker Bern). Der eigene Beitrag 2103 Steinhofschule lag mit 2
  Klassenzimmern je Lernwelt darunter — ein Datenpunkt, der zum Befund in
  [[wettbewerbs-dna/delta-zum-ersten-rang]] passt (Betriebsebene entscheidet mit).
- **Schülerzahl je Klasse:** Regelklasse 19–21 (Steffisburg rund 21, 2206 Schöntal
  18.9 abgeleitet); Förder-/Integrationsklasse rund 10 (Steffisburg KbF/IK).
- **Mehrfachnutzung:** 2507 Halden belegt eine Mehrfachnutzungsquote von 25 % der HNF
  Tagesbetreuung — Räume doppelt belegen senkt das Flächensoll.
- **Betriebs-Entflechtung:** getrennte Zugänge je Nutzung (Schule/Sport/Tagesstruktur/
  Kindergarten), Mittagsspitze und Küche-Anlieferung konfliktfrei lösen. Bei
  kombiniertem Programm Kindergarten/Primar die Stufen erkennbar durchmischen statt
  additiv zu trennen (Ochsenmatt Menzingen, vierfach belegter Befund).
- **Zweites Fluchttreppenhaus:** befreit die Erschliessungsfläche von zusätzlichen
  Brandschutzauflagen und kann der Lernlandschaft zugeschlagen werden (Zelgli
  Schlieren).
- **Unterirdische/versenkte Räume:** nur mit belegtem Tageslichtkonzept (Rundgang,
  Oblicht) — der meistwiederholte Abwertungsgrund in den ausgewerteten Juryberichten.

## 4. Materialien und Ausdruck

- **Tragwerk:** Vorfabrikation/Systemtrennung, reversibel in klassische Zimmer;
  Holz-/Hybridbau belegt, Grossspannweiten (Turnhallen, Aulen) statisch kritisch prüfen.
- **Fassade:** warm, kindgerecht, eher geschlossen — ein institutioneller Ausdruck ist in
  den ausgewerteten Juryberichten ein wiederkehrender Abwertungsgrund für den
  Primarschul-Massstab. Glasanteil unter 50 % (Minergie-P / graü Energie nach SIA 2040).
- **Innenausbau-Standard:** mittel.

## 5. Kosten — Grössenordnung (kein Rang-, sondern Korridor-Kriterium)

**Vorprüfungs-Toleranz:** Anlagekosten werden mit ±20 % Genauigkeit vorgeprüft; die
tatsächliche Kostenspreizung zwischen Finalisten liegt mit 16–24 % in derselben
Grössenordnung. Kosten können deshalb methodisch kaum ranggebend sein — sie wirken als
Korridor und Tie-Breaker, nicht als Rangordnung (siehe [[wettbewerbs-dna/jury-argumente-schulbauten]],
These 3). Praktische Konseqünz für den Entwurf: **innerhalb des Korridors bleiben**
(GV unter der Referenz der Machbarkeitsstudie, Richtwert rund 95 %) schlägt Sparen um
jeden Preis.

**Kostendach-Grössenordnung** (nur zur Plausibilisierung, nicht als CHF/m³-Kennwert):
Regelschul-Neubau rund **1.6–1.8 Mio. CHF je Klassenzimmer** (Gesamtanlage, nicht nur
der Raum); Sonderschule rund **2.5 Mio. CHF je Klassenzimmer** (ein Fall, Aufschlag
plausibel durch Therapie-/Pflege-/Erschliessungsflächen, aber nicht mehrfach belegt).
BKP-Schwerpunkte gemäss Parameter-Set: BKP 2 (Gebäude) und BKP 4 (Umgebung); CHF/m³
führend aus `wissen/grobkosten/`.

## 6. Referenzprojekte

| Projekt | JANS-Nr. | Relevanz |
|---|---|---|
| 2507 Halden (TKHL, PS St. Gallen) | 2507 | eigene SIA-416-Abgabe: HNF/GF 0.528, Klassenzimmer/Gruppenraum 75 m², Mehrfachnutzungsquote 25 % HNF |
| 2206 Schöntal (Altstätten) | 2206 | Programm 75-m²-Klassenzimmer, lichte Raumhöhe 3.00 m; fehlende Transparenz Lernlandschaft↔Klassenzimmer als eigener K.o.-Beleg |
| 2102 Muttenz — Siegerprojekt hannes | 2102 | 900-m²-Schwelle je Geschoss; eigener Beitrag scheiterte am Extremwert grösste GF+GV |
| Kantonsschule Wattwil — CELESTE | — | kompakter Grossbaukörper mit zentralem Atrium; HNF/GF-Soll 0.532 (720 Schüler, GF 14'100 m²) |
| Oberstufe Schönau Steffisburg | — | GF knapp unter 900 m² → eine Fluchttreppe genügt; begründeter Ersatzneubau statt Vollerhalt |
| Volksschule Stöckacker Bern | — | Klassenzimmer in den Gebäudeecken, zweiseitig belichtet (Sieger + Rang 2) |

## 7. Verwendung in der Hub-Pipeline

- **Parameter-Set:** `../parameter-sets/schule-volksschule-ch.json` (v1.0) — direkt
  einlesbar für `volumen_generator.py`. ⚠ Kein Auto-Sync: wird ein Kennwert im
  Benchmark `kennwerte-schulbauten` revidiert, muss das Set neu abgeleitet und die
  Version hochgezählt werden (Cross-KB Run 11).
- **Agent `flächen-nachweis`:** HNF/GF-Band 0.52–0.54 als Soll-/Ist-Ampel; Klassenzimmer
  75 m²; Verhältnis 2:1 Klassen- zu Gruppenraum.
- **Agent `grobkosten-rechner`:** Kostendach-Tabelle als Plausibilisierung der
  Grössenordnung; CHF/m³ weiterhin aus `wissen/grobkosten/`.
- **Skill `volumenstudie` / `machbarkeit`:** 900-m²-Schwelle als harte Entwurfsregel;
  GV/GF 3.8–4.5 m³/m² nur als Arbeitsannahme, nicht als Benchmark zitieren.

## Offene Punkte (nicht in diesem Artikel gelöst)

- GF-Widerspruch 2206 Schöntal «ARCHE» (0.655 vs. 0.759 HNF/GF) — siehe
  `wettbewerbs-dna/QUESTIONS.md`, nur durch Raphael bzw. die Original-Abgabeunterlagen
  klärbar.
- Reha-Subtyp und reines Aerztehaus/Ambulatorium fehlen im Wettbewerbs-Sample
  (betrifft die Typologie Gesundheitsbau, nicht Bildungsbau — hier nur zur
  Vollständigkeit vermerkt, siehe `wettbewerbs-dna/QUESTIONS.md`).
