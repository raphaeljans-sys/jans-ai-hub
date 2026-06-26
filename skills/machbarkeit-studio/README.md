# machbarkeit-studio

Interaktives Machbarkeits-Studio (HTML, zum Mitrechnen) + Dossier (DOCX/PDF) aus einem Lauf.
Orchestrator-Skill ueber `machbarkeit` / `volumenstudie` / `grobkosten-onepager` /
`planungsgrundlagen` / `immobilienbewertung`. Siehe `SKILL.md` (Contract + Pipeline) und
`SPEC.md` (Ziel + Entscheide).

## Schnellstart

```bash
cd skills/machbarkeit-studio

# 1) Modell anlegen (Vorlage kopieren) — Schema: schema/studio-model.schema.json
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
tools/studio_calc.py             Rechen-Kern (Quelle der Wahrheit)
tools/build_studio.py            HTML-Studio-Generator (Live-Engine spiegelt studio_calc.py)
tools/build_dossier.py           DOCX-Dossier-Generator (nutzt studio_calc.py)
tools/assets/fonts/              DM Sans + Fragment Mono (in HTML eingebettet)
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
