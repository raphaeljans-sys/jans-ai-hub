---
title: Layer 2 — The Verifier (Verifikations-Hebel)
status: established
last_updated: 2026-07-13
sources: [260616_marchese_the-spec_karpathy-method_transkript.md, bcherny_x_2007179861115511237]
links: [[the-spec]], [[3-schritte-spec]], [[environment-jans-hub]], [[anwendung-jans]]
---

# Layer 2 — The Verifier

Boris Cherny (Claude Code, Anthropic): der vielleicht wichtigste Hebel fuer gute Resultate
ist, **der KI einen Weg zu geben, ihre eigene Arbeit zu pruefen**. Mit diesem Feedback-Loop
steigt die Qualitaet des Endprodukts um das **2- bis 3-Fache**. Verifikation sieht je nach
Domaene anders aus (ein Bash-Befehl, eine Testsuite, ein Browser-/Simulator-Test) — sie
muss bombenfest sein.

> **Primaerquelle (F4 Cherny eingeloest, 2026-07-03):** Boris Cherny auf X, Tip 13/:
> *"probably the most important thing to get great results out of Claude Code -- give Claude
> a way to verify its work. If Claude has that feedback loop, it will 2-3x the quality of the
> final result. Claude tests every single change I land."* Damit ist das «2-3x»-Zitat nicht
> mehr nur ueber das Marchese-Transkript belegt, sondern direkt bei der Quelle.
> URL: https://x.com/bcherny/status/2007179861115511237

Warum: die KI glaenzt, wenn klare Antworten vorliegen, und liegt selbstsicher daneben, wenn
der Kontext fehlt. Der Verifier faengt genau das ab.

## Drei Wege, ein Output zu verifizieren
1. **Bewertungskriterien vorab setzen** (verbindet mit Schritt 3 der Spec, [[3-schritte-spec]]).
2. **Ein zweites KI-Modell als Kritiker** einsetzen (im Video: Codex-Plugin in Claude Code,
   `/codex:review`, `/codex:adversarial-review`). Im JANS-Hub vorhanden als Pattern:
   `/code-review`, der Korrektur-Harness (`rechtschreibung`+`layout`), das Twin-Fidelity-Gate.
3. **Externe Signale heranziehen**, wo moeglich — z.B. nach einem Deploy das Zielsystem
   abfragen und damit beweisen, dass es lief. Im JANS-Hub: Connectoren (bexio `--abgleich`,
   geo-zh OEREB, M365), die einen Output gegen die Realitaet pruefen statt gegen Vermutung.

## Verifier-Prompt
> "Before you start, define the precise criteria for a great result, use a past example as
> the format to match, and have a second AI check the final output."

JANS-Fassung:
> "Definiere vor dem Start die praezisen Kriterien fuer ein erstklassiges Resultat, nimm
> ein frueheres Beispiel als Format-Vorlage und lass ein zweites Modell das Endergebnis
> pruefen."

Im JANS-Hub ist die natuerliche Format-Vorlage ein **Goldstandard** (z.B. 2513 BAAR,
2620 Albertstrasse), die zweite Pruefinstanz der Skill `korrektur` und das `twin`-Gate,
das externe Signal der passende **Connector**.

## Lektion aus realer Anwendung: der Verifier muss das echte Abnahmekriterium spiegeln
Belegt am Fall AG-Gruendung (`outputs/2026-06-21_ag-gruendung_spec.md`, Korrektur-Delta
21.→22.06.2026). Das Verifier-Signal "Firmenname JANS AG frei" stuetzte sich auf eine
**Zefix-Exact-String-Suche** (0 Treffer "JANS AG" → gruen). Das war ein **falsches Gruen**:
die amtliche **Weisung zur Pruefung der Firmenidentitaet (Ziff. IV)** wertet den Rechtsform-
zusatz (AG/GmbH) als **nicht unterscheidungskraeftig** — die bestehende "JANS GmbH" blockiert
"JANS AG". Erst die **autoritative Instanz** (Notar/HRA) deckte das auf.

