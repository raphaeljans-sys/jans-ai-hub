# Normen-Training Run 58 (MacBook Pro, 20.08.2026) — der Fassungs-Sweep, und 23 Destillate waren überholt

**Kurzfassung.**

> Run 57 hat gezeigt, dass fünf Läufe den Inhalt einer Norm Satz für Satz prüften, ohne je zu
> fragen, ob sie noch gilt. Dieser Lauf hat dieselbe Frage auf die **zweite grosse Normenfamilie
> dieser Station** angewandt — und dafür den seit Run 27 offenen Auftrag **N27-1** erfüllt: den
> **VKF-Publikationsindex** erstmals abgeglichen.
>
> **Ergebnis: von 35 VKF-Publikationen mit KB-Destillat beruhten 23 auf einer überholten
> Fassung**, ohne die geltende irgendwo zu führen — ganz überwiegend als `established`, also nach
> Rule `normen-referenz` Ziff. 1b «ohne Gegenlesen zitierfähig». Der KB fehlten die
> Fassungsstufen **2019, 2020, 2022, 2025 und 2026** vollständig.
>
> **Der schwerste Einzelbefund ist eine Teilrevision, die seit vier Monaten in Kraft ist:** Das
> IOTH hat am **06.03.2026** die Richtlinien 12-15 und 26-15 geändert, gültig ab **01.04.2026**.
> Sie ist destilliert. **F1-Feuerwerk ist neu in öffentlich zugänglichen Räumen verboten**, und
> die frühere Auskunft «Kategorie 1 ist ausgenommen» ist seither falsch. Ferner: **BRL 103-15
> «Cheminées» ist am 31.08.2025 zurückgezogen worden** — die KB führte sie als `established`.

## 1. Ausgangslage

Gate `lauf-gate.sh` rc=0, NAS gemountet, kein konkurrierender Lauf (`ps`). Zugriff auf
`PL - 02_Recht_Norm/02_Normen/` und `PL - 03 Brandschutz/` direkt gelesen — kein TCC-Fall,
M365-Fallback nicht nötig.

Das Inventar hat weiterhin **0 destillierbare offene Positionen**; die fünf verbliebenen
`[ ]`-Zeilen sind externe Bring-Schulden. Der Lauf ist deshalb nach PROGRAMM Ziff. 6 auf die
Vertiefungsstufe **(b) Retro-Verifikation** umgeschaltet.

**Die Wahl des Gegenstands ist die eigentliche Entscheidung dieses Laufs.** Naheliegend gewesen
wäre N57-1 (der unverifizierte Zuwachs auf `sia-416-1-2007`). Dagegen sprach, was Run 57 selbst
festgestellt hat: die Norm ist archiviert, die Nachfolgerin nicht im Haus, weitere Runden dort
sind nachrangig. Stattdessen wurde die **Methode** von Run 57 auf einen Teil angewandt, auf dem
sie noch nie gelaufen war — genau das verlangt die Methoden-Lehre. Der Verdacht ergab sich aus
einer Messung, nicht aus einer Vermutung: 31 VKF-Destillate standen auf `established` mit der
Fassung 01.01.2015, während Methodik-Pflicht 1 die geltenden Fassungen als 2017/2022 führt.

Stationssplit eingehalten: nur SIA/VKF; DIN, VSS und RAL nicht angefasst.

## 2. Methodik-Pflicht 10 zuerst — was die KB bereits wusste

Bevor irgendetwas als Befund verbucht wurde, ist geprüft worden, ob REGISTER, INDEX oder die
Destillate den Fassungsstand schon führen. **Sie taten es teilweise, und das hat drei
Scheinbefunde verhindert:**

- Das REGISTER führte für **13-15, 14-15, 16-15, 22-15** und das Merkblatt **2001-15** die
  jüngeren Fassungen bereits belegt (Runs 22-28).
- Fünf Destillate führen die geltende Fassung im **Fliesstext**, obwohl das Frontmatter alt
  aussieht (13-15, 14-15, 15-15, 22-15, 1001-15). Sie sind **nicht** als Befund gezählt.
- Das REGISTER benannte die Lücke sogar selbst: «⚠ Kein Abgleich des VKF-Publikationsindex»,
  zweimal, als Bring-Schuld N27-1.

**Die richtige Formulierung des Ergebnisses lautet deshalb nicht «die KB hatte es falsch»,
sondern: die KB wusste, dass sie es nicht wusste — und hat es zwei Wochen lang nicht
nachgeholt.** Der Auftrag war klein formuliert (eine Richtlinie), der Bestand aber gross.

