# QUESTIONS — offene Fragen & Wissensluecken

Offene Punkte, die der Trainings-Loop (alle 2 Tage) abarbeitet. Erledigtes mit ✓ + Datum.

## A — Kartenportale
- [x] **A1** Nicht-ZH-Kantone: OEREB-Service-Endpunkte kartieren (zuerst SZ). ✓ SZ via
  `geo-sz.mjs` / Skill `oereb-schwyz` geloest; `geo-zh.mjs` `OEREB_SERVICE.sz` hinterlegt.
- [x] **A2** Zonenplan-/BZO-Ausschnitt automatisiert beziehen. ✓ **GELOEST 2026-06-16**: nicht
  ueber `wms.zh.ch` (401), sondern ueber den **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` Datensatz
  **0156** `np_gn_zonenflaeche_f` (GeoJSON, login-frei) — liefert Zone (kommunal+kantonal),
  **BMZ/AZ**, Gebaeude-/Firsthoehe, Vollgeschosse, Gewerbeanteil, Rechtsstatus, Festsetzungsdaten;
  + **0154** Empfindlichkeitsstufe Laerm. Connector `--produkt zonenplan`, validiert Langnau
  Kat.3338 (BMZ) + Egg WG60 (AZ) → [[kartenportale-zonenplan-zh]]. **Mehr als der OEREB-PDF.**
  Bundes-Bauzonen `ch.are.bauzonen` PNG (`--produkt bauzonen`) bleibt fuer den Schnellblick.
- [ ] **A6** Projektierter Layer `..._np_gn_zonenflaeche_proj_f` (laufende BZO-Revision/Auflage)
  an einem realen Revisionsfall validieren — fuer den Vorher/Nachher-Vergleich (machbarkeit Typ A).
  (neu 2026-06-16)
- [x] **A3** Hoehenmodell (swissALTI3D) + Orthofoto (SWISSIMAGE) je Parzelle. ✓ 2026-06-10:
  `height`-Service + STAC `swissimage-dop10`/`swissalti3d` validiert, im Connector `--produkt
  height,orthofoto,dtm` (+`--download`) → [[kartenportale-bund-geodaten]].
- [x] **A4** Situationsplan/Grundstueckkataster amtliche Vermessung als Bezugsskript.
  ✓ 2026-06-11: **Geoshop-API Kt. ZH** (`geoservices.zh.ch/geoshopapi/v1`, login-frei,
  offiziell dokumentiert in zh.ch `rest_schnittstelle_ogd_interface.pdf`) via neuem
  Connector `geoshop-zh.mjs` — Produkt 10016 AV-Datenmodell ZH als DXF (Format 25) je
  Gemeinde (COMMUNE/BFS) oder Parzelle (PARCEL/EGRID); asynchrone Bestellung mit Polling +
  Zip-Download (`<bfs>-<gemeinde>-gds.dxf` + Lieferschein). **DWG existiert im Shop nicht**
  — DXF ist das CAD-Austauschformat. Alternative geodienste.ch: INTERLIS ganzer Kanton
  direkt (`geodienste.ch/downloads/interlis/av/ZH/av_ZH_lv95.zip`); DXF-GEOBAU dort nur via
  Rails-Formular (max 5 Grundstuecke, CSRF) — nicht automatisierungstauglich.
  → [[kartenportale-geoportale-uebersicht]]
- [ ] **A5** Eigentumsabfrage ObjektwesenZH per EGRID: Ablauf + ob automatisierbar.

## B — Recht & Norm
- [~] **B1** Aktualitaet der Bundeserlasse in PL-02 gegen fedlex pruefen (Datenstand setzen).
  ✓ Teil-erledigt 2026-06-08: fedlex-Bezugsschema belegt; **RPG 2 in Kraft 01.01./01.07.2026**
  (Ordner-PDF 700/700.1 veraltet), **EnG SR 730.0 Stand 01.01.2026**. Offen: restliche `01_Bund`-
  SR (451/NHG, 814.20/GSchG, 814.41/LSV, 151.3/BehiG) je Stand-Datum nachziehen.
- [ ] **B2** ZH-Umsetzung **RPG 2** (PBG-/BZO-Folgen) belegt erfassen — verlinkt Skill `baurecht`.
  (neu 2026-06-08; zh.ch "Umsetzung RPG 2")
- [ ] **B3** `06_Richtlinien` (Behoerden-Richtlinien ZH/Stadt ZH, Minergie, GVZ, BfU) als
  Wegweiser-Block ergaenzen, wenn ein Projekt sie braucht. (neu 2026-06-08)

## C — Brandschutz
- [ ] **C1** Klaeren, ob ein duenner Verweis-Artikel auf `brandschutz` reicht oder PL-03-
  Spezifika (Brandschutznachweis-Vorlagen) hier referenziert werden sollen.
- [x] **C2 / E6** Brandschutz/Naturgefahren **Solaranlagen** (Swissolar-STP zu VKF-BSM 2001-15).
  ✓ 2026-06-18: eigener Artikel `[[energie-pv-brandschutz]]` — Einbauarten, oberste Schicht
  (Glas/Folie ≤1.5 mm RF1), Brandmauer-Uebergang (aufgesetzt 1.0 m bzw. +0.3 m; REFH-Ausnahme),
  RWA-Abstand (Lichtraumprofil), Feuerwehr-Kennzeichnung + Einsatzplan **≥30 kW**, Naturgefahren
  SIA 261/261-1, DC bleibt unter Spannung. Solar-spezifisch, kein Doppel zu Skill `brandschutz`.

## D — Energie
- [~] **D1** Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) mit Datum nachziehen. ✓ Stand gesetzt
  2026-06-06 (EnerG seit 1.9.2022/MuKEn 2014; MuKEn 2025 EnDK 08/2025, ZH-Umsetzung offen) —
  bei konkreter ZH-Fassung weiter verifizieren. **Update 2026-06-12:** Vollzug seit 01.01.2026
  ueber Plattform **EVEN** (`energievollzug.ch`), PDF EN-101…EN-141 entfallen → siehe D4.
  **Update 2026-06-18:** MuKEn 2025 Inhalte belegt (graue Energie / rein erneuerbare Waerme /
  mehr Eigenstrom; Umsetzung 2025–2030), **ZH-Ueberfuehrung weiterhin ausstehend** (endk.ch /
  energiehub-gebaeude.ch) → bei ZH-Gesetzespublikation in `[[recht-norm-quellenlandkarte]]`
  + Energie-Artikel nachziehen.
- [x] **D2** U-Wert-Grenzwerte SIA 380/1 als belegte Kennwert-Tabelle. ✓ 2026-06-06 — belegt in
  KB `wissen/energie/` (`[[u-werte-grenzwerte-ch]]`); planungsgrundlagen verlinkt statt dupliziert.
- [ ] **D3** Pruefen: eigenes Skill `energie-nachweis` rechtfertigt sich?
- [x] **D4** EN-ZH **Fachformular-Liste** je Fachbereich (Inhalt der einzelnen Energie-Beilagen)
  belegt erfassen. ✓ 2026-06-12: vollstaendige Liste EN-101a…EN-141 + S/LN-1 mit Inhalt &
  Rechtsbezug (EN-ZH S.2-4), Detail EN-105/EN-110-ZH, EVEN-Umstellung 01.01.2026 →
  `[[energie-energienachweis-zh-formulare]]`. Real verwoben: 2619-KISPI (UGZ II.8.a/b/c).
- [~] **D5** Aktuellere JANS-PV-Projekte als Ertrags-/Kosten-Benchmark je Typ A–E (ewzWHH ist
  2019) — Bandbreite CHF/kWp und kWh/kWp nachziehen. (neu 2026-06-06) ✓ **teil 2026-06-18:**
  Benchmark-Tabelle in `[[energie-pv-eignung-typenwahl]]` §3 — **Typ A** Indach-Tile Reckholdern/
  Einsiedeln (7.9 kWp, 981 kWh/kWp, ~7'370 CHF/kWp, SolarApp 2024), **Typ E** MFH Basel (59.93 kWp,
  852 kWh/kWp, ~2'255 CHF/kWp, SolarApp 2022), Flachdach ewzWHH 2019. Ertragsband **~850–980
  kWh/kWp**; CHF/kWp typabhaengig **~2'000–7'400**. **Offen Typ B/C/D** (Dachziegel/transparent/
  Fassade) als belegter CHF-Benchmark; SolarApp = Vorprojekt-Schaetzung, an Schlussabrechnung
  verifizieren.
- [ ] **D6** EVEN-Bedienung (Maskenfuehrung, Rollen Planer/Bauherr/Behoerde, Beilagen-Upload) am
  realen KISPI-Fall dokumentieren, sobald der Nachweis dort gefuehrt ist. (neu 2026-06-12)

## E — Connector/Tooling
- [x] **E1** `geo-zh.mjs` um `--produkt` erweitern. ✓ 2026-06-10: `--produkt
  height,orthofoto,dtm,bauzonen` + `--download` implementiert, end-to-end an Kat. 3338 getestet
  (graceful skip bei EGRID-only ohne Koordinate). → [[kartenportale-bund-geodaten]].
- [x] **E2** `--produkt zonenplan` (kommunale ZH-Grundnutzung). ✓ 2026-06-16 implementiert &
  getestet: nicht via wms.zh.ch (401) sondern OGD-WFS 0156/0154; mappt BMZ- **und** AZ-System,
  GeoJSON-Ablage mit `--out`. Benchmarks Langnau + Egg → [[kartenportale-zonenplan-zh]].
- [ ] **E3** STAC-bbox-Radius adaptiv (grosse Parzellen → mehrere Nachbarkacheln einsammeln statt
  fixem ~0.0008-Grad-Fenster). (neu 2026-06-10)
