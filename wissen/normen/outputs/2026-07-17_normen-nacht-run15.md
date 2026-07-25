# Normen-Training SIA/VKF — Run 15 (MacBook Pro, 2026-07-17)

## Das Wichtigste in drei Sätzen

Die Meldung «SIA/VKF komplett» der Läufe 13/14 war falsch: Der Inventar-Scan vom 11.07.2026 hat nur
einen Unterordner erfasst und **59 Dateien übersehen** — darunter die SIA-Vertragsnormen, also die
Faktenbasis der Skills `werkvertrag` und `honorarberechnung-sia102`. Diese Lücke ist geschlossen
(8 neue Destillate, alle adversarial verifiziert), ebenso die Vertiefungsstufen (a) und (d).
Zwei zentrale Normen (SIA 380/1:2016 Heizwärmebedarf, SIA 385/1:2011 Trinkwarmwasser) liegen nur als
**Vorschau** im Bestand — sie sind ehrlich als Auszug ausgewiesen statt mit geratenen Werten gefüllt.

## Ausgangslage

Scheduled Task `normen-training-nacht`, Station MacBook Pro (Stations-Split: nur SIA/VKF).
Run 14 hatte gemeldet: Grunddestillation und Retro-Verifikation (b) fertig, Stufe (c) für die
10 P1-Kernnormen abgeschlossen (205 Fragen, 0 Fehler), offen noch Stufe (a) — die 30 gemeldeten
Ergänzungslücken — und Stufe (d), die Querschnitts-Synthese.

Zugriffs-Check bestanden: NAS gemountet; PDF-Content-Read am Test-PDF `416_2003_dfi.pdf` erfolgreich,
keine TCC-Blockade auf dem OneDrive-Normen-Ordner.

**Hinweis zur Taktung:** Der Task-Auftrag nennt VOLLGAS-ENDLOS (Rules 260712b/c) mit 30–40 Positionen
je Lauf. Die **jüngere Rule 260714 (Tempo drosseln)** hat das für die laufende Woche zurückgenommen
(Wochenlimit war am 14.07. bei 81 %, Reset Montag). Dieser Lauf ist deshalb bewusst auf einen
mittleren Umfang ausgelegt (3 Workflows, 29 Agenten) und liegt im Nachtfenster — nicht auf Maximal-
Durchsatz. Der Task-Prompt sollte bei Gelegenheit an 260714 angeglichen werden, sonst widersprechen
sich Auftrag und Regel bei jedem Lauf.

## Befund 1 (der wichtigste): «SIA/VKF komplett» beruhte auf einer unvollständigen Grundmenge

Datei-für-Datei-Abgleich gegen die live gemountete SharePoint-Ablage:

| Familie | Dateien live | im Inventar | Differenz |
|---|---|---|---|
| SIA | 446 (eindeutig) | 391 | **58 fehlten** |
| VKF | 50 | 49 | **1 fehlte** |

Ursache: Der automatische Scan vom 11.07.2026 hat nur `SIA_Norm/SIA_Normen/alle/` erfasst statt
rekursiv ab `02_Normen/`. Unerfasst blieben die Ordner `SIA_Vertraege/`, `SIA_Merkblaetter/`,
`SIA_Abo/`, die norm-eigenen Unterordner `SIA_Normen/SIA 102|112|282|380_1_2016/`, die Wurzeldatei
`i385-1_2011_d.pdf` sowie bei VKF der Ordner `07_BSV 2026 Projekt/`.

Alle 59 Dateien sind neu erfasst (Sektion «SIA — Nachtrag 260717» im Inventar, klassifiziert nach
P1/P2/P3 bzw. begründet übersprungen). Die zwei gewichtigsten Funde wurden sofort abgearbeitet.

## Befund 2: Zwei zentrale Normen liegen nur als Vorschau im Bestand

