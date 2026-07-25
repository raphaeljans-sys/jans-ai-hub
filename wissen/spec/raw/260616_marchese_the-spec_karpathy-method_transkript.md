# RAW — "Stop Prompting Claude. Use Karpathy's Method Instead." (Austin Marchese)

Quelle: YouTube, Austin Marchese (Kanal ~50'000 Abo), Titel "Stop Prompting Claude.
Use Karpathy's Method Instead.", ~320'000 Aufrufe, veroeffentlicht ~10. Juni 2026.
Aufgenommen als 34 Screenshots am 16. Juni 2026 durch Raphael Jans, abgelegt unter
OneDrive `AD - 01 Geschaeftsfuerung/JANS AI/03 Prompteingaben/3 EASY STEPS - the Spec`.
Diese Datei ist die Transkription/Destillation dieser Screenshots (raw — nie editieren).

Methodischer Ursprung: **Andrej Karpathy** (ehem. Head of AI bei Tesla) + Tipps von
**Boris Cherny** (Claude Code, Anthropic). Marchese verpackt es in ein 3-Layer-Modell.

---

## Kernidee — "The Spec"

> "The Spec — It is how you deliver your understanding to AI in a format it can use.
> A term you may have heard is 'Claude's Plan Mode' to create a plan before building
> anything."

Leitsatz: **PROMPTS → SPECS**. Nicht mehr Einzel-Prompts abfeuern, sondern dem KI-Modell
zuerst das eigene *Verstaendnis* als nutzbare Spezifikation uebergeben. Erst planen, dann
bauen.

Ablaufkette: **Goals → Requirements → Spec → Implementation.**

Mentales Modell: **Agile > Waterfall.**
- WATERFALL: "You take a big task. Complete the whole thing. Show the final result."
- AGILE: "You break that same task into small buckets and show the result throughout the
  process."

Karpathys Auto-Waschanlage-Beispiel (warum der Goal-Schritt zaehlt): Auf "Ich will zur
Waschanlage, sie ist 50 m weg, soll ich fahren oder laufen?" wuerde die KI "lauf" sagen.
Karpathys bessere Formulierung nennt das eigentliche Ziel: "Ich will zur Waschanlage,
**um mein Auto zu waschen**" — jetzt ist klar, dass man fahren muss. Das wahre Ziel
aufdecken veraendert die Antwort.

---

## Das 3-Layer-Modell (Whiteboard)

- **LAYER 1: THE SPEC** (PROMPTS → SPECS; "Agile > Waterfall")
- **LAYER 2: THE VERIFIER**
- **LAYER 3: THE ENVIRONMENT**

---

## LAYER 1 — THE SPEC: "3 EASY STEPS to build a SPEC in Claude"

### Schritt 1 — Uncover the Goal (das Ziel aufdecken)
Erst-Prompt (im Video getippt): "Interview Me To identify the goal of this project."
Verfeinerter Prompt (Einblendung):
> "Interview me to find the real goal of this project. Bias toward small,
> compartmentalized specs. Make me verify key decisions explicitly so nothing is missed."

### Schritt 2 — Be Agile with how you work (agil arbeiten)
Der Arbeitszyklus (Kreislauf):
**Tight Scope → A Clear Checkpoint → Review the Output → Adjust and Repeat → (zurueck zu Tight Scope).**

### Schritt 3 — Be Precise and USE YOUR BRAIN (praezise sein, mitdenken)
- Vage: "mach es gut".
- Praezise: "The report must have 3 sections, each ends with a recommendation."
- Prompt: "Outline the evaluation criteria you will use to ensure a high-quality final
  product. Be precise."

---

## LAYER 2 — THE VERIFIER ("Verification Lever")

Boris Cherny (Claude Code), zitierter Post:
> "13/ A final tip: probably the most important thing to get great results out of Claude
> Code — give Claude a way to verify its work. If Claude has that feedback loop, it will
> 2-3x the quality of the final result. ... Verification looks different for each domain.
> It might be as simple as running a bash command, or running a test suite, or testing the
> app in a browser or phone simulator. Make sure to invest in making this rock-solid."

Warum noetig: "That's happening when AI nails math and fumbles anything with context."
- "It's brilliant, because the library has the clear answers."
- "If it doesn't, then it's confidently wrong or uncertain."

Frage: "How do you help AI verify the output so it's up to the standard you want?"
1. **First, set evaluation criteria up front.** (Bewertungskriterien vorab festlegen.)
2. **Second, use a second AI Model as the critic.** (Ein zweites Modell als Kritiker.)
3. **Third, pull external signal where possible.** (Externe Signale heranziehen.)

Frage: "How can you bring in additional context that will help you verify an output?"
Beispiel App-Deployment:
- System an den Ort koppeln, wo deployt wird.
- Das hilft zu VERIFIZIEREN, dass erfolgreich deployt wurde.
- Externe Daten ziehen, um den Verifikations-Layer zu staerken — jetzt mit Gewissheit.

Prompt (Verifier):
> "Before you start, define the precise criteria for a great result, use a past example as
> the format to match, and have a second AI check the final output."

(Im Video gezeigt: Codex-Plugin fuer Claude Code als zweites Modell/Kritiker —
`/codex:review`, `/codex:adversarial-review`.)

---

## LAYER 3 — THE ENVIRONMENT: "How do you create a proper workspace that improves over time?"

1. **Setup a proper CLAUDE.md file.**
2. **Build your LLM Knowledge Base.**
3. **Start building out your Skill Set.**
4. **Create Rules for what the AI can and can't work on.**

Prompt (Environment-Audit):
> "Check my CLAUDE.md, my knowledge base, my skills, and my guardrails. For each of the
> top 5 gaps, name the file, the problem, and the exact fix — and flag which risky actions
> need a hook so I can't bypass them."

### Karpathys LLM-Knowledge-Base (zitierter Post @karpathy, "LLM Knowledge Bases")
> "Something I'm finding very useful recently: using LLMs to build personal knowledge bases
> for various topics of research interest. ... Data ingest: I index source documents
> (articles, papers, repos, datasets, images, etc.) into a raw/ directory, then I use an
> LLM to incrementally 'compile' a wiki, which is just a collection of .md files in a
> directory structure. The wiki includes summaries of all the data in raw/, backlinks, and
> then it categorizes data into concepts, writes articles for them, and links them all. ..."

### Austins CLAUDE.md ("Internal-OS") — Knowledge Architecture (3 Schichten, getrennte Hoheit)
- `knowledge/raw/` — Immutable source material (ingested, never edited)
- `knowledge/wiki/` — Claude-generated synthesis (Claude maintains)
- `knowledge/frameworks/` — Actionable guides (Mensch + Claude collaborate)

Weitere Bausteine in Austins Repo: `.claude/skills/` (Slash-Command-Workflows),
`.claude/agents/` (Consultant-Personas), Skill-Routing-Tabelle, "Working Rules"
(Role routing, Search before building, Effort matching), Project-Lifecycle.
"Skills are the primary interface. When in doubt, invoke the skill."

---

## Schlusspointe — "One thing to Focus on in the age of AI"

> "You need to UNDERSTAND your goals and what's needed to direct AI to start working for
> you."

Das Ziel zu verstehen ist die eine Kompetenz, die zaehlt — alles andere (Spec, Verifier,
Environment) dient nur dazu, dieses Verstaendnis fuer die KI nutzbar zu machen.
