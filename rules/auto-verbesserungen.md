# Regel: Auto-erfasste Verbesserungen (verbindlich)

Diese Datei wird automatisch gepflegt. Jede dauerhafte Verbesserung («ab jetzt immer …»,
«nie …», «merk dir …») wird hier als datierter Eintrag hinterlegt und ist sofort auf allen
Stationen aktiv. Erfassung: Hook `scripts/verbesserung-capture.sh` + Claudes Bewertung.

**Archiv:** Die vollstaendigen Original-Wortlaute aller Eintraege (inkl. Ausloeser-Zitate
und Historie) liegen in `rules/auto-verbesserungen-archiv.md` (nicht importiert). Hier
steht nur der aktive, imperative Kern. Konsolidiert am 19.07.2026 (Kontext-Diaet,
Konzept: `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`).

**Betriebs-Chronik:** Die Belege, Messwerte und Vorfallsanalysen zu Infrastruktur, Speicher,
launchd-Jobs und Loop-Takten liegen in `rules/betrieb-chronik.md` (**nicht importiert**).
Diese Datei behaelt davon nur die Kurzregeln im Abschnitt «Betrieb» unten. Wer an der
Automatik arbeitet (Runner, Gate, Waechter, Takte, launchd), liest die Chronik zuerst.
Ausgelagert am 29.07.2026 (Kontext-Diaet 2.0,
`docs/konzepte/260729-Anthropic-Lecture-Prinzipien/`).

## 260729b — Entscheidungsvorlagen und Agenten-Befunde gegenpruefen, bevor sie wirken
- **Regel:** (1) **Vorlage gegen den JUENGSTEN Stand pruefen, nicht gegen den zuletzt selbst
  gelesenen.** Bevor Raphael ein Entscheid vorgelegt wird, ist die Faktenbasis am aktuellsten
  Lauf-/Dateistand zu verifizieren — nicht am Stand, den die eigene Session zu Beginn gelesen
  hat. Belegt am 29.07.2026: die Lignum-Taktungsfrage wurde mit dem Stand von Run 35 vorgelegt,
  obwohl Run 36 diesen wenige Stunden zuvor entkraeftet hatte; Raphael entschied auf falscher
  Grundlage und musste nach der Korrektur anders entscheiden. Gilt fuer jede
  `AskUserQuestion`-Vorlage, jedes Briefing und jede Empfehlung. (2) **Agenten-Befunde, die eine
  Quelldatei als defekt, fremdbestueckt oder unvollstaendig melden, NIE ohne eigene Gegenpruefung
  am Original uebernehmen** — sie fuehren zu Datei-Eingriffen und sind zugleich der
  wahrscheinlichste Ort fuer ein Werkzeug-Artefakt. Belegt am 29.07.2026: ein Agent meldete eine
  Norm-PDF als fehlerhaft zusammengesetzt; die Gegenpruefung am Original widerlegte das
  vollstaendig. (3) **Beim Rendern immer ein eindeutiges, aufgabenspezifisches Datei-Praefix**
  (`/tmp/<norm>-<runde>-`), nie generische Namen wie `tb-01.png`: parallele Agenten teilen sich
  das Scratchpad und lesen sonst das Alt-Rendering einer fremden Quelle — genau die Ursache des
  Falsch-Positivs unter (2).
- **Gilt fuer:** alle Sessions mit Subagenten und alle Entscheidungsvorlagen an Raphael.
  Fall-Dokumentation: `wissen/normen/outputs/2026-07-29_normen-nacht-run37.md`; die
  loop-spezifische Langfassung steht als Methodik-Pflicht 5 in
  `wissen/normen/training/PROGRAMM.md` (nicht importiert).

## 260729 — Werkzeuge und Kontext-Schichten bewusst waehlen (Anthropic-Lecture)
- **Regel:** (1) **Werkzeug-Index zuerst.** Bevor eine externe Quelle von Hand abgefragt
  oder ein Weg improvisiert wird, in `connectors/README.md` nachschlagen (alle 16
  Connectoren mit Zweck, Flags, Zugang) und den Connector per `--hilfe` selbst befragen.
  Neue Connectoren werden dort eingetragen — ein Werkzeug, das Claude nicht kennt, ist
  keines. (2) **Kontext-Schicht bewusst waehlen:** neue geteilte Regeln in den Projekt-Layer
  (NAS, eingecheckt), stationsuebergreifende Grundregeln in `templates/user-level/CLAUDE.md`
  (verteilen mit `scripts/user-claude-sync.sh --alle`), Rollen-/Belegwissen in eine **nicht
  importierte** Datei. (3) **Automatische Laeufe ueber `scripts/claude-run.sh`** statt
  direktem `claude -p` — er liefert JSON-Kennzahlen ins Lauf-Journal und gibt trotzdem
  reinen Text zurueck. (4) **Konfiguration ist Teamgut:** `.mcp.json`, `.claude/settings.json`,
  CLAUDE.md und Commands gehoeren versioniert; nur echte Geheimnisse (`.env`, `*.pem`)
  bleiben lokal.