## 3. Der Zugangsweg — und zwei Werkzeug-Fallen

| Schritt | Weg |
|---|---|
| Publikationsindex | Astro-JSON-Payload der Seite `bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015`, **83 deutschsprachige Einträge** |
| Dokument | `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-<NR>.pdf/content` |
| Fassungsdatum | **am Titelblatt abgelesen**, Änderungsliste S. 2 — nicht aus dem Dateinamen |

**Falle 1: Der REST-Index ist nicht frei.** `…/publikation/documents` ohne Dokumentnummer
antwortet mit HTTP 400 «Fehlender API-Key». Frei ist nur der Dokument-Content. Wer den Weg über
die API sucht, hält den Index für unerreichbar und gibt auf — der Index liegt in der HTML-Seite.
Das ist derselbe Fall wie die M365-CLI aus Rule `auto-verbesserungen` 260809: **ein vorhandener
Weg, den niemand findet, ist so gut wie keiner.**

**Falle 2, die gefährlichere: `vkgPubSamStatus` ist kein Gültigkeitsindikator.** Das Feld steht
bei **allen 83 Einträgen** auf «aktuell» — auch bei der am 31.08.2025 zurückgezogenen 103-15. Es
bedeutet «aktuell publiziert», nicht «in Kraft». Die Gültigkeitsaussage steht allein im
**Titelfeld** («Gültig ab …», «Gültig bis …», «zurückgezogen am …»). Ein späterer Lauf, der das
maschinell auswertet und auf das Statusfeld baut, hält eine zurückgezogene Richtlinie für
geltend. Beides ist in der Matrix und im REGISTER festgehalten.

## 4. Das Ergebnis in Zahlen

| Kennzahl | Wert |
|---|---|
| Publikationen im Index (deutsch) | 83 |
| davon mit KB-Destillat abgeglichen | 35 |
| Destillat und geltende Fassung stimmen überein | 7 |
| Frontmatter veraltet, Fliesstext führt die geltende Fassung (**kein Sachbefund**) | 5 |
| **Destillat führte die geltende Fassung nirgends** | **23** |
| davon zurückgezogene Publikation | 1 |

Vollständige Matrix mit Dokumentnummern, Fassungsdaten und MD5:
`training/n58-vkf-fassungsmatrix-260820.md`. Sie ist der Beleg und macht jeden künftigen Lauf
billig — dieselbe Rolle wie `l41-seiteninventur.md` für Lignum 4.1.

## 5. Die vier gewichtigsten Befunde

### Befund 1 — eine Teilrevision, seit vier Monaten in Kraft, der KB unbekannt

Das **IOTH hat am 06.03.2026** Änderungen an BRL 12-15 und 26-15 genehmigt, **in Kraft seit
01.04.2026**. Beide Richtlinien nennen sie auf S. 2 ausdrücklich; der Index führt beide doppelt,
als «(Gültig ab 01.04.2026)» und «(Gültig bis 31.03.2026)». Damit war ein **Wortlaut-Diff beider
Fassungen** möglich, und er ist gefahren.

**Materiell:**

| | bis 31.03.2026 | ab 01.04.2026 |
|---|---|---|
| 26-15 Ziff. 11.1.3 Abs. 1 | Abbrennen im Innern von Bauten und Anlagen **generell verboten**, ohne Kategorien | Kategorien **F2 bis F4** verboten |
| 26-15 Ziff. 11.1.3 Abs. 2 | Kategorie 1: nur Herstellung/Einfuhr bewilligungspflichtig, **übrige Vorschriften gelten nicht** | **F1 in öffentlich zugänglichen Räumen verboten**, im privaten Bereich **erlaubt** |
| 12-15 Ziff. 4.5 Abs. 1 | einheitliche Bewilligungspflicht, Kategorie 1 ausgenommen | **T1-T2 bewilligungspflichtig**, **F1-F4 nach 26-15 Ziff. 11.1.3** |
| 12-15 Ziff. 3.2 Abs. 10 | eigene Bewilligungsregel, Geltung «Gebäude» | reiner Verweis auf Ziff. 4.5, Geltung «Bauten und Anlagen» |

