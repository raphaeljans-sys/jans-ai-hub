# Wissens-Chef Run 41 — Erst-Pruefung der neuen KB `architektur-fachwissen`, und eine KI-Rechnung, die als Benchmark gefuehrt wurde

**Lauffenster** 23.08.2026 23:13 bis 24.08.2026 00:4x CEST (der Lauf hat Mitternacht
ueberschritten; die Eingriffe tragen deshalb den 24.08.). **Delta-Basis** 22.08.2026 23:15,
Fenster 24,0 Stunden, **182 Commits** — der groesste Delta-Sprung seit Beginn der Reihe.

**Uhr-Kontrolle bestanden** (Rule `auto-verbesserungen` 260730b): Station 23.08. 23:13 CEST gegen
Synology-Selfcommit `862aac83` 23:00:09, konsistent mit dem 15-Min-Takt; der Datumswechsel im
Lauf ist verstrichene Zeit, keine Uhrabweichung.

**Zuschnitt:** 6 Melder (`model: sonnet`) + 13 adversarische Refuter (Hauptmodell) = **19 Agenten**,
3'692'893 Token, 409 Werkzeugaufrufe, 34,8 Min, **0 Fehler**. Nachmessen der fortgeschriebenen
Punkte, zwei eigene Funde, Urteil, Aktionen und Registerpflege im Hauptkontext.

**13 Befunde gemeldet, 11 bestaetigt, 2 widerlegt**, dazu zwei eigene Funde im Hauptkontext.

---

## 1 · Ergebnis in einem Satz

Eine ChatGPT-Antwort, die `energie` gestern als methodisch falsch entlarvt hat, stand seit sechs
Wochen als «Realer JANS-Benchmark» in einem `established`-Artikel der KB `planungsgrundlagen` —
und die gestern angelegte KB `architektur-fachwissen` war in keinem einzigen Hub-Register
eingetragen.

---

## 2 · Der harte Befund: die Entwertung erreichte den Abnehmer nicht

Der Energie-Lauf 161 hat am 23.08.2026 zwei als Fachdokument abgelegte **ChatGPT-Antworten** in
der JANS-Referenzablage identifiziert, als KI-Erzeugnis belegt (Chatbot-Anrede,
`utm_source=chatgpt.com` in den Hyperlink-Zielen, leere Formel-Platzhalter) und sauber als
**Warnkarte** erfasst — `energie/destillate/ki-generierte-fachdokumente-referenzablage.md`,
dazu FAQ F257 neu und ein Pruefabschnitt «vier Griffe» im Wiki. Vorbildlich gearbeitet.

**Nicht geprueft wurde, ob die Zahlen laengst abgeflossen sind.** Sie waren es.
`planungsgrundlagen/wiki/energie-uebersicht.md` fuehrt seit dem 13.07.2026 denselben Wandaufbau
unter der Ueberschrift «**Realer JANS-Benchmark — Biwak Grassen**»: Schutzblech + 40 mm
luftgefuellte Unterkonstruktion (λ ≈ 0,15) + 40 mm Mineralwolle + 140 mm CLT (λ = 0,13),
Ergebnis «U ≈ 0,40 W/m²K — erfuellt den Zielwert von 0,5 mit Reserve». Der Artikel traegt
`status: established` und ist damit ohne Gegenlesen zitierfaehig.

**Was tatsaechlich falsch ist**, sind nicht die 8 % λ-Delta, sondern drei Methodenfehler:
R_si/R_se fehlen ganz · die Luftschicht ist mit λ 0,15 gerechnet statt mit dem Tabellen-R nach
SN EN ISO 6946 · die hinterlueftete Vorsatzschale ist mitgerechnet statt weggelassen. Korrigiert
liegt der Aufbau bei **0,374 bis 0,389 W/m²K**.

**Warum es sechs Wochen ueberlebt hat.** Run 56 hat am 22.07.2026 genau hier hingeschaut, das
unbelegte λ 0,13 bemerkt, es als «Delta ~8 %, ohne Praxisrelevanz fuer das Ergebnis» eingestuft
und den Fall als Planungsbeispiel stehen lassen. Die Einstufung war am Ergebnis gemessen
plausibel — **weil sich die drei Fehler gegenseitig fast aufheben**. Das ist die Lehre des Falls
und zugleich der Kernsatz der neuen FAQ F257: *ein plausibles Resultat ist kein Beleg fuer eine
richtige Rechnung.*

**Das Muster ist die Umkehrung des bisher bekannten.** Run 38 (BRL 17-15), Run 39 (Holzbau-
Aufpreis) und Run 40 (BRL 23-15) fanden alle dieselbe Richtung: eine **Herabstufung** in der
fuehrenden KB erreicht den Abnehmer nicht. Hier hat die fuehrende KB eine Quelle **neu entwertet**
und nicht gesucht, wer sie schon zitiert. Die Cross-KB-Bringschuld in Rule
`wissens-bibliothekar` (ergaenzt 23.08.2026) deckt bisher nur den Fall der uebergebenen offenen
Frage; dieser Fall zeigt, dass sie auch fuer die **Entwertung einer Quelle** gilt.

**Aktion:** Ueberholt-Vermerk gesetzt, Benchmark-Status ausdruecklich aufgehoben, keine Zahl
uebernommen. Der Abschnitt bleibt als **Lehrbeispiel fuer eine plausibel aussehende
Falschrechnung** stehen — geloescht wird nichts.

---

## 3 · Die neue KB `architektur-fachwissen` — vier Befunde, alle additiv geloest

Am 23.08.2026 im Vollgas-Lauf angelegt, Ziel-KB der Korpora `buero-referenzen` und
`archiv-fachwissen`, 8'604 Dateien inventarisiert, noch kein Destillat. Erste Cross-KB-Pruefung.

**B1/B4 — SIA-102-Phasenanteile doppelt gefragt.** Von zwei Meldern unabhaengig gefunden.
`wiki/QUESTIONS.md` #4 reicht eine Frage an den Skill `normen` weiter, die
`normen/destillate/sia-102-2014.md` (`established`, S. 1-58 komplett gelesen am 14.07.2026)
Ziff. 7.7 belegt beantwortet — dieselben sieben Anteile.

> **Der Refuter hat die Aktion korrigiert, nicht nur bestaetigt.** Der Melder wollte auf
> `sia-102-2020.md` und auf `skills/honorarberechnung-sia102` verweisen. Beides falsch: das
> 2020er-Destillat belegt die **Abwesenheit** der Methode (die Ordnung endet nach Art. 6), und
> der Skill fuehrt eine bueroeigene Konvention mit **anderen** Zahlen. Ein Verweis dorthin haette
> exakt den Fehler M1-1 wiederholt, den Run 36 am 18.08.2026 behoben hat. Gesetzt wurde die
> richtige Fundstelle plus drei Vorbehalte (2003-Kontinuitaet bleibt offen, `sia-102-2003` ist
> `speculative` · Fassungsstand 2020 · nicht auf den Skill verweisen).

**B2 — Schulbau-Kennwerte, die Achse existiert schon.** Der Destillat-Fahrplan (Report 05.6) will
das Leutschenbach-Kennzahlenraster erschliessen, ohne
`wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` zu kennen (`established`, 20.07.2026,
25 belegte Quellen) — der dort selbst `grobkosten` fuer CHF/m³ als fuehrend erklaert. Querverweis
gesetzt und die Frage neu geschnitten: beizusteuern ist die **Methode** (Kostenermittlungs-
kreislauf, Gliederung gegen BKP 2 und BKP 1-9), nicht der Kennwert.

**B3 — Phantom-BKP-Codes.** Die BGS-Honorarblatt-Tabelle (20.04.2005) wird in beiden Inventaren
mit «der Aufbau ist unmittelbar uebertragbar» eingeleitet. Gegen die BKP-2017-Liste gemessen:
«019» heisst dort «Uebriges» unter 01 Grundstueckserwerb, **nicht** Abbruch (das ist **112.1**),
und «**071**» existiert im BKP 2017 ueberhaupt nicht. Dieselbe Familie wie der Phantom-Code
«271.10» (Rule `bkp-2017-referenz`, Korrektur 04.08.2026). **Der Refuter hat die Aktion
umgeleitet:** der Melder wollte den Vorbehalt in die zwei `raw/`-Inventardateien schreiben — dort
wird nie editiert. Stattdessen neuer QUESTIONS-Punkt **#3b**.

