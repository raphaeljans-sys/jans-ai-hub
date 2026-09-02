# Normen-Nacht Run 77 — 02.09.2026, ab 01:28 CEST (MacBook Pro)

**Ein Arbeitsgegenstand, der einzige benannte Rückstand des Destillats `sia-416-2003.md`:**
**N66-1** — die beiden Deutungen zu **Figur 11 (S. 56)**, die Run 66 bewusst nicht übernommen
hatte, weil der Hauptprozess sie nicht selbst nachgelesen hatte. Aus dem Nachlesen sind fünf
Befunde geworden, zwei davon mit Hub-Reichweite.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-09-02 01:28 CEST |
| NAS gemountet | ja; alle Zugriffe mit vollem Pfad (Rule `sync-kanonische-quelle`) |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff auf PL-02 | funktioniert **inhaltlich** (`pdfinfo` + `pdftotext` + `pdftoppm` auf der Zieldatei), kein M365-Fallback nötig |
| NAS-Repo vor Beginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `d7e019d31` (01:30) festgehalten |
| Inventarstand | PL-02/PL-03 weiterhin **0 offene `[ ]`** im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **77**, siehe Ziff. 8 — die Nummern 67-76 sind bereits von der Schub-Lane vergeben |

**Stations-Split eingehalten:** nur SIA. Keine DIN-/VSS-/RAL-Position berührt oder abgehakt.

## 2. Methode

Der **Hauptprozess** hat die Figur selbst gerendert (600 dpi, Präfix `sia416-r77-hp-`) und
**rechnerisch aufgenommen**, nicht betrachtet:

- Legenden-Swatches **an der Figur selbst** gemessen, nicht aus der Gesamtlegende S. 45
  übernommen (Methodik-Pflicht 6: Legenden gelten nicht figurenübergreifend).
- Alle Farbregionen über Connected-Component-Labelling erfasst, mit enger **und** weiter Toleranz
  gegengeprüft.
- **Linien**-Signaturen über Pixelschnitte protokolliert (Laufl. schwarz/weiss/Farbe) — das war
  der Schlüssel, siehe Ziff. 4.
- Gedruckte Seitenzahl **am Rand abgelesen**, Versatz null.
- Vor jeder Übernahme geprüft, ob das Destillat die Aussage **an anderer Stelle** bereits führt
  (Methodik-Pflicht 7) — hat einmal gegriffen, siehe Ziff. 3.5.

Zwei **unabhängige Refuter-Agenten** (sonnet, je eigenes Präfix `r77-refA-` / `r77-refB-`,
Methodik-Pflicht 5) haben sechs Behauptungen zu **widerlegen** versucht; beide haben ihre
Legenden-Swatches selbst gemessen und ihre Referenzstellen selbst gewählt.

Jeder Befund einzeln mit Fundstelle und Messwert: `training/n77-figur11-anlage.md` (A77-01 bis
A77-07).

## 3. Ergebnis

**6 Behauptungen geprüft: 5 bestätigt, 1 eingeschränkt · 5 inhaltliche Befunde · 1 Bestätigung
einer geführten Regel · 2 Selbstkorrekturen im Lauf · 0 falsche Zahlenwerte im Destillat.**

Zur letzten Zahl gleich die Einordnung: der Figurenanhang enthält **keine Zahlenwerte**, die
Fehlerklasse «falscher Wert» kann dort strukturell kaum auftreten. Die Null ist kein
Qualitätssignal — dieselbe Einordnung hat schon Run 66 vorgenommen.

### 3.1 N66-1, erster Teil: der blaue Streifen — **bestätigt**, und er trägt mehr als gemeldet

Vertikale Abfolge bei x = 2400 / 2700 / 3000, identisch:
`HNV(2. OG) | S6 W28 S6 (Decke) | FV 24 px | S5 | HNV(1. OG)`.

Das Band liegt **unterhalb** des Deckenkörpers, also im Nettovolumen des 1. OG, und ist vom
HNV darunter nur durch eine Kategoriegrenze getrennt. Refuter A hat zusätzlich die
**Höhen-Referenzlinien des Massstrangs** vermessen — die Geschossgrenze «H 2.OG» liegt bei
y ≈ 2307 und damit **im weissen Deckenkörper**; das Band (y 2312-2336) liegt eindeutig darunter.
Diesen Beleg hatte der Hauptprozess nicht.

