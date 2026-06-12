# CHANGELOG — KB Planungsgrundlagen

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

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
