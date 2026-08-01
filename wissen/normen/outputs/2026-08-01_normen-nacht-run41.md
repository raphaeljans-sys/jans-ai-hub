# Normen-Training Run 41 (MacBook Pro, 01.08.2026) — zehnte Lignatec-Runde, zwei Zweitverifikationen, 13 neue Destillate

**Kurzfassung.** Der Vorrang-Auftrag des Task-Textes (achte Runde, Tab. 3 und 4) war bei
Laufbeginn zweifach überholt — er ist in Run 38 erledigt, und die Runden 39 und 40 sind
seither gefahren. Fällig war, was Run 40 als offen ausgewiesen hatte: der **Fliesstext der
Kapitel 1-4** und eine **Seiten-Inventur** des Lignatec. Beides ist gemacht. Ergebnis: **kein
einziger falscher Zahlenwert im Fliesstext, aber sechs Kernbefunde — und fünf davon sind ganz
fehlende Sätze.** Sie treffen fast ausschliesslich Schutzziel- und Verknüpfungssätze, also
genau jene Sätze ohne Zahl, die sagen, wie die Zahlen zusammenwirken.

Der teuerste Einzelfund des Laufs steckt aber nicht im Lignatec, sondern in einer
Zweitverifikation: das SWKI-Destillat führte die 12-WB/h-Schwelle als «zentralen
Entscheidungsparameter zwischen natürlicher und mechanischer Lüftung». **Das ist sachlich
falsch** — die Schwelle entscheidet erst nachgelagert über die Ausrüstungskonfiguration. Die
daraus abgeleitete Handlungsanweisung war unbrauchbar.

---

## 1. Vorbedingungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | rc=0 (Startzeit 01:28 CEST); vor jedem weiteren Fan-out erneut geprüft, jedes Mal rc=0 |
| NAS | gemountet |
| Quellzugriff OneDrive | lesbar, keine TCC-Blockade, kein M365-Fallback nötig |
| Kollisionsschutz | `ps` geprüft, kein zweiter Normen-Lauf |
| Stations-Split | eingehalten — nur SIA/VKF/Lignum/PL-02-Kern, kein DIN/VSS/RAL |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 40) vergeben |

## 2. Der Vorrang-Auftrag war zweifach überholt — was stattdessen fällig war

Der Task-Text verlangt die achte Runde mit rechnerischer Aufnahme von Tab. 3 und Tab. 4. Das
geschah in **Run 38**. Run 39 hat danach die Abdeckung von `lignum-4-1` gemessen, Run 40 die
Tabelle 2 und die acht Axonometrien rechnerisch aufgenommen. Run 40 hat ausgewiesen, was
danach noch offen war, und genau das war heute fällig:

> «der Fliesstext der Kapitel 1-4 ist nie systematisch gegen das Destillat gediffed worden —
> nur die Tabellen und Zeichnungen. Eine Seiten-Inventur nach dem Muster
> `training/l41-seiteninventur.md` existiert für den Lignatec nicht.»

### 2.1 Die Seiten-Inventur — neu, und sie hat sofort etwas gefunden

`training/lignatec-seiteninventur.md` nimmt alle 24 Druckseiten Element für Element auf:
Kapitel, Tabellen, Abbildungen, eigenständige Textblöcke, Marken-Aufzählungen und
Regelwerksverweise. Drei Aufnahme-Agenten, Auffälligkeiten vom Hauptprozess selbst nachgeprüft.

Vier strukturelle Feststellungen, die jede spätere Runde betreffen:

1. **Blatt 12 trägt `24 | 1`, nicht `24 | 25`.** Es ist der äusserste Bogen der Klammerheftung.
   Zwei unabhängige Aufnahmen sind darüber gestolpert und haben die rechte Halbseite für einen
   Rückumschlag gehalten — **eine davon hat es selbst gemeldet statt still zu übernehmen**, was
   genau das gewünschte Verhalten ist. Der Hauptprozess hat die Seite selbst gelesen: es ist das
   **Titelblatt**. Damit ist die Quelle vollständig (Druckseiten 1-24 lückenlos), und die
   Frontmatter-Angabe des Destillats trifft zu.
