# Synergie-Lauf 08 — 15.08.2026

Tagestakt, achter Lauf. Delta-Basis 14.08.2026 17:45 (Ende Lauf 07), Fenster 23,4 Stunden,
108 Commits. Leichtgewichtig inline gefahren, kein Multi-Agent-Fan-out.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-08-15 17:10 CEST` gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log`, letzter Eintrag `2026-08-15T17:00:05 push OK
(df34cf9d)`. Abweichung im Minutenbereich, plausibel zum 15-Minuten-Cron. **Uhr-Check
bestanden**, kein Nachdatieren noetig.

## Schritt 1 — Delta mit Gegenprobe

`git fetch` scheiterte (kein SSH-Agent in der unbeaufsichtigten Session). Statt darauf einen
Zweifel am Repo zu gruenden, wurde die Aktualitaet des Klons ueber den Synology-Log belegt:
Klon-HEAD `df34cf9d` ist identisch mit dem letzten dort protokollierten Push. Die
Gegenprobe des Schritts 1 lief damit auf gesicherter Grundlage: neuester Commit im
gefilterten Ergebnis = HEAD = letzter Push. Alle Git-Lesevorgaenge auf dem SSD-Klon.

Strukturelles Delta:

| Ebene | Befund |
|---|---|
| Neue Bausteine (`diff-filter=A` ueber skills/agents/rules/connectors/services/commands) | **keine** |
| Geaenderte Strukturdateien | **1**: `skills/email-preferences/SKILL.md` (`fd176ad4`) |
| connectors/ · commands/ · scripts/ | null Treffer |
| docs/ · templates/ | null Treffer |
| logbuch/ | nur Betriebsdateien (Kontingent-JSON, Fristen, LOGBUCH, Arbeits-Weiche) |
| KB-Aktivitaet | energie 31 · twin 23 · normen 17 · bauprodukte 11 · koordination 3 |

Der Frueh-Ausstieg des Schritts 2 griff wegen des einen geaenderten Skills nicht — knapp,
und wie unten ausgefuehrt aus dem falschen Grund: der eigentliche Befund lag nicht dort.

## Schritt 3 — Pruefung

### Der geaenderte Skill: SYN-28 (b) ist geschlossen

`fd176ad4` schreibt die drei `tell application "Mail"`-Aufrufe in
`skills/email-preferences/SKILL.md` auf `application id "com.apple.mail"` um und korrigiert
den Warnblock von «noch nicht nachgezogen» auf «nachgezogen». Ausgefuehrt hat das nicht
dieser Skill, sondern der Wissens-Chef Run 32 in der Nacht auf den 15.08.; der Commit nennt
SYN-28b ausdruecklich. Das ist die erwuenschte Wirkung eines Register-Eintrags: er wurde von
einem anderen Loop aufgenommen und abgearbeitet.

Gegenprobe hub-weit statt nur an der einen Datei: ausser `rules/osascript-apple-apps.md`
(beschreibt den Fehler) und den beiden Laufberichten (dokumentieren ihn) existiert **kein**
Klarnamen-Aufruf von Mail oder Calendar mehr in `*.md`, `*.sh`, `*.mjs`, `*.py`. Status im
Register auf umgesetzt gesetzt.

### Der Befund: SYN-30 — vier Konsumenten, die nichts zurueckwissen

Die KB-Bewegung fuehrte auf `wissen/energie/wiki/oekologische-materialvorgaben-beschaffung.md`.
Der Wissens-Chef hat den Artikel am 14.08. um 22:54 (`71d58190`) und 23:39 (`979f7d92`) —
beide im Fenster — um die Vertragsstufe zwischen Devis und Baustelle erweitert und drei
AHB-Destillate ergaenzt.

Der Artikel benennt seine Konsumenten zweimal ausdruecklich:

- Z. 241–243: «Anschluss an die JANS-Skills: `ausschreibung` (LV-Positionen, Devis),
  `werkvertrag` (Ueberbindung, SIA 118), `unternehmerkontrolle` (Ausfuehrungskontrolle),
  `kostenkontrolle` (Kostenfolge bei Abweichung).»
