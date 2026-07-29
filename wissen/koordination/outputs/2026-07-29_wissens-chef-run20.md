---
titel: Wissens-Chef Run 20 — Cross-KB-Koordinationslauf
datum: 2026-07-29
station: MacBook Pro
verfahren: Workflow-Fan-out, 2 Workflows, 37 Agenten, ~5.37 Mio. Subagent-Token, 638 Tool-Calls, 24 Min.
gepruefte_felder: [regenwasser, seewasser/eisspeicher, graue-energie, claude-code (Erst-Pruefung), projekt-lessons]
ergebnis: 25 Befunde gemeldet, 18 bestaetigt, 7 widerlegt — 79 Korrekturen in 22 Dateien in 9 KBs
---

# Wissens-Chef Run 20

## Das Wichtigste in drei Sätzen

Der Hub hat am 28.07. den amtlichen WsG-/WsV-Volltext ins Haus geholt, und die drei Wasser-Destillate,
die einen Tag später entstanden, benutzen ihn nicht — eines davon legt neben einer bereits
beantworteten Frage eine neue offene Frage an. Zwei neue Destillate erklärten eine Rechtsgrundlage für
«nicht gefunden», die im Haus liegt, und einer dieser falschen Negativbefunde erreichte über die
Bauherren-FAQ den Bauherrn. Der wichtigste methodische Ertrag liegt aber nicht bei den Befunden,
sondern eine Ebene darüber: **in 11 der 18 bestätigten Fälle war die vorgeschlagene Korrektur selbst
falsch** — der Befund stimmte, die Auflösung hätte einen neuen Fehler eingebaut.

---

## 1. Was geprüft wurde

Fünf thematische Felder, ausgewählt nach dem Zuwachs seit Run 19 (28.07.):

| Feld | Anlass | Ergebnis |
|---|---|---|
| Regenwassernutzung/Brauchwasser | energie Run 119, neues Destillat + FAQ F186 | 2 bestätigt, 3 widerlegt |
| Seewasser-Aquathermie + Eisspeicher | energie Run 119, «neues Themenfeld» + FAQ F187/F188 | 5 bestätigt, 0 widerlegt |
| Graue Energie Holzbau vs. Massivbau | energie Run 119, neues Destillat + FAQ F189 | 5 bestätigt, 0 widerlegt |
| **claude-code ↔ spec ↔ rules** | KB am 29.07. **neu angelegt**, nie cross-geprüft | 3 bestätigt, 2 widerlegt |
| projekt-lessons ↔ auflagebereinigung ↔ baurecht | vierter Lesson-Artikel (KISPI 1171/26) | 3 bestätigt, 2 widerlegt |

Jeder Befund lief durch einen unabhängigen, adversarial angesetzten Verifikations-Agenten mit dem
ausdrücklichen Auftrag, ihn zu widerlegen **und die vorgeschlagene Auflösung mitzuprüfen**.

---

## 2. Der tragende Strukturbefund: «Ein Zugang heilt keinen Bestand»

Das ist der Befund, der über den Einzelfall hinausreicht.

`baurecht` hat mit Buch-Run 69 am **28.07.** den WsG-/WsV-Volltext beschafft. Die KB `energie` hat am
**29.07.** mit Run 119 drei Destillate im Wasserrecht angelegt. Alle drei stützen ihre Rechtsgrundlage
auf Sekundärquellen (SVGW-Merkblatt von 2001, AWEL-Planungshilfe) oder erklären sie für «nicht
gefunden». Der schärfste Fall:

> Das Seewasser-Destillat lässt die Konzessions-Rechtsgrundlage **zweimal wortgleich** als offenen
> Punkt stehen und kennt die Konzessionsdauer nicht, die **Wissens-Chef Run 19 einen Tag vorher** für
> das Schwester-Destillat geklärt hatte. Der Backlink zum Schwester-Destillat: 0 Treffer.

Die Ursache ist mechanisch, nicht nachlässig. Das Trainings-Curriculum führt die Frage weiter als
offen, also recherchiert der Loop extern weiter — der Zugang eines Volltextes aktualisiert die
Destillate nicht, die auf seine Lücke gebaut sind, und auch nicht die, die am Folgetag entstehen.