2. **Es gibt keine Tabelle 1.** Die Nummerierung springt von «Figur 1» auf «Tabelle 2». Vom
   Hauptprozess an S. 3 und S. 4 selbst geprüft. Eigenheit der Quelle, kein Destillat-Befund.
3. **Das Inhaltsverzeichnis führt die Tabellen unter der Seite ihres Kapitels**, nicht unter
   ihrer eigenen: Tab. 5 steht dort unter «Seite 14», liegt aber auf 15.
4. **Die acht Axonometrien sind belegt, nicht geschätzt:** vier Doppelseiten (Kap. 5.1-5.4) mit
   je zwei Zeichnungen, eine mit Tragwerk-, eine mit Brandabschnitts-Callouts.

### 2.2 Fliesstext Kapitel 1-4 — sechs Kernbefunde, alle Werte richtig

Geprüft wurden die Druckseiten 3, **4**, 6, 7, 10, 11, 14 — S. 4 hatte die Auftragsvorgabe
nicht genannt, dort steht der Einleitungsabsatz zu Ziff. 1.3. Beide Fragerichtungen gefahren,
mit Absatz-Checkliste je Seite.

| # | Fundstelle | Befund | warum folgenreich |
|---|---|---|---|
| 1 | Ziff. 1.4.2 | «insbesondere» gestrichen | die Nutzungsliste «grosse Personenbelegung» wurde abschliessend; ein Gemeindesaal fiele scheinbar heraus. **Sechste Stelle desselben Fehlertyps — die Bereinigung von Run 36 war unvollständig.** |
| 2 | Ziff. 1.5 | ganzer Einleitungsabsatz fehlte | «Der Brandschutz muss frühzeitig in die Gesamtplanung einbezogen werden» — die einzige Verfahrenspflicht der Publikation |
| 3 | Ziff. 1.5.2 | zweiter Art.-11-Spiegelstrich fehlte | das objektbezogene Konzept erschien als reines Reduktionsinstrument; Art. 11 ermächtigt die Behörde ausdrücklich auch zur **Erweiterung** |
| 4 | Ziff. 2.1 **und** 2.2.2 | **beide Kumulationssätze fehlten** | das ist die Verknüpfungsregel der zwei Tabellen-3-Spalten. Ohne sie liest man die Tabelle als Alternative statt als Kumulation — bei einer tragenden Wohnungstrennwand ist das der Bemessungsfehler |
| 5 | Ziff. 2.1 | Schutzziel-Satz fehlte | die Kriterienliste ohne ihren Massstab (Personenevakuierung, Brandbekämpfung) |
| 6 | Ziff. 2.2.2 | **gesamte Festlegungsregel** für brandabschnittsbildende Bauteile fehlte | samt Kriterium b «Feuerwiderstand der Tragwerke» und samt der Aussage, dass Sprinkler auch die zulässige **Ausdehnung** von Brandabschnitten beeinflussen — praktisch der wichtigste Grund, im Gewerbebau ein Sprinklerkonzept zu prüfen |

**Kernbefunde 4, 5 und 6 hat der Hauptprozess am eigenen 300-dpi-Rendering der S. 7 wörtlich
nachgelesen und bestätigt.** Dazu zwölf Nebenbefunde, darunter ein Wortfehler mit
Bedeutungsänderung («Mehrgebäudeställe», nicht «-stellen») und eine Präzisierung, die an
Hanglagen zählt («über dem gewachsenen Terrain liegende» statt «überirdische» Geschosse).

**Regressionscheck:** alle Korrekturen der Runden 32-36 halten. Die Schrägstrich-/Bindestrich-
Notation ist ein **viertes Mal methodisch unabhängig** bestätigt, diesmal aus dem gedruckten
Erläuterungskasten der S. 13.

### 2.3 Bewertung der Endbedingung

