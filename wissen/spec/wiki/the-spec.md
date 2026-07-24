---
title: The Spec — das 3-Layer-Modell (Karpathy/Marchese)
status: established
last_updated: 2026-07-24
sources: [260616_marchese_the-spec_karpathy-method_transkript.md]
links: [[3-schritte-spec]], [[verifier]], [[environment-jans-hub]], [[anwendung-jans]]
---

# The Spec — das 3-Layer-Modell

**Kernidee:** Statt Einzel-Prompts abzufeuern, übergibt man der KI zuerst das eigene
*Verständnis* als nutzbare Spezifikation. **PROMPTS → SPECS.** Erst planen (Spec), dann
bauen — das, was Anthropic den "Plan Mode" nennt. Ablaufkette
**Goals → Requirements → Spec → Implementation**
(Quelle: [[the-spec]] RAW-Transkript Marchese).

> **Primärquelle Plan Mode (F5 eingelöst, 2026-06-27):** Anthropic Claude-Code-Doku,
> "Common workflows → Plan before editing": *"For changes you want to review before they
> touch disk, switch to plan mode. Claude reads files and proposes a plan but makes no edits
> until you approve."* (`claude --permission-mode plan` bzw. Shift+Tab).
> Belegt die Aussage "erst planen, dann bauen" als offizielles Anthropic-Pattern, nicht nur
> als Marchese-Interpretation. URL: https://code.claude.com/docs/en/common-workflows

**Mentales Modell: Agile > Waterfall.**
- Waterfall: grosse Aufgabe komplett erledigen, am Schluss das Endergebnis zeigen.
- Agile: dieselbe Aufgabe in kleine Blöcke brechen und das Resultat *während* des
  Prozesses zeigen. Die Spec-Methode ist konsequent agil.

Warum der Goal-Schritt zählt (Karpathys Waschanlage-Beispiel): "Ich will zur Waschanlage,
soll ich fahren oder laufen?" → KI sagt "lauf". "Ich will zur Waschanlage, **um mein Auto
zu waschen**" → jetzt ist klar: fahren. Das *wahre Ziel* aufzudecken ändert die Antwort.

## Die drei Layer

1. **Layer 1 — The Spec:** in 3 Schritten eine Spec bauen (Ziel aufdecken, agil arbeiten,
   präzise sein). Siehe [[3-schritte-spec]].
2. **Layer 2 — The Verifier:** der KI einen Weg geben, ihre Arbeit zu prüfen — das
   verdoppelt bis verdreifacht die Qualität. Siehe [[verifier]].
3. **Layer 3 — The Environment:** ein Arbeitsplatz, der mit der Zeit besser wird
   (CLAUDE.md, Knowledge Base, Skills, Rules). Siehe [[environment-jans-hub]].

## Die eine Kernkompetenz

> "You need to UNDERSTAND your goals and what's needed to direct AI to start working for
> you."

Alles andere (Spec, Verifier, Environment) dient nur dazu, dieses Verständnis für die KI
nutzbar zu machen. Wie der JANS AI Hub das umsetzt: [[anwendung-jans]].
