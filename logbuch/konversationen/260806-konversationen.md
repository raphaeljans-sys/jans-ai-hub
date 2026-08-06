# Konversations-Destillat 06.08.2026

**Abdeckung: MacBook Pro 22 Sessions · Mac Mini 8 Sessions · Cloud/Dispatch 5 — Fenster 26h**
(Stand 06.08.2026 06:13 CEST, Fenster 05.08. 04:13 bis 06.08. 06:13. Extraktion lokal und
per SSH auf dem Mac Mini, beide rc=0.)

**Methoden-Hinweis, wie an den Vortagen:** `konversations-extract.sh` wählt die Sessions
nach Datei-mtime, nicht nach dem Zeitstempel der Nachrichten. Der Rohdigest führt **41**
MacBook-Blöcke; an den Nachrichten-Zeitstempeln nachgemessen tragen davon nur **22**
überhaupt Nachrichten im Fenster. Die restlichen 19 sind ein mtime-Artefakt: 25 Dateien
tragen die identische mtime `05.08. 07:59`, ihr jüngster Nachrichtenstand liegt aber
zwischen dem 03.08. 23:40 und dem 05.08. 03:50 und ist in den Destillaten
`260804-` und `260805-konversationen.md` bereits geführt. Auf dem Mac Mini stimmen
mtime und Nachrichtenstand überein: alle 8 Blöcke liegen im Fenster.

Echte Gespräche mit Raphael fanden auch heute ausschliesslich am **Mac Mini** statt
(zwei Stück, 05.08. 10:21–10:24 und 16:29 CEST). Auf dem MacBook Pro lief kein
interaktives Gespräch; dort stehen nur automatische Läufe, von denen vier operative
Punkte tragen (Blöcke 3 bis 6).

---

## 1. KISPI 2619 — was die Nummern im Türstempel des HdM-Ausführungsplans bedeuten (Mac Mini, 05.08. 10:21–10:24)

**Kern & Entscheide.** Raphael fragte: «kannst du mir herausfinden was die einzelnen
nummerbezeichnungen bedeuten der automatischen Schiebetüren im ausfürhungsplan des
architekten: E30 / IT782 / 17264 / 0105.B04 / 2». Die fünf Felder des sechseckigen
Türstempels wurden aus den KISPI-Projektunterlagen (Türliste, Regeldetail, Plan-Legende)
belegt, nicht aus dem Gedächtnis beantwortet:

- **E30** = Brandschutzanforderung der Türe (Feuerwiderstand, Raumabschluss).
- **IT782** = Türtyp aus dem HdM-Typenkatalog, «Innentür Typ 782», einflüglige
  automatische Glas-Schiebetüre «Cristallo Glisse», hier EI30 mit Swing-out-Funktion
  (Flügel schwenkt bei Notöffnung aus). Regeldetail
  `S-ARC_8209_DT-XX_XX_Regdet-IT782.dwg` unter `0 Plangrundlagen Bestand/51
  Ausfuehrungsplaene/51.01 Herzog & de Meuron Basel Ltd., Architekt/8000-8499_TÜREN/`.
  Verwandte Typen im selben Katalog: IT784, IT786, IT788, IT790.
- **17264** = projektweit eindeutige Tür-ID (Datenbank-/FM-Nummer).

**Der Befund, der über die Auskunft hinausgeht:** Der Planstempel führt die Türe als
**E30**, der zugehörige Werkplan als **EI30** (also mit Isolationskriterium). Das ist
eine Abweichung zwischen zwei Plandokumenten desselben Satzes und keine
Schreibungenauigkeit: E30 und EI30 sind zwei verschiedene Bauteile mit verschiedenem
Preis. Massgeblich ist im Zweifel das Brandschutzkonzept beziehungsweise der freigegebene
Werkplan.

**Offene Punkte & Folgeaktionen.** Die Abweichung E30 ↔ EI30 an Türe 17264 ist noch
nicht gegen das Brandschutzkonzept aufgelöst und noch niemandem gemeldet. Sie gehört
geklärt, bevor die Türe bestellt oder in ein LV übernommen wird.

**Nebenbefund zur Arbeitsweise:** Der Stop-Hook beanstandete «Ausfuehrungsplaene» als
ASCII-Umlaut. Der Treffer stand in einem wörtlichen Dateipfad, der auf dem Server
tatsächlich so heisst (ASCII gemäss Dateinamen-Konvention). Ein Umschreiben hätte den
Pfad ungültig gemacht; die Beanstandung wurde begründet zurückgewiesen, der Fliesstext
trug bereits echte Umlaute.

