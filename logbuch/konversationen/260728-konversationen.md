# Konversations-Destillat 28.07.2026

Abdeckung: MacBook Pro 834 Sessions (davon 6 echte Gespräche) · Mac Mini 857 Sessions (davon 1 echtes Gespräch) · Cloud/Dispatch 19 Log-Dateien (alle Nachtschicht-Zyklen Mac Mini, keine eigenen Aufträge) — Fenster 26 h (27.07. ~05:00 bis 28.07. 06:55).

Die übrigen Sessions sind Trainings-/Routine-Läufe (normen, energie, baurecht, twin, spec, planungsgrundlagen, wettbewerbs-dna, immobewertung, Radar/Heartbeat/Dispatch). Besonderheiten daraus sind unter Thema 1 aufgeführt, weil Raphael sie ausdrücklich zum Gesprächsgegenstand gemacht hat.

---

## 1. Vollgas-Leerlauf und 35-Stunden-Kontingentausfall — Ursache gefunden, Leerläufe abgeschaltet

Station MacBook Pro, 27.07. ab 21:45 bis 28.07. ~01:10. Auslöser: die Vollgas-Frühwarnung meldete
per Mail an rj@; Raphael antwortete «kannst du deine empfehlungen umsetzen und schauen das
leerläufe abgeschaltet und werden».

**Kern und Befunde**

- Das Wochenlimit war rund **35 Stunden vollständig leer** (26.07. 00:53 bis 27.07. 12:00). In der
  Zeit rund **2'000 Fehlversuche** auf dem MacBook Pro und rund **2'700** auf dem Mac Mini, am 26.07.
  exakt **0.00 Mio** produktive Tokens auf beiden Stationen.
- Kollateralschaden: **das Morgenbriefing vom 27.07. ist ausgefallen** — `logbuch-radar` (04:55) und
  `hub-chef-taeglich` (06:39) brachen nach dem ersten Arbeitsschritt ab. Mahnwesen-Verzugscheck und
  Zahlungsabgleich liefen durch. Keine einzige von Raphael getippte Sitzung war blockiert.
- Verbrauch «teuer» (Input + Cache-Aufbau + Output), Mio Tokens — MacBook Pro: 22.07. 2.89 ·
  23.07. 3.87 · 24.07. 3.90 · **25.07. 29.77** · 26.07. 0.00 · 27.07. 14.36. Mac Mini: 22.07. 2.11 ·
  23.07. 4.58 · 24.07. 3.92 · **25.07. 23.32** · 26.07. 0.00 · 27.07. 6.04. Der 25.07. brachte
  kombiniert **53.1 Mio** und fuhr das Wochenkontingent leer.
- **Ursache: Doppellauf.** Der Endlos-Runner fuhr in jedem Zyklus, also rund stündlich, genau die
  fünf Loops, die bereits einen eigenen und bewusst gedrosselten Scheduled Task haben. Zwei
  Mechanismen: der seit 25.07. laufende Runner-Prozess hielt seinen Ausschlussfilter **im Speicher**
  (spätere Filterkorrekturen erreichten ihn nie), und der Runner liest **nur das SKILL.md-Frontmatter,
  nicht den Registry-Zustand** — registry-seitig abgeschaltete Loops liefen bei ihm weiter.
- **Zweitbefund, wiegt schwerer:** die Aufsicht selbst war ausgefallen. `vollgas-chef-radar` ist alle
  3 h getaktet und aktiviert, war aber seit 25.07. 19:47 nicht mehr gelaufen; RADAR.md stand seit
  25.07. 21:55 still. Der 35-h-Ausfall wurde deshalb nirgends gemeldet.
- **Nachtrag 28.07. 01:09: es gibt einen dritten Taktgeber.** Auf dem Mac Mini feuern geladene
  launchd-Jobs (`ch.jans.training-plg` 00:30, `ch.jans.training-energie` 22:30) über
  `cron-training-mini.sh` → `dispatch-run.sh` mit **25 USD** Budget (Standard-Deckel 5) und lesen
  weder Registry noch Frontmatter noch STOP-Dateien.

