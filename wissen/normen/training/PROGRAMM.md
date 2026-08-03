# Trainingsprogramm — NACHT-Loop der KB Normen (`normen-training-nacht`)

Ziel: die komplette Normen-Bibliothek (SharePoint `PL - 02_Recht_Norm/02_Normen/`,
Inventar 528 Dateien) in belegte, schnell verfügbare Destillate überführen —
**jede Nacht ab 22:00, bis das Inventar abgearbeitet ist** (Entscheid Raphael 11.07.2026).

## Takt & Umfang (verbindlich)

- **Frequenz:** täglich 22:00 (Scheduled Task `normen-training-nacht`). Der Lauf arbeitet
  so viele Normen wie in einer Session sauber möglich (Richtwert **8–12 Destillate**),
  Qualität vor Menge; spätestens um 08:00 ist Schluss.
- **Endbedingung:** Sind alle P1–P3-Positionen im `norm-inventar.md` destilliert oder
  begründet übersprungen, meldet der Lauf «INVENTAR KOMPLETT» im Output und bittet
  Raphael, den Scheduled Task zu beenden (Loop läuft nicht ewig weiter).
- **Reihenfolge:** P1 zuerst (Skill-Kernnormen), dann P2 (übrige SIA de), dann P3
  (DIN/VSS/RAL). Sprachvarianten (e/f/i) und `xalt` werden NICHT destilliert.

## Lauf 1 — Sonderprogramm (Pflicht, vor allen Destillaten)

1. `ersetzte_normen.pdf` + `Gesamtverzeichnis SIA.pdf` destillieren →
   `wiki/REGISTER.md` aufbauen: je Norm-Nr. die gültige Ausgabe, ersetzte Ausgaben,
   Datenstand des Verzeichnisses.
2. Inventar-Abgleich: bei Normen mit mehreren Ausgaben im Bestand (z.B. SIA 102
   2001/2003/2014/2020) die alten als «— ersetzt durch <Jahr>» markieren.

## Ablauf jedes Laufs (immer gleich)

