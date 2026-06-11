---
name: volumenstudie
description: >-
  3D-Volumenstudien-Generator fuer Machbarkeitsstudien — die Geometrie-/Visualisierungsstufe
  der JANS-Studienpipeline. Erzeugt aus Parzelle (amtliches Kataster-Polygon via
  planungsgrundlagen/geo-zh.mjs) und Zonenparametern (Grenzabstand, Geschosse, Hoehe) die
  3D-Volumenkoerper je Variante: editierbare Rhino-Datei (.3dm), Cinema-4D-Szene mit
  automatischen Renderings (Axonometrie + Augenhoehe, weisses Volumenmodell) und geometrisch
  exakte Kennzahlen (Baufeld m2, aGF, m3). Diesen Skill verwenden wenn der Benutzer fragt:
  "Volumenstudie", "3D-Volumen generieren", "Massenmodell", "Volumenkoerper Parzelle",
  "Studie visualisieren", "Rendering Machbarkeit", "Rhino-Modell aus Parzelle",
  "wie sieht das Volumen aus". Geometrie-Glied NACH machbarkeit (dort die baurechtlich
  verbindlichen Parameter) und planungsgrundlagen (dort die Geodaten); speist
  studien-generator (Berichtsbilder) und grobkosten-onepager (m3-Kennzahl).
---

# Volumenstudie — 3D-Generator (Parzelle → Baufeld → Volumen → Rendering)

## Pipeline

```
Adresse/Parzelle
  │  skills/planungsgrundlagen/connectors/geo-zh.mjs  (EGRID, Koordinate)
  │  + swisstopo identify (Kataster-Polygon, GeoJSON LV95)
  ▼
tools/volumen_generator.py        (venv: ~/.venvs/volumen3d, Python 3.10)
  │  Parzelle → Baufeld (Grenzabstand-Offset, shapely)
  │  → Extrusion je Variante (rhino3dm)
  │  Outputs: NAME.3dm · NAME_<V>.obj · NAME_kontext.obj · NAME_kennzahlen.json
  ▼
tools/c4d_szene.py                (c4dpy, Cinema 4D 2026 headless)
  │  OBJ → PolygonObject, weisses Volumenmodell, Sonne+Fuelllicht, Boden
  │  3 Standardkameras: axo / auge_sw / auge_no
  │  Outputs: NAME_<ansicht>.png · NAME.c4d
  ▼
Studienbericht (studien-generator) + Grobkosten (grobkosten-onepager, m3)
```

## Aufrufe

```bash
# 1) Parzellen-Polygon beschaffen (LV95-GeoJSON)
node skills/planungsgrundlagen/connectors/geo-zh.mjs --adresse "..." --json
curl "https://api3.geo.admin.ch/rest/services/api/MapServer/identify?geometry=E,N\
&geometryType=esriGeometryPoint&layers=all:ch.kantone.cadastralwebmap-farbe\
&mapExtent=...&imageDisplay=100,100,96&tolerance=1&sr=2056&returnGeometry=true\
&geometryFormat=geojson"

# 2) Volumen generieren (Varianten frei kombinierbar)
~/.venvs/volumen3d/bin/python tools/volumen_generator.py \
  --parzelle parzelle.geojson --out OUTDIR --name 2699_GRUB \
  --variante "V1:grenzabstand=5,geschosse=4,geschosshoehe=3.0" \
  --variante "V2:grenzabstand=5,geschosse=6,geschosshoehe=3.0"

# 3) C4D-Szene + Renderings (headless)
"/Applications/Maxon Cinema 4D 2026/c4dpy.app/Contents/MacOS/c4dpy" \
  tools/c4d_szene.py -- --obj OUT/2699_GRUB_V1.obj \
  --kontext OUT/2699_GRUB_kontext.obj --out OUT --name 2699_GRUB_V1
```

## Regeln

- **Parameter-Hoheit**: Grenzabstand/Geschosse/Hoehe sind INPUTS. Baurechtlich verbindliche
  Werte liefert der Skill `machbarkeit` (Agent `baulinien-analyst` / `volumen-rechner`) —
  dieser Skill rechnet nur die Geometrie. Annahmen immer als Annahmen ausweisen.
- **Identifikatoren**: Parzellen-Polygon nur aus amtlicher Quelle (Kataster), EGRID nie
  erfinden (Rule identifikatoren-verifizieren).
- **Koordinaten**: 3dm/OBJ stehen im lokalen System (Origin = Parzellen-Zentroid, in
  Kennzahlen-JSON und 3dm-ApplicationDetails dokumentiert). C4D rechnet in cm, Y-oben.
- **aGF-Kennzahl** ist geometrisch (Baufeld x Geschosse) — die anrechenbare GF nach BZO
  kann tiefer liegen (Ausnuetzungsziffer); fuer verbindliche aGF den `volumen-rechner` nutzen.
- **Ablage**: Outputs in den Studienordner (studien-generator-Struktur, 04_Berechnungen /
  05_Visualisierung) und Output-Kopie nach SharePoint `30 JANS AI HUB OUTPUT`.

## Umgebung

| Komponente | Pfad | Hinweis |
|---|---|---|
| Python-venv | `~/.venvs/volumen3d` | Python 3.10 (rhino3dm hat noch kein 3.14-Wheel); rhino3dm, shapely, numpy, mapbox_earcut |
| c4dpy | `/Applications/Maxon Cinema 4D 2026/c4dpy.app/Contents/MacOS/c4dpy` | Erster Start fragt Lizenzmethode (1 = Maxon App) |
| Commandline-Renderer | `/Applications/Maxon Cinema 4D 2026/Commandline.app` | Alternative fuer Batch-Renderings fertiger .c4d-Szenen |
| Rhino 8 | `/Applications/Rhino 8.app` | Nur zum manuellen Weiterarbeiten am .3dm — die Pipeline braucht Rhino NICHT |

## Roadmap (naechste Ausbaustufen)

1. Nachbarparzellen + Bestandsgebaeude (ch.swisstopo.swissbuildings3d) als Kontext in die Szene
2. Terrain aus swissALTI3D (dtm-Produkt des geo-zh.mjs) statt flachem Boden
3. Attika-Rücksprung / gestaffelte Volumen (Variantensyntax erweitern)
4. IFC-Export fuer ArchiCAD 27 (Uebergabe Studie → Projekt)
5. Integration als Fan-out-Schritt im Skill `machbarkeit` (Typ A Volumenstudie)
