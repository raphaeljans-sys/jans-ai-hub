---
title: "Synergie-Lauf 22 (Tagestakt) — 29.08.2026"
status: established
last_updated: 2026-08-29
sources:
  - git-Log NAS-Repo, Fenster 28.08.2026 17:10 bis 29.08.2026 17:10 (108 Commits)
  - rules/betrieb-chronik.md, Eintrag 260829
  - connectors/WEGE.md · rules/auto-verbesserungen.md · rules/wege-und-vollmachten.md
  - wissen/normen (Run 65, Commit b90d8d663)
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 22 — 29.08.2026

**Takt:** taeglich · **Delta-Basis:** 28.08.2026 17:10 · **Fenster:** 24,0 h · **108 Commits**
**Uhr-Check:** bestanden (Stationsuhr 17:10 CEST, nativer Synology-Selfcommit 17:00:04)
**Gegenprobe der Filterung:** bestanden (aeltester Treffer `a3cf96b4c` 28.08. 17:15 schliesst
lueckenlos an, juengster ist der HEAD `ce257e700`)

## 1. Strukturelles Delta

**Null neue Bausteine** — keine neuen Skills, Agenten, Connectoren, Commands, Services, Rules
oder KBs. Drei geaenderte Kern-Bausteine, davon **zwei reines Eigenrauschen**:
`skills/heartbeat/SKILL.md` und `rules/auto-verbesserungen.md` bewegten sich ausschliesslich
durch Commit `aafae2564` — den Schreibvorgang des Laufs 21 selbst. Sie wurden nicht geprueft.

Echtes Delta ist damit **eine einzige Datei**: `rules/betrieb-chronik.md`, dreimal beschrieben
am 29.08. (11:15 `6274c2041` +56, 11:30 `17f3122fc` +16/−2, 13:00 `e8fae5fc9` +24). Zusammen
ergeben sie den neuen Eintrag **260829** zur IPTV-Diagnose auf station-01.

Ausserhalb `wissen/` und `logbuch/`: eine neue Datei (`tenant-hygiene/reports/260828-hygiene.md`)
und der Ergebnisbaum eines Remote-Tasks (`wissenscheck-phase1`, Mac Mini, 08:17 `success`).
**Kein Script bewegte sich.**

## 2. Befunde

### SYN-59 — Wiederverwendbarer Baustein im Scratchpad, Sackgasse in keinem Register

Der Chronik-Eintrag 260829 haelt einen `CGEvent`-Helfer fest, «der bei kuenftiger
GUI-Automatisierung auf Catalyst-Apps Zeit spart», und verweist auf `Scratchpad iptv/`.

**Messung 29.08. 17:1x:** ueber **122** vorhandene Scratchpad-Verzeichnisse plus Home, `/tmp`
und `mdfind` ist **keines** der genannten Artefakte auffindbar. Der einzige Systemtreffer fuer
«messkopf» ist die Chronikdatei selbst.

Der eigentliche Befund liegt tiefer: die belegte **Sackgasse** (`System Events`-Klicks werden
von Catalyst-Apps nicht angenommen) und die tragenden **Wege** stehen in keinem Register.
`connectors/WEGE.md` fuehrte 0 Treffer fuer «CGEvent» und keine Fahigkeitszeile fuer
GUI-Steuerung, obwohl Rule `wege-und-vollmachten` Ziff. 4 den Eintrag ausdruecklich verlangt.

**Umgesetzt (active-with-flagging):** Fahigkeitszeile in `connectors/WEGE.md` (+1/0), Rangfolge
`defaults`-Schluessel (der Weg, der im Fall trug) → MCP `computer-use` → `CGEvent` → Sackgasse.
Weg 3 ist als «Code NICHT mehr vorhanden» gekennzeichnet, damit nicht das Muster SYN-56
entsteht. Dazu ein ⚠-Nachtrag in der Chronik (13/0). **Der Helfer wird nicht nachgebaut** —
Code aus einer Beschreibung zu rekonstruieren waere geraten, nicht belegt.

### SYN-60 — Regel fuer interaktive Sitzungen in der Datei fuer automatische Laeufe

