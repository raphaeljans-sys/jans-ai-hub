# CHANGELOG — KB Planungsgrundlagen

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-06-28 — Training Run 11 (Recht/Norm/PL-02): LRV-ELI vollendet · ZH-RPG-2-Zahlen + Klima-PBG · belegte SZ-Messweisen · SZ-Benchmark Willerzell
- Schwerpunkt **Recht/Norm** (Rotation: Run 10 Energie → Run 11 Recht/Norm). Kein Connector-Schritt.
  Quellen: fedlex.admin.ch (LRV), zh.ch (RPG-2-Umsetzung), Screenshots `PL-02/01_Gesetze/02_Schwyz`,
  reale Baurechtsanalyse `08_Baurechtsanalysen/230207_Willerzell.pdf`.
- **B1 vollendet — LRV-ELI:** 814.318.142.1 = fedlex `cc/1986/208_208_208`; PDF-A Stand **20260101**
  getestet (HTTP 200, 1.5 MB). **ELI-Falle dokumentiert:** ELI-Jahr = AS-Publikation **1986** ≠
  Erlassdatum 1985. Damit ist das SR→fedlex-ELI-Mapping der PL-02-Bundeserlasse **komplett**.
- **B2 vertieft — ZH-RPG-2 in Zahlen:** Stabilisierungswert **40'807 Gebaeude / 2'594 ha** versiegelt
  (Bezug 29.09.2023); Kompensation neue Baute ↔ Rueckbau **≥ 6 m²**; **Abbruchpraemie ZH ab 01.07.2026**
  (bereits erfolgte Rueckbauten nicht entschaedigt); **Bestandesschutz > 30 J direkt seit 01.01.2026**.
  NEU erfasst: parallele ZH-PBG-Revision **«Klimaangepasste Siedlungsentwicklung»** (teils direkt im
  Baubewilligungsverfahren, teils kommunale Nutzungsplanung).
- **R2 vertieft (NEU QUESTIONS B4) — belegte SZ-Mass-Definitionen** aus `02_Schwyz`-Screenshots
  (Stand SRSZ 1.2.2021): **§ 31i GFZ** (ΣGF/aGSF; GF = HNF+NNF+VF+KF+FF), **§ 31g BMZ**, **§ 60
  Gebaeudehoehe** (Fassadenmitte → Dachhaut; GA 50 % GH min 3 m), **Art. 42 Firsthoehe**, **§ 61
  Nebenbauten** (≤ 3.5/4.5 m, 60 m², GA 2.5 m), **§ 62** Dienstbarkeit. Kernbefund: **SZ ist
  IVHB-aligned (GFZ/BMZ), AZ kantonal abgeschafft (RRB 457/2014)**. SZ-Messweisen-Block in
  `recht-norm-quellenlandkarte.md` von Stichwort-Liste zu Mass-Tabelle ausgebaut.
- **R4b — SZ-Benchmark Willerzell/Reckholdern 3301** (Bezirk Einsiedeln) gelesen: dreistufige
  SZ-Quellen-Trias Kanton/Bezirk-Baureglement/QGP; Landhauszone L 0.2 (AZ 0.2, GA 4/8 m, Bauhoehe 6 m,
  GZ 1.5); **Planungs-Trap:** alte Bezirks-Zonen tragen trotz kant. AZ-Abschaffung weiter eine AZ.
  NEU Sektion in `recht-norm-baurechtsanalysen-benchmarks.md`.
- ⚠ Datenstand: SZ-Mass-Def. SRSZ 1.2.2021 (> 18 Mt.) → vor Zitat aktuelle SRSZ-Fassung pruefen.
- Register gepflegt: INDEX, QUESTIONS (B1 ✓ / B2 / B4), curriculum (R2 ✓ / R4 ✓), `_INGESTED.md`
  (4 Run-11-Zeilen), Output `outputs/2026-06-28_training-run11.md`.
- **Naechster Lauf:** Brandschutz (PL-03) — BSV 2026 bei definitiver Publikation nachziehen.

