# Audit Skill `unternehmerkontrolle` gegen das Referenzmodell Bauadministration (BBase-Scan 07.09.2026)

Datum: 07.09.2026
Prüfraster: `scratchpad/260907-bbase-scan.md` (auf dem NAS bereits abgelegt als `skills/ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`, 07.09.2026 15:59; von keiner SKILL.md referenziert)
Geprüfte Dateien (nur gelesen):
`/Volumes/daten/jans-ai-hub/skills/unternehmerkontrolle/SKILL.md` (105 Zeilen, Stand 07.09.2026 08:25)
`/Volumes/daten/jans-ai-hub/skills/unternehmerkontrolle/templates/abnahmeprotokoll.md`, `maengelprotokoll.md`, `garantieschein.md`, `nachtrag-formular.md`, `regierapport.md`
`/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/07_werkvertrag-unternehmerkontrolle.md`
Zur Abgrenzung mitgelesen: `skills/kostenkontrolle/SKILL.md` + `templates/baubuchhaltung.md`, `skills/werkvertrag/SKILL.md` + `templates/werkvertrag-vorlage.md`, `ausschreibung/wissensbasis/06_glossar.md`, `04_konditionen.md`, `01_workflow-ausschreibung.md`, `00_ordnerstruktur-bauleitung.md`, `wissensluecken.md`.

Ampel: grün = Prinzip abgebildet und als Vorlage oder Regel greifbar; gelb = Prinzip genannt, aber ohne Struktur (Felder, Vorlage, Rechenweg) oder nur teilweise; rot = nicht gefunden.

## 01 Abgleichstabelle

