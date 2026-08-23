# Trainingsprogramm — TAEGLICHER Lern-Loop der KB Energie

Strategischer Loop: macht JANS energetisch fuehrend. Jeden Tag wird der Ordner **PL - 04 Energie**
weiter erschlossen — PDFs werden in lesbare Destillate ueberfuehrt und zu belegten
**Bauherren-Antworten** verdichtet. Scheduled Task `energie-training` (taeglich).

## Takt & Umfang (verbindlich)
- **Frequenz:** **taeglich** (jeden Morgen). Manuell: Skill `planungsgrundlagen` → Energie → Training.
- **Umfang pro Lauf — zwei feste Bloecke:**
  1. **TRANSFER (Pflicht):** **3–5 PDFs** aus `pdf-inventar.md` (Prioritaet 1 zuerst) in
     `destillate/` ueberfuehren — schnell lesbare .md mit Quelle + Datenstand im Frontmatter.
  2. **VERDICHTUNG (Pflicht):** aus den neuen Destillaten **mindestens 1 BAUHERREN-FAQ-Antwort**
     neu schreiben oder schaerfen, und den passenden `wiki/`-Themenartikel wachsen lassen.
- **Web nur** fuer Aktualisierungen (Grenzwerte, MuKEn-ZH-Stand, Foerderung) mit Datenstand.