**Warum das mehr ist als ein Feuerwerksverbot.** Die alte Regelung war in sich widersprüchlich —
Abs. 1 verbot generell, Abs. 2 stellte die Kategorie 1 von den übrigen Vorschriften frei. Die
neue Fassung **differenziert nach dem Raum statt nach dem Gegenstand**: massgebend ist, ob der
Raum öffentlich zugänglich ist. Für Versammlungsstätten, Verkaufsgeschäfte und
Beherbergungsbetriebe heisst das: kein Innenfeuerwerk, unabhängig von der Kategorie. Und die
Kategorienbezeichnung wechselt durchgehend auf **F1-F4** (Feuerwerk) und **T1-T2**
(Bühnenpyrotechnik).

Destilliert in `destillate/vkf-teilrevision-2026-pyrotechnik.md`, Status `speculative` (der Diff
ist vom Hauptprozess selbst gelesen, aber nicht unabhängig widerlegt).

### Befund 2 — BRL 103-15 «Cheminées» ist zurückgezogen

Der Index führt sie als **«103-15 Cheminées (zurückgezogen am 31.08.2025)»**. Die KB führte das
Destillat als `established`. Das ist der SIA-416/1-Fall in Reinform: Inhalt geprüft, Status nie.

**Die Belegqualität ist ausdrücklich ausgewiesen, und sie ist schwächer als bei Befund 1:** Der
Rückzug steht **nur in der Portal-Annotation**; die ausgelieferte Datei trägt keinen
Rückzugsvermerk und weiterhin die Fassung 01.01.2017. Eine zweite unabhängige Bestätigung fehlt,
und **wohin die Cheminée-Anforderungen überführt wurden, ist nicht geprüft** — die BRL 24-15
«Wärmetechnische Anlagen» liegt nahe, aber Naheliegendes ist kein Beleg (N58-2).

### Befund 3 — die Grundlagenrichtlinie 10-15 ist zwei Stufen zurück

**BRL 10-15 «Begriffe und Definitionen» gilt in der Fassung 01.01.2019** (Änderungen IOTH
22.09.2016 und 20.09.2018), das Destillat beruht auf 01.01.2015. Das wiegt schwerer als eine
einzelne Fachrichtlinie: 10-15 ist das verbindliche Glossar, auf das sich Norm und alle übrigen
Richtlinien stützen. Eine geänderte Definition wirkt auf jede Auslegung — und ausgerechnet der
Begriff, den die neue Teilrevision tragend verwendet («öffentlich zugängliche Räume»), ist ein
Begriffsproblem.

Dasselbe gilt für **11-15 «Qualitätssicherung im Brandschutz»** (ebenfalls 01.01.2019), die der
Skill `brandschutz` im Modus B für die QSS-Stufe zieht.

### Befund 4 — «BSV 2015» bezeichnet das Werk, nicht den Fassungsstand seiner Teile

Das ist die **Wurzel** des ganzen Befunds und der Grund, warum er zwei Jahre unentdeckt blieb.
Das REGISTER führte seit Run 5: «Bestand = Brandschutzvorschriften 2015 (Norm 1-15 +
Richtlinien/Erläuterungen 2015, inkl. Änderungen 2016/2017)». Der Satz ist nicht falsch, aber er
verleitet zu dem Schluss, «2015» sei ein Fassungsstand. **Tatsächlich trägt nur die
Brandschutznorm selbst weiterhin 01.01.2015; die Richtlinien sind vielfach jünger** — 2017, 2019,
2020, 2022, 2025 und zuletzt 01.04.2026. Die Registerzeile ist entsprechend präzisiert.

Dieselbe Verwechslung steckt in der Dateibenennung: «12-15de» ist die **Dokumentnummer**, nicht
das Jahr. Wer «12-15» liest und «2015» denkt, hakt eine Richtlinie ab, die er nie gesehen hat.

## 6. Was getan wurde, um den Schaden zu begrenzen

Alle **23 betroffenen Destillate** tragen seit diesem Lauf:

- einen **Warnkasten unmittelbar nach der H1** — Bestandsfassung, geltende Fassung, MD5 und
  Abrufdatum, ausdrücklicher Hinweis, dass das Delta **nicht** destilliert ist;
- das Frontmatter-Feld **`gueltigkeit`**;
- den Status **`superseded`** statt `established`.

**Warum `superseded` und nicht `speculative`:** Run 57 hat notiert, dem Status-Vokabular fehle
eine Stufe für «Inhalt solide, Ausgabe nicht mehr in Kraft» (N55-4, dritter Beleg).
`speculative` liest sich als Zweifel am Inhalt, den es hier nicht gibt — der Inhalt beschreibt
die Fassung 2015 zutreffend. `superseded` **existiert bereits im Bestand** (die
Solaranlagen-Destillate nutzen es seit Run 26) und sagt genau das Richtige. Es ist damit keine
Vokabular-Neuerung, sondern die Anwendung einer vorhandenen Stufe; der Vorschlag N55-4 bleibt
davon unberührt.

