# Wissens-Chef — Run 40 (Abendlauf, 22.08.2026)

**Zuschnitt:** 5 Melder (`model: sonnet`, Rule `modellwahl-routine`) + 8 Refuter (Hauptmodell) =
13 Agenten, 2'331'133 Token, 209 Werkzeugaufrufe, 7,9 Min, 0 Fehler. Reichweiten-Messung, das
Nachmessen der fortgeschriebenen offenen Punkte, zwei eigene Gegenproben, alle Aktionen und die
Registerpflege im Hauptkontext.

**Uhr-Kontrolle bestanden:** Station 22.08.2026 23:12 CEST gegen Synology-Selfcommit `6a8f81c3`
23:00:02, konsistent mit dem 15-Min-Takt, kein Datumssprung (Rule `auto-verbesserungen` 260730b).
**Delta-Basis** 21.08.2026 23:15, Fenster 24,0 Stunden, **106 Commits**.

---

## 1 · Ergebnis in einem Satz

Der VKF-Fassungs-Sweep der KB `normen` hatte einen zweiten, groesseren Abnehmer, den bisher niemand
angefasst hat — den 2'200-Zeilen-Brandschutz-Wegweiser der KB `planungsgrundlagen`; und die Anrede-Rule
hat neben der seit Run 39 offenen Nivellier-Klausel eine **zweite** Klausel, die gegen den eigenen
Korpus anweist.

**Neun Befunde gemeldet, acht adversarisch geprueft, sechs bestaetigt, zwei widerlegt**, dazu zwei
eigene Funde im Hauptkontext.

---

## 2 · Der harte Befund: der Fassungs-Sweep endete eine Station zu frueh

Synergie-Lauf 15 hat heute Nachmittag die fuenf VKF-Fassungs-Deltas des Normen-Laufs 59 nach
`skills/brandschutz` und in den Synthese-Artikel propagiert (SYN-41/42). **Nicht angefasst wurde
`wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md`** — der laengste Brandschutz-Artikel des
Hub, `status: established`, und damit ohne Gegenlesen zitierfaehig. Er fuehrt zwei Stellen im Stand 2015.

### B1 — Pruefintervalle der integralen Tests: Ermessen statt kodifiziertem Raster

| | Wegweiser §5ag (angelegt 14.07.2026) | `normen` Delta-Destillat (22.08.2026) |
|---|---|---|
| Intervall | «durch die Brand­schutzbehoerde festgelegt, kuerzer bei Herstellervorgabe» | festes Mindestraster nach Risikogruppe (2 / 4 / 6 Jahre) |
| Fassung | 01.01.2015 | 01.01.2020, Stand 01.08.2022 |

Die Ermessensregel ist **ersatzlos entfallen**. Das ist keine Kosmetik: das Pruefintervall wandert in
Wartungsvertraege, Pflichtenhefte und die Bauleitungs-Abnahme — der Abschnitt selbst nennt Kinderspital
und Pflegeheim als Anwendungsfall und verweist auf den Skill `unternehmerkontrolle`.

**Was der Refuter verhindert hat.** Der Melder wollte die Zahlen 2/4/6 direkt einsetzen. Abgelehnt, aus
zwei unabhaengigen Gruenden: das Delta-Destillat traegt `status: speculative`, und nach Rule
`normen-referenz` Ziff. 1b ist ein `speculative`-Artikel **eine Warnkarte, keine Zitierquelle**; und das
Einsetzen haette genau den Verstoss gegen die Fuehrungs-Matrix wiederholt, der den Befund erzeugt hat.
Gesetzt wurde deshalb nur der **Vorbehalt** samt Verweis auf die fuehrende KB.

### B2 — Gesamthoehe am Flachdach: dieselbe Aenderung, entgegengesetzte Bewertung

Der Wegweiser fuehrt den Wechsel des Messpunkts (Dachrand → Dachflaeche ueber dem tiefstgelegenen Teil
des massgebenden Terrains) in einer Aufzaehlung «durchgaengig **redaktionelle** Praezisierungen» und
schliesst mit «kein Korrekturbedarf an bestehenden Tabellen». `normen` nennt dieselbe Aenderung «die
**folgenreichste Einzelaenderung dieses Glossars**, weil an dieser Einteilung praktisch das ganze
Anforderungsprofil haengt».

