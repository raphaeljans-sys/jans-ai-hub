# QUESTIONS — offene Fragen / Wissensluecken KB Spec

Offene Punkte, die der Trainings-Loop und reale Anwendungen klaeren sollen.

## Methodik
- F1: Ab welcher Aufgabengroesse lohnt der Spec-Overhead wirklich? Schwelle anhand realer
  Anwendungen kalibrieren (Gefahr: Gate nervt bei Mittelgrossem). → aus `outputs/` lernen.
  - Stand 2026-06-27: 1 belegte Anwendung (AG-Gruendung) — Gate hat korrekt+nuetzlich
    getriggert (hoher Einsatz: Recht/Geld/Reputation, ganzes Belegset). Kein Beleg fuer
    Ueberdehnung. Schwelle vorerst unveraendert lassen; mehr Faelle sammeln.
  - Stand 2026-06-30: derselbe Fall lief ueber ~10 Tage als **lebende Spec** (Monitor-Log,
    zwei spaet gekippte Schluesselentscheide). Die Spec blieb durchgehend nuetzlich (haelt
    Ziel/Abgrenzung/Kriterien stabil, waehrend Details kippen) — staerkstes Argument fuer das
    Gate bei mehrwoechigen, hoch-einsatzigen Vorhaben. Schwelle weiter unveraendert.
  - Stand 2026-07-03: jetzt **3 belegte Anwendungen** (AG-Gruendung, Hub-Chef-Harness 02.07.,
    Buchhaltungssystem 02.07.). Alle drei waren hoch-einsatzig + mehr-Scope, das Gate triggerte
    jeweils korrekt+nuetzlich; weiterhin **kein** Beleg fuer Ueberdehnung (kein genervter
    Mittelfall in `outputs/`). Alle drei teilen dasselbe Format (AskUserQuestion fuer
    Schluesselentscheide + enge Scopes/Checkpoints) → das Format kristallisiert (→ F6/F7).
    Schwelle unveraendert.
- F2: Wie kurz darf das Ziel-Interview sein, damit es hilft statt bremst? Optimal-Laenge je
  Vorhabenstyp (Studie / Dokument / Mail / Strategie) sammeln.
  - Lektion AG-Gruendung: das Interview muss die **Ausgangslage** explizit fixieren. Hier
    wurde anfangs faelschlich eine bestehende AG angenommen (real: Einzelfirma) — erst die
    Bestaetigungsfrage korrigierte das. → bei Gruendung/Recht/Umbau zuerst den IST-Zustand
    als Schluesselentscheid bestaetigen, bevor das Ziel formuliert wird.
  - Lektion 29.06.: bestaetigte Schluesselentscheide koennen **spaet noch kippen** (Name,
    Liberierung). Das Interview soll erfahrungsgemaess bewegliche Annahmen (Name/Kapital/
    Termin) als «noch beweglich» markieren; kippt eine, wird der Schluesselentscheide-
    Abschnitt selbst korrigiert und das Belegset versioniert nachgezogen (→ [[anwendung-jans]]
    Schritt 2, lebende Spec).
  - Lektion Buchhaltungssystem 02.07.: bei **System-/Prozess-/Umbau-Vorhaben** genuegt das
    blosse Bestaetigen der Ausgangslage nicht — der IST-Zustand wird **real gescannt und die
    Schwachstelle diagnostiziert** (hier: OneDrive-Archiv 2022→2026, dokumentierte «Erosion» der
    manuellen Ordner-Kontierung). Diese Diagnose ist die Begruendung des Ziels und gehoert als
    eigener Abschnitt «Ist-Zustand (Scan)» vor die Schluesselentscheide (→ [[anwendung-jans]]
    Schritt 1).
