# Wissens-Chef Lauf 55 — 08.09.2026

**Zuschnitt:** 6 Melder (`model: sonnet`) auf dem Zuwachs seit Lauf 54, 5 adversariale
Verifikatoren im Hauptmodell, dazu zwei eigene Gegenmessungen im Hauptkontext vor den beiden
inhaltlich heikelsten Eingriffen (Rule `auto-verbesserungen` 260729b). **11 Agenten.**

**Delta-Basis:** Commit `7925efcff` (Lauf 54, 07.09.2026 23:36) bis HEAD `31967b7fa`
(08.09.2026 23:00). Fenster 23,4 h, **116 Commits**. Gewachsen: `twin` (Fidelity-Review,
Mailbatch 116), `baurecht` (Buch-Run 142: RPG 2), `normen` (Nacht-Run 81: BRL-15-15-Fassungsvergleich),
`energie` (Runs 186-188), `projekt-lessons`, `bauprodukte`, `claude-code`, `spec`.

**Bilanz: 7 Befunde bestätigt (4 davon mit Einschränkung oder anderem Zuschnitt) · 5 widerlegt ·
2 Nullbefunde mit Aussage · 2 neue Befunde, die kein Melder hatte, sondern erst die Verifikation
fand.** 15 Dateien geändert. Alle Eingriffe additiv mit **einer** benannten Ausnahme (die zwei
Zeilenersetzungen der BKP-Korrektur); je gegen eine vor dem Eingriff gezogene Kopie gedifft.

**Zur Methode, weil sie diesmal den Unterschied machte:** von neun substanziellen Meldungen haben
fünf die adversariale Prüfung nicht überstanden, und die zwei schärfsten Funde des Laufs stammen
nicht aus dem Fan-out, sondern aus dem Widerlegungsversuch. Ein Melder-Fan-out ohne Verifikation
hätte an diesem Tag zwei falsche Eingriffe erzeugt und die zwei richtigen verpasst.

---

## 1. Bestätigt und gesetzt

### 1.1 Der letzte lebende BKP-Phantomcode «271.10» (Ticket N43-1 geschlossen)

`wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` führte «271.10» im `bkp:`-Feld (Z. 8) und
mit dem verbotenen Präfix «BKP» im Body (Z. 16), beschriftet als «(Innenputze/Gipserarbeiten)».
Das BKP 2017 kennt unter 271 nur 271.0, 271.1 und 271.2. Die Fehlerfamilie ist seit dem 04.08.2026
hubweit bereinigt — **diese eine Stelle blieb stehen**, und zwar nicht unbemerkt: mindestens drei
Läufe haben sie erkannt und mit «Nicht angefasst — fremde KB» liegen gelassen
(`wissen/normen/outputs/2026-08-13_normen-nacht-run50.md` Z. 92-93). Genau dafür gibt es diese
Instanz.

Gegenprobe der Reichweite: `grep -rn "271\.10"` über wissen/, skills/, agents/, rules/ → 95
Fundstellen, davon **genau 2 lebende Falschangaben, beide in dieser Datei**; 5 korrekt als `LOS`
geschrieben, ~88 als Fehler beschrieben und zu erhalten.

**Der Sachbezug wurde vor dem Ersetzen dreifach belegt**, weil Rule `bkp-2017-referenz` Ziff. 1 das
mechanische Ersetzen ausdrücklich verbietet: der Artikel handelt ausschliesslich von
LBW-Beplankung, also **Trockenbau 271.1**, nicht Innenputz 271.0. Bestätigt durch das
Schwesterstück `wissen/bauprodukte/wiki/lbw-brandschutzwaende-en520-typ-d.md` («BKP 271.1 —
Trockenbauarbeiten») und durch die Estermann-Offerte, die unter 271.1 abrechnet. Wer hier
mechanisch 271.10 → 271.0 ersetzt hätte, hätte den Fehler erzeugt, «der verifizierbar aussieht und
beim nächsten Audit nicht mehr auffällt».

Geheilt nach dem KB-eigenen Präzedenzfall `roethlisberger-geraetepreis-pruefung-273-35.md`
(Wissens-Chef Run 19): beide Zahlen bleiben erhalten, ihre Herkunft steht jetzt erstmals **im
Artikel selbst**. Der Ordnername Z. 76 bleibt unverändert — er war schon korrekt als `LOS_271.10`
geschrieben.

