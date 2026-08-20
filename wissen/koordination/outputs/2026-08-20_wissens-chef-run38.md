# Wissens-Chef Run 38 — 20.08.2026 (Abendlauf, 23,9 h nach Run 37)

**Zuschnitt:** 5 Melder (`model: sonnet`) + 7 Refuter (Hauptmodell) = 12 Agenten, 1'911'831 Token,
151 Werkzeugaufrufe, 6,0 Min. Die Reichweiten-Messung fuhr der Hauptprozess deterministisch selbst,
bevor ein Agent startete; eine Verifikation fuehrte er ebenfalls selbst (siehe Abschnitt 2).
**Uhr-Kontrolle bestanden:** Station 23:11 CEST gegen Synology-Selfcommit 23:00:09 (HEAD
`1c4b5ff2`), Delta konsistent mit dem 15-Min-Takt, kein Datumssprung.

**Ergebnis in einem Satz: der VKF-Fassungs-Sweep der letzten Nacht hat den groessten
Brandschutz-Artikel des Hub an fuenf Stellen ueberholt — und die schaerfste davon hatte der
Fan-out als «weich» eingestuft.**

**13 Befunde gemeldet · 7 hart adversarisch geprueft · 5 bestaetigt · 2 widerlegt.**

---

## 1 · Der Anlass

Normen-Nacht Run 58 hat heute um 01:41 erstmals alle 35 destillierten VKF-Publikationen gegen den
amtlichen Publikationsindex abgeglichen. Befund dort: **23 Destillate beruhten auf einer
ueberholten Fassung**, **BRL 103-15 «Cheminées» ist seit dem 31.08.2025 zurueckgezogen**, und die
**Teilrevision 2026** (BRL 12-15/26-15, in Kraft seit 01.04.2026) war der KB unbekannt.

Die KB `normen` hat ausdruecklich **nur ihr eigenes Register** nachgefuehrt und die abnehmenden
Wissensbasen nicht angefasst. Das ist richtig so und genau die Arbeitsteilung, fuer die es diesen
Loop gibt. Die Fassungsmatrix `wissen/normen/training/n58-vkf-fassungsmatrix-260820.md` war die
Wahrheitsquelle dieses Laufs.

**Reichweite, vor dem Fan-out deterministisch gemessen** (VKF-Nennungen ausserhalb `wissen/normen`):

| Ort | Nennungen | Ergebnis |
|---|---|---|
| `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` | **48** | 5 Stellen ueberholt, alle nachgefuehrt |
| `energie` (5 eigene VKF-Destillate) | 33 | 1 fehlende Kante, beidseitig gesetzt |
| Skills-Schicht (`skills/ agents/ rules/ references/`) | 42 Dateien | nur 1 trifft eigene VKF-Sachaussagen, bereits nachgefuehrt |
| `baurecht` (2 Dateien), `bauprodukte` (1) | 8 | kein bestaetigter Befund |

---

## 2 · Der schaerfste Befund kam nicht aus dem Fan-out

Der Melder meldete zu **BRL 17-15 «Kennzeichnung von Fluchtwegen»** eine Fassungsabweichung und
stufte sie als **weich** ein, mit der Begruendung, die Kernzahlen seien «im Sweep nicht als
materiell veraendert vermerkt». Das war eine Aussage ueber den Sweep, nicht ueber die Norm.

Die Gegenprobe im Hauptkontext am 2017er-Aenderungsdelta
(`wissen/normen/destillate/vkf-brl-aenderungen-2017.md`, S. 24 der Gegenueberstellung) zeigt das
Gegenteil:

> **2015:** «Die Sicherheitsbeleuchtung muss bei Stoerung der allgemeinen Stromversorgung
> spaetestens **nach 15 Sekunden** wirksam sein.»
>
> **2017:** «… muss … entsprechend **dem Stand der Technik** wirksam werden.»

Der Wegweiser fuehrte die **15 Sekunden** unter «Kernzahlen» als geltende Anforderung — in dem
Artikel, den JANS bei jeder Fluchtweg-Frage zuerst liest. **Die Frist ist seit dem 01.01.2017
ersatzlos gestrichen; es gibt keine feste Zahl mehr zu zitieren.** Wer «15 Sekunden nach VKF»
schreibt, zitiert eine seit neun Jahren nicht mehr existierende Anforderung.

