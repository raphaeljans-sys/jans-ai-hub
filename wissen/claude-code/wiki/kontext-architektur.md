---
title: Kontext-Architektur des Hubs — was wann laedt
status: established
last_updated: 2026-08-06
sources: [messung-260729-grundkontext, messung-260803-grundkontext-wissens-chef-run23, messung-260806-grundkontext-wissens-chef-run27, lecture-260729-anthropic]
links: [[lecture-260729-anthropic]], [[INDEX]], [[environment-jans-hub]] (KB spec — formales Layer-3-Modell)
---

# Kontext-Architektur des Hubs — was wann laedt

Gemessener Ist-Zustand am 29.07.2026, eingeordnet nach der Lecture-Systematik
(automatisch gegen lazily). Alle Zahlen sind eigene Messungen dieses Tages; die
Budget-Zahlen tragen Zeitstempel und Commit, weil sie nachweislich innerhalb von Minuten
veralten koennen.

Die Lecture-Systematik «automatisch gegen lazily» ist die **Messebene** zu Marcheses
Layer 3 («The Environment»): [[environment-jans-hub]] (KB `spec`) kartiert die vier
Environment-Bausteine als Modell, dieser Artikel misst, was von ihnen wann tatsaechlich
in den Kontext geladen wird.

## Die vier Schichten im Hub

| Schicht | Ort | Zustand 29.07.2026 |
|---|---|---|
| Enterprise (geteilt) | `/Library/Application Support/ClaudeCode/CLAUDE.md` | **nicht vorhanden** — bewusst, siehe [[QUESTIONS]] Punkt 1 |
| Global (nur ich) | `~/.claude/CLAUDE.md` | **seit 29.07. vorhanden**, 3'269 B, auf beiden Stationen identisch. Quelle `templates/user-level/CLAUDE.md`, verteilt via `scripts/user-claude-sync.sh` |
| Projekt (geteilt) | `CLAUDE.md` + @-importierte Rules | **96'946 B / 20 Importe** (Messung 29.07.2026 23:39); am Diaet-Commit `29bcb1ac` 87'398 B / 19 Importe, davor 105'573 B |
| Projekt (nur ich) | `.claude/settings.local.json` | vorhanden, stationsspezifisch |

Dazu **19 Sub-CLAUDE.md** unter `wissen/<kb>/` — sie laden **on demand**, nicht beim Start.
Der Hub hat dieses Lecture-Muster also schon vor der Lecture umgesetzt.

## Das Grundkontext-Budget (Messung 29.07.2026)

**Messweg (reproduzierbar):** `stat -f%z CLAUDE.md` **plus** `stat -f%z` ueber alle Dateien
aus `grep '^@/Volumes' CLAUDE.md`. CLAUDE.md selbst wird also **mitgezaehlt** — ohne diesen
Punkt ist der Wert nicht reproduzierbar. Token grob mit dem in diesem Artikel durchgehenden
Schluessel 4 B/Token.

| Stand | Bytes | grob Token |
|---|---|---|
| vor der Diaet 2.0 (Commit `29bcb1ac~1`) | 105'573 | ~26'400 |
| nach der Diaet 2.0 (29.07.2026 02:00, Commit `29bcb1ac`) | 87'398 | ~21'800 |
| Ersparnis der Diaet | 18'175 | 17 % |
| Stand 29.07.2026 23:39, 20 @-Importe | 96'946 | ~24'200 |
| Rebound bis dahin seit der Diaet-Messung | +9'548 | 53 % der Ersparnis |
| **Stand 03.08.2026 22:30, 21 @-Importe** | **115'482** | **~28'900** |
| Rebound gesamt seit der Diaet | **+28'084** | **die Ersparnis ist vollstaendig aufgezehrt** |
| Wirkung der Facetten-Auslagerung (03.08.2026 23:11, Commit `b2f29162`) | **-25'736** | die Aufteilung von `jans-dna.md` allein |
| **Stand 06.08.2026 23:41, 21 @-Importe** | **89'746** | **~22'436** |
| Stand gegenueber dem Vor-Diaet-Wert 105'573 B | -15'827 | 15 % unter dem Ausgangswert |

*(Zeile 06.08. nachgemessen Wissens-Chef Run 27, Messweg unveraendert. Der Wert deckt sich mit
der unabhaengigen Messung des Verifikators vom 03.08. 23:25 — der Grundkontext hat sich in den
drei Tagen seither nicht bewegt.)*

