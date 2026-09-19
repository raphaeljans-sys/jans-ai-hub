---
title: Synergie-Lauf 40 (Tagestakt 19.09.2026)
date: 2026-09-19
status: established
sources:
  - git log origin/main seit 2026-09-18 17:10 (SSD-Klon, HEAD d1cccab19), 114 Commits
  - skills/pdf2dwg/SKILL.md (42473400a), connectors/WEGE.md, wissen/planungsgrundlagen/outputs/2026-09-19_dwg-export-vom-macbook-pro-via-ssh-mini.md
  - skills/studien-generator/tools/md2docx.py + templates/dokument-layout/BUILD-ANLEITUNG.md (d8777c85f)
  - skills/tenant-hygiene/SKILL.md (ab70c7907), rules/jans-dna-facetten.md (8ce9e3bb1), rules/betrieb-chronik.md (45af6186c)
---

# Synergie-Lauf 40, 19.09.2026

## Big Points

1. **SYN-93 neu, umgesetzt.** Der am 19.09. belegte Weg «DWG vom MacBook Pro aus» (ezdxf aus
   `~/.venvs/volumen3d`, `scp`, `ssh mini '/opt/homebrew/bin/dxf2dwg …'`, `scp` zurueck) stand in
   `skills/pdf2dwg/SKILL.md` und im planungsgrundlagen-Output, nicht in `connectors/WEGE.md`. Dort
   stand nur der Skill mit einem venv, das es laut Skill nur auf dem Mac Mini gibt. Querverweis in
   WEGE nach dem SYN-92-Absatz gesetzt (1319 → 1330 Zeilen).
2. **SYN-27 bewegt, Kern offen.** `md2docx.py` erfuellt seit heute den Formstandard ohne Optionen;
   die Listen-Neuregelung (keine Bullets in ausgehenden Dokumenten) laesst der Umbau ausdruecklich
   offen und verweist selbst auf SYN-27. Die Vorgabe Raphaels zur Nummerierung fehlt weiterhin.
3. **Sonst ruhig.** Tenant-Quota (1044 GB gemessen) hat keinen zweiten Verbraucher im Hub;
   der Facetten-Auto-Block beruehrt die Anrede-Achse (SYN-88) nicht.

## Nebenbefunde

- Der planungsgrundlagen-Output ordnet die ssh-PATH-Falle der Rule `auto-verbesserungen` 260917b
  zu. Belegt ist sie in `rules/betrieb-chronik.md` (npm/uv/brew) und in WEGE fuer `node`. Nicht
  korrigiert (datierter Report), im Register vermerkt.
- `skills/terminplanung/referenzen/170606 Planungsplanung Ausführung.pdf` wurde von `4dcc94b3b`
  («sync: twin-fidelity-review») aus dem Index entfernt und von `00bbad3ec` drei Minuten spaeter
  wieder aufgenommen. Die Datei liegt unveraendert auf dem NAS. Wahrscheinlich eine
  Unicode-Normalisierung des Dateinamens (Umlaut, Leerzeichen, verstoesst ausserdem gegen die
  ASCII-Dateinamen-Konvention). Kein Synergie-Befund, nur Beobachtung; ein Wiederauftreten waere
  ein Fall fuer die Betriebs-Chronik.
- Lesendes `git log` ueber den SMB-Mount lief in den Timeout; gemessen wurde im SSD-Klon.

## Offen fuer Raphael

- SYN-27: Vorgabe zur Nummerierung in `md2docx.py` (Tiefe; Word-Nummerierung oder Klartext-Praefix).
