# QUESTIONS — offene Fragen / Wissensluecken KB Spec

Offene Punkte, die der Trainings-Loop und reale Anwendungen klaeren sollen.

## Methodik
- F1: Ab welcher Aufgabengroesse lohnt der Spec-Overhead wirklich? Schwelle anhand realer
  Anwendungen kalibrieren (Gefahr: Gate nervt bei Mittelgrossem). → aus `outputs/` lernen.
  - Stand 2026-06-27: 1 belegte Anwendung (AG-Gruendung) — Gate hat korrekt+nuetzlich
    getriggert (hoher Einsatz: Recht/Geld/Reputation, ganzes Belegset). Kein Beleg fuer
    Ueberdehnung. Schwelle vorerst unveraendert lassen; mehr Faelle sammeln.
- F2: Wie kurz darf das Ziel-Interview sein, damit es hilft statt bremst? Optimal-Laenge je
  Vorhabenstyp (Studie / Dokument / Mail / Strategie) sammeln.
  - Lektion AG-Gruendung: das Interview muss die **Ausgangslage** explizit fixieren. Hier
    wurde anfangs faelschlich eine bestehende AG angenommen (real: Einzelfirma) — erst die
    Bestaetigungsfrage korrigierte das. → bei Gruendung/Recht/Umbau zuerst den IST-Zustand
    als Schluesselentscheid bestaetigen, bevor das Ziel formuliert wird.
- F3: Welcher zweite Kritiker ist je Domaene der beste Verifier (korrektur vs. twin vs.
  /code-review vs. Connector)? Zuordnungstabelle aufbauen.
  - Erster Eintrag (Recht/Behoerde, belegt AG-Gruendung): die **autoritative Instanz**
    (Notar/HRA) ist der massgebliche Verifier; Connector (Zefix) nur Indiz. Connector-Gruen
    ≠ bestanden, solange die Stelle nicht bestaetigt → siehe [[verifier]] "falsches Gruen".

## Belege / Quellen
- F4: Originalquellen verlinken/ablegen — Karpathys "LLM Knowledge Bases"-Post und Boris
  Chernys Claude-Code-Thread im Volltext (bisher nur via Screenshot-Transkript belegt).
- F5: ✓ EINGELOEST 2026-06-27 — Anthropic Claude-Code-Doku "Common workflows → Plan before
  editing" als Primaerquelle ergaenzt (Zitat in [[the-spec]]). URL:
  https://code.claude.com/docs/en/common-workflows

## JANS-spezifisch
- F6: Soll der Spec-Output ein eigenes Template (`templates/`) bekommen (Ziel/Abgrenzung/
  Kriterien/Plan/Verifikation) analog zum Studienblatt?
- F7: Reale Spec-Anwendungen als Goldstandard-Beispiele kuratieren (erste: AG-Gruendung 2026-06-21).