**Der Normtext trägt es mit:** Ziff. 2.1.3 zählt zur FF neben Technikräumen ausdrücklich
«Ver- und Entsorgungsschächte, **Installationsgeschosse** sowie Ver- und **Entsorgungskanäle**».
Die Deutung hängt damit nicht an der unbeschrifteten Figur allein.

### 3.2 N66-1, zweiter Teil: der orange Keil — Beobachtung bestätigt, **Begründung nicht**

Bestätigt: an der Traufseite des DG liegt ein NNV-Feld, das unmittelbar an das HNV-Feld
«Wohnen» grenzt, auf demselben Boden steht und oben von der Dachschräge begrenzt wird —
**ohne Konstruktion dazwischen** (Ziff. 4). Die HNV/NNV-Grenze läuft also **quer durch ein
durchgehendes Raumvolumen**.

**Nicht bestätigt ist die Begründung «zu geringe Raumhöhe» als Norm-Kriterium.** SIA 416 kennt
keinen Raumhöhen-Schwellenwert: HNF/NNF (Ziff. 2.1.1.1/2.1.1.2) und HNV/NNV (Ziff. 5.1.1.1/
5.1.1.2) stellen auf **Zweckbestimmung und Nutzung** ab. Refuter B hat den **ganzen** deutschen
Normteil S. 3-16 nach Höhen- und Massangaben durchsucht; die drei Treffer auf «Höhe» betreffen
den Berechnungsmodus (Ziff. 0.4), die GV-Berechnung (Ziff. 5) und lichte Schachtquerschnitte
(Ziff. 2.2) — keiner ein Zuordnungskriterium. An der Grenze in Figur 11 steht kein Mass.

Ins Destillat gegangen ist deshalb nur die Beobachtung, und ausdrücklich die Warnung dazu: wer
aus dieser Figur eine Mindesthöhe für HNV ableitet, legt der Norm etwas unter, das sie nicht
sagt — und würde es beim nächsten Dachausbau anwenden. Beide Refuter haben im Übrigen eine
**eigene, unbelegte** Deutung des Feldes angeboten («Dachvorsprung/Gaube» bzw. «niedriger
Randstreifen»), und **keine** ist übernommen.

### 3.3 Erster Hub-Befund: die Volumenanteile sind nicht aus den Flächenanteilen ableitbar

Ziff. 5.1 und 5.1.1 sagen, NGV bzw. NV gliedere sich «**analog der Flächengliederung**». Das
Destillat gab den Wortlaut an zwei Stellen unqualifiziert wieder — und er verleitet zu dem
Schluss, die Volumenanteile liessen sich aus den Flächenanteilen fortschreiben. Figur 11 zeigt,
dass «analog» die **Struktur** meint, nicht die Zuordnung:

- Über **derselben Grundfläche** liegen im 1. OG zwei Volumenschichten verschiedener Kategorie
  (HNV unten, FV oben). Im Grundriss ist dieselbe Fläche **einmal** vorhanden und **einmal**
  klassiert.
- **Gegenprobe an Figur 4** (S. 49), vom Hauptprozess gemessen: Blau (FF) tritt dort nur als
  **zwei kompakte Felder** auf — Schachtquerschnitt und kleiner Technikraum. Eine waagrechte
  Installationsebene **kann** im Grundriss gar nicht erscheinen, weil FF nach Ziff. 2.1.3 eine
  **Grundrissfläche** ist, FV nach Ziff. 5.1.3 dagegen ein Volumenteil.

**Praxisfolge:** ein HNV/NGV-Verhältnis darf nicht aus dem HNF/NGF-Verhältnis abgeleitet werden;
wer so rechnet, überschätzt HNV und übersieht FV systematisch. Betroffen ist namentlich der Agent
`flaechen-nachweis`.

### 3.4 Zweiter Hub-Befund: die NGV-Kategorien sind nicht geschossweise geschnitten

Zwei unabhängig gemessene Stellen:

1. **Nach unten:** der VV-Schacht läuft ohne trennende Decke bis y = 3418 durch — rund 137 px
   unter die Geschossgrenze 1./2. UG (y ≈ 3282), also etwa 45 % ins Höhenband des 2. UG. Ein
   durchgehender Schacht ist **ein** VV-Volumen, nicht eines je Geschoss.
