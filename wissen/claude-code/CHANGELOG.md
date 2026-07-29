# CHANGELOG — KB `claude-code`

Neueste Eintraege zuoberst.

## 2026-07-29 (Nachtrag) — Entscheide Raphael zu den offenen Kandidaten

- Drei-Marken-/Website-Strategie verworfen: beide DOCX im OneDrive-Ordner `Agenten`
  geloescht (SharePoint-Papierkorb). Ordner `Prompts` komplett geloescht.
- 4-Agenten-Blaupause (Indexer, Baueingabe-Check, Brandschutz, QA-Trace) als
  Skill-Kandidat aufgenommen; Destillat im [[methoden-register]], Pendenz fuer
  hub-chef im Logbuch.
- Register + QUESTIONS nachgefuehrt, Scan-Stand neu eingefroren (8 Ordner).

## 2026-07-29 — Methoden-Register + SPW-Destillat + Lern-Loop `methoden-radar`

- Vollanalyse des OneDrive-Ordners `03 Prompteingaben` (alle 9 Unterordner, Auftrag
  Raphael): Spec, Anthropic-Lecture und Archetypen waren bereits implementiert;
  «Methode SPW» erwies sich als die Video-Blaupause des bestehenden Wissens-Layers
  (inkl. wortgleicher 7 Audits im Skill `wissenscheck`), war aber nirgends als Quelle
  registriert.
- `wiki/methode-spw-wissensbasis.md` neu — Destillat der 30 Screenshots + Abgleich
  Video ↔ Hub-Implementation (kein inhaltliches Delta gefunden).
- `wiki/methoden-register.md` neu — kanonisches Register aller Quellen aus
  `03 Prompteingaben` mit Destillat-/Implementations-/Trainingsstand und
  Verifikations-Rotation; 3 offene Kandidaten fuer Raphael erfasst (Drei-Marken-
  Strategie, Baueingabe-Check/Trace-Matrix, Ordner Prompts).
- `raw/_INGESTED.md` neu (fehlte in dieser KB) — Lecture-Slides + externe Quellen.
- Lern-Loop `methoden-radar` eingerichtet: `scripts/methoden-scan.sh` (deterministischer
  Delta-Scan) + Scheduled Task woechentlich Mo 21:00. Konzept:
  `docs/konzepte/260729-Methoden-Lern-Loop/`.
- INDEX + QUESTIONS nachgefuehrt.

## 2026-07-29 — KB angelegt

- KB `wissen/claude-code/` neu angelegt (Ordner `raw/ wiki/ outputs/`, `CLAUDE.md`,
  dieses CHANGELOG). Anlass: Anthropic-Lecture vom 29.07.2026; Auftrag Raphael,
  die Prinzipien in die Hub-Architektur zu implementieren.
- `raw/`: 32 Lecture-Slides (IMG_5458 bis IMG_5489) aufgenommen, Quelle
  `OneDrive/AD - 01 Geschaeftsfuerung/JANS AI/260729 Antrophic Lecture/`.
- `wiki/lecture-260729-anthropic.md` — vollstaendiges Destillat aller 32 Slides
  (acht Tips, Kontext-Hierarchie, Team-Matrix, Keybindings, SDK, Multi-Claude)
  inkl. eines Abschnitts, was die Lecture NICHT behandelt (Ressourcengrenzen).
- `wiki/kontext-architektur.md` — gemessener Ist-Zustand der vier Kontext-Schichten
  im Hub, Grundkontext-Budget vor/nach der Diaet 2.0, Entscheidungsregel
  «automatisch gegen lazily».
- `wiki/INDEX.md` und `wiki/QUESTIONS.md` angelegt; fuenf offene Punkte erfasst
  (Enterprise-Policy-Ebene, GitHub-App, User-Level-Slash-Commands, Versionsbindung,
  exakte Tokenzahl).
