# Vollgas-Frühwarnung — Log

Still-by-default: pro Lauf ein datierter Einzeiler. Mail nur bei echtem Handlungsbedarf.
Werte in Mio Tokens, «teuer» = input + cache_creation + output (die relevante Grösse;
«total» ist von billigem cache_read dominiert).

## 2026-08-05 07:15 — ROHMESSUNG (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 05.08.2026 07:15 CEST, NAS gemountet. Zweiter Lauf mit rekursivem Glob
(inklusive Subagenten-Transcripts), Zeilenfilter je `timestamp[:10]` über ein Fenster von
neun Kalendertagen, Duplikate über (message.id, requestId) ausgeschlossen. Erfasst:
**1'348 Dateien MacBook Pro / 750 Dateien Mac Mini** im mtime-Fenster.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 28.07. | 26.53 | 298.62 | 3.11 | 73.09 | **29.64** |
| 29.07. | 18.23 | 434.51 | 3.11 | 76.94 | **21.34** |
| 30.07. | 27.98 | 666.04 | 4.32 | 80.45 | **32.30** |
| 31.07. | 13.20 | 247.91 | 2.44 | 64.83 | **15.64** |
| 01.08. | 5.68 | 143.98 | 0.82 | 21.38 | **6.50** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. | 7.63 | 180.70 | 2.69 | 45.96 | **10.32** |
| 05.08. (bis 07:15) | 1.42 | 47.06 | 0.73 | 12.43 | **2.15** |

Die Überlappungstage 28.07. bis 03.08. stimmen auf zwei Nachkommastellen mit der Messung
vom 04.08. überein — die rekursive Methodik reproduziert sich. Der 04.08. schliesst mit
**10.32 Mio kombiniert**, dem tiefsten Wert eines vollen Arbeitstages seit dem 01.08.
(6.50) und deutlich unter dem 03.08. (32.03).

**Blockade-Status: KEINE.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils zusammen mit einem Limit-Textmuster)
über 36 h: **null** echte Limit-Fehlerereignisse auf beiden Stationen. Das jüngste
bekannte Ereignis bleibt der 03.08. 09:41 CEST vor dem Reset um 12:00; seit nunmehr
**45½ Stunden** ist kein einziges mehr aufgetreten. Das Wochenkontingent trägt wieder.

**Hauptbefund: das Lauf-Gate des MacBook Pro ist zu, und zwar durch zwei Leichen der eigenen
Aufsicht.** Der `vollgas-chef-radar` startet in jedem 8-h-Slot eine Fensterprobe
`claude -p "Antworte nur mit: OK" --model haiku`. Zwei dieser Proben hängen verwaist:
**PID 54048** (Start 04.08. 16:58, zum Messzeitpunkt **14 h 20 min** alt) und **PID 87945**
(Start 05.08. 00:58, **6 h 20 min**), beide PPID 1, beide um Minuten versetzt zu den
Radar-Slots 16:50 und 00:50. Das Lauf-Gate zählt aktive Läufe mit
`pgrep -f "claude (-p|--print)"`, dieses Muster matcht die Probe, und die Grenze der Station
ist 2. **Zwei hängende Proben = Gate dauerhaft dicht, und die Sperre löst sich nicht von
selbst.** Selbst nachgemessen (`ps -o pid,ppid,etime,stat`), nicht aus dem Vorbefund
übernommen; der Speicher wäre mit 3427 MB frei gewesen.

Die Wirkung ist eng zu ziehen, sonst wird ein Defekt zum Fehlalarm: **genau ein Task
konsultiert das Gate** (`normen-training-nacht`, als einziger von 31 registrierten Tasks). Der
Schaden ist damit **ein ausgefallener Lauf** — Run 44 um 01:28, rc=1, kein Destillat, keine
Verifikation. Alle operativen Briefings fragen das Gate nicht und sind unberührt. Der Mac Mini
hat sein eigenes Gate und ist unberührt. Der Punkt ist nicht die Breite, sondern die
**Monotonie**: heute Nacht um 01:28 stirbt Run 45 auf dieselbe Weise, und der Radar-Slot 08:50
kann eine dritte Leiche hinterlassen.

**Die Bereinigung ist mir verwehrt.** `kill -TERM 54048 87945` wurde vom
Berechtigungs-Classifier abgewiesen — genau wie schon beim Normen-Lauf um 01:28. Der Weg wurde
nicht umgangen. Es braucht Raphaels Hand oder eine Bash-Freigabe. Der Befund steht mit dem
konkreten Befehl bereits im Radar-Briefing 05.08. im `LOGBUCH.md`, das der Hub-Chef um 08:39
als Pflichtlektüre liest — der Meldeweg ist intakt und trägt schneller als eine eigene Mail.

**Operative Briefings (Schritt 3): alle in Ordnung.** `logbuch-radar` lief heute 06:55 und hat
sein Deliverable erreicht (Commit `dc7f3a98`, 07:06, Briefing-Abschnitt im LOGBUCH samt
SVA-Mahnung, Gate-Blocker und belegtem Röthlisberger-Versand). Der letzte abgeschlossene
`hub-chef-taeglich` lief am 04.08. 08:39–08:58 und hat das Briefing versandt — der erste volle
Tag unter der Regel «der Chef ist der einzige reguläre Meldekanal» hat funktioniert.
`ag-gruendung-monitor` (07:46), `mahnwesen-verzugscheck` (08:05), `zahlungsabgleich-check`
(08:22) und `hub-chef` (08:39) waren zum Messzeitpunkt **noch nicht fällig**.

**Radar-Herzschlag (Schritt 4): beide Signale grün.** Jüngster RADAR.md-Eintrag **05.08. 00:57**,
Registry `lastRunAt` 04.08. 22:57 UTC — dasselbe Ereignis, also belegt. Abstand zum
Messzeitpunkt **6 h 18 min**, deutlich unter der 12-h-Schwelle. Nächster Slot 08:57. Bittere
Pointe des Tages: die Aufsicht schlägt, aber sie hinterlässt bei jedem Schlag eine Leiche.

**Liefer-Delta der Lern-Loops (Schritt 5): ein Leerläufer, und der ist fremdverschuldet.**
- Geliefert: `twin-mail-training` (03:49, Batch 87 Lücken-Sweep rj@ Dez 25/Jan 26),
  `twin-fidelity-review` (06:08), `wissens-chef` Run 25 (00:05, Cross-KB über 6 Felder und
  23 Agenten: SIA 493 als seit 30.06.2022 archiviert erkannt, BKP-Phantomcodes 271.10/271.13
  in Skills, Destillaten, Rule und Brandschutz-Template bereinigt), `energie` Run 123 (23:08,
  9 Destillate ecoBKP/eco-bau), Nachtschicht 23:30 und 02:31, `energie` ecoBKP 05:39,
  `logbuch-radar` 07:06.
- Muster (a) **erfüllt bei `normen-training-nacht`**: Lauf gestartet, Tokens verbraucht, kein
  Liefer-Delta. Ursache ist aber nicht ein defekter Loop, sondern der Gate-Blocker oben — nach
  Rule 260729b vor jeder Stilllegungsempfehlung gegengeprüft: der Loop **durfte nicht laufen**.
  Kein Abschaltkandidat. Der Loop hat vorbildlich gehandelt: still zurückgetreten und den
  Grund als 140-zeiligen Report belegt.
- Muster (b) Delta-Null-Serie: **kein** Loop mit mehreren ergebnislosen Läufen in Folge.

**Destillat-Aufsicht (neunte Erhebung):**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** — exakt
  wie am 04.08. **Die Front steht still, und das ist hier kein Leerlauf:** beide Läufe
  arbeiteten innerhalb *einer* Datei weiter, dem ERCO-Ratgeber (BKP 233), 04.08. 13:42 von
  Seite 40 auf 53, 05.08. 02:31 von Seite 53 auf 73. Ein Zähler, der Dateien zählt, kann
  40 Seiten Arbeit nicht sehen. Vermerk für künftige Läufe: bei grossen Einzelquellen ist der
  Datei-Zähler das falsche Mass, die Seitenmarke im CHANGELOG das richtige.
- (b) **Ertrag: 9 inhaltliche Artikel, alle `emerging`, 0 `established`** — unverändert in der
  Zahl, aber `erco-lichtplanung-grundlagen.md` wurde heute Nacht **erweitert** (mtime 05.08.).
  Ertrag bewegt sich also, nur nicht in der Artikelzahl.
- (c) **Delta-Null-Serie: 0.** Alle vier Nachtschicht-Slots des 04.08. liefen mit rc=0
  (02:35 `grobkosten` Gegenprüfung zweier bekannter Blocker, 05:35 `bauprodukte`
  Altersregel-Ausschluss, 13:42 ERCO, 23:35 `projekt-lessons` erweiterter Nullbefund «Bauen im
  Betrieb»). Zwei davon sind Nullbefunde — dokumentierte Nullbefunde sind Ertrag, nicht Leerlauf.
  Weder Rücktaktung noch Stilllegung fällig.
- (d) **Stückkosten 04.08.: 0.69 Mio teuer je bewegtem Wiki-Artikel** (10.32 Mio kombiniert /
  15 geänderte Artikel ohne INDEX und QUESTIONS). Zweiter Wert der neuen Reihe nach 03.08.
  Ehrlichkeitsvorbehalt: 6 der 15 sind die Twin-Facetten, die der Fidelity-Review täglich
  anfasst; rechnet man sie heraus, sind es **1.15 Mio je Artikel**. Beide Werte künftig führen.
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor, Gate hängt nicht. Korpus 1 weiter
  «in Arbeit», **keine** Komplettmeldung — Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: Front steht, Ertrag bewegt sich (ERCO erweitert). Nicht
  beides still.

**Mittags-Slot 13:30 — Wochenbilanz des Versuchs (seit 29.07., heute eine Woche).** Der Slot
ist an **sechs von sechs** Tagen gefeuert: 30.07. 13:36 · 31.07. 13:36 · 01.08. 13:35 ·
02.08. 13:30 · 03.08. 13:41 · 04.08. 13:42. Inhaltlich geliefert, wo das Kontingent es zuliess
(02.08. fiel in die Wochensperre): 03.08. `projekt-lessons` RE-00087 präzisiert, 04.08. ERCO
Seite 40→53 für 4.23 USD. **Das Lauf-Gate hat ihn nie abgewiesen** — `gate-Macmini.log` weist
über die ganze Laufzeit **eine einzige** Abweisung aus, und die betraf den künstlichen Testlauf.
**Empfehlung an Raphael: der Slot bleibt.** Nebenbeobachtung: seit dem 04.08. schreibt der Slot
keine Gate-Zeile mehr (letzter Eintrag 03.08. 13:30), obwohl er nachweislich lief — die
Protokollierung greift dort nicht mehr, der Lauf schon. Kein Handlungsdruck, aber der Gate-Log
ist für den Mini damit als Nachweis unbrauchbar geworden.

**Meldeentscheid: KEINE Mail.** Von den sieben Kriterien ist **keines** erfüllt: kein
interaktives Limit-Ereignis (a), kein Tag über 35 Mio und keine zwei Folgetage über je 18 Mio
(b, höchster Wert 03.08. mit 32.03), kein erschöpftes Wochenkontingent in 24 h (c), kein
verfehltes Briefing-Deliverable (d), Radar-Herzschlag vorhanden (e), Destillat-Ertrag bewegt
sich (f), keine Komplettmeldung der Queue (g). Der Gate-Blocker ist ein P1-tauglicher Defekt,
aber ein **Hub-Internum ohne Aussenwirkung**: kein Geld, keine Frist, kein Kunde, ein einziger
betroffener Loop. Nach Rule 260803 gehört er ins Logbuch, wo er bereits steht — mit dem
fertigen Befehl, den Raphael ausführen muss. Der Hub-Chef trägt ihn um 08:39 ins Tagesbriefing.
Letzte Mail dieses Loops: **03.08.2026 22:15**.

## 2026-08-04 07:15 — ROHMESSUNG (Bewertung folgt weiter unten im selben Block)

