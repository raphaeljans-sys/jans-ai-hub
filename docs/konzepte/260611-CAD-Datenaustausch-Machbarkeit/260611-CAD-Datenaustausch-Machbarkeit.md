# Datenaustausch Architekt ↔ Hub — Prinzip für die Machbarkeits-/Volumenstudie

**Kanonisch auf dem NAS** · `docs/konzepte/` · Stand 11.06.2026 · JANS

> MD = Wahrheit. DOCX/PDF liegen daneben (Lese-/Präsentationsfassung). Lese-Kopie zusätzlich
> im OneDrive-Output. Quelle der Connector-/Status-Angaben: `connectors/cad/` (NAS).

---

## 1. Worum es geht
Heute läuft die Volumenstudie in eine Richtung: Parameter → Volumen. Neu zeichnest **Du**
(Baufeld, Bauvolumen-Varianten, Firstrichtung, Höhenlinien) und der Hub liest das zurück,
rechnet Kennzahlen, baut das 3D-Modell und passt die Studie nach Deinen Vorgaben an. Damit das
verlässlich und stationsübergreifend funktioniert, braucht es vier Dinge: einen **gemeinsamen
Referenzpunkt**, eine feste **Schichten-Ordnung**, eine **zentrale Ablage (NAS)** und eine
saubere **Anbindung der lokalen Programme** (Cinema 4D, ArchiCAD, Rhino) plus der **Höhendaten**.

## 2. Wo alles lebt — die zentrale NAS-Architektur
Alles Konzeptionelle und alle geteilten Werkzeuge sind **kanonisch auf dem NAS**
(`/Volumes/daten/jans-ai-hub/`, Rule `sync-kanonische-quelle.md`). So sehen alle Stationen und
AI-Modelle denselben aktuellen Stand:

| Was | Ort auf dem NAS |
|---|---|
| Konzept-/Pipeline-Dokumente | `docs/konzepte/` |
| CAD-Connectoren (Cinema/Rhino/ArchiCAD/Terrain) | `connectors/cad/` |
| Geodaten-Connector | `skills/planungsgrundlagen/connectors/geo-zh.mjs` |
| Kartenportal-Wissen (PL-01-Ablage) | `wissen/planungsgrundlagen/wiki/kartenportale-sharepoint-ablage.md` |
| Projektbezogene Austauschdateien (DXF/3D) | Studienordner `05_Visualisierung/CAD-Austausch/` |

Eine **Lese-/Präsentationskopie** (PDF) darf zusätzlich in den OneDrive-Output. Die Wahrheit
bleibt das NAS. (Neu als Dauerregel hinterlegt, 11.06.2026.)

## 3. Baustein 1 — Der gemeinsame Referenzpunkt (Lage & Position)
Alles steht im Schweizer Landeskoordinatensystem **LV95 (EPSG:2056)** — echte Landeskoordinaten,
kein frei gewählter Nullpunkt. Unverrückbarer Bezug ist das **amtliche Kataster-Polygon** der
Parzelle (über `geo-zh.mjs`). Dazu Koordinatenkreuz mit angeschriebenen LV95-Werten, Nordpfeil,
Nachbarparzellen, Infoblock (EGRID, Parzelle, Zone, Massstab, Einheit Meter). Lage/Position sind
korrekt, weil sie aus der amtlichen Vermessung kommen — nicht aus einer Annahme.

## 4. Baustein 2 — Der Schichtenvertrag (wer zeichnet wohin)
Eine einzige CAD-Datei, feste Layer in drei Klassen. Jeder schreibt nur in seine Klasse.

**BASIS_… (Hub erzeugt, Du veränderst nicht — die geprüfte Grundlage)**
`BASIS_PARZELLE` (Kataster-Polygon), `BASIS_NACHBARN`, `BASIS_GEBAEUDE_BESTAND`,
`BASIS_BAULINIE` (OEREB/Baulinienplan), `BASIS_GRENZABSTAND`, `BASIS_GEWAESSER_WALD`,
`BASIS_HOEHENLINIEN` (swissALTI3D, siehe §6), `BASIS_NORDPFEIL`/`BASIS_KOORD`, `BASIS_META`.

