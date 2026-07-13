# Trainingsprogramm — Lern-Loop der Spec-Methode

Selbst-verbessernder Loop, der die Spec-Methode im JANS-Hub schaerft. Ziel: die Methodik
und ihr Gate werden mit jeder realen Anwendung treffsicherer — die Methode lernt mit, wie
Raphael arbeitet. Schwester der anderen `wissen/`-Trainings (immobilienbewertung, energie,
planungsgrundlagen).

## Takt & Umfang (verbindlich)
- **Frequenz:** alle **3 Tage** (Scheduled Task `spec-training`), sonst manuell via Skill
  `spec` → "Training".
- **Umfang pro Lauf:** (a) den **Environment-Audit** des Hub fahren, (b) **1–2 neue reale
  Spec-Anwendungen** aus `outputs/` auswerten, (c) Gate-Schwelle + Prompts nachschaerfen.
- **Phase 1 (Audit/Analyse)** laeuft immer/unbeaufsichtigt. **Phase 2 (Aenderungen an Rule/
  Skill/Wiki)** wird vorgeschlagen und nur bei eindeutigem Mehrwert direkt ausgefuehrt
  (active-with-flagging); Grenzfaelle Raphael vorlegen.

## Ablauf eines Laufs (immer gleich)
1. **Stand lesen:** `wiki/QUESTIONS.md` (offene F-Fragen), `outputs/` (neue Anwendungen seit
   letztem Lauf), `CHANGELOG.md`.
2. **Environment-Audit** (Layer-3-Prompt) gegen den Hub fahren:
   > "Pruefe CLAUDE.md, Knowledge Base (`wissen/`), Skills (`skills/`) und Guardrails
   > (`rules/`+Hooks). Nenne fuer die Top-5-Luecken je Datei, Problem und exakten Fix —
   > und markiere, welche riskanten Aktionen einen Hook brauchen."
   Ergebnis als Befund festhalten (nicht ungefragt umbauen).
3. **Reale Spec-Anwendungen auswerten:** Wo half die Spec-Methode, wo nervte das Gate, wo
   fehlte ein Schritt? Korrektur-Deltas erfassen (was Raphael nachtraeglich aenderte).
4. **Nachschaerfen:** Gate-Schwelle ([[anwendung-jans]]), Interview-Laenge je Vorhabenstyp,
   Verifier-Zuordnung je Domaene. Prompts und Wiki praezisieren; Status heben wo belegt.
5. **Quellen-Schuld abbauen:** je Lauf eine offene Quelle aus QUESTIONS F4/F5 einholen
   (Karpathy-Post, Cherny-Thread, Anthropic-Plan-Mode-Doku) und Artikel-Status heben.
6. **Output:** kurzer Lern-Report `outputs/JJJJ-MM-TT_training-runN.md` (was ausgewertet,
   was geaendert, was als naechstes).
7. **CHANGELOG** ergaenzen, **NAS-Repo committen + pushen** (Rule `git-auto-push`).

## Zwei Lauf-Typen (Praezisierung Lauf 12, 13.07.2026)
Der Loop laeuft in der VOLLGAS-Phase (mehrmals taeglich) **schneller, als reale Specs eintreffen**
(die kommen alle paar Tage). Damit die Runs nicht Refinements erfinden, nur um Output zu haben,
werden zwei Typen unterschieden:
- **Auswertungslauf** — es gibt eine **neue** reale Spec in `outputs/`. Dann volle Auswertung
  (Korrektur-Deltas, Gate-Schaerfung, Verifier-Zuordnung) wie unten.
- **Verifikationslauf** — **keine** neue Spec seit dem letzten Auswertungslauf (Laeufe 8–12 waren
  dieser Typ). Legitimer Beitrag ist dann **kein** neuer Wiki-Feinschliff, sondern eine
  **Reue-Pruefung**: haelt eine zuletzt gezogene Lektion in der Praxis noch (siehe [[verifier]]
  «Eine Monitor-Lektion haelt nicht von selbst»)? Ein Verifikationslauf darf mit «nichts
  Substanzielles geaendert, Befund bestaetigt/falsifiziert» enden — das ist Erfolg, kein Leerlauf.
  Erfindet ein Verifikationslauf eine Rule-/Gate-Aenderung ohne neuen Beleg, ist das selbst eine
  Gate-Ueberdehnung (dasselbe Prinzip wie die Leitplanke unten, nach innen gerichtet).

## Leitplanken
- **Nichts erfinden:** Methodik-Aussagen belegt halten; Unbelegtes bleibt `speculative`.
- **Gate nicht ueberdehnen:** das Ziel ist, dass die Spec-Methode *hilft*, nicht dass sie
  jeden Mini-Auftrag verzoegert. Lieber praeziser triggern als oefter.
- **Mensch entscheidet bei Grenzfaellen:** Aenderungen an der Rule (Verhalten aller Stationen)
  nur bei klarem Beleg; sonst Raphael vorlegen.
