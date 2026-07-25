# Goldstandard-LVs (aus echten JANS-.crbx)

Echte JANS-Leistungsverzeichnisse, mit `tools/crbx_parser.py` aus dem
SIA-451-/.crbx-Format in LLM-freundliches Markdown konvertiert. Sie sind das
**Format- und Inhalts-Vorbild** für neue LVs.

## Bestand

| Datei | Gewerk (BKP) | NPK-Kapitel | Quelle |
|---|---|---|---|
| `221-garagentor-67-AS.md` | 221 Garagentor/Tore | 612 | Projekt 67 (gefüllt) |
| `228-sonnenschutz-LV347.md` | 228 Sonnenschutz | 347 | Winwintsch-Devivorlage |
| `271-gipser-WW-LV643-651-671.md` | 271 Gipser/Trockenbau | 643/651/671 | Winwintsch-Devivorlage |
| `271-gipser-72-AS.md` | 271 Gipser | — | Projekt 72 (gefüllt) |
| `272-tueren-LV622.md` | 272 Metallbau/Türen | 622 | Winwintsch-Devivorlage |
| `272-metallbau-66-AS.md` | 272 Metallbau | — | Projekt 66 (gefüllt) |
| `281-unterlagsboden-LV661.md` | 281 Unterlagsboden | 661 | Winwintsch-Devivorlage |
| `281-parkett-66-AS.md` | 281 Parkett | — | Projekt 66 (gefüllt) |
| `281-bodenbelaege-holz-68-AS.md` | 281 Bodenbeläge Holz | — | Projekt 68 (gefüllt) |
| `282-plattenbelaege-LV645.md` | 282 Plattenarbeiten | 645 | Winwintsch-Devivorlage |
| `282-plattenarbeiten-68-AS.md` | 282 Plattenarbeiten | — | Projekt 68 (gefüllt) |
| `285-maler-WW-LV675-676.md` | 285 Maler | 675/676 | Winwintsch-Devivorlage |

## Reifegrad

Alle aktuell **R2** (bereinigt). Ziel laut [Pipeline](../../wissensbasis/09_datenaufbereitung-pipeline.md):
auf R4 (parametrisierte Master-LV) heben.

## Abdeckung prüfen

`python3 ../../tools/reifegrad.py` zeigt, welche Gewerke noch keinen Goldstandard
haben. Konvertierungs-Backlog (weitere .crbx im Archiv): siehe
[wissensluecken.md](../../wissensbasis/wissensluecken.md) L12.

## Neue LV konvertieren

```bash
python3 ../../tools/crbx_parser.py "<projekt>.crbx" -o "<bkp>-<gewerk>.md"
```
Dateiname-Konvention: `<BKP>-<gewerk>[-<variante>].md` (BKP-Nummer zuerst,
damit der Reifegrad-Scanner das Gewerk erkennt).
