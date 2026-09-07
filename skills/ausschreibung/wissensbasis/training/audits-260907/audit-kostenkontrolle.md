# Audit Skill `kostenkontrolle` gegen das Referenzmodell Bauadministration (BBase-Scan 260907)

Datum: 07.09.2026
Prüfraster: `scratchpad/260907-bbase-scan.md` (Abschnitte 02.4, 02.5, 02.13, 02.14, 03.4, 03.7, 04.7 bis 04.15, 04.23, 04.27 bis 04.35, 04.38, 05.1, 05.3 bis 05.8, 07.1 bis 07.3)
Geprüfte Dateien (nur gelesen, nichts verändert):
- `/Volumes/daten/jans-ai-hub/skills/kostenkontrolle/SKILL.md` (137 Zeilen, Reifegrad R2)
- `/Volumes/daten/jans-ai-hub/skills/kostenkontrolle/templates/baubuchhaltung.md` (53 Zeilen)
- `/Volumes/daten/jans-ai-hub/skills/kostenschaetzung/SKILL.md` (Kopf, Methodik, Ausgabeformat; 194 Zeilen)
- `/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/07_werkvertrag-unternehmerkontrolle.md` (Abschnitt Kostenkontrolle, Z. 30 bis 35)
- ergänzend per grep: `ausschreibung/wissensbasis/04_konditionen.md`, `06_glossar.md`, `13_uebergabe-bauleitung.md`, `ausschreibung/templates/vergabeempfehlung_template.md`, `unternehmerkontrolle/SKILL.md` und `templates/`, `werkvertrag/SKILL.md`

Vorbemerkung: Der Scan liegt seit 07.09.2026 bereits als `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` im Hub (Kopfzeile: Prüfraster für den Loop `bauleitung-training`). Der Skill `kostenkontrolle` verweist noch nicht darauf.

## 01 Abgleichstabelle

Ampel: gruen = abgebildet, gelb = teilweise oder nur implizit, rot = nicht gefunden.

