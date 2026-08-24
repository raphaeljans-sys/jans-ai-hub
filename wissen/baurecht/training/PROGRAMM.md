---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-08-23 (Run 104)
---

# Trainingsprogramm — Buch-Lernen Baurecht-Harness

**Ziel:** Das Standardwerk **Fritzsche/Boesch/Wipf/Kunz, «Zuercher Planungs- und Baurecht»,
Band 1+2** (6. Aufl. 2019) zum **integralen Expertenwissen** des Baurecht-Harness machen —
sodass jede baurechtliche Frage und jeder Bericht auf diesem Fundus aufsetzt und mit
**Band/Kapitel/Seite** belegt antwortet. Die schiere Menge (1550 S. / 780 Doppelseiten) wird
ueber wiederkehrende Laeufe in zitierbare Destillate und verdichtete Wiki-Artikel ueberfuehrt.

## Lernkurve: anfangs haeufig, dann ausduennend (verbindlich)

Damit der Wissenszuwachs schnell anlaeuft, ist die Frequenz **degressiv**:

| Phase | Zeitraum | Frequenz | Fokus |
|-------|----------|----------|-------|
| **1 — Aufbau** | erste ~4 Wochen | **taeglich** | Erschliessung P1-Kapitel (14,16,15,17,20,6,7), max. Tempo |
| **2 — Vertiefung** | danach ~6 Wochen | **alle 2 Tage** | restliche Kapitel + Querverlinkung Wiki |
| **3 — Festigung** | dauerhaft | **woechentlich** | Anwendungs-Drills, Aktualisierung, Luecken |

Die Frequenz wird ueber den Scheduled Task `baurecht-buch-training` gesteuert; beim
Phasenwechsel die `cronExpression` anpassen (taeglich `0 7 * * *` → alle 2 Tage `0 7 */2 * *`
→ woechentlich `0 7 * * 1`). Den Phasenstand unten im Tracker fuehren.

## Umfang pro Lauf — drei feste Bloecke

1. **TRANSFER (Pflicht):** **8-15 Doppelseiten** (= 16-30 Buchseiten) aus dem aktuellen
   Prioritaets-Kapitel (`curriculum.md`, Reihenfolge) lesen und in ein Kapitel-Destillat unter
   `buecher/band-<n>/<kap>-<slug>.md` ueberfuehren. Echte Seitenzahl aus der Reader-Fussnote
   uebernehmen, `seiten-inventar.md` auf `[x]` setzen + Destillat verlinken.
2. **VERDICHTUNG (Pflicht):** aus den neuen Destillaten **mindestens 1 `wiki/`-Themenartikel**
   neu schreiben oder schaerfen (mit `[[backlinks]]`, Status heben), und `wiki/QUESTIONS.md`
   um neu beantwortete/aufgeworfene Fragen nachfuehren.
3. **ANWENDUNG / DRILL (Pflicht):** **1 Anwendungsfall** durchrechnen oder eine
   Selbst-Prueffrage beantworten (siehe «Trainingsmodelle») — der Lern-Transfer, der aus
   Wissen Koennen macht. Ergebnis in `outputs/` ablegen.

## Trainingsmodelle (wie der Harness praeziser wird)

Nicht nur lesen — **anwenden und pruefen**. Jeder Lauf nutzt mindestens eines:

- **A · Frage→Beleg-Drill:** Nimm eine Frage aus `wiki/QUESTIONS.md` oder eine typische
  Buerofrage und beantworte sie **nur** mit Buchbeleg (Band/Seite/§). Fehlt der Beleg → als
  Wissensluecke markieren und im naechsten TRANSFER gezielt schliessen.
- **B · Fall-Nachrechnung:** Realer JANS-Fall (z.B. Dachausbau Wangen) — rechne die
  einschlaegige Groesse (AZ, Mehrflaeche, Gebaeudehoehe, Abstand) Schritt fuer Schritt mit
  Formel + § vor; vergleiche mit dem Buch-Beispielfall.
- **C · Selbsttest (Karteikarte):** Aus jedem neuen Destillat 2-3 Q/A-Paare bilden und in
  `training/drills.md` sammeln; alte Karten stichprobenartig wiederholen (spaced repetition).
- **D · Gegenprobe/Adversarial:** Eine soeben gegebene Antwort kritisch hinterfragen — stimmt
  der Paragraph? gilt er noch (amtlicher Volltext)? gibt es Gegenpraxis? Korrektur dokumentieren.
- **E · Quervernetzung:** Neues Wissen mit bestehenden Wiki-Artikeln + amtlichen Volltexten
  (`raw/*_amtlich_zh_*.md`) verknuepfen; Widersprueche in `QUESTIONS.md`.

## Ablauf eines Laufs (immer gleich)

