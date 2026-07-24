# QUESTIONS — offene Fragen / Wissenslücken KB Spec

Offene Punkte, die der Trainings-Loop und reale Anwendungen klären sollen.

## Methodik
- F1: Ab welcher Aufgabengrösse lohnt der Spec-Overhead wirklich? Schwelle anhand realer
  Anwendungen kalibrieren (Gefahr: Gate nervt bei Mittelgrossem). → aus `outputs/` lernen.
  - Stand 2026-06-27: 1 belegte Anwendung (AG-Gründung) — Gate hat korrekt+nützlich
    getriggert (hoher Einsatz: Recht/Geld/Reputation, ganzes Belegset). Kein Beleg für
    Überdehnung. Schwelle vorerst unverändert lassen; mehr Fälle sammeln.
  - Stand 2026-06-30: derselbe Fall lief über ~10 Tage als **lebende Spec** (Monitor-Log,
    zwei spät gekippte Schlüsselentscheide). Die Spec blieb durchgehend nützlich (hält
    Ziel/Abgrenzung/Kriterien stabil, während Details kippen) — stärkstes Argument für das
    Gate bei mehrwöchigen, hoch-einsatzigen Vorhaben. Schwelle weiter unverändert.
  - Stand 2026-07-03: jetzt **3 belegte Anwendungen** (AG-Gründung, Hub-Chef-Harness 02.07.,
    Buchhaltungssystem 02.07.). Alle drei waren hoch-einsatzig + mehr-Scope, das Gate triggerte
    jeweils korrekt+nützlich; weiterhin **kein** Beleg für Überdehnung (kein genervter
    Mittelfall in `outputs/`). Alle drei teilen dasselbe Format (AskUserQuestion für
    Schlüsselentscheide + enge Scopes/Checkpoints) → das Format kristallisiert (→ F6/F7).
    Schwelle unverändert.
  - Stand 2026-07-06: AG-Gründung läuft jetzt **15 Tage als lebende Spec** (21.06.–06.07.) und
    zeigt zwei Phasen — aktive Formung (Entscheide kippen) → Steady-State-Monitoring (warten auf
    autoritative Instanz, low-noise). Stärkster F1-Datenpunkt bisher: die Spec bleibt auch in der
    langen Wartephase nützlich (hält Ziel/kritischen Pfad stabil, unterdrückt Lärm). Weiterhin
    **kein mittelgrosser Gegentest** in `outputs/` → Überdehnungs-Frage bleibt offen, Schwelle unverändert.
  - Stand 2026-07-12: **zwei neue reale Specs** (Normen-Harness 11.07., Submission 2414 Thalwil 11.07.).
    Beide hoch-einsatzig + mehr-Scope, das Gate triggerte je korrekt+nützlich → weiterhin **kein**
    Überdehnungs-Beleg (kein genervter Mittelfall). Neu ist der dritte Endzustand **«parkiert»**
    (Shop-Connector/Versandplanung 11.07., via CHANGELOG): eine korrekt getriggerte Spec, die Scope 0
    bewusst NICHT weiterbaut — das ist **kein** Gate-Fehltreffer, sondern die Spec, die *vor* dem Bau
    das Nicht-Bauen entscheidet (Argument, dass das Gate auch bei späterem «doch nicht» nützt).
    Mittelgrosser Überdehnungs-Gegentest fehlt weiter.
  - Stand 2026-07-12 (Lauf 7): **sechste reale Spec** (Wettbewerbs-Layer 12.07.) — wieder hoch-einsatzig
    (Reputation, ganze Produktionskette) + mehr-Scope, Gate korrekt+nützlich. Weiterhin **kein**
    Überdehnungs-Beleg. Neu ist ein Datenpunkt für **teil-bestätigten Anlauf** (F2): die Spec baut nur
    auf bestätigten Entscheiden (E1/E2/E6), während E3–E5 «offen, vor Bau bestätigen» bleiben und je
    eine spätere Etappe gaten — das Gate erlaubt sauberes Starten, ohne alle Entscheide vorab zu erzwingen.
  - Stand 2026-07-13 (Lauf 10): **keine neue reale Spec** seit Lauf 7 (Wettbewerbs-Layer 12.07.).
    Läufe 8–10 waren Environment-/Methodik-Läufe ohne neuen Anwendungsfall → F1-Überdehnungs-
    Gegentest (mittelgrosser, genervter Mittelfall) weiterhin **nicht** in `outputs/`, Schwelle
    unverändert. Verbrauchter «nächstes»-Punkt aus Lauf 9: der Twin-Fidelity-Kausalverdacht
    (Import-Fix → Fidelity 94) ist **widerlegt** (siehe [[verifier]], «Mass validiert nur, wenn der
    Mess-Prozess die Änderung konsumiert») — kein Beleg, dass der Lauf-8-Fix die Metrik hob.
  - Stand 2026-07-09: **19 Tage** lebende Spec (21.06.–09.07.), Phase B hält an (Einträge 07./08./
    09.07. alle «NICHTS NEUES»). Kein neues Korrektur-Delta, aber ein Präzisierungs-Datenpunkt für
    die Monitor-Kadenz (→ F2): der Steady-State-Monitor hat ~10 Tage eine **selbst-blockierte
    Owner-Aktion** («Antwort ans Notariat raus», offen seit 22.06.) unter derselben low-noise-Zeile
    mitlaufen lassen wie das echte externe Warten — die erledigbare Aufgabe alterte still. Schwelle
    unverändert; Überdehnungs-Gegentest fehlt weiter.
  - Stand 2026-07-15 (Lauf 20): **siebter realer Gate-Trigger** (SYN-02 typologischer Entwurfsprozess,
    Scheduled Task `syn02-spec-anstoss`) — hoch-einsatzig (ganze Entwurfs-/Wettbewerbs-Produktionskette,
    Geschäftsmodell GM2/GM3) + mehr-Scope (9 Entscheide E1–E9) + greenfield. Gate korrekt+nützlich,
    weiterhin **kein** Überdehnungs-Beleg (kein genervter Mittelfall). Besonderheit: dieser Trigger
    erzeugte **nicht** eine entschiedene Spec, sondern eine **Interview-Vorbereitung** (autonomer Lauf,
    Benutzer abwesend → Schritt 1 vorbereiten statt Entscheide erfinden; → F2 + [[anwendung-jans]]
    Schritt 1). Mittelgrosser Überdehnungs-Gegentest fehlt weiter.
  - Korrektur 2026-07-17 (Lauf 21) zur Lauf-20-Zuordnung: der SYN-02-Trigger war **kein autonomer
    Scheduled-Task-Lauf**. Primärquelle Task-Registry: `syn02-spec-anstoss` hat **nie gefeuert**
    (kein `lastRunAt`, `fireAt`/`nextRunAt` = 20.07.2026 10:15 UTC, one-time, enabled). Die
    Interview-Vorbereitung entstand am 15.07. 00:57–00:59, wenige Minuten nachdem der Task
    **angelegt** wurde (00:52) — also inline in einer laufenden Session, die den Task-Prompt gleich
    selbst ausführte; das Artefakt schreibt sich die Autorschaft «Scheduled Task» fälschlich selbst
    zu, und `koordination/CHANGELOG.md` hat diese Selbstzuschreibung übernommen. Der Gate-Trigger
    zählt als realer Trigger weiter (siebter, korrekt+nützlich) — nur die Ursache-Erzählung
    «autonom, Benutzer abwesend» ist unbelegt. Lehre (Kausal-Geschwister von Lauf 10/12): **ein
    Artefakt ist keine Quelle für seine eigene Herkunft** — wer den Lauf auslöste, steht in der
    Task-Registry/Commit-Historie, nicht im Kopf des erzeugten Dokuments.
