---
title: GWR-Gebäudedaten je Parzelle — Baujahr, Volumen, EBF, Wärmeerzeuger (Bund)
status: established
last_updated: 2026-08-01 (Wartungslauf 02: www.gwr.admin.ch + www.housing-stat.ch (nur mit www.))
sources:
  - api3.geo.admin.ch (find/identify/SearchServer), Layer ch.bfs.gebaeude_wohnungs_register — Stand 07/2026
  - Merkmalskatalog eidg. GWR v4.2, www.housing-stat.ch/files/881-2200.pdf, S. 63f. (GVOLNORM/GVOLSCE), S. 91-94 (WSTWK/WSTAT), S. ~100 (WKCHE) — gelesen 2026-07-02 + 2026-07-13
  - Benchmark Connector gwr-bund.mjs — KISPI Lenggstrasse 30 (EGID 302064023) + Giebelweg 12 Langnau a.A. (EGID 57977, EGRID CH879777718909), getestet 2026-07-02; Albertstrasse 7 Zürich (EGID 150071, 26 Wohnungen), getestet 2026-07-13 (Run 20)
links: [[kartenportale-oereb-egrid-bezug]] [[kartenportale-bund-geodaten]] [[kartenportale-grundlagen-checkliste-neue-parzelle]] [[energie-uebersicht]] [[energie-energienachweis-zh-formulare]]
---

# GWR-Gebäudedaten je Parzelle — Baujahr, Volumen, EBF, Wärmeerzeuger

Das eidgenössische **Gebäude- und Wohnungsregister (GWR)** ist die amtliche Bestandsdaten-
quelle je Gebäude: Baujahr, Gebäudeklasse/-kategorie, Geschosse, Wohnungen, Fläche/Volumen,
**Energiebezugsfläche (EBF)** und die **Wärmeerzeuger + Energieträger** für Heizung und
Warmwasser. Damit ist es die Startgrundlage für **Energienachweis/EVEN**, **Kostenschätzung**
(Volumen/Kennwert), **Umnutzung/Sanierungsstau** (Baujahr, Heizsystem) und die
**Machbarkeit** im Bestand — das, was der OEREB-Auszug (Zone/Belastungen) NICHT liefert.

Bezug **login-frei** über den Geodienst `api3.geo.admin.ch` (Layer
`ch.bfs.gebaeude_wohnungs_register`), im Connector `skills/planungsgrundlagen/connectors/gwr-bund.mjs`
gekapselt. Nr. 6 der M1-Checkliste [[kartenportale-grundlagen-checkliste-neue-parzelle]].

## 1 · Bezugswege (drei Einstiege)

| Einstieg | Befehl | Eindeutigkeit |
|---|---|---|
| **EGID** (Gebäude-ID) | `node gwr-bund.mjs --egid 302064023` | eindeutig — 1 Gebäude |
| **Adresse** | `node gwr-bund.mjs --adresse "Lenggstrasse 30 8008 Zürich"` | i.d.R. eindeutig; bei mehreren Gebäuden am Punkt Liste |
| **EGRID** (Parzelle) | `node gwr-bund.mjs --egrid CH879777718909` | **mehrdeutig** — listet ALLE Gebäude der Parzelle |

Flags: `--json` (maschinenlesbar), `--out <dir>` (Datensteckbrief .md ablegen), `--quiet`.
Bei mehreren Gebäuden gibt der Connector die Liste aus und rät **nicht** (Rule
`identifikatoren-verifizieren`) — dann mit dem passenden `--egid` präzisieren.

## 2 · Welche Felder liefert das GWR (planungsrelevant)

- **Identifikation:** EGID, EGRID, Parzelle (`lparz`)+Grundbuchkreis (`lgbkr`), Bezeichnung (`gbez`)
- **Lage:** Adresse, PLZ/Ort, Gemeinde-BFS, Kanton, LV95-Koordinaten (`gkode`/`gkodn`)
- **Gebäude:** Status (`gstat`), Kategorie (`gkat`), **Klasse** (`gklas`, EUROSTAT — z.B. 1264
  Krankenhaus, 1110 EFH), **Bauperiode** (`gbaup`) + **Baujahr** (`gbauj`/`gbaum`), Abbruchjahr,
  Geschosse oberirdisch (`gastw`), Anzahl Wohnungen (`ganzwhg`), Gebäudefläche (`garea`),
  **Gebäudevolumen** (`gvol`) inkl. **Norm** (`gvolnorm`) + **Quelle** (`gvolsce`)