*(Zeile 03.08. nachgemessen Wissens-Chef Run 23; Messweise unveraendert: `stat -f %z` ueber
`CLAUDE.md` + `~/.claude/CLAUDE.md` + alle @-importierten Rules. **Stand 03.08.2026 22:30 — 46
Minuten spaeter ueberholt:** Der Stand lag zu diesem Zeitpunkt **ueber** dem Vor-Diaet-Wert von
105'573 B — die Kontext-Diaet 2.0 war rechnerisch rueckgaengig gemacht, allein durch das Wachstum
von `jans-dna.md` (+17'072 B in fuenf Tagen) und einen 21. Import.)*

**Was 46 Minuten spaeter geschah.** Am 03.08.2026 um 23:11 (Commit `b2f29162`, Freigabe Raphael)
wurde `rules/jans-dna.md` aufgeteilt: der handgeschriebene Kern bleibt @-importiert (heute
3'870 B), der kompilierte Do/Don't-Facetten-Block wanderte nach `rules/jans-dna-facetten.md` —
und diese Datei ist **kein @-Import**. Damit liegt der Grundkontext seit dem 03.08. 23:11 wieder
**unter** dem Vor-Diaet-Wert. Die Aussage «die Diaet ist rueckgaengig gemacht» gilt also
ausschliesslich fuer den Stichtag 03.08. 22:30 und ist seit demselben Abend ueberholt.

**Die Kosten sind verschoben, nicht verschwunden.** `rules/jans-dna-facetten.md` ist zwar kein
@-Import, aber `rules/jans-dna.md` schreibt vor, sie sei «vor JEDEM ausgehenden Texterzeugnis zu
lesen» (Mail, Dokument, Offerte, Protokoll, Praesentation, Web-Text, Chat-Antwort zum Kopieren).
Jede textproduzierende Session zahlt die rund 30 kB weiterhin — **lazily statt automatisch**, also
seltener, aber nicht gratis. Wer diese Zeilen als «26 kB Luft im Budget» liest und die Facetten
wieder wachsen laesst, macht die Auslagerung zunichte, ohne dass es im Grundkontext-Budget
sichtbar wird.

Die Ersparnis-Zeile misst die **Wirkung des Eingriffs** am Commit `29bcb1ac` und bleibt
gueltig; sie wird nicht mit dem heutigen Stand verrechnet. Das Wiederanwachsen ist eine
eigene Groesse und steht darum als eigene Zeile.

**Korrektur Wissens-Chef Run 20, 29.07.2026.** Der Artikel fuehrte «19 @-importierte Rules /
87'398 B» als Ist-Zustand ohne Zeitstempel und ohne Messweg. Der Wert war beim Schreiben
(Commit `fe6f1150`, 02:11) richtig und neun Minuten spaeter ueberholt: der Import
`rules/rollen-taxonomie.md` kam mit Commit `83f03e82` um 02:20 hinzu. Der Rebound von
9'548 B verteilt sich auf `rules/auto-verbesserungen.md` +3'921 B (41 %),
`rules/rollen-taxonomie.md` +3'559 B (neu, 37 %), `rules/anrede-kontakte.md` +1'279 B (13 %)
und `CLAUDE.md` +789 B (8 %). Nur 37 % gehen also auf den neuen Import, 63 % auf das
Wiederanwachsen schon importierter Rules. Den groessten Einzelbeitrag leistet
`rules/auto-verbesserungen.md`, genau die Datei, deren Auslagerung die Diaet war und deren
eigener Eintrag «260719 — Kontext-Diaet» mahnt, eine neue Verbesserung «nicht reflexhaft
hierhin» zu schreiben.

Groesster Einzelposten vor der Diaet: `rules/auto-verbesserungen.md` mit 36'029 B
(**34 %** des gesamten Grundkontexts). Ueberwiegend Betriebsprotokoll — launchd-Jobs,
Speicher-Messwerte, Vorfallschroniken —, das bei fachlicher Arbeit (Offerte, Baurecht,
Mail) keine Rolle spielt. Ausgelagert nach `rules/betrieb-chronik.md` (nicht importiert).

**Groesste Einzelposten heute: `CLAUDE.md` und `rules/auto-verbesserungen.md`, je knapp 20 %.**
Bis zum 03.08.2026 war es `rules/jans-dna.md`; seit der Facetten-Auslagerung am selben Abend
ist sie auf 4.3 % zurueckgefallen. Gemessen am 06.08.2026 23:41:

| Datei | Bytes | Anteil am Grundkontext |
|---|---|---|
| `CLAUDE.md` | 17'938 | 20.0 % |
| `rules/auto-verbesserungen.md` | 17'469 | 19.5 % |
| `rules/bkp-2017-referenz.md` | 5'435 | 6.1 % |
| `rules/anrede-kontakte.md` | 4'932 | 5.5 % |
| `rules/jans-dna.md` | 3'870 | 4.3 % |

Die beiden Spitzenreiter sind damit die Datei, die den Wegweiser traegt, und genau jene Rule,
deren Auslagerung die Diaet 2.0 war. `rules/jans-dna.md` bleibt bewusst importiert — sie rahmt
jede Texterzeugung und ist echter Grundkontext —, ist als Kostenposten aber nicht mehr fuehrend.

### Der Verlauf von `rules/jans-dna.md`

| Messung | jans-dna.md | Anteil am Grundkontext |
|---|---|---|
| 29.07.2026 23:39 | 15'356 B | 14 % (zweitgroesster Posten) |
| **03.08.2026 22:30** | **32'428 B** | **28.1 % (groesster Posten)** — Stand VOR der Aufteilung |
| 06.08.2026 23:41 | 3'870 B | 4.3 % (nur noch der handgeschriebene Kern) |

In fuenf Tagen mehr als verdoppelt, danach in einem Schritt aufgeteilt. Ursache des Wachstums ist
der Kompilationsmechanismus: `twin` schreibt die sechs Facetten-Artikel fort,
`skills/twin/tools/build_dna.py` kompiliert deren Do/Don't-Bloecke in einen Auto-Block.

**Fussnote zur Zeile 03.08. 22:30.** Seit Commit `b2f29162` (03.08.2026 23:11) schreibt
`build_dna.py` den Auto-Block nicht mehr nach `rules/jans-dna.md`, sondern nach
`rules/jans-dna-facetten.md` — und diese Datei ist **kein @-Import**. Der Block ist damit
Ladekosten je Texterzeugnis, nicht mehr Session-Fixkosten. Die 32'428-B-Zeile misst also einen
Zustand, den es seit demselben Abend nicht mehr gibt.

**Zum Riegel.** Bis zum 03.08.2026 mass und meldete keine Stufe dieser Kette die resultierende
Groesse. Seit Commit `47141939` (03.08.2026 22:55) traegt `skills/twin/tools/build_dna.py` einen
Wachstums-Riegel: `MAX_AUTO_BYTES = 30'000` als harter Abbruch mit Groessenausweis je Facette,
`WARN_AUTO_BYTES = 24'000` als Warnstufe. Der Satz «keine Stufe misst» war damit rund neun Minuten
lang wahr — der Artikelstand stammt aus Commit `3a16dc6e` (03.08. 22:46). Ausgeloest hat der
Riegel erstmals am 04.08.2026 (Auto-Block waere 36'835 B geworden) und erneut am 06.08.2026
(34'205 B); am 05.08. war ebenfalls zu verdichten. Jedes Mal wurde **verdichtet statt angehoben**
— die Anhebung der Grenze behaelt der Riegel per Konstruktion Raphael vor.
**Gemessener Stand des Auto-Blocks am 06.08.2026 23:41: 29'962 B, also 38 B Reserve zu 30'000 B.**
Der naechste Lauf bricht damit erneut ab. Belege in `wissen/twin/CHANGELOG.md` (04./05./06.08.).
Erzeuger-KB: `wissen/twin/` (dort in `CLAUDE.md` der Gegenverweis auf diese Messung).
*(Zeilen 03.08. nachgemessen Wissens-Chef Run 23; Fortschreibung und Riegel-Datierung
nachgemessen Wissens-Chef Run 27, 06.08.2026.)*

## Die Entscheidungsregel

Vor jedem neuen @-Import und vor jedem Anwachsen einer importierten Rule:

- **Automatisch (importiert)** nur, was in nahezu JEDER Session gilt: Ton, Anrede, Ablage,
  Quellenpflicht, Sicherheitsgrenzen.
- **Lazily (nicht importiert)** alles, was nur eine Rolle betrifft — Loops, Infrastruktur,
  eine einzelne KB, ein einzelner Skill. Der Betroffene liest es bei Bedarf.
- **Belege, Messwerte und Vorfallschroniken sind nie Grundkontext.** Sie gehoeren in eine
  Chronik, auf die die Kurzregel verweist.

Verankert als Nachtrag 29.07. im Eintrag «260719 — Kontext-Diaet» in
`rules/auto-verbesserungen.md`.

## Warum das mehr ist als Sparen

Die Lecture stellt Tip #5 («mehr Kontext = kluegeres Claude») und Tip #6 («Zeit fuers
Kontext-Tuning nehmen») bewusst nebeneinander — sie widersprechen sich nur scheinbar.
Mehr *relevanter* Kontext hilft; mehr *irrelevanter* verdraengt ihn. 36 KB Betriebsprotokoll
im Kontext einer Offerte machen die Offerte nicht besser, sondern kosten den Platz, den die
Fachgrundlage braucht.
