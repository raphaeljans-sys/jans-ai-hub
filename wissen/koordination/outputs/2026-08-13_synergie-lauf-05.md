---
title: Synergie-Lauf 05 — erster Lauf im Tagestakt
status: established
last_updated: 2026-08-13
sources:
  - git-Delta 13.08.2026 01:05–01:19 (10 Commits, HEAD efa7df0a)
  - sync-tasks/log/selfcommit-202608.log (native Synology-Zeit)
  - wissen/koordination/SYNERGIE-REGISTER.md
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 05 — 13.08.2026

Erster Lauf im neuen Tagestakt (Anordnung Raphael vom 13.08.2026). Leichtgewichtig,
inline, kein Fan-out.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-08-13 01:19 CEST`, jüngster nativer Synology-Eintrag
`2026-08-13T01:18:59`. Abweichung unter einer Minute. Die Schieflage von zehn Tagen aus
Chronik-Eintrag 260813e ist behoben; Commit-Daten sind ab hier wieder belastbar.

## Schritt 1 — Delta

Delta-Basis laut Register-Fussnote: 13.08.2026 01:05 (Ende von Lauf 04). Fenster also
vierzehn Minuten, **10 Commits**.

Gegenprobe bestanden: der jüngste Commit im gefilterten Ergebnis ist zugleich HEAD
(`efa7df0a`, 01:18:54). Kein Hinweis auf einen Traversierungs-Abbruch wie in Lauf 04.

Strukturelles Delta:

- **Neue Bausteine: keine.** `--diff-filter=A` über `skills/ agents/ rules/ connectors/
  services/ commands/ scripts/` liefert nichts.
- **Geänderte Skills: fünf** — `zahlungsabgleich`, `stockwerkeigentum`, `heartbeat`,
  `ausschreibung`, `synergie-orchestrator`.
- **Geänderter Connector: einer** — `connectors/bexio.mjs`.
- KB-Bewegung: immobilienbewertung 12, koordination 8, energie 8, normen 2,
  claude-code 2, baurecht 2, planungsgrundlagen 1.

Der Früh-Ausstieg aus Schritt 2 greift damit nicht: geänderte Skills und ein geänderter
Connector sind ausdrücklich Grund für einen vollen Lauf.

### Messhinweis für den Tagestakt

Die Commit-Messages im Fenster passen durchweg **nicht** zu den geänderten Dateien. Der
Grund ist bekannt und dokumentiert: `nas-selfcommit` erfasst laufende Fremdarbeit unter
der Message eines anderen Vorgangs (Chronik 260813d). Im Tagestakt fällt das stärker ins
Gewicht als im Monatstakt, weil einzelne Commits nicht mehr in der Masse untergehen.
Zuordnung deshalb ausschliesslich über `git diff` am Inhalt.

## Schritt 3 — Prüfung

Das Fenster hat ein erkennbares Thema: **Rückkanten**, gesetzt vom `wissens-chef` Run 29
(`397d4fc5`). Zwei der drei Kanten wurden geprüft, eine dritte Kette kam aus dem
`zahlungsabgleich`.

### Befund SYN-23 (Typ 1) — der Mahn-Skill kennt den Vorbehalt nicht, der ihn korrigiert

`zahlungsabgleich` führt seit heute den Befund **`unrecOhneZwilling`**: ein CREDIT im
Status `unreconciled`, zu dem keine abgeglichene Transaktion mit gleichem Konto, Typ,
Valuta und Betrag existiert. Das ist nicht das bekannte Doppelimport-Duplikat, sondern
unzugeordnetes Geld.

Genau dieser Fall bricht die harte Kernregel des Mahnwesens. `skills/mahnwesen/SKILL.md`
Z. 44–46 leitet Verzug ausschliesslich von der Rechnungsseite ab: Restbetrag > 0 und
Fälligkeit verstrichen. Ist Geld in bexio angekommen, aber nie einer Rechnung zugeordnet,
bleibt der Restbetrag stehen, und die Rechnung erscheint überfällig, obwohl sie gedeckt
ist. Belegt und nicht hypothetisch: Tx 3630 vom 07.08.2026, CHF 6'000, deckungsgleich mit
der offenen RE-00101 (`logbuch/fristen.md` Z. 71, 89–91).

Kanten-Messung: `zahlungsabgleich` nennt `mahnwesen` achtmal, `mahnwesen` nennt
`zahlungsabgleich` null mal. Das SYN-10-Muster, diesmal mit der unwissenden Seite am
Kundenkontakt.

**Adversariale Gegenprüfung.** Erstens: überbrückt `hub-chef` die Lücke? Nein. Er nennt
beide Loops (Z. 25 als Morgen-Loops, Z. 123 als Dispatch-Ziel für Mahnvorschläge), stellt
aber keine Beziehung zwischen ihnen her. Zweitens: existiert der Schutz schon anderswo?
Die vorhandene Lektion in `mahnwesen` (Fall RE-00088, 13.06.2026) lehrt das Gegenteil —
traue der bexio-Rechnungsseite statt der archivierten PDF. Der neue Fall ist die Umkehrung:
die Rechnungsseite selbst ist unvollständig. Die alte Lektion deckt ihn nicht ab. Drittens,
ehrliche Dämpfung: Phase 2 des Mahnwesens ist ausnahmslos interaktiv, und Tx 3630 wird im
Fristen-Register aktiv geführt. Der Fehler wäre eine falsche Vorlage, kein automatisch
versandter Mahnbrief. Strukturell bleibt er trotzdem, weil der nächste gleichgelagerte
Fall auf dieselbe blinde Kernregel trifft.

**Im Lauf umgesetzt (active-with-flagging):** Vorbehalts-Block direkt unter der Kernregel
in `mahnwesen` mit der Gegenprüfung `node connectors/bexio.mjs --abgleich --json` vor jedem
Mahnvorschlag, plus `zahlungsabgleich` in der Zeile «Verwandt». Das ist ein Querverweis auf
einen bestehenden Befund, keine Änderung an der Mahn-Mechanik.

**Offen und bewusst nicht ausgeführt:** ob die Gegenprüfung zusätzlich maschinell in Phase 1
gehört, also ob der `--verzug`-Scan die Treffer selbst markiert, statt sich auf Lese-Disziplin
zu verlassen. Das wäre eine Änderung am Connector und an einem geldnahen Skill.

### SYN-20 nachgemessen — die Reparatur zielt neben die Lücke

Rückkanten zum Skill `energie`: **weiterhin 0 von 9**. Keiner der neun Fach-Skills, die
`energie` selbst als Konsumenten benennt, nennt ihn oder `wissen/energie` zurück.

Bewegt hat sich stattdessen ein **zehnter**: `stockwerkeigentum` hat heute die Rückkante zu
`energie` gesetzt, mit der zutreffenden Begründung, der Heizungsersatz sei ein typischer
Auslöser des Sanierungsbeschlusses und die Energie-KB verweise bereits hierher. Die
Beobachtung ist also richtig, sie trifft nur nicht die dokumentierte Lücke.

Die neue Kante war ihrerseits einseitig: `skills/energie/SKILL.md` führte
`stockwerkeigentum` nicht in seiner Konsumentenliste. **Im Lauf nachgezogen**
(active-with-flagging, eine Zeile).

Das Contract-Prüfscript aus SYN-20 (b) existiert weiterhin nicht.

### Geprüft, kein Befund — `ausschreibung` → `wissen/normen`

Die zweite neue Kante des Wissens-Chefs trägt. Der Zielartikel
`wissen/normen/wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` existiert, ist korrekt als
`speculative` gekennzeichnet und ausdrücklich nur zur Orientierung freigegeben; die
belegfähigen Destillate liegen vor (zehn ABB-Nummern: 244, 246, 248, 257, 262, 263, 265,
266-1, 266-2, 267, dazu SIA 118 selbst und C1-2026); und `skills/normen/SKILL.md` Z. 50
nennt `ausschreibung` zurück. Beidseitige Kante, belegte Fundstelle, sauberer Umgang mit dem
`speculative`-Status. Kein Handlungsbedarf.

### Nicht neu aufgerollt

SYN-01 bis SYN-19, SYN-21, SYN-22 — kein Beteiligter hat sich im Fenster bewegt
(Compounding-Regel). Bei einem 14-Minuten-Fenster ist diese Auswahl belastbar, anders als
bei den 1111 Commits von Lauf 04.

## Korrektur an Lauf 04

Die in der Lauf-04-Fussnote als «einzige Fehlstelle» gemeldete fehlende Allowlist-Freigabe
für `m365-graph.mjs` in `.claude/settings.json` ist ein **Fehlbefund** und wird
zurückgezogen.

Die Datei enthält genau einen Bash-Eintrag, und der lautet `"Bash(*)"` — eine pauschale
Freigabe, unter der jeder Connector läuft. Der 0-Treffer-Grep nach dem Connector-Namen war
eine Aussage über die Suchform, nicht über die Freigabe. Das ist exakt die in Rule
`wege-und-vollmachten` Punkt 5 und `auto-verbesserungen` 260807 beschriebene Falle, und sie
ist dem eigenen Vorlauf unterlaufen. Für künftige Allowlist-Prüfungen: zuerst die Struktur
der Datei lesen, dann darin suchen.

Am selben Muster geprüft und entwarnt: `scripts/methoden-scan.sh`, das der neue
heartbeat-Check 14 aufruft, tauchte im Fenster nicht als neue Datei auf. Es existiert seit
dem 30.07.2026 — der Check ist funktionsfähig, das leere Delta war korrekt und harmlos.

## Bilanz des ersten Tageslaufs

Der Tagestakt hat sich in diesem Lauf bewährt, aus einem Grund, der im Monatstakt nicht
sichtbar wäre: das Fenster war klein genug, um **jede** der drei bewegten Kanten einzeln
am Objekt zu prüfen, statt sie zu bündeln. Zwei trugen nicht vollständig, eine trug. Beide
Korrekturen waren Einzeiler.

Die Kehrseite ist der Messhinweis oben: bei kleinen Fenstern schlägt jede Unschärfe in der
Commit-Zuordnung voll durch.

## Wissens-Rücklauf

Verallgemeinerbar aus diesem Lauf, bereits an der richtigen Stelle abgelegt:

- Der Fehlbefund zur Allowlist gehört als Messhinweis ins Register (dort eingetragen) und
  bestätigt eine bestehende Rule, ohne eine neue zu brauchen.
- Das Muster «eine Reparatur setzt eine Rückkante, die selbst wieder einseitig ist» ist der
  dritte Beleg derselben Familie (SYN-10, SYN-20, jetzt SYN-20-Nachmessung). Es ist bereits
  in SYN-20 (b) als Prüfscript-Empfehlung erfasst; ein weiterer Registereintrag würde nur
  doppeln.

---

## Nachtrag 13.08.2026 01:30 — Doppellauf, und was die zweite Instanz beigetragen hat

Der Task `synergie-lauf-taeglich` ist beim Erstlauf **zweimal gefeuert** (beide Instanzen
01:19, PIDs 25627 und 25677). Beide haben unabhaengig voneinander dieselbe Delta-Basis
gemessen (13.08. 01:05–01:19, 10 Commits, HEAD `efa7df0a`), denselben Uhr-Check gefahren und
**dieselben Befunde erhoben** — einschliesslich der Ruecknahme des Allowlist-Fehlbefunds aus
Lauf 04. Diese Doppelung ist kein Schaden, sondern eine unfreiwillige Gegenprobe: zwei
getrennte Laeufe kamen am selben Objekt zum selben Ergebnis.

**Die zweite Instanz hat nicht doppelt geschrieben.** Sie hat beim Registerlesen bemerkt, dass
bereits ein «Lauf 05»-Nachtrag darin stand, den sie nicht verfasst hatte, den laufenden
Fremdprozess ueber 45 s auf Ruhe geprueft (Register seit 01:24:34 unveraendert) und daraufhin
auf einen zweiten Registereintrag, einen zweiten Laufbericht und einen zweiten CHANGELOG-Block
verzichtet. Eine SYN-24 wurde bewusst **nicht** vergeben.

Beigetragen hat sie genau einen Punkt, den die erste Instanz als offen dokumentiert hatte:

**SYN-20 (b) ist umgesetzt — `scripts/contract-check.sh`.** Das Script prueft alle
`skills/*/SKILL.md` gegen `skills/SKILL-CONTRACT.md` Abschnitt 2 und trennt dabei die zwei
Groessen, die bisher vermischt wurden:

| | Groesse | Zahl | Skills |
|---|---|---|---|
| A | ohne `## Contract`-Block (SYN-14) | 4 | `oereb-schwyz`, `pdf2dwg`, `planungsgrundlagen`, `volumenstudie` |
| B | Block vorhanden, Pflichtfelder unvollstaendig (SYN-20) | 9 | `hub-chef`, `logbuch`, `mahnwesen`, `massgebendes-terrain`, `normen`, `spec`, `tenant-hygiene`, `versandplanung`, `zahlungsabgleich` |

**Zusammen 13 von 51 Skills.** Damit ist der Contract-Defekt kein Muster aus zwei Faellen,
sondern ein Viertel des Bestands — darunter drei Fuehrungs-Skills (`hub-chef`, `logbuch`,
`spec`), deren Graph-Kanten die Orchestrierung tragen. Genau diese Zahl war ohne Messung nicht
sichtbar: SYN-14 nannte «4 von 49», SYN-20 sprach vom «zweiten Fall in Folge», und beide
Aussagen stimmten je fuer sich.

Exit-Code 1 bei Fehlstellen, damit der Check in `heartbeat` oder `wissenscheck` einhaengbar
ist. **Die Einhaengung ist bewusst nicht erfolgt:** `skills/heartbeat/SKILL.md` wurde im selben
Fenster von einem anderen Lauf bearbeitet (neuer Check 14, Methoden-Eingang), und ein
paralleler Edit derselben Datei ist genau das Risiko aus Rule `auto-verbesserungen` 260811.
Die Einhaengung gehoert in einen Lauf, der die Datei allein hat.

Adversariale Gegenpruefung zum Script: `wissenscheck` auditiert den **Wissens-Layer** (KBs),
nicht die Skill-Contracts — keine Doppelspurigkeit. Kein weiteres Script im Hub prueft
Contract-Felder (`ls scripts/ | grep -iE 'check|contract|audit'` → `check-launchd-fda.sh`,
`sync-task-check.sh`, `trust-check.sh`, alle mit anderem Gegenstand).

### Betriebsbefund fuer den neuen Tagestakt

Zwei Beobachtungen, die der Monatstakt nie erzeugt haette:

1. **Der Bestand aendert sich waehrend der Messung.** `skills/mahnwesen/SKILL.md` wurde um
   **01:23:19** veraendert — zwischen zwei Messungen derselben Instanz an derselben Datei
   (erst 0 Treffer auf `zahlungsabgleich`, Minuten spaeter 2). Es war die Umsetzung von
   SYN-23 (a) durch die andere Instanz. Bei einem 14-Minuten-Fenster ist ein Grep-Ergebnis
   nur so lange gueltig wie die Sekunde, in der es entstand; ein Befund gehoert deshalb
   unmittelbar vor dem Schreiben nachgemessen, nicht nur zu Laufbeginn.
2. **Der 15-Minuten-Selfcommit erfasst Fremdarbeit unter fremder Message.** Sowohl der
   Laufbericht der ersten Instanz als auch `scripts/contract-check.sh` der zweiten liegen im
   selben Commit `61bd43e5`. Kein Datenverlust, aber die Commit-Message beschreibt nur eine
   der beiden Arbeiten — bereits als Chronik-Eintrag 260813d erfasst, hier ein weiterer Beleg.