**Regel daraus:** Nach dem Zugang eines Erlass-Volltextes gehört ein **Rückwärts-Sweep** über die
offenen Punkte der abhängigen KBs, nicht nur ein Vorwärts-Destillat. Dritter Fundort dieser
Fehlerklasse in drei Läufen (Run 18 EG GSchG, Run 19 § 19 WsG, Run 20 hier) — damit ist sie kein
Einzelfall mehr, sondern ein Betriebsmerkmal des Lern-Modells.

---

## 3. Die Lehre über die Verifikation selbst

In **11 der 18 bestätigten Fälle** hat der Verifikations-Agent die vorgeschlagene Korrektur korrigiert
oder verworfen. Drei Beispiele, weil sie unterschiedliche Fehlertypen zeigen:

**(a) Eine Korrektur, die dieselbe ungedeckte Aussage in die andere Richtung gesetzt hätte.** SIA 2032
sollte im Normen-Register von «2010 gültig» auf «2020✓ · 2010✗» umgeschrieben werden. Der Verifikator
hat das für unzulässig belegt: das Register hat seit Run 37 eine eigene Beweisschwelle, es existiert
kein hauseigenes Exemplar (also kein Titelblatt, anders als beim Präzedenzfall SIA 2020), und **ein
Rückzugsdatum für 2010 ist im Hub nirgends belegt**. Gesetzt wurde nur ein Fassungsflag in der
Bemerkungsspalte.

**(b) Eine Korrektur, die zwei verschiedene Messgrössen vermischt hätte.** Die Diät-Ersparnis-Zeile in
`claude-code` (105'573 → 87'398 B, 17 %) sollte «relativiert» werden, weil der heutige Stand höher
liegt. Falsch: die Zeile misst die **Wirkung des Eingriffs** an einem konkreten Commit; das
nachträgliche Wiederanwachsen ist eine andere Grösse und gehört in eine eigene Zeile. Beides steht
jetzt getrennt.

**(c) Eine Korrektur, die die tragende Aussage eines Artikels gelöscht hätte.** Die Lesson-Zeile «man
erfährt es erst reaktiv» sollte entschärft werden, weil das Amt im belegten Fall doch mitgeteilt hat.
Der Verifikator hat belegt: die Mitteilung kam **nur, weil bei der inzwischen falschen Stelle
nachgefragt wurde** — exakt der beschriebene Mechanismus. Korrigiert wurde nur das Datum und ein
Halbsatz.

**Konsequenz für künftige Läufe:** Der Verifikations-Schritt darf nicht nur den Befund prüfen, er muss
die vorgeschlagene Auflösung mitprüfen. Das war in diesem Lauf erstmals ausdrücklich im Auftrag und
hat sich in 11 Fällen ausgezahlt. Ohne diesen Zusatz hätte der Lauf mit hoher Wahrscheinlichkeit
mehrere neue Fehler in den Bestand geschrieben und sie als Korrekturen protokolliert.

---

## 4. Materielle Korrekturen im Einzelnen

### 4.1 Zwei falsche Negativbefunde, einer bis zum Bauherrn

**Eisspeicher.** Das Destillat erklärte zweimal, es gebe keine Schweizer Primärquelle zur
Bewilligungspflicht. Im Haus liegen: **§ 92 Abs. 1 WsV** («Einer Bewilligung bedürfen: a. der Entzug
von Erdwärme, b. der Eintrag von Wärme in das Erdreich» — technologieneutral, ohne Bohrungsbezug) und
**§ 44 Abs. 1 lit. a Ziff. 3 WsG**. Der Fehler ging über **FAQ F187** hinaus. Korrigiert; die Anwendung
auf den Eisspeicher ist ausdrücklich als **KB-eigene Subsumtion** markiert, nicht als amtliche
Bestätigung. Offen bleibt allein die AWEL-Vollzugspraxis in den Schutzzonen S1/S2.

