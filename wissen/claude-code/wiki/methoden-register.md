---
title: Methoden-Register — Quellen aus «00 Prompteingaben» und ihr Implementationsstand
status: established
last_updated: 2026-08-13
sources: [OneDrive AD - 01 Geschaeftsfuerung/JANS AI/00 Prompteingaben/ (Vollanalyse 29.07.2026, Ordner am 30.07. von «03» auf «00» umbenannt), scripts/methoden-scan.sh]
links: [[methode-spw-wissensbasis]], [[lecture-260729-anthropic]], [[INDEX]]
---

# Methoden-Register

Kanonisches Register aller Methoden-Quellen im OneDrive-Ordner
`AD - 01 Geschaeftsfuerung/JANS AI/00 Prompteingaben/` (bis 30.07.2026 «03 Prompteingaben»,
siehe Befund unten). Dort sammelt Raphael
abfotografierte Lectures, Videos und Prompt-Ideen. Dieses Register stellt sicher, dass
jede Quelle (a) destilliert, (b) implementiert und (c) dauerhaft ueberprueft wird.

**Gepflegt vom Loop `methoden-radar`** (woechentlich, Mo 21:00): Delta-Scan via
`scripts/methoden-scan.sh`, neue Ordner werden destilliert und hier registriert; ohne
neues Material wird rotierend EINE Zeile verifiziert (Implementation noch aktiv?
Training liefert?) und der Verifikations-Stempel gesetzt.

## Befund 30.07.2026 (Lauf `methoden-radar`)

1. **Quellordner umbenannt: «03 Prompteingaben» → «00 Prompteingaben».** Der Vorfilter
   `scripts/methoden-scan.sh` suchte den harten alten Pfad und brach mit Exit 2 («Quelle
   nicht erreichbar») ab — ununterscheidbar von einem fehlenden OneDrive-Mount. Ohne
   Pruefung haette der Loop das als «Mount fehlt» protokolliert und waere blind
   weitergelaufen. Behoben: das Script probiert jetzt «00», dann «03» und faellt zuletzt
   auf ein `find`-Muster `* Prompteingaben` zurueck; die verwendete Quelle wird auf stderr
   ausgewiesen. Umbenennungszeitpunkt gemaess mtime: 30.07.2026 09:49.
2. **Acht Bilder in `260729 Antrophic Lecture` fehlen in OneDrive** (32 → 24): IMG_5462,
   5464, 5466, 5471, 5472, 5478, 5481, 5485. **Geklaert am 30.07.2026 durch Raphael:
   bewusst aufgeraeumt**, kein Sync-Problem. Kein Wissensverlust — alle 32 Slides liegen
   vollstaendig als Kopie in `wissen/claude-code/raw/` (nachgemessen 30.07.), worauf sich
   [[lecture-260729-anthropic]] und [[kontext-architektur]] mit Bildnummern berufen. Die
   raw-Kopie bleibt darum unangetastet und wird nicht nachgezogen. Der neue Zaehlstand
   (24) ist im Scan-Stand eingefroren; kuenftige Meldungen zu diesem Ordner betreffen
   echtes Delta.

## Register (Stand 30.07.2026)

