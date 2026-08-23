# Regel: Auto-erfasste Verbesserungen (verbindlich)

Diese Datei wird automatisch gepflegt. Jede dauerhafte Verbesserung («ab jetzt immer …»,
«nie …», «merk dir …») wird hier als datierter Eintrag hinterlegt und ist sofort auf allen
Stationen aktiv. Erfassung: Hook `scripts/verbesserung-capture.sh` + Claudes Bewertung.

**Archiv:** Vollstaendige Original-Wortlaute und Beleg-Prosa aller Eintraege liegen in
`rules/auto-verbesserungen-archiv.md` (nicht importiert), inkl. Snapshot der Fassung vor
jeder Konsolidierung. Hier steht nur der aktive, imperative Kern. Konsolidiert 19.07. /
29.07. / 30.07. / 07.08.2026 (Kontext-Diaet, `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`).

**Betriebs-Chronik:** Belege, Messwerte und Vorfallsanalysen zu Infrastruktur, Speicher,
launchd-Jobs und Loop-Takten liegen in `rules/betrieb-chronik.md` (**nicht importiert**).
Wer an der Automatik arbeitet (Runner, Gate, Waechter, Takte, launchd), liest die Chronik
zuerst.

## 260823 — Massen-Sweeps über Geschäftsdaten: heikle Ordner vorher ausschliessen
- **Regel:** Bevor ein Agenten-Fan-out, ein Lern-Loop oder ein Destillat-Lauf auf einen **ganzen
  Geschäftsdaten-Baum** gerichtet wird (`/Volumes/daten/04_Buero`, `02_Architektur_Archiv`,
  Projektordner, Mail-Archive), wird die Zielmenge **zuerst bereinigt** und die Ausschlussliste im
  Auftrag ausdrücklich genannt: **Verträge, Bewerbungen und Personaldossiers, Adress- und
  Kontaktsammlungen, Lohn- und Honorardaten, Gesundheits- und Privatunterlagen.** Diese Ordner
  werden gar nicht erst besucht. **Ein Inventar ist keine Entschärfung** — es nennt Namen,
  Beträge und Gegenparteien und ist damit selbst die Weitergabe. Was aus einem solchen Sweep
  entsteht, gehört nie in ein versioniertes, automatisch gepushtes Repo.
- **Warum, mit Beleg:** Am 23.08.2026 richtete ein 50-Agenten-Harness Inventarläufe auf die
  beiden Korpora `buero-referenzen` und `archiv-fachwissen`. Der Sicherheits-Klassifikator stoppte
  den Agenten für `23_Vertraege` mit der zutreffenden Begründung, Vertragsinhalte Dritter würden
  in ein git-verfolgtes, gepushtes Repo gezogen, ohne dass der Auftrag das je benannt hatte.
  **Was er nicht abfing, war `16_Portfolios`** — eine Ablage eingegangener Bewerbungsmappen
  2007–2010; die Inventardatei nannte eine bewerbende Person namentlich und war binnen 15 Minuten
  vom `nas-selfcommit` committet und gepusht (Commit `75d50502`). Die Datei wurde aus dem
  Arbeitsbaum entfernt, die Historie bewusst **nicht** umgeschrieben (privates Repo, und ein
  Force-Push gegen ein Repo, aus dem drei Stationen klonen, während Lern-Läufe hineinschreiben,
  ist gefährlicher als der Befund). **Der Fehler lag im Entwurf, nicht am Klassifikator:** ein
  breiter Auftrag wie «Vollgas, alle Stationen» ist keine Freigabe, Vertrags- und Bewerberdaten
  zu erfassen. Wer den Sweep baut, verantwortet die Zielmenge.
- **Gilt für:** alle Workflows und Agenten-Fan-outs, Skill `wissens-destillat`, alle Lern-Loops,
  alle Stationen. Ergänzt `wissens-bibliothekar.md` (Umgang mit `raw/`) und die Grenzen der
  User-CLAUDE.md.

