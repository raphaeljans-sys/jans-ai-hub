# CHANGELOG — KB Spec (neueste zuoberst)

## 2026-07-09 — Trainingslauf 5
- Output `outputs/2026-07-09_training-run5.md`. Keine neue Spec-Anwendung seit Lauf 4; ausgewertet
  wurde die Fortschreibung der lebenden AG-Gruendungs-Spec (jetzt **19 Tage**, Phase B haelt an;
  Eintraege 07./08./09.07. alle «NICHTS NEUES»).
- **Neue Praezisierung — zwei Blocker-Typen im Steady-State-Monitor:** low-noise «NICHTS NEUES» gilt
  nur fuer echtes **externes** Warten (Instanz am Zug). Eine **selbst-blockierte Owner-Aktion** («Antwort
  ans Notariat raus», offen seit 22.06. = 17 Tage) darf NICHT in der «nichts Neues»-Zeile mitaltern —
  sie gehoert in jeden Monitor-Lauf als aktive Nudge/Pendenz. Trennfrage: «Wartet die Instanz — oder
  warten wir auf uns selbst?» → neue Sektion in `verifier.md`, Phase-B-Absatz in `anwendung-jans.md`
  ergaenzt, F2 nachgefuehrt. Schaerft F2 (Kadenz) und F1 (19-Tage-Datenpunkt).
- Environment-Audit: run4-Fixes hielten (Metadaten 07-06 konsistent, CLAUDE.md-KB-Liste, INDEX+Template).
  Diesen Lauf `verifier.md` + `anwendung-jans.md` auf 07-09 gezogen (inhaltlich ergaenzt). Rule
  `spec-methode.md` unveraendert (Gate korrekt, kein Ueberdehnungs-Beleg).
- Quellen-Schuld: keine — F4 (Karpathy+Cherny) + F5 (Anthropic-Doku) vollstaendig eingeloest.
  Offen: F1-Ueberdehnungs-Gegentest (mittelgrosser Fall fehlt), F3-Tabelle je weitere Domaene, F7.

## 2026-07-06 — Trainingslauf 4
- Output `outputs/2026-07-06_training-run4.md`. Keine neue Spec-Anwendung seit Lauf 3; ausgewertet
  wurde der **Verlauf** der lebenden AG-Gruendungs-Spec (15 Tage, Monitor-Log bis 06.07.).
- **Neue Lektion — zwei Lebensphasen einer lebenden Spec:** (A) aktive Formung (Entscheide kippen,
  Belegset versioniert) → (B) Steady-State-Monitoring (warten auf autoritative Instanz, low-noise:
  «NICHTS NEUES», Eskalation nur bei echter Aenderung; belegt 8+ Eintraege 30.06.–06.07.). In Phase B
  ist die awartete autoritative Instanz selbst der Verifier. → `anwendung-jans.md` Schritt 2 + neue
  Sektion «Verifier-Zustand ‹Warten auf die autoritative Instanz›» in `verifier.md`.
- **F6 geschlossen (nach 3 Laeufen geflaggt):** Spec-Template `templates/spec-vorlage.md` gebaut —
  KB-internes Kopier-Skelett aus den 3 ersten Specs + Zwei-Phasen-Notiz. Additiv/reversibel, keine
  Rule-/Skill-Aenderung → autonom im Rahmen `wissens-bibliothekar`; Raphael kann anpassen/verwerfen.
- Environment-Audit: run3-Fixes hielten (Metadaten 07-03, CLAUDE.md-KB-Liste mit `spec/`). Diesen
  Lauf `verifier.md` + `anwendung-jans.md` auf 07-06 gezogen (inhaltlich ergaenzt). INDEX um
  «Vorlagen» ergaenzt. Rule `spec-methode.md` unveraendert (Gate korrekt).
- Quellen-Schuld: keine — F4 (Karpathy+Cherny) + F5 (Anthropic-Doku) vollstaendig eingeloest.
  Offen: F1-Ueberdehnungs-Gegentest (mittelgrosser Fall fehlt), F3-Tabelle je weitere Domaene.

## 2026-07-03 — Trainingslauf 3
- Output `outputs/2026-07-03_training-run3.md`. Ausgewertet: neue Spec-Anwendung
  **Buchhaltungssystem** (02.07.). Drei Lektionen ins Wiki uebernommen:
  (1) **Guardrail-Anpassung als bestaetigter Schluesselentscheid** — die Spec ist der Ort, an dem
  eine Autonomie-Erweiterung sichtbar entschieden + begrenzt wird (Buchen nach Einzelfreigabe
  oeffnet «Buchungen NIE» kontrolliert) → neues Muster in `anwendung-jans.md`.
  (2) **Ist-Zustand real scannen + Schwachstelle diagnostizieren** bei System-/Umbau-Vorhaben
  (nicht nur bestaetigen) → `anwendung-jans.md` Schritt 1 + F2.
  (3) **Verifier-Zuordnung Domaene Buchhaltung/Steuern** (Treuhand/Steuerbehoerde bindend;
  `bexio --abgleich`/UBS-Feed Indiz; GA2024 als Format) → neue Zuordnungstabelle in `verifier.md` (F3).
- **F4 vollstaendig eingeloest:** Cherny-Primaerquelle des «2-3x»-Zitats belegt (X-Post Tip 13/,
  .../2007179861115511237) und in `verifier.md` zitiert. Damit F4 (Karpathy + Cherny) erledigt.
- Environment-Audit-Fixes: Metadaten-Drift behoben (`verifier.md`+`anwendung-jans.md` last_updated
  → 07-03, war Audit E rot); CLAUDE.md KB-Liste um `spec/` ergaenzt (3. Mal geflaggt, jetzt gefixt).
- Rule `spec-methode.md` unveraendert (Gate ueber 3 Faelle korrekt). Geflaggt: F6 Spec-Template extrahieren.

## 2026-07-02 — Spec-Anwendung: Hub-Chef-Harness
- Neue reale Spec-Anwendung abgelegt: `outputs/2026-07-02_hub-chef-harness_spec.md`
  (Dach-Orchestrierung + Service-Produktisierung; Interview via AskUserQuestion, 3
  Schluesselentscheide bestaetigt: 4 Services, Autonomie Stufe 3, Hub-Chef taeglich).
  Umsetzung im selben Lauf: Skill `hub-chef`, `logbuch/AKTIONS-WHITELIST.md`,
  `services/KATALOG.md`, Scheduled Task `hub-chef-taeglich`. Checkpoint 03.07. (erster Lauf).

## 2026-07-01 — Health-Check (Phase 1)
- Report `outputs/2026-07-01_health-check.md` (7 Audits A-G, nur Audit, keine Phase-2-Aktion).
  Ampel: A gruen · B gelb · C gelb · D gruen · E rot · F gruen · G gelb.
- Top-3: (1) E — `verifier.md` + `anwendung-jans.md` tragen 06-30-Inhalt, aber `last_updated:
  2026-06-21` (Metadaten-Drift vs. CHANGELOG). (2) CLAUDE.md-KB-Liste ohne `spec/` (2. Mal
  geflaggt, Raphaels Freigabe). (3) C — Cherny-«2-3x» in `verifier.md` weiter transkript-belegt
  (F4 offen), Artikel aber `established`. Nebenbefund B: Self-Zitat `[[the-spec]]` als Quelle in
  `the-spec.md` Z. 15.

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