**Nicht erfüllt. Ereignis-Trigger wird weiterhin nicht vorgeschlagen** — aber die Begründung
hat sich zum zweiten Mal verschoben. Die Runden 6-8 fanden falsche Werte. Run 40 fand null
falsche Werte und nur Lücken in Tabellen und Zeichnungen. Run 41 findet null falsche Werte und
nur Lücken im Fliesstext, **und diese Lücken sind schwerer als die von Run 40**: sie betreffen
Regeln, nicht Ergänzungen.

Was jetzt ungeprüft bleibt, wie es die Methoden-Lehre verlangt: die **Zellwerte der Tabellen 3,
4 und 5** sind seit Runde 8 nicht erneut aufgenommen worden, und **Tabelle 2** ist nur im
Einleitungsabsatz gegen das Destillat gehalten, nicht zellenweise. Die neue Seiten-Inventur
macht eine solche Runde billig.

## 3. Zwei Zweitverifikationen — der dringlichste offene Punkt aus Run 40

Beide Destillate trugen frisch korrigierte Kernaussagen, die niemand unabhängig geprüft hatte.
Beide gehen unmittelbar in Projektberatung ein.

### 3.1 GVZ RWA-Parkhaus — die Werte halten, die Beschreibung war falsch

**Alle 27 Wertzellen beider Matrizes** wurden zellenweise nachgemessen (Median-RGB je
Teilzelle gegen die je Matrix **einzeln** gemessene Legende). Sie stimmen mit der
Run-40-Neufassung überein. Die Sprinkler-Lesart ist zusätzlich durch das Original selbst
bewiesen: Anhang-Beispiel 2 markiert bei ausdrücklich «ohne Sprinkleranlage» genau die untere,
weisse Teilzelle.

**Beanstandet wurde anderes.** Der schwerste Punkt widerspricht einer Stelle, die Run 40
ausdrücklich als «vom Hauptprozess nachgeprüft» geführt hat:

> Die Zellen sind **nicht diagonal, sondern waagrecht** zweigeteilt, auf halber Zeilenhöhe. Die
> **einzige Diagonale** der Publikation steht in der Spalte ≤ 600 m² und trägt das gedrehte
> Label «keine RWA erforderlich» — sie hat mit Sprinklern nichts zu tun.

Der Hauptprozess hat S. 6 selbst bei 300 dpi gerendert und gelesen: **der Refuter hat recht.**
Das ist der **dritte belegte Fall** in dieser KB, in dem eine frühere «geprüft korrekt»-
Bestätigung selbst der Fehler war (nach Run 35 Tab. 446-1 und Run 36 Tab. 5). Die
Methodik-Pflicht 3, solche Befunde nicht wegen der älteren Bestätigung zu verwerfen, hat sich
zum dritten Mal bezahlt gemacht.

Weitere fünf Kernbefunde, alle korrigiert: die **letzte Spalte** ist über die volle Zeilenhöhe
blau, also durchgehend «mit Sprinkleranlage» — das Destillat führte sie unmarkiert; die
**Handlungsempfehlung** setzte die MRWA-Schwelle bei 600 statt 1200 m² und widersprach damit
der eigenen Matrix; die **Anhangseiten 10-12 fehlten ganz** — ausgerechnet die drei Seiten mit
dem Leseschlüssel, der den Erstfehler verhindert hätte; die **Unterzeichnungspflicht des
Entrauchungskonzepts** fehlte; und die Frontmatter-Angabe «kein Rendering nötig» war
unhaltbar.

### 3.2 SWKI VA103-01 — der teuerste Fund des Laufs

Alle drei Run-40-Korrekturen **halten**, eine sogar mit einem zweiten, bisher unentdeckten
Beleg (Ziff. 2.4.4) und dem Titelblatt-Untertitel «(Mittel- und Grossgaragen)».

Aber: das Destillat führte die **12-WB/h-Schwelle als «zentralen Entscheidungsparameter
zwischen natürlicher und mechanischer Lüftung»** — in der Kurzfassung, in den Kernziffern und
als Handlungsanweisung im Praxis-Transfer. Der Hauptprozess hat Abb. 6 (S. 28, quer gesetzt)
selbst gerendert, gedreht und gelesen. Das Diagramm verzweigt:

> Garage offen? → Garage unter 100 m²? → Lage höher als 2. UG? → Veranstaltungs-Parkplätze
> ≤ 10 %? → natürliche Lüftung möglich?

**Erst danach** verzweigt jeder Ast über «≤ 12 WB/h?» in die Konfigurationen 1-6, und die
unterscheiden sich in Abgas-Überwachung, Alarmierung, Messwert-Anzeige und Steuerung — nicht im
Lüftungsprinzip. Textlich doppelt belegt in Ziff. 2.4.5. Die Empfehlung, für die
Grobeinschätzung die Wagenbewegungen gegen 12 WB/h zu prüfen, war damit **eine falsche
Handlungsanweisung**. Sie ist ersetzt: in der Vorprojektberatung entscheidet vor allem die
**Geschosslage** — alles tiefer als das 1. UG ist mechanisch.

Vier weitere Kernbefunde korrigiert: ein **innerer Widerspruch** (die in Run 40 widerlegte
Abstellplatz-Aussage stand weiterhin unter «Offene Punkte»); **PC 1/PC 2** waren als
«Betriebskonfigurationen» definiert, es sind **Druckbedingungen** nach SIA 382/1; zwei harte
Abgrenzungsregeln fehlten ganz (offene Garage ohne Lüftungspflicht, ab dem 2. UG mechanisch
zwingend); die Ausschlussgründe für natürliche Lüftung fehlten.

Der Refuter hat zudem alle 110 Seiten erschlossen und damit den **Abdeckungsgrad ehrlich
gemacht**: es fehlen der gesamte Bemessungskern, die Mess- und Steuerungsebene, die
Brandfall-Schnittstelle, die Kaminhöhen, alle Spezialanwendungen (inklusive Elektrofahrzeuge)
sowie Abnahme und Betrieb. Das steht jetzt im Feld `gelesen` und als acht Punkte in
`wiki/QUESTIONS.md`. **Belegter Seitenversatz: PDF-Seite = Druckseite + 2**; die früheren
Fundstellen der Kapitel 2.2-2.5 waren um bis zu fünf Seiten zu hoch.

## 4. PL-02 Kern-Nachtrag — 13 Positionen, 12 neue Destillate

| Bestand | Positionen | Ergebnis |
|---|---|---|
| PAVIDENSA (Estriche, Abdichtungen) | 9 | 9 Destillate; **Tabelle 1 von PAV-A 01 vom Hauptprozess korrigiert** |
| SN 592 Liegenschaftsentwässerung | 1 | 1 Destillat; **die Datei ist nicht die Norm** |
| Hindernisfreies Bauen (Ordner BKZ) | 4 | 3 Destillate + 1 als Kontaktseite geschlossen |

### 4.1 Die Tabelle, die drei Fehler trug

PAV-A 01:2010 führt in Tabelle 1 die Anforderungen an den Betonuntergrund nach SIA 271/272/273
und SN 640 450 — harte LV-Werte. Der Destillier-Agent meldete die Zuordnung ausdrücklich als
«nicht spaltengenau rekonstruierbar». Der Hauptprozess hat die beiden Seiten selbst gerendert
und gelesen; die Tabelle arbeitet stark mit **über mehrere Normspalten verbundenen Zellen**,
und die Erstaufnahme war an drei Stellen falsch:

- **Rautiefe** galt angeblich nur für SIA 271/272 — tatsächlich gilt 0,5…1,2 mm für SIA 272,
  SIA 273 **und** SN 640 450.
- **Ebenheit** war für SIA 273 mit «≤ 10 mm» angegeben — die Zelle enthält dort **keinen
  Zahlenwert**, sondern nur den Verweis auf SIA V414/10 Tabelle 38.
- **Feuchtigkeit** war nur SIA 273 zugeordnet — **≤ 4 Masse-% gilt für alle vier Normen**.

