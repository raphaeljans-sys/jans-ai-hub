# Testprotokoll Skill `kostenkontrolle` am Projekt 2619 KISPI, Stand 01.06.2026

Testlauf 07.09.2026 (Scratchpad, nichts auf NAS oder im Projektordner geschrieben).
Geprüfte Bausteine: `skills/kostenkontrolle/SKILL.md`, `templates/baubuchhaltung.md`,
`references/bkp-2017/BKP-2017-Liste.md`. Eingabe: «2619 KISPI BAUKOSTEN.pdf» (26 Positionen,
KV intern 317'500, KV extern 1'116'500, Total 1'434'000 CHF exkl. MwSt), 22 Losordner in
`03_BKP`, fünf Beleg-PDFs (Estermann, Siemens, JOMOS lesbar; JEGEN und RWD Schlatter nur Bild).
Ergebnis: `test-kostenrapport-2619.md` im selben Ordner.

## 01 Was Skill und Vorlage ohne Verrenkung leisten konnten

01.1 **Grundstruktur des Rapports.** Kopf (Projekt, Bauherr, Stand, Rapport-Nr., KV-Basis),
Kostenstand-Tabelle je BKP mit Budget, Verpflichtung, Zahlung, Prognose, Abweichung und
Bemerkung, Abweichungs-Kommentar mit Schwelle, Schlussabrechnungs-Block, Kennwerte-Block und
Garantieverfalldaten-Liste liessen sich eins zu eins übernehmen.

01.2 **Die drei Säulen als Denkmodell.** Budget, Verpflichtung, Zahlung aus je einer Quelle
(kostenschaetzung, werkvertrag, unternehmerkontrolle) war für die Zuordnung der Spalten sofort
brauchbar. Auch die Regel «Verpflichtung nur bei Vergabe» hat sauber gegriffen: alle fünf
Angebote stehen auf «pendent», Vergabe- und WV-Ordner sind leer, also Verpflichtung 0.

01.3 **Warnung vor der kumulierten Abweichung** (Ablauf Schritt 4). Genau dieser Fall trat
ein: Gesamtabweichung -1.2 % innerhalb der Toleranz, dahinter Einzelausreisser von +153 %
(259.21), -37 % (271.13) und eine Position ohne KV (235.80). Der Skill verlangt die
Einzelprüfung ausdrücklich; sie stand im Rapport.

01.4 **BKP-2017-Verifikation.** Die Rule und die Referenzliste haben jede Nummer der Quelle
messbar gemacht; die Fallen (siehe 03) wurden nur deshalb sichtbar.

01.5 **Kennwerte mit Bezugsfläche.** Der Skill fordert SIA-416-Bezugsgrössen und warnt vor
Kennwerten ohne Bezug. Da die Quelle keine GF/GV nennt, blieb der Block korrekt als
Platzhalter offen, statt mit einer geschätzten Fläche gefüllt zu werden.

01.6 **Wissensbasis erreichbar.** Alle vier referenzierten Dateien unter
`skills/ausschreibung/wissensbasis/` und beide Normen-Destillate existieren; die Status-Felder
(`speculative`) standen wie im Skill angekündigt.

## 02 Was improvisiert werden musste, je Prinzip a bis g

| Prinzip | Ampel | Befund und Improvisation |
|---|---|---|
| a) Genauigkeit, Preisstand, MwSt, Unvorhergesehenes je Kostenaussage | rot | Die Vorlage hat im Kopf kein Feld für Genauigkeit, Preisstand (Index, Datum, Punkte), MwSt-Behandlung oder Reserve; nur die Zeile «Reserve/Unvorhergesehenes separat ausweisen» als Bullet. Improvisiert: vier Kopfzeilen ergänzt. Genauigkeit (+/- 5 %) und MwSt (exkl.) kamen aus der Quelle; Preisstand und Reserve blieben Platzhalter. Ohne Reserve-Position (BKP 583) gilt nach bbase faktisch Nulltoleranz; rechnerisch 71'700 CHF, nicht eingesetzt |
| b) KV fixiert, Abweichung = Mutation mit Änderungsprotokoll | rot | Weder Skill noch Vorlage kennen Ratifizierung, Mutation oder Änderungsprotokoll. Schritt 1 «Budget aufsetzen» sagt nicht, dass der KV danach eingefroren ist. Konkret: die Position 235.80 (Siemens 15'823 ohne KV) wäre eine Mutation, konnte aber nur als Abweichung mit Bemerkung erfasst werden. Kein Ort für «KV Original» versus «KV mutiert» |
| c) Spalten KV Original, Mutationen, KV mutiert, Vergabe, Zahlungen, Abgrenzung, Kostenerwartung, Prozent, Ampel; Summierung 3-, 2-, 1-stellig | gelb | Vorhanden: Budget, Verpflichtung, Zahlung, Prognose, Abweichung. Fehlend: Mutationen, KV mutiert, Abgrenzung, Prozent, Ampel, jede Summierungsstufe. Improvisiert: Spalten Konto, BKP 2017, Unternehmer, KV intern, KV extern, Angebot UN, Prozent, Ampel ergänzt und drei Summentabellen von Hand gerechnet. Die Ampelregel (grün bis KV, gelb bis +5 %, rot darüber) ist eine eigene Setzung, nirgends im Skill |
| d) Vergabeantrag gegen vergleichbare KV-Summe (KV minus Regie, Teuerung, Ausmassreserve) | rot | Kein Block, keine Regel, keine Erwähnung. Improvisiert: Tabelle «Vergabevergleich je Angebot». Weil der KV keine Rückstellungen ausweist, war die vergleichbare KV-Summe gleich dem KV, was den Vergleich entwertet (Estermann 75'600 gegen 120'000 sieht nach 37 % Minderkosten aus, enthält aber weder Regie noch Ausmassreserve) |
| e) Regie, Teuerung, Ausmassreserve als «Diverse» je Konto getrennt vom Vertrag | rot | Die Vorlage führt je BKP eine Zeile; Vertrag und Diverse sind nicht trennbar. Der Skill kennt NT und Regie nur als Teil der Verpflichtung («WV+NT»). Nicht improvisiert, sondern als Vorbehalt in die Bemerkung geschrieben |
| f) Konto = BKP plus Laufnummer mit Vergabeeinheit; Abrechnung auf BKP dreistellig | gelb | Der Skill sagt «BKP-/VE-gegliedert», die Vorlage hat aber nur eine BKP-Spalte, keine Laufnummer und keine Vergabeeinheit. Die Quelle arbeitet faktisch mit Konten (Los-Nummern wie 271.13, 273.35, 690.40), die wie BKP-Codes aussehen. Improvisiert: Spalte «Konto (Los)» neben «BKP 2017», Summierung auf dem dreistelligen Code der Quellstruktur |
| g) Kennwerte nur mit Bezugsmenge nach SIA 416 | grün | Skill und Vorlage decken das ab (Schritt 6, Warnung im Kennwerte-Block). Nicht berechenbar, weil die Quelle keine Fläche nennt; korrekt als Platzhalter belassen |