**Radar-relevant: ja.** Fachliche Abweichung in einem Ausführungsplan mit
Beschaffungswirkung (2619 KISPI). Neu ins Register aufgenommen, es gab dazu bisher keine
Zeile. Steht sachlich neben dem laufenden Türbuch-Strang (Register-Punkt «KISPI Tuerbuch
+ Sicherheitskonzept») und der Türfachplanung TeKoSi.

---

## 2. SIA 102 — welche Phase nach Ziffer 4.51 kommt (Mac Mini, 05.08. 16:29)

**Kern & Entscheide.** Raphael fragte: «WELCHE PHASE IST NACH SIA 4.51». Antwort aus der
Normen-KB statt aus dem Gedächtnis, mit Fundstelle: nach **4.51 Ausführungsprojekt**
(Ausführungspläne und Detailstudien; die Ausführungspläne gehören systematisch erst
hierhin, nicht zur Ausschreibung 4.41) folgt **4.52 Ausführung** (gestalterische Leitung,
Kostenkontrolle, Baubuchhaltung nach Kostenvoranschlag, Zahlungsanweisungen, Baujournal,
Protokolle, Pendenzenlisten), danach **4.53 Inbetriebnahme/Abschluss** (Garantiearbeiten
bis Ablauf der zweijährigen Rügefristen, Schlussabrechnung mit Gegenüberstellung zum
Kostenvoranschlag und Kennwerten). Fundstelle: SIA 102:2020, Ziff. 4.51/4.52/4.53
(`wissen/normen/wiki/synthese-sia-vkf-fachskills.md`).

**Offene Punkte & Folgeaktionen.** Keine. Die Antwort verwies am Rand auf einen offenen
Sync-Task zur Freigabe; das ist der bekannte Zählartefakt-Punkt (siehe Block 7).

**Radar-relevant: nein.** Fachauskunft ohne Frist, ohne Zusage, ohne Geldbezug.

---

## 3. KISPI 2619 — Estermann kann ohne aktuelle Plangrundlage nicht einmessen (MacBook Pro, hub-chef 05.08. 08:39–09:19)

**Kern & Entscheide.** Zwei Eingänge nach dem Radar-Briefing von 07:06, beide KISPI:
Othmar Stadelmann (Bauführer, Estermann, Leichtbauwände) meldet **05.08. 07:49**, die
gelieferte Grundlage sei der **Bestandesplan von 2000**; er steht am selben Tag zum
Einmessen auf der Baustelle und kann nicht arbeiten. Am Beleg geprüft: der aktuelle
Ausführungsstand ist der Plansatz vom **21.07.2026**. Jens Ziegel liefert **08:31** die
kommentierten Innenwandpläne aus der 08:00-Sitzung (14 Annotationen ausgelesen).