2. **Nach oben:** an der Grenze 1. OG / EG ist die Decke **nur über einen Teil der Raumbreite**
   gezeichnet — quer gemessen bei y = 2634: 270 von 897 px schwarz; bei y = 2640: 871 px
   durchgehend rot. Vertikalschnitte bestätigen es (x = 2300/2500/2700 ohne Unterbrechung,
   x = 2900/3100 mit regulärer Decke `S13 W28`). Der Raum ist über rund zwei Drittel seiner
   Breite **zweigeschossig**.

**Der Gegenbeleg steht im eigenen Destillat:** in **Figur 1** bleibt ein innenliegender Luftraum
**unkoloriert** und zählt in der Fläche nicht — im Volumen zählt derselbe Luftraum voll mit.
Fläche und Volumen weichen damit nicht nur in der **Kategorie** ab (Ziff. 3.3), sondern auch in
der **Menge**.

### 3.5 Eine Bestätigung statt eines Befundes (Methodik-Pflicht 7)

Im zweigeschossigen Raum steigt ein diagonales Band konstanter Breite vom Boden zur oberen Decke
— eine innenliegende Treppe oder Rampe. Sie ist **HNV-farbig**, nicht gelb. Das **bestätigt** die
Regel, die das Destillat aus Ziff. 2.1.2 bereits führt: zur VF gehören die **ausserhalb der
Wohnung liegenden** Treppen. Nach Methodik-Pflicht 7 ist das kein Befund; protokolliert wird es
als unabhängige Bestätigung. **Neu** ist allein die volumenseitige Folge, und die ist
nachgetragen: der VV-Anteil einer Maisonette ist kleiner, als eine Zählung «alle Treppen sind VV»
ergäbe. (Ob das Band eine Treppe oder eine Rampe darstellt, ist nicht entscheidbar — es fehlen
die Stufen, welche die gelben Treppenläufe zeigen. Für die Kategorienfrage ohne Belang.)

## 4. Zwei Selbstkorrekturen im Lauf — beide gehören ins Protokoll

**Erstens, und sie ist die wichtigere:** Beim blossen **Betrachten** des eigenen
600-dpi-Ausschnitts hielt der Hauptprozess den 12-px-Balken zwischen HNV und NNV im DG für eine
Wand derselben Strichstärke wie die übrigen — und schloss daraus auf einen abgetrennten
Nebenraum, dessen NNV-Einstufung der **Nutzung** folge. Die Messung kehrte das um: jede echte
Wand und Decke dieser Figur zeigt `S6 W18–28 S6` mit **weissem Kern**, die strittige Grenze
zeigt `S12` **ohne** Kern, an fünf Höhen identisch. Refuter B hat den Unterschied an drei
**selbst gewählten** Referenzstellen reproduziert und ihn als **kategorisch** protokolliert,
nicht graduell.

**Zweitens:** Die eigene Aufnahme führte das FV-Feld im 2. UG als «einziger eingefärbter Bereich
in diesem Höhenband». Refuter A widersprach; die Nachmessung des Hauptprozesses gab ihm recht.
Die widerlegende Zahl (`y 1924–3419`) stand die ganze Zeit in der **eigenen** Regionenliste —
sie war erhoben und nicht gelesen. Refuter A liess offen, ob der Schachtfuss ein Raum oder blosse
Fundamenttiefe sei; die Nachmessung entscheidet es (keine Decke dazwischen, also dasselbe
Volumen) und hat daraus den Befund unter Ziff. 3.4 gemacht.

## 5. Statusentscheid — `speculative` bleibt, mit vollständig neuer Begründung

**Was erledigt ist.** Alle **vier** Prüfrichtungen sind auf **allen** Teilen gelaufen (Abdeckung
Run 64, Refuter Run 65, Q&A Run 66, Fundstellen Run 66). Der einzige namentlich benannte Blocker
N66-1 ist geschlossen. Vier Runden haben **keinen falschen Zahlenwert** gefunden. Der Zustand,
den Methodik-Pflicht 13 für eine Hebung verlangt, ist formal erreicht.