**Seewasser.** Die Konzessions-Kette ist jetzt paragraphengenau belegt: Gewässerhoheit § 4 WsG →
Konzession **§ 68 Abs. 1 lit. c WsG** → Sondernutzungs-Tatbestand «Nutzung von Gewässern zur
Wärmeentnahme und zum Wärmeeintrag» **§ 119 Abs. 2 lit. c WsV** → Konzessionserfordernis **§ 120
Abs. 1 WsV**. Dazu die Konzessionsdauer **15–30 Jahre** nach **§ 121 Abs. 1 lit. b WsV** — der
Litera-Wortlaut nennt Grund- **und** Oberflächenwasser, gilt für Seewasser also unmittelbar. Streng auf
die ZH-Position begrenzt: für SZ, ZG und den Vierwaldstättersee ist keine Dauer belegt und wurde nicht
gefüllt. Zusätzlich belegt: Seewasser löst **mehrere** Sondernutzungen aus (Seefassung und Seeleitung
sind eine eigene nach § 119 Abs. 2 lit. e).

Praxisfolge für die Wirtschaftlichkeit: Amortisationsdeckel 30 Jahre, Konzessionserneuerung als Risiko
— bei Seewasser wegen der hohen Fassungs- und Leitungsinvestition gewichtiger als bei der
Grundwasser-Wärmepumpe. Relevant für `healthcare-wirtschaftlichkeit`, `machbarkeit` Typ B und die
DCF-Rechnung in `immobilienbewertung`.

### 4.2 Eine Kernaussage, die durch die eigene Datei widerlegt war

Das neue graue-Energie-Destillat behauptet im Kopf «Holzbau **durchgehend 20–40 %** tiefer». Widerlegt
durch dieselbe Datei: die eigene Tabelle nennt **−13 %** (espazium-Fallstudie), der eigene
Bauherren-Transfer und FAQ F189 nennen **20–25 %**. Die 40-%-Obergrenze stammte allein aus einer
Lignum-Journal-Zeile, die die Datei selbst als «keine eigene Studienquelle, als Kontext, nicht als
harte Primärzahl» entwertet — und deren Rechnung zusätzlich arithmetisch falsch war (7,5 gegen
10,5–12,2 ergibt −29 bis −39 %, angegeben waren ~20–37 %).

Neu: **Median rund 23 %, als Planungsgrösse 20–25 %.** «Durchgehend» qualifiziert nur noch die
**Richtung** in der Wüest-Stichprobe (jedes der 35 Objektpaare unter der Winkelhalbierenden), nie eine
Prozent-Bandbreite. Nachgezogen bis in `destillate/INDEX.md` und das **Trainings-Curriculum** — ohne
diesen Nachtrag liest ein Folgelauf die widerlegte Zahl als eigenen Vorbefund wieder ein.

### 4.3 Eine subtile Norm-Fehlzuschreibung an der Rechenbasis

«Messgrössen (SIA 2032): kg CO₂-eq/m² **EBF**» ist falsch. Die Bezugsfläche EBF stammt aus der
KBOB-/Minergie-/SIA-2040-Systematik; **SIA 2032 bezieht auf die Geschossfläche GF** (SIA 416), belegt
im Vorwort der Ausgabe 2010, das die EBF ausdrücklich kontrastiert. Der Verifikator hat die
Folgenabschätzung entschärft: **keine einzige Vergleichszahl muss neu gerechnet werden**, weil die
Quellen die Minergie-/SIA-2040-Konvention korrekt anwenden. Falsch war allein die Zuschreibung.

### 4.4 Der KGSchV-Fall, dritter und vierter Fundort

Die **KGSchV (LS 711.11) ist per 01.01.2022 aufgehoben** (zhlex-Erlassseite, Nachtrag 099; von
`baurecht` in Buch-Run 69 belegt). Sie stand noch an zwei Stellen ungeflaggt:

- **OEREB-Thema 130** in `planungsgrundlagen` — die Rechtsgrundlagen-Spalte, die aus dieser KB in
  Behördenschreiben ans AWEL wandert. Geflaggt; **die Nachfolge nicht geraten**, sie ist im Hub nicht
  belegt.
- Das energie-Destillat `erdwaermesonden-bewilligung-zh-sz` — dort im Status «established» und
  ausdrücklich als «primärquellen-verifiziert», an vier Stellen plus INDEX und FAQ F71. Auf § 92 WsV
  umgestellt.

