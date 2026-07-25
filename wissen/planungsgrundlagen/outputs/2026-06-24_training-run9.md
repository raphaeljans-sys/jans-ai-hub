# Trainings-Lauf 9 — KB Planungsgrundlagen

- **Datum:** 2026-06-24
- **Schwerpunkt-Domaene:** **Kartenportale (PL-01, Prioritaet)** — per Rotation (Run 8 Brandschutz
  → Run 9 Kartenportale).
- **Connector-Schritt:** **ja** (Kartenportale) — `geo-zh.mjs` um zwei Produkte erweitert + ein
  Robustheits-Feature, alles live getestet.

## Ausgangslage
Run 8 hatte als naechste Schritte A6 (projektierter Zonen-Layer), A5 (ObjektwesenZH) und E3
(STAC-bbox adaptiv) genannt. Dazu kamen die offenen Kartenportale-Lektionen K5 (Baulinien/
Abstandslinien), K8 (Formate-Leitfaden) und K4 (Situationsplan, faktisch via A4 schon geloest).
Schwerpunkt also: das **Baufeld-Beschneidungs-Wissen** komplettieren (Revision + Baulinien) — genau
das, was der Agent `baulinien-analyst` fuer `machbarkeit` Typ A braucht.

## Bearbeitete Selbstfragen (7)
1. **A6 — laeuft an einer Parzelle eine BZO-Revision?** → Ja-Weg gefunden: proj-Layer
   `ms:ogd-0156_arv_basis_np_gn_zonenflaeche_proj_f` ist **kantonsweit aktiv** (Seuzach, Wädenswil,
   Winterthur, Winkel, Regensdorf, Affoltern, Zürich). Traegt Revisions-Metadaten (`rechtsstatus`-
   Phase, `revisionsart_txt`, `auflagedatum`, `genehmigung`, `dokument`-Link auf oerebdocs.zh.ch).
   **Benchmark Seuzach Kirchgasse 2 Kat. 2304:** rechtskraeftig K Kernzone vs. proj
   `laufendeAenderung.Festsetzung` / `Aenderung_Bauordnung_Zonenplan` / Auflage 01.11.2024.
2. **Wie liest sich revart?** → `Aenderung_Bauordnung` = nur BZO-Text (Geometrie gleich, neue
   Dichtewerte stehen im verlinkten Dokument, proj-Attribute teils leer); `Aenderung_Bauordnung_
   Zonenplan` = auch Flaeche/Zone aendert → Vorher/Nachher direkt aus `_f` vs. `_proj_f`.
3. **K5 — wo liegen Baulinien/Abstandslinien?** → OGD-WFS 0158 Verkehrsbaulinie, 0152 Wald-,
   0153 Gewaesserabstand, 0150 Waldgrenze, 0185 Gewaesserraum — alle login-frei als GeoJSON.
4. **K5 — Punktabfrage-Falle?** → Linien liegen **neben** der Parzelle → die ±2-m-Mini-BBOX der
   Grundnutzung greift ins Leere; **±150 m** noetig. Belegt: Langnau 7 Baulinien (±2 m: 0).
5. **K8 — welches Geodaten-Format wofuer?** → 7-Format-Kurzleitfaden (GeoJSON abfragen · DXF in
   CAD · GeoTIFF Bild/Terrain · INTERLIS modellvollstaendig · XYZ/LAZ Punktwolke · LandXML
   Geometer · GeoPackage Container).
6. **A5 — ObjektwesenZH per EGRID automatisierbar?** → **Nein.** Grundbuch-Auskunft nur mit
   Interessennachweis (Art. 970 ZGB), kein anonymer API-/Massenzugriff → manueller Behoerdenweg;
   bleibt `speculative` bis ein offizieller Endpunkt belegt ist.
7. **E3 — STAC-bbox adaptiv?** → Schleife eingebaut (verdoppeln bis Treffer/Max). **Befund:**
   Kacheln ~1 km → Punktfenster trifft fast immer beim ersten Versuch; Verdoppelung ist
   Sicherheitsnetz fuer Kachelgrenzen, am Benchmark nicht ausgeloest, kein Regress.