**Umgesetzt**

- `vollgas-chef-radar` neu gefasst und frisch armiert, neu ausdrücklich als **Leerlauf-Wächter**
  (3 Delta-Null-Läufe in Folge = Rücktaktung, 5 = Abschaltung), mit Blick auf das Wochen- statt nur
  das 5-h-Kontingent. Zwei echte Defekte im alten Prompt behoben (er wies `git commit`/`push` über
  den SMB-Mount an — Verstoss gegen Rule 260726; und er wertete ein volles Fenster unabhängig vom
  Arbeitsinhalt als Erfolg).
- `wettbewerbs-dna-training` stillgelegt bzw. auf wöchentlich, `normen-training-nacht` auf 1x/Tag,
  veralteter MacBook-Runner (PID 66891) beendet, beide Runner gestoppt.
- `ch.jans.training-plg` per `launchctl bootout` abgeschaltet (27 Delta-Null-Läufe in Folge,
  Run 67–92); `training-energie` bewusst aktiv gelassen (produktiv).
- Neue Rule **260727** («Kein zweiter Taktgeber») angelegt und am 28.07. auf **drei Orte** erweitert:
  eine Deaktivierung ist erst vollzogen, wenn Registry, Runner-Filter/Frontmatter **und** launchd-Jobs
  nachgezogen sind. Commits `c1708f51`, `cfa0d4c1`, `33aedff7`, `35148840`.

**Offene Punkte und Folgeaktionen**

- **Entscheid Raphael:** ob Vollgas überhaupt weiterläuft. Die Rücktaktung `token-drosselung-100810`
  hat Raphael am 25.07. selbst deaktiviert, der Runner hat kein Enddatum mehr (END_DATE 20991231) —
  es endet nichts mehr von allein.
- **Entscheid Raphael:** ob die erweiterte Ausschlussliste des Runners so bleibt (der Mac Mini wartet
  derzeit leer) oder ob `grobkosten` mit dem korrigierten Prompt zurück in die Rotation kommt.
- Schätzung aus dem Lauf, klar als solche markiert: hält das Tempo vom 27.07. an, ist das Kontingent
  etwa am Mittwoch erschöpft, gefolgt von vier bis fünf Tagen Ausfall bis zum Reset am Montag 12:00.

**Radar-relevant: ja** — zwei offene Entscheide Raphaels; ein wiederholter Kontingentausfall legt die
Morgenbriefings still.

---

## 2. Vier Entscheide zum Wissens-Layer — drei umgesetzt, einer offen

Station MacBook Pro, 27.07. 22:11. Raphael fragte «muss ich etwas machen entscheiden?» und
entschied darauf: «Ereignis-Trigger», «Entscheid 3: ja oder was ist dein vorschlag», «PL - 03
Brandschutz ins Normen-Inventar aufgenommen wird ja», «SIA-2024-Gesundheitsbau-Zwilling gemergt
werden darf ja».

**Kern und Entscheide**

- **Ereignis-Trigger statt Dauertakt** für die gesättigten Loops (energie, planungsgrundlagen, spec,
  immobewertung). Umgesetzt als `scripts/wissens-trigger.sh`: bildet je Wissensbasis einen
  Fingerabdruck der Quellordner (Dateizahl, neueste Änderung, Grösse) und startet den Trainingslauf
  nur bei echter Änderung. Läuft per launchd täglich 06:30 auf beiden Stationen. Erst-Erfassung feuert
  bewusst nicht; ein nicht gemounteter OneDrive-Ordner gilt nie als «alles gelöscht».
- **Zwei Defekte des ersten Anlaufs gefunden und behoben:** der launchd-Job scheiterte auf beiden
  Stationen still mit EX_CONFIG, weil die Log-Pfade auf dem SMB-Mount lagen (launchd legt diese Dateien
  vor dem Jobstart selbst an und kommt dort nicht hin); und der App-Cron für `spec-training` und
  `immobewertung-training` lief trotz `enabled: false` weiter, weil die Registry davon unabhängig ist.
