# Audit Skill honorarberechnung-sia102 gegen das BBase-Referenzmodell (Modul Honorar)

Datum: 07.09.2026
Prüfmodus: nur lesen, nichts auf dem NAS verändert.

Geprüfte Quellen:
- Prüfraster: /private/tmp/claude-501/-Users-raphaeljans-Developer-jans-ai-hub/d1850cba-317b-4fa1-bc95-6e2ddb0ff3ce/scratchpad/260907-bbase-scan.md (Abschnitte 02.15, 03.9, 03.10, 04.1 bis 04.6, 04.42, 05.15, 05.17, 07.5)
- Skill: /Volumes/daten/jans-ai-hub/skills/honorarberechnung-sia102/SKILL.md (312 Zeilen, Stand 27.08.2026)
- Referenzen: /Volumes/daten/jans-ai-hub/skills/honorarberechnung-sia102/referenzen/ (nur README.md, keine PDFs; der in SKILL.md genannte Ordner templates/ und die Vorlage referenzen/an-00037.pdf existieren nicht)
- Praxisfall Offerte: /Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/00_Admin/1 Angebote/260510 Angebot Phase II/2619_HOP2_JANS.pdf (BBaseHonorar 8.6, 17 Seiten, 10.05.2026)
- Praxisfall Berechnung: /Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/04_KostenTermine/5_Honorarofferte/260508_Honorar_SIA102_JANS.pdf (SIA 102-K, 08.05.2026)
- Norm-Beleg im Hub: /Volumes/daten/jans-ai-hub/wissen/normen/destillate/sia-102-2014.md (status established), /Volumes/daten/jans-ai-hub/wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md §5 (status established)
- Schwester-Agent: /Volumes/daten/jans-ai-hub/agents/honorar-angebotspruefung.md

Norm-Ziffern werden nur genannt, wo sie im Skill, im Raster oder im Hub-Destillat mit Fundstelle stehen; die Herkunft ist jeweils angegeben.

## 01 Abgleichstabelle