Konsequenz fuer jeden Verifier:
- **Ein automatisierter/Connector-Check ist nur indikativ**, solange er nicht das *exakte*
  Abnahmekriterium der entscheidenden Stelle nachbildet. Ein naiver Proxy (String-Match)
  ≠ das amtliche Pruefverfahren (Identitaets-/Unterscheidbarkeits-Pruefung).
- **Rangordnung der Signale benennen:** wo eine autoritative Instanz existiert (Behoerde,
  Notar, Gericht, Bank), schlaegt sie den Connector. Connector-Gruen heisst "Indiz", nicht
  "bestanden" — das ausdruecklich so kommunizieren (kein Scheinbeweis).
- **Falsch-Gruen ist teurer als Rot:** ein Verifier, der faelschlich gruen meldet, traegt
  einen Fehler ungebremst ins Endprodukt (hier: Belegset + UBS-Formular liefen auf einen
  spaeter nicht eintragungsfaehigen Namen). Verifier im Zweifel **streng** (Default = nicht
  bestanden, bis die autoritative Stelle bestaetigt).

**Empirisch bestaetigt (Verlauf bis 29.06.2026):** die autoritative Instanz behielt recht —
der Name wurde tatsaechlich auf «Raphael Jans AG» geaendert und das gesamte Belegset (Version
260627) darauf neu gezogen, genau weil der Notariats-/HRA-Befund das Connector-Gruen verwarf.
Die Rangordnung «autoritative Instanz vor Connector» ist damit nicht nur Lehrsatz, sondern
durch den realen Korrektur-Aufwand belegt.

## Verifier-Zuordnung je Domaene (Compounding-Tabelle, F3)
Waechst mit jeder realen Spec-Anwendung. Muster: **autoritative Instanz** (bindend) ·
**externes Signal/Connector** (Indiz) · **Format-Vorlage/Goldstandard** · **zweite Textinstanz**.

| Domaene | Autoritative Instanz (bindend) | Externes Signal (Indiz) | Format-Vorlage | Beleg-Fall |
|---|---|---|---|---|
| Recht / Behoerde / Gruendung | Notar · Handelsregisteramt (HRA) | Zefix (`--available`) — nur String-Indiz | Statuten-/Urkunden-Vorlage | AG-Gruendung 2026-06-21 |
| Buchhaltung / Steuern | Treuhand (Pruefstunde) · Steuerbehoerde ZH | bexio `--abgleich` (Bank↔Buchung) · UBS-Feed · SVA-/CSS-/UBS-Bescheinigungen | GA2024 + Beilageverzeichnis 2024 | Buchhaltungssystem 2026-07-02 |
| Baurecht / Norm / Fachwissen | die **Norm-Originalquelle** (SIA/VKF-Ziffer im Original-PDF) · **Gueltigkeitsregister** (`ersetzte_normen.pdf` + Gesamtverzeichnis) | `wissenscheck` (unbelegte Claims / veraltete Artikel) · Fundstellen-Stichprobe Destillat↔Original | Register-/Destillat-Schema der KB | Normen-Harness 2026-07-11 |
| Ausschreibung / Submission (Uebergabe) | **abnehmende Bauleitung** («Null Rueckfragen» = bestandenes Abnahmekriterium) | internes **Konsistenz-Gate** (Baustein 13: Plan↔LV widerspruchsfrei) · `korrektur`+`twin` · Identifikatoren gegen Projektordner (`identifikatoren-verifizieren`) | Goldstandard 2620 Albertstrasse | Submission 2414 Thalwil 2026-07-11 |
| Wettbewerb / Design / Studie | die **Jury** (Jury-Urteil / Jurybericht = bindende Wertung) | Refuter-Agent liest **Jurybericht gegen Dossier** · SIA-416-Rueckrechnung Zahlen↔Original-Excel · `programm-pruefer`-Konformitaets-Schleife (gruen) · `korrektur`+`twin` | **Jurybericht eines 2. Platzes** (Muttenz/Schoental) — nennt das Delta zum 1. Platz | Wettbewerbs-Layer 2026-07-12 |
| Text / Dokument / Mail | — (kein amtl. Abnehmer) | — | Goldstandard-Dokument | quer (jede Spec) |

