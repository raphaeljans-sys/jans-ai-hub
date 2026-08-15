# Wissens-Chef Run 33 — 15.08.2026 (Abendlauf, 24,0 h nach Run 32)

**Delta:** 110 Commits, 58 Dateien in `wissen/` (Schwelle rund 40 überschritten).
**Zuschnitt:** 5 Melder (sonnet) + 2 Refuter (Hauptmodell) = 7 Agenten, 1,15 Mio Token, 5,5 min.
**Uhr-Kontrolle bestanden:** Station 23:11 CEST gegen Synology-Selfcommit 23:00:05.
**Gegenprobe:** SSD-Klon-HEAD `21956371` = letzter Push im Synology-Log.

---

## 1 · Das Wichtigste

Der Lauf hat **zwei bestätigte Befunde, null gefallene** — und beide betreffen **eine bereits
im Haus vorhandene Korrektur, die ihren Weg nicht gefunden hat**. Das ist kein Zufall, sondern
dasselbe Muster in zwei Ausprägungen:

- Eine Korrektur, die in einer KB ausgesprochen wurde, erreicht eine **parallel laufende
  Destillation in einer anderen KB** nicht (Dachbegrünung: `planungsgrundlagen` korrigierte am
  31.07., `energie` destillierte am 15.08. denselben Fehler erneut).
- Eine Frage, die **in derselben Datei** aufgelöst wurde, bleibt an ihrer zusammenfassenden
  Stelle als «offen» stehen (SIA 358: Register Z. 38 «Offen», Register Z. 1032 «bereinigt»).

Beide sind Rückstände der eigenen Buchführung, nicht des Fachwissens. **Der Ertrag dieses Laufs
liegt fast vollständig in der Kategorie, die Run 32 vorgeschlagen hatte, höher zu gewichten.**

---

## 2 · Vorstufe: die vier Übergaben aus Run 32

Run 31 hatte empfohlen, **zuerst die eigenen Übergaben** abzuarbeiten; Run 32 vollzog es zum
ersten Mal. Dieser Lauf hat es wiederholt — **alle vier Übergaben waren belastbar, keine fiel
bei der Prüfung am Original.**

**(1) `skills/kostenkontrolle` hat null Verbindungen in die Normen-KB** — bestätigt
(`grep -c` = 0 auf `wissen/normen`, `normen-referenz`, `SIA 118`). Die Übergabe war
**einseitig**: `normen/destillate/sia-118-1991.md` Z. 148 nennt den Skill seit Langem
namentlich als Abnehmer, mit allen Artikeln. Inhaltlich war das kein Schönheitsfehler. Der
Skill prüft Schlussabrechnungen, ohne die **Rechtsfolge des Prüfversäumnisses** zu kennen
(Art. 155 Abs. 2: nach ungenutzter Frist plus einem Monat Nachfrist wird die Forderung **ohne
Prüfungsbescheid von selbst fällig**), führt Garantieverfalldaten ohne den **Vorrang
abweichender Fachverbandsnormen** bei der Fristdauer (Art. 172) und ohne die **Schlussprüfung
mit Beweissicherung** (Art. 177), und nannte den Rückbehalt pauschal mit «10 %» statt
gestaffelt 10/5/20 % mit Deckel (Art. 150). Gegenkante gesetzt, mit Ausgaben-Vorbehalt
(Destillat ist SIA 118:**1991**; :2013 ist Bring-Schuld) und mit dem SIA-416-Bezug für die
Kennwerte CHF/m² und CHF/m³.

**(2) RC-Beton 50 % gegen 60 %** — die Vermutung aus Run 32 («möglicherweise verschiedene
Bezugsgrössen») hält: **kein Widerspruch.** 60 % ist der Anteil rezyklierter Gesteinskörner
**in der Rezeptur** (Submissionsbedingungen Stadt Zürich 2006, Ziff. 2.1), 50 % der Anteil
Recyclingbeton **am eingesetzten Beton** als MINERGIE-ECO-Labelbedingung (KBOB 2007/2). Ein
dritter Wert (AHB 50/80 % Massenanteil) ist ein ausdrücklich deklariertes Musterbeispiel, kein
Standard. Bezugsgrössen-Vorbehalt in der führenden Datei gesetzt, mit dem Hinweis, dass ein
Devis-Text die Bezugsgrösse mitschreiben muss — sonst ist die Vorgabe im Streitfall nicht
durchsetzbar.