**Aufloesung aus der eigenen Gegenprobe** (Hauptkontext, an beiden Originalen): **beide haben in ihrem
Sinn recht.** Die **Tabellenwerte** aendern sich nicht — die Brandschutzabstaende bleiben 5/7,5/10 m.
Was sich aendert, ist die **Groesse, die in sie eingesetzt wird**: §4 desselben Artikels (Z. 486-488)
knuepft die reduzierten Abstaende an «Gebaeude **geringer Hoehe** (bis 11 m Gesamthoehe)» und
«**mittlerer Hoehe** (11-30 m)». Am Hang und bei hoher Attika kann die neue Messweise genau diese
Zuordnung kippen. Der Satz «kein Korrekturbedarf» ist damit nicht falsch, aber **zu breit** — und wird
als Freibrief gelesen.

Eingegrenzt: die Zahlenwerte bleiben bestaetigt, die Messweise ist ausdruecklich ausgenommen und je
Objekt neu zu pruefen. **Die §4-Schwellen selbst sind unangetastet** — ob und um wieviel sich eine
Gesamthoehe an einem realen Objekt verschiebt, ist ein Fach-/Normentscheid am VKF-Original und Arbeit
der KB `normen`, deren Destillat selbst erst `speculative` ist und mit «kann sich verschieben» formuliert.

---

## 3 · Die uebrigen bestaetigten Befunde

### B3 — Eine Fassungsfrage, die seit dem 20.08. nicht mehr geklaert ist

`wissen/bauprodukte/wiki/bkp-261-aufzuege.md` protokolliert seit dem 31.07.2026 «**Fassungsfrage
geklärt**» zur VKF-BRL 23-15. Der Sweep der KB `normen` (Run 58, **20.08.2026** — drei Wochen spaeter
und nach dem letzten bauprodukte-Update) hat das zugrunde liegende Destillat auf `status: superseded`
herabgestuft, mit ausdruecklichem «**Nicht als geltende Fundstelle zitieren**»: geltend ist die Fassung
01.01.2017, deren Delta nie beschafft wurde (offener Posten N58-1).

Das ist das Muster «Herabstufung in der fuehrenden KB erreicht den Abnehmer nicht» — dasselbe, das
Run 38 an BRL 17-15 und Run 39 am Holzbau-Aufpreis fand. Fassungsvorbehalt gesetzt; der Befund vom
31.07. bleibt als **datierter Stand** stehen statt geloescht zu werden, denn gegen die damals gefuehrte
Fassung war er korrekt.

**Praezisierung des Refuters, die den Eingriff verbessert hat:** zu korrigieren war der **eigene
Fassungsvermerk**, nicht das Wort «geklaert» — dieses steht identisch in der fuehrenden KB und waere
dort mitzukorrigieren, nicht hier.

### B4 — Dieselbe Quelle zweimal destilliert, viertes und fuenftes Vorkommen

`energie` und `planungsgrundlagen` haben **unabhaengig voneinander dieselben Primaerquellen**
destilliert, mit deckungsgleichen Zahlen und **null Kanten in beide Richtungen**:

| Quelle | `energie` | `planungsgrundlagen` |
|---|---|---|
| Datenblaetter SI-Saphir M175-M180 + Megasol M385-HC120-b | `destillate/pv-spezialmodule-transparent-bifazial-datenblaetter.md` (21.08.2026) | `wiki/energie-pv-eignung-typenwahl.md` Z. 51/53 (13./14.07.2026) |
| Eternit «Sunskin roof», Rev. 01.2022/web | `destillate/sunskin-roof-indach-planung.md` (19.06.2026, am 21.08. erweitert) | derselbe Artikel, §1c (14.07.2026, `established`) |

Das ist exakt das Muster, das die AHB-Zeile im Register seit Run 34 beschreibt — dort neun Quell-PDF,
neun Tage auseinander, null Kanten. Beidseitig verdrahtet; keine Zahl angefasst, die Fuehrung bleibt
wie in der Matrix (PV-Technologie bei `energie`, Typenvergleich und Beschaffung bei `planungsgrundlagen`).