### 1.2 Zwei Registerlücken der bekannten Familie — und der Nullbefund, der sie einordnet

Die Läufe 53 und 54 fanden dreimal dasselbe Muster: `energie` destilliert Sekundärquellen, die
Normen zitieren, und diese Zitate erreichen das Normen-Register nie (SIA 2060, SWKI VA104-01,
SN EN 17037). Geprüfte Hypothese: hat es sich ein viertes Mal wiederholt?

**Im Messfenster nicht.** Git-Diff auf die **hinzugefügten** Zeilen des Zuwachses (Destillat +115
Zeilen, `graue-energie.md`, `minergie-standards.md`, Runs 186-188): **null** Norm-Zitationen. Das
ist die eigentliche Aussage — der Rückkanal hat diesmal nicht versagt.

Beim vollständigen Lesen tauchten dafür zwei nie gemeldete Fälle aus dem **Bestand** derselben
Datei auf:

- **WC55-1, SN EN 50642** (Definition «halogenfrei», max. 0.4 % Halogengehalt, Vorgabe 120.09,
  Run 185). `grep "50642"` über `wissen/normen/` ganz → **0 Treffer**. Thematische Gegenprobe:
  «halogenfrei» trifft dort viermal, jedes Mal nur als Empfehlung «halogenfreie Kabel», **ohne
  Grenzwert und ohne Bezugsnorm**. Der ausschreibungsrelevante Zahlenwert hängt allein an dieser
  Norm. Registerzeile gesetzt, bewusst ohne Ausgabe- und Gültigkeitsaussage (Muster VA104-01),
  kein Kauf.
- **WC55-2, DIN 18041 — mit anderem Zuschnitt als gemeldet.** Nicht «fehlt im Register», sondern
  drei Stände, die nicht zusammenpassen: `energie` zitiert **2016**, `normen` hat **2004**
  destilliert (12 Jahre Differenz), die 2016er ist nur sekundär belegt. **Der schärfere Teil kam
  erst aus der Verifikation:** dieselbe energie-Stelle sagt «Sobald die geplante neue SIA 181/1
  publiziert ist, gilt diese» — **SIA 181/1:2026 gilt seit dem 01.02.2026**, am Herausgeber
  verifiziert (`normen/destillate/sia-181-1-2026.md`). Zu klären ist also nicht nur die Ausgabe,
  sondern ob DIN 18041 für Schweizer Projekte überhaupt noch die massgebende Referenz ist. Bewusst
  **keine** Registerzeile: der Abschnitt «B) DIN/VSS/RAL» führt 3 DIN-Zeilen gegen 54
  DIN-Destillate — das Register führt DIN grundsätzlich nicht systematisch und sagt das im Kopf
  selbst. Eine Einzelzeile flickte ein strukturelles Loch punktuell.

### 1.3 Die Fassungsfalle der BRL 15-15 erreicht den Praxis-Transfer

Normen-Nacht Run 81 hat belegt, dass die Befreiung bei Löschanlagenvollschutz (Ziff. 3.7.13,
S. 34) zwischen 2015 und 2017 **enger** geworden ist — örtlich auf den Deckenanschluss verengt,
sachlich auf bauliche Massnahmen beschränkt. Der Fund stand vollständig und richtig im
Fassungsabschnitt des Destillats, aber **nicht im Abschnitt «JANS-Praxis-Transfer»**, an dem der
Skill `brandschutz` laut Z. 230/232 seine Konsequenzen abholt; der methodisch analoge Run-80-Fund
hatte dort sehr wohl eine Zeile. Gemessen: `grep -i "fassung|2015|2017"` im Abschnitt → 0.
**Kein Wissensverlust, ein Abholverlust.**

Die Verifikation hat den Befund zugleich gedämpft und geschärft: Ziff. 3.7.13 gilt ausschliesslich
**Hochhäusern**, und im JANS-Portfolio ist keine Konstellation Hochhaus + Löschanlagenvollschutz
belegt (das einzige Vorlagenbeispiel lautet «Gebäude mittlerer Höhe»); das Destillat trägt
`status: speculative`. Der transferwürdige Kern ist deshalb nicht die Hochhausregel, sondern die
**Fassungsfalle**: ein Altprojekt nach Fassung 2015 darf nicht nach der 2017er-Formel beurteilt
werden, und die weitere 2015er-Formel trägt heute nicht mehr. Genau so formuliert, mit beiden
Vorbehalten.

