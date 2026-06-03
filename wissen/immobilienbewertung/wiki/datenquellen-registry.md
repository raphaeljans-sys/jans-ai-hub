---
title: Datenquellen-Registry (Markt-, Boden-, Kennwert-Daten)
status: established
last_updated: 2026-06-03
sources: [IMMO-02 UBSFS, IMMO-04 Marktpreise, IMMO-05 Bodenpreise, IMMO-06 Kennwerte]
links: [[vergleichswert-hedonisch]], [[realwert-sachwert]], [[lageklasse-landwertanteil]], [[bewertungsverfahren-ueberblick]]
---

# Datenquellen-Registry

Welche Referenzdaten liegen vor, wie aktuell, wie verwertbar. Basis-Pfad:
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/`. Stand der Beurteilung:
Juni 2026. **Aktualitaetsregel:** alles >18 Monate → ⚠, in `wiki/wissensluecken.md` fuehren.

## Markt-/Vergleichsdaten

| Quelle | Ordner | Inhalt | Stand | Bewertung |
|---|---|---|---|---|
| UBS Real Estate Fact Sheets | `IMMO-02 UBSFS` | Gemeinde-Profile, Preis-/Mietquantile (8 Gemeinden: ZH Waedenswil/Thalwil/Maur/Regensdorf/Wald, LU Luzern, SZ Einsiedeln, AG Muri) | 2212-2411 | gut, aber selektiv + teils ⚠ veraltet |
| Wuest Partner | `IMMO-04 Marktpreise/wuest partner` | Praesentationen, Kostenbenchmarks, Monitoring | 2023-2025 | ⭐ aktuell, Primaerquelle Indizes |
| BFS Baupreisindex | `IMMO-04/bfs.admin.ch` | nationale/regionale Indizes | 2024 | ⭐ aktuell, amtlich |
| Zuerich Stadt | `IMMO-04/Zuerich Stadt` | Wohnbaupreis-Index, Honorare | 2024 | gut (nur ZH Stadt) |
| CRB eBKP-H / OAK | `IMMO-04/crb.ch` | Kostengliederung, Objektkatalog, Spital-Referenzen | OAK 2011, Spital 2021 | Standard, aber ⚠ alt |
| werk-material.online | `IMMO-04/werk-material.online` | Materialpreise nach BKP | 2026 | aktuell |
| comparis / realadvisor / keevalue / immoverkauf24 | `IMMO-04/*` | Inserate, Screenshots, eml | 2023-2024 | qualitativ, meist Screenshots |

## Bodenpreise (`IMMO-05`)

Nur Screenshots je Gemeinde (ZH Waedenswil 2023, Maur 2024, Thalwil 2025, Niederhasli 2025)
+ PROPERTYOWNER + WiMo-Report. **Nicht maschinenlesbar, fragmentarisch.** Keine kantonale/
gemeindescharfe Statistik. → strukturierte Bodenpreis-Quelle aufbauen (Wissensluecke).

## Kennwerte (`IMMO-06`)

| Bereich | Inhalt | Stand | Status |
|---|---|---|---|
| Healthcare | Alters-/Pflegeheim-Kennwerte (Bett, HNF, Umbaukosten 500K/2500K) | 2024-2025 | ⭐ solide |
| Wohnen Baumasse | Flaechenkonzeption Wohnen (aGF/BGF/HNF-Faktoren) | 2025 | ok, knapp |
| Wohnen Ausnuetzungsziffer | — | — | ⚠ LEER |
| Buero | hbre Bueromarkt ZH | 2024 | nur ZH |
| Baupreisteuerung | Immo-Monitoring | 2023-2024 | Screenshots |
| `_Kennwerte Jans.docx` | JANS-interne Kalkulationssammlung | 2025 | wertvoll, DOCX |

## Nutzungsregel

1. Fuer Indizes/Trend: Wuest + BFS (aktuell) vor CRB 2011.
2. Fuer Gemeinde-Marktwert: UBS-FS wenn vorhanden und <18 Mt., sonst Web/Nachbargemeinde.
3. Jeden uebernommenen Kennwert mit **Quelle + Stand** im Output zitieren.
4. Veraltete Quelle nie stillschweigend verwenden — Stand ausweisen, ggf. Aktualisierung anstossen.
