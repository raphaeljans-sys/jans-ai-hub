---
quelle: "CLT by Stora Enso — Technische Dokumentation Bauphysik, Kap. 4 Bauteilaufbauten (Schallschutz Innenwand / Trennwand / Deckenelement)"
herausgeber: Stora Enso Wood Products
ausgabe: "Version 06.2021 (DE)"
gelesen: 2026-06-13
datenstand: "2021 (Produktdoku Hersteller; Rw/L'n,w aus den Bauteiltabellen)"
status: established
last_updated: 2026-06-13
---

# CLT-Schallschutz — Innenwand / Trennwand / Deckenelement (Stora Enso, Kap. 4)

## Das Wichtigste in 1 Satz
Massivholz (CLT) ist **von sich aus akustisch nur mittelmaessig** — eine sichtbare CLT-Wand
erreicht **R_w 34-35 dB**, eine nackte CLT-Decke genuegt fuer den Trittschall **nie**; erst
**zweischalige Wandaufbauten (R_w bis 58)** und **schwimmende, beschwerte Boeden mit abgehaengter
Decke (L'_n,w bis ~46)** machen den Holzbau MFH-/Healthcare-tauglich.

## Warum Holz akustisch heikel ist (Einordnung)
Schalldaemmung lebt von **Masse** (Berger'sches Massegesetz) und von **mehrschaligen,
elastisch getrennten** Aufbauten. CLT ist **leicht** (ρ ≈ 470 kg/m³ gegen ~2300 beim Beton) →
eine einschalige Holzwand/-decke daemmt bei gleicher Dicke deutlich schlechter als Massivbau.
Der Holzbau holt das ueber **Schalenkopplung + Beschwerung + Entkopplung** zurueck. Genau das
zeigen die Stora-Enso-Tabellen.

## Kernzahlen — Waende (Luftschall R_w)

**Innenwaende** (nicht-trennend, innerhalb einer Nutzungseinheit), CLT C3s:

| Aufbau | R_w [dB] | REI | U [W/m²K] |
|---|---|---|---|
| CLT 100 pur (sichtbar) | **34** | 60 | 0,86 |
| CLT 120 pur | 35 | 60 | 0,74 |
| CLT 100 + 1× GKF | 36 | 90 | 0,82 |
| CLT 120 + 1× GKF | 37 | 90 | 0,71 |
| CLT 100 + Installationsebene (Lattung/MW 5/OSB/GKF) | **41** | 120 | 0,38 |
| GKF + CLT 100 + GKF (beidseitig) | 38 | 90 | 0,79 |
| GKF + CLT 100 + einseitig Vorsatzschale (V9) | **42** | 120 | 0,38 |

**Trennwaende** (zwischen Nutzungseinheiten — Wohnungstrennwand), CLT C3s:

| Aufbau | R_w [dB] | REI | U [W/m²K] |
|---|---|---|---|
| CLT 100 + 1× Vorsatzschale (GKF/MW 7/Schwingbuegel) | 45 | 60 | 0,34 |
| CLT 100 + Vorsatzschale + GKF (beidseitig Platte) | 46 | 90 | 0,33 |
| **CLT 100, beidseitig Vorsatzschale (2× MW 7, Schwingbuegel)** | **58** | 120 | 0,21 |
| CLT 120, beidseitig Vorsatzschale | 58 | 120 | 0,20 |
| Zweischalig: CLT 100 + Trittschalldaemmung MW-T 6 + CLT 100 | 52 | 60 | 0,26 |
| Zweischalig CLT/MW-T/CLT + 1× GKF | 54 | 90 | 0,26 |

**Lesart:** je eine **frei schwingende Vorsatzschale** (Holzlattung auf Schwingbuegel + Mineralwolle
+ GKF) bringt **+10 dB**; **beidseitige** Vorsatzschalen heben die einschalige CLT-Wand von 34 auf
**58 dB**. Alternativ wirkt die **echt zweischalige Massivwand** (zwei getrennte CLT-Platten mit
weicher Trittschalldaemmung dazwischen) → 52-54 dB.

## Kernzahlen — Decken (Luftschall R_w **und** Trittschall L'_n,w)

Basis jeweils **CLT 140 L5s** (ρ 470, 14 cm), schwimmender Aufbau oben:

| Deckenaufbau (oben → unten) | R_w [dB] | **L'_n,w [dB]** | REI |
|---|---|---|---|
| Zementestrich 7 / EPS-Verbund / EPS-Schuettung 5 / CLT 140 | 55 | **60** | 60 |
| … + GKF unterseits | 56 | 59 | 90 |
| … + abgehaengte GKF-Decke (Lattung/MW) | 60 | **55** | 90 |
| Estrich 7 / MW-T 4 / **Kies-Schuettung 5** / CLT 140 | 58 | **51** | 60 |
| … + GKF | 59 | 50 | 90 |
| … + abgehaengte Decke auf Schwingbuegel (V6) | (höher) | **~46** | 90 |

**Trittschall ist die Achillesferse:** schon der schwimmende Zementestrich auf EPS bringt nur
L'_n,w 60 (V1) — zu viel. Die zwei wirksamen Hebel sind **Beschwerung** (gebundene Kies-Schuettung
statt EPS → L'_n,w 60 → 51) und die **abgehaengte Decke unten** (Schwingbuegel → bis ~46).
Faustregel der Tabelle: jede zusaetzliche entkoppelte/beschwerte Lage senkt L'_n,w um ~4-5 dB.

## Bezug zur Schweizer Norm (Einordnung — gegen SIA 181 zu pruefen)
Die Werte sind **Labor-Einzahlwerte R_w / L'_n,w** (Prueftabelle). Massgebend in der Schweiz ist
**SIA 181 «Schallschutz im Hochbau»**, die **Bauwerte am Bau** (D_nT bzw. L'_nT, inkl. Flankenuebertragung)
fordert — Groessenordnung Wohnungstrennbauteile: Luftschall-Anforderung ~**52 dB (Mindest) / 55 (erhoeht)**,
Trittschall ~**53 dB (Mindest) / 50 (erhoeht)**. **Wichtig:** Der Bauwert liegt wegen
**Flankenuebertragung** unter dem Labor-R_w; im Holzbau ist die Flanke (Wand-/Deckenstoss,
durchlaufende CLT-Scheibe) **besonders kritisch** und kann 3-8 dB kosten. Konsequenz:
- Ein Labor-R_w 52 reicht **nicht automatisch** fuer die Wohnungstrennwand — Reserve einplanen
  (→ zweischalige 58-dB-Wand waehlen) und die **Stoesse elastisch entkoppeln**.
- Der Trittschallnachweis entscheidet sich am **Deckenrandanschluss** und der abgehaengten Decke.
(SIA-181-Zahlen hier aus Erinnerung — vor Verwendung in der Beratung an der gueltigen Normfassung
verifizieren.)

## Bauherren-Transfer
- **«Wird mein Holzhaus hellhoerig?»** Nein — *wenn richtig aufgebaut*. Sichtbares Massivholz pur
  ist akustisch bescheiden; mit den Standard-Schichten (Vorsatzschale an der Wand, schwimmender
  beschwerter Boden + abgehaengte Decke) erreicht der Holzbau **dieselben Schallschutzklassen wie
  der Massivbau**.
- **Kostenwahrheit:** der Schallschutz steckt nicht in der CLT-Platte, sondern in den **Zusatzschichten**
  (Vorsatzschalen, Schuettung, schwimmender Estrich, abgehaengte Decke). Wer Sichtholz an Trenn-
  bauteilen will, zahlt den Schallschutz an anderer Stelle — oder akzeptiert tiefere Werte.
- **MFH / Healthcare (Zimmertrennung):** Wohnungstrennwand → **zweischalig planen (Ziel R_w ≥ 58
  Labor)**, Geschossdecke → **beschwerter schwimmender Boden + abgehaengte Decke** (Ziel L'_n,w ≤ 50).
  Sichtbare CLT-Decke ueber bewohnten Raeumen ist akustisch der schwierigste Fall — frueh mit dem
  Bauphysiker klaeren.
- **Synergie:** dieselben Zusatzschichten bringen oft **gleichzeitig Brandschutz** (GKF hebt REI)
  und **Waermeschutz** (Installationsebene mit MW senkt U) — Schall/Brand/Waerme zusammen planen.

## Offene Punkte
- Flankenuebertragung/Stoesse: konkrete CH-Anschlussdetails (Holzbau-Schallschutz nach Lignum-
  Dokumentation) noch nicht in der KB — eigene Quelle waere wertvoll.
- SIA-181-Anforderungswerte exakt (Mindest/erhoeht, Empfindlichkeit/Stoerung) belegen.
- Decke V6 (Schwingbuegel): R_w/L'_n,w im PDF teils ausserhalb der gezeigten Tabelle — nachtragen.

## Backlinks
[[clt-bauphysik-stora-enso]] · [[clt-bauteilkatalog-stora-enso]] · [[daemmstoffe-lambda]] ·
Holzbau-Brandschutz → Skill `brandschutz` · Themenartikel [[holzbau-bauphysik-clt]]