### 1.4 Abnehmer-Kante `normen` → `bauprodukte`

`normen/wiki/en-520-gipsplattentypen.md` hatte hubweit **0 Treffer** auf «bauprodukte», während
die Gegenrichtung dreifach gesetzt war. Der führende Artikel kannte seinen Abnehmer nicht — ändert
sich die Typ-D-Schwelle, bliebe das dort unbemerkt.

**Die Begründung des Melders war falsch, die Sache richtig.** Er stützte sich aufs
`links:`-Frontmatter; dafür gilt der Registerentscheid von Run 13 (`QUERBEZUEGE.md` Z. 4492-4497):
«die frontmatter-`[[]]` sind KB-intern, daher für diesen Cross-KB-Bezug nicht die Konvention».
Konvention ist der beidseitige **Inline**-Verweis — und der fehlte tatsächlich. So gesetzt,
Frontmatter unangetastet.

### 1.5 Drei Fassungsstände in `energie` (Solarrecht und Normbezeichnung)

- **`wiki/pv-solar-technologien.md` Z. 269** führte die SZ-Bewilligungslage weiter auf «Art. 18a
  RPG/Art. 32a RPV» — Stand **vor** dem 01.01.2026, ohne Fassaden und ohne den neuen
  Art. 32a-bis RPV. Das ist der Prüfauftrag, den die Bringschuld E-B142-1 namentlich an diese
  Datei richtete; sie trägt `last_updated: 2026-09-03`, wurde also **nach** F268 angefasst, ohne
  nachgezogen zu werden. ⚠-Vermerk mit Fundstellen gesetzt.
- **«EN 12944»** ist hubweit ein Unikat; alle 13 übrigen Fundstellen schreiben **SN EN ISO 12944**.
  Vermerk gesetzt, Wortlaut **stehen gelassen** — ungeklärt ist, ob der Minergie-Vorgabenkatalog
  selbst verkürzt; das ist am Original gegenzulesen.
- **SIA 181/1 / DIN 18041**, siehe 1.2.

---

## 2. Neu aus der Verifikation — die zwei Funde, die kein Melder hatte

### 2.1 Die Etappen-Datierung von AS 2025 659 ist am amtlichen Volltext widerlegt

`planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` Z. 126 datiert die RPV-Teilrevision
**AS 2025 659** pauschal auf den 01.07.2026. Der amtliche Wortlaut in
`baurecht/raw/260907_amtlich_ch_rpg2-inkraft-art16-24c-rpv38a.md` Z. 36 gibt für den neuen
5a. Abschnitt RPV (Art. 38a) **dieselbe AS-Nummer** mit «in Kraft seit 1. Jan. 2026» wieder.
Auflösbar nur, wenn die Teilrevision selbst gestaffelt in Kraft trat — was dieselbe Datei an
anderer Stelle richtig sagt (Z. 103, «folgt demselben Etappen-Schema»). Zweiter Fall derselben
Familie: «neue Regeln zu nachträglichen Baugesuchen / illegalem Bauen» ab 01.07.2026 gegen
**Art. 25 Abs. 5 RPG**, seit 01.01.2026 in Kraft und wortlautverifiziert. Beides selbst
nachgemessen, bevor geschrieben wurde.

⚠-Vermerk mit beiden Belegen gesetzt. **Bewusst nicht behauptet**, welche Bestimmungen wirklich
erst am 01.07.2026 in Kraft treten — das ist ungeklärt, und eine Korrektur ohne Beleg wäre
derselbe Fehler in die Gegenrichtung.

**Die Richtung kehrt sich zwischen den Etappen um.** Bei der ersten lag `planungsgrundlagen` seit
dem 20.06.2026 richtig, während `baurecht` RPG 2 bis zum 07.09.2026 als «anstehende Revision»
führte. Bei der zweiten liegt `planungsgrundlagen` daneben. Keine der beiden KBs ist die
verlässlichere; verlässlich ist nur der Abgleich.

### 2.2 F268 schliesst E-B141-1, nicht E-B142-1 — eine Fehlbuchung, die fast passiert wäre

