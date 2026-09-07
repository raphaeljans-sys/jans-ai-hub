# Kontoauszug Gewerk (Unternehmerbuchhaltung)

Angelegt 07.09.2026 nach dem Audit gegen `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` (Prinzip 04.27, 04.29, 04.31). Reifegrad R2, Benutzer-Validierung ausstehend.

Je Gewerk ein Kontoauszug, fortgeschrieben bei jedem Nachtrag, jeder Akontofreigabe und
der Schlussrechnung. Er bleibt von der Baubuchhaltung des Bauherrn nach BKP (Skill
`kostenkontrolle`) getrennt; verbunden sind beide über LOS-Nummer und BKP-Konten.
Regie, Teuerung und Ausmassreserve laufen in der Spalte «Diverse», nie im Vertrag.

## Kopf
```
Projekt       [Objekt]                 Gewerk       BKP [XXX] [Gewerk] / LOS [Nr.]
Unternehmer   [Firma]                  Stand        [TT.MM.JJJJ]
Vergleichbare KV-Summe (KV abzüglich Rückstellung Regie/Teuerung/Ausmassreserve)   CHF [..]
```

## Vergabe
```
Hauptvertrag vom [TT.MM.JJJJ]                              CHF [..]
Nachträge (Summe Ergänzungen minus Abzüge, NT-Register)    CHF [..]
Total Vergabe                                              CHF [..]   = [..] % der vergleichbaren KV-Summe
```

## Stand
```
Berücksichtigte Leistung (letzte Leistungsaufstellung / Ausmass)   CHF [..]
Rückbehalt [x] %                                                   CHF [..]
Total Guthaben Unternehmer                                         CHF [..]
Total gebuchte Zahlungen (ZA-01 …)                                 CHF [..]
Offen                                                              CHF [..]
```

## Je Konto
| BKP-Konto | Vertrag CHF | Diverse (Regie/Teuerung/Ausmassreserve) CHF | Total CHF | Bezahlt CHF |
|---|---|---|---|---|
| [XXX] | … | … | … | … |
| Total | … | … | … | … |

## Buchungen
| Datum | Beleg (WV/NT/ZA/SR) | Text | Vertrag CHF | Diverse CHF | Zahlung CHF |
|---|---|---|---|---|---|
| [TT.MM.JJJJ] | WV | Hauptvertrag | … | | |
| [TT.MM.JJJJ] | NT-01 | … | … | | |
| [TT.MM.JJJJ] | ZA-01 | Akonto Nr. 1 | | | … |

## Pflege
Die vergleichbare KV-Summe kommt aus dem Skill `kostenkontrolle` bzw. dem Vergabeantrag
(Skill `ausschreibung`, Phase 05). Jede Zeile trägt die Beleg-Nummer des auslösenden
Formulars (`nachtrag-formular.md`, `zahlungsantrag.md`, `schlussrechnung.md`).
