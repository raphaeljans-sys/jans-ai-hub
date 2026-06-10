---
name: twin
description: Der Personalisierungs-Harness («digitaler Zwilling») von Raphael Jans — das Gehirn, das jedem Claude-Erzeugnis den unverkennbaren JANS-Schlag gibt und ueber die Zeit zum digitalen Klon reift. Bewertet/veredelt ein Erzeugnis ueber sechs Facetten (Stimme, Denken, Haltung, Beziehungsregister, Fachsignatur, Arbeitsweise), entscheidet via Agent twin-chef ueber zusaetzliche Veredelungsrunden, lernt aus dem authentischen E-Mail-Korpus (vor der Claude-Aera) und trainiert im Wiederholungsrhythmus. Diesen Skill verwenden wenn der Benutzer fragt: "klingt das nach mir", "Twin", "personalisieren", "im JANS-Stil", "mein Stil", "digitaler Zwilling", "Fidelity pruefen", "Twin-Status", "Twin trainieren", "Selbstfragen". Laeuft automatisch als Fidelity-Gate NACH dem Skill `korrektur` ueber jedes ausgehende Erzeugnis.
---

# JANS Twin-Harness — der Personalisierungs-«Gehirn»-Layer

## Contract

- **Trigger:** (a) automatisch als **Fidelity-Gate** ueber jedes **ausgehende** Erzeugnis
  (Mail, Brief, Bericht, Offerte, LinkedIn-Post, Web-Text), unmittelbar NACH dem Skill
  `korrektur`; (b) auf Zuruf ("klingt das nach mir", "Twin", "im JANS-Stil", "Twin-Status",
  "Twin trainieren", "Selbstfragen"). Intern/Chat nur auf Zuruf.
- **Inputs:** das fertige (durch `korrektur` gelaufene) Erzeugnis + Gattung + Empfaenger/
  Kontext. Im Training: Zugriff auf den Mail-Connector (M365) fuer den authentischen Korpus.
- **Output-Ablage:** Gate = kein Datei-Output (gibt veredelte Fassung + Chef-Bericht
  zurueck). Training/Review = Reports nach `wissen/twin/outputs/JJJJ-MM-TT_*.md`, Marker ins
  `wissen/twin/wiki/`, Gehirn neu kompiliert nach `rules/jans-dna.md`.
- **Abhaengige Rules:** jans-dna (das aus diesem Skill kompilierte Gehirn), alle Stil-Rules
  (umlaute-konvention, mail-formatierung, dokument-layout-standard, antwort-formatierung,
  anrede-kontakte, auto-verbesserungen), wissens-bibliothekar (KB-Pflege).
- **Vorgelagert:** Skill `korrektur` (Rechtschreibung/Layout). **Das Gate laeuft DANACH.**
- **Nachgelagert:** Ausgabe/Versand durch den aufrufenden Skill.

## Zweck

`korrektur` macht ein Erzeugnis **fehlerfrei**. Dieser Skill macht es **unverkennbar
Raphael**. Er ist das Gehirn, das vor allen Fach-Harnessen sitzt (via Rule `jans-dna.md`,
@-Import ganz oben in CLAUDE.md → rahmt jede Erzeugung) und am Ausgang als Fidelity-Gate
prueft, ob das Ergebnis nach Raphael klingt. Ziel: ein perfekter digitaler Klon.

## Der Harness — acht Agenten

| Agent | Facette | Rolle |
|---|---|---|
| `twin-stilist` | Stimme/Ton | wie er klingt |
| `twin-denker` | Denken/Argumentation | wie er einen Gedanken fuehrt |
| `twin-werte` | Haltung/Werte | wofuer/wogegen er steht |
| `twin-beziehung` | Beziehungsregister | wie er mit WEM spricht |
| `twin-fachsignatur` | Fachsignatur | wie er Fachwissen einwebt |
| `twin-arbeitsweise` | Arbeitsweise | wie er strukturiert/delegiert |
| `twin-chef` | **Meta-Richter (zweites Ich)** | scort, **entscheidet ueber Veredelungsrunden**, schlichtet, lernt Korrektur-Deltas |
| `twin-fragesteller` | Selbstbefragung | generiert neue Fragen, schliesst blinde Flecken |