| Prinzip | Kurzname | Stand im Skill (Datei, Abschnitt, Zitat) | Ampel |
|---|---|---|---|
| 04.1 | Prozess folgt den SIA-Phasen, Daten fliessen weiter | SKILL.md «Phasenanteile Grundleistungen», Tabelle 11 bis 53; Kernprinzip 2: «Jede Honorarposition wird einer SIA-Phase zugeordnet.» Datenkette zu kostenkontrolle/mahnwesen fehlt | gelb |
| 04.2 | Baukosten nur Phasen 3 bis 5, Phasen 1/2/6 nach Aufwand, unter 500'000 keine Formel | Phasentabelle zieht Phase 21 mit 4 % in die 100 %; Methode 1 beginnt bei «0.5 Mio 18-22 %» ohne Untergrenze; kein Aufwands-Modus beschrieben | rot |
| 04.3 | Offerte = Vertragsbeilage + Leistungsbeschrieb + Vorgabe; Leistungsnachweis minus Akonto = Guthaben | Format A: «Block Leistungen des Architekten mit Phasenliste», Konventionen 2 Akonto; kein Nachweis, keine Übernahme in Auftragsverwaltung oder KV | rot |
| 04.4 | Definition aufwandbestimmende Baukosten (abgerechnet, nach Rabatt, ohne Honorare/MwSt/Land/Finanzierung/Gebühren/Versicherungen) | Kernprinzip 1 und Methode 2: «B = aufwandbestimmende Baukosten (BKP 1+2)»; keine Ausschlussliste, kein Rabattabzug, keine Abrechnungsbasis; Fachplaner-Reduktion nur als AHB-Zweitbeleg («bindend nur bei AHB-Aufträgen») | rot |
| 04.5 | Faktoren explizit: Baukategorie, n, r als Rabattträger, Z1/Z2, i, U, s, Qualifikationskategorien | Methode 2: «H = B × ((Z0 + Z1 × log10(B)) × q × n + a) × i × r × s»; Symbole vertauscht, U fehlt, Skill selbst: «Faktoren, die dieser Skill nicht fuehrt: Anpassungsfaktor r, Teamfaktor i, Sonderleistungsfaktor s» | rot |
| 04.6 | Stundenansätze aus der Betriebskostenrechnung | nur «a = Stundenansatz» als Symbol; kein JANS-Ansatz, keine Herkunft, kein Tarifblatt im Hub (grep über rules/, skills/, normen/: kein Treffer) | rot |
| 04.42 | Stunden sind Belege (ArG, fünf Jahre, visierte Rapporte) | nicht vorhanden; Skill nennt zwar «Stundenansatz mit Kostendach» als Preismechanismus, ohne Rapportpflicht | rot |
| 05.15 | Datenfelder Honorarofferte | Format A: Briefkopf, AN-Nr., Datum, Gültigkeit, Kundennr., Leistungszeitraum, Tabelle, Leistungen, Pflichten Bauherrschaft, Total, Zahlungsbedingungen, Footer. Fehlend: Baukategorie, Kostenindex, Faktoren, Z1/Z2 mit Jahr, Ansätze je Qualifikationskategorie, Trennung Grund-/Zusatzleistungen, Nebenkosten, Nachweis | gelb |
| 05.17 | Auftrag Büro: Vorgabe/Aufwand/Abrechnung, Zahlungsplan, Mahnkriterien | Konventionen 2: «Akonto-Rechnung pro Monat oder pro Phase … Zahlungsfrist 20 Tage netto»; keine Verknüpfung zu kostenkontrolle, mahnwesen, zahlungsabgleich, bexio | gelb |
| 07.5 | Normbezug SIA 102 (2014) versus 2020 | «Deine Aufgabe»: «nach SIA 102:2020 (oder aktuell gültige Auflage)»; Format B dagegen: «Ausgabe im Kopf bewusst setzen, nicht «2020» einsetzen»; referenzen/README verlangt SIA 102:2020 als erste Ablage | gelb |
| Z1 (03.9) | Hinweise-Blatt: Ziel, Zweck, Vertragsbestandteile, Pflichten, Rechte, Vergütungsregeln, Versicherungen | Konventionen 3: «Pflichten der Bauherrschaft (Standardblock)» und Konventionen 2 Zahlungsbedingungen; Ziel/Zweck, Rangfolge der Vertragsbestandteile, Rechte beider Seiten, Versicherungen, Gerichtsstand fehlen | gelb |
| Z2 (03.9) | Vertragsform Pauschale / Kostendach / Aufwand sauber getrennt | Formate A/B/C plus Hinweis «Prozentsatz der Bausumme nach SIA 102, Stundenansatz mit Kostendach, oder … Nachofferte»; keine Regel, welche Form für welche Leistung, kein Dreizeiler «mit Festpreis / nach Baukosten / nach Zeitaufwand» | gelb |
| Z3 (03.9) | Qualifikationskategorien A bis G nach Funktion im Auftrag | nicht vorhanden (die Praxis-Offerte S. 6 führt die Tabelle mit Ansätzen 100 bis 210) | rot |
| Z4 (04.3) | Übernahme der Offerte als Vorgabe ins KV-Konto 29x | «291 Architekt (Honorar Gebäude) Standard für JANS-Honorarofferten»; nur der Code, keine Übergabe an kostenkontrolle | gelb |

Bilanz: 14 Zeilen, 7 rot, 7 gelb, 0 grün.

