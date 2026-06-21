---
title: Layer 3 — The Environment (= der JANS AI Hub)
status: established
last_updated: 2026-06-21
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
| CLAUDE.md | `CLAUDE.md` (40k, Architektur + Konventionen) | vorhanden |
| LLM Knowledge Base (raw→wiki) | `wissen/` mit 11 KBs, Karpathy-Schema, KI-Bibliothekar | vorhanden, ausgebaut |
| Skill Set | `skills/` (43 Skills), "Skills sind das primaere Interface" | vorhanden, ausgebaut |
| Rules / Guardrails | `rules/` (@-Import, immer aktiv) + Hooks | vorhanden |
| Workspace verbessert sich | Scheduled-Task-Trainings-Loops je KB | vorhanden, ausgebaut |

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
