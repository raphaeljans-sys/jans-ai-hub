# Betriebs-Chronik: Infrastruktur, Takte, Speicher, Loops (NICHT importiert)

Diese Datei ist **kein** @-Import und laedt NICHT in jede Session. Sie enthaelt die
vollstaendigen Belege, Messwerte und Vorfalls-Chroniken zu Infrastruktur, Loop-Takten,
Speicher und Feuermechanismen — Material, das nur gebraucht wird, wenn tatsaechlich an
der Automatik gearbeitet wird.

**Wer liest diese Datei (lazily, bei Bedarf):**
- `vollgas-chef-radar`, `vollgas-fruehwarnung` (Leerlauf-/Takt-Aufsicht)
- `hub-chef`, `heartbeat`, `logbuch-radar` — nur bei Infrastruktur-Befund
- jede Session, die an `scripts/` (Runner, Gate, Waechter, Trainings-Bruecken),
  an launchd-Jobs oder an Scheduled-Task-Takten arbeitet
- der Skill `masterclass` (Harness-Review)

**Die aktiven Kurzregeln** (was zu TUN ist) stehen weiterhin in
`rules/auto-verbesserungen.md`, Abschnitt «Betrieb». Hier steht das WARUM mit den Belegen.

Ausgelagert am 29.07.2026 (Kontext-Diaet 2.0, Anthropic-Lecture-Prinzip «tune context:
automatically or lazily?»). Konzept:
`docs/konzepte/260729-Anthropic-Lecture-Prinzipien/`.

---

## 260730 — Der Sync-Task-Runner konnte Dauerzugang setzen, ohne zu fragen (Freigabe-Schwelle)

**Vorfall.** Der Mac Mini legte am 30.07.2026 um 09:32 einen Sync-Task in
`sync-tasks/macbook-pro/`: SSH-Diagnose plus «Rueckweg-Schluessel installieren». Das
eingebettete Script haengte einen Public Key an `~/.ssh/authorized_keys` des MacBook.
Ich habe den Task um 09:59 via `/station-sync` angezeigt, den lesenden Diagnoseteil
selbst ausgefuehrt, den Schluessel-Eintrag aber ausdruecklich zurueckgehalten und Raphael
zur Freigabe vorgelegt — der Auftrag stand in einer Datei einer anderen Station, nicht in
einer Anweisung von Raphael.

**Wirkungslos.** Um **09:59:41**, wenige Minuten vor der Freigabe, hat der launchd-Job
`ch.jans.synctask-runner` denselben Task aus derselben Queue unbeaufsichtigt abgearbeitet:
Schluessel gesetzt, Task nach `done/` verschoben (Beleg: `sync-tasks/log/runner-202607.log`).
Als die Freigabe eintraf, war der Eintrag bereits vorhanden; der manuelle Lauf war
idempotent und hat nichts gedoppelt. Ergebnis und Absender waren in diesem Fall korrekt —
der Schluessel wurde vorher gegen die Quelle geprueft und stimmte zeichengenau mit
`~/.ssh/id_ed25519.pub` des Mini ueberein.

**Der Befund ist strukturell, nicht der Einzelfall.** Jeder Task in der Stations-Queue lief
alle 30 Min automatisch, unabhaengig von seiner Eingriffstiefe. Aus der Queue liessen sich
damit Dauerzugang, Rechte, Persistenz (launchd) oder Zerstoerendes setzen, ohne dass eine
Instanz vorher fragt. Ein Freigabe-Gate, das nur in der interaktiven Session sitzt, ist
wertlos, solange ein Timer dieselbe Queue ungeprueft leert. Zweitens: eine vertraute
**Herkunft** (eigene Station) sagt nichts ueber die **Eingriffstiefe** des Inhalts — das
alte Vertrauensmodell hat beides gleichgesetzt.

**Behoben am 30.07.2026.** Neue gemeinsame Schwelle `scripts/sync-task-guard.sh`
(Musterkatalog: SSH-Zugang, Rechteausweitung, Keychain/Secrets, Systemschutz, Persistenz,
Zerstoerendes, Git-Historie, Fremdcode aus dem Netz, Versand, Buchen; Exit 10 = braucht
Freigabe). Eingehaengt in **beide** Wege: `sync-task-run.sh` (launchd) und
`sync-task-check.sh --run`. Getroffene Tasks wandern nach `sync-tasks/freigabe/<station>/`
und laufen nur via `--freigeben <datei>`. Bewusst grosszuegig gemustert: ein Falsch-Positiv
kostet eine Rueckfrage, ein Falsch-Negativ kostet Zugang. Fehlt das Guard-Script, wird
zurueckgehalten — eine fehlende Schwelle darf nicht wie eine bestandene wirken.

**Beide Pfade nachgemessen** (Pflicht aus Rule 260728). Testtasks 999001 harmlos und
999002 heikel in die Queue, dann `sync-task-run.sh`: der harmlose lief und ging nach
`done/`, der heikle wurde mit Gruenden ins Log zurueckgehalten, und die Kontrollprobe
`grep TEST-HEIKEL` im Log war leer, das Script ist also nicht gelaufen. Danach
`--freigeben <datei>`: Ausfuehrung sichtbar, `done/`, Freigabe-Queue leer. Testreste
entfernt.

**Falle beim Bauen.** Ein Muster, das mit `--` beginnt (`--buchen|...`), wird von `grep`
als Option gelesen und bricht die Pruefung fuer dieses Muster still ab, waehrend der Guard
trotzdem Exit 0 liefert. Darum im Guard zwingend `grep -Eio -e "$REGEX"`. Aufgefallen nur,
weil der erste Testlauf die grep-Usage-Meldung ausgab — ohne Sichtkontrolle waere eine
tote Regel entstanden, die nach «geschuetzt» aussieht.

