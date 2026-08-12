# Synergie-Lauf 04 — 13.08.2026

Skill `synergie-orchestrator`, Scheduled Task `synergie-lauf-monatlich`. Der Lauf startete
unbeaufsichtigt am 12.08. gegen 23:28 und wurde am 13.08. gegen 01:10 interaktiv korrigiert
und zu Ende gefuehrt. Delta-Basis: 01.08.2026 14:20 (Ende Lauf 03) bis 13.08.2026 01:05.
Leichtgewichtiger Inline-Lauf, kein Multi-Agent-Fan-out.

## 0. Messfehler dieses Laufs — zuerst, weil er den ganzen ersten Durchgang entwertet hat

**Die Stationsuhr ging waehrend des unbeaufsichtigten Teils zehn Tage nach.** `date` meldete
`2026-08-03 23:28 CEST`, tatsaechlich war es der 12.08. spaetabends; die Uhr hat sich gegen
00:51 selbst korrigiert (belegt an den Scheduler-Zeitstempeln: `heartbeat-daily`,
`baurecht-buch-training` und `twin-mail-training` tragen `lastRunAt 2026-08-12T22:51Z`, also
00:51 CEST am 13.08., waehrend dieser Lauf `2026-08-03T21:28Z` gestempelt bekam).

Beweisquelle nach Rule `auto-verbesserungen` 260730b: der native Synology-Log
`sync-tasks/log/selfcommit-202608.log` laeuft lueckenlos durch und haengt an keiner
Stationsuhr — 226 Zeilen am 05.08., 222 am 08.08., 192 am 10.08., 124 am 12.08., 24 am 13.08.,
letzter Eintrag `2026-08-13T01:04:27`. Der Kalender war also nie beim 03.08.

**Die teure Folge ist nicht das Datum, sondern die Messung.** `git log --since=2026-08-01T14:20`
lieferte unter der schiefen Uhr **262 Commits mit Neuestem vom «03.08. 23:26»**. Real sind es
**1111 Commits** bis zum 13.08. 01:04. Die Traversierung brach an den schief datierten
Commits ab, und das Ergebnis sah dabei vollstaendig aus — kein Fehler, keine Warnung, nur ein
plausibel wirkendes Viertel der Wahrheit.

Daraus entstanden im ersten Durchgang zwei falsche Aussagen, die hiermit zurueckgezogen sind:

- «Das Delta ist duenn» — es umfasst zwoelf Tage, vier neue Rules, zwei neue Connectoren,
  einen neuen Command und einen neuen Skill.
- «Der Takt ist zu eng, naechster Lauf fruehestens 01.09.» — diese Empfehlung beruhte allein
  auf dem vermeintlichen Zwei-Tages-Abstand zu Lauf 03. Der reale Abstand betraegt zwoelf Tage.
  **Die Empfehlung ist gegenstandslos.**

**Lehre, gleiche Familie wie 260730b und 260807:** ein knappes Suchergebnis ist zuerst eine
Aussage ueber das Werkzeug, nicht ueber die Quelle. Bei jeder Delta-Messung gehoert die
Gesamtzahl gegengeprueft (`git log --oneline | wc -l` ohne Filter gegen die gefilterte Zahl),
und vor jeder datierten Arbeit die Stationsuhr gegen den Synology-Log.

**Nebenbefund fuer kuenftige Laeufe:** die Commit-Daten im Fenster 03.08.–13.08. sind
teilweise unbrauchbar. Von der Synology geschriebene Commits (`nas-selfcommit`) tragen die
korrekte Zeit, vom MacBook waehrend der Schieflage geschriebene eine um zehn Tage
zurueckliegende. Deshalb wird unten mit **Commit-Hashes** belegt, nicht mit Commit-Daten.

## 1. Delta-Inventar (korrigiert, echtes Fenster 01.08. 14:20 – 13.08. 01:05)

