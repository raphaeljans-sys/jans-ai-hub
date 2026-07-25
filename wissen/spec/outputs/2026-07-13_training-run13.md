# Spec-Training — Lauf 13 (2026-07-13)

**Lauf-Typ:** Verifikationslauf (keine neue reale Spec seit Lauf 7, Wettbewerbs-Layer 12.07.).
Sechster Lauf am selben Tag (VOLLGAS-Phase). Die AG-Gruendung-Reue-Pruefung wurde in Lauf
10-12 bereits dreimal mit demselben Befund gefahren — eine vierte Wiederholung ohne neuen
Beleg waere selbst Gate-Ueberdehnung nach innen (Prinzip aus `training/PROGRAMM.md`). Dieser
Lauf sucht stattdessen echtes neues Material fuer die zwei am laengsten offenen Luecken
(F1 Ueberdehnungs-Gegentest, F3 Marketing/Text) und fuehrt einen breiteren Environment-Sweep.

## 1. F1/F3 — Suche nach neuem Material (Ergebnis: nichts Neues)
- `git log` auf `skills/marketing`, `agents/linkedin-*`, `wissen/spec` seit Lauf 7 (12.07. 18:15):
  keine neue Aktivitaet in Marketing/LinkedIn. F3 bleibt bei "Marketing/Text unbelegt".
- `rules/auto-verbesserungen.md` (2026-07-13-Eintraege) enthaelt keine Klage ueber einen
  genervten Mittelfall durch das Spec-Gate — F1-Ueberdehnungs-Gegentest bleibt unbelegt.
- Beide Luecken bewusst NICHT kuenstlich gefuellt (keine erfundene Spec, kein erfundenes
  Overreach-Beispiel) — das waere genau die Gate-Ueberdehnung nach innen, vor der
  `training/PROGRAMM.md` warnt.

## 2. Environment-Audit (breiterer Sweep als Laeufe 10-12)

**Drei-Listen-Konsistenz** (`rules/*.md` ↔ `rules/README.md` ↔ `CLAUDE.md`-@-Import), erneut
gegengeprueft nach exaktem Dateiabgleich (nicht nur Zeilenzahl):
- 20 echte Rule-Dateien auf Platte (ohne README.md selbst).
- README.md registriert alle 20 + einen Platzhalter-Beispieleintrag `neuer-bereich.md`
  (keine echte Datei — Vorlagenzeile im README-Format, kein Drift).
- CLAUDE.md importiert 19 von 20 — einzige Differenz weiterhin `sync-single-committer.md`
  (dokumentiert nicht-aktiv/historisch, Lauf-8/9-Fix haelt unveraendert).
→ **Bestaetigt, kein neuer Befund**, aber diesmal per echtem Datei-Diff statt Zeilenzahl-Naeherung.

**Neuer Fund — Skill/KB-Drift (das eigentliche Ergebnis dieses Laufs):**
`skills/spec/SKILL.md` (das verhaltensbestimmende Artefakt, wenn der Skill `spec` aufgerufen
wird) hatte die seit Lauf 4 (F6, `templates/spec-vorlage.md` gebaut 06.07.) und Lauf 7 (F3,
Verifier-Zuordnungstabelle auf 5 Domaenen gewachsen, 12.07.) gereifte KB **nicht** absorbiert:
- Das eingebettete "Spec-Output-Schema" in SKILL.md war die **alte Kurzfassung** (flaches
  "Schluesselentscheide (bestaetigt: …)", kein Ist-Zustand-Abschnitt, kein Monitor-Log) —
  während `templates/spec-vorlage.md` seit 06.07. bereits die reifere Fassung ist (mit
  Status-Spalten-Pattern, optionalen Ist-Zustand-/Monitor-Log-Abschnitten).
- Die "Zweite Pruefinstanz"-Sektion in SKILL.md kannte nur die generische Dreiteilung
  (Text→korrektur/twin, Code→code-review, Fakten→Connector) — **nicht** die inzwischen
  5 Domaenen umfassende Verifier-Zuordnungstabelle in `wiki/verifier.md`, und nicht die
  Rangordnung "autoritative Instanz vor Connector-Indiz", die dort explizit belegt ist.

