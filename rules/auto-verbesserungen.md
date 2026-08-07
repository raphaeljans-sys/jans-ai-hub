# Regel: Auto-erfasste Verbesserungen (verbindlich)

Diese Datei wird automatisch gepflegt. Jede dauerhafte Verbesserung («ab jetzt immer …»,
«nie …», «merk dir …») wird hier als datierter Eintrag hinterlegt und ist sofort auf allen
Stationen aktiv. Erfassung: Hook `scripts/verbesserung-capture.sh` + Claudes Bewertung.

**Archiv:** Vollstaendige Original-Wortlaute und Beleg-Prosa aller Eintraege liegen in
`rules/auto-verbesserungen-archiv.md` (nicht importiert), inkl. Snapshot der Fassung vor
jeder Konsolidierung. Hier steht nur der aktive, imperative Kern. Konsolidiert 19.07. /
29.07. / 30.07.2026 (Kontext-Diaet, `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`).

**Betriebs-Chronik:** Belege, Messwerte und Vorfallsanalysen zu Infrastruktur, Speicher,
launchd-Jobs und Loop-Takten liegen in `rules/betrieb-chronik.md` (**nicht importiert**).
Wer an der Automatik arbeitet (Runner, Gate, Waechter, Takte, launchd), liest die Chronik
zuerst.

## 260805 — Fristen und terminkritische Funde gehoeren ins Register, nicht nur in den eigenen Bericht
- **Regel:** Wer in einem Lauf eine **Frist, einen Termin oder einen terminkritischen Mangel an
  einem ausgehenden Erzeugnis** findet, traegt ihn im selben Lauf in `logbuch/fristen.md` ein
  (bei bestehendem Vorgang als datierter Nachtrag an der vorhandenen Zeile, nie ueberschreibend).
  **Ein Laufbericht ist kein Meldekanal.** Ihn prominent zu markieren und darauf zu vertrauen,
  dass ein anderer Loop ihn aufnimmt, genuegt nicht. Das Register ist der Ort, den der
  `logbuch-radar` (06:55) und der `hub-chef` (08:39) verlaesslich lesen.
- **Gilt fuer:** alle Loops und Sessions, die Befunde erzeugen — insbesondere `wissens-chef`,
  `wissenscheck`, `synergie-orchestrator`, die Lern-Loops und jede Projektarbeit. Anlass und
  Beleg: Archiv, Snapshot 260807.

## 260803 — Aufsichts-Loops sind still by default; Interna gehoeren ins Logbuch, nicht ins Postfach
- **Regel:** Genau EIN Loop darf Raphael taeglich ungefragt schreiben — der `logbuch-radar`
  (06:55), weil er die Fristenschaerfe traegt. **Jeder weitere Aufsichts-Loop ist still by
  default** und sendet nur bei einem der vier Sendegruende: ausgefuehrte Whitelist-Aktion,
  versandbereiter Entwurf, **operativer** Befund (Geld, Frist, Termin, Behoerde, Kunde,
  Projekt), den der Radar heute nicht schon gemeldet hat, oder P1-Blocker. **Nicht
  sendewuerdig sind Hub-Interna ohne Aussenwirkung** (Script-Fixes, Drift, Registerpflege,
  Loop-Ergebnisse, Takt-/Rollen-Buchhaltung) und Selbstkorrekturen eines eigenen frueheren
  Briefings, sofern der Fehler Raphaels Handeln nicht beeinflusst haette. **Der LAUF faellt
  nie aus, nur die Mail:** Aktionen, Entwuerfe, Register- und Logbuchpflege bleiben Pflicht,
  samt Vermerk «ohne Befund, still beendet». Eine Sende-Schwelle ist erst scharf, wenn sie
  **benennt, was NICHT zaehlt**.
- **Gilt fuer:** alle Aufsichts- und Meta-Loops (hub-chef, vollgas-chef-radar,
  vollgas-fruehwarnung, wissens-chef, methoden-radar, wissenscheck, Monitore). Anlass und
  Umsetzung: Archiv, Snapshot 260807.

