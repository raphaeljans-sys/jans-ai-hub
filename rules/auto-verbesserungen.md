# Regel: Auto-erfasste Verbesserungen (verbindlich)

Diese Datei wird automatisch gepflegt. Jede dauerhafte Verbesserung («ab jetzt immer …»,
«nie …», «merk dir …») wird hier als datierter Eintrag hinterlegt und ist sofort auf allen
Stationen aktiv. Erfassung: Hook `scripts/verbesserung-capture.sh` + Claudes Bewertung.

**Archiv:** Die vollstaendigen Original-Wortlaute aller Eintraege (inkl. Ausloeser-Zitate
und Historie) liegen in `rules/auto-verbesserungen-archiv.md` (nicht importiert). Hier
steht nur der aktive, imperative Kern. Konsolidiert am 19.07.2026 (Kontext-Diaet,
Konzept: `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`).

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
- **Drossel aktiv** seit 14.07.2026 (Wochenlimit-Schutz): kein Endlos-Runner (STOP-Dateien
  gesetzt), `vollgas-chef-radar` nur noch Schoner/Melder, startet nichts neu. Ein 5h-Fenster
  auf 100 % ist KEIN Ziel mehr.
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
