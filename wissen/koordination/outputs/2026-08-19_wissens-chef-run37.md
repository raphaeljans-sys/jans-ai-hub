# Wissens-Chef Run 37 — 19.08.2026 (Abendlauf, 23,7 h nach Run 36)

**Zuschnitt:** 5 Melder (`model: sonnet`) + 3 Refuter (Hauptmodell) = 8 Agenten,
1'386'907 Token, 141 Werkzeugaufrufe, 8,8 Min. Die Reichweiten-Messung fuhr der
Hauptprozess deterministisch selbst (`grep` ueber vier Schichten), bevor ein Agent startete.
**Uhr-Kontrolle bestanden:** Station 23:15:32 CEST gegen Synology-Selfcommit 23:15:01/06
(HEAD `34a3ce10`); Delta konsistent mit dem 15-Min-Takt, kein Datumssprung.

**Ergebnis in einem Satz: eine Norm ist seit elf Jahren zurueckgezogen, ohne dass es eine
der vier abnehmenden Wissensbasen wusste — und die beiden haertesten Meldungen dieses Laufs
waren beide falsch.**

Der zweite Halbsatz ist der wichtigere. Ohne die Refuter-Stufe haette dieser Lauf zwei
Dateien beschaedigt, die vollstaendig in Ordnung sind.

---

## 1 · Der Kernbefund: eine Handlungsanweisung, die seit 2015 in die falsche Richtung zeigt

Normen-Nacht Run 57 belegte heute um 01:42 an zwei Primaerquellen, dass
**SIA 416/1:2007 «Kennzahlen fuer die Gebaeudetechnik» seit dem 31.03.2015 zurueckgezogen** ist
(SIA-Shop: «archivierter Titel»; Titelblatt der **SIA 380:2015**: «Ersatz fuer SIA 416/1:2007»).
Die KB `normen` fuehrte ihr eigenes Register nach und meldete die betroffenen Fremd-KBs
ausdruecklich **nur**, ohne sie anzufassen — richtig so, das ist Sache dieses Loops.

Die schaerfste der elf betroffenen Stellen ist keine Fundstelle, sondern eine **Anweisung**.
`wissen/energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` trug im Abschnitt zur
Normbezeichnung woertlich:

> **beim Zitat in einem Aussendokument ist statt der zurueckgezogenen Norm die Nachfolgenorm zu
> nennen** (Rule `normen-referenz.md`, Ausgaben-Disziplin).

Die «zurueckgezogene Norm» ist dort SIA 180/4:1982, die «Nachfolgenorm» SIA 416/1:2007. Die
Anweisung ist methodisch vorbildlich und im Ergebnis falsch: **sie traegt eine seit 2015
archivierte Ausgabe aktiv in JANS-Aussendokumente hinein.** Die Kaskade geht eine Stufe weiter,
als dort stand.

Gesetzt wurde ein Nachtrag, der die Anweisung bis zur Klaerung ausser Kraft setzt, samt der
Regel fuer die Zwischenzeit: fuer Bestandes- und Altfaelle die verwendete Ausgabe **mit Jahr und
Fassungsvermerk** nennen; fuer ein neues Aussendokument keine der beiden zurueckgezogenen
Ausgaben als geltende Fundstelle setzen. **Nicht** gesetzt wurde die Behauptung, es gelte jetzt
SIA 380:2015 — die Norm liegt nicht im Haus (Ticket `N57-2`), und ein Vermerk, der das
behauptet, waere selbst unbelegt.

---

## 2 · Die zwei widerlegten Meldungen — und was sie gekostet haetten

### W1 — «Die Nettogeschossflaeche ist der falschen Norm zugeordnet» · WIDERLEGT

Gemeldet war, `wissen/energie/destillate/vollzugsordner-energie-zh-abschnitt6.md:122` ordne die
Nettogeschossflaeche der SIA 416/1 zu, waehrend NGF die Sache der SIA 416:2003 sei. Der Melder
belegte das sauber: die Definitionen sind fast wortidentisch, und das 416/1-Destillat sagt selbst,
es uebernehme die Geschossflaechen-Definitionen aus SIA 416.

