---
title: Spec-Training Lauf 31 (Verifikationslauf)
datum: 2026-07-25
typ: training-report
status: established
---

# Trainingslauf 31 — 25.07.2026, 16:14

## Typ
Verifikationslauf. Keine neue reale Spec seit Lauf 24 (SYN-02, 21.07.2026 bestaetigt). Seit
Lauf 30 (15:25 heute) keine neue Datei in `outputs/`.

## Reue-Prüfung P1 (mail@-Blindfleck `ag-gruendung-monitor`)
Hält weiter. `~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` unverändert mtime
21.07.2026 07:49. `logbuch/fristen.md` führt die AG-Gründung UBS-Strecke unverändert unter
«In Beobachtung»: **29 Tage ohne UBS-Antwort seit 27.06.2026**, Einzahlungstermin Mitte
August jetzt als **gefährdet** eingestuft, Empfehlung telefonisch bei B. Jeckelmann
nachzufassen. Kein neuer Sweep nötig — konsistente Fortsetzung der Lauf-25/26/28/30-Kette,
kein Rückfall.

## Neuer Fund: `syn02-spec-anstoss`-Duplikat-Problem geschlossen
Die letzten drei CHANGELOG-Einträge (25.07., alle vor diesem Lauf) verfolgten ein
operatives Problem ausserhalb des KB-Mandats: der einmalige Task `syn02-spec-anstoss`
feuerte am 25.07. dreimal erneut, obwohl die SYN-02-Spec seit 20.07. längst bestätigt ist
und nur noch Raphaels Freigabe für den MVP-Bau Block 1 fehlt. Der dritte Lauf hatte
versucht, den Task selbst zu löschen (401, kein Login), und eine Eskalations-Mail an rj@
gesendet.

Am Artefakt geprüft (`~/.claude/scheduled-tasks/syn02-spec-anstoss/SKILL.md`, mtime
25.07.2026 13:08) ist das Problem **behoben** — allerdings nicht über den angefragten
manuellen Löschweg, sondern durch den `vollgas-chef-radar`, der den Task lokal auf
`enabled: false` gesetzt und mit einer Begründungsnotiz versehen hat («STILLGELEGT
25.07.2026», Hinweis: offen ist nicht ein weiteres Interview, sondern die Freigabe zum
MVP-Bau). Reversibel (kein Löschen), der Runner überspringt den Task dadurch. Kausalität
zur spec-KB-Eskalationsmail bleibt unbelegt (Disziplin Läufe 10/12/21: ein Artefakt ist
keine Quelle für seine eigene Herkunft) — registriert wird nur die Landung als Faktum. Kein
Handlungsbedarf mehr; der Faden gilt als geschlossen, solange `enabled: false` hält.

## Environment-Zählstand
49 Skills / 22 Rules / 16 KBs — identisch zu Lauf 26/28/29/30. Kein voller Sweep fällig.

## Bewusst nicht getan
- Kein erfundenes F1-Überdehnungsbeispiel.
- Keine Rule-/Skill-/Wiki-Änderung ohne neuen methodischen Beleg (der syn02-Fund ist ein
  operativer Faden, keine neue Spec-Methodik-Lehre).
- Kein Eingriff in `SYNERGIE-REGISTER.md` oder die SYN-02-Spec selbst (Mandat liegt beim
  Synergie-Orchestrator).
- Kein Mailversand.

## Offen
- F1-Überdehnungs-Gegentest weiterhin unbelegt.
- F3 Marketing/Text bleibt letzte offene Domänenzeile der Verifier-Zuordnungstabelle.
- SYN-02-MVP-Bau Block 1 weiterhin ungebaut, wartet auf Raphaels Freigabe.
- Nächster ergiebiger Lauf voraussichtlich erst nach einer neuen realen Spec oder wenn die
  AG-Gründung UBS-Strecke sich bewegt (29 Tage, Eskalationsempfehlung telefonisch).