**EIN_… (Du zeichnest)**
`EIN_BAUFELD`, `EIN_VOL_A`/`_B`/`_C` (Volumen-Grundriss je Variante, geschlossene Polylinie),
`EIN_FIRST` (Firstlinie je Volumen, Richtung zählt), `EIN_HOEHEN` (Höhen-Etiketten, §5),
`EIN_HOEHENLINIEN` (eigene Terrain-/Kotenangaben), `EIN_NOTIZ`.

**AUS_… (Hub schreibt zurück)**
`AUS_VOL_KONTUR` (Rückbestätigung des Gelesenen), `AUS_KENNZAHLEN` (Baufeld m², GF, m³ GV,
Geschosse, Ausnützung je Variante), `AUS_KONFLIKT` (z. B. Volumen über Baulinie).

Konvention: Layernamen exakt (GROSS, Unterstrich), Einheit Meter, Flächen als geschlossene
Polylinien — genau diese Striktheit macht maschinelles, eindeutiges Auslesen möglich.

## 5. Baustein 2b — Höhe & Firstrichtung übergeben (2D → 3D)
Ein Grundriss hat keine Höhe. Je Volumen ein kurzes Etikett auf `EIN_HOEHEN`:
```
V-A | TH=12.50 | FH=16.20 | OKT=445.30
```
TH = Traufhöhe, FH = Firsthöhe (m über OK Terrain), OKT = Kote OK Terrain (m ü. M., optional).
Die Firstlinie auf `EIN_FIRST` gibt die Dachrichtung. Fehlt die Firstlinie → Flachdach auf FH;
fehlt das Etikett → Rückmeldung + markierte Annahme. Es wird nie eine Höhe erfunden.

## 6. Höhen-/Topografie-Mechanismus (Deine Frage: wie an die Höhenangaben?)
Quelle der Wahrheit ist **swissALTI3D** des Bundes (login-frei, LV95), bezogen über den
Geodaten-Connector — gekapselt in `connectors/cad/terrain.sh`. Drei Stufen je nach Zweck:

| Stufe | Was | Wofür | Befehl |
|---|---|---|---|
| **Punkt** | eine Kote (m ü. M.) an der Parzellenkoordinate | OKT, schnelle Referenz | `terrain.sh punkt --adresse "…"` |
| **Höhenlinien** | Vektor-Höhenlinien als DXF (Intervall frei) | Plan/CAD, Layer `BASIS_HOEHENLINIEN` | `terrain.sh hoehenlinien --adresse "…" --out … --intervall 0.5` |
| **Terrain-Mesh** | swissALTI3D-DTM (0.5 m) als 3D-Boden | Cinema/Rhino-Geländekontext | `terrain.sh dtm --adresse "…" --out …` → Mesh |

Mechanik der Höhenlinien (validiert 11.06.2026, Mac Mini): DTM-GeoTIFF beziehen →
`gdal_contour -3d -i <intervall>` → GeoJSON → `contours2dxf.py` (ezdxf, venv volumen3d) →
DXF in LV95 mit echten 3D-Höhen (Layer `HOEHENLINIEN`, LWPOLYLINE mit elevation). Der Umweg
über GeoJSON ist nötig, weil der OGR-DXF-Writer (GDAL 3.13) die Z-Komponente verwirft.
Ergänzend liegen fertige Höhenlinien-Pläne je Gemeinde im Büro unter
`PL - 01 Kartenportale/Hoehenlinie/<Gemeinde>/`.

## 7. Die CAD-Connectoren (lokal verbundene Programme)
Unter `connectors/cad/` (Statuscheck: `bash connectors/cad/cad-status.sh`).

| Connector | Programm | Automation | Lizenz (Stand 11.06.2026) |
|---|---|---|---|
| `cinema4d.sh` | Cinema 4D 2026 | headless (c4dpy + Commandline-Render) | Maxon-App-Login (GUI prüfen) |
| `rhino.sh` | Rhino 8.27 | headless Geometrie (rhino3dm) + GUI-Open | **lizenziert** (Licenses-Ordner) |
| `archicad.sh` | ArchiCAD 27/26/25 | **kein CLI** → DXF/IFC-Austausch | CodeMeter-Dienst **läuft** |
| `terrain.sh` | swissALTI3D | Punkt/DTM/Höhenlinien | login-frei |

