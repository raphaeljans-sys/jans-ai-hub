# Normen-Nacht Run 63 — 27.08.2026, ab 01:28 CEST (MacBook Pro)

**Auftrag:** Scheduled Task `normen-training-nacht`, Stations-Split SIA + VKF.
**Run-Nummer** nach Sicht der jüngsten `outputs/`-Datei vergeben: Run 62 war der Nacht-Lauf vom
26.08.2026. Dieser Lauf ist **63**.

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `scripts/lauf-gate.sh normen-training-nacht` | Exit 0 — freigegeben |
| NAS-Mount | vorhanden |
| Kollisionsschutz `ps aux` | kein zweiter `normen-training`-Prozess |
| Zugriff OneDrive PL-02 | **intakt**, 634 PDF sichtbar |
| Zugriff OneDrive PL-03 | **intakt**, 105 PDF |
| Bestandsfrische | keine Datei neuer als 07.08.2026 — kein neues Rohmaterial |
| Inventar `norm-inventar.md` | 0 destillierbare Positionen; die 6 offenen Zeilen sind ausnahmslos Kauf-/Beschaffungs-Bring-Schulden |

Kein Grunddestillat fällig → Arbeit auf Vertiefungsstufe (b), gemäss PROGRAMM Ziff. 6.

## 2. Wahl des Arbeitsgegenstands

Run 62 hinterliess mit **N62-3** einen ausformulierten Auftrag: prüfen, ob die Lücke, die SIA 118
zeigte, auch andere `established`-Destillate trifft, und eine nach Abnehmer-Reichweite
priorisierte Kandidatenliste erstellen. Dieser Lauf hat beides getan — erst gemessen, dann den
obersten erreichbaren Kandidaten bearbeitet.

**Warum SIA 102:2020 und nicht der Listenerste:** Die Messung (Abschnitt 3) stellt
`sia-416-2003.md` an die Spitze. SIA 102 wurde trotzdem zuerst bearbeitet, weil die Wahl vor der
Messung fiel — begründet mit der Abnehmerlage (ein ganzer Skill, `honorarberechnung-sia102`,
steht darauf; die Erzeugnisse sind Honorarofferten, also Geld mit Aussenwirkung) und mit dem
Umstand, dass das Destillat seit dem 14.07.2026 `established` trug, gestützt allein auf
Refuter- und Q&A-Runden — genau die Konstellation, die Methodik-Pflicht 13 als unzureichend
bezeichnet. Die Messung hat die Wahl im Nachhinein nicht widerlegt, sondern nur gezeigt, dass es
einen noch dringlicheren Fall gibt. **Der steht als nächster an, nicht als Vorwurf an diesen Lauf.**

## 3. Ergebnis zu N62-3 — die Lücke ist der Normalfall, nicht der Einzelfall

| Messung | Wert |
|---|---|
| Destillate gesamt | 461 |
| davon Status `established` (alle Schreibweisen) | **310** |
| davon mit Prüfstand | **2** — beide DIN, also Mac-Mini-Scope |
| im SIA/VKF-Bestand dieser Station mit Prüfstand | **0** |

Die Kandidatenliste liegt als `training/n62-3-pruefstand-kandidaten.md`. Sie priorisiert nach
**entscheidungstragender Reichweite**: Vorkommen in `skills/*/SKILL.md`, `agents/*.md`,
`rules/*.md`. Treffer in `referenzen/`, `wissensbasis/` und Goldstandard-LV-Dateien werden nicht
gezählt — **das ändert die Rangfolge erheblich**: roh gemessen führt SIA 451 21 Treffer und läge
weit oben; 20 davon sind Datenformat-Vermerke in LV-Kopfzeilen, entscheidungstragend ist die Norm
**einmal**.