1. **Stand lesen:** `training/norm-inventar.md` (offene Positionen, P1 zuerst),
   `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **Zugriffs-Check:** 1 Test-PDF via Read öffnen. Scheitert der Zugriff auf
   `~/Library/CloudStorage/OneDrive…` (TCC-Blockade launchd, bekanntes Muster),
   Fallback: Download via M365-Connector (SharePoint-Pfad identisch); scheitert auch
   das, Lauf mit Fehlermeldung im Output abbrechen — NICHT raten.
3. **Destillieren:** je Norm Read mit `pages:` (max 20 S./Request; grosse Normen über
   mehrere Nächte, Fortschritt im Frontmatter `gelesen:` festhalten).
   Destillat nach Muster `destillate/INDEX.md`; nichts erfinden, Fundstellen (Ziffer)
   notieren; DRM-geschützte DIN-PDFs als «DRM, manuell» markieren und überspringen.
4. **Register nachführen:** `norm-inventar.md` (Status `[x] JJMMTT`), `destillate/INDEX.md`,
   `wiki/REGISTER.md` (Gültigkeit), `wiki/QUESTIONS.md`.
5. **Output:** `outputs/JJJJ-MM-TT_normen-nacht-runN.md` — was destilliert, was offen,
   Plan für die nächste Nacht.
6. **CHANGELOG** ergänzen (neueste zuoberst), NAS-Repo committen + pushen.

## Methodik-Pflichten (neu ab Run 22, 25.07.2026 — aus belegten Fehlbefunden)

Die Runs 15-21 haben SIA/VKF sieben Mal als «komplett» gemeldet; Run 22 hat gezeigt, dass die
Vollständigkeits-Metrik zu schmal war und reale Arbeit unsichtbar blieb. Vier Pflichten folgen daraus:

1. **Zwei Ablagen scannen, nicht eine.** Der Normen-Bestand liegt in `PL - 02_Recht_Norm/02_Normen/`
   **und** in `PL - 03 Brandschutz/`; die geltenden VKF-Fassungen 2017/2022 liegen in PL-03. Weil das
   Inventar lange nur PL-02 scannte, standen zwei Destillate unbemerkt auf der überholten Fassung
   01.01.2015. **Entscheid Raphael 26.07.2026: PL-03 ist als gleichrangige Quelle ins Inventar
   aufgenommen** (Abschnitt «PL-03 Brandschutz» in `norm-inventar.md`, mit Fassungs-Spalte). Jeder
   Lauf pflegt beide Ablagen; jede VKF-Fundstelle wird vor Verwendung gegen die jüngste im Haus
   liegende Fassung geprüft.
2. **«Sprachvariante» ist eine Behauptung, keine Feststellung.** Vor dem Überspringen einer Datei als
   f/i/e-Variante ist die Sprache am Dateiinhalt bzw. an den Titel-Metadaten zu prüfen. Belegte Fälle:
   `alle/i/266_1_d.pdf` ist deutsch (SIA 266/1), `alle/f/410_d_f_i.pdf` ist dreisprachig und enthält
   den deutschen Volltext (SIA 410). Beide galten jahrelang als erledigt, weil sie im «falschen» Ordner lagen.
3. **Fassungsstand vor Werteabgleich.** Erster Schritt jeder Verifikation ist die Suche nach einer
   **jüngeren Fassung derselben Norm** im Bestand (Dateiname, Titelblatt-Stempel, Änderungsliste meist
   S. 2). Eine Refuter-Prüfung gegen dieselbe Datei, aus der destilliert wurde, kann eine jüngere Fassung
   grundsätzlich nicht finden. Ausgabejahr und Fassungsdatum sind strikt getrennt zu führen und zu zitieren.
4. **Bildvergleich-Pflicht bei Normen mit Prinzipskizzen.** `pdftotext` allein ist dort strukturell blind:
   Masse, Legenden und Begriffe liegen teils als Rastertext INNERHALB der Zeichnungen. Eine Aussage «alle
   übrigen Werte identisch» ist ohne Bildvergleich unbelegt. Vorgehen: `pdfimages -list` über beide
   Fassungen, Paarvergleich nach Seite/Dimension/Bytegrösse, bei Abweichung Extraktion und Sichtkontrolle.
   So wurde in Run 22 eine übersehene Änderung auf S. 16 der BRL 16-15 gefunden.

5. **Eindeutige Render-Präfixe — und Agenten-Befunde über defekte Dateien selbst gegenprüfen.**
   Beim Rendern mit `pdftoppm` IMMER ein normspezifisches Präfix verwenden (`/tmp/sia144-r1-`,
   nicht `tb-`). Mehrere Agenten teilen sich dasselbe Scratchpad; generische Namen führen dazu,
   dass ein Agent das Alt-Rendering einer **fremden Norm** liest und für seine eigene hält.
   Belegt in Run 37 (29.07.2026): ein Agent meldete als «SCHWERWIEGEND», die Datei `144_2013.pdf`
   beginne mit zwei Seiten der Norm SIA 384.201 (Heizlast). Die Gegenprüfung des Hauptprozesses
   am Original (eigenes Rendering + OCR) widerlegte das vollständig — S. 1 ist «Ordnung SIA 144
   2013», S. 3 das Innentitelblatt SN 507 144, auf S. 1-4 kein einziger Treffer auf
   12831/384.201/Heizlast. Ein zweiter Agent (SIA 312) geriet in denselben Fehler, bemerkte ihn
   aber selbst. **Daraus die zweite, wichtigere Pflicht:** Meldet ein Agent eine Quelldatei als
   defekt, fremdbestückt oder unvollständig, wird dieser Befund NIE ohne eigene Gegenprüfung am
   Original übernommen — solche Befunde sind besonders folgenreich (sie führen zu Datei-Eingriffen)
   und zugleich der wahrscheinlichste Ort für ein Werkzeug-Artefakt.

**Konsequenz für die Endbedingung.** «0 offene `[ ]`» plus «keine neuen Dateien» ist KEIN Nachweis, dass
nichts zu tun ist — es misst nur Datei-Existenz. Vor jeder «KOMPLETT»-Meldung ist zusätzlich `wiki/QUESTIONS.md`
durchzuarbeiten: dort liegt der eigentliche Rückstand (Run 22 hat daraus 11 Punkte geschlossen). Ein
Frischecheck auf Datei-Anzahl/Änderungsdatum ersetzt das nicht.

**Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei belegen** — am 25.07.2026 haben zwei Läufe
unabhängig die Nummer 21 vergeben.

## Lignum-Taktung — Entscheid Raphael 29.07.2026 (differenziert)

Die Frage wurde Raphael zweimal vorgelegt. Die **erste** Vorlage stützte sich auf den Stand von
Run 35 («seit Runde 32 nur noch Rand- und Nuance-Befunde») und war damit überholt: Run 36 hatte
diese Prämisse wenige Stunden zuvor entkräftet — die siebte Runde brachte bei `lignum-lignatec`
7 Befunde, darunter drei **Kernbefunde in der viermal bestätigten Tab. 5**, sichtbar erst durch
**rechnerische** Tabellenaufnahme (Median-RGB je Zellbox) statt visueller Lektüre. Nach Vorlage
der korrigierten Zahlen lautet der Entscheid:

| Destillat | Entscheid | Begründung |
|---|---|---|
| `lignum-lignatec-brandschutz.md` | **Achte Runde fahren** — rechnerische Aufnahme von **Tab. 3 und Tab. 4** | genau diese Lücke hat bei Tab. 5 drei Kernbefunde erzeugt; die Methode ist dort noch nicht angewandt |
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` | **als «speculative, stabil» akzeptiert**, keine Routinerunden mehr | rechnerische Zellprüfung ist dort Standard, 5 von 6 Befunden der siebten Runde waren formal, keine Regression |

