---
description: Twin-Harness — Fidelity-Gate auf Zuruf, Status, Training/Review, Selbstfragen
---

# /twin — der digitale Zwilling

Steuert den Personalisierungs-Harness (Skill `twin`). Argument bestimmt die Aktion:

- `/twin <Text/Erzeugnis>` oder `/twin gate` — **Fidelity-Gate** auf Zuruf: jagt das
  Erzeugnis durch `twin-chef` (nach `korrektur`), gibt veredelte Fassung + Chef-Bericht.
- `/twin status` — Kurzlage: KB-Reifegrad je Facette (status/last_updated aus
  `wissen/twin/wiki/`), letzter Fidelity-Score aus `wissen/twin/outputs/`, offene Fragen.
- `/twin trainieren` — Mail-Training **jetzt**: authentischen Korpus ziehen (Sent Items,
  aeltest zuerst), Facetten-Marker destillieren (Workflow B des Skills).
- `/twin review` — Fidelity-Review **jetzt**: Selbsttest, Drift-Report, DNA neu kompilieren
  (`python3 skills/twin/tools/build_dna.py`), neue Selbstfragen (Workflow C).
- `/twin fragen` — `twin-fragesteller` aufrufen: 3–6 neue Fragen an Raphael zum Kopieren
  (reiner Text), Eintrag in `wissen/twin/wiki/QUESTIONS.md`.
- `/twin dna` — Gehirn `rules/jans-dna.md` neu aus den Facetten-Wikis kompilieren.

Ohne Argument: `status`.

Hinweis: Das Gate laeuft ueber **ausgehende** Erzeugnisse automatisch (nach `korrektur`).
`/twin` ist fuer manuelles Pruefen, Trainieren und die Pflege gedacht.
