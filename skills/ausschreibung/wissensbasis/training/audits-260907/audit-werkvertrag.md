# Audit Skill `werkvertrag` gegen das Referenzmodell Bauadministration (BBase-Scan 07.09.2026)

Datum: 07.09.2026
Geprüfte Dateien (nur gelesen, nichts verändert):
/Volumes/daten/jans-ai-hub/skills/werkvertrag/SKILL.md
/Volumes/daten/jans-ai-hub/skills/werkvertrag/templates/werkvertrag-vorlage.md
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/07_werkvertrag-unternehmerkontrolle.md
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/04_konditionen.md
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/06_glossar.md (Begriffe Vergabeeinheit, Nachtrag, Regie, Rückbehalt, Abgebot)
Zur Gegenprobe zusätzlich gelesen: ausschreibung/SKILL.md Phase 3, ausschreibung/templates/vergabeempfehlung_template.md, unternehmerkontrolle/SKILL.md (Regeln, Nachtrag-Formular), kostenkontrolle/SKILL.md (Inputs), ausschreibung/wissensbasis/10_dokumente-standard.md, 11_lebenszyklus-reifegrad.md, wissensluecken.md.
Prüfraster: scratchpad/260907-bbase-scan.md, Abschnitte 02.3, 02.10, 02.11, 03.5 (Phase 3), 03.6, 04.17, 04.23 bis 04.29, 05.4, 05.5, 05.11, 06.1, 06.2, 07.1 bis 07.3.

Vorbemerkung: Der Scan liegt seit dem 07.09.2026 bereits als `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` in der geteilten Wissensbasis. Der Skill `werkvertrag` verweist in seiner Leseliste noch nicht darauf (er nennt 07, 10, 04, 06, wissensluecken).

## 01 Abgleichstabelle

