---
name: machbarkeit-studio
description: Das interaktive Machbarkeits-Studio von JANS — der Orchestrator-Harness, der eine komplette Machbarkeits-/Potenzialstudie aus EINER Hand zu einem interaktiven Live-Studio (HTML) UND einem ablagefertigen Dossier (DOCX/PDF) verschmilzt. Kern-Differenzierer gegenueber Mitbewerbern: ein selbst-tragendes HTML-Studio, in dem der Bauherr am Tisch die Annahmen (Kostenkennwert, Verkaufspreis/Mietzins, Bautraeger-Marge, Diskontierung, Verkauf vs. Rendite) per Regler veraendert und Volumen, Erstellungskosten BKP 1-5, Residualwert/zahlbaren Landwert, Marge und Sensitivitaet fuer ALLE Varianten in Echtzeit umrechnen sieht. Diesen Skill verwenden wenn der Benutzer fragt: "Machbarkeits-Studio", "interaktive Machbarkeitsstudie", "Studie zum Mitrechnen", "Live-Studie", "Varianten interaktiv vergleichen", "Potenzialstudie als Tool", "Was-waere-wenn Machbarkeit", "Studie fuer die Bauherren-Praesentation", "Residualwert interaktiv", "Verdichtungspotenzial praesentieren" — und immer dann, wenn aus einer Parzelle/Adresse eine vollstaendige, praesentierwuerdige Machbarkeitsstudie mit Variantenvergleich und Wirtschaftlichkeit entstehen soll, die der Bauherr selbst durchspielen kann. Dach-Harness ueber die Skills machbarkeit (baurechtliche Parameter/Volumen), volumenstudie (3D-Renderings), grobkosten-onepager (Kennwerte), planungsgrundlagen (Geodaten/EGRID/OEREB via geo-zh.mjs/geo-sz.mjs), immobilienbewertung (Wertgegenkontrolle) und nutzt die Agenten baulinien-analyst, volumen-rechner, wirtschaftlichkeit-rechner. Gegenstueck/Aufwertung zu machbarkeit (dort das klassische Memo, hier das interaktive Studio + Dossier).
---

# JANS Machbarkeits-Studio (interaktiver Orchestrator)

## Contract

- **Trigger:** Greift, wenn aus einem Grundstueck/Bestand eine **vollstaendige, praesentierwuerdige
  Machbarkeits-/Potenzialstudie** entstehen soll, die der Bauherr **selbst durchspielen** kann
  (Was-waere-wenn am Tisch). Auch wenn jemand "die Machbarkeit so aufbereiten, dass der Kunde mit
  den Annahmen spielen kann" verlangt.
- **Inputs:** Grundstueck (Adresse, Parzellen-Nr./EGRID, Gemeinde/Kanton, Grundstuecksflaeche),
  Zone/BZO-Kennziffern (oder Auftrag, sie zu ermitteln), Varianten-Absicht (Regelbau /
  Arealueberbauung / Maximalvolumen / Umnutzung), wirtschaftlicher Modus (Verkauf oder Rendite),
  Markt-Annahmen (Verkaufspreis CHF/m2 HNF oder Mietzins + Kapitalisierung). Fehlt Zentrales und
  ist es nicht ableitbar — kurz nachfragen, sonst als **Annahme markieren** (nie raten).
- **Output (DOPPELT, ein Generierungslauf):**
  1. **Interaktives Studio** — eine selbst-tragende `*.html` (Fonts eingebettet, offline auf jedem
     Geraet) mit Live-Engine. Das Leitmedium fuer die Praesentation.
  2. **Dossier** — `*.docx` + `*.pdf` im JANS-Dokument-Layout fuer Ablage/Versand.
  Beide aus DEMSELBEN Modell-JSON, also deckungsgleiche Zahlen.
- **Output-Ablage:** AI-Hub-Output `…/30 JANS AI HUB OUTPUT/machbarkeit-studio/<projekt>/` UND
  Projekt-Ordner (doppelte Ablage). Dateinamen `YYMMDD_Studio_<Objekt>_<Ort>.html` /
  `YYMMDD_Machbarkeit_<Objekt>_<Ort>.docx|pdf` (Umlaute im Dateinamen vermeiden).
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention,
  identifikatoren-verifizieren (EGRID/Parzelle/Zone nie erfinden), bkp-2017-referenz,
  kein-gedankenstrich, keine-fehlerhaften-umbrueche, auftrags-dekomposition (Varianten/Parzellen),
  spec-methode (groesseres Vorhaben → erst Ziel als Spec). Texterzeugnisse vor Ausgabe durch Skill
  `korrektur`, danach `twin`-Fidelity-Gate.
