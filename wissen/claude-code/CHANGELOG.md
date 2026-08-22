# CHANGELOG — KB `claude-code`

Neueste Eintraege zuoberst.

## 2026-08-22 (Mac-Mini-Nachtschicht, 05:30-Slot) — Erst-Health-Check: 2 Findings (Umlaute KB-weit, Riegel-Zahlen veraltet)

Prioritaeten 1-4 des Nachtschicht-Auftrags wie im 02:31-Lauf desselben Zyklus bestaetigt
gesaettigt (keine pending Tasks, Synobsis Stufe 2 fertig, keine faellige Trainingslektion,
Fristen-Register ohne neuen Punkt). Auf Prioritaet 6 ausgewichen (wissenscheck Phase 1,
aelteste Audit-Gruppe 03.08.2026): `claude-code` gewaehlt, weil seit dem letzten
Sammel-Audit zwei Artikel gewachsen sind (`kontext-architektur.md`, `methoden-register.md`)
und noch kein eigener Health-Check-Report existierte (Erst-Audit dieser KB).

Ergebnis A0 · B0 · C1 · D0 · E0 · F1 · G0:
- **[BEFUND, gross] Audit F — praktisch die gesamte KB (CLAUDE.md, INDEX.md, alle vier
  Wiki-Artikel, QUESTIONS.md, `raw/_INGESTED.md`) schreibt Umlaute konsequent als
  ASCII-Ersatz (ae/oe/ue), nicht als echte ä/ö/ü.** Byte-verifiziert (grep auf UTF-8-Umlaut-
  Sequenzen): 0 Treffer in acht von neun Dateien, nur `CHANGELOG.md` nutzt echte Umlaute.
  Widerspricht der eigenen KB-Regel und der hub-weiten Rule `umlaute-konvention.md`
  (Vorrang-Klausel). Kein Encoding-Problem (Dateityp bestaetigt UTF-8, `baurecht`-KB als
  Vergleich zeigt echte Umlaute in dreistelliger Zahl je Artikel) — vermutlich Drift aus
  den fruehen, schnellen Destillations-Laeufen direkt nach der Lecture vom 29.07.2026.
  **Nicht selbst korrigiert** (Phase 2 laeuft unbeaufsichtigt nicht, Blind-Replace ueber
  ~40 KB ohne Sichtkontrolle riskant) — Empfehlung: interaktiver Lauf oder `korrektur`
  je Datei.
- **[BEFUND] Audit C — `kontext-architektur.md` nennt veraltete Riegel-Zahlen.** Artikel
  (Stand 06.08.2026) behauptet `MAX_AUTO_BYTES = 30'000` / `WARN_AUTO_BYTES = 24'000`;
  tatsaechlich seit 18.08.2026 (Commit `42ced312`, Entscheid Raphael) `34'000` / `30'000`.
  Nebenbefund unverifiziert: `rules/jans-dna-facetten.md` liegt aktuell bei 35'226 B, ueber
  dem neuen Riegel — ob Frontmatter-Differenz oder echte Ueberschreitung, gehoert in die
  Zustaendigkeit der KB `twin`, hier nur vermerkt.
- **[sauber] Audit A/B/D/E/G ohne Befund:** keine Widersprueche, keine kaputten Backlinks
  oder Orphans (inkl. Cross-KB-Link zu `spec/wiki/environment-jans-hub.md`, geprueft und
  intakt), RAW-Coverage vollstaendig, kein Artikel ueber der 90-Tage-Staleness-Schwelle,
  keine Promotion-Kandidaten (alle vier Artikel bereits `established`). QUESTIONS-Punkt 1
  (Automatik `schutzmechanik-selbsttest.sh` in den heartbeat?) weiterhin unveraendert offen,
  Entscheid bleibt bei Raphael — gegengeprueft, keine Drift seit 13.08.2026.