**Warum trotzdem nicht gehoben.** Die **messende** Abdeckung des Hauptprozesses lief in diesem
Lauf auf **einer von zwölf Figuren** — und hat dort **fünf** inhaltliche Befunde gehoben,
nachdem Run 64 denselben Anhang auf Agenten-Ebene bereits als abgedeckt geführt hatte. Nach der
Methoden-Lehre dieses Loops misst eine ertragreiche Runde die **Quelle** und nicht die Methode:
der Figurenanhang ist nachweislich nicht ausgereizt. Eine Hebung jetzt wiederholte genau das
Muster, das die Runs 15-21 sieben Mal produziert haben.

**Was zur Hebung fehlt, benannt statt diffus:**
1. Die messende Abdeckung des Hauptprozesses auf den **Figuren 1-10 und 12**.
2. Der systematische **f/i-Diff** gegen den deutschen Normteil.

**Was `speculative` hier heisst und was nicht:** nicht, dass die geführten Werte unsicher wären —
es heisst, dass die **Vollständigkeit** des Figurenanhangs nicht belegt ist. Diese Unterscheidung
steht jetzt im Destillat und in jedem der vier gesetzten Vermerke, damit sie nicht als
Generalwarnung gelesen wird.

## 6. Health-Check-Befund C3 präzisiert und behandelt

Der Wissens-Health-Check vom 01.09. nennt als Top-Finding 1: «`sia-416-2003.md` trägt
`speculative`, aber die 12 abhängigen Konsumenten zitieren sie weiterhin ohne Warnhinweis».
Gegen den **ganzen** Bestand geprüft (Methodik-Pflicht 10, die genau das verlangt, bevor ein
externer Befund als Lücke verbucht wird):

- **Bereits mit Vermerk versehen** (Wissens-Chef Run 46, 28.08.): `wissen/energie/wiki/
  bezugsgroessen-energienachweis.md`, `wissen/energie/destillate/gebaeudehuellziffer-ebf-
  flaechendefinition.md`, `wissen/immobilienbewertung/wiki/flaechendefinitionen-sia.md` und
  `wissen/normen/wiki/synthese-sia-vkf-fachskills.md`.
- **Nennen SIA 416 nur als Bezugsgrössen-Konvention** ohne Ziffern-Zitat und ohne Destillat-Pfad:
  `agents/volumen-rechner.md`, `agents/realwert-rechner.md`, `agents/grobkosten-rechner.md`,
  `skills/grobkosten-onepager`, `skills/machbarkeit`, `skills/immobilienbewertung` u.a.
- **Tatsächlich offen — vier Stellen**, in diesem Lauf mit dem Vermerk versehen:
  `agents/flaechen-nachweis.md`, `skills/kostenkontrolle/SKILL.md` (2×),
  `skills/wettbewerb/SKILL.md`, `wissen/baurecht/wiki/nutzungsziffern.md`.

**Die richtige Formulierung** (Methodik-Pflicht 10) lautet nicht «der Health-Check hatte
unrecht», sondern: der Befund ist real, sein handlungsrelevanter Kern ist ein Drittel so gross,
und er ist jetzt geschlossen.

## 7. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die messende Abdeckung auf den Figuren 1-10 und 12** — der eigentliche Rückstand, siehe
   Ziff. 5.
2. **Ob die Fläche/Volumen-Asymmetrie auch bei VF/VV und KF/KV besteht** — gemessen ist sie an
   FF/FV und an HNF/NNF gegen HNV/NNV. Für die übrigen Paare ist sie begründete Vermutung
   (N77-1).
3. **Der französische und italienische Normteil**, weiterhin nur punktuell als Kontrolltext.
4. **Die Fundstellen-Richtung auf dem übrigen Bestand** — N63-2 bleibt auf einem von über 300
   Destillaten gefahren.
5. **Die 307 übrigen Kandidaten der N62-3-Liste** sind unverändert nur eine Metadaten-Messung.

## 8. Zur Run-Nummer: 77 und nicht 67

