# Trainingslauf 14 — Spec-Methode (14.07.2026)

## Ausgangslage
Letzter Lauf: 13 (13.07., 20:05) — sechster Lauf am 13.07., KB-zu-Skill-Sync-Luecke in
`skills/spec/SKILL.md` geschlossen. Keine neue reale Spec seit Wettbewerbs-Layer (12.07., Lauf 7).
Dieser Lauf ist damit erneut ein **Verifikationslauf** (kein neuer Anwendungsfall in `outputs/`).

## 1. Stand gelesen
`QUESTIONS.md`, `CHANGELOG.md`, `outputs/` — keine neue reale Spec seit Lauf 7. F1/F3 bleiben ohne
neuen Beleg (F1-Ueberdehnungsgegentest weiterhin unbelegt, F3 offen nur noch Marketing/Text).

## 2. Reue-Pruefung: haelt der AG-Gruendung-Monitor-Befund aus Lauf 11/12 noch?
Lauf 11/12 diagnostizierten einen 3-Tage-Ausfall des `ag-gruendung-monitor` (seit 10.07., keine
Eintraege bis 13.07. 15:22) und daraus "ein Flag ist keine Reparatur" (die KB-Eskalation an
Raphael/`logbuch` habe nichts bewirkt).

**Unabhaengig nachgeprueft (Git-Commit-Historie von `logbuch/fristen.md`, nicht nur Dateiinhalt):**
Zwischen dem nas-selfcommit 13.07. 15:45 (bestaetigt noch Lauf 12s Befund) und dem nas-selfcommit
13.07. 21:00 wurde die AG-Gruendung-UBS-Zeile um einen neuen Eintrag ergaenzt: **«Monitor 13.07.:
kein neuer UBS-/Notariats-Eingang (mail@ + rj@ geprueft) … Stand unveraendert.»** Der Monitor hat
also am 13.07. **nach** Lauf 12 (15:22) und **nach** Lauf 13 (20:05) doch noch geschrieben — beide
Laeufe haben das nicht gesehen, weil sie vor diesem Zeitpunkt liefen bzw. `fristen.md` in Lauf 13
nicht erneut auf diese Zeile hin geprueft wurde. Bestaetigt per `git log -p -S "Monitor 13.07" --
logbuch/fristen.md` und Commit-Zeitstempel-Abgleich (keine Erwaehnung in
`outputs/2026-07-13_training-run13.md`).

**Einordnung:**
- Die Kernlehre aus Lauf 12 ("ein Flag ist keine Reparatur") **bleibt bestehen** — es gibt keinen
  Beleg, dass die KB-Eskalation die Wiederaufnahme ausgeloest hat. Ein plausibler, aber unbelegter
  Kandidat waere ein Infrastruktur-Faktor (der zeitgleich im `logbuch/vollgas/RADAR.md` dokumentierte
  MacBook-Login-Zustand des Endlos-Runners) — dazu fehlt aber eine belastbare Korrelation, deshalb
  nur als Kandidat vermerkt, nicht als Ursache behauptet.
- **Neue, uebertragbare Lehre:** eine "haelt an, nicht selbst geheilt"-Diagnose gilt nur bis zum
  Pruefzeitpunkt, nicht rueckwirkend fuer den ganzen Tag. Lauf 11s Prognose ("taucht im naechsten
  Radar wieder auf") war nicht falsch, sondern **zu frueh am selben Tag widerlegt**. Reue-Pruefungen
  muessen kuenftig auch fragen: "hat sich seit dem letzten Check-Zeitpunkt am selben Tag etwas
  veraendert?" — nicht nur den alten Befund wiederholen.
- Umgesetzt: `wiki/verifier.md` (neuer Update-Absatz unter "Eine Monitor-Lektion haelt nicht von
  selbst"), `wiki/QUESTIONS.md` F2 nachgefuehrt.

## 3. Environment-Audit
Kein neuer Breitband-Sweep — Lauf 13 hat die Drei-Listen-Konsistenz (Rules-Dateien ↔ README ↔
CLAUDE.md-Imports) und den KB→Skill-Sync bereits frisch geprueft und gefixt; ein vierter
Wiederholungs-Sweep am Folgetag ohne neuen Anlass waere selbst die im PROGRAMM.md beschriebene
"Gate-Ueberdehnung nach innen". Stattdessen gezielt die eine offene Reue-Pruefung (oben) vertieft,
die tatsaechlich neues, verifizierbares Material lieferte.

## 4. Quellen-Schuld (F4/F5)
Beide vollstaendig eingeloest seit Lauf 3/1 (Karpathy, Cherny, Anthropic-Doku). Keine neue Aktion
noetig.

## 5. Bewusst nicht getan
- Keine erfundene F1/F3-Fuellung ohne neuen Fall.
- Keine Reparatur an `logbuch`/Scheduled Tasks (ausserhalb KB-Mandat) — die Eskalation aus Lauf 12
  an Raphael/`logbuch` bleibt bestehen, jetzt mit dem Zusatz, dass die Stille nicht drei volle Tage
  bis heute anhielt, sondern am 13.07. nachmittags/abends unterbrochen wurde.
- Kein Mail-Versand.
- `rules/spec-methode.md` unveraendert (kein neuer Anwendungsfall, kein Ueberdehnungsbeleg).

## Naechstes
- Pruefen, ob der Monitor am 14.07. weiterlaeuft (heute noch kein neuer `fristen.md`-Commit).
- F1-Ueberdehnungsgegentest weiterhin unbelegt; F3 nur noch Marketing/Text offen.
- Sollte eine neue reale Spec eintreffen, naechster Lauf wird wieder ein voller Auswertungslauf.
