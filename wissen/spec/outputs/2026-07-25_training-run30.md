# Trainingslauf 30 — Spec-Methode (Verifikationslauf)

Datum: 2026-07-25, ca. 15:25 (rund 1 Std. nach Lauf 29, 14:11)

## 1. Stand

- Letzter Auswertungslauf: 24 (21.07., SYN-02 Vorbereitung-Interview-Delta 7/9).
- Läufe 25–29 waren Verifikationsläufe (P1-Hält-Checks + eine Präzisierung in Lauf 29).
- Keine neue reale Spec seit Lauf 24: `outputs/` enthält seit dem letzten Check keine neue
  `*_spec.md`-Datei ausser den bereits ausgewerteten (AG-Gründung, Hub-Chef, Buchhaltung,
  Versandplanung/Shop-Connector, Normen-Harness, Thalwil, Wettbewerbs-Layer, SYN-02).

## 2. Reue-Check P1 (ag-gruendung-monitor mail@-Blindfleck)

Erneut an der Primärquelle geprüft, unabhängig von Lauf 28/29:
- `~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` mtime weiterhin **21.07.2026 07:49**
  (unverändert seit der Landung, jetzt fünf Läufe in Folge bestätigt).
- `logbuch/fristen.md` zeigt Monitor-Einträge 22./23./24.07. — für 25.07. (heute, Samstag) liegt
  planmässig **kein** Eintrag vor, da der `ag-gruendung-monitor`-Cron Mo–Fr läuft (Lauf-29-
  Präzisierung bestätigt sich damit ein zweites Mal). Kein Rückfall der Schweige-Regression.
- Inhaltlich weiterhin nichts Neues zur AG-Gründung selbst (UBS-Antragsformular seit 27.06. ohne
  Antwort, jetzt 29 Tage).

Ergebnis: **P1 hält weiter**, kein neuer Sweep nötig, solange der Mo-Fr-Rhythmus eingehalten wird.

## 3. SYN-02 / Faktenbasis-Drift

`SYNERGIE-REGISTER.md` SYN-02 (vom Synergie-Orchestrator, nicht von diesem Loop) zeigt bereits den
Lauf-02-Stand vom 25.07.: Datenseite hat mit dem Parameter-Set `schule-volksschule-ch.json`
aufgeholt (Lücke B5 geschlossen), Codeseite (`volumen_generator.py`) bleibt unverändert bei den
reinen CLI-Flags ohne Parameter-Set-Import. Das ist bereits im koordination-CHANGELOG erfasst;
keine doppelte Buchung durch die Spec-KB nötig (Mandat liegt beim Synergie-Orchestrator).

## 4. Environment-Zählstand (Stichprobe, kein voller Sweep)

Gemessen: 49 Skills, 22 Rule-Dateien, 16 KBs unter `wissen/` — identisch zum Lauf-26-Zählstand
(23.07.). Kein voller Environment-Sweep fällig (letzter voller Sweep Lauf 26, Zählstände seither
stabil).

## 5. Bewusst nicht getan

- Kein erfundenes F1-Überdehnungsbeispiel (weiterhin kein genervter Mittelfall in `outputs/`).
- Keine Änderung an Rule `spec-methode.md`, Skill `spec` oder den Wiki-Artikeln — kein neuer Beleg,
  der eine Änderung rechtfertigt.
- Kein Eingriff in `SYNERGIE-REGISTER.md` (fremdes Mandat).
- Kein Mailversand.

## 6. Offen

- F1-Überdehnungs-Gegentest weiterhin unbelegt.
- F3 Marketing/Text weiterhin letzte offene Domänenzeile in der Verifier-Zuordnungstabelle.
- SYN-02 MVP-Bau Block 1 weiterhin ungebaut (fremdes Mandat, nur beobachtet).
- Nächster inhaltlich ergiebiger Lauf voraussichtlich erst nach einer neuen realen Spec oder
  nach Montag 27.07. (nächster Werktag, an dem der `ag-gruendung-monitor` wieder planmässig läuft).
