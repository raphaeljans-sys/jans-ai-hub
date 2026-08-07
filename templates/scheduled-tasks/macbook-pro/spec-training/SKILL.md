---
name: spec-training
description: EREIGNIS-TRIGGER statt Zeittakt (Entscheid Raphael 26.07.2026, Registry-Nachzug 27.07.): laeuft nur noch auf Zuruf bei realer Spec-Anwendung, nicht mehr taeglich.
---

Du bist der Trainings-Loop fuer die SPEC-METHODE im JANS AI Hub (Karpathy/Marchese, "The Spec / 3 Easy Steps"). Voraussetzung: NAS gemountet unter /Volumes/daten. Wenn nicht, brich ab und melde das kurz.

Ziel: Die Spec-Methode (erst das wahre Ziel als Spec aufdecken, dann bauen) wird mit jeder realen Anwendung treffsicherer und lernt mit, wie Raphael arbeitet.

Faktenbasis und verbindlicher Ablauf stehen in:
- /Volumes/daten/jans-ai-hub/wissen/spec/training/PROGRAMM.md  (Ablauf eines Laufs — GENAU befolgen)
- /Volumes/daten/jans-ai-hub/wissen/spec/wiki/  (the-spec, 3-schritte-spec, verifier, environment-jans-hub, anwendung-jans, INDEX, QUESTIONS)
- /Volumes/daten/jans-ai-hub/wissen/spec/CLAUDE.md  (KB-Schema, Schreibregeln)
- Rule /Volumes/daten/jans-ai-hub/rules/spec-methode.md und Skill /Volumes/daten/jans-ai-hub/skills/spec/SKILL.md

Lauf (Phase 1 immer, Phase 2 nur bei eindeutigem Mehrwert — active-with-flagging):
1. Stand lesen: wiki/QUESTIONS.md (offene F-Fragen), wissen/spec/outputs/ (neue Spec-Anwendungen seit letztem Lauf), CHANGELOG.md.
2. Environment-Audit gegen den Hub fahren: Pruefe CLAUDE.md, wissen/, skills/, rules/ (+Hooks). Nenne fuer die Top-5-Luecken je Datei, Problem und exakten Fix; markiere, welche riskanten Aktionen einen Hook brauchen. Nur Befund festhalten, nicht ungefragt umbauen.
3. 1-2 reale Spec-Anwendungen aus outputs/ auswerten: Wo half die Methode, wo nervte das Gate, wo fehlte ein Schritt? Korrektur-Deltas (was Raphael nachtraeglich aenderte) erfassen.
4. Nachschaerfen: Gate-Schwelle (wiki/anwendung-jans.md + rules/spec-methode.md), Interview-Laenge je Vorhabenstyp, Verifier-Zuordnung je Domaene. Prompts/Wiki praezisieren; Artikel-Status heben wo belegt. Aenderungen an der RULE (Verhalten aller Stationen) nur bei klarem Beleg, sonst Raphael vorlegen.
5. Eine offene Quelle aus QUESTIONS F4/F5 einholen, wenn moeglich (Karpathy-"LLM Knowledge Bases"-Post, Boris-Cherny-Claude-Code-Thread, Anthropic-Plan-Mode-Doku) und Artikel-Status heben.
6. Output schreiben: wissen/spec/outputs/JJJJ-MM-TT_training-runN.md (was ausgewertet, was geaendert, was als naechstes).
7. wissen/spec/CHANGELOG.md ergaenzen (neueste zuoberst). Dann NAS-Repo committen und pushen (Rules git-auto-push / sync-kanonische-quelle / sync-single-committer beachten — nur auf NAS editieren).

Schreibregeln: Schweizer Hochdeutsch, echte Umlaute ae/oe/ue als ä/ö/ü, kein ß. Nichts erfinden — Methodik-Aussagen belegt halten, Unbelegtes bleibt status: speculative. Gate nicht ueberdehnen: das Ziel ist, dass die Spec-Methode hilft, nicht dass sie jeden Mini-Auftrag verzoegert.

Halte die Zusammenfassung am Ende kurz: was gelernt/geaendert wurde und was offen bleibt.
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Mechanische Stufen (Quellen lesen, destillieren, formatieren, Inventar/Register nachfuehren)
NICHT im Hauptkontext ausfuehren, sondern an Subagenten mit guenstigem Modell delegieren
(Agent-Aufruf mit model: haiku fuer reine Extraktion/Formatierung, model: sonnet fuer
Destillate mit Textverstand). NUR Urteils- und Verifikationsstufen (Refuter-Pruefung,
Status-Hebung, Widerspruchs-Entscheid, Qualitaets-Synthese) laufen auf dem Hauptmodell.
Gleiches Ergebnis-Format wie bisher; Qualitaetsleitplanken unveraendert.