---
title: Marktdaten Gemeinden (UBS Real Estate Local Fact Sheets)
status: established
last_updated: 2026-06-09
sources: [IMMO-02 UBSFS]
links: [[datenquellen-registry]], [[vergleichswert-hedonisch]], [[realwert-sachwert]], [[ertragswert-dcf]]
---

# Marktdaten Gemeinden — UBS Fact Sheets (kompiliert)

Pro Gemeinde eine kompilierte, maschinenlesbare Fassung des **UBS Real Estate Local
Fact Sheet** (UBS CIO / Global Wealth Management). Quelle der Rohdaten:
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 02 UBSFS/`.

Diese Blaetter sind die **Markt- und Vergleichspreis-Faktenbasis** des Skills
`immobilienbewertung` (insbesondere fuer das Vergleichswert-/hedonische Verfahren und als
Plausibilisierung von Ertrags-/Realwert). Jeder Wert traegt seinen **Stand**; Werte
aelter als 18 Monate werden mit ⚠ markiert (siehe `../wissensluecken.md`).

## Verfuegbare Gemeinden

| Gemeinde | Kt. | PLZ/BFS | MS-Region | Stand FS | Datei |
|---|---|---|---|---|---|
| Wangen | SZ | 8854 / 1349 | March | 12/2025 | [[marktdaten-gemeinden/sz-wangen-8854]] |
| Zollikon | ZH | 8125 / 0161 | Pfannenstiel | 12/2025 | [[marktdaten-gemeinden/zh-zollikon-8125]] |

Weitere Fact Sheets liegen als PDF in `IMMO - 02 UBSFS` (Waedenswil, Thalwil, Maur,
Regensdorf, Wald, Luzern, Einsiedeln, Muri) — noch nicht kompiliert; bei Bedarf
nachziehen und hier registrieren.

## Lesehilfe (Spaltenlogik UBS-FS)

- **Quantile 10/30/50/70/90 %**: Preisniveau-Bandbreite innerhalb der Gemeinde. Der
  50%-Wert (Median) ist der Referenzwert. 10% = guenstigstes, 90% = teuerstes Segment.
- **Preise EFH/EW in CHF/m²**: bezogen auf Wohnflaeche (Nettowohnflaeche-naehe), nicht
  Grundstueck. **Mieten in CHF/m²/Jahr** (durch 12 fuer Monatsmiete/m²).
- **Baulandpreise** nach Lageklasse Schlecht/Mittel/Top (CHF/m² Land) — statistisch
  ermittelt, Vorsicht bei effektiven Transaktionspreisen unueberbauter Parzellen.
- **Preis-Miet-Verhaeltnis**: Kaufpreis / Jahresmiete; hoeher = teurer relativ zur Miete.
- Farblegende der UBS (hoch/mittel/tief) = Einordnung gegenueber allen CH-Gemeinden.