- Z. 288–289: «Anschluss an die Skills `werkvertrag` (Ueberbindung) und `ausschreibung`
  (Submissionsbedingungen).»

Gegenprobe ueber alle vier `SKILL.md`: **0 Treffer** auf `energie` oder `wissen/energie` in
jeder einzelnen. Auch `skills/energie/SKILL.md` fuehrte keinen der vier in seiner
Konsumentenliste. Die Kante existierte damit ausschliesslich im Wiki-Artikel — in keiner
Skill-Datei, in keiner Richtung.

Dass es sich lohnt, zeigt der Inhalt: er ist nicht energetisch, sondern vergaberechtlich.

- `ahb-devis-und-baustellenkontrolle-2008.md` traegt im Dokument den Titel «Kontrolle
  Oekologievorgaben in Ausschreibungen» und regelt, wie oekologische Anforderungen in
  LV-Positionen gehoeren und wie sie auf der Baustelle geprueft werden.
- `ahb-bedingungen-werkleistungen-nachhaltiges-bauen.md` (KBOB/eco-bau/IPB, Juli 2008) ist
  laut Quelle «integrierter Bestandteil aller Werkvertraege» und liefert die drei
  uebertragbaren Mechanismen Warendeklaration mit Zustimmungsvorbehalt, materialscharfe statt
  pauschale Anforderung, Kostenfolge zulasten der Unternehmung.
- Dazu `bauoekologische-submissionsbedingungen.md` und die sechsteilige ECO-BKP-Reihe
  `ecobkp-2026-*` — **nach BKP-Code** gegliedert, also in genau der Systematik, in der ein
  LV geschrieben wird.

**Adversariale Gegenpruefung, drei Fragen:**

1. *Existiert das schon woanders?* Grep ueber `skills/ausschreibung/`, `werkvertrag/`,
   `unternehmerkontrolle/` nach `oekolog|eco-bau|SIA 493|Warendeklaration`: **eine**
   Streuerwaehnung in `referenzen/goldstandard-lv/272-tueren-LV622.md`, sonst nichts. Es ist
   eine Ketten-Luecke (Typ 1), keine Doppelrechnung — anders als beim Erstbefund zu SYN-16,
   wo die vermutete Doppelspurigkeit am selben Tag widerlegt wurde.
2. *Deckt ein bestehender Eintrag das ab?* SYN-20 fuehrt die neun Fach-Skills aus der
   Energie-Konsumentenliste; diese vier stehen dort nicht. Der QUERBEZUEGE-Eintrag
   `normen ↔ energie` vom 13.08. betrifft die SIA 112/1 und ist KB↔KB, hier geht es um
   KB↔Skill. Der Befund ist eigenstaendig.
3. *Ist der Inhalt in der richtigen KB?* Der Korpus ist der AHB-Ordner «18 Nachhaltiges
   Bauen», den der `energie`-Lern-Loop planmaessig abarbeitet. Die Ablage ist nicht das
   Problem, die fehlende Erreichbarkeit ist es.

**Umsetzung (active-with-flagging, SYN-16-Praezedenz, kein Entscheid noetig):** je eine
Klausel in der «Inputs»-Zeile von `ausschreibung`, `werkvertrag`, `unternehmerkontrolle`,
dazu die Gegenrichtung in `skills/energie/SKILL.md`. Jede Klausel traegt den
Alterskorpus-Vorbehalt mit («uebertragbar ist die Mechanik, nicht der Wortlaut»), damit eine
Quelle von 2006/2008 nicht unbesehen in ein heutiges LV oder einen heutigen Vertrag wandert.
In `werkvertrag` zusaetzlich der Hinweis, dass die Rangfolge der Vertragsbestandteile nach
SIA 118:1991 Art. 21/7 gilt und nicht nach der Selbstzuschreibung der Quelle — diesen
Attributionsvorbehalt fuehrt das Destillat selbst, und er waere beim Uebernehmen sonst
verlorengegangen.