**Die Gebühren-Nachfolge, die der Erst-Befund für offen erklärte, hat der Verifikations-Agent am
Volltext gefunden:** § 209 WsV (Übergangs- und Schlussbestimmungen, Randtitel «Gebühren») verweist auf
dieselbe Gebührenverordnung wie der alte § 69 KGSchV. Der Verweisungsmechanismus lebt unverändert
weiter, nur über eine andere Trägernorm — die materielle Aussage des Destillats (Aufwandgebühr, Deckel
CHF 25'000) bleibt gültig, der Status `established` trägt zu Recht.

**Lehre zur Nummern-Nähe.** Der Run-18-Sweep hatte die Zeile bereits angefasst und den Nachbarn
übersehen: gesucht wurde `LS 711.1`, und `LS 711.11` enthält das als **Präfix**. Wer eine Zeile abhakt,
sobald die gesuchte Nummer geflaggt ist, liest über den längeren Nachbarn mit derselben Wurzel hinweg.
Bei LS-Nummern ist die Ziffernfolge ohne Wortgrenze nicht eindeutig (**711.1 ≠ 711.11**), so wie
724.11 in zwei Zeitperioden zwei verschiedene Erlasse trug. **Erlass-Sweeps ab jetzt auf Wortgrenze
prüfen und jede Nummer der Zeile einzeln abarbeiten.**

### 4.5 Regenwasser: die kantonale Grundlage fehlte

Die Zulässigkeit der Brauchwassernutzung ruhte allein auf einem SVGW-Merkblatt von 2001. **§ 97 Abs. 3
WsG** sagt es amtlich: «Die Verwendung von Regenwasser als Brauchwasser in getrennten Systemen ist
zulässig und gebührenfrei» (LS 724.1, Nachtrag 133, in Kraft seit 01.06.2026). Mit
Geltungsbereichs-Klammer eingesetzt, weil das Destillat CH-weit angelegt ist und § 97 nur für ZH gilt.
Zwei materielle Folgen: die Gebührenfreiheit gilt **nur für das genutzte Regenwasservolumen** —
Bezugspflicht § 97 Abs. 1 WsG, Anschlusspflicht § 178 WsV und Abwassergebühren bleiben unberührt und
dürfen in der Amortisationsrechnung nicht wegfallen.

---

## 5. Erst-Prüfung der neuen KB `claude-code`

Die KB wurde am 29.07. angelegt und war nie cross-geprüft. Die Abgrenzung gegen die Rules ist in ihrer
`CLAUDE.md` sauber formuliert («diese KB begründet die Konfiguration, ersetzt sie nicht») — dort war
**kein Befund**, und zwei gemeldete Doppelspur-Vorwürfe wurden widerlegt. Zwei Befunde blieben:

**Das Grundkontext-Budget war am eigenen Messtag zu tief.** Geführt waren 19 Importe / 87'398 B.
Eigene Nachmessung des Chefs: **20 Importe / 96'946 B / ~24'236 Token**. Der Messweg steht jetzt im
Artikel (`stat -f%z` über CLAUDE.md **plus** die Dateien aus `grep '^@/Volumes' CLAUDE.md` — CLAUDE.md
selbst zählt mit), samt Zeitstempel, weil der Wert nachweislich in Minuten veraltet.

**Null Querverweise zu `spec`,** obwohl `kontext-architektur` und `environment-jans-hub` dieselbe Sache
aus zwei Winkeln beschreiben. Beidseitig verlinkt, Führung geklärt: `claude-code` führt den gemessenen
Ist-Zustand, `spec` das formale Layer-3-Modell.

---

## 6. Offene Entscheide für Raphael

### 6.1 Der Hub widerlegt seine eigene, tagesaktuelle Regel (Entscheid nötig)

Die Kontext-Diät-Regel vom 29.07. (`rules/auto-verbesserungen.md`, Eintrag 260719-Nachtrag) sagt:
automatisch importiert gehört nur, was in nahezu **jeder** Session gilt; Loops, Infrastruktur, eine
einzelne KB oder ein einzelner Skill gehören in eine **nicht importierte** Datei. Und: «Belege,
Messwerte und Vorfallschroniken sind nie Grundkontext.»

**Am selben Tag** wurde `rules/rollen-taxonomie.md` in den @-Import aufgenommen
([CLAUDE.md:300](CLAUDE.md:300), 3'559 B). Ihr Inhalt ist genau die ausgeschlossene Klasse: die
90-%-Rechenzeit-Messung, «10'501 Läufe», «10'017 Fehlstarts», «17 Hänger», drei Loop-Scripts im
Abschnitt «Instrumente», die datierten Lehren vom 25.07. und 28.07.

Ich habe **nicht selbst eingegriffen** — Rollen-Taxonomie Regel 4 sagt, Quoten werden gemessen und
berichtet, nie automatisch durchgesetzt, und die Lehre vom 25.07. verbietet eigenmächtiges Drosseln.
Drei Optionen, die dritte ist meine Empfehlung:

1. `rollen-taxonomie.md` aus dem @-Import nehmen und als nicht importierte Rollen-Datei führen — so
   ist es für `betrieb-chronik.md` schon gelöst («Wer daran arbeitet, liest zuerst die Chronik»).
2. Die Entscheidungsregel um eine belegte Ausnahme ergänzen, warum Baustein-Governance in jeder
   Session gilt.
3. **Empfehlung:** Rule importiert **lassen**, aber auf die Kurzregel eindampfen und alle Messwerte
   und Vorfall-Lehren in das schon vorhandene `docs/konzepte/260729-Rollen-Taxonomie/` verlagern, mit
   Verweis aus der Rule. Das verlangt der dritte Bullet der Diät-Regel wörtlich, heilt den absoluten
   Teil der Verletzung, erfindet keine Ausnahmeklausel — und lässt die eigentliche Governance-Frage
   («gilt Baustein-Governance in jeder Session?») separat entscheidbar. Der Betriebsteil (Regel 3
   Loops/Takt, Regel 5 Schutzmechanik) gehört sachlich in `rules/betrieb-chronik.md`.

### 6.2 Überholte Sätze stehen lassen oder entfernen? (kleine Freigabe)

Kein Schreib-Agent durfte löschen. Wo eine Korrektur das Entfernen eines überholten Satzes verlangt
hätte, steht der Altsatz jetzt mit einem datierten Korrektur- oder Erledigt-Kasten daneben (etablierter
KB-Stil). Das ist beweissicher, macht die Destillate aber länger. Betroffen sind vor allem die zwei
«offenen Punkte» im Seewasser-Destillat und der falsche Negativbefund im Eisspeicher-Destillat. Sollen
die überholten Sätze entfernt werden, genügt Deine Freigabe.

### 6.3 Titelschärfung eines Lesson-Artikels (kleine Freigabe)

Titel und H1 von `kispi-behoerden-zustaendigkeitswechsel-1171-26` tragen weiter «unangekündigt». Für
die Ursachenebene ist das korrekt (keine **proaktive** Mitteilung), für die AfB verkürzt, weil reaktiv
doch eine Amtsmitteilung erfolgte. Eine Titeländerung wäre eine Umbenennung und damit
rückfragepflichtig; die Präzisierung steht vorerst im Korrekturkasten.

---

## 7. An die führenden KBs übergeben (Bring-Schulden, nicht Chef-Sache)

- **P1 `baurecht`:** §§ 95–100 WsG und § 178 WsV sind im ganzen Hub **unverarbeitet** (grep nach
  «Bezugspflicht», «Anschlusspflicht Wasser», «§ 178 WsV» über `wiki/` und `buecher/` = null Treffer),
  obwohl der Volltext seit 28.07. im Haus liegt. Solange das so bleibt, führt `energie` die
  Brauchwasser-Zulässigkeit über einen Korrekturkasten statt über ein Destillat.
- **`normen`:** SIA 2032:2020 hat kein Destillat, obwohl vier energie-Destillate und die
  BAUHERREN-FAQ darauf abstützen (`[[sia-2032]]` in `destillate/sia-2040-2017.md:9` ist ein dangling
  link) · SIA 390/1 ist überhaupt nicht erfasst · SIA-500-Korrigenda-Nachzug aus Run 19 weiter offen.
- **`grobkosten`:** die Kostenhälfte der Wüest-Partner/Lignum-Studie ist nie angekommen; der einzige
  Holz-Kostenansatz des Hubs (`kennwerte.md:200`, «+5–15 %») ist unbelegt und trennt Bauweise nicht
  von Ausbaustandard. **Wichtig:** die «35 Objektpaare gegen digitalen Zwilling» gelten nur für die
  ökologische Hälfte — der Kostenteil hat eine andere Stichprobe (17 Holzbauten gegen 50
  Referenzobjekte). Als zu klärende Vorbedingung eingetragen, nicht als Tatsache.
- **`planungsgrundlagen`:** K61 KGSchV-Nachfolge · K62 Regenwasser-Nutzungsseite fehlt ganz.
- **`spec`:** F-ENV1, die Zählstände in `environment-jans-hub` haben kein Nachführungs-Verfahren.
- **`baurecht`, unverändert offen aus Run 19:** § 260 Abs. 3 PBG ohne Haupt-/Anhang-Vorbehalt im
  Leit-Artikel `abstaende-und-hoehen` (heute nachgeprüft, weiterhin so) · drei grammatisch zerstörte
  Sätze im Näherbaurechts-Destillat (braucht einen Buch-Run).
- **Vorschlag an den Synergie-Orchestrator:** vierter Fundort des Musters «Rule `normen-referenz`
  greift beim **Schreiben** nicht, sondern wird erst im Cross-KB-Lauf durchgesetzt». Ein Prüfschritt
  «zitiert dieses Destillat eine Norm? dann normen-Destillat verlinken» gehört in
  `energie/training/PROGRAMM.md`.

---

## 8. Der ehrliche Teil

- **7 von 25 Befunden wurden widerlegt** und nicht umgesetzt: eine behauptete EN-1717-Fehleinordnung,
  ein Legionellen-Widerspruch, eine fehlende Verlinkung ins Lebensmittelrecht, zwei
  Doppelspur-Vorwürfe gegen `claude-code` (Hub-Inventar-Zahlen, Herkunft des Wissens-Layers), ein
  UGZ-Zeitstempel-Widerspruch und eine Doppelspur-Behauptung gegen `projekt-lessons`.
- **Ein Befund wurde in seiner Formulierung zu absolut gemeldet** und ist im Register präzisiert: der
  Satz «hub-weiter grep Brauchwasser ergibt keinen Treffer» stimmt so nicht; zutreffend ist, dass die
  **Norm** § 97 Abs. 3 WsG in keinem Wiki, Destillat oder FAQ angekommen ist.
- **Die disjunkte Dateiaufteilung der Schreib-Agenten hat einen Preis gehabt:** alles, was über eine
  Gruppengrenze lief (INDEX-Zeilen, Curriculum-Nachträge, Bring-Schulden in fremden KBs, Konsistenz im
  zweiten Lesson-Artikel), blieb zunächst liegen und wurde vom Chef sequenziell nachgeholt. Die
  Aufteilung war nötig, um Schreibkonflikte zu vermeiden, aber sie verlagert Arbeit statt sie zu
  sparen. Für künftige Läufe: die Gruppen nach **Befund** schneiden und Dateikonflikte in Kauf nehmen,
  oder die Übergaben von Anfang an beim Chef bündeln.
- **Zwei parallele Agenten haben sich kurz widersprochen:** einer setzte im Destillate-INDEX ein
  «needs-review bis zur Umstellung der KGSchV-Zitate», während ein anderer die Umstellung im selben
  Lauf vollzog. Der Chef hat den Flag aufgelöst. Das ist die erwartbare Kehrseite paralleler
  Schreibarbeit an einem zusammenhängenden Sachverhalt.
- **Nicht geprüft:** das Rotationspaar `kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung`
  steht weiter als einziges nie geprüftes Paar in der Liste. Die vier neuen energie-Destillate aus
  Run 119 (Rabtherm-JAZ, SWKI VA106, Freienbach, das SWKI-Zugangsprotokoll) waren nicht Gegenstand
  dieses Laufs.

---

## 9. Bilanz

| Kennzahl | Wert |
|---|---|
| Agenten | 37 (5 Leser, 20 Verifikatoren, 6 Schreiber, 6 Nachläufer) |
| Subagent-Token | ~5.37 Mio. |
| Tool-Calls | 638 |
| Laufzeit | 24 Min. (2 Workflows) |
| Befunde gemeldet / bestätigt / widerlegt | 25 / 18 / 7 |
| Auflösungen, die der Verifikator korrigierte | **11 von 18** |
| Korrekturen gesetzt | 79 in 22 Dateien |
| Betroffene KBs | 9 (energie, normen, grobkosten, planungsgrundlagen, baurecht, claude-code, spec, projekt-lessons, auflagebereinigung) |
| Neue Führungszeilen in der Matrix | 4 |
| Offene Entscheide für Raphael | 3 (einer davon substanziell) |
