# Rule: Identifikatoren verifizieren statt raten

## Regel

Jeder **Identifikator, der in ein Dokument oder eine Mail wandert**, wird vor der
Verwendung aus einer **kanonischen Quelle** verifiziert — nie aus dem Gedächtnis,
aus Datei-/Ordnernamen oder aus dem Kontext «geschätzt». Betroffen:

- **Projektnummern** und Objektbezeichnungen
- **Bauherrschaft** (Firma, Adresse)
- **Adressen** (JANS-Absenderadresse, Empfänger, Submittenten)
- **Termine** (Besichtigung, Eingabefrist, Grobtermine)
- **Firmen-/Personennamen** und Kontaktdaten
- **BKP-Nummern**

## Warum

- Diese Werte landen unverändert in versendeten Dokumenten — ein geratener Wert ist
  ein Fehler beim Kunden, nicht nur im Entwurf.
- Die Session-Analyse zeigt wiederkehrende Korrekturen genau hier (alte Adresse
  Flüelastrasse/Birmensdorferstrasse, falsche Bauherrschaft, Termin-Verwechslung).
- Innerhalb eines Projekts sind viele Werte über alle Lose **identisch** — einmal
  korrekt verifiziert, überall gleich.

## Kanonische Quellen (in dieser Reihenfolge)

| Identifikator | Quelle |
|---|---|
| Projekt / Bauherrschaft | `skills/ausschreibung/projekte/<projektnr>-<kurzname>.md` |
| JANS-Absenderadresse | Rule `jans-absenderadresse.md` + Memory `reference_jans_adresse` |
| Bauherrschaft 2620 | Memory `project_2620_bauherrschaft` (Nova Property Fund) |
| Termine 2620 | Memory `project_2620_besichtigung_grobtermine` (12.06.2026 13:30) |
| Firmen-/Kontaktdaten | macOS-Kontakte; Skill `unternehmerfindung` Stammdaten |
| BKP-Nummern | Rule `bkp-2017-referenz.md` + `references/bkp-2017/` |

## Wie anwenden

### IMMER

1. Vor dem Einsetzen den Wert in der kanonischen Quelle nachschlagen.
2. Existiert keine Quelle: aus einem bereits erstellten, verifizierten Dokument
   (z.B. LV-Stammzeile eines anderen Loses) übernehmen **und dort festhalten**.
3. Bleibt der Wert unklar: ausfüllbare Platzhalterlinie («________________») setzen
   statt zu raten, und beim Benutzer rückfragen.

### NIE

- Bauherrschaft/Adresse aus Datei- oder Ordnernamen ableiten.
- Termine oder Projektnummern aus dem Kontext «schätzen».
- Eine alte Adresse weiterverwenden, ohne gegen `reference_jans_adresse` zu prüfen.

## Geltungsbereich

Alle Skills mit Dokument-/Mail-Output (`ausschreibung`, `offertenpruefung`,
`werkvertrag`, `pendenzenliste`, `protokoll`, `honorarberechnung-sia102`, Agent
`email`, Agent `dokument`). Ergänzt `bkp-2017-referenz.md` und die Projekt-Stammdaten-
Pflicht im Skill `ausschreibung`.