## 2026-06-26 — Training Run 10 (Energie/PL-04): Private Kontrolle Energie ZH + graue-Energie-Planungsgrundlage
- Schwerpunkt **Energie** (Rotation: Run 9 Kartenportale → Run 10 Energie). Kein Connector-Schritt
  (Energie hat kein eigenes Tool). Quellen: PL-04 `_Private Kontrolle` (erstmals eingearbeitet) +
  `_Heizwaermebedarf` (graue Energie) + Minergie-Planerwissen 2023.
- **D7 geloest — NEU `wiki/energie-private-kontrolle-zh.md` (established):** wer den Energienachweis
  ZH unterzeichnet. Belegt aus Merkblatt Baudirektion ZH/AWEL «Liste der Befugten» (Stand **April
  2025**) + **BBV I § 4-7** (LS 700.21). Inhalt: drei Unterschriften (Bauherr Hauptformular § 6 BVV /
  Projekt-Verantw. + **Befugte** technische Formulare § 4 BBV I), **Befugnis-Matrix** Wä/He/Kl/Bl/Lä ↔
  EN-101…141/S/LN, **interkantonale Geltung** (Firmen nur ZH; natuerliche Personen ZH/AR/GL/GR/SZ/SG —
  fuer SZ-Projekte relevant), Minergie-Label entlastet (EN-101…111 entfallen).
- **D8/D1 teil — graue Energie als Planungsgrundlage** in `energie-uebersicht.md`: SIA-2040-Richtwerte
  Wohnen + reales JANS-Oekobilanz-Deliverable **Schlierenweg 31** (ZPF Ingenieure, R. Thalmann,
  28.03.2022; Erstellung inkl. PV 6.0 kg CO₂-eq / 20 kWh / 12'000 UBP pro m²·a, Amortisation graue
  Energie via PV-Ueberschuss < 30 J). **Methodik-Tiefe bewusst in KB `wissen/energie` `[[graue-energie]]`
  belassen — kein Doppel**; Pa.Iv. 20.433 → kommender ZH-Grenzwert vermerkt.
- Querverlinkung gesetzt: `energie-uebersicht` + `energie-energienachweis-zh-formulare` →
  `[[energie-private-kontrolle-zh]]`; INDEX/QUESTIONS/curriculum/_INGESTED nachgefuehrt.
- **Naechster Lauf:** Rotation → **Recht/Norm (PL-02)** (offen: ZH-PBG-Fassung bei RPG-2-Publikation,
  LRV-ELI). Energie-Reste: D5 Typ B/C/D PV-Benchmarks, D6 EVEN-Bedienung am KISPI-Fall, D3 Skill-Frage.

## 2026-06-24 — Training Run 9 (Kartenportale/PL-01): A6 Revision + K5 Baulinien + K8 Formate + E3 (Connector)
- Schwerpunkt **Kartenportale**, **mit Connector-Schritt** — alles live gegen die OGD-Endpunkte
  getestet, nichts ungetestet committed.
- **A6 geloest:** proj-Grundnutzung `0156_proj` kantonsweit aktiv → Connector `--produkt zonenplan`
  meldet jetzt automatisch eine **laufende BZO-Revision** (geplante Zone · Phase · Auflage ·
  Dokument-Link). Benchmark **Seuzach Kat. 2304** (K Kernzone, `Aenderung_Bauordnung_Zonenplan`,
  Auflage 01.11.2024). Vorher/Nachher fuer `machbarkeit` Typ A.
- **K5 geloest:** **NEU** `--produkt baulinien` (OGD-WFS 0158 Verkehrsbaulinie / 0152 Wald- /
  0153 Gewaesserabstand / 0150 Waldgrenze / 0185 Gewaesserraum), **±150-m-Fenster** (Linien neben
  Parzelle), `--radius` ueberschreibt. Benchmarks Langnau (7 Baulinien+Waldgrenze) / Seuzach (10).
  **NEU** `wiki/kartenportale-baulinien-abstandslinien-zh.md` (**established**).
- **K8 geloest:** Geodaten-Formate-Kurzleitfaden (GeoJSON/INTERLIS/DXF/GeoTIFF/XYZ-LAZ/LandXML/
  GeoPackage) in `kartenportale-geoportale-uebersicht.md`.
