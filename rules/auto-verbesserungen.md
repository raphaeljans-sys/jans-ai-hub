# Regel: Auto-erfasste Verbesserungen (verbindlich)

Diese Datei wird automatisch gepflegt. Jede dauerhafte Verbesserung («ab jetzt immer …»,
«nie …», «merk dir …») wird hier als datierter Eintrag hinterlegt und ist sofort auf allen
Stationen aktiv. Erfassung: Hook `scripts/verbesserung-capture.sh` + Claudes Bewertung.

**Archiv:** Die vollstaendigen Original-Wortlaute aller Eintraege (inkl. Ausloeser-Zitate
und Historie) liegen in `rules/auto-verbesserungen-archiv.md` (nicht importiert). Hier
steht nur der aktive, imperative Kern. Konsolidiert am 19.07.2026 (Kontext-Diaet,
Konzept: `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`).

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
- **Gilt fuer:** alle Lern-/Trainings-Loops auf beiden Stationen, ab 27.07.2026.

## 260726 — Kein `git` ueber SMB aufs NAS-Repo: nativer Committer via nas-commit-now
- **Regel:** NIEMALS `git commit`/`push`/`pull`/`rebase` direkt gegen `/Volumes/daten/jans-ai-hub/.git`
  ueber den SMB-Mount ausfuehren — nicht Claude, nicht die Loops. Solche Befehle haengen unter
  Last uninterruptibel (SMB-I/O) und blockieren die `.git/index.lock` fuer alle (belegt 25.07.
  mehrfach: fremde Loop-Commits wedged minutenlang, mein Commit kam nicht durch). Stattdessen den
  **nativen** Committer der Synology ausloesen: `bash scripts/nas-commit-now.sh "<Message>"`
  (ssh → `nas-selfcommit.sh` auf ext4, commit+push, zieht danach den SSD-Klon nach). Ohne
  Sofort-Bedarf reicht der 15-Min-Cron. Datei-Edits (Write/Edit) ueber SMB bleiben erlaubt; nur
  `git` gehoert nativ auf die Synology. Damit ueberholt: die pathspec-Commit-Mitigation (Rule
  260724) und der direkte Commit+Push-Schritt in `sync-kanonische-quelle`/`git-auto-push` (beide
  Rules am 26.07. entsprechend umgeschrieben). Der Loop-Prompt im `vollgas-runner.sh` ruft neu
  ebenfalls `nas-commit-now` statt selbst zu committen.
- **Gilt fuer:** alle Stationen, alle Loops, jede Session — jeder Schreib-git-Zugriff aufs NAS-Repo.

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

## 260725 — Headless NAS-Mount: via osascript «mount volume» (Tailscale) remounten, nicht `open smb://`
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

## 260724 — Geteiltes NAS-Repo: bei paralleler Instanz IMMER pathspec-begrenzt committen
- **Regel:** Committet ein Loop/Session ins NAS-Repo, waehrend eine zweite Instanz (anderer
  Loop ODER nas-selfcommit) parallel schreibt, IMMER `git commit -- <meine Dateien>` mit
  explizitem Pathspec verwenden — nie `git commit` ohne Pathspec. Ein Pathspec-loses `commit`
  committet ALLES, was im geteilten Index staged ist, und reisst so fremde, noch nicht
  committete Dateien der anderen Instanz in den eigenen Commit (Cross-Contamination). Der
  Index ist bei SMB-Mount geteilt; `git add <meine Dateien>` schuetzt NICHT, weil `commit`
  danach den gesamten Index nimmt. Ausloeser: 24.07.2026 nahm mein wettbewerbs-dna-Commit
  5b1f206d sieben staged spec-training-Dateien mit (kein Datenverlust, aber unsaubere
  Zuordnung). Ergaenzt den Kollisionsschutz 260724 (Zweitinstanz-Check).
- **Gilt fuer:** jeden `git commit` ins NAS-Repo auf beiden Stationen, besonders Lern-/
  Trainings-Loops im Nachtfenster (laufen gestaffelt, aber ueberlappen mit nas-selfcommit).