Der Eintrag 260829 formuliert woertlich eine «Praktische Verschaerfung fuer Diagnose-Sitzungen»
(Messwert im Schlussbericht neu erheben statt zitieren, sobald der Benutzer auf die Empfehlung
handeln konnte) und nennt selbst ihre Herkunft: `auto-verbesserungen` 260730b Punkt 3.
**Dort 0 Treffer.** Zugleich beschraenkt sich die Chronik im eigenen Vorspann auf «automatische
Laeufe und Infrastrukturarbeit» — die Regel adressiert aber die Sitzung mit anwesendem Benutzer.

**Schaden im Anlassfall:** ein um 10:45 korrekt gemessenes 35-W-Netzteil wurde im Schlussbericht
als Gegenwart wiederholt, obwohl in der Zwischenzeit auf 96 W getauscht worden war. Jeder
Einzelmesswert war richtig, der Ist-Zustand im Bericht falsch. Reichweite ueber Infrastruktur
hinaus: `zahlungsabgleich`, `mahnwesen`, `kostenkontrolle`, jede Offert-/Pruefsitzung.

**Gegenpruefung daempft:** 260730b Punkt 3 traegt die Familie bereits. Neu sind Ausloeser und
Ort, nicht das Prinzip — darum **Querverweis am bestehenden Eintrag** (12/0) statt eines zweiten
Rule-Eintrags (Rule 260719, kein Anwachsen des Grundkontexts ohne Not). Mitgenommen: die drei
uebrigen generalisierbaren Lehren desselben Eintrags (Instrument vor Befund pruefen;
Plausibilitaet und Beleg trennen; wer nur die Quelle anschaut, haelt ein loesbares Problem
faelschlich fuer fremdverschuldet).

## 3. Aufgerollt (Beteiligter bewegt)

- **SYN-54** — Run 65 (`b90d8d663`) setzte einen **vierten** ⚠-Vorbehalt in den Synthese-Artikel;
  drei Frontmatter-Quellen stehen auf `speculative`, das Frontmatter unveraendert auf
  `established` / `2026-07-17`. Status nachgefuehrt, **kein neuer Befund**. Positiv festgehalten:
  die Bringschuld aus Lauf 20 wirkt, die KB verstaerkt N63-3 selbst.
- **SYN-55** — `sia-416-2003.md` hat beide Pruefrichtungen durchlaufen (Run 64/65); der als
  fehlend beschriebene Pruefstand laeuft und bestaetigt die Ausgangsmessung ein drittes Mal
  (Luecken ja, falsche Werte nein). Status nachgefuehrt, kein neuer Befund.
- **SYN-43 nicht aufgerollt:** `rules/jans-dna-facetten.md` bewegte sich im Fenster nicht — die
  vierfache Serie aus den Laeufen 18 bis 21 reisst.
- **SYN-01 geprueft, nicht aufgerollt:** `wissen/grobkosten` bewegte sich, die offene Kante
  (`agents/realwert-rechner.md`, `agents/wirtschaftlichkeit-rechner.md`) aber nicht.

## 4. Nicht als Befund uebernommen

(a) Verlust von `messkopf.py` und den CSV — Rohdaten einer abgeschlossenen Diagnose, Befund
steht in der Chronik. (b) Falsches `last_updated` am Synthese-Artikel — bereits Teil von SYN-54.
(c) DFS-Kanal 124 und Laendercode NL des Routers — ausdruecklich Raphaels Entscheid, kein
Hub-Thema. (d) Wissenscheck-Remote-Task, Stations- und Kontingent-Dateien — Betriebsroutine.

## 5. Schreib-Kontrolle

Jeder Anker vor dem Schreiben auf Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen,
Umfang gegen Sicherungskopien gemessen (**nicht** per `git` ueber SMB):

| Datei | Umfang | Zeilen |
|---|---|---|
| `connectors/WEGE.md` | **+1 / −0** | 884 → 885 |
| `rules/auto-verbesserungen.md` | **+12 / −0** | 415 → 427 |
| `rules/betrieb-chronik.md` | **+13 / −0** | 2766 → 2779 |
| `SYNERGIE-REGISTER.md` | +72 / −2 (beide gewollte Zeilenersetzung SYN-54/55) | 1030 → 1100; 58 → 60 Tabellenzeilen |

Alle inhaltlichen Eingriffe rein additiv, null ungewollte Loeschungen.