- **Gilt fuer:** alle Stationen, alle Sessions. Konzept + Messwerte:
  `docs/konzepte/260729-Anthropic-Lecture-Prinzipien/`, Wissen: `wissen/claude-code/`.

## Betrieb — Kurzregeln (Belege in `rules/betrieb-chronik.md`, nicht importiert)

Gilt fuer jeden **automatischen** Lauf und jede Aenderung an Takt, Loop-Status oder
Infrastruktur. Wer daran arbeitet, liest zuerst die Chronik — dort stehen die Messwerte,
Vorfaelle und die vollstaendigen Inventare.

- **Lauf-Gate vor jedem automatischen Lauf.** Jeder Mechanismus, der `claude` automatisch
  startet, ruft vorher `scripts/lauf-gate.sh <name>` und tritt bei Exit 1 still zurueck
  (MacBook max. 2 Laeufe / 3 GB, Mini 3 / 4 GB). NICHT in `dispatch-run.sh` — der manuelle
  Weg vom Handy wird nie abgewiesen. Die App-Scheduled-Tasks erreichen das Gate baulich
  nicht; fuer sie schuetzt allein die Taktentzerrung (min. 2 h Abstand).
- **Speicher immer MESSEN, nie raten.** Massgeblich ist `vm_stat` free+inactive+purgeable
  plus `sysctl kern.memorystatus_vm_pressure_level`. NIE `top`-«unused» (immer nahe null)
  und NIE `ps`-RSS (zeigt komprimierten Speicher nicht) als Schwellwert.
- **Deaktivierung eines Loops braucht ALLE Orte:** Registry (`update_scheduled_task`) ·
  Runner (`EXCLUDE_RE`/SKILL.md-Frontmatter) · launchd-Jobs (`~/Library/LaunchAgents`).
  Ein Loop mit eigenem Scheduled Task gehoert NIE zusaetzlich in den Endlos-Runner.
  Ein laufender Runner haelt `EXCLUDE_RE` im Speicher — Filteraenderung wirkt erst nach Neustart.
- **Leerlauf am LIEFER-DELTA messen**, nie am Registry-`lastRunAt` (markiert den Start, nicht
  die Lieferung). Massgeblich ist die Lauf-Journalzeile in `logbuch/laeufe/YYMMDD-laeufe.jsonl`
  (seit 29.07. maschinell via `--output-format json`) plus Commit/Datei-Delta. 3x Delta Null
  in Folge → Bestaetigungstakt, 5x → deaktivieren. **Null-Ertrag ist NICHT Delta Null.**
  Operative Tasks (logbuch-radar, hub-chef, mahnwesen, zahlungsabgleich, heartbeat,
  konversations-log, Monitore) sind ausgenommen und werden nie angetastet.
- **Erst nach Sicht-Verifikation als vollzogen dokumentieren** (Prozess-PID, frische Logzeile
  im neuen Format, belegte Stille). Bei launchd-Jobs mit SSD-Vorrang wirkt eine NAS-Korrektur
  erst nach `nas-commit-now` → SSD-Pull. Eine neue Schutzmechanik ist erst fertig, wenn ihr
  Abweisungs- UND ihr Freigabepfad je einmal nachgemessen wurden.
- **Eine falsche Messgroesse sofort im ganzen Bestand suchen** (`grep -rl` ueber `scripts/`),
  nicht nur am Fundort beheben.
- **Headless-Remount der mobilen Station:**
  `osascript -e 'mount volume "smb://diskstation918.tail8265aa.ts.net/daten"'` — nie
  `open smb://` und nie ueber die LAN-IP; Schreiblogik idempotent halten.