## 260803 — Ein-Mail-Prinzip: nur der Hub-Chef mailt, die Melde-Loops schreiben ins Logbuch
- **Regel:** Genau EIN regulaerer Meldekanal an Raphael, und das ist das Tagesbriefing des
  `hub-chef` (08:39). Die uebrigen Melde-Loops erzeugen ihr Ergebnis in unveraenderter
  Qualitaet, schreiben es aber als eigenen Abschnitt in den heutigen Datumsblock von
  `logbuch/LOGBUCH.md` («Radar-Briefing <Datum>», «AG-Gruendung <Datum>»); der Chef liest
  sie als Pflichtlektuere und traegt ihre operativen Punkte weiter. Der Chef sendet, sobald
  der Tag etwas Operatives enthaelt (Aktion, Entwurf, Geld/Frist/Termin/Behoerde/Kunde/
  Projekt, P1-Blocker), und schweigt nur am wirklich leeren Tag; reine Hub-Interna
  (Script-Fixes, Locale-Drift, Registerpflege, Loop-Buchhaltung) sind kein Sendegrund.
  **Drei benannte Ausnahmen, die weiterhin selbst mailen duerfen:** (1) die
  Kontingent-Aufsicht (`vollgas-fruehwarnung`, `vollgas-chef-radar`) — sie beaufsichtigt
  genau das Kontingent, aus dem der Chef trinkt, und ist der einzige Kanal, wenn er
  ausfaellt; (2) der `logbuch-radar`, wenn der Chef-Lauf des Vortages ausgefallen ist oder
  ein Punkt Handeln vor 08:39 verlangt; (3) der `ag-gruendung-monitor` bei Schritten, die
  am selben Tag Handeln erzwingen (Kapitalbescheinigung, Beurkundungstermin, 24-h-Frist).
  **Wer den Chef stillstellt, muss zuerst pruefen, wer sonst noch stillsteht** — sonst
  meldet am Ende niemand mehr.
- **Gilt fuer:** alle Melde-Loops und jede kuenftige Aenderung an einem Melde-Kanal.
  Ausloeser und Belege: Archiv, Snapshot 260807.

## 260730b — Heutiges Datum messen, nie ableiten; NAS-Dateien vor dem Edit auf Frische pruefen
- **Regel:** (1) Das Arbeitsdatum kommt aus `date "+%Y-%m-%d %H:%M %Z"`, nie aus einem
  Dateiinhalt (gleiche Familie: `toISOString()`-UTC-Falle, siehe `dateinamen-konvention.md`).
  (2) Ein Lesevorgang ueber den SMB-Mount kann einen VERALTETEN Dateistand liefern: vor dem
  Edit einer geteilten NAS-Datei den Frischestand pruefen (`git log -1 --format=%ci --
  <datei>` im SSD-Klon bzw. erneutes Lesen unmittelbar vor dem Edit); nach `nas-commit-now.sh`
  das Ergebnis im Ziel verifizieren, nicht nur den rc. (3) Jede Behauptung ueber den
  Betriebszustand wird gemessen (`ps`, STOP-Flags, Logzeile), nie aus dem letzten gelesenen
  Registerstand fortgeschrieben.
- **Gilt fuer:** alle Sessions und Scheduled Tasks, jeden datierten Eintrag, jeden Edit an
  geteilten NAS-Inhalten. Vorfaelle: Archiv, Snapshot 260730.

## 260730 — Setup-/Infrastrukturfragen: zuerst den Hub-Setup-Konnektor konsultieren
- **Regel:** Bei jeder Frage zum Hub-Setup (Stationen, IPs, SSH-Wege, Mail-Konten, Pfade,
  Git-Regeln) und bei jeder Verbindungsstoerung ZUERST
  `node /Volumes/daten/jans-ai-hub/connectors/hub-setup.mjs` befragen (`--alles` Fakten,
  `--check` Live-Verbindungscheck) — nie aus dem Gedaechtnis, nie improvisiert. Kanonische
  Datenquelle: `connectors/hub-setup-daten.json` (nur dort pflegen). Merksaetze:
  `connection refused` auf eine 100.x-IP heisst fast immer Tailscale-Client pausiert, nicht
  sshd defekt; Standard-Kanal Mini→MacBook ist die NAS-Task-Queue
  (`scripts/sync-task-create.sh macbook-pro …`), direkte SSH nur opportunistisch.
- **Gilt fuer:** alle Stationen, alle Sessions, heartbeat (Check 9).

