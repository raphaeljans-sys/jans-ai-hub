# Normen-Training Run 43 (MacBook Pro, 04.08.2026) — 5 Widerlegungs-Prüfungen, die zwei SWKI-Anhänge, und ein falscher BKP-Code in der Hub-Referenz

**Kurzfassung.** Der Vorrang-Auftrag des Task-Textes ist zum **fünften Mal** überholt (erledigt
in Run 38). Gefahren wurde deshalb der vom Run-42-Report ausgewiesene Rückstand: **fünf
unabhängige Widerlegungs-Prüfungen** der Erstdestillate, die **zwei fehlenden SWKI-Anhänge**,
die **letzte offene Inventar-Position** und ein offener Leseauftrag an SIA 500.

**Alle fünf Prüfungen endeten BEANSTANDET** — zusammen 38 Kernbefunde. Damit sind in dieser
Wissensbasis nun **vierzehn von vierzehn** unabhängig geprüften Erstdestillaten beanstandet
worden. Das ist kein Zufall mehr, sondern eine Aussage über den Wert der Verifikationsstufe.

Der Befund mit der grössten Reichweite steckt nicht in einem Destillat, sondern in der
**Hub-Referenz selbst: den BKP-Code «271.10» gibt es nicht.** Er stand in der Rule
`bkp-2017-referenz` und in der Schnellreferenz der BKP-Liste — und damit in jedem LV-Titel, der
danach gebildet wurde.

---

## 1. Vorbedingungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | rc=0 (Startzeit 01:28 CEST) |
| NAS | gemountet |
| Quellzugriff OneDrive | lesbar, keine TCC-Blockade, kein M365-Fallback nötig |
| Kollisionsschutz | `ps` geprüft, kein zweiter Normen-Lauf |
| Stations-Split | eingehalten — nur SIA/VKF und PL-02-Kern, kein DIN/VSS/RAL |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 42) vergeben |

## 2. Der Vorrang-Auftrag, zum fünften Mal

Der Task-Text verlangt seit dem 29.07.2026 die achte Lignatec-Runde mit rechnerischer Aufnahme
von Tab. 3 und Tab. 4. Das geschah in **Run 38**; die Runden 39, 40, 41 sind seither gefahren.
Jeder Lauf seit dem 30.07. muss das neu feststellen, und das kostet in jedem Lauf Kontext.

**Zur Taktungsfrage unverändert: nicht entscheidbar, Ereignis-Trigger wird nicht vorgeschlagen.**
Nach der Methoden-Lehre ist auszuweisen, was ungeprüft blieb — für den Lignatec ist das die
zellenweise Nachprüfung der Tabellen 3, 4 und 5 gegen die Seiten-Inventur aus Run 41. Dieser
Lauf hat sie **nicht** gefahren, sondern die Grundarbeit priorisiert. Das ist auszuweisen statt
zu verschweigen.

**Vorzulegen (dritte Wiederholung):** die Auftragszeile des Scheduled Task ersetzen. Ich nehme
die Umstellung nicht selbst vor.

## 3. Der Befund, der über diese Wissensbasis hinausreicht: BKP 271.10 existiert nicht

Der Refuter des CRB-Merkblatts meldete beiläufig, die BKP-Zuordnung des Destillats sei zu eng,
und wies dabei auf einen **Widerspruch in der Referenz selbst** hin. Die Nachprüfung des
Hauptprozesses am Original-PDF:

- `references/bkp-2017/BKP-2017-Liste.md` führt im **systematischen Teil** korrekt
  `271.0 Innenputze / 271.1 Trockenbauarbeiten / 271.2 Gerüste`.
- Im **Schnellreferenz-Block** derselben Datei stand `271.10 Innenputze (häufig im LV)`.
- Das **Original-PDF** kennt 271.10 nicht. Eine Suche über die gesamte Gliederung nach dem
  Muster `NNN.NN` liefert **null Treffer** — zweistellige Nachkommastellen gibt es im BKP 2017
  überhaupt nicht.

