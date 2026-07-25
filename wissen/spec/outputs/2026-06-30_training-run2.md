# Spec-Training — Lauf 2 (2026-06-30)

Zweiter Trainingslauf (Scheduled Task `spec-training`, 3-Tages-Takt; Lauf 1 war 27.06.).
Phase 1 (Audit/Analyse) gefahren; Phase 2 (Wiki-Schaerfung) bei klarem Beleg direkt
ausgefuehrt, Rule NICHT angefasst. Keine NEUE Spec-Anwendung seit Lauf 1 — aber die
bestehende (AG-Gruendung) wurde am 29.06. substanziell fortgeschrieben und liefert neue
Korrektur-Deltas.

## 1. Stand gelesen
- `wiki/QUESTIONS.md` (F1-F7), `CHANGELOG.md`, `outputs/`. Eine reale Anwendung:
  `2026-06-21_ag-gruendung_spec.md`, jetzt mit Monitor-Log bis 29.06.
- Run-1-Befunde geprueft (siehe Audit unten): Befund #1 (CLAUDE.md) + F6 (Template) noch offen.

## 2. Environment-Audit (Befund, nicht umgebaut)
1. **CLAUDE.md KB-Liste** — `wissen/spec/` fehlt weiterhin in der Aufzaehlung «Aktuelle KBs»
   (Z. 396-412); alle anderen KBs sind gelistet. *Fix:* `spec/` aufnehmen. Risiko keins,
   aber geteilte Guardrail-Datei (SSD-Repo, NAS kanonisch) → bewusst **nicht** eigenmaechtig
   editiert, Raphael zur Freigabe (2. Flag).
2. **F6 Spec-Template** — `templates/spec-vorlage.md` existiert weiterhin nicht. Der
   AG-Gruendung-Output ist faktisch die ausgereifte Vorlage (inkl. Monitor-Log-Pattern).
   *Fix:* daraus extrahieren — aber `templates/` liegt ausserhalb der KB-Domaene → Raphael
   vorlegen, nicht eigenmaechtig anlegen.
3. **Verifier-Zuordnungstabelle (F3)** — erster Eintrag Recht/Behoerde belegt; weitere
   Domaenen erst bei neuen Faellen. Kein Handlungsbedarf jetzt.
4. **Hook-Frage** — unveraendert: Spec-Methode ist bewusst Soft-Gate (Rule), KEIN
   erzwingender Hook (wuerde jeden Prompt verzoegern, Gate ueberdehnen).
5. **Goldstandard (F7)** — weiterhin nur 1 Fall; `wiki/goldstandard-specs.md` zu frueh.

## 3. Reale Spec-Anwendung ausgewertet — AG-Gruendung (Fortschreibung bis 29.06.)
**Neue Korrektur-Deltas (nach der 21.06.-Bestaetigung gekippt):**
- **Firmenname** «JANS AG» → **«Raphael Jans AG»** (26./27.06.). Loest den Notariats-Befund
  vom 22.06. (Unterscheidungskraft zur bestehenden «JANS GmbH»). Belegt die Verifier-Lektion
  aus Lauf 1 jetzt **empirisch**: die autoritative Instanz behielt recht, das Connector-Gruen
  («JANS AG frei») war falsch.
- **Liberierung** 50 % / CHF 50'000 → **Vollliberierung CHF 100'000**. Ueberschreibt einen
  bestaetigten Schluesselentscheid spaet im Verlauf.
- Folge: **gesamtes Belegset als Version 260627 neu erstellt** (Statuten/Urkunde/HR-Anmeldung,
  Lex-Friedrich→Lex-Koller), UBS-Antrag + Notariat auf den neuen Stand nachgezogen.

**Methodik-Lektion (neu):** eine Spec ist ein **lebendes Dokument**. Kippt ein
Schluesselentscheid spaet, muss (a) der Schluesselentscheide-Abschnitt selbst korrigiert
werden — nicht nur eine Log-Zeile angehaengt — und (b) das ganze Deliverable-Set in EINEM
versionierten Durchlauf nachgezogen werden, nicht ein Dokument geflickt. Bewegliche Annahmen
(Name/Kapital/Termin) im Interview als «noch beweglich» markieren.

**Gate-Bilanz (F1):** kein Hinweis auf Ueberdehnung. Im Gegenteil — die Spec hielt ueber
~10 Tage Ziel/Abgrenzung/Kriterien stabil, waehrend Details kippten. Staerkstes Argument fuer
das Gate bei mehrwoechigen, hoch-einsatzigen Vorhaben.

## 4. Geschaerft (Phase 2, belegt)
- `anwendung-jans.md` Schritt 2: «lebende Spec» — gekippte Schluesselentscheide im Abschnitt
  selbst korrigieren + Belegset versioniert nachziehen; bewegliche Annahmen markieren.
- `verifier.md`: Sektion «Empirisch bestaetigt» — Rangordnung autoritative Instanz > Connector
  durch realen Korrektur-Aufwand (Name tatsaechlich geaendert) belegt.
- `QUESTIONS.md`: F1 (lebende Spec ueber ~10 Tage, kein Overdehnung), F2 (Schluesselentscheide
  koennen spaet kippen → beweglich markieren), F4 (teilweise eingeloest, siehe unten).

## 5. Quellen-Schuld
- **F4 teilweise eingeloest:** Karpathys Primaerquelle belegt — GitHub-Gist «LLM Wiki»
  + X-Post. Bestaetigt die wissen/-Layer-Mechanik (raw immutable → wiki kompiliert → schema;
  Compiler-Analogie; Linting = Skill `wissenscheck`).
- **Offen:** Boris-Cherny-Claude-Code-Thread im Volltext (Verifier-«2-3x»-Zitat bisher nur
  via Transkript).

## 6. Naechste Schritte
- Raphael vorlegen: Befund #1 (CLAUDE.md KB-Liste um `spec/` ergaenzen) + F6 (Spec-Template
  aus AG-Gruendung extrahieren). Beides geteilte/KB-fremde Dateien → bewusst geflaggt statt
  eigenmaechtig.
- F4 Rest: Cherny-Thread im Volltext einholen.
- Zweite reale Spec-Anwendung abwarten, um F1-Schwelle ueber einen anderen Vorhabenstyp
  (Studie/Dokument/Mail) zu belegen — bisher nur Recht/Gruendung.