| Prinzip | Kurzname | Stand im Skill (Datei, Abschnitt, Zitat) | Ampel |
|---|---|---|---|
| 02.11 | Nachtrag und Abzug typisiert (ERBR/ERNE/ABBR/ABNE), eigenes LV, Protokoll | `templates/nachtrag-formular.md`: Kopf mit Auslöser, Positionstabelle «Pos, Beschrieb, Menge, EP, Total, Grundlage», Nachtragssumme netto. Nur Ergänzungen; Abzüge (Minderleistung), brutto/netto und ein laufendes NT-Register nicht gefunden | gelb |
| 02.12 | Ausmass je Position gegen Vertragsmenge, ohne LV auf Kapitelebene | `SKILL.md` Ablauf 1: «tatsaechliche Mengen gegen LV pruefen; im Zweifel nur wirklich ausgefuehrte Arbeiten ohne Zuschlaege». Keine Vorlage, keine Spalten Vertragsmenge/Ausmass/Differenz | gelb |
| 02.13 | Mutation: parallel Mehr-/Minderkosten im KV und Nachtrag beim Unternehmer | `nachtrag-formular.md` Prüfung: «[ ] Budget-/Kostendach-Auswirkung gemeldet (Skill kostenkontrolle)». Übergabe nur als Checkbox; kein Änderungsprotokoll, keine Kopplung an eine Mutationsnummer | gelb |
| 02.14 | Zahlungsantrag je VE mit Belegnummer, Rechnungsnummer, Datum, Betrag vor Skonto, Teilbeträge je Konto | `SKILL.md` Ablauf 2: «Teilzahlungsgesuch … gegen Leistungsstand pruefen + freigeben; Rueckbehalt 10 % beachten». Kein Formular, keine Felder, keine Unterschriften | rot |
| 03.6 | Modul Unternehmerkontrolle: WV, LV mit Ausmass/NT, Auswertung Vertrag/Abrechnung in Prozent, SR, Garantieschein, Beurteilungen | `SKILL.md` Ablauf 1 bis 7 deckt Ausmass, Akonto, NT, Regie, Abnahme, SR, Garantie; `07_werkvertrag-unternehmerkontrolle.md` Abschnitt «Unternehmerkontrolle (Phase H)» dieselben 7 Schritte. Auswertung Vertrag/Abrechnung je Kapitel/Abschnitt/Total in Prozent und Beurteilungen nicht gefunden | gelb |
| 03.8 | Unternehmerdossier: Lieferschein, Aufgebot, Abnahmebericht, SR-Formular, Mängelrüge, Beurteilungen, Garantieverfalldaten | Vorhanden: `abnahmeprotokoll.md` (Tabelle, Unterschriften), `maengelprotokoll.md`, `garantieschein.md` mit Abschnitt «Pflege» (Garantieverfalldaten-Liste). Nicht gefunden: Aufgebot, SR-Formular, Mängelrüge an den Bauherrn, Beurteilungen, Lieferschein (im Hub nur als Versand-Deckblatt in `01_workflow-ausschreibung.md` Punkt 5 und als Fuhrschein-Pflicht WV Ziff. 15) | gelb |
| 04.27 | Zwei getrennte Buchhaltungen (Unternehmer nach NPK, Bauherr nach BKP), über die VE verbunden | Architektur stimmt: `SKILL.md` Contract «Hand in Hand mit kostenkontrolle (I)», `kostenkontrolle/SKILL.md` führt die Baubuchhaltung nach BKP. Die Unternehmerseite (Vertrag, Nachtrag, Ausmass, Abrechnung je Gewerk als eigener Kontostand) hat im Skill keine Struktur; nur `kostenkontrolle/templates/baubuchhaltung.md` «Schlussabrechnungs-Pruefung (je Gewerk)» | gelb |
| 04.28 | NT typisiert und protokolliert, verändert die Vertragssumme, eigenes LV, zugleich Mutation im KV | `nachtrag-formular.md` Freigabe «Bauherr/Bauleitung: … Unternehmer: …»; `SKILL.md` Regeln «Schriftlichkeit vor Ausfuehrung bei NT und Regie». Typisierung, Register mit laufender Vertragssumme, Änderungsprotokoll nicht gefunden | gelb |
| 04.29 | Regie, Teuerung, Ausmassreserve als «Diverse» getrennt vom Vertrag (Spalten Vertrag, Diverse, Total) | Regie getrennt: `regierapport.md` «monatlich separat in Rechnung gestellt (keine Akonto-Teilzahlung)»; `SKILL.md` Regeln «von Regie- und Teuerungsabrechnungen wird kein Rueckbehalt abgezogen, Art. 149 Abs. 2». Teuerung nur im WV Ziff. 16 («nicht verguetet»). Ausmassreserve und ein Spaltenkonzept Vertrag/Diverse/Total nicht gefunden | gelb |
| 04.30 | Akontozahlung als formaler Beleg mit Unterschrift Architekt und Bauherr | siehe 02.14; keine Zahlungsantrags-Vorlage, kein Sammel-Zahlungsauftrag, keine Unterschriftenzeile | rot |
| 04.31 | Kontoauszug je VE: Vergabe (Hauptvertrag plus NT), berücksichtigte Leistung, Rückbehalt, Guthaben, gebuchte Zahlungen | Nicht gefunden. Am nächsten: `kostenkontrolle/templates/baubuchhaltung.md` «Werkvertrag CHF … + genehmigte NT CHF … = Soll CHF … / SR Unternehmer CHF … Differenz» (nur am Schluss, ohne Rückbehalt, Guthaben, Zahlungsliste) | rot |
| 04.36 | Abnahme als Formularprozess: Aufgebot mit Präsenzliste, Abnahmebericht vor Ort unterzeichnet, Mängelrüge je Unternehmer an den Bauherrn | `abnahmeprotokoll.md`: Kopf «Anwesend [BL: …] · [UN: …] · [BH: …]», Befund, Mängelliste, Unterschriften; `maengelprotokoll.md`: Fristen, Status, Nachkontrolle. Aufgebot vor Ingebrauchnahme/Weiterbau und die Mängelrüge als Schreiben nicht gefunden | gelb |
| 04.37 | Schlussrechnung mit Restbetrag, Solidarbürgschaft, offenen Pendenzen, Gegenzeichnung «per Saldo aller Ansprüche» | `SKILL.md` Ablauf 6: «vollstaendig pruefen, gegen KV/Werkvertrag stellen; Schlusszahlung erst nach Unterzeichnung + Garantieschein-Deponierung (→ Skill kostenkontrolle)». Kein SR-Formular; Restbetrag, Pendenzenliste, Saldoklausel nicht gefunden (Art. 156 Vorbehaltsverzicht steht nur in `kostenkontrolle/SKILL.md`) | gelb |
| 04.38 | Garantien aktiv verwalten (einholen, kontrollieren, Verfalldaten) | `SKILL.md` Ablauf 7 «Garantieverfalldaten erfassen und Liste fuehren»; `garantieschein.md` «Pflege»: Datum + Betrag in die Liste, Original deponieren, Schlussbegehung terminieren; `abnahmeprotokoll.md` Abschnitt «Garantieverfalldaten» | grün |
| 04.39 | Beurteilung Unternehmer durch die Bauleitung und Beurteilung Bauleitung durch den Unternehmer | nicht gefunden (weder Skill noch Wissensbasis) | rot |
| 05.12 | Datenfelder Unternehmerkontrolle: je Position Vertragsmenge und Ausmass, NT-Typen mit Protokoll, Auswertung je Kapitel/Abschnitt/Total in Prozent, Summen Ergänzungen/Abzüge, Restbetrag, Zahlungen | kein Ausmass- oder Abrechnungsblatt; kein Feld dieses Satzes als Vorlage gefunden | rot |
| 05.13 | Datenfelder Schlussrechnung: Restbetrag, Solidarbürgschaft, offene Pendenzen, Saldoklausel, Begleitbrief Garantieschein, Beurteilungen | nur `garantieschein.md` (Garantiebetrag, Form der Sicherheit, Fristen, Unterschrift Unternehmer). Übrige Felder nicht gefunden | rot |
| 05.14 | Datenfelder Abnahme: Aufgebot (Art, Termin, Ort, Präsenzliste), Abnahmebericht mit Unterschrift, Mängelrüge je Unternehmer, Massnahmen und Fristen, Garantieverfalldaten | `abnahmeprotokoll.md`: Art der Abnahme, Datum/Ort, Anwesend, Befund, Mängel mit Frist, Unterschriften, Verfalldaten; `maengelprotokoll.md`: Frist, Verantwortlich, Status. Aufgebot und Mängelrüge fehlen | gelb |
| 06.1 | Referenz belegt keine Prozentsätze für Rückbehalt, Skonto, Abzüge | JANS ist hier weiter: `SKILL.md` Regeln «Rueckbehalt bis zur Abnahme 10 %, ueber Fr. 300'000.– nur 5 %, mindestens Fr. 30'000.– … (Art. 149-150)» und «Solidarbuergschaft … 10 %, ueber Fr. 200'000.– nur 5 % (Art. 181)»; Skonto und Nebenabzüge in `04_konditionen.md`. Die Vorlagen führen allerdings noch pauschal «10 %» (siehe 02, Lücke 5) | grün |
| 06.3 | Referenz kennt keinen Regierapport als eigenes Objekt | `templates/regierapport.md`: Kopf, Aufwand (Personal, Material, Fahrzeug), Prüfung Bauleitung, Visum | grün |
| 07.2 | Trennung entspricht der Skill-Aufteilung; «vergleichbare KV-Summe» und Vergabeantrag mit Bauherren-Unterschrift prüfenswert | Trennung ja. Vergabeantrag laut `06_glossar.md` nur «Bewertung + Rankingempfehlung an den Bauherrn»; vergleichbare KV-Summe (KV minus Rückstellung Regie/Teuerung/Ausmassreserve) nirgends gefunden | gelb |
| 07.3 | Belegkette Vergabeantrag, Änderungsprotokoll, Zahlungsantrag, Zahlungsauftrag mit doppelter Unterschrift | nur `nachtrag-formular.md` Freigabe mit einer kombinierten Zeile «Bauherr/Bauleitung» und `regierapport.md` «Visum BL». Akonto ohne Beleg, keine getrennten Unterschriftenfelder Architekt und Bauherr | gelb |

