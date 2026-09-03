# Normen-Nacht Run 79 — 04.09.2026, ab 01:29 CEST (MacBook Pro)

**Der Arbeitsgegenstand ist der, den Run 78 selbst als offen ausgewiesen hat.** Dessen Ziffer 7
nannte unter «Was NICHT geprüft wurde» an vierter und fünfter Stelle den eigentlichen Rückstand:
die Fundstellen- und die Abdeckungsrichtung sind auf **einem von über 300** Destillaten gefahren,
und die 307 übrigen Kandidaten der N62-3-Liste sind bis heute nur eine **Metadaten-Messung**.
Fünf Läufe hintereinander sind in dasselbe Destillat (`sia-416-2003`) hineingegangen und haben
dort zuletzt keine falschen Werte mehr gefunden. Dieser Lauf verlässt es und wendet die Methode
auf einen Teil des Bestands an, auf dem sie nie gelaufen ist.

Gewählt wurden die zwei VKF-Kernrichtlinien mit der höchsten entscheidungstragenden Reichweite,
die **beide** `established` trugen und **beide keinen Prüfstand** hatten. Ergebnis: **36 Kern- und
12 Nebenlücken, eine falsche Angabe in einer geltenden Fassung, eine Statusherabstufung** — und
nebenbei die Schliessung einer methodischen Frage, die seit Run 64 offen war.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-09-04 01:29 CEST |
| NAS gemountet | ja; alle Zugriffe mit vollem Pfad (Rule `sync-kanonische-quelle`) |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | funktioniert **inhaltlich** (`pdfinfo`/`pdftotext` auf einer Zieldatei), kein M365-Fallback nötig |
| NAS-Repo vor Beginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `070b56a8c` (01:30) |
| Inventarstand | 0 offene `[ ]` im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **79**, nach Sicht der jüngsten `outputs/`-Datei (Run 78, 03.09.) |

**Stations-Split eingehalten:** nur VKF und SIA. Keine DIN-/VSS-/RAL-Position berührt oder abgehakt.

**Methodik-Pflicht 1 eingehalten:** beide Quellen aus **PL-03**, nicht PL-02, und beide MD5
gegen die Fassungsmatrix `n58-vkf-fassungsmatrix-260820.md` verifiziert — BRL 13-15
`5dc4d5989c41` (25 S.), BRL 15-15 `6dcc54f34a2d` (35 S.), beide Fassung **01.01.2017**.
Ein Abdeckungslauf gegen die 2015er-Fassung hätte den falschen Text gemessen.

**Seitenversatz 0**, an den Fusszeilen abgelesen und **sechsfach** bestätigt (BRL 13-15 S. 11,
19, 23, 24; BRL 15-15 S. 11 und die Segmentgrenzen der Agenten).

## 2. Warum diese zwei Destillate

Die N62-3-Kandidatenliste ordnet nach entscheidungstragender Reichweite. Ihre Ränge 1 bis 4 sind
seit Run 64-67 abgearbeitet. Eine eigene Messung dieses Laufs über `skills/*/SKILL.md`,
`agents/*.md` und `rules/*.md` zeigt: von den grossen `established`-Destillaten ohne Prüfstand
haben die meisten **null** Konsumenten und sind reiner Nachschlagebestand. Übrig bleiben als
echte Abnehmer die VKF-BRL-Familie und der SIA-118-Kern. Die beiden gewählten Richtlinien tragen
zusammen die RF-/EI-Systematik, die der Skill `brandschutz` in jedem Ertüchtigungs-Factsheet und
jedem LV-Text zieht.

## 3. Verdikte

**48 Befunde: 36 KERN, 12 NEBEN. Eine falsche Angabe. Ein Statusabstieg.**
Vier Abdeckungs-Agenten auf vier Segmenten, jeder mit eigenem Render-Präfix (Methodik-Pflicht 5);
der Hauptprozess hat die entscheidungstragenden Befunde **selbst am Original nachgemessen**.

### 3.1 `vkf-brl-13-15-baustoffe-bauteile` — 9 Kern-, 6 Nebenlücken, **0 falsche Werte**

Vom Hauptprozess am eigenen 300-dpi-Rendering belegt:

- **E_ca fehlte als Klasse vollständig.** In der Zuordnungstabelle zu SN EN 13501-6 (S. 11) steht
  **E_ca** als letzter Eintrag im rot umrandeten **RF3/cr**-Block; die Zeile RF4/cr trägt
  durchgehend «–». Das Destillat beschrieb RF3 als «Dca-Varianten» und nannte E_ca nirgends
  (Gegenprobe Methodik-Pflicht 7: 0 Treffer in Destillat und Delta-Destillat). Ein als E_ca
  deklariertes Kabel war damit im Destillat **nicht auffindbar**, und die Formulierung legte die
  falsche Vermutung RF4 nahe.
- **Das «Zweischienen-Prinzip» fehlte ganz** (S. 24): die Vergrösserung eines geprüften Bauteils
  um generell 10 % ist **nur** für nach VKF-Prüfnorm geprüfte Bauteile zulässig; für EN-geprüfte
  Bauteile gilt der direkte Anwendungsbereich aus Kapitel 13 der Prüfnorm. Das ist eine Regel zur
  Übertragbarkeit von Prüfresultaten, nicht eine Tabellenüberschrift.
- **Die C-Zyklen waren unbeziffert** (S. 23): C5 200'000 · C4 100'000 · C3 50'000 · C2 10'000 ·
  C1 500 Prüfzyklen · C0 keine Leistung gefordert. Das Destillat nannte nur «C0-C5 je nach
  Öffnungszyklen» — Zahlen, die unverändert in eine Türspezifikation wandern.
- **Die Bauteilfugen-Codes waren blosse Buchstaben** (S. 23): H-/V-/T-, X-/M000-, M-/F-/B-,
  W00-99 ohne Bedeutungen, damit im LV-Text nicht anwendbar. Bedeutungen nachgetragen.
- **Die BSR-Zuordnungstabelle war strukturell beschrieben, ohne einen einzigen Wert** (S. 24-25).
  Beispiele nachgetragen (BSR 201/205/206/208/223/224/231 mit «alte F-Klasse → heutige EN-Klasse»);
  die vollständige Wiedergabe bleibt aus Urheberrechtsgründen unterlassen.
- **Die Legende führt sechs VKF-Klassierungsarten**, der Haupttext nur vier — **T** (bewegliche
  Abschlüsse) und **A** (Aufzugstüren) stehen allein im Anhang; ebenso der Schlüssel zur Notation
  «F 30 bb» (**bb** = mit brennbaren Baustoffen, **RF1** = erfüllt RF1).
- **Kapselung nach Feuerwiderstandsdauer** (S. 22): mindestens K30-RF1 bei 30 und 60 Minuten,
  mindestens K60-RF1 bei 90 Minuten. Das Destillat gab nur die allgemeine Formel des Haupttexts.
- **Zwei getrennte Rauchentwicklungs-Skalen** (S. 20): drei Klassen für Baustoffe allgemein, nur
  **zwei** für Bodenbeläge.
- **Ziff. 5 war keine eigene Kernziffer.** Zwei Ziffern verweisen ausdrücklich dorthin; der
  Verweis lief ins Leere. Nachgetragen — mit dem Befund aus Ziffer 4 dieses Berichts.

Status bleibt `established`: alle Befunde sind Lücken, kein einziger falscher Wert.

### 3.2 `vkf-brl-15-15-brandschutzabstaende-tragwerke` — 27 Kern-, 6 Nebenlücken, **eine falsche Angabe**

**Der Befund mit der grössten Tragweite ist ein falscher Wortlaut in der geltenden Fassung.**
Ziff. 3.1.2 Abs. 3 stand im Kernziffern-Teil als «bei **Nutzungseinheiten** geringer Brandgefahr
kann Feuerwiderstand reduziert werden». Der Hauptprozess hat **beide** Originale gegengelesen:

| Fassung | Wortlaut Ziff. 3.1.2 Abs. 3 |
|---|---|
| 01.01.2015 (unrevidiert) | «Zwischen **Nutzungseinheiten** geringer Brandgefahr **oder Brandbelastung** …» |
| **01.01.2017 (geltend)** | «Zwischen **Brandabschnitten** mit geringer Brandgefahr **oder Brandbelastung** …» |

Das Destillat trug also den **überholten** Bezugsbegriff **und** liess «oder Brandbelastung» weg —
in einer Datei mit Status `established (verifiziert)`, deren eigener Revisions-Abschnitt die
Änderung wenige Zeilen weiter oben **korrekt** dokumentiert. Das ist dieselbe Mechanik wie N78-4
(ein Destillat, das seinem eigenen Prüfstand widerspricht), diesmal mit einem inhaltlichen Preis:
«Nutzungseinheit» und «Brandabschnitt» sind nicht dasselbe, und die Reduktionsmöglichkeit hängt
daran, welcher der beiden gemeint ist.

