# Synergie-Lauf 13 — 20.08.2026 (Tagestakt)

**Delta-Basis:** 19.08.2026 17:10 · **Fenster:** 23,8 Stunden · **109 Commits**
**Laufzeit:** 17:10–17:55 CEST · **Modus:** inline, kein Fan-out

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-08-20 17:10 CEST` gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log` (letzter Eintrag `2026-08-20T16:59:39 push OK
(652a565d …)`) — keine Abweichung, kein Chronik-Eintrag nötig.

## Schritt 1 — Delta mit Gegenprobe

Gegenprobe bestanden: der neueste Treffer im gefilterten Log (`652a565d`) ist zugleich der
tatsächliche HEAD, der älteste (`eda03310`, 19.08. 17:15) schliesst lückenlos an die
Delta-Basis an. Kein Uhr-Verdacht.

| Grösse | Wert |
|---|---|
| Neue Bausteine (Skills/Agenten/Rules/Connectoren/Services/Commands) | **0** |
| Geänderte Bausteine | **6** |
| KB-Aktivität (Top) | normen 34 · energie 29 · twin 20 · koordination 7 · bauprodukte 4 |

Geänderte Bausteine: `connectors/WEGE.md` (4 Commits, +84/−1), `skills/wettbewerb/SKILL.md`,
`skills/brandschutz/SKILL.md`, `rules/jans-dna-facetten.md`, `rules/anrede-kontakte.md`,
`agents/flaechen-nachweis.md`.

## Schritt 2 — Früh-Ausstieg

Greift nicht (6 geänderte Bausteine). Voller Lauf.

## Schritt 3 — Befunde

### SYN-37 — brandschutz bindet die Normen-KB nur im Modus B ein

Der Abschnitt «Verbindliche Kontextquellen (immer konsultieren)» sagte: «Bei jeder
Brandschutz-Anfrage sind diese **beiden** Quellen primär auszuwerten» — beides SharePoint-
**Rohbibliotheken**. Die KB `wissen/normen` mit rund 50 VKF-Destillaten stand nur im
Modus-B-Block (Z. 252 und Z. 303, beide innerhalb Z. 195–304). Modus A (Ertüchtigungs-
Factsheet, Ausführungsphase) und der Bodenbelag-Praxisteil zitieren «gem. VKF-Anerkennung»
und «VKF-Entsprechung (Stand 2026)» ohne eine einzige Ziffern-Fundstelle.

**Die Folge ist gemessen.** Die drei einschlägigen Destillate tragen die richtige
BSR-Nummernzuordnung seit dem **25.07.2026** (`--diff-filter=A` datiert) und nennen den Skill
namentlich als Abnehmer. Der Skill führte die vertauschte Zuordnung bis zum **20.08.2026**
(`865d1df3`) weiter. 26 Tage, in denen der belegte Wert im selben Repo lag. Die Rückkante
KB → Skill war vorhanden; die Hinkante fehlte im Contract.

**Materieller Zweitfund als Nachwirkung derselben Vertauschung:** Der Sachverweis für die
**Anforderung** an Bodenbeläge im Fluchtweg von Spitälern nannte BSR 13-15. Richtig ist
BSR 14-15 «Verwendung von Baustoffen», Ziff. 2/3 (Gebäudeausbau: Innenwände, Decken, Böden,
Fluchtwege). BSR 13-15 ist die **Klassifikationsquelle** — ihr eigenes Destillat sagt Z. 15,
sie sei die «Nachschlagequelle für die RF-Klassen, die in anderen Richtlinien (z.B.
Verwendung von Baustoffen 14-15de) als Anforderung genannt werden, aber selbst nicht
definiert sind». Der Skill produziert genau dort seine Bodenbelag-Nachweise (Praxisfall
KISPI Bolon-Sisal).

**Drittfund:** Das Destillat `vkf-brl-verwendung-baustoffe.md` Z. 129 richtet einen offenen
Prüfauftrag namentlich an diesen Skill (cr-Ausnahmekatalog Ziff. 2 Abs. 3 lit. a-i, neu ab
Fassung 01.01.2017), der im Skill nirgends ankam.

**Umgesetzt** (active-with-flagging): Normen-KB als Abschnitt **0** mit Rangfolge
«destilliert vor roh» und Verweis auf die Fassungsmatrix; `normen-referenz` ins
Contract-Pflichtfeld; Sachverweis **sachbezogen** auf 14-15 berichtigt (13-15 bleibt als
Klassifikationsquelle stehen, weil die EN↔RF-Umrechnungstabelle korrekt auf ihr fusst —
Lehre 1 aus Rule `bkp-2017-referenz`: nicht mechanisch ersetzen); cr-Prüfauftrag als
markierter offener Punkt übernommen, **mit der Einschränkung, die das Destillat selbst
macht** (die Ausnahme nimmt Fluchtwege aus, der Spielraum liegt in den angrenzenden Flächen).

