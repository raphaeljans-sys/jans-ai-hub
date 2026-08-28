# Synergie-Lauf 21 — 28.08.2026

**Takt:** taeglich · **Delta-Basis:** 27.08.2026 17:10 (Lauf 20) · **Fenster:** 24,0 h,
110 Commits · **Zuschnitt:** inline, kein Fan-out · **Befunde:** 3 neu (SYN-56, SYN-57,
SYN-58), 1 Vorlaeufer nachgefuehrt (SYN-49), 1 aufgerollt ohne Befund (SYN-43).

## Vorpruefung

Uhr-Check bestanden: Stationsuhr 28.08. 17:10 CEST gegen den juengsten nativen
Synology-Selfcommit 17:00:06 (`selfcommit-202608.log`, mit `tail` gelesen, nicht mit `grep` —
die Datei ist nicht UTF-8). Abweichung unter zehn Minuten, kein Nachtrag noetig.

Gegenprobe der Delta-Filterung bestanden: der aelteste Treffer im Fenster (`6bdd33d55`,
27.08. 17:15) schliesst lueckenlos an die Delta-Basis an, der juengste ist der HEAD selbst
(`8cf274647`, 28.08. 17:00). Die gefilterte Zahl ist damit plausibel, die Uhr unverdaechtig.

## Delta

**Neue Bausteine: null.** `git log --diff-filter=A` ueber `skills/ agents/ rules/ connectors/
services/ commands/` liefert im ganzen Fenster keinen Treffer. Ausserhalb `wissen/` und
`logbuch/` entstand genau eine neue Datei: `tenant-hygiene/reports/260827-hygiene.md`.

**Geaenderte Rules: fuenf.** `normen-referenz` (2x) und `anrede-kontakte` (2x) tragen die
Zeitstempel 27.08. 17:22 und 17:28 und sind damit Eigenrauschen des Laufs 20 — nicht geprueft.
Es bleiben `jans-dna-facetten` (28.08. 05:58, Twin-Fidelity-Review), `betrieb-chronik` und
`auto-verbesserungen` (beide 28.08. 09:46, derselbe Commit).

**Geaenderte Scripts: eines.** `scripts/heartbeat.sh`, Commit `c09742dab`, 28.08. 09:45,
+63/−2. Daran haengt der ganze Lauf.

## Der Kern: ein Umbau, der vier Stellen nachzog und die fuenfte ausliess

Commit `80291f302` («heartbeat: fehlenden Erreichbarkeits-Check gebaut») ist gute Arbeit: er
baut den seit dem 24.08. dokumentierten, aber nie existierenden Tailscale-Check ein, testet ihn
in fuenf Szenarien inklusive des realen Ausfalls vom 20.-24.08., misst den Schreibumfang gegen
ein Backup und zieht `rules/auto-verbesserungen.md`, `rules/betrieb-chronik.md` und
`logbuch/fristen.md` nach.

Ausgelassen wurde `skills/heartbeat/SKILL.md` — ausgerechnet die Datei, die seit dem 25.08.
(SYN-49, Lauf 18) den ausdruecklichen Vorbehalt gegen dieses Script traegt. Aus dieser einen
Luecke folgen alle drei Befunde.

### SYN-56 — der Vorbehalt hat sein Vorzeichen umgedreht

Der Absatz «Schnell-Ausfuehrung» behauptete bis heute: 306 Zeilen, Commit `50f4553a9` vom
13.08., **acht** Checks, und woertlich «Namentlich der Tailscale-Check fehlt (`grep -i tailscale
scripts/heartbeat.sh` liefert null Treffer), also genau der Schutz vor dem Vorfall 260824c».

Gemessen am 28.08.: 367 Zeilen, Commit `c09742dab`, **neun** Checks, `grep -ci tailscale` = **7**.

SYN-49 hatte den Vorbehalt gegen die Selbsttaeuschung von Rule 260807 gesetzt (eine
Gegenmassnahme gilt als vorhanden, weil sie dokumentiert ist). Derselbe Absatz bewirkt jetzt die
Gegenrichtung: eine **vorhandene** Gegenmassnahme erscheint als abwesend, mit einem Testbefehl,
der das Gegenteil beweist.

Gegenpruefung, und sie greift teilweise: im Kern ist der Vorbehalt weiterhin richtig — sieben
der sechzehn Skill-Checks (8 bis 14 und 16) leistet das Script nach wie vor nicht. Falsch sind
allein die Zahlen und der Tailscale-Satz. Der Absatz wurde darum **nicht gestrichen**, sondern
auf den gemessenen Stand gebracht, mit einem datierten ⚠-Absatz, der die alte Fassung als
ueberholt ausweist.

### SYN-57 — eine Lehre, die das eigene Repo widerlegt

`rules/betrieb-chronik.md` 260828 zieht als Lehre 2: «Ein Fund, der nur im Scratchpad liegt, ist
verloren … Was ein Klassifikator blockiert, gehoert als fertiger Befehl oder als Patch **in den
Repo-Baum**, nicht in ein sessiongebundenes Verzeichnis.» Der Fristen-Nachtrag sagt dasselbe.