| Ordner (Quelle) | Inhalt | Destillat | Implementation im Hub | Training/Ueberpruefung | Status | Letzte Verifikation |
|---|---|---|---|---|---|---|
| `3 EASY STEPS - the Spec` | 34 Screenshots, YT Austin Marchese / Karpathy «The Spec» | `wissen/spec/` (5 Wiki-Artikel, Transkript in raw) | Rule `spec-methode` (Gate, immer aktiv) + Skill `spec` | Task `spec-training` (seit 26.07. Ereignis-Trigger bei realer Spec-Anwendung) | implementiert | **2026-07-30 geprueft, ohne Befund**: `rules/spec-methode.md` + `skills/spec/SKILL.md` + 5 KB-Artikel vorhanden; Registry `spec-training` enabled=false MIT dokumentiertem Entscheid (Raphael 26.07., Registry-Nachzug 27.07.) = kein stiller Ausfall; Liefer-Beleg `wissen/spec/CHANGELOG.md` 29.07. (Wissens-Chef Run 20 + Programm-Statuskopf) |
| `Methode SPW` | 30 Screenshots, YT «Second Brain / Claude als Bibliothekar» (Karpathy-Ansatz) | [[methode-spw-wissensbasis]] (nachgeholt 29.07.) | Wissens-Layer `wissen/` + Rule `wissens-bibliothekar` + Skill `wissenscheck` (7 Audits) | Task `wissenscheck-monatlich` (1. des Monats) + `wissens-chef` (taeglich, Cross-KB) | implementiert, **ein Befund** | **2026-08-03 geprueft, ein Befund**: (a) Implementation vollstaendig vorhanden — `rules/wissens-bibliothekar.md`, `skills/wissenscheck/SKILL.md` («Die sieben Audits»), `wissen/WISSEN-CLAUDE.md`, 19 KBs, Destillat [[methode-spw-wissensbasis]]; (b) beide Tasks in der Registry enabled=true (`wissenscheck-monatlich` letzter Lauf 01.08., naechster 01.09.; `wissens-chef` letzter Lauf 02.08. 23:12); (c) Liefer-Beleg `wissenscheck-monatlich` **belegt** (20 Health-Check-Reports `outputs/2026-08-01_health-check.md` quer ueber alle KBs plus CHANGELOG-Zeilen). **BEFUND `wissens-chef`: zwei Laeufe ohne Liefer-Beleg — Ursache am 03.08.2026 durch Run 23 GEKLAERT: Wochen-Kontingent erschoepft (Reset 03.08. 12:00), im Lauf-Journal fuer jeden getakteten Lauf beider Stationen im selben Fenster belegt; kein Loop-Defekt. Das dritte Beweisstueck (fehlende Journalzeile) taugt fuer diesen Task nicht als Indiz — `wissens-chef` laeuft als App-Scheduled-Task nicht ueber `claude-run.sh` und hat dort nie eine Zeile geschrieben. Details in QUESTIONS Punkt 0.** Urspruengliche Meldung: Letzter Bericht ist Run 22 vom 31.07.2026 23:48 (`wissen/koordination/outputs/2026-07-31_wissens-chef-run22.md`); fuer 01.08. und 02.08. existiert weder ein Run-Bericht (`find -iname "*wissens-chef*" -newermt 2026-08-01` leer) noch ein CHANGELOG-Eintrag in `wissen/koordination/CHANGELOG.md` (dort nur Wissenscheck-Sammellauf und Synergie-Lauf 03) noch eine Journalzeile in `logbuch/laeufe/2608{01,02,03}-laeufe.jsonl`. Nicht deaktiviert, nicht angetastet — Eintrag in QUESTIONS + hub-chef-Briefing |
| `260729 Antrophic Lecture` | 32 Slides, Anthropic-Lecture Claude Code | [[lecture-260729-anthropic]] + [[kontext-architektur]] | Rule `auto-verbesserungen` 260729 + Kontext-Diaet 2.0 + `scripts/claude-run.sh` + `connectors/README.md` | Betriebsaufsicht `vollgas-fruehwarnung` (Lauf-Journal) | implementiert | **2026-08-13 geprueft, ohne neuen Befund**: (a) alle Artefakte vorhanden — beide Destillate, `rules/auto-verbesserungen.md` (drei 260729-Stellen), `scripts/claude-run.sh` **mit** der Locale-Haertung vom 01.08. (`LANG`/`LC_ALL` auf `de_CH.UTF-8`, Z. 36 f.), `connectors/README.md` (zuletzt 09.08.), `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`; (b) Aufsicht `vollgas-fruehwarnung` enabled=true, taeglich 07:15, letzter Lauf 08.08. — die Luecke 09.–12.08. ist **kein Loop-Defekt**, sondern der dokumentierte Stationsausfall (MacBook Pro ohne Claude-Aktivitaet seit 09.08. 19:27, Wochenkontingent erschoepft, OneDrive-Sync-Incident `docs/konzepte/260812-OneDrive-Sync-Incident/`; Pflichtpruefung nach Wissens-Chef Run 23 durchgefuehrt); (c) Liefer-Beleg reichlich — `kontext-architektur.md` fortgeschrieben bis 06.08. mit drei eigenen Grundkontext-Messreihen, CHANGELOG-Eintraege 01.08. (Locale-Regression an `claude-run.sh`), 03.08. (Run 23, Kontext-Budget) und 06.08. (Run 27, Grundkontext neu gemessen). **Verweis, nicht neuer Befund:** dass die Fruehwarnung am 08./09.08. zwei Warnentwuerfe erzeugte und **keinen** sendete, ist als P1 im Fristen-Register vom 12.08. registriert (Z. 38 ff.) — hier nur vermerkt, keine Doppelmeldung |
| `260725 Archetypen` | 5 Screenshots, YT-Short @niklasvolland «5 Tech-Jobs» (Prototyper/Builder/Sweeper/Grower/Maintainer) | `docs/konzepte/260729-Rollen-Taxonomie/` | Rule `rollen-taxonomie` + `logbuch/rollen/rollen-map.tsv` + Scripts `rollen-bilanz.sh`, `nutzungs-radar.sh`, `schutzmechanik-selbsttest.sh` | Erstmessung 29.07.2026; seither **kein automatischer Takt** (siehe Befund) | implementiert, **ein Befund** | **2026-08-13 geprueft, ein Befund**: (a) Implementation vollstaendig und lebendig — alle fuenf Artefakte vorhanden (`rules/rollen-taxonomie.md`, `logbuch/rollen/rollen-map.tsv` mit 138 Zeilen, zuletzt geaendert 13.08. 01:14, sowie die drei Scripts), dazu `docs/konzepte/260729-Rollen-Taxonomie/`; (b) Liefer-Beleg seit der letzten Verifikation **reichlich** — Registerbereinigung 30.07. (`519deea0`, Registry↔Dateisystem beidseitig abgeglichen), vier Scripts nachregistriert 31.07. (`e3c98abb`), Quellen-Aktualitaetsmeldung der Bilanz 31.07. (`5b666e80`), `/tiefenrecherche` nachgezogen 07.08. (`26a057cf`), rollen-map 13.08. (`977fc9b6`). **BEFUND — die Ueberpruefungs-Stufe ist nicht verdrahtet:** `CLAUDE.md` behauptete (Z. 263 f.), `schutzmechanik-selbsttest.sh` «haengt im heartbeat». `skills/heartbeat/SKILL.md` nennt weder den Selbsttest noch `rollen-bilanz.sh` noch `nutzungs-radar.sh` — und hat das **nie** getan (`git log --all -S"schutzmechanik" -- skills/heartbeat/SKILL.md` leer). Keine Doku-Regression, sondern eine nie eingeloeste Absichtserklaerung vom Bautag 29.07.2026. Einziger Aufrufweg ist der manuelle Command `/rollen`; kein Scheduled Task fuehrt eine Bilanz. Damit gibt es seit der Erstmessung keine Messung, obwohl die Rule verlangt, Quoten zu messen und zu berichten. **Pflichtpruefungen:** (1) Belegsystem-Frage nicht anwendbar — gemessen wurde nicht ein fehlender Lauf im Journal, sondern die Verdrahtung am Dateiinhalt, abgesichert ueber die git-Historie; (2) der Stationsausfall 09.–12.08. und die Kontingent-Abbrueche (01.–03.08., 08.08.) erklaeren fehlende Laeufe, nicht eine fehlende Verdrahtung — die Luecke besteht seit dem 29.07. unabhaengig davon. Falsche Behauptung in `CLAUDE.md` in diesem Lauf korrigiert (Tatsachenkorrektur); der Entscheid, ob der Selbsttest in den heartbeat gehaengt wird, liegt bei Raphael (QUESTIONS Punkt 1) |
| `Agenten` | 1 PNG (10.03.2026): 4-Agenten-Blaupause (Indexer, Baueingabe-Check, Brandschutz, QA-Trace). Die 2 DOCX zur Drei-Marken-/Website-Strategie am 29.07.2026 auf Entscheid Raphael GELOESCHT (Idee verworfen) | Blaupause unten destilliert | Skill-Kandidat aufgenommen (Entscheid Raphael 29.07.2026); teilabgedeckt durch `auflagebereinigung` (deckt NACH dem Entscheid) | via Verifikations-Rotation | Skill-Kandidat, Umsetzung offen | 2026-07-29 |
| `Prompts` | GELOESCHT 29.07.2026 (Entscheid Raphael): 3 Screenshots ChatGPT-Kurzcodes + leeres DOCX, ohne Substanz | — | — | — | erledigt (geloescht) | 2026-07-29 |
| `CAD Verarbeitung` | 1 Standbild: Anthropic-Demo parametrischer Code-CAD-Leuchtturm (Workplane-Arithmetik, Selbstkorrektur) | Registereintrag genuegt | bestaetigt den Hub-Weg Geometrie-ueber-Code (`volumenstudie`, `pdf2dwg`) | — | registriert, keine Aktion | 2026-07-29 |
| `Fabel 5` | 1 Screenshot 11.06.2026: Fable-5-Sicherheitsfilter markiert harmlose C4D-Session, Auto-Fallback auf Opus 4.8 | Registereintrag genuegt | Betriebs-Praezedenz fuer Filter-False-Positives in Render-Workflows (Render-Weiche Rule 260611) | — | registriert als Beleg | 2026-07-29 |
| `Anthropic` | 1 MP4 (imagine-hero, Marketing) | — | ohne Methodengehalt | — | keine Aktion | 2026-07-29 |

