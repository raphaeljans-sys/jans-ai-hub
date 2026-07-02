---
title: Holzbau-Bauphysik — CLT / Brettsperrholz (Waerme, Luftdicht, Feuchte)
status: established
last_updated: 2026-06-24
sources: [destillate/clt-bauphysik-stora-enso.md, destillate/clt-bauteilkatalog-stora-enso.md, destillate/clt-schallschutz-stora-enso.md, destillate/sia-2001-waermedaemmstoffe-lambda.md, destillate/graue-energie-betriebsenergie.md, destillate/sia-181-schallschutz-anforderungswerte.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[daemmstoffe-lambda]], [[u-werte-grenzwerte-ch]], [[graue-energie]], [[schallschutz-sia181]]
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

## Bauteilkatalog — konkrete Aufbauten (Auszug)
Aus dem Stora-Enso-Katalog (Kap. 4) → `[[clt-bauteilkatalog-stora-enso]]`. Je Variante stehen
**REI · U-Wert · Rw** zusammen. Tragschicht CLT (λ 0,110), Last Wand 35 kN/m / Dach 5 kN/m.

**Aussenwand** (Putz · Daemmung · CLT 100/120 · innen optional GKF/Installationsebene):
| Daemmung | innen | REI | U-Wert | Rw |
|---|---|---|---|---|
| EPS 16-26 cm (λ 0,031) | — | 60-90 | 0,16-0,10 | 36 |
| EPS + GKF | GKF | 90 | 0,16-0,10 | 37 |
| EPS + Installationsebene | Lattung/MW/OSB/GKF | **120** | 0,13-0,09 | **43** |
| Mineralwolle 16-18 cm (λ 0,035, **A1**) | ±GKF | 60-90 | 0,18-0,16 | 38-39 |

**Flachdach/Warmdach** (Eindeckung · Daemmung 24 cm · Dampfsperre **aussen** · CLT 140 · innen):
EPS (λ 0,038) oder Holzfaser (λ 0,039) → U **0,11-0,13**, REI 60-90, Rw 36-43 (abgehaengte Decke = Rw 43).

**Logik:** EPS = duenner; Mineralwolle/Holzfaser = nicht brennbar (A1) + ~2 dB leiser; GKF hebt REI
eine Stufe; Installationsebene = REI 120 + Rw 43. Dickere CLT (100→120) hebt v.a. den REI, kaum den
U-Wert (Holz daemmt nicht). Speist FAQ F15.

## Schallschutz (Luftschall R_w / Trittschall L'_n,w)
**Kernbotschaft:** Massivholz ist leicht → einschalig akustisch nur mittelmaessig; gute Werte
kommen aus **mehrschaligen, entkoppelten, beschwerten** Aufbauten. Aus dem Stora-Enso-Katalog
(Kap. 4, S. 98-164) → `[[clt-schallschutz-stora-enso]]`:

| Bauteil | typischer Bereich | wie man's hebt |
|---|---|---|
| Innenwand CLT pur (sichtbar) | R_w **34-35** | + Vorsatzschale → 41-42 |
| Wohnungstrennwand CLT | R_w 45 → **58** | beidseitige Vorsatzschale (Schwingbuegel/MW/GKF) |
| Geschossdecke CLT 140 | R_w 55-60 · **L'_n,w 60 → ~46** | Kies-Schuettung (Beschwerung) + abgehaengte Decke |

- **Luftschall:** je freischwingende Vorsatzschale ~**+10 dB**; beidseitig → R_w 58. Echt
  zweischalige Massivwand (CLT/MW-T/CLT) → 52-54.
- **Trittschall (Achillesferse der Holzdecke):** schwimmender Estrich auf EPS allein = L'_n,w 60
  (zu viel). Hebel: **gebundene Kies-Schuettung** (Beschwerung, → 51) + **abgehaengte Decke auf
  Schwingbuegel** (→ ~46).
- **CH-Norm SIA 181:2020** verlangt **Bauwerte am Bau** (D_nT/L'_nT inkl. Flanke), nicht Labor-R_w.
  Anforderung Wohnungstrennung (mittel, Stoergrad maessig): **D_i ≥ 52 dB** (erhoeht 56) / **L' ≤ 53 dB**
  (erhoeht 49) → `[[schallschutz-sia181]]`, `[[sia-181-schallschutz-anforderungswerte]]`. Im Holzbau ist
  die **Flankenuebertragung** (durchlaufende Scheiben, Stoesse) kritisch und kostet 3-8 dB → Labor-R_w
  mit Reserve **≥ 56-58** + Stoesse elastisch entkoppeln.
- **Synergie:** Schall-Zusatzschichten heben oft zugleich REI (GKF) und senken U (MW-Installationsebene)
  — Schall/Brand/Waerme zusammen planen.

## Abgrenzung
- **Brandschutz** (Kapselung, REI/EI-Klassen CH, Sichtholz-Anteil, Abbrand) → Skill `brandschutz`.
- **PV auf Holzbau** (DC-Leitung im Tragwerk in RF1-Rohr ohne PVC) → `[[pv-solar-technologien]]` / F16.
- **SIA-181:2020-Anforderungswerte** jetzt belegt → `[[schallschutz-sia181]]`. Offen nur noch die
  **Schallschutz-Anschlussdetails/Flanke** (Lignum-Dokumentation CH, konkrete Stoss-Loesungen) → Folgelauf.

## Quelle
«CLT by Stora Enso — Technische Dokumentation: Bauphysik» (Version 06.2021), Kap. 1-3 →
`[[clt-bauphysik-stora-enso]]`. ⚠ λ 0,12 = Produktwert; CH-Bemessung ggf. mit Zuschlag SIA 279.