## 260820 — Abklärungen kurz halten: drei Sätze plus Erklärskizze statt Fliesstext-Dossier
- **Regel:** Das Ergebnis einer **Abklärung** (Montagehöhe, Mass, Apparatewahl, Zuordnung,
  einzelne Fachfrage) wird **kurz** ausgegeben: rund **drei Sätze** mit Empfehlung, Herleitung
  und Vorbehalt, dazu **eine bemasste Erklärskizze**, welche die Zahlen trägt. **Die Skizze
  ersetzt den Text, sie ergänzt ihn nicht.** Keine Kapitelgliederung, keine
  Ausgangslage-Abschnitte, keine Quellenkapitel; Belege gehören als Fussnotenzeile unter die
  Skizze oder in die interne Notiz. Vorgabe Raphael 20.08.2026 zum Erzeugnis
  «Montagehöhe Wandmischbatterie 2619 KISPI», das als zweiseitiges Dossier zu lang geriet:
  die Abklärung selbst war richtig, die Ausführung zu lang.
- **Abgrenzung:** Studien, Berichte, Gutachten, Offerten und Protokolle bleiben ausführlich.
  Kurz ist die **Abklärung**, also die Antwort auf eine einzelne Frage. Die ausführliche
  Herleitung darf weiterhin entstehen, aber als **interne Notiz beim Apparat**, nicht als
  ausgehendes Erzeugnis.
- **Gilt für:** alle Abklärungen und Fachauskünfte mit Dokument-Output, alle Projekte,
  alle Stationen. Ergänzt `dokument-layout-standard.md` (Form) um die Länge.

## 260814b — Modellwahl interaktiv: Opus 5 als Standard, Fable 5 nur punktuell auf Zuruf
- **Regel:** Interaktive Sessions laufen standardmaessig auf **Opus 5** (Entscheid Raphael
  14.08.2026). **Fable 5** wird nur punktuell eingesetzt, wenn die Aufgabe den hoeheren
  Kontingentverbrauch rechtfertigt: komplexe Fachstudien mit hohem Einsatz (Machbarkeit,
  Bewertung, Wirtschaftlichkeit), baurechtliche Grenzfaelle mit Normenabwaegung, Spec-Phasen
  grosser neuer Vorhaben, festgefahrene Architektur-/Debugging-Fragen am Hub. Der Wechsel
  geschieht ausschliesslich durch Raphael via `/model` (Claude kann und darf das Modell nicht
  selbst umstellen); Claude schlaegt den Fable-Wechsel bei passender Aufgabe in EINEM Satz
  vor und wechselt danach gedanklich zurueck zum Opus-Default. Hintergrund: Fable zieht das
  Wochenkontingent schneller herunter, maximal 50 % davon duerfen auf Fable laufen.
  Scheduled Tasks und Loops bleiben unveraendert bei Rule `modellwahl-routine.md` (Hauptlauf
  Opus, Mechanik an Haiku/Sonnet delegiert) und werden **nie** auf Fable gestellt.
- **Gilt fuer:** alle Stationen, alle interaktiven Sessions; ergaenzt Rule
  `modellwahl-routine.md`.

## 260814c — Keine Aufzaehlungs-Bullets in ausgehenden Dokumenten: nummerierte Positionen
- **Regel:** Ausgehende JANS-Dokumente fuehren Aufzaehlungen als **nummerierte Positionen**
  (Themenblock 01, 02 …; Positionen 01.1, 01.2 … mit fetter Nummer und fettem Stichwort im
  Fliesstext), **nie als Bullet-Listen** («•» oder «-») — Klick-Listen sind als KI-Erzeugnis
  identifizierbar und nicht referenzierbar. Wortlaut und Details: Rule
  `dokument-layout-standard.md`, Abschnitt Listen (Neuregelung 14.08.2026). Erzeugnisse im
  Protokoll-CI bauen (Generator-Vorlage `templates/dokument-layout/`, Cambria, Fusszeile).
- **Gilt fuer:** alle ausgehenden DOCX/PDF-Erzeugnisse, alle Skills und Agenten, alle Stationen.

## 260814b — Rueckmeldelisten an Fachplaner: einfache Zeilenliste, kein Pruefbericht-Apparat
- **Regel:** Rueckmeldungen zu Fachplaner-Dokumenten (Plan-/Tuerbuch-/Konzept-Kontrollen, analog
  der KISPI-Rueckmeldung vom 14.08.2026) werden als **einfache Zeilenliste** verfasst: nummerierte
  Themenbloecke (z.B. «01 Tuer-ID Nummernanpassung», «02 Generelle Fragen Korrekturen»), darunter
  Zeile fuer Zeile die Punkte. **Keine Einleitung, kein Befund-Kapitel, keine Tabellen.** Der
  foermliche Pruefbericht-Apparat bleibt internen Dossiers vorbehalten, wenn Raphael ihn verlangt.