Ausgeführt unter Whitelist A4/A5: ein Mail-Entwurf an Stadelmann, Cc Spörri und Ziegel,
mit den vier Plänen im Anhang, ergänzt um die zwei Punkte aus Ziegels Kommentar, die eine
Bringschuld des Systemhalters sind: schriftliche Bestätigung des Wandanschlusses auf den
80-mm-Estrich und Abgleich des Hohlraums gegen die **VKF-Anerkennung 22636**.
Anrede am Beleg verifiziert (Raphaels eigene Mail vom 03.08. an Stadelmann öffnet mit
«Geschätzter Othmar» und führt «Euch»), nachdem das Twin-Gate hier erfundene Zusagen
vorgeschlagen hatte. Register und Logbuch nachgeführt, NAS committet (`43e960bf`),
Briefing an rj@raphaeljans.ch versendet (5'688 Zeichen).

**Offene Punkte & Folgeaktionen.** **Der Versand bleibt bei Raphael.** Nebenbefund aus
demselben Lauf: Raphael hat bereits zwei eigene, unversendete Entwürfe an Stadelmann
offen — die Entwurfsablage staut sich an diesem Empfänger.

**Radar-relevant: ja.** Unternehmer wartet auf der Baustelle, Entwurf liegt bereit,
Freigabe ausstehend. **Betrifft den bestehenden Register-Punkt** «KISPI 2619
Leichtbauwände: Estermann kann ohne aktuelle Plangrundlage nicht einmessen» (Eintrag
05.08., Hub-Chef 08:39) — kein neuer Eintrag nötig, der Punkt steht bereits.

---

## 4. AG-Gründung — zwei Fristen sind am 05.08. scharf geworden (MacBook Pro, ag-gruendung-monitor 05.08. 07:51)

**Kern & Entscheide.** Kein neuer Eingang: Vollsweep über alle Konten (Apple Mail mail@
als Primärkanal, rj@ Exchange, outlook.com, iCloud, alle Mailboxen inklusive Entwürfe,
Gelöscht und Junk; 4-Tage-Vollsweep plus 14-Tage-Zielsuche auf UBS/Jeckelmann/key4/IBAN/
Kapital/Notariat/Beurkundung/REGIX/Handelsregister/Wiedikon/Mathies) fand keinen UBS-,
Notariats- oder REGIX-Eingang. Jüngste UBS-Belege unverändert Jeckelmann 29.07. 16:55
und der Bestätigungscode 29.07. 12:50. Neu ist allein die Fristenlage:

1. **UBS-IBAN: die Nachfass-Schwelle ist erreicht.** Der 05.08. war der fünfte
   Arbeitstag seit der Einreichung bei der Geschäftsstelle Wiedikon am 29.07.; zugesagt
   waren drei. Nächster Schritt Raphael: **B. Jeckelmann anrufen, 044 236 48 48.**
2. **Notariats-Nachreichung ans Sammelpostfach ist überfällig.** In «Gesendete Elemente»
   liegt seit **04.08. 14:27** nichts Neues, keine Weiterleitung an
   `wiedikon-zuerich@notariate-zh.ch`. M. Mathies ist bis **Freitag 07.08.2026**
   abwesend, die Unterlage liegt ungelesen. Nächster Schritt Raphael: Weiterleitung mit
   beiden Anhängen oder Anruf **044 298 55 00**.

Der Lauf notierte zudem eine Abweichung in der eigenen Task-Definition: sie nennt
`nas-git-commit.sh`, das `git add/commit/push` direkt über den SMB-Mount ausführt und
damit gegen Rule 260726 / `sync-kanonische-quelle.md` verstösst. Der native Committer
wurde stattdessen genutzt (`6c6adec9`).

**Offene Punkte & Folgeaktionen.** Beide Schritte sind Raphaels Aktionen (Telefonate,
Weiterleitung), Claude kann sie nicht ausführen. Die Task-Definition des Monitors zeigt
weiterhin auf das verbotene Commit-Script und gehört korrigiert.

**Radar-relevant: ja.** **Betrifft die beiden bestehenden AG-Zeilen im Register**, die
im selben Lauf fortgeschrieben wurden. Kein neuer Eintrag nötig.

---

## 5. SVA-Mahnung und eine fristlich tote Pendenz (MacBook Pro, logbuch-radar 05.08. 06:55–07:07)

**Kern & Entscheide.** Zwei Punkte aus dem Radar-Lauf:

- Die **SVA Zürich** hat am **05.08. um 06:26** über AHVeasy (`svazh@eadminportal.ch`)
  eine **Mahnung wegen ausstehender Zahlung** für «Jans», Abrechnungsnummer
  **10.186.825**, bereitgestellt. Die Systemmail nennt weder Betrag noch Zahlfrist noch
  Abrechnungsperiode; das Dokument liegt hinter dem Portal-Login, zu dem Claude keinen
  Zugang hat.
- Die Frist des **Kübler-Nachfasses** (04.08. 17:00) ist verstrichen, ohne dass der
  Entwurf angefasst wurde. Am Entwurfsordner nachgemessen: Datum unverändert
  **31.07. 00:35**, in «Gesendete Elemente» nichts. Der Entwurf ist damit nicht mehr nur
  inhaltlich überholt, sondern fristlich tot.

**Offene Punkte & Folgeaktionen.** SVA: Raphael muss sich in AHVeasy einloggen, Betrag
und Zahlfrist auslesen und zahlen. Kübler: der Entwurf ist neu zu fassen oder fallen zu
lassen.

**Radar-relevant: ja** (Geld und Frist). **Beide Punkte stehen bereits im Register** —
SVA als «zu prüfen»-Zeile vom 05.08., Kübler mit der Fristzeile 04.08.2026 17:00. Kein
neuer Eintrag nötig.

---

## 6. Normen-KB Run 45 — eine LV-relevante Aussage stand genau falsch herum (MacBook Pro, 06.08. 01:28–01:54)

**Kern & Entscheide.** Der Lauf arbeitete den Rückstand aus Run 43 vollständig ab: neun
Destillate mit offener Verifikation, je eine unabhängige Widerlegungs-Prüfung, alle
Befunde inline eingearbeitet. Verdikte acht beanstandet, eines bestanden.

Der Befund mit Aussenwirkung: eine **VKF-Aussage zu cr-Kabeln** war im Destillat genau
falsch herum verknüpft. Fussnote [2] **verbietet** cr-Kabel in horizontalen Fluchtwegen;
die Grenze von **200 MJ pro Laufmeter** gilt für die dort **zulässigen** Kabel. Das
Destillat hatte beides zusammengezogen. Am eigenen Rendering des Originals nachgeprüft
und korrigiert. Ebenfalls real und korrigiert: ein **Seitenversatz** in den
AFS-Destillaten (PDF-Blatt 12 trägt die abgelesene Seitenzahl 11, Blatt 31 die 30).
Dazu destilliert: VKF-Merkblatt **2001-15 in der Vollrevision 2022**; vier Rückstände aus
`QUESTIONS.md` geschlossen. Gesichert als `aa3002bd`.

Bemerkenswert für die Methodik: der zunächst als Hub-Befund eingestufte SIA-118-Punkt
wurde vom Lauf selbst zurückgenommen, weil das Register in Zeile 84 bereits
«SIA 118 | 2013 | Bestand 1991 → veraltet» führte. Neu war nur die Korrigenda C1.

**Offene Punkte & Folgeaktionen.** Keine offene Aktion: die falsche Verknüpfung ist in
der KB korrigiert, bevor sie in ein LV gewandert ist. Sie ist hier festgehalten, weil sie
sonst nirgends sichtbar wäre.

**Radar-relevant: nein.** Kein Termin, kein Geld, kein ausgehendes Erzeugnis betroffen.
Wäre sie in einem versandbereiten LV gestanden, gälte Regel 260805 und der Punkt gehörte
ins Register.

---

## 7. Betrieb — die hängende Fensterprobe war hausgemacht, und der Radar sah nur die halbe Registry (MacBook Pro, 05.08. 08:58 und 06.08. 00:57–05:09)

Zwei Befunde aus den Aufsichtsläufen, beide Hub-intern, aber mit Wirkung auf die
Nachtproduktion:

- **Fensterprobe:** `claude -p` ohne umgeleitetes stdin wartet auf eine interaktive
  Eingabe und läuft unbegrenzt weiter, ohne je etwas auszugeben. Mit `< /dev/null`
  antwortet die Probe in Sekunden mit «OK», rc=0. Es war nie ein Login- oder
  Kontingentproblem. Der eigentliche Schaden lag tiefer: `normen-training` Run 44 trat am
  05.08. um 01:34 am Lauf-Gate zurück (rc=1, kein Destillat), weil zwei verwaiste
  Prozesse mit PPID 1 beide Gate-Plätze belegten — das Gate zählt über
  `pgrep -f "claude (-p|--print)"`, also genau das Muster der Radar-Fensterprobe. **Die
  Aufsicht hat den Loop blockiert, den sie beaufsichtigt.** Rezept in der Task-Datei
  korrigiert, Waisen abgeräumt; Run 45 lief in der Nacht auf den 06.08. erfolgreich
  (siehe Block 6). Damit ist der Blocker aus dem Destillat 260805 (dort Block 4)
  aufgelöst.
- **Registry-Lücke:** `list_scheduled_tasks` zeigt immer nur die Registry der laufenden
  Station. Der Mac Mini führt **acht eigene Scheduled Tasks**, die in keinem Radar-Eintrag
  je vorkamen; `energie-training` feuert dort täglich um ~22:37 und liefert (12
  Destillate), trägt in seiner Datei aber `enabled: false` und einen falschen
  `cron_target`. **Die Frontmatter-Felder sind Dokumentation, nicht Live-Zustand.** Die
  Datei wurde bewusst **nicht** angefasst, weil unverifiziert ist, ob die App `enabled:`
  aus der Frontmatter liest, und ein Edit den produktivsten Loop der Nacht stillstellen
  könnte. Stattdessen wurde Schritt 3 des Radar-Tasks auf beide Registries erweitert.

Ebenfalls gemessen und ohne operative Wirkung: der Heartbeat vom 05.08. 09:41 meldete
zwei Warnungen, beide als Zählartefakt entlarvt (der «1 offene Sync-Task» ist der leere
Ordner `scripts/`, `heartbeat.sh:143` zählt Verzeichniseinträge statt Task-Dateien; die
Schutzmechanik-Warnung ist die Dauermeldung des Speicher-Wächters bei ~3'400 MB frei).
Der bexio-Hygienelauf vom 05.08. 08:31 war Zeichen für Zeichen identisch zum Vortag:
5 Verzugsfälle, **CHF 51'400.00**, kein Fall neu, keiner aufgelöst. Ein hängender
Rebase-Zustand blockierte ab 06.08. 05:30 jeden weiteren NAS-Selfcommit und wurde nativ
über SSH behoben (`ef89e4f3`).

**Radar-relevant: nein** für die Hub-Interna; die bexio-Verzugsfälle stehen unverändert
im Register.

---

## 8. Cloud/Dispatch

Fünf Dispatch-Protokolle im Fenster, alle Nachtschicht-Zyklen des Mac Mini, keine
Handy-Aufträge und keine Remote-Tasks aus der Cloud:

| Slot | Ergebnis |
|---|---|
| 05.08. 05:30–05:39 | ecoBKP 2026 destilliert (Merkblätter 112, 130, 201, Beginn 21) in die KB `energie` |
| 05.08. 13:30–13:38 | `grobkosten` weiterhin gesättigt; `projekt-lessons` Nullbefund (Truninger DS3, «Bauen im Betrieb»), Baujournale als künftiger Fundort vermerkt |
| 05.08. 23:30–23:37 | ERCO-Lichtplanungs-Ratgeber (BKP 233) für `bauprodukte` von S. 73 auf S. 95 |
| 06.08. 02:30–02:39 | ERCO-Ratgeber weiter von S. 95 auf S. 120 |
| 06.08. 05:30–05:41 | `grobkosten` am Original-PDF geprüft (Sackgasse bestätigt), Rebase-Stau im NAS-Selfcommit behoben (`ef89e4f3`) |

Als Folge der drei Nullbefunde in Serie wurde `projekt-lessons` als freies Nachtschicht-Ziel
**ausgesetzt** (Leerlauf-Wächter, Schwelle «3 Läufe ohne Liefer-Delta»), bis der dedizierte,
vollbudgetierte Baujournal-Lauf stattgefunden hat oder neues Rohmaterial in `raw/` liegt.
Alle drei Läufe endeten mit rc=0 und dokumentierten ihren Nullbefund sauber — es ist
Materialerschöpfung, kein Abbruch.

---

## 9. Routine-Läufe ohne Gesprächscharakter

Rund **28 weitere Läufe** im Fenster ohne Benutzereingabe: vollgas-chef-radar (05.08.
08:58, 16:57, 06.08. 00:57–05:09), vollgas-frühwarnung, logbuch-radar, hub-chef,
ag-gruendung-monitor, zahlungsabgleich/Verzugscheck, heartbeat, wissens-chef Run 26,
twin-Fidelity und twin-Mailtraining (Batches 86/87, Fenster 13.–20.03. und 16.–31.01.),
normen-training Run 45, energie Run 124 auf dem Mini, dazu fünf Fensterproben
(«Antworte nur mit: OK») und die Vorgängerausführung dieses Konversations-Logs.

Echte Blocker in dieser Gruppe, beide innerhalb des Fensters aufgelöst: die verwaisten
Fensterproben am Lauf-Gate (Block 7) und der hängende Git-Rebase im NAS-Selfcommit
(Block 8). Kein Kunden- oder Projekt-Deliverable ist dadurch ausgefallen.

Der Twin-Harness meldete zum wiederholten Mal einen knappen **Kontext-Budget-Riegel** im
kompilierten DNA-Block (Reserve zwischen 9 und 38 Byte); er wurde durch Verdichtung
freigeräumt, die Beleg-Prosa wanderte in den Artikel-Fliesstext. Wiederkehrendes Muster,
noch keine Pendenz.