**Kantenform, Refuter-Befund:** ueber KB-Grenzen hinweg gehoert der **Vollpfad in einen
Querbezug-Block**, nicht die Kurzform `[[artikelname]]` — diese loest innerhalb der eigenen KB auf und
haette hier einen toten Backlink erzeugt. Hauskonvention, belegt an zwei bestehenden Stellen in `energie`.

### B5 — Minergie-Routing zeigt noch auf den Stand vor dem 03.08.2026

`planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` Z. 394 routet Minergie auf «Skill
`planungsgrundlagen` (Energie)». Seit dem 03.08.2026 fuehrt der eigenstaendige Skill `energie` dieses
Feld — so sagen es sowohl das eigene `SKILL.md` (Z. 29 und Z. 66) als auch die Fuehrungs-Matrix. Weich
(Routing-Kosmetik, keine Zahl, kein Rechtsstand), aber eine Zeile in der Spalte «Wann ziehen» und damit
eine echte Anweisung. Korrigiert, der amtliche ZH-Nachweisweg (EVEN, EN-Formulare, EN-101b) bleibt
ausdruecklich bei `planungsgrundlagen`.

---

## 4 · Eigener Fund: die Anrede-Rule hat eine zweite Klausel mit Gegenbeleg

Run 39 fand die **Nivellier-Klausel**, die seit dem 25.07. gegen sechs eigene Belege anweist (E1, bis
heute offen). Eine Klausel weiter unten steht seit dem 21.08. die **Treffen-/Kanalwechsel-Klausel**
(«ein persoenliches Treffen kann das Register heben»), belegt an zwei Faellen — Eren 20.08.,
Hiltmann 18.08. — und in der Rule korrekt als «noch nicht bestaetigt» gefuehrt.

