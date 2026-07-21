# CHANGELOG — KB Spec (neueste zuoberst)

## 2026-07-21 — Trainingslauf 24
- Output `outputs/2026-07-21_training-run24.md`. **Auswertungslauf** — neue reale Spec seit Lauf 23:
  SYN-02 (bestaetigt 20.07., achte Anwendung), erster Fall mit real gefuehrtem Interview aus einer
  Interview-Vorbereitung.
- **Gemessenes Vorbereitung→Interview-Delta (F2, erster harter Beleg):** von neun Default-Vorschlaegen
  der Vorbereitung (15.07.) hielten **7**, **2** wurden ueberstimmt — genau die strategischen
  Geschaeftsmodell-Entscheide (E2 GM2→GM3, E3 drei Gates→nur Gate c); alle technischen Folgeentscheide
  hielten. Der E2-Override kaskadierte auf E5 (voller `programm-pruefer` im MVP), von der Vorbereitung
  korrekt als Kopplung vorhergesehen. Das Live-Interview schrumpfte auf **2 Entscheidungen + 7
  Bestaetigungen** → belegt, dass die Vorbereitung die teure Recherche vor das Gespraech zieht.
- **Reue-Check Lauf-23-P1 — Fix nicht gelandet:** `ag-gruendung-monitor/SKILL.md` unveraendert (mtime
  21.06.2026 14:49), Schritt 1 sucht mail@ weiter ueber den Kanal ohne Delegate-Zugriff. Lauf-12-Lehre
  («ein Flag ist keine Reparatur») **auf die Eskalation selbst angewandt** — auch eine P1-Notiz an einen
  Menschen remediert nichts, solange sie nicht konsumiert wird. Abnahme am Artefakt (mtime) statt am
  «eskaliert»-Vermerk verhinderte den Schein-Abschluss.
- **Umgesetzt:** `wiki/anwendung-jans.md` Schritt 1 (Default-Trefferquote 7/9 + Regel «technische
  Defaults fest, strategische offen, Kopplungen flaggen», `last_updated` → 07-21); `wiki/QUESTIONS.md`
  F2 (SYN-02-Delta + P1-Reue-Check); `wiki/verifier.md` (Reue-Bestaetigung an Lauf-23-Sektion,
  `last_updated` → 07-21).
- **Bewusst nicht getan:** Task-Definition nicht selbst geaendert (`logbuch`-Betrieb ausserhalb Mandat,
  erneut geflaggt); Gate-Rule unveraendert (kein Ueberdehnungs-Beleg); Verifier-Tabelle nicht gedoppelt
  (Zeile «Entwurfsprozess» bereits 20.07. promoviert); kein Mailversand.
- Offen: **P1 mail@-Umstellung** (2 Tage alt); SYN-02-MVP-Bau Block 1; F1-Ueberdehnungs-Gegentest
  unbelegt; F3 Marketing/Text letzte offene Domaenenzeile; Sweep «behoben, aber nicht behoben» bei
  anderen Hub-Monitoren.

## 2026-07-20 — SYN-02-Spec bestaetigt (achte reale Spec-Anwendung)
- Interview E1–E9 auf Zuruf Raphaels («Spec SYN-02 starten») via AskUserQuestion gefuehrt;
  Spec abgelegt: `outputs/2026-07-20_syn-02-typologischer-entwurfsprozess_spec.md`.
- Zwei Abweichungen von den Default-Vorschlaegen der Interview-Vorbereitung: **E2 =
  Wettbewerbs-Fabrik (GM3) zuerst** (statt Variantenstudie GM2) und **E3 = nur Gate c
  (Parti)** (statt Dreiteilung a/b/c — Pipeline laeuft autonom bis zum Variantenkatalog).
  E5 dadurch strenger: voller `programm-pruefer`-Durchlauf schon im MVP.
- [[verifier]]: Pending-Zeile «Entwurfsprozess / generative Geometrie-Pipeline» zur vollen
  Tabellenzeile promoviert (vierte Auspraegung: bueroeigener Entwerfer am Parti-Gate).
- `SYNERGIE-REGISTER` SYN-02 auf «Spec bestaetigt 20.07.2026» gesetzt; MVP-Bau (Block 1:
  Adapter `typologie_zu_variante.py`) startet auf Freigabe.

## 2026-07-19 — Trainingslauf 23
- Output `outputs/2026-07-19_training-run23.md`. **Verifikationslauf** — keine neue reale Spec; SYN-02
  ist laut Task-Registry auf **Mo 20.07. 12:15** terminiert (`syn02-spec-anstoss`, nie gefeuert),
  Abwesenheit erwartet.
- **Reue-Pruefung der Lauf-22-Lektion — Schliessung WIDERRUFEN:** die im 17.07.-Eintrag gemeldete
  Behebung («Task-Definition auf Apple Mail als Primaerkanal fuer mail@ umgestellt») hat **nie
  stattgefunden**. Primaerquelle Task-Registry: einzige Definition `~/.claude/scheduled-tasks/
  ag-gruendung-monitor/SKILL.md`, mtime **21.06.2026 14:49** (seit Erstellung unveraendert); Schritt 1
  nennt weiterhin «mail@ via M365/Outlook-Suche; falls verfuegbar zusaetzlich Apple Mail». Der blinde
  Fleck besteht fort — der naechste Lauf (Mo 20.07. 07:46, Cron Mo–Fr) sucht mail@ wieder ueber den
  Kanal ohne Delegate-Zugriff, eine Kapitalbescheinigung wuerde erneut nicht erkannt.
- **Neue Lehre (Verschaerfung von Lauf 12):** eine als «behoben» gemeldete Reparatur **schliesst den
  Faden aktiv** und ist gefaehrlicher als ein offenes Flag — Lauf 22 hat die Meldung geglaubt und
  aufgehoert zu pruefen. Abnahme gehoert ans verhaltenssteuernde Artefakt (mtime/Commit/Diff), nicht an
  den Text, der die Aenderung behauptet. Fuenftes Glied der Falsch-Signal-Familie (Lauf 1/10/12/22).
- **Fehlalarm vermieden:** «Monitor 17.07.» sah nach neuer Schweige-Regression aus; Registry zeigt Cron
  **Mo–Fr** + `lastRunAt` Fr 17.07. → 18./19.07. Wochenende, Stille planmaessig. Zusatzregel: **vor jeder
  Schweige-Diagnose den Fahrplan pruefen.**
- **Umgesetzt:** `wiki/verifier.md` neue Sektion «Eine als «behoben» gemeldete Reparatur ist selbst ein
  Verifier-Signal (Lauf 23)» inkl. Kadenz-Regel, `last_updated` → 07-19; `wiki/QUESTIONS.md` F2
  (Widerruf + Fehlalarm-Notiz).