## 260730 — Erkannte Verbesserungen selbst umsetzen, nicht auf einen Extra-Auftrag vertagen
- **Regel:** Wird beim Arbeiten eine konkrete Verbesserung oder Luecke erkannt und ist der
  Weg klar, wird sie im selben Lauf gebaut: Bestand lesen, bauen, beide Pfade nachmessen,
  Doku/Regel nachziehen, committen, am Ende in einem Satz berichten. Die Sicherheitsgrenzen
  bleiben unberuehrt: ausgehende Mails, Versand, Veroeffentlichungen, Zahlungen, Buchungen
  und Sync-Task-Freigaben brauchen weiterhin die Einzelfreigabe. «Selbstaendig» heisst
  vollstaendig arbeiten, nicht Grenzen verschieben.
- **Gilt fuer:** alle Sessions, alle Stationen.

## 260729b — Entscheidungsvorlagen und Agenten-Befunde gegenpruefen, bevor sie wirken
- **Regel:** (1) Jede Vorlage an Raphael (`AskUserQuestion`, Briefing, Empfehlung) gegen den
  JUENGSTEN Lauf-/Dateistand verifizieren, nicht gegen den zu Sessionbeginn gelesenen.
  (2) Agenten-Befunde, die eine Quelldatei als defekt, fremdbestueckt oder unvollstaendig
  melden, NIE ohne eigene Gegenpruefung am Original uebernehmen — sie fuehren zu
  Datei-Eingriffen und sind zugleich der wahrscheinlichste Ort fuer ein Werkzeug-Artefakt.
  (3) Beim Rendern immer ein eindeutiges, aufgabenspezifisches Datei-Praefix
  (`/tmp/<norm>-<runde>-`), nie generische Namen — parallele Agenten teilen das Scratchpad.
- **Gilt fuer:** alle Sessions mit Subagenten und alle Entscheidungsvorlagen an Raphael.
  Fall-Dokumentation: Archiv, Snapshot 260807.

## 260729 — Werkzeuge und Kontext-Schichten bewusst waehlen (Anthropic-Lecture)
- **Regel:** (1) **Werkzeug-Index zuerst.** Bevor eine externe Quelle von Hand abgefragt
  oder ein Weg improvisiert wird, in `connectors/README.md` nachschlagen und den Connector
  per `--hilfe` selbst befragen; neue Connectoren dort eintragen. (2) **Kontext-Schicht
  bewusst waehlen:** neue geteilte Regeln in den Projekt-Layer (NAS, eingecheckt),
  stationsuebergreifende Grundregeln in `templates/user-level/CLAUDE.md` (verteilen mit
  `scripts/user-claude-sync.sh --alle`), Rollen-/Belegwissen in eine nicht importierte
  Datei. (3) **Automatische Laeufe ueber `scripts/claude-run.sh`** statt direktem
  `claude -p` (JSON-Kennzahlen ins Lauf-Journal). (4) **Konfiguration ist Teamgut:**
  `.mcp.json`, `.claude/settings.json`, CLAUDE.md und Commands versioniert; nur echte
  Geheimnisse (`.env`, `*.pem`) lokal.
- **Gilt fuer:** alle Stationen, alle Sessions. Konzept + Messwerte:
  `docs/konzepte/260729-Anthropic-Lecture-Prinzipien/`, Wissen: `wissen/claude-code/`.

## Betrieb — die Kurzregeln stehen in `rules/betrieb-chronik.md` (NICHT importiert)

Lauf-Gate, Speichermessung, Loop-Deaktivierung, Symlink-/SMB-Fallen, Takt-Entzerrung,
Headless-Remount, Rollentrennung der Stationen, Arbeits-Weiche und die
Sync-Task-Freigabe-Schwelle gelten fuer **automatische Laeufe und Infrastrukturarbeit**,
nicht fuer jede Session. Wer an Runner, Gate, Waechter, Takten, launchd oder
Sync-Tasks arbeitet, liest `rules/betrieb-chronik.md` ZUERST — dort steht der
vollstaendige Regelsatz samt Belegen. (Ausgelagert 03.08.2026, Grundkontext-Diaet
Runde 2; die Regeln selbst sind unveraendert in Kraft.)