### SYN-38 — WEGE-Register erklärt pdf2dwg zum kanonischen Ort und legt selbst dort ab

`connectors/WEGE.md` Z. 60–61 sagt wörtlich, die CAD-Sackgassen stünden «vollständig in
`skills/pdf2dwg/SKILL.md` (Abschnitt Grenzen)» und würden «hier bewusst nicht kopiert». Im
Fenster wuchs das Register um vier CAD-Commits und trug zwei Angaben ein, die im Skill
fehlen: die Stationsverfügbarkeit (LibreDWG und `~/.venvs/pdf2dwg` nur auf dem Mac Mini,
samt zwei Ersatz-Prüfwegen) und den Nachbarweg 3D-Hersteller-DWG nach 2D-Plan über Rhino.
Gemessen: Register nennt den Skill **4×**, Skill nennt das Register **0×**.

**Umgesetzt:** Verweis-Block im Abschnitt «Grenzen», der beide Angaben nennt und
zurückzeigt. Bewusst **kein** Kopieren des Registerinhalts — das erzeugte genau die
Divergenz, die das Register mit seinem Satz vermeiden will.

## Geprüft, kein Befund

1. **`skills/wettbewerb` + `agents/flaechen-nachweis`** (`9317e163`) — Gegenrichtung
   desselben Normen-Laufs, **beidseitig sauber**: beide tragen `normen-referenz` neu im
   Contract, beide zitieren `sia-416-2003.md` mit Fundstelle, der Skill grenzt zusätzlich
   gegen die 2015 zurückgezogene SIA 416/1:2007 ab.
2. **`rules/jans-dna-facetten.md`** (`d57a23d4`, 44/59) — Kompilierweg bestätigt: derselbe
   Commit ändert alle sechs Quell-Artikel unter `wissen/twin/wiki/`. Gleiche Prüfung wie
   Lauf 11 und 12.
3. **`rules/anrede-kontakte.md`** (`16d7d6e3`, 7/0) — drei neue Kontakte aus
   `twin-mail-training` Batch 99, Beleg in der Datei selbst genannt.
4. **Widerlegte Hypothese (adversariale Gegenprüfung).** Der Verdacht, die neue
   VKF-Fassungsmatrix liege unregistriert in `training/`, trägt nicht: `wissen/normen/CLAUDE.md`
   Z. 13 führt `training/` ausdrücklich als Register-Bestandteil, und die Matrix ist in
   `wiki/REGISTER.md` (Abschnitt D), `wiki/QUESTIONS.md`, `destillate/INDEX.md`,
   `training/norm-inventar.md` und im CHANGELOG registriert. Der Normen-Lauf hat vollständig
   gearbeitet; die Lücke lag allein auf der Abnehmerseite.

## Gemessen, bewusst nicht aufgerollt

Über alle elf in `rules/normen-referenz.md` Z. 30–32 genannten Abnehmer geprüft: vier weitere
führen `normen-referenz` nicht im Contract — `honorarberechnung-sia102`, `kostenschaetzung`,
`terminplanung`, `stockwerkeigentum`. Keiner hat sich im Fenster bewegt, und **SYN-24 (Lauf 06)
hat die Grundsatzfrage bereits anders entschieden**: der Vorbehalt gehört in die importierte
Rule, die alle elf erreicht, nicht in elf Skill-Kopien. Bei `brandschutz` war die Umsetzung
dennoch richtig, weil zwei Dinge zusammenkamen: Bewegung im Fenster (`865d1df3`) und ein
**materieller** Befund (falsche Fundstelle im Praxisteil), nicht bloss ein formales Feld.

SYN-24 (c) — die mechanische Absicherung, die Skill-Zitate gegen den `status:` ihres
Destillats hält — bleibt offen und hätte diesen Fall **nicht** gefangen: die Nummer war
falsch, nicht der Status.

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen vorher/nachher |
|---|---|---|
| `skills/brandschutz/SKILL.md` | **12/3** (drei beabsichtigte Zeilenersetzungen) | 399/408 |
| `skills/pdf2dwg/SKILL.md` | **10/0** (reines Anhängen) | 88/98 |
| `wissen/koordination/SYNERGIE-REGISTER.md` | **61/0** | 444/505, Tabellenzeilen 36/38 |

Alle Werte mit `git diff --numstat` gemessen, nicht geschätzt. Gegenprobe am Objekt: im
brandschutz-Skill kommt «13-15» noch drei Mal vor, jedes Mal korrekt (Destillat-Dateiname,
Bibliotheks-Beschreibung, ausdrücklich benannte Klassifikationsquelle); die
Anforderungsaussage lautet nun 14-15.

## Keine Mail

Still beendet nach Leitplanke. Kein P1-Blocker. Wesentliches trägt `hub-chef-taeglich` ins
Tagesbriefing.