Der Fidelity-Review vom **22.08.2026** liefert dazu einen **Gegenbeleg**: Othmar Stadelmann bleibt am
22.07.2026 um 18:40 **nach einem Telefonat** bei «Geschaetzter Herr Stadelmann» — Sie, mit Nachname.
Der Review fuehrt auf diese Klausel ausdruecklich **einen von drei Anrede-Fehlgriffen** dieses Laufs
zurueck (`wissen/twin/wiki/QUESTIONS.md` 260822b #1).

**Was die eigene Gegenprobe korrigiert hat, und warum sie noetig war.** Die naheliegende Erklaerung
waere «Fachplaner gegen Unternehmer» gewesen — Estermann ist ein Trockenbau-Betrieb. Sie traegt
**nicht**: `wissen/twin/wiki/beziehungsregister.md` Z. 1248 fuehrt Stadelmann selbst als
**Brandschutz-Fachperson**, und dieselbe Stelle belegt, dass ein Telefonat ihn am 18.05.2026 sehr wohl
von kalt auf «Geschaetzter Herr» **gehoben** hat. Die Belege trennen also nicht Rollen, sondern **zwei
Bewegungen, welche die Klausel zu einer zusammenzieht**:

- persoenlicher Kontakt hebt die **Waermestufe innerhalb** eines Registers — belegt (Stadelmann 18.05.);
- persoenlicher Kontakt erzwingt **keinen Wechsel Sie → Du** — Eren und Hiltmann zeigen ihn,
  Stadelmann nicht.

Der Gegenbeleg ist additiv vermerkt, der Wortlaut der Klausel unangetastet. **Entscheid Raphael: E1b.**

---

## 5 · Uebergabe-Auftrag 1 aus Run 39 eingeloest — zwei von sieben Punkten waren ueberholt

Run 39 verfuegte: «Ab Run 40 wird jeder fortgeschriebene offene Punkt vor dem Fortschreiben am Original
geprueft.» Gemessen, mit Ertrag:

| Punkt | Stand am Original |
|---|---|
| E1 Nivellier-Klausel | **unveraendert offen** — Vermerk steht, kein Entscheid |
| E2 Blitzschutz-Doppel | **praezisiert** — kein blosser Doppelbestand: `normen` fuehrt die **ueberholte** Fassung 2015 (103 Z.), `energie` die **geltende** 2017 (239 Z.). Die geltende Fassung einer VKF-Richtlinie liegt also in der zuliefernden, nicht in der fuehrenden KB |
| E2 Solaranlagen-Doppel | **ueberholt** — kein Cross-KB-Fall mehr. In `energie` existiert keine Datei; in `normen` liegen **drei**: zwei Destillate **derselben** Quell-PDF von 2015 (`vkf-brm-2001-15-solaranlagen`, 182 Z. / `vkf-merkblatt-2001-15-solaranlagen`, 138 Z.) plus das legitime eigenstaendige 2022er-Destillat. Die Doppelung sitzt **innerhalb** einer KB |
| E3 Maison Climat 15/17 | **unveraendert offen**, beidseitig verdrahtet. Neu bemerkt: die pg-Seite fuehrt Z. 79 die Minergie-**Objekt-ID BE-120-A** mit «Seelandweg 15» — ein staerkerer Anker als das Poster, aber aus demselben Kursmaterial; kein Entscheid ohne die Minergie-Gebaeudeliste |
| E4 `skills/ausschreibung` Z. 109-113 | **ueberholt/erledigt** — die Stelle ist vollstaendig und korrekt: Ziff. 8.4.2.2 in der berichtigten Lesart, die Gegenausnahme Ziff. 8.4.2.3 und der Vergleich zur Mauerwerk-ABB stehen alle drin |
| E4 Buch-Layer `baurecht` | **unveraendert offen** — kein Fassungsvorbehalt am Layer; der Skill macht die Zitierung des Werks von 2019 in **jeder** baurechtlichen Stellungnahme zur Pflicht. Run 36 hielt den Vermerk bewusst zurueck, weil er die Beweislast verschiebt |
| SYN-34 `ausschreibung`-Wissensbasis | **unveraendert offen**, beide Stellen woertlich unveraendert gemessen |

**Zwei von sieben ueberholt** — dieselbe Quote wie in Run 39. Der Nachmess-Schritt bleibt noetig und ist
billig: er kostete heute rund zehn Minuten und vier Werkzeugaufrufe.

---

## 6 · Die zwei widerlegten Befunde

- **Neuwert-Richtwerte Tab. 2 doppelt gefuehrt** (immobilienbewertung ↔ grobkosten). Sachverhalt
  stimmt, der Befund nicht: beide Staende sind gehedgt, gegenseitig verlinkt, als nicht-fuehrend
  deklariert und **seit dem 04.08.2026 in beiden Registern als Entscheid Raphaels gefuehrt**. Ein
  erneuter Eintrag waere die dritte Fortschreibung eines unveraenderten Punktes — genau das Muster, das
  dieser Lauf abstellen sollte. *Nebenbei berichtigt: der Spiegel-Eintrag ist **D12**, nicht D13.*
- **`skills/machbarkeit/wissensbasis/02_kennwerte-kosten.md` nie Gegenstand eines Cross-KB-Laufs.**
  Falsch: die Datei ist pfad- und zeilengenau in Run 15 (25.07.2026) und Run 28 (07.08.2026) behandelt,
  und die vorgeschlagene Matrix-Zeile existiert seit Run 15. Der Zahlenkonflikt Ebmatingen (2'400 gegen
  855 CHF/m³, Faktor 2,8) bleibt korrekt als `needs-decision` offen.

Beide Widerlegungen haetten Arbeit an gesunden Dateien ausgeloest.

---

## 7 · Ausgefuehrte Aktionen

| # | Datei | Aktion |
|---|---|---|
| A1 | `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §5ag | Fassungs-Vorbehalt BSE 108-15, ohne Zahlenuebernahme (12 Z., additiv) |
| A2 | dieselbe Datei, Aenderungsliste 2015↔2017 | Gesamthoehe aus «redaktionell» herausgenommen, mit Vorbehalt und Kante versehen (4 Z. ersetzt) |
| A3 | dieselbe Datei, Praxiskonsequenz | «kein Korrekturbedarf» auf die **Tabellenwerte** eingegrenzt, Messweise ausdruecklich ausgenommen (2 Z. ersetzt) |
| A4 | `planungsgrundlagen/wiki/QUESTIONS.md` | Nachzug-Auftrag fuer beide Fassungs-Deltas eingetragen, damit die Uebergabe nicht im Laufbericht verpufft (Rule 260805) (13 Z., additiv) |
| A5 | `planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` Z. 394 | Minergie-Routing auf Skill `energie` korrigiert (1 Z. ersetzt) |
| A6 | `energie/destillate/pv-spezialmodule-…` + `…/sunskin-roof-indach-planung.md` + `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md` | beidseitige Querbezug-Bloecke im Vollpfad-Format (3 Dateien, additiv) |
| A7 | `bauprodukte/wiki/bkp-261-aufzuege.md` | Fassungsvorbehalt VKF-BRL 23-15; alter Befund als datierter Stand belassen (1 Z. ersetzt) |
| A8 | `rules/anrede-kontakte.md` | Gegenbeleg zur Treffen-Klausel additiv vermerkt, Wortlaut unangetastet (11 Z., additiv) |

Jede Schreiboperation einzeln gegen eine Sicherungskopie gemessen (Rule `auto-verbesserungen` 260811).
**Die fuenf additiven Eingriffe zeigen 0 geloeschte Zeilen**; die Ersetzungen genau die beabsichtigten
Zeilen, deren Inhalt in der neuen Fassung erhalten ist.

*Eigener Messfehler, im Lauf gefangen:* die erste Messung des `QUESTIONS.md`-Eingriffs meldete
**-1'598 Zeilen**. Ursache war nicht der Eingriff, sondern die Messung — ein `find`-Aufruf hatte die
gleichnamige `QUESTIONS.md` einer anderen KB erwischt. Gegen den richtigen Pfad gemessen: **-0**.
Merksatz in der Familie von 260730b: **ein alarmierendes Messergebnis ist zuerst eine Aussage ueber das
Messwerkzeug.**

---

## 8 · Offene Entscheide fuer Raphael

### E1 — Die Nivellier-Klausel (seit sieben Tagen offen, wirkt in jeder Session)

Unveraendert aus Run 39, am Original nachgemessen. `rules/anrede-kontakte.md` Z. 14 verlangt zu
nivellieren, sechs Belege zeigen, dass Du staffelst. Vorschlag der twin-KB, unveraendert seit 260816 #1:

> «Jede Person wird einzeln angeredet, in ihrer eigenen Stufe; nivelliert wird nur bei grossen oder
> unbekannten Verteilern.»

### E1b — NEU: Die Treffen-/Kanalwechsel-Klausel

Siehe Abschnitt 4. Die Frage ist eng und mit einem Satz zu beantworten: **hebt ein persoenlicher
Kontakt nur die Waermestufe innerhalb des bestehenden Registers, oder kann er auch Sie → Du
umschalten — und wenn ja, woran erkennst Du den Unterschied?** Beide Anrede-Klauseln zusammen
betreffen jede Mail an mehr als einen Empfaenger und jede Mail nach einer Sitzung; sie sind die einzigen
Punkte dieses Laufs mit taeglicher Aussenwirkung.

### E2 — Zwei Doppel-Destillate zusammenlegen (praezisiert, seit Run 26 parkiert)

**Neu geschnitten nach der Nachmessung:**
- **Blitzschutz** — kein Merge-Fall, sondern eine **Zustaendigkeitsfrage**: die geltende Fassung 2017
  liegt in `energie`, die ueberholte 2015 in der fuer Fassungsstaende fuehrenden KB `normen`. Soll die
  geltende Fassung nach `normen` wandern (dann bleibt `energie` Traeger des Primaerbelegs), oder bleibt
  es bei der heutigen, dokumentierten Arbeitsteilung?
- **Solaranlagen** — **innerhalb** von `normen`: zwei Destillate derselben Quell-PDF von 2015. Ein
  Merge ist destruktiv und braucht nach Rule `wissens-bibliothekar` Deine Einzelfreigabe.

### E3 — Maison Climat: Seelandweg 15 oder 17? (unveraendert)

Fachfrage, kein Registerproblem. Nur zu klaeren, wenn das Projekt als Referenz verwendet wird.

### E4 — Unveraendert offen aus frueheren Laeufen (alle heute am Original nachgemessen)

Honorar-Phasenanteile und Kategorien-Skala in `skills/honorarberechnung-sia102` (Run 36 E1, Geldfolge) ·
**Fassungsvorbehalt am Buch-Layer `baurecht`** (Run 36 E2 — der Skill macht die Zitierung des Werks von
2019 in jeder baurechtlichen Stellungnahme zur Pflicht, ohne Hinweis auf den Rechtsstand; Run 36 zaehlte
vier einzeln nachgetragene tote Rechtsstaende) · SIA 382/2 Ausgabe 2004/2005 · Ticket `T-Regelgeschoss` ·
**SYN-34** (`skills/ausschreibung/wissensbasis/06_glossar.md` Z. 23 und
`07_werkvertrag-unternehmerkontrolle.md` Z. 13, beide woertlich unveraendert: die Garantieformel «2 Jahre
Ruegefrist + 5 Jahre verdeckte Maengel» ohne Ausgabe, ohne Artikel, ohne den Hinweis auf die seit
**01.01.2026 zwingende 60-Tage-Ruegefrist** nach SIA 118-C1:2026 — Vertragsbedingungs-Text, der ueber
Devis und LV nach aussen geht).

**Erledigt und ausgetragen:** `skills/ausschreibung` Z. 109-113 (Praezisierung SIA 118/262 — die
Stelle traegt die berichtigte Lesart, die Gegenausnahme Ziff. 8.4.2.3 und den Vergleich zur
Mauerwerk-ABB) · `ugz-hindernisfreie-aufzuege-2010` (die Abnehmerseite in
`planungsgrundlagen/wiki/recht-norm-hindernisfreies-bauen-zh.md` Z. 73-82 traegt Link, Merkblatt-Datum
Maerz 2010, Fassungsvorbehalt SN 521500/C4:2019 **und** die Sachwarnung zur Ueber-Eck-Kabine — heute
nachgemessen, nachdem Run 39 den Punkt nur teilgeprueft hatte).

---

## 9 · Uebergabe an Run 41

1. **`bauprodukte/wiki/cheminee-aufbau-hafnerarbeiten.md`** — die Kante zu `normen` wurde heute
   bewusst **nicht** gesetzt: die einschlaegige VKF-Erlaeuterung BRL 103-15 ist seit dem 31.08.2025
   zurueckgezogen und die Nachfolgeregelung ist unbekannt (N58-2). Sobald `normen` die Nachfolge
   ermittelt hat, gehoert der Verweis gesetzt — vorher nuetzt er dem Leser nichts.
2. **Der Rest des Brandschutz-Wegweisers.** Heute geprueft wurden zwei Stellen von rund 2'200 Zeilen.
   Der Artikel destilliert VKF-Wortlaut materiell — QUERBEZUEGE Z. 79 fuehrt ihn seit Run 3 als
   Fundort genau dieses Musters. Ein systematischer Fassungs-Sweep dieses einen Artikels gegen alle
   Delta-Destillate der KB `normen` waere ein eigener Lauf wert.
3. **Rotationspaar:** `twin ↔ spec` und `kunde-bopp ↔ projekt-lessons` waren seit Wochen nicht an der
   Reihe. `bauprodukte` ist heute gelaufen und muss nicht sofort wieder.
4. **Die Kennwert-Gegenprobe ist damit abgeschlossen** — Run 39 hatte sie als offen uebergeben, heute
   lieferte sie zwei Befunde, beide widerlegt. Die Achse ist gesund und muss nicht in der Breite
   wiederholt werden; ein Delta-Check je Lauf genuegt.
5. **`skills/energie/SKILL.md` und `skills/planungsgrundlagen/SKILL.md`** sind heute vollstaendig
   gelesen (Uebergabe-Punkt 5 aus Run 39 erledigt): ein einziger Routing-Befund, weich, korrigiert.

---

*Bericht des Wissens-Chefs, Run 40, 22.08.2026. Fan-out und Verifikation ueber das Workflow-Tool
(Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell); Uhr-Kontrolle, das
Nachmessen der sieben fortgeschriebenen Punkte, zwei eigene Gegenproben, Urteil, Aktionen und
Registerpflege im Hauptkontext. Keine Mail — stiller Lauf nach Rule `auto-verbesserungen` 260803;
der `hub-chef` nimmt die offenen Entscheide aus Abschnitt 8 ins Tagesbriefing.*