**Offen.** Der `--notify`-Hook nennt die Zahl der zurueckgehaltenen Tasks jetzt mit; ob
`sync-task-create.sh` schon beim Anlegen warnen soll, ist nicht umgesetzt (waere die
frueheste Stelle, kostet aber nichts an Sicherheit, weil die Schwelle ausfuehrungsseitig
sitzt).

## 260729b — Rollen-Taxonomie im Betrieb: Takt-Entscheide, Radar-Auswertung, Schutzmechanik-Selbsttest

Hierher verlagert am 29.07.2026 aus `rules/rollen-taxonomie.md` (Wissens-Chef Run 20,
Freigabe Raphael). Grund: die Rule steht im @-Import und lädt in jede Session; diese drei
Regeln braucht aber nur, wer tatsächlich an Loops, Takten oder Schutzmechaniken arbeitet.
Die Kurzregel (Rollenzuordnung, Prototyper-Prüfung, kein eigenmächtiges Drosseln,
Ertrag statt Läufe) bleibt importiert. **Kein Inhalt gelöscht, nur verlagert.**

**1. Bei jeder Takt-, Drossel- oder Stilllegungsentscheidung zuerst die Rollen-Bilanz lesen**
(`scripts/rollen-bilanz.sh [Tage]`), nicht den Einzelfall diskutieren. Die Frage lautet nicht
«welchen Loop schalte ich ab», sondern «welche Rolle ist überbesetzt». Die Drosselentscheidung
selbst bleibt bei Raphael (Lehre 25.07.2026).

**2. Kälte ohne Statuseintrag ist kein Befund.** Ein Fach-Skill, der auf ein reales Projekt
wartet, ist zu Recht kalt (Status `anlassgebunden`); ein Skill, dessen Arbeit über einen
Agenten läuft, ebenso (`ersetzt`). Nur Kälte **ohne** solche Erklärung ist zu klären. Ohne
diese Unterscheidung meldet der Nutzungs-Radar `baurecht` und `werkvertrag` als Karteileichen —
zwei Skills, die beide zu Recht auf einen Anlass warten.

**3. Jede neue Schutzmechanik wird in den Selbsttest aufgenommen**
(`scripts/schutzmechanik-selbsttest.sh`) und dort auf **Freigabe- UND Abweisungspfad** geprüft.
Eine Mechanik, die immer «nein» sagt, sieht im Log aus wie eine, die funktioniert
(Lehre 28.07.2026).

**Instrumente**

| Script | Rolle | Wann |
|---|---|---|
| `scripts/rollen-bilanz.sh [Tage]` | Messung | vor Takt-/Drosselentscheiden, monatlich |
| `scripts/nutzungs-radar.sh [Tage]` | Grower | monatlich, vor jedem neuen Skill |
| `scripts/schutzmechanik-selbsttest.sh` | Maintainer | wöchentlich und nach jeder Änderung an einer Schutzmechanik |

Reports landen in `logbuch/rollen/`. Zahlen und Fallbelege der Erstmessung:
`docs/konzepte/260729-Rollen-Taxonomie/260729-Rollen-Taxonomie.md`, Abschnitt 4.

## 260728 — Speicher-Deckel: jeder automatische Lauf fragt zuerst das Lauf-Gate

- **Regel:** Jeder Mechanismus, der einen `claude`-Lauf automatisch startet, ruft VORHER
  `scripts/lauf-gate.sh <name>` und tritt bei Exit 1 still zurueck. Das Gate zaehlt
  stationsweit die laufenden `claude -p`-Prozesse und den freien Speicher (MacBook max. 2
  Laeufe / min. 3 GB frei, Mini max. 3 / 4 GB). Ein Lock im eigenen Script genuegt NICHT —
  er schuetzt nur gegen die zweite Instanz desselben Mechanismus, nicht gegen die fuenf
  anderen. Belegt 28.07.2026: um 00:30 und 22:30 feuerten je zwei Laeufe gleichzeitig, weil
  `nachtschicht` und ein `training`-Job denselben Zeitpunkt trafen. Verankert in
  nachtschicht-run, cron-training-mini, vollgas-runner, wissens-trigger. NICHT in
  `dispatch-run.sh` — der manuelle Weg vom Handy darf nie abgewiesen werden.
- **Korrektur zu 260727/260728 (dort «es sind DREI Orte»):** Es sind **SECHS je Station**.
  MacBook: Scheduled Tasks · vollgas-supervisor · `com.jans.aihub.runner` (alle 15 Min,
  seit 07.06. ohne einen einzigen Job — 28.07. abgeschaltet) · synctask-runner ·
  wissens-trigger · claude-autoupdate. Mini: Scheduled Tasks · `ch.jans.nachtschicht`
  (15 Feuerungen taeglich, in keiner Regel je erwaehnt) · training-energie ·
  vollgas-supervisor · synctask-runner · wissens-trigger. **Vor jeder Takt- oder
  Stilllegungsentscheidung ALLE sechs pruefen** — das vollstaendige Inventar steht in
  `docs/konzepte/260728-Speicher-Architektur/`.