| Prinzip-Nr | Kurzname | Stand im Skill (Datei, Abschnitt, Zitat max. 1 Zeile) | Ampel |
|---|---|---|---|
| 04.7 | Kosten früh beeinflussen (2 %-Regel, Hebel Phase 3) | Phasenkette vorhanden: SKILL.md Contract «Fortsetzung von kostenschaetzung»; die Aussage, dass in der Ausschreibung nur noch rund 2 % zu sparen sind, ist nicht gefunden | gelb |
| 04.8 | Kostenaussage = Menge + Beschrieb + Plan | kostenschaetzung SKILL.md Methodik: Nutzungstyp, Fläche m2 NF, Kostentreiber; Plan/Skizze als dritter Teil nicht gefunden | gelb |
| 04.9a | Genauigkeit, Preisstand (Index, Datum, Punkte), MwSt-Behandlung, Unvorhergesehenes je Kostenaussage | kostenschaetzung: «Bandbreite ausweisen (nie Einzelwert)», «Indexiert auf Kostenstand 10.2025», «Teuerung-Pflicht»; baubuchhaltung.md Kopf nur «KV-Basis [Datum Kostenvoranschlag]», «Reserve/Unvorhergesehenes separat ausweisen»; Indexpunkte und MwSt-Behandlung des KV nirgends als Pflichtfeld | gelb |
| 04.9b | Ohne Toleranzrahmen gilt Nulltoleranz; Haftungsregeln aus Gerichtsentscheiden | nicht gefunden (grep «Nulltoleranz», «Toleranzrahmen», «Kostengarantie» über alle sechs Bauleitungs-Skills leer) | rot |
| 04.10 | KV als Kontenplan und Budget; Ratifizierung fixiert den KV; danach nur Mutationen, nie Überschreiben | SKILL.md Ablauf 1: «Budget aufsetzen, KV BKP-gegliedert uebernehmen»; baubuchhaltung.md eine Spalte «Budget (KV)»; Ratifizierung, Mutation, Änderungsprotokoll nicht gefunden | rot |
| 04.11 / 02.5 | Konti vertikal, Gliederungen horizontal (FG, OGL, ZK) | nicht gefunden (grep «Finanzierungsgliederung», «Objektgliederung», «Zahlungskonto», «Baukredit» leer) | rot |
| 04.12 | Abrechnen auf BKP dreistellig | baubuchhaltung.md Tabelle faktisch dreistellig («211 Baumeister», «271 Gipser»); als Regel nicht formuliert; SKILL.md Regeln nennt nur «BKP-2017 verbindlich» | gelb |
| 04.13 | BKP für Kommunikation, eBKP-H nur für Kennwerte | Rule `bkp-2017-referenz` (Abhängige Rules): BKP verbindlich, eBKP-H nur auf ausdrückliche Anforderung; im Kern deckungsgleich | gruen |
| 04.14 | Kennwerte nur mit Bezugsmengen nach SIA 416 | SKILL.md Schritt 6 und Abschnitt Kennwerte: «nur mit benannter Bezugsflaeche nach SIA 416:2003 (GF/NGF/HNF/GV)»; Vorlage führt aber nur «GF [m2] / GV [m3]», während kostenschaetzung in CHF/m2 NF benchmarkt | gelb |
| 04.15 | Investition und Folgekosten zusammen (SIA D0165) | nicht gefunden in kostenkontrolle und kostenschaetzung; liegt ausserhalb Phase I (JANS führt es in `healthcare-wirtschaftlichkeit`, kein Verweis aus dem Skill) | gelb |
| 04.23 / 05.5 | Vergabeantrag gegen vergleichbare KV-Summe (KV minus Rückstellungen Regie, Teuerung, Ausmassreserve), Unterschrift Architekt und Bauherr | `06_glossar.md`: «Vergabeantrag: Bewertung + Rankingempfehlung an den Bauherrn»; `vergabeempfehlung_template.md` vergleicht Offerten untereinander, ein KV-Abgleich fehlt (grep «Kostenvor», «Budget» im Template leer); vergleichbare KV-Summe und Unterschriftenfeld nicht gefunden | rot |
| 04.27 | Zwei getrennte Buchhaltungen (Unternehmer NPK, Bauherr BKP), über VE verbunden | SKILL.md Contract «Vorgelagert: unternehmerkontrolle»; Tabelle «Die drei Saeulen» mit Quelle je Säule; Trennung sauber. Die Verbindung über die VE ist nur behauptet («BKP-/VE-gegliedert»), die Vorlage hat keine VE-Spalte | gruen |
| 04.28 / 02.13 | Nachtrag typisiert; jede Mutation ist zugleich Mehr-/Minderkosten im KV mit Änderungsprotokoll (Unterschrift Architekt und Bauherr) | Unternehmerseite vorhanden: `unternehmerkontrolle/templates/nachtrag-formular.md` mit Freigabe vor Ausführung; Spalte «Verpflichtung (WV+NT)»; KV-Seite (Mutation, Änderungsprotokoll, Umbuchung auf Reservekonto) nicht gefunden | rot |
| 04.29 | Rückstellungen «Diverse» je Konto getrennt (Spalten Vertrag, Diverse, Total) | baubuchhaltung.md: «Reserve/Unvorhergesehenes separat ausweisen» (global, eine Zeile); je Konto nicht gefunden (grep «Ausmassreserve» leer) | rot |
| 04.30 / 02.14 / 05.7 | Zahlungsantrag je VE (Zahlungskonto, Bank, Beleg-Nr., Rechnungs-Nr., vor Skonto, Teilbeträge je Konto), Sammel-Zahlungsauftrag, Unterschriften | unternehmerkontrolle SKILL.md Schritt 2 «Akontorechnung freigeben»; baubuchhaltung.md nur «Freigabe Schlusszahlung: [ ] ja Betrag CHF …»; Belegform nicht gefunden (grep «Zahlungsantrag», «Zahlungsauftrag» leer) | rot |
| 04.31 / 05.4 | Kontoauszug je VE: Vergabe (Hauptvertrag + Nachträge), berücksichtigte Leistungen, Rückbehalt, Guthaben, gebuchte Zahlungen | baubuchhaltung.md «Schlussabrechnungs-Pruefung (je Gewerk)»: WV + NT = Soll, SR, Differenz, Rückbehalt; nur als Endzustand, kein laufender Auszug mit Guthaben und Zahlungsstand | gelb |
| 04.32 / 05.8 | Kostenrapport: KV Original, Mutationen, KV mutiert, Vergabe, Zahlungen, Abgrenzung, Kostenerwartung, Prozent; Ampel je Konto; Summierung BKP 3-, 2-, 1-stellig | baubuchhaltung.md: Budget, Verpflichtung, Zahlung, Prognose Endkosten, Abweichung, Bemerkung, Total; SKILL.md Schritt 4 mit Warnung «Nie nur die kumulierte Abweichung kommentieren»; fehlen: KV Original/Mutationen/mutiert, Abgrenzung, Prozentspalte, Ampel je Konto, Zwischensummen 2- und 1-stellig | gelb |
| 04.33 | Preisstandanpassung in der Abrechnung (Indexpunkte, Anteil Teuerung, Grundstück ausscheiden) | nicht gefunden (grep «Preisstand» nur in einer Wüest-Referenzdatei) | rot |
| 04.34 | MwSt inklusive führen, je Position sichtbar (Satz je Position, 0 % Grundstück) | SKILL.md Regeln: «MWST 8,1 %, Skonto/Rueckbehalt konsequent», Durchlauf-Regel; Vorlage ohne MwSt-Spalte und ohne Deklaration inkl./exkl.; kostenschaetzung nennt bei den Wüest-Bändern die MwSt-Behandlung nicht | rot |
| 04.35 | Bauabrechnung nach BKP und VE gegen KV, Kennwerte zurück in die Projektverwaltung | SKILL.md Schritt 5 (SR je Gewerk gegen WV) und Schritt 6 «an kostenschaetzung zur Benchmark-Pflege»; eine Gesamt-Bauabrechnung BKP-summiert gegen KV als eigenes Schlussdokument fehlt | gelb |
| 04.38 | Garantien aktiv verwalten, Liste Garantieverfalldaten | SKILL.md Schritt 7 mit Art. 172, 177, 180 SIA 118; baubuchhaltung.md Tabelle Garantieverfalldaten inkl. Spalte «Sicherheit (Form)»; Einholen/Kontrolle in `unternehmerkontrolle/templates/garantieschein.md` | gruen |
| 02.4 / 05.3 / 07.1 | Konto = BKP plus Laufnummer (211-01) mit VE-Kürzel; Los-Nummer als VE | Vorlage: nur BKP dreistellig, keine Laufnummer, keine VE-/Unternehmer-Spalte; die bürointerne Los-Nummer existiert (Rule `bkp-2017-referenz`, «LOS 271.13»), ist aber im Skill nicht angebunden | gelb |
| 03.7 | Belegkette Vergabeantrag, Änderungsprotokoll, Zahlungsantrag, Zahlungsauftrag, Kontoauszug je VE, Kostenrapport, Preisstandanpassung | von sieben Belegen ist einer (Kostenrapport) vorhanden, einer teilweise (Kontoauszug als Schlussprüfung) | rot |
| 05.1 | Projektkopf: Genauigkeit, Währung, Preisstand (Index, Datum, Punkte), MwSt-Satz und -Behandlung, Projektstand | baubuchhaltung.md Kopf: Projekt, Bauherr, KV-Basis (Datum), Stand per, Rapport Nr.; die vier Pflichtfelder fehlen | gelb |
| 07.2 / 07.3 | Trennung UK/KK entspricht JANS; vergleichbare KV-Summe und doppelte Unterschrift als Muster für die Bauherrenkommunikation | Trennung gruen (siehe 04.27); Unterschriftenfelder auf keinem Beleg des Skills gefunden | gelb |

