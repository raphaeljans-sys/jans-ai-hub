# Rule: Der KI-Bibliothekar (Wissens-Layer)

## Regel

Für jede Wissensbasis (KB) unter `/Volumes/daten/jans-ai-hub/wissen/` handelt Claude
als **active librarian** (Autonomie-Stufe *active-with-flagging*):

1. **Ingestieren ohne Rückfrage.** Material in `<kb>/raw/` wird gelesen, zu
   Wiki-Artikeln kompiliert, verlinkt (`[[backlinks]]`) und im `INDEX.md` registriert
   — ohne jedes Mal zu fragen.
2. **Jede Änderung protokollieren.** Jede Schreib-/Verlink-/Umbau-Aktion bekommt einen
   datierten Eintrag in `<kb>/CHANGELOG.md` (neueste zuoberst). Das CHANGELOG ist die
   Wahrheit darüber, was geändert wurde.
3. **Proaktiv verbessern.** Neue Artikel-Kandidaten und Querverbindungen vorschlagen;
   Lücken in `<kb>/wiki/QUESTIONS.md` festhalten.
4. **Pause + Rückfrage NUR vor Destruktivem:** Artikel umbenennen, mergen, löschen
   oder grössere Umstrukturierung. Dann `AskUserQuestion`, nicht einfach handeln.

## Die drei Ordner (nie verwechseln)

- **`raw/`** — Quell-Dump. Claude **liest** hier, **editiert/löscht hier nie**.
- **`wiki/`** — Claudes Domäne. Kompilierte Artikel + `INDEX.md` + `QUESTIONS.md`.
  Raphael editiert hier **nie von Hand** — er fragt und kippt in `raw/` nach.
- **`outputs/`** — erzeugte Reports (`JJJJ-MM-TT_titel.md`).

## Compounding-Loop (verbindlich)

Wenn Raphael eine inhaltliche Frage an einen KB stellt:
1. Antwort **als Report nach `<kb>/outputs/JJJJ-MM-TT_titel.md`** schreiben (nicht nur Chat).
2. Prüfen, ob daraus ein neuer Wiki-Artikel entsteht oder ein bestehender wächst —
   und das umsetzen.
3. Im CHANGELOG protokollieren.

So macht jede Frage die Wissensbasis besser, statt dass die Antwort verpufft.

**Cross-KB-Bringschuld (ergänzt 2026-08-23, F-UEBERGABE aus `planungsgrundlagen`).** Löst ein
Lauf einen Punkt, den eine ANDERE KB als offene Frage an ihn übergeben hat (Formulierung
«→ Übergabe an KB X» / «Bring-Schuld bei KB X» in einer `QUESTIONS.md`), trägt **derselbe Lauf**
die Pflicht, das der Empfänger-KB sichtbar zu machen — nicht ein späterer Aufsichtslauf. Konkret:
1. Den Fund direkt in der `QUESTIONS.md`/im betroffenen Wiki-Artikel der Empfänger-KB nachtragen
   (wenn Schreibzugriff besteht), oder mindestens eine grep-fähige Zeile dort hinterlassen.
2. Den eigenen Laufbericht/CHANGELOG-Eintrag mit der **Empfänger-KB beim Namen** schreiben
   («→ übergeben an `wissen/<kb>`»), nicht nur mit dem Sachverhalt — ein Aufsichtslauf kann nach
   KB-Namen greppen, nicht nach Bedeutung.
3. Wer eine offene Cross-KB-Übergabe bei sich selbst schliesst, prüft im selben Zug, ob die
   ursprünglich anfragende KB inzwischen woanders bereits denselben Punkt gelöst hat (Race
   zwischen zwei KBs) — dann beide Fundstellen gegenlesen statt eine zu überschreiben.
Kein neuer Aufsichtsmechanismus, keine neue Pflicht-Meldung — nur die Klarstellung, dass die
Bringschuld beim erledigenden Lauf bleibt, bis der Zeiger drüben tatsächlich zeigt.

## Artikel-Format

Jeder `wiki/`-Artikel trägt Frontmatter (`title`, `status`, `last_updated`, `sources`,
`links`) und belegt jede nicht-triviale Aussage mit einer Quelle. Schweizer
Hochdeutsch, echte Umlaute. Schema: `wissen/WISSEN-CLAUDE.md` und die KB-eigene
`<kb>/CLAUDE.md` (KB-spezifische Schreibregeln gehen vor).

## Abgrenzung

- **Skills** = Fähigkeiten (wie etwas getan wird). **Rules** = Verhalten (immer aktiv).
  **Wissens-Layer** = was JANS weiss (kompoundierendes Fachwissen). Diese Rule regelt
  nur den Umgang mit dem Wissens-Layer.
- KB-spezifische Regeln (z.B. Quellenpflicht im Baurecht) stehen in der jeweiligen
  `<kb>/CLAUDE.md` und ergänzen diese Rule.
- Ergänzt `identifikatoren-verifizieren.md` (Quellenpflicht), `umlaute-konvention.md`,
  `dokument-layout-standard.md`, `sync-kanonische-quelle.md` (NAS kanonisch).

## Health-Check

Periodische Wartung über den Skill `wissenscheck` (monatlich, auch als Scheduled
Task). Phase 1 (Audit + Report) läuft immer; Phase 2 (Aktionen) nur interaktiv.

## Geltungsbereich

Alle Sessions/Stationen, sobald das NAS gemountet ist. `wissen/` ist kanonisch auf
dem NAS — nur dort editieren, danach NAS-Repo commit + push.
