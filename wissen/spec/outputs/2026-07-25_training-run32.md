# Spec-Training — Lauf 32 (Verifikationslauf)

Datum: 2026-07-25 17:55
Typ: Verifikationslauf (keine neue reale Spec seit Lauf 24/SYN-02; Lauf 31 war bereits
Verifikation, dieselbe Lage besteht fort)

## 1. Stand gelesen
- `wiki/QUESTIONS.md`: F1 (Überdehnungs-Gegentest) weiterhin unbelegt, F3 (Marketing/Text
  als letzte offene Verifier-Domäne) weiterhin offen, F2/F4/F5/F6/F7 unverändert.
- `outputs/`: seit Lauf 31 (2026-07-25 16:15) keine neue Datei — letzter Eintrag bleibt
  `2026-07-25_training-run31.md`. Kein neuer realer Spec-Anwendungsfall.
- `CHANGELOG.md`: Lauf 31 dokumentierte P1-Stand (29 Tage UBS-Verzug) + geschlossenes
  `syn02-spec-anstoss`-Duplikat.

## 2. Environment-Audit (Stichprobe, kein voller Sweep)
- Skills: 49 (Ordner minus README.md/SKILL-CONTRACT.md/baurecht-agent.md) — unverändert
  gegenüber Lauf 26/28/29/30/31.
- Rules: 22 Dateien in `rules/` — unverändert.
- Wissens-KBs: 16 (Ordner minus README.md/WISSEN-CLAUDE.md) — unverändert.
- Kein Zähl-Drift seit dem letzten vollen Sweep (Lauf 23) → kein voller Environment-Sweep
  fällig, Stichprobe genügt als Reue-Check.

## 3. Reale Spec-Anwendungen ausgewertet
Keine neue Anwendung vorhanden. Stattdessen P1-Reue-Prüfung (Fortsetzung Läufe 22–31):

**P1 (mail@-Blindfleck `ag-gruendung-monitor`) hält weiter — am Artefakt verifiziert:**
`~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` unverändert mtime
**21.07.2026 07:49**. `logbuch/fristen.md` führt den jüngsten Monitor-Eintrag vom
**24.07.2026** (UBS seit 27.06. = 28 Tage ohne Antwort, Einzahlungstermin Mitte August als
gefährdet eingestuft, Empfehlung: telefonisch bei B. Jeckelmann nachfassen). Für den
25.07.2026 (Samstag) liegt **kein** neuer Monitor-Eintrag vor (`grep -c "Monitor 25.07.2026"`
= 0) — konsistent mit der Lauf-29-Präzisierung: der Monitor läuft Mo–Fr, Samstag-Stille ist
planmässig, keine Regression. Kein neuer Sweep nötig, solange der Werktags-Rhythmus hält.

## 4. Nachgeschärft
Nichts. Kein neuer methodischer Beleg seit Lauf 31 — ein Refinement ohne Beleg wäre selbst
Gate-Überdehnung nach innen (Leitplanke `training/PROGRAMM.md`).

## 5. Quellen-Schuld
F4/F5 bereits vollständig eingelöst (Lauf 3/4). Kein weiterer Bedarf.

## 6. Bewusst nicht getan
- Kein erfundenes F1-Überdehnungsbeispiel.
- Keine Rule-/Skill-/Wiki-Änderung ohne neuen methodischen Beleg.
- Kein Eingriff in `SYNERGIE-REGISTER.md` oder die SYN-02-Spec (fremdes Mandat).
- Kein Mailversand (P1-Empfehlung «bei UBS nachfassen» bleibt Raphaels Entscheid, nicht
  automatisiert ausgelöst).

## 7. Offen / nächster Schritt
- F1-Überdehnungs-Gegentest weiterhin unbelegt.
- F3 Marketing/Text als letzte offene Verifier-Domänenzeile.
- SYN-02-MVP-Bau Block 1 weiterhin ungebaut, wartet auf Freigabe.
- UBS-Strecke AG-Gründung jetzt 28 Tage überfällig, Einzahlungstermin Mitte August
  zunehmend gefährdet — ausserhalb KB-Mandat, bleibt bei `logbuch`/Raphael.
- Nächster ergiebiger Lauf voraussichtlich nach einer neuen realen Spec oder einer
  inhaltlichen Bewegung in der UBS-Strecke.