Bilanz: 3 gruen, 11 gelb, 10 rot (24 Zeilen).

## 02 Lücken, priorisiert nach Nutzen für die JANS-Bauleitung

### L1 (04.10, 04.28, 02.13): KV nach Ratifizierung fixieren, Mutationen mit Änderungsprotokoll

Was fehlt: Der KV ist im Skill eine überschreibbare Budgetspalte. Es gibt weder den Moment der Ratifizierung durch den Bauherrn noch das Prinzip, dass Abweichungen danach als Mutation gebucht werden, noch einen Beleg (Änderungsprotokoll mit zwei Unterschriften).
Risiko: Ohne fixierten KV ist die Abweichung am Ende nicht mehr gegen den genehmigten Betrag belegbar, und Mehrkosten, die der Bauherr nie unterschrieben hat, werden im Streitfall zur Kostenüberschreitung des Architekten (Haftungsregel 04.9b).
Änderungsvorschlag, Zieldatei `skills/kostenkontrolle/SKILL.md`, Abschnitt «Ablauf», Schritt 1 ersetzen und neuen Schritt 2 einfügen (bisherige 2 bis 7 rücken nach):

```
1. **Budget aufsetzen und ratifizieren lassen.** KV BKP-gegliedert übernehmen (Phase D),
   je Konto Genauigkeit, Preisstand und MwSt-Behandlung eintragen (Kopf der Vorlage).
   Der Bauherr ratifiziert den KV schriftlich (Datum, Unterschrift). Ab diesem Datum ist
   die Spalte «KV Original» eingefroren und wird nie mehr überschrieben.
2. **Mutationen buchen.** Jede Bestellungs- oder Projektänderung nach der Ratifizierung
   wird als Mutation gebucht (Mehr-/Minderkosten je Konto oder Umbuchung aus dem
   Reservekonto) und im Änderungsprotokoll festgehalten, das Architekt und Bauherr
   unterschreiben (Vorlage `templates/baubuchhaltung.md`, Abschnitt Änderungsprotokoll).
   Der unternehmerseitige Nachtrag (Skill `unternehmerkontrolle`, `nachtrag-formular.md`)
   und die bauherrenseitige Mutation sind zwei Buchungen desselben Vorgangs: ohne
   Mutation kein Nachtrag, ohne Nachtrag keine Mutation. KV mutiert = KV Original + Mutationen.
```