Der Punkt ist auf **hart** hochgestuft und korrigiert. Zusaetzlich nachgetragen wurde die zweite
2017er-Aenderung derselben Richtlinie (Ziff. 3.3.2, Abgrenzung des zu schuetzenden
Leitungsabschnitts), die im Artikel bisher gar nicht gefuehrt war. **30 Minuten und 1 Lux stehen
nicht in der Aenderungsliste und bleiben unveraendert.**

**Lehre fuer den Zuschnitt:** die Schaerfe-Einstufung eines Melders ist eine Hypothese, keine
Messung. Wo ein Melder «nicht als veraendert vermerkt» schreibt, hat er die Aenderungsliste
vermutlich nicht gelesen — genau dort lohnt die eigene Gegenprobe.

---

## 3 · Die vier weiteren bestaetigten Befunde

### B1 — §5ai: eine Fachgrundlage, die es seit elf Monaten nicht mehr gibt

`planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` wertete die VKF-Erlaeuterung **103-15
«Cheminées»** ueber 46 Zeilen als aktive Fachgrundlage aus und leitete daraus ausdruecklich einen
JANS-Praxis-Transfer fuer `ankaufspruefung`/`machbarkeit` ab. Die Erlaeuterung ist am **31.08.2025
zurueckgezogen** worden; der Abschnitt wurde am **14.07.2026** verfasst, also elf Monate danach.

Warnkasten gesetzt. Der 0.8-m-Erfahrungswert bleibt als Erfahrungswissen brauchbar, ist aber keine
zitierfaehige Fundstelle mehr; die Anforderungen sind ueber die geltende BRL 24-15 und die
kantonale Feuerpolizei abzustuetzen. **Belegqualitaet ausdruecklich vermerkt:** der Rueckzug steht
allein in der Portal-Annotation, das PDF selbst traegt keinen Vermerk (Ticket `N58-2`). Was an die
Stelle der 103-15 getreten ist, ist offen.

### B2 — BRL 26-15: nicht unbekannt, sondern unverbunden

Run 58 meldete die Teilrevision 2026 als **«der KB voellig unbekannt»**. Dieselbe Publikation —
**identische Dokumentnummer `BSPUB-1394520214-125`** — lag seit dem **25.07.2026** in
`energie/destillate/vkf-richtlinie-gefaehrliche-stoffe.md` destilliert vor, mit der Ausgabe
**01.04.2026** und dem Aenderungsvermerk «IOTH 06.03.2026» im Frontmatter.

**Die Information war 26 Tage im Haus.** Beide Aussagen waren fuer sich richtig; es fehlte allein
die Kante zwischen den beiden Dateien. Beidseitig verlinkt, Rollenteilung ausdruecklich benannt:
`normen` fuehrt Fundstelle, Ziffern und Fassungsstand, `energie` die Anwendung im
Batteriespeicher-/Gefahrstoff-Kontext (Ziff. 3.5.3). Der dort seit dem 25.07. offene
Aenderungsvermerk ist zugleich aufgeloest — **Feuerwerk F1 ist in oeffentlich zugaenglichen
Raeumen seit dem 01.04.2026 verboten**, die frueher gaengige Auskunft «Kategorie 1 ist ausgenommen»
ist falsch.

### B3 — Dieser Loop war selbst die Fehlerquelle

Das heute frueh um 05:36 angelegte `energie/destillate/pflanzen-am-bau-projektierungsgrundlagen-zh.md`
behauptete an **vier Stellen**, **SIA 271:2007 sei «laut KB `normen`» zurueckgezogen** und die
Nachfolgenorm «ungeklaert».

Beides falsch, und beides der fuehrenden KB zu Unrecht zugeschrieben:
`normen/destillate/sia-271-2007.md` traegt `status: established`, `normen/wiki/REGISTER.md` Z. 223
und 595 fuehren die Norm als gueltig. Zurueckgezogen ist allein die **Teilnorm SIA 271/2:1994
«Flachdaecher zur Begruenung»** — und deren Nachfolge ist nicht ungeklaert, sondern seit dem
**29.07.2026** am Titelblatt verifiziert und destilliert: **SIA 312:2013 (SN 564312)**. Auch der
angerufene Vorgang stimmte nicht: `N57-2` betrifft **SIA 416/1**, nicht SIA 271.

**Die Herkunft ist belegbar und unangenehm:** es ist das Fassungsvermerk-Muster, das **Wissens-Chef
Run 37** am 19.08. voellig korrekt zu SIA 416/1 in vier energie-Dateien gesetzt hat. Ein
nachfolgender Lauf hat das Muster uebernommen und auf die falsche Norm angewandt. Ein gutes Muster
ist eine Vorlage, und eine Vorlage wird kopiert, auch dorthin, wo sie nicht hingehoert.