⚠ **Nachtrag Run 38 (30.07.2026) — der Entscheid zu `lignum-4-1` ist neu zu prüfen.** Die
Auftragszeile des Scheduled Task verlangte für dieses Destillat trotzdem eine achte Runde
(«nachrangig»); sie wurde gefahren, mit der neuen Methode «Abdeckung messen» statt «Behauptungen
prüfen». Sie hat einen **inhaltlichen** Befund erbracht: in Kap. 5.2.5 (S. 63) fehlte der ganze
Absatz zur Durchführung von Installationen durch brandabschnittsbildende Bauteile RF1 — also die
Abschottungspflicht, eine ausführungsrelevante Anforderung. Die Einstufung «speculative, stabil,
keine Routinerunden mehr» stützte sich darauf, dass 5 von 6 Befunden der siebten Runde Formalien
waren. Dieses Argument trägt nicht mehr, denn es galt für die alte Prüfrichtung. **Entscheid Raphael 30.07.2026: weitere Runde freigegeben.** Damit gilt der Stopp vom 29.07. für
`lignum-4-1` als aufgehoben, solange die Abdeckung nicht belastbar gemessen ist.

**Auflage für diese neunte Runde (Konsequenz aus der ausgewiesenen Schwäche der achten):** Die
Abdeckung darf **nicht** erneut per OCR geschätzt werden — die Ausbeute lag bei 34 von mindestens
71 zitierten Nummern, dichte Katalogtabellenseiten lesen sich maschinell zu schlecht. Stattdessen
wird eine **vollständige Seiten-Inventur** erstellt: alle 40 A3-Blätter (= 80 gedruckte Seiten)
werden gerendert, in Halbseiten gesplittet und je Seite wird aufgenommen, welche Kapitel, Tabellen,
Abbildungen und eigenständigen Textblöcke dort stehen. Erst dieser Bestand wird gegen das Destillat
gediffed. Die gedruckte Seitenzahl wird am Seitenrand **abgelesen**, nicht aus der Blattnummer
berechnet.

