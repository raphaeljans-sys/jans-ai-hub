---
title: U-Werte & Heizwaermebedarf — Grenzwerte Schweiz
status: established
last_updated: 2026-07-12
sources: [destillate/enfk-en-102-waermeschutz-2018.md, destillate/enfk-en-02-waermeschutz-2013.md, destillate/sia-380-1-heizwaermebedarf-berechnung.md, destillate/bauphysik-heizwaermebedarf-kennwerte.md, destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md, destillate/waermebrueckenkatalog-bfe-balkonplatte.md, destillate/muken-2025-verabschiedet.md]
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

**Konkretes Beispiel Typ 1 (Balkonplatte), BFE-Waermebrueckenkatalog 2002:** durchbetoniert
(keine thermische Trennung) Ψ 0,6-1,05 W/(m·K) — 2-3x ueber dem Grenzwert 0,30; Stahlkorb-Anschluss
0,20-0,26; Dorn-/Konsolensystem 0,06-0,14 — beide Systeme unter dem Grenzwert. Details/Tabellen
→ `[[waermebrueckenkatalog-bfe-balkonplatte]]` (FAQ F48). ⚠ Katalog-Zahlenbasis 2002/SIA 380/1:2001,
Grenzwert-Groessenordnung gilt weiter, exakter Wert vor Baueingabe an aktueller Norm pruefen.

**Fensteranschluss (Gruppe 4.1):** Ψ 0,08-0,36 W/(m·K) gg. Grenzwert 0,30 — Aussenanschlag mit
Zwischenleibungsdaemmung schneidet klar besser ab als reiner Innenanschlag; Stahlbetonsturz-Malus
bis +0,14 W/(m·K) bei duenner Sturzdaemmung (2 cm), auf +0,02 senkbar mit 6 cm →
`[[waermebrueckenkatalog-bfe-fensteranschluss]]` (FAQ F49).

**Sockel (Gruppe 3.4):** bei **unbeheiztem** Keller meist nahe/unter Grenzwert 0,20; bei
**beheiztem** Keller mit reiner Aussendaemmung eine der groessten Waermebruecken am Gebaeude —
Daemmtiefe unterhalb UK Kellerdecke entscheidet: 20 cm → Ψ 0,61 (~3× Grenzwert), 80 cm → Ψ 0,30
(~1,5×, bleibt trotzdem drueber); erst durchgehende Perimeterdaemmung der ganzen Kellerwand
bringt den Wert in Grenzwertnaehe → `[[waermebrueckenkatalog-bfe-sockel]]` (FAQ F50).

## Heizwaermebedarf Q_H
Formel und Bilanz: `[[sia-380-1-heizwaermebedarf-berechnung]]`
(Q_h = Q_T + Q_V − η_g·(Q_i + Q_s)). Grenzwert je Kategorie: Q_H,li = Q_H,li0 + ΔQ_H,li·(A_th/A_E),
Klima 8,5 °C / Auslegung −8 °C. Werte (kWh/m²) → EN-102 Tab. 5; Kennwerte in MJ/m²·a inkl.
**Gebaeudehuellzahl** und Ziel- vs. Grenzwert → `[[bauphysik-heizwaermebedarf-kennwerte]]`.
Umbau/Umnutzung: Grenzwert = 1,5 × Neubau.

## Gebaeudehuellzahl A_th/A_E (Kompaktheit)
Therm. Huellflaeche je m² EBF. Kleinbauten ~3, kompakte Grossbauten ~0,8 → Verlustflaeche beim
Kleinbau bis 4× groesser. **Kompakt bauen ist die billigste Energiemassnahme.**

## Energiebezugsflaeche EBF (A_E) — der Nenner aller Kennzahlen
EBF (SIA 416/1:2007) = Summe aller Geschossflaechen, deren Nutzung **Beheizen/Klimatisieren**
erfordert, **brutto** gemessen; lichte Raumhoehe < 1,0 m zaehlt nicht. **Dazu** (auch unbeheizt,
falls in der therm. Huelle): HNF, abgeschlossene Treppenhaeuser/Korridore, Sanitaer/Garderoben,
Schaechte/Abstellraeume < 10 m². **Nicht dazu:** Garagen/Fahrzeugflaechen, Schutzraeume,
betriebstechnische Raeume, Abstellraeume (auch wenn beheizt). Wer die EBF falsch abgrenzt, rechnet
Q_H, Minergie-Kennzahl **und** PV-Pflicht (10 W/m² EBF) falsch. Detail → `[[enfk-en-02-waermeschutz-2013]]`.

## ⚠ Versionsabgleich EN-2 (2013, SIA 380/1:2009) ↔ EN-102 (2018)
Zwischen den EnFK-Vollzugshilfen-Ausgaben gibt es Abweichungen — fuer den Nachweis gilt die im
Kanton aktuell verbindliche Ausgabe (ZH heute SIA 380/1:2016 / EVEN):
- **Fenster-Grenzwert Neubau:** EN-2 (2013) **1,3** → EN-102 (2018) **1,0** (verschaerft).
- **Umbau-Heizwaermebedarf Q_h,li:** EN-2 (2013) **1,25 × Neubau** ↔ oben gefuehrt 1,5 × (EN-102 2018);
  vor dem Zitieren konkret gegen die geltende Ausgabe pruefen.
- **Waermebruecke Fensteranschlag Ψ (Typ 5):** EN-2 (2013) **0,10** ↔ 0,15 (EN-102 2018).
Die **Q_h,li-Grundwerte** (Wohnen MFH 55 / EFH 65 / Verwaltung 65 … MJ/m²) sind in beiden Ausgaben identisch.

## Datenstand / Aktualitaet
⚠ Werte SIA 380/1:2009 / EN-102 2018. Kt. ZH operativ ueber EnerG seit **1.9.2022** (MuKEn 2014).
**MuKEn 2025** von der EnDK am **29.08.2025** verabschiedet (Details, Aenderungen ggue. 2014,
Umsetzungshorizont 2025-2030 → `[[muken-2025-verabschiedet]]`), kantonale Umsetzung ZH (Stand
2026-07-12) weiterhin ausstehend → bei konkreten Grenzwert-Zitaten aktuellen ZH-Stand verifizieren.

Siehe auch: `[[minergie-standards]]`, Bauherren-FAQ F3.
