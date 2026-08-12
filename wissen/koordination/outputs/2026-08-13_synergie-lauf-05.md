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