Nach der achten Runde für `lignum-lignatec` ist die Datenlage belastbar; danach ist über die
Rücktaktung dieses Destillats neu zu entscheiden. **Run 38 hat dazu geliefert: sie ist NICHT
belastbar genug für eine Rücktaktung** (7 Kernbefunde, siehe unten). Der Status beider bleibt bewusst `speculative`
(nicht `established`), die dokumentierten Restbefunde bleiben im Destillat sichtbar.

**Verbindliche Lehre, unabhängig vom Taktungsentscheid:** eine Runde mit wenigen Randbefunden ist
**kein Sättigungsindiz**. Sie kann ebenso gut eine zu schmale Prüfmethode anzeigen. Bevor ein
Destillat als «ausgereizt» gilt, muss die schärfste verfügbare Prüfmethode auf **alle** seine
Kern-Tabellen angewandt worden sein.

~~⚠ Die achte Runde konnte in Run 37 nicht mehr gefahren werden (OAuth-Token abgelaufen, alle
Refuter-Agenten scheiterten mit 401).~~ **ERLEDIGT in Run 38 (30.07.2026).** Die Anmeldung war
wieder gültig; Subagenten liefen fehlerfrei.

### Ergebnis der achten Runde (Run 38, 30.07.2026) — und was daraus folgt

Die rechnerische Zellaufnahme wurde auf Tab. 3 und Tab. 4 angewandt, beide vollständig
(je 10 Nutzungszeilen × 2 Konzeptzeilen × 7 Geschossgruppen × 2 Unterspalten). Ergebnis:
**7 Kernbefunde + 4 Nebenbefunde** — darunter drei, die dieselbe Wurzel haben wie die
Tab.-5-Befunde aus Run 36 (eine Aussage über einen Spaltenblock wird auf die ganze Zeile
verallgemeinert), und einer, der eine ganze Ebene der Quelle sichtbar macht: **die drei Tabellen
führen drei verschiedene Legenden, und dieselbe Farbe bedeutet in Tab. 3/4 etwas anderes als in
Tab. 5.** Das Destillat kannte nur die Tab.-5-Legende.

### Ergebnis der Abdeckungsmessung `lignum-4-1` (Run 39, 30.07.2026) — vollständig gemessen statt geschätzt

Raphael hat die weitere Runde freigegeben; sie ist gefahren. Die vollständige Seiten-Inventur
(Seiten 2-80 lückenlos, 184 Elemente, 5 parallele Aufnahme-Agenten) hat ergeben: **72 Nummern in
der Quelle, 71 im Destillat zitiert, alle 74 Kapitel inhaltlich erfasst, null erfundene
Fundstellen.** Die eine Lücke (Abb. 435-3) führte beim Nachlesen zu einem zweiten, schwereren
Befund — ein fehlender Nachweis-Weg, siehe Methodik-Pflicht 6. Beide korrigiert.

**Bewertung für die Taktung von `lignum-4-1`:** Die Abdeckung ist damit belastbar gemessen und
praktisch vollständig. Was **nicht** gemessen wurde, ist die Richtigkeit jeder einzelnen Zelle der
Katalogtabellen — das waren die Runden 5-7 (dort ohne Regression). Eine zehnte Routinerunde hat
damit keine erkennbare offene Frage mehr zu beantworten; sinnvoll wäre nur noch ein
ereignisgetriebener Lauf, wenn eine neue Fassung der Publikation ins Haus kommt. Vorzulegen, nicht
selbst umzustellen.

**Damit ist die Endbedingung des Vorrang-Auftrags NICHT erfüllt.** Die Quelle ist nicht ausgereizt;
die Umstellung dieses Tasks auf Ereignis-Trigger wird ausdrücklich **nicht** vorgeschlagen. Fällig
ist eine neunte Runde, und für sie gilt dieselbe Regel wie bisher: sie muss eine Prüfmethode auf
einen Teil der Quelle anwenden, auf dem diese Methode noch nicht gelaufen ist. Nicht mehr geprüft
wurden bisher rechnerisch: die acht Übersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5).