Report: `wissen/claude-code/outputs/2026-08-22_health-check.md`. Keine Ordnerumbenennung,
kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses
Nachtschicht-Zyklus bis hierhin: rund 2 von 5 USD (Prioritaeten-1-5-Vorpruefung + dieser Audit).

## 2026-08-13 (methoden-radar, Lauf 02:11 aus dem Nachhol-Sturm) — Rotation `260725 Archetypen`: Aufsicht nie verdrahtet

- **[kein Delta] Vorfilter Exit 0**, 8 Ordner unveraendert — Verifikations-Rotation statt
  Destillation. Rotationszeile nach dem neuen Stand: `260725 Archetypen` (Rollen-Taxonomie).
- **[BEFUND] Die Ueberpruefungs-Stufe der Rollen-Taxonomie ist nicht verdrahtet.** `CLAUDE.md`
  behauptete, `scripts/schutzmechanik-selbsttest.sh` haenge im `heartbeat`; `skills/heartbeat/SKILL.md`
  nennt weder ihn noch `rollen-bilanz.sh` noch `nutzungs-radar.sh`. `git log --all -S"schutzmechanik"`
  gegen die heartbeat-SKILL.md ist **leer** — die Verdrahtung existierte nie, es ist eine offene
  Absicht vom Bautag 29.07.2026, keine Regression. Einziger Aufrufweg: der manuelle Command
  `/rollen`. Seit der Erstmessung 29.07. lief keine automatische Bilanz.
- **[korrigiert] Die falsche Behauptung in der kanonischen `CLAUDE.md`** (Z. 263 f.) auf den
  gemessenen Zustand gebracht — Tatsachenkorrektur einer Zeile im Grundkontext, der in jeder
  Session laedt. Der Entscheid ueber eine Automatik bleibt bei Raphael (QUESTIONS Punkt 1, drei
  Wege), es wurde kein Task angelegt und kein Script angetastet.
- **[abgegrenzt] Die Implementation liefert**, der Befund trifft nur die Aufsicht: `rollen-map.tsv`
  138 Zeilen, zuletzt 13.08. 01:14, Liefer-Belege 30.07. (`519deea0`), 31.07. (`e3c98abb`,
  `5b666e80`), 07.08. (`26a057cf`), 13.08. (`977fc9b6`).
- **[Regel ergaenzt] Dritte Pflichtpruefung im Register:** ein in der Spalte
  «Training/Ueberpruefung» genanntes Aufsichtsmittel gilt erst als vorhanden, wenn die
  Verdrahtung am Zielartefakt gemessen ist; Gegenprobe via `git log --all -S` unterscheidet nie
  gebaut von kaputtgegangen.
- **[Betriebsnotiz]** Dritter Radar-Lauf innert 75 Minuten (Nachhol-Sturm nach dem
  Aufsichtsausfall), kein Defekt der heute beschlossenen Monatstaktung; naechster regulaerer
  Lauf 08.09.2026.

## 2026-08-13 (Umbau auf Entscheid Raphael) — Methoden-Radar: Scan in den heartbeat, Rotation monatlich

- **[Befund] Die Leerlauf-Bremse des Loops war konstruktiv wirkungslos.** Schritt 3 verlangte in
  jedem Lauf ohne Delta einen Register-Stempel, Schritt 4 zaehlte den Stempel als Liefer-Delta —
  jeder Lauf lieferte damit per Definition, die Ruecktaktung konnte nie ausloesen. Dazu: kein
  Delta ueber vier Laeufe, und von zwei Rotationslaeufen ein Fehlalarm.
- **[umgebaut] Delta-Scan neu als Check 14 im `heartbeat`** (taeglich, Shell-Script, ohne eigene
  Session; friert den Scan-Stand bewusst nicht ein). Radar monatlich am 8. um 21:00 plus ad hoc
  auf das heartbeat-Signal. Neue Leerlauf-Regel: ein Register-Stempel ist kein Liefer-Delta.