**Warum ArchiCAD nur über Dateiaustausch:** ArchiCAD hat keine offizielle Headless-Automation
(nur ein API zur laufenden GUI). Versionsneutral und verlässlich ist der **DXF/IFC-Austausch** —
exakt der Schichtenvertrag (§4). Cinema 4D und Rhino übernehmen die generative/3D-Stufe headless.

**Lizenz-Modell:** Cinema = Maxon-App-Login (nur in GUI aktivierbar; Connector meldet nur den
Zustand). Rhino = lokale Lizenz, einmal in GUI aktiviert, läuft danach headless. ArchiCAD =
CodeMeter-Container/Graphisoft-ID, prüfen im Graphisoft License Manager Tool (`archicad.sh lizenz`)
oder CodeMeter-WebAdmin `http://localhost:22350`.

## 8. Arbeitsablauf (hin & zurück)
1. **Hub erzeugt** die Grundlage-Datei: BASIS-Layer gefüllt (inkl. Höhenlinien), EIN-Layer leer
   angelegt, Legende — abgelegt in `…/CAD-Austausch/00_Grundlage/`.
2. **Du zeichnest** in die EIN-Layer, speicherst als neue Version → `…/10_Raphael/`.
3. **Hub liest** (ezdxf), prüft (§9), rechnet Kennzahlen, baut 3D (Rhino/Cinema), schreibt
   AUS-Layer + Kennzahlen → `…/20_Rueck/`. Studie wird angepasst. Alte Stände → `99_Archiv/`.

Dateiname nach JANS-Konvention mit Version: `260611-2699Grub-Grundlage-v01.dxf`.

## 9. Was der Hub beim Zurücklesen prüft (Leitplanken)
Layernamen exakt · Volumen-Grundrisse geschlossen · Einheit Meter · LV95-Bereich plausibel ·
jedes Volumen hat ein Höhen-Etikett (sonst markierte Annahme) · Volumen im Baufeld und keine
Baulinie überschritten (sonst `AUS_KONFLIKT`). Annahmen werden ausgewiesen, Identifikatoren
(EGRID/Parzelle) nie erfunden.

## 10. Dateiformat & offene Setup-Schritte
**Format:** DXF (universell, jedes CAD) empfohlen; Rhino `.3dm` als Alternative falls Du in Rhino
arbeitest — selber Schichtenvertrag, ein Konvertierungsschritt weniger.

**Setup-Stand (11.06.2026, nachmittags):**
- [x] `gdal` installiert — Mac Mini, GDAL 3.13.1. Höhenlinien-Kette end-to-end validiert
      (Giebelweg 12 Langnau: 4506 Linien à 0.5 m, Z = 559.5 m ü. M. per ogrinfo verifiziert).
      Achtung: direkt `gdal_contour -3d` → DXF verwirft Z — der GeoJSON-Umweg via
      `contours2dxf.py` (§6) ist zwingend.
- [x] venv `~/.venvs/volumen3d` eingerichtet (Python 3.10.20; rhino3dm 8.17, shapely, numpy,
      mapbox_earcut, matplotlib, **ezdxf**)
- [x] **Format entschieden: DXF** (gemeinsamer Nenner ArchiCAD/Rhino/Cinema; .3dm optional im Rhino-Zweig)
- [x] Werkzeug gebaut: `skills/volumenstudie/tools/dxf_austausch.py` (grundlage + lesen)
- [x] **Pilot validiert** (Parzelle WD5381, Grubenstrasse 37): Grundlage-DXF erzeugt, simulierte
      Bearbeitung zurückgelesen — Baufeld 1'320 m², V-A 540 m², 7'749 m³ (Satteldach-Näherung),
      Prüfung ohne Befunde. Ablage: `pilot/` neben diesem Konzept. Höhenlinien der Grundlage
      nachträglich repariert (11.06.2026): die ursprünglichen 989 Linien lagen flach auf Z=0
      (direkter gdal_contour→DXF-Weg), neu 1'004 Linien mit echten Höhen 413.5–454.5 m ü. M.
- [ ] Maxon-App-Login prüfen (für headless Cinema-Render; nur GUI)
- [ ] Erster realer Durchlauf: Raphael zeichnet in der Pilot-DXF (`pilot/00_Grundlage/…-v01.dxf`),
      legt die Fassung in `pilot/10_Raphael/` — Hub liest, rechnet, schreibt zurück.