Am Objekt: `scripts/heartbeat.sh.VORSCHLAG-260825` ist seit Commit `2d70d19de` vom
**25.08.2026 10:00** git-getrackt im Repo-Baum. 372 Zeilen, `bash -n` fehlerfrei, zehn
Tailscale-Treffer, dieselben drei Messungen (Daemon · Peer · Waechter). Der Patch lag genau
dort, wohin die Lehre ihn verlangt — drei Tage lang, mit dem Pfad woertlich an zwei Stellen
(`skills/heartbeat/SKILL.md` Z. 361 und Fristen-Nachtrag 25.08.). Das Register wusste es
ausdruecklich: SYN-49 haelt fest, die `.VORSCHLAG`-Datei im Repo sei «kein Redundanz-Befund».

Drei Gegenproben, alle negativ: (a) unbrauchbar war die Fassung nicht — der Diff (116 Zeilen,
372 → 367) ist eine Umschrift, keine Reparatur; (b) nachtraeglich entstanden ist sie nicht —
Commit 25.08. 10:00, und der Fristen-Nachtrag von 09:4x nennt sie bereits; (c) anderswo
verzeichnet ist der Befund nicht — SYN-49 nennt die Datei, konnte die Lehre aber nicht in
Zweifel ziehen, weil sie damals noch nicht formuliert war.

Die tragende Lehre ist nicht die Ablage, sondern Rule 260809: ein vorhandener Weg, den niemand
findet, ist so gut wie keiner. Hier verschaerft, weil er zweifach vermerkt war.

Eine falsch gezogene Lehre ist teurer als gar keine: sie baut eine Gegenmassnahme gegen ein
Problem, das nicht bestand, und verdeckt das wirkliche.

### SYN-58 — zwei Nummern, ein Check

Der Lauf vom 28.08. korrigierte «Check 15» zu «der 9. Check» mit der Begruendung, die Nummer
stamme «aus einer Planung, nicht aus dem Script». Tatsaechlich fuehrt
`skills/heartbeat/SKILL.md` Z. 273 `### 15. Fernzugang (Tailscale-Waechter)` in einer
lueckenlosen Reihe `### 1.` bis `### 16.`, gesetzt am 24.08. mit Commit `ec1ee78ba`.

Beide Zahlen sind in ihrem Rahmen richtig: 9 ist die Ausfuehrungsreihenfolge im Script, 15 die
Skill-Zaehlung. Keine der beiden Stellen nannte den Rahmen. Da die Rule importiert ist und in
jeder Session im Grundkontext liegt, laeuft das auf einen offenen Widerspruch hinaus.

Behoben durch Rahmenangabe an beiden Enden, ohne eine der Nummerierungen anzutasten.

## Aufgerollt ohne neuen Befund

`rules/jans-dna-facetten.md` hat sich zum vierten Mal in Folge bewegt (21/24, netto −3,
Fidelity-Review 28.08. 05:58). Die Compounding-Klausel fuer SYN-43 greift damit zum vierten Mal;
die Sachfrage haengt unveraendert am ausstehenden Entscheid Raphaels
(`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1) und wird nicht durch einen
Aufsichtslauf entschieden. Status bleibt «teilweise umgesetzt».

## Nicht uebernommen

- **Die `.VORSCHLAG`-Datei als Doppelbestand** (Pruef-Frage 6). Seit dem Einbau ist die Lage
  neu, aber das Entfernen eines Bausteins ist nie Sache dieses Laufs — als Entscheid Raphael in
  SYN-57 vermerkt.
- **Die Riegel-Differenz** an `rules/jans-dna-facetten.md` (Datei 35'180 B, Loop meldet
  33'952/34'000). Plausibel misst der Twin-Loop nur die Facetten-Sektionen; ohne Beleg wird
  daraus kein Befund, und es ist Twin-KB-Interna.
- **Der Wegweiser-Einzeiler** zu `heartbeat` in CLAUDE.md nennt sechs Checks statt sechzehn.
  Das ist das Wegweiser-Prinzip, kein Defekt.

## Schreib-Kontrolle

Jeder Anker vor dem Schreiben auf Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen,
alle Eingriffe zeilengenau, Sicherungskopien der drei bearbeiteten Bestandsdateien im
Scratchpad.

| Datei | Umfang | vorher → nachher |
|---|---|---|
| `skills/heartbeat/SKILL.md` | 30/12 | 380 → 398 Zeilen |
| `rules/betrieb-chronik.md` | 16/0 | 2656 → 2672 Zeilen |
| `rules/auto-verbesserungen.md` | 5/2 | 412 → 415 Zeilen |
| `wissen/koordination/SYNERGIE-REGISTER.md` | 73/1 | 958 → 1030 Zeilen, 55 → 58 Tabellenzeilen |

Alle Loeschungen sind belegte, gewollte Zeilenersetzungen: der ueberholte Vorbehalts-Absatz
(12 Zeilen), die Klammer im Eintrag 260824 (2 Zeilen), die SYN-49-Statuszelle (1 Zeile). Keine
Tabellenzeile und keine Check-Nummer ging verloren.

## Offen fuer Raphael

1. **Installation des launchd-Jobs `ch.jans.tailscale-waechter`** auf beiden Stationen —
   unveraendert offen aus dem Fristen-Register, Persistenz-Klasse. Der Heartbeat meldet die
   fehlende Installation seit dem 28.08. korrekt.
2. **Verbleib von `scripts/heartbeat.sh.VORSCHLAG-260825`** — nach vollzogenem Einbau ein
   verwechselbarer Doppelbestand neben dem produktiven Script (SYN-57).
3. **SYN-43** — Anrede-Trajektorie, Entscheid steht weiterhin aus (vierte Aufrollung ohne
   neuen Befund).