## Ablauf eines Laufs (immer gleich)
1. **Stand lesen:** `training/pdf-inventar.md` (was offen, Prioritaet 1 zuerst),
   `training/curriculum.md`, `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **TRANSFER:** 3–5 offene PDFs waehlen. Pro PDF:
   - Lesen via Read mit `pages:` (max 20 S./Request; grosse Werke ueber mehrere Laeufe).
   - Destillat `destillate/<slug>.md` schreiben: Frontmatter (quelle, herausgeber, ausgabe,
     gelesen, **datenstand**, status, last_updated) + Kurzfassung: «Das Wichtigste in 1 Satz»,
     Kernbegriffe/-formeln, Tabellen, **Bauherren-Transfer**, offene Punkte.
   - Quelle treu wiedergeben, nichts erfinden; eigene Einordnung markieren.
   - `destillate/INDEX.md` + `pdf-inventar.md` (Status [x] + Datum) nachfuehren.
3. **VERDICHTUNG:** BAUHERREN-FAQ-Antwort(en) + Themenartikel in `wiki/` aktualisieren, mit
   `[[backlinks]]` auf die Destillate, Status heben (speculative→emerging→established), Datum.
4. **Register:** `raw/_INGESTED.md`, `curriculum.md`, `wiki/QUESTIONS.md`, `wiki/INDEX.md`.
5. **Output:** `outputs/<JJJJ-MM-TT>_energie-runN.md` — welche PDFs destilliert, welche FAQ
   gewachsen, was offen, was als naechstes (Prioritaet morgen).
6. **CHANGELOG** ergaenzen (neueste zuoberst).
7. **Sichern:** NAS-Repo committen + pushen (Rules `git-auto-push` / `sync-kanonische-quelle`).

## Reihenfolge der Erschliessung (Prioritaet)
1. **Fachgrundlagen** mit hoechstem Bauherren-Nutzen: U-Wert/Bauteilekatalog, Heizwaermebedarf
   SIA 380/1, Minergie-Wissen, ZH-Energienachweis (EN-ZH), Daemmstoffe.
2. **Solar/PV:** Typen, Eignung/Ertrag, Brandschutz (Verweis `brandschutz`), Beispiel-Reports.
3. **Aktualitaet/Recht:** MuKEn-Umsetzung ZH, Foerderprogramme, Netto-Null/Klima, graue Energie.
4. **Datenblaetter/Beispiele** zuletzt (geringe Uebertragbarkeit) — kurz halten.

## Leitplanken (Qualitaet)
- **Nie erfinden** (λ/U-Wert, Grenzwert, Foerderbetrag) — Unsicheres bleibt `speculative` + Vermerk.
- **Datenstand zwingend** (Jahr/Normversion); Energierecht/Foerderung altern schnell → ⚠ bei >18 Mt.
- **Destillat-Treue:** Quelle korrekt, eigene Einordnung als «Bauherren-Transfer» markiert.
- **Kompoundieren:** jeder Tag baut auf den vorigen; Destillate/FAQ wachsen, nicht duplizieren.
- **Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch.**

## Fortschritts-Tracker
Konvertierungsstand in `training/pdf-inventar.md`; Themen-/FAQ-Stand in `wiki/INDEX.md` +
`wiki/BAUHERREN-FAQ.md`; offene Fragen in `wiki/QUESTIONS.md`; letzter Lauf in `outputs/`.

## Verifikations-Stufe (PFLICHT ab 12.07.2026, Rule auto-verbesserungen 260712)

Jede Status-Hebung auf `established` durchlaeuft VOR der Hebung eine unabhaengige
Widerlegungs-Pruefung (Verifier-Prinzip der Spec-Methode, automatisiert):

- **Adversarial Verify:** 2–3 unabhaengige Pruef-Agenten (oder ein Volltextabgleich an der
  amtlichen/Original-Quelle, Modell D) versuchen die Aussage zu WIDERLEGEN — jede Fundstelle,
  Ziffer, Kennwert wird an der Quelle gegengeprueft. Nur was die Pruefung besteht, wird
  `established`; Beanstandungen werden korrigiert oder auf `speculative` gesenkt.
- **Workflow-Orchestrierung autorisiert:** Multi-Agent-Workflows (paralleles Destillieren +
  Verifikations-Pipeline) sind fuer diesen Loop von Raphael freigegeben (12.07.2026).
  Mechanische Extraktion darf auf guenstigeren Modellen laufen; die Verifikations-/Richter-
  Stufe laeuft auf dem Hauptmodell.
- **Protokoll:** Verdikte (bestanden/beanstandet je Artikel/Destillat) gehoeren in den
  Lauf-Report unter `outputs/` und ins CHANGELOG.
- **Die zu widerlegende Aussage WOERTLICH aus der Datei zitieren, nie zusammenfassen**
  (Lehre Run 121, 03.08.2026). Zwei von drei Refuter-Panels lieferten Beanstandungen, die sich
  gegen die Paraphrase im Pruefauftrag richteten und nicht gegen den Dateiinhalt — das Destillat
  war an beiden Stellen bereits korrekt. Wer zusammenfasst, laesst den Refuter die
  Zusammenfassung pruefen und erzeugt Scheinbefunde.
- **Jede Beanstandung vor dem Datei-Eingriff selbst am Original gegenpruefen** (Rule
  `auto-verbesserungen` 260729b). Ein Agentenbefund ist ein Verdacht, kein Vollzug — das gilt
  besonders fuer Befunde, die einen Rename oder eine Statussenkung ueber viele Dateien nach sich
  zoegen.
- **Zwei Verifikationstypen auseinanderhalten.** Web-/Neuquellen-Destillate brauchen das
  Refuter-Panel (stimmt die Aussage an der Quelle?). Destillate aus dem **Alterskorpus PL-02**
  (Quellen 2001-2019) brauchen stattdessen eine **Aktualitaetspruefung** gegen die geltende
  Fassung — ein Refuter-Panel auf den Altstand bestaetigt nur, dass der Altstand korrekt
  wiedergegeben ist, und rechtfertigt keine Hebung auf `established`.
- **Das Alter der Quelle wird am Titelblatt GELESEN, nie aus dem Dateinamen abgeleitet**
  (Lehre Run 122, 03.08.2026). Ein Versionskuerzel wie `_V21`, `_V13`, `_1.3` ist eine
  **Versions-, keine Jahresangabe**: «GT_RL5_Lueftungsanlagen_V21.pdf» ist Version 2.1 von
  **Juli 2008**, nicht 2021. Run 121 hat den ganzen AHB-Block dadurch 13 Jahre zu jung
  eingestuft. Der Fehler ist folgenreich, weil die Alterseinstufung darueber entscheidet, ob
  ein Destillat ueberhaupt eine Aktualitaetspruefung erhaelt — ein zu jung eingestufter Korpus
  wird nie geprueft und schleppt tote Normverweise als geltendes Wissen mit.
- **Die Aktualitaetspruefung prueft die Bauherren-Transfer-Abschnitte MIT, nicht nur die
  Quellenwiedergabe** (Lehre Run 122). Zwei der neun Destillate gaben die Quelle von 2008 treu
  wieder und zogen daraus im eigenen Transfer-Abschnitt eine **heute positiv falsche**
  Empfehlung («SIA 380/4 ist Pflicht bei Nichtwohnbauten», «350-kW-Schwelle nach Art. 20a LRV
  als echter Zugewinn»). Destillat-Treue und Aktualitaet sind zwei verschiedene Pruefungen;
  die zweite muss ausdruecklich auf die eigene Einordnung angesetzt werden.
- **Bei Subagenten auf OneDrive-/SharePoint-Pfaden zuerst eine lokale Arbeitskopie anlegen**
  (Memory `feedback_background_agent_onedrive_stall`; in Run 122 mit 9/9 fehlerfreien Agenten
  bestaetigt). Kosten: ein `cp`. Nutzen: kein stallender Agent.

## Intensivphase (ab 12.07.2026, bis auf Widerruf)

Der Loop laeuft intensiviert (auch tagsueber und am Wochenende, Rule 260712), bis ein markant
besserer Wissensstand erreicht ist (Inventar/Rueckstaende abgearbeitet, keine auto-schliessbaren
Luecken). Dann Ruecktaktung ins Nachtfenster VORSCHLAGEN (nicht stillschweigend umsetzen).

### Token-Vollgas bis 10.08.2026 (Rule 260712b)

Bis und mit 10.08.2026 gilt maximaler Durchsatz (20x-Abo): Batch-Volumen pro Lauf
VERDOPPELN gegenueber den oben genannten Richtwerten (z.B. Normen 15-25 Positionen,
Energie 6-10 PDFs, Planungsgrundlagen 2 Domaenen + 10-16 Fragen, Baurecht 4-6
Verifikations-Komplexe), Workflow-Parallelisierung als Standard. Ab 11.08.2026
(5x-Abo) gelten wieder die urspruenglichen Richtwerte und der Sparbetrieb; die
Ruecktaktung erledigt der One-Time-Task `token-drosselung-100810`.

---

## Neuer Antrieb ab 24.08.2026: Pruefwarteschlange statt Dateiliste

**Warum der Wechsel.** PL-02 und PL-04 sind abgearbeitet (Runs 148 bis 150, nachgezaehlt statt
aus dem Register geglaubt). Das Qualitaets-Audit vom 23.08.2026
(`outputs/2026-08-23_energie-audit-qualitaetsoffensive.md`) hat 47 belegte Befunde ergeben —
**kein einziger am Rand des Korpus, alle im Bestand.** Der schwerste betrifft ein zweimal
verifiziertes established-Destillat, dessen Rechenbeispiel seit 2023 durch die falsche Flaeche
dividierte; der zweitschwerste eine Foerderung, die es nicht gibt, in einer Antwort, die seit
2020 unveraendert stand. **Ein Mengenlauf haette in derselben Zeit das 325. PDF destilliert und
beide unberuehrt gelassen.** Was ein qualitaetsgetriebener Loop findet und ein mengengetriebener
nicht, ist genau dies: den Widerspruch zwischen zwei bereits vorhandenen Dateien.

**Die Warteschlange** speist sich aus drei Quellen, in dieser Rangfolge: (1) die offenen Punkte
des Audits in `wiki/QUESTIONS.md`, Abschnitt «Audit 23.08.2026»; (2) die uebrigen offenen Punkte
in QUESTIONS; (3) die Treffer der Pruefwerkzeuge. Ein Lauf nimmt so viele Positionen, wie er
**sauber mit Beleg schliessen** kann. Neue Quellen werden weiterhin destilliert, aber nachrangig
und nur auf Anlass: neue Rechtslage, neue Programmversion, konkreter Projektbedarf.

**Die Pruefungen, die in jedem Lauf laufen** (alle in `wissen/tools/`, alle mit Exit 1 bei
Befunden, alle KB-uebergreifend):

| Schritt | Werkzeug | Frage | Aufwand |
|---|---|---|---|
| 1 | `wiki-konsistenz.sh energie` | Form: Frontmatter, Register, Backlinks | < 1 Min Laufzeit, ~10 Min Durchsicht |
| 2 | `bezugsgroessen-check.py energie` | Nenner: traegt jede Quote ihre Bezugsgroesse | 15-30 Min, jeder Treffer im Umfeld zu beurteilen |
| 3 | `datenstand-waechter.py energie` | Alter: kommt die Zahl mit ihrem Alter beim Leser an | ~20 Min; Befunde mit Frist direkt nach `logbuch/fristen.md` |
| 4 | `kennwert-recompute.sh energie` | Inhalt: gehen die ausgeschriebenen Rechnungen auf | wenige Minuten |
| 5 | **Rueckwaerts-Diff** (von Hand, kein Werkzeug) | sagt das Erzeugnis, was das Destillat weiss | ~1 Std, der eigentliche Kern |

**Schritt 5 ist der wichtigste und hat noch kein Werkzeug.** Er nimmt die Destillate, die seit
dem letzten Lauf einen Statuswechsel, eine Korrektur oder einen neuen ⚠-Satz erhalten haben,
plus zehn rotierende aus dem Bestand, und prueft je Destillat **jede** zitierende Stelle in
`wiki/` daraufhin, ob der Vorbehalt mitgegangen ist. Zwoelf der 47 Audit-Befunde stammen aus
genau dieser Luecke, darunter zwei der drei P1.

**Abschlussregel fuer jede Korrektur (verbindlich):** eine Korrektur ist erst fertig, wenn ein
`grep` auf den alten Wert oder die alte Formulierung ueber `wiki/` und `destillate/` **null**
Treffer liefert — abgesehen von bewusst gesetzten Korrekturvermerken, die den alten Wortlaut
zitieren. Der Indach-Fall (Audit 02.4) zeigt, warum: dort wurde an drei Stellen korrigiert und an
fuenf nicht, und der Widerruf stand achtzehn Zeilen ueber der wiederholten Falschaussage.

**Zusaetzlich, seltener: ein Themenkreis im Volltext, rotierend.** Zwanzig der Themenartikel hat
das Audit gar nicht beruehrt, die FAQ nur maschinell gefiltert. Je Lauf ein Themenkreis (Fenster
und Verglasung, Daemmstoffe, Schadstoffe, Lueftung …), Artikel gegen die zitierten Destillate
gelesen. Ein bis zwei Stunden, und die einzige Pruefung, die einen Fehler ohne Zahlenformat findet.

**Die Blindstelle, die dieser Loop NICHT schliesst.** Keine der sechs Audit-Dimensionen hat eine
Originalquelle geoeffnet. Das Audit sagt, dass die KB sich selbst widerspricht; es sagt nicht, ob
ein Destillat sein PDF richtig wiedergibt. **Quartalsweise** sind darum die zwanzig
meistzitierten Destillate gegen ihr Original zu lesen. Exemplarisch Audit-Befund 02.2: welcher
Psi-Grenzwert im BFE-Waermebrueckenkatalog 2002 wirklich steht, ist ohne das Original nicht
entscheidbar.

**Gewichtung nach Ertrag** (aus dem Audit selbst): die ergiebigsten Dimensionen waren
**Aktualitaet, Widersprueche im Bestand und Belegkante** — alle drei halten den Bestand gegen
sich selbst. Die Rechenpruefung hat vor allem bewiesen, dass die KB rechnen kann; die Statuskette
lieferte Praevention statt Korrektur. Der Loop soll entsprechend gewichtet sein.