- **SIA-2024-Gesundheitsbau-Zwilling gemergt** (drei nicht-redundante Blöcke eingefügt, Backlinks
  umgebogen, Quelldatei gelöscht, Index-Register bereinigt).
- **PL - 03 Brandschutz** ins Normen-Inventar aufgenommen.
- **Meta-Punkt M2 (`energie` als eigener Skill):** Empfehlung ausgearbeitet und in
  `wissen/energie/wiki/QUESTIONS.md` hinterlegt — ja, aber zugeschnitten als **Bauherren-Beratungs-Skill**.
  Commit `7c5ed057`. Der Entscheid bleibt bei Raphael.

**Offene Punkte:** M2-Entscheid (Empfehlung liegt jetzt vor — Register-Punkt nachgeführt); die fünf
Normkäufe aus dem Gespräch vom 27.07. sind weiterhin **unbeantwortet** (Geldentscheid).

**Radar-relevant: ja** — betrifft die Register-Punkte «Normkäufe» und «`energie` als eigener Skill».

---

## 3. Neuer Skill `wissens-destillat` und KB `bauprodukte` — der Runner bekommt eine echte Aufgabe

Station MacBook Pro, 28.07. ab ~00:30 (Umsetzung), Nachtlauf bis 06:33 (läuft weiter). Raphael:
«WAs würdest du mir vorschlagen wenn ich ein schlagkräftige ai auskristalisieren möchte mit wissen
welches ich auf meinem server habe welches durch md files in ein wiki mit der Karpathy-Methode
eingearbeit werden soll verwende das ideale modell je phase und implementiere dein vorschlag in den
vollgas fruehwarnung».

**Kern und Entscheide**

- Befund: die **15 bestehenden KBs mit 1'662 MD-Dateien melden reihum Delta Null** — sie sind nicht
  kaputt, sondern satt. Der Endlos-Runner lief seit 27.07. 22:14 leer. Das unerschlossene Wissen liegt
  **ausserhalb** des Hubs, einen Ordner daneben.
