---
titel: Wissens-Chef Run 34 — Cross-KB-Abgleich der JANS-Wissensbasen
datum: 2026-08-16 (Abendlauf, 23,7 h nach Run 33)
station: MacBook Pro
zuschnitt: 5 Melder + 2 Refuter (7 Agenten, 1'247'816 Token, 138 Werkzeugaufrufe, 8,6 Min)
delta: 62 Dateien in wissen/, 115 Commits seit Run 33
status: abgeschlossen, still beendet (keine eigene Mail, Rule 260803)
---

# Wissens-Chef Run 34

## 1 · Das Wichtigste

**Dieser Lauf hat aufgehört, Einzelfälle zu melden, und stattdessen ihre Ursache gemessen.**

Run 33 fand am 15.08. eine Doppeldestillation (Dachbegrünung: `energie` verarbeitete eine
Quelle, die `planungsgrundlagen` bereits korrigiert hatte). Dieser Lauf fand zwei weitere vom
selben Bauplan — PCB-Fugendichtungsmassen und die Raumtemperatur-Richtlinie 2006. Drei Fälle in
zwei Läufen sind kein Zufall, also wurde die Frage umgedreht: **wie oft passiert das überhaupt?**

Die Antwort ist eine einzige Zeile Messung. Von den **25** `energie`-Destillaten, deren Quelle im
AHB-Ordner `PL - 02_Recht_Norm/04_Merkblätter/Projektadmin AHB/` liegt, ist **genau eines** in
`planungsgrundlagen` genannt — und das nur, weil Run 33 die Kante gestern gesetzt hat. Gleichzeitig
wertet dort ein **1'439-zeiliger Artikel** (`recht-norm-ahb-stadt-zuerich-projektstandards`,
`established`) genau denselben Ordner systematisch aus.

Die härteste Einzelmessung daraus: die neun Destillate `ahb-zuerich-gt-rl1` bis `-rl9` entstanden
am **03.08.2026** in `energie`. Die §§ 12 und 13 des pg-Artikels destillieren **dieselben neun
Quell-PDF** und entstanden am **14./25.07.2026**. Neun Tage Abstand, unabhängig gearbeitet,
**null Kanten in beide Richtungen**.

Damit ist klar, was gefehlt hat: nicht eine Korrektur, sondern eine **Führungszeile für den
ganzen Korpus**. Sie ist gesetzt.

Der zweite Ertrag kommt aus der Übergabe E3 von Run 33 (Achse Bauleitungs-Skills ↔ `normen`) und
ist der teuerste des Laufs: **drei Befunde in drei von vier Skills**, alle mit Geld- oder
Rechtsfolge, alle korrigiert.

---

## 2 · Vorstufe: die Übergaben aus Run 33

Run 31 empfahl, **zuerst die eigenen Übergaben** abzuarbeiten; Run 32 und 33 vollzogen es. Dieser
Lauf hat es wiederholt.

**E3 (Achse Bauleitungs-Skills ↔ `normen`) — eingelöst, und sie trug mehr als erwartet.**
Run 33 hatte `kostenkontrolle` verdrahtet und die Nachbarn ungeprüft gelassen. Die Prüfung ergab
drei Befunde, siehe Abschnitt 3.

**E2 (SIA 382/2, Ausgabe 2004 gegen 2005) — hat sich weiterhin nicht ausgebreitet.**
Eigene Messung: 12 Fundstellen in `energie`, alle in Dateien, die vor diesem Fenster entstanden.
**Keines der 10 neuen Destillate vom 16.08. nennt SIA 382/2.** Der Auftrag an den Skill `normen`
bleibt der richtige Weg; nichts zu tun.

**E1 (sechs Du-Kontakte) — unverändert offen, siehe Abschnitt 5.**

---

## 3 · Bestätigte Befunde

### B1 (WIDERSPRUCH, adversarial bestätigt) — `offertenpruefung` verwechselt Garantiefrist mit Verjährung

`skills/offertenpruefung/SKILL.md` Z. 70 lautete wörtlich:

> «- **Gewaehrleistung** (typisch 2 Jahre / SIA 118 5 Jahre)»

Die Konstruktion stellt einen Marktwert («typisch 2 Jahre») einer angeblichen Norm-Grösse
(«SIA 118 5 Jahre») für **denselben Sachverhalt** gegenüber. Das ist falsch. Am Destillat
`wissen/normen/destillate/sia-118-1991.md` (`status: established`, Volltext gelesen,
Art. für Art. gegengeprüft) belegt:

- **Art. 172** — Garantiefrist/Rügefrist: **2 Jahre.** Das ist die Gewährleistung, und sie ist
  identisch mit dem als «typisch» bezeichneten Marktwert.
- **Art. 180** — Verjährung der Mängelrechte: 5 Jahre. Eine **separate** Grösse.

Das Destillat warnt in seinem Begriffe-Abschnitt (Z. 142) wörtlich vor genau dieser Verwechslung:
«NICHT mit der Verjährungsfrist (Art. 180) zu verwechseln (die Fussnoten der Ausgabe 1991 stellen
genau das klar)». Der Skill beging sie.

**Wirkung, und deshalb ist es kein Schönheitsfehler:** Der Skill prüft eingehende Offerten. Eine
Offerte mit vertraglich vereinbarter 2-Jahres-Gewährleistung — also **normkonform** — wäre gegen
einen erfundenen SIA-118-Standard von 5 Jahren als unterdurchschnittlich bewertet und in die
Verhandlung getragen worden.

Der Refuter hat den Befund **und** den Korrekturvorschlag geprüft und beide gehalten. Korrigiert,
mit Quellenangabe und Korrekturvermerk.

### B2 (VORBEHALT, am Original bestätigt) — Rückbehalt und Garantie sind zwei Sicherheiten, nicht eine

`skills/unternehmerkontrolle/SKILL.md` Z. 76 und `skills/werkvertrag/SKILL.md` Z. 69 führten
beide, fast wortgleich:

> «**Rueckbehalt/Garantie 10 %** (Art. 181 SIA 118) konsequent fuehren.»

Am Destillat selbst nachgelesen (nicht dem Melder geglaubt, Rule 260729b) — es sind zwei
Bestimmungen mit zwei Schwellen:

| | Rückbehalt (bis Abnahme) | Solidarbürgschaft (nach Abnahme) |
|---|---|---|
| Fundstelle | **Art. 149-150** | **Art. 181** |
| Grundsatz | 10 % des Leistungswerts | 10 % der Vergütungssumme |
| Reduktion | über Fr. 300'000.– → 5 % | über Fr. 200'000.– → 5 % |
| Mindestbetrag | Fr. 30'000.– | Fr. 20'000.– |
| Sonderfall | grob geschätzte Global-/Pauschalleistung 20 %; kein Rückbehalt auf Regie und Teuerung (Art. 149 Abs. 2) | ausnahmsweise Bargarantie (Art. 182) |

Beide Ausgangsprozentsätze sind 10 %, was die Verschmelzung erklärt — **die Schwellen und
Mindestbeträge sind es nicht.** Bei einem Auftrag zwischen Fr. 200'000.– und Fr. 300'000.–
divergieren die beiden Sicherheiten sofort. Zusätzlich fehlte die Fälligkeitskette aus Art. 152:
der Rückbehalt wird erst kumulativ mit Abnahme, geprüfter Schlussabrechnung **und** geleisteter
Sicherheit nach Art. 181 fällig — und bleibt bis dahin unverzinst.

**In beiden Dateien gleichzeitig korrigiert**, damit sie nicht wieder auseinanderlaufen.

### B3 (VERLINKUNG, selbst gemessen) — `offertenpruefung` war der einzige Bauleitungs-Skill ohne Normen-Bezug

Eigene `grep`-Messung über die vier Skills der Achse:

| Skill | `wissen/normen` bzw. `normen-referenz` | «SIA 118» |
|---|---|---|
| `kostenkontrolle` | 5 (verdrahtet in Run 33) | 3 |
| `werkvertrag` | 3 | 5 |
| `unternehmerkontrolle` | 2 | 6 |
| **`offertenpruefung`** | **0** | **2** |

`offertenpruefung` traf mit Z. 70 eine SIA-118-Fristenaussage mit Rechtsfolge und nannte Z. 150
SIA 118/1024 als Referenzquelle — ohne die Rule `normen-referenz` im Contract-Block und ohne
einen einzigen Verweis in die Normen-KB. **Das ist derselbe Fund wie bei `kostenkontrolle` in
Run 33, nur eine Tür weiter.** Rule ergänzt, Destillat-Pfad an der Fundstelle gesetzt.

### B4 (DOPPELSPURIGKEIT, Korpus-Ebene) — der AHB-Ordner wird von zwei KBs bewirtschaftet

Der Hauptbefund, hergeleitet in Abschnitt 1. Zwei Einzelfälle führten darauf:

**(a) Raumtemperatur-Richtlinie 2006 (StRB 1194/04.10.2006).** `energie` destillierte sie am
16.08. vollständig (131 Zeilen, Anhänge 1–3 komplett). `planungsgrundlagen` führt sie seit dem
25.07. als Absatz in §20. Werte **identisch** geprüft: 16 °C-Untergrenze im Absenkbetrieb,
minus-10-°C-Schranke, Büro/Werkstatt 06.00–20.00 Uhr, Elektroheizöfen-Verbot, SIA 384/2 als
Referenznorm. Kein Widerspruch — diesmal.

**(b) KBOB-Merkblatt 2004/4, PCB in Fugendichtungsmassen.** `energie` destillierte es am 16.08.
(Run 136 plus ein eigenes Destillat). `planungsgrundlagen` führt es seit dem **14.07.2026** in
§17.3 mit demselben vierstufigen Entscheidbaum und denselben Schwellen (>50 ppm Sanierungspflicht
als Sonderabfall; Innenraumluft-Jahresmittel >6 µg/m³ Tagesaufenthalt bzw. >2 µg/m³
Daueraufenthalt). **33 Tage Abstand.**

Bei (b) ist die Doppelarbeit nicht nur Verschwendung, sondern hat einen Informationsverlust
erzeugt, der ohne den Cross-KB-Lauf unentdeckt geblieben wäre: die beiden Fassungen sind
**unterschiedlich vollständig**. `energie` las die 18-seitige Grundlage ganz, `planungsgrundlagen`
nur den Auszug S. 1–4 — dafür führt `planungsgrundlagen` **PCP** als drittes Substanzprofil und
eine feinere Bauteilliste, die in `energie` fehlen. Wer heute in `energie` ein
Schadstoff-Screening aufsetzt, hält es für vollständig und übersieht PCP. Die Kante sagt das
jetzt ausdrücklich.

---

## 4 · Der gefallene Befund — und warum er der lehrreichste ist

Ein Melder meldete den PCB-Fall mit einer Zusatzdiagnose: die Brücke zwischen beiden KBs sei ein
**toter Wikilink**. `planungsgrundlagen` verweise dreimal plus im Frontmatter auf
`[[energie-baustoffe-schadstoffe-rueckbau]]`, und diese Datei gebe es in `wissen/energie/wiki/`
nicht (sie heisse dort `gebaeudeschadstoffe.md`). Vorschlag: alle vier Vorkommen umbiegen.

**Der Refuter hat das widerlegt, und die Widerlegung hat einen Schaden verhindert.** Die Datei
existiert — `wissen/planungsgrundlagen/wiki/energie-baustoffe-schadstoffe-rueckbau.md`,
`status: established`, angelegt am 14.07.2026, 9'955 Bytes. Selbst nachgemessen und bestätigt.