**(3) Rückrichtung SIA 387/4 nach `energie/wiki/QUESTIONS.md`** — die Divergenz ist live: fünf
Destillate schreiben «SIA 387/4:2023» als Ausgabe, eines «Ausgabe 2017, aktualisiert
01.08.2023». Als **E-R33-1** eingetragen, **nicht entschieden**: `normen` hat die Klärung
ausdrücklich an einen eigenen datierten Abruf der Produktseite gebunden, und die BBV I ZH
erklärt für den kantonalen Vollzug weiterhin die Ausgabe 2017 verbindlich. Run 28 hatte den
Punkt nur bei sich notiert — dritter belegter Fundort des Musters «Übergabe verpufft im
abgebenden KB».

**(4) ERCO-Lichtartikel** — Teil 1 trug die Normen-Kante bereits (14 Treffer), **Teil 2 hatte
null**, und das ist ausgerechnet der Teil mit den rechnenden Kapiteln (Anschlussleistung,
UGR-Verfahren, Wartungsfaktor, Wirkungsgradverfahren). Kante samt Abgrenzung gesetzt: die
Verfahren sind ein Herstellerratgeber der Editionen 2006/2007/2010 und weder Fundstelle noch
Nachweisweg; Normwerte führt `normen`, den Nachweis EN-111/EVEN führt `planungsgrundlagen`.
Das Glossar bewusst **nicht** verdrahtet — reine Begriffsdefinitionen, eine Kante dort wäre
Rauschen.

---

## 3 · Bestätigte Befunde

### B1 (WIDERSPRUCH, bestätigt) — BZO Art. 11 Abs. 1: `energie` zitiert den bereits widerlegten Wortlaut

`energie/wiki/dachbegruenung-gruendach.md` Z. 22 gab Art. 11 Abs. 1 BZO Stadt Zürich mit
«soweit nicht als Terrasse genutzt … wenn zweckmässig sowie technisch und wirtschaftlich
zumutbar» wieder. Am amtlichen Text gegengelesen
(`baurecht/raw/260607_amtlich_zh_bzo-zurich-stadt.md` Z. 930-945, Fussnote 35 Z. 957-958,
Fassung GRB 30.11.2016 / in Kraft 01.11.2018, STRB Nr. 686/2018) ist das an **vier** Punkten
falsch:

| Zitiert (Stand 2009) | Geltend seit 01.11.2018 |
|---|---|
| «zweckmässig» | «technisch und **betrieblich möglich**» |
| «zumutbar» | «wirtschaftlich **tragbar**» |
| «zu begrünen» | «**ökologisch wertvoll** zu begrünen» |
| — (fehlte ganz) | «**auch dort, wo Solaranlagen installiert sind**» |

Die Wendung «technisch und wirtschaftlich zumutbar» steht heute in **Abs. 3** und betrifft
Spiel-/Ruheflächen bei bestehenden Mehrfamilienhäusern, nicht die Dachbegrünung.

**Die vierte Abweichung ist die teure.** Wer Abs. 1 in der alten Fassung liest, hält die
Kombination Gründach + PV für einen Auslegungsspielraum, während der Gesetzgeber sie seit 2018
ausdrücklich anordnet — und genau diese Kombination ist der Gegenstand, für den der Artikel
geschrieben wurde.

**Das eigentlich Beunruhigende ist die Entstehung.** `planungsgrundlagen` hatte dieselbe Quelle
(AHB-Checkliste 16.02.2009) am 25.07.2026 verarbeitet und am **31.07.2026 durch Wissens-Chef
Run 22 in genau diesem Punkt korrigiert**. Am 15.08.2026 destillierte `energie` dieselbe Quelle
unabhängig und übernahm den Fehler erneut. Die Korrektur existierte, sie war nur nicht
erreichbar: `grep -c "planungsgrundlagen"` in beiden neuen energie-Dateien ergab 0.

Ausgeführt: Wortlaut in Wiki und Destillat nachgezogen (im Destillat als Quellendokumentation
stehen gelassen und mit Vorbehalt versehen, nicht umgeschrieben — ein Destillat protokolliert
seine Quelle), beidseitige Kante zu `planungsgrundlagen` gesetzt, Führungszeile ins Register.

### B2 (VERALTETES, bestätigt) — das Register widerspricht sich selbst

`koordination/QUERBEZUEGE.md` Z. 38 führte «Offen: baurecht fuehrt SIA 358 offenbar in der
Ausgabe 1996, normen in 2010». **Dieselbe Datei** löst den Fall ab Z. 1032 auf: «Die
angemeldete Fassungsdivergenz existiert nicht … Status: bereinigt» (Run 24, 03.08.2026).

