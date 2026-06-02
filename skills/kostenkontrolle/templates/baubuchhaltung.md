# Baubuchhaltung / Kostenrapport

BKP-gegliederte Kostenkontrolle (Budget ↔ Verpflichtung ↔ Zahlung ↔ Prognose).
Arbeitsformat real: `.xlsx`. Reifegrad R2.

## Kopf
```
Projekt   [Objekt]                Stand per  [TT.MM.JJJJ]
Bauherr   [Name]                  Rapport Nr. [XX]
KV-Basis  [Datum Kostenvoranschlag, Quelle Skill kostenschaetzung]
```

## Kostenstand je BKP
| BKP | Bezeichnung | Budget (KV) | Verpflichtung (WV+NT) | Zahlung (Akonto+SR) | Prognose Endkosten | Abweichung | Bemerkung |
|---|---|---|---|---|---|---|---|
| 211 | Baumeister | … | … | … | … | … | … |
| 271 | Gipser | … | … | … | … | … | … |
| … | … | … | … | … | … | … | … |
| **Total** | | **[Budget]** | **[Verpfl.]** | **[Zahlung]** | **[Prognose]** | **[Abw.]** | |

- **Prognose Endkosten** = Verpflichtung + erwartete offene NT.
- **Abweichung** = Prognose − Budget (positiv = Mehrkosten).
- Reserve/Unvorhergesehenes separat ausweisen.

## Abweichungs-Kommentar (Bauherr)
```
Wesentliche Abweichungen (> [Schwelle] CHF oder > [x] %):
- BKP …: [Ursache, Massnahme, Auswirkung Gesamtkosten]
Gesamtprognose vs. KV: [+/− CHF, +/− %]
```

## Schlussabrechnungs-Pruefung (je Gewerk)
```
Gewerk BKP [XXX] [Gewerk]
Werkvertrag CHF …  + genehmigte NT CHF …  = Soll CHF …
SR Unternehmer CHF …   Differenz CHF …
[ ] Ausmass geprueft (nur ausgefuehrte Mengen, Ziff. 8 WV)
[ ] Skonto/Rabatt korrekt   [ ] Rueckbehalt/Garantie 10 % beruecksichtigt
[ ] Regie/NT belegt         Freigabe Schlusszahlung: [ ] ja  Betrag CHF …
```

## Kennwerte
```
GF [m2] / GV [m3] : …
Erstellungskosten BKP 1–5 CHF … → CHF/m2 …  · CHF/m3 …
(an Skill kostenschaetzung zur Benchmark-Pflege uebergeben)
```

## Garantieverfalldaten-Liste
| Gewerk | Unternehmer | Abnahme | Garantie 2 J. bis | Verjaehrung 5 J. bis | Sicherheit (Form) |
|---|---|---|---|---|---|
| BKP … | … | [TT.MM.JJJJ] | … | … | [Buergschaft/Bankgar./Rueckbehalt] |