Die jüngste `outputs/`-Datei ist Run 66. Der CHANGELOG zeigt aber, dass die Nummern **67 bis 76**
am 29.08.2026 bereits von der Schub-Lane NORMEN-PRUEFSTAND vergeben wurden — zwei parallele
Nummernkreise auf derselben Zählung. Die Sichtprüfung der jüngsten `outputs/`-Datei allein hätte
hier eine dritte Kollision erzeugt. Deshalb 77, und deshalb steht der Punkt als **N77-3** im
Fragenregister: dort sind **N66-1 und N66-2 doppelt vergeben** (Figur 11 / Signaturen-Messung
gegen SIA 102:2014 / M365-Zugriffsweg). Nicht selbständig umnummeriert — das wäre ein
Registerumbau und würde Verweise in bestehenden Berichten brechen.

## 9. Vorgelegt

1. **N77-2 — N66-2 hat den geforderten zweiten Fall.** Run 66 hatte die Frage, ob Aussagen über
   **Signaturen** verbindlich zu **messen** statt zu betrachten sind, ausdrücklich zurückgestellt
   («ein Fall ist zu wenig für eine Pflicht») und die Bedingung genannt: vorlegen, wenn ein
   zweiter unabhängiger Fall dazukommt. Er liegt vor, und er ist dreifach unabhängig — dort eine
   **Flächen**signatur, hier eine **Linien**signatur; dort irrte ein Agent, hier der
   **Hauptprozess selbst**; dort führte der Irrtum zur falschen Kategorie, hier kehrte er die
   Begründung um. Vorschlag als Methodik-Pflicht 14, Entscheid Raphael.
2. **N77-3 — die ID-Kollision im Fragenregister** (Ziff. 8). Vorschlag: künftig ein Präfix je
   Nummernkreis (`NN-` / `SP-`), rückwirkend nur als Klammerzusatz. Entscheid Raphael.

Alles Übrige dieses Laufs ist umkehrbare Arbeit am eigenen Wissensbestand und fällt unter die
Whitelist. Unverändert bei Raphael und **nicht erneut vorgelegt**: N65-2, N65-4, N63-2 für den
übrigen Bestand, N63-3, die Reihenfolge der 308 Kandidaten, das Statusvokabular und die
Beschaffungs-Bring-Schulden.

## 10. Ein Nebenbefund beim Commit — und warum er nicht als neuer Befund gebucht wird

Der eigene `nas-commit-now.sh` lief in einen **Merge-Konflikt**. Der Commit selbst ist sauber
durchgegangen (**`6c34e2db6`**, 13 Dateien, Arbeitsbaum danach clean); gescheitert ist erst der
Abgleich mit GitHub.

**Zuerst geprüft, ob das schon bekannt ist** (Methodik-Pflicht 10) — und das ist es, gründlich:
`logbuch/fristen.md` führt die Divergenz seit dem **29.08.** mit sieben Bestätigungen und hat sie
am 01.09. 23:5x von «Backup fehlt» auf **«kanonische Quelle unvollständig»** hochgestuft, weil auf
`github/main` **387 Dateien** liegen, die im NAS-Arbeitsbaum fehlen — darunter **356 fertige
Wiki-Artikel** der KB `architektur-fachwissen`. Ein achter «steht immer noch» wäre genau der
Leerlauf, vor dem Rule `auto-verbesserungen` 260830 warnt.

**Neu ist deshalb nur, was dieser Lauf messen konnte, weil der Konflikt in seiner eigenen Datei
liegt** — `wissen/normen/CHANGELOG.md`:

| Messung (nativ per ssh) | Wert |
|---|---|
| Der hängende Commit `1eed7118c` berührt | **genau eine Datei**, 35 Zeilen, Diff-Kopf `@@ -0,0 +1,35 @@` |
| Lokale Seite seit merge-base | **+212 / −0** (6 Commits) |
| `github/main` seit merge-base | **+162 / −0** |
| Zählerstand | Versuch **730**, Divergenz **640 / 267** |

**Keine der beiden Seiten löscht eine einzige Zeile** — beide fügen ausschliesslich neue
Datumsblöcke an den Dateikopf. Damit ist die Auflösung für diese Datei **mechanisch** (beide
Blöcke behalten, nach Datum ordnen) und nicht, wie das Selfcommit-Skript für den allgemeinen Fall
zu Recht annimmt, eine Urteilsfrage. Das ist der Beitrag dieses Laufs: aus «braucht ein Urteil»
wird «braucht eine Bestätigung». Die P1-Einstufung bleibt davon unberührt.

