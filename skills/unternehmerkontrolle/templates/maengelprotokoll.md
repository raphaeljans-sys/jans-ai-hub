# Maengelprotokoll

Maengelaufnahme mit Behebungsfristen. Abgeleitet aus SIA 118 + Skill
`pendenzenliste` (Maengel sind Pendenzen). Reifegrad R2.

## Kopf
```
Projekt      [Objekt]            Gewerk   BKP [XXX] [Gewerk]
Unternehmer  [Firma]             Datum    [TT.MM.JJJJ]
Erfasst von  [BL]                Bezug    [Abnahme vom … | Begehung | Ruege]
```

## Maengel
| Nr | Ort / Position | Maengelbeschrieb | Foto | Verantwortlich | Frist | Status |
|---|---|---|---|---|---|---|
| 1 | [Raum/Bauteil] | [was ist mangelhaft] | [Datei] | [UN] | [TT.MM.JJJJ] | offen |
| 2 | … | … | … | … | … | offen |

Status: `offen` · `in Behebung` · `behoben` · `Nachkontrolle ok`.

## Nachkontrolle
```
Datum Nachkontrolle: [TT.MM.JJJJ]
[ ] alle Maengel behoben → Freigabe Schlusszahlung
[ ] Restmaengel (Nr. …) — neue Frist: [TT.MM.JJJJ]
```

## Hinweise
- Frist verbindlich setzen; bei Fristversaeumnis Ersatzvornahme auf Kosten des UN
  (Ziff. 8/14 WV) ankuendigen.
- Offene Maengel parallel als **Pendenzen** fuehren (Skill `pendenzenliste`) und
  Termine nachfuehren (Skill `terminplanung`).
- Rueckbehalt 10 % bis vollstaendige Behebung halten.
