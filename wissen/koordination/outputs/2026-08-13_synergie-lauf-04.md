# Synergie-Lauf 04 — 03.08.2026

Skill `synergie-orchestrator`, Scheduled Task `synergie-lauf-monatlich` (unbeaufsichtigt,
Nachtfenster). Delta-Basis: 01.08.2026 14:20 (Ende Lauf 03) bis 03.08.2026 23:30.
Leichtgewichtiger Inline-Lauf, kein Multi-Agent-Fan-out.

## 0. Vorbemerkung zum Takt (ehrlich gemessen, keine Interpretation)

Der Task ist als **monatlich** geführt (1. des Monats 04:40). Faktisch liegen die letzten drei
Läufe am 25.07., 01.08. und 03.08. — dieser Lauf fällt nur **zwei Tage** nach Lauf 03. Das
Delta ist entsprechend dünn, und der Compounding-Grundsatz (bereits geprüfte Paare nicht neu
aufrollen) trägt fast den ganzen Lauf. Der Zwischenraum 01.08. 14:28 bis 03.08. 12:00 war
zudem durch das erschöpfte Wochenlimit blockiert (belegt: `vollgas-fruehwarnung` 03.08.,
Commit `c524c858`), es liegt also kein volles Arbeitsdelta dazwischen.

**Empfehlung:** nächster planmässiger Lauf nicht vor **01.09.2026**. Ein 2-Tages-Takt erzeugt
bei diesem Skill Buchhaltung, keine Erkenntnis.

## 1. Delta-Inventar (gemessen)

Git-Log NAS-Repo seit 01.08. 14:20, gefiltert auf `skills/ agents/ rules/ connectors/
services/ commands/ wissen/`:

| Kategorie | Delta |
|---|---|
| Neue Skills | **1** — `energie` (Freigabe Raphael 03.08.2026, Meta-Punkt M2) |
| Neue Agenten | 0 |
| Neue Rules | **1** — `rules/jans-dna-facetten.md` (bewusst **nicht** importiert) |
| Neue Connectoren | 0 |
| Neue Services | 0 |
| Geänderte Skills | `twin`, `korrektur`, `hub-chef`, `planungsgrundlagen`, `energie` |
| Geänderte Agenten | `email`, `dokument` |
| Geänderte Rules | `jans-dna`, `auto-verbesserungen`, `betrieb-chronik`, `README` |
| KB-Bewegung | `energie`, `normen`, `wettbewerbs-dna`, `twin`, `auflagebereinigung`, `projekt-lessons`, `koordination` |

Der Rest des Deltas (262 Commits) ist Loop-Betrieb, Kontingent-Regime und
`nas-selfcommit`-Rauschen — strukturell ohne Synergie-Relevanz.

## 2. Geprüfte Paare und Befunde

Priorisiert auf die beiden strukturellen Ereignisse des Deltas: der neue Skill `energie`
und die Auslagerung des DNA-Feinregelsatzes.

### Befund 1 → SYN-20 (Typ 1, Ketten-Lücke)

**Der neue Skill `energie` ist einseitig verdrahtet.** Der Skill benennt in
`skills/energie/SKILL.md` Z. 80–82 neun Fach-Skills, die «hier belegen»
(`machbarkeit`, `machbarkeit-studio`, `kostenschaetzung`, `grobkosten-onepager`,
`ankaufspruefung`, `immobilienbewertung`, `healthcare-wirtschaftlichkeit`, `wettbewerb`,
`auflagebereinigung`) und den Agenten `energie-berater` als Fan-out (Z. 79).

Gegenprobe über alle zehn Dateien: **0 von 10 nennen den Skill `energie`**, 0 von 10 nennen
`wissen/energie`. Einzige gesetzte Rückkante ist `planungsgrundlagen` (3 Treffer, Z. 29 und
Z. 65–70) — dort ist die Übergabe sauber und datiert dokumentiert.

Das ist exakt das SYN-10-Muster: eine Kante, die nur der Zulieferer kennt. Der abgebende
Skill hat seine Hausaufgabe gemacht, die neun empfangenden Seiten wissen nichts von der
neuen führenden Quelle.

### Befund 2 → SYN-20 (Typ 1, Contract-Mangel — im Lauf behoben)

`skills/energie/SKILL.md` trug einen `## Contract`-Block mit Trigger/Inputs/Output/Nicht-Ziel,
aber **keines der drei Pflichtfelder** `Abhängige Rules` / `Vorgelagert` / `Nachgelagert`
(`skills/SKILL-CONTRACT.md`, Abschnitt 2). Genau diese drei Felder tragen den Prozess-Graphen.