Lektion aus dem Buchhaltungs-Fall: das externe Connector-Signal (`bexio --abgleich`) ist hier
stark, weil es zwei unabhaengige Realitaeten kreuzt (Bankeingang vs. Buchung) — trotzdem bleibt
die **Treuhand-Pruefstunde vor Einreichung** die bindende Instanz, analog zur Rangordnung oben.
Kennzahlen nie schaetzen: jede Summe gegen bexio + UBS-Feed belegt (Rule `identifikatoren-verifizieren`).

Lektion aus dem Wettbewerbs-Fall (2026-07-12): die schaerfste **Format-Vorlage** ist hier nicht der
gewonnene Wettbewerb, sondern ein **2. Platz** — der Jurybericht eines knapp Unterlegenen benennt das
konkrete **Delta zum 1. Platz** (was fehlte). Ein Sieg-Bericht lobt, ein 2.-Platz-Bericht diagnostiziert;
letzterer ist als Goldstandard prueffaehiger. Erweitert die Verifier-Rangordnung um eine Design-Domaene,
in der die bindende Instanz kein amtlicher Abnehmer, sondern das **Jury-Urteil** ist (analog zum
«abnehmenden Menschen» beim Submission-Fall) — die Musterlektion «autoritative Instanz muss keine
Behoerde sein» haelt damit ueber drei Domaenen (Behoerde · abnehmende Bauleitung · Jury).

## Verifier-Zustand «Warten auf die autoritative Instanz»
Wenn eine autoritative Instanz das Abnahmekriterium haelt (Behoerde/Notar/Bank/Treuhand), ist ihr
**noch ausstehender Befund** ein gueltiger Verifier-Zustand, kein Stillstand — die Spec ist erst
«gruen», wenn die Instanz bestaetigt. Der richtige Umgang ist ein **low-noise Monitor-Loop**: er
prueft periodisch, meldet «NICHTS NEUES» ohne Aktion und eskaliert (Status-Mail) nur bei echter
Aenderung. Belegt AG-Gruendung (30.06.–06.07.): 8+ Monitor-Eintraege «Keine Status-Mail gesendet,
nichts Neues», waehrend das Vorhaben auf UBS-Kapitalbescheinigung + Notariats-/HRA-Antwort wartet.
So bleibt der Verifier scharf (kein Falsch-Gruen durch Ungeduld), ohne Laerm zu erzeugen — die
Steady-State-Phase einer lebenden Spec (siehe [[anwendung-jans]] Schritt 2).

### Zwei Blocker-Typen im Monitor auseinanderhalten (Lektion AG-Gruendung 09.07.2026)
Der low-noise Monitor darf nicht jeden offenen Punkt gleich behandeln. In Phase B stehen zwei
grundverschiedene Blocker nebeneinander:
- **Externes Warten** — die autoritative Instanz ist am Zug (UBS-Kapitalbescheinigung,
  Notariats-/HRA-Antwort). Hier ist «NICHTS NEUES» ohne Aktion **richtig**: es gibt nichts zu tun,
  ausser periodisch zu pruefen.
- **Selbst-blockierte Owner-Aktion** — ein Schritt haengt an *uns/Raphael*, nicht an der Instanz
  (im Fall: «Antwort ans Notariat raus» — Name «Raphael Jans AG» bestaetigen + Word-Dateien
  Urkunde/Statuten senden, offen seit 22.06., d.h. 17 Tage). Diese Owner-Aktion ist **handlungs-
  bereit** und darf NICHT in der «nichts Neues»-Kadenz mituntergehen.

Belegt: der Monitor fuehrte beide Blocker ~10 Tage (30.06.–09.07.) unter derselben low-noise-Zeile
(«keine Status-Mail, nichts Neues»); die selbst-blockierte Notariats-Antwort alterte dabei still,
statt eskaliert zu werden. **Konsequenz:** low-noise gilt nur fuer echtes externes Warten; sobald
ein Punkt am eigenen Handeln haengt, gehoert er in jeden Monitor-Lauf als **aktive Nudge/Pendenz**
(nicht als «nichts Neues»), sonst frisst die Steady-State-Ruhe eine erledigbare Aufgabe. Die richtige
Trennfrage je Blocker: «Wartet hier die Instanz — oder warten wir auf uns selbst?»