- **Energie (Basis EN/EVEN):** **EBF** (`gebf`), Wärmeerzeuger + Energieträger Heizung 1/2
  (`gwaerzh*`/`genh*`) und Warmwasser 1/2 (`gwaerzw*`/`genw*`) je mit Aktualisierungsdatum

**Nicht im öffentlichen GWR:** die **EPROID** (Bauprojektidentifikator, Entität
`constructionWork`) — nur vom führenden Amt (Stadt ZH: AfB / Statistik Stadt Zürich) beziehbar,
`madd.bfs.admin.ch` / eCH-0206 verlangen Autorisierung. Der Connector gibt sie bewusst nicht aus.

## 3 · Volumen richtig lesen — GVOLNORM & GVOLSCE (Fallgrube!)

Das GWR-Volumen ist **nicht automatisch SIA-416-verlässlich**. Zwei Metafelder sagen, wie belastbar
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
| 851 | amtliche Vermessung | 858 | Gebäudeenergieausweis (GEAK) |
| 852 | amtliche Schätzung | 859 | andere |
| 853 | Gebäudeversicherung | 869 | Baubewilligung |
| 857 | Eigentümer/in / Verwaltung | 870 | topografisches Landschaftsmodell (TLM) |
| | | 878 | nicht bestimmbares Volumen (nicht geschlossenes Gebäude) |

**Konsequenz für die Kostenschätzung:** vor `Volumen × Kennwert` (BKP) immer GVOLNORM prüfen —
bei `961 (SIA 116)` liegt das echte SIA-416-Volumen ~12 % höher; bei `969 (unbekannt)` das
Volumen nur als Grössenordnung nehmen und ggf. selbst kubieren. Der Connector dekodiert beide
Felder seit 2026-07-02 im Klartext.

## 4 · Baujahr schlägt Bauperiode

`gbaup` (Bauperiode, 5-Jahres-Band) und `gbauj` (exaktes Baujahr) können sich widersprechen —
dann gilt **`gbauj`**. Benchmark KISPI: Bauperiode `8023 (2016-2020)`, aber Baujahr **2024** —
die Periode ist die alte Projekt-Ersterfassung, das Baujahr die nachgeführte Realität. Für
Sanierungsstau/Restnutzungsdauer immer das exakte Baujahr verwenden, sonst greift man daneben.

## 5 · Benchmarks (getestet 2026-07-02)

**KISPI — Lenggstrasse 30, 8008 Zürich (EGID 302064023, EGRID CH267999915472, Parz. RI5416):**
Klasse **1264 Krankenhaus**, Kategorie 1060 (ohne Wohnnutzung), Status bestehend, **Baujahr 2024-07**,
5 Geschosse, Gebäudefläche **18'042 m2**, Volumen **362'570 m3** (Norm *unbekannt 969* · Quelle
*Baubewilligung 869*), **EBF 78'834 m2**. Heizung 1 **Wärmepumpe · Erdwärmesonde** (Stand
17.05.2023) + Heizung 2 Heizkessel · Gas (Redundanz); WW WP · Erdwärmesonde + zentral gekoppelt · Gas.
→ genau die Basis für den KISPI-Energienachweis (EVEN) und Kostenschätzung.

**Giebelweg 12, 8135 Langnau a.A. (EGRID CH879777718909, Kat. 3338, BFS 136)** — Parzellenabfrage
liefert **2 Gebäude** (Mehrdeutigkeit korrekt behandelt):
- EGID **57977** Haupthaus: Kategorie 1020 (ausschl. Wohnnutzung), Klasse **1110 EFH (1 Wohnung)**,
  Bauperiode 1919-1945 / **Baujahr 1936**, 2 Geschosse, Gebäudefläche 104 m2, Volumen nicht erfasst;
  Heizung **Heizkessel · Gas** (Stand 23.04.2026), WW zentral gekoppelt · Gas.
- EGID **210237818** Nebenbau (Giebelweg 12.1): Klasse 1274 (sonstige Hochbauten).

Damit ist die M1-End-to-End-Kette (EGRID → OEREB → Zonenplan → Baulinien → Vermessung → DTM/Ortho
→ **GWR** → Behörden) am Giebelweg-12-Benchmark auch für die GWR-Stufe validiert.

## 6 · Wohnungs-/EWID-Ebene (K9-Rest, gelöst 2026-07-13/Run 20)

