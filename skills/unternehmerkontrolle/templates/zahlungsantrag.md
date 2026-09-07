# Zahlungsantrag (Akonto- oder Schlusszahlung)

Angelegt 07.09.2026 nach dem Audit gegen `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` (Prinzip 04.30, 02.14, 07.3). Reifegrad R2, Benutzer-Validierung ausstehend.

Die Freigabe einer Akonto- oder Schlussrechnung ist ein Beleg, kein Vermerk. Der
unterzeichnete Antrag ist der Buchungsbeleg für den Skill `kostenkontrolle` (Säule
Zahlungen) und schreibt den Kontoauszug des Gewerks fort (`kontoauszug-gewerk.md`).

## Kopf
```
Antrag Nr.      [ZA-XX]                 Datum        [TT.MM.JJJJ]
Projekt         [Objekt]                Gewerk       BKP [XXX] [Gewerk] / LOS [Nr.]
Unternehmer     [Firma, IBAN]           Werkvertrag  vom [TT.MM.JJJJ], CHF [Vertragssumme]
Rechnung        Nr. [..] vom [TT.MM.JJJJ]   Art  [ ] Akonto Nr. [..]  [ ] Regie  [ ] Schluss
Beleg-Nr. Baubuchhaltung  [..]          Zahlungskonto  [Baukredit | Eigenmittel]
```

## Prüfung
```
Leistungsstand geprüft am [TT.MM.JJJJ] durch [BL]      Leistungsaufstellung liegt bei [ ]
Rechnungsbetrag brutto               CHF [..]
Geprüft / anerkannt                  CHF [..]   (Differenz zur Rechnung: CHF [..], Grund [..])
Rückbehalt [10 | 5 | 20] %           CHF [..]   (Art. 149-150; kein Rückbehalt auf Regie/Teuerung)
Bisher bezahlt (Akonti)              CHF [..]
Zur Zahlung freigegeben, vor Skonto  CHF [..]   Skonto [x] % bei Zahlung bis [TT.MM.JJJJ]
Konditionen, Abzüge und MwSt gemäss beiliegender Rechnung.
```

## Teilbeträge je Konto (für die Baubuchhaltung)
| BKP-Konto | Bezeichnung | Vertrag CHF | Diverse (Regie/NT) CHF | Betrag CHF |
|---|---|---|---|---|
| [XXX] | … | … | … | … |
| Total | | … | … | … |

## Unterschriften
```
Bauleitung: …  Datum: …          Bauherrschaft: …  Datum: …
```
Beilagen: Rechnung, Leistungsaufstellung, Kontoauszug Gewerk.

## Pflege
Nach Unterzeichnung den Betrag als Buchung im `kontoauszug-gewerk.md` eintragen und den
Antrag als Beleg an den Skill `kostenkontrolle` übergeben (Beleg-Nr. Baubuchhaltung).