Das ist ein methodisch relevanter Fund: die KB (`wissen/spec/wiki|templates/`) waechst
kompoundierend, aber der operative Skill (`skills/spec/SKILL.md`), der tatsaechlich das
Verhalten steuert, zieht diese Reifung nicht automatisch nach. Ohne diesen Sweep waere die
Luecke unentdeckt geblieben, weil die letzten Laeufe (10-12) sich eng auf den AG-Gruendung-
Fall konzentriert hatten statt auf einen breiteren Datei-Abgleich.

**Umgesetzt (P1, dieser Lauf):**
1. `skills/spec/SKILL.md`, Schritt 3: Verweist jetzt explizit auf die Verifier-Zuordnungstabelle
   in `wiki/verifier.md` statt sie zu duplizieren/veralten zu lassen; Rangordnung "autoritative
   Instanz vor Connector" explizit genannt.
2. `skills/spec/SKILL.md`, Spec-Output-Schema: verweist jetzt auf `templates/spec-vorlage.md`
   als Kopiervorlage, Kernabschnitte um Ist-Zustand/Status-Spalte/Monitor-Log ergaenzt statt
   der alten flachen Fassung.
- Kein Rule-/Gate-Verhalten geaendert (Trigger-Schwelle unberuehrt) — nur der operative Skill
  an den bereits durch die KB belegten Reifegrad angeglichen. Additiv, reversibel, kein
  Rueckfrage-Fall.

Kein weiterer Environment-Befund in diesem Sweep (Hooks/`settings.json` nicht neu geprueft
diesen Lauf, Skill-Zaehlstand sonst unveraendert seit Lauf 8).

## 3. Reale Spec-Anwendungen ausgewertet
Keine neue seit Lauf 7. Kein neues Korrektur-Delta.

## 4. Nachschaerfen
`spec-methode.md` (Rule) unveraendert — kein neuer Gate-Beleg. `wiki/anwendung-jans.md`
unveraendert. Der Fund dieses Laufs betrifft die **Umsetzungstreue** (Skill zieht KB nach),
nicht die Gate-Schwelle selbst.

## 5. Quellen-Schuld
Keine offen (F4/F5 vollstaendig eingeloest, unveraendert).

## 6. Geaendert / bewusst nicht getan
- Geaendert: `skills/spec/SKILL.md` (Schritt 3 + Spec-Output-Schema).
- Bewusst NICHT: keine vierte AG-Gruendung-Reue-Pruefung (keine neue Primaerquelle seit
  Lauf 12, haette nur wiederholt); keine erfundene F1/F3-Luecken-Fuellung; keine Aenderung an
  `spec-methode.md`/`anwendung-jans.md`; kein Mail-Versand; keine Reparatur an `logbuch`
  (bleibt die Lauf-12-Eskalation an Raphael, ausserhalb dieses KB-Mandats).

## 7. Offen / naechstes
- F1-Ueberdehnungs-Gegentest weiterhin unbelegt.
- F3 weiterhin nur Marketing/Text offen.
- **Neue Praezisierung fuer den Loop selbst:** Environment-Audits sollten periodisch auch
  gegen die **eigenen** Skill-Dateien (nicht nur Rules/CLAUDE.md) pruefen, ob KB-Reifung
  (Wiki/Templates) tatsaechlich in den operativen Skill zurueckfliesst — dieser Lauf fand die
  erste konkrete Instanz einer solchen Luecke im eigenen Skill `spec`. Sollte stichprobenartig
  auch fuer andere Skills mit wachsenden KBs (immobilienbewertung, planungsgrundlagen, energie,
  normen) gepruefte werden — ausserhalb des Mandats dieses Laufs, aber als Muster uebertragbar.
- Weiterhin an Raphael/`logbuch` zu eskalieren (aus Lauf 12, unveraendert): AG-Gruendung-
  Owner-Aktion seit 3+ Tagen unsichtbar trotz "offen/hoch" in `fristen.md`.