Zählung: grün 1, gelb 2, rot 4.

## 03 Konkrete Fehler und Fallen beim Ausführen

03.1 **Prognose-Regel bricht vor der Vergabe.** «Prognose Endkosten = Verpflichtung + offene
NT-Erwartung» ergibt bei 26 Positionen ohne Verpflichtung überall 0 und eine Gesamtprognose
von 0 CHF. Die Regel deckt nur vergebene Gewerke ab. Improvisiert: Angebot UN, sonst KV. Das
muss der Skill selbst sagen, sonst rechnet jede Session anders.

03.2 **Angebot UN in der Quelle mischt inkl. und exkl. MwSt.** Estermann steht mit 80'089.15
in der Tabelle «alle Kosten exkl. MwSt.»; das ist der Betrag inkl. 8.1 % MwSt nach 2 % Skonto
(75'600 brutto, 74'088 nach Skonto, 80'089.15 inkl. MwSt, Estermann KV 324s08-1 vom
01.06.2026). Der Skill hat keine Prüfregel «Angebot auf MwSt-Basis normieren, bevor es in die
Spalte kommt».

03.3 **JOMOS 38'000 nicht belegbar.** Das einzige Angebot im Losordner (12.06.2026) nennt
24'412 exkl. MwSt (Vorabklärung 4'500 + Ausführung 19'912). Die Tabelle trägt 38'000 ohne
Beleg. Der Skill kennt keinen Belegzwang je Angebotsbetrag (Rule 260709 verlangt ihn).

03.4 **Los-Nummern sind keine BKP-Codes, und dasselbe Los trägt bis zu drei Nummern.**
Gipser: Quelle «271.13», Losordner «LOS_271.10», Estermann-Offerte «BKP 271.1». Sprinkler:
Quelle «259.21» (259 = Übriges), richtig 257.1; im Losordner ein Unterordner «257.10».
WC-Trennwände: Quelle «273.50», Losordner «LOS_277.20» (277.2 Fest stehende Elementwände).
Planungskosten: Quelle «690.10 bis 690.40», Losordner «291.00 / 294.5 / 298.5»; die
Hauptgruppe 6 ist in BKP 2017 Reserve und existiert nicht. Zusätzlich lesen sich vier
Nummern der Quelle als falscher BKP-2017-Code: 281.00 (wäre Estriche, gemeint Platten
281.6), 282.00 (wäre fugenlos, gemeint Platten 282.4), 283.00 und 285.00 (wären beide
Gerüste, gemeint 283.2/283.3 und 285.1). 100.00 ist eine Übergangsposition. Die Rule
`bkp-2017-referenz` regelt das im Prinzip, der Skill wendet sie aber nicht auf die Eingabe an.

