# QUESTIONS — offene Fragen & Wissensluecken

Offene Punkte, die der Trainings-Loop (alle 2 Tage) abarbeitet. Erledigtes mit ✓ + Datum.

## A — Kartenportale
- [x] **A1** Nicht-ZH-Kantone: OEREB-Service-Endpunkte kartieren (zuerst SZ). ✓ SZ via
  `geo-sz.mjs` / Skill `oereb-schwyz` geloest; `geo-zh.mjs` `OEREB_SERVICE.sz` hinterlegt.
- [~] **A2** Zonenplan-/BZO-Ausschnitt automatisiert beziehen. ✓ Teil 2026-06-10: Bundes-Bauzonen
  `ch.are.bauzonen` als WMS-PNG validiert + im Connector (`--produkt bauzonen`). **Offen:**
  rechtsverbindlicher **kommunaler ZH-Zonenplan-WMS** login-frei — `wms.zh.ch` = HTTP 401
  (Referer-/Auth-Schutz), geodienste.ch-Nutzungsplanung-Pfad noch nicht getroffen. Bis dahin:
  Grundnutzung aus dem OEREB-Auszug.
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

## D — Energie
- [~] **D1** Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) mit Datum nachziehen. ✓ Stand gesetzt
  2026-06-06 (EnerG seit 1.9.2022/MuKEn 2014; MuKEn 2025 EnDK 08/2025, ZH-Umsetzung offen) —
  bei konkreter ZH-Fassung weiter verifizieren.
- [x] **D2** U-Wert-Grenzwerte SIA 380/1 als belegte Kennwert-Tabelle. ✓ 2026-06-06 — belegt in
  KB `wissen/energie/` (`[[u-werte-grenzwerte-ch]]`); planungsgrundlagen verlinkt statt dupliziert.
- [ ] **D3** Pruefen: eigenes Skill `energie-nachweis` rechtfertigt sich?
- [ ] **D4** EN-ZH **Fachformular-Liste** je Fachbereich (Inhalt der einzelnen Energie-Beilagen)
  belegt erfassen — naechster Energie-Lauf. (neu 2026-06-06)
- [ ] **D5** Aktuellere JANS-PV-Projekte als Ertrags-/Kosten-Benchmark je Typ A–E (ewzWHH ist
  2019) — Bandbreite CHF/kWp und kWh/kWp nachziehen. (neu 2026-06-06)

## E — Connector/Tooling
- [x] **E1** `geo-zh.mjs` um `--produkt` erweitern. ✓ 2026-06-10: `--produkt
  height,orthofoto,dtm,bauzonen` + `--download` implementiert, end-to-end an Kat. 3338 getestet
  (graceful skip bei EGRID-only ohne Koordinate). → [[kartenportale-bund-geodaten]].
- [ ] **E2** `--produkt zonenplan` (kommunaler ZH-Zonenplan-WMS) — blockiert durch A2 (wms.zh.ch 401).
  (neu 2026-06-10)
- [ ] **E3** STAC-bbox-Radius adaptiv (grosse Parzellen → mehrere Nachbarkacheln einsammeln statt
  fixem ~0.0008-Grad-Fenster). (neu 2026-06-10)
