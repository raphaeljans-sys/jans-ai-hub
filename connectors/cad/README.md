# CAD-Connectoren (lokal verbundene Programme)

Bruecke zwischen dem JANS AI Hub und den lokal installierten CAD-Programmen, mit denen
Raphael arbeitet: **Cinema 4D**, **Rhino**, **ArchiCAD**. Plus der **Terrain-Connector**
fuer Hoehendaten. Kanonisch auf dem NAS (Rule `sync-kanonische-quelle.md`).

> Konzept/Prinzip des Datenaustauschs: `docs/konzepte/260611-CAD-Datenaustausch-Machbarkeit`.

## Statuscheck zuerst

```bash
bash /Volumes/daten/jans-ai-hub/connectors/cad/cad-status.sh
```

Zeigt Installation + Lizenz-Hinweise je Programm.

## Die Connectoren

| Datei | Programm | Automation | Lizenz |
|---|---|---|---|
| `cinema4d.sh` | Cinema 4D 2026 | **headless** (c4dpy + Commandline-Renderer) | Maxon App eingeloggt (sonst Fehler 718) |
| `rhino.sh` | Rhino 8 | **headless** Geometrie (rhino3dm im venv) + GUI-Open | Rhino-8-Lizenz (lokal, Licenses-Ordner) |
| `archicad.sh` | ArchiCAD 27/26/25 | **kein CLI** → Bruecke ist Dateiaustausch DXF/IFC | CodeMeter / Graphisoft License Manager |
| `terrain.sh` | swissALTI3D (Geo) | Punkthoehe / DTM / Hoehenlinien (DXF) | login-frei (geo.admin.ch) |

### Lizenz-Modell je Programm
- **Cinema 4D**: Maxon-App-Login. Aktivierung nur in der GUI (Maxon App oeffnen → anmelden).
  Der Connector kann den Login nicht setzen, nur den Zustand melden.
- **Rhino 8**: lokale Lizenz im `License Manager/Licenses`-Ordner; einmal in der GUI aktiviert,
  laeuft headless via rhino3dm ohne erneute Aktivierung.
- **ArchiCAD**: Lizenz ueber CodeMeter-Container (Wibu) bzw. Graphisoft-ID. Pruefen/aktivieren im
  **GRAPHISOFT License Manager Tool** (`archicad.sh lizenz`) oder CodeMeter-WebAdmin
  `http://localhost:22350`.

## Warum ArchiCAD nur ueber Dateiaustausch
ArchiCAD bietet keine offizielle Kommandozeilen-/Headless-Automation (nur das Python/JSON-API
zur **laufenden** GUI-Instanz). Verlaesslich und versionsneutral ist daher der Austausch ueber
**DXF/IFC** — exakt der Schichtenvertrag aus dem Konzept. Cinema 4D und Rhino dagegen lassen sich
echt headless ansteuern und uebernehmen die generative/3D-Stufe.

## Abhaengigkeiten
- `node` — fuer `terrain.sh` (geo-zh.mjs).
- `gdal` (`brew install gdal`) — fuer Vektor-Hoehenlinien in `terrain.sh hoehenlinien`
  (Mac Mini: installiert 11.06.2026, GDAL 3.13.1).
- venv `~/.venvs/volumen3d` (Python 3.10; rhino3dm, shapely, numpy, mapbox_earcut, matplotlib,
  ezdxf) — fuer `rhino.sh info|py`, die Volumenstudie und `contours2dxf.py`.

## Hoehenlinien-Mechanik (validiert 11.06.2026)
`terrain.sh hoehenlinien` erzeugt DXF mit echten 3D-Hoehen ueber den Umweg
`gdal_contour -3d` → GeoJSON → `contours2dxf.py` (ezdxf, Layer `HOEHENLINIEN`,
LWPOLYLINE mit elevation). Direkt gdal_contour → DXF geht NICHT: der OGR-DXF-Writer
(GDAL 3.13) verwirft die Z-Komponente.