**Das ist der zweite neue Skill in Folge mit demselben Defekt** (SYN-18, `wissens-destillat`,
28.07.). Zusammen mit den vier Skills ganz ohne Contract-Block (SYN-14) ergibt sich ein
Muster, kein Einzelfall — nachgemessen in diesem Lauf:

| Skill | `## Contract` | Vorgelagert | Nachgelagert | Abh. Rules |
|---|---|---|---|---|
| `pdf2dwg` | nein | nein | nein | nein |
| `oereb-schwyz` | nein | nein | nein | nein |
| `planungsgrundlagen` | nein | nein | nein | nein |
| `volumenstudie` | nein | nein | nein | nein |
| `energie` (vor dem Fix) | ja | nein | nein | nein |

**Im Lauf umgesetzt** (active-with-flagging, mechanisch, ohne inhaltliche Entscheidung): die
drei Felder in `skills/energie/SKILL.md` nachgetragen, inhaltlich aus dem Skill-eigenen Text
abgeleitet (Vorgelagert `planungsgrundlagen`/`baurecht`/`normen`; nachgelagert die neun
Fach-Skills + Agent + Service S6; Rules aus den bereits im Skill genannten Pflichten).

### Befund 3 → SYN-21 (Typ 1, Service zeigt auf den abgelösten Weg)

`services/KATALOG.md`, S6 «Energie-Vorabklaerung», Zeile «Pipeline» nennt weiterhin
**«Agent `energie-berater` (PL-04) · KB `wissen/energie/` · Grundlagen via
`planungsgrundlagen`»** — 0 Treffer auf den Skill `energie`. Seit 03.08. führt aber der Skill
dieses Feld; `planungsgrundlagen` selbst hat die Abgabe bereits vermerkt (Z. 29, Z. 65–70).

Ein aktiv verkaufter Service beschreibt damit eine Pipeline, die intern abgelöst wurde. Der
Agent bleibt richtig (er ist weiterhin der Fan-out), die **Führung** stimmt nicht mehr.

Nicht selbst geändert: der Katalog ist Raphaels Produkttext, Leitplanke «Services nie
eigenmächtig ändern». Vorgeschlagene Fassung der Pipeline-Zeile:
«Skill `energie` (führt die Fachantwort) · Agent `energie-berater` (Fan-out PV/U-Wert/
Nachweis) · KB `wissen/energie/` · Grundlagen via `planungsgrundlagen`».

### Befund 4 → SYN-22 (Typ 1, Nebenwirkung der Grundkontext-Diät; verschärft SYN-08)

Die Grundkontext-Diät Runde 2 Schritt 4 (Commit `b2f29162`, 03.08., Freigabe Raphael) hat den
DNA-Feinregelsatz (30.7 kB) aus dem immer geladenen `rules/jans-dna.md` nach
`rules/jans-dna-facetten.md` ausgelagert — **bewusst nicht importiert**. Der importierte Kern
trägt die Leseanweisung «Diese Datei ist vor JEDEM ausgehenden Texterzeugnis zu lesen».

Explizit nachverdrahtet wurden fünf Stellen (gemessen, `grep -rl jans-dna-facetten`):
`skills/twin/SKILL.md`, `skills/korrektur/SKILL.md`, `agents/email.md`, `agents/dokument.md`,
`scripts/mail-draft-guard.sh` (+ `rules/README.md`, `skills/twin/tools/build_dna.py`).

**Nicht verdrahtet** sind die übrigen texterzeugenden Bausteine — je 0 Treffer auf
`jans-dna-facetten` **und** 0 auf `jans-dna`:
`agents/linkedin-texter.md`, `agents/linkedin-engagement.md`, `agents/linkedin-stratege.md`,
`agents/bericht-autor.md`, `agents/website-content.md`, `skills/marketing/SKILL.md`,
`skills/website-content/SKILL.md`, `skills/protokoll/SKILL.md`, `skills/telesales/SKILL.md`.

**Ehrliche Abgrenzung:** das ist keine harte Kappung. Die Leseanweisung steht im importierten
Kern und erreicht damit jede Session. Verschoben hat sich die **Verlässlichkeit**: vier
Konsumenten haben jetzt einen expliziten Zeiger im eigenen Text, neun verlassen sich allein
auf die generische Pflicht. Betroffen ist ausgerechnet der LinkedIn-Strang, den SYN-08 seit
dem Erstlauf als «zweites Stimmen-Modell neben dem Twin» führt — dort fällt die generische
Pflicht auf eine Agenten-Definition, die ihren eigenen Stakkato-Stil beschreibt und den Twin
mit keinem Wort erwähnt (0 Treffer auf `twin` in allen drei LinkedIn-Agenten).