- Vorschlag und Umsetzung: der Runner destilliert neu das Archiv neben dem Hub —
  `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke nach BKP), `04_Buero`, `02_Architektur_Archiv`
  (22 abgewickelte Projekte) — nach der Spec-Methode in belegte Wiki-Artikel.
- **Modell je Phase:** Phase 0 Inventar/Filter/Fortschritt = kein Modell (bash, kostet null Tokens) ·
  Phase 1 Triage (relevant? Thema? Priorität?) = **Haiku 4.5** · Phase 2 Quelle lesen, Artikel schreiben,
  verlinken = **Sonnet 5** · Phase 3 Belege prüfen, Widersprüche, Promotion = **Opus**.
- Umgesetzt und committet (`46f8a4f3`): neuer Skill `wissens-destillat`, neue KB `wissen/bauprodukte`,
  Runner-Wiring, Frühwarnung als Ertragskontrolle.

**Ertrag der ersten Nacht (Nachtschicht Mac Mini):** Korpus-Spec (`7fadd7c7`, 01:30), erster Artikel
Dachbegrünung samt korrigierter Fehltriage und behobenem Pipeline-Bug `run_in_background` (`991b38d6`,
04:40), Kurator-Stufe mit 4 geprüften Artikeln und SIA-500-Backlink (`e7878c7a`, 05:36), BKP-273-Artikel
Arbeitsplatten-Verbinder (`32c2323c`, 06:33).

**Offene Punkte:** die Reihenfolge des Korpus steht in `KORPUS-QUEUE.md`; der Lauf ist erst am Anfang.
Die Antwort auf die Grundsatzfrage in `FRUEHWARNUNG.md` («Soll der Endlos-Runner neue Lern-Aufgaben
bekommen?») ist damit gegeben.

**Radar-relevant: nein** — keine Frist, kein Geldbetrag; Fortschritt läuft über die Loops.

---

## 4. Brandschutz-Wissensaudit PL - 03 und die teuerste offene Fachfrage

Station MacBook Pro, 28.07. 00:55 (abgeschlossen, Commit `1183f1d9`). Raphael: «kannst du diesen
ordner nochmals gründlich durch kämmem und schauen ob alles mittels der Karpathy-Methode ins wiki
aufgenommen wurde und ei md fils konsisten sind».

**Kern und Ergebnisse**

- Vollinventar statt Stichprobe: alle **153 Dateien** maschinell gegen Wegweiser, INDEX, QUESTIONS,
  `_INGESTED` und die KB `normen` abgeglichen, jeder Nicht-Treffer danach wirklich geöffnet (PDF, DOCX,
  EML, Fotos). Bilanz: **95 % erschöpfend erschlossen**.
- **Drei echte Inhaltslücken**, alle im Ordner `_Projekte Themen/Tragwerk Brandschutzanforderung
  Thalwil Bohlweg3`: `250304 Fragestellungen Brandschutz.docx/.pdf` (Raphaels eigener Fragenkatalog),
  `250301 Antwort Francesco.docx` — der Bauingenieur lehnt ab: «kein Zeitproblem, sondern ein
  Kompetenzproblem, ich bin kein Brandschutzplaner» — und `250305 Anwendung Brandschutzanforderung
  Tragwerke.pdf` (zweites Factsheet-Blatt mit Lignatec-Tabelle 3 und Schnitt Bauweise).
- **Wichtigster Fund, neu als offene Frage C40:** Müssen bei einer Transformation **EFH → MFH** alle
  Bauteile die Brandschutzanforderungen erfüllen oder nur die neuen? Für Aufstockungen im Bestand die
  teuerste Einzelfrage überhaupt — in der ganzen KB unbeantwortet.
- Nebenergebnisse: 4 Quellen attribuiert (neuer Kennwert **200 MJ/Lfm**), C39 als defekter Symlink
  geschlossen (Lignum 4.1 auf OneDrive nicht lesbar), MD-Konsistenz: 6 zerrissene Backlinks und
  2 INDEX-Lücken behoben.

**Offene Punkte:** C40 beantworten (VKF-Grundlage, Bestandesschutz). Betrifft direkt den
Register-Kontext **2414 Thalwil / Bohlweg 3**.

**Radar-relevant: ja** — offene Fachfrage mit Kostenwirkung im laufenden Projekt 2414.

---

## 5. Wettbewerbs-Brandschutzberater — Lauf durch abgelaufenes OAuth-Token abgebrochen

Station MacBook Pro, 28.07. bis 06:50. Raphael: «kannst du mal diese projekt unter
brandschutzrelevanten Themen scanen und dich selbst fagen ob du die fragestellungen welche sich aus
der bearbeitung des projektes und dem program an fragestellungen gibt nun mit dem vorhandenen
wissenstand beantworten hättest können und nun für mich auch ein wettbewerbs brandschutz berazter
sein kannst? wenn du unsicher bist frage dich was dir noch fehlt und ergänze dieses wissen als
methodischer ansatz».

**Kern:** fünf Screenshots des Projektordners übergeben; der Lauf brach ab mit
`Failed to authenticate. API Error: 401 OAuth access token has expired. Re-authenticate to continue.`
Es liegt **kein Ergebnis** vor. Inhaltlich ist der Auftrag eng verwandt mit Thema 4 (Brandschutz-KB)
und Thema 6 (Moodboard/Wettbewerb).

**Offene Punkte:** Auftrag ist unerledigt und muss nach dem Re-Login wiederholt werden. Der
Re-Login ist der seit 20.07. im Register geführte Punkt — **neu ist, dass er erstmals eine
interaktive Sitzung Raphaels blockiert hat**, nicht bloss Loops und Connector-Messungen.

**Radar-relevant: ja** — Eskalation eines bestehenden Register-Punktes plus unerledigter Auftrag.

---

## 6. Moodboard Peter Märkli für die Aufgabe «Pavillon für Veranstaltungen»

Station MacBook Pro, 27.07. 21:52. Raphael: «kannst du mir ein moodboard erstellen wo für die
aufgabe eines pavillons für Veranstaltungen Projekte und Gestaltungen von Peter Märkli exemplarisch
kuratiert auf einem A3 abgebildet werden?»

**Kern und Ergebnis:** A3-Querformat im JANS-Look (DM Sans + Fragment Mono, monochrom mit
Oxidrot-Akzent), neun kuratierte Fotografien mit Bildlegenden plus Leitgedanken-Block. Da das
**Novartis-Besucherzentrum (2006)** nicht mit frei nutzbarem Bildmaterial verfügbar ist, trägt
**La Congiunta, Giornico TI (1992)** das Board als exemplarischer Einraum-Pavillon; die Werkliste
nennt Novartis mit ehrlichem Vermerk «ohne Abbildung». Dramaturgie 01 Setzung im Feld bis
09 öffentlicher Massstab (**Schulhaus Im Birch, Zürich-Oerlikon, 2004**). Rechte Spalte: fünf
Entwurfsprinzipien für den Veranstaltungspavillon. Alle Fotografien aus Wikimedia Commons
(CC BY 4.0 bzw. CC BY-SA 3.0/4.0), Autoren auf dem Board ausgewiesen. Texte durch den
Korrektur-Agenten (drei kleine Korrekturen umgesetzt).

**Offene Punkte:** keine gemeldeten. Der Anlass (welche Pavillon-Aufgabe, welcher Wettbewerb) ist im
Gespräch nicht genannt worden.

**Radar-relevant: nein.**

---

## 7. Marktpreise Gastroküchen-Komponenten

Station Mac Mini, 27.07. 16:28. Raphael fragte nach marktüblichen Preisen für eine Küchenzeile aus
Sockel, Unterschränken, Kühlkorpus Elit (700x660x760 mm, eigengekühlt, 3 Schubladen GN 1/1, Nische
für bauseitigen Tiefkühlschrank), Abdeckung Tekton Zenit mit Becken Franke LAX 110/50/45,
1x KWC Hebelmischer LIVELLO Chromeline A 225 mm, Steamer Rational iCombi Pro XS 6-2/3 mit
Kondensationshaube.

**Kern und Zahlen** (alle CHF inkl. MwSt, Stand Juli 2026):

- **Rational iCombi Pro XS 6-2/3:** Schweizer Listenpreis rund **13'400 bis 13'500** (Gastro Ingross
  13'484.70 inkl. / 12'474.30 exkl. MwSt), Strassenpreise/Aktionen ab rund **9'800** (SwissFrigo);
  marktüblich **10'000 bis 13'500**.
- **Kondensationshaube UltraVent XS:** in Deutschland 2'400 bis 3'450 Euro je nach Ausführung, in der
  Schweiz marktüblich **2'800 bis 3'800**; UltraVent Plus nochmals rund 800 bis 1'000 höher.
- **Kühlkorpus Elit:** Elit AG publiziert keine Preise und listet die Korpusse nur zentralgekühlt
  (1x GN 1/1 = 650x660x760 mm). Die eigengekühlte Ausführung mit 700 mm Breite ist eine
  Auf-Anfrage-Position. Vergleichbare Fabrikate (Chromonorm, Nordcap) 2'500 bis 3'500 Euro netto;
  für Elit Richtwert **4'500 bis 6'500**, ausdrücklich als Schätzung markiert.

**Offene Punkte:** für einen belastbaren Wert **Preisauskunft bei Elit AG einholen, +41 56 460 50 60**.
Das Projekt wurde im Gespräch nicht genannt; die Zusammenstellung passt zum laufenden Küchen-Strang
(vgl. Register-Punkt KISPI Los 273.35 Therapieküche).

**Radar-relevant: ja** — offene Beschaffungshandlung mit Kostenwirkung.

---

## 8. Abo-Auslastungs-Check nicht messbar — Re-Login seit sieben Tagen offen

Station Mac Mini, 27.07. 16:31 (wöchentlicher Check).

**Kern:** `node connectors/claude-usage.mjs` bricht beim Token-Refresh ab — HTTP 400, `invalid_grant`
(«Refresh token not found or invalid»), der Usage-Endpunkt antwortet danach 401. Weder Wochen-Prozentwert
noch Extra-Usage ermittelbar. Ampel **ROT als Messfehler, nicht als Verbrauch**. Letzte belastbare
Messung: **19.07.2026, 31 % Woche / 0.00 USD Extra Usage**. Neuer Beleg: der Keychain-Eintrag
«Claude Code-credentials» (Account raphaeljans) trägt als Änderungsdatum unverändert den
**12.07.2026, 22:01 UTC** — seit 15 Tagen kein Schreibzugriff.

**Offene Punkte:** Aktion Raphael, unverändert seit sieben Tagen — einmalig im interaktiven Terminal
`claude` starten und `/login` ausführen, danach Kontrolllauf `node connectors/claude-usage.mjs`.

**Radar-relevant: ja** — bestehender Register-Punkt, durch Thema 5 eskaliert.

---

## 9. Laufende Arbeit ohne Abschluss (Stand 06:55)

- **Immobilienbewertungs-KB, Lückenaudit** (MacBook Pro, seit 28.07. 01:52, läuft): Raphael liess sechs
  IMMO-Ordner durchkämmen. Befund: die KB meldet **seit 18 Läufen «saturiert»**, die Inventarisierung
  zeigt aber **mehrere ganze Unterordner, die im Quellen-Register nie auftauchen**. Fünf parallele
  Lese-Agenten auf die Lücken-Cluster, «erhebliche Funde», zwei Cluster noch offen. Das widerlegt die
  Sättigungsmeldung, auf der die Rücktaktung dieses Loops beruhte — Ergebnis abwarten.
- **Brandschutz-Wettbewerbsberater** (Thema 5) — durch OAuth-Ablauf gestoppt.

**Radar-relevant: ja** (Immobilienbewertung) — der Sättigungsbefund, der die Loop-Rücktaktung trug,
ist in Zweifel.

---

## 10. Routine-Läufe

Rund 1'680 Loop-/Task-Sessions beider Stationen im Fenster (normen, baurecht, energie, twin, spec,
planungsgrundlagen, wettbewerbs-dna, immobewertung, wissens-chef, Heartbeat, Radar, Dispatch-Nachtschicht,
Mahnwesen, Zahlungsabgleich, AG-Gründungs-Monitor). Ohne Besonderheiten ausser den unter Thema 1
behandelten Doppelläufen und Leerläufen. Erwähnenswerte Fachergebnisse aus diesen Läufen:

- `normen` Run 35: SIA D 0165:2000 nach sechs Refuter-Runden auf `established`; Lignum 4.1 Tabellen
  446-1/446-3 (Bandbreiten-Untergrenzen, Minimum 60 mm statt 50 mm) am Original korrigiert.
- `baurecht` Run 69: drei Zitierfehler im Artikel `grundlagen-planungs-baurecht` (Art. 679 Abs. 2 ZGB
  invertiert, § 3 Abs. 12 BBV I inexistent, § 220 fehletikettiert); KGSchV aufgehoben per 01.01.2022.
- `wissens-chef` Run 17/18: Brandschutz-Kapselung K60-RF1 und Wandtraglast je Systemtyp korrigiert,
  EG GSchG als aufgehoben belegt, Rekursfrist 30 Tage in `auflagebereinigung` ergänzt.
- `projekt-lessons` Bootstrap: zwei neue Lesson-Artikel (Röthlisberger 273.35, SBB-Näherbaurecht
  Thalwil 2414).
- `architekten-synobsis` (Mac Mini): Lauf sauber abgebrochen — Task seit 25.07. deaktiviert, 853/853
  verarbeitet, kein neues Material.
