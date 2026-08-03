# Normen-Training Run 42 (MacBook Pro, 03.08.2026) — PL-02-Kern-Nachtrag abgeschlossen, 22 neue Destillate, 9 Widerlegungs-Prüfungen

**Kurzfassung.** Der Vorrang-Auftrag des Task-Textes (achte Lignatec-Runde, Tab. 3 und 4) ist
zum vierten Mal überholt — er wurde in Run 38 erledigt, die Runden 39, 40 und 41 sind seither
gefahren. Fällig war deshalb, was das PROGRAMM als eigentliche Grundarbeit ausweist: der
**PL-02-Kern-Nachtrag**. Er ist mit diesem Lauf **abgeschlossen**: von 69 Positionen tragen
jetzt 68 einen Status, eine bleibt offen.

Entstanden sind **22 neue Destillate**. Neun davon haben eine unabhängige
Widerlegungs-Prüfung durchlaufen — **alle neun mit Verdikt BEANSTANDET**, zusammen 16
Kernbefunde und 36 Nebenbefunde, alle eingearbeitet. Zwei Kernbefunde hat der Hauptprozess am
eigenen Rendering selbst nachgelesen und bestätigt.

Der teuerste Einzelfund steckt nicht in einem neuen Destillat, sondern in einem alten: das
Sichtbeton-Merkblatt führte für die Expositionsklasse **XD2a eine Bewehrungsüberdeckung von
55 mm statt 40 mm** — ein Wert, der unverändert in Ausschreibung und Ausführungsplanung
wandert.

---

## 1. Vorbedingungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | rc=0 (Startzeit 22:08 CEST) |
| NAS | gemountet |
| Quellzugriff OneDrive | lesbar, keine TCC-Blockade, kein M365-Fallback nötig |
| Kollisionsschutz | `ps` geprüft, kein zweiter Normen-Lauf |
| Stations-Split | eingehalten — nur SIA/VKF und PL-02-Kern, kein DIN/VSS/RAL |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 41) vergeben |

**Pfad-Befund gleich zu Beginn:** Die Positionen des Kern-Nachtrags liegen **nicht** unter
`PL - 02_Recht_Norm/02_Normen/`, sondern eine Ebene höher direkt unter `PL - 02_Recht_Norm/`.
Der Task-Text nennt nur den `02_Normen/`-Pfad; wer ihn wörtlich nimmt, findet keine der 69
Dateien.

## 2. Der Vorrang-Auftrag ist zum vierten Mal überholt

Der Task-Text verlangt die achte Runde mit rechnerischer Aufnahme von Tab. 3 und Tab. 4 des
Lignatec. Das geschah in **Run 38** (30.07.2026). Run 39 hat danach die Abdeckung von
`lignum-4-1` gemessen, Run 40 die Tabelle 2 und die acht Axonometrien rechnerisch aufgenommen,
Run 41 den Fliesstext der Kapitel 1-4 und eine vollständige Seiten-Inventur.

Das PROGRAMM weist für den Lignatec als nächste Methode auf einem ungeprüften Teil die
zellenweise Nachprüfung der Tabellen 3, 4 und 5 gegen die neue Seiten-Inventur aus. Ich habe
sie **bewusst nicht** gefahren und stattdessen die Grundarbeit priorisiert. Begründung: Das
PROGRAMM selbst hält zum Kern-Nachtrag fest, er sei «die nächste Grundarbeit des Loops, sobald
der Lignum-Vorrang-Auftrag erfüllt ist — damit hat der Loop wieder echte Destillate statt
Bestätigungsrunden». Der Kern-Nachtrag stand bei Laufbeginn bei 34 offenen Positionen; eine
elfte Bestätigungsrunde auf einer bereits zehnmal geprüften Quelle hätte davon nichts erledigt.

**Was das für die Taktungsfrage heisst:** unverändert **nicht entscheidbar**, und ich schlage
die Umstellung auf Ereignis-Trigger weiterhin **nicht** vor. Die Endbedingung des
Vorrang-Auftrags ist nicht erfüllt, aber sie ist es aus einem anderen Grund als bisher: nicht
weil die letzte Runde Kernbefunde erbracht hätte, sondern weil dieser Lauf die offene Methode
gar nicht angewandt hat. Das ist nach der Methoden-Lehre sauber auszuweisen statt zu
verschweigen.

