# Baubuchhaltung / Kostenrapport

BKP-gegliederte Kostenkontrolle (Budget ↔ Verpflichtung ↔ Zahlung ↔ Prognose).
Arbeitsformat real: `.xlsx`. Reifegrad R2.
Belege ergänzt 07.09.2026 (Audit gegen `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`): Änderungsprotokoll, Vergabeantrag, Zahlungsantrag, Kontoauszug je VE; Kostenrapport auf 13 Spalten erweitert.

## Kopf
```
Projekt   [Nr., Objekt, Adresse]          Stand per    [TT.MM.JJJJ]   Rapport Nr. [XX]
Bauherr   [Name, Adresse]                 Projektstand [Phase]
KV-Basis  [Datum KV, Quelle kostenschaetzung]   ratifiziert am [TT.MM.JJJJ] durch [Bauherr]
Genauigkeit  [+/- x %]   Preisstand [Index, Datum, Punkte]   Währung CHF
MwSt      [inkl. / exkl.], Satz 8,1 % (0 % bei [Grundstück, Gebühren])   Unvorhergesehenes Konto [581-01]
```

## Kostenstand je Konto (Kostenrapport)
| Konto | Bezeichnung | VE / Unternehmer | KV Original | Mutationen | KV mutiert | Vergabe (WV+NT) | Zahlungen | Abgrenzung | Kostenerwartung | Abw. CHF | % | Status |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 211-01 | Baumeisterarbeiten | BM Muster AG | … | … | … | … | … | … | … | … | … | ok |
| **21** | **Rohbau 1** | | Σ | Σ | Σ | Σ | Σ | Σ | Σ | Σ | Σ | |
| **2** | **Gebäude** | | Σ | Σ | Σ | Σ | Σ | Σ | Σ | Σ | Σ | |
| **Total BKP 1 bis 5** | | | Σ | Σ | Σ | Σ | Σ | Σ | Σ | Σ | Σ | |

- KV mutiert = KV Original + Mutationen (nur mit unterschriebenem Änderungsprotokoll).
- Abgrenzung = erbrachte, noch nicht fakturierte Leistung (Ausmassstand je VE, Quelle unternehmerkontrolle).
- Kostenerwartung = Vergabe + Abgrenzung offener Vergaben + erwartete NT + Diverse (Regie/Teuerung/Ausmassreserve).
- % = Kostenerwartung / KV mutiert. Status je Konto: «ok» bis 100 %, «!» über 100 %, «!!!» über [Schwelle, z.B. 105 %] oder über CHF [Schwelle].
- Summen auf BKP 2- und 1-stellig sind Pflicht; die Ampel gilt je Konto, nicht nur im Total.

## Änderungsprotokoll (Mutation)
Nr. [MU-XX]   Datum [TT.MM.JJJJ]   Bezug [Sitzung/Protokoll Nr., Datum]
Beschrieb der Änderung: [Bestellungsänderung / Projektänderung / Umbuchung]
| Konto | Bezeichnung | VE | Nachtrag Vertrag | Diverse | Mehr-/Minderkosten | Umbuchung aus [581-01 Reserve] |
|---|---|---|---|---|---|---|
Total KV mutiert per [Datum]: CHF …   (KV Original CHF … + Mutationen kumuliert CHF …)
Unterschrift Architekt ________   Unterschrift Bauherr ________   Beilagen: [NT-Formular, Offerte]

## Vergabeantrag
Nr. [VA-XX]   Datum [TT.MM.JJJJ]   VE [Kürzel, Bezeichnung]   Unternehmer [Firma, Ort]
Werkvertrag Nr. [..] vom [Datum]   Vertragssumme netto exkl. MwSt CHF …   inkl. MwSt 8,1 % CHF …
| Konto | Bezeichnung | KV mutiert | davon Diverse (Regie / Teuerung / Ausmassreserve / Rundung) | vergleichbare KV-Summe | Vertragssumme | Differenz CHF | Differenz % |
|---|---|---|---|---|---|---|---|
Begründung / Abweichung zur Vergabeempfehlung: …
Unterschrift Architekt ________   Unterschrift Bauherr ________   Beilagen: Vergabeempfehlung, Offertvergleich

## Abweichungs-Kommentar (Bauherr)
```
Wesentliche Abweichungen (> [Schwelle] CHF oder > [x] %):
- BKP …: [Ursache, Massnahme, Auswirkung Gesamtkosten]
Gesamtprognose vs. KV: [+/− CHF, +/− %]
```

## Zahlungsantrag (Akontofreigabe je VE, an den Bauherrn)
Nr. [ZA-XX]   Datum [TT.MM.JJJJ]   VE [Kürzel]   Unternehmer [Firma]   Empfänger-IBAN [..]
Rechnung Nr. [..] vom [Datum]   Akonto Nr. [x]   Betrag vor Skonto CHF …   Skonto [x %, 30 Tage]
Zahlbetrag CHF …   fällig [TT.MM.JJJJ] (SIA 118 Art. 190, 30 Tage)   Zahlungskonto Bauherr [Baukredit/Eigenmittel]
| Konto | Bezeichnung | Teilbetrag dieser Zahlung | Zahlungen bisher | Zahlungen kumuliert | vergleichbare KV-Summe | % |
|---|---|---|---|---|---|---|
Konditionen, Abzüge und MwSt gemäss beiliegender Rechnung. Leistungsstand geprüft (unternehmerkontrolle) am [Datum].
Unterschrift Architekt ________   Unterschrift Bauherr ________   Beilagen: Rechnung, Leistungsaufstellung, Kontoauszug VE

## Kontoauszug je VE
VE [Kürzel, Bezeichnung]   Unternehmer [Firma, Kontakt, Bank]
Vergleichbare KV-Summe CHF …
Hauptvertrag CHF …  + Nachträge CHF …  = Total Vergabe CHF … ([x] % der KV-Summe)
Berücksichtigte Leistungen (Ausmassstand) CHF …  − Rückbehalt [10 %, gestaffelt Art. 150] CHF …  = Guthaben CHF …
Gebuchte Zahlungen CHF …  offen CHF …
| Konto | Vertrag | Diverse | Total |
|---|---|---|---|
Bemerkungen: …

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
