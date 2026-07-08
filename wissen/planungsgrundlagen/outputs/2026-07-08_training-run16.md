# Training Run 16 — KB Planungsgrundlagen · 2026-07-08

**Schwerpunkt-Domaene:** Kartenportale (PL-01). Rotation waere Brandschutz gewesen — aber PL-03 ist
bis 08/2026 eingefroren (BSV-2026 → 2027, Marschhalt Crans-Montana; Run 15 hielt fest «nur
beobachten, ggf. nichts Neues»). Kartenportale hat Prioritaet und eine konkrete, **testbare** Luecke.
**Connector-Schritt:** ja.

## Ausgangslage / erkannte Luecke

Der Artikel [[kartenportale-baulinien-abstandslinien-zh]] und QUESTIONS-A/K5 nannten explizit die
**einzige offene Restaufgabe**: der Connector liefert Baulinien/Abstandslinien im ±150-m-Fenster,
misst aber **nicht** den **senkrechten Abstand Linie↔Parzellengrenze**. Das ist genau die Zahl, die
der Agent `baulinien-analyst` fuer das oeffentlich-rechtliche Baufeld (Skill `machbarkeit` Typ A / M2)
braucht — bisher haette er sie aus der Kataster-Geometrie selbst ableiten muessen.

## Bearbeitete Fragen (Run 16) — Kartenportale/Connector

1. **Wie bekomme ich die Parzellengeometrie login-frei?** → Derselbe geo.admin-`identify`-Call, der
   schon EGRID/Parzelle liefert, gibt mit **`returnGeometry=true`** das **Parzellenpolygon** zurueck
   (Esri-`rings`, EPSG:2056). Kein zweiter Dienst noetig. Getestet Kat. 3338 → 1 Ring, 15 Punkte.
2. **Wie rechne ich den senkrechten Abstand exakt?** → Punkt-zu-Segment-Distanz (Fusspunkt geklemmt)
   + Segment-Schnitt-Test → **Segment-zu-Segment**, Minimum ueber alle Parzellenring- × Linien-
   Segmentpaare. Planar in EPSG:2056 = metrisch exakt auf lokaler Skala (kein Geodaesie-Overhead).
3. **Ist die Berechnung korrekt (nicht nur plausibel)?** → **Verifier:** unabhaengige Zweitmethode
   (Vertex-zu-Segment beidseitig) an Seuzach Kat. 2304 gerechnet → **29.8 m**, deckungsgleich mit dem
   Connector-Wert 29.8 m.
4. **Was bedeutet `dist_m = 0`?** → Die Linie **beruehrt/schneidet** die Parzelle → baurechtlich
   unmittelbar bindend. Real belegt: **Dorfstrasse 1, Seuzach → 0 m** (Baulinie laeuft durch das
   Strassenrand-Grundstueck).
5. **Reicht das ±150-m-Fenster fuer die Messung?** → Ja, aber **Fenster ≠ Abstand:** das BBOX filtert
   um den *Gebaeudepunkt*, `dist_m` misst ab der *Parzellengrenze*. Eine Linie im Fenster kann daher
   > 150 m von der Grenze weg liegen (Seuzach bis 184 m) — korrekt, kein Fehler.
6. **Werden auch Wald/Gewaesser/Flaeche gemessen?** → Ja, alle fuenf Layer (0158/0152/0153/0150 Linien
   + 0185 Gewaesserraum-Flaeche). Belegt **Wetzikon, Zuercherstrasse 1** (Parz. 6505, BFS 121):
   Gewaesserabstand **43.9 m**, Gewaesserraum-Flaeche 45.9 m.
7. **Bricht `returnGeometry=true` andere Produkte?** → Nein. Regression `--produkt zonenplan` +
   reine EGRID-Aufloesung grün (W/1.5 · BMZ 1.5 · GH 4.5 · ES_II wie gehabt).
8. **Wie speist das M2/`baulinien-analyst`?** → Die Trefferliste ist nach Abstand aufsteigend
   sortiert; die **naechste Baulinie mit `dist_m`** (oder `dist_m=0`) ist unmittelbar der bindende
   Setback-Kandidat — der Agent bekommt die Zahl fertig statt sie zu konstruieren.

## Was geaendert wurde

- **Connector `geo-zh.mjs`** (getestet, nicht ungetestet committet):
  - `identifyParcel`: `returnGeometry=false` → **`true`**, gibt `rings` zurueck.
  - NEU Geometrie-Helfer: `distPointSeg` / `segsIntersect` / `distSegSeg` / `ringsToSegs` /
    `geomToSegs` / `segsDist` (reines JS).
  - `fetchBaulinien(e,n,half,parcelRings)`: je Treffer **`dist_m`**, aufsteigend sortiert, je Layer
    **`<layer>_dist_min_m`** + Flag **`gemessen`**; main reicht `result.parzelle_rings` durch, Log
    zeigt «naechste X m».
- **Wiki** [[kartenportale-baulinien-abstandslinien-zh]]: neuer Abschnitt «Senkrechter Abstand»,
  Benchmark-Tabelle (0/29.8/116.2 m + Wetzikon-Gewaesser), Grenzen (Fenster≠Abstand, COUNT=10),
  Frontmatter (`last_updated` 2026-07-08 + 2 neue Quellen + Backlink Checkliste).
- **Register:** QUESTIONS (A/K5 ✓ + NEU E4 ✓), curriculum (K5-Rest [x] Run 16), INDEX (Baulinien-
  Zeile), `raw/_INGESTED` (Run-16-Zeile), CHANGELOG.

## Quellen (belegt / getestet)

- geo.admin `all/MapServer/identify?...&returnGeometry=true&layers=all:ch.swisstopo-vd.amtliche-vermessung`
  (Parzellenpolygon, EPSG:2056) — Live 2026-07-08.
- OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` Layer 0158/0152/0153/0150/0185 (GeoJSON, LineString/Polygon,
  EPSG:2056) — Live 2026-07-08.
- Connector-Benchmarks 2026-07-08: Langnau Kat. 3338 (EGRID CH879777718909), Seuzach Kat. 2304
  (CH449245777234) + Dorfstrasse 1, Wetzikon Kat. 6505 (CH245295777451, BFS 121).
- Verifikation: eigene Zweitmethoden-Gegenrechnung Seuzach 29.8 m = 29.8 m.

## Naechster Lauf (Run 17)

Rotation → **Energie** (PL-04, Prioritaet). Kandidaten: D5 Typ B/C/D CHF/kWp-Benchmark (Dachziegel/
transparent/Fassade) oder realer KISPI-EVEN-Screenshot-Walkthrough. Alternativ **M2** (machbarkeit-
Anbindung — jetzt mit dem gemessenen Baulinien-Abstand als konkretem Baustein). Kartenportale-Rest
fuer spaeter: `COUNT=10`-Kappung an linienreichen Parzellen absichern (Count/Radius adaptiv) +
proj-Abstandslinien an einem realen Revisionsfall validieren (analog A6 Grundnutzung).