- **[entruempelt] Prompt von 6'297 Bytes auf das Verfahren gekuerzt**, Beschreibung von 1'321
  Zeichen Korrekturhistorie befreit. Lehren stehen neu im Register (Abschnitt «Betriebsmodus»)
  und in `rules/betrieb-chronik.md` 260813d, nicht mehr im Prompt.
- **[nachgefuehrt]** Konzept `docs/konzepte/260729-Methoden-Lern-Loop/` mit Nachtrag Abschnitt 6.

## 2026-08-13 (methoden-radar, Nachhol-Lauf 00:57 auf Auftrag Raphael) — Prompt-Pfad korrigiert, Rotation Anthropic-Lecture ohne Befund

- **[korrigiert] Der Task-Prompt nannte als Quelle noch «03 Prompteingaben».** Der OneDrive-Ordner
  heisst seit dem 30.07.2026 09:49 «00 Prompteingaben». Aufgefangen wurde das bisher allein von
  `scripts/methoden-scan.sh`, das seit dem 30.07. beide Namen probiert — der Prompt selbst war zehn
  Tage lang falsch. In `/Users/raphaeljans/.claude/scheduled-tasks/methoden-radar/SKILL.md`
  nachgezogen, mit dem Zusatz, den Pfad nie hart anzunehmen, sondern die vom Script auf stderr
  ausgewiesene Quelle zu verwenden.
- **[kein Delta] Vorfilter Exit 0**, 8 Ordner unveraendert — Verifikations-Rotation statt Destillation.
- **[geprueft, ohne neuen Befund] Rotationszeile `260729 Antrophic Lecture`:** alle Artefakte
  vorhanden (beide Destillate, `auto-verbesserungen` 260729, `claude-run.sh` mit der Locale-Haertung
  vom 01.08., `connectors/README.md`, Konzeptordner Kontext-Diaet); Aufsicht `vollgas-fruehwarnung`
  enabled, letzter Lauf 08.08.; Liefer-Belege bis 06.08. Die Luecke 09.–12.08. ist der dokumentierte
  Stationsausfall, kein Leerlauf — die Pflichtpruefung aus Run 23 wurde durchgefuehrt.
- **[Betrieb, Nebenbefund] Der Wochenlauf vom Montag 10.08. ist ausgefallen**, `lastRunAt` stand auf
  03.08. Ursache dieselbe wie beim Ausfall aller Tagesloops zwischen dem 09. und 12.08.; dieser Lauf
  holt ihn nach. Kein eigener Defekt des Radars.
- **[Register]** Zeile `260729 Antrophic Lecture` gestempelt, Rotation weiter auf `260725 Archetypen`.

## 2026-08-06 (Wissens-Chef Run 27, Cross-KB) — Grundkontext neu gemessen, Riegel-Datierung berichtigt

- **`wiki/kontext-architektur.md` fortgeschrieben, nichts ueberschrieben.** Eigene Messung
  06.08.2026 23:41 CEST nach dem im Artikel festgeschriebenen Messweg (`stat -f%z` ueber
  `CLAUDE.md` + `~/.claude/CLAUDE.md` + alle 21 `@/Volumes`-Importe): **89'746 B / 21 Importe /
  ~22'436 Token**. Der Wert deckt sich exakt mit der unabhaengigen Verifikator-Messung vom
  03.08. 23:25 — der Grundkontext hat sich seither nicht bewegt.