Rangfolge: **1.** `sia-416-2003.md` (12 Konsumenten, davon 4 rechnende Agenten, 74 Zeilen, kein
Prüfstand — während die *Teilnorm* `sia-416-1-2007` nach Run 54 994 Zeilen und einen Prüfstand
trägt). **2.** die drei VKF-Kernrichtlinien. **3.** `sia-102-2014` (Altverträge). **4.** SIA 451.
Destillate ohne jeden entscheidungstragenden Konsumenten stehen bewusst nicht auf der Liste.

**Die Trefferquote der nachgeholten Abdeckungsrichtung liegt jetzt bei 3 von 3** (416/1 in Run 54,
118 in Run 62, 102 in Run 63). Drei ist eine schmale Basis, aber es ist die einzige, die es gibt,
und sie zeigt in eine Richtung.

## 4. Methode der Abdeckungsrunde

Quelle `102.2020.pdf`, 41 Seiten. **Kein Textlayer** (41 Zeichen im ganzen Dokument, Konica-Scan)
— `pdftotext` scheidet aus, es wurde vollständig visuell an 200-dpi-Renderings gearbeitet.
Präfix `sia102-r63-` (Methodik-Pflicht 5, kein generischer Name).

**Seitenversatz am Original abgelesen, nicht gerechnet** (Methodik-Pflicht 6): gedruckte S. 5 =
PDF-S. 5, gedruckte S. 30 = PDF-S. 30. **Versatz null, an zwei Punkten belegt.** Die letzte Seite
trägt keine Nummer.

Sechs Segmente, je ein Abdeckungs-Agent (Sonnet, mechanische Stufe delegiert nach Modell-Politik).
Auftrag ausdrücklich **nicht** Refuter, sondern: jede Ziffer, Marginalie und Tabellenzeile
aufnehmen und nur melden, **was in der Quelle steht und im Destillat fehlt** — mit Pflicht, vor
jedem Befund das **ganze** Destillat zu durchsuchen (Methodik-Pflicht 7) und Unleserliches als
unleserlich zu melden statt als Befund.

## 5. Ergebnis

**34 Kernbefunde, 52 Nebenbefunde, ein Fundstellenfehler — und kein einziger falscher Wert.**

| Segment | Seiten | Inhalt | Kern | Neben |
|---|---|---|---|---|
| A | 5-10 | Art. 1 Allgemeine Vertragsbedingungen | 10 | 7 |
| B | 11-16 | Art. 2-3, Teilphase 4.11 | 8 | 13 |
| C | 17-22 | Teilphasen 4.21-4.32 | 8 | 11 |
| D | 23-28 | Teilphasen 4.32-4.52 | 3 | 6 |
| E | 29-34 | Teilphasen 4.52-4.62 | 5 | 11 |
| F | 35-41 | Teilphase 4.63, Art. 5-6, Schluss | 0 | 4 |

Kein Segment meldete eine unleserliche Stelle.

### 5.1 Der Strukturbefund, der fast alle Lücken erklärt

Die Norm baut **jede** Teilphase als Tabelle mit den Leistungsbereichen *Auftragsgegenstand ·
Organisation · Kosten/Finanzierung · Termine · Administration*, dazu einen eigenen Block
**«Leistungen und Entscheide des Auftraggebers»** und die Felder *Grundlage* und *Ziele*.

**Das Destillat hat durchgehend die Spalte *Auftragsgegenstand* aufgenommen** und die übrigen
Bereiche nur dort, wo sie zufällig in den Fliesstext gerieten. Vier Segmente (C, D, E, F) fanden
dieses Muster unabhängig voneinander an je anderen Teilphasen.

Das ist kein Flüchtigkeitsfehler, sondern eine **systematische Leseweise**: wer eine Norm nach
«was muss der Architekt tun» destilliert, nimmt die Auftragsgegenstand-Spalte und hält die
übrigen für Verwaltung. Praktische Folge, deshalb als Warnblock vor Art. 4 gesetzt: **ein aus
diesem Destillat abgeleiteter Leistungsumfang unterschätzt den Aufwand systematisch**, weil die
Termin-, Kosten- und Administrationsleistungen der Teilphase fehlen.

### 5.2 Die folgenreichsten Kernbefunde