| Norm | PDF-Seiten | deklariert | Folge |
|---|---|---|---|
| SIA 380/1:2016 Heizwärmebedarf | 6 | 60 | keine Q_H-Grenzwerte, keine U-Werte, keine Gebäudekategorien |
| SIA 385/1:2011 Trinkwarmwasser | 6 | 28 | keine Legionellen-/Speichertemperaturen, keine Ausstosszeiten |

Enthalten sind je nur Titelblatt, Impressum, Inhaltsverzeichnis, Vorwort und Genehmigungsseiten —
der gesamte normative Hauptteil fehlt. Beide Destillate sind deshalb als `struktur-destillat (Auszug)`
mit Status `speculative` angelegt, tragen einen Zitier-Riegel und eine Bring-Schuld P1 (Volltext
beschaffen). Sie sind trotzdem wertvoll: Ausgaben-/Gültigkeitsstand ist belegt, und das destillierte
Inhaltsverzeichnis dient als Trefferkarte mit Normseitenzahlen.

**Falle im Bestand:** Unter `alle/xalt/neu/380_1_d_2001.pdf` liegt die Ausgabe 2001 als Volltext.
Sie ist zweifach überholt (2001 → 2009 → 2016) und darf nicht als Ersatz dienen — ein naheliegender
Fehler, gegen den das Destillat jetzt ausdrücklich warnt.

**Gegenprobe über den ganzen destillierten SIA-Bestand** (Seitenzahl gegen die auf dem Titelblatt
deklarierte «Anzahl Seiten»): **0 weitere Auszüge**. Kein bestehendes `established`-Destillat ruht
auf einem Auszug. Die `i`-Präfix-Hypothese (Vorschau-PDFs) betrifft genau diese zwei Dateien.

## Was destilliert wurde (8 neue Destillate, alle adversarial verifiziert)

### Vertragsnormen — die Faktenbasis von `werkvertrag` und `honorarberechnung-sia102`

| Destillat | Norm | Umfang | Verifikation |
|---|---|---|---|
| `sia-1001-1-2020.md` | SIA 1001/1:2020 Planer-/Bauleitungsvertrag | Volltext 11 S. | 9 Aussagen, 4 beanstandet → korrigiert; `established` |
| `sia-1001-2-2020.md` | SIA 1001/2:2020 Gesellschaftsvertrag Planergemeinschaften | Volltext 22 S. | 7 Aussagen, 1 beanstandet → korrigiert; `established` |
| `sia-1001-3-2020.md` | SIA 1001/3:2020 Subvertrag | Volltext 11 S. | 11 Aussagen, 2 beanstandet → korrigiert; `established` |
| `sia-1001-11-2018.md` | SIA 1001/11-K:2018 BIM-Zusatzvereinbarung | Volltext 12 S. | 11 Aussagen, 5 beanstandet → korrigiert; `established` |
| `sia-1023-2013.md` | SIA 1023:2013 Werkvertrags-Formular | Volltext 5 S. | 9 Aussagen, 6 beanstandet → korrigiert; `established` |
| `sia-honorar-hilfsmittel.md` | Honorarempfehlung 2009 + z-Werte 2015 | beide vollständig | 13 Aussagen, 5 beanstandet → korrigiert; `established` |

Zwei Richtigstellungen mit Praxisfolgen:

- Die **«Honorarempfehlung SIA 2009» ist keine SIA-Publikation, sondern eine KBOB-Empfehlung**
  (Fusszeile S. 2–6). Sie darf nicht als SIA-Norm zitiert werden.
- Das **SIA-1023-Formular ist grösstenteils Leerfeld**: der Destillier-Agent hatte SIA-118-Inhalte
  hineingelesen, die dort gar nicht stehen. Der Verifier hat sie entfernt — genau der Fehlertyp, den
  die Widerlegungs-Stufe abfangen soll.

### Neu erschlossene Normen