## Ein Mass validiert eine Aenderung nur, wenn der Mess-Prozess die Aenderung konsumiert (Lektion Spec-Lauf 10, 13.07.2026)
Naheliegende Verwechslung von Korrelation und Kausalitaet im Verifier: Lauf 8 hatte einen echten
Verdrahtungsfehler behoben (Rule `jans-dna.md` fehlte im `CLAUDE.md`-@-Import) und im selben Log
notiert, dass danach ein Twin-Fidelity-Zweitlauf «94» erreichte — mit dem Verdacht, der Fix habe
die Fidelity gehoben. Die Nachpruefung (Lauf 10) widerlegt den Kausalschluss:
- Die Fidelity stieg **schon vor** dem Fix stetig (84 am 14.06. → 90 am 30.06. → 93 am 12.07.); der
  Sprung 93→94→95 an den drei 13.07.-Laeufen ist die Fortsetzung eines bestehenden Trends.
- **Keiner** der drei 13.07.-Fidelity-Outputs erwaehnt den Import; jeder schreibt seinen Wert
  ausdruecklich dem **gezogenen Golddatensatz** zu (dichter im Wiki verankerte Golds → hoeherer Wert).
- Strukturell entscheidend: der Fidelity-Selbsttest wird vom `twin-chef`-Harness gefahren, der
  `jans-dna.md` + die Facetten-Wikis **direkt** liest — unabhaengig davon, ob `CLAUDE.md` die Rule
  @-importiert. Das Mass ist damit **orthogonal** zum Fix: der Import verbessert den echten
  Live-Session-Output (DNA laedt im Normalbetrieb ueberhaupt), aber der twin-eigene Selbst-Score
  misst genau das nicht.

**Regel fuer den Verifier:** bevor eine Metrik-Bewegung einer Aenderung zugeschrieben wird, pruefen,
ob der Mess-Prozess die Aenderung ueberhaupt konsumiert. Tut er es nicht, kann die Metrik den Fix
weder bestaetigen noch widerlegen — Trennfrage: «Fliesst mein Eingriff in genau den Pfad, den diese
Zahl misst?» Ergaenzt die «Praxis als autoritative Instanz» aus Lauf 9: dort belegte Empirie statt
Ermessen, hier die Warnung, belegte Empirie nicht ueber einen falschen Kanal zu lesen.

## Eine Monitor-Lektion haelt nicht von selbst — Reue-Pruefung noetig (Lauf 11, 13.07.2026)
Lauf 9 (09.07.) formulierte die Regel «Zwei Blocker-Typen» oben: eine selbst-blockierte
Owner-Aktion muss in jedem Monitor-Lauf als **aktive Nudge** erscheinen, nicht in der
«nichts Neues»-Zeile altern. Die Gegenpruefung 4 Tage spaeter (Lauf 11, belegt am selben
AG-Gruendung-Fall) zeigt: die Lage hat sich **verschlechtert statt verbessert**.
- Der `ag-gruendung-monitor`-Loop selbst hat seit **10.07.2026 keinen einzigen Eintrag mehr**
  geschrieben (3 Tage Stillstand, weder Aktion noch «nichts Neues») — die letzte Zeile im
  Monitor-Log (`outputs/2026-06-21_ag-gruendung_spec.md`) bleibt der 10.07.-Eintrag.
- Der taegliche `logbuch-radar` (`logbuch/LOGBUCH.md`) hat die AG-Gruendung/Notariat-Zeile in
  **vier aufeinanderfolgenden Briefings** (10./11./12./13.07.) **gar nicht mehr erwaehnt** —
  obwohl `logbuch/fristen.md` dieselbe Zeile unveraendert mit Status **«offen»**, Prioritaet
  **«hoch»** fuehrt (Eintrag datiert 27.06., damit **16 Tage** ohne Fortschritt; die zugrunde
  liegende Notariats-Feststellung ist **21 Tage** alt).