1. **Ziff. 1.2.8 — keine Pflicht zur Herausgabe in digitaler Form.** Ist die *Form* der
   Herausgabe nicht vereinbart, besteht keine Pflicht, Unterlagen digital herauszugeben; die
   Aufbewahrungspflicht der 10 Jahre gilt «in der zur Herausgabe vereinbarten Form». Das
   Destillat führte nur «Rechenschaftsablegung auf Verlangen». Bei jeder BIM-/CAD-Datenforderung
   eines Bauherrn ist das die einschlägige Stelle — und sie fehlte.
2. **Ziff. 3.3.5 war mit Ziff. 3.3.2 verschmolzen.** Das Destillat las: «In den Phasen 1, 2 und 6
   … dort ist alles besonders zu vereinbaren **und gesondert zu honorieren** (3.3.3-5)».
   Tatsächlich sind es zwei Regeln: 3.3.2 sagt, dass in den Phasen 1/2/6 keine Grundleistungen
   formulierbar sind; **3.3.5 ist eine eigenständige, phasenunabhängige Regel** — für besondere
   Aufträge wie Studien, Beratungen, Koordinations-, Kontroll- und Überwachungsaufgaben sind die
   Leistungen vorgängig besonders zu vereinbaren und gesondert zu honorieren. Die verschmolzene
   Fassung band den Sonderhonorar-Anspruch an drei Phasen und **verbarg ihn mitten in den Phasen
   3 bis 5**, wo er praktisch am häufigsten anfällt. Klasse (a) — überdehnte Restregel.
3. **Ziff. 3.5.4 — Honorarabgrenzung zu Beratern und Spezialisten.** Der AG kann Berater, der
   Architekt Spezialisten einsetzen; die Abgrenzung der Honorare ist **projektspezifisch zu
   vereinbaren**. Die ganze Ziffer fehlte — bei einem Skill, dessen Erzeugnis die Honorarofferte
   ist, die Stelle, an der die Schnittstelle vertraglich zu klären wäre.
4. **Ziff. 4.41 — die Kostenrevision nach Offertvergleich ist Grundleistung.** Revidieren der
   Kostenermittlung aufgrund der Angebote, Begründen der Abweichungen zum Kostenvoranschlag,
   Aufstellen der Gesamtkostenübersicht. Der ganze Leistungsbereich fehlte, ebenso Termine
   (provisorischer Terminplan) und Administration (Unternehmerlisten, Veröffentlichungen). Das
   ist der Übergabepunkt an `kostenschaetzung` und `kostenkontrolle`.
5. **Ziff. 4.31 — Servitute und nachbarrechtliche Vereinbarungen als Grundleistung.** Das
   Abschätzen der Realisierungsmöglichkeit umfasst ausdrücklich allfällige Servitute. Es ist die
   **einzige** Stelle der ganzen Ordnung, an der die Dienstbarkeiten-Prüfung als
   Architekten-Grundleistung steht — der Norm-Anker für den Agenten `dienstbarkeiten-pruefer`,
   und er fehlte. Ebenso fehlte «Kubische und/oder Flächenberechnung nach den einschlägigen
   SIA-Normen» (der Anker für `volumen-rechner` und `flaechen-nachweis`).
6. **Ziff. 4.31 — das Deliverable der Teilphase selbst.** «Erarbeiten eines architektonischen
   Konzeptes» und «Erstellen eines vollständigen Vorprojektes in geeignetem Massstab» fehlten;
   das Destillat beschrieb für 4.31 nur den vorgelagerten Block «Studium von
   Lösungsmöglichkeiten». Ebenfalls dort: die **vertragliche Regelung des Architektenauftrages**
   ist eine Leistung der Teilphase Vorprojekt.
7. **Ziff. 1.2.33/1.2.34 — Vertretungsmacht und Notkompetenz.** Der Beauftragte vertritt den AG
   gegenüber Behörden, Unternehmern und Lieferanten **rechtsverbindlich**, soweit üblich
   zusammenhängend, und muss alle Abmahnungen umgehend weiterleiten; in dringlichen Fällen ist er
   zur Gefahrenabwehr auch ohne AG-Einverständnis befugt **und verpflichtet**. Beides fehlte.
