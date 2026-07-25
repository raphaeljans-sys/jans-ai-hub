# KB Planungsgrundlagen — Schema

Wissensbasis hinter dem Skill `planungsgrundlagen`. Destilliert die vier buerofweiten
**PL-Grundordner** (SharePoint) zu gepflegten Wiki-Artikeln. Folgt dem Meta-Schema
`wissen/WISSEN-CLAUDE.md` (zuerst lesen).

## Fokus & vier Domaenen

| Domaene (Prefix der Wiki-Dateien) | Quelle (PL-Ordner) | Inhalt |
|---|---|---|
| `kartenportale-` | PL - 01 Kartenportale | Geoportale, OEREB, EGRID, Kataster, Zonenplan, Hoehenmodell, Orthofoto, Eigentumsabfrage, Datenformate |
| `recht-norm-` | PL - 02_Recht_Norm | Gesetze (Bund/SZ/ZH), Rechtsprechung, Dispens, SIA/VKF/DIN-Normen — **verlinkt** zu `[[baurecht]]`-KB, nicht dupliziert |
| `brandschutz-` | PL - 03 Brandschutz | VKF-Norm 2015, Richtlinien, EI/RF-Klassen — **verweist** auf Skill `brandschutz`, nicht dupliziert |
| `energie-` | PL - 04 Energie | PV/Solar, U-Wert/SIA 380-1, Energienachweis, ZH-Formulare |

## Schreibregeln (zusaetzlich zum Meta-Schema)

- **Nie d-/erfinden:** kein EGRID, keine Parzelle, kein Kennwert ohne Beleg. Unsicheres bleibt
  `speculative` mit Verifikationsvermerk (Rule `identifikatoren-verifizieren`).
- **Datenstand zwingend:** jeder rechtliche/energetische/kartenbezogene Wert mit Stand
  (Monat/Jahr oder Normversion). >18 Mt. ohne Pruefung → ⚠ + Eintrag in `wiki/QUESTIONS.md`.
- **Bezugswege konkret:** ein Geoportal-Artikel nennt URL/Endpunkt, noetige Eingabe (Adresse/
  EGRID/Koordinate), Ausgabeprodukt, ob Login noetig, und das Kantonsgebiet.
- **Kein Doppel zu bestehenden KBs/Skills:** Recht/Brandschutz werden **verlinkt** (`[[…]]` /
  Skill-Verweis), nicht abgeschrieben. Hier steht nur, was die Grundlagenbeschaffung braucht.
- **Reale JANS-Faelle einweben:** belegte Bezuege (z.B. Giebelweg 12 → EGRID CH879777718909)
  als Referenz-Benchmark zitieren.

## Verbindung zum Harness
- Skill: `skills/planungsgrundlagen/SKILL.md`
- Connector: `skills/planungsgrundlagen/connectors/geo-zh.mjs`
- Agenten: `geodaten-beschaffer` (kartenportale), `energie-berater` (energie)
- Training: `training/PROGRAMM.md` + `training/curriculum.md`, Scheduled Task
  `planungsgrundlagen-training` (alle 2 Tage).

## Bibliothekar-Rolle
Active-with-flagging (Rule `wissens-bibliothekar.md`): schreiben/verlinken/indexieren ohne
Rueckfrage, jede Aenderung im `CHANGELOG.md`; Pause nur vor Destruktivem.