- F3: Welcher zweite Kritiker ist je Domaene der beste Verifier (korrektur vs. twin vs.
  /code-review vs. Connector)? Zuordnungstabelle aufbauen.
  - Erster Eintrag (Recht/Behoerde, belegt AG-Gruendung): die **autoritative Instanz**
    (Notar/HRA) ist der massgebliche Verifier; Connector (Zefix) nur Indiz. Connector-Gruen
    ≠ bestanden, solange die Stelle nicht bestaetigt → siehe [[verifier]] "falsches Gruen".
  - Zweiter Eintrag (Buchhaltung/Steuern, belegt Buchhaltungssystem 02.07.): autoritative
    Instanz = **Treuhand-Pruefstunde + Steuerbehoerde ZH**; externes Signal = `bexio --abgleich`
    (Bank↔Buchung, kreuzt zwei unabhaengige Realitaeten), UBS-Feed, amtliche Bescheinigungen;
    Format-Vorlage = Goldstandard GA2024 + Beilageverzeichnis. → **Zuordnungstabelle jetzt in
    [[verifier]]** («Verifier-Zuordnung je Domaene»), waechst je Anwendung.

## Belege / Quellen
- F4: Originalquellen verlinken/ablegen — Karpathys "LLM Knowledge Bases"-Post und Boris
  Chernys Claude-Code-Thread im Volltext (bisher nur via Screenshot-Transkript belegt).
  - TEILWEISE EINGELOEST 2026-06-30 — Karpathys Primaerquelle belegt: GitHub-Gist «LLM Wiki»
    (https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) + X-Post
    (https://x.com/karpathy/status/2039805659525644595). Bestaetigt die wissen/-Layer-Mechanik
    (raw immutable → wiki kompiliert → schema; Compiler-Analogie; Linting/Health-Check =
    Skill `wissenscheck`). OFFEN: Boris-Cherny-Thread im Volltext (Verifier-2-3x-Zitat
    bisher nur via Transkript).
  - ✓ EINGELOEST 2026-07-03 (Cherny): Primaerquelle des «2-3x»-Zitats belegt — Boris Cherny
    auf X, Tip 13/ («give Claude a way to verify its work … it will 2-3x the quality»),
    https://x.com/bcherny/status/2007179861115511237 (Begleit-Thread 2064426115255730578
    «self-verification loops»). In [[verifier]] als Primaerquelle zitiert, Zitat nicht mehr
    nur transkript-belegt. **F4 damit vollstaendig eingeloest** (Karpathy 06-30 + Cherny 07-03).
- F5: ✓ EINGELOEST 2026-06-27 — Anthropic Claude-Code-Doku "Common workflows → Plan before
  editing" als Primaerquelle ergaenzt (Zitat in [[the-spec]]). URL:
  https://code.claude.com/docs/en/common-workflows

## JANS-spezifisch
- F6: Soll der Spec-Output ein eigenes Template (`templates/`) bekommen (Ziel/Abgrenzung/
  Kriterien/Plan/Verifikation) analog zum Studienblatt?
  - Stand 2026-07-03: die drei realen Specs (AG-Gruendung, Hub-Chef, Buchhaltung) teilen bereits
    ein **de-facto identisches Skelett**: Ziel (1 Satz) · Abgrenzung (NICHT dazu) · Ist-Zustand
    (Scan, bei System-/Umbau-Vorhaben) · Schluesselentscheide (bestaetigt) · Bewertungskriterien
    · Plan (enge Scopes + Checkpoints) · Verifikation · Faktenbasis. Das Template ist damit
    empirisch da. → **Vorschlag an Raphael:** als `wissen/spec/templates/spec-vorlage.md`
    extrahieren (neues Artefakt, daher geflaggt statt ungefragt gebaut).
- F7: Reale Spec-Anwendungen als Goldstandard-Beispiele kuratieren (erste: AG-Gruendung 2026-06-21).
  - Stand 2026-07-03: 3 Goldstandard-Specs vorhanden. **Buchhaltungssystem 02.07.** ist der
    sauberste Vertreter des Skeletts oben (v.a. eigener «Ist-Zustand (Scan)»-Abschnitt + kontrollierte
    Guardrail-Oeffnung) → als Formatvorlage fuer System-/Prozess-Vorhaben empfohlen.