Die schwersten Lücken daneben, alle in der geltenden Fassung:

- **Die drei Feuerwiderstands-Tabellen führten je zwei von vier Nutzungszeilen.** Vom
  Hauptprozess an Tabelle 1 (S. 11) zellenweise nachgemessen. Es fehlten durchgehend die Zeile
  **«Industrie und Gewerbe q über 1'000 MJ/m²»** (Tab. 3: R 120/REI 120/EI 90/REI 120 — die
  höchsten Werte der Richtlinie) und die Zeile **Beherbergung [b]/[c] plus Räume grosser
  Personenbelegung plus Verkaufsgeschäfte**. ⚠ **Für JANS unmittelbar relevant:**
  Krankenhäuser sowie Alters- und Pflegeheime sind Kategorie **[a]** und tragen die strengere
  Zeile (EI 60), Hotels und Berghütten die mildere (EI 30) — die Unterscheidung war im Destillat
  nicht abbildbar, weil die zweite Zeile fehlte.
- **Sieben Fussnoten waren unerschlossen** («zahlreiche Fussnoten, im Original nachlesen»).
  Darunter die **35-m-Regel** für Parkings mit mindestens 25 % unverschliessbaren Öffnungen, der
  **Verzicht auf die Brandmeldeanlage** bei Beherbergungsbetrieben, die **2'400-m²-Regel** für
  zweigeschossige Bauten und der Hochhaus-Sonderfall, wonach der Feuerwiderstand im obersten
  Geschoss nur um 30 Minuten **reduziert** wird und **nicht entfällt** — was der pauschalen
  Destillat-Aussage widersprach.
- **Vier Ziffern ohne eigenen Inhalt:** 3.7.10 (Räume mit grosser Personenbelegung) und 3.7.12
  (Einstellräume bis 600 m², eine eigene Kategorie **neben** Parking) kamen nirgends vor;
  3.7.14 und 3.7.15 nur als Verweisziel. 3.7.15 verlangt u.a. **Transformatorenräume als
  separate Brandabschnitte mit mindestens EI 60**.
- **Ziff. 5 fehlte vollständig**, obwohl zwei Ziffern ausdrücklich dorthin verweisen.
- **Der Anhang (S. 18-35) war pauschal als «grafisch, nicht reproduziert» abgetan.** Er trägt
  die **Ersatzmassnahmen-Matrix** (drei Abstandsstufen × sechs Varianten A-F mit
  Zulässigkeitsraster und zwei Fussnoten) — das eigentliche Kernstück der Regelung —, elf
  Anschlussvarianten mit Fugenkennwerten (Mineralwolle RF1, Schmelzpunkt ab 1'000 °C, Rohdichte
  ab 40 kg/m³), die Hochhaus-Werte **0.9 m Brüstung / 1.5 m Auskragung / 200 m²** und ein
  **4-m-Distanzmass** bei Nebenbauten, das im Destillat als Kriterium gar nicht vorkam.

⚠ **Die Ersatzmassnahmen-Matrix ist bewusst NICHT nachgezeichnet worden.** Nach Methodik-Pflicht 8
gilt: eine halbrichtig abgeschriebene Normtabelle ist ein Planungsfehler mit Quellenschein. Sie ist
als Bestand erfasst und als offener Auftrag geführt.

**Status auf `speculative` herabgestuft.** Das ist der dritte Fall nach `sia-416-1-2007` (Run 54)
und `sia-118-1991` (Run 62) — und der **erste, in dem die Abdeckungsrichtung zusätzlich einen
falschen Wert** zutage gefördert hat. Die bisherige Regelmässigkeit dieser Reihe («sie findet
Lücken, keine falschen Werte») gilt damit nicht mehr uneingeschränkt.

## 4. Eine Prüfrichtung, die in dieser Reihe nie gefahren wurde

Alle bisherigen Runden halten **Destillate gegen Quellen**. Dieser Lauf hat zusätzlich
**Destillat-Aussagen über den eigenen Bestand gegen den Bestand** gehalten — ein Nebengedanke
beim Nachlesen von Ziff. 5, der sich als eigene Fehlerklasse entpuppte.

**Vier Aussagen waren schon bei der Niederschrift falsch:**

