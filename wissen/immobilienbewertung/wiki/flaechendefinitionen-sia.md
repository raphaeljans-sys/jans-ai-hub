---
title: Flaechendefinitionen (SIA 416 / SIA 416/1)
status: established
last_updated: 2026-06-12
sources: [SIA 416 Flaechen und Volumen von Gebaeuden, IMMO-03 FLÄCHENBEZEICHNUNG/sia, IMMO-06 WOHNEN Baumasse (Flaechenkonzeption Wohnen), Schaetzungsanleitung Kap. 5 (Tab. 12 Nutzflaechen, Tab. 13 Raumeinheiten)]
links: [[realwert-sachwert]], [[residualwertmethode]], [[bewertungsverfahren-ueberblick]], [[ertragswert-dcf]]
---

# Flaechendefinitionen (SIA 416)

Saubere Flaechenbegriffe sind die Basis jeder Bewertung — Neuwert, Mietertrag und
Verkaufspreis haengen an der richtigen Bezugsflaeche. Massgebend ist **SIA 416** (Flaechen
und Volumen von Gebaeuden); fuer Flaechenbedarf/Programm ergaenzend SIA 416/1 und SIA 2024.

## Kernbegriffe

| Begriff | Kuerzel | Bedeutung (kurz) |
|---|---|---|
| Geschossflaeche | GF | Summe aller Geschossflaechen (innerhalb Aussenwand-Aussenkante) |
| Bruttogeschossflaeche | BGF | Geschossflaeche brutto (Konstruktion + Nutzung + Verkehr) |
| Nettogeschossflaeche | NGF | BGF minus Konstruktionsflaeche (KF) |
| Hauptnutzflaeche | HNF | dem Hauptzweck dienende Nutzflaeche (z.B. Wohnen) |
| Nebennutzflaeche | NNF | dienende Nutzflaeche (Keller, Technik, Lager) |
| Verkehrsflaeche | VF | Erschliessung: Treppen, Korridore, Eingaenge, Lift |
| Konstruktionsflaeche | KF | Waende, Stuetzen, Schaechte |
| Anrechenbare Geschossflaeche | aGF | baurechtlich angerechnete GF (Basis Ausnuetzung) |

**Merksatz:** BGF = NGF + KF; NGF = HNF + NNF + VF (+ Funktionsflaeche FF).

## aGF vs. BGF — nicht verwechseln

- **aGF** ist ein **baurechtlicher** Begriff (was die Zone/BZO anrechnet → Ausnuetzung,
  Skill `baurecht`/`machbarkeit`). Nicht jede BGF ist anrechenbar (z.B. nicht jedes UG/DG).
- **BGF/GF** sind **geometrische** Begriffe (SIA 416), Basis fuer Neuwert/m2 und m3.

Fuer die Bewertung gilt: Mietertrag und Verkaufspreis beziehen sich meist auf **HNF bzw.
Wohnflaeche**, Baukosten auf **BGF/GF bzw. m3 (GV)**. Immer die Bezugsflaeche mit angeben.

## Faustwerte Wohnen (zu verifizieren)

Aus `IMMO-06 WOHNEN Baumasse / Flaechenkonzeption Wohnen` sind aGF↔BGF↔HNF-Faktoren
abgelegt (z.B. HNF ~ 80 % aGF bei EFH). Die genauen JANS-Faktoren sind noch zu extrahieren
und zu belegen → `wiki/wissensluecken.md`.

## Volumen

Gebaeudevolumen (GV, m3) nach SIA 416 — Grobwert fuer Neuwert und fruehe Kostenschaetzung:
GV ≈ Grundflaeche × Geschosse × Geschosshoehe (siehe Skill `machbarkeit`).

## Nutzflächen-Anrechnung (Schätzungsanleitung Tab. 12)

Für die Bewertung wird die **Nutzfläche** aus den Nettoflächen (lichtes Mass zwischen den
Wänden) je Raum ermittelt — mit gestufter Anrechnung (Schätzungsanleitung Kap. 5, Tab. 12):

| Anrechnung | Was |
|---|---|
| **Voll** | Räume mit lichter Höhe ≥ 2.00 m; Erker, Wandschränke, Einbaumöbel, Küchen-Kombinationen, Cheminées, Kachelöfen; Wand-/Fensternischen > 0.5 m² bis zum Boden |
| **½** | Raumteile mit lichter Höhe < 2.00 m und ≥ 1.50 m (abgeschrägt); Dachzimmer, Kammern, geschlossene Veranden, Wintergärten, Bastel-/Fitnessräume (unbeheizt) |
| **¼** | Balkone, Lauben, Loggien, Pergolen, Terrassen, Sitzplätze |
| **Nicht** | Estrich/Keller, Wasch-/Trockenräume, Kellergänge, Geschosstreppen, Treppenhäuser, Abstellräume ausserhalb der Wohnung, Geräte-/Ski-/Velo-/Kinderwagenräume, Lifte, Aussentreppen |

Wichtig: Diese amtliche Anrechnungslogik liegt **näher an der Wohnflächen-/HNF-Definition für
die Ertrags- und Vergleichswertbewertung** ([[ertragswert-dcf]], [[vergleichswert-hedonisch]])
als die rein geometrische SIA-416-GF. Bei Lagerflächen pro m² Nutzfläche bewerten; bei
überdachten Lagern Raum-/Durchfahrtshöhe (Stapelfähigkeit) beachten.

## Raumeinheiten (RE) — Tab. 13

Für die Mietwertberechnung von Wohnungen kennt die Schätzungspraxis die **Raumeinheit (RE)**:
eine gewichtete Zähleinheit je Raum nach Nettofläche (inkl. Einbauten). Auszug Tab. 13:

- **Wohnräume/Zimmer**: bis 3 m² = 0.3 RE … 15.1-18 m² = **1.0 RE** … 50.1-55 m² = 2.0 RE,
  danach + 0.1 RE je 5 m². Dielen/Hallen/Galerien (nach Abzug VF) = 1/1 der Fläche; unbeheizte
  Wintergärten/Bastelräume = ½; unverglaste Terrassen/Balkone/Loggien = ¼.
- **Küchen** (Raumfläche inkl. Einbauten): bis 4 m² = 0.6 RE … 7.1-8 m² = 1.0 RE … danach
  + 0.1 RE je 3 m². Kochnischen Kleinwohnungen/Studios pauschal 0.4-0.7 RE.
- **Nassräume**: Bad/Dusche mit WC + Lavabo: bis 2 m² = 0.5 RE … + 0.1 RE je 2 m²; reines
  WC + Lavabo: bis 2 m² = 0.2 RE …; Zuschläge je Apparat (Dusche +0.3, Lavabo/Pissoir/Bidet/
  WC je +0.1 RE).

Die RE-Summe einer Wohnung × Mietwert je RE ergibt den **Basis-Mietwert**, der mit Tab. 14/15
örtlich/qualitativ korrigiert wird — siehe [[ertragswert-dcf]] (Mietwertberechnung).
