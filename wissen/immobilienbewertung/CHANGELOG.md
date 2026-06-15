# CHANGELOG — KB Immobilienbewertung

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-06-15 — UBS-FS Langnau am Albis 8135 (12/2025) kompiliert

- **Neu `wiki/marktdaten-gemeinden/zh-langnau-am-albis-8135.md`** — UBS Real Estate Local
  Fact Sheet Langnau am Albis (ZH), 12/2025, Daten 2025-Q3. EFH-Median 12'549 CHF/m²
  (~1.27x Kt. ZH), EW-Median 11'358, Mietmedian 279 CHF/m²/Jahr, Bauland Top 4'451 CHF/m².
  MS Zimmerberg — Faktenbasis fuer **Fall 2621 Giebelweg 12** (FS liegt auch im Studienordner).
- README + INDEX ergaenzt; Zaehler auf **11 kompilierte UBS-FS**.
- Quelldatei in `IMMO - 02 UBSFS/` von doppelter Endung `.pdf.pdf` auf `.pdf` korrigiert.

## 2026-06-15 — Gutachten-Produkt «besser als WP» (Phase 1): Standard + Qualitaetsprofil + Aufnahmeblatt

- **Entscheid Raphael (2 Frage-Runden):** signiertes Experten-Gutachten mit Besichtigung, methodisch
  SVS/SVKG-konform, Datenbasis UBS-FS/Wüest-Benchmarks (aktiv) + Inserate-Proxy, alle 4 Objekttypen
  (Start EFH/EWG am Fall Bahnhofstrasse 27 Wangen), als ausgebauter Skill → DOCX/PDF. Benchmark:
  WP-Hedonic-Beispielbericht Langenthal (9 Seiten, vollständig analysiert).
- **Neu `wiki/svs-svkg-standard.md`** — Gutachten-Aufbau (11 Pflichtteile), Marktwert-Definition,
  Marktwertbereinigungen, Disclaimer/Haftung. **Wording-Regel verankert** (Methode statt SVKG-Titel;
  Dauerregel `rules/auto-verbesserungen.md` 260615).
- **Neu `wiki/qualitaetsprofil-raster.md`** — Standard/Zustand/Mikrolage-Skalen 1–5 aus dem WP-Bericht
  übernommen, aber durch Augenschein gefüllt; Sanierungsstau je Bauteil = Realwert-Abschlag.
- **Neu (Skill) `tools/aufnahmeblatt.md`** — iPhone-taugliches Besichtigungs-Aufnahmeblatt + Foto-Konvention.
- **Neu (Skill) `KONZEPT-WP-UEBERLEGEN.md`** — Pflichtenheft + Gap-Analyse WP vs. JANS + 4-Phasen-Bauplan.
- **SKILL.md** um Sektion «Gutachten-Standard & Besichtigung» ergänzt; INDEX neue Rubrik «Gutachten-Produkt».
- **Phase 2 Generator erledigt (15.06.2026):** `tools/build_gutachten.py` (JSON → DOCX, Titelblatt
  mit grosser Marktwert-Kennzahl, Qualitätsprofil-Balken 1–5, Tabellen, Glossar; venv
  `~/.venvs/jansdocx`, Baukasten `jans_docx.py`). **Pilot Wangen** durchgespielt: aktenbasierter
  Gutachten-Entwurf (4 S., Marktwert Halten 2.6–2.8 Mio) + Aufnahmeblatt-Formular (2 S.) gebaut,
  gerendert, im Projektordner 2622 + AI-Hub-Output abgelegt. Offen: Karten-Block via `geo-zh.mjs`;
  Finalisierung nach Besichtigung 19.06. (Ist-Mieten/GVA/KV) durch `korrektur`.

## 2026-06-14 — Training-Run 4: alle 10 UBS-FS + SREBI + Hedonik-Modellfamilie + JANS-Flächenfaktoren (10 Themen)