Vorlagenkopf Änderungsprotokoll, Zieldatei `templates/baubuchhaltung.md`, neuer Abschnitt nach «Kostenstand je Konto»:

```
## Änderungsprotokoll (Mutation)
Nr. [MU-XX]   Datum [TT.MM.JJJJ]   Bezug [Sitzung/Protokoll Nr., Datum]
Beschrieb der Änderung: [Bestellungsänderung / Projektänderung / Umbuchung]
| Konto | Bezeichnung | VE | Nachtrag Vertrag | Diverse | Mehr-/Minderkosten | Umbuchung aus [581-01 Reserve] |
|---|---|---|---|---|---|---|
Total KV mutiert per [Datum]: CHF …   (KV Original CHF … + Mutationen kumuliert CHF …)
Unterschrift Architekt ________   Unterschrift Bauherr ________   Beilagen: [NT-Formular, Offerte]
```

### L2 (04.32, 05.8): Kostenrapport-Spalten vervollständigen, Ampel je Konto, Summierung BKP 3-/2-/1-stellig

Was fehlt: KV Original, Mutationen, KV mutiert, Abgrenzung (geleistet, aber nicht in Rechnung gestellt), Prozentspalte, Ampel je Konto, Zwischensummen auf BKP 2- und 1-stellig.
Risiko: Ohne Abgrenzung zeigt der Rapport «verbaut» als «bezahlt» und unterschätzt den Kostenstand systematisch um die offenen Leistungen; ohne Ampel je Konto geht der Einzelausreisser unter, den die eigene Warnung in Schritt 4 verhindern will.
Änderungsvorschlag, Zieldatei `templates/baubuchhaltung.md`, Abschnitt «Kostenstand je BKP» ersetzen durch:

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
```

### L3 (04.23, 04.29, 05.5): Vergabeantrag gegen vergleichbare KV-Summe, «Diverse» je Konto getrennt

Was fehlt: Ein Vergabeantrag, der die Werkvertragssumme nicht mit dem ganzen KV-Konto, sondern mit dem KV abzüglich der Rückstellungen für Regie, Teuerung und Ausmassreserve vergleicht; die Rückstellungen sind im Skill nur global («Reserve separat»), nicht je Konto.
Risiko: Wird der Werkvertrag gegen das volle KV-Konto verglichen, erscheint jede Vergabe zu gut, und die Regie- und Ausmassreserve wird stillschweigend in der Vergabe aufgebraucht, bevor die Bauphase beginnt.
Änderungsvorschlag, Zieldatei `skills/kostenkontrolle/SKILL.md`, Abschnitt «Ablauf», Schritt «Verpflichtungen buchen» ergänzen:

```
3. **Verpflichtungen buchen, Vergabeantrag stellen.** Vor jedem Werkvertrag den Vergabeantrag
   erstellen: Vertragssumme (netto, gemäss Vergabeempfehlung aus `ausschreibung`) gegen die
   **vergleichbare KV-Summe** = KV mutiert des Kontos minus Rückstellungen für Regie, Teuerung,
   Ausmassreserve und Rundung («Diverse»). Nur diese Summe sagt, ob der Werkvertrag im
   Budget liegt. Die Diverse bleiben je Konto als eigene Spalte stehen (Vertrag / Diverse /
   Total) und werden erst durch Regierapporte, Teuerungsabrechnung oder Ausmass aufgelöst.
   Der Vergabeantrag wird von Architekt und Bauherr unterschrieben, Beilage Vergabeempfehlung.
   Betrifft ein Werkvertrag mehrere Konti (eine VE über mehrere BKP), Anhang je Konto.