Die Datei widersprach sich also selbst, und der falsche Wert stand ausgerechnet in dem Block,
den man beim Devisieren aufschlägt. Über die Rule `bkp-2017-referenz` (Tabelle **und**
Formatbeispiel) und `CLAUDE.md` war er in **15 Hub-Dateien** gewandert, darunter
`skills/ausschreibung/SKILL.md` und `skills/brandschutz/SKILL.md`.

**Korrigiert:** die beiden normativen Quellen (Referenzliste und Rule) sowie das KB-Destillat.
**Offen (Ticket N43-1):** 13 weitere Dateien. Jeder LV-Titel «BKP 271.10 Innenputze» trägt
einen Code, den weder Unternehmer noch Bauherrschaft verifizieren können. Das liegt ausserhalb
des Scopes dieses Loops und wird vorgelegt.

Die Lehre ist eine Schärfung von Methodik-Pflicht 3: **ein Schnellreferenz-Block ist eine
Abschrift und damit genauso prüfbedürftig wie jede andere Sekundärquelle.**

## 4. Die fünf Widerlegungs-Prüfungen

| Destillat | Verdikt | Kern | Neben |
|---|---|---|---|
| CRB Merkblatt 16 D/06 (Oberflächengüte Q1-Q4) | BEANSTANDET | 6 | 8 |
| Kalksandstein-Bemessung KSV 2012 | BEANSTANDET | 10 | 12 |
| SVDW Wegleitung Gartenplatten | BEANSTANDET | 8 | 16 |
| SMU-Merkblatt 004 Türen in Fluchtwegen | BEANSTANDET | 8 | 7 |
| AUVA Planungshilfe Anschlageinrichtungen | BEANSTANDET | 6 | 8 |

### 4.1 Vier Befunde hat der Hauptprozess am eigenen Rendering selbst nachgelesen

**Kalksandstein, l1 — der gefährlichste Einzelbefund des Laufs.** Das Destillat setzte
`l1 = bezogene Spannweite der Decke` mit der Spannweite gleich. Ich habe S. 11 bei 300 dpi
gerendert: Beispiel 2 rechnet wörtlich «Massgebende bezogene Spannweite der Decke:
**l₁ = 0.6 · 5.0 = 3.00 m**» für eine Zwischenwand. Die Quelle koppelt l1 an die Lagerung
(l / 0,8 l / 0,6 l). **l1 geht in dritter Potenz** in die Verdrehungsformel ein — wer die
Rohspannweite einsetzt, liegt bei einer Zwischenwand um den Faktor **(1/0,6)³ ≈ 4,6 zu hoch**.
Auf derselben Seite stand die vom Refuter vermisste Einspann-Definition, die überhaupt erst
erlaubt, hcr = 0,7 hw anzusetzen.

**CRB, die Streiflicht-Vorbehalte.** Mein eigener Auszug bestätigt an vier Stellen wörtlich:
Q4 auf Gipsplatten und auf Vollgipsplatten enden je mit «Unerwünschte Effekte im Streiflicht
können weitgehend vermieden, **aber nicht völlig ausgeschlossen** werden»; Q3-geglättet mit
«Im Streiflicht sichtbar werdende Abzeichnungen sind nicht völlig auszuschliessen und
**zulässig**». Alle drei fehlten. Damit erschien Q4 als streiflichtfreie Stufe — wer daraus
einen LV-Text ableitet, sichert eine Eigenschaft zu, die das Merkblatt ausdrücklich nicht
zusichert. Die Abstufung ist im Original fein: Q2-geglättet sagt härter «Schattenfreiheit bei
Streiflicht kann **nicht** erreicht werden», Q4-geglättet «wird **weitgehend** ausgeschlossen».

