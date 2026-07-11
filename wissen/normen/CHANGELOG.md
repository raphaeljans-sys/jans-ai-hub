# CHANGELOG — KB Normen

## 2026-07-11
- KB angelegt (Gerüst nach WISSEN-CLAUDE.md: raw/wiki/outputs + destillate/ + training/).
- `training/norm-inventar.md` automatisch erzeugt: 528 Dateien über die Familien
  SIA (inkl. Gesamtverzeichnis), VKF, DIN, VSS, RAL gescannt; Prioritäten gesetzt
  (P1 = Skill-Kernnormen SIA 102/103/105/111/112/118/380/416/451 + VKF Norm/Richtlinien).
- Skill `normen` (Router) und Rule `normen-referenz` erstellt; Nacht-Loop
  `normen-training-nacht` (täglich 22:00) aufgesetzt.
- Entscheide Raphael 11.07.2026: alle Norm-Familien im Scope; SharePoint bleibt
  einzige PDF-Quelle (keine Kopien); Zugriff via Skill + Rule; Destillierung im
  nächtlichen Loop bis das Inventar abgearbeitet ist.