- **Gilt fuer:** alle Rueckmelde-/Kommentarlisten an Fachplaner und Bauherrschaft, alle Projekte.

## 260814 — Cloud-Ordner: On-Demand als Standard; System- und Sync-Schalter stellt Raphael selbst
- **Regel:** (1) Fuer OneDrive und Dropbox gilt **online-only als Standard**: neue oder
  selten genutzte Cloud-Ordner bleiben dematerialisiert, lokal gepinnt werden nur aktive
  Projektordner. (2) **Systemseitige Schalter bedient Raphael selbst** (Freigabe 14.08.2026):
  OneDrive-/Dropbox-Einstellungen, «Dateien bei Bedarf», Finder-Aktionen «Speicherplatz
  freigeben»/«Nur online verfuegbar» und alles, was Sync-Prozesse oder Systemeinstellungen
  anfasst. Claude misst, waehlt Kandidaten-Ordner aus und liefert den exakten Klickweg,
  loest aber keine Systemprozesse dafuer aus. (macOS Tahoe kennt zudem kein
  `fileproviderctl evict` mehr; ein CLI-Weg existiert nicht.)
- **Gilt fuer:** alle Stationen, alle Sessions; ergaenzt Rule `interaktive-eingriffe.md`
  (Klasse Cloud-Sync/FileProvider).

## 260813 — Projekt-Ablage 2619 KISPI: Original mit MD intern, Spiegel ohne MD in der geteilten Bibliothek
- **Regel:** Gewerks-Deliverables im Projekt 2619 KISPI werden zweifach abgelegt (Freigabe
  Raphael 13.08.2026): (1) **Original inkl. MD-Quelldatei** nach
  `OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/03_BKP/<LOS-Gewerk>/…`
  (interne Bibliothek); (2) **Spiegelung ohne MD-Datei** (nur DOCX/PDF/Grafiken, gleiche
  Ordnerstruktur und Namensstämme) nach
  `OneDrive-FreigegebeneBibliotheken–JANS/JANS - 2619-KISPI - Dokumente/2 Umbauprojekt Neu PPTS/33.04 BKP/<LOS-Gewerk>/…`.
  Grund: Die KISPI-Dokumente-Bibliothek ist für alle Projektbeteiligten zugänglich; die
  MD-Arbeitsdateien bleiben privat. **Prinzip verallgemeinern:** In geteilte, für Dritte
  zugängliche Projektbibliotheken gehören nie MD-Quell- oder Arbeitsdateien, nur die
  fertigen Fassungen (DOCX/PDF/Pläne).
- **Gilt fuer:** alle Deliverables im Projekt 2619 KISPI (BKP-/LOS-Ablage), sinngemäss für
  jede geteilte Projektbibliothek; ergänzt Rule `projekt-ablage-stand.md`.

## 260811 — Kein globales Ersetzen in gewachsenen Dateien; nach jedem Schreiben `--numstat` pruefen
- **Regel:** (1) Um **eigenen** Text in einer gewachsenen, geteilten Datei zu korrigieren, wird
  **nie** ein globales Suchen-und-Ersetzen ueber den ganzen Dateiinhalt gefahren (`sed -i` ohne
  Adressbereich, `str.replace()` ohne `count`, `%s///g`). Der eigene Abschnitt wird am Anker
  herausgeschnitten, darin ersetzt und wieder eingesetzt. (2) **Nach jedem Schreibvorgang auf eine
  gewachsene oder geteilte Datei** wird der Umfang gemessen (`git diff --numstat`, nativ per ssh,
  nie `git` ueber SMB). Eine **Append-only-Datei muss `-0` zeigen**; jede Loeschung ist ein Befund,
  solange sie nicht als gewollte Zeilenersetzung benannt ist. (3) Beim Reparieren eines solchen
  Fehlers **nicht aus HEAD wiederherstellen**, ohne zu pruefen, ob ein anderer Lauf unbestaetigte
  Aenderungen in derselben Datei hat — sonst loescht die Reparatur fremde Arbeit mit. Zeilenexakt
  aus dem Diff zuruecksetzen.
