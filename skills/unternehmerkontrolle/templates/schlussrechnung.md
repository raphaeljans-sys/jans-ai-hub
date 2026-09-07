# Schlussrechnung Gewerk

Angelegt 07.09.2026 nach dem Audit gegen `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` (Prinzip 04.37, 05.13). Reifegrad R2, Benutzer-Validierung ausstehend.

Ergebnis aller Einträge des Gewerks (Werkvertrag, NT-Register, Schlussausmass, gebuchte
Zahlungen). Fristen Art. 154-155 SIA 118 (Prüfung 1 Monat, Nachfrist, dann fällig) ins
Fristenregister. Ohne schriftlichen Vorbehalt des Unternehmers kein weiterer Anspruch
(Art. 156). Fundstellen gemäss `SKILL.md`; vor dem Zitieren das Feld `status:` des
Destillats `wissen/normen/destillate/sia-118-1991.md` prüfen.

## Kopf
```
Projekt       [Objekt]                 Gewerk        BKP [XXX] [Gewerk] / LOS [Nr.]
Unternehmer   [Firma]                  Werkvertrag   vom [TT.MM.JJJJ], CHF [Vertragssumme]
Abnahme am    [TT.MM.JJJJ]             SR Unternehmer vom [TT.MM.JJJJ], eingegangen am [TT.MM.JJJJ]
```

## Abrechnung
```
Vertragspositionen nach Schlussausmass       CHF [..]   ([..] % des Vertrags)
Summe Ergänzungen (ERBR/ERNE)                CHF [..]
Summe Abzüge (ABBR/ABNE)                     CHF [..]
Regie (Rapporte R-01 …)                      CHF [..]
Total netto exkl. MwSt                       CHF [..]
Rabatt / Skonto / Nebenabzüge gemäss WV      CHF [..]
MwSt 8,1 %                                   CHF [..]
Total Abrechnung inkl. MwSt                  CHF [..]
Bezahlte Akonti (ZA-01 …)                    CHF [..]
Restbetrag                                   CHF [..]   davon Rückbehalt fällig nach Art. 152
```

## Sicherheit
```
Solidarbürgschaft nach Art. 181: [10 | 5] % von CHF [Vergütungssumme] = CHF [..]
Garantieschein eingegangen am [TT.MM.JJJJ] (`garantieschein.md`)   Revisionspläne abgegeben [ ]
```

## Offene Pendenzen (aus `maengelprotokoll.md`)
| Nr | Mangel | Frist | Status |
|---|---|---|---|
| 1 | … | [TT.MM.JJJJ] | [offen/behoben] |

## Gegenzeichnung
Der Unternehmer anerkennt diese Abrechnung per Saldo aller Ansprüche aus dem Werkvertrag.
```
Unternehmer: …  Datum: …     Bauleitung: …  Datum: …     Bauherrschaft: …  Datum: …
```

## Pflege
Schlusszahlung erst nach Unterzeichnung und Deponierung von Garantieschein und
Revisionsplänen (Ziff. 8 WV). Restbetrag als Zahlungsantrag (`zahlungsantrag.md`, Art
Schluss) an den Skill `kostenkontrolle` übergeben; Kontoauszug des Gewerks abschliessen.