Befund am Praxisfall (beide PDFs gegeneinander gelesen, nicht gegen den Skill):
- Die K-Berechnung vom 08.05.2026 rechnet B aus «Kostenschätzung BKP 1 / 2 / 4 / 5 / 9 inkl. MWSt» 1'000'000, abzüglich MwSt 8.1 % = 925'000, davon «Anteil mit Honorarberechtigung (Richtwert) 70 %» = 648'000. BKP 5 enthält nach BKP-2017-Liste 51 Bewilligungen/Gebühren und 53 Versicherungen, also genau Positionen, die das Referenzmodell (04.4) und das Destillat (Ziff. 7.5) aus B ausschliessen. Der Skill sagt «BKP 1+2». Drei verschiedene Bezugsgrössen für dasselbe Büro.
- Faktoren n 1.2, r 1.15, U 1.3, i 1.15, s 1.1, Produkt 2.27. Jeder Faktor liegt einzeln innerhalb der Bandbreite des Destillats (n 0.7 bis 1.3, r 0.8 bis 1.2, U 1.0 bis 1.5, s 1.0 bis 1.5, i ohne Vereinbarung 1.0). Zusammen verdoppeln sie den Zeitaufwand: Tm = 2'797 Std., H = 377'600 bei h = 135.
- Die Offerte vom 10.05.2026 bepreist die Architekturanteile der Phasen 41 bis 53 (Leistungsanteil 42.5 %, Bauleitungsanteile als Leerpositionen) mit Festpreis 100'000. Aus der K-Berechnung ergäben dieselben 42.5 % rund 160'500. Die Offerte liegt also rund 38 % unter der eigenen Berechnung, die K-Berechnung weist «Rabatt 0.0 %» aus. Der Nachlass ist unsichtbar; genau das will das Prinzip «Anpassungsfaktor als Rabattträger» (04.5) verhindern.
- Stundenansatz: K-Berechnung h = 135, Offerte «Zeit Mitteltarif 155» und Kategorientabelle 100 bis 210. Die Zahlungsfrist in der Offerte beträgt 14 Tage, der Skill schreibt 20 Tage netto vor. Die Offerte ist «exkl. MwSt», die K-Berechnung rechnet 8.1 % MwSt; der Skill sagt «JANS ist nicht MWST-pflichtig», der Agent honorar-angebotspruefung sagt «Architekturleistungen sind in der Schweiz mehrwertsteuerpflichtig … IMMER ROT». Siehe 04, Frage 1.
- Die Offerte nennt keine SIA-Ausgabe; die K-Berechnung trägt «SIA 102-K (Ausgabe 2018)» und «Z1/Z2 2018 (Median)». Der Skill kennt weder Z1/Z2-Jahrgänge noch einen Ort, wo sie abgelegt sind (Destillat: Zahlenwerte Z1/Z2 werden vom SIA separat publiziert, offener Punkt).

## 02 Lücken, priorisiert

### Lücke 1 (04.2, 07.5): Methodenwahl fehlt als Gate

Was fehlt: Die Regel, dass Grundleistungen nach Baukosten nur für die Phasen 3 bis 5 gelten, Zusatzleistungen und die Phasen 1, 2 und 6 nach Zeitaufwand, und dass unter 500'000 Franken Bausumme keine SIA-Formel angewandt wird. Die JANS-Phasentabelle zieht Phase 21 in die 100 %, Methode 1 kennt keine Untergrenze, ein Aufwands-Modus ist nirgends beschrieben.
Risiko: Vorstudien und Bewirtschaftung werden prozentual nach Baukosten bepreist, die es noch nicht gibt oder die nichts mit dem Aufwand zu tun haben, und Kleinaufträge laufen in eine Formel, die dort nicht trägt.
Zieldatei: SKILL.md, neuer Abschnitt vor «Honorarsatz nach SIA 102 — Berechnungsmethoden».
Einzufügender Text:

```
## Methodenwahl (Gate vor jeder Berechnung)

1. **Nach Baukosten nur Phasen 3 bis 5.** Grundleistungen Vorprojekt bis Inbetriebnahme dürfen
   über die aufwandbestimmenden Baukosten gerechnet werden (SIA 102:2014, Ziff. 7.7, Basis
   Phasen 3+4+5 = 100 %).
2. **Phasen 1, 2 und 6 sowie alle Zusatzleistungen nach Zeitaufwand**, mit den JANS-Stundenansätzen
   (Abschnitt «Stundenansätze JANS») und einem Kostendach je Position. Die JANS-Phasentabelle
   darf Phase 21 nur als Zeitaufwand-Position führen, nicht als Prozent der Bausumme.
3. **Unter CHF 500'000 aufwandbestimmender Bausumme keine SIA-Formel.** Studien, Spezialaufgaben
   und Kleinprojekte werden nach Zeitaufwand offeriert (Richtpreis mit Kostendach).
4. In jeder Offerte steht je Leistung, welche Methode gilt (Dreizeiler «mit Festpreis / nach
   Baukosten / nach Zeitaufwand», siehe Format A).
Beleg für die Regel: Referenzmodell Bauadministration, BBase-Scan 07.09.2026, Abschnitt 03.9.
```

