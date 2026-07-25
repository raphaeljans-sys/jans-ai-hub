# Spec-Training Lauf 28 (2026-07-25)

## Lauf-Typ
**Verifikationslauf** — keine neue reale Spec-Anwendung seit Lauf 27 (24.07., Health-Check-
Phase-2-Umsetzung). Legitimer Beitrag: Reue-Prüfung P1 + ein neuer, belegter methodischer Fund.

## Stand gelesen
- `wiki/QUESTIONS.md`, `outputs/` (letzte reale Spec weiterhin SYN-02, 20.07.), `CHANGELOG.md`.
- Zwei separate CHANGELOG-Einträge vom 25.07. (nicht dieser Loop) dokumentieren, dass der
  One-Time-Task `syn02-spec-anstoss` ein drittes Mal fälschlich gefeuert hat (Interview längst
  bestätigt) und Raphael per Mail um manuelle Löschung des Task-Eintrags gebeten wurde. Zur
  Kenntnis genommen, keine Doppelarbeit — betrifft die Task-Queue, nicht die KB.

## P1 (mail@-Blindstelle `ag-gruendung-monitor`) — Reue-Check: hält
Am Artefakt geprüft: `~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` mtime unverändert
**21.07.2026 07:49**. `logbuch/fristen.md` zeigt durchgehende tägliche Monitor-Einträge 22.–25.07.
(«nichts Neues»), UBS-Antwort jetzt 29 Tage überfällig. Kein weiterer Sweep nötig.

## Neuer Fund: SYN-02 MVP wartet, Faktenbasis der Spec ist schon gealtert
`wissen/koordination/SYNERGIE-REGISTER.md` (Lauf 02 des Synergie-Orchestrators, ebenfalls 25.07.)
zeigt zwei Dinge zu SYN-02:
1. **Codeseite unverändert offen:** `skills/volumenstudie/tools/volumen_generator.py` liest
   weiterhin kein Parameter-Set — MVP-Block-1-Bau (Adapter `typologie_zu_variante.py`) wartet
   nach wie vor auf Freigabe (seit 20.07., 5 Tage).
2. **Datenseite ist an der Spec vorbeigewachsen (SYN-15):** `wissen/architekten-synobsis/wiki/
   RAUMTYPOLOGIEN.md` (24.07., established) liefert eine dritte, gleichrangige Entwurfsdimension
   (Raumfigur/Parti-Ebene, 9 Typologien/105 Projekte, `catalog/typology-map.json`) — vier Tage
   NACH der SYN-02-Spec-Bestätigung entstanden. Die Spec kennt als Faktenbasis nur
   `entwurfs-referenzen`, `wettbewerbs-dna`, `grobkosten`; das neue Artefakt taucht dort nicht auf.

Das ist ein **neuer, bisher nicht dokumentierter Alterungsmodus** für eine bestätigte, aber noch
nicht gebaute Spec: nicht ein kippender Entscheid (F2, bisherige Fälle), nicht ein Warten auf eine
externe autoritative Instanz (Phase B, AG-Gründung) — sondern die **Faktenbasis selbst wächst
weiter**, während der Bau auf Freigabe steht. Belegt, weil konkret benennbar (Datei + Datum +
Delta) und weil das Umsetzungsteam (Synergie-Orchestrator) den Fund unabhängig selbst gemacht hat.

## Umgesetzt
- `wiki/anwendung-jans.md` Schritt 2: neuer Absatz «Vierter Alterungsmodus» direkt nach der
  Zwei-Phasen-Beschreibung der lebenden Spec, mit SYN-02/SYN-15 als Beleg und der Konsequenz,
  dass ein Faktenbasis-Refresh-Check bei MVP-Baustart nötig ist, nicht nur ein Freigabe-Trigger.
  `last_updated` → 2026-07-25.
- `wiki/QUESTIONS.md` F2: Hält-Check-Datenpunkt (P1, 25.07.) + der Faktenbasis-Drift-Fund mit
  Verweis auf die Wiki-Ergänzung.

## Bewusst nicht getan
- Kein Eingriff in `SYNERGIE-REGISTER.md` oder die SYN-02-Spec-Datei selbst — SYN-15 ist bereits
  im Synergie-Register als eigener, dort zuständiger Befund erfasst (`synergie-orchestrator`-
  Mandat); Doppelbuchung vermieden, nur die methodische Lehre für `wissen/spec` gezogen.
- Kein Environment-Sweep — Zählstände (49 Skills, 22 Rules/19 Imports, 16 KBs) heute gegen das
  Dateisystem geprüft, unverändert seit Lauf 26 (23.07.), `environment-jans-hub.md` daher nicht
  angefasst (kein Drift).
- Kein erfundenes F1-Überdehnungsbeispiel; Gate-Rule `spec-methode.md` unverändert.
- Kein Mailversand.

## Offen
- SYN-02-MVP-Bau Block 1 weiterhin ungebaut, jetzt zusätzlich mit dem Hinweis, die Faktenbasis
  (RAUMTYPOLOGIEN/`typology-map.json`) beim Baustart nachzuziehen.
- F1-Überdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) weiterhin unbelegt.
- F3: Marketing/Text als letzte offene Verifier-Domänenzeile.
- `syn02-spec-anstoss`-Task-Duplikat: Löschung liegt bei Raphael (ausserhalb KB-Mandat).