Der Melder war über ein Namensmuster gestolpert: **`planungsgrundlagen` benennt seine eigenen
Artikel mit Domänen-Präfixen** — `energie-`, `recht-norm-`, `brandschutz-` — passend zu den vier
PL-Bibliotheken, die der Skill bündelt. Ein Artikel namens `energie-*` liegt dort **in derselben
KB**, nicht in der KB `energie`. Die vorgeschlagene «Korrektur» hätte vier funktionierende Links
zerstört und den Bezug auf einen sachlich anderen Artikel (kantonale AWEL-Checkliste,
Vier-Fälle-Weiche Art. 16 VVEA) umgelenkt.

**Ein Dateiname, der mit einem KB-Namen beginnt, ist keine KB-Zuordnung.** Der Satz steht jetzt
in der gesetzten Kante, damit der nächste Lauf nicht denselben Weg geht.

Vom Befund blieb der Rest übrig, den der Refuter selbst benannte: die KB-übergreifende
Doppeldestillation ist real, nur war der tote Link nicht ihre Ursache. Dieser Rest ist als B4 (b)
oben verarbeitet — **der Befund fiel, seine Substanz nicht.**

---

## 5 · Ausgeführte Aktionen

| # | Datei | Aktion | Messung |
|---|---|---|---|
| 1 | `skills/offertenpruefung/SKILL.md` Z. 70 | Gewährleistungs-Zeile korrigiert (Art. 172 / Art. 180 getrennt, Quelle genannt) | 7+/2− |
| 2 | `skills/offertenpruefung/SKILL.md` Z. 13 | `normen-referenz` in den Rules-Block ergänzt | (siehe 1) |
| 3 | `skills/unternehmerkontrolle/SKILL.md` | Rückbehalt (Art. 149-150) und Solidarbürgschaft (Art. 181) getrennt, mit Schwellen und Fälligkeitskette | 13+/1− |
| 4 | `skills/werkvertrag/SKILL.md` | dieselbe Trennung, plus Fristen Art. 172/180 präzisiert | 8+/2− |
| 5 | `energie/wiki/bezugsgroessen-energienachweis.md` | Kante auf `[[sia-416-2003]]` (`established`), Vorbehalt bewusst stehen gelassen | 5+/0 |
| 6 | `energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` | dieselbe Kante + 10-m²-Vorbehalt aus `[[sia-416-1-2007]]`, ausdrücklich als Warnkarte | 13+/0 |
| 7 | `energie/destillate/raumtemperatur-richtlinie-stadt-zuerich-2006.md` | Gegenkante nach `planungsgrundlagen` §20 samt Führungsaufteilung | 2+/0 |
| 8 | `energie/wiki/gebaeudeschadstoffe.md` | Gegenkante nach `planungsgrundlagen` §17.3, PCP-Lücke benannt, Präfix-Warnung gesetzt | 16+/0 |
| 9 | `planungsgrundlagen/wiki/recht-norm-ahb-…-projektstandards.md` §20 | Gegenkante nach `energie`, Korpus-Befund benannt | 8+/0 |
| 10 | `koordination/QUERBEZUEGE.md` | **zwei neue Führungszeilen**: AHB-Korpus (geteilt nach Ebene) und Fenster-Kennwerte Uw/Ug/g-Wert | 2+/0 |

Dazu CHANGELOG-Einträge in `energie`, `planungsgrundlagen`, `normen` und `koordination`.

**Zwei Kanten wurden gegen den Vorschlag der Melder eingeschränkt** (dieselbe Disziplin wie
Run 33): `[[sia-416-1-2007]]` trägt `status: speculative` und ist nach Rule `normen-referenz`
Ziff. 1b eine Warnkarte — die Kante ist als **Prüfauftrag** formuliert, nicht als Beleg. Und bei
`[[sia-416-2003]]` wurde der bestehende Vorbehalt zur schwachen RHYMO-Quelle **nicht** gestrichen:
der Ersatz ist jetzt auffindbar, der Begriff-für-Begriff-Abgleich aber noch nicht geleistet.
Einen Vorbehalt zu löschen, weil die Lösung erreichbar wurde, wäre eine Statusmeldung ohne Arbeit.

---

## 6 · Geprüft, kein Befund

