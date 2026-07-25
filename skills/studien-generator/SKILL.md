---
name: studien-generator
description: Dossier-Engine fuer JANS-Studien — geruestet aus der _MAQ-Ordnervorlage und den Goldstandard-Berichten. Legt fuer eine neue Machbarkeits-/Potenzial-/TDD-/Healthcare-Studie die komplette Standard-Ordnerstruktur (00_Admin … 09_Dokumente) an und erzeugt ein typgerechtes Berichtsskelett, das mit den Agent-Outputs befuellt und ueber den docx-Skill zu DOCX/PDF wird. Diesen Skill verwenden wenn der Benutzer fragt: "neue Studie anlegen", "Studie aufsetzen", "Dossier erstellen", "Projektordner Studie", "Machbarkeitsstudie starten", "Berichtsskelett", "Studien-Vorlage", "Studie gerüsten", "neues Studienprojekt". Die Mantelstufe um die Skills machbarkeit (Typ A/B), ankaufspruefung (Typ C) und healthcare-wirtschaftlichkeit — erzeugt das Gefaess, die Fach-Skills fuellen es.
---

# JANS Studien-Generator (Dossier-Engine)

## Contract

- **Trigger:** Greift, sobald eine neue Studie aufgesetzt werden soll — Ordnerstruktur + Berichtsskelett. Mantelstufe vor/um die Fach-Skills `machbarkeit`, `ankaufspruefung`, `healthcare-wirtschaftlichkeit`.
- **Inputs:** Projektnummer (z.B. 2701), Projektname/Objekt, Studientyp (A Volumen / B Wirtschaftlichkeit / C TDD / H Healthcare), Ort. Optional Basispfad (Default: `OneDrive/AR - 03 Studien`).
- **Output-Ablage:** Projektordner `OneDrive/AR - 03 Studien/<nr> <name>/` mit 10er-Ordnerstruktur; Berichtsskelett als Markdown in `09_Dokumente/` (`YYMMTT_Berichtsskelett_<typ>.md`). Finaler Bericht: DOCX+PDF via `docx`-Skill + `scripts/docx2pdf.sh`, doppelte Ablage (AI-Hub-Output + Projektordner).
- **Abhaengige Rules:** dateinamen-konvention, dokument-layout-standard, umlaute-konvention, identifikatoren-verifizieren (Projektnr./Adresse), bkp-2017-referenz + Korrektur-Pflicht.
- **Vorgelagert:** — (Studien-Auftrag liegt vor)
- **Nachgelagert:** machbarkeit / ankaufspruefung / healthcare-wirtschaftlichkeit (fuellen das Skelett), honorarberechnung-sia102

## Deine Aufgabe

Du erzeugst das **Gefaess** einer JANS-Studie: die immer gleiche Ordnerstruktur (aus der
`_MAQ`-Vorlage) und ein **typgerechtes Berichtsskelett** nach dem JANS-Standardaufbau, damit
jede Studie schnell, vollstaendig und markenkonform startet. Die fachliche Befuellung machen
die Fach-Skills; du lieferst Struktur + Skelett + den Verweis auf die passende Goldstandard-Vorlage.

```
studien-generator  →  machbarkeit / ankaufspruefung / healthcare-wirtschaftlichkeit  →  korrektur → Ablage
Gefaess + Skelett       Fachinhalt (Agent-Outputs)                                       QS         DOCX/PDF
```

## Standard-Ordnerstruktur (_MAQ)
`00_Admin · 01_Plaene · 02_Korrespondenz · 03_BKP · 04_KostenTermine · 05_Bilder ·
06_Reglemente · 07_Referenzen · 08_Publikationen · 09_Dokumente`

## Berichtsskelett je Typ (Details im Tool)
- **A Baurecht/Volumen:** Ausgangslage → Status Quo → ÖR-Situation → Baufeld/Abstaende →
  Variantenstudie → Fazit/Kennwerte → Erstellungskosten.
- **B Wirtschaftlichkeit:** wie A + Controlling Fact Sheet (Residualwert/Marge/Sensitivitaet/Ampel).
- **C TDD:** Projektgrundlagen → Leistungsumfang/Team → **Bauherren-Fragenkatalog** →
  Zustandsbewertung BKP (3-Ampel) → CapEx-Fahrplan (10 J) → Rote Flaggen.
- **H Healthcare:** wie A + Raumprogramm-Verifizierung + Pflegebetrieb-Wirtschaftlichkeit.

Struktur und Inhaltslogik: `skills/machbarkeit/wissensbasis/05_berichtsstruktur-und-inputs.md`.
Goldstandard-Vorlagen (oeffnen, Layout uebernehmen): `skills/machbarkeit/referenzen/README.md`.

## Workflow
1. **Scaffolden** (Ordner + Skelett anlegen):
   ```
   python3 /Volumes/daten/jans-ai-hub/skills/studien-generator/tools/scaffold_studie.py \
     --nr 2701 --name "Musterstrasse 1" --typ A --ort "8000 Zuerich" [--dry-run]
   ```
   `--dry-run` zeigt Skelett-Vorschau ohne zu schreiben. Existiert der Ordner, werden Ordner
   ergaenzt und das Skelett NICHT ueberschrieben (kein Datenverlust).
2. **Goldstandard-Vorlage** zum Typ aus `machbarkeit/referenzen/README.md` oeffnen, Layout/
   Gliederung als Muster nehmen.
3. **Fachinhalt** ueber den passenden Skill erzeugen (machbarkeit/ankaufspruefung/
   healthcare-wirtschaftlichkeit) und ins Skelett einfuellen.
4. **DOCX/PDF** via `docx`-Skill (Layout `dokument-layout-standard`, Adresse Grubenstrasse 37) +
   `scripts/docx2pdf.sh`; **doppelte Ablage**; vor Ausgabe durch Skill `korrektur`.

## Hinweise
- Der Generator schreibt nur in `OneDrive/AR - 03 Studien` (Projekt-Archiv), nichts ins Repo.
- Projektnummer-Konvention wie im Archiv (JJNN, z.B. 2701). Adresse/Parzelle verifizieren
  (Rule `identifikatoren-verifizieren`).
- Knuepft an die offene Dossier-Engine-Idee an (Memory `project_dossier_engine`).