| Prinzip | Kurzname | Stand im Skill (Datei, Abschnitt, Zitat) | Ampel |
|---|---|---|---|
| 02.3 / 04.17 / 07.1 | Vergabeeinheit als Klammer, Kontenzuordnung | Vorlage Abschnitt 1 Kopf: «Gewerk BKP [XXX] [Gewerk]»; Abschnitt 2: «Arbeitsgattung [BKP] [Bezeichnung] CHF». Glossar 06: «Vergabeeinheit (VE): Gliederung der Bauarbeiten in vergebbare Pakete». Eine VE mit Kürzel und Liste der gedeckten KV-Konti fehlt; die bürointerne Los-Nummer (Rule bkp-2017-referenz) kommt im Vertrag nicht vor. | gelb |
| 02.10 / 05.11 | Werkvertrags-Objekte (Deckblatt Nettosumme, Inhaltsverzeichnis, Unterschriften, Unternehmerblatt, Hinweise, Struktur, Konditionenmodell, LV mit Favoritenpreisen, Vertragsbrief) | Vorlage: Kopf mit «Vertragssumme Total netto (inkl. MwSt.)» (Deckblatt), Abschnitt 6 Unterschriften, Abschnitt 5 «Angaben des Unternehmers» (Unternehmerblatt), Abschnitt 4 «Allgemeine Bedingungen (Ziff. 1 bis 22)» (Hinweise), Abschnitt 2 Zusammenstellung Brutto, Rabatt, Skonto, MwSt (Konditionenmodell). Inhaltsverzeichnis: nicht gefunden. LV mit Favoritenpreisen: nur als Vertragsbestandteil (c) «LV und bereinigtes Angebot» genannt, nicht als beizulegende Kopie. | gelb |
| 02.11 / 04.28 | Nachtragstypen (Ergänzung/Abzug, brutto/netto), eigenes LV, verändern die Vertragssumme | Vorlage Ziff. 2: «vor Arbeitsbeginn ... präzisieren resp. nachofferieren; Ausführung erst nach schriftlicher Genehmigung». Ziff. 6 Regiearbeiten. Nachtrag-Formular (unternehmerkontrolle): «Nachtragssumme netto, Konditionen wie Werkvertrag». Typisierung Ergänzung/Abzug und brutto/netto: nicht gefunden. Abzug (Minderleistung) im Vertrag nicht vorgesehen. | gelb |
| 03.5 Phase 3 | Werkvertrag als Kopie des Offertvergleichs; Vertragsbrief und Deckblatt WV | SKILL.md Ablauf 2: «Vertragssumme aus Vergabeempfehlung/bereinigtem Angebot»; Ablauf 6: «Mail-Entwurf nach 10_dokumente-standard.md» (Empfänger dort: Anbieter). Ein Vertragsbrief als Dokument mit Eingabetermin (Rücksendefrist) und Arbeitsgattung: nicht gefunden. | gelb |
| 03.5 Vergütungsart | Akkord (Ausmass) und Regie (Aufwand) getrennt, je eigenes LV | SKILL.md Tabelle «Die drei Vergütungsmodelle»: Einheitspreis (Ausmass), Pauschalpreis, Kostendach «nach Aufwand, max. +5 %». Vorlage Ziff. 6: Regie «nur im Auftrag von Bauherr/Bauleitung ... Akkord-Konditionen gelten». Ausmass und Aufwand sind sauber getrennt (A gegen C); ein eigenes Regie-LV im Ausmassvertrag wird nicht verlangt. Siehe Abschnitt 03. | gruen |
| 03.6 | WV mit Grundlagen aus Ausschreibung und Offertvergleich; Vertragsbrief an Bauherr und Unternehmer | SKILL.md Contract: «Vorgelagert: offertenpruefung»; Inputs «Vergabeempfehlung bzw. bereinigtes Angebot (aus offertenpruefung)». Versand an den Bauherrn: nicht gefunden (Vorlage Kopf: «durch die Bauleitung als Vertreter des Bauherrn [X]-fach ausgefertigt», ohne Adressat). | gelb |
| 04.23 / 05.5 / 07.3 | Vergabeantrag mit vergleichbarer KV-Summe (KV minus Rückstellungen), Unterschrift Architekt und Bauherr, Beilage Offertvergleich | werkvertrag/SKILL.md: kein Gate «Vergabe vom Bauherrn freigegeben». ausschreibung/templates/vergabeempfehlung_template.md: 10 Sektionen, keine KV-Gegenüberstellung, keine Rückstellungen, kein Unterschriftenfeld. Glossar 06: «Vergabeantrag: Bewertung + Rankingempfehlung an den Bauherrn». Plausibilität läuft über Kostenkennwerte (ausschreibung/SKILL.md Phase 3 Schritt 4), nicht über den projekteigenen KV. | rot |
| 04.24 | WV ist Kopie des Offertvergleichs mit Favoritenpreisen, Original bleibt unverändert (Datenkette AS, VG, WV) | SKILL.md Ablauf 2 (Vertragssumme übernehmen) und Vorlage Ziff. 1 (c) «LV und bereinigtes Angebot». Die Kette ist als Dokumentverweis vorhanden, nicht als Regel «Kopie anlegen, Original einfrieren, Dateibezug im Vertrag nennen». | gelb |
| 04.25 | Quereinstieg: WV ohne LV auf Stufe Zwischentotale | Vorlage Abschnitt 2 Zusammenstellung listet «Arbeitsgattung [BKP] [Bezeichnung] CHF» je Zeile; Variante B Pauschal braucht kein LV. Der Fall «Vertrag ohne LV» ist nicht benannt, funktioniert aber über die Zusammenstellung. | gelb |
| 04.26 | Normbezug SIA 118, SIA 1023, Abweichungen zur SIA 118 explizit, MwSt nach Branchenbroschüre | Vorlage Ziff. 19: «Norm SIA 118 ausdrücklich übernommen ... mit folgenden Änderungen: Art. 17 Frist 60 Tage; Art. 43/3 ...; keine Anwendung: Art. 11, 19/3, ...» (Abweichungen explizit, gut). SIA 1023: nicht gefunden. Ausgabe der SIA 118 in der Vorlage nicht genannt (SKILL.md nennt 1991 und «SIA 118:2013 inkl. Korrigenda C1:2026» nebeneinander). MwSt: fix 8,1 % (04_konditionen), Branchenbroschüre nicht gefunden. | gelb |
| 04.27 | Zwei Buchhaltungen, über die VE verbunden | SKILL.md Ablauf 7: «Übergabe an Phase H: Garantieverfalldaten, Termine, Regieansätze und Kostendach-Vorgaben an unternehmerkontrolle». kostenkontrolle/SKILL.md nennt werkvertrag als Quelle der Verpflichtungen. Die Übergabe an Phase I (Vertragssumme je BKP-Konto) ist im werkvertrag-Skill selbst nicht aufgeführt. | gelb |
| 04.29 | Rückstellungen «Diverse» (Regie, Teuerung, Ausmassreserve, Rundung) neben der Vertragssumme | Nicht gefunden. Vorlage Ziff. 16: «Teuerungsanpassungen werden nicht vergütet» (Teuerungsreserve damit vertraglich null). Regieansätze stehen im Anhang, ein Regie-Betrag als Rückstellung nicht. kostenkontrolle kennt nur «offene NT-Erwartung». | rot |
| 05.4 / 04.31 | Kontoauszug je VE: Hauptvertrag, Nachtrag, Rückbehalt, Guthaben | Rückbehalt: SKILL.md Ablauf 5 sauber getrennt («Rückbehalt bis Abnahme 10 % ... Art. 149-150; Solidarbürgschaft nach Abnahme ... Art. 181»). Vorlage Checkliste Punkt 4 und Ziff. 8/18 fassen beide aber noch unter «10 % (Art. 181)» zusammen; Widerspruch Vorlage zu SKILL.md. Glossar 06: Rückbehalt nicht gefunden (unternehmerkontrolle/SKILL.md verweist auf den Glossar für «Rueckbehalt»). | gelb |
| 06.1 / 06.2 | Im Referenzmodell nicht belegt: Prozentsätze Rückbehalt/Skonto, Zahlungsplan im WV | JANS hat sie: Rückbehalt und Bürgschaft mit Schwellen (SKILL.md 5), Skonto (Zusammenstellung), Akonto nur gegen Teilzahlungsgesuche (Ziff. 5), Konventionalstrafe und Termine (Ziff. 22), Versicherungen (Ziff. 18, Anhang). Ein Akontoplan (07_ nennt ihn als Pflichtbestandteil) fehlt in der Vorlage als Feld. | gruen |
| 07.2 | Trennung Unternehmerbuchhaltung/Baubuchhaltung entspricht der Skill-Aufteilung | Skills unternehmerkontrolle (Phase H) und kostenkontrolle (Phase I) vorhanden; werkvertrag als Scharnier dazwischen. Das Bindeglied «vergleichbare KV-Summe» fehlt (siehe 04.23). | gelb |