## 3. SWKI VA103-01 — der dringlichste Rückstand ist geschlossen, und das Destillat widersprach sich selbst

Run 41 hatte den fehlenden Bemessungskern als «dringlichsten inhaltlichen Rückstand dieser KB»
bezeichnet. Sechs unabhängige Segment-Agenten haben Kap. 2.6, 2.7, 2.8, Kap. 3 vollständig,
Kap. 4-9 und die Anhänge A/B/C visuell aufgenommen — die Datei hat **keinen Textlayer**,
`pdftotext` liefert nichts.

### 3.1 Der Widerspruch im eigenen Frontmatter

Beim Einarbeiten zeigte sich: Das Feld `gelesen` führte den Bemessungskern, die
Mess-/Steuerungsebene und die Brandfall-Schnittstelle weiterhin als **fehlend** — während
dieselben Abschnitte seit Run 41 im Text stehen, ausdrücklich datiert «ergänzt 010826». Das
Destillat widersprach sich selbst, und zwar an der Stelle, die jede spätere Runde als
Ausgangslage liest. Aufgelöst.

Dieselbe Frontmatter-Zeile behauptete den Faktor der Fahrzeuggruppe als **f_FG**. Der
Segment-Agent meldete ihn als **f_VG**. Weil das einer als geprüft geführten Stelle
widerspricht, hat der Hauptprozess die Druckseiten 55 bis 58 selbst gerendert und gelesen:
**f_VG ist richtig**, sowohl in Tab. 14 als auch in der Faktorenliste. Bestätigt wurden dabei
zugleich Tab. 12 (Benutzerkategorien), Tab. 13 (f_ODA) und Tab. 15 (Luftvolumenstrom-Anteile)
Zelle für Zelle.

### 3.2 Neu aufgenommen

Kap. 2.7 **Spezialanwendungen** vollständig, Kap. 2.6.3 bis 2.6.7 mit Tab. 6/7/8
(Kaminhöhen, Beurteilungsradius), Kap. 3.1/3.2/3.3/3.5.3/3.5.4/3.5.6/3.6 mit Tab. 11/13/14,
die fehlenden Ziffern aus Kap. 2.8 samt Tab. 9, Kap. 4.1 und 5.1-5.4, **Kap. 6 Prüfungen
vollständig**, Kap. 7 Betrieb und Instandhaltung, Kap. 8, Kap. 9 sowie Anhang C.

**Der praktisch wichtigste Zugewinn — Elektrofahrzeuge (Ziff. 2.7.5), vom Hauptprozess selbst
nachgelesen:** Die Richtlinie unterscheidet strikt nach Batterietyp. Bei Blei-, NiCd- und
alkalischen Batterien entsteht beim Laden Wasserstoff, Vorkehrungen nach SN EN 50272-3. Bei
**Batterien auf Lithiumbasis wird kein Wasserstoff frei — SN EN 50272-3 gilt für sie
ausdrücklich NICHT.** Stattdessen ist nach VDI 2166 Blatt 2 mit einem Wärmeeintrag von **10 %
der Ladeleistung** zu rechnen. Ebenso festgehalten ist, was die Richtlinie **nicht** regelt:
keine eigene Lüftungskennzahl für Lithium-Ladeinfrastruktur, nichts zum thermischen Durchgehen,
nichts zur Bemessung der Ladeinfrastruktur selbst. Bei heutigen Tiefgaragenprojekten ist das
die meistgestellte Frage; die Lücke ist jetzt als Lücke sichtbar statt als Vermutung gefüllt.

**Noch nicht destilliert:** Anhang D (Anwendungsbeispiele S. 81-94), Anhang E
(Simulationsnachweis-Methodik S. 95-106), Anhang F. Ferner die vollständige Standortliste der
Tab. 16 und die Tab. 17, beide bewusst nicht als Volltabelle kopiert (Urheberrecht).

## 4. Die neun Widerlegungs-Prüfungen — alle beanstandet