- **Vorgelagert:** planungsgrundlagen (Geodaten/EGRID/OEREB), baurecht (Kennziffern)
- **Nachgelagert:** volumenstudie (3D-Renderings nachliefern), kostenschaetzung (DetailKV),
  honorarberechnung-sia102 (Folgehonorar Vorprojekt)

## Warum das die unuebertroffene Leistung ist

Mitbewerber liefern eine **statische** Machbarkeitsstudie als PDF: eine eingefrorene Annahme, eine
Zahl. Aenderst der Bauherr im Gespraech den Verkaufspreis oder den Kennwert, ist das Dokument
ueberholt und es braucht eine neue Runde. **Das JANS-Studio dreht das um:** der Bauherr sitzt vor
einem Werkzeug, in dem er die kritischen Stellschrauben selbst bewegt und in Echtzeit sieht, wie
Volumen, Kosten, **zahlbarer Landwert** und Marge ueber **alle Varianten** reagieren — inklusive
Live-Sensitivitaet. Das verschiebt das Verkaufsgespraech von "hier ist unsere Zahl" zu "rechnen wir
es gemeinsam durch". Schnell (Stunden statt Wochen), vollstaendig (Geodaten → Baurecht → Volumen →
Kosten → Wirtschaftlichkeit aus einer Hand), und als ein einziges, offline lauffaehiges HTML
verschickbar.

## Pipeline (Orchestrierung)

```
1 GRUNDLAGEN     planungsgrundlagen / geo-zh.mjs|geo-sz.mjs
                 → EGRID, Parzelle, Grundstuecksflaeche, OEREB, (Zone)        [identifikatoren-verifizieren]
2 BAURECHT       Skill baurecht (+ Agent baulinien-analyst)
                 → Zone, Ausnuetzung/GFZ, Baufeld, Abstaende, Arealbonus      [belegt, nie geraten]
3 VOLUMEN        Agent volumen-rechner / Skill machbarkeit
                 → je Variante aGF/BGF/GV(m3)/HNF/Geschosse
4 KOSTEN         Skill grobkosten-onepager / KB wissen/grobkosten
                 → Kennwert CHF/m3 + Band (BKP 1-5), Nutzung/Standard
5 WIRTSCHAFT     Agent wirtschaftlichkeit-rechner / immobilienbewertung
                 → Verkaufspreis|Mietzins, Marge, Diskont, Residualwert, Sensitivitaet
6 MODELL         alles in EIN model.json giessen (schema/studio-model.schema.json)
7 STUDIO         tools/build_studio.py model.json studio.html      ← interaktives Live-Studio
8 DOSSIER        tools/build_dossier.py model.json dossier.docx  + scripts/docx2pdf.sh
9 QS             Skill korrektur (Texte) → twin (Fidelity) → doppelte Ablage
```

Bei einfacher Lage (klare Zone, eine Frage) darfst du Schritte 2-5 selbst rechnen; der Fan-out auf
die Agenten lohnt sich bei Aenderungsfaellen, Servituten, mehreren Varianten und der
Wirtschaftlichkeit. **3D-Renderings** (Skill `volumenstudie`) sind optional: liegen PNG/JPG vor,
in den Varianten als `render_img` (relativer Pfad oder data-URI) referenzieren — das Studio zeigt
sie in der Render-Galerie. Ohne Renderings laeuft das Studio vollwertig (Zahlen-fokussiert).

## Das Modell (Single Source of Truth)

Alles fliesst in **ein** `model.json` (Schema + kommentiertes Beispiel:
`schema/studio-model.schema.json`, `beispiele/beispiel_bederstrasse.json`). Struktur:

- `meta` — Studie/Titel/Untertitel, Objekt, Ort, **parzelle/egrid/zone/gemeinde/kanton**,
  `grundstuecksflaeche_m2`, `stand`.
- `annahmen` — die **regelbaren** Globalwerte: `modus` (`verkauf`|`rendite`), `kennwert_chf_m3`
  (+ Band), `verkaufspreis_chf_m2` **oder** `miete_chf_m2_jahr` + `kap_satz_pct`, `marge_pct`,
  `diskont_pct`, `abzug_chf`, optional `landpreis_chf` (→ zusaetzliche Marge-/Controlling-Methode),
  sowie die Faktoren `bgf_faktor`/`gv_pro_gf`/`hnf_faktor` (SIA-416-grob, Defaults belegt).
- `varianten[]` — je Variante `name`, `kurz`, `ziffer` (AZ/GFZ), `geschosse`, `zuschlag_pct`
  (+ `zuschlag_label`), `nutzung`, optional `render_img`.
- `leitvariante_index` — welche Variante die Hero-Kennzahl + Sensitivitaet fuehrt.
- `baurecht[]` — belegte Kennziffern-Tabelle (label/wert/quelle).
- `fazit[]`, `vorbehalte[]`, `quellen` — Text.