- **E3 geloest:** STAC-bbox adaptiv (Fenster verdoppeln bei 0 Kacheln bis Max); Befund: Kacheln
  ~1 km → Sicherheitsnetz, am Benchmark nicht ausgeloest, kein Regress.
- **A5 abgeschlossen (negativ):** ObjektwesenZH/Grundbuch nicht anonym automatisierbar
  (Interessennachweis Art. 970 ZGB) → manueller Behoerdenweg, bleibt `speculative`.
- Register: `INDEX.md`, `QUESTIONS.md` (A6/K5/K8/E3 ✓, A5 [~]), `curriculum.md` (K4/K5/K8 ✓),
  `raw/_INGESTED.md` (PL-01 Run9-Zeilen), `connectors/README.md`. Output `outputs/2026-06-24_training-run9.md`.
- **Quellen:** maps.zh.ch/wfs/OGDZHWFS (GetCapabilities + GetFeature, Datensaetze 0156/0156_proj/
  0158/0152/0153/0150/0185, GeoJSON EPSG:2056) — live 2026-06-24.

## 2026-06-22 — Training Run 8 (Brandschutz/PL-03): Wegweiser angelegt (C1/B2/B3 + QSS)
- Schwerpunkt **Brandschutz**, kein Connector-Schritt. PL-03 erstmals systematisch erschlossen
  (war zuvor nur «Verweis auf Skill `brandschutz`»).
- **C1/B1 ENTSCHIEDEN:** schlanker **Wegweiser** statt Doppel — Planungsgrundlagen/Prozess/QSS
  hier, Fach-/Detailarbeit (EI/RF/Brandabschnitte/W3xx/DoP/Ertuechtigung) im Skill `brandschutz`.
- **NEU** `wiki/brandschutz-pl03-wegweiser.md` (**established**): §1 VKF-5-Teil-Struktur ↔
  PL-03-Ordner + Rev. 2017/2022 + **BSV-2026-Stand** (Inkraft-Antrag 03/2027, bis dahin BSV 2015)
  + Online (bsvonline.ch/brandschutznachweis.ch); §2 Brandschutznachweis (Anleitung V.3 A–F,
  wann/Inhalt/Plaene SIA 400, Vorlage MFH-5g-RF1 V.3); §3 **QSS 1–4** (BSR 11-15 Tab. 3.3.1/3.4.1,
  **Healthcare=Beherbergung [a]→QSS 2–3**); §4 RF-Klassifikation-Spickzettel; §5 Abgrenzung.
- Register: `INDEX.md` (PL-03-Eintrag), `QUESTIONS.md` (C1✓/C3✓/C4✓/C5✓, neu C6 BSV 2026),
  `curriculum.md` (B1/B2/B3/B4✓, neu B5), `raw/_INGESTED.md` (PL-03 offen→teilweise, 5 Quellen).
- **Quellen:** PL-03 (Norm 1-15, BSR 11-15/13-15, Anleitung Brandschutznachweis V.3, Merkblatt
  Klassifikation V.2, MB 2003-15) + Web bsvonline.ch/vkg.ch (BSV 2026).

## 2026-06-20 — Training Run 7 (Recht/Norm/PL-02): fedlex-ELI-Mapping (B1) + RPG 2 (B2) + 06_Richtlinien (B3)
- Schwerpunkt **Recht/Norm**, kein Connector-Schritt (aber Tooling-Fund fedlex-Redirect).
- **B1 GELOEST:** SR→fedlex-ELI fuer alle relevanten Bundeserlasse belegt — BehiG `cc/2003/667`,
  NHG `cc/1966/1637_1694_1679` (Aend. AS 2025 429), NHV `cc/1991/249_249_249`, GSchG
  `cc/1992/1860_1860_1860` (Stand 01.08.2025), GSchV `cc/1998/2863_2863_2863`, LSV
  `cc/1987/338_338_338` (Aend. AS 2023 582), RPV `cc/2000/310` (Teilrev. AS 2025 659).
  **NEU** fedlex-Redirect `redirect/rs/<SR>/de` (SR→geltende Fassung); AS-/OC-Fundstelle-Schema;
  LSV≠LRV-Verwechslungshinweis.