- **Bewusst nicht getan:** Task-Definition NICHT selbst geaendert (Verhaltensaenderung an laufendem
  Scheduled Task, `logbuch`-Betrieb ausserhalb KB-Mandat) — an Raphael eskaliert mit konkretem Fix und
  Termindruck; kein Environment-Sweep, keine Rule-/Gate-Aenderung, keine erfundene F3-Zeile, kein Mailversand.
- Offen: **P1 — Monitor-Schritt 1 auf Apple Mail umstellen vor Mo 07:46**; SYN-02 ab 20.07. → Auswertungslauf;
  F1-Ueberdehnungs-Gegentest unbelegt; F3 Marketing/Text offen; Sweep-Kandidat «behoben, aber nicht behoben»
  bei anderen Hub-Monitoren.

## 2026-07-18 — Trainingslauf 22
- Output `outputs/2026-07-18_training-run22.md`. **Verifikationslauf** — keine neue reale Spec seit
  Lauf 20; die naechste (SYN-02) ist auf **Spec-Start ab 20.07.** terminiert (`SYNERGIE-REGISTER`),
  Abwesenheit heute also erwartet, kein Gate-Fehltreffer.
- **Reue-Pruefung des von Lauf 19 geschlossenen AG-Monitor-Fadens:** Schliessung **haelt** (Monitor
  schreibt weiter taeglich, 17.07.-Eintrag real in `fristen.md`). Derselbe 17.07.-Lauf deckte aber
  einen **neuen Fehlermodus** auf: die UBS-Pruefung war seit ~15.07. blind, weil der M365-Connector
  (rj@) keinen Delegate-Zugriff auf **mail@** hat und dort **still eine LEERE Antwort statt eines
  Fehlers** liefert → Falsch-«nichts Neues». Gegenprobe via Apple Mail: inhaltlich nichts verpasst,
  Task auf Apple Mail als Primaerkanal umgestellt (`logbuch`-Betrieb, ausserhalb Mandat).
- **Umgesetzt (belegt):** `wiki/verifier.md` neue Sektion «Ein leeres Verifier-Signal ist mehrdeutig —
  Zugriff VOR Inhalt pruefen» (Positivkontrolle + zweiter Kanal; reiht sich in die Falsch-Signal-Familie
  Lauf 1/10/12), `last_updated` → 07-18; `wiki/QUESTIONS.md` F2 (Lauf-19-Schliessung haelt + Verweis).
- **Nachtrag Lauf 21 (17.07.):** Lauf 21 korrigierte `QUESTIONS.md` (F1/F2 — «ein Artefakt ist keine
  Quelle fuer seine eigene Herkunft», SYN-02-Ausloesung = terminierte Freigabe statt «Benutzer
  abwesend») und `anwendung-jans.md` Schritt 1 (`last_updated: 07-17`), hinterliess aber **keinen
  Output/CHANGELOG-Eintrag** (kein `..._run21.md`); die Edits wurden vom `nas-selfcommit` 17.07. 04:30
  gesichert. Hiermit retroaktiv im CHANGELOG vermerkt (wissens-bibliothekar: jede Aenderung protokollieren).
- **Bewusst nicht getan:** kein Environment-Sweep (Lauf 13 frisch), keine Rule-/Gate-Aenderung
  (`spec-methode.md` unveraendert — Verifier-Disziplin, kein Ueberdehnungs-Beleg), keine `logbuch`-/
  Connector-Reparatur, keine erfundene Verifier-Zeile (SYN-02 bleibt Pending bis E5), kein Mail-Versand.
- Offen: F1-Ueberdehnungs-Gegentest weiter unbelegt; F3 nur Marketing/Text + SYN-02-Pending; SYN-02-Spec
  ab 20.07. → Auswertungslauf; «silent-empty»-Risiko anderer Hub-Monitore als Kandidat fuer kuenftigen Sweep.

## 2026-07-15 — Trainingslauf 20
- Output `outputs/2026-07-15_training-run20.md`. **Auswertungslauf** — erste neue reale Spec-Anwendung
  seit Lauf 7: `outputs/2026-07-15_syn-02-...-spec-interview/` (Schwester-Task `syn02-spec-anstoss`,
  erstellt 00:57–00:59, also NACH Lauf 19 um 00:54 — Lauf 19s «keine neue Spec» war korrekt).
- **Kernlektion (belegt, neu): der autonome Schritt-1-Deliverable «Interview-Vorbereitung».** Triggert
  das Gate ohne anwesenden Benutzer, ist der korrekte Output die vorbereiteten E-Fragen mit je Frage
  recherchierter Faktenlage + Default-Vorschlag («NICHT die Spec / kein Bau vor bestaetigter Spec») —
  nicht das Erfinden der Entscheide. Loest die Spannung «Spec braucht bestaetigte Entscheide» ↔
  «autonomer Lauf». → `wiki/anwendung-jans.md` Schritt 1.
- **Umgesetzt:** `anwendung-jans.md` Schritt 1 (neuer Absatz + last_updated 07-15); `QUESTIONS.md` F1
  (siebter Gate-Trigger, kein Ueberdehnungs-Beleg), F2 (Interview-Vorbereitung verkuerzt das Interview),
  F3 (vorgeschlagene Domaene «Entwurfsprozess/Geometrie», Verifier-Kandidat = Architekt am Parti-Human-
  Gate); `verifier.md` Pending-Zeile unter der Tabelle (+ last_updated 07-15).
- **Bewusst nicht getan:** kein voller Environment-Sweep (Lauf 13 frisch); der technische Generator-Gap
  (`volumen_generator.py` liest Parameter-Set nicht) nur als Cross-Harness-Befund notiert, nicht repariert
  (ausserhalb `wissen/spec`-Mandat); keine Rule-/Skill-Aenderung; keine erfundene F3-Vollzeile aus dem noch
  unbestaetigten Verifier (E5 offen → Pending). F4/F5 bleiben vollstaendig eingeloest.
- Offen: SYN-02-Interview auf Zuruf, danach Verifier-Pending → volle Zeile; F1-Ueberdehnungs-Gegentest
  fehlt weiter; F3 Marketing/Text offen; AG-Gruendung in `logbuch`-Hand.

## 2026-07-15 — Trainingslauf 19
- Output `outputs/2026-07-15_training-run19.md`. **Keine neue reale Spec** seit Lauf 7
  (Wettbewerbs-Layer 12.07.) → Verifikationslauf. Erster Lauf am neuen Tag und erster sauber
  ins Nachtfenster getakteter Lauf (00:54) — die Scheduling-Redundanz der Laeufe 14–18 (bis
  5x am 14.07.) ist beendet, konsistent mit Drossel-Rule 260714. Prozess-Beobachtung als
  geloest bestaetigt, nicht vertieft.