## 260724 — Trainings-/Lern-Loops: VOR Beginn auf laufende Zweitinstanz pruefen (Kollisionsschutz)
- **Regel:** Bevor ein Lern-/Trainings-Loop (planungsgrundlagen, normen, energie, baurecht, twin,
  …) eine Run-Nummer belegt und geteilte Dateien (Wiki, curriculum, QUESTIONS, CHANGELOG) editiert,
  prueft er per `ps` (bzw. Lockfile), ob **auf demselben Host** bereits eine zweite Instanz desselben
  Loops laeuft (typisch: der scheduled Task UND ein paralleler `claude -p`-Dispatch-Run feuern
  gleichzeitig). Laeuft eine Zweitinstanz: **zuruecktreten** — keine Register-Edits, kein
  `git commit`/`push` (index.lock-/Merge-Race), stattdessen die eigenen Funde in einem
  **eindeutig benannten** `outputs/`-Report sichern und den native nas-selfcommit die additiven
  Wiki-Edits kollisionsfrei uebernehmen lassen. Ausloeser: 24.07.2026 kollidierten zwei identische
  planungsgrundlagen-Run-58-Instanzen host-intern (beide dieselbe Domaenen-Rotation, beide schrieben
  QUESTIONS/INDEX). Host-interne Variante der Stations-Kollision aus Rule 260720.
- **Gilt fuer:** alle Lern-/Trainings-Loops auf beiden Stationen, ab 24.07.2026.

## 260721 — Bundesrecht-Volltexte: Fedlex ueber die Filestore-URL lesen (nicht das JS-Portal)
- **Regel:** Das Fedlex-Portal (fedlex.admin.ch/eli/...) liefert ohne JavaScript keinen
  Text. Amtliche Volltexte des Bundesrechts IMMER ueber das Filestore-Muster beziehen:
  `https://www.fedlex.admin.ch/filestore/fedlex.data.admin.ch/eli/cc/<ELI>/<JJJJMMTT>/de/html/fedlex-data-admin-ch-eli-cc-<ELI-mit-Bindestrichen>-<JJJJMMTT>-de-html.html`
  (Konsolidierungsdatum meist 01.01. des laufenden Jahres; per curl-Statuscode testen).
  Beispiel OR (SR 220): ELI `27/317_321_377`, Stand 20260101, ~2.6 MB — Artikel per
  `<article id="art_NNN">` extrahierbar (Buchstaben-Artikel mit Unterstrich: `art_777_c`).
  Ausloeser: GmbH-Artikel 21.07. musste zunaechst auf Sekundaerquellen ausweichen;
  Dauerschicht-Zyklus 49 hat den Weg gefunden und alle OR-Zitate amtlich verifiziert.
- **Gilt fuer:** alle KBs/Loops, die Bundesrecht zitieren (firmengruendung, normen,
  baurecht fuer Bundesnormen, energie), ab 21.07.2026.

## 260720 — Stations-Koordination Dauerschicht/Nachtschicht: Dispatch-Protokoll INHALTLICH lesen
- **Regel:** Bevor ein Dauerschicht-/Nachtschicht-Zyklus seine Aufgabe waehlt, liest er das
  juengste Protokoll unter `dispatch/log/` (bzw. die juengste Journalzeile) INHALTLICH —
  der Dateiname allein genuegt nicht. Ausloeser: Zyklus 27 (20.07.) begann das normen-Audit,
  das die Nachtschicht um 22:41 bereits abgeschlossen hatte; der Namens-Check hatte die
  Kollision nicht erkannt. Grosse Einzelaufgaben (Audits, Seeds, Specs) zusaetzlich VOR
  Beginn per Journalzeile «in Arbeit» ankuendigen, damit die andere Station sie sieht.
- **Gilt fuer:** MacBook-Dauerschicht-Loop und Mac-Mini-Nachtschicht, ab 20.07.2026.

## 260719 — Kontext-Diaet: Grundkontext schlank halten
- **Regel:** CLAUDE.md ist Wegweiser, nicht Dokumentation (Einzeiler-Tabellen; Langtexte
  gehoeren in SKILL.md/agents/wiki). Diese Datei bleibt konsolidiert; Historie ins Archiv.
  Lern-Loops nutzen das Minimum Viable Model (mechanische Stufen Haiku/Sonnet, Urteil/
  Verifikation Hauptmodell). Vor lese-intensiven Routinen deterministische Vorfilter-Scripts
  (grep-Prinzip) statt Rohmaterial-Lektuere.
- **Gilt fuer:** alle Stationen, alle Loops, ab 19.07.2026.

