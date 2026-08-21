# Wissens-Chef — Run 39 (Abendlauf, 21.08.2026)

**Zuschnitt:** 5 Melder (`model: sonnet`) + 6 Refuter (Hauptmodell) = 11 Agenten, 1'803'560 Token,
161 Werkzeugaufrufe, 6,2 Min. Zwei eigene Messungen, drei eigene Gegenproben, alle Aktionen und die
Registerpflege im Hauptkontext.

**Uhr-Kontrolle bestanden:** Station 23:15:29 CEST gegen Synology-Selfcommit 23:15:06 (nativer
Log `sync-tasks/log/selfcommit-202608.log`, per `awk` gelesen — die Datei ist nicht UTF-8).
Kein Datumssprung.

**Delta-Basis:** Run 38 vom 20.08.2026, 23:30. Im Fenster geschrieben haben `energie` (Laeufe 148/149,
zehn neue Destillate, ein neuer Wiki-Artikel), `twin` (Mail-Batch 100 ueber alle sechs Facetten),
`architekten-synobsis` (QUESTIONS) sowie vier Rules.

---

## 1 · Ergebnis in einem Satz

**Sechs Befunde geprueft, fuenf bestaetigt, einer widerlegt** — und der schwerste sitzt nicht in einer
Wissensbasis, sondern in einer Rule, die in **jeder** Session importiert wird und seit sechs Tagen
gegen sechs eigene Belege anweist.

---

## 2 · Der harte Befund: die Nivellier-Klausel weist seit dem 25.07. falsch an

`rules/anrede-kontakte.md`, Zeile 14, seit dem 25.07.2026 unveraendert:

> «Bei mehreren Empfängern im Cc/An: höflichste Anrede wählen, sofern nicht alle per Du sind.»

Der Korpus belegt **sechsmal** das Gegenteil. Zuletzt am 20.08.2026 um 22:40, eine Sammelmail an acht
Empfaenger: «Geschätzter Herr <Nachname>, werter Herr <Nachname>» — zwei Waermestufen in **derselben
Anredezeile** —, darunter ein eigener Absatz mit «Hoi <Vorname>». Drei Register in einer Mail.
Raphael gleicht nicht an, er adressiert jeden einzeln in seiner Stufe.