Bei PAV-A 03:2013 liess sich die grosse Kreuzmatrix ebenfalls nicht belastbar aufnehmen. Dort
ist sie **bewusst nicht wiedergegeben** und als offener Auftrag geführt: eine halbrichtige
Verträglichkeitsmatrix würde ein Schutzsystem freigeben, das mit der gewählten Abdichtungsbahn
nicht verträglich ist.

### 4.2 Zwei Fehlannotationen im Bestand

- **`SN592_Liegenschaftsentwaesserung_d.pdf` ist nicht die Norm SN 592000**, sondern ein
  zweiseitiges suissetec-Merkblatt vom Juli 2013 zur Revision der Ausgabe 4:2012. Die Norm
  liegt im Haus nicht vor. *(Die Angabe, seit 1.7.2024 gelte Ausgabe 5, stammt aus einer
  Web-Recherche des Agenten und ist im Destillat ausdrücklich als **nicht am Original belegt**
  markiert.)* Nebenbei ein zweites Mal bestätigt: der Ordner `06_Richtlinien/VSA` stammt vom
  Verband Schweizerischer Aufzugsunternehmen, nicht von der Liegenschaftsentwässerung.
- **Zwei der vier Dateien im Ordner `06_Richtlinien/BKZ` stammen nicht von der BKZ** — eine von
  der Schweizer Paraplegiker-Stiftung / ZHB Muhen, eine von der Schweizerischen Fachstelle für
  behindertengerechtes Bauen.

### 4.3 Der Abkürzungskonflikt, den diese KB jetzt hat

**BKZ heisst in dieser Wissensbasis zweierlei:** in der Brandschutz-Ecke «Brandkennziffer»
(Lignatec: BKZ 4.2 brennbar, BKZ 6q.3 nicht brennbar), im neuen Bestand «Behindertenkonferenz
Kanton Zürich». Belegt geprüft: in keinem der vier Hindernisfrei-Dokumente kommt «Brand» auch
nur vor. **Regel für diese KB: BKZ wird beim ersten Vorkommen je Artikel ausgeschrieben.**

### 4.4 Der wertvollste Einzelfund des Nachtrags

Die BKZ-Checkliste ist das **einzige** Dokument des Bestands mit einem Paragrafenverweis ins
kantonalzürcherische Baurecht: SN 521 500 und die Richtlinie «Wohnungsbau hindernisfrei-
anpassbar» sind **gemäss § 239 PBG und § 34 BBV I als Richtlinien und Normalien zu betrachten**.
Ob dieser Mechanismus heute auf SIA 500:2009 durchschlägt, ist an der Quelle nicht entscheidbar
und als **H41-1** offen geführt. Das ist ein Rücklauf-Kandidat für die KB `baurecht`.

## 5. Nachgeführt

- **13 neue Destillate** unter `destillate/`, alle `speculative`, alle mit Verifikationsstand
  im Frontmatter.
- **Neu: `training/lignatec-seiteninventur.md`** — vollständige Element-Inventur der 24 Seiten.
- `destillate/lignum-lignatec-brandschutz.md` — sechs Kernbefunde und die wichtigsten
  Nebenbefunde eingearbeitet, Frontmatter auf Runde 10.
- `destillate/gvz-rwa-parkhaus-einstellraum.md` — Matrizenbeschreibung korrigiert, Anhang
  S. 10-12 ergänzt, Rechtsgrundlage FFG ergänzt, Praxis-Schwelle korrigiert.
- `destillate/swki-va103-01-2017.md` — Abb. 6 vollständig aufgenommen, WB/h-Aussage und
  Praxis-Transfer ersetzt, PC-Definition korrigiert, zwei widersprüchliche offene Punkte
  gestrichen, Abdeckung ehrlich gemacht.
- `destillate/INDEX.md` — 13 neue Zeilen.
- `training/norm-inventar.md` — 13 Positionen geschlossen (`[x]` 12, `[-]` 1), zwei
  Annotationen korrigiert.
- `wiki/QUESTIONS.md` — 22 neue offene Punkte, nach Quelle gruppiert.