## 260714 — Aktueller Takt-Zustand (konsolidiert; ersetzt 260711/260712/260712b–e/260713)
- **Drossel AUFGEHOBEN am 25.07.2026 auf ausdrueckliche Anweisung Raphaels** (siehe Kopfeintrag
  260725 «Vollgas wieder aktiv»): STOP-Dateien entfernt, Endlos-Runner auf beiden Stationen
  wieder autorisiert; `vollgas-chef-radar` darf NICHT mehr eigenmaechtig drosseln. Der urspruengliche
  Drossel-Grund (Wochenlimit 81 %, 14.07.) ist ueberholt. Selbst-Ende des Runners weiterhin
  11.08.2026, sofern nicht anders angewiesen.
- **Trainings-/Lern-Loops:** max. 1x taeglich je KB, im Nachtfenster 22:00–06:00, gestaffelt;
  rechenintensive/NAS-abhaengige Laeufe als lokale Tasks auf dem Mac Mini, nie als Cloud-Routine.
- **Arbeitsteilung:** MacBook Pro baurecht/twin/immobewertung/spec/wettbewerbs-dna + Normen
  SIA/VKF; Mac Mini energie/planungsgrundlagen/synobsis + Normen DIN/VSS/RAL. Kein Loop doppelt.
- **Qualitaetsleitplanken unveraendert:** nichts erfinden; Status-Hebung auf `established`
  nur nach unabhaengiger Verifikation (Refuter-Agenten oder Volltextabgleich); Workflows fuer
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

## 260710 — Logbuch-Radar: JEDEN Morgen genau EINE Briefing-Mail
- **Regel:** Taeglich eine Mail an rj@ — auch wenn nichts ansteht (dann 3–5 Zeilen Lagebild).
  Ergebnis-Ebene, keine Prozess-Beschreibung: «Erledigt seit gestern» (Kurzbeleg), «Ueberfaellig»,
  «Naechste 7 Tage», «In Beobachtung» (Stichzeilen), «Vorschlag Kalendereintraege»; leere
  Sektionen weg. Kuerze durch Verdichtung, nicht durch Weglassen der Mail. Kein stummer Modus.
- **Gilt fuer:** logbuch-radar, Skill logbuch, sinngemaess hub-chef (EIN Tagesbriefing).

## 260709 — Mails UND Anhaenge wirklich lesen; Status aus dem BELEG
- **Regel:** (1) Anhaenge sind Pflichtlektuere: bei jedem belegabhaengigen Punkt (Rechnung,
  Zahlung, Verfuegung, Vertrag, Offerte) das PDF oeffnen und die Fakten (Betrag, Valuta,
  Absender/Empfaenger, Referenz) dem Beleg entnehmen; fehlende Anhaenge via Spotlight/`mdfind`/
  Outlook-Cache lokalisieren. (2) Status NIE aus Absichtserklaerungen («wird ueberwiesen»),
  nur aus Belegen; Zusage ohne Beleg = weiter beobachten. (3) Kein Punkt bleibt tagelang
  «offen», ohne den neuesten Thread inkl. Anhang geprueft zu haben; Fremd-Rechnungen sind
  keine JANS-Aktion, sobald der Beleg die Zahlung zeigt. (4) Relevante Mails ganz lesen, um
  den Sachverhalt zu verstehen. (5) Eingehend ↔ ausgehend paaren: hat eine spaetere ausgehende
  Mail das Anliegen geloest, ist der Punkt ERLEDIGT (mit Beleg schliessen).
- **Gilt fuer:** JEDE Arbeit mit Mails/Belegen (Radar, hub-chef, /morgen, mahnwesen,
  zahlungsabgleich, kostenkontrolle, Offert-/Rechnungspruefung), alle Stationen.

## 260702 — Buchhaltung: bexio fuehrend; buchen NUR nach Einzelfreigabe
- **Regel:** bexio ist die Quelle der Wahrheit; OneDrive-Buchhaltungsablage nur Jahres-Archiv.
  Claude bucht ausschliesslich nach expliziter Einzelfreigabe je vorgelegter Buchungsliste
  (Trockenlauf zuerst, `--ja`-Muster). NIE automatisch buchen, NIE Zahlungen ausloesen, NIE
  reconcilen/loeschen/stornieren.
- **Gilt fuer:** connectors/bexio.mjs, zahlungsabgleich/mahnwesen/kostenkontrolle/hub-chef.

## 260629 — Baurechtsfrage: ZUERST das Buch-Destillat im Hub
- **Regel:** Bei jeder Baurechtsfrage zuerst `wissen/baurecht/buecher/INDEX.md` + per-Kapitel-
  Destillate (Bd 1+2 Fritzsche/Boesch/Wipf/Kunz) und den amtlichen § aus `wissen/baurecht/raw/`
  konsultieren. Bei Luecken (laut Abdeckungs-Matrix) die Original-Screenshots via
  `seiten-inventar.md` nachlesen UND als Destillat ablegen (Compounding). NIE extern suchen,
  ohne diesen Buch-Layer zuerst geprueft zu haben.