8. **Ziff. 4.53 — Garantiefreigabe und Abnahmeprotokolle als Grundleistung.** Der ganze
   Administrations- und Terminblock der Schlussteilphase fehlte, darunter «Beanspruchen oder
   Freigeben der Bank- und gleichwertiger Garantien» und «Protokolle der Schlussabnahmen». Dazu
   der komplette AG-Block inklusive «Abnahme des Bauwerks».
9. **Ziff. 4.62 — die Restnutzungsdauer ist ein AG-Entscheid.** Das Destillat führte sie auf der
   Architektenseite (Teil des Überwachungsberichts); «Bestimmen der übergeordneten
   Restnutzungsdauer» steht im AG-Block. Ebenfalls dort: Wartungsleistungen **nach** Ablauf der
   Rügefrist sind besonders zu vereinbaren — die Pflicht endet nicht, sie wird honorarpflichtig.
10. **Ziff. 3.2.2 Satz 2 — Vorziehen bei geforderter Kostengenauigkeit.** Wird vor dem
    Kostenvoranschlag eine höhere Genauigkeit verlangt als das Vorprojekt liefert, sind
    Leistungen der Teilphase 32 vorzuziehen. Nur der erste Satz (Teilphase 33) stand da.

### 5.3 Der Fundstellenfehler — und warum er methodisch mehr wiegt als die 34 Lücken

Das Destillat schrieb den Satz «Wird eine andere Projektorganisation gewählt, ist durch die Wahl
einer geeigneten Persönlichkeit als Gesamtleiter sicherzustellen, dass die zentralen
architektonischen Anliegen gewahrt bleiben» dem **Art. 2.3.1 Satz 2** zu. Der Hauptprozess hat
beide Stellen am Original gerendert und gelesen: **Art. 2.3.1 Satz 2 (S. 11)** sagt, dass der
Architekt bei Hochbauten in der Regel die Gesamtleiterfunktion ausübt und deren Aufgaben in
Art. 3.4 beschrieben sind. Der zitierte Inhalt steht in **Art. 3.4.2 (S. 13)**. Korrigiert.

Das Gewicht liegt nicht im Fehler, sondern in seiner Entdeckung: **er wurde von einem
Abdeckungs-Agenten beiläufig gemeldet, im Abschnitt «ungeprüft», ausdrücklich als nicht zum
Auftrag gehörig.** Keine der drei bisher gefahrenen Prüfrichtungen sucht danach. Die
Refuter-Richtung prüft, ob die *Aussage* stimmt — sie stimmt. Die Abdeckungsrichtung prüft, ob
etwas *fehlt* — es fehlt nichts. Die Q&A-Runde fragt aus dem Destillat heraus und erbt dessen
Fundstelle mit.

Bei einem Destillat, dessen einziger Zweck die **belegte Fundstelle** ist — Rule
`normen-referenz` verlangt «Norm + Ausgabe + Ziffer» —, ist eine falsche Fundstelle kein
Nebenfehler: sie ist der Ausfall des Produkts. Als **N63-2** festgehalten, mit dem Hinweis, dass
daraus eine dritte Prüfrichtung folgen könnte. **Nicht selbst zur Methodik-Pflicht erhoben** —
das ist Raphaels Entscheid, wie bei den Pflichten 11 bis 13.

## 6. Verifikations-Verdikte (Hauptprozess, am Original)

Nach der Lehre aus Run 50 («eine Verdikt-Verteilung ohne jede Widerlegung ist selbst
prüfbedürftig») wurde gezielt gegen die Befunde geprüft, die am ehesten Scheinbefunde nach
Methodik-Pflicht 7 sein konnten. Der Hauptprozess hat dafür die Seiten 7, 11 und 13 vollständig
gerendert und gelesen sowie zehn Suchbegriffe mechanisch gegen das ganze Destillat geprüft.

