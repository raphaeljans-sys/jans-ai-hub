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
- [ ] **B1** Aktualitaet der Bundeserlasse in PL-02 gegen fedlex pruefen (Datenstand setzen).

## C — Brandschutz
- [ ] **C1** Klaeren, ob ein duenner Verweis-Artikel auf `brandschutz` reicht oder PL-03-
  Spezifika (Brandschutznachweis-Vorlagen) hier referenziert werden sollen.

## D — Energie
- [ ] **D1** Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) mit Datum nachziehen.
- [ ] **D2** U-Wert-Grenzwerte SIA 380/1 als belegte Kennwert-Tabelle.
- [ ] **D3** Pruefen: eigenes Skill `energie-nachweis` rechtfertigt sich?

## E — Connector/Tooling
- [ ] **E1** `geo-zh.mjs` um `--produkt zonenplan|dtm|orthofoto` erweitern (folgt aus A2–A4).