Der identify-Treffer auf **Gebäude-Ebene liefert die Wohnungs-Merkmale bereits mit** — als
parallele Arrays (`ewid`, `warea`, `wazim`, `wbauj`, `wkche`, `wmehrg`, `wstat`, `wstwk`, `wbez`,
`whgnr`, `weinr`), ein Element je Wohnung, **kein separater Endpunkt/Layer nötig**. Der Connector
dekodiert sie seit Run 20 in `wohnungen[]` (JSON) bzw. Abschnitt «Wohnungen» im Steckbrief:

| Feld | Merkmal | Codierung |
|---|---|---|
| `ewid` | eidg. Wohnungs-ID | numerisch, Primärschlüssel |
| `whgnr` / `weinr` | administrative / physische Wohnungsnummer | frei/alphanumerisch |
| `wstwk` | Stockwerk | **3100** Parterre/Hochparterre, **3101-3199** = 1.-99. Stock, **3401-3419** = 1.-19. UG (Merkmalskatalog S. 92) |
| `wbez` | Lage auf Stockwerk | Text (Links/Rechts/Mitte o.ae.) |
| `wstat` | Wohnungsstatus | **3001** projektiert, 3002 bewilligt, 3003 im Bau, **3004** bestehend, 3005 nicht nutzbar, 3007 aufgehoben, 3008 nicht realisiert (S. 94) |
| `warea` / `wazim` | Wohnungsfläche m2 / Zimmerzahl | numerisch |
| `wbauj` | Baujahr der Wohnung | numerisch (kann vom Gebäude-Baujahr abweichen bei Umbau) |
| `wkche` | Kocheinrichtung vorhanden | 1=ja/0=nein |
| `wmehrg` | mehrgeschossig (Maisonette) | 1=ja/0=nein |

**Benchmarks (live getestet):**
- **KISPI** (EGID 302064023, Klasse Krankenhaus): `ewid` leer → `wohnungen: []` — korrekt, kein
  Wohngebäude.
- **Giebelweg 12** (EGID 57977, EFH): 1 Wohnung, EWID 1, Parterre, 185 m2, 7 Zimmer, Status
  bestehend, `wmehrg=1` → als Maisonette erkannt.
- **Albertstrasse 7, 8005 Zürich** (EGID 150071, Pensions-/Wohngebaeude, `ganzwhg=26`): 26
  Wohnungen einzeln aufgelöst, EWID 1-26, Flächen 24-80 m2, 1-3 Zimmer, Stockwerke Parterre bis
  5. OG, administrative Nummern (2/1/3/4/101…502) — vollständige Konsistenz Array-Länge ↔
  `ganzwhg`.

Damit ist die K9-Restfrage («Wohnungsdaten liefert der Connector noch nicht») gelöst — **kein
Katalog-v5.0-Wechsel nötig**, die Rohdaten waren immer da, nur ungenutzt. Praxisnutzen: Belegung
Zimmerzahl-/Flaechenmix (Kleinwohnungen vs. Familienwohnungen) für Machbarkeits-/
Bewertungsstudien, ohne Bauplan-Digitalisierung.

## 7 · Wozu im JANS-Workflow

- **Energienachweis / EVEN** ([[energie-energienachweis-zh-formulare]]): Wärmeerzeuger/Energietraeger
  + EBF sind der Ist-Stand, gegen den der Nachweis rechnet (KISPI: WP+Erdsonde → EN-Vorprüfung).
- **Kostenschätzung / grobkosten-onepager:** `gvol` × Kennwert — aber erst nach GVOLNORM-Check (§3).
- **Umnutzung / Ankaufsprüfung:** Baujahr + Heizsystem = erster Sanierungsstau-/Dekarbonisierungs-
  Indikator (Gas 1936-EFH → Heizungsersatz absehbar).
- **Machbarkeit im Bestand:** Geschosse/Flaeche/Volumen als Ausgangswert für das Delta.

## Offene Punkte
- GKLAS/GKAT/GSTAT-Codelisten im Connector aus Katalog v4.2; bei Umstieg auf **Katalog v5.0**
  (www.gwr.admin.ch, aktuell — **nur mit `www.`**, der blanke Name hat keinen A-Record,
  gemessen 01.08.2026) Codes gegenprüfen (bisher stabil, aber nicht verifiziert — Vergleich
  2026-07-13 an JS-Portal www.gwr.admin.ch/catalog technisch nicht möglich, Seite clientseitig
  gerendert; Restaufgabe bleibt offen).
- ~~Wohnungsdaten (EWID-Ebene)~~ **✓ gelöst 2026-07-13 (Run 20)**, siehe §6.