| Prüfung | Ergebnis |
|---|---|
| C6 «Vorprojekt-Deliverable fehlt» | zunächst verdächtig — ein Treffer auf «Massstab» stand im Destillat. **Gegenprüfung: der Treffer gehört zu Teilphase 4.32, nicht 4.31.** Befund BESTÄTIGT |
| Fundstelle «2.3.1, Satz 2» | **BESTÄTIGT und verschärft** — am Original S. 11 und S. 13 belegt, korrigiert auf 3.4.2 |
| B5 «Bullet 11 von 18 fehlt» | **BESTÄTIGT** — Aufzählung am Original nachgezählt, das Destillat führte 17 von 18 |
| B4 «Ziff. 3.3.5 fehlt» | **BESTÄTIGT und verschärft** — nicht bloss fehlend, sondern mit 3.3.2 verschmolzen (siehe 5.2 Ziff. 2) |
| A7 «1.2.8 digitale Form» | **BESTÄTIGT** am Original S. 7 |
| F4 «Kommissionsmitglieder namentlich» | **VERWORFEN** — kein Befund. Personennamen der Kommission haben keinen fachlichen Gehalt für JANS; ihre Nichtaufnahme ist eine Destillat-Entscheidung, kein Mangel. Nicht übernommen |
| F: Selbstauskunft «endet nach Art. 6, kein Baukosten-Prozentsatz» | am Original der Schlussseiten **BESTÄTIGT** — S. 41 trägt nur Kommissionsliste und Genehmigungsvermerk. Für den Skill `honorarberechnung-sia102` der wichtigste Einzelpunkt, und er hält |

## 7. Was am Bestand geändert wurde

- **`destillate/sia-102-2020.md`**: 34 Kernbefunde **inline** in den Fliesstext eingearbeitet
  (Methodik-Pflicht 9), Strukturwarnung vor Art. 4, Fundstelle korrigiert, Status
  `established` → `speculative` mit Begründung im Feld, **Prüfstand-Tabelle ins Destillat**
  (nicht nur in den Report) samt ausdrücklichem Ausweis des Ungeprüften.
- **Diff-Gegenprobe** (Rule 260811): **226 hinzugefügt / 24 entfernt**. Die 24 entfernten Zeilen
  sind einzeln aufgelistet und geprüft — ausnahmslos beabsichtigte Zeilenersetzungen an Stellen,
  an denen ein umbrochener Satz neu gesetzt wurde. Keine sonstige Löschung. Vor dem ersten Edit
  wurde eine Sicherung mit Prüfsumme abgelegt.
- **Hub-Reichweiten-Check** (Lehre aus dem BKP-271.10-Fall): **Die verschmolzene Regel HATTE sich
  ausgebreitet** — `wiki/synthese-sia-vkf-fachskills.md` führte sie wortgleich mitsamt der
  ungenauen Fundstelle. Zeile korrigiert, zweite Zeile für Ziff. 3.3.5 ergänzt. Die falsche
  Fundstelle 2.3.1 hatte sich **nicht** ausgebreitet.
- **`skills/honorarberechnung-sia102/SKILL.md`**: Statusangabe nachgeführt, mit ausdrücklichem
  Vermerk, dass der für den Skill entscheidende Negativbefund «kein Art. 7» von der Herabstufung
  nicht betroffen und in diesem Lauf am Original bestätigt ist.
- **`training/n62-3-pruefstand-kandidaten.md`** neu; `destillate/INDEX.md`, `wiki/QUESTIONS.md`,
  `CHANGELOG.md` nachgeführt.
- **Umlaute:** in der Zielkonvention geschrieben, nicht nachträglich konvertiert (Lehre Run 62);
  Stichprobe auf ae/oe/ue-Ersatzschreibung negativ.

## 8. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die 52 Nebenbefunde sind nicht eingearbeitet** (N63-1). Grösster Block: die
   Leistungsbereiche Organisation/Termine/Administration und die AG-Blöcke der Teilphasen 4.11,
   4.21, 4.22, 4.31, 4.32, 4.61, 4.62, 4.63.