**Diff gemessen (Rule 260811):** 23 Dateien, **+301/−46**, nativ per `ssh` auf der Synology, nie
`git` über SMB. Die 46 Löschungen sind exakt 23 × 2 — je Datei die ersetzten Zeilen `status:` und
`last_updated:`. **Kein fremder Inhalt entfernt.** Sicherungskopie aller 47 VKF-Destillate im
Scratchpad vor dem ersten Schreibvorgang. Jede Ersetzung ankerbasiert mit Eindeutigkeitsprüfung,
kein globales Suchen-und-Ersetzen.

## 7. Der Methodenbefund

Run 57 endete mit dem Satz: «Fünf Läufe haben den Inhalt einer Norm Satz für Satz verifiziert,
ohne je zu prüfen, ob die Norm noch gilt.» Dieser Lauf fügt die Verallgemeinerung hinzu:

> **Der Fassungsstand ist keine Eigenschaft des Destillats, sondern des Bestands — und ein
> Bestand, der nur die alte Fassung enthält, kann seine eigene Veralterung nicht anzeigen.**

Methodik-Pflicht 3 verlangt die Suche nach einer jüngeren Fassung **im Bestand**. Sie ist hier
formal befolgt worden und musste versagen: der Hausbestand `PL - 03 Brandschutz` ist ganz
überwiegend die Fassung 2015. Bei SIA 416/1 versagte dieselbe Pflicht, weil die Nachfolgenorm
eine **andere Nummer** trug; hier versagt sie, weil die jüngere Fassung **dieselbe Nummer** trägt
und schlicht nicht im Haus liegt. Zwei verschiedene Wege, dieselbe Blindstelle.

**Das stützt den in Run 57 vorgelegten Vorschlag Methodik-Pflicht 3b** (Gültigkeitsstand an einer
normexternen Primärquelle feststellen, vor der inhaltlichen Verifikation) mit einem zweiten,
unabhängigen und deutlich grösseren Beleg: dort ein Destillat, hier 23. **Er bleibt vorgelegt,
nicht selbst eingetragen** — das PROGRAMM ändert Raphael.

**Und ein Unterschied zu SIA, der die Priorität verschiebt:** Die VKF-Vorschriften sind **frei
zugänglich**. Bei SIA 416/1 endete der Befund in einer kostenpflichtigen Bring-Schuld, die
Claude nicht erfüllen kann. Hier ist jedes Delta ohne Kauf destillierbar — es ist reine
Arbeitszeit. Das macht N58-1 zum lohnendsten offenen Posten dieser KB.

## 8. Nachgeführt

- **23 Destillate** — Warnkasten, Feld `gueltigkeit`, Status `superseded` (Liste in der Matrix)
- `destillate/vkf-teilrevision-2026-pyrotechnik.md` — **neu**, Wortlaut-Diff der Teilrevision
- `training/n58-vkf-fassungsmatrix-260820.md` — **neu**, Matrix + Zugangsweg + Werkzeug-Fallen
- `wiki/REGISTER.md` — Abschnitt D um die Fassungsmatrix erweitert; Zeile VKF 1-15 präzisiert
- `destillate/INDEX.md` — Warnblock, neues Destillat eingetragen
- `training/norm-inventar.md` — Warnblock im VKF-Abschnitt: ein `[x]` belegt Destillierarbeit,
  keine Gültigkeit
- `wiki/QUESTIONS.md` — **N27-1 geschlossen**, N58-1 bis N58-4 neu
- `CHANGELOG.md` — Eintrag

## 9. Offen — Übergabe

1. **N58-1 (Vorrang): die Fassungs-Deltas der 23 Destillate destillieren.** Reihenfolge nach
   Wirkung: 10-15 (2019, Grundlagenglossar) → 40-15 (2025) → 108-15 (2020) → 11-15 (2019) →
   die 2017er-Sammelposten. **Ohne Beschaffungskosten**, alle Quellen frei zugänglich.
2. **N58-2:** Rückzug der 103-15 zweitbelegen und die Nachfolgeregelung ermitteln.
3. **N58-3:** BRL 27-15 — Titelblatt (01.01.2015) und Änderungsliste (ABSV 22.03.2017)
   widersprechen sich; Status womöglich zu hoch.