- Damit ist die Owner-Aktion nicht bloss «leise gealtert» (der Lauf-9-Befund), sondern **komplett
  aus der taeglichen Sichtbarkeit verschwunden** — ein staerkerer Fehlerfall als der urspruenglich
  beschriebene. Eine im Wiki dokumentierte Regel ist offensichtlich kein Selbstlaeufer: sie wurde
  einmal befolgt (07.–09.07., "hoch"-Zeile taeglich sichtbar) und ist danach wieder abgerissen.

**Konsequenz fuer den Verifier:** eine Verhaltenskorrektur braucht nicht nur einen Beleg, dass sie
einmal gewirkt hat, sondern eine **wiederkehrende Reue-Pruefung**, ob sie noch wirkt — Compliance
kann driften, ohne dass irgendwo ein Fehler geloggt wird (das System meldet ja gerade nichts, wenn
ein Punkt verschwindet). Trennfrage fuer kuenftige Trainingslaeufe: «Ist die zuletzt behobene
Monitor-/Nudge-Lektion beim naechsten Blick noch sichtbar in der Praxis — oder nur noch im Wiki?»
Ergaenzt Lauf 10 («ein Mass validiert nur, wenn der Mess-Prozess die Aenderung konsumiert»): dort
fehlte die Konsumierung eines Fixes durch ein Mass, hier fehlt die **Fortdauer eines Verhaltens**
ueberhaupt. Ausserhalb des Mandats von `wissen/spec` (Aenderung an `logbuch`-Betrieb/Scheduled Tasks
liegt beim Skill `logbuch`) — hier nur als Befund dokumentiert und an Raphael/`logbuch` geflaggt,
nicht autonom repariert.

**Bestaetigung + Praezisierung (Lauf 12, 13.07.2026): ein Flag ist keine Reparatur.** Die
Reue-Pruefung aus Lauf 11 wurde diesen Lauf selbst wiederholt — **unabhaengig** gegen die
Primaerquellen (`logbuch/LOGBUCH.md`, `logbuch/fristen.md`, Monitor-Log im AG-Spec-Output) geprueft,
nicht Lauf 11 geglaubt. Ergebnis: die Luecke **haelt an und hat sich nicht selbst geheilt**. Der
`ag-gruendung-monitor` schweigt weiter seit 10.07. (0 Eintraege 11./12./13.07.); die `logbuch`-Briefings
vom 10.–13.07. erwaehnen die AG-Gruendung weiter **gar nicht** (letzte Nennung 09.07.), waehrend
`fristen.md` die Zeile unveraendert «offen»/«hoch» fuehrt (Datei heute 15:03 aktualisiert, die AG-Zeile
aber seit 27.06. unberuehrt = 16 Tage). Damit ist Lauf 11s **Prognose falsifiziert** («die geflaggte
Luecke sollte im naechsten logbuch-radar wieder auftauchen»): weder der Morgen-Radar (06:57) noch der
Hub-Chef-Lauf (14:00) am 13.07. haben sie zurueckgeholt. Lehre: **ein im Wiki notiertes oder an einen
Menschen gerichtetes Flag remediert nichts, solange kein Prozess das Flag konsumiert** — genau der
Kausal-Zwilling zu Lauf 10 («ein Mass validiert nur, wenn der Mess-Prozess die Aenderung konsumiert»):
ein Flag repariert nur, wenn ein Prozess das Flag liest und danach handelt. Die Reparatur muss im
**erzeugenden Prozess** sitzen (Monitor-/Radar-Logik, die `fristen.md` wieder ins Briefing zieht), nicht
in einer KB-Notiz. Bleibt ausserhalb des `wissen/spec`-Mandats — erneut an Raphael/Skill `logbuch` zu
eskalieren, diesmal mit dem belegten Zusatz, dass die blosse Dokumentation nach 3 Tagen nachweislich
wirkungslos blieb.