**`kostenkontrolle` bewusst nicht verdrahtet.** Der Artikel nennt es, die Substanz dazu ist
aber ein einziger Mechanismus («Kostenfolge zulasten der Unternehmung»), und der erreicht die
Kostenkontrolle ohnehin ueber den Werkvertrag, dessen Summen ihr deklarierter Input sind.
Eine vierte Kante haette die Kantenzahl erhoeht, nicht die Erreichbarkeit.

### Geprueft, kein Befund

- **`normen`, neues Destillat `sia-416-1-2007.md`:** traegt korrekt `status: speculative` und
  ist sowohl in `wiki/REGISTER.md` als auch in `destillate/INDEX.md` verzeichnet. Die
  SYN-24-Mechanik (Verifikationsstatus als Warnkarte, Rule `normen-referenz` Punkt 1b) wirkt
  wie vorgesehen; keine Insel, kein Nacharbeitsbedarf. Bemerkenswert nur die Sorgfalt des
  Destillats selbst, das die Verwechslungsgefahr zu SIA 416:2003 zum eigenen Abschnitt macht.
- **`bauprodukte`, sechs neue Wiki-Artikel**, davon zwei BKP-codiert
  (`bkp-221-holzfenster-3fach-verglasung`, `bkp-281-estrich-systeme`): die SYN-16-Kante vom
  01.08. deckt sie ohne Nacharbeit ab, weil sie auf die KB zeigt und nicht auf einzelne
  Artikel. Genau dafuer wurde sie so formuliert.
- **`twin`, 23 Dateien:** nur ein Fidelity-Output, kein neuer Baustein, keine neue Kante.
  SYN-08 und SYN-22 bleiben unberuehrt.

## Methodischer Hinweis zum Tagestakt

Das strukturelle Delta bestand aus genau einem geaenderten Skill — und der trug lediglich die
Bestaetigung eines bereits offenen Eintrags. Der eigentliche Befund kam aus der
KB-Bewegung, aus einem Wiki-Artikel, den das Standard-Grep-Set des Schritts 1 gar nicht
erfasst. Bei striktem Nulldelta haette der Frueh-Ausstieg ihn uebersehen.

Die Regel bleibt richtig: reine KB-Inhaltsarbeit rechtfertigt keinen vollen Lauf. Aber die
Ausnahme «ausser ein offener Register-Eintrag nennt genau diese KB» sollte um einen zweiten
Fall erweitert werden — **eine KB erhaelt neue Wiki-Artikel, die Skills namentlich
adressieren**. Das ist billig zu messen, etwa
`grep -l 'Anschluss an die \(JANS-\)\?Skills'` ueber die im Fenster neu angelegten
KB-Dateien, und war hier der einzige Zugang zum Befund. Vorschlag an den naechsten Lauf,
nicht eigenmaechtig in die Task-Definition geschrieben.

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen vorher/nachher |
|---|---|---|
| `skills/ausschreibung/SKILL.md` | 1/1 | 402/402 |
| `skills/werkvertrag/SKILL.md` | 1/1 | 84/84 |
| `skills/unternehmerkontrolle/SKILL.md` | 1/1 | 82/82 |
| `skills/energie/SKILL.md` | 7/0 | 98/105 |
| `wissen/koordination/SYNERGIE-REGISTER.md` | 2/1 | 186/187, Tabellenzeilen 29/30 |
| dieser Laufbericht | Neuanlage | — |

Die vier Loeschungen sind beabsichtigte Zeilenersetzungen am Anker: die drei «Inputs»-Zeilen
sind je eine einzelne lange Zeile, das Anhaengen einer Klausel erscheint deshalb als
Ersetzung; die vierte ist die Statuszelle von SYN-28. **Keine Datei hat Bestand verloren.**
Kein globales Suchen-und-Ersetzen verwendet.

## Leitplanken eingehalten

Nur beobachtet und vorgeschlagen; die vier gesetzten Querverweise sind mechanisch und
umkehrbar (active-with-flagging). Kein Skill geloescht oder gemergt, `services/KATALOG.md`
nicht angefasst, kein Service-ENTWURF, keine Mail — der Lauf ist still, Wesentliches traegt
der `hub-chef` ins Tagesbriefing.