Der Refuter ging **nicht** an die Destillate, sondern an das Original-PDF (Vollzugsordner Energie
Kt. Zuerich, AWEL, Stand Juni 2013, S. 139-156). Die Quelle schreibt selbst:

> «Die Nettogeschossflaeche gemaess Norm **SIA 416/1** ist der Teil der Geschossflaeche zwischen
> den umschliessenden oder innenliegenden Konstruktionsbauteilen. Die Nettogeschossflaeche eines
> Raums oder einer Raumgruppe kann vereinfachend auch mit 90 % der Bruttogeschossflaeche oder der
> Energiebezugsflaeche angenommen werden.»

Das Destillat ist eine **satzidentische, quellentreue Wiedergabe** — samt der 90-%-Faustregel, die
ebenfalls aus der Quelle stammt und nicht aus einer SIA-Norm. Eine Korrektur haette dem AWEL einen
Wortlaut unterschoben, den es nie geschrieben hat, und den Beleg gegen das Original zerstoert.
**Der Melder hat den Destillat-Satz gegen sein Normwissen geprueft statt gegen die Quelle.**

Der Refuter fand zusaetzlich die Falle daneben: Zeile 64 derselben Datei nennt SIA 416/1 fuer die
**Energiebezugsflaeche** — und das ist doppelt richtig (die Quelle sagt es woertlich, und die EBF
ist die genuine Bezugsgroesse der 416/1). Wer beim Korrigieren «vereinheitlicht» haette, haette
dort einen echten Fehler erzeugt.

### W2 — «Der Machbarkeits-Skill fuehrt einen falschen Flaechenfaktor» · WIDERLEGT

Die Kennwert-Gegenprobe (Uebergabe-Auftrag 3 aus Run 36) meldete mit Sicherheit «hoch»:
`skills/machbarkeit/wissensbasis/01_flaechen-volumen-faktoren.md:22` fuehre HNF/GF ganzes Gebaeude
mit **0.50**, waehrend `immobilienbewertung` und `grobkosten` uebereinstimmend **0.60** fuehren —
letzteres als kanonischer Wissens-Chef-Entscheid vom 12.07.2026. Das klang nach genau der Figur,
die dieser Loop sucht.

Der Refuter las das Beleg-Dokument selbst (Ebmatingen, Im Grossacher 2, R. Jans 26.11.2024) und
kippte den Befund dreifach:

1. **Die Skill-Tabelle ist eine wortgetreue Abschrift** des Blocks «Benchmarks Faktoren» aus
   diesem Dokument, in derselben Reihenfolge. Beide beanstandeten Zahlen stehen so im Original.
2. **Es sind zwei verschiedene Projekte.** Der Skill belegt mit Ebmatingen, die KB mit einem
   **gleichnamigen, aber anderen** Dokument (Haselstudstrasse 12, Wald, 20.10.2024). Die
   Namensgleichheit der beiden Dateien ist die Falle.
3. **Der Perimeter unterscheidet sich, und die Differenz ist exakt erklaerbar.** Ebmatingen
   enthaelt eine Tiefgarage mit 211 m² GF und HNF 0. Rechnet man sie heraus, wie es die
   KB-Triangulation tut: 998 − 211 = 787 m² GF bei 500 m² HNF → **0.635**. Die KB rechnet
   ausdruecklich fuer ein «Gebaeude ohne TG». Die Zahlen widersprechen sich nicht einmal sachlich.

Zusaetzlich: der «kanonische» Entscheid ist im Original **zweckgebunden** formuliert («fuer die
m²↔m³-Kostenbruecke ist der Gesamtgebaeude-Wert 0.60 massgebend») und nennt sich selbst
«trianguliert». Ein triangulierter Brueckenwert verbietet keinen projektgemessenen Einzelwert.

**Der Restpunkt, den erst der Refuter sah — und der geblieben ist.** Das Original schreibt
«HNF zu GF **oi**» (oberirdisch); die Skill-Zeile liess das «oi» weg. Genau dieses fehlende
Etikett hat den Melder in die Irre gefuehrt. Das ist **Belegpflege am Etikett, kein Faktenfehler
an der Zahl** — und deshalb wurde genau das korrigiert und keine einzige Zahl angefasst.

