---
title: Lageklasse und Landwertanteil
status: established
last_updated: 2026-06-10
sources: [Schaetzungsanleitung Teil III Kap. 5 (schaetzungsanleitung_kap5.pdf, Tab. 6/7 Lageklassenschluessel, Tab. 8 Landwertanteil; Methode Naegeli), IMMO-05 Bodenpreise]
links: [[realwert-sachwert]], [[residualwertmethode]], [[vergleichswert-hedonisch]], [[datenquellen-registry]], [[erfolgsfaktoren-wettbewerb]]
---

# Lageklasse und Landwertanteil

Die **Lageklasse (LK)** ist eine Einstufung der Standortqualitaet (Skala 0-10: peripher bis
zentral/Top). Sie steuert den **Landwertanteil am Neuwert**: je besser die Lage, desto hoeher
der Anteil, den der Boden am Gesamtwert ausmacht. Klassisches Verfahren: **Lageklassenmethode
nach Naegeli**.

## Prinzip

```
Bodenwert (Landwert)  ≈  Landwertanteil(LK) [%]  ×  Neuwert (BKP 2, 4 + 5)
```

- Periphere Lage: kleiner Landwertanteil (Substanz dominiert).
- Zentrale/Top-Lage: grosser Landwertanteil — der Boden kann den Gebaeudewert uebersteigen.

Die LK selbst ist der **Mittelwert mehrerer Lagekriterien**, einzeln auf der Skala 1-10
benotet (Schaetzungsanleitung Kap. 5, Tab. 6/7).

## Lageklassenschluessel Wohnbauten (Tab. 6)

Vier Kriterien, je auf 1-10 eingestuft, dann Mittelwert:

| Kriterium | LK 1-2 (tief) | LK 3-4 (mittel) | LK 7-8 (hoch) | LK 9-10 (top) |
|---|---|---|---|---|
| **A Allgemeine Lage** | laendliche Gegend, Randgebiet, kein Tourismus | Wirtschaftsregion/Dorfzentrum, gute Infrastruktur | Wirtschaftszentrum, Top-Ferienort | Mittel-/Grossstadt, Citylage |
| **B Individuelle Lage** | nachteilige Umgebung, starke Immissionen, keine Aussicht | angenehmes Quartier, mittlere Weitsicht | sehr gute Fernsicht, exklusive Umgebung | See-/Flussanstoss |
| **C Verkehrserschliessung** | grosse Distanzen, kein oeffentl. VM, Naturweg | kurze Distanzen, normales Kursangebot | zentrale Lage in jeder Beziehung | grosse Auswahl an Verkehrsmitteln |
| **D Marktverhaeltnisse** | kein Markt feststellbar | normale Nachfrage, genuegend Angebot | grosse Nachfrage, sehr geringes Angebot | sehr grosse Nachfrage, Angebote selten |

**Berechnungsbeispiel (Tab. 6):** A 4.0 + B 3.0 + C 3.5 + D 3.5 = 14.0 / 4 = **LK 3.5**
→ Landwert **28 % des Neuwerts** (Tab. 8).

## Lageklassenschluessel Gewerbe ohne Industrie (Tab. 7)

Drei Kriterien (A Allgemeine Lage / B Individuelle Lage-Standort, unterteilt nach Verkauf-
Dienstleistung vs. Produktion-Verteilung / C Marktverhaeltnisse), Mittelwert aus 3.
**Beispiel:** A 4.0 + B 3.0 + C 2.0 = 9.0 / 3 = **LK 3.0** → Landwert **23.08 %** (Tab. 8).

## Landwertanteil-Tabelle (Tab. 8) — LK → % vom Neuwert (BKP 2, 4 + 5)

Vollstaendig belegt aus Schaetzungsanleitung Kap. 5, S. 9:

| LK | % | LK | % | LK | % | LK | % | LK | % |
|---|---|---|---|---|---|---|---|---|---|
| 1.0 | 6.67 | 3.0 | 23.08 | 5.0 | 45.45 | 7.0 | 77.78 | 9.0 | 128.57 |
| 1.5 | 10.34 | 3.5 | 28.00 | 5.5 | 52.38 | 7.5 | 88.24 | 9.5 | 146.15 |
| 2.0 | 14.29 | 4.0 | 33.33 | 6.0 | 60.00 | 8.0 | 100.00 | 10.0 | 166.67 |
| 2.5 | 18.52 | 4.5 | 39.13 | 6.5 | 68.42 | 8.5 | 113.33 | | |

Feinabstufung in 0.1-Schritten in der Quelle (z.B. LK 3.1 = 24.03 %, 3.4 = 26.98 %,
4.1 = 34.45 %, 6.4 = 66.67 %, 8.4 = 110.53 %). Charakteristik: **bei LK 8.0 erreicht der
Landwert 100 % des Neuwerts**, darueber uebersteigt der Boden den Gebaeudewert — typisch fuer
zentrale Stadtlagen mit Ausnuetzungsreserven.

⚠ **Datenstand/Anwendung:** Die Tabelle ist methodisch stabil (Naegeli), bildet aber den
Landwert als **Anteil am Neuwert** ab; sie ersetzt **keine** aktuelle Bodenpreis-Evidenz.
Bei zentralen/knappen Lagen liefert der **Vergleichswert** (Bodenpreise,
[[vergleichswert-hedonisch]]) bzw. der **Residualwert** ([[residualwertmethode]]) den
besseren Landwert; die LK-Methode dient dann der **Plausibilisierung**.

## Bodenpreis-Daten bei JANS

`IMMO - 05 Bodenpreise` enthaelt heute v.a. Screenshots je Gemeinde (ZH Waedenswil, Thalwil,
Niederhasli, Maur) — nicht maschinenlesbar, fragmentarisch. Strukturierte kantonale/
gemeindescharfe Bodenpreis-Statistiken fehlen (Luecke D2). Empfehlung: Bodenpreise live aus
amtlichen Quellen (Handaenderungsstatistik Kt. ZH/SZ) und Wuest/IAZI beziehen.
→ [[datenquellen-registry]] und `wiki/wissensluecken.md`.

## Offen / zu vertiefen

- ✓ 2026-06-10: LK→%-Tabelle (Tab. 8) und Lageklassenschluessel Wohnen/Gewerbe (Tab. 6/7)
  sauber extrahiert und belegt; Status speculative → established (T5 erfuellt).
- LK-Beispielrechnung an einem realen JANS-Objekt gegen Bodenpreis-Vergleichswert spiegeln,
  um die Methode zu kalibrieren.
- Neuwert-Bezugsgroesse (BKP 2, 4 + 5) mit [[realwert-sachwert]] konsistent halten.