Ampelbilanz: 2 grün, 11 gelb, 2 rot (15 Prüfpositionen).

## 02 Lücken, priorisiert nach Nutzen für die JANS-Bauleitung

### Lücke 1: Vergabeantrag als Gate vor dem Werkvertrag (04.23, 05.5, 07.3)

Was fehlt: Der Skill giesst eine «Vergabeempfehlung» in den Vertrag, prüft aber nicht, ob der Bauherr die Vergabe schriftlich freigegeben hat und ob die Vertragssumme gegen die projekteigene KV-Summe (nicht gegen Marktkennwerte) beurteilt wurde.
Risiko: Ein Vertrag wird ausgefertigt, bevor die Bauherrschaft ihn im Budget bestätigt hat; Budgetüberschreitungen fallen erst in der Baubuchhaltung auf.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/SKILL.md, Abschnitt «Ablauf», neuer Schritt zwischen 1 und 2.
Einzufügender Text:

```
1a. **Vergabefreigabe prüfen (Gate)** — kein Vertrag ohne unterzeichneten Vergabeantrag.
    Der Vergabeantrag (Beilage: Offertvergleich/Vergabeempfehlung) stellt die
    Vertragssumme netto der **vergleichbaren KV-Summe** gegenüber: KV-Betrag der
    gedeckten Konti abzüglich der Rückstellungen für Regie, Teuerung und Ausmassreserve.
    Er trägt die Unterschriften von Architekt UND Bauherrschaft. Fehlt er, den Antrag
    zuerst erstellen (Vorlage `ausschreibung/templates/vergabeempfehlung_template.md`,
    Sektion 8 plus Freigabeblock) und die Freigabe abwarten. Quelle: Referenzmodell
    `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`, 04.23 und 05.5.
```

Ergänzend in /Volumes/daten/jans-ai-hub/skills/ausschreibung/templates/vergabeempfehlung_template.md, nach Sektion 8 «Empfehlung der Vergabe»:

```
### 8a. Vergabeantrag (Freigabeblock, Pflicht vor Werkvertrag)
Tabelle: Vertragssumme netto | Diverse (Regie, Ausmassreserve, Rundung, Teuerung) |
vergleichbare KV-Summe | Differenz CHF und % | betroffene KV-Konti (BKP).
Darunter zwei Unterschriftenzeilen: Architekt (Ort, Datum) und Bauherrschaft (Ort, Datum).
```

### Lücke 2: Rückstellungen «Diverse» neben der Vertragssumme (04.29)

Was fehlt: Der Skill übergibt an Phase H nur Regieansätze (Franken pro Stunde), nicht die Beträge, die neben dem Vertrag im KV zurückgestellt bleiben (Regie, Ausmassreserve, Rundung, Teuerung). Phase I bucht damit nur die Verpflichtung, ohne Reserve je Vertrag.
Risiko: Regie und Ausmassmehrungen erscheinen in der Baubuchhaltung erst als Überschreitung, statt von Anfang an als eingeplante Reserve je Vergabeeinheit.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/SKILL.md, Abschnitt «Ablauf», Schritt 7.
Einzufügender Text (ersetzt Schritt 7):

```
7. **Übergabe an Phase H und I**: an `unternehmerkontrolle` Garantieverfalldaten,
   Termine, Regieansätze und Kostendach-Vorgaben; an `kostenkontrolle` je gedecktem
   KV-Konto die Vertragssumme (Spalte Vertrag) und daneben die **Rückstellungen
   «Diverse»** (Spalte Diverse: Regie, Ausmassreserve, Rundung, Teuerung), zusammen die
   vergleichbare KV-Summe (Spalte Total). Bei Einheitspreisverträgen Ausmassreserve
   immer beziffern (Vorschlag aus dem Vergabeantrag), bei Pauschal null, bei Kostendach
   die 5 %-Toleranz als Reserve führen. Vorlage Ziff. 16 schliesst Teuerung aus; die
   Teuerungsrückstellung ist dann null und wird so ausgewiesen, nicht weggelassen.
```

### Lücke 3: Vergabeeinheit und Kontenzuordnung im Vertragskopf (02.3, 04.17, 07.1)

Was fehlt: Der Vertragskopf nennt ein «Gewerk BKP [XXX]». Welche KV-Konti der Vertrag deckt (oft mehrere BKP-Untergruppen, etwa Gerüst plus Baumeister) und welche bürointerne Los-Nummer die Vergabeeinheit trägt, steht nirgends.
Risiko: In Phase I lässt sich die Vertragssumme nicht eindeutig auf die KV-Konti verteilen; bei Verträgen über mehrere BKP entstehen Doppel- oder Nullbuchungen.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/templates/werkvertrag-vorlage.md, Abschnitt 1 Kopf, Zeile «Gewerk».
Einzufügender Text (ersetzt die Zeile «Gewerk BKP [XXX] [Gewerk]»):

```
Vergabeeinheit   LOS [nn] [Gewerk]   (bürointerne Los-Nummer, kein BKP-Code)
Gedeckte Konti   BKP [XXX.X] [Bezeichnung]   CHF [Anteil]
                 BKP [XXX.X] [Bezeichnung]   CHF [Anteil]
                 (Summe der Anteile = Vertragssumme netto; Codes aus
                 references/bkp-2017/BKP-2017-Liste.md, Rule bkp-2017-referenz)
```

Dazu in Abschnitt 2 Zusammenstellung eine Fussnote: «Die Zeilen unter Arbeitsgattung entsprechen den gedeckten Konti im Kopf; ein Vertrag ohne LV wird auf dieser Stufe (Zwischentotale je Konto) geschlossen» (deckt zugleich 04.25 Quereinstieg).

### Lücke 4: Datenkette Ausschreibung, Vergabe, Werkvertrag als Kopie (04.24)

Was fehlt: Die Regel, dass das Vertrags-LV eine Kopie des bereinigten Offertvergleichs mit den Favoritenpreisen ist, das Original (Angebot des Unternehmers, Vergabeempfehlung) unverändert bleibt und der Vertrag den Dateibezug nennt.
Risiko: Preise werden von Hand in den Vertrag übertragen; Abweichungen zwischen Angebot und Vertrag sind später nicht mehr nachweisbar, und bei Streit fehlt die eingefrorene Grundlage.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/SKILL.md, Abschnitt «Ablauf», Schritt 2.
Einzufügender Text (ersetzt Schritt 2):