---

## 3 · Der dritte Refuter hat den Eingriff halbiert

Der Umfangs-Refuter bekam nicht einen Befund zum Kippen, sondern die **Liste der geplanten
Eingriffe mit dem Auftrag, jede Stelle zu finden, an der der Vermerk falsch waere**. Von 15
geplanten Zielzeilen hielten **6** voll, **2** nur als eingeschobene Klammer, **7** wurden
ausgeschlossen. Die drei wichtigsten Ausschluesse:

- **`therapiebad-hallenbad-energie-pflegeheim.md:162`** — der Satz lautet «Nachfolge SIA 416:2003
  **bzw.** SIA 416/1:2007». Ein Absatzvermerk haette **SIA 416:2003 als zurueckgezogen
  ausgewiesen**, obwohl sie gilt. Zulaessig war nur ein Klammerzusatz hinter dem 416/1-Glied.
- **`recht-norm-ahb-stadt-zuerich-projektstandards.md:81`** — meine geplante Zielzeile traf
  ausgerechnet den **Entwurf 3/05** von 2005, der ueber den AHB-Honorarvertrag der Stadt Zuerich
  bindend und vom Rueckzug der Publikation 2007 gar nicht betroffen ist. Der Vermerk gehoerte
  fuenf Zeilen weiter, an die publizierte Norm und den daraus abgeleiteten Satz «fuer einen
  Energienachweis gilt 1,0 m». Dort steht er jetzt.
- **`systemnachweis-kurs-zh-2009.md:47`** — traegt ueberhaupt keinen Normbezug, sondern die
  Energiebilanz-Grundformel. Ein Eingriff haette fremden Text getroffen. (Die 416/1-Nennungen
  dieser Datei stehen auf Z. 51 und 55 — und auch die brauchen keinen Vermerk, weil sie ohne
  Ausgabejahr zitieren und das Frontmatter bereits pauschal warnt.)

Der Refuter formulierte ausserdem zwei Auflagen, die in jeden gesetzten Vermerk eingegangen sind:
**auf die zwei Primaerquellen verweisen, nicht auf das Destillat** (das traegt `status:
speculative` und ist nach Rule `normen-referenz` Ziff. 1b eine Warnkarte, keine Zitierquelle) —
und **nicht behaupten, es gelte nun SIA 380:2015**, weil die Norm nicht im Haus liegt.

---

## 4 · Was bestaetigt konsistent war (Negativbefunde mit Wert)

- **§ 47a BBV I.** Die gestrige Korrektur in `baurecht` (Run 36) und
  `energie/destillate/energ-bbv1-waermebedarf-rechtsgrundlagen-zh.md` (`status: established`)
  fuehren **exakt dieselben** Grenzwerte: 35/35/40/35/40/45/40/70/20/20/25 kWh/m² EBF, dazu das
  Fossilverbot nach § 11 Abs. 1 EnerG. Die Fuehrungsfrage ist sauber geloest — `baurecht` verweist
  ausdruecklich auf `energie` als fachfuehrend. **Nichts zu tun.**
- **Solar-Bewilligungsweg.** Der heute in `energie` (Run 143) korrigierte Weg (Meldeverfahren
  § 2a BVV, 4 m² bewilligungsfrei, Kernzonen-Rueckausnahme) deckt sich mit
  `baurecht/wiki/baubewilligungsverfahren.md`, das dort seit dem 20.07. `established` ist, und die
  Bauherren-FAQ verlinkt korrekt zurueck. **Nichts zu tun.**
- **Die Skills-Schicht ist sauber.** `grep` ueber `skills/ agents/ rules/ references/ templates/`
  findet **keine einzige** Nennung von «416/1». Der Rueckzug erreicht die anwendende Schicht
  nicht. Das war vor der Messung nicht bekannt und ist der Grund, warum dieser Lauf klein bleiben
  konnte.

---

## 5 · Ausgefuehrte Aktionen

