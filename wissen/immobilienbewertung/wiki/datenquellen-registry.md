---
title: Datenquellen-Registry (Markt-, Boden-, Kennwert-Daten)
status: established
last_updated: 2026-08-23
sources: [IMMO-02 UBSFS, IMMO-04 Marktpreise, IMMO-05 Bodenpreise, IMMO-06 Kennwerte (inkl. Healthcare Herosé-Baukredit 2021 + ARTISET KVG 2023, Run 12; JANS-Umbau-Kostenband Spektrumskosten + `_Kennwerte Jans.docx` D8 + `_Kennwerte_Links.docx`, Run 16)]
links: [[vergleichswert-hedonisch]], [[realwert-sachwert]], [[lageklasse-landwertanteil]], [[bewertungsverfahren-ueberblick]]
---

# Datenquellen-Registry

Welche Referenzdaten liegen vor, wie aktuell, wie verwertbar. Basis-Pfad:
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/`. Stand der Beurteilung:
Juni 2026. **Aktualitaetsregel:** alles >18 Monate → ⚠, in `wiki/wissensluecken.md` fuehren.

## Markt-/Vergleichsdaten

| Quelle | Ordner | Inhalt | Stand | Bewertung |
|---|---|---|---|---|
| UBS Real Estate Fact Sheets | `IMMO-02 UBSFS` | Gemeinde-Profile, Preis-/Mietquantile (10 Gemeinden: ZH Waedenswil/Thalwil/Maur/Regensdorf/Wald/**Zollikon**, LU Luzern, SZ Einsiedeln/**Wangen**, AG Muri). **Kompiliert** in `wiki/marktdaten-gemeinden/`: Wangen (SZ) 12/2025, Zollikon (ZH) 12/2025 | 2212-2512 | gut; neueste (Wangen/Zollikon 12/2025) aktuell, aeltere teils ⚠ veraltet. **⚠ WP-Derivat, kein unabhaengiger Gegencheck (Wissens-Chef Run 28, 07.08.2026):** Immobilien- und Baulandpreise, Standortratings, Angebotsmenge/-ziffer, Marktabsorptionspotenzial und Insertionsdauer stammen laut Quellenverzeichnis des LFS (Exemplar Wangen SZ 12/2025, S. 13) von **Wuest Partner**; Preisspektren sind Nettoangebotspreise. Echte Zweitmeinung nur ueber IAZI/CIFI oder die kantonale Handaenderungsstatistik. Belege: `wissen/immobilienbewertung/outputs/2026-08-07_iazi-location-report-vs-ubs-lfs-wp-standortinfo.md`, Einordnung in [[vergleichswert-hedonisch]] |
| UBS Swiss Real Estate Bubble Index (SREBI) | `IMMO-02 UBSFS/srebi-q2-2024-de.pdf` (Ablage) + Web (ubs.com CIO) | nationaler Blasenrisiko-Index, regionale Risikokarte | **Q2-2026 = 0.72 «moderat»** (publ. 06.08.2026; abgelegtes PDF weiterhin Q2-2024) | Makro-Kontext, laufend via Web nachgefuehrt ([[investorenmarkt-makro]]). ⚠ **wird rueckwirkend revidiert** — Q1-2026 zwischen Mai- und August-Publikation von 0.69 auf 0.62 gesenkt; nie ohne Publikationsdatum zitieren, nie Werte aus zwei Quartalsberichten mischen (Marktpuls 13.08.2026). PDF-Primaerquelle nicht frei abrufbar → Werte aus gegengelesener Medienberichterstattung, Status `emerging` |
| Wuest Partner | `IMMO-04 Marktpreise/wuest partner` | Praesentationen, Kostenbenchmarks, Monitoring | 2023-2025 | ⭐ aktuell, Primaerquelle Indizes |
| BFS Baupreisindex (BAP) | `IMMO-04/bfs.admin.ch` + Web (bfs.admin.ch → Preise → Baupreise) | nationale/regionale Indizes, **Hauptresultate nach 10 Bauwerksarten** (Neubau MFH/EFH/Buero/Lagerhalle, Renovation MFH/Buero, Tiefbau) | **April 2026 = 100.6 Total, Basis Okt-2025 = 100** (Erhebung April/Oktober, **Publikation Juni/Dezember**; naechster Stand Dez-2026), primaerverifiziert 23.08.2026 | ⭐ aktuell, amtlich — **je Bauwerksart zitieren, nicht den Totalwert** (Nutzungsregel 7) |
| **BFS Wohnimmobilienpreisindex (IMPI)** | Web (bfs.admin.ch/immobilienpreise; swissstats-Webviewer) | Preisentwicklung **effektiv gehandelter** Wohnobjekte, quartalsweise, national + EFH/ETW + Gemeindetyp (Q4-2019 = 100) | **Q2-2026** (127.7; +0.7 % QoQ, +3.5 % YoY; publ. 30.07.2026) | ⭐⭐ **amtlich und WP-UNABHAENGIG** — die einzige Reihe der KB, die nicht aus der WP-Datenfamilie stammt (aufgenommen Marktpuls 13.08.2026). Deckt nur die **Entwicklung** ab, keine Preisniveaus je Gemeinde. ⚠ wird rueckwirkend revidiert; Quartalswerte divergieren von WP (EFH Q2-2026: IMPI −0.4 % vs. WP +1.5 % QoQ) → Arbeitsregel in [[vergleichswert-hedonisch]] |
| Zuercher Index der Wohnbaupreise (ZIW), Statistik Stadt Zuerich | `IMMO-04/Zuerich Stadt` + Web (`stadt-zuerich.ch/ziw`, Methodenbericht, verkettete Reihe via hev-sz.ch) | Wohnbaupreis-Index Stadt Zuerich, seit **Revision 2025** mit **BKP-Teilindizes** (BKP 1/2/4/5) | **01.04.2026 = 100.6 Total, Basis Okt-2025 = 100, publ. 08.07.2026** (Jahresteuerung +0.9 %; Gebaeude BKP 2 +0.4 %); verkettete 1939er-Reihe bis 01.04.2025 = 1210.4 (Publikationsstand 01.01.2026) | gut (nur Stadt ZH). ⚠ **Kein unabhaengiger Index**: entspricht seit Basisjahr 2020 dem **BFS-Index «Neubau Mehrfamilienhaus» Region Zuerich**, Unterschied nur bei der Gewichtung (Methodenbericht Revision 2025, Juni 2026). ⚠ **Honorare**: seit Revision 2025 **nicht mehr aus KBOB**, sondern mit der BAP-Veraenderungsrate fortgeschrieben — Grund: die KBOB-Werte erschienen zwei Jahre in Folge verspaetet |
| CRB eBKP-H / OAK | `IMMO-04/crb.ch` | Kostengliederung, Objektkatalog, Spital-Referenzen | OAK 2011, Spital 2021 | Standard, aber ⚠ alt |
| Popety.io Land-Analyse | (Kundenreport, z.B. via Nova Property) | je Parzelle: EGRID/Zone/Bestand/**Ausnuetzungsreserve** (BMZ/BVm/UeZ)/Lage-Score/Kauf-+Mietpreise | aktuell (pro Report) | ⭐ stark fuer Einzelparzelle; Servitute fehlen |
| werk-material.online | `IMMO-04/werk-material.online` | Materialpreise nach BKP | 2026 | aktuell |
| comparis / realadvisor / keevalue / immoverkauf24 | `IMMO-04/*` | Inserate, Screenshots, eml | 2023-2024 | qualitativ, meist Screenshots |

## Bodenpreise (`IMMO-05`)

Nur Screenshots je Gemeinde (ZH Waedenswil 2023, Maur 2024, Thalwil 2025, Niederhasli 2025)
+ PROPERTYOWNER + WiMo-Report. **Nicht maschinenlesbar, fragmentarisch.** Keine kantonale/
gemeindescharfe Statistik. → strukturierte Bodenpreis-Quelle aufbauen (Wissensluecke).

**Neu 23.08.2026 — eine amtliche, maschinenlesbare Quelle ist erschlossen (Stadt Zuerich).**

| Quelle | Zugang | Inhalt | Stand | Bewertung |
|---|---|---|---|---|
| **LIMA-Handaenderungsstatistik Stadt Zuerich** | Open Data Zuerich, CSV `BAU514OD5144.csv`, Datensatz `bau_hae_lima_preise_anzahl_hae_art_bebauung_jahr_od5144`, **CC0** — kein Abo, kein Gesuch | Medianpreise + **Fallzahlen** aus **Freihandverkaeufen**, 47 Gebiete (Stadt/Kreise/**Quartiere**) × Jahr × Bebauungsart (EFH/MFH/WHG/uebrige/Nichtwohn/Industrie/unbebaut) × Abgrenzung (ganze Liegenschaft / nur StWE / alle Handaenderungen). Zwei Reihen, darunter **«Preis pro m2 Grundstuecksflaeche abzgl. Versicherungswert» = Bodenpreis-Naeherung** | CSV-Stand **05.02.2026**, Daten **2008-2025**, Aktualisierung jaehrlich; heruntergeladen und ausgewertet 23.08.2026 | ⭐ amtlich, maschinenlesbar, quartierscharf — **aber nur Stadt Zuerich**. Vorbehalte (Fallzahlen auf Quartiersebene, Versicherungswert ohne Alterswertminderung) in [[lageklasse-landwertanteil]] |

Fuer die JANS-Kerngemeinden ausserhalb der Stadt (Seeufer, Bezirk Horgen, Kanton SZ) bleibt
die Luecke **D2** offen und unveraendert hoch priorisiert.

## Kennwerte (`IMMO-06`)

| Bereich | Inhalt | Stand | Status |
|---|---|---|---|
| Healthcare | Alters-/Pflegeheim-Kennwerte (Bett, HNF); Baukredit-Bericht Pflegeheim Herosé Aarau (Run 12), JANS-8-Objekt-Referenzvergleich + SECO/USI-Effizienzstudie (Run 14), SenioResidenz/Obsan/BFS (Run 13); **NEU eingearbeitet (Run 16):** JANS-**Umbau**-Kostenband `Spektrumskosten.docx` + `Umbaukosten 500K.docx` + `Umbaukosten_CHF_2500K.docx` (Spitalumbau CHF/m2 NF 2'000-10'000+ + 2 reale Faelle) → [[realwert-sachwert]] | 2021-2025 | ⭐ solide, Neubau- UND Umbaukennwerte belegt |
| Wohnen Baumasse | Flaechenkonzeption Wohnen (aGF/BGF/HNF-Faktoren) | 2025 | ok, knapp |
| Wohnen Ausnuetzungsziffer | — | — | ⚠ LEER |
| Buero | hbre Bueromarkt ZH | 2024 | nur ZH |
| Baupreisteuerung | Immo-Monitoring | 2023-2024 | Screenshots |
| `_Kennwerte Jans.docx` | JANS-interne Kalkulationssammlung — **eingearbeitet (D8, Run 16):** aGF/GF-Faktor 0.8/0.9 → [[flaechendefinitionen-sia]], Wohn-Erstellungskosten-Kennwert EFH/ZFH indexiert (4'485 CHF/m2 GF BKP 1-5 / HNF-Faktor 7'350) + Thalwil-Bohlweg-Rechenbeispiel → [[realwert-sachwert]] | 2025 | ⭐ eingearbeitet |
| `_Kennwerte_Links.docx` | JANS-Quellen-Linkliste (231229): ZH Wohnbaupreisindex, werk-material/CRB, keevalue.ch, BFS Baupreise/Mietwohnungen/Leerwohnungen/LIK, GIS-Browser ZH, comparis-Mashup, SNB-Statistik, Wuest Reports/Immo-Monitoring, immoverkauf24/immomapper | 2023 | Linkverzeichnis, in Nutzungsregel gespiegelt |

## Nutzungsregel

1. Fuer Indizes/Trend: Wuest + BFS (aktuell) vor CRB 2011.
2. Fuer Gemeinde-Marktwert: UBS-FS wenn vorhanden und <18 Mt., sonst Web/Nachbargemeinde.
   Kompilierte Blaetter in `wiki/marktdaten-gemeinden/` zuerst konsultieren.
3. Jeden uebernommenen Kennwert mit **Quelle + Stand** im Output zitieren.
4. Veraltete Quelle nie stillschweigend verwenden — Stand ausweisen, ggf. Aktualisierung anstossen.
5. **Index-Reihen mit Publikationsdatum zitieren, nie nur mit Quartal** (neu 13.08.2026). SREBI,
   IMPI und die WP-Reihen werden **rueckwirkend revidiert**; ein Quartalswert ist ohne die
   Angabe, aus welcher Publikation er stammt, nicht reproduzierbar. Werte aus verschiedenen
   Publikationsstaenden nie in derselben Zeitreihe mischen. Belegter Anlassfall: SREBI Q1-2026
   0.69 (publ. 07.05.2026) → 0.62 (revidiert in der Publikation vom 06.08.2026).
6. **Fuer die Preis-ENTWICKLUNG den amtlichen IMPI als Gegencheck zur WP-Familie ziehen** (neu
   13.08.2026). UBS-FS und WP-Reports sind **dieselbe** Datenquelle (WP-Derivat, Wissens-Chef
   07.08.2026) — zwei uebereinstimmende WP-Zahlen sind keine Bestaetigung. Divergieren IMPI und
   WP, ist die **Bandbreite** die ehrliche Aussage; fuer Trends die YoY-Rate nehmen, nicht den
   Quartalswert ([[vergleichswert-hedonisch]]).
7. **Bau-Teuerung immer mit der passenden Bauwerksart indexieren, nie mit dem Totalwert** (neu
   23.08.2026, Vertiefungslauf 2). Der BAP publiziert je Bauwerksart eigene Raten, die im Jahr
   2025/26 um bis zu **1.1 Prozentpunkte** auseinanderliegen: Neubau MFH/EFH **+1.0 %**,
   Renovation MFH **+0.6 %**, Tiefbau **+1.2 %**, Neubau Buerogebaeude **+0.8 %** (und im
   Halbjahr **−0.1 %**). Neuwerte mit dem Neubau-Anker der Nutzung, Umbau-/Sanierungskennwerte
   mit **Renovation** indexieren. Dieselbe Logik innerhalb des ZIW: das **Total** traegt auch
   BKP 1/4/5 und wurde 2025/26 vor allem von BKP 1 (**+2.2 %**) gehoben, ein reiner
   Gebaeude-Neuwert gehoert an den **BKP-2-Teilindex** (+0.4 %). Welcher Anker fuer die
   Tab.-2-Richtwerte gilt, ist offener Entscheid **D15** ([[wissensluecken]]).
