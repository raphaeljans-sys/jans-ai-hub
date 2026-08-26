# Wissens-Chef Run 44 — 26.08.2026

**Delta-Basis** 25.08.2026 23:11, Fenster **24,0 h**, **116 Commits**, HEAD `2b6cd0693`, 62 geänderte
Dateien in `wissen/` + `rules/`. Uhr-Kontrolle bestanden (Stationsuhr 23:11 CEST gegen nativen
Synology-Selfcommit 23:00:06 — die Synology-Uhr hängt an keiner Stationsuhr).

**Zuschnitt** 6 Melder (`model: sonnet`) + 6 Refuter (Hauptmodell, adversarial) = **12 Agenten**,
2'142'633 Token, 210 Werkzeugaufrufe, 8,6 Min, **0 Fehler**. Dazu ein eigener Strang im Hauptkontext
(deterministischer Vorfilter `wissen/tools/wiki-konsistenz.sh`, 42 Kandidaten, plus die SIA-2024-Spur).

**Bilanz: 6 Befunde gemeldet, 5 bestätigt, 1 widerlegt, 3 Nullbefunde gemessen**, dazu 3 eigene Funde
im Hauptkontext (alle bestätigt). **9 Dateien geändert, 8 rein additiv, 1 gewollte Zeilenersetzung.**

---

## Der harte Befund: eine Norm-Synthese wurde sichtbar gemacht, während ihre Quelle unsicher wurde

`wissen/normen/wiki/synthese-sia-vkf-fachskills.md` ist die Nachschlagetabelle, aus der die Skills
`werkvertrag`, `ausschreibung` und `unternehmerkontrolle` ihre SIA-118-Kennwerte ziehen. Sie trägt
`status: established`, `last_updated: 2026-07-17`.

Zwei Läufe an zwei aufeinanderfolgenden Tagen haben sie in die Zange genommen:

- **25.08. (Wissens-Chef Run 43)** hat sie im `INDEX.md` **nachregistriert** — sie bestand seit dem
  17.07. `established`, war aber nie im Index geführt und über den Skill `normen` gar nicht
  auffindbar. Seit Run 43 ist sie es.
- **26.08. (normen Run 62)** hat ihr Quelldestillat `sia-118-1991.md` erstmals gegen die
  Abdeckungsrichtung am Original geprüft und von `established` auf **`speculative`** herabgestuft —
  **84 Kern- und 82 Nebenlücken**.

Die Synthese wurde also genau in dem Moment breiter sichtbar, in dem ihre Grundlage unsicherer
wurde. Materiell betroffen ist die Zeile **«Mängelrechte-Kaskade»**: sie gibt die drei Wahlrechte aus
Art. 169 SIA 118:1991 schrankenlos wieder. Run 62 hält als Kernbefund fest, das Destillat habe «die
Bauherrenrechte überdehnt», und hat die Schranken nachgetragen — insbesondere, dass auf Verbesserung
nur beharrt werden kann, soweit sie im Verhältnis zum Interesse des Bauherrn an der Mängelbeseitigung
**keine übermässigen Kosten** verursacht (Art. 368 Abs. 2 OR). Ebenfalls neu im Destillat und in der
Synthese nicht abgebildet: **Art. 163** (Genehmigungsfalle) und **Art. 83** (Bauhandwerkerpfandrecht).

**Aussenwirkung:** wer eine reale Mängelsituation beurteilt — Bauherr will Ersatzvornahme, Minderung
oder Rücktritt — und nur die Kurzzeile liest, vertritt gegenüber dem Unternehmer eine zu weit
gefasste Rechtsposition.

**Aktion:** ⚠-Vorbehalt unmittelbar vor der betroffenen Tabelle gesetzt (+23/−0), mit Zeiger auf
`destillate/sia-118-1991.md` Z. 161 ff. **Der Statusentscheid für den Artikel selbst wurde nicht
vorweggenommen — er gehört der KB `normen` und steht unten als offener Punkt.**

---

## Der lehrreichste Befund: eine erfüllte Bringschuld am falschen Ort verhindert nichts

Gefunden im Hauptkontext, nicht vom Fan-out.

`normen/destillate/sia-2024-korrigenda-c1-c2.md` schliesst mit dem Satz, die Cross-KB-Bringschuld an
`energie` sei «noch nicht ausgeführt — reiner Zeitgrund dieses Laufs». **Sie war ausgeführt**, am
selben Tag (23.08.), in `energie/wiki/QUESTIONS.md` Z. 2049–2056. Der Artikel führt sich selbst als
offen, obwohl er erledigt ist — wer ihn liest, nimmt die Übergabe ein zweites Mal vor.