## Connector geo-zh.mjs — getestet, nicht ungetestet committed
- **NEU `--produkt baulinien`** (Layer-Konstanten `BAULINIE_LAYER`, `fetchBaulinien(e,n,half=150)`):
  `node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --produkt baulinien`
  → `baulinien (±150m): 7 Baulinie · 1 Waldgrenze`. Seuzach → 10 Baulinien. JSON sauber
  (`treffer`, `radius_m`, je Layer Array). `--radius` ueberschreibt das Fenster, `--out` legt
  `Baulinien-ZH_<BFS>_<Parzelle>_<Datum>.json` ab.
- **A6 in `--produkt zonenplan` integriert** (`fetchZonenplan` fragt zusaetzlich proj-Layer,
  `revision_laeuft`+`grundnutzung_proj[]`): Seuzach → `⚠ LAUFENDE REVISION: projektiert K
  (Kernzone) · laufendeAenderung.Festsetzung · Aenderung_Bauordnung_Zonenplan · Auflage 2024-11-01
  · Dok: …`. Langnau (keine Revision) → keine ⚠-Zeile, kein Regress.
- **E3 adaptive STAC-Schleife** im orthofoto/dtm/gebaeude/punktwolke-Zweig; `--radius` setzt den
  Start. orthofoto Langnau weiter 3 Jahrgaenge, dtm 1 Item — kein Regress.
- `node --check` ok; alle Tests gegen Live-Endpunkte (keine Mock-Werte).

## Geaendert
- **NEU** `wiki/kartenportale-baulinien-abstandslinien-zh.md` (**established**) — Layer-Tabelle,
  ±150-m-Abfrage, Connector, Benchmarks Langnau/Seuzach, Grenzen.
- `wiki/kartenportale-zonenplan-zh.md`: neuer Abschnitt **A6 — Laufende Revision erkennen**
  (Metadaten-Tabelle, Lese-Hinweis revart, Seuzach-Benchmark); proj-Layer von `emerging` auf
  **validiert** gehoben; Benchmark + sources ergaenzt.
- `wiki/kartenportale-geoportale-uebersicht.md`: Baulinien-Block durch Verweis auf neuen Artikel
  ersetzt (kein Doppel); **Geodaten-Formate-Kurzleitfaden (K8)** ergaenzt; A5 belegt (manueller
  Weg); OGD-WFS-Zeile erweitert; last_updated 2026-06-24.
- `wiki/INDEX.md`: neuer Baulinien-Artikel + A6-/K8-Hinweise.
- `wiki/QUESTIONS.md`: A6 ✓, K5 ✓, K8 ✓, E3 ✓, A5 `[~]` (manueller Grundbuchweg, speculative).
- `training/curriculum.md`: K4/K5/K8 ✓ (+ A6-Zeile), K6 `[~]`.
- `raw/_INGESTED.md`: PL-01 Run9-Zeilen (proj-Grundnutzung + Baulinien-Layer, Seuzach getestet).
- `connectors/geo-zh.mjs` + `connectors/README.md`: neue Produkte/Flags dokumentiert.

## Belegte Kernfakten (neu)
- **A6** proj-Layer 0156_proj liefert die laufende Revision samt OEREB-Dokument-Link — der
  schnellste Weg, eine BZO-Revision an einer Parzelle zu erkennen (Vorher/Nachher machbarkeit Typ A).
- **K5** Baulinien/Abstandslinien sind login-freier Vektor (0158/0152/0153/0150/0185), aber nur mit
  **groesserem Suchradius** (±150 m) zu treffen — anders als die Grundnutzung.
- **A5** ObjektwesenZH/Grundbuch ist **nicht** anonym automatisierbar (Interessennachweis Art. 970
  ZGB) — Endpunkt-Suche eingestellt, manueller Weg dokumentiert.

## Naechster Lauf
Rotation → **Energie (PL-04)**. Offen: **D5** Typ B/C/D PV-Benchmarks (Dachziegel/transparent/
Fassade) als belegte CHF/kWh-Kennwerte; **D6** EVEN-Bedienung am realen KISPI-Fall, sobald der
Nachweis dort gefuehrt ist; **D3** Pruefung eigenes Skill `energie-nachweis`. Danach Recht/Norm
(ZH-PBG-Fassung RPG 2 bei Publikation), dann Brandschutz (C6 BSV 2026). Kartenportale-Rest:
**M1** Grundlagen-Checkliste «neue Parzelle» als Standard-Output (jetzt mit zonenplan+baulinien+
Revision spruchreif); proj-Abstandslinien + senkrechtes Abstandsmass (Agent `baulinien-analyst`)
bei konkretem Hang/Baulinien-Fall.