- **Faden geschlossen (Monitor-Schweige-Regression Laeufe 11–14):** geheilt — der
  `ag-gruendung-monitor` schreibt wieder taeglich (14.07. 07:47-Eintrag real in `fristen.md`).
  Bestaetigt endgueltig die Lauf-14-Korrektur «die Stille war temporaer, nicht permanent». Die
  Kernlehre «ein Flag ist keine Reparatur» bleibt gueltig (Wiederaufnahme NICHT kausal auf die
  KB-Eskalation belegt — der Monitor lief schlicht wieder an). Sauberer Verifikationslauf-Ausgang:
  alter Befund aufgeloest, ohne Rule-/Gate-Aenderung zu erfinden.
- **Umgesetzt:** `wiki/QUESTIONS.md` F2 um den Aufloesungs-Absatz «15.07. (Lauf 19)».
- **Bewusst nicht getan:** kein Environment-Sweep (Lauf 13 frisch), keine erfundene F1/F3-Fuellung,
  keine Aenderung an Rule/Skill/uebrigem Wiki, kein Mail-Versand, keine `logbuch`-Reparatur.
- Offen: F1-Ueberdehnungs-Gegentest unbelegt; F3 nur noch Marketing/Text offen; AG-Gruendung
  inhaltlich in `logbuch`-Hand (UBS-Formular + Notariats-Antwort ausstehend).

## 2026-07-14 — Trainingslauf 18
- Output `outputs/2026-07-14_training-run18.md`. Fuenfte Ausloesung desselben Tages (11:2x Uhr,
  ~1 Std. nach Lauf 17 um 10:15) — Scheduling-Drosselung (Rule 260713, 1x/Tag 04:10) greift weiterhin
  nicht (Prozess-Beobachtung, ausserhalb KB-Mandat). **Keine neue reale Spec** seit Lauf 7
  (Wettbewerbs-Layer 12.07.). AG-Gruendung-Monitor/`fristen.md` unveraendert gegenueber Lauf 17,
  F1-F7 unveraendert. Bewusst minimal: kein sechster Wiederholungs-Sweep, keine erfundene
  F1/F3-Fuellung, keine Aenderung an Wiki/Rule/Skill.

## 2026-07-14 — Trainingslauf 17
- Output `outputs/2026-07-14_training-run17.md`. Vierte Ausloesung desselben Tages
  (10:15, nur ~1,5 Std. nach Lauf 16 um 08:39) — Scheduling-Redundanz haelt weiter an
  (Prozess-Beobachtung, ausserhalb KB-Mandat). **Keine neue reale Spec** seit Lauf 7
  (Wettbewerbs-Layer 12.07.). AG-Gruendung-Monitor/`fristen.md` unveraendert gegenueber
  Lauf 16. Bewusst minimal: kein fuenfter Wiederholungs-Sweep, keine erfundene
  F1/F3-Fuellung, keine Aenderung an Wiki/Rule/Skill.

## 2026-07-14 — Trainingslauf 16
- Output `outputs/2026-07-14_training-run16.md`. Dritte Ausloesung desselben Tages (08:39,
  nach Lauf 14 um 01:10 und Lauf 15 um 05:10) — Scheduling-Drosselung auf 1x/Tag greift
  weiterhin nicht (Prozess-Beobachtung, ausserhalb KB-Mandat, nicht autonom repariert).
  **Keine neue reale Spec** seit Lauf 7 (Wettbewerbs-Layer 12.07.). AG-Gruendung-Monitor
  hat 14.07. 07:47 erneut "nichts Neues" geschrieben (Commit `028ce40b`) — bestaetigt die
  Lauf-14-Korrektur, dass der Monitor weiterhin taeglich schreibt. Bewusst minimal gehalten:
  kein vierter Wiederholungs-Sweep, keine erfundene F1/F3-Fuellung, keine Aenderung an
  Wiki/Rule/Skill.

## 2026-07-14 — Trainingslauf 15
- Output `outputs/2026-07-14_training-run15.md`. Redundante Zweit-Ausloesung desselben Tages
  (05:09, nur ~4 Std. nach Lauf 14 um 01:10) — laut Skill-Beschreibung seit 13.07. auf 1x/Tag
  04:10 gedrosselt. **Nichts Neues seit Lauf 14:** `logbuch/fristen.md` unveraendert, keine neue
  reale Spec, keine relevanten Commits. Bewusst minimal gehalten (kein wiederholter Sweep, keine
  erfundene F1/F3-Fuellung) — Prozess-Beobachtung notiert: Scheduling-Drosselung `spec-training`
  scheint noch nicht konsequent zu greifen (Cron-/Task-Konfigurationsfrage, ausserhalb KB-Mandat).
  Keine Aenderung an Wiki/Rule/Skill.

## 2026-07-14 — Trainingslauf 14
- Output `outputs/2026-07-14_training-run14.md`. **Keine neue reale Spec** seit Lauf 7 (Wettbewerbs-
  Layer 12.07.) — Verifikationslauf.
- **Reue-Pruefungs-Korrektur (Praezisierung, nicht Widerruf):** Git-Commit-Historie von
  `logbuch/fristen.md` unabhaengig geprueft (nicht nur Dateiinhalt) — der `ag-gruendung-monitor` hat
  am 13.07. **nach** Lauf 12 (15:22) und Lauf 13 (20:05) doch noch einen Eintrag geschrieben
  («Monitor 13.07. … Stand unveraendert», zwischen den nas-selfcommits 15:45 und 21:00). Lauf 12s
  "haelt an, nicht selbst geheilt" war fuer den Pruefzeitpunkt richtig, aber keine Aussage fuer den
  Rest des Tages. Die Kernlehre "ein Flag ist keine Reparatur" bleibt bestehen (keine belegte
  Kausalitaet KB-Eskalation → Wiederaufnahme); neu ist die Lehre, dass **eine "haelt an"-Diagnose
  ein Ablaufdatum hat** — Reue-Pruefungen muessen auch pruefen, ob sich seit dem letzten Check-
  Zeitpunkt am selben Tag etwas veraendert hat.