## 6. Offen — und was Raphael entscheiden sollte

1. **SWKI: der Bemessungskern fehlt** (S41-1 bis S41-7). Das Destillat verspricht in seinem
   ersten Satz, die Richtlinie «bemisst den nötigen Luftvolumenstrom» — die dafür nötigen
   Tabellen sind aber nicht drin. Solange das so ist, taugt es zur Einordnung, nicht zur
   Bemessung. **Dringlichster inhaltlicher Rückstand dieser KB.** Besonders Kap. 2.7
   (Elektrofahrzeuge) ist bei heutigen Tiefgaragenprojekten die meistgestellte Frage.
2. **Hindernisfreies Bauen: der Fassungsstand ist ungeklärt** (H41-1). Alle drei neuen
   Destillate stützen sich auf SN 521 500:1988. Ob § 239 PBG / § 34 BBV I heute auf SIA 500:2009
   durchschlagen, ist rechtlich relevant und an der Quelle nicht entscheidbar. Verbunden damit
   der seit 28.07. offene **P1-Punkt SIA 500 Korrigenda C3/C4** (rund 20 geänderte Stellen, erst
   vier markiert) — die Korrigenda liegen nicht im Haus und sind über den SIA-Shop zu beziehen;
   das habe ich in einem unbeaufsichtigten Lauf bewusst **nicht** ausgelöst.
3. **Lignatec-Taktung: weiterhin nicht entscheidbar.** Ich schlage die Umstellung auf
   Ereignis-Trigger **nicht** vor. Die zehnte Runde hat mit einer neuen Methode auf einem nie
   geprüften Teil sofort sechs Kernbefunde erbracht. Die nächste sinnvolle Runde ist die
   zellenweise Nachprüfung der Tabellen 3, 4 und 5 gegen die neue Seiten-Inventur.
4. **Methodik-Pflicht 8 als Kandidat** (M41-1): Tabellen mit verbundenen Zellen oder
   Farbcodierung werden gerendert und abgelesen, nie per Textextraktion aufgenommen. In diesem
   einen Lauf hat dieselbe Falle zweimal zugeschlagen — beim GVZ-Merkblatt und bei PAV-A 01 —
   und beide Male trug sie harte LV-Werte. Ich habe sie noch nicht ins PROGRAMM geschrieben,
   weil die Methodik-Pflichten dort bisher aus mehrfach belegten Mustern entstanden sind; zwei
   Fälle in einem Lauf sind ein starker, aber einzelner Beleg.
5. **Rest des Kern-Nachtrags: 39 Positionen offen** (`09_Sanitaereinrichtung` 14, lose
   Merkblätter rund 20, Restbestand). Darunter mehrere Hindernisfrei-Merkblätter von UGZ und
   Procap, die zum heute erschlossenen Bestand gehören.

## 7. Methodische Bilanz dieses Laufs

Die verbindliche Lehre hat sich in **drei** unabhängigen Fällen bestätigt, und zwar in ihrer
schärferen Form: nicht nur, dass eine Runde mit wenigen Befunden die Methode misst statt die
Quelle — sondern dass **eine frühere ausdrückliche «geprüft korrekt»-Bestätigung selbst der
Fehler sein kann**. Beim GVZ-Merkblatt war es die Run-40-Beschreibung der Matrixgeometrie, beim
Lignatec die Run-36-Bereinigung der Modalitäten (unvollständig, eine sechste Stelle blieb
stehen), beim SWKI die eigene Kurzfassung des Destillats.

Der Gegen-Mechanismus hat jedes Mal funktioniert: der Hauptprozess hat **jeden folgenreichen
Agentenbefund am eigenen Rendering selbst nachgelesen**, bevor er ihn übernommen hat — vier Mal
in diesem Lauf (Lignatec S. 7, GVZ S. 6, SWKI Abb. 6, PAV-A 01 Tab. 1), und ein Mal hat er
einen Agentenbefund dadurch **widerlegt** (das angeblich fehlende Titelblatt).
