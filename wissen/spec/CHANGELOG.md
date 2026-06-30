# CHANGELOG — KB Spec (neueste zuoberst)

## 2026-06-30 — Trainingslauf 2
- Output `outputs/2026-06-30_training-run2.md` (Audit + Auswertung der AG-Gruendung-
  Fortschreibung bis 29.06.). Keine neue Spec-Anwendung, aber neue Korrektur-Deltas.
- Kern-Lektion: **lebende Spec** — zwei bestaetigte Schluesselentscheide kippten spaet
  (Name «JANS AG»→«Raphael Jans AG», Liberierung 50 %→100 %); Belegset als Version 260627
  neu gezogen. → `anwendung-jans.md` Schritt 2 (gekippte Entscheide im Abschnitt selbst
  korrigieren + Belegset versioniert nachziehen; bewegliche Annahmen markieren).
- `verifier.md`: Sektion «Empirisch bestaetigt» — die autoritative Instanz (Notar/HRA) behielt
  recht (Name tatsaechlich geaendert), Rangordnung autoritative Instanz > Connector belegt.
- F4 teilweise eingeloest: Karpathy-Primaerquelle (Gist «LLM Wiki» + X-Post) belegt; bestaetigt
  raw→wiki→schema + Compiler-Analogie + Linting (Skill `wissenscheck`). Cherny-Thread offen.
- `QUESTIONS.md` F1/F2/F4 nachgefuehrt. Rule `spec-methode.md` bewusst NICHT geaendert.
- Offen/geflaggt fuer Raphael (2. Mal): CLAUDE.md KB-Liste um `spec/` ergaenzen (Befund #1),
  F6 Spec-Template aus AG-Gruendung extrahieren.

## 2026-06-27 — Trainingslauf 1
- Output `outputs/2026-06-27_training-run1.md` (Environment-Audit Top-5-Befund + Auswertung
  der ersten realen Spec-Anwendung AG-Gruendung).
- Kern-Lektion aus AG-Gruendung: **falsches Verifier-Gruen** — naive Zefix-Exact-String-Suche
  ("JANS AG frei") wurde von der autoritativen Stelle (Notar/HRA, Weisung Firmenidentitaet
  Ziff. IV) verworfen. → `verifier.md` um Sektion "Verifier muss das echte Abnahmekriterium
  spiegeln" erweitert (Rangordnung autoritative Instanz > Connector; Default streng).
- F5 eingeloest: Anthropic-Doku "Plan before editing" als Primaerquelle in `the-spec.md`
  zitiert.
- `anwendung-jans.md` + `QUESTIONS.md` (F1/F2/F3) mit den Lektionen nachgefuehrt
  (Ausgangslage zuerst bestaetigen; autoritative Instanz vor Connector).
- Rule `spec-methode.md` bewusst NICHT geaendert (Gate arbeitet belegt korrekt).

## 2026-06-21 — KB angelegt (Seed)
- `raw/260616_marchese_the-spec_karpathy-method_transkript.md` ingestiert (34 Screenshots,
  YT Austin Marchese "Stop Prompting Claude. Use Karpathy's Method Instead.").
- 5 Wiki-Artikel kompiliert: `the-spec`, `3-schritte-spec`, `verifier`,
  `environment-jans-hub`, `anwendung-jans`. INDEX + QUESTIONS + _INGESTED angelegt.
- `training/PROGRAMM.md` angelegt (Lern-Loop).
- Befund dokumentiert: Layer 3 (Environment) baut der JANS-Hub bereits; neu/erzwungen sind
  Layer 1 (Spec) + Layer 2 (Verifier) als bewusster erster Schritt grosser Anfragen.
- Begleitend ausserhalb der KB erstellt: Skill `spec`, Rule `spec-methode` (+ @-Import in
  CLAUDE.md, Eintrag in rules/README.md), Scheduled Task `spec-training`.
