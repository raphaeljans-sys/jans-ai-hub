# Roh-Beleg: 2001 Haus Deuber, Seehaldenstrasse 22/24, Thalwil — Grobkostenberechnung Grenzbau-Variante, Stand 13.02.2021

Quelle: SharePoint `AR - 03 Studien/2001 Haus Deuber/04_KTV/11_GKB_Grenzbau/
210213_GKB_Grenzbau.pdf`. Projekt: "Sistierte Baueingabe" (laut Ordnerbezeichnung nie zur
Ausführung gekommen). Bauherrschaft Familie Deuber, Thalwil ZH. Extrahiert Run 6 (27.07.2026)
durch Subagent (sonnet), Werte im Hauptkontext verifiziert.

## Objekt

Neubau MFH, 4 Wohnungen (Mix 4-/6-Zimmer), 6 Parkplätze Tiefgarage, 1 Untergeschoss.
Konstruktion Beton/Putz. Standard-Label im Dokument: **"norm, eloquent"** — dieselbe
Formulierung findet sich wortgleich im Grobkostenberechnungs-Dokument von 2304 Reckholdern
(`raw/2304-reckholdern.md`); es handelt sich mutmasslich um einen fixen Vorlagentext des
JANS-eigenen GKB-Tools (Dropdown-Vorgabe), nicht um eine projektspezifische Standard-
Einschätzung. Standard daher hier als **"mittel" (Vorlagen-Label, nicht verifiziert)**
geführt, nicht als eigene Einordnung übernommen.

## Flächen/Volumen (SIA 416)

GF 877 m² · HNF 392 m² · NNF 190 m² · AGF 303 m² · **GV (Gebäudevolumen) = 2'725 m³**.

## Kosten nach eBKP-H (CRB eBKP-H D/12)

Wichtig: Klassifikation ist **eBKP-H**, nicht BKP 2017 (die in dieser KB sonst verwendete
Referenz, `references/bkp-2017/`). Die eBKP-H-Hauptgruppen im Dokument:

| eBKP-H-Gruppe | Bezeichnung | Funktionale Entsprechung BKP 2017 (näherungsweise) |
|---|---|---|
| B | Vorbereitung | ≈ BKP 1 |
| C–G | Konstruktion/Ausbau (Rohbau, Fassade, Dach, Ausbau) | ≈ BKP 2 |
| I | Umgebung | ≈ BKP 4 |
| V | Planung (Honorare) | ≈ Teil BKP 5 |
| W | Nebenkosten | ≈ Teil BKP 5 |
| Z | MWST | — (Steuer, kein Kostenblock) |

Kostenstände im Dokument:

- **C–G (Bauwerkskosten): CHF 1'903'000** → 698 CHF/m³ GV
- **B–W (Erstellungskosten, ohne MwSt.): CHF 2'748'000** → 1'008 CHF/m³ GV
- **B–Z (Anlagekosten ohne Grundstück, inkl. 7.7 % MwSt.): CHF 2'960'000** → **1'086 CHF/m³ GV, 3'375 CHF/m² GF**

**B–Z entspricht funktional am ehesten der Definition "BKP 1–5" dieser KB** (Vorbereitung bis
Baunebenkosten inkl. Honorare, exkl. Grundstück, exkl. Ausstattung/BKP9) — aber die
eBKP-H-Gliederung ist nicht identisch mit BKP 2017, eine 1:1-Übersetzung ist nicht
verifizierbar ohne Positions-Detailabgleich. Als Näherung verwendet, mit diesem Vorbehalt.

## Preisstand

Schweizer Baupreisindex Hochbau, Region Zürich, Stand 2020.10. Kostengenauigkeit im Dokument
mit ±25 % ausgewiesen.

## Nebenbefund: Referenzobjekt Triplexhaus (KEIN JANS-Projekt, nur Vergleichswert)

Im selben Ordner liegt `12_GKB_REF_Triplexhaus/231216_GKB_Triplexhaus.pdf`: ein
Vergleichsobjekt "Triplexhaus Bernstrasse", Herzogenbuchsee, Baujahr 2009, GV 2'176 m³,
B–Z-Anlagekosten CHF 2'818'000 → **1'295 CHF/m³ GV**. Dies ist **kein JANS-Eigenprojekt**,
sondern ein von JANS als Benchmark herangezogenes fremdes Referenzobjekt — nicht als eigener
Datenpunkt gezählt, nur zur Einordnung dokumentiert (Herzogenbuchsee ≠ Region ZH, älterer
Baujahrgang 2009, andere Marktverhältnisse).

## Einordnung für die Kennwerte-KB

**Einzelfall n=1**, MFH mittel (Vorlagen-Standard, siehe Vorbehalt oben), Region Thalwil ZH.
Kein Ausführungsbeleg (sistierte Baueingabe, Projekt nie gebaut) — reine Grobkostenberechnung
in der Planungsphase. Kennwert **1'086 CHF/m³ GV** (B–Z-Anlagekosten inkl. MwSt., eBKP-H-Basis,
näherungsweise BKP-1-5-äquivalent).

Abrufdatum: 2026-07-27.