- **B2 teil-geloest:** NEU Abschnitt „RPG 2 — Inhalt & ZH-Umsetzung" — Bund-Etappen 01.01./
  01.07.2026, Stabilisierung **max. 2 %** ausserhalb Bauzone (Basis 29.09.2023), Abbruchpraemie,
  RPV-Teilrev. AS 2025 659 (BR 15.10.2025); ZH passt PBG + Richtplan an, **Umsetzung noch in
  Erarbeitung** (Stand 2026-06-20). Quellen are.admin.ch / espace-suisse / uvek / zh.ch.
- **B3 GELOEST:** NEU Abschnitt „06_Richtlinien — Wegweiser" (BfU/Stadt-ZH-Absturz+RFB/AWEL/
  Minergie/GVZ→`brandschutz`/2000-Watt/Lignum/SWKI…), belegt aus dem Ordner.
- Alle in `[[recht-norm-quellenlandkarte]]` (bleibt **established**, last_updated 2026-06-20).
  Register QUESTIONS/curriculum/INDEX/_INGESTED gepflegt. Naechster Lauf → Brandschutz (PL-03, C1).
- Output: `outputs/2026-06-20_training-run7.md`.

## 2026-06-18 — Training Run 6 (Energie/PL-04): Brandschutz-Solar (E6) + PV-Benchmarks (D5) + EN-104
- Schwerpunkt **Energie**, kein Connector-Schritt. Die beiden echten Energie-Restluecken geschlossen.
- **E6 GELOEST:** NEU `wiki/energie-pv-brandschutz.md` (**established**) aus **Swissolar STP V4.00**
  (12/2022, red. 11/2023) zu **VKF-BSM 2001-15** (Rev. 01.01.2022) — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), **Brandmauer-Uebergang** (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  **RWA-Abstand** (Lichtraumprofil), **Feuerwehr/Kennzeichnung ab ≥30 kW**, **Naturgefahren** SIA
  261/261-1 (Hagel HWx, Schnee), Zugaenglichkeit SUVA. Solar-spezifisch, kein Doppel zu Skill
  `brandschutz`. ⚠ DC-Seite bleibt bei Tageslicht unter Spannung.
- **D5 teil-geloest:** Benchmark-Tabelle je Typ in `energie-pv-eignung-typenwahl.md` §3 aus zwei
  aktuellen SolarApp-Vorprojekten — **Indach-Tile** Reckholdern/Einsiedeln SZ 2024 (7.9 kWp,
  981 kWh/kWp, ~7'370 CHF/kWp) + **Aufdach** MFH Basel 2022 (59.93 kWp, 852 kWh/kWp, ~2'255
  CHF/kWp) + Flachdach ewzWHH 2019. Band ~850–980 kWh/kWp; CHF/kWp typabhaengig ~2'000–7'400.
  Offen Typ B/C/D.
- **EN-104** Dimensionierung belegt in `energie-energienachweis-zh-formulare.md`: EBF × 10 W/m²
  (max 30 kW), 8 m²/kW mono / 16 m²/kW Duennschicht, Befreiung/Alternativen; realer Beleg
  Einsiedeln Parz. 3301.
- **MuKEn 2025** Datenstand (Web 18.06.2026): EnDK 08/2025 verabschiedet, Inhalte (graue Energie/
  erneuerbare Waerme/mehr Eigenstrom), ZH-Ueberfuehrung ausstehend — in uebersicht/formulare/
  QUESTIONS/curriculum nachgezogen.
- Register: INDEX (neuer Artikel), QUESTIONS (C2/E6 ✓, D5 ~, D1-Update), curriculum (E6 ✓, E7 ✓
  neu, E5-Update), _INGESTED (4 PL-04-Quellen). Output `outputs/2026-06-18_training-run6.md`.

## 2026-06-16 — Training Run 5 (Kartenportale/PL-01): kommunaler ZH-Zonenplan GELOEST (A2/E2 ✓)
- Schwerpunkt **Kartenportale**, **Connector-Schritt**. Die lange offene Luecke A2/E2
  (login-freier kommunaler ZH-Zonenplan/BZO; `wms.zh.ch` = HTTP 401) ist **geloest**: ueber den
  **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` Datensatz **0156** `arv_basis_np_gn_zonenflaeche_f`
  als **GeoJSON, login-frei** — derselbe WFS wie bei den Baulinien (0158).
- Liefert je Zone **mehr als der OEREB-PDF**: kommunale + kantonal harmonisierte Zone, Dichtemass
  (**BMZ** *oder* **AZ** + Vollgeschosse), Gebaeude-/Firsthoehe, Gewerbeanteil, Rechtsstatus,
  Festsetzungs-/Genehmigungsdatum; + Datensatz **0154** Empfindlichkeitsstufe Laerm (ES).
- **Connector `geo-zh.mjs`:** neues Produkt **`--produkt zonenplan`** (Mini-BBOX ±2 m, BMZ- und
  AZ-System gemappt, GeoJSON-Ablage mit `--out`), end-to-end getestet.
- **Benchmarks (2026-06-16):** Langnau a.A. Kat. 3338 (W/1.5→W1, BMZ 1.5, GH 4.5, ES_II, inKraft)
  + AZ-Gemeinde Egg (WG60→WG3, AZ 60/3 VG, ES_III, Revision 2024/25).
- **NEU** `wiki/kartenportale-zonenplan-zh.md` (established); bund-geodaten + geoportale-uebersicht
  + connectors/README aktualisiert; INDEX/QUESTIONS (A2/E2 ✓, neu A6)/curriculum (K2 ✓)/_INGESTED
  gepflegt.

## 2026-06-12 — Training Run 4 (Energie/PL-04): EN-ZH Fachformular-Liste + EVEN (D4 ✓)
- Schwerpunkt **Energie**. Aus den Original-PDF (PL-04/_Formulare Kt. ZH) die **vollstaendige
  EN-Fachformular-Liste** belegt erfasst: EN-101a/b/c · EN-102a/b · EN-103/EN-LCC-ZH/EN-120 ·
  EN-104-ZH · EN-105/EN-110-ZH · EN-111 · EN-112/131/132/133/134/135/141 · S/LN-1 — je mit
  Inhalt, Schwellenwert und Rechtsbezug (EnerG/BBV I/WDV), Quelle EN-ZH-Hauptformular S. 2-4
  (Version Juli 2022). Detail EN-105 (Lueftung, WRG ≥ 70 %, Aug 2017) und EN-110-ZH
  (Kuehlung/Befeuchtung, nur Bestand, Sept 2022) dokumentiert.
- **Datenstand-Update (zentral):** Kt. ZH wickelt den Energienachweis **seit 01.01.2026 ueber die
  Plattform EVEN** (`energievollzug.ch`) ab; EN-101…EN-141 dort digital, PDF nur noch fuer
  Ausnahmen (EN-104-ZH, EN-110-ZH, WTA, Ausfuehrungskontrolle, Lueftung Spezialfaelle). Quelle
  zh.ch/energienachweise (12.06.2026). Erklaert die «EVEN»-Notiz im Projekt 2619-KISPI.
- **NEU** `wiki/energie-energienachweis-zh-formulare.md` (established); `energie-uebersicht.md`
  auf EVEN umgestellt; INDEX/QUESTIONS (D4 ✓, D1-Update, neu D6)/curriculum/_INGESTED gepflegt.
- Reale Verknuepfung: 2619-KISPI (UGZ II.8.a/b/c → EN-ZH/EN-105/EN-110-ZH).

## 2026-06-11 — Baulinien als Vektor: ZH-OGD-WFS inkl. projektierter Linien validiert
- Anfrage Giebelweg 12 Langnau a.A. («genauste/umfangreichste Plattform bis zu geplanten
  Baulinien»): ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` liefert Datensatz 0158 (ARV) **login-frei
  als GeoJSON-Vektoren** — Layer `..._baulinie_l` (rechtskraeftig) und `..._baulinie_proj_l`
  (**projektiert/geplant**). Damit ist die Annahme «geplante Baulinien gibt es nicht als
  Vektoren» fuer Kt. ZH widerlegt; Grenze: Linien im laufenden Festsetzungsverfahren ggf.
  nur bei Gemeinde/Tiefbauamt. Befund Parzelle 3338: alle 5 OEREB-Baulinien-Themen «nicht
  betroffen», projektierte im 400-m-Fenster keine. `kartenportale-geoportale-uebersicht`
  (Checklisten-Eintrag Baulinien) entsprechend ausgebaut.

## 2026-06-11 — Geoshop-Connector: Grundstueckkataster (AV-DXF) automatisiert (A4 ✓)
- **NEU Connector `geoshop-zh.mjs`**: offizieller, login-freier Geodatenshop-Bezug Kt. ZH via
  REST-API `geoservices.zh.ch/geoshopapi/v1` (Doku zh.ch `rest_schnittstelle_ogd_interface.pdf`).
  Bestellung asynchron (POST orders → Polling → Zip-Download); Perimeter je **Gemeinde**
  (COMMUNE/BFS) oder **Parzelle** (PARCEL/EGRID). JANS-Standardfall: Produkt **10016**
  AV-Datenmodell ZH als **DXF (25)** = der bisher manuelle "Grundstueckkataster"-Bezug
  (`<bfs>-<gemeinde>-gds.dxf` + Lieferschein). **DWG bietet der Shop nicht an.**
- Live validiert: Langnau am Albis (BFS 0136), Ablage SharePoint
  `PL - 01 Kartenportale/Grundstueckkataster/Langnau a Albis`.
- geodienste.ch als Alternative kartiert: INTERLIS ganzer Kanton direkt
  (`/downloads/interlis/av/ZH/av_ZH_lv95.zip`); DXF-GEOBAU nur via Formular (max 5 Grundstuecke).
- QUESTIONS **A4 ✓**; `kartenportale-geoportale-uebersicht` um Geoshop-API-Zeile + Checklisten-
  Eintrag ergaenzt; Connector-README erweitert.

## 2026-06-10 — Trainings-Lauf 3: Kartenportale (PL-01) + Connector-Ausbau
- **NEU** `wiki/kartenportale-bund-geodaten.md` (**established**): vier login-freie geo.admin-
  Endpunkte je Parzelle, alle live getestet (Kat. 3338 Langnau a.A. / EGRID CH879777718909):
  **Punkthoehe** swissALTI3D (`/height` → 549.1 m), **Orthofoto** STAC `swissimage-dop10`
  (Jahrgaenge 2019/2022/2025, 0.1+2 m), **DTM** STAC `swissalti3d` (0.5+2 m, +xyz), **Bauzonen CH**
  WMS `ch.are.bauzonen` (PNG). Achsen-Falle dokumentiert: WMS 1.3.0 + EPSG:2056 = BBOX **N,E**.
- **Connector** `geo-zh.mjs`: neues Flag `--produkt height,orthofoto,dtm,bauzonen` (+`--download`),
  `GEO_ADMIN`-Endpunkte, STAC-Asset-Auswahl (kleinste GSD), lon/lat im Geocoding, `coord`/`produkte`
  im JSON. End-to-end getestet inkl. graceful skip bei EGRID-only (kein Crash). README aktualisiert.
- `wiki/kartenportale-geoportale-uebersicht.md`: emerging→**established** (Kernprodukte belegt).
- K2/A2 **teilweise**: harmonisierte Bauzonen geloest; **rechtsverbindlicher kommunaler ZH-
  Zonenplan-WMS offen** (`wms.zh.ch` = HTTP 401) → Grundnutzung bis dahin aus OEREB; QUESTIONS E2.
- Register: INDEX (neuer Artikel), curriculum (K3/K7 [x], K2 [~]), QUESTIONS (A3/A1/E1 ✓, A2 ~,
  neu E2/E3), `_INGESTED.md` (PL-01 + geo.admin). Output: `outputs/2026-06-10_training-run3.md`.

## 2026-06-08 — Trainings-Lauf 2: Recht/Norm (PL-02) vertieft
- `wiki/recht-norm-quellenlandkarte.md`: Status emerging→**established**. Vollstaendige 10-Ordner-
  Karte (01_Gesetze … 10 Laermschutz, Tiefgarage) inkl. ZH-Untergliederung. **SR→fedlex-Tabelle**
  + Bezugsschema: stabile ELI `…/eli/cc/<jahr>/<id>/de` und zitierfaehige datierte PDF-A
  `…/filestore/…/<JJJJMMTT>/de/pdf-a/…` (getestet RPG 20260101). Bestaetigte ELI: RPG
  `cc/1979/1573_1573_1573`, EnG `cc/2017/762`, EnV `cc/2017/763`.
- ⚠ **Datenstand:** RPG 2 in Kraft **01.01. + 01.07.2026** (RPV-Aenderung 15.10.2025 seit 01.01.2026)
  → Ordner-PDF 700/700.1 veraltet; EnG SR 730.0 "Stand 01.01.2026". Quelle: fedlex.admin.ch.
- **NEU** `wiki/recht-norm-baurechtsanalysen-benchmarks.md` (emerging): `08_`-Fallbibliothek als
  Benchmark; **Maur 231024** gelesen → Struktur-Goldstandard Machbarkeitsstudie; 11 Faelle 2010–2023.
- SZ↔ZH-Messweisen (ZH=IVHB / SZ=PBG-Massartikel) + Dispens-BRKE verortet (Tiefe → `baurecht`).
- Register: INDEX (2 PL-02-Artikel), curriculum (R1/R4 [x], R2/R3 [~]), QUESTIONS (B1 ~, neu B2/B3),
  `_INGESTED.md` (PL-02 teilweise + 4 Quellen). Output: `outputs/2026-06-08_training-run2.md`.

## 2026-06-06 — Trainings-Lauf 1: Energie (PL-04) vertieft
- **NEU** `wiki/energie-pv-eignung-typenwahl.md` (**established**): PV-Typenwahl-Entscheidungsbaum
  (A–E), Eignungs-/Ertragswerkzeuge (sonnendach.ch, EnergieSchweiz-Solarrechner Okt 2022,
  uvek-gis, sonnenverlauf, PVSOL), JANS-Benchmark ewzWHH PS 19.36 (2019): ~850 kWh/kWp,
  ~CHF 1'600–2'460/kWp, Lebensdauer 25–30 J, V-Anordnung + Kiesstreifen-Detail.
- `wiki/energie-uebersicht.md`: Status emerging→**established**; **EN-ZH Hauptformular** (ZH-
  Energienachweis) belegt beschrieben (Einreichung DLZ vor Baubeginn, Inhalt/QS-Stufen, Quelle
  endk.ch/zh.ch); U-Wert/Q_H → Verweis auf KB `wissen/energie` (kein Doppel).
- Datenstand MuKEn gesetzt: EnerG ZH seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025,
  ZH-Umsetzung 06/2026 offen.
- Register: INDEX, curriculum (E1–E4 [x]), QUESTIONS (D2 ✓, neu D4/D5), `_INGESTED.md` (3 Quellen).
- Output: `outputs/2026-06-06_training-run1.md`. Naechster Lauf: Recht/Norm (PL-02).

## 2026-06-05 — KB angelegt (Seed aus den vier PL-Ordnern)
- KB-Geruest erstellt: `CLAUDE.md`, `raw/_INGESTED.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `training/PROGRAMM.md`, `training/curriculum.md`, `outputs/`.
- Vier Seed-Artikel angelegt (je Domaene einer):
  - `wiki/kartenportale-oereb-egrid-bezug.md` — **established**: validierte Kette
    Adresse→Koordinate→EGRID→OEREB-PDF (Kt. ZH), inkl. realem Beleg Giebelweg 12
    (EGRID CH879777718909, Parz. 3338, BFS 136).
  - `wiki/kartenportale-geoportale-uebersicht.md` — emerging: welches Portal liefert was.
  - `wiki/recht-norm-quellenlandkarte.md` — emerging: Wegweiser in PL-02, verlinkt `[[baurecht]]`.
  - `wiki/energie-uebersicht.md` — emerging: PV-Typen, U-Wert/SIA 380-1, Energienachweis ZH.
- Quelle des OEREB-Bezugswegs: Fachstelle GIS Kt. ZH (Hannah Gies), kein Login noetig.
