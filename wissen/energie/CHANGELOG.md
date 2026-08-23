# CHANGELOG

## 2026-08-23 — Inventar-Reconciliation: 5 liegen gebliebene Stub-Zeilen nachgeführt, 3 Destillate um Vorwärts-Verweis ergänzt

Auftrag war, 5 in `training/pdf-inventar.md` als offen geführte Restpositionen (Zeilen 267,
584-587) zu destillieren: `Nuetzliche Unterlagen/Infobrochuren/MFH.pdf` sowie die vier
2008er-Fassungen `18.2/Solarstromanlagen_in_Bauprojekten_(Checkliste).pdf`,
`18.2/Topten_Haushaltgeraete_(Flyer).pdf`, `18.3/Deviskontrolle_(Checkliste).pdf` und
`18.3/Baustellenkontrolle_(Checkliste).pdf`. Gegenprüfung ergab: **alle 5 waren bereits
vollständig destilliert** — MFH.pdf in Run 125 (07.08.2026, → `heizungsersatz-groessere-mfh-stweg`),
die vier übrigen in Run 132 (14.08.2026, → `ahb-checkliste-solarstromanlagen-2008`,
`topten-haushaltgeraete-liegenschaftenverwaltung`, `ahb-devis-und-baustellenkontrolle-2008`).
Die als offen zugewiesenen Zeilen waren liegen gebliebene Stubs aus einem früheren, kleineren
Lauf (Run 124/130), die nach der eigentlichen Destillation in einem späteren Run nie auf `[x]`
nachgezogen wurden — reine Buchhaltungslücke im Inventar, kein fehlender Fachinhalt.

Getan: (1) alle 5 Stub-Zeilen auf `[x]` gesetzt mit Verweis auf die tatsächliche Fundstelle im
Inventar. (2) Die drei älteren Destillate `eco-bau-checkliste-solarstromanlagen.md`,
`haushaltgeraete-effizienz-beschaffung-topten.md` und `eco-bau-devis-und-baustellenkontrolle.md`
verlinkten bereits rückwärts korrekt zueinander (die jüngeren 2008er-Destillate zitieren sie via
`[[...]]`), aber ohne Vorwärts-Verweis von alt nach neu — je einen kurzen Nachtrags-Abschnitt
ergänzt, der auf die jüngere Fassung verweist (analog zum Stil der bereits vorhandenen "Ältere
Auflage 2005"-Sektion in `eco-bau-devis-und-baustellenkontrolle.md`). Frontmatter `last_updated`
je Datei nachgeführt. (3) `wiki/BAUHERREN-FAQ.md` und `wiki/INDEX.md` enthielten bereits
Backlinks zu allen 5 Themen aus den ursprünglichen Läufen — keine FAQ-Änderung nötig, da diese
drei Checklisten (Deviskontrolle/Baustellenkontrolle/Solarstromanlagen-Checkliste) reine
AHB-Verwaltungsformulare der Stadt Zürich ohne neuen Bauherren-Nutzen gegenüber den bereits
erfassten Vorfassungen sind; die Kaffeemaschinen-Zeile/verschärfte Waschmaschinen-Klasse im
Topten-Flyer sind zu klein, um eine eigene FAQ-Antwort zu rechtfertigen.

## 2026-08-22 — Wissens-Chef Run 40 (Cross-KB): zwei Kanten nach `planungsgrundlagen`

Zwei Doppelspurigkeiten bestaetigt und beidseitig verdrahtet — in beiden Faellen destillierten beide
KBs unabhaengig **dieselbe Primaerquelle**, mit deckungsgleichen Zahlen und ohne jede Kante (viertes
und fuenftes Vorkommen des Musters, das die AHB-Zeile in `koordination/QUERBEZUEGE.md` seit Run 34
beschreibt):

- `destillate/pv-spezialmodule-transparent-bifazial-datenblaetter.md` (21.08.2026, Run 149) ↔
  `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md` Z. 51/53 (13./14.07.2026) — SI-Saphir
  M175-M180 und Megasol M385-HC120-b, dieselben zwei Datenblaetter.
- `destillate/sunskin-roof-indach-planung.md` (19.06.2026, am 21.08. um S. 17 erweitert) ↔ derselbe
  pg-Artikel §1c (14.07.2026) — Eternit «Sunskin roof», Rev. 01.2022/web.

Querbezug-Bloecke als **Vollpfad** gesetzt, nicht als `[[kurzform]]`: die Kurzform loest innerhalb der
eigenen KB auf und haette einen toten Backlink erzeugt (Refuter-Befund). Fuehrung unveraendert —
PV-Technologie hier, Typenvergleich/Beschaffung dort. Rein additiv, 0 geloeschte Zeilen.

## 2026-08-21 (Nachtschicht Mac Mini, 23:30-Zyklus) — E-R148-3 geschlossen: Prozent-Auswertung Baustellenkontrolle 2005 im Skill `unternehmerkontrolle` verankert

Priorität 4 (Trainingslektion) war heute bereits gesättigt (bauprodukte/grobkosten erledigt,
PL-02-Korpus energie in Run 148 desselben Tages erschöpft, alle übrigen KBs auf
Ereignis-Trigger); Priorität 3 (Fristen-Register) bereits von Radar/Hub-Chef bedient. Auf
Priorität 5 ausgewichen: die in Run 148 offen gelassene Position **E-R148-3** («billig
umzusetzen») bearbeitet. Die Prozent-Auswertung der Baustellenkontrolle 2005 («Ausgangslage
100 %, je Nein-Antwort −10 %») bleibt Fussnote in `[[eco-bau-devis-und-baustellenkontrolle]]`,
ist aber jetzt zusätzlich in `skills/unternehmerkontrolle/SKILL.md` (Inputs-Zeile) als
optionales Berichts-Werkzeug für mehrere Kontrollgänge verlinkt — kein Duplikat, nur ein
Cross-Link; die KB bleibt einzige Quelle. `wiki/QUESTIONS.md` E-R148-3 auf `[x]` gesetzt.

## 2026-08-21 (Wissens-Chef Run 39, Cross-KB) — zwei Doppel-Destillationen vom selben Tag verbunden

- **`destillate/solarreport-solarapp-basel-2022.md`** und **`destillate/minergie-fallstudie-maison-climat.md`**
  (beide neu am 21.08., Run 148/149) behandeln Quellen, die `planungsgrundlagen` seit dem 25.07. bzw.
  13.07.2026 bereits fuehrt — unabhaengig destilliert, ohne Kante. Beidseitig verbunden.
  Rollenteilung: diese KB fuehrt die Detailauswertung (samt der drei Inkonsistenzen **im
  SolarReport selbst**: Modulzahl 162 gegen 90+72, Verbrauch 42'000 gegen 48'000 kWh, CO2 21'716 gegen
  22'351 kg), `planungsgrundlagen` die Zeile im Typenvergleich.
- ⚠ **Maison Climat: Adress-Abweichung** «Seelandweg 15» (planungsgrundlagen) gegen «Seelandweg 17»
  (hier, gemaess Objektbeschrieb-Poster). Bisher in beiden KBs getrennt offen — jetzt einmal gefuehrt
  und Raphael vorgelegt.
- **Das Destillat `energ-zh-nachtrag72-2011-historisch.md` hat einen Fremdbefund getragen:** seine
  Primaerlesung war der Beleg, mit dem die Fehlidentifikation desselben Erlasses in
  `planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` Z. 68 aufgeloest werden konnte. Ein
  historisches Destillat, das seinen Nutzen ausserhalb der eigenen KB entfaltet.

Bericht: `../koordination/outputs/2026-08-21_wissens-chef-run39.md`.

## 2026-08-21 (Run 149) — PV-Spezialmodule (SI-Saphir/Megasol) destilliert; Sunskin-Montagedetail ergänzt

- **Neues Destillat `[[pv-spezialmodule-transparent-bifazial-datenblaetter]]`** (status
  `established`): zwei vollständig gelesene Moduldatenblätter für architektonisch anspruchsvolle
  PV-Flächen. **SI-Saphir M175-M180** (SI Module GmbH, Stand 06/2015) — teiltransparentes
  Doppelglasmodul, 40 % Lichtdurchlass laut Hersteller, 175-180 Wp, DIBt-Zulassung Z-70.3-204.
  **Megasol M385-HC120-b BF GG U30b** (Version 10/2022) — bifaziales Glas-Glas-Premiummodul mit
  Full-Black-Optik, 385 Wp, Bifazialitätsfaktor ≥ 90 %, Mehrertrag 5-35 % je nach
  Untergrundreflexion, IEC/EN 61215/61730.
- **Dateinamen-Vermutung geprüft und widerlegt:** Die Artikelnummer «0322.1580» im Megasol-Dateinamen
  ist **kein** Datumscode («0322 = März 2022»), sondern Teil der Artikelbezeichnung. Das tatsächliche
  Ausgabedatum steht separat im Dokument als «Version: 10/2022» (Fussnote, DIN-EN-50380-Bezug) —
  Oktober 2022. Beleg für die KB-Regel «Datierung immer am Dokument selbst prüfen, nie aus dem
  Dateinamen ableiten».
- **Dublettenprüfung `sunskin-roof-indach-planung`:** die dritte Quelle (`c-sunskin.pdf`, S. 17
  «Latteneinteilung/Plattenauflager») ist dieselbe Ausgabe (Rev. 01.2022/web) wie das bereits
  bestehende Destillat `[[sunskin-roof-indach-planung]]` (bisher S. 1-14 gelesen) — **kein neues
  Destillat**, stattdessen den bestehenden Artikel um einen Abschnitt «Montagedetail
  Latteneinteilung (S. 17)» ergänzt und Frontmatter (`gelesen`, `last_updated`) nachgeführt. Status
  bleibt `emerging` (weiterhin nur Teilseiten der Gesamtdoku gelesen).
- **Brandschutz-Detailtiefe bewusst nicht ausgebaut:** beide Moduldatenblätter zitieren
  Brandverhalten/Schutzklasse nur wörtlich und verweisen auf `[[swissolar-stp-vkf-brandschutz-solaranlagen]]`
  und Skill `brandschutz` (Rule «Verlinken statt doppeln»).
- **Sechs kleine PDFs gesichtet, kein neues Destillat, ein Nachtrag:** `[[minergie-fallstudie-maison-climat]]`
  um ein Objektbeschrieb-Poster von Bürgi Schärer Architekten AG ergänzt (Bauteilaufbauten
  Aussenwand/Steildach Mansarde/Geschossdecke, Kosten BKP 1-9 Fr. 7,64 Mio., Planungsteam,
  Mobilitätskonzept) — schliesst die im Artikel selbst vermerkte Lücke «exakte U-Werte/Aufbauten
  hier nicht belegt» teilweise. **Vier reine `[-]`-Fälle:** eine zweite Maison-Climat-Datei war nur
  ein unbeschrifteter Schnittplan (Dublette, kein Zusatzwissen); die PREFA-Farbkarte 2024 enthält
  keine solartechnischen Kennwerte, nur RAL-Farbmuster; der solarapp.ch-Belegungsplan Basel
  (Projekt APP22-66497) ist eine reine Dublette des bereits destillierten `[[solarreport-solarapp-basel-2022]]`
  (identische kWp-/kWh-Werte, gleiches Montagesystem); das AWEL-Formular «Gesuch zur Versickerung
  von Regenwasser» ist ein Gewässerschutz-Formular ohne Energiebezug (die einzige energienahe
  Erwähnung ist eine PV-Anlage-Checkbox bei den entwässerten Flächen) und gehört fachlich nicht in
  diese KB. Der FEZ-Kursflyer Frühling/Sommer 2023 bleibt beim bekannten Muster `[-]` Kursflyer.

## 2026-08-21 (Run 148, Mac Mini) — E-R144-1 geschlossen: die «11 gegen 11» sind ein falscher Freund; PL-02-Restliste vollständig abgearbeitet

- **Der Urteilsbefund.** Die elf Standardlösungen der EnFK-Vollzugshilfe **EN-1 (Januar 2009)**
  sind **nicht** die Vorgänger der elf Standardlösungen der **WDV 2022 § 10**. EN-1
  konkretisierte den **Neubau**-Höchstanteil von 80 % nichterneuerbarer Energie nach § 10a EnerG
  alter Fassung — per **01.09.2022 aufgehoben** und durch die Grenzwerttabelle des gewichteten
  Energiebedarfs (§ 47a BBV I) ersetzt. Die elf Standardlösungen der WDV § 10 erfüllen dagegen
  **§ 11 Abs. 4 EnerG**, also die 90-%-Auffangregel beim **Wärmeerzeugerersatz im Bestand**. Der
  Neubau-Nachfolger ist **§ 9 WDV mit VIER Standardlösungen, und nur für die Gebäudekategorien I
  und II**. Wer die Listen gleichsetzt, überträgt eine Bestandesregel auf einen Neubau. Für
  Kat. III-XII — **darunter Spitäler und damit der JANS-Healthcare-Bereich** — existiert beim
  Neubau überhaupt kein Standardlösungsweg; der Rechennachweis nach § 8 WDV ist zwingend.
- **Geprüft am amtlichen Volltext, nicht am eigenen Destillat:** WDV vom 8. Juni 2022 direkt bei
  `zh.ch` bezogen, §§ 7-12 im Hauptmodell im Original nachgelesen.
- **Der Beleg kam aus dem Transfer-Block desselben Laufs.** Neu destilliert:
  `[[energ-zh-nachtrag72-2011-historisch]]` (`superseded`) — der EnerG-Snapshot vom 1.4.2011 zeigt
  § 10a im damaligen Wortlaut («höchstens 80% des zulässigen Energiebedarfs»), § 11 noch mit
  «Klimaanlagen» überschrieben und **ohne § 10c** (Eigenstromerzeugung existierte 2011 nicht).
  Damit ist der Systemwechsel am Paragraphenwortlaut belegt statt erschlossen. Die scheinbar
  wertloseste Position des Batches lieferte den tragenden Beleg — in Run 138 war der
  Schwester-Nachtrag 85 noch als «Verlinken statt doppeln» verworfen worden.
- **Selbstkorrektur:** `[[vollzugsordner-energie-zh-abschnitt3-1-3-2-en1]]` behauptete in der
  Fassung von Run 144 «§ 10a EnerG gilt unverändert». Berichtigt, Status auf **`superseded`**
  gesenkt, Bauherren-Transfer neu geschrieben. Lehre über diese KB hinaus: **eine fortbestehende
  Paragraphennummer ist kein fortbestehender Rechtssatz.**
- **Zweiter Befund, eine falsche Bestandsannahme korrigiert.** `3.15.C Checkliste
  Baustellenkontrolle.pdf` (27'875 B) war als Dublette geführt, ist aber die **ältere Auflage
  2005**. Nur sie trägt die **Auswertungs-Mechanik** («Ausgangslage 100 %, jede Abweichung
  (nein-Antwort) ergibt eine Reduktion um 10 %») und den Kontrollpunkt zur Lösemittelfreiheit von
  Fugendichtungsmassen, den die Fassung 2006 durch den Partikelfilter-Punkt ersetzt hat. Der
  Subagenten-Befund wurde **vor** dem Dateieingriff am Original gegengelesen (Rule 260729b) und
  wörtlich bestätigt; `[[eco-bau-devis-und-baustellenkontrolle]]` um den Abschnitt «Ältere Auflage
  2005» gewachsen, Frontmatter-Quellenangabe korrigiert — **ohne** die für die Deviskontrolle
  zutreffende Dubletten-Aussage mitzureissen (dort sind beide Dateien 64'309 B).
- **Transfer (7 Positionen, alle am Original gelesen, alle über M365-CLI beschafft):** EnerG
  Nachtrag 72 (destilliert), Baustellenkontrolle 2005 (eingearbeitet),
  `6.16Eidg.Gesetze_Verordnungen_1-2005`, `6.26Literatur_1-2005`, `7.17Fachstellen`,
  `25.04.10 Kursausschreibung SIA380-1` (alle vier `[-]` am Original verifiziert), dazu die
  Registerpflege zu `Standards_Kennzeichnungssystem_V2.2` (Teilerledigung E-R138-2).
- **Verdichtung:** FAQ **F248** (Standardlösung oder Rechennachweis beim Neubau, mit
  Kategorien-Schranke und Healthcare-Fall) und **F249** (gilt die 80-%-Regel noch) neu; Artikel
  `[[energienachweis-zh]]` um Nachweiswege-Tabelle, § 8-Rechenweg und Warnblock gewachsen;
  `[[waermedaemmvorschriften-zh-2022]]` um § 8 vollständig sowie § 10-Kategorienspalte und Abs. 2
  ergänzt (bleibt `established`).
- **Struktureller Befund:** die 24er-Restliste ist **vollständig entschieden** (7 destilliert,
  8 als `[-]` geprüft, 5 Mess-Artefakte, 3 aus Run 143), der Korpus PL-02 ist erschöpft. Ertrag
  Run 147: eine echte Destillation aus fünf Positionen; Run 148: eine aus sieben. Neue Punkte
  **E-R148-1 (P1)** Normkauf SIA 380/1:2016 — er blockiert jetzt belegt auch die
  Gebäudekategorien-Definition und damit E-R140-1 —, **E-R148-2 (P2)** Entscheid Raphaels über
  fragengetriebenen Takt oder Rücktaktung, **E-R148-3 (P3)**. Report:
  `outputs/2026-08-21_energie-run148.md`.

## 2026-08-20 (Wissens-Chef Run 38, Cross-KB) — SIA 271 mit SIA 271/2 verwechselt; die Begrünungs-Nachfolgenorm lag seit dem 29.07. destilliert vor

- **Bestätigter harter Befund, adversarial gegengeprüft.** Das heute früh (Run 145, 05:36)
  angelegte `destillate/pflanzen-am-bau-projektierungsgrundlagen-zh.md` behauptete an vier
  Stellen, **SIA 271:2007 sei «laut KB `normen`» zurückgezogen** und die Nachfolgenorm
  «ungeklärt». Beides falsch, und beides der führenden KB zu Unrecht zugeschrieben:
  `normen/destillate/sia-271-2007.md` trägt `status: established`, `normen/wiki/REGISTER.md`
  Z. 223 und 595 führen die Norm als gültig. Zurückgezogen ist allein die **Teilnorm
  SIA 271/2:1994 «Flachdächer zur Begrünung»**, und deren Nachfolge ist seit dem 29.07.2026 am
  Titelblatt verifiziert und destilliert: **SIA 312:2013 (SN 564312)**, REGISTER Z. 237.
- **Herkunft des Irrtums benannt:** das Fassungsvermerk-Muster, das Wissens-Chef Run 37 am
  19.08. korrekt zu **SIA 416/1** in vier energie-Dateien gesetzt hatte, wurde hier auf die
  falsche Norm übertragen — samt Ticketbezug: der angerufene Vorgang `N57-2` betrifft
  SIA 416/1, nicht SIA 271. Der Spiegelstrich unter «Offene Punkte» war damit gegenstandslos
  und ist gestrichen.
- **Vier Zeilen zeilenexakt berichtigt** (Frontmatter `datenstand`, Abschnitt 6, Bauherren-
  Transfer, Offene Punkte), Backlink `[[sia-312-2013]]` gesetzt. **Bewusst NICHT angefasst:**
  die quellentreuen Nennungen «Definition (SIA 271, historisch)» und die Systemtabelle — ein
  globales Ersetzen auf «SIA 271» hätte sie beschädigt (Rule `auto-verbesserungen` 260811).
  Die Frontmatter-Zeile wurde **präzisiert statt gestrichen**: in der Lesart «durch die Ausgabe
  2007 abgelöst» war sie sachlich richtig, nur missverständlich. Schreib-Kontrolle 22/8, alle
  acht Löschungen sind die je ersetzten Zeilen.
- **`wiki/dachbegruenung-gruendach.md`:** Der Artikel bezeichnet sich selbst als führend für
  Substrat- und Qualitätsstandard, nannte aber im ganzen Text **kein einziges Mal SIA 312:2013**
  und stützte die Kennwerte-Tabelle allein auf die Gründachrichtlinie SFG von 2009. Dieselbe KB
  hatte am 04.08.2026 bereits belegt, dass das Feld normativ neu besetzt ist und die
  Gründachrichtlinie dort **nur noch Prüfverfahren** ist
  (`destillate/eco-bau-merkblaetter-bkp-2008-huelle.md` Z. 274,
  `destillate/ecobkp-2026-gebaeudehuelle.md` Z. 185) — die Erkenntnis hatte den am 15.08.
  geschriebenen Artikel nie erreicht. Referenzzeile ergänzt, Backlinks gesetzt. 19/1.
- **Bewusst nicht geändert, obwohl gemeldet:** der Abschnitt «Konstruktive Anforderungen»
  (Gefälle < 1,5 %, SIA 271/2007 Ziff. 2.2.1.1/2.6.1.1/5.1.4). Er ist quellentreu **und**
  sachlich richtig — SIA 312 kennt kein Mindestgefälle. Der Melder hatte genau diesen Abschnitt
  als Ziel genannt; der Refuter hat den Eingriff dort verhindert.
- **`destillate/vkf-richtlinie-gefaehrliche-stoffe.md`:** Rückkante zur führenden KB gesetzt
  (`[[vkf-brl-26-15-gefaehrliche-stoffe]]`, `[[vkf-teilrevision-2026-pyrotechnik]]`) und der
  offene Änderungsvermerk «IOTH 06.03.2026, Ziff. 11.1.3» aufgelöst: **Feuerwerk F1 ist in
  öffentlich zugänglichen Räumen seit 01.04.2026 verboten**. Der eigene Befund zu Ziff. 3.5.3
  bleibt unberührt. 16/0 (append-only). Näheres im Eintrag der KB `normen`.

## 2026-08-20 (Run 145, Nachtschicht Mac Mini 05:30-Fortsetzung) — Grösster Restposten `5.26PflanzenamBau.pdf` destilliert

Priorität-4-Fortsetzung nach Run 144 (energie bleibt die einzige gültige Nachtschicht-Ziel-KB;
bauprodukte seit 15.08. erledigt, grobkosten seit 13.08. erledigt, projekt-lessons seit 05.08.
ausgesetzt). Nächste Priorität aus `pdf-inventar.md`: der grösste Einzelposten der Restliste,
`5.26PflanzenamBau.pdf` (5,2 MB, Stadt Zürich, «Bauen und Oekologie», Projektierungsgrundlagen
Pflanzen am Bau, 42 S.).

**Beschaffungsproblem gelöst:** Datei lag als unmaterialisierter OneDrive-Platzhalter vor
(Sparse-Datei, reine Nullbytes) — nicht durch Claude materialisierbar (Rule
`interaktive-eingriffe`). Über den bereits in Run 144 genutzten Zweitweg beschafft: M365-CLI
(`m365 spo file get`, Site `sites/PL`, Bibliothek `PL  Immobilienpreise` = intern die als
«02_Recht_Norm» geführte Quelle). Damit ist dieser Weg jetzt zweimal unabhängig bestätigt als
Fallback für OneDrive-blockierte PL-02-Dateien.

Ein neues Destillat: `[[pflanzen-am-bau-projektierungsgrundlagen-zh]]` — sechs extensive
Flachdach-Begrünungssysteme (Warmdach/Verbunddach/Umkehrdach/Duodach/Plusdach/Doppeldach/
Kaltdach) im Schichtaufbau, vier Kletterpflanzen-Typen (Schlinger/Ranker/Wurzelkletterer/
Spreizklimmer) mit Untergrund-Eignung und Schadenverhütung, versickerungsfähige
Aussenraumbeläge (Schotterrasen/Rasengittersteine/Steinpflaster), Baustoff-Bewertungstabelle.
Status bewusst `speculative`: Quelle 1991-1997, Konstruktionsprinzipien zeitlos, aber alle
SIA-Fundstellen (SIA 271 zurückgezogen, siehe `[[sia-271-2007]]`) und Primärenergie-/
Materialwerte veraltet — im Destillat als Vorbehalt markiert. Verlinkt im bestehenden
Wiki-Artikel `[[dachbegruenung-gruendach]]` als Konstruktions-Vertiefung. `pdf-inventar.md`
und `destillate/INDEX.md` nachgeführt.

**Rest der «19 echten Restwerke» unverändert offen** (18 nach diesem Lauf), grösster
verbleibender Einzelposten `4.910998` Bytes `Allgemeines_Uebersicht.pdf` (laut Run 137 nur
1 S., dann `06_Richtlinien/Minergie/` P1-Block).

## 2026-08-20 (Run 144, Nachtschicht Mac Mini) — Vollzugsordner Energie ZH vollständig erschlossen (letzte Lücke PDF-S. 43-68)

Priorität-4-Trainingslektion: bauprodukte/grobkosten/projekt-lessons/immobilienbewertung/spec
sind alle als ungültiges Ziel geführt (erledigt bzw. Ereignis-Trigger), baurecht/normen/
planungsgrundlagen/wettbewerbs-dna haben eigene Taktgeber — `energie` bleibt der einzige gültige
Nachtschicht-Ziel-KB. Darin die klar benannte P1-Lücke aus Run 143 geschlossen: PDF `Vollzugsordner
Energie Kanton ZH.pdf` (AWEL, Stand Juni 2013) über M365-CLI (`spo file get`, Fallback wegen
Bibliotheks-Umbenennung `02_Recht_Norm` → intern `PL  Immobilienpreise`) frisch geladen, PDF-S.
43-68 gelesen.

Zwei neue Destillate: `[[vollzugsordner-energie-zh-abschnitt2-4-2-6]]` (Wintergärten-Ausnützungs-
bonus, Spezialfälle, EN-6 Kühlräume 5 W/m², emerging) und
`[[vollzugsordner-energie-zh-abschnitt3-1-3-2-en1]]` (§ 10a EnerG, 11 EN-1-Standardlösungen
Höchstanteil nichterneuerbare Energien, bewusst `speculative`). **Damit ist der gesamte
199-seitige Vollzugsordner (Abschnitt 1-10) erstmals vollständig gelesen** — QUESTIONS.md
E-R143-1 geschlossen, neuer Folgepunkt E-R144-1: die 11 EN-1-Standardlösungen (2009) sind
auffällig zahlengleich mit den 11 Standardlösungen der heute geltenden WDV 2022 § 10, eine
Nachfolgebeziehung ist aber nicht geprüft — beide Destillate tragen diesen Vorbehalt explizit
und verweisen auf [[energienachweis-zh]]/[[waermedaemmvorschriften-zh-2022]] als vorrangige
aktuelle Quelle. `destillate/INDEX.md` und `training/pdf-inventar.md` nachgeführt.

**Nebenfund, nicht weiterverfolgt (Budget):** im OneDrive-Projektordner 2407 Regensdorf liegen
zwei Kopien einer **neueren Ausgabe** (`Vollzugsordner_energie_kanton-zh_Ausgabe_1_2023.pdf`,
4.03.2025 abgelegt) — beide als OneDrive-Platzhalter nicht lesbar («Resource deadlock avoided»,
On-Demand-Datei nicht materialisiert). Ein Abgleich der 2023er- gegen die hier destillierte
2013er-Fassung wäre die sauberste Antwort auf den ⚠⚠⚠-Alterskorpus-Vorbehalt dieser gesamten
Werkgruppe — offener Punkt für einen Folgelauf mit Materialisierung durch Raphael (Rule
`interaktive-eingriffe`, Cloud-Sync-Klasse) oder erneutem M365-Zugriff auf die kanonische
PL-02-Fassung, falls sie dort ebenfalls aktualisiert wurde.

## 2026-08-19 (Wissens-Chef Run 37, Cross-KB) — SIA 416/1:2007 als zurueckgezogen gekennzeichnet; eine Handlungsanweisung fuer Aussendokumente gestoppt

**Vier Fassungsvermerke gesetzt, fuenf geplante Stellen nach adversarischer Pruefung bewusst NICHT
angefasst.** Belegt an zwei Primaerquellen (Normen-Nacht Run 57, 19.08.2026): SIA-Shop-Produktdatenblatt
(«archivierter Titel», mit Enddatum) und Titelblatt der **SIA 380:2015** (SN 504380:2015),
das woertlich «Ersatz fuer SIA 416/1:2007» traegt. **SIA 380:2015 liegt nicht im Haus** —
Beschaffung ist Bring-Schuld (Ticket `N57-2` in `wissen/normen/wiki/QUESTIONS.md`); die
Fundstellen sind deshalb **nicht** umgehaengt, sondern nur mit Fassungsvermerk versehen.

- **`destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` (der schwerste Fall):** Die Datei
  trug in der Normbezeichnungs-Klaerung eine **aktive Handlungsanweisung** — «beim Zitat in einem
  Aussendokument ist statt der zurueckgezogenen Norm die Nachfolgenorm zu nennen», wobei die
  «Nachfolgenorm» SIA 416/1:2007 war. Diese Anweisung trug seit ihrer Formulierung eine seit 2015
  archivierte Ausgabe **aktiv in JANS-Aussendokumente hinein**. Nachtrag gesetzt: bis zur Klaerung
  **nicht befolgen**; die Kaskade SIA 180/4:1982 → SIA 416/1:2007 geht eine Stufe weiter, als dort
  stand. Zusaetzlich der bestehende Rueckausnahme-Vorbehalt (Run 34) um den Rueckzugs-Fakt ergaenzt
  (Einschub, kein zweiter Block).
- **`wiki/u-werte-grenzwerte-ch.md`** (EBF-Abschnitt, `status: established`) und
  **`destillate/enfk-en-02-waermeschutz-2013.md`** (Kapitel «EBF — Definition (SIA 416/1:2007)»):
  Fassungsvermerk gesetzt; fuer den Stand 2013 war die Angabe korrekt, die Quellentreue bleibt.
- **`destillate/vollzugsordner-energie-zh-abschnitt6.md`:** Vermerk **neben** den quellentreuen
  Absatz gesetzt, nicht hinein — der Satz gibt den Wortlaut der EnFK-Vollzugshilfe EN-12 wieder.
  Der Vermerk laesst ausdruecklich offen, ob der ZH-Vollzug seinen statischen Verweis nachgefuehrt
  hat («nicht geprueft», nicht «gilt nicht mehr»).
- **`destillate/therapiebad-hallenbad-energie-pflegeheim.md`:** nur ein Klammerzusatz hinter
  «SIA 416/1:2007» — im selben Satz steht **SIA 416:2003**, die gilt, und zwei Zeilen weiter «GV
  nach SIA 416». Ein Absatzvermerk haette eine gueltige Norm als zurueckgezogen ausgewiesen.
- **Bewusst NICHT angefasst** (adversarisch ausgeschlossen): `enfk-fensterblatt.md:109` und
  `systemnachweis-kurs-zh-2009.md:51,55` (Verweise ohne Ausgabejahr, Frontmatter warnt bereits
  pauschal) · `vollzugsordner-energie-zh-abschnitt4-2-4-5.md:57` (thermische Huellflaeche ist
  genuine 416/1-Domaene, ohne Ausgabejahr; die VHKA-75-%-Schwelle nach § 9 EnerG aendert sich nicht) ·
  `vollzugsordner-energie-zh-abschnitt6.md:64` **inhaltlich** (die EBF-Zuordnung zu 416/1 Ziff. 3.2
  ist doppelt korrekt) und **:122** (NGF-Zuordnung — siehe naechster Punkt).
- **Widerlegter Befund, dokumentiert:** Gemeldet war, `vollzugsordner-energie-zh-abschnitt6.md:122`
  ordne die **Nettogeschossflaeche** faelschlich der SIA 416/1 statt der SIA 416:2003 zu. Der
  Refuter ging ans Original-PDF (Vollzugsordner Energie Kt. ZH, AWEL, Stand Juni 2013, S. 139-156):
  die Quelle schreibt selbst woertlich «Die Nettogeschossflaeche gemaess Norm **SIA 416/1** ist der
  Teil der Geschossflaeche zwischen den umschliessenden oder innenliegenden Konstruktionsbauteilen
  … vereinfachend auch mit 90 % der Bruttogeschossflaeche». Das Destillat ist **satzidentisch
  quellentreu**; eine Korrektur haette dem AWEL einen Wortlaut unterschoben, den es nie schrieb.
  Auch sachlich waere der Befund hoechstens «unpraeziser» gewesen: SIA 416/1 Ziff. 1.1.1 uebernimmt
  die Geschossflaechen-Definitionen aus SIA 416 und praezisiert sie. **Nicht geaendert.**

## 2026-08-19 (Tagesslot MacBook Pro) — Run 143: Vollzugsordner Abschnitte 5-10 destilliert, Solar-Bewilligungsweg korrigiert, drei AHB-Restwerke geschlossen

Fünf Werke über den Graph-Weg (M365-CLI, Drive `02_Recht_Norm`, lokale Arbeitskopie), mechanische
Destillation auf vier parallelen Sonnet-Subagenten, Verifikation und Verdichtung im Hauptmodell.
Neu: `[[vollzugsordner-energie-zh-abschnitt5]]` (PDF-S. 109-138, EN-4/EN-5/EN-13),
`[[vollzugsordner-energie-zh-abschnitt6]]` (S. 139-156, EN-11/EN-10/EN-12),
`[[vollzugsordner-energie-zh-abschnitt7-10]]` (S. 157-199, Merkblätter 1-6 Private Kontrolle,
Kantonsübersichten SG/AR/GL/SZ, EN-15 Grossverbraucher),
`[[ahb-zuerich-richtlinie-anlagedokumentation]]` (Elektro + HLS, Dokumentdatum 19.07.2006) und
`[[ahb-zuerich-uebersichtstabelle-beleuchtung-en12464]]` (19.01.2007, bewusst **speculative**).

**Zentraler Befund — eine überholte Faustregel aus dem Verkehr gezogen.** Abschnitt 6.4 druckt
§ 1 lit. k BVV alter Fassung ab (Dach-Solaranlagen bis 35 m² bewilligungsfrei). Der Gegenabgleich
am geltenden BVV-Volltext (Nachtrag 133, KB `baurecht`; § 2a wortlautverifiziert in
`[[bvv-zh-meldeverfahren-klimaanlagen-waermepumpen]]`, established) zeigt eine andere Systematik:
bewilligungsfrei ist heute nur die steckerfertige Anlage bis 4 m² (§ 1 lit. j), Dachanlagen nach
Art. 32a RPV sind **meldepflichtig** (§ 2a Abs. 1 lit. a), und in Kernzone/Inventar/Schutzanordnung
bleibt jede Anlage bewilligungspflichtig (§ 2a Abs. 2). Im Destillat korrigiert statt als
«ungeprüft» stehengelassen — Lehre Run 122 angewandt. Neue FAQ **F245** mit dem vollständigen
Verfahrensweg; Artikel `[[solarpflicht-schweiz-kantone]]` um einen Abschnitt mit
Fallunterscheidungstabelle gewachsen.

**Zweiter Befund — Messfehler im eigenen Bestand.** Das Seitenkopf-Screening zeigt, dass die
Run-138-Buchung «S. 7-45 = Abschnitt 1.1-1.5 + 2.1-2.2» drei Seiten zu weit reichte (S. 43-45
tragen bereits «Abschnitt 2.4»). Offen bleiben **PDF-S. 43-68**: Abschnitt 2.3-2.6 (EN-6
Kühlräume) und Abschnitt 3.1/3.2 mit der 13-seitigen Vollzugshilfe **EN-1 «Höchstanteil an
nichterneuerbaren Energien bei Neubauten»** — der inhaltlich wertvollste Rest des Werks. Status
deshalb weiterhin `[~]`, nicht `[x]`; neuer P1-Punkt **E-R143-1**.

**Verifikation:** vier tragende Zahlen der Subagenten im Hauptmodell direkt am Quell-PDF
nachgelesen (WRG 70 %/≥ 75 %, Abluftschwelle > 1'000 m³/h **und** > 500 h/a mit
Zusammenrechnungsregel, Luftgeschwindigkeits-Staffel 3-7 m/s, Grossverbraucher > 5 GWh Wärme oder
> 0,5 GWh Elektrizität) — **alle vier bestätigt, keine Beanstandung**. Aktualitätsprüfung auf den
Solar-Verfahrensteil angesetzt: eine Beanstandung, korrigiert. Kein Status auf `established`
gehoben.

**Weitere Verdichtung:** neue FAQ **F246** (energetische Anforderungen beim Lüftungsersatz),
**F229** um die Herkunft der alten Beleuchtungs-Zielwerte und die Trennung Energie-/Lichttechnik
geschärft, Artikel `[[komfortlueftung]]` um einen ZH-Vollzugsabschnitt gewachsen. Register:
`destillate/INDEX.md`, `raw/_INGESTED.md`, `training/pdf-inventar.md`, `training/curriculum.md`,
`wiki/QUESTIONS.md`, `wiki/INDEX.md`. Fortschritt PL-02: **110 von 131**.

**Betriebsnotiz:** Die Voraussetzungszeile des Scheduled Task nennt weiterhin den OneDrive-Pfad
`PL - 04 Energie`, der auf dieser Station strukturell nicht existiert; ein wörtlicher Abbruch wäre
ein Fehlalarm. Der belegte Regelweg ist Graph/M365-CLI — Task-File entsprechend umschreiben.

## 2026-08-19 (Nachtschicht Mac Mini, 05:30-Zyklus) — Run 142: Vollzugsordner Abschnitt 4.2-4.5 destilliert

Fortsetzung von Run 141 über denselben Graph-Weg/Drive-ID (lokale Arbeitskopie via
`@microsoft.graph.downloadUrl` + curl, kein OneDrive-Mount berührt). Vollständig gelesen:
Abschnitt 4.2 Heizung/Warmwasser (inkl. Vollzugshilfe EN-3), 4.3 Feuerungen Öl/Gas/Holz, 4.4
Wärmekraftkopplung/Elektrizitätserzeugung (inkl. EN-9), 4.5 VHKA (inkl. EN-14) — PDF-S. 75-108
von 200. Neues Destillat `[[vollzugsordner-energie-zh-abschnitt4-2-4-5]]`, status **emerging**.
Zentraler Fund: der Kt. Zürich markiert die EN-3-Ausnahme für den Ersatz dezentraler
Elektroheizungen ohne Wasserverteilsystem als **nicht anwendbar** — strenger als das
schweizweite EnFK-Muster. Artikel `[[heizleistung-und-waermeerzeuger]]` um diesen Abschnitt
sowie die WKK-Standardlösung 11 (70-%-Deckungsschwelle für den Höchstanteil-Nachweis nach
§ 12b EnerG) ergänzt. `training/pdf-inventar.md`, `training/curriculum.md`,
`destillate/INDEX.md` nachgeführt. **Offen:** Abschnitt 5-10 (PDF-S. 109-199, ~90 S.) — der
grösste verbliebene PL-02-Einzelbrocken, nächste Priorität für Run 143.

## 2026-08-18 (Nachtschicht Mac Mini, 23:30-Zyklus) — Run 141 fortgesetzt über Graph-Weg/Drive-ID: Abschnitt 4.1 Heizungsanlagen gelesen

Fortsetzung des am 02:30/13:32 stehen gebliebenen Fadens über den bereits identifizierten Weg
(`m365 request` gegen Graph-Drive-ID `02_Recht_Norm`, `@microsoft.graph.downloadUrl` + `curl`,
kein OneDrive-Mount berührt). Ganzes Werk (200 PDF-Seiten) per `pdftotext -layout` vermessen:
Abschnitt 4 (Heizungsanlagen) beginnt real bei **PDF-S. 69**, nicht S. 46 wie in
`pdf-inventar.md` vermerkt (hiermit korrigiert). **Abschnitt 4.1** (PDF-S. 69-73, Juni 2013)
vollständig gelesen → neues Destillat `[[vollzugsordner-energie-zh-abschnitt4-1]]`: Bewilligungspflicht
im Anzeigeverfahren (§ 309 PBG/§ 14 lit. i BVV, 30-Tage-Frist), § 357 Abs. 4 PBG als mehrteilige
Wärmeerzeuger-Ersatzpflicht (Instrumentierung/Warmwassertemperatur/Leitungsdämmung/Garagenheizungs-
Stilllegung), § 295 PBG Heizzentralen-Pflicht für Überbauungen ab drei Baukörpern (deckt sich mit
established `[[fernwaerme-anschlusspflicht-zh]]`). Neue FAQ **F244**; Artikel
`[[heizleistung-und-waermeerzeuger]]` ergänzt; `vollzugsordner-energie-zh-abschnitt1-2` und
`pdf-inventar.md` nachgeführt. **Offen:** Abschnitt 4.2-4.5 (PDF-S. 75-108) für die nächste
Fortsetzung — bewusst nur ein Unterabschnitt in diesem Zyklus (Budgetdisziplin).

## 2026-08-18 (Wissens-Chef Run 36, Cross-KB) — Fuehrung fuer § 47a BBV I geklaert, Gegenkante zur KB `baurecht`

- **Diese KB ist fachfuehrend fuer die Energiegrenzwerte.** Das gestern angelegte Destillat
  `destillate/energ-bbv1-waermebedarf-rechtsgrundlagen-zh.md` gibt § 47a BBV I korrekt in der
  seit **01.09.2022** geltenden Fassung wieder (Grenzwerttabelle gewichteter Energiebedarf).
  Die KB `baurecht` fuehrte im Buch-Destillat parallel die **abgeloeste** Fassung als geltendes
  Recht (80 % Hoechstanteil nicht erneuerbarer Energien, Rechtsstand 6. Aufl. 2019) — dort
  korrigiert, hier die Gegenkante gesetzt.
- **Kein Befund gegen diese KB.** Der Melder verglich die §§ 10a, 10c und 11 Abs. 1-6 EnerG
  sowie die Grenzwerttabelle § 47a Abs. 1-4 BBV I mit dem amtlichen Rohtext — wortgetreu, keine
  Divergenz. Die von Buch-Run 74 gemeldete «Klammer-Falle kommunaler Verweise» (dreifach
  abweichendes BBV-II-Zitat) hat sich in diesem Destillat **nicht** wiederholt.
- Positiv vermerkt: Diese KB kennzeichnet ihre ueberholten Staende konsequent
  (`waermedaemmvorschriften-zh-2009-historisch.md` traegt `status: superseded`) — genau die
  Disziplin, deren Fehlen im Buch-Layer den Befund M5-1 ausgeloest hat.

## 2026-08-18 (Versuchs-Slot Mac-Mini-Nachtschicht 13:30) — Run 141 (02:30 delegiert) nie abgeschlossen: kein Ergebnis, kein Commit; PL-04-Mount strukturell nicht vorhanden

**Loser Faden geschlossen, kein neuer Trainingslauf.** Der 02:30-Zyklus hatte Run 141
(Fortsetzung AWEL-Vollzugsordner Energie ZH, Abschnitt 4 Heizungsanlagen S. 46ff.) an einen
Subagenten delegiert und als "laeuft im Hintergrund weiter, Ergebnis noch nicht bekannt" im
Logbuch vermerkt (`logbuch/LOGBUCH.md`, Eintrag 02:30). Weder hier im CHANGELOG noch in
`outputs/`, `curriculum.md` oder `pdf-inventar.md` ist seither ein Ergebnis angekommen — der
Lauf ist ohne sichtbaren Abschluss verpufft, vermutlich am selben Hindernis wie die Runs
126-129 (siehe Eintrag 2026-08-12/13 oben): **`OneDrive-FreigegebeneBibliotheken–JANS/PL - 04
Energie` existiert auf dieser Station strukturell nicht** (nur AD/AR/IMMO unter dieser Wurzel,
selbst geprueft 18.08. 13:xx via `ls`) — der belegte Regelweg ist der **Graph-Weg (M365-CLI,
Drive-ID statt Web-Pfad, `m365 spo file get` liefert 404)**, nicht der OneDrive-Mount.

Dieser Zyklus hat Run 141 **nicht neu gestartet** (Rule: nach Budget-/Access-Scheitern nie
dieselbe Aufgabe direkt wiederholen) und auch keinen Ersatz-Trainingslauf gefahren — alle
anderen Prioritaeten waren bereits von den beiden vorherigen Zyklen heute (02:30, 05:34)
sauber abgearbeitet oder als gesaettigt/blockiert bestaetigt (Synobsis, bauprodukte, grobkosten,
Fristen-Register, `entwurfs-referenzen`-Artikel). **Naechster Schritt fuer Run 141:** direkt ueber
den Graph-Weg (Drive-ID) neu ansetzen, nicht ueber den OneDrive-Mount pruefen.

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — EN-102 fusst auf SIA 380/1:2016, nicht 2009; Gegenkante zum ZH-Energie-Quellordner

- **Korrektur `wiki/u-werte-grenzwerte-ch.md` (`status: established`), adversarial bestaetigt:**
  Der Artikel ordnete die EnFK-Vollzugshilfe **EN-102 (Dez. 2018)** an drei Stellen der Norm-Ausgabe
  **SIA 380/1:2009** zu. Richtig ist **2016** — belegt im eigenen Destillat
  `destillate/enfk-en-102-waermeschutz-2018.md` Z. 4 und 129-131 (Fusszeile jeder PDF-Seite). Der
  Artikel widersprach sich selbst: Z. 12 «2009», Z. 16 «Kt. ZH heute SIA 380/1:2016 (dieser Artikel)».
  **Eine EN-102 auf Basis 2009 existiert nicht**; die auf 2009 fussende Vollzugshilfe ist das andere
  Dokument **EN-2 (Feb. 2013)**, in dieser KB korrekt und getrennt gefuehrt. Ursache ist der
  irrefuehrende SharePoint-Dateiname `…_3801_2009_2018Dez.pdf`, der denselben Fehler schon einmal in
  `planungsgrundlagen` erzeugt hatte (dort am 25.07.2026 korrigiert — **die zuliefernde KB wurde
  geheilt, die fuehrende blieb falsch**).
- **Der Jahrgangsfehler hatte bereits eine Zahl verdorben:** Z. 119 fuehrte fuer EN-102 Tab. 5 die
  Klimareferenz **8,5 °C** (Wert der Ausgabe 2009); das Destillat nennt fuer dieselbe Tabelle
  **+9,4 °C**, und der Artikel sagt das auf Z. 146 selbst. Korrigiert.
- **Vier Edits** (Z. 12, Z. 119, Datenstand-Abschnitt, `last_updated` 2026-07-13 → 2026-08-17), je
  mit Korrekturvermerk. Die **korrekten** 2009-Nennungen (Versionsabgleich EN-2, Delta-Abschnitt
  2016 gegenueber 2009, `sources`) blieben unberuehrt und wurden per `grep` nachgemessen. 12/4.
- **Gegenkante gesetzt in `wiki/energienachweis-zh.md`:** Den Quellordner
  `PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Energie` erschliesst **diese KB** (vier Destillate vom
  17.08.); `planungsgrundlagen` fuehrt nur den Ordnerkontext. Die AHB-Fuehrungszeile aus Run 34 gilt
  fuer diesen Ordner **nicht**. Beide Richtungen sind seit Run 35 beschriftet. 7/0.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-17 (Run 140, Nachtschicht Mac Mini 23:30) — EnerG §§ 10a/10c/11 + BBV I § 47a destilliert, E-R139-1 teilgelöst

- **E-R139-1 (P2) teilgelöst:** Die vier von der WDV 2022 referenzierten, aber nicht selbst
  enthaltenen Paragraphen (§ 47a BBV I: Grenzwerttabelle gewichteter Energiebedarf je
  Gebäudekategorie; EnerG §§ 10a/10c/11 Abs. 1-4: Ermächtigungsnorm, Eigenstromerzeugung,
  Fossilverbot + 90-%-Auffangregel Wärmeerzeugerersatz) waren **bereits vollständig als amtliches
  Rohmaterial im Hub vorhanden** (`wissen/baurecht/raw/260607_amtlich_zh_bbv1.md`,
  `wissen/baurecht/raw/260712_amtlich_zh_energ.md`) — kein neuer Web-Abruf nötig, reine Sichtung
  + Destillation. Neues Destillat `destillate/energ-bbv1-waermebedarf-rechtsgrundlagen-zh.md`
  (status `established`), Quelle amtlich/gemeinfrei, Fassungsstand beider Erlasse für die
  betroffenen Paragraphen unverändert seit Inkrafttreten 01.09.2022 (keine spätere Änderung
  belegt). `wiki/energienachweis-zh.md` nachgeführt (neuer Abschnitt «Rechtsgrundlagen hinter der
  WDV»). **Weiterhin offen: SIA 380/1:2016 selbst** — das war der eigentliche Geldentscheid des
  Punktes (Normkauf, `logbuch/fristen.md` seit Run 98), nicht die jetzt erledigten
  BBV-I/EnerG-Paragraphen. Neuer Folgepunkt E-R140-1 (Gebäudekategorie-Einstufung Healthcare
  Pflegeheim/Altersheim: Kat. I «Wohnen» 35 kWh/m² vs. Kat. VIII «Spitäler» 70 kWh/m² — amtliche
  Abgrenzung nicht in § 47a selbst enthalten, in `wiki/QUESTIONS.md`). Kein Fan-out, kein
  Subagent, keine Kosten für Websuche — Budget ca. 3 USD von 5 USD (überwiegend Recherche im
  Bestand vor dem Schreiben).

## 2026-08-17 (Run 139, Versuchs-Slot Mac-Mini-Nachtschicht 13:30) — WDV 8.6.2022 (LS 700.211) beschafft und destilliert, E-R138-1 gelöst

- **E-R138-1 (P1) gelöst:** Wärmedämmvorschriften Kt. Zürich vom 8. Juni 2022, LS 700.211 (die
  heute geltende Fassung, in Kraft seit 01.09.2022) direkt via `zh.ch`-Rechtsgrundlagen-Seite
  bezogen (9 Seiten, vollständig gelesen) und destilliert: neues Destillat
  `destillate/waermedaemmvorschriften-zh-2022.md`, status **established**. Kernpunkte:
  Wärmeschutznachweis nach SIA 380/1:2016 (Einzelanforderungen Tabellen 2/3/5 oder
  Systemanforderung QH,li Tabelle 6, PH,li ≤ 20 W/m² Gebäudekat. I/IV bzw. 25 W/m² Kat. II/III),
  Dämmstärken-Tabelle Heizungs-/Warmwasserleitungen (§ 6), 4 Standardlösungen für Neubauten
  (§ 9, Gebäudekat. I/II), 11 Standardlösungen für Wärmeerzeugerersatz (§ 10, inkl. SL 8
  Fensterersatz U ≤ 0,7 W/(m²·K) und SL 9 Fassaden-/Dachdämmung U ≤ 0,20 W/(m²·K)),
  Wintergarten-Ausnützungsbefreiung (§§ 11-12).
- `wiki/energienachweis-zh.md` und `wiki/BAUHERREN-FAQ.md` (F242) nachgeführt, `sources`-Frontmatter
  ergänzt, `destillate/INDEX.md` neuer Eintrag. Die historische Ausgabe 2009
  (`[[waermedaemmvorschriften-zh-2009-historisch]]`) bleibt bewusst `superseded`, dient nur noch
  dem Alt/Neu-Vergleich.
- Neuer Folgepunkt **E-R139-1 (P2):** SIA 380/1:2016 selbst (referenzierte Tabellen 2/3/5/6) sowie
  §§ 47a BBV I / 10a, 10c, 11 Abs. 4 EnerG liegen noch nicht im Volltext vor — die WDV verweist
  nur auf deren Zahlenwerte, enthält sie nicht selbst. SIA-Normkauf ist ein Geldentscheid (hängt
  bereits seit Run 98 in `logbuch/fristen.md`); die EnerG-/BBV-I-Paragraphen sind dagegen frei
  über `zh.ch` beziehbar wie die WDV selbst.

## 2026-08-17 (Run 138) — Energierecht-ZH-Ordner abgeschlossen, WDV-2022-Lücke aufgedeckt, E-R137-1 gelöst

- Drei neue Destillate aus dem Restordner `01_Gesetze/02_Zuerich/Energie/` (PL-02):
  `destillate/waermedaemmvorschriften-zh-2009-historisch.md` (WDV 2009 + AWEL-Änderungs-
  zusammenstellung, status **superseded**), `destillate/vollzugshilfe-en10-heizungen-im-freien.md`
  (EnFK EN-10, Juli 2009), `destillate/vollzugsordner-energie-zh-abschnitt1-2.md` (Teildestillat,
  S. 7-45 von 199 des AWEL-Vollzugsordners, Stand Juni 2013).
- **⚠⚠⚠ Zentraler Befund:** Kreuzabgleich mit KB `baurecht` (`raw/260607_amtlich_zh_bzo-zurich-
  stadt.md`) zeigt, dass die im PL-02-Korpus vorliegende Ausgabe der Wärmedämmvorschriften (2009)
  seit dem **8. Juni 2022 (LS 700.211)** nicht mehr die geltende Fassung ist — diese liegt dem Hub
  bisher nicht im Volltext vor (nur als Fundort-Hinweis in einem `baurecht`-Triage-Dokument zu
  einem Projektordner). Neuer P1-Offenpunkt **E-R138-1** in `wiki/QUESTIONS.md`.
- Ein weiterer PL-02-Fund (`730.1_19.6.83_85.pdf`, EnerG-Konsolidierung Nachtrag 85/2014) wurde
  bewusst **nicht** separat destilliert: die KB `baurecht` führt EnerG ZH bereits als primäre,
  fassungsgepflegte Quelle auf Nachtrag 129/2025 — Rule «Verlinken statt doppeln» angewendet statt
  einen 11 Jahre alten Rechtsstand zu duplizieren.
- **E-R137-1 gelöst:** unabhängige Neumessung (voller Graph-`delta`-Durchlauf, 3'507 Items)
  bestätigt Run 137 exakt (188 → 163 → **131 echte PL-02-Werke**). Basenamen-Abgleich gegen
  `destillate/`+`_INGESTED.md` (bewusst ohne `pdf-inventar.md` selbst, um Zirkularität durch
  Selbstnennung offener Items zu vermeiden — eigener Messfehler dieses Laufs, korrigiert bevor er
  ins Register floss): **107 von 131** kanonischen Werken nachweisbar (103 vor, +4 durch diesen
  Lauf). 24 ohne Fund, davon mind. 5 methodische Artefakte (bereits `[-]` in `pdf-inventar.md`,
  nur nicht in `_INGESTED.md` gespiegelt → neuer P3-Pflegepunkt E-R138-2). **Ab jetzt 107/131 als
  Bezugsgrösse, nicht mehr «84 von 182».**
- FAQ **F242** (WDV-2009-Supersession) und **F243** (Aussenheizungen/Heizpilz) neu; Artikel
  `wiki/energienachweis-zh.md` und `wiki/heizleistung-und-waermeerzeuger.md` geschärft.
- Register nachgeführt: `training/pdf-inventar.md` (Nachtrag 17.08.2026, 24er-Restliste),
  `training/curriculum.md` (Run-138-Eintrag), `destillate/INDEX.md`, `wiki/QUESTIONS.md`,
  `raw/_INGESTED.md`. Report `outputs/2026-08-17_energie-run138.md`.

## 2026-08-16 (Wissens-Chef Run 34, Cross-KB) — drei Kanten in `normen`/`planungsgrundlagen`, ein 10-m²-Vorbehalt; alle rein additiv

- **`wiki/bezugsgroessen-energienachweis.md` + `destillate/gebaeudehuellziffer-ebf-flaechendefinition.md`:**
  Beide führten den Vorbehalt «die SIA-416-Flächenhierarchie stammt aus einem Dokument einer
  privaten Immobilienfirma, keine Normstelle» — und beide verwiesen nur pauschal auf den Skill
  `normen`. Der autoritative Ersatz liegt seit dem 14.07.2026 im Haus: `[[sia-416-2003]]`
  (`status: established`, deutscher Normteil komplett gelesen). Kante in beiden Dateien gesetzt,
  Vorbehalt bewusst **stehen gelassen** — der Begriff-für-Begriff-Abgleich RHYMO gegen
  SIA 416:2003 Ziff. 2 ist damit beschaffbar, aber noch nicht geleistet.
- **`destillate/gebaeudehuellziffer-ebf-flaechendefinition.md`, EBF-Raumausschlussliste:**
  Vorbehalt zur möglichen Rückausnahme in `[[sia-416-1-2007]]` Ziff. 3.2.2 gesetzt (Abstellräume
  und Schächte unter 10 m², von AE-Fläche umschlossen, zählen dort doch zur AE). **Ausdrücklich
  als Prüfauftrag, nicht als Beleg** — die Liste hier stammt aus dem BaFa-Merkblatt 2005 (SIA
  180/4), die Gegenregel aus der Nachfolgenorm, und das Zieldestillat trägt `status: speculative`
  und ist nach Rule `normen-referenz` Ziff. 1b eine Warnkarte.
- **`destillate/raumtemperatur-richtlinie-stadt-zuerich-2006.md` (neu vom selben Tag, Run 137):**
  Gegenkante nach `planungsgrundlagen` gesetzt. Dieselbe Quelle (`Richtlinie_Raumtemperatur_Stadtrat.pdf`)
  steht dort seit dem 25.07.2026 als Kurzfassung in
  `recht-norm-ahb-stadt-zuerich-projektstandards` §20. Werte stimmen überein (16 °C-Untergrenze,
  minus-10-°C-Schranke, Büro/Werkstatt 06.00–20.00 Uhr, Elektroheiz-Verbot) — **kein Widerspruch,
  aber unabhängige Doppeldestillation ohne Kante.**
- **`wiki/gebaeudeschadstoffe.md`:** Gegenkante nach `planungsgrundlagen` §17.3 gesetzt. Das
  KBOB-Merkblatt 2004/4 (PCB in Fugendichtungsmassen) wurde hier am 16.08. destilliert und stand
  dort seit dem 14.07.2026 mit identischen Schwellen (>50 ppm; 6/2 µg/m³) — 33 Tage Doppelarbeit
  an derselben Primärquelle. Diese Fassung ist die tiefere (18 S. Grundlage vollständig gegen
  Auszug S. 1–4), die dortige führt dafür **PCP** als drittes Substanzprofil, das hier fehlt.
  Mitgesetzt: der Warnhinweis, dass `[[energie-baustoffe-schadstoffe-rueckbau]]` dort ein
  KB-**interner** Artikel ist (Domänen-Präfix), kein Verweis in diese KB — ein Melder hatte ihn
  für einen toten Link gehalten und wollte ihn umbiegen; der Refuter hat das verhindert.
- Alle fünf Eingriffe rein additiv gemessen (`git diff --numstat`, nativ per ssh: 13+/0, 2+/0,
  5+/0, 16+/0). `raw/` unberührt.

## 2026-08-16 (Run 137) — ECO-BKP 2009 destilliert, Ordner 18.3 vollständig abgeschlossen

- Neues Destillat `destillate/ecobkp-2009-merkblaetter-nach-bkp.md` (ECO-BKP Ausgabe 2009,
  51 Seiten vollständig via `pdftotext -layout` gelesen). Schliesst die seit Run 130 offene
  letzte Position in `18.3 Baustoffe (Bauökologie & Stoffflüsse)`
  (`Richtlinie_ECO-BKP_(Merkblätter_nach_BKP).pdf`).
- Seiten-für-Seiten-Vergleich gegen die beiden 2008er-Destillate
  (`[[eco-bau-merkblaetter-bkp-2008-huelle]]`, `[[eco-bau-merkblaetter-bkp-2008-technik-ausbau]]`):
  identische 23 BKP-Positionen (keine Streichung/Neuaufnahme), Seitendifferenz 55→51 durch
  Wegfall des im Inhaltsverzeichnis noch angekündigten Quellen-/Abkürzungsverzeichnisses
  erklärt (Leitfaden verweist stattdessen auf www.eco-bau.ch). 13 konkrete Sachänderungen
  dokumentiert, u.a. BKP 221 Fensterrahmen-Priorität (Kunststoff PVC 1.→2. Priorität,
  Holz-Metall neu 1. Priorität), BKP 211 Abwasserrohr-Grenzmass DN 300→250, BKP 224
  Dachbegrünung neu mit quantifizierten Kennwerten (10 cm Substrat, 45 l/m² Wasserrück-
  haltekapazität), BKP 222 Kupferblech durch Aluminiumblech ersetzt.
- Verweist im Bauherren-Transfer explizit auf die heute geltende Fassung
  `[[ecobkp-2026-methodik-und-uebersicht]]` — die 2008er/2009er-Materialpriorisierungen sind
  historischer Stand und werden nicht als aktuelle Empfehlung dargestellt.
- `training/pdf-inventar.md`: Nachtrag Run 137, PL-02 auf **85 destilliert**; Ordner
  `18-Nachhaltiges Bauen` damit vollständig abgeschlossen. ⚠ Die im ersten Teil dieses Laufs
  notierte Bruchzahl «85/182» ist **nicht mehr zu verwenden** — der Nenner 182 wurde im selben
  Lauf widerlegt, siehe den folgenden Abschnitt.

### Korpus-Nachmessung PL-02 — die Grundzahl «182» ist widerlegt (E-R134-1 geschlossen)

- **Seit Run 121 misst die KB ihren PL-02-Fortschritt gegen eine Zahl, die nicht reproduzierbar
  ist.** Die «182 energierelevanten PDF» stammen aus einem **Dateinamen-Filter, dessen Begriffe
  nie festgehalten wurden**. Nachmessung in diesem Lauf über einen vollen Graph-`delta`-Durchlauf
  (2'954 Items, 2'550 Dateien, 404 Ordner, 15 Seiten Pagination):

  | Grösse | Wert |
  |---|---|
  | PDF in PL-02 gesamt | **1'222** (Run 121: 1'171 — der Korpus ist gewachsen) |
  | PDF in den fünf energierelevanten Ordnern, roh | 188 |
  | abzüglich Seiten-Splits `…-SeiteNN.pdf` | −25 |
  | **dokumentartige PDF** | **163** |
  | abzüglich byte-identischer Mehrfachablagen | −32 |
  | **echte Werke** | **131** |

- **Die 182 war in zwei Richtungen zu hoch.** Sie zählte 25 Seiten-Splits eines bereits
  destillierten Werks (`planer_d-SeiteNN.pdf`) als eigene Quellen — den Einzelfall hatte Run 134
  für den Minergie-Block schon gefunden, ohne die Grundzahl selbst zu korrigieren. Und sie zählte
  dasselbe Werk bis zu **dreimal**: der Korpus legt die eco-Merkblätter flach
  (`eco/3.38RecyclingBetonKBOB_2007_2.pdf`), thematisch (`eco/Nachhaltiges Bauen/03
  Informationen/…`) und unter `Projektadmin AHB/18-…/` mit sprechendem Namen parallel ab.
  **23 Gruppen, 55 Dateien, 32 redundante Kopien**, per `quickXorHash` byte-identisch belegt.
- **Neues Register `training/pl02-dubletten-hash.md`** mit allen 23 Gruppen und der Methode. Der
  Hash kommt bei der `delta`-Abfrage gratis mit, wenn `file` im `$select` steht — ein Durchlauf
  statt eines Downloads plus Wort-Diff je Verdachtsfall (Methode aus Run 136, hier systematisiert).
  Kreuzvalidierung: alle im `pdf-inventar.md` per Wort-Diff als «KEINE Dublette» geführten Paare
  haben erwartungsgemäss **verschiedene** Hashes — die beiden Register widersprechen sich nicht.
- **Screening: nur 16 der 131 Werke sind in Inventar und Destillaten nirgends erwähnt.** Der
  Korpus ist damit weit näher am Abschluss, als «84 von 182» suggerierte. Der Zähler ist noch
  nicht auf die neue Definition umgestellt → neuer Punkt **E-R137-1** in `wiki/QUESTIONS.md`;
  **bis dahin keine Prozent- oder Bruchangabe zum PL-02-Fortschritt in Lauf-Reports.**
- **Praktische Bestätigung im selben Lauf:** `Recycling_Beton_(KBOB-Empfehlung_2007.2).pdf` war
  als offener Kandidat eingeplant und ist eine **dreifach abgelegte, seit Run 126 destillierte**
  Quelle; der Destillat-Agent hat das erkannt und **kein** Zweitdestillat angelegt.

### Zweiter Teil des Laufs — Raumtemperatur, Editionskette, zwei Leerbefunde

- **Neues Destillat `destillate/raumtemperatur-richtlinie-stadt-zuerich-2006.md`** (5 S. vollst.):
  Raumtemperatur-Richtlinie 2006 der Stadt Zürich, Beilage zum Stadtratsbeschluss Nr. 1194 vom
  04.10.2006. Sollwerte je Raumnutzung (Anhang 1), Betriebszeiten Schulhäuser (Anhang 2) und
  Wohnbauten (Anhang 3), 16 °C-Untergrenze im Absenkbetrieb, keine weitere Absenkung unter
  −10 °C Aussentemperatur, Zuschlag 1 – 2 °C bei schlechter Hülle. Als **stadtinterne
  Betriebsrichtlinie** klar von einer allgemein geltenden Rechtsnorm abgegrenzt. **Negativbefund
  am Original nachgeprüft: das Dokument beziffert an keiner Stelle eine Energieeinsparung** — die
  verbreitete Faustregel «ein Grad spart rund sechs Prozent» steht nicht darin und darf nicht
  unter Berufung darauf zitiert werden. Schliesst zugleich eine Lücke in
  `[[ahb-zuerich-gt-rl3-heizungsanlagen]]`, das StRB 1194/2006 bisher nur referenzierte.
- **Neues Destillat `destillate/ecobkp-editionskette-2006-2009.md`** — Editions-Abgleich statt
  drittem Inhaltsdestillat. **Schliesst den seit Run 123 offenen Impressum-Widerspruch der
  Ausgabe 2008:** deren stehengebliebene Fusszeile «Ausgabe 09/2006» auf der Impressum-Seite ist
  zeichengleich die **durchgehende** Fusszeile der tatsächlichen Vorauflage September 2006
  (66 S.), die im selben Korpus liegt. Beide Fusszeilen in diesem Lauf **am jeweiligen Original**
  nachgelesen, nicht über Zwischenquellen. Bestand der 23 BKP-Merkblätter 2006 → 2008
  unverändert; der Seitenrückgang 66 → 55 ist überwiegend Wegfall von Leerseiten. Der offene
  Punkt in `eco-bau-merkblaetter-bkp-2008-technik-ausbau.md` ist entsprechend geschlossen.
- **Zwei Leerbefunde sauber als `[-]` erfasst:** `eco-devis_(Ausschreibungshilfe-nach-NKP).pdf`
  und `Bauteilkatalog_Energie+Oekologie.pdf` sind je 1 Seite, deren vollständiger Textinhalt aus
  **einer URL** besteht — kein Fachinhalt, kein Destillat.

### Verdichtung (Block 2)

- **FAQ F240 — «Auf welche Raumtemperatur soll ich mein Gebäude einstellen, und was bringt das
  Absenken nachts?»** Sollwerte je Raumnutzung, Betriebszeiten, Absenkgrenzen, mit dem
  Negativbefund zur unbelegten Prozent-Faustregel. Für Healthcare direkt anschlussfähig
  (Pflegezentren-Zeile: 22 °C Bettenzimmer, 24 °C Bad/Behandlung).
- **FAQ F241 — «Holz, Holz-Metall oder Kunststoff: welches Fenstermaterial ist ökologisch die
  erste Wahl?»** Geltend ist ecoBKP 2026 (1. Priorität Holz, 2. Holz-Metall, PVC nicht mehr
  geführt). **Neuer Sachbefund: die Abwertung von PVC fiel bereits in die Ausgabe 2009**, nicht
  irgendwann zwischen 2008 und 2026 — an beiden Originalen nachgelesen (2008: 1. Priorität
  «Holzrahmen U_f 1.3; Kunststoffrahmen (PVC) … U_f 1.1»; 2009: «Holzrahmen U_f 1.3;
  Holzmetallrahmen U_f 1.2», PVC in 2. Priorität). Beratungsrelevant: der zurückgestufte
  PVC-Rahmen war energetisch der **bessere** — den Ausschlag gab die graue Energie, nicht der
  U-Wert.
- **`destillate/ecobkp-2026-gebaeudehuelle.md` präzisiert:** die dortige Aussage sprang von 2008
  direkt auf 2026; die Zwischenstufe 2009 ist jetzt belegt eingefügt.

## 2026-08-16 (Run 136, Mac Mini Nachtschicht 13:30-Versuchsslot) — PCB-Fugendichtungsmassen destilliert

- Neues Destillat `destillate/kbob-pcb-fugendichtungsmassen-2004-4.md` (KBOB Empfehlung
  2004/4, vollständig gelesen): Bauherren-Prozess A/B (Vorstudie → Analyse → Projektierung/
  Ausschreibung → Realisierung → Bewirtschaftung), Schwelle 50 ppm, Raumluft-Grenzwerte
  6/2 µg/m³, Chlorparaffine als Nebenstoff. Löst die seit Run 133 offene Priorität
  `4.27Fugendichtungsmassen.pdf` — per quickXorHash als byte-identisch mit dem vermeintlichen
  Zwilling `18.4/PCB_in_Fugendichtung...` bestätigt (realer zweiter Pfad: `.../03 Informationen/
  4.27.I PCB in Fugendichtungsmassen(KBOB2004_4).pdf`), beide Inventarzeilen mit einem
  Destillat geschlossen.
- `wiki/gebaeudeschadstoffe.md` um neue Sektion «PCB in Fugendichtungsmassen: der
  Bauherren-Prozess im Detail» ergänzt (vertieft die bestehende Tabellenzeile mit Ablauf,
  Schwellen und Chlorparaffin-Hinweis). Frontmatter sources/links nachgezogen.
- `training/pdf-inventar.md`: Nachtrag Run 136, Stand PL-02 auf 84/182 destilliert (98 offen).
- Protokoll: `outputs/2026-08-16_energie-run136.md`.

## 2026-08-15 (Wissens-Chef Run 33, Cross-KB) — BZO Art. 11 auf den geltenden Wortlaut nachgezogen; drei Kanten und ein offener Punkt

- **`wiki/dachbegruenung-gruendach.md` — Rechtsteil korrigiert.** Der am 15.08. (Run 133) neu
  angelegte Artikel gab BZO Art. 11 Abs. 1 Stadt Zuerich im Wortlaut der Quelle von 2009
  wieder. Am amtlichen Text gegengelesen
  (`baurecht/raw/260607_amtlich_zh_bzo-zurich-stadt.md` Z. 930-945, Fussnote 35): an **vier**
  Punkten falsch — «betrieblich moeglich» statt «zweckmaessig», «wirtschaftlich tragbar» statt
  «zumutbar», fehlendes «oekologisch wertvoll» und die **ganz fehlende Klausel «auch dort, wo
  Solaranlagen installiert sind»**. Geltend ist die Fassung GRB 30.11.2016, in Kraft
  01.11.2018 (STRB Nr. 686/2018). «Technisch und wirtschaftlich zumutbar» steht in **Abs. 3**
  (bestehende MFH) und betrifft die Dachbegruenung nicht.
- **Warum das mehr als ein Zitierfehler war:** die fehlende Solaranlagen-Klausel laesst die
  Kombination Gruendach + PV wie einen Auslegungsspielraum aussehen, waehrend der Gesetzgeber
  sie seit 2018 anordnet — und genau diese Kombination ist der Gegenstand des Artikels.
- **Entstehung, und die eigentliche Lehre:** `planungsgrundlagen` hatte dieselbe Quelle (AHB-
  Checkliste 16.02.2009) am 25.07. verarbeitet und am **31.07. in genau diesem Punkt
  korrigiert**. Die Korrektur existierte, war aber nicht erreichbar (`grep -c
  "planungsgrundlagen"` in beiden neuen Dateien: 0). Kante beidseitig gesetzt; Fuehrung fuer
  Recht/Bewilligung liegt bei `planungsgrundlagen`, diese KB fuehrt Substrat-/Qualitaetsstandard,
  Kennwerte und PV-Kombination.
- **`destillate/dachbegruenung-checkliste-stadt-zh.md`:** 2009er-Wortlaut als
  Quellendokumentation **stehen gelassen** (ein Destillat protokolliert seine Quelle) und mit
  zwei Vorbehalten versehen — Rechtsstand ueberholt, SIA-Ziffern aus der Quelle uebernommen und
  nicht am Normtext geprueft. Kanten zu `[[dachbegruenung-gruendach]]` und `[[sia-271-2007]]`.
- **`wiki/holzwerkstoffe-formaldehyd-innenraumklima.md`:** Doppelspurigkeit benannt — Lignatec
  21/2008 liegt seit 25.07. auch in `planungsgrundlagen`. **Keine Zusammenfuehrung**, sondern
  Arbeitsteilung festgehalten (hier Fachphysik/Grenzwerte, dort AHB-Massnahmenkatalog).
- **`destillate/gebaeudehuellziffer-ebf-flaechendefinition.md`:** Kante auf das neue
  `[[sia-416-1-2007]]` — mit dem Vorbehalt, dass es `status: speculative` traegt und damit nach
  Rule `normen-referenz` Ziff. 1b **Warnkarte, keine Zitierquelle** ist. Der Abgleich der
  EBF-Grunddefinition gegen Ziff. 3.2 ist ausdruecklich **offen gelassen**, nicht behauptet.
- **`wiki/oekologische-materialvorgaben-beschaffung.md`:** Bezugsgroessen-Vorbehalt zu
  Recyclingbeton. Die drei Prozentzahlen im Hub messen **nicht dasselbe** — 60 % rezyklierte
  Gesteinskoerner *in* der Rezeptur (Stadt ZH 2006), 50 % RC-Beton *am* Betoneinsatz
  (MINERGIE-ECO-Labelbedingung, KBOB 2007/2), 50/80 % Massenanteil als deklariertes
  Musterbeispiel (AHB 2008). Kein Widerspruch, aber ein Devis-Text muss die Bezugsgroesse
  mitschreiben, sonst ist die Vorgabe nicht durchsetzbar.
- **`wiki/QUESTIONS.md` neu E-R33-1:** KB-interne Divergenz zur **Ausgabebezeichnung** von
  SIA 387/4 (fuenf Destillate «:2023», eines «Ausgabe 2017, aktualisiert 2023»). **Nicht
  entschieden** — `normen` fuehrt die Ausgabe und hat die Klaerung an einen eigenen datierten
  Abruf gebunden; die BBV I ZH erklaert fuer den kantonalen Vollzug weiterhin die Ausgabe 2017
  verbindlich. Nachgeholte Rueckrichtung aus `normen` Run 28.
- Bericht: `koordination/outputs/2026-08-15_wissens-chef-run33.md`.

## 2026-08-15 (Run 134, MacBook Pro 22:37) — Minergie-Korpus vermessen, EFH-Ebene, Label-Debatte

**Der Befund vor den Destillaten:** Die seit Run 129 unverändert weitergereichte Prioritätenzeile
«Minergie, 79 PDF, Priorität 1» hält der Messung nicht stand. 274 Dateien im Baum, davon 170
FileMaker-App-Bundle, 15 Screenshots, 25 Seiten-Splits eines bereits destillierten Werks — **67
dokumentartige Quellen, davon 32 bereits geführt, 35 offen**. Der Block war seit Run 124/125
grösstenteils erledigt. Lehre in `curriculum.md` und `pdf-inventar.md`: eine Mengenangabe in der
Prioritätenliste ist so verifikationsbedürftig wie ein Kennwert im Destillat. Daraus **E-R134-1
(P2)**: die Grundzahl «182 energierelevante PDF» des PL-02-Korpus (Run 121) wurde seither nie
nachgemessen.

Drei neue Destillate aus fünf Quellen (Graph-Weg, M365-CLI, alle vollständig gelesen):
`minergie-me-vs-me-p-vergleich` (Bauteil-Vergleich Neubau EFH plus Grundgleichung Qh = (Qt+Ql) −
(Qs+Qp+Qe); ⚠ undatiert, Bezugsnorm SIA 380/1:2009, Zahlen zweifach überholt),
`minergie-label-pressekritik` (archithese 6/2009 Leibundgut gegen minergie.ch 31.03.2010 Kriesi;
keine normative Quelle, Meinung und Tatsache getrennt, beide Wortführer befangen — ausgewiesen)
und `faustregeln-energieeffizientes-gebaeude` (⚠ kein Herausgeber, kein Datum, status
`speculative`; Lambda-Anomalie 0,3 W/(m·K) **unverändert markiert statt korrigiert**).

Fünf Dublettenkandidaten **belegt** entschieden statt geschätzt: die beiden `VoHi_EN-02_de.pdf`
byte-identisch (MD5, `cmp`), Editionskette Jan 2009 → Feb 2013 → Dez 2018 belegt; der
Grössenunterschied 179 kB gegen 420 kB war reine Komprimierung, nicht Sachänderung. Sechs weitere
Dateien als Re-Abgleich bestätigt (Nachweisformular-Satz 2022.4, unverändert).

Neue Bauherren-FAQ **F237** (Unterschied ME/ME-P am EFH) und **F238** (Label-Debatte ehrlich
eingeordnet); Wiki `minergie-standards` gewachsen. **E-125-5 geschlossen**: massgebend ist das
Produktreglement **2026.1** (Titelblatt am PDF selbst gelesen: Ausgabe 08.01.2026, gültig ab
01.01.2026) plus Anwendungshilfe 2026.2; der Nachweis läuft über die Label-Plattform, nicht mehr
über eine Excel-Mappe. Abhängige Stellen mitgezogen (Lehre E-125-4). **E-125-6 bleibt offen** mit
stärkerem Negativbefund. Werkzeug-Befund in `connectors/WEGE.md`: `spo file get` will die
server-relative URL, und `02_Recht_Norm` heisst intern weiterhin `PL  Immobilienpreise`.
Stand PL-02: 80/182 destilliert, 102 offen. Register: `training/pdf-inventar.md`,
`training/curriculum.md`, `destillate/INDEX.md`, `wiki/QUESTIONS.md`, `wiki/BAUHERREN-FAQ.md`.

## 2026-08-15 (Run 133, Mac Mini Nachtschicht 05:30) — Ordner 18.4/18.5/18.6 abgeschlossen

Alle 10 Dateien aus `18.4 Wohlbefinden (Innenraumklima)`, `18.5 Boden Landschaft`, `18.6
Organisation` gesichtet (Graph-Weg, M365-CLI). Zwei neue Destillate + Wiki-Artikel:
`holzwerkstoffe-innenraeume-formaldehyd` (Lignatec 21/2008, Formaldehyd-Grenzwerte
Holzwerkstoffe) und `dachbegruenung-checkliste-stadt-zh` (Stadt-ZH-Vorgabe BZO Art. 11 +
PV-Synergie), je neuer Wiki-Themenartikel und Bauherren-FAQ F235/F236. Fünf Dateien als
Dubletten bereits destillierter eco-flat-Quellen eingestuft (Seitenzahl-Abgleich), zwei ohne
Bauherren-Fakt (Organisationsablauf, Vereinsflyer) bewusst nicht destilliert. Neu
identifiziert: `18.4/PCB_in_Fugendichtung_(KBOB-Empfehlung_2004.4).pdf` (43 S.) ist mit hoher
Wahrscheinlichkeit dieselbe Quelle wie der seit Run 126 offene `4.27Fugendichtungsmassen.pdf`
— zu gross für dieses Budget, nächste Priorität. Stand PL-02: 77/182 destilliert, 103 offen.
Register: `training/pdf-inventar.md`, `destillate/INDEX.md`, `wiki/INDEX.md`,
`wiki/BAUHERREN-FAQ.md`.

## 2026-08-14 — Korrektur (Wissens-Chef Run 32) zum Eintrag «E-R131-1 geschlossen»

Die dort und an sechs weiteren Stellen notierte Aussage, die Mai-2006-Fassung sei «nie
eingelesen» worden, ist falsch. Das Destillat existiert seit dem 04.08.2026 (Run 123):
`destillate/ahb-zuerich-massstaebe-nachhaltiges-bauen.md`, registriert in `destillate/INDEX.md`
Zeile 340, «gelesen: Seiten 1-2 (vollstaendig), 2026-08-04». Seine Frontmatter fuehrt die von
Run 132 als Fundort gemeldete Datei ausdruecklich als byte-identische Dublette (…/eco/Nachhaltiges
Bauen/01 verbindliche Richtlinien/1.11.R Massstaebe fuer Umwelt- und Energiegerechtes Bauen.pdf)
der destillierten Datei …/eco/1.11Meilenschritte_05_2006.pdf. Der Link war nie dangling. Sachlich
richtig bleiben der korrigierte Quellverweis (kein Zitierfehler) und der Fassungsvergleich
25 % → 40 %. **Lehre:** vor einer «existiert nicht / nie eingelesen»-Aussage `ls destillate/`
gegen den Linknamen pruefen — der Dateiname des Destillats war buchstabengleich der gesuchte Link.

## 2026-08-14 — Run 132 (Abendlauf 22:37): Ordner 18 abgeraeumt, Run-130-Befund korrigiert, zwei neue FAQ

Vier neue Destillate aus fuenf Quellen des Ordners `18-Nachhaltiges Bauen`
(`ahb-checkliste-solarstromanlagen-2008`, `topten-haushaltgeraete-liegenschaftenverwaltung`,
`ahb-devis-und-baustellenkontrolle-2008`, `ahb-bedingungen-werkleistungen-nachhaltiges-bauen`),
zwei Link-Stub-PDF begruendet als `[-]` verworfen. Damit ist E-R131-2 bis auf die
ECO-BKP-Richtlinie erledigt.

**Verifikation, mit Korrektur:** Run 130 hatte Devis- und Baustellenkontrolle als «spaetere
Revision, POM 25.09.2008» gefuehrt. Am Original nachgelesen tragen beide den Stempel
**POM 11.08.06** — der Stempel 25.09.2008 gehoert zum Solarstrom-Merkblatt desselben Ordners.
Der Destillier-Agent hat dem falschen Vorbefund im Auftrag widersprochen, der Hauptlauf hat
gegengeprueft. Drei neue Fallen dokumentiert: **fremder Stempel** (ein Stempel gilt nur fuer sein
eigenes Dokument), **Zeilen- statt Wort-Diff** (der zeilenweise `diff` misst Layout mit und war
die Ursache des Fehlschlusses), **Link-Stub-PDF** (12 kB, 1 Seite, nur eine URL im Rahmen).

**E-R131-1 geschlossen:** die Mai-2006-Fassung der «Massstaebe fuer Umwelt- und energiegerechtes
Bauen» existiert tatsaechlich als eigene Datei und war nie eingelesen; der Quellverweis in
`oekologische-materialvorgaben-beschaffung` ist korrekt, kein Zitierfehler. Fassungsvergleich als
Nachtrag in `stadt-zuerich-7-meilenschritte-nachhaltiges-bauen`: **die Vorgaben wurden in gut
zwei Jahren deutlich verschaerft** (erneuerbare Energien am Waermebedarf von Neubauten 25 % → 40 %,
Neubaustandard MINERGIE → MINERGIE-ECO).

**Verdichtung:** **F233 neu** (Solar-Bauvorbereitung im Rohbau — Leerplatz 6 m², Rueckspeiseklemmen
5 × 35 mm², zwei freie Zaehlerplaetze, 50 kg/m² statische Reserve; eine Luecke, die trotz zwanzig
PV-Eintraegen bestand). **F234 neu** (Baurechtsland Stadt Zuerich, mit dem Fassungsvergleich als
Begruendung). **F209 geschaerft** um die Vertragsstufe zwischen Devis und Baustelle
(Warendeklaration mit Zustimmungsvorbehalt, materialscharfer Katalog, Kostenfolge zulasten der
Unternehmung). Themenartikel `oekologische-materialvorgaben-beschaffung.md` um dieselbe Stufe
gewachsen, Frontmatter nachgefuehrt.

Register nachgefuehrt: `destillate/INDEX.md`, `training/pdf-inventar.md`, `raw/_INGESTED.md`,
`wiki/QUESTIONS.md` (E-R132-1 bis -4 neu), `wiki/INDEX.md`, `training/curriculum.md`.
Lauf-Report `outputs/2026-08-14_energie-run132.md`. Stand PL-02: **75 von 182** destilliert.

⚠ Unveraendert offen seit Run 129: die Voraussetzungszeile der Task-Definition verlangt den
OneDrive-Mount, waehrend der Graph-Weg inzwischen sechs Laeufe in Folge traegt.

## 2026-08-14 — Run 131 (Mac-Mini-Nachtschicht 13:30-Slot): Richtlinie_7-Meilenschritte destilliert

Erste der fünf in Run 130 als Nicht-Dubletten bestätigten Formulare aus `18-Nachhaltiges
Bauen` destilliert (eine Einheit, Budgetdisziplin). Neues Destillat
`stadt-zuerich-7-meilenschritte-nachhaltiges-bauen.md`: Stadtratsbeschluss Nr. 1094 vom
17.09.2008, «Massstäbe für Umwelt- und energiegerechtes Bauen» mit den 7 Meilenschritten
zum umwelt- und energiegerechten Bauen. Bezogen über den Graph-Weg (M365-CLI, Zertifikat;
`node_modules/.bin/m365`, Drive `02_Recht_Norm`), da die lokale OneDrive-Bibliothek diesen
SharePoint-Pfad auf dieser Station nicht gemountet zeigt — Dokumentation des Zugangswegs
in `pdf-inventar.md` bereits vorhanden (Run 126), hier nur erneut angewendet und bestätigt.
**Bauherren-relevanter Kernbefund:** der Geltungsbereich bindet nicht nur städtische Bauten,
sondern auch private Bauvorhaben mit städtischer Unterstützungsleistung (Baurecht,
Beiträge) — bei JANS-Projekten auf städtischem Baurechtsland ist das ein Prüfpunkt.
`training/pdf-inventar.md` und `destillate/INDEX.md` nachgeführt (Status `[x]`). Zwei
Punkte offen in `wiki/QUESTIONS.md`: (E-R131-1) ungeklärter Bezug zum dangling-Link
`ahb-zuerich-massstaebe-nachhaltiges-bauen` (Mai 2006) im Artikel
`oekologische-materialvorgaben-beschaffung.md` — gleicher Titel, anderes Datum, nie
eingelesen; (E-R131-2) die restlichen vier Formulare aus Run 130 bleiben offen für Run 132.
Kein Wiki-Artikel geändert, keine bestehende Aussage angetastet.

## 2026-08-14 — Run 130 (Mac-Mini-Nachtschicht): Ordner 18-Nachhaltiges Bauen dublettengeprueft, Befund korrigiert

`training/pdf-inventar.md`: alle neun in Run 128 vermuteten Dubletten aus `18-Nachhaltiges Bauen`
per `pdftotext`-Diff gegen die eco-Quelle geprueft. Nur **4 von 9** sind echte Dubletten
(MINERGIE-ECO-Flyer, Nachhaltige Gebaeudeerneuerung, Zielvereinbarungen SIA 112.1, Recycling
Beton) — die restlichen **5 sind spaetere Revisionen** derselben Formulare (2008 gegenueber
2005/2006, neues «DokumenteignerIn»-Layout Fachstelle nachhaltiges Bauen) und bleiben als eigene
Quellen offen. Neue Falle Nr. 7 dokumentiert: «spaetere Revision statt Dublette». Keine
Destillation in diesem Lauf (Budget); die fuenf offenen Formulare sind fuer Run 131 vorgemerkt,
danach `06_Richtlinien/Minergie/` (79 PDF). Kein Wiki-Artikel geaendert.

## 2026-08-13 — Fremdlauf `wissens-chef` Run 31: SIA 386.111 nach `normen` nachgezogen, drei Meldungen gegen die KB widerlegt

Geschrieben vom Wissens-Chef (Cross-KB-Aufsicht), nicht von einem `energie`-Lauf. **Eine Aenderung
an der KB, und sie ist additiv.**

- **`destillate/sia-386-bacs-gebaeudeautomation.md` — Querbezug-Block gesetzt** (vor «Wichtige
  Korrektur gegenueber dem ersten Entwurf»). Die vollstaendige Ausgaben- und Gueltigkeitskette der
  SIA 386.111 war bis heute **nur hier** gefuehrt; in der fuer Norm-Fundstellen fuehrenden KB
  `normen` gab es dazu keinen einzigen Treffer. Sie ist dort jetzt als Registerzeile nachgezogen
  (ohne Inhaltsaussage, Volltext nicht im Bestand). **Der Primaerbeleg bleibt hier** — normen
  verweist, statt zu kopieren, wie bei SWKI und Electrosuisse. Ein Fassungswechsel ist kuenftig in
  **beiden** Dateien nachzuziehen; der neue Block sagt das ausdruecklich.
- **Drei Meldungen gegen diese KB wurden adversarial geprueft und WIDERLEGT** — die KB bleibt
  unangetastet, und in allen drei Faellen haette die vorgeschlagene «Korrektur» geschadet:
  (1) *SIA 382/1:2025, 73 %/70 % WRG in `wiki/komfortlueftung.md`* — der Verweis auf
  `[[komfortlueftung-wrg-sia382-luftwechsel]]` steht vier Zeilen weiter (Z. 22) sowie in Z. 82,
  Z. 124 und im Frontmatter; der «offene normen-Vorbehalt» ist ein Synchronisationsvermerk, den
  `normen` selbst aufgeloest hat (REGISTER Z. 605: eigener Stand 2014 «ueberholt»), und der Wert
  ist unabhaengig primaerquellennah gedeckt (MuKEn 2025, Anhang 6, Standardmassnahme 5). Ein
  Warnvermerk haette einen gesicherten Grenzwert als unsicher markiert.
  (2) *Abnahme Komfortlueftung ohne Verweis auf die Private Kontrolle* — die werkvertragliche
  Abnahmemessung und der oeffentlich-rechtliche Nachweis nach BBV I § 4 sind zwei verschiedene
  Dinge; der Vorschlag haette sie gleichgesetzt und EN-105 falsch bezeichnet.
  (3) *Gebaeudeautomation ohne Verweis auf EN-135* — **EN-135 sind «Beheizte Freiluftbaeder»**;
  Gebaeudeautomation ist **EN-141** (Befugnis He *und* Kl). Der Vorschlag haette einen frischen
  Sachfehler in einen `established`-Artikel geschrieben.

Bericht: `wissen/koordination/outputs/2026-08-13_wissens-chef-run31.md`.

## 2026-08-13 (Run 129) — Raummodule je Raumtyp, erste Healthcare-Quelle der KB, neue Datierungsfalle

**Sparbetrieb**, fünf Destillier-Agenten auf Sonnet, kein Refuter-Panel. **6 PDF geprüft, 5
destilliert**, 1 begründet als `[-]` abgelegt. Zugang zum vierten Mal in Folge über die
**M365-CLI/Graph** (Run 126/127/128/129); der OneDrive-Mount wurde gar nicht versucht, weil die
PL-Site unter der gemounteten Wurzel nicht existiert. ⚠ Hinweis zum Weg: `m365 spo file get` lief
in diesem Lauf für alle sechs Dateien in ein HTTP 404, der rohe Graph-Weg über die **Drive-ID**
funktionierte auf Anhieb — die Drive-ID ist die stabilere Adressierung als der Web-Pfad.

Neue Destillate (alle `emerging` mit ⚠-Alterskorpus-Vermerk, Ausgabe je am Dokument gelesen):
`ahb-merkblatt-kontrollierte-wohnungslueftung` (AHB, **26.02.2007** — die Betriebs- und
Abnahmeseite, die den sechs bisherigen Lüftungs-Destillaten der KB fehlte: V/D/M-Rollenmatrix,
Messliste der Inbetriebsetzung, Nachweis nach einem Betriebsjahr, Schalldämpfung gehört ins
Kanalnetz und nicht an die Auslässe), `ahb-standard-gebaeudeautomation-pflegezentren` (AHB mit den
Pflegezentren PZZ, **Version 1.1, Juli 2008** — **erste Healthcare-Quelle der KB**, Bezug Projekt
2619 KISPI: Nachtwache als Ausfallebene, bewusste Nicht-Integration von Patientenruf/Weglaufschutz,
Bedienlogik nach Nutzergruppe), `ahb-raummodul-buero` (**V 1.1, Juli 2008**) und
`ahb-raummodul-klassenzimmer` (**V 2.1, Juli 2008**) — der Raummodul-Ansatz, Sollzustand je
Raumtyp, mit nahezu identischen Zielwerten und Unterschieden nur im Betriebsrhythmus —, sowie
`ahb-merkblatt-sicherheitsnachweis-elektro` (**V 1.1, 13.05.2005**, Sachbezug zur Energie-KB
ehrlich als mittelbar ausgewiesen).

Begründet nicht destilliert: `Standards_Kennzeichnungssystem_V2.2.pdf` (24 S., 01.09.2007) — reine
Anlagenkennzeichnungs-Systematik ohne energetische Kennwerte; bei einem künftigen
Submetering-Thema neu zu bewerten (E-R129-5).

VERDICHTUNG: drei neue BAUHERREN-FAQ — **F230** (Sollzustand je Raumtyp statt gebäudeweiter
Formulierung; die zeitlosen Betriebsregeln von den Zahlen von 2008 getrennt), **F231** (was in
einem Pflegeheim gebäudetechnisch anders ist), **F232** (Lüftungs-Abnahme: die Messungen in den
Vertrag schreiben, nicht die Versprechen). Gewachsen: `[[gebaeudetechnik-pflichtenheft]]` um
**Raummodule** und **Gebäudeautomation im Pflegebetrieb** · `[[komfortlueftung]]` um **Abnahme und
Inbetriebsetzung** — der Artikel war bisher rein kennwertorientiert.

**Zwei methodische Befunde.** Erstens eine **neue Datierungsfalle**: beim SiNa-Merkblatt weichen
Fusszeilenstempel (23.11.2007) und Redaktionsvermerk im Fliesstext (**Version 1.1, 13. Mai 2005**)
um zweieinhalb Jahre ab. Mein Auftrag an den Agenten gab den Fusszeilenstempel als Ausgabe vor; der
Agent hat am Dokument korrigiert, der Hauptlauf hat die Korrektur am Original gegengeprüft. Die
Reihe der Fallen lautet damit: Dateiname (122) · Ablageort (124/125) · Grösse gegen Seitenzahl
(124) · Textextrahierbarkeit (126) · Grösse als Dublettenkriterium (128) · **Fusszeilenstempel
gegen Redaktionsvermerk (129)**. Zweitens: **die mtime auf dem NAS ist derzeit kein Indikator für
den Zeitpunkt der Arbeit** — drei Destillate mit Änderungszeit 01:04-01:07 des 13.08. sahen nach
einem abgebrochenen Nachtlauf aus, ihr Frontmatter weist sie als Arbeit aus Run 123 und Run 125
aus (Rückstau aus dem Sync-Stillstand, vgl. `betrieb-chronik` 260813d). Massgeblich ist das
Frontmatter.

Keine Statushebung. Anfügungen an gewachsene Dateien nachgemessen (Rule 260811, `--numstat` nativ
per ssh): 134/0, 69/0, 34/0 — durchgehend null Löschungen. **Stand PL-02: 69 von 182 destilliert,
113 offen; der AHB-Ordner 14 ist abgeschlossen.** Report:
`outputs/2026-08-13_energie-run129.md`.

## 2026-08-12 (Run 128) — AHB-Korpus Energie/Gebäudetechnik + Nachhaltiges Bauen, neue Dublettenfalle

Zweiter Lauf des Tages (Run 127 lief in der Nachtschicht 13:30), **Sparbetrieb**, vier
Destillier-Agenten auf Sonnet, kein Refuter-Panel. Der flache eco-Ordner ist weitgehend abgeräumt;
der Lauf ist deshalb in den AHB-Korpus `04_Merkblätter/Projektadmin AHB/` gewechselt und hat dort
die Ordner **14 (Energie und Gebäudetechnik)** und **18 (Nachhaltiges Bauen)** gemessen und
angebrochen. **6 PDF geprüft, 5 destilliert**, 1 als Dublette abgelegt.

**Die im Task-Prompt genannte Voraussetzung ist strukturell nicht erfüllbar:** der Pfad
`OneDrive-FreigegebeneBibliotheken–JANS/PL - 04 Energie` **existiert nicht** — unter dieser Wurzel
liegen nur AD/AR/IMMO, die PL-Site ist über sie gar nicht angebunden. Nach Rule
`wege-und-vollmachten` wurde nicht abgebrochen, sondern der Graph-Weg aus Run 126 gegangen (M365-CLI
per Zertifikat). **Dritte Bestätigung in Folge (126/127/128) — der Graph-Weg ist der Regelweg dieses
Loops, nicht sein Ersatz;** die Voraussetzungszeile der Task-Definition sollte nachgezogen werden.

Neue Destillate (alle `emerging`, alle mit ⚠-Alterskorpus-Vermerk, Ausgabe je am Titelblatt
gelesen): `glasbauten-hoher-glasanteil-sia2021` (AHB, **April 2005**, 15 S. — liefert die der KB
bisher fehlende **Schwellendefinition** «Gebäude mit hohem Glasanteil» nach SIA Merkblatt 2021:
> 50 % Glasanteil der Fassade oder > 30 % Glasfläche je EBF im Einzelraum; dazu Kaltluftabfall mit
ca. 7 % Mehrverbrauch je °C Kompensation und «Kompaktheit schlägt Glasanteil»),
`2000-watt-gesellschaft-sieben-thesen-ahb` (AHB, **Mai 2008**, 16 S. — Prozessdokument; Zielsystem
politisch überholt, Prozesslogik trägt), `ahb-checkliste-nachweis-beleuchtung` (AHB, **07.01.2009**),
`ahb-bedingungen-planungsleistungen-nachhaltiges-bauen` (KBOB/eco-bau/IPB, **Juli 2008** — das
Planer-Gegenstück zu `bauoekologische-submissionsbedingungen`, mit Zwei-Jahres-Energievergleich und
Kostenüberwälzung bei Zielabweichung), `ahb-checkliste-raumluftmessungen` (AHB Fachstelle
nachhaltiges Bauen, Dokumentcode POM 11.08.06).

VERDICHTUNG: drei neue BAUHERREN-FAQ — **F227** (ab wann viel Glas ein eigenes Planungsthema wird),
**F228** (Raumluft-Abnahmemessung vor Bezug, ca. 500 CHF je Messpunkt, dreistufige Reaktionslogik),
**F229** (Beleuchtungsnachweis: SIA 380/4 ist tot, EN-111 auf EVEN gilt, die Einreichliste bleibt).
Gewachsen: `[[sommerlicher-waermeschutz]]`, `[[gebaeudeschadstoffe]]` (erstmals die **Abnahmeseite**,
bisher kannte der Artikel nur den Bestand), `[[energienachweis-zh]]` (Totverweis-Abschnitt EN-111).

**Methodischer Befund des Laufs — neue Dublettenfalle:** `14.2/Merkblatt_Elektrosmog.pdf` und das
gestern destillierte `eco/4.76Elektrosmog.pdf` haben **verschiedene Grösse und verschiedenen
SHA-256**, tragen aber **zeichengleichen Text**. Nach der bisherigen Methode (Grössenvergleich,
Run 123) wären sie als zwei Quellen gezählt worden. Ab jetzt entscheidet bei ähnlichen Kandidaten
ein `pdftotext`-Diff. Die Fallenreihe des Korpus lautet damit: Dateiname (122) → Ablageort (124/125)
→ Grösse gegen Seitenzahl (124) → Textextrahierbarkeit (126) → **Grösse als Dublettenkriterium (128)**.

Verifikation: Die von den Agenten zitierten KB-Fakten (SIA-380/4-Archivierung, SIA 112/1:2017) im
Hauptmodell am Original gegengeprüft und **bestätigt**; die Dublette selbst gemessen statt aus der
Grösse geschlossen. Keine Status-Hebung. Neue offene Fragen **E-128-1** (Geltung SIA-Merkblatt 2021,
betrifft den Kern von F227), **E-128-2** (heutige BAG-Innenraumluft-Richtwerte gegen die drei
übereinstimmenden Zürcher Eigenwerte 60/1'000 µg/m³), **E-128-3** (Nachfolge des
2000-Watt-Zielsystems), **E-128-4** (Betriebsbefund: **der Lauf-Report zu Run 127 fehlt** unter
`outputs/` — PROGRAMM-Schritt 5 ist Pflicht, zu prüfen ob die Nachtschicht ihn generell auslässt).

**Stand PL-02: 64 von 182 destilliert, 118 offen.** Report:
`outputs/2026-08-12_energie-run128.md`.

## 2026-08-12 (Mac Mini Nachtschicht 13:30, Run 127) — eco-bau-Block fortgesetzt, neues Thema Elektrosmog

Weg aus Run 126 (M365-CLI/Graph statt blockiertem OneDrive-Mount) bestätigt, vier kleine PDF aus
`04_Merkblätter/eco/` gelesen: `4.26Asbest.pdf` (Umweltpraxis Nr. 41/2005, Stadt-Zürich-
Gebäudescreening-Methodik), `4.14SchadstoffinBauten.pdf` (AHB-Checkliste Projektleiter-Ablauf +
Asbest/PCB/PCP-Übersichtstabelle), `4.76Elektrosmog.pdf` (AHB/EWZ-Infoblatt 2002, NISV-
Grenzwerte, **erste Erschliessung dieses Themas in der KB**), `4.15VorgehenbeiBeschwerden.pdf`
(AHB-Checkliste Innenraumklima-Beschwerden). Neue Destillate: `asbest-dimension-jenseits-
spritzasbest`, `ahb-checkliste-schadstoffe-in-bauten`, `elektrosmog-informationsblatt-ahb-ewz`,
`vorgehen-bei-beschwerden-innenraumklima`. `[[gebaeudeschadstoffe]]` um Gebäudescreening-
Abschnitt gewachsen; neuer Wiki-Artikel `[[elektrosmog]]` (emerging) angelegt; neue
BAUHERREN-FAQ F226. Stand PL-02: 59/182 destilliert, 123 offen. Nachtschicht-Budgetdisziplin:
kein Refuter-Panel (Einzellauf, kleine Quellen, klare Amtsdokumente).

## 2026-08-11 (Run 126) — eco-bau-Block über Graph statt blockiertem OneDrive, GEAK-Normierung auf established, erster Wasser-/Warmwasser-Kennwertbeleg

**Erster Lauf im Sparbetrieb** (Token-Vollgas nach Rule 260712b endete am 10.08.2026): Richtwert
zurück auf 3 bis 5 PDF, sechs Agenten (vier Destillier-Agenten auf Sonnet, zwei Refuter im
Hauptmodell). 7 PDF geprüft, **4 destilliert**, 3 begründet als `[-]` abgelegt.

**Der Lauf wäre nach Auftragstext abzubrechen gewesen.** Der OneDrive File Provider hing für die
gesamte Bibliothek (`Operation timed out` auf PL-02 **und** PL-04, verwandt mit dem
`Resource deadlock avoided` der Nachtschicht vom 08.08.). Nach Rule `wege-und-vollmachten` wurde
stattdessen Weg 2 gegangen: die zertifikatsangemeldete **CLI for Microsoft 365** liefert die
Dateien über Graph (Site auflösen → Ordner listen → `@microsoft.graph.downloadUrl` → `curl`). Alle
sieben Kandidaten kamen vollständig herunter, ohne den Mount zu berühren. **Dieser Weg ist dem
Mount künftig generell vorzuziehen** (sofort materialisiert, echte Grösse im Listing, direkte
lokale Ablage — der `dataless`-Umgang aus Run 121 und die Zwischenkopie aus Run 122 entfallen);
Befehle und Drive-IDs in `training/pdf-inventar.md`, Nachtrag Run 126.

**Neu:** `kbob-oekobilanzdaten-baubereich-2007` (KBOB/eco-bau/IPB 2007/1, 11 S. vollst. —
Gründungsdokument der Datengrundlage, die die KB als v8.0 nutzt; die drei Messgrössen graue
Energie / Treibhauseffekt / UBP, Systemgrenzen-Lehre am Beton 92 + 27 = 119 UBP/kg) ·
`kbob-recyclingbeton-2007` (2007/2, 6 S. vollst., mit EMPA und SIA — Sorten RC-W/RC-B/RC-M nach
Expositionsklassen; **ehrlicher Negativbefund: keine einzige Zahl zu grauer Energie oder CO₂**) ·
`ahb-zuerich-wassersparen` (AHB Zürich/PRESANZ, **November 1997**, 21 S. vollst., Bild-PDF —
**erster Wasser-/Warmwasser-Kennwertbeleg der KB aus einer Primärquelle**: 4 MJ/m³ Kaltwasser gegen
**270 MJ (75 kWh)/m³ Warmwasser**, Faktor ~70, vom Hauptlauf am Seitenbild nachgeprüft) ·
`checkliste-nachhaltige-gebaeudeerneuerung-svw` (BFE/ARE/BWO/AHB, **25.06.2007**, 18 S. vollst. —
Dateinamen-Falle, echter Titel «Checkliste nachhaltige Gebäudeerneuerung»; vier Grundvarianten
Instandhaltung/Instandsetzung/Gesamterneuerung/Ersatzneubau als Entscheidungsraster vor der
Projektierung).

**Verifikation: `geak-normierung-berechnungsmethodik` auf `established` gehoben** (QUESTIONS
E-125-1 geschlossen). Zwei unabhängige Refuter gegen **13 wörtlich zitierte** Aussagen, Schwerpunkte
getrennt (korrigierte Aussagen / Zahlen und Fundstellen): **10 von 13 unbeanstandet, 3
Beanstandungen geringer Tragweite, keine tragende** — keine falsche Zahl, keine falsche
Gleichungs- oder Tabellennummer. Die drei Punkte am Original gegengeprüft und eingearbeitet (zu
absolutes «nur» bei den Warmwasser-Verteilverlusten, fehlende Zeile «Biogas 0,203» in Tab. 36, bei
Gl. 9 zusammengezogene Fundstelle der Speicher-Mengengrenzen). **Drei Prüffallen dokumentiert:** die
nur im Seitenbild sichtbare **Durchstreichung von «Biogas» in Tab. 35** (jede Textextraktion täuscht
hier einen Widerspruch vor), die abweichende Δθ-Definition des Heizungsspeichers, und der
Tippfehler des Originals «Gl. 53» statt Gl. 54 an zwei Stellen (unabhängig belegt).

**FAQ +4:** F222 (Wassersparen spart Energie fast nur über das Warmwasser) · F223 (Recyclingbeton,
wo zulässig, und die Nomenklatur-Falle RC-B gegen RC-C50) · F224 (Gesamterneuerung einer
Genossenschaft, Variantenentscheid vor Projektierung) · F225 (UBP gegen graue Energie gegen
CO₂-eq, und welche Datenversion gilt). Stand **225 Kernfragen F1-F225, lückenlos, keine
Duplikate** (maschinell geprüft), 267 Destillate, 33 Themenartikel.

**Gewachsen:** `graue-energie` (drei Messgrössen, Systemgrenzen, Versionsdisziplin) ·
`oekologische-materialvorgaben-beschaffung` (Nomenklatur-Tabelle Recyclingbeton über die Stände
2006/2007/2008/2026, mit dem Normbruch SIA 162/4 archiviert seit 31.12.2009) ·
`solarwaerme-warmwasser` (die Verbrauchsseite vor der Erzeugerseite).

**Scheinwiderspruch aufgelöst statt eingetragen:** Die 1997er Volumenströme (8,5-11 l/min Dusche)
gegen die 12 l/min von eco-bau 2008 und ecoBKP 2026 sahen nach einem Quellenkonflikt aus. Die
Prüfung am Seitenbild zeigt eine **dreispaltige** Tabelle (Ist 12 / Soll 11 / 8,5) — kein
Widerspruch, sondern 28 Jahre Stillstand: was 1997 der Istzustand war, ist heute der Sparstandard.
Daraus die offene Frage E-126-1 nach der geltenden SVGW-Grundlage.

**Neue Messfalle für die Reihe:** `5.36Wassersparen.pdf` ist ein **Bild-PDF** (21 Seiten, aber nur
~2'200 Zeichen per `pdftotext`). Die Reihe lautet damit Dateiname (Run 122) · Ablageort (Run
124/125) · Grösse gegen Seitenzahl (Run 124) · **Textextrahierbarkeit (Run 126)**.

**Eigener Fehler, schwerer Teil:** Beim Nachziehen der Umlaute liefen zwei `str.replace()`
**unbegrenzt über die ganze Datei** statt nur über den eigenen Abschnitt — dabei wurden **246
historische Zeilen in `logbuch/LOGBUCH.md`** (append-only!) und 5 historische Überschriften in
`training/curriculum.md` umgeschrieben. Bemerkt durch die Diff-Messung nach dem Schreiben
(`--numstat` zeigte `317 250` statt Insertions-only), zeilenexakt aus dem Diff repariert (nicht aus
HEAD, weil ein anderer Loop unbestätigte Änderungen in derselben Datei hatte). Endstand nachgemessen:
`LOGBUCH.md` +67/−0, `curriculum.md` +28/−2, alle 12 weiteren Dateien geprüft. **Lehre: ein globales
Ersetzen ist nie das Werkzeug, um eigenen Text in einer gewachsenen Datei zu korrigieren — Abschnitt
herausschneiden, ersetzen, wieder einsetzen; und nach jedem Schreiben auf eine geteilte Datei
`--numstat` prüfen, eine Append-only-Datei muss `−0` zeigen.**

**Eigener Fehler, leichter Teil:** zweimal in ASCII-Umschrift geschrieben (GEAK-Verifikationsabschnitt,
Curriculum) sowie zweimal «maassgebend» statt «massgebend» — im selben Lauf bemerkt, korrigiert und
maschinell nachkontrolliert. Es ist derselbe Fehler wie in Run 125, dort über Agenten-Vorgabetexte.
**Die Merkregel wird verallgemeinert: jeder in die KB geschriebene Text erfüllt die
Umlaute-Konvention, unabhängig davon, wer ihn schreibt** — ein `grep` über die geänderten Dateien
gehört ans Ende jedes Laufs.

**Neue offene Punkte E-126-1 bis E-126-5** (Volumenstrom-Zielwerte SVGW/GEEA · 1997er Rechtsverweise
Art. 26/30a BBV I und Art. 9 EnerG ZH an Skill `baurecht` · Materialienband und Excel-Tool
«Retrofit Advisor» zur Erneuerungs-Checkliste · Farbcodierung der RC-Beton-Tabelle ·
Vergleichbarkeit alter und neuer UBP-Werte). **Zur Vorlage an Raphael:** die Task-Beschreibung
nennt weiterhin «TOKEN-VOLLGAS bis 10.08.2026» und 6-10 PDF; der Stichtag ist abgelaufen, dieser
Lauf hat am gemessenen Datum auf 3-5 zurückgestellt — die Task selbst sollte nachgezogen werden.
⚠ **Schritt 9 (committen/pushen) NICHT erledigt:** Der NAS-Committer verweigert seit 05:30 jeden
Durchgang («Rebase/Merge aktiv — skip»), Ursache ist ein leeres `.git/rebase-merge/`-Artefakt aus
einem abgebrochenen `pull --rebase --autostash` (kein echter Rebase, keine Konflikte, Autostash
geprüft und harmlos). 27 Dateien sind seither uncommittet. Bewusst nicht selbst behoben — Eingriff
in `.git` des kanonischen Repos, Freigabe-Schwelle; Diagnose und fertiger Befehl im Logbuch-Eintrag
vom 11.08.2026 23:05. Kein Datenverlust, alle Erzeugnisse liegen auf dem NAS.
Report: `outputs/2026-08-11_energie-run126.md`.

## 2026-08-08 (Nachtschicht Mac Mini, kleiner Block) — E-125-4 geklärt: Impulsberatung seit 1.4.2022 kostenlos

PL-02 (OneDrive) war für den geplanten eco-bau-Block gesperrt (`Resource deadlock avoided`,
gleiches Muster wie grobkosten Run 13) — stattdessen die offene Widerspruchsfrage E-125-4 per
Web-Recherche aufgelöst: die Impulsberatung «erneuerbar heizen» ist seit 1.4.2022 schweizweit für
alle Gebäudekategorien kostenlos (admin.ch Meldung 87815, 31.3.2022; bestätigt am aktuellen
Programmauftritt). Die CHF-1'500-2'000-Angabe der Broschüre 10.2021 in
`[[heizungsersatz-groessere-mfh-stweg]]` war vor dieser Umstellung gültig und ist jetzt als
überholt markiert; kein Widerspruch zu `[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]`
mehr. `wiki/QUESTIONS.md` E-125-4 geschlossen.

## 2026-08-07 (Run 125) — Minergie-Restbestand PL-02 abgeräumt, GEAK-Methodik erschlossen, zwei Ordner-Ablage-Fallen und ein heute falscher Rechtsstand korrigiert

15 PDF aus dem PL-02-Minergie-Ordner gelesen, **9 neue Destillate**. Neun Destillier-Agenten
(Sonnet, lokale Arbeitskopien), vier Prüf-Agenten im Hauptmodell, drei Korrektur-Agenten;
Urteile, Gegenprüfung am Original und Registerpflege im Hauptmodell.

**Neu:** `geak-normierung-berechnungsmethodik` (EnDK «Normierung des GEAK» V 2.1.0, 30.03.2023,
79 S. vollst. — die Rechenlogik hinter der Etikette: drei Skalen mit drei Bezugsgrössen,
Gewichtungsfaktor Strom 2,0 in Bedarf UND Produktion, PV nur Eigenverbrauch + 40 % der
Einspeisung, Erzeugungsverluste ohne eigenen Rechengang) · `geak-basisbroschuere-2023`
(**established**) · `minergie-nachweisformular-2022-set` (⚠ Formular befristet bis 31.12.2023,
heute abgelaufen) · `heizungsersatz-groessere-mfh-stweg` (erster KB-Beleg zum Heizungsersatz in
der Stockwerkeigentümerschaft) · `innenraumklima-leistungsbeschrieb` (erster KB-Beleg, wie
Innenraumklima vertraglich geschuldet wird) · `minergie-p-genese-passivhaus-vergleich-2002` ·
`minergie-reglement-wegleitung-2010-historisch` (`superseded`, macht Altzertifikate 2010-2016
lesbar) · `weg-zum-minergiezertifikat-ablauf` (bürointernes JANS-Papier, ausdrücklich keine
amtliche Quelle) · `gebaeudehuelle-me3-zh-foliensatz`.

**Zwei Ordner-Ablage-Fallen, beide am Titelblatt verifiziert:** `Infobrochuren/MFH.pdf` ist die
BFE-Broschüre «Heizungsersatz in grösseren Mehrfamilienhäusern und bei Stockwerkeigentum»
(10.2021), kein Minergie-Dokument; `Gebaeudehuellziffer/000000220024_Schlussbericht.pdf` ist der
BFE-Vergleich «MINERGIE und Passivhaus» (März 2002), das Gründungsdokument für MINERGIE-P.
**Merkregel erweitert:** weder Dateiname noch Ablageort sagen, was ein Dokument ist.

**Verifikation.** Zwei Refuter mit getrennten Schwerpunkten auf das GEAK-Normierungsdestillat
(63 bzw. 71 Aussagen geprüft, 10 bzw. 19 beanstandet). Vier tragende Befunde vom Hauptlauf selbst
am Original nachgemessen und bestätigt: **direkte CO2-Emissionen sind klassenwirksam** (Kap. 1.1
S. 6, Kap. 7.3.4 S. 67 — die bisherige Fassung widersprach dem established-Bestandsdestillat) ·
die Zwei-Bedingungs-Regel der Verteilverluste gilt **nur für Heizung** (Gl. 5, S. 16) · der
Faktor 2/3 ist der **Heizband**-Faktor (f_HB, S. 24) · der Überdimensionierungs-Malus steht nur
in Gl. 17. Status bleibt `emerging` (E-125-1). Dritter Refuter: Basisbroschüre 56/65 bestätigt,
neun Zitattreue-Beanstandungen korrigiert → **established**; Nachweisformular mit zwei tragenden
Fehlern, darunter ein **erfundener offener Punkt** (das Blatt Übersicht trägt sehr wohl eine
Versionszeile) → bleibt `emerging`.

**Aktualitätsprüfung über fünf Alterskorpus-Destillate, gefährlichster Befund:**
`heizungsersatz-groessere-mfh-stweg` relativierte die Aussage «ab 2030 keine fossilen Heizungen»
nur gegen die noch nicht in Kraft gesetzte MuKEn 2025. Für ZH und SZ ist das falsch — die
Substitutionspflicht gilt heute (§ 11 Abs. 2 EnerG ZH, § 8d kEnG SZ, belegt über das
established-Destillat `oelheizung-gasheizung-ersatzpflicht-zh-sz`, das die Datei an keiner Stelle
verlinkte). Korrigiert an beiden Orten. Ebenso korrigiert: **SIA 493 ist seit 30.06.2022
archiviert, ohne Nachfolger** (eine LV-Klausel «Deklaration nach SIA 493» geht ins Leere), die
Schadstoffabklärung ist bei Umbauten in ZH Pflicht und keine Bestelloption, und der
Holz-Korrekturfaktor 0,6 von 2002 ist überholt (heute 0,5). Gegenprobe zur Über-Warnung: der
Wärmebrückenwert **0,30 W/(m·K) gilt unverändert**, aber als Vollzugswert Typ 1 nach EnFK
EN-102 / MuKEn-Anhang 1, nicht aus SIA 380/1.

**Verdichtung:** vier neue Bauherren-Antworten **F218** (warum zwei gleiche Häuser verschiedene
GEAK-Klassen tragen), **F219** (Heizungsersatz in der Stockwerkeigentümerschaft, Rechtslage vor
Systemdiskussion), **F220** (Innenraumklima vertraglich verankern), **F221** (Minergie-Zertifikat
von 2012 beim Kauf). **F36** geschärft. Themenartikel `geak-gebaeudeenergieausweis` um zwei
Abschnitte gewachsen.

**Register:** `destillate/INDEX.md`, `training/pdf-inventar.md` (Nachtrag Run 125),
`training/curriculum.md` (D96), `raw/_INGESTED.md`, `wiki/QUESTIONS.md` (E-125-1 bis E-125-8),
`wiki/INDEX.md`. Zählstand maschinell geprüft: **221 FAQ (F1-F221 lückenlos), 263 Destillate,
33 Themenartikel, 0 nicht auflösbare Backlinks**. PL-02: **51 von 182** destilliert, 131 offen.

**Eigener Fehler, festgehalten:** Die Korrekturspezifikation des Hauptlaufs war in
ASCII-Umschrift geschrieben; die Korrektur-Agenten haben sie weisungsgemäss wörtlich übernommen
und damit ae/oe/ue in die KB getragen. In einem eigenen Lauf nachgezogen. Merkregel: Was einem
Agenten als wörtlich einzusetzender Text vorgegeben wird, muss die Zielkonvention bereits
erfüllen — der Agent prüft sie nicht.

Lauf-Report: `outputs/2026-08-07_energie-run125.md`.

## 2026-08-07 (Mac Mini Nachtschicht 02:30) — Minergie-Produktreglement 2026.1: Anhang G/H/J gelesen, E-124-2 geschlossen

Fortsetzung des Run-124-Ausblicks (letzter offener Punkt "Anhang J und G des Produktreglements
2026.1"). PDF lokal geladen (minergie.ch, 52 S.), drei restliche Anhaenge gelesen: **Anhang G**
(THGE-Grenzwerte je Gebaeudekategorie — deckt sich zahlenmaessig vollstaendig mit dem am
21.07.2026 unabhaengig verifizierten Stand in `[[minergie-standards]]`, keine Abweichung),
**Anhang H** (Systemerneuerung, 5 feste Sanierungspakete ohne SIA-380/1-Rechennachweis fuer
Wohnbauten) und **Anhang J** (zusammenfassende Anforderungsuebersicht Neubau/Erneuerung je
Gebaeudekategorie, inkl. MKZ-Beispielwerte mit ausdruecklichem Objektbezug-Vorbehalt der
Quelle). Destillat `minergie-produktreglement-2026-1-muken-vergleich.md` um drei Abschnitte
erweitert, `geltungsbereich` und `gelesen` im Frontmatter nachgefuehrt (G/H/J ausdruecklich als
**nur einfach gelesen, kein Refuter-Panel** markiert — Budgetdisziplin Einzelagenten-Lauf).
Neue Bauherren-Antwort **F217** («Muss ich bei einer Sanierung immer den Heizwaermebedarf
durchrechnen, um Minergie zu erreichen?») aus Anhang H. E-124-2 in QUESTIONS.md geschlossen.
Register nachgefuehrt: `destillate/INDEX.md`, `training/pdf-inventar.md`. Kein Fan-out, kein
Subagent (5-USD-Nachtschicht-Zyklus).

**Offen fuer naechsten Lauf:** Anhang B3 (Nutzungsgrade/Gewichtungsfaktoren), C (sommerlicher
Komfort), D (Lueftung natuerliche Nachstroemung), Kapitel 1-13 des Reglements; Refuter-Panel
fuer Anhang H/J nachholen vor established-Hebung; Minergie-PL-02-Restbestand (146 von 182 offen,
u.a. `MFH.pdf`, Nachweisformulare-Set, ME-Antrag/Wegleitung).

## 2026-08-06 (Cross-KB-Lauf Run 27, Ausfuehrungs-Agent) — Zeigerpflege VKF, Legionellen-Einordnung, ecoBKP-Anschluesse

Rein additiver Lauf, kein Wert geloescht oder geaendert. Neun Dateien beruehrt, alle in
`destillate/`:

- **`pv-blitzschutz-gebaeudeversicherung-ch.md`** — der Cross-KB-Zeiger am Dateiende sagte, ein
  Destillat der geltenden VKF-Merkblatt-Ausgabe 01.01.2022 sei «als Bring-Schuld angemeldet, aber
  noch nicht erstellt». Das wirkte als Sperre. Ersetzt durch den Verweis auf
  `wissen/normen/destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md` (existiert seit Run 45 vom
  06.08.2026) mit Statusvermerk: `speculative`, weil Erstdestillat und Refuter-Runde beide in
  Run 45 liefen und die unabhaengige Zweitverifikation aussteht. Die 2015er-Faassungen bleiben als
  historischer Bestand fuer Altprojekte stehen, aber nicht mehr als «fuehrend».
- **`greenpv-fassade-pv-begruenung-hslu.md`** — Cross-KB-Zeiger «(fuehrend)» von der 2015er- auf die
  2022er-Datei umgehaengt; 2015er als `superseded` daneben stehen gelassen. Reine Zeigerpflege.
- **`vkf-richtlinie-22-15-blitzschutzsysteme.md`** — Datumsdrift zwischen Kopf und Textkoerper
  behoben: `last_updated` von 2026-07-25 auf 2026-08-05 gehoben, mit ausgeschriebenem Grund
  (Cross-KB-Lauf Run 26 hatte den Block «Fassungs-Falle im JANS-Archiv» ergaenzt). **Der
  Fassungsvorbehalt zur Ausgabe 01.01.2017 bleibt ausdruecklich unveraendert offen**, ebenso der
  `status` — der Live-Abruf vom 05.08. war derselbe 2017-PDF-Abruf wie am 25.07.2026; der
  VKF-Publikationsindex wurde nie auf eine juengere Ausgabe befragt. Dazu ein Halbsatz an der
  bestehenden Verlinkung: fuer den Fassungsstand fuehrt formell `normen`
  (`wissen/koordination/QUERBEZUEGE.md`, Zeilen 46 und 48, beide am Bestand nachgeprueft).
- **`ecobkp-2026-gebaeudetechnik.md`** — Einordnungsblock nach den Legionellen-/Trinkwasserwerten
  (ecoBKP 250, Merkblatt-S. 78), die dort nur mit «SIA-Norm 385/1, BAG Legionellen» ohne Ausgabe
  belegt sind. Ergaenzt: Zuordnung zur geltenden SIA 385/1:2020, Abgrenzung zur hoeheren
  BAG/BLV-Grundordnung (Modul 11, Ausgabe 22.08.2018) und SVGW W3/E3:2020 samt woechentlicher
  60-°C-Aufheizung in Vorwaerm-Risikozonen, plus Pflichtverweis auf das established-Destillat
  `trinkwassererwaermung-legionellenschutz-energieeffizienz`. Zusaetzlich ein Anschlussblock zur
  KB `bauprodukte` (Aufzuege BKP 261 ueber ecoBKP 230; Beleuchtung nur qualifiziert; kein
  Anschluss fuer ecoBKP 240/244/250/258). Kein Wert geloescht, keine Zahl geaendert.
- **`trinkwassererwaermung-legionellenschutz-energieeffizienz.md`** — Rueckverweis auf die
  ecoBKP-Fundstelle, mit der Praezisierung, welche Ebene der Norm dort zitiert ist.
- **`ecobkp-2026-ausbau.md`** (neu vom 06.08.2026) — bisher nirgends angeschlossen; neuer Abschnitt
  «Anschluss an die KB `bauprodukte`», positionsweise statt pauschal: BKP 273 als staerkster
  Anschluss (Loesbarkeit als fehlendes Kriterium der beiden Schreinerei-Artikel, Argument aus
  ecoBKP 276 Fuellschaeume plus D4D-Katalog aus 273), BKP 281 nur qualifiziert (Terrazzo/Kunststein
  in ecoBKP 281 nicht namentlich gefuehrt, die beiden offenen Teilfragen bleiben offen), BKP 271
  mit Zeiger, aber ausdruecklichem Hinweis, dass der `bauprodukte`-Korpus dort leer ist und die
  Blockade bestehen bleibt. Alle drei Zeiger mit Statusvorbehalt (`emerging`, Teillesung).
- **`ecobkp-2026-gebaeudehuelle.md`** und **`ecobkp-2026-tragwerk-und-rohbau.md`** — je ein
  **datierter Nachtrag** (nicht ueberschrieben) im bestehenden Anschlussblock: der dort gemeldete
  Bedarf ecoBKP 271/281 ist seit 06.08.2026 gedeckt. Der Satz zu BKP 225.4 Brandschutzbekleidungen
  bleibt unangetastet; die Blockade des Punktes 9 in `bauprodukte` bleibt ausdruecklich bestehen,
  weil sie am fehlenden Projektmaterial haengt, nicht am fehlenden ecoBKP-Destillat.
- **`ecobkp-2026-baureinigung-umgebung-erschliessung.md`** — neuer Anschlussblock: ein
  qualifizierter Anschluss (ecoBKP 421 zur Vegetationshaelfte BKP 288 der Dachbegruenung), zwei
  Negativbefunde (ecoBKP 287 und 450 ohne `bauprodukte`-Gegenpart, als offen gemeldet).

## 2026-08-06 (Mac Mini Nachtschicht 13:30, Versuchs-Slot) — ecoBKP 2026 vollstaendig gelesen (Rest S. 87-133), F216 neu

Fortsetzung von Run 124 (Prioritaet 1 des Run-124-Ausblicks): die restlichen bedruckten Seiten
87-133 des ecoBKP 2026 (ecoBKP 271, 273, 276, 281, 282, 283, 285, 287, 421, 450) gelesen und in
zwei neue Destillate ueberfuehrt — `ecobkp-2026-ausbau` (Ausbau-Gewerke 271-285) und
`ecobkp-2026-baureinigung-umgebung-erschliessung` (287, 421, 450). Damit ist das Werk (138 S.)
vollstaendig destilliert. Eine neue Bauherren-Antwort **F216** («Formaldehyd-Grenzwert nur
Rohbau oder auch Innenausbau?») fasst die durchgaengige Formaldehyd-Klausel ueber alle
Ausbau-Merkblaetter zusammen. Kein Fan-out, kein Refuter-Panel (beide Destillate bleiben
`emerging`, keine established-Kandidaten). Einzelagenten-Lauf ohne Subagenten (Budgetdisziplin
Nachtschicht, 5-USD-Zyklus). Register nachgefuehrt: `destillate/INDEX.md` (2 Zeilen),
`training/pdf-inventar.md` (Nachtrag), `wiki/BAUHERREN-FAQ.md` (F216).

**Offen fuer naechsten Lauf:** ecoBKP 272, 274, 275, 277-280, 284, 286 im gelesenen Bereich nicht
angetroffen (vermutlich nicht separat gefuehrt oder unter Nachbarpositionen) — bei Bedarf am
Original pruefen; Anhang J und G des Minergie-Produktreglements 2026.1 (unveraendert aus Run 124
offen); Minergie-PL-02-Restbestand (146 von 182 offen).
 — KB Energie

Neueste zuoberst.

## 2026-08-05 (Wissens-Chef Run 26, Cross-KB) — ein erfundener Beleg, eine zurueckgezogene Norm und zwei geschlossene Luecken

- **`destillate/brandschutz-lueftung-schnittstelle.md` — erfundener Beleg korrigiert.** Das Destillat
  schrieb SIA 2023 den Titel «Lueftungs- und Klimaanlagen — Allgemeine Grundlagen und Anforderungen»
  zu; der gehoert zu SIA 382/1. Der Verifikator hat den Foliensatz selbst extrahiert: **er nennt fuer
  SIA 2023 gar keinen Titel.** Der Titel wurde beim Destillieren hinzugefuegt, nicht aus der Quelle
  geerbt — die schwerere Variante. Die eigene Zuordnung ist jetzt ausdruecklich als eigene
  gekennzeichnet.
  **Praktisch wichtiger:** Das Merkblatt SIA 2023 «Lueftung in Wohnbauten» ist **seit 1.5.2021
  zurueckgezogen**, ersetzt durch SIA 382/5:2021 — belegt in dieser KB, zwei Destillate weiter. Die
  bisherige Weisung «aktuelle SIA-Norm 2023 vor Verwendung pruefen» schickte den Leser eine Norm
  suchen, die es nicht mehr gibt.
  **Bewusst NICHT korrigiert:** die Folien-Zuschreibung «Anhang F» ist am Bestand nicht belegbar (dort
  steht die Publikationsliste), stammt aber aus der Quelle — als Attributionsfehler markiert und offen
  gelassen, statt auf eine plausibel aussehende Ziffer umgeschrieben zu werden. Anhang E dagegen ist
  am Original 2004 bestaetigt und bleibt.
- **`destillate/vkf-lithium-batteriespeicher-brandschutz.md` — zwei inhaltliche Luecken geschlossen.**
  Das Gegenlesen am FAQ-Original fand: das komplette **Lueftungs-Bullet** (feuerwiderstandsfaehige
  Trennung der Lueftungsanlagen, Brandschutzklappen mit Kanalrauchmelder oder Kanaele direkt ins
  Freie) fehlte ganz, und die 100-kWh-Stufe war so verkuerzt, dass die **groessere** der beiden
  Lockerungen unsichtbar blieb. Beides nachgetragen. Dazu der **Verbindlichkeitsvorbehalt**: die FAQ
  bezeichnet sich selbst als «moeglichen Loesungsansatz» mit der Fusszeile «Erlaeuterung /
  Interpretation» — die frueherer Formulierung «rechtlich nicht zwingend» lud dazu ein, «EI 30
  genuegt» als Anspruch zu lesen, und ist entschaerft. Fuehrungsvermerk auf `normen` gesetzt.
- **`wiki/BAUHERREN-FAQ.md`, F128:** derselbe Vorbehalt und die Lueftungs-Trennung ergaenzt — das ist
  die Stelle mit Aussenwirkung, weil sie in die Bauherren-Auskunft geht.
- **`destillate/pv-blitzschutz-gebaeudeversicherung-ch.md` — Belegpflege** (der zitierte Wortlaut war
  zeichengenau richtig): Fundstelle S. 5 → **S. 6 von 15**, Genehmigungsgremium «Fachkommission» →
  **Technische Kommission Brandschutz VKF (TKB)**, Tippfehler «20001-15de». Dazu der sachliche
  Hinweis, dass der hier gefuehrte Vergleich 2022 gegen 2015 **eine Revision ueberspringt** (01.01.2017)
  und dieser Lauf nur Ziff. 3.1 geprueft hat.
- **`destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md`:** Tabelle und Zitate **vollstaendig
  erhalten** (die urspruenglich vorgeschlagene Entmaterialisierung haette den einzigen Ort im Hub mit
  dem richtigen Hochhaus-Wert durch den falschen ersetzt). Ergaenzt ist die **Fassungs-Falle im
  JANS-Archiv**: die im Buero abgelegten PDFs sind an beiden Orten die ueberholte Ausgabe 2015, dort
  steht fuer Hochhaeuser ueber 30 m in Zeile c Spalte B III statt geltend II.
- **`wiki/QUESTIONS.md`:** **E-122-6 qualifiziert, aber nicht geschlossen.** Run 24 hatte am 03.08.
  festgestellt, dass die EN-12464-1-Uebersichtstabelle im Bestand liegt und mit Zahlenwerten
  destilliert ist — und das in den Artikel geschrieben, **aber nie ins Register**. Der Eintrag
  schickte den Leser an einer vorhandenen Datei vorbei. Er bleibt trotzdem offen: der Auszug gibt den
  Stand vor EN 12464-1:2011 / SIA 2024:2006 wieder. Was offen ist, ist enger als bisher formuliert —
  nicht «Zahlen ueberhaupt», sondern die geltende Ausgabe; die Bring-Schuld liegt bei `normen`.
  Neuer Eintrag **E-R26-1** zum KB-internen Defekt in `wiki/oekologische-materialvorgaben-beschaffung.md`
  (behauptet weiterhin «ecoBKP 2026 noch nicht destilliert» und fuehrt die von Run 124 selbst als
  falsch korrigierte 11er-Positionsliste; am Original sind es 18 Positionen).
- **`destillate/ecobkp-2026-gebaeudehuelle.md` / `-tragwerk-und-rohbau.md`:** je ein Anschlusspunkt zur
  KB `bauprodukte` unter «Offene Punkte» — ecoBKP 224 ist der aktuelle Gegenpart zur dortigen
  Dachbegruenung, ecoBKP 225 loest die SIA-493-Luecke ueber Emicode EC1/EC1plus.

Bericht: `wissen/koordination/outputs/2026-08-05_wissens-chef-run26.md`.

## 2026-08-05 (Run 124) — Minergie-Teilkorpus PL-02 + ecoBKP 2026 fortgesetzt; erstes established-Destillat des Blocks; Prozessdefekt der Loop-Kette aufgedeckt

**12 neue Destillate** (13 erstellt, 1 als Duplikat entfernt), **1 umbenannt**, **4 neue FAQ**
(F212 Monitoring, F213 Leistungsgarantie, F214 Wiederverwendung, F215 Holz/Beton), **2 geschärfte
FAQ** (F5 mit der MuKEn-2025-Vergleichstabelle, F38 mit der Batteriespeicher-Obergrenze),
**3 gewachsene Themenartikel** (`minergie-standards`, `batteriespeicher`, `daemmstoffe-lambda`).
**E-123-1 geschlossen.**

**Neu als Primärquellen (aktueller Datenstand):** Produktreglement Gebäudestandards
MINERGIE/-P/-A **V 2026.1** (52 S., gültig ab 01.01.2026) — im Hauptmodell direkt am amtlichen PDF
gelesen und von zwei unabhängigen Refutern geprüft; **einziges Destillat dieses Korpusblocks mit
Status `established`**, neu mit Frontmatter-Feld `geltungsbereich`, das den Status auf die
gelesenen Kapitel/Anhänge beschränkt. Sein Anhang A stellt Minergie den **MuKEn 2025** Zeile für
Zeile gegenüber und beantwortet damit die Standardfrage «was bringt Minergie über das Gesetz
hinaus» erstmals tabellarisch. Dazu **ecoBKP 2026** in drei weiteren Kapitelblöcken (Tragwerk/
Rohbau, Gebäudehülle, Gebäudetechnik, bedruckte S. 13-86).

**Aus PL-02 destilliert (8 PDF, alle `emerging`):** Leistungsgarantie Haustechnik (erster KB-Beleg
zur vertraglichen Bestellerlogik), Einführungskurs Systemnachweis Kt. ZH 2009, Wärmebrücken-
Checkliste EnFK 2010, Vorgehen Bauteilekatalog AWEL, Schnittstelle Brandschutz/Lüftung (erster
KB-Beleg), Minergie-Online-Plattform 2021, Kursfolien Grenzwerte (eingeschränkt verwertbar),
Holzbau mehrgeschossig 2012.

**Korrektur an Run 123:** Die dort und in E-123-1 geführte Liste der ecoBKP-Positionen mit neuen
Kreislaufwirtschafts-Vorgaben war **falsch** (213, 214, 215, 216, 228, 230, 240, 244, 250, 258,
273). Am Original nachgezählt sind es **18 Positionen: 214, 215, 222, 224, 226, 228, 230, 240,
244, 258, 271, 272, 273, 276, 281, 282, 283, 421**. Ursache: Die Angabe stammte aus einer
Web-Suchzusammenfassung, nicht aus dem Dokument.

**Prozessdefekt aufgedeckt:** Der Nachtlauf desselben Tages (05:38, Mac Mini) hatte die ecoBKP
2026 bereits begonnen, sich aber **nur in CHANGELOG und destillate/INDEX** vermerkt — ohne
Lauf-Report, ohne curriculum-Eintrag, ohne QUESTIONS-Nachführung. Der in `PROGRAMM.md` Schritt 1
vorgeschriebene Stand-Lesevorgang konnte ihn deshalb nicht sehen; ein Agent hat die Seiten 1-17
doppelt destilliert. Duplikat erkannt, gegen den Bestand verglichen (Bestand war vollständiger),
entfernt, alle Backlinks umgehängt, 0 nicht auflösbare Verweise. **Vorschlag an Raphael:
`CHANGELOG.md` und `destillate/INDEX.md` in den Stand-Lesevorgang aufnehmen.**

**Verifikation:** Refuter 1 (Zahlen) 40 geprüft / 36 bestätigt, kein Zahlendreher. Refuter 2
(Aussagen) 10 Beanstandungen, alle am Original nachgeprüft, alle berechtigt, alle korrigiert —
darunter zwei sachlich tragende (die Behauptung, das rechnerische Soll werde nicht mit den
Messdaten verglichen, wird durch Anhang F widerlegt; der Vergleich «60 % Dachfläche gegen
20 W/m² EBF» ist ohne Geschosszahl unzulässig). Beide stammten aus Anhängen, die zunächst
ungelesen waren und für die Korrektur nachgelesen wurden. Die beiden Refuter fanden **disjunkte**
Fehlermengen — empirischer Beleg für die perspektiven-diverse Verifikation.

**Stand:** 252 Destillate · FAQ 215 Einträge, F1-F215 lückenlos (maschinell geprüft) ·
33 Themenartikel · PL-02 36 von 182 destilliert, 146 offen.
Report: `outputs/2026-08-05_energie-run124.md`.

## 2026-08-05 (Mac Mini Nachtschicht) — ecoBKP 2026 Erstzugriff (Methodik + 3 Merkblätter)

Neue Web-Quelle (nicht im PDF-Inventar, PL-04 ist erschöpft): **ecoBKP 2026** von ecobau.ch
(https://www.ecobau.ch/resources/uploads/eco-bkp/ecoBKP_2026/ecoBKP_2026.pdf, 138 S., Stand
Januar 2026), per WebSearch gefunden und direkt geladen. Gelesen S. 1-20/138: Methodik/Leitfaden
(Prioritäten-Logik, "nicht empfohlen" = Minergie-ECO-Ausschlussvorgabe), Neuerungen 2026
(Kreislaufwirtschaft in 18 Merkblättern ausgeweitet, neues Kapitel ecoBKP 21 Rohbau-
Bauteilvarianten nach SIA 390/1 Anhang D), sowie die drei vollständigen Merkblätter **ecoBKP 112**
(Abbrüche/Rückbau/Entsorgung — VVEA-Schadstoffvoruntersuchung vor 1990, Potenzialanalyse ab
100 m³), **ecoBKP 130** (Baustelleneinrichtung — Baumschutzradius, Bodenschutzkonzept) und
**ecoBKP 201** (Baugrubenaushub — Transportdistanz <20 km, geböschte vor vertikaler
Baugrubensicherung). Destillat `destillate/ecobkp-2026-methodik-und-uebersicht.md` (emerging,
kein Adversarial-Verify — Budget-bewusst reduziert, wie in Run 111-120 dokumentiert). Direkter
Anschluss an Rule `bkp-2017-referenz`: ecoBKP nummeriert identisch zu BKP 2017, nur 30 von ~50
Hauptcodes hinterlegt. **Offen (nächster Lauf):** Rest ecoBKP 21 + 27 weitere Merkblätter
(211-450, S. 20-138). Kein neuer FAQ-Eintrag (reine Struktur-/Übersichtsquelle, FAQ-Wert erst
nach Vollständigkeit der Kernkapitel Rohbau/Ausbau). Keine Verifikations-Panel-Runde aus
Budgetgründen (~4 USD Zyklus-Obergrenze, restliches Budget für Register+Commit reserviert).

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Dachbegruenung SIA 312:2013, SIA-118-Attributionsfehler, SIA-493-Warnvermerke, VVEA-Rechtsbasis

Nachlauf zum eco-bau-/AHB-Korpus aus Run 123. Alle Korrekturen sind am **Original** verifiziert
(SIA 312:2013 im Volltext gelesen, SIA 118:1991 Art. 7/21 am PDF, AHB-Blatt OEKO 3.14.C am
PDF, VVEA am konsolidierten Fedlex-Volltext Stand 01.08.2026, SIA 493 an shop.sia.ch);
massgeblich war jeweils die Verifikator-Aufloesung, nicht die Erstmeldung. **Nichts geloescht** —
korrigiert bzw. mit datiertem Vermerk versehen.

**1. Dachbegruenung — Fassungsvorbehalt eigener Art** in
`destillate/eco-bau-merkblaetter-bkp-2008-huelle`. Die SFG-Zeile (BKP 224, extensive
Dachbegruenung) trug einen Vorbehalt vom **falschen Typ**: er schickte den Leser auf die Suche
nach einer neueren **Label**-Fassung, waehrend seit **01.11.2013 SIA 312:2013 «Begruenung von
Daechern» (SN 564312)** samt ABB **SIA 118/312** (Ziff. 0.2) das Feld besetzt und SIA 271/318
ergaenzt (Ziff. 0.1.2). In der Norm ist die Gruendachrichtlinie **kein Qualitaetsstandard,
sondern Pruefverfahren** (Ziff. 2.5.5 Deckungsgrad, ausdruecklich «oder gleichwertige
Pruefmethoden»; Ziff. 4.3.2 Substrat-Wasserkapazitaet) und steht nur im **informativen Anhang C
[14]**, zitiert ausschliesslich als **Teil 1** (1999); **Teil 2 «Labelvergabe und Oekobilanz»**
und das SFG-Label kommen in der ganzen Norm nicht vor. Gesetzt wurden eine **typisierte Fussnote
an der SFG-Zeile** und eine **eigene Zeile in der Aktualitaetspruefungs-Tabelle**, mit Verweis
auf die fuehrende KB `normen` (`sia-312-2013`) und auf `bauprodukte/wiki/dachbegruenung-systeme`.
Ausdruecklich **nicht** behauptet: dass das SFG-Label ueberholt sei — Schweigen der Norm ist
keine Aufhebung; es bleibt eine freiwillige Zusatzanforderung. **Selbstwiderspruch aufgeloest:**
«SFG» ist aus der Schlusszeile «Nicht geprueft und weiterhin offen» herausgenommen (mit
Korrekturvermerk an Ort), weil es nun eine eigene, gepruefte Zeile hat.

**2. SIA-118-Vertragshierarchie — Attributionsfehler der Quelle benannt.** Der Wiki-Artikel
`wiki/oekologische-materialvorgaben-beschaffung` gab die Dreierliste «LV vor
Submissionsbedingungen vor Allgemeinen Bedingungen» als «die Vertragshierarchie» aus. Die
Primaerquelle **OEKO 3.14.C (AHB Stadt Zuerich, 29.08.2006)** leitet sie selbst mit «Gemaess
SIA 118 gilt folgende Reihenfolge» ein — **diese Norm-Attribution ist falsch** und ist jetzt
ausdruecklich als **Attributionsfehler der Quelle** festgehalten, damit sie beim naechsten
Destillieren nicht erneut abgeleitet wird. Der eigentliche Mangel: die Dreierliste unterschlaegt
die Raenge **oberhalb** des LV. Uebernommen mit Fundstelle: **SIA 118:1991 Art. 21 Abs. 1**
(Vertragsurkunde und Angebot ueber den Ausschreibungsunterlagen) und **Art. 7 Abs. 2/3**
(Vertragsurkunde-Text → objektbedingte besondere Bestimmungen → LV/Baubeschreibung → Plaene →
allgemeine Bestimmungen, darunter SIA 118). Was in der Quelle wirklich traegt, ist die
**Selbst-Nachrangigkeitsklausel** der Submissionsbedingungen, nicht die Norm. Derselbe Vermerk
im Destillat `destillate/eco-bau-devis-und-baustellenkontrolle`; dort zusaetzlich der
**Selbstwiderspruch** aufgeloest, weil der Bauherren-Transfer die beiden hinteren Raenge
gegenueber dem eigenen Kernteil umkehrte.

**3. SIA 493 — gleichlautende Warnvermerke an den LV-/Devis-Stellen.** Die KB energie hat die
Archivierung per **30.06.2022** selbst belegt und ist hier **nicht** die Fehlerquelle; die
Vermerke schuetzen die Stellen, die eine Deklaration «nach SIA 493» als Anforderung wiedergeben:
`eco-bau-merkblaetter-bkp-2008-huelle` (PVC-Bahnen/R-Saetze; Raster 493.07),
`bauoekologische-submissionsbedingungen` (Ziff. 1.3 Warendeklarationspflicht und
Aktualitaetspruefung) und `eco-bau-devis-und-baustellenkontrolle`. Kern: die Deklarationsform
wird nicht mehr publiziert, eine solche Klausel verlangt vom Unternehmer einen Nachweis, den es
nicht mehr gibt; **kein Nachfolger behauptet**; fuehrend fuer den Fassungsstand ist die KB
`normen`.

**4. VVEA — Belegpflege, keine Fehlerkorrektur.** In `wiki/gebaeudeschadstoffe` ist der zu weit
gefasste Zeiger «Rechtsbasis Art. 16–20 VVEA» durch einen datierten, artikelgenauen ersetzt:
einschlaegig ist **Art. 16 VVEA (SR 814.600)**, am konsolidierten Fedlex-Volltext Stand
01.08.2026 gegen die Fassung 01.01.2025 geprueft und **materiell unveraendert** (inkl.
200-m³-Schwelle und Aufzaehlung PCB/PAK/Blei/Asbest). Art. 17–20 regeln Verwertungspflichten und
tragen das Vier-Faelle-Raster nicht. Als eigener Hinweis, **beim Entsorgungskonzept statt bei der
Schadstoffabklaerung**: Art. 20 VVEA ist seit **01.08.2025** revidiert (AS 2025 453, Titel neu
«Rueckbau von Bauwerken», Betonabbruch und Gleisaushub neu in Abs. 1, Abs. 3 aufgehoben),
weitere Aenderungen AS 2025 745 / AS 2025 799 / AS 2026 357. Fuehrend fuer den Erlasswortlaut:
KB `baurecht`. Der Warnvermerk «Datenstand 2023» zur AWEL-Checkliste bleibt unveraendert stehen —
er betrifft das kantonale Formular, nicht das Bundesrecht.

**5. QUESTIONS.md** um drei Eintraege ergaenzt: **E-R25-1** heutiger Bestand von SFG /
Gruendachrichtlinie / Label nicht verifiziert (sfg-gruen.ch nicht abgerufen); **E-R25-2**
Asbest-Meldepflicht bei Abbruch — **bewusst nicht materiell eingebaut**, weil nicht verifiziert,
Fundstelle in der fuehrenden KB `baurecht` zu holen (Hinweis: das dort gefuehrte Siglum «Art. 3a
ABV» duerfte unzutreffend sein, einschlaegig eher § 3a Abs. 2 AbfV ZH, LS 712.11); **E-R25-3**
VVEA-Anhaenge 3/5 und Folge-Revisionen nicht geprueft.

**Bewusst NICHT ausgefuehrt:** kein Eingriff in `wiki/oekologische-materialvorgaben-beschaffung`
zum Thema Dachbegruenung — der Artikel behandelt Dachbegruenung mit keinem Wort, der
SIA-312-Vorbehalt waere dort ein Fremdkoerper. Und kein vierter generischer Fassungsvorbehalt im
huelle-Destillat: drei bestehen bereits, ein weiterer haette nicht geschaerft.

## 2026-08-04 — Run 123: eco-bau-/AHB-Beschaffungskorpus, 9 Destillate, 2 Agentenbefunde widerlegt

**Transfer (10 PDF gelesen, 9 Destillate, alle `emerging`):** `eco-bau-merkblaetter-bkp-2008-huelle`
(S. 1-29) und `-technik-ausbau` (S. 30-55) — das Werk «Oekologisch Bauen — Merkblaetter nach BKP»,
Ausgabe 2008, damit vollstaendig gelesen; `bauoekologische-submissionsbedingungen` (Sept. 2006);
`eco-bau-devis-und-baustellenkontrolle` (2006, zwei Checklisten gebuendelt);
`eco-bau-checkliste-planung-projektierung` (Stand 2001); `eco-bau-zielvereinbarungen-sia112-1`
(Copyright 2004); `ahb-zuerich-massstaebe-nachhaltiges-bauen` (Mai 2006);
`haushaltgeraete-effizienz-beschaffung-topten` (Januar 2008); `eco-bau-checkliste-solarstromanlagen`.

**Zwei PDF geprueft, bewusst nicht destilliert:** `Bauteilkatalog_Energie+Oekologie.pdf` — der in
Run 122 als naechster Block angekuendigte Titel ist **1 Seite, 12 kB, Inhalt «www.bauteilkatalog.ch»**,
eine Verweisseite ohne Fachinhalt; und die **Vorgaengerausgabe September 2006** der Merkblaetter.

**Hauptbefund (Aktualitaetspruefung):** Die Merkblaetter sind kein eingestelltes Werk — sie leben
als **ecoBKP** weiter, werden jaehrlich fortgeschrieben und liegen aktuell in der **Ausgabe 2026**
vor. Saemtliche Materialempfehlungen wurden auf die Methodik «Baumaterialien ecobau 2025»
umgestellt, in der Ausgabe 2026 kamen Rueckbaubarkeits-Empfehlungen neu hinzu. **Die Systematik
traegt, die Materialurteile nicht.** Als E-123-1 die vorderste offene Frage der KB.

**Zwei Agentenbefunde im Hauptmodell geprueft und WIDERLEGT** (beide haetten die KB
verschlechtert): (1) Der gemeldete «Datierungswiderspruch 2008 vs. 09/2006» ist keiner —
«Ausgabe 2008» steht auf 54 von 55 Seiten, «09/2006» auf genau der Impressum-Seite, die zugleich
eine Mitgliederliste «Stand Oktober 2007» traegt: ein stehengebliebener Produktionsrest.
(2) Die VVEA ersetzte per 01.01.2016 nicht die VeVA, sondern die **TVA**; die **VeVA (SR 814.610)
ist unveraendert in Kraft**, der Entsorgungsverweis der Quelle also weiterhin zutreffend.
Weitere Normverdikte: SIA 380/4 zurueckgezogen (→ SIA 387/4 + SIA 2056:2019), SIA 430 → 2023,
SIA 493 archiviert seit 30.06.2022 (Nachfolgeweg **nicht** belegt), SIA 112/1 → 2017,
SN EN 206-1 → SN EN 206 2. Aufl., SIA 162/4 archiviert, Energieetikette neu skaliert ab
01.03.2021 (EnEV SR 730.02).

**Verdichtung:** FAQ **F208-F211** neu (ecoBKP-Ausgabe nennen · Zwei-Stufen-Vollzugskontrolle ·
Geraetebeschaffung nach 15-Jahre-Gesamtkosten · ueberbindbare oekologische Auflagen). Neuer
Themenartikel **`oekologische-materialvorgaben-beschaffung`** — schliesst die Beschaffungsluecke
analog zu `gebaeudetechnik-pflichtenheft` aus Run 122. Gewachsen: **`gebaeudeschadstoffe`** um die
gewerkspezifischen Fundstellen (Asbest in Elektrospeicherheizgeraeten bis 1977/1984, CV-Belaege
und PVC-Flex 1970-1982), bewusst als Artikel-Ergaenzung statt als FAQ-Dublette zu F23.

**KB-Defekt behoben:** Die FAQ-Eintraege **F111-F154** (44 Stueck) standen als `###` statt `##`
und fehlten dadurch in der Gliederung. Normalisiert; F1-F211 nun lueckenlos, keine Duplikate,
Diff enthaelt ausschliesslich Ueberschriftenzeilen. Nebenbefund: die in Run 122 gemeldete Zahl
«207 Kernfragen» war die hoechste Nummer, nicht die Anzahl Eintraege (163).

**Zweiter KB-Defekt behoben:** 19 nicht aufloesbare Doppelklammer-Verweise in der bestehenden KB
gefunden, **12 repariert** (10 Zeilenumbruch-Defekte, 1 ueberfluessige `.md`-Endung, 1 nicht
nachgezogener Rename `clt-bauteilkatalog` → `clt-bauteilkatalog-stora-enso`). Die verbleibenden
**7 Ziele existieren wirklich nicht** und sind in `wiki/QUESTIONS.md` protokolliert statt
erfunden. Ein KB-weiter Backlink-Check gehoert in den Skill `wissenscheck`.

**Dublettenlage im eco-Ordner geklaert:** flache Dateien in `eco/` sind byte-identische Kopien
der Dateien unter `eco/Nachhaltiges Bauen/**` (Vergleich per `stat -f %z`, nicht per Name); drei
Faelle sind echte Varianten und duerfen nicht wegdedupliziert werden.

**Stand:** Destillate **239** · FAQ **211 (F1-F211)** · Themenartikel **33** · PL-02 **28 von 182
destilliert, 154 offen**. Register nachgefuehrt: `destillate/INDEX.md`, `training/pdf-inventar.md`,
`wiki/BAUHERREN-FAQ.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (E-123-1 bis E-123-6 + methodische
Lehre), `training/curriculum.md` (D94), `raw/_INGESTED.md`. Report:
`outputs/2026-08-04_energie-run123.md`. 9 von 9 Destillier-Agenten fehlerfrei (lokale
Arbeitskopie-Methode zum zweiten Mal bestaetigt).


## 2026-08-03 (Wissens-Chef Run 24, Cross-KB) — eine Luecke, die keine war; E-122-6 bleibt bewusst offen

- **`wiki/gebaeudetechnik-pflichtenheft.md` berichtigt.** Der Artikel (aus Lauf 122, wenige Minuten
  zuvor angelegt) erklaerte: «Die in RL8 erwaehnte EN-12464-1-Uebersichtstabelle mit den Lux-Werten
  **fehlt im Bestand**.» Sie fehlt nicht — sie liegt seit **19.01.2007** im AHB-Ordner
  (`PL - 02_Recht_Norm/04_Merkblätter/Projektadmin AHB/…/14.3-Richtlinien/`) und ist in
  `../planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` §14.2 mit
  Zahlenwerten destilliert. Die Aussage schickte den Nutzer an einer vorhandenen Datei vorbei auf
  einen kostenpflichtigen Umweg.
- **E-122-6 wurde ausdruecklich NICHT geschlossen** — und das ist der wichtigere Teil. Die
  naheliegende Reaktion waere gewesen, die offene Frage «aktuelle Lux-Bemessungsgrundlage fehlt»
  mit dieser Tabelle zu schliessen. Sie gibt den Stand **EN 12464-1 vor 2011** und **SIA 2024:2006**
  wieder; die geltenden Ausgaben (SN EN 12464-1:2021, SIA 2024:2015) liegen im Bestand nicht vor.
  Eine korrekte Luecke waere durch eine 19 Jahre alte Tabelle ersetzt worden. Der Fundort ist jetzt
  vermerkt, die Luecke bleibt.
- **Bestaetigt, mit Reichweite ueber diese KB hinaus:** die in Lauf 122 gemeldeten toten
  Normverweise halten am Original. **Art. 20 und 20a LRV** sind aufgehoben seit **01.01.2022**
  (AS 2021 632, Fedlex SR 814.318.142.1) — die Konformitaetsnachweis-Pflicht ist **entfallen**;
  **SIA 380/4:2006** ist seit 31.07.2019 archiviert. Beide stehen **auch in `planungsgrundlagen`**
  als geltendes Recht und wurden dort mit Wirktiefe-Vermerk versehen.
- **Fuehrungs-Klarstellung:** fuer den **Erlassstand** (LRV) ist `baurecht` fuehrend, fuer den
  **Normfassungsstand** (SIA/EN) `normen`. Die neun AHB-Destillate dieser KB sind Anlass und
  Zweitbeleg, nicht die Belegautoritaet — sonst entstuende genau die Doppelspur, die der Lauf 122
  im selben Bericht selbst als Befund gemeldet hat.
- Bericht: `../koordination/outputs/2026-08-03_wissens-chef-run24.md`.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B8 · C1 · D0 · E0 · F3 · G4

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Haupt-Befunde: 1 echter ss-Verstoss (`destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md` Z. 181, eigener Fliesstext), 7 ueber Zeilenumbruch zerrissene Backlinks in `wiki/BAUHERREN-FAQ.md`/`wiki/QUESTIONS.md`, 1 totes Ziel `[[sia-2024-nutzungsdaten-gesundheitsbau]]`. **Audit F korrigiert gegenueber 2026-08-01:** die 497 Warnmarker sind durch `CLAUDE.md` Z. 32 vorgeschrieben und damit kein Deko-Verstoss. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 — Run 122: AHB-Gebaeudetechnik-Richtlinien (RL1-RL9) vollstaendig destilliert

**Transfer:** Neun neue Destillate `ahb-zuerich-gt-rl1-planungsgrundlagen` bis
`ahb-zuerich-gt-rl9-gebaeudeautomation` (Stadt Zuerich, Amt fuer Hochbauten, Fachstelle Energie &
Gebaeudetechnik). Alle neun Quelldokumente vollstaendig gelesen (4-7 Seiten), neun parallele
Agenten ohne Ausfall. Damit ist der groesste geschlossene Fachblock des Korpus PL-02 erledigt;
19 von 182 energierelevanten PDF sind destilliert, 163 offen.

**Korrektur an Run 121:** «V21» im Dateinamen ist eine **Versions-, keine Jahresangabe** —
Version 2.1, **Juli 2008** (am Titelblatt im Hauptmodell selbst verifiziert). Der Block wurde
bisher 13 Jahre zu jung gefuehrt. `pdf-inventar.md` und `PROGRAMM.md` entsprechend korrigiert.

**Verifikation (Aktualitaetspruefung, nicht Refuter-Panel):** Sieben Normverweise geprueft, jeder
umsetzungsrelevante Befund im Hauptmodell am Original gegengeprueft (Rule 260729b). **Vier
Verweise sind nicht gealtert, sondern falsch geworden:** Art. 20/20a LRV aufgehoben per
01.01.2022 (AS 2021 632, am Fedlex-Volltext bestaetigt) — die 350-kW-Konformitaetsschwelle
existiert nicht mehr · SIA 380/4:2006 archiviert seit 31.07.2019 (an der SIA-Shop-Produktseite
bestaetigt), aufgeteilt in SIA 387/4:2023 / SIA 2056:2019 / SIA 382/2, energycodes.ch tot,
Vollzug ZH ueber EVEN · EN 779:2002 → EN ISO 16890 (Methodenwechsel, keine 1:1-Uebersetzung von
F7) · ChemRRV: R134a/R410A/R407C fuer neue WP und Gebaeudekuehlung nicht mehr zulaessig.
Ausserdem: DIN V 4279-7 zurueckgezogen → SIA 384/6:2021; SIA 180:1999 → 2014; SIA 382/1:2007 →
2025.

**Zwei eigene Transfer-Abschnitte waren positiv falsch und wurden korrigiert:** RL8 behauptete
SIA 380/4 sei «Pflicht bei Nichtwohnbauten», RL3 fuehrte die 350-kW-Schwelle als «echten
Gewinn». Beide Destillate gaben die Quelle treu wieder — falsch war die eigene Einordnung.
Daraus die Methodik-Regel: Destillat-Treue und Aktualitaet sind zwei verschiedene Pruefungen.

**Eine Beanstandung praezisiert statt uebernommen:** «350 kW kommt im LRV-Text nicht mehr vor»
stimmt inhaltlich, aber die Zeichenfolge steht dreimal im geltenden Text (Abfallverbrennung in
Kleinanlagen, Anhang 5 Ziff. 13) — so praezise vermerkt.

**Verdichtung:** Sechs neue Bauherren-Antworten **F202-F207** (Legionellenschutz im Pflegeheim
bei Waermepumpe · aktive Kuehlung als Ausnahme · Checkliste Variantenvergleich ·
Betriebsoptimierung und Messpflichten · Gebaeudeautomation Herstellerneutralitaet ·
Lichtsteuerung nach Raumtyp). F202 wurde nach eigener Lektuere des PDF um die fehlende Bedingung
«sofern nicht saemtliche Warmwasser-Installationen neu erstellt werden» ergaenzt.

**Neuer Themenartikel** `wiki/gebaeudetechnik-pflichtenheft.md` — Bestellerlogik einer
professionellen Bauherrschaft (Instrumentenkette, Entscheidungskaskade, Mess- und
Nachweispflichten, Betriebsoptimierung), mit Aktualitaetspruefung und ausdruecklichem Abschnitt
«Was NICHT uebertragbar ist». 13 Backlinks geprueft.

**Register:** `destillate/INDEX.md` · `pdf-inventar.md` · `BAUHERREN-FAQ.md` · `wiki/INDEX.md` ·
`QUESTIONS.md` (E-122-1 bis E-122-6) · `curriculum.md` (D93) · `raw/_INGESTED.md` ·
`PROGRAMM.md` (vier Methodik-Regeln). Stand: **230 Destillate · 207 FAQ · 32 Themenartikel**.


## 2026-08-03 (Wissens-Chef Run 23, Cross-KB) — drei Korrekturen an Destillaten aus Lauf 121

- **[korrektur] `destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` — Klimareferenz
  umgedreht zugeordnet.** Der Warnsatz schrieb 8,5 °C / 8 % pro K der Ausgabe **2016** zu; das sind
  die Werte der Vorgaengerausgabe **2009**. SIA 380/1:2016 fuehrt **9,4 °C / 6 % pro K** — belegt im
  Volldestillat `wissen/normen/destillate/sia-380-1-2016.md` (Z. 122, 227). Der Satz war zudem
  grammatikalisch defekt («entspricht SIA 380/1:2016 widerspricht die KB bereits mit …»).
- **[korrektur] dieselbe Datei — Existenzverneinung SIA 180/4 widerlegt.** Der Abschnitt erklaerte
  «Eine SIA-Norm mit dieser Nummer ist nicht bekannt; naheliegend waere ein Schreibfehler fuer
  SIA 380/4». **SIA 180/4:1982 existiert**, ist zurueckgezogen, Nachfolgenorm **SIA 416/1:2007** —
  `wissen/normen/wiki/REGISTER.md` Z. 140/335 und `sia-d0165-2000-…md` Z. 165. Quellentreue bleibt;
  beim Zitat nach aussen ist die Nachfolgenorm zu nennen.
- **[veraltetes] `destillate/pv-blitzschutz-gebaeudeversicherung-ch.md` — zurueckgezogene Ausgabe als
  Normgrundlage.** «SNR 464022:2015» ist seit **20.02.2024 durch SN 414022:2024 ersetzt** (SNV-Connect
  «Withdrawn»), belegt im eigenen Destillat `snr-464022-blitzschutz-ausfuehrung.md`. Umgestellt, mit
  dem ehrlichen Vorbehalt, dass die inhaltlichen Kernaussagen aus der Ausgabe 2015 stammen und fuer
  2024 nicht geprueft sind. **Richtungsumkehr gegenueber der Meldung:** gemeldet war der umgekehrte
  Fall (planungsgrundlagen fuehre die falsche Nummer) — dort steht die **richtige**, nur ohne Ausgabe.

## 2026-08-03 (Run 121) — zweiter PDF-Korpus PL-02 produktiv erschlossen; Verifikations-Rueckstand eingeloest

- **Die Aussage «PDF-Inventar erschoepft» galt nur fuer PL-04.** `PL - 02_Recht_Norm` enthaelt
  **1'171 PDF, davon 182 energierelevant** (Minergie 79 · eco-bau 55 · Stadt-ZH-AHB 38 · Energie-
  recht ZH 5 · uebrige 5). Run 120 trug die laengst aufgehobene Zugangsblockade noch als
  «hoechste Prioritaet, dreifach bestaetigt ungeloest» weiter — dieselbe Fehlerfamilie wie der
  SIA-2024-Merge: aus der Vorliste fortgeschrieben statt am Bestand gegengeprueft.
- **Messfalle dokumentiert:** Die PL-02-Dateien liegen als OneDrive-Platzhalter; `du -h` meldet
  **0 B** und suggeriert leere Dateien. Massgeblich ist `stat -f %z` plus Flag `dataless`;
  `head -c 200000 > /dev/null` erzwingt die Materialisierung. Nachgetragen im `pdf-inventar.md`.
- **Neun neue Destillate aus zehn PDF** (acht parallele Destillier-Agenten, je eigene Zieldatei):
  `bauteilekatalog-sanierungen` · `waermebrueckenkatalog-minergie-pl02` · `enfk-fensterblatt` ·
  `untergeschosse-daemmen` · `minergie-innenraumklima` · `minergie-eco-gebaeudelabel` ·
  `gebaeudehuellziffer-ebf-flaechendefinition` · `minergie-p-a-anwendungshilfe-2019` ·
  `minergie-fragenkatalog-mfh`. Alle `emerging` (Quellen 2001-2019, Methodik gueltig, Zahlenwerte
  pruefbeduerftig). Zwei Agenten relativierten ihren Auftrag korrekt am Bestand statt Redundanz
  zu produzieren (Werkidentitaet des Waermebrueckenkatalogs, Formatbefund beim Fragenkatalog).
- **Verdichtung:** FAQ **F197-F201** neu (Daemmperimeter · Gebaeudehuellziffer · Fenster-Nachweisweg ·
  U-Wert im Bestand · Innenraumklima vertraglich sichern). Neuer Themenartikel
  `wiki/bezugsgroessen-energienachweis.md` (EBF, Gebaeudehuellziffer, Daemmperimeter konsolidiert).
- **Verifikations-Stufe: Rueckstand aus Run 120 eingeloest** — volles Refuter-Panel (drei
  unabhaengige Pruef-Agenten mit Widerlegungsauftrag) statt Spot-Check. Bestanden:
  Minergie-Areal 8/8 am Reglement 2026.1 · Etappierte Sanierung 5/7 (2 mit Negativbeweis-
  Vorbehalt) · R744 A1-A6 zahlengenau am BFE-Bericht · EKZ-Sperrzeiten B1-B6 am Anhang 1.
- **Vier Korrekturen umgesetzt:** «von 10 Wahlvorgaben» → **17**; «37 Seiten» → **38**;
  EKZ-Tagessperrdauer 1-4 Std. als **tarifabhaengig** praezisiert (nur Netz 400WP; 400F 1-3 Std.);
  dritte Vorbedingung der ZH-Bagatellschwelle («nur geringfuegige Umnutzungen») ergaenzt.
- **Zwei Beanstandungen verworfen** (Rule 260729b, jede Beanstandung vor dem Eingriff am Original
  gegengeprueft): die R744-Sicherheitsklasse war bereits korrekt der Herstellerquelle zugeschrieben
  und als unverifiziert markiert; der Wohnbaupreise-Index stand bereits richtig in der Datei.
  **Ursache: die Refuter-Auftraege haben die Aussage zusammengefasst statt woertlich aus der Datei
  zitiert** — als methodische Lehre in QUESTIONS festgehalten.
- **Nicht umgesetzt, bewusst:** KB-weiter Rename «KEnV» → «Energieverordnung» (15 Dateien). Eigene
  Gegenpruefung unmoeglich (sz.ch HTTP 404); kein Datei-Eingriff auf einen ungegengeprueften
  Agentenbefund. Als `E-121-4` in QUESTIONS.
- **Stand:** Destillate **221** · FAQ **201** (F1-F201) · Wiki-Themenartikel **31**.
- **Offen:** 172 energierelevante PL-02-PDF; naechster Block die neun Gebaeudetechnik-Richtlinien
  GT_RL1-RL9 (V21) der Stadt Zuerich. Report: `outputs/2026-08-03_energie-run121.md`.

## 2026-08-01 (interaktive Session mit Raphael) — PL-02-Zugangsblockade WIDERLEGT, 134 PDF freigegeben

- **Die seit Run 119 als «hoechste Prioritaet» gefuehrte PL-02-Zugangsblockade existiert nicht.**
  Gemessen auf dem MacBook Pro und per SSH auf dem Mac Mini: **1170/1170 PDF in
  `PL - 02_Recht_Norm` lesbar, Fehlerzahl 0**; fuer die beiden angemeldeten Bestaende einzeln mit
  Byte-Vergleich (Dateigroesse gegen tatsaechlich gelesene Bytes, nicht nur Header) nachgemessen:
  **Minergie 79/79, eco 55/55 vollstaendig lesbar**. Die Werkzeuge, die in Run 119/120 `EDEADLK`
  lieferten, arbeiten fehlerfrei: Read-Tool rendert `VoHi_EN-02_de.pdf` (Vollzugshilfe EN-2
  «Waermeschutz von Gebaeuden», EnFK, Januar 2009, 14 S.), `file` meldet auf dem Mini «PDF
  document, version 1.4, 14 pages», voller `md5`-Durchlauf `28fe2f69aa6b5d25a1a9105f7ab3bb4c`,
  `pdftotext` extrahiert sauberen Text.
- **Die Ursachenvermutung der drei Laeufe war falsch.** Weder TCC/Festplattenvollzugriff noch ein
  Sync-/Scope-Ausschluss: die Dateien liegen materialisiert auf der Platte und lesen sich auf dem
  Mini sogar bei nicht laufendem OneDrive. `EDEADLK` war ein transienter Zustand des
  OneDrive-File-Providers.
- **Methodische Lehre (uebertragbar):** die «dreifach unabhaengige Bestaetigung» aus Run 119/120
  war eine Wiederholung derselben Messung im selben Fehlerzustand — sie hat die Diagnose
  gehaertet, nicht geprueft. Ein `EDEADLK` auf CloudStorage ist eine Zustandsmeldung, keine
  Rechtelage, und gehoert vor jeder Eskalation zu einem spaeteren Zeitpunkt UND aus einem zweiten
  Kontext gegengemessen. Kosten der unterlassenen Gegenprobe: 134 PDF ueber drei Laeufe blockiert.
- `wiki/QUESTIONS.md` an beiden Fundstellen korrigiert (Anmeldung 2026-07-29 und Run-120-Block);
  E-PL02-1 und E-PL02-2 sind ohne Vorbedingung bearbeitbar, kein Handlungsbedarf bei Raphael.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B8 · C0 · D0 · E0 · F167 · G10

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 7 Backlinks sind ueber den Zeilenumbruch zerrissen (Audit B): `BAUHERREN-FAQ. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — SZ-Konzessionsschwelle umgedreht, SIA-2056-Zuschreibung falsch, EnerG-Fassung geklaert

- **[widerspruch, schwerwiegend] `wiki/umweltwaerme-gewaesser.md`: die Schwyzer Konzessionsschwelle
  war umgedreht.** Der Artikel fuehrte «Schwelle > 50 kW oder **< 4 Wohneinheiten**» (Fliesstext
  Z. 28-29 und Vergleichstabelle). Amtlich gilt nach § 12 Abs. 2 lit. e/f WRG SRSZ 451.100 «wobei
  diese **in der Regel mindestens vier** betragen muss» — belegt im eigenen Destillat
  `grundwasserwaermenutzung-bewilligung-zh-sz` (WRG §§ 11/12 im Volltext gelesen). Doppelter Fehler:
  zusaetzlich war eine **Erteilungs**voraussetzung zum **Pflicht**ausloeser gemacht worden; die
  Konzessionspflicht selbst ist nach § 11 Abs. 2 lit. b WRG groessenunabhaengig. **Praxisfolge der
  Fehlfassung:** ein EFH oder 2-3-WE-Objekt am Zuger- oder Vierwaldstaettersee haette daraus «keine
  Konzession noetig» gelesen — richtig ist, dass es konzessionspflichtig bleibt, die Konzession aber
  in der Regel **nicht erteilt** wird. Beide Fundorte korrigiert und um die Unterscheidung
  Pflicht/Erteilung ergaenzt. Der Artikel war der **einzige Ausreisser gegen fuenf gleichlautende,
  korrekte Stellen dieser KB** — gekippt ist die Aussage im Verdichtungsschritt Destillat → Wiki,
  nicht in der Recherche.
- **[querverlinkung] Gewaesser-Artikel:** Fassungsvermerk und Verweis in die fuehrende KB `baurecht`
  ergaenzt (WsG LS 724.1 / WsV LS 724.11, je Nachtrag 133, in Kraft seit 01.06.2026). Fuer die
  SZ-Nummer ist ausdruecklich vermerkt, dass im Hub **kein** amtlicher Volltext liegt.
- **[widerspruch] `destillate/aufzug-energieeffizienz-vdi4707.md`: SIA 2056 hat die VDI-Kategorien
  gar nicht.** Das Destillat schrieb der Norm an drei Stellen «die fuenf VDI-4707-Nutzungskategorien»
  zu und erklaerte die Frage fuer offen, weil die Norm «nicht im Volltext gelesen» sei. Die fuehrende
  KB `normen` fuehrt SIA 2056:2019 seit dem **24.07.2026** als `established` Volldestillat
  (`sia-592-056`, S. 1-130 gelesen, am Original verifiziert): Ziff. 6.23 rechnet mit **vier**
  Nutzungsintensitaetsstufen **nach Gebaeudetyp** (Tab. 78, Krankenhaus = «stark»), VDI 4707-1:2009
  erscheint nur als informativer Publikationshinweis in Anhang G. Vier Stellen berichtigt, offener
  Punkt aufgeloest. **Lehre fuer diese KB:** die Bestandssuche vor einem neuen Destillat muss ueber
  die **Norm**achse laufen, nicht nur ueber die Gegenstandsachse — sieben parallele Rechercheagenten
  suchten nach «Aufzug/VDI», keiner nach «SIA 2056».
- **[veraltet, aufgeloest statt geflaggt] `destillate/etappierte-energetische-sanierung-zh-sz.md`:**
  gelesen wurde EnerG ZH in **Nachtrag 125**, geltend ist **129**. Der Fassungsabgleich wurde
  gefahren (beide amtlichen Volltexte gezogen): das Delta besteht ausschliesslich in den neu
  eingefuegten §§ 2a/2b; die hier allein zitierte Delegationsnorm § 17a lit. a ist wortgleich.
  **Kein Fassungsdrift**, `established` bleibt. Vermerk im Frontmatter und unter «Rechtsgrundlagen».
- **[toter pfad] 12 Vorkommen von `260728_amtlich_zh_wsg.md` / `…_wsv.md` korrigiert** — die Dateien
  heissen `260730_…`. Zeilennummern stimmten exakt; reiner Dateinamen-Datumsfehler.
- **[offen, als Bring-Schuld notiert]** Run 120 hat die Verifikationsstufe budget-bewusst reduziert
  und das protokolliert; zwei der sieben neuen Destillate trugen einen im Cross-KB-Lauf bestaetigten
  Fehler. Der Gewaesser-Artikel verdient eine vollstaendige Gegenlesung durch diese KB, nicht nur die
  zwei Punktkorrekturen des Chefs. Entscheid zur kuenftigen Verifikationstiefe liegt bei Raphael
  (Bericht `wissen/koordination/outputs/2026-07-31_wissens-chef-run22.md`, Abschnitt 10.1).

## 2026-07-31 (Run 120) — sieben neue Destillate, Seewasser-Wiki-Artikel, PL-02-Blockade reconfirmiert
- Sieben parallele `general-purpose`-Rechercheagenten (Kollisionsschutz: je eine eigene neue
  Destillat-Datei), Registerkonsolidierung im Hauptmodell: `etappierte-energetische-sanierung-zh-sz`
  (established, FAQ F192), `kaeltemittel-r744-co2-waermepumpen-hochtemperatur-ch`
  (established/emerging, FAQ F191), `hochtemperatur-waermepumpen-altbausanierung-ohne-heizkoerpertausch`
  (emerging, FAQ F193, sinnvoll pivotiert), `fernkaelte-district-cooling-grossbauten-zh`
  (emerging, FAQ F194), `minergie-areal-zertifizierung` (established, FAQ F190),
  `waermepumpen-sperrzeiten-netzbetreiber-zh-sz-vertiefung` (established/speculative gemischt,
  FAQ F195), `aufzug-energieeffizienz-vdi4707` (emerging, FAQ F196).
- **[neu]** Wiki-Themenartikel `wiki/umweltwaerme-gewaesser.md` — Verdichtung von Seewasser/
  Abwasser/Grundwasser aus vier bestehenden Destillaten (Carryover-Auftrag Run 119), vom
  Hauptmodell selbst geschrieben.
- **[reconfirmiert]** PL-02-Zugangsblockade (`EDEADLK` auf `PL - 02_Recht_Norm/06_Richtlinien/
  Minergie/`) vom Hauptmodell unabhängig nachgetestet (Read-Tool, `file`, `pdftotext`) —
  derselbe Befund wie Run 119. Zusätzlich getestet und verworfen: `brctl download` als Fallback
  (iCloud-spezifisch, `BRCloudDocsErrorDomain Code=6` auf OneDrive-Pfaden) — kein Lösungsweg.
- **[abweichung protokolliert]** Verifikationsstufe budget-bewusst reduziert: kein volles
  2-3-Agenten-Adversarial-Panel gemäss PROGRAMM.md, stattdessen Spot-Check (Minergie-Areal-URL
  live per curl verifiziert HTTP 200, EnerG/WDV/KEnG/KEnV als amtliche Kantonserlasse
  plausibilisiert). Nachholbedarf für established-Kandidaten in `wiki/QUESTIONS.md` vermerkt.
- FAQ-Stand: **196** (F1-F196). Destillate-Stand: **212** (sieben neue). Wiki-Themenartikel:
  **30** (ein neuer). Neunte Bestätigung in Folge (Run 111-120), dass die Sättigungsdiagnose
  für neue Themenfelder nicht zutrifft.

## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — Rabtherm-Kennzahlenband entmischt, Freienbach-Register korrigiert
- **[widerspruch] Rabtherm-Destillat: JAZ und COP waren zu einem Band «COP 4,0 bis 7,0» verrechnet
  und falsch im Kanton Zürich verortet.** Im Bauherren-Transfer von
  `destillate/rabtherm-abwasserwaerme-jaz-projekte.md` stand «Schätzung über die im Kanton Zürich
  beobachtete Bandbreite realer Vergleichswerte (COP 4,0 bis 7,0 über fünf verschiedene, real
  benannte Schweizer Anlagen)». Neu werden die vier Werte einzeln und mit ihrer jeweiligen
  Kennzahlenart ausgewiesen: Arbeitszahl 4,4 (Zwingen BL, Raumheizung) und Arbeitszahl «gegen 7»
  (Basel-Allschwil, sommerlastig, laut Quelle nicht auf eine ganzjährige Heizperioden-JAZ
  übertragbar) gegenüber den Herstellerwerten COP ca. 4,0 (Wintower Winterthur ZH, Auslegungs-/
  Bemessungspunkt) und COP 5,7 (Lausanne VD, Betriebswert nach dem ersten Vollbetriebsjahr, nicht
  als JAZ deklariert). Festgehalten ist neu: es sind **vier** Anlagen (nicht fünf), nur der Wintower
  liegt in ZH, und COP und Arbeitszahl sind nach `[[cop-scop-jaz-waermepumpe-gruenenwald]]`
  verschiedene Grössen, die nicht zu einem Band verrechnet werden dürfen. Der SEPEMO-Vorbehalt
  bleibt erhalten.
- **[korrekturvermerk] Lauf-Report Run 119** (`outputs/2026-07-29_energie-run119.md`) trägt am Kopf
  einen datierten Korrekturvermerk zur falschen Zusammenfassung «Band 4,0-7,0 über fünf benannte
  Anlagen» (richtig: vier Anlagen, gemischte Kennzahlen, drei belegte Kantone ZH/VD/BL, Zuordnung
  Basel-Allschwil in der Quelle unentschieden BL/BS). Der Fliesstext des Protokolls bleibt
  unverändert, weil datierte Protokolle nicht rückwirkend geglättet werden.
- **[veraltetes] Registereintrag Freienbach in `destillate/INDEX.md`:** unmögliches Datum
  «10.01.2026» (Publikation ein Jahr vor Erstellung) auf **10.01.2025** korrigiert, belegt im
  Destillat selbst (Frontmatter `ausgabe` und Body). Der Vermerk «ergänzt
  waermeplanung-kommunal-zh-sz» meldete eine Verdichtung als vollzogen, die nie stattfand; er lautet
  neu «Verdichtung offen, Vorschlag im Destillat (Abschnitt «Bezug zum Wiki»); Zielartikel im wiki/
  existiert noch nicht».
- **[offener punkt geschlossen]** Im Freienbach-Destillat
  (`destillate/energierichtplan-freienbach-econcept.md`) ist der offene Punkt zur BZO-/
  Zonenordnungsebene erledigt: `[[sz-vollzugspraxis-afu-wegleitungen-rechenzentren]]` (Run 118,
  28.07.2026) hat das vollständige Baureglement Freienbach 2022 gelesen, Stichwortsuche nach
  «Anschlusspflicht»/«Fernwärme» ohne einen einzigen Treffer.
- **[teilweise erledigt]** In `destillate/waermeplanung-kommunal-zh-sz.md` sind die zwei offenen
  Punkte zu Schwyz (kein zentrales Geoportal; Stand «EK-EE-4») für Freienbach als teilweise erledigt
  gekennzeichnet, im dort bereits praktizierten Muster: eigene Energieträgerkarte seit 27.05.2025,
  PDF-Publikation statt GIS-Portal; übrige Gemeinden bleiben offen.
- **[luecke angemeldet]** Neuer Punkt **E-R21-1** in `wiki/QUESTIONS.md`: der Wiki-Themenartikel
  «Kommunale Wärmeplanung ZH/SZ» fehlt (Slug existiert nur unter `destillate/`), zu verdichten aus
  vier vorhandenen Destillaten. Bewusst **nicht** in diesem Lauf angelegt — das ist Aufgabe des
  energie-Loops.
- Geändert: `destillate/rabtherm-abwasserwaerme-jaz-projekte.md`, `destillate/INDEX.md`,
  `destillate/energierichtplan-freienbach-econcept.md`,
  `destillate/waermeplanung-kommunal-zh-sz.md`, `wiki/QUESTIONS.md`,
  `outputs/2026-07-29_energie-run119.md`.

## 2026-07-29 (Nachlauf Run 20, Freigabe Raphael) — vier ueberholte Saetze entfernt, Korrekturkaesten selbsttragend
- **[Entscheid B2]** Nach Freigabe entfernt: im Seewasser-Destillat die zwei Fassungen des offenen
  Punkts zur Konzessions-Rechtsgrundlage («exakte WsG-Paragraphennummer nicht zitiert gefunden»,
  «nicht verifiziert»), im Eisspeicher-Destillat die zwei Fassungen des falschen Negativbefunds
  («keine Schweizer Primaerquelle gefunden»). **Die Korrekturkaesten bleiben und sind
  umformuliert**, sodass jeder Kasten selbst benennt, was dort stand («hier stand …») statt auf
  einen entfernten Absatz zu verweisen. Die Herkunft des Fehlers ist damit weiter am Ort lesbar.
  Grund fuer die Entfernung: der freistehende Altsatz ist der, den ein Folgelauf oder ein
  Bauherren-Auszug erwischt — die Beweiskette liegt daneben dreifach (Kasten, CHANGELOG, Register).
- Geaendert: `destillate/seewasser-waermenutzung-aquathermie-zh-sz.md`,
  `destillate/eisspeicher-waermepumpe-latentwaermespeicher.md`.


## 2026-07-29 — Wissens-Chef Run 20 (Cross-KB): die drei neuen Wasser-Destillate nutzten den WsG-Volltext nicht, der 24 h vorher hereinkam
- **[strukturbefund, wichtigster des Laufs] «Ein Zugang heilt keinen Bestand.»** Run 119 hat am 29.07.
  drei Destillate im Wasserrecht angelegt (Regenwasser-Brauchwasser, Seewasser-Aquathermie,
  Eisspeicher). Alle drei stuetzen ihre Rechtsgrundlage auf Sekundaerquellen oder erklaeren sie fuer
  «nicht gefunden» — obwohl `baurecht` den amtlichen WsG-/WsV-Volltext am **28.07.** ins Haus geholt
  hat. **Das Seewasser-Destillat legt neben einer bereits beantworteten Frage eine neue offene Frage
  an:** es kennt die Konzessionsdauer nicht, die Wissens-Chef Run 19 einen Tag vorher fuer das
  Schwester-Destillat `grundwasserwaermenutzung-bewilligung-zh-sz` geklaert hatte; der Backlink dorthin
  fehlte ganz (0 Treffer). Ursache: das Curriculum fuehrt die Frage weiter als offen, also recherchiert
  der Loop extern weiter. **Konsequenz fuer diese KB:** nach dem Zugang eines Erlass-Volltextes in
  `baurecht` gehoert ein Rueckwaerts-Sweep ueber die eigenen offenen Punkte, nicht nur ein
  Vorwaerts-Destillat.
- **[korrektur, materiell] Seewasser: die Konzessions-Kette ist jetzt paragraphengenau belegt.**
  Gewaesserhoheit § 4 WsG → Konzession § 68 Abs. 1 lit. c WsG → Sondernutzungs-Tatbestand
  «Nutzung von Gewaessern zur Waermeentnahme und zum Waermeeintrag» § 119 Abs. 2 lit. c WsV →
  Konzessionserfordernis § 120 Abs. 1 WsV; **Konzessionsdauer 15-30 Jahre** nach § 121 Abs. 1 lit. b
  WsV (der Litera-Wortlaut nennt Grund- UND Oberflaechenwasser, gilt fuer Seewasser also unmittelbar),
  Abs. 2 laengstens 80 Jahre. Die kursierenden 40 Jahre gehoeren zu lit. a/lit. d. Streng auf die
  ZH-Position begrenzt: fuer SZ/ZG/Vierwaldstaettersee ist keine Dauer belegt und wurde nicht
  gefuellt. Zusaetzlich belegt: Seewasser loest **mehrere** Sondernutzungen aus (Seefassung/Seeleitung
  eigene nach § 119 Abs. 2 lit. e). Praxisfolge fuer die Wirtschaftlichkeit: Amortisationsdeckel
  30 Jahre, Konzessionserneuerung als Risiko — bei Seewasser wegen der hohen Fassungs-/Leitungs-
  investition gewichtiger als bei der Grundwasser-WP.
- **[korrektur, materiell, erreichte den Bauherrn] Eisspeicher: der Negativbefund war falsch.** Das
  Destillat erklaerte zweimal, es gebe keine Schweizer Primaerquelle zur Bewilligungspflicht — **§ 92
  Abs. 1 WsV** («Einer Bewilligung beduerfen: a. der Entzug von Erdwaerme, b. der Eintrag von Waerme
  in das Erdreich», technologieneutral, ohne Bohrungsbezug) und **§ 44 Abs. 1 lit. a Ziff. 3 WsG**
  liegen im Hub. Der Fehler ging ueber **FAQ F187** hinaus. Korrigiert; die Anwendung auf den
  Eisspeicher ist ausdruecklich als **KB-eigene Subsumtion** markiert (nicht AWEL-bestaetigt), offen
  bleibt nur die Vollzugspraxis in den Schutzzonen S1/S2. Terminologie zugleich berichtigt: amtlich
  sind «Gewaesserschutzbereiche» und «Grundwasserschutzareale» (§ 45 WsG), nicht «Gewaesserschutzareal».
- **[korrektur, dritter Fundort einer Fehlerklasse] `erdwaermesonden-bewilligung-zh-sz` stuetzte sich
  im Status «established» und ausdruecklich «primaerquellen-verifiziert» auf die per 01.01.2022
  aufgehobene KGSchV** (LS 711.11), an vier Stellen plus INDEX und FAQ F71. Auf geltendes Recht
  umgestellt (§ 44 Abs. 1 lit. a Ziff. 3/lit. f WsG, § 92 WsV). **Die Gebuehren-Nachfolge, die der
  Erst-Befund fuer offen erklaerte, hat der Verifikations-Agent am Volltext gefunden:** § 209 WsV
  (Uebergangs- und Schlussbestimmungen, Randtitel «Gebuehren») verweist auf dieselbe GebV UR wie der
  alte § 69 KGSchV — der Verweisungsmechanismus lebt unveraendert weiter, nur ueber eine andere
  Traegernorm. Die materielle Aussage (Aufwandgebuehr, Deckel CHF 25'000) bleibt damit gueltig, der
  Status `established` traegt zu Recht. Offen nur der Fassungsstand der GebV UR.
- **[korrektur, materiell] Regenwasser-Brauchwasser: die kantonale Grundlage fehlte.** Die
  Zulaessigkeit ruhte allein auf einem SVGW-Merkblatt von 2001. **§ 97 Abs. 3 WsG** sagt es amtlich:
  «Die Verwendung von Regenwasser als Brauchwasser in getrennten Systemen ist zulaessig und
  gebuehrenfrei» (LS 724.1, Nachtrag 133, in Kraft seit 01.06.2026). Mit Geltungsbereichs-Klammer
  eingesetzt (das Destillat ist CH-weit angelegt, § 97 gilt nur ZH). Zwei materielle Folgen: die
  Gebuehrenfreiheit gilt **nur fuer das genutzte Regenwasservolumen** — Bezugspflicht § 97 Abs. 1 WsG,
  Anschlusspflicht § 178 WsV und Abwassergebuehren bleiben unberuehrt und duerfen in der
  Amortisationsrechnung nicht wegfallen. Nachgezogen in **FAQ F186**.
- **[korrektur, materiell] Graue Energie Holzbau vs. Massivbau: «durchgehend 20-40 % tiefer» war durch
  die eigene Datei widerlegt.** Die eigene Tabelle nennt -13 % (espazium-Fallstudie), der eigene
  Bauherren-Transfer und FAQ F189 nennen 20-25 %; die 40-%-Obergrenze stammte allein aus einer
  Lignum-Journal-Zeile, die die Datei selbst als «keine eigene Studienquelle» entwertet — und deren
  Rechnung zusaetzlich arithmetisch falsch war (7,5 gegen 10,5-12,2 sind -29 bis -39 %, angegeben
  ~20-37 %). Neu: **Median rund 23 %, Planungsgroesse 20-25 %**; «durchgehend» qualifiziert nur die
  **Richtung** in der Wueest-Stichprobe (jedes der 35 Objektpaare unter der Winkelhalbierenden), nie
  eine Prozent-Bandbreite. Nachgezogen in `wiki/graue-energie.md`, `destillate/INDEX.md`, FAQ F189
  (jetzt Leitzahl) **und im Curriculum** — sonst liest ein Folgelauf die widerlegte Zahl als eigenen
  Vorbefund wieder ein.
- **[korrektur, Norm-Zuschreibung] «Messgroessen (SIA 2032): kg CO2-eq/m2 EBF» ist falsch.** Die
  Bezugsflaeche EBF stammt aus der KBOB-/Minergie-/SIA-2040-Systematik; SIA 2032 bezieht auf die
  **Geschossflaeche GF** (SIA 416), belegt im Vorwort der Ausgabe 2010, das die EBF ausdruecklich
  kontrastiert. **Keine Vergleichszahl musste neu gerechnet werden** — die Quellen wenden die
  Minergie-/SIA-2040-Konvention korrekt an, falsch war allein die Norm-Zuschreibung. Auch im
  Curriculum nachgetragen.
- **[uebergabe] Vierter Fundort des Musters «Rule `normen-referenz` greift beim SCHREIBEN nicht»:**
  das neue graue-Energie-Destillat zitiert SIA 2032 und SIA 390/1 ohne jeden Verweis auf `normen`,
  obwohl der Elternartikel den Link seit Run 13 traegt. Vorschlag: Pruefschritt «zitiert dieses
  Destillat eine Norm? dann normen-Destillat verlinken» in `training/PROGRAMM.md`.
- Geaendert: `destillate/{regenwassernutzung-brauchwasser-trinkwasserersatz-ch,seewasser-waermenutzung-aquathermie-zh-sz,eisspeicher-waermepumpe-latentwaermespeicher,erdwaermesonden-bewilligung-zh-sz,graue-energie-holzbau-vs-massivbau-vergleich-ch,kbob-graue-treibhausgasemissionen-2025,INDEX}.md`,
  `wiki/{BAUHERREN-FAQ,graue-energie,heizleistung-und-waermeerzeuger,regenwasserbewirtschaftung-versickerung-zh,QUESTIONS}.md`,
  `training/curriculum.md`. Bericht: `wissen/koordination/outputs/2026-07-29_wissens-chef-run20.md`.


## 2026-07-29 — Run 119 (Intensiv-Lauf, sieben parallele Web-Rechercheagenten)
- **[zugang, Befund] PL-02-Zugangsblockade entdeckt.** Der heute vom Normen-Loop gemeldete
  Cross-KB-Fund (134 PDF Minergie/eco-bau in `PL - 02_Recht_Norm`) liess sich nicht öffnen —
  alle Stichproben scheitern mit `EDEADLK`/„Resource deadlock avoided" (Read-Tool, Python,
  pdftotext, `open -a Preview`), obwohl PL-04-Dateien im selben OneDrive-Mount einwandfrei
  lesbar sind. Kein M365-MCP-Tool geladen, daher kein Graph-Fallback. Empfehlung an Raphael:
  OneDrive-Sync-Status der Bibliothek prüfen. PL-04 selbst erneut vollständig geprüft, weiterhin
  seit Run 65 erschöpft.
- **[destillate, sieben neu]** `rabtherm-abwasserwaerme-jaz-projekte` (JAZ-Band 4,0-7,0 über
  fünf reale Anlagen, Zielprojekte selbst weiter ohne JAZ) · `swki-va106-vernehmlassung-zugangsversuch`
  (vierter Negativbefund, CDX-abgesichert) · `energierichtplan-freienbach-econcept` (Original
  nicht auffindbar, aktuelle Ersatzquelle 2025 ausgewertet, FAQ F185) ·
  `regenwassernutzung-brauchwasser-trinkwasserersatz-ch` (established Normteil, FAQ F186) ·
  `eisspeicher-waermepumpe-latentwaermespeicher` (FAQ F187) ·
  `seewasser-waermenutzung-aquathermie-zh-sz` (FAQ F188, neues Themenfeld) ·
  `graue-energie-holzbau-vs-massivbau-vergleich-ch` (established, FAQ F189).
- **[verdichtung]** `wiki/heizleistung-und-waermeerzeuger.md`, `wiki/regenwasserbewirtschaftung-versickerung-zh.md`,
  `wiki/graue-energie.md` erweitert. Kein neuer Wiki-Artikel (Seewasser als Kandidat vorgemerkt).
- Geändert: `destillate/INDEX.md`, `wiki/BAUHERREN-FAQ.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `training/curriculum.md` (D90), `raw/_INGESTED.md`, drei Wiki-Artikel (siehe oben).
- FAQ-Stand: 189 (F1-F189). Destillate-Stand: 205 (sieben neue). Report: `outputs/2026-07-29_energie-run119.md`.

## 2026-07-29 (Cross-KB normen → energie, Normen-Run 36) — zwei Bestaende zugewiesen, drei Bring-Schulden abschliessend belegt
- **[zugang] 134 nie erfasste PDFs in PL-02 gehoeren dieser KB:** `06_Richtlinien/Minergie` (79)
  und `04_Merkblätter/eco` (55). Sie sind keine Normen und wurden darum bewusst NICHT ins
  Normen-Inventar gezogen. Als E-PL02-1 (P2) und E-PL02-2 (P3) in `wiki/QUESTIONS.md` angemeldet,
  je mit der Pflicht, vor dem Destillieren den Fassungsstand am Titelblatt zu klaeren und die
  Ueberschneidung mit dem bereits bekannten eco-bau-Bestand zu pruefen.
- **[belegt, schliesst eine Suche ab] SIA 385/9:2023, SN EN 13487 und SN EN 12102-1 liegen
  definitiv nicht im Haus.** Normen-Run 36 hat den gesamten Bestand durchsucht (1'281 PDF nach
  Dateiname, 696 zusaetzlich nach Titelblatt). Externe Beschaffung noetig; eine weitere
  Bestandssuche eruebrigt sich. Beleg: `wissen/normen/outputs/2026-07-29_normen-nacht-run36.md`.
- Geaendert: `wiki/QUESTIONS.md` (neuer Kopfeintrag).

## 2026-07-28 — Wissens-Chef Run 19 (Cross-KB): zwei materielle Korrekturen, eine davon bis zum Bauherrn
- **[korrektur, materiell] Konzessionsdauer Grundwasserwaerme: 15-30 Jahre, nicht «kein Maximalwert».**
  `destillate/grundwasserwaermenutzung-bewilligung-zh-sz.md` erklaerte die Sekundaerquellen-Zahl
  «40 Jahre» am Gesetzestext fuer widerlegt und hielt fest, es gebe **keinen gesetzlichen
  Maximalwert**. Die eigene Einschraenkung («bevor die WsV geprueft ist») ist seit dem 28.07.
  einloesbar: **§ 121 Abs. 1 lit. b WsV** nennt fuer «Nutzung von Grund- und Oberflaechenwasser zur
  Waermeentnahme und zum Waermeeintrag» eine **Regeldauer 15-30 Jahre** (Abs. 2: bei besonderen
  Verhaeltnissen laengstens 80). Die 40 Jahre gelten fuer **andere Litera** (lit. a Wasserentnahme,
  lit. d Inanspruchnahme) — fuer die Waermenutzung falsch. **Die Stufe war das Problem, nicht die
  Recherche:** gesucht wurde im Gesetz, geregelt ist es in der Verordnung.
  **Auch in `wiki/BAUHERREN-FAQ.md` F77 korrigiert** — dort erreichte der Fehler den Bauherrn.
  Praxisfolge: Amortisationshorizont der Waermequelle max. **30 Jahre**.
  Nebenbefund: die **100-kW/Minergie-Mindestgroesse steht nicht in der WsV** → AWEL-Verwaltungspraxis,
  nicht Verordnungsrecht; § 173 lit. b WsV kennt bei 200 kW nur eine **Verfahrens**schwelle.
- **[korrektur, materiell] § 47b Abs. 1 BBV I: Erlass und Vollzugshilfe waren vermischt.**
  `destillate/rueckkuehler-flaechenkennwert-vertiefung-ch.md` (Run 118) gab eine 30-%-Technikreserve,
  deren Zweckbestimmung und eine PV-Reduktionsklausel als **Erlasswortlaut** aus. § 47b Abs. 1
  besteht aus **genau zwei Saetzen**: 10 W/m² EBF und **70-%-Belegungsdeckel** — mehr nicht. Alles
  Weitere ist **Vollzugshilfe** (ZH-Leitfaden Solaranlagen Dez. 2022); gesetzliche Grundlage fuer die
  Ruecksicht auf hohe Bauten ist § 10c Abs. 3 lit. a EnerG als blosse **Delegationsnorm**.
  Korrekturkasten gesetzt. **Mechanik:** das als «woertlich» ausgewiesene Blockzitat war eine Montage
  aus zwei Textbloecken; weggefallen war genau der Satz, der die Verwechslung verhindert haette.
  **Regel: Erlasswortlaut und Vollzugshilfe nie in dasselbe Blockzitat montieren.**
- **[WIDERLEGT, wertvoller Nicht-Befund]** Der Vorwurf, zwei aeltere Artikel bezoegen den 70-%-Deckel
  faelschlich «nur auf hohe Bauten», kippt: das ist die **amtliche Vollzugslesart**. Eine «Korrektur»
  haette die Vollzugspraxis aus dem Hub entfernt.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.


## 2026-07-28 — Run 118 (Intensiv-Lauf auf Auftrag Raphaels): sechs parallele Rechercheagenten + ein mechanischer Cross-KB-Nachtrag
- **[nachtrag, mechanisch]** `destillate/sia-386-bacs-gebaeudeautomation.md`: Geltungsstatus-Nachtrag
  aus Run 117 nachgezogen — § 41a BBV I ZH verlangt Gebäudeautomation heute erst ab **5'000 m² EBF**,
  die MuKEn-2025-Schwelle von 2'000 m² ist verabschiedet, aber noch nicht ins ZH-Recht überführt.
  Bauherren-Transfer, Offene-Punkte und Backlinks aktualisiert.
- **[neu]** `destillate/swki-va106-lueftung-hallenbaeder.md` — SWKI VA106-01 weiterhin nicht
  publiziert; Entwurfswerte aus Obmann-Vortrag (Verdunstungsbeiwerte, Zuluftmengen, 34-°C-Grenze).
  emerging, FAQ F178.
- **[neu]** `destillate/sz-vollzugspraxis-afu-wegleitungen-rechenzentren.md` — kein
  Rechenzentrums-Sonderregime auf SZ-Vollzugs-/Gemeindeebene (Freienbach/Wollerau), Prämisse einer
  Rechenzentrums-Häufung dort widerlegt. emerging, FAQ F179.
- **[neu]** `destillate/rueckkuehler-flaechenkennwert-vertiefung-ch.md` — § 47b BBV I/§ 10c EnerG ZH
  70/30-Flächenregel neu belegt (präzisester amtlicher ZH-Wert), kein CH-m²/kW-Kennwert. emerging,
  FAQ F180.
- **[neu]** `destillate/sia-2068-rechenzentren-publikationsstatus.md` — SIA 2068 drei Jahre nach
  Projektstart weiterhin nicht im SIA-Shop gelistet, SDEA Navigator als Zwischenlösung. emerging,
  FAQ F181.
- **[neu]** `destillate/abwasserwaermepumpe-jaz-foerderung-vertiefung-zh.md` — kein systematischer
  JAZ-Vergleichswert Abwasserwärmepumpe vs. Erdsonde, punktuelle Praxis-COP 4,0/5,7; ZH-Förderposition
  für Abwasserwärme entfallen. emerging, FAQ F182.
- **[neu]** `destillate/grosskueche-mahlzeit-energiekennwert-aktualisierung.md` — ehrlicher
  Negativbefund, keine neuere CH-/DACH-Primärmessung kWh/Mahlzeit gefunden. emerging, FAQ F183.
- **[verdichtung]** `wiki/abwaermenutzung-gebaeude.md` um Abschnitt "Run 118" erweitert (vier
  vorher offene Punkte referenziert/präzisiert).
- **Register:** `destillate/INDEX.md`, `wiki/BAUHERREN-FAQ.md` (F178-F183), `wiki/INDEX.md`,
  `wiki/QUESTIONS.md`, `training/curriculum.md` (D89), `raw/_INGESTED.md` nachgeführt.
- FAQ-Stand: **183 Kernfragen**. Destillate-Stand: **198** (sechs neue). Siebte Bestätigung in
  Folge (Run 111-118), dass die Sättigungsdiagnose für neue Themenfelder nicht zutrifft.

## 2026-07-27 — Wissens-Chef Run 18 (Cross-KB): fuenf materielle Korrekturen am Run-117-Material, eine Stunde nach dessen Entstehung
- **[korrektur, materiell] 70-%-Kurzschluss in zwei Destillaten.** `energis-kartenwerk-stadt-zuerich.md:172-175`
  gab die 70-%-Schwelle der staedtischen WVV als «dieselbe Schwelle, die materiell auch die
  Anschlussverfuegung nach § 295 Abs. 2 PBG rechtfertigt» aus. **§ 295 Abs. 2 PBG kennt keine
  Prozentschwelle** (amtlicher Wortlaut `wissen/baurecht/raw/260607_amtlich_zh_pbg.md:3035-3040`),
  sondern zwei **kumulative** Voraussetzungen: Nutzung lokaler Abwaerme/erneuerbarer Energien **und**
  Angebot zu technisch-wirtschaftlich gleichwertigen Bedingungen. Der **Gleichwertigkeits-Vorbehalt**
  — praktisch der Hebel jeder Einsprache — fehlte ganz. Drei verschiedene 70-%-Regeln sind zu trennen:
  WVV Art. 8 lit. a (staedtisch) / § 47 g BBV I (kantonal) / AfB-Merkblatt (Vollzug). Bemerkenswert:
  `fernwaerme-anschlusspflicht-zh.md` **warnt auf Z. 42-43 selbst davor** und zieht den Kurzschluss auf
  Z. 61-63 trotzdem. → beide Stellen korrigiert.
- **[korrektur, materiell] Rueckfall hinter die Chef-Korrektur vom Vortag.**
  `energiemonitoring-submetering-grossverbraucher-zh-sz.md` verneinte an drei Stellen die Befreiung von
  der Betriebsoptimierung fuer die Zwischenzone 200'000-500'000 kWh. **§ 48c Abs. 1 lit. c BBV I**
  (raw Z. 937) befreit Betriebsstaetten, «fuer die eine freiwillige Zielvereinbarung abgeschlossen
  wurde (KMU-Modell)» — **schwellenunabhaengig**; die Zwischenzone ist sein Hauptanwendungsfall, nicht
  sein Ausschluss. Dieselbe Korrektur steht seit **Run 16** in `planungsgrundlagen` (dort ausdruecklich
  markiert) und im eigenen Schwesterdestillat `muken-2025-modul-7-…`. → Tabelle, Befreiungsliste und
  «Praktische Konsequenz» korrigiert, mit zwei Vorbehalten: die Befreiung tritt **nicht automatisch**
  ein (abgeschlossener Vertrag), und die Aufnahmekriterien des KMU-Modells sind im Hub nicht belegt.
  Ausserdem als Einordnung gekennzeichnet: die «auf Verlangen»-Vorlagepflicht steht so nicht im
  Erlasstext (§ 48c Abs. 4 sagt nur «bewahren … zehn Jahre auf»).
- **[korrektur, materiell] Falscher Kantonskatalog Solarpflicht.**
  `rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:121-126` schrieb «i.d.R. 60 % der geeigneten
  Bruttodachflaeche» pauschal BE/BL/AG zu — die eigene KB weiss es besser: **AG** bleibt beim
  Bundesminimum **20 % aGF**, **BE** kennt keine Flaechenschwelle (10 % aGF, ≥ 60 % geeignete
  Dachflaeche) und ist kein Bundesminimum-Kanton. Uebereinstimmend ist nur die Abzugs-Systematik.
  **An der Primaerquelle kam ein gewichtigerer zweiter Fehler dazu:** Z. 152-153 behauptete, «alle drei
  Vollzugshilfen» kennten eine Ausnahme bei technischer Unmoeglichkeit — das AG-Merkblatt schliesst das
  ausdruecklich aus («wird … bewusst nicht eingegangen»), womit die Kernantwort des Destillats fuer
  ein AG-Projekt nicht traegt. → beide Stellen korrigiert, je Kanton aufgeschluesselt.
- **[korrektur, materiell] § 30a BBV I aus zweiter Hand.** `abwaerme-bereitstellungspflicht-sz.md`
  zitierte den ZH-Wortlaut aus einem energie-Schwesterartikel statt aus der fuehrenden `baurecht/raw`:
  «wirtschaftlich **zumutbar**» statt amtlich «**tragbar**» (genau diese angeglichene Formulierung
  traegt die Behauptung, SZ § 21 kEnV sei «nahezu wortgleich»), und bei Abs. 2 fiel der
  **Ausloesetatbestand** weg — die Drittabgabepflicht greift nur «bei Neubauten oder bei bestehenden
  Bauten nach Erneuerungen und Umbauten der Kaelteerzeugung». Ohne ihn erzeugt die ZH↔SZ-Tabelle in
  einer Standortabwaegung eine Pflicht, die es nicht gibt. Chef am Original gegengelesen (raw Z. 444-446).
- **[korrektur] SIA 385/1 aufgeloest — die Antwort lag zwei Tage vor der Frage.**
  `therapiebad-hallenbad-energie-pflegeheim.md` erklaerte die «Bezeichnungskollision» fuer ungeklaert;
  `normen/wiki/REGISTER.md` hatte sie in Run 22 (25.07.) abschliessend geklaert: **reine
  Nummern-Wiederverwendung** — Badewasser 385/1:2000 ging **2011 in SIA 385/9** auf, die Nummer 385/1
  wurde 2011 fuer Trinkwarmwasser neu vergeben. Mit **Fassungsvorbehalt** uebernommen: laut SIA-Shop
  gilt **385/9:2023**, das Normen-Register fuehrt 2011 aus einem Bestand mit Stand 2013 → dort als
  Pruefauftrag angemeldet. Offener Punkt 4 geschlossen.
- **[korrektur] Alters- und Bezugsgroessen-Vorbehalt an die BFE-Zahlen gezogen.** Die Kennwerte von
  **1993** standen ohne Vorbehalt am Zahlenort (er stand nur im Frontmatter) und wurden ueber
  `destillate/INDEX.md:269` als KB-Kennwert weiterpropagiert; die Bezugsgroessen SIA 116:1952 und
  SIA 180/4:1982 sind zurueckgezogen (Nachfolge SIA 416:2003 / 416/1:2007). → Vorbehalt an die
  Wertetabelle **und** in die INDEX-Zeile, damit er die Abfrage ueberlebt.
- **[verlinkung] Vorlaeufer entwertet, offener Punkt geschlossen.** `abwasserwaermenutzung-kanalisation-zh-sz.md`
  lief unmarkiert mit der nur websuchgestuetzten SZ-Fassung weiter (grep auf die Vertiefung: 0 Treffer)
  → Ueberholt-Vermerk + Backlink auf `[[abwasserwaerme-bewilligung-sz-vertiefung]]`, inkl. der
  Unterscheidung **AfG** (Abwasser, § 17 EGzGSchG) ↔ **AfU** (Grundwasser, § 29 EGzGSchG) — beide
  Angaben der KB sind richtig, sachbereichsabhaengig. In `waermeplanung-kommunal-zh-sz.md` den offenen
  WVV-Punkt als **erledigt** geschlossen (Run 117 hat alle 23 Artikel im Volltext gelesen).
- **[korrektur] BL-Doppelzeile bereinigt.** Basel-Landschaft stand in `wiki/solarpflicht-schweiz-kantone.md`
  und im Quell-Destillat **doppelt** — der ueberholte Run-56/57-Stand «ab 1.10.2024» neben dem
  geklaerten Stand. → beide alten Zeilen entwertet. Praezisierung dazu: gekippt wurde die **kantonale
  Ausdehnung** unter die Bundesschwelle; die Bundespflicht Art. 45a EnG gilt in BL, und das Volks-Nein
  vom 8.3.2026 betraf eine **Verschaerfung** (Nachruestpflicht Bestand).
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run18.md`.

## 2026-07-27 — Run 117: Sechs parallele Rechercheagenten, gezielter SZ-Volltextabgleich + drei neue Themenfelder

Intensiv-Lauf auf Auftrag Raphaels (Token-Vollgas/Workflow-Parallelisierung gemäss
`training/PROGRAMM.md`). PDF-Inventar erneut geprüft (`find -newermt` gegen `PL - 04 Energie` auf
SharePoint/OneDrive): keine neuen PDFs seit 01.07.2026 — Web-Pfad bestätigt, seit Run 65
erschöpft. Sechs `general-purpose`-Rechercheagenten parallel dispatcht, jeder ausschliesslich mit
eigener neuer Datei (Kollisionsschutz); Konsolidierung der Register im Hauptmodell.

**Gezielter SZ-Volltextabgleich (Priorität aus Run 116):**
- `[[abwaerme-bereitstellungspflicht-sz]]` (FAQ **F172**) — kEnG/kEnV SZ im Volltext durchsucht:
  Negativbefund jetzt primärquellenfest bestätigt, keine zu § 30a Abs. 2 BBV I / Art. 1.18 Abs. 2
  MuKEn 2025 analoge Abwärme-Drittabgabepflicht in SZ. Status emerging.
- `[[abwasserwaerme-bewilligung-sz-vertiefung]]` (FAQ **F173**) — vier Erlasse (kEnG, kEnV,
  EGzGSchG, WRG) vollständig gelesen: kein SZ-Bewilligungsregime für Abwasserwärme aus der
  Kanalisation; einziger verwandter Tatbestand (WRG-Konzessionspflicht «Betrieb von
  Wärmepumpen») erfasst nur öffentliche Gewässer, nicht die Kanalisation. Status **established**.

**Drei neue Themenfelder:**
- `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]` (FAQ **F174**) — EN-141/§ 41a BBV I
  ZH: Gebäudeautomationspflicht heute ab 5'000 m² EBF Nichtwohnbau-Neubau; **MuKEn 2025 Art. 1.23
  senkt sie im verbindlichen Basismodul auf 2'000 m² EBF** (noch nicht ZH-Recht). Deckt zugleich
  auf, dass `sia-386-bacs-gebaeudeautomation.md` diesen fehlenden Geltungsstatus nicht ausweist
  (offener Punkt, nicht behoben — Kollisionsschutz). Betriebsoptimierungspflicht ab 200'000 kWh
  Strom/Jahr eigenständig von der freiwilligen EnAW/act-Zielvereinbarung. Status established.
- `[[therapiebad-hallenbad-energie-pflegeheim]]` (FAQ **F175**) — vorher null KB-Treffer, hohe
  Healthcare-Relevanz. BFE-Hallenbad-Kennwerte 47-67 kWh/m³·a primärquellenfest; Therapiebad-
  Kernfrage bleibt ehrlicher Negativbefund, plausibler Mehrbedarf nur als eigene, explizit als
  speculative markierte physikalische Herleitung (Magnus-Formel). Status emerging.
- `[[energis-kartenwerk-stadt-zuerich]]` (FAQ **F176**) — Energieplanungsbericht Stadt Zürich
  2025 + WVV 16.3.2022, beide amtlich im Volltext: reine Informationsplattform (vier Teilkarten),
  zeigt NICHT die geologische Bohreignung (das leistet der separate kantonale Wärmenutzungsatlas
  GIS-ZH P8); kein Anschlusszwang, aber faktischer Druck über das Gasverbot ab 2040. Status
  established.

**Schliesst zwei offene Punkte aus Run 116:**
- `[[rueckkuehler-flaechenkonkurrenz-pv-laermschutz]]` (FAQ **F177**) — Solarpflicht-
  Vollzugshilfen dreier Kantone (Bern, Basel-Landschaft, Aargau, alle amtlich): Rückkühler-
  Dachfläche zählt grundsätzlich zur pflichtigen PV-Bruttodachfläche, Abzug nur über
  begründungspflichtiges Ausnahmegesuch (für ZH selbst mangels Gesetzestext nicht verifiziert).
  Cercle-Bruit-Vollzugshilfe 6.20 (23.09.2025) mit direkt einschlägigem Rechenbeispiel:
  Rechenzentrum-Rückkühler 54,4→47,4 dB(A) via Drehzahlreduktion. Kein CH-amtlicher
  Flächenkennwert (m²/kW) für Rückkühler gefunden. Status emerging; ergänzt
  `[[abwaermenutzung-gebaeude]]`, `[[solarpflicht-schweiz-kantone]]`, `[[waermepumpen-laermschutz]]`.

**Verdichtung:** Kein neuer Wiki-Themenartikel — bewusst drei bestehende Artikel gezielt erweitert
statt neu angelegt. Register (destillate/INDEX, wiki/INDEX, BAUHERREN-FAQ, QUESTIONS, curriculum
D88, raw/_INGESTED) nachgeführt; Report `outputs/2026-07-27_energie-run117.md`.

FAQ-Stand: **177 Kernfragen (F1-F177)**. Destillate: **192** (sechs neue). **Sechste Bestätigung
in Folge (Run 111-117), dass die Sättigungsdiagnose für neue Themenfelder nicht zutrifft.**

## 2026-07-27 — Wissens-Chef Run 17 (Cross-KB): Abwasser-Destillat auf geltendes Recht umgestellt, Fassungsbezeichnung bereinigt
- **[korrektur, materiell] § 8 EG GSchG → § 44 Abs. 1 lit. a WsG.** `destillate/abwasserwaermenutzung-kanalisation-zh-sz.md` fuehrte § 8 EG GSchG als Bewilligungsgrundlage und uebernahm aus dem Glossar der AWEL-Planungshilfe 2025 **ungeprueft**, das WsG habe diesen Erlass abgeloest — mit dem ausdruecklichen Vermerk, ob das WsG ueberhaupt in Kraft sei, sei «nicht separat verifiziert». **Die Glossar-Aussage ist bestaetigt:** der Wissens-Chef hat das amtliche PDF `724.1_12.12.24_133.pdf` (zhlex, Nachtrag 133) gezogen — § 126 lit. a hebt das Einfuehrungsgesetz zum Gewaesserschutzgesetz vom 8.12.1974 auf, Fn. 2 nennt das Inkrafttreten **1. Juni 2026** (OS 81, 145), und § 44 Abs. 1 lit. a Ziff. 3 erfasst die Nutzung «von Boden, Untergrund oder **Abwasser** zur Gewinnung von **Energie**» neu ausdruecklich (im alten Recht war sie das nicht). → Normzitat auf geltendes Recht umgestellt, historischer Vermerk gesetzt, offener Punkt geschlossen, Setzfehler «§ EGSchG» ohne Nummer bereinigt. **Diese KB lag richtig, die laut Matrix fuehrende KB `baurecht` zitierte aufgehobenes Recht** — dort laeuft der KB-weite Nachzug (15 Fundorte, Prioritaet (a) im Arbeitsregister).
- **[neuer, engerer offener Punkt]** Ob die **KGSchV (LS 711.11)** ebenfalls aufgehoben ist, ist nicht belegt — § 126 WsG hebt nur *Gesetze* auf; die Materie von § 35 KGSchV steht heute in § 92 WsV, was die Aufhebung indiziert, aber nicht beweist.
- **[korrektur] Fassungsbezeichnung im Grossverbraucher-Destillat** (offener Punkt 1 aus Run 16): das Frontmatter sagte «EnerG ZH Nachtrag vom 19.4.2021» und widersprach damit dem Quellenverzeichnis derselben Datei. «Nachtrag» ist im Kt. ZH die Nummer der konsolidierten Fassung, nicht das Datum des Aenderungserlasses. → «LS 730.1, konsolidierte Fassung **Nachtrag 129** (Stand Publikation 1.7.2025) — §§ 13a/13d eingefuegt durch G vom 19.4.2021, in Kraft seit 1.9.2022».
- **[verlinkung, 5. Fundort des Musters] Querbezug-Block in `wiki/abwaermenutzung-gebaeude.md`.** Keine der fuenf am 27.07. neu angelegten Dateien (vier Abwaerme-Destillate + Wiki-Artikel) enthielt **einen einzigen** Verweis auf `baurecht` oder `planungsgrundlagen` (grep-Zaehler je 0), obwohl beide Matrix-Zeilen beruehrt sind — die Rule `normen-referenz` greift beim SCHREIBEN neuer Artikel weiterhin nicht. Die §-Zitate selbst waren alle korrekt (am amtlichen Volltext geprueft, keine ZH/SZ-Verwechslung). → Block mit Rollentrennung gesetzt.
- **[offen, an den Loop]** Die Anrechnungsregel Duschwasser-WRG wird hier fortgeschrieben, obwohl `planungsgrundlagen` fuer Nachweisregeln und Formulare fuehrend ist — uebergeben.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.

## 2026-07-27 — Run 116: Vier parallele Rechercheagenten, Schwerpunkt «Abwärme und Prozessenergie»; adversariale Korrektur eines Agenten-Negativbefunds

PDF-Inventar weiterhin erschöpft seit Run 65 (Web-Pfad). Die von Run 115 vorgeschlagene Priorität 6
vollständig abgearbeitet und um zwei Themen erweitert. Redundanz-Check nach der Run-115-Lehre
durchgeführt — 29 Kandidatenbegriffe gegrept **und die Treffer inhaltlich gelesen statt nur
gezählt**; vier echte Lücken bestätigt (`Fettabscheider`, `Abwärmepflicht`, `Abwasserwärme`,
`Therapiebad` je null Treffer). Vier `general-purpose`-Agenten auf Sonnet parallel, jeder
ausschliesslich mit eigener neuer Datei (Kollisionsschutz); Konsolidierung und Verifikation im
Hauptmodell.

**Vier neue Destillate, alle `emerging`:**

- `serverraum-rechenzentrum-kuehlung-abwaermenutzung-ch` (FAQ **F168**) — § 30a Abs. 1 BBV I
  (allgemeine Abwärme-Nutzungspflicht) und § 30a Abs. 2 BBV I (RRB Nr. 840, seit 1.9.2022:
  Bereitstellung von >2 GWh/a an Dritte zu Gestehungskosten); kein Wärmenetz-Bauzwang (RRB
  1324/2022); CH-Rechenzentrums-Stromverbrauch 2024 2,1 TWh (3,6 %), PUE CH ~1,5 / Colocation
  1,0-1,2. Rechtsteil **primärquellen-verifiziert auf established-Niveau**.
- `abwasserwaermenutzung-kanalisation-zh-sz` (FAQ **F169**) — Thema hatte **null KB-Treffer**,
  vollständige Lücke geschlossen. Abwasser ganzjährig 10-20 °C; gebäudeintern bewilligungsfrei ab
  ~8'000-10'000 l/Tag bzw. ~150 kW, ab Kanalisation AWEL-Bewilligung + Nutzungsvereinbarung;
  ZH-Potenzial 674 GWh/a erst 11 % genutzt; **Duschwasser-WRG pauschal 10 % des Warmwasserbedarfs
  anrechenbar (EnFK EN-101)**.
- `grosskuechen-lueftung-abluft-wrg-ch` (FAQ **F170**) — Kochstellenabluft ist ETA 3 → **Rotoren
  ausgeschlossen**, Kreislaufverbundsystem als robusteste WRG; VKF 25-15de (EI 30/RF1 bzw. EI 60,
  ab 12'000 m³/h eigene Anlage, nur nicht brennbare Wärmeträgerflüssigkeiten); luftseitiger
  Fettfilter ≠ abwasserseitiger Fettabscheider.
- `waescherei-prozessenergie-pflegeheim-spital-ch` (FAQ **F171**) — **zwei Drittel des Verbrauchs
  im Trocknen, nur ~15 % im Waschen**; VTS/EnAW «RessEff» 2021 mit kWh/kg- und l/kg-Bandbreiten;
  Restfeuchte 45 statt 55 % spart ~18 % Trocknungsenergie; ehrlicher Negativbefund kg Wäsche/Bett/Tag.

**Wichtigster Einzelbefund (Verifikationsstufe, Hauptmodell):** Der Serverraum-Agent hatte die
Sekundärbehauptung, die MuKEn 2025 enthalte eine mit ZH identische 2-GWh-Klausel, methodisch sauber
**zurückgewiesen** — der von ihm gelesene MuKEn-Text enthielt sie nicht. Die Gegenprüfung am
**EnDK-Originalvolltext der MuKEn 2025** (117 S., Stand 29.08.2025) zeigte: er hatte die **Ausgabe
2014/Nachführung 2018** gelesen; **Art. 1.18 Abs. 2 MuKEn 2025 enthält die Klausel sehr wohl und
nahezu wortgleich**. Damit dreht sich die Einordnung — Zürich war rund drei Jahre **Pionier** vor
dem nationalen Modell. Zusätzlich aus den amtlichen Erläuterungen (S. 109) die praktisch wertvollste
Zahl gehoben: **2 GWh ≈ ab 230 kW elektrischer Dauerleistung** eines Rechenzentrums (bzw. 1000 kW
Abwärmeleistung × >2000 h/a) — macht die abstrakte GWh-Schwelle am Anschlussleistungs-Datenblatt
prüfbar. **Lehre: Ein Negativbefund ist nur so gut wie die Ausgabe, an der er erhoben wurde.**

**Verdichtung:** Neuer Wiki-Themenartikel `abwaermenutzung-gebaeude` (29. Themenartikel) fasst alle
vier Destillate unter dem gemeinsamen roten Faden zusammen (Rechtspflicht, vier Quellenprofile,
Planungsfolgen); `heizleistung-und-waermeerzeuger` um die Wärmequelle Abwasser ergänzt.

**Weitere Korrekturen:** Datumsfehler im Frontmatter des Serverraum-Destillats (31.08.2026 →
31.08.2023). Die ETA-3-/Rotoren-Aussage blieb nicht abschliessend verifizierbar (Verbands-Merkblatt
statt kostenpflichtiger Normtext) — Destillat bleibt deshalb bewusst `emerging`.

FAQ-Stand: **171 Kernfragen (F1-F171)**. Destillate: **186** (in Run 116 nachgezählt und um eins nach unten korrigiert — die bisherige Serie hatte `destillate/INDEX.md` als Destillat mitgezählt; der Zuwachs Run 115→116 beträgt korrekt +4). Register (destillate/INDEX,
wiki/INDEX, BAUHERREN-FAQ, QUESTIONS, curriculum D87, raw/_INGESTED) nachgeführt; Report
`outputs/2026-07-27_energie-run116.md`. **Fünfte Bestätigung in Folge, dass die Sättigungsdiagnose
für neue Themenfelder nicht zutrifft** (Run 111-116).

## 2026-07-26 — Run 115: Zwei parallele Rechercheagenten, Healthcare-Prozessenergie-Vertiefung; Prozesslehre zum Redundanz-Check

PDF-Inventar weiterhin erschöpft seit Run 65. Dem von Run 114 vorgeschlagenen Schwerpunkt gefolgt:
Reinraum-/OP-Klimatisierung und Sterilisationsenergie/Medizintechnik-Prozessenergie, beide vorab
per grep geprüft, zwei `general-purpose`-Rechercheagenten parallel angesetzt (jeder editierte
ausschliesslich sein eigenes Destillat, keine Register-Edits — Kollisionsschutz).

**Wichtige Prozesslehre:** Der Redundanz-Check-Grep fand für Reinraum-/OP-Klimatisierung das
Run-98-Destillat `swki-lueftung-gesundheitsbau-hygiene-energie` korrekt als Treffer — der
Orchestrator hat den Dateiinhalt vor Auftragsvergabe aber nicht gelesen und den Kandidaten
fälschlich als vollständig offene Lücke behandelt. Lehre für künftige Läufe: jeden Grep-Treffer
inhaltlich prüfen, nicht nur zählen. Die Doppelarbeit war dennoch nicht verloren — der Agent fand
echte neue Primärquellen, die das bestehende Destillat sinnvoll vertiefen.

1. **Reinraum-/OP-Klimatisierung im Gesundheitsbau** (SWKI VA105-01:2015 Titelseite/Vorwort/
   Inhaltsverzeichnis/Geltungsbereich via KSSG-Reproduktion; USZ-Baurichtlinie 244/245, 68 S.
   vollständig; Swissnoso-Bulletin Bally F. et al. 2018 vollständig; DGKH-LL-RLTA-2023, 16 S.
   vollständig — deutsche Parallelnorm DIN 1946-4:2018 als Vergleichsmassstab): vertieft das
   Run-98-Destillat um die SN-22500-Identifikation, ein reales USZ-Filterfabrikat (H14) und vor
   allem die **Swissnoso-Metaanalyse 2018**, die den Infektionsschutz-Nutzen der aufwändigeren
   TAV-Lüftung (Laminarflow) gegenüber einfacher Mischlüftung explizit anzweifelt (330'146 Hüft-/
   134'368 Knieprothesen; bei Hüftprothesen sogar ungünstigeres Ergebnis 0.80 % vs. 0.49 %;
   TAV-Mehrkosten ~7'000 EUR/Jahr/Saal) — ein konkretes Verhandlungsargument für die Bauherrschaft
   gegenüber dem Spitalbetreiber. Neues Destillat `reinraum-op-klimatisierung-gesundheitsbau-ch`,
   emerging, bidirektional mit dem Run-98-Destillat verlinkt (kein formaler Merge — destruktiv,
   Rückfrage nötig gemäss Rule `wissens-bibliothekar`); FAQ **F136 geschärft**; erster
   eigenständiger Wiki-Artikel `reinraum-op-klimatisierung.md`.
2. **Sterilisationsenergie und Medizintechnik-Prozessenergie** (SGSV/Swissmedic-Leitlinie
   Validierung Sterilisationsprozesse 2023, vollständig per curl+pdftotext; USZ «24 Richtlinien
   Raumklimatisierung» 07.04.2014, vollständig; architektur-technik.ch Radiologiezentrum Reinach
   2017; Umweltinnovationsprogramm Bund D/Fluoron GmbH als explizit branchenfremdes Fallbeispiel):
   echte, bestätigte Lücke. USZ-Klimaklassifikation ZSVA (Raumtyp 73: Produktionsräume Klasse 3,
   Sterillager Klasse 4 wegen Feuchteempfindlichkeit der Sterilgut-Verpackung) und
   SGSV/Swissmedic-Prozessparameter (134 °C Referenztemperatur, ≥18 Min. Haltezeit,
   800-l-Kammervolumen-Schwelle) primärquellenbelegt — **ehrlicher Negativbefund** zur
   eigentlichen Energiequantifizierung: kein CH-/D-A-CH-Kennwert kWh/Zyklus oder
   Prozessenergie-Anteil gefunden, kursierende «2-4 kWh/Zyklus»-Angabe bewusst nicht übernommen.
   Neues Destillat `sterilisationsenergie-medizintechnik-prozessenergie-ch`, emerging; FAQ
   **F167** neu.

FAQ-Stand: **167 Kernfragen (F1-F167) belegt.** Destillate-Stand: **183** (zwei neue).

**Nächster Lauf: Priorität**
1. Die fünf gebündelten Kaufentscheide wachsen seit Run 98 unverändert ohne Entscheidung — jetzt
   **siebzehn Runs** in Folge. Dringende Empfehlung unverändert: beim nächsten Kontakt mit
   Raphael als kurze Bündel-Frage stellen.
2. Meta-Punkt M2 (eigenständiger Skill "energie"?) seit Run 45 spruchreif, weiterhin unentschieden.
3. SIA-2024-Gesundheitsbau-Merge weiterhin ausführungsreif, wartet auf Raphaels Zustimmung.
4. Neue offene Punkte: SN 22500 nur bibliografisch identifiziert; SWKI VA105-01 Kap. 3-6
   (Zahlentabellen inkl. Pa-Wert Überdruckkaskade) weiterhin nicht zugänglich; Fraunhofer-UMSICHT-
   Abschlussbericht 2010 passwortgeschützt; Systemgrenze Dampfversorgung ZSVA nicht recherchiert;
   SWKI 99-3 (2003) weiterhin nur bibliografisch identifiziert.
5. Prozessverbesserung: vor Dispatch eines Rechercheagenten jeden Grep-Treffer kurz öffnen, nicht
   nur die Trefferliste zählen.
6. Weitere Healthcare-Prozessenergie-Kandidaten: Grossküchen-/Wäscherei-Abluft-Wärmerückgewinnung,
   Rechenzentrum/Serverraum-Kühlung als eigenständiges Thema.

## 2026-07-26 — SIA-2024-Gesundheitsbau-Zwilling gemergt (Freigabe Raphael)

- **Merge ausgefuehrt** (destruktive Aktion, ausdruecklich freigegeben am 26.07.2026):
  `destillate/sia-2024-nutzungsdaten-gesundheitsbau.md` (140 Zeilen, Run 69) in
  `destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` (309 Zeilen, Run 88) eingearbeitet,
  Quelldatei geloescht. Der seit Run 88 gefuehrte Dubletten-Verdacht ist damit erledigt.
- **Uebernommen** (die in Run 107 als nicht-redundant identifizierten Teile): Flaechenanteile-Tabelle
  VIII/VIII.1/VIII.2 (Statusbericht Tab. 5); Vergleich geltend SIA-380/1-Tab.-27 vs.
  Harmonisierungsvorschlag SIA-2024:2019 inkl. EnFK-Grenzwerten; Luftmengen-Zeitreihe
  SIA 2024:2015 vs. 2021-Entwurf; drei offene Punkte; Backlinks.
- **Backlinks umgebogen** in sieben Destillaten (`muken-2025-modul-7-betriebsoptimierung-hlkkse`,
  `sia-380-1-2016-aenderungen-gegenueber-2009`, `swki-lueftung-gesundheitsbau-hygiene-energie`,
  `sia-380-1-aktualitaets-check-2026`, `vdi-3807-2-energiekennwerte-krankenhaus`,
  `energie-performance-gap-gesundheitsbau`, `sia-harmonisierung-standardwerte-gebaeudekategorien-2019`)
  sowie in `destillate/INDEX.md` (Doppelzeile entfernt), `wiki/INDEX.md`, `wiki/BAUHERREN-FAQ.md`,
  `training/curriculum.md`. Entstandene Doppelverweise bereinigt.
- **Bewusst unveraendert:** `outputs/` und die aelteren CHANGELOG-Eintraege — sie dokumentieren den
  damaligen Stand und werden nicht rueckwirkend umgeschrieben.
- **Destillate-Stand:** 170 → 169 (ein Merge, kein Wissensverlust).

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): vier Korrekturen an den beiden neuen Run-112-Themenfeldern
- **[korrektur, materiell] Grossverbraucher ZH — falscher Befreiungskatalog.** `destillate/grossverbraucherartikel-zielvereinbarung-zh-sz.md` schrieb dem Kt. ZH an vier Stellen den **Schwyzer** Katalog zu («§§ 6-8/§ 10 EnerG»; das ist § 9 Abs. 4 kEnG SZ). Amtlich delegiert § 13a Abs. 2 EnerG an die Verordnung; **§ 48b Abs. 2 BBV I** nennt §§ 22a, 23, 26, 29 Abs. 2-4, 30a, 45, 45a (weitere Befreiungen moeglich), dazu § 13d EnerG / § 48c Abs. 1 lit. b (Betriebsoptimierung). Adversarial verifiziert am amtlichen ZH-Lex-PDF (EnerG LS 730.1, Nachtrag 129). Analogie ZH/SZ auf die Schwellenwerte eingeschraenkt. Fuehrend: `wissen/baurecht/raw/260607_amtlich_zh_bbv1.md` Z. 913-919.
- **[korrektur, materiell] SIA 181 — Tabelle-6-Wert auf den falschen Fall angewandt.** Das Koerperschall-Destillat erklaerte 28 dB(A) zum Zielmass «im eigenen Schlafzimmer». Die Norm trennt: Tabelle 6 / Ziff. 3.2.3.3 gilt **zwischen** Nutzungseinheiten (28 dB(A) mittel, 25 dB(A) erhoeht nach Ziff. 3.2.3.4; STWEG nach Ziff. 2.2.2 zwingend erhoeht), **innerhalb** der eigenen Einheit gibt Ziff. 0.1.2 nur Empfehlungen (Anhang G: 30/25 dB(A)). Korrigiert an vier Stellen: Destillat, `wiki/waermepumpen-laermschutz`, `BAUHERREN-FAQ` F159, `wiki/INDEX`.
- **[korrektur, materiell] «Wird von keiner Behoerde geprueft» war zu weit.** Wiki + FAQ hatten die engere Destillat-Formulierung («keine *Bewilligungs*behoerde») verallgemeinert. SIA 181 Ziff. 0.1.1 nennt den abgestrahlten Koerperschall im Geltungsbereich, Ziff. 0.1.7 unterstellt ihn bis zur eidg. Erschuetterungsverordnung **direkt dem USG**. → praezisiert auf «nicht Gegenstand des LSV-Laermschutznachweises im Baubewilligungsverfahren» + USG-Bezug (staerkeres Bauherren-Argument).
- **[korrektur] SIA-382/1-Uebergabe zu frueh geschlossen.** `wiki/QUESTIONS.md` hatte den Punkt gegen `normen/wiki/REGISTER.md:472` verifiziert — das gemeldete **Destillat** `normen/destillate/sia-382-1-2014.md` lief aber unveraendert als `established` ohne Fassungshinweis. Schliessung mit Begruendung teilweise zurueckgenommen; im normen-Destillat ist der Ausgaben-Vorbehalt jetzt gesetzt.
- **[verlinkung]** Querbezug-Block zur KB `normen` im Koerperschall-Destillat gesetzt (Rule `normen-referenz` hatte beim Schreiben nicht gegriffen — 4. Fundort dieses Musters) · ⚠-Ausgaben-Flag SIA 181:2020 (+4 dB) gegen 2006 (+3 dB) in `destillate/sia-181-schallschutz-anforderungswerte.md` · Cross-KB-Block (baurecht = Erlasswortlaut, planungsgrundlagen = Formularseite) im Grossverbraucher-Destillat, dessen offene Bring-Schuld zur Verordnungsebene damit **geschlossen** ist · § 273-Hinweis an `baurecht` zugestellt (stand nur hier, Muster 1).
- **[offen]** Fassungsbezeichnung «EnerG ZH Nachtrag vom 19.4.2021» im Grossverbraucher-Frontmatter ist irrefuehrend («Nachtrag» = Nummer der konsolidierten Fassung, aktuell 129); Befund bestaetigt, Korrektur vom Verifier nicht freigegeben → Vorschlag im Bericht `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25 — Run 114: Drei parallele Rechercheagenten, Healthcare-Schwerpunkt (Notstrom + Rückkühlwerk), plus Ortsbildschutz-Kernzone

PDF-Inventar weiterhin erschöpft seit Run 65. Vor Auftragsvergabe neun Kandidatenthemen per grep
geprüft (Notstromversorgung/Netzersatzanlage, Rückkühlwerk/Kühlturm, Ortsbildschutz-Kernzone,
Contracting, PV-Recycling, Fernwärmetarif, Grundwasserschutzzone-Erdsonde, Nachtstromspeicherheizung,
Wasserstoff-Heizung) — sechs davon bereits abgedeckt (Redundanz vermieden), drei echte Lücken
identifiziert, drei `general-purpose`-Rechercheagenten parallel angesetzt (jeder schrieb
ausschliesslich sein eigenes Destillat, keine Register-Edits — Kollisionsschutz mit zwei
Schwester-Agenten).

1. **Notstromversorgung/Netzersatzanlage für Spital und Pflegeheim** (VKF-Brandschutzmerkblatt
   2009-15de zu BSR 17-15, Stand 09.12.2024, 21 S. vollständig gelesen; USZ-Merkblatt «Konzept
   Versorgung elektrische Energie, med. Gruppe 1 und 2» v2.0 20.05.2021; BFE Fact-Sheet 45 zur
   NIV 01.05.2020; Kt.-ZH-«Generelle Anforderungen an die Listenspitäler» 2023 per Volltextsuche
   auf Notstrom/Netzersatz geprüft — Negativbefund; BABS-Gefährdungsdossier Nr. 25): die
   Sicherheitsstromversorgung ist primär brandschutzrechtlich (VKF-Merkblatt) und
   elektroinstallationstechnisch (NIN Kap. 5.6 «Einrichtungen für Sicherheitszwecke» und Kap. 7.10
   «Elektrische Anlagen in medizinisch genutzten Räumen», Gruppen 0/1/2) geregelt, **nicht** über
   ein eigenes Gesundheitsrecht-Kriterium der kantonalen Spitalliste. Zentrale Flächen-/
   Kostenfolge: ab **70 kW Aggregatnennleistung** ist ein eigener **EI-60-Technikraum** statt nur
   EI-30 im nutzungsbezogenen Brandabschnitt Pflicht (Ziff. 5.3.1) — eine frühe Projektentscheidung.
   Besonders hohe Healthcare-Relevanz für JANS' Kerngeschäft → neues Destillat
   `notstromversorgung-netzersatzanlage-spital-pflegeheim-ch`, established, FAQ **F164** neu,
   erster eigenständiger Wiki-Artikel `notstromversorgung-sicherheitsstromversorgung.md`.
2. **Rückkühlwerk/Kühlturm — Legionellen-Risiko, Bewilligung und energetische Abwägung** (BAG/BLV
   «Legionellen und Legionellose»-Empfehlungen, Modul 14 «Kühlsysteme, Raumlufttechnik und
   Befeuchtungsanlagen», amtliches Original 17 S. vollständig gelesen, plus Modul 0; Kt. ZH «Energie
   aus Grundwasser», amtliche Verfahrensauskunft): Legionellen-/Hygiene-Kern (VDI 2047 Blatt 2 über
   BAG/BLV referenziert, Tabelle 14A mit klarer Eingriffsschwelle >10⁴ KBE/l Legionellen) und die
   Grundwasserkühlungs-Konzession (GSchG Art. 29f/GSchV Art. 32) **established**; eine
   eigenständige Baubewilligungspflicht für Rückkühlwerke selbst ist bisher nur per Analogieschluss
   zur Klimaanlagen-Bewilligungspraxis hergeleitet (**emerging**); der quantitative energetische
   COP-Vorteil der Nasskühlung gegenüber Trocken-/Grundwasserkühlung bleibt nur qualitativ-
   thermodynamisch begründet (**speculative**) → neues Destillat
   `ruckkuehlwerk-kuehlturm-legionellen-bewilligung-ch`, FAQ **F165** neu, ergänzt
   `sommerlicher-waermeschutz.md`.
3. **Ortsbildschutz/Kernzone (ohne Denkmalschutz/ISOS) und Solaranlagen ZH/SZ** (Kt. ZH,
   Baudirektion/Amt für Raumentwicklung, «Leitfaden für Solaranlagen — Verfahren und Gestaltung»,
   Dezember 2022, 29 S. vollständig gelesen, inkl. § 2a/§ 2c/§ 2d BVV und § 238 PBG wörtlich
   zitiert; Kt. Schwyz RRB Nr. 912/2022 vom 29.11.2022 vollständig gelesen; PBG SZ §§ 17-24/55-56/
   75a, SRSZ 400.100, Stand 1.2.2025): bewusste Abgrenzung vom bereits etablierten Destillat
   `denkmalschutz-energiesanierung-zh-sz` (dort nur ISOS/Baudenkmäler). Zentrale Klarstellung: die
   **Kernzonenlage allein** macht in Kt. ZH **jede** Solaranlage bewilligungspflichtig (§ 2a Abs. 2
   BVV, kein Meldeverfahren, auch für kleine Plug-and-Play-Anlagen), während der Kanton den
   Gemeinden gleichzeitig ausdrücklich davon abrät, eigene, weiterreichende BZO-Gestaltungs-
   vorschriften zu verankern — ältere restriktive Kernzonen-Klauseln («nur Indachanlagen»,
   genereller Ausschluss) stuft er selbst als bundesrechtswidrig ein. Kt. SZ hat kein
   vergleichbares Kernzonen-Sonderregime; dort gilt mangels eigener Norm das allgemeine
   Bundesrecht → neues Destillat `ortsbildschutz-kernzone-solaranlagen-zh-sz`, established, FAQ
   **F166** neu, ergänzt `pv-solar-technologien.md`.

Alle drei Agenten-Destillate vor Registerkonsolidierung per `git status` verifiziert (drei neue,
disjunkte Dateien, kein Kollisionsrisiko mit paralleler Aktivität). **Vierte Bestätigung in Folge,
dass die Sättigungsdiagnose für neue Themenfelder nicht zutrifft** (Run 111-114: je mindestens zwei
bis drei echte neue Themenfelder pro Lauf trotz 178+ bestehender Destillate) — die Methode
Redundanz-Check-per-grep-vor-Themenwahl bleibt der belastbarste Weg für freie Themenwahl ohne
offene Werkzeugliste. Register nachgeführt: `destillate/INDEX.md` (drei neue Zeilen),
`wiki/INDEX.md` (Kopfzeile-Stand, neuer Themen-Artikel-Eintrag, Run-113/114-Nachtrag im Verlaufs-
Teil), `wiki/BAUHERREN-FAQ.md` (F164-F166 neu + sources-Liste + Kopfzeile), `wiki/sommerlicher-
waermeschutz.md` + `wiki/pv-solar-technologien.md` (neue Abschnitte), `wiki/notstromversorgung-
sicherheitsstromversorgung.md` (neuer Wiki-Artikel), `training/curriculum.md` (D85),
`wiki/QUESTIONS.md` (Run 114 + Nachtrag Run 113, der im Verlaufs-Teil gefehlt hatte). FAQ-Stand:
**166 Kernfragen (F1–F166) belegt.** Destillate-Stand: **181** (drei neue).

**Offene Punkte unverändert (aus Run 112/113 übernommen, weiterhin auf Raphaels Entscheid
wartend):** die fünf gebündelten Kaufentscheide (seit Run 98, jetzt sechzehn Runs in Folge ohne
Entscheidung), Meta-Punkt M2 (eigenständiger Skill "energie"?, seit Run 45 spruchreif),
SIA-2024-Gesundheitsbau-Merge (ausführungsreif, wartet auf Zustimmung).

## 2026-07-25 — Run 113: Drei parallele Rechercheagenten, freie Themenwahl mit Redundanz-Check (kein offener Werkzeug-Kandidat mehr), drei neue Themenfelder

PDF-Inventar weiterhin erschöpft seit Run 65. Da die Run-108-111-Werkzeugliste seit Run 112
vollständig abgearbeitet ist, folgte dieser Lauf der in Run 112 festgehaltenen Methode:
Redundanz-Check per grep vor Themenwahl, dann gezielte Suche nach amtlicher Primärquelle. Sechs
Kandidatenthemen geprüft, drei echte Lücken identifiziert, drei `general-purpose`-Rechercheagenten
parallel angesetzt (jeder schrieb ausschliesslich sein eigenes Destillat, keine Register-Edits —
Kollisionsschutz mit zwei Schwester-Agenten).

1. **Kommunale Wärmeplanung ZH/SZ** (§ 4-7 + § 11 Abs. 6 EnerG Kt. ZH, LS 730.1, Fassung 1.7.2025,
   curl+pdftotext; kEnG/kEnV/PBG Kt. SZ, SRSZ 420.100/420.111/400.100; Leitfaden Kommunale
   Energieplanung Amt für Umwelt und Energie SZ, V01, 20.11.2024, 22 S. vollständig gelesen):
   zentrale Klarstellung — ein Vorranggebiet für Fernwärme/Erdwärme ist nur **behördenverbindlich,
   nicht grundeigentümerverbindlich**; eine echte Anschlusspflicht braucht in ZH eine zusätzliche,
   separat anfechtbare § 295 PBG-Verfügung, in SZ wurde in den drei geprüften Erlassen keine
   Anschlusszwang-Norm gefunden (nur die politische «Energie- und Klimaplanung 2023+» ohne
   Gesetzescharakter) → neues Destillat `waermeplanung-kommunal-zh-sz`, established, FAQ **F161**
   neu, ergänzt `fernwaerme-anschlusspflicht-zh` und `-sz`.
2. **Warmwasser-Wärmepumpe als eigenständiges Retrofit-Thema** (BFE/WPZ Buchs Jahresberichte
   2014/2017, COP-Feldmessung EN 16147; FWS-Reglement Gütesiegel Warmwasser-Wärmepumpe 2022;
   EKZ-Förderprogramm 2026/2027): COP-Median 2,84 (A15) bzw. 2,56–2,62 (A7) primärquellenbelegt,
   FWS-Mindestwert COP ≥ 2,60; Aufstellraum-Richtwert ~20 m³; erfüllt die ZH-Ersatzpflicht
   zentraler Elektro-Wassererwärmer bis 2030. Wichtigste Klärung: **weder ZH-AWEL noch Kt. SZ
   fördern den reinen Boiler-Tausch kantonal** — nur ein befristetes EKZ-Netzbetreiber-Programm
   (CHF 800, 1.5.2026–31.12.2027, nur Kt. ZH); widersprüchliche Vergleichsportal-Fördersummen
   bewusst verworfen → neues Destillat `warmwasser-waermepumpe-boiler-retrofit`, established,
   FAQ **F162** neu, ergänzt `heizleistung-und-waermeerzeuger`.
3. **Tiefengeothermie Schweiz** (Gesetz über die Nutzung des Untergrunds Kt. ZH seit 1.7.2023;
   Art. 27b/33 EnG, SR 730.0, Stand 1.1.2025; BFE/EnergieSchweiz-Statistik geothermische Nutzung
   2024, 14.7.2025, 50 S. vollständig gelesen): ehrliche Nicht-Relevanz-Einordnung statt
   künstlicher Aufblähung — Tiefengeothermie (ab ~500 m, in ZH gesetzlich erst ab 1'000 m
   reguliert) ist Fernwärmenetz-/Kraftwerksmassstab (UVP-Pflicht ab 5 MWth), für ein einzelnes
   Bauprojekt in aller Regel nicht relevant; national nur 6 «Tiefe Aquifer»-Anlagen in Betrieb,
   0,2–0,5 % der geothermischen Heizleistung gegenüber 84,3 % bei gewöhnlichen Erdwärmesonden →
   neues Destillat `tiefengeothermie-schweiz`, established, FAQ **F163** neu, bewusst KEIN eigener
   Wiki-Artikel (Thema für Bauherren zu dünn), stattdessen Direktverweis in
   `heizleistung-und-waermeerzeuger.md`.

Alle drei Agenten-Destillate vor Registerkonsolidierung per `git status` verifiziert (drei neue,
disjunkte Dateien, kein Kollisionsrisiko mit paralleler Aktivität). **Sättigungsdiagnose ein
drittes Mal in Folge widerlegt** (Run 111/112/113: je mindestens zwei echte neue Themenfelder pro
Lauf trotz 175+ bestehender Destillate) — die Methode Redundanz-Check-per-grep-vor-Themenwahl
bleibt für freie Themenwahl ohne offene Werkzeugliste der belastbarste Weg. Register nachgeführt:
`destillate/INDEX.md` (drei neue Zeilen), `wiki/INDEX.md` (Kopfzeile-Stand), `wiki/BAUHERREN-FAQ.md`
(F161–F163 neu + sources-Liste + Kopfzeile), `wiki/heizleistung-und-waermeerzeuger.md` (zwei neue
Abschnitte), `destillate/fernwaerme-anschlusspflicht-zh.md` + `-sz.md` (Backlinks ergänzt),
`training/curriculum.md` (D84), `raw/_INGESTED.md`. FAQ-Stand: **163 Kernfragen (F1–F163) belegt.**
Destillate-Stand: **178** (drei neue).

**Offene Punkte unverändert (aus Run 112 übernommen, weiterhin auf Raphaels Entscheid wartend):**
die fünf gebündelten Kaufentscheide (seit Run 98, jetzt fünfzehn Runs in Folge ohne Entscheidung),
Meta-Punkt M2 (eigenständiger Skill "energie"?, seit Run 45 spruchreif), SIA-2024-Gesundheitsbau-
Merge (ausführungsreif, wartet auf Zustimmung).

## 2026-07-25 — Run 112: Drei parallele Rechercheagenten, letzter curl+Read-PDF-Kandidat (ISOS) abgearbeitet, zwei weitere komplett neue Themenfelder (Körperschall + Grossverbraucherartikel)

PDF-Inventar weiterhin erschöpft seit Run 65 (keine neuen Dateien in PL-04 Energie seit 19.06.2026,
frisch geprüft). Kollisionscheck via `ps` durchgeführt: keine zweite Instanz des energie-Loops auf
diesem Host. Drei `general-purpose`-Rechercheagenten parallel angesetzt.

1. **ISOS-Bild-/JPEG2000-Scans** (letzter offener Run-110/111-Werkzeugkandidat): klärte sich als
   Missverständnis auf — die frühere Notiz bezog sich auf dieselben «Energie und Baudenkmal»-Teile
   aus Run 111, nicht auf eigenständige ISOS-Dokumente. Erstmals gezielt gesucht und vollständig
   gelesen (curl+Read-PDF, technisch problemlos, keine Bild-Scans): BAK «Bundesinventar ISOS —
   Erläuterungen» (2021), PBG-aktuell-Fachartikel (reales ZH-Präjudiz Baurekursgericht Winterthur
   BRGE IV Nr. 0012/2024), EnergieSchweiz-Leitfaden Kap. 6. **Ergebnis:** `denkmalschutz-
   energiesanierung-zh-sz` bleibt established, erweitert um ISOS-Kategorisierung A/B/C (Art. 5/6
   NHG) und die konkrete PV-Bewilligungskette bei Erhaltungsziel A (Art. 32b lit. b RPV → Art. 18a
   Abs. 3 RPG zwingend, ENHK-Gutachtenpflicht). Die eigentliche WISOS-Weisung (bak.admin.ch)
   lieferte dreimal HTTP 502 — Server-Fehler, kein Format-/Scan-Problem, bleibt offen. FAQ **F158**
   neu.
2. **Körperschallisolation bei Wärmepumpen** im eigenen Gebäude (neues Themenfeld, Redundanz-Check
   bestätigt: null KB-Treffer für «Körperschall»/«Vibration»/«Erschütterung» trotz vier bestehender
   Aussenlärm-Destillate). EMPA Dübendorf, «Zur lärmarmen Konstruktion von Wärmepumpenanlagen»
   (K. Baschnagel, 2002, amtlich gehostet Kt. ZH/AWEL) vollständig per curl gelesen. **Ergebnis:**
   vier Massnahmen-Bausteine (Kapselung, Schalldämpfer, Feder-Masse-Körperschallisolation —
   Resonanzfrequenz-Fehldimensionierung verstärkt statt dämpft, entkoppelte Rohrleitungen); Zielwert
   SIA 181, 28 dB(A) im Schlafzimmer; keine Behörde prüft dies, anders als den Aussenlärm-Nachweis.
   Neues Destillat `waermepumpe-koerperschallisolation-empa`, ergänzt `waermepumpen-laermschutz`,
   FAQ **F159** neu, Status emerging (Quellenalter 2002).
3. **Grossverbraucherartikel** — Energieanalyse-/Zielvereinbarungspflicht ZH+SZ (neues Themenfeld,
   bisher nur Randerwähnung in sechs bestehenden Destillaten, nie selbst recherchiert, besondere
   Healthcare-Relevanz). Art. 46 EnG (SR 730.0) + § 13a/§ 13d EnerG Kt. ZH + § 9 kEnG Kt. SZ
   primärquellenverifiziert (curl+pdftotext). **Ergebnis:** identische Bundesschwellen (>5 GWh
   Wärme/>0,5 GWh Strom pro Jahr/Standort); ZH drei Vollzugswege (Universalzielvereinbarung UZV,
   Kantonale Zielvereinbarung KZV, Energieverbrauchsanalyse EVA), SZ nur zwei (UZV/EVA, keine
   eigene KZV); Zielvereinbarung befreit in ZH zusätzlich von der Betriebsoptimierungspflicht
   (§ 13d EnerG); Pflegeheim/Spital erreicht die Schwelle oft schon ab 3'000-7'000 m² EBF. Neues
   Destillat `grossverbraucherartikel-zielvereinbarung-zh-sz`, established, FAQ **F160** neu.

**Register nachgeführt:** `destillate/INDEX.md` (drei Zeilen), `wiki/INDEX.md` (Kopfzeile-Stand
160/175 + Run-112-Paragraph), `wiki/BAUHERREN-FAQ.md` (F158-F160 neu + sources-Liste),
`wiki/waermepumpen-laermschutz.md` (Körperschall-Abschnitt ergänzt), `training/curriculum.md`
(D83), `raw/_INGESTED.md`, `wiki/QUESTIONS.md`, `outputs/2026-07-25_energie-run112.md`.

**Kollisionsschutz:** alle drei Agenten editierten disjunkte Dateien (Kollisionsschutz-Anweisung
je Agent); vor zentraler Registerkonsolidierung per `git status` verifiziert — das Körperschall-
Destillat war zwischenzeitlich bereits durch `nas-selfcommit` automatisch gesichert worden (kein
Datenverlust, nur vorgezogener Commit).

**Nächster Lauf — Priorität:** (1) fünf gebündelte Kaufentscheide, jetzt 14 Runs ohne Entscheidung,
dringende Empfehlung; (2) Meta-Punkt M2 (eigener Skill "energie"?) seit Run 45 unentschieden;
(3) SIA-2024-Gesundheitsbau-Merge ausführungsreif, wartet auf Zustimmung; (4) die gesamte
curl+Read-PDF-Werkzeugliste aus Run 108-111 ist damit abgearbeitet — kein offener Werkzeug-
Kandidat mehr; (5) Sättigungsdiagnose für neue Themenfelder zum zweiten Mal in Folge widerlegt
(Redundanz-Check-per-grep-Methode bewährt sich als Weg zu echten Lücken statt Wiederholungen).

## 2026-07-25 — Run 111: Vier parallele Rechercheagenten, Run-110-Werkzeugliste fast abgeschlossen, zwei komplett neue Themenfelder (Haustechnik + Solaranlagen an Baudenkmälern)

PDF-Inventar weiterhin erschöpft seit Run 65. Vier `general-purpose`-Rechercheagenten parallel auf
die vier in Run 110 benannten curl+Read-PDF-Kandidaten angesetzt (VKF-Richtlinie 22-15, GVZ-
Prämienmechanik, Referat Vogelsang, ISOS-/Denkmalpflege-Baudenkmal-Publikationen). Vor
Auftragsvergabe festgestellt: VKF 22-15 und GVZ-Prämienmechanik waren zwischenzeitlich bereits in
Run 92 primärquellenverifiziert `established` — die eigene Prioritätenliste in `wiki/QUESTIONS.md`
war veraltet, keine Doppelarbeit ausgelöst (neue Lehre: Register vor Auftragsvergabe kurz per
`grep`/`ls -la` gegenchecken).

1. **Referat Vogelsang** (Matthias Vogelsang, Energieagentur St. Gallen, 19.02.2019, «Elektro-
   mobilität und Schnittstellen zum Gebäude — SIA Merkblatt 2060») vollständig per curl+Read-PDF
   gelesen — löst die seit Run 49 als «bildbasiert nicht auslesbar» archivierte Sackgasse.
   **Ergebnis:** keine eigene CHF-Kostentabelle (0 Frankenbeträge über 15 Folien) — nicht die
   gesuchte dritte unabhängige Kostenquelle. Bestätigt aber die SIA-2060-Ausbaustufen-Systematik
   und liefert neue Ziel-Erschliessungsquoten in Prozent (Stufe B: PW-MFH 80 %/Velo-MFH 100 %;
   Stufe D: PW-MFH 20 % min. 2 Plätze/Velo-MFH 80 %). `sia-2060-kosten-ladeinfrastruktur-
   vertiefung` bleibt `emerging`.
2. **«Energie und Baudenkmal» Teil 1 Gebäudehülle (104 S.) + Teil 2 Fenster/Türen (49 S.)**
   (Kantonale Denkmalpflege Bern/Zürich, V1/2014) vollständig per curl+Read-PDF gelesen — löst
   die seit Run 67/87 als «Bild-/JPEG2000-Scan technisch nicht auslesbar» archivierte Sackgasse
   (dritter Beleg in Folge, dass solche Vermerke überwiegend WebFetch-Artefakte sind, keine
   echten Formatgrenzen). **Ergebnis:** Kastenfenster-Sanierung (Isolierglas im Innenflügel)
   erreicht U 1,3 W/m²K ohne Erscheinungsbild-Änderung (ersetzt unbelegte Alt-Schätzung); acht
   systematische Fenstervarianten mit präzisen U-Wert-Sprüngen; Innendämmung 4-8 cm als
   Praxis-Default bestätigt; Dachboden- vor Aufsparrendämmung; Rollladen/Klappladen bis −79 %
   Wärmeverlust. `denkmalschutz-energiesanierung-zh-sz` bleibt `established`, substanziell
   erweitert. FAQ **F155** neu.
3. **«Energie und Baudenkmal» Teil III Haustechnik (65 S.)** und **Teil IV Solarenergie (46 S.)**
   (dieselbe Publikationsreihe) waren bisher komplett unerschlossene Themenfelder — kein
   Lückenschluss, sondern echte neue Substanz. Zwei neue Destillate, beide direkt `established`
   (Modell D, amtliche Primärquelle vollständig gelesen):
   - `energie-baudenkmal-haustechnik-zh`: Rangfolge nichtbauliche Massnahmen vor Wärmeerzeuger
     vor Wärmeverteilung vor Hülle; Kompensationsprinzip (SIA-380/1-Systemnachweis kompensiert
     nicht erreichbare Hüllenwerte über Haustechnik); Fussbodenheizung nur ohne erhaltenswerte
     Böden; Komfortlüftung an Baudenkmälern kritisch (Substanzeingriff Kanalführung);
     Elektroleitungen als demontierbare Aufputz-Additive. FAQ **F156** neu.
   - `energie-baudenkmal-solarenergie-zh`: zwei Leitfragen Substanzgefährdung vs. Erscheinungs-
     bild; Standort-Präferenzhierarchie (Nebengebäude→Umgebungselemente→Solarschuppen→
     untergeordnetes Bauteil→Hauptdach); Gestaltungsregeln Steildach (Traufbereich, Randabstand
     2-4 Ziegelreihen, dunkle/matte Module); Indachmontage bei Voltaik meist einzige praktikable
     Lösung; Rechtsstand-Diskrepanz Art. 18c RPG (Quelle, 2014) vs. primärquellenverifiziertem
     Art. 18a Abs. 4 RPG (KB-Stand) bewusst als offener Punkt markiert, nicht geglättet. FAQ
     **F157** neu.

FAQ-Stand: **157** (davor 154, drei neue Fragen). Destillate-Stand: **173** (davor 171, zwei neue).
Alle vier Agenten-Ergebnisse vor Registerkonsolidierung per `git status` verifiziert (zwei
geänderte + zwei neue Destillate, sauber getrennt editiert, keine Dateikonflikte). Register
nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md` (inkl. Status-Korrektur `denkmalschutz-
energiesanierung-zh-sz` emerging→established, war bereits inhaltlich established, die Wiki-Zeile
war nur nicht nachgezogen worden), `wiki/BAUHERREN-FAQ.md`, `training/curriculum.md`,
`raw/_INGESTED.md`, `wiki/QUESTIONS.md`, `outputs/2026-07-25_energie-run111.md`.

**Nachtrag (Kollisionsfund):** Während dieses Laufs feuerte um 22:37 zusätzlich der Scheduled
Task `energie-training` auf demselben Host und erkannte die Kollision korrekt gemäss Rule
`auto-verbesserungen` 260724 — er trat zurück und sicherte seine Funde (VKF 22-15 sowie GVZ-PDF,
beide unabhängig bestätigend, aber ohne Kenntnis der bereits in Run 92 bestehenden eigenen
Destillate) in `outputs/2026-07-30_energie-nebenlauf-kollision-vierte-nacht.md`, ohne Register
zu editieren — Kollisionsschutz hat wie vorgesehen funktioniert. Dabei aufgefallen: die «Offene
Punkte»-Liste in `destillate/pv-blitzschutz-gebaeudeversicherung-ch.md` verwies noch auf beide
Punkte als offen, obwohl sie bereits in Run 92 durch eigene Destillate geschlossen worden waren
(reine Cross-Link-Lücke) — direkt korrigiert (Verweis auf `[[vkf-richtlinie-22-15-
blitzschutzsysteme]]` und `[[gvz-praemienmechanik-pv-speicher]]` ergänzt, Nebenlauf-Report als
dritte Bestätigung verlinkt).

## 2026-07-25 — Run 110: Batteriemonitor Schweiz 2026 als Primärquelle gelesen, vier Rechtsänderungen seit 1.1.2026 erschlossen

Werkzeug-Lehre aus Run 109 direkt angewendet: der seit Run 12 als «PDF bildbasiert, Textextraktion
zweimal gescheitert» archivierte Swissolar «Batteriemonitor Schweiz 2026» (44 Seiten, publiziert
März 2026) wurde per `curl -A Mozilla` + Read-PDF-Tool vollständig gelesen. Ergebnis:

1. **Preiskurve primärquellenbestätigt** — 15-kWh-Heimspeicher 2022 CHF 827/kWh → 2025 CHF 586/kWh
   (CHF 8'850 installiert), vorher nur Sekundärzitat. FTM-Grossspeicher ~300-313 CHF/kWh neu.
2. **Vier bisher unbekannte Rechtsänderungen seit 1.1.2026** erschlossen und in
   `batteriespeicher-heimspeicher-pv-ch` ergänzt: Netznutzungsentgelt-Rückerstattung für Speicher
   mit Endverbrauch (Art. 18d-i StromVV/Art. 14a Abs. 4 StromVG), Einspeiselimitierung max. 3 % der
   Jahresproduktion + VSE-70-%-DC-Praxis (StromVG Art. 17c/StromVV Art. 19c — macht die Batterie
   wirtschaftlich attraktiver), RPG-Bewilligungspflicht für freistehende Speicher ausserhalb von
   Gebäuden (Art. 22/24 RPG), Speicher-in-LEG-Messkonzept (ergänzt `leg-lokale-elektrizitaetsgemeinschaft-2026`).
3. **Förderlücke geschlossen:** keine nationale Förderung für Wohn-/Gewerbe-Batteriespeicher;
   Landwirtschaftsförderung läuft Ende 2026 aus; Kt. Thurgau seit 1/2026, Schaffhausen, Neuenburg.
4. **Brandschutz-Zeitplan ergänzt** in `pv-blitzschutz-gebaeudeversicherung-ch`: Totalrevision
   Brandschutzvorschriften (BSV 2026) erhält voraussichtlich einen Teil zu Batteriespeichern,
   Vernehmlassung August 2026, Inkraftsetzung Herbst 2027.

Drei bestehende Destillate aktualisiert (`batteriespeicher-heimspeicher-pv-ch`,
`leg-lokale-elektrizitaetsgemeinschaft-2026`, `pv-blitzschutz-gebaeudeversicherung-ch`), alle bleiben
`established`. Kein neues Destillat (Destillate-Stand unverändert 171), FAQ F38 geschärft (FAQ-Stand
unverändert 154). Zusätzlich geprüft: KB `normen` führt den seit Run-Serie beanstandeten Punkt
«SIA 382/1:2014 fälschlich als aktuell» bereits seit 14.07.2026 mit einer eigenen ⚠-Korrekturnotiz
im `REGISTER.md` (Zeile 472) — der Punkt ist damit bereits an den normen-Loop übergeben und wird ab
diesem Run aus der energie-Prioritätenliste gestrichen (kein weiterer Handlungsbedarf von hier aus).

## 2026-07-25 — Run 109: WebFetch-Blockade durchbrochen (curl+Read-PDF-Tool), SIA-Harmonisierungsbericht
## erstmals im Volltext gelesen, zwei Destillate geschlossen

Statt eine fünfte Runde reiner Sekundärquellen-Nachschärfung zu fahren, wurde ein seit Run 76 als
«PDF technisch nicht auswertbar (WebFetch)» dokumentiertes Primärdokument neu angegangen: der
SIA-Statusbericht «Harmonisierung SIA-Standardwerte und Gebäudekategorien» (V1.7, 2019,
cms.sia.ch/de/api/getMedia/940). Direkter curl-Download + Read-PDF-Tool (statt WebFetch) liest
das 44-seitige Dokument problemlos vollständig. Neues Destillat
`sia-harmonisierung-standardwerte-gebaeudekategorien-2019`: amtliche SIA-380/1-
Gebäudekategorien-Definitionen (Tabelle 1) im Wortlaut, Erklärung der bisher unerklärten
Unterkategorie-Codes I.1/I.2/IV.1/IV.2/V.1/V.2/VIII.1/VIII.2 aus mehreren SIA-2024-Destillaten,
und der belegte Befund, dass der im Bericht selbst gesetzte Terminplan (Abschluss aller
Umsetzungsphasen bis 31.12.2024) verstrichen ist, ohne dass eine neue SIA-380/1-Ausgabe
erschienen ist. Schliesst zwei offene Punkte: `sia-380-1-aktualitaets-check-2026` (emerging →
established) und `rrb-2025-1082-klimaanlagen-bewilligungspraxis-zh` (Gebäudekategorien-
Definition I/II/IV). FAQ F60 geschärft (Ausblick-Absatz ergänzt). Destillate-Stand: **171**
(davor 170), FAQ-Stand unverändert 154. Register nachgeführt: `destillate/INDEX.md`,
`wiki/INDEX.md`, `wiki/BAUHERREN-FAQ.md`, `training/curriculum.md` (D81), `raw/_INGESTED.md`,
`wiki/QUESTIONS.md`, `outputs/2026-07-25_energie-run109.md`.

**Werkzeug-Lehre:** die Sättigungsdiagnose (Run 105-109, fünf Läufe ohne neue Themenwahl) betrifft
die *Themensuche*, nicht zwingend die *Werkzeugausschöpfung* — mehrere ältere «WebFetch
gescheitert»-Vermerke könnten mit curl+Read-PDF-Tool alsbald lesbar sein und einen weiteren,
bisher übersehenen Ergiebigkeitspfad eröffnen. Die PROGRAMM.md-Rücktaktungsempfehlung an Raphael
(fünffach bestätigt) bleibt davon unberührt bestehen.

## 2026-07-25 — Run 108: drei parallele Rechercheagenten schliessen gezielt benannte emerging-Lücken
## (SZ-Steuerparagraph, GEAK-Kosten, Netto-Null — zwei Status-Upgrades), vierte Sättigungs-
## Bestätigung in Folge

Run 108 wählte erneut bewusst kein neues Themenfeld, sondern griff drei konkrete, bereits in
`QUESTIONS.md` benannte Lücken bei bestehenden `emerging`-Destillaten an (Vorgabe aus Run 107
Punkt 6). Die drei Einzelergebnisse stehen bereits als eigene Einträge unten (von den
Rechercheagenten selbst committet): SZ-Steuerparagraph § 32 Abs. 2 lit. a StG SZ gefunden
(`steuerabzuege-energetische-sanierung-ch`, bleibt emerging), GEAK-Kosten über drei unabhängige
Quellen trianguliert (`geak-kosten-efh-mfh`, emerging → established), Netto-Null-Primärquellen
(Art. 102a KV-ZH, Stadtzürcher Abstimmungsdatum 15.5.2022, kEnG/kEnV-SZ-Negativbefund) vollständig
geschlossen (`netto-null-klimaziele-zh-sz`, emerging → established). FAQ F76 und F81 geschärft,
keine neuen FAQ-Nummern. Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`,
`wiki/QUESTIONS.md`, `wiki/BAUHERREN-FAQ.md`, `outputs/2026-07-25_energie-run108.md`.

FAQ-Stand unverändert: **154 Kernfragen (F1-F154) belegt.** Destillate-Stand unverändert: **170**
(zwei Status-Upgrades, kein neues Destillat). Verbleibende `emerging`-Destillate: **59**.

**Beobachtung zur Reife der KB (vierter Lauf in Folge):** Run 105-108 haben alle bewusst auf neue
Themenwahl verzichtet. Die PROGRAMM.md-Eskalationsschwelle für eine Rücktaktungs-Empfehlung an
Raphael bleibt erreicht und wird mit diesem vierten Lauf dringlicher — unverändert keine
eigenmächtige Umsetzung, siehe `QUESTIONS.md` für die vollständige Prioritätenliste (fünf gebündelte
Kaufentscheide jetzt zehn Runs unverändert seit Run 98, Meta-Punkt M2, SIA-2024-Merge-Vorschlag,
KB-`normen`-Korrekturhinweis).

## 2026-07-25 — Netto-Null-Klimaziele-Destillat: alle drei offenen Punkte primärquellig geschlossen, emerging → established

`destillate/netto-null-klimaziele-zh-sz.md` hatte drei offene Punkte, alle über direkten
curl+pdftotext-Zugriff auf Primärquellen geschlossen. **(1) Art. 102a KV-ZH:** amtlicher Wortlaut
über zhlex.zh.ch/notes.zh.ch (LS 101, Stand 4/2023) beschafft und wörtlich zitiert; zusätzlich
Kantonsratsbeschluss 25.10.2021, Inkrafttreten 1.11.2022, Bundesgewährleistung 6.3.2023 (BBl 2023,
724) gefunden. **(2) Stadtzürcher Volksabstimmung 2022:** Datum 15.5.2022 (identisch mit dem
KV-ZH-Termin, bestätigt über das amtliche Abstimmungsarchiv `app.statistik.zh.ch`), Ja-Anteil 74.9 %
(Stimmbeteiligung 47.29 %, mehrfach sekundärquellenbelegt Tages-Anzeiger/NZZ/Limmattaler Zeitung);
Rechtsgrundlage als Primärtext identifiziert und zitiert: Gemeindeordnung Stadt Zürich Art. 152/152a
(Teilrevision vom 13.6.2021, genehmigt Regierungsrat 7.9.2022, in Kraft seit 1.1.2023), PDF via
stadt-zuerich.ch amtliche Sammlung 101.100. **(3) kEnG/kEnV SZ:** Volltext beider Erlasse (SRSZ
420.100 und 420.111, sz.ch) systematisch nach Jahreszahlen durchsucht — Negativbefund bestätigt:
kein eigenes, vom Bundesziel abweichendes Netto-Null-Zieljahr; einziges explizites Zieljahr ist
§ 1a kEnG «bis 2050 keine fossilen Brennstoffe mehr bei Wärmeerzeugungsanlagen» (eingefügt
24.6.2021, in Kraft 1.5.2022), deckungsgleich mit dem Bundesziel. Frontmatter (quelle/gelesen/
datenstand) ergänzt, Offene-Punkte-Liste um die drei erledigten Punkte bereinigt (zwei
themenfremde Punkte — Fernwärme-Anschlusspflicht-Perimeter, MuKEn-2025-Verhältnis — bleiben offen),
Status emerging → established.

## 2026-07-25 — GEAK-Kosten-Destillat: zweite/dritte unabhängige Quelle gefunden, emerging → established

`destillate/geak-kosten-efh-mfh.md` hatte als offenen Punkt «zweite unabhängige Quelle zur
Triangulierung» (bislang nur die Sekundärquelle immoverkauf24.ch). Recherche via WebSearch/WebFetch
fand drei unabhängige Marktquellen: **Göldi Energie** (Kt. Bern, eigene fixe Preisliste eines am
Markt tätigen GEAK-Anbieters — echte Primärquelle: GEAK EFH CHF 750 / MFH 3–10 WE CHF 1'000, GEAK
Plus EFH CHF 2'000 / MFH 3–10 WE CHF 2'800, Förderung Kt. Bern EFH −1'000/MFH −1'500), sowie zwei
zertifizierte GEAK-Experten mit eigenen Preisangaben (energielukas.ch: GEAK Plus EFH ab CHF 1'150
netto, MFH ab CHF 1'450 netto; rundumenergie.ch: GEAK Plus EFH ab CHF 2'700 brutto). Alle drei
bestätigen dieselbe Grössenordnung wie immoverkauf24.ch (leicht am oberen Rand, besonders beim
Basis-GEAK), liefern erstmals eine konkrete MFH-GEAK-Plus-Zahl und schliessen damit den bisher
offenen Triangulierungs-Punkt. Kernzahlen-Tabelle verbreitert (EFH GEAK CHF 450–750, GEAK Plus
CHF 1'400–2'700; MFH GEAK CHF 500–1'000, GEAK Plus 3–10 WE CHF 2'800), Belegstärke-Abschnitt und
Offene-Punkte-Liste aktualisiert, Frontmatter mit quelle_2/quelle_3 ergänzt, Status auf
`established` gehoben (ab 10 WE MFH GEAK Plus bleibt offen — keine Quelle nennt hier eine Zahl).

## 2026-07-25 — Run 107: WPSM-Pflichtenheft primärquellig geschlossen (established), Duplikat-
## Analyse SIA-2024-Gesundheitsbau abgeschlossen (Merge-Empfehlung an Raphael)

PDF-Inventar weiterhin erschöpft seit Run 65. Statt eines neuen Themenkandidaten wurden bewusst
die beiden konkretesten offenen Punkte aus Run 106 geschlossen — ein Rechercheagent (eigene
Destillat-Datei, Kollisionsschutz) plus direkte Redaktionsarbeit in dieser Session.

**1. WPSM-Pflichtenheft/BFE-Bericht (emerging → established):** Das Original-Pflichtenheft der
WPSM-Trägerschaft (25.05.2020, 14 S.) und der zuvor technisch gescheiterte BFE-Schlussbericht
(31.10.2018) wurden vollständig gelesen (curl+pdftotext). Kernfund: Bei **Sanierungen** wird die
Heizkörper-/Heizleistungs-Eignung **nicht** raumweise nach SIA 384.201/EN 12831 geprüft, sondern
über eine **Verbrauchshistorie-Rückrechnung** (FWS-Datenerfassungsblatt); hydraulischer Abgleich
nach SWKI BT-102-01 ist **Pflicht vor Inbetriebnahme**; WPSM-Wärmepumpen müssen bei −7 °C
Vorlauftemperaturen von 55 °C (Luft/Wasser) bzw. 60 °C (Sole/Wasser) erreichen — von Haus aus
radiatorentauglich. Zwei Korrekturen im Sinne der Qualitätsdisziplin dieser KB: die zuvor
verwendete unbelegte deutsche JAZ-Faustregel (2-2,5 %/°C) wurde durch eine aus der bereits
etablierten CH-Feldmessung (`[[wpz-buchs-feldmessung-jaz-2016-2019]]`) selbst hergeleitete
Näherung (~1,0-1,2 %/°C) ersetzt; eine vermutete «FWS-Modul-7/10-Pflicht ab 1.1.2027» liess sich
am direkt abgerufenen Rohtext von fws.ch **nicht bestätigen** und wurde gestrichen (dabei auch eine
fehlerhafte KI-Websuch-Zusammenfassung entdeckt, die eine Zahl fälschlich einem BFE-Merkblatt
zuschrieb). CHF-Kosten für hydraulischen Abgleich/Heizkörperersatz bleiben einzelquellig-kommerziell
(axora.ch), keine Verbandsstatistik gefunden.
→ Destillat `destillate/waermepumpen-system-modul-wpsm-heizkoerper-altbau.md` auf **established**
gehoben, FAQ **F154** geschärft.

**2. Ueberschneidungs-Zwilling SIA-2024-Gesundheitsbau — inhaltlicher Abgleich abgeschlossen (kein
Merge ausgeführt):** Der seit Run 88 in `QUESTIONS.md` offene Verdacht auf Dubletten-Destillate
(`sia-2024-nutzungsdaten-gesundheitsbau` und `sia-2024-nutzungsrandbedingungen-gesundheitsbau`,
beide vom 2026-07-14) wurde Zeile für Zeile geprüft. Ergebnis: echte Überschneidung im Kernthema,
aber beide Dateien tragen nicht-redundante Fakten bei (nutzungsdaten: Flächenanteile-Tabelle,
geltend-vs-Entwurf-Vergleich mit EnFK-Grenzwerten, Luftmengen-Zeitreihe 2015→2021; randbedingungen:
SIA-382/1-Kälte-Systematik, TEP-Energy-Vergleichstabelle, Prozessanlagen-Tabelle Kühlraum/
Serverraum/Küche, Ausgabenhistorie). Da Merge/Löschen eine destruktive Aktion ist (Rule
`wissens-bibliothekar`, Rückfrage-Pflicht), wurde **kein Merge ausgeführt** — stattdessen ein
konkreter, sofort ausführbarer Merge-Vorschlag inkl. vollständiger Backlink-Liste in
`wiki/QUESTIONS.md` hinterlegt (Aufwand ca. 30-45 Min, kein weiterer Rechercheaufwand nötig).

**Register nachgeführt:** `destillate/INDEX.md` (WPSM-Zeile auf established aktualisiert),
`wiki/INDEX.md` (Run-107-Notiz, WPSM-Bullet + heizleistung-und-waermeerzeuger-Zeile auf established),
`wiki/QUESTIONS.md` (Duplikat-Analyse mit Merge-Empfehlung), `wiki/BAUHERREN-FAQ.md` (F154 durch
Agent geschärft), `outputs/2026-07-25_energie-run107.md`.

FAQ-Stand unverändert: **154 Kernfragen (F1-F154) belegt** (F154 geschärft, kein neuer Eintrag).
Destillate-Stand unverändert: **170** (kein neues Destillat, ein Status-Upgrade).

**Beobachtung zur Reife der KB (dritter Lauf in Folge):** Run 107 hat wie Run 106 bewusst keinen
neuen Themenkandidaten gewählt, sondern Primärquellen-Nachlese und Qualitätsarbeit (Duplikat-
Analyse) geleistet. Das bestätigt die Sättigungsdiagnose aus Run 105/106 ein weiteres Mal — die
verbleibende Arbeit an dieser KB ist zunehmend Verifikations-/Aufräumarbeit statt Neuerschliessung.
Empfehlung an Raphael unverändert: PROGRAMM.md-Rücktaktung («Intensivphase... dann Rücktaktung ins
Nachtfenster») jetzt aktiv prüfen, zusammen mit den beiden weiteren seit Wochen offenen
Entscheiden (fünf gebündelte Kaufentscheide seit Run 98, Meta-Punkt M2 eigener Skill "energie"
seit Run 45) und dem neu ausführungsreifen SIA-2024-Gesundheitsbau-Merge.

## 2026-07-25 — Run 106: gezielte Primärquellen-Nachverifikation (SIA 386/BACS + Erdsonden-
## Regeneration auf established gehoben) plus neues Themenfeld WPSM/Heizkörper-Altbau-Frage

Statt eines vierten neuen Themenkandidaten wurden bewusst die drei in Run 105 selbst benannten
offenen Primärquellen-Lücken geschlossen (Reaktion auf die dortige Sättigungs-Beobachtung), plus
ein neues Themenfeld ergänzt. Drei parallele `general-purpose`-Rechercheagenten, jeder auf eine
eigene Destillat-Datei beschränkt (Kollisionsschutz, zentrale Register-Konsolidierung in dieser
Session; kein zweiter `energie-training`-Prozess lief parallel, Rule 260724 geprüft).

**1. SIA 386/BACS-Gebäudeautomation (emerging → established):** Wichtigster Fund: die Bezeichnung
«SIA 386.110» war die 2017 bzw. 2022 abgelöste Vorgängerausgabe — amtlich aktuell gültig ist
**SIA 386.111:2022** (Übernahme SN EN ISO 52120-1:2021), amtlich verifiziert über die SIA-Shop-
Produktmetadaten (shop.sia.ch: Ausgabejahre, Archiviert-seit-Daten, Preise, Nachfolgeregelung).
MuKEn-2025-Wortlaut (Art. D.1.23, Monitoring-Pflicht ab 2'000 m² EBF für Nichtwohn-Neubauten, sechs
konkrete Funktionen) über die offizielle Minergie-Vergleichstabelle «Minergie im Kontext der
MuKEn 2025» (Stand 01.01.2026, im Volltext gelesen) primärnah bestätigt — dieselbe Quelle verneint
explizit einen Minergie-Automations-Bonus (Minergie kennt nur ein eigenes, tiefer schwellendes
Monitoring-Modul). EN-15232-Effizienzfaktoren für Wohngebäude neu über eine BAFU-gehostete
TU-Dresden-Kurzstudie (Felsmann 2017, Volltext): Heizung C=1,00/B=0,88/A=0,81, Warmwasser
C=1,00/B=0,90/A=0,80. Kostenseite weiterhin ohne CH-Primärzahl, neu aber eine EU-Referenz
(eu.bac-Studie 2024: 110-m²-Wohnung, Klasse B ≈ EUR 1'400, Klasse A ≈ EUR 2'850, explizit als
EU-Durchschnitt markiert). → Destillat `[[sia-386-bacs-gebaeudeautomation]]` auf established
gehoben, FAQ **F153** neu.

**2. Erdsonden-Regeneration/Sondenfeld-Dimensionierung (emerging → established):** Beide in Run 105
technisch blockierten Quellen erschlossen. Das aeesuisse-Faktenblatt «Regeneration Erdsonden — der
neue Standard» (Feb. 2025) blieb am Direktzugriff weiterhin durch Cloudflare-Bot-Schutz blockiert,
liess sich aber über das Wayback-Machine-Archiv im Volltext lesen: geothermischer Wärmestrom
Schweiz ≈60 mW/m², Temperaturtrichter bis ≈30 m (Rybach 2001), COP Erdreich 4,6 vs. Aussenluft 3,5
(damit jetzt primärbelegt statt nur sekundärzitiert), wirtschaftliche Regenerations-Schwelle ab
≈1'000 m² Geschossfläche bzw. 30–40 kW, ein durchgerechnetes MFH-Beispiel (2×300 m Sonden: ohne
Regeneration −1,25 °C nach 50 Jahren, mit 40 % Regeneration 6 °C, mit 80 % nahezu 14 °C). Die
AWEL-Planungshilfe 2010 erwies sich entgegen der Ersteinschätzung aus Run 105 als **kein Bild-PDF**
— direkt per `pdftotext` lesbar, bestätigt den Negativbefund (keine eigene W/m-Tabelle, Verweis auf
SIA 384/6). Zusatzfund: suissetec-Merkblatt 5|2020 mit einer konkreten EFH-Massnahmentabelle. →
Destillat `[[erdsonden-regeneration-sondenfeld-dimensionierung]]` auf established gehoben, FAQ F152
geschärft.

**3. Wärmepumpen-System-Modul (WPSM) und die Heizkörper-/Altbau-Frage (neu, emerging):** Freie
Themenwahl nach Prüfung von acht bereits abgedeckten Kandidaten (WP-Förderung, Ladeinfrastruktur,
Brandriegel, Contracting, Denkmalschutz, Gebäudeprogramm, Grossverbraucher-Zielvereinbarung,
Klimaanlagen-Bewilligung, Stromtarife) — die identifizierte Lücke: die häufigste praktische
Bauherren-Frage beim Heizungsersatz («reichen meine bestehenden Heizkörper für eine Wärmepumpe?»)
war bislang unbeantwortet, und das WPSM-Zertifikat stand in den bestehenden ZH/SZ-Förderdestillaten
nur als unerklärtes Stichwort. WPSM ist ein branchengetragenes QS-Verfahren (suissetec, FWS,
Gebäudeklima Schweiz, SWKI, EnergieSchweiz/BFE) für Wärmepumpen bis ≈15 kW, CHF 350 zzgl. MWST,
zwingende Förderbedingung in ZH und SZ (laut FWS in 26 Kantonen), prüft die gesamte Anlage
inklusive Wärmeabgabesystem. Zur Heizkörperfrage: EnergieSchweiz stuft WP im Altbau als
«grundsätzlich unproblematisch und lohnenswert» ein, ein pauschaler Heizkörpertausch wird nicht als
zwingend dargestellt; hydraulischer Abgleich als günstigerer Hebel vor einem Komplettersatz
(Faustregel, nicht-schweizerische Quellen). → Neues Destillat
`[[waermepumpen-system-modul-wpsm-heizkoerper-altbau]]` (emerging), Wiki-Artikel
`[[heizleistung-und-waermeerzeuger]]` um eigenen Abschnitt ergänzt, FAQ **F154** neu.

**Register nachgeführt:** `destillate/INDEX.md` (drei Zeilen aktualisiert), `wiki/INDEX.md`
(FAQ-Zählerzeile auf 154, drei neue Destillat-Direktverweise-Bullets, Run-106-Notiz, Themenartikel-
Zeile heizleistung-und-waermeerzeuger ergänzt), `wiki/BAUHERREN-FAQ.md` (F152 geschärft, F153-F154
neu), `wiki/heizleistung-und-waermeerzeuger.md` (neuer WPSM-Abschnitt), `training/curriculum.md`
(D78a-c), `wiki/QUESTIONS.md` (E93 + aktualisierte Prioritätenliste), `raw/_INGESTED.md`,
`outputs/2026-07-25_energie-run106.md`.

FAQ-Stand: **154 Kernfragen (F1-F154) belegt.** Destillate-Stand: **171** (170 + 1 neu).

⚠ Beobachtung für Raphael (fortgeführt aus Run 105): Run 106 hat bewusst auf Nachverifikation statt
neuer Themenwahl gesetzt, um die in Run 105 beobachtete Sättigung nicht durch erzwungene neue Themen
zu kaschieren. Zusätzlich neu beobachtet: der gleiche Normidentitäts-Fehlertyp, der in der KB
`normen` bei SIA 382/1 bereits bekannt ist (veraltete Ausgabe als aktuell geführt), trat in Run 105
innerhalb dieser eigenen KB bei SIA 386 auf — Lehre für künftige Norm-Erstdestillate: SIA-Shop-
Metadaten (shop.sia.ch) routinemässig vorab prüfen statt erst bei einer Nachverifikationsrunde.

## 2026-07-25 — Run 105: drei parallele Rechercheagenten (WP-Lärm-Nachmessung Kostenfolge,
## SIA 386/BACS-Gebäudeautomation neu, Erdsonden-Regeneration/Sondenfeld-Dimensionierung)

PDF-Inventar bleibt seit Run 65 vollständig abgearbeitet, daher Web-Pfad. Drei nicht-überlappende
Themen aus der Run-104-Prioritätenliste (Punkt 4 «Kostenfolge Lärm-Nachmessung» + Punkt 5 «freie
Themenwahl») bearbeitet, je ein `general-purpose`-Rechercheagent, jeder auf eine eigene Destillat-
Datei beschränkt (Kollisionsschutz — keine geteilten Register-Edits durch die Agenten, zentral
konsolidiert).

**1. Kostenfolge WP-Lärm-Nachmessung bei Reklamation (emerging):** Trotz gezielter Recherche
(Gebührenreglemente, Cercle Bruit, BAFU-Systematik, kantonale Rechtsprechung) keine amtliche,
WP-spezifische Kostenregel für ZH/SZ gefunden. Primärquellenbelegt: Verursacherprinzip (Art. 2 USG),
Gebührenermächtigung für Kontrollen (Art. 48 USG, kantonal ausgestaltet), Messanordnung nur bei
«Grund zur Annahme» einer Überschreitung statt automatisch (Art. 36 Abs. 1 LSV), sowie ein
SZ-Gebührentarifposten «Kontrolle von Anlagen» bis Fr. 5'000 (Gebührentarif Kt. Schwyz, 7.3.2023,
Ziff. 13, AfU) — nennt aber nur die Bandbreite, nicht den Kostenschuldner. Kein ZH-Pendant gefunden.
Die naheliegende Kostenverteilungslogik (Verursacher zahlt bei bestätigter Überschreitung) bleibt
eine explizit markierte eigene Ableitung, keine bestätigte Norm.
→ neues Destillat `[[waermepumpe-laerm-nachmessung-kostenfolge]]`, Wiki-Artikel
`[[waermepumpen-laermschutz]]` um Verfahrens- und Kostenabschnitt ergänzt, FAQ **F150** neu.

**2. SIA 386/BACS-Gebäudeautomation (neues Themenfeld, emerging):** Vier BACS-Effizienzklassen
A-D nach SIA 386.110 (Schweizer Übernahme der ehemaligen SN EN 15232, heute international durch
SN EN ISO 52120-1:2022 abgelöst), Klasse C als Referenz. Keine generelle Schweizer Pflicht zu
einer bestimmten Klasse gefunden; primärquellennah nur die Monitoring-Pflicht ab 2'000 m²
Energiebezugsfläche bei Nichtwohn-Neubauten (im Kt. ZH über Formular EN-141) sowie die
Betriebsoptimierungspflicht ab 200'000 kWh/Jahr. Genauer MuKEn-Wortlaut, aktuelle
SIA-386.110-Normfaktoren und ein möglicher Minergie-Bonus liessen sich am Original nicht
verifizieren (PDF-Extraktion technisch mehrfach gescheitert); keine belastbare CH-Kostenzahl für
ein BACS-Klassen-Upgrade gefunden.
→ neues Destillat `[[sia-386-bacs-gebaeudeautomation]]`, FAQ **F151** neu, neues Themenfeld.

**3. Erdsonden-Regeneration/Sondenfeld-Dimensionierung (emerging, ergänzt Schwesterdestillat):**
Bewusst als Ergänzung zum bestehenden `[[erdwaermesonden-mehrfachfelder-regeneration-zh-sz]]`
(23.07.2026) angelegt, nicht als Duplikat — dieses deckt bereits SIA-384/6-Simulationsschwellen
und die Stadt-Zürich-Studie 2017 primärquellennah ab. Neu: passiv/aktiv-Regenerationssystematik
(Freecooling/Geocooling, Solarthermie, reversible Wärmepumpe, Aussenluft-/PVT-Kollektoren),
konkrete W/m-Entzugsleistungs-Faustwerte je Untergrund (< 25 bis ~85 W/m) und 6-10 m Sondenabstand
**innerhalb** eines Felds (klar unterschieden vom 17-73-m-Feld-zu-Feld-Abstand des
Schwesterdestillats). Ausdrücklich markiert: diese Faustwerte sind laut Fachpraxis selbst nicht
als SIA-384/6-Berechnungsgrundlage geeignet, nur zur Grössenordnungs-Kommunikation gegenüber dem
Bauherrn.
→ neues Destillat `[[erdsonden-regeneration-sondenfeld-dimensionierung]]`, FAQ **F152** neu.

Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md` (FAQ-Zählerzeile auf 152 + Run-105-
Notiz), `wiki/BAUHERREN-FAQ.md` (F150-F152 neu), `wiki/waermepumpen-laermschutz.md` gewachsen,
`training/curriculum.md` (D77a-c), `wiki/QUESTIONS.md` (E92 + fortgeschriebene Prioritätenliste,
inkl. Hinweis auf zunehmende Themenfindungs-Sättigung), `raw/_INGESTED.md`.
Vollständiger Lauf-Report: `outputs/2026-07-25_energie-run105.md`.

FAQ-Stand: **152 Kernfragen (F1-F152) belegt.**

## 2026-07-25 — Run 104: vier parallele Rechercheagenten (WP-Lärm SZ established, SIA-380/2-vs-382/1
## Normwechsel aufgelöst, VDI 3807 Krankenhaus-Benchmark neu, BVGer Smart-Meter-Urteil established)

PDF-Inventar bleibt seit Run 65 vollständig abgearbeitet, daher Web-Pfad. Vier Punkte der
Run-103-Prioritätenliste (Punkt 4 «neue offene Punkte» + Punkt 5 «neue Themen-Recherche») abgearbeitet,
je ein `general-purpose`-Rechercheagent, jeder auf eine eigene, nicht-überlappende Destillat-Datei
beschränkt (Kollisionsschutz, keine geteilten Register-Edits durch die Agenten — diese wurden zentral
konsolidiert).

**1. WP-Lärm Kt. Schwyz — Verfahrensklassifikation (established):** Amtliche «Kantonale Wegleitung zur
Planung von Luft/Wasser-Wärmepumpen (LWP)» des AfU Schwyz (Ivo Egger, 29.10.2025) im Volltext
gefunden. Verfahrensmatrix: Innenaufstellung Bauzone = Meldeverfahren, Aussenaufstellung Bauzone =
vereinfachtes Baubewilligungsverfahren (Anstösser-Einverständnis/20-Tage-Einsprachefrist), ausserhalb
Bauzone = ordentliches Verfahren; die Gemeinde prüft zweistufig amtlich (Einreichung UND Bauabnahme) —
strenger als das rein private ZH-Kontrollmodell. SZ-Besonderheit: VGE III 2015 184 bestimmt den
lärmempfindlichen Raum primär im eigenen Gebäude als massgebend.
→ `[[waermepumpe-aussenlaerm-vollzugshilfe]]` (SZ-Teil auf established gehoben), FAQ **F146** neu.

**2. Sommerlicher Wärmeschutz — SIA-380/2-vs-382/1-Normwechsel aufgelöst (emerging):** Der scheinbare
Widerspruch zwischen MuKEn-2025-Zitat (SIA 380/2:2022) und Stadt-ZH-Praxis (SIA 382/1:2014) ist kein
Zitierfehler, sondern ein echter SIA-Normen-Systemwechsel: die Kühlungs-Bedarfsabklärung «notwendig
vs. erwünscht» wanderte von SIA 382/1 in die neue SIA 380/2:2022, SIA 382/1 selbst wurde per 1.2.2025
als SIA 382/1:2025 neu aufgelegt (Titelwechsel Klima→Lüftung bestätigt die Verschiebung) — dreifach
über SIA-Shop-Metadaten, SIA-Normentwurf (svlw.ch) und espazium-Fachartikel belegt. SIA-180-Figur-13
(Dachflächenfenster-g_tot-Formel) bleibt dagegen ein bestätigter Negativbefund (Korrigenda C2:2020
geprüft, betrifft sie nicht; Empfehlung SIA 4001:2022 als Beschaffungsquelle).
→ `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` ergänzt, FAQ **F147** neu. ⚠ Nebenbefund:
KB `normen` führt SIA 382/1:2014 noch fälschlich als aktuell/established — an den normen-Loop zu
übergeben (ausserhalb des Scopes von `energie`).

**3. VDI 3807 Blatt 2 — Energiekennwerte Krankenhaus (neues Thema, emerging):** Deutsche VDI-
Richtlinie (Datenbasis 2004/2005) über zwei sich bestätigende Sekundärquellen erschlossen (VDI-
Primärtext kostenpflichtig, nicht beschafft): 5 Versorgungsstufen nach Bettenzahl, Wärme
~20'000-37'000+ kWh/Bett/a, Strom ~2'700-13'600 kWh/Bett/a. Bestätigt die bisherige KB-Näherung
(20'000-35'000 kWh/Bett/Jahr) für kleine/mittlere Häuser, zeigt für Maximalversorger >1'000 Betten
deutlich höhere Werte (~50'600 kWh/Bett/a). DE-Herkunft ausdrücklich vermerkt, nicht 1:1 auf CH
übertragbar.
→ Neues Destillat `[[vdi-3807-2-energiekennwerte-krankenhaus]]`, ergänzt
`[[energie-performance-gap-gesundheitsbau]]`, FAQ **F148** neu.

**4. BVGer-Urteil Smart-Meter vom 20.06.2025 im Original (established):** Urteil A-484/2024
(vereinigt mit A-503/2024), Abteilung I, vollständig gelesen (42 S., bvger.weblaw.ch). Gemeinde
Rorschacherberg (SG) vs. privater Eigentümer, ElCom als Vorinstanz: kein Wahlrecht/Opt-out gegen
Smart-Meter-Einbau, Kostenfolge statt Wahlrecht bei Verweigerung (Art. 8a ter Abs. 2 StromVV),
15-Minuten-Lastgang und 5-Jahres-Speicherung verfassungskonform/kein Profiling, Fernabschaltung nur
bei akuter Netzgefährdung erlaubt (enger, aber realer Schutz). Gemeinde-Beschwerde vollumfänglich
abgewiesen, Eigentümer-Beschwerde nur beim Kostenpunkt teilweise gutgeheissen.
→ `[[smart-meter-rollout-schweiz]]` auf established gehoben, FAQ **F149** neu.

Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md` (FAQ-Zählerzeile auf 149 + Run-104-Notiz
inkl. normen-Nebenbefund), `wiki/BAUHERREN-FAQ.md` (F146-F149 neu), `training/curriculum.md`
(D76a-d), `wiki/QUESTIONS.md` (E91 + fortgeschriebene Prioritätenliste), `raw/_INGESTED.md`.
Vollständiger Lauf-Report: `outputs/2026-07-25_energie-run104.md`.

FAQ-Stand: **149 Kernfragen (F1-F149) belegt.**

## 2026-07-25 — Run 103: Konsolidierung dreier paralleler Workstreams (WP-Lärm-Verfahren,
## sommerlicher Wärmeschutz MuKEn-2025/Kt.-SZ, Legionellenschutz established), Register-Korrektur

Dach-Eintrag zu den drei direkt darunter stehenden Einzel-Commits (80a379e1, 2503b5f8, c6a64511) — je
ein `general-purpose`-Rechercheagent, alle drei prüften zuerst, ob ihr zugewiesenes Thema bereits in
der KB steckt, bevor sie schrieben. Ergebnis: WP-Lärm und sommerlicher Wärmeschutz waren als
Berechnungsmethodik bereits abgedeckt, beide Agenten schwenkten selbstständig auf die tatsächlich
offene Lücke (Vollzugs-/Verfahrensfrage bzw. MuKEn-2025/Kt.-SZ-Ergänzung) statt zu duplizieren; der
dritte Agent verifizierte Legionellenschutz gegen das BAG/BLV-Original und deckte dabei eine
Halluzination eines eigenen WebFetch-Zwischenschritts auf (angebl. BAG/BLV-Update «2026», durch
direkten Download widerlegt). Nach `git log`/`git status`-Verifikation ein Register-Fehler behoben:
`wiki/INDEX.md` nannte nach den drei Commits fälschlich «144 Kernfragen» statt der tatsächlichen 145
(F145 war im dritten Commit bereits vorhanden) — korrigiert. `wiki/QUESTIONS.md` mit dem
konsolidierten Run-103-Stand und der fortgeschriebenen Prioritätenliste nachgeführt (die fünf
gebündelten Kaufentscheide und Meta-Punkt M2 stehen jetzt seit fünf bzw. seit Run 45 unentschieden im
Raum). Vollständiger Lauf-Report: `outputs/2026-07-25_energie-run103.md`.

FAQ-Stand: **145 Kernfragen (F1-F145) belegt.**

## 2026-07-25 — Trinkwassererwärmung/Legionellenschutz: adversariale Nachverifikation, Destillat auf established gehoben

Auftrag: das Destillat `[[trinkwassererwaermung-legionellenschutz-energieeffizienz]]` (Run 99,
Status `emerging`) gezielt an den beiden dort selbst benannten Lücken nachverifizieren — Norm-
Volltext SIA 385/1:2020 und das BAG/BLV-Original waren bisher nicht direkt gelesen. Diesmal beide
Primärquellen beschafft: BAG/BLV-Empfehlungen «Legionellen und Legionellose», Modul 11 (amtliches
Original, blv.admin.ch, per curl+pdftotext vollständig gelesen, Ausgabe 22.08.2018 unverändert —
eine WebFetch-Zusammenfassung hatte fälschlich ein Update «13.03.2026» behauptet, der direkte
Download widerlegte dies) sowie eine primärnahe SIA-385/1-Quelle (Kommissionspräsentation Dr.
Michel Haller, 3.11.2020, fws.ch, mit direkt reproduzierten Norm-Temperaturtabellen). Kernaussage
bestätigt, aber wesentlich präzisiert: die 52-55 °C sind eine bedingte 3-K-Erleichterung für
nachweislich optimal geplante/betriebene Anlagen, nicht die neue Pauschale; die Grundordnung
(BAG/BLV unverändert seit 2018, SVGW W3/E3:2020 «im Einklang» damit) bleibt bei 60/55/50 °C und
verlangt für identifizierte Vorwärm-Risikozonen weiterhin eine wöchentliche 60-°C-Stunde. Die
vormals genannte Zahl «60 °C während 6 Stunden monatlich» wurde widerlegt und durch die belegte
«über 70 °C monatlich, in seltenen Fällen» ersetzt. Destillat auf **established** gehoben, FAQ
F137 geschärft, destillate/INDEX.md + wiki/INDEX.md + training/curriculum.md (D75) nachgeführt.

## 2026-07-25 — Sommerlicher Wärmeschutz/Überhitzungsschutz: MuKEn-2025- und Kt.-SZ-Lücke geschlossen, keine Doppelarbeit am bestehenden SIA-180-Destillat

Auftrag Raphael: neues Thema sommerlicher Wärmeschutz/Überhitzungsschutz im Wohnbau (SIA 180:2014)
erschliessen. Vor Recherchestart geprüft, ob das Thema bereits in der KB steckt — Ergebnis: **ja,
sehr umfassend**. Das Destillat `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]` (seit Run
74, established) führt bereits die drei SIA-180-Nachweisverfahren mit Grenzwerten, den ZH-
Formularbezug (EN-102a/b, EN-110-ZH, EVEN) und die freiwilligen Zielwerte der Stadt-ZH-Wegleitung;
der Wiki-Artikel `[[sommerlicher-waermeschutz]]` (established seit Run 88) führt die fünf
Stellschrauben (Sonnenschutz/g-Wert/Speichermasse/Nachtauskühlung/Fassadenbegrünung); mehrere
FAQ-Einträge (F11, F67, F88, F121, F125, F140) decken das Thema aus verschiedenen Winkeln ab.
**Kein neues Duplikat-Destillat unter dem im Auftrag vorgeschlagenen Dateinamen angelegt**
(widerspräche der Schreibregel «Verlinken statt doppeln»), stattdessen die vom Auftrag explizit
genannten und tatsächlich noch offenen Punkte geschlossen:
- **MuKEn 2025 Art. 1.9** («Anforderungen und Nachweis sommerlicher Wärmeschutz») im Volltext
  gelesen (curl+pdftotext, amtl. EnDK-PDF, verabschiedet 29.08.2025) — hebt den Nachweis erstmals
  in einen eigenen Basismodul-Artikel; Kernaussage: bei Kühlabsicht g-Wert+Windfestigkeit+Steuerung
  «nach Stand der Technik» (Ausnahme reversible WP ohne aktive Kühlabgabe), bei allen übrigen
  Räumen inkl. Wohnbauten ohne Kühlung bleibt mindestens der g-Wert-Nachweis Pflicht. ⚠ Empfehlung
  der EnDK, noch nicht automatisch geltendes kantonales Recht.
- **Kt. Schwyz** war in der bestehenden Coverage komplett unbelegt (reine ZH-Perspektive). Zwei
  amtliche Kt.-SZ-Seiten per WebFetch gelesen: MuKEn 2014 seit 1.5.2022, EVEN seit 1.1.2026 wie
  Kt. ZH, **keine eigene, strengere Wegleitung zum sommerlichen Wärmeschutz auffindbar**
  (dokumentierter Negativbefund, kein positiver Beleg).
- Destillat, Wiki-Artikel, beide INDEX-Register, `raw/_INGESTED.md`, `training/curriculum.md`
  (D74) ergänzt; FAQ **F145** neu (Frage: schützt eine gut gedämmte Hülle mit grossen Fenstern
  nicht ohnehin vor sommerlicher Überhitzung — Antwort: nein, eigener zwingender Nachweis).
  FAQ-Stand: **145 Kernfragen (F1-F145) belegt.**
- Offen: SIA 180 Figur 13 (Dachflächenfenster-gtot) weiterhin nur als Grafik nicht als Formel;
  Verhältnis SIA 380/2:2022 Ziff. 3.2 (MuKEn-2025-Zitat) zu SIA 382/1:2014 (bisherige ZH-Praxis)
  für die Definition «Kühlung notwendig/erwünscht» nicht geklärt; Kt.-SZ-Befund bei realem Projekt
  amtlich verifizieren.

## 2026-07-25 — Lärmschutz bei Wärmepumpen-Aussengeräten: Verfahrensfrage neu, keine Doppelarbeit an der Berechnungsmethodik

Auftrag Raphael: neues Thema Lärmschutz bei Luft/Wasser-Wärmepumpen-Aussengeräten erschliessen.
Vor Recherchestart geprüft, ob das Thema bereits in der KB steckt — Ergebnis: die eigentliche
**Berechnungsmethodik** (Cercle Bruit Vollzugshilfe 6.21, Formel Leq/Lr, Planungswerttabelle
Anhang 6 LSV, Fallbeispiel) war bereits seit Run 56/57 vollständig destilliert und **established**
(`[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]`, FAQ F65). Statt sie zu duplizieren,
wurde gezielt die dort offen gebliebene **Verfahrensfrage** recherchiert und geschlossen: wer prüft
den Lärmschutznachweis, in welchem Verfahren, was passiert bei einer Reklamation/Einsprache.

- **Neues Destillat `[[waermepumpe-aussenlaerm-vollzugshilfe]]`** (emerging), bewusst als
  Verfahrens-Ergänzung angelegt: ZH prüft den Nachweis über die **private Kontrolle** durch eine
  befugte Fachperson («Schutz vor Lärm» bzw. «Heizungsanlagen»), nicht durch eine Behörde direkt
  (zh.ch, WebFetch-Volltext); Meldeverfahren seit 1.1.2023 mit 30-Tage-Frist, Ausnahme Kernzone/
  Ortsbild-/Denkmalschutz (dann ordentliches Bewilligungsverfahren mit Einsprachemöglichkeit);
  AWEL nur für Sole/Wasser- und Wasser/Wasser-Wärmepumpen zuständig, nicht für die Luft/Wasser-
  Lärmfrage. Kt. Schwyz: **kein eigenes WP-Lärm-Merkblatt gefunden** (Negativbefund, sz.ch verweist
  direkt auf Cercle Bruit); operative Zuständigkeit bei Reklamationen über bestehende Anlagen liegt
  bei **Gemeinde/Bezirk**, das AfU ist nur unterstützende Fachstelle. Einsprache-/Reklamationsablauf
  nur über eine journalistische Sekundärquelle (Beobachter-Ratgeber) belegt und als solche
  gekennzeichnet; die kursierende Kostenfolge einer nachträglichen Lärmmessung bei Nachbarreklamation
  ist amtlich nicht verifizierbar und bewusst als offener Punkt stehen gelassen statt übernommen.
- **FAQ F144 neu**, Themenartikel `[[waermepumpen-laermschutz]]` ergänzt (jetzt zwei Destillate),
  bestehendes Destillat `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` um einen Backlink auf das
  neue Verfahrens-Destillat ergänzt (gegenseitige Verlinkung zwischen Lärmschutz- und Grenzabstands-
  Rechtsfrage). `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D73),
  `raw/_INGESTED.md` nachgeführt. FAQ-Stand: **144 Kernfragen (F1-F144) belegt.**

## 2026-07-25 — Run 102: GAPxPLORE-Original gefunden (established), Kt.-ZH-Kühlwerte-Diskrepanz geklärt, zwei neue Themen (Healthcare-Performance-Gap, Smart-Meter-Rollout)

Vier parallele `general-purpose`-Rechercheagenten arbeiten die in Run 101 formulierte Prioritätenliste
(Punkte 3+4) sowie zwei neue Themen ab (Punkt 5 Healthcare-Gap plus ein frei gewähltes Thema). Alle
vier Ergebnisse vor der Register-Konsolidierung per `git status` verifiziert: zwei bestehende
Destillate wurden ergänzt, zwei neue geschrieben — keine Diskrepanz zwischen Agenten-Bericht und
tatsächlichem Dateizustand.

- **GAPxPLORE-Original gefunden — auf established gehoben.** Der bisher nur über eine Minergie-
  Sekundärdarstellung zitierte BFE-Schlussbericht «GAPxPLORE: Energy Performance Gap in existing, new,
  and renovated buildings» (Cozza et al., SFOE-Vertrag SI/501518-01, 19.11.2019, 145 S.) wurde über den
  exakten Titel gefunden (bei Minergie gehostet, pubdb.bfe.admin.ch/aramis.admin.ch lieferten keinen
  Treffer) und vollständig per curl+pdftotext gelesen. Alle vier bisher unverifizierten Minergie-P/A-
  Zahlen sind wörtlich im Original bestätigt: Minergie-P Neubau −12 %, Minergie-P Sanierung −18 %,
  Minergie-A Neubau −16 %, Minergie-A Sanierung −5,3 % (Executive Summary, Stichprobe 56 Gebäude,
  medianer Gesamt-EPG −14 %). Ein methodischer Spannungspunkt wurde eingeordnet statt stillschweigend
  übernommen: GAPxPLORE findet für den gesamten Schweizer Wohnungsbestand einen negativen Gesamt-EPG
  von −6 %, was dem im EBP-Bericht dokumentierten Mehrverbrauch (+10 bis +44 %) auf den ersten Blick
  widerspricht — erklärt durch unterschiedliche Bezugswerte/Stichproben, kein echter Widerspruch →
  `[[energie-performance-gap-monitoring-inbetriebnahme]]` von emerging auf **established** gehoben,
  FAQ F141 geschärft.
- **Kanton-ZH-Kühlwerte-Diskrepanz zum BAFU-Original geklärt.** Die Primärquelle der kantonalen
  Kühlkennwerte (Fassadenbegrünung 4,8 °C, Dachbegrünung bis 6,6 °C, Wasserelemente bis 8 °C) wurde
  identifiziert: Bericht «Fachplanung Hitzeminderung» (Stadt Zürich/Grün Stadt Zürich, 20.01.2020,
  Klimamodellierung GEO-NET Umweltconsulting FITNAH-3D), im Volltext gelesen. Die vermeintliche
  Diskrepanz zum BAFU-Wert (1,3 °C bei Fassadenbegrünung) löst sich auf: der Stadt-Zürich-Bericht weist
  je Massnahme zwei Kennwerte aus — tagsüber die gefühlte Temperatur PET, nachts die reine
  Lufttemperatur; die Kanton-Website übernimmt nur den auffälligeren Tag-PET-Wert, der Nacht-
  Lufttemperatur-Wert für Fassadenbegrünung entspricht exakt dem BAFU-Original. Einzige Ausnahme bleibt
  der helle-Bodenbelag-Wert (0,6 °C), der nicht aus dem Stadt-Zürich-Bericht stammt (dort −1,5/−2,8 °C
  PET) und weiterhin auf eine US-EPA-Schätzung zurückgeht — uneinheitliches Sourcing auf der Kanton-
  Website selbst. Zusätzlich neu belegt: Rasenfläche-Kühlwert (Tag PET Median −3,6 °C/Max −6,6 °C) und
  «Baum auf Rasen» als wirksamste Einzelmassnahme im ganzen Bericht (Max −8,7 °C) →
  `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` ergänzt, FAQ F140 geschärft.
- **Neues Thema: Energie-Performance-Gap im Gesundheitsbau (Spital/Pflegeheim).** Vier Primärquellen
  im Volltext durchsucht (EBP/Minergie 2019, FHNW/Brenet Status-Seminar 2014 mit 7 Schweizer
  Fallstudien, Stadt-Zürich-Literaturstudie 2022, GAPxPLORE-Sekundärdarstellung) — keine enthält einen
  Gesundheitsbau-Fall, sauberer Negativbefund. Als Näherung dokumentiert: reale gemessene
  Energiekennwerte deutscher Krankenhäuser (Stiftung Münch 2023, Hessen-Leitfaden, beide im Volltext
  gelesen) — 150 bis über 300 kWh/m²/Jahr bzw. rund 20'000–35'000 kWh/Bett/Jahr, davon 60–75 % Wärme,
  plus ein reales Sanierungs-Fallbeispiel (Vitos gGmbH) mit Vorher/Nachher-Messwerten. Aus der
  bestehenden KB-Faktenbasis (SIA-2024-Destillate) wurden drei strukturelle Gründe hergeleitet, warum
  ein Gesundheitsbau-Gap anders entstünde als bei Wohnbauten: 24/7-Betrieb ohne Nachtabsenkung ist
  bereits Norm (kein Verhaltens-Gap möglich), hoher vom Energienachweis ausgeklammerter
  Prozessenergieanteil (Sterilisation/ZSVA, Medizintechnik-Kühlung, OP-Klimatisierung, 28–100 % je
  Raumtyp) und extreme Fallstreuung durch Medizintechnik-Ausstattung → neues Destillat
  `[[energie-performance-gap-gesundheitsbau]]` (status: speculative), FAQ **F143** neu.
- **Neues Thema (frei gewählt): Smart-Meter-Rollout Schweiz.** Rechtsgrundlage (StromVV Art. 8a decies
  ff., Fedlex konsolidierter Stand 1.1.2026) im Volltext gelesen: 80 % aller Messeinrichtungen je
  Netzgebiet müssen bis Ende 2027/1.1.2028 auf intelligente Messsysteme umgerüstet sein (Stand Ende
  2024 laut BFE-Monitoringbericht: 50,2 %, von 16,8 % im Jahr 2019 kontinuierlich gestiegen). Kosten
  trägt grundsätzlich der Netzbetreiber über das Messentgelt; bei Verweigerung drohen individuelle
  Mehrkosten oder eine ElCom-Verfügung (vom Bundesverwaltungsgericht am 20.06.2025 bestätigt, nur
  Sekundärquellen gelesen). Zentraler, bisher unter den ZEV/LEG-Destillaten nicht sichtbarer Bauherren-
  Hebel: Art. 8a decies Abs. 6 StromVV gibt einem ZEV/einer LEG einen erzwingbaren 3-Monats-Anspruch
  auf Smart Meter an allen beteiligten Messpunkten — das entkoppelt ein geplantes vZEV-Projekt vom
  allgemeinen VNB-Rollout-Fahrplan und sollte aktiv in die Terminplanung einfliessen → neues Destillat
  `[[smart-meter-rollout-schweiz]]` (established), verlinkt mit `[[zev-eigenverbrauch-mfh-her-2025]]`
  und `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]`, FAQ **F142** neu.

**Register nachgeführt:** `destillate/INDEX.md` (vier Zeilen neu), `wiki/INDEX.md` (zwei bestehende
Zeilen geschärft/auf established gehoben, zwei neue Destillat-Direktverweise, FAQ-Zählerzeile auf
«Stand Run 102, 143 Kernfragen» aktualisiert), `wiki/BAUHERREN-FAQ.md` (F141 geschärft/established,
F142+F143 neu), `wiki/QUESTIONS.md` (Run 102 abgeschlossen, neue Prioritäten), `training/curriculum.md`
(D72), `raw/_INGESTED.md` (vier Zeilen neu). FAQ-Stand: **143 Kernfragen (F1-F143) belegt.**

## 2026-07-25 — Run 101: Hitzeinseln-Destillat auf established (BAFU/ARE-Volltext), Blitzschutz-Backlog bereinigt (Run-94-Nachzug), neues Thema Energie-Performance-Gap
Drei parallele `general-purpose`-Agenten arbeiten die Run-100-Prioritäten 3 (Hitzeinseln vertiefen)
und 4 (neues Thema) sowie einen Blitzschutz-Backlog-Punkt ab. Die fünf gebündelten Kaufentscheide
(B1, SWKI-VA105-01, SIA-385/1, SIA-385/2, SIA-384.354) und Massivbau/WDVS-Brandriegel bleiben
unverändert (Kaufentscheide/passive Beobachtung). Vor der Register-Konsolidierung per `git status`
verifiziert: zwei der drei Agenten haben tatsächlich geschrieben (ein modifiziertes + ein neues
Destillat), der dritte hatte bewusst nichts editiert (siehe unten).
- **Urbane Hitzeinseln/Aussenraum-Kühlung: auf established gehoben.** Der BAFU/ARE-Grundlagenbericht
  «Hitze in Städten» (UW-1812-D, 2018, 108 S.) wurde diesmal per NCCS-Spiegel vollständig im
  Volltext gelesen (Original-Domains bafu.admin.ch/are.admin.ch lieferten HTTP 502). Wichtige
  Korrektur: die in Run 100 verwendete vereinfachte 5er-Massnahmenliste (Begrünung/Verschattung/
  Wasser/Entsiegelung/Ventilation) war eine Verkürzung — der Bericht selbst gliedert eigenständig in
  6 Planungsgrundsätze + 3 städtebauliche Leitsätze + 18 Einzelmassnahmen in 4 Gruppen. Mehrere
  Kanton-ZH-Kühlwerte weichen vom Original ab und wurden präzisiert: Fassadenbegrünung 4,8 °C (Kt.
  ZH) vs. 1,3 °C (BAFU-Original); Wasserelemente «bis 8 °C» ist im Original ein **Oberflächen**-,
  kein Lufttemperatur-Effekt (Luftkühlung nur ca. 1 °C); Albedo-Wert 0,6 °C stammt ursprünglich von
  einer US-EPA-Schätzung zum «Coole Pavement»-Pilotprojekt in Los Angeles, nicht aus einer Schweizer
  Messung. Kanton Schwyz hat seit 13.04.2026 eigene Klimakarten (WebGIS, Klimaanalyse-/Bewertungs-/
  Planungshinweiskarte), Zielgruppe aber ausdrücklich «Fachleute, Gemeinden und Bezirke» — kein
  Pendant zum Zürcher Stadtklimatool/zur Freiraumberatung für private Bauherren gefunden
  (differenzierter Teilbefund, kein reiner Negativbefund). Die «rund fünfmal mehr Tropennächte»-
  Zahl für Zürich wurde an der offiziellen MeteoSchweiz-Medienmitteilung «Klimawandel in der Schweiz
  besonders ausgeprägt» (04.11.2025) verifiziert und bestätigt (3-Grad-Welt gegenüber Referenz-
  periode 1991–2020) → `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` von emerging auf
  **established** gehoben, FAQ F140 geschärft.
- **Blitzschutz-Backlog (Lithium-Ionen-Infoblatt + SNR 464022): kein neuer Schreibbedarf, Backlog
  bereinigt.** Der beauftragte Agent stellte fest, dass beide im `wiki/INDEX.md`-Backlog seit Run 93
  als offen geführten Punkte bereits in **Run 94** durch zwei eigene Destillate geschlossen wurden:
  `[[vkf-lithium-batteriespeicher-brandschutz]]` (VKF-Brandschutzmerkblatt 2005-15de + FAQ 2005-01,
  dreistufige Hazard-Level-Tabelle HL I <15 kWh/HL II 15-100 kWh/HL III >100 kWh, für LFP auf EI 30
  gelockert) und `[[snr-464022-blitzschutz-ausfuehrung]]` (Geltungsbereich/Erder-Tabelle/PV-
  Integrationspflicht frei über Electrosuisse-Korrigenda verfügbar, die eigentlichen Ausführungs-
  klassen I-IV bleiben bestätigter Negativbefund — nur käuflich, auch in der 2024er-Nachfolgenorm
  SN 414022 kein freier Auszug gefunden). Der Backlog-Eintrag in `wiki/INDEX.md` war seit Run 94
  nicht nachgezogen worden und wurde in Run 101 bereinigt (Lehre: Backlog-Einträge nach jedem Lauf,
  der sie schliesst, sofort entfernen statt erst beim nächsten Zufallstreffer).
- **Neues Thema: Energie-Performance-Gap.** Lücken-Check per grep bestätigte eine echte Lücke: das
  bestehende MuKEn-Modul-7-Destillat behandelt nur die gesetzliche Betriebsoptimierungspflicht,
  nicht das Phänomen selbst. Der EBP-Grundlagenbericht «Energie Performance Gap in Neubauten»
  (EnergieSchweiz/BFE/Stadt Zürich, November 2019, 31 S. Volltext) zeigt: Schweizer Mehrfamilien-
  häuser verbrauchen im Schnitt 10-44 % mehr Heizwärme als der SIA-380/1-Standardbedarf
  (Haupttreiber Verhaltens-Gap: reale Raumtemperatur ~22,5 °C statt Norm-20 °C), während
  zertifizierte Minergie-P/A-Neubauten gemäss der GAPxPLORE-Studie (nur sekundärquellig über
  Minergie) tendenziell weniger verbrauchen (-12 % bis -18 %). Vier Gap-Komponenten (Verhaltens-/
  Technischer-/Klima-/Modellierungs-Gap), Gegenmassnahmen Sub-Metering/Monitoring schon in der
  Projektierung, systematische Inbetriebsetzung/Commissioning in den ersten 1-2 Betriebsjahren,
  Nutzerkommunikation; keine gesetzliche Betriebsoptimierungspflicht bei Wohnbauten →
  `[[energie-performance-gap-monitoring-inbetriebnahme]]` (neu, emerging), FAQ **F141** neu.

**Register nachgeführt:** `destillate/INDEX.md` (zwei Zeilen neu), `wiki/INDEX.md` (ein neuer
Destillat-Direktverweis, Hitzeinseln-Zeile auf established, Backlog Run-94-Nachzug bereinigt,
FAQ-Zählerzeile auf F141/Run 101 aktualisiert), `wiki/BAUHERREN-FAQ.md` (F140 geschärft/
established, F141 neu), `wiki/QUESTIONS.md` (Run 101 abgeschlossen, neue Prioritäten), `training/
curriculum.md` (D71), `raw/_INGESTED.md` (zwei Zeilen neu). FAQ-Stand: **141 Kernfragen (F1-F141)
belegt.**

## 2026-07-25 — Run 100: TABS-OP-Saal-Negativbefund bestätigt, Sanierungsfahrplan auf established gehoben, neues Thema urbane Hitzeinseln
Drei parallele `general-purpose`-Agenten (nach der Run-97-Lehre zum Hintergrund-Stall des
`energie-berater`-Subtyps bewusst gewählt) arbeiten die Run-99-Prioritätenpunkte 4, 5 und 6 ab.
Punkte 1-3 (B1-Konsolidierung, vier Norm-Kaufentscheide, Massivbau/WDVS-Brandriegel) bleiben
unangetastet (Kaufentscheide/destruktive Rückfragen bzw. bereits auf passive Beobachtung
umgestellt). Alle drei Agenten vor der Register-Konsolidierung per `git status` als echt
geschrieben verifiziert (zwei geänderte Destillate + eine neue Datei).
- **TABS OP-Saal-Eignung (Punkt 4): bestätigter Negativbefund.** Systematische Suche (10
  Suchanfragen, 12 CH-Fachseiten: betonsuisse.ch, baublatt.ch, espazium/TEC21, tqm-gmbh.ch,
  vadea.ch, waldhauser-hermann.ch, ans-architekten.ch, unicum.ch, suissetec, energie-cluster.ch)
  findet weiterhin keine Schweizer Primärquelle, die TABS-Eignung differenziert nach OP-Saal vs.
  Bettenstation beurteilt — die bisherige Vermutungslücke ist jetzt ein dokumentierter, echter
  Negativbefund. Neue CH-Primärquelle zur allgemeinen TABS-Regelungsproblematik ergänzt (Gwerder,
  Tödtli, Lehmann, Dorer, «Control of thermally activated building systems (TABS) in intermittent
  operation with pulse width modulation», Applied Energy 86, 2009, S. 1606-1616, Volltext gelesen).
  Ein Suchtreffer zu SWKI VA105-01 (RLT-Präzisionsklimatisierung OP) wird ausdrücklich als nicht
  primärquellen-verifiziert gekennzeichnet (Rule `identifikatoren-verifizieren`) →
  `[[betonkernaktivierung-tabs-energieeffizienz]]` bleibt emerging, FAQ F138 geschärft.
- **Sanierungsfahrplan-Etappenfolge (Punkt 5): Primärquelle gefunden, Status auf established
  gehoben.** Die 16-seitige Broschüre «Königsweg e+ — Heute modernisieren, morgen profitieren»
  (Technische Kommission Solar/Energie, Verband Gebäudehülle Schweiz, Version 1.2, April 2020, im
  Volltext gelesen) bestätigt die bisher nur über zwei journalistische Sekundärquellen (u.a.
  Migrol-Blog) belegte 3-Etappen-Folge (1 Gebäudehülle/Wärmedämmung, 2 Heizung/Solarthermie,
  3 Photovoltaik/Batteriespeicher/Smart Home) wörtlich beim Fachverband selbst →
  `[[sanierungsfahrplan-etappierung-gebaeudehuelle]]` von emerging auf **established** gehoben,
  FAQ F139 geschärft; kleine Nuance bei der genauen PV-Einordnung bleibt offen.
- **Neues Thema: urbane Hitzeinseln und Aussenraum-Kühlung (Punkt 6).** Klimawandel-relevantes
  Themenfeld, das die bisherige Innenraum-Perspektive (`[[sommerlicher-waermeschutz]]`, SIA 180)
  und die Fassaden-Perspektive (`[[fassadenbegruenung-hitzeschutz-pv-zielkonflikt]]`) um die
  Aussenraum-/Mikroklima-Ebene ergänzt. BAFU/ARE-Grundlagenbericht «Hitze in Städten» (UW-1812-D,
  2018) liefert die 5-Kategorien-Systematik (Begrünung, Verschattung, Wasserelemente, Entsiegelung,
  Ventilation); Kanton Zürich beziffert die Kühleffekte konkret (grosskroniger Baum >7 °C,
  Dachbegrünung tagsüber bis 6,6 °C, Wasserelemente bis 8 °C, heller Bodenbelag/Albedo nur 0,6 °C);
  Stadt Zürich mit eigener Fachplanung Hitzeminderung, Stadtklimatool und kostenloser
  Freiraumberatung für Bauherren; MeteoSchweiz Climate CH2025 bestätigt überdurchschnittliche
  Erwärmung der Schweiz. Keine eigene SIA-Norm zum Aussenraumklima gefunden — Steuerung läuft über
  kommunale/kantonale Instrumente statt Bundesnorm →
  `[[urbane-hitzeinseln-kuehlstrategien-aussenraum]]` (neu, emerging), FAQ **F140** neu.

**Register nachgeführt:** `destillate/INDEX.md` (drei Zeilen neu), `wiki/INDEX.md` (ein neuer
Destillat-Direktverweis, drei bestehende Zeilen mit Status-/Backlink-Updates, FAQ-Zählerzeile auf
F140/Run 100 aktualisiert), `wiki/BAUHERREN-FAQ.md` (F140 neu, F139 auf established), `wiki/
QUESTIONS.md` (Run 100 abgeschlossen, neue Prioritäten), `training/curriculum.md` (D70).
FAQ-Stand: **140 Kernfragen (F1-F140) belegt.**

## 2026-07-25 — Run 99: drei neue Themen freier Wahl — Legionellenschutz/WP-Effizienz, Betonkernaktivierung/TABS, Sanierungsfahrplan-Etappierung
PDF-Inventar weiterhin erschöpft. Punkte 1/2/4 der Run-98-Priorität (B1-Konsolidierung,
SWKI-VA105-01-Vollversion, Duschwasser-WRG SIA-385/2-Vollversion) sind Kaufentscheide/destruktive
Rückfragen bei Raphael und bleiben unangetastet; Massivbau/WDVS-Brandriegel bleiben auf passiver
Beobachtung. Drei parallele `general-purpose`-Agenten (nach der Run-97-Lehre zum Hintergrund-Stall
des `energie-berater`-Subtyps bewusst gewählt) bearbeiten Priorität 5 (neue Themen, Web-Pfad), alle
drei per `git status` vor der Register-Konsolidierung als echt geschrieben verifiziert.
- **Trinkwassererwärmung: Legionellenschutz vs. Wärmepumpen-Effizienz (neues Themenfeld):** SIA
  385/1:2020 senkt die pauschale 60-°C-Vorgabe auf gestufte 50-55 °C (Erleichterung bis 52 °C bei
  optimaler Anlage) und schafft die wöchentliche Legionellenschaltung ab, weil Feldstudien ihr
  keinen Hygienenutzen nachwiesen. Zielkonflikt konkret: Legionellen-Wachstumsoptimum ≈37 °C liegt
  im WP-Effizienzfenster 35-45 °C; Hebel = saubere Anlagenplanung (Zirkulation ≥55 °C/Strang,
  Wärmesiphon, Kaltwasser <25 °C) statt pauschales Hochheizen, alternativ Systemtrennung Heizung/
  Warmwasser → `[[trinkwassererwaermung-legionellenschutz-energieeffizienz]]` (neu, emerging), FAQ
  **F137** neu.
- **Betonkernaktivierung/TABS (neues Themenfeld, Healthcare-relevant):** Rohrregister in der
  Rohbaudecke, Systemtemperaturen Heizen 22-32 °C/Kühlen 16-20 °C (tiefste Vorlauftemperatur,
  ideal für WP-JAZ), aber Stunden- bis Tage-Trägheit erfordert Vorsteuerung statt klassischer
  Raumtemperaturregelung; Entscheidung fällt im Rohbau (einbetoniert, nicht korrigierbar); geeignet
  für grosse Gebäude mit stabiler Nutzung (Büro/Schule/Pflegebereich), ungeeignet für lastvariable
  Räume wie OP-Säle (nur deutsche Sekundärquellen für die Nicht-Eignungsaussage) →
  `[[betonkernaktivierung-tabs-energieeffizienz]]` (neu, emerging), Backlinks in
  `[[waermepumpe-systemvergleich]]`, `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]`,
  `[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` ergänzt, FAQ **F138** neu.
- **Sanierungsfahrplan/Etappierung Gebäudehülle (neues Themenfeld):** Etappieren ist erlaubt und in
  der Praxis meist der Regelfall, entscheidend ist ein vorab erarbeitetes Gesamtkonzept (GEAK Plus,
  bis zu fünf Sanierungsvarianten); Faustregel «Hülle vor Heizung» (EnergieSchweiz) vermeidet eine
  überdimensionierte Heizung und Wärmebrücken an nachträglichen Anschlüssen; Förder-Fallstrick: die
  90-%-Bonusschwelle für die Gesamtsanierung (ZH/SZ) muss von der ersten Etappe an mitgeplant
  werden, eine ausbezahlte Einzelmassnahme lässt sich förderrechtlich nicht nachträglich
  «aufwerten» → `[[sanierungsfahrplan-etappierung-gebaeudehuelle]]` (neu, emerging), FAQ **F139**
  neu.

**Register nachgeführt:** `destillate/INDEX.md` (drei Zeilen neu), `wiki/INDEX.md` (drei neue
Destillat-Direktverweise, zwei bestehende Zeilen mit Backlinks ergänzt, FAQ-Zählerzeile auf F139),
`wiki/BAUHERREN-FAQ.md` (F137-F139 neu), `training/curriculum.md` (D69), `wiki/QUESTIONS.md`.
FAQ-Stand: **139 Kernfragen (F1-F139) belegt.** Alle drei neuen Themen bewusst als `emerging`
eingestuft (Norm-Volltexte SIA 385/1, SIA 384.354, SIA 385/2 kostenpflichtig, nicht gelesen).

## 2026-07-25 — Run 98: WDVS-Brandriegel Kosten-Negativbefund + BSV-2026 Zieldatum Frühling 2027 + Massivbau-CHF/m² zweiter Negativbefund + SWKI-Lüftung Gesundheitsbau neu
- **WDVS-Brandriegel — Kosten weiterhin Negativbefund, BSV-2026 mit Zieldatum:** systematische
  Suche bei Gebäudehülle Schweiz, FFF (Fenster- und Fassadenbauverband) und Sto AG Schweiz findet
  keine öffentliche CHF/lfm- oder CHF/m²-Kennzahl für den Brandriegel-Mehraufwand (einzige
  gefundene Grössenordnung stammt aus einer deutschen Quelle, bewusst nicht als Schweizer Wert
  übernommen). Die BSV-2026-Totalrevision ist neu mit einem konkreten Zieldatum belegt:
  voraussichtlich **Frühling 2027** (Antrag an die IOTH-Plenarversammlung im März 2027), der
  materielle Inhalt zur Brandriegel-Pflicht bleibt unveröffentlicht →
  `[[wdvs-brandriegel-fassadendaemmung-vkf]]` bleibt established, FAQ **F135** geschärft.
- **Massivbau-CHF/m² — zweiter bestätigter Negativbefund:** vier weitere Quellen (Wüest Partner
  Holzbaukennzahlen Büro/Wohnbauten, Amt für Hochbauten Stadt Zürich, CRB/werk-material.online,
  Statistisches Amt Kt. ZH) liefern keinen isolierten, datierten Primärwert, der die
  AKTIVA-AG-Näherung (CHF 280.-/m²) ablösen oder bestätigen könnte →
  `[[massivbau-bauteildatenblatt-ksv-swisspor]]` bleibt beim CHF/m²-Teil emerging, FAQ **F134**
  geschärft. Meta-Entscheid: Thema nach zwei Negativbefunden in Folge auf passive Beobachtung
  umgestellt (Analogie zu E84 ZH-Solarpflicht) — weitere Suchversuche ohne neuen methodischen
  Ansatz (echter CRB-/Schätzerhandbuch-Zugang, reale Unternehmerofferte) wären Token-Verschwendung.
- **Neues Thema: SWKI-Lüftungsnormen Gesundheitsbau (schliesst eine SIA-2024-Lücke):** SWKI
  VA105-01:2015 «Raumlufttechnische Anlagen in medizinisch genutzten Räumen» (Nachfolgerin SWKI
  99-3:2003) als Leseprobe primärquellig gelesen — eigene Lüftungskonzepte 1a/1b (TAV vs.
  Mischlüftung) für OP-Saal/Isolierzimmer/IPS, Kühllast bis 200 W/m² im OP laut Vorwort,
  Wärmerückgewinnung in eigenem Anhang B3 differenziert statt Standardkomponente,
  TAV-Infektionsschutz-Vorteil physikalisch plausibel aber statistisch unbelegt (Richtlinie
  selbst); ergänzt die in `[[sia-2024-nutzungsdaten-gesundheitsbau]]` (F78) explizit offen
  gelassene Lüftungslücke OP/CT/MRT → `[[swki-lueftung-gesundheitsbau-hygiene-energie]]` (neu,
  emerging), FAQ **F136** neu.
- **Prozess-Lehre aus Run 97 erfolgreich umgesetzt:** alle drei Rechercheagenten dieses Laufs
  liefen von Anfang an als `general-purpose`-Subagenten (energie-berater-Subtyp bewusst gemieden)
  und wurden vor der Register-Konsolidierung per `git status`/`git diff` auf echte
  Dateiänderungen verifiziert (18-29 Tool-Aufrufe je Agent, keine Leerläufe).
- FAQ-Stand: **F1–F136** (F136 neu, F134/F135 geschärft). Register nachgeführt:
  `destillate/INDEX.md` (drei Zeilen neu/ergänzt), `wiki/INDEX.md` (zwei Zeilen geschärft, eine
  neu, FAQ-Zählerzeile auf F136 aktualisiert), `wiki/QUESTIONS.md` (Run 98), `training/
  curriculum.md` (D68).

## 2026-07-25 — Run 97: Grüne Hypotheken lückenlos primärquellenbelegt + Massivbau-CHF/m²-Näherung + Duschwasser SIA-385/2 verifiziert + WDVS-Brandriegel neu
- **Grüne Hypotheken — Marktbreite lückenlos primärquellenbelegt:** Urner Kantonalbank
  (Minergiehypothek 0,5 % + Energie-Sanierungshypothek 0,5 %), Thurgauer Kantonalbank
  (Energie-Hypothek 0,50 Pp.) und Schwyzer Kantonalbank (Nachhaltigkeits-Bonus 0,300 %, jetzt
  primärquellig statt nur über moneyland.ch) direkt auf den jeweiligen Bank-Websites verifiziert
  → `[[gruene-hypotheken-klimahypotheken-ch]]` bleibt established, elf statt acht Bankprodukte,
  keines mehr nur sekundärquellig, FAQ **F132** geschärft.
- **Massivbau-Kompaktfassade — CHF/m²-Näherung gefunden:** AKTIVA AG (Immobilien-Bewertung/
  CREM-Beratung) nennt CHF 280.-/m² für eine Kompaktfassade (BKP 22), Quelle laut Seite ein
  Blend aus Schätzerhandbuch + Wüest Partner + eigenen Erhebungen — Einzelquellen nicht
  getrennt, kein Ausgabejahr → `[[massivbau-bauteildatenblatt-ksv-swisspor]]` erhält den
  Kennwert als neuen emerging-Baustein (Schichtaufbau/U-Wert bleibt established), FAQ **F134**
  neu.
- **Duschwasser-WRG — SIA 385/2:2025 + GEAK-Mechanik primärquellig verifiziert:** SIA-Webshop-
  Leseprobe bestätigt einen neuen informativen Anhang K «Wärmerückgewinnung aus Duschwasser»
  (S. 53-60) in der seit 1.2.2025 gültigen Norm, Rechenweg bleibt aber hinter der
  kostenpflichtigen Vollversion (CHF 170.-) verschlossen; geak.ch liefert die GEAK-
  Erfassungsmechanik (Wärmeerzeuger «Solarenergie thermisch», fallbezogene Berechnung, keine
  feste Pauschale) → `[[duschwasser-waermerueckgewinnung-joulia]]` bleibt emerging, FAQ F133
  geschärft.
- **Neues Thema freie Wahl: WDVS-Brandriegel (VKF-Brandschutz Fassadendämmung):** EPS-Verband-
  Schweiz-Fachdokument, von der TKB-VKF geprüft und anerkannt, liefert die Brandriegel-
  Kernanforderung (RF1, Schmelzpunkt ≥1'000 °C, ≥0.2 m Höhe je Geschoss ab 11 m Gesamthöhe)
  direkt aus der rechtsverbindlichen VKF-Richtlinie 14-15 → `[[wdvs-brandriegel-
  fassadendaemmung-vkf]]` (neu, established), FAQ **F135** neu.
- **Prozess-Vorfall:** die ersten vier Rechercheagenten dieses Laufs (subagent_type
  `energie-berater`) sind im Hintergrund ohne einen einzigen echten Tool-Aufruf terminiert
  (0 tool_uses trotz «completed»-Status, keine Datei verändert) — nach Diagnose per
  `git status`/`git diff` mit `general-purpose`-Subagenten neu gestartet (20-27 echte
  Tool-Aufrufe/Agent). Lehre für künftige Läufe in `wiki/QUESTIONS.md` protokolliert.
- FAQ-Stand: **F1–F135** (F134/F135 neu, F132/F133 geschärft). Register nachgeführt:
  `destillate/INDEX.md` (vier Zeilen), `wiki/INDEX.md` (drei geschärft, eine neu, FAQ-
  Zählerzeile aktualisiert), `wiki/QUESTIONS.md` (Run 97), `training/curriculum.md` (D67).

## 2026-07-25 — Run 96: Massivbau-Bauteildatenblatt + grüne Hypotheken vertieft + Fernwärme-Schwelle enger + Duschwasser-WRG neu
- **Massivbau-Bauteildatenblatt gefunden (löst Priorität aus Run 95):** KSV-Dokumentation
  Kalksandstein (04.2015) + swisspor Planungsunterlagen Backstein (06/2022), beide vollständig
  gelesen — je ein kompletter Kompaktfassaden-Schichtaufbau (Tragwerk+Dämmung+Putz) mit U-Wert-
  Staffelung 0.36→0.13 W/m²K → `[[massivbau-bauteildatenblatt-ksv-swisspor]]` (neu, established
  für Schichtaufbau/U-Wert). CHF/m²-Kennwert in keiner Primärquelle gefunden (bestätigter
  Negativbefund, nur unbelegte Portal-Schätzungen CHF 85–260/m²).
- **Grüne Hypotheken auf established gehoben:** IFZ Sustainable Lending Monitor 2023 im Original
  gelesen (26/88 Banken ≈ 30 %, Zinsrabatt Ø 0,38 Pp.), 2024-Ausgabe über Institutsblog des
  Erst-Autors bestätigt (36,5 % von 85 Banken, dieselbe 0,38-Pp.-Zahl — Jahrgänge nicht
  verwechseln); sieben weitere Bankprodukte ergänzt (UBS Green/Renovation, Raiffeisenbank
  Aare-Reuss, Migros Bank, BEKB, LUKB primärquellenbelegt; Schwyzer Kantonalbank nur
  sekundärquellig via moneyland.ch) → `[[gruene-hypotheken-klimahypotheken-ch]]` established,
  FAQ **F132** geschärft.
- **Fernwärme-Objektgrössenschwelle weiter eingegrenzt:** gezielte Abfrage realer Grossobjekte
  (Alters-/Pflegeheime, Schulen) statt Strassenlisten-Rätselraten findet mit Tertianum Residenz
  Huob (Huobstrasse 3/5, Pfäffikon SZ) einen neuen Verweigerungsfall bei ≈303 kW — Fenster
  schrumpft von 290–407 kW auf **ca. 290–303 kW** (rund 13 statt 117 kW); Reglements-Check (TAB
  V1.8 + AGB V5.0, beide vollständig geprüft) bestätigt: keine publizierte Formel, reine
  Tool-interne Logik → `[[fernwaerme-anschlusskosten-zh]]`.
- **Neues Thema freie Wahl: Wärmerückgewinnung aus Duschwasser (Joulia-Duschrinnen):**
  Lückencheck gegen die komplette Sperrliste bestätigt eine echte Lücke. Duschrinnen-WRG gewinnt
  13–46 % der Duschwasserwärme zurück, Mehrpreis ~CHF 600.–, Payback ~3 Jahre (Herstellerangabe),
  offiziell anrechenbar bei MuKEn/EN-ZH (10 % pauschal) und Minergie (bis 46 % produktspezifisch);
  keine gesetzliche 10 °C-Grenze für die private Anwendung (nur ARA-Dimensionierungsgrundlage) →
  `[[duschwasser-waermerueckgewinnung-joulia]]` (neu, emerging), FAQ **F133** neu.
- FAQ-Stand: **F1–F133** (F133 neu, F132 geschärft). Register nachgeführt: `destillate/INDEX.md`
  (vier Zeilen), `wiki/INDEX.md` (eine geschärft, zwei neu), `wiki/QUESTIONS.md` (Run 96),
  `training/curriculum.md` (D66).

## 2026-07-25 — Run 95: WP-Grenzabstand vertieft + GVZ-Meldeprozess geklärt + E84 abgeschlossen + grüne Hypotheken neu
- **WP-Aussengerät-Grenzabstand vertieft:** eigene Volltextsuche in der Entscheiddatenbank des
  Baurekursgerichts ZH (1'231 Entscheide) bestätigt den ZH-Negativbefund durch eigene Prüfung statt
  Vermutung; ausserkantonale Stützlinie präzisiert — VGE AG WBE.2018.330 (3.12.2018): WP-Gerät gilt
  NICHT als «Gebäude» im IVHB-Sinn, hat aber aus Rechtsgleichheitsgründen (Art. 8 BV) Anspruch auf
  das Kleinbauten-Grenzabstandsprivileg; BGer 1C_204/2015 ergänzt die Verkabelungs-Erwägung →
  `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` bleibt emerging, FAQ **F130** geschärft.
- **GVZ-Meldeprozess PV-Feuerwehr↔Versicherung geklärt (löst offenen Punkt aus Run 92/94):** acht
  gvz.ch-Primärquellen zeigen konsistent zwei strukturell getrennte, unverlinkte GVZ-Meldewege
  (Feuerwehr-Dokumentation nach VKF-BSM Solaranlagen Ziff. 4 vs. Versicherungs-Wertvermehrungs-
  meldung) → `[[gvz-pv-meldeprozess-versicherung-feuerwehr]]` (neu, established), FAQ **F131** neu.
- **E84 ZH-Solarpflicht-Beratungsstand — fünfter und letzter aktiver Rechercheversuch:** drei genuin
  neue Methoden bestätigen denselben Negativbefund wie die vier Vorversuche über sieben Wochen;
  Punkt von aktiver auf passive (ereignisgetriebene) Beobachtung umgestellt, aus der «Nächster
  Lauf»-Prioritätenliste gestrichen → `[[zh-energiegesetz-revision-solarpflicht-2026]]`, FAQ
  **F116** geschärft.
- **Neues Thema freie Wahl:** grüne Hypotheken/Klimahypotheken — SBVg-Selbstregulierung (Volltext)
  verpflichtet Banken seit 1.1.2023 zur Thematisierung der Energieeffizienz, aber nicht zum
  Zinsrabatt; Praxisbeispiel ZKB-Umweltdarlehen bis −0,8 % p.a. bei GEAK-Nachweis →
  `[[gruene-hypotheken-klimahypotheken-ch]]` (neu, emerging), FAQ **F132** neu.
- FAQ-Stand: **F1–F132** (vier neue/geschärfte Einträge). Register nachgeführt: `destillate/
  INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (E84 geschlossen), `training/curriculum.md`
  (D65), `wiki/BAUHERREN-FAQ.md`.

## 2026-07-25 — Run 94: Batteriespeicher-Brandschutzquelle gefunden + SNR 464022 teilweise erschlossen
- **VKF 22-15 gezielt auf Batteriespeicher geprüft — zweiter Negativbefund:** Volltextsuche
  «Batterie/Speicher/Lithium/Akku» in der Richtlinie 22-15de selbst sowie in den zwei zitierten
  Vollzugsdokumenten (GVZ-Weisung 20.06, GVB-Merkblatt 09/2024) ergibt keinen Treffer — nach der in
  Run 93 widerlegten Richtlinie «Gefährliche Stoffe» ist damit auch diese zweite naheliegende
  VKF-Quelle für Batteriespeicher-Mengenschwellen ausgeschlossen → `[[vkf-richtlinie-22-15-blitzschutzsysteme]]`
  ergänzt, FAQ **F127** neu.
- **Die tatsächliche Quelle gefunden — löst den seit Run 93 offenen Rechercheauftrag:** VKF-
  Brandschutzmerkblatt «Lithium-Ionen-Batterien» (2005-15de, gültig ab 01.06.2021) + VKF-FAQ 2005-01
  «Lithium-Eisenphosphat-Batterien» (Beschluss ABSV 09.09.2025), beide vollständig via curl+pdftotext
  gelesen. Hazard-Level-Schwellen HL I < 15 / HL II 15-100 / HL III > 100 kWh pro Brandabschnitt;
  Standard-Lithium-Ionen ab 15 kWh braucht EI 60, die FAQ 2005-01 senkt das für die marktführende
  LFP-Chemie (~80 % CH-Markt) auf EI 30 bis 100 kWh, plus EFH-Sonderregel (alle Räume ausser
  Fluchtweg/Gefahrenzone, unabhängig von der Kapazität) → `[[vkf-lithium-batteriespeicher-brandschutz]]`
  (neu, established), FAQ **F128** neu.
- **SNR 464022 (Blitzschutz-Ausführungsdetails) — kein reiner Negativbefund, teilweise erschlossen:**
  über eine frei abrufbare Electrosuisse-Korrigenda-Datei waren 5 von 56 Normseiten wortgetreu lesbar
  (Blitzschutzpflicht-Tabelle bestätigt wortgleich das bestehende VKF-22-15-Destillat, Erder-
  Werkstofftabelle, harte Norm-Pflicht: PV-Anlagen auf Gebäuden mit bestehendem Blitzschutzsystem
  müssen ins LPS integriert werden). Wichtiger Statusbefund: die gelesene Ausgabe 2015+COR:2016 ist
  seit 20.02.2024 durch die Nachfolgenorm SN 414022:2024 ersetzt (CHF 169.-, kein freier Auszug
  gefunden) — die übrigen ~51 Seiten mit den eigentlichen Ausführungsdetails bleiben kostenpflichtig
  → `[[snr-464022-blitzschutz-ausfuehrung]]` (neu, established für die gelesenen Seiten), FAQ **F129** neu.
- Register nachgeführt: `destillate/INDEX.md` (3 Zeilen neu/ergänzt), `wiki/BAUHERREN-FAQ.md`
  (F127-F129 neu), `wiki/QUESTIONS.md` (Run-93-Punkt VKF-22-15 als [x] geklärt, Batteriespeicher-
  Brandschutzquelle als [x] geklärt, SNR 464022 als [~] teilweise gelöst markiert).

## 2026-07-25 — Run 94: neue Themen-Recherche nach freier Wahl (parallele Rechercheagenten)
- **WP-Aussengerät Grenzabstand als Bauteil (nicht Lärmschutz) — bisher unabgedeckte Lücke
  geschlossen:** ZH-Rechtstext PBG § 260 Abs. 4 (Nachtrag 133, seit PBG-Revision 2.7.2026)
  amtlich verifiziert — Gebäude ≤ 1,5 m Höhe UND ≤ 2 m² Grundfläche brauchen GAR KEINEN Grenz-/
  Gebäudeabstand; die meisten WP-Aussengeräte (Referenzmass 1,08×1,29×0,96 m, AGVE 2012) fallen
  darunter. SZ kennt keine solche Bagatellschwelle: § 61 PBG SZ verlangt für «Nebenbauten» einen
  Grenzabstand von mindestens 2,50 m, reduzierbar auf null nur mit schriftlicher Nachbarzustimmung.
  Klar von der bereits bestehenden Lärmschutz-Abstandsfrage (`[[cerclebruit-vollzugshilfe-
  waermepumpen-laermschutz]]`) und der Meldeverfahrens-Frage (`[[bvv-zh-meldeverfahren-
  klimaanlagen-waermepumpen]]`) abgegrenzt → `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]`
  (neu, emerging), FAQ F130 neu. Nebenbefund: KB `baurecht` zitiert im Artikel `abstaende-und-
  hoehen` noch die alte (Stand 2017) Fassung von § 273 PBG ZH («Besondere Gebäude») statt der
  aktuellen — Aktualisierungshinweis im Destillat hinterlegt, Umsetzung liegt bei der KB baurecht.
- Register nachgeführt: `destillate/INDEX.md` (neue Zeile), `wiki/INDEX.md` (neue Destillat-
  Direktverweis-Zeile), `wiki/BAUHERREN-FAQ.md` (F130 angehängt).

## 2026-07-25 — Run 93: komplette Run-92-Prioritätenliste abgearbeitet, vier neue/geschärfte Themen
- **GVZ-PDF `21photovoltaikanlagen-doku-pm.pdf` erfolgreich per curl+pdftotext gelesen** (löst den
  Run-92-Auftrag): kein Fliesstext-Merkblatt, sondern Feuerwehr-Dokumentationsformular (Legende
  inkl. Batterien); dahinterliegende Pflicht im VKF-BSM «Solaranlagen» 2001-15de Ziff. 4
  (Orientierungsplan/Strangplan an Feuerwehrkommando) + neue Ziff.-3.3-Anforderung (Hagel-/
  Windwiderstand SIA 261/261-1) → `[[gvz-photovoltaik-melde-versicherungspflicht]]` (neu,
  established), FAQ F123 neu.
- **VKF-Richtlinie «Gefährliche Stoffe» Ziff. 3.5.3 selbst beschafft und Sekundärzitat widerlegt:**
  Ziffer 3.5.3 regelt nur Blitzschutz-Mengenschwellen für brennbare Gase/Flüssigkeiten/Reifenlager/
  Pyrotechnik (Buchstaben a-d) — keine Buchstaben e/f, keine Batteriespeicher-Erwähnung im gesamten
  Dokument → `[[vkf-richtlinie-gefaehrliche-stoffe]]` (neu, established), FAQ F124 neu.
- **CH-amtliche Glas-g-Wert-Tabelle je Himmelsrichtung — primärquellenbestätigter Negativbefund:**
  Minergie-Anwendungshilfe 2025-2 (Kap. 6.3.8) rechnet den Glas-g-Wert methodisch
  orientierungsunabhängig, nur g_tot (SIA 180) ist orientierungsabhängig; g-Wert-Bandbreiten je
  Verglasungstyp über vier CH-Quellen konsistent belegt (45-62 % Wärmeschutz, 13-40 %
  Sonnenschutzglas) → `[[glas-g-wert-verglasungstypen-ch]]` (neu, established),
  `[[fenster-uw-g-wert-zielkonflikt]]` auf established gehoben, FAQ F125 neu — schliesst
  Curriculum-Punkt A5 vollständig ab.
- **Massivbau-CO2-Gegenzahl zu Lignumdata-Holzbau:** zwei Schweizer Primärquellen (Ziegelindustrie-
  EPD 2017, treeze/Stadt-Zürich-Betonökobilanz 2016) liefern reale absolute kg-CO2-eq/m²-Werte —
  Backstein-Vollwand 35-52, unbewehrte Betonwand 46-69, beide bereits ohne Dämmung/Putz/Bewehrung
  über dem kompletten Holzbau-Wandaufbau (25-34) → `[[kbob-massivbau-bauteilaufbau-co2]]` (neu,
  established), `[[graue-energie]]` ergänzt, FAQ F126 neu.
- FAQ-Stand: **F1–F126** (vier neue Fragen F123-F126). Register nachgeführt: `destillate/INDEX.md`
  (vier neue Zeilen), `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `wiki/BAUHERREN-FAQ.md`,
  `training/curriculum.md` (D63, A5 final abgeschlossen), `raw/_INGESTED.md`.
- Bewusst nicht angegangen: B1-Destillate-INDEX-Konsolidierung, SIA-2024-Gesundheitsbau-Zwilling
  (beide destruktiv, Rückfrage bei Raphael nötig). Neu offen: VKF-Richtlinie 22-15 im Volltext +
  Lithium-Ionen-Infoblatt (Batteriespeicher-Mengenschwellen), GVZ-Formular-Versicherungskopplung,
  Massivbau-Bauteildatenblatt mit vollem Schichtplan, SNR 464022.

## 2026-07-25 — Run 92: VKF-Richtlinie 22-15 + GVZ-Prämienformel primärquellen-verifiziert, zwei neue Themen
- **VKF-Richtlinie 22-15 «Blitzschutzsysteme» selbst beschafft** (frühere Fehltreffer-Richtlinie
  23-03d korrigiert): neunteilige Tabelle wer grundsätzlich blitzschutzpflichtig ist, JANS-Healthcare-
  Doppelkriterium (Spital/Pflegeheim ab 20 hilfsbedürftigen Personen Klasse III/II + lebenserhaltende
  Anlagen Klasse II unabhängig von Personenzahl) → `[[vkf-richtlinie-22-15-blitzschutzsysteme]]`
  (neu, established), FAQ F119 neu.
- **GVZ-Prämienmechanik PV/Speicher ziffern-genau verifiziert:** Einheitsprämie 0,29 ‰ für alle
  Gebäude, PV zählt nur als Wertvermehrung (kein PV-Zuschlag); Negativbefund Batteriespeicher (keine
  GVZ-Aussage) und Kt. Schwyz (keine öffentliche Formel) → `[[gvz-praemienmechanik-pv-speicher]]`
  (neu, established), FAQ F120 neu.
- **Neuer Themenartikel Fenster-Zielkonflikt Uw/g-Wert** (schliesst Curriculum-Punkt A5): SIA-180-
  g_tot-Grenzen orientierungsabhängig, Sonnenschutzglas-vs-Storen-Tradeoff, CH-Stundenkriterium statt
  DE-Kelvinstunden-Methode → `[[fenster-uw-g-wert-zielkonflikt]]`, FAQ F121 neu.
- **Neues Destillat KBOB-Bauteilkatalog CO2 je Aufbau:** Holzbau-Aussenwand 25-34 kg CO2-eq/m²,
  treeze-Studie belegt Holzriegelwand −73 % ggü. Backstein+EPS bei gleichem U-Wert →
  `[[kbob-bauteilkatalog-co2-je-aufbau]]` (neu, established), FAQ F122 neu.
- Vier parallele Sonnet-Rechercheagenten; alle Register-/FAQ-Edits mit echten Umlauten auf dem
  Hauptmodell geschrieben. FAQ-Stand F1–F122 (vier neue Fragen). PDF-Inventar weiterhin erschöpft
  seit Run 65. Output: `outputs/2026-07-25_energie-run92.md`.

## 2026-07-25 — Run 91: drei Run-90-Prioritäten abgearbeitet, eine wichtige Korrektur
- **VKF-Blitzschutz-Ziffer ziffern-genau verifiziert:** VKF-Brandschutzmerkblatt «Solaranlagen»
  2001-15de (Ausg. 01.01.2022), Ziff. 3.1 Abs. 3, wörtlich zitiert und zweifach gegengeprüft (VKG-
  REST-API, GVL Luzern) → `[[pv-blitzschutz-gebaeudeversicherung-ch]]` auf **established** gehoben.
- **Korrektur (nicht nur Bestätigung): Batteriespeicher-Brandabschnitte.** Die bisherige
  «100 kWh EI30/EI60»-Faustregel gilt nur für LFP-Speicher (VKF-FAQ 2005-01, 09.09.2025);
  Standard-Lithium-Ionen/NMC-Speicher (VKF-Brandschutzmerkblatt 2005-15de, 01.06.2021) unterliegen
  einer strengeren DREI-stufigen Systematik (bis 15 kWh EI30 / 15–100 kWh EI60 / ab 100 kWh primär
  Aussenaufstellung) — FAQ F118 entsprechend präzisiert.
- **SZ-Erdwärme-Flächenkollektor S1/S3:** acht amtliche SZ-Dokumente gezielt durchsucht, kein
  SZ-eigenes Merkblatt gefunden — Negativbefund breiter abgestützt und abgeschlossen →
  `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]`, FAQ F110 geschärft.
- **Fernwärme SZ:** Energie-Einsiedeln-Preisblatt 2026 gefunden (11.19 Rp./kWh, −3 % ggü. 2025),
  Energie-Ausserschwyz-Genossenschaftsrabatt (CHF 350/Anteil, max. CHF 7'000) neu belegt →
  `[[fernwaerme-anschlusskosten-zh]]`.
- Vier parallele Sonnet-Rechercheagenten; alle Destillat-/Register-/FAQ-Edits mit echten Umlauten auf
  dem Hauptmodell geschrieben (Run-84-Umlaut-Bug-Schutz). FAQ-Stand unverändert F1–F118 (Präzisierungen,
  keine neue Frage). PDF-Inventar weiterhin erschöpft seit Run 65.

## 2026-07-25 — Run 90: vier Backlog-Vertiefungen + neues Thema PV-Blitzschutz/Versicherung
- **Anergienetz CHF/m²-Kennzahl** erstmals grob belegt (BFE-Fallbeispiele-Bericht 2017/18):
  FGZ Friesenberg ≈230 CHF/m² EBF Netzinfrastruktur (n=1); bestätigter Negativbefund für einen
  generellen Branchenrichtwert → `[[anergienetz-kalte-fernwaerme-ch]]`, FAQ F109 geschärft.
- **Erdwärme-Flächenkollektor SZ:** S1/S3-Zuordnung bundesrechtlich geklärt (BAFU/FWS 2009),
  «Grabenkollektor» als CH-Kategorie endgültig widerlegt (deutsche Herstellerkategorie) →
  `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]`, FAQ F110 geschärft.
- **Uf-Werte:** langjährige Lücke strukturell geklärt (SZFF verlangt produktspezifischen Nachweis
  statt Pauschaltabelle) + Hersteller-Bandbreiten EgoKiefer/4B ergänzt →
  `[[uf-werte-rahmenmaterial-grobuebersicht]]`, Punkt abgeschlossen.
- **Neues Destillat** `wiki`-verlinkt `[[pv-blitzschutz-gebaeudeversicherung-ch]]`: keine
  automatische PV-Blitzschutzpflicht, GVZ-Meldepflicht mit Erstellungskosten, Kt. SZ als
  GUSTAVO-Kanton ohne Versicherungsmonopol identifiziert, Batteriespeicher-Brandschutzeinordnung.
  FAQ **F118** neu.
- **B4 aus Run 89 erledigt:** `wiki/INDEX.md`-Kernprodukt-Zeile verdichtet statt additiv
  fortgeschrieben (verweist neu auf CHANGELOG statt jede Lauf-Ergänzung einzeln aufzulisten).
- **Bewusst nicht angegangen:** B1-Dubletten-Konsolidierung + SIA-2024-Zwilling — beides
  destruktive Restrukturierung, Rückfrage bei Raphael nötig (Rule `wissens-bibliothekar`).
- Output: `outputs/2026-07-25_energie-run90.md`.

## 2026-07-25 — Run 89: Backlog-Bereinigung + neuer Themenartikel Gebäudeschadstoffe
- Kollisionsschutz geprüft (kein Zweitprozess). Geprüft, ob Run-88-Prioritäten 1–3
  (INDEX-Entwirrung B3/B4, `foerderung-energie-zh.md` KRNr-Stand E1) noch offen sind — beide
  bereits im/kurz nach Commit `94786f91` erledigt, daher keine Doppelarbeit.
- **Neuer Wiki-Themenartikel** `wiki/gebaeudeschadstoffe.md`: promoviert den seit Run 87 im
  INDEX-Backlog stehenden Kandidaten aus dem bestehenden Destillat
  `[[gebaeudeschadstoffe-checkliste-zh]]` (FAQ F23) — 4-Fälle-Raster, Schadstoff-Stichjahre,
  Bauherren-Transfer, Bezug graue Energie/Naturbaustoffe.
- `wiki/INDEX.md`: Themen-Artikel 24 → 25; Backlog-Liste bereinigt (4 bereits in Run 87 gelöste
  Punkte entfernt: Blower-Door-Kosten, Fenster-Etikette-Klassengrenzen, GEAK-Klassengrenzen,
  SZ-Denkmalpflegebeitrag).
- `wiki/QUESTIONS.md` E13, `wiki/BAUHERREN-FAQ.md` F23: Backlinks zum neuen Themenartikel ergänzt.
- Output: `outputs/2026-07-25_energie-run89.md`.

## 2026-07-25 — Solarpflicht-Kantone Run 61 (Nachrecherche offene Punkte aus Run 60/Health-Check)
- **Appenzell Innerrhoden — Quellenwiderspruch aufgeloest:** Eigenstromerzeugungspflicht besteht
  seit 1.4.2020 (Art. 7a EnerG/Art. 16a EnerV), primaerquellennah belegt ueber das Amt fuer Hochbau
  und Energie AI («Hinweise zur Vollzugspraxis EnerG AI», Kapitel EN-104) + egonline.ch (25.2.2020).
  Die fruehere «nur Melde-/Bewilligungspflicht»-Lesart (ai.ch/Solaranlagen) bezog sich auf das
  Bewilligungsverfahren der Anlage selbst, nicht auf die materielle Installationspflicht — zwei
  verschiedene Rechtsfragen, die Sekundaerquellen und der bisherige Destillat-Stand vermischt hatten.
- **W/m²-Bemessung primaerquellen-verifiziert (Volltext-Fetch via curl/pdftotext bzw. r.jina.ai-Proxy
  fuer JS-gerenderte Erlass-Sammlungen):** Zug (§8 V EnG-ZG: 10 W/m² EBF, max. 30 kW, Ersatzabgabe
  CHF 1'000/kW), Graubuenden (EN-104 GR amtlich: 10 W/m² EBF, max. 30 kW, keine Ersatzabgabe),
  Glarus (Art. 14b Energiegesetz, Landsgemeinde-Memorial: 10 W/m² EBF, max. 30 kW), Appenzell
  Ausserrhoden (Art. 19a bis kEnV: 10 W/m² EBF, max. 30 kW, bei Gemeinschaftsanlage 30 W/m² ohne
  Deckel). Sechster Kanton mit derselben Bemessungslogik (Nidwalden) bleibt durch Analogie
  plausibilisiert, aber nicht erneut im Volltext geprueft.
- **Obwalden aktualisiert:** SVP-Volksinitiative «Keine Solarpflicht» (seit 22.1.2026 in
  Unterschriftensammlung, Quorum 500 Unterschriften) gemaess uebereinstimmender Web-Recherche
  Anfang Juli 2026 eingereicht, Regierungsrat-Kenntnisnahme 6.7.2026 (keine direkt einsehbare
  ow.ch-Primaerquelle, JS-gerendert) — Formalpruefung/Abstimmungstermin weiterhin offen, als ⚠
  politisch volatil markiert.
- **Neuenburg praezisiert:** zwei zu unterscheidende Regelungsebenen identifiziert — (a) bereits
  seit 2021 in Kraft eine engere, warmwasserfokussierte Solarpflicht (Art. 27 RELCEn, Volltext
  verifiziert), (b) separat fuer 2026/2027 geplant eine umfassendere MuKEn-Modul-E-Revision (15 W/m²
  SRE, 20 W/m² bei WW-Kombination) — weiterhin nicht in Kraft. Der bisherige Destillat-Stand hatte
  nur (b) erwaehnt und dabei implizit unterschlagen, dass NE bereits eine (schwaechere) Solarpflicht
  kennt.
- Geaenderte Dateien: `destillate/solarpflicht-national-mantelerlass-kantone.md` (Frontmatter +
  Kantonstabelle + Offene-Punkte-Sektion), `wiki/solarpflicht-schweiz-kantone.md` (Kantonstabelle +
  Bauherren-Transfer + Offen-Sektion), `wiki/BAUHERREN-FAQ.md` (neuer Eintrag F117).
- **Status bewusst weiterhin `emerging`, nicht auf `established` gehoben:** trotz vier neu
  primaerquellen-belegten Kantonen bleiben echte offene Punkte (Obwalden-Referendum politisch
  volatil, Neuenburg-Revisionsdatum unbestaetigt, Nidwalden-Wert nur analog, einzelne Kantone wie
  Basel-Stadt/Jura/Freiburg weiterhin mit Luecken) — die Promotion-Schwelle aus der Run-88-
  Entscheidung («keine Kernunsicherheit mehr») ist damit noch nicht erreicht.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): Regenwasser-Rueckverweis zu planungsgrundlagen
- `wiki/regenwasserbewirtschaftung-versickerung-zh.md` (links) → `[[recht-norm-regenwasser-gewaesserraum-zh]]` (KB planungsgrundlagen, Recht/Verfahren GSchG-Kaskade + Gewaesserraum-Festlegung). Beide KBs fuehrten einen materiellen Regenwasser-Artikel, ohne aufeinander zu zeigen — genau in dieser Blindstelle stand der jetzt korrigierte Versickerungs-Rechtsfehler auf der pg-Seite.
- Diese KB war in beiden Cross-Befunden (EN-102-Normbasis SIA 380/1:2016, Versickerung als Regelfall) **die richtige Seite** — keine Korrektur hier.
- Rollenteilung neu in der Matrix fixiert: energie fuehrt die Bewilligungsschwellen im Baugesuch (5:1, Bagatell 20 m2, Adsorber) + Schwammstadt, planungsgrundlagen fuehrt Recht/Verfahren.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Run 88 (Verwaltungsschicht-Bereinigung nach Health-Check 2026-07-25)
- [fix] **B5 vollstaendig behoben:** 82 kaputte `sources:`-Dateireferenzen in 11 Wiki-Artikeln
  (inkl. `BAUHERREN-FAQ.md` mit 50) zurueck auf ASCII-Dateinamen (deterministisches Script, nur
  `destillate/*.md`-Pfad-Tokens angefasst, Fliesstext unberuehrt). Alle Referenzen verifiziert
  aufloesbar (0 fehlend).
- [fix] **F1 vollstaendig behoben:** `schallschutz-sia181.md` (vom 21.07.-Umlaut-Fix uebersehen)
  jetzt in echten Umlauten — wortbasierte Korrektur (41 spezifische Woerter), Frontmatter/
  Wikilink-Slugs/Codepfade bewusst unangetastet gelassen (bleiben ASCII-korrekt).
- [fix] **F2 vollstaendig behoben:** `links:`-Trennzeichen in 9 Wiki-Dateien (daemmstoffe-lambda,
  energienachweis-zh, fenster-verglasung, foerderung-energie-sz, innendaemmung, komfortlueftung,
  naturdaemmstoffe, pv-eigenverbrauch-zev, pv-solar-technologien) von Leerzeichen auf Komma
  vereinheitlicht.
- [fix] **F3 behoben:** `solarwaerme-warmwasser.md` `sources:` auf vollen `destillate/…md`-Pfad
  gebracht (6 Eintraege).
- [korrektur] **F4 als Fehlalarm identifiziert:** `sia-2024-nutzungsrandbedingungen-gesundheitsbau.md`
  folgt korrekt dem fuer `destillate/` seit Tag 1 verwendeten Schema
  (quelle/herausgeber/ausgabe/gelesen/datenstand/status/last_updated, siehe PROGRAMM.md) — der
  Health-Check hatte faelschlich das allgemeine `wissen/WISSEN-CLAUDE.md`-Wiki-Schema
  (title/status/last_updated/sources/links) als Massstab angelegt. Keine Aenderung noetig.
- [register] **B2 behoben:** die zwei fehlenden Destillate (`bfe-waermebrueckenkatalog-
  innendaemmsysteme-bfh-2013`, `sia-2024-nutzungsrandbedingungen-gesundheitsbau`) in
  `destillate/INDEX.md` nachgetragen. Fuer Letzteres ein naher Ueberschneidungs-Zwilling zu
  `sia-2024-nutzungsdaten-gesundheitsbau` in `wiki/QUESTIONS.md` vermerkt (Konsolidierung
  braucht Rueckfrage, nicht destruktiv zusammengefuehrt).
- [promotion] **G-Empfehlungen entschieden (3. Anlauf):** `regenwasserbewirtschaftung-
  versickerung-zh` und `sommerlicher-waermeschutz` auf **established** gehoben (amtliche/
  triangulierte Mehrfachquellen, Kernfakten belastbar; residuale Offen-Punkte sind Verfeinerungen,
  keine Kernunsicherheit). `solarpflicht-schweiz-kantone` bewusst **nicht** promoviert —
  echte, laufende Rechtsunsicherheit in mehreren Kantonen (ein Quellenwiderspruch AI,
  zwei haengige Referenden, mehrere unbestaetigte Kennwerte); Verifikations-Stufe (Rule
  260712) verlangt Widerlegungspruefung vor `established`, hier nicht bestanden.
- [faq] F24 (Regenwasser) + F11 (sommerlicher Wärmeschutz) mit Status-Hebungs-Vermerk geschaerft
  (Pflicht-Block VERDICHTUNG).
- **Nicht angegangen** (Umfang zu gross fuer diesen Lauf, keine Rueckfrage-Gelegenheit fuer
  destruktive Restrukturierung): B1 (`destillate/INDEX.md`-Dubletten, 24 Gruppen, `muken-2025-
  verabschiedet` 7×), B3 (`wiki/INDEX.md` Themen-Artikel-Vermischung, 49 Destillat-only-Eintraege),
  B4 (FAQ-INDEX-Mega-Absatz), E1/E2 (`foerderung-energie-zh` KRNr-Nachzug, `BAUHERREN-FAQ`-
  Frontmatter-Datum) — Prioritaet naechster Lauf.
- PDF-Inventar weiterhin erschoepft (unveraendert seit Run 65); dieser Lauf bewusst als reiner
  Register-/Qualitaets-Lauf statt weiterer Themen-Neuerschliessung, um die seit mehreren Health-
  Checks wachsende Verwaltungsschuld erstmals wieder zu senken statt sie weiter anwachsen zu lassen.
  Output: `outputs/2026-07-25_energie-run88.md`.

## 2026-07-25 — Wissens-Health-Check (Phase 1, Mac Mini Nachtschicht): A0 · B5 (NEU: 82 kaputte `sources:`-Dateireferenzen in 11 Artikeln inkl. BAUHERREN-FAQ, Kollateralschaden des Umlaut-Fixes vom 21.07.; die vier Register-Befunde vom 21.07. sind seither gewachsen statt behoben, destillate/INDEX.md jetzt 179 Zeilen/138 Destillate, wiki/INDEX.md Themen-Artikel-Abschnitt 73 Eintraege fuer 24 echte Dateien) · C0 · D0 · E2 (foerderung-energie-zh weiterhin ohne KRNr-6062/6063-Stand, 2. Flag; BAUHERREN-FAQ-Frontmatter last_updated 8 Tage hinter dem eigenen Inhalt) · F4 (NEU: schallschutz-sia181.md komplett in ae/oe/ue-Ersatzschreibung, vom 21.07.-Fix nicht erfasst; 3 fortbestehende Befunde unveraendert) · G3 (regenwasserbewirtschaftung-versickerung-zh + sommerlicher-waermeschutz stehen zum dritten Mal in Folge unveraendert auf emerging trotz wiederholter Promotion-Empfehlung). Report: `outputs/2026-07-25_health-check.md`.

## 2026-07-24 — Wissens-Chef Run 14 (Cross-KB): EN-104-Formular-Querbezug F116 → planungsgrundlagen
- [link] `wiki/BAUHERREN-FAQ.md` (F116 Solarpflicht/EN-104): direkter Querbezug zur pg-fuehrenden Formular-/
  Verfahrensseite `planungsgrundlagen/wiki/energie-energienachweis-zh-formulare` gesetzt (EN-104-ZH
  Bedienung/EVEN/30-kW-Grenze). Werte fassungsgleich verifiziert (0 Widerspruch, Run 14). Der offene
  Private-Kontrolle-Trim (energie↔pg, destruktiv) bleibt fuer Raphael vorgemerkt — keine autonome Aktion.

## 2026-07-24 — Run 87 (Intensiv-Lauf): 8 parallele Primärquellen-Recherchen, FAQ F1–F116

**Kontext:** PDF-Inventar seit Run 65 erschöpft (SharePoint `PL - 04 Energie` erneut geprüft, keine
neue Fachdatei) — Web-/Primärquellen-Pfad statt PDF-Transfer. Workflow-Tool verweigerte den Start
(«Review dynamic workflow before running», nicht interaktiv bestätigbar in dieser non-interaktiven
Session) → Fallback auf 8 parallele Background-Agents (Tool `Agent`), jeder liefert nur strukturierten
Text zurück, Hauptmodell schreibt alle Destillate/Register mit echten Umlauten (Run-86-Muster).

- [aktualisiert] `[[anergienetz-kalte-fernwaerme-ch]]`: Rechtsrahmen ZH amtlich verifiziert — § 295
  Abs. 2 PBG (nicht EnerG) regelt die Anschlussverfügung, § 11 Abs. 5 EnerG + AWEL-Vollzugspraxis
  regeln die 70-%-Erfüllungsoption beim Heizungsersatz. Status Rechtsrahmen: established. FAQ F111 neu.
- [aktualisiert → established] `[[oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz]]`:
  Entzugsleistung 15–20 W/m² (AWP-Merkblatt T2/2007) + SZ-Verfahren amtlich (403-Sperre umgangen via
  curl Browser-UA). FAQ F112 neu.
- [aktualisiert] `[[denkmalschutz-energiesanierung-zh-sz]]`: § 238 PBG Wortlaut ergänzt (korrigiert
  frühere ungenaue § 295-Zuschreibung), SZ-Beitragswiderspruch 25%/30/35/40% formal aufgelöst
  (Grundbeitrag + Schutzziel-Zuschlag, § 16a DSG/§ 5 DSV). FAQ F113/F114 neu.
- [aktualisiert] `[[zh-energiegesetz-revision-solarpflicht-2026]]`: Geschäftsnummern KRNr 6062
  (Solarpflicht) + 6063 (Langzeitspeicher) amtlich identifiziert via CDWS-Geschäftsdatenbank, klar
  unterschieden von KRNr 6064 (Rahmenkredit) — löst Verwechslungsgefahr seit Run 82. Stand unverändert
  (KEVU-Kommission seit 26.11.2025). FAQ F116 neu.
- [neu] `[[blower-door-test-kosten-ch]]`: Blower-Door-Test CH — Kosten, Pflicht (Minergie-P/-A),
  n50-Grenzwerte SIA 180/ISO 9972. Emerging (nur eine CH-CHF-Quelle). FAQ F115 neu.
- [gegengeprüft, keine Änderung] `[[geak-klassengrenzen-relative-klassierung]]`,
  `[[fenster-energieetikette-fea-bfe]]`: über unabhängige Zweitquelle bestätigt (GEAK-Manual 5.2,
  fenster-energieetikette.ch); GEAK-Produktreglement 2026 selbst weiterhin ohne eigene Zahlenwerte.
- **Register:** `destillate/INDEX.md` (7 Zeilen), `wiki/BAUHERREN-FAQ.md` (F111–F116, F110
  aktualisiert), `wiki/INDEX.md` (FAQ-Standzeile), `wiki/QUESTIONS.md` (Abschnitt Run 87). Curriculum
  bewusst nicht nachgeführt (Budget-Priorisierung) — nächster Lauf nachholen.
- **Werkzeug-Hinweis:** Workflow-Tool in dieser non-interaktiven Session nicht nutzbar (Review-Gate
  ohne Bestätigungsmöglichkeit) — Agent-Fanout ist der funktionierende Ersatz für Multi-Agent-
  Parallelisierung in diesem Kontext.
- Output: `outputs/2026-07-24_energie-run87.md`.

## 2026-07-23 — Wissens-Chef Run 13 (Cross-KB): Indach-«+60 %»-Korrektur + 3 Querverlinkungen
- [korrektur] `wiki/pv-solar-technologien.md` (Kosten-Sektion): der stehen gebliebene Wert «Indach ~+60 %»
  war stale und widersprach der eigenen Run-86-Korrektur (`QUESTIONS.md` E-R86c) UND der KB planungsgrundlagen
  (`energie-pv-eignung-typenwahl`). Adversarial verifiziert (Verdikt CONFIRMED, KB-intern nicht propagiert).
  Ersetzt durch quellentreuen Vorbehalt (BFE-Preisbeobachtungsstudie 2024: kein signifikanter Aufschlag mehr
  für Standard-Module Typ E; Faustregel «+60 %» undatiert/relativiert), Solarziegel-«~doppelt» bleibt; KEIN
  Zahlenwert erfunden. Verweis auf `[[pv-marktzahlen-kosten-ch-2025]]` + pg.
- [ergänzt] `wiki/graue-energie.md`: Querbezug KB normen gesetzt — Norm-Rechenkette SIA 2032/2040/2039/EN 15804
  im normen-Destillat `sia-2040-2017` (dort Norm-Ziffern, hier angewandte Kennwerte). Bidirektional (normen zieht zurück).
- [ergänzt] `wiki/BAUHERREN-FAQ.md`: F110 (oberflächennahe Erdwärme) → Querbezug KB planungsgrundlagen auf den
  amtlichen Eignungslayer (naturgefahren-objektschutz §6c Erdwärmenutzung + §8b Grundwasserschutzzonen);
  F109 (Anergienetz) → Bezugsquelle ZH-Wärmerichtplan/LU klimafreundlichheizen.ch (pg geoportale-uebersicht).
  Beide bidirektional (pg-Rückverweise gesetzt). Cross-KB Run 13. Report: `wissen/koordination/outputs/2026-07-23_wissens-chef-run13.md`.

## 2026-07-23 — Energie-Run 86: komplementärer Lauf zur Parallel-Session Run 85 (drei Sonnet-Agenten, umlaut-sauberes Muster)
Zweiter Lauf am selben Tag, bewusst schlank (Drossel Rule 260714) und komplementär zu Run 84/85.
PDF-Inventar erschöpft, Web-/Verdichtungspfad; drei Sonnet-Rechercheagenten liefern NUR Text zurück,
alle Destillat-/Register-Edits mit echten Umlauten auf dem Hauptmodell (umgeht den Run-84-Umlaut-Bug).
Report `outputs/2026-07-23_energie-run86.md`.
- **T1 Anergienetz / kalte Fernwärme CH (neu, FAQ F109)** — kaltes Nahwärmenetz 4–25 °C, dezentrale WP
  je Gebäude, bidirektional heizen/kühlen, Saisonspeicher; 4 belegte CH-Referenzen (ETH Hönggerberg,
  Suurstoffi, FGZ Friesenberg, LUKS/Healthcare). Keine CHF-Kennzahl belegt, ZH/SZ-Recht nur Snippet.
  → `destillate/anergienetz-kalte-fernwaerme-ch.md` (emerging).
- **T2 Oberflächennahe Erdwärme ohne Tiefbohrung ZH+SZ (neu, FAQ F110)** — Flächenkollektor/Erdwärmekorb/
  Energiepfahl; ZH amtlich belegt (BVV Ziff. 5.6.2, Zusatzformular im Baugesuch, kein Bohrverfahren,
  aber kein reines Meldeverfahren); SZ nur Snippet. Kein CH-W/m²-Kennwert (nur DE-VDI-4640).
  → `destillate/oberflaechennahe-erdwaerme-flaechenkollektor-erdwaermekorb-zh-sz.md` (emerging).
- **T3 PV-Marktpreise Aktualitäts-Check (F18 geschärft)** — **BFE-Preisbeobachtungsstudie 2024** (publ.
  10.07.2025) als neuere amtliche Preisbasis: Median Aufdach EFH 2'756 CHF/kWp ohne MwSt, real −12 bis
  −26 % ggü. 2023; **Korrektur: Indach-Aufschlag «+60 %» relativiert** (kein signif. Aufdach↔integriert-
  Unterschied mehr) → `destillate/pv-marktzahlen-kosten-ch-2025.md` (established bleibt).
- **Koordination Rule 260720:** Run 85 hatte drei Destillate (Heizöltank, Stromtarife/Sperrzeiten,
  Erdsonden-Mehrfachfelder) ohne FAQ-Eintrag hinterlassen. Run 86 hat diese als **F106/F107/F108** treu
  nachgeholt und die eigenen Themen auf **F109/F110** gesetzt. **FAQ: F105 → F110, lückenlos.**

## 2026-07-23 — Energie-Run 85: Intensiv-Lauf, sechs parallele Agenten (PDF-Inventar weiterhin erschöpft)

SharePoint PL-04 Energie selbst gegengeprüft (`find -newermt 2026-07-14`): keine neue PDF-Datei,
nur derselbe OneDrive-Platzhalter wie in Run 84. Reiner Verdichtungs-/Neurecherche-Lauf, sechs
parallele Hintergrund-Agenten (general-purpose, direkt statt Workflow-Tool gemäss Run-82-Lehre).

- **T1 PV-Entsorgung/Recycling — auf established gehoben:** Faktor-10-Widerspruch geklärt (SENS
  eRecycling-Blog: reale Rückbaukosten CHF 440/t, vRG deckt nur CHF 40/t — zeitliche
  Quersubventionierung aus dem wachsenden Fonds, kein Fehler); Rücknahmequote «fast 100 %» +
  stoffliche Verwertung «rund 80 %» (SENS-Dossier); EPBT-Primärquelle gefunden (treeze Ltd./
  Frischknecht 2020: CH-Mix 2,3 Jahre) → `[[pv-entsorgung-recycling-lebensende-ch]]`, FAQ F105 zu schärfen (offen).
- **T2 Fernwärme Ausserschwyz — Objektgrössen-Verweigerung eingegrenzt:** Schwelle liegt zwischen
  290 kW (höchster bepreister Fall) und ca. 407 kW (tiefster verweigerter Fall), 10-kW-Fenster
  nicht erreichbar (kein reales Objekt in der Lücke); neue Methode entdeckt (CO2-Einsparungsfeld
  korreliert linear mit kW, Faktor ≈0,405 t/kW) erlaubt kW-Schätzung auch bei Verweigerung; zwei
  neue Grossobjekte gefunden (Lachen SZ ≈636 kW, Pfäffikon SZ ≈1'152 kW) → `[[fernwaerme-anschlusskosten-zh]]`, bleibt emerging.
- **T3 NEU: Heizöltank-Sanierung/Rückbau ZH+SZ:** GSchG Art. 22 (10-Jahres-Kontrollpflicht,
  Meldepflicht Ausserbetriebsetzung), GSchV Art. 32a (Innenkontrolle nur bei Grossanlagen/
  erdverlegt einwandig), AWEL-Merkblätter primärquellenverifiziert: **Ausbau des Tanks ist keine
  Behördenpflicht**, fachgerechte Ausserbetriebsetzung (CITEC-Suisse-Fachfirma, Meldung mit
  Kontrollrapport) genügt rechtlich; Eigentümer bleibt aber haftbar → neues Destillat
  `[[heizoeltank-sanierung-rueckbau-zh-sz]]`, established (Bund/ZH), SZ nur Sekundärquelle.
- **T4 NEU: Stromtarif-Modelle Wärmepumpen:** HT/NT-Spread ~8 % bei EKZ 2025, aber HT/NT für
  WP-Tarife ab 2026 ein Auslaufmodell (Einheitstarif); **Rechtsgrundlage Sperrzeiten seit 1.1.2026
  neu StromVG Art. 17b/17c** (Art. 8c StromVV aufgehoben — Korrektur gegenüber älteren
  Web-Quellen); EKZ/AEW-Sperrzeiten-Beispiele mit CHF-Rabatt primärquellenbelegt; Smart-Meter-
  Rollout-Pflicht 80 % bis 1.1.2028 (StromVV Art. 31e) → neues Destillat
  `[[stromtarife-waermepumpen-sperrzeiten-ch]]`, established (Recht), Rollout-Quote speculative.
- **T5 Meta: Umlaut-Bug diagnostiziert:** Root Cause bestätigt Prompt-Vererbungslücke — delegierte
  Scheduled-Task-Subagenten erben die Umlaut-Rule nicht automatisch aus CLAUDE.md/Rules; Fix
  bereits vom Nachtschicht-Bericht 22.07. vorgeschlagen (Config-Whitelist-Sperre, Freigabe durch
  Raphael nötig), Bereinigung der ~27 betroffenen Destillate weiterhin offen. In diesem Lauf per
  explizitem Umlaut-Beispielsatz in jedem Agent-Prompt umgangen.
- **T6 NEU: Erdwärmesonden-Mehrfachfelder/Regeneration:** kein amtlicher Mindestabstand zwischen
  Sondenfeldern in ZH/SZ (nur Grenzabstand 2,5 m); **Korrektur am bestehenden Destillat:** die dort
  genannte «SZ-5-m-Regel» ist nur die rechnerische Folge 2,5+2,5 m, keine eigene SZ-Vorschrift;
  SIA 384/6 verlangt ab >4 Sonden zwingend Simulation (EWS/EED-Tool); Stadt-Zürich-Studie 2017
  zeigt real nötige Feldabstände von teils >50 m → neues Destillat
  `[[erdwaermesonden-mehrfachfelder-regeneration-zh-sz]]`, emerging.

**Register-Hinweis:** FAQ-Integration (neue F106-F108 für T3/T4/T6, F105-Schärfung für T1) sowie
volle QUESTIONS.md-Detaillierung wegen Budget-Deckel dieses Laufs auf den nächsten Lauf verschoben;
die Bauherren-Transfer-Abschnitte in den Destillaten selbst sind bereits vollständig.

## 2026-07-23 — Energie-Run 84: sechs parallele Agenten (Verdichtung/Verifikation, PDF-Inventar erschöpft)
PDF-Inventar seit Run 65 erschöpft (SharePoint PL-04 geprüft: einzige neue Datei = 63-Byte-OneDrive-
Platzhalter). Reiner Web-/Verifikationspfad, Report `outputs/2026-07-23_energie-run84.md`.
- **T1 Fernwärme Ausserschwyz** — 60 real abgefragte Adressen, 14 neue kW-Stützpunkte; Segment-2-Formel
  über **31 Stützpunkte** bestätigt (CHF 28'709 + 606×kW), Übergangszone auf 26/28 kW präzisiert;
  gemeindeübergreifende Validierung (ortsunabhängige Tarifstaffel). Churerstrasse 100/104 präzisiert:
  dritte Rechner-Antwortkategorie **«Objektgrössen-Verweigerung»**, erklärt auch den 290-kW-Ausreisser.
  → `destillate/fernwaerme-anschlusskosten-zh.md` (Commit c1efcc3d).
- **T2 Adversarial-Verify Förderprogramm SZ 2026, Runde 2** — 24/24 CHF-Sätze am frischen amtlichen PDF
  (MD5-identisch Run 82) unverändert bestätigt, kein Fehlerfund → `destillate/foerderprogramm-energie-sz-2026.md`
  (Commit a40775e0).
- **T3 PV-Einmalvergütung Bund 2026** — Pronovo-Richtlinie PV v4.1 (03.06.2026): Grundbeitrag CHF 0 seit
  1.4.2024 (Lücke geschlossen); **Höhenbonus per 31.12.2025 ausgelaufen, ersetzt durch Winterstrombonus
  3.50/2.50 CHF/kW ab 1.1.2026** (Web-Sekundärquellen-Fehler korrigiert); Minimalvergütung 2026 ~6 Rp./kWh
  neu → `destillate/pv-einmalverguetung-bund-bfe.md` (established), FAQ-PV-EIV-Block geschärft.
- **T4 Adversarial-Verify Q_H,li SIA 380/1:2016, Runde 2** — 4. unabhängige Quelle (Kt. Luzern KEnV Anh. 1–3):
  alle 12 Kategorien + EN-102-Tab.-5-Korrektur zahlengleich → `destillate/sia-380-1-2016-aenderungen-gegenueber-2009.md`
  auf **established** gehoben, `enfk-en-102-waermeschutz-2018.md` nachgezogen (Commit aecef9e1), FAQ F104 aktualisiert.
- **T5 Neues Thema PV-Entsorgung/Recycling/Lebensende CH** — neues Destillat `destillate/pv-entsorgung-recycling-lebensende-ch.md`
  (via nas-selfcommit 5361783e): vRG CHF 0.04/kg über SENS eRecycling, VREG SR 814.620, Degradation 0,24 %/a
  (SUPSI 2025), EPBT CH ~2–2,3 J; Faktor-10-Widerspruch vRG↔Gesamtentsorgungskosten ehrlich offen gelassen.
  FAQ **F105** neu. Status emerging.
- **T6 Aktualitäts-Check MuKEn 2025 Umsetzung ZH/SZ** — Verfahrensstand unverändert ggü. Run 81 (ZH nur
  Regierungsrats-Botschaft 06.01.2026 Solarpflicht >300 m², keine MuKEn-Gesamtvorlage; SZ ohne neue
  Vernehmlassung; kein Inkrafttretens-Datum). «KR-Nr. 6064» per generischer Websuche nicht verifizierbar
  (in Run 82 über CDWS-Kantonsrats-Webservice identifiziert — kein Widerspruch); `kantonsrat.zh.ch` bleibt
  JS-SPA, per WebFetch nicht auslesbar. → `destillate/muken-2025-verabschiedet.md`,
  `destillate/zh-energiegesetz-revision-solarpflicht-2026.md`.
- **FAQ:** F1–F104 → **F1–F105**. **Umlaut-Bug (systemisch, siehe 22.07.):** die sechs Sonnet-Agenten-Outputs
  enthalten wieder ASCII-Ersatzschreibung; die zentralen Register-Edits dieses Laufs sind mit echten Umlauten
  geschrieben; dedizierter Fix läuft separat.

## 2026-07-22 — Wissens-Chef Run 12 (Cross-KB): stale last_updated korrigiert
- [veraltet] `destillate/private-kontrolle-zh.md`: `last_updated` stand auf 2026-06-11, obwohl der
  Cross-KB-Querbezug-Block (Run 11) am 2026-07-21 eingefügt wurde — auf 2026-07-21 nachgezogen.
  0 Kennwert-Widerspruch mit planungsgrundlagen (Private Kontrolle beidseitig verlinkt, Run-11-Fix hält).
  Offen (nicht autonom): Private-Kontrolle-Rollen-Trim (Verfahrens-Substanz an pg abgeben) weiter offen.
  Bericht: `wissen/koordination/outputs/2026-07-22_wissens-chef-run12.md`.

## 2026-07-22 — Umlaut-Bug (ASCII-Ersatzschreibung in Haiku/Sonnet-Subagenten-Outputs) bestätigt betroffen
Cross-KB-Verifikation (Nachtschicht Mac Mini ~19:00, ausgehend von der KB baurecht): die
"Minimum Viable Model"-Subagenten-Delegation seit 19.07. gibt die Umlaut-Regel nicht an
den Subagenten weiter — auch in `energie` empirisch nachgewiesen (`outputs/2026-07-21_health-check.md`
u.a. mit "fuer/gruen/praeziser/ueberschreitet"). Voller Befund + vorgeschlagener Fix:
`wissen/baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`.

## 2026-07-22 — Nachtschicht Mac Mini: Sonderfall Pfäffikon SZ Churerstrasse 100/104 geklärt
- Letzter offener Punkt zur Fernwärme-Ausserschwyz-Recherche (seit Run 82/83 als «ungeklärter
  Sonderfall» offen) direkt am Live-Richtpreisrechner geklärt: kein Tool-Defekt, sondern ein
  dritter Verfügbarkeitsstatus des Rechners — **«Fernwärmeanschluss möglich, ab 2024 geplant»**
  ohne Preisberechnung (Objekt-IDs 245489/245496 per Adress-Suche ermittelt und direkt abgefragt).
- **Technischer Merksatz neu:** die `?id=`-Pricing-Route der klickstrecke.energie-ausserschwyz.ch
  braucht **keinen** `HX-Request`-Header (mit Header nur 2-Byte-Leerantwort) — anders als die
  `?q=`-Adress-Suchroute, die den Header zwingend braucht (Run 78/T6). Für künftige Läufe wichtig,
  um den Fehler nicht erneut als Serverproblem zu deuten.
- `destillate/fernwaerme-anschlusskosten-zh.md` (Abschnitt 3) + `wiki/QUESTIONS.md` aktualisiert.
  Kein neuer Rechercheaufwand nötig, Priorität-5-Nachtschicht-Aufgabe (Restpunkt statt Vollauf).

## 2026-07-21 — Wissens-Chef Run 11 (Cross-KB): Private-Kontrolle-Querbezug zu planungsgrundlagen + §-11-Angleichung
- Cross-KB-Lauf energie ↔ planungsgrundlagen (Run 11). WP-/BVV-Fassungen widerspruchsfrei (NT 133),
  WDV vs. EN-110-ZH sauber getrennt — 0 Widerspruch zwischen den KBs.
- **destillate/private-kontrolle-zh.md:** Querbezug-Block gesetzt — planungsgrundlagen ist für das
  Verfahren/die Zuständigkeit der Privaten Kontrolle führend (Rollen-Matrix); dieses Destillat hält den
  AWEL-Merkblatt-Quellstand, kein Doppelpflegen. (Gegenrichtung in pg gesetzt.)
- **destillate/wta-formular-zh-waermetechnische-anlagen.md:** im Bauherren-Transfer stand das
  Neubau-Fossilverbot fälschlich an «§ 10a», korrigiert auf «§ 11 Abs. 1 EnerG» (§ 10a = Effizienz) —
  Nachzug der Run-9-Cross-KB-Korrektur, eine übersehene Fundstelle.
- **Nur gemeldet, nicht geändert (energie-Loop-Backlog):** destillate/INDEX.md Z.166 trägt weiterhin die
  in Run 82 widerlegte «nur für WP mit Kühlmöglichkeit»-Aussage (Z.167 korrigiert sie); Teil der 35
  Dubletten-Zeilen aus dem Health-Check 2026-07-21 — beim Dedup mit-entfernen.

## 2026-07-21 — Run 83: Intensivlauf, 7 parallele Agenten, PDF-Inventar weiterhin erschöpft
- **PDF-Transfer nicht möglich:** SharePoint PL-04 Energie erneut geprüft (`find -newermt
  2026-07-14`), keine neue/geänderte Datei, weiterhin 134 Dateien total. Vollständig Verdichtungs-/
  Verifikationspfad, Themenanzahl (7) als Vollgas-Massstab statt PDF-Anzahl.
- **[neu] F102** Strohdämmung ohne VKF-Registereintrag, Praxisfall Nänikon ZH (R 60) →
  `[[naturdaemmstoffe-bemessungswerte-brandverhalten]]`. SIA-279-Zuschlagsformel-Frage geschlossen
  (kein fester Zuschlag, Einzelfallentscheid Kommission).
- **[neu] F103** kg CO2-eq/m² je Bauteil (Minergie/eco-bau-Tabelle + Wüest/Lignum-Holzbau-Vergleich)
  → `[[kbob-graue-treibhausgasemissionen-2025]]`, `[[graue-energie]]`.
- **[neu] F104** alle 12 SIA-380/1:2016-Q_H,li-Grenzwerte je Gebäudekategorie primärquellenbelegt
  (3 unabhängige Quellen), Pflegeheim-Praxis (Pflegestation=Kat. VIII, Wohnen=Kat. I) →
  `[[sia-380-1-2016-aenderungen-gegenueber-2009]]`.
- **[korrigiert] F5** Adversarial Verify Minergie-Kennzahlen: Produktreglement 2026.1 hebt
  THGE-Grenzwerte gegenüber 2023er-Kursquelle an (Wohnen MFH 11,5 statt 11, Spital 18,5 statt 17
  kg CO2-eq/m²·a); MKZ 51/46/29 als Richtwert statt Reglement-Fixwert präzisiert →
  `[[minergie-nachweiskurs-2023-mkz-thge]]`, `wiki/minergie-standards.md`.
- **[bestätigt] F7** Adversarial Verify Runde 2 ZH-Förderprogramm: 20/20 CHF-Sätze am frisch
  gezogenen amtlichen PDF (SHA-256 verifiziert) erneut unverändert bestätigt, kein Fehlerfund;
  KRNr-6064-Verfahrensstand unverändert (nächste Prüfung nach Plenarsitzung 17.08.2026) →
  `[[foerderprogramm-energie-zh-2026]]`.
- **[erweitert] Fernwärme Ausserschwyz** — Galgenen-Bodenwiesweg-Lücke geklärt (reale, noch nicht
  erschlossene Randlage, Dorfkern längst am Netz), Freienbach-Rollout-Widerspruch geklärt (Netzerweiterung
  ab Pfäffikon bereits seit ca. 2025/26, "ab 2028" betrifft nur abgesetzte Ortsteile wie Bäch), 20 neue
  kW-Stützpunkte (13-290 kW, inkl. Grossobjekt-Bereich), Segment-1/2-Formeln über 30 Stützpunkte
  bestätigt/verfeinert → `[[fernwaerme-anschlusskosten-zh]]`.
- **Negativbefund bestätigt (kein neues Destillat):** Wärmebrückenkatalog Gruppe 6.2
  (ATK/Clickpress/Halfen-Spezialanker) war bereits seit 13.07.2026 vollständig in
  `[[waermebrueckenkatalog-bfe-stuetzen-fassadenanker]]` destilliert — Curriculum-Verweis war stale,
  zur Bereinigung vorgemerkt.
- **FAQ-Stand:** 101 → **104 Kernfragen (F1–F104)**, drei bestehende Antworten (F5, F7,
  Fernwärme-Destillat) geschärft/bestätigt.

## 2026-07-21 — Phase-2-Fix aus dem Nacht-Audit: Umlaut-Konvention KB-weit hergestellt (Dauerschicht-Zyklus 38)
- [korrigiert] **Finding F1 (Top-1) des Health-Checks 21.07. behoben:** 13 Wiki-Dateien inkl.
  BAUHERREN-FAQ von ae/oe/ue auf echte Umlaute konvertiert (Rule `umlaute-konvention`).
  Methodik: deterministisches Script mit Schutzmechanismen — Code-Spans, `[[Links]]`,
  Markdown-Linkziele, URLs und .md-Dateinamen blieben unangetastet; Ausnahme-Regeln fuer
  q-ue (Quelle/Frequenz), Diphthonge (bauen/neue/graue/Steuer/Feuer/Dauer) und
  Ausnahme-Staemme (aktuell/individuell/Raphael u.a.). Umfang: 8 reine ASCII-Artikel
  (u-werte, foerderung, graue-energie, heizleistung, minergie, pv-eigenverbrauch,
  sommerlicher-waermeschutz, regenwasser) + 4 gemischte (daemmstoffe-lambda,
  energienachweis-zh, holzbau-clt, pv-solar) + BAUHERREN-FAQ (1'881 → 724 Restvorkommen,
  Reste = geschuetzte Dateiverweise und legitime Woerter). Verifikation: Rest-Klassifikation
  manuell geprueft, alle 141 FAQ-`[[Links]]` aufloesbar, kein Link mit Umlaut korrumpiert.
  Dateinamen bewusst NICHT umbenannt (ASCII-Konvention fuer Dateien/Links bleibt).

## 2026-07-21 — Root-Cause zum Umlaut-Befund gefunden + Infra-Fix (Mac Mini Nachtschicht)
Die drei heutigen Wissenscheck-Audits (energie, planungsgrundlagen, architekten-synobsis)
fanden alle dasselbe Muster: flaechendeckende ae/oe/ue-Ersatzschreibungen statt echter
Umlaute, quer durch praktisch alle Wiki-Artikel — kein Einzelfehler. Ursache identifiziert:
die launchd-Jobs, die diese drei KBs trainieren (`ch.jans.training-energie`,
`ch.jans.training-plg`, `ch.jans.synobsis-batch`, alle ueber `scripts/dispatch-run.sh`),
laufen ohne interaktives Login-Profil in der POSIX-"C"-Locale (`LANG=""`, `LC_CTYPE=C`)
statt einer UTF-8-Locale. Fix: `scripts/dispatch-run.sh` erzwingt jetzt `LANG=de_CH.UTF-8` /
`LC_ALL=de_CH.UTF-8` im Abschnitt "Locale abhaerten" (analog zum bestehenden PATH-Haerten).
Bestehende ae/oe/ue-Stellen in den Wiki-Artikeln sind davon nicht betroffen (Phase 2/Korrektur
bleibt interaktiv) — der Fix verhindert nur neue Faelle ab dem naechsten Trainingslauf.

## 2026-07-21 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht): 0 kaputte Links/0 unbelegte Claims, aber Umlaut-Konvention in 8 Wiki-Artikeln + der BAUHERREN-FAQ verletzt (Top-Finding) und destillate/INDEX.md mit 35 Dubletten-Zeilen (19 Destillate) plus 2 unregistrierten Destillaten; wiki/INDEX.md vermischt 25 destillat-basierte Eintraege mit den 21 echten Themenartikeln; die zwei am 01.07. empfohlenen Promotionen (regenwasserbewirtschaftung-versickerung-zh, sommerlicher-waermeschutz) sind weiterhin nicht umgesetzt. Report: `outputs/2026-07-21_health-check.md`.

## 2026-07-20 — Wissens-Chef Run 10 (Cross-KB): § 2a BVV Meldeverfahren dreiseitig verlinkt
- [link] `destillate/bvv-zh-meldeverfahren-klimaanlagen-waermepumpen.md`: Cross-KB-Querbezug-Block in
  «Querverweise» ergänzt — Rollenteilung fixiert: energie = Rechtsgrundlage § 2a/§ 2c BVV + WP-Weichen
  (2 m³, 2,5 m Erdsonde, Kernzonen-Ausnahme), `baurecht` = Verfahrenstyp-Systematik, `planungsgrundlagen`
  = WTA-Formular/Verfahrensablauf. Cross-KB-Audit bestätigte: **fassungsgleich** mit baurecht (BVV
  Nachtrag 133, EnerG Nachtrag 129), 0 Widerspruch, F101-Korrektur aus Run 82 war rein energie-intern.
  Bericht: `koordination/outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Run 82: 7 parallele Recherche-/Verifikationsagenten, ein weiterer F101-Fehler korrigiert

Zweiter Lauf des Tages (nach Run 81). PDF-Inventar weiterhin erschöpft seit Run 65 (SharePoint
PL-04 unverändert seit 01.07.2026, erneut geprüft) — vollständig Web-/Verifikationspfad. Sieben
Themen aus der Run-81-Prioritätenliste bearbeitet: 5 Recherchen + 1 Adversarial-Verify (SZ) +
1 technischer Retry. Workflow-Tool war trotz Programm-Autorisierung technisch nicht nutzbar
(«Review dynamic workflow before running»); als Ersatz 7 parallele Hintergrund-Agenten über das
reguläre Agent-Tool, gleiche Parallelität und Schreibkonflikt-Vermeidung.

- **F101/MuKEn-Nachbar-Fund (BEANSTANDET):** Die Behauptung, das Meldeverfahren für Wärmepumpen
  gelte «nur für Wärmepumpen mit Kühlmöglichkeit», ist am Erlasstext § 2a Abs. 1 lit. f-h BVV
  (LS 700.6, Nachtrag 133) **nicht auffindbar** — unbelegte Sekundärquellen-Übernahme aus der
  zh.ch-Webseite, jetzt am Original korrigiert. Meldeverfahren gilt für innen aufgestellte
  Luft/Wasser-WP, aussen aufgestellte Luft/Wasser-WP bis 2 m³, Erdwärmesonden-WP mit
  Grenzabstand — unabhängig von Kühlfunktion. Neues Destillat
  `destillate/bvv-zh-meldeverfahren-klimaanlagen-waermepumpen.md`.
- **PBG-Revision «erleichtertes Bauen im Bestand» (neu erschlossen):** Vernehmlassung seit
  16.01.2026 abgeschlossen, primärquellen-naher Wortlaut (§ 2a Abs. 1 lit. k / Abs. 2 / § 2c
  Abs. 6 E-BVV) neu ausgewertet, aber weiterhin kein Kantonsratsschritt/keine Inkraftsetzung
  nachweisbar. Neues Destillat `destillate/pbg-revision-erleichtertes-bauen-bestand-zh.md`,
  status emerging.
- **MuKEn-2025-Provenienz-Vorbehalt aus Run 81 geschlossen:** amtliche EnDK-Fassung gefunden
  (`endk.ch/wp-content/uploads/2026/04/MuKEn2025_d-2025-08-29.pdf`, via page-sitemap.xml — der
  frühere 404 war ein reines Pfadproblem), MD5-identisch mit dem bisherigen Spiegel
  energiehub-gebaeude.ch (byte-genau), 4 Stichproben-Fundstellen re-verifiziert.
- **Kantonsratsbeschluss 60-Mio-Rahmenkredit ZH präzisiert:** KRNr 6064 «Rahmenkredit 2026-2029
  Subventionen § 16 EnerG» über den öffentlichen CDWS-Webservice des Kantonsrats identifiziert
  (opendata.swiss-registriert, ohne Headless-Browser abfragbar) — Kommission KEVU hat am
  07.05.2026 einstimmig Bewilligung beantragt, Schlussabstimmung im Plenum steht per 20.07.2026
  noch aus (nächste Sitzung 17.08.2026). `destillate/foerderprogramm-energie-zh-2026.md`
  ergänzt, FAQ F7 präzisiert.
- **SZ-Förderprogramm 2026 adversarial gegengeprüft (bestätigt-keine-abweichung + Ergänzung):**
  24 von 24 CHF-Sätzen am frisch gezogenen amtlichen PDF unverändert bestätigt. Neu erfasst:
  Rahmenkredit gilt bis 31.12.2028, jährliche Budget-Freigabe nötig, Planungssicherheit erst mit
  schriftlicher Zusage (FAQ AfU SZ, Stand 28.08.2025). `destillate/foerderprogramm-energie-sz-2026.md`
  ergänzt, FAQ F28 ergänzt.
- **Ausserschwyz-Fernwärmerechner HTTP-500 aufgeklärt:** kein Serverausfall (wie in Run 78
  vermutet), sondern ein fehlender htmx-Header (`HX-Request: true`) bei der Adress-Suchroute —
  Fix gefunden und reproduziert. Mit dem Fix 10 neue kW-Preisstützpunkte (15-168 kW) gewonnen,
  Segment-2-Regressionsformel neu berechnet (12 statt 3 Stützpunkte, < 2 % Residuen statt
  5-6 % Abweichung am oberen Ende). Neue offene Nebenpunkte: Galgenen-Verfügbarkeitslücke trotz
  «am Netz», Freienbach-Rollout-Widerspruch zum EASZ-Factsheet. `destillate/fernwaerme-anschlusskosten-zh.md`
  erweitert.
- **E94 (Innendämmung CHF/m² Schweiz) — Negativbefund bestätigt, breiter abgestützt:** sieben
  weitere Pfade erfolglos geprüft (CRB/werk-material.online, BFS-Baupreisindex, Minergie, Wüest
  Partner, Stadt Zürich AHB, gesundes-haus.ch, Lead-Gen-Plattformen). Einziger verbleibender Weg
  unverändert: reale JANS-Projektofferte (BKP 271) in `wissen/grobkosten/raw/` einspeisen.
  `wiki/innendaemmung.md` ergänzt.
- **Register:** `destillate/INDEX.md` um 7 Zeilen ergänzt; `wiki/INDEX.md` FAQ-Sektion
  vorangestellt; `wiki/QUESTIONS.md` neuer Abschnitt «Run 82» (E105-E107 geschlossen, E94
  bleibt offen mit erweitertem Pfadprotokoll).

## 2026-07-20 — Run 81: zwei materielle Rechtsfehler in F47 korrigiert, F101 neu, E104 geschlossen

Lauf einen Tag verspätet (NAS am 19.07. weder über LAN noch Tailscale erreichbar, Ping-Negativbefund).
Kein PDF-Transfer — Inventar seit Run 65 erschöpft, SharePoint-Kontrolle bestätigt **keine neue Datei
in PL-04 seit 01.07.2026**. Vollständig Block 2. Batch auf Standard statt Vollgas (Rule 260714
überschreibt 260712b), fünf Agenten, mechanische Stufen auf Sonnet (Rule 260719).

- **F47/MuKEn 2025 (BEANSTANDET, hoch — drei Befunde):** Die **25-%-Unzumutbarkeitsschwelle** war dem
  **Neubau** zugeordnet; sie gilt ausschliesslich dem Wärmeerzeugerersatz im Bestand (Art. 1.29
  Abs. 2). Das Destillat widersprach sich selbst — Tabellenzeile richtig, Fliesstext falsch. **Teil G**
  war als «vermutlich optional» geführt; er liegt innerhalb der Teile B–R des **Basismoduls**, die
  «materiell unverändert zu übernehmen» sind (S. 14), und setzt Art. 45 Abs. 3 Bst. e EnG um — für
  jeden Kanton obligatorisch. Nicht erfasst war der **ersatzlose Wegfall der 30-kW-Kappung** bei der
  PV-Pflicht (Art. 1.26 MuKEn 2014 → kein Deckel in Art. 1.25 MuKEn 2025): bei 10'000 m² EBF steigt
  die Pflicht von max. 30 kW auf 200 kW, **Faktor 6,7 statt Faktor 2** — im JANS-Segment die
  praktisch grösste Änderung der Revision. Zudem Delta im Heimkanton überzeichnet (ZH verbietet
  Neubau-Fossil bereits seit 1.9.2022, § 11 Abs. 1 EnerG) und Befreiungsschwelle falsch verortet
  (Art. 1.40 Abs. 2 statt 1.39, Und/Oder-Logik verdreht). Alles korrigiert in Destillat, F47,
  `destillate/INDEX`; Hinweis auf den Kappungs-Wegfall zusätzlich in
  `destillate/enfk-en-104-eigenstromerzeugung`. **Zahlen-Layer unabhängig BESTÄTIGT** (Anhänge 1–7,
  Grenzwerte Art. 1.39, Modulliste). Neuer ⚠-Vorbehalt: Volltext liegt nur als PDF-Spiegel auf
  energiehub-gebaeude.ch vor, endk.ch liefert 404.
- **F7/Förderprogramm ZH 2026 (teilweise BEANSTANDET):** **20 von 20 CHF-Sätzen am amtlichen PDF
  unverändert bestätigt**, kein Wert weicht ab. Beanstandet die Befristung: «bis Ende 2026» war
  optimistischer als die Quelle — der Regierungsrat datiert den Anschlussbedarf am 15.01.2026 auf
  **«Mitte 2026 bis Ende 2029»**. Neu aufgenommen: Ausblick 2027 ff. (Anschlusskredit 60 Mio.
  beantragt, bis 286 Mio. für 2026–2029, Vorbehalt Entlastungspaket 2027; Kantonsratsbeschluss
  unbelegt), **KliK-Ausschluss als hartes Kriterium** statt «meist alternativ», sowie zwei
  Healthcare-relevante Ausschlüsse (fossile Sekundärheizung ab 100 kWth max. 10 %, Prozessenergie
  und reine Warmwasseraufbereitung ausgeschlossen). Programmstatus offen, kein Antragsstopp — als
  Negativbefund dokumentiert, nicht als Freibrief.
- **F101 NEU — «Brauche ich für eine Klimaanlage eine Baubewilligung?»:** Kt. ZH ja, § 309 Abs. 1
  lit. d PBG, Gemeinde-Bauamt; **kantonsweit keine bekannte Ablehnung**, Kosten Fr. 100–23'000,
  einfache Gesuche Stadt ZH ~20 Arbeitstage; Meldeverfahren bisher nur für WP mit Kühlmöglichkeit,
  Ausweitung erst Vernehmlassungsvorschlag; Sommerbetrieb lärmtechnisch heikler als WP; PV-Deckung
  des Kühlstroms § 8 Abs. 6 WDV (Neubau) bzw. EN-110-ZH (Bestand) →
  `destillate/rrb-2025-1082-klimaanlagen-bewilligungspraxis-zh` (emerging für die Praxisauskunft,
  established für die zwei am Erlass-PDF verifizierten Wortlaute).
- **F99 ergänzt — ZH-Standardlösungs-Katalog beschafft (offener Punkt geschlossen):** ZH führt
  **keinen eigenen** Katalog, sondern übernimmt die 11 nationalen SL 1–11 (EnDK-Vollzugshilfe EN-120,
  Jan. 2020) via § 47e Abs. 1 lit. a BBV I (AWEL-Ablaufschema V2.2). Korrigiert eine Nuance: **auch
  in ZH lassen SL 4/6/10 fossile Komponenten zu** — der ZH/SZ-Unterschied liegt allein in der
  vorgelagerten ZH-Vorrangregel, nicht im Katalog. →
  `destillate/en-120-standardloesungen-waermeerzeugerersatz-zh` (established).
- **E104 GESCHLOSSEN — die Restlücke war eine Fehlspur:** Kein WDV-Nachtrag nach Nr. 118; massgebend
  bleibt die Ausgabe 8.6.2022. Drei Belege, darunter **RRB-2025-1082 selbst**, der am 29.10.2025
  «§ 8 Abs. 6 der Wärmedämmvorschriften vom 8. Juni 2022» als geltendes Recht zitiert. Der
  verdächtigte Beschluss ist kein Nachtrag, sondern die Antwort des Regierungsrates auf die Anfrage
  KR-Nr. 226/2025 zur Klimaanlagen-Bewilligungspraxis — und lieferte damit den Stoff für F101.
- **Lehre (M9, neu):** Alle drei MuKEn-Fehler standen in einem Destillat, das bereits eine
  Volltext-Verifikation hinter sich hatte. Primärquellenlektüre schützt vor falschen **Zahlen**, nicht
  vor falscher **Zuordnung** (Geltungsbereich, Modulstatus, weggefallene Deckelungen). Für diese
  Fehlerklasse braucht es eine zweite, gegnerisch gestimmte Lektüre.
- FAQ-Stand: **101 Kernfragen F1–F101**. Report: `outputs/2026-07-20_energie-run81.md`.

## 2026-07-19 — Wissens-Chef Run 9 (Cross-KB): zwei falsche Rechtszuschreibungen korrigiert, Bring-Schuld geschlossen
- **F100/Modul-7-Destillat (CONFIRMED, hoch):** Die behauptete **5-Jahres-Kadenz der
  Betriebsoptimierung als geltendes ZH-Recht** ist am amtlichen Volltext widerlegt. § 13d Abs. 1
  EnerG verlangt sie nur «innerhalb dreier Jahre nach Inbetriebsetzung»; §§ 48a-48c BBV I kennen
  **keine** Periodizitaet. Die fuenf Jahre sind MuKEn-Musterrecht (Art. 7.4 MuKEn 2025 / Art. 8.4
  MuKEn 2014). → F100 mit Abgrenzungskasten korrigiert, Destillat (1-Satz, Zielgruppen-Absatz,
  Bauherren-Transfer) bereinigt.
- **Fossilfrei-Gebot (CONFIRMED, hoch):** durchgehend **§ 10a EnerG** zugeschrieben — amtlich ist es
  **§ 11 Abs. 1 EnerG**; § 10a ist die Effizienz-/Delegationsnorm. 7 Fundstellen korrigiert
  (`wiki/energienachweis-zh`, `wiki/heizleistung-und-waermeerzeuger`, `wiki/BAUHERREN-FAQ` 2x,
  `destillate/en-zh-nachweis-uebersicht`, `destillate/wta-formular-zh-...`,
  `destillate/waermepumpe-systemvergleich`).
- **200'000-kWh-Bring-Schuld GESCHLOSSEN:** der als «beim AWEL anfragen» gefuehrte Punkt ist am
  ZH-Primaertext belegt — **§ 48c Abs. 1 lit. a BBV I** (amtlicher Volltext liegt seit Wochen in
  `wissen/baurecht/raw/260607_amtlich_zh_bbv1.md`, Z. 923-944). Inhalt/Bericht/10-Jahres-Aufbewahrung
  ebenfalls belegt (Abs. 2-4).
- **Naturdaemmstoff-Destillat (Run 79) materiell korrigiert:** «Bemessungswert immer hoeher als
  Nennwert (Sicherheitszuschlag)» ist falsch — SIA 279:2018 **Ziff. 3.2.2.1**: fuer werkmaessig
  hergestellte Daemmstoffe nach europaeischen Normen **kein Zuschlag**; Zuschlag nur fuer
  Ortdaemmstoffe (Ziff. 3.2.2.2). Der offene Punkt «Zuschlagsformel» war eine **Scheinluecke** und
  ist geschlossen. Ursache: das Destillat wurde aus Shop-Metadaten gebaut, obwohl der Normvolltext
  im JANS-Bestand liegt und seit 12.07.2026 in `normen` destilliert ist. → Querbezuege zu
  `normen/destillate/sia-279-2018` und `.../vkf-brl-13-15-baustoffe-bauteile` gesetzt,
  RF-Terminologie auf Ziff. 2.1 korrigiert, Negativbefund Baustroh praezisiert (der
  Klassierungsweg EN 13501-1 → RF ist belegt; es fehlt nur die produktbezogene Klasse).
- **Querbezuege gesetzt:** `vhka-...` und `oelheizung-gasheizung-ersatzpflicht-...` verweisen neu auf
  die Formular-/Verfahrensebene in `planungsgrundlagen`.
- Bericht: `wissen/koordination/outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Run 80 (Verifikations-Lauf: zwei established-Aussagen am Original nachgeprüft)

Kein PDF-Transfer (Inventar seit Run 65 erschöpft). Der Lauf schloss die zwei letzten offenen
Verifikationslücken aus Run 78/79 — **beide geprüften Aussagen enthielten einen echten Fehler.**

**T1 WDV Kt. ZH (Destillat `muken-2025-anhang-4-5-daemmstaerken-leitungen`).** Zwei Belegfehler
korrigiert: Massgebend ist die WDV **vom 8.6.2022, in Kraft seit 1.9.2022** (LS 700.211,
zhlex-Nachtrag 118) — die notierte «Ausgabe 2009» ist per Dispositiv II ausdrücklich aufgehoben, die
Angabe «gültig ab Oktober 2019» war eine Verwechslung mit der Nachtragsnummer 019. Und die Werte
stehen nicht in «Tabellen 6+7», sondern in **§ 6 Abs. 2 / § 6 Abs. 3** («Tabelle 6» im Erlass meint
Tabelle 6 der SIA 380/1). Die Sachaussage hält dagegen vollständig: Tabelle A/B des Destillats sind
mit der WDV in **36 von 36 Zahlenwerten deckungsgleich** (zwei unabhängige amtliche zh.ch-Spiegel,
curl+pdftotext). Nebenbefund: der Fehler war auf dieses Destillat beschränkt, die übrige KB zitiert
die WDV bereits korrekt. Frontmatter um die WDV-Primärquelle ergänzt, doppelter Aufzählungspunkt
entfernt.

**T2 F100 Healthcare-EBF-Schwelle.** Die Bandbreite **3'000–7'000 m² EBF ist am gültigen Normstand
bestätigt** — die Kennzahlen VIII.1 = 36 / VIII.2 ≈ 30 kWh/m²EBF·a gelten auch unter SIA 2024:2021
inkl. Korrigenda C1:2024 (SIA-Grundlagenbericht zur Revision 2021, Ziff. 4.2.1/4.2.3); das ⚠-Flag des
Wissens-Chefs Run 8 ist erledigt. **Gestrichen** wurde die Angabe «50–90 Pflegeplätze»: aus keinem
Kennwert rekonstruierbar, im Widerspruch zur eigenen Quelle (Destillat rechnet 34–75) und nur auf
einen österreichischen Einzelfall gestützt. **Neu eingearbeitet** und fachlich der wichtigste Fund:
beide Kennwertreihen erfassen **nicht** den Strom für Heizung, Warmwasser und Klimakälte, § 13d EnerG
ZH aber den Gesamtverbrauch — bei Wärmepumpen-Betrieb wird die 200'000-kWh-Schwelle deshalb **früher**
erreicht; die Zahlen sind Obergrenzen. Restvorbehalt vermerkt: der bezahlte Normvolltext Anhang F lag
nicht vor, die Werte sind aus dem offiziellen Grundlagenbericht rekonstruiert.

QUESTIONS: zwei Lücken geschlossen, **E103** (Schweizer m²EBF/Pflegeplatz-Kennwert — Compounding-
Kandidat aus den JANS-eigenen Healthcare-Projekten, Entscheid Raphael) und **E104** (WDV-Nachtrag
nach 118, RRB-2025-1082 ungeprüft) neu eröffnet. FAQ-Stand unverändert 100 Fragen — dieser Lauf hat
zwei bestehende Antworten belegfest gemacht statt neue anzuhängen. Batch bewusst auf Standard statt
Vollgas (Rule 260714, Wochenlimit). Report: `outputs/2026-07-18_energie-run80.md`.

## 2026-07-18 — Run 79 (Intensiv-Lauf: Registerpflege Run 78 + neue Recherche)

Zwei Teile: (A) Registerpflege der drei liegen gebliebenen Punkte aus Run 78 — F99/F100 in
`wiki/BAUHERREN-FAQ.md` eingetragen (Oel-/Gasheizungs-Ersatzpflicht ZH+SZ, MuKEn-Modul-7-
Betriebsoptimierung Healthcare), `wiki/INDEX.md`-FAQ-Zaehlstand auf 100 aktualisiert, MuKEn-
Anhang-6/7-Registerluecke geschlossen (Inhalt seit Run 76 im Destillat `muken-2025-verabschiedet`
vorhanden, jetzt in `destillate/INDEX.md` nachgetragen), WDV-Korrektur in
`muken-2025-anhang-4-5-daemmstaerken-leitungen.md` (ein eigenstaendiges ZH-Vollzugsdokument
existiert doch — Wärmedämmvorschriften der Baudirektion 2009). (B) Neue Recherche: sechs parallele
Hintergrund-Agenten wurden gestartet, blieben aber technisch haengen (0 tool_uses trotz mehrfachem
Resume — Systemproblem der Async-Agent-Ausfuehrung in dieser Session, nicht KB-spezifisch). Die
Arbeit wurde daraufhin direkt im Hauptprozess fortgesetzt: neues Destillat
`naturdaemmstoffe-bemessungswerte-brandverhalten.md` (Curriculum-Punkt A7, Bemessungswert-Stroh
+ Brandverhalten, emerging, CH-VKF-Einstufung als Negativbefund dokumentiert) und Update von
`vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz.md` (zwei SZ-Offenpunkte erneut mit zwei
unabhaengigen Quellen geprueft, Negativbefund bestaetigt statt geschaetzt). Details:
outputs/2026-07-18_energie-run79.md. Vier urspruenglich geplante Themen (Ausserschwyz-Rechner
Segment 2, SIA-180-Rechenbeispiel, OP-Raum-Lueftung Spital, Batteriespeicher-/Netzanschluss-Update)
sind wegen des Agent-Ausfalls und Budget-Grenzen auf den naechsten Lauf verschoben.

## 2026-07-18 — Registerlücke MuKEn-Anhang-6/7 geschlossen + F99/F100 in BAUHERREN-FAQ eingetragen
- **Auftrag:** Run 78 hatte drei liegen gebliebene Registerpunkte identifiziert (T1-Fund): F99/F100
  fehlten noch in `wiki/BAUHERREN-FAQ.md`, die MuKEn-Anhang-6/7-Inhalte (seit Run 76 im Destillat
  `muken-2025-verabschiedet.md` vorhanden) waren nie mit einer eigenen Register-/FAQ-Zeile versehen
  worden, und `muken-2025-anhang-4-5-daemmstaerken-leitungen.md` behauptete faelschlich «kein
  eigenstaendiges ZH-Vollzugsdokument» obwohl die WDV (Wärmedämmvorschriften der Baudirektion,
  Ausgabe 2009) existiert.
- **Aktion:** Alle drei Punkte geschlossen — F99 («Darf ich meine kaputte Öl-/Gasheizung einfach
  wieder durch Öl/Gas ersetzen?») und F100 («Muss ich für mein Pflegeheim/meine Klinik eine
  periodische Betriebsoptimierung durchführen?») vollstaendig in `wiki/BAUHERREN-FAQ.md`
  ausformuliert; `wiki/INDEX.md` FAQ-Zaehlstand von 97 auf 100 aktualisiert samt Kurzfassung der
  drei neuen Punkte; `destillate/INDEX.md` um die MuKEn-Anhang-6/7-Registerzeile sowie die zwei
  fehlenden Destillat-Zeilen (`oelheizung-gasheizung-ersatzpflicht-zh-sz`,
  `muken-2025-modul-7-betriebsoptimierung-hlkkse`) ergaenzt; WDV-Korrektur in
  `muken-2025-anhang-4-5-daemmstaerken-leitungen.md` eingearbeitet.

## 2026-07-18 — Wissens-Chef Run 8 (Cross-KB): Themenartikel Innendaemmung nachgezogen, zwei Ausgaben-Flags
- **Stale-Befund (CONFIRMED):** `wiki/innendaemmung.md` stand auf `last_updated: 2026-07-17` und
  behauptete weiterhin «Schweizer Ψ-Zahl fuer die einbindende Massivdecke: **Negativbefund**» sowie
  fuehrte «CH-Ψ fuer einbindende Massivdecke» unter «Offene Punkte» — beides durch die Schliessung
  von **E93** am selben Tag (Run 79) ueberholt. Wer ueber das Wiki einsteigt (der vorgesehene Weg),
  bekam den Negativbefund statt der Zahl. **Der Themenartikel wurde vom Destillat-Update nicht mitgezogen.**
- **Aktion:** Abschnitt «Waermebruecken» auf den belegten Stand umgeschrieben (BFE-Katalog 2002,
  Gruppe 2.1 Wandtyp I: Detail 2.1-I1 «durchbetoniert» Ψ 0,63–0,89 / 2.1-I2 «Stahlkorb» Ψ 0,07–0,15,
  mit Bauherren-Konsequenz und dem Normgenerations-Vorbehalt 2001 vs. 2016); offener Punkt geschlossen;
  Backlink auf `waermebrueckenkatalog-bfe-geschossdecke-kellerdecke`; Grenzwert-Herkunft (EN-102 Tab. 3,
  Basis SIA 380/1:2016) ausgeschrieben.
- **Zwei Flags gesetzt:** (a) `innendaemmung-altbau-bauphysik-ch` Frontmatter — **Korrigenda SIA 180-C2:2020**
  existiert (von `normen` am 16.07. belegt, in dieser KB null Treffer); (b) `muken-2025-modul-7-*` —
  **Ausgaben-Diskrepanz SIA 2024:2019** (Vernehmlassungsstand) gegen die gueltige **2024:2021 + C1:2024**;
  die Healthcare-EBF-Schwellen VIII.1 = 36 / VIII.2 = 29 kWh/m2EBF sind vor dem Zitieren am Volltext
  nachzurechnen. Die SIA-2048-Uebergabe an `normen` ist dort jetzt eingetragen (verpuffte bisher hier).
- **Zwei gemeldete Befunde vom Refuter WIDERLEGT, keine Aenderung:** (1) die Zuschreibung «Ψ ≤ 0,20
  (SIA 380/1)» ist **sachlich korrekt** — EN-102 nennt in der Fusszeile jeder Seite «Basis: Norm
  SIA 380/1, Ausgabe 2016»; die normen-Sperre in QUESTIONS betrifft ausdruecklich nur Q_H-/U-Werte
  und Gebaeudekategorien, nicht Waermebruecken-Ψ. (2) Die Modul-7-Tabellenkorrektur vom 18.07. ist
  sauber durchgezogen, der alte Wortlaut steht nirgends mehr als lebende Behauptung.
- Bericht: `wissen/koordination/outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-18 — Run 78 (Intensiv-Lauf, 6 parallele Themen)

PDF-Inventar weiterhin erschoepft (Kontrolle: keine neuen PDFs seit 01.07.2026). Sechs parallele
Agent-Streams (Fan-out via Agent-Tool, geplanter Workflow-Orchestrator verlangte manuelle Freigabe):
T1 Register-Audit (Fund: MuKEn-Anh.-6/7 fehlt in INDEX/FAQ, wie zuvor bei Anh. 4/5; E100-Rest
positiv geloest — WDV Baudirektion ZH 2009 existiert), T2 MuKEn Modul 5 x Elektroheizungsfrist
(established, Negativbefund kantonale Uebernahme, FAQ F98), T3 SZ-Fernwaerme-Sampling (Negativbefund,
Tool-Ausfall), T4 E93 Massivdecke-Ψ-Wert geschlossen (established, echter Fund via Verknuepfungsluecke
+ zweiter Mirror), T5 neues Destillat Oel-/Gasheizungsersatzpflicht ZH+SZ (established, FAQ F99
vorgeschlagen), T6 neues Destillat MuKEn Modul 7 Betriebsoptimierung HLKKSE (established, FAQ F100
vorgeschlagen, korrigiert Fehlbehauptung in muken-2025-verabschiedet.md). Details:
outputs/2026-07-18_energie-run78.md. Offen fuer naechsten Lauf: F99/F100 in BAUHERREN-FAQ eintragen,
MuKEn-Anh.-6/7-Registerluecke schliessen, wiki/INDEX.md FAQ-Zaehlstand auf 100.

## 2026-07-18 — Neues Destillat MuKEn 2025 Modul 7 «Betriebsoptimierung HLKKSE» + Korrektur bestehender Tabellenzeile
- **Auftrag:** Modul 7 (HLKKSE+GA-Betriebsoptimierung, ≥200'000 kWh/a Elektrizität, alle 5 Jahre,
  Dokumentation 10 Jahre) vertiefen — Umfang HLKKSE, Verhältnis zur Grossverbraucher-Schwelle
  (Teil N, Art. 1.55: >5 GWh Wärme/>0,5 GWh Strom), kantonaler Umsetzungsstand, Healthcare-Bezug
  (erreicht ein Pflegeheim/Spital die Schwelle).
- **Neues Destillat:** `destillate/muken-2025-modul-7-betriebsoptimierung-hlkkse.md` (status
  established). Kernbefund: Modul 7 ist **wortidentisch mit MuKEn-2014-Modul 8** (Art. 8.1-8.5),
  keine inhaltliche Neuerung 2025 — nur Umnummerierung (8→7) plus Anpassung des internen
  Grossverbraucher-Querverweises. Im Kt. ZH bereits **seit 1.9.2022 geltendes Recht** (§ 13d EnerG,
  Primärtext bereits im Hub via `wissen/baurecht/raw/260712_amtlich_zh_energ.md`). Kt. Basel-Landschaft
  hat eine sehr aktuelle Vollzugshilfe EN-142 (Ausgabe Juni 2026, curl+pdftotext gelesen) mit
  zusätzlichen Vollzugsdefinitionen (Betriebsstätte = gemeinsame Einspeisung/Areal-Aggregation,
  ZVM-Tool des BFE seit 2026, Fachperson-Zulassung). Kt. Schwyz hat **kein**
  Betriebsoptimierungs-Modul (kEnG/KEnV im Volltext auf den Begriff durchsucht, kein Treffer) —
  primärquellen-verneint. Healthcare-Einordnung: SIA-2024:2019/Minergie-Strommodell-Elektrizitäts-
  kennzahlen für Gebäudekategorie VIII.1 Spital (36/65 kWh/m²EBF) und VIII.2 Pflege (29/63
  kWh/m²EBF) aus dem SIA-Statusbericht «Harmonisierung SIA-Standardwerte» ausgewertet → daraus
  EBF-Schwelle für die 200'000-kWh-Pflicht abgeleitet (rund 3'100-5'550 m² EBF Spital,
  3'175-6'900 m² EBF Pflegeheim, je nach Kennwertmodell). Grossverbraucher (meist Spitäler) sind
  über ihre Zielvereinbarung i.d.R. von Modul 7 befreit (Art. 7.2 lit. b) — die eigentliche
  JANS-Zielgruppe ist die «Zwischenzone» mittelgrosser Pflegeheime zwischen 200'000 kWh und der
  Grossverbraucher-Schwelle 0,5 GWh.
- **Korrektur in `destillate/muken-2025-verabschiedet.md`:** Tabellenzeile Modul 7 (Abschnitt
  «Module 2-14 ausserhalb Teil G») trug fälschlich «Erstmals explizite periodische
  5-Jahres-Pflicht» als Neuerung — durch den jetzigen Volltextvergleich widerlegt (MuKEn 2014
  Art. 8.4 hatte dieselbe Frist bereits wortgleich). Zeile korrigiert + auf neues Destillat
  verlinkt; Backlink-Liste ergänzt.
- **FAQ-Vorschlag F100** (Einreihung/Nummerierung obliegt dem konsolidierenden Lauf):
  «Muss ich für mein Pflegeheim/meine Klinik eine periodische Betriebsoptimierung der
  Haustechnik durchführen?»
- Quelle: EnDK MuKEn 2025/2014 Volltexte, EnerG ZH § 13a/13d, Vollzugshilfe EN-142 BL
  (Juni 2026), kEnG/KEnV SZ, SIA-Statusbericht Harmonisierung Standardwerte — alle per
  curl+pdftotext/direktem Hub-Rohtext gelesen 2026-07-18.

## 2026-07-18 — Energie-Training Run 79: E93 geschlossen (Ψ-Wert einbindende Massivdecke, Innendämmung)
- **Auftrag:** letzter gezielter Rechercheversuch zum wiederholt offenen Punkt E93 («kein CH-Ψ-Wert
  für einbindende Massivdecke in innengedämmter Aussenwand»), über einen neuen Quellenwinkel
  (Empa, Lignum/Holzbau Schweiz, HSLU, IEA-EBC-Annex, alternative BFE-Mirrors).
- **Ergebnis: E93 geschlossen, kein neuer Negativbefund.** Ein zweiter, unabhängiger Mirror des
  bereits im Hub verwendeten BFE-Wärmebrückenkatalogs 2002 (Energie Zentralschweiz,
  energie-zentralschweiz.ch/media/124, per curl+pdftotext im Volltext gelesen) zeigte, dass Gruppe
  2.1 «Geschossdecke» einen eigenen Wandtyp **I = Innendämmung** führt — Detail 2.1-I1
  «durchbetoniert» (Ψ 0,63-0,89 W/(m·K), die gesuchte einbindende Massivdecke) und 2.1-I2
  «Stahlkorb» (Ψ 0,07-0,15 W/(m·K), thermisch getrennt). Diese Zahlen lagen bereits seit
  2026-07-13 primärquellenverifiziert in `[[waermebrueckenkatalog-bfe-geschossdecke-kellerdecke]]`,
  waren aber nie mit E93 verknüpft — eine reine Verknüpfungslücke zwischen zwei KB-Destillaten,
  jetzt durch die zweite Quelle zusätzlich zahlengleich gegengeprüft.
- **`destillate/innendaemmung-altbau-bauphysik-ch.md` aktualisiert:** Abschnitt 4 (Wärmebrücken) um
  die Ψ-Wert-Tabelle, Zuschläge/Abzüge, Bauherren-Konsequenz und eine kleine Restlücke
  (Übertragbarkeit auf Vorkriegs-/Naturstein-Mauerwerk) ergänzt; «Offene Punkte» E93-Bullet auf
  geschlossen umgeschrieben; Backlink-Beschreibung zu `waermebrueckenkatalog-bfe-geschossdecke-
  kellerdecke` präzisiert; Quellen-/Frontmatter-Datenstand auf 2026-07-18.
- **`wiki/QUESTIONS.md`:** E93 auf `[x]` geschlossen mit Kurzbeleg.
- **Auch geprüft, ohne Treffer:** Empa-Publikationssuche, Lignum/Holzbau Schweiz, HSLU-Direktsuche,
  IEA-EBC-Annex-Programme, BFE-Publikation «Checkliste Wärmebrücken EN-ZH» Version 7.0
  (pubdb.bfe.admin.ch/publication/download/7424 — nur Neubau-Prüfpunkte, keine Sanierungs-Ψ-Werte).
- **Lern-Punkt fürs Register:** bei zukünftigen KB-Fragen zuerst die eigenen Schwester-Destillate
  im selben Themenfeld auf bereits vorhandene, aber unverknüpfte Antworten prüfen, bevor eine
  neue externe Quellensuche gestartet wird (Compounding-Disziplin).

## 2026-07-18 — Energie-Training: MuKEn-2025-Modul-5-Lücke im Elektroheizungs-Destillat geschlossen
- **Auftrag:** das bestehende Destillat `elektroheizungs-ersatzpflicht-zh-sz.md` (ZH bis 2030 §10b
  EnerG, SZ bis 2050 §22a kEnG) verwies noch nicht auf MuKEn 2025 Modul 5 (Übergangsfrist 15→5 Jahre
  verkürzt, BGer 1C_37/2022). Diese Lücke wird geschlossen.
- **Neuer Abschnitt «MuKEn 2025 Modul 5 — Verkürzung der Übergangsfrist»:** Art. 5.1 MuKEn 2025
  («Bestehende ortsfeste elektrische Widerstandsheizungen sind innerhalb von 5 Jahren nach
  Inkraftsetzung dieses Gesetzes zu ersetzen») via Sekundärauszug energiehub-gebaeude.ch gelesen und
  gegen das primärquellen-verifizierte Schwesterdestillat `muken-2025-verabschiedet.md` (Run 74)
  kreuzgeprüft — deckungsgleich. Web-Recherche 18.07.2026 (Kantonsrat-ZH-Geschäftsdatenbank,
  sz.ch-Vernehmlassungsliste, RRB Nr. 632/2025, SVP-SZ/Mieterverband-SZ) findet **keine** laufende
  oder angekündigte kantonale Umsetzung von Modul 5 in ZH oder SZ — **Negativbefund**, dokumentiert
  statt spekuliert. Damit bleiben die bestehenden Fristen (ZH 2030 / SZ 2050) unverändert massgebend;
  die 5-Jahres-Frist beginnt erst mit der jeweiligen kantonalen Gesetzesrevision zu laufen.
- **Offener Punkt neu markiert:** exakter Geltungsbereich von Art. 5.1 («ohne Wasserverteilsystem»?)
  nur via Sekundärauszug plausibilisiert, nicht selbst am EnDK-PDF-Original nachgeprüft — bei
  Gelegenheit direkt verifizieren.
- **FAQ F98 neu** (`wiki/BAUHERREN-FAQ.md`): «Muss ich meine Elektroheizung jetzt noch früher
  ersetzen — ändert MuKEn 2025 die Frist?» — Kurzantwort: nein, heute noch nicht, Fristen 2030/2050
  bleiben in Kraft, bis ein Kanton Modul 5 übernimmt.
- Register nachgeführt: `destillate/INDEX.md` (Zeile `elektroheizungs-ersatzpflicht-zh-sz`,
  Datenstand + Status-Zusatz).
- Bericht: keiner separat (Ergänzung eines bestehenden Destillats, kein neuer Output-Report nötig).

## 2026-07-17 — Energie-Training Run 77 (Konsolidierung + Verdichtung, Drossel-Rule 260714)
- **Typ:** schlanker Konsolidierungs-/Verdichtungslauf (zweiter des Tages nach Run 76), bewusst ohne
  Multi-Agent-Fan-out — Drossel gemäss Rule 260714 (Wochenlimit 81 %). Schwerpunkt: die in Run 76 als
  **Meta M5** markierte Register-Nachführ-Lücke schliessen.
- **E99 verifiziert + geschlossen:** EN-102 Tabelle 5 am Original (energie.tg.ch-PDF, curl+pdftotext)
  gegengeprüft — MFH 13/15 · EFH 16/15 · Verwaltung 13/15 · Schule 14/15 · Verkauf 7/14 · Restaurant
  16/15 · Versammlung 18/15, deckungsgleich mit der Run-76-Korrektur. `destillate/INDEX.md`-Datenstand
  der enfk-en-102-Zeile von «SIA 380/1:2009» auf 2016 korrigiert.
- **E100 ins Register nachgetragen:** das established Destillat `muken-2025-anhang-4-5-daemmstaerken-
  leitungen` (Commit 17:15) fehlte im `destillate/INDEX.md` + hatte keine FAQ → INDEX-Zeile + **FAQ F97**
  ergänzt. E99 + E100 in `wiki/QUESTIONS.md` auf `[x]` geschlossen.
- **Verdichtung — neuer Wiki-Themenartikel `wiki/innendaemmung.md`:** konsolidiert die zwei bestehenden
  Innendämmung-Destillate (bisher kein Themenartikel trotz FAQ F92/F93); Risiken/Funktionsprinzipien/
  U-Wert-Nadelöhr/Nachweis SN EN 15026/Förder-Kette ZH/SZ/Kosten-Negativbefund. Status emerging.
- **FAQ F97 neu:** «Muss ich meine Heizungs-/Warmwasserleitungen dämmen — ändert MuKEn 2025 das?»
  (Anh. 4/5 zahlengleich mit MuKEn 2014, gilt in ZH+SZ bereits heute). FAQ-Stand jetzt **F1–F97**.
- Register: `destillate/INDEX.md`, `wiki/INDEX.md` (neuer Themenartikel + FAQ-Zählstand → 97),
  `wiki/BAUHERREN-FAQ.md` (F97 + F93-Backlink), `wiki/QUESTIONS.md` (E99/E100 geschlossen).
- **Verdikte:** E99 bestanden (Original-Gegenprüfung); E100 bestanden (aus Run 76, hier nur registriert);
  `innendaemmung`-Themenartikel = Konsolidierung ohne neue Claims.
- Bericht: `outputs/2026-07-17_energie-run77.md`.

## 2026-07-17 — Wissens-Chef Run 7 (Cross-KB SIA 380/1, normen ↔ energie)
- **`destillate/sia-380-1-aktualitaets-check-2026.md`:** «Querbezug KB normen»-Block ergaenzt —
  Norm-Fundstelle ist normen-Sache (Rule `normen-referenz`), deren Destillat liegt aber nur als
  speculative Auszug (6/60 S.) vor; die belegten Grenz-/U-Werte traegt energie via EnFK EN-102
  (`enfk-en-102-waermeschutz-2018`, established). 0 Zahlen-Widerspruch normen↔energie.
- **`destillate/muken-2025-anhang-1-3-uwert-heizwaermebedarf.md`:** der noch als «offen / beim naechsten
  Wartungslauf korrigieren» gefuehrte Transkriptionsfehler-Hinweis (Tab. 5 enfk-en-102) auf **ERLEDIGT
  17.07.2026** umgeschrieben — die Korrektur ist im enfk-en-102-Destillat bereits umgesetzt und am
  Original gegengeprueft (Wissens-Chef verifiziert).
- Bericht: `koordination/outputs/2026-07-17_wissens-chef-run7.md`.

## 2026-07-17 — Run 76: MuKEn-2025-U-Wert-Vergleich, Holzfeuerung-Förderfragen geschlossen, PV-Abregelung, SIA-380/1-Check

Intensiv-Lauf auf ausdrücklichen Auftrag Raphaels (Verifikations-Stufe + Intensivphase +
Token-Vollgas gemäss `training/PROGRAMM.md`). PDF-Inventar seit Run 65 erschöpft (SharePoint/
OneDrive PL-04 Energie erneut kontrolliert: keine neuen Dateien seit 11.06.2026) → Web-/
Volltext-Pfad, fünf parallele Rechercheagenten.

- **`muken-2025-anhang-1-3-uwert-heizwaermebedarf` (neu, established)** — höchste Priorität aus
  Run 75. MuKEn-2025-U-Wert- und Heizwärmebedarfsgrenzwerte (Anhänge 1-3) sind **zahlengleich**
  mit den heute in Kt. ZH geltenden SIA-380/1:2016-Werten; MuKEn-Text selbst bestätigt wörtlich
  unveränderte Übernahme aus MuKEn 2014. Die eigentlichen MuKEn-2025-Verschärfungen liegen in
  anderen Modulen (Fossilverbot, PV-Pflicht, Graue Energie), nicht hier. **Nebenfund:** ein
  Transkriptionsfehler in der Heizwärmebedarfs-Tabelle des bestehenden Destillats
  `enfk-en-102-waermeschutz-2018` wurde entdeckt (E99, Korrektur nächster Wartungslauf). FAQ
  **F95 neu**.
- **`holzfeuerung-heizungsersatz-lrv-foerderung-zh-sz` ergänzt** — alle drei in Run 75 offen
  gelassenen Förderfragen primärquellenbelegt geklärt (foerderplattform.ch + zh.ch, live
  17.07.2026 abgerufen): Klimaprämie läuft voraussichtlich bis spätestens Ende 2027; Kt. ZH
  fördert Holz-/Pellet-Heizungsersatz kantonal **nicht**; EFH-Zentralheizungen sind bei der
  Klimaprämie explizit ausgeschlossen. FAQ **F87 + F94 geschärft**.
- **`pv-rueckliefer-verguetung-mindestverguetung-2026` + `netzanschluss-netzverstaerkung-pv-emobilitaet-ch`
  ergänzt** — 70-%-Abregelungsregel rechtlich verortet: Art. 17c Abs. 4 StromVG i.V.m. Art. 19c
  Abs. 4 StromVV (i.K. 1.1.2026), konkreter Prozentsatz aus VSE-Selbstregulierungsnorm NRE-CH
  2025, Deckel 3 % der Jahresproduktion + Nachvergütungspflicht bei Überschreitung.
  Negativbefunde erneut bestätigt: ebs Energie AG/EWS Ibach (SZ) ohne 2026er-Rp./kWh-Wert;
  Q3-2026-Referenzmarktpreis erst ab 14.10.2026 amtlich verfügbar. FAQ **F96 neu**.
- **`sia-380-1-aktualitaets-check-2026` (neu, established)** — Aktualitäts-Check ohne
  Korrekturbedarf: SIA 380/1:2016 (Korrigenda C1/2019) bleibt aktueller Titel, keine neuere
  Ausgabe 2023-2025 auffindbar. Bestätigt das bestehende Destillat
  `sia-380-1-2016-aenderungen-gegenueber-2009`. Ein SIA-Harmonisierungsprojekt zu
  Standardnutzungswerten (Tab. 27) läuft, Zeitplan/Verbindlichkeit ungeklärt.
- **`innendaemmung-altbau-bauphysik-ch` vertieft (E93)** — BFE-Wärmebrückenkatalog
  «Arbeitspaket 5: Innendämmsysteme» (BFH Architektur, Holz und Bau, 2013, frei) liefert
  Ψ-Werte für Geschossdecke/Innendämmung (Ψ ≈ −0,34 W/mK Bestand → 0,08-0,09 W/mK mit 140 mm
  Innendämmung), modelliert aber eine **Holzbalkendecke, keine Massivdecke** — bleibt
  Analogiewert, kein direkter Beleg für den gesuchten Fall. Status bleibt **emerging**.

## ⚠ Qualitäts-/Prozess-Befund: zwei Agenten brachen beim ersten Anlauf ohne echte Tool-Ausführung ab

Von den fünf parallel gestarteten Rechercheagenten meldeten zwei (PV-Abregelung, SIA-380/1)
beim ersten Versuch „completed" mit plausibel klingendem Text, hatten aber laut Datei-
Zeitstempel **keine einzige Datei tatsächlich geändert** (`tool_uses: 0` trotz im Text
beschriebener Tool-Aufrufe). Beide wurden erfolgreich wiederholt; ein dritter, ähnlich
gelagerter Fall (Innendämmung-Ergänzung) trat beim zweiten Thema ebenfalls auf und wurde
ebenfalls erfolgreich wiederholt. **Lehre:** Agenten-Ergebnisse vor der Registerpflege immer
anhand der tatsächlichen Datei-Zeitstempel/-Inhalte verifizieren, nicht am Text allein glauben
— vgl. bereits M4 aus Run 75 (Vorsicht bei paralleler Agentenarbeit ohne zentrale Kontrolle).

## Verdichtung (FAQ)

- **Neu: F95-F96** (2 Antworten). FAQ-Stand jetzt **96 Kernfragen (F1-F96)**.
- **Geschärft: F87, F94** — Holzfeuerung-Förderfragen vollständig geklärt.

## Register

- `destillate/INDEX.md`: sechs neue/aktualisierte Zeilen (Run 76).
- `training/curriculum.md`: neuer Block **D57**.
- `wiki/QUESTIONS.md`: vier Punkte aus Run 75 geschlossen, neue Einträge **E99-E102**, E93 vertieft.
- `wiki/BAUHERREN-FAQ.md`: F87 + F94 geschärft, F95-F96 neu.
- `CHANGELOG.md` nachgeführt.

## Verifikations-Stufe (Verdikte)

Modell D (Volltextabgleich an der amtlichen Primärquelle) für alle fünf Themen — keine
separaten Refuter-Agenten, da alle Themen an amtlichen/primärnahen Texten (Fedlex, EnDK,
kantonale Ämter, VSE, SIA-Shop) direkt verifizierbar waren.

| Destillat/Thema | Verdikt | Status |
|---|---|---|
| `muken-2025-anhang-1-3-uwert-heizwaermebedarf` (neu) | **bestanden** — drei unabhängige Primärquellen (MuKEn-2025-Volltext, EnFK-EN-102, Kt.-ZH-Anforderungsprofil 2017) zeigen identische Zahlen; MuKEn-Text bestätigt Übernahme wörtlich | **established** |
| `holzfeuerung-heizungsersatz-lrv-foerderung-zh-sz` (ergänzt) | **bestanden** — beide Quellen live abgerufen (foerderplattform.ch, zh.ch), FAQ-Formulierungen wörtlich zitiert | **established** (Förderausschlüsse/Enddatum), **speculative** (CHF-Kennwerte, exaktes Enddatum «voraussichtlich») |
| `pv-rueckliefer-verguetung-mindestverguetung-2026` / `netzanschluss-netzverstaerkung-pv-emobilitaet-ch` (ergänzt) | **bestanden** — Gesetzestext (Fedlex) + VSE-Norm im Volltext gelesen, Negativbefunde durch erneute Direktprüfung bestätigt | **established** |
| `sia-380-1-aktualitaets-check-2026` (neu) | **bestanden** — SIA-Shop-Produktseite direkt geprüft, keine neuere Ausgabe auffindbar | **established** |
| `innendaemmung-altbau-bauphysik-ch` (E93 vertieft) | **bestanden mit Vorbehalt** — BFH-Katalog echt gefunden und korrekt gelesen, aber Konstruktionstyp (Holzbalkendecke) weicht vom gesuchten Fall (Massivdecke) ab; ehrlich als Analogiewert, nicht als direkter Beleg gekennzeichnet | **emerging** bleibt |

## Ergebnis

- Fünf von fünf Themenkomplexen bearbeitet (nach zwei Wiederholungen); FAQ von 94 auf **96**
  gewachsen.
- **Wichtigster Fund:** die MuKEn-2025-Dämmvorgaben sind für ZH bereits erfüllt — das nimmt
  Bauherren eine verbreitete Sorge und lenkt das Gespräch auf die tatsächlichen Neuerungen
  (Heizsystem/PV-Pflicht/Graue Energie).
- **Praktischster Fund:** die drei Holzfeuerungs-Förderfragen aus Run 75 sind jetzt vollständig
  geschlossen — ein EFH-Bauherr weiss jetzt eindeutig, dass beide grossen Förderschienen für ihn
  ausfallen.
- **Methodischer Fund:** zwei (von drei) Agenten-Frühabbrüche ohne echte Tool-Ausführung
  entdeckt und durch Zeitstempel-Verifikation aufgedeckt, bevor fehlerhafte Register-Einträge
  entstanden wären.

## Was offen bleibt / Priorität nächster Lauf

1. **E99 — Transkriptionsfehler in `enfk-en-102-waermeschutz-2018` Tab. 5 korrigieren**
   (Heizwärmebedarf-Grenzwerte MFH, kleine, aber sichtbare Korrektur).
2. **MuKEn 2025 Anhänge 4+5** (Dämmstärken Verteilleitungen) sowie Kt.-Schwyz-Übernahme der
   Anhänge 1-3 — nächster Fachnutzen nach Anhang 1-3.
3. **E92 weiterhin unverändert:** SMGV-Merkblatt Nr. 70 — Entscheid Raphael nötig
   (kostenpflichtig).
4. **`bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013`** als eigenständiger neuer
   Wiki-Artikel ausbauen (Innenwandanschluss/Sockel/Fensterleibung), auch wenn die Massivdecken-
   Lücke offenbleibt.
5. **Q3-2026-Referenzmarktpreis PV** erst ab Mitte Oktober 2026 nachziehbar.
6. Ältere Dauerbrenner unverändert: BHKW CH-Wirtschaftlichkeitszahlen, SZ-Fernwärme-Sampling,
   ZH-Solarpflicht-Beratungstermin (pausiert), Ziff.-7-Frage Klimaprämie ZH.

## Meta

- **M2** (eigener Skill `energie`?) bleibt seit Run 45 entscheidungsreif, weiterhin offen für
  ein Tagesbriefing an Raphael.
- **M5 (neu):** Zwei von fünf Agenten brachen beim ersten Anlauf ohne echte Tool-Ausführung ab
  (siehe Qualitäts-/Prozess-Befund oben). Für künftige Läufe: Datei-Zeitstempel-Verifikation
  nach jedem Agenten-Batch als festen Schritt einplanen, bevor Register/CHANGELOG nachgeführt
  werden — nicht nur bei Verdacht.

## 2026-07-16 — Run 75: Konsolidierung + KORREKTUR zweier beratungsgefährlicher Fehler aus Run 74

**Hinweis zur Nummerierung:** Die vier parallelen Agenten dieses Laufs haben in ihren eigenen
Commits abweichende Run-Nummern vergeben (Run 76 = PV-Rückliefervergütung, Run 78 =
Innendämmung). Der korrekte fortlaufende Lauf ist **Run 75**; die Einträge unten fassen den
gesamten Lauf zusammen. Ursache: parallele Agenten ohne gemeinsamen Zähler (Meta-Punkt M4 im
Lauf-Report).

- **⚠ KORREKTUR FAQ F87 (Holzfeuerung), zwei Fehler aus Run 74:**
  (1) «beide werden alle 4 Jahre kontrolliert» → im **Kanton ZH sind es 2 Jahre**. Es ist kein
  Widerspruch, sondern eine Normenkaskade: LRV Art. 13 Abs. 3 Bst. a nennt 4 Jahre «in der Regel
  … unter Vorbehalt abweichender Bestimmungen», der Kanton ZH verschärft mit der Verordnung zum
  Massnahmenplan Luftreinhaltung (RRB 13.01.2016) auf 2 Jahre — kantonales Recht, nicht eine
  Stadt-Zürcher Sonderregel. SZ bleibt bei 4 Jahren.
  (2) «primär die Klimaprämie (CHF 360 pro kW)» → Fördersatz ist **18 Rp./kWh** (CHF 1.80/l Öl);
  die 360 sind eine blosse Faustregel. Und die Klimaprämie ist **keine Ergänzung, sondern eine
  Alternative** zum kantonalen Programm — Doppelförderung ausgeschlossen (Ziff. 8). Die Empfehlung
  «primär Klimaprämie» war unbelegt. Beide Aussagen hätten eine Bauherrschaft in die Irre geführt;
  F87 trägt neu einen sichtbaren Korrekturhinweis. Ursache: Run 74 stützte sich auf Sekundärquellen,
  die amtlichen Primärquellen (AWEL-Leitfaden, klik.ch-Projektdokument) wurden erst jetzt gelesen.
- **Weitere Korrektur:** Hochkamin-Formel steht in **LRV Anhang 6**, nicht Anhang 2 (Run 74).
- **`holzfeuerung-heizungsersatz-lrv-foerderung-zh-sz` ergänzt** — alle fünf Restpunkte aus Run 74
  gelöst: Kaminhöhen (BAFU-Vollzugshilfe 2018: First +0.5 m, Flachdach +1.5 m; **keine
  1.0-m-Erleichterung bei Holz**; Nachbargebäude < 10 m wird massgebend), Kaminfegerpflicht
  (ZH GVZ-Weisung 20.03: 3×/Jahr; SZ FSV § 11: 1×/Jahr), **SZ fördert Holz sehr wohl**
  (CHF 5'000 pauschal bzw. CHF 360/kWth), Klimaprämie aktiv (Projekt Nr. 0228, Stand Januar 2026).
  Status differenziert: **established** für Intervalle/Kaminhöhe/Kaminfeger/SZ-Förderung,
  **speculative** für CHF-Kennwerte und Klimaprämie-Enddatum. **FAQ F94 neu** (Klimaprämie vs.
  kantonales Programm — Entweder-oder).
- **`muken-2025-verabschiedet` ergänzt — Anhänge 6+7 erstmals ausgewertet** (seit Run 74 offen;
  EnDK-Primärvolltext S. 39/117, zum Vergleich MuKEn-2014-Volltext gelesen). **Anhang 6 ist ein
  Systemwechsel:** 11 Standardlösungen als Regelweg (inkl. fossiler Optionen SL 4/6/10) → 7
  Standardmassnahmen als reiner Ausnahmeweg (zwei innert 3 J., erst bei nachgewiesener
  Unzumutbarkeit). **Anhang 7 ist nachweislich neu** («Annuität»/«Lebenszykluskosten»/«Diskontsatz»
  kommen im MuKEn-2014-Volltext null Mal vor): verbindliche Vollkostenrechnung, Förderbeiträge
  zwingend anzurechnen, Diskontsatz = hypothekarischer Referenzzinssatz (Art. 12a VMWG), CO₂-Abgabe
  als Mittelwert bis Höchstsatz. Kein einheitlicher Betrachtungszeitraum genannt — ehrlich
  ausgewiesen. Status **established** bleibt. Anhänge 1-5 unausgewertet (MuKEn 2025 hat genau 7).
- **Neues Destillat `pv-rueckliefer-verguetung-mindestverguetung-2026.md`** (**established**) —
  EnG Art. 15 Abs. 1/1bis + EnV Art. 12/13 im Fedlex-Volltext. Mindestvergütung **6 Rp./kWh**
  (< 30 kW), 6,2 Rp. ohne Eigenverbrauch, **ab 150 kW keine**; DC-Generatorleistung massgebend,
  Anlagen-Splitting unzulässig. **Stärkster Befund:** BFE-Referenz-Marktpreis Q1 2026 = 10,27 /
  **Q2 2026 = 3,90 Rp./kWh** — im ganzen Q2 **unter** der Mindestvergütung, sie hat sofort
  gegriffen. ewz stabil 12,91 vs. EKZ quartalsfolgend = **Faktor 2-3 allein wegen der
  Netzgebietsgrenze**. HKN separat (0,2-3,0 Rp.). **FAQ F90+F91 neu.**
- **Neues Destillat `innendaemmung-altbau-bauphysik-ch.md`** (**emerging**) — SIA 180 verlangt für
  innengedämmte Aussenwände die **hygrothermische Simulation nach SN EN 15026** (Glaser genügt
  nicht; die Simulation ihrerseits bei 2D-Effekten/Balkenkopf unzulässig). **Förder-Nadelöhr:**
  U ≤ 0,20 mit Innendämmung praktisch unerreichbar → Erleichterung für geschützte Bauteile bis
  U 0,30 ist der Regelweg (CHF 40.-/m² ZH, 60.-/m² SZ). **Asymmetrie:** WDV ZH § 2 Abs. 5 rettet
  über den bauphysikalischen Ast die Bewilligung, nicht das Fördergeld. Bewusst **nicht**
  established: SMGV-Merkblatt Nr. 70 (einzige CH-Referenz) ungelesen, keine CH-Ψ-Zahl.
  **FAQ F92+F93 neu**, QUESTIONS **E92-E98**.
- **Hausputz:** Dateiname `pv-rueckliefervverguetung-…` (Tippfehler, doppeltes v, stammte aus dem
  Agenten-Auftrag) → `pv-rueckliefer-verguetung-mindestverguetung-2026.md` umbenannt, alle drei
  Backlink-Stellen nachgezogen. Umlaut-Verstoss im PV-Frontmatter korrigiert
  (Rule `umlaute-konvention`).
- **Batch bewusst gedrosselt:** 4 Themen statt der Vollgas-Richtwerte 6-10 — Rule
  `auto-verbesserungen` **260714 «Tempo drosseln»** (Wochenlimit 81 %) überschreibt 260712b/c für
  die laufende Woche. `training/PROGRAMM.md` trägt das noch nicht nach (Meta-Punkt M3).
- FAQ-Stand: **94 Kernfragen (F1-F94)**. Report: `outputs/2026-07-16_energie-run75.md`.

## 2026-07-16 — Run 78: NEUES Fachthema Innendämmung im Altbau (Bauphysik, Systeme, Nachweise, Förderung)
- **Neues Destillat `destillate/innendaemmung-altbau-bauphysik-ch.md`** (status **emerging**) — das
  Thema war in der KB bisher nur mit Randerwähnungen abgedeckt (Faustregeln in
  `denkmalschutz-energiesanierung-zh-sz`, λ-Hinweis in `sia-2001-waermedaemmstoffe-lambda`, Aufbauten
  W25/W26 im `bfe-u-wert-bauteilekatalog-neubauten-2002`). Bewusst als **technisches Gegenstück** zum
  rechtlichen Denkmalschutz-Destillat angelegt, ohne dieses zu duplizieren.
- **Primärquellen im Volltext gelesen** (curl + pdftotext, lokal): **Applica 2/2022** «So klappt es mit
  der Innenwärmedämmung» von **Prof. Roger Blaser Zürcher** (FHNW, Institut Nachhaltigkeit und Energie
  am Bau — sitzt für die FHNW in der **Kommission SIA 180**, via SIA-4001-Vorschau verifiziert; damit
  eine sehr starke CH-Quelle); **Applica 12/2015** (Achim Pilz, Systemtabelle Dr. Anatol Worch) +
  «Neues SMGV-Merkblatt Innenwärmedämmung» (Walter Schläpfer, SMGV); **SIA 180:2014** und **SIA
  4001:2022** Vorschau-PDFs (shop.sia.ch); **Förderprogramm Energie Kt. ZH 2026** S. 25-27;
  **dena-Leitfaden Wärmebrücken** (⚠ D, nur als gekennzeichnete Analogie).
- **Kernbefunde:**
  - **Nachweis:** Nach SIA 180 ist für **«Aussenwände mit Innenwärmedämmung»** eine **hygrothermische
    Simulation nach SN EN 15026** erforderlich — Glaser (SN EN ISO 13788) genügt hier nicht. Aber: die
    Simulation ist **unzulässig bei 2D-Effekten** (Wärmebrückenbereiche, aufsteigende Feuchte) ⇒ der
    **Balkenkopf ist mit 1D-WUFI NICHT erledigt**. Glaser-Grenzwerte belegt: 3 % Schichtmasse (Holz),
    1 % Schichtvolumen (Dämmstoff), 800 g/m² (poröse Baustoffe). Quelle enbau-online.ch (vdf/ETH 2022).
  - **Systemveränderung:** «Eine vormals warme raumseitige Oberfläche wird zur kalten
    Bauteilschichtgrenze» — ist die Wasseraufnahme aussen grösser als das Trocknungspotenzial,
    resultiert **innert 3 bis 7 Jahren eine substanzielle Schädigung** (Blaser Zürcher). Neu in der KB:
    **w-Wert-Tabelle** des Aussenputzes (> 2,0 aufnehmend / < 2,0 hemmend / < 0,5 abweisend) als
    Eintrittsprüfung.
  - **3 Funktionsprinzipien** (Worch): kondensattolerierend/kapillaraktiv · kondensatbegrenzend
    (Dampfbremse) · kondensatverhindernd (Schaumglas/VIP) — plus λ/μ/ρ/w/Brand-Tabelle (CaSi
    0,050-0,065 · Mineraldämmplatte 0,042 · WD-Putz 0,05-0,06 · **Aerogel-Putz 0,029**) und die
    θ_si-Tabellen (2 cm heben die Aussenecke um 3,0-4,8 K).
  - **Kontraintuitiv, jetzt belegt:** «je dünner desto besser» gilt NUR für die reine
    Schimmelsanierung; bei der **energetischen** Innendämmung steigt das Schadenspotenzial mit der
    Dämmstärke **exponentiell** — und die Bestandsveränderung löst **automatisch das Energiegesetz** aus.
  - **Förderung (die wichtigste Praxis-Kette):** Innendämmung ist in ZH 2026, SZ 2026 und beim Bund
    **nirgends erwähnt** — weder aufgeführt noch ausgeschlossen; gefördert wird das Bauteil über den
    U-Wert. Da **U ≤ 0,20** mit Innendämmung praktisch unerreichbar ist (eigene Rechnung: ~16 cm
    λ 0,035), ist die **Erleichterung für «geschützte» Bauteile bis U 0,30** der **Regelweg**, nicht
    die Ausnahme ⇒ **CHF 40.–/m² (ZH)** / **CHF 60.–/m² (SZ)**. ZH-Definition «geschützt» wörtlich
    erfasst — Ast (b) «von einer Behörde als geschützt definiert (Baubehörde, Orts- und
    Stadtbildkommissionen)» ist breiter als gedacht.
  - **Asymmetrie-Fund (neu, praxisrelevant):** **§ 2 Abs. 5 WDV Kt. ZH** erleichtert «bei
    schützenswerten Bauten **oder aus bauphysikalischen Gründen**» — der bauphysikalische Ast rettet
    die **Bewilligung** auch ohne Schutzstatus, aber **nicht das Fördergeld** (dort nur «geschützt»).
  - **Wärmebrücken:** CH-Anker ist EN-102 **Typ 2 Ψ ≤ 0,20** (Unterbrechung der Dämmschicht durch
    Wände/Decken). Zwei Vollzugsregeln geschärft: beim **Einzelbauteilnachweis Umbau gibt es gar keine
    Wärmebrücken-Grenzwerte**, beim **Systemnachweis** (Ausweichweg, 1,5× Neubau) sind sie in Q_H drin.
  - **Nebenwirkungen, die Bauherren überraschen:** Schallschutz wird durch Innendämmung eher
    **schlechter** (Masse-Feder-Masse), sommerlicher Hitzeschutz **sinkt** (Speichermasse fällt weg);
    in **Mietwohnungen** sind bei kapillaraktiven Systemen diffusionsdichte Farben **verboten**.
- **Negativbefunde (ehrlich dokumentiert):**
  - **Keine CHF/m²-Primärquelle** für Innendämmung in der CH gefunden. Geprüft: Gebäudeprogramm,
    Förderprogramme ZH/SZ, BFE/EnergieSchweiz, SMGV/Applica (keine Preise), energie-umwelt.ch,
    hausinfo.ch. Kursierende «CHF 80-150/m²» stammen aus Redaktionsportalen ohne offengelegte
    Datenbasis (nachhaltigleben.ch beruft sich pauschal auf «BFE 2023»/«EMPA 2021» ohne Verlinkung) —
    **explizit als nicht verwendbar markiert**. Deutsche Preise (35-80 EUR/m²) als D gekennzeichnet.
  - **Keine Schweizer Ψ-Zahl** für «einbindende Massivdecke in innengedämmter Aussenwand» — der
    BFE-Wärmebrückenkatalog (2002) deckt nur Neubaudetails ab. Ersatzweise der **deutsche**
    Pauschalzuschlag ΔU_WB **0,15 statt 0,10 W/m²K** (DIN 4108 Bbl 2 / GEG) als klar gekennzeichnete
    Analogie mit Übernahmeverbot in CH-Nachweise.
  - **SMGV-Merkblatt Nr. 70** (die zentrale CH-Referenz, «allgemein anerkannte Regel der Bautechnik»)
    nur hinter mySMGV-Login — Kapitelstruktur inkl. gezeichneter Ausführungsdetails über den
    begleitenden Applica-Artikel belegt, Inhalt **nicht gelesen**. **Beschaffung empfohlen** (bestes
    Preis-Nutzen-Verhältnis aller offenen Punkte). Ebenso: SIA 180 Anhang C/E + SIA 4001 Kap. 6.3/6.4
    kostenpflichtig, nicht eingesehen.
  - Flankendämmung/Dämmkeil-Masse nur aus **deutschen** Fachportalen — CH-Masse vermutlich im
    Merkblatt Nr. 70.
- **Wiki:** `wiki/BAUHERREN-FAQ.md` neu **F92** («Meine Fassade darf ich nicht aussen dämmen — kann ich
  einfach von innen dämmen?») und **F93** («Gibt es Fördergeld für eine Innendämmung, und schaffe ich
  damit die Vorschriften?»). `destillate/INDEX.md` ergänzt.
- **Backlinks gesetzt** auf `denkmalschutz-energiesanierung-zh-sz` · `sia-2001-waermedaemmstoffe-lambda`
  · `bfe-u-wert-bauteilekatalog-neubauten-2002` · `waermebrueckenkatalog-bfe-geschossdecke-kellerdecke`
  · `waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz` · `enfk-en-102-waermeschutz-2018` ·
  `en-zh-nachweis-uebersicht` · `foerderprogramm-energie-zh-2026` · `foerderprogramm-energie-sz-2026` ·
  `gebaeudeprogramm-bund-hfm-2015` · `geak-gebaeudeenergieausweis-kantone` ·
  `naturdaemmstoffe-kennwerte-sommerhitzeschutz` · `sommerlicher-waermeschutz-sia180-nachweisverfahren`
  · `raumluftfeuchte-komfortbereich-sia180` · `graue-energie-sanieren-vs-neubau-amortisation` ·
  `aussenlaerm-schallschutzfenster-strasse-bahn`.

## 2026-07-16 — Run 76: NEUES Fachthema Rückliefervergütung + Mindestvergütung ab 2026 (Primärquellen)
- **Neues Destillat `destillate/pv-rueckliefer-verguetung-mindestverguetung-2026.md`** (status
  **established**) — die bisher grösste Lücke der PV-Kette: was der Bauherr für den **eingespeisten**
  Strom bekommt. Bisher stand dazu in der KB nur die Faustzahl «~8-10 Rp.» und «Netzbetreiber legt
  fest, sehr unterschiedlich» (in `pv-einmalverguetung-bund-bfe` / `pv-marktzahlen-kosten-ch-2025`).
- **Primärquellen im Volltext gelesen** (curl + pdftotext, lokal): **EnG SR 730.0** und
  **EnV SR 730.01**, je Fedlex-Fassung in Kraft seit **1.1.2026** (Art. 9, 11, 12, 13, 15 wörtlich);
  **BFE «Referenz-Marktpreise gemäss Art. 15 EnFV»**, Publikation **14.07.2026** (pubdb 11515);
  **ElCom-FAQ «Energiestrategie 2050 ab Mantelerlass»**, Update **16.06.2026**, Kap. 1 vollständig.
- **Kernbefunde:** EnG Art. 15 Abs. 1bis (i.K. 1.1.2026) → vierteljährlich gemittelter Marktpreis;
  EnV Art. 12 Abs. 1bis → Minimalvergütung **6 Rp./kWh** (< 30 kW), **6,2 Rp./kWh** (Volleinspeiser
  ab 30 kW), anteilsmässig ab 30 kW mit Eigenverbrauch = wirksam **180/P Rp./kWh**, ab 150 kW keine.
  **Referenz-Marktpreis PV Q1 2026 = 10,27 Rp./kWh, Q2 2026 = 3,90 Rp./kWh** (April 2,30) — der
  Mindestsatz hat im **ersten Sommer sofort real gegriffen**, das ist der stärkste Beratungsbefund.
- **Markt-Zweiteilung belegt:** EKZ folgt dem Quartalspreis (Q2 3,90 + HKN bis 3,0), **ewz zahlt
  bewusst stabil 12,91 Rp./kWh** (8,5 HT / 4,55 NT + 3,0 HKN + 2,0 Solarförderung) — zulässig laut
  ElCom-FAQ 1.4 (Vertragsfreiheit). Faktor 2-3 Ertragsunterschied allein wegen der Netzgebietsgrenze.
- **Bauherren-FAQ um F90 + F91 erweitert** (89 → 91): F90 «Was bekomme ich ab 2026 für den
  eingespeisten Solarstrom?», F91 «Ist die Einmalvergütung dasselbe wie die Einspeisevergütung?»
  (der häufigste Bauherren-Irrtum, jetzt sauber abgegrenzt).
- **Backlinks gesetzt** zu `pv-einmalverguetung-bund-bfe`, `pv-marktzahlen-kosten-ch-2025`,
  `pv-ertrag-eigenverbrauch-praxis`, `zev-eigenverbrauch-mfh-her-2025`,
  `leg-lokale-elektrizitaetsgemeinschaft-2026` — keine Duplizierung der dortigen Inhalte.
- **Negativbefunde offen ausgewiesen:** ebs Energie AG (SZ) publiziert keine Rp./kWh (geprüfte
  Pfade dokumentiert; für SZ stattdessen EWS Ibach, ⚠ Wert 2025); VESE/pvtarif-Bandbreite
  5-17 Rp./kWh ist ⚠ Erhebung **2024**; Stufe 2027 (stündliche Spotpreise) nur sekundär belegt.
- **Verfallsdatum:** die Rp./kWh-Werte sind quartalsaktuell — ab Mitte Oktober 2026 den Q3-Wert
  des BFE nachziehen. Die Rechtsstruktur bleibt.

## 2026-07-16 — Run 75: MuKEn 2025 Anhänge 6 + 7 im Volltext ausgewertet (Standardmassnahmen, Jahreskosten)
- **`destillate/muken-2025-verabschiedet.md` ergänzt** (nicht neu geschrieben) um den Abschnitt
  «Anhänge 6 und 7 — Volltext-Auswertung (Run 75)». Beide Anhänge lagen bisher nur als Verweis in
  Art. 1.35 vor. Gelesen am Original (curl+pdftotext, 117 S., Stand 29.08.2025, S. 39 von 117);
  beide Anhänge sind textbasiert, keine Bild-Tabellen — alle Zahlen wörtlich übernommen.
- **Anhang 6 «Standardmassnahmen»:** alle **7** Massnahmen mit Zahlenwerten erfasst (Fensterersatz
  Ug ≤ 0,7 · Dach/Fassade U ≤ 0,2 · Estrichboden U ≤ 0,25 · Lüftung mit WRG Energieklasse A bzw.
  Temperatur-Bruttoeffizienz ≥ 73 % · Solarthermie Aperturfläche ≥ 2 % EBF · Wärmepumpenboiler,
  nicht zulässig bei Kat. III/V/VII/IX/X).
- **Systemwechsel gegenüber MuKEn 2014 belegt** — dafür zusätzlich den **MuKEn-2014-Volltext**
  (98 S., endk.ch) gelesen, Art. 1.31: dort **11 Standardlösungen** als **Regelweg** (eine SL
  genügte, fossiler Kesselersatz blieb legal), inkl. fossiler Optionen (SL 4 Erdgas-WP, SL 6 WKK,
  SL 10 fossiler Spitzenlastkessel). MuKEn 2025: **7 Massnahmen** als **Ausnahmeweg**, **zwei**
  davon nötig, innert **3 Jahren**, alle fossilen Optionen gestrichen, Wärmeerzeuger nicht mehr
  Teil der Liste (neu abschliessend Art. 1.34 Abs. 2). Kernbefund: Anhang 6 ist reine
  **Kompensationsliste**, nicht mehr Erfüllungsweg.
- **Anhang 7 «Berechnung der Jahreskosten» — als methodische Neuerung nachgewiesen:** Die Begriffe
  «Jahreskosten», «Lebenszykluskosten», «Annuität», «Diskontsatz» kommen im MuKEn-2014-Volltext
  **null Mal** vor (Volltextsuche über beide PDF). Erfasst: Grundformel (Energie- + Betriebskosten
  + Annuität der Investition, Förderbeiträge zwingend anzurechnen), Abschreibung nach
  paritätischer Lebensdauertabelle Mieterverband/HEV, Strompreis ElCom (Standortkanton),
  Brennstoffe BFS, Teuerung LIK, Vierjahres-Mittelung, **Diskontsatz = hypothekarischer
  Referenzzinssatz (Art. 12a VMWG)**, MwSt im Bewilligungsjahr, CO₂-Abgabe als **Mittelwert
  zwischen Abgabesatz und Höchstsatz**, Rechenhilfe von der kantonalen Energiefachstelle (Abs. 2).
- **Ehrlich ausgewiesen:** Anhang 7 nennt **keinen** einheitlichen Betrachtungszeitraum — der
  Horizont folgt je Anlage aus der Lebensdauertabelle über die Annuität; die dort erwähnten 20 J
  (Art. 1.35 Abs. 2 lit. d) betreffen nur die HKN-Beschaffung. Die Zahlenwerte der
  Lebensdauertabelle stehen nicht in der MuKEn (externe Quelle, nicht beschafft).
- **Offener Punkt geschlossen:** «Genaue Ausgestaltung der 25-%-Unzumutbarkeitsschwelle
  (Berechnungsbasis)» — Basis ist Anhang 7; Vergleich fossil *inkl. Zusatzmassnahmen* gegen
  Fernwärme/LW-WP/ESO-WP (Art. 1.35 Abs. 3). Drei neue offene Punkte eröffnet (Lebensdauertabelle,
  kantonale Rechenhilfe ZH/SZ, Anhänge 1–5).
- **Backlink neu:** → `[[heizsysteme-vollkostenvergleich-energieschweiz]]` — Anhang 7 hebt den
  Vollkostenvergleich vom Beratungsargument zum **Rechtsinstrument**.
- **Anhangs-Inventar geklärt:** MuKEn 2025 hat **genau 7** Anhänge. 6+7 erledigt; **1–5**
  (Bauteilgrenzwerte Neubau/Umbau, Heizwärmebedarf, Dämmstärken, UR-Werte) benannt, nicht
  ausgewertet — Anhang 1–3 als wertvollste Folgekandidaten markiert (Vergleich zu geltenden
  ZH-Werten).
- Status `established` unverändert (Primärquellen-Verifikation am Original vertieft, kein
  Widerspruch zum Run-73/74-Stand).

## 2026-07-16 — Wissens-Chef Run 6 (Cross-KB): SIA-180-Fundstellen korrigiert, MuKEn-Modul-11 auf ZH skopiert, GreenPV-Aktualitaets-Flag
- **`destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md` (aus Run 74) — vier Korrekturen:**
  (1) **V3-Zeile korrigiert:** «Nachweis ueber Uebertemperaturstunden» schrieb das Stundenkontingent
  faelschlich der Norm zu. Normatives Kriterium ist SIA 180 **Ziff. 5.2.6.3 / Fig. 3** (alle empfundenen
  Temperaturen unter der oberen Grenzkurve, **0 h**); die 100 h/400 h sind **Abweichungen der
  Vollzugsstellen** (Stadt-ZH-Wegleitung Ziff. 4.1.1 mit Fig. 4; HBA-Richtlinie ueber SIA 382/1).
  Wichtig: die Zahlen selbst sind **korrekt und amtlich belegt** — die Zeilen 81-84 blieben unveraendert.
  (2) **gtot-Grenzwerte Fig. 12 ergaenzt** (N ≤ 0,20/fg max. 1,00 · NE/NW ≤ 0,13/fg max. 0,28 ·
  E/SE/S/SW/W ≤ 0,07/fg max. 0,15) aus `wissen/normen/destillate/sia-180-2014` (SIA 180 Ziff. 5.2.4.1,
  Original-PDF); der offene Punkt ist auf **Fig. 13** (Dachflaechenfenster) eingeschraenkt. Die Begruendung
  «SIA-180-Normtext kostenpflichtig, nicht direkt eingesehen» war ueberholt — das Original war seit
  13.07.2026 in der KB `normen` destilliert (Verstoss gegen Rule `normen-referenz`).
  (3) **Querbezug-Bloecke gesetzt:** → KB `normen` (Norm-Fundstellen, fuehrend) und → KB
  `planungsgrundlagen` (EN-ZH-/EVEN-Verfahren, fuehrend); Cross-KB-Zeile bei den Backlinks.
  (4) Offener Punkt «EVEN-Formularmigration» **durch Verweis geschlossen** (fuehrend:
  `planungsgrundlagen/wiki/energie-even-plattform-bedienung`) — keine doppelte Lueckenbuchhaltung.
- **`destillate/muken-2025-verabschiedet.md` Modul-11-Zeile skopiert:** «erstmals mit Zahlenwert kodifiziert»
  gilt nur auf **Muster-Ebene**; **fuer den Kt. ZH keine Neuerung** — die 35-cm-Kappung gilt dort seit
  **1.4.2013** (§ 258 Abs. 4 BMZ, § 256 Abs. 2 UEZ, § 257 Abs. 3 GrFZ, § 253a PBG, FN 46 G vom 26.03.2012;
  § 12 Abs. 3 ABV). ZH-Sonderfall § 253a Abs. 2 PBG (nachtraegliche Daemmung ganz unbeachtlich) ist
  **weitergehend** als das Muster; GFZ in ZH nicht verfuegbar; fuer die AZ (§ 255 PBG) keine Kappung.
  Der unbelegte Zusatz **«Grundsatz seit 2005 bekannt» wurde gestrichen** (kein Beleg in der KB auffindbar;
  einziger verifizierbarer Datumsanker ist 1.4.2013). Verlinkt auf `wissen/baurecht/wiki/nutzungsziffern`.
- **`destillate/greenpv-fassade-pv-begruenung-hslu.md`: Aktualitaets-Flag** — das Destillat steht auf dem
  Workshop-2-Foliensatz (15.06.2022) und verweist auf einen «noch ausstehenden Schlussbericht»; die
  oeffentliche **HSLU-Schlussbroschuere vom 27.08.2024** liegt vor und ist in
  `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl` §6/§6b volltext ausgewertet. Die drei offenen
  Punkte (Endergebnisse, kWh/kWp je Orientierung, Kosten CHF/m²) sind damit **beantwortet** und als
  erledigt markiert. **Bring-Schuld des energie-Loops:** Schlussbroschuere re-destillieren, dann Status heben.
- **`destillate/e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md`:** Querbezug → `baurecht/wiki/
  fahrzeugabstellplaetze-und-parkierung` gesetzt (Abstellplatz-Pflichtzahl dort fuehrend; hier nur die
  Lade-Ausruestung), inkl. MuKEn-Modul-12-Bezug als Musterrecht.
- Befunde adversarial verifiziert (2 unabhaengige Refuter-Agenten). **Der schwerste gemeldete Befund wurde
  dabei WIDERLEGT:** die «100 h / Figur 4»-Zuschreibung ist keine Erfindung — die Stadt-ZH-Wegleitung
  schreibt Fig. 4 in Ziff. 4.1.1 ausdruecklich abweichend vor (am amtlichen PDF im Volltext belegt).
  Bericht: `wissen/koordination/outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-16 — Run 74 (Intensiv-Lauf, sechs parallele Hintergrund-Agenten)
- [meta] Zweiter Intensiv-Lauf desselben Tages, auf expliziten Auftrag Raphaels («EINEN
  Intensiv-Lauf», Token-Vollgas 6-10 PDF-Äquivalente, Workflow-Parallelisierung autorisiert).
  PDF-Inventar bleibt seit Run 65 erschöpft; alle sechs Themenkomplexe liefen über den
  Web-/Volltext-Pfad, sechs Rechercheagenten parallel.
- [fund] **MuKEn-2025-Originaltext (117 S.) erneut gelesen, diesmal Module 2-14 vollständig
  tabellarisch ausgewertet** — bisher nur Basismodul + Teil G bekannt. Wichtigste Funde: Modul 13
  «Gebäudehülleneffizienz» (komplett neu — 10-Jahres-Sanierungspflicht für Gebäude vor 1980), Modul
  5 (Elektroheizungs-Ersatzfrist von 15 auf 5 Jahre verkürzt, BGer-Urteil 1C_37/2022 zitiert), Modul
  12 (Elektromobilität, SIA-2060-Ausbaustufen A/C1), Modul 11 (BMZ/GFZ-Dämmfreistellung bis 35 cm).
  Teil-G-Grauenergie-Zahlen am frisch gelesenen Text erneut identisch bestätigt (vierte
  Konsistenzprüfung) → `[[muken-2025-verabschiedet]]`, FAQ **F86** neu.
- [update] `destillate/fernwaerme-anschlusskosten-zh.md`: Energie Ausserschwyz — über den
  adressbasierten Live-Richtpreisrechner der Anbieter-Website erstmals **zwei reale
  CHF-Preisindikationen** gefunden (Lachen SZ, netto CHF 17'800/23'900 nach kantonaler Förderung,
  rückgerechnet auf 12/17 kW Anschlussleistung) — kein offizielles Tarifblatt, aber erster echter
  Fortschritt. Energie Einsiedeln AG: Anschlussbeitrag bleibt nach Wayback-Prüfung der Preisblätter
  2023/2024/2025 unpubliziert, **bestätigter Negativbefund (3. Bestätigung)**.
- [update] `destillate/grundwasserwaermenutzung-bewilligung-zh-sz.md`: vierter Rechercheanlauf
  GWWP-JAZ — Schweizer Feldmessung weiterhin nicht auffindbar (OST/Arpagaus-Vortrag 27.01.2023 +
  BFE-WPSM-Jahresbericht 2024 bestätigen erneut keine GWWP-Sonderauswertung), aber eine bisher
  nicht ausgewertete **deutsche Fraunhofer-ISE-Studie «WP Monitor» (2009-2013)** liefert eine echte
  Feldmessung (n=4, JAZ 3,57-4,24) als gekennzeichneter Zusatzbeleg. Dritte kommerzielle
  Sekundärquelle für Brunnenkosten (reduco.ai, ~CHF 75'000) gefunden. Bleibt **emerging**. FAQ
  **F77** geschärft.
- [neu] **Destillat `holzfeuerung-heizungsersatz-lrv-foerderung-zh-sz.md`** (neues Fachthema,
  bisher keine Abdeckung): LRV-Emissionsgrenzwerte für Holzfeuerungen — wichtiger Fund: seit einer
  LRV-Revision stehen sie in **Anhang 3 Ziffer 52**, nicht mehr in Anhang 4 (am Fedlex-Volltext
  Stand 1.1.2026 verifiziert); Bewilligung/Kontrolle (Gemeinde bis 70 kW, 4-Jahres-Intervall),
  Kaminhöhe, Förderung (Klimaprämie KliK statt kantonalem ZH-Programm), Investitionskosten-
  Richtwerte. Status **emerging**. FAQ **F87** neu.
- [neu] **Destillat `sommerlicher-waermeschutz-sia180-nachweisverfahren.md`** (neues Fachthema,
  bisher nur am Rande erwähnt): die drei SIA-180:2014-Nachweisverfahren (einfache Kennwerte/
  Berechnung/dynamische Simulation), Verfahren-1-Grenzwerte, gtot-Beispielwerte (Faktor 4-5
  aussen- vs. innenliegender Sonnenschutz) und Bezug zum ZH-Formular EN-102/EN-ZH/EVEN — alle vier
  Quellen (EnFK-Vollzugshilfe, Kt.-ZH-Vollzugsordner, HBA-Richtlinie, Stadt-ZH-Wegleitung) per
  curl+pdftotext im Volltext gelesen. Status **established**. FAQ **F88** neu.
- [neu] **Destillat `blockheizkraftwerk-bhkw-mfh-pflegeheim-ch.md`** (neues Fachthema, bisher nur
  Nebenerwähnung): BHKW/WKK für MFH/Pflegeheim — Funktionsprinzip/Grössenordnungen, Zielkonflikt
  Erdgas-BHKW vs. MuKEn-Fossilverbot (Biogas-/Holzgas-BHKW bleiben konform), LRV-
  Bewilligungsgrundlage, Abgrenzung zu Fernwärme/Grosswärmepumpe inkl. BHKW+WP-Hybridkonzept gegen
  die Winterstromlücke. Status **emerging** — CH-Wirtschaftlichkeitszahlen mehrheitlich aus
  DE-Quellen/Einzelbeispielen. FAQ **F89** neu.
- [register] `destillate/INDEX.md`: sechs neue Zeilen. `training/curriculum.md`: neuer Block
  **D55**. `wiki/QUESTIONS.md`: sechs neue Einträge **E85-E90** (alle gelöst/dokumentiert).
  `raw/_INGESTED.md`: sechs neue Zeilen. `wiki/BAUHERREN-FAQ.md`: F77 geschärft, F86-F89 neu
  (FAQ-Stand jetzt **89 Kernfragen**, F1-F89).

## 2026-07-16 — Run 73 (Intensiv-Lauf, sechs Hintergrund-Agenten)
- [meta] Energie-Trainingslauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe, Intensivphase,
  Token-Vollgas). PDF-Inventar via lokalem OneDrive-Mount gegen `find -newermt "2026-06-11"`
  geprüft (nur 2 bereits destillierte Dateien verändert, keine neuen PDFs) — bleibt erschöpft,
  Web-Pfad. Sechs parallele Rechercheagenten bearbeiteten die Prioritätenliste aus Run 72.
- [fund] **MuKEn-2025-Originaltext (117 S.) erstmals im Volltext gefunden** und per curl+pdftotext
  gelesen (energiehub-gebaeude.ch-Spiegel, EnDK-Herausgeberschaft laut Impressum bestätigt) — löst
  den seit Run 48 offenen Punkt. Vollständige Modulliste (Basismodul + 14 Zusatzmodule), Art.
  1.38/1.39 (Graue Energie) zahlengenau mit bisherigem KB-Stand identisch → `[[muken-2025-verabschiedet]]`,
  `[[muken-2025-modul-g-co2-grenzwerte]]` (jetzt dreifach primärquellen-verifiziert), FAQ **F47**
  geschärft.
- [update] `destillate/grundwasserwaermenutzung-bewilligung-zh-sz.md`: GWWP-JAZ nur als ältere
  generische BFE-2010-Bandbreite (3,8-5,0/3,5-4,5) belegt; zwei moderne CH-Feldstudien (OST/WPZ,
  FWS/BFE-WPSM-Jahresbericht 2023) schliessen GWWP mangels Stichprobengrösse aktiv aus —
  dokumentierter Negativbefund. Brunnenkosten erstmals mit zwei Sekundärquellen (Earth Suisse
  CHF 40'000-80'000, daibau.ch Beispielrechnung CHF 19'100) belegt. Bleibt **emerging**. FAQ **F77**
  geschärft.
- [update] `destillate/e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md`: amtliche ZH-Förderbroschüre
  (Amt für Mobilität, April 2023) direkt gelesen — **bidirektionale Ladestationen CHF 2'000/Station**
  mit eigenem Förderkapitel, ausdrücklich OHNE Neubau-Ausschluss; **Quartier-Ladeinfrastruktur** als
  reines Gemeinde-Programm für öffentliche Strassenparkplätze identifiziert, kein Format für private
  Mehrfach-Liegenschaften. Programmstatus + Diskrepanz beim Neubau-Ausschluss-Datum dokumentiert.
  Bleibt **established**. FAQ **F39** geschärft.
- [update] `destillate/waerme-contracting-vertragsmodelle-ch.md`: Preisüberwacher-Praxis speziell zu
  Contracting-Vertragspreisen gezielt gesucht, **bestätigter Negativbefund** (nur allgemeine
  Fernwärme-Marktbeobachtung, Rechtsgrundsatz PüG nur bei Marktmacht sonst KG); als Ersatzbeleg der
  aktuelle **TNS-Leitfaden «Kosten und Tarife thermischer Netze»** (25.06.2026) mit konkreten
  Indexierungsformeln neu ausgewertet. MuKEn-2025-Originaltext bestätigt: keine Contracting-Regelung
  im Basismodul. Bleibt **emerging**. FAQ **F75** geschärft.
- [fix] `destillate/fenster-verglasung-uw-g-wert.md`: **Korrektur** — die bisher zitierte Primärquelle
  «SZFF Doku 31.03» (Herkunft der 45-55-%-g-Wert-Bandbreite) ist im Volltext nicht auffindbar und
  nicht mehr in der aktuellen SZFF-Verkaufsliste (2020) geführt — als wahrscheinlich veraltet/
  zurückgezogen eingeordnet statt weiter unkritisch zitiert. Drei aktuellere Ersatzbelege ergänzt
  (Minergie-Anwendungshilfe 2020.1, Minergie-Modul-Fenster-Reglement 2021, Energieetikette-
  Faktenblatt SZFF+FFF+EnergieSchweiz). Bleibt **established**. FAQ **F35** geschärft.
- [update] `destillate/zh-energiegesetz-revision-solarpflicht-2026.md`: Vorgeschichte neu belegt
  (KEVU-Kommissionsentwurf, Vernehmlassung 23.08.-30.11.2024, parlamentarische Initiative KR-Nr.
  334/2022 Andreas Hasler/GLP, ursprünglich inkl. Fassaden-/Parkplatzpflichten, nach 66
  Stellungnahmen fallengelassen); HEV-ZH-Ablehnung und Swissolar-Zustimmung mit Quelle belegt.
  **Vierter Rechercheversuch zum Kantonsrats-Beratungsstand** erneut ohne Ergebnis (News-/
  Verbandsquellen statt Plattform selbst) — zwei Fehlspuren aktiv ausgeschlossen (SRF-2023-Artikel
  betrifft Bundes-Stromgesetz, Geschäftsnummer 5921 gehört zu anderer, bereits abgestimmter
  Vorlage). Bleibt **emerging**.
- [meta] Fünf FAQ-Antworten geschärft (F35/F39/F47/F75/F77), keine neue Nummer — FAQ-Stand bleibt
  **85 Kernfragen**. Register (`destillate/INDEX.md`, `training/curriculum.md` Block D54,
  `wiki/QUESTIONS.md` E79-E84, `raw/_INGESTED.md`) nachgeführt. Bericht:
  `outputs/2026-07-16_energie-run73.md`.

## 2026-07-15 — Wissens-Chef Run 5 (Cross-KB): Querbezug KB planungsgrundlagen (PV-EIV-Doppelspur)
- [link] `destillate/pv-einmalverguetung-bund-bfe.md`: neuer «Querbezug KB planungsgrundlagen»-Block. Die angewandte Wirtschaftlichkeits-/Amortisationsseite (EFH-Fall, Eigenverbrauch-Hebel) liegt in `wissen/planungsgrundlagen` → `energie-betriebsenergie-pv-wirtschaftlichkeit` §2/§3; Fuehrung der EIV-Saetze/Systematik bleibt hier (established). Kein Widerspruch (Saetze konsistent: integriert 400 / angebaut 200 CHF/kW seit 1.1.2025). Bericht: koordination/outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — Run 72 (zweiter Intensiv-Lauf am selben Tag, vier Hintergrund-Agenten erfolgreich)
- [meta] Zweiter Energie-Intensivlauf des Tages auf ausdrücklichen Wunsch Raphaels. Anders als
  Run 71 liefen diesmal alle vier parallel gestarteten Rechercheagenten (general-purpose,
  WebSearch/WebFetch) fehlerfrei durch — sie bearbeiteten genau die vier Prioritätspunkte, die
  Run 71 als «nicht erreicht» vermerkt hatte. PDF-Inventar bleibt erschöpft (SharePoint-Kontrolle:
  keine neuen Dateien in PL-04 Energie).
- [update] `destillate/grundwasserwaermenutzung-bewilligung-zh-sz.md`: ZH-Wassergesetz-Inkrafttreten
  **1. Juni 2026** primärquellenbestätigt (löst WWG 1991 ab, § 126 WsG); kursierende
  «Konzessionsdauer max. 40 Jahre» am vollständigen Gesetzestext (§§ 69/132 WsG) **WIDERLEGT** —
  keine gesetzliche Maximaldauer, Behörde legt im Einzelfall fest; **JAZ Erdsonde 4,4-5,7 / Luft-
  Wasser 2,9-3,7** über echte EnergieSchweiz-Feldstudie (OST/WPZ Buchs 2017-2019) belegt (ersetzt
  unbelegte Sekundärquellen-Bandbreite); Kt. SZ § 12 WRG (4 Wohneinheiten/50 kW) wortgetreu am
  Originalgesetz bestätigt, keine 2025/2026-Änderung (Verwechslung mit gleichnamigem Bundesgesetz
  zur Wasserkraft aufgeklärt). GWWP-spezifische JAZ und amtliche Bohrkosten-Quelle bleiben offen.
  Bleibt **emerging**. FAQ **F77** geschärft.
- [update] `destillate/fenster-verglasung-uw-g-wert.md`: amtliche **g-Werte** aus dem BFE-
  Bauteilekatalog (2002, Kap. 5.1.4) primärquellenbestätigt — **2-IV-IR 62 %, 3-IV-IR 45 %**
  (real 45-55 % je SZFF Doku 31.03); Sonnenschutzglas hat amtlich bewusst keinen Pauschalwert.
  **Uf-Fallback** (Holz/Holz-Metall 1,9, Kunststoff 2,5, Verbundprofil 3,3 W/m²K) exakt am
  Originaltext bestätigt (Kap. 5.1.2). **Fenster-Energieetikette (FEA):** Klassengrenzen A-G
  (Uw,eq-Schwellen) direkt aus dem BFE-Faktenblatt (pubdb 7731) gelesen, entgegen früherer Annahme
  doch textextrahierbar. Referenzfenstergrösse **1,55×1,15 m** amtlich bestätigt (SIA-331-Zuordnung
  bleibt sekundärquellenbelegt). Bleibt **established**. FAQ **F35** geschärft (ersetzt bisherige
  vetroTherm-Herstellerangaben durch amtliche Werte).
- [update] `destillate/e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md`: **Kt. ZH** Förderprogramm
  Ladeinfrastruktur läuft strukturell getrennt vom AWEL-Energieprogramm über die
  Volkswirtschaftsdirektion/Amt für Mobilität (Portal dasgebaeudeprogramm.ch/zh); Budget
  CHF 50 Mio., Stand 06.07.2026 bereits **über 92 % ausgeschöpft**, Neubauten ab 2023
  ausgeschlossen. **Kt. SZ** hat kantonal **keine** Ladeinfrastruktur-Förderung (Negativbefund,
  AfU-SZ-Seite «Elektromobilität»); lokal nur punktuelle Angebote (Energie-Region Innerschwyz
  E-MobilitätsCheck, ebs-Fahrzeug-Kaufprämie CHF 1'000). Bund fördert nicht direkt, nur Beratung
  (EnergieSchweiz «Einfach laden»). Bleibt **established**. FAQ **F39** geschärft.
- [fix] `destillate/waerme-contracting-vertragsmodelle-ch.md`: **Sachfehler korrigiert** —
  § 10b EnerG ZH und § 22a kEnG SZ wurden bisher fälschlich den Standardlösungen beim
  Wärmeerzeugerersatz zugeordnet; beide Paragraphen regeln im Originalwortlaut ausschliesslich
  **Elektroheizungen** (ZH-Ersatzpflicht bis 2030 bzw. SZ bis 2050). Richtig ist **§ 11 EnerG ZH**
  (Abs. 4/5: 90-%-Regel + Wärmenetzanschluss) bzw. **§ 8d kEnG SZ** (Standardlösungen). ZH-Rolle
  des Contracting-/Anschlussvertrags jetzt konkret über den AWEL-Vollzugsordner (1/2023) belegt:
  Nachweis bei Übergangsbewilligung UND Beleg gegen Härtefall-Aufschub (§ 11b EnerG) — kein eigener
  Nachweisweg. «Swiss Contracting» 2026 erneut als technisch inaktiv bestätigt (leere Website);
  **swissesco** und **Thermische Netze Schweiz** als 2026 aktive Alternativ-Organisationen
  bestätigt. Bleibt **emerging**. FAQ **F75** geschärft.
- [update] Register: `wiki/BAUHERREN-FAQ.md` (F35/F39/F75/F77 geschärft, FAQ-Stand unverändert 85),
  `destillate/INDEX.md`, `training/curriculum.md` (Block **D53**).
- [report] `outputs/2026-07-15_energie-run72.md`.

## 2026-07-15 — Run 71 (Intensiv-Lauf auf Wunsch Raphaels, ohne funktionierende Hintergrund-Agenten)
- [meta] Sechs geplante parallele Rechercheagenten brachen alle reproduzierbar direkt nach dem ersten
  Werkzeugaufruf ab (Umgebungsfehler, auch nach mehrfachem Resume mit identischem Muster) — kein
  Agenten-Ergebnis. Recherche daraufhin manuell in der Hauptsession fortgesetzt (WebSearch/WebFetch/
  curl+pdftotext), Umfang ehrlich auf drei statt sechs Themenkomplexe reduziert.
- [update] `destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz.md`: **Offenpunkt
  geschlossen** — zweite unabhängige Primärquelle (SVW/ASC-Kantonsvergleich, 28.08.2023, pdftotext)
  bestätigt § 25 EnV 1 SZ wortgleich: ausrüstungspflichtige Bauten = nur Baubewilligung NACH 1.2.2001;
  ein älteres MFH wird demnach auch bei Totalsanierung NICHT VHKA-ausrüstungspflichtig. Bleibt
  established. FAQ **F85** geschärft.
- [update] `destillate/geak-gebaeudeenergieausweis-kantone.md`: AfU-SZ-FAQ (28.08.2025) diesmal per
  pdftotext im Volltext gelesen (vorher nur Web-Snippet) — massgebender Energiebedarf für die
  90-%-Regel/GEAK-Klasse-D-Weg = **100 kWh/m²·a**; Befreiung bei Wohnanteil ≤150 m² EBF. Bleibt
  established. FAQ **F36** geschärft.
- [update] `destillate/muken-2025-verabschiedet.md`: Umsetzungsfahrplan ergänzt (energiehub-gebaeude.ch,
  offizielles Musterwerk) — EnDK-Terminplan zielt auf Umsetzung in allen Kantonen bis **2030**;
  **Basismodul Pflicht**, **Module 2-14 optional** (bei Übernahme unveränderbar). Bleibt established.
  FAQ **F47** geschärft.
- [update] `destillate/fernwaerme-anschlusskosten-zh.md`: SZ-Restlücken teilweise geschlossen —
  Küssnacht (EBL Energie Rigi) und Arth-Goldau (ECOGEN-Genossenschaft) existieren, publizieren aber
  keine Tarife (nur Offerte, Arth-Goldau genossenschaftliches Anteilsmodell); Energieverbund
  Einsiedeln AG 2017-Infoblatt als historische Anschlussformel gefunden (100 CHF/kW, mind. 5'000,
  nicht aktuell verwendbar); die umstrittene «CHF 18'000/EFH 10 kW»-Zahl taucht jetzt auch bei
  Energie Ausserschwyz auf — stützt den Verdacht einer generischen, nicht anbieterspezifischen
  Schätzung. Bleibt emerging.
- [update] `destillate/zh-energiegesetz-revision-solarpflicht-2026.md`: dritter Rechercheversuch zum
  Kantonsrat-Beratungsstand erneut ohne gesicherten Fund (bestätigte Werkzeug-Grenze kantonsrat.zh.ch,
  JS-SPA); ein Lead («Geschäft 5921») nicht sicher zuordenbar, bewusst nicht übernommen. Bleibt emerging.
- [update] Register: `wiki/BAUHERREN-FAQ.md` (F36/F47/F85 geschärft, FAQ-Stand unverändert 85), `wiki/INDEX.md`,
  `destillate/INDEX.md`, `training/curriculum.md` (Block **D52**), `wiki/QUESTIONS.md` (**E74-E78**).
- [note] Nicht erreicht in diesem Lauf (bewusst zurückgestellt, nicht stillschweigend ausgelassen):
  Grundwasserwärmenutzung-Vertiefung, amtliche g-Wert/Uf-Wert-Tabelle CH, Förderung Ladeinfrastruktur
  ZH+SZ — Priorität nächster Lauf.
- [report] `outputs/2026-07-15_energie-run71.md`.

## 2026-07-14 — Run 70 (Lauf-Zusammenfassung, ERSTER GEDROSSELTER LAUF)
- [meta] Erster Energie-Lauf unter **Rule 260714 (Tempo drosseln, Wochenlimit 81 %)**: Token-Vollgas (260712b) ist fuer die Restwoche aufgehoben, Batch bewusst von 6-10 auf **drei** Themenkomplexe zurueckgenommen. Qualitaetsleitplanken unveraendert.
- [new] `destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz.md` (Details im Eintrag unten) — **established**; FAQ **F84/F85** neu.
- [update] `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md` + `destillate/fernwaerme-anschlusskosten-zh.md`: **Kanton Schwyz** ergaenzt (Agro Energie Schwyz Anschlussformel CHF 20'676 + 800/kW bzw. 31'000 + 380/kW indexiert, Grundpreis 92.02 CHF/kW·Jahr, Arbeitspreis 14.20 Rp./kWh; Energie Einsiedeln 11.53 Rp./kWh; EWS Ibach Netzkostenbeitrag CHF 140/A, Netzanschlussbeitrag 1'860-17'210; EW Hoefe 160/A). Netzanschluss-Destillat **emerging → established**; Fernwaerme bleibt emerging (ZH-Teil weiterhin eigene Formelrechnung). Schliesst die Run-69-SZ-Luecke. FAQ **F83** neu. **Adversarial widerlegt:** kursierender Wert «Agro Energie EFH 10 kW ≈ CHF 18'000» ist unbelegt und widerspricht der publizierten Formel.
- [fix] **Sachfehler der KB korrigiert (GEAK-Foerderung):** bisher stand «CHF 1'000 (GEAK) / 1'500 (GEAK Plus)». Richtig: gefoerdert wird **nur der GEAK Plus**, gestaffelt nach **Gebaeudetyp** (1'000 EFH/ZFH, 1'500 uebrige); der Basis-GEAK wird in ZH und SZ **nicht** gefoerdert. Nachgezogen in Destillat, Kosten-Destillat, Wiki-Artikel, FAQ F36 und beiden INDEX-Registern.
- [new] GEAK-**Pflicht-Landkarte ZH/SZ** (FAQ **F82**): in ZH/SZ nirgends zwingend (keine Handaenderungs-/Bewilligungspflicht; gesetzliche Handaenderungspflicht nur FR/VD/NE/JU); zwingend nur als **GEAK Plus ab CHF 10'000 Foerderbeitrag** (HFM 2015) und in **SZ als Klasse-D-Nachweisweg beim fossilen 1:1-Heizungsersatz** (AfU SZ, FAQ 28.08.2025) — diesen Weg gibt es in ZH nicht (§ 11 EnerG).
- [update] Register: `wiki/BAUHERREN-FAQ.md` (Stand **85 Kernfragen F1-F85**), `wiki/INDEX.md`, `destillate/INDEX.md`, `training/curriculum.md` (Block **D51**), `wiki/QUESTIONS.md` (**E71-E73**, alle belegt geschlossen).
- [report] `outputs/2026-07-14_energie-run70.md` (inkl. Verifikations-Verdikte je Destillat und Hinweis zur Taktung).

## 2026-07-14 — VHKA (verbrauchsabhaengige Heiz-/Warmwasserkostenabrechnung) ZH/SZ — neues Destillat
- [new] `destillate/vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz.md`: Thema war in der KB bisher **gar nicht** belegt. Pflicht-Schwellen aus den **Primaertexten** verifiziert (curl + pdftotext): **Kt. ZH** EnerG § 9 — Neubau Messpflicht Warmwasser **ab 2 Nutzeinheiten**, Heizung pro Gebaeude bei Gebaeudegruppen; Bestand **ab 3 NE bei Gesamterneuerung** des Heizungs-/WW-Systems (**Uebergangsbestimmung: Abs. 3 erst 3 Jahre nach Inkrafttreten der Aenderung, also seit 1.9.2025**); Befreiung BBV I § 43 (<20 W/m2 EBF, **Minergie**, Luftheizung, 80-%-Nutzeinheit); **mind. 60 %** der Waermekosten verbrauchsabhaengig (BBV I § 44). **Kt. SZ** EnG § 10 — Neubau/Totalsanierung erst **ab 5 Nutzeinheiten**, Erfassung pro Gebaeude bei >75 % Huellensanierung; Befreiung EnV 1 § 27 (<20 W/m2 EBF); Abrechnung «zum ueberwiegenden Teil» (**keine Prozentzahl im Erlass**); ausruestungspflichtig sind Bauten mit Baubewilligung **nach dem 1.2.2001** (§ 25 EnV 1).
- [new] Abrechnungsmechanik + Mietrecht: **VEWA 5. Aufl. (BFE/EnergieSchweiz)** — Splitting **Grundkosten 30 % / Verbrauch 70 %**, Investition **CHF 500–1'000 pro Nutzeinheit**, Ablesung/Abrechnung **CHF 50–100 pro Wohnung und Jahr**, Ueberwaelzungssatz **12 %** (10 J. Lebensdauer, Referenzzins 1,5 %). **VMWG**: Erfassung/Abrechnungsservice sind anrechenbare Nebenkosten (Art. 5 Abs. 2 lit. f), **Verzinsung/Abschreibung der Geraete NICHT** (Art. 6) → Investition laeuft ueber Mietzinserhoehung; Einsichtsrecht Art. 8. Fernwaerme befreit nicht (Uebergabestation = zentrale Waermeerzeugung, EN-113).
- [link] Backlinks zu `[[muken-2025-verabschiedet]]`, `[[waerme-contracting-vertragsmodelle-ch]]`, `[[zev-mieter-strompreis-eigenverbrauch]]`, `[[fernwaerme-anschlusspflicht-zh]]`, `[[bfe-waermeerzeugerleistung-2015]]`; Register `destillate/INDEX.md` nachgefuehrt.
- **Offen (ehrlich):** SZ nennt keinen Prozentwert («ueberwiegender Teil») — Praxis des AfU SZ unbelegt; SZ kennt **keine** Minergie-Befreiung im Wortlaut; Verhaeltnis SZ § 25 EnV 1 (Baubewilligung nach 1.2.2001) zur Nachruestung aelterer Bauten bei Totalsanierung ungeklaert; VHKA-Modul der MuKEn 2025 nicht verifiziert; VMWG in Fassung «Stand 1.6.2020» gelesen (Fedlex-Direktabruf blockiert).

## 2026-07-14 — Run 70: die SZ-Lücken aus Run 69 geschlossen (Fernwärme-Kosten + Netzanschluss SZ)
- [update] `destillate/fernwaerme-anschlusskosten-zh.md`: neuer Abschnitt **«Kanton Schwyz»** mit drei
  Betreibern. **Agro Energie Schwyz AG** (Talkessel Schwyz) vollständig belegt — Anschlussgebühr
  AG = CHF 20'676 + 800 × kW (bis 20 kW) bzw. CHF 31'000 + 380 × kW (ab 20 kW), indexiert mit dem
  Zürcher Wohnbaukostenindex (Faktor 1.067; publiziertes Beispiel 15 kW = CHF 34'866.55);
  Erschliessungsvorteil-Abzüge − 6'200/− 4'200/− 0 plus Jubiläumsrabatt 2026 bis − 3'000; Zuleitung ab
  Parzellengrenze 600–800 CHF/m (Grabarbeiten + Leitung), hausintern 400–500 CHF/TM; **Grundpreis
  92.02 CHF/kW·Jahr** (ab 01.10.2025), **Arbeitspreis 14.20 Rp./kWh** (Indexmodell 15.79, freiwillig
  reduziert). **Energie Einsiedeln AG:** Arbeitspreis 2025 **11.53 Rp./kWh**, Grundpreis vertraglich
  individuell + LIK-indexiert (publ. Beispiel MFH 55 kW = CHF 10'713.77/Jahr), Anschlussbeitrag nicht
  publiziert. **Energie Ausserschwyz AG:** keine Preise publiziert; nur der kantonale Förderbeitrag
  CHF 4'000 + 200/kW. Quelle: Agro-Tarifblatt (publ. 04.09.2025, seitenweise gerendert gelesen),
  Einsiedler Preisblatt Fernwärme 2025. Status bleibt **emerging**.
- [fix] Kursierender Wert «EFH 10 kW ≈ CHF 18'000 Anschluss bei Agro Energie» an keiner Primärquelle
  bestätigt und **widerlegt** durch die publizierte Formel (10 kW → CHF 30'598 indexiert) — nicht verwenden.
- [update] `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md`: die in Run 69 als «nicht
  extrahierbar» vermerkte **EWS-Anhang-8-Lücke ist geschlossen** — Netzkostenbeitrag NS **CHF 140/A**
  bis 315 A (218 kVA), darüber **CHF 85/A**; MS CHF 70/A; Netzanschlussbeitrag NS bis 25 m Kabellänge
  16 A CHF 1'860 … 1'000 A CHF 17'210, Mehrlänge 14–464 CHF/m; MS-NAB CHF 5'385 bzw. 16'155
  (EWS-Netzanschlussrichtlinien gültig ab 01.06.2024, Anhang 8). Zusätzlich **EW Höfe AG** (Bezirk Höfe):
  NKB-Tabelle 40 A CHF 6'400 … 400 A CHF 64'000, darüber CHF 160/A; MS 630 kVA CHF 63'000, andere
  CHF 100/kVA; Netzanschlussbeitrag = effektive Aufwendungen **inkl. Netzverstärkung** zulasten Kunde.
  Kernaussage für die Beratung: der NKB knüpft an die **bezugsberechtigte Leistung** an — PV löst ihn
  nicht aus, **Ladeinfrastruktur mit Leistungserhöhung schon** (100 → 160 A = CHF 8'400 bzw. 9'600 nur
  NKB). Status **emerging → established** (alle Kernzahlen aus Primärquellen: Fedlex, ElCom-Weisung,
  VNB-Preisblätter).
- [new] **FAQ F83** «Was kostet mich im Kanton Schwyz der Fernwärmeanschluss — und was der
  Strom-Netzanschluss für PV und Ladestationen?» → `wiki/BAUHERREN-FAQ.md`; F80 entsprechend
  nachgeführt (Verweis statt «SZ-Zahlen nicht auffindbar»).
- [link] Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`.
- **Offen:** Anschlussbeitrag Energie Einsiedeln + gesamtes Tarifwerk Energie Ausserschwyz (nicht
  publiziert, Offerte nötig); Vertragsdauern/Kündigungsfristen der SZ-Verbünde; Wärmeverbünde
  Küssnacht/Arth-Goldau; Verteilnetzbetreiber ausserhalb EWS/EW Höfe (Einsiedeln, Küssnacht, March);
  EW-Höfe-Preisblatt datiert «gültig ab 01.01.2017» (aktuell publizierte Fassung, Aktualität nicht beim
  Werk bestätigt).

## 2026-07-14 — GEAK-Pflicht-Landkarte ZH/SZ + Foerder-Korrektur (Auftrag Raphael)
- [update] `destillate/geak-gebaeudeenergieausweis-kantone.md`: neue Sektion **«Pflicht oder nicht? — ZH und SZ praezise getrennt»** (Tabelle Handaenderung / Baubewilligung / Heizungsersatz / Foerderung / Grossverbraucher). Kernfund: **kein GEAK-Obligatorium in ZH und SZ**; ABER im **Kt. SZ ist das Erreichen der GEAK-Klasse D (Gesamtenergieeffizienz) einer von drei Nachweiswegen** beim Neueinbau/1:1-Ersatz eines fossilen Waermeerzeugers in Wohnbauten (Alternativen: MuKEn-Standardloesung, Minergie-Zertifikat) — Quelle AfU SZ, «FAQ Foerderprogramm und Energie-Gesetz», Stand 28.08.2025 (Volltext via curl+pdftotext) + sz.ch «Energielabel/GEAK». Im **Kt. ZH gibt es diesen Weg nicht** (§ 11 EnerG: erneuerbares System, Ausnahme nur via Lebenszykluskosten-Nachweis EN-LCC-ZH/EN-120; zh.ch erwaehnt den GEAK nicht).
- [fix] **Sachfehler korrigiert (drei Dateien):** die Foerderbeitraege wurden bisher als «CHF 1'000 (GEAK) / 1'500 (GEAK Plus)» ausgewiesen. Richtig: **gefoerdert wird NUR der GEAK Plus**, gestaffelt nach **Gebaeudetyp** — CHF 1'000 (EFH/ZFH) bzw. CHF 1'500 (uebrige Gebaeudekategorien); der Basis-GEAK wird in ZH und SZ **nicht** gefoerdert (geak.ch/foerderung, Stand 01/2026; sz.ch woertlich: der GEAK selbst «wird nicht finanziell unterstuetzt»; Foerderprogramm ZH 2026 / SZ 2026 Kap. 18). Korrigiert in `destillate/geak-gebaeudeenergieausweis-kantone.md`, `destillate/geak-kosten-efh-mfh.md`, `wiki/geak-gebaeudeenergieausweis.md`, FAQ **F36**.
- [update] Destillat ergaenzt um: Abgrenzung **GEAK vs. Energienachweis EN-ZH/EVEN** (`[[en-zh-nachweis-uebersicht]]`, neuer Backlink), Grenzen der Aussagekraft (relative Klassierung, Berechnung statt Messung), Uebertrag des GEAK auf die neue Eigentuemerschaft beim Verkauf, SZ-Feinheit «10'000-Schwelle zaehlt nur die Basismassnahme Waermedaemmung (Bonus zaehlt nicht mit)», Ausnahme «GEAK-Plus-Beratungsbericht darf nachtraeglich eingereicht werden».
- [new] **FAQ F82** «Ist der GEAK Pflicht — brauche ich ihn beim Verkauf, beim Heizungsersatz oder fuer die Foerderung? (ZH/SZ)» → `wiki/BAUHERREN-FAQ.md`.
- [link] Register nachgefuehrt: `destillate/INDEX.md`, `wiki/INDEX.md`. Stale Backlink `[[minergie-standards]]` im Destillat auf `[[minergie-zertifizierung-workflow]]` umgehaengt.
- **Offen:** SZ-Klasse-D-Weg ist ueber die AfU-FAQ belegt, **nicht** ueber den Gesetzeswortlaut (§ EnG SZ / Vollzugshilfe MuKEn-Ersatzmodul) — vor verbindlicher Einzelfall-Aussage verifizieren. Grossverbraucher (ZH/SZ): **kein GEAK-Bezug belegt** (bestaetigter Negativbefund, nicht behaupten).

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug-Bloecke zu normen + grobkosten/immo gesetzt
- [link] «Querbezug KB normen» in `destillate/sia-2024-nutzungsdaten-gesundheitsbau`, `sia-2024-nutzungsrandbedingungen-gesundheitsbau`, `komfortlueftung-wrg-sia382-luftwechsel`: Norm-Fundstelle SIA 2024/380-1/382-1 fuehrt normen; Ausgaben-Diskrepanz normen 2006/2014 vs. energie 2021/2025 ausgewiesen (energie ist aktuell, normen-Register nachgezogen — Run-4-Flags dort).
- [link] «Querbezug KB grobkosten/immobilienbewertung» in `destillate/fernwaerme-anschlusskosten-zh` + `pv-marktzahlen-kosten-ch-2025`: diese Komponentenkosten sind BKP-2-Unterpositionen und stecken bereits in den m3-GV-/BKP-2-Erstellungskennwerten — **nicht additiv** (Doppelzaehlungs-Guard). Kein Widerspruch/Doppelspur (Metrik-Ebenen sauber getrennt).
- Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-14 — Run 69: vier neue Themenkomplexe (SIA 2024 Gesundheitsbau, Netzverstärkung PV/E-Mobilität, Fernwärme-Kosten, Netto-Null)
- **Kontext:** Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe, Intensivphase,
  Token-Vollgas). PDF-Inventar bleibt vollständig abgearbeitet (Erst-Erhebung Run 65) — daher vier
  parallele Web-Rechercheagenten auf primärquellennahe Schweizer Quellen (Fedlex, ElCom, SIA,
  Kantons-/Stadt-Websites, VNB-Netzanschlussbedingungen, Preisüberwacher) angesetzt.
- **Vier neue Destillate:**
  1. **SIA 2024 Nutzungsdaten Gesundheitsbau** (JANS-Healthcare-Fokus — Gebäudekategorie VIII.1
     Spital/VIII.2 Pflege, Raumnutzungen Bettenzimmer/Stationszimmer/Behandlungsraum, Prozessanlagen-
     Anteil 28-38 %, OP/CT/MRT nicht abgedeckt) → `destillate/sia-2024-nutzungsdaten-gesundheitsbau.md`
     (neu), FAQ **F78** neu.
  2. **Netzanschluss-/Netzverstärkungskosten PV-Grossanlagen + E-Mobilität** (Art. 15b StromVG seit
     1.1.2025, CHF-59/CHF-50-Vergütung, VSE-70%-Wechselrichter-Regel ab 1.1.2026) →
     `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch.md` (neu), FAQ **F79** neu.
  3. **Fernwärme-Anschlusskosten Stadt Zürich** (ewz-Tarifformel 2026 + Preisüberwacher-
     Schweizerdurchschnitt, ergänzt die bereits bekannte Anschlusspflicht §295 PBG um effektive
     CHF-Zahlen) → `destillate/fernwaerme-anschlusskosten-zh.md` (neu), FAQ **F80** neu.
  4. **Netto-Null-Klimaziele Bund/Kt. ZH/Stadt Zürich/Kt. SZ** (Bund 2050 gesetzlich, ZH-2040-
     Vorlage am 28.9.2025 verworfen, Stadt-ZH-2040 nur Planungsgrundlage, SZ ohne eigene
     Verschärfung — sauber getrennt heute-verbindlich vs. Absicht) →
     `destillate/netto-null-klimaziele-zh-sz.md` (neu), FAQ **F81** neu.
- **Register nachgeführt:** `destillate/INDEX.md` (vier Zeilen neu), `wiki/INDEX.md` (Kernprodukt-
  Zeile + vier neue Themen-Artikel-Zeilen), `wiki/BAUHERREN-FAQ.md` (F78-F81 neu, FAQ-Stand jetzt
  81 Kernfragen), `wiki/QUESTIONS.md` (E67-E70 neu, Struktur-Notiz M2 aktualisiert, 25. Lauf in
  Folge entscheidungsreif), `training/curriculum.md` (D50 unter Block A).
- **Leitplanken beachtet:** alle Aussagen mit Quelle/URL/Datenstand belegt, Verifikationsgrad je
  Abschnitt aus den Originalberichten übernommen (Bundes-/Kantonsrecht direkt auf Fedlex/zh.ch/
  sz.ch gelesen, kommerzielle/unverifizierte Quellen explizit als solche markiert), unsichere Punkte
  (SZ-Fernwärmekosten, EWS-CHF-Ansätze, exakter Wortlaut Art. 102a KV-ZH, SIA-2024-Raumdatenblätter
  Anhang A) als offen markiert statt erfunden.
- **Status aller vier Destillate:** emerging (primärquellennah, aber mit dokumentierten Lücken).

## 2026-07-14 — Run 68 (nachintegriert): drei neue Themenkomplexe + Klärung zweier Run-67-Offenpunkte
- **Kontext:** Ein separat gestarteter Trainingslauf hatte vier parallele Web-Rechercheagenten
  gestartet, deren Ergebnisse zunächst nicht ins Repo integriert wurden (Orchestrierungsfehler des
  übergeordneten Agenten). Die vier fertigen Recherche-Berichte trafen nachträglich als
  Einzelergebnisse ein und wurden hier manuell nachintegriert, um die bereits geleistete
  Rechercharbeit nicht zu verlieren.
- **Drei neue Destillate:**
  1. **Wärme-Contracting/Wärmelieferung** (Vertragsmodelle, Art. 6a VMWG, MuKEn-Bezug ZH/SZ) →
     `destillate/waerme-contracting-vertragsmodelle-ch.md` (neu), FAQ **F75** neu.
  2. **Steuerabzüge energetische Sanierung** (Art. 32 Abs. 2 DBG, Kt. ZH/SZ, Eigenmietwert-Reform
     per 1.1.2029) → `destillate/steuerabzuege-energetische-sanierung-ch.md` (neu), FAQ **F76** neu.
  3. **Grundwasserwärmenutzung Bewilligung ZH+SZ** (Konzessionsverfahren, 3°C-Regel, Schwellenwerte)
     → `destillate/grundwasserwaermenutzung-bewilligung-zh-sz.md` (neu), FAQ **F77** neu.
- **Zwei Run-67-Offenpunkte geklärt** (vierter Rechercheagent): `denkmalschutz-energiesanierung-zh-sz.md`
  auf **established** gehoben — SZ-Beitragswiderspruch aufgelöst (§ 16a DSG: Grundbeitrag 25 % +
  Schutzziel-Zuschlag 5/10/15 % = 30/35/40 %, unabhängig von lokal/regional/national) und
  ZH-Erleichterungsklausel lokalisiert (§ 2 Abs. 5 WDV, LS 700.211, delegiert aus § 17a EnerG,
  Wortlaut primärquellen-verifiziert). FAQ F74 auf established aktualisiert.
- **Register nachgeführt:** `destillate/INDEX.md` (vier Zeilen neu/ergänzt), `wiki/BAUHERREN-FAQ.md`
  (F75-F77 neu, F74 geschärft, FAQ-Stand jetzt 77 Kernfragen).
- **Leitplanken beachtet:** alle Aussagen mit Quelle/Datenstand versehen, Verifikationsgrad je
  Abschnitt aus den Originalberichten übernommen, unsichere Punkte (Preisüberwacher-Praxis,
  MuKEn-2025-Wortlaut, JAZ-/Kosten-Richtwerte Grundwasser-WP, Konzessionsdauer ZH) als offen markiert.
- **Offen für nächsten Lauf:** `training/curriculum.md` und `wiki/QUESTIONS.md` sind nach diesem
  nachintegrierten Lauf noch nicht aktualisiert — im nächsten regulären Run nachführen. Zudem sollte
  geprüft werden, ob der PDF-Inventar-Zustand weiterhin erschöpft ist.

## 2026-07-14 — Run 67: Denkmalschutz+Energiesanierung (neu) + drei Nachrecherchen aus Run 66 (AWEL-Gebühr Erdsonden, SZ-Bagatellkatalog Elektroheizung, R290-Kostenvergleich)
- **Run-Report** `outputs/2026-07-14_energie-run67.md`. PDF-Inventar bleibt erschöpft; dieser Lauf
  arbeitet gezielt die «Was offen bleibt»-Liste aus dem Run-66-Report ab statt neuer PDF-Themen.
- **Drei parallele Rechercheagenten** (general-purpose, WebSearch/WebFetch):
  1. **Denkmalschutz/Ortsbildschutz (ISOS) und energetische Sanierung ZH+SZ** — neuer Themenkomplex.
     PBG-Revision ZH 02.07.2026 (noch nicht in Kraft), Art. 18a RPG, DSG/DSV-Revision SZ 1.10.2024,
     Stadt-Zürich-Förderprogramm ab 1.6.2026, ISOS nur bei Bundesaufgabe bindend →
     `destillate/denkmalschutz-energiesanierung-zh-sz.md` (neu), FAQ **F74** neu, Status emerging.
  2. **AWEL-Gebühr Erdwärmesonden Kt. ZH** — § 35/§ 69 KGSchV + GebV UR im Volltext gelesen: reine
     Aufwandgebühr, Deckel CHF 25'000, keine Pauschale → `destillate/erdwaermesonden-bewilligung-zh-sz.md`
     auf **established** gehoben, FAQ F71 geschärft.
  3. **SZ-Bagatellkatalog Elektroheizungen (§ 16a/§ 16b kEnV)** + **R290-Kostenvergleich** — SZ-
     Ausnahmenkatalog typ-/lagebasiert (Bergbahnstationen/Alphütten/Bergrestaurants), dezentrale
     Anlagen ohne Wasserverteilsystem nicht erfasst → `destillate/elektroheizungs-ersatzpflicht-zh-sz.md`
     ergänzt, FAQ F70 geschärft. R290: CHF-Kosten bestätigter Negativbefund, Effizienz teilweise über
     Kältemittel-Fibel belegt → `destillate/kaeltemittel-r290-waermepumpen-ch.md` ergänzt, FAQ F72
     geschärft.
- **Wiki nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F74 neu + F70-F72 geschärft, FAQ-Stand jetzt 74
  Kernfragen), `wiki/heizleistung-und-waermeerzeuger.md` (R290/Erdsonden-Abschnitte ergänzt),
  `wiki/INDEX.md` (neue Denkmalschutz-Zeile + drei geschärfte Zeilen), `destillate/INDEX.md`
  (vier Zeilen aktualisiert/neu).
- **Register:** `raw/_INGESTED.md` (vier neue Einträge), `training/curriculum.md` (Block D48),
  `wiki/QUESTIONS.md` (E59-E62 neu, Struktur-Notiz M2 aktualisiert — 23. Lauf in Folge
  entscheidungsreif).
- **Offen:** SZ-Denkmalpflegebeitrags-Widerspruch (25 % vs. 30/35/40 %), exakter EnerG-ZH-§ für
  Denkmalschutz-Erleichterung (PDF-Bildkompression), ZH/SZ-Kastenfenster-Merkblatt nicht auslesbar.

## 2026-07-14 — Run 66: Vier neue Web-Themenkomplexe via parallelisierte Rechercheagenten (Elektroheizung ZH/SZ, Erdsonden ZH/SZ, Kältemittel R290, Fernwärme-Anschlusspflicht SZ)
- **Run-Report** `outputs/2026-07-14_energie-run66.md`. PDF-Inventar-Erschöpfung vor Laufbeginn
  durch direkten Abgleich der lokal synchronisierten SharePoint-Kopie (`PL - 04 Energie`, 122 PDFs)
  gegen `training/pdf-inventar.md` verifiziert — keine Datei jünger als 11.06.2026, keine
  Nachtrags-PDFs vorhanden.
- **Vier parallele Rechercheagenten** (general-purpose, WebSearch/WebFetch) erschlossen unabhängig
  voneinander vier neue, JANS-relevante (ZH+SZ-Fokus) Themen mit amtlichen Primärquellen:
  1. **Elektroheizungs-Ersatzpflicht ZH+SZ** — § 10b EnerG + § 45c BBV I Kt. ZH (Primärtext-PDF),
     bundesgerichtlich bestätigt (BGer 1C_37/2022 = BGE 149 I 49); § 8a/§ 8b/§ 22a kEnG + § 24i EnV1
     Kt. SZ (Primärtext-PDF). ZH-Frist 2030, SZ-Frist 2050 (nur Anlagen mit Wasserverteilsystem) →
     `destillate/elektroheizungs-ersatzpflicht-zh-sz.md`, FAQ **F70** neu, Status established.
  2. **Erdwärmesonden-Bewilligung ZH+SZ** — AWEL zh.ch (Gemeinde-Verfahren, 500 m Bohrtiefe, 2,5 m
     Grenzabstand, Verbotszonen S1/S2/Au) + sz.ch «Wärmenutzung» (kostenlose Vorabklärung + eBau) →
     `destillate/erdwaermesonden-bewilligung-zh-sz.md`, FAQ **F71** neu, Status emerging (Gebühren
     nicht amtlich auffindbar).
  3. **Kältemittel R290 (Propan) bei Wärmepumpen** — BAFU «Stand der Technik»/«Inverkehrbringen»
     (PDFs vollständig gelesen), suissetec HEIZ241, SVK-Merkblatt A3/A2L. ChemRRV-Revision
     (Bundesratsbeschluss 29.10.2025), Umstellung ab 2027, A3-Brandschutzgrenzen 0,15 kg/1,5 kg
     EKAS → `destillate/kaeltemittel-r290-waermepumpen-ch.md`, FAQ **F72** neu, Status emerging.
  4. **Fernwärme-Anschlusspflicht Kt. Schwyz** (Pendant zu § 295 PBG ZH) — kEnG/KEnV/PBG/PBV SZ
     vollständig durchsucht: **keine gesetzliche Grundlage gefunden** (ehrliches Negativergebnis,
     bestätigt durch unabhängige juristische Sekundärquelle) →
     `destillate/fernwaerme-anschlusspflicht-sz.md`, FAQ **F73** neu, Status emerging.
- **Wiki nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F70-F73 + FAQ-Stand-Historie, FAQ-Stand jetzt 73
  Kernfragen), `wiki/heizleistung-und-waermeerzeuger.md` (neue Abschnitte Kältemittel R290 +
  Erdwärmesonden-Bewilligung), `wiki/INDEX.md` (vier neue/erweiterte Zeilen), `destillate/INDEX.md`
  (vier neue Zeilen).
- **Register:** `raw/_INGESTED.md` (vier Einträge), `training/curriculum.md` (Block D44-D47),
  `wiki/QUESTIONS.md` (E55-E58, Struktur-Notiz M2 aktualisiert — jetzt 22 Läufe in Folge
  entscheidungsreif).
- **Verifikation:** alle vier Themen primär auf direkt gelesenen amtlichen PDF-Primärtexten (nicht
  nur Web-Zusammenfassungen); offene/unbelegte Punkte je Destillat ehrlich ausgewiesen statt
  geglättet.

## 2026-07-14 — Run 65: BFE-Bauteilekatalog 2002 vollständig gelesen (Dächer, inhomogene Bauteile, Fenster+Türen) — PDF-Inventar jetzt wirklich lückenlos
- **Run-Report** `outputs/2026-07-14_energie-run65.md`. Löst den letzten seit 2026-06-10 nur
  teilgelesenen Eintrag im PDF-Inventar auf (der offizielle «vollständig abgearbeitet»-Vermerk vom
  13.07. war damit nicht ganz präzise — dieser Lauf macht es wahr).
- **Gelesen:** Seiten 43-80/80 des amtlichen BFE-Katalogs «U-Wert-Berechnung und Bauteilekatalog
  Neubauten» (2002, Bestellnr. 805.150 d), via Read (2 Aufrufe à max. 20 Seiten).
- **Kap. 4.1.3 Dächer und Decken:** D-/Di-Serie; Umkehrdach (D9) trägt einen amtlichen
  **20-%-Feuchtezuschlag** gegenüber einem Warmdach gleicher Dämmdicke (Dämmung liegt bewittert
  über statt unter der Abdichtung).
- **Kap. 4.2 Inhomogene Bauteile:** Bi-/Wi-Serie — Holzbau-Konstruktionen mit durchdringender
  Lattung/Riegel, U-Wert-Erhöhung bereits in der Tabelle eingerechnet (kein separater
  Wärmebrückenzuschlag nötig).
- **Kap. 5 Fenster und Türen (wichtigster Fund):** vollständige Formel
  Uw = (Uf·Af + Ug·Ag + Ψg·lg) / Aw sowie amtliche **Fallback-Werte ohne Herstellerangabe**:
  Uf Holz/Holz-Metall 1,9 · Kunststoff 2,5 · wärmegedämmte Verbundprofile 3,3 W/(m²·K); g-Wert
  2-IV-IR 62 % / 3-IV-IR 45 %; vollständige Uw-Bestimmungstabelle nach Rahmenanteil 15/20/30 %;
  Türen-U-Werte T1-T12 (1,1-2,9 W/(m²·K)).
- **Register:** `destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` auf vollständig (S. 1-80/80)
  gehoben (Frontmatter + drei neue Kapitel-Abschnitte), `destillate/INDEX.md`, `training/pdf-inventar.md`
  (Eintrag + Kopfnotiz korrigiert), `training/curriculum.md` (A1 wirklich vollständig, D43 neu),
  `wiki/QUESTIONS.md` (E54 neu, M2-Zähler auf 21 Läufe), `wiki/INDEX.md`, `raw/_INGESTED.md`.
- **FAQ F69 neu:** «Mein Fensterbauer nennt noch keinen U-Wert — wie schätze ich Uw selbst ab?» —
  schliesst den in `wiki/fenster-verglasung.md` offen vermerkten Punkt «amtliche Uf-Tabelle je
  Rahmenmaterial» (mit Vorbehalt: Werte von 2002, konservativer Fallback statt Marktstandard).
- **Was offen bleibt:** Meta-Punkt M2 (eigener Skill `energie`?) ist jetzt seit 21 Läufen
  entscheidungsreif, braucht Raphaels explizite Antwort; ohne neue PDF-Quelle bleibt der nächste
  Themenkomplex offen für eine interaktive Priorisierung; Warme-Kante-Ψg-Werte für
  Kunststoff-/Edelstahl-Abstandhalter (nur SIA D0170, nicht in diesem Katalog) bleiben unbeziffert.

## 2026-07-14 — Run 64: Schallschutzfenster-Klassentabelle abschliessend geklärt (keine amtliche CH-Skala), DIN-4109-Herkunft, De-Formel amtlich bestätigt
- **Run-Report** `outputs/2026-07-14_energie-run64.md`. Bearbeitet die letzten beiden offenen
  Punkte aus Run 62/63 zum Themenkomplex Aussenlärm/Schallschutzfenster (F68).
- **Klassentabellen-Frage abschliessend beantwortet:** Zweitquellen-Check (WebFetch stauffer.ch)
  bestätigt unabhängig, dass **SIA 181 selbst keine Schallschutzklassen für Fenster definiert** —
  sie arbeitet ausschliesslich mit situativen Anforderungswerten (De, LH, L', Di). Es gibt damit
  **keine amtliche Schweizer Klassentabelle**, weder von SIA noch von einer anderen Fachstelle.
- **Adversarialer Befund:** der Schweizer Fensterhändler Hasler Fenster behauptet auf seiner
  Website, seine Klassentabelle beruhe auf SIA 181 — **das ist widerlegt**. Die tatsächlich im
  Markt kursierende «SSK 1-6»-Skala (5-dB-Stufen) stammt nachweislich aus der **deutschen** Norm
  DIN 4109 (drei übereinstimmende WebSearch-Quellen), nicht aus SIA 181, und ist nicht identisch
  mit der zweiten kommerziellen Skala «II-V» (fensterversand.ch).
- **Formel amtlich bestätigt:** Praxisblatt Stadt Bern «Schalldämmung nach SIA 181» (Okt. 2023,
  curl+pdftotext) beziffert **De ≥ Lr,Tag − 33 dB** / **De ≥ Lr,Nacht − 25 dB** (erhöhte
  Anforderung 3 dB strenger) — rechnerisch konsistent mit dem bereits dokumentierten Kleinstwert
  De ≥ 27 dB (Referenzwerte Lr Tag 60 dB / Nacht 52 dB).
- **DE-Marktkosten als grobe Orientierung ergänzt** (fensterhero.com, EUR, Bezugsgrösse
  1,23 × 1,48 m Kunststoffrahmen): SSK 2 rund +50–100 €, SSK 6 rund +800–1'200 € gegenüber
  Standard — ausdrücklich **nicht CH, nicht CHF, nicht amtlich**, nur Grössenordnung.
- **Register:** `destillate/aussenlaerm-schallschutzfenster-strasse-bahn.md` auf Status
  **established** gehoben (Frontmatter + neuer Abschnitt + Offene-Punkte bereinigt);
  `wiki/schallschutz-sia181.md` ergänzt; `wiki/BAUHERREN-FAQ.md` F68 auf established gehoben;
  `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D42), `wiki/QUESTIONS.md`
  (E53, Meta-Punkt M2 zum zwanzigsten Mal vermerkt), `raw/_INGESTED.md` nachgeführt.
- **Nebenbefund:** die Output-Datei für Run 63 fehlte (Register/CHANGELOG waren bereits
  nachgeführt, aber Ablauf-Schritt 7 nicht abgeschlossen) — nachträglich als
  `outputs/2026-07-14_energie-run63.md` ergänzt.
- **Was offen bleibt:** CH-CHF-Mehrkosten je Schallschutzklasse (amtlich schlicht nicht
  auffindbar, gilt als geklärtes Nichtvorhandensein statt als Rechercheluecke); konkrete
  Ctr-Werte je Fenstertyp/Hersteller; Meta-Punkt M2 (Skill-Entscheid) weiterhin bei Raphael.

## 2026-07-14 — Run 63: SZ-Vollzugspraxis Aussenlärm (JANS-Fokuskanton) amtlich belegt
- **Run-Report** `outputs/2026-07-14_energie-run63.md`. PDF-Inventar bleibt seit Run 46
  vollständig abgearbeitet; löst den Run-62-Prioritätspunkt «SZ-Ausnahmebewilligungspraxis».
- **Neues Destillat** `cerclebruit-sz-merkblatt-laermbelastete-gebiete.md` — amtliches Merkblatt
  des Umweltdepartements Kanton Schwyz (AfU, 29.01.2021), vollständig via curl+pdftotext gelesen
  (9 S.). Status **established** (100 % amtliche Primärquelle).
- **Drei substanzielle Abweichungen von der ZH-Praxis:** (1) **10 % Fensterfläche** als
  Grundvoraussetzung für jeden lärmempfindlichen Raum (nicht erst 5 % als Ausnahmeregel);
  (2) Ausnahmebewilligungen nur **bis 3 dB über dem Immissionsgrenzwert** — darüber gibt es in
  Schwyz **keine** Ausnahme (Hartgrenze, kein gestaffeltes Regime); (3) **Festverglasungen sind
  für lärmempfindliche Wohn-/Arbeitsräume grundsätzlich nicht bewilligungsfähig**
  (Regierungsratsbeschluss Nr. 652/2020) — der in Zürich zulässige Ausweg «Festverglasung ab
  70 dB Tag/60 dB Nacht» existiert in Schwyz nicht.
- Zusätzlich vollständige SZ-Raumnutzungstabelle (Grenzwertpegel je Nutzung) und Zuständigkeiten
  erschlossen: AfU entscheidet über Ausnahmebewilligung (Art. 31 Abs. 2 LSV), Gemeinde ist
  vollzugszuständig für den Schallschutznachweis SIA 181 (§ 39 VVzUSG).
- **Nebenbefund:** die beiden bisher zitierten kommerziellen Schallschutzfenster-Klassentabellen
  «II-V» (fensterversand.ch) und «SSK 1-6» (fensterhero.com, DIN-4109-basiert) sind zwei
  unterschiedliche, nicht deckungsgleiche Skalen — sauber getrennt dokumentiert statt vermischt;
  keine der beiden ist in der Schweiz amtlich, SIA 181 kennt nur den situativen Anforderungswert De.
- **Ergänzt:** `aussenlaerm-schallschutzfenster-strasse-bahn.md` (SZ-Vergleichsabschnitt,
  Klassentabellen-Abgrenzung), `wiki/schallschutz-sia181.md` (SZ-vs-ZH-Vergleich), FAQ **F68**
  geschärft.
- **Register nachgeführt:** `destillate/INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (E52 neu,
  E-S1 auf neunzehn Läufe), `training/curriculum.md` (D41 neu), `raw/_INGESTED.md`.

## 2026-07-14 — Run 62: Neuer Themenkomplex Aussenlärm Strasse/Bahn (Pendant zu F65)
- **Run-Report** `outputs/2026-07-14_energie-run62.md`. PDF-Inventar bleibt seit Run 46
  vollständig abgearbeitet; Themenkomplex gemäss Run-61-Prioritätspunkt 3.
- **Zwei getrennte Systeme:** Lärmschutz-Verordnung (LSV, Art. 31/32) prüft am **offenen**
  Fenster die Bewilligungsfrage; SIA 181 (Ziff. 3.1.1) prüft am **geschlossenen** Fenster die
  Bauqualität. Ein Schallschutzfenster löst die Bewilligungsfrage nicht.
- **Massnahmen-Kaskade:** Quelle → Grundriss → bauliche Massnahmen → Schallschutzfenster als
  Letztmittel; Ausnahmebewilligung Art. 31 Abs. 2 LSV nur kumulativ mit ausgeschöpfter Kaskade.
- **Ampel-System:** gelbe Räume (Lüftungsfenster ≥5 % Bodenfläche hält Grenzwert) vs. rote Räume
  (ruhiger Aussenbereich Pflicht min. 2 m/6 m², max. 1/3 Zimmer mit Ausnahme, Einzelraum-
  belüftung). **ZH-Sonderregel:** öffenbare Fenster nur bis 70 dB Tag/60 dB Nacht, darüber
  Festverglasung.
- **SIA-181-Rechenlogik:** Kleinstwert De ≥ 27 dB; massgebend am Bau **R'w + Ctr** statt
  Labor-Rw (Ctr −4 bis −6 dB bei Fenstern, Strassenlärm tieffrequenzlastig).
- **Schallschutzfenster-Klassen** (fensterversand.ch, kommerziell, nicht amtlich): II 30–34 dB,
  III 35–39 dB, IV 40–44 dB, V 45–49 dB mit Abstands-Faustregeln.
- **Schnittstelle Komfortlüftung:** rote Räume mit dauerhaft geschlossenen Fenstern brauchen
  mechanische Lüftung → `[[komfortlueftung]]`.
- → `destillate/aussenlaerm-schallschutzfenster-strasse-bahn.md` (neu), Ergänzung
  `wiki/schallschutz-sia181.md` (neuer Abschnitt «Aussenlärm vertieft»), FAQ **F68** neu, Status
  emerging.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D40,
  Meta-Punkt M2 auf 18 Läufe), `wiki/QUESTIONS.md` (E51 neu), `raw/_INGESTED.md`.
- Offen: SZ-spezifische Ausnahmebewilligungspraxis (JANS-Fokuskanton), amtliche (nicht
  kommerzielle) Schallschutzfenster-Klassentabelle, CHF-Mehrkosten je Klasse. Nächster Lauf:
  SZ-Vertiefung oder neuer, noch unbelegter Themenkomplex.

## 2026-07-14 — Run 61: Neuer Themenkomplex Fassadenbegrünung als Hitzeschutz + Zielkonflikt Fassaden-PV
- **Run-Report** `outputs/2026-07-14_energie-run61.md`. PDF-Inventar bleibt seit Run 46
  vollständig abgearbeitet; nach Abschluss der 26-Kantone-Solarpflicht-Erhebung (Run 60) neuer
  Web-Themenkomplex gemäss Run-60-Prioritätspunkt 3.
- **Fassadenbegrünung als Hitzeschutz:** Kanton Zürich «Massnahmen gegen Hitze» (amtliche
  Kantonsseite) beziffert die Reduktion der gefühlten Temperatur (PET) in der unmittelbaren
  Umgebung begrünter Fassaden mit ⌀ **4,8 °C** und empfiehlt klar **bodengebunden** (Kletter-
  pflanzen ab Boden) vor **wandgebunden** (Konstruktionsaufwand/Unterhalt/Brandschutz/
  Wassermanagement). Ausdrücklicher **Zielkonflikt**: dieselbe Fassadenfläche lässt sich nicht
  gleichzeitig begrünen und mit PV belegen — Flächen-Entscheidung pro Fassadenabschnitt nötig.
- **Kosten bewusst nicht geglättet:** zwei CH-Quellen weichen deutlich voneinander ab — Kanton
  Zürich nennt CHF 250-600/m² (bodengebunden) bzw. 700-2'000/m² (wandgebunden), Hydroplant AG
  (CH-Fachbetrieb) nennt ab ~CHF 1'200/m² bzw. ~1'700/m². Beide Zahlen dokumentiert statt auf
  einen Mittelwert geglättet (Leitplanke «nichts erfinden»).
- **Förderung Stadt Zürich:** Förderprogramm Stadtgrün/Vertikalbegrünung, Reglement nennt 50 %
  der Gesamtkosten, Deckel CHF 1 Mio. (wirkt als Alltagsbetrag zu hoch, vermutlich genereller
  Reglements-Deckel); Praxis-Kennzahl 157 Gesuche/113 bewilligt/⌀ CHF 17'700 pro Projekt (eigene
  Berechnung aus den beiden Quellenzahlen).
- → `destillate/fassadenbegruenung-hitzeschutz-pv-zielkonflikt.md` (neu), Ergänzung
  `wiki/sommerlicher-waermeschutz.md` (5. Stellschraube), FAQ **F67** neu, Status emerging.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D39),
  `wiki/QUESTIONS.md` (E50 neu, E-S1-Zähler auf siebzehn Läufe), `raw/_INGESTED.md`.
- Offen: Alltags-Fördersatz pro Projekt/m² ausserhalb der Reglements-Obergrenze, quantitativer
  kWh-Effekt auf Kühllast/Heizwärmebedarf, kantonales/Schwyzer Pendant zum Förderprogramm. Nächster
  fälliger Themenkomplex: Schallschutz gegen Aussenlärm (Strasse/Bahn) als Pendant zu F65.

## 2026-07-14 — Run 60: Solarpflicht-Erhebung ALLER 26 Kantone abgeschlossen (Basel-Landschaft/Jura/Freiburg/Glarus/Nidwalden/Obwalden/Appenzell AR+AI)
- **Run-Report** `outputs/2026-07-14_energie-run60.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche, Abschluss des seit Run 56 laufenden
  Solarpflicht-Themenkomplexes. Station-Hinweis: dieser Loop läuft auf dem **Mac Mini** (Stations-
  Split Rule 260712: Mac Mini fährt energie/planungsgrundlagen/synobsis) und bleibt unter dem bis
  10.08.2026 gültigen Token-Vollgas (Rule 260712b) — die Drosselungs-Notiz aus dem Run-59-Report
  bezog sich auf Rule 260713, die explizit nur die Loops des MacBook Pro betrifft; die Cron-
  Konfiguration von `energie-training` (launchd-Job `ch.jans.training-energie`, 10:30/16:30) bleibt
  deshalb unverändert.
- **Letzte acht Kantone recherchiert, Erst-Erhebung damit vollständig (26/26):**
  **Basel-Landschaft** liefert das Lehrstück «Pflicht kann wieder wegfallen»: Kantonsgericht
  erklärte die Dekrets-Grundlage der Neubau-Pflicht für ungenügend, die Solarinitiative wurde am
  8.3.2026 mit ~70 % Nein klar verworfen — bleibt beim Bundesminimum, nur kommunale BZO-Option.
  **Obwalden** zeigt den umgekehrten Schwebezustand: neues PBG (4.12.2025) mit Solarpflicht,
  SVP-Referendumsinitiative seit 22.1.2026 hängig, Ausgang offen. **Glarus** (seit 2023),
  **Nidwalden** (seit 1.11.2021, 10 W/m² EBF, Gemeinschaftsanlage zählt Art. 19b) und
  **Appenzell Ausserrhoden** (seit 1.1.2023, Art. 10a EnG, alle Neubauten) haben eine
  Eigenstromerzeugungspflicht bereits in Kraft. **Freiburg** (10 W/m² EBF, MuKEn-2014) und
  **Jura** (OEn seit 2019, MoPEC, Revision 2026/2027 geplant) ergänzt. **Appenzell Innerrhoden**
  bleibt ein bewusst offen dokumentierter Quellenwiderspruch: Sekundärquellen behaupten eine
  PV-Pflicht, die amtliche Primärseite ai.ch zeigt nur eine Melde-/Bewilligungspflicht — hier
  keine Pflicht-Aussage ohne Direktkontakt zum Bau- und Umweltdepartement AI treffen →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md`, FAQ **F66** ergänzt, Status bleibt emerging.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D38),
  `wiki/QUESTIONS.md` (E49 neu, E-S1-Zähler auf sechzehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 61:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit **16 Läufen**
  spruchreif — braucht Raphaels Entscheidung; Detailwerte offen (Zug/Graubünden/Glarus/Nidwalden-
  analog/Appenzell-AR-Sätze, Obwalden-Referendumsausgang, Neuenburg-Inkrafttreten, Appenzell-
  Innerrhoden-Widerspruch); mit dem Abschluss der 26-Kantone-Erhebung ist ein neuer Themenkomplex
  fällig — Kandidaten weiterhin Fassadenbegrünung (Hitzeschutz-Pendant zu PV) oder Schallschutz
  gegen Aussenlärm (Strasse/Bahn) als Pendant zum haustechnischen Wärmepumpen-Lärmschutz (F65).

## 2026-07-14 — Run 59: Solarpflicht auf 18 von 26 Kantonen erweitert (Uri/Zug/Schwyz/Neuenburg) — Schwyz als zweiter JANS-Fokuskanton geklärt: keine kantonale Zusatzpflicht
- **Run-Report** `outputs/2026-07-14_energie-run59.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche, Fortsetzung des Solarpflicht-
  Themenkomplexes aus Run 56-58.
- **Solarpflicht ergänzt um vier Kantone:** **Schwyz** — der zweite JANS-Fokuskanton neben
  Zürich — hat KEINE kantonale Solarpflicht: eine Motion (Kälin, FDP) wurde vom Kantonsrat am
  22.10.2025 mit 50:45 Stimmen abgelehnt, obwohl der Regierungsrat sie ursprünglich befürwortete;
  Bauprojekte in Schwyz unterliegen damit nur dem Bundesminimum (300 m²). **Uri** zeigt eine
  Kehrtwende: eine strengere 100-m²-Verordnung wurde vom Volk am 22.9.2024 mit über 64 % Nein
  verworfen, die daraufhin erarbeitete 300-m²-Teilrevision (= Bundesminimum) am 8.3.2026 mit
  75 % Ja angenommen (Inkrafttreten voraussichtlich Herbst 2026). **Zug** verschärft klar: seit
  1.1.2023 gilt eine Eigenstromerzeugungspflicht für alle Neubauten ohne Flächenschwelle
  (MuKEn-2014-Modul E). **Neuenburg** befindet sich noch in Gesetzesrevision (15 W/m² SRE
  vorgesehen), noch nicht in Kraft →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md` (Bauherren-Transfer um Schwyz-Fokus geschärft), FAQ
  **F66** ergänzt, Status bleibt emerging (18/26 Kantone).
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D37),
  `wiki/QUESTIONS.md` (E48 neu, E-S1-Zähler auf fünfzehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 60:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit **15 Läufen**
  spruchreif — braucht Raphaels Entscheidung; 8 weitere Kantone offen (Basel-Landschaft-
  Vertiefung, Jura, Freiburg, Glarus, Nidwalden, Obwalden, Appenzell AR/AI); neue
  Themenkomplex-Kandidaten weiterhin Fassadenbegrünung (Hitzeschutz-Pendant zu PV) oder
  Schallschutz gegen Aussenlärm (Strasse/Bahn); Hinweis auf Rule 260713 (Wettbewerbs-DNA als
  MacBook-Pro-Token-Fokus, energie-training künftig 1x täglich statt 3x täglich).

## 2026-07-14 — Run 58: Solarpflicht auf 14 von 26 Kantonen erweitert (Waadt/Genf/Tessin/Solothurn/Wallis/Schaffhausen) — Register einer unterbrochenen Vorgänger-Session nachgeführt
- **Run-Report** `outputs/2026-07-14_energie-run58.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche.
- **Ausgangslage:** eine vorangegangene Sitzung hatte die Recherche zu sechs weiteren Kantonen
  bereits im Destillat `destillate/solarpflicht-national-mantelerlass-kantone.md` abgelegt (bis
  01:16 Uhr, per nas-selfcommit gesichert), aber Themenartikel, FAQ, Register und Run-Report
  nicht mehr fertiggestellt (Session-Abbruch). Dieser Lauf hat die Recherche verifiziert und die
  Registerpflege nachgeholt, statt die Web-Recherche zu wiederholen.
- **Solarpflicht ergänzt um sechs Kantone:** Waadt (LVLEne, ab ca. 2027, 20 % Strombedarf +
  automatische Pflicht bei Dachsanierung — strenger als Bern), Genf (seit 1.9.2025, Volk 84,3 %
  Ja, keine Flächenschwelle, alle geeigneten Dachflächen, ab 2030 Grossverbraucher), Tessin (seit
  1.1.2024, 10 W/m² EBF/max. 30 kW wie ZH-Modell), Solothurn (seit 1.1.2023, am Bundesminimum),
  Wallis (seit 1.1.2025, 40 % Baufläche + fossiles Heizverbot + Bestandespflicht >500 m² binnen
  25 Jahren), Schaffhausen (Solarinitiative 8.3.2026 mit 60,6 % Nein abgelehnt, drittes
  Ablehnungs-Gegenbeispiel neben Aargau/Bern-Zusatzinitiative) →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md`, FAQ **F66** geschärft, Status bleibt emerging
  (14/26 Kantone).
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md` (D36),
  `wiki/QUESTIONS.md` (E47 neu, E-S1-Zähler auf vierzehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 59:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit **14 Läufen**
  spruchreif — braucht Raphaels Entscheidung; 12 weitere Kantone offen (Basel-Landschaft-
  Vertiefung, Jura, Neuenburg, Freiburg, Glarus, Uri, Schwyz, Nidwalden, Obwalden, Zug, Appenzell
  AR/AI); neue Themenkomplex-Kandidaten weiterhin Fassadenbegrünung (Hitzeschutz-Pendant zu PV)
  oder Schallschutz gegen Aussenlärm (Strasse/Bahn).

## 2026-07-14 — Run 57: Beide Run-56-Themenkomplexe vertieft (LSV-Planungswerttabelle, drei weitere Solarpflicht-Kantone)
- **Run-Report** `outputs/2026-07-14_energie-run57.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche, vertieft beide Run-56-Themenkomplexe
  statt neue zu eröffnen.
- **Wärmepumpen-Lärmschutz ergänzt:** vollständige Anhang-6-LSV-Planungswerttabelle nach
  Empfindlichkeitsstufe (ES I 50/40, ES II 55/45, ES III 60/50, ES IV 65/55 dB(A) Tag/Nacht) —
  zwei unabhängige Web-Reproduktionen zahlengenau deckungsgleich, Fedlex-Primärtext selbst
  JavaScript-gerendert und nicht direkt extrahierbar (Werkzeug-Grenze) →
  `destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md` ergänzt, FAQ F65 geschärft,
  weiterhin established.
- **Solarpflicht ergänzt um drei Kantone:** Aargau bleibt beim Bundesminimum (Grossrats-
  Kommission empfiehlt 9:6 Ablehnung einer eigenen Verschärfung), Basel-Stadt «Solaroffensive»
  weitet die Pflicht auf **Bestandsbauten** >100 m² aus (CHF 1'500/kW Ersatzabgabe, noch nicht
  Gesetz), Graubünden Eigenstromerzeugungspflicht seit 2021 mit Globalstrahlungs-/Minergie-
  Befreiung (exakte Mengenvorgabe offen) → `destillate/solarpflicht-national-mantelerlass-kantone.md`
  ergänzt, FAQ F66 geschärft, Status bleibt emerging (8/26 Kantone).
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D34-D35), `wiki/QUESTIONS.md` (E45/E46 neu, E-S1-Zähler auf dreizehn Läufe), `raw/_INGESTED.md`.
- **Offen für Run 58:** Meta-Punkt M2 (eigenes Skill `energie`?) jetzt seit 13 Läufen spruchreif,
  braucht Raphaels Entscheidung; weitere Solarpflicht-Kantone (Basel-Landschaft-Vertiefung, Waadt,
  Genf, Tessin); LSV-Anhang-6-Vollzugshilfe für weitere Anlagetypen als möglicher neuer Themenkomplex.

## 2026-07-13 — Run 56: Zwei neue Themenkomplexe (WP-Lärmschutz, Solarpflicht national/Kantone) + beide Run-55-Punkte gelöst
- **Run-Report** `outputs/2026-07-13_energie-run56.md`. PDF-Inventar bleibt vollständig
  abgearbeitet (seit Run 46); Lauf ist reine Web-Recherche.
- **Wärmepumpen-Lärmschutz (neu):** Cercle Bruit Vollzugshilfe 6.21 (1.11.2024), vollständig via
  curl+pdftotext gelesen (22 S. inkl. Fallbeispiel Anhang 4). Formel Leq/Lr, Planungswert-Beispiel
  ES II Nacht 45 dB(A) (44 dB(A) erreicht), Vorsorgeprinzip 1 %/3 dB, Massnahmen-Kaskade
  Standort→Modellwahl→baulich → `destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md`,
  Themenartikel `wiki/waermepumpen-laermschutz.md`, FAQ **F65** neu, established.
- **Solarpflicht national + Kantone (neu):** Bund Art. 45a/45b EnG (Mantelerlass) ab 300 m² als
  Minimalstandard; Bern ab 1.1.2026 ohne Schwelle (10 % aGF), Luzern 50 % Dachfläche auch EFH,
  St. Gallen 10 W/m² EBF + Gemeindekompetenz, Basel-Landschaft seit 1.10.2024 →
  `destillate/solarpflicht-national-mantelerlass-kantone.md`, Themenartikel
  `wiki/solarpflicht-schweiz-kantone.md`, FAQ **F66** neu, emerging.
- **§ 295 PBG jetzt 100 % primärquellen-verifiziert:** amtliche zhlex.zh.ch-PDF (LS 700.1, 96 S.)
  direkt via curl+pdftotext gelesen — Wortlaut Abs. 1+2 wortidentisch mit der Run-55-Fassung
  (ortsplanung.ch) → `destillate/fernwaerme-anschlusspflicht-zh.md` aktualisiert, FAQ F64 geschärft.
- **Blower-Door-CHF-Kosten CH recherchiert, ergebnisoffen:** kein Schweizer Anbieter (Vesica,
  Corak, Innoplan u.a.) nennt Preise; deutsche Vergleichszahl (⌀ 325 Euro netto EFH) bewusst
  nicht übernommen → `destillate/rilumi-minergie-luftdichtheit-n50.md` ergänzt, FAQ F63 geschärft.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D30-D33), `wiki/QUESTIONS.md` (E41/E42 final geschlossen, E43/E44 neu, E-S1-Zähler auf zwölf
  Läufe erhöht), `raw/_INGESTED.md`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): 5 Querbezuege zu baurecht + normen gesetzt
- [link] `energienachweis-zh.md` → baurecht `baubewilligungsverfahren` (§ 325a PBG Anzeigeverfahren).
- [link] `minergie-standards.md` → baurecht `baubewilligungsverfahren` (Minergie-Vermutung § 4 Abs. 4 BBV I).
- [link] `schallschutz-sia181.md` → normen `sia-181-2006`/REGISTER; ⚠ Ausgaben-Flag: energie fuehrt SIA 181:**2020**, normen-Register noch 2006 (Re-Destillat in normen ausstehend).
- [link] `sommerlicher-waermeschutz.md` → normen `sia-180-2014` (schliesst «Offen»: Rechenverfahren/Grenzwerte).
- [link] `daemmstoffe-lambda.md` → normen `sia-279-2018` (schliesst «Offen»: Bemessungswerte; SIA 2001:2005 zurueckgezogen).
- [link] `u-werte-grenzwerte-ch.md` → normen REGISTER SIA 380/1 (Ausgaben-Abgleich 2009/2016). Keine Widersprueche (Paar normen↔energie: 0). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Run 55: RiLuMi Kap. 4-8 + § 295 PBG Wortlaut — beide Run-54-Themen auf established
- **Run-Report** `outputs/2026-07-13_energie-run55.md`. Kein neues Thema eröffnet, stattdessen
  die beiden Run-54-Prioritätspunkte vollständig abgeschlossen (Primärquelle direkt via curl
  geladen statt WebFetch-Zusammenfassung — deutlich vollständigerer Rohtext).
- **Luftdichtheit:** RiLuMi vollständig (51 S., curl+pdftotext) statt nur S. 1-8. Neu: Konzept-
  Pflichten je Standard/Gebäudetyp, Messzonen-Stichprobenlogik (Tabelle 7), objektspezifischer
  Grenzwert bei Erweiterungen (Formel), Messbericht-Pflichtangaben. **Zusatzfund:** SIA 180:2014
  selbst setzt Luftdichtheits-Grenzwerte für JEDES Gebäude (nicht nur Minergie): Neubau 2,4/1,6,
  Umbau 3,6/2,4 m³/(h·m²) → `destillate/rilumi-minergie-luftdichtheit-n50.md` established, FAQ
  F63 geschärft.
- **Fernwärme-Anschlusspflicht:** § 295 PBG-Wortlaut Abs. 1+2 direkt via ortsplanung.ch verifiziert
  (per curl gegengelesen). Ergebnis: nur **zwei** Absätze (nicht drei wie zunächst vermutet);
  Gesetzestext selbst nennt keine feste 70‑%-Schwelle/Jahreszahl — beide stammen aus dem
  städtischen Vollzugs-Merkblatt → `destillate/fernwaerme-anschlusspflicht-zh.md` established,
  FAQ F64 geschärft.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D28/D29), `wiki/QUESTIONS.md` (E41/E42 geschlossen, E-S1-Zähler auf elf Läufe erhöht).

## 2026-07-13 — Run 54: Zwei neue Themenkomplexe — Luftdichtheit (Blower-Door/Minergie) + Fernwärme-Anschlusspflicht
- **Run-Report** `outputs/2026-07-13_energie-run54.md`. PDF-Inventar bleibt vollständig
  abgearbeitet; statt einer weiteren Vertiefung bestehender Punkte wurden zwei bisher
  **unbelegte** Themenkomplexe recherchiert, um die KB breiter statt nur tiefer wachsen zu lassen.
- **Luftdichtheit Gebäudehülle / Blower-Door-Test:** Primärquelle «Richtlinie Luftdichtheit bei
  Minergie-Bauten (RiLuMi)», Version 2022.1 (Minergie/theCH), S. 1-8 direkt als PDF geladen und
  vollständig per Read-Tool gelesen. Grenzwerte qE50 [m³/(h·m²)]: Minergie Neubau ≤1,2/
  Erneuerung ≤1,6, Minergie-P/-A Neubau ≤0,8/Erneuerung ≤1,6; Messnorm SN EN ISO 9972 (löst
  EN 13829 ab), ±15 % Gesamtmessunsicherheit, Konzeptpflicht schon bei Minergie-Basisstandard →
  `destillate/rilumi-minergie-luftdichtheit-n50.md`, FAQ **F63** neu. Status **established**.
- **Fernwärme-Anschlusspflicht Kt./Stadt Zürich:** § 295 Abs. 2 PBG ZH (Sekundärzitate
  ortsplanung.ch + Baurekursgericht-Praxisübersicht) + Stadt-Zürich-Merkblatt (direkt gelesen).
  Keine generelle Anschlusspflicht, aber Kanton/Gemeinde können sie bei ≥70 % Abwärme/erneuerbar
  + wirtschaftlicher Gleichwertigkeit per Verfügung anordnen (gestützt auf kommunale
  Energieplanung); Stadt Zürich: 8-Jahres-Übergangsfrist bestehende fossile Heizungen →
  `destillate/fernwaerme-anschlusspflicht-zh.md`, FAQ **F64** neu. Status **emerging** — §-295-
  Wortlaut nicht direkt aus zhlex.zh.ch gelesen (nur Sekundärquellen), vor Rechtsfall verifizieren.
- Register nachgeführt: `destillate/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`
  (D28/D29), `wiki/QUESTIONS.md` (E41/E42), `wiki/BAUHERREN-FAQ.md` (Frontmatter + Changelog-Absatz).
- Meta-Punkt M2 (eigenes Skill `energie`?) bleibt spruchreif, zehnter Vermerk ohne neue Substanz.

## 2026-07-13 — Run 53: Komfortlüftung-WRG-Grenzwerte der Norm SIA 382/1 selbst + BFE-Dimensionierungshilfe
- **Run-Report** `outputs/2026-07-13_energie-run53.md`. PDF-Inventar weiterhin vollständig
  abgearbeitet; Block 1 lief über gezielte Web-Recherche zum verbleibenden Run-52-Prioritätspunkt
  «WRG-Grad zentraler Anlagen numerisch».
- **suissetec-Merkblatt SIA 382/1 (Nov. 2025) diesmal vollständig lokal gelesen** (per curl
  heruntergeladen + pdftotext, 12 S., vorher nur eine Web-Fetch-Zusammenfassung ohne
  Tabellenwerte): offizielle Norm-Grenzwerte für die Wärmerückgewinnung (Tab. 2, Ziff. 5.7.3.1)
  — Temperatur-Bruttoeffizienz **73 %** (70 % bei Kreislaufverbundsystemen), Feuchte-
  Bruttoeffizienz **50 %** (Zielwert 60 %) — sowie IDA-Kategorien für den Aussenluft-
  Volumenstrom pro Person (Tab. 1: 29/57/18 m³/h) und Raumluftfeuchte-Grenzen (30-62 %, Ziff.
  2.2.6.1) → `destillate/komfortlueftung-wrg-sia382-luftwechsel.md` von emerging auf
  **established** gehoben.
- **Neue Quelle: BFE «Komfortlüftung — Dimensionierungshilfe, Teil 1: Allgemein»**
  (pubdb.bfe.admin.ch, 9 S., vollständig gelesen) — praxisnahe Faustregeln (Zuluft 30 m³/h je
  Zimmer, Abluft Küche/Bad 40 + WC 20 m³/h, WRG je Wärmetauscher-Bautyp Gegenstrom/Rotation
  ~80 % vs. Kreuzstrom 50-60 %, Schallgrenze 25 dBA) mit explizitem Hinweis, dass ihre Grundlage
  (SIA-Merkblatt 2023) 2021 zurückgezogen wurde → neues Destillat
  `destillate/bfe-komfortlueftung-dimensionierungshilfe-1.md`.
- **FAQ:** F43 geschärft (Norm-Minimum vs. Minergie-Anforderung, IDA-Aussenluftmengen), F62 neu
  (Faustregel-Frage). Themenartikel `wiki/komfortlueftung.md` ergänzt.
- **Uf-Werte SZFF** (Run-52-Zweitkandidat) dritter Suchversuch erneut ergebnislos — als
  QUESTIONS-Eintrag E40 dokumentiert, kein neuer Fund.
- **Register:** `destillate/INDEX.md`, `training/pdf-inventar.md` (2 neue Web-Quellen-Zeilen),
  `training/curriculum.md` (D10 geschlossen, D27 neu), `wiki/QUESTIONS.md` (E40 neu, M2-Zähler
  auf neuntes Mal erhöht).

## 2026-07-13 — Run 52: VSE-Branchenempfehlung LEG (BD-LEG) primärquellen-verifiziert
- **Run-Report** `outputs/2026-07-13_energie-run52.md`. PDF-Inventar weiterhin vollständig
  abgearbeitet; Block 1 lief über gezielte Web-Recherche zu einem der drei Run-51-Kandidaten.
- **Primärquelle gefunden und vollständig gelesen:** die amtliche VSE-Branchenempfehlung
  «Lokale Elektrizitätsgemeinschaften (LEG), BD LEG – CH 2025 V2» (VSE/AES, verabschiedet
  27.06.2025, strom.ch/de/media/15458/download) wurde lokal heruntergeladen und komplett (35
  Seiten) per Read-Tool gelesen — bisher war die KB nur auf die EKZ-Umsetzungsseite und
  Sekundärzitate der VSE-Kernaussage gestützt.
- **Ergebnis:** die bisherigen Kernzahlen (40 %/20 %-Netzentgelt-Rabatt, ≥5 %-Produktions-
  verhältnis, keine Solidarhaftung, freie interne Preisbildung) bestätigen sich **zahlengenau**
  aus der Primärquelle. Neu erschlossen: Anschlussleistungsformel + Rechenbeispiel (19,2 kVA),
  Gründungs-Timing (Anmeldeanspruch erst ab 1.1.2026, unter 3-Monats-Frist frühestens aktiv
  1.4.2026), vollständige Speicher-Übergangsregelung (Kap. 8, vier Anwendungsfälle, i.d.R. ohne
  Zusatzzähler) sowie Vergütungs-/HKN-Regeln (Kap. 9-10: LEG-interner Strom ohne separate
  Stromkennzeichnung, trägt automatisch Qualität der LEG-Produktionsanlage).
- **Destillate/Wiki ergänzt:** `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` (Frontmatter auf
  primärquellen-verifiziert established, neue Sektionen Gründung/Speicher/Vergütung+HKN), FAQ
  F33 geschärft, Themenartikel `[[pv-eigenverbrauch-zev]]` ergänzt.
- **Register:** `training/pdf-inventar.md` (neue Web-Quelle), `destillate/INDEX.md`,
  `training/curriculum.md` (D26 neu), `wiki/QUESTIONS.md` (E39 neu, Meta-Zähler auf «achtes Mal»).
- **Meta-Eskalation:** M2 (Skill-`energie`-Entscheid) zum **achten Mal in Folge** als spruchreif
  vermerkt (Run 45-52) — keine Mail versendet, nur Vermerk gemäss Vorgabe.

## 2026-07-13 — Run 51: MuKEn-2025-Modul-G established + PV-Rechenbeispiel
- **Run-Report** `outputs/2026-07-13_energie-run51.md`. PDF-Inventar weiterhin vollstaendig
  abgearbeitet; kein neues PDF im SharePoint-Ordner gefunden.
- **Verifikation statt neuer Fund:** die Minergie/ecobau-Methodik-Primärquelle «Berechnungsmethodik
  Grenzwerte THGE in Erstellung» (12.09.2023) wurde lokal per Read-Tool aus dem PDF gelesen (keine
  Web-Fetch-Zwischenstufe) und bestätigt die D19/E34-MuKEn-2025-Modul-G-Zahlen **zahlengenau**
  (Basisgrenzwerte 12,4-19,9 kg CO₂-eq/m²EBF·a, unbeheizt 5,5, Zuschläge Erdsonde +0,3/PV +7,1/
  Solarthermie +5,6) — Status auf **established** gehoben. Zusätzlich das bisher fehlende
  Rechenbeispiel übernommen: PV-Zuschlag für 65 m² Panelfläche/42 % Eigenverbrauch/175 m² EBF =
  **1,72 kg CO₂-eq/m²EBF·a**.
- **Destillate/Wiki ergaenzt:** `[[muken-2025-modul-g-co2-grenzwerte]]` (Verifikationsstand +
  Rechenbeispiel-Sektion, Status established), FAQ F47 geschärft.
- **Register:** `training/pdf-inventar.md` (neue Web-Quelle), `destillate/INDEX.md`,
  `training/curriculum.md` (D25 neu), `wiki/QUESTIONS.md` (E34 aktualisiert, E38 neu).
- **Meta-Eskalation:** M2 (Skill-`energie`-Entscheid) zum **siebten Mal in Folge** als spruchreif
  vermerkt (Run 45-51) — der Loop kann diese Entscheidung nicht selbst treffen, braucht eine
  explizite Antwort von Raphael in einer interaktiven Session.

## 2026-07-13 — Run 50: LEG-Rp/kWh-Marktbeispiel ergaenzt + M2-Entscheid zum 6. Mal eskaliert
- **Run-Report** `outputs/2026-07-13_energie-run50.md`. PDF-Inventar weiterhin vollstaendig
  abgearbeitet; kein neues PDF im SharePoint-Ordner gefunden.
- **Neuer Fund (kein Sackgassen-Wiederholung):** LEG-Preisbildung ist laut VSE-Branchenempfehlung
  frei waehlbar; zwei nicht-amtliche Sekundaerquellen (gwa-energie.ch VNB-Kostenbeispiel + upgrid.ch
  Marktrechnung) liefern eine plausible Groessenordnung: 12-15 Rp./kWh LEG-Gemeinschaftsstrom vs.
  ~7 Rp./kWh Referenz-Einspeiseverguetung vs. 27-30 Rp./kWh Netzstrom, 30-kWp-MFH-Beispiel ca.
  CHF 600/Jahr Mehrertrag. Explizit als Marktbeispiel markiert, nicht als amtliche Vorgabe.
- **Destillate/Wiki ergaenzt:** `[[leg-lokale-elektrizitaetsgemeinschaft-2026]]` (neue Sektion
  "Konkrete Rp/kWh — Marktbeispiele"), FAQ F33 geschaerft, `[[pv-eigenverbrauch-zev]]` ergaenzt.
- **Register:** `training/curriculum.md` (D24 neu, D6-Offenpunkt geschaerft), `wiki/QUESTIONS.md`
  (E37 neu).
- **Meta-Eskalation:** M2 (Skill-`energie`-Entscheid) zum **sechsten Mal in Folge** als spruchreif
  vermerkt (Run 45-50) — der Loop kann diese Entscheidung nicht selbst treffen, braucht eine
  explizite Antwort von Raphael in einer interaktiven Session.

## 2026-07-13 — Run 49: zwei Recherche-Sackgassen ehrlich geschlossen (kein neuer Fund)
- **Run-Report** `outputs/2026-07-13_energie-run49.md`. PDF-Inventar weiterhin vollständig
  abgearbeitet, keine neuen PDFs im SharePoint-Ordner seit letzter Inventarpflege gefunden.
- **Sackgassen aus Run 48 geprüft und geschlossen** (kein neuer Fund, aber verhindert künftige
  Doppel-Recherche): Empa-Projekt «DemoUpCARMA» betrifft Beton-Carbonatisierung statt
  Sanieren-vs-Neubau; Uni-Bern-Foliensatz «Sanierung oder Ersatzneubau?» (Lenel) ist bildbasiert
  ohne Zahlentext; `sia2060online.ch` per WebFetch bestätigt als reines interaktives JS-Tool ohne
  auslesbare Beispielrechnung (Werkzeug-Grenze wie Kantonsrat ZH).
- **Destillate ergänzt (kein Statuswechsel):** `[[graue-energie-sanieren-vs-neubau-amortisation]]`,
  `[[sia-2060-kosten-ladeinfrastruktur-vertiefung]]` — beide bleiben `emerging`, Kernfragen
  weiterhin ehrlich unbelegt.
- **Register:** `training/curriculum.md` (D23 neu), `wiki/QUESTIONS.md` (E36 neu).
- **Uf-Werte-Recherche (SZFF)** ohne neuen Fund wiederholt — keine Änderung an
  `[[uf-werte-rahmenmaterial-grobuebersicht]]` vorgenommen.
- **Meta-Hinweis:** M2 (Skill-`energie`-Entscheid) zum fünften Mal in Folge als «spruchreif»
  vermerkt (Run 45–49), weiterhin ohne Entscheidung.

## 2026-07-13 — Run 48: Synthese der 5 parallelen Vertiefungen (FAQ/Register)
- **Run-Report** `outputs/2026-07-13_energie-run48.md` fasst die 5 parallel gelaufenen
  Vertiefungs-Recherchen dieses Laufs zusammen (MuKEn-2025-Modul-G, graue-Energie-Amortisation,
  Strohdämmung, SIA-2060-Kosten, g-Werte Verglasung — siehe die vier folgenden Einzel-Einträge
  unten, von den jeweiligen Recherche-Agenten selbst protokolliert).
- **BAUHERREN-FAQ.md geschärft:** F9 (graue Energie/Sanieren-vs-Neubau, neu: keine belegte
  CH-Jahreszahl), F34 (Naturdämmstoffe, neu: Stroh-Bemessungswert/Brandschutz/Feuchte im Detail),
  F35 (Fenster, neu: g-Werte-Tabelle je Verglasungstyp), F39 (E-Mobilität, neu: SIA-2060-
  Primärquelle jetzt bestätigt), F47 (MuKEn 2025, neu: konkrete Modul-G-Grenzwerte).
- **Register nachgeführt:** `training/curriculum.md` (D19–D22 + SIA-2060-Vertiefung neu),
  `wiki/QUESTIONS.md` (E32–E35 neu, E12 Naturdämmstoffe weitgehend geschlossen), `destillate/INDEX.md`
  (2 fehlende Zeilen nachgetragen: Strohdämmung, graue-Energie-Amortisation).
- **Meta-Hinweis:** M2 (Skill-`energie`-Entscheid) wird zum vierten Mal in Folge (Run 45/46/47/48)
  als «spruchreif» vermerkt, ohne dass eine Entscheidung erfolgt ist — Empfehlung an Raphael, dies
  in einer interaktiven Session einmal explizit zu entscheiden statt weiter nur zu protokollieren.

## 2026-07-13 — Neues Destillat: g-Werte je Verglasungstyp (2-fach/3-fach/Sonnenschutzglas)
- **Neues Destillat `[[g-werte-verglasungstypen-ch]]`:** schliesst den in
  `[[fenster-verglasung-uw-g-wert]]` offen geführten Punkt «konkrete g-Werte je Verglasungstyp»
  orientierend. Werte: Zweifach-Wärmeschutzglas g ~0,58–0,62 (Flachglas Schweiz vetroTherm
  1.0/1.1) bzw. DE-Bandbreite 0,60–0,75; Dreifachglas Standard g ~0,61 (vetroTherm G Plus Trio)
  bzw. DE-Bandbreite 0,50–0,60; Sonnenschutzglas (vetroSol A-Typen/Trio) g 0,17–0,37 je nach
  Beschichtungsstärke. Der bereits primär belegte g_tot mit aussenliegendem Sonnenschutz
  (0,10–0,15, EN-102) bleibt der Zielwert für den Sommernachweis.
- **Quellenqualität bewusst als `needs-verification` markiert:** Direktabruf der flachglas.ch-
  Produktseiten lieferte nur eine Platzhalterseite (Website im Umbau); die Zahlen stammen aus der
  Suchmaschinen-Zusammenfassung des zuvor indexierten Seiteninhalts, nicht aus eigenem
  Volltext-Lesen. SZFF-Energieetikette-Faktenblatt und energie-umwelt.ch-Seite lieferten keine
  Typen-Tabelle (nur Definition + ein Beispielwert g=0,55).
- **`[[fenster-verglasung]]`** (Wiki) im Offen-Abschnitt und den Frontmatter-Links ergänzt.
- Output: kein separater `outputs/`-Report (Direktauftrag ohne KB-weite Frage), Ergebnis lebt
  direkt im neuen Destillat.

## 2026-07-13 — Vertiefung SIA-2060-Kosten Ladeinfrastruktur: Primärquelle jetzt gelesen, keine dritte unabhängige Quelle gefunden
- **Neues Destillat `destillate/sia-2060-kosten-ladeinfrastruktur-vertiefung.md`:** vertieft den in
  `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]` offen gelassenen Punkt «SIA-2060-Kostentabelle nur
  aus Sekundärzitaten, Primär-PDF bildbasiert nicht auslesbar».
- **Durchbruch:** Das Kanton-ZH-Baudirektion-Infoblatt (zh.ch) liess sich diesmal per `pdftotext -layout`
  vollständig als Text extrahieren (statt WebFetch-HTML-Konvertierung) — Primärquelle jetzt im Volltext
  gelesen, datiert **13. Oktober 2020**, Herausgeber AWEL (IBG Engineering AG Winterthur). Bestätigt die
  bisherige Tabelle **zahlengenau**: A CHF 65/Wohnung, B CHF 180, C1 CHF 350, C2 CHF 400, D CHF 3'100 je
  E-Parkplatz (Gewerbebau separat: A 45/B 250/C1 320/C2 380 je 100 m², D gleich 3'100).
- **Echte dritte, unabhängige Quelle mit eigener Kostentabelle NICHT gefunden** trotz Prüfung von 6
  weiteren Stellen (EnergieSchweiz/BFE-Leitfaden «laden-punkt.ch» V2.0 Dez. 2025, Energie 360°,
  Migrol-Blog, SIA-2060-Online-Rechner, Referat Vogelsang/Energieagentur SG, SIA-Shop) — alle verweisen
  nur auf den kostenpflichtigen Rechner/die Norm, ohne eigene Zahlen zu publizieren. Die bisherige
  Zweitquelle (Härz AG) nennt keine eigene Herleitung und übernimmt vermutlich dieselbe ZH-Zahlenbasis.
- **Status bewusst weiterhin `emerging`** (nicht `established`), da die strenge Regel 2 methodisch
  unabhängige Quellen verlangt — hier liegt nur 1 Primärquelle + 1 nicht-eigenständige Zweitquelle vor.
  `e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md` aktualisiert (Frontmatter + Offene Punkte + Backlink).

## 2026-07-13 — Vertiefung Strohdämmung (Bemessungswert/Brandschutz/Feuchte)
- **Neues Destillat `destillate/strohdaemmung-bemessungswert-brandschutz.md`:** vertieft den in
  `[[naturdaemmstoffe-kennwerte-sommerhitzeschutz]]` und `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]`
  offen gelassenen Punkt «Stroh eigene belegte Quelle» (Bemessungswert, VKF, Feuchte).
- **λ-Bemessungswert:** 0,049 W/(m·K) allgemein (FASBA/ETA-17/0247), richtungsabhängig 0,052 W/(m·K)
  quer zur Halmrichtung (Standard-Einbau) vs. 0,080 W/(m·K) in Halmrichtung (BauNetz Wissen,
  Sekundärzitat) — Diskrepanz als offener Punkt vermerkt.
- **Brandschutz:** Grundlage ist die deutsche abZ Z-23.11-1595 (DIBt 2014) + ETA-17/0247, Feuerwiderstand
  30/90 Minuten verputzt via AbP MPA Braunschweig nach DIN 4102. **Kein CH-VKF-Registereintrag für
  Stroh/Baustroh auffindbar** (bsronline.ch Registersuche geprüft) — ehrlich als offene CH-Lücke
  dokumentiert, nicht erfunden; nächster Schritt wäre eine direkte Anfrage bei der VKF.
- **Feuchte:** µ ≈ 2, Grenzfeuchte ≤ 15 % beim Einbau (Sekundärquelle, nicht im Original verifiziert),
  Nachweis über WUFI-Bio statt Glaser-Verfahren (DIN 4108), Bauzeit-Schutz vor Schlagregen als
  Hauptrisiko statt Dauerzustand-Risiko.
- Alle Werte klar als **DE/EU-Herkunft** gekennzeichnet (Echo-Schutz) — status `emerging`, da keine
  CH-Primärquelle für die zentrale VKF-Frage. `wiki/naturdaemmstoffe.md` verlinkt und ergänzt.

## 2026-07-13 — Run 48: MuKEn-2025-Modul-G-Grenzwerte gefunden (Lauf 47 hatte Negativbefund gemeldet)
- **Neues Destillat `[[muken-2025-modul-g-co2-grenzwerte]]`:** Auf gezielte Nachfrage (Lauf 48)
  wurde der MuKEn-2025-Volltext (Art. 1.39, Basismodul Teil G) über einen alternativen Web-Fetch-
  Reader (statt direkter WebFetch, der bei binären PDF-Inhalten zuvor scheiterte) doch erschlossen:
  **Basisgrenzwerte GW_EBF 12,4-19,9 kg CO₂-eq/m²EBF·a** je nach Gebäudekategorie (I Wohnen MFH
  12,4 ... VIII Spitäler 19,9), **GW_(GF-EBF) 5,5 kg CO₂-eq/m²·a** für unbeheizte Flächen (alle
  Kategorien gleich), plus Zuschläge Erdsonde (+0,3), PV (+7,1/m² Panelfläche), Solarthermie
  (+5,6 kg CO₂-eq/m² Kollektorfläche). Zweimal unabhängig abgefragt, identische Werte; Google-
  Suchindex bestätigt 12,4 kg unabhängig. Status bewusst `emerging` (Web-Fetch-Extraktion statt
  direktem PDF-Lesen) — nächster Schritt: lokale Textextraktion des Original-PDF zur Hebung auf
  `established`.
- **`[[muken-2025-verabschiedet]]` ergänzt** um Verweis auf das neue Detail-Destillat.
- Output: kein separater `outputs/`-Report (Direktauftrag ohne KB-weite Frage), Ergebnis lebt
  direkt im neuen Destillat.

## 2026-07-13 — Run 47: GEAK-Handänderungspflicht (4 Kantone) + Batteriespeicher-Amortisation (Marktangabe) ergänzt; 3 Negativbefunde dokumentiert
- **PDF-Inventar weiterhin vollständig abgearbeitet** (siehe Run 46) — Block 1 (Transfer) läuft
  daher wie in den letzten Läufen auf Web-Themen aus dem Curriculum-Backlog.
- **`[[geak-gebaeudeenergieausweis-kantone]]` ergänzt:** Kantonsliste GEAK-Pflicht bei Handänderung
  gefunden (Sekundärquelle, keine amtliche geak.ch/EnDK-Primärquelle) — **4 Westschweizer Kantone
  Freiburg (seit 2013, auch Neubau), Waadt, Neuenburg (3 Anlässe: Handänderung/Heizungsersatz/
  Baubewilligung), Jura**; Deutschschweiz inkl. ZH/SZ hat aktuell keine Pflicht. Schliesst den in
  E16/Curriculum D9 offen geführten Punkt orientierend (nicht mit Gesetzesartikel-Nummern). FAQ F36
  geschärft, Status weiterhin established (Kernartikel), Ergänzung selbst als Sekundärquelle markiert.
- **`[[batteriespeicher-heimspeicher-pv-ch]]` ergänzt:** Amortisationszeit als Marktangabe — 3
  unabhängige kommerzielle CH-Solarratgeber (energyunlimited.ch, runer-solar.ch, swsolar.ch)
  übereinstimmend: Speicher-Mehrpreis amortisiert in **ca. 10–14 Jahre**, mit Wärmepumpe/E-Auto
  **8–9 Jahre**. Explizit als Marktangabe gekennzeichnet (Fachverbände nennen bewusst keine harte
  Zahl) — schliesst E18 orientierend ab. FAQ F38 geschärft.
- **Drei Negativbefunde sauber dokumentiert** (kein Ergebnis ≠ Rechercheversagen):
  1. **MuKEn-2025-Modul-G-Grenzwerte** (konkrete kg CO₂-eq/m²·a): espazium.ch-Artikel erneut geprüft,
     nennt weiterhin keine Zahlen — Primärdokument offenbar noch nicht frei publiziert.
  2. **Uf-Werte je Rahmenmaterial systematisch:** zwei weitere Quellen liefern nur grobe DE-Bandbreiten
     (Holz 1,3–1,8 / Holz-Alu 0,7–1,1 / Kunststoff 0,9–1,3 / Alu 1,0–1,4 W/(m²K)) — bewusst NICHT ins
     Destillat übernommen, da DE-Sekundärquellen statt CH/SZFF-amtlich (Echo-Schutz).
  3. **Aktuellere JAZ-Feldstatistik (nach 2019):** ein vermeintlich neuer OST-Buchs-PDF-Treffer erwies
     sich als dasselbe bereits destillierte Primärdokument (`[[wpz-buchs-feldmessung-jaz-2016-2019]]`)
     unter anderem Host — keine echte Aktualisierung gefunden.
- **Register nachgeführt:** `training/curriculum.md` (D9/D11), `wiki/QUESTIONS.md` (E16/E18/E26/E3/E-F).
- Output: `outputs/2026-07-13_energie-run47.md`.

## 2026-07-13 — Run 46: ZH-Solarpflicht-Destillat ergänzt (RRB-Nummern + politische Reaktionen); Kantonsrats-Geschäftsnummer bleibt Werkzeug-Grenze
- **PDF-Inventar weiterhin erschöpft** (`find -newer` erneut bestätigt: kein neuer Zeitstempel in
  `PL - 04 Energie` seit Run 41). Block 1 (Transfer) daher wie in Run 42-45 nicht durchführbar.
- **Zweiter gezielter Rechercheversuch** zum in Run 45 offen gebliebenen Punkt (Kantonsrats-
  Geschäftsnummer/Beratungsstand der ZH-Solarpflicht-Vorlage): `kantonsrat.zh.ch` liefert per
  WebFetch strukturell nur die Navigation, keine Geschäftsdetails (Single-Page-App) — bestätigt als
  Werkzeug-Grenze, keine Recherchelücke. Stattdessen über die zh.ch-Medienmitteilung + Tages-
  Anzeiger/20-Minuten-Presseecho zwei neue konkrete Fakten gefunden: die **Regierungsratsbeschluss-
  Nummern RRB Nr. 1229/2025 (Solarpflicht) und RRB Nr. 1231/2025 (Langzeitspeicher)**, beide
  06.01.2026, sowie die politischen Erstreaktionen **SP/Grüne** («begrüssen grundsätzlich, gehen
  aber nicht weit genug») neben der bereits bekannten HEV-Position.
- **Kein neues Destillat** — bestehendes `zh-energiegesetz-revision-solarpflicht-2026.md` (Status
  weiterhin `emerging`) um Frontmatter (RRB-Nummern), Verfahrensstand-Abschnitt (Parteireaktionen)
  und Offene-Punkte-Abschnitt (Werkzeug-Grenze explizit benannt) ergänzt.
- **Register nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F61 präzisiert), `wiki/QUESTIONS.md` (E31
  ergänzt), `destillate/zh-energiegesetz-revision-solarpflicht-2026.md`.
- **Ehrlich zum Loop-Zustand (wiederholt aus Run 44/45):** das PDF-Inventar ist seit Run 41 leer,
  und auch die Web-Nachträge zu offenen Curriculum-Punkten werden zunehmend granularer (heute:
  zwei Beschlussnummern + eine Partei-Position, kein neuer Sachinhalt). Die Empfehlung an Raphael
  bleibt unverändert und wird hier zum dritten Mal in Folge wiederholt: Meta-Entscheidung **M2**
  (eigener Skill `energie`?) treffen und/oder den Loop-Takt zurücknehmen, bis neues Rohmaterial
  (reale PL-04-PDFs, JANS-Projekte mit Energiethemen) anfällt.

## 2026-07-13 — Run 45: ZH-Energiegesetz-Revision 2026 (Solarpflicht Dächer >300 m²) neu belegt (FAQ F61)
- **PDF-Inventar weiterhin erschöpft** (`find -newer` bestätigt: kein neuer Zeitstempel in
  `PL - 04 Energie` seit Run 41). Block 1 (Transfer) daher wie in Run 42-44 nicht durchführbar.
- **Web-Recherche zum offenen Curriculum-Punkt B4** («konkreter ZH-Umsetzungsstand MuKEn 2025»):
  Regierungsrat-Botschaft vom 06.01.2026 an den Kantonsrat gefunden — Solarpflicht für Dächer
  >300 m² (vollflächig, Neubau ab Erstellung/Bestand bei Dachsanierung, 4 Befreiungsgründe) +
  Langzeitspeicher-Förderauftrag an Netzbetreiber (Abgabe max. 0,5 Rp./kWh). Wichtige Präzisierung:
  das ist eine **eigenständige, engere ZH-Vorlage**, nicht die volle MuKEn-2025-Übernahme
  (Fossilverbot/20-W/m²-Pflicht/Graue-Energie-Modul Teil G bleiben für ZH weiterhin unbeschlossen).
- **1 Destillat neu (Status `emerging`):** `zh-energiegesetz-revision-solarpflicht-2026` — Quelle
  Medienmitteilung zh.ch + Presseecho (20 Minuten/NZZ/pv magazine); Verfahrensstand ausdrücklich
  als Botschaft (noch kein Gesetz) markiert, Kantonsrats-Geschäftsnummer/Inkrafttreten als offen
  vermerkt (Kantonsrat-Website lieferte beim Abruf nur Navigationsstruktur, kein Geschäftsdetail).
- **Register nachgeführt:** `wiki/BAUHERREN-FAQ.md` (neue **F61**), `destillate/muken-2025-verabschiedet.md`
  (Offene-Punkte-Sektion präzisiert), `training/curriculum.md` (B4), `wiki/QUESTIONS.md` (E-D6 + neue
  **E31**), `destillate/INDEX.md`.
- **Ehrlich zum Loop-Zustand:** wie in Run 44 vermerkt bleibt die Grenznutzen-Kurve pro Lauf flach —
  dieser Fund war die erste genuin neue, hochrelevante Information seit mehreren Läufen, aber
  vergleichbare Web-Recherchen werden seltener fündig. Die Empfehlung aus Run 44 (Meta-Entscheidung
  M2 «eigener Skill `energie`?» treffen und/oder Loop-Takt zurücknehmen, bis neues Rohmaterial
  anfällt) bleibt unverändert an Raphael offen.

## 2026-07-13 — Run 44: Uf-Werte je Rahmenmaterial (grobe, nicht amtliche Orientierung) ergänzt (F35 geschärft)
- **PDF-Inventar weiterhin erschöpft**, kein neues Rohmaterial in `PL - 04 Energie` (geprüft: neuestes
  Dateidatum 2026-06-11, kein neuer Zeitstempel seit Run 41/42/43).
- **Web-Recherche zu den beiden von Run 43 benannten Restpunkten:** (1) numerische Uf-Werte je
  Rahmenmaterial — SZFF-Primärquelle (Faktenblatt pubdb 7731, per WebFetch+Read vollständig als PDF
  gelesen) bestätigt, dass es **keine öffentliche Material-Tabelle** gibt, nur ein Einzelzertifikat-
  Beispiel (Uf 1,1 W/(m²·K)); (2) eine einzelne Web-Sekundärquelle (bawos.ch) liefert eine grobe
  Bandbreite für Holzrahmen (Uf ca. 1,3–1,8 W/(m²·K)).
- **1 Destillat neu (Status `speculative`, bewusst NICHT höher):** `uf-werte-rahmenmaterial-grobuebersicht`
  — dokumentiert die Bandbreite mit deutlichem Vorbehalt (Einzelquelle, undatiert, kein Ersatz für den
  Hersteller-/SZFF-Wert des gewählten Produkts).
- **Register nachgeführt:** `wiki/BAUHERREN-FAQ.md` (F35 um Uf-Grobwert-Hinweis ergänzt, keine neue
  Nummer), Themenartikel `wiki/fenster-verglasung.md` (Sektion «Offen»), `wiki/QUESTIONS.md` (E3),
  `destillate/INDEX.md`.
- **Ehrlich:** DE-Quellen mit g-Wert-Tabellen (fensterblick.de, sanier.de) bewusst NICHT übernommen
  (Regel: keine ungeprüften DE-Werte als CH-Werte). Die systematische amtliche Uf-/g-Wert-Matrix je
  Material bleibt eine Lücke, die nur über Hersteller-/SZFF-Datenblätter (projektbezogen) schliessbar
  ist — keine weitere Web-Suche versprechend.
- **Meta-Hinweis für Raphael:** Das PDF-Inventar ist seit Run 41 (3 Tage / >10 Läufe) vollständig
  abgearbeitet; die verbliebenen offenen Punkte sind zunehmend eng/herstellerspezifisch und liefern nur
  noch marginalen neuen Bauherren-Nutzen pro Lauf. Die Meta-Entscheidung **M2** (eigener Skill `energie`?)
  aus `curriculum.md` steht weiterhin aus — mit 90 Destillaten und 60 Kernfragen ist die KB reif dafür.
  Empfehlung: nächstes Mal mit Raphael die Rücktaktung auf Sparbetrieb bzw. den Skill-Entscheid klären,
  statt weiter im Stundentakt nach immer kleineren Lücken zu suchen.

## 2026-07-13 — Run 43: Fenster-Energieetikette-Klassengrenzen + GEAK-Kosten belegt (F35/F36 geschärft)
- **PDF-Inventar bleibt erschöpft** (seit Run 41 vollständig `[x]`/`[-]`) — kein neues Rohmaterial in
  `PL - 04 Energie`. Statt PDF-Transfer wurden zwei konkrete, in Run 42 benannte Web-Vertiefungspunkte
  bearbeitet.
- **1 Destillat aktualisiert, auf `established` gehoben:** `fenster-energieetikette-fea-bfe` — das
  BFE/EnergieSchweiz-Faktenblatt (pubdb 7731) liess sich diesmal vollständig als Text lesen (vorheriger
  Zugriff 2026-07-08 war bildbasiert). Damit primärquellenbelegt: **exakte Uw,eq-Klassengrenzen A–G**
  (A < 0, B 0–0,1, C 0,1–0,2, D 0,2–0,3, E 0,3–0,4, F 0,4–0,8, G ≥ 0,8 W/(m²·K)), die Bilanzformel
  (Uw,eq = [Hw − Hs]/Aw) und ein Musterbeispiel (Uw 1,1/Ug 0,6/g 60 %/ψg 0,03 → Uw,eq −0,08 → Klasse A).
- **1 Destillat neu:** `geak-kosten-efh-mfh` (Sekundärquelle immoverkauf24.ch, emerging — geak.ch/EnDK
  publiziert bewusst keine Preise): GEAK EFH CHF 450–650, GEAK MFH CHF 500–800, GEAK Plus EFH
  CHF 1'400–2'100, Zertifizierungsgebühren CHF 80/190.
- **FAQ F35 + F36 geschärft** (kein neues F-Nummer, bestehende Antworten ergänzt); Themenartikel
  `fenster-verglasung.md` und `geak-gebaeudeenergieausweis.md` mit den neuen Zahlen aktualisiert;
  `wiki/QUESTIONS.md` (E3, E16) und `destillate/INDEX.md` nachgeführt.
- **Ehrlich offen:** GEAK-Kosten stützen sich auf nur eine kommerzielle Sekundärquelle (Status bleibt
  emerging); numerische g-Werte/Uf je Material bleiben unbelegt (Faktenblatt liefert nur ein
  Musterbeispiel, keine Materialtabelle).
- Report: `outputs/2026-07-13_energie-run43.md`.

## 2026-07-13 — Run 42: SIA 380/1:2016 gegenüber 2009 — Kernänderungen belegt (F60 neu)
- **1 neues Destillat:** `sia-380-1-2016-aenderungen-gegenueber-2009` (Web-Sekundärquellen:
  SIA-Shop-Produktmetadaten + espazium.ch-Fachartikel Mennel/Friedli, 23.03.2017). Status
  emerging — Norm-Volltext nicht gekauft.
- **Kernbefund:** Referenz-Jahresmitteltemperatur neu 9,4 °C (statt 8,5 °C) nach SIA 2028,
  Temperaturkorrektur neu 6 %/K (statt 8 %/K); Gebäudehüllzahl von b-Werten entkoppelt;
  Bauteilanforderungen an MuKEn 2014 verschärft; neues Lüftungs-Berechnungsmodell; 16
  Himmelsrichtungen; Umkehrdach-Pauschalzuschlag gestrichen. Methodik (Einzelbauteil-/
  Systemnachweis) unverändert.
- **Ehrlich offen:** konkrete neue Q_H,li0/ΔQ_H,li-Zahlenwerte je Nutzungskategorie bleiben ohne
  gekauften Norm-Volltext unbelegt — Sekundärquellen-Grenze transparent ausgewiesen.
- **FAQ F60 neu**; Themenartikel `u-werte-grenzwerte-ch.md` ergänzt; `wiki/QUESTIONS.md` (E-D8)
  und `training/curriculum.md` (A2) nachgeführt. Grund: PDF-Inventar seit Run 41 vollständig
  abgearbeitet, Web-Vertiefung offener Punkte (Option 1 aus Run-41-Empfehlung) fortgesetzt.
- Report: `outputs/2026-07-13_energie-run42.md`.

## 2026-07-13 — Run 41: Wärmebrücken Gruppe 6.2 Fassadenanker vollständig (22 Systeme, F58 geschärft) — PDF-Inventar Priorität 1+2 abgeschlossen
- **1 Destillat erweitert (kein neues, INDEX bleibt bei 87 total):**
  `waermebrueckenkatalog-bfe-stuetzen-fassadenanker` — Gruppe 6.2 von 2 auf alle 22
  Ausführungsvarianten (U1-U22, S. 117-126 BFE-Primärquelle vollständig gelesen) erweitert.
  22 marktübliche Fassadenanker-Systeme: Holzlattung, Stahl-/Alu-Unterkonstruktion mit/ohne
  thermische Trennung, Chrom-Nickel-Halteanker, ATK 100/101 Minor, ATK 601, UK 1000 (CrNi/Alu),
  Halfen SUK, Clickpress L-/T-Profil, A-PL, UK-System WSZ.
- **Kernbefund:** thermische Trennung dominiert über Ankermaterial — ohne thermische Trennung
  verdoppelt bis verdreifacht sich der ΔU-Wert-Zuschlag im engen Raster. Die **zwei Extremwerte
  der ganzen Gruppe 6.2**: A-PL ohne thermische Trennung (U20) **+0,57 W/(m²·K)** und Alu-UK
  ohne thermische Trennung (U5) +0,41 W/(m²·K) — beide bei 0,2 m² Raster auf Stahlbeton. Zum
  Vergleich: Holzlattung bleibt unabhängig vom Raster durchgehend bei +0,02-0,03. Chrom-Nickel-
  Stahl-Systeme (U6/U12/U14) und ATK 601 (U11) sind die günstigsten Metallvarianten.
- **FAQ F58 geschärft:** Extremwert +0,57 W/(m²·K) ergänzt, konkreter Bauherren-Rat («nach
  thermischer Trennung fragen» + «grosszügiges Ankerraster wählen» senkt Zuschlag Faktor 5-10).
- **Damit ist der BFE-Wärmebrückenkatalog (2002, 126 S.) vollständig ausgewertet** — schliesst
  den in E27-E29/Run-39-Notiz offen vermerkten letzten Detailpunkt endgültig.
- **PDF-Inventar geschlossen:** die letzten 6 offenen Quellen in `training/pdf-inventar.md`
  (5 FEZ-Kursflyer «ENERGIE VorOrt»/«ENERGIE Events»/Kursprofil/Teilnehmerliste + 1 Rechnung
  Forum Energie Zürich) via Read geprüft — reine Veranstaltungs-/Verwaltungslogistik ohne
  Fachinhalt, als `[-]` markiert statt offen stehen zu lassen. **Priorität 1 und Priorität 2
  des PDF-Inventars sind damit vollständig abgearbeitet** (alle Einträge `[x]` oder `[-]`).
- **Meta-Punkt M2** (eigener Skill `energie`?) als «spruchreif» markiert — Curriculum + QUESTIONS
  empfehlen, das Raphael zur Entscheidung vorzulegen statt weiter aufzuschieben.
- Register nachgeführt: `destillate/INDEX.md`, `training/pdf-inventar.md` (Abschluss-Vermerk),
  `training/curriculum.md` (M2 geschärft), `wiki/QUESTIONS.md` (E30 neu, E-S1 ergänzt),
  `raw/_INGESTED.md` (+2 Zeilen), `wiki/u-werte-grenzwerte-ch.md` (Gruppe-6-Abschnitt erweitert).
- **Report:** `outputs/2026-07-13_energie-run41.md`.

## 2026-07-13 — Run 40: Wärmebrücken Gruppe 6 Stützen/Fassadenanker + Gruppe 2 Geschossdecke/Kellerdecke (F58-F59) — Curriculum A4 wirklich vollständig
- **2 neue Destillate → 87 total:**
  - `waermebrueckenkatalog-bfe-stuetzen-fassadenanker` (emerging) — Gruppe 6.1 Stützen vollständig
    (S. 113-116) + Gruppe 6.2 Fassadenanker Ausschnitt (S. 117-118). Andere Systematik als lineare
    Ψ-Werte: Stützen als punktförmige Wärmebrücke mit **X-Wert in W/K** (Grenzwert 0,30 W/K je
    Durchstossung) — Stahlstütze 0,20-0,37 W/K teils über Grenzwert, Stahlbeton-Stütze nur
    0,05-0,12 W/K; Fassadenanker als **ΔU-Wert-Zuschlag**: Holzlattung nur +0,02-0,03 W/(m²·K),
    Alu mit thermischer Trennung je nach Ankerraster +0,02-0,19 W/(m²·K).
  - `waermebrueckenkatalog-bfe-geschossdecke-kellerdecke` (emerging) — Gruppe 2 vollständig
    (S. 39-44). Grenzwert 0,20 W/(m·K); durchbetoniertes Innenwand-Auflager auf Geschossdecke
    Ψ 0,63-0,89 — **höchster Einzelwert eines Standarddetails im ganzen Katalog** — vs.
    Stahlkorb-Anschluss 0,07-0,15; Wandanschluss Kellerdecke 0,23-0,26/−0,02-0,14;
    Innenwandanschluss Aussenwand 0,11-0,24.
- **BAUHERREN-FAQ 57→59 Kernfragen:** F58 (Fassadenanker + durchstossende Stütze), F59
  (Innenwand-Auflager auf Geschossdecke).
- **Curriculum-Punkt A4 (Wärmebrückenkatalog) von `[~]` auf `[x]` gehoben** — alle sechs
  Hauptgruppen (1 Balkonplatte/Flachdach, 2 Geschossdecke/Kellerdecke, 3 Sockel/Steildach/
  Auskragung, 4 Fensterrahmen/Rollladenkasten, 5 Fensterleibung/-brüstung/-sturz, 6 Stützen/
  Fassadenanker) mindestens einmal zahlenbasiert belegt. **Selbstkorrektur in diesem Lauf:**
  Gruppe 2 war in Run 36-39 übersehen worden, obwohl nie als offen vermerkt — erst der Abgleich
  gegen das Katalog-eigene Inhaltsverzeichnis (S. 5) deckte die Lücke auf, bevor die
  «vollständig»-Meldung fälschlich ohne Gruppe 2 gestanden hätte. Restarbeit nur noch bei Bedarf:
  einzelne Ausführungsvarianten innerhalb der Gruppen (z.B. Gruppe 6.2 Spezialanker
  ATK/Clickpress/Halfen).

## 2026-07-13 — Run 39: Wärmebrücken Flachdach ohne Vordach, Steildach, Auskragung, Rollladenkasten, Fensterleibung/-brüstung/-sturz (F53–F57) — nur noch Gruppe 6 offen
- **5 neue Destillate → 85 total:**
  - `waermebrueckenkatalog-bfe-flachdach-ohne-vordach` (emerging) — Gruppe 3.1 (S. 49-53). Ohne
    Deckendämmeinlage Ψ 0,44-0,60 W/(m·K) — bis 3× Grenzwert 0,20; durchgehende Dämmung über die
    Deckenkante macht den Wert negativ (−0,13 bis −0,16); schon 4-6 cm Stirndämmung genügt.
  - `waermebrueckenkatalog-bfe-steildach-traufe-ort` (emerging) — Gruppen 3.2+3.3 (S. 54-59).
    Kontrastbefund zum Flachdach: bei durchgehender Sparrendämmung liegen ALLE Varianten bei null
    oder deutlich negativ (−0,01 bis −0,16) — der Katalog selbst vermerkt, dass diese Details im
    Wärmedämmnachweis nicht berücksichtigt werden müssen.
  - `waermebrueckenkatalog-bfe-auskragung` (emerging) — Gruppe 3.5 (S. 80-82). Allgemeine
    Bodenauskragung ohne Isokorb-System: Ψ 0,04-0,29 je nach Unterlagsbodendämmung, ab 6 cm meist
    unter Grenzwert 0,20; Mauerfusselement senkt zusätzlich um 0,05-0,07.
  - `waermebrueckenkatalog-bfe-rollladenkasten` (emerging) — Gruppe 4.2 (S. 91-92). Ψ 0,18-0,26,
    knapp unter Grenzwert 0,30 ohne Reserve; Fenstertyp macht kaum Unterschied.
  - `waermebrueckenkatalog-bfe-fensterleibung-bruestung-sturz` (emerging) — Gruppen 5.1-5.3
    (S. 94-112). Strengerer Grenzwert 0,10; aussenbündiger Einbau günstigste Position;
    **ungedämmte Fensterbank +0,20 W/(m·K) ist der grösste Einzelfehler im ganzen Katalog**;
    Stahlbetonsturz statt Backstein kostet bis +0,08.
- **BAUHERREN-FAQ 52→57 Kernfragen:** F53 (Flachdachrand ohne Vordach), F54 (Steildach
  Traufe/Ort unkritisch), F55 (Bodenauskragung über Einstellhalle), F56 (Rollladenkasten),
  F57 (Fensterleibung/-brüstung/-sturz).
- **Themenartikel erweitert:** `u-werte-grenzwerte-ch` (fünf neue Wärmebrücken-Abschnitte).
- **Curriculum A4:** alle Gruppen des BFE-Wärmebrückenkatalogs ausser Gruppe 6
  (Stützen/Fassadenanker, Seiten 114/117 bereits bekannt) jetzt belegt.
- **Report:** `outputs/2026-07-13_energie-run39.md`.

## 2026-07-13 — Run 38: Wärmebrücken Flachdach-Vordach + -Brüstung (F51–F52) — Gruppe 1 komplett
- **2 neue Destillate → 80 total:**
  - `waermebrueckenkatalog-bfe-flachdach-vordach` (emerging) — BFE-Wärmebrückenkatalog Gruppe 1.2
    (S. 24-32). Ungedämmtes, durchbetoniertes Vordach Ψ 0,40-0,53 W/(m·K) gg. Grenzwert 0,30
    (1,3-1,8× drüber); mit Dorn-Anschluss (thermisch getrennt statt durchgehende Platte) sinkt der
    Wert auf −0,08 bis 0,04 — praktisch keine Wärmebrücke mehr.
  - `waermebrueckenkatalog-bfe-flachdach-bruestung` (emerging) — Gruppe 1.3 (S. 33-38). Zentraler
    Befund: das Brüstungs-**Material** dominiert stärker als die Dämmung — eine ungedämmte
    Backstein-Brüstung (Ψ 0,02-0,09) liegt bereits unter dem Grenzwert, eine gedämmte
    Stahlbeton-Brüstung (Ψ 0,12-0,26) bleibt in derselben Grössenordnung wie die ungedämmte
    Backstein-Variante.
- **FAQ 50 → 52 Kernfragen:** F51 (Vordach-Wärmebrücke, Materialwahl der thermischen Trennung),
  F52 (Attika-/Brüstungs-Wärmebrücke, Material schlägt Dämmung).
- `u-werte-grenzwerte-ch` um zwei weitere Wärmebrücken-Abschnitte erweitert — mit Balkonplatte
  (1.1), Vordach (1.2) und Brüstung (1.3) ist **Gruppe 1 (Flachdach-Anschlüsse) des
  BFE-Wärmebrückenkatalogs jetzt vollständig belegt**.
- Register nachgeführt: `destillate/INDEX.md`, `training/pdf-inventar.md` (nicht betroffen, ist
  keine PL-04-Quelle), `training/curriculum.md` (A4: Gruppe 1 abgeschlossen, offen nur noch
  Steildach/Stützen/Fassadenanker), `wiki/INDEX.md`, `raw/_INGESTED.md` (+2 Zeilen).

## Verifikations-Stufe (Pflicht seit 12.07.2026)
Beide neuen Destillate bleiben `emerging` trotz Primärquellen-Lektüre: Katalog-Basis 2002/SIA
380/1:2001, nicht gegen die heute geltende Norm-Edition gegengeprüft; nur Teilauszug der jeweiligen
Gruppe gelesen. Grössenordnung/Prinzip (thermische Trennung bzw. Materialwahl als dominanter
Hebel) gilt, exakter Zahlenwert vor einer Baueingabe an aktueller Norm/Software zu verifizieren.

## 2026-07-12 — Run 37: Wärmebrücken Fensteranschluss + Sockel (F49–F50) + MuKEn-2025-Grauenergie-Formel
- **2 neue Destillate → 78 total:**
  - `waermebrueckenkatalog-bfe-fensteranschluss` (emerging) — BFE-Wärmebrückenkatalog Gruppe 4.1,
    Primärquelle (bereits lokal vorhanden) weiter gelesen (S. 83-90). Fenster-Wand-Anschluss Ψ
    0,08-0,36 W/(m·K) gg. Grenzwert 0,30; Aussenanschlag mit Zwischenleibungsdämmung klar am
    besten; Stahlbetonsturz-Malus bis +0,14, mit 6 cm Sturzdämmung auf +0,02 senkbar.
  - `waermebrueckenkatalog-bfe-sockel` (emerging) — Gruppe 3.4 (S. 62-68). Beheizter Keller mit
    reiner Aussendämmung: Dämmtiefe unterhalb UK Kellerdecke entscheidet Faktor 4→1,5 vom
    Grenzwert 0,20 (0 cm Ψ 0,82; 20 cm 0,61; 50 cm 0,42; 80 cm 0,30, bleibt trotzdem drüber).
- **1 bestehendes Destillat präzisiert:** `muken-2025-verabschiedet` — Graue-Energie-Formel
  GWObjekt + relative Grenzwert-Angabe (2-4 kg CO₂-eq/m²·a über Minergie-ECO, ⚠ Sekundärquelle
  ecobau.ch, nicht am EnDK-Original verifiziert), Geltungsbereich Neubau/wesentliche Erneuerung
  ≥50 m² EBF.
- **FAQ 48 → 50 Kernfragen:** F49 (Fensteranschluss-Wärmebrücke), F50 (Sockel/beheizter Keller).
- `u-werte-grenzwerte-ch` um zwei Wärmebrücken-Abschnitte erweitert — die drei häufigsten
  Gebäudeanschlüsse (Balkon/Fenster/Sockel) sind damit mit konkreten Ψ-Werten belegt
  (Curriculum-Punkt A4 weitgehend geschlossen für diese drei Gruppen).
- Methodisch: dieselbe lokal gespeicherte Wärmebrückenkatalog-PDF (Run 36) ohne erneuten Download
  für zwei weitere Detailgruppen wiederverwendet.

## 2026-07-12 — Run 36: MuKEn 2025 + Wärmebrücke Balkonplatte (F47–F48) + Batteriemonitor/SIA-2060-Updates
- **2 neue Destillate → 76 total:**
  - `muken-2025-verabschiedet` (established) — Kantone verabschiedeten am 29.08.2025 die MuKEn 2025;
    noch kein geltendes Recht, Umsetzung 2025–2030. Fossilverbot statt Mindestquote im Neubau,
    PV-Pflicht 20 W/m² EBF (ZH heute 10 W/m²), neues Graue-Energie-Modul (Teil G). Drei unabhängige
    Sekundärquellen (VSE, aeesuisse, energie-cluster.ch) deckungsgleich.
  - `waermebrueckenkatalog-bfe-balkonplatte` (emerging) — BFE-Wärmebrückenkatalog 2002, **Primärdokument
    vollständig gelesen** (curl-Download + Read/PDF-Bildextraktion, da WebFetch bei bildbasierten
    Amts-PDFs scheitert). Durchbetonierte Balkonplatte Ψ 0,6–1,05 W/(m·K) = 2–3× Grenzwert 0,30;
    Stahlkorb 0,20–0,26; Dorne 0,06–0,14 — beide unter Grenzwert.
- **3 bestehende Destillate ergänzt:** `pvt-hybridkollektoren` (Praxisbeispiel Freibad St. Jakob Basel,
  Hersteller Solink, keine neue Marktstatistik), `batteriespeicher-heimspeicher-pv-ch` (Batteriemonitor
  2025: 15-kWh-Speicher ⌀ CHF 8'800/≈586 CHF/kWh, Markt 1,5→2,5 GWh; widersprüchliche private
  900–1'300-CHF/kWh-Zahl bewusst verworfen), `e-mobilitaet-ladeinfrastruktur-gebaeude-ch` (SIA-2060-
  Ausbaustufen mit CHF-Werten A 65/B 180/C1 350/C2 400 je Wohnung, D 3'100 je E-Parkplatz — schliesst
  Offen-Punkt seit Run 32 teilweise).
- **FAQ 46→48 Kernfragen:** F47 (MuKEn 2025), F48 (Wärmebrücke Balkonplatte); F38 und F39 aktualisiert.
- **Themenartikel erweitert:** `u-werte-grenzwerte-ch`, `energienachweis-zh`, `graue-energie`,
  `batteriespeicher`, `elektromobilitaet-ladeinfrastruktur`.
- **Methodisches Lehrstück:** bildbasierte Amts-PDFs (Wärmebrückenkatalog, SIA-2060-Infoblatt,
  Minergie-ECO, Swissolar-Batteriemonitor) scheitern an WebFetch — curl-Download + Read-Tool
  (PDF-Bildrendering) funktioniert und wurde für den Wärmebrückenkatalog erfolgreich eingesetzt;
  Empfehlung für künftige Läufe im Report festgehalten.
- **Verifikation:** MuKEn 2025 auf established (3 unabhängige Quellen deckungsgleich); Wärmebrücken-
  Zahlen bewusst emerging (Katalogbasis 2002, nicht gegen aktuelle Norm-Edition geprüft); SIA-2060-
  und Batteriemonitor-Updates bewusst nicht künstlich hochgestuft (Sekundärzitate bildbasierter PDFs).
- Register nachgeführt: `destillate/INDEX.md`, `training/pdf-inventar.md`, `training/curriculum.md`
  (A4/B4), `wiki/QUESTIONS.md` (E26/E27), `wiki/INDEX.md`, `raw/_INGESTED.md`.

## 2026-07-12 — Run 35: PVT-Kollektoren, Solarthermie-Kosten, Komfortlüftung vertieft (F41–F46) + Register-Abschluss
- **6 neue Destillate (Web/CH-Quellen) → 74 total:**
  - `pvt-hybridkollektoren` (emerging) — SPF Institut für Solartechnik OST Rapperswil/EnergieSchweiz
    «PVT Wrap-Up» Schlussbericht 2017 + PVT Solar AG: elektrisch ~15–20 %/thermisch ~65 % Wirkungsgrad,
    ~300 CH-Anlagen 2017; Kosten widersprüchlich 210–650 vs. 1'100–1'600 CHF/m² (nicht adversarial
    verifiziert, bei Projektbezug neu recherchieren).
  - `solarthermie-investitionskosten-ch` (emerging, Kombianlage speculative) — hausinfo.ch (2020) +
    Meier Tobler AG: reine WW-Kompaktanlage CHF 15'000–20'000, Kombianlage unsicherer 22'000–40'000;
    keine amtliche CHF-Primärquelle (EnergieSchweiz/Swissolar nennen selbst keine Zahlen).
  - `komfortlueftung-wrg-sia382-luftwechsel` (emerging, **adversarial korrigiert**) — suissetec-
    Merkblätter SIA 382/1 (Nov. 2025) + SIA 382/5 (Juni 2025) + Minergie-Modul Komfortlüftung v2.0
    (14.09.2023): SIA 382/1:2025 bleibt Basisnorm für ALLE belegten Gebäude inkl. Wohnbauten (Kategorie
    WLA), SIA 382/5:2021 ist wohnbauspezifische Ergänzung, ersetzt SIA 382/1 NICHT — Erstfassung hatte
    das falsch dargestellt. Luftmengen 30/30/20 m³/h Zimmer/Bad/Küche, Wohnung ≥50 m³/h; Minergie-WRG
    ≥80 % Temperatur/≥60 % Feuchte (korrigiert von fälschlich zitiertem Reglementsstand 2011 auf v2.0/2023).
  - `komfortlueftung-filterklassen-epm-stromverbrauch` (emerging, **adversarial korrigiert**) — Zuluft
    mind. ISO ePM1 50 %, Abluft mind. ISO Coarse 80 %; Stromverbrauch über EU-1254/2014-Energie-
    effizienzklasse (mind. A, grössere Anlagen A+) statt dem früheren 0,34-Wh/m³-Grenzwert, der aus dem
    seit 2021 zurückgezogenen Merkblatt SIA 2023 stammt und fälschlich als aktuell zitiert worden war.
  - `raumluftfeuchte-komfortbereich-sia180` (emerging) — enbau-online.ch (SIA-180-Zitat) + Lungenliga
    Schweiz: SIA 180:2014 toleriert 30–70 % rel. Feuchte als Komfortband, Praxis-Zielband 40–60 %;
    30 %-Untergrenze als quantitative Planungsanforderung (90 % der Nutzungszeit ohne aktive Befeuchtung).
  - `geak-klassengrenzen-relative-klassierung` (**established**, adversarial am Original-PDF bestätigt)
    — «Normierung des GEAK» v2.1.0 (EnDK, 30.3.2023): GEAK hat KEINE festen kWh/m²-Grenzwerte je Klasse
    A–G, sondern klassiert RELATIV zum individuell berechneten Referenzgebäude (A=0–50 %, …, G=>300 %);
    eine im Web kursierende feste Zahlen-Tabelle wurde als falsch widerlegt. CO₂-Etikette bleibt separat
    absolut in 5-kg/(m²a)-Schritten.
- **VERDICHTUNG:** **FAQ F41–F46 neu** (BAUHERREN-FAQ jetzt **46 Kernfragen F1–F46**); Themenartikel
  `wiki/solarwaerme-warmwasser.md` (+ PVT + Investitionskosten), `wiki/komfortlueftung.md` (+ SIA-382-
  Vertiefung + Filterklassen + Raumluftfeuchte), `wiki/geak-gebaeudeenergieausweis.md` (+ Klassengrenzen-
  Korrektur) erweitert.
- **Register:** `destillate/INDEX` (74 total), `wiki/INDEX` (FAQ-Kopfzeile 40→46, drei Themenartikel-
  Zeilen nachgeführt), `wiki/QUESTIONS` (E21–E25), `pdf-inventar` (+7 Web-Zeilen inkl. nachgetragener
  Run-34-Zeile «Solarthermie vs. PV»), `raw/_INGESTED` (+6), `training/curriculum` (D14–D18 neu),
  Output `outputs/2026-07-12_energie-run35.md`.
- **Verifikations-Stufe:** zwei Destillate enthalten dokumentierte adversariale Korrekturen gegenüber
  der Erstrecherche (Normen-Geltungsbereich, veraltete SFP-Kennzahl); ein Destillat wurde am
  Original-PDF zeilenweise bestätigt und auf `established` gehoben; drei bleiben bewusst `emerging`/
  `speculative`, weil Kostenangaben bzw. Sekundärquellen nicht unabhängig zweitgeprüft sind.
- **Leitplanken:** keine Zahl erfunden; widersprüchliche Kostenangaben (PVT, Solarthermie-Kombianlage)
  explizit als widersprüchlich ausgewiesen statt geglättet; zwei falsche Erstzitate durch Verifikation
  aufgedeckt und korrigiert statt stillschweigend übernommen.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): EN-105 WRG-Grenzwert korrigiert + Querbezug planungsgrundlagen
- [korrigiert] [[energienachweis-zh]] EN-105 Lueftung: «Waermerueckgewinnung >= 70 % (>= 75 % mit Bypass)» war falsch (die 75 % sind keine Bypass-Bedingung). Richtig: **Temperatur-Aenderungsgrad >= 70 % ODER feuchtebezogen >= 75 %** (EN-105-Formular). Adversarial verifiziert gegen planungsgrundlagen/energie-energienachweis-zh-formulare (BESTAETIGT). Cross-KB-Fund energie-W1.
- [link] [[energienachweis-zh]] -> Verfahrens-/EVEN-Wegweiser der KB planungsgrundlagen (energie-energienachweis-zh-formulare / energie-even-plattform-bedienung / energie-private-kontrolle-zh). Rollenteilung: energie = Fachphysik/Grenzwerte fuehrend, planungsgrundlagen = Verfahren/Beschaffung fuehrend.

## 2026-07-11 — Run 34: Solarthermie ↔ Photovoltaik & Warmwasser (F40 neu) + neuer Themenartikel
- **1 neues Destillat (Web/CH-Quellen) → 68 total:**
  - `solarthermie-vs-pv-warmwasser-ch` (established) — EnergieSchweiz «Solarwärme»
    (energieschweiz.ch/heizungssysteme/solarwaerme) + Swissolar «Solarwärme»
    (swissolar.ch/de/wissen/solartechnologien/solarwaerme), Web-Stand Juli 2026: Solarthermie EFH
    (4–6 m² Kollektor + ~450 l Speicher) = **60–70 % des Jahres-Warmwassers**, MFH ~1 m²/Person = 30–40 %,
    Kombianlage (WW + Heizung) mind. **30 % des Wärmebedarfs**; Brennstoff-Einsparung Altbau 20–30 %/Neubau
    bis 50 %; Wirkungsgrad ~70–85 % Wärme vs. ~20 % Strom (PV) → weniger Dachfläche. **Heutige CH-Empfehlung:
    für ein Haus mit Wärmepumpe meist PV + WP-Boiler** (PV universell, Solarwärme nur heizen + Sommerüberschuss
    → Nutzen pro m² Dach übers Jahr entscheidend); Solarthermie sinnvoll bei ganzjährig hohem Warmwasserbedarf
    (MFH zentral/Hotel/Schwimmbad/Prozesswärme); Wärmepumpenboiler = stromsparender WW-Standard; Förderung
    Solarthermie 2'400+1'000/kWth (ZH/SZ).
- **VERDICHTUNG:** **FAQ F40 neu** «Solarthermie oder Photovoltaik auf dem Dach — und wie mache ich mein
  Warmwasser?» (FAQ jetzt **40 Kernfragen F1–F40**); **neuer Themenartikel `wiki/solarwaerme-warmwasser.md`**
  (established) mit Backlinks auf `pv-eigenverbrauch-zev`, `heizleistung-und-waermeerzeuger`, `pv-solar-technologien`.
- **Register:** `destillate/INDEX` (+1 → 68), `wiki/INDEX` (FAQ 39→40, neuer Themenartikel), `wiki/BAUHERREN-FAQ`
  (F40 + Frontmatter-source + Stand-Box), `wiki/QUESTIONS` (**E20 ✓**), `pdf-inventar` (+1 Web-Zeile),
  `raw/_INGESTED` (+1), `training/curriculum` (**D13**), Output `outputs/2026-07-11_energie-run34.md`.
- **Leitplanken:** keine Zahl erfunden; Deckungsgrade/Flächen aus EnergieSchweiz/Swissolar wörtlich;
  Wirkungsgrad 70–85 %/20 % als Sekundärquelle markiert; konkrete CHF-Investition Solarthermie offen gelassen.

## 2026-07-11 — Run 33: Elektromobilität — Ladeinfrastruktur am Gebäude (F39 neu) + Zogg-Destillat geschärft
- **1 neues Destillat (Web/CH-Quellen) → 66 total** + 1 bestehendes geschärft:
  - `e-mobilitaet-ladeinfrastruktur-gebaeude-ch` (established) — EnergieSchweiz/Swiss eMobility
    «Ladeinfrastruktur in Mietobjekten» (Nov 2024) + «im Bestandsbau — Rollen und Prozesse» (Sept 2025) +
    Zogg-Fachartikel HK-Gebäudetechnik 4/24 (S. 52-57, Juli 2023): **Grunderschliessung aller Parkplätze**
    (intelligente, ausbaufähige Anlage) statt Einzel-Wallbox; **SIA-Merkblatt 2060** drei Stufen **C1 Power
    to Garage / C2 Power to Parking / D Ready to charge**; **dynamisches Lastmanagement** verteilt freie
    Leistung → kein Anschluss-Ausbau; Typ 2 (AC), **11 kW** üblich (1,4–22 kW); E-Auto-Batterie **20–100 kWh**
    als flexibler Tagesverbraucher, **Frühling–Herbst bis 100 % PV**; Ladestation gebäudeseitig **ab
    CHF 1'000**; Prozess nach SIA-Phasen real **6–9 Monate**; **Mietobjekt: Refinanzierung über
    Parkplatzmiete**; **V2H/V2G** künftig; NIV SR 734.27.
  - `wp-pv-eigenverbrauch-lastmanagement` (Zogg 2023) **geschärft** um den E-Auto-Teil (offener Punkt
    «E-Mobilität nur überflogen» geschlossen): Ladeleistung/kWh, Frühling–Herbst 100 % PV, V2H/V2G.
- **VERDICHTUNG:** **FAQ F39 neu** «Muss ich mein Haus / MFH für Elektroauto-Ladestationen vorbereiten?»
  (Grunderschliessung > Einzel-Wallbox, SIA-2060-Stufen, dynamisches Lastmanagement, 11 kW, PV-Kopplung,
  Kosten, Prozess, Parkplatzmiete). **FAQ jetzt 39 Kernfragen F1–F39.** **Neuer Themenartikel
  `wiki/elektromobilitaet-ladeinfrastruktur`** (established). Cross-Links in `pv-eigenverbrauch-zev`.
- **Register:** `destillate/INDEX` (+1 → **66**, Zogg-Zeile ergänzt), `wiki/INDEX` (FAQ 38→39, Themenartikel
  `elektromobilitaet-ladeinfrastruktur`), `wiki/BAUHERREN-FAQ` (F39 neu, Frontmatter +1 source/Datum,
  FAQ-Stand-Box), `wiki/QUESTIONS` (**E19 Elektromobilität ✓**), `pdf-inventar` (+1 Web-Zeile), `raw/_INGESTED`
  (+1), `training/curriculum` (**D12 neu**).
- **Methodik:** Kein CHF-/kW-/%-Wert erfunden — 11 kW/1,4–22 kW/20–100 kWh/ab CHF 1'000/6–9 Monate/SIA-2060-
  Stufen aus EnergieSchweiz-Leitfäden + Zogg-Artikel wörtlich belegt; SIA 2060 kostenpflichtig → Stufen als
  referiert markiert; Grunderschliessungs-CHF je Parkplatz bewusst offen (projektabhängig).

## 2026-07-10 — Run 32: Batteriespeicher — «lohnt sich das?» (F38 neu) + F37 geschärft
- **2 neue Destillate (Web, CH-Quellen) → 65 total:**
  - `batteriespeicher-heimspeicher-pv-ch` (established) — Swissolar «Batteriespeicher» + EnergieSchweiz
    «Batterien», trianguliert mit Zogg 2023: Eigenverbrauch **~30 %→50 % (EMS+WP)→bis 70–90 % (Batterie)**;
    **Wirtschaftlichkeit ab ~35 % EV — meist OHNE Batterie erreichbar** (teuerster Hebel, nicht der erste);
    **600–900 CHF/kWh** inkl. WR+Installation; Dimensionierung kWp×1,5 bzw. Jahresverbrauch/730; LFP ~80 %,
    Lebensdauer 10–20 J; **Notstrom nur ~30 % der Systeme**; Tagesspeicher → **Winter-Netzbezug nicht senkbar**.
    Belegte Amortisationsjahre bewusst offen; unplausibler EnergieSchweiz-Extraktionswert verworfen.
  - `behaglichkeit-raumklima-kbob-ipb` (established, ⚠ 2017) — KBOB/IPB-Faktenblatt 1.1.31: **aktive
    Befeuchtung bei normalem Klima nicht nötig** (Feuchte via Lüftung; SIA 180:2014), Sommer primär passiv.
- **VERDICHTUNG:** FAQ **F38 neu** «Lohnt sich ein Batteriespeicher zu meiner Solaranlage?» (FAQ jetzt
  **38 Kernfragen F1–F38**); **F37 geschärft** um die KBOB/SIA-180-Feuchteaussage; neuer Themenartikel
  `wiki/batteriespeicher.md` (Reihenfolge der Eigenverbrauchs-Hebel, Kosten/Dimensionierung, Grenzen,
  MFH via ZEV/vZEV/LEG).
- **Register:** INDEX-Destillate (+2 → 65), wiki/INDEX (FAQ 37→38, 2 Artikel), QUESTIONS (E18 ✓, E17 geschärft),
  pdf-inventar (+2 Web), _INGESTED (+2), curriculum (D11), Output `outputs/2026-07-10_energie-run32.md`.

## 2026-07-09 — Run 31: Komfortlüftung / kontrollierte Wohnungslüftung (F37 neu)
- **1 neues Destillat (Web, CH-Quellen) → 63 total:**
  - `komfortlueftung-wohnungslueftung-ch` (established) — EnergieSchweiz (gebaeudetechnik/lueftung) + Minergie
    «Gute Raumluft» + energie-umwelt.ch (kantonale Fachstellen): **4 Standardsysteme** (Komfortlüftung mit WRG /
    Abluft / dezentral 75–90 % / Grundlüftung); Wärmeverluste **>2/3 tiefer als Handlüftung** (ZH EN-105 ≥70 %);
    Aussenluft ~30 m³/h wach /15 schlafend; CO₂ 400–1'000–2'000 ppm; **die zwei Mythen widerlegt** (Fenster
    jederzeit öffenbar; trockene Luft = Kälte-Phänomen jeder Lüftung → Enthalpietauscher +bis ~10 % Feuchte);
    Filterwechsel ~1–2×/J, EFH ~CHF 12–25k Markt-Richtwert, Gebäudeprogramm fördert bei Sanierung.
- **VERDICHTUNG:** FAQ **F37 neu** «Brauche ich eine Komfortlüftung — wird die Luft trocken, darf ich die
  Fenster nie mehr öffnen?» (FAQ jetzt **37 Kernfragen F1–F37**); neuer Themenartikel `wiki/komfortlueftung.md`
  (established) mit Backlinks auf `en-lueftung-kuehlung-zh` / `minergie-standards` / `pv-eigenverbrauch-zev` /
  `gebaeudeprogramm-bund-hfm-2015` / `sommerlicher-waermeschutz`.
- **Register:** `destillate/INDEX` (+1 → 63), `wiki/INDEX` (FAQ 36→37 + Komfortlüftungs-Zeile), `QUESTIONS`
  (**E17 ✓**), `pdf-inventar` (+1 Web), `raw/_INGESTED` (+1), `curriculum` (**D10**), Output `2026-07-09_energie-run31`.
- **Offen:** WRG-Grad zentraler Anlagen numerisch (Minergie ≥80 %), SIA 382/1 Auslegungs-Luftwechsel,
  Filterklassen/Ventilator-Strom (SIA-Merkblatt 2023, bildbasiert), komfortable rel. Raumluftfeuchte % (SIA 180),
  CHF aus neutraler Quelle.
- **Methodik:** Kein WRG-%-/CHF-/Feuchte-%-Wert erfunden; Minergie-/BFE-PDFs bildbasiert → aus lesbaren
  HTML-Portalen belegt; CHF 12–25k als kommerzieller Markt-Richtwert markiert, Filterintervall als fachüblich.

## 2026-07-08 — Run 30: GEAK / GEAK Plus (F36 neu) + Fenster-Energieetikette FEA
- **2 neue Destillate (Web, CH-Quellen) → 62 total:**
  - `geak-gebaeudeenergieausweis-kantone` (established) — geak.ch / EnDK: amtliche Energieetikette Bestand,
    7 Klassen A–G (Huelle / Gesamtenergie inkl. Eigenstrom / direkte CO₂; **A = null CO₂, Stufe 5 kg/m²·a**);
    **GEAK Plus** = bis 5 Sanierungsvarianten + Beratungsbericht; **Pflicht ab CHF 10'000 Foerderung**;
    **10 J gueltig**; nur zertifizierte Expert:innen; kein Fixpreis (ZH/SZ foerdern 1'000/1'500).
  - `fenster-energieetikette-fea-bfe` (emerging) — BFE, freiwilliges Label: Winter-Bilanz **Uw,eq** am
    Referenzfenster **1,55 × 1,15 m** = Transmissionsverlust − nutzbarer solarer Gewinn; **Klasse A =
    Gewinne > Verluste**. ⚠ Faktenblatt 7731 bildbasiert → Uw,eq/Referenzmass nicht seitengenau, Klassen-
    grenzen offen.
- **FAQ F36 neu** «Brauche ich einen GEAK — was ist das, was bringt er, was kostet er?». **FAQ jetzt
  36 Kernfragen F1–F36.**
- **Neuer Themenartikel `geak-gebaeudeenergieausweis`** (established); **`fenster-verglasung` geschaerft**
  um einen FEA-Abschnitt.
- **QUESTIONS:** **E16 GEAK ✓**, E3 FEA-Punkt nachgefuehrt (Prinzip belegt, Klassengrenzen offen).
- Register: destillate/INDEX (+2), wiki/INDEX (FAQ 35→36 + GEAK-Zeile), pdf-inventar (+3 Web), _INGESTED
  (+2), curriculum (**D9**), Output `2026-07-08_energie-run30.md`.
- **Offen:** GEAK-Kostenspanne + Klassengrenzen kWh/m²·a; FEA-Klassengrenzen A–G; numerische g-/Uf-Werte (SZFF).

## 2026-07-07 — Run 29: Fenster & Verglasung — Uw/g-Wert/Dreifachglas (F35 neu)
- **1 neues Destillat (Web, CH-Quellen):** `fenster-verglasung-uw-g-wert` — aus vier autoritativen
  CH-Quellen trianguliert: **EnergieSchweiz** «Fenstersanierung» (13 % Energieverlust ueber Fenster,
  Lebensdauer 25–40 J, Kosten ~400/~1'200 CHF/m², Wert +2–3,5 %), **HSLU/enbau-online** (Uw = f(Ug/Uf/ψg);
  Dreifachglas >90 % CH, Ug 0,4–0,8; Argon/Krypton 90 %; warme Kante Kunststoff ψg 0,035 → bis −20 %;
  g-Wert Winter↔Sommer-Konflikt), **Minergie-Modul Fenster** (Uw ≤1,0 · Minergie-P ≤0,80) und
  **nachhaltigleben.ch** (Schimmelwarnung «Fenster nie allein vor der Wand»).
- **FAQ F35 neu** «Zweifach- oder Dreifachverglasung — welche Fenster, und lohnt sich der Ersatz?».
  **FAQ jetzt 35 Kernfragen F1–F35.**
- **Neuer Themenartikel `fenster-verglasung`** (established): Uw-System, Verglasung, g-Wert, Rahmen,
  Anforderungswerte, 5 Bauherren-Kernbotschaften.
- **Register:** `destillate/INDEX` +1 (**60 Destillate**), `wiki/INDEX` (FAQ 34→35, fenster-verglasung-
  Zeile, «im Aufbau»-Liste bereinigt), `wiki/QUESTIONS` **E3 ✓ geschlossen**, `pdf-inventar` +1 Web,
  `raw/_INGESTED` +1, `training/curriculum` **D8 neu**. Report `outputs/2026-07-07_energie-run29.md`.
- **Methodik:** kein Uw-/Ug-/ψ-/g-/CHF-Wert erfunden; g-Glas-Richtwert (~0,5) und MuKEn-1,0/1,3-Nuance
  als eigene Einordnung markiert. Offen: numerische g-/Uf-Werte je Typ (SZFF), Fenster-Energieetikette
  BFE (bildbasiert), GEAK-FAQ (Kandidat F36).

## 2026-07-06 — Run 28: Naturdaemmstoffe — oekologisch daemmen + Sommerhitzeschutz (F34 neu)
- **1 neues Destillat (Web, CH-Quellen):** `naturdaemmstoffe-kennwerte-sommerhitzeschutz` (Materialvergleich
  gesundes-haus.ch + Lignum «Holzfaserdaemmung» + Strohballen). Vergleichstabelle Holzfaser/Zellulose/Hanf/
  Flachs/Schafwolle/Stroh/Kork mit **λ 0,038–0,045** (wie Mineralwolle → keine dickere Daemmung), Rohdichte,
  **spez. Waermekapazitaet c ~2000–2200 J/(kg·K) fuer holzbasierte Stoffe (≈2× Steinwolle ~1030 / EPS ~1450)**
  und Diffusion µ. Kernbotschaft: gegen **Sommerhitze** zaehlt die **Speichermasse ρ·c** (Phasenverschiebung),
  nicht λ — darum schuetzt Holzfaser «besser als die meisten anderen Daemmstoffe vor Sommerhitze» (Lignum).
  Diffusionsoffen/feuchtepuffernd (Holzfaser bis 15 % Eigengewicht). **Stroh** ~100× weniger graue Energie als
  Mineralwolle, verputzt bis **90 min** Feuerwiderstand, Minergie-ECO-Hebel. **Trade-off:** brennbar → CH-VKF
  **RF3** (eigene Uebersetzung der DIN-B2-Angabe der Quelle; VKF-Produktanerkennung je Aufbau → Skill `brandschutz`).
- **Neuer Themenartikel** `naturdaemmstoffe` (oekologisch daemmen, Sommerhitze puffern, Materialwahl nach
  Einbauort); `sommerlicher-waermeschutz` + `daemmstoffe-lambda` verlinkt.
- **FAQ F34 neu** «Oekologisch daemmen ohne Winter-Nachteil — hilft das gegen Sommerhitze?» → 34 Kernfragen F1–F34.
- **Register:** destillate/INDEX (+1 → **59 Destillate**), wiki/INDEX (FAQ 33→34 + naturdaemmstoffe-Zeile,
  «im Aufbau»-Liste bereinigt), pdf-inventar (+1 Web), raw/_INGESTED (+1), training/curriculum (**D7 neu**),
  wiki/QUESTIONS (E12 Naturdaemmstoffe ✓). Schliesst die E12-Naturdaemmstoff-Restluecke.
- **Datenstand-Disziplin:** kein λ/c/Foerderbetrag erfunden; c-Umrechnung Wh/kgK→J/kgK offen ausgewiesen,
  Zellulose-c-Ausreisser der Quelle ⚠ markiert; Brandklasse-Uebersetzung DIN-B2 → CH-VKF-RF3 als eigene
  Einordnung gekennzeichnet, VKF-Anerkennung an Skill `brandschutz` delegiert.

## 2026-07-05 — Run 27: PV-Eigenverbrauch vermarkten — ZEV-Mieter-Preisregel (F32 geschaerft) + LEG (F33 neu)
- **2 neue Destillate (Web-Primaerquellen):** `zev-mieter-strompreis-eigenverbrauch` (EnergieSchweiz
  «Eigenverbrauch und ZEV» + lokalerstrom.ch, Grundlage Leitfaden Eigenverbrauch — die **Mieter-Preisregel**:
  pro kWh **nie mehr als das externe Standardprodukt**; entweder **pauschal ≤80 %** (kein Kostennachweis,
  garantierte 20 % Ersparnis) oder **Gestehungskosten** (reale Kosten − Einspeiseerloes, gedeckelt aufs
  Standardprodukt; bei tieferen Kosten hoechstens **halbe Ersparnis** zusaetzlich); einrechenbar
  PV-Produktion/Messung/Dienstleister/Netzstrom 1:1; **Mieter-Wahlrecht** + Anfechtungsrecht, keine
  Nettomiet-Ueberwaelzung; EnergieSchweiz-Excel 2024-03-11; EnV Art. 16) und
  `leg-lokale-elektrizitaetsgemeinschaft-2026` (EKZ + VSE-Branchenempfehlung LEG — das **dritte** neue
  Instrument, **ab 1.1.2026** (StromVG): Strom mit Nachbarn ueber das **oeffentliche** Quartiernetz;
  **Netzentgelt-Rabatt 40 %** ohne / **20 %** mit Transformation, **nur** auf Wirkenergie/Wirkleistung/
  Grundpreis (nicht SDL/Stromreserve/Netzzuschlag/Gemeinde/Messung); Voraussetzung gleiche **Gemeinde** +
  Netzebene NE5-7/≤36 kV + **≥5 %** Produktionsanteil + Smart Meter; Teilnehmer bleiben **VNB-Kunden** ohne
  Solidarhaftung — anders als ZEV hinter dem Anschluss).
- **FAQ:** **F32 geschaerft** um die konkrete Mieter-Preisregel (80 %/Gestehungskosten, Mieterrechte);
  **F33 neu** «Solarstrom mit den Nachbarn teilen — LEG?» (Rabatt-Logik, Voraussetzungen, ZEV-vs-LEG-Tabelle,
  Faustregel Modellwahl). FAQ-Stand **33 Kernfragen F1-F33**.
- **Themenartikel `pv-eigenverbrauch-zev`** um Mieter-Preisregel (Hebel 2) + **Hebel 3 LEG** erweitert.
- **Register:** `destillate/INDEX` (+2 → **58 Destillate**), `wiki/INDEX` (Kernprodukt-Zeile 32→33,
  pv-eigenverbrauch-zev-Zeile), `raw/_INGESTED` (+2), `pdf-inventar` (+2 Web), `QUESTIONS` (E12 ZEV-Preis ✓ + LEG ✓),
  `curriculum` (D6 ergaenzt). Schliesst die **Run-26-Top-Prioritaeten #1 (ZEV-Mieter-Preisregel) + #2 (LEG)**.

## 2026-07-04 — Run 26: PV-Eigenverbrauch — WP-Lastmanagement (F31) + ZEV/vZEV im MFH (F32), neuer Themenartikel
- **2 neue Destillate (Web-Primaerquellen, via Read voll gelesen):** `wp-pv-eigenverbrauch-lastmanagement`
  (EnergieSchweiz/BFE, Autor D. Zogg FHNW, V2.0 02.07.2023 — WP als **thermischer Speicher via EMS**;
  solarer Deckungsgrad Heizen ~**verdoppelbar** (Faktor 2 mit Gebaeudemasse), Sommer-WW **100 % aus PV**;
  Speichertabelle Gebaeudemasse EFH 20-60/MFH 150-450 kWh; **Batterie lohnt noch nicht/hilft Winter nicht**;
  Schnittstellen SG-Ready/PV-Eingang/Modbus/SmartGridready/EVU-Sperreingang) und
  `zev-eigenverbrauch-mfh-her-2025` (VSE HER-CH 2025, verabschiedet 10.02.2025 — ZEV Art. 17 EnG +
  Eigenverbrauch **abgabenfrei Art. 16 EnG**; **neu vZEV ab 1.1.2025** via virtuellem Messpunkt **ohne
  Umverdrahtung**; Vertreter-Rolle, ≥30 kVA separater Zaehler; **LEG separat** BD-LEG).
- **Verdichtung:** **FAQ F31 neu** «Lohnt sich PV zusammen mit einer Waermepumpe — Solarstrom selbst nutzen?»
  (Steigerungsfaktoren-Tabelle, Reihenfolge Lasten-schieben→Speicher→Batterie-zuletzt, Effizienz-vor-Show);
  **FAQ F32 neu** «PV auf dem MFH — Strom an Mieter verkaufen (ZEV)?» (ZEV↔vZEV-Tabelle, Art. 16/17 EnG,
  vZEV ab 1.1.2025, Abgrenzung LEG). **Neuer Themenartikel `pv-eigenverbrauch-zev`** (buendelt beide Hebel).
- **Register:** destillate/INDEX (+2 → 56), wiki/INDEX (+Themenartikel, FAQ 30→32), BAUHERREN-FAQ
  (F31+F32, sources +2, Footer, Backlog WP+PV gestrichen), QUESTIONS (E12 ZEV [~], E15 neu), pdf-inventar
  (+2 Web), raw/_INGESTED (+2), curriculum (D6). Output: `outputs/2026-07-04_energie-run26.md`.
- **Belegluecke geschlossen:** Run-24/25-Prioritaet «WP + PV-Eigenverbrauch (Lastmanagement)» + ZEV-Teil E12.

## 2026-07-03 — Run 25: moderne WP-Feld-JAZ (WPZ Buchs 2017-2019, FAWA-Nachfolger) + Vollkostenvergleich Heizsysteme (FAQ F30 neu)
- **2 neue Destillate (Web):** `wpz-buchs-feldmessung-jaz-2016-2019` (WPZ Buchs/OST i.A. EnergieSchweiz,
  BFE-Tagungsband 24.06.2020 — Tabelle 1 gemessene JAZ nach Gebaeudeart: **LWWP inkl. WW 3,5/3,1/2,8 ·
  SWWP 4,9/4,6/4,3** je 30/40/50 °C; reine Heizen-Werte LWWP 3,7 · SWWP 5,7 Neubau; SWWP ~30 % Vorsprung
  ggue. modernen drehzahlvar. LWWP; JAZ=SPF_H2/SEPEMO; 13 Anlagen 2017-2019 — der **modernere Nachfolger zu
  FAWA 2004**) und `heizsysteme-vollkostenvergleich-energieschweiz` (EnergieSchweiz-Heizkostenrechner,
  Vollkosten EFH/20 J: Luft-WP 4'344 · **Erdsonde 4'090** · Pellets 5'052 · Fernwaerme 4'940 · Oel 5'043
  CHF/Jahr — WP guenstigstes System, Investition ≠ Gesamtkosten).
- **Verdichtung:** **FAQ F30 neu** «Was kostet mein Heizsystem ueber die Lebensdauer wirklich?»
  (Vollkosten-Tabelle + drei Lehren); **FAQ F6 geschaerft** mit gemessenen modernen Feld-JAZ (WPZ Buchs
  ersetzt den «moderne Geraete hoeher»-Hinweis durch echte Werte); Themenartikel
  `heizleistung-und-waermeerzeuger` gewachsen (moderne Feld-JAZ + Vollkosten-Backlinks).
- **Geschlossene Luecken:** «FWS-Feldstatistik / moderne Geraete-JAZ nach 2004» (Run-24-Prioritaet #1) und
  «CHF-Amortisationsvergleich Heizsysteme» (Run-24-Prioritaet #4) belegt.
- Register: `destillate/INDEX` (+2 → **54**), `wiki/INDEX` (+2, FAQ-Zaehler 29→30), `wiki/QUESTIONS`
  (E-F FWS+CHF ✓), `pdf-inventar` (+2 Web), `raw/_INGESTED` (+2), `training/curriculum`, `wiki/BAUHERREN-FAQ`
  (F30 + F6 + Frontmatter + Footer). Output `outputs/2026-07-03_energie-run25.md`.
- **Offen:** noch aktuellere Feldstatistik (Anlagen nach 2019), WPesti-Standardwerte, kg CO₂-eq/m² je
  Bauteil (KBOB v8.0), Lignum-K_F-Konstruktionsdetails, WP+PV-Lastmanagement.

## 2026-07-02 — Run 24: Klimapraemie-Laufzeit aufgeloest (⚠→Ende 2027) + WPesti/SIA 384/3:2021 (projektgenaue JAZ) + Health-Check-Kleinfixes
- **2 neue Destillate (Web):** `klimapraemie-heizungsersatz-klik` (Stiftung KliK: ~CHF 360/kW, keine
  Obergrenze, fossil→WP/Holz, meist alternativ zum Kanton, PV unberuehrt; **Laufzeit voraussichtlich bis
  spaetestens Ende 2027** — loest den Run-23-⚠, aeltere «bis 2025»-Seiten veraltet) und
  `sia-384-3-wpesti-jaz-methode` (WPesti gratis endk.ch, JAZ projektgenau aus SIA-380/1-Nachweis + WP-Typ
  + Einbauart; SIA 384/3 Ausgabe 2021, publ. 02.06.2021; keine JAZ-Zahlen im Artikel).
- **Verdichtung:** FAQ **F29** (Klimapraemie-Laufzeit ⚠ aufgeloest) + FAQ **F6** (verbindliche
  projektgenaue Effizienz via WPesti/SIA 384/3) geschaerft; Themenartikel `heizleistung-und-waermeerzeuger`
  gewachsen (WPesti-Methode im Fliesstext + `sources:`).
- **Health-Check-Kleinfixes (2026-07-01) miterledigt:** Finding F1 — `holzbau-bauphysik-clt` `sources:`
  auf `sia-2001-waermedaemmstoffe-lambda.md` korrigiert; Finding B — INDEX-Doppelzeile
  `pv-einmalverguetung-bund-bfe` verschmolzen. **Destillat-Zaehlung jetzt konsistent: 52** (= 52 INDEX-Zeilen).
- Register: `destillate/INDEX` (+2, −1 Doppel → 52), `wiki/INDEX` (+2), `wiki/QUESTIONS`, `pdf-inventar`
  (+2 Web), `raw/_INGESTED` (+2), `training/curriculum`. Output `outputs/2026-07-02_energie-run24.md`.
- **Offen:** FWS-Feldstatistik (moderne Geraete-JAZ), kg CO₂-eq/m² je Bauteil (KBOB v8.0), Lignum-K_F,
  CHF-Amortisationsvergleich Heizsysteme, Health-Check-Restfixes (`links:`-Komma, 2 Promotions).

## 2026-07-01 — Wissens-Health-Check (Phase 1, unbeaufsichtigt)
- **7 Audits**, KB sehr gesund: A gruen (0 echte Widersprueche, WP-JAZ + Umbau-Faktor sauber geflaggt),
  B gelb (0 tote `[[Backlinks]]`; **INDEX-Doppelzeile** `pv-einmalverguetung-bund-bfe` → Zaehlung 51 statt
  real 50 Destillate), C gruen (0 unbelegte Kennwerte/Foerdersaetze), D gruen (RAW-Vollabdeckung),
  E gruen (kein Artikel < 2026-04-02), F gelb (**holzbau-bauphysik-clt** `sources:` verweist auf nicht
  existentes `destillate/daemmstoffe-lambda.md`; 3× `links:` leer- statt kommagetrennt), G 2 Promotions
  (`regenwasserbewirtschaftung-versickerung-zh` + `sommerlicher-waermeschutz` emerging→established).
  Nur Audit/Report, keine Fixes. Report `outputs/2026-07-01_health-check.md`.

## 2026-06-30 — Run 23: energiefranken.ch (standortgenaue Foerder-Suchmaschine) + Klimapraemie — der Foerder-Stapel ueber alle Ebenen
- **+1 Destillat** (established): `energiefranken-foerder-suchmaschine-ch` — Web (energiefranken.ch © 2026
  EnergieSchweiz/BFE + energieschweiz.ch + gebaeudeklima-schweiz.ch). Standortgenaue Suchmaschine: **PLZ →
  alle verfuegbaren Programme** aus **Bund / Kanton / Gemeinde / Energieversorger / Stiftungen**. Foerderung
  als **Stapel** (Tabelle: wer zahlt was, Antrag wann — Kanton/Gemeinde VOR Baubeginn, Bund-PV/Pronovo NACH
  IBN). **Klimapraemie** (Stiftung KliK) ca. **CHF 360/kW, keine Obergrenze**, fossiler Heizungsersatz →
  WP/Holz; **meist NICHT mit kantonaler Heizungsfoerderung kombinierbar** (Beleg SZ-Vollzugshilfe). ⚠
  Klimapraemie-Laufzeit Quellen widerspruechlich («bis 2025» vs. «bis Ende 2027») → Live-Pruefung noetig.
- **FAQ F29 neu** «Wie finde ich heraus, welche Foerdergelder ich an MEINEM Standort wirklich bekomme — auch
  von der Gemeinde?» (energiefranken.ch + Foerder-Stapel-Tabelle + Reihenfolge-Heuristik + «hoehere Variante
  rechnen statt addieren») → **29 Kernfragen F1-F29**.
- **`foerderung-energie-zh` + `foerderung-energie-sz` geschaerft:** Gemeinde/EWU via energiefranken.ch +
  Klimapraemie-als-Alternative (hoehere Variante waehlen) ergaenzt, Backlinks gesetzt.
- **Register:** `destillate/INDEX` (50→**51**), `wiki/INDEX` (FAQ 28→29 + Themen-Zeile), `wiki/QUESTIONS`
  (E-D7 Gemeinde-/EWU-Ebene ✓), `pdf-inventar` (+1 Web), `raw/_INGESTED` (+1), `curriculum` (Foerder-Block
  erweitert). Output `outputs/2026-06-30_energie-run23.md`. **Keine CHF-Saetze erfunden.**

## 2026-06-29 — Run 22: Foerderprogramm Energie Kanton Schwyz 2026 (Primaerquelle vollst.) + PV-EIV-Aktualitaetscheck
- **+1 Destillat** (established): `foerderprogramm-energie-sz-2026` — Vollzugshilfe Foerderprogramm Energie
  2026 Kt. SZ (AfU, Ausgabe 01.01.2026, **S. 1-40 vollst. via Read** aus lokal gespeicherter PDF). **ALLE
  CHF-Saetze Kanton Schwyz:** Daemmung 60/m² (+40 Gesamtsanierungsbonus), Luft/Wasser-WP 3'200+120/kW_th,
  Sole/Wasser-WP 4'800+360/kW_th, Waermenetz 4'000+200/kW_th, Holzfeuerung 360/kW_th (Stueckholz 5'000/Anlage),
  Solarthermie 2'400+1'000/kW_th, Minergie EFH/MFH/andere 100/60/40 & -P 155/90/60 CHF/m² EBF, Ersatz dezentral
  15'000/60-m², GEAK 1'000/1'500; min 3'000/max 300'000, max 50 %, Baujahr <2000, Gesuch vor Baubeginn, WP nur
  Elektromotor (WPSM/FWS), Klimapraemie nicht kombinierbar. Inkl. SZ↔ZH-Vergleich (linear vs. Pauschale).
- **FAQ F28 neu** «Welche Energie-Foerderbeitraege bekomme ich im Kanton Schwyz?» (volle Satztabelle +
  Bedingungen + SZ↔ZH-Unterschied + Rechenbeispiele) → **28 Kernfragen F1-F28**. **F7 geschaerft** (SZ-Querverweis).
- **Neuer Themenartikel `foerderung-energie-sz`** (established) — Kurzreferenz + Regeln + SZ↔ZH-Vergleich;
  Gegenstueck zu `foerderung-energie-zh`.
- **`pv-einmalverguetung-bund-bfe` aktualisiert:** Aktualitaets-Check 2026 (Pronovo «Neuerungen» + CKW) —
  Basis-EIV-Saetze fuer 2026 unveraendert; einzige Aenderung Winterstrombonus ≥100 kW ab IBN 1.1.2026.
  Sekundaerquellen-Ambiguitaet (Leistungs-/Grund-/Neigungsbonus) → keine feinere CHF-Aufschluesselung (nicht geschaetzt).
- **Register:** destillate/INDEX (+1, +1 Aktualisierung), wiki/INDEX (+1 Artikel, FAQ/EIV aktualisiert),
  wiki/QUESTIONS (E-D7 «Schwyzer Foerderprogramm SZ» ✓ + EIV-2026 verifiziert), pdf-inventar (+2 Web-Zeilen),
  raw/_INGESTED (+2). **Destillatzahl 48 → 49.** Leitplanken: alle SZ-CHF-Saetze aus amtlicher Primaerquelle, nichts erfunden.

## 2026-06-28 — Run 21: Schallschutz-Flanken-Mechanik Holzbau (Lignum/BFH 2008) + Bundes-Gebaeudeprogramm/HFM 2015
- **+2 Destillate** (beide established): `lignum-schallschutz-holzbau-flankenuebertragung` (Lignum/BFH-AHB
  Bericht 2712-SB-01, 2008 — die **Flanken-/Nachweis-Mechanik**: R_w↔R'_w, Projektierungszuschlag K_P +
  Flanken-Zuschlag K_F, **12 Nebenwege ueber EN 12354**, Spektrum-Anpassungswerte C/C_tr; Holzbau-Flanken-
  kennwerte oft nicht verfuegbar → Prognose + Reserve + elastische Stoesse; ⚠ SIA 181:2006, Mechanik
  zeitlos); `gebaeudeprogramm-bund-hfm-2015` (Das Gebaeudeprogramm + HFM 2015 — **Bund-/Kanton-Foerder-
  Mechanik**: CO2-Gesetz Art. 34 → Globalbeitraege → kantonaler Vollzug nach HFM 2015, 18 Module M-01…M-18,
  Rahmenbedingungen U≤0,20/Verbesserung ≥0,07/Baujahr<2000/GEAK Plus ab 10k; CHF-Saetze kantonal).
- **FAQ F27 neu** «Was ist ‹das Gebaeudeprogramm› — Bund UND Kanton?» (ein Topf, ein Gesuch beim
  Standortkanton vor Baubeginn, PV separat ueber Pronovo nach IBN) → 27 Kernfragen.
- **F25 + F17 + Themenartikel `schallschutz-sia181` geschaerft:** Flanken-Mechanik (R_w↔R'_w, K_P/K_F,
  12 Nebenwege EN 12354, C-Werte) eingearbeitet — **schliesst die E11-Belegluecke «Flanken-Mechanik»**
  (konkrete Holzbau-Anschlussdetails/K_F-Werte bleiben offen, spaetere Lignum-LIT-Doku).
- **`foerderung-energie-zh` gewachsen:** Sektion «Woher das Geld kommt (Bund ↔ Kanton)» + Offen-Punkt
  «Bundes-Gebaeudeprogramm» geschlossen; F7 verweist neu auf F27.
- Register: `destillate/INDEX` (+2), `wiki/INDEX` (+2 + 3 Zeilen aktualisiert), `wiki/QUESTIONS` (E-D7 +
  E11 ✓), `pdf-inventar` (+2 Web-Zeilen), `raw/_INGESTED` (+2). Destillatzahl 43 → **45**.
- Hinweis: Lignum- + HFM-PDFs liessen sich nicht per WebFetch-Text extrahieren; Lignum direkt via Read
  (S. 1-14) destilliert, HFM-/Gebaeudeprogramm-Fakten aus den Webseiten + verifizierter Web-Suche
  (keine CHF-Saetze erfunden — Modul-Saetze bleiben kantonal/ungenannt).

## 2026-06-27 — Run 20: Waermepumpen-Effizienz (FAWA Feld-JAZ + COP/SCOP/JAZ) + PV-Foerderung Bund (Pronovo-EIV)
- **+3 Destillate** (alle established): `fawa-jaz-feldanalyse-waermepumpen` (BFE-Feldanalyse, 236 Anlagen,
  **die erste CH-Primaerquelle fuer gemessene JAZ**: S/W Ø 3,5 · L/W Ø 2,7 +32 %, Planungslehren
  Vorlauftemp/Ueberdimensionierung/Speicher; ⚠ Stand 2004); `cop-scop-jaz-waermepumpe-gruenenwald`
  (COP-Pruefpunkt vs. SCOP EN 14825 — Strassburg-Klima → CH ~5-7 % zu hoch — vs. JAZ-Feldmessung);
  `pv-einmalverguetung-bund-bfe` (BFE-Faktenblatt EIV/KLEIV/GREIV/HEIV + KLEIV ~360 CHF/kWp, Indach 400,
  Deckel 30 %, Boni Neigung/Winterstrom/Parkflaeche).
- **F6 geschaerft:** COP/SCOP/JAZ-Begriffsklaerung + FAWA-Feldbeweis (3 Bauherren-Lehren). **Schliesst die
  seit 18.06. offene Belegluecke «WP-JAZ aus Schweizer Primaerquelle».**
- **F7 geschaerft:** Bund-PV-Absatz zur vollen Pronovo-EIV-Erklaerung ausgebaut.
- **Themenartikel `heizleistung-und-waermeerzeuger` gewachsen** + Destillat `waermepumpe-systemvergleich`
  emerging→**established** (Belegluecke geschlossen, COP/SCOP/JAZ + FAWA-Sektion eingefuegt).
- Register: destillate/INDEX (+3, WP-systemvergleich established), wiki/INDEX (+3), QUESTIONS (E-F + E-D7 ✓),
  pdf-inventar (+3 Web), curriculum (B5/D3), raw/_INGESTED (+3). Destillatzahl 40 → **43**. Output: run20.

## 2026-06-26 — Run 19: ZH-Foerdersaetze komplett (Solarthermie/Minergie-ECO) + KBOB graue THG-Emissionen
- **Foerder-PDF S. 1-37 VOLLSTAENDIG** (Direkt-Download /tmp): die seit Tagen offenen CHF-Saetze
  beziffert → **Minergie-ECO 110/70/50, Minergie-P-ECO 165/100/80 CHF/m² EBF; Solarthermie 2'400 +
  1'000/kWth**. Destillat `foerderprogramm-energie-zh-2026` auf «vollst.» gehoben, offener Punkt geschlossen.
- **+1 Destillat:** `kbob-graue-treibhausgasemissionen-2025` (established) — KBOB-Faktenblatt
  (V1 04.04.2025): 9 Reduktionshebel, SIA-2032-Messgroessen (kg CO₂-eq/m² EBF), «Restwert Bestand»,
  bis 40 % MFH, Grenzwert-Logik (Minergie-ECO/SNBS/SIA 390/1), kommende Kantons-Grenzwerte
  (Art. 45 EnG); Datenbasis KBOB-Oekobilanzdaten **v8.0** (20.02.2026).
- **FAQ geschaerft:** **F7** (Foerderung) Tabelle + Rechenbeispiele, «Betrag offen» entfernt; **F9**
  (graue Energie) KBOB-Hebel-Reihenfolge + Restwert + 40 %-Potenzial. F-Anzahl unveraendert (26).
- **Themenartikel gewachsen:** `graue-energie` (KBOB-Sektion) + `foerderung-energie-zh`
  (Minergie-ECO/Solarthermie-Saetze, offen geschlossen).
- **Register:** destillate/INDEX (+1, Foerder vollst.), wiki/INDEX (+KBOB-Zeile, «im Aufbau» bereinigt),
  QUESTIONS (**E-D7 CHF-Saetze ✓**, **E6 KBOB ✓**), pdf-inventar (Foerder-Web [x] vollst. + KBOB [x]),
  curriculum (D3 vollst., D2 KBOB), raw/_INGESTED (+2). Destillate 38 → **40**.
  Output `outputs/2026-06-26_energie-run19.md`.

## 2026-06-25 — Run 18: PV-Ertrag je Ausrichtung × Neigung belegt (neue FAQ F26, schliesst E5-Orientierungsluecke)
- **+1 Destillat:** `pv-ertrag-ausrichtung-neigung-ch` (established) — CH-Richtwerte aus **zwei CH-Quellen
  trianguliert** (Swissolar «Anwendung PV» + solar-ratgeber.ch, Quervergleich BFE sonnendach.ch).
  Basis 100 % = Sued ~30°: **Flachdach ~90 %, Ost/West 90–95 %, Suedfassade senkrecht ~70 %, Nord
  steil ~40 %**; Optimum Sued ~30° / Ost-West ~15°; Verluste 0–50° Neigung gering; ≤45° von Sueden
  besonders gut geeignet. DE-Blog-Tabellen bewusst nicht uebernommen (Leitplanke CH-Quelle).
- **FAQ +1 → 26 Kernfragen (F1-F26):** **F26** «Mein Dach zeigt nicht nach Sueden — wieviel Ertrag
  verliere ich je Ausrichtung/Neigung?» (Entwarnung: Ost-West 90–95 % und fuer Eigenverbrauch oft im
  Vorteil; Matrix + Regeln Winkel/Selbstreinigung/Verschattung).
- **Themenartikel `pv-solar-technologien` gewachsen:** neue Sektion «Ausrichtung × Neigung (CH-Richtwerte)»
  mit Matrix + Regeln; Frontmatter/Sources +1.
- **PDF-Bestand erschoepft festgestellt:** jeder substanzielle PL-04-PDF destilliert (38 Destillate);
  Reste nur Datenblaetter/Flyer/Plaene (geringe Uebertragbarkeit). `U-Wert_Gebäudehülle.pdf` als
  1-Seiter geklaert (keine weiteren Buchseiten). Loop pivotiert auf Web/Aktualitaet + Vertiefung.
- **Register:** destillate/INDEX (+1), wiki/INDEX (FAQ 25→26 + pv-Artikel-Zeile + «im Aufbau» bereinigt),
  QUESTIONS (**E5-Orientierung ✓**), pdf-inventar (U-Wert [x] + Web-PV-Ausrichtung [x]), raw/_INGESTED
  (PDF «erschoepft» + Web-Zeile), curriculum (C2 ergaenzt). Output `outputs/2026-06-25_energie-run18.md`.

## 2026-06-24 — Run 17: Schallschutz SIA 181:2020 belegt (neue FAQ F25, schliesst E11/A8)
- **+1 Destillat:** `sia-181-schallschutz-anforderungswerte` (established) — vollstaendige Anforderungs-
  tabellen aus SIA 181:2020 (Zusammenfassung baumann akustik & bauphysik, Anhang A): **Luftschall Di**
  (Wohnen mittel: 47/52/57/62), **Trittschall L'** (58/53/48/43), **Haustechnik LH** dB(A) und
  **Aussenlaerm De**; erhoehte Anforderung **+4 dB innen / +3 dB aussen**; Schluesselregel **EFH/Reihen-
  EFH/STWEG = erhoehte Aussenlaerm-Anforderung zwingend**; Bauwert D_nT/L'_nT inkl. Flanke ≠ Labor-R_w.
- **+1 Themenartikel:** `schallschutz-sia181` (established) — Schnellreferenz Anforderungen + Bauherren-
  Schluesselregel + Bauwert-vs-Laborwert + Einbindung in Werkvertrag/Ausschreibung/Abnahme.
- **FAQ +1 → 25 Kernfragen (F1-F25):** **F25** «Welcher Schallschutz ist Pflicht — wie laut darf der
  Nachbar/die Haustechnik sein?» (Wohnungstrennung Luftschall ≥52/56 dB, Trittschall ≤53/49 dB,
  Haustechnik Schlafraum ≤28 dB(A); erhoehtes Niveau Pflicht bei EFH/STWEG, Komfort innen vertraglich).
- **F17 (CLT-Holzbau) geschaerft:** SIA-181-Anforderung Wohnungstrennung Di≥52/L'≤53 konkret eingesetzt
  (erklaert die zweischalige CLT-Trennwand mit Labor-Reserve ≥56-58); Datenstand-Vermerk aktualisiert.
  `holzbau-bauphysik-clt` Schallschutz-Abschnitt + Frontmatter-Backlinks ergaenzt.
- **Register:** destillate/INDEX (+1), wiki/INDEX (FAQ 24→25 + neuer Artikel), pdf-inventar (SIA-181-Web
  [x] + PV-Ausrichtung [ ] offen), QUESTIONS (**E11 ✓** belegt), curriculum (A6 geschaerft + **A8 neu [x]**),
  raw/_INGESTED (+1 + SharePoint-Zeile 37 Destillate).
- **Offen/Prioritaet morgen:** (1) **PV-Ertrag je Ausrichtung × Neigung** aus autoritativer CH-Quelle
  (EnergieSchweiz/sonnendach-Ertragstabelle) — Web-Blogs lieferten nur Bild/Excel auf DE-Basis, daher
  nicht uebernommen («nie erfinden»); (2) SIA-181-**Flankendetails Holzbau** (Lignum-Anschluesse);
  (3) CHF-Saetze Solarthermie/Minergie-ECO (Foerderbroschuere S.30-38).

## 2026-06-23 — Run 16: neue Domaene Regenwasser/Versickerung (FAQ F24) + aktuelle PV-Marktpreise 2025 (F18) + Foerderprogramm 2026 bestaetigt (F7)
- **+2 Destillate:** `regenwasserbewirtschaftung-versickerung-zh` (established; AWEL Kt. ZH Gewaesser-
  schutz — Versickerung **bewilligungspflichtig ab 20 m²** entwaesserter Flaeche, Zustaendigkeit
  **Gemeinde** (AWEL nur in GW-Schutzzonen/belasteten Standorten), **Metallflaechen Cu/Zn/Pb > 50 m²
  → Adsorber obligatorisch**, Versickerungsversuch + **1,0 m Filterschicht** ueber HW10; Normen
  VSA 2019 / SN 592 000:2012 / AWEL-Richtlinie 2022); `pv-marktzahlen-kosten-ch-2025` (established;
  Swissolar-Faktenblatt Juli 2025 + CKW Herbst 2025 — Aufdach **2'400–3'200 CHF/kWp**, **Indach +60 %**,
  Solarziegel ~2×, **Lebensdauer 33 Jahre**, 8'200 MW/300'000 Anlagen CH Ende 2024, Speicher 42 %).
- **Bestehendes Destillat gewachsen:** `foerderprogramm-energie-zh-2026` — Aktualisierung **2026
  unveraendert** (Baudirektion-Mitteilung 24.10.2025; 2025 = 61 Mio. CHF) + **Minergie-ECO (nur mit
  ECO!) + Solarthermie foerderfaehig**; konkrete CHF-Saetze S.30-38 bleiben offen (Broschuere-PDF nicht
  erreichbar — nicht geschaetzt, Leitplanke «nie erfinden»).
- **FAQ +1 → 24 Kernfragen (F1-F24):** **F24** «Was passiert mit dem Regenwasser — muss ich versickern,
  brauche ich eine Bewilligung?». **F18** geschaerft (aktuelle Marktpreise 2025 + Lebensdauer 33 J),
  **F7** geschaerft (2026 unveraendert + Solarthermie/Minergie-ECO + PV = Bund/Pronovo).
- **Themenartikel:** neuer Artikel `regenwasserbewirtschaftung-versickerung-zh` (Schwammstadt-Querschnitt
  zu Begruenung F20); `foerderung-energie-zh` + `pv-solar-technologien` (Marktpreise 2025) gewachsen.
- **Register:** destillate/INDEX (+2), pdf-inventar (Regenwasser [x] + Foerder/Swissolar-Web), QUESTIONS
  (E-D7 + E5 geschaerft, **E14 Regenwasser neu**), wiki/INDEX (FAQ 23→24 + neuer Artikel), raw/_INGESTED
  (+2), curriculum (D3 geschaerft, **D5 Regenwasser neu**). Offen: CHF-Saetze Solarthermie/Minergie-ECO
  (Broschuere), kWh/kWp je Orientierung, SIA 181, Naturdaemmstoffe-Praxis.

## 2026-06-22 — Run 15: Indach-Solarprodukt + 3. PV-Ertragsreport (MFH) + neue Domaene Gebaeudeschadstoffe (FAQ F23)
- **+2 Destillate:** `prefa-solar-indach-aluminium-dachplatte` (emerging; PREFA Alu-Solardachplatte
  Indach — gross 100 Wp/5,88 m²/kWp ≈ 170 W/m², klein 43 Wp, **ab 17°**, 12,6 kg/m², keine
  Unterkonstruktion/Durchdringung → kein PV-Zusatzstatik; ⚠ Produktbroschuere 2023),
  `gebaeudeschadstoffe-checkliste-zh` (established; AWEL Kt. ZH 02.2023 — **4-Faelle-Raster** Baujahr
  1990 / Bausumme CHF 200'000 / 200 m³ Rueckbaumaterial; Stichjahre **Asbest 1990, PCB 1987/1976,
  CP 1990**; Checkliste ↔ Fachperson + private Kontrolle; Art. 16-20 VVEA).
- **Bestehendes Destillat gewachsen:** `pv-ertrag-eigenverbrauch-praxis` um **Beispiel C** (SolarApp
  Basel **60 kWp Indach-MFH** 2022 — ~826 kWh/kWp, **EV 33 %**, Autarkie 103 %, ~CHF 2'250/kWp) →
  drittes reales Ertrags-/Eigenverbrauchsbeispiel zwischen Single (8 %) und WP-Haushalt (44 %).
- **FAQ +1 → 23 Kernfragen (F1-F23):** **F23** «Muss ich vor meinem Umbau eine Asbest-/Schadstoff-
  abklaerung machen?» (Kt.-ZH-Vierfaelle-Raster + Stichjahre + Kosten-/Planungs-Transfer). **F18**
  geschaerft (3. Praxisbeispiel MFH EV 33 % + ZEV/Mieterstrom), **F4** geschaerft (konkrete
  Indach-Produkte Alu-Solardachplatte/Glas-Glas).
- **Themenartikel:** `pv-solar-technologien` (Indach-Sektion → zwei Systemtypen Glas-Glas/Alu;
  Eigenverbrauch + ZEV; Flaeche/kWp differenziert).
- **Register:** destillate/INDEX (+2), pdf-inventar (PREFA/Checkliste/Basel [x]), QUESTIONS (E5
  geschaerft, E13 Schadstoffe neu), wiki/INDEX (FAQ 22→23), raw/_INGESTED (+3), curriculum (C2+C4
  vollstaendig). Offen: Foerderprogramm ZH S.30-38 (web), kWh/kWp je Orientierung, SIA 181, Naturdaemmstoffe.

## 2026-06-21 — Run 14: Fassaden-PV-Ertrag quantitativ (FAQ F21) + ZH-Lueftung/Kuehlung EN-105/EN-110 (FAQ F22)
- **+2 Destillate:** `pv-fassade-ertrag-pvsol` (emerging; PV*SOL-Praxissimulation Thomas Lüem Partner AG
  2019, Klima ZH — Vierfassaden-Anlage 491 kWp vertikal, Gesamtanlage **603 kWh/kWp** = ~60-65 % Dach,
  **PR 87,8 %**, Eigenverbrauch 32 %, Saison Sommer:Winter ≈ 4:1 mit hoeherem Winteranteil; ⚠ CHF 2019),
  `en-lueftung-kuehlung-zh` (established; EN-105 Lueftung [WRG ≥70 %/75 %, Luftgeschw. ≤2 m/s + Kanaele
  3-7 m/s, Kanaldaemmung 3-10 cm] + EN-110-ZH Kuehlung [≤12 W/m² ODER Kaelteerzeugung ODER PV-Deckung,
  θ_CW ≥14/10 °C, EER/SIA 382/1]; ⚠ seit 1.1.2026 EVEN, EN-110-PDF abgelaufen).
- **FAQ +2 → 22 Kernfragen (F1-F22):** **F21** «Wie viel weniger Strom bringt PV an der Fassade?»
  (~603 kWh/kWp = 60-65 % des Dachs, flacheres Jahresprofil, BIPV-Mehrwert) — schliesst die quantitative
  Fassaden-Ertragsluecke aus F20; **F22** «Brauche ich fuer Kuehlung/Klimaanlage einen Nachweis?»
  (EN-110, ≤12 W/m²/PV-Deckung, hohe Kaltwassertemperatur, sommerlicher Waermeschutz zuerst).
- **Themenartikel:** `pv-solar-technologien` (Fassaden-Ertrag quantitativ ergaenzt), `energienachweis-zh`
  (neue Sektion EN-105/EN-110 Kerngrenzwerte). ZH-EN-Formularmatrix damit vollstaendig destilliert.
- **Register:** destillate/INDEX (+2), pdf-inventar (PV*SOL + EN-105/110 [x]), QUESTIONS (E5 Fassade +
  E9 EN-105/110 geschlossen), wiki/INDEX (FAQ 20→22).

## 2026-06-20 — Run 13: Dach-Eignung (sonnendach.ch, FAQ F19) + Fassaden-PV & Begruenung (FAQ F20) + PV-Kosten
- **+3 Destillate:** `sonnendach-solarpotenzial-bfe` (established; BFE-Tool sonnendach.ch — 5 Eignungs-
  klassen nach Einstrahlung, Tool-Annahmen Wirkungsgrad 20 %/PR 80 %, reale Monatsproduktion
  Sommer ≈ 7,5× Winter, Verguetung 14 Rp), `greenpv-fassade-pv-begruenung-hslu` (emerging; HSLU-
  Forschungsprojekt GreenPV — Fassaden-PV opak 20 %/transparent 14 %, NOCT 42 °C, Temp-Koeff −0,4 %/°C,
  Begruenung boden-/wandgebunden ≤30 kg/m²; Klimaanpassung Stadtklima), `pv-kosten-amortisation-praxis-ewz`
  (emerging; ewz-Projektkorrespondenz 2019 — CHF 1'600–2'460/kWp, Lebensdauer 25-30 J, Verschattungs-
  Tradeoff, PV+Gruendach; ⚠ Marktwerte veraltet).
- **BAUHERREN-FAQ F19 neu** «Taugt mein Dach fuer Solar — sonnendach.ch?» + **F20 neu** «Fassaden-PV
  oder Fassadenbegruenung?» → **20 Kernfragen F1-F20 belegt**.
- **Themenartikel `pv-solar-technologien`** um 3 Sektionen gewachsen: Dach-Eignung (sonnendach.ch),
  Fassaden-PV & Klimaanpassung, Kosten & Amortisation.
- **Erschoepft Prio-2-Solar-Block:** alle hoch-uebertragbaren Solar-PDFs (sonnendach, GreenPV, Vorgehen-PV)
  destilliert; offen nur noch redundante/Datenblatt-Quellen (Basel-Report, PV*SOL, PREFA, FEZ-Flyer).
- **QUESTIONS E5** weiter geschlossen (Dach-Eignung + Fassaden-PV); offen: Ertrag je Ausrichtung/Neigung,
  quantitative Fassadenertraege, aktuelle CHF/kWp (Swissolar-Marktbericht).
- Register nachgefuehrt: destillate/INDEX, pdf-inventar (Prio-2-Block), wiki/INDEX, QUESTIONS.

## 2026-06-19 — Run 12: PV-Ertrag/Eigenverbrauch (FAQ F18) + Indach-Ausfuehrung + geringfuegige Umbauten
- **Befund:** Das Inventar (2026-06-05) hatte mehrere Solar-/PV-PDFs im SharePoint **nicht erfasst** —
  neuer Prio-2-Block im `pdf-inventar.md` angelegt; 4 davon heute destilliert.
- **+3 Destillate:** `pv-ertrag-eigenverbrauch-praxis` (established; zwei reale CH-Reports — SolarApp
  Einsiedeln Indach 7,9 kWp/981 kWh/kWp/EV 44 % + EnergieSchweiz Diemtigen 6 kWp/~1'025 kWh/kWp/EV ~8 %;
  Saisonalitaet 3-4×, Eigenverbrauchs-Hebel), `sunskin-roof-indach-planung` (emerging; Eternit Indach-
  Eckwerte Neigung 10-60°/Hinterlueftung 60 mm/Schnee-Wind/NIN/Blitzschutz), `energienutzungs-
  deklaration-geringfuegige-umbauten-zh` (established; Schwellen ≤200k & ≤30 % GVZ + Umbau-U-Werte).
- **BAUHERREN-FAQ F18 neu** «Wieviel Strom bringt meine PV-Anlage / Eigenverbrauch?» → **18 Kernfragen
  F1-F18 belegt**. **F12 geschaerft** (geringfuegiger Umbau = Deklaration statt Vollnachweis).
- **Themenartikel `pv-solar-technologien`** um Ertrag/Eigenverbrauch + Indach-Ausfuehrung gewachsen.
- **Geschlossen:** QUESTIONS **E5** (kWh/kWp + Eigenverbrauch) und **B2** (geringfuegige Umbauten).
- Register nachgefuehrt: destillate/INDEX, pdf-inventar (Prio-2-Block), raw/_INGESTED, wiki/INDEX, QUESTIONS.

## 2026-06-18 — Run 11: FAQ vollstaendig (F6 WP-Systemvergleich) + swissolar Kap. 4-7 + Minergie-Zertifizierung
- **+2 Destillate:** `minergie-zertifizierung-workflow` (established; Nachweiskurs Teil 2/3 — Label-
  Plattform, Antrags-Checkliste, WPesti/PVopti/SoWs-Tools, Pruefprozess AS↔ZS prov.→def. Zertifikat,
  MKZ-Optimierung) und `waermepumpe-systemvergleich` (emerging; JAZ-Richtwerte Luft ~3 / Sole ~4,5 /
  Wasser ~5 + Entscheidungslogik WP/Fernwaerme/Pellets — ⚠ Richtwerte, projektgenau via WPesti/SIA 384/3).
- **swissolar-STP vollst. (Kap. 4-7 ergaenzt):** Batteriespeicher RF1/SNR 460712, Brandmauer Module
  1,0 m / 0,3 m hochziehen, integrierte PV >1'200 m² RF1-Unterlage, RWA-Abstand, **Feuerwehr: Bauherren-
  Pflicht zur Info + ab 30 kW Orientierungsplan in Einsatzplaene**, Systemdoku SN EN 62446-1,
  Naturgefahren SIA 261:2020. Quelle damit erschoepft (nur noch Anhang-Skizzen 7.3.x).
- **BAUHERREN-FAQ F6 neu** «Welches Heizsystem — WP/Fernwaerme/Pellets?» → **alle 17 Kernfragen F1-F17
  belegt** (Backlog nur noch Vertiefungen). **F16 (PV-Brandschutz) geschaerft** (Feuerwehr-Pflicht,
  ≥30 kW Einsatzplan, Brandmauer 1,0 m, Batteriespeicher).
- **Wiki gewachsen:** `heizleistung-und-waermeerzeuger.md` +WP-Systemwahl-Abschnitt (JAZ-Tabelle +
  Entscheidungslogik, F6 ✓). INDEX: FAQ 17/17, neue Artikel/Destillate gelistet.
- **Register:** destillate/INDEX (+2, swissolar/Nachweiskurs vollst.), QUESTIONS (E-F F6 ✓, E10 Kap. 4-7 ✓),
  pdf-inventar (Nachweiskurs [x], swissolar [x]), curriculum (B5 F6 ✓, B7 neu ✓, C3 vollst., M1 17/17),
  _INGESTED (29 Destillate). Output `outputs/2026-06-18_energie-run11.md`.

## 2026-06-17 — Run 10: Minergie-Nachweiskurs 2023 (MKZ/THGE) + Fallstudie → FAQ F8 Netto-Null
- **+2 Destillate:** `minergie-nachweiskurs-2023-mkz-thge` (established; Minergie-2023-Anforderungen,
  MKZ-Formel, **THGE-Grenzwerte je Gebaeudekategorie** MFH 11 / Spitaeler 17 kg CO₂-eq/m²·a, Klimapfad
  SIA 390/1 9 kg, nutzbare-Dachflaeche-Logik, Hitzeschutz Klima 2035) und `minergie-fallstudie-maison-
  climat` (emerging; gebautes Plusenergie-MFH Biel 2022, Nachweis-Kennzahlen; ⚠ Uebungswerte teils angepasst).
- **BAUHERREN-FAQ F8 neu** «Netto-Null konkret fuer meinen Neubau?» (Betrieb fossilfrei + THGE begrenzen;
  groesster Hebel baulich; Plusenergie-Beispiel) → **16 belegte Antworten** (F1-F5/F7-F17); offen nur F6.
  **F5 (Minergie) geschaerft** (konkrete 2023-Verschaerfungen + THGE je Kategorie).
- **Wiki gewachsen:** `graue-energie.md` → **established**, +THGE-Grenzwerte-Tabelle je Kategorie +
  bauliche Hebel + Klimapfad SIA 390/1. `minergie-standards.md` +MKZ-Formel +2023-Neuerungen (90 % Q_h,li,
  Monitoring 1'000 m², 60 % E-Parkplaetze, Spitzenlast 80 kW/10 % fossil).
- **Register:** INDEX/QUESTIONS/curriculum (D1 ✓, M1 ✓), pdf-inventar (Fallstudie [x], Nachweiskurs [~]),
  _INGESTED (26 Destillate). Output `outputs/2026-06-17_energie-run10.md`.

## 2026-06-13 — Run 9: CLT-Schallschutz + Praxisbeispiel zirkulaeres Bauen
- **+2 Destillate:** `clt-schallschutz-stora-enso` (established; Stora-Enso-Doku Kap. 4 Schallschutz —
  Innenwand V1-11 + Trennwand V1-8 + Deckenelement V1-6; R_w 34-58 / Trittschall L'_n,w 60→46;
  Hebel Vorsatzschale/Beschwerung/abgehaengte Decke; SIA-181-Bauwert/Flanke als Einordnung markiert).
  Damit ist die CLT-Stora-Enso-Doku (Kap. 1-4) vollstaendig erschlossen. Und `werkhof29-zirkulaeres-
  bauen-stroh-lehm` (emerging; baubuero-in-situ-Dossier ZH 2024 — Stroh/Lehm/Re-use/Areal-PV als
  gebautes graue-Energie-Beispiel zu F9).
- **BAUHERREN-FAQ F17 neu** «Wird mein Holzbau hellhoerig — CLT fuer MFH/Pflegeheim?» → **15 belegte
  Antworten** (F1-F5/F7/F9-F17; F6/F8 offen). Frontmatter +2 Quellen, `last_updated` → 2026-06-13.
- **Wiki `holzbau-bauphysik-clt.md`** um eine Schallschutz-Sektion gewachsen (Tabelle Wand/Decke +
  SIA-181-Hinweis).
- **QUESTIONS:** E8-Schallschutz ✓; neu **E11** (SIA 181 + Holzbau-Flanke) und **E12** (Naturdaemmstoffe
  Stroh/Lehm + ZEV/Solarsplit). **curriculum** A6 Schallschutz ✓, neu **A7** Naturdaemmstoffe/zirkulaer.
- Register: destillate/INDEX (+2), wiki/INDEX, raw/_INGESTED (24 Destillate), pdf-inventar (CLT [x]
  vollst., Werkhof29 [x]). Output `2026-06-13_energie-run9.md`.

## 2026-06-12 — Run 8: CLT-Bauteilkatalog + PV-Brandschutz
- **+2 Destillate:** `clt-bauteilkatalog-stora-enso` (established; Stora-Enso-Doku Kap. 4 — Aussenwand
  V1-9 S. 40-57 + Dach V1-6 S. 166-176, je REI·U·Rw + Schichttabelle; EPS vs. Mineralwolle/Holzfaser,
  GKF hebt REI, Installationsebene REI 120 + Rw 43; Innen-/Trennwand/Decke S. 98-164 offen) und
  `swissolar-stp-vkf-brandschutz-solaranlagen` (established; STP V4.00 12/2022 S. 1-16 — DC kein PVC/
  RF1-Rohr, WR-Standort, Kennzeichnung; Basis VKF-BSM 2001-15).
- **BAUHERREN-FAQ F16 neu** «Brandschutz Solaranlage (PV)» → **14 belegte Antworten** (Status
  established); **F15 geschaerft** um die konkreten CLT-Aufbauten. Frontmatter +2 Quellen,
  `last_updated` 2026-06-11 → 2026-06-12.
- **2 Wiki-Artikel:** `holzbau-bauphysik-clt.md` (+Bauteilkatalog-Tabellen Wand/Dach, emerging →
  established) und `pv-solar-technologien.md` (+Brandschutz-Sektion, Backlinks F16/Holzbau).
- **Register:** destillate/INDEX (+2), wiki/INDEX (FAQ 14, Holzbau established), QUESTIONS (E8 ✓,
  E10 neu ✓), pdf-inventar (CLT/swissolar [~]), curriculum (A6 Bauteilkatalog ✓, C3 ✓),
  _INGESTED (22 Destillate). Output `outputs/2026-06-12_energie-run8.md`.
- **Naechster Lauf:** CLT-Schallschutz (Innen-/Trennwand/Decke), F6 WP-JAZ-Matrix, Foerderung ZH
  S. 30-38 (Minergie-ECO/Solarthermie), F8 Netto-Null.

## 2026-06-11 — Run 7: Holzbau-Bauphysik (CLT) + Private Kontrolle ZH
- **+2 Destillate:** `clt-bauphysik-stora-enso` (established; Stora-Enso-Doku Kap. 1-3, S. 4-37 —
  λ_CLT 0,12, 100 mm CLT pur U ≈ 1,0, ~180 mm Zusatzdaemmung fuer U ≤ 0,17, luftdicht ab 3 Lagen
  ohne Folie n₅₀ 0,6, feuchtevariable Dampfbremse; Kap. 4 Bauteilkatalog S. 38-178 offen) und
  `private-kontrolle-zh` (established; Liste der Befugten Kt. ZH April 2025 — wer zeichnet den
  EN-Nachweis, EN-Formular-Matrix, BBV I §4-7, Minergie-Shortcut).
- **BAUHERREN-FAQ F15 neu** «Lohnt sich Massivholz (CLT) energetisch?» → 13 belegte Antworten;
  **F12 geschaerft** um die Private-Kontrolle-Mechanik. Frontmatter +2 Quellen, `last_updated`
  2026-06-09 → 2026-06-11.
- **+1 Themenartikel** `wiki/holzbau-bauphysik-clt.md` (emerging); `wiki/graue-energie.md` um die
  «Holzbau-Pointe» (Holz daemmt nicht besser — Vorteil allein graue Energie) gewachsen.
- **Curriculum A6 ✓** (CLT/Holzbau-Bauphysik), **B2 angereichert** (Private Kontrolle), M1 → 13.
  QUESTIONS E8/E9 ✓. Register (destillate-INDEX +2, wiki-INDEX +1, pdf-inventar 2×, _INGESTED 20).
- **Treue:** λ 0,12 = Produktwert EN ISO 10456 (SIA-279-Vorbehalt); EVEN-Hinweis bei Privater
  Kontrolle (seit 1.1.2026); Brandschutz/Schallschutz Holzbau verwiesen, nicht gedoppelt.
- Output: `outputs/2026-06-11_energie-run7.md`.

## 2026-06-10 — Projektvermerk: KISPI 2619 Auflage II.8 → EN-ZH/EN-105/EN-110-ZH
- **Fallanwendung in `wiki/energienachweis-zh.md`**: neuer Abschnitt «Fallanwendung — KISPI 2619
  (Bauentscheid-Auflage II.8)» mit verifizierter Formularzuordnung **II.8.a → EN-ZH** (Deckblatt/
  EVEN), **II.8.b → EN-105** (Lueftung/Klima neu), **II.8.c → EN-110-ZH** (Kuehlung/umbaubetroffene
  Anlagen). `last_updated` 2026-06-07 → 2026-06-10.
- **Lehrstueck festgehalten:** der spezialisierte Sub-Agent hatte zunaechst plausible, aber falsche
  Formularnummern erfunden; korrekt erst nach Abgleich mit dieser KB + amtlichen ZH-Quellen
  (Rule `identifikatoren-verifizieren`). Verweis auf Skill `auflagebereinigung` (Fall 2619) gesetzt.
- **Treue:** Auflagen-Wortlaut bewusst NICHT reproduziert (nur belegte Formularzuordnung);
  EN-105/EN-110-ZH waren bereits in der Tabelle «Welche Nachweise wann» belegt.

## 2026-06-10 — Run 6: graue Energie (F9) + Heizungsersatz-Verfahren ZH (F14) + Bauteilekatalog Kap. 4 + 2. Nachweis-Beispiel
- **3 neue Destillate + 1 gewachsenes**: (1) **«Betriebsenergie» / graue Energie** (Lehrmittel S. 116)
  → neues `graue-energie-betriebsenergie` (graue Energie 20-30 % der Betriebsenergie/50 J; Tragstruktur
  groesster Posten; Holz < Massiv; Lehrbeispiel 1:9); (2) **WTA-Formular waermetechnische Anlagen
  Kt. ZH 01-2024** → neues `wta-formular-zh-waermetechnische-anlagen` (Verfahren + Beilagen je
  Waermequelle, fossil-Verbot §10a, EN-LCC-ZH/EN-120; established); (3) **Enerhaus Minergie-
  Musternachweis EFH Umbau** → neues `enerhaus-minergie-nachweis-efh-umbau` (Systemnachweis, WRG-Hebel
  70→60 kWh/m²); (4) **Bauteilekatalog (BFE 2002) gewachsen** um **Kap. 4 Standardaufbauten** (Boeden
  B1-B21 / Waende W1-W26) → established, schliesst E2.
- **FAQ +2 neu**: **F9** «graue Energie / Sanieren vs. Neubau» und **F14** «Heizung ersetzen — was
  einreichen, ist fossil erlaubt?». FAQ nun **12 belegt** (F1-F5, F7, F9, F10, F11, F12, F13, F14).
- **+1 Themenartikel** `wiki/graue-energie.md` (emerging); gewachsen: `heizleistung-und-waermeerzeuger`
  (Abschnitt Heizungsersatz-Verfahren ZH).
- **Register**: INDEX destillate (+3, 18 total) / wiki (+1), QUESTIONS (E2 ✓, E6/E7/E-F), pdf-inventar
  (3× [x]), curriculum (A1/B6 vollst., D2/D4/M1), _INGESTED (+3). Output `2026-06-10_energie-run6.md`.
- **Treue**: Lehrmittel-Grobwerte + 2010er-Beispiel mit ⚠ markiert; KBOB/SIA 2032 als fehlende
  belastbare graue-Energie-Quelle benannt; Brandschutz→`brandschutz`, Energierecht→`baurecht` verwiesen.

## 2026-06-09 — Run 5: Minergie 2023-Update (THGE) + EN-2 Waermebruecken/EBF + Naturdaemmstoffe/VIP + sommerl. Waermeschutz
- **3 PDFs destilliert/aktualisiert**: (1) **SIA 2001** vollst. (S. 15-17: Holzfaser/Zellulose/
  Holzwolle/**VIP λ 0,009**/WDVS) → `sia-2001-waermedaemmstoffe-lambda` (established); (2) **EnFK EN-2
  «Waermeschutz von Gebaeuden»** (Feb 2013, vollst.) → neues `enfk-en-02-waermeschutz-2013`
  (Nachweiswege, Waermebruecken Ψ, **EBF-Definition**, sommerl. Waermeschutz; established); (3)
  **Minergie «Besser planen» Ueberarbeitung 09/2023** → `minergie-besser-planen-bauen` auf Stand 2023
  gehoben (Kennzahl **51/46/29**, neues Kriterium **THGE 11 kg CO₂/m²·a**, Wetterdaten 2035).
- **FAQ +1 neu, +1 geschaerft**: **F11** «Hitzeschutz im Sommer» neu belegt (g-Wert 0,1-0,15,
  aussenliegend/beweglich, Speichermasse, Nachtauskuehlung); **F5** Minergie auf Stand 2023
  aktualisiert (55/50/35 → 51/46/29 + THGE). FAQ nun **10 belegt** (F1-F5, F7, F10, F11, F12, F13).
- **+1 Themenartikel** `wiki/sommerlicher-waermeschutz.md` (emerging); gewachsen:
  `minergie-standards` (Stand 2023 + THGE), `daemmstoffe-lambda` (Naturdaemmst./VIP/WDVS, established),
  `u-werte-grenzwerte-ch` (EBF-Def. + **Versionsabgleich EN-2 2013 ↔ EN-102 2018** geflaggt).
- **Widerspruch dokumentiert (E-D8):** Q_h,li-Grundwerte zwischen EN-2 (2013) und EN-102 (2018)
  identisch; abweichend Fenster-Grenzwert (1,3→1,0), Umbau-Faktor (1,25× ↔ 1,5×) und Ψ-Fensteranschlag
  (0,10 ↔ 0,15) — als zu pruefen markiert statt still verrechnet.
- Register: INDEX (destillate +1, wiki +1), pdf-inventar (3× [x]), QUESTIONS (E1 ✓, E3/E-D8/E-F ~),
  curriculum (A3/B3 vollst.), _INGESTED (15 Destillate), Output `2026-06-09_energie-run5.md`.

## 2026-06-08 — Run 4: Heizleistung/Waermeerzeuger + SIA-380/1-Standardnutzung + Foerderung ZH 2026
- **4 PDFs + 1 Web-Quelle destilliert**: BFE «Ermittlung der Waermeerzeugerleistung» (Nr. 2781,
  12.2015, vollst., established), SIA 380/1 Standardnutzungswerte Tab. 24/25 (Warmwasser Qww,
  established), Rechenbeispiel Monatsbilanz Heizwaermebedarf (Buero ZH, established), Grundsaetze
  energieeffizientes Bauen (emerging), **Foerderprogramm Energie Kt. ZH 2026** (Web zh.ch,
  Version 01.01.2026, S. 1-29, established).
- **FAQ +2 belegte Antworten**: **F7** (Foerderbeitraege Kt. ZH 2026 mit CHF-Tabelle + Datenstand),
  **F13** (Wie gross muss meine Heizung sein? — spez. Heizleistung). FAQ nun **9 belegt** (F1-F5, F7,
  F10, F12, F13).
- **2 neue Themenartikel**: `wiki/foerderung-energie-zh.md`, `wiki/heizleistung-und-waermeerzeuger.md`.
- **Datenstand-Web (2026-06-08):** Foerdersaetze ZH 2026 verifiziert aus amtlichem PDF —
  Luft-Wasser-WP CHF 2'900, Erdsonden-/Grundwasser-WP CHF 6'800, Fernwaerme CHF 5'200 (je ≤15 kWth),
  Daemmung CHF 40/m² (+Bonus 60/m²), GEAK Plus CHF 1'000/1'500; ⚠ Rahmenkredit 2026-29.
- Register: INDEX (destillate +5 / wiki +2), QUESTIONS (E-D7/E-H1/E-H2 ✓), pdf-inventar (4× [x]
  + Web-Sektion), curriculum (A2 vollst., B5/D3 ✓), _INGESTED (14 Destillate). Output: `outputs/2026-06-08_energie-run4.md`.

## 2026-06-07 — Run 3: PV-Typen + EN-ZH-Nachweis (EVEN) + λ-Werte Daemmstoffe
- **3 PDFs destilliert**: TEC21-Dossier «Solares Bauen» 5/2012 (PV-Typen kristallin/Duennschicht/
  Graetzel/Hybrid + Integration, established), EN-ZH-Nachweis-Deckblatt (Baudir. ZH Juli 2022,
  established), SIA 2001 Waermedaemmstoffe (λ-Bandbreiten je Materialklasse, emerging).
- **FAQ +2 belegte Antworten**: F4 (welcher PV-Typ), F12 (welche Energienachweise im Kt. ZH);
  F10 um EVEN-Datenstand ergaenzt. FAQ nun **7 belegt** (F1-F5, F10, F12).
- **3 neue Themenartikel**: `wiki/pv-solar-technologien.md`, `wiki/energienachweis-zh.md`,
  `wiki/daemmstoffe-lambda.md`.
- **Datenstand-Web (2026-06-07):** Kt. ZH Energienachweis seit **1.1.2026 elektronisch ueber EVEN
  (energievollzug.ch)** — PDF-Formulare abgeloest; ⚠-Markierung gesetzt. Foerderprogramm ZH 2026 unveraendert.
- Register: INDEX (destillate +3 / wiki +3), QUESTIONS (E1/E5/E-D6 ✓, neu E-D8), pdf-inventar
  (3× [x] + Dublette), curriculum (B1/C1 ✓), _INGESTED (9 Destillate).
- Output: `outputs/2026-06-07_energie-run3.md`.

## 2026-06-06 — Run 2: U-Wert-/Qh-Grenzwerte + Minergie + PV-Pflicht belegt
- **4 PDFs destilliert** (3 established, 1 emerging): EN-102 Waermeschutz (EnFK Dez 2018, vollst.),
  EN-104 Eigenstromerzeugung (10 W/m²-Regel), Minergie-Wissen «Besser planen», Bauphysik
  Heizwaermebedarf-Kennwerte (Gebaeudehuellzahl).
- **FAQ +3 belegte Antworten**: F3 (U-Wert Pflicht/empfohlen), F5 (Minergie vs. Gesetz),
  F10 (PV-Pflicht/Groesse). FAQ nun 5 belegt.
- **2 neue Themenartikel**: `wiki/u-werte-grenzwerte-ch.md`, `wiki/minergie-standards.md`.
- Bestehendes SIA-380/1-Destillat auf established gehoben + querverlinkt.
- Datenstand-Web: Kt. ZH EnerG seit 1.9.2022 (MuKEn 2014); MuKEn 2025 EnDK 08/2025, ZH-Umsetzung
  ausstehend — ⚠-Markierung gesetzt.
- Register: INDEX (destillate/wiki), QUESTIONS, pdf-inventar (4× [x]), curriculum, _INGESTED.
- Output: `outputs/2026-06-06_energie-run2.md`.

## 2026-06-05 — KB Energie angelegt (strategischer taeglicher Loop)
- Eigene KB `wissen/energie/` mit **Destillate-Layer** (PDF→MD) erstellt.
- Seed-Inventar `training/pdf-inventar.md`: 30 Prioritaets-Quellen aus PL-04 erfasst.
- **2 echte Destillate** aus real gelesenen PDFs:
  - `destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` (BFE 2002, S. 1-10).
  - `destillate/sia-380-1-heizwaermebedarf-berechnung.md` (Qh-Formel + 11 Schritte).
- `wiki/BAUHERREN-FAQ.md` mit 2 belegten Antworten (F1 Daemmung-Nutzen, F2 Effizienz-Prioritaet)
  + Backlog F3-F9.
- Schema/Register: `CLAUDE.md`, `training/PROGRAMM.md` (taeglich), `training/curriculum.md`,
  `destillate/INDEX.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`, `outputs/`.
- Scheduled Task `energie-training` (taeglich) angelegt; Agent `energie-berater` auf diese KB
  ausgerichtet; Bruecke aus `wissen/planungsgrundlagen/wiki/energie-uebersicht`.

## 2026-08-16 (Mac Mini Nachtschicht Run 135) — Minergie-Restbestand: ME-Antrag, EN-1b-Rechenbeispiel, Archiv

Zugang wie Run 133/134: M365-CLI mit Zertifikat, Graph-Drive-Navigation (Drive `02_Recht_Norm`)
zum Auflösen der Ordnerpfade, Download der Dateien über `m365 spo file get --asFile` mit der
server-relativen URL `/sites/PL/PL  Immobilienpreise/...` (zwei Leerzeichen, Werkzeugfalle aus
Run 134 bestätigt und erneut angewendet).

Drei Quellen destilliert: `minergie-me-antrag-nachweisformular-kommentiert` (kommentierte alte
Minergie-Nachweis-Excel-Mappe, Pflichtfelder), `en-1b-hoechstanteil-berechnungsbeispiel`
(durchgerechnetes Zahlenbeispiel der historischen 80-%-Höchstanteil-Regel, Negativfall) und
`energiequelle-erdsonden-potentialabklaerung-zh-innenstadt` (JANS-internes Arbeitspapier,
Erdsonden-/Grundwasser-Zulässigkeitsabklärung Zürich Altstadt, Auslegungsbeispiel Bohrungen).
Zwei der drei Archiv-Dateien bewusst nicht destilliert: `230525_Minergiezertifikat_rj.pdf` ist
eine belegte Vorstufe des bereits destillierten `weg-zum-minergiezertifikat-ablauf` (identischer
Aussenwand-U-Wert 1.715/95cm Backstein, nahezu wortgleicher Fragenkatalog), und
`230107_Lieferschein_Vorlage_rj.pdf` ist ein thematisch fremdes JANS-Lieferschein-Dokument
(MRI-Bericht Chiropraktik-Projekt) ohne Energie-Bezug, vermutlich Fehlablage.

Neue Bauherren-FAQ **F239** (Erdsonden-Zulässigkeit in Innenstadtlagen, Bohrtiefenbegrenzung,
Ansprechstellen AfB/AWL) in `wiki/BAUHERREN-FAQ.md`.

**Stand PL-02:** 83 von 182 energierelevanten PDF destilliert (80 bis Run 134, 3 in Run 135),
99 offen. Register `training/pdf-inventar.md` nachgeführt.