- **Gilt fuer:** alle Sessions und Loops, jede Schreiboperation auf `logbuch/`, `rules/`,
  `wissen/**`, `docs/` und jede andere append-only oder gemeinsam gepflegte Datei. Anlass und
  Messwerte: `rules/betrieb-chronik.md` 260811 und
  `wissen/energie/outputs/2026-08-11_energie-run126.md` (246 historische Zeilen eines
  append-only-Journals umgeschrieben, durch die Diff-Messung entdeckt und zeilenexakt repariert).

## 260809 — Vor «geht nicht» das Wege-Register lesen; umkehrbare Arbeit wird getan, nicht vorgelegt
- **Regel:** (1) Eine Aufgabe gilt erst dann als blockiert, wenn **jeder** in
  `connectors/WEGE.md` gelistete Weg nachweislich versagt hat. Ein Weg, der nicht im `PATH`
  liegt, ist trotzdem ein Weg. Belegt am 09.08.2026: der KISPI-Gastzugriff wurde als «kein
  Weg vorhanden» zurueckgegeben, waehrend die M365-CLI die ganze Zeit per Zertifikat
  angemeldet war (`Sites.FullControl.All`, gueltig bis 2028) und nur unter
  `~/Developer/jans-ai-hub/node_modules/.bin/m365` lag. **Ein vorhandener Weg, den niemand
  findet, ist so gut wie keiner.** (2) Jede gelaufene Sackgasse wird im Register vermerkt.
  (3) Vollmacht neu geordnet: `logbuch/AKTIONS-WHITELIST.md` **v2** (A1 bis A9, autorisiert
  Raphael 09.08.2026) — **umkehrbare Arbeit wird getan, nicht vorgelegt**; was nach aussen
  wirkt, laeuft ueber ein Widerrufsfenster statt ueber eine Vorab-Freigabe; Zahlungen,
  Bankauftraege und Vermoegenstransfers bleiben ausgenommen. (4) Der Auto-Mode-Klassifikator
  und die Sync-Task-Freigabe-Schwelle liegen ueber der Whitelist und werden **nie umgangen**:
  wer dort haengenbleibt, legt den fertigen Befehl vor.
- **Gilt fuer:** alle Sessions, alle Loops, alle Stationen. Rule `wege-und-vollmachten.md`
  (importiert), Register `connectors/WEGE.md`, Werkzeugpruefung `scripts/wege-doctor.sh`.

## 260807 — Konfigurationsfelder erst messen, dann glauben; Verbrauch nie per Frontmatter «senken»
- **Regel:** Bevor ein Konfigurationsfeld als wirksam angenommen wird, wird seine Wirkung
  **gemessen** (Transkript, Log, Lauf-Journal), nicht aus seiner Existenz geschlossen. Belegt
  am 07.08.2026: `model:` in der SKILL.md-Frontmatter einer Scheduled Task steuert den
  Hauptlauf NICHT — alle Laeufe fuhren `claude-opus-5`, auch die Task mit dem Feld. Gleiche
  Familie wie `enabled:`/`cron_target:` (Radar-Befund 06.08.). **Eine Sparmassnahme, die nur
  ein Doku-Feld setzt, ist keine Sparmassnahme**, sondern erzeugt den Glauben, das Problem sei
  geloest. Was wirkt: Arbeit an Subagenten delegieren und den Grundkontext schlank halten.
- **Gilt fuer:** alle Scheduled Tasks, alle Stationen, jede Aussage ueber Verbrauch oder
  Betriebszustand. Volle Messung und Muster: Rule `modellwahl-routine.md`.

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