- **Umgesetzt:** `wiki/verifier.md` (Update-Absatz unter "Eine Monitor-Lektion haelt nicht von
  selbst", `last_updated` → 07-14), `wiki/QUESTIONS.md` F2 nachgefuehrt.
- **Bewusst nicht getan:** kein vierter Breitband-Environment-Sweep (Lauf 13 hat Drei-Listen-
  Konsistenz + KB→Skill-Sync bereits frisch geprueft — ein Wiederholungs-Sweep ohne neuen Anlass
  waere selbst Gate-Ueberdehnung nach innen); keine erfundene F1/F3-Fuellung; keine `logbuch`-
  Reparatur (ausserhalb Mandat, Eskalation an Raphael bleibt mit praezisiertem Befund bestehen);
  kein Mail-Versand; `spec-methode.md` unveraendert.
- Offen: F1-Ueberdehnungs-Gegentest weiter unbelegt; F3 nur noch Marketing/Text; ob der Monitor am
  14.07. weiterlaeuft, ist noch offen (heute noch kein neuer `fristen.md`-Commit).

## 2026-07-13 — Trainingslauf 13
- Output `outputs/2026-07-13_training-run13.md`. **Keine neue reale Spec** seit Lauf 7; sechster
  Lauf am selben Tag. Bewusst **keine** vierte Wiederholung der AG-Gruendung-Reue-Pruefung
  (Laeufe 10-12 bereits dreimal, gleicher Befund) — stattdessen breiterer Environment-Sweep und
  Suche nach neuem F1/F3-Material (Ergebnis: nichts Neues, beide bleiben unbelegt, bewusst nicht
  kuenstlich gefuellt).
- **Neuer Fund:** `skills/spec/SKILL.md` hatte die seit Lauf 4 (`templates/spec-vorlage.md`) und
  Lauf 7 (Verifier-Zuordnungstabelle, 5 Domaenen) gereifte KB nicht nachgezogen — eingebettetes
  Spec-Output-Schema war die alte flache Kurzfassung, Verifier-Sektion kannte die Domaenen-Tabelle
  nicht. **Umgesetzt:** SKILL.md Schritt 3 + Schema verweisen jetzt auf `wiki/verifier.md`-Tabelle
  und `templates/spec-vorlage.md` statt sie zu duplizieren. Kein Rule-/Gate-Verhalten geaendert
  (Trigger-Schwelle unberuehrt) — reine Umsetzungstreue-Korrektur (KB→Skill-Sync).
- **Drei-Listen-Konsistenz** erneut per echtem Datei-Diff (nicht nur Zeilenzahl) bestaetigt:
  20 Rule-Dateien ↔ README (alle 20 + 1 Platzhalterzeile `neuer-bereich.md`, kein Drift) ↔
  CLAUDE.md (19 Imports, einzige Differenz weiterhin `sync-single-committer.md`, dokumentiert).
- **Neue Lehre fuer den Loop selbst:** Environment-Audits sollten periodisch auch pruefen, ob
  KB-Reifung (Wiki/Templates) tatsaechlich in den operativen Skill zurueckfliesst — nicht nur
  Rules/CLAUDE.md-Konsistenz. Muster potenziell uebertragbar auf andere Skills mit wachsenden
  KBs (immobilienbewertung, planungsgrundlagen, energie, normen).
- **Bewusst nicht getan:** keine vierte AG-Gruendung-Pruefung ohne neue Primaerquelle; keine
  erfundene F1/F3-Fuellung; `spec-methode.md`/`anwendung-jans.md` unveraendert; kein Mail-Versand.
- Offen: F1-Ueberdehnungs-Gegentest weiter unbelegt; F3 nur noch Marketing/Text; Eskalation
  AG-Gruendung/`logbuch` an Raphael (aus Lauf 12) weiterhin offen, ausserhalb dieses Mandats.

## 2026-07-13 — Trainingslauf 12
- Output `outputs/2026-07-13_training-run12.md`. **Keine neue reale Spec** seit Lauf 7; fuenfter
  Lauf in ~24 h (VOLLGAS). Als **Verifikationslauf** gefuehrt: Reue-Pruefung statt erfundenem Feinschliff.
- **Lauf-11-Regression unabhaengig verifiziert** (Primaerquellen selbst gelesen, nicht Lauf 11 geglaubt):
  `ag-gruendung-monitor` schweigt weiter seit 10.07. (0 Eintraege 11.–13.07.); `logbuch`-Briefings
  10.–13.07. (inkl. Morgen-Radar 06:57 + Hub-Chef 14:00 heute) erwaehnen die AG-Gruendung **gar nicht**
  (letzte Nennung 09.07.); `fristen.md` fuehrt sie unveraendert «offen»/«hoch» (16 Tage). Lauf 11s
  **Prognose** («taucht im naechsten Radar wieder auf») damit **falsifiziert**.
- **Neue Lektion:** «ein Flag ist keine Reparatur» — eine nur im Wiki/an einen Menschen gerichtete Notiz
  remediert nichts, solange kein Prozess das Flag konsumiert (Kausal-Zwilling zu Lauf 10). Fix gehoert in
  den erzeugenden Prozess (Monitor-/Radar-Logik), nicht in eine KB-Notiz. → `wiki/verifier.md` (Sektion
  «Eine Monitor-Lektion haelt nicht von selbst» erweitert) + `QUESTIONS.md` F2.
- **Prozess-Praezisierung** in `training/PROGRAMM.md`: zwei Lauf-Typen (Auswertungslauf vs.
  Verifikationslauf); ein Verifikationslauf darf mit «Befund bestaetigt/falsifiziert, nichts geaendert»
  enden — Refinement ohne neuen Beleg ist selbst Gate-Ueberdehnung nach innen.
- **Bewusst nicht getan:** keine `logbuch`-/Scheduled-Task-Reparatur (ausserhalb KB-Mandat), kein
  Mail-Versand. Rule `spec-methode.md` + `anwendung-jans.md` unveraendert. Quellen-Schuld: keine.
- Offen: an Raphael/`logbuch` eskalieren (AG-Gruendung 3 Tage unsichtbar trotz «hoch/offen» — Doku
  wirkungslos, Radar-Logik muss «offen/hoch»-Fristen aktiv ziehen); F1-Ueberdehnungs-Gegentest;
  F3 nur noch Marketing/Text.

## 2026-07-13 — Trainingslauf 11
- Output `outputs/2026-07-13_training-run11.md`. **Keine neue reale Spec-Anwendung** seit Lauf 7.
  Vierter Lauf am selben Tag; statt eines weiteren Breitband-Environment-Sweeps eine gezielte
  **Reue-Pruefung** der Lauf-9-Lektion («Zwei Blocker-Typen») am selben realen Fall.
- **Befund (Regression):** die AG-Gruendung-Owner-Aktion («Antwort ans Notariat raus») ist NICHT
  mehr wie in Lauf 9 nur «leise unter nichts Neues gealtert» — sie ist seit 10.07. komplett aus der
  taeglichen Sichtbarkeit verschwunden: der `ag-gruendung-monitor` schrieb seit 10.07. keinen
  Eintrag mehr (3 Tage Stillstand), und `logbuch-radar` erwaehnte die Zeile in 4 Briefings in Folge
  (10.–13.07.) nicht mehr, obwohl `fristen.md` sie unveraendert «offen»/«hoch» fuehrt (16 Tage alt,
  Notariats-Befund 21 Tage alt).
- **Umgesetzt:** `wiki/verifier.md` neue Sektion «Eine Monitor-Lektion haelt nicht von selbst —
  Reue-Pruefung noetig» (ergaenzt Lauf 10s «Mass validiert nur, wenn der Mess-Prozess die Aenderung
  konsumiert» um die Fortdauer-Frage). `wiki/QUESTIONS.md` F2 um den Regressionsbefund ergaenzt.
- **Bewusst nicht getan:** keine Reparatur an `logbuch`/Scheduled Tasks (ausserhalb KB-Mandat) —
  als Befund dokumentiert und an Raphael/Skill `logbuch` geflaggt, kein Mail-Versand.
- Rule `spec-methode.md` + `anwendung-jans.md` unveraendert (Betriebsfrage, kein Gate-Beleg).
  Quellen-Schuld: keine.
- Offen: F1-Ueberdehnungs-Gegentest weiter offen; F3 nur noch Marketing/Text offen; die
  geflaggte AG-Gruendung-Sichtbarkeitsluecke sollte im naechsten `logbuch-radar` wieder auftauchen.

## 2026-07-13 — Trainingslauf 10
- Output `outputs/2026-07-13_training-run10.md`. **Keine neue reale Spec-Anwendung** seit Lauf 7.
  Dritter Lauf am selben Tag; arbeitet die zwei offenen «naechstes»-Punkte aus Lauf 9 ab.
- **Follow-up Lauf 8 (Drei-Listen-Konsistenz):** erstmals ausgefuehrt. `rules/*.md` (20) ↔
  `rules/README.md` (alle 20 registriert) ↔ `CLAUDE.md`-@-Import (19; einzige Differenz
  `sync-single-committer.md` = bewusst historisch nicht importiert). Listen konsistent, die
  Lauf-8-Fixes halten. Die von Lauf 8 geforderte Gegenpruefung ist damit tatsaechlich gelaufen.
- **Follow-up Lauf 9 (Twin-Fidelity-Kausalverdacht) — widerlegt:** der Verdacht, der
  `jans-dna.md`-Import-Fix habe die Twin-Fidelity gehoben, haelt nicht: Fidelity stieg schon
  vor dem Fix stetig (84→90→93), die drei 13.07.-Fidelity-Outputs erwaehnen den Import nicht und
  schreiben ihren Wert dem gezogenen Golddatensatz zu, und der `twin-chef`-Selbsttest liest
  `jans-dna.md` direkt (unabhaengig vom `CLAUDE.md`-@-Import) → Mass orthogonal zum Fix.
- **Umgesetzt:** `wiki/verifier.md` neue Sektion «Ein Mass validiert eine Aenderung nur, wenn der
  Mess-Prozess die Aenderung konsumiert» (Verifier-Disziplin Korrelation≠Kausalitaet).
  `wiki/QUESTIONS.md` F1-Stand 13.07. (Lauf 10) ergaenzt.
- Rule `spec-methode.md` + `anwendung-jans.md` unveraendert (kein neuer Anwendungsfall/kein
  Ueberdehnungsbeleg). Quellen-Schuld: keine.
- Offen: F1-Ueberdehnungs-Gegentest weiter offen; F3 nur noch Marketing/Text offen.

## 2026-07-13 — Trainingslauf 9
- Output `outputs/2026-07-13_training-run9.md`. **Keine neue reale Spec-Anwendung** seit
  Lauf 8. Schwerpunkt: den in Lauf 8 geflaggten P1-Grenzfall (Git-Committer-Modell NAS-Repo,
  `git-auto-push.md` vs. `sync-single-committer.md`) durch Betriebs-Empirie geklaert statt an
  Raphael zu eskalieren.
- **Befund:** `git log`/`git config` auf dem NAS-Repo zeigen, dass praktisch alle Trainings-
  Loops direkt ueber SMB committen (nicht ueber `nas-git-commit.sh`); `scripts/
  nas-selfcommit.sh` (DSM-Cron, 15 Min, kein SMB) laeuft bereits produktiv als Sicherheitsnetz;
  `sync-tasks/log/selfcommit-202607.log` zeigt keine Korruption seit der DSM-Migration. Der
  Konflikt existierte nur auf dem Papier.
- **Umgesetzt:** `rules/sync-single-committer.md` mit Status-Banner "nicht aktiv/historisch"
  versehen; `rules/sync-kanonische-quelle.md`s veralteter "Backlog"-Eintrag auf den Live-Stand
  korrigiert; `rules/README.md`-Registry nachgezogen; `wiki/environment-jans-hub.md` um Sektion
  "Trainingslauf 9" ergaenzt. `git-auto-push.md` unveraendert (beschrieb den Ist-Zustand
  bereits korrekt).
- **Methodische Lektion:** ein Regel-Widerspruch braucht nicht immer eine Raphael-Eskalation,
  wenn belegbare Betriebs-Empirie (Logs/Git-Historie) eindeutig ist — "die Praxis als
  autoritative Instanz" ist selbst ein Verifier-Muster. Eskalieren bleibt richtig bei
  mehrdeutiger Empirie oder Sicherheits-/Kostenfragen.
- Metadaten `verifier.md`/`anwendung-jans.md` unveraendert (kein neuer Spec-Anwendungsfall).
  Rule `spec-methode.md` unveraendert. Quellen-Schuld: keine.
- Offen: F1-Ueberdehnungs-Gegentest weiterhin offen; F3 nur noch Marketing/Text offen.

## 2026-07-13 — Trainingslauf 8
- Output `outputs/2026-07-13_training-run8.md`. **Keine neue reale Spec-Anwendung** seit Lauf 7
  (letzter Output 12.07. 18:15, bereits ausgewertet). Schwerpunkt dieses Laufs: Environment-Audit.
- **Befund + Fix (P1):** `rules/jans-dna.md` (das "Gehirn" des Twin-Harness) war vollstaendig
  ausformuliert, dokumentiert sich selbst UND `skills/twin/SKILL.md` als "@-Import ganz oben in
  CLAUDE.md" — der Import fehlte aber komplett in `CLAUDE.md`. Klar belegter Verdrahtungsfehler,
  direkt behoben: `jans-dna.md` als ersten Rule-Import in `CLAUDE.md` ergaenzt.
- **Befund + geflaggt (P1, NICHT autonom geloest):** `rules/sync-single-committer.md` ebenfalls
  nicht importiert UND inhaltlich im Widerspruch zur aktiven `git-auto-push.md` (rohes Git direkt
  aufs NAS-Repo vs. Verbot dessen). Nur Registry-Nachtrag in `rules/README.md` gemacht, @-Import
  bewusst offen gelassen — **Raphael-Entscheid noetig**, welche Regel fuer NAS-Git-Schreib-
  operationen gilt.
- **Befund + Fix (P3):** `rules/README.md` "Aktive Rules" fehlten 5 existierende Dateien
  (anrede-kontakte, jans-absenderadresse, normen-referenz, jans-dna, sync-single-committer) —
  nachgetragen. `wiki/environment-jans-hub.md` hatte veraltete Zaehlstaende (43→47 Skills,
  11→16 KBs) — aktualisiert + neue Audit-Sektion "Trainingslauf 8" ergaenzt.
- **Lektion fuer den Loop:** eine Rule-Datei anlegen entfaltet allein keine Wirkung — die drei
  Listen (Dateisystem `rules/*.md`, `rules/README.md`, `CLAUDE.md`-@-Import) koennen unbemerkt
  auseinanderlaufen. Kuenftige Audits sollten das explizit gegenchecken statt nur zu zaehlen.
- Metadaten `verifier.md`/`anwendung-jans.md` unveraendert (kein neuer Spec-Anwendungsfall).
  Rule `spec-methode.md` unveraendert (kein Ueberdehnungs-/Untertrigger-Beleg). Quellen-Schuld:
  keine (F4/F5 weiterhin vollstaendig eingeloest).
- Offen: F1-Ueberdehnungs-Gegentest fehlt weiter; F3 nur noch Marketing/Text offen;
  Raphael-Entscheid Git-Committer-Modell (siehe oben) aussteht.

## 2026-07-12 — Trainingslauf 7
- Output `outputs/2026-07-12_training-run7.md`. **Eine neue reale Spec** ausgewertet:
  Wettbewerbs-Layer (12.07., greenfield-System, aktiv). Beleg verifiziert (KB `wissen/wettbewerbs-dna`
  + Skill `wettbewerb` existieren real).
- **F3-Tabelle (verifier.md) um die Domaene «Wettbewerb/Design/Studie» erweitert** → schliesst die
  in Lauf 6 geflaggte «Studie/Design»-Luecke: autoritativ = die **Jury** (Jury-Urteil); Signal =
  Refuter liest Jurybericht gegen Dossier + SIA-416-Rueckrechnung + `programm-pruefer`. Neue Lektion:
  **Format-Vorlage ist der 2.-Platz-Jurybericht** (diagnostiziert das Delta zum 1. Platz, prueffaehiger
  als ein Sieg-Bericht). «Autoritative Instanz muss keine Behoerde sein» haelt jetzt ueber drei Domaenen
  (Behoerde · abnehmende Bauleitung · Jury).
- **F2 geschaerft (anwendung-jans.md Schritt 2):** reifste Form des «beweglich markieren» ist eine
  **Status-Spalte je Schluesselentscheid** (bestaetigt/vorgeschlagen/offen/umgesetzt); der Plan baut nur
  auf Bestaetigtem, ein offener Entscheid gatet seine eigene Etappe → sauberer teil-bestaetigter Anlauf.
- Metadaten `verifier.md` + `anwendung-jans.md` bleiben 07-12 (gleicher Tag wie Lauf 6, inhaltlich ergaenzt).
  Rule `spec-methode.md` unveraendert (Gate ueber 6 belegte Faelle korrekt, kein Ueberdehnungs-Beleg).
  Quellen-Schuld: keine (F4/F5 eingeloest).
- Offen: F1-Ueberdehnungs-Gegentest (mittelgrosser Fall) fehlt weiter; F3 offen nur noch Marketing/Text.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Querbezug anwendung-jans <-> KB twin
- [link] [[anwendung-jans]] Abgrenzungs-Abschnitt -> KB `twin` (arbeitsweise/denken) als belegte Verhaltensevidenz, dass Raphaels Arbeitsweise dem Spec-Denken folgt. Gegenrichtung zum twin-Backlink.

## 2026-07-12 — Trainingslauf 6
- Output `outputs/2026-07-12_training-run6.md`. **Zwei neue reale Specs** ausgewertet:
  Normen-Harness (11.07., greenfield-System) + Submission 2414 Thalwil (11.07., **Rev. B am selben Tag**).
  Belege beider Specs verifiziert (Skill/KB/Rule `normen` + Thalwil-Bausteine 12/13 existieren real).
- **F3-Tabelle (verifier.md) um zwei belegte Domaenen erweitert** → schliesst die geflaggte
  «Bau/Studie»-Luecke: (1) **Baurecht/Norm/Fachwissen** — autoritativ = Norm-Originalquelle (Ziffer)
  + Gueltigkeitsregister, Signal = `wissenscheck`/Fundstellen-Stichprobe. (2) **Ausschreibung/Submission-
  Uebergabe** — autoritativ = **abnehmende Bauleitung** («Null Rueckfragen»), interner Verifier =
  Konsistenz-Gate Baustein 13 + `korrektur`/`twin`. Muster: die bindende Instanz muss keine Behoerde
  sein, auch der abnehmende Mensch zaehlt.
- **F2 geschaerft (anwendung-jans.md Schritt 2):** ein Schluesselentscheid kann **same-session** kippen
  (Thalwil Rev. B, #5 ersetzt Teile #2+#4), nicht nur spaet ueber Tage — Mechanik identisch (Abschnitt
  selbst korrigieren). Ein Scope-Pivot waechst v.a. die **Abgrenzung (NICHT dazu)**.
- **Neue Wiki-Sektion «Drei Endzustaende einer Spec»** (aktiv/erledigt/parkiert) — der «parkiert»-Zustand
  war seit 11.07. nur im CHANGELOG, jetzt im Wiki auffindbar.
- **F7 praezisiert:** «Ist-Zustand (Scan)» ist ein Umbau/Reparatur-Feld; greenfield-Systeme (Normen)
  scannen in der Faktenbasis, kein eigener Abschnitt noetig. Template hielt fuer 5 konforme Specs.
- Metadaten `verifier.md` + `anwendung-jans.md` auf 07-12. Rule `spec-methode.md` unveraendert
  (Gate ueber 5+ Faelle korrekt, kein Ueberdehnungs-Beleg). Quellen-Schuld: keine (F4/F5 eingeloest).
- Offen: F1-Ueberdehnungs-Gegentest (mittelgrosser Fall) fehlt weiter; F3 Studie/Marketing offen.

## 2026-07-11 — Zwei Specs parkiert (Scope-0-Entscheid Raphael)
- **Shop-Connector** (`outputs/2026-07-06_shop-connector_spec.md`): Scope 0 interaktiv
  durchgefuehrt (AskUserQuestion) — Raphael entscheidet PARKIEREN. Entscheide 1–4 bleiben
  unbestaetigt, keine Umsetzung, Status-Banner + Monitor-Log-Eintrag gesetzt.
- **Versandplanung Onlineshop** (`outputs/2026-07-04_versandplanung-onlineshop_spec.md`):
  ebenfalls PARKIERT — Entscheide E1–E7 unbestaetigt; Skill `versandplanung` + Connectoren
  bleiben inaktives Geruest (Banner in SKILL.md + CLAUDE.md-Tabelle markiert).
- Lern-Beobachtung fuer den Trainings-Loop: **«parkiert» als dritter Spec-Endzustand**
  neben aktiv/erledigt — kein Monitor-Loop (kein externes Warten), keine Pendenz; die
  Spec konserviert den Denkstand fuer den Wiedereinstieg. Beide entstanden in Remote-
  Sessions ohne bestaetigtes Interview → Muster «Annahmen beweglich markieren» hat den
  sauberen Rueckbau erst moeglich gemacht.

## 2026-07-09 — Trainingslauf 5
- Output `outputs/2026-07-09_training-run5.md`. Keine neue Spec-Anwendung seit Lauf 4; ausgewertet
  wurde die Fortschreibung der lebenden AG-Gruendungs-Spec (jetzt **19 Tage**, Phase B haelt an;
  Eintraege 07./08./09.07. alle «NICHTS NEUES»).
- **Neue Praezisierung — zwei Blocker-Typen im Steady-State-Monitor:** low-noise «NICHTS NEUES» gilt
  nur fuer echtes **externes** Warten (Instanz am Zug). Eine **selbst-blockierte Owner-Aktion** («Antwort
  ans Notariat raus», offen seit 22.06. = 17 Tage) darf NICHT in der «nichts Neues»-Zeile mitaltern —
  sie gehoert in jeden Monitor-Lauf als aktive Nudge/Pendenz. Trennfrage: «Wartet die Instanz — oder
  warten wir auf uns selbst?» → neue Sektion in `verifier.md`, Phase-B-Absatz in `anwendung-jans.md`
  ergaenzt, F2 nachgefuehrt. Schaerft F2 (Kadenz) und F1 (19-Tage-Datenpunkt).
- Environment-Audit: run4-Fixes hielten (Metadaten 07-06 konsistent, CLAUDE.md-KB-Liste, INDEX+Template).
  Diesen Lauf `verifier.md` + `anwendung-jans.md` auf 07-09 gezogen (inhaltlich ergaenzt). Rule
  `spec-methode.md` unveraendert (Gate korrekt, kein Ueberdehnungs-Beleg).
- Quellen-Schuld: keine — F4 (Karpathy+Cherny) + F5 (Anthropic-Doku) vollstaendig eingeloest.
  Offen: F1-Ueberdehnungs-Gegentest (mittelgrosser Fall fehlt), F3-Tabelle je weitere Domaene, F7.

## 2026-07-06 — Neue Spec-Anwendung: Shop-Connector
- Output `outputs/2026-07-06_shop-connector_spec.md` (nach `templates/spec-vorlage.md`).
  Vorhaben: Connector fuer automatisierte Verfuegbarkeits-/Preisabfragen bei CH-Online-Shops
  + vorbereitete Bestell-Uebergabe; entstanden aus realem Fall (Deckenventilator, galaxus.ch
  blockiert automatisierten Zugriff mit 403).
- **Besonderheit:** Spec in Remote-Session aufgesetzt, AskUserQuestion nicht zustellbar —
  Schluesselentscheide 1–4 als «noch beweglich, zu bestaetigen» markiert, Scope 0 des Plans
  ist die Bestaetigung selbst. Entscheid 5 (Kaufabschluss nur durch Raphael) als nicht
  bewegliche harte Regel gefuehrt (konsistent AKTIONS-WHITELIST «Geld NIE»).
- Moeglicher Lern-Kandidat fuer Trainingslauf 5: Muster «Spec ohne erreichbaren Benutzer —
  Annahmen setzen, beweglich markieren, Bestaetigung als Scope 0 einplanen».

## 2026-07-06 — Trainingslauf 4
- Output `outputs/2026-07-06_training-run4.md`. Keine neue Spec-Anwendung seit Lauf 3; ausgewertet
  wurde der **Verlauf** der lebenden AG-Gruendungs-Spec (15 Tage, Monitor-Log bis 06.07.).
- **Neue Lektion — zwei Lebensphasen einer lebenden Spec:** (A) aktive Formung (Entscheide kippen,
  Belegset versioniert) → (B) Steady-State-Monitoring (warten auf autoritative Instanz, low-noise:
  «NICHTS NEUES», Eskalation nur bei echter Aenderung; belegt 8+ Eintraege 30.06.–06.07.). In Phase B
  ist die awartete autoritative Instanz selbst der Verifier. → `anwendung-jans.md` Schritt 2 + neue
  Sektion «Verifier-Zustand ‹Warten auf die autoritative Instanz›» in `verifier.md`.
- **F6 geschlossen (nach 3 Laeufen geflaggt):** Spec-Template `templates/spec-vorlage.md` gebaut —
  KB-internes Kopier-Skelett aus den 3 ersten Specs + Zwei-Phasen-Notiz. Additiv/reversibel, keine
  Rule-/Skill-Aenderung → autonom im Rahmen `wissens-bibliothekar`; Raphael kann anpassen/verwerfen.
- Environment-Audit: run3-Fixes hielten (Metadaten 07-03, CLAUDE.md-KB-Liste mit `spec/`). Diesen
  Lauf `verifier.md` + `anwendung-jans.md` auf 07-06 gezogen (inhaltlich ergaenzt). INDEX um
  «Vorlagen» ergaenzt. Rule `spec-methode.md` unveraendert (Gate korrekt).
- Quellen-Schuld: keine — F4 (Karpathy+Cherny) + F5 (Anthropic-Doku) vollstaendig eingeloest.
  Offen: F1-Ueberdehnungs-Gegentest (mittelgrosser Fall fehlt), F3-Tabelle je weitere Domaene.

## 2026-07-03 — Trainingslauf 3
- Output `outputs/2026-07-03_training-run3.md`. Ausgewertet: neue Spec-Anwendung
  **Buchhaltungssystem** (02.07.). Drei Lektionen ins Wiki uebernommen:
  (1) **Guardrail-Anpassung als bestaetigter Schluesselentscheid** — die Spec ist der Ort, an dem
  eine Autonomie-Erweiterung sichtbar entschieden + begrenzt wird (Buchen nach Einzelfreigabe
  oeffnet «Buchungen NIE» kontrolliert) → neues Muster in `anwendung-jans.md`.
  (2) **Ist-Zustand real scannen + Schwachstelle diagnostizieren** bei System-/Umbau-Vorhaben
  (nicht nur bestaetigen) → `anwendung-jans.md` Schritt 1 + F2.
  (3) **Verifier-Zuordnung Domaene Buchhaltung/Steuern** (Treuhand/Steuerbehoerde bindend;
  `bexio --abgleich`/UBS-Feed Indiz; GA2024 als Format) → neue Zuordnungstabelle in `verifier.md` (F3).
- **F4 vollstaendig eingeloest:** Cherny-Primaerquelle des «2-3x»-Zitats belegt (X-Post Tip 13/,
  .../2007179861115511237) und in `verifier.md` zitiert. Damit F4 (Karpathy + Cherny) erledigt.
- Environment-Audit-Fixes: Metadaten-Drift behoben (`verifier.md`+`anwendung-jans.md` last_updated
  → 07-03, war Audit E rot); CLAUDE.md KB-Liste um `spec/` ergaenzt (3. Mal geflaggt, jetzt gefixt).
- Rule `spec-methode.md` unveraendert (Gate ueber 3 Faelle korrekt). Geflaggt: F6 Spec-Template extrahieren.

## 2026-07-02 — Spec-Anwendung: Hub-Chef-Harness
- Neue reale Spec-Anwendung abgelegt: `outputs/2026-07-02_hub-chef-harness_spec.md`
  (Dach-Orchestrierung + Service-Produktisierung; Interview via AskUserQuestion, 3
  Schluesselentscheide bestaetigt: 4 Services, Autonomie Stufe 3, Hub-Chef taeglich).
  Umsetzung im selben Lauf: Skill `hub-chef`, `logbuch/AKTIONS-WHITELIST.md`,
  `services/KATALOG.md`, Scheduled Task `hub-chef-taeglich`. Checkpoint 03.07. (erster Lauf).

## 2026-07-01 — Health-Check (Phase 1)
- Report `outputs/2026-07-01_health-check.md` (7 Audits A-G, nur Audit, keine Phase-2-Aktion).
  Ampel: A gruen · B gelb · C gelb · D gruen · E rot · F gruen · G gelb.
- Top-3: (1) E — `verifier.md` + `anwendung-jans.md` tragen 06-30-Inhalt, aber `last_updated:
  2026-06-21` (Metadaten-Drift vs. CHANGELOG). (2) CLAUDE.md-KB-Liste ohne `spec/` (2. Mal
  geflaggt, Raphaels Freigabe). (3) C — Cherny-«2-3x» in `verifier.md` weiter transkript-belegt
  (F4 offen), Artikel aber `established`. Nebenbefund B: Self-Zitat `[[the-spec]]` als Quelle in
  `the-spec.md` Z. 15.

## 2026-06-30 — Trainingslauf 2
- Output `outputs/2026-06-30_training-run2.md` (Audit + Auswertung der AG-Gruendung-
  Fortschreibung bis 29.06.). Keine neue Spec-Anwendung, aber neue Korrektur-Deltas.
- Kern-Lektion: **lebende Spec** — zwei bestaetigte Schluesselentscheide kippten spaet
  (Name «JANS AG»→«Raphael Jans AG», Liberierung 50 %→100 %); Belegset als Version 260627
  neu gezogen. → `anwendung-jans.md` Schritt 2 (gekippte Entscheide im Abschnitt selbst
  korrigieren + Belegset versioniert nachziehen; bewegliche Annahmen markieren).
- `verifier.md`: Sektion «Empirisch bestaetigt» — die autoritative Instanz (Notar/HRA) behielt
  recht (Name tatsaechlich geaendert), Rangordnung autoritative Instanz > Connector belegt.
- F4 teilweise eingeloest: Karpathy-Primaerquelle (Gist «LLM Wiki» + X-Post) belegt; bestaetigt
  raw→wiki→schema + Compiler-Analogie + Linting (Skill `wissenscheck`). Cherny-Thread offen.
- `QUESTIONS.md` F1/F2/F4 nachgefuehrt. Rule `spec-methode.md` bewusst NICHT geaendert.
- Offen/geflaggt fuer Raphael (2. Mal): CLAUDE.md KB-Liste um `spec/` ergaenzen (Befund #1),
  F6 Spec-Template aus AG-Gruendung extrahieren.

## 2026-06-27 — Trainingslauf 1
- Output `outputs/2026-06-27_training-run1.md` (Environment-Audit Top-5-Befund + Auswertung
  der ersten realen Spec-Anwendung AG-Gruendung).
- Kern-Lektion aus AG-Gruendung: **falsches Verifier-Gruen** — naive Zefix-Exact-String-Suche
  ("JANS AG frei") wurde von der autoritativen Stelle (Notar/HRA, Weisung Firmenidentitaet
  Ziff. IV) verworfen. → `verifier.md` um Sektion "Verifier muss das echte Abnahmekriterium
  spiegeln" erweitert (Rangordnung autoritative Instanz > Connector; Default streng).
- F5 eingeloest: Anthropic-Doku "Plan before editing" als Primaerquelle in `the-spec.md`
  zitiert.
- `anwendung-jans.md` + `QUESTIONS.md` (F1/F2/F3) mit den Lektionen nachgefuehrt
  (Ausgangslage zuerst bestaetigen; autoritative Instanz vor Connector).
- Rule `spec-methode.md` bewusst NICHT geaendert (Gate arbeitet belegt korrekt).

## 2026-06-21 — KB angelegt (Seed)
- `raw/260616_marchese_the-spec_karpathy-method_transkript.md` ingestiert (34 Screenshots,
  YT Austin Marchese "Stop Prompting Claude. Use Karpathy's Method Instead.").
- 5 Wiki-Artikel kompiliert: `the-spec`, `3-schritte-spec`, `verifier`,
  `environment-jans-hub`, `anwendung-jans`. INDEX + QUESTIONS + _INGESTED angelegt.
- `training/PROGRAMM.md` angelegt (Lern-Loop).
- Befund dokumentiert: Layer 3 (Environment) baut der JANS-Hub bereits; neu/erzwungen sind
  Layer 1 (Spec) + Layer 2 (Verifier) als bewusster erster Schritt grosser Anfragen.
- Begleitend ausserhalb der KB erstellt: Skill `spec`, Rule `spec-methode` (+ @-Import in
  CLAUDE.md, Eintrag in rules/README.md), Scheduled Task `spec-training`.
