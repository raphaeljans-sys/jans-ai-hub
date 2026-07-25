# Wissensbasis: Entwurfs-Referenzen (Skriptorientiertes Entwerfen)

## Fokus

Diese KB kuratiert **Architektur-Referenzen so, dass sie maschinenlesbar in die
Entwurfs-Pipeline fliessen** — vom Typologiewissen über Entwurfsprinzipien bis zu
konkreten Parameter-Sets für `volumen_generator.py` und künftige Entwurfstools.

Seed-Quelle: NAS-Ordner `05_Architekten_Synobsis` (Bücher, Projektfotos,
Materialstudien, Vorlesungsnotizen).

## Domänen

| Domäne | wiki/-Unterordner | Beschreibung |
|---|---|---|
| **Typologien** | `typologien/` | Gebäudetypologien (Healthcare, Wohnen, Gewerbe, Mischnutzung) mit Kennzahlen |
| **Entwurfsprinzipien** | `entwurfsprinzipien/` | Abstrakte Regeln (Proportion, Tageslicht, Erschliessung, Fassadenrhythmus, Hangbau) |
| **Architekten** | `architekten/` | Referenz-Architekten, deren Methoden und relevante Projekte |
| **Materialien** | `materialien/` | Materialsprache, Verarbeitung, Oberflächen — verlinkt mit `twin/fachsignatur` |
| **Parameter-Sets** | `parameter-sets/` | ★ Maschinenlesbare JSON-Dateien pro Typologie/Bauaufgabe |

## Parameter-Sets (Kernstück)

Jedes Parameter-Set ist ein JSON nach dem Schema `parameter-schema/entwurfs-parameter.schema.json`.
Es beschreibt eine Bauaufgabe so, dass Entwurfstools die Werte direkt lesen können:

- **Gebäude-Geometrie**: Geschosse, Geschosshöhe, Grundrisstiefe, Fassadenraster, Erschliessung, Statik
- **Flächen-Kennwerte**: HNF/Einheit, VF-Anteil, aGF/BGF-Faktor
- **Materialien**: Tragwerk, Fassade, Dach (Stichworte für Rendering + Kosten)
- **Kosten-Referenz**: CHF/m³-Band, BKP-Schwerpunkte, Quell-KB
- **Entwurfs-Regeln**: Textuelle Regeln (Orientierung, Zonierung, Besonderheiten)
- **Referenz-Projekte**: Verknüpfung zu JANS-Projekten und externen Vorbildern

### Naming-Konvention Parameter-Sets
```
<nutzung>-<subtyp>-<kontext>.json
```
Beispiele: `healthcare-neubau-zh.json`, `wohnen-mfh-urban.json`, `wohnen-efh-hang.json`

## Integration in die Hub-Pipeline

```
entwurfs-referenzen/parameter-sets/*.json
        │
        ├──→ volumenstudie/volumen_generator.py   (Geometrie-Parameter)
        ├──→ machbarkeit                          (Varianten-Logik + Regeln)
        ├──→ grobkosten-onepager                  (Kosten-Referenz)
        ├──→ twin/fachsignatur                    (Material-/Entwurfssprache)
        └──→ c4d_szene.py / axo_render.py         (Rendering-Parameter)
```

## Schreibregeln (zusätzlich zum Meta-Schema)

- **Quellenangabe Pflicht**: Jeder Kennwert braucht eine Quelle (Buch, Projekt, Norm, Erfahrung).
- **Keine erfundenen Kennwerte**: Lieber `null` / Lücke als ein geschätzter Wert ohne Beleg.
- **Parameter-Sets validieren**: Jedes JSON muss gegen `entwurfs-parameter.schema.json` gültig sein.
- **Bilder-Referenz**: Fotos/Pläne bleiben in `raw/`, im Wiki nur Verweis (`→ raw/projekte/dateiname`).
- **Backlinks zu anderen KBs**: Insbesondere `[[grobkosten/*]]`, `[[baurecht/*]]`, `[[twin/fachsignatur]]`.

## Compounding-Logik

1. Jede neue Machbarkeitsstudie, die Parameter-Sets nutzt, erzeugt einen Output.
2. Erfahrungswerte aus dem Output (z.B. "Geschosshöhe 3.40 m war zu knapp für HLK-Führung")
   fliessen als Anpassung/Ergänzung ins Parameter-Set zurück.
3. Neue Referenzprojekte (eigene + externe) werden als Architekten- oder Typologieartikel eingearbeitet.
4. Das Wiki wächst mit jedem Projekt — Entwurf Nr. 20 baut auf den Erkenntnissen von 1–19 auf.