```

Vorlagenkopf, Zieldatei `templates/baubuchhaltung.md`, neuer Abschnitt:

```
## Vergabeantrag
Nr. [VA-XX]   Datum [TT.MM.JJJJ]   VE [Kürzel, Bezeichnung]   Unternehmer [Firma, Ort]
Werkvertrag Nr. [..] vom [Datum]   Vertragssumme netto exkl. MwSt CHF …   inkl. MwSt 8,1 % CHF …
| Konto | Bezeichnung | KV mutiert | davon Diverse (Regie / Teuerung / Ausmassreserve / Rundung) | vergleichbare KV-Summe | Vertragssumme | Differenz CHF | Differenz % |
|---|---|---|---|---|---|---|---|
Begründung / Abweichung zur Vergabeempfehlung: …
Unterschrift Architekt ________   Unterschrift Bauherr ________   Beilagen: Vergabeempfehlung, Offertvergleich
```

### L4 (04.9a, 04.9b, 04.34, 05.1): Pflichtangaben Genauigkeit, Preisstand, MwSt im Kopf; Nulltoleranz-Regel

Was fehlt: Im Kopf der Vorlage und im Kurzbericht von `kostenschaetzung` gibt es kein Feld für Genauigkeit (Toleranzrahmen), Preisstand (Index, Datum, Punkte) und MwSt-Behandlung (inkl./exkl., Satz); die Haftungsregel «ohne Toleranzrahmen gilt Nulltoleranz» ist im Hub nicht gefunden.
Risiko: Eine Kostenaussage ohne Toleranzrahmen wird vor Gericht als Zusage auf den Franken gelesen; ein KV ohne Preisstand kann später weder teuerungsbereinigt noch mit der Abrechnung verglichen werden.
Änderungsvorschlag, Zieldatei `skills/kostenkontrolle/SKILL.md`, Abschnitt «Regeln», als erste Zeile:

```
- **Pflichtangaben jeder Kostenaussage** (KV, Rapport, Vergabeantrag, Schlussabrechnung):
  Genauigkeit als Toleranzrahmen (z.B. +/- 10 % nach SIA 102 Art. 4.32, Fundstelle über KB
  `normen` belegen), Preisstand mit Index, Datum und Punkten (Zürcher Index der Wohnbaupreise
  oder Schweizerischer Baupreisindex), MwSt-Behandlung (inkl. / exkl., Satz 8,1 %, Positionen
  mit 0 % wie Grundstück benannt) und Betrag für Unvorhergesehenes als eigenes Konto.
  Fehlt der Toleranzrahmen, gilt die Aussage als Nulltoleranz: das Referenzmodell führt das
  auf Gerichtsentscheide zurück (`ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`
  Ziff. 03.7 und 04.9). Nie eine Zahl ohne diese vier Angaben aus dem Haus geben.
