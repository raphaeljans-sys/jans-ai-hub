# QUESTIONS — offene Fragen & Wissensluecken

Offene Punkte, die der Trainings-Loop (alle 2 Tage) abarbeitet. Erledigtes mit ✓ + Datum.

## A — Kartenportale
- [ ] **A1** Nicht-ZH-Kantone: OEREB-Service-Endpunkte kartieren (zuerst SZ), dann in
  `geo-zh.mjs` (`OEREB_SERVICE`) hinterlegen + validieren.
- [ ] **A2** Zonenplan-/BZO-Ausschnitt automatisiert beziehen (maps.zh.ch Endpunkt finden).
- [ ] **A3** Hoehenmodell (swissALTI3D) + Orthofoto (SWISSIMAGE) Kachel-Download je Parzelle.
- [ ] **A4** Situationsplan amtliche Vermessung (geodienste OGD) als Bezugsskript.
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
- [ ] **E1** `geo-zh.mjs` um `--produkt zonenplan|dtm|orthofoto` erweitern (folgt aus A2–A4).