Der teurere Teil steht in der Gegenrichtung. Das energie-Destillat
`sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` nennt den normen-Artikel **nirgends**. Sein
Frontmatter trägt: «Korrigenda C2:2025 vollständig gelesen **24.08.2026** (curl+PyPDF2, deutsche UND
französische Fassung geladen)». `normen` hatte C1 **und** C2 am **23.08.** vollständig gelesen. Zwei
KBs haben dieselben zwei Dokumente im Abstand von einem Tag unabhängig beschafft und gelesen.

**Die Ursache ist strukturell, nicht Nachlässigkeit:** die Bringschuld-Notiz landete in der
`QUESTIONS.md` — und der energie-Lauf des nächsten Tages arbeitete am **Destillat**. Rule
`wissens-bibliothekar` verlangt seit dem 23.08.2026, dass der erledigende Lauf den Fund in der
Empfänger-KB sichtbar macht; sie lässt offen, **wo genau**. Dieser Fall zeigt, dass «irgendwo in der
Empfänger-KB» nicht genügt: der Zeiger muss dort stehen, wo weitergearbeitet wird.

**Dritter Fund am selben Ort:** der Querbezug-Block des energie-Destillats warnte seit dem 14.07.,
das normen-Register führe «bislang 2006 bzw. 2014, Re-Destillate ausstehend». Für **SIA 2024** ist
das seit dem 23.08. überholt (Original am SIA-Shop verifiziert, beide Korrigenda geschlossen); für
**SIA 382/1** trifft es weiterhin zu. Eine Warnung, die zur Hälfte falsch ist, wird ganz ignoriert.

**Aktion:** Rückverweis auf `[[sia-2024-korrigenda-c1-c2]]` und Präzisierung der halb veralteten
Warnung in `energie` gesetzt (+13/−0); Richtigstellung der Selbstaussage in `normen` gesetzt (+14/−0).
Beide Richtungen stehen jetzt.

---

## Ein Monat Standzeit für einen Kennwert mit Faktor 2.8

`skills/machbarkeit/wissensbasis/02_kennwerte-kosten.md:30` führt «Wohnen Vollausbau ~**CHF 2'400/m³
GV**» gegen den führenden Band **850–1'050** in `wissen/grobkosten/wiki/kennwerte`. Dasselbe Projekt
(2412 Ebmatingen), Faktor **2.8**.

Der Refuter hat den Befund **abgeschwächt, nicht gekippt** — und dabei den einzigen Ausweg
ausdrücklich verschlossen: die Bezugsgrössen-Erklärung trägt hier nicht, weil **BKP 2 eine Teilmenge
von BKP 1–5 ist und darum tiefer liegen müsste, nicht 2.8-fach höher**. Die Etikett-Differenz
vergrössert den Widerspruch, statt ihn zu erklären.

**Der eigentliche Mangel ist Registerhygiene.** Die ⚠-Box unter der Zeile stellt den Wert operativ
bereits still; wer sie mitliest, kann die 2'400 nicht verwenden. Aber der Punkt existierte seit dem
25.07.2026 als **E-3** nur im Laufbericht von Run 15 und im CHANGELOG — an zwei Orten, die kein
Aufsichtslauf regelmässig abgreift. Genau das untersagt Rule `auto-verbesserungen` 260805: **ein
Laufbericht ist kein Meldekanal.** git-Stand der Skill-Datei: unverändert seit 2026-07-25 21:00:04.

**Kein Entscheid Raphaels nötig.** Offen ist allein der Abgleich mit der Original-xlsx im
Projektordner. Der Verdacht Einheitenfehler (CHF/m² GF statt CHF/m³ GV) wird von derselben Datei
gestützt, die wenige Zeilen tiefer den Wüest-Median **2'800 CHF/m² GF** führt — Indiz, kein Beweis.
Deshalb wurde die Zahl **nicht ersetzt**: ein Ersatz würde den möglichen Originalwert unwiederbringlich
verdecken.

**Aktion:** Flag im Skill additiv geschärft (+10/−0), Matrixzeile um `skills/machbarkeit` ergänzt,
Punkt erstmals in `QUERBEZUEGE.md` wiedervorlagefähig registriert.

---

## Der Zwischenstand von gestern stand als «geltend»

`energie` hat am 25.08. (Run 163) der KB `normen` gemeldet, die Uf-Default-Werte im SIA-Merkblatt
2021 seien durch das «Merkblatt Fenster» **2009** überholt; dort gälten 1,8 / 2,2 / 2,8. `normen` hat
das sauber in `QUESTIONS.md` und `CHANGELOG.md` journalisiert. **Einen Tag später** hat `energie`
(Run 164) erkannt, dass auch die Ausgabe 2009 überholt ist: geltend ist die **Ausgabe 2021** (EnDK),
Tab. 6 mit **1,4 / 1,9 / 2,5**.