- **BKP-Codes der drei neuen `bauprodukte`-Artikel**, selbst gegen
  `references/bkp-2017/BKP-2017-Liste.md` gemessen: **221.0** Fenster aus Holz, **281.0** Estriche
  (Unterlagsböden), **233** Leuchten und Lampen. Alle drei existieren, alle drei passen zur
  bezeichneten Leistung, **keine Phantom-Subcodes** wie im Fall 271.10. Der ERCO-Artikel schreibt
  seinen Code sogar selbst als «verifiziert gegen» aus.
- **Fenster-Kennwerte:** `bkp-221-holzfenster-3fach-verglasung` führt Uw = 0,9 W/m²K korrekt als
  **Produktwert** eines konkreten Systems und delegiert die Anforderungswerte ausdrücklich an
  `energie` und das kantonale Energierecht. Kein Übergriff — es fehlte nur die Matrixzeile
  (gesetzt).
- **EBF-Definitionen in drei KBs** (`energie`, `normen`, `baurecht`-Buch): fast wortgleiche
  Grunddefinition, **kein Widerspruch**. Der von Run 33 gesetzte Cross-Ref im Buch-Destillat hält
  den Geltungsbereichs-Unterschied (kantonaler Vollzug EN-2 gegen SIA-Normtext) bereits korrekt
  als Vorbehalt fest.
- **Ausgaben-Konsistenz SIA 380/1 (2009 gegen 2016):** konsistent — beide Seiten nennen für 2016
  übereinstimmend 9,4 °C / 6 % pro K statt 8,5 °C / 8 % pro K.
- **`sia-215-1978.md`** (neu am 16.08., `normen` Run 53): mineralische Bindemittel, themenfremd zu
  den Flächen- und Bezugsgrössen dieses Laufs. Keine Berührung.
- **`twin` gegen `spec` und die kompilierte `rules/jans-dna.md`:** die sechs am 16.08. neu
  geschriebenen Facetten wurden programmatisch gegen die Do/Don't-Blöcke in
  `rules/jans-dna-facetten.md` verglichen — **kein Kompilat-Verzug, keine materielle
  Grenzüberschreitung** zwischen Methoden-Führung (`spec`) und Verhaltensevidenz (`twin`).
- **Die neuen `energie`-Destillate zu Verfahren und Formularen** (EN-1b, Minergie-ME-Antrag,
  Erdsonden-Potentialabklärung) wurden gezielt auf einen Übergriff in die
  `planungsgrundlagen`-Führung «Energienachweis-Verfahren / EVEN / Formulare» geprüft: **keiner.**
  Sie behandeln historische Formulare als Zeitdokument, nicht als heutigen Verfahrensstand.

---

## 7 · Offene Entscheide für Raphael

### E1 — Du-Kontakte in `rules/anrede-kontakte.md`: unverändert offen, jetzt sieben

Die sechs aus Run 33 sind **nicht** eingetragen. Eigene Messung (`grep -c` je Nachname gegen die
Rule bzw. gegen `wissen/twin/wiki/beziehungsregister.md`):

| Person | in der Rule | im Twin-Register |
|---|---|---|
| Stefanie «Steffi» Sonderegger | 0 | 14 |
| Gertrud Angerer | 0 | 4 |
| Michael «Michi» Spörri | 0 | 6 |
| Othmar Stadelmann | 0 | 7 |
| Jens Ziegel | 0 | 15 |
| Cekdar Duran | 0 | 21 |

`rules/anrede-kontakte.md` hat seit dem 15.08.2026 keinen Commit erhalten.

**Neu hinzu — Levi Hiltmann** (TeKoSi AG, Türfachplaner, Projekt 2619 KISPI). Sein Du-Status ist
seit dem 27.07. belegt und wurde am 16.08. durch Mailbatch 95 unabhängig zum zweiten Mal
bestätigt («Geschätzter Levi» + «Lieber Gruss», Eigentext vom 14.08.2026). Er **steht** in der
Rule — aber nur als Beleg-Beispiel im Fliesstext der Gewichts-Klausel, **nicht als Zeile in der
Kontakttabelle**. Wer beim Mailschreiben die Tabelle konsultiert (der Normalfall), findet ihn
nicht und fällt auf den Sie-Default.