Der Refuter hat den Befund nicht nur gehalten, sondern **verschärft** — die Meldung hatte
gelautet, die Schliessung sei «im Register nie nachgezogen»; tatsächlich ist nur die
**Matrixzeile** nicht nachgezogen, was schlimmer ist: die Datei widerspricht sich intern, und
die Matrix am Kopf ist die Stelle, die jeder Lauf zuerst liest.

Er hat zudem eine **Übertreibung im Korrekturvorschlag** abgefangen: die Tatsachenaussage
«baurecht führt 1996, normen führt 2010» ist **weiterhin wahr** (das Standardwerk zitiert
S. 1291 die Ausgabe 1996). Veraltet ist allein die Rahmung als offener Punkt. Die Zeile wurde
deshalb **umgewidmet, nicht gestrichen** — mit dem Zusatz, dass real nur eine Prüfpendenz am
Destillationsverfahren offen bleibt (Stichprobe der übrigen Schwellenwert-Tabellen), was keine
Führungs- oder Fassungsfrage ist und nicht als neues «Offen» in die Matrix gehört.

---

## 4 · Verlinkungsbefunde: 11 gemeldet, 11 gehalten

Alle 11 vom Hauptprozess per `grep` nachgemessen (Ziel existiert, Kante fehlt): **keine einzige
Fehlmeldung.** Damit steht die Bilanz über zwei Läufe bei **30 gemeldeten Verlinkungen, 30
korrekt** — gegenüber 9 gemeldeten Widersprüchen, von denen 4 hielten.

**Gesetzt (8):**

| # | Kante | Bemerkung |
|---|---|---|
| 1 | `energie/destillate/gebaeudehuellziffer-ebf…` → `[[sia-416-1-2007]]` | mit `speculative`-Vorbehalt; Abgleich der EBF-Grunddefinition gegen Ziff. 3.2 **offen gelassen**, nicht behauptet |
| 2 | `energie/destillate/dachbegruenung-checkliste…` → `[[sia-271-2007]]` | Ziffern stammen aus der Quelle, nicht am Normtext geprüft — so vermerkt |
| 3 | beide energie-Dachbegrünungsdateien → `planungsgrundlagen` §19 | plus Gegenkante dort |
| 4 | `energie/wiki/holzwerkstoffe-formaldehyd…` → `planungsgrundlagen` | Doppelspurigkeit Lignatec 21/2008: **keine Zusammenführung**, sondern Arbeitsteilung benannt |
| 6 | `bauprodukte/…holzfenster…` → `[[sia-380-1-2016]]` | **⚠ Vorbehalt** (siehe unten) |
| 7 | `bauprodukte/…estrich-systeme` → `[[sia-251-2008]]` | DIN-Werte im Artikel, SIA gilt im Schweizer LV |
| 11 | `baurecht/buecher/band-2/17-…` → `[[sia-416-1-2007]]` | rein additiv, Buchinhalt unberührt; `speculative`-Vorbehalt; Vollzugshilfe EN-2 bleibt für den Kanton massgebend |
| — | ERCO Teil 2 → `normen` / `planungsgrundlagen` | aus der Vorstufe, siehe oben |

**Zwei Kanten mussten gegen den Melder eingeschränkt werden** — und das ist der Grund, warum
Verlinkungen zwar zuverlässig, aber nicht blind zu setzen sind:

- **`sia-380-1-2016.md` ist nur die Vorschau** (6 Seiten: Titelblatt, Impressum,
  Inhaltsverzeichnis) und enthält **keine Grenzwerte**. Die Kante wurde gesetzt, aber mit dem
  ausdrücklichen Hinweis, dass daraus **kein Uw-Anforderungswert** entnommen werden darf; die
  Anforderungen stehen im kantonalen Energierecht.
- **`sia-416-1-2007.md` trägt `status: speculative`** und ist nach Rule `normen-referenz`
  Ziff. 1b eine **Warnkarte, keine Zitierquelle**. Beide Kanten dorthin tragen den Vorbehalt.

**Nicht gesetzt (3):** die Anrede-Befunde, siehe Abschnitt 5.

**Neue Registerzeilen (Befund 5):** Dachbegrünung war **dreimal** Gegenstand einer
Cross-KB-Prüfung (Run 22, 25, 33), ohne je eine Zeile in der Führungsmatrix zu haben — anders
als der strukturgleiche Fall Regenwasser/Schwammstadt. Zwei Zeilen ergänzt: Recht und
Bewilligungspflicht → `planungsgrundlagen` (Erlasswortlaut → `baurecht`); Substrat-/
Qualitätsstandard, Kennwerte, PV-Kombination → `energie`.

---

## 5 · Offene Entscheide für Raphael