**Die Methoden-Lehre bestätigt sich zum dritten Mal** (Run 35, Run 36, Run 38): eine Runde mit
wenigen Randbefunden misst die Methode, nicht die Quelle. Sie ist deshalb als Methodik-Pflicht 6
unten verankert.

### Ergebnis der neunten Runde (Run 40, 31.07.2026) — Tabelle 2 und die acht Axonometrien

Gefahren wurde, was Run 39 als offen ausgewiesen hatte: die rechnerische Aufnahme der beiden
Teile, auf die die Methode nie angewandt worden war. **Ergebnis: null falsche Zahlenwerte, neun
Vollständigkeitsbefunde.** Das ist erstmals in dieser Reihe ein anderer Befundtyp — die Runden
6-8 fanden noch falsche Werte, diese Runde nur noch Lücken.

Die drei folgenreichsten, alle vom Hauptprozess am eigenen 300-dpi-Rendering nachgeprüft:
der Geltungsbereich-Absatz zu Tab. 2 fehlte ganz (die Tabelle gilt nur für tragende/
brandabschnittsbildende Bauteile, die VKF-Richtlinie «Verwendung brennbarer Baustoffe» ist
zusätzlich zu beachten); die ganze Zeichnungsspalte war nie destilliert, inklusive der Aussage,
dass R30/R60 ohne (nbb) vollständig brennbar sein dürfen; und «Decke = Dach über
Korridor/Treppenhaus: Keine Anforderung» fehlte auf allen vier Doppelseiten — der Wert gilt nur
für den Feuerwiderstand, Dachbelag und Fluchtweg-Seite müssen nichtbrennbar sein (BKZ 6q.3).

**Bewertung für die Taktung: weiterhin NICHT entscheidbar; Ereignis-Trigger wird nicht
vorgeschlagen.** Nach der Methoden-Lehre ist auszuweisen, was ungeprüft blieb: der **Fliesstext
der Kapitel 1-4** (S. 3, 6-7, 10-11, 14) wurde nie systematisch gegen das Destillat gediffed, und
eine **Seiten-Inventur** nach dem Muster `l41-seiteninventur.md` existiert für den Lignatec nicht.
Das ist die nächste Methode auf einem noch ungeprüften Teil. Erst danach ist die Quelle nach allen
verfügbaren Methoden geprüft und die Frage redlich zu beantworten.

### Methodik-Pflicht 7 — Agentenbefunde gegen den GANZEN Bestand prüfen, nicht nur gegen die Stelle

Aus Run 40. Zwei als KERNBEFUND gemeldete Punkte (Treppenhauswand beidseitig, Korridorwand nur
korridorseitig nicht brennbar verkleidet) waren am Original **richtig beobachtet**, aber **kein
Befund**: die Regel stand längst als Schrägstrich/Bindestrich-Notation im Destillat
(Run-32/33-Korrektur). Der Agent hatte nur seinen Abschnitt gelesen. Daraus die Pflicht: bevor
ein Agentenbefund als Fehler übernommen wird, ist zu prüfen, ob das Destillat die Aussage **an
anderer Stelle** bereits führt. Sonst entstehen Scheinbefunde, und eine bestätigte Regel wird
fälschlich als Widerspruch verbucht. Umgekehrt gilt der Ertrag: solche Beobachtungen sind
**unabhängige Bestätigungen** und gehören als solche protokolliert.

### Methodik-Pflicht 8 — Tabellen werden gerendert und abgelesen, nie per Textextraktion aufgenommen

Aus Run 41 (01.08.2026), Freigabe Raphael am selben Tag. Die Regel gilt für **jede Tabelle mit
verbundenen Zellen, Farbcodierung oder mehrspaltigen bzw. gedrehten Kopfzeilen**:

> Eine solche Tabelle wird **gerendert und visuell bzw. rechnerisch abgelesen**. Eine
> Textextraktion (`pdftotext`, auch mit `-layout`) ist dafür strukturell blind und darf nicht
> als Aufnahme gelten — auch dann nicht, wenn die Datei einen sauberen Textlayer hat.

