---
title: Layer 3 — The Environment (= der JANS AI Hub)
status: established
last_updated: 2026-07-13
sources: [260616_marchese_the-spec_karpathy-method_transkript.md, CLAUDE.md]
links: [[the-spec]], [[verifier]], [[anwendung-jans]]
---

# Layer 3 — The Environment

Marchese fragt: "How do you create a proper workspace that improves over time?" — vier
Bausteine:
1. Eine ordentliche **CLAUDE.md**.
2. Eine **LLM Knowledge Base** (Karpathy: `raw/` → kompiliertes `wiki/` mit Summaries,
   Backlinks, Konzept-Artikeln).
3. Ein **Skill Set**.
4. **Rules** dafuer, woran die KI arbeiten darf und woran nicht.

## Befund: Layer 3 baut JANS bereits — und tiefer als das Video

Der JANS AI Hub *ist* dieser Environment-Layer, in praktisch jedem Punkt schon umgesetzt:

| Video-Baustein | JANS AI Hub | Status |
|---|---|---|
| CLAUDE.md | `CLAUDE.md` (~50k, Architektur + Konventionen) | vorhanden |
| LLM Knowledge Base (raw→wiki) | `wissen/` mit 16 KBs, Karpathy-Schema, KI-Bibliothekar | vorhanden, ausgebaut |
| Skill Set | `skills/` (47 Skills), "Skills sind das primaere Interface" | vorhanden, ausgebaut |
| Rules / Guardrails | `rules/` (20 Dateien, @-Import, immer aktiv) + Hooks | vorhanden, siehe Luecken-Befund unten |
| Workspace verbessert sich | Scheduled-Task-Trainings-Loops je KB | vorhanden, ausgebaut |

Zaehlstand 2026-07-13 (Trainingslauf 8). Diese Tabelle veraltet erfahrungsgemaess schnell
(Skills/KBs wachsen laufend) — bei jedem Audit neu zaehlen statt die letzte Zahl vertrauen.

## Environment-Audit Trainingslauf 8 (2026-07-13) — Befund: Rule-Datei existiert, ist aber nicht verdrahtet

Der periodische Audit-Prompt (unten) deckte eine konkrete, belegte Luecke auf: zwei Rule-Dateien
lagen vollstaendig ausformuliert in `rules/`, waren aber **nicht** im @-Import von `CLAUDE.md`
eingebunden — ein reiner Verdrahtungsfehler, keine inhaltliche Frage.

1. **`rules/jans-dna.md`** (das "Gehirn" des Twin-Harness) — die Datei selbst UND
   `skills/twin/SKILL.md` (Zeile 28f.) dokumentieren explizit: *"@-Import ganz oben in
   CLAUDE.md → rahmt jede Erzeugung"*. Der Import fehlte komplett. Damit lief die gesamte
   Twin-Personalisierungs-Pipeline (7 Facetten-Agenten + `build_dna.py`) ins Leere, solange
   das kompilierte Ergebnis nie automatisch geladen wurde. **Fix (dieser Lauf, klar belegt,
   direkt umgesetzt):** `@/Volumes/daten/jans-ai-hub/rules/jans-dna.md` als ersten Eintrag
   des Rule-Imports in `CLAUDE.md` ergaenzt (Sektion "Geteilte Verhaltensregeln").
2. **`rules/sync-single-committer.md`** — ebenfalls nicht importiert, aber hier zusaetzlich
   ein **Beleg-Konflikt**: die Rule verbietet rohes Git direkt auf dem NAS-Repo ("nur der
   markierte Mac Mini committet/pusht, ueber `scripts/nas-git-commit.sh`"), waehrend die
   aktiv importierte `git-auto-push.md` genau das Gegenteil anweist (direkt `git commit` +
   `git push` auf `/Volumes/daten/jans-ai-hub`, explizit als Beispiel genannt). Da beide
   Dateien Verhalten alle Stationen betreffen und sich widersprechen, ist das **kein**
   Fall fuer eine autonome Fix (Rule-Inhalt aendern), sondern ein **Grenzfall fuer
   Raphael**: welche der beiden Anweisungen gilt fuer NAS-Git-Operationen? Nur die
   Registry-Luecke (README.md-Eintrag) wurde diesen Lauf geschlossen, der @-Import bewusst
   NICHT ergaenzt, bis der Widerspruch entschieden ist.
3. **`rules/README.md`** ("Aktive Rules"-Liste) war ebenfalls veraltet — 5 existierende
   Regeln fehlten (`anrede-kontakte`, `jans-absenderadresse`, `normen-referenz`, `jans-dna`,
   `sync-single-committer`). Rein additive Dokumentations-Nachfuehrung, kein Verhaltens-
   risiko → diesen Lauf direkt nachgezogen.

**Lektion fuer den Loop:** der Audit-Prompt sollte nicht nur zaehlen (Skills/KBs/Regeln),
sondern bei Rules explizit gegenchecken, ob jede Datei unter `rules/*.md` sowohl in
`rules/README.md` **als auch** im `CLAUDE.md`-@-Import auftaucht — die drei Listen
(Dateisystem, README, CLAUDE.md-Import) koennen unbemerkt auseinanderlaufen, weil das
Anlegen einer Rule-Datei allein noch keine Wirkung entfaltet.

Karpathys 3-Schichten-Hoheit (`raw/` unveraenderlich · `wiki/` Claude pflegt ·
`frameworks/` gemeinsam) entspricht 1:1 dem JANS-Schema `raw/` / `wiki/` / `outputs/`
(Rule `wissens-bibliothekar`, Meta `WISSEN-CLAUDE.md`).

## Konsequenz fuer das Hub

Layer 3 ist nicht der Nachholbedarf. **Neu und erzwungen einzubauen sind Layer 1 (Spec)
und Layer 2 (Verifier)** als bewusster *erster Schritt* grosser Anfragen — bisher passierte
das nur implizit. Genau das leisten der Skill `spec` und die Rule `spec-methode`. Details:
[[anwendung-jans]].

## Environment-Audit-Prompt (periodisch nutzbar)
> "Check my CLAUDE.md, my knowledge base, my skills, and my guardrails. For each of the top
> 5 gaps, name the file, the problem, and the exact fix — and flag which risky actions need
> a hook so I can't bypass them."

Dieser Prompt ist die Grundlage des `spec-training`-Loops ([[anwendung-jans]]).