**Eigener Fund — die KB stand in keinem Hub-Register.** Eingetragen war sie nur in der
`KORPUS-QUEUE.md` ihres eigenen Skills. In `CLAUDE.md` (dem Wegweiser, der in **jeder** Session
laedt) fehlte sie. Nachgetragen. **Zwei Nullbefunde ausdruecklich gepruefet, keine Luecke:**
`WISSEN-CLAUDE.md` ist Meta-Schema und fuehrt gar keine KB-Liste; `rollen-map.tsv` fuehrt Skills,
Tasks und Loops — fuer diese KB laeuft kein eigener Loop, eine Zeile ist nicht faellig.

---

## 4 · normen ↔ baurecht — drei Befunde im 24-Stunden-Delta

**B5 — SIA 500 C3:2013: Bring-Schuld eingeloest, Praemisse widerlegt.**
`baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md` Z. 212-216 fuehrt das Korrigendum zu
Ziff. 9.7.2/9.7.3 (Behindertenparkplaetze) als «dauerhaft offenen Punkt, weil SIA-Normen
kostenpflichtig sind». `normen/destillate/sia-500-2009.md` Z. 48 traegt es laengst, samt
Zitierverbot fuer den Basiswert. **Die Kostenpflicht-Praemisse traegt fuer die Vollnorm, nicht
fuer das Korrigendum** — Korrigenda sind Preisgruppe 0 und frei beziehbar. Erledigt-Vermerk
gesetzt, der alte Absatz bleibt als datierter Stand.

**B6 — EI30 ohne Norm-Kante** in `bestandsumbau-eingriffstiefe.md` (Artikel vom 23.08.2026):
eine materielle VKF-Klassenangabe, keine Norm-Nennung mit Verweis. Kante gesetzt.

**B7 — VSS SN 640 273a fehlt im Hub.** Der ebenfalls gestern angelegte SZ-Artikel gibt
Sichtweiten-Kennwerte materiell wieder und schreibt sie einer Norm zu, die `normen` **gar nicht
fuehrt**: weder REGISTER-Zeile noch Destillat, einzige Fundstelle im Bestand ist eine
Literaturangabe der **Vorgaengernorm** SN 640 273. Vorbehalt gesetzt («Behoerdenwiedergabe aus
dem SZ-Merkblatt, nicht VSS-Fundstelle»), Bring-Schuld **N41-1** in `normen/wiki/QUESTIONS.md`
eingetragen — nach Rule `auto-verbesserungen` 260805 gehoert ein solcher Punkt ins Register des
Empfaengers, nicht in einen Laufbericht.

---

## 5 · Uebergabe-Punkte aus Run 40 — beide eingeloest

**Punkt 1 (Cheminées) — erledigt.** Run 40 hatte die Kante `bauprodukte` ↔ `normen` bewusst
zurueckgestellt, weil die Nachfolge der zurueckgezogenen VKF-Erlaeuterung **BRL 103-15**
unbekannt war (Ticket `N58-2`). **`normen` hat das Ticket am 23.08.2026 geschlossen:** Nachfolger
ist das **feusuisse-Papier «Stand der Technik Teil B»**, ausdruecklich **nicht** die BRL 24-15.
Die Kante ist gesetzt — und der Warnkasten §5ai des Brandschutz-Wegweisers, der noch auf die
BRL 24-15 verwies, hat den Nachtrag bekommen. **Die Zurueckstellung war richtig:** der Verweis
haette dem Leser vier Tage lang nichts genuetzt und waere zudem auf die falsche Nachfolgenorm
gelaufen.

**Punkt 2 (Wegweiser-Sweep) — fortgesetzt, nicht abgeschlossen.** Ein weiterer Fassungsbefund:
**§5ae Schulbauten (AH 1002-15)** gibt die 2'400-m²-Reduktionsklausel im Stand 01.01.2015 ohne
Fassungshinweis; das Delta-Destillat praezisiert sie materiell (nur Geschosse ueber Terrain
zaehlen). Vorbehalt gesetzt, **ohne Zahlenuebernahme** — das Delta traegt `status: speculative`
und ist nach Rule `normen-referenz` Ziff. 1b eine Warnkarte, keine Zitierquelle. Geprueft sind
damit drei Stellen von rund 2'200 Zeilen.

---

## 6 · Zweiter eigener Fund: ein Rechenfehler mit Geldfolge im Honorar-Skill

`skills/honorarberechnung-sia102/SKILL.md` Z. 45 (Arbeitsprinzip 3, weit oben, die Stelle die
beim Ueberfliegen gelesen wird) sagt: «Healthcare/Spital ist **Kategorie V (q=1.0-1.1)**». Die
eigene Kategorientabelle desselben Dokuments sagt: **Kategorie V = q 1.15-1.2** («Spitaeler,
Forschungsbauten, denkmalgeschuetzte Sanierung»); q 1.0-1.1 ist **Kategorie III-IV**.

