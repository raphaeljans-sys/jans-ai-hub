# Spec-Training — Lauf 3 (2026-07-03)

Automatischer Lauf (Scheduled Task `spec-training`, alle 3 Tage). Phase 1 (Audit/Auswertung)
komplett; Phase 2 (Aenderungen) bei eindeutigem Mehrwert direkt ausgefuehrt, Groesseres geflaggt.

## 1. Stand gelesen
- Neue reale Spec-Anwendung seit Lauf 2: **`2026-07-02_buchhaltungssystem_spec.md`** (Hub-Chef-Spec
  02.07. war schon im CHANGELOG). AG-Gruendungs-Spec heute nur um den Monitor-Log 03.07. ergaenzt
  (nichts Neues, kein Korrektur-Delta).
- QUESTIONS: F4 noch teiloffen (Cherny), F1/F2/F3 laufend, F6/F7 offen.

## 2. Environment-Audit (Befund, Top-Punkte)
1. **Metadaten-Drift (Audit E, war rot):** `verifier.md` + `anwendung-jans.md` trugen
   `last_updated: 2026-06-21` trotz 06-30-Inhalt. → **behoben** (auf 2026-07-03 gezogen mit den
   heutigen Inhalten). 3-schritte / the-spec / environment stimmen (seit Seed unveraendert).
2. **CLAUDE.md KB-Liste ohne `spec/` (3. Mal geflaggt):** Skill stand in der Skill-Tabelle, aber
   die «Aktuelle KBs»-Aufzaehlung (Z. 398) nannte `spec/` nicht. → **behoben** (additive, rein
   faktische Doku-Korrektur; KB existiert und wird aktiv trainiert — im Rahmen wissens-bibliothekar).
3. Rule `spec-methode.md` unveraendert — Gate arbeitet ueber 3 belegte Faelle korrekt (kein Beleg
   fuer Ueberdehnung). Keine Guardrail-/Hook-Luecke neu aufgetaucht; die eine relevante
   Guardrail-Bewegung (Buchhaltung, s.u.) laeuft sauber ueber einen bestaetigten Schluesselentscheid.

## 3. Auswertung Buchhaltungssystem-Spec (02.07.)
Starker Fall, drei uebertragbare Lektionen:
- **Guardrail-Anpassung als bestaetigter Schluesselentscheid:** Entscheid #2 «Buchen nach
  Einzelfreigabe» oeffnet die harte Regel «Geld/Buchungen NIE» kontrolliert (`--ja`-Muster,
  Buchungsliste, nie automatisch). Neues Muster in [[anwendung-jans]]: die Spec ist der Ort, an
  dem eine Autonomie-Erweiterung sichtbar entschieden und begrenzt wird (Layer 1 trifft Layer 3);
  betroffene Whitelist/Regel wird nachgezogen.
- **Ist-Zustand real scannen, nicht nur bestaetigen:** bei System-/Prozess-/Umbau-Vorhaben genuegt
  «Ausgangslage bestaetigen» nicht — das OneDrive-Archiv wurde gescannt und die «Erosion» der
  manuellen Kontierung diagnostiziert; die Diagnose IST die Ziel-Begruendung. Eigener Abschnitt
  «Ist-Zustand (Scan)» vor den Schluesselentscheiden. → [[anwendung-jans]] Schritt 1 + F2.
- **Verifier-Zuordnung Domaene Buchhaltung/Steuern:** autoritative Instanz = Treuhand-Pruefstunde +
  Steuerbehoerde; externes Signal = `bexio --abgleich` (kreuzt Bank↔Buchung) + UBS-Feed +
  Bescheinigungen; Format = Goldstandard GA2024. → neue **Zuordnungstabelle in [[verifier]]** (F3).

## 4. Geaendert (Phase 2)
- `verifier.md`: Cherny-Primaerquelle (2-3x) zitiert; neue «Verifier-Zuordnung je Domaene»-Tabelle
  (Recht/Behoerde + Buchhaltung/Steuern); Metadaten 07-03.
- `anwendung-jans.md`: Ist-Zustand-Scan-Lektion (Schritt 1); neues Muster «Guardrail-Anpassung als
  Schluesselentscheid»; Metadaten 07-03.
- `QUESTIONS.md`: F1 (3 Faelle, weiter keine Ueberdehnung), F2 (Ist-Scan), F3 (2. Domaenen-Eintrag),
  F4 (Cherny eingeloest → **F4 vollstaendig**), F6/F7 (Skelett kristallisiert).
- `CLAUDE.md`: `spec/` in KB-Liste ergaenzt (NAS-Quelle).

## 5. Quellen-Schuld (PROGRAMM Schritt 5)
- **F4 Cherny eingeloest:** Boris Cherny auf X, Tip 13/ — «give Claude a way to verify its work …
  it will 2-3x the quality of the final result» (https://x.com/bcherny/status/2007179861115511237;
  Begleit-Thread .../2064426115255730578). Das «2-3x»-Zitat in `verifier.md` ist damit
  primaerquellenbelegt, nicht mehr nur transkript. **F4 gesamt (Karpathy + Cherny) erledigt.**

## 6. Offen / als naechstes
- **Fuer Raphael (geflaggt):** F6 — Spec-Template `wissen/spec/templates/spec-vorlage.md` aus den
  3 Specs extrahieren (Skelett steht empirisch). Neues Artefakt, daher Vorschlag statt Bau.
- F3-Tabelle je weiterer Anwendung fuellen (Domaene Bau/Studie, Marketing/Text noch offen).
- F1 weiter beobachten: bislang nur hoch-einsatzige Faelle — ein bewusst mittelgrosser Fall fehlt
  als Gegentest fuer die Ueberdehnungs-Frage.