4. **N58-4:** 48 der 83 Indexeinträge sind ungeprüft; ebenso die Anhänge der neu gefassten
   Richtlinien und die f/i-Fassungen.
5. **Vorschlag Methodik-Pflicht 3b** (aus Run 57) — durch diesen Lauf zweitbelegt. Raphael zur
   Freigabe, nicht selbst eingetragen.
6. **N57-2 unverändert:** SIA 380:2015 beschaffen (Bring-Schuld, kostenpflichtig), danach die
   neun Fremd-KB-Fundstellen sachbezogen umhängen.
7. **Übrige Beschaffungsposten unverändert:** SIA 266/2:2012, SIA 242:2012, SIA 274:2010,
   SIA 181:2020, SIA 118/265:2018, sechs ABB; N53-3, N48-5, N48-7; N55-3 und N55-4.
8. **Cross-KB, nur gemeldet, nicht angefasst:** Die KB `energie` führt ein eigenes Destillat
   `vkf-richtlinie-22-15-blitzschutzsysteme.md`. Ob dort weitere VKF-Destillate auf überholten
   Fassungen stehen, ist **nicht geprüft** — das ist eine fremde KB, und der Fassungs-Sweep lief
   nur über `normen`. Die Matrix ist so angelegt, dass ein Cross-KB-Lauf sie direkt verwenden
   kann.

## 10. Was ungeprüft blieb

- **Die Fassungs-Deltas selbst** — festgestellt ist, *dass* eine jüngere Fassung gilt, nicht
  *was* sie ändert. Ausnahme: die Teilrevision 2026.
- **48 der 83 Indexeinträge** (IOTH-Beschlüsse, Verzeichnisse, Formulare, Checklisten,
  Musterweisungen, Reglemente) — der Sweep lief nur über Publikationen mit KB-Destillat.
- **Die Anhänge** der Richtlinien mit neuer Fassung; für die Teilrevision 2026 nennt die
  Änderungsliste nur Haupttext-Ziffern, geprüft ist das nicht.
- **Die französischen und italienischen Fassungen** — nur `vkgPubDokSprache = DE` abgeglichen.
- **Die SIA-Familie** — dieser Lauf hat den Sweep nur für VKF gefahren. Ob der SIA-Bestand
  dieselbe Klasse von Befunden trägt, ist offen; das REGISTER beziffert die Blindzone dort seit
  Run 37 mit **102 Zeilen ohne Datei im Haus (58 % der aktiven)**. Der SIA-Shop ist
  kostenpflichtig für Volltexte, **die Produktdatenblätter mit «gültig ab / gültig bis» sind es
  aber nicht** — ein SIA-Sweep nach diesem Muster wäre der nächste grosse Schritt.
- **Nicht angefasst:** DIN, VSS, RAL — Stationssplit, die gehören dem Mac Mini.

## Belege

Publikationsindex am 20.08.2026 von
`bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` abgerufen, 83 deutschsprachige
Einträge maschinell extrahiert. 35 Dokumente über den `services.vkg.ch`-Endpunkt geladen, je
**Titelblatt und Änderungsliste mit `pdftotext -layout` gelesen und das Fassungsdatum am
gedruckten Titelblatt abgelesen** — nicht aus Dateinamen oder Portal-Titel abgeleitet. MD5 je
Datei in der Matrix. Für die Teilrevision 2026 wurden zusätzlich **beide** Fassungen von 12-15
und 26-15 geladen und die vier geänderten Absätze seitengenau gegenübergestellt (12-15 S. 5 und
S. 9, 26-15 S. 15); die Änderungslisten auf S. 2 nennen den IOTH-Beschluss vom 6. März 2026
ausdrücklich. Die Inkraftsetzung ist am Portal zweitbelegt (Meldung «Änderungen an den BSV
2015 — Feuerwerksverbot in öffentlich zugänglichen Räumen», 20.03.2026).

Vor jedem Befund Gegenprüfung gegen das **ganze** Destillat (Methodik-Pflicht 7): fünf
Destillate führten die geltende Fassung im Fliesstext und sind deshalb **nicht** als Sachbefund
gezählt. Vor dem ersten Schreibvorgang Gegenprüfung gegen REGISTER, INDEX und QUESTIONS
(Methodik-Pflicht 10): fünf weitere Publikationen waren dort bereits korrekt geführt.

**Ohne Subagenten gefahren** (Rule `modellwahl-routine` Ziff. 3): die Arbeit bestand aus wenigen
Schleifenbefehlen und einer Urteilsstufe, die ohnehin im Hauptkontext bleibt.