Bilanz: 3 grün, 13 gelb, 6 rot (22 Prüfpunkte).

## 02 Lücken, priorisiert nach Nutzen für die JANS-Bauleitung

### Lücke 1 (04.30, 02.14, 07.3): Akontofreigabe ist kein Beleg

Was fehlt: Die Akontoprüfung endet im Skill mit «freigeben». Es gibt kein Formular, das die Freigabe als Zahlungsantrag festhält (Belegnummer, Rechnungsnummer und -datum, Betrag vor Skonto, Teilbeträge je BKP-Konto, Rückbehalt, Unterschrift Architekt und Bauherr) und das `kostenkontrolle` als Buchungsbeleg übernehmen könnte.
Risiko: Ohne Beleg ist eine Zahlung später weder gegenüber dem Bauherrn noch in der Baubuchhaltung nachvollziehbar; genau dort entstehen Doppelzahlungen und Streit über den Leistungsstand.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Ablauf je Gewerk», Schritt 2 ersetzen durch:

```
2. **Akontorechnung**: Teilzahlungsgesuch mit überprüfbarer Leistungsaufstellung gegen den
   Leistungsstand prüfen (Ziff. 5 WV). Die Freigabe ist ein **Beleg, kein Vermerk**: je
   Rechnung ein Zahlungsantrag nach `templates/zahlungsantrag.md` mit Belegnummer, Rechnungs-
   nummer und -datum, geprüftem Betrag vor Skonto, Teilbeträgen je BKP-Konto und Rückbehalt
   (Art. 149-150, Staffel siehe Regeln; Regie und Teuerung ohne Rückbehalt). Unterschrift
   Bauleitung und Bauherrschaft; Konditionen, Abzüge und MwSt gemäss beiliegender Rechnung.
   Der unterzeichnete Antrag ist der Buchungsbeleg für `kostenkontrolle` (Säule Zahlungen)
   und schreibt den Kontoauszug des Gewerks fort (`templates/kontoauszug-gewerk.md`).
   Referenzmodell: `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` 04.30.
```

Neue Vorlage `templates/zahlungsantrag.md` (Kopf und Felder):