`q` geht multiplikativ in den Honorarsatz ein. Die Merkzeile fuehrt fuer ein Spital also einen um
**13 bis 17 % zu tiefen Faktor** — und zwar zulasten des eigenen Angebots. Run 36 hat am
18.08.2026 die Provenienz der Tabelle geprueft und mit einem ⚠-Block versehen, die
widersprechende Merkzeile vier Zeilen darueber aber nicht bemerkt. Korrekturvermerk gesetzt, die
Tabelle als massgeblich benannt; der zugrunde liegende Fachentscheid (Norm-Zuordnung
Healthcare zwei Stufen hoeher) bleibt offen, siehe E4.

---

## 7 · Die zwei widerlegten Befunde

Beide aus dem Rotationspaar `twin` ↔ `spec`, beide haetten an der Anrede-Frage gearbeitet, die
seit Run 39 als **Entscheid Raphaels** parkiert ist:

- «Kumulativitaet der Anrede-Trajektorie als belegter Fakt kompiliert» — widerlegt an Pruefschritt
  2: bereits gefuehrt und parkiert (E1/E1b, SYN-43). Die Aktion waere zusaetzlich falsch gewesen.
- «`werter <Vorname>` im Du als generell freie Abstufung gesetzt» — auf vier unabhaengigen Ebenen
  widerlegt. *Der Refuter vermerkt ehrlich, dass er wegen eines SMB-Ausfalls im SSD-Klon
  (Commit `e011fe28`) geprueft hat, nicht auf dem NAS.*

Damit ist das Rotationspaar `twin` ↔ `spec` als gesund gemessen: **kein einziger Befund
ueberlebte.** Die Anrede-Klauseln bleiben, wo sie hingehoeren — bei Raphael.

---

## 8 · Nachmessung der fortgeschriebenen offenen Punkte (Pflicht seit Run 39)

| Punkt | Stand am Original, 24.08.2026 |
|---|---|
| **E1** Nivellier-Klausel | **unveraendert offen** — `rules/anrede-kontakte.md` Z. 14 woertlich unveraendert, Vermerk steht, kein Entscheid |
| **E1b** Treffen-/Kanalwechsel-Klausel | **unveraendert offen** |
| **E2** Blitzschutz | **unveraendert** — `normen` fuehrt die ueberholte Fassung 2015 (103 Z., `ausgabe: … (UEBERHOLT)`), `energie` die geltende 2017 (239 Z.). Zustaendigkeitsfrage, kein Merge-Fall |
| **E2** Solaranlagen | **unveraendert** — zwei Destillate derselben Quell-PDF von 2015 **innerhalb** von `normen` (182 Z. / 138 Z., beide `superseded`) plus das 2022er (`speculative`). Merge ist destruktiv, braucht Freigabe |
| **E4** Honorar-Phasenanteile | **erledigt und ausgetragen** — der Block traegt Herleitung, «buerointerne Konvention», das Zitierverbot fuer SIA 102:2020 und die Norm-Abweichungen |
| **E4** Honorar-Kategorien-Skala | **weiterhin offen** — der ⚠-Block steht, Fachentscheid ausstehend. **Neu dazu:** der interne Widerspruch aus Abschnitt 6 |
| **E4** Buch-Layer `baurecht` | **unveraendert offen** — die Kapitel tragen einzelne Buchstand-2019-Vermerke (Bd. 2, Kap. 12/13/20/21), **der Layer als Ganzes** (`buecher/CLAUDE.md`, `INDEX.md`) aber keinen |
| **SYN-34** Garantieformel `ausschreibung` | **unveraendert offen**, beide Stellen woertlich gemessen (`06_glossar.md` Z. 23, `07_werkvertrag-…` Z. 13) |

**Eine von acht erledigt.** Die Nachmessung kostete rund acht Minuten.

---

## 9 · Ausgefuehrte Aktionen

