---
description: "Spec-Methode (Karpathy/Marchese, 'The Spec / 3 Easy Steps') fuer JANS — gleist ein groesseres Vorhaben auf, indem zuerst das WAHRE ZIEL als Spec aufgedeckt wird (Interview + Schluesselentscheide bestaetigen), dann agil in engen Scopes mit Checkpoints gearbeitet wird, mit vorab definierten Bewertungskriterien und einem Verifier (zweite Pruefinstanz/externes Signal). PROMPTS → SPECS: erst planen, dann bauen. Diesen Skill verwenden wenn der Benutzer fragt: 'Spec', 'Spec-Methode', 'die Methode anwenden', 'aufgleisen', 'Vorhaben aufsetzen', 'interview mich', 'stell mir die richtigen Fragen', 'Ziel klaeren bevor wir bauen', 'Plan Mode', 'Karpathy-Methode' — UND automatisch als erster Schritt, sobald die Rule spec-methode bei einer groesseren/mehrteiligen/mehrdeutigen/risikoreichen Anfrage anschlaegt. Gegenstueck/strategische Vorstufe zur Rule auftrags-dekomposition (dort taktische Zerlegung eines bereits klaren Auftrags); Verifier-Stufe nutzt korrektur/twin/code-review + Connectoren. Naehrt sich aus der KB wissen/spec."
---

# JANS Spec-Methode (`spec`)

> PROMPTS → SPECS. Erst das Verstaendnis als Spec uebergeben, dann bauen. Agile > Waterfall.
> Faktenbasis: KB `wissen/spec/` (Artikel [[the-spec]], [[3-schritte-spec]], [[verifier]],
> [[environment-jans-hub]], [[anwendung-jans]]).

## Contract
- **Trigger:** groesseres/mehrteiliges/mehrdeutiges/risikoreiches Vorhaben — oder der Benutzer
  bittet ausdruecklich, etwas "aufzugleisen" / "richtig aufzusetzen" / "mich zu interviewen".
  Der Gate-Test steht in der Rule `spec-methode` und in [[anwendung-jans]].
- **Inputs:** das Vorhaben (oft vage). Bestehende Faktenbasis: passende KB unter `wissen/`,
  Goldstandards, Projektordner.
- **Output:** (1) eine abgestimmte **Spec** (Ziel · Abgrenzung · Annahmen · Kriterien · Plan ·
  Verifikation), abgelegt als `wissen/spec/outputs/JJJJ-MM-TT_<vorhaben>_spec.md`; danach (2)
  die agile Umsetzung gegen diese Spec.
- **Nicht-Ziel:** trivialen Einzelauftrag verzoegern. Bei klarer, kleiner Aufgabe direkt liefern.

## Wann NICHT (direkt liefern)
Triviale Auskunft/Lookup/Statuscheck, kleine mechanische Aenderung, der Benutzer hat bereits
eine praezise Vorgabe geliefert, oder sagt "einfach machen". Im Zweifel: EIN Satz, der den
Spec-Modus anbietet, statt blind loszulegen.

## Ablauf

### Schritt 1 — Ziel aufdecken (Uncover the Goal)
Die KI interviewt den Benutzer, statt sofort zu liefern. Tendenz zu **kleinen, abgegrenzten**
Specs. **Schluesselentscheide ausdruecklich bestaetigen lassen** (am besten via
`AskUserQuestion`), damit nichts vergessen geht.
- Leit-Prompt (intern): "Interviewe mich, um das wahre Ziel dieses Vorhabens zu finden.
  Tendiere zu kleinen, abgegrenzten Specs. Lass mich Schluesselentscheide ausdruecklich
  bestaetigen, damit nichts vergessen geht."
- Zuerst die passende Faktenbasis ziehen (KB/Goldstandard/Projektordner), damit die Fragen
  gezielt sind und nicht das abfragen, was der Hub schon weiss.
- Ergebnis: Ziel in einem Satz + die getroffenen Schluesselentscheide.