```
# Zahlungsantrag (Akonto- oder Schlusszahlung)

## Kopf
Antrag Nr.      [ZA-XX]                 Datum        [TT.MM.JJJJ]
Projekt         [Objekt]                Gewerk       BKP [XXX] [Gewerk] / LOS [Nr.]
Unternehmer     [Firma, IBAN]           Werkvertrag  vom [TT.MM.JJJJ], CHF [Vertragssumme]
Rechnung        Nr. [..] vom [TT.MM.JJJJ]   Art  [ ] Akonto Nr. [..]  [ ] Regie  [ ] Schluss
Beleg-Nr. Baubuchhaltung  [..]          Zahlungskonto  [Baukredit | Eigenmittel]

## Prüfung
Leistungsstand geprüft am [TT.MM.JJJJ] durch [BL]      Leistungsaufstellung liegt bei [ ]
Rechnungsbetrag brutto             CHF [..]
Geprüft / anerkannt                CHF [..]   (Differenz zur Rechnung: CHF [..], Grund [..])
Rückbehalt [10 | 5 | 20] %         CHF [..]   (Art. 149-150; kein Rückbehalt auf Regie/Teuerung)
Bisher bezahlt (Akonti)            CHF [..]
Zur Zahlung freigegeben, vor Skonto  CHF [..]   Skonto [x] % bei Zahlung bis [TT.MM.JJJJ]
Konditionen, Abzüge und MwSt gemäss beiliegender Rechnung.

## Teilbeträge je Konto (für die Baubuchhaltung)
| BKP-Konto | Bezeichnung | Vertrag | Diverse (Regie/NT) | Betrag |

## Unterschriften
Bauleitung: …  Datum: …          Bauherrschaft: …  Datum: …
Beilagen: Rechnung, Leistungsaufstellung, Kontoauszug Gewerk
```

### Lücke 2 (04.27, 04.31, 04.29): Kein Kontostand je Gewerk (Unternehmerbuchhaltung)

Was fehlt: Der Skill hat keine Vorlage, die je Gewerk die Kette Hauptvertrag, Nachträge, Total Vergabe, berücksichtigte Leistung, Rückbehalt, Guthaben, gebuchte Zahlungen fortschreibt. Die Unternehmerseite lebt nur in Einzelformularen; erst `kostenkontrolle` rechnet am Schluss Soll gegen SR.
Risiko: Der Stand eines Gewerks (wieviel vergeben, wieviel bezahlt, wieviel Rückbehalt) ist zwischen Vertrag und Schlussrechnung nirgends auf einer Seite lesbar; Akontofreigaben laufen ohne Bezug zur laufenden Vertragssumme.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Regeln», neuer Punkt nach «Schriftlichkeit vor Ausfuehrung»:

```
- **Je Gewerk ein Kontoauszug** (`templates/kontoauszug-gewerk.md`), fortgeschrieben bei jedem
  Nachtrag, jeder Akontofreigabe und der Schlussrechnung. Er ist die Unternehmerbuchhaltung
  des Gewerks (Vertrag, Nachtrag, Ausmass, Abrechnung) und bleibt von der Baubuchhaltung des
  Bauherrn nach BKP (Skill `kostenkontrolle`) getrennt; verbunden sind beide über das Gewerk
  (LOS-Nummer, BKP-Konten). Regie, Teuerung und Ausmassreserve laufen in der Spalte «Diverse»,
  nie im Vertrag. Referenzmodell 04.27, 04.29, 04.31.
```

Neue Vorlage `templates/kontoauszug-gewerk.md` (Kopf und Felder):

```
# Kontoauszug Gewerk (Unternehmerbuchhaltung)

Projekt [Objekt]   Gewerk BKP [XXX] [Gewerk] / LOS [Nr.]   Unternehmer [Firma]   Stand [TT.MM.JJJJ]
Vergleichbare KV-Summe (KV abzüglich Rückstellung Regie/Teuerung/Ausmassreserve)  CHF [..]

## Vergabe
Hauptvertrag vom [TT.MM.JJJJ]                       CHF [..]
Nachträge (Summe Ergänzungen minus Abzüge, NT-Register)   CHF [..]
Total Vergabe                                       CHF [..]   = [..] % der vergleichbaren KV-Summe

## Stand
Berücksichtigte Leistung (letzte Leistungsaufstellung / Ausmass)   CHF [..]
Rückbehalt [x] %                                    CHF [..]
Total Guthaben Unternehmer                          CHF [..]
Total gebuchte Zahlungen (ZA-01 …)                  CHF [..]
Offen                                               CHF [..]

## Je Konto
| BKP-Konto | Vertrag | Diverse (Regie/Teuerung/Ausmassreserve) | Total | Bezahlt |

## Buchungen
| Datum | Beleg (WV/NT/ZA/SR) | Text | Vertrag | Diverse | Zahlung |
```

### Lücke 3 (02.12, 05.12): Ausmass ohne Blatt, Abrechnung ohne Prozentvergleich

Was fehlt: Schritt 1 nennt das Prinzip, aber es gibt keine Vorlage mit den Spalten Vertragsmenge, Ausmass, Differenz, EP, Betrag Vertrag, Betrag Abrechnung je Position und ohne Auswertung Vertrag/Abrechnung in Prozent je Kapitel, Abschnitt und Total. Für Verträge ohne LV (Pauschal, Kostendach) fehlt die Regel «Vergleich auf Kapitelebene».
Risiko: Mengenabweichungen fallen erst in der Schlussrechnung auf, nicht beim Akonto; der Unternehmer bestimmt die Abrechnungsstruktur.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Ablauf je Gewerk», Schritt 1 ergänzen:

```
1. **Ausmass**: tatsächliche Mengen je LV-Position gegen die Vertragsmenge prüfen
   (`templates/ausmass-abrechnung.md`): Spalten Vertragsmenge, Ausmass, Differenz, EP, Betrag
   Vertrag, Betrag Abrechnung; Auswertung je Kapitel, Abschnitt und Total mit Vergleich
   Vertrag/Abrechnung in Prozent. Im Zweifel nur wirklich ausgeführte Arbeiten ohne Zuschläge
   (Ziff. 8 WV, SIA-Messvorschriften; Ausmassgrenzen je Gewerk aus der ABB-Reihe, nie vom
   Nachbargewerk). Ohne LV (Pauschal, Kostendach) Vergleich auf Kapitelebene. Ergänzungen und
   Abzüge aus dem NT-Register werden getrennt summiert, nie in die Vertragspositionen gemischt.
```

Neue Vorlage `templates/ausmass-abrechnung.md` (Kopf und Felder):

```
# Ausmass und Abrechnung je Position

Projekt [Objekt]   Gewerk BKP [XXX] [Gewerk]   Unternehmer [Firma]   Werkvertrag vom [..]
Stand [TT.MM.JJJJ]   Art [ ] Zwischenausmass für Akonto Nr. [..]   [ ] Schlussausmass

| Kapitel/Pos | Text | EH | Menge Vertrag | Ausmass | Differenz | EP CHF | Betrag Vertrag | Betrag Abrechnung | Beleg (Ausmassblatt/Plan) |

## Auswertung
| Kapitel / Abschnitt | Vertrag CHF | Abrechnung CHF | Abweichung CHF | Abweichung % |
| Total Vertragspositionen | | | | |
| Summe Ergänzungen (ERBR/ERNE) | | | | |
| Summe Abzüge (ABBR/ABNE) | | | | |
| Total Abrechnung netto exkl. MwSt | | | | |

Geprüft Bauleitung: …  Datum: …     Anerkannt Unternehmer: …  Datum: …
```

### Lücke 4 (02.11, 04.28, 02.13): Nachtrag ohne Abzug, ohne Typ, ohne Register

Was fehlt: `nachtrag-formular.md` kennt nur Ergänzungen. Minderleistungen (Abzüge), die Unterscheidung brutto (Konditionen des Vertrags gelten) und netto (Festbetrag) sowie ein NT-Register mit laufender Vertragssumme fehlen; die Kopplung an die KV-Mutation ist eine Checkbox ohne Nummer.
Risiko: Abzüge werden nicht protokolliert und gehen in der Schlussrechnung unter; die Vertragssumme, gegen die Akonti und Rückbehalt gerechnet werden, ist nach dem dritten Nachtrag unbekannt.
Vorschlag, Zieldatei `templates/nachtrag-formular.md`, Abschnitt «Kopf», Zeile «Ausloeser» ergänzen und neuer Abschnitt «Register» vor «Freigabe»:

```
Typ            [ ] ERBR Ergänzung brutto (Vertragskonditionen Rabatt/Skonto gelten)
               [ ] ERNE Ergänzung netto (Festbetrag)
               [ ] ABBR Abzug brutto      [ ] ABNE Abzug netto
Vertragssumme bisher CHF [..]  +/− dieser Nachtrag CHF [..]  = Vertragssumme neu CHF [..]
KV-Mutation    Nr. [..] (Skill kostenkontrolle, Änderungsprotokoll mit Unterschrift Bauherr)

## Register (in `kontoauszug-gewerk.md` fortschreiben)
| NT-Nr | Datum | Typ | Kurztext | Betrag | Vertragssumme neu | Freigabe BH am | Status |
```

Und in `SKILL.md`, Abschnitt «Ablauf je Gewerk», Schritt 3 ergänzen: «Nachträge und Abzüge typisiert (ERBR/ERNE/ABBR/ABNE), mit eigenem LV eingeholt, im NT-Register geführt; jeder genehmigte Nachtrag ist zugleich eine KV-Mutation in `kostenkontrolle` (Nummer im Formular).»

### Lücke 5 (04.37, 05.13, 06.1): Schlussrechnung ohne Formular, Solidarbürgschaft in den Vorlagen noch pauschal

Was fehlt: Schritt 6 verweist an `kostenkontrolle`; ein SR-Formular mit Restbetrag, gestaffelter Solidarbürgschaft, offenen Pendenzen und der Gegenzeichnung «per Saldo aller Ansprüche» gibt es nicht. Zudem führen `abnahmeprotokoll.md` («Garantieschein/Buergschaft 10 % der Abrechnungssumme») und `garantieschein.md` («Garantiebetrag 10 %») noch die Pauschale, die `SKILL.md` Regeln seit 16.08.2026 in zwei Sicherheiten mit Staffel getrennt hat.
Risiko: Ohne Saldoklausel bleibt der Unternehmer nachforderungsfähig (Art. 156 SIA 118 nur bei vorbehaltloser Zusammenstellung); die Pauschale «10 %» rechnet bei Verträgen über Fr. 200'000.– die Bürgschaft zu hoch und ist gegenüber dem Unternehmer nicht haltbar.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Ablauf je Gewerk», Schritt 6 ersetzen:

```
6. **Schlussrechnung (SR)**: Ergebnis aller Einträge des Gewerks (Werkvertrag, NT-Register,
   Schlussausmass, gebuchte Zahlungen) nach `templates/schlussrechnung.md`: Total Abrechnung,
   abzüglich Akonti, Rückbehalt-Auflösung, Restbetrag; Solidarbürgschaft gestaffelt nach
   Art. 181 (10 %, über Fr. 200'000.– 5 %, min. Fr. 20'000.–, max. Fr. 1 Mio.); offene
   Pendenzen aus `maengelprotokoll.md`; Gegenzeichnung des Unternehmers «per Saldo aller
   Ansprüche» (Art. 156: ohne schriftlichen Vorbehalt kein weiterer Anspruch). Fristen
   Art. 154-155 (Prüfung 1 Monat, Nachfrist, dann fällig) ins Fristenregister. Schlusszahlung
   erst nach Unterzeichnung und Deponierung Garantieschein und Revisionspläne (Ziff. 8 WV).
   Übergabe des Restbetrags als Zahlungsantrag an `kostenkontrolle`.
```

Neue Vorlage `templates/schlussrechnung.md` (Kopf und Felder):

```
# Schlussrechnung Gewerk

Projekt [Objekt]   Gewerk BKP [XXX] [Gewerk] / LOS [Nr.]   Unternehmer [Firma]
Werkvertrag vom [..] CHF [..]   Abnahme am [..]   SR Unternehmer vom [..] eingegangen am [..]

## Abrechnung
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

## Sicherheit
Solidarbürgschaft nach Art. 181: [10 | 5] % von CHF [Vergütungssumme] = CHF [..]
Garantieschein eingegangen am [..] (`garantieschein.md`)   Revisionspläne abgegeben [ ]

## Offene Pendenzen (aus Mängelprotokoll)
| Nr | Mangel | Frist | Status |

## Gegenzeichnung
Der Unternehmer anerkennt diese Abrechnung per Saldo aller Ansprüche aus dem Werkvertrag.
Unternehmer: …  Datum: …     Bauleitung: …  Datum: …     Bauherrschaft: …  Datum: …
```

Zusätzlich in `abnahmeprotokoll.md` Abschnitt «Fristen & Sicherheiten» und in `garantieschein.md` Kopf die Zeile «10 %» durch «[10 | 5] % gestaffelt nach Art. 181 (Regeln in SKILL.md)» ersetzen.

### Lücke 6 (04.36, 05.14): Aufgebot zur Abnahme und Mängelrüge fehlen

Was fehlt: Die Abnahme beginnt im Skill beim Protokoll. Das Aufgebot (Art: vor Ingebrauchnahme oder bei Weiterbau, Termin, Ort, Präsenzliste, Frist für den Unternehmer) und die Mängelrüge als Schreiben je Unternehmer mit Kopie an den Bauherrn gibt es nicht; `maengelprotokoll.md` ist eine Aufnahme, keine Rüge.
Risiko: Ohne datiertes Aufgebot ist der Beginn der Garantiefrist streitbar (Art. 157 ff.); ohne förmliche Rüge innert Frist (offene Mängel bei Abnahme, verdeckte 60 Tage ab Entdeckung) verfallen Mängelrechte.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Ablauf je Gewerk», Schritt 5 ersetzen:

```
5. **Abnahme**: als Formularprozess in drei Stufen: (a) **Aufgebot** an Unternehmer und
   Bauherrschaft (`templates/abnahme-aufgebot.md`): Art (vor Ingebrauchnahme, Weiterbau des
   Werks, Teilabnahme), Termin, Ort, Präsenzliste, mitzubringende Unterlagen (Revisionspläne,
   Garantieschein-Entwurf); (b) **Abnahmeprotokoll** vor Ort als Tabelle ausgefüllt und
   unterzeichnet (`abnahmeprotokoll.md`), Mängel mit Massnahme und Frist
   (`maengelprotokoll.md`); (c) **Mängelrüge** je Unternehmer als Schreiben mit Kopie an die
   Bauherrschaft (Abschnitt «Rüge» im Mängelprotokoll), bei verdeckten Mängeln innert 60 Tagen
   ab Entdeckung. Abnahme startet Garantie- und Verjährungsfristen.
```

Neue Vorlage `templates/abnahme-aufgebot.md` (Kopf und Felder):

```
# Aufgebot zur Abnahme

An [Unternehmer, Sachbearbeiter]   Kopie [Bauherrschaft]   Datum [TT.MM.JJJJ]
Projekt [Objekt]   Gewerk BKP [XXX] [Gewerk]   Werkvertrag vom [..]
Art der Abnahme   [ ] vor Ingebrauchnahme  [ ] vor Weiterbau (Folgegewerk [..])  [ ] Teilabnahme [..]
Termin [TT.MM.JJJJ, HH:MM]   Ort/Treffpunkt [..]   Dauer ca. [..]
Präsenzliste (Soll)   Bauleitung [..]   Unternehmer [..]   Bauherrschaft [..]   Fachplaner [..]
Mitzubringen   [ ] Revisionspläne  [ ] Bedienungsanleitungen  [ ] Garantieschein-Entwurf  [ ] Schlussausmass
Hinweis: Bleibt der Unternehmer dem Termin fern, gilt die Prüfung als gemeinsam durchgeführt (Art. 158 Abs. 2 SIA 118, Fundstelle vor Verwendung im Destillat prüfen).
Bauleitung: …
```