### Lücke 2 (04.5): Formel und Faktorliste stimmen weder mit der Norm noch mit der JANS-Praxis überein

Was fehlt: Methode 2 führt eine Formel mit Z0, log10 und einem additiven Stundenansatz und vertauscht die Symbole (q als Schwierigkeitsgrad, n als Anpassungsfaktor, r als Sonderleistungen). Die Norm laut Destillat und die K-Berechnung vom 08.05.2026 rechnen dreistufig: p = Z1 + Z2 / ³√B; Tm = B × p/100 × n × r × U × i × s; H = Tm × h. Umbaufaktor U, Anpassungsfaktor r als Rabattträger, Z1/Z2 mit Jahrgang und ein Faktorprotokoll fehlen.
Risiko: Wer die Skill-Formel nachrechnet, erhält ein anderes Resultat als BBaseHonorar; und weil kein Faktor einzeln begründet wird, entsteht ein Produkt von 2.27 ohne dass es jemand sieht.
Zieldatei: SKILL.md, Abschnitt «Methode 2: Vollformel SIA 102» vollständig ersetzen.
Einzufügender Text:

```
### Methode 2: Vollformel nach aufwandbestimmenden Baukosten (für offizielle Honorarofferten)

Dreistufig, Symbole wie in der Norm und in BBaseHonorar (K-Berechnung 2619, 08.05.2026):
  p  = Z1 + Z2 / ³√B                 Grundfaktor; Z1/Z2 mit Jahrgang und Quelle (z.B. «2018 Median»)
  Tm = B × p/100 × n × r × U × i × s  prognostizierter Zeitaufwand in Stunden
  H  = Tm × h                          Honorar exkl. MwSt, h = JANS-Stundenansatz (Tarifblatt)

| Faktor | Bedeutung | Bandbreite (Destillat sia-102-2014.md) | Normalfall | Pflichtangabe |
|---|---|---|---|---|
| n | Schwierigkeitsgrad je Baukategorie I bis VII | 0.7 bis 1.3 | je Kategorie | Kategorie und Begründung |
| r | Anpassungsfaktor, zugleich Rabattträger | 0.8 bis 1.2 | 1.0 | jede Abweichung, auch nach unten |
| U | Umbau/Unterhalt/Denkmalpflege | 1.0 bis 1.5 | 1.0 bei Neubau | Anteil wiederverwendeter Substanz |
| i | Teamfaktor | ohne Vereinbarung 1.0 | 1.0 | nur mit Vereinbarung |
| s | Sonderleistungen | 1.0 bis 1.5 | 1.0 | Leistung benennen |

**Faktorprotokoll ist Pflicht:** jede Offerte trägt die fünf Faktoren einzeln mit Begründung und
das Produkt n × r × U × i × s. Ein Nachlass wird über r gezeigt, nie stillschweigend im
Festpreis versteckt (Praxisfall 2619: Festpreis 38 % unter der eigenen Berechnung bei «Rabatt 0.0 %»).

**Plausibilitätsgrenze Faktorprodukt (bürointern):** bis 1.5 ohne weiteren Kommentar;
1.5 bis 2.0 jede Erhöhung einzeln begründen; über 2.0 Freigabe Raphael und Gegenrechnung
nach Zeitaufwand (Art. 6, Qualifikationskategorien) als Plausibilisierung. Umbaufaktor U und
höherer Schwierigkeitsgrad n für dieselbe Erschwernis nicht kumulieren.
```

### Lücke 3 (04.4): Definition der aufwandbestimmenden Baukosten und Fachplaner-Reduktion