Der Melder meldete, die Bringschuld E-B142-1 sei «längst erledigt» und stehe nur noch fälschlich
offen. Die Verifikation hat das **widerlegt**: F268 trägt in der eigenen Schlusszeile «schliesst
die Cross-KB-Bringschuld **E-B141-1**» — das ist die Vorgängerbringschuld. Und zwei Restpunkte
sind belegt offen: der Prüfauftrag an `pv-solar-technologien.md` (siehe 1.5) und der neue
Artikeltitel «Solaranlagen und energetische Sanierungen» (`grep` → 5 Treffer, keiner zum
RPG-Artikeltitel). **Die Box `[ ]` ist sachlich richtig; überholt war nur die Begründung im
Eintrag.** Hätte der Lauf die Meldung übernommen, wäre eine offene Bringschuld abgehakt worden,
deren Kern in einem namentlich benannten Artikel weiterhin falsch stand.

Teilstand-Vermerk gesetzt: was gedeckt ist, was offen bleibt, und die Warnung vor der Verwechslung
B141/B142.

**Der eigentliche unbearbeitete Fachbefund des Paars ist E-B142-2** (Art. 18a Abs. 2bis RPG:
Solarstrukturen über Parkplatzarealen ab 15 Parkplätzen sind in Bauzonen grundsätzlich
zonenkonform). Breite Gegensuche über `energie` ganz: «2bis» 6 Treffer, davon 4 sachfremd und 2 in
der QUESTIONS selbst; «Parkplatz» 75 Treffer, alle E-Mobilität; «Parkier» 8, «Parkfeld» 1,
«Parkraum» 0. **Null Sachbelege.** Praxisrelevant für Arealentwicklungen und Healthcare-Bauten mit
Besucherparkierung. Bleibt bei `energie` — eine fachliche Erstaufnahme ist Sache der KB, nicht der
Koordinationsinstanz.

---

## 3. Widerlegt — bewusst nicht aufgerollt

| Meldung | Widerlegt womit |
|---|---|
| «Doppelspurigkeit des Gesetzeswortlauts Art. 18a RPG» | Arbeitsteilung, nicht Redundanz: `baurecht` führt Systematik/Erlassstand/Rechtsprechung, `energie` den ZH-Vollzugsweg (§ 2a/2c BVV, Meldefrist, Pflichtbeilagen). Echtes Doppel nur bei den Kernnormen. Auch «ohne gegenseitigen Verweis» fiel: `energie` zeigt vierfach auf `baurecht`, die Kante ist **einseitig**, nicht fehlend |
| «pg → baurecht fehlende Kante» | Der generische Zeiger Z. 197 entspricht der Führungsmatrix (`QUERBEZUEGE.md` Z. 64); ein artikelscharfer `[[link]]` wäre schemawidrig, weil das Ziel unter `buecher/` liegt (`WISSEN-CLAUDE.md` Z. 60) |
| «Datenstands-Täuschung durch `last_updated`» | Dreifach: das Schema kennt keine Abschnitts-Semantik; das Feld benennt seinen Gegenstand selbst; der Abschnitt trägt einen eigenen Stempel plus fünf datierte Refreshes. Der Stempel **untertreibt** die Aktualität um fünf Wochen |
| «SIA 262:2025 fehlt im Register» | Die Übergabe steht seit dem 06.09.2026 in `normen/wiki/QUESTIONS.md`; ein zweiter Eintrag wäre ein Duplikat. Kein Kennwert hängt an der Ausgabe |
| «EN 12944 ist eine Registerlücke» | Kein Registerfall, sondern eine verkürzte Bezeichnung — die Norm ist als **SN EN ISO 12944** dreizehnfach im Bestand. Umqualifiziert, in der Quelle vermerkt |
| «Rohdichte-Widerspruch ≥ 980 gegen 1'003 kg/m³» | Schwellenwert gegen Punktwert; 1'003 ≥ 980. Kein Widerspruch |

**Zwei Nullbefunde mit Aussage.** (a) Der Bruchversuch gegen «keine Stelle trägt noch die weitere
Fassung 2015» ist über das **ganze Repo** gefahren: 24 Treffer in 9 Dateien, **null** der
Kategorie «geltende Aussage». Präzisierung, die dazugehört: das gilt für Text im Repo — auf
SharePoint liegt die 2015er-Datei unmarkiert neben der 2017er, wer dort greift, greift weiterhin
zur weiteren Fassung. (b) `claude-code` ↔ `spec` ist sauber verdrahtet: F-TRIG1 steht beidseits,
und keine Gegenwartsaussage «kein neuer Spec-Fall seit 28.07.» ist im Umlauf.

