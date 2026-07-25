# Training-Run 43 — Immobilienbewertung (2026-07-25)

## Ablauf

1. Stand gelesen: `training/PROGRAMM.md`, `training/curriculum.md`, `raw/_INGESTED.md`,
   `wiki/wissensluecken.md` (komplett, inkl. Abschnitt B).
2. Kollisionsschutz (Rule `auto-verbesserungen` 260724) geprueft: `ps aux` zeigt nur den
   eigenen Prozess dieses Laufs, keine zweite `immobewertung-training`-Instanz.
3. Bewertungsordner erneut direkt gelistet (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE`):
   **kein neuer JANS-Bewertungsfall** — weiterhin 11 Fallordner, juengster unveraendert
   Wangen 25 Bahnhofstrasse 27 (8855, Ordner-Datum 09.06.2026).
4. Marktpuls bewusst **nicht** per Web geprueft (Drossel-Rule 260714): naechster amtlicher
   Wert (Referenzzins/SREBI) erst 01.09.2026, kein Grenznutzen seit Run 17/34.
5. Kein Verifier-Lauf (alle Kernkomplexe seit Runs 18-22/36 bereits reproduziert oder
   korrigiert).

## Befund

**Elfter Delta-Null-Bestaetigungslauf in Folge** — kein neuer Ingest, keine eigene
Artikelaenderung. Die KB bleibt saturiert (Wuest-Kurs + E1-E10 + alle auto-schliessbaren
T-Aufgaben abgearbeitet); ohne neues Rohmaterial (D1/D2/D5/D6-Rest/D7/D9/D10) oder einen
neuen JANS-Fall gibt es fuer den Loop keine selbststaendig schliessbare Aufgabe mehr.

**Neu registriert (nicht durch diesen Loop behoben):** Im Git-Index lagen beim Start dieses
Laufs bereits **staged, nicht committete** Aenderungen eines fremden, bereits beendeten
Prozesses (Wissens-Chef Cross-KB-Run 15, 25.07.2026) an `CHANGELOG.md` und
`wiki/realwert-sachwert.md` dieser KB vor — ein `needs-decision`-Vermerk: der E1-Entscheid
vom 12.07.2026 setzt den **Regelgeschoss-Faktor HNF/GF auf 0.70 «kanonisch, Hub-weit»**,
waehrend der eigene fuehrende Flaechen-Artikel `flaechendefinitionen-sia:84` **0.75** fuehrt
(Flaechenkonzeption Wohnen, R. Jans 20.10.2024 — genau der Wert, den auch diese KBs
T8/Run-4-Eintrag oben in `wissensluecken.md` als belegt fuehrt). Adversarial durch den
Wissens-Chef **bestaetigt**, als Fachentscheid an Raphael delegiert; bis dahin gilt 0.70
weiter. Diese Datei-Aenderungen wurden **nicht** angefasst (Rule 260724: pathspec-begrenzt
committen, keine Fremd-Staged-Dateien in den eigenen Commit ziehen) — sie bleiben im Index
fuer den zustaendigen Prozess/Raphael. Details: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

**Kein Eskalations-Delta** bei den zwei laenger bekannten Pendenzen (Loop-Ruecktaktung
19.07., Oberrieden-Hoehenkorrektur 17.07.) — beide unveraendert in `logbuch/fristen.md`.

## Naechster Schritt

Unveraendert: der Loop wartet auf (a) einen neuen JANS-Bewertungsfall, (b) neues Rohmaterial
zu D1/D2/D5/D6-Rest/D7/D9/D10, oder (c) den 01.09.2026-Marktwert. Zusaetzlich jetzt: der
Regelgeschoss-Fachentscheid (0.70 vs. 0.75) liegt bei Raphael — sobald entschieden, ist die
Aktualisierung von `residualwertmethode`/`realwert-sachwert` ein kleiner, klar umrissener
Trainings-Task.