**Nicht selbst aufgelöst.** Unbeaufsichtigter Lauf, Git-Interna — Rule `interaktive-eingriffe`
Ziff. 3 gilt unverändert, und der vorgelegte Befehl steht seit dem 01.09. im Register. Ergänzt
wurde dort nur die Charakterisierung oben und der Hinweis, dass dieser Lauf mit in der lokalen
Seite hängt (er hat 78 Zeilen an den Kopf ebenjener Konfliktdatei angefügt — das ändert die Art
des Konflikts nicht, aber der auflösende Blick sollte es wissen).

**Für die Beurteilung dieses Laufs heisst das:** die Arbeit ist vollständig und committet auf der
**kanonischen Quelle** (NAS), wie es Rule `sync-kanonische-quelle` verlangt. Sie erreicht GitHub
und die zweite Station erst mit der Auflösung der Divergenz.

## 11. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen
den Commit-Stand **bei Laufbeginn** (`d7e019d31`, 01:30) — nicht gegen HEAD, weil der
15-Minuten-Cron HEAD mitten im Lauf verschiebt (Falle aus Run 66).

| Datei | + | − | Bewertung |
|---|---|---|---|
| `wissen/normen/CHANGELOG.md` | 78 | **0** | Prepend rein additiv — die Leerzeile des alten Dateikopfs wurde beim ersten Versuch geschluckt und im selben Lauf wiederhergestellt |
| `wissen/normen/wiki/QUESTIONS.md` | 59 | **0** | Einschub nach der H1, append-only sauber |
| `wissen/normen/training/norm-inventar.md` | 1 | **0** | append-only sauber |
| `wissen/normen/training/n77-figur11-anlage.md` | 247 | — | neu |
| `wissen/normen/destillate/INDEX.md` | 1 | 1 | genau die eine absichtlich ersetzte Zeile |
| `wissen/normen/destillate/sia-416-2003.md` | 86 | 16 | **alle 16 einzeln im Diff nachgesehen und als gewollte Ersetzung belegt** (2 Frontmatter, die Figur-11-Zeile, 3 Glossarzeilen, 1 Prüfstand-Zeile, 8 Zeilen des abgelösten Statusabsatzes, 1 offener Punkt) |
| `agents/flaechen-nachweis.md` | 1 | 1 | Zeile um den `speculative`-Vermerk ergänzt |
| `skills/kostenkontrolle/SKILL.md` | 2 | 1 | dito, zwei Fundstellen |
| `skills/wettbewerb/SKILL.md` | 3 | 1 | dito |
| `wissen/baurecht/wiki/nutzungsziffern.md` | 1 | **0** | Vermerk angehängt |

**Kein Bestandsverlust.** Zwei Gegenproben: (a) die Zahl der Überschriften im Destillat geht von
**14 auf 15** — eine neue Sektion («Volumenanteile»), keine entfernt. (b) Der abgelöste
Statusabsatz enthielt eine Run-65-Beobachtung, die im neuen Text zunächst fehlte (die
Refuter-Richtung fand auf denselben Seiten 1 Widerlegung und 0 falsche Werte, wo die
Abdeckungsrichtung 12 Lücken hob). Sie ist beim Durchsehen des Diffs aufgefallen und
**wiederhergestellt** — genau dafür ist die Zeile-für-Zeile-Sicht da, die Rule 260811 verlangt.

Zeilenzahlen nach dem Lauf: Destillat 267 · Anlage 247 · Inventar 1594 · INDEX 495 ·
QUESTIONS 6546 · CHANGELOG 13019 · Report 314 · `logbuch/fristen.md` 5120 (**+29/−0**, nativ nachgemessen — die zuerst notierte 32 war geschätzt).

Umlaute: alle in diesem Lauf geschriebenen Dateien in der Zielkonvention (echte ä/ö/ü),
**auch die Anlage in `training/`** — anders als die Run-66-Anlage, die bewusst ASCII verwendete.
Der Health-Check vom 01.09. führt unter F3 genau diesen Punkt (143 von 470 Dateien mit
ae/oe/ue); die beiden anderen Anlagen dieses Loops (`n64-…`, `l41-…`) verwenden ebenfalls
Umlaute. Rule `umlaute-konvention` geht vor.