## Entschieden 29.07.2026 (Raphael)

1. **Drei-Marken-/Website-Strategie**: verworfen, beide DOCX geloescht (SharePoint-
   Papierkorb, 93 Tage wiederherstellbar). Kein synergie-Input.
2. **4-Agenten-Blaupause**: als Skill-Kandidat AUFGENOMMEN (Destillat unten).
3. **Ordner `Prompts`**: geloescht.

## Skill-Kandidat: 4-Agenten-Blaupause Projektordner/Baueingabe (aufgenommen 29.07.2026)

Quelle: `Agenten/Bildschirmfoto 2026-03-10 um 12.01.40.png` (Agenten-Spezifikation,
je mit Ziel/Inputs/Output/Stop-Regel). Destillat, damit das Wissen unabhaengig vom
Bild erhalten bleibt:

1. **Indexer/Archiv-Agent** — erzeugt `manifest.csv` je Projektordner (Felder u.a.
   file_path, doc_type, discipline, version, plan_no, status, confidentiality) +
   `index_report.md`. Regel: «Keine Inhalte erfinden.»
2. **Baueingabe-Agent** — Vollstaendigkeitspruefung des Baueingabe-Dossiers nach
   Referenzprozess Zuerich, Output `baueingabe_check.md`. Stop-Regel: ohne
   Katasterplan/Planstand keine «fertig»-Freigabe.