### E1 — Sechs Du-Kontakte fehlen in `rules/anrede-kontakte.md` (importierte Rule)

Der twin-Facettenlauf vom 15.08. hat das Beziehungsregister um vier belegte Du-Kontakte
erweitert; zwei weitere liegen seit Run 32 vor. **Keiner der sechs Nachnamen kommt in der
Anrede-Liste vor** (je `grep -c` = 0).

Der Melder hat bei vieren «reine Registerpflege, keine Vorlage an Raphael nötig» notiert. **Das
folge ich nicht.** Die Rule regelt ihre Pflege selbst: «Wenn der Benutzer bestätigt, mit einer
neuen Person per Du oder per Sie zu sein …» und «Im Zweifel nachfragen, nie raten». Ein
Du-Mapping aus Mailverkehr zu erschliessen ist eine Ableitung, keine Bestätigung — und es wirkt
sofort in ausgehende Post. Deshalb Vorlage, nicht Vollzug.

| Person | Kontext | Beleg |
|---|---|---|
| **Stefanie «Steffi» Sonderegger** | KISPI, Leiterin Wohnbereich / Pflegeexpertin APN, Projekt 2619 | über zehn Fundstellen im Beziehungsregister, eigenes Nickname-Mapping (Z. 1275) |
| **Gertrud Angerer** | Bauherrin 2414 Thalwil (mit Stefan Tschopp) | Beziehungsregister Z. 515 |
| Michael «Michi» Spörri | KISPI, Projekt 2619 | Mailbatch 94, Commit `23df0bdd` |
| Othmar Stadelmann | Unternehmer Leichtbauwände | Mailbatch 94 |
| Jens Ziegel | Brandschutz-Fachplanung, Gruner AG | Mailbatch 94 |
| Cekdar Duran | Gebäudetechnik-Fachplanung, Gruner AG | Mailbatch 94 |

**Zwei davon haben laufende Reibung**, nicht nur theoretische:

- **Sonderegger** steht neben dem bereits gelisteten **Albin Spahic** im **aktiven** Projekt
  2619 KISPI. Eine Mail an beide trägt heute für ihn Du und für sie fälschlich Sie. Der Punkt
  liegt seit Run 32 vor.
- **Gertrud Angerer**: die Liste führt bereits einen «Angerer» (Thomas, Nova, Projekt 2620) —
  eine **andere Person aus einem anderen Projekt**. Ein Nachnamen-Treffer zieht heute den
  falschen Projektkontext. Falls eingetragen wird, gehört die Abgrenzung ausdrücklich in die
  Notizspalte.

Ebenfalls seit Run 32 offen: die **Kanal-Achse** («Sammelpostfach senkt die Stufe») als
Gegenstück zur Gewichts-Klausel vom 29.07.

### E2 — Unverändert offen aus früheren Läufen

SIA 382/2 Ausgabe 2004 gegen 2005 (**Prüfergebnis dieses Laufs: hat sich seit Run 32 nicht
weiter ausgebreitet**, `grep` fand keine neuen Fundstellen in `energie` — der Auftrag an den
Skill `normen` bleibt der richtige Weg) · Präzisierung `skills/ausschreibung` Z. 109-113
(Ersatzwortlaut liegt vor, wegen Geldfolge nicht selbst gesetzt) · Ticket T-Regelgeschoss
(HNF/GF 0,70 gegen 0,75, seit Run 15) · BKP-Code Briefkastenanlage 2620 · Ticket N43-1 ·
`normen` N27-2 · die älteren Bring-Schulden (UBSFS-Spiegel, SIA 380/2:2022,
`normen/destillate/links.md`, D10, Spektrumskosten, `MAX_AUTO_BYTES`).

### E3 — Zuwachs für Run 34

`skills/kostenkontrolle` ist verdrahtet — **die Nachbarn sind ungeprüft**: ob
`unternehmerkontrolle` und `werkvertrag` ihre SIA-118-Bezüge vollständig aus `normen` ziehen
oder ebenfalls materiell fortschreiben, wurde in diesem Lauf nicht gemessen. Run 32 fand dort
die 60-Tage-Rügefrist in zwei Vertragsvorlagen; das legt nahe, dass die Achse Bauleitungs-Skills
↔ `normen` insgesamt noch nicht durchgeprüft ist.

---

## 6 · Kontrollen

- **Schreib-Kontrolle** (Rule 260811): `git diff --numstat` über alle 12 bearbeiteten Dateien,
  read-only. **Jede gelöschte Zeile einzeln gesichtet** — sämtliche Löschungen sind
  beabsichtigte Zeilenersetzungen am Anker (`links:`-Zeilen, `datenstand:`-Zeile, der ersetzte
  BZO-Block, Registerzeile 38). **Keine Datei hat Bestand verloren.**