**Warum als eigene Pflicht und nicht als Unterfall von Pflicht 6.** Pflicht 6 verlangt, die
Abdeckung zu messen; sie beantwortet die Frage «wurde alles aufgenommen». Diese Pflicht hier
beantwortet die andere Frage: «ist das Aufgenommene richtig zugeordnet». Ein Destillat kann
vollständig sein und trotzdem jede Zelle falsch verorten.

**Die Belege, alle aus einem einzigen Lauf — das ist der Grund für die Aufnahme.**
1. **GVZ-Merkblatt 30.17.3:** Der Textlayer verfälscht die Vergleichszeichen — gedruckt
   «≤ 600 m²» und «≥ 60°», extrahiert «<» und «>» — und bildet die Ober-/Unterteilung der
   Matrixzellen überhaupt nicht ab, sondern nur eine Leseabfolge. Genau daraus entstand der
   Erstfehler, der ein Projekt zu einem RWA-Nachweis verpflichtet hätte, den das Merkblatt gar
   nicht verlangt. Die Frontmatter-Angabe «echter Textlayer, kein Rendering nötig» stand
   dokumentiert im Destillat und hätte den Fehler beim nächsten Merkblatt wiederholt.
2. **PAVIDENSA PAV-A 01:2010, Tabelle 1:** Die Tabelle arbeitet mit über mehrere Normspalten
   **verbundenen Zellen**. Die Textextraktion ordnete drei Zeilen falsch zu — Rautiefe,
   Ebenheit und Feuchtigkeit. Es sind Haftfestigkeits-, Ebenheits- und Feuchtegrenzwerte, also
   Werte, die unverändert in ein Leistungsverzeichnis wandern.
3. **PAVIDENSA PAV-A 03:2013:** Dort war die Kreuzmatrix gar nicht rekonstruierbar. Richtige
   Konsequenz: sie wurde **nicht** wiedergegeben und als offener Auftrag geführt. Eine
   halbrichtige Verträglichkeitsmatrix hätte ein Schutzsystem freigegeben, das mit der
   gewählten Abdichtungsbahn nicht verträglich ist.

**Verfahren.** Rendern mit normspezifischem Präfix (Pflicht 5), Zellraster bestimmen, je Zelle
Median-RGB messen und gegen die **je Tabelle einzeln** gemessene Legende klassieren (Pflicht 6),
bei verbundenen Zellen die Zellgeometrie ausdrücklich festhalten (von welcher Spalte bis zu
welcher). **Rendern heisst nicht automatisch messen:** wo Kategorien sich nur über das
Linienmuster trennen und nicht über die Farbe — belegt bei Tabelle 2 des Lignatec, wo Vollholz,
brennbarer Baustoff und brennbarer Dämmstoff alle bei RGB ~233-243 liegen — versagt die reine
Farbklassierung und die Sichtkontrolle entscheidet.

**Und wenn es nicht geht:** Die Tabelle wird **nicht** wiedergegeben, die Lücke wird benannt.
Eine ausgewiesene Lücke ist ein offener Auftrag; eine halbrichtig abgeschriebene Normtabelle
ist ein Planungsfehler mit Quellenschein.

### Methodik-Pflicht 9 — Befunde INLINE korrigieren, nicht nur anhängen

Aus Run 43 (04.08.2026). Ein angehängter Verifikationsabschnitt dokumentiert den Befund, aber
er **entfernt die widerlegte Aussage nicht**. Wer ein Destillat von oben liest, trifft zuerst
auf den Fehler und liest die Korrektur womöglich nie.

> Wird ein Kernbefund übernommen, ist die betroffene Stelle im **Fliesstext selbst** zu
> korrigieren oder sichtbar zu markieren. Der Verifikationsabschnitt trägt die Begründung und
> die Fundstelle, nicht die Korrektur allein.