2. **Keine Refuter-Runde auf den Nachträgen dieses Laufs** — die neuen Blöcke tragen nur die
   Abdeckungsrichtung.
3. **Fundstellen wurden nie systematisch geprüft**, auf keinem Destillat der KB (N63-2).
4. **Die 308 Kandidaten der N62-3-Liste sind eine Metadaten-Messung, keine Stichprobe** — kein
   einziges dieser Destillate wurde inhaltlich geöffnet.
5. **Das Statusvokabular ist nicht normiert** (25 abweichende Werte); die Zahl «310 established»
   stützt sich auf Präfix-Übereinstimmung und ist nach oben und unten unscharf. Der
   Vokabular-Entscheid liegt seit Run 52 bei Raphael.
6. Sprachfassungen f/i unverändert nicht geprüft.

## 9. Vorzulegen (kein Entscheidbedarf aus diesem Lauf erzwungen)

Alle Änderungen dieses Laufs sind umkehrbare Arbeit am eigenen Wissensbestand und fallen unter
die Whitelist; die Statusherabstufung folgt einer bereits freigegebenen Methodik-Pflicht.

Zwei Punkte liegen bei Raphael, beide **neu aus diesem Lauf**:

1. **Die Reihenfolge für die 308 Kandidaten.** Linear ist kein Weg — dieser Lauf kostete eine
   Nacht für **eine** Norm. Vorgeschlagen ist eine Dreiteilung (Vollrunde nur für die vier
   reichweitenstärksten, Stichprobenstufe für den Mittelbau, nichts für Destillate ohne
   Konsumenten). Der offene methodische Punkt: **eine Stichprobenrunde ist nie gefahren worden**,
   ihre Trefferquote ist unbekannt; sie wäre zuerst an einem bereits vollständig gemessenen
   Destillat zu kalibrieren (`sia-118-1991` oder `sia-416-1-2007`), wo die Wahrheit bekannt ist.
2. **Ob «Fundstellen-Richtigkeit» eine dritte Prüfrichtung wird** (N63-2).

Unverändert weitergeführt, **nicht erneut vorgelegt**: die drei DE-Duplikat-Merges, der Marker
`[a]`, das Statusvokabular und die Beschaffungs-Bring-Schulden (SIA-Shop 380/1:2016, 385/1:2011,
266/1:2015, 181:2020, 491, 118:2013 · VSS-Kundendienst für SN 641 400, SN 640 052, SN 640 273a ·
SNV für SN EN 12193:2019).

## 10. Kein Infrastruktur-Befund — ein eigener Werkzeugfehler, sauber aufgelöst

Die beabsichtigte native Diff-Messung per `ssh mini "cd /volume1/daten/jans-ai-hub && git diff"`
lieferte **keine Ausgabe**. Das sah nach einem Erreichbarkeitsproblem aus und wäre nach Eintrag
260824 ein **P1-Befund** gewesen.

Die Nachmessung zeigt: **es war ein eigener Befehlsfehler, kein Ausfall.** `mini` ist der **Mac
Mini** (Darwin, Tailscale 100.120.219.12) und antwortet einwandfrei; `/volume1/daten/jans-ai-hub`
ist ein **Synology**-Pfad, den es dort nicht gibt. Der Befehl fiel auf den nicht existierenden
Pfad und gab still nichts aus.

Festgehalten, weil es die Regel aus Eintrag 260807 in der anderen Richtung belegt: **ein leeres
Ergebnis ist zuerst eine Aussage über das Werkzeug, nicht über die Quelle** — und ein
vermeintlicher P1-Infrastrukturbefund gehört nachgemessen, bevor er gemeldet wird. Ein
ungeprüft gemeldeter Fehlalarm hätte Aufmerksamkeit auf eine funktionierende Station gelenkt.
Die Diff-Messung selbst lief gegen die eigene Sicherung und ist für ihren Zweck gleichwertig.