### Schritt 2 — Agil arbeiten (Be Agile)
Zyklus **Tight Scope → Clear Checkpoint → Review → Adjust & Repeat**.
- `TaskCreate`-Checkliste der Deliverables (verbindet mit Rule `auftrags-dekomposition`).
- Je Block einen engen Scope nehmen, einen ueberpruefbaren Zwischenstand zeigen, Review
  einholen, anpassen. Nicht alles auf einmal bis zum Schluss (Waterfall vermeiden).

### Schritt 3 — Praezise sein + Verifier (Be Precise + The Verifier)
- **Bewertungskriterien vorab** formulieren ("Sei praezise"): woran wird ein erstklassiges
  Ergebnis gemessen? Konkret, nicht "mach es gut".
- **Format-Vorlage:** ein frueheres Beispiel / einen **Goldstandard** als Muster nehmen.
- **Zweite Pruefinstanz** (Layer 2) — Rangordnung: **autoritative Instanz (bindend) vor
  externem Signal/Connector (Indiz)**; Connector-Gruen ist nie selbst "bestanden". Konkrete
  Zuordnung je Domaene (Recht/Behoerde, Buchhaltung/Steuern, Baurecht/Norm, Ausschreibung/
  Uebergabe, Wettbewerb/Jury, Text/Dokument) steht als wachsende Tabelle in [[verifier]]
  ("Verifier-Zuordnung je Domaene") — dort nachschlagen statt neu herleiten. Faustregeln:
  - Texte/Dokumente/Mails → Skill `korrektur` (+ `twin`-Fidelity-Gate),
  - Code → `/code-review`,
  - Fakten/Stand → **externes Signal via Connector** (bexio `--abgleich`, geo-zh OEREB,
    Zefix, M365, Truninger DS3) — als Indiz, nicht als Ersatz fuer die autoritative Instanz.
- Leit-Prompt (Verifier): "Definiere vor dem Start die praezisen Kriterien fuer ein
  erstklassiges Resultat, nimm ein frueheres Beispiel als Format-Vorlage und lass ein
  zweites Modell das Endergebnis pruefen."

## Spec-Output-Schema (`outputs/JJJJ-MM-TT_<vorhaben>_spec.md`)
Kopiervorlage: `wissen/spec/templates/spec-vorlage.md` (empirisch aus 5+ realen Specs
destilliert, staerker als die alte Kurzfassung hier). Kernabschnitte:
```
# <Vorhaben> — Spec
- Ziel (1 Satz):
- Abgrenzung (was NICHT dazugehoert):
- Ist-Zustand (Scan) — nur bei System-/Prozess-/Umbau-Vorhaben:
- Schluesselentscheide (bestaetigt JJJJ-MM-TT) — je Entscheid Status vermerken
  (bestaetigt / vorgeschlagen / offen-gatet-Etappe X / umgesetzt), bewegliche
  Annahmen (Name/Kapital/Termin) explizit als "noch beweglich" markieren:
- Bewertungskriterien (woran Erfolg gemessen wird):
- Plan (enge Scopes + Checkpoints):
- Verifikation (autoritative Instanz vor externem Signal, siehe [[verifier]]-Tabelle):
- Faktenbasis (KB/Goldstandard/Connector):
- Monitor-Log — nur bei lebender Spec (laeuft ueber Tage/Wochen, low-noise "nichts Neues"):
```

## Compounding & Training
- Jede groessere Anwendung als `outputs/`-Spec ablegen; gute Specs werden Vorlage.
- Trainings-Loop `wissen/spec/training/PROGRAMM.md` (Scheduled Task `spec-training`, alle 3
  Tage): wertet reale Anwendungen aus, schaerft Gate-Schwelle + Prompts, baut Quellen nach.

## Verweise
- Rule `spec-methode` (das immer-aktive Gate) · Rule `auftrags-dekomposition` (taktische
  Zerlegung) · Skill `korrektur` + `twin` (Verifier fuer Texte) · KB `wissen/spec/`.