| Datei | behauptete fehlend | liegt im Bestand seit |
|---|---|---|
| `sia-118-262-2004` | SIA 118/263 | `sia-118-263-2004`, **derselbe Tag** |
| `sia-118-263-2004` | SIA 118/262 | `sia-118-262-2004`, **derselbe Tag** |
| `sia-118-248-2006` | SIA 248 | `sia-248-2006`, ein Monat früher |
| `sia-118-248-2006` | SIA 493 | `sia-493-1997`, zehn Tage früher |

Die ersten beiden erklärten **einander** wechselseitig für nicht vorhanden — beide am 13.08.2026
geschrieben, in einem Lauf mit parallelen Agenten, von denen keiner den Bestand prüfte und
niemand am Ende abglich. Alle vier inline berichtigt.

Dazu die grössere, mildere Variante: **28 Destillate** nennen das TKB-VKF-Verzeichnis «Weitere
Bestimmungen», **keines** verlinkt das Destillat, das die KB davon führt; mehrere raten
ausdrücklich, es «bei Bedarf separat zu beschaffen». In den beiden diesem Lauf zugewiesenen
Dateien ist der Verweis gesetzt, die übrigen 26 sind **nicht** angefasst — ein Sweep über 26
Dateien ist Raphael vorgelegt (N79-2), nicht selbständig gefahren.

## 5. N64-5.1 geschlossen — die Spezifität ist gemessen

Run 64 hatte die Stichprobenstufe kalibriert und einen Punkt offengelassen: gemessen sei die
**Sensitivität**, nicht die **Spezifität**, und ein sauberes Destillat, an dem sich das messen
liesse, sei «im Bestand nicht bekannt». Einen Tag später hat Run 66 genau eines geschaffen.

Kontrollierte Anlage auf `vkf-allgemein-anerkannte-bauprodukte-2017`, Ziehung mit Seed 79 vor
der Beauftragung protokolliert, zwei blinde Läufe:

| Lauf | erkannt | Kern-Falschbefunde |
|---|---|---|
| **dotiert** (3 gepflanzte Auslassungen, Klasse b) | **3 von 3**, alle als KERN | 0 |
| **undotiert** | — | **0** (2 sachlich zutreffende Nebenbeobachtungen) |

Die Sensitivität **repliziert Run 53 auf einer zweiten, unabhängigen Quelle** — genau die
Schwäche, die Run 64 bei sich selbst ausgewiesen hatte («ein Prüfling, ein Lauf»). Die Spezifität
ist erstmals überhaupt gemessen. **Damit trägt ein Nullbefund der Stichprobe die Aussage «Status
bleibt»**, und Stufe 2 der Dreiteilung für die 308 Kandidaten ist belastbar. Die Reihenfolge der
Kandidaten bleibt Raphaels Entscheid. Anlage: `training/n79-spezifitaet-kalibrierung-260904.md`.

**Ein verworfener Lauf gehört ins Protokoll.** Der erste Anlauf scheiterte an der Sperre: das
Read-Tool liefert eine Datei ohne `limit` vollständig, also stand der ausdrücklich gesperrte
Prüfstand mit «0 Befunde» im Kontext des Agenten. Er hat es **selbst offengelegt**, die
Quelle-zuerst-Reihenfolge gewahrt und ebenfalls 0 Befunde gemeldet — die Messung wird trotzdem
**nicht** gezählt. Lehre, in der Familie von Run 50: **eine Blindheits-Sperre, die als Anweisung
formuliert ist, ist keine Sperre.** Die Wiederholung lief gegen eine mechanisch gekürzte Kopie,
deren verräterische Zeichenketten vorher gegengesucht wurden (0 Treffer).

## 6. Methodik-Pflicht 7 hat zweimal gegriffen — einmal gegen einen Agenten, einmal gegen mich

- **Gegen mich:** Der Einstieg dieses Laufs war die Beobachtung, dass Ziff. 5 in den Kernziffern
  der BRL 13-15 fehlt. Die Gegenprobe zeigte, dass der Inhalt unter «Offene Punkte» sehr wohl
  stand — die Lücke war **strukturell, nicht inhaltlich**. Ein zweiter Agent kam unabhängig zum
  selben, milderen Schluss. Aus dem vermeintlichen Kernbefund wurde ein Nebenbefund; der eigentliche
  Ertrag der Stelle war ein anderer (der ins Leere laufende Beschaffungshinweis, Ziffer 4).