3. **Brandschutz-Agent** — `brandschutz_summary.md` + `nachweis_matrix.md` gemaess
   QSS-Logik. Stop-Regel: QSS nie als Fakt ohne Behoerden-/Projektbeleg, sonst
   Annahme-Flag.
4. **QA/Trace-Agent** — Traceability-Matrix Aussage→Dokumentstelle mit Status
   belegt/teilbelegt/unbelegt, Output `trace_matrix.md` + `conflict_list.md`.

Einordnung: Vorstufe zu `auflagebereinigung` (die erst NACH dem Bauentscheid greift);
Beruehrungspunkte mit `brandschutz` und `planungsgrundlagen`. Umsetzungsvorschlag
liegt beim hub-chef-Briefing (logbuch), Entscheid ueber Bauzeitpunkt bei Raphael.

## Betriebsmodus (neu 13.08.2026, Entscheid Raphael)

Der Radar lief bis zum 13.08.2026 **woechentlich** (Mo 21:00) und fuehrte in jedem Lauf Scan
und Rotation zusammen aus. Drei belegte Gruende fuer den Umbau:

1. **Die Leerlauf-Bremse war konstruktiv wirkungslos.** Schritt 3 verlangte in jedem Lauf ohne
   Delta einen Register-Stempel, Schritt 4 zaehlte genau diesen Stempel als Liefer-Delta. Damit
   lieferte jeder Lauf per Definition, und die vorgesehene Ruecktaktung nach 3 bzw. 5 leeren
   Laeufen konnte **nie** ausloesen. Der Loop war so gebaut, dass er den eigenen Leerlauf nicht
   bemerken konnte. Neu gilt: ein Stempel ist kein Delta.
2. **Die Quelle waechst nicht.** Die Vollanalyse vom 29.07.2026 hielt bereits fest, dass 8 von
   9 Ordnern implementiert oder ohne Methodengehalt waren; die Luecke war Buchhaltung, nicht
   Substanz. Ueber vier Laeufe (29.07., 30.07., 03.08., 13.08.) meldete der Scan **kein
   einziges Delta**.
3. **Die Rotation lieferte netto negativ.** Von zwei Rotationslaeufen war einer ein Fehlalarm
   (03.08., `wissens-chef`), den Wissens-Chef Run 23 widerlegen musste, der andere ein
   Nullbefund (13.08.). Daraus stammen die zwei Pflichtpruefungen unten.

**Neue Aufhaengung:**