Ergänzung `templates/maengelprotokoll.md`, neuer Abschnitt «Rüge» nach «Nachkontrolle»: «Mängelrüge Nr. [..] vom [..] an [Unternehmer], Kopie Bauherrschaft; Mängel Nr. [..]; Frist zur Behebung [..]; Androhung Ersatzvornahme (Ziff. 8/14 WV); Entdeckungsdatum bei verdeckten Mängeln [..] (60-Tage-Frist bis [..]).»

### Lücke 7 (04.39): Keine Beurteilung in beide Richtungen

Was fehlt: Weder eine Beurteilung des Unternehmers durch die Bauleitung noch das Gegenstück (Unternehmer beurteilt Bauleitung) existiert. Der Skill `unternehmerfindung` rankt Submittenten, bekommt aber aus der Ausführung kein Signal zurück.
Risiko: Erfahrungen mit Unternehmern bleiben im Kopf des Bauleiters; die Stammdaten-DB (378 Firmen) altert ohne Ausführungsbefund.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Ablauf je Gewerk», neuer Schritt 8:

```
8. **Beurteilung**: nach der Schlussrechnung je Gewerk zwei Bogen
   (`templates/beurteilung.md`): Beurteilung Unternehmer durch die Bauleitung (Qualität,
   Termine, Ausmass-/Rechnungsdisziplin, Nachtragsverhalten, Mängelbehebung, Zusammenarbeit)
   und Beurteilung Bauleitung durch den Unternehmer (Planlieferung, Entscheide, Zahlungs-
   moral, Koordination). Ergebnis der Unternehmer-Beurteilung an die Stammdaten des Skills
   `unternehmerfindung` zurückführen (Rule `wissens-ruecklauf`). Referenzmodell 04.39.
```

Neue Vorlage `templates/beurteilung.md` (Kopf und Felder):

```
# Beurteilung nach Abschluss des Gewerks

Projekt [Objekt]   Gewerk BKP [XXX] [Gewerk]   Unternehmer [Firma]   Vertragssumme CHF [..]
Abrechnungssumme CHF [..] ([..] %)   Nachträge [Anzahl, CHF]   Abnahme am [..]   Mängel [Anzahl, behoben bis]

## A Beurteilung Unternehmer (durch Bauleitung)   Skala 1 (ungenügend) bis 4 (sehr gut)
| Kriterium | Note | Bemerkung |
| Ausführungsqualität | | |
| Termintreue | | |
| Ausmass und Rechnungen (prüfbar, fristgerecht) | | |
| Nachtragsverhalten (angemessen, vorgängig) | | |
| Mängelbehebung (Frist, Qualität) | | |
| Sicherheit und Ordnung auf der Baustelle | | |
| Zusammenarbeit | | |
Empfehlung für künftige Submissionen  [ ] ja  [ ] mit Vorbehalt  [ ] nein      Bauleitung: …  Datum: …

## B Beurteilung Bauleitung (durch Unternehmer)
| Kriterium | Note | Bemerkung |
| Planlieferung und Vollständigkeit der Grundlagen | | |
| Entscheide und Erreichbarkeit | | |
| Koordination mit anderen Gewerken | | |
| Rechnungsprüfung und Zahlungsfristen | | |
| Abnahme und Mängelabwicklung | | |
Unternehmer: …  Datum: …
```

### Lücke 8 (04.29, 07.2): «Diverse» und vergleichbare KV-Summe als Bindeglied zur Vergabe

Was fehlt: Regie ist getrennt, aber Teuerung und Ausmassreserve haben im Skill keinen Ort; das Bindeglied zur Baubuchhaltung («vergleichbare KV-Summe» = KV minus Rückstellung Regie/Teuerung/Ausmassreserve) und ein Vergabeantrag mit Unterschrift Architekt und Bauherr sind im Hub nicht gefunden (Vergabeantrag laut Glossar nur Rankingempfehlung).
Risiko: Ein Gewerk gilt als «im Budget», obwohl Regie und Ausmassreserve nicht zurückgestellt sind; die Abweichung erscheint erst in der Schlussrechnung.
Vorschlag, Zieldatei `SKILL.md`, Abschnitt «Regeln», neuer Punkt nach «MWST 8,1 %»:

```
- **Vertrag und Diverse getrennt führen.** Regie, Teuerung und Ausmassreserve gehören nie
  in die Vertragssumme, sondern in die Spalte «Diverse» des Kontoauszugs und der
  Zahlungsanträge; im KV sind sie als Rückstellung je Gewerk zu führen. Die vergleichbare
  KV-Summe (KV abzüglich dieser Rückstellungen) ist der Massstab, an dem Vergabe und
  Abrechnung eines Gewerks in Prozent gemessen werden; sie kommt aus `kostenkontrolle`
  bzw. dem Vergabeantrag der Phase Vergabe (Skill `ausschreibung`, Phase 05) und wird im
  Kontoauszug des Gewerks als erste Zeile geführt. Referenzmodell 04.23, 04.29.
```

Hinweis ausserhalb dieses Skills: Der Vergabeantrag mit Unterschrift Architekt und Bauherr und der Zeile «Diverse» gehört in den Skill `ausschreibung` (Phase 05) und ist dort als Gegenstück zu Lücke 8 zu prüfen.

Nicht als Lücke geführt (geringer Nutzen): Lieferschein (03.8). Der JANS-Begriff meint das Übermittlungs-Deckblatt beim Versand (`01_workflow-ausschreibung.md` Punkt 5, Ordner 08 Korrespondenz) und die Fuhrscheinpflicht innert 4 Tagen (WV Ziff. 15). Beides existiert im Hub, aber nicht in diesem Skill; ein Einzeiler in `SKILL.md` unter «Inputs» («Liefer-/Fuhrscheine des Unternehmers, Ziff. 15 WV, als Beleg für Regie-Material und Ausmass») würde genügen.

## 03 Was der JANS-Skill besser oder anders löst als das Referenzmodell

Rückbehalt und Solidarbürgschaft mit Fundstelle und Staffel. Das Referenzmodell belegt keine Prozentsätze (06.1); `SKILL.md` Regeln führen beide Sicherheiten getrennt mit Art. 149-150 und Art. 181, Schwellen, Minimum, Maximum, Fälligkeit nach Art. 152 und dem Ausschluss von Regie und Teuerung. Das ist präziser als alles, was der Scan hergibt. Einziger Makel: die Vorlagen sind nicht nachgezogen (Lücke 5).

Regierapport als eigenes Objekt mit Prüfraster. Im Referenzmodell erscheint Regie nur als Rückstellung und Vergütungsart (06.3); `regierapport.md` trennt Personal, Material und Fahrzeug, bindet die Ansätze an den Werkvertrag und verlangt den Auftrag vor Ausführung und die Vorlage innert 4 Arbeitstagen.

Normen-Anbindung mit Statusdisziplin. Der Skill zitiert nicht aus dem Gedächtnis, sondern aus den Destillaten der KB `normen` mit Statusfeld (SIA 118:1991, C1:2026, ABB-Reihe je Gewerk). Die 60-Tage-Rügefrist für verdeckte Mängel (OR-Revision 2026) ist im Skill, in `abnahmeprotokoll.md` und im Werkvertrag verankert; das Referenzmodell (Handbuch 2024) kennt sie nicht.

Mängel als Pendenzen. Die Spiegelung offener Mängel in den Skill `pendenzenliste` und der Termine in `terminplanung` entspricht dem Zuordnungsprinzip des Referenzmodells (04.40) und geht über die reine Formularlogik hinaus.

Bauökologische Kontrollstufe. Die Anbindung an `wissen/energie` (Baustellenkontrolle der überbundenen Anforderungen) hat im Referenzmodell kein Gegenstück.

Ehrlich gesagt anders, nicht besser: Der Skill ist ein Prüf- und Protokollwerkzeug, das Referenzmodell ein Abrechnungssystem. Was BBase über Vertrag, Nachtrag, Ausmass und Zahlung rechnerisch verkettet (Kontoauszug, Auswertung in Prozent, Restbetrag), muss die JANS-Bauleitung heute in Excel von Hand nachbauen. Die Skill-Aufteilung H/I (07.2) ist richtig; was fehlt, ist die Unternehmerseite der Buchhaltung, nicht die Bauherrenseite.

## 04 Offene Fragen an Raphael

1. Soll der Kontoauszug je Gewerk (Lücke 2) als eigene Vorlage im Skill `unternehmerkontrolle` liegen, oder als Blatt in der `.xlsx`-Arbeitsdatei der Kostenkontrolle, aus der Phase H nur liest? Davon hängt ab, wo der Zahlungsantrag seine Belegnummer bezieht.
2. Gilt bei JANS die Nachtragslogik brutto/netto (ERBR/ERNE mit oder ohne Vertragsrabatt und Skonto), oder wird jeder Nachtrag zu Vertragskonditionen abgerechnet, wie `nachtrag-formular.md` heute annimmt? Ein Praxisfall (KISPI oder Albertstrasse) als Muster würde die Typisierung entscheiden.
3. Gibt es im Archiv ein authentisches JANS-Beispiel für Zahlungsfreigabe, Schlussrechnung oder Abnahme-Aufgebot (Ordner `XX <BKP> 10 Rechnungen, NT, Regie` bzw. `11 SR`)? Die Vorlagen stehen alle auf R2 «Benutzer-Muster zur Validierung ausstehend»; die neuen Formulare sollten am realen Muster und nicht am Referenzmodell allein gebaut werden.