| Kategorie | Delta |
|---|---|
| Commits | **1111** |
| Neue Skills | **1** — `energie` (Freigabe Raphael, Meta-Punkt M2) |
| Neue Rules | **4** — `interaktive-eingriffe`, `modellwahl-routine`, `wege-und-vollmachten` (alle drei importiert), `jans-dna-facetten` (bewusst nicht importiert) |
| Neue Connectoren | **2** — `connectors/m365-graph.mjs`, Wege-Register `connectors/WEGE.md` |
| Neue Commands | **1** — `/tiefenrecherche` |
| Neue Agenten / Services | 0 |
| Geaenderte Skills | u.a. `heartbeat` (5x), `hub-chef` (4x), `energie`, `zahlungsabgleich`, `wissenscheck`, `twin`, `korrektur`, `planungsgrundlagen`, `kostenschaetzung`, `ausschreibung`, `brandschutz`, `grobkosten-onepager`, `healthcare-wirtschaftlichkeit`, `behoerden-vorabklaerung` |
| Geaenderte Rules | `betrieb-chronik` (19x), `auto-verbesserungen` (11x), `bkp-2017-referenz` (3x), `jans-dna` (3x) |
| KB-Bewegung (Dateiaenderungen) | `normen` 259 · `energie` 251 · `twin` 143 · `baurecht` 107 · `bauprodukte` 62 · `planungsgrundlagen` 58 · `immobilienbewertung` 28 · `grobkosten` 27 |

### Verdrahtungs-Check der uebersehenen Bausteine (nachgeholt, gemessen)

Alle neuen Bausteine des Fensters sind **korrekt registriert** — die erfreuliche Gegenprobe
zu den Befunden unten:

| Baustein | Registrierung |
|---|---|
| `interaktive-eingriffe` | `rules/README.md` ja · @-Import in CLAUDE.md ja |
| `modellwahl-routine` | README ja · @-Import ja |
| `wege-und-vollmachten` | README ja · @-Import ja |
| `jans-dna-facetten` | README ja · bewusst **kein** @-Import (Diaet-Entscheid) |
| `connectors/m365-graph.mjs` | `connectors/README.md` ja · **Allowlist `.claude/settings.json`: 0 Treffer** |
| `connectors/WEGE.md` | `connectors/README.md` ja · CLAUDE.md ja |
| `/tiefenrecherche` | CLAUDE.md-Command-Tabelle ja |
| Skill `energie` | CLAUDE.md ja · `rollen-map.tsv` ja |

Einzige offene Kleinigkeit: `m365-graph.mjs` fehlt in der Werkzeug-Allowlist
(`.claude/settings.json`). Nach Rule 260609 waere das direkt zu ergaenzen; nicht im Lauf
ausgefuehrt, weil `settings.json` geteilte Konfiguration ist. Als Empfehlung gefuehrt.

## 2. Befunde (gegen den heutigen Dateistand gemessen, daher unberuehrt vom Uhrfehler)

Die drei Befunde stammen aus Greps ueber den **aktuellen** Dateibestand, nicht aus dem
Git-Fenster. Sie stehen unabhaengig vom Messfehler.

### Befund 1 → SYN-20 (Typ 1, Ketten-Luecke)

**Der neue Skill `energie` ist einseitig verdrahtet.** `skills/energie/SKILL.md` Z. 80–82
benennt neun Fach-Skills, die «hier belegen» (`machbarkeit`, `machbarkeit-studio`,
`kostenschaetzung`, `grobkosten-onepager`, `ankaufspruefung`, `immobilienbewertung`,
`healthcare-wirtschaftlichkeit`, `wettbewerb`, `auflagebereinigung`), dazu Z. 79 den Agenten
`energie-berater` als Fan-out.

Gegenprobe ueber alle zehn Dateien: **0 von 10 nennen den Skill `energie`**, 0 von 10 nennen
`wissen/energie`. Einzige gesetzte Rueckkante ist `planungsgrundlagen` (3 Treffer, Z. 29 und
Z. 65–70) — dort ist die Uebergabe sauber und datiert dokumentiert. Das ist das SYN-10-Muster:
eine Kante, die nur der Zulieferer kennt.

### Befund 2 → SYN-20 (Typ 1, Contract-Mangel — im Lauf behoben)

`skills/energie/SKILL.md` trug einen `## Contract`-Block mit Trigger/Inputs/Output/Nicht-Ziel,
aber **keines der drei Pflichtfelder** `Abhaengige Rules` / `Vorgelagert` / `Nachgelagert`
(`skills/SKILL-CONTRACT.md`, Abschnitt 2). Genau diese Felder tragen den Prozess-Graphen.

Zweiter neuer Skill in Folge mit diesem Defekt (nach SYN-18, `wissens-destillat`). Zusammen
mit den vier Skills ganz ohne Contract-Block (SYN-14, in diesem Lauf nachgemessen und
unveraendert) ergibt das ein Muster:

| Skill | `## Contract` | Vorgelagert | Nachgelagert | Abh. Rules |
|---|---|---|---|---|
| `pdf2dwg` | nein | nein | nein | nein |
| `oereb-schwyz` | nein | nein | nein | nein |
| `planungsgrundlagen` | nein | nein | nein | nein |
| `volumenstudie` | nein | nein | nein | nein |
| `energie` (vor dem Fix) | ja | nein | nein | nein |

**Im Lauf umgesetzt** (active-with-flagging, mechanisch): die drei Felder in
`skills/energie/SKILL.md` nachgetragen, inhaltlich aus dem Skill-eigenen Text abgeleitet.

### Befund 3 → SYN-21 (Typ 1, Service zeigt auf den abgeloesten Weg)

`services/KATALOG.md`, S6 «Energie-Vorabklaerung», Zeile «Pipeline» nennt weiterhin
«Agent `energie-berater` (PL-04) · KB `wissen/energie/` · Grundlagen via
`planungsgrundlagen`» — 0 Treffer auf den Skill `energie`. Die Fuehrung liegt aber seit der
Verselbstaendigung beim Skill; `planungsgrundlagen` hat die Abgabe bereits vermerkt.

Der Agent bleibt richtig (er ist weiterhin der Fan-out), die **Fuehrung** stimmt nicht mehr.
Nicht selbst geaendert — der Katalog ist Raphaels Produkttext. Vorgeschlagene Fassung:
«Skill `energie` (fuehrt die Fachantwort) · Agent `energie-berater` (Fan-out PV/U-Wert/
Nachweis) · KB `wissen/energie/` · Grundlagen via `planungsgrundlagen`».

### Befund 4 → SYN-22 (Typ 1, Nebenwirkung der Grundkontext-Diaet; verschaerft SYN-08)

Die Grundkontext-Diaet Runde 2 Schritt 4 (Commit `b2f29162`, Freigabe Raphael) hat den
DNA-Feinregelsatz (30.7 kB) aus dem immer geladenen `rules/jans-dna.md` nach
`rules/jans-dna-facetten.md` ausgelagert — bewusst nicht importiert. Der importierte Kern
traegt die Leseanweisung «vor JEDEM ausgehenden Texterzeugnis zu lesen».

Explizit nachverdrahtet wurden fuenf Stellen (`grep -rl jans-dna-facetten`):
`skills/twin`, `skills/korrektur`, `agents/email`, `agents/dokument`,
`scripts/mail-draft-guard.sh` (+ `rules/README.md`, `skills/twin/tools/build_dna.py`).

**Nicht verdrahtet**, je 0 Treffer auf `jans-dna-facetten` **und** 0 auf `jans-dna`:
`linkedin-texter`, `linkedin-engagement`, `linkedin-stratege`, `bericht-autor`,
`website-content` (Agent + Skill), `marketing`, `protokoll`, `telesales`.

**Ehrliche Abgrenzung:** keine harte Kappung. Die Leseanweisung steht im importierten Kern und
erreicht jede Session. Verschoben hat sich die Verlaesslichkeit: vier Konsumenten haben einen
expliziten Zeiger, neun verlassen sich allein auf die generische Pflicht. Betroffen ist
ausgerechnet der LinkedIn-Strang, den SYN-08 seit dem Erstlauf als zweites Stimmen-Modell
fuehrt (0 Treffer auf `twin` in allen drei LinkedIn-Agenten).

**Adversariale Gegenpruefung:** Neun weitere Zeiger auf eine 30-kB-Datei koennten den
Diaet-Effekt untergraben. Gegenmassnahme ist die Formulierung — bedingter Zeiger («vor dem
Ausformulieren eines ausgehenden Textes lesen»), kein Pauschal-Import. Damit bleibt der
Gewinn (117.2 → 85.9 kB, minus 26 %) erhalten.

## 3. Status-Nachfuehrung offener Eintraege

- **SYN-02**: unveraendert. `volumen_generator.py` kennt weiterhin nur
  `--parzelle/--out/--name/--variante` (Z. 128–131).