```

Vorlagenkopf, Zieldatei `templates/baubuchhaltung.md`, Abschnitt «Kopf» ersetzen:

```
Projekt   [Nr., Objekt, Adresse]          Stand per    [TT.MM.JJJJ]   Rapport Nr. [XX]
Bauherr   [Name, Adresse]                 Projektstand [Phase]
KV-Basis  [Datum KV, Quelle kostenschaetzung]   ratifiziert am [TT.MM.JJJJ] durch [Bauherr]
Genauigkeit  [+/- x %]   Preisstand [Index, Datum, Punkte]   Währung CHF
MwSt      [inkl. / exkl.], Satz 8,1 % (0 % bei [Grundstück, Gebühren])   Unvorhergesehenes Konto [581-01]
```

Zusätzlich in `skills/kostenschaetzung/SKILL.md`, Abschnitt «Kurzbericht-Struktur», Ziffer 2 um die Zeile «Genauigkeit, Preisstand (Index/Datum/Punkte), MwSt-Behandlung der Quelle (Wüest: [inkl./exkl., zu klären])» ergänzen; ob die Wüest-Bänder inkl. oder exkl. MwSt sind, ist in der SKILL.md nicht gefunden (siehe Frage 3).

### L5 (02.4, 05.3, 07.1, 04.17): Konto = BKP plus Laufnummer, VE-Kürzel je Konto (Los-Nummer anbinden)

Was fehlt: Die Vorlage führt Konti als reine BKP-Dreisteller ohne Laufnummer und ohne VE/Unternehmer, obwohl der Contract «BKP-/VE-gegliedert» verspricht; die bürointerne Los-Nummer (Rule `bkp-2017-referenz`, Muster «LOS 271.13») ist nicht als VE angebunden.
Risiko: Zwei Unternehmer im selben BKP (z.B. zwei Gipser-Lose, Gerüst unter 211.1) landen in einer Zeile, und der Kontoauszug je Unternehmer ist nicht mehr ableitbar.
Änderungsvorschlag, Zieldatei `skills/kostenkontrolle/SKILL.md`, Abschnitt «Regeln», nach «BKP-2017 verbindlich»:

```
- **Konto = BKP dreistellig plus Laufnummer**, Schreibweise `211-01`, `271-02`; je Konto genau
  eine Vergabeeinheit (VE) mit Kürzel und Unternehmer. Die JANS-Los-Nummer (bürointerne
  Nummer, kein BKP-Code, Rule `bkp-2017-referenz`) ist das VE-Kürzel des Kontos und wird in
  der Spalte «VE / Unternehmer» geführt, nie als BKP-Code geschrieben. Eine VE darf mehrere
  Konti bündeln (Baumeister 211-01 und 211.1-02 Gerüst); ein Konto gehört nur einer VE.
  Kontrolle und Abrechnung laufen auf Kontoebene, Summen auf BKP 3-, 2-, 1-stellig.
```

### L6 (04.30, 04.31, 05.4, 05.7): Zahlungsantrag je VE als Freigabebeleg an den Bauherrn, Kontoauszug je VE

Was fehlt: Die Akontofreigabe hat keine Belegform (Zahlungskonto, Empfängerbank, Beleg-Nr., Rechnungs-Nr., Betrag vor Skonto, Teilbeträge je Konto, Unterschriften) und es gibt keinen laufenden Kontoauszug je VE mit Guthaben und Zahlungsstand.
Risiko: Ohne Beleg ist nicht rekonstruierbar, wer welche Akontozahlung wann freigegeben hat, und die Summe der Akonti kann den Rückbehalt unbemerkt unterschreiten.
Änderungsvorschlag, Zieldatei `templates/baubuchhaltung.md`, zwei neue Abschnitte (der BBase-Sammel-Zahlungsauftrag an die Bank entfällt bei JANS, siehe 03):

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
```