**Daraus die Lehre dieses Laufs:** ein gesetztes Fassungsvermerk-Muster ist bei jeder
Weiterverwendung **gegen die Norm zu pruefen, an die es wandert** — nicht gegen die Norm, fuer die
es entstand. Vier Zeilen zeilenexakt berichtigt, Backlink `[[sia-312-2013]]` gesetzt.

Die Frontmatter-Zeile wurde bewusst **praezisiert statt gestrichen**: in der Lesart «durch die
Ausgabe 2007 abgeloest» war sie sachlich richtig, nur missverstaendlich. Die quellentreuen
Nennungen (Z. 34, Z. 117) blieben unangetastet — ein globales Ersetzen auf «SIA 271» haette sie
beschaedigt.

### B4 — Die eigene KB wusste es seit dem 04.08. besser

`energie/wiki/dachbegruenung-gruendach.md` bezeichnet sich selbst als fuehrend fuer Substrat- und
Qualitaetsstandard, nannte aber im ganzen Artikel **kein einziges Mal SIA 312:2013** und stuetzte
die Kennwerte-Tabelle allein auf die Gruendachrichtlinie SFG von 2009.

Dieselbe KB hatte am **04.08.2026** bereits belegt, dass das Feld normativ neu besetzt ist und die
SFG-Richtlinie unter SIA 312 **nur noch Pruefverfahren** ist
(`destillate/eco-bau-merkblaetter-bkp-2008-huelle.md` Z. 274,
`destillate/ecobkp-2026-gebaeudehuelle.md` Z. 185). Der Artikel ist vom **15.08.2026** und damit
juenger als die Korrektur — die Erkenntnis hatte ihn nur nie erreicht.

Referenzzeile ergaenzt, samt der praktisch wichtigen Folge: SIA 312 fuehrt die Mindest-Schichtdicke
**standortabhaengig nach Jahresniederschlag** (110 bis 80 mm) statt als den einen Pauschalwert der
Tabelle.

---

## 4 · Die zwei Widerlegungen — und was sie verhindert haben

### W1 — «Die QSS-Tabelle im Skill `brandschutz` ist ueberholt» · WIDERLEGT

Gemeldet war, `skills/brandschutz/SKILL.md` Z. 222-231 zitiere die QSS-Tabelle **BSR 11-15
Ziff. 3.3.1** ohne Fassungsvorbehalt, obwohl das Destillat seit heute `superseded` ist und die
geltende Fassung vom 01.01.2019 stammt.

Der Refuter ging an die **amtliche Aenderungsliste** der Fassung 2019. Sie nennt ausschliesslich
Ziff. 4.1.1/4.1.3/4.1.4/4.1.5/4.1.6/4.1.7 und Anhang-Positionen — **Ziff. 3.3 ist nicht darunter**,
die Tabelle ist wortgleich. Der Skill traegt den Fassungsvorbehalt zudem bereits, gesetzt heute um
17:23 durch Synergie-Lauf 13 (SYN-37).

**Ein Eingriff haette einen Skill mit einem Vorbehalt versehen, der sachlich nicht besteht** — und
damit eine korrekte Aussage im Kerngeschaeft Brandschutz entwertet.

### W2 — «`bkp-261-aufzuege.md` nennt eine ueberholte Fassung» · WIDERLEGT

Gemeldet war der Satz «BRL 23-15, in Kraft seit 01.01.2015». Der Refuter fand zwei Gruende: der
Satz ist **quellentreu** (das referenzierte normen-Destillat fuehrt ihn selbst als Norm-Aussage,
Ziff. 8, S. 11), und er hat einen **anderen Perimeter** — «in Kraft seit» bezeichnet das
Inkrafttreten der Richtlinie als solcher, nicht ihre Ausgabe.

### Zusaetzlich: der Melder zielte auf die falsche Zeile

Bei B4 nannte der Melder als Ziel den Abschnitt «Konstruktive Anforderungen» und schlug vor, dort
SIA 312 als «primaere Fundstelle» einzusetzen. **Dort haette der Eingriff geschadet:** die Zeile
zum Gefaelle < 1,5 % (SIA 271/2007, Ziff. 2.2.1.1/2.6.1.1/5.1.4) ist quellentreu **und** sachlich
richtig — SIA 312 kennt ueberhaupt kein Mindestgefaelle. Der Refuter hat den Abschnitt verschoben.