| # | Datei | Aktion | Umfang |
|---|---|---|---|
| A1 | `architektur-fachwissen/wiki/QUESTIONS.md` #4 | SIA-102-Antwort mit der **richtigen** Fundstelle + drei Vorbehalte | additiv |
| A2 | dieselbe Datei #6 | Querverweis auf die bestehende Schulbau-Kennwert-Achse | additiv |
| A3 | dieselbe Datei, neuer Punkt **#3b** | Phantom-BKP-Codes 019/071 | additiv |
| A4 | `baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md` | SIA-500-C3-Bring-Schuld erledigt, Praemisse berichtigt | **+10 −0** |
| A5 | `baurecht/wiki/bestandsumbau-eingriffstiefe.md` | Norm-Kante zu EI30 | **+7 −0** |
| A6 | `baurecht/wiki/strassenabstand-…-sz.md` + `normen/wiki/QUESTIONS.md` | VSS-Vorbehalt + Bring-Schuld **N41-1** | **+9 −0** / **+47 −0** |
| A7 | `planungsgrundlagen/wiki/energie-uebersicht.md` | Grassen-Biwak: Benchmark-Status aufgehoben | **+20 −0** |
| A8 | `bauprodukte/wiki/cheminee-aufbau-hafnerarbeiten.md` | Kante zu `normen`, Nachfolge BRL 103-15 | **+9 −0** |
| A9/A10 | `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` | §5ai `N58-2` geschlossen · §5ae Fassungsvorbehalt AH 1002-15 | **+17 −0** |
| A11 | `skills/honorarberechnung-sia102/SKILL.md` | interner q-Widerspruch mit Geldfolge | **+10 −0** |
| A12 | `CLAUDE.md` | neue KB im Wegweiser registriert | **+3 −0** |
| A13 | `koordination/QUERBEZUEGE.md` | 2 Matrixzeilen + 5 Paar-Eintraege | **+93 −0** |

Jede Schreiboperation einzeln gegen eine Sicherungskopie gemessen (Rule `auto-verbesserungen`
260811). **Alle Dateien zeigen −0.**

**Zwei eigene Formatfehler, im Lauf gefangen und repariert.** Die erste Messung zeigte bei zwei
Dateien **−1**. Ursache war in beiden Faellen mein **Anker**, nicht der Inhalt: im Wegweiser
schnitt der Anker mitten in eine Zeile und riss die Satzfortsetzung «**Zusammenhaengende
Brandabschnittsflaeche …**» vom Rest ab; in der SKILL.md klebte der Warnblock ohne Zeilenumbruch
ans Zeilenende. Beide zeilengenau repariert, danach **−0**. *Merksatz in der Familie von 260811:
ein Anker, der nicht auf einer Zeilengrenze endet, ist ein Eingriff in fremden Text — auch wenn
er additiv gemeint war.*

**Betriebsnotiz:** der SMB-Mount `/Volumes/daten` fiel im Lauf **fuenfmal** aus. Jeder Ausfall
wurde per `ensure-nas-mounted.sh` behoben, keine Datei aus dem Cache gelesen. Der erste Ausfall
haette beinahe einen Phantom-Befund erzeugt («die neue KB fehlt auf dem NAS») — sie war die ganze
Zeit da. *Ein leeres Ergebnis ist zuerst eine Aussage ueber das Werkzeug* (Rule 260730b, 260807).

---

## 10 · Offene Entscheide fuer Raphael

### E1 / E1b — Die zwei Anrede-Klauseln (seit acht bzw. zwei Tagen offen, wirken taeglich)

Unveraendert, heute am Original nachgemessen, und dieser Lauf hat sie **doppelt bestaetigt**:
zwei Melder wollten daran arbeiten, beide wurden widerlegt, weil der Punkt bei Dir liegt.

- **E1:** `rules/anrede-kontakte.md` Z. 14 verlangt zu nivellieren, sechs Belege zeigen, dass Du
  staffelst. Vorschlag der twin-KB, unveraendert seit 260816: «Jede Person wird einzeln
  angeredet, in ihrer eigenen Stufe; nivelliert wird nur bei grossen oder unbekannten Verteilern.»
- **E1b:** Hebt ein persoenlicher Kontakt nur die **Waermestufe innerhalb** des bestehenden
  Registers, oder kann er auch **Sie → Du** umschalten — und woran erkennst Du den Unterschied?

### E2 — Zwei Doppel-Destillate (seit Run 26 parkiert, heute unveraendert gemessen)

- **Blitzschutz:** Zustaendigkeitsfrage. Die **geltende** Fassung 2017 liegt in `energie`, die
  **ueberholte** 2015 in der fuer Fassungsstaende fuehrenden KB `normen`. Umhaengen oder die
  dokumentierte Arbeitsteilung belassen?