| Destillat | Verdikt | Kern | Neben |
|---|---|---|---|
| Sichtbeton cemsuisse MB 02 | BEANSTANDET | 2 | 8 |
| Absturzsicherungen Stadt ZH 2019 | BEANSTANDET | 5 | 7 |
| Procap MB 105 rollstuhlgerechte Toiletten | BEANSTANDET | 2 | 9 |
| UGZ Toilettenanlagen 2012 | BEANSTANDET | 3 | 3 |
| UGZ Toilettenanlagen 2020 | BEANSTANDET | 2 | 4 |
| GVZ/AWEL Hochwassergefahrenkarten | BEANSTANDET | 2 | 2 |
| AWEL Versickerung | BEANSTANDET | 2 | 3 |
| UGZ Hindernisfreie Aufzüge 2010 | BEANSTANDET | 1 | 4 |
| UGZ Wohnungsbau hindernisfrei 2014 | BEANSTANDET | 1 | 3 |

### 4.1 Die zwei vom Hauptprozess selbst nachgelesenen Kernbefunde

**Sichtbeton, Tab. 9 — Bewehrungsüberdeckung.** Das Destillat las die Spaltengruppen als
`XD1 | XD2a/XD2b/XD3` und gab damit für XD2a 55 mm (Betonstahl) bzw. 65 mm (Spannstahl) an.
Ich habe die Seite bei 300 dpi gerendert und die Wertzeilen vergrössert abgelesen: «40» steht
mittig über **XD1 und XD2a**, «55» nur über XD2b und XD3; ebenso «35» und «45» über XC2+XC3.
Für XD2a führte das Destillat also **15 mm zu viel**. Der Refuter hat recht.

Die methodisch interessante Zugabe: Das Destillat hatte diese Tabelle ausdrücklich als «bei
300 dpi verifiziert» deklariert, während es die SBK-Anforderungsmatrix (Tab. 4/5) selbst als
ungeprüft markierte. Geprüft war die falsche, ungeprüft die richtige. **Eine ausdrückliche
Prüfzusicherung ist kein Korrektheitsbeleg** — das steht jetzt als Beobachtung im Destillat.

**Hochwasser-Leitfaden — systematischer Fundstellen-Versatz.** Das Destillat führte einen
Verweis «siehe S. 14» als ins Leere laufend, weil das PDF nur 13 Seiten hat. Ich habe
PDF-Seite 9 gerendert und die linke Hälfte gelesen: Dort steht genau der verwiesene Inhalt
(gelbe und gelb-weisse Zone, Selbstdeklaration der Gesuchsteller, Beratungsdienste der
Gebäudeversicherung). Jede PDF-Seite ist eine **Doppelseite**; sämtliche «S. X»-Angaben des
Destillats waren PDF-Seiten, nicht gedruckte Seiten. Nach Rule `normen-referenz` wurde damit
systematisch die falsche Seite zitiert. Korrigiert, mit dem ausdrücklichen Vermerk, dass die
Seitenzuordnung **hergeleitet und nicht an einem gedruckten Folio abgelesen** ist — das Layout
druckt keine.

### 4.2 Die folgenreichsten übrigen Kernbefunde

- **Absturzsicherungen:** Die Kurzfassung führte die Kugelprobe (Ø 12 cm bis 75 cm) und das
  30-cm-Lichtmass gemeinsam als «Kernmasse». Sie schliessen einander aus: das Lichtmass gilt
  nur für **nicht kindersichere** Elemente (Gewerbe, Industrie, Erwachsenenbildung, öffentliche
  Parkdecks), die Kugelprobe nur für **kindersichere** (Wohnbau, Schule, publikumszugängliche
  Bereiche). Im Wohnbau ist ein Stababstand von 30 cm unzulässig. Der Fliesstext hatte es
  richtig — die Kurzfassung, die zuerst gelesen und zuerst zitiert wird, nicht. Dazu drei
  weitere Kernbefunde aus **Skizzenmassen, die im Fliesstext gar nicht vorkommen**: die
  Handlaufquerschnitte fehlten ganz, der Fall «nur obere Traverse» fehlte, und beim
  Pflanzentrog war ein waagrechtes Breitenmass als Höhenkote gelesen worden.