- **Zweitinstanz-Check — zweistufig, sonst greift er nicht:** vor Run-Nummer und Register-Edit
  per `ps`/Lock pruefen, ob derselbe Loop auf demselben Host schon laeuft; wenn ja zuruecktreten
  und nur einen eindeutig benannten `outputs/`-Report schreiben. **Zusaetzlich die Run-Nummer
  unmittelbar VOR dem Schreiben erneut gegen die juengste `outputs/`-Datei pruefen.** Beide
  Einzelpruefungen haben je eine blinde Stelle: `ps` findet einen bereits beendeten Vorlauf
  nicht, und die `outputs/`-Sicht zu Laufbeginn findet einen noch laufenden nicht, weil dieser
  seine Datei erst am Ende schreibt. Belegt zweimal: 25.07.2026 (Nummer 21 doppelt) und
  29.07.2026 (Nummer 36 doppelt, trotz bestandenem `ps`-Check).
- **Rollentrennung:** MacBook Pro = Arbeitsstation (keine Lern-Laeufe waehrend der Arbeitszeit);
  Mac Mini traegt die rechen-/NAS-intensiven Loops. Kein Loop laeuft auf beiden Stationen.
- **Parallele Laeufe nur ueber `scripts/multi-claude.sh`** (Worktrees auf der SSD, Instanzzahl
  aus dem real verfuegbaren Speicher; nie Worktrees ueber den SMB-Mount, nie geteilte
  Hub-Inhalte im Worktree editieren).
- **Jeder automatische Lauf `cd`t ins Projekt und protokolliert sein Arbeitsverzeichnis.**
  launchd setzt kein `WorkingDirectory` — ohne `cd` startet der Lauf im Home-Verzeichnis,
  das ausdruecklich **untrusted** ist, und laedt dann WEDER `.claude/settings.json` NOCH
  die Projekt-CLAUDE.md. Er endet trotzdem mit rc=0. Vertrauen pruefen:
  `bash scripts/trust-check.sh --check` (Check 8 im `heartbeat`). Das Home-Verzeichnis nie
  vertrauenswuerdig setzen.
- **Nie ueber API-Key**, nur Abo-Anmeldung. Vor jeder Blocker-Diagnose zuerst
  `set -a; . "$HOME/.jans-dispatch.env"; set +a` laden.

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

## 260719 — Kontext-Diaet: Grundkontext schlank halten
- **Regel:** CLAUDE.md ist Wegweiser, nicht Dokumentation (Einzeiler-Tabellen; Langtexte
  gehoeren in SKILL.md/agents/wiki). Diese Datei bleibt konsolidiert; Historie ins Archiv.
  Lern-Loops nutzen das Minimum Viable Model (mechanische Stufen Haiku/Sonnet, Urteil/
  Verifikation Hauptmodell). Vor lese-intensiven Routinen deterministische Vorfilter-Scripts
  (grep-Prinzip) statt Rohmaterial-Lektuere.
- **Nachtrag 29.07.2026 (Diaet 2.0, Anthropic-Lecture «tune context»):** Vor jedem neuen
  @-Import und vor jedem Anwachsen einer importierten Rule die Frage stellen: **automatisch
  oder lazily?** Automatisch (importiert) gehoert nur, was in nahezu JEDER Session gilt —
  Ton, Anrede, Ablage, Quellenpflicht, Sicherheitsgrenzen. Alles, was nur eine Rolle
  (Loops/Infrastruktur/eine KB/ein Skill) braucht, gehoert in eine **nicht importierte**
  Datei, die der Betroffene bei Bedarf liest. Belege, Messwerte und Vorfallschroniken sind
  nie Grundkontext. Gemessener Ausloeser: `auto-verbesserungen.md` war auf 36 KB gewachsen
  (34 % des gesamten Grundkontexts von ~26'400 Token) und bestand ueberwiegend aus
  Betriebsprotokoll; ausgelagert nach `rules/betrieb-chronik.md`. Beim Erfassen einer neuen
  Verbesserung darum zuerst entscheiden, wohin sie gehoert — nicht reflexhaft hierhin.
- **Gilt fuer:** alle Stationen, alle Loops, jede neue Rule/jeden neuen @-Import, ab 19.07.2026.

## 260716 — Konversations-Gedaechtnis + outlook.com mitscannen
- **Regel:** `logbuch-radar` (06:45) und `hub-chef-taeglich` (08:35) lesen zwingend das
  Tages-Destillat `logbuch/konversationen/YYMMDD-konversationen.md` (erzeugt 06:10 vom Task
  `konversations-log`); Briefing-Sektion «Aus unseren Gespraechen», Register-Quelle
  «Gespraech <Station> <Datum>». **raphaeljans@outlook.com wird mitgescannt** (Apple Mail,
  deutsche Mailboxnamen «Posteingang»/«Gesendete Elemente»). Grenze offen ausweisen: reine
  Claude-App-Chats vom iPhone/iPad sind headless nicht auslesbar.
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
