---
title: Marktdaten Gemeinden (UBS Real Estate Local Fact Sheets)
status: established
last_updated: 2026-06-12
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
| Thalwil | ZH | 8800 / 0141 | Zimmerberg | 7/2024 ⚠ | [[marktdaten-gemeinden/zh-thalwil-8800]] |
| Muri | AG | 5630 / 4236 | Freiamt | 7/2024 ⚠ | [[marktdaten-gemeinden/ag-muri-5630]] |
| Maur | ZH | 8124 / 0195 | Glattal-Furttal | 7/2024 ⚠ | [[marktdaten-gemeinden/zh-maur-8124]] |
| Regensdorf | ZH | 8105 / 0096 | Glattal-Furttal | 12/2023 ⚠ | [[marktdaten-gemeinden/zh-regensdorf-8105]] |
| Wald | ZH | 8636 / 0120 | Zürcher Oberland | 12/2023 ⚠ | [[marktdaten-gemeinden/zh-wald-8636]] |
| Wädenswil | ZH | 8820 / 0293 | Zimmerberg | 12/2023 ⚠ | [[marktdaten-gemeinden/zh-waedenswil-8820]] |
| Luzern | LU | 6000 / 1061 | Luzern | 12/2023 ⚠ | [[marktdaten-gemeinden/lu-luzern-6000]] |
| Einsiedeln | SZ | 8840 / 1301 | Einsiedeln | 12/2023 ⚠ | [[marktdaten-gemeinden/sz-einsiedeln-8840]] |

⚠ = Datenstand älter als 18 Monate → vor Anwendung Marktpuls prüfen (T10). **Alle 10
verfügbaren UBS-FS sind nun kompiliert** (Stand 2026-06-14). Zwei Preis-Spannen im Bestand:
**Premium-Seelagen ZH** (Thalwil EFH-Median 15'384, Zollikon noch höher) ↔ **ländliches
Mittelzentrum** (Muri AG 7'978) — Faktor ~2 allein über die Lage; das ist der Vergleichswert-
Befund «Lage als stärkster Treiber» ([[vergleichswert-hedonisch]]) quantifiziert. Zwei
UBS-FS-Generationen: die **ältere** (12/2023–7/2024, Format «Wald/Maur/Thalwil/Muri/Regensdorf/
Luzern/Einsiedeln/Wädenswil», mit Nachbargemeinden-/Regionen-Spektren und Bevölkerung/
Beschäftigung/Steuern auf S. 5-12) und die **neuere** (12/2025, Format «Wangen/Zollikon»).
Spaltenlogik der Quantile ist identisch.

## Lesehilfe (Spaltenlogik UBS-FS)

- **Quantile 10/30/50/70/90 %**: Preisniveau-Bandbreite innerhalb der Gemeinde. Der
  50%-Wert (Median) ist der Referenzwert. 10% = guenstigstes, 90% = teuerstes Segment.
- **Preise EFH/EW in CHF/m²**: bezogen auf Wohnflaeche (Nettowohnflaeche-naehe), nicht
  Grundstueck. **Mieten in CHF/m²/Jahr** (durch 12 fuer Monatsmiete/m²).
- **Baulandpreise** nach Lageklasse Schlecht/Mittel/Top (CHF/m² Land) — statistisch
  ermittelt, Vorsicht bei effektiven Transaktionspreisen unueberbauter Parzellen.
- **Preis-Miet-Verhaeltnis**: Kaufpreis / Jahresmiete; hoeher = teurer relativ zur Miete.
- Farblegende der UBS (hoch/mittel/tief) = Einordnung gegenueber allen CH-Gemeinden.

## UBS-FS-Methodik (aus dem Glossar, S. 13)

- **Quantil-Definition**: «x %-Quantil hat folgende Bedeutung: x % aller ermittelten
  Beobachtungen liegen unter dem angegebenen Wert.» Der 50 %-Wert ist der Median (Referenz).
  Die Box-Darstellung im FS teilt jede Verteilung in fünf Fünftel (0-20/20-40/40-60/60-80/
  80-100 %); die Farbe der Box zeigt, wo die Gemeinde gegenüber allen CH-Gemeinden liegt.
- **Eigenheimpreise** = Nettoangebotspreise in CHF/m² Netto-Hauptnutzfläche; **Mieten** in
  CHF/m² Netto/Jahr (durch 12 für Monatsmiete/m²).
- **Standort-Ratings** werden von Wüest Partner anhand **elf Kriterien** vergeben und
  fünfstufig klassiert (sehr gut bis exzellent / überdurchschnittlich bis gut / unter-
  durchschnittlich bis durchschnittlich / schlecht bis mässig / extrem schlecht bis sehr
  schlecht) — je für EFH / EW / MW / Büro / Verkauf.
- **MS-Region** (mobilité-spatiale-Modell des BFS, 106 Regionen): kleinräumige wirtschaftliche
  Verflechtung — als Vergleichsraum neben Kanton und CH.
- **BFS-Gemeindetypen** (9 Typen): 1 Städtisch grosse Agglom., 2 mittelgrosse, 3 kleine/keine,
  4 Periurban hohe Dichte, 5 mittlere, 6 geringe Dichte, 7 Ländlich Zentrum, 8 zentral gelegen,
  9 peripher. Bestimmt die Vergleichbarkeit zweier Gemeinden mit.
- **Datenquellen je FS**: Preise/Standortratings/Baulandpreise/Angebotsmengen = Wüest Partner;
  Bevölkerung/Bestand/Leerstand/Bauinvestitionen = BFS; Bauland-Zonen = ARE; Steuern = ESTV;
  PLZ = Post. Herausgeber UBS CIO GWM.