## 260726 — Kein `git` ueber SMB aufs NAS-Repo: nativer Committer via nas-commit-now
- **Regel:** NIEMALS `git commit`/`push`/`pull`/`rebase` direkt gegen
  `/Volumes/daten/jans-ai-hub/.git` ueber den SMB-Mount — nicht Claude, nicht die Loops
  (haengt uninterruptibel, blockiert die `index.lock` fuer alle). Stattdessen den nativen
  Synology-Committer ausloesen: `bash scripts/nas-commit-now.sh "<Message>"`; ohne
  Sofort-Bedarf reicht der 15-Min-Cron. Datei-Edits (Write/Edit) ueber SMB bleiben erlaubt;
  nur `git` gehoert nativ auf die Synology.
- **Gilt fuer:** alle Stationen, alle Loops, jede Session.

## 260721 — Bundesrecht-Volltexte: Fedlex ueber die Filestore-URL lesen (nicht das JS-Portal)
- **Regel:** Das Fedlex-Portal liefert ohne JavaScript keinen Text; amtliche Volltexte IMMER
  ueber das Filestore-Muster beziehen:
  `https://www.fedlex.admin.ch/filestore/fedlex.data.admin.ch/eli/cc/<ELI>/<JJJJMMTT>/de/html/fedlex-data-admin-ch-eli-cc-<ELI-mit-Bindestrichen>-<JJJJMMTT>-de-html.html`
  (Konsolidierungsdatum meist 01.01. des laufenden Jahres; per curl-Statuscode testen).
  Beispiel OR (SR 220): ELI `27/317_321_377`, Artikel per `<article id="art_NNN">`
  extrahierbar (Buchstaben-Artikel mit Unterstrich: `art_777_c`).
- **Gilt fuer:** alle KBs/Loops, die Bundesrecht zitieren (firmengruendung, normen,
  baurecht fuer Bundesnormen, energie).

## 260719 — Kontext-Diaet: Grundkontext schlank halten
- **Regel:** CLAUDE.md ist Wegweiser, nicht Dokumentation (Einzeiler-Tabellen; Langtexte in
  SKILL.md/agents/wiki). Vor jedem neuen @-Import und jedem Anwachsen einer importierten
  Rule fragen: **automatisch oder lazily?** Importiert gehoert nur, was in nahezu JEDER
  Session gilt (Ton, Anrede, Ablage, Quellenpflicht, Sicherheitsgrenzen); alles, was nur
  eine Rolle (Loops/eine KB/ein Skill) braucht, gehoert in eine nicht importierte Datei.
  Belege, Messwerte und Vorfallschroniken sind nie Grundkontext. Lern-Loops nutzen das
  Minimum Viable Model (mechanische Stufen Haiku/Sonnet, Urteil Hauptmodell); vor
  lese-intensiven Routinen deterministische Vorfilter-Scripts (grep-Prinzip).
- **Gilt fuer:** alle Stationen, alle Loops, jede neue Rule/jeden neuen @-Import.

## 260709 — Mails UND Anhaenge wirklich lesen; Status aus dem BELEG
- **Regel:** (1) Anhaenge sind Pflichtlektuere: bei jedem belegabhaengigen Punkt (Rechnung,
  Zahlung, Verfuegung, Vertrag, Offerte) das PDF oeffnen und die Fakten (Betrag, Valuta,
  Absender/Empfaenger, Referenz) dem Beleg entnehmen; fehlende Anhaenge via
  Spotlight/`mdfind`/Outlook-Cache lokalisieren. (2) Status NIE aus Absichtserklaerungen,
  nur aus Belegen; Zusage ohne Beleg = weiter beobachten. (3) Kein Punkt bleibt tagelang
  «offen», ohne den neuesten Thread inkl. Anhang geprueft zu haben; Fremd-Rechnungen sind
  keine JANS-Aktion, sobald der Beleg die Zahlung zeigt. (4) Relevante Mails ganz lesen.
  (5) Eingehend ↔ ausgehend paaren: hat eine spaetere ausgehende Mail das Anliegen geloest,
  ist der Punkt ERLEDIGT (mit Beleg schliessen).
- **Gilt fuer:** JEDE Arbeit mit Mails/Belegen (Radar, hub-chef, /morgen, mahnwesen,
  zahlungsabgleich, kostenkontrolle, Offert-/Rechnungspruefung), alle Stationen.