03.5 **Rechenfehler in der Quelle unerkannt.** Stundentotal 4'968.5 h; die Zeilensumme ist
3'968.5 h (317'500 / 80 = 3'968.75). Der Skill hat keinen Schritt «Quelle nachrechnen».

03.6 **Position ohne Budget.** 235.80 BMA hat 0 KV und ein Angebot von 15'823. Vorlage und
Skill kennen keinen Fall «Angebot ohne KV-Position»; Prozent ist nicht definierbar (n.a.).

03.7 **Zwei KV-Spalten (intern, extern) und Eigenleistungen des Bauherrn.** Die Quelle führt
317'500 CHF Eigenleistung (Technischer Dienst, 80 CHF/h) ohne Vergabe und ohne Zahlung. Die
Vorlage kennt keine Kostenart und keine Trennung. Verpflichtung und Zahlung sind für diese
Positionen strukturell leer, was in der Summe wie «nichts vergeben» aussieht.

03.8 **Belege nach Stichtag.** Siemens 02.06., JOMOS 12.06., JEGEN-Scan 25.06.2026 liegen
alle nach dem Stand 01.06. Der Skill hat keine Stichtagsregel (welche Belege in einen Rapport
gehören, wie Nachträge vor der nächsten Ausgabe behandelt werden).