**Warum das mehr ist als ein Wiki-Widerspruch:** die Rule wird per `@`-Import in jede Session geladen
und laut eigener Konvention **vor** dem Wiki gelesen. Der Zwilling nivelliert also bei jeder
Sammelmail, waehrend der Korpus staffelt. Die twin-KB fragt seit dem **15.08.2026** nach dem Entscheid
(`wissen/twin/wiki/QUESTIONS.md`, 260815 #4, 260816 #1, zuletzt Z. 3494-3503) — sechs Tage, in denen
die Rule weiter falsch anwies.

**Gesetzt, nicht entschieden.** Unter Zeile 14 steht jetzt ein Vermerk: die Zeile gilt bis zum
Entscheid als Hinweis, nicht als Regel, mit allen sechs Belegen und dem Hinweis, dass sie **zu grob,
nicht schlicht falsch** ist — der Wiki-eigene Vorschlag behaelt das Nivellieren «bei grossen oder
unbekannten Verteilern» ausdruecklich bei. Den Wortlaut einer Rule aendert Claude nicht selbst;
**E1 unten.**

---

## 3 · Die uebrigen bestaetigten Befunde

### B1 — Ein Zuercher Gesetz stand vier Wochen lang in der Bundeserlass-Tabelle

`planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md`, Zeile 68, unter der Ueberschrift
«Bundeserlasse — SR-Nummer → fedlex»:

> «`730.1_19.6.83_*` | (alt) | Energie-Verordnung, **historische Fassung 1983** | aktuell: **EnV SR 730.01** = `cc/2017/763` ✓»

Die Datei ist das **Energiegesetz (EnerG) des Kantons Zuerich vom 19.06.1983**, Zuercher
Gesetzessammlung **LS 730.1** — kein Bundeserlass, keine SR-Nummer, nicht auf fedlex. Belegt am
Primaertext, acht Seiten vollstaendig gelesen im energie-Lauf 148 vom selben Tag
(`energie/destillate/energ-zh-nachtrag72-2011-historisch.md`, Z. 2-3).

Der Refuter hat den Befund gehalten und zusaetzlich erhaertet: ein **Bundes**gesetz zur Energie
existierte 1983 verfassungsrechtlich noch gar nicht, der Energieartikel kam 1990. Er hat ausserdem die
Ursache benannt: **zwei der vier Exemplare liegen tatsaechlich in `01_Gesetze/01_Bund`** — eine
Fehlablage in der Quelle. Wer diesen Ordner durchsieht, laeuft in dieselbe Falle. Die Zeile wurde
deshalb **korrigiert statt geloescht** und benennt die Falle jetzt ausdruecklich.

### B2 — Der Holzbau-Aufpreis widerspricht sich innerhalb derselben Datei, mit Geldfolge

`skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`:

- Abschnitt 3 (seit 31.07.2026, Run 22): Aufpreis Holzbau gegen den Massivbau-Median 4'492 —
  **+10.9 % unteres / +21.7 % gesamt / +44.8 % oberes Preissegment**. Die Fussnote erklaert die
  frueheren Werte «+11 % / +38 %» **ausdruecklich fuer ueberholt**.
- Abschnitt 4, Zeile 94, unveraendert: «Massivbau **+ 10–15 %**».
- `SKILL.md` Zeile 108: «Holz **+10–20 %**».

Drei Wochen lang stand die als ueberholt erklaerte Naeherung im selben Dokument neben ihrer
Berichtigung — und zwar in der Zeile, die als **JANS-Richtwert** gelesen wird.

Der Refuter hat den Befund bestaetigt und dabei eine Praezisierung geliefert, die den Eingriff erst
sauber macht: **der Richtwert 5'400 CHF/m² HNF ist richtig** — er ist der gerundete Holzbau-Median
5'466 aus Abschnitt 3. Falsch war allein das Prozent-Etikett daneben. Beide Stellen tragen jetzt die
belegten Quantile; der Richtwert blieb unberuehrt. **Kein Zahlenentscheid durch Claude.**

### B3 — «Erster Beleg», der keiner war

`rules/anrede-kontakte.md`, Zeile 56 (Igor Suljanovic, nachgetragen am 21.08.2026) fuehrte
«werter Herr Suljanovic» als «erster Beleg der Stufe «werter» im Sie-Register». Das twin-Wiki hatte
diese Datierung im **selben** Batch-100-Update bereits berichtigt: die Form ist im Sie deutlich
frueher belegt.

Der Refuter hat hier eine zweite Falle abgefangen: die vom Melder vorgeschlagene Ersatzformulierung
«Erstbeleg 14.07.2026» waere **wieder falsch** gewesen — der 14.07. ist nur der aelteste Beleg, den
der Fidelity-Abschnitt zufaellig im Blick hatte; derselbe Artikel belegt die Form noch frueher. Die
Zeile ist deshalb **belegneutral** formuliert, ohne neue Datumsbehauptung.

### B4 — Der Wettbewerbs-Harness lief ohne die eigene Wettbewerbserfahrung

`wissen/wettbewerbs-dna/CLAUDE.md` erklaert sich woertlich zur Wissensgrundlage des Skills
`wettbewerb` («Sie speist den Skill `wettbewerb`»). Der Skill selbst — 183 Zeilen, mit Abschnitten
«Vorgelagert» und «Nachgelagert» — nennt **keine** der drei Entwurfs-KBs. Zwoelf ausgewertete
Teilnahmen, darunter zwei zweite Plaetze als Goldstandard, standen dem Harness formal nicht zur
Verfuegung.

Der Refuter hat den Befund gehalten und ihn zugleich **eingegrenzt**: `architekten-synobsis` gehoert
nicht dazu, die KB deklariert sich nirgends als Grundlage dieses Skills. Verdrahtet wurden deshalb
nur `wettbewerbs-dna` und `entwurfs-referenzen`.

---

## 4 · Der widerlegte Befund — und warum die Widerlegung wertvoller ist als der Befund

**Uebergabe-Auftrag 1 aus Run 38 lautete: den Meldekopf messen, nicht nur bauen.** Der Abschnitt
«⚠ FRISCH GEMELDET» in `normen/wiki/REGISTER.md` steht seit dem 20.08. und fuehrt sechs Rueckzuege
und Fassungssprunge.

Messung (unabhaengig doppelt gefahren, Melder und Hauptkontext): **keines** der zehn am 21.08. neu
geschriebenen energie-Destillate beruehrt eine der sechs gemeldeten Normen. Kein Lauf nennt das
REGISTER als gelesene Quelle. Der Melder hat daraus einen Befund gemacht — der Refuter hat ihn
zurueckgewiesen, und zwar mit dem entscheidenden Argument:

> **Der Meldekopf verlangt Lesen, nicht Zitieren. Ein trefferloser Lesevorgang hinterlaesst keine Spur.**

Damit ist das Testkriterium aus Run 38 selbst untauglich. Die Wirksamkeit des Meldekopfs ist
**strukturell nicht positiv messbar**: nur ein Verstoss macht ihn sichtbar, Befolgung nie. Das ist
kein Grund, ihn abzuschaffen — aber Rule `auto-verbesserungen` 260807 («erst messen, dann glauben»)
laesst sich hier nicht einloesen, solange der Test auf Erwaehnungsspuren beruht. **E5 unten.**

---

## 5 · Zwei Fortschreibungsfehler in der eigenen Uebergabe

Beim Nachmessen der offenen Punkte aus Run 38 sind zwei davon als bereits erledigt bzw. deutlich
ueberzeichnet aufgefallen:

- **Levi Hiltmann** wurde in Run 38 als «steht weiterhin nur im Fliesstext, nicht als Tabellenzeile»
  gefuehrt. Er steht seit dem **17.08.2026** als Tabellenzeile in `rules/anrede-kontakte.md` (Z. 49).
  Der Punkt war beim Fortschreiben nicht nachgemessen worden.
- **E1 aus Run 38 (Blitzschutz-Doppeldestillat)** las sich als offene Doppelspurigkeit mit
  invertierten Rollen. Tatsaechlich sind beide Seiten laengst verbunden: das normen-Destillat fuehrt
  seit dem 05.08. ein Feld `nachfolge_ausgabe:` mit Verweis auf die energie-Datei, und das
  energie-Destillat traegt umgekehrt eine ausdrueckliche Rollenteilung (Z. 97-98, 237-239). Offen ist
  allein die **Merge-Frage**, und die ist destruktiv.

**Lehre:** dieser Loop schreibt offene Entscheide von Lauf zu Lauf fort, ohne sie nachzumessen. Eine
Liste offener Punkte ist eine Behauptung ueber den heutigen Zustand — und faellt damit unter dieselbe
Regel wie jede andere Zustandsbehauptung (`auto-verbesserungen` 260730b Ziff. 3). **Ab Run 40 wird
jeder fortgeschriebene offene Punkt vor dem Fortschreiben am Original geprueft.**

---

## 6 · Ausgefuehrte Aktionen

| # | Datei | Aktion |
|---|---|---|
| A1 | `planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` Z. 68 | EnerG ZH als kantonal ausgewiesen, falscher Bundesbezug entfernt, Fehlablage-Falle benannt (1 Zeile ersetzt) |
| A2 | `skills/kostenschaetzung/referenzen/2026...Wuest...md` Z. 94 + `SKILL.md` Z. 108 | ueberholte Pauschale durch die belegten Quantile ersetzt; Richtwert 5'400 unberuehrt (je 1 Zeile) |
| A3 | `rules/anrede-kontakte.md` Z. 67 | «erster Beleg» gestrichen, belegneutral formuliert (1 Zeile ersetzt) |
| A4 | `rules/anrede-kontakte.md` nach Z. 14 | Nivellier-Klausel als widerlegt und entscheidungsbeduerftig annotiert (12 Zeilen, additiv) |
| A5 | `skills/wettbewerb/SKILL.md` | `wettbewerbs-dna` + `entwurfs-referenzen` im Contract und vor dem Human Gate verdrahtet (8 Zeilen, additiv) |
| A6 | 4 Dateien in `energie` / `planungsgrundlagen` | beidseitige Kanten fuer SolarApp Basel und Maison Climat gesetzt; Adress-Abweichung einmal statt zweimal offen gefuehrt |
| A7 | `planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` | Rueckkante zum neuen `energie/wiki/energienachweis-zh` samt Rollenteilung (die Hinkante hatte Run 148 bereits gesetzt) |
| A8 | `rules/anrede-kontakte.md` | Belegkante der Batch-100-Nachtraege ergaenzt, analog zur Batch-99-Konvention |
| A9 | `skills/kostenschaetzung/SKILL.md` | Bezugsgroessen-Kante: CHF/m² NF hier, CHF/m³ GV und CHF/Pflegeplatz in `immobilienbewertung`; Warnung zum Teilband 1'053-1'420 |
| A10 | `planungsgrundlagen/wiki/recht-norm-hindernisfreies-bauen-zh.md` Z. 6 | UGZ-Merkblatt «ohne Datum» → «Version März 2010», belegt am fuehrenden Destillat |

Jede Schreiboperation wurde einzeln gegen eine Sicherungskopie gemessen (Rule `auto-verbesserungen`
260811). Die additiven Eingriffe zeigen **0 geloeschte Zeilen**; die vier Ersetzungen genau eine.

---

## 7 · Offene Entscheide fuer Raphael

### E1 — Die Nivellier-Klausel (seit sechs Tagen offen, wirkt in jeder Session)

`rules/anrede-kontakte.md` Zeile 14 weist an zu nivellieren; sechs authentische Belege zeigen, dass
Du staffelst. Vorschlag der twin-KB, unveraendert seit 260816 #1:

> «Jede Person wird einzeln angeredet, in ihrer eigenen Stufe; nivelliert wird nur bei grossen oder
> unbekannten Verteilern.»

Ein Satz von Dir genuegt. Bis dahin traegt die Rule den Vermerk, dass die Zeile nur ein Hinweis ist.
**Das ist der einzige Punkt dieses Laufs mit taeglicher Aussenwirkung** — er betrifft jede Mail an
mehr als einen Empfaenger.

### E2 — Zwei Doppel-Destillate zusammenlegen (Grundsatzentscheid, seit Run 26 parkiert)

`vkf-brl-22-15-blitzschutzsysteme` (normen) ↔ `vkf-richtlinie-22-15-blitzschutzsysteme` (energie)
sowie `vkf-brm-2001-15` ↔ `vkf-merkblatt-2001-15` (Solaranlagen). **Praezisiert gegenueber Run 38:**
beide Blitzschutz-Seiten sind verbunden und die Rollenteilung ist dokumentiert — es geht allein um die
Frage, ob zusammengelegt wird. Merges sind destruktiv und brauchen nach Rule `wissens-bibliothekar`
Deine Einzelfreigabe.

### E3 — Maison Climat: Seelandweg 15 oder 17?

`planungsgrundlagen` fuehrt 15, `energie` fuehrt 17 (aus dem Objektbeschrieb-Poster). Beide Artikel
sind jetzt verbunden und die Abweichung ist einmal statt zweimal offen gefuehrt. Eine Fachfrage, kein
Registerproblem — nur zu klaeren, wenn das Projekt als Referenz verwendet wird.

### E4 — Unveraendert offen aus frueheren Laeufen

Honorar-Phasenanteile und Kategorien-Skala im Skill `honorarberechnung-sia102` (Run 36 E1, Geldfolge;
die Fundstellen-Korrektur ist gelandet, die buerointernen Zahlen selbst bleiben Deine Entscheidung) ·
Fassungsstand-Hinweis am Buch-Layer `baurecht` (Run 36 E2) · SIA 382/2 Ausgabe 2004 gegen 2005 ·
Praezisierung `skills/ausschreibung` Z. 109-113 · Ticket `T-Regelgeschoss` · SYN-34 ·
`ugz-hindernisfreie-aufzuege-2010` (heute teilgeprueft: die Abnehmerseite traegt Link und Datum
korrekt, die Run-55-Ueberarbeitung war eine Status- und keine Inhaltsaenderung — das Risiko ist damit
kleiner als in Run 38 dargestellt).

### E5 — Zur Kenntnis: der Meldekopf ist nicht positiv messbar

Siehe Abschnitt 4. Wenn ein belastbarer Wirksamkeitsnachweis gewollt ist, muss er anders gebaut
werden als ueber Erwaehnungsspuren — etwa als Pflichtzeile «REGISTER gelesen, Stand <Datum>» im
Laufbericht jeder destillierenden Task. Das waere eine Aenderung an rund einem Dutzend Task-Prompts
und deshalb keine Entscheidung, die dieser Loop allein trifft.

---

## 8 · Uebergabe an Run 40

1. **Jeden fortgeschriebenen offenen Punkt vor dem Fortschreiben nachmessen** (Abschnitt 5). Zwei von
   sieben Punkten waren heute ueberholt — das ist keine Ausnahmequote.
2. **Die Kennwert-Gegenprobe zu Ende fuehren.** Heute nur angeschnitten: der Holzbau-Fall wurde
   gefunden, die Baender von `immobilienbewertung` (Diskont-/Kapitalisierungssatz, Lebensdauern) sind
   gegen `grobkosten` weiterhin nicht in der Breite geprueft.
3. **Rotationspaar:** `bauprodukte ↔ normen ↔ energie` war seit Run 34 (16.08.) nicht mehr an der
   Reihe; `bauprodukte` waechst seit dem 28.07. aus dem BKP-Korpus.
4. **Die neuen energie-Destillate vom 21.08., die heute nicht geoeffnet wurden**, gegen
   `planungsgrundlagen` und `bauprodukte` pruefen: `pv-spezialmodule-transparent-bifazial`,
   `sunskin-roof-indach-planung`, `eco-bau-devis-und-baustellenkontrolle`,
   `haushaltgeraete-professionelle-beschaffung-2004`. Der Melder hat sie ausdruecklich als nicht
   inhaltlich geprueft ausgewiesen — Sunskin taucht in `planungsgrundlagen` bereits als
   Modul-Preis-Anker auf.
5. **`skills/energie/SKILL.md` und `skills/planungsgrundlagen/SKILL.md`** wurden heute nicht geoeffnet
   (Reichweiten-Vermerk des Melders). Falls dort Routing-Aussagen zum Energie-Ordner stehen, die der
   Fuehrungs-Notiz in `recht-norm-quellenlandkarte.md` widersprechen, waere das ein weiterer Befund.

---

*Bericht des Wissens-Chefs, Run 39, 21.08.2026. Fan-out und Verifikation ueber das Workflow-Tool
(Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell); Uhr-Kontrolle, die
Meldekopf-Messung, drei eigene Gegenproben, Urteil, Aktionen und Registerpflege im Hauptkontext.*