**Weiterhin bewusst nicht selbst eingetragen.** Die Rule regelt ihre Pflege selbst: «Wenn der
Benutzer bestätigt …» und «Im Zweifel nachfragen, nie raten». Ein Du-Mapping aus Mailverkehr
abzuleiten ist keine Bestätigung, und es wirkt sofort in ausgehende Post. Zur Reibung: Sonderegger
steht neben dem gelisteten Albin Spahic im **aktiven** Projekt 2619 — eine Mail an beide trägt
heute für ihn Du und für sie fälschlich Sie. Und bei Gertrud Angerer gehört die Abgrenzung zu
Thomas Angerer (Nova, Projekt 2620, andere Person, anderes Projekt) ausdrücklich in die
Notizspalte, falls eingetragen wird.

Ebenfalls seit Run 32 offen: die **Kanal-Achse** («Sammelpostfach senkt die Stufe») als
Gegenstück zur Gewichts-Klausel vom 29.07.

### E2 — Unverändert offen aus früheren Läufen

SIA 382/2 Ausgabe 2004 gegen 2005 (**geprüft: hat sich nicht weiter ausgebreitet**, keines der
10 neuen Destillate nennt sie) · Präzisierung `skills/ausschreibung` Z. 109-113 (Ersatzwortlaut
liegt vor, wegen Geldfolge nicht selbst gesetzt) · Ticket T-Regelgeschoss (HNF/GF 0,70 gegen 0,75,
seit Run 15) · BKP-Code Briefkastenanlage 2620 · Ticket N43-1 · `normen` N27-2 · die älteren
Bring-Schulden (UBSFS-Spiegel, SIA 380/2:2022, `normen/destillate/links.md`, D10, Spektrumskosten,
`MAX_AUTO_BYTES`).

### E3 — Zuwachs für Run 35

**Der AHB-Korpus ist beschriftet, aber nicht bereinigt.** Die Führungszeile sagt jetzt, wer was
führt; die 24 fehlenden Kanten bestehen weiter. Der lohnendste Einzelschritt: die neun
`ahb-zuerich-gt-rl1..9`-Destillate gegen §12/§13 des pg-Artikels **inhaltlich** abgleichen — bei
PCB hat genau dieser Vergleich eine echte Lücke (PCP) ans Licht gebracht, und die neun GT-RL sind
neunmal dieselbe Konstellation. Das ist keine Registerpflege, sondern eine Substanzprüfung.

**Zweitens:** dieser Lauf hat drei von vier Bauleitungs-Skills gegen `normen` geprüft und in allen
dreien etwas gefunden. Ungeprüft blieb `ausschreibung` (402 Zeilen, der grösste) über die
Stichprobe hinaus. Die Trefferquote der Achse ist bisher 4 von 5 Skills.

---

## 8 · Kontrollen

- **Uhr-Kontrolle** (Rule 260730b): Station 2026-08-16 23:14:48 CEST gegen den nativen
  Synology-Log 22:59:53 (`selfcommit-202608.log`, per `awk` gelesen — die Datei ist nicht UTF-8,
  `grep` liefert dort still nichts). Der Log-Eintrag entspricht HEAD `cfe1dc8c`. Bestanden.
- **Schreib-Kontrolle** (Rule 260811): `git diff --numstat` **nativ per ssh auf der Synology**,
  nie `git` über SMB. Zehn eigene Dateien: sechs rein additiv (−0), drei Skills mit zusammen
  **fünf** Löschungen. **Jede gelöschte Zeile einzeln gesichtet** — es sind exakt die fünf
  Ankerzeilen, die ich ersetzt habe. Keine Datei hat Bestand verloren.
