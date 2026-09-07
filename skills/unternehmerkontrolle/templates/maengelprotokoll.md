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

## Rüge
Mängelrüge je Unternehmer als Schreiben mit Kopie an die Bauherrschaft (ergänzt 07.09.2026
nach dem Audit gegen `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`,
Prinzipien 04.36, 05.14).
```
Mängelrüge Nr.      [..] vom [TT.MM.JJJJ]   an [Unternehmer], Kopie Bauherrschaft
Mängel Nr.          [..] (aus der Tabelle oben)
Frist zur Behebung  [TT.MM.JJJJ]
Androhung Ersatzvornahme (Ziff. 8/14 WV)   [ ] ja
Entdeckungsdatum bei verdeckten Mängeln    [TT.MM.JJJJ]   (60-Tage-Frist bis [TT.MM.JJJJ])
Versand am [TT.MM.JJJJ] durch [BL]   Empfangsbestätigung [ ]
```

## Hinweise
- Frist verbindlich setzen; bei Fristversaeumnis Ersatzvornahme auf Kosten des UN
  (Ziff. 8/14 WV) ankuendigen.
- Offene Maengel parallel als **Pendenzen** fuehren (Skill `pendenzenliste`) und
  Termine nachfuehren (Skill `terminplanung`).
- Rueckbehalt 10 % bis vollstaendige Behebung halten.