**Bilanz der Verifikationsstufe in diesem Lauf: zwei Dateien vor einem unnoetigen Eingriff bewahrt,
eine dritte vor einem Eingriff an der falschen Stelle.**

---

## 5 · Uebergabe-Auftrag 1 aus Run 37 — erledigt

Run 37 hatte als Befund mit der laengsten Halbwertszeit keinen Inhalt benannt, sondern eine
Mechanik: `normen` dokumentierte den SIA-416/1-Rueckzug am 19.08. um 01:42 — **`energie` schrieb um
10:39 neue Zitate derselben Norm**, weil der Lauf die neun Stunden alte Meldung nicht kannte.
Vorgeschlagener Kandidat war ein `ACHTUNG`-Kopf in `wissen/normen/wiki/REGISTER.md`.

**Dieser Lauf hat den zweiten Beleg geliefert, und zwar in die Gegenrichtung** (B2: `energie` wusste
es 26 Tage vor `normen`). Zwei Faelle derselben Mechanik in zwei Tagen, in beide Richtungen — das
genuegt.

Umgesetzt: `wissen/normen/wiki/REGISTER.md` traegt jetzt unmittelbar unter dem Zweck-Kasten den
Abschnitt **«⚠ FRISCH GEMELDET — vor dem Schreiben lesen»**, mit sechs Eintraegen (BRL 103-15,
Teilrevision 2026, BRL 17-15 Ziff. 3.2.2, der 23er-Sweep, SIA 416/1, SIA 271/2 → SIA 312) und einer
Spalte **«Abnehmer nachgefuehrt?»**. Der Ort ist belegt gewaehlt: **337 Destillate dieser KB
verweisen auf `[[REGISTER]]`**, und die destillierenden Loops lesen es ohnehin.

Pflegeregel festgeschrieben: ein Eintrag wandert erst heraus, wenn er im systematischen Teil steht
**und** die Abnehmer nachgefuehrt sind. Der SIA-271-Eintrag traegt ausdruecklich den Warnhinweis,
271 und 271/2 nicht zu verwechseln — genau der Irrtum, der heute frueh passiert ist.

---

## 6 · Was NICHT geaendert wurde

- **`skills/`, `agents/`, `rules/`, `references/`** — kein Eingriff. Gemessen: 42 Dateien nennen
  VKF-nahe Begriffe (28 mit dem engen Muster), aber nur `skills/brandschutz/SKILL.md` trifft eigene
  VKF-Sachaussagen mit Richtliniennummern, und die ist seit heute 17:23 nachgefuehrt. **Damit ist
  der offene Teil von Ticket `N58-5` beantwortet.** Anders als beim SIA-416/1-Fall aus Run 37, wo
  der Rueckzug die Skills-Schicht gar nicht erreichte, hat der VKF-Sweep sie nicht beschaedigt.
- **`bauprodukte`, `baurecht`** — kein bestaetigter Befund. Die beiden weichen Meldungen zum
  Buch-Layer `baurecht` (fehlende Cross-Refs zu `vkf-brl-100-15` und `vkf-brl-15-15` in
  `buecher/band-2/15-lage-von-gebaeuden-teil2d.md`) sind reine Verlinkungswuensche am Buchwortlaut
  und nicht adversarial geprueft; sie bleiben offen.
- **Die 23 `superseded`-Destillate selbst** — ihre Fassungs-Deltas sind nicht destilliert
  (`N58-1`). Das ist Sache der KB `normen`, nicht dieses Loops.

---

## 7 · Offene Entscheide fuer Raphael

### E1 — BRL 22-15 Blitzschutz: beide KBs fuehren ein volles Destillat, mit invertierten Rollen

`normen/destillate/vkf-brl-22-15-blitzschutzsysteme.md` und
`energie/destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md` decken **dieselbe VKF-Richtlinie**
ab. Nach der Rollen-Matrix fuehrt `normen` die Fundstelle.

**Die Auffaelligkeit ist die Richtung:** das energie-Destillat fuehrt die **geltende Fassung
01.01.2017** im Frontmatter (nebst GVZ-Weisung 20.06 und GVB-Merkblatt 09/2024), waehrend das
normen-Destillat in der Fassungsmatrix als **(FM)** steht — Frontmatter veraltet. **Die zuliefernde
KB ist an der Fundstelle genauer als die fuehrende.**