- **Fremde unbestätigte Änderungen unberührt gelassen** (Rule 260811 Ziff. 3):
  `logbuch/kontingent/verbrauch-Macbookpro.json` und die beiden `station-status/`-Dateien standen
  im selben Arbeitsbaum als geändert. Nicht angefasst, nichts aus HEAD wiederhergestellt.
- **Kein globales Suchen-und-Ersetzen**, alle Edits am Anker.
- **`raw/` unberührt.**
- **Agenten-Befunde nicht ungeprüft übernommen** (Rule 260729b): der Rückbehalt/Bürgschaft-Befund
  wurde vom Hauptprozess am Destillat selbst nachgelesen; die BKP-Codes selbst gegen die Liste
  gemessen; die Existenz und der `status:` jedes Kantenziels selbst geprüft; der Korpus-Befund
  (25 Destillate, 1 Kante) ist eine eigene Messung, keine Agentenaussage.
- **Ein Werkzeugfehler bei mir selbst gefunden:** die erste BKP-Prüfung lieferte für alle drei
  Codes ein leeres Ergebnis. Das war eine Aussage über mein `grep`-Muster (die Liste ist keine
  Tabelle, sondern eine Einrückungsliste), nicht über die Codes — Rule 260807. Nach Korrektur
  waren alle drei sauber auffindbar. Hätte ich das leere Ergebnis als Befund genommen, wäre daraus
  ein Phantom-Fehler in drei Artikeln geworden.
- **Kein Eingriff in fremde Wiki-Struktur**, keine Löschung, kein Merge, keine Umbenennung.
- **Kein `git` über SMB schreibend** (Rule `sync-kanonische-quelle`); Commit über
  `nas-commit-now.sh`.
- **Keine eigene Mail** (Rule 260803, Ein-Mail-Prinzip): die offenen Entscheide in Abschnitt 7
  nimmt der `hub-chef` ins Tagesbriefing.

---

## 9 · Zur Methode

Run 33 stellte um: Verlinkungen misst der Hauptprozess deterministisch per `grep`, nur
Widersprüche und Veraltetes gehen adversarial in die Gegenprüfung. Dieser Lauf hat den Zuschnitt
unverändert übernommen — 7 Agenten, 1,25 Mio Token — und er trägt weiter: 10 Meldungen, von denen
9 hielten.

**Was dieser Lauf hinzufügt, ist eine Stufe davor.** Bis Run 33 war die Frage «welche zwei
Dateien widersprechen sich?». Die drei Doppeldestillationen in zwei Läufen legten eine andere
nahe: «**welcher Quellordner wird von zwei KBs gleichzeitig abgebaut, ohne dass sie voneinander
wissen?**» Diese Frage ist mit einem einzigen `grep` über die `quelle:`-Felder beantwortbar — sie
kostete in diesem Lauf keine zwei Minuten und lieferte den grössten Befund. Ein Melder hätte sie
nie gestellt, weil sein Auftrag zwei Dateien vergleicht, nicht zwei Korpusse.

**Vorschlag für Run 35 (Entscheid bleibt bei Raphael):** die Korpus-Frage als festen Schritt 1b
vor den Fan-out setzen. Konkret: die `quelle:`-Frontmatter aller KBs auf gemeinsame
Quellordner-Präfixe gruppieren und jedes Bündel melden, das von mehr als einer KB bedient wird und
weniger Kanten hat als Dateien. Der AHB-Ordner war der erste Fund dieser Art; `PL - 02_Recht_Norm`
insgesamt, das SharePoint-Normenarchiv und `03 Bauprodukte_BKP` sind die naheliegenden nächsten
Kandidaten.

**Die Einschränkung dazu, damit sie nicht untergeht:** Doppelbewirtschaftung ist nicht per se
falsch. Beim AHB-Ordner ist sie sogar richtig — zwei KBs auf zwei Ebenen desselben Materials, und
genau so steht es jetzt in der Matrix. Falsch war nur, dass es niemand aufgeschrieben hatte.
**Die Messung findet die Stellen; ob dort ein Fehler liegt oder eine unbeschriftete
Arbeitsteilung, entscheidet weiterhin die Lektüre.**