Wissensbasis: `wissen/twin/` (sechs Facetten-Artikel + QUESTIONS + outputs). Gehirn:
`rules/jans-dna.md` (daraus kompiliert via `tools/build_dna.py`).

## Workflow A — Fidelity-Gate (automatisch, nach `korrektur`)

1. Erzeugnis liegt korrigiert vor (Rechtschreibung/Layout sauber).
2. **Nur bei Aussen-Erzeugnissen** (Mail/Brief/Bericht/Offerte/Post/Web-Text): `twin-chef`
   im Gate-Modus starten. Empfaenger/Gattung mitgeben.
3. Der Chef scort die sechs Facetten und **entscheidet eigenstaendig**: durchwinken, oder
   gezielt betroffene Facetten-Agenten (VEREDELUNG) starten — bis Schwelle (Default 80) oder
   max. 3 Runden.
4. Finale Fassung + Chef-Bericht ausgeben, dann erst versenden/ablegen.
5. Aendert Raphael danach etwas: Chef erfasst das **Korrektur-Delta** (Lernsignal).

## Workflow B — Training (taeglich, Scheduled `twin-mail-training`)

1. Authentischen Korpus ziehen: `outlook_email_search` (Sent Items, **aeltest zuerst** =
   vor-Claude-Gold) + `read_resource` fuer Volltexte; je Mail die Gewichtung bestimmen
   (`authentisch` vor Stichtag / `korrektur-delta` / `claude-aera`=nicht als Stilquelle).
2. Deterministische Mikro-Metrik: `tools/stilmetrik.py` ueber die Mailtexte (Du-Quote,
   Apostroph, «…», Anrede/Gruss, Satzlaenge) — liefert belegte Zahlen.
3. Facetten-Agenten im ANALYSE-Modus die Marker ins `wiki/` destillieren lassen (nur Marker
   + anonyme Schnipsel, nie Volltext horten). CHANGELOG fuehren.

## Workflow C — Fidelity-Review (alle 2 Tage, Scheduled `twin-fidelity-review`)

1. `twin-chef` im Review-Modus: Selbsttest gegen echte Goldproben, Score je Facette,
   Drift-Report nach `outputs/`.
2. Facetten-Agenten validieren sich gegenseitig (Widersprueche → QUESTIONS).
3. `twin-fragesteller` haengt neue Fragen an `QUESTIONS.md`.
4. Gehirn neu kompilieren: `python3 tools/build_dna.py` → `rules/jans-dna.md`. CHANGELOG.

## Echo-Schutz (eiserne Regel)

Der Zwilling lernt **nie von seinem eigenen Echo**: unbearbeitete Claude-Ausgaben
(`claude-aera`) sind keine Stilquelle. Gold = `authentisch` (vor-Claude); Lernsignal =
`korrektur-delta` (was Raphael nachtraeglich aenderte). Siehe `wissen/twin/CLAUDE.md`.

## Tools

- `tools/build_dna.py` — kompiliert die sechs Facetten-Wikis (Do/Don't + Kernmarker) in den
  Auto-Block von `rules/jans-dna.md`. Deterministisch, idempotent.
- `tools/stilmetrik.py` — misst Mikro-Stil-Kennzahlen eines Textkorpus (belegt die Marker).

## Defaults

- Fidelity-Schwelle 80, max. 3 Veredelungsrunden.
- Gate-Reichweite: nur ausgehende Erzeugnisse automatisch; intern/Chat nur auf Zuruf.
- Trainingsrhythmus: Mail-Training taeglich, Fidelity-Review alle 2 Tage.