- **Gilt fuer:** Skill baurecht und alle baurechtlich gestuetzten Skills.

## 260627b — Baukoerper: ausgerichtet und gegliedert, nie schraeger Quader
- **Regel:** Projektierte Baukoerper IMMER an Parzelle/Strasse ausrichten (Hauptachse bzw.
  dominante Nachbarbebauung, nie achsparallel zu Landeskoordinaten) und architektonisch
  gliedern wie in den JANS-Referenz-Variantenstudien (Dachform, Staffelung, Firstrichtung).
- **Gilt fuer:** volumenstudie, machbarkeit-studio, machbarkeit, massgebendes-terrain.

## 260627 — 3D-/Situationsmodelle IMMER auf echten swisstopo-Grundlagen
- **Regel:** Gelaende aus swissALTI3D, Nachbargebaeude aus swissBUILDINGS3D, bei Bedarf
  swissSURFACE3D, Parzelle aus amtlicher Vermessung — via bestehende Connectoren (geo-zh.mjs,
  geoshop-zh.mjs, swisstopo STAC) und die Situations-Tools des Skills volumenstudie. Keine
  Platzhalter-Geometrie; nicht beschaffbare Grundlagen als Annahme ausweisen.
- **Gilt fuer:** volumenstudie, machbarkeit-studio, machbarkeit, massgebendes-terrain.

## 260626 — Submissionsunterlagen neutral und offen formulieren
- **Regel:** Keine Angabe zur Vergabeart; nie offenlegen, wer/wie viele eingeladen sind;
  Dokumente generisch («der Anbieter»), nicht auf einen Lieferanten zugeschnitten; keine
  Verweise auf Bestandsvertraege oder KBOB. Sachliche Schnittstellen-Anforderungen erlaubt.
- **Gilt fuer:** Skill ausschreibung und alle Submissions-/Devisierungsunterlagen.

## 260624 — Volumenstudien IMMER auf das maximal zulaessige Volumen
- **Regel:** Zonen-Grundmasse pruefen (baurecht/OEREB/BO) und die bindenden Maxima ausreizen
  (Fassaden-/Gebaeudehoehe, Geschosse, AZ als Deckel); aGF und GV ausweisen, Annahmen markieren.
- **Gilt fuer:** volumenstudie, machbarkeit und alle Massenmodelle.

## 260619 — Dateien/Ordner IMMER mit vollstaendigem Pfad ausweisen
- **Regel:** Jede genannte Datei/jeder Ordner mit komplettem Pfad (lokal/Cloud ab Mount) bzw.
  als vollstaendiger Breadcrumb bei externen Plattformen — nie abgekuerzt, nie nur Dateiname.
- **Gilt fuer:** alle Antworten, alle Skills/Connectoren.

## 260616 — Baurecht: beide Baende pruefen UND zitieren
- **Regel:** Jede Baurechtsanfrage gegen Band 1 UND Band 2 des Standardwerks pruefen; beide im
  Quellenverweis (Band/Kapitel/Seite), nicht einschlaegigen Band kurz vermerken.
- **Gilt fuer:** Skill baurecht, alle baurechtlichen Stellungnahmen.

## 260616 — Kein Rechtsberatungs-Disclaimer in Dokumenten
- **Regel:** Abschliessende Haftungs-/Disclaimer-Bausteine weglassen; Quellenangaben bleiben.
- **Gilt fuer:** alle erzeugten Dokumente.

## 260615 — Bewertungsgutachten: auf die METHODE berufen
- **Regel:** «nach Schweizer Schaetzungsstandard / Schaetzerhandbuch SVKG/SEK/SVIT» formulieren;
  SVKG-Zertifizierung weder behaupten noch verneinen — offen lassen.
- **Gilt fuer:** Bewertungs-Gutachten und Akquise-Texte.

## 260612 — Plattform-Downloads doppelt ablegen, Struktur = exakter Spiegel
- **Regel:** Projektraum-Downloads (z.B. Truninger DS3) doppelt ablegen: geteilte Projekt-Site
  UND interne Site (`99 Grundlagen/<…> DOWNLOAD PROJEKTRAUM/`); Hierarchie als exakter Spiegel
  der Quelle (identische Namen/Verschachtelung, keine Umbenennung).