Kein Eingriff in diesem Lauf: Merge und Umwidmung sind destruktiv und brauchen nach Rule
`wissens-bibliothekar` die Einzelfreigabe; ausserdem ist ungeprueft, ob die Destillate inhaltlich
auseinanderlaufen oder nur unterschiedlich tief sind. **Gehoert zusammen mit dem seit Run 26
parkierten Duplikat-Merge der Solaranlagen-Destillate entschieden** (`vkf-brm-2001-15` /
`vkf-merkblatt-2001-15`) — zwei gleichartige Faelle, eine Grundsatzentscheidung.

### E2 — Unveraendert offen aus frueheren Laeufen

Honorar-Phasenanteile und Kategorien-Skala im Skill `honorarberechnung-sia102` (Run 36, E1 —
Geldfolge) · Fassungsstand-Hinweis am Buch-Layer `baurecht` (Run 36, E2) · **Levi Hiltmann** steht
in `rules/anrede-kontakte.md` weiterhin nur im Fliesstext der Gewichts-Klausel, nicht als
Tabellenzeile · SIA 382/2 Ausgabe 2004 gegen 2005 · Praezisierung `skills/ausschreibung` Z. 109-113
· Ticket `T-Regelgeschoss` · SYN-34.

### E3 — Zur Kenntnis

Die **Nachfolgeregelung der BRL 103-15 ist unbekannt** (`N58-2`). Bis sie geklaert ist, hat JANS zu
Cheminées keine zitierfaehige VKF-Fundstelle. Betrifft `ankaufspruefung` und `machbarkeit`, wo der
Punkt laut Wegweiser eine haeufige Ankaufs-Beanstandung ist. — Fuer die
**Sicherheitsbeleuchtung** fehlt nach dem Wegfall der 15-Sekunden-Frist die einschlaegige Fachnorm
(SN EN 1838 / SN EN 50172) in der KB `normen`; sie ist vor dem ersten Zitat zu beschaffen.

---

## 8 · Uebergabe an Run 39

1. **Den Meldekopf messen, nicht nur bauen.** Der Abschnitt «FRISCH GEMELDET» steht seit heute.
   Zu pruefen ist, ob ein destillierender Lauf ihn **tatsaechlich liest**, bevor er schreibt — das
   ist dieselbe Frage, an der Konfigurationsfelder wie `model:` und `enabled:` gescheitert sind
   (Rule `auto-verbesserungen` 260807: erst messen, dann glauben). Konkreter Test: faellt der
   naechste energie- oder planungsgrundlagen-Lauf, der eine VKF- oder SIA-Fundstelle schreibt, auf
   eine der sechs Meldungen zurueck?
2. **Die Muster-Weitergabe pruefen.** B3 hat gezeigt, dass ein von diesem Loop gesetzter
   Fassungsvermerk als Vorlage weiterwandert und dabei die Norm wechseln kann. Zu pruefen: tragen
   die **anderen vier** von Run 37 gesetzten SIA-416/1-Vermerke inzwischen Nachahmer an anderen
   Normen? Suchmuster: «laut KB `normen` zurueckgezogen» ausserhalb der KB `normen`.
3. **Die Kennwert-Gegenprobe zu Ende fuehren** (unveraendert offen aus Run 37, Punkt 2):
   `immobilienbewertung` (Diskont-/Kapitalisierungssatz, Lebensdauern) und `kostenschaetzung` gegen
   `grobkosten` in der Breite, mit engerem Zuschnitt je Skill.
4. **Doppel-Destillat-Cluster** (unveraendert offen aus Run 37, Punkt 3), jetzt um **zwei
   VKF-Faelle erweitert** (BRL 22-15, Solaranlagen). Groesstes Risiko bleibt
   `ugz-hindernisfreie-aufzuege-2010`, dessen Ueberarbeitung 9 Tage nach dem Wiki-Stand nie
   gegengelesen wurde.
5. **Rotationspaar:** `wettbewerbs-dna ↔ entwurfs-referenzen ↔ architekten-synobsis` ist seit
   Run 35 nicht mehr an der Reihe gewesen.

---

*Bericht des Wissens-Chefs, Run 38, 20.08.2026. Fan-out und Verifikation ueber das Workflow-Tool
(Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell); Reichweiten-Messung,
die Hochstufung des 17-15-Befunds, Urteil, Aktionen und Registerpflege im Hauptkontext.*