03.9 **Ablagepfad im Skill existiert nicht.** SKILL.md Zeile 12 nennt
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/…` mit Bindestrich; der reale
Ordner heisst `OneDrive-FreigegebeneBibliotheken–JANS` mit Halbgeviertstrich. `ls` auf den
Skill-Pfad liefert «No such file or directory». Zudem zeigt der Pfad in den Unterordner
`submission/`, den es im OUTPUT-Ordner nicht gibt (vorhanden: `ausschreibungen/`).

03.10 **Referenz auf eine Datei, die es nicht gibt.** Regel «bei Unsicherheit
`wissensluecken.md`»: im Skill-Ordner liegen nur SKILL.md und templates/.

03.11 **Vorlage widerspricht dem Skill bei Rückbehalt und Garantie.** Die Vorlage hat
«Rueckbehalt/Garantie 10 %» und «Garantie 2 J. bis» fest verdrahtet; der Skill sagt
gestaffelt (Art. 150: 10 %, 5 % über 300'000, 20 % bei Global) und «nie pauschal zwei
Jahre setzen, je Werkvertrag prüfen».

03.12 **Zahlungen beim Bauherrn.** Der Skill setzt voraus, dass JANS die Akonto-Freigaben aus
`unternehmerkontrolle` hat. Im KISPI-Setup zahlt der Bauherr direkt; die Spalte bleibt n.b.,
und der Skill sagt nicht, wie ein Rapport ohne Zahlungssäule zu lesen ist (Abgrenzung fehlt
dann ganz).

03.13 **eBKP-H-Buchstaben in der Quelle.** Die Tabelle führt eine Spalte «e-BKP-H» (B, C, D,
G, V) neben BKP. Die Rule verbietet eBKP-H ohne ausdrücklichen Auftrag; die Vorlage hat keinen
Ort, das zu vermerken oder abzulegen.

03.14 **Vorlage nutzt «ae/ue»** («Rueckbehalt», «Verjaehrung», «uebergeben»). Rule
`umlaute-konvention` wird bei einer Überarbeitung fällig.

## 04 Änderungsvorschläge (maximal fünf, mit fertigem Text)

04.1 **SKILL.md, Abschnitt «Die drei Säulen», Prognose-Regel ersetzen durch:**

> Kernkennzahl je Konto: **Kostenerwartung** (Prognose Endkosten). Sie wird stufenweise
> bestimmt, je nach Vergabestand: (1) vor Angebot = KV mutiert; (2) Angebot vorhanden,
> nicht vergeben = Angebot exkl. MwSt zuzüglich Diverse (Regie, Teuerung, Ausmassreserve),
> mindestens aber der in der Bemerkung begründete Wert; (3) vergeben = Werkvertrag + genehmigte
> NT + offene NT-Erwartung + Diverse; (4) abgerechnet = Schlussrechnung. Die Stufe steht als
> Vergabestatus in einer eigenen Spalte. **Abweichung** = Kostenerwartung − KV mutiert
> (positiv = Mehrkosten), zusätzlich in Prozent. Eine Position ohne KV ist eine Mutation und
> erhält vor dem Rapport eine KV-Position (Betrag 0 zulässig).

04.2 **SKILL.md, Ablauf, neuer Schritt 1a nach «Budget aufsetzen»:**

> 1a. **KV ratifizieren und einfrieren.** Der KV wird mit Datum, Genauigkeit (+/- x %),
> Preisstand (Index, Datum, Punkte), MwSt-Behandlung und Reserve (BKP 583, Betrag) durch die
> Bauherrschaft freigegeben und danach nie überschrieben. Jede spätere Änderung ist eine
> **Mutation** mit Nummer, Datum, Betrag, Grund und Freigabe im Änderungsprotokoll der
> Vorlage; der Rapport zeigt KV Original, Summe Mutationen und KV mutiert. Fehlt eine dieser
> fünf Angaben im gelieferten KV, bleibt das Feld als Platzhalter offen und wird im
> Abweichungs-Kommentar als fehlend benannt; ohne Reserve gilt Nulltoleranz.

04.3 **SKILL.md, Ablauf, neuer Schritt 1b «Eingabe normieren»:**

> 1b. **Eingabe normieren, bevor gebucht wird.** (a) Jede Nummer der Quelle gegen
> `references/bkp-2017/BKP-2017-Liste.md` prüfen; zweistellige Nachkommastellen sind
> bürointerne Los-Nummern und werden als **Konto** geführt (Konto = BKP dreistellig + Laufnummer,
> mit Vergabeeinheit), der verifizierte BKP-2017-Code steht daneben; nie mit Präfix «BKP»
> schreiben, was kein BKP-2017-Code ist. (b) Jeden Angebotsbetrag am Beleg auf exkl. MwSt und
> vor Skonto normieren und die Belegstelle (Dokument, Datum) in die Bemerkung schreiben; ein
> Betrag ohne Beleg wird als «unbelegt» markiert. (c) Zeilen- und Spaltensummen der Quelle
> nachrechnen und Differenzen ausweisen. (d) Belege nach dem Stichtag gehören in den nächsten
> Rapport, nicht in den laufenden.

04.4 **baubuchhaltung.md, Tabelle «Kostenstand» ersetzen durch:**

> | Konto | BKP 2017 | Bezeichnung | VE / Unternehmer | Status | KV Original | Mutationen | KV mutiert | Vergabe (WV+NT) | Diverse (Regie, Teuerung, Ausmassreserve) | Zahlungen | Abgrenzung | Kostenerwartung | Abweichung CHF | Abweichung % | Ampel | Bemerkung |
>
> Status: offen / Angebot / vergeben / abgerechnet. Ampel: grün bis KV mutiert, gelb bis KV
> mutiert plus Genauigkeit, rot darüber oder ohne KV. Summierung zwingend auf BKP dreistellig,
> zweistellig und einstellig (drei Summentabellen unter der Kontotabelle). Zusätzlich neuer
> Block **Änderungsprotokoll** (Nr., Datum, Konto, Betrag, Grund, Freigabe) und neuer Block
> **Vergabeantrag** je Angebot: Vergabesumme exkl. MwSt gegen vergleichbare KV-Summe (KV
> mutiert minus Diverse), Differenz CHF und %, Vorbehalte.

04.5 **baubuchhaltung.md, Kopf ergänzen und feste Prozentwerte lösen:**

> Kopf um vier Zeilen erweitern: «Genauigkeit +/- [x] %», «Preisstand [Index] [TT.MM.JJJJ]
> [Punkte]», «MwSt [exkl./inkl.] [Satz]», «Reserve BKP 583 CHF [Betrag]». Im
> Schlussabrechnungs-Block «Rueckbehalt/Garantie 10 %» ersetzen durch «Rückbehalt gemäss
> Werkvertrag bzw. SIA 118 Art. 150 gestaffelt: [%]»; in der Garantieliste «Garantie 2 J. bis»
> ersetzen durch «Garantiefrist gemäss WV [Jahre] bis». Im selben Zug die Vorlage auf echte
> Umlaute umstellen. SKILL.md Zeile 12: Pfad auf `OneDrive-FreigegebeneBibliotheken–JANS`
> (Halbgeviertstrich) und Unterordner `kostenkontrolle/<projektnr>-<projekt>/` korrigieren;
> Verweis auf `wissensluecken.md` streichen oder die Datei anlegen.
