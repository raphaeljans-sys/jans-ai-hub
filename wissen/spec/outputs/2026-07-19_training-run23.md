# Trainingslauf 23 — Spec-Methode (19.07.2026)

**Typ: Verifikationslauf.** Keine neue reale Spec seit Lauf 20. Die naechste (SYN-02) ist laut
Task-Registry auf **Mo 20.07.2026 12:15** terminiert (`syn02-spec-anstoss`, one-time, enabled,
nie gefeuert) — die Abwesenheit heute ist erwartet, kein Gate-Fehltreffer.

Beitrag dieses Laufs: **Reue-Pruefung der Lauf-22-Lektion** («ein leeres Verifier-Signal ist
mehrdeutig») — mit dem Ergebnis, dass die dort als behoben verbuchte Reparatur nie stattgefunden hat.

## 1. Stand

- Letzter Auswertungslauf: 20 (15.07., SYN-02-Interview-Vorbereitung). Laeufe 21/22 Verifikationslaeufe.
- Lauf 22 (18.07.) hatte zwei Dinge festgehalten: (a) der `ag-gruendung-monitor` schreibt wieder
  taeglich → Schweige-Faden bleibt geschlossen; (b) neuer Fehlermodus «silent empty» beim
  M365-Zugriff auf mail@ — laut `fristen.md` **behoben** durch Umstellung auf Apple Mail.
- Beide Punkte waren die naheliegenden Pruefobjekte fuer diesen Lauf.

## 2. Reue-Pruefung — Befund A: die gemeldete Reparatur ist nicht eingetreten

`fristen.md`, Eintrag 17.07., Schlusssatz des METHODEN-BEFUNDs:
«Task-Definition auf Apple Mail als Primaerkanal fuer mail@ umgestellt.»

Gegenpruefung an den Primaerquellen (nicht dem Eintrag geglaubt):

| Pruefung | Ergebnis |
|---|---|
| Task-Registry: gibt es eine zweite Definition? | Nein — einzige `path`-Angabe ist `~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` |
| mtime dieser Datei | **21.06.2026 14:49** — seit Erstellung nie geaendert, also auch nicht am 17.07. |
| Wortlaut Schritt 1 | unveraendert: «Konten rj@ und mail@ **via M365/Outlook-Suche**; **falls verfuegbar zusaetzlich** Apple Mail» |

Der blinde Fleck besteht also unveraendert fort. Der naechste Lauf (Mo 20.07., 07:46) sucht mail@
wieder ueber den Kanal ohne Delegate-Zugriff — und der gesamte UBS-Strang liegt in mail@. Eine dort
eintreffende **Kapitalbescheinigung**, der eine Fund, fuer den dieser Monitor existiert, wuerde erneut
nicht erkannt.

**Warum das die schaerfere Variante von Lauf 12 ist:** ein offenes Flag bleibt sichtbar. Eine als
«behoben» formulierte Meldung **schliesst den Faden aktiv** — Lauf 22 hat sie uebernommen und
aufgehoert zu pruefen. Der Fehler ist dadurch nicht nur unrepariert, sondern unsichtbar geworden.

Destilliert nach [[verifier]]: *Erledigt-Meldungen sind Behauptungen, keine Belege — auch die eigenen.
Wer eine Reparatur abnimmt, prueft das Artefakt, das das Verhalten steuert (mtime/Commit/Diff), nicht
den Text, der die Aenderung behauptet.* Trennfrage: «Wurde etwas geaendert — oder wurde nur gesagt,
dass etwas geaendert wurde?»

Reihe der Falsch-Signale, jetzt fuenfgliedrig: Lauf 1 falsches Gruen · Lauf 10 Mass konsumiert den Fix
nicht · Lauf 12 ein Flag ist keine Reparatur · Lauf 22 ein leeres Signal ist kein Beweis fuer Leere ·
**Lauf 23 eine gemeldete Reparatur ist kein Beweis fuer eine Reparatur**.

## 3. Reue-Pruefung — Befund B: Fehlalarm vermieden (Kadenz vor Stille)

Die AG-Zeile in `fristen.md` trug heute weiterhin «Monitor 17.07.» — auf den ersten Blick eine
Wiederholung der Schweige-Regression der Laeufe 11–14. Registry-Gegenprobe: Cron **Mo–Fr**,
`lastRunAt` = Fr 17.07. 07:47. Der 18./19.07. sind Samstag und Sonntag — die Stille ist planmaessig,
der Monitor ist gesund.

Ergaenzung zur Reue-Pruefungs-Disziplin (neben Lauf 14 «eine haelt-an-Diagnose hat ein Ablaufdatum»):
**vor jeder Schweige-Diagnose den Fahrplan pruefen.** Ein Monitor, der laut Plan gar nicht laufen
sollte, schweigt nicht — er hat frei. Ohne diesen Check waere aus einem gesunden Wochenende ein
zweiter falscher Regressions-Befund geworden.

## 4. Umgesetzt

- `wiki/verifier.md`: neue Sektion «Eine als «behoben» gemeldete Reparatur ist selbst ein
  Verifier-Signal (Lauf 23)» inkl. Befund B als Kadenz-Regel; `last_updated` → 2026-07-19.
- `wiki/QUESTIONS.md`: F2 um den Widerruf der Lauf-22-Schliessung + den vermiedenen Fehlalarm ergaenzt.

## 5. Bewusst nicht getan

- **Task-Definition nicht selbst geaendert.** Der Fix (Apple Mail als Primaerkanal fuer mail@ in
  Schritt 1) ist `logbuch`-Betrieb und eine Verhaltensaenderung an einem laufenden Scheduled Task —
  ausserhalb des `wissen/spec`-Mandats. An Raphael eskaliert. Bekannte Schwaeche dieses Wegs ist
  gerade die Lauf-12-Lehre («ein Flag ist keine Reparatur»), deshalb hier explizit mit konkretem
  Fix-Text und Termindruck (naechster blinder Lauf Mo 20.07. 07:46) statt als allgemeine Notiz.
- Kein Environment-Sweep (Lauf 13 frisch), keine Rule-/Gate-Aenderung (`spec-methode.md` unveraendert —
  kein Ueberdehnungs-Beleg), keine erfundene F3-Vollzeile (SYN-02-Verifier bleibt Pending bis E5),
  kein Mail-Versand.

## 6. Offen / naechstes

- **P1 fuer Raphael:** Schritt 1 des `ag-gruendung-monitor` auf Apple Mail als Primaerkanal fuer mail@
  umstellen (heute noch, vor dem Lauf Mo 07:46) — sonst bleibt die UBS-Ueberwachung blind.
- Mo 20.07.: SYN-02-Spec-Interview startet → naechster Lauf ist voraussichtlich ein **Auswertungslauf**;
  danach kann die Pending-Verifier-Zeile «Entwurfsprozess/Geometrie» bei bestaetigtem E5 promoviert werden.
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) weiterhin unbelegt.
- F3: Marketing/Text weiterhin die letzte offene Domaenen-Zeile.
- Kandidat fuer einen kuenftigen Sweep: Wie viele andere Hub-Monitore melden Erledigt-Zustaende, die nie
  an einem Artefakt verifiziert wurden? Der «behoben, aber nicht behoben»-Fehlermodus ist nicht auf
  diesen Task beschraenkt.