**Rechen-Kern:** `tools/studio_calc.py` ist die Quelle der Wahrheit; die JS-Engine im HTML spiegelt
ihn 1:1 (Live-Recompute), der Dossier-Generator nutzt ihn direkt → HTML und PDF zeigen identische
Zahlen. Formelbasis dokumentiert in `studio_calc.py` (aus der `machbarkeit`-Wissensbasis 01 + 03).

## Rechenlogik (kurz)

```
aGF        = Grundstuecksflaeche × Ziffer (AZ/GFZ)
BGF        = aGF × bgf_faktor            (UG/nicht-anrechenbar, Default 1.15)
GV (m3)    = BGF × gv_pro_gf             (SIA 416 grob, Default 3.3)
HNF        = BGF × hnf_faktor            (Default 0.75)
Erstellung = GV × Kennwert(CHF/m3) × (1+Zuschlag)        (BKP 1-5)
Verkauf :  Wertbasis = HNF × Verkaufspreis CHF/m2
Rendite :  Wertbasis = HNF × Mietzins / Kapitalisierungssatz   (Ertragswert)
Marge      = marge_pct% × Wertbasis
Residual   = (Wertbasis − Erstellung − Marge − Abzuege) × (1 − Diskont%)   = zahlbarer Landwert
Marge real = Wertbasis − (Erstellung + Landpreis)          (nur falls landpreis_chf gesetzt)
```
Sensitivitaet: Residualwert der Leitvariante gegen **Flaechen-Delta** (0/−10/−20 %) ×
**Kostenmodell** (Kennwert / Kennwert-Band-high) — live im Studio, statisch im Dossier.

## Werkzeuge

| Tool | Zweck |
|---|---|
| `tools/studio_calc.py` | Rechen-Kern (Quelle der Wahrheit); `python studio_calc.py model.json` → Resultat-JSON |
| `tools/build_studio.py` | **Interaktives Live-Studio**: `python build_studio.py model.json studio.html` (selbst-tragend, Fonts eingebettet) |
| `tools/build_dossier.py` | **Dossier**: `python build_dossier.py model.json dossier.docx`; PDF via `scripts/docx2pdf.sh` |
| `schema/studio-model.schema.json` | Modell-Schema (JSON Schema) |
| `beispiele/beispiel_bederstrasse.json` | Worked Example (echte ZH-Parzelle EN2850) |

## Vorgehen (Standard)

1. **Spec klaeren** (spec-methode): wahres Ziel — reine Volumenfrage (Typ A) oder "lohnt es sich"
   (Typ B, mit Wirtschaftlichkeit)? Verkauf oder Rendite? Welche Varianten? Bei Mehrdeutigkeit
   1-3 Schluesselfragen, sonst Annahmen markieren.
2. **Grundlagen ziehen** (geo-zh/geo-sz): EGRID/Parzelle/Flaeche/OEREB verifizieren — nie erfinden.
3. **Kennziffern belegen** (baurecht): Zone, Ausnuetzung, Baufeld, Arealbonus.
4. **Modell fuellen** — `model.json` nach Schema; jeden unbelegten Wert in `vorbehalte`/`baurecht`
   als "Annahme — verifizieren" kennzeichnen.
5. **Generieren** — `build_studio.py` (HTML) + `build_dossier.py` (DOCX→PDF).
6. **Selbstcheck** — Studio kurz im Browser pruefen (Regler bewegen, Modus toggeln, Druck);
   Zahlen HTML ↔ Dossier deckungsgleich.
7. **QS & Ablage** — `korrektur` → `twin`; doppelte Ablage; dem Bauherrn das HTML schicken (oeffnet
   ohne Internet/Software), PDF fuers Dossier.

## Selbstlernend / Compounding

- Neue/bestaetigte **Kennwerte** → `wissen/grobkosten/` zurueckspeisen (Reife steigt).
- Bestaetigte **baurechtliche Muster** (Arealbonus-Wirkung, kantonale Ausnuetzungs-Besonderheit) →
  `wissen/baurecht/`.
- Unsicherheiten → `machbarkeit-studio/wissensluecken.md`, ueber `baurecht`/Wissens-Layer schliessen.

## Abgrenzung

- **`machbarkeit`** = das klassische textliche Memo/der A4-Bericht (strategische Grundlage).
  **`machbarkeit-studio`** = die interaktive Aufwertung + Dossier aus einem Lauf; nutzt `machbarkeit`
  und seine Wissensbasis als Faktenfundament.
- **`grobkosten-onepager`** = nur die Kosten auf einer Seite. Hier sind die Kosten ein Baustein.
- **`immobilienbewertung`** = formaler Verkehrswert eines Objekts. Hier Residualwert/zahlbarer
  **Landwert** einer Entwicklung; bei formaler Bewertung fuehrt `immobilienbewertung`.