- **Solaranlagen:** zwei Destillate derselben Quell-PDF **innerhalb** von `normen`. Ein Merge ist
  destruktiv und braucht nach Rule `wissens-bibliothekar` Deine Einzelfreigabe.

### E4 — Honorar-Kategorien-Skala, jetzt mit einem zweiten Fehler an derselben Stelle

Der offene Fachentscheid aus Run 36 (Symbol `n` statt `q`, sieben statt sechs Kategorien, die
Norm ordnet Healthcare **zwei Stufen hoeher** ein) bekommt durch den heutigen Fund Gewicht: die
Merkzeile Z. 45 fuehrte fuer ein Spital ein q, das nach der eigenen Tabelle einer **zwei Stufen
tieferen** Kategorie entspricht. Beide Fehler zeigen in dieselbe Richtung — **das eigene Honorar
wird systematisch zu tief angesetzt.** Der Widerspruch ist annotiert; die Frage, welche
Zuordnung gelten soll, ist Deine.

### Unveraendert offen aus frueheren Laeufen

**Fassungsvorbehalt am Buch-Layer `baurecht`** (Run 36 E2 — der Skill macht die Zitierung des
Werks von 2019 in jeder baurechtlichen Stellungnahme zur Pflicht; die einzelnen Kapitel tragen
Buchstand-Vermerke, der Layer als Ganzes nicht) · **SYN-34** (Garantieformel «2 Jahre Ruegefrist
+ 5 Jahre verdeckte Maengel» in `skills/ausschreibung`, ohne Ausgabe, ohne Artikel, ohne den
Hinweis auf die seit **01.01.2026 zwingende 60-Tage-Ruegefrist** nach SIA 118-C1:2026 —
Vertragsbedingungs-Text, der ueber Devis und LV nach aussen geht) · SIA 382/2 Ausgabe 2004/2005 ·
Ticket `T-Regelgeschoss` · **E3** Maison Climat Seelandweg 15/17 (Fachfrage, nur zu klaeren, wenn
das Projekt als Referenz verwendet wird).

---

## 11 · Uebergabe an Run 42

1. **Der Brandschutz-Wegweiser bleibt der groesste offene Posten.** Drei Stellen von rund 2'200
   Zeilen sind geprueft. Der Artikel destilliert VKF-Wortlaut materiell und ist `established`.
   Ein eigener, systematischer Sweep dieses einen Artikels gegen **alle** Delta-Destillate der KB
   `normen` waere ein ganzer Lauf wert — und der bisher ertragreichste, den die Reihe kennt.
2. **Die Bringschuld bei Entwertung einer Quelle.** Der Grassen-Fall zeigt eine Luecke in Rule
   `wissens-bibliothekar`: geregelt ist die uebergebene offene **Frage**, nicht die **entwertete
   Quelle**. Vorschlag fuer Run 42 (kein Rule-Eingriff ohne Raphael): wer ein Destillat
   herabstuft oder eine Quelle als unbrauchbar erkennt, greppt im selben Lauf nach dem
   Quell-/Objektnamen ueber `wissen/**` und `skills/**` und traegt die Treffer nach.
   **Sofort pruefbar:** die uebrigen KI-Dokument-Funde des Energie-Laufs 161 (offener Posten
   E-R161-3: PL-02/03/05 sind noch nicht auf KI-Dokumente gesichtet).
3. **Rotation:** `kunde-bopp` ↔ `projekt-lessons` war seit Wochen nicht an der Reihe und ist
   heute erneut nicht gelaufen. `twin` ↔ `spec` ist heute als gesund gemessen und kann pausieren.
   `architektur-fachwissen` wird beim ersten **Destillat** wieder faellig — heute lag nur das
   Inventar vor.
4. **Der Nachmess-Schritt hat sich zum vierten Mal gelohnt** (1 von 8 Punkten ueberholt). Beibehalten.

---

*Bericht des Wissens-Chefs, Run 41, Lauf 23./24.08.2026. Fan-out und Verifikation ueber das
Workflow-Tool (Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell);
Uhr-Kontrolle, Nachmessung, zwei eigene Funde, Urteil, Aktionen und Registerpflege im
Hauptkontext. Keine Mail — stiller Lauf nach Rule `auto-verbesserungen` 260803; der `hub-chef`
nimmt die offenen Entscheide aus Abschnitt 10 ins Tagesbriefing.*
