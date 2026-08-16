# Synergie-Lauf 09 — 16.08.2026

Tagestakt. Delta-Basis 15.08.2026 17:50 (Ende Lauf 08), Fenster 23,3 Stunden, 112 Commits.
Leichtgewichtig inline gefahren, kein Multi-Agent-Fan-out. Still beendet, keine Mail.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr 2026-08-16 17:10 CEST gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log`, letzter Eintrag `2026-08-16T17:00:06 push OK
(936279f2)`. Abweichung im Minutenbereich, plausibel. **Kein Uhr-Befund**, der Lauf laeuft
auf dem realen Datum.

## Schritt 1 — Delta mit Gegenprobe

| Messung | Ergebnis |
|---|---|
| Commits im Fenster | 112 |
| HEAD | `936279f2` · 16.08.2026 17:00:01 |
| Aeltester Treffer im Fenster | `d7772a3c` · 15.08.2026 18:00:01 |
| Neue Bausteine (skills/agents/rules/connectors/services/commands) | **0** |
| Neue Datei unter `skills/` | 1 — `skills/wissens-destillat/specs/buero-projekte-spec.md` (Korpus-Spec, kein Baustein) |
| Geaenderte Bausteine | **4** — `agents/twin-chef.md`, `agents/layout.md`, `skills/kostenkontrolle/SKILL.md`, `rules/jans-dna-facetten.md` |
| KB-Bewegung | `energie` 30 · `twin` 28 · `normen` 14 · `bauprodukte` 5 · `koordination` 3 · `planungsgrundlagen` 2 · `baurecht` 2 · `projekt-lessons` 1 · `entwurfs-referenzen` 1 |

**Gegenprobe bestanden:** der HEAD liegt im gefilterten Ergebnis und der aelteste Treffer
schliesst luecken los an die Delta-Basis an. Kein Verdacht auf Uhr- oder Filter-Schieflage.

Frueh-Ausstieg (Schritt 2) griff nicht: vier geaenderte Bausteine, darunter ein Agent, ein
Skill und eine Rule.

## Schritt 3 — Befunde

### SYN-31 — Das Zahlen-/Betragsformat steht nur beim einen der zwei parallelen Pruefer

`agents/layout.md` Z. 41–50 (Commit `f6d56967`, 16.08. 07:07) verankert das Schweizer
Zahlen- und Betragsformat: Dezimaltrennzeichen bei Geldbetraegen ist der **Punkt**
(CHF 4'250.50, CHF 71.00), Tausendertrennzeichen der Apostroph, «%» mit Leerschlag. Der
Abschnitt nennt seinen Anlass selbst: der Agent meldete am 16.08. in einem Radar-Lauf vier
korrekte Frankenbetraege als Fehler und verlangte Dezimalkomma — aus deutschem Sprachgefuehl
abgeleitet, nicht aus einer JANS-Quelle.

Gemessen, hub-weit:

- `grep -rln "Dezimaltrenn\|Dezimalpunkt"` ueber `rules/`, `agents/`, `skills/`,
  `templates/` → **1 Treffer, `agents/layout.md`**.
- Anders formuliert existiert die Regel ebenfalls nicht: 0 Treffer auf `Rappen`,
  `Nachkommastell`, `Betragsformat`, `Zahlenformat`.
- Was existiert, sind **Beispiele**: `agents/grobkosten-rechner.md` Z. 44 «CHF 1.45»,
  `rules/auto-verbesserungen-archiv.md` Z. 75 «CHF 21'000.00». Gelebter Gebrauch ohne
  ausgesprochene Regel — genau die Konstellation, in der ein Pruefer «korrigiert».

Die drei betroffenen Stellen:

1. **`agents/rechtschreibung.md` (der akute Fall).** Laeuft laut `skills/korrektur/SKILL.md`
   Z. 43–45 **parallel** zu `layout` im selben Harness und traegt in Z. 62 selbst eine
   Zahlen-Regel («Schweizer Tausender-Apostroph (12'500), CHF vor der Zahl») — zustaendig
   fuer Zahlen, aber ohne das Dezimaltrennzeichen. Er kann denselben Fehlbefund morgen
   erzeugen.
2. **Die Merge-Reihenfolge verschaerft es.** `korrektur/SKILL.md` Z. 49–50: «Die
   orthografisch korrigierte Fassung von `rechtschreibung` ist die Text-Basis; die
   Layout-Korrekturen von `layout` darauf anwenden.» Die Regel steht damit ausgerechnet in
   der **nachgelagerten** Instanz — ein von `rechtschreibung` eingefuehrtes Dezimalkomma
   muesste `layout` erst wieder zurueckdrehen.
3. **Die Erzeugerseite kennt sie nicht.** `agents/dokument.md` Z. 42 (DOCX/XLSX-Erzeuger)
   und `rules/jans-dna.md` Z. 25 (Mikro-Stil, importierter Grundkontext) fuehren beide nur
   Apostroph und «%»; `rules/dokument-layout-standard.md` hat 0 Treffer auf Betrag/Dezimal.

Wirkung ist nicht hub-intern: ein «korrigierter» Betrag in Offerte, LV oder Rechnung ist ein
Fehler beim Kunden. Klassifikation Typ 3 (Compounding-Luecke), nicht Typ 1 — die Lehre
existiert, sie erreicht nur einen von vier Beteiligten.

**Adversariale Gegenpruefung.** (i) Existiert das schon woanders? Zweimal gegengesucht,
einmal ueber die Begriffe, einmal ueber die Betragsmuster — nein, nur Beispiele. (ii) Ist
`rechtschreibung` ueberhaupt zustaendig, oder trennt die Arbeitsteilung sauber? Beide Agenten
grenzen sich gegenseitig ab (`layout`: «Sprache/Rechtschreibung macht der Agent
rechtschreibung»; `rechtschreibung`: «Layout/Schrift/Umbrueche macht layout»), **Zahlen
stehen aber bei beiden** — die Ueberlappung ist real und der Befund traegt. (iii) Ist es
Doppelrechnung, den Punkt an drei Stellen zu setzen? Nein bei (a)/(b), weil beide auf die
fuehrende Fassung in `layout.md` zeigen statt sie zu kopieren.

**Umgesetzt (active-with-flagging):**

- `agents/rechtschreibung.md`: Klausel unter der bestehenden Zahlen-Zeile, mit dem
  ausdruecklichen «ein Betrag mit Punkt ist KEIN Befund», dem Verweis auf die fuehrende
  Fassung und der Begruendung ueber die Merge-Reihenfolge.
- `agents/dokument.md`: Dezimalpunkt-Zeile in der Typografie-DNA, «%»-Zeile um den
  Dezimalpunkt ergaenzt.

**Vorgelegt, nicht gesetzt:** die sechs Woerter «Dezimalpunkt bei Betraegen» im bestehenden
Mikro-Stil-Punkt `rules/jans-dna.md` Z. 25. Das waere der einzige Ort, der **jede** Erzeugung
erreicht statt nur die Pruefer, und er kostet fast nichts. Er bleibt trotzdem offen: die
Datei ist importierter Grundkontext (Anwachsen begruendungspflichtig, Rule 260719), sie wird
vom Twin-Harness kompiliert (`skills/twin/tools/build_dna.py`; Z. 25 liegt zwar ausserhalb
der BEGIN/END-Marker und wuerde ueberleben), und der Kern-Fingerabdruck ist Raphaels
Stil-Definition — keine Frage, die dieser Skill entscheidet.

### SYN-32 — Takt-Divergenz beim Fidelity-Review

Commit `9846c102` (16.08. 06:08) stellt `agents/twin-chef.md` Z. 49 von «Scheduled, alle 2
Tage» auf «Scheduled, taeglich — Registry-Stand `40 5 * * *`». `skills/twin/SKILL.md` fuehrte
unveraendert an zwei Stellen «alle 2 Tage» (Z. 69 Workflow-C-Titel, Z. 93 Trainingsrhythmus).

Am Objekt gemessen statt aus dem Frontmatter geglaubt (Rule 260807): `wissen/twin/outputs/`
enthaelt 77 Fidelity-Berichte, davon **lueckenlos taeglich** 03.–08.08. und 13.–16.08. Der
Agent hat recht, der Skill war der veraltete Stand.

Gewicht ueber die blosse Doku-Drift hinaus: Rule `modellwahl-routine.md` Punkt 6 nimmt
`twin-fidelity-review` ausdruecklich von der Delegation aus, der Lauf faellt also voll im
Hauptmodell an. Wer den Takt aus dem Skill liest, unterschaetzt den Verbrauch eines nicht
delegierbaren Loops um Faktor 2.

**Zweiter Bruch beim Nachmessen:** der Registry-Prompt
`~/.claude/scheduled-tasks/twin-fidelity-review/SKILL.md` widerspricht **sich selbst** —
Frontmatter `description` «1x taeglich (05:40, fokussiert 25.07.2026)», Prompttext darunter
«FIDELITY-REVIEW (alle 2 Tage)». Die Fokussierung vom 25.07. wurde im Kopf nachgezogen, im
Auftragstext nicht; von dort stammt die Zahl, die in den Skill wanderte.

**Ehrliche Daempfung:** operativ laeuft alles richtig, der Cron entscheidet und nicht der
Prosatext. Der Schaden ist Planungswissen, kein Fehllauf.

**Umgesetzt (active-with-flagging):** beide Skill-Stellen auf «taeglich 05:40» gezogen, mit
dem Messbeleg und dem Delegationsverbot statt mit einer blossen Zahl; der Registry-Widerspruch
als ⚠-Hinweis vermerkt. **Die Registry-Datei selbst bewusst nicht angefasst** — sie liegt
stationslokal unter `~/.claude/`, ist bei zwei Registries je Station nicht kanonisch
pflegbar, und ein Scheduled-Task-Prompt ist Persistenz (Klasse 5 nach Rule
`interaktive-eingriffe`, in einem unbeaufsichtigten Lauf ohnehin nicht am Platz).

## Geprueft, kein Befund

1. **Die Gegenprobe zu SYN-24 (c) — und sie ging gut aus.** `skills/kostenkontrolle/SKILL.md`
   hat am 15.08. (Wissens-Chef Run 33, Commit `b73a6ae7`) 53 Zeilen SIA-118- und
   SIA-416-Fundstellen aufgenommen. SYN-24 (c) benennt seit dem 13.08. genau dieses Risiko:
   «nichts hindert einen kuenftigen Lauf daran, erneut einen `speculative`-Wert in einen
   Fach-Skill zu verdrahten». Gemessen: `sia-118-1991.md` und `sia-416-2003.md` stehen beide
   auf `status: established`; der Skill nennt zusaetzlich die Ausgabe, den Vertragsvorbehalt
   («gilt nur, wenn die Parteien SIA 118 als Vertragsbestandteil bezeichnet haben») und die
   Bring-Schuld SIA 118:2013. Der Fall trat also ein und wurde richtig behandelt — die
   Rule-Ergaenzung in `normen-referenz.md` Punkt 1b traegt.
2. **Die neue Korpus-Spec ist beidseitig verdrahtet.** `buero-projekte-spec.md`
   (Commit `2ac7d3cb`) ist in `KORPUS-QUEUE.md` Z. 15 mit Status «aktiv» gefuehrt;
   `skills/wissens-destillat/SKILL.md` kennt das Spec-Muster an vier Stellen (Z. 16, 26, 50,
   73) als Pflicht-Gate. Keine Insel.
3. **`rules/jans-dna-facetten.md` und die sechs twin-Facetten-Artikel.** Umlaut-Normalisierung
   und Verdichtung der Praezedenzen durch den Fidelity-Lauf; inhaltlich eine Gruss-Korrektur
   («Lieber Gruss» haengt am Register, nicht am Sachauftrag). Keine neue Kante, die Datei ist
   nicht importiert.

## Bewusst nicht als eigener Befund gefuehrt

`wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` wuchs im
Fenster um 9 Zeilen und adressiert sieben Skills namentlich; gemessen fuehren
`honorarberechnung-sia102`, `unternehmerkontrolle` und `kostenkontrolle` je **0 Treffer** auf
den Artikel oder auf `wissen/planungsgrundlagen`. Die 9 neuen Zeilen sind jedoch
ausschliesslich die KB↔KB-Gegenkante zu `energie`, die der Wissens-Chef bereits gesetzt hat;
die fehlenden Skill-Rueckkanten sind Altbestand und in diesem Fenster nicht entstanden. Sie
hier aufzumachen haette Kantenzahl statt Erkenntnis erzeugt. Vermerkt fuer den Lauf, der den
Artikel als Ganzes prueft.

## Methodischer Nachtrag zum Hinweis aus Lauf 08

Lauf 08 schlug vor, Schritt 1 um eine Messung neuer Wiki-Artikel zu erweitern, die Skills
namentlich adressieren. Sie wurde gefahren und kostete drei Sekunden. Ergebnis: im Fenster
gab es **keine** neuen Wiki-Artikel, wohl aber zehn geaenderte mit Skill-Adressierung
(`energie/BAUHERREN-FAQ` 29 Treffer, `twin/fachsignatur` 11, `normen/QUESTIONS` 10,
`planungsgrundlagen/recht-norm-ahb…` 7). Die Messung findet also mehr, als der Frueh-Ausstieg
braucht — sie taugt als Ergaenzung von Schritt 1, nicht als Ausstiegskriterium. Der Vorschlag
bleibt richtig, aber in der schwaecheren Form: **Schritt 1 ergaenzen, Schritt 2 unveraendert
lassen.**

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen vorher/nachher |
|---|---|---|
| `agents/rechtschreibung.md` | 9/0 | 88 / 97 |
| `agents/dokument.md` | 4/1 | 76 / 79 |
| `skills/twin/SKILL.md` | 10/2 | 103 / 111 |
| `wissen/koordination/SYNERGIE-REGISTER.md` | **54/0** (null Loeschungen) | 233 / 287 · Tabellenzeilen **30 / 32** |

Keine Datei hat Bestand verloren. Das Register ist reines Anhaengen; die drei Loeschungen in
den Baustein-Dateien sind beabsichtigte Zeilenersetzungen an einem gesetzten Anker
(`dokument.md` die «%»-Zeile, `twin/SKILL.md` die zwei Takt-Zeilen). Kein globales
Suchen-und-Ersetzen ueber einen Dateiinhalt.

**Selbstbefund, offen ausgewiesen:** der Schreib-Kontroll-Absatz im Register musste zweimal
nachgezogen werden, weil die zuerst notierten numstat-Zahlen **geschaetzt statt gemessen**
waren (notiert 11/1, 5/2, 2/1; gemessen 9/0, 4/1, 54/0). Inhaltlich folgenlos, methodisch
nicht: es ist derselbe Fehlertyp, den dieser Skill bei anderen prueft. Konsequenz fuer den
naechsten Lauf: die Schreib-Kontrolle erst **nach** dem letzten Edit schreiben, nie parallel
dazu.

## Nicht getan

Kein Skill geloescht oder gemergt, kein Service in `services/KATALOG.md` angefasst, kein
neuer Service-ENTWURF, keine Mail. `rules/jans-dna.md` bewusst unberuehrt (SYN-31 c). Die
stationslokale Scheduled-Task-Registry bewusst unberuehrt (SYN-32).