**SVDW, SIA 244 Tabelle 4.** Bei 200 dpi gerendert und abgelesen: die Zeile «Plattenformat»
führt unter «ungebunden, lose verlegt» **Dicke 20 mm → Breite min. 300 mm, 30 mm → min. 200 mm,
40 mm → min. 150 mm**, unter «gebunden» schlicht «alle Formate». Es sind **Mindestbreiten der
Platte**, gekoppelt an ihre Dicke — nicht, wie destilliert, Bettungsmasse. Die Regel «je dünner
die Platte, desto grösser muss ihr Format mindestens sein» war verloren. Zwei ganze
Tabellenzeilen fehlten zudem: Seitenverhältnis max. 1:1,5 und die typische Bettungsdicke
(ungebunden ≥ 30 mm; gebunden 30-100 mm Splittmörtel, 20-50 mm Sandmörtel).

**Türen-Merkblätter, der Vergleichsoperator — hier lag der Refuter falsch herum.** Er meldete,
die Schwesterdatei `vst-merkblatt-012` trage einen Fehler («F ≥» statt «F ≤»). Die Prüfung an
**beiden** Originalen zeigt etwas anderes: die VST-Fassung druckt tatsächlich
`F ≥ 80/100/220 N`, die SMU-Ko-Ausgabe desselben Merkblatts `F ≤`. Sachlich richtig ist «≤» —
eine Fluchttür, die *mindestens* 220 N verlangt, wäre das Gegenteil des Schutzziels «Öffnen mit
einer einzigen Handbewegung». **Der Druckfehler steckt im VST-Original, nicht im Destillat.**
Das Destillat hat seine Quelle korrekt abgeschrieben; der Vermerk ist dort gesetzt.

Das ist der Ertrag von Methodik-Pflicht 5 in Reinform: ein folgenreicher Agentenbefund wurde
nicht übernommen, sondern nachgeprüft — und die Nachprüfung hat die Schuldzuweisung umgedreht,
ohne den Sachbefund zu entwerten.

### 4.2 Die folgenreichsten übrigen Kernbefunde

- **Kalksandstein, Gebrauchstauglichkeit:** die Quelle rechnet mit einer reduzierten
  Langzeit-Nutzlast **q_ser,lang = 2,0 kN/m²** und dem Langzeit-E-Modul **12·10⁶ kN/m²**, nicht
  mit «γ = 1,0» und 10·10⁶. Wer der bisherigen Beschreibung folgte, lag rund **45 % zu hoch**.
  Und die Rissweiten-Diagramme waren ohne den Wert **Nxo = 100 kN/m¹** und die drei
  Achsentransformationen schlicht **nicht anwendbar** — der operative Kern des Kapitels fehlte.
  Zusatzfund: die Quelle **widerspricht sich selbst** (gedruckte Formel S. 7 gegen Beispiel
  S. 10); das Destillat hatte den Druckfehler stillschweigend korrigiert, statt ihn zu benennen.
- **SMU 004 — ein echter Widerspruch zur geltenden VKF.** Die Ausnahme von der
  Fluchtrichtungspflicht lautet im Merkblatt **max. 30 m² UND max. 6 Personen**, in der
  geltenden BRL 16-15 Ziff. 2.5.5 **max. 20 Personen ohne Flächenkriterium**. Das Merkblatt ist
  deutlich strenger. Zudem schrieb das Destillat die 30-m²-Zahl der VKF zu — der im Merkblatt
  abgedruckte Art. 48 Abs. 1 enthält **gar keine Zahl**; die Konkretisierung ist eine Setzung
  des Verbands.
- **SMU 004 — fünf von neun Kapiteln waren nicht destilliert**, darunter die Montagemasse des
  Nottasters (800-1200 mm über Boden, seitlich max. 500 bzw. 600 mm), die 1000-N-Vorlast, die
  Sekunden-Anforderung beim Öffnen und die vier genormten Panikschloss-Funktionen.
- **SVDW — die praktisch wichtigste Fallback-Regel fehlte:** wird das Mindestgefälle von 1,5 %
  nicht erreicht, ist die Entwässerung **über offene Plattenfugen mit Abstandhaltern**
  sicherzustellen. Das ist der Regelfall bei Bestandsbalkonen. Ferner war die «Verlegetoleranz
  2-3 mm» eine Fehletikettierung: beim Einbau verlangt die Wegleitung **ebenbündige** Verlegung,
  die 2-3 mm sind die durch **spätere Setzungen** zulässige Differenz — die alte Fassung kehrte
  die Beweislast bei der Abnahme um.
- **AUVA — die CH-Warnung ruhte auf den falschen Belegen.** Das Destillat begründete die
  österreichische Prägung ausgerechnet mit «ÖNORM EN 1873» und «ÖNORM EN 13374». Das Präfix
  **ÖNORM EN bezeichnet die nationale Veröffentlichung einer EN** — beide gelten in der Schweiz
  inhaltsgleich als SN EN. Wirklich national sind ÖNORM B 3418, die Klassenmatrix und, am
  wichtigsten, die Regel **«bis 5 m Absturzhöhe Anlegeleitern ohne Zusatzmassnahmen»**: in der
  Schweiz greift die Massnahmenpflicht **ab 3,0 m** (Suva 44066 / BauAV). Dieser Wert stand im
  Destillat unmarkiert. Übersehen worden war zudem, dass einer der Normverweise (BGG 906)
  **deutsch** ist, nicht österreichisch.

### 4.3 Was die Prüfungen bestätigt haben

Nicht jeder Refuter-Befund war ein Fehler, und das gehört protokolliert. Beim CRB-Merkblatt war
**kein einziger Zahlenwert falsch** — die 1,0-mm-Schwelle, die 3-mm-Schichtdicke, die fünf
NPK-Kapitel, die drei Verbandsadressen, die Datierung: alles am Original bestätigt. Bei der
Kalksandstein-Bemessung stimmten sämtliche Festigkeits- und Beiwerte, beide
Rissweiten-Anforderungen und alle Zahlen beider Rechenbeispiele. Bei der SVDW-Wegleitung waren
zwei der drei SIA-244-Tabellen exakt übernommen und die Herstellertoleranz-Tabelle vollständig
richtig; auch der Run-42-Befund zum mitgescannten Fremdauszug hat sich bestätigt und liess sich
präzisieren (Wegleitung = Scanseiten 1-8, Fremdauszug = ausschliesslich Scanseite 9).

Beim CRB-Merkblatt hat sich zudem erstmals in dieser KB eine **Prüfzusicherung des Destillats
als zutreffend erwiesen**: «reiner Fliesstext, kein Rendering notwendig» stimmt, das Dokument
enthält auf keiner Seite eine Tabelle oder Farbcodierung. Die Regel aus Run 42 bleibt richtig —
sie verlangt, dass eine Zusicherung geprüft wird, nicht dass sie immer falsch ist.

## 5. Zwei Rückstände geschlossen

**SWKI VA103-01, Anhänge D, E und F (Ticket S42-1).** Der als «dringlichster inhaltlicher
Rückstand dieser KB» geführte Simulationsnachweis ist destilliert. Kern: Werden die
Luftqualitätskriterien nach Ziff. 3.6 erfüllt, darf der Gesamt-Abluftvolumenstrom **bis auf
minimal 70 %** reduziert werden. Zulässig ist ausschliesslich **CFD**; Zonenmodelle sind
ausdrücklich ungeeignet. Als Turbulenzmodelle taugen **RANS** (k-ε, k-ω, SST) — **LES ist für
die ingenieurmässige Anwendung ungeeignet**, weil die Ergebnisse sich mit der Zellgrösse ändern.
Dokumentationspflicht mit CO-Verteilung auf 1 m und 2 m Höhe.

Das durchgerechnete Beispiel E2 ist dabei ehrlicher als der 70-%-Hebel vermuten lässt: dort
**senkte** die Simulation den Volumenstrom nicht (53'600 → 59'100 m³/h), sie erlaubte den
Verzicht auf das verzweigte Luftleitungssystem und verschob die Luftmenge dorthin, wo sie wirkt.
Die 70 % sind eine Obergrenze der Möglichkeit, kein Regelergebnis.

Anhang D liefert drei durchgerechnete Bemessungsbeispiele, darunter den Vergleich mit der
Vorgängerrichtlinie SWKI 96-1 (ca. 30 % bis 100 % höhere Werte) und mit **VDI 2053 Blatt 1**
(rund das **Dreifache**, wegen CO-Bemessungswert 60 statt 100 ppm). Lehrreich ist Beispiel 2:
bei geschützter Lage und Wohnnutzung greift nicht die Emissionsrechnung, sondern der
Flächen-Mindestwert von 1 m³/(h·m²).

**SIA 500:2009, Anhang E vollständig (Ticket K42-4b).** E.3 (Dusche kombiniert mit WC), E.4
(offene Duschkojen) und E.5 (Umkleideräume) samt vollständigen Positionslegenden aufgenommen.
**Nebenbefund mit Korrekturwirkung:** die KB führte Anhang E als «S. 42-60»; am Original umfasst
er **S. 48-55**. Ein E.6 existiert nicht — die Abdeckung ist damit gemessen statt geschätzt.

Zwei Präzisierungen für den Skill `flaechen-nachweis`: Die Mindestgrösse eines rollstuhlgerechten
**Umkleideraums** ist eine **UND-Bedingung** — mindestens 4 m² Fläche **und** kein Einzelmass
unter 1,80 m, nicht die 1,80 × 1,80 m von E.1/E.3. Und die «Sitzbank bzw. Liege» (Pos. S,
Mindestbreite 0,60 m) ist ein **anderer Bauteiltyp** als der Klappsitz (Pos. M, Mindestausladung
0,45 m); beide liegen auf 0,46 m, die KB führte sie bisher undifferenziert.

## 6. Die letzte offene Inventar-Position

`BKZ - Behindertenkonferenz Kanton Zürich.pdf` ist — wie in diesem Bestand inzwischen zu
erwarten — **nicht, was der Dateiname behauptet**: ein mit Safari erzeugter Ausdruck der
Kontakt-Unterseite vom 13.07.2012, eine Seite, zwei Adressblöcke, **kein normativer Inhalt**.
Am Volltext des Hauptprozesses gegengeprüft. Destilliert wurde der Befund als Befund, statt
Inhalt hineinzuschreiben.

**Damit trägt der PL-02-Kern-Nachtrag 69 von 69 Positionen mit Status; keine offene
`[ ]`-Position mehr in diesem Abschnitt.** Die fünf verbleibenden `[ ]`-Zeilen des
Gesamtinventars (SIA 491, SN EN 12193, SN 640 052, SN 641 400, SIA 181:2020) sind ausnahmslos
**kostenpflichtige Bring-Schulden** über SIA-Shop bzw. SNV und in einem unbeaufsichtigten Lauf
nicht lösbar. Ich habe keinen Kauf ausgelöst.

## 7. Nachgeführt

- **5 Destillate** mit eingearbeiteten Refuter-Befunden, Statusfeld und INDEX-Zeile neu gefasst.
- **2 Destillate** substanziell gewachsen (SWKI: Anhänge D/E/F · SIA 500: Anhang E).
- **1 Destillat neu** (`bkz-kontaktseite-website-2012.md`).
- **1 Vermerk** in `vst-merkblatt-012-tueren-fluchtwegen.md` (Druckfehler der Quelle).
- **9 Stellen zusätzlich inline korrigiert** (siehe Abschnitt 8).
- `references/bkp-2017/BKP-2017-Liste.md` und `rules/bkp-2017-referenz.md` korrigiert.
- `training/norm-inventar.md` (5 Zeilen auf `[x] 260804`, Fussnote neu) ·
  `destillate/INDEX.md` (7 Zeilen) · `wiki/QUESTIONS.md` (3 geschlossen, 6 neu offen) ·
  `CHANGELOG.md`.