- **SYN-13** (Healthcare-Typologie-Asymmetrie): unveraendert trotz Bewegung in
  `wettbewerbs-dna` (15 Dateiaenderungen im Fenster). Etappe 4 Lauf 01 vertiefte
  **2408 BIWAK** (SAC-Huette), nicht Healthcare;
  `wissen/entwurfs-referenzen/wiki/typologien/` enthaelt weiterhin nur `INDEX.md` und
  `bildung.md`. Kein `healthcare.md`.
- **SYN-14**: unveraendert offen, alle vier Skills weiterhin ohne Contract-Block. Durch
  SYN-20 zum Muster verstaerkt.
- **SYN-08**: durch Befund 4 verschaerft, bleibt offen.

**Nicht neu aufgerollt** (Compounding): SYN-01, SYN-04, SYN-05, SYN-06, SYN-09, SYN-11,
SYN-15. Einschraenkung in Ehrlichkeit: bei einem Zwoelf-Tage-Fenster mit 1111 Commits ist
diese Auswahl nicht mehr so sicher wie bei einem Wochenfenster — mit dem neuen taeglichen
Takt (Abschnitt 5) verschwindet dieses Problem.

## 4. Geschaeftsmodell-Ableitung (Phase 5)

**Kein neuer Service-ENTWURF.** Das Delta ist ueberwiegend Infrastruktur (Kontingent-Regime,
Vollmachten, Wege-Register, Kontext-Diaet) plus starkes KB-Wachstum in `normen` und `energie`.
Einziger Katalog-Bezug ist die Korrektur an S6 (Befund 3), also Produktpflege.

Beobachtung: mit dem eigenstaendigen Skill `energie` und 251 KB-Dateiaenderungen im Fenster
steht S6 auf deutlich reiferem Fundament als bei der Aktivierung. Ob das Preis oder Umfang
aendert, ist ein Entscheid Raphaels, keine Messung.

## 5. Takt

Der urspruenglich hier stehende Vorschlag «fruehestens 01.09.» ist zurueckgezogen (siehe 0.).
**Raphael hat am 13.08.2026 taeglichen Takt angeordnet.** Das ist mit dem korrigierten Befund
gut begruendbar: zwoelf Tage Abstand haben ein Delta erzeugt, das ein einzelner Inline-Lauf
nicht mehr sauber traegt — die Compounding-Auswahl in Abschnitt 3 musste bereits mit einem
Vorbehalt versehen werden. Ein Tagesdelta ist klein genug, um vollstaendig geprueft zu werden.

Umsetzung: Task `synergie-lauf-taeglich`, taeglich 17:00, mit Frueh-Ausstieg bei
strukturellem Nulldelta und einem Uhr-Check als erstem Schritt.

## 6. Umgesetzt in diesem Lauf

1. `skills/energie/SKILL.md` — die drei Contract-Pflichtfelder nachgetragen.
2. `SYNERGIE-REGISTER.md` — SYN-20 bis SYN-22 neu, SYN-02/08/13/14 nachgefuehrt, Datierung
   und Delta-Basis des Laufs korrigiert.
3. CHANGELOG-Eintrag in `wissen/koordination/`.
4. Laufbericht umbenannt (`2026-08-03_…` → `2026-08-13_synergie-lauf-04.md`) und inhaltlich
   korrigiert.
5. Eintrag in `rules/betrieb-chronik.md` zum Uhrfehler und zur `git log --since`-Falle.

## 7. Empfehlungen an Raphael (nichts davon eigenmaechtig ausgefuehrt)

| Prio | Empfehlung | Aufwand |
|---|---|---|
| 1 | Rueckkanten auf `energie` in den neun Fach-Skills setzen | klein, 9 Dateien |
| 2 | S6-Pipeline-Zeile im Katalog auf den Skill `energie` umstellen | sehr klein, 1 Zeile |
| 3 | LinkedIn-/Website-/Protokoll-Strang mit bedingtem Zeiger auf `jans-dna-facetten.md` versehen (schliesst SYN-08 halb) | klein, 9 Dateien |
| 4 | Mechanische Contract-Pruefung als Script, in `heartbeat` oder `wissenscheck` eingehaengt | mittel, wiederkehrender Nutzen |
| 5 | `m365-graph.mjs` in die Allowlist `.claude/settings.json` aufnehmen | sehr klein |
| 6 | Ursache der Zehn-Tage-Uhrabweichung klaeren (NTP, Sleep-Wake am MacBook) — sie hat heute eine Messung entwertet und kann jede datierte Arbeit treffen | offen |

Keine Mail versandt.