**Methodik-Bruch: erster Lauf mit REKURSIVEM Glob.** Bis und mit dem Eintrag vom 03.08. las
diese Frühwarnung nur `~/.claude/projects/*/*.jsonl`, also ausschliesslich die Hauptsessions
(03.08.: 175 Dateien MacBook Pro / 58 Mac Mini). Heute erstmals rekursiv inklusive der
Subagenten-Transcripts unter `<projekt>/<session>/subagents/agent-*.jsonl`: **2'353 Dateien
MacBook Pro, davon 512 Subagenten-Dateien**, und **3'426 Dateien Mac Mini, davon 77
Subagenten-Dateien** (mtime-Fenster 9 Tage, Zeilenfilter je `timestamp[:10]`, Duplikate über
(message.id, requestId) ausgeschlossen). Die Werte springen dadurch um den Faktor 2 bis 3
nach oben, **ohne dass mehr verbraucht worden wäre** — es wird nur erstmals vollständig
gezählt. Alle Zahlen früherer Einträge sind systematisch zu tief und dürfen nicht gegen
diese Reihe gehalten werden. Die alten Referenzbänder («Drosselphase MacBook Pro
3–15 Mio/Tag teuer») sind damit hinfällig und neu zu bestimmen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 27.07. | 52.38 | 1058.81 | 10.68 | 236.63 | **63.06** |
| 28.07. | 26.53 | 298.62 | 3.11 | 73.09 | **29.64** |
| 29.07. | 18.23 | 434.51 | 3.11 | 76.94 | **21.34** |
| 30.07. | 27.98 | 666.04 | 4.32 | 80.45 | **32.30** |
| 31.07. | 13.20 | 247.91 | 2.44 | 64.83 | **15.64** |
| 01.08. | 5.68 | 143.98 | 0.82 | 21.38 | **6.50** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. (bis 07:15) | 1.52 | 59.07 | 0.33 | 9.95 | **1.85** |

Messzeitpunkt 04.08.2026 07:15 CEST, NAS gemountet. Der 02.08. steht auf exakt 0.00 auf
beiden Stationen — das ist der Wochenlimit-Ausfall, nicht Sparsamkeit.

**Was der Bruch inhaltlich bedeutet (der eigentliche Befund dieses Laufs).** Der reale
Verbrauch liegt rund um den Faktor 2 bis 3 über allem, was diese Frühwarnung bisher gemeldet
hat. Am 27.07. wurden kombiniert **63.06 Mio** teure Token verbraucht, am 30.07. **32.30**,
am 03.08. **32.03** — die Meldeschwelle (b) steht bei 35 Mio und wurde in dieser Reihe fast
erreicht, während die alte Messung für dieselben Tage Werte um 16 Mio auswies. Damit ist
erklärbar, was bisher unerklärt war: dass das Wochenkontingent binnen zehn Tagen **zweimal**
vollständig gerissen ist (26./27.07. 35 h, 01.–03.08. 45.5 h), obwohl die Tageswerte angeblich
im Band lagen. Sie lagen nie im Band — es wurden nur zwei Drittel gezählt. **Konsequenz:** die
Schwellen (b) 35 Mio/Tag beziehungsweise 18 Mio an zwei Folgetagen stammen aus der alten
Messung und sind gegen die neue Reihe zu tief kalibriert; sie schlagen jetzt seltener an, obwohl
mehr gemessen wird. Neubestimmung der Bänder ist Sache Raphaels, nicht dieses Laufs.

**Blockade-Status: keine neue Blockade.** Strukturelle Prüfung (isApiErrorMessage /
type=error / message.type=error / apiErrorStatus 429, jeweils zusammen mit einem
Limit-Textmuster) über 72 h: **28 Sessions MacBook Pro, 12 Mac Mini** mit echtem
Limit-Ereignis, alle mit dem Text «You've hit your weekly limit · resets 12pm
(Europe/Zurich)». **Jüngstes Ereignis 03.08. 09:41 CEST**, also vor dem Reset um 12:00 — seither
kein einziges mehr. Alle Ereignisse gehören zum bereits am 03.08. gemeldeten 45.5-h-Vorfall.
- Kriterium (a) **nicht erfüllt**: die zwei interaktiven Sessions mit Limit-Ereignis datieren
  vom **01.08. 14:28 CEST**, also ausserhalb der 24-h-Frist.
- Kriterium (c) **formal erfüllt** (das Kontingent war bis 03.08. 12:00 erschöpft, das liegt
  21½ h zurück), aber es ist **derselbe Befund wie am 03.08. 22:15** — nach Schritt 7 keine
  Wiederholungsmail.
- Kriterium (b) **nicht erfüllt**: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio
  (03.08. 32.03 steht neben 02.08. 0.00).

**Operative Briefings (Schritt 3): alle in Ordnung.** `logbuch-radar` lief heute 04.08.
06:55–07:08 vollständig durch (179 Ereignisse, 52 Werkzeugaufrufe) und hat sein Deliverable
erreicht — Commit `3a80ebaa` «Briefing ins Logbuch (erster stiller Lauf), Register um drei
Verifikationsbefunde ergaenzt». Das ist der erste Lauf unter der neuen Entmailungs-Regel, und
er hat funktioniert. `hub-chef-taeglich` (08:39), `ag-gruendung-monitor` (07:46),
`mahnwesen-verzugscheck` (08:05) und `zahlungsabgleich-check` (08:22) waren zum Messzeitpunkt
**noch nicht fällig** — kein Ausfall, nur ein Lauf, der früher misst als die Slots feuern.

**Radar-Herzschlag (Schritt 4): vorhanden, beide Signale grün.** Jüngster RADAR.md-Eintrag
**04.08. 00:57**, zugehörige Session belegt (03.08. 22:57 UTC). Abstand zum Messzeitpunkt
6 h 18 min, deutlich unter der 12-h-Schwelle. Der Radar läuft seit 03.08. im 8-h-Takt, nächster
Lauf 08:57.

**Liefer-Delta der Lern-Loops (Schritt 5): kein Leerläufer.** 72 Commits im NAS-Repo seit
03.08. 22:00. Belegte Lieferungen: `normen` Run 43 (5 Refuter-Prüfungen, SWKI-Anhänge D/E/F,
PL-02-Kerninventar auf 69/69 geschlossen), `baurecht-buch-training` (03.08. 22:04),
`twin-fidelity-review` (04.08. 06:28), `twin-mail-training` (04.08. 01:52), `logbuch-radar`
(07:08). Kein Loop mit Tokenverbrauch ohne Delta.

**Nebenbefund aus dem Normen-Lauf:** die Korrektur des nicht existenten BKP-Codes «271.10» auf
**271.0** ist in Referenzliste und Rule vollzogen (Commits 01:35 und 01:53). Die Rule vermerkt
selbst, dass der falsche Code noch in weiteren Hub-Dateien steht — das ist eine offene
Nachzieh-Arbeit für den Hub-Chef, kein Kontingent-Thema.

**Destillat-Aufsicht (achte Erhebung) — Front und Ertrag bewegen sich beide wieder:**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** (03.08.:
  **31**). Die Front hat sich um **neun Dateien** bewegt — die stärkste Tagesbewegung seit
  Aufnahme dieser Erhebung. Der 52-h-Stillstand vom 03.08. war die Kontingentsperre, nicht ein
  defekter Loop; das bestätigt die Gegenprüfungs-Pflicht aus Rule 260729b.
- (b) **Ertrag: 9 inhaltliche Artikel**, alle `emerging`, **0 `established`**. Jüngster
  `erco-lichtplanung-grundlagen.md`, **03.08. 23:45** (Lauf 23:30). Heute Nacht kam kein neuer
  Artikel dazu, wohl aber Abschlussarbeit: der 05:35-Lauf hat
  `paustian_mirror_mirror_product_sheet.pdf` regelkonform als «kein Artikel» geschlossen
  (Datenblatt über 10 Jahre alt, kein Konstruktionsprinzip) und QUESTIONS.md um Punkt 13
  ergänzt. Eine korrekt verworfene Position ist Fortschritt, nicht Leerlauf.
- (c) **Delta-Null-Serie: 0.** Beide Nachtläufe (02:35 rc=0, 5.22 USD zusammen mit 05:35)
  haben Inventar, CHANGELOG und QUESTIONS bewegt. Weder Rücktaktung noch Stilllegung fällig.
- (d) **Stückkosten:** 03.08. **9.51 Mio teuer je neuem Artikel** (Mac Mini gesamt, ein neuer
  Artikel) — der Wert ist nach oben verzerrt, weil derselbe Mini-Verbrauch auch `energie`
  (1.44 Mio), `planungsgrundlagen` und `projekt-lessons` bediente. 04.08. bis 07:15 nicht
  berechenbar (0.33 Mio, kein neuer Artikel). **Die bisherige Reihe (31.07. 0.66 · 01.08. 0.41)
  ist mit der alten, zu tiefen Messung gebildet und wird hier abgebrochen; die neue Reihe
  beginnt mit dem 03.08.**
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor (28.07.), Gate hängt nicht. Korpus 1
  `bauprodukte` weiter «in Arbeit», **keine** Komplettmeldung — Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: Aufwand ja, aber Front (31→22) und Ertrag (+1 Artikel seit
  der letzten Erhebung) haben sich beide bewegt.
