# Spec-Training — Lauf 8 (2026-07-13)

Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026). Voraussetzung NAS gemountet:
erfuellt.

## 1. Stand gelesen
- `wiki/QUESTIONS.md`: F1 (Ueberdehnungs-Gegentest) weiterhin offen, F3 nur noch Domaene
  Marketing/Text offen, F4/F5 vollstaendig eingeloest, F6/F7 eingeloest/stabil.
- `outputs/`: seit Lauf 7 (2026-07-12, 22:54) ist **keine neue reale Spec-Anwendung**
  hinzugekommen (letzter Eintrag `2026-07-12_wettbewerbs-layer_spec.md`, 18:15 — bereits in
  Lauf 7 ausgewertet).
- `CHANGELOG.md`: Lauf 7 sauber dokumentiert, keine offenen Wiedersprueche.

## 2. Environment-Audit (Kernstueck dieses Laufs)

Audit-Prompt gegen CLAUDE.md, `wissen/`, `skills/`, `rules/`+Hooks gefahren. Zaehlstand
2026-07-13: 47 Skills (NAS), 16 KBs unter `wissen/`, 21 Dateien unter `rules/` (20 Regeln +
README).

**Befund 1 (P1, behoben):** `rules/jans-dna.md` — das "Gehirn" des Twin-Harness — war
vollstaendig ausformuliert und dokumentiert sich selbst (sowie `skills/twin/SKILL.md` Z. 28f.)
als *"@-Import ganz oben in CLAUDE.md"*. Tatsaechlich fehlte der Import komplett — die Regel
wurde in keiner Session automatisch geladen. Klar belegter Verdrahtungsfehler (keine
Ermessensfrage), daher direkt gefixt: `@/Volumes/daten/jans-ai-hub/rules/jans-dna.md` als
ersten Eintrag im Rule-Import von `CLAUDE.md` ergaenzt.

**Befund 2 (P1, geflaggt statt gefixt):** `rules/sync-single-committer.md` — ebenfalls nicht
importiert, UND inhaltlich im Widerspruch zur aktiven `git-auto-push.md`: Erstere verbietet
rohes Git direkt auf dem NAS-Repo (nur Mac Mini via `nas-git-commit.sh`), Letztere weist
explizit an, `/Volumes/daten/jans-ai-hub` direkt zu committen/pushen. Da eine Aenderung hier
Verhalten aller Stationen betrifft und die beiden Regeln sich widersprechen, **nicht** autonom
geloest — Registry-Nachtrag in `rules/README.md` gemacht (mit Hinweis auf den offenen
Widerspruch), @-Import bewusst nicht ergaenzt. **Braucht Raphaels Entscheid:** gilt fuer
NAS-Git-Schreiboperationen `git-auto-push.md` oder `sync-single-committer.md`/
`nas-git-commit.sh`? (Kontext: `sync-single-committer.md` referenziert einen realen
Vorfall 07.06.2026 — index.lock-Korruption durch paralleles Git-ueber-SMB.)

**Befund 3 (P3, behoben):** `rules/README.md` "Aktive Rules"-Liste fehlten 5 existierende
Dateien (`anrede-kontakte`, `jans-absenderadresse`, `normen-referenz`, `jans-dna`,
`sync-single-committer`). Rein additive Dokumentation, kein Verhaltensrisiko → nachgezogen.

**Befund 4 (P3, behoben):** `wiki/environment-jans-hub.md` hatte veraltete Zaehlstaende
(43 Skills/11 KBs statt 47/16, `last_updated` 2026-06-21). Aktualisiert, Lauf-8-Befund als
neue Sektion dokumentiert (siehe KB fuer Details).

**Kein Befund zu:** Hooks (`SessionStart`/`UserPromptSubmit`-Guards fuer NAS-Mount,
Verbesserungs-Capture, Mail-Draft-Guard, Umlaut-Guard) — alle vier vorhanden und aktiv, keine
Luecke erkennbar in dieser Stichprobe.

## 3. Reale Spec-Anwendungen ausgewertet
Keine neue seit Lauf 7 (siehe Punkt 1). Kein neues Korrektur-Delta.

## 4. Nachschaerfen
Keine Aenderung an Gate-Schwelle (`spec-methode.md`) — kein neuer Beleg fuer Ueberdehnung
oder Untertriggern. `verifier.md`/`anwendung-jans.md` inhaltlich unveraendert (Metadaten
bleiben auf 07-12, da diesen Lauf keine neue Spec-Lektion vorlag); stattdessen wurde
`environment-jans-hub.md` (Layer 3) ueberarbeitet — der eigentliche Lernfund dieses Laufs
liegt im Environment-Audit, nicht in einer neuen Spec-Anwendung.

## 5. Quellen-Schuld
Keine offen — F4 (Karpathy+Cherny) und F5 (Anthropic-Doku) bereits in frueheren Laeufen
vollstaendig eingeloest. Kein neuer Nachtrag noetig.

## Was als naechstes
- **Raphael-Entscheid einholen:** `git-auto-push.md` vs. `sync-single-committer.md` fuer
  NAS-Git-Operationen (Befund 2). Bis zur Klaerung bleibt `sync-single-committer.md`
  nicht importiert.
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Fall) weiterhin nicht in `outputs/` —
  bleibt offen fuer kuenftige Laeufe.
- F3: nur noch Domaene Marketing/Text ohne belegte Verifier-Zeile.
- Naechster Lauf: pruefen, ob der `jans-dna.md`-Import (jetzt aktiv) sichtbar Wirkung zeigt
  (z.B. an Twin-Fidelity-Metriken oder Korrektur-Deltas) — das waere der erste reale Beleg,
  dass die Verdrahtungs-Luecke tatsaechlich Output beeinflusst hat.