- **Gegen einen Agenten:** Die Meldung, die Ziffern 3.7.14/3.7.15 kämen «an keiner Stelle» vor,
  hielt der Gegenprobe nicht stand — je ein Treffer, als Verweisziel. Ein zweiter Agent hatte es
  aus dem anderen Segment korrekt als «nur als Verweisziel» formuliert. Der Sachbefund steht, die
  schärfere Formulierung war falsch. Für 3.7.10 und 3.7.12 traf «keine Stelle» dagegen zu, und
  dort bestätigten sich die beiden Agenten **aus entgegengesetzten Segmenten gegenseitig**.

## 7. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die Refuter-Richtung auf den Nachträgen dieses Laufs.** Alles hier Ergänzte hat nur die
   Abdeckungsrichtung gesehen; die vom Hauptprozess am Original nachgemessenen Punkte
   (E_ca, C-Zyklen, Zweischienen-Prinzip, BSR-Werte, Tabelle 1, Ziff. 3.1.2 Abs. 3) sind belegt,
   die übrigen tragen ein Agenten-Verdikt.
2. **Die Ersatzmassnahmen-Matrix (BRL 15-15, S. 23)** ist als Bestand erfasst, aber bewusst nicht
   nachgezeichnet — offener Auftrag.
3. **Die Tabellen 2 und 3 der BRL 15-15** hat nur der Agent gelesen; der Hauptprozess hat allein
   Tabelle 1 zellenweise nachgemessen.
4. **Die 305 übrigen Kandidaten der N62-3-Liste** bleiben eine Metadaten-Messung. Dieser Lauf hat
   zwei davon abgearbeitet, und in **beiden** fand die Abdeckungsrichtung erheblich — das sind
   jetzt **vier von vier** Fällen, in denen sie nach einer zufriedenen Refuter-Runde zuschlug.
5. **Die 26 übrigen Destillate mit dem toten TKB-VKF-Zeiger** sind nicht angefasst (N79-2).
6. **Der Bestandsabgleich (Ziffer 4) ist nur für die SIA-Familie gefahren.** Die Regex-Messung
   lieferte 33 Nennungen, von denen ich jede einzelne am Satz nachgelesen habe; die
   DIN-/VSS-/RAL-Destillate sind Mac-Mini-Scope und wurden nicht geprüft.
7. **Nicht gemessen: ob die Stichprobenstufe einen gefälschten Zahlenwert zurückweist.** Die
   Anlage prüft nur die Abdeckungsrichtung — das ist die Gegenprobe, die Run 50 vorgeschlagen hat.

## 8. Vorgelegt

1. **N79-2 — Verlinkungs-Sweep über 26 Destillate?** Sie verweisen auf das TKB-VKF-Verzeichnis,
   das die KB führt, ohne es zu verlinken; mehrere raten zur Beschaffung. Der Sweep ist mechanisch
   und umkehrbar, berührt aber 26 Dateien auf einmal, und der Verweis muss den Fassungsvorbehalt
   mittragen (Bestand 2015 `superseded`, geltend 11.06.2025). **Nicht selbständig entschieden.**

Unverändert bei Raphael und **nicht erneut vorgelegt**: N78-1 (Sprachdiff als Voraussetzung für
`established`), N77-2, N77-3, N65-2, N65-4, N63-2 für den übrigen Bestand, N63-3, die Reihenfolge
der Kandidaten, das Statusvokabular und die Beschaffungs-Bring-Schulden.

## 9. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen
den Commit-Stand **bei Laufbeginn** (`070b56a8c`, 01:30) — nicht gegen HEAD: der 15-Minuten-
Selfcommitter der Synology hat um 01:45 (`5bdf89e2e`) mitten im Lauf einen Teil der Arbeit
committet. Wer gegen HEAD misst, sieht die bereits committeten Dateien gar nicht und hält den
Bestand für unverändert.

| Datei | + | − | Bewertung |
|---|---|---|---|
| `destillate/vkf-brl-15-15-brandschutzabstaende-tragwerke.md` | 72 | 4 | **alle 4 einzeln im Diff nachgesehen**: 3 Frontmatter-Zeilen (`status` herabgestuft, `last_updated`, `links`) und die Kernziffer 3.1.2, jede durch eine erweiterte Fassung ersetzt |
| `destillate/vkf-brl-13-15-baustoffe-bauteile.md` | 44 | 7 | **alle 7 einzeln nachgesehen**: 3 Frontmatter-Zeilen (`datenstand`, `last_updated`, `links`) und 4 Inhaltszeilen (Ziff. 2.4.3, Ziff. 4.1, Begriff «cr», der Offene-Punkte-Zeiger), jede durch eine erweiterte Fassung ersetzt |
| `wiki/QUESTIONS.md` | 79 | **0** | Einschub nach der H1, append-only sauber |
| `CHANGELOG.md` | 37 | **0** | rein additiv |
| `destillate/INDEX.md` | 2 | 2 | genau die zwei absichtlich ersetzten Zeilen |
| `destillate/sia-118-248-2006.md` | 2 | 2 | die zwei berichtigten Bestandsaussagen |
| `destillate/sia-118-262-2004.md` · `-263-2004.md` · `-267-2004.md` | je 1 | je 1 | je eine berichtigte Zeile |
| `training/norm-inventar.md` | 2 | **0** | append-only sauber |
| `outputs/…run79.md` · `training/n79-…md` | neu | — | Report und Anlage |

