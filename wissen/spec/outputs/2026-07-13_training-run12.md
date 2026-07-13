# Spec-Training — Lauf 12 (2026-07-13)

**Lauf-Typ:** Verifikationslauf (keine neue reale Spec seit Lauf 7, Wettbewerbs-Layer 12.07.).
Fuenfter Lauf innerhalb ~24 h (VOLLGAS-Phase). Schwerpunkt bewusst: **Reue-Pruefung** der
Lauf-11-Regression statt eines weiteren erfundenen Feinschliffs.

## 1. Environment-Audit (Fixes halten)
- `rules/jans-dna.md`-@-Import in `CLAUDE.md` weiter vorhanden (Zeile 477) — Lauf-8-Fix haelt.
- Metadaten: `verifier.md` + `environment-jans-hub.md` = 2026-07-13, `anwendung-jans.md` = 07-12,
  `the-spec.md` + `3-schritte-spec.md` = 06-21 (korrekt: inhaltlich unveraendert seit Seed).
- `rules/*.md` auf Platte: 21 (Drei-Listen-Konsistenz zuletzt Lauf 8/10 geprueft; kein neuer Drift-Verdacht).

## 2. Reue-Pruefung Lauf-11-Regression (Kern dieses Laufs) — unabhaengig verifiziert
Nicht Lauf 11 geglaubt, sondern die drei Primaerquellen selbst gelesen:
- **Monitor-Log** (`outputs/2026-06-21_ag-gruendung_spec.md`): letzter `ag-gruendung-monitor`-Eintrag
  = **10.07.**; 0 Eintraege 11./12./13.07. → 3 Tage Stillstand, bestaetigt.
- **Radar-Briefings** (`logbuch/LOGBUCH.md`, newest-first): AG-Gruendung/Notariat wird taeglich
  22.06.–**09.07.** erwaehnt, danach in den Briefings **10./11./12./13.07. gar nicht mehr** — inkl.
  des heutigen Morgen-Radars (06:57) und des Hub-Chef-Laufs (14:00). Bestaetigt (4 Briefings ohne Nennung).
- **fristen.md** (heute 15:03 aktualisiert): AG-Zeile unveraendert **«offen»/«hoch»**, Eintrag seit
  27.06. unberuehrt = **16 Tage**; die zugrunde liegende Owner-Aktion «Antwort ans Notariat raus»
  (Name «Raphael Jans AG» bestaetigen + Word-Dateien senden) weiter offen.

**Ergebnis:** Lauf 11s Regressionsbefund haelt und verschaerft sich; Lauf 11s **Prognose**
(«sollte im naechsten logbuch-radar wieder auftauchen») ist **falsifiziert**.

## 3. Neue Lektion — «ein Flag ist keine Reparatur»
Lauf 11 hatte die Luecke «geflaggt, nicht autonom repariert» und erwartet, dass die Sichtbarkeit
dadurch zurueckkehrt. Nach 3 Tagen: kein Effekt. Lehre (Kausal-Zwilling zu Lauf 10): **ein nur im
Wiki notiertes oder an einen Menschen gerichtetes Flag remediert nichts, solange kein Prozess das
Flag konsumiert.** Die Reparatur muss im erzeugenden Prozess sitzen (Monitor-/Radar-Logik, die
`fristen.md`-«offen/hoch»-Zeilen wieder ins Briefing zieht), nicht in einer KB-Notiz.
→ ergaenzt in `wiki/verifier.md` (Sektion «Eine Monitor-Lektion haelt nicht von selbst») + `QUESTIONS.md` F2.

## 4. Prozess-Praezisierung — zwei Lauf-Typen
Der Loop laeuft unter VOLLGAS schneller, als reale Specs eintreffen. Neu in `training/PROGRAMM.md`
verankert: **Auswertungslauf** (neue Spec → volle Auswertung) vs. **Verifikationslauf** (keine neue
Spec → Reue-Pruefung, darf ohne Wiki-Feinschliff enden). Ein Verifikationslauf, der ohne neuen Beleg
eine Rule-/Gate-Aenderung erfindet, ist selbst eine Gate-Ueberdehnung.

## 5. Geaendert / bewusst nicht getan
- Geaendert: `wiki/verifier.md`, `training/PROGRAMM.md`, `wiki/QUESTIONS.md` (F2).
- Bewusst NICHT: keine Reparatur an `logbuch`/Scheduled Tasks (ausserhalb `wissen/spec`-Mandat);
  kein Mail-Versand. Rule `spec-methode.md` + `anwendung-jans.md` unveraendert (kein Gate-Beleg).
  Quellen-Schuld: keine (F4/F5 eingeloest).

## 6. Offen / naechstes
- **An Raphael/Skill `logbuch` eskalieren** (ausserhalb dieses Loops): AG-Gruendung-Owner-Aktion
  «Antwort ans Notariat» ist seit 3 Tagen aus jeder taeglichen Sichtbarkeit verschwunden, obwohl
  `fristen.md` sie «hoch/offen» fuehrt — reine Dokumentation hat nachweislich nicht gewirkt; die
  Radar-/Monitor-Logik muss «offen/hoch»-Fristen wieder aktiv ins Briefing ziehen.
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) fehlt weiter.
- F3 offen nur noch Marketing/Text.