- **Alle 10 UBS Fact Sheets kompiliert** (E4/T7 abgeschlossen): 4 neue Gemeinde-Artikel
  `zh-thalwil-8800`, `ag-muri-5630`, `zh-regensdorf-8105`, `lu-luzern-6000` (Quantile EFH/EW/
  Miete/Bauland/Geschäft + Preis-Miet-Verhältnis, alle ⚠ > 18 Mt.) → `marktdaten-gemeinden/`;
  README + INDEX nachgeführt. Befund: Premium-Seelage ZH (Thalwil EFH-Median 15'384) ↔ ländlich
  (Muri AG 7'978) = Faktor ~2 allein über die Lage.
- **Hedonik-Modellfamilie belegt** (T7): Wüest/IAZI/Fahrländer/PriceHubble, Methodenkern
  (Regression, ~70 Kriterien, >20'000 Handänderungen/Jahr, UBS-Modell 1999 mit WP), Einsatz-
  grenze nur EFH/EW → `vergleichswert-hedonisch.md`.
- **UBS SREBI Bubble Index Q2-2024** (T14): Index 0.74 «moderat», 4 Perspektiven (Fundament
  1.73/Dynamik 0.17/Kosten 0.47/Umfeld -0.81), Methodik, regionale Ungleichgewichte (ZH/Genf/
  Lausanne/Zug) → `investorenmarkt-makro.md`.
- **Marktpuls 06.2026** (T10 teilweise): Referenzzinssatz 1.25 % (seit 09.2025), SNB-Leitzins
  0 % → `investorenmarkt-makro.md`. **Büromarkt ZH** (hbre/Savills 2024): Tertiär 500'000→580'000
  bis 2050, Serviced Offices → ebd.
- **JANS-Flächenfaktoren Wohnen** (T8): HNF/Baumasse 0.20, GF/Baumasse 0.33, HNF/GF 0.60 (ganzes
  Gebäude) / 0.75 (Regelgeschoss) + Wohnungsmix-Benchmark, aus Flächenkonzeption Wohnen
  (R. Jans 20.10.2024) → `flaechendefinitionen-sia.md` (Platzhalter «zu verifizieren» ersetzt).
- **Reale JANS-Bewertungsfälle** (T9): Referenz-Benchmark-Register (Thalwil 9568 LB+RW+MA,
  Ebmatingen 3932 LB+RW tief/hoch, Langnau/Wangen/Niederhasli) → `projektstruktur-deliverables.md`.
- Register: `_INGESTED.md`, `curriculum.md` (E4 ✓, E5/E6/E7 teilweise), `wissensluecken.md`
  (T7/T8/T9/T14 ✓, T10 teilweise), `INDEX.md`. Report `outputs/2026-06-14_training-run4.md`.

## 2026-06-12 — Training-Run 3: Mietwert-Korrektur + Gastgewerbe + Hedonik + 4 Marktblätter (10 Themen)

- **Schätzungsanleitung Kap. 5 vollständig erschlossen** (E3 abgeschlossen): Tab. 12
  Nutzflächen + Tab. 13 Raumeinheiten → `flaechendefinitionen-sia.md`; Tab. 14 (Punktesystem
  Wohnlage + Bauweise/Alter/Heizung) + Tab. 15 (Kriterienraster ±9 %) Mietwertberechnung sowie
  Tab. 25-28 Gastgewerbe-Umsatzmiete → `ertragswert-dcf.md` (T13 erledigt).
- **Hedonik-Methodik belegt** (E4/T7 teilweise): WP-Standortreport-Aufbau (Beispiel Langenthal
  21.06.2023 — Quantil-Preisspektren Wohnen/Geschäft, residualmodellierte Baulandpreise,
  Datengrundlagen-Anhang) + UBS-FS-Glossar-Methodik (Quantil-Definition, 11-Kriterien-
  Standort-Rating, BFS-Gemeindetypen, MS-Region, Datenquellen) → `vergleichswert-hedonisch.md`
  (emerging → **established**) + `marktdaten-gemeinden/README.md`.
- **4 neue Gemeinde-Marktblätter** (von 2 auf 6 Gemeinden): `zh-maur-8124` (7/2024),
  `zh-wald-8636` (12/2023, **Healthcare-Standort** 29.7 % Gesundheits-Beschäftigung →
  Projekt 2410), `zh-waedenswil-8820` (12/2023), `sz-einsiedeln-8840` (12/2023) — je
  vollständige Quantil-Tabellen EFH/EW/Miete/Bauland/Geschäft + Preis-Miet-Verhältnis. Alle
  mit ⚠ (Stand > 18 Mt.).
- `ertragswert-dcf.md` status established (Mietwert/Gastro); `INDEX` Statusbumps
  (ertragswert-dcf + vergleichswert-hedonisch → established) + 4 Gemeinden ergänzt.
- Register gepflegt: curriculum (E3 vollständig, E4 teilweise), _INGESTED (Schätzungsanleitung
  vollständig, Hedonik-Report + 6 UBS-FS eingearbeitet), wissensluecken (T13 ✓, T7 teilweise,
  neu T14 SREBI). Report `outputs/2026-06-12_training-run3.md`.

## 2026-06-10 — Training-Run 2: DXMA-Erfolgsfaktoren + Schaetzungsanleitung (10 Themen)

- Quellen vollstaendig eingearbeitet: **DXMA-Erfolgsfaktoren-Folien** (37 S., 06.2023) und
  **Schaetzungsanleitung Kap. 5** (Tabellen-Anhang). Damit ist Modul 4 des Wuest-Curriculums
  geschlossen (E1) und die zentrale Schaetzungs-Tabellenquelle erschlossen (E3).
- `erfolgsfaktoren-wettbewerb.md` neu aufgebaut (emerging → **established**): sechs DXMA-
  Faktoren (Baurecht/Nutzung/Baukosten/Mikrolage/Vermarktung/Bewertung), Aufwertungsgewinn-
  Prinzip («Gewinn liegt im Einkauf», Wissensasymmetrie) + 10 belegte Referenzfaelle,
  **AZ-Optimierungsformel** (UG/DG-Anrechnung, Split-Zone; Breitenstein/Stampfenbach/
  Fabrikstrasse), Baukosten-Effizienz (Pfaeffikon), Verweis A4-Bewertungsblatt.
- `lageklasse-landwertanteil.md` (speculative → **established**): Lageklassenschluessel
  Wohnen/Gewerbe (Tab. 6/7) + vollstaendige Landwertanteil-Tabelle LK→% (Tab. 8) — T5 erfuellt.
- `realwert-sachwert.md`: CHF/m3-Neuwert-Richtwerte Bauklasse I-VI (Tab. 2), BKP-Anteile
  (Tab. 3), Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter Tab. 10,
  Wertminderung Tab. 11) — T6 vollstaendig + T12 erfuellt.
- `residualwertmethode.md`: **DXMA-Marktwertschaetzung auf einem A4-Blatt** (5 Bloecke,
  belegtes Rechenbeispiel) als schlanke Operationalisierung eingearbeitet.
- `nutzungskonzepte.md`: DXMA-Fallbeispiele (MinMax, Ueber-Gaerten/volumenbasiert, Tiny
  Houses, RRR+RRR, performativ, Gotthardstrasse).
- `bewertungsverfahren-ueberblick.md`: Realwert-/Ertragswert-Gewichtung je Objektart
  (Tab. 22, Mittelwertmethode) — T11; `ertragswert-dcf.md`: Kapitalisierungssatz-Aufbau
  B/U/V/A/R (Tab. 21/23).
- Register gepflegt: INDEX, _INGESTED, curriculum (E1 ✓, E3 ✓), wissensluecken (T4/T5/T6/
  T11/T12 erledigt, neue Luecke T13 Mietkorrektur/Gastgewerbe). Report
  `outputs/2026-06-10_training-run2.md`.

## 2026-06-09 — Referenzfall Bahnhofstrasse 27 Wangen SZ bewertet (Compounding)

- Erster vollstaendig bewerteter JANS-Fall in der KB: gemischtes MFH Wangen SZ, Kaufpreispruefung
  3.1 Mio vs. Bankschaetzung 2.8 Mio → Marktwert JANS 2.6–2.8 Mio (3.1 als Renditekauf ~10 % zu hoch).
- Report `outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md` mit uebertragbaren Benchmarks:
  Brutto-Kapitalisierungssatz gemischtes MFH periphere SZ-Gemeinde ~5.0 %; Umbaukennwerte
  ~1'800 (leicht) / ~3'200 (mit Baueingabe) CHF/m² HNF; Honoraransaetze klein-Umbau ~10/15 %;
  Mietansaetze Wangen (Wohnen Altbau ~235–255, Gewerbe ~200 CHF/m²/J).
- `wiki/marktdaten-gemeinden/sz-wangen-8854.md`: "Anwendungshinweis (offen)" → "Referenzfall
  (bewertet)" mit verlinkten Kennwerten.
- Deliverable (A4 PDF im JANS-LB-Stil) im Projektordner AR-03 Studien/2622 + AI-Hub-Output.
- **Nachtrag:** Lageklasse-Befund (ÖREB Parz. 25): Objekt = **«Mittel»** (Bauland 2'702 CHF/m²,
  Bahnhof/zentral + ÖV vs. Laerm/ES III/kein Aussichtsbonus). In Report + Wangen-Marktblatt
  festgehalten; als Infopoint ins A4-Deliverable aufgenommen (Landwert 751×2'702 ≈ 2.03 Mio).

## 2026-06-09 — UBS Fact Sheets Wangen (SZ) + Zollikon (ZH) eingearbeitet

- Zwei neue UBS Real Estate Local Fact Sheets (12/2025, Daten 2025-Q3) aus
  `IMMO - 02 UBSFS` kompiliert und als maschinenlesbare Marktdaten-Blaetter abgelegt:
  - `wiki/marktdaten-gemeinden/sz-wangen-8854.md` (Wangen SZ, BFS 1349) — EFH-Median
    10'690, EW-Median 9'616, Miete-Median 265 CHF/m²/Jahr.
  - `wiki/marktdaten-gemeinden/zh-zollikon-8125.md` (Zollikon ZH, BFS 0161) — EFH-Median
    19'514, EW-Median 20'000, Miete-Median 388 CHF/m²/Jahr.
- Neuer Sammel-Index `wiki/marktdaten-gemeinden/README.md` (Lesehilfe UBS-FS-Spaltenlogik).
- `wiki/INDEX.md` um Sektion "Marktdaten Gemeinden" erweitert.
- `datenquellen-registry.md`: UBS-FS-Zeile auf 10 Gemeinden / Stand 2212-2512 aktualisiert,
  Verweis auf kompilierte Blaetter; **UBS Swiss Real Estate Bubble Index Q2-2024**
  (`srebi-q2-2024-de.pdf`) als Makro-Quelle neu registriert (Status offen).
- `raw/_INGESTED.md`: UBS-FS-Zeile auf "teilweise — Wangen/Zollikon eingearbeitet" gesetzt.
- Im Wangen-Blatt **Anwendungshinweis** zum erwarteten Folgefall *Bahnhofstrasse 27, Wangen
  SZ* (Plausibilisierung Verkaufspreis 3.1 Mio. vs. Bankschaetzung 2.8 Mio.) hinterlegt —
  Bewertung noch nicht durchgefuehrt.

## 2026-06-03 — KB angelegt (Seed aus IMMO-Sammlung)

- KB `immobilienbewertung` erstellt nach Meta-Schema (`wissen/WISSEN-CLAUDE.md`).
- `CLAUDE.md` (KB-Schema, Fokus-Bereiche, Quellen-Hierarchie) geschrieben.
- Struktur `raw/ wiki/ outputs/ training/` angelegt.
- **Seed-Artikel** im `wiki/` aus der ersten Sichtung der Ordner `IMMO - 01` bis
  `IMMO - 06` und der Wuest-Partner-Praesentation "Immobilien entwickeln" (21.06.2023,
  236 Seiten):
  - `bewertungsverfahren-ueberblick` (established)
  - `residualwertmethode` (established)
  - `ertragswert-dcf` (emerging)
  - `vergleichswert-hedonisch` (emerging)
  - `realwert-sachwert` (emerging)
  - `flaechendefinitionen-sia` (established)
  - `lageklasse-landwertanteil` (emerging)
  - `nutzungskonzepte` (emerging)
  - `investorenmarkt-makro` (emerging)
  - `erfolgsfaktoren-wettbewerb` (emerging)
  - `datenquellen-registry` (established)
  - `projektstruktur-deliverables` (established)
- `wiki/INDEX.md` und `wiki/wissensluecken.md` angelegt; 20+ Wissensluecken aus der
  Datenquellen-Pruefung erfasst (veraltete UBS-FS, CRB-OAK 2011, Bodenpreise nur als
  Screenshots, Ausnuetzungsziffer-Ordner leer, Diskontsatz-Herleitung undokumentiert,
  Excel-Residualwert-Logik nicht reverse-engineered).
- `training/PROGRAMM.md` (Lern-Loop alle 2 Tage, 10 Themen/Lauf) und
  `training/curriculum.md` (Lektionsplan aus dem 236-seitigen Wuest-Kurs) angelegt.
- `raw/_INGESTED.md` als Quellen-Register angelegt.

## 2026-06-10
- Referenzfall Bahnhofstrasse 27 Wangen SZ: Bankschaetzung von 2.8 auf **2.9 Mio** korrigiert
  (Quelle: Mail David Chaled 09.06.2026, PS im Thread «Bahnhofstrasse 27»). Kaufpreisempfehlung
  JANS 3.0 Mio ergaenzt. Datei: outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md
- Sitzungspraesentation 11.06.2026 (6 Folien, JANS-CI monochrom) erstellt; Ablage Studie 2622
  (02_Korrespondenz/260611_Sitzung Chaled) + AI Hub Output immobilienbewertung/2622-bahnhofstrasse-27