`energie` hat dabei korrekt gearbeitet — der ⛔-Vermerk steht seit dem 26.08. in
`normen/destillate/sia-mb-2021.md` Z. 35, gesetzt von `energie` selbst. Nachgehinkt sind allein die
beiden **Journaldateien derselben KB**. Der Fehlertyp ist also nicht «Korrektur unterlassen», sondern
«Korrektur nicht ins eigene Journal nachgezogen» — und Journale werden per Volltextsuche gelesen.

**Aktion:** datierte ⛔-Nachträge in `normen/wiki/QUESTIONS.md` (+9/−0) und `normen/CHANGELOG.md`
(+8/−0). Erledigt.

---

## Ein Zeiger auf eine Warnung ohne Einordnung

`auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md` verweist für die BMA-Anmeldeschwellen auf
`normen/destillate/vkf-brl-20-15-brandmeldeanlagen`. Dieses Destillat trägt seit dem Fassungs-Sweep
(normen Run 58, 20.08.) `status: superseded` mit dem Vermerk «Nicht als geltende Fundstelle
zitieren». Der Cross-Check dieses Paars war seit dem **20.07.2026 (Run 10)** als «bereinigt +
verlinkt» geschlossen und wurde seither nie wieder aufgerufen.

Materiell ändert sich nichts — das Fassungs-Delta grenzt die Änderung auf **Ziff. 3.2.2** ein, die
zitierten Ziff. 4.1 / 3.10 sind unverändert. Aber genau das musste jemand feststellen. Ein Bauleiter,
der für eine fristgebundene GVZ-Auflage (2619 KISPI Ziff. II.25/26) über den verlinkten Pfad
nachschlägt, landet sonst auf einer Warnung ohne Einordnung und hält die Schwelle für ungültig.

**Aktion:** Fassungs-Nachtrag im Querbezug-Block gesetzt (+11/−0). Erledigt.

---

## Widerlegt: die Rule hält Stadelmann nicht auf «Sie»

Der twin-Melder meldete, `rules/anrede-kontakte.md` halte Othmar Stadelmann / Estermann auf «Sie»,
obwohl das Beziehungsregister das Du dreifach belege. Der Refuter hat das an vier Stellen gekippt:

1. Stadelmann hat in der Kontaktliste **gar keine Tabellenzeile**. Die Rule hält ihn nirgends fest;
   ihre Anweisung «den belegten Opener desselben Kontakts halten» zeigt auf die jüngste Belegkante —
   und führt mit dem Beleg vom 25.08. **selbst zum Du**. Die Stelle ist selbst-aktualisierend.
2. Der Korrekturhinweis Z. 57–62 nennt den Stadelmann-Wechsel bereits namentlich und datiert.
3. Die Meldequelle selbst schreibt: «Das entwertet den Gegenbeleg nicht, es **datiert** ihn.»
4. Der Punkt liegt Raphael bereits als `twin/wiki/QUESTIONS.md` 260826 #1 mit Optionen vor.

**Zählfehler des Melders:** er behauptete drei belegte Du-Instanzen. Das Beziehungsregister
qualifiziert die beiden älteren (03./05.08.) selbst als **keinen** Registerwechsel — «Geschätzter
Othmar» ohne Du-Pronomen ist eine Wärmestufe, kein Du. Belegt ist **eine** (25.08., Batch 105).

**Keine Aktion.** Der Fall zeigt den Wert der Refuter-Stufe: der Melder hätte eine importierte Rule
gegen einen Belegstand geändert, den seine eigene Quelle anders qualifiziert.

---

## Drei Nullbefunde, gemessen statt vermutet

- **Uf-Propagation hub-weit** — die Korrektur aus `energie` Run 164 (10 Fundstellen in 6 Dateien)
  wurde ausserhalb `wissen/energie` gegengesucht: **kein Treffer** in `planungsgrundlagen`, keiner in
  einer anderen KB, keiner in `skills/` oder `rules/`. Der einzige Rückstand lag in den
  normen-Journalen (oben erledigt). Ähnlich klingende Zahlen in
  `energie/destillate/uf-werte-rahmenmaterial-grobuebersicht.md` und
  `normen/destillate/sia-180-081-2017.md` stammen aus unabhängigen Primärquellen.
- **KISPI-Zuständigkeitswechsel 1171/26** — beide bewegten Dateien änderten nur Frontmatter-Syntax.
  AfB-Team 5 / Furrer und UGZ Hansen / Zala stehen in beiden KBs Wort für Wort deckungsgleich, die
  Führungs-Matrix wird eingehalten, die Querverlinkung ist bidirektional.
- **Art. 229 StGB** — die Korrektur aus Run 43 sitzt beidseitig. **Keine Stelle im Hub** führt noch
  «bis zu drei Jahren» für den vorsätzlichen Tatbestand. Abnahme/Rügefrist/Garantiefrist kommen in
  `baurecht` überhaupt nicht vor — unbestrittene Erstabdeckung durch `normen`.