**Beleg, warum das eine eigene Pflicht ist:** Genau diese Mechanik hat in Run 42 beim
Absturzsicherungs-Destillat zugeschlagen — der Fliesstext hatte die Kugelprobe/Lichtmass-Regel
richtig, die vorangestellte Kurzfassung falsch, und zitiert wurde die Kurzfassung. In Run 43
mussten deshalb neun Stellen nachträglich inline korrigiert werden (l1-Definition und E-Modul
der Kalksandstein-Bemessung, der BKP-Code an zwei Stellen, die SIA-244-Tabellenzuordnung, die
Verlegetoleranz, die 5-m-Leiterregel, das Dachhaken-Raster, die 8,5-m-Reichweite).

**Zusatz aus demselben Lauf — die Prüfschärfe auch nach innen richten.** Fünf Läufe lang haben
Refuter Normwerte gegen Originale geprüft, während die Hub-eigene BKP-Schnellreferenz einen
Code führte, den das BKP 2017 **nicht kennt** (271.10 statt 271.0), und ihn in fünfzehn Dateien
verteilte. Ein Schnellreferenz-Block ist eine **Abschrift** und damit genauso prüfbedürftig wie
jede Sekundärquelle; im Streitfall gilt der systematische Teil, und darüber das Original-PDF.

### Methodik-Pflicht 6 — Abdeckung messen, nicht nur Behauptungen prüfen

Aus Run 38, gilt für jede Retro-Verifikation: Eine Runde, die nur prüft, ob stimmt, **was das
Destillat behauptet**, kann grundsätzlich nicht finden, was im Destillat **fehlt**. Beide
Fragerichtungen sind zu fahren, und im Report ist auszuweisen, welche gelaufen ist. Zwei
praktikable Verfahren:
- **Bei Tabellen:** die Tabelle als Ganzes rechnerisch aufnehmen (Zellraster, Median-RGB je Zelle,
  Klassierung gegen die am Original gemessenen Legenden-Swatches) und Zelle für Zelle gegen das
  Destillat halten — auch dort, wo das Destillat nichts behauptet. Die Legende jeder Tabelle
  **einzeln** am Original messen; Legenden gelten nicht tabellenübergreifend.
- **Bei umfangreichen Publikationen: Seiten-Inventur, nicht OCR-Schätzung.** Die Quelle rendern,
  in Halbseiten splitten und je gedruckter Seite aufnehmen, welche Kapitel, Tabellen, Abbildungen
  und eigenständigen Textblöcke dort stehen; die Seitenzahl am Rand **ablesen**, nicht aus der
  Blattnummer berechnen. Erst dieser Bestand wird gegen das Destillat gediffed. Die Inventur wird
  als Datei in `training/` abgelegt — sie ist der Beleg für die Abdeckung und macht jede spätere
  Runde billig (Muster: `training/l41-seiteninventur.md`).
  **Ein OCR-Diff genügt dafür nicht:** bei Lignum 4.1 fand die OCR 34 von real 72 Nummern, weil
  dichte Katalogtabellen maschinell schlecht lesbar sind. Wer OCR verwendet, muss die Ausbeute
  ausdrücklich als **untere Schranke** ausweisen und darf sie nie als Vollständigkeitsnachweis führen.
- **Eine fehlende Fundstelle ist ein Zeiger, kein Befund.** Jede Lücke der Inventur wird am Original
  **nachgelesen**, nicht bloss eingetragen. Belegt in Run 39: die einzige Abdeckungslücke von
  Lignum 4.1 war eine nicht zitierte Abbildung — formal also geringfügig. Beim Nachlesen der Seite
  zeigte sich, dass dort auch einer von vier Nachweis-Wegen fehlte. Wer nur die Nummernliste
  abhakt, notiert «1 formaler Befund» und geht weiter.

## Leitplanken (Qualität)

