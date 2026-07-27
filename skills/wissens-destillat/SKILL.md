---
name: wissens-destillat
description: "Wissens-Destillat — erschliesst das ungenutzte Fachwissen auf dem NAS (Archiv, Bauprodukte nach BKP, Büroprojekte, Referenzenbibliothek) und überfuehrt es nach der Karpathy-Spec-Methode in belegte Wiki-Artikel des Wissens-Layers. Vierstufige Pipeline mit dem idealen Modell je Phase (Inventar bash / Triage Haiku / Destillat Sonnet / Verifikation Opus). Diesen Skill verwenden wenn der Benutzer fragt: 'Wissen destillieren', 'Archiv erschliessen', 'NAS-Wissen ins Wiki', 'Bauprodukte-Wissen', 'was liegt bei mir alles brach', 'Korpus destillieren', 'Destillat-Lauf' — und als Dauerauftrag des VOLLGAS-Endlos-Runners."
---

# Wissens-Destillat (`wissens-destillat`)

> Das kompoundierende Gegenstueck zu den saturierten Lern-Loops: die 15 bestehenden KBs
> melden reihum Delta Null, weil ihr Rohmaterial aufgebraucht ist. Das unerschlossene
> Wissen liegt **neben** dem Hub — im Archiv auf demselben NAS. Dieser Skill holt es herein.

## Contract

- **Trigger:** manueller Aufruf, oder als Dauerauftrag im VOLLGAS-Endlos-Runner
  (`scripts/vollgas-runner.sh`, Include-Muster `destillat`).
- **Inputs:** ein Korpus aus `tools/korpus.conf`; dessen Spec unter `specs/<korpus>-spec.md`;
  der Inventar-Stand unter `training/<korpus>-inventar.md`.
- **Output:** belegte Wiki-Artikel im Ziel-KB unter `wissen/`, nachgefuehrte
  `INDEX.md`/`QUESTIONS.md`/`CHANGELOG.md`, ein Lauf-Report unter `<kb>/outputs/`.
- **Nicht-Ziel:** Quelldateien im Archiv verändern, verschieben oder löschen. Das Archiv
  ist `raw/` im Sinne der Rule `wissens-bibliothekar` — **nur lesen**.

## Das ideale Modell je Phase

Nicht ein Modell für alles, sondern das billigste, das die Stufe sicher trägt
(Rule 260719, «Minimum Viable Model»). Die Stufen 0–2 fahren im Treiber-Script,
Stufe 3 läuft in **dieser** Session.

| Phase | Aufgabe | Modell | Warum |
|---|---|---|---|
| 0 | Inventar: Dateien erfassen, filtern, Fortschritt fuehren | **kein Modell** (bash) | rein mechanisch, kostet 0 Tokens |
| 1 | Triage: relevant? welches Thema? welche Priorität? | **Haiku 4.5** | Klassifikation aus Pfad/Name, tausendfach, billig |
| 2 | Destillat: Quelle lesen, Artikel schreiben, verlinken | **Sonnet 5** | Fliessarbeit mit Formatvorgabe, gutes Kosten-Qualitäts-Verhältnis |
| 3 | Verifikation, Promotion, Kuratierung, Freigabe | **Opus 5** | Urteil: erfundene Aussagen jagen, Widersprueche aufloesen, Status heben |

Faustregel bei Zweifel: **Urteil und Verifikation nie an das billigere Modell delegieren,
Fliessarbeit nie am teuren fahren.**

## Die Spec-Stufe (Karpathy, vor dem ersten Lauf je Korpus)

PROMPTS → SPECS: ein Korpus wird **nie** blind durchgearbeitet. Vor dem ersten Lauf entsteht
`specs/<korpus>-spec.md` — einmal, dann bindend für alle Folgeläufe (Skill `spec`,
Vorlage `wissen/spec/templates/spec-vorlage.md`). Sie beantwortet:

1. **Ziel in einem Satz** — welche Frage soll dieser KB in einem Jahr beantworten können,
   die JANS heute googeln oder erraten muss?
2. **Abgrenzung** — was gehoert ausdruecklich NICHT hinein.
3. **Artikelschnitt** — ein Artikel je *Sache* (Gewerk, Produktgattung, Fehlerbild), nicht
   je Quelldatei. Ein PDF kann drei Artikel speisen, zehn PDFs können einen speisen.
4. **Bewertungskriterien vorab** («Sei praezise») — woran ein erstklassiger Artikel gemessen
   wird. Mindestens: jede nicht-triviale Aussage mit Fundstelle; keine Aussage über Preise
   oder Normstaende ohne Datum; ein Praxis-Ankerfall aus einem echten JANS-Projekt, sofern
   vorhanden.