## 260730b — Heutiges Datum messen; bestehende Datierungen nie ohne Beleg umdatieren
- **Regel:** (1) Das Arbeitsdatum kommt aus `date "+%Y-%m-%d %H:%M %Z"`, nie aus einem
  Dateiinhalt (gleiche Familie: `toISOString()`-UTC-Falle, siehe `dateinamen-konvention.md`).
  **(1b) ⚠ Ergaenzt 07.08.2026 (Buch-Run 72, teuer bezahlt): ein Datumssprung im Verlauf einer
  Sitzung ist zuerst VERSTRICHENE ZEIT, nicht eine defekte Uhr.** Wird eine Sitzung Tage spaeter
  fortgesetzt, nennt der Kontext das Datum von **heute**, nicht das der frueheren Arbeit. Am
  07.08.2026 wurde daraus faelschlich «die Stationsuhr ging vier Tage nach» geschlossen und ein
  komplett korrekt datierter Lauf (Dateinamen, Frontmatter, Register, Drill-Stempel) um vier Tage
  vorverschoben — die Ruecknahme kostete mehr als der Lauf selbst.
  **Darum: eine BESTEHENDE Datierung nie umdatieren, ohne vorher zu belegen, wann die Datei
  wirklich entstand.** Der Beleg ist der native Synology-Log
  `sync-tasks/log/selfcommit-JJJJMM.log` — er wird von `nas-selfcommit.sh` mit dem eigenen `date`
  der Synology geschrieben, laeuft lueckenlos und haengt an keiner Stationsuhr. Umdatieren ist ein
  Eingriff in belegte Fakten und braucht einen Beleg, keine Hypothese.
  **⚠ Werkzeug-Falle in genau dieser Datei:** der Log ist **nicht UTF-8**. `grep` behandelt ihn
  als binaer, liefert **still nichts** und gibt selbst mit `-c` keine Null aus — ein leeres
  Ergebnis, das wie ein Sachbefund aussieht. Mit `awk 'substr($0,1,10)=="JJJJ-MM-TT"'` arbeiten.
  Allgemein: **ein leeres Suchergebnis ist zuerst eine Aussage ueber das Werkzeug**, nicht ueber
  die Quelle (gleiche Familie wie Eintrag 260807, Konfigurationsfelder).
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
  `--check` Live-Check) — nie aus dem Gedaechtnis. Kanonische Datenquelle:
  `connectors/hub-setup-daten.json` (nur dort pflegen). Merksaetze und Stoerungsmuster:
  Betriebs-Chronik.
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
- **Regel:** (1) **Werkzeug-Index zuerst:** vor jeder improvisierten Abfrage in
  `connectors/README.md` nachschlagen und den Connector per `--hilfe` befragen; neue dort
  eintragen. (2) **Kontext-Schicht bewusst waehlen:** geteilte Regeln in den Projekt-Layer
  (NAS), stationsuebergreifende Grundregeln in `templates/user-level/CLAUDE.md` (verteilen mit
  `scripts/user-claude-sync.sh --alle`), Rollen-/Belegwissen in eine **nicht importierte**
  Datei. (3) **Automatische Laeufe ueber `scripts/claude-run.sh`** statt direktem `claude -p`
  (Kennzahlen ins Lauf-Journal). (4) **Konfiguration ist Teamgut:** `.mcp.json`,
  `.claude/settings.json`, CLAUDE.md, Commands versioniert; nur Geheimnisse lokal.
- **Gilt fuer:** alle Stationen, alle Sessions. Konzept und Messwerte:
  `docs/konzepte/260729-Anthropic-Lecture-Prinzipien/`.

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
- **Regel:** Das Fedlex-Portal liefert ohne JavaScript keinen Text; amtliche Volltexte immer
  ueber das Filestore-Muster beziehen. URL-Schema, Beispiel und Artikel-Extraktion:
  `docs/referenz/fedlex-volltexte.md` (ausgelagert 07.08.2026, nicht importiert).
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
  Zahlung, Verfuegung, Vertrag, Offerte) das PDF oeffnen, Fakten dem Beleg entnehmen; fehlende
  Anhaenge via `mdfind`/Outlook-Cache suchen. (2) Status nie aus Absichtserklaerungen, nur aus
  Belegen. (3) Kein Punkt bleibt tagelang «offen», ohne den neuesten Thread samt Anhang
  geprueft zu haben; Fremd-Rechnungen sind erledigt, sobald der Beleg die Zahlung zeigt.
  (4) Relevante Mails ganz lesen. (5) Eingehend ↔ ausgehend paaren: loest eine spaetere
  ausgehende Mail das Anliegen, ist der Punkt ERLEDIGT (mit Beleg schliessen).
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
- **Regel:** Aufgegangen in Rule `wissens-ruecklauf.md` (importiert), die das Wie praeziser
  fasst. Zusaetzlich hier: Auftragsmuster als Skill-/Rule-Verbesserung vorschlagen, Audits
  unter `docs/` versionieren. Nicht jede Kleinanfrage.

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
- Ablage, Layout und Pfadangaben (260601/03/04/11/12/19) → die importierten Rules
  `dateinamen-konvention`, `projekt-ablage-stand`, `dokument-layout-standard` sowie die
  User-Level-CLAUDE.md. Sie gelten ohnehin in jeder Session; hier kein Zweiteintrag noetig.

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