**Adversariale Gegenprüfung:** Spricht etwas gegen die Nachverdrahtung? Ja, ein Argument —
neun weitere Zeiger auf eine 30-kB-Datei könnten den Diät-Effekt untergraben, wenn sie zum
reflexhaften Volllesen führen. Die Gegenmassnahme ist die Formulierung: Zeiger mit Bedingung
(«vor dem Ausformulieren eines ausgehenden Textes lesen»), nicht als Pauschal-Import. Damit
bleibt der Diät-Gewinn (117.2 → 85.9 kB, −26 %) erhalten.

## 3. Status-Nachführung offener Einträge (nur wo sich ein Beteiligter bewegt hat)

- **SYN-02** (typologischer Entwurfsprozess): unverändert. `volumen_generator.py` kennt
  weiterhin nur `--parzelle/--out/--name/--variante` (Z. 128–131), letzte inhaltliche
  Änderung vor dem 25.07. Kein Delta.
- **SYN-13** (Healthcare-Typologie-Asymmetrie): unverändert **trotz** Bewegung in
  `wettbewerbs-dna`. Etappe 4 Lauf 01 vom 03.08. vertieft **2408 BIWAK** (SAC-Hütte), nicht
  Healthcare. `wissen/entwurfs-referenzen/wiki/typologien/` enthält weiterhin nur `INDEX.md`
  und `bildung.md` — kein `healthcare.md`. Der Befund bleibt in voller Schärfe offen.
- **SYN-14** (Contract-Nachrüstung): unverändert offen, alle vier Skills weiterhin ohne
  Contract-Block (Messung siehe Tabelle Befund 2). Durch SYN-20 verstärkt.
- **SYN-08** (Twin ↔ LinkedIn): durch Befund 4 verschärft, Status bleibt offen — die
  Empfehlung ist unverändert richtig und jetzt dringlicher.

**Nicht neu aufgerollt** (Compounding, kein Beteiligter hat sich bewegt): SYN-01, SYN-04,
SYN-05, SYN-06, SYN-09, SYN-11, SYN-15.

## 4. Geschäftsmodell-Ableitung (Phase 5)

**Kein neuer Service-ENTWURF.** Das Delta ist ein Zuständigkeitswechsel (Energie) plus eine
Kontext-Optimierung — beides ohne neues verkaufbares Bündel. Der einzige Katalog-Bezug ist die
Korrektur an S6 (Befund 3), also Pflege eines bestehenden Produkts, nicht ein neues.

Beobachtung für den nächsten Lauf: mit dem eigenständigen Skill `energie` steht S6 jetzt auf
einem deutlich reiferen Fundament als bei der Aktivierung am 15.07. (212+ Destillate, 196+
belegte Kernfragen, 30 Themenartikel, ZH und SZ vollständig). Ob das eine Preis- oder
Umfangsanpassung von S6 rechtfertigt, ist eine Frage an Raphael, keine Messung.

## 5. Umgesetzt in diesem Lauf

1. `skills/energie/SKILL.md` — die drei Contract-Pflichtfelder nachgetragen
   (active-with-flagging, mechanisch gegen `SKILL-CONTRACT.md`).
2. `SYNERGIE-REGISTER.md` — SYN-20 bis SYN-22 neu, SYN-02/08/13/14 nachgeführt.
3. CHANGELOG-Eintrag in `wissen/koordination/`.

## 6. Empfehlungen an Raphael (nichts davon eigenmächtig ausgeführt)

| Prio | Empfehlung | Aufwand |
|---|---|---|
| 1 | Rückkanten auf `energie` in den neun Fach-Skills setzen (je eine Zeile in «Inputs»/«Verknüpfungen») | klein, 9 Dateien |
| 2 | S6-Pipeline-Zeile im Katalog auf den Skill `energie` umstellen | sehr klein, 1 Zeile |
| 3 | LinkedIn-/Website-/Protokoll-Strang mit einem bedingten Zeiger auf `jans-dna-facetten.md` versehen (schliesst zugleich SYN-08 halb) | klein, 9 Dateien |
| 4 | Mechanische Contract-Prüfung: kleines Script, das alle `skills/*/SKILL.md` ohne die drei Pflichtfelder listet, in `heartbeat` oder `wissenscheck` einhängen — sonst wiederholt sich SYN-18/SYN-20 beim nächsten neuen Skill | mittel, wiederkehrender Nutzen |
| 5 | Takt korrigieren: nächster Synergie-Lauf frühestens 01.09.2026 | Entscheid |

Keine Mail versandt (Task-Vorgabe); die Befunde stehen im Register und hier.