## Werkzeug-Befund am Rand

Der deterministische Vorfilter `wissen/tools/wiki-konsistenz.sh` meldete 42 Kandidaten. Der grösste
Teil sind **Fehlalarme aus Journalprosa**: `normen/wiki/QUESTIONS.md` beschreibt in einem
abgeschlossenen Eintrag die *früher* kaputten Links `[[sia-2024]]` / `[[sia-180]]` / `[[din-1961-2012]]`
und dokumentiert dabei ihre Korrektur — das Werkzeug liest die Zitate als lebende Links. Ebenso sind
`[[slug]]`, `[[Ziel]]`, `[[…]]` Schema-Platzhalter. Das ist kein Fehler des Werkzeugs (sein README
warnt vor genau dieser Klasse), aber es senkt die Trennschärfe. **Kein Handlungsbedarf in diesem
Lauf, als Beobachtung vermerkt.**

Echte Restbefunde daraus, KB-intern und nicht Gegenstand dieses Laufs: `kunde-bopp` verweist in
`INDEX.md` und `profil-christoph-bopp.md` auf zwei Artikel, die es nicht gibt
(`[[auftrags-muster-bopp]]`, `[[zusammenarbeit-lessons-bopp]]`); `immobilienbewertung/wiki/wissensluecken.md`
hat gar kein Frontmatter. Beides gehört der jeweiligen KB.

---

## Offene Entscheide

**Für Raphael:**

1. **Belegkette zwischen zwei Rule-Dateien gerissen** (bestätigt, keine Aussenwirkung).
   `rules/anrede-kontakte.md` Z. 58–60 zitiert aus `rules/jans-dna-facetten.md` die Datumskette
   «Furrer 24.07. → 28.07., Stadelmann 22.07. trotz Telefonat → 03.08.». Der Commit `2824da0f2`
   (26.08., 06:04, twin-fidelity-review) hat diese Einzeldaten dort entfernt. Beides sind Rules —
   Claude ändert deren Wortlaut nicht selbst, und ein Rücksetzen in `facetten.md` würde gegen den
   twin-Loop arbeiten, der die Datei täglich pflegt. Entweder das Zitat generisch fassen oder die
   Daten in `facetten.md` wieder ergänzen.
2. **Stadelmann-Anrede** — liegt bereits als `wissen/twin/wiki/QUESTIONS.md` 260826 #1 mit
   ausformulierten Optionen vor; dieser Lauf hat den Melder dazu widerlegt und die Belegzahl auf
   **eine** korrigiert. Kein neuer Handlungsbedarf, nur die Zahl ist jetzt belastbar.

**Für die KB `normen` (kein Entscheid Raphaels):**

3. **Statusentscheid `synthese-sia-vkf-fachskills.md`** — der Artikel trägt `established` über einem
   heute auf `speculative` herabgestuften Quelldestillat. Der ⚠-Vorbehalt ist gesetzt; ob der Status
   sinkt oder der Artikel gegen die 84 Kern-/82 Nebenbefunde durchgeprüft wird, entscheidet `normen`.

**Verifikationsaufgabe im Hub (kein Entscheid):**

4. **Ebmatingen 2'400 CHF/m³ GV** — Abgleich mit
   `2412 Ebmatingen/09_Dokumente/Im Grossacher 2/Grobkostenberechnung/…Stand241125.xlsx`. Seit
   25.07.2026 offen, ab heute wiedervorlagefähig registriert.

---

## Geschriebene Dateien

| Datei | Diff |
|---|---|
| `wissen/normen/wiki/synthese-sia-vkf-fachskills.md` | +23 / −0 |
| `wissen/normen/destillate/sia-2024-korrigenda-c1-c2.md` | +14 / −0 |
| `wissen/energie/destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` | +13 / −0 |
| `wissen/auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md` | +11 / −0 |
| `skills/machbarkeit/wissensbasis/02_kennwerte-kosten.md` | +10 / −0 |
| `wissen/normen/wiki/QUESTIONS.md` | +9 / −0 |
| `wissen/normen/CHANGELOG.md` | +8 / −0 |
| `wissen/koordination/QUERBEZUEGE.md` | +161 / −0 (Abschnitte) + **1 gewollte Zeilenersetzung** (Matrix Z. 15, Spalte «Zuliefernde KB» um `skills/machbarkeit` ergänzt) |
| `wissen/koordination/CHANGELOG.md` + `outputs/` | dieser Bericht |

Keine Datei hat Zeilen verloren; die einzige Ersetzung ist oben ausgewiesen (Rule
`auto-verbesserungen` 260811).
