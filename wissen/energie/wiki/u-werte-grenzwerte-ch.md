---
title: U-Werte & Heizwaermebedarf — Grenzwerte Schweiz
status: established
last_updated: 2026-06-06
sources: [destillate/enfk-en-102-waermeschutz-2018.md, destillate/sia-380-1-heizwaermebedarf-berechnung.md, destillate/bauphysik-heizwaermebedarf-kennwerte.md, destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md]
links: [[INDEX]], [[BAUHERREN-FAQ]]
---

# U-Werte & Heizwaermebedarf — Grenzwerte Schweiz

Themenartikel zu den verbindlichen Anforderungen des winterlichen Waermeschutzes. Faktenbasis:
EnFK-Vollzugshilfe EN-102 (Dez 2018, SIA 380/1:2009).

## Die zwei Nachweiswege
- **Einzelbauteilnachweis** — feste U-Wert-Grenzwerte je Bauteil. Einfach, aber jede Anforderung
  muss einzeln eingehalten sein.
- **Systemnachweis** — Heizwaermebedarf Q_H ueber die ganze Huelle; U-Werte frei waehlbar,
  solange Q_H,li eingehalten ist. Zwingend, wenn Einzelwerte reissen oder bei Vorhangfassaden /
  Sonnenschutzglas g < 0,3.

## U-Wert-Grenzwerte (W/(m²·K)) — Einzelbauteilnachweis
| Bauteil | Neubau aussen | Neubau unbeheizt/Erdreich | Umbau aussen | Umbau unbeheizt/Erdreich |
|---|---|---|---|---|
| Opak (Dach/Decke/Wand/Boden) | 0,17 | 0,25 | 0,25 | 0,28 |
| Fenster, Fenstertueren | 1,0 | 1,3 | 1,0 | 1,3 |
| Tueren | 1,2 | 1,5 | 1,2 | 1,5 |
| Tore (SIA 343) | 1,7 | 2,0 | 1,7 | 2,0 |
| Storenkasten | 0,50 | 0,50 | 0,50 | 0,50 |

Neue Bauteile beim Umbau (z.B. ein ganz ersetztes Fenster) erfuellen die **Neubau**-Werte.
Quelle/Detail: `[[enfk-en-102-waermeschutz-2018]]`.

## Waermebruecken
Grenzwerte Ψ: Typ 1 (Auskragung) 0,30 · Typ 2/3 (Daemmunterbrechung / Kanten) 0,20 ·
Typ 5 (Fensteranschlag) 0,15 · χ Typ 6 (Punktdurchdringung) 0,30 W/K. Beim Einzelbauteilnachweis
im Umbau ohne Grenzwert, beim Systemnachweis in Q_H einzurechnen.

## Heizwaermebedarf Q_H
Formel und Bilanz: `[[sia-380-1-heizwaermebedarf-berechnung]]`
(Q_h = Q_T + Q_V − η_g·(Q_i + Q_s)). Grenzwert je Kategorie: Q_H,li = Q_H,li0 + ΔQ_H,li·(A_th/A_E),
Klima 8,5 °C / Auslegung −8 °C. Werte (kWh/m²) → EN-102 Tab. 5; Kennwerte in MJ/m²·a inkl.
**Gebaeudehuellzahl** und Ziel- vs. Grenzwert → `[[bauphysik-heizwaermebedarf-kennwerte]]`.
Umbau/Umnutzung: Grenzwert = 1,5 × Neubau.

## Gebaeudehuellzahl A_th/A_E (Kompaktheit)
Therm. Huellflaeche je m² EBF. Kleinbauten ~3, kompakte Grossbauten ~0,8 → Verlustflaeche beim
Kleinbau bis 4× groesser. **Kompakt bauen ist die billigste Energiemassnahme.**

## Datenstand / Aktualitaet
⚠ Werte SIA 380/1:2009 / EN-102 2018. Kt. ZH operativ ueber EnerG seit **1.9.2022** (MuKEn 2014).
**MuKEn 2025** von der EnDK **08/2025** verabschiedet, kantonale Umsetzung ZH (Stand 06/2026)
ausstehend → bei konkreten Grenzwert-Zitaten aktuellen ZH-Stand verifizieren.

Siehe auch: `[[minergie-standards]]`, Bauherren-FAQ F3.
