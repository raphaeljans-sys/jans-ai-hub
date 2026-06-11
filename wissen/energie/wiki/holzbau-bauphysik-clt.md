---
title: Holzbau-Bauphysik — CLT / Brettsperrholz (Waerme, Luftdicht, Feuchte)
status: emerging
last_updated: 2026-06-11
sources: [destillate/clt-bauphysik-stora-enso.md, destillate/daemmstoffe-lambda.md, destillate/graue-energie-betriebsenergie.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[daemmstoffe-lambda]], [[u-werte-grenzwerte-ch]], [[graue-energie]]
---

# Holzbau-Bauphysik — CLT / Brettsperrholz

Bauphysikalische Schnellreferenz fuer Massivholzbau (Cross-Laminated Timber / Brettsperrholz).
Kernbotschaft: **Massivholz traegt und dichtet, daemmt aber kaum.** Speist FAQ F15.

## Waermeschutz
- **λ_CLT = 0,12 W/(m·K)** (EN ISO 10456) — ~4× schlechter als Mineralwolle (0,035), ~3× besser
  als Beton (~2,0). Holz daemmt also nur schwach.
- **100 mm CLT pur:** U ≈ **1,0 W/m²K** (R_si 0,13 / R_se 0,04). Weit ueber jedem Grenzwert.
- **Mit Zusatzdaemmung:** 100 mm CLT + 160 mm MW → U 0,18; **+ 180 mm MW → U 0,16** (erreicht den
  Neubau-Grenzwert U ≤ 0,17, vgl. `[[u-werte-grenzwerte-ch]]`).
- **Vorteil ggü. Holzrahmenbau:** Daemmebene liegt **vor** der Tragstruktur (durchgehend, keine
  Rippen-Waermebruecken in der Daemmung), und die Tragstruktur ist von Kondensat entkoppelt.

## Luftdichtheit
- CLT bildet **ab 3 Lagen die luftdichte Ebene selbst** — **keine Folie noetig**. (Holzrahmenbau
  braucht dafuer Folie oder stossverklebte OSB-Platten.)
- **n₅₀** (Blower-Door, OENORM B 8110-1:2008): 3,0 ohne Lueftung / 1,5 mit Komfortlueftung /
  **0,6 Passivhaus** — mit fachgerechten Anschluessen erreicht CLT das Passivhaus-Niveau.
- Geprueft Holzforschung Austria 2012 + TU Graz 2013/2014 (OENORM EN 12114): «ausserhalb des
  messbaren Bereichs».
- **Winddichtheit aussen** ebenso wichtig (kuehlt sonst die Daemmung aus). Regel: alle
  Horizontal- und Vertikaldichtungen zu **einer lueckenlosen Einheit** verbinden.

## Feuchte & Diffusion
- s_d = µ × d. CLT ist **luftdicht, aber nicht dampfdicht** — die **Leimfugen sind die
  Dampfbremse**, das Holz ist diffusionsoffen und **feuchtevariabel** (Sommer offener als Winter).
- 3-schichtige Platte = s_d wie Fichtenvollholz gleicher Dicke (Holzforschung Austria 2009).
- CLT **reguliert die Raumluft** (nimmt Feuchte auf/gibt ab). Holzfeuchte 10-12 %.
- **Aufbauregel (folienfrei):** Diffusion **nach aussen zunehmen** lassen (s_d abnehmend) →
  kein Tauwasser im Bauteil. Beispiel s_d: GK 0,273 · CLT 3,9 · Daemmung 0,25 · diff.offene
  Folie ≤ 0,3 m.
- **Sockel/Anschluss an Beton:** Feuchteschutz im Sockelbereich kritisch.

## Oekologie / graue Energie
Der eigentliche Grund fuer Holz ist nicht der U-Wert, sondern die **graue Energie**:
Holzleichtbau ~59 vs. ~74 MJ/m²·a (Massiv), CO₂-Bindung im Material → `[[graue-energie]]` / F9.

## Abgrenzung
- **Brandschutz** (Kapselung, REI, Sichtholz-Anteil, Abbrand) → Skill `brandschutz` (nicht hier).
- **Schallschutz** von CLT-Decken/Trennwaenden → noch nicht erfasst.
- **Bauteilkatalog** (konkrete Aussenwand-/Dach-/Deckenaufbauten mit U/s_d/Schall) — Stora-Enso-
  Doku Kap. 4 (S. 38-178), ueber Folgelaeufe zu erschliessen.

## Quelle
«CLT by Stora Enso — Technische Dokumentation: Bauphysik» (Version 06.2021), Kap. 1-3 →
`[[clt-bauphysik-stora-enso]]`. ⚠ λ 0,12 = Produktwert; CH-Bemessung ggf. mit Zuschlag SIA 279.