- **UGZ Toilettenanlagen 2012:** In der Horte-/Kindergarten-Tabelle war die Zeile «> 100» um
  eine Spalte verschoben. Das drehte die einzige zwingende Rollstuhl-Vorgabe der Tabelle in
  eine fakultative und erfand zugleich ein Personal-WC, das die Tabelle nicht vorgibt. Zweiter
  Kernbefund: Massketten aus den Skizzen «Toiletten und Vorräume (Beispiele)» waren als
  Rollstuhl-Masse destilliert — daraus wäre ein nicht benutzbares Rollstuhl-WC ins Raumprogramm
  gewandert. Das Merkblatt 2012 nennt für rollstuhlgängige Anlagen **gar keine eigenen Masse**.
- **Procap MB 105:** «min. +0.70» am Waschbecken ist eine **Unterfahrhöhe** (Pfeil nach oben),
  keine zulässige Montagehöhe; die Detaillegende verlangt zwingend «unterfahrbar» und nennt gar
  keine Höhe. Wer die Beckenoberkante auf +0.70 setzt, erfüllt das alte Destillat und verletzt
  die Unterfahrbarkeit. Zweitens war eine Kategorie «Raumhöhen-Referenzwerte» **erfunden** — die
  beiden Koten sind Spiegel-Oberkante und Haltegriff-Oberkante.
- **UGZ Hindernisfreie Aufzüge:** Die drei Kabinengrundrisse zeigen drei **Türanordnungen**
  (Schmalseite, Durchlader, über Eck), und nur die Über-Eck-Anordnung trägt 1.40 × 1.40 m. Das
  Destillat stellte das Mass als frei wählbare Alternative dar; wer bei Über-Eck-Türen
  1.10 × 1.40 wählt, baut eine Kabine, in der der Rollstuhl nicht wenden kann.
- **UGZ Wohnungsbau:** «Eingangsgeschoss» statt «Wohngeschoss». Bei Split-Level-Wohnungen
  fallen die beiden regelmässig auseinander.

### 4.3 Was die Prüfungen bestätigt haben

Nicht jeder Refuter-Befund war ein Fehler des Destillats, und das gehört protokolliert. Die
Zuordnung der beiden UGZ-Toiletten-Ausgaben (2020 gegen 2012) wurde am Original bestätigt —
**kein Vertauschungsfehler**. Alle fünf ursprünglich behaupteten Widersprüche zwischen den
beiden Ausgaben existieren tatsächlich, **keiner war erfunden**. Beim Hochwasser-Leitfaden hat
die rechnerische Matrix-Aufnahme (Median-RGB gegen die einzeln gemessene Legende) ergeben, dass
die Grenzzellen **tatsächlich diagonal** geteilt sind und alle neun Farbzuordnungen stimmen —
der vermutete Fehlerort lag dort nicht. Beim Sichtbeton waren Tab. 4, 5, 7, 8, 10 und 12
vollständig korrekt.

## 5. Der PL-02-Kern-Nachtrag ist abgeschlossen

**68 von 69 Positionen tragen jetzt einen Status.** Offen bleibt eine einzige:
`06_Richtlinien/BKZ/BKZ - Behindertenkonferenz Kanton Zürich.pdf`.

Die Statusmarker sind bewusst getrennt geführt: `[x]` nur für die neun refuter-geprüften
Positionen, `[~]` für Erstdestillate ohne unabhängige Verifikation, `[-]` für begründet nicht
destilliertes Material. Eine pauschale `[x]`-Vergabe hätte den Verifikationsstand
verschleiert.

### 5.1 Sieben Dateien sind nicht das, was ihr Name behauptet

Das ist inzwischen das verlässlichste Einzelmuster dieses Bestands:

- **`Tiefbauamt_Leitfaden.pdf`** handelt nicht von Werkleitungen oder Strassenabständen, sondern
  ist der «Leitfaden Mobilität in der 2000-Watt-Gesellschaft» (Juni 2007) über die durch ein
  Bauprojekt **induzierte Mobilität**.
- **`AFS_Leitfaden_klein kunst.pdf`** hat mit Kleinkunst nichts zu tun: es ist der Leitfaden
  «Kunst im öffentlichen Raum» der AG KiöR (2009). «AFS» ist blosses Ablage-Präfix, nicht die
  Herausgeberin.
