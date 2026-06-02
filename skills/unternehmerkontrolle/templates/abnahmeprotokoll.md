# Abnahmeprotokoll (SIA 118, Art. 157 ff.)

Abgeleitet aus SIA Norm 118 (Abnahme) + JANS-Werkvertrag + Skill `protokoll`.
Reifegrad R2 — Benutzer-Muster zur Validierung ausstehend.

## Kopf
```
Projekt          [Objekt, Strasse, PLZ Ort]
Bauherrschaft    [Name]
Bauleitung       [JANS — Raphael Jans Architekten ETH, Grubenstrasse 37, 8045 Zuerich]
Gewerk           BKP [XXX] [Gewerk]
Unternehmer      [Firma]
Werkvertrag      vom [TT.MM.JJJJ], Vertragssumme CHF [Betrag]
Art der Abnahme  [gemeinsame Pruefung Art. 158 | stillschweigend Art. 164 | Teilabnahme]
Datum/Ort        [TT.MM.JJJJ], [Ort]
Anwesend         [BL: …] · [UN: …] · [BH: …]
```

## Befund
```
[ ] Werk abgenommen ohne Maengel
[ ] Werk abgenommen unter Vorbehalt der nachstehenden Maengel
[ ] Abnahme verweigert (wesentliche Maengel) — Begruendung: …
```

## Maengelliste (Verweis auf maengelprotokoll.md)
| Nr | Ort/Position | Maengelbeschrieb | Behebung bis | erledigt |
|---|---|---|---|---|
| 1 | … | … | [TT.MM.JJJJ] | [ ] |

## Fristen & Sicherheiten (Folge der Abnahme)
- **Garantiefrist** 2 Jahre ab heute (Ruegerecht verdeckte Maengel Art. 179/1).
- **Verjaehrung** 5 Jahre (10 Jahre bei absichtlich verschwiegenen Maengeln).
- **Garantieschein/Buergschaft** 10 % der Abrechnungssumme zu deponieren
  (Art. 181 SIA 118) → `garantieschein.md`.
- **Revisionsplaene** / Bedienungsanleitungen abgegeben: [ ] ja [ ] nein.
- **Schlussrechnung** freigegeben nach Behebung + Garantie-Deponierung
  (→ Skill `kostenkontrolle`).

## Garantieverfalldaten (in Liste uebernehmen)
- Garantieablauf: [Abnahmedatum + 2 J.] · Verjaehrung: [Abnahmedatum + 5 J.]

## Unterschriften
```
Bauleitung: …   Unternehmer: …   Bauherrschaft: …
```