1. **Stand lesen:** `training/curriculum.md` (naechstes P-Kapitel), `buecher/seiten-inventar.md`
   (offene Shots), `buecher/INDEX.md`, `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **TRANSFER:** 8-15 Doppelseiten lesen (Read mit dem Screenshot-Pfad; Dateinamen aus dem
   Inventar). Pro Kapitel ein Destillat fuehren/erweitern (Format siehe `buecher/CLAUDE.md`).
   Quelle treu, **nichts erfinden**, eigene Einordnung als «Anwendungs-Transfer JANS» markieren.
3. **VERDICHTUNG:** `wiki/`-Artikel + `wiki/INDEX.md` + `wiki/QUESTIONS.md` nachfuehren.
4. **ANWENDUNG:** ein Trainingsmodell (A-E) ausfuehren, Ergebnis in `outputs/`.
5. **Register:** `seiten-inventar.md` Status, `curriculum.md` Status, `buecher/INDEX.md` Abdeckung.
6. **Output:** `outputs/<JJJJ-MM-TT>_buch-runN.md` — welche Seiten distilliert, welcher Wiki-
   Artikel gewachsen, welcher Drill, was offen, **was als naechstes**.
7. **CHANGELOG** (`wissen/baurecht/CHANGELOG.md`) ergaenzen (neueste zuoberst).
8. **Sichern:** Repo committen + pushen (Rules `git-auto-push` / `sync-kanonische-quelle`).

## Leitplanken (Qualitaet)

- **Nie erfinden** (§, Zahl, Schwellenwert) — Unsicheres bleibt `speculative` + Vermerk
  (Rule `identifikatoren-verifizieren`).
- **Seitentreue:** echte Buchseite belegen (nicht die geschaetzte Inventar-Seite).
- **Kanton ZH:** das Werk ist Zuercher Recht; SZ-Faelle nur sinngemaess, immer kennzeichnen.
- **Kompoundieren:** jeder Lauf baut auf den vorigen; Destillate/Wiki wachsen, nicht duplizieren.
- **Brandschutz (Kap. 18)** nur Querverweis auf Skill `brandschutz` (kein Doppelaufbau).
- **Echte Umlaute ae/oe/ue → ä/ö/ü, Schweizer Hochdeutsch, kein ß.**
- **Grep-Toleranz bei Buchstaben-Paragraphen (Pruefregel Modell D, seit Run 47):** der amtliche
  ZH-Volltext schreibt Buchstaben-Paragraphen **mit Leerschlag** («§ 160 a.26», «§ 160 b.26»).
  Ein `grep "160a"` liefert deshalb **0 Treffer, obwohl der Paragraph existiert**. Ein
  grep-gestuetzter Vorbefund «Paragraph existiert nicht» ist ohne Toleranz-Syntax **nicht
  belastbar** — immer `grep -E "§ ?NNN ?[a-z]"` verwenden, bevor ein Zitierfehler behauptet wird.
  Betrifft potenziell jeden §§-Check (§ 110a, § 123a, § 149a, § 87a, § 44a, § 338c …).
  Gegenprobe: die Paragraphensequenz um die Fundstelle herum lesen (Run 47: § 160a CONFIRMED,
  Vorbefund war Fehlalarm — anders als die echten Zitierfehler § 209f PBG und «§ 50a VRG»).
- **Fassungsstand kantonaler Erlasse pruefen (Pruefregel Modell D, seit Run 48):** kantonale Erlasse
  altern schneller als die KB. Run 48 fand, dass die **HWSchV seit 01.06.2026 aufgehoben** ist (→ WsG/WsV)
  und 2017 zusaetzlich **durchnummeriert** wurde (Nachtrag 95) — die KB zitierte totes Recht mit
  veralteten Nummern. Vor jedem Zitat eines kantonalen § deshalb auf zhlex pruefen: **(a) gilt der Erlass
  noch?** (b) **welcher Nachtrag ist die letzte materielle Fassung?** Ein `grep`-Treffer in einer alten
  raw-Datei belegt nur, dass der § **einmal** so lautete. Analog zur Grep-Falle: «existiert nicht» ist ohne
  Fassungspruefung nicht belastbar (Run 48: der Agent waere an der 2013er-Fassung beinahe zum Fehlschluss
  «§ 15m existiert nicht» gekommen).
- **Verweisnormen ZWEITEILIG auf Fassungsstand pruefen (Pruefregel Modell D, seit Run 71):** die
  Fassungspruefung aus Run 48 galt dem **Erlass** (gilt er noch? welcher Nachtrag?). Run 71 fand die
  Drift eine **Ebene darunter**: bei Verweisnormen (§ 3 BBV I → Anhang Ziff. 1; § 360 Abs. 3 PBG →
  Richtlinien/Normalien) ist der Erlass unveraendert in Kraft (BBV I: Nachtrag 133) und **nur die
  verwiesene Anhangsziffer** aufgehoben — Anhang Ziff. 1.2/1.21 BBV I per **1.9.2022** (RRB 8.6.2022,
  OS 77, 378, Fn. 84), womit die kantonale Verbindlicherklaerung der **SIA 181** ersatzlos wegfiel
  (heute Art. 32 Abs. 1 LSV, Bundesrecht). Ein Fassungsstand-Check auf Erlassebene haette **nichts**
  gefunden. Darum: bei jeder Verbindlich-/Beachtlicherklaerung und jedem Anhang-Verweis **beide
  Teile** pruefen — Verweisnorm UND verwiesene Ziffer. Zusatz: eine Fundstelle der Form «§ N Abs. NN»
  mit zweistelligem Absatz ist ein **Warnsignal** — im ZH-Recht meist eine verlesene **Anhangsziffer**
  («Anhang Ziff. 1.2» → «§ 3 Abs. 12»); Absatzzahl immer gegen die tatsaechliche Absatzzahl des
  Paragraphen halten.
- **VISUELLE Rechtsinformation ueberlebt die Textextraktion nicht (Pruefregel, seit Run 72):**
  In Revisionssynopsen, Rotdrucken und Auflagedokumenten traegt die **Grafikebene** einen Teil der
  Rechtsaussage — graue Hinterlegung («diese Bestimmung wirkt vor»), Rotdruck («geaendert»),
  Durchstreichung («aufgehoben»). `pdftotext`, Copy-Paste und jede LLM-Textextraktion liefern
  markierte und unmarkierte Bestimmungen **ununterscheidbar**; der extrahierte Text ist dann nicht
  die Quelle, sondern eine stillschweigend beschaedigte Fassung. Belegt an der Thalwiler
  Vorwirkungs-Synopse (Run 72): die Markierung ist ein Fuellrechteck (`sc 0.8509804` = #D9D9D9) im
  Content-Stream, kein Zeichen. Vorgehen: Fuellfarben aus dem Content-Stream lesen (pypdf
  `ContentStream`, CTM ueber q/Q/cm mitfuehren), gegen eine **unmarkierte Vergleichsfassung** als
  Grundrauschen abgleichen (dort war nur das Tabellen-Kopfband grau) und am **gerenderten Pixel**
  (`pdftoppm` + PIL) gegenpruefen, bevor eine Aussage in die KB geht. Zusatz: bei mehrspaltigen
  Synopsen die Spaltenzuordnung **wortweise** ueber die x-Position machen — `pdftotext` verschmilzt
  Tabellenzeilen ueber alle Spalten zu **einer** Zeile, und eine zeilenweise Zuordnung schreibt dann
  Werte der alten Fassung der neuen zu.
- **KOMMUNALE Klammerverweise sind kein Beleg (Prüfregel Modell D, seit Run 74):** die
  zweiteilige Fassungsprüfung aus Run 71 galt kantonalen Verweisnormen. Run 74 fand dieselbe
  Drift eine Ebene weiter unten, dort wo sie **häufiger** vorkommt: im kommunalen Recht. Steht in
  einer BZO oder einem Gemeinde-Merkblatt eine Fundstelle mit Klammer-Angabe («gemäss § X BBV II
  (Grundfläche …, Höhe …)»), sind **Fundstelle und geklammerter Inhalt getrennt** am amtlichen
  Erlasstext zu prüfen. Belegt an Art. 24 Abs. 3 BZO Thalwil: die Klammer nennt 2,50 m, § 18
  Abs. 1 BBV II nennt **3 m Gesamthöhe**; die Klammer sagt «keine Abstandsvorschriften», die Norm
  befreit nur **gegenüber grundstückinternen Gebäuden** (Grenzabstand bleibt!); die dritte
  Voraussetzung (Fassadenlänge 6 m inkl. Pergolen) fehlt ganz. **Der Erlass war dabei völlig
  intakt** (BBV II in Kraft, Nachtrag 097) — ein Fassungsstand-Check auf Erlassebene hätte nichts
  gefunden. Zusatzbefund: die abweichende Zahl war **kein eingefrorener Altstand** (Fassung 067
  lautete ebenfalls 3 m), also nie durch Alterung erklärbar. Warum kommunal häufiger: BZO-Texte
  laufen jahrzehntelang unverändert weiter, während die verwiesenen kantonalen Erlasse revidiert
  werden. **Und: ein Nullbefund gegen den kantonalen Bestand belegt nie, dass eine Zahl erfunden
  ist** — sie kann aus dem kommunalen Recht stammen (Selbstkorrektur an Run 73, siehe dortigen
  Korrekturvermerk).
- **Merkblatt-Aussagen dreiteilen (Prüfregel Modell A, seit Run 74):** in einem Gemeinde-Merkblatt
  stehen drei Dinge nebeneinander, optisch ununterscheidbar — **Gesetzeswortlaut**, **Auslegung**
  und **blosse Verwaltungspraxis**. Vor der Übernahme trennen. Belegt: das Thalwiler Merkblatt
  stellt Anhang § 49 Abs. 3 PBG als Legaldefinition der «besonderen Gebäude» dar, während die
  Norm eine **Kann-Ermächtigung an die Gemeinde** ist (ohne BZO-Regelung greift sie nicht;
  unmittelbar wirkt Anhang § 273 PBG mit 3,5 m Gebäudeabstand), und ergänzt drei Kriterien
  (nicht beheizt · nicht von einem anrechenbaren Raum zugänglich · Belichtung unter 10 %), die im
  Gesetzeswortlaut **nicht vorkommen**. Schwesterregel zur Wegleitungs-Falle aus Run 73 (dort:
  Masszahl ohne Rechtsgrundlage).
- **Register-Sweep nach jeder Korrektur (seit Run 47):** derselbe Fakt steht regelmaessig an
  5-6 Fundorten (Wiki, Destillat, `buecher/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`,
  `training/drills.md`). Eine Korrektur nur im Fliesstext laesst **Tabellen und Register
  divergieren** (Run 47: Gewaesserraum-Tabelle widersprach dem eigenen Fliesstext ueber 2 Laeufe
  hinweg; «Art. 32bis USG» ueberlebte in 4 Registern). Nach jeder Korrektur `grep -rn` ueber alle
  sechs Dateiarten laufen lassen.

## PRIORITÄT (d) — NEU 03.08.2026: Umgebungs-/Gestaltungsrecht vertiefen + Thalwil-Korpus

**Auftrag Raphael, 03.08.2026**, ausgelöst durch die Eingabe «Begleitbeschrieb Projektänderung
Bohlweg 3» vom selben Tag: die dort abgefragten Themen sollen im Loop **vertieft** werden, und
der Baurechts-/Reglemente-Ordner des Projekts ist als **zweite Korpus-Quelle** einzuarbeiten.

**Fahrplan:** `training/KORPUS-QUEUE-thalwil-reglemente.md` (8 Batches T1-T8, 243 Dateien,
Quelle auf dem Mac Mini, vom MacBook via `ssh mini` lesbar). Pro Lauf **ein** Batch.

### Die neun Themen, in denen der Harness sattelfest werden soll

Alle stammen aus der realen Eingabe; die Klammer nennt den Stand in der KB.

1. **Vorgarten- und Wegabstandsbereich** — Herrichtung als begrünter Vorgarten, Grünanteil,
   zulässige Befestigung (im Wiki nur über § 238a PBG gestreift; die kommunale Regel
   Art. 50 revBZO fehlt ganz).
2. **Grünflächenziffer** — Berechnung, was abgezogen wird (Plattenwege!), Verhältnis zu
   § 257 PBG (in [[nutzungsziffern]] nur kantonal, ohne Anrechnungspraxis).
3. **Pflichtbäume** — Anzahl, Sorte/lateinischer Name, Pflanz- und Kronengrösse, Erhalt und
   Ersatz (§ 238a Abs. 5 PBG **CONFIRMED** Run 71; kommunale Konkretisierung fehlt).
4. **Einfriedungen, Gartenmauern, Sichtschutz** — die Vierebenen-Prüfung Zonenrecht /
   Strassenrecht (§ 240 PBG, VErV §§ 23/26/27/28 — StrAV per 01.06.2020 aufgehoben) /
   Privatrecht (§ 178 EG ZGB, 1,5 m) / Einordnung
   (§ 238 Abs. 1 PBG). ~~**Kein eigener Wiki-Artikel** — die grösste Lücke; Batch T2.~~
   **ERLEDIGT (Run 73, 13.08.2026, Batch T2):** eigener Wiki-Artikel
   [[umgebungsgestaltung-und-einfriedungen]] mit der Vierebenen-Prüfung, der Konkordanz
   StrAV → VErV und der Wegleitungs-Falle (kommunale Masszahl ohne Rechtssatzcharakter).
   Offen bleibt nur das Rechtsprechungs-Register zu § 238 Abs. 1 PBG (Thema 6).
5. **Negative Vorwirkung revidierter BZO** — **ERLEDIGT (Run 72, 03.08.2026, Batch T1).**
   Eigener Wiki-Artikel [[negative-vorwirkung-und-bzo-revision]]: Anknüpfung § 234 PBG
   («durch den Gemeindevorstand **beantragte** planungsrechtliche Festlegung»), nur negative
   und nie positive Vorwirkung (VB.2008.00044) → in der Übergangsphase gilt die **jeweils
   strengere** Bestimmung; Dauer nach § 235 PBG (3 Jahre ab *Geltendmachung*, danach nur noch
   solange Rechtsmittel/Genehmigung das Inkrafttreten blockieren). Fall Thalwil ausgewertet
   inkl. artikelweiser Vorwirkungs-Karte (23 von 55 revBZO-Artikeln markiert).
6. **Einordnung § 238 Abs. 1 PBG als Verteidigungslinie** — «befriedigend, nicht optimal»,
   objektive Massstäbe, darf ein rechtskonformes Vorhaben nicht verhindern, Begründungspflicht
   des ablehnenden Entscheids. Rechtsprechungs-Register aufbauen.
7. **Besondere Gebäude** — 7-%-Regel (Art. 24 Abs. 1 BZO Thalwil, **geltende Fassung**,
   **CONFIRMED** Run 71 am amtlichen BZO-Volltext `raw/260607_amtlich_zh_bzo-thalwil.md`),
   Verhältnis zu § 273 PBG. **Revisionsvorbehalt (nachgetragen 31.07.2026, Wissens-Chef Run 22):**
   die Synopse vom 16.04.2025 überführt Art. 24 in Art. 45 revBZO «Klein- und Anbauten» und hebt
   die 7-%-Quote auf; Nachfolgeregel und deren Normierungsort sind ~~**offen** (Batch T1)~~
   **GEKLÄRT (Run 72, 03.08.2026)**. Beleg:
   `outputs/2026-07-31_bzo-thalwil-besondere-gebaeude-art24-art45.md`. Es gilt Arbeitsregel 2 der
   Korpus-Queue — beide Fassungen nebeneinander führen, jeweils die strengere. Der Wert bleibt
   also nachweispflichtig; hier wird verwiesen, nicht kopiert.
   **Auflösung Run 72** (am Wortlaut der September-Synopse, S. 40): Art. 24 Abs. 1 BZO (7 %)
   wird ersatzlos aufgehoben; die Bemerkungsspalte nennt als Grund «*Aufheben, da Grösse der
   Kleinbauten neu auf 50 m2 beschränkt ist und GFZ eingeführt wird*». Die «50 m²» sind **keine
   neue kommunale Regel**, sondern die **kantonale** Legaldefinition in **§ 2a Abs. 1/2 ABV**
   (Kleinbauten und Anbauten: Grundfläche höchstens 50 m², Gesamthöhe 4,0 m, bei Schrägdächern
   5,0 m) — verifiziert an `raw/260607_amtlich_zh_abv.md` Z. 50-63. Die Steuerung wandert damit
   von der kommunalen Flächenquote auf die kantonale Begriffsgrenze plus die neue kommunale
   **Grünflächenziffer** (Art. 31/Art. 50 revBZO). **Für die Praxis entscheidend: Art. 45 revBZO
   ist NICHT grau markiert** und wirkt also nicht vor — bis zum Inkrafttreten gilt Art. 24 BZO
   samt 7-%-Quote unverändert weiter.
8. **Näherbaurecht** — § 218 Abs. 2 / § 270 Abs. 3 PBG (beide **CONFIRMED** Run 71), plus die
   praktische Seite: Grundbuch, SBB als Nachbar, Aktualisierung bei Projektänderung. Batch T6.
9. **Strassenrecht Einfriedungen/Sichtbereiche** — massgeblich ist seit 01.06.2020 die
   **Verkehrserschliessungsverordnung (VErV, LS 700.4, RRB vom 17.04.2019)**; die
   Strassenabstandsverordnung (StrAV) vom 19.04.1978 ist **aufgehoben** (Dispositiv IV lit. a,
   Volltext liegt seit 03.08.2026 in `raw/260803_amtlich_zh_verkehrserschliessungsv.md`).
   **Nicht mehr beschaffen** (korrigiert 31.07.2026, Wissens-Chef Run 22 — der Auftrag war seit
   dem 30.07. gegenstandslos, der Nachfolgeerlass lag bereits in derselben KB).
   **ERLEDIGT (Run 73, 13.08.2026):** die Kernparagraphen sind erfasst und in
   [[umgebungsgestaltung-und-einfriedungen]] Ziff. 2 als **Konkordanz StrAV → VErV** geführt,
   inkl. der zwei materiellen Änderungen (Lichtraum § 20: 2,5 → **2,65 m** über Trottoirs/Fuss-/
   Velowegen; Kurveninnenseite § 28: feste 0,80-m-Grenze → blosse **Abstandsbefugnis**).
   Erfasst sind: § 23 Sichtbereiche dauernd freizuhalten ·
   § 26 Abstände von Mauern und Einfriedigungen (Abs. 1 lit. a offene Einfriedigungen, lit. b
   bis 0,8 m in allen Strassenbereichen, lit. c über 0,8 m nur an geraden Strecken und an der
   Kurven-Aussenseite; Abs. 2 bis 0,5 m bei fehlendem Fussgängerschutz) · § 27 Abstände von
   Pflanzen (4 m Bäume, 0,5 m Sträucher/Hecken, Reduktion auf 2 m bei Quartierstrassen/Ortsbild) ·
   § 28 Innenseite von Kurven · § 29 Befreiungen.
   **✅ geschlossen (Run 89, 23.08.2026):** Vorsprünge, Türen/Tore und Materialien an der
   Strassengrenze (§§ 10-12 StrAV) sind **ersatzlos entfallen**, keine VErV-Entsprechung —
   amtlich belegt über den VErV-Erläuterungsbericht (jede übernommene StrAV-Norm wird dort
   einzeln zugeordnet, §§ 10-12 fehlen). Einziger verbleibender Anknüpfungspunkt: Generalklausel
   § 240 Abs. 1 PBG / § 19 VErV. Details: [[umgebungsgestaltung-und-einfriedungen]] Ziff. 2,
   Abschnitt «§§ 10-12 StrAV». **Fassungsvorbehalt:** die raw-Datei
   ist die RRB-Erlassfassung, nicht die konsolidierte LS-Fassung; vor einem Zitat in einem
   ausgehenden Dokument gegen zhlex konsolidiert prüfen.

### Gemessene Lücken aus der Eingabe vom 03.08.2026 (Beleg, dass die Vertiefung nötig ist)

- **revBZO Thalwil ist nicht in der KB.** `raw/260607_amtlich_zh_bzo-thalwil.md` ist die
  **alte** Fassung; dort ist Art. 31 «Lärmempfindlichkeitsstufen», im Begleitbeschrieb
  dagegen «Grünflächenziffer». Die revBZO-Artikel waren aus der KB **nicht verifizierbar** —
  die Synopse liegt im Reglemente-Ordner (Batch T1).
- ~~**StrAV fehlt** als Volltext, obwohl sie die Einfriedungshöhen trägt.~~ → **erledigt
  03.08.2026:** die StrAV ist seit 01.06.2020 aufgehoben; der Nachfolgeerlass VErV liegt in
  `raw/260803_amtlich_zh_verkehrserschliessungsv.md` (Erlassfassung, nicht konsolidiert).
- **§ 178 EG ZGB** ist belegt (`raw/260725_amtlich_zh_egzgb.md` + Destillat Kap. 22:
  «tote Hecke/Holzwand/Mauer an Grenze bis 150 cm»), aber in **keinem** Wiki-Artikel geführt.

### Verhältnis zu den bestehenden Prioritäten

(d) tritt **neben** (a)-(c), nicht an deren Stelle. Reihenfolge pro Lauf weiterhin 1-2 Blöcke:
solange die Queue offen ist, ist **ein Batch aus (d) der Regelblock**, ergänzt um (b) oder (c)
nach Kapazität. Die Erst-Verifikations-Liste aus (c) ist mit Run 71 abgearbeitet.

## Fortschritts-Tracker

- **Phase:** **3 (Erhaltung/Drills + Modell-D-Volltextabgleich) — Start 2026-07-11 (Run 28).** Alle 23 Kapitel
  substanziell geschlossen (Kap. 18 = Querverweis `brandschutz`), Cron auf **woechentlich** (`30 7 * * 1`).
  Phase-3-Laeufe verifizieren `emerging`-Belege am amtlichen Volltext (`raw/*_amtlich_zh_*.md`) und heben sie
  auf `established`, statt neue TRANSFER-Doppelseiten zu lesen.
  - **PRIORITÄT (a) NEU EINGESTELLT — Wissens-Chef Run 17 (2026-07-27), Cross-KB energie ↔ baurecht:
    der WsG/WsV-Nachzug ist NICHT geschlossen.** Run 64 hat ihn als «bleibt geschlossen» verbucht;
    gesweept wurde aber nur der Suchbegriff **«HWSchV»**. Das WsG hebt in § 126 **zwei** Erlasse auf:
    «§ 126. Die nachstehenden Gesetze werden aufgehoben: a. **Einführungsgesetz zum
    Gewässerschutzgesetz vom 8. Dezember 1974**, b. Wasserwirtschaftsgesetz vom 2. Juni 1991»
    (Inkrafttreten Fn. 2: 1. Juni 2026; OS 81, 145). Der Chef hat § 126 und § 44 am amtlichen PDF
    `724.1_12.12.24_133.pdf` (zhlex, Nachtrag 133) selbst gegengelesen — die Aufhebung des
    **EG GSchG (LS 711.1)** ist damit belegt, die Zitate in dieser KB sind es nicht. **Auftrag:**
    an allen Fundorten einen Aufhebungsvermerk + Nachfolgenorm setzen, den Buchtext (6. Aufl. 2019)
    dabei quellentreu stehen lassen — genau das Muster des HWSchV-Nachzugs aus Run 48/50.
    **Erledigt-Kriterium:** `grep -rniI "EG GSchG\|EGSchG\|711\.1"` über `wiki/`, `buecher/` und
    `training/` liefert nur noch Stellen mit Aufhebungsvermerk.
    **ABGESCHLOSSEN (Stand 27.07.2026 23:45, Nachtschicht Mac Mini): alle 17 von 17 Fundorte
    korrigiert.** Die letzten 3 (reiner Verweis-Text, kein materieller Fehler) in diesem Lauf
    nachgezogen: `buecher/INDEX.md` (§ 45 EG GSchG → Aufhebungsvermerk + §§ 61/62 WsG ergänzt) ·
    `wiki/INDEX.md` (dito) · `training/curriculum.md` Zeile Kap. 12 Teil 4 (dito). Erledigt-Kriterium
    verifiziert: `grep -rniI "EG GSchG\|EGSchG\|711\.1"` über `wiki/`, `buecher/`, `training/` liefert
    nur noch Stellen mit Aufhebungsvermerk (Buchtext-Zitate, CHANGELOG/QUESTIONS-Historie und
    `raw/` unangetastet, wie vorgesehen). **In den vorangehenden Laeufen erledigt (12 Fundorte, alle
    mit Aufhebungsvermerk + Nachfolgenorm, amtlicher WsG-Volltext `724.1_12.12.24_133.pdf` selbst
    gezogen und gegengelesen):**
    `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` (7×, inkl. Frontmatter) ·
    `buecher/band-2/12-baureife-teil4-gebuehren-abfall-altlasten.md` (3×, inkl. Frontmatter) ·
    `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md` (2×) ·
    `buecher/band-1/03-erschliessung-landsicherung-teil1.md` (1×) ·
    `buecher/band-1/07-vorentscheid-auskuenfte-besondere-zustaendigkeiten.md` (1×).
    **Zuordnungen praezisiert (Wortlaut-Abgleich, nicht mehr nur "bekannt"):** § 8 → § 44 Abs. 1
    lit. a WsG (bestaetigt) · § 15 Abs. 2 → § 52 lit. a WsG (30-Einwohnerwerte-Kriterium wortgleich
    bestaetigt) · § 15 Abs. 3 (40-m-Nebenanlagen) → keine wortwoertliche WsG-Entsprechung gefunden,
    als offen markiert (nicht geraten) · § 35 → **§ 46 WsG** (nicht § 45 — Wortlaut "Gemeindevorstand
    setzt fest / Direktion genehmigt Grundwasserschutzzonen" ist deckungsgleich; praezisiert
    gegenueber der bisherigen Pauschalzuordnung §§35/36→§§45/46) · § 36 Abs. 2 (Grundbuch-Anmerkung)
    → keine exakte Entsprechung gefunden, offen markiert · § 45 (Anschlussgebuehren) → §§ 61/62 WsG
    · § 52 Abs. 1 (Rekurs) → § 122 Abs. 1 WsG (wortgleich bestaetigt) · §§ 13 ff./14 ff./16 →
    generisch §§ 45-48 bzw. §§ 49 ff. WsG zugeordnet (Abschnitts-Ebene, nicht Einzelparagraph-genau).
    **Bereits vom Chef erledigt:** `buecher/band-2/17-haustechnische-anlagen-teil3.md` (§ 8 → § 44
    Abs. 1 lit. a WsG) und `wiki/baureife-und-erschliessung.md` (Fassungs-Warnung gesetzt).
    **Bekannte §-Zuordnungen** (im Einzelnen noch zu verifizieren): § 8 → **§ 44 Abs. 1 lit. a WsG**
    (Wortlaut geprüft: «die der Nutzung von Boden, Untergrund oder Abwasser zur Gewinnung von Energie
    oder zur Kühlung dienen») · § 35 → **§ 46 WsG** (verifiziert 27.07.2026, NICHT § 45 — die frühere
    Pauschalzuordnung «§§ 35/36 → §§ 45/46» ist damit überholt und hier gestrichen; § 36 Abs. 2
    bleibt offen) · § 52 Abs. 1 (Rekurs) → § 122 WsG · §§ 14 ff. (Kanalisationspflicht) → **§§ 49 ff.
    WsG, Abschnitt C Siedlungsentwässerung** · § 45 (Anschlussgebühren) → **§§ 61/62 WsG**
    (beides am amtlichen Volltext bestätigt, Wissens-Chef Run 18, 27.07.2026: § 61 Abs. 1 lit. b
    «Gebühren für den Anschluss von Grundstücken, Bauten und Anlagen an die öffentliche Kanalisation»,
    § 62 Abs. 1 «kostendeckend und verursachergerecht»).
    **Bring-Schuld separat:** Ist die **KGSchV (LS 711.11)** ebenfalls aufgehoben? § 126 WsG hebt nur
    *Gesetze* auf; die Materie von § 35 KGSchV steht heute in § 92 WsV — das indiziert die Aufhebung,
    belegt sie aber nicht. An zhlex LS 711.11 prüfen. **Drittkanal (andere KB, nur melden):**
    `planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` Z. 32/34 führt «LS 711.1
    §§ 3/34/37» als geltende ÖREB-Rechtsgrundlage der Themen 130/132 — dort mitzuziehen.
  - **Run 81 (2026-08-23, Phase 3, QUESTIONS-Restposten, kein Agent-Fan-out):** Korpus-Queue
    2414 Thalwil (T1-T8) bleibt vollständig abgearbeitet (Run 79/80); dieser Lauf klärt den
    obersten verbleibenden QUESTIONS-Punkt (Run 78, T7): [[strassenabstand-zufahrten-
    vorteilsabgabe-sz]] stützte sich nur auf einen Merkblatt-Gesetzesauszug. Amtlicher
    Volltext StraG (SRSZ 442.110) + StraV (SRSZ 442.111) direkt von `sz.ch` bezogen
    (SRSZ-Stand 1.2.2025), alle 8 zitierten Paragraphen wortlautgeprüft. **2 Korrekturen**
    (beide bereits im Merkblatt-Auszug korrekt, bei der ersten Wiki-Verdichtung verloren):
    § 41 Abs. 1 lit. a StraG staffelt den Strassenabstand ohne Baulinie nach Strassenkategorie
    (6.00/4.00/3.00 m Haupt-/Verbindungs-/Nebenstrassen, § 4 StraG), nicht ein genereller
    6-m-Wert; § 28 Abs. 1/2 StraV fixiert die Vorteilsabgabe-Staffelung 3/4.5/5 % nur an
    Hauptstrassen, für Verbindungs-/Nebenstrassen legt der Bezirksrat/Gemeinderat die Höhe
    selbst fest (§ 28 Abs. 3 StraV). 6 von 8 Paragraphen CONFIRMED. Status
    **`emerging` → `established`**. **0 Halluzinationen, 2 echte Korrekturen, 1
    Statuserhöhung.** Report `outputs/2026-08-23_buch-run81.md`. **Nächster Schritt:**
    weitere QUESTIONS-Restposten (Frage B § 36 Abs. 2 EG GSchG, GSchV Anhang 4 Ziff. 12/13
    direkt am PDF lesen) oder Modell-D-Verifikation der ältesten `verifiziert`-Daten unter
    den `established`-Artikeln.
  - **Run 84 (2026-08-23, Phase 3, QUESTIONS-Zusatzbefund, kein Agent-Fan-out):** klärt den in
    T-09 offen gelassenen «Ungeklärten Zusatzbefund» (behauptete IVHB-Fristverlängerung
    26.01.2026 → 29.02.2028, keine Primärquelle auffindbar). Live-Primärquellenprüfung:
    zh.ch-Harmonisierungsseite sagt weiterhin unverändert «Geschäft noch in Beratung im
    Kantonsrat» (IVHB-Verlängerung **nicht beschlossen**); das reale Ereignis 26.01.2026 mit
    Zahl **1.3.2028** (nicht 29.02.2028) betrifft die **Umsetzung des Mehrwertausgleichsgesetzes
    (MAG)** in den Gemeinden — anderes Gesetz, gleiches Ausgangsdatum 1.3.2025, gleiche
    Zielgruppe, daher die Verwechslung in Sekundärquellen. Der ursprüngliche Hauptbefund
    (Ordnungsfrist ohne Sanktion) bleibt unverändert. `wiki/abstaende-und-hoehen.md` und
    `wiki/QUESTIONS.md` T-09 ergänzt. Report `outputs/2026-08-23_buch-run84.md`. **Nächster
    Schritt:** kein QUESTIONS-Restposten mehr ohne Raphael-Entscheid (T-08/T-10) oder externen
    behördlichen Akt (T-01 revBZO); alternativ Modell-D-Re-Verifikation der ältesten
    `verifiziert`-Daten unter den `established`-Artikeln, oder Rückkehr zum Standardwerk-
    Curriculum (P1-Restschuld gemäss `curriculum.md`).
  - **Run 83 (2026-08-23, Phase 3, Modell-D Fassungsstand-Check, kein Agent-Fan-out):** schliesst
    den Fassungsvorbehalt aus Run 73: [[umgebungsgestaltung-und-einfriedungen]] war gegen die
    2019er-RRB-Erlassfassung der VErV verifiziert, nicht gegen die konsolidierte LS-Fassung.
    Connector `recht-ch.mjs --erlass VErV` frisch gegen zhlex gelaufen (PATH-Fix noetig,
    `pdftotext` unter `/opt/homebrew/bin`) → Nachtrag 127, Fassungsstand 1.1.2025
    (`raw/260823_amtlich_zh_verv.md`). **1 echte Korrektur:** § 27 VErV wurde per RRB
    14.09.2022 (in Kraft seit 1.12.2024) neu gefasst (Innerorts/Ausserorts-Split 2 m/4 m statt
    einheitlich 4 m) und um § 27a (Verringerung) ergaenzt — fuer ein Thalwiler Innerorts-
    Projekt sinkt der praktisch massgebende Grundabstand von 4 m auf **2 m**. §§ 20/23/26/28/29
    VErV CONFIRMED, keine Drift. Artikel-Status `emerging` → **`established`**. Report
    `outputs/2026-08-23_buch-run83.md`. **Nächster Schritt:** letzter verbliebener
    `emerging`-Artikel ist [[negative-vorwirkung-und-bzo-revision]] (Run 72) — dort aber drei
    genuin offene Überwachungsfragen (Genehmigung/Inkrafttreten revBZO, aktualisierte Synopse,
    RB-Zitat-Flag), keine reine Fassungsstand-Verifikation; alternativ T-08 (Höhenzahl
    Kleinbauten Thalwil, Run 74) und T-10 (Fassungsstand-Warnhinweis Buch-Layer, Wissens-Chef
    Run 36) sind beide Entscheid-/Klärungsfragen an Dritte bzw. Raphael, nicht selbst zu lösen.
  - **Run 82 (2026-08-23, Phase 3, QUESTIONS-Restposten, kein Agent-Fan-out):** klärt Frage B
    aus Run 81s Vorschlag ab: enthält GSchV Anhang 4 Ziff. 12/13 ein Gegenstück zur
    Grundbuch-Anmerkung nach § 36 Abs. 2 EG GSchG? **Werkzeugbefund zuerst:** die
    Filestore-Domain `www.fedlex.admin.ch` liefert für GSchV/GSchG nur noch die
    JavaScript-App-Hülle (77'151 Byte, textlos) statt Volltext; funktionierender Ausweichweg
    ist dieselbe URL über `fedlex.data.admin.ch` (ohne `www`) mit einem exakt treffenden
    Konsolidierungsdatum — dokumentiert in `docs/referenz/fedlex-volltexte.md`, cross-KB
    relevant für `normen`/`energie`/`firmengruendung-ch`. **Sachbefund:** Volltextsuche
    «Grundbuch» über den gesamten 76-seitigen GSchV-Erlass (alle Artikel + Anhänge) ergibt
    null Treffer — Anhang 4 Ziff. 12/13 regelt nur die fachliche Zonen-/Areal-Ausscheidung,
    keine grundbuchliche Sicherung. Frage B damit abschliessend geklärt: § 36 Abs. 2 EG GSchG
    war ein rein kantonales Institut ohne Bundesrechtswurzel. Neuer Rohtext
    `raw/260823_amtlich_ch_gschv-anhang4.md`, kein neuer Wiki-Artikel (reines
    Negativergebnis). Report `outputs/2026-08-23_buch-run82.md`. **Nächster Schritt:**
    nächster offener QUESTIONS-Punkt ist «2026-08-18 (Wissens-Chef Run 36) — Prüflücke im
    BBV-I-Bereich des Buch-Layers».
  - **Run 74 (2026-08-17, Festigungsmodus, Priorität (d) Korpus-Queue Batch T4 + Priorität (b),
    kein Agent-Fan-out):** **Batch T4 (Merkblätter/Wegleitungen) erledigt** — auf Vorschlag von
    Run 73 vor T3 gezogen, weil in diesem Ordner ungeklärter Rechtscharakter steckt. Der Vorschlag
    hat sich bezahlt gemacht: **drei Neubefunde, keine Korrektur an bestehenden Wiki-Aussagen.**
    (1) **Die Klammer-Falle** — Art. 24 Abs. 3 BZO Thalwil und das Gemeinde-Merkblatt vom
    20.01.2022 geben § 18 Abs. 1 BBV II dreifach abweichend wieder (2,50 m statt **3 m**; «keine
    Abstandsvorschriften» statt Befreiung nur **gegenüber grundstückinternen Gebäuden**;
    6-m-Fassadenlänge fehlt). Die zweite Divergenz ist die gefährliche: der **Grenzabstand zum
    Nachbarn bleibt bestehen**, und der Satz steht in einem Merkblatt über den Grenzabstand.
    (2) **Der Fassungsstand-Check war zweiteilig nötig** — die BBV II ist völlig intakt (in Kraft,
    Nachtrag 097, zhlex 17.08.2026); die Drift sitzt im Inhalt des Verweises. Ein Check auf
    Erlassebene hätte nichts gefunden. Zusätzlich widerlegt: die 2,50 m sind **kein eingefrorener
    Altstand** — die eigens von zhlex beschaffte Fassung 067 (bis 01.03.2017) lautet ebenfalls
    «3 m», die Änderung war rein terminologisch. (3) **Anhang § 49 Abs. 3 PBG ist Ermächtigung,
    nicht Definition**; die Merkblatt-Zusatzkriterien (nicht beheizt · Belichtung < 10 %) stehen
    nicht im Gesetz. **Zwei neue Leitplanken** daraus (oben): «Kommunale Klammerverweise sind kein
    Beleg» und «Merkblatt-Aussagen dreiteilen». **Selbstkorrektur:** Run 73 hatte einem
    Claude-Erzeugnis erfundene Masse unterstellt («entsprechen keiner der beiden Grössen») — die
    10 m²/2,50 m stehen wörtlich in Art. 24 Abs. 3 BZO Thalwil; Korrekturvermerk im Run-73-Report
    gesetzt, das Verdikt bleibt im Ergebnis (falsche Anwendung auf Mauern) bestehen. Ergänzt:
    [[gebaeudearten-und-abstandssystem]] (neue Gebäudeart § 18 Abs. 1 BBV II + zwei Abschnitte),
    Destillat [[15-lage-von-gebaeuden-teil2d]] (Abs. 1 fehlte, Abs. 2 war erfasst), 2 Drill-Karten,
    QUESTIONS T-08/T-09/T-10. **Kein neuer Wiki-Artikel und kein neuer `raw/`-Volltext nötig** —
    der Bestand trug den Befund. Report: `outputs/2026-08-17_buch-run74.md`.
  - **Run 75 (2026-08-23, Festigungsmodus, Priorität (d) Korpus-Queue Batch T3, kein
    Agent-Fan-out):** **Batch T3 (Grundmasse + SBV W3 + Zonenplan) erledigt.** Kernbefund:
    die Art.-3-Grundmasse-Tabelle in `raw/260607_amtlich_zh_bzo-thalwil.md` ist **linearisiert
    und unbrauchbar** (Zeilen 682-918, Zahlen von ihren Zonen-Spalten getrennt) — **dieselbe
    Fehlerfamilie wie beim Zürich-Stadt-Fall Run 56.** Behoben nach demselben Muster:
    `oerebdocs.zh.ch/getDoc?docid=1296` frisch bezogen, `pdftotext -layout` neu extrahiert →
    `raw/260823_amtlich_zh_bzo-thalwil-grundmasse.md`, zusätzlich gegen die unabhängige
    Projektordner-Kopie derselben Erlassseite (Export 26.11.2024) gegengelesen — zeichengleich
    trotz abweichender Gesamtseitenzahl (19 vs. 21, reines PDF-Exportartefakt). Art. 20a
    (SBV W3/WG3) war im bestehenden Raw bereits korrekt lesbar, nur bestätigt, kein neuer
    Ingest. **Neue Sektion in [[zonenkonformitaet]]:** vollständige Thalwiler
    Grundmasse-Tabelle (W1-WG4), Art.-20a-Sonderregelung, Zonenarten-Legende aus dem
    Zonenplan (Rastergrafik selbst nicht textextrahierbar, Legende vollständig übernommen).
    Kein neuer Wiki-Artikel nötig. **Methodenbestätigung, kein neuer Fund:** die
    Linearisierungs-Falle aus Run 56 tritt an einer zweiten, unabhängigen Gemeinde-BZO auf —
    stützt den Methodenhinweis, vor jedem «Wert nicht auffindbar» bei mehrspaltigen
    Amtstabellen eine Layout-Neuextraktion zu versuchen. Report: `outputs/2026-08-23_buch-run75.md`.
  - **Run 76 (2026-08-23, Festigungsmodus, Priorität (d) Korpus-Queue Batch T5, kein
    Agent-Fan-out):** **Batch T5 (Einzelthemen: Kniestock, Massgebendes Terrain, Besonderes
    Gebäude, Fahrzeugabstellplätze, Fensterflächen, Spiel-/Ruhefläche, Baugespann,
    Wohnungserhebung) erledigt — 4 von 8 T5-Ordnern lieferten CONFIRMED-Bestätigungen ohne
    Wiki-Änderung, 4 lieferten echte Ergänzungen.** Kernbefund: das Kniestock-PDF ist kein
    Thalwiler Dokument, sondern ein Scan der Standardwerk-Seiten 1232 f. — identisch mit dem
    bereits am 2026-06-13 destillierten [[kap16-10_gebaeudedimensionen-harmonisierung]]
    (CONFIRMED); daraus folgt der Kreuzbefund, dass Thalwils eigenes Art. 25 BZO weiterhin die
    **alte** Drittel-/45°-Attikaregel führt, nicht die harmonisierte h/2-Regel — nachgetragen in
    [[zonenkonformitaet]]. Zwei echte Lücken geschlossen: die **Gewachsener-Boden-Definition**
    (überbaute/nicht überbaute Grundstücke, DLZ-Interpolationsbefugnis) aus dem bereits in
    Run 74 gelesenen, aber nicht vollständig ausgewerteten Messweise-Merkblatt →
    [[abstaende-und-hoehen]]; und die **Garageausfahrt-Neigung** (+3 %/-5 % innerhalb 6,0 m ab
    Strassengrenze) aus der Wegleitung BZO Thalwil Nachführung 2020, Ziff. 6 — ebenfalls bereits
    in Run 74 gelesen, dort aber nicht bis Ziff. 6 ausgewertet → [[fahrzeugabstellplaetze-und-parkierung]].
    Art. 24 Abs. 1/2 BZO (7-%-Deckel, 6-m-Grenzbau) aus dem Bestand ergänzt, um den in Run 74
    begonnenen Art.-24-Befund abzuschliessen → [[gebaeudearten-und-abstandssystem]]. Eine
    Thalwil-spezifische Unterlagenliste (Wegleitung für das Baugesuch, September 2004, bislang
    ungeprüft) als Anwendungsbeispiel → [[baubewilligungsverfahren]]. Eine unbelegte private
    Web-Recherche zu Fahrzeugbreiten **nicht übernommen** (keine Quelle/Norm). **Methodische
    Bestätigung:** wie in T2-T4 liegt die grösste Ausbeute im Cross-Check gegen bereits
    gelesene, aber nicht vollständig ausgewertete Quellen, nicht im T5-Ordnermaterial selbst.
    Kein neuer `raw/`-Volltext, kein neuer Wiki-Artikel, 5 bestehende Artikel geschärft.
    Korpus-Queue steht bei 5 von 8 Batches (T1, T2, T3, T4, T5 erledigt); offen T6-T8.
    Report: `outputs/2026-08-23_buch-run76.md`.
  - **Run 73 (2026-08-13, Festigungsmodus, Priorität (d) Korpus-Queue Batch T2 + Priorität (b),
    kein Agent-Fan-out):** **Die grösste gemessene Lücke der Priorität (d) ist geschlossen.**
    Neuer Wiki-Artikel **[[umgebungsgestaltung-und-einfriedungen]]** — Thema Nr. 4 der neun
    Zielthemen war bis heute «kein eigener Wiki-Artikel». Er trägt die **Vierebenen-Prüfung**
    (Zonenrecht § 238a PBG + BZO · Strassenrecht **VErV** gegen die Strassengrenze · Privatrecht
    §§ 169-179 EG ZGB gegen die Nachbargrenze · Einordnung § 238 Abs. 1 PBG), kumulativ und je
    die strengere Anforderung. **§ 309 Abs. 1 lit. h PBG** nennt Mauern und Einfriedigungen
    ausdrücklich und eigenständig als bewilligungspflichtig.
    **Priorität (b), zwei MATERIELLE Fassungsbefunde** — nicht bloss ein Nummernwechsel, und
    genau der Fall, den ein Fassungscheck auf Erlassebene verfehlt hätte: die vollständige
    Konkordanz **StrAV → VErV** zeigt, dass § 7 StrAV → **§ 26 Abs. 1 VErV** zwar wortgleich
    übernommen wurde (dessen Abs. 2, Abstand bis 0,5 m bei fehlendem Fussgängerschutz, ist neu),
    dass sich aber **§ 17 StrAV → § 20 VErV materiell änderte** (Lichtraum über Trottoirs, Fuss-
    und Velowegen **2,5 → 2,65 m**; Fahrbahngebiet unverändert 4,5 m) und dass **§ 28 VErV** die
    feste 0,80-m-Obergrenze an der **Kurveninnenseite** durch eine blosse **Abstandsbefugnis**
    ersetzt hat. Wer weiter «max. 0,80 m» schreibt, gibt eine offene Verhandlungsposition preis.
    Schliesst die seit Run 25 offene QUESTIONS-Frage «StrAV-Masszahlen» — sie war **falsch
    gestellt**, weil es keinen geltenden StrAV-Volltext mehr gibt.
    **Der wertvollste Befund stand in keinem Auftrag** (Muster wie Run 72): die Thalwiler
    «max. 1.40 m» für Gartenmauern längs Strassen und Wegen ist **kein Rechtssatz**. Die
    Wegleitung BZO (Nachführung 2020) führt sie unter der Überschrift «*Aufgrund fehlender
    Rechtsgrundlage weggelassene oder gelöschte Absätze, welche daher als Beurteilungsrichtlinie
    dienen*» — zusammen mit drei weiteren Sätzen desselben Status (Abgrabungen/Aufschüttungen
    «in der Regel nicht mehr als 1.5 m», Gestaltungs-/Bepflanzungsvorgaben, Stützmauern «auf die
    technisch notwendigen Minimalmasse»). Rechtsfolge: kein selbständiger Ablehnungsgrund, nur
    Auslegungshilfe im Rahmen von § 238 Abs. 1 PBG. Gefunden wurde er nur, weil die Zahl vor der
    Übernahme verifiziert wurde — sie steht in **keiner** der beiden BZO-Fassungen, und der
    Nullbefund wurde nicht als Halluzinationsbeweis genommen, sondern als Anlass, die Wegleitung
    beizuziehen (Leitplanke «ein leeres Ergebnis ist zuerst eine Aussage über das Werkzeug»).
    **T8 teilweise vorgezogen:** die drei Claude-Erzeugnisse zur Gartenmauer gegengelesen,
    **4 Fehler** (2× tote StrAV-Fundstelle, 1× überholtes Lichtraummass, 1× Rechtscharakter der
    1,40 m unterschlagen, dazu «Art. 2a ABV» statt «§ 2a ABV»), **davon keiner in die KB
    übernommen**. **0 Halluzinationen**, 2 neue Drill-Karten (beide am Fall Bohlweg 3),
    ~6 Fundorte gesweept. Report `outputs/2026-08-13_buch-run73.md`. **«Rückstand abgebaut»
    NICHT ausgerufen** — die Korpus-Queue steht bei **2 von 8** Batches. **Nächster Schritt:**
    Batch **T3** (Grundmasse + Sonderbauvorschrift W3 + Zonenplan) oder **T4** (Merkblätter/
    Wegleitungen) — für T4 spricht, dass der Wegleitungs-Befund dieses Laufs zeigt, wie viel
    Rechtscharakter-Klärung in diesem Ordner steckt.
  - **Run 72 (2026-08-03/04, Festigungsmodus, Priorität (d) Korpus-Queue Batch T1, kein
    Agent-Fan-out):** Erster Batch der Thalwiler Reglemente-Queue abgearbeitet — **BZO-Revision
    2025**. Beide Synopse-PDFs vom Mac-Mini-OneDrive gelesen; **die zwei Fassungen sind nicht
    identisch** (April 16.4.2025 «öffentliche Auflage/Anhörung/Vorprüfung» vs. September 5.9.2025
    «Fassung zur Negativen Vorwirkung», mit inhaltlichen Abweichungen) — massgebend ist die
    September-Fassung, angelegt als `raw/260803_amtlich_zh_bzo-thalwil-revision-synopse.md`
    (51 S., dreispaltig). **Neuer Wiki-Artikel [[negative-vorwirkung-und-bzo-revision]]**:
    § 234 PBG als Anknüpfung (nicht eine BZO-Übergangsbestimmung), nur negative/nie positive
    Vorwirkung (VB.2008.00044) → Strenge-Regel, Suspensivbedingung unzulässig/Sistierung zulässig,
    Verhältnismässigkeit (VB.2014.00627), Dauer § 235 PBG (Frist ab **Geltendmachung**, nicht ab
    Auflage). §§ 234/235 PBG wortgetreu gegen `raw/260607_amtlich_zh_pbg.md` Z. 2362-2372.
    **Fassungsstand-Befund (Priorität (b), kommunal):** die revBZO wurde am **14.06.2026** an der
    Urne mit **78.81 %** festgesetzt, ist aber **weder genehmigt noch in Kraft** — die
    Gesetzessammlung Thalwil führt weiterhin SR 700.1 BZO vom 11.12.2019 (in Kraft seit
    31.08.2024). Massgebend bleibt die alte BZO plus Vorwirkung; die Festsetzung hat die Vorwirkung
    nur auf den **zweiten Satzteil von § 235 PBG** gestellt. Auflage 16.05.–15.07.2025 bestätigt.
    **Methodischer Kern:** die Grau-Markierung («diese Bestimmung wirkt vor») ist eine reine
    Grafikinformation und überlebt keine Textextraktion; sie wurde aus dem PDF-Content-Stream
    ausgelesen (`sc 0.8509804` = #D9D9D9), gegen die April-Fassung als Grundrauschen abgeglichen
    (dort nur das Tabellen-Kopfband grau) und am gerenderten Pixel verifiziert. Ergebnis:
    **23 von 55 revBZO-Artikeln markiert**, Markierung **absatz-, teils zellengenau**. Zwei
    Befunde, die man ohne diese Auswertung falsch machen würde: aus **Art. 31** wirken nur
    Grünflächenziffer, Gebäudelänge **W2b** 25 m (statt 30 m) und die Streichung des
    Arealüberbauungs-Zuschlags vor (Höhenmasse steigen = milder = keine Vorwirkung), und
    **Art. 45 (Klein-/Anbauten) wirkt gar nicht vor**, während **Art. 50 (Umgebungsgestaltung)
    fast vollständig** vorwirkt (Vorgarten, Fällbewilligung ab Stammumfang 100 cm, ein Baum je
    500 m² aGF). **Offener PROGRAMM-Punkt 7 geschlossen:** die «50 m²», mit denen die Synopse die
    Aufhebung der 7-%-Quote begründet, sind die **kantonale** Legaldefinition **§ 2a Abs. 1/2 ABV**
    (verifiziert an `raw/260607_amtlich_zh_abv.md` Z. 50-63), keine neue kommunale Regel.
    **Neue Leitplanke:** visuelle Rechtsinformation überlebt die Textextraktion nicht (+ bei
    Synopsen Spaltenzuordnung **wortweise**, nie zeilenweise). 3 neue Drill-Karten, zwei davon am
    realen Fall Bohlweg 3. **Neu offen:** Genehmigung/Inkrafttreten (T-01), spätere Synopse-Fassung
    (T-02), Zitat-Flag «RB 1980 vs. 1998 Nr. 113» im Destillat [[12-baureife]] (T-03).
    **0 Halluzinationen.** Report `outputs/2026-08-03_buch-run72.md`. **«Rückstand abgebaut»
    NICHT ausgerufen** — die Korpus-Queue steht bei 1 von 8 Batches. **Nächster Schritt:**
    Batch **T2** (Umgebungsgestaltung/Gartenmauern/Vorgarten/Grünanteil) — er schliesst direkt an
    Art. 50 revBZO an und trifft die im PROGRAMM als grösste Lücke bezeichnete Nr. 4
    (Einfriedungen, kein eigener Wiki-Artikel).
  - **Run 71 (2026-08-03, Festigungsmodus, Priorität (c) Erst-Verifikation + Priorität (a) zwei
    beschaffbare Lücken, kein Agent-Fan-out):** [[grundlagen-planungs-baurecht]] gewählt — der
    **letzte** nie durch den Modell-D-Loop gelaufene Artikel (kein `verifiziert`-Feld, `emerging`
    seit 2026-06-30). Vollständiger Wortlautabgleich §§ 317/218 Abs. 2/270 Abs. 3/238 Abs. 1/320/
    328/360 Abs. 3 PBG gegen `raw/260607_amtlich_zh_pbg.md`, § 20 Abs. 1 lit. c VRG, § 3 + Anhang
    BBV I, Art. 32 Abs. 1 LSV, Art. 679 ZGB (Fedlex). **3 echte Zitierfehler korrigiert:**
    (1) **Art. 679 Abs. 2 ZGB mit invertierter Polarität** zitiert — Abs. 2 ist eine
    Anspruchs*beschränkung* («nur, wenn … die damals geltenden Vorschriften **nicht** eingehalten
    wurden»), die Regel trägt Abs. 1 i.V.m. Art. 684 ZGB (gleiches Muster wie Art. 164 GBV, Run 67);
    (2) **«§ 3 Abs. 12 BBV I» existiert nicht** (§ 3 hat 4 Abs.) — verlesene **Anhangsziffer 1.2**,
    und diese ist samt Ziff. 1.21 **per 1.9.2022 aufgehoben** (RRB 8.6.2022, OS 77, 378), womit die
    kantonale Verbindlicherklärung der **SIA 181** wegfiel (heute Art. 32 Abs. 1 LSV);
    (3) **§ 220 PBG als «Nebenbestimmungen» etikettiert** — amtlich «C. Ausnahmebewilligungen»,
    Nebenbestimmungen sind § 321 PBG. **2 Präzisierungen:** § 318 PBG trägt die intertemporale Regel
    nicht (nur Zuständigkeit; Grundsatz = Rechtsprechung VB.2012.00734, Kompressionsmuster wie
    § 253/§ 320 in Run 63); Unangemessenheit instanzenscharf (§ 20 Abs. 1 lit. c VRG im Rekurs vs.
    § 50 Abs. 2 VRG vor VGr). Status **emerging → established** — **damit trägt kein Wiki-Artikel
    dieser KB mehr ein fehlendes `verifiziert`-Feld.** Register-Sweep über Destillat, beide INDEX,
    `curriculum.md`, `drills.md`. **Priorität (a), zwei Lücken geschlossen:** (i) **KGSchV-Bring-
    Schuld beantwortet** — die **KGSchV (LS 711.11) ist per 01.01.2022 aufgehoben** (zhlex-
    Erlassseite: Aufhebungsdatum 01.01.2022, letzte Fassung Nachtrag 099), über vier Jahre vor dem
    EG GSchG; Aufhebungsvermerke an 6 Fundorten gesetzt, Nachfolgeerlass 2022 aber **noch unbelegt**
    (WsV enthält keine Aufhebungsklausel; § 92 WsV trägt die Erdwärme-Materie des § 35 KGSchV = Indiz,
    nicht Beleg). (ii) **P1 aus Wissens-Chef Run 18 geschlossen** — `raw/260803_amtlich_zh_wsg.md`
    und `raw/260803_amtlich_zh_wsv.md` angelegt (beide Nachtrag 133, in Kraft 01.06.2026); **§ 126
    WsG am eigenen Volltext gegengelesen**, Aufhebung EG GSchG + WWG jetzt KB-intern belegt; die zwei
    offenen §-Zuordnungen (§ 15 Abs. 3 40-m-Nebenanlagen, § 36 Abs. 2 Grundbuch-Anmerkung) sind an
    **beiden** Volltexten unauffindbar und bleiben ausdrücklich offen. **Neue Frage aufgeworfen:**
    ist SIA 380/1 noch teilverbindlich? (am geltenden BBV-I-Anhang nicht belegbar, Cross-KB an
    `energie`/`normen`). **0 Halluzinationen, 3 echte Fehler, 1 Fassungsstand-Drift, 2 Präzisierungen,
    1 Statuserhöhung, 2 Lücken geschlossen, 3 Fragen neu/offen.** 4 neue Drill-Karten.
    **Neue Leitplanke eingetragen:** Verweisnormen zweiteilig prüfen (Erlass UND Anhangsziffer altern
    getrennt) + Warnsignal «§ N Abs. NN» mit zweistelligem Absatz. Report
    `outputs/2026-08-03_buch-run71.md`. **«Rückstand abgebaut» weiterhin NICHT ausgerufen**
    (Leitplanke Run 48) — der Artikel galt vier Wochen als «vollständig erschlossen» und trug drei
    substanzielle Fehler, einen davon mit umgekehrter Rechtsfolge. **Nächster Schritt:** die
    Erst-Verifikations-Liste ist abgearbeitet; es beginnt ein **neuer Umlauf über die ältesten
    `verifiziert`-Daten** (`grep -h "^verifiziert:" wiki/*.md | sort`; älteste Kerne
    [[fahrzeugabstellplaetze-und-parkierung]] 2026-07-12, [[rechtsschutz-und-rechtsmittelverfahren]]
    / [[wohnhygiene-und-raumanforderungen]] 2026-07-12/13) — alternativ die drei neu offenen Fragen
    dieses Laufs.
  - **Run 68 (2026-07-27, Festigungsmodus, Priorität (c) Erst-Verifikation, kein Agent-Fan-out):**
    [[enteignung-und-entschaedigung]] gewählt (letzter der beiden nie durch den Modell-D-Loop
    gelaufenen `emerging`-Artikel, von Run 67 empfohlen). Vollständiger Wortlautabgleich aller
    14 PBG-Fundstellen (§§ 41-43a/62/64/65/102/103/119/122/165/202/212/214/235/346) gegen
    `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133) — **alle CONFIRMED, 0 Korrekturen.** AbtrG
    (LS 781) und EG ZGB §§ 183ff. waren bislang nur aus dem Buchzitat übernommen, nie live
    geprüft — beide erstmals frisch von zhlex.zh.ch geladen (neue Primärquelle
    `raw/260727_amtlich_zh_abtrg.md`, Erweiterung `raw/260725_amtlich_zh_egzgb.md` um
    §§ 180-183quater). **3 echte Zitierfehler gefunden und korrigiert:** (1) «gütliche
    Einigung» steht in § 29 AbtrG, nicht § 28 (§ 32 AbtrG verweist explizit auf «die in § 29
    vorgesehene gütliche Verständigung»); (2) die vier Schätzungskommissionen/-kreise stehen
    in §§ 33/34 AbtrG, nicht §§ 40/41; (3) der Zinsenlauf-Satz steht in § 183bis Abs. 3 EG ZGB,
    nicht § 183 (dieser ist seit 2011 aufgehoben). §§ 39/46/54/56 AbtrG sowie § 183ter/
    § 183quater EG ZGB CONFIRMED. AbtrG-Fassungsstand erstmals geprüft: Nachtrag 099 (aktuell,
    1.1.2018), keine neuere Revision trotz vom Buch (Stand 2019) vermerkter
    Revisionsbedürftigkeit (RRB 58/2005) — bis heute unumgesetzt. Register-Sweep: derselbe
    § 28-Fehler unabhängig auch in `buecher/band-1/09-rechtsschutz-teil2-ablauf-kosten-
    revision.md` gefunden und korrigiert. Status **emerging → established** angehoben,
    erstmaliges `verifiziert`-Feld ergänzt, `wiki/INDEX.md` Statusmarker nachgezogen. **0
    Halluzinationen, 3 echte Zitierfehler korrigiert, 1 Fassungsstand erstmals bestätigt.**
    3 neue Drill-Karten (2×A, 1×D). Report `outputs/2026-07-27_buch-run68.md`.
    **«Rückstand abgebaut» weiterhin NICHT ausgerufen** (Leitplanke Run 48). **Nächster
    Schritt:** [[grundlagen-planungs-baurecht]] als letzter verbleibender nie verifizierter
    `emerging`-Artikel — danach beginnt ein neuer Umlauf über die inzwischen ältesten
    `verifiziert`-Daten unter den `established`-Artikeln.
  - **Run 67 (2026-07-27, Festigungsmodus, Priorität (c) Erst-Verifikation, kein Agent-Fan-out):**
    [[nebenbestimmungen-und-reverse]] gewählt (von Run 66 empfohlen, eines von drei nie durch den
    Modell-D-Loop gelaufenen `emerging`-Artikeln). Vollständiger Wortlautabgleich §§ 320/321/326/
    73/100/101/244/360 PBG gegen `raw/260607_amtlich_zh_pbg.md`, §§ 30/31 VRG gegen
    `raw/260712_amtlich_zh_vrg.md`, § 16 Abs. 2 BBV I gegen `raw/260607_amtlich_zh_bbv1.md` —
    **alle CONFIRMED, 0 Korrekturen**, Fassungsstand PBG weiterhin Nachtrag 133. **2 echte Funde**
    bei den bisher nur sekundär belegten Bundesrechts-/VRG-Zitaten (gegen Fedlex/zhlex amtlich
    nachgeprüft): (1) **§ 10a VRG → § 10b VRG** — Fassungsstand-Drift, in Kraft seit 1.1.2026
    (Änderung 30.10.2023, OS Band 79: neuer § 10a VRG elektronische Benachrichtigung eingefügt,
    bisherige §§ 10a-10d VRG zu §§ 10b-10e verschoben, Begründungspflicht inhaltlich unverändert
    jetzt § 10b Abs. 1 VRG); (2) **Art. 164 GBV war mit invertierter Polarität zitiert** — korrigiert
    von «müssen nur angemerkt werden» auf amtlich korrekt «müssen NICHT angemerkt werden»
    (Fedlex `eli/cc/2011/667`, Übergangsausnahme von der erst 2012 mit Art. 962 Abs. 1 ZGB
    eingeführten Anmerkungspflicht) — vermutlich Transkriptionsfehler bei Ersterfassung Run 11,
    im Quell-Destillat markiert statt stillschweigend übernommen. Zusätzlich 1 Präzisierung:
    § 326 PBG regelt die Baubeginn-Sperre, nicht direkt die Vollstreckung (§§ 30/31 VRG). Status
    **emerging → established** angehoben, erstmaliges `verifiziert`-Feld ergänzt. Register-Sweep
    ueber `buecher/INDEX.md`, beide betroffenen Kap.-7-Destillate, `wiki/INDEX.md`,
    `training/drills.md`. **0 Halluzinationen, 1 Fassungsstand-Drift, 1 inhaltlicher Fehler,
    1 Präzisierung.** 2 neue Drill-Karten (2×D). Report `outputs/2026-07-27_buch-run67.md`.
    **«Rückstand abgebaut» weiterhin NICHT ausgerufen** (Leitplanke Run 48). **Nächster Schritt:**
    [[enteignung-und-entschaedigung]] oder [[grundlagen-planungs-baurecht]] als verbleibende
    nie verifizierte Priorität-(c)-Kandidaten.
  - **Run 66 (2026-07-27, Festigungsmodus, Priorität (a) Cross-KB-Nachtrag + Priorität (c)
    Erst-Verifikation, kein Agent-Fan-out):** **Priorität (c):**
    [[baurechtlicher-vorentscheid-und-voranfrage]] gewählt — einer von vier Wiki-Artikeln, die
    seit ihrer Erstellung **nie** durch den Modell-D-Loop gelaufen waren (kein `verifiziert`-Feld,
    `emerging` seit 2026-06-21). Vollständiger Wortlautabgleich §§ 322/323/324 PBG (Vorentscheid-
    Kernnormen, Gültigkeit/Rechtswirkung), § 310 Abs. 3 PBG (Baubefugnis-Nachweis-Ausnahme),
    § 315 PBG (Zustellungsbegehren) und § 213 PBG (Provokationsverfahren Schutzwürdigkeit) gegen
    `raw/260607_amtlich_zh_pbg.md` — **alle CONFIRMED, 0 Korrekturen, 0 Halluzinationen**,
    Fassungsstand weiterhin Nachtrag 133. Status **emerging → established** angehoben,
    erstmaliges `verifiziert`-Feld ergänzt, Register-Sweep in `wiki/INDEX.md` (Status-Marker
    korrigiert). **Priorität (a):** der seit Wissens-Chef Run 15 (25.07.2026) offene Cross-KB-
    Befund zum PBG-Revisionsstrang «Erleichtertes Bauen im Bestand» (§ 220a E-PBG,
    Mehrlängenzuschlag-Aufhebung §§ 21/23/24 ABV) bearbeitet: als Vorentwurfsstatus (keine
    Rechtswirkung, keine Kantonsratsvorlage per 24.07.2026) in [[ausnahmebewilligung-und-
    bestandesschutz]] und [[abstaende-und-hoehen]] nachgetragen, mit Querverweis auf die
    führende KB `planungsgrundlagen`. **0 Halluzinationen, 1 Statuserhöhung, 1 Cross-KB-Befund
    geschlossen.** 2 neue Drill-Karten (1×A, 1×D). Report `outputs/2026-07-27_buch-run66.md`.
    **«Rückstand abgebaut» weiterhin NICHT ausgerufen** (Leitplanke Run 48). **Nächster
    Schritt:** die verbleibenden drei nie verifizierten `emerging`-Artikel
    ([[enteignung-und-entschaedigung]], [[nebenbestimmungen-und-reverse]],
    [[grundlagen-planungs-baurecht]]) als nächste Priorität-(c)-Kandidaten.
  - **Run 65 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[ausnahmebewilligung-und-bestandesschutz]] gewählt (letzter Check Buch-Run
    45/46, 2026-07-15 — von Run 64 empfohlen). Vollständiger Modell-D-Wortlautabgleich §§ 218/219/
    220 (Abs. 1-3), § 357 (Abs. 1/4/5), § 307 (Abs. 1/2), § 321, § 101, §§ 318/320 PBG gegen
    `raw/260607_amtlich_zh_pbg.md` — **alle CONFIRMED, 0 Korrekturen**, Fassungsstand weiterhin
    Nachtrag 133. Sekundärprüfung § 49 Abs. 3 PBG (Höhe 4 m/5 m «Besonderes Gebäude»): Zitat trifft
    nur auf die Anhang-Fassung zu, Nuance bereits an anderer Stelle der KB ([[abstaende-und-hoehen]])
    korrekt geführt, kein Register-Sweep-Nachzug nötig. **0 Halluzinationen, 0 Korrekturen.** 2 neue
    Drill-Karten (2×D). Report `outputs/2026-07-27_buch-run65.md`. **«Rückstand abgebaut» NICHT
    ausgerufen:** der Fassungsstand-Check bleibt Daueraufgabe (Leitplanke Run 48), und weitere
    Priorität-(c)-Kandidaten mit älterem `verifiziert`-Datum sind noch nicht durchlaufen.
    **Nächster Schritt:** Fassungsstand-Sammelcheck der verbleibenden, noch nie live gegen zhlex
    geprüften kantonalen Erlasse fortsetzen oder nächster Priorität-(c)-Kandidat nach ältestem
    `verifiziert`-Datum (`grep -h "^verifiziert:" wiki/*.md | sort`).
  - **Run 64 (2026-07-27, Festigungsmodus, Priorität (a) Negativsweep + Priorität (b)
    Fassungsstand-Check + Priorität (c) Re-Verifikation, kein Agent-Fan-out):** **Priorität (a):**
    vollständiger KB-weiter Sweep nach HWSchV/Hochwasserschutz/Gewässerabstand — 0 neue stale
    Fundorte seit Run 50, WsG/WsV-Nachzug bleibt geschlossen. **Priorität (b):** VRG (LS 175.2)
    als Fassungsstand-Kandidat gewählt (nie seit Beschaffung 12.07.2026 live gegen zhlex
    geprüft). Fund: Basisquelle war auf **Nachtrag 129** eingefroren, aktuell **Nachtrag 133**
    (zhlex `history-entry-0`). Frisches PDF Wort für Wort gegen alle 7 zitierten VRG-Paragraphen
    (§§ 8/9/10c/15/29a/30/31) geprüft — **CONFIRMED, 0 materielle Änderung**. **Priorität (c):**
    [[rechtsschutz-und-rechtsmittelverfahren]] (letzter Check Run 46, 2026-07-15) adversarial
    re-verifiziert — Run-44-Korrektur zur Nicht-Erstreckbarkeit der 30-Tage-Vernehmlassungsfrist
    (§ 26b/§ 12 VRG) bestätigt unverändert bei Nachtrag 133. Register-Sweep: Fassungsstand-Vermerk
    in [[widerrechtliche-bauten-und-sanktionen]] und [[bauausfuehrung-und-baukontrolle]] (beide
    zitieren dieselbe VRG-Rohquelle) nachgezogen. **0 Halluzinationen, 1 Fassungsstand-Drift
    entdeckt und als materiell folgenlos dokumentiert, 0 neue inhaltliche Fehler.** 2 neue
    Drill-Karten (2×D). Report `outputs/2026-07-27_buch-run64.md`. **«Rückstand abgebaut» NICHT
    ausgerufen:** der Fassungsstand-Check ist eine Daueraufgabe (Leitplanke Run 48) — weitere,
    bisher nie live geprüfte kantonale/kommunale Erlasse können noch existieren, und die
    Priorität-(c)-Liste ist nicht vollständig durchlaufen ([[ausnahmebewilligung-und-
    bestandesschutz]], zuletzt 2026-07-15, steht als nächster Kandidat aus). **Nächster
    Schritt:** [[ausnahmebewilligung-und-bestandesschutz]] als Priorität-(c)-Kandidat.
  - **Run 63 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[raumplanung-und-gestaltung]] gewählt (letzter verbleibender Kandidat mit
    `verifiziert`-Datum 2026-07-14, empfohlen von Run 62). Vollständiger Modell-D-Wortlautabgleich
    §§ 7/18/19/39/46 Abs. 3/48/49-65/69-73/346 PBG (Zonentypen-Enumeration numerus clausus § 48
    Abs. 2, Fristen 60-Tage-Auflage § 7/Planungszone 3+2 Jahre § 346) gegen
    `raw/260607_amtlich_zh_pbg.md` — **CONFIRMED, 0 Korrekturen** an diesem Bestand (§§ 83-89/44a
    PBG bereits Run 43 CONFIRMED, nicht erneut geprüft). **1 echte Korrektur:** «Anspruch auf
    Bewilligung … § 253 PBG» war fehlzugeordnet — § 253 PBG regelt nur die Nutzweise/
    Zonenkonformität, die Anspruchsnorm ist **§ 320 PBG** (im übrigen Wiki-Bestand bereits
    durchgängig korrekt geführt, isolierte Wiki-Kompressionsabweichung, Register-Sweep negativ:
    keine Propagation in `wiki/INDEX.md`/`buecher/INDEX.md`/`training/curriculum.md`).
    **0 Halluzinationen, 1 echte Korrektur, 0 neue Fehler im übrigen Bestand.** 3 neue Drill-
    Karten (2×D, 1×A). Report `outputs/2026-07-27_buch-run63.md`. Damit ist die von Run 55
    begonnene Liste der ältesten `verifiziert`-Daten (Stand 2026-07-14) einmal vollständig
    durchlaufen (`baulinien-und-abstandslinien`/`naturschutz-und-denkmalschutz`/
    `raumplanung-und-gestaltung` alle Run 61-63 re-verifiziert). **Nächster Schritt:** erneuter
    Fassungsstand-Sammelcheck der kantonalen Erlasse gegen zhlex.zh.ch (Daueraufgabe, Leitplanke
    Run 48, zuletzt vollständig Run 52-54) oder neuer Umlauf über die inzwischen ältesten
    `verifiziert`-Daten (`grep -h "^verifiziert:" wiki/*.md | sort`).
  - **Run 62 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[baulinien-und-abstandslinien]] gewählt (letzter verbleibender Kandidat
    mit `verifiziert`-Datum 2026-07-14 vor [[raumplanung-und-gestaltung]], empfohlen von Run 61).
    Vollständiger Wortlautabgleich §§ 90-122 PBG (Erschliessungsplan, Baulinien, Niveau-/Ski-
    Schlittellinien, Werkplan, vorsorgliches Bauverbot) gegen `raw/260607_amtlich_zh_pbg.md` —
    **CONFIRMED, 0 Korrekturen am Kernbestand**, Fassungsstand weiterhin Nachtrag 133. **2 echte
    Register-Sweep-Korrekturen gefunden:** § 33a ABV (Aussendämmung 35 cm) ist seit RRB 11.5.2016
    aufgehoben — korrekte, an anderer Stelle der KB ([[ausnahmebewilligung-und-bestandesschutz]])
    bereits verwendete Fundstelle ist § 253a PBG, war aber nie in diesen Artikel gesweept worden;
    zusätzlich Klarstellung Haupt- vs. Anhang-Fassung § 260 Abs. 3 PBG für die per Gerichtspraxis
    analog herangezogene 1/3-Fassadenlänge-Vorsprungsregel (harmonisierte Fassung hat anderen
    Regelungsgegenstand, offene Praxisfrage markiert statt übernommen). StrG-Fassungsstand-
    Vermerk aus Run 53 (Nachtrag 133) nachgezogen. **0 Halluzinationen, 2 Register-Sweep-
    Korrekturen, 0 neue Fehler im Kernbestand.** 3 neue Drill-Karten (2×D, 1×A). Report
    `outputs/2026-07-27_buch-run62.md`. **Nächster Schritt:** [[raumplanung-und-gestaltung]]
    (letzter verbleibender Priorität-(c)-Kandidat mit `verifiziert`-Datum 2026-07-14).
  - **Run 61 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[naturschutz-und-denkmalschutz]] gewählt (eines von drei Artikeln mit
    ältestem `verifiziert`-Datum 2026-07-14, breitester Paragraphen-Fächer). Vollständiger
    Modell-D-Wortlautabgleich aller 14 zitierten PBG-§§ (203/204/205/207/208/209/210/211/213/
    216/217/238a/50/76/338b) gegen `raw/260607_amtlich_zh_pbg.md` sowie beider KNHV-§§
    (10/12) gegen `raw/260714_amtlich_zh_knhv.md`. **Alle 16 Fundstellen CONFIRMED, 0
    Korrekturen, 0 Halluzinationen.** Bemerkenswert bestätigt: § 209 Abs. 1/4/5 PBG
    tatsächlich aufgehoben (nur Abs. 2/3 in Kraft), § 213 Abs. 3 PBG trägt die «+1 Jahr»-
    Erstreckungsklausel wortgleich (gilt nur für den Provokationsentscheid, nicht analog
    zwingend für § 209), § 238 Abs. 3 PBG aufgehoben zugunsten § 238a. Fassungsstand PBG
    weiterhin Nachtrag 133, keine Drift gegenüber Run 58/59/60. Kein Register-Sweep nötig (0
    Fehler). 3 neue Drill-Karten (2×C, 1×D). Report `outputs/2026-07-27_buch-run61.md`.
    **Nächster Schritt:** verbleibende Priorität-(c)-Kandidaten mit `verifiziert`-Datum
    2026-07-14 (`baulinien-und-abstandslinien`/`raumplanung-und-gestaltung`).
  - **Run 60 (2026-07-27, Festigungsmodus, Priorität (a) Cross-KB-Frage SIA-500-Kennwert +
    Priorität (c) Stichproben-Re-Verifikation, kein Agent-Fan-out):** Die seit 2026-07-21
    (Wissens-Chef Run 11) offene Cross-KB-Frage zur Herkunft des Behindertenparkplatz-
    Kennwerts («1 je 25 Wohnungen + 100 m Gehdistanz» in `wiki/fahrzeugabstellplaetze-und-
    parkierung.md`) geklärt: Wert stammt wörtlich aus dem Standardwerk (Bd. 2, S. 900,
    § 13.5.1.5), das dort **SN 521 500 Korrigendum C3 (1.10.2013)** zitiert, nicht die
    SIA-500:2009-Basisausgabe, gegen die Run 11 verglichen hatte. Kein Fehlzitat, keine
    Halluzination — nur die Norm-Referenz war ungenau; Quellenangabe im Wiki präzisiert,
    Cross-KB-Hinweis an `normen` ergänzt (Norm-Korrigendum-Wortlaut selbst bleibt
    kostenpflichtig/unverifizierbar wie VSS SN 640). **Priorität (c):** [[wohnhygiene-und-
    raumanforderungen]] (ältestes `verifiziert`-Datum, 2026-07-13, seit Run 33 nicht mehr
    geprüft) — §§ 299-306 PBG, § 40 BBV I, § 32/§ 4 ABV erneut vollständig Wort für Wort
    gegen die amtlichen Volltexte geprüft, **CONFIRMED, 0 materielle Korrekturen**;
    Fassungsstand PBG/ABV/BBV I ohne Drift gegenüber Run 53/58/59. **Register-Sweep-
    Nebenbefund:** `wiki/INDEX.md:29` führte den Artikel noch als `emerging` trotz
    `established`-Frontmatter — korrigiert (gleiches Muster wie Run 44/54). **0
    Halluzinationen, 1 Herkunftsklärung (Priorität a), 1 Stale-Status-Korrektur, 0 neue
    materielle Fehler (Priorität c).** 3 neue Drill-Karten (1×A, 1×D, 1×C).
    Report `outputs/2026-07-27_buch-run60.md`. **Nächster Schritt:** Priorität-(c)-Kandidat
    unter den zuletzt 2026-07-14 geprüften Artikeln (`baulinien-und-abstandslinien`/
    `naturschutz-und-denkmalschutz`/`raumplanung-und-gestaltung`).
  - **Run 59 (2026-07-27, Festigungsmodus, Priorität (a) Cross-KB-Flag + Priorität (c)
    Stichproben-Re-Verifikation, kein Agent-Fan-out):** Cross-KB-Flag der KB `energie`
    (Wissens-Chef Run 16, 26.07.2026) zu § 273/§ 260 Abs. 4 PBG bearbeitet. Zwei der drei
    gemeldeten Fundorte (`wiki/gebaeudearten-und-abstandssystem.md:31`, `wiki/INDEX.md:17`)
    waren bereits korrekt (Minibau § 260 Abs. 4 und Besonderes Gebäude § 273 schon als zwei
    getrennte Kategorien geführt). **Echte Lücke** in `wiki/abstaende-und-hoehen.md`
    geschlossen: § 260 Abs. 4 PBG (Minibau, 1,5 m/2 m², vollständige Grenz-/Gebäudeabstands-
    befreiung) fehlte im Hauptabschnitt «Grenzabstand» komplett, jetzt ergänzt und klar von
    § 273 (nur reduzierter Gebäudeabstand 3,5 m) abgegrenzt. **Echter Fund, in der Meldung
    nicht benannt:** `buecher/band-2/15-lage-von-gebaeuden-teil3-harmonisierung.md:72`
    zitierte Minibauten fälschlich als «§ 273 nPBG» statt § 260 Abs. 4 PBG — korrigiert;
    Register-Sweep über `training/curriculum.md` negativ (dort bereits korrekt). Beide
    Wiki-Zielartikel wortlautverifiziert gegen `raw/260607_amtlich_zh_pbg.md` +
    `raw/260607_amtlich_zh_abv.md`. **Priorität (c):** [[geschosse-und-kniestock]] (ältestes
    `verifiziert`-Datum, zuletzt Run 34/13.07.2026) — §§ 275/276 PBG **beide Fassungen**
    (harmonisiert + alt/Anhang) wortlautgeprüft, **CONFIRMED, 0 Korrekturen.** **0
    Halluzinationen, 1 echte Lücke geschlossen, 1 Fehlzitat korrigiert, 0 neue Fehler bei der
    Re-Verifikation.** 3 neue Drill-Karten (1×A, 1×D, 1×C). Report
    `outputs/2026-07-27_buch-run59.md`. **Nächster Schritt:** zweitältestes
    `verifiziert`-Datum als Priorität-(c)-Kandidat (`baulinien-und-abstandslinien`/
    `naturschutz-und-denkmalschutz`/`raumplanung-und-gestaltung`/
    `wohnhygiene-und-raumanforderungen`, alle zuletzt 2026-07-14 geprüft).
  - **Run 58 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** Run 57s Empfehlung gefolgt — die zwei zurückgestellten Kandidaten
    [[bauausfuehrung-und-baukontrolle]] und [[widerrechtliche-bauten-und-sanktionen]] (beide
    `established` seit Run 30/31, nur `verifiziert`-Feld fehlte) geprüft. **[[widerrechtliche-
    bauten-und-sanktionen]]:** Stichprobe §§ 340/340a/341 PBG gegen `raw/260607_amtlich_zh_pbg.md`
    + § 30/31 VRG gegen `raw/260712_amtlich_zh_vrg.md` wortlautgeprüft — **alle CONFIRMED, 0
    Korrekturen.** PBG-Fassungsstand live gegen zhlex.zh.ch bestätigt (Nachtrag 133, keine Drift
    zur raw-Datei). `verifiziert`-Feld ergänzt. **[[bauausfuehrung-und-baukontrolle]]:** Bestand
    §§ 326-329 PBG + §§ 10c/30 VRG aus Run 30/31 bestätigt, **aber Register-Sweep-Rückstand aus
    Run 47 gefunden:** die dort an 4 Stellen korrigierte Geisterbezeichnung «Art. 32bis USG»
    (amtlich korrekt **Art. 32bbis USG**) überlebte an **3 weiteren, von Run 47 nicht erfassten
    Fundorten** — Wiki-Frontmatter + -Fliesstext, Destillat `buecher/band-1/08-ausfuehrung-teil2-
    baustellensicherheit.md` (5 Stellen), `training/curriculum.md` (1 Stelle). Alle korrigiert;
    historische Fundorte (CHANGELOG/outputs/QUESTIONS/PROGRAMM-Tracker/drills.md-Beschreibungen),
    die die vergangene Korrektur selbst dokumentieren, bewusst unverändert gelassen. Beide
    Artikel erhielten ihr erstes `verifiziert`-Feld. **0 Halluzinationen, 1 Register-Sweep-
    Korrektur (Altfund), 0 neue materielle Fehler.** 3 neue Drill-Karten (2×D, 1×A). Report
    `outputs/2026-07-25_buch-run58.md`. **Nächster Schritt:** nach diesem Lauf trägt (ausser
    Registerdateien) kein `established`-Artikel mehr ein fehlendes `verifiziert`-Feld —
    nächster Priorität-(c)-Kandidat: ältestes `verifiziert`-Datum unter den bereits geprüften
    Artikeln (`grep -h "^verifiziert:" wiki/*.md | sort`) oder Fassungsstand-Sammelcheck auf
    weitere kantonale Erlasse ausserhalb der in Run 52-54 geprüften Liste ausweiten.
  - **Run 57 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[bestandsumbau-eingriffstiefe]] gewählt (Kt. SZ, seit Seed 07.06.2026 nie
    durch den Modell-D-Loop gelaufen, gegenüber dem Run-56-Alternativkandidaten mit höherem
    Erkenntniswert). **Befund: das PBG SZ (Planungs- und Baugesetz Kt. Schwyz, SRSZ 400.100) war
    bislang KEIN amtlicher Volltext in der KB** — der Artikel zitierte «§ 60 PBG SZ» und flaggte
    die Besitzstandsgarantie als «SZ analog — § verifizieren», beides seit dem Seed unbelegt.
    Amtliches PDF (sz.ch, SRSZ-Stand 1.2.2025) mit `pdftotext -layout` beschafft
    (`raw/260725_amtlich_sz_pbg.md`). **§ 60 PBG SZ CONFIRMED** (Grenzabstand 50 % Gebäudehöhe/
    min. 3 m, Attika-Rücksprungregel Abs. 3 lit. c bestätigt die im Praxisfall Wangen verwendete
    Firstprojektionslinien-Logik) — bestehendes Zitat war korrekt, nur nie amtlich belegt.
    **Echte Lücke geschlossen: § 72 Abs. 1 PBG SZ** («Bestehende, rechtmässig erstellte Bauten
    und Anlagen, die den neuen Vorschriften widersprechen, sind in ihrem Bestande garantiert»)
    als amtliches SZ-Pendant zu § 357 PBG ZH identifiziert; § 72 Abs. 3 (5-J-Wiederaufbaurecht)
    ergänzt. **Neue offene Frage bewusst markiert:** § 72 PBG SZ trägt keine mit § 357 PBG ZH
    vergleichbare Übernutzungs-Kasuistik im Gesetzeswortlaut — Übertragung der ZH-Gerichtspraxis
    auf SZ ungeprüft, im Artikel als offene Frage (nicht stillschweigend gleichgesetzt) markiert.
    Register-Sweep negativ (Zitate nur im Zielartikel, keine weiteren Fundorte). **0
    Halluzinationen, 0 Fehlzitate** (Beleglücke geschlossen, keine Korrektur eines falschen
    Werts). Erstmaliges `verifiziert`-Feld ergänzt. 3 neue Drill-Karten (2×D, 1×A). Report
    `outputs/2026-07-25_buch-run57.md`. **Nächster Schritt:** `bauausfuehrung-und-baukontrolle.md`/
    `widerrechtliche-bauten-und-sanktionen.md` (laut Run 55 bereits in Run 30/31
    volltextverifiziert, nur `verifiziert`-Feld fehlt) oder neue Kandidatensuche via
    `grep -L "^verifiziert:" wiki/*.md`.
  - **Run 56 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** Run 55s Empfehlung gefolgt: [[zonenkonformitaet]] (last_updated 2026-06-02,
    ältester `established`-Bestand ohne `verifiziert`-Feld, ausschliesslich Buch-/BZO-Quellen
    ohne einen einzigen PBG-§-Beleg) geprüft. **Grosser Fund:** die komplette Grundmasse-Tabelle
    (Zonen W2-W5, Z5) stammte aus `raw/260602_docs-baurecht-bzo-zh.md`, einer selbst verfassten
    Platzhalterdatei, die die Werte explizit als unbelegte Schätzung auswies («TODO: Werte
    ergänzen») — nie gegen den amtlichen Erlass geprüft, trotzdem seit Ersterfassung Teil eines
    `established`-Artikels. Amtliche Quelle `raw/260607_amtlich_zh_bzo-zurich-stadt.md` (BZO
    Zürich Stadt, Stand 29.05.2024) enthielt Art. 13/14/18 bereits, war aber beim Ersteinlesen
    tabellarisch linearisiert (Spalten verschoben, unbrauchbar). Original-PDF
    (`oerebdocs.zh.ch/getDoc?docid=6`) frisch mit `pdftotext -layout` extrahiert — Tabelle damit
    sauber lesbar. **Alle Zahlenwerte waren falsch:** Systematik «grosser/kleiner Grenzabstand»
    existiert in der Stadt-Zürich-BZO nicht (kantonale PBG/ABV-Regelbauweise-Terminologie,
    fälschlich zugeordnet) — echte Systematik: einheitlicher Grundgrenzabstand 5 m (Wohnzonen)/
    3,5 m (Zentrumszonen) + Mehrlängenzuschlag Art. 14; AZ in % statt Dezimalbruch (W2 60 %, W3
    90 %, W4b 105 %, W4 120 %, W5 165 %, W6 205 %, Z5-Z7 200/230/260 %); Gebäudehöhen weichen
    durchweg ab (W2 9 m statt 7,5 m, W3 9,5 m statt 10,5 m, W4 12,5 m statt 13,5 m, W5 15,5 m
    statt 16,5 m); Zonen W2bI-III, W4b, W6, Z5-Z7 fehlten komplett. **Register-Sweep negativ**
    (falsche Werte nur im Wiki-Artikel + seiner abgelösten Quelldatei, keine weiteren Fundorte in
    `buecher/`, `wiki/INDEX.md`, `training/curriculum.md`). Neue Quelldatei `raw/260725_amtlich_
    zh_bzo-zurich-stadt-grundmasse.md`. **0 Halluzinationen** (der Artikel hatte den Platzhalter
    bereits korrekt als `needs-verification` geflaggt — ein weiterer Beleg der Leitplanke «ein
    Flag ist selten harmlos»), 1 kompletter Tabellen-Fehlbestand korrigiert, 4 neue Drill-Karten.
    Report `outputs/2026-07-25_buch-run56.md`. **Nächster Schritt:** `bauausfuehrung-und-
    baukontrolle.md` / `widerrechtliche-bauten-und-sanktionen.md` (laut Run 55 in Run 30/31
    bereits volltextverifiziert, nur `verifiziert`-Feld fehlt) oder `bestandsumbau-eingriffstiefe.md`
    (Kt. SZ, noch nie geprüft) als nächster Priorität-(c)-Kandidat.
  - **Run 55 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** Nach Run 54s Empfehlung auf Priorität (c) umgeschwenkt: Kandidaten mit
    fehlendem/ältestem `verifiziert`-Feld ermittelt (sechs `established`-Artikel ganz ohne dieses
    Feld; [[nutzungsziffern]] + [[ausnuetzungsuebertragung]], last_updated 2026-07-10, als
    erreichbarster Kandidat vor der Fassungsstand-Umkehr-Erkennung Run 31 gewählt). **Grosser
    Fund — dritte Fassungsstand-Umkehr** (nach [[abstaende-und-hoehen]] Run 31,
    [[geschosse-und-kniestock]] Run 33/34): [[nutzungsziffern]] zitierte die harmonisierten
    §§ 255/256/257/258 PBG + §§ 9-13 ABV als künftige «Harmonisierungsvorlage/nPBG», obwohl sie
    seit der PBG-Änderung 14.9.2015 / ABV-Änderung 11.5.2016 (in Kraft 1.3.2017) **bereits
    geltender Hauptteil** sind; die Anhang-Fassung (Stand 28.2.2017) gilt nur bis zur BZO-Anpassung
    der jeweiligen Gemeinde. **3 Einzelkorrekturen:** § 9 ABV «UG mehrheitlich über gewachsenem
    Boden» ist im Hauptteil gestrichen (nur Anhang-Recht) — das Buch-Destillat hatte dies bereits
    Run 24 (2026-07-08) als needs-verification vermutet, jetzt am amtlichen Volltext bestätigt;
    § 10 lit. c ABV aktuell **20 %** statt 10 %; **§ 17 Abs. 2 ABV existiert nicht** (aufgehoben
    seit 1.2.1992) — Nutzweisen-Übertragung beruht ausschliesslich auf kommunalem Recht. Korrigiert
    in [[nutzungsziffern]], [[ausnuetzungsuebertragung]], Destillat [[14-nutzungsdichte-
    ausnuetzung]] + vollständiger Register-Sweep (`wiki/INDEX.md`, `buecher/INDEX.md`,
    `training/curriculum.md`, `training/drills.md` — 3 Karten korrigiert, 2 neu). Beide Wiki-Artikel
    + Destillat erhielten erstmals ein `verifiziert`-Frontmatter-Feld. 1 neuer needs-verification-
    Flag (ÜZ-«Unterniveaubauten»-Neuregelung am § 256-PBG-Wortlaut nicht wörtlich bestätigt — evtl.
    Buchkommentar). **0 Halluzinationen.** Report `outputs/2026-07-25_buch-run55.md`. **Nächster
    Schritt:** [[zonenkonformitaet]] (last_updated 2026-06-02, ausschliesslich Buch-/BZO-Quellen
    ohne PBG-§-Beleg, ältester ungeprüfter Bestand) als nächster Priorität-(c)-Kandidat.
  - **Run 54 (2026-07-25, Festigungsmodus, Fortsetzung Fassungsstand-Check + PPV-Primärquelle
    gefunden — kein Agent-Fan-out):** Fortsetzung Priorität (b) aus Run 53: **EnerG (LS 730.1)
    und WsG/WsV (LS 724.1/724.11) live gegen zhlex geprüft — beide ohne Drift** (EnerG weiterhin
    Nachtrag 129; WsG/WsV Nachtrag 133, deckungsgleich mit dem bereits in `raw/260717_amtlich_zh_
    hwschv.md` erfassten Stand). **Echter Lückenschluss:** die seit Run 33 (13.07.2026) nur über
    ein Leitfaden-Sekundärzitat abgesicherte PPV-Stelle (Art. 8 Abs. 5-8 autoarme Nutzungen)
    erhielt ihre **amtliche Primärquelle** — per Websuche die konsolidierte PPV-PDF «mit
    Änderungen bis 16. Dezember 2015» lokalisiert (`741.500_Parkplatzverordnung_16_V4.pdf`,
    Fussnote «Fassung gem. GRB vom 16. Dezember 2015; Inkraftsetzung 12. September 2016»),
    `pdftotext -layout` extrahiert und Wort für Wort geprüft: **CONFIRMED, 0 materielle
    Korrekturen** (einzige Differenz: Leitfaden fügt in Abs. 6 stilistisch «dabei» ein, kein
    Gesetzeswortlaut). Nachgezogen: `raw/260713_amtlich_zh_ppv-stadt-zuerich.md` (neuer
    Abschnitt), Wiki [[fahrzeugabstellplaetze-und-parkierung]] (Quellen + verifiziert-Feld +
    Fliesstext), Destillat [[13-fahrzeugabstellplaetze-spielflaechen-teil3]] (offene-Punkte-Zeile
    geschlossen). **Register-Sweep-Nebenbefund:** `wiki/INDEX.md` führte den Artikel noch als
    `emerging` trotz seit Run 29 geltendem `established`-Frontmatter — korrigiert. **0
    Halluzinationen**, 1 Lückenschluss, 2 Fassungsstand-Vermerke, 2 neue Drill-Karten. Damit ist
    die seit Run 48 aufgebaute Liste kantonaler Erlasse (ABV/BBV I/BBV II/BVV/KNHV/StrG/EnerG/
    WsG/WsV/PPV) **einmal vollständig durchlaufen**. **«Rückstand abgebaut» weiterhin NICHT
    ausgerufen** (Leitplanke Run 48: Daueraufgabe) — Vorschlag für den nächsten Lauf: Wechsel zu
    Priorität (c), Stichproben-Re-Verifikation eines `established`-Bestands mit ältestem
    `verifiziert`-Datum. Report `outputs/2026-07-25_buch-run54.md`.
  - **Run 53 (2026-07-25, Festigungsmodus, MacBook Pro, Fassungsstand-Sammelcheck — kein Agent-
    Fan-out):** Priorität (a) geprüft und bereits geschlossen vorgefunden (Anhang 6 LSV = Run 51,
    WsG/WsV-Nachzug = Run 50) → direkt zu Priorität (b) übergegangen. **Sechs kantonale Erlasse
    live gegen zhlex.zh.ch geprüft** (effiziente Methode: `curl -sIL` auf
    `zhlex.zh.ch/Erlass.html?Open&Ordnr=<LS>` liest den aktuellen Nachtrag aus dem Location-Header,
    ohne PDF-Download): **ABV (LS 700.2, Nachtrag 127), BBV I (700.21, 133), BBV II (700.22, 097),
    BVV (700.6, 133), KNHV (702.11, 130) — alle fünf ohne Drift**, KB-Rohquellen-Nachtragsnummern
    stimmen exakt. **StrG (LS 722.1): Drift gefunden** — die KB-Rohquelle `raw/260713_amtlich_zh_
    strg.md` (13.07.2026) hatte eine bereits damals archivierte zhlex-Fassung (Nachtrag 109, Stand
    1.7.2020) bezogen statt der zum Abrufzeitpunkt aktuellen; aktuell ist **Nachtrag 133** (Stand
    1.7.2026). **Volltextvergleich §§ 59-64 StrG (PDF Nachtrag 133 vs. Nachtrag 109): wortgleich
    unverändert** — die Zwischenrevisionen 113/117/133 betrafen andere Gesetzesteile, nicht Kapitel
    VII (Schlussbestimmungen). **0 materielle Korrektur nötig**, die bestehende § 62-StrG-Analyse
    (Run 36/40: kein kommunal/kantonal-Split, max. ½ Wertvermehrung/¾ Kosten, max. ½ Trottoir-
    Kosten) bleibt gültig. Fassungsstand-Prüfvermerk ergänzt in `raw/260713_amtlich_zh_strg.md` +
    `verifiziert`-Feld in `buecher/band-1/03-erschliessung-landsicherung-teil1.md`. **0
    Halluzinationen**, 2 neue Drill-Karten (Modell D). Report `outputs/2026-07-25_buch-run53.md`.
    **«Rückstand abgebaut» NICHT ausgerufen** (Leitplanke): weitere kantonale Erlasse (EnerG, WsG/
    WsV, PPV Stadt Zürich als Gemeinderecht) sind noch nicht in diesem Zyklus (Run 52/53) auf
    zhlex-Aktualität geprüft; der periodische Fassungsstand-Check bleibt eine Daueraufgabe.
  - **Run 52 (2026-07-25, Modell D, MacBook Pro, Fassungsstand-Check — kein Agent-Fan-out, VOLLGAS-
    Einzellauf):** Priorität (b) des Festigungsmodus: **LSV-Novelle 01.04.2026** (offener needs-
    verification-Flag Wissens-Chef Run 14, 24.07.2026) an der amtlichen Fedlex-Quelle geklärt.
    Fedlex-Filestore-URLs für USG (ELI 1984/1122_1122_1122) und LSV (ELI 1987/338_338_338) mit
    Datumssegment 20260401 getestet, per `curl`+`grep` direkt aus dem HTML-Quelltext extrahiert
    (nicht nur WebFetch-Zusammenfassung) — Titelblatt bestätigt Stand 1. April 2026 für beide
    Erlasse. **Anhang 3/4/5/6 LSV materiell unverändert** (Stichprobe Anhang 3 Ziff. 2 ES II
    nachgerechnet, identisch zu Stand 1.11.2023) — der Wissens-Chef-Vorbehalt («Entlastungstendenz»)
    war korrekt. **Neuer Fund, bisher nicht geflaggt: Art. 31a LSV ist per 1.4.2026 AUFGEHOBEN**
    (V vom 25.2.2026, AS 2026 114) — die alte Fluglärm-Sonderregel (automatisch schliessendes
    Schlafraumfenster) existiert im Gesetzeswortlaut nicht mehr, aufgegangen in der generalisierten
    Ausnahme **Art. 31 Abs. 2 LSV** (Fluglärm ODER ≤10 % Wohneinheiten grosser Wohnüberbauungen,
    kantonale Zustimmung + überwiegendes Interesse). Korrigiert an **6 Fundorten**: Wiki
    [[laermschutz-und-nichtionisierende-strahlung]] (Hauptkorrektur, neuer Abschnitt «Bauen bei
    Grenzwertüberschreitung»), Destillat `buecher/band-2/19-baulicher-umweltschutz-teil2-laerm-
    nisv.md` (Fassungsstand-Vermerke, Buchstand 2019 bleibt als solcher erkennbar stehen),
    `buecher/INDEX.md`, `wiki/INDEX.md` (dabei stale `emerging`→`established`-Statuskorrektur als
    Nebenbefund), `training/drills.md` (1 Karte korrigiert + 1 neue Modell-D-Karte). Zusätzlich
    **Art. 22 USG neu gefasst** (3 KWL-/Fenster-Wege je Wohneinheit + verschärfter Mindestschutz
    Art. 21 USG, Art. 31 Abs. 1bis LSV KWL/Kühlsysteme Stand der Technik) und **Nebenfund Art. 24
    Abs. 3 USG** (neue Innenentwicklungs-Ausnahme bei Einzonung trotz Planungswert-/IGW-
    Überschreitung) ins Wiki integriert. Neuer amtlicher Volltext
    `raw/260725_amtlich_ch_usg-lsv-novelle-20260401.md`. **0 Halluzinationen**, 1 strukturelle
    Korrektur, 2 Ergänzungen, 2 Drill-Karten (1×A, 1×D). QUESTIONS-Flag geschlossen (Kopf + Archiv-
    Fundstelle Z. 903). Report `outputs/2026-07-25_buch-run52.md`. **«Rückstand abgebaut» NICHT
    ausgerufen** (Leitplanke): der Fassungsstand-Check ist eine dauerhafte Pflicht, kein
    abschliessbarer Bestand — weitere kantonale Erlasse (ABV, StrG, PPV, BBV II) sind noch nicht in
    diesem Zyklus geprüft.
  - **Run 51 (2026-07-24, Modell E, Nachtschicht Mac Mini, gezielte Luecke, kein Agent-Fan-out —
    Budget-Disziplin Nachtschicht):** **Anhang 6 LSV** (Industrie-/Gewerbelaerm, seit Run 48 als
    offen geflaggt) via Fedlex-Filestore-HTML (Rule 260721) beschafft (`raw/260724_amtlich_ch_lsv-
    anhang6.md`, Stand 1.11.2023) — Geltungsbereich Ziff. 1 (inkl. Parkhaeuser/HLK-Anlagen),
    Grenzwerttabelle ES I-IV Ziff. 2 (**wertidentisch zu Anhang 3/4**, PW < IGW < AW CONFIRMED),
    Beurteilungspegel-Formel + Pegelkorrekturen K1/K2/K3 Ziff. 3 neu erfasst. Wiki
    [[laermschutz-und-nichtionisierende-strahlung]] um Abschnitt «Industrie- und Gewerbelaerm»
    ergaenzt. **0 Korrekturen, 0 Halluzinationen** — bestehende Destillat-Referenz
    (Fahrzeugabstellplaetze) war bereits korrekt, keine Wiki↔Destillat-Divergenz. 1 neue Drill-Karte
    (Modell C). QUESTIONS-Flag geschlossen. Report `outputs/2026-07-24_buch-run51.md`.
  - **Run 50 (2026-07-20, Festigungsmodus — 2 beschaffbare Luecken aus dem eigenen raw geschlossen, kein
    externer Abruf):** (a) **WsG/WsV-Nachzug abgeschlossen** (Restposten Run 48): KB-weiter HWSchV-Sweep ueber
    wiki/buecher/training; 2 veraltete Register-Stellen korrigiert — `training/drills.md` Z. 83 «§ 15d HWSchV /
    11 m eingedolt» war dreifach ueberholt (Renumbering § 15d→§ 15k, Aufhebung 01.06.2026, § 24 WsV OHNE
    Mindestmass — 11 m nur noch via Art. 41a Abs. 2 lit. a GSchV) + `training/curriculum.md` Z. 74 «§ 15m HWSchV»
    ohne Aufhebungsvermerk. § 183 lit. b WsV als Nachfolger von § 15h (Festlegung Baudirektion) bestaetigt.
    (b) **Meldeverfahren §§ 2a-2e BVV** (LS 700.6) als **vierter Verfahrenstyp** ins Wiki [[baubewilligungsverfahren]]
    integriert (Bring-Schuld Cross-KB Run 10 erledigt) — § 2a Tatbestaende + Rueckausnahme Abs. 2 (Kernzonen/
    Denkmalschutz bewilligungspflichtig), § 2b Tragweite, § 2c Unterlagen, § 2d Einreichung (30 T vor Baubeginn,
    Behandlungsfrist 30 T), § 2e **Genehmigungsfiktion**; Flag-Notiz «§§ 2a-2c» → §§ 2a-2e korrigiert. Belegt
    gegen `raw/260607_amtlich_zh_bvv.md` (Fassungsstand 1.7.2026 NT 133). **0 Halluzinationen**, 3 Drills, ~7
    Fundorte synchronisiert. **«Rueckstand abgebaut» NICHT ausgerufen:** Anhang 6 LSV + periodischer
    zhlex-Fassungsstand-Check brauchen externen Abruf (online-faehiger Lauf). Report `outputs/2026-07-20_buch-run50.md`.
  - **Run 48 (2026-07-17, Modell-D Beschaffungslauf — die 3 «beschaffbaren» Luecken aus Run 47 geschlossen,
    Freigabe Raphael):** **4 neue amtliche Volltexte** (LSV Art. 40-42 + Anhang 3/4; GSchV Art. 41c +
    UebgBest. 4.5.2011; HWSchV ZH + **Nachfolgerecht WsG/WsV**; USG Art. 32e + VASA). **Jede Luecke deckte
    einen echten Fehler auf** — schwerster: **die HWSchV ist seit 01.06.2026 aufgehoben** (OS 81, 144), die
    KB zitierte totes kantonales Recht; § 15m stand **auf dem Kopf** (Verweis/beguenstigend statt Vorrang/
    einschraenkend); Renumbering Nachtrag 95 uebersehen (§ 15d→§ 15k etc.); LSV-**Additionsprinzip ohne
    seine Ausnahme** (PW neue Anlagen); **VASA-Stichtag** falsch (Berechtigung 1.2.2001 vs. Satz-Staffelung
    40 %/30 %). **5 echte Korrekturen, 0 Halluzinationen**, ~15 Fundorte, 4 Drills. **Neue Leitplanke:**
    Fassungsstand kantonaler Erlasse pruefen. Report `outputs/2026-07-17_buch-run48.md`.
  - **Run 47 (2026-07-17, Modell-D — 4 Komplexe adversarial parallel via Agent-Fan-out: Gewaesserraum GSchV,
    LSV-Schallschutz, Quartierplan PBG, USG-Nomenklatur):** **Die Run-46-Meldung «Verifikations-Rueckstand
    abgebaut» war verfrueht** — eine Gegenprobe ueber das ganze QUESTIONS-Dokument fand 4 Flags, die am
    inzwischen vorhandenen Volltext sehr wohl pruefbar waren (sie standen weiter unten und wurden vom
    Run-46-Sweep nicht erfasst). Befunde: Gewaesserraum-**Kennzahlen-Tabelle widersprach dem eigenen
    Fliesstext** (Run-32-Korrektur nur dort nachgefuehrt; Schwellen 1 m/2 m, Art. 41b Abs. 2 fehlzitiert) +
    **Art. 41c → Art. 41a Abs. 4 lit. a** in band-1/02; **LSV 6 Praezisierungen + 4 Luecken** (gewichtigste:
    **Art. 32 Abs. 3 LSV** — Schallschutzpflicht auch im Umbau/Fensterersatz, fehlte ueberall); Quartierplan
    **vollstaendig CONFIRMED** (Vorbefund «§ 160a existiert nicht» = **Leerschlag-Falle** «§ 160 a.26»);
    USG **«Art. 32bis» als Geisterbezeichnung** an 4 Register-Fundorten. **0 Halluzinationen**, ~20 Fundorte
    synchronisiert, 4 Drills. **2 neue Pruefregeln** oben in den Leitplanken verankert (Grep-Toleranz,
    Register-Sweep). Ruecktaktungs-Empfehlung bleibt bestehen. Report `outputs/2026-07-17_buch-run47.md`.
  - **Run 45 (2026-07-15, Modell-D — 3 Komplexe adversarial parallel via Agent-Tool: §§ 218/219/220 PBG,
    KNHV §§ 13-22/29-32, USG-Altlasten Re-Verifikation):** § 220 Abs. 2 PBG **Gemeinwesen-Ausnahme** (offene
    Luecke seit Run 34) vollstaendig in [[ausnahmebewilligung-und-bestandesschutz]] ergaenzt + Abs. 3-Praezisierung
    + §§ 218/219-Trias (raw/260607_amtlich_zh_pbg.md Z. 2179-2194). KNHV: Fehlzuordnung Naturschutz-Lebensraeume
    «§§ 19-22» → **§ 13 KNHV** korrigiert, Abschnitts-Randtitel Nachtrag 130 bestaetigt, § 14/§ 30 KNHV neu belegt
    (raw/260714_amtlich_zh_knhv.md). USG-Altlasten adversariale Re-Verifikation: Kern haelt (Art. 32c/32d/32dbis/
    32bbis alle CONFIRMED), 1 Absatz-Korrektur Art. 32d **Abs. 4** statt Abs. 3 (Kostenverteilungsverfuegung).
    **3 echte Korrekturen, 0 Halluzinationen.** 5 neue Drills. Mehrere Stale-Flags geschlossen. **Befund:
    Verifikations-Rueckstand weitgehend abgebaut** — Ruecktaktung auf woechentlich empfohlen. Report
    `outputs/2026-07-15_buch-run45.md`.
  - **Run 44 (2026-07-14, Modell-D — 4 Komplexe parallel via Agent-Tool: VRG-Rechtsschutz, § 238→§ 238a-
    Divergenz, Quartierplan § 160a/81/129, RPG/WEG-Erschliessung):** VRG-Rechtsschutz (§§ 25/26/26a-d/
    55/58/86-89 VRG + § 317/338/339/339b PBG) gegen `raw/260714_amtlich_zh_vrg_rechtsschutz2.md` +
    `raw/260712_amtlich_zh_vrg.md` + `raw/260607_amtlich_zh_pbg.md` — 2 Praezisierungen (Replikrecht
    § 26b VRG ist Praxis aus Art. 29 Abs. 2 BV, nicht Gesetzeswortlaut; Zivilgericht-Forum folgt aus
    § 317 PBG, nicht aus § 339b PBG allein), [[rechtsschutz-und-rechtsmittelverfahren]] bleibt
    `emerging`. **Wiki↔Wiki-Divergenz § 238 Abs. 3 → § 238a PBG** (Vorgaerten/Beguenung seit 1.12.2024)
    behoben in [[baulinien-und-abstandslinien]] + 2 Buch-Destillaten + `wiki/INDEX.md`-Statuskorrektur
    (dort faelschlich noch `emerging` trotz laengst `established`). Quartierplan § 160a/§ 160b/§ 81/
    § 129 PBG unabhaengig CONFIRMED (Kollision mit Parallel-Instanz, die denselben Komplex am selben
    Tag bereits erledigt hatte — kein Schaden). Art. 19/22/27 RPG + WEG-Klaerung: 2 neue
    Bundesrechts-Volltexte via Fedlex beschafft (`raw/260714_amtlich_ch_rpg-erschliessung.md`,
    `raw/260714_amtlich_ch_weg.md`), 1 Praezisierung (15-J-Frist steht in Art. 5 Abs. 1 WEG, nicht
    Art. 19 Abs. 2 RPG). **3 echte Korrekturen, 0 Halluzinationen.** 6 neue Drills (Modell D). Workflow-
    Tool bewusst nicht verwendet (kein Nutzer-Opt-in), stattdessen 4 parallele Agent-Tool-Aufrufe nach
    dem in Run 31/36 erprobten Muster. Report `outputs/2026-07-14_buch-run44.md`.
  - **Run 43 (2026-07-14, Modell-D Gestaltungsplan §§ 83-89 + § 44a PBG, kein Agent-Fan-out —
    Kollisionsvermeidung zu einer parallel laufenden Instanz, die zeitgleich Kap. 17 Ausruestungen als
    „Run 42" bereits committet hatte):** Wiki [[raumplanung-und-gestaltung]] (bleibt `established`,
    erstmals `verifiziert`-Feld) gegen `raw/260607_amtlich_zh_pbg.md` Z. 483-493/909-972 gegengeprueft
    — **§§ 83-89 PBG (Gestaltungsplan Inhalt/oeffentlich/privat/Zustimmung/Aufhebung/Vorpruefung-
    Festsetzung-Genehmigung) + § 44a PBG (Materialgewinnung/-ablagerung) alle CONFIRMED, 0 Fehler.**
    Zusaetzlich zwei liegen gebliebene **NISV-AGW-Fundstellen-Divergenzen** («Art. 6 Abs. 3» statt
    «Art. 3 Abs. 6 NISV») bereinigt, die der Run-39-Fix (dort nur `buecher/INDEX.md`) nicht erfasst
    hatte: `wiki/INDEX.md` (Zeile [[laermschutz-und-nichtionisierende-strahlung]]) und eine Drill-Karte
    in `training/drills.md`. 6 neue Drills (3×D/2×C/1×A). **Neue Lehre:** `buecher/INDEX.md` und
    `wiki/INDEX.md` sind zwei separate Dateien mit redundanten Kurzfassungen — eine Korrektur muss
    beide treffen, nicht nur eine. **Nebenbefund:** die PROGRAMM-Tracker-Nachfuehrung fuer Run 41 fehlte
    (Report/CHANGELOG vorhanden, aber kein Tracker-Eintrag) — hier nicht rekonstruiert, nur vermerkt.
    Report `outputs/2026-07-14_buch-run43.md`.
  - **Run 40 (2026-07-14, Modell-D BBV-I-Wortlaut vollständig abgeschlossen + § 62 StrG Nachzug, kein
    Agent-Fan-out — Kollisionsvermeidung zu Parallel-Lauf «Run 38» KNHV/USG/VRG):** [[17-haustechnische-
    anlagen-teil3]] `emerging`→**`established`** — §§ 18/21/22/23/24/26/29/30a/31/32/33/37/40/42/43/44/
    45/45a/46/46a BBV I + § 19a BBV II volltextverifiziert gegen `raw/260607_amtlich_zh_bbv1.md`/`bbv2.md`.
    **Zweite Wiki↔Destillat-Divergenz nach Run 39 gefunden:** die bereits am 2026-07-13 (Run 32/33) im
    Wiki [[wohnhygiene-und-raumanforderungen]] korrigierten Fehler (§ 24 BBV I ≠ AWEL-Bewilligung, «§ 45
    Abs. 3» existiert nicht → § 45a, § 42a aufgehoben → § 43) waren im Destillat noch nicht nachgeführt;
    **plus 2 bisher unentdeckte Fehler** (§ 29 Abs. 2 BBV I keine «Ausnahme innenliegende Räume»; § 42
    Abs. 1 BBV I kein «> 1 Kochplatte»-Kriterium). 6 Korrekturen, 1 Ergänzung (12-W/m²-Komfortklimadeckel).
    **Zweiter Komplex:** § 62 StrG Mehrwertbeiträge — die am 2026-07-13 (Run 36) im Wiki
    [[baulinien-und-abstandslinien]] korrigierte Regel (§ 62 lit. c/d, max. ½ Wertvermehrung/¾ Kosten
    bzw. ½ Trottoir-Kosten, kein kommunal/kantonal-Split) an 4 weiteren Stellen nachgezogen (Buch-Destillat
    `03-erschliessung-landsicherung-teil1.md`, Wiki [[baureife-und-erschliessung]], `buecher/INDEX.md`
    2×). 8 Drills (6×D, 2×C). **BBV-I-Wortlaut damit vollständig abgeschlossen** — das war die letzte
    explizit benannte Restschuld aus Run 39. **Naechste Phase-3-Ziele:** § 357 Abs. 5 PBG
    Verordnungspraxis (Shots ab 732), Kap. 17 Restteile §§ 295-298 PBG, Kap. 2 Teil 3 Gestaltungsplan
    (noch kein Wiki-Artikel), § 48 BBV I im Destillat nachtragen (geringe Prio). Report
    `outputs/2026-07-14_buch-run40.md`.
  - **Run 39 (2026-07-14, Modell-D EnerG §§ 9-14 Fassungsstand, kein Agent-Fan-out — Kollisionsvermeidung
    bei mehreren zeitgleichen VOLLGAS-Instanzen):** Wiki↔Destillat-Divergenz geschlossen — die EnerG-
    Korrekturen aus Run 32 (Wiki [[wohnhygiene-und-raumanforderungen]]) waren im Buch-Destillat
    [[17-haustechnische-anlagen-teil3]] + `buecher/INDEX.md` NICHT nachgeführt (trotz «verifiziert»-Vermerk).
    Gegen `raw/260712_amtlich_zh_energ.md` (Nachtrag 129): **VHKA-Schwelle «ab 5 Nutzeinheiten» korrigiert →
    Neubau ≥ 2 / Bestand ≥ 3 (§ 9 Abs. 1/3), Befreiung § 9 Abs. 5**; **fossile WKK/Notstrom § 12b EnerG
    (Probeläufe ≤ 50 h), nicht § 30a Abs. 2 BBV I / § 13**; **§ 13 aufgehoben, § 9a existiert nicht**; § 10a/§ 10c
    (Eigenstromerzeugung/PV) als neu erfasst. Zusätzlich **NISV-INDEX-Fundstelle «Art. 6 Abs. 3» → «Art. 3 Abs. 6
    NISV»** korrigiert. **5 Korrekturen, 0 Halluzinationen**, 4 neue Drills (3×D, 1×A). Kollisionsfrei zu
    Parallel-Lauf «Run 38» (KNHV/USG/VRG). **Offen:** BBV-I-Wortlaut Kap. 17 (raw bbv1). Report
    `outputs/2026-07-14_buch-run39.md`.
  - **Run 36 (2026-07-13, Modell-D-Volltextabgleich, 5 Komplexe parallel via Agent-Tool — Workflow-Tool
    bewusst vermieden, siehe Run-32-Lehre):** [[wohnhygiene-und-raumanforderungen]] `emerging`→`established`
    (PBG §§ 299-306 + § 32/§ 4 ABV, alle 10 Fundstellen CONFIRMED, 0 Fehler); [[ausnahmebewilligung-und-
    bestandesschutz]] ergaenzt (§ 357 Abs. 5 PBG Milderung-von-Bauvorschriften, echte Luecke geschlossen);
    [[abstaende-und-hoehen]] doppelt verifiziert (§282/284/292/293 PBG + § 30 ABV Schattenwurf **3 Std.**
    CONFIRMED, **§ 28 ABV korrigiert:** 0,5-m-Regel ist Gerichtspraxis VB.2005.00519, kein Gesetzeswortlaut);
    [[baulinien-und-abstandslinien]] erweitert (§§ 90-95/§ 111/§§ 114-122 PBG neu, **§ 106 PBG korrigiert:**
    Niveaulinien auch ueber Baulinien fuer Wasserbauprojekte, nicht nur Verkehrsbaulinien; § 62 StrG bleibt
    offen mangels Volltext); [[baubewilligungsverfahren]] praezisiert (§ 325/§ 325a PBG, **Solaranlagen-
    Zuordnung korrigiert:** § 1/§§ 2a-2c BVV statt nicht mehr existentem PBG-Verweis). **3 Korrekturen,
    0 Halluzinationen.** Ein erster Kap.-16-Agent lieferte keinen Diff und wurde erfolgreich neu gestartet.
    5 neue Drills (4×C/D, 1×A). **Naechste Phase-3-Ziele:** § 62 StrG (Volltext beschaffen), § 357 Abs. 5
    PBG Verordnungspraxis (Buchtext Shots ab 732), Kap. 17 Restteile §§ 295-298 PBG, Kap. 2 Teil 3
    (§ 49b/§§ 83-89/§ 87a/§ 44a PBG Gestaltungsplan, noch kein Wiki-Artikel). Report
    `outputs/2026-07-13_buch-run36.md`.
  - **Run 33-35 (2026-07-13, Modell-D-Volltextabgleich, zwei zeitgleiche VOLLGAS-Laeufe mit teilweiser
    Ziel-Ueberschneidung — Details je CHANGELOG.md):** [[geschosse-und-kniestock]] `emerging`→`established`
    (Fassungsstand-Umkehr: harmonisiert § 275/276 PBG Kniestock **1,5 m**/4 Geschossarten inkl. Attika ist
    heute geltender Hauptteil, alt 0,9/1,3 m nur noch Anhang-Weitergeltung — analog [[abstaende-und-hoehen]]);
    [[ausnahmebewilligung-und-bestandesschutz]] + [[gebaeudearten-und-abstandssystem]] `emerging`→`established`;
    [[laermschutz-und-nichtionisierende-strahlung]] `emerging`→`established` (Anhang 5 Ziff. 222 LSV
    Restklaerung geschlossen); [[fahrzeugabstellplaetze-und-parkierung]] verifiziert (Wegleitung 1997
    CONFIRMED, PPV Stadt Zuerich Art. 8 Abs. 5-8 Wortlaut ergaenzt, VSS-Fehlzitat "SN 640 060" entfernt);
    [[naturschutz-und-denkmalschutz]] § 209 PBG "+1 Jahr"-Verlaengerung als reine Analogie bestaetigt (kein
    Gesetzeswortlaut, keine Halluzination); [[wohnhygiene-und-raumanforderungen]] Kaminhoehen/LRV verifiziert
    (Art. 20 LRV per 1.1.2022 aufgehoben, Feuerungskontroll-Rhythmus praezisiert 4/2/3 Jahre statt pauschal
    2). **Hinweis fuer Radar:** Zeitgleiche ueberlappende Laeufe fuehrten zu doppelter Bearbeitung derselben
    Ziele (geschosse-und-kniestock, PPV) — Lock-Mechanismus fuer `baurecht-buch-training` pruefen. Reports
    `outputs/2026-07-13_buch-run32.md` (Vortag) + `outputs/2026-07-13_buch-run35.md`.
  - **Run 32 (2026-07-12/13, Modell-D-Volltextabgleich, 5 Komplexe parallel via Agent-Tool — Workflow-Tool
    scheiterte an Freigabe-Gate im unbeaufsichtigten Lauf):** **§§ 278-293 PBG** (Hoehen/Dach/Hochhaus,
    [[abstaende-und-hoehen]] KORRIGIERT: Gebaeudehoehe-Beleg falsch zugeordnet, Untergeschoss "80 cm" nicht
    auffindbar → richtig § 275 Abs. 3 = 2,5 m/3 m, Schattenwurf-Schwelle vertauscht → richtig **3 Std.**
    nicht 2), **§§ 8/9/10c/15 VRG** (Akteneinsicht/Realakte, echte Luecke in [[rechtsschutz-und-rechtsmittelverfahren]]
    ergaenzt), **Art. 41a/41b GSchV** (Gewaesserraum-Widerspruch [[abstaende-und-hoehen]] vs.
    [[15-lage-von-gebaeuden]] AUFGELOEST — kein echter Widerspruch, nur Abs.1/Abs.2-Verwechslung), **LSV/NISV**
    ([[laermschutz-und-nichtionisierende-strahlung]] KORRIGIERT: AGW-Legaldefinition Art. 3 Abs. 6 NISV nicht
    Art. 6, Mobilfunk-Grenzwerte frequenzbereichs- statt einzelfrequenz-gestaffelt), **BBV I/II + EnerG**
    ([[wohnhygiene-und-raumanforderungen]] KORRIGIERT, **Fassungsstand-Befund**: § 42a/§ 45 Abs.3/§ 48 BBV I
    existieren nicht mehr, §§ 9-13 EnerG im Buch-Destillat teils veraltet gegenueber Nachtrag 129/1.7.2025).
    **3 neue Quelldateien:** `raw/260712_amtlich_ch_gschv.md`, `raw/260712_amtlich_ch_lsv-nisv.md`,
    `raw/260712_amtlich_zh_energ.md`. 10 Korrekturen gesamt, 0 Halluzinationen. 5 Drills (3×D/1×A). **Naechste
    Phase-3-Ziele:** [[geschosse-und-kniestock]] (alte § 275/276-Zaehlweise, noch `emerging`), Anhang 5
    Ziff. 222 LSV (Detail offen). Report `outputs/2026-07-13_buch-run32.md`.
  - **Run 31 (2026-07-12, Modell-D-Volltextabgleich, 5 Komplexe parallel via Workflow-Tool):** **§§ 218-232
    (Baupolizeirecht), §§ 269-274+292 (Abstaende), § 120/122/150/264/346 (Landsicherung), §§ 203-213 (Natur-/
    Heimatschutz), § 30 VRG** je durch einen Refutations-Agenten geprueft. **GROSSER BEFUND — Fassungsstand-
    Umkehr:** der amtliche PBG-Volltext (LS 700.1, Stand 1.7.2026) fuehrt die **harmonisierte IVHB-Fassung als
    geltenden Hauptteil** (§ 273 «Kleinbauten und Anbauten», § 292 Dachaufbauten **½**), das alte Recht (bes.
    Gebaeude 4/5 m, 1/3) nur noch im **Anhang Stand 28.2.2017** (Weitergeltung bis BZO-Harmonisierung der
    Gemeinde); [[abstaende-und-hoehen]] Fassungsstand-Box umgekehrt + § 273/§ 292 Doppelwerte (bleibt
    `established`, Zahlenwerk bestaetigt). **13 Korrekturen gesamt:** § 219 nur Verschaerfung/zwingend, § 220
    allg. Dispens, § 225 (Bau, statt § 224 Abs. 2), § 230 Abs. 2 (30-T-Frist), § 232 Abs. 2/3, § 226 Abs. 2,
    § 270 Abs. 3 PBG (statt «§ 270 ZGB»); § 213 Abs. 3 (statt Abs. 1), § 209 Abs. 2/3; § 122 Abs. 1 «seit
    Rechtskraft»; Grundpfand **Art. 836 ZGB** (statt § 15 VRG). **NEU `raw/260712_amtlich_zh_vrg.md`** (§§
    8/9/10c/15/30 VRG). Status-Hebungen `emerging`→**`established`**: [[11-allgemeine-bestimmungen-baupolizeirecht]],
    [[04-natur-und-heimatschutz]], [[naturschutz-und-denkmalschutz]], [[baulinien-und-abstandslinien]]. 7 Drills
    (1×A/6×C-D). **Naechste Phase-3-Ziele:** §§ 278-293 nPBG (harmonisierte Hoehen/Dach/Attika am Hauptteil),
    §§ 8/9/15 VRG (Rechtsschutz-Verfahren), GSchV Art. 41a/41b (Gewaesserraum-Widerspruch 15-lage↔abstaende).
    Report `outputs/2026-07-12_buch-run31.md`.
  - **Run 30 (2026-07-12, Modell-D-Volltextabgleich, 3 Komplexe parallel via Workflow-Tool):** **§§ 233-237
    (Baureife), §§ 326-329 (Baufreigabe/Kontrolle/Unterbruch), §§ 340/340a/341 (Strafe/Wiederherstellung)**
    gegen `raw/260607_amtlich_zh_pbg.md` je durch einen Refutations-Agenten geprueft. **7 Korrekturen/
    Praezisierungen + 1 Nachtrag:** § 234 (Gemeindevorstand-Antrag), § 235 (3-J-Erlassfrist ergaenzt),
    § 236 («Behandlung» statt «Beseitigung»), § 237 Abs. 4 (Grundbuch-Anmerkung statt Benuetzungsrechte-
    Fehlzuordnung), § 237 Abs. 1 Gleisanschluss (ohne «wirtschaftlich»); § 328 Abs. 2 lit. b (Foerderung,
    **nicht** Abbruch) + Abs. 3 (Kostentraeger) + § 326-Plattform-Fassung, Nachtrag § 328a; § 341 (amtl.
    Wortlaut «rechtmaessigen Zustand herbeifuehren», Vorbehalt nur ggue. Strafverfahren) + § 340 Abs. 4/5
    (Gehilfenschaft/Solidarhaftung) + § 340a (Verfolgung UND Strafe). **§ 329 Abs. 1 = BRG-Anfechtung
    bestaetigt** (Agent-OFFEN am Volltext aufgeloest). Wiki [[bauausfuehrung-und-baukontrolle]] +
    [[widerrechtliche-bauten-und-sanktionen]] `emerging`→**`established`**; [[baureife-und-erschliessung]]
    (schon established) geschaerft. 6 Drills (1×A/4×D/1×C). **Naechste Phase-3-Ziele:** § 120/§ 150/§ 264/§ 346
    PBG (Landsicherung/Baulinien/Planungszone), §§ 8/9/10c/15/30 VRG + § 30 VRG-Dreiteilung, §§ 269-274 PBG
    (Grenz-/Gebaeudeabstand-Zahlenwerk) am Volltext. Report `outputs/2026-07-12_buch-run30.md`.
  - **Run 29 (2026-07-12, erster Phase-3-Verifikationslauf, Modell D+E):** **Fahrzeugabstellplaetze
    §§ 242-249 PBG** (Kap. 13 T3) gegen `raw/260607_amtlich_zh_pbg.md` abgeglichen → Destillat
    [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]] + Wiki [[fahrzeugabstellplaetze-und-parkierung]]
    auf **`established`**. **2 Fassungsstand-Korrekturen:** § 243 Abs. 2→**Abs. 3** (bestehende Bauten;
    neuer Abs. 2 = antragsgebundene Reduktion), § 247 Abs. 1 «**nur fuer die Mobilitaet**» (statt enger
    Parkraum/OEV-Bindung); dazu lit. b «andere» statt «staerkere», § 309 Abs. 1 lit. i bestaetigt. 5 Drills
    (2×D/3×C). **Naechste Phase-3-Ziele:** §§ 233-237 (Baureife), §§ 326-328 (Baufreigabe), § 340/§ 341
    (Wiederherstellung/Strafe) am Volltext. Report `outputs/2026-07-12_buch-run29.md`.