## 8. Methodische Bilanz

**Ein angehängter Verifikationsabschnitt genügt nicht.** Das ist die Lehre dieses Laufs. Wer
die Befunde nur hinten anhängt, lässt den widerlegten Satz im Fliesstext stehen — und der wird
zuerst gelesen. Es ist exakt die Mechanik, an der Run 42 beim Absturzsicherungs-Destillat
gescheitert war (Kurzfassung falsch, Fliesstext richtig, zitiert wurde die Kurzfassung).
Deshalb sind in Run 43 neun Stellen **inline** korrigiert worden: die l1-Definition, der
E-Modul, der BKP-Code an zwei Stellen, die Tabellen-4-Zuordnung, die Verlegetoleranz, die
5-m-Leiterregel, das Dachhaken-Raster und die 8,5-m-Reichweite. Vorschlag zur Aufnahme als
**Methodik-Pflicht 9**.

**Die Verifikationsstufe trägt sich selbst.** Vierzehn von vierzehn unabhängig geprüften
Erstdestillaten dieser KB sind beanstandet worden, in diesem Lauf mit 38 Kernbefunden aus fünf
Prüfungen. Ein Erstdestillat ohne Refuter-Runde ist nach dieser Datenlage keine belastbare
Fundstelle, sondern eine Vermutung mit Quellenangabe. Die elf verbleibenden `[~]`-Positionen
sind entsprechend zu behandeln.

**Der teuerste Fehler lag nicht in einer Norm, sondern in der eigenen Referenz.** Fünf Läufe
lang haben Refuter Normwerte gegen Originale geprüft, während die Hub-eigene BKP-Schnellreferenz
einen nicht existierenden Code führte und ihn in fünfzehn Dateien verteilte. Die Prüfschärfe
war nach aussen gerichtet. Dass der Befund überhaupt aufgetaucht ist, verdankt sich einem
Nebensatz eines Refuters, der über seinen Auftrag hinausgeschaut hat.

## 9. Vorzulegen

1. **N43-1 — BKP 271.10 in 13 weiteren Hub-Dateien nachziehen**, darunter zwei SKILL.md.
   Ausserhalb des Scopes dieses Loops.
2. **N43-2 — Dublette SMU 004 / VST 012.** Zusammenführen ist destruktiv und damit Raphaels
   Entscheid. Gegenargument zur Verschmelzung: die beiden Ausgaben sind **nicht wortgleich**
   (N43-3).
3. **N43-4 — Fluchtrichtungspflicht:** dem strengeren Verbandsstandard (30 m²/6 Personen) oder
   dem geltenden Recht (20 Personen) folgen?
4. **N43-6 — SWKI:** wer prüft und genehmigt einen Simulationsnachweis in ZH/SZ? Die Richtlinie
   nennt keine Instanz, bei einem Nachweis mit bis zu 30 % Volumenstrom-Hebel die entscheidende
   Lücke.
5. **Die Auftragszeile des Scheduled Task ersetzen** — der Vorrang-Auftrag ist seit Run 38
   erledigt und wird nun zum fünften Mal als überholt festgestellt.
6. **SIA 500 Korrigenda C3/C4** bleiben liegen (nicht im Haus, SIA-Shop). Neuer Anhaltspunkt
   aus diesem Lauf: die im Haus liegende SIA-500-Auslegung vom **April 2012** kennt nur C1 und
   C2 — C3/C4 müssen also nach April 2012 entstanden sein.