### L7 (04.33): Preisstandanpassung in der Schlussabrechnung

Was fehlt: Kein Schritt, der den Kostenstand des KV (Indexpunkte, Datum) mit dem Kostenstand der Abrechnung vergleicht, nicht teuerungsberechtigte Kosten ausscheidet und den vereinbarten Anteil der Teuerung anrechnet.
Risiko: Bei Bauzeiten über einem Jahr wird die Indexteuerung als Kostenüberschreitung des Architekten gelesen, obwohl sie vertraglich dem Bauherrn zufällt.
Änderungsvorschlag, Zieldatei `skills/kostenkontrolle/SKILL.md`, Abschnitt «Ablauf», Schritt «Schlussabrechnung prüfen» ergänzen:

```
   **Preisstandanpassung** als letzter Teil der Bauabrechnung: Kostenstand KV (Index, Datum,
   Punkte, aus dem Kopf der Vorlage) gegen Kostenstand Abrechnung (Index am Abrechnungsdatum);
   nicht teuerungsberechtigte Konti ausscheiden (Grundstück, Gebühren, Pauschalverträge ohne
   Teuerungsklausel); anrechenbarer Anteil gemäss Werkvertrag oder Vereinbarung mit dem Bauherrn
   (Referenzmodell: Beispiel 50 %); Ergebnis als Minder-/Mehrkosten in CHF und Prozent, getrennt
   von den Mutationen ausweisen. Indexquelle und Punkte belegen, nie schätzen.
```

### L8 (04.11, 02.5): Finanzierungsgliederung, Objektgliederung, Zahlungskonti als optionale Querstruktur

Was fehlt: Keine horizontale Gliederung; namentlich die Aufteilung werterhaltend/wertvermehrend und Käufer-/Bauherrenanteil fehlt.
Risiko: Bei Umbauten privater Bauherren wird die steuerlich relevante Trennung werterhaltend/wertvermehrend nachträglich aus den Rechnungen rekonstruiert statt aus der Baubuchhaltung gelesen; bei STWEG-Erstellung ist der Käuferanteil je Konto nicht ableitbar.
Änderungsvorschlag, Zieldatei `skills/kostenkontrolle/SKILL.md`, Abschnitt «Regeln», letzter Punkt vor R2:

```
- **Gliederungen quer zu den Konti (optional, bei Bedarf des Bauherrn):** Finanzierungs-
  gliederung FG teilt den Kontobetrag auf (werterhaltend / wertvermehrend für die Steuer-
  erklärung, Käuferanteil bei STWEG, Subvention, Etappe); die Teilbeträge summieren sich immer
  auf das Kontototal. Objektgliederung nur für echte Teilobjekte mit getrennten Unternehmer-
  rechnungen (sonst keine Kennwerte je Objekt). Zahlungskonto (Baukredit, Eigenmittel) je
  Zahlungsantrag führen, damit der Kapitalfluss über alle Konti sichtbar ist. Im `.xlsx`
  als zusätzliche Spalten, nie als eigene Tabelle.
```

## 03 Was der JANS-Skill besser oder anders löst als das Referenzmodell