- **Grenze des Gates benennen (gemessen 28.07.2026 22:00):** «jeder Mechanismus» oben meint
  faktisch die vier SHELL-getriebenen (`nachtschicht-run`, `cron-training-mini`, `vollgas-runner`,
  `wissens-trigger`). Die **App-Scheduled-Task-Flotte ruft das Gate NICHT** und kann es baulich
  nicht — sie wird vom App-Scheduler getrieben, nicht von einem Script, das etwas vorschalten
  koennte (`grep -rl lauf-gate ~/.claude/scheduled-tasks/` → null Treffer, beide Stationen).
  Betroffen: die vier MacBook-Nacht-Lernlaeufe (`wissens-chef`, `normen-nacht`, `twin-mail`,
  `twin-fidelity`) und die operativen Morgenbriefings. Fuer sie ruht der Speicherschutz allein auf
  der **Taktentzerrung** (Stand 28.07.: mind. 2 h Abstand bei 5–25 Min Laufzeit → kein Ueberlapp).
  **Konsequenz: wird der MacBook-Nachttakt je wieder verdichtet, greift kein Gate** — dann den
  Gate-Aufruf als ersten Schritt in die vier Lern-Task-Prompts nehmen (operative Briefings NIE,
  die duerfen nicht abgewiesen werden). Verallgemeinert: eine Schutzregel, die «jeder/alle» sagt,
  ist erst geprueft, wenn nachgemessen wurde, wer sie ueberhaupt erreicht.
- **Speicher-Ursachen zuerst MESSEN, nie raten.** `ps aux` RSS zeigt komprimierten Speicher
  NICHT und fuehrt in die Irre; massgeblich ist `top -l 1 -o mem -stats command,mem`.
  Belegt 28.07.2026: auf dem Mac Mini wies `ps` Claude mit 1.3 GB als harmlos aus, waehrend
  **OneDrive 33 GB** hielt (bei 32 GB RAM, 108 MB frei, Swap 9.4/10.2 GB). Ein OneDrive-
  Neustart gab 15 GB frei — ohne jeden Eingriff an Claude. Gegenmassnahme dauerhaft:
  `scripts/speicher-waechter.sh` (launchd `ch.jans.speicher-waechter`, alle 30 Min, beide
  Stationen) startet NUR OneDrive neu, nie Claude und nie Benutzer-Anwendungen.
- **«unused» aus `top` ist NICHT der verfuegbare Speicher — nie als Schwellwert verwenden.**
  macOS meldet unter `unused` nur voellig unberuehrtes RAM; auf einer warmgelaufenen Maschine
  ist das immer nahe null, weil freier Speicher als Cache gehalten wird. Massgeblich ist, was
  das System OHNE Auslagern herausgeben kann: `vm_stat` free + inactive + purgeable, ergaenzt
  um `sysctl kern.memorystatus_vm_pressure_level` (1=normal, 2=warnend, 4=kritisch) fuer den
  Fall einer bereits swappenden Maschine. Belegt 28.07.2026 10:0x: `top` meldete 104 MB
  (MacBook) bzw. 253 MB (Mini) «unused», real verfuegbar waren **4402** bzw. **14233 MB** bei
  normalem Druck. Weil `lauf-gate.sh` in seiner ersten Fassung gegen `unused` pruefte, wies es
  ab 07:34 **ausnahmslos jeden** automatischen Lauf ab — auf beiden Stationen, still, inkl.
  der Nachtschicht als einzigem Treiber des produktiven Destillat-Loops. Metrik am 28.07.
  korrigiert (Schwellen unveraendert), beide Stationen positiv UND negativ verifiziert.
  **Verallgemeinert: eine neu eingebaute Schutzmechanik ist erst dann fertig, wenn ihr
  Abweisungs- UND ihr Freigabepfad je einmal nachgemessen wurden** — ein Gate, das immer
  «nein» sagt, sieht im Log genauso ruhig aus wie eines, das funktioniert.
- **Eine als falsch erkannte Messgroesse sofort im ganzen Bestand suchen, nicht nur am
  Fundort beheben** (`grep -rl "<metrik>" scripts/`). Dieselbe `unused`-Messung steckte
  unbemerkt auch im Schwester-Script `speicher-waechter.sh`, das am selben Tag aus derselben
  Vorlage entstand; die Korrektur am Gate um 10:05 liess sie stehen. Belegt 28.07.2026 12:57:
  der Waechter meldete auf beiden Stationen bei JEDEM 30-Min-Lauf «nur 70-305 MB frei», waehrend
  real 4061 MB (MacBook) bzw. 13648 MB (Mini) verfuegbar waren — 24 Fehlalarme taeglich je
  Station, und die «OK»-Lebendzeile erschien nie. **Ein Waechter, der immer warnt, ist so blind
  wie ein Gate, das immer blockiert:** die echte Speichernot ist vom Dauerrauschen nicht mehr
  zu unterscheiden. Metrik am 28.07. auf `vm_stat` + Druck-Kriterium vereinheitlicht (Schwelle
  1500 MB unveraendert), beide Stationen positiv und negativ verifiziert.
- **Bei launchd-Jobs mit SSD-Vorrang gilt eine NAS-Korrektur erst als wirksam, wenn die GEPLANTE
  BAHN sie zeigt** — neue Logzeile im neuen Format bzw. belegte Stille —, nie schon dann, wenn das
  NAS-Script von Hand das Richtige tut. Vier plists starten bevorzugt die SSD-Kopie
  (`S="$HOME/Developer/…"; [ -f "$S" ] || S="/Volumes/daten/…"`): MacBook `speicher-waechter` +
  `transcript-rotation`, Mac Mini zusaetzlich **`nachtschicht`** (Taktgeber des einzigen produktiven
  Lern-Loops). Fuer sie wirkt eine NAS-Aenderung ERST nach `nas-commit-now` → SSD-Pull; ein Handlauf
  des NAS-Scripts liefert bis dahin ein falsch-positives «verifiziert». Belegt 28.07.2026: Korrektur
  13:01 auf dem NAS gespeichert und dort verifiziert, der planmaessige 13:03:59-Lauf feuerte
  trotzdem noch die alte Fehlmeldung; wirksam wurde sie erst mit dem Pull um 13:06/13:08. Dass kein
  Schaden entstand, lag am Commit-Takt, nicht am Verfahren — bei ausgefallenem Commit (SMB-Flatter,
  Rule 260725) haette der Waechter den ganzen Tag weiter Fehlalarme gefeuert, waehrend die Aufsicht
  «behoben» meldet. Verlaengerung der 25.07.-Lehre (erst nach Sicht-Verifikation als vollzogen
  dokumentieren) auf den Fall, dass Kanon und Ausfuehrungskopie auseinanderfallen koennen.
  Routine-Gegenprobe: `md5` NAS gegen SSD je betroffenem Script (28.07. 16:00 beidseitig driftfrei).