```
2. **Vertrags-LV als Kopie anlegen, Original einfrieren.** Das bereinigte Angebot bzw.
   der Offertvergleich mit den Favoritenpreisen (Abgebot eingerechnet) wird als Kopie
   `YYMMDD-WV-<projektnr>-LOS<nn>-LV.pdf` in `…06 WV/` abgelegt; das Original in
   `…04 Offerte UN/` und `…05 Vergabe/` wird nie verändert. Die Zusammenstellung zieht
   Brutto → Rabatt → weitere Abzüge (Baureinigung, Baustrom, Bauwasser gemäss
   `04_konditionen.md`) → Skonto → MwSt 8,1 % → Netto aus dieser Kopie, nicht aus dem
   Gedächtnis. Vertragsbestandteil (c) in Ziff. 1 nennt Dateiname und Datum der Kopie.
```

### Lücke 5: Vertragsbrief an Bauherr und Unternehmer mit Rücksendefrist (02.10, 03.5, 03.6, 05.11)

Was fehlt: Der Skill erzeugt einen Mail-Entwurf an den Anbieter (10_dokumente-standard). Ein Vertragsbrief an beide Vertragsparteien mit Eingabetermin (Frist für die Rücksendung des unterzeichneten Exemplars), Arbeitsgattung und Exemplarzahl fehlt; ebenso ein Inhaltsverzeichnis des Vertrags.
Risiko: Der Bauherr erhält sein Exemplar nicht oder verspätet; unterzeichnete Verträge kommen ohne Frist zurück, Baubeginn ohne gültigen Vertrag.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/SKILL.md, Abschnitt «Ablauf», Schritt 6.
Einzufügender Text (ersetzt Schritt 6):

```
6. **PDF erzeugen und mit Vertragsbrief versenden.** Der Werkvertrag erhält nach dem
   Kopf ein Inhaltsverzeichnis (Zusammenstellung, Vergütung, Allgemeine Bedingungen,
   Angaben des Unternehmers, Beilagen mit Dateinamen). Zwei Vertragsbriefe (Vorlage
   Briefkopf gemäss `10_dokumente-standard.md`): an den Unternehmer mit Arbeitsgattung,
   Exemplarzahl und **Rücksendefrist** für das unterzeichnete Exemplar (Vorschlag 10
   Arbeitstage), an die Bauherrschaft mit derselben Frist zur Gegenzeichnung. Beide als
   Apple-Mail-Entwurf, Versand erst nach Freigabe. Doppelt ablegen (Projektordner
   `…06 WV/` + AI-Hub-Output).
```

### Lücke 6: Nachtragstypen und Abzüge im Vertrag vorsehen (02.11, 04.28)

Was fehlt: Ziff. 2 kennt «nachofferieren», das Nachtrag-Formular kennt nur «Nachtragssumme netto». Ergänzung und Abzug (Minderleistung), brutto (Vertragskonditionen gelten) und netto (Festbetrag), sowie die Regel, dass ein Nachtrag mit eigenem LV eingeholt wird, sind im Vertrag nicht angelegt.
Risiko: Minderleistungen werden nicht abgezogen, Nachträge ohne Rabatt/Skonto abgerechnet; die Vertragssumme in Phase H ist nicht mehr nachvollziehbar.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/templates/werkvertrag-vorlage.md, Abschnitt 4, Ziff. 2 (Ergänzung am Ende).
Einzufügender Text:

```
   Nachträge und Abzüge werden typisiert geführt und verändern die Vertragssumme:
   Ergänzung brutto (Vertragskonditionen Rabatt/Skonto gelten), Ergänzung netto
   (Festbetrag), Abzug brutto, Abzug netto (Minderleistungen, bauseits übernommene
   Positionen). Jeder Nachtrag wird mit eigenem Leistungsverzeichnis zu den
   Einheitspreisen und Regieansätzen dieses Vertrags offeriert und vor Ausführung
   schriftlich beauftragt (Formular `unternehmerkontrolle/templates/nachtrag-formular.md`).
   Die Summen der Ergänzungen und Abzüge werden in der Schlussabrechnung getrennt
   ausgewiesen (Ziff. 8).
```

### Lücke 7: Normbezug vervollständigen und interne Querverweise berichtigen (04.26)