- **Der Delta-Scan haengt im `heartbeat`** (Check 14, taeglich). Er meldet neues Material am Tag
  seines Erscheinens statt fruehestens am folgenden Montag, kostet Sekunden und braucht keine
  eigene Claude-Session. Er friert den Scan-Stand **nicht** ein, sonst verschluckt er das Signal.
- **Der Radar selbst laeuft monatlich** (8. des Monats, 21:00) fuer die Verifikations-Rotation,
  und ausserdem **ad hoc**, sobald der heartbeat ein Delta meldet. Bei vier «implementiert»-Zeilen
  ergibt das eine volle Rotationsrunde pro Vierteljahr.
- **Lehren gehoeren hierher oder in `rules/betrieb-chronik.md`**, nie in den Task-Prompt und nie
  in die Task-Beschreibung. Beide waren bis zum 13.08.2026 zu Fehlerspeichern angewachsen
  (Prompt 6'297 Bytes, Beschreibung allein 1'321 Zeichen Korrekturhistorie) und kosteten in
  jedem Lauf Kontext, bevor die erste Zeile Arbeit begann. Chronik-Beleg: 260813d.

**Quellordner:** seit 30.07.2026 09:49 «00 Prompteingaben» (vorher «03»). Der Prompt nannte bis
zum 13.08.2026 faelschlich noch «03» und wurde nur vom Vorfilter kompensiert. Massgeblich ist
immer die Quelle, die `scripts/methoden-scan.sh` auf stderr ausweist.

## Verifikations-Rotation

Naechste Zeile in der Rotation: **`3 EASY STEPS - the Spec`** (Stand 13.08.2026, aelteste
Verifikation unter den «implementiert»-Zeilen, zuletzt 30.07.2026). Zuletzt geprueft:
`260725 Archetypen` am 13.08.2026 **mit Befund** (Ueberpruefungs-Stufe nicht verdrahtet),
davor `260729 Antrophic Lecture` am 13.08.2026 ohne neuen Befund und `Methode SPW` am 03.08.2026.

**Dritte Pflichtpruefung, ergaenzt 13.08.2026** aus dem Befund an `260725 Archetypen`: Die
Spalte «Training/Ueberpruefung» nennt oft ein Aufsichtsmittel. **Bevor es als vorhanden gilt,
wird die Verdrahtung am Zielartefakt gemessen** — steht das Script wirklich in der SKILL.md des
aufrufenden Loops bzw. in dessen Registry-Eintrag? Ein Satz in `CLAUDE.md`, im Konzept oder in
diesem Register ist eine Absichtserklaerung, kein Betriebszustand (gleiche Familie wie
`auto-verbesserungen` 260807, Konfigurationsfelder). Gegenprobe bei Fehlanzeige mit
`git log --all -S"<script>" -- <ziel>`: liefert das nichts, war die Verdrahtung nie da und der
Befund ist eine offene Absicht, keine Regression.

Der Loop prueft pro Lauf ohne neues Material genau EINE Zeile mit Status
«implementiert», reihum von oben nach unten: existieren die genannten Rules/Skills/
Scripts noch, ist das Training aktiv (Registry-Status) und gibt es seit der letzten
Verifikation einen Liefer-Beleg (CHANGELOG-/Journal-Eintrag)? Befunde kommen in den
CHANGELOG dieser KB und bei Handlungsbedarf in die Chat-/Briefing-Schiene (hub-chef).

**Zwei Pflichtpruefungen vor jedem «liefert nicht»-Befund** (ergaenzt Wissens-Chef Run 23,
03.08.2026, nach einem Fehlschluss an der Zeile `Methode SPW`):
1. **Schreibt der Loop ueberhaupt in das gepruefte Belegsystem?** Nur Laeufe ueber
   `scripts/claude-run.sh` erzeugen Zeilen in `logbuch/laeufe/*.jsonl`. App-Scheduled-Tasks
   (z. B. `wissens-chef`) tun das nie — dort ist eine fehlende Journalzeile ein Nicht-Signal
   und darf nicht als Beweisstueck gefuehrt werden.
2. **Lag im geprueften Fenster ein Kontingent-Abbruch vor?** `grep -l "weekly limit"
   logbuch/laeufe/*.jsonl` ueber die betroffenen Tage. Ein erschoepftes Wochen-Kontingent
   erklaert Ausfaelle ueber alle Loops hinweg und ist kein Defekt des einzelnen Loops.
