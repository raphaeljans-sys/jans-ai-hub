---
title: Lageklasse und Landwertanteil
status: speculative
last_updated: 2026-06-03
sources: [IMMO-03 Schaetzungen (schaetzungsanleitung_kap5.pdf), IMMO-05 Bodenpreise]
links: [[realwert-sachwert]], [[residualwertmethode]], [[vergleichswert-hedonisch]], [[datenquellen-registry]]
---

# Lageklasse und Landwertanteil

Die **Lageklasse (LK)** ist eine Einstufung der Standortqualitaet (gaengig in einer Skala
1-10: peripher bis zentral/Top). Sie steuert insbesondere den **Landwertanteil am Neuwert**:
je besser die Lage, desto hoeher der Anteil, den der Boden am Gesamtwert ausmacht.

## Prinzip

```
Bodenwert  ≈  Landwertanteil(LK) × Neuwert (Gebaeude)
```

- Periphere Lage: kleiner Landwertanteil (Substanz dominiert).
- Zentrale/Top-Lage: grosser Landwertanteil — der Boden kann den Gebaeudewert uebersteigen.

Die **Lageklassen-Methode** (Naegeli) ist das klassische Verfahren dahinter.

## ⚠ Zahlenwerte unbelegt

In der ersten Sichtung tauchten konkrete Prozentbaender pro LK auf (aus der
Schaetzungsanleitung Kap. 5). Diese sind **noch nicht verifiziert** und werden hier
bewusst **nicht** als Tabelle gefuehrt, um keine falschen Kennwerte zu verbreiten.
→ Aufgabe Training: die LK→%-Tabelle aus `schaetzungsanleitung_kap5.pdf` sauber extrahieren,
Quelle/Seite belegen, dann Status auf `emerging` heben. Eintrag in `wiki/wissensluecken.md`.

## Bodenpreis-Daten bei JANS

`IMMO - 05 Bodenpreise` enthaelt heute v.a. Screenshots je Gemeinde (ZH Waedenswil,
Thalwil, Niederhasli, Maur) — nicht maschinenlesbar, fragmentarisch. Strukturierte
kantonale/gemeindescharfe Bodenpreis-Statistiken fehlen. Empfehlung: Bodenpreise live aus
amtlichen Quellen (Kanton/Gemeinde, Handaenderungsstatistik) und Wuest beziehen.
→ siehe [[datenquellen-registry]] und `wiki/wissensluecken.md`.