| Destillat | Norm | Status |
|---|---|---|
| `sia-380-1-2016.md` | SIA 380/1:2016 Heizwärmebedarf | `speculative` — Auszug 6/60 S., Bring-Schuld P1 |
| `sia-385-1-2011.md` | SIA 385/1:2011 Trinkwarmwasser (ersetzt SIA 385/3:1991) | `speculative` — Auszug 6/28 S., Bring-Schuld P1 |

## Vertiefungsstufe (a) — die 30 Lücken aus Run 14 sind eingearbeitet

29 Lücken am Original verifiziert und eingebaut:

| Norm | Lücken | Verdikt Destillier-Agent | Widerlegungs-Prüfung |
|---|---|---|---|
| SIA 103:2003 | 10 | 10x belegt | 10 geprüft, 1 beanstandet → korrigiert |
| SIA 105:2020 | 7 | 7x belegt | 7 geprüft, 1 beanstandet (Fundstellen-Fehler) → korrigiert |
| SIA 118:1991 | 2 | 2x belegt | 4 geprüft, 0 beanstandet |
| SIA 112:2014 | 2 | 2x belegt | 2 geprüft, 1 beanstandet → korrigiert |
| SIA 451:1992 | 4 | 4x belegt | 4 geprüft, 0 beanstandet |
| VKF BRL 16-15 | 4 | 3x belegt, 1x abweichend | 4 geprüft, 0 beanstandet |
| **Summe** | **29** | **28 belegt, 1 abweichend** | **5 Beanstandungen, alle korrigiert** |

**Geklärt (die eine Abweichung):** Der Klärpunkt aus Run 14 zum Ausgabejahr der VKF-BRL 16-15 ist
entschieden. Korrekt ist **Ausgabe 2015, Fassung 01.01.2017** — nicht «Ausgabe 2017». Belegt über
Copyright 2015, die IOTH-Änderungslisten (17.09.2015 und 22.09.2016) und Ziff. 5 Inkrafttreten
(IVTH-Beschluss 18.09.2014, in Kraft 01.01.2015). «2017» ist das Fassungs-, nicht das Ausgabedatum.
Folge-Prüfung offen: dieselbe Verwechslung dürfte bei der ganzen revidierten 2015er-BRL-Serie
systematisch auftreten.

## Vertiefungsstufe (d) — Querschnitts-Synthese SIA/VKF

Neu: `wiki/synthese-sia-vkf-fachskills.md` (549 Zeilen, **224 Fundstellen**, 33 Quellen) — das Pendant
zur bestehenden DIN/VSS/RAL-Synthese. Je Fach-Skill die belegten Fundstellen, damit ein Skill-Lauf
die Norm-Aussage direkt zitieren kann, ohne das Original zu öffnen:

| Skill | Fundstellen | Normen |
|---|---|---|
| `brandschutz` | 74 | VKF 1-15:2015 + BRL 10/11/13/15/16/17/18/19/20/21/100-15 |
| `honorarberechnung-sia102` | 40 | SIA 102:2020, 103:2003, 105:2020, 111:2014, 112:2014 |
| `werkvertrag` | 27 | SIA 118:1991 (+ Abgrenzung Planervertrag) |
| `unternehmerkontrolle` / `kostenkontrolle` | 24 | SIA 118:1991, 102:2020, 112:2014 |
| `flaechen-nachweis` / `wettbewerb` / `machbarkeit` | 18 | SIA 416:2003 |
| `ausschreibung` | 18 | SIA 451:1992, SIA 118, SIA 102 |
| `kostenschaetzung` | 8 | Genauigkeitskaskade ±15 % / ±10 % |

## Qualitäts-Bilanz der Widerlegungs-Stufe

**32 Beanstandungen über alle Destillate, alle korrigiert.** Kein Status musste gesenkt werden ausser
bei den zwei Auszug-Normen, wo `speculative` von Anfang an richtig war. Die Verifikations-Stufe hat
sich klar gelohnt — drei wiederkehrende Fehlertypen:

1. **Wörtliche Norm-Übernahmen** (Urheberrecht): mehrfach aufgetreten, besonders bei den Vorschau-PDFs,
   wo das Verhältnis Originaltext zu Destillat-Text ungünstig steht und Destillieren in Abschreiben kippt.
   Alle Stellen in eigene Kurzfassungen überführt.
2. **Als Norm-Aussage etikettierte Eigenleistung**: z.B. wurde bei SIA 385/1 die Folgerung «der
   Warmwasseranteil wird nach der Hüllensanierung relativ dominant» dem Vorwort zugeschrieben — der
   Begriff kommt dort nicht vor. Heikel, weil die Aussage im Praxis-Transfer für den Agent
   `energie-berater` stand und so in die Bauherren-Argumentation gelangt wäre.
3. **Unbelegte Verallgemeinerungen** und Fundstellen-Fehler (falsche Seiten-/Ziffernzuordnung).

## Nachgeführt

- `training/norm-inventar.md`: neue Sektion «SIA — Nachtrag 260717» (58 Dateien klassifiziert),
  VKF-Zeile für BSV 2026, Kopf-Eintrag mit der Inventar-Korrektur, neue Status-Stufe `[~]`
  (teil-destilliert / nur Auszug im Bestand).
- `destillate/INDEX.md`: 8 neue Einträge.
- `wiki/synthese-sia-vkf-fachskills.md`: neu (Stufe d).
- `wiki/QUESTIONS.md`: Run-14-Punkt geschlossen; 11 neue/geklärte Punkte (Abschnitt «Run 15»).
- `CHANGELOG.md`: neuer Eintrag oben.
- 6 bestehende Destillate ergänzt (SIA 103/105/112/118/451, VKF BRL 16-15).

## Nächster Batch (Vorschlag)

1. **Merkblatt-Serie SIA 2001–2027** (18 Positionen, neu im Inventar) — prioritär **SIA 2024**
   (Standard-Nutzungsbedingungen, Bezugsgrösse für `kostenschaetzung` und den Energienachweis).
2. **Inventar-Scan härten**: rekursiv ab `02_Normen/` scannen und je PDF die Seitenzahl gegen die
   deklarierte «Anzahl Seiten» plausibilisieren. Beide Fehler dieses Laufs wären damit automatisch
   aufgefallen. Das ist die eigentliche Lehre von Run 15.
3. **SIA-112-Widerspruch** (Zuordnung SIA 104/105) am Original S. 4/S. 10 klären.
4. **VKF-2015er-BRL-Serie** auf die Verwechslung Ausgabejahr ↔ Fassungsdatum durchsehen.
5. **VKF-Normkonzept BSV 2026** destillieren (mit Status «nicht in Kraft»).
6. **Beherbergungs-Kategorien [a]/[b]/[c]** der VKF suchen — kritisch für die Healthcare-Projekte.

## Entscheide für Raphael

- **Kein «SIA/VKF KOMPLETT».** Die frühere Meldung ist widerrufen; der Task läuft sinnvoll weiter.
- **Zwei Bring-Schulden P1:** Volltext **SIA 380/1:2016** und **SIA 385/1:2011** beschaffen (SIA-Abo
  oder Kauf). Ohne sie kann der Hub zum Energienachweis und zu Legionellen-Temperaturen keine belegte
  Aussage machen — er wird stattdessen ehrlich «nicht im Bestand» melden. Bei SIA 385/1 zuerst prüfen,
  ob die französische Variante im Bestand den Volltext enthält (billigster Lückenschluss).
- **SIA 118:2013 fehlt** im Bestand (nur 1977/1991 vorhanden) — Beschaffung ist ein Geschäftsentscheid.
- **Task-Prompt vs. Rule 260714:** Der Auftragstext dieses Tasks fordert weiterhin VOLLGAS-Dauerbetrieb,
  die jüngere Drossel-Regel gilt aber bis zum Wochen-Reset. Angleichen, damit sich Auftrag und Regel
  nicht widersprechen.