- **Die beiden AFS-Dachlandschaften-Dateien sind keine Dublette.** Verschiedene MD5,
  verschiedene Seitenzahl (17 gegen 60). Es sind Vortragsfolien (März 2010) und Vollfassung
  (Dezember 2009). Der Kurzfassung fehlt das ganze Kapitel «Gesetzliche Grundlagen» — sie ist
  **nicht zitierfähig**. Die Inventar-Annotation ist korrigiert.
- **`MB_BAU_Toilettenanlagen…` und `UGZ_Toilettenanlagen.pdf`** sind keine zwei unabhängigen
  Dokumente, sondern **zwei Ausgaben derselben UGZ-Publikation** (Dezember 2020 und Mai 2012).
- **`Arbeitshilfen Sanitärapparate.pdf`** ist kein Einzeldokument, sondern ein Sammelscan aus
  mindestens drei Quellen (GEBERIT mit zwei Nummernkreisen, ein «SGVSB»-Blattwerk, Sanitas
  Troesch), mit einer doppelt eingescannten Seite.
- **`Flaechen_Wettbewerb.pdf`** enthält **keine** Flächendefinition für Wettbewerbe und keinen
  SIA-416-Bezug, sondern ist ein handschriftliches, projektbezogenes Raumprogramm-Arbeitsblatt
  (Indiz «Medgas-Raum»). Kein Destillat.
- **`Wegleitung für Verlegung Gartenplatten.pdf`** trägt auf der letzten Scanseite einen
  **mitgescannten Fremd-Auszug aus SIA 244:2006**, der nicht Teil der Wegleitung ist.

### 5.2 Zwei Warnbefunde, die in ein Projekt durchschlagen können

- **`AUVA Planungshilfe`** ist ein **österreichisches** Dokument (AUVA Wien, ÖNORM B 3418).
  Seine Werte dürfen nicht unbesehen auf ein Schweizer Projekt übertragen werden; die
  Schweizer Primärquelle ist Suva 44066 (bereits in dieser KB) plus BauAV und EKAS 6512. Das
  Destillat trägt einen ausdrücklichen Warnabschnitt.
- **`Merkblatt-TK004_Fluchtwege`** ist eine **Verbandsauslegung der Türenindustrie**, keine
  VKF-Vorschrift, und stützt sich auf die **VKF-Generation 2003** — überholt durch VKF 2015 /
  BRL 16-15 (Stand 2022). Die Artikelnummern sind nicht mehr aktuell.
- Ergänzend beim **Procap-Merkblatt**: Die Quelldatei trägt auf S. 1 eine rote, nachträglich
  eingefügte Fremdanmerkung, die **nicht von Procap stammt**. Sie ist im Destillat als solche
  benannt, damit ein späterer Leser des PDF sie nicht für Original hält.

### 5.3 Ertrag für den offenen Punkt H41-1

Alle drei neu destillierten Hindernisfrei-Merkblätter stützen sich auf **SIA 500:2009**, keines
auf SN 521 500:1988; die beiden UGZ-Blätter belegen die Fassung wörtlich, das Procap-Merkblatt
nennt gar kein Jahr. **Aber keines liefert einen eigenständigen Beleg zum kantonalen
Verordnungsstand** (§ 239 PBG / § 34 BBV I). H41-1 bleibt damit offen, ist jetzt aber präziser
gestellt. Nebenbefund: Das UGZ-Wohnungsbaublatt zitiert die Norm auf S. 1 jahreslos und mit
falschem Titel («Hindernisfreies Bauen» statt «Hindernisfreie Bauten»).

## 6. Nachgeführt

- **22 neue Destillate** unter `destillate/`, alle `speculative`, alle mit Verifikationsstand im
  Frontmatter.
- `destillate/swki-va103-01-2017.md` — sechs neue Kapitel-Abschnitte, Frontmatter-Widerspruch
  aufgelöst, Abdeckung ehrlich gemacht.
- Neun Destillate mit eingearbeiteten Refuter-Befunden, je mit ehrlichem `gelesen`-Feld
  (geprüft gegen ungeprüft) und dokumentiertem Verdikt im `status`-Feld.
- `training/norm-inventar.md` — 23 Positionen geschlossen, **zwei falsche Annotationen
  korrigiert** (AFS-Dublette, UGZ-Toiletten als zwei unabhängige Dokumente).