Was fehlt: Die Vorlage nennt keine Ausgabe der SIA 118 (SKILL.md führt 1991 und 2013 inkl. C1:2026 nebeneinander) und kein SIA-1023-Formular. Dazu zwei Querverweisfehler in der Vorlage: Ziff. 1 (b) verweist auf «Vorbehalt Ziff. 17» (das ist «Personal»; gemeint ist Ziff. 19), und Ziff. 19 nennt die Normenhierarchie als «Art. 4», Ziff. 1 dagegen «Art. 21 SIA 118».
Risiko: Ein Vertrag mit falschem Binnenverweis und ohne Normausgabe ist im Streitfall angreifbar; die Rangordnung der Vertragsbestandteile hängt an genau diesen Stellen.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/templates/werkvertrag-vorlage.md, Abschnitt 4, Ziff. 1 und 19.
Einzufügender Text (Ziff. 1, Zeile (b) und Eingang):

```
1. **Vertragsgrundlagen** — Vertragsbasis ist die Norm SIA 118:[Ausgabe] inkl.
   Korrigenda C1:2026 (Ausgabe gemäss Entscheid Raphael, siehe Offene Frage 2); die
   Vertragsurkunde folgt inhaltlich dem Aufbau des SIA-Werkvertragsformulars 1023.
   Rangordnung bei Widerspruch (Art. 21 SIA 118): ... (b) diese Vertragsurkunde mit
   speziellen objektbezogenen und ergänzenden Bestimmungen zur SIA 118 (Änderungen
   abschliessend in Ziff. 19); ...
```

Und Ziff. 19, erster Satz: «Norm SIA 118 ausdrücklich übernommen unter Vorbehalt der Rangordnung nach Ziff. 1 (Art. 21), mit folgenden Änderungen: ...». Die Fundstellen Art. 4 und Art. 21 vor dem Ändern am Destillat `wissen/normen/destillate/sia-118-<ausgabe>.md` gegenlesen (Rule normen-referenz, Feld status).

### Lücke 8: Vorlage und SKILL.md beim Rückbehalt angleichen (05.4, 04.31)

Was fehlt: SKILL.md Ablauf 5 trennt seit dem 16.08.2026 Rückbehalt bis Abnahme (Art. 149-150) und Solidarbürgschaft nach Abnahme (Art. 181). Die Vorlage sagt in der Checkliste Punkt 4 weiterhin «Garantie/Rueckbehalt: 10 % (Ziff. 8/18, Art. 181)», Ziff. 18 «Rueckbehalt 10 % statt Garantie (unverzinst, 5 Jahre)», Anhang «Bank-/Versicherungsgarantie 10 % ... (Art. 181)». Der Glossar kennt «Rückbehalt» nicht, obwohl unternehmerkontrolle/SKILL.md darauf verweist.
Risiko: Wer nur die Vorlage nimmt, schreibt eine einzige 10 %-Sicherheit in den Vertrag und verliert den Rückbehalt bis zur Abnahme.
Zieldatei: /Volumes/daten/jans-ai-hub/skills/werkvertrag/templates/werkvertrag-vorlage.md, Anwendungs-Checkliste Punkt 4.
Einzufügender Text (ersetzt Punkt 4):

```
4. Zwei Sicherheiten getrennt setzen: Rückbehalt bis Abnahme 10 % des Leistungswerts,
   über Fr. 300'000.– noch 5 %, min. Fr. 30'000.– (Art. 149-150); Solidarbürgschaft
   nach Abnahme 10 % der Vergütungssumme, über Fr. 200'000.– noch 5 %, min.
   Fr. 20'000.– (Art. 181); beide max. Fr. 1 Mio. Ziff. 8, Ziff. 18 und Anhang
   «Garantieleistung» entsprechend fassen. Garantiefrist 2 J. (Art. 172), Verjährung
   5/10 J. (Art. 180) → Garantieverfalldaten an `unternehmerkontrolle`. Werte vor dem
   Zitieren am Destillat prüfen (Feld status, Rule normen-referenz).
```

Dazu im Glossar 06 eine Zeile «Rückbehalt: Vom Bauherrn bis zur Abnahme zurückbehaltener Anteil des Leistungswerts (SIA 118 Art. 149-150); nicht zu verwechseln mit der Solidarbürgschaft nach Abnahme (Art. 181)».

## 03 Was der JANS-Skill besser oder anders löst als das Referenzmodell

