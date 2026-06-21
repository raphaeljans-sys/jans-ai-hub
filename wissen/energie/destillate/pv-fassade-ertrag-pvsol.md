---
quelle: PV*SOL-Simulation «Projekt PI» — netzgekoppelte 3D-Fassaden-PV-Anlage (alle vier Fassaden Sued/Ost/Nord/West, je 90° vertikal), erstellt von Thomas Lüem Partner AG (tlp elektroingenieure, Baar)
herausgeber: Thomas Lüem Partner AG (Planer) / Simulationssoftware PV*SOL premium 2019 (R5), Valentin Software GmbH
ausgabe: Simulation datiert 18.01.2019; Klimadatensatz Waedenswil CHE (1996–2015)
gelesen: 2026-06-20 (vollst., 14 S.)
datenstand: 2019 (Simulation); Ertrags-/Verbrauchsmechanik uebertragbar, ⚠ Kosten/CHF veraltet
status: emerging
last_updated: 2026-06-20
---

# Fassaden-PV — Ertrag einer vertikalen Vierfassaden-Anlage (PV*SOL-Praxisbeispiel)

**Das Wichtigste in 1 Satz:** Eine reine **Fassaden-PV-Anlage** (alle vier Fassaden senkrecht
belegt, Standort ZH) liefert in dieser Simulation rund **603 kWh/kWp** spezifischen Jahresertrag —
also nur etwa **60–65 %** dessen, was ein gut ausgerichtetes Dach bringt (~950–1'025 kWh/kWp, vgl.
`[[pv-ertrag-eigenverbrauch-praxis]]`) — dafuer mit deutlich **flacherer Saisonkurve** (mehr
Winteranteil) und sehr hohem Anlagennutzungsgrad (kuehle, hinterlueftete Module).

## Anlagen-Eckdaten (Beispiel)
| Kennwert | Wert |
|---|---|
| Anlagentyp | netzgekoppelte 3D-Fassaden-PV, vier Fassaden |
| PV-Generatorleistung | 491,4 kWp |
| Generatorflaeche | 2'681 m² (1'638 Module Jinko JKM300M-60) |
| Wechselrichter | 6 Stk. (ABB TRIO-TM-50.0 / PVI-110.0-TL) |
| Standort/Klima | Waedenswil ZH (Referenz 1996–2015) |

## Die vier Fassaden (alle Neigung 90° = senkrecht, dachparallel, gut hinterlueftet)
| Fassade | Ausrichtung (Azimut) | Flaeche | Module |
|---|---|---|---|
| Sued | 192° | 618,7 m² | 378 |
| Ost | 102° | 721,8 m² | 441 |
| Nord | 12° | 618,7 m² | 378 |
| West | 282° | 721,8 m² | 441 |

> ⚠ Die Simulation weist den Ertrag **nur als Gesamtanlage** aus, nicht je Fassade einzeln. Die
> Nordfassade ist mitbelegt und zieht den Schnitt nach unten — eine Sued/Ost/West-Belegung allein
> laege entsprechend hoeher. Konkrete kWh/kWp je Orientierung bleiben offen (→ QUESTIONS).

## Ertrags-Kennzahlen Gesamtanlage
| Kennwert | Wert |
|---|---|
| **Spez. Jahresertrag** | **603,04 kWh/kWp** |
| Anlagennutzungsgrad (PR) | 87,8 % (hoch — senkrechte Module bleiben kuehl) |
| PV-Generatorenergie (AC) | 296'333 kWh/a |
| Ertragsminderung durch Abschattung | 0,0 %/a (frei stehend) |
| Eigenverbrauchsanteil | 32,2 % |
| Solarer Deckungsanteil | 28,9 % (Verbrauch 330'414 kWh/a) |

## Wirtschaftlichkeit (⚠ Stand 2019, nur Mechanik)
| Kennwert | Wert |
|---|---|
| Gesamte Investitionskosten | 1'474'200 CHF (≈ **3'000 CHF/kWp** — Fassade teurer als Dach) |
| Stromgestehungskosten | 0,22 CHF/kWh |
| Amortisationsdauer | > 25 Jahre |
| Bilanzierung | Ueberschusseinspeisung |

## Saison- und Tagesprofil (aus den Monatscharts)
- Produktion Sommer (Jun/Jul) ≈ **37'000 kWh/Mt**, Winter (Dez/Jan) ≈ **9'000 kWh/Mt** → Verhaeltnis
  ~4:1. Bei senkrechten Fassaden faellt der Winteranteil **relativ groesser** aus als bei flach
  geneigten Daechern, weil die tief stehende Wintersonne steiler auf die Vertikale trifft.
- Verbrauchsdeckung durch PV ist im Winter spuerbar (nicht vernachlaessigbar), im Hochsommer dafuer
  viel Netzeinspeisung → Eigenverbrauch ist der Hebel (vgl. F18).

## Bauherren-Transfer
- **Faustzahl Fassade vs. Dach:** Senkrechte Fassaden-PV liefert grob **60–65 % des Dachertrags**
  je kWp. Wer also am Dach 1'000 kWh/kWp erwartet, rechnet an der Fassade mit ~600 kWh/kWp.
- **Wann Fassade trotzdem sinnvoll:** wenn das Dach voll/ungeeignet ist, bei Hochhaeusern mit viel
  Fassade/wenig Dach, und fuer ein **gleichmaessigeres Jahresprofil** (besserer Winterstrom →
  bessere Deckung der Heiz-/WP-Last in der dunklen Jahreszeit).
- **Mehrkosten ehrlich nennen:** Fassaden-PV war 2019 mit ~3'000 CHF/kWp deutlich teurer als Dach
  (vgl. 1'600–2'460 CHF/kWp, `[[pv-kosten-amortisation-praxis-ewz]]`); rechtfertigt sich v. a., wenn
  die Module die Fassadenbekleidung **ersetzen** (BIPV — Bauteil zahlt sich doppelt).
- **Hinterlueftung ist Pflicht:** PR 87,8 % wurde nur erreicht, weil die Module gut hinterlueftet
  und damit kuehl bleiben (Temperatur-Koeffizient −0,4 %/°C, `[[greenpv-fassade-pv-begruenung-hslu]]`).
- **Ost/West statt Nord:** Eine Nordfassade traegt wenig bei; Belegung nach Sued/Ost/West priorisieren.

## Offene Punkte
- kWh/kWp **je Einzel-Orientierung** (Sued/Ost/West/Nord vertikal) — Simulation gibt nur die Summe.
- Aktuelle Fassaden-PV-Kosten (Swissolar-Marktbericht statt 2019).
- Vergleich vertikal vs. 30–45° geneigt am selben Standort (Ertrags-/Saison-Delta).

## Querverweise
- Dach-Ertragspraxis & Eigenverbrauch: `[[pv-ertrag-eigenverbrauch-praxis]]` (F18)
- Fassaden-PV-Technik & Begruenung: `[[greenpv-fassade-pv-begruenung-hslu]]` (F20)
- Kosten/Amortisation: `[[pv-kosten-amortisation-praxis-ewz]]`
- Dach-Eignung amtlich: `[[sonnendach-solarpotenzial-bfe]]` (F19)
</content>
</invoke>