- **Mittags-Slot 13:30 (Versuch seit 29.07.):** hat am 03.08. um 13:41 geliefert (rc=0,
  4.43 USD, `projekt-lessons` RE-00087 um einen konkreteren Blocker ergänzt). Das **Lauf-Gate
  hat ihn nie abgewiesen** — `gate-Macmini.log` weist über die ganze Laufzeit **eine einzige**
  Abweisung aus, und die betraf den künstlichen Testlauf `radar-negativ-mini` (Mindestwert
  999'999 MB). Empfehlung an Raphael: der Slot kann bleiben. Nebenbeobachtung: die drei
  Nachtslots 23:30/02:30/05:30 erscheinen im Gate-Log nicht, nur der 13:30-Slot
  («weiche-nachtschicht») — das Gate greift dort offenbar nicht, was für die Nacht kein
  Problem ist, aber erklärt, warum es nie eine Nachtabweisung gab.

**Meldeentscheid: KEINE Mail.** Von den sieben Kriterien ist nur (c) formal erfüllt, und zwar
durch denselben Vorfall, der am 03.08. 22:15 bereits gemeldet wurde. Der Methodik-Bruch ist
gewichtig, aber ein Hub-Internum ohne Handlungsdruck vor 08:39 — er gehört nach Rule 260803
(Ein-Mail-Prinzip) ins Logbuch, wo der Hub-Chef ihn liest und in sein Tagesbriefing trägt.
Entsprechender Abschnitt ist heute ins `LOGBUCH.md` geschrieben. Letzte Mail dieses Loops:
**03.08.2026 22:15**.

## 2026-08-03 22:15 — GEMELDET (Mail an rj@ gesendet)

Der reguläre 07:15-Slot dieses Laufs wurde am 03.08. um 07:15 selbst vom Wochenlimit
abgewiesen (Session `0c43e8d3`, Limit-Ereignis 05:15:56 UTC) und erst um 22:07 fortgesetzt.
Die Messung ist deshalb ein Ganztages-Stand, kein Morgen-Stand.

Verbrauch teuer/total je Station (Mio), Duplikate über (message.id, requestId)
ausgeschlossen, 175 Dateien MacBook Pro / 58 Mac Mini:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 28.07. | 6.50 | 167.55 | 0.80 | 23.36 | **7.30** |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 | **11.42** |
| 30.07. | 12.15 | 430.38 | 3.93 | 73.22 | **16.08** |
| 31.07. | 4.79 | 127.57 | 1.32 | 45.51 | **6.11** |
| 01.08. | 4.70 | 128.90 | 0.59 | 20.20 | **5.29** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. (bis 22:07) | 1.56 | 7.90 | 2.53 | 51.19 | **4.09** |

Kriterium (b) **nicht erfüllt**: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio.
Der 02.08. steht auf exakt 0.00 auf beiden Stationen — nicht aus Sparsamkeit, sondern weil
das Kontingent leer war.

**Blockade-Status: HART — Wochenlimit 45.5 Stunden erschöpft.** Strukturelle Prüfung
(isApiErrorMessage / type=error / message.type=error / apiErrorStatus 429, jeweils in
Verbindung mit einem Limit-Textmuster): erster Beleg im Lauf-Journal **01.08. 14:28**, letzter
**03.08. 05:30**, Reset laut Fehlertext **03.08. 12:00 Europe/Zurich**. Meldung durchgehend
«You've hit your weekly limit», also **Wochen-Limit, nicht 5-Stunden-Limit**. Kriterium (c)
**erfüllt** (Erschöpfung innerhalb der letzten 24 h). Der Vorfall ist länger als der
35-h-Ausfall vom 26./27.07.

**Interaktive Sessions:** 0 menschlich getippte Sitzungen mit Limit-Ereignis. Alle 15
betroffenen Sessions auf dem MacBook Pro tragen einen `<scheduled-task`-Opener, die vier auf
dem Mac Mini einen Nachtschicht-Dispatch-Prompt (im Journal als `loop: dispatch-versuch1`,
`cost_usd: 0`). Kriterium (a) **nicht erfüllt** — Raphaels eigene Arbeit war nicht blockiert.

**Operative Briefings: AUSGEFALLEN (Kriterium (d) erfüllt).**
- **02.08.:** `logbuch-radar`, `hub-chef-taeglich` und `zahlungsabgleich-check` brachen je nach
  12 Zeilen und **0 Tool-Calls** ab — kein Briefing, kein Deliverable. `mahnwesen-verzugscheck`
  hatte am Sonntag planmässig keinen Lauf (Cron Mo–Fr), das ist kein Ausfall.
- **03.08.:** alle vier Briefings wurden zu ihrer Startzeit abgewiesen (`logbuch-radar` 06:55,
  `mahnwesen` 08:06, `zahlungsabgleich` 08:23, `hub-chef` 08:40 CEST) und laufen erst seit
  **22:10 CEST** in einem Sammel-Wiederanlauf nach — rund 15 Stunden zu spät. Der Reset um
  12:00 hat sie **nicht** von selbst nachgeholt.
- Letzte belegte Briefing-Lieferung davor: `logbuch-radar` 01.08. 06:55–07:12 (183 Zeilen,
  47 Tool-Calls) und `hub-chef-taeglich` 01.08. 08:39–08:59 (212 Zeilen, 59 Tool-Calls).

**Radar-Herzschlag: AUSGEFALLEN (Kriterium (e) erfüllt).** Beide Signale lagen weit über der
12-h-Schwelle:
- Sessions: bis **31.07. 22:58 UTC** lief `vollgas-chef-radar` lückenlos im 4-h-Takt (27 Läufe
  in vier Tagen), danach nur noch **01.08. 12:12 UTC**, dann nichts bis **03.08. 20:07 UTC**.
  Lücke **55.9 Stunden**, rund 13 ausgefallene Läufe.
- `RADAR.md` trägt den Dateistand **01.08. 14:15** (55.9 h alt).
- Ursache ist diesmal belegt das Wochenlimit (der letzte Radar-Lauf endete 16 Minuten vor der
  ersten Limit-Abweisung), nicht ein toter Takt wie am 25.–27.07. Er lebt seit 22:07 wieder.

**Liefer-Delta der Lern-Loops.** Lauf-Journal: **02.08. 0 von 5** Läufen erfolgreich,
**03.08. 1 von 3** (30.07. noch 7/10, 31.07. 6/8, 01.08. 5/9). Die sechs abgewiesenen
Nachtschicht-Slots (02.08. 02:30/05:30/13:30/22:30/23:30, 03.08. 02:30/05:30) stehen alle mit
`rc: 1`, `cost_usd: 0`, `num_turns: 1` — **kein Tokenverbrauch ohne Ertrag, sondern gar kein
Lauf**. Muster (a) und (b) aus Schritt 5 liegen damit nicht vor. Nach dem Reset lieferte der
13:41-Lauf sauber (rc 0, 55 Turns, $4.43, `projekt-lessons` RE-00087, Commit `301a9fc5`),
dazu `energie` Run 121 (9 Destillate, FAQ F197–F201, Themenartikel) und die
Umlaut-Bereinigung in `planungsgrundlagen`.

**Gegenprüfung eines Fremdbefunds (Rule 260729b).** Der `methoden-radar` hat heute 21:00
vermerkt, `wissens-chef` laufe «taeglich ohne Liefer-Beleg seit Run 22 vom 31.07.». Am
Original nachgemessen: Run 22 liegt als `outputs/2026-07-31_wissens-chef-run22.md` vor
(31.07. 23:48, Commit 31.07. 23:51), die Läufe vom 01.08. und 02.08. erzeugten keinen Report.
**Der Befund stimmt, seine Schlussfolgerung nicht:** beide Läufe fielen ins Wochenlimit
(02.08. 23:12 CEST Limit-Ereignis belegt), der 01.08.-Lauf lag 8¾ h nach dessen Beginn.
`wissens-chef` ist **nicht** defekt und **kein** Abschaltkandidat — der nächste ungestörte Lauf
ist der Prüfstein. Für den Radar: ein Liefer-Delta von Null während einer Kontingentsperre darf
nicht als Leerlauf gewertet werden, sonst schaltet der Leerlauf-Wächter gesunde Loops ab.

**Destillat-Aufsicht (siebte Erhebung) — der Loop stand still, weil er nicht laufen durfte:**
- (a) Fortschritt: Sektionen **37/37**, 214 Dateien inventarisiert, **31 offene Dateien**
  (01.08.: 32) — die Front hat sich seit der letzten Erhebung um **eine** Datei bewegt, und das
  am 01.08.; seit **01.08. 13:34** steht sie still (52 h).
- (b) Ertrag: **9 inhaltliche Artikel** (01.08.: 8), alle `emerging`, **0 `established`**.
  Jüngster Artikel `cheminee-aufbau-hafnerarbeiten.md`, **01.08. 13:33**. Seither kein Zuwachs.
- (c) Delta-Null-Serie: **0**. Die Serie ist nicht gewachsen, weil in den letzten 48 h kein
  Destillat-Lauf stattgefunden hat. Messweg weiterhin über CHANGELOG + `logbuch/laeufe/*.jsonl`;
  unter `outputs/` liegt seit dem 28.07. kein Lauf-Report mehr (bereits am 01.08. vermerkt).
- (d) Stückkosten: **02.08. nicht berechenbar** (0 Verbrauch, 0 Artikel), **03.08. für
  `bauprodukte` nicht berechenbar** (kein Lauf). Der Mini-Verbrauch des 03.08. (2.53 Mio teuer)
  ging an `energie` und `projekt-lessons`. Reihe bisher: 31.07. 0.66 · 01.08. 0.41 · 02.08. — ·
  03.08. —.
- Spec: `specs/bauprodukte-spec.md` liegt vor (28.07.), Spec-Gate hängt nicht. Korpus 1
  `bauprodukte` weiterhin «in Arbeit», keine Komplettmeldung. Kriterien (f) und (g) **nicht
  erfüllt** — (f) ausdrücklich nicht, weil der Aufwand fehlte, nicht nur der Ertrag.
- **Mittags-Slot 13:30 (Versuch seit 29.07., Woche jetzt voll):** hat **geliefert** — 01.08.
  Artikel `cheminee-aufbau-hafnerarbeiten` (CHANGELOG weist den Slot ausdrücklich aus) und
  03.08. `projekt-lessons` RE-00087. Am 02.08. vom Wochenlimit abgewiesen, nicht vom Gate.
  Das **Lauf-Gate hat ihn nie abgewiesen**: `gate-Macmini.log` zeigt seit dem 29.07. **0
  Abweisungen**, am 03.08. 13:30 zwei Freigaben (`weiche-nachtschicht`, `nachtschicht`, 6135 MB
  frei, Druck 2). **Empfehlung an Raphael: Slot behalten.**

**Verbrauchsverteilung der Limit-Woche** (28.07.–03.08., teuer, Mio) — **korrigierte Fassung,
siehe Messfehler-Vermerk unten**: MacBook Pro **44.10** gesamt in 176 Sessions, davon
`vollgas-chef-radar` **8.27** (30 Läufe, 0.28 je Lauf) · `normen-training-nacht` 4.83 ·
`wissens-chef` 2.44 · `hub-chef-taeglich` 2.21 · `twin-fidelity-review` 1.86 ·
`vollgas-fruehwarnung` 1.47 · `logbuch-radar` 1.45 · `konversations-log` 1.42 ·
`twin-mail-training` 1.40 · `zahlungsabgleich-check` 1.05 · `baurecht-buch-training` 1.01 ·
übrige je unter 1.0. Mac Mini **12.70** gesamt in 57 Sessions, davon `energie-training` 2.67 ·
`claude-abo-auslastung` 0.61 · `planungsgrundlagen-training` 0.51. **Zusammen 56.80 Mio.**

**Nicht zuordenbar: 11.58 (MacBook) + 8.61 (Mini) = 20.19 Mio**, also 35.5 % — und die beiden
Hälften sind grundverschieden. Auf dem **Mac Mini** ist der Block fast vollständig
**Loop-Arbeit ohne Task-Header**: die zehn grössten Sessions tragen die Opener «Fuehre EINEN
Intensiv-Lauf des Energie-/Planungsgrundlagen-Trainings aus» und «Nachtschicht-Zyklus Mac
Mini», je 0.25–0.39 Mio. Auf dem **MacBook Pro** ist es überwiegend **Raphaels eigene
interaktive Arbeit** (Brandschutz-Scan 2620, Immobilienbewertungs-Wiki, Unternehmerwahl
Tschopp, Speicher-/Systemfragen), in vielen kleinen Sitzungen. **Konsequenz für die
Loop-Drosselung:** die Lern-Loops sind auf dem MacBook nicht der Hauptverbraucher, und auf dem
Mini verschwindet ein Drittel der Loop-Kosten aus jeder Task-Statistik, weil die
Trainings-Läufe per `claude -p` ohne `<scheduled-task`-Opener starten. Wer nur die getaggten
Zeilen liest, unterschätzt die Mini-Loops systematisch.

**MESSFEHLER GEFUNDEN UND BEHOBEN (03.08. 22:45).** Die zuerst berichteten Wochenwerte
(MacBook 68.75 · Mini 14.97 · zusammen 83.72 · Radar 9.59 · nicht zuordenbar 40.95) waren
**überhöht** und sind durch die Werte oben ersetzt. Ursache: die Task-Aufschlüsselung filterte
die **Dateien** nach `mtime`, summierte dann aber **alle** `usage`-Zeilen darin — auch solche
von vor dem Fenster. Aufgefallen an einer einzelnen Session mit scheinbar 16.55 Mio, die
tatsächlich vom **19.–21.07.** stammt (470 User-Turns über zwei Tage, grösster einzelner
`cache_read` 928'459 Token). Korrektur: Filter **je Zeile** über `timestamp[:10]` gegen ein
explizites Fenster. Die **Tageswerte** der Tabelle oben sind davon **nicht** betroffen, sie
waren von Anfang an nach `timestamp` gruppiert — mit einer Ausnahme: der mtime-Vorfilter von
6 Tagen schneidet den **ältesten** Tag des Fensters an (28.07. mit 6.50 gemessen, real höher),
weil Dateien, die an jenem Tag zuletzt geschrieben wurden, knapp herausfallen. Der Vorfilter
im Task-Prompt ist deshalb am 03.08. auf 9 Tage erweitert worden.

**Die Mail von 22:22 trägt die alten Wochenzahlen.** Raphael wurde im selben Gespräch über die
Korrektur informiert; eine zweite Mail wurde bewusst nicht gesendet (Wiederholungsverbot, und
der Empfänger war anwesend). Die Drossel-Entscheidung bleibt von der Korrektur unberührt und
wird durch sie sogar deutlicher: `vollgas-chef-radar` ist mit 8.27 Mio weiterhin der grösste
getaggte Einzelposten und **fast doppelt so teuer wie der zweitgrösste Loop** (normen 4.83).

**Speicher MacBook Pro** zum Messzeitpunkt: 3531 MB verfügbar (vm_stat free+inactive+purgeable),
`kern.memorystatus_vm_pressure_level: 2` — erhöhter Druck, aber kein Meldegrund dieser Warnung.

**Meldeentscheid: GEMELDET.** Drei Kriterien erfüllt (c Wochenkontingent, d Briefing-Ausfall,
e Radar-Herzschlag). Kein Wiederholungsfall der Mail vom 28.07. 06:58 — das war der Vorfall
26./27.07.; dies ist eine **neue** Erschöpfung, und der damalige Eintrag hat genau dafür die
nächste Mail vorgesehen. Empfohlen wurde **eine** Rücktaktung: `vollgas-chef-radar` von 4 h auf
8 h (`50 */8 * * *`), belegt als grösster getaggter Einzelverbraucher mit **8.27 Mio bei
30 Läufen** (korrigierter Wert). Ausdrücklich **nicht** empfohlen: `wissens-chef` abzuschalten
(siehe Gegenprüfung oben).

**VOLLZUG 03.08. 22:40 — Freigabe Raphaels im Gespräch («kannst du deine empfehlungen umsetzen
sodass wir token sparen?»).** `vollgas-chef-radar` steht neu auf `50 */8 * * *` (drei statt
sechs Läufe pro Tag), Beschreibung mit Begründung und Vorgeschichte nachgeführt. Erwartete
Ersparnis rund **4.1 Mio teuer pro Woche** (3 eingesparte Läufe je Tag × 7 × 0.28 Mio je Lauf,
korrigierte Basis). In die Task-Beschreibung wurde zusätzlich die Lehre dieses Laufs
aufgenommen: **ein Liefer-Delta von Null während einer Kontingentsperre ist kein Leerlauf** —
vor jeder Stilllegungsempfehlung ist am Lauf-Journal (`rc`, `cost_usd`) zu prüfen, ob der Loop
überhaupt laufen durfte.

**Keine weitere Drosselung vollzogen, und zwar begründet.** Gegen den Liefer-Beleg geprüft
haben **alle** grossen Lern-Loops in diesem Fenster geliefert: `normen` Run 40 + 41,
`twin-fidelity` (03.08.), `wettbewerbs-dna` Etappe-4-Vertiefung (03.08.), `baurecht` Buch-Run 71
(03.08.), `energie` Run 121 (03.08.), `koordination` Synergie-Lauf 03 (01.08.). Es gibt derzeit
**keinen zweiten belegten Leerlauf-Kandidaten**; weitere Abschaltungen wären geraten und würden
Wissen kosten statt Tokens sparen. Der nächste echte Hebel ist nicht ein weiterer Loop, sondern
die **Mini-Loops ohne Task-Header** sichtbar zu machen (8.61 Mio unsichtbar in jeder
Task-Statistik) — dafür müssten die `claude -p`-Trainingsprompts einen erkennbaren
Loop-Namen im Opener führen. Vorschlag an Raphael, nicht vollzogen.

**Nächste Mail:** nicht für denselben Befund. Erst wieder bei neuer Erschöpfung, bei blockierter
interaktiver Sitzung, bei erneutem Briefing-Ausfall oder wenn der Radar nach dem Wiederanlauf
erneut stillfällt.

## 2026-08-01 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:12–07:20, Duplikate über
(message.id, requestId) ausgeschlossen:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 |
| 30.07. | 12.15 | 430.38 | 3.93 | 73.22 |
| 31.07. (voll) | 4.79 | 127.57 | 1.32 | 45.51 |
| 01.08. (bis 07:12) | 2.05 | 68.61 | 0.41 | 14.07 |

Kombiniert teuer: 27.07. **26.50** · 28.07. **10.51** · 29.07. **11.41** · 30.07. **16.07** ·
31.07. **6.11** · 01.08. bis 07:12 **2.46 Mio**. Kriterium (b) nicht erfüllt: kein Tag über
35 Mio, keine zwei Folgetage über je 18 Mio. **Der 31.07. ist mit 6.11 Mio der niedrigste
Tageswert der Woche** und liegt am unteren Rand des Drosselphasen-Bands (Referenz MacBook Pro
3–15 Mio teuer/Tag: 4.79). Die Reihe fällt seit dem 30.07. Nachtrag zum letzten Eintrag: die
dort für den 31.07. genannten 1.75/0.43 waren der Teiltag bis 07:15, der volle Tag schliesst
mit 4.79/1.32.

**Blockade-Status: SAUBER.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils in Verbindung mit einem Limit-Textmuster) über
das 26-h-Fenster: **0 Ereignisse auf beiden Stationen**. Kein 5-Stunden-Limit, kein Wochen-Limit.
Kriterien (a) und (c) nicht erfüllt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:55–07:12 (204 Zeilen,
87 Turns) und schliesst mit nachgeführtem Register und Journal (Commit `5e00444d`).
`hub-chef-taeglich` lief zuletzt 31.07. 08:39–09:21; am Sitzungsprotokoll nachgemessen, dass die
Briefing-Mail tatsächlich rausging (osascript-Ergebnis «GESENDET», nach `korrektur` und
twin-Fidelity 89) — der heutige 08:35-Slot war zum Messzeitpunkt noch nicht fällig, ebenso
`mahnwesen-verzugscheck` (08:05) und `zahlungsabgleich-check` (08:23), beide zuletzt am 31.07.
mit Deliverable. Kriterium (d) nicht erfüllt.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: eine Session mit dem Opener
`vollgas-chef-radar` lief **01.08. 00:58–01:00** (also vor 6.2 h, im 4-h-Takt, davor 20:58 und
16:58), und RADAR.md trägt den Dateistand **31.07. 22:59** (vor 10.2 h). Beides innerhalb der
12-h-Schwelle, Kriterium (e) nicht erfüllt. Anmerkung: der 00:58-Lauf hat RADAR.md nicht mehr
geschrieben und schliesst mit einem englischsprachigen Zwischenstand — Herzschlag vorhanden,
Sprachvorgabe dort verletzt.

**Destillat-Aufsicht (sechste Erhebung) — Ertrag bewegt sich, die Front steht seit zwei Tagen
still, und das Inventar wird von den Läufen nicht mehr nachgeführt:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, `--stand` weist **32 offene
  Dateien** aus — unverändert seit dem 30.07. Marker **147 `[-]` · 33 `[ ]` · 22 `[t]` ·
  16 `[x]`**, exakt wie in der letzten Erhebung. Dateistand des Inventars
  `training/bauprodukte-inventar.md` weiterhin **30.07. 13:34**, also inzwischen **42 h
  unberührt**, obwohl in dieser Zeit zwei Artikel fortgeschrieben wurden. Der am 31.07.
  gemeldete Nachführungs-Rückstand hat sich verdoppelt: die Front unterzeichnet den
  tatsächlichen Fortschritt strukturell, nicht nur einmalig.
- (b) Ertrag: **8 inhaltliche Artikel**, alle `emerging`, **0 `established`** — die Zahl ist
  unverändert, aber der Ertrag lief über Tiefe statt Breite:
  `erco-lichtplanung-grundlagen.md` von S. 20 auf S. 40 fortgeschrieben (31.07. 23:33, Commit
  `50ca4ccf`) und `bkp-261-aufzuege.md` erweitert (23:41, Commit `ab20b1d4`). Zusätzlich hat
  der Lauf QUESTIONS Punkt 9 (Holzbau/Bekleidungen BKP 214/225/271) als **Fehlannahme**
  korrigiert und geblockt, nachdem er die Quellordner geprüft und leer vorgefunden hat — ein
  Negativbefund, der künftige Läufe vor derselben leeren Suche bewahrt.
- (c) Delta-Null-Serie: **0.** Alle vier Nachtläufe seit der letzten Erhebung haben geliefert
  (30.07. Terrazzo, 31.07. 02:38 BKP 261, 31.07. 23:33 ERCO, 01.08. 02:36 grobkosten).
  **Messweg-Korrektur:** unter `wissen/bauprodukte/outputs/` liegt seit dem 28.07. kein
  Lauf-Report mehr (nur der heutige Wissenscheck-Health-Check) — der Loop dokumentiert
  ausschliesslich in `CHANGELOG.md` und im Lauf-Journal. Die Delta-Null-Serie ist deshalb über
  `outputs/` nicht mehr messbar und wurde ersatzweise über CHANGELOG plus
  `logbuch/laeufe/*.jsonl` erhoben. Für den Radar: die im Task hinterlegte Drei-/Fünf-Report-
  Regel greift an dieser Stelle ins Leere.
- (d) Stückkosten: **31.07. 0.66 Mio teuer je Artikel-Delta** (Mac Mini 1.32 Mio / 2 erweiterte
  Artikel), **01.08. bis 07:12 0.41 Mio** (0.41 Mio / 1 Delta, `grobkosten/kennwerte.md`).
  Reihe bisher: 31.07. 0.66 · 01.08. 0.41.
- Spec: `specs/bauprodukte-spec.md` liegt vor (28.07.), Spec-Gate hängt nicht. Kriterium (f)
  nicht erfüllt — es wurden Tokens verbraucht, aber der Ertrag hat sich nachweislich bewegt.
  Kriterium (g) nicht erfüllt: Korpus 1 (bauprodukte) ist «in Arbeit», die Queue meldet keine
  Komplettmeldung.

**Mittags-Slot 13:30 (befristeter Versuch seit 29.07.) — er liefert, und das Lauf-Gate hat ihn
nie abgewiesen.** Drei Läufe belegt, alle rc=0 mit Ertrag: 29.07. 13:34, 30.07. 13:36
(zusätzlich ein 12:51-Lauf), 31.07. 13:36 (fünfter Lesson-Artikel in `projekt-lessons`,
Fokus-Bereich «Kosten & Termine» erstmals belegt). `logbuch/speicher/gate-Macmini.log` endet am
**29.07. 22:38** — seither kein einziger Eintrag, weder Freigabe noch Abweisung. Das heisst
nicht, dass das Gate den Slot durchgelassen hat, sondern dass die Nachtschicht das Gate
offenbar gar nicht aufruft. Für Raphaels Entscheid nach der Woche (ab 05.08.) ist damit belegt:
der Slot liefert, aber er läuft ungeschützt.

**Nebenbefund zum Radar (P3 aus dessen Lauf 31.07. 20:58): falsch.** Der Radar meldet, der Glob
`~/.claude/projects/*/*.jsonl` im SKILL.md dieser Frühwarnung treffe null Dateien. Nachgemessen:
er trifft **3'132 Dateien** auf dem MacBook Pro, die gesamte Verbrauchsmessung dieses Laufs steht
darauf. Der P3 sollte fallengelassen und nicht weiter mitgeschleppt werden.

**Speicher (vm_stat frei+inactive+purgeable, Druck via sysctl):** MacBook Pro 5'790 MB / Druck 1,
Mac Mini 9'259 MB / Druck 1. Beide normal.

**Meldeentscheid: keine Mail.** Keines der Kriterien (a) bis (g) erfüllt. Letzte Mail dieser
Frühwarnung: **27.07.2026 21:45** (Wochenlimit-Totalausfall) — seither still.

## 2026-07-31 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:15, Duplikate über (message.id, requestId)
ausgeschlossen:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 |
| 30.07. | 12.15 | 430.38 | 3.93 | 73.22 |
| 31.07. (bis 07:15) | 1.75 | 54.72 | 0.43 | 14.40 |

Kombiniert teuer: 29.07. **11.42 Mio**, 30.07. **16.08 Mio**, 31.07. bis 07:15 **2.18 Mio**.
Kriterium (b) nicht erfüllt: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio.

**Wichtigster Befund dieses Laufs — der Radar misst den Verbrauch um Faktor 2 bis 4 zu hoch,
und die Ursache ist geklärt.** Der Radar-Eintrag von 04:57 nennt für den MacBook Pro 30.07.
**57.92 Mio** teuer und 31.07. bis 04:57 bereits **25.61 Mio**; diese Messung weist für dieselbe
Station **12.15** bzw. **1.75 Mio** aus. Die Differenz ist kein Zeitzonen- und kein
Fenstereffekt, sondern die fehlende Deduplizierung: Claude Code schreibt **dieselbe API-Antwort
mehrfach in die JSONL — je Content-Block eine Zeile, alle mit identischer `usage`**. Am eigenen
Sitzungsprotokoll dieses Laufs nachgemessen: 13 eindeutige Antworten, davon 10 mit
Mehrfachzeilen, Beispiel `msg_011CdZZoFBbSLmv84DbKbXxN` dreimal mit identischen Werten
(2 input / 101'434 cache_creation / 343 output). Wer roh summiert, zählt dieselben Tokens zwei-
bis viermal. Gegenprobe auf die Alternativerklärung: **0** Schlüssel kommen in mehr als einer
Datei vor, es sind also keine Resume-Kopien, sondern Streaming-Zeilen derselben Antwort.
Rohsummen ohne Dedup zum Vergleich: 30.07. UTC 32.22 Mio, lokal 26.58 Mio — auch damit bleibt
der Radar-Wert unerreicht. Für den Radar: die 3x-Regel und die Kapazitätsbeurteilung dürfen
nicht auf der rohen Summe stehen, sonst schlägt sie bei rund der Hälfte des tatsächlichen
Verbrauchs Alarm. Der Befund entwarnt — Raphaels Kapazität ist deutlich weniger beansprucht,
als die Radar-Reihe seit vier Tagen nahelegt.

**Blockade-Status: SAUBER.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils in Verbindung mit einem Limit-Textmuster):
**0 Ereignisse im 26-h-Fenster** auf beiden Stationen. Kein 5-Stunden-Limit, kein Wochen-Limit.
Kriterien (a) und (c) nicht erfüllt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:5x bis 07:11 (189 Zeilen)
und schliesst mit «Briefing gesendet»; inhaltlicher Kern war der Thalwiler Begleitbeschrieb, den
Raphael am 30.07. 16:35 in der Fassung 260730 mit totem Recht (StrAV) versandt hatte.
`hub-chef-taeglich` lief zuletzt 31.07. 01:07 (366 Zeilen) und ist sauber abgeschlossen; der
reguläre 08:35-Slot war zum Messzeitpunkt noch nicht fällig. `mahnwesen-verzugscheck` (30.07.
10:16) und `zahlungsabgleich-check` (30.07. 08:37) erreichten ihr Deliverable; letzterer weist
offen aus, dass die Fan-out-Agenten `rechtschreibung` und `layout` mit API-Fehler 529 abbrachen
und die Prüfung inline erfolgte. Kriterium (d) nicht erfüllt.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: jüngster RADAR.md-Eintrag **31.07. 04:57**
(Dateistand 05:02), und eine Session mit dem Opener `vollgas-chef-radar` lief um **05:03**;
davor 00:36 und 01:02, also im 4-h-Takt. Weit innerhalb der 12-h-Schwelle, Kriterium (e) nicht
erfüllt.

**Destillat-Aufsicht (fünfte Erhebung) — Ertrag bewegt sich, die Front kaum, und die
Inventar-Nachführung hinkt den Artikeln hinterher:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, `--stand` weist **32 offene
  Dateien** aus — exakt wie am 30.07. Marker **147 `[-]` · 33 `[ ]` · 22 `[t]` · 16 `[x]`**:
  gegenüber gestern wanderte **eine Position von `[t]` auf `[x]`**. Dateistand des Inventars
  **30.07. 13:34**, also seit 18 h unberührt, obwohl seither zwei Artikel entstanden sind. Die
  beiden Nachtläufe haben geliefert, ohne das Inventar nachzuführen; die Front unterzeichnet
  den tatsächlichen Fortschritt.
- (b) Ertrag: **8 inhaltliche Artikel** (plus INDEX und QUESTIONS, zusammen 10 Dateien in
  `wiki/`), alle `emerging`, **0 `established`**. Neu seit der letzten Erhebung sind
  `terrazzo-kunststein-bodenbelaege.md` (30.07. 23:40) und `bkp-261-aufzuege.md` (31.07. 02:38).
  **Zählweise klargestellt:** der 30.07.-Eintrag nannte «8 Artikel», zählte aber INDEX und
  QUESTIONS mit; vergleichbar sind 6 Artikel am 30.07. gegen 8 heute. Künftig gilt die Zahl der
  Artikel mit `status:`-Frontmatter.
- (c) Delta-Null-Serie: **0.** Beide Läufe seit der letzten Erhebung haben geliefert (Terrazzo
  aus 281 Bodenbeläge, Aufzüge-Artikel plus geschlossener QUESTIONS-Punkt 10 zur
  VKF-BRL-23-15-Teilrevision samt Cross-KB-Rücklauf nach `normen`). **Der am 30.07. gemeldete
  Nebenbefund verschärft sich: seit dem 28.07. ist kein `outputs/`-Report mehr geschrieben
  worden** — jüngster bleibt `2026-07-28_destillat-lauf4-281-bodenbelaege.md`, das sind jetzt
  drei produktive Läufe in Folge, die nur über CHANGELOG und Lauf-Journal dokumentiert sind. Für
  den Radar: eine reine Report-Zählung würde hier drei Delta-Null-Läufe sehen und die
  Rücktaktung auslösen, obwohl der Loop durchgehend geliefert hat.
- (d) Stückkosten je Lauf aus dem Lauf-Journal: **30.07. 23:35 = 3.43 USD** für den
  Terrazzo-Artikel, **31.07. 02:39 = 4.19 USD** für den Aufzüge-Artikel. Reihe seit Beginn der
  Messung: 3.81 → 3.43 → 4.19 USD je Artikel, stabil.
- Spec-Gate: `specs/bauprodukte-spec.md` liegt vor (28.07.). Kein Hänger.
- Korpus-Queue: Korpus 1 `bauprodukte` in Arbeit, Korpora 2 bis 4 warten. Keine Meldung
  «KORPUS-QUEUE KOMPLETT», Kriterium (g) nicht erfüllt.
- Kriterium (f) nicht erfüllt: der Loop hat in den letzten 48 h Tokens verbraucht **und** zwei
  Artikel plus eine Marker-Position geliefert.

**Mittags-Slot 13:30 der Mini-Nachtschicht (befristeter Versuch seit 29.07., Tag 3 von 7):**
am 30.07. hat er geliefert — Lauf-Journal `dispatch-versuch1` 13:36:05, rc=0, 3.70 USD, und der
Inventar-Marker-Wechsel um 13:34 fällt genau in dieses Fenster. Das Lauf-Gate hat ihn **nie
abgewiesen**: `logbuch/speicher/gate-Macmini.log` enthält für den Slot überhaupt keinen Eintrag
(letzte vier Zeilen 28./29.07., zwei Freigaben `energie-training`, eine Abweisung eines
Negativtests). Vollständige Bewertung wie vorgesehen nach einer Woche.

**Speicher (vm_stat free+inactive+purgeable):** MacBook Pro **3.28 GB, Druckstufe 2**, Mac Mini
**9.45 GB, Druckstufe 1**. Der MacBook ist gegenüber der Radar-Messung von 04:57 (3.61 GB,
Stufe 1) eine Stufe hochgegangen. Kein Meldekriterium, aber der Wert, an dem das Lauf-Gate
greifen würde.

**Meldeentscheid: keine Mail.** Kein einziges der sieben Kriterien erfüllt, und der einzige
Befund, der nach Handlungsbedarf aussah — die steigende Verbrauchsreihe des Radars — ist als
Messfehler nachgewiesen und entwarnt. Letzte gesendete Mail bleibt **27.07.2026 21:45**.

## 2026-07-30 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:15:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 23.07. | 2.88 | 48.31 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 |
| 30.07. (bis 07:15) | 1.81 | 72.12 | 0.44 | 14.53 |

Kombiniert teuer: 28.07. **10.51 Mio**, 29.07. **11.42 Mio**, 30.07. bis 07:15 **2.25 Mio**.
Kriterium (b) nicht erfüllt: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio.

**Messgrenze offen ausgewiesen:** der 23.07.-Wert des MacBook Pro steht heute bei 2.88 statt
3.87 wie im Eintrag vom 29.07. Ursache ist wie immer die mtime-Vorfilterung über das
7-Tage-Fenster, die den ältesten Tag nur teilweise erfasst. Vergleichbar sind heute die Tage
24.07. bis 30.07.

**Blockade-Status: SAUBER.** Strukturelle Prüfung (isApiErrorMessage / type=error /
apiErrorStatus 429 in Verbindung mit einem Limit-Textmuster): **0 Ereignisse im 36-h-Fenster**
auf beiden Stationen (MacBook Pro 74 Dateien gescannt, Mac Mini 19). Kein 5-Stunden-Limit, kein
Wochen-Limit. Kriterien (a) und (c) nicht erfüllt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:55 bis 07:07 (88
Assistant-Turns, 87 Werkzeugaufrufe) und hat die Briefing-Mail nachweislich versendet: im
Postausgang rj@ liegt «Logbuch-Radar 30.07.26: UBS-Blockade nach 32 Tagen gelöst, drei weitere
Punkte geschlossen», 30.07. 07:07:15, dazu der Commit `9906f997`. `mahnwesen-verzugscheck`
(fällig 08:05), `zahlungsabgleich-check` (08:22) und `hub-chef-taeglich` (08:38) waren zum
Messzeitpunkt noch nicht fällig; ihre letzten Läufe vom 29.07. erreichten ihr Deliverable
vollständig (hub-chef mit Briefing-Mail, die beiden bexio-Checks bestimmungsgemäss ohne Mail,
da read-only und nur bei Befund meldend). Kriterium (d) nicht erfüllt.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: jüngster RADAR.md-Eintrag **30.07. 06:57**
(Dateistand 07:02), und Sessions mit dem Opener `vollgas-chef-radar` liefen heute 04:57 und
05:15; `lastRunAt` 06:57, `nextRunAt` 07:57. Weit innerhalb der 12-h-Schwelle, Kriterium (e)
nicht erfüllt.

**Der Strukturbefund von gestern ist GEHEILT — das ist der wichtigste Befund dieses Laufs.**
Am 29.07. war der Destillat-Loop für jeden Taktgeber unadressierbar: `wissen/bauprodukte/` hatte
keine `training/PROGRAMM.md`, weshalb Priorität 4 der Mac-Mini-Nachtschicht ihn nicht fand und
alle vier Nachtläufe korrekt andere KBs wählten. Der Radar hat die Datei am 29.07. 09:57 angelegt
und um 12:57 den Nebeneffekt selbst erkannt und entschärft (die Struktur-Korrektur hatte die KB
über ihr CHANGELOG-Datum zur jüngsten von neun Kandidatinnen gemacht, also zur letzten in der
Rangfolge; Gegenmittel ist der Warnhinweis im Statuskopf, dass der Dateistand in `wiki/` und der
Inventarstand massgeblich sind, nicht das CHANGELOG-Datum). Wirkung nachgemessen: der
23:30-Slot hat den Loop erreicht und geliefert.

**Destillat-Aufsicht (vierte Erhebung) — Front und Ertrag bewegen sich beide wieder:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, Marker **147 `[-]` · 33 `[ ]` ·
  23 `[t]` · 15 `[x]`**. Gegenüber dem 29.07. wanderte **eine Position von `[t]` auf `[x]`**
  (triagiert zu destilliert); `inventar.sh --stand` weist 32 offene Dateien aus. Das Inventar
  trägt neu den Dateistand **29.07. 23:35** statt wie zwei Läufe lang den vom 28.07. 07:33.
- (b) Ertrag: **8 Artikel** (29.07.: 7), alle `emerging`, **0 `established`**. Neu ist
  `wiki/z-winkel-beschlag-schreinerei.md` aus `273 Schreinerarbeiten/Z_Winkel/110207_Z_Winkel.pdf`.
  Der Lauf hat ihn bewusst nicht in `arbeitsplatten-verbinder-schreinerei.md` integriert, obwohl
  gleiche Quelle und gleicher Tagesausdruck: offener Stahlwinkel gegen verdeckten Stossverbinder,
  andere Funktion, beidseitige Verlinkung gesetzt. Das ist eine saubere Abgrenzungsentscheidung,
  kein Doppeleintrag.
- (c) Delta-Null-Serie: **0.** Der Loop hat gearbeitet und geliefert. **Nebenbefund für den
  Radar:** der Lauf hat **keinen `outputs/`-Report** geschrieben, der jüngste ist weiterhin
  `2026-07-28_destillat-lauf4-281-bodenbelaege.md`. Dokumentiert wurde stattdessen über CHANGELOG
  und Lauf-Journal. Das ist kein Leerlauf, aber eine Lücke genau in dem Pfad, über den die
  Delta-Null-Serie gemessen werden soll: zwei Läufe in Folge ohne `outputs/`-Report würden bei
  reiner Report-Zählung wie Stillstand aussehen. Wer die Serie künftig prüft, muss CHANGELOG und
  Journal mitlesen oder der Loop muss den Report wieder schreiben.
- (d) Stückkosten: **erstmals sauber je Lauf messbar, nicht mehr nur als Hub-Obergrenze.** Seit
  dem 29.07. trägt das Lauf-Journal `cost_usd` je Lauf. Der Destillat-Lauf vom 29.07. 23:30 kostete
  **3.81 USD** und brachte **einen** neuen Artikel, also **3.81 USD je Artikel**. Damit ist die
  seit dem 28.07. vorgemerkte Zuordnungslücke geschlossen; die bisherige Kennzahl «rund 5.3 Mio
  Token je Artikel» war eine Obergrenze über den ganzen Hub und ist als Massstab abgelöst.
  Vergleichswerte derselben Nacht aus dem Journal: `baurecht-buch-training` Run 70 3.45 USD,
  `grobkosten-training` Run 20 4.03 USD, Mittags-Slot `projekt-lessons` 2.28 USD.
- Spec-Gate: `specs/bauprodukte-spec.md` (28.07. 01:33) liegt vor, hängt nicht.
- Korpus-Queue: **nicht komplett** (Korpus 1 von 4 in Arbeit), Kriterium (g) nicht erfüllt. Die
  Stand-Zeile der Queue nennt weiterhin «6 Artikel (Stand 28.07. 06:30)» und liegt damit jetzt
  zwei Artikel zurück.
- Kriterium (f) **nicht erfüllt**: Aufwand und Ertrag bewegen sich beide.

**Liefer-Delta der Lern-Loops (letzte 24 h, gemessen an Dateien und Journal, nie an `lastRunAt`):**
- 29.07. 13:34 Mittags-Slot: `projekt-lessons`, neuer Artikel
  `kispi-behoerden-zustaendigkeitswechsel-1171-26.md`, geliefert (2.28 USD). Der Lauf hat
  `bauprodukte` per Doppelarbeit-Guard bewusst übersprungen.
- 29.07. 21:11 `wissens-chef`, 100 Minuten, Bericht plus zwei Status-Hebungen auf `established`.
- 29.07. 23:28 `normen-training-nacht`, 57 Minuten, 363 Turns, `normen/wiki/REGISTER.md` nachgeführt.
- 29.07. 23:30 `wissens-destillat`, neuer Artikel (siehe oben).
- 30.07. 01:40 `twin-mail-training`, vier Facetten-Wikis geändert (stimme, beziehungsregister,
  arbeitsweise, fachsignatur).
- 30.07. 02:36 `baurecht-buch-training` Run 70, eine Korrektur am Artikel
  `fahrzeugabstellplaetze-und-parkierung.md` (Verdichtungs-Drift § 242 Abs. 2 PBG).
- 30.07. 03:45 `twin-fidelity-review`, Selbsttest und DNA neu kompiliert.
- 30.07. 05:39 `grobkosten-training` Run 20, Bring-Schuld eingelöst, `wiki/kennwerte.md` kalibriert.
- Summe geänderter Wiki-Artikel über alle KBs: **33 am 29.07., 17 am 30.07. bis 07:15.**
- **Kein Loop mit Tokenverbrauch ohne Liefer-Delta, keine Delta-Null-Serie.**

**Mittags-Slot 13:30 (befristeter Versuch seit 29.07.) — erste Lieferung belegt:** er hat am
29.07. um 13:34 gefeuert und einen neuen Artikel in `projekt-lessons` geliefert. Das Lauf-Gate hat
ihn **nie abgewiesen**; `gate-Macmini.log` trägt insgesamt vier Zeilen (drei Freigaben, eine
Abweisung `radar-negativ-mini` aus dem Selbsttest-Abweisungspfad mit künstlicher Schwelle).
Auswertung für Raphaels Entscheid weiterhin ab dem 05.08.

**Nebenbefund, kein Handlungsbedarf:** Speicher MacBook Pro zum Messzeitpunkt **4'436 MB**
verfügbar (frei 3'757 Seiten / inaktiv 277'313 / purgeable 2'826), Druckstufe **1** — deutlich
entspannter als die knappen 3'603 MB von gestern. Mac Mini **11'148 MB** verfügbar, Druckstufe
**1**. Beide über der 3-GB-Schwelle des Lauf-Gates.

**Meldeentscheid: keine Mail.** Keines der Kriterien (a) bis (g) ist erfüllt. Der einzige offene
Punkt ist der fehlende `outputs/`-Report des Destillat-Loops, und der gehört als Messpfad-Lücke
dem Radar, der alle drei Stunden läuft. Zuletzt gemailt wurde am **28.07. 07:02**
(«Morgenbriefing 28.07. ausgefallen — der NAS-Mount, nicht die Tokens»); dieser Befund ist
geheilt und fällt nicht erneut an.

## 2026-07-29 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:15:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 1.02 | 16.66 | 0.48 | 16.67 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. (bis 07:15) | 4.43 | 194.10 | 0.19 | 6.34 |

Kombiniert teuer: 28.07. **10.51 Mio**, 29.07. bis 07:15 **4.62 Mio**. Beides unauffaellig,
Kriterium (b) nicht erfuellt. Der 25.07.-Wert (kombiniert 53.1 Mio, ueber der 35er-Schwelle)
ist der am 27.07. 21:45 gemeldete Befund und faellt nicht erneut an.

**Messgrenze offen ausgewiesen:** der 22.07.-Wert steht heute tiefer als im Eintrag vom 28.07.
(MacBook Pro 1.02 statt 2.89). Ursache ist die mtime-Vorfilterung ueber 6 Tage: der aelteste Tag
im Fenster ist stets nur teilweise erfasst. Nur die Tage 23.07. bis heute sind vergleichbar.

**Blockade-Status: SAUBER.** Strukturelle Pruefung (isApiErrorMessage / type=error /
apiErrorStatus 429, kombiniert mit Limit-Textmuster) ueber beide Stationen: **0 Ereignisse im
24-h-Fenster** (MacBook Pro 101 Dateien gescannt, Mac Mini 10). Das juengste Ereignis ueberhaupt
liegt vor dem Fenster und gehoert zum bereits gemeldeten Wochenlimit-Ausfall vom 26./27.07.
Kriterien (a) und (c) nicht erfuellt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:54 bis 07:07, 188 Zeilen,
und hat die Briefing-Mail nachweislich versendet: im Postausgang rj@ liegt «Logbuch-Radar
29.07.26: Rechnung RE-00100 von der Kreditorenstelle retourniert», 29.07. 07:07:26, dazu der
Commit `3ffe933c`. `hub-chef-taeglich` (faellig 08:38), `mahnwesen-verzugscheck` (08:05) und
`zahlungsabgleich-check` (08:22) waren zum Messzeitpunkt noch nicht faellig; ihre letzten Laeufe
vom 28.07. erreichten ihr Deliverable vollstaendig. Kriterium (d) nicht erfuellt. Damit ist der
am 28.07. gemeldete Radar-Ausfall geheilt: das Morgenbriefing steht wieder.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: juengster RADAR.md-Eintrag 29.07. 04:20
(Dateistand 04:15), und eine Session mit dem Opener `vollgas-chef-radar` lief heute 07:05,
`lastRunAt` 06:57, `nextRunAt` 07:57. Weit innerhalb der 12-h-Schwelle, Kriterium (e) nicht erfuellt.

**Liefer-Delta der Lern-Loops (Nachtschicht Mac Mini, vier Slots):**
- 22:30 `energie-training` Run 118 geliefert (sechs Destillate, FAQ-Stand 183, Commit `6e2bf77d`).
- 23:30 `immobilienbewertung` geliefert (T-Eidgenossen-Rendite 0.39 % aus SNB-Quartalsheft 2/2026,
  seit Run 51 offen). Er hat `grobkosten` und `immobilienbewertung`-Trainingslauf bewusst
  uebersprungen, weil beide Register um Pause gebeten hatten. Genau so soll das laufen.
- 02:30 **gescheitert**, Exit 2 nach 47 s, drei Versuche, leeres Ergebnisfeld. Das ist der vom
  Radar um 04:20 gefundene und behobene `claude-run.sh`-Wrapper-Fehler, kein neuer Befund.
- 05:30 geliefert (KB `firmengruendung-ch`, Kapitalband Art. 653s bis 653v OR am Fedlex-Volltext
  verifiziert, neuer Artikel). Der Wrapper-Fix greift also nachweislich im Echtbetrieb.
- Kein Loop mit Tokenverbrauch ohne Liefer-Delta, keine Delta-Null-Serie.

**Destillat-Aufsicht (dritte Erhebung) — die Front steht seit 24 Stunden, aber nicht aus Leerlauf:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, Marker **147 `[-]` · 33 `[ ]` ·
  24 `[t]` · 14 `[x]`**. Gegenueber dem 28.07. 07:44 **unveraendert**; das Inventar
  `skills/wissens-destillat/training/bauprodukte-inventar.md` traegt bis heute den Dateistand
  28.07. 07:33.
- (b) Ertrag: **7 Artikel, alle `emerging`, 0 `established`** — ebenfalls unveraendert. Die beiden
  am 28.07. 23:45 committeten Dateien `dachbegruenung-systeme.md` und `bkp-261-aufzuege.md` sind
  **keine neuen Artikel**, sondern Korrekturen des `wissens-chef` Run 19 an bestehenden (BKP-224/288-
  Aufteilung nach SIA 312, Fassungsvorbehalt SN 521500/C4:2019). Ohne diese Unterscheidung haette
  die Erhebung zwei Artikel Fortschritt gemeldet, den es nicht gab.
- (c) Delta-Null-Serie: **0.** Der Loop hat nichts Leeres produziert; er hat gar nicht gearbeitet.
- (d) Stueckkosten: fuer 29.07. **nicht definiert** (0 neue Artikel). Fuer 28.07. 10.51 Mio teuer /
  2 neue Destillat-Artikel = **~5.3 Mio je Artikel**, weiterhin nur eine **Obergrenze ueber den
  ganzen Hub**: der grosse Teil des 28.07.-Verbrauchs ging an energie, normen, twin und
  immobilienbewertung, nicht an das Destillat. Die saubere Zuordnung je Session bleibt offen und
  ist seit dem 28.07. vorgemerkt.
- Spec-Gate: `specs/bauprodukte-spec.md` (28.07. 01:33) liegt vor, haengt nicht.
- Korpus-Queue: **nicht komplett**, Kriterium (g) nicht erfuellt. Die Stand-Zeile nennt weiterhin
  «6 Artikel (Stand 28.07. 06:30)» und liegt damit unveraendert einen Artikel zurueck.
- Kriterium (f) **nicht erfuellt**: es gab keinen Aufwand ohne Ertrag, weil es keinen Aufwand gab.

**Strukturbefund fuer den Radar (Handlungsbedarf, aber kein Mail-Kriterium): der Destillat-Loop
hat seit 24 Stunden keinen Taktgeber mehr, der ihn erreicht.** Er steht in der Registry als
«Manual only» und wurde faktisch von der Mac-Mini-Nachtschicht getaktet. Deren Prioritaetenliste
nennt ihn aber nirgends: Prioritaet 4 lautet «naechste faellige Trainingslektion unter
`wissen/*/training/PROGRAMM.md`», und **`wissen/bauprodukte/` hat weder einen `training/`-Ordner
noch eine `PROGRAMM.md`** (nachgemessen: nur baurecht, energie, grobkosten, immobilienbewertung,
normen, planungsgrundlagen, spec und wettbewerbs-dna haben eine). Sein Inventar liegt stattdessen
unter `skills/wissens-destillat/training/`, wo der Nachtschicht-Prompt nicht sucht. Deshalb haben
alle vier Nachtlaeufe korrekt andere KBs gewaehlt. Der am 28.07. als «einziger produktiver
Lern-Loop» bezeichnete Mechanismus ist damit nicht leergelaufen, sondern **unadressierbar
geworden**. Das ist die stillere Variante desselben Fehlers und im Log genauso wenig sichtbar wie
eine Delta-Null-Serie. Naheliegende Behebungen, Entscheid beim Radar bzw. bei Raphael: entweder
`wissen/bauprodukte/training/PROGRAMM.md` anlegen, damit Prioritaet 4 greift, oder den
Destillat-Loop als eigene Prioritaet in den Nachtschicht-Prompt aufnehmen, oder ihm einen eigenen
Cron geben. Der 13:30-Versuchsslot allein loest es nicht: er wuerde dieselbe Prioritaetenliste
abarbeiten.

**Mittags-Slot 13:30 (befristeter Versuch seit 29.07.):** in `ch.jans.nachtschicht.plist`
bestaetigt (vier Slots: 23:30, 02:30, 05:30, 13:30). Er hat heute noch nicht gefeuert. Das
Lauf-Gate hat ihn nie abgewiesen, weil es ihn noch nie gesehen hat: `gate-Macmini.log` enthaelt
insgesamt drei Zeilen (zwei Freigaben, eine Abweisung `radar-negativ-mini` aus dem
Selbsttest-Abweisungspfad). Auswertung fuer Raphaels Entscheid ab dem 05.08.

**Nebenbefunde, kein Handlungsbedarf:** (1) Die Journalzeile `diagnose-fix-bare` 29.07. 04:14
(rc=1, «OAuth session expired») ist laut Radar-Nachtrag `915df0c0` der eigene Testfehler des
Radars, nicht ein Stationsbefund; die MacBook-Pro-Anmeldung ist intakt. (2) Speicher MacBook Pro
zum Messzeitpunkt **3'603 MB** verfuegbar (frei 64 / inaktiv 3'539 / purgeable 0), Druckstufe **2**.
Ueber der 3-GB-Schwelle des Lauf-Gates, aber knapp; bei weiterem Absinken wuerden Laeufe auf
dieser Station abgewiesen.

**Meldeentscheid: keine Mail.** Kein einziges der Kriterien (a) bis (g) ist erfuellt, und der
einzige echte Handlungsbedarf (Destillat ohne Taktgeber) gehoert dem Radar, der alle drei Stunden
laeuft und dafuer die Zustaendigkeit hat. Zuletzt gemailt wurde am **28.07. 07:02** («Morgenbriefing
28.07. ausgefallen — der NAS-Mount, nicht die Tokens»); dieser Befund ist inzwischen geheilt.

## 2026-07-28 07:44 — STILL (keine Mail)

Zweiter Lauf desselben Tages, 46 Minuten nach dem 06:58-Lauf. Ursache erkennbar in der
Registry: der Task-Runner dieser Station stand zwischen ~01:10 und ~06:50 still und hat
danach den Rückstand in einem Nachhol-Schwung abgearbeitet (`heartbeat-daily`,
`zahlungsabgleich-check`, `konversations-log`, `twin-*` tragen alle `lastRunAt` 06:50–07:44).
Dieser Lauf misst deshalb nur das Delta zum 06:58-Eintrag.

Verbrauch teuer/total je Station (Mio), Messung 07:44:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 2.89 | 45.02 | 2.11 | 62.60 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. (bis 07:44) | 3.57 | 59.24 | 1.47 | 31.61 |

Kombiniert teuer 28.07. bis 07:44: **5.03 Mio** — unauffällig. Kriterium (b) nicht erfüllt
(27.07. kombiniert 26.50 Mio, darunter der Schwellwert 35; die Folgetag-Regel scheitert am
Nullwert des 26.07.).

**Blockade-Status: SAUBER.** 926 strukturelle Limit-Ereignisse im 24-h-Fenster (450 MacBook Pro,
476 Mac Mini), **alle** dem bereits gemeldeten Wochenlimit-Ausfall zugehörig, letztes Ereignis
27.07. 11:59 lokal (Reset 12:00). Seither keines. **Interaktive Sessions mit Limit-Ereignis: 0.**
Der eine auf dem Mac Mini als INTERAKTIV typisierte Treffer ist der Nachtschicht-Dispatch-Prompt
(«Nachtschicht-Zyklus Mac Mini, Fenster 18:00-09:00»), also ein Loop — die Heuristik erkennt
diesen Opener noch nicht; für den nächsten Lauf als Loop-Muster vorzumerken. Kriterium (c)
formal weiterhin im Fenster, aber identisch mit dem am 27.07. 21:45 UND 28.07. 06:58 gemeldeten
Befund → keine Wiederholungsmail.

**Operative Briefings:** `logbuch-radar` unverändert der um 06:58 gemeldete Stand — Lauf 06:50
abgebrochen, keine Briefing-Mail, `nextRunAt` steht auf 29.07. 06:54, also **kein automatischer
Nachholversuch; das Morgenbriefing 28.07. bleibt ohne Handeingriff verloren**. Bereits gemeldet →
keine zweite Mail. `hub-chef-taeglich` (fällig 08:38) und `mahnwesen-verzugscheck` (08:05) waren
zum Messzeitpunkt noch nicht fällig; `zahlungsabgleich-check` startete 07:43 im Nachhol-Schwung
und ist noch nicht beurteilbar — beim nächsten Lauf nachziehen.

**Radar-Herzschlag: LEBT.** RADAR.md jüngster Eintrag 28.07. 06:55, `lastRunAt` 06:55,
`nextRunAt` 07:57 — weit innerhalb der 12-h-Schwelle. Kriterium (e) nicht erfüllt.

**Leerlauf-Kontrolle:** kein Runner-Prozess auf beiden Stationen, Logs still seit 27.07. 22:14,
STOP-Macbookpro (27.07. 22:15) und STOP-Macmini (28.07. 01:09) stehen mit Begründung. Gewollte
Stilllegung, kein Leerlauf.

**Destillat-Aufsicht (zweite Erhebung, Delta zu 06:58):**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert. Aufschlüsselung neu erhoben:
  **146 `[-]` Spec-Ausschluss · 32 `[ ]` offen · 23 `[t]` triagiert · 13 `[x]` destilliert.**
  **Messfehler-Korrektur:** `inventar.sh --stand` weist als `dateien_offen` **nur** die `[ ]`
  aus. Der Wert steht seit 06:58 unverändert auf 32 — nicht weil die Front steht, sondern weil
  Lauf 4 zwei bereits triagierte Dateien abgearbeitet hat (`[t]` → `[x]`, die beiden
  Terrazzo-Quellen). Die eigentliche Destillier-Arbeit passiert im Schritt `[t]` → `[x]` und ist
  in `dateien_offen` unsichtbar. **Ab sofort ist `[x]` die Fortschrittsgrösse** (13, aus 11 vor
  Lauf 4 abgeleitet über den Lauf-4-Report), nicht `dateien_offen`.
- (b) Ertrag: **7 Artikel** (+1 seit 06:58): neu `terrazzo-kunststein-bodenbelaege.md`
  (28.07. 07:33). Alle 7 `emerging`, 0 `established`.
- (c) Delta-Null-Serie: **0** — vier Läufe (04:30 Inventar+Artikel, 05:30 Kurator/Verifikation,
  06:30 BKP 273, 07:30 BKP 281), jeder mit messbarem Ergebnis. Keine Rücktaktung fällig.
- (d) Stückkosten: 5.03 Mio teuer / 7 Artikel = **~0.72 Mio je Artikel** (06:58: ~0.52). Der
  Anstieg stammt überwiegend aus dem Nachhol-Schwung der Nicht-Destillat-Tasks um 07:43 und aus
  zwei Frühwarnungsläufen, nicht aus teurerer Destillat-Arbeit. Wie am 06:58 vermerkt bleibt der
  Wert eine **Obergrenze**; ein reiner Destillat-Preis braucht eine Zuordnung je Session — als
  Verbesserung für den nächsten Lauf vorgemerkt.
- Spec-Gate: `specs/bauprodukte-spec.md` (28.07. 01:33) liegt vor — hängt nicht.
- Korpus-Queue: **nicht komplett** (bauprodukte in Arbeit) → Kriterium (g) nicht erfüllt. Die
  Stand-Zeile in `KORPUS-QUEUE.md` nennt noch «6 Artikel (Stand 28.07. 06:30)» und ist damit einen
  Artikel im Rückstand — Nachführung ist Sache des Destillat-Loops, nicht dieser Aufsicht.

**Strukturbefund für den Radar (kein eigenes Kriterium, keine Mail):** Der Destillat-Loop lief
heute Nacht **viermal, obwohl der VOLLGAS-Runner auf beiden Stationen stillsteht**. Treiber ist
`ch.jans.nachtschicht` (launchd, Mac Mini) im Stundentakt — nicht der Runner. Die Angabe in der
Task-Registry, der Loop werde «ausschliesslich vom VOLLGAS-Endlos-Runner» getaktet, trifft damit
nicht zu. Das ist genau die dritte Feuerstelle aus Rule 260727 (Registry · Runner · launchd);
hier **benigne**, weil sie Artikel produziert statt Tokens zu verbrennen — aber die Beschreibung
gehört an die Realität angeglichen, damit eine spätere Stilllegung nicht wieder an einem
übersehenen Taktgeber scheitert. Zur Kenntnis an den Leerlauf-Wächter.

**Meldeentscheid: KEINE Mail.** Kein Kriterium neu erfüllt; (c) und (d) sind wortgleich mit dem
Befund, der heute 06:58 und gestern 21:45 bereits gemailt wurde. Letzte Mail: 28.07. 06:58.
**Nächste Mail** erst bei neuer Kontingent-Erschöpfung, blockierter interaktiver Sitzung,
einem weiteren ausgefallenen Briefing (insbesondere `hub-chef-taeglich` 08:38) oder wenn der
Destillat-Loop Tokens ohne Ertrag verbraucht.

## 2026-07-28 06:58 — GEMELDET (Mail an rj@ gesendet)

Verbrauch teuer/total je Station (Mio), Messung 06:57:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. (bis 06:57) | 1.80 | 27.93 | 1.31 | 26.86 |

Korrektur zum Eintrag 27.07. 21:45: die dort genannten Tageswerte (MacBook 14.36, Mini 6.04)
waren Zwischenstaende der 21:45-Messung; der volle Tag 27.07. schliesst bei 18.73 / 7.77.

**Blockade-Status: SAUBER.** Strukturelle Pruefung (isApiErrorMessage / type=error /
apiErrorStatus 429 + Limit-Text) ueber 30 h: 1'129 Ereignisse, ALLE dem bereits gemeldeten
Wochenlimit-Ausfall zugehoerig, letztes Ereignis 27.07. 11:59 lokal (Reset 12:00). Seither
kein einziges. **Interaktive Sessions mit Limit-Ereignis: 0** — alle 1'129 waren SCHEDULED.
Kriterium (c) formal erfuellt (Erschoepfung lag im 24-h-Fenster), aber identisch mit dem am
27.07. gemeldeten Befund → keine Wiederholungsmail dafuer.

**MELDEGRUND war Kriterium (d) — operatives Briefing ohne Deliverable:**
`logbuch-radar` startete heute 06:51, fand `/Volumes/daten` nicht (Startup-Hook meldete den
Mount als fehlend), versuchte `ensure-nas-mounted.sh` und brach nach drei Schritten ab
(Session c3346ea5, 20 Zeilen, Ende 06:53). Keine Briefing-Mail. Registry hat `nextRunAt`
bereits auf 29.07. 06:54 weitergestellt → **kein automatischer Nachholversuch**, das
Morgenbriefing 28.07. ist ohne Handeingriff verloren. Der Mount war um 06:56 wieder da
(SMB-Flatter, Rule 260725), ein Lauf von Hand ginge durch. Ursache damit ausdruecklich
NICHT Tokens — anderer Fehlertyp als am 27.07.
`hub-chef-taeglich` (08:35) war zum Messzeitpunkt noch nicht faellig; `mahnwesen-verzugscheck`
und `zahlungsabgleich-check` liefen am 27.07. abends durch.

**Radar-Herzschlag: LEBT WIEDER.** RADAR.md juengster Eintrag 28.07. 06:55, dazu eine laufende
`vollgas-chef-radar`-Session (255e38ad, 06:57). Der am 27.07. gemeldete Aufsichtsausfall
(vier Tage ohne Lauf) ist behoben. Kriterium (e) nicht erfuellt.

**Leerlauf-Kontrolle:** Runner auf BEIDEN Stationen bewusst gestoppt (STOP-Macbookpro 27.07.
22:20, STOP-Macmini 27.07. 22:15, je mit Begruendung und Rueckkehr-Bedingung). Logs stehen
seit 27.07. 22:14 still, kein Prozess laeuft. Das ist gewollte Stilllegung, kein Leerlauf.

**Destillat-Aufsicht (erste Erhebung nach Schritt 5b):**
- (a) Fortschritt: Korpus `bauprodukte`, Sektionen 37/37 inventarisiert, 214 Dateien
  inventarisiert, **32 offen**. Erster Messpunkt — ab morgen gegen diesen Wert vergleichen.
- (b) Ertrag: **6 Artikel** in `wissen/bauprodukte/wiki/` (+ INDEX + QUESTIONS), alle heute
  zwischen 04:38 und 06:32 geschrieben: dachbegruenung-systeme, pu-beschichtung-fassade,
  erco-lichtplanung-grundlagen, bkp-261-aufzuege, chromstahltreppe-oberflaechen,
  arbeitsplatten-verbinder-schreinerei. Status: 6x `emerging`, 0x `established`.
- (c) Delta-Null-Serie: **0** — alle drei Laeufe (04:30 Inventar+Artikel, 05:30 Kurator,
  06:30 BKP 273) haben geliefert. Keine Ruecktaktung faellig.
- (d) Stueckkosten: 3.11 Mio teuer (beide Stationen, bis 06:57) / 6 neue Artikel =
  **~0.52 Mio je Artikel**. VORBEHALT: der Tag enthaelt auch twin-mail, twin-fidelity,
  normen und wissens-chef — der Wert ist eine Obergrenze, nicht der reine Destillat-Preis.
  Ab morgen als Reihe fuehren.
- Spec-Gate: `specs/bauprodukte-spec.md` liegt vor (28.07. 01:33) — Gate haengt nicht.
- Korpus-Queue: NICHT komplett (bauprodukte «naechster», 32 Dateien offen) → Kriterium (g)
  nicht erfuellt.

**Strukturbefund (mitgemeldet, kein eigenes Kriterium):** Der Destillat-Loop ist als
`Manual only` angelegt mit dem Vermerk «getaktet wird der Loop ausschliesslich vom
VOLLGAS-Endlos-Runner»; der Runner steht auf beiden Stationen still. Dass die STOP-Dateien
liegen bleiben, ist laut Eintrag «28.07. — ENTSCHEID Raphaels» eine **bewusste** Entscheidung
(«Der Runner startet erst auf Raphaels Wort»), KEIN vergessener Vollzug. Der beobachtbare
Befund bleibt trotzdem: die drei Laeufe dieser Nacht kamen NICHT vom Runner, sondern von der
Mac-Mini-Nachtschicht, die die Aufgabe ad hoc aufgriff — obwohl der Runner als «einziger
Feuermechanismus» konzipiert ist. Das ist dieselbe Klasse von Drittmechanismus wie die
launchd-Jobs (Rule 260727, Nachtrag 28.07.): der Loop feuert aus einer Quelle, die im Entwurf
nicht vorgesehen ist. Solange der Runner ruht, haengt der Ertrag an dieser Zufallsquelle.

KORREKTUR zur gesendeten Mail: dort ist dieser Punkt als «Rueckkehr-Bedingung erfuellt,
vollzogen wurde sie nicht» formuliert — das liest sich wie ein Versaeumnis und ist insofern
unpraezise, der Halt ist gewollt. Die Empfehlung selbst (Runner auf Raphaels Wort freigeben)
deckt sich exakt mit dem hinterlegten Entscheid und bleibt unveraendert gueltig. Keine
Korrekturmail — der Handlungsvorschlag aendert sich nicht.

**Naechste Mail:** nicht fuer denselben Befund. Erst wieder bei neuer Kontingent-Erschoepfung,
bei blockierter interaktiver Sitzung, bei erneut ausgefallenem Briefing, bei Delta-Null-Serie
im Destillat oder wenn die Korpus-Queue komplett meldet.

## 2026-07-28 — ENTSCHEID Raphaels: der Runner bekommt eine eigene Lern-Aufgabe

Beantwortet die Grundsatzfrage vom 27.07. («neue Aufgaben oder Runner ausbauen?»): **neue
Aufgabe.** Raphael will «eine schlagkräftige AI auskristallisieren» aus dem Wissen, das auf
dem Server liegt — über MD-Dateien in ein Wiki, nach der Karpathy-Spec-Methode, mit dem
idealen Modell je Phase. Umgesetzt als Skill `wissens-destillat`.

**Warum das die richtige Füllung ist.** Die 15 bestehenden KBs (1'662 MD) melden reihum
Delta Null — ihr Rohmaterial ist aufgebraucht, darum lief der Runner leer. Das unerschlossene
Wissen liegt NEBEN dem Hub, auf demselben NAS: `03 Bauprodukte_BKP` (37 Gewerke nach BKP),
`04_Buero/02_Projekte` (22 abgewickelte Projekte), `04_Buero/10_Referenzenbibliothek`,
`02_Architektur_Archiv` (23 Themensektionen). Der Runner bekommt also nicht irgendeine
Beschäftigung, sondern die einzige, die noch echtes Delta erzeugt.

**Modell je Phase** (Rule 260719, «Minimum Viable Model»): Phase 0 Inventar = bash, null
Tokens · Phase 1 Triage = Haiku 4.5 · Phase 2 Destillat = Sonnet 5 · Phase 3 Verifikation,
Promotion, Kuratierung = Opus 5 in der Runner-Session selbst. Die teure Stufe macht
ausschliesslich das, wofür sie da ist: Belege prüfen, Widersprüche auflösen, Status heben.

**Kein zweiter Taktgeber** (Rule 260727): der Task `wissens-destillat` ist AD-HOC angelegt
(kein Cron). Einziger Feuermechanismus ist der Endlos-Runner; `destillat` steht neu in dessen
`INCLUDE_RE`. Der Runner fährt damit genau EINEN Loop — verifiziert durch Nachbau der
Auswahllogik.

**Gebaut:** `skills/wissens-destillat/` (SKILL.md, KORPUS-QUEUE.md, tools/korpus.conf,
tools/inventar.sh, tools/destillat-lauf.sh), KB-Skelett `wissen/bauprodukte/`, Phase 0
getestet (37 Sektionen erfasst, 134 Dateien inventarisiert, idempotent).

**Diese Frühwarnung ist neu die Ertragskontrolle** (Schritt 5b): sie misst Front-Fortschritt,
Artikelertrag, Delta-Null-Serie und Stückkosten je Artikel. Neue Meldegründe (f) Tokens ohne
Wissenszuwachs in 48h und (g) Queue komplett. Damit kann der Loop nicht mehr still Geld
verbrennen, ohne dass es am nächsten Morgen sichtbar ist.

**Noch NICHT vollzogen — bewusst:** die STOP-Dateien beider Stationen bleiben liegen. Der
Runner startet erst auf Raphaels Wort:
`rm /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP-Macbookpro` (analog `-Macmini`).
Der erste Lauf schreibt dann nur die Korpus-Spec und endet — Spec-Gate vor Destillat.

## 2026-07-27 22:25 — UMSETZUNG (Freigabe Raphael: «Empfehlungen umsetzen, Leerlaeufe abschalten»)

Bei der Umsetzung kam die eigentliche Ursache des Totalausfalls ans Licht — sie war in der
Mail von 21:45 noch nicht bekannt und wiegt schwerer als die dort genannten drei Punkte.

**Ursache: DOPPELLAUF.** Der Endlos-Runner fuhr in JEDEM Zyklus (rund stuendlich) genau die
fuenf Loops, die bereits einen eigenen, bewusst gedrosselten Scheduled Task haben:
baurecht-buch-training (Task: woechentlich), normen-training-nacht (2x taeglich),
twin-fidelity-review (1x), twin-mail-training (2x), wettbewerbs-dna-training (2x). Zwei
Mechanismen dahinter:
1. Der laufende Runner-Prozess (PID 66891, gestartet 25.07. 19:22) hielt `EXCLUDE_RE` im
   Speicher — die spaeteren Filter-Erweiterungen erreichten ihn nie.
2. Der Runner liest nur das SKILL.md-Frontmatter, nicht den Registry-Zustand. Registry-seitig
   deaktivierte Loops (immobewertung-training seit 26.07.) liefen im Runner weiter.

**Ausgefuehrt:**
- `vollgas-chef-radar` neu gefasst und frisch armiert (Takt 50 */3): neu LEERLAUF-WAECHTER mit
  3x-/5x-Delta-Null-Schwellen, Wochen- statt nur 5h-Kontingentblick, Selbstkontrolle auf
  verpasste eigene Laeufe. Zwei Defekte im alten Prompt behoben: er wies `git commit/push`
  ueber den SMB-Mount an (Verstoss gegen Rule 260726, jetzt `nas-commit-now.sh`) und wertete
  ein volles Fenster unabhaengig vom Arbeitsinhalt als Erfolg. Der reparierte Radar hat noch
  im selben Lauf selbst gehandelt (immob-Ausschluss im Runner ergaenzt, 22:07).
- `wettbewerbs-dna-training` deaktiviert (wartet auf Richtungsentscheid Raphaels).
- `normen-training-nacht` von 2x auf 1x taeglich zurueckgenommen (Loop meldet Inventar als
  inhaltlich komplett, offen nur zwei Lignum-Dokumente).
- `immobewertung-training` war bereits registry-deaktiviert; zusaetzlich mit `immob` im
  Runner-Filter abgesichert (sonst haette der naechste Neustart ihn wiederbelebt und den
  One-Time-Task `immobewertung-marktpuls-260901` vorzeitig gefeuert).
- `baurecht-buch-training` neu in `EXCLUDE_RE` — der woechentliche Task bleibt, der stuendliche
  Runner-Zusatzlauf faellt weg.
- Runner auf BEIDEN Stationen stillgelegt (STOP-Macbookpro, STOP-Macmini, je mit Begruendung
  und Rueckkehr-Bedingung in der Datei). Mac Mini: alle dortigen Loops tragen `enabled: false`,
  der Runner drehte seit Stunden leer. MacBook Pro: nach der Filter-Bereinigung meldet er
  «Keine Trainings-Tasks gefunden» (verifiziert 22:14:45, PID 77522) — es bleibt nichts, was
  nicht schon getaktet laeuft.
- `vollgas-fruehwarnung` erweitert: prueft neu, ob die operativen Briefings ihr Deliverable
  erreicht haben, ob der Radar ueberhaupt einen Herzschlag hat (Sessions, nicht nur `enabled`)
  und ob ein Runner leer dreht.
- Zwei neue Rules: 260727 «Kein zweiter Taktgeber» und 260727 «Leerlauf-Waechter».

**Wichtig:** Das ist KEINE Drosselung des Hubs. Alle Lern-Loops laufen ueber ihre Scheduled
Tasks weiter (twin-mail 2x, twin-fidelity 1x, normen 1x, baurecht woechentlich, wissens-chef 1x).
Stillgelegt ist nur der zweite, ungetaktete Feuermechanismus.

**Offene Grundsatzfrage an Raphael:** Soll der Endlos-Runner neue, eigene Lern-Aufgaben
bekommen (dann definieren und die STOP-Dateien entfernen), oder bleibt die Lern-Arbeit
dauerhaft bei den getakteten Tasks (dann Runner + Supervisor ganz ausbauen)?

## 2026-07-27 21:45 — GEMELDET (Mail an rj@ gesendet)

Verbrauch teuer/total je Station (Mio):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 2.89 | 45.02 | 2.11 | 62.60 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 14.36 | 379.50 | 6.04 | 132.25 |

**Blockade-Status: HART.** Wochenlimit («You've hit your weekly limit · resets 12pm
Europe/Zurich») von 26.07. 00:53 bis 27.07. 12:00 lokal (~35 h) vollständig erschöpft,
beide Stationen. Rund 2'000 Fehlversuche MacBook Pro, ~2'700 Mac Mini — Tagessumme
26.07. exakt 0.00 Mio produktive Tokens auf beiden Stationen.

**Interaktive Sessions:** 0 menschlich getippte Sitzungen mit Limit-Ereignis nachweisbar
(strukturelle Prüfung über isApiErrorMessage/apiErrorStatus 429, Session-Typisierung über
erste User-Eingabe). Kriterium (a) im engen Wortlaut also NICHT erfüllt.

**Betroffen war stattdessen der operative Betrieb:** `logbuch-radar` (04:55) und
`hub-chef-taeglich` (06:39) brachen heute früh nach dem ersten Arbeitsschritt ab, ohne
Briefing-Mail — das Morgenbriefing 27.07. fiel aus. `mahnwesen-verzugscheck` und
`zahlungsabgleich-check` liefen durch.

**Zweitbefund (P1):** `vollgas-chef-radar` ist alle 3 h getaktet und enabled, lastRunAt
aber 25.07. 19:47 — seit über zwei Tagen kein Lauf; RADAR.md steht seit 25.07. 21:55
still. Die Aufsicht hat den 35-h-Ausfall deshalb nirgends gemeldet. Kriterium (c) war
darum nicht messbar.

**Kriterium (b):** kombinierter teurer Tagesverbrauch 25.07. = 53.1 Mio (weit über
18 Mio), 26.07. jedoch 0.00 (weil blockiert) — zwei Folgetage formal nicht erfüllt.

**Meldeentscheid:** trotz formal nicht erfüllter Einzelkriterien gemeldet — ein 35 h
leeres Wochenkontingent mit ausgefallenem Morgenbriefing ist der Sachverhalt, den diese
Frühwarnung verhindern soll. Kein Drossel-Vollzug (das entscheidet Raphael); Mail enthält
`touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP` als Option.

**Nächste Mail:** nicht für denselben Befund. Erst wieder bei neuer Erschöpfung, bei
blockierter interaktiver Sitzung oder wenn der Radar weiterhin tot ist.