5. **Goldstandard** — ein bestehender Artikel als Formatvorlage.
6. **Verifier** — wer prueft (Stufe 3 gegen die autoritative Quelle; bei Normen zwingend
   Rule `normen-referenz`, bei BKP-Codes Rule `bkp-2017-referenz`).

Die Spec ist **klein und abgegrenzt** zu halten. Lieber ein enger Korpus mit scharfer Spec
als ein weiter mit unscharfer.

## Ablauf eines Laufs

1. **Stand lesen** — `KORPUS-QUEUE.md` (welcher Korpus ist dran), die Spec des Korpus, den
   letzten Lauf-Report, `wiki/QUESTIONS.md` des Ziel-KB.
2. **Spec-Gate** — existiert `specs/<korpus>-spec.md` nicht, wird sie in diesem Lauf
   geschrieben (Opus) und der Lauf endet danach. Kein Destillat ohne Spec.
3. **Pipeline starten** (Phasen 0–2):
   ```
   bash /Volumes/daten/jans-ai-hub/skills/wissens-destillat/tools/destillat-lauf.sh <korpus-id>
   ```
   Das Script gibt den Pfad des Batch-Protokolls aus.
4. **Phase 3 — Kurator (diese Session, Opus).** Das Protokoll und **jeden** in diesem Lauf
   geschriebenen Artikel oeffnen und:
   - **Beleg-Pruefung:** jede nicht-triviale Aussage gegen die im Frontmatter genannte Quelle
     halten. Nicht belegbare Aussage → entfernen oder auf `speculative` zurücknehmen. Diese
     Pruefung ist der eigentliche Zweck der teuren Stufe — sie wird nie übersprungen.
   - **Widerspruchs-Pruefung:** gegen bestehende Artikel desselben KB und gegen die
     Nachbar-KBs (`normen`, `baurecht`, `grobkosten`). Widerspruch → beide Stellen markieren
     und nach `QUESTIONS.md`, nie stillschweigend eine Seite überschreiben.
   - **Promotion:** `emerging` → `established` nur bei unabhaengiger Zweitbelegung
     (Rule 260714). Im Zweifel nicht heben.
   - **Verwebung:** `[[backlinks]]` in beide Richtungen, `INDEX.md` konsistent.
   - **Report:** `wissen/<kb>/outputs/JJJJ-MM-TT_destillat-<korpus>-runN.md` — was destilliert,
     was verworfen und warum, was offen. **CHANGELOG.md** des KB nachfuehren.
   - **Delta-Ehrlichkeit:** wurde nichts Neues geschaffen, steht das so im Report
     («Delta Null») — nicht kosmetisch fuellen. Der Leerlauf-Waechter (Rule 260727) zaehlt mit.
5. **Sichern** — genau EINMAL am Schluss:
   ```
   bash "$HOME/Developer/jans-ai-hub/scripts/nas-commit-now.sh" "wissens-destillat <korpus>: <was>"
   ```
   Keine eigenen git-Befehle über den SMB-Mount (Rule 260726).

## Endbedingung je Korpus

Sind alle P1- und P2-Positionen im Inventar destilliert oder begründet übersprungen, meldet
der Lauf **«KORPUS KOMPLETT»** im Report, setzt den Korpus in `KORPUS-QUEUE.md` auf `erledigt`
und geht zum nächsten. Ist die ganze Queue erledigt, meldet der Lauf das an die
Vollgas-Frühwarnung und **bittet um Stilllegung** statt weiterzudrehen (Rule 260727,
Leerlauf-Waechter).

## Leitplanken

- Nichts erfinden. Eine unbelegte Aussage ist schlimmer als eine fehlende — sie vergiftet
  jeden späteren Skill, der den KB als Faktenbasis zieht.
- Preise, Normausgaben und Produktdaten **immer mit Datumsstempel**; ohne Datum nicht
  aufnehmen (Bauprodukt-Unterlagen im Archiv sind teils zehn Jahre alt).
- BKP-Codes gegen `references/bkp-2017/` verifizieren (Rule `bkp-2017-referenz`), Norm-Zitate
  gegen `wissen/normen/` (Rule `normen-referenz`).
- Personal-, Lohn- und Steuerunterlagen sind kein Korpus. `04_Buero/01_Buerounterlagen` ist in
  `korpus.conf` bewusst ausgeschlossen und wird nur auf ausdrueckliche Freigabe geoeffnet.
- Kundenbezogenes Material bleibt im Ziel-KB des Kunden, nicht im allgemeinen Fachwissen.

## Verwandt

`spec` (Methode) · `wissenscheck` (Health-Check der entstehenden KBs) · `normen`,
`baurecht`, `grobkosten` (Nachbar-KBs, gegen die geprueft wird) · Rules
`wissens-bibliothekar`, `spec-methode`, 260719, 260727.