- **Ein eigener Fehler, gefunden und behoben:** Der Nachtrag in
  `gebaeudehuellziffer-ebf-flaechendefinition.md` wurde zunächst **mitten in einen bestehenden
  Satz** eingesetzt und trennte den Run-23-Korrekturvermerk von seinem Bezug; die
  `--numstat`-Kontrolle zeigte die Zeilenlöschung, der Diff die Ursache. Umgestellt ans Ende
  des Aufzählungspunktes, danach rein additiv (8+/0−). **Genau dafür ist die Messung da** —
  ohne sie wäre eine sinnentstellende Satztrennung unbemerkt geblieben.
- **Kein globales Suchen-und-Ersetzen**, alle Edits am Anker.
- **`raw/` unberührt**; auf `baurecht/raw/260607_amtlich_zh_bzo-zurich-stadt.md` nur lesend
  zugegriffen.
- **Kein Eingriff in fremde Wiki-Struktur**, keine Löschung, kein Merge. Der Eingriff ins
  Buch-Destillat (`baurecht/buecher/band-2/…`) ist rein additiv, ein Cross-Ref in Klammern —
  der Buchinhalt selbst ist unverändert (Register-Regel «nur der destillierende Lauf
  überschreibt»).
- **Agenten-Befunde nicht ungeprüft übernommen** (Rule 260729b): alle 11 Verlinkungsbefunde vom
  Hauptprozess per `grep` nachgemessen; der Status von vier Ziel-Destillaten selbst geprüft,
  was **zwei Einschränkungen** ergab, die kein Melder genannt hatte (Vorschau-Destillat,
  `speculative`); der BZO-Wortlaut am amtlichen Rohtext gegengelesen.
- **Kein `git` über SMB schreibend** (Rule `sync-kanonische-quelle`); Commit über
  `nas-commit-now.sh`.
- **Keine eigene Mail** (Regel 260803, Ein-Mail-Prinzip): die offenen Entscheide in Abschnitt 5
  nimmt der `hub-chef` ins Tagesbriefing.

---

## 7 · Zur Methode

Run 32 schlug vor, «fehlende Querverlinkung» ernster zu nehmen als «Widerspruch», weil der
Refuter-Apparat auf Widersprüche zugeschnitten ist, der Ertrag aber danebenliegt. Dieser Lauf
hat den Zuschnitt entsprechend geändert: Verlinkungen werden nicht mehr adversarial geprüft,
sondern **deterministisch per `grep` vom Hauptprozess** — ein Befund «Datei A nennt B nicht»
ist beweisbar, dafür braucht es keinen Agenten. Nur Widersprüche und Veraltetes gingen in die
Gegenprüfung.

**Das Ergebnis stützt die Umstellung**: 7 statt 12 Agenten, 1,15 statt 2,10 Mio Token, gut fünf
statt vieler Minuten — bei 13 statt 26 Meldungen, von denen **alle 13 hielten**. Die
Widerspruchsquote kippte zugleich von 2/7 auf 2/2, weil die Melder angewiesen waren, einen
Widerspruch nur bei wörtlich zitierbarem Ausschluss zu melden.

**Die Einschränkung, die dabei sichtbar wurde:** `grep` beweist, dass eine Kante fehlt, aber
nicht, dass sie gesetzt werden **soll**. Zwei der acht Kanten mussten gegen den Vorschlag des
Melders eingeschränkt werden, weil das Ziel-Destillat eine Vorschau bzw. `speculative` ist. Eine
blind gesetzte Kante auf eine Warnkarte ist schlimmer als keine — sie sieht aus wie ein Beleg.
**Der billige Teil ist die Abwesenheitsmessung, der teure bleibt die Statusprüfung des Ziels.**

**Vorschlag für Run 34 (Entscheid bleibt bei Raphael):** die Achse **Bauleitungs-Skills ↔
`normen`** systematisch durchmessen. Dieser Lauf hat mit `kostenkontrolle` einen Skill gefunden,
der Fristen mit Rechtsfolge führte, ohne die Norm zu kennen, die sie setzt — und Run 32 fand in
zwei Vertragsvorlagen eine falsche Rügefrist. Beide Male war es ein Zufallsfund am Rand eines
KB-Laufs. `unternehmerkontrolle`, `werkvertrag`, `offertenpruefung` und `ausschreibung` sind nie
gegen die Normen-KB gemessen worden, obwohl sie alle in Dokumente mit Geldfolge schreiben.
