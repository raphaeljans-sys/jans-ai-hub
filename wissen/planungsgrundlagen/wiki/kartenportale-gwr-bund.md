---
title: GWR-Gebaeudedaten je Parzelle — Baujahr, Volumen, EBF, Waermeerzeuger (Bund)
status: established
last_updated: 2026-07-02
sources:
  - api3.geo.admin.ch (find/identify/SearchServer), Layer ch.bfs.gebaeude_wohnungs_register — Stand 07/2026
  - Merkmalskatalog eidg. GWR v4.2, housing-stat.ch/files/881-2200.pdf, S. 63f. (GVOLNORM/GVOLSCE) — gelesen 2026-07-02
  - Benchmark Connector gwr-bund.mjs — KISPI Lenggstrasse 30 (EGID 302064023) + Giebelweg 12 Langnau a.A. (EGID 57977, EGRID CH879777718909), getestet 2026-07-02
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-grundlagen-checkliste-neue-parzelle]] [[energie-uebersicht]] [[energie-energienachweis-zh-formulare]]
---

# GWR-Gebaeudedaten je Parzelle — Baujahr, Volumen, EBF, Waermeerzeuger

Das eidgenoessische **Gebaeude- und Wohnungsregister (GWR)** ist die amtliche Bestandsdaten-
quelle je Gebaeude: Baujahr, Gebaeudeklasse/-kategorie, Geschosse, Wohnungen, Flaeche/Volumen,
**Energiebezugsflaeche (EBF)** und die **Waermeerzeuger + Energietraeger** fuer Heizung und
Warmwasser. Damit ist es die Startgrundlage fuer **Energienachweis/EVEN**, **Kostenschaetzung**
(Volumen/Kennwert), **Umnutzung/Sanierungsstau** (Baujahr, Heizsystem) und die
**Machbarkeit** im Bestand — das, was der OEREB-Auszug (Zone/Belastungen) NICHT liefert.

Bezug **login-frei** ueber den Geodienst `api3.geo.admin.ch` (Layer
`ch.bfs.gebaeude_wohnungs_register`), im Connector `skills/planungsgrundlagen/connectors/gwr-bund.mjs`
gekapselt. Nr. 6 der M1-Checkliste [[kartenportale-grundlagen-checkliste-neue-parzelle]].

## 1 · Bezugswege (drei Einstiege)

| Einstieg | Befehl | Eindeutigkeit |
|---|---|---|
| **EGID** (Gebaeude-ID) | `node gwr-bund.mjs --egid 302064023` | eindeutig — 1 Gebaeude |
| **Adresse** | `node gwr-bund.mjs --adresse "Lenggstrasse 30 8008 Zürich"` | i.d.R. eindeutig; bei mehreren Gebaeuden am Punkt Liste |
| **EGRID** (Parzelle) | `node gwr-bund.mjs --egrid CH879777718909` | **mehrdeutig** — listet ALLE Gebaeude der Parzelle |

Flags: `--json` (maschinenlesbar), `--out <dir>` (Datensteckbrief .md ablegen), `--quiet`.
Bei mehreren Gebaeuden gibt der Connector die Liste aus und raet **nicht** (Rule
`identifikatoren-verifizieren`) — dann mit dem passenden `--egid` praezisieren.

## 2 · Welche Felder liefert das GWR (planungsrelevant)

- **Identifikation:** EGID, EGRID, Parzelle (`lparz`)+Grundbuchkreis (`lgbkr`), Bezeichnung (`gbez`)
- **Lage:** Adresse, PLZ/Ort, Gemeinde-BFS, Kanton, LV95-Koordinaten (`gkode`/`gkodn`)
- **Gebaeude:** Status (`gstat`), Kategorie (`gkat`), **Klasse** (`gklas`, EUROSTAT — z.B. 1264
  Krankenhaus, 1110 EFH), **Bauperiode** (`gbaup`) + **Baujahr** (`gbauj`/`gbaum`), Abbruchjahr,
  Geschosse oberirdisch (`gastw`), Anzahl Wohnungen (`ganzwhg`), Gebaeudeflaeche (`garea`),
  **Gebaeudevolumen** (`gvol`) inkl. **Norm** (`gvolnorm`) + **Quelle** (`gvolsce`)
- **Energie (Basis EN/EVEN):** **EBF** (`gebf`), Waermeerzeuger + Energietraeger Heizung 1/2
  (`gwaerzh*`/`genh*`) und Warmwasser 1/2 (`gwaerzw*`/`genw*`) je mit Aktualisierungsdatum

**Nicht im oeffentlichen GWR:** die **EPROID** (Bauprojektidentifikator, Entitaet
`constructionWork`) — nur vom fuehrenden Amt (Stadt ZH: AfB / Statistik Stadt Zuerich) beziehbar,
`madd.bfs.admin.ch` / eCH-0206 verlangen Autorisierung. Der Connector gibt sie bewusst nicht aus.

## 3 · Volumen richtig lesen — GVOLNORM & GVOLSCE (Fallgrube!)

Das GWR-Volumen ist **nicht automatisch SIA-416-verlaesslich**. Zwei Metafelder sagen, wie belastbar
`gvol` ist — Codes belegt aus **Merkmalskatalog GWR v4.2, S. 63f.**:

**GVOLNORM — nach welcher Norm gemessen:**

| Code | Bedeutung |
|---|---|
| 961 | SIA-Norm 116 (1952; ~7-15 % kleiner als 416) |
| 962 | SIA-Norm 416 (2003, physikalisch messbares Volumen) |
| 969 | **unbekannt** |

**GVOLSCE — woher der Wert stammt:**

| Code | Quelle | Code | Quelle |
|---|---|---|---|
| 851 | amtliche Vermessung | 858 | Gebaeudeenergieausweis (GEAK) |
| 852 | amtliche Schaetzung | 859 | andere |
| 853 | Gebaeudeversicherung | 869 | Baubewilligung |
| 857 | Eigentuemer/in / Verwaltung | 870 | topografisches Landschaftsmodell (TLM) |
| | | 878 | nicht bestimmbares Volumen (nicht geschlossenes Gebaeude) |

**Konsequenz fuer die Kostenschaetzung:** vor `Volumen × Kennwert` (BKP) immer GVOLNORM prüfen —
bei `961 (SIA 116)` liegt das echte SIA-416-Volumen ~12 % hoeher; bei `969 (unbekannt)` das
Volumen nur als Groessenordnung nehmen und ggf. selbst kubieren. Der Connector dekodiert beide
Felder seit 2026-07-02 im Klartext.

## 4 · Baujahr schlaegt Bauperiode

`gbaup` (Bauperiode, 5-Jahres-Band) und `gbauj` (exaktes Baujahr) koennen sich widersprechen —
dann gilt **`gbauj`**. Benchmark KISPI: Bauperiode `8023 (2016-2020)`, aber Baujahr **2024** —
die Periode ist die alte Projekt-Ersterfassung, das Baujahr die nachgefuehrte Realitaet. Fuer
Sanierungsstau/Restnutzungsdauer immer das exakte Baujahr verwenden, sonst greift man daneben.

## 5 · Benchmarks (getestet 2026-07-02)

**KISPI — Lenggstrasse 30, 8008 Zuerich (EGID 302064023, EGRID CH267999915472, Parz. RI5416):**
Klasse **1264 Krankenhaus**, Kategorie 1060 (ohne Wohnnutzung), Status bestehend, **Baujahr 2024-07**,
5 Geschosse, Gebaeudeflaeche **18'042 m2**, Volumen **362'570 m3** (Norm *unbekannt 969* · Quelle
*Baubewilligung 869*), **EBF 78'834 m2**. Heizung 1 **Waermepumpe · Erdwaermesonde** (Stand
17.05.2023) + Heizung 2 Heizkessel · Gas (Redundanz); WW WP · Erdwaermesonde + zentral gekoppelt · Gas.
→ genau die Basis fuer den KISPI-Energienachweis (EVEN) und Kostenschaetzung.

**Giebelweg 12, 8135 Langnau a.A. (EGRID CH879777718909, Kat. 3338, BFS 136)** — Parzellenabfrage
liefert **2 Gebaeude** (Mehrdeutigkeit korrekt behandelt):
- EGID **57977** Haupthaus: Kategorie 1020 (ausschl. Wohnnutzung), Klasse **1110 EFH (1 Wohnung)**,
  Bauperiode 1919-1945 / **Baujahr 1936**, 2 Geschosse, Gebaeudeflaeche 104 m2, Volumen nicht erfasst;
  Heizung **Heizkessel · Gas** (Stand 23.04.2026), WW zentral gekoppelt · Gas.
- EGID **210237818** Nebenbau (Giebelweg 12.1): Klasse 1274 (sonstige Hochbauten).

Damit ist die M1-End-to-End-Kette (EGRID → OEREB → Zonenplan → Baulinien → Vermessung → DTM/Ortho
→ **GWR** → Behoerden) am Giebelweg-12-Benchmark auch fuer die GWR-Stufe validiert.

## 6 · Wozu im JANS-Workflow

- **Energienachweis / EVEN** ([[energie-energienachweis-zh-formulare]]): Waermeerzeuger/Energietraeger
  + EBF sind der Ist-Stand, gegen den der Nachweis rechnet (KISPI: WP+Erdsonde → EN-Vorpruefung).
- **Kostenschaetzung / grobkosten-onepager:** `gvol` × Kennwert — aber erst nach GVOLNORM-Check (§3).
- **Umnutzung / Ankaufspruefung:** Baujahr + Heizsystem = erster Sanierungsstau-/Dekarbonisierungs-
  Indikator (Gas 1936-EFH → Heizungsersatz absehbar).
- **Machbarkeit im Bestand:** Geschosse/Flaeche/Volumen als Ausgangswert fuer das Delta.

## Offene Punkte
- GKLAS/GKAT/GSTAT-Codelisten im Connector aus Katalog v4.2; bei Umstieg auf **Katalog v5.0**
  (gwr.admin.ch, aktuell) Codes gegenpruefen (bisher stabil, aber nicht verifiziert).
- Wohnungsdaten (EWID-Ebene: Zimmerzahl, Flaeche je Wohnung) liefert der Connector noch nicht —
  bei Bedarf `--wohnungen` ergaenzen (Layer fuehrt die Wohnungs-Sub-Entitaet).