Was fehlt: Eine Definition, die sagt, was in B hinein gehört und was nicht (abgerechnete Baukosten nach Rabatten, exkl. MwSt; ohne Honorare, Nebenkosten, Landerwerb, Finanzierung, Gebühren, Versicherungen), und eine Regel für die Reduktion bei Fachplanerbeizug. Der Skill sagt nur «BKP 1+2», die Praxis rechnet BKP 1/2/4/5/9 mal 70 %.
Risiko: Drei Bezugsgrössen im selben Büro; BKP 5 enthält Gebühren und Versicherungen, die nicht aufwandbestimmend sind; der pauschale 70 %-Richtwert ist nicht herleitbar und in einer Verhandlung nicht verteidigbar.
Zieldatei: SKILL.md, Kernprinzip 1 ersetzen und neuen Abschnitt «Aufwandbestimmende Baukosten B» direkt nach «Kernprinzipien» einfügen.
Einzufügender Text:

```
## Aufwandbestimmende Baukosten B (Definition, verbindlich)

1. **Basis:** die abgerechneten Baukosten des ausgeführten Bauwerks nach Abzug der vertraglich
   vereinbarten Rabatte, exkl. MwSt. In der Offerte ersatzweise die Kostenschätzung oder der KV,
   mit Vermerk «provisorisch, Abrechnung nach Bauabrechnung».
2. **Aufwandbestimmend:** BKP 1 Vorbereitungsarbeiten, BKP 2 Gebäude, BKP 3 Betriebseinrichtungen,
   BKP 4 Umgebung, eingebautes Mobiliar. Katalogmobiliar (BKP 9) zu 50 %.
3. **Nicht aufwandbestimmend:** Honorare und Nebenkosten aller Planer, MwSt, Landerwerb,
   Finanzierungskosten, Gebühren (BKP 51), Versicherungen (BKP 53), Wettbewerbskosten.
   BKP 5 gehört deshalb nie pauschal in B.
4. **Reduktion bei Fachplanerbeizug:** je Gewerk ausweisen, nicht als Pauschalprozent. Richtwerte
   (AHB Stadt Zürich, `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` §5):
   Elektro und HLKKS max. 30 % der betroffenen Elemente, Fassade 50 %, Grossküchen 50 bis 75 %,
   Umgebung 50 %. Die Norm selbst spricht von einem gewogenen Mittel über alle Bauwerksteile
   (Destillat, Ziff. 7.1.4); die Wahl der Methode ist offener Fachentscheid Raphael.
5. Die Herleitung von B steht als eigene Tabelle in jeder Offerte (Ausgangssumme, Abzüge, Reduktion je
   Gewerk, Ergebnis).
Beleg: Referenzmodell BBase-Scan 07.09.2026, Abschnitt 03.9 «Begriffe» und 04.4; Destillat Ziff. 7.5.
```

### Lücke 4 (04.3, 05.15): Leistungsnachweis als Rechnungsbeilage und Soll/Ist-Grundlage

Was fehlt: Der Nachweis «Teilleistung 0 bis 100 % je Phase, erledigte Leistung minus Akonto = Guthaben» als Pflichtbeilage jeder Akontorechnung und als Basis der Nachkalkulation. Die Praxis-Offerte (S. 16 bis 17) führt ihn bereits; der Skill kennt nur die Zahlungsbedingungen.
Risiko: Akontozahlungen laufen gleichmässig weiter, ohne Bezug zum Leistungsstand; bei Sistierung oder Streit fehlt der Beleg, was bereits erbracht ist.
Zieldatei: SKILL.md, neuer Abschnitt nach «Verbindliche Konventionen JANS».
Einzufügender Text:

```
## Leistungsnachweis und Akontoplan (Pflicht ab Vertragsabschluss)

1. Jede Offerte enthält den Leistungsnachweis als Tabelle: Teilphase, Leistungsanteil in %,
   Honorar, erledigt in %, erledigte Leistung CHF, Akonto bezahlt, Guthaben. Beim Versand der
   Offerte steht «erledigt» auf 0 %.
2. Jede Akontorechnung trägt den nachgeführten Leistungsnachweis als Beilage; das Guthaben ist
   der Rechnungsbetrag. Akonto folgt dem Leistungsstand, nicht dem Kalender (Modalität aus der
   Praxis: Abschlagszahlungen von mindestens 90 % der erbrachten Leistung bei Festpreis).
3. Die Prozentwerte des Nachweises sind die Soll/Ist-Grundlage der Nachkalkulation: Soll = Anteil
   × Honorar, Ist = rapportierte Stunden × Ansatz. Abweichungen über 20 % je Phase gehen als
   Lesson in `wissen/projekt-lessons`.
4. Ablage: Nachweis als XLSX neben der Offerte (`YYMMDD-<Projektnr>-Leistungsnachweis.xlsx`),
   nachgeführt bei jeder Rechnung.
```

