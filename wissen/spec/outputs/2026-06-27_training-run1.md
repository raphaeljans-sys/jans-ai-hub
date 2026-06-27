# Spec-Training — Lauf 1 (2026-06-27)

Erster Trainingslauf nach dem Seed (KB angelegt 2026-06-21). Scheduled Task `spec-training`
(3-Tages-Takt). Phase 1 (Audit/Analyse) gefahren; Phase 2 (Wiki-Schaerfung) bei klarem
Beleg direkt ausgefuehrt, Rule NICHT angefasst.

## 1. Stand gelesen
- `wiki/QUESTIONS.md`: F1-F7 offen. `CHANGELOG.md`: nur Seed-Eintrag.
- `outputs/`: 1 reale Anwendung — `2026-06-21_ag-gruendung_spec.md` (AG-Gruendung Raphael Jans),
  reich dokumentiert inkl. Monitor-Log bis 26.06.

## 2. Environment-Audit (Befund, nicht umgebaut)
Top-5-Luecken Hub ↔ Spec-Methode:
1. **CLAUDE.md** — die Aufzaehlung "Aktuelle KBs" im Wissens-Layer listet `wissen/spec/`
   NICHT (alle anderen KBs sind genannt). *Fix:* `spec/` (Spec-Methode KB) in die Liste
   aufnehmen. Risiko keins, kein Hook. → Raphael zur Freigabe (geteilte Guardrail-Datei).
2. **Spec-Output-Template fehlt (F6).** *Fix:* `templates/spec-vorlage.md` (Ziel · Abgrenzung
   · Ausgangslage · Schluesselentscheide · Kriterien · Plan · Verifikation) — der
   AG-Gruendung-Output ist faktisch schon die Vorlage, daraus extrahieren. Risiko keins.
3. **Verifier-Zuordnung je Domaene (F3) unstrukturiert.** *Fix:* kleine Tabelle Domaene→Verifier
   in `verifier.md` aufbauen (Recht→Notar/HRA, Text→korrektur/twin, Code→/code-review,
   Geodaten→geo-zh, Buchhaltung→bexio). Erster Eintrag jetzt belegt (siehe unten).
4. **Hook-Frage:** Die Spec-Methode ist bewusst ein *Soft-Gate* (Rule). *Befund:* KEIN Hook
   noetig/erwuenscht — ein erzwingender Hook wuerde jeden Prompt verzoegern und das Gate
   ueberdehnen. Der bestehende `verbesserung-capture`-Hook reicht. (Antwort auf "welche
   riskante Aktion braucht einen Hook": hier keine.)
5. **Goldstandard-Kuratierung (F7):** erst 1 Spec-Anwendung vorhanden. *Fix:* ab 2-3 Faellen
   eine `wiki/goldstandard-specs.md` je Vorhabenstyp. Noch zu frueh.

## 3. Reale Spec-Anwendung ausgewertet — AG-Gruendung
**Wo die Methode half:**
- Ziel-Satz traf den Kern ("Haftungstrennung nach Risiko: Einzelfirma = Consulting, neue AG
  = Ausfuehrung/GU"). Der Goal-Schritt verhinderte das naive "zweite AG gruenden".
- Schritt 3 (USE YOUR BRAIN) lieferte echten Mehrwert: Kapital ≠ Risikoabdeckung →
  Versicherung/Vertraege tragen das Risiko; AHV-Doppelrolle; Zweck-Abgrenzung haftungsrelevant.
- Gate hat korrekt getriggert (hoher Einsatz Recht/Geld/Reputation, ganzes Belegset). Kein
  Hinweis auf Ueberdehnung.

**Korrektur-Deltas (was nachtraeglich kippte):**
- **Ausgangslage falsch angenommen:** anfangs "bestehende AG" statt "Einzelfirma" — erst die
  Bestaetigungsfrage korrigierte es. → Lernpunkt fuer das Interview (F2).
- **Falsches Verifier-Gruen (Kern-Lektion):** "JANS AG frei" stuetzte sich auf eine
  Zefix-Exact-String-Suche (0 Treffer). Die autoritative Stelle (Notar/HRA, Weisung
  Firmenidentitaet Ziff. IV) verwarf das — Rechtsformzusatz ohne Unterscheidungskraft, die
  bestehende "JANS GmbH" blockiert. Der naive Connector-Proxy bildete das amtliche
  Pruefkriterium nicht ab. Folge: Belegset + UBS-Formular liefen auf einen nicht
  eintragungsfaehigen Namen.

## 4. Geschaerft (Phase 2, belegt)
- `verifier.md`: neue Sektion "Der Verifier muss das echte Abnahmekriterium spiegeln"
  (falsches Gruen, Rangordnung autoritative Instanz > Connector, Default streng).
- `the-spec.md`: F5 eingeloest — Anthropic-Primaerquelle "Plan before editing" zitiert
  (*"Claude reads files and proposes a plan but makes no edits until you approve."*).
- `anwendung-jans.md`: Interview-Schritt um "Ausgangslage zuerst bestaetigen" ergaenzt;
  Verifier-Schritt um "autoritative Instanz vor Connector".
- `QUESTIONS.md`: F5 als eingeloest markiert; F1/F2/F3 mit den realen Lektionen nachgefuehrt.
- **Rule `spec-methode.md` NICHT geaendert** — Gate arbeitet belegt korrekt, kein Anlass.

## 5. Quellen-Schuld
- F5 abgebaut (Anthropic Plan-Mode-Doku als Primaerquelle).
- Offen: F4 (Karpathy "LLM Knowledge Bases"-Post + Cherny-Thread im Volltext) — naechster Lauf.

## 6. Naechste Schritte
- F6: `templates/spec-vorlage.md` aus dem AG-Gruendung-Output extrahieren (Raphael fragen, ob
  gewuenscht).
- Befund #1 (CLAUDE.md KB-Liste) Raphael zur Freigabe vorlegen.
- F4-Quellen einholen; zweite reale Spec-Anwendung abwarten, um F1-Schwelle breiter zu belegen.