- **Gilt fuer:** alle Plattform-Downloads in allen Projekten.

## 260611 — C4D-Rendering IMMER ueber die Render-Weiche (Mac Mini)
- **Regel:** Jede C4D-Arbeit ohne Rueckfrage ueber `skills/volumenstudie/tools/render-remote.sh`
  (rendert auf dem Mac Mini, Maxon-Lizenz dort). Lokal nur mit `JANS_RENDER_LOCAL=1`.
- **Gilt fuer:** alle Render-/C4D-Aufrufe.

## 260611 — Sichtbarkeit bei laufenden lokalen Jobs
- **Regel:** Bei laengeren Jobs bevorzugt im Vordergrund warten (Statusanzeige); Hintergrund nur
  bei >~10 Min oder Parallelarbeit — dann explizit ankuendigen.

## 260611 — Konzept-/Pipeline-Dokumente kanonisch aufs NAS
- **Regel:** Nach `/Volumes/daten/jans-ai-hub/docs/konzepte/` (MD als Wahrheit, DOCX/PDF daneben);
  OneDrive-Kopie optional. Ergaenzt sync-kanonische-quelle.md.

## 260611 — Mobile-Ketten nie vom MacBook Pro abhaengig machen
- **Regel:** Always-On-/Automations-Strecken so bauen, dass der MAC MINI der einzige notwendige
  Endpunkt ist; MacBook-Kopplungen sind Geburtsfehler und werden umgezogen.

## 260610 — Inhaber-Auftraege als Lernsignal
- **Regel:** Nach substanziellen Auftraegen verallgemeinerbare Erkenntnisse in die passende KB
  zurueckschreiben, Auftragsmuster als Skill-/Rule-Verbesserung vorschlagen, Audits unter docs/
  versionieren. Nicht jede Kleinanfrage.

## 260609 — Tool-Berechtigungen immer erlauben
- **Regel:** Eingerichtete Werkzeuge/Connectoren ohne Rueckfrage nutzen; fehlt ein neuer
  Connector in der Allowlist (`.claude/settings.json`), direkt ergaenzen.

## 260605 — Keine Boilerplate-Disclaimer in Erzeugnissen
- **Regel:** Kein «Verfasst durch … im Auftrag …», keine generischen Haftungsausschluesse;
  substanzielle fallbezogene Vorbehalte bleiben erlaubt.

## 260603/260604 — Ablage: MD+DOCX+PDF im eigenen Datums-Ordner
- **Regel:** Jedes inhaltliche MD-Erzeugnis zusaetzlich als DOCX+PDF, alle drei im eigenen
  Unterordner nach Benennungsprinzip (YYMMDD-Titel = Namensstamm). Verankert in
  `dateinamen-konvention.md`; Konvertierung via `skills/studien-generator/tools/md2docx.py`.

## 260602 — Promotete Regeln (Verweise)
- NAS kanonisch / Sync-Disziplin → Rule `sync-kanonische-quelle.md`.
- Korrektur-Harness-Pflicht vor jedem Versand → Skill `korrektur` + Stop-Hook
  `scripts/umlaut-guard.sh`.
- Meta-Lern-Loop / Skill-Contract → `skills/SKILL-CONTRACT.md`, Rules `auftrags-dekomposition`/
  `identifikatoren-verifizieren`, Skill `masterclass` (harness-review).

## 260601 — Dokument-/Tabellen-Detailregeln
- Keine dekorativen Symbole/Emojis in JANS-Dokumenten; Status ueber Text/Schriftschnitt.
- Excel/Tabellen im JANS-Layout (Cambria, schwarz); Submittentenlisten: 3 Unternehmen je
  Gewerk, Gewerk-Bloecke klar getrennt, je Firma Kontaktperson/E-Mail/Telefon (Platzhalterlinie
  statt raten), Abgleich gegen den realen Postausgang vor Fertigstellung.

## Eintrags-Format (neueste zuoberst)

```
## YYMMDD — <Kurztitel>
- **Regel:** <imperativer Kern>
- **Gilt fuer:** <Anwendungsbereich>
```

Ausloeser-Zitate und abgeloeste Eintraege gehoeren ins Archiv, nicht hierhin. Widerspricht
eine neue Verbesserung einem Eintrag: Eintrag korrigieren statt doppeln. Waechst ein Thema:
eigene Rule-Datei (README registrieren, @-Import ergaenzen), hier nur Verweis.