### Lücke 5 (04.6, 04.42, Z3): Stundenansätze aus der Betriebskostenrechnung, Qualifikationskategorien, Rapportpflicht

Was fehlt: Ein JANS-Tarifblatt mit Herkunft (Lohnsumme, Zuschlag, Präsenzzeit, Jahr), die sieben Qualifikationskategorien A bis G nach Funktion im Auftrag (nicht nach Stellung im Büro), und die Pflicht, Stunden als Beleg zu rapportieren und fünf Jahre aufzubewahren. Die Praxis führt drei verschiedene Ansätze (135, 155, Tabelle 100 bis 210) ohne Herleitung im Hub.
Risiko: Ansätze werden je Offerte neu geschätzt; bei Aufwandshonorar ist ohne Rapport nichts einforderbar.
Zieldatei: SKILL.md, neuer Abschnitt nach «Schwierigkeitsgrad»; zusätzlich neue Datei referenzen/JJMMTT-Stundenansaetze-JANS.md (kanonische Quelle, jährlich nachgeführt).
Einzufügender Text:

```
## Stundenansätze JANS (Tarifblatt, kanonisch in `referenzen/`)

1. Stundenansätze kommen aus der eigenen Betriebskostenrechnung (AHV-Lohnsumme plus Zuschläge für
   Personalaufwand, Gemeinkosten, Risiko und Gewinn, geteilt durch die verrechenbare Präsenzzeit),
   nie aus Annahmen. Das Tarifblatt nennt Jahr, Herleitung und Gültigkeit; ohne Tarifblatt
   Platzhalter setzen und nachfragen (Rule identifikatoren-verifizieren).
2. Ausweis nach Qualifikationskategorien A bis G, Stufe 1 bis 3, nach **Funktion im Auftrag**:
   Projektleiter Grossprojekte A, Chefarchitekt/Projektleiter A/B, leitender Architekt B/C,
   Architekt C/D, Bautechniker D/E, Zeichner E bis G; Bauleitung und Administration analog
   (Muster: Offerte 2619-HOP2, S. 6). Dazu der Mitteltarif M für Stundenabrechnungen.
3. Derselbe Ansatz h in Berechnung und Offerte; weicht der Mitteltarif für Zeitaufwand ab, ist
   das in der Offerte begründet.
4. Stunden sind Belege: bei Honorar nach Zeitaufwand und für jeden Nachweis werden die Stunden
   je Mitarbeiter, Tag, Phase rapportiert, visiert und fünf Jahre aufbewahrt (ArG 46).
```

### Lücke 6 (Z1, Z2, 05.15): Format A ohne Hinweise-Blatt, ohne Vergütungs-Dreizeiler, mit toten Verweisen

Was fehlt: Der Bedingungs- und Hinweise-Teil (Ziel/Zweck, Vertragsbestandteile mit Rangfolge, AGB, Zahlungsplan, freigegebene Teilphasen, Pflichten und Rechte beider Seiten, Vergütung nach Form getrennt, Versicherungen, Gerichtsstand, Ausfertigung), die Trennung Grund-/Zusatzleistungen und die Nebenkosten-Positionen 9.x. Format A verweist auf referenzen/an-00037.pdf und templates/, beide existieren nicht.
Risiko: Der Skill erzeugt ein Angebot ohne Vertragsgehalt, während die Praxis (BBase) bereits eine unterschriftsreife Vertragsurkunde liefert; ein Erzeugnis aus dem Skill wäre ein Rückschritt.
Zieldatei: SKILL.md, Abschnitt «Format A» ersetzen; Verweise auf an-00037.pdf und templates/ streichen oder die Dateien nachliefern.
Einzufügender Text:

```
### Format A: Honorarofferte als Vertragsurkunde (DOCX/PDF, Muster 2619-HOP2 vom 10.05.2026)

Teil 1 Bedingungen und Hinweise: Projekt-Informationen (Projektart, Bauwerksart, Raumprogramm,
Konstruktion, Baubeginn, Bezug) · Ziel und Zweck · Vertragsbestandteile mit Rangfolge (Urkunde,
SIA-Ordnung mit Ausgabe, schweizerisches Recht) · AGB (Leistungszeitraum, Rechnungsstellung,
Zahlungsfrist, Angebotsrahmen) · Zahlungsplan · übertragene und freigegebene Teilphasen ·
Pflichten und Rechte beider Seiten · Vergütung als Dreizeiler «mit Festpreis / nach Baukosten /
nach Zeitaufwand», je mit Kostenbasis · Versicherungen (Personen-, Sach-, Bautenschaden,
Gesellschaft, Selbstbehalt) · Gerichtsstand · Ausfertigung.
Teil 2 Architektenhonorar: Tarifblatt A bis G · Herleitung B und Faktorprotokoll · Zusammenfassung
getrennt nach Grundleistungen (Phasen 3 bis 5, Prozent) und Zusatzleistungen (Phasen 1, 2, 6,
Zeitaufwand) · Nebenkosten 9.x · Total mit MwSt-Vermerk.
Teil 3 Leistungsbeschrieb je Teilphase (Grundlagen, Ziele, Leistungen des Auftraggebers,
Leistungen des Architekten, Phasenabschluss); Leerpositionen für nicht beauftragte Leistungen.
Teil 4 Leistungsnachweis und Akontoplan (Abschnitt «Leistungsnachweis»), Unterschriftenblock.
Vorlage: die anonymisierte Kopie von 2619-HOP2 unter `referenzen/` ablegen (heute leer).
```

### Lücke 7 (07.5): Normbezug im Kopf des Skills widerspricht dem Detail

Was fehlt: «Deine Aufgabe» und referenzen/README setzen SIA 102:2020 als Basis, während die Vermerke zu Format B und zur Phasentabelle korrekt festhalten, dass die Baukosten-Methode nur über SIA 102:2014 belegbar ist. Die Praxis-Offerte nennt gar keine Ausgabe; die K-Berechnung «SIA 102-K (Ausgabe 2018)».
Risiko: Eine Offerte beruft sich auf eine Ordnung, die die angewandte Methode nicht enthält; im Streit fehlt die Vertragsgrundlage.
Zieldatei: SKILL.md, Abschnitt «Deine Aufgabe» erster Satz; referenzen/README.md erste Zeile der Liste.
Einzufügender Text:

```
Du berechnest Honorare für Architekturleistungen nach **SIA 102:2014** (Honorar nach
aufwandbestimmenden Baukosten, Art. 7, oder nach Zeitaufwand, Art. 6) und weist die Ausgabe in
jeder Offerte ausdrücklich aus; SIA 102:2020 kennt die Baukosten-Methode nicht mehr und wird nur
dort genannt, wo die Bauherrschaft sie als Vertragsbestandteil verlangt (dann Honorar als
Festpreis oder Zeitaufwand, ohne Prozentbezug). Die Koeffizienten Z1/Z2 tragen immer Jahrgang
und Quelle (heute: SIA-Publikation, Ablage unter `referenzen/`).
```

### Lücke 8 (04.3, 05.17, Z4): Übergabe der Offerte in Auftragsverwaltung und KV

Was fehlt: Die Offerte wird nicht als Vorgabe weitergereicht: weder ins KV-Konto 291 des Projekts (Skill kostenkontrolle) noch in einen Akonto-/Fristenplan (Skill logbuch, mahnwesen, zahlungsabgleich). Die Buchungslogik Vorgabe/Aufwand/Abrechnung des Referenzmodells hat im Hub kein Gegenstück.
Risiko: Die Offerte verpufft nach dem Versand; Honorar-Akonti stehen in keinem Fristenregister, das eigene Honorar fehlt im KV des Projekts.
Zieldatei: SKILL.md, Contract-Zeile «Nachgelagert» ersetzen und im Abschnitt «Verknüpfung mit anderen Skills» ergänzen.
Einzufügender Text:

```
- **Nachgelagert:** `honorar-angebotspruefung` (Prüfstufe vor Versand) · `kostenkontrolle`
  (Offertsumme als Vorgabe ins KV-Konto 291 des Projekts, Nachträge erhöhen die Vorgabe) ·
  `logbuch` (Akontotermine ins Fristenregister) · `zahlungsabgleich`/`mahnwesen` (Akonto-Eingänge
  gegen den Leistungsnachweis) · `offertenpruefung` (Gegenstück für fremde Honorarofferten).
- Buchungslogik analog Referenzmodell: **Vorgabe** = Offerte/Vertrag, **Aufwand** = rapportierte
  Stunden × Tarif, **Abrechnung** = Akonto und Schlussrechnung; die drei Werte je Phase im
  Leistungsnachweis nebeneinander.
```

## 03 Was der JANS-Skill besser oder anders löst als das Referenzmodell

- Der Skill trägt eine belegte Warnung zur Norm-Ausgabe (SIA 102:2014 versus 2020) mit Fundstelle im Destillat; das Referenzmodell nennt die Ordnung 2020 nur als Hintergrund und schweigt dazu, was mit einer «2014 bei gegenseitigem Einverständnis» gerechneten Offerte im Streitfall passiert.
- Die Healthcare-Zuordnung der Baukategorien ist im Skill mit Original-Seitenangaben belegt und der Konflikt zur bürointernen Skala offen ausgewiesen; das Referenzmodell führt die Kategorien I bis VII nur als Feld.
- Methode 3 (Konsistenz zum Vorangebot desselben Projekts) und die Aufteilung von Phase 52 in architektonische Oberleitung und örtliche Bauleitung sind im Referenzmodell nicht vorhanden; die Praxis-Offerte 2619 setzt genau das mit Leerpositionen für Bauleitungsaufgaben um.
- Die Lektion «keine Phase ohne Preis oder Preismechanismus» (Lorrainestrasse 2011) und die BKP-2017-Bindung sind Erfahrungswissen, das eine Software nicht mitbringt.
- Der Skill hat mit dem Agenten honorar-angebotspruefung (12 Prüfblöcke) eine Prüfstufe vor dem Versand; das Referenzmodell kennt laut Raster 06.6 keinen Freigabe-Workflow.
- Ehrlich gesagt: Das Referenzmodell ist ein Rechenwerkzeug mit Datenkette bis zur Rechnung; der Skill ist eine Anleitung ohne Rechenwerkzeug (kein XLSX, keine Vorlage, leerer Referenzordner). Das Büro rechnet heute in BBaseHonorar 8.6 und nicht mit dem Skill; der Skill sollte darum die BBase-Erzeugnisse lesen, prüfen und in den Hub weiterreichen können, statt eine zweite, abweichende Rechenlogik zu behaupten.

## 04 Offene Fragen an Raphael

1. MwSt-Status: Der Skill sagt «JANS ist nicht MWST-pflichtig, von Steuer befreit»; die K-Berechnung vom 08.05.2026 rechnet 8.1 % MwSt, die Offerte ist «exkl. MwSt», der Agent honorar-angebotspruefung setzt fehlende MwSt-Angabe auf ROT. Was gilt heute, und ab wann (AG-Gründung)?
2. Bezugsgrösse B und Fachplaner-Reduktion: Soll B künftig nach der Definition (BKP 1 bis 4, ohne BKP 5, nach Rabatt, exkl. MwSt) hergeleitet werden, und die Reduktion bei Fachplanerbeizug gewerkweise (AHB-Tabelle) statt als pauschaler 70 %-Richtwert? Und soll ein Nachlass sichtbar über r laufen (2619: Festpreis 38 % unter Berechnung bei «Rabatt 0.0 %»)?
3. Stundenansätze: Gibt es eine JANS-Betriebskostenrechnung, aus der h = 135 (Berechnung) und der Mitteltarif 155 (Offerte) hergeleitet sind? Soll das Tarifblatt mit Jahr in `referenzen/` liegen? Dazu: Zahlungsfrist 14 Tage (Praxis) oder 20 Tage (Skill)?
