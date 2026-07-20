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

- Output: `<gleicher Ordner>/<gleicher Name>.dwg` (Mehrseiter: `_pN`-Suffix)
- `--keep-dxf`: DXF-Zwischendatei zusaetzlich behalten (Fallback, falls ein
  Empfaenger das LibreDWG-DWG nicht mag)
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
- DWG-Writer ist LibreDWG (experimentell, R2000): importiert ArchiCAD ein
  DWG nicht, das mitgelieferte/erneut erzeugte DXF (`--keep-dxf`) verwenden.
- Linienstaerken werden nicht uebertragen (Layer tragen nur Farbe);
  gestrichelte Linien bleiben als Einzelstriche erhalten (kein Linientyp-Rebuild).
