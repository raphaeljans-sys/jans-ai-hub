---
title: Datenquellen-Registry (Markt-, Boden-, Kennwert-Daten)
status: established
last_updated: 2026-07-02
sources: [IMMO-02 UBSFS, IMMO-04 Marktpreise, IMMO-05 Bodenpreise, IMMO-06 Kennwerte (inkl. Healthcare Herosé-Baukredit 2021 + ARTISET KVG 2023, Run 12)]
links: [[vergleichswert-hedonisch]], [[realwert-sachwert]], [[lageklasse-landwertanteil]], [[bewertungsverfahren-ueberblick]]
---

# Datenquellen-Registry

Welche Referenzdaten liegen vor, wie aktuell, wie verwertbar. Basis-Pfad:
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/`. Stand der Beurteilung:
Juni 2026. **Aktualitaetsregel:** alles >18 Monate → ⚠, in `wiki/wissensluecken.md` fuehren.

## Markt-/Vergleichsdaten

| Quelle | Ordner | Inhalt | Stand | Bewertung |
|---|---|---|---|---|
| UBS Real Estate Fact Sheets | `IMMO-02 UBSFS` | Gemeinde-Profile, Preis-/Mietquantile (10 Gemeinden: ZH Waedenswil/Thalwil/Maur/Regensdorf/Wald/**Zollikon**, LU Luzern, SZ Einsiedeln/**Wangen**, AG Muri). **Kompiliert** in `wiki/marktdaten-gemeinden/`: Wangen (SZ) 12/2025, Zollikon (ZH) 12/2025 | 2212-2512 | gut; neueste (Wangen/Zollikon 12/2025) aktuell, aeltere teils ⚠ veraltet |
| UBS Swiss Real Estate Bubble Index | `IMMO-02 UBSFS/srebi-q2-2024-de.pdf` | nationaler Blasenrisiko-Index, regionale Risikokarte | Q2-2024 | Makro-Kontext; ⚠ >18 Mt. → aktualisieren |
| Wuest Partner | `IMMO-04 Marktpreise/wuest partner` | Praesentationen, Kostenbenchmarks, Monitoring | 2023-2025 | ⭐ aktuell, Primaerquelle Indizes |
| BFS Baupreisindex | `IMMO-04/bfs.admin.ch` | nationale/regionale Indizes | 2024 | ⭐ aktuell, amtlich |
| Zuerich Stadt | `IMMO-04/Zuerich Stadt` | Wohnbaupreis-Index, Honorare | 2024 | gut (nur ZH Stadt) |
| CRB eBKP-H / OAK | `IMMO-04/crb.ch` | Kostengliederung, Objektkatalog, Spital-Referenzen | OAK 2011, Spital 2021 | Standard, aber ⚠ alt |
| Popety.io Land-Analyse | (Kundenreport, z.B. via Nova Property) | je Parzelle: EGRID/Zone/Bestand/**Ausnuetzungsreserve** (BMZ/BVm/UeZ)/Lage-Score/Kauf-+Mietpreise | aktuell (pro Report) | ⭐ stark fuer Einzelparzelle; Servitute fehlen |
| werk-material.online | `IMMO-04/werk-material.online` | Materialpreise nach BKP | 2026 | aktuell |
| comparis / realadvisor / keevalue / immoverkauf24 | `IMMO-04/*` | Inserate, Screenshots, eml | 2023-2024 | qualitativ, meist Screenshots |

## Bodenpreise (`IMMO-05`)

Nur Screenshots je Gemeinde (ZH Waedenswil 2023, Maur 2024, Thalwil 2025, Niederhasli 2025)
+ PROPERTYOWNER + WiMo-Report. **Nicht maschinenlesbar, fragmentarisch.** Keine kantonale/
gemeindescharfe Statistik. → strukturierte Bodenpreis-Quelle aufbauen (Wissensluecke).

## Kennwerte (`IMMO-06`)

| Bereich | Inhalt | Stand | Status |
|---|---|---|---|
| Healthcare | Alters-/Pflegeheim-Kennwerte (Bett, HNF, Umbaukosten 500K/2500K); **NEU eingearbeitet (Run 12):** oeffentl. Baukredit-Bericht Pflegeheim Herosé Aarau (13.12.2021 — BKP-Anlagekosten, CHF/m3-GV/m2-GF/Zimmer, 4-Heim-Vergleich, Annuitaets-/Taxenmodell CURAVIVA/BWO) → [[realwert-sachwert]]/[[ertragswert-dcf]]; ARTISET Betriebswirtschaftliche Instrumente KVG (KoRe, 04.2023); noch offen: Obsan-Bericht, SenioResidenz-Geschaeftsbericht | 2021-2025 | ⭐ solide, jetzt mit realem CH-Bewertungsanker |
| Wohnen Baumasse | Flaechenkonzeption Wohnen (aGF/BGF/HNF-Faktoren) | 2025 | ok, knapp |
| Wohnen Ausnuetzungsziffer | — | — | ⚠ LEER |
| Buero | hbre Bueromarkt ZH | 2024 | nur ZH |
| Baupreisteuerung | Immo-Monitoring | 2023-2024 | Screenshots |
| `_Kennwerte Jans.docx` | JANS-interne Kalkulationssammlung | 2025 | wertvoll, DOCX |

## Nutzungsregel

1. Fuer Indizes/Trend: Wuest + BFS (aktuell) vor CRB 2011.
2. Fuer Gemeinde-Marktwert: UBS-FS wenn vorhanden und <18 Mt., sonst Web/Nachbargemeinde.
   Kompilierte Blaetter in `wiki/marktdaten-gemeinden/` zuerst konsultieren.
3. Jeden uebernommenen Kennwert mit **Quelle + Stand** im Output zitieren.
4. Veraltete Quelle nie stillschweigend verwenden — Stand ausweisen, ggf. Aktualisierung anstossen.
