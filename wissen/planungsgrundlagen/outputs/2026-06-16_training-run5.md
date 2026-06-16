# Trainings-Lauf 5 — KB Planungsgrundlagen

- **Datum:** 2026-06-16
- **Schwerpunkt-Domaene:** **Kartenportale (PL-01)** — Prioritaet, per Rotation (Run 4 war
  Energie). Bewusst Kartenportale gewaehlt, weil hier der **harte offene Brocken A2/E2**
  (login-freier kommunaler ZH-Zonenplan) lag und der **Connector-Schritt** nur fuer diese
  Domaene gilt.
- **Connector-Schritt:** **ja** — `geo-zh.mjs` um `--produkt zonenplan` erweitert + live getestet.

## Ausgangslage
Seit Run 3/4 war A2/E2 die letzte echte Kartenportale-Luecke: die rechtsverbindliche
**kommunale Grundnutzung (Zonenplan/BZO)** war nur als PDF-Text im OEREB-Auszug greifbar; der
detaillierte ZH-Zonenplan-WMS `wms.zh.ch` antwortet mit **HTTP 401** (Referer-/Auth-Schutz).
Damit fehlte der Studien-Pipeline (`machbarkeit` Typ A, `behoerden-vorabklaerung`) die maschinen-
lesbare Zone mit Dichtemass/Hoehen.

## Bearbeitete Selbstfragen (curriculum/QUESTIONS)
1. **K2/A2 — Wie bezieht man Zone/BZO einer ZH-Parzelle login-frei?** → **GELOEST.** Nicht ueber
   wms.zh.ch, sondern ueber denselben **ZH-OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS`, der schon die
   Baulinien (0158) liefert. GetCapabilities → Datensatz **0156** `arv_basis_np_gn_zonenflaeche_f`
   = Grundnutzung. GetFeature als **GeoJSON**, login-/Referer-frei.
2. **Welche Attribute liefert 0156?** → Zone kommunal (`typ_gde_abkuerzung/bezeichnung`) +
   kantonal harmonisiert (`typ_zh_*`), **baumassenziffer_max**, gebaeudehoehe_max, firsthoehe_max,
   gewerbeanteil_max, rechtsstatus, festsetzungs-/genehmigungsdatum, publiziertab. → **mehr als
   der OEREB-PDF.**
3. **Punktgenau oder Flaeche?** → Mini-BBOX **±2 m** am Parzellenpunkt liefert genau **1** Zone;
   ±30 m fing in Langnau die Nachbar-Freihaltezone «Fk» mit. ±2 m als Connector-Default gesetzt.
4. **Funktioniert es auch in AZ-Gemeinden (nicht nur BMZ)?** → **Wichtige Erkenntnis:** AZ-
   Gemeinden tragen statt BMZ die Felder **`ausnuetzungsziffer_max` + `vollgeschosse_max`**
   (Benchmark Egg WG60: AZ 60, 3 VG). Das BMZ-Feld fehlt dann. Connector-Mapping um beide
   Felder erweitert + Log-Ausgabe entscheidet gemeindegerecht (AZ … / BMZ …).
5. **Empfindlichkeitsstufe Laerm (ES) gleich mitnehmen?** → Datensatz **0154**
   `arv_basis_np_ls_festlegung_f` liefert ES_I…ES_IV im selben Aufruf (Langnau: ES_II,
   Egg: ES_III). In `--produkt zonenplan` integriert.
6. **Gibt es einen projektierten/Revisions-Layer?** → Ja, je Layer ein Pendant `..._proj_f`
   (laufende BZO-Revision/Auflage) — fuer Vorher/Nachher in Studien. Als `emerging` notiert,
   noch nicht an realem Revisionsfall validiert (→ neue Frage A6).

## Geaendert
- **Connector `geo-zh.mjs`:** neues Produkt **`--produkt zonenplan`** (Layer 0156 Grundnutzung +
  0154 ES-Laerm, GeoJSON via Mini-BBOX, BMZ- **und** AZ-System gemappt, GeoJSON-Ablage mit
  `--out`). FLAGS-Doku + Produktliste aktualisiert.
- **NEU** `wiki/kartenportale-zonenplan-zh.md` (**established**) — Endpunkt, Attributtabelle,
  BMZ/AZ-Unterscheidung, ES-Laerm, weitere NP-Layer (0154/0155/0158 + `_proj_f`), Connector-
  Aufruf, 2 Benchmarks, Grenzen.
- `wiki/kartenportale-bund-geodaten.md` + `kartenportale-geoportale-uebersicht.md` — A2 als
  geloest markiert, Portal→Produkt-Tabelle um OGD-WFS-Zeile ergaenzt, Querlinks gesetzt.
- `connectors/README.md` — `--produkt zonenplan` dokumentiert, 401-TODO als erledigt markiert.
- Register: `INDEX.md` (neuer Artikel), `QUESTIONS.md` (A2/E2 ✓, neu A6), `curriculum.md`
  (K2 ✓), `raw/_INGESTED.md` (OGD-WFS-Quelle eingearbeitet).

## Belegte Kernfakten (neu)
- ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS`, login-frei, GeoJSON, EPSG:2056 — Nutzungsplanung 0156
  (Grundnutzung), 0154 (ES Laerm), 0155 (ueberlagernd), 0158 (Baulinien).
- Zwei Dichtemass-Systeme: **BMZ** (+Gebaeude-/Firsthoehe) vs. **AZ** (+Vollgeschosse) — je
  nach Gemeinde, das andere Feld null.
- Benchmark Langnau a.A. Kat. 3338 (BFS 136): W/1.5 → W1, BMZ 1.5, GH 4.5, First 7.0,
  Gewerbe 33 %, ES_II, inKraft (festgesetzt 17.03.2005, genehmigt 18.08.2005).
- Benchmark Egg (BFS 192 lt. Datensatz): WG60 → WG3, AZ 60, 3 VG, ES_III, inKraft
  (Revision festgesetzt 02.09.2024, genehmigt 06.08.2025).

## Naechster Lauf
Rotation → **Recht/Norm (PL-02)** oder **Brandschutz (PL-03)** (beide laenger nicht dran), oder
Prioritaet Kartenportale fuer **A5** (Eigentumsabfrage ObjektwesenZH per EGRID) bzw. **A6**
(projektierter Zonen-Layer `_proj_f` an realem Revisionsfall validieren — ideal an einer Parzelle
mit laufender BZO-Revision, z.B. via Egg, dessen Plan gerade revidiert wurde). Connector-Idee:
`--produkt zonenplan,bauzonen` kombinieren und in einem Lauf die machbarkeit-Pipeline mit der
echten Zone speisen (statt OEREB-PDF-Parsing).
</content>