- **Nie Ziffern/Kennwerte erfinden** — nur was im PDF steht; Unsicheres `speculative`.
- **Ausgabe + Datenstand zwingend** in jedem Destillat.
- **Urheberrecht:** Destillate = eigene Kurzfassung mit Fundstellen, keine
  Tabellen-/Textkopien im Wortlaut; alles bleibt intern auf dem NAS.
- **Kompoundieren:** bestehende Destillate wachsen (Frontmatter `gelesen:`), keine Duplikate.
- **Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch.**

## Fortschritts-Tracker

Arbeitsliste: `training/norm-inventar.md` · Destillat-Stand: `destillate/INDEX.md` ·
Gültigkeit: `wiki/REGISTER.md` · letzter Lauf: `outputs/` · Änderungen: `CHANGELOG.md`.

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

## Stations-Split (verbindlich ab 12.07.2026)

Beide Stationen arbeiten auf dieselbe NAS-KB — darum feste Zuteilung, keine Kollisionen:

| Station | Norm-Familien |
|---|---|
| MacBook Pro (Task `normen-training-nacht`, 3x taeglich) | **SIA + VKF** |
| Mac Mini (Task `normen-training-mini`) | **DIN + VSS + RAL** |

Jede Station destilliert und hakt NUR ihre Familien im `norm-inventar.md` ab. Vor dem
Commit `git pull` (Rule sync-kanonische-quelle), damit die Inventar-Staende beider
Stationen zusammenlaufen.

### Token-Vollgas bis 10.08.2026 (Rule 260712b, eskaliert 260712c: DAUERBETRIEB)

Bis und mit 10.08.2026 gilt maximaler Durchsatz (20x-Abo), seit 12.07.2026 abends
zusaetzlich **Dauerbetrieb** (Entscheid Raphael: «ununterbrochen laufen lassen,
maximale Rechenleistung»):

- **Batch-Volumen: 30-40 Positionen pro Lauf** (statt 15-25). Ein Lauf bricht nicht
  aus Budgetgruenden vorzeitig ab; er endet erst, wenn der Batch sauber destilliert,
  verifiziert, registriert und committet ist.
- **Taktung: alle 2 Stunden, rund um die Uhr, beide Stationen** (MacBook Pro
  `normen-training-nacht` SIA/VKF, Mac Mini `normen-training-mini` DIN/VSS/RAL;
  gemaess Rule 260712c VOLLGAS-ENDLOS). Zusaetzliche Sofort-Laeufe auf Zuruf sind
  ausdruecklich erwuenscht; Limit-Pausen sind akzeptiert und kein Fehler.
- **Gross-Normen vorziehen:** die zurueckgestellten scanlastigen Brocken
  (DIN 18040-1/2, DIN 4102-1/2, DIN 1946-6, VSS 640-Familie) werden NICHT weiter
  geschoben, sondern via Workflow segmentiert (1 Agent je ca. 20 Seiten) abgearbeitet.
- **Nach Inventar-Abschluss einer Familie** wechselt der Lauf nicht in den Leerlauf,
  sondern auf die Vertiefungsstufen: (a) Tiefendestillate der P1-Kernnormen
  (Artikel-fuer-Artikel, z.B. SIA 118, SIA 102, SIA 416, VKF), (b) Retro-Verifikation
  bestehender Destillate mit 3 unabhaengigen Widerlegungs-Agenten, (c) Q&A-Selbst-
  befragung (15-20 Pruefungsfragen je Norm, unabhaengig beantwortet am Original),
  (d) Querschnitts-Synthesen fuer die Fach-Skills (werkvertrag/honorar/brandschutz/
  flaechen-nachweis). Erst wenn auch diese Stufen abgearbeitet sind: «INVENTAR
  KOMPLETT» melden.

Ab 11.08.2026 (5x-Abo) gelten wieder die urspruenglichen Richtwerte und der
Sparbetrieb; die Ruecktaktung erledigt der One-Time-Task `token-drosselung-100810`.
Weiterhin unveraendert: Qualitaets-Leitplanken (nichts erfinden, Verifikations-
Pflicht vor `established`, Stations-Split, git pull vor Commit).
