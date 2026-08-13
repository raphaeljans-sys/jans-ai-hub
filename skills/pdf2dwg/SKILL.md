---
name: pdf2dwg
description: >
  PDF-zu-DWG-Konverter fuer Vektor-PDFs (CAD-Plots) — erzeugt leichte, saubere
  DWGs fuer den ArchiCAD-Import: unsichtbare weisse Striche und zerlegte
  Schraffur-/Textur-Mikrostriche werden entfernt, Duplikate bereinigt,
  zusammenhaengende Segmente zu Polylinien verkettet, Layer nach Linienfarbe,
  Text als editierbare TEXT-Entities. Diesen Skill verwenden wenn der Benutzer
  fragt: "PDF zu DWG", "PDF in DWG umwandeln", "konvertiere das PDF fuer
  ArchiCAD", "PDF zu DXF", "Plan-PDF als CAD", "mach mir ein DWG aus dem PDF".
---

# Skill: pdf2dwg — Vektor-PDF zu leichtem DWG

## Zweck

Plot-PDFs (z.B. Werkplaene von Unternehmern wie Jegen) enthalten oft
Hunderttausende Einzelstriche, weil Schraffuren/Texturen beim Plotten zerlegt
werden. Ein 1:1-Import macht ArchiCAD unbrauchbar schwer. Dieser Skill
extrahiert die Vektoren, bereinigt sie aggressiv und schreibt ein schlankes
DWG **in denselben Ordner wie das Quell-PDF** (Standard-Ablage, sofern der
Benutzer nichts anderes sagt).

Referenzfall 2619 KISPI: 240'414 Striche → ~14'500 Entities
(10'487 Linien + 3'634 Polylinien + 366 Texte), 0.8 MB DWG.

## Werkzeuge / Voraussetzungen

- Script: `skills/pdf2dwg/tools/pdf2dwg.py` (NAS, kanonisch)
- Python-venv: `~/.venvs/pdf2dwg` (pymupdf + ezdxf; pro Station einmal anlegen:
  `python3 -m venv ~/.venvs/pdf2dwg && ~/.venvs/pdf2dwg/bin/pip install pymupdf ezdxf`)
- DWG-Erzeugung: LibreDWG `dxf2dwg` (`brew install libredwg`); fehlt es,
  bleibt ein DXF (ArchiCAD importiert auch DXF)

## Aufruf

```bash
~/.venvs/pdf2dwg/bin/python3 /Volumes/daten/jans-ai-hub/skills/pdf2dwg/tools/pdf2dwg.py \
  "<pfad/zum/plan.pdf>" [--keep-dxf] [--schraffur layer] [--min-len 0.45] [--scale N]
```

- Output: `<gleicher Ordner>/<gleicher Name>.dwg` + `.dxf` (Mehrseiter:
  `_pN`-Suffix). Das DXF bleibt IMMER liegen — ArchiCAD importiert DXF ueber
  denselben Dialog; es ist der sichere Fallback, falls das DWG abgelehnt wird.
- `--schraffur layer`: Mikro-Striche nicht loeschen, sondern auf Layer
  SCHRAFFUR ablegen (Default: loeschen)
- `--min-len`: Schwelle in Papier-mm, unter der ein Strich als
  Schraffur-Fragment gilt (Default 0.45)
- `--scale N`: Koordinaten mal N (Plan 1:10 → `--scale 10` ergibt reale mm);
  Default 1.0 = Papier-mm

## Ablauf fuer Claude

1. PDF-Pfad verifizieren (nie raten; OneDrive-Bibliothekspfade beachten).
2. Script laufen lassen; Statistik (entfernte weisse/Mikro-Striche, Duplikate,
   Entity-Zahlen) dem Benutzer berichten.
3. Kurz verifizieren: `dwgread` ohne Entity-Fehler bzw. Roundtrip-Entity-Zahl
   plausibel; bei Unsicherheit DXF-Render gegen PDF-Render vergleichen
   (ezdxf drawing-Addon, matplotlib im venv vorhanden).
4. Vollstaendigen Output-Pfad nennen (Rule 260619).

## Grenzen (dem Benutzer transparent machen)

- **Rasterbilder im PDF** (Fotos, gerenderte Ansichten, Logos) werden NICHT
  uebernommen — nur Vektoren und Text.
- Koordinaten sind **Papier-mm**: Massstab beim ArchiCAD-Import setzen oder
  mit `--scale` vorskalieren; bei Plaenen mit Mischmassstab (Details) bleibt
  Papier-mm die einzige konsistente Wahl.
- DWG-Writer ist LibreDWG (experimentell, R2000). ArchiCAD-Vorfall 260720:
  DWGs mit ezdxf-OBJECTS-Sektion wurden abgelehnt (korrupte MATERIAL-/
  MLEADERSTYLE-Objekte); seither strippt das Script die OBJECTS-Sektion vor
  dxf2dwg (47 → 1 dwgread-Fehler). Lehnt ArchiCAD ein DWG weiterhin ab:
  das DXF daneben verwenden (gleicher Import-Dialog, identischer Inhalt).
  Dauerhaft wasserdichte DWGs gaebe es nur via ODA File Converter
  (opendesign.com, Gratis-Tool, manueller Download) — bei Bedarf installieren
  und im Script LibreDWG ersetzen.
- Linienstaerken werden nicht uebertragen (Layer tragen nur Farbe);
  gestrichelte Linien bleiben als Einzelstriche erhalten (kein Linientyp-Rebuild).
- **Fremd-DXF nach DWG** (Hersteller-CAD-Daten, Fall Schmidlin 260813): LibreDWGs
  DXF-Reader scheitert an SPLINE/HATCH mit `READ ERROR 0x800`. Weg: DXF mit ezdxf
  abflachen (SPLINE -> LWPOLYLINE via `flattening(distance=0.05)`, HATCH weglassen,
  INSERT via `virtual_entities()` aufloesen, Polylinien-Format `xyb` ohne Breiten,
  Layerfarben auf 1..255 klemmen), dann OBJECTS strippen + `dxf2dwg --as r2000`.
  Ein 3DSOLID (ACIS) uebersteht die Konvertierung NICHT — 3D nur als Original-DXF
  weitergeben. ⚠ Verifikations-Falle: `dwg2SVG` zeigt fuer korrekte DWGs
  1e20-Koordinaten (Render-Bug); Koordinaten via `dwg2dxf`-Roundtrip pruefen und
  das Quell-DXF mit dem ezdxf-drawing-Addon rendern (Hintergrund schwarz setzen,
  sonst weisse Striche auf weiss).