**`twin` ↔ Rules: bewusst nicht angefasst.** Die Auslieferung trägt — alle drei Neuerungen des
Fidelity-Reviews stehen wortidentisch im kompilierten Block, `grep "7 von 8"` über `rules/`,
`skills/twin/`, `agents/` → 0. Der Byte-Riegel nachgemessen: **33'927 B bei MAX 34'000, Reserve
73 B**, seit der SYN-78-Reparatur praktisch unverändert. Der Zeiger auf den ausgelagerten
Gattungs-Messstand ist weiterhin kein auflösbarer Anker (5'552 Zeilen, zwei ähnlich benannte
Überschriften). Ihn zu schärfen kostet Byte, und die Grundsatzfrage liegt als **SYN-78 (b)**
bereits bei Raphael. Ein Lauf, der die letzten 73 B verbraucht, um einen Zeiger zu schärfen,
verschiebt das Problem.

---

## 4. Gesetzt — Dateiliste

| Datei | Delta | Was |
|---|---|---|
| `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` | 2 ersetzte Zeilen, 0 weitere | BKP-Phantomcode «271.10» berichtigt (N43-1) |
| `wissen/normen/wiki/REGISTER.md` | additiv, −0 | Abschnitt Lauf 55 (SN EN 50642) + Frisch-Meldung DIN 18041/SIA 181/1 |
| `wissen/normen/wiki/QUESTIONS.md` | additiv, −0 | WC55-1, WC55-2, plus die zwei widerlegten Fälle als Merkposten |
| `wissen/normen/destillate/vkf-brl-15-15-…tragwerke.md` | additiv, −0 | Praxis-Transfer-Zeile «Fassungsfalle Ziff. 3.7.13» |
| `wissen/normen/wiki/en-520-gipsplattentypen.md` | additiv, −0 | Abschnitt «Abnehmer dieses Artikels» |
| `wissen/energie/destillate/minergie-eco-vorgabenkatalog-…md` | additiv, −0 | SIA 181/1 gilt · DIN-18041-Ausgabe · SN EN ISO 12944 |
| `wissen/energie/wiki/pv-solar-technologien.md` | additiv, −0 | Fassungsstand Art. 18a Abs. 1 / Art. 32a-bis RPV |
| `wissen/energie/wiki/QUESTIONS.md` | additiv, −0 | Teilstand an E-B142-1, Warnung vor Fehlbuchung B141/B142 |
| `wissen/planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` | additiv, −0 | Etappen-Widerspruch AS 2025 659 + Fundstellen-Zeiger |
| `wissen/koordination/QUERBEZUEGE.md` | additiv | 7 Paar-Einträge |
| KB-CHANGELOGs `normen`, `energie`, `projekt-lessons`, `planungsgrundlagen` | additiv | je ein Eintrag |
| `wissen/koordination/CHANGELOG.md` | additiv | Lauf-55-Eintrag |

---

## 5. Offene Entscheide für Raphael

**Nichts Neues aus diesem Lauf.** Unverändert bei ihm liegen:

- **SYN-78 (b)** — der Byte-Riegel der Facetten-Pflichtlektüre (Reserve 73 B): Grenze anheben,
  Verdichtungsregel schärfen, oder den Block in zwei Ladestufen splitten. Nachgemessen, nicht
  verschlechtert.
- **SYN-72 (c)** — der Sachentscheid über den Ursprungssatz in `normen/destillate/sia-416-2003.md`.
- **SYN-74 (b)** — die Planerhaftung nach Art. 367 Abs. 1bis lit. b OR in `honorarberechnung-sia102`.
- **SYN-79** — der Umgang mit dem Altbestand von 85 `outputs/`-Reports mit `links:`-Feld nach der
  Klarstellung vom 08.09.

Nicht entscheidungsbedürftig, aber erwähnenswert: **die Zahl der Beschaffungs-Bringschulden bei
kostenpflichtigen Normen wächst.** Allein aus diesem Lauf kommen SN EN 50642 und SIA 181/1:2026
(110.00 CHF) dazu, neben SN 640 273a, DIN EN 13487, DIN EN 12102-1, SIA 380:2022 und weiteren.
Jede einzelne ist korrekt als «kein Kauf ohne Freigabe» geparkt; in der Summe ist das inzwischen
eine Liste, die einmal als Ganzes angeschaut werden will statt Zeile für Zeile. Kein Auftrag, nur
eine Beobachtung.
