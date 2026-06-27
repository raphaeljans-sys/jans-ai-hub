# machbarkeit-studio

Interaktives Machbarkeits-Studio (HTML, zum Mitrechnen) + Dossier (DOCX/PDF) aus einem Lauf.
Orchestrator-Skill ueber `machbarkeit` / `volumenstudie` / `grobkosten-onepager` /
`planungsgrundlagen` / `immobilienbewertung`. Siehe `SKILL.md` (Contract + Pipeline) und
`SPEC.md` (Ziel + Entscheide).

## Schnellstart

```bash
cd skills/machbarkeit-studio

# 0) (empfohlen) Geruest aus echter Adresse ziehen — EGRID/Parzelle via geo-zh
python3 tools/studio_assemble.py --adresse "Bederstrasse 49, Zürich" --out /pfad/meine_studie.json
#   danach Zone + Ausnuetzungsziffer je Variante + Grundstuecksflaeche fuellen (Skill baurecht / OEREB)

# 1) ODER Modell von Hand anlegen (Vorlage kopieren) — Schema: schema/studio-model.schema.json
cp beispiele/beispiel_bederstrasse.json /pfad/meine_studie.json
#   meta/annahmen/varianten anpassen; EGRID/Parzelle via geo-zh.mjs verifizieren, nie erfinden

# 2) Interaktives Live-Studio (selbst-tragendes HTML, Fonts eingebettet)
python3 tools/build_studio.py /pfad/meine_studie.json /pfad/studio.html

# 3) Dossier (DOCX) + PDF
python3 tools/build_dossier.py /pfad/meine_studie.json /pfad/dossier.docx
bash ../../scripts/docx2pdf.sh /pfad/dossier.docx

# (optional) Zahlen pruefen ohne Rendering:
python3 tools/studio_calc.py /pfad/meine_studie.json
```

## Dateien

```
SKILL.md                         Orchestrator-Definition (Contract, Pipeline, Modell, Rechenlogik)
SPEC.md                          Spec-Methode-Artefakt (Ziel, Entscheide, Bewertungskriterien, Verifier)
schema/studio-model.schema.json  JSON-Schema des Modells
beispiele/beispiel_bederstrasse.json  Worked Example (echte ZH-Parzelle EN2850, Zuerich-Enge)
tools/studio_assemble.py         Adresse -> Modell-Geruest (geo-zh: EGRID/Parzelle/Gemeinde)
tools/studio_context.py          ECHTES 3D: swissALTI3D-Gelaende + swissBUILDINGS3D-Kuben, Render je Variante (gdal-frei)
tools/studio_calc.py             Rechen-Kern (Quelle der Wahrheit)
tools/massing_svg.py             inline-SVG-Massenmodell (Fallback, wenn keine echten Grundlagen)
tools/build_studio.py            HTML-Studio-Generator (Live-Engine + Renderings/Massenmodelle eingebettet)
tools/build_dossier.py           DOCX-Dossier-Generator (nutzt studio_calc.py)
tools/assets/fonts/              DM Sans + Fragment Mono (in HTML eingebettet)

## Echtes 3D-Situationsmodell

```bash
# Renderings auf echtem swissALTI3D-Gelaende + swissBUILDINGS3D-Kuben (gdal-frei)
~/.venvs/volumen3d/bin/python tools/studio_context.py --egrid CH987609527775 \
  --out DIR --name 2700_OBER \
  --variante "A:az=0.35,geschosse=3,geschosshoehe=3.0" \
  --variante "B:az=0.28,geschosse=2,geschosshoehe=3.0"
# erzeugt DIR/<name>_variante_<X>_axo.png  -> als render_img in die Varianten des model.json

# Cinema-4D-Goldstandard (weisses Modell, weiche Schatten, AO) ueber den Mac Mini:
~/.venvs/volumen3d/bin/python tools/studio_context.py --egrid CH987609527775 --out DIR --name N \
  --variante "A:az=0.35,geschosse=3,geschosshoehe=3.0" --c4d
# erzeugt DIR/<name>_c4d_<X>.png  (Render laeuft auf dem Mini, render-remote.sh; C4D nur dort lizenziert)
```
`az=` macht den Footprint AZ-konform (Footprint = AZ × Parzelle / Geschosse). `build_studio.py`
bettet lokale `render_img` selbst-tragend als base64 ein (grosse C4D-PNG ggf. vorher auf ~1500 px
herunterskalieren, damit das HTML versendbar bleibt). Render-Stufen: `--c4d` (Goldstandard) →
lizenzfreier matplotlib-Render → inline-SVG-Fallback.
```

## Das interaktive Studio

Eine HTML-Datei, die der Bauherr offline auf jedem Geraet oeffnet. Regler fuer Kostenkennwert,
Verkaufspreis bzw. Mietzins+Kapitalisierung, Bautraeger-Marge, Diskontierung sowie
Verkauf/Rendite-Umschalter. Jede Aenderung rechnet **live** fuer alle Varianten: Volumen
(aGF/BGF/GV/HNF), Erstellungskosten BKP 1-5 (mit Band), Verkaufserlös/Ertragswert, Marge,
**Residualwert/zahlbarer Landwert** und eine Sensitivitaets-Matrix (Flaechen-Delta × Kostenmodell).
"Als PDF drucken" erzeugt eine A4-Druckfassung im JANS-Layout.

Der Rechen-Kern `studio_calc.py` ist die einzige Quelle der Wahrheit; HTML-Engine und Dossier
zeigen deshalb deckungsgleiche Zahlen.