- **Der Stichtag 03.08. 22:30 (115'482 B) bleibt unveraendert stehen**, ist aber jetzt als
  «46 Minuten spaeter ueberholt» gekennzeichnet: mit Commit `b2f29162` (03.08.2026 23:11,
  Freigabe Raphael) wurde `rules/jans-dna.md` aufgeteilt, der Facetten-Block nach
  `rules/jans-dna-facetten.md` ausgelagert (kein @-Import). Wirkung **-25'736 B**; der
  Grundkontext liegt damit 15 % **unter** dem Vor-Diaet-Wert von 105'573 B, nicht darueber.
- **Ueberschrift «Groesster Einzelposten: `rules/jans-dna.md`» war sachlich falsch geworden**
  und ist ersetzt. Heute fuehren `CLAUDE.md` (17'938 B, 20.0 %) und
  `rules/auto-verbesserungen.md` (17'469 B, 19.5 %); `jans-dna.md` ist auf 3'870 B / 4.3 %
  zurueckgefallen. Neue Tabelle der fuenf groessten Posten.
- **Pflicht-Zusatz zur Verschiebung:** `rules/jans-dna-facetten.md` ist kein @-Import, aber laut
  `rules/jans-dna.md` vor JEDEM ausgehenden Texterzeugnis zu lesen. Die rund 30 kB sind damit
  **verschoben, nicht verschwunden** — lazily statt automatisch. Ohne diesen Satz liest die
  naechste Facetten-Erweiterung die Differenz als freie Luft.
- **Riegel-Datierung berichtigt.** Der Satz «keine Stufe dieser Kette misst oder meldet die
  resultierende Dateigroesse» stimmt nur bis zum 03.08.2026: `git log -S MAX_AUTO_BYTES --
  skills/twin/tools/build_dna.py` liefert genau einen Commit, `47141939` (03.08.2026 22:55:28).
  Der Artikelstand stammt aus `3a16dc6e` (03.08. 22:46:20) — der Satz war neun Minuten wahr.
  Neu ausgewiesen: `MAX_AUTO_BYTES = 30'000` (harter Abbruch mit Groessenausweis je Facette),
  `WARN_AUTO_BYTES = 24'000`; ausgeloest erstmals 04.08. (36'835 B) und erneut 06.08.
  (34'205 B), am 05.08. ebenfalls verdichtet. **Selbst gemessener Auto-Block heute: 29'962 B,
  38 B Reserve.** `MAX_AUTO_BYTES` nicht angetastet — die Anhebung ist per Riegel-Konstruktion
  Raphaels Entscheid.
- Frontmatter `last_updated` 2026-08-06, `sources` um `messung-260806-grundkontext-wissens-chef-run27`.

## 2026-08-06 (Wissens-Ruecklauf aus dem Wochen-Review Arbeits-Weiche)

- Neuer Report `outputs/2026-08-06_nachgeruestete-sperre-ohne-durchgereichten-grund.md`.
  Belegt an der Arbeits-Weiche: der am 03.08.2026 ins `lauf-gate.sh` nachgeruestete
  Wochenkontingent-Block wirkt ueber `gate_ok` auch in der vorgelagerten Weiche, aber deren
  Journal ueberschreibt den Abweisungsgrund mit einer reinen Speicheraussage
  («mini 12.0 GB Druck 1»), weil `gate_ok` die Gate-Ausgabe nach `/dev/null` wirft.
  Verallgemeinerte Regel plus zwei Prueffragen beim Nachruesten einer Sperre: ein Exit-Code
  transportiert die Wirkung, nicht die Begruendung. Nebenbefund derselben Familie: Entscheid
  und Lauf tragen verschiedene Namen (`nachtschicht` gegen `dispatch-versuch1`), die
  Wirkungsmessung war nur ueber Zeitstempel von Hand moeglich.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Strukturell sauber. **Audit D auf 0 korrigiert:** die 29 vermeintlich unzitierten raw-Dateien sind die 32 Slide-Fotos der Anthropic-Lecture, in `raw/_INGESTED.md` Z. 5 als destilliert registriert. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Wissens-Chef Run 23, Cross-KB) — SPW-Befund geklaert, Kontext-Budget nachgemessen

- **[geklaert] `wiki/methoden-register.md` Zeile «Methode SPW» + `wiki/QUESTIONS.md` Punkt 0.** Der
  am selben Tag gemeldete Befund «`wissens-chef` laeuft ohne Liefer-Beleg» hielt in der Sache, aber
  seine Ursache ist gemessen und extern: **das Wochen-Kontingent war erschoepft** (Reset 03.08.
  12:00). Im Lauf-Journal fuer genau dieses Fenster bei **jedem** getakteten Lauf beider Stationen
  belegt: `260801-laeufe.jsonl` ab 14:28, durchgehend `260802-laeufe.jsonl`, `260803-laeufe.jsonl`
  bis 05:30; erster erfolgreicher Lauf 03.08. 13:41. Die `wissens-chef`-Slots vom 01./02.08. um
  23:12 fielen mitten hinein — der Task ist gefeuert (`lastRunAt` gesetzt) und hatte kein Kontingent.
- **[fehlschluss] Das dritte Beweisstueck war ein Nicht-Signal.** `wissens-chef` ist ein
  App-Scheduled-Task und laeuft nicht ueber `scripts/claude-run.sh`, das die Journalzeilen schreibt —
  er hat dort **nie** eine Zeile hinterlassen. Fuer diese Klasse sind nur Run-Bericht und CHANGELOG
  gueltige Belege. Zwei **Pflichtpruefungen** vor jedem «liefert nicht»-Befund in die
  Rotationsanleitung aufgenommen: schreibt der Loop ueberhaupt in das geprueften Belegsystem, und
  lag im Fenster ein Kontingent-Abbruch vor (`grep -l "weekly limit" logbuch/laeufe/*.jsonl`).
- **[veraltetes, gemessen] `wiki/kontext-architektur.md`.** Der Artikel fuehrte `rules/jans-dna.md`
  mit 15'356 B als «zweitgroessten Posten (14 %)». Nachgemessen am 03.08.2026 22:30 (`stat -f %z`,
  gleiche Messweise): **32'428 B, 28.1 %, groesster Posten** — in fuenf Tagen mehr als verdoppelt.
  Grundkontext gesamt **115'482 B / 21 Importe** statt 96'946 B / 20. Damit liegt der Stand **ueber**
  dem Vor-Diaet-Wert von 105'573 B: **die Kontext-Diaet 2.0 ist rechnerisch aufgezehrt.** Messreihe
  statt Momentaufnahme angelegt. Ursache benannt: keine Stufe der Kette twin-Facetten →
  `build_dna.py` → Rule misst oder meldet die resultierende Dateigroesse.
- **[erst-verlinkung] Gegenverweis auf `wissen/twin/` gesetzt** (Erzeuger der groessten
  Grundkontext-Datei ↔ KB, die das Budget fuehrt).

## 2026-08-03 (methoden-radar, Wochenlauf 21:02) — kein neues Material, Rotationsbefund `wissens-chef`

- **[kein Delta] Vorfilter Exit 0**, 8 Ordner unveraendert im Quellordner «00 Prompteingaben» —
  keine Destillation, stattdessen Verifikations-Rotation.
- **[geprueft, ohne Befund] Rotationszeile `Methode SPW`** (Wissens-Layer): Rule
  `wissens-bibliothekar`, Skill `wissenscheck` (sieben Audits), `wissen/WISSEN-CLAUDE.md`, 19 KBs
  und das Destillat [[methode-spw-wissensbasis]] vorhanden; `wissenscheck-monatlich` enabled und
  mit belegter Lieferung (20 Health-Check-Reports vom 01.08.2026).
- **[BEFUND] `wissens-chef` laeuft ohne sichtbaren Ertrag.** Task enabled, `lastRunAt` 02.08.
  23:12 — letzter Bericht aber Run 22 vom 31.07. 23:48. Fuer 01.08. und 02.08. kein Run-Bericht,
  kein CHANGELOG-Eintrag in `wissen/koordination/`, keine Journalzeile. Nichts deaktiviert
  (Vorschrift); Eintrag in [[QUESTIONS]] Punkt 0 und im Logbuch fuer das hub-chef-Briefing.
- **[Register]** Zeile `Methode SPW` gestempelt, Rotation weiter auf `260729 Antrophic Lecture`.

## 2026-08-01 (Hub-Chef 08:39) — Locale-Regression: neuer Wrapper erbt keine Härtung

- **[befund, Ursache behoben] Report abgelegt:** `outputs/2026-08-01_locale-regression-wrapper-erbt-keine-haertung.md`.
  Der Monats-Wissenscheck fand ae/oe-Ersatzschreibungen in 13 von 20 KBs (immobilienbewertung 831,
  normen 620, baurecht 455). Ursache selbst am Script verifiziert statt übernommen: `claude-run.sh`
  entstand am 29.07.2026, eine Woche nach der Locale-Härtung in `dispatch-run.sh` (21.07.), und hat
  sie nie geerbt — ist aber seit Rule 260729 der verbindliche Einstieg **aller** automatischen Läufe.
  Fix nachgezogen, beide Pfade gegen eine C-Locale-Umgebung nachgemessen, Bestandssweep über alle
  `claude -p`-Aufrufer, Commit `dd239633`.
- **[lehre] Drei verallgemeinerbare Punkte:** (1) ein Fix gilt der Datei, nicht dem Problem — ein
  später entstandener zweiter Einstiegspunkt erbt nichts, und die Chronik sagt trotzdem «behoben»;
  (2) ein Nullbefund ist kein Defektbeleg (Gegenstück am selben Tag: der «blinde Mailkanal» auf
  `mail@` war ein leeres Zeitfenster, nicht ein defektes Script); (3) der Bestandssweep gehört zum
  Fix, sonst ist die Aussage «alle Pfade sind sauber» unbelegt.
- **[offen] Altlast:** die bereits geschriebenen ae/oe-Stellen sind nicht rückwirkend korrigiert.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F66 · G0

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Erster Health-Check dieser KB. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-30 (methoden-radar, Wochenlauf 23:07) — Vorfilter war blind: Quellordner umbenannt
- **[befund, behoben] `scripts/methoden-scan.sh` brach mit Exit 2 ab**, weil der Methodenordner
  von «03 Prompteingaben» auf **«00 Prompteingaben»** umbenannt wurde (mtime 30.07. 09:49). Die
  Fehlermeldung war nicht von einem fehlenden OneDrive-Mount zu unterscheiden — der Loop haette
  sie laut eigener Vorschrift als «Mount fehlt» quittiert und waere ab sofort woechentlich blind
  gelaufen. Script auf eine Kandidatenliste umgestellt («00», dann «03», zuletzt `find`-Muster
  `* Prompteingaben`), verwendete Quelle wird auf stderr ausgewiesen.
- **[befund, gleichentags geklaert] 8 von 32 Slides fehlen in OneDrive** (`260729 Antrophic
  Lecture`: IMG_5462/5464/5466/5471/5472/5478/5481/5485). Zunaechst als QUESTIONS 0b aufgenommen
  statt geraten; **Raphael am 30.07. im Chat: bewusst aufgeraeumt**, kein Sync-Problem → nach
  «Beantwortet» verschoben. Kein Wissensverlust, alle 32 nachgemessen vollstaendig in `raw/`;
  die raw-Kopie bleibt als Belegbasis der Destillate unangetastet.
- **[verifikation, ohne Befund] Rotation Zeile 1 `3 EASY STEPS - the Spec`:** `rules/spec-methode.md`,
  `skills/spec/SKILL.md` und die 5 KB-Artikel existieren; `spec-training` enabled=false ist durch
  Raphaels Entscheid vom 26.07. gedeckt (kein stiller Ausfall); Liefer-Beleg `wissen/spec/CHANGELOG.md`
  29.07. Stempel gesetzt, naechste Zeile der Rotation: `Methode SPW`.
- Geaendert: `scripts/methoden-scan.sh`, `wiki/methoden-register.md`, `wiki/QUESTIONS.md`,
  `wiki/INDEX.md`, `docs/konzepte/260729-Methoden-Lern-Loop/`, `logbuch/LOGBUCH.md`, Scan-Stand.

## 2026-07-30 — Zwei offene Punkte geschlossen (GitHub-App: Verzicht · User-Commands: umgesetzt)
- QUESTIONS Punkt 2 (`/install-github-app`): **endgueltiger Verzicht, Entscheid Raphael
  30.07.2026** — GitHub bleibt reines Backup, kein Issue-/PR-Betrieb; nach «Beantwortet»
  verschoben, Konzeptdokument 260729 nachgefuehrt. Nicht erneut vorschlagen.
- QUESTIONS Punkt 3 (User-Level-Slash-Commands): umgesetzt — `~/.claude/commands` →
  `NAS/commands` auf Mini und MacBook Pro, Onboarding via `neue-station.sh` Schritt 4b;
  nach «Beantwortet» verschoben. Verbleibende offene Punkte neu nummeriert (0a, 1–3).

## 2026-07-29 (Wissens-Chef Run 20) — ERST-PRUEFUNG dieser KB im Cross-KB-Lauf
- **[befund, geht an Raphael] Der Hub widerlegt seine eigene, tagesaktuelle Regel.** Die in
  `wiki/kontext-architektur.md` gefuehrte Entscheidungsregel («automatisch oder lazily?») schliesst
  Loops, Infrastruktur und Messwerte ausdruecklich aus dem @-Import aus. **Am selben Tag** wurde
  `rules/rollen-taxonomie.md` importiert (CLAUDE.md:300) — mit genau diesem Inhalt:
  90-%-Rechenzeit-Messung, 10'501 Laeufe, 10'017 Fehlstarts, drei Loop-Scripts. Der Chef greift
  **nicht** selbst ein (Rollen-Taxonomie Regel 4: messen und berichten, nie automatisch durchsetzen);
  als Entscheid vorgelegt, mit einer dritten Option als Vorzugsvariante, die keine Ausnahmeklausel
  braucht.
- **[korrektur, mit abgewehrter Fehlkorrektur] Das eigene Grundkontext-Budget war am Messtag zu
  tief.** Gefuehrt waren 19 Importe / 87'398 B; nachgemessen sind es **20 Importe / 96'946 B /
  ~24'236 Token**. Die bestehende Ersparnis-Zeile (105'573 → 87'398 B, 18'175 B, 17 %) durfte dabei
  **nicht** ueberschrieben werden — sie misst die Wirkung des Eingriffs am Commit `29bcb1ac`; das
  nachtraegliche Wiederanwachsen ist eine andere Groesse. Beides steht jetzt getrennt, mit Messweg
  (`stat -f%z` ueber CLAUDE.md **plus** die Dateien aus `grep '^@/Volumes' CLAUDE.md` — CLAUDE.md
  selbst zaehlt mit) und Zeitstempel, weil der Wert nachweislich in Minuten veraltet.
- **[verlinkung] Null Querverweise zu `spec`,** obwohl `kontext-architektur` und
  `environment-jans-hub` dieselbe Sache aus zwei Winkeln beschreiben. Beidseitig verlinkt: diese KB
  fuehrt den **gemessenen Ist-Zustand**, `spec` das **formale Layer-3-Modell**. Die Baustein-Tabelle
  in `spec` bleibt inhaltlich stehen (sie enthaelt eine Zuordnung, die es hier nicht gibt).
- **[kein Befund, ehrlich vermerkt]** Die Abgrenzung gegen die Rules ist in `CLAUDE.md` sauber
  formuliert («diese KB begruendet die Konfiguration, ersetzt sie nicht»). Zwei gemeldete
  Doppelspur-Vorwuerfe (Hub-Inventar-Zahlen, Herkunft des Wissens-Layers) wurden **widerlegt**.
- Geaendert: `wiki/kontext-architektur.md`.


## 2026-07-29 (Nachtrag) — Entscheide Raphael zu den offenen Kandidaten

- Drei-Marken-/Website-Strategie verworfen: beide DOCX im OneDrive-Ordner `Agenten`
  geloescht (SharePoint-Papierkorb). Ordner `Prompts` komplett geloescht.
- 4-Agenten-Blaupause (Indexer, Baueingabe-Check, Brandschutz, QA-Trace) als
  Skill-Kandidat aufgenommen; Destillat im [[methoden-register]], Pendenz fuer
  hub-chef im Logbuch.
- Register + QUESTIONS nachgefuehrt, Scan-Stand neu eingefroren (8 Ordner).

## 2026-07-29 — Methoden-Register + SPW-Destillat + Lern-Loop `methoden-radar`

- Vollanalyse des OneDrive-Ordners `03 Prompteingaben` (alle 9 Unterordner, Auftrag
  Raphael): Spec, Anthropic-Lecture und Archetypen waren bereits implementiert;
  «Methode SPW» erwies sich als die Video-Blaupause des bestehenden Wissens-Layers
  (inkl. wortgleicher 7 Audits im Skill `wissenscheck`), war aber nirgends als Quelle
  registriert.
- `wiki/methode-spw-wissensbasis.md` neu — Destillat der 30 Screenshots + Abgleich
  Video ↔ Hub-Implementation (kein inhaltliches Delta gefunden).
- `wiki/methoden-register.md` neu — kanonisches Register aller Quellen aus
  `03 Prompteingaben` mit Destillat-/Implementations-/Trainingsstand und
  Verifikations-Rotation; 3 offene Kandidaten fuer Raphael erfasst (Drei-Marken-
  Strategie, Baueingabe-Check/Trace-Matrix, Ordner Prompts).
- `raw/_INGESTED.md` neu (fehlte in dieser KB) — Lecture-Slides + externe Quellen.
- Lern-Loop `methoden-radar` eingerichtet: `scripts/methoden-scan.sh` (deterministischer
  Delta-Scan) + Scheduled Task woechentlich Mo 21:00. Konzept:
  `docs/konzepte/260729-Methoden-Lern-Loop/`.
- INDEX + QUESTIONS nachgefuehrt.

## 2026-07-29 — KB angelegt

- KB `wissen/claude-code/` neu angelegt (Ordner `raw/ wiki/ outputs/`, `CLAUDE.md`,
  dieses CHANGELOG). Anlass: Anthropic-Lecture vom 29.07.2026; Auftrag Raphael,
  die Prinzipien in die Hub-Architektur zu implementieren.
- `raw/`: 32 Lecture-Slides (IMG_5458 bis IMG_5489) aufgenommen, Quelle
  `OneDrive/AD - 01 Geschaeftsfuerung/JANS AI/260729 Antrophic Lecture/`.
- `wiki/lecture-260729-anthropic.md` — vollstaendiges Destillat aller 32 Slides
  (acht Tips, Kontext-Hierarchie, Team-Matrix, Keybindings, SDK, Multi-Claude)
  inkl. eines Abschnitts, was die Lecture NICHT behandelt (Ressourcengrenzen).
- `wiki/kontext-architektur.md` — gemessener Ist-Zustand der vier Kontext-Schichten
  im Hub, Grundkontext-Budget vor/nach der Diaet 2.0, Entscheidungsregel
  «automatisch gegen lazily».
- `wiki/INDEX.md` und `wiki/QUESTIONS.md` angelegt; fuenf offene Punkte erfasst
  (Enterprise-Policy-Ebene, GitHub-App, User-Level-Slash-Commands, Versionsbindung,
  exakte Tokenzahl).
