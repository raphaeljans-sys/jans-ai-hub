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
- F3: Welcher zweite Kritiker ist je Domaene der beste Verifier (korrektur vs. twin vs.
  /code-review vs. Connector)? Zuordnungstabelle aufbauen.
  - Erster Eintrag (Recht/Behoerde, belegt AG-Gruendung): die **autoritative Instanz**
    (Notar/HRA) ist der massgebliche Verifier; Connector (Zefix) nur Indiz. Connector-Gruen
    ≠ bestanden, solange die Stelle nicht bestaetigt → siehe [[verifier]] "falsches Gruen".

## Belege / Quellen
- F4: Originalquellen verlinken/ablegen — Karpathys "LLM Knowledge Bases"-Post und Boris
  Chernys Claude-Code-Thread im Volltext (bisher nur via Screenshot-Transkript belegt).
  - TEILWEISE EINGELOEST 2026-06-30 — Karpathys Primaerquelle belegt: GitHub-Gist «LLM Wiki»
    (https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) + X-Post
    (https://x.com/karpathy/status/2039805659525644595). Bestaetigt die wissen/-Layer-Mechanik
    (raw immutable → wiki kompiliert → schema; Compiler-Analogie; Linting/Health-Check =
    Skill `wissenscheck`). OFFEN: Boris-Cherny-Thread im Volltext (Verifier-2-3x-Zitat
    bisher nur via Transkript).
- F5: ✓ EINGELOEST 2026-06-27 — Anthropic Claude-Code-Doku "Common workflows → Plan before
  editing" als Primaerquelle ergaenzt (Zitat in [[the-spec]]). URL:
  https://code.claude.com/docs/en/common-workflows

## JANS-spezifisch
- F6: Soll der Spec-Output ein eigenes Template (`templates/`) bekommen (Ziel/Abgrenzung/
  Kriterien/Plan/Verifikation) analog zum Studienblatt?
- F7: Reale Spec-Anwendungen als Goldstandard-Beispiele kuratieren (erste: AG-Gruendung 2026-06-21).