- F2: Wie kurz darf das Ziel-Interview sein, damit es hilft statt bremst? Optimal-Länge je
  Vorhabenstyp (Studie / Dokument / Mail / Strategie) sammeln.
  - Lektion AG-Gründung: das Interview muss die **Ausgangslage** explizit fixieren. Hier
    wurde anfangs fälschlich eine bestehende AG angenommen (real: Einzelfirma) — erst die
    Bestätigungsfrage korrigierte das. → bei Gründung/Recht/Umbau zuerst den IST-Zustand
    als Schlüsselentscheid bestätigen, bevor das Ziel formuliert wird.
  - Lektion 29.06.: bestätigte Schlüsselentscheide können **spät noch kippen** (Name,
    Liberierung). Das Interview soll erfahrungsgemäss bewegliche Annahmen (Name/Kapital/
    Termin) als «noch beweglich» markieren; kippt eine, wird der Schlüsselentscheide-
    Abschnitt selbst korrigiert und das Belegset versioniert nachgezogen (→ [[anwendung-jans]]
    Schritt 2, lebende Spec).
  - Lektion Buchhaltungssystem 02.07.: bei **System-/Prozess-/Umbau-Vorhaben** genügt das
    blosse Bestätigen der Ausgangslage nicht — der IST-Zustand wird **real gescannt und die
    Schwachstelle diagnostiziert** (hier: OneDrive-Archiv 2022→2026, dokumentierte «Erosion» der
    manuellen Ordner-Kontierung). Diese Diagnose ist die Begründung des Ziels und gehört als
    eigener Abschnitt «Ist-Zustand (Scan)» vor die Schlüsselentscheide (→ [[anwendung-jans]]
    Schritt 1).
  - Lektion 06.07. (lebende Spec, Steady-State): läuft ein Vorhaben in die Wartephase auf eine
    autoritative Instanz, ist die richtige «Interview»-Kadenz ein **low-noise Monitor-Loop** —
    periodisch prüfen, «NICHTS NEUES» ohne Aktion melden, nur bei echter Änderung eskalieren
    (belegt AG-Gründung, 8+ Einträge 30.06.–06.07.). → [[verifier]] «Warten auf die autoritative
    Instanz» + [[anwendung-jans]] Schritt 2 (zwei Phasen der lebenden Spec).
  - Präzisierung 09.07. (zwei Blocker-Typen): die low-noise-Kadenz gilt nur für echtes **externes**
    Warten (Instanz am Zug). Hängt ein Punkt am **eigenen** Handeln (selbst-blockierte Owner-Aktion),
    muss er in jedem Monitor-Lauf als aktive Nudge/Pendenz erscheinen, nicht unter «nichts Neues» —
    sonst altert er still (belegt: Notariats-Antwort 17 Tage in der «nichts Neues»-Zeile).
    Trennfrage: «Wartet die Instanz — oder warten wir auf uns selbst?» → [[verifier]] «Zwei Blocker-Typen».
  - Präzisierung 12.07. (Kippen kann same-session sein): ein Schlüsselentscheid kippt nicht nur
    «spät über Tage» (AG-Gründung), sondern auch **gleich in derselben Session**, sobald der Scope
    besser verstanden ist (Submission 2414 Thalwil: **Rev. B am selben Tag**, #5 ersetzt Teile von #2+#4).
    Interview-Konsequenz: bei mehrteiligen Vorhaben von Anfang an damit rechnen, dass ein früh
    bestätigter Entscheid im gleichen Lauf noch fällt; die Korrektur landet im Schlüsselentscheide-
    Abschnitt + trägt sich in die **Abgrenzung** (die beim Scope-Schwenk am stärksten wächst). → [[anwendung-jans]] Schritt 2.
  - Präzisierung 12.07. (Lauf 7, Status-Spalte): die reifste Ausprägung des «beweglich markieren» ist
    eine **Status-Spalte je Schlüsselentscheid** (bestätigt / vorgeschlagen / offen / umgesetzt) direkt
    in der Entscheide-Tabelle statt eines separaten «Annahmen»-Abschnitts (Wettbewerbs-Layer 12.07.). Ein
    offener Entscheid gatet seine eigene Etappe → teil-bestätigter, ungefährlicher Anlauf. → [[anwendung-jans]] Schritt 2.
  - Präzisierung 15.07. (Lauf 20, Interview-Vorbereitung als eigener Deliverable-Typ): der bisher
    implizite «zuerst die Faktenbasis ziehen»-Schritt bekommt bei einem **autonomen** Gate-Trigger
    (Benutzer abwesend) eine eigene, belegte Form — die **Interview-Vorbereitung** `..._spec-interview.md`
    (SYN-02, `syn02-spec-anstoss`): je Schlüsselfrage steht (a) die vorgefundene **Faktenlage**
    (Register/Schema/Generator gescannt, Spannungen zu bestehenden Rules 260624/260627/260627b benannt)
    und (b) ein **Default-Vorschlag**, damit die Antwort im späteren Interview leichtfällt und nur
    wirklich Offenes gefragt wird. Wichtig für die Interview-**Länge**: die teure Recherche wandert
    aus dem Live-Interview **vor** das Interview — das Gespräch selbst wird kürzer, weil je Frage
    schon eine begründete Voreinstellung vorliegt (E1–E9 als «bestätigen/schärfen» statt «von null
    erarbeiten»). Der autonome Lauf darf **nicht** die Entscheide selbst treffen; «NICHT die Spec /
    kein Bau vor bestätigter Spec» ist die harte Grenze. → [[anwendung-jans]] Schritt 1.
  - Präzisierung 17.07. (Lauf 21) zur Auslöse-Bedingung: der belegte Grund für «Vorbereitung statt
    Spec» ist nicht «Benutzer abwesend» (siehe F1-Korrektur), sondern eine **terminierte Freigabe** —
    `SYNERGIE-REGISTER` führt SYN-02 als «freigegeben 15.07.2026 — Spec-Start nach Limit-Reset (ab
    20.07.2026, Reminder-Task gesetzt)». Die Vorbereitung überbrückt also die Wartezeit zwischen
    Gate-Trigger und dem terminierten Interview-Fenster. Verallgemeinert: die Interview-Vorbereitung
    ist der richtige Deliverable, wann immer der Trigger **jetzt** fällt, das Interview aber **später**
    stattfindet (Benutzer weg ODER Start bewusst terminiert). → [[anwendung-jans]] Schritt 1 (17.07. korrigiert).
  - Regression 13.07. (Lauf 11): die Lauf-9-Lektion «selbst-blockierte Owner-Aktion als aktive Nudge,
    nie unter nichts Neues» hält **nicht von selbst**. Gegenprüfung 4 Tage später am selben Fall
    (AG-Gründung/Notariat): der `ag-gruendung-monitor` hat seit 10.07. **keinen Eintrag mehr** geschrieben,
    und der tägliche `logbuch-radar` hat die Zeile in 4 Briefings in Folge **gar nicht mehr erwähnt** —
    obwohl `fristen.md` sie unverändert «offen»/«hoch» führt (16 Tage alt). Schlechter als der
    ursprüngliche Befund (dort wenigstens noch sichtbar unter «nichts Neues»). Neue Präzisierung: eine
    Monitor-Regel braucht eine **wiederkehrende Reue-Prüfung**, nicht nur einen einmaligen Beleg, dass sie
    griff. → [[verifier]] «Eine Monitor-Lektion hält nicht von selbst». Ausserhalb des KB-Mandats: an
    Raphael/Skill `logbuch` geflaggt, nicht autonom repariert.
  - Bestätigung 13.07. (Lauf 12): die Reue-Prüfung selbst wiederholt, diesmal unabhängig gegen die
    Primärquellen geprüft (nicht Lauf 11 geglaubt): Monitor-Log schweigt weiter seit 10.07. (0 Einträge
    11.–13.07.), `logbuch`-Briefings 10.–13.07. erwähnen die AG-Gründung weiter **nicht** (letzte Nennung
    09.07.), `fristen.md` führt sie unverändert «offen»/«hoch» (16 Tage). Lauf 11s Prognose («taucht im
    nächsten Radar wieder auf») **falsifiziert**. Neue Lehre: **ein Flag ist keine Reparatur** — eine nur
    im Wiki/an einen Menschen gerichtete Notiz remediert nichts, solange kein Prozess das Flag konsumiert
    (Kausal-Zwilling zu Lauf 10). → [[verifier]] «ein Flag ist keine Reparatur». Weiter an Raphael/`logbuch`
    zu eskalieren, mit Zusatz «Dokumentation nach 3 Tagen wirkungslos».
  - Präzisierung 14.07. (Lauf 14): Git-Diff von `fristen.md` (Commit-Historie, nicht nur Inhalt) zeigt,
    dass der Monitor am **13.07. NACH Lauf 12 (15:22) und Lauf 13 (20:05)** doch noch einen Eintrag
    schrieb («Monitor 13.07.: … Stand unverändert», zwischen den nas-selfcommits 15:45 und 21:00). Lauf
    12s "hält an, nicht selbst geheilt" war für den Prüfzeitpunkt korrekt, aber keine Aussage für den
    Rest des Tages. Lehre: **eine "hält an"-Diagnose hat ein Ablaufdatum** — Reue-Prüfungen müssen auch
    fragen, ob sich seit dem letzten Check-Zeitpunkt **am selben Tag** etwas verändert hat, nicht nur den
    alten Befund wiederholen. Die Kernlehre "ein Flag ist keine Reparatur" bleibt bestehen (keine belegte
    Kausalität KB-Flag → Wiederaufnahme); nur die Dauerhaftigkeit der Stille war überschätzt. →
    [[verifier]] Update-Absatz.
  - Auflösung 15.07. (Lauf 19): der Monitor-Schweige-Faden (Läufe 11–14) ist **geheilt** — der
    `ag-gruendung-monitor` schreibt wieder täglich (Eintrag 14.07. 07:47 in `fristen.md`, «Stand
    unverändert» zu UBS/Notariat; um 00:54 des 15.07. hat der Tagesmonitor erwartungsgemäss noch
    nicht gelaufen). Damit ist die in Lauf 14 als «Dauerhaftigkeit der Stille überschätzt» korrigierte
    Diagnose endgültig bestätigt: die Stille war ein **temporäres** Aussetzen (10.–13.07.), keine
    permanente Regression. Die Kernlehre «ein Flag ist keine Reparatur» bleibt unberührt (die
    Wiederaufnahme ist NICHT belegt kausal auf die KB-Eskalation zurückzuführen — der Monitor lief
    schlicht wieder an). Der Faden wird hiermit als **erledigt** geschlossen; kein weiterer
    Wiederholungs-Sweep nötig, solange der tägliche Eintrag läuft. Die inhaltliche AG-Gründung
    selbst bleibt in `logbuch`-Hand (ausserhalb KB-Mandat): UBS-Formular/Kapitalbescheinigung + Notariats-
    Antwort weiter ausstehend.
  - Bestätigung + neuer Fehlermodus 18.07. (Lauf 22): die Lauf-19-Schliessung **hält** — der Monitor
    schreibt weiter täglich (17.07.-Eintrag real in `fristen.md`). Derselbe 17.07.-Lauf deckte aber einen
    **anderen** Fehler auf, der 15./16.07. still zugeschlagen hatte: der M365-Connector (angemeldet als rj@)
    hat auf **mail@** keinen Delegate-Zugriff und liefert dort **still eine LEERE Antwort statt eines
    Fehlers** — der ganze UBS-Strang liegt in mail@, also schlossen die Läufe fälschlich «kein UBS-
    Absender» (eine Kapitalbescheinigung wäre nicht erkannt worden). Gegenprobe via Apple Mail: inhaltlich
    nichts verpasst, Task auf Apple Mail als Primärkanal umgestellt (`logbuch`-Betrieb). Die **Verifier-
    Lehre** («ein leeres Signal ist kein Beweis für Leere — Zugriff vor Inhalt prüfen, Positivkontrolle +
    zweiter Kanal») steht in [[verifier]]. Kein Gate-/Rule-Bezug — reine Verifier-Disziplin.
  - Widerruf 19.07. (Lauf 23) zur Lauf-22-Schliessung: die im 17.07.-Eintrag gemeldete Behebung
    («Task-Definition auf Apple Mail als Primärkanal für mail@ umgestellt») ist **nicht eingetreten**.
    Primärquelle Task-Registry: einzige Definition ist `~/.claude/scheduled-tasks/ag-gruendung-monitor/
    SKILL.md`, mtime **21.06.2026 14:49** — seit Erstellung nie geändert; Schritt 1 nennt weiterhin
    «mail@ **via M365/Outlook-Suche**; **falls verfügbar zusätzlich** Apple Mail». Der blinde Fleck
    besteht also fort; der nächste Lauf (Mo 20.07. 07:46, Cron Mo–Fr) sucht mail@ wieder über den
    Kanal ohne Delegate-Zugriff. Neue Lehre (Verschärfung von Lauf 12): **eine als «behoben» gemeldete
    Reparatur schliesst den Faden aktiv und ist gefährlicher als ein offenes Flag** — Lauf 22 hat die
    Meldung geglaubt und aufgehört zu prüfen. Abnahme muss am verhaltenssteuernden Artefakt erfolgen
    (mtime/Commit/Diff), nicht am Text, der die Änderung behauptet. → [[verifier]] «Eine als behoben
    gemeldete Reparatur ist selbst ein Verifier-Signal». Fix bleibt `logbuch`-Betrieb (ausserhalb
    KB-Mandat) → an Raphael eskaliert, nicht autonom geändert.
  - Fehlalarm vermieden 19.07. (Lauf 23): die Zeile trug am 19.07. weiterhin «Monitor 17.07.», was nach
    einer Wiederholung der Schweige-Regression aussah. Registry: Cron **Mo–Fr**, `lastRunAt` = Fr 17.07.
    — der 18./19.07. sind Wochenende, die Stille ist planmässig. Ergänzung zur Reue-Prüfungs-Disziplin:
    **vor jeder Schweige-Diagnose den Fahrplan prüfen**. → [[verifier]] (zweiter Befund derselben Sektion).
  - Auswertung 21.07. (Lauf 24, gemessenes Vorbereitung→Interview-Delta): die **achte reale Spec**
    (SYN-02, bestätigt 20.07.) ist der erste Fall, in dem eine **Interview-Vorbereitung** (15.07.,
    Deliverable-Typ aus Lauf 20) tatsächlich zu einem geführten Interview führte — damit ist ihre
    Trefferquote **messbar**: von neun Default-Vorschlägen hielten **sieben**, **zwei** wurden
    überstimmt (E2 GM2→GM3, E3 drei Gates→nur Gate c). Die zwei Overrides trafen genau die
    **strategischen Geschäftsmodell-Entscheide** (Kanal-Priorität, Automatisierungsgrad); **alle
    technischen Folgeentscheide** hielten. Der E2-Override **kaskadierte** (→ E5 strenger: voller
    `programm-pruefer` im MVP), was die Vorbereitung korrekt vorhergesehen hatte (E5 als an E2 gekoppelt
    geflaggt). Konsequenz für die Interview-Länge (Kern von F2): das Live-Gespräch schrumpfte auf
    **2 echte Entscheidungen + 7 Bestätigungen** — erster gemessener Beleg, dass die Vorbereitung die
    teure Recherche vor das Interview zieht. Nachschärfung in [[anwendung-jans]] Schritt 1: technische
    Folgefragen mit festem Default, strategische Richtungsentscheide bewusst offen, Kopplungen mitflaggen.
  - Reue-Check 21.07. (Lauf 24) zum Lauf-23-P1 (mail@-Blindstelle des `ag-gruendung-monitor`): der Fix
    ist **nicht gelandet**. `~/.claude/scheduled-tasks/ag-gruendung-monitor/SKILL.md` trägt unverändert
    mtime **21.06.2026 14:49**; Schritt 1 sucht mail@ weiter «via M365/Outlook-Suche; falls verfügbar
    zusätzlich Apple Mail». Zwei Tage nach der Eskalation (19.07.) ist das verhaltenssteuernde Artefakt
    unberührt. Das ist die Lauf-12-Lehre («ein Flag ist keine Reparatur») **auf die Eskalation selbst
    angewandt**: auch eine an einen Menschen gerichtete P1-Notiz remediert nichts, solange kein Prozess
    (hier: Raphael) sie konsumiert. Bleibt `logbuch`-Betrieb ausserhalb KB-Mandat — erneut geflaggt, nicht
    autonom geändert; die Reue-Prüfungs-Disziplin (Abnahme am Artefakt, nicht am Meldetext) hat den
    Schein-Abschluss verhindert.
  - Auflösung 22.07. (Lauf 25, Verifikationslauf): der über die Läufe 22–24 verfolgte P1 (mail@-
    Blindstelle des `ag-gruendung-monitor`) ist **gelandet** — am Artefakt verifiziert. `SKILL.md` trägt
    jetzt mtime **21.07.2026 07:49** (zuvor vier Läufe lang 21.06.2026 14:49); Schritt 1 nennt mail@ jetzt
    «**IMMER via Apple Mail … PRIMÄRKANAL**; niemals allein M365 für mail@ vertrauen», mit Begründung
    «Blind-Fleck, bestätigt 19.07.2026». Der blinde Fleck ist geschlossen, der Faden geschlossen. Zwei
    Nebenbefunde: (a) **Timing** — Lauf 24 (~04:21) meldete korrekt «nicht gelandet», der Fix kam ~3.5 h
    später am selben Tag (07:49); ein «nicht gelandet» hat wie eine «hält-an»-Diagnose ein Ablaufdatum
    (Lauf-14-Lehre in Gegenrichtung). (b) **Kausalität offen** — dass das Flag nach der Eskalation
    konsumiert wurde, belegt nicht, dass die spec-KB-Eskalation es auslöste (Disziplin Lauf 10/12/21:
    ein Artefakt ist keine Quelle für seine eigene Herkunft); registriert wird die Landung als Faktum.
    → [[verifier]] «Auflösung (Lauf 25)».
  - Hält-Check 23.07. (Lauf 26, Verifikationslauf): die Lauf-25-Landung **hält** — `ag-gruendung-monitor/
    SKILL.md` trägt unverändert mtime **21.07.2026 07:49**, Schritt 1 nennt mail@ weiter «IMMER via
    Apple Mail … PRIMÄRKANAL», und der Monitor **nutzt** den Kanal produktiv (fristen.md führt einen
    «Monitor 22.07.2026 (neue Methodik, mail@ via Apple Mail …): weiterhin NICHTS NEUES»-Eintrag). Damit
    ist die Lauf-25-Nebenlehre «ein "gelandet" hat wie "hält an" ein Ablaufdatum» einmal in Gegenrichtung
    quittiert: einen Tag später geprüft, hält es. Kein weiterer P1-Sweep nötig, solange der tägliche
    Monitor-Eintrag läuft (Faden bleibt geschlossen). Dies ist der einzige substanzielle Fund des Laufs
    (kein neuer Spec, Gate ohne Drift) — legitimes Verifikationslauf-Ergebnis.
- F3: Welcher zweite Kritiker ist je Domäne der beste Verifier (korrektur vs. twin vs.
  /code-review vs. Connector)? Zuordnungstabelle aufbauen.
  - Erster Eintrag (Recht/Behörde, belegt AG-Gründung): die **autoritative Instanz**
    (Notar/HRA) ist der massgebliche Verifier; Connector (Zefix) nur Indiz. Connector-Grün
    ≠ bestanden, solange die Stelle nicht bestätigt → siehe [[verifier]] "falsches Grün".
  - Zweiter Eintrag (Buchhaltung/Steuern, belegt Buchhaltungssystem 02.07.): autoritative
    Instanz = **Treuhand-Prüfstunde + Steuerbehörde ZH**; externes Signal = `bexio --abgleich`
    (Bank↔Buchung, kreuzt zwei unabhängige Realitäten), UBS-Feed, amtliche Bescheinigungen;
    Format-Vorlage = Goldstandard GA2024 + Beilageverzeichnis. → **Zuordnungstabelle jetzt in
    [[verifier]]** («Verifier-Zuordnung je Domäne»), wächst je Anwendung.
  - Dritter + vierter Eintrag (2026-07-12), die die geflaggte «Bau/Studie»-Lücke schliessen:
    **Baurecht/Norm/Fachwissen** (Normen-Harness 11.07.) — autoritativ = die **Norm-Originalquelle**
    (SIA/VKF-Ziffer im Original-PDF) + **Gültigkeitsregister** (`ersetzte_normen.pdf`); externes
    Signal = `wissenscheck` + Fundstellen-Stichprobe Destillat↔Original. **Ausschreibung/Submission-
    Übergabe** (Thalwil 11.07.) — autoritativ = die **abnehmende Bauleitung** («Null Rückfragen» =
    Abnahmekriterium); interner Verifier = **Konsistenz-Gate Baustein 13** (Plan↔LV) + `korrektur`/`twin`
    + Identifikatoren gegen Projektordner. Muster-Erkenntnis: die autoritative Instanz muss keine
    *Behörde* sein — auch der **abnehmende menschliche Empfänger** (externe Bauleitung) ist eine
    gültige bindende Instanz, und «Null Rückfragen» ist ihr messbares Abnahmekriterium. → [[verifier]] Tabelle.
  - Fünfter Eintrag (2026-07-12, Lauf 7), schliesst die geflaggte «Studie/Design»-Lücke:
    **Wettbewerb/Design/Studie** (Wettbewerbs-Layer 12.07.) — autoritativ = die **Jury** (Jury-Urteil/
    Jurybericht = bindende Wertung, wieder keine Behörde); externes Signal = Refuter-Agent liest
    **Jurybericht gegen Dossier** + SIA-416-Rückrechnung gegen Original-Excel + `programm-pruefer`-
    Konformitäts-Schleife. Format-Vorlage = **Jurybericht eines 2. Platzes** (nennt das Delta zum 1. Platz,
    prüffähiger als ein Sieg-Bericht). Die Musterlektion «autoritative Instanz muss keine Behörde sein»
    hält jetzt über drei Domänen (Behörde · abnehmende Bauleitung · Jury). → [[verifier]] Tabelle.
    Offen bleibt in F3 nur noch **Marketing/Text** als eigene belegte Zeile.
  - Sechster Eintrag (2026-07-15, Lauf 20) — **noch VORGESCHLAGEN, nicht bestätigt**: Domäne
    **Entwurfsprozess / generative Geometrie-Pipeline** (SYN-02, Interview-Vorbereitung, E5 offen).
    Vorgeschlagene Verifier-Zuordnung: zweite Prüfinstanz = **`flaechen-nachweis` (SIA 416) gegen das
    Parameter-Set-Soll** (HNF/Einheit, agf_bgf_faktor) + **Baurecht-Max-Abgleich `machbarkeit`**;
    externes Signal = **Kennwert-Bandbreite `wissen/grobkosten`** (CHF/m3 GV) + **geometrische Exaktheit**
    (Kennzahlen gegen das Baufeld rückgerechnet, Generator ist exakt); Texte im späteren Dossier =
    `korrektur`+`twin`. Neuer Kandidat für «autoritative Instanz»: der **Architekt am Parti-Human-Gate**
    (büroeigener Mensch entscheidet die Gestalt, die Maschine liefert nur den geprüften Möglichkeits-
    raum) — wäre die vierte Ausprägung des Musters «autoritative Instanz muss keine Behörde sein»
    (Behörde · Bauleitung · Jury · **büroeigener Entwerfer**). **Erst nach bestätigtem E5 als volle
    [[verifier]]-Zeile promovieren** — bis dahin nur als Pending-Notiz geführt (nichts erfinden).

## Belege / Quellen
- F4: Originalquellen verlinken/ablegen — Karpathys "LLM Knowledge Bases"-Post und Boris
  Chernys Claude-Code-Thread im Volltext (bisher nur via Screenshot-Transkript belegt).
  - TEILWEISE EINGELÖST 2026-06-30 — Karpathys Primärquelle belegt: GitHub-Gist «LLM Wiki»
    (https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) + X-Post
    (https://x.com/karpathy/status/2039805659525644595). Bestätigt die wissen/-Layer-Mechanik
    (raw immutable → wiki kompiliert → schema; Compiler-Analogie; Linting/Health-Check =
    Skill `wissenscheck`). OFFEN: Boris-Cherny-Thread im Volltext (Verifier-2-3x-Zitat
    bisher nur via Transkript).
  - ✓ EINGELÖST 2026-07-03 (Cherny): Primärquelle des «2-3x»-Zitats belegt — Boris Cherny
    auf X, Tip 13/ («give Claude a way to verify its work … it will 2-3x the quality»),
    https://x.com/bcherny/status/2007179861115511237 (Begleit-Thread 2064426115255730578
    «self-verification loops»). In [[verifier]] als Primärquelle zitiert, Zitat nicht mehr
    nur transkript-belegt. **F4 damit vollständig eingelöst** (Karpathy 06-30 + Cherny 07-03).
- F5: ✓ EINGELÖST 2026-06-27 — Anthropic Claude-Code-Doku "Common workflows → Plan before
  editing" als Primärquelle ergänzt (Zitat in [[the-spec]]). URL:
  https://code.claude.com/docs/en/common-workflows

## JANS-spezifisch
- F6: Soll der Spec-Output ein eigenes Template (`templates/`) bekommen (Ziel/Abgrenzung/
  Kriterien/Plan/Verifikation) analog zum Studienblatt?
  - Stand 2026-07-03: die drei realen Specs (AG-Gründung, Hub-Chef, Buchhaltung) teilen bereits
    ein **de-facto identisches Skelett**: Ziel (1 Satz) · Abgrenzung (NICHT dazu) · Ist-Zustand
    (Scan, bei System-/Umbau-Vorhaben) · Schlüsselentscheide (bestätigt) · Bewertungskriterien
    · Plan (enge Scopes + Checkpoints) · Verifikation · Faktenbasis. Das Template ist damit
    empirisch da. → **Vorschlag an Raphael:** als `wissen/spec/templates/spec-vorlage.md`
    extrahieren (neues Artefakt, daher geflaggt statt ungefragt gebaut).
  - ✓ EINGELÖST 2026-07-06 (Lauf 4): Skelett war 3 Läufe in Folge geflaggt, empirisch stabil.
    Template gebaut als `wissen/spec/templates/spec-vorlage.md` (KB-intern, additiv, reversibel —
    keine Rule-/Skill-Verhaltensänderung, daher im Rahmen `wissens-bibliothekar` autonom angelegt).
    Enthält das Kopier-Skelett + optionale Abschnitte (Ist-Zustand/Monitor-Log) + die Zwei-Phasen-
    Notiz zur lebenden Spec. **Raphael kann die Vorlage anpassen/verwerfen.**
- F7: Reale Spec-Anwendungen als Goldstandard-Beispiele kuratieren (erste: AG-Gründung 2026-06-21).
  - Stand 2026-07-03: 3 Goldstandard-Specs vorhanden. **Buchhaltungssystem 02.07.** ist der
    sauberste Vertreter des Skeletts oben (v.a. eigener «Ist-Zustand (Scan)»-Abschnitt + kontrollierte
    Guardrail-Öffnung) → als Formatvorlage für System-/Prozess-Vorhaben empfohlen.
  - Stand 2026-07-12: Template hielt für **zwei weitere** Specs (Normen-Harness, Thalwil) → Skelett
    bei 5 konformen Specs stabil. Präzisierung zum «Ist-Zustand (Scan)»-Abschnitt: er ist für
    **Umbau/Prozess-Reparatur** da (Diagnose der Schwachstelle begründet das Ziel). Bei einem
    **greenfield-System** (Normen-Harness baut Neues, repariert nichts Kaputtes) fällt der eigene
    «Ist-Zustand (Scan)»-Abschnitt weg — sein Äquivalent steckt in der **Faktenbasis** (Inventar-Scan
    528 Dateien). Kein Template-Verstoss, sondern korrekte Abstufung: scannen ja, «Erosion diagnostizieren»
    nur bei Reparatur-Vorhaben. Thalwil wiederum nutzt zusätzlich den optionalen Abschnitt **«Annahmen
    (markiert, zu bestätigen)»** — genau das F2-Muster «bewegliche Annahmen markieren» als Template-Feld.