- `destillate/INDEX.md` — 22 neue Zeilen · `wiki/QUESTIONS.md` — 8 neue offene Punkte ·
  `CHANGELOG.md` — datierter Eintrag.

## 7. Offen — und was Raphael entscheiden sollte

1. **Der Kern-Nachtrag ist abgeschlossen, das Inventar damit praktisch leer.** Nach dem
   PROGRAMM wechselt der Loop dann auf die Vertiefungsstufen (Tiefendestillate,
   Retro-Verifikation, Q&A-Selbstbefragung, Querschnitts-Synthesen). **Vorzulegender Entscheid:**
   Der Task-Text trägt seit dem 29.07.2026 einen Vorrang-Auftrag, der seit Run 38 erledigt ist
   und den seither jeder Lauf neu als überholt feststellen muss. Das kostet in jedem Lauf
   Kontext und Zeit. Ich schlage vor, die Auftragszeile des Scheduled Task zu ersetzen — die
   Umstellung nehme ich nicht selbst vor.
2. **13 Erstdestillate warten auf eine unabhängige Verifikation** (Marker `[~]`). Die neun
   geprüften waren **ausnahmslos** beanstandet; es gibt keinen Grund anzunehmen, die
   ungeprüften seien besser. Dringlichste drei nach Schadenspotenzial: das
   CRB-Devisierungs-Merkblatt 16 D/06 (Oberflächengüte Q1-Q4, geht direkt in NPK-Positionen),
   die Kalksandstein-Bemessung (SIA-266-Kennwerte) und die SVDW-Wegleitung Gartenplatten
   (Gefälle- und Aufbauwerte).
3. **SWKI: Anhang D und E fehlen weiterhin.** Anhang E trägt die Methodik des
   Simulationsnachweises — er ist der Weg, den Abluftvolumenstrom auf 70 % zu senken, also der
   Anhang mit dem grössten wirtschaftlichen Hebel bei Tiefgaragenprojekten.
4. **Der seit 28.07. offene P1-Punkt SIA 500 Korrigenda C3/C4** bleibt liegen; die Korrigenda
   liegen nicht im Haus und wären über den SIA-Shop zu beziehen. Das habe ich in einem
   unbeaufsichtigten Lauf bewusst **nicht** ausgelöst.
5. **Lignatec-Taktung: weiterhin nicht entscheidbar**, Ereignis-Trigger wird nicht
   vorgeschlagen (siehe Abschnitt 2).

## 8. Methodische Bilanz

Die verbindliche Lehre hat sich erneut bestätigt, und diesmal in einer Variante, die schärfer
ist als die bisherigen: **eine ausdrückliche Prüfzusicherung im Destillat ist kein Beleg.** Beim
Sichtbeton trug genau die als «bei 300 dpi verifiziert» deklarierte Tabelle den Fehler, während
die selbst als ungeprüft markierte Matrix fehlerfrei war. Beim Absturz-Destillat behauptete das
Feld `gelesen` Vollständigkeit und schloss eine ganze Seite mit drei Skizzengruppen
stillschweigend aus — vier der fünf Kernbefunde stammen von dieser Seite. Beim SWKI-Destillat
widersprach das Frontmatter dem eigenen Text.

Damit ist es der **vierte** belegte Fall in dieser Wissensbasis, in dem eine frühere
«geprüft»-Angabe selbst der Fehler war (nach Run 35 Tab. 446-1, Run 36 Tab. 5, Run 41
GVZ-Matrixgeometrie). Die Konsequenz ist keine neue Methodik-Pflicht, sondern eine Schärfung
von Pflicht 3: Ein `gelesen`- oder `status`-Feld ist eine **Behauptung des Destillats über sich
selbst** und damit genauso prüfbedürftig wie jede Sachaussage darin.

Der Gegen-Mechanismus hat wieder getragen: Der Hauptprozess hat jeden folgenreichen
Agentenbefund am eigenen Rendering selbst nachgelesen, bevor er ihn übernommen hat — viermal
in diesem Lauf (SWKI Druckseiten 55-58 und 46-47, Sichtbeton S. 33, Hochwasser PDF-Seite 9).
