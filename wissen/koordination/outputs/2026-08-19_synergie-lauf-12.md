---
titel: Synergie-Lauf 12 (Tagestakt)
datum: 2026-08-19
delta_basis: 2026-08-18 17:10
fenster: 23,8 Stunden / 109 Commits
status: abgeschlossen
neue_ids: [SYN-36]
---

# Synergie-Lauf 12 — 19.08.2026

## Schritt 0 — Uhr und NAS

NAS gemountet. Station `2026-08-19 17:10 CEST` gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log`, letzter Eintrag `2026-08-19T17:00:06 push OK
(86936dbc)`. Abweichung rund zehn Minuten, also der normale Abstand zum 15-Minuten-Takt.
Kein Uhrenverdacht.

## Schritt 1 — Delta mit Gegenprobe

109 Commits im Fenster. Gegenprobe bestanden: der neueste Treffer `86936dbc` ist zugleich
der tatsächliche HEAD, der älteste Treffer `b25de279` (18.08. 17:15) schliesst lückenlos an
die Delta-Basis an. Keine Schieflage zwischen Filter und Repo.

**Strukturelles Delta**

| | |
|---|---|
| Neue Bausteine | **0** (die einzige neue Datei unter den Baustein-Pfaden ist `skills/wissens-destillat/training/buero-projekte-lauf-20260819-1331.md` — ein Trainings-Laufprotokoll, kein Baustein) |
| Geänderte Bausteine | **4** |
| KB-Aktivität | energie 30 · twin 20 · normen 12 · koordination 6 · planungsgrundlagen 3 · baurecht 3 · kunde-bopp 2 · immobilienbewertung 2 |

Der Früh-Ausstieg griff nicht (vier geänderte Bausteine).

## Schritt 3 — Prüfung der geänderten Bausteine

### Triage

| Baustein | Commit | numstat | Behandlung |
|---|---|---|---|
| `skills/honorarberechnung-sia102/SKILL.md` | `a41e5ad0` + `895e7cb1` | 23/3, 18/1 | **voll geprüft** (Kern des Fensters) |
| `rules/jans-dna-facetten.md` | `48d9afa7` | 76/72 | geprüft, kein Befund |
| `skills/synergie-orchestrator/SKILL.md` | `b58bf082` | 8/0 | eigener Nachlauf Lauf 11, nicht aufgerollt |
| `skills/ausschreibung/SKILL.md` | `b25de279` | 2/2 | eigener Schreibvorgang Lauf 11, nicht aufgerollt |

### Der Befund — SYN-36

Wissens-Chef Run 36 hat den Honorar-Skill gründlich korrigiert (die Fundstelle «SIA 102:2020,
Anhang A» existiert nicht; die Prozenttabelle steht in SIA 102:**2014**, Ziff. 7.7). Meine
Frage war die Rückkante: kennt die KB den Skill ihrerseits? **Sie kennt ihn** — beide
Destillate nennen ihn im Abschnitt «JANS-Praxis-Transfer». Die Kante, die dieser Skill sonst
am häufigsten halb vorfindet, war hier vollständig.

Der Fehler sass eine Ebene tiefer, **innerhalb eines Knotens**:

`wissen/normen/destillate/sia-102-2014.md`

- **Z. 65** (systematischer Teil, Ziff. 7.6, am Original verifiziert): «**Alterswohnungen/
  Alterssiedlungen UND Altersheime beide Kat. V** (nicht VI, wie zuvor fälschlich im
  Destillat gestanden — Original S. 45 weist beide Bauwerksarten derselben Spalte V zu)»
- **Z. 9** (Frontmatter): status `established`, «1 Fehler korrigiert Baukategorien-Zuordnung
  Altersheime»
- **Z. 91** (JANS-Praxis-Transfer): «Alters-/Pflegeeinrichtungen **VI**»

Die Korrektur vom 14.07.2026 heilte den systematischen Teil und liess die Abschrift
26 Zeilen weiter unten stehen — den exakten Wert, den sie im selben Atemzug verwirft.

**Adversariale Gegenprüfung.** Drei Einwände geprüft, keiner trägt:

1. *Hat vielleicht Z. 91 recht?* Nein. Z. 65 nennt die Seite (S. 45), beruft sich
   ausdrücklich auf den Volltextabgleich und ist im Frontmatter als durchgeführte Korrektur
   dokumentiert. Z. 91 nennt keine Fundstelle. Der systematische Teil schlägt die Abschrift.
2. *Meint «Alters-/Pflegeeinrichtungen» etwas anderes als «Altersheime»?* Nein. Z. 65 führt
   beide Bestandteile des Sammelbegriffs getrennt und **beide als V** (Altersheime V;
   Pflegeheime/Reha/Sanatorien V). Ein Sammelbegriff kann nicht VI sein, wenn jeder seiner
   Teile V ist.
3. *Steht der Befund schon woanders?* Nein. Register: 0 Treffer (höchste ID war SYN-35).
   Run 36 nennt die Kategorien-Frage nur mit Blick auf den **Skill** (Bericht Z. 276 ff.,
   vorgelegt als E1); der Widerspruch **innerhalb der KB** kommt dort nicht vor. Sein Blick
   ging von der KB zum Skill, nicht innerhalb der KB.

**Warum das zählt.** Kategorie V gegen VI ist ein Schritt im Schwierigkeitsgrad `n`
(1.1 gegen 1.2), also rund 9 % Honorar — und zwar bei Altersheimen, im Healthcare-Kerngeschäft.
Der Abschnitt heisst «JANS-Praxis-Transfer»: es ist genau die Stelle, die ein Skill oder Agent
zuerst liest, wenn er die Norm auf einen Fall überträgt. Dieselbe Figur wie BKP «271.10»
(Rule `bkp-2017-referenz`): der systematische Teil schlägt die Schnellreferenz, und die
Schnellreferenz trägt den Fehler weiter, weil sie verifiziert aussieht.

**Zweiter Punkt in derselben Zeile.** Die Auflage «vor Verwendung bei Neuverträgen gegen
SIA 102:2020 Original verifizieren (**Art. 6/7 dort noch nicht gelesen**)» war zum Zeitpunkt
dieses Laufs erfüllt: Run 36 hat das Original am 18.08.2026 gelesen (S. 1-41; die Ausgabe
endet mit Art. 6, ein Art. 7 existiert nicht). Eine stehengebliebene Prüfauflage lädt zur
zweiten Durchführung derselben Verifikation ein — die teuerste vermeidbare Doppelarbeit
(Rule `wege-und-vollmachten`). Schlimmer: die Klammer «Art. 6/7» hält genau die Vermutung am
Leben, aus der der Fehler M1-1 entstanden ist.

**Umsetzung** (active-with-flagging): Z. 91 auf Kat. V berichtigt, mit Rücklink auf Z. 65 als
Beleg und dem Satz «der systematische Teil schlägt den Praxis-Transfer»; die erledigte
Prüfauflage durch das Ergebnis von Run 36 ersetzt.

**Bewusst nicht angefasst:** die Kategorien-Zuordnung **im Skill** (dort Pflegeheim bei
III-IV gegen V der Norm). Sie liegt Raphael seit Run 36 als E1 vor und ist ein
Geschäftsentscheid mit Honorarfolge, kein Registerbefund.

### Kein Befund bei den übrigen

- **`rules/jans-dna-facetten.md`** ist erneut über den Kompilierweg entstanden, nicht von
  Hand: derselbe Commit `48d9afa7` ändert alle sechs Quell-Artikel unter `wissen/twin/wiki/`
  sowie `wissen/twin/CHANGELOG.md` und den Fidelity-Report. Gleiche Prüfung wie in Lauf 11,
  gleiches Ergebnis.
- **`skills/synergie-orchestrator/SKILL.md`** verankert die Lehre aus Lauf 11 zur Reihenfolge
  der SYN-ID-Vergabe. **In diesem Lauf zum ersten Mal angewandt:** erst die Registerzeile
  SYN-36 geschrieben, dann die ID im Destillat zitiert.

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen | Bemerkung |
|---|---|---|---|
| `wissen/normen/destillate/sia-102-2014.md` | **1/1** | 100/100 | eine beabsichtigte Zeilenersetzung (Z. 91) |
| `wissen/koordination/SYNERGIE-REGISTER.md` | **44/0** | 399/444 | reines Anhängen, **null Löschungen**; 35/36 Tabellenzeilen |

Gegenprobe am Objekt nach dem Schreiben: der alte Wert «Alters-/Pflegeeinrichtungen VI»
kommt nur noch als Zitat im Korrekturvermerk vor, die geltende Aussage lautet V, und Z. 65
ist unberührt. Alle Werte mit `git diff --numstat` gemessen, nicht geschätzt.
