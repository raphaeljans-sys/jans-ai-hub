# KB koordination — der Wissens-Chef

Dies ist das Register der **Koordinationsinstanz UEBER den einzelnen Wissensbasen**
(Skill/Scheduled Task `wissens-chef`). Die KBs unter `wissen/` lernen nicht mehr
isoliert, sondern als EIN zusammenhaengendes Wissenssystem.

## Auftrag

Cross-KB-Konsistenz sichern:
- **Widersprueche** zwischen zwei KBs finden (Aussage A vs. Aussage B, mit Beleg).
- **Fehlende Querverlinkung** — wo ein `[[link]]` in die andere KB fehlt.
- **Doppelspurigkeit** — gleicher Inhalt zweimal gepflegt; einen als fuehrend bestimmen.
- **Veraltetes** — aelterer Stand einer Info, die anderswo aktueller vorliegt.

Autonomie: **active-with-flagging** (Rule `wissens-bibliothekar`). Fehlende
Querverlinkungen + triviale Angleichungen direkt setzen (protokolliert); bestaetigte
Widersprueche mit klarer Aufloesung korrigieren; **unklare/heikle Faelle NICHT selbst
entscheiden**, sondern als offene Punkte in den Bericht (→ hub-chef-taeglich).

## Schema-Abweichung: Register statt Wiki

Dieses KB nutzt ein **Register-Schema**, nicht das Standard-Wiki-Schema (wissen/WISSEN-CLAUDE.md).
- **Kein `wiki/`**: Inhalt liegt in sprechenden Registerdateien wie `QUERBEZUEGE.md`, nicht in atomaren Artikeln.
- **Kein `INDEX.md`, `QUESTIONS.md`, `raw/_INGESTED.md`**: Diese Struktur ist nur für Faktenwissens-KBs (Baurecht, Energie, …); die Koordinations-Instanz ist ein Audit- und Verweis-Register.
- **Audit-Anpassung**: Der Skill `wissenscheck` überspringt die Standard-Checks B/D für `koordination` und prüft statt dessen die Korrektheit und Aktualität der Register.

Diese Abweichung ist absichtlich und dokumentiert.

## Dateien

- `QUERBEZUEGE.md` — Register aller bekannten Cross-KB-Bezuege (geprueft wann, Befund, Status).
- `CHANGELOG.md` — jede Chef-Aktion, datiert, neueste zuoberst.
- `outputs/JJJJ-MM-TT_wissens-chef-runN.md` — Laufberichte.

## Leitplanken

Nichts erfinden, jede Korrektur mit Quelle; `raw/` nie editieren; fremde Wikis nur
fuer Verlinkung/Korrektur anfassen, nicht umstrukturieren; Schweizer Hochdeutsch,
echte Umlaute; Loeschungen NIE ohne Rueckfrage. Verifikation vor Aktion (adversariale
Gegenpruefung an den Originalquellen).