Die Vertragsurkunde selbst ist beim JANS-Skill deutlich reicher als das, was der Scan belegt. Das Referenzmodell nennt für den Werkvertrag keine Prozentsätze für Rückbehalt, keinen Skonto-Mechanismus, keinen Zahlungsplan, keine Termine, keine Konventionalstrafe und keine Versicherungsnachweise (06.1, 06.2, 05.11 «nicht belegt»). JANS führt alle diese Punkte mit Fundstelle: zwei getrennte Sicherheiten mit Schwellen (SKILL.md Ablauf 5), Rügefrist verdeckte Mängel 60 Tage nach OR-Revision und Korrigenda C1:2026, Termine mit Konventionalstrafe je Verzugstag (Ziff. 22), Haftpflicht-Deckungssummen und Regieansätze je Qualifikation im Anhang, dazu 22 Allgemeine Bedingungen mit explizit aufgelisteten SIA-118-Abweichungen (Ziff. 19). Das entspricht dem Prinzip 04.26 (Abweichungen benennen) und geht darüber hinaus.

Die drei Vergütungsmodelle sind sauber unterschieden und decken das Referenzmodell ab: Variante A Einheitspreis entspricht der Vergütungsart Akkord/Ausmass, Variante C Kostendach der Vergütungsart Regie/Aufwand mit Obergrenze, und Variante B Pauschal hat im Scan kein Gegenstück (dort nicht belegt). Anders als das Referenzmodell, das für Ausmass und Aufwand je ein eigenes LV verlangt, führt JANS Regie innerhalb des Ausmassvertrags als Nebenleistung (Ziff. 6, Regieansätze im Anhang). Das ist für die Bauleitung praktischer, verlangt aber die Regie-Rückstellung aus Lücke 2, damit Phase I den Regieanteil trotzdem getrennt sieht. Eine Auffälligkeit in Variante C: «Kostendach darf maximal um 5 % überschritten werden» widerspricht dem Begriff Kostendach im Wortsinn; ob das ein gewollter Toleranzsatz aus den Archivvorlagen ist, lässt sich aus den gelesenen Dateien nicht klären.

Normen-Disziplin: Der Skill zitiert jede Norm-Aussage mit Destillat und Statusfeld und warnt vor der ABB-Warnkarte. Das Referenzmodell belegt so etwas nicht. Die Einbindung der KB `wissen/energie` (Bedingungen für nachhaltiges Bauen als Vertragsstufe) hat im Referenzmodell ebenfalls kein Gegenstück.

Wo das Referenzmodell klar stärker ist: in der Verbindung des Vertrags mit dem Budget (Vergabeantrag, vergleichbare KV-Summe, Diverse, Kontenzuordnung über die Vergabeeinheit) und in der formalen Belegkette mit doppelter Unterschrift. Das ist der Kern der Lücken 1 bis 3.

## 04 Offene Fragen an Raphael

1. Vergabeantrag als eigenes Formular oder als Freigabeblock in der Vergabeempfehlung? Das Referenzmodell führt ihn als eigenen Beleg (Nummer, Datum, VE, Konti, Diverse, vergleichbare KV-Summe, zwei Unterschriften). Die JANS-Vergabeempfehlung ist ein 5- bis 8-seitiger Bericht. Vorschlag in Lücke 1 ist der Freigabeblock als Sektion 8a; ein eigenes einseitiges Formular wäre die Alternative.

2. Welche Ausgabe der SIA 118 gilt im JANS-Vertrag als Standard, 1991 oder 2013? SKILL.md zitiert die Sicherheiten und Fristen aus dem Destillat 1991 und fordert zugleich «Norm SIA 118:2013 inkl. Korrigenda C1:2026» in die Vertragsbestandteil-Liste. Die Vorlage nennt keine Ausgabe. Und: Soll die Vertragsurkunde formal auf das SIA-Formular 1023 Bezug nehmen oder bewusst als eigene JANS-Urkunde (aus den drei Archivvorlagen) bestehen bleiben?

3. Soll die bürointerne Los-Nummer als Vergabeeinheit-Kürzel in den Vertragskopf, mit Liste der gedeckten BKP-Konti (Lücke 3)? Das bindet den Vertrag an die KV-Konti und an die Ordnerstruktur `XX <BKP> 06 WV`, ändert aber den Kopf aller künftigen Verträge.
