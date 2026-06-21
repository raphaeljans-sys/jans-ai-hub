---
title: Layer 2 — The Verifier (Verifikations-Hebel)
status: established
last_updated: 2026-06-21
sources: [260616_marchese_the-spec_karpathy-method_transkript.md]
links: [[the-spec]], [[3-schritte-spec]], [[environment-jans-hub]]
---

# Layer 2 — The Verifier

Boris Cherny (Claude Code, Anthropic): der vielleicht wichtigste Hebel fuer gute Resultate
ist, **der KI einen Weg zu geben, ihre eigene Arbeit zu pruefen**. Mit diesem Feedback-Loop
steigt die Qualitaet des Endprodukts um das **2- bis 3-Fache**. Verifikation sieht je nach
Domaene anders aus (ein Bash-Befehl, eine Testsuite, ein Browser-/Simulator-Test) — sie
muss bombenfest sein.

Warum: die KI glaenzt, wenn klare Antworten vorliegen, und liegt selbstsicher daneben, wenn
der Kontext fehlt. Der Verifier faengt genau das ab.

## Drei Wege, ein Output zu verifizieren
1. **Bewertungskriterien vorab setzen** (verbindet mit Schritt 3 der Spec, [[3-schritte-spec]]).
2. **Ein zweites KI-Modell als Kritiker** einsetzen (im Video: Codex-Plugin in Claude Code,
   `/codex:review`, `/codex:adversarial-review`). Im JANS-Hub vorhanden als Pattern:
   `/code-review`, der Korrektur-Harness (`rechtschreibung`+`layout`), das Twin-Fidelity-Gate.
3. **Externe Signale heranziehen**, wo moeglich — z.B. nach einem Deploy das Zielsystem
   abfragen und damit beweisen, dass es lief. Im JANS-Hub: Connectoren (bexio `--abgleich`,
   geo-zh OEREB, M365), die einen Output gegen die Realitaet pruefen statt gegen Vermutung.

## Verifier-Prompt
> "Before you start, define the precise criteria for a great result, use a past example as
> the format to match, and have a second AI check the final output."

JANS-Fassung:
> "Definiere vor dem Start die praezisen Kriterien fuer ein erstklassiges Resultat, nimm
> ein frueheres Beispiel als Format-Vorlage und lass ein zweites Modell das Endergebnis
> pruefen."

Im JANS-Hub ist die natuerliche Format-Vorlage ein **Goldstandard** (z.B. 2513 BAAR,
2620 Albertstrasse), die zweite Pruefinstanz der Skill `korrektur` und das `twin`-Gate,
das externe Signal der passende **Connector**.