## 260702 — Buchhaltung: bexio fuehrend; buchen NUR nach Einzelfreigabe
- **Regel:** bexio ist die Quelle der Wahrheit; OneDrive-Buchhaltungsablage nur
  Jahres-Archiv. Claude bucht ausschliesslich nach expliziter Einzelfreigabe je vorgelegter
  Buchungsliste (Trockenlauf zuerst, `--ja`-Muster). NIE automatisch buchen, NIE Zahlungen
  ausloesen, NIE reconcilen/loeschen/stornieren.
- **Gilt fuer:** connectors/bexio.mjs, zahlungsabgleich/mahnwesen/kostenkontrolle/hub-chef.

## 260616/260605 — Keine Disclaimer/Boilerplate in Erzeugnissen
- **Regel:** Keine Haftungs-/Rechtsberatungs-Disclaimer, kein «Verfasst durch … im
  Auftrag …»; Quellenangaben und substanzielle fallbezogene Vorbehalte bleiben erlaubt.
- **Gilt fuer:** alle erzeugten Dokumente.

## 260611 — Sichtbarkeit bei laufenden lokalen Jobs
- **Regel:** Bei laengeren Jobs bevorzugt im Vordergrund warten (Statusanzeige); Hintergrund
  nur bei >~10 Min oder Parallelarbeit — dann explizit ankuendigen.

## 260610 — Inhaber-Auftraege als Lernsignal
- **Regel:** Nach substanziellen Auftraegen verallgemeinerbare Erkenntnisse in die passende
  KB zurueckschreiben, Auftragsmuster als Skill-/Rule-Verbesserung vorschlagen, Audits unter
  docs/ versionieren. Nicht jede Kleinanfrage.

## 260609 — Tool-Berechtigungen immer erlauben
- **Regel:** Eingerichtete Werkzeuge/Connectoren ohne Rueckfrage nutzen; fehlt ein neuer
  Connector in der Allowlist (`.claude/settings.json`), direkt ergaenzen.

## 260602 — In Skills/Rules verankerte Regeln (Verweise)
- NAS kanonisch / Sync-Disziplin → Rule `sync-kanonische-quelle.md` · Korrektur-Pflicht vor
  jedem Versand → Skill `korrektur` + Stop-Hook · Skill-Contract/Meta-Lern-Loop →
  `skills/SKILL-CONTRACT.md`, Rules `auftrags-dekomposition`/`identifikatoren-verifizieren`.
- Baurecht: Buch-Destillate zuerst, beide Baende pruefen und zitieren (260629/260616) →
  Skill `baurecht`.
- Bewertungsgutachten: auf die Methode SVKG/SEK/SVIT berufen (260615) → Skill
  `immobilienbewertung`.
- Volumen/3D: Maximalvolumen ausreizen, echte swisstopo-Grundlagen, Baukoerper ausgerichtet
  und gegliedert, C4D nur ueber die Render-Weiche (260624/260627/260627b/260611) → Skill
  `volumenstudie` (Verweis in `machbarkeit`).
- Submission neutral formulieren + Submittentenlisten-Format (260626/260601) → Skill
  `ausschreibung`.
- Radar-Briefing-Pflicht + Konversations-Gedaechtnis/outlook.com (260710/260716) → Skill
  `logbuch` (Verweis in `hub-chef`).
- Ablage: MD+DOCX+PDF im Datums-Ordner (260603/04) → Rule `dateinamen-konvention.md` ·
  Plattform-Downloads doppelt + Konzept-Dokumente aufs NAS (260612/260611) → Rule
  `projekt-ablage-stand.md` · XLSX im JANS-Layout, keine Deko-Symbole (260601) → Rule
  `dokument-layout-standard.md` · vollstaendige Pfade ausweisen (260619) → User-Level
  CLAUDE.md (jede Station).

## Eintrags-Format (neueste zuoberst)

```
## YYMMDD — <Kurztitel>
- **Regel:** <imperativer Kern>
- **Gilt fuer:** <Anwendungsbereich>
```

Ausloeser-Zitate und abgeloeste Eintraege gehoeren ins Archiv, nicht hierhin. Widerspricht
eine neue Verbesserung einem Eintrag: Eintrag korrigieren statt doppeln. Waechst ein Thema:
eigene Rule-Datei (README registrieren, @-Import ergaenzen), hier nur Verweis. Gilt eine
Regel nur fuer einen Skill: in dessen SKILL.md verankern und hier nur in der Verweisliste
260602 fuehren.