- **Session-Transcripts rotieren.** `~/.claude/projects` waechst unbegrenzt (28.07.: 4.3 GB
  MacBook, 5.2 GB Mini). `scripts/transcript-rotation.sh` (launchd, So 04:00) archiviert
  verlustfrei alles aelter als 14 Tage und loescht Originale ERST nach geprueftem Archiv.
- **Rollentrennung:** MacBook Pro = Arbeitsstation, keine Lern-Laeufe waehrend der
  Arbeitszeit (twin-mail 28.07. von 2x auf 1x nachts zurueckgenommen). Operative
  Morgen-Tasks mit mindestens 20 Min Abstand staffeln — vier Laeufe in 20 Minuten
  (Stand vor dem 28.07.) sind die Hauptlast auf der 16-GB-Maschine.
- **Gilt fuer:** beide Stationen, jeden automatischen Claude-Lauf, jede Takt-Aenderung.

## 260727 — Kein zweiter Taktgeber: ein Loop mit eigenem Scheduled Task gehoert NIE in den Endlos-Runner

- **Regel:** Ein Lern-/Trainings-Loop, der einen **eigenen Scheduled Task mit definiertem Takt**
  hat, wird NIEMALS zusaetzlich vom Endlos-Runner (`scripts/vollgas-runner.sh`) gefahren — er
  gehoert in dessen `EXCLUDE_RE`. Sonst laeuft er doppelt und der Runner unterlaeuft rund
  stuendlich jede bewusst gewaehlte Drosselung. Zweiter, ebenso wichtiger Teil: **der Runner
  liest nur das SKILL.md-Frontmatter, nicht den Registry-Zustand des Scheduled Task.** Wird ein
  Loop in der Registry deaktiviert (`enabled: false` via `update_scheduled_task`), faehrt der
  Runner ihn weiter, solange die SKILL.md kein `enabled: false` traegt und der Name nicht in
  `EXCLUDE_RE` steht. **Jede Deaktivierung oder Ruecktaktung eines Loops ist darum erst
  vollzogen, wenn beide Orte nachgezogen sind** (Registry UND Runner-Filter/Frontmatter);
  bis dahin nur dokumentiert, nicht wirksam. Belegt 27.07.2026: `immobewertung-training` (seit
  26.07. registry-deaktiviert) und `baurecht-buch-training` (seit 17.07. bewusst woechentlich)
  liefen im Runner unveraendert im Dauerzyklus weiter; zusammen mit `twin-*`, `normen`,
  `wettbewerbs-dna` verbrauchten die Doppellaeufe am 25.07. 53 Mio teure Tokens und fuhren das
  Wochenkontingent leer (26.07. 00:53 bis 27.07. 12:00 Totalausfall auf beiden Stationen,
  ~4'700 Fehlversuche, Morgenbriefing 27.07. ausgefallen). Zusatz: ein laufender Runner-Prozess
  haelt `EXCLUDE_RE` **im Speicher** — Filteraenderungen wirken erst nach Prozess-Neustart.
- **Nachtrag 28.07.2026 — es sind DREI Orte, nicht zwei.** Auf dem Mac Mini existiert ein dritter,
  bis dahin unbemerkter Feuermechanismus: geladene **launchd-Jobs** in `~/Library/LaunchAgents`
  (`ch.jans.training-plg` taeglich 00:30, `ch.jans.training-energie` taeglich 22:30), die ueber
  `scripts/cron-training-mini.sh` → `dispatch-run.sh` → `claude -p` mit **25 USD** Budget feuern
  (Standard-Deckel 5). Sie lesen weder Registry noch SKILL.md-Frontmatter noch die STOP-Dateien.
  Deshalb liefen `planungsgrundlagen` (Run 92) und `energie` (Run 117) in der Nacht auf den 28.07.,
  obwohl beide seit 26.07. als stillgelegt galten und `STOP-Macmini` das Gegenteil behauptete.
  **Jede Deaktivierung/Ruecktaktung ist erst vollzogen, wenn alle DREI Orte nachgezogen sind:
  Registry · Runner (`EXCLUDE_RE`/Frontmatter) · launchd-Jobs.** Vollzug 28.07.: `training-plg`
  per `launchctl bootout` + plist-Umbenennung abgeschaltet (27 Delta-Null-Laeufe in Folge, Run
  67–92); `training-energie` bewusst aktiv gelassen (produktiv). `cron-training-mini.sh` nennt sich
  im Kopf selbst eine Uebergangsbruecke, deren Endbedingung («bis die App-Tasks umgetaktet sind»)
  seit dem 26.07. erfuellt ist — solche selbstgesetzten Endbedingungen muessen aktiv vollzogen
  werden, sie verfallen nicht von allein.
- **Nachtrag 28.07.2026 — Kontingent-Probe immer MIT der Runner-Anmeldung.** Eine Probe
  `claude -p … --model haiku` ohne geladene `~/.jans-dispatch.env` schlaegt mit «OAuth session
  expired» fehl, obwohl der Runner-Pfad intakt ist (interaktive Sitzung ≠ Runner-Token). Vor jeder
  Blocker-Diagnose zuerst `set -a; . "$HOME/.jans-dispatch.env"; set +a` — sonst meldet die Aufsicht
  einen P1-Login-Blocker, den es nicht gibt.
- **Gilt fuer:** beide Stationen, jede Aenderung an Loop-Takt oder Loop-Status, `vollgas-runner.sh`,
  `vollgas-chef-radar` (Leerlauf-Waechter), `vollgas-fruehwarnung`, launchd-Jobs `ch.jans.training-*`.

## 260727 — Leerlauf-Waechter: Delta-Null-Loops werden abgeschaltet, nicht weitergefahren

- **Regel:** Meldet ein Lern-Loop **3x in Folge** sinngemaess «nichts Neues / keine Datei
  geaendert / Delta Null / bereits vollstaendig», wird er auf Bestaetigungstakt zurueckgenommen
  (woechentlich); ab **5x in Folge** wird er deaktiviert, mit dokumentierter Bedingung fuer die
  Reaktivierung. Loops, deren offene Punkte reine **Bring-Schulden Raphaels** sind (fehlendes
  Material, ausstehende Richtungsentscheidung), laufen NIE im Vollgas-Takt — sie werden
  ereignisgetriggert oder stillgelegt und die offene Frage wird Raphael vorgelegt. Zustaendig
  ist der `vollgas-chef-radar` (Leerlauf-Waechter, autorisiert 27.07.2026 durch Raphael:
  «schauen dass Leerlaeufe abgeschaltet werden»). **Ausgenommen und nie anzutasten:** die
  operativen Tasks (logbuch-radar, hub-chef, mahnwesen, zahlungsabgleich, heartbeat,
  ag-gruendung-monitor, konversations-log, vollgas-fruehwarnung). Ein volles 5h-Fenster ist nur
  dann Erfolg, wenn es mit ARBEIT gefuellt war; ein Fenster voller Delta-Null-Laeufe oder
  Fehlversuche gegen ein leeres Kontingent ist Verschwendung.
- **Nachtrag 29.07.2026 — Leerlauf am LIEFER-DELTA messen, nie am Registry-Zustand.** Die
  Zaehlregel oben stuetzt sich auf Laeufe, die «nichts Neues» **melden**. Ein Lauf, der
  abgeschossen wird (Neustart, Speichernot, Mount-Abfall), meldet gar nichts und ist von einem
  stillen, gesunden Loop nicht zu unterscheiden. Verschaerfend: `lastRunAt` in der Task-Registry
  markiert den **Start**, nicht die Lieferung — ein Loop kann dort taeglich «laufen» und seit
  Tagen nichts beitragen. Massgeblich ist darum je Loop der **Liefer-Delta** (Commit /
  Datei-Aenderung / Report im erwarteten Zielordner). Belegt 28.07.2026: `twin-mail-training`
  und `twin-fidelity-review` tragen beide `lastRunAt` 06:50:50, der MacBook startete um
  06:53:53 neu — beide Laeufe waren drei Minuten alt und lieferten null Artefakte, waehrend die
  Registry sie als gelaufen auswies (juengster echter Stand: Batch 79 bzw. Fidelity 260727l,
  beide vom 27.07.). **Und: Null-Ertrag ist NICHT Delta Null** — ein unterbrochener Loop wird
  nicht rueckgetaktet, sondern beobachtet, ob der naechste planmaessige Lauf liefert.
- **Nachtrag 29.07.2026 — der Liefer-Delta wird ab sofort maschinell gemessen.** Mit der
  Umstellung der Loops auf `--output-format json` (Anthropic-Lecture-Prinzip SDK) schreibt jeder
  automatische Lauf eine Zeile nach `logbuch/laeufe/YYMMDD-laeufe.jsonl` mit `cost_usd`,
  `duration_ms`, `num_turns`, `is_error` und `result`. Der Radar liest dieses Journal statt zu
  schaetzen; ein Lauf ohne Journalzeile ist ein abgeschossener Lauf (Null-Ertrag), ein Lauf mit
  Zeile und leerem Delta ist ein echter Leerlauf. Damit ist die Unterscheidung oben messbar
  statt interpretiert.
- **Gilt fuer:** alle Lern-/Trainings-Loops auf beiden Stationen, ab 27.07.2026.

## 260729 — Ein Lauf ausserhalb des vertrauten Projekts arbeitet ohne Hub-Kontext

- **Der Mechanismus:** Claude Code laedt `.claude/settings.json` (Berechtigungen) und die
  Projekt-`CLAUDE.md` **nur**, wenn das Arbeitsverzeichnis in `~/.claude.json` unter
  `projects[<pfad>].hasTrustDialogAccepted: true` steht. Der Eintrag entsteht sonst durch
  den interaktiven Trust-Dialog — den ein headless `claude -p` nicht beantworten kann. Es
  meldet dann nur «Ignoring N permissions.allow entries … this workspace has not been
  trusted» und **arbeitet ohne Projekt-Kontext weiter, mit rc=0**. Ein solcher Lauf ist im
  Log von einem gesunden nicht zu unterscheiden.
- **Gemessener Zustand 29.07.2026 (MacBook Pro):** `~/Developer/jans-ai-hub` vertraut ·
  `/Volumes/daten/jans-ai-hub` **kein Eintrag** · `~` ausdruecklich
  `hasTrustDialogAccepted: false`.
- **Der Schaden, belegt:** `wissens-trigger.sh` war der einzige Feuermechanismus **ohne
  `cd`**, und die launchd-Jobs setzen kein `WorkingDirectory` — die Laeufe starteten also
  im Home-Verzeichnis. Im eigenen Log am **27.07.2026 21:52**: `planungsgrundlagen-training`
  endete nach 28 s mit rc=0 und einer RUECKFRAGE («Could you confirm: 1. Are you
  intentionally asking me to run this training pass right now …») statt mit Arbeit. Der
  Loop verbuchte es als «1 Lauf ausgeloest». Ohne Projekt-Kontext verstand der Lauf den
  SKILL.md-Prompt nicht als Auftrag im Hub.
- **Behoben 29.07.2026:** (a) `wissens-trigger.sh` wechselt neu in den SSD-Klon (NAS als
  Rueckfall) und protokolliert sein Arbeitsverzeichnis in jeder Zeile — ohne diese Zeile
  blieb der Fehler unsichtbar. (b) `scripts/trust-check.sh` prueft die Hub-Pfade und setzt
  fehlendes Vertrauen idempotent (atomar, mit Backup); als Check 8 im Skill `heartbeat`
  verankert. Das Home-Verzeichnis bleibt bewusst **untrusted** — waere es vertraut,
  bekaeme jede Session von ueberall die vollen Projekt-Berechtigungen.
- **Verallgemeinert:** Ein automatischer Lauf muss sein **Arbeitsverzeichnis kennen und
  protokollieren**. `cd` ist bei einem headless Lauf kein Schoenheitsdetail, sondern
  entscheidet darueber, ob Berechtigungen und Kontext ueberhaupt geladen werden. Und:
  rc=0 ist kein Beleg fuer geleistete Arbeit — dieselbe Lehre wie beim Liefer-Delta.
- **Gilt fuer:** jeden Feuermechanismus auf beiden Stationen, jede neue Automation.

## 260729 — Auch LESENDE git-Befehle haengen ueber SMB

- **Praezisierung zu Rule 260726:** Die Rule verbietet `commit`/`push`/`pull`/`rebase` ueber
  den SMB-Mount. Gemessen 29.07.2026: auch ein reines `git status --porcelain` gegen
  `/Volumes/daten/jans-ai-hub` lief in den 2-Minuten-Timeout, waehrend im Hintergrund ein
  `claude -p`-Lauf und der 15-Min-Committer aktiv waren. Lesende Befehle sind also nicht
  automatisch sicher — sie treffen dieselbe `.git/index.lock` und dieselbe SMB-I/O-Latenz.
- **Konsequenz:** Fuer den Zustand des NAS-Repos nicht `git status` ueber den Mount aufrufen,
  sondern entweder den nativen Weg (`ssh` auf die Synology) nehmen oder — im Normalfall
  ausreichend — gar nicht fragen und einfach `scripts/nas-commit-now.sh "<Message>"`
  ausloesen; der native Committer ermittelt den Zustand selbst auf ext4. Haengt ein solcher
  Befehl doch einmal, NICHT wiederholen (jeder Versuch bindet einen weiteren
  uninterruptiblen Prozess), sondern auf den nativen Weg wechseln.
- **Gilt fuer:** jede Session und jeden Loop, jeder git-Zugriff aufs NAS-Repo ueber den Mount.

## 260725 — Vollgas wieder aktiv: Drossel aufgehoben, Endlos-Runner beidseitig neu gestartet

- **Regel:** Auf ausdrueckliche Anweisung Raphaels (25.07.2026) ist der Drosselzustand vom
  14.07. aufgehoben. Umgesetzt: STOP + STOP-Macmini in `logbuch/vollgas/` entfernt, der launchd-
  Waechter `ch.jans.vollgas-supervisor` (StartInterval 180 s, auf beiden Stationen geladen)
  startet den Endlos-Runner `vollgas-runner.sh` wieder automatisch; sofort-Neustart per Waechter-
  Antrigger erzwungen (MacBook Pro + Mac Mini). `vollgas-chef-radar` ist wieder Taktgeber/Melder,
  drosselt aber NICHT mehr eigenmaechtig — Wiederdrosselung nur auf Raphaels Anweisung oder beim
  Erreichen des eingebauten Selbst-Endes. Runner behaelt seine Schutzmechanik: $50-Budget-Deckel,
  Stall-Killer, nur Abo-Anmeldung (NIE API-Key), Selbst-Ende 11.08.2026. OFFEN vorgelegt: (a) ob
  Vollgas ueber den 11.08. hinaus laufen soll (dann END_DATE im Runner+Supervisor anheben und den
  Gegen-Task `token-drosselung-100810` deaktivieren), (b) ob das 5x-Abo-Downgrade am 10.08. bestehen
  bleibt (kollidiert mit Dauer-Vollgas).
- **Nachtrag 25.07.2026 12:45 (faktische Wirksamkeit):** Der Eintrag oben wurde ~04:15 committet,
  die eigentliche Drosselaufhebung wurde aber erst um 12:45 wirksam. Belegt: Schoner-Radar 07:16
  meldete `STOP` + `STOP-Macmini` noch stehend und keinen Runner-Prozess; auch beim Nachfassen 12:40
  standen beide STOP-Dateien und kein Runner lief. Ursache mutmasslich SMB-Flatter (Rule 260725): die
  fruehe STOP-Entfernung/der Runner-Start ging waehrend eines Mount-Abfalls verloren, der Rule-Eintrag
  blieb aber persistiert — Dokumentation lief der Realitaet voraus. Um 12:45 verifiziert nachgezogen:
  `STOP`+`STOP-Macmini` entfernt, `vollgas-runner.sh` auf MacBook Pro (PID 5498) UND Mac Mini (via ssh,
  PID 21848) neu gestartet und mit frischen Log-Zeilen bestaetigt (Budget $50/Lauf, Zyklus 1 laeuft),
  Instanz-Lock `/tmp/jans-vollgas-runner.lock` aktiv (kein Doppelstart), `ch.jans.vollgas-supervisor`
  geladen (180 s) haelt den Runner ab jetzt am Leben, `vollgas-chef-radar`-Beschreibung auf Taktgeber
  zurueckgesetzt. Lehre: eine Vollgas-/Drossel-Umschaltung erst nach Sicht-Verifikation (STOP weg +
  Runner-PID + frische Log-Zeile) als vollzogen dokumentieren, nie allein aus dem geschriebenen Eintrag.
- **Nachtrag 25.07.2026 12:50 (Loop-Takte entdrosselt):** Der 12:45-Nachtrag deckte nur Runner/STOP/
  Radar; die sechs als eigene Scheduled Tasks laufenden Lern-Loops standen noch auf «GEDROSSELT 1x/Nacht».
  Auf dieselbe Anweisung Raphaels auf Intensivtakt gehoben (`update_scheduled_task`, 2x taeglich Tag+Nacht
  gestaffelt): `normen-training-nacht` (01:20/13:20), `twin-mail-training` (03:35/15:35), `twin-fidelity-review`
  (05:40/17:40), `spec-training` (04:10/16:10), `wettbewerbs-dna-training` (02:20/14:20), `wissens-chef`
  (11:10/23:10); `vollgas-chef-radar` von 4x auf **alle 3h** verdichtet (fuengt jeden 5h-Reset zuegiger auf).
  BEWUSST NICHT hochgetaktet: `immobewertung-training` (KB saturiert, zehnter Delta-Null-Lauf in Folge —
  Hochtakten waere Token-Verschwendung) und `baurecht-buch-training` (Festigungsmodus woechentlich, eigener
  Entscheid Raphael 17.07.). Die sechs bleiben aus `EXCLUDE_RE` des Runners ausgeschlossen → kein
  Doppellauf Runner↔Task (Run-33-Lektion). Wiederdrosselung am 10.08. via `token-drosselung-100810`.
- **Gilt fuer:** beide Stationen, alle Lern-/Trainings-Loops; ergaenzt/ueberholt den Drossel-Bullet
  im Takt-Eintrag 260714.

## 260725 — Headless NAS-Mount: via osascript «mount volume» (Tailscale) remounten

- **Regel:** Faellt der `/Volumes/daten`-SMB-Mount waehrend eines headless/Scheduled-Task-Laufs
  auf der mobilen Station (MacBook Pro) ab, NICHT mit `open smb://…` remounten (erzeugt ohne
  interaktive Finder-/loginwindow-Sitzung keinen dauerhaften Mount) und NICHT ueber die Office-LAN-IP
  192.168.1.10 (mobil oft nicht erreichbar). Stattdessen den scriptbaren Keychain-Weg nutzen:
  `osascript -e 'mount volume "smb://diskstation918.tail8265aa.ts.net/daten"'` (Tailscale-Hostname,
  von ueberall erreichbar). Zusaetzlich: Schreib-/Buchungslogik idempotent bauen und moeglichst in
  EINEM Bash-Prozess direkt nach dem Remount ausfuehren, da der Mount erneut abfallen kann und die
  Writes des ersten flackernden Fensters verloren gehen koennen (belegt twin-mail-training Batch 60,
  25.07.2026: erste Facetten-Appends nicht persistiert, idempotenter Re-Apply fing es auf).
- **Gilt fuer:** alle headless/Scheduled-Task-Laeufe auf der mobilen Station, die aufs NAS schreiben
  (twin-mail-training, Lern-/Trainings-Loops).

## 260724 — Geteiltes NAS-Repo: bei paralleler Instanz pathspec-begrenzt committen (UEBERHOLT)

**Status: ueberholt durch 260726** (kein `git` ueber SMB, nativer Committer via `nas-commit-now.sh`).
Hier nur als Chronik behalten, weil die Ursachenanalyse den Index-Mechanismus erklaert.

- Committet ein Loop/Session ins NAS-Repo, waehrend eine zweite Instanz (anderer Loop ODER
  nas-selfcommit) parallel schreibt, reisst ein Pathspec-loses `git commit` alles mit, was im
  geteilten Index staged ist — auch fremde, noch nicht committete Dateien der anderen Instanz.
  Der Index ist bei SMB-Mount geteilt; `git add <meine Dateien>` schuetzt NICHT, weil `commit`
  danach den gesamten Index nimmt. Ausloeser: 24.07.2026 nahm der wettbewerbs-dna-Commit
  5b1f206d sieben staged spec-training-Dateien mit (kein Datenverlust, aber unsaubere Zuordnung).

## 260724 — Trainings-/Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen

- **Regel:** Bevor ein Lern-/Trainings-Loop (planungsgrundlagen, normen, energie, baurecht, twin,
  …) eine Run-Nummer belegt und geteilte Dateien (Wiki, curriculum, QUESTIONS, CHANGELOG) editiert,
  prueft er per `ps` (bzw. Lockfile), ob **auf demselben Host** bereits eine zweite Instanz desselben
  Loops laeuft (typisch: der scheduled Task UND ein paralleler `claude -p`-Dispatch-Run feuern
  gleichzeitig). Laeuft eine Zweitinstanz: **zuruecktreten** — keine Register-Edits, kein
  `git commit`/`push` (index.lock-/Merge-Race), stattdessen die eigenen Funde in einem
  **eindeutig benannten** `outputs/`-Report sichern und den nativen nas-selfcommit die additiven
  Wiki-Edits kollisionsfrei uebernehmen lassen. Ausloeser: 24.07.2026 kollidierten zwei identische
  planungsgrundlagen-Run-58-Instanzen host-intern (beide dieselbe Domaenen-Rotation, beide schrieben
  QUESTIONS/INDEX). Host-interne Variante der Stations-Kollision aus Rule 260720.
- **Gilt fuer:** alle Lern-/Trainings-Loops auf beiden Stationen, ab 24.07.2026.

## 260720 — Stations-Koordination Dauerschicht/Nachtschicht: Dispatch-Protokoll INHALTLICH lesen

- **Regel:** Bevor ein Dauerschicht-/Nachtschicht-Zyklus seine Aufgabe waehlt, liest er das
  juengste Protokoll unter `dispatch/log/` (bzw. die juengste Journalzeile) INHALTLICH —
  der Dateiname allein genuegt nicht. Ausloeser: Zyklus 27 (20.07.) begann das normen-Audit,
  das die Nachtschicht um 22:41 bereits abgeschlossen hatte; der Namens-Check hatte die
  Kollision nicht erkannt. Grosse Einzelaufgaben (Audits, Seeds, Specs) zusaetzlich VOR
  Beginn per Journalzeile «in Arbeit» ankuendigen, damit die andere Station sie sieht.
- **Gilt fuer:** MacBook-Dauerschicht-Loop und Mac-Mini-Nachtschicht, ab 20.07.2026.

## 260714 — Takt-Zustand (konsolidiert; ersetzt 260711/260712/260712b–e/260713)

- **Drossel AUFGEHOBEN am 25.07.2026 auf ausdrueckliche Anweisung Raphaels** (siehe Eintrag
  260725 «Vollgas wieder aktiv»): STOP-Dateien entfernt, Endlos-Runner auf beiden Stationen
  wieder autorisiert; `vollgas-chef-radar` darf NICHT mehr eigenmaechtig drosseln. Der urspruengliche
  Drossel-Grund (Wochenlimit 81 %, 14.07.) ist ueberholt. Selbst-Ende des Runners weiterhin
  11.08.2026, sofern nicht anders angewiesen.
- **Trainings-/Lern-Loops:** max. 1x taeglich je KB, im Nachtfenster 22:00–06:00, gestaffelt;
  rechenintensive/NAS-abhaengige Laeufe als lokale Tasks auf dem Mac Mini, nie als Cloud-Routine.
- **Arbeitsteilung:** MacBook Pro baurecht/twin/immobewertung/spec/wettbewerbs-dna + Normen
  SIA/VKF; Mac Mini energie/planungsgrundlagen/synobsis + Normen DIN/VSS/RAL. Kein Loop doppelt.
- **Qualitaetsleitplanken:** nichts erfinden; Status-Hebung auf `established` nur nach
  unabhaengiger Verifikation (Refuter-Agenten oder Volltextabgleich); Workflows fuer
  Verifikation freigegeben. Runner/Loops NIE ueber API-Key, nur Abo-Anmeldung.
- **Operative Briefings/Monitore** (logbuch-radar, hub-chef, heartbeat, mahnwesen,
  zahlungsabgleich, Monitore) bleiben am Morgen-Takt und werden NIE geloopt.
- **Wettbewerbs-DNA-Loop** reaktiviert sich am 20.07. 12:30 gedrosselt (Task
  `wettbewerbs-dna-reaktivierung`).
- **Ruecktaktung** auf 5x-Abo am 10.08.2026 via One-Time-Task `token-drosselung-100810`.
  Wiederhochfahren auf Vollgas nur auf ausdrueckliche Anweisung Raphaels.

## 260716 — Super-Brain: Konversations-Gedaechtnis + outlook.com

- **Regel:** (1) Task `konversations-log` (taeglich 06:10) destilliert die Claude-Sessions
  beider Stationen (lokal + `ssh mini`, `scripts/konversations-extract.sh`) plus Cloud/Dispatch
  nach `logbuch/konversationen/YYMMDD-konversationen.md` — Inhaltsebene (Entscheide, Ergebnisse,
  Zusagen, abgeschnittene Deliverables), Routine-Trainings nur als Einzeiler. `logbuch-radar`
  (06:45) und `hub-chef-taeglich` (08:35) LESEN dieses Destillat zwingend; Briefing-Sektion
  «Aus unseren Gespraechen», Register-Quelle «Gespraech <Station> <Datum>». (2)
  **raphaeljans@outlook.com wird mitgescannt** (Apple Mail/osascript; Mailboxen heissen deutsch
  «Posteingang»/«Gesendete Elemente»). (3) Grenze offen ausweisen: reine Claude-App-Chats
  (iPhone/iPad) sind headless nicht auslesbar.
- **Gilt fuer:** konversations-log, logbuch-radar, hub-chef-taeglich, Skill logbuch.

## 260729 — Multi-Claude nur unter Speicher-Deckel (Worktrees)

- **Regel:** Parallele Claude-Laeufe werden ausschliesslich ueber `scripts/multi-claude.sh`
  gestartet. Das Script leitet die Zahl der Instanzen aus dem **real verfuegbaren** Speicher ab
  (`vm_stat` free+inactive+purgeable, Druck-Kriterium `kern.memorystatus_vm_pressure_level`),
  zieht die bereits laufenden `claude`-Prozesse ab und deckelt zusaetzlich auf das Stations-Maximum
  aus `lauf-gate.sh` (MacBook 2, Mini 3). Jeder Auftrag laeuft in einem **eigenen git worktree auf
  der SSD** (`~/Developer/jans-worktrees/<name>`), nie auf dem NAS-Mount — Worktrees ueber SMB
  wuerden die `.git/index.lock` teilen und genau die Blockade erzeugen, die Rule 260726 verbietet.
  Geteilte Hub-Inhalte (skills/rules/agents/wissen) werden NIE in einem Worktree editiert
  (Rule `sync-kanonische-quelle`); Worktrees sind fuer isolierte Arbeitsauftraege da (Code,
  Auswertungen, Studien-Rechnungen), deren Ergebnis danach kontrolliert zurueckfliesst.
- **Hintergrund:** Anthropic-Lecture 29.07.2026, Slide «Interlude: Multi-claude» (mehrere
  Checkouts / worktrees / SSH+TMUX / parallele Jobs). Auf Anweisung Raphaels umgesetzt, aber
  mit dem am 28.07. eingezogenen Speicher-Deckel verheiratet, statt ihn zu umgehen.
- **Gilt fuer:** beide Stationen, jeden absichtlich parallelen Claude-Start.