- **Phase (historisch):** **2 (Vertiefung, alle 2 Tage) — Start 2026-06-21.** Mit Run 12 (Kap. 7 Teil 2) sind
  **ALLE P1-Kapitel (14/16/15/17/20/6/7) im Kern erfasst** → Phase-1-Aufbau (taeglich) abgeschlossen.
  **Cron auf alle 2 Tage** (`30 7 */2 * *`) heruntergetaktet per update_scheduled_task (2026-06-21).
  Fokus Phase 2: restliche Kapitel (8, 12/13, 9-Rest, 10, 1-5, 11, 19, 21-23) + Restschulden der
  P1-Kapitel + Querverlinkung/Verdichtung Wiki. Spaeter Phase 3 (woechentlich, `30 7 * * 1`).
- **Seiten distilliert:** ~999 / 1550 (~500 Doppelseiten). **Run 27 (2026-07-11, Forcierung, 2 Kapitelteile,
  22 Doppelseiten):** Kap. 17 Teil 3/Schluss + Kap. 19 Teil 2/Schluss → **Kap. 19 VOLLSTAENDIG, Kap. 17
  substanziell komplett.** **Kap. 17** (S. 1304-1319, Shots 656-663): **17.9 Haustechnische Anlagen** —
  Abwaerme/WRG/WKK § 30a BBV I, Feuerungen Oel/Gas/Holz § 24 BBV I/LRV/Feuerungskontrolle 2 J. Art. 13 LRV,
  **Kaminhoehen 0,5/1,5/2 m**, **Elektroheizungsverbot § 10b EnerG**, Warmwasser **max. 60 °C § 26 BBV I** /
  Vorlauf ≤ 50 °C-Boden ≤ 35 °C § 23 BBV I, **VHKA ab 5 Nutzeinheiten § 9 EnerG**, besondere Heizungen
  (Rampen-/**Garagenheizung Ziff. 2.31 Anhang BBV I**), Klima/Lueftung § 29 BBV I/EBF > 1000 m² § 45 Abs. 3,
  **Garagenlueftung § 37 Abs. 1 BBV I**, Elektro NIV Art. 37 ff., **Aufzugspflicht > 5 anrechenb. Geschosse**
  (Kabine 2,10 × 1,10 m, > 9 = 2 Aufzuege § 40 Abs. 2 BBV I), Liftanbau Altbau § 19a BBV II, Befoerderungs-
  anlagen § 296 PBG, Briefkaesten Art. 73 ff. VPG. **Kap. 19** (S. 1404-1431, Shots 706-719): **Laermschutz-
  Detail** (**Aufhebung Lueftungsfensterpraxis BGE 142 II 100**, **Baubewilligung trotz IGW-Ueberschreitung
  Art. 31 Abs. 2 LSV**, verschaerfte Schalldaemmung Art. 32 Abs. 2 LSV/SIA 181, **Fluglaerm Art. 31a LSV**) +
  **NIS/NISV** (zweistufig IGW/**AGW Faktor 10 nur OMEN**, **OMEN Art. 3 Abs. 3 NISV** Balkone NICHT, **Mobilfunk
  AGW 4-6 V/m** Ziff. 64 Anhang 1 NISV, Bauzone Anspruch § 320 PBG ohne Beduerfnisnachweis BGer 1C_329/2013,
  Standortdatenblatt Art. 11 NISV). Neue Destillate [[band-2/17-haustechnische-anlagen-teil3]] /
  [[band-2/19-baulicher-umweltschutz-teil2-laerm-nisv]]. **NEU Wiki [[laermschutz-und-nichtionisierende-strahlung]]**.
  Modell C (6) + A (1). Report `outputs/2026-07-11_buch-run27.md`. **→ Alle substanziellen Kapitel geschlossen;
  Forcierungs-Phase kann abgeschlossen werden (nur Kleinreste 15.13/16.9/17.10/11 offen).**
- **Seiten distilliert (frueher):** ~977 / 1550 (~488 Doppelseiten). **Run 26 (2026-07-10, regulaer/Lueckenschluss,
  6 Tail-Doppelseiten Kap. 14: Shots 489/492/495/497/499/500, S. 970-992):** **Kap. 14 (P1) damit
  lueckenlos gelesen (Shots 462-500).** Nachgetragen: **Nutzungsart-Detail 14.2.2-14.2.6** — mit Wohnung
  zusammenhaengende Arbeitsraeume **Art. 52 Abs. 1 PBG** (1/4-1/3), **nicht stoerende Betriebe** § 52
  Abs. 1/3 (stillschweigend erlaubt + funktionale Zweckbestimmung BEZ 2010 Nr. 2), **ideelle Immissionen**
  BGE 108 Ia 140, **Pflegewohnung zonenkonform BEZ 2015 Nr. 36** (Healthcare!), **Parkplatz/Erschliessung
  Zonenkonformitaet 14.2.4** (dienende Funktion), **besondere Nutzungsanordnungen § 49a Abs. 3** +
  **Erdgeschoss Laeden/Gaststaetten § 49a Abs. 3 Satz 2**, **Uebertragung von Nutzweisen § 17 Abs. 2 ABV**
  (Radius 150/300 m BO Zuerich Art. 6, NICHT = Ausnuetzungsuebertragung); **BMZ integrierte Garagen**
  § 13 ABV/BEZ 2012 Nr. 2; **Harmonisierungsvorlage-Formeln 14.3.3-14.3.6** (AZ/BMZ ueber Terrain/UEZ mit
  Unterniveaubauten+projizierte Fassadenlinie/Gruenflaechenziffer, +20 % Bonus § 11/13 nABV) +
  **Verzicht auf Nutzungsziffern § 251 lit. b PBG 14.3.7**. **Mischrechnungsverbot RESOLVIERT:** keine
  benannte Doktrin in Kap. 14 (jede Ziffer bindet abschliessend, § 251 PBG). Destillat
  [[band-2/14-nutzungsdichte-ausnuetzung]] `established` erweitert; Wiki [[ausnuetzungsuebertragung]] auf
  `established` (Abgrenzung Nutzweisen-Uebertragung) + [[nutzungsziffern]] geschaerft. Modell C (5 Karten)
  + Modell A (1). Report `outputs/2026-07-10_buch-run26.md`.
- **Seiten distilliert (frueher):** ~965 / 1550 (~482 Doppelseiten). **Run 25 (2026-07-10, Forcierung, 3 Kapitelteile,
  19 Doppelseiten):** Kap. 13 Schluss + Kap. 20 Schluss + Kap. 21 Schluss → **Kap. 13, 20, 21 neu VOLLSTAENDIG**.
  **Kap. 13** (S. 892-916, Shots 449-461): **Fahrzeugabstellplaetze §§ 242-247 PBG** — Normbedarf BZO/PPV
  § 242 Abs. 1, Reduktion + **Maximum § 242 Abs. 2** (Massnahmenplan Lufthygiene/Wegleitung 1997 BGE 124 II 272),
  **autoarme Nutzungen** (Mobilitaetskonzept/Grundbuch-Anmerkung), **Fahrtenmodell** BEZ 2004 Nr. 46,
  Behindertenparkplaetze SIA SN 521 500, § 243 (abschliessend), **nuetzliche Entfernung § 244** (300/600/150-200 m),
  Realerfuellung vor **Ersatzabgabe § 246 / Parkplatzfonds § 247**, Veloabstellplaetze, **§ 248 Spiel-/Ruheflaechen**
  (nur MFH). **Kap. 20** (Shot 732): **§ 357 Abs. 5** Milderung (§ 253a Aussendaemmung 35 cm), **§ 358** Missstaende
  (BGer 1C_567/2014 Steinschlag-Aussiedlung), **§ 307 Brandstattrecht** (Wiederaufbau innert **3 J.**).
  **Kap. 21** (S. 1504-1513, Shots 756-760): **Art. 37a RPG** Gewerbe (Stichtag 1.1.1980/+30 %), **Art. 24d Abs. 1/2/3**
  (Wohnen bleibt Wohnen/Rustico/gemeinsame Voraussetzungen), **Art. 24e** Hobby-Tierhaltung, **Bauen im Wald**,
  § 358a PBG. Neue Destillate [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]] /
  [[band-2/20-ausnahmen-teil2-milderung-missstaende-brandstatt]] / [[band-2/21-ausserhalb-bauzonen-teil2-art37a-24d-24e-wald]].
  NEU Wiki [[fahrzeugabstellplaetze-und-parkierung]]. Modell A (autoarme Nutzung) + Modell C (6 Karten).
  Report `outputs/2026-07-10_buch-run25.md`.
- **Seiten distilliert (frueher):** ~946 / 1550 (~473 Doppelseiten). **Run 24 (2026-07-09, Forcierung, 3 Kapitelteile,
  49 Doppelseiten):** Kap. 8 Schluss + Kap. 13 Teil 2 + Kap. 16 Teil 3. **Kap. 8 «Ausfuehrung» VOLLSTAENDIG**
  (S. 510-535: 8.3 Baustellensicherheit — Rissprotokoll/Beweislast Art. 8 ZGB/BEZ 2016 Nr. 15, VUV/BauAV,
  Entsorgungskonzept > 200 m³ Art. 16 VVEA, Bauherren-Altlast 2/3 Art. 32bis USG, Baulaerm-Stufen A/B/C,
  amtl. Vermessung § 19 KVAV; Kap. endet S. 535). **Kap. 13 → 🟢 weitgehend** (S. 858-891: § 238-Forts.
  Umgebung/Baumschutz, § 239 Regeln der Baukunde/Baumaterialien, **§§ 240/241 Verkehrssicherheit /
  Sichtbereiche 90/150/50 m § 16 StrAV**, Strassenreklamen Art. 6 SVG; offen §§ 242/248 ab S. 892). **Kap. 16
  → 🟢 weitgehend** (S. 1194-1229: Hochhaeuser > 25 m § 282/§ 284/Schattenwurf > 2 h § 30 ABV, Gebaeudelaenge
  § 28 ABV, **Dachaufbauten-Drittelsregel § 292**, Freilegung UG § 293; offen 16.9-Schluss S. 1230 f.).
  Neue Destillate [[band-1/08-ausfuehrung-teil2-baustellensicherheit]] / [[band-2/13-weitere-grundanforderungen-teil2]]
  / [[band-2/16-gebaeudedimensionen-teil3-umgebung]]. Wiki geschaerft [[abstaende-und-hoehen]] (Hochhaeuser/
  Dachaufbauten) + [[bauausfuehrung-und-baukontrolle]] (Baustellensicherheit). Modell C (8 Karten, davon 1
  Modell-A-Drill). Report `outputs/2026-07-09_buch-run24.md`.
- **Seiten distilliert (frueher):** ~897 / 1550 (~448 Doppelseiten). **Run 23 (2026-07-08, Forcierung, 1 grosses
  Kapitel, 21 Doppelseiten): Kap. 4 Natur- und Heimatschutz VOLLSTAENDIG** (S. 268-309, Shots 134-155) →
  **BAND 1 SUBSTANZIELL KOMPLETT** (offen nur Kap. 18 Brandschutz = Querverweis auf Skill `brandschutz`).
  Kern: Schutzobjekt-Katalog **§ 203 Abs. 1 lit. a-g PBG**, Inventare (BLN/ISOS/IVS schutzwuerdig, **binden
  nur die Behoerde**), Massnahmen **§ 205 lit. a-d** (**Kernzone § 50 ≠ Substanzschutz**), Selbstbindung
  § 204, Interessenabwaegung/Verhaeltnismaessigkeit, Provokation § 213 (irreversibel), Rechtsschutz § 211
  Abs. 4. Neues Destillat [[band-1/04-natur-und-heimatschutz]], NEU Wiki [[naturschutz-und-denkmalschutz]].
  Modell C (7) + Modell A (1). TCC-Blockade (Run 19) behoben. Report `outputs/2026-07-08_buch-run23.md`.
- **Seiten distilliert (frueher):** ~855 / 1550. Run 22 (2026-07-06, regulaer, 1 Kapitel):
  +17 Doppelseiten (Kap. 9 Teil 2, S.576-606, Shots 290-306) → **Kap. 9 Rechtsschutz VOLLSTAENDIG; Band 1
  offen nur noch Kap. 4** (Natur-/Heimatschutz, P3, Shots ~130-155/294 ff.). Kernstueck: **aufschiebende
  Wirkung § 339 PBG** (Teilfreigabe bei Nachbarrekurs), Kosten § 338/§ 17 VRG, ausserordentliche Rechtsmittel
  (Revision § 86a), Mediation. Neues Destillat [[band-1/09-rechtsschutz-teil2-ablauf-kosten-revision]], NEU
  Wiki [[rechtsschutz-und-rechtsmittelverfahren]] (synthetisiert Teil 1+2). Modell C (6 Karten) + Modell A (1).
  Report `outputs/2026-07-06_buch-run22.md`.
- **Seiten distilliert (frueher):** ~821 / 1550. Run 21 (2026-07-04, regulaer, 1 Kapitel):
  +13 Doppelseiten (Kap. 5, S.311-334, Shots 156-168) → **Kap. 5 vollstaendig; Band 1 offen nur noch
  Kap. 4 (P3) + Kap. 9-Rest S.575-608.** Run 20 (2026-07-03, Forcierung): +47
  Doppelseiten (Kap. 3 T2 S.240-265 / Kap. 12 T4 S.770-807 / Kap. 10 S.609-636) → **Kap. 3, Kap. 10,
  Kap. 12 vollstaendig; Band 1 bis auf Kap. 4/5 komplett.** Run 18 (2026-07-02): +46 Doppelseiten
  (Kap. 2 T3 / Kap. 3 T1 / Kap. 6 T2). Ausfuehrlicher Vorstand:
  Band 2 weitgehend komplett: Kap. 11/13/14/15
  (inkl. § 274, nur 15.13 offen)/16 (T1+T2)/17 (T1+T2)/19/20 (inkl. § 357 Abs. 4)/21/22/23 + Kap. 12 (T1-T3,
  bis S.769; Teil 4 §236-Rest/Abfall/Altlasten offen); Band 1 **Kap. 1 VOLLSTAENDIG** + **Kap. 2 Teil 1+2**
  (T2 = 2.3 Nutzungsplanung/Zonenarten, Shot 76 offen) + Kap. 6 + 9 Kernbereich + **Kap. 7 VOLLSTAENDIG** +
  **Kap. 8 Teil 1**. Run 17 (regulaer) 2026-06-30: +12 Doppelseiten Kap. 2 Teil 2.
- **Kapitel-Destillate:** 35 Buch-Destillate (Run 22 neu: 09-T2 Rechtsschutz Ablauf/Kosten/Revision; Run 21
  neu: 05 Planung/Entschaedigung) (Band 1: Kap. 1/2×3/3×2/5/6×2/7×2/8/9×2/10; Band 2: Kap. 11/12 (T1+T2/T3/T4)/13/
  14/15×4-Teile/16 (T1+T2)/17 (T1+T2)/19/20/21/22/23; alle `emerging`).
- **Wiki:** 21 Artikel (Run 22 neu [[rechtsschutz-und-rechtsmittelverfahren]] `emerging`; Run 21 neu [[enteignung-und-entschaedigung]] `emerging`; Run 20 neu [[widerrechtliche-bauten-und-sanktionen]] `emerging`; [[baureife-und-erschliessung]] auf `established` — Quartierplan + Altlasten. Frueher: geschaerft [[raumplanung-und-gestaltung]] 2026-06-30 Run 17: **Zonenarten/BZO-
  Platzhalter gefuellt** — numerus clausus § 48 Abs. 2 PBG, Typ-Katalog, Neueinzonung Art. 15 RPG,
  Arealueberbauung §§ 69-73; NEU [[grundlagen-planungs-baurecht]] 2026-06-30 `emerging` (oeff./privates Recht/SIA-
  Normen/Verfassungsgrundsaetze); geschaerft [[raumplanung-und-gestaltung]] 2026-06-30 (Planungsstufen-Belege)
  + [[baureife-und-erschliessung]] 2026-06-30 (rechtl. Sicherung §237 Abs.4 + Versorgung/Entsorgung §236);
  geschaerft [[baureife-und-erschliessung]] 2026-06-28 `emerging` (Zugangsarten/OEV);
  [[bauausfuehrung-und-baukontrolle]] 2026-06-22 `emerging`;
  [[baurechtlicher-vorentscheid-und-voranfrage]] 2026-06-21 `emerging`;
  [[baubewilligungsverfahren]] korrigiert: Baubewilligungsfrist nicht verlaengerbar).
- **Welle 1 (Forcierung) 2026-06-29:** in EINER parallelen Welle 10 Destillate Band 2 geschrieben
  (von parallelen Agenten), Buchhaltung zentral nachgefuehrt: **Kap. 11** (S. 686-704, §§218-232 PBG +
  Hammerschlagsrecht §§229/230) · **Kap. 13 Teil 1** (S. 810-857, §238 Aesthetik-Generalklausel + Solar
  Art.18a RPG) · **Kap. 16 Teil 2** (S. 1154-1193, Gebaeude-/Firsthoehe §§278-281, §292/Art.7a BO
  «Kaeseglocke», §5 ABV gewachsener Boden) · **Kap. 17 Teil 2** (S. 1256-1303, §§295-298 PBG Heizung/
  Fernwaerme, §4 ABV, §§239a/239b BehiG, Schutzraeume) · **Kap. 19** (S. 1357-1403, USG/LRV/LSV, Laerm
  ES I-IV, Art.31/32 LSV, SIA 181) · **Kap. 20 Rest** (S. 1450-1455, §357 Abs.4 Verbesserungen) · **Kap. 15
  §274** (S. 1112-1123, Grenzbaurecht + §27 Abs.2 ABV) · **Kap. 21** (S. 1459-1503, Art.16/16a/24/24a-e RPG,
  Art.42 RPV 30%/100m², Stichtag 1.7.1972) · **Kap. 22** (S. 1517-1534, Nachbarrecht ZGB Art.679/684/685 ff.
  + §§169-178 EG ZGB Pflanzenabstaende) · **Kap. 23** (S. 1537-1549, Glossar mit §-Belegen). Alle
  `emerging`. Damit **Band 2 weitgehend komplett**; Tail = Band 1 Kap. 1-5/10 + Kap. 12-Rest §236.
- **Letzter Lauf:** Run 21, 2026-07-04 (regulaer, 1 Kapitel, 13 Doppelseiten) — **Kap. 5 Planung und
  Entschaedigung VOLLSTAENDIG** (S.311-334, Shots 156-168): **5.1** Wertaenderungen (Art.26 BV); **5.2
  formelle Enteignung** (Art.36 BV kumulativ, **EntG SR711/AbtrG LS781**, enteignungsfaehige Rechte,
  Flughafen **Laerm** [Spezialitaet/Unvorhersehbarkeit Stichtag 1.1.1961/Schwere 10-15 %] ↔ **direkter
  Ueberflug** [1.25°-ILS-Korridor, ≤150m ja/≥350m nein], MIFLU/ESchK, Strassenlaerm Art.17 LSV); **5.3
  materielle Enteignung** (Art.26 Abs.2 BV/Art.5 Abs.2 RPG, **2 Tatbestaende** schwerer Eingriff/Sonderopfer
  **BGE 125 II 433**; Fallgruppen Aus-/Nichteinzonung/Abzonung ~1/3-Schwelle/Umzonung/Baulinien §102/
  Gewaesserraum Art.36a GSchG/Denkmalschutz BGE 117 Ib 264/Polizei/befristete Bauverbote §§122/235/346);
  **5.4** Heimschlag §§41-43/165/214, **Zugrecht §43a** >2/3, Vorkaufsrecht §64, Treu+Glauben,
  **Mehrwertabschoepfung** Art.5 RPG min.20 %/MAG; **5.5 Enteignungsverfahren** (Anmeldung **10 J. §183ter
  EG ZGB**, Rekurs **20 T §46 AbtrG**, **Verkehrswert BGE 102 Ib 273/Alles-oder-nichts**, Vollzug §56 AbtrG).
  Destillat [[band-1/05-planung-und-entschaedigung]], Wiki [[enteignung-und-entschaedigung]] neu. Modell C
  (8 Karten). Report `outputs/2026-07-04_buch-run21.md`. OFFEN: Kap. 4 (P3), Kap. 9 Rest S.575-608.
- **Lauf davor:** Run 20, 2026-07-03 (Forcierung, 3 Kapitelteile parallel, 47 Doppelseiten) —
  **Kap. 3 Teil 2** (S.240-265, Shots 121-133): **Quartierplan §§ 123 ff. PBG** (amtlich § 158 vs. privat
  § 160a/**Einstimmigkeit**, Kombination Gestaltungsplan § 129/§ 81, **Quartierplanbann § 150**, Verfahren
  §§ 147-159, Umlegung/Realersatz/Aequivalenz §§ 137-145, Vollzug §§ 161-176 **Heimschlag § 165/60 T**,
  **Grenzbereinigung §§ 178-183** ≤ 2 Mt./keine Genehmigung, Gueterzusammenlegung §§ 76-94 LG) →
  **Kap. 3 vollstaendig**; **Kap. 12 Teil 4** (S.770-807, Shots 387-406): Anschlussgebuehren Art. 60a
  GSchG, Abfall/Kehricht Art. 30-32b USG/VVEA, **Altlasten Art. 32c/32d USG/AltlV/KbS** (Realleistung
  Standortinhaber ↔ Kostentragung Verursacher; Bauherren-Altlast Art. 32b bis; Veraeusserung Art. 32d bis
  AWEL) → **Kap. 12 vollstaendig**; **Kap. 10** (S.609-636, Shots 307-320): widerrechtliche Bauten —
  formell/materiell, **Wiederherstellung § 341 PBG** (Verhaeltnismaessigkeit, **30-J-Verwirkung**),
  vorsorgl. Massnahmen § 339 Abs. 2/§ 6 VRG, Vollstreckung § 30 VRG, **Strafe § 340 PBG bis 50'000** (auch
  Architekt/Ingenieur; § 340a Verj. 5 J.) → **Kap. 10 vollstaendig, letzte Sektion Band 1**. Neue Destillate
  [[band-1/03-quartierplan-landumlegung-teil2]] / [[band-2/12-baureife-teil4-gebuehren-abfall-altlasten]] /
  [[band-1/10-widerrechtliche-bauten-teil1]]. NEU Wiki [[widerrechtliche-bauten-und-sanktionen]];
  [[baureife-und-erschliessung]] auf `established`. Modell C (9 Karten). Report `outputs/2026-07-03_buch-run20.md`.
  OFFEN: Kap. 4 (P3), Kap. 5 (P3), Kap. 9 Rest S.575-608.
- **Lauf davor:** Run 18, 2026-07-02 (Forcierung, 3 Kapitelteile parallel, 46 Doppelseiten) —
  **Kap. 2 Teil 3** (S.170-204, Shots 76+86-104): Sondernutzung/**Gestaltungsplan §§83-89 PBG** (§83 ersetzt
  Grundordnung; privat **2/3-Quorum §85 Abs.2**; Aufhebung 5 J. §§82/87), **Gestaltungsplanpflicht §48 Abs.3**,
  **preisguenstiger Wohnraum §49b**, **Verfahren Nutzungsplanung** (Auflage 60 T Art.4 RPG/§7, **kant.
  Genehmigung §89/Art.26 Abs.3 RPG konstitutiv**), **einmaliger Rechtsschutz**; **Kap. 3 Teil 1** (S.208-239,
  Shots 105-120): **Erschliessungsarten** Grund/Grob/Fein (Art.19 RPG/Art.4-5 WEG), **Erschliessungspflicht
  Gemeinde 15 J.** (Selbsterschliessung/Bevorschussung Art.19 Abs.3 RPG), **Baulinien §§96 ff./Werkplan
  §§114-119/vorsorgl. Bauverbot §§120-122**, StrG-Mehrwertbeitraege §62; **Kap. 6 Teil 2** (S.402-421, Shots
  202-211): **Anzeigeverfahren §325 PBG/§§13-15 BVV** + **private Kontrolle §§4-7 BBV I** → **Kap. 6
  vollstaendig**. Neue Destillate [[band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3]] /
  [[band-1/03-erschliessung-landsicherung-teil1]] / [[band-1/06-baurechtliches-verfahren-teil2]]. Wiki
  geschaerft: [[raumplanung-und-gestaltung]] + [[baureife-und-erschliessung]] + [[baubewilligungsverfahren]]
  (**Modell-D-Korrektur** §315: 20 statt 30 Tage). Modell C (11) + A (1). Report `outputs/2026-07-02_buch-run18.md`.
  OFFEN: Kap. 3 Teil 2 (Landumlegung ab S.238), Kap. 5/10, Kap. 12 T4.
- **Lauf davor:** Run 17, 2026-06-30 (regulaer, Kap. 2 Teil 2, 12 Doppelseiten) — **2.3 Nutzungsplanung/
  Zonenarten** (S.144-169, Shots 73-85 ohne 76): grundeigentuemerverbindlich Art.21 RPG, **numerus clausus
  Bauzonentypen §48 Abs.2 PBG** (Kern §50/Quartiererhaltung §50a/Zentrum §51/Wohn §52/Industrie-Gewerbe §56
  [Heime ausgeschlossen]/oeff. Bauten §60/Erholung §61/Freihalte §39,62/Reserve §65/**Weiler Art.33 RPV
  ≥10 Geb.**), **Neueinzonung Art.15 Abs.4 RPG** (4 kumulativ), **Arealueberbauung §§69-73 PBG** («Ringling»
  BGer 1C_313/2015), Grundzonenplan 1:5000/Ergaenzungsplaene §§4/10 VDNP, Wald §2 WaG-ZH (800m²/12m/20J),
  Grundwasserschutz S1/S2/S3. Destillat [[band-1/02-nutzungsplanung-zonenarten-teil2]], Wiki
  [[raumplanung-und-gestaltung]] geschaerft (Zonenarten-Platzhalter gefuellt). Modell C (6) + A (1).
  Report `outputs/2026-06-30_buch-run17.md`. OFFEN: Shot 76/S.150-151 (OneDrive-I/O-Fehler) + Kap. 2 Teil 3
  Sondernutzungs-/Gestaltungsplan §§83 ff. PBG.
- **Lauf davor:** Run 16, 2026-06-30 (Forcierung, 3 Kapitelteile parallel, 46 Doppelseiten) —
  **Kap. 1 Grundlagen VOLLSTAENDIG** (S.80-110, Shots 41-56: oeff./privates Baurecht §317 PBG,
  Rechtsquellen, SIA-Normen-Verbindlichkeit §3 Abs.12 BBV I/§360 Abs.3 PBG, Verfassungsgrundsaetze,
  intertemporales Recht §318), **Kap. 2 Teil 1** (S.112-143, Shots 57-72: Ziele Art.1 RPG, 15-J-Bauzone
  Art.15 RPG, Koordination Art.25a RPG, Planungszone §346, Richtplan behoerdenverbindlich Art.9 RPG/§19 PBG),
  **Kap. 12 Teil 3** (S.742-769, Shots 373-386: rechtl. Sicherung §237 Abs.4, Wasser/Energie §236/Loeschwasser
  §16 FeuerwehrV, Abwasser GSchG/Kanalisationsanschluss Art.17). Neues Wiki [[grundlagen-planungs-baurecht]],
  geschaerft [[raumplanung-und-gestaltung]] + [[baureife-und-erschliessung]]. EV (§11/12) als geltend belegt
  (Buch S.750). Modell C (6) + A (1). Report `outputs/2026-06-30_buch-run16.md`.
- **Lauf davor (regulaer):** Run 15, 2026-06-28 — **Kap. 12 Teil 2 (Zugaenglichkeit-Detail/OEV)**, Shots 364-372,
  S. 724-741 (9 Doppelseiten): **12.3.3 Technische Anforderungen/Zugangsarten § 2 Abs. 1 ZN** + die
  **Anhang-ZN-Tabelle** (S. 726: Breite/Radius/lichte Hoehe je WE-Zahl; Kriterium Wohneinheiten =
  baulich Moegliches VB.2002.00273), **Kehrplatz** (Stichstrasse, VSS-Norm SN 640 052), **Erhoehung
  Grenzwerte § 4 Abs. 2 ZN** (dichte+OEV-gute Bebauung), **Fussgaengerschutz** (Bankett 30 cm/Trottoir
  1 m), **Erleichterungen § 11 ZN / wichtige Gruende § 360 Abs. 3 PBG / letzte Bauluecke**,
  **Umweltschutzrecht** (Art. 24 Abs. 2 USG/Art. 30 LSV/§ 128 PBG), **12.3.4 groessere Ueberbauungen**
  (Gleisanschluesse § 237 Abs. 1, Einkaufszentren 2000 m² § 12 BBV II, Schwertransporte § 227 PBG),
  **12.3.5 Erreichbarkeit OEV § 237 Abs. 1 Satz 2 PBG** (kein Erschliessungsanspruch URP 2000/2002,
  ABER Pflicht ab «groesserer Ueberbauung» 300 Bew./Arb./Ausb. → Haltestelle § 4 Abs. 1 AngebotsV,
  § 18 PVG). Destillat [[band-2/12-baureife]] erweitert (Anhang-ZN-Tabelle als Markdown), Wiki
  [[baureife-und-erschliessung]] geschaerft, **Modell C** 6 Karten + **Modell A** 1 Drill. Restschuld
  Kap. 12: Wasser/Energie § 236 + Abwasser/Abfall/Altlasten ab S. 742 / Shot 373.
- **Lauf davor:** Run 14, 2026-06-26 — **Kap. 12 Teil 1 (Baureife)**, Shots 355-363, S. 707-723
  (9 Doppelseiten): **12.1 Allgemeines**, **12.2 Planungsrechtliche Baureife § 234** (negative Vorwirkung,
  Abgrenzung § 150/§ 264/Planungszone § 346 3+2 J./§ 120), **12.3 Zugaenglichkeit Teil 1** (§§ 234-237,
  Erreichbarkeit 80/40 m, Notzufahrt 3 m/16 t § 3 ZN). Neues Destillat [[band-2/12-baureife]], neuer
  Wiki-Artikel [[baureife-und-erschliessung]]. (Run 13, 2026-06-22: Kap. 8 Teil 1; Run 12, 2026-06-21:
  Kap. 7 Teil 2 → Phasenwechsel Phase 2.)
- **⚠ Run 19 (2026-07-02) ABGEBROCHEN — TCC-Blockade:** Quell-Screenshots im OneDrive-CloudStorage-Ordner nicht lesbar (`cat`/`cp`/`xattr` → «Operation not permitted», auch ohne Sandbox; `stat`/`ls` OK, Dateien materialisiert, OneDrive online). Der ausfuehrende Prozess hat keinen **Festplattenvollzugriff** auf den geschuetzten CloudStorage-Ort (analog launchd→SMB). **Fix noetig, bevor der naechste TRANSFER laufen kann** — Report `outputs/2026-07-02_buch-run19-BLOCKED.md`. Kein Distillat geschrieben, Register unveraendert; +1 belegte Modell-A-Karte aus vorhandenem Destillat.
- **Naechster Lauf:** ~~Kap. 13 Schluss (§§ 242-248) / Kap. 20 Schluss (§ 357 Abs. 5/§ 358/§ 307) / Kap. 21
  Schluss (Art. 37a/24d/24e)~~ **erledigt Run 25 (2026-07-10) → Kap. 13/20/21 VOLLSTAENDIG.** ~~**Kap. 14**
  Mischrechnungsverbot/Tail (Shots 489/492/495/497/499/500)~~ **erledigt Run 26 (2026-07-10) → Kap. 14 (P1)
  VOLLSTAENDIG, Mischrechnungsverbot geklaert.** ~~**Kap. 17** Garagen/Haustechnik (ab Shot 656) /
  **Kap. 19-Rest** (ab Shot 706)~~ **erledigt Run 27 (2026-07-11) → Kap. 17 substanziell komplett, Kap. 19
  VOLLSTAENDIG.** Verbleibende **Band-2-Kleinreste** (nur noch Feinschliff, je schon `emerging`-Destillat):
  **Kap. 15.13** Harmonisierungsvorlage (S. 1124-1133), **Kap. 16.9-Schluss / Kap. 17.10-Rest** nPBG
  (S. 1230 f. / S. 1320 f., teils via [[kap16-10_gebaeudedimensionen-harmonisierung]]), **Kap. 11** (Feinschliff
  §§ 218-232). Kap. 18 Brandschutz **nur Querverweis** auf Skill `brandschutz`. **Alle substanziellen Kapitel
  damit geschlossen → Forcierungs-Phase kann abgeschlossen werden: Cron auf woechentlich (`30 7 * * 1`)
  heruntertakten + Phase 3 (Erhaltung/Drills + Modell-D-Volltextabgleich der needs-verification); die Kleinreste
  (15.13/16.9/17.10/11) in Phase 3 mitnehmen.** *(erledigt Run 20: Kap. 3 T2 / Kap. 10 / Kap. 12 T4 → Kap. 3/10/12 vollstaendig.)* Alt-Notiz:  **Kap. 2 Teil 2 (HOHE Prio)** — S. 142 ff. / 2.3 Nutzungsplanung (Zonenarten/BZO/
  Sondernutzung/Quartierplan/Nutzungsplanverfahren), Shots ab 73; plus **Band-1-Tail** Kap. 3 (Erschliessung/
  Landumlegung, ab Shot 105/S. 207), Kap. 5 (Entschaedigung), Kap. 10 (widerrechtliche Bauten, S. 609);
  dazu **Kap. 12 Teil 4** (Band 2, S. 770-809: Anschlussgebuehren-Rest + Abfall/Kehricht + Altlasten
  Art. 32c USG — schliesst das Kapitel). Band-2-Restschulden nur noch klein (Kap. 13 §§239a/240/242/248,
  Kap. 15.13 Harmonisierungsvorlage, Kap. 16 «Umgebung», Kap. 17 Garagen §§37-39 BBV I, Kap. 19 ab Shot 706,
  Kap. 20 § 357 Abs. 5/§ 307, Kap. 21 Art.24d/24e/37a, Kap. 8 Rest S.510-534).
- ~~**Restschuld Kap. 12 (Teil 4):**~~ **erledigt Run 20** (2026-07-03): Anschlussgebuehren + Abfall/
  Kehricht + Altlasten Art. 32c/32d USG (S. 770-807) distilliert → [[band-2/12-baureife-teil4-gebuehren-abfall-altlasten]].
  **Kap. 12 vollstaendig.**
- ~~**Restschuld Kap. 8:**~~ **erledigt Run 24 (2026-07-09):** 8.3 Baustellensicherheit + Entsorgung +
  Bauemissionen + amtl. Vermessung (S. 510-535) → [[band-1/08-ausfuehrung-teil2-baustellensicherheit]].
  **Kap. 8 vollstaendig (Kap. endet S. 535).**
- ~~**Restschuld Kap. 20:**~~ **erledigt Run 25 (2026-07-10):** § 357 Abs. 5 Milderung + § 358 baupolizeiliche
  Missstaende + Brandstattrecht § 307 PBG (S. 1456-1457) → [[band-2/20-ausnahmen-teil2-milderung-missstaende-brandstatt]].
  **Kap. 20 vollstaendig.**
- **TRANSFER ABGESCHLOSSEN (festgestellt Buch-Run 49, 20.07.2026):** Alle Inhaltskapitel
  beider Baende sind destilliert (Kap. 1–17 und 19–23; Kap. 2 mit bekanntem Set-Rest
  S. 152–169, siehe curriculum.md). Die frueheren Restschuld-Notizen (Kap. 6/14/15/16/17)
  waren VERALTET — am Inventar und an den Quellen verifiziert: Shots 486–495 [x], §§ 269–274
  [x], Kap.-16-Schluss S. 1230 (16.9.3) in [[band-2/kap16-10_gebaeudedimensionen-harmonisierung]]
  erfasst (Run 49 direkt am Shot 619 verifiziert und angereichert), Kap.-17-Ausruestungen [x],
  «Restschuld Kap. 6 S. 405–422» war nur der Kapiteltrenner Kap. 7 (Shot 212, S. 422/423, leer).
- **Verbleibende offene Shots — KEIN Destillationsstoff:** 1–40 Front-Matter Band 1 (Titel/
  Verzeichnisse bis S. ~77); 321–344 Front-Matter Band 2 (Titelseite S. 638/639 am Bild
  verifiziert, Verzeichnisse bis Kap.-11-Start S. 685); 664–681 Kap. 18 Brandschutz (BEWUSST
  ausgelassen → Skill `brandschutz`, kein Doppelaufbau).
- **Kuenftige Laeufe = Phase 3:** Drills, Modell-D-Volltextverifikationen offener Wiki-Artikel
  (z.B. [[wohnhygiene-und-raumanforderungen]] `emerging` bis PBG §§ 299–306 verifiziert),
  QUESTIONS-Restposten, Aktualitaets-Checks (Beispiel HWSchV-Aufhebung Run 48). Die
  Ruecktaktung auf woechentlich (Phase 3) ist seit Run 48 VORGESCHLAGEN — Entscheid Raphael.
- Detailstand: `buecher/seiten-inventar.md` (Shots) + `buecher/INDEX.md` (Abdeckung) +
  `curriculum.md` (Kapitel).
- **Buch-Run 85 (2026-08-23):** Reglemente-Queue 2414 Thalwil (T1-T8) weiterhin vollstaendig
  abgearbeitet seit Run 79, keine offenen QUESTIONS mehr ohne Raphael-Entscheid/externen Akt
  (Run 84). Fortsetzung Phase 3 mit dem von Run 84 vorgeschlagenen Schritt: Modell-D-Re-
  Verifikation des aeltesten `verifiziert`-Datums unter den `established`-Artikeln —
  [[baubewilligungsverfahren]] (2026-07-13). Fund: § 315 Abs. 1 PBG «schriftlich» war seit
  1.4.2024 durch «elektronisch ueber die Plattform» ersetzt, Register-Sweep-Luecke zu
  [[bauausfuehrung-und-baukontrolle]] (dort fuer § 326 PBG bereits erfasst) geschlossen.
  **Naechster Schritt fuer einen kuenftigen Lauf:** zweitaeltestes Datum
  [[baureife-und-erschliessung]] (2026-07-14) re-verifizieren; oder die in Run 85 offen
  gelassene GG-Luecke (§§ 41/44/45/48/50/51 Gemeindegesetz, nicht in `raw/`, kein Erlass-Key
  im Connector `recht-ch.mjs`) durch frischen zhlex-Bezug schliessen (Muster: VErV in Run 83).
- **Buch-Run 86 (2026-08-23):** Modell-D-Re-Verifikation von [[baureife-und-erschliessung]]
  (zweitaeltestes `verifiziert`-Datum, Vorschlag Run 85) — §§ 233-237 PBG (Grundanforderungen/
  Baureife-Kern) gegen `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133) gegengelesen, CONFIRMED
  wortgetreu (inkl. der bereits fruehere Praezisierungen «Behandlung nicht Beseitigung» und
  «Gemeindevorstand»). **Fund:** die Fundstelle «§ 232 PBG / Art. 11 GSchG» fuer die
  gebaeudebezogene Trennsystem-Pflicht (Meteor-/Schmutzwasser getrennt ableiten) traegt die
  Aussage nicht mehr — § 232 PBG regelt nur eine Duldungspflicht fuer geringfuegige oeffentliche
  Einrichtungen, das PBG enthaelt keine Kanalisationsbestimmung mehr; Art. 11 GSchG regelt nur die
  Anschlusspflicht, nicht die Trennung (amtlicher Fedlex-Volltext SR 814.20, frisch bezogen ueber
  die `fedlex.data.admin.ch`-Route, Konsolidierung 1.1.2022). Falsche Fundstelle entfernt, Befund
  dokumentiert, exakte heutige Rechtsgrundlage als offene Frage in `wiki/QUESTIONS.md` vermerkt
  (nicht geraten). **Naechster Schritt fuer einen kuenftigen Lauf:** drittaeltestes
  `verifiziert`-Datum unter den `established`-Artikeln pruefen; oder die GG-Luecke aus Run 85;
  oder die offene Trennsystem-Frage durch WsV-/VSA-Norm-Recherche schliessen.
- **Buch-Run 87-89 (2026-08-23):** ausserhalb dieser Re-Verifikations-Kette — Korpus-Queue
  Batch T9 (Restdateien Reglemente-Ordner 2414 Thalwil) sowie zwei Priorität-(d)-Nachtraege
  in [[umgebungsgestaltung-und-einfriedungen]] (Rechtsprechungs-Register § 238 Abs. 1 PBG,
  §§ 10-12 StrAV). Damit ist die Reglemente-Queue T1-T9 UND Prioritaet (d) erschoepft — Details
  in `training/KORPUS-QUEUE-thalwil-reglemente.md` und CHANGELOG.
- **Buch-Run 90 (2026-08-23):** Fortsetzung der Re-Verifikations-Kette (Vorschlag Run 86,
  drittaeltestes `verifiziert`-Datum). Drei `established`-Artikel lagen gleichauf auf
  2026-07-25 ([[ausnuetzungsuebertragung]], [[bestandsumbau-eingriffstiefe]],
  [[nutzungsziffern]]); gewaehlt wurde [[bestandsumbau-eingriffstiefe]] als unabhaengigster
  Kandidat (eigener Rechtsraum PBG **Kanton Schwyz**, nicht gemeinsam mit den beiden anderen
  in Run 55 bereits mitgeprueft). §§ 59-65 + § 72 Abs. 1-4 PBG SZ frisch von sz.ch bezogen
  (`pdftotext -layout`) und Wort fuer Wort gegen `raw/260725_amtlich_sz_pbg.md` verglichen —
  CONFIRMED wortgleich, 0 Korrekturen, Fassungsstand weiterhin SRSZ 1.2.2025 (kein Drift seit
  Run 57). Kein neuer raw-Bezug noetig. **Naechster Schritt fuer einen kuenftigen Lauf:**
  [[ausnuetzungsuebertragung]] oder [[nutzungsziffern]] (beide noch auf 2026-07-25, viertaeltestes
  Datum) re-verifizieren; oder die GG-Luecke aus Run 85; oder die offene Trennsystem-Frage aus
  Run 86.
- **Buch-Run 91 (2026-08-23):** GG-Luecke aus Run 85 geschlossen (einer der drei von Run 90
  vorgeschlagenen naechsten Schritte, gewaehlt als konkretester ohne Recherche-Unsicherheit).
  GG (LS 131.1, Nachtrag 132) frisch von zhlex bezogen (kein Connector-Key), §§ 38-52 +
  170-171 gegen [[baubewilligungsverfahren]] gegengelesen. **1 Korrektur:** § 41 GG regelt
  Praesidialentscheide, nicht «Bauvorstand/einzelne Mitglieder» — diese Delegation steht in
  § 44 GG (derselben Norm wie «Ausschuss»). Uebrige Fundstellen (§§ 45/48/50/51/170 GG)
  CONFIRMED wortgleich. Neu: `raw/260823_amtlich_zh_gg.md`. **Naechster Schritt fuer einen
  kuenftigen Lauf:** [[ausnuetzungsuebertragung]] oder [[nutzungsziffern]] re-verifizieren
  (weiterhin viertaeltestes Datum); oder die offene Trennsystem-Frage aus Run 86.
- **Buch-Run 92 (2026-08-23):** [[ausnuetzungsuebertragung]] re-verifiziert (Vorschlag Run 90/91,
  viertaeltestes `verifiziert`-Datum). Art. 40 BO Erlenbach und Art. 6 BZO Zuerich-Stadt frisch
  von `oerebdocs.zh.ch` bezogen (PyMuPDF, layout-treu, da kein `pdftotext` auf dieser Station
  verfuegbar war) und gegengelesen. **2 Korrekturen:** (1) das Wiki-Zitat von Art. 40 BO
  Erlenbach gab bislang eine direkte Grenznachbarschaft wieder («direkt aneinandergrenzen») —
  die amtliche Fassung verlangt nur **raeumliche Naehe**, ein spuerbar weniger strenger Massstab,
  zweifach im Artikel propagiert (Zitatblock + Anwendungs-Transfer-Abschnitt), beide Stellen
  korrigiert. (2) Praezisierung der Rechtsgrundlage: die amtliche Gemeinde-Wegleitung zu Art. 40
  selbst nennt **§ 259 Abs. 1 PBG** als kantonale Anknuepfungsnorm, nicht § 254 PBG (das im
  Hauptteil ohnehin nur Abschnittstitel ohne eigenen Absatz ist, siehe [[nutzungsziffern]] Run
  55). **1 CONFIRMED trotz Extraktions-Fussfalle:** Art. 6 Abs. 3 BZO Zuerich-Stadt
  (150 m/300 m-Wohnflaechen-Verlegung) ist richtig zitiert, obwohl die Absatz-Nummerierung in
  `raw/260607_amtlich_zh_bzo-zurich-stadt.md` an dieser Stelle durch die PDF-Extraktion
  verschoben ist (Fussnote 25 verschmilzt mit der Artikelnummer, Abs.-2-Marker fehlt sichtbar) —
  Fussnote im Wiki-Artikel gesetzt, kein Raw-Edit (Rule `wissens-bibliothekar`: raw/ wird nie
  editiert). Kein neuer `raw/`-Volltext, kein Status-Wechsel. Report `outputs/2026-08-23_buch-run92.md`.
  **Naechster Schritt fuer einen kuenftigen Lauf:** die offene Trennsystem-Rechtsgrundlage aus
  Run 86 (Meteor-/Schmutzwasser-Trennung, vermutet WsG/WsV oder VSA-Norm/SIA 190) recherchieren;
  oder das naechstaelteste `verifiziert`-Datum unter den `established`-Artikeln neu bestimmen.
- **Buch-Run 93 (2026-08-23):** Trennsystem-Luecke aus Run 86 geschlossen (einer der zwei von
  Run 92 vorgeschlagenen naechsten Schritte, gewaehlt als konkret benannt und mit vorhandenem
  Rohbestand loesbar). Fund im bereits ingestierten `raw/260803_amtlich_zh_wsv.md` (WsV, Nachtrag
  133, in Kraft seit 01.06.2026): **§§ 97/98 WsV** tragen die gebaeudebezogene Trennsystem-Pflicht
  (getrennte Grundstuecksentwaesserung bei erheblichem Eingriff, lokale Versickerung, Stufenfolge
  bei technischer Unmoeglichkeit) — WsV, nicht WsG, ist die tragende Norm. Methodische Lehre: die
  «0 Treffer»-Meldung aus Run 86 liess sich mit einem erneuten `grep` sofort widerlegen — kein
  Fassungsstand-Drift, sondern eine unvollstaendige Suche im vorangegangenen Lauf. Kein neuer
  `raw/`-Volltext noetig. [[baureife-und-erschliessung]] ergaenzt, `wiki/QUESTIONS.md` als GEKLAERT
  markiert. Report `outputs/2026-08-23_buch-run93.md`. **Naechster Schritt fuer einen kuenftigen
  Lauf:** das naechstaelteste `verifiziert`-Datum unter den `established`-Artikeln neu bestimmen
  (Re-Verifikations-Kette fortsetzen) — mit Run 92/93 sind alle Artikel bis Datum 2026-07-25
  abgedeckt, als naechstes zu pruefen waeren Artikel mit `verifiziert`-Datum ab August 2026 oder
  ganz ohne `verifiziert`-Feld (Bestand einmal durchzaehlen).
- **Buch-Run 94 (2026-08-23):** Fortsetzung der Re-Verifikations-Kette (Vorschlag Run 93,
  aeltestes `verifiziert`-Datum). Vollstaendiger Abgleich aller `verifiziert`-Felder unter den
  `established`-Artikeln (Skript-Scan, nicht aus altem Ranking fortgeschrieben) bestaetigte
  [[nutzungsziffern]] (2026-07-25, Run 55) als einzig verbliebenes aeltestes Datum — gewaehlt.
  §§ 251/253a/254-260/276/52 PBG (Hauptteil UND Anhang) frisch von notes.zh.ch bezogen (aktueller
  Nachtrag laut zhlex.zh.ch: **134**, nicht mehr 133) und Wort fuer Wort gegen
  `raw/260607_amtlich_zh_pbg.md` und den Artikeltext gegengelesen — **CONFIRMED wortgleich, 0
  Korrekturen**. Genuiner Fund (kein Fehler, aber fassungsstand-relevant fuer die ganze KB):
  Nachtrag 134 ist amtlich publiziert (01.08.2026), tritt aber **erst per 01.10.2026 in Kraft**
  (PDF-Fusszeile «1.10.26 - 134» vs. bestehend «1.7.26 - 133») — heute gilt weiterhin Nachtrag
  133, kein Drift im Bestand. Ob Nachtrag 134 andere KB-Zitate aendert, ungeprueft — Beobachten-
  Eintrag in `wiki/QUESTIONS.md` mit Empfehlung fuer einen Lauf nach dem 01.10.2026. ABV
  unveraendert bei Nachtrag 127 (zhlex.zh.ch bestaetigt). Kein neuer `raw/`-Volltext (bestehender
  Nachtrag-133-Raw bleibt gueltig). Report `outputs/2026-08-23_buch-run94.md`. **Naechster Schritt
  fuer einen kuenftigen Lauf:** die 12 Artikel mit `verifiziert`-Datum 2026-07-27 (Festigungsmodus-
  Batch: [[ausnahmebewilligung-und-bestandesschutz]], [[bauausfuehrung-und-baukontrolle]],
  [[baulinien-und-abstandslinien]], [[baurechtlicher-vorentscheid-und-voranfrage]],
  [[enteignung-und-entschaedigung]], [[geschosse-und-kniestock]], [[naturschutz-und-denkmalschutz]],
  [[nebenbestimmungen-und-reverse]], [[raumplanung-und-gestaltung]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]],
  [[wohnhygiene-und-raumanforderungen]]) sind jetzt gemeinsam die aeltesten — einen davon als
  naechstes waehlen (unabhaengigster Rechtsraum/Themenblock bevorzugen, analog Run 90); danach
  [[fahrzeugabstellplaetze-und-parkierung]] (2026-07-30) und [[grundlagen-planungs-baurecht]]
  (2026-08-03). Zusaetzlich zu pruefen: die von Nachtrag 134 evtl. betroffenen Fundstellen nach
  dessen Inkrafttreten (01.10.2026, siehe QUESTIONS.md Beobachten-Eintrag).
- **Buch-Run 95 (2026-08-23):** Fortsetzung der Re-Verifikations-Kette (Vorschlag Run 94, aus den
  12 gleichauf liegenden Artikeln). [[wohnhygiene-und-raumanforderungen]] gewaehlt (unabhaengigster
  Rechtsraum: Wohnhygiene/Haustechnik/Energie statt Ausnuetzung/Erschliessung). EnerG (Nachtrag 129)
  und BBV I (Nachtrag 133) live gegen zhlex.zh.ch geprueft — **beide ohne Drift**. Vollstaendiger
  Wortlautabgleich §§ 299-306 PBG, § 32 ABV, § 40 BBV I, §§ 7/10/11 BBV II,
  §§ 9/10a/10b/10c/11/11a/11b/12/12b/13/13a-d EnerG — **CONFIRMED, 0 Korrekturen**. Genuiner Fund:
  § 40 BBV I traegt im amtlichen PDF einen widerspruechlichen Marginal-Titel («mehr als sechs
  Geschossen») gegenueber dem operativen Gesetzestext («mehr als fuenf») — als Fussnote im Wiki
  dokumentiert, keine Wiki-Korrektur noetig (Zitat war bereits richtig). Report
  `outputs/2026-08-23_buch-run95.md`. **Naechster Schritt fuer einen kuenftigen Lauf:** von den
  verbleibenden 11 Artikeln mit `verifiziert`-Datum 2026-07-27 einen unabhaengigen Rechtsraum
  waehlen ([[ausnahmebewilligung-und-bestandesschutz]], [[bauausfuehrung-und-baukontrolle]],
  [[baulinien-und-abstandslinien]], [[baurechtlicher-vorentscheid-und-voranfrage]],
  [[enteignung-und-entschaedigung]], [[geschosse-und-kniestock]], [[naturschutz-und-denkmalschutz]],
  [[nebenbestimmungen-und-reverse]], [[raumplanung-und-gestaltung]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]]); danach
  [[fahrzeugabstellplaetze-und-parkierung]] (2026-07-30) und [[grundlagen-planungs-baurecht]]
  (2026-08-03).
- **Buch-Run 96 (2026-08-23):** Fortsetzung der Re-Verifikations-Kette (Empfehlung Run 95).
  [[baurechtlicher-vorentscheid-und-voranfrage]] gewaehlt (eigener Quellenkreis §§ 213/310/315/
  322-324 PBG, unabhaengig von den Themenbloecken Nutzungsmass/Erschliessung/Wohnhygiene aus
  Run 92-95). Buch-Destillat [[07-vorentscheid-auskuenfte-besondere-zustaendigkeiten]] gegengelesen,
  keine neue Diskrepanz. Vollstaendiger Wortlautabgleich aller sechs zitierten Paragraphen gegen
  `raw/260607_amtlich_zh_pbg.md` — **CONFIRMED wortgleich, 0 Korrekturen**. Fassungsstand PBG
  unveraendert Nachtrag 133; der am selben Tag in Run 94 festgestellte Nachtrag 134 (in Kraft erst
  01.10.2026) betrifft keinen der hier zitierten Paragraphen. Report
  `outputs/2026-08-23_buch-run96.md`. **Naechster Schritt fuer einen kuenftigen Lauf:** von den
  verbleibenden 10 Artikeln mit `verifiziert`-Datum 2026-07-27 einen unabhaengigen Rechtsraum
  waehlen ([[ausnahmebewilligung-und-bestandesschutz]], [[bauausfuehrung-und-baukontrolle]],
  [[baulinien-und-abstandslinien]], [[enteignung-und-entschaedigung]], [[geschosse-und-kniestock]],
  [[naturschutz-und-denkmalschutz]], [[nebenbestimmungen-und-reverse]],
  [[raumplanung-und-gestaltung]], [[rechtsschutz-und-rechtsmittelverfahren]],
  [[widerrechtliche-bauten-und-sanktionen]] — Run 95 hob [[raumplanung-und-gestaltung]] als
  ebenfalls lange unberuehrt mit eigenem Quellenkreis hervor); danach
  [[fahrzeugabstellplaetze-und-parkierung]] (2026-07-30) und [[grundlagen-planungs-baurecht]]
  (2026-08-03). Unabhaengig davon: nach dem 01.10.2026 das vollstaendige Aenderungsverzeichnis
  von PBG-Nachtrag 134 gegen `zhlex.zh.ch` ziehen (siehe `wiki/QUESTIONS.md`).
- **Buch-Run 97 (2026-08-23):** Fortsetzung der Re-Verifikations-Kette (Empfehlung Run 95/96).
  [[raumplanung-und-gestaltung]] gewaehlt (eigener Quellenkreis: erstmals in dieser Kette primaer
  Bundesrecht RPG/RPV/BV statt kantonalem PBG allein). Art. 1/4/9/15/21/25a/26 RPG (Stand
  1.7.2026), Art. 33 RPV (Stand 1.1.2026) und Art. 75 BV (Stand 1.1.2024) frisch von
  `fedlex.data.admin.ch` bezogen und wortlautgeprueft — diese sieben Bundesrechts-Zitate waren
  bislang **nie** gegen den amtlichen Volltext verifiziert. Zusaetzlich §§ 44a/49b/82-89/238 PBG
  gegen `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133, unveraendert) erneut CONFIRMED. **2 echte
  Korrekturen:** (1) die 15-Jahre-Bauzonenregel war Art. 15 Abs. 1 RPG, § 18 lit. b PBG und
  Art. 75 Abs. 1 BV gebuendelt zugeschrieben, obwohl nur Art. 15 Abs. 1 RPG die Zahl enthaelt —
  jetzt getrennt zugeordnet, analog dem Buch-Destillat selbst (das die drei Aussagen bereits
  getrennt fuehrt); (2) Art. 15 Abs. 4 RPG hat FUENF kumulative Kriterien (lit. a-e), der Artikel
  nannte nur lit. a-d und liess lit. e (Richtplankonformitaet) aus. **1 klarstellende Fussnote:**
  die "≥10 Gebaeude"-Schwelle der Weilerzone steht nicht im Verordnungswortlaut von Art. 33 RPV
  (nur die Ermaechtigung dazu), sondern ist eine Buch-/Praxis-Konkretisierung. Report
  `outputs/2026-08-23_buch-run97.md`. **Naechster Schritt fuer einen kuenftigen Lauf:** von den
  verbleibenden 9 Artikeln mit `verifiziert`-Datum 2026-07-27 einen unabhaengigen Rechtsraum
  waehlen ([[ausnahmebewilligung-und-bestandesschutz]], [[bauausfuehrung-und-baukontrolle]],
  [[baulinien-und-abstandslinien]], [[enteignung-und-entschaedigung]], [[geschosse-und-kniestock]],
  [[naturschutz-und-denkmalschutz]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]]); danach
  [[fahrzeugabstellplaetze-und-parkierung]] (2026-07-30) und [[grundlagen-planungs-baurecht]]
  (2026-08-03). Unabhaengig davon: nach dem 01.10.2026 das vollstaendige Aenderungsverzeichnis
  von PBG-Nachtrag 134 gegen `zhlex.zh.ch` ziehen (siehe `wiki/QUESTIONS.md`).
- **Buch-Run 98 (2026-08-23):** statt eines weiteren Re-Verifikationslaufs an einem der 9 von
  Run 97 vorgeschlagenen, bereits am 2026-07-27 gruendlich mit Modell D geprueften Kandidaten
  wurde der seit Erstellung (2026-07-04) offene Punkt in [[enteignung-und-entschaedigung]]
  geschlossen: **ZH-Mehrwertausgleich (MAG)**, bisher nur als Buchstand 2019 (Entwurf) zitiert,
  nie als eigener `raw/`-Volltext beschafft. MAG (LS 700.9, Nachtrag 134) frisch von
  zhlex.zh.ch geladen (`raw/260823_amtlich_zh_mag.md`, neu). **2 echte Korrekturen:** kantonaler
  Satz ist FIX 20 % ohne Auf-/Umzonungs-Variante (§ 4 Abs. 1 MAG, statt Entwurfs-"5 %"; § 2
  Abs. 1 MAG begrenzt die kant. Abgabe zudem sachlich auf Einzonung + Umzonung fuer oeffentliche
  Bauten — allgemeine Auf-/Umzonung loest KEINE kant. Abgabe aus); kommunaler Hoechstsatz 40 %
  (§ 19 Abs. 3 MAG, statt Entwurfs-"15 %"), mit eigenem 100'000-Fr.-Freibetrag + Flaechenschwelle
  1'200-2'000 m² (§ 19 Abs. 2 MAG). Kantonaler Freibetrag < 30'000 Fr. CONFIRMED unveraendert.
  Kein Fassungsstand-Drift — Differenz stammt aus Entwurf-vs-erlassen, nicht aus Revision. Report
  `outputs/2026-08-23_buch-run98.md`. **Naechster Schritt:** von den verbleibenden 8 Artikeln
  ([[ausnahmebewilligung-und-bestandesschutz]], [[bauausfuehrung-und-baukontrolle]],
  [[baulinien-und-abstandslinien]], [[geschosse-und-kniestock]],
  [[naturschutz-und-denkmalschutz]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]]) einen
  unabhaengigen Rechtsraum waehlen — Empfehlung [[naturschutz-und-denkmalschutz]] (eigener
  Quellenkreis NHG/KNHV) oder [[bauausfuehrung-und-baukontrolle]] (aeltestes `last_updated`
  2026-07-12, nie vollstaendiger Fliesstext-Refresh).
- **Buch-Run 99 (2026-08-23):** Empfehlung Run 98 gefolgt. [[naturschutz-und-denkmalschutz]]
  gewaehlt (eigener Quellenkreis NHG/KNHV/BV). Buch-Destillat [[04-natur-und-heimatschutz]]
  gegengelesen, keine neue Diskrepanz. Der Artikel trug bereits einen gruendlichen PBG-/KNHV-
  Wortlautabgleich (Run 31/33/61), aber **keinen einzigen** der neun zitierten Bundesrechts-
  Artikel hatte je einen Volltextabgleich — gleiche Luecke wie bei [[raumplanung-und-gestaltung]]
  (Run 97). Art. 78 Abs. 1 BV (Stand 1.1.2024), Art. 2/3/5/7/8/13/17/17a/25 NHG (Stand 1.8.2025 —
  `www`-Route lieferte App-Huelle, `fedlex.data.admin.ch` mit Datum 20250801 funktionierte) und
  Art. 17 RPG (Stand 1.7.2026) frisch bezogen und Artikel fuer Artikel wortgetreu geprueft —
  **CONFIRMED wortgleich, 0 Korrekturen** an allen zehn Zitaten (anders als Run 97/98 diesmal
  keine Korrektur noetig). PBG-Fassungsstand nicht erneut geprueft (Run 94/96/98 haben Nachtrag
  133 am selben Tag mehrfach bestaetigt). Kein neuer `raw/`-Volltext (gleiches Vorgehen wie
  Run 97). Report `outputs/2026-08-23_buch-run99.md`. **Naechster Schritt fuer einen kuenftigen
  Lauf:** von den verbleibenden 7 Artikeln ([[ausnahmebewilligung-und-bestandesschutz]],
  [[bauausfuehrung-und-baukontrolle]], [[baulinien-und-abstandslinien]],
  [[geschosse-und-kniestock]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]]) einen
  unabhaengigen Rechtsraum waehlen — Empfehlung [[bauausfuehrung-und-baukontrolle]] (aeltestes
  `last_updated` 2026-07-12, nie vollstaendiger Fliesstext-Refresh, nur punktuelle Fassungsstand-
  Nachtraege Run 58/64).
- **Buch-Run 100 (2026-08-23):** Empfehlung Run 99 gefolgt. [[bauausfuehrung-und-baukontrolle]]
  gewaehlt (aeltestes `last_updated`, nie vollstaendiger Fliesstext-Refresh). Konkurrenz-Check
  (`ps aux`) bestaetigt: nur der eigene `-p`-Prozess dieser Session bearbeitet `wissen/baurecht/`.
  Der Artikel trug bereits einen gruendlichen PBG-/VRG-Wortlautabgleich (Run 30/31/58/64), aber
  **keinen einzigen** der zitierten Bundesrechts-Artikel (ZGB/BV/USG/LSV) hatte je einen
  Volltextabgleich — gleiche Luecke wie bei [[raumplanung-und-gestaltung]] (Run 97) und
  [[naturschutz-und-denkmalschutz]] (Run 99). Art. 8/679/684/836 ZGB (Stand 1.1.2026) und Art. 29a
  BV (Stand 1.1.2024) frisch bezogen — **CONFIRMED wortgleich, 0 Korrekturen** an allen fuenf
  Zitaten. **2 echte Befunde bei den USG/LSV-Zitaten:** (1) Art. 32bbis USG ist inhaltlich richtig
  zitiert, aber die **Geltendmachungsfrist des Rueckforderungsanspruchs (Abs. 3) ist seit
  1.11.2021 abgelaufen** — die Norm steht unveraendert im Gesetz, der praktische Anwendungsfall
  ist heute verwirkt; im Artikel als Praezisierung ergaenzt, nicht als Streichung. (2) Der Beleg
  «Art. 38 Abs. 2 USG» fuer das Vorsorgeprinzip der Baulaerm-Richtlinie war **falsch** — § 38 USG
  regelt Aufsicht/Vollzugskoordination des Bundes, nicht die Vorsorge. Amtlich richtig: Art. 6 LSV
  traegt die Erlasskompetenz fuer die Baulaerm-Richtlinien selbst (bestaetigt durch die
  Ermaechtigungsklausel der LSV, die Art. 38 nicht, aber Art. 5/12/13/16/19/21/23/39/40/45 USG
  nennt), das Vorsorgeprinzip steht in Art. 11 Abs. 2 USG — Zitat korrigiert. Kein neuer
  `raw/`-Volltext (gleiches Vorgehen wie Run 97/99). Report `outputs/2026-08-23_buch-run100.md`.
- **Buch-Run 101 (2026-08-23):** [[widerrechtliche-bauten-und-sanktionen]] gewaehlt — von den 6
  verbleibenden Kandidaten der Artikel mit den meisten unverifizierten Bundesrechts-Zitaten (RPG,
  BV, StGB, OR, ZGB, StPO ueber 6 verschiedene Erlasse). Konkurrenz-Check (`ps aux`) bestaetigt: nur
  der eigene `-p`-Prozess dieser Session bearbeitet `wissen/baurecht/`. Alle 12 Bundesrechts-Zitate
  gegen frische fedlex-Volltexte geprueft (RPG Stand 1.7.2026, BV 1.1.2024, StGB 1.1.2026, OR
  1.1.2026, StPO 1.7.2024). **11/12 CONFIRMED wortgleich.** **1 echte Korrektur:** Art. 229 Abs. 1
  StGB (Vorsatz) ist seit 1.7.2023 Freiheitsstrafe bis **5** Jahre, nicht 3 — die 3-Jahres-Grenze
  gilt nur fuer Abs. 2 (Fahrlaessigkeit); die bisherige Wiki-Angabe hatte die Faelle verwechselt.
  **1 substanzieller Neubefund:** Art. 25 Abs. 3-5 RPG (in Kraft seit 1.1.2026) kodifiziert die
  30-Jahre-Verwirkungsfrist des Wiederherstellungsanspruchs erstmals bundesrechtlich — aber nur fuer
  Bauvorhaben ausserhalb der Bauzonen; innerhalb der Bauzone bleibt es bei der bisherigen kantonalen
  Praxis/Rechtsprechung. Art. 836 ZGB nicht neu abgerufen, sondern aus Run 100 (gleiche Norm, gleiche
  Einordnung) uebernommen. Report `outputs/2026-08-23_buch-run101.md`. **Naechster Schritt fuer einen
  kuenftigen Lauf:** von den verbleibenden 5 Artikeln ([[ausnahmebewilligung-und-bestandesschutz]],
  [[baulinien-und-abstandslinien]], [[geschosse-und-kniestock]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]]) einen unabhaengigen Rechtsraum waehlen — Empfehlung:
  [[nebenbestimmungen-und-reverse]] (zitiert Art. 962 ZGB/Art. 164 GBV, ebenfalls noch nie gegen
  fedlex geprueft) oder [[rechtsschutz-und-rechtsmittelverfahren]] (aeltestes `verifiziert`-Datum,
  2026-07-12, aber rein kantonales VRG/PBG ohne Bundesrechts-Luecke — geringere Prioritaet nach
  diesem Muster).
- **Buch-Run 102 (2026-08-23):** Empfehlung Run 101 gegengeprueft statt blind befolgt —
  [[nebenbestimmungen-und-reverse]] hat bereits seit Buch-Run 67 (27.07.2026) einen vollstaendigen
  Modell-D-Wortlautabgleich aller 13 Fundstellen inkl. Art. 962 ZGB/Art. 164 GBV; die Run-101-
  Einschaetzung «noch nie gegen fedlex geprueft» war falsch. Statt dessen
  [[rechtsschutz-und-rechtsmittelverfahren]] gewaehlt (11 unverifizierte Bundesrechts-Zitate ueber
  6 Erlasse BV/BGG/RPG/NHG/EMRK/ZPO — mehr als [[ausnahmebewilligung-und-bestandesschutz]] mit 4;
  [[baulinien-und-abstandslinien]] und [[geschosse-und-kniestock]] haben keine Bundesrechts-Luecke
  mehr). Konkurrenz-Check (`ps aux`) bestaetigt: nur der eigene `-p`-Prozess dieser Session bearbeitet
  `wissen/baurecht/`. Alle 11 Zitate gegen frische fedlex-Volltexte geprueft (BV 1.1.2024, BGG
  1.1.2025, RPG 1.7.2026, NHG 1.1.2022, EMRK 16.9.2022, ZPO 1.1.2025). **10/11 CONFIRMED wortgleich**
  (Art. 29a/29 Abs. 2 BV, Art. 82/95/97/113 BGG, Art. 4 RPG, Art. 12 NHG, Art. 6 EMRK, Art. 213/214
  ZPO). **1 Korrektur:** Art. 103 BGG traegt die bisherige Aussage «Bund: keine, ausser Antrag» nicht
  selbst (Abs. 1/2 kennen keine Baustreitigkeits-Ausnahme) — die Antrags-Moeglichkeit steht in
  **Art. 104 BGG** («Andere vorsorgliche Massnahmen»). Report `outputs/2026-08-23_buch-run102.md`.
  **Naechster Schritt:** einziger verbleibender Kandidat mit echter Bundesrechts-Luecke ist
  [[ausnahmebewilligung-und-bestandesschutz]] (Art. 24c RPG, Art. 41c GSchV, Art. 26 BV, Art. 8 ZGB).
  **Methodischer Hinweis:** vor der Wahl eines Kandidaten aus einer Vorlauf-Empfehlung immer den
  Zielartikel selbst lesen, nicht nur seine Paragraphenliste — die Empfehlung kann veraltet sein.
- **Buch-Run 103 (2026-08-23):** [[ausnahmebewilligung-und-bestandesschutz]] re-verifiziert —
  letzter Kandidat der Bundesrechts-Kette. Alle 4 Zitate gegen frische fedlex-Volltexte geprueft
  (RPG 1.7.2026, BV 1.1.2024, ZGB 1.1.2026, GSchV 1.12.2025 — GSchV nur ueber die
  `fedlex.data.admin.ch`-Route erreichbar, `www` liefert die App-Huelle). **4/4 CONFIRMED, 0
  Korrekturen:** Art. 24c RPG korrekt als Abgrenzungs-Verweis; Art. 41c Abs. 1/2 GSchV traegt
  eine dem § 357 PBG analoge Bestandesschutz-Klausel im Gewaesserraum, wortgleich zur
  Wiki-Kurzfassung; Art. 26 BV traegt die Eigentumsgarantie-Herleitung; Art. 8 ZGB traegt die
  Beweislast-Anwendung. **Nebenbefund:** Art. 24c Abs. 1 RPG wurde per 1.1.2026 materiell
  revidiert (neuer Titel «Altrechtliche Bauten und Anlagen»), Vorfassung ueber `www` nicht mehr
  abrufbar, Genauumfang nicht rekonstruiert (Artikel fuehrt Art. 24c ohnehin nur als
  Abgrenzungs-Verweis). Fassungsstand-Hinweis im Wiki ergaenzt. Konkurrenz-Check bestaetigt: nur
  der eigene Session-Prozess bearbeitet `wissen/baurecht/`. Report
  `outputs/2026-08-23_buch-run103.md`. **Damit ist die Re-Verifikationskette (Runs 90-103) am
  Bundesrechts-Kriterium abgeschlossen** — kein Artikel der Kette hat mehr ein ungeprueftes
  Bundesrechts-Zitat offen. **Naechster Schritt fuer einen kuenftigen Lauf:** ausserhalb dieser
  Kette weiterarbeiten (neue KB-Luecken, Health-Check, oder eine zweite Re-Verifikationsrunde
  nach Ablauf der `verifiziert`-Daten).
- **Buch-Run 104 (2026-08-23):** Reglemente-Queue 2414 Thalwil (T1-T9) und die Re-Verifikationskette
  (Runs 90-103) sind laut ihren eigenen Abschlussvermerken vollstaendig; als naechster Schritt daher
  Option 1 aus Run 103 gewaehlt — die in `wiki/QUESTIONS.md` (Wissens-Chef Run 21, 03.08.2026) offen
  gebliebene Rest-Frage zu BEZ 2019 Nr. 5 bearbeitet. Entscheid (BRGE III Nr. 0170/2018) erstmals im
  Volltext bezogen (Baurekursgericht-ZH-Entscheiddatenbank, Rubrik «Absturzsicherungen», dort
  einziger Treffer), da `pdftotext` auf dieser Station fehlt via PyMuPDF extrahiert. **Ergebnis:**
  der Entscheid ist ein **§ 358-PBG-Fall** (baupolizeiliche Kontrolle ausserhalb eines Baugesuchs),
  zitiert § 357 PBG an keiner Stelle und erwaehnt die 15-%-Schwelle der Stadt-Zuercher Richtlinie
  ebenfalls nicht — die Schwelle ist damit durch Rechtsprechung **weder bestaetigt noch verworfen**.
  Neuer `raw/260823_amtlich_zh_brge-iii-0170-2018_bez-2019-nr5.md`, eingearbeitet in
  [[ausnahmebewilligung-und-bestandesschutz]] (Frontmatter + Fliesstext), `wiki/QUESTIONS.md`
  Rest-Frage geschlossen. Report `outputs/2026-08-23_buch-run104.md`. **Naechster Schritt:** keine
  offene Frage mehr aus der Thalwil-Queue oder der Bundesrechts-Kette; naechster Lauf frei fuer
  Health-Check, neue KB-Luecken aus `QUESTIONS.md`, oder eine zweite Re-Verifikationsrunde.
- **Buch-Run 105 (2026-08-24):** Tracker-Nachtrag (fehlte, gleiche Luecken-Familie wie bei Run 41).
  Queue-Status geprueft und bestaetigt (T1-T9 weiterhin vollstaendig). `wiki/QUESTIONS.md`
  systematisch gesichtet: drei Eintraege waren bereits inhaltlich geloest, aber nie als
  geschlossen nachgetragen (Kap. 15.13 Fassungsstand nPBG/nABV, LSV Art. 40/Anhang 3-4,
  Healthcare-Coverage teilaktualisiert) — reine Bookkeeping-Pflege, kein neuer Fachinhalt.
  Report `outputs/2026-08-24_buch-run105.md`.
- **Buch-Run 106 (2026-08-24):** Den von Run 33/104/105 zuletzt offen gelassenen Punkt bearbeitet:
  «Anhang 3 LRV Ziff. 4 ff. (Herstellerkonformitaet kleiner Feuerungen)» — bislang nur als
  OFFEN-Vermerk gefuehrt, nie gelesen. LRV-Volltext (Fedlex `fedlex.data.admin.ch`, Stand
  1.1.2026, PDF 98 S.) bezogen, Anhang 3 Ziff. 3-6 vollstaendig extrahiert und geprueft.
  **Ergebnis: die Praemisse der offenen Frage war falsch.** Ziff. 4 ff. ist eine reine
  Emissionsgrenzwert-Systematik je Brennstoff (4 Oelfeuerungen, 5 feste Brennstoffe, 6
  Gasfeuerungen), keine Konformitaetsregelung. Die einzige Konformitaets-Bestimmung im ganzen
  Anhang (Ziff. 524) betrifft nur serienmaessig hergestellte Einzelraum-Feststofffeuerungen und
  stuetzt sich auf Art. 7 EnEV (SR 730.02), nicht auf LRV-eigenes Recht. Fuer Oel-/Gasfeuerungen
  bleibt die bereits am 13.07.2026 (Run 33) gefundene Antwort (periodische Feuerungskontrolle
  Art. 13 Abs. 3 LRV) die einzige Qualitaetssicherung. Eingearbeitet in `raw/260713_amtlich_ch_
  lrv.md` (Nachtrag), `buecher/band-2/17-haustechnische-anlagen-teil3.md` und `wiki/QUESTIONS.md`.
  Kein neuer Wiki-Artikel-Edit (der wiki-Artikel [[wohnhygiene-und-raumanforderungen]] fuehrte die
  Aussage bereits korrekt, ohne den jetzt geschlossenen OFFEN-Zusatz). Report
  `outputs/2026-08-24_buch-run106.md`. **Naechster Schritt:** keine offene Frage mehr aus der
  Thalwil-Queue, der Bundesrechts-Kette oder dem LRV-Nachtrag; frei fuer Health-Check-Aktionen
  (Phase 2, Umlaut-Ersatzschreibung ~340 Stellen) oder eine zweite Re-Verifikationsrunde.
- **Buch-Run 107 (2026-08-24):** Health-Check-Phase-2-Aktion begonnen: Umlaut-Ersatzschreibung.
  Der 340-Treffer-Befund des Health-Checks zaehlte blind (Wortkatalog-Grep ohne Maskierung) —
  **maskiert** (Ausschluss von `[[Wiki-Links]]`, Backtick-Dateipfaden, `raw/`/`wissen/`/`buecher/`-
  Referenzen, die als Bezeichner ASCII bleiben muessen, Rule `dateinamen-konvention`) blieben nur
  **~20 echte Fliesstext-Stellen in 8 von 26 Artikeln** uebrig — der grosse Rest waren Wiki-
  Artikelnamen/Skill-Namen/Dateipfade, die bereits korrekt ASCII sind. Alle 20 einzeln
  kontext-geprueft und korrigiert (u.a. Gebaeude→Gebäude-Familie war bereits durchweg korrekt,
  echte Funde: Gemeindebeschluessen, Bevoelkerung [Zitat Art. 4 Abs. 2 RPG], Haelfte,
  Verzoegerungs-Mehrkosten, muendlicher, geruegt, juengster, aeusseres, Verkaufsgeschaefte,
  Haustuer/Tuer/Aufzuege, Querbezuege-Ueberschrift, Sekundaerquelle(n), Praemisse, uebrigen×5,
  Ausschuesse). Die B4/F2-Befunde des Health-Checks (Frontmatter `title:`, `[[…]]` auf raw/-Datei,
  QUESTIONS.md-Zeilenumbruch-Backlinks, 7 dekorative ✅) waren beim Nachpruefen **bereits
  behoben** — `wissen/tools/wiki-konsistenz.sh baurecht` meldet 0 Befunde, kein `✅`/`🟡` ausserhalb
  QUESTIONS.md. **Ein Wort nicht angefasst:** «zaegig» (`bauausfuehrung-und-baukontrolle.md` Z. 81)
  ist keine erkennbare Ersatzschreibung — als offene Frage in `wiki/QUESTIONS.md` vermerkt statt
  geraten. Report `outputs/2026-08-24_buch-run107.md`. **Naechster Schritt:** «zaegig» am
  zitierten Entscheid (VB.2014.00026/BEZ 2014 Nr. 46) verifizieren; sonst zweite
  Re-Verifikationsrunde oder naechster Health-Check-Turnus.
- **Buch-Run 108 (2026-08-24):** Run-107-Restfrage bearbeitet. VB.2014.00026 (VGr ZH,
  22.05.2014, BEZ 2014 Nr. 46) volltextverifiziert gegen `entscheidsuche.ch` (analog
  BRGE-Beschaffung Run 104). **«zaegig» kommt im Original nicht vor** — E. 3.1.2 lautet
  woertlich «derart langsam gearbeitet wird, dass die Gesamtdauer der Bauarbeiten in keinem
  vernuenftigen Verhaeltnis zum Bauvolumen bzw. der Bauaufgabe mehr steht». Neu
  `raw/260824_amtlich_zh_vb-2014-00026.md`; [[bauausfuehrung-und-baukontrolle]] korrigiert
  (Zitat statt Vermutung, Frontmatter/`verifiziert` nachgefuehrt); QUESTIONS.md-Nachtrag ueber
  dem Run-107-Eintrag. Report `outputs/2026-08-24_buch-run108.md`. **Naechster Schritt:** kein
  Fachpunkt mehr offen; regulaerer Health-Check-Turnus, zweite Re-Verifikationsrunde, oder neue
  Luecke aus `QUESTIONS.md`.
- **Buch-Run 109 (2026-08-24):** `QUESTIONS.md` nach Run-108-Vorschlag (Option 4) systematisch
  gesichtet, analog Run 105. Gefunden: der Block «2026-07-08, aus Buch-Run 23: Kap. 4
  Natur-/Heimatschutz» fuehrte drei `needs-verification`-Flags (KNHV-Paragraphen, PBG-Paragraphen
  + Bundesrecht BV/NHG/RPG, VRG-Paragraphen Kap. 9 Teil 2), die durch spaetere Laeufe (Run 31/33/
  39/44/61/64/99/102) laengst geschlossen waren, aber nie als erledigt nachgetragen wurden —
  gleiche Luecken-Familie wie Run 105. Alle drei mit Fundstellenverweis auf die tragenden Runs
  geschlossen; kein neuer Fachbefund, reine Bookkeeping-Pflege. Report
  `outputs/2026-08-24_buch-run109.md`. **Naechster Schritt:** kein Fachpunkt mehr aus der
  Thalwil-Queue oder ihren Nachtraegen offen; weitere `QUESTIONS.md`-Sichtung (aeltere
  Kap.-Bloecke ab Zeile ~2000 noch nicht durchgesehen), regulaerer Health-Check-Turnus, oder eine
  zweite Re-Verifikationsrunde.
- **Buch-Run 110 (2026-08-24):** Stale-Flag-Sweep aus Run 109 fortgesetzt (naechstaeltere Bloecke
  Kap. 7 Teil 1/2, Zeilen 2031-2058). Zwei Drittel der vier Flags waren stale (§ 322/§ 324/§ 328
  PBG bereits CONFIRMED via Run 66/96/30; § 326 PBG + Art. 962 ZGB/Art. 164 GBV bereits CONFIRMED
  via Run 67 — nur der Zeiger hier veraltet). **Zwei echte Luecken neu geschlossen:** (1) §§ 5a/13/14
  VRG erstmals amtlich von zhlex bezogen (Nachtrag 133) — Ausstand (§ 5a) war im Wiki gar nicht
  gefuehrt, § 14 VRG praezisiert die bisherige «Solidarhaftung»-Vermutung zu subsidiaerer Haftung
  als Regel; (2) Art. 138 ZPO (Zustellfiktion) + Art. 49 BGG (Rechtsmittelbelehrung) erstmals von
  Fedlex bezogen (BGG-ELI 2006/218 erst per WebSearch gefunden, drei geratene ELI schlugen fehl) —
  beide CONFIRMED wortgleich, neue Primaerquellen `raw/260824_amtlich_ch_zpo-art138.md` +
  `raw/260824_amtlich_ch_bgg-art49.md`. § 20 BVV (Gueltigkeitsdauer-Definition) ebenfalls neu
  CONFIRMED. Neuer Abschnitt 2b «Ausstand» in [[rechtsschutz-und-rechtsmittelverfahren]], neuer
  Abschnitt «Zustellung, Rechtsmittelbelehrung, Gueltigkeitsdauer» in
  [[baurechtlicher-vorentscheid-und-voranfrage]]. Report `outputs/2026-08-24_buch-run110.md`.
  **Naechster Schritt:** Stale-Flag-Sweep fortsetzen (Bloecke Kap. 8/12/1/2/3/6, Zeilen ~2060-2190,
  noch nicht durchgesehen — einige enthalten echte, noch offene Luecken, z.B. §§ 120/150/264/346
  PBG in Kap. 12), sonst regulaerer Health-Check-Turnus oder zweite Re-Verifikationsrunde.
- **Buch-Run 111 (2026-08-24):** Stale-Flag-Sweep fortgesetzt, Block «2026-07-09, Kap. 8 T2/13 T2/
  16 T3» sowie Teile des Blocks «2026-06-22, Kap. 8» abgearbeitet. **Kap. 16 T3 komplett stale:**
  alle fuenf Flags (§ 282/§ 284/§ 30 ABV/§ 28 ABV/§ 292/§ 293 PBG) bereits seit Buch-Run 32/33
  (13.07.2026) CONFIRMED, nur der Zeiger war veraltet. **Kap. 13 T2 gemischt:** § 238/§ 239/§ 240
  PBG bereits anderswo CONFIRMED; **vier echte Neubefunde** — § 241 PBG (Ersatzzufahrt/
  Enteignung) sowie erstmals von Fedlex bezogen Art. 6 SVG + Art. 95-99 SSV (Strassenreklamen) und
  Art. 15 FrSV (Neobiota), neue Primaerquellen `raw/260824_amtlich_ch_svg-art6.md`,
  `raw/260824_amtlich_ch_ssv-art95-99.md`, `raw/260824_amtlich_ch_frsv-art15.md`. **Echte
  Fassungsstand-Falle bei § 16 StrAV:** die Konkordanz-Tabelle hatte «Sichtbereiche → § 23 VErV»
  bereits als Zeiger, aber § 23 selbst traegt keine Masszahl — die Werte liegen in Anhang 3
  (Fahrbahn, jetzt geschwindigkeitsabhaengig statt fest 90/150 m, Tabelle in der Quelle
  formatierungsgestoert, nicht geraten) und Anhang 4 (Velowege, neigungsabhaengig 30-50 m statt
  fest 50 m, sauber extrahiert). **Der «NEU Kap. 13 §§ 242/248»-Flag war eine falsche Praemisse:**
  § 242 PBG regelt Fahrzeugabstellplaetze, § 248 PBG Spiel-/Ruheflaechen — nicht Antennen/Camping;
  beide seit Run 70 bereits established. Aussenantennen stehen in § 309 Abs. 1 lit. l PBG, neu als
  vollstaendiger Bewilligungspflicht-Katalog (lit. a-o) in [[baubewilligungsverfahren]] ergaenzt.
  **Kap.-8-Block (2026-06-22) teilweise:** § 239/§ 309 Abs. 1 lit. c CONFIRMED; § 12a BBV I war ein
  Suchfehler eines frueheren Laufs (Fundstelle im Raw als «§ 12 a.» mit Leerzeichen), jetzt
  CONFIRMED und im Artikel korrigiert (die falsche Attribution «Sanitaer → BBV II» behoben, BBV II
  kennt kein § 12a); § 24 BVV als echte Luecke ergaenzt (elektronische Protokollierung); Art. 3a
  ABV bleibt trotz Suche NICHT verifizierbar, unveraendert stehen gelassen, als offene Diskrepanz
  gefuehrt. Geaenderte Wiki-Artikel: [[umgebungsgestaltung-und-einfriedungen]],
  [[baubewilligungsverfahren]], [[bauausfuehrung-und-baukontrolle]]. Report
  `outputs/2026-08-24_buch-run111.md`. **Naechster Schritt:** «16.9-Schluss» (S. 1230 f., kleine
  Buch-Restluecke), § 8 Abs. 2 IDG ZH, Art. 3a ABV (Alternativquelle pruefen) — sonst Stale-Flag-
  Sweep an den restlichen Bloecken (Kap. 12/1/2/3/6, Zeilen ~2140-2260) fortsetzen.

## Verifikations-Stufe (PFLICHT ab 12.07.2026, Rule auto-verbesserungen 260712)

Jede Status-Hebung auf `established` durchlaeuft VOR der Hebung eine unabhaengige
Widerlegungs-Pruefung (Verifier-Prinzip der Spec-Methode, automatisiert):

- **Adversarial Verify:** 2–3 unabhaengige Pruef-Agenten (oder ein Volltextabgleich an der
  amtlichen/Original-Quelle, Modell D) versuchen die Aussage zu WIDERLEGEN — jede Fundstelle,
  Ziffer, Kennwert wird an der Quelle gegengeprueft. Nur was die Pruefung besteht, wird
  `established`; Beanstandungen werden korrigiert oder auf `speculative` gesenkt.
- **Workflow-Orchestrierung autorisiert:** Multi-Agent-Workflows (paralleles Destillieren +
  Verifikations-Pipeline) sind fuer diesen Loop von Raphael freigegeben (12.07.2026).
  Mechanische Extraktion darf auf guenstigeren Modellen laufen; die Verifikations-/Richter-
  Stufe laeuft auf dem Hauptmodell.
- **Protokoll:** Verdikte (bestanden/beanstandet je Artikel/Destillat) gehoeren in den
  Lauf-Report unter `outputs/` und ins CHANGELOG.

## Intensivphase (ab 12.07.2026, bis auf Widerruf)

Der Loop laeuft intensiviert (auch tagsueber und am Wochenende, Rule 260712), bis ein markant
besserer Wissensstand erreicht ist (Inventar/Rueckstaende abgearbeitet, keine auto-schliessbaren
Luecken). Dann Ruecktaktung ins Nachtfenster VORSCHLAGEN (nicht stillschweigend umsetzen).

### Token-Vollgas bis 10.08.2026 (Rule 260712b)

Bis und mit 10.08.2026 gilt maximaler Durchsatz (20x-Abo): Batch-Volumen pro Lauf
VERDOPPELN gegenueber den oben genannten Richtwerten (z.B. Normen 15-25 Positionen,
Energie 6-10 PDFs, Planungsgrundlagen 2 Domaenen + 10-16 Fragen, Baurecht 4-6
Verifikations-Komplexe), Workflow-Parallelisierung als Standard. Ab 11.08.2026
(5x-Abo) gelten wieder die urspruenglichen Richtwerte und der Sparbetrieb; die
Ruecktaktung erledigt der One-Time-Task `token-drosselung-100810`.