- Norm-Fundstellen statt Beispielwerte. Der Skill führt Rückbehalt gestaffelt (Art. 150: 10 %, 5 % über 300'000, 20 % bei Global), Fälligkeit (Art. 152), Prüffristen der Schlussabrechnung samt Rechtsfolge des Prüfversäumnisses (Art. 155 Abs. 2) und Garantie-/Verjährungsfristen (Art. 172, 177, 180) mit Fundstelle und Ausgabenvorbehalt (1991 gegen 2013). Das Referenzmodell nennt nur «Rückbehalt 10 %» als Beispiel und lässt Prozentsätze unbelegt (Scan 06.1). Die Anbindung an die KB `normen` inkl. status-Prüfung des Destillats ist ein echter Mehrwert.
- Warnung vor der kumulierten Abweichung. Schritt 4 verbietet, nur das Total zu kommentieren, und belegt es mit einem Eigenfall (+8,8 % gesamt, Einzelgewerke +76 bis +322 %). Das Referenzmodell löst dasselbe mechanisch über die Ampel je Konto; JANS hat die Lehre, aber noch nicht das Werkzeug (L2).
- Kennwerte-Rückfluss als Compounding. Schritt 6 gibt CHF/m2 und CHF/m3 mit benannter SIA-416-Bezugsfläche an `kostenschaetzung` zurück (Rule `wissens-ruecklauf`); im Referenzmodell ist das ein Datenfeld der Projektverwaltung, bei JANS eine belegte Lernschleife. Offen bleibt die Bezugsfläche: `kostenschaetzung` benchmarkt in CHF/m2 NF, die Vorlage liefert nur GF/GV.
- Einpersonenbüro und bexio. bexio ist die Finanzbuchhaltung von JANS (Honorar, Debitoren, Rule 260702: bexio führend, buchen nur nach Einzelfreigabe), nicht die Baubuchhaltung des Bauherrn. Daraus folgt: der BBase-Sammel-Zahlungsauftrag an die Bank und der Saldo des Zahlungskontos sind für JANS kein Deliverable, weil der Bauherr selbst zahlt; das JANS-Erzeugnis ist die Zahlungsfreigabe (Visum) an den Bauherrn (L6). Die doppelte Unterschrift Architekt und Bauherr auf Vergabeantrag, Änderungsprotokoll und Zahlungsantrag ersetzt im Einpersonenbüro das Vier-Augen-Prinzip, das BBase intern nicht kennt (Scan 06.6); sie ist deshalb für JANS wichtiger als für ein grösseres Büro.
- Arbeitsformat. `.xlsx` als rechnendes Arbeitsformat, `.md` als Struktur-Wahrheit, PDF als verbindlicher Rapport ist schlanker als die Excel-Arbeitsmappen-Kette des Referenzmodells und passt zur OneDrive-Ablage; Rechenregeln (Kostenerwartung, Abgrenzung, Ampel) müssen aber ins `.xlsx` und sind heute nur als Prosa vorhanden.
- Ehrlich: Reifegrad R2, nie am realen Projekt erprobt, Vorlage 53 Zeilen gegen ein 40-seitiges Handbuch; die Contract-Behauptung «BKP-/VE-gegliedert» ist durch die Vorlage nicht gedeckt. Die Wissensbasis `07_werkvertrag-unternehmerkontrolle.md` fasst Phase I in vier Zeilen und ist als «ZUERST LESEN» dünner als die SKILL.md selbst; der Scan liegt bereits als `14_bauadministration-prinzipien.md` daneben und sollte in der SKILL.md unter Wissensbasis verlinkt werden.

## 04 Offene Fragen an Raphael

1. Ratifizierung und Mutation: Soll der KV bei jedem Projekt (auch Einzel-Lose wie KISPI) durch den Bauherrn schriftlich ratifiziert und danach nur über unterschriebene Änderungsprotokolle verändert werden, oder gilt das erst ab einer Projektgrösse oder ab einer Mutationsschwelle (CHF oder Prozent)?
2. Konto-Notation: Wird das Konto künftig als BKP plus Laufnummer (271-01) geführt und die bürointerne Los-Nummer (271.13) als VE-Kürzel daran gehängt, oder bleibt die Los-Nummer selbst der Kontoschlüssel?
3. MwSt und Zahlungsweg: Sind KV und Kostenrapport bei JANS standardmässig inkl. oder exkl. MwSt zu führen (die Wüest-Bänder in `kostenschaetzung` nennen es nicht), und läuft die Akontozahlung immer über eine Freigabe an den zahlenden Bauherrn, oder gibt es Projekte, in denen JANS selbst aus einem Baukreditkonto zahlt (dann wäre der Zahlungsauftrag doch ein Deliverable)?