**Kein Bestandsverlust.** Zwei Gegenproben: (a) die Zahl der Überschriften steigt von 17 auf 21
(BRL 13-15) und von 14 auf 17 (BRL 15-15) — nur Zuwachs, keine entfernte Sektion. (b) Neun
Kernformulierungen früherer Läufe wurden nach den Edits einzeln gegengesucht und sind alle noch
vorhanden («Brandkennziffer», «CWFT», «BSR-Nummer», «Delta-Liste», «Retro-Verifikation»,
«Revision 22.09.2016», «Ersatzmassnahmen», «Nebenbauten»).

### ⚠ Regelverstoss in diesem Lauf, begangen und repariert — Rule 260811

Die Umlaut-Bereinigung wurde zunächst als **wortlistenbasiertes Ersetzen über ganze Dateien**
gefahren, unter anderem über `wiki/QUESTIONS.md`. Das ist genau das, was Rule
`auto-verbesserungen` **260811** verbietet: «Um **eigenen** Text in einer gewachsenen, geteilten
Datei zu korrigieren, wird **nie** ein globales Suchen-und-Ersetzen über den ganzen Dateiinhalt
gefahren. Der eigene Abschnitt wird am Anker herausgeschnitten, darin ersetzt und wieder
eingesetzt.»

**Der Schaden, gemessen:** `QUESTIONS.md` zeigte **310 / 231** statt der beabsichtigten
**80 / 0** — es waren **231 historische Zeilen früherer Läufe** umgeschrieben worden. Die Rule
existiert, weil am 11.08.2026 auf dieselbe Weise 246 Zeilen eines append-only-Journals
umgeschrieben wurden. Die Zahl ist fast dieselbe.

**Wie er entdeckt wurde:** durch die von derselben Rule vorgeschriebene `--numstat`-Messung nach
dem Schreiben. Ohne sie wäre der Vorgang unsichtbar geblieben — der Commit sah aus wie ein
normaler Registereintrag.

**Wie repariert wurde**, nach dem Verfahren derselben Rule: **nicht** aus HEAD wiederhergestellt.
Zuerst geprüft, ob ein anderer Lauf unbestätigte Änderungen an derselben Datei hatte (der
Selfcommit `5bdf89e2e` von 01:45 hat `QUESTIONS.md` **nicht** berührt — gemessen, nicht
angenommen). Dann die Datei aus dem **Basis-Stand `070b56a8c`** neu zusammengesetzt und der
eigene 80-Zeilen-Block nach der H1 wieder eingefügt. Gegenmessung: **80 / 0**, append-only
wiederhergestellt, alle 231 historischen Zeilen zeichengenau zurück.

**Die Lehre für den nächsten Lauf** — sie steht bereits in der Rule und wurde hier trotzdem
verletzt: eine Konvention nachträglich über einen gewachsenen Bestand zu ziehen ist **kein
Formatierungsschritt, sondern ein Eingriff in fremde Arbeit**. Der Anker-Ausschnitt ist der
einzig zulässige Weg. In den beiden Destillaten und den beiden neuen Dateien war das Vorgehen
unbedenklich (eigene bzw. in diesem Lauf ohnehin bearbeitete Dateien); der Fehler lag allein
im Journal.

Umlaute: die in diesem Lauf geschriebenen Passagen sind auf echte ä/ö/ü gebracht
(Rule `umlaute-konvention`), in zwei gezielten Durchgängen mit einer Wortliste statt eines
blinden Global-Replace. Der Vollzug ist gegengesucht; verbleibende ae/oe/ue-Vorkommen stammen
aus dem Altbestand dieser Dateien und aus Dateinamen-Referenzen, die ASCII bleiben müssen.
