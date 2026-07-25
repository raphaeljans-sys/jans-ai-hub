# KB Spec — Schema & Fokus

Wissensbasis zur **Spec-Methode** (Karpathy/Marchese, "The Spec / 3 Easy Steps"). Sie
liefert die Methodik für den Skill `spec` und die Rule `spec-methode` und verbessert sich
kompoundierend über den Trainings-Loop (`training/PROGRAMM.md`).

Allgemeines Schema: siehe `wissen/WISSEN-CLAUDE.md`. Rolle: KI-Bibliothekar
(Rule `wissens-bibliothekar`, active-with-flagging, CHANGELOG-Pflicht).

## Fokus-Bereiche
- Die Methode selbst (3 Layer: Spec / Verifier / Environment; 3 Schritte in Layer 1).
- Die **JANS-Ausprägung**: wann anwenden (Gate-Test), wie durchführen, Abgrenzung zu
  bestehenden Mechaniken (auftrags-dekomposition, korrektur, twin, wissen/-Trainings).
- **Compounding:** reale Spec-Anwendungen als Beispiele/Goldstandards kuratieren.

## Schreibregeln (KB-spezifisch)
- Schweizer Hochdeutsch, echte Umlaute, kein ß (Rule `umlaute-konvention`).
- Prompts im Original (englisch) UND mit JANS-Fassung (deutsch) führen.
- Jede nicht-triviale Aussage trägt eine Quelle aus `sources` (Transkript/Original/Doku).
- Status ehrlich: `speculative` solange nur via Screenshot-Transkript belegt; auf
  `established` heben, sobald durch Originalquelle (Karpathy/Cherny/Anthropic) bestätigt.

## Quellen
- `raw/260616_marchese_the-spec_karpathy-method_transkript.md` (Seed).
- Offen: Karpathy-Post, Cherny-Thread, Anthropic-Plan-Mode-Doku (QUESTIONS F4/F5).

## Speist
- Skill `skills/spec/SKILL.md`
- Rule `rules/spec-methode.md`
- Trainings-Task `spec-training`