| # | Datei | Aktion | Diff |
|---|---|---|---|
| 1 | `wissen/energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` | Handlungsanweisung fuer Aussendokumente gestoppt + Rueckausnahme-Vorbehalt ergaenzt | 17/1 |
| 2 | `wissen/energie/wiki/u-werte-grenzwerte-ch.md` | Fassungsvermerk am EBF-Abschnitt | 2/0 |
| 3 | `wissen/energie/destillate/enfk-en-02-waermeschutz-2013.md` | Fassungsvermerk unter der Kapitelueberschrift | 3/0 |
| 4 | `wissen/energie/destillate/vollzugsordner-energie-zh-abschnitt6.md` | Vermerk **neben** den quellentreuen Absatz | 2/0 |
| 5 | `wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md` | nur Klammerzusatz am 416/1-Glied | 4/1 |
| 6 | `wissen/immobilienbewertung/wiki/flaechendefinitionen-sia.md` | Fassungsvermerk nur zum Glied «SIA 416/1» | 8/0 |
| 7 | `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | Nachtrag an der publizierten Norm (nicht am Entwurf) | 11/1 |
| 8 | `wissen/baurecht/buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` | datierter Nachtrag an der Run-33-Anmerkung, Buchwortlaut unberuehrt | 8/0 |
| 9 | `skills/wettbewerb/SKILL.md` | SIA-416:2003-Verweis + Rule `normen-referenz` in die Abhaengigkeiten | 10/1 |
| 10 | `agents/flaechen-nachweis.md` | Fundstelle + Rule `normen-referenz` | 4/2 |
| 11 | `skills/machbarkeit/wissensbasis/01_flaechen-volumen-faktoren.md` | Bezugsgroessen-Etiketten («oi», «inkl. TG/UG») + Einordnungsblock; **keine Zahl geaendert** | 14/2 |
| 12 | 5 × `CHANGELOG.md` + `koordination/QUERBEZUEGE.md` | Lauf- und Registereintraege | — |

**Schreib-Kontrolle (Rule `auto-verbesserungen` 260811):** jede Datei nach dem Schreiben per
`git diff --numstat` gemessen — **nativ ueber ssh auf der Synology** (`/volume2/daten/jans-ai-hub`),
nie git ueber SMB, Basis der Stand `34a3ce10` **vor** dem Lauf. Die acht Loeschungen sind
durchgehend beabsichtigte Zeilenersetzungen; alle acht wurden einzeln im Diff angesehen und
entsprechen exakt den ersetzten Ankerzeilen. **Keine Datei hat Bestand verloren.** Von jeder
angefassten Datei liegt eine Sicherungskopie im Scratchpad. Ankerbasiert geschrieben, kein
globales Suchen-und-Ersetzen — bei `flaechendefinitionen-sia.md` waere das besonders teuer
gewesen: rund 25 Zeilen der Datei handeln von der **gueltigen** SIA 416:2003.

---

## 6 · Offene Entscheide fuer Raphael

### E1 — NEU: SIA 380:2015 beschaffen (Bring-Schuld, blockiert 11 Stellen)

Die Nachfolgenorm **SIA 380:2015 «Grundlagen fuer energetische Berechnungen von Gebaeuden»**
(SN 504380:2015, 64 S.) liegt nicht im Haus; der Bestand fuehrt nur SIA 380/1:2016, 380/3:1990
und 380/4 — andere Normen. Bezug ueber den SIA-Shop, kostenpflichtig; **Claude taetigt keine
Kaeufe.** Solange sie fehlt, tragen elf Stellen in vier KBs einen Fassungsvermerk statt einer
geltenden Fundstelle, und die Energiebezugsflaeche — der Nenner jeder Energiekennzahl — hat im
Hub keine zitierfaehige Norm-Fundstelle mehr. Gefuehrt als `N57-2` in
`wissen/normen/wiki/QUESTIONS.md`. **Das ist der einzige Punkt dieses Laufs, der etwas kostet,
und der mit dem groessten Hebel.**

### E2 — Unveraendert offen aus frueheren Laeufen

Honorar-Phasenanteile und Kategorien-Skala im Skill `honorarberechnung-sia102` (Run 36, E1 —
Geldfolge, unveraendert offen) · Fassungsstand-Hinweis am Buch-Layer `baurecht` (Run 36, E2) ·
Du-Kontakte in `rules/anrede-kontakte.md` (**Levi Hiltmann** steht weiterhin nur im Fliesstext
der Gewichts-Klausel, nicht als Tabellenzeile) · SIA 382/2 Ausgabe 2004 gegen 2005 ·
Praezisierung `skills/ausschreibung` Z. 109-113 · Ticket `T-Regelgeschoss` (HNF/GF 0,70 gegen
0,75 fuers Regelgeschoss) · SYN-34.

### E3 — Zur Kenntnis, kein Entscheid noetig

Das Rotationspaar `wettbewerbs-dna ↔ entwurfs-referenzen ↔ architekten-synobsis` bleibt offen. —
Der Registerpunkt `projekt-lessons ↔ mahnwesen/bexio` wartet weiter auf einen zweiten Fall.

---

## 7 · Uebergabe an Run 38

1. **Den Meldeweg zwischen den KBs schliessen.** Der Befund mit der laengsten Halbwertszeit dieses
   Laufs ist kein Inhalt, sondern eine Mechanik: `normen` dokumentierte den Rueckzug um 01:42 und
   nannte die betroffenen KBs namentlich — **`energie` schrieb um 10:39 neue Zitate derselben
   Norm**, weil der Lauf 143 die neun Stunden alte Meldung nicht kannte. Zu pruefen: wo koennte
   ein KB-Lauf vor dem Schreiben billig erfahren, dass eine seiner Bezugsnormen frisch gemeldet
   wurde? (Kandidat: ein `ACHTUNG`-Kopf in `wissen/normen/wiki/REGISTER.md`, den die
   destillierenden Loops ohnehin lesen.)
2. **Die Kennwert-Gegenprobe zu Ende fuehren.** Sie hat in diesem Lauf genau einen Kandidaten
   geliefert, und der ist widerlegt worden. Ungeprueft blieben `immobilienbewertung` (Diskont-/
   Kapitalisierungssatz, Lebensdauern) und `kostenschaetzung` gegen `grobkosten` in der Breite;
   der Melder kam im Effort-Budget nur bis `machbarkeit`. Der Ansatz taugt — er braucht eine Runde
   mit engerem Zuschnitt je Skill.
3. **Doppel-Destillat-Cluster.** Gemessen, nicht geloest: `recht-norm-hindernisfreies-bauen-zh`
   (2 belegte Paare, nicht 7 wie im Handoff), `recht-norm-sanitaerraeume-planungsgrundlagen` (3,
   Zahl bestaetigt), `energie/heizleistung-und-waermeerzeuger` (dicht verlinkt, kein Befund).
   **Groesstes Risiko: Cluster 1** — das zitierte Destillat `ugz-hindernisfreie-aufzuege-2010`
   wurde 9 Tage **nach** dem Wiki-Stand ueberarbeitet (Refuter-Runde, 1 Kern- und 4 Nebenbefunde),
   ohne dass der Wiki-Artikel gegengelesen wurde. In allen drei Clustern fehlt zudem die
   Rueckkante Destillat → Wiki durchgaengig.
4. **Nebenbefund mit eigener Schaerfe:** `zhb-2005-mindestanforderungen-hindernisfreies-bauen`
   wird in zwei `planungsgrundlagen`-Artikeln als «unabhaengig gegenbelegt» zitiert, traegt aber
   selbst `status: speculative` und fusst auf **SN 521 500:1988**, der Vorgaengernorm von
   SIA 500:2009. Eine `speculative`-Quelle als unabhaengige Bestaetigung zu verwenden,
   widerspricht Rule `normen-referenz` Ziff. 1b.

---

*Bericht des Wissens-Chefs, Run 37, 19.08.2026. Fan-out und Verifikation ueber das Workflow-Tool
(Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell; Reichweiten-Messung,
Urteil, Aktionen und Registerpflege im Hauptkontext).*
