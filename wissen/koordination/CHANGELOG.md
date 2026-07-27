# CHANGELOG — KB koordination (Wissens-Chef)

Jede Aktion der Koordinationsinstanz, datiert, neueste zuoberst.
Im Zweifel, was geaendert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-07-27 — Run 18 (Workflow-Fan-out: 5 Lese-Agenten + 10 adversariale Verifikatoren; 7 BESTAETIGT / 3 WIDERLEGT)
- **Verfahren:** Workflow-Tool, 15 Agenten, ~2.19 Mio. Subagent-Token, 260 Tool-Calls, 13:21 Min.
  Delta seit Run 17 nur **knapp eine Stunde** — trotzdem ergiebig, weil in diesem Fenster genau das
  entstand, was Run 17 angestossen hatte: der **EG-GSchG-Nachzug der Nachtschicht** (12/15 Fundorte)
  und **energie Run 117** (5 Destillate + 3 Wiki-Artikel). Bericht:
  `outputs/2026-07-27_wissens-chef-run18.md`. 13 Stellen in 12 Dateien korrigiert.
- **[korrektur, materiell, WICHTIGSTER BEFUND] Der eigene Sweep hat einen neuen Fehler eingebaut.**
  `baurecht/buecher/band-2/12-baureife-teil3` ordnete im **Frontmatter** die Abwasser-/Kanalisations-
  paragraphen dem WsG-Abschnitt **§§ 45-48** zu — das ist der planerische Gewässerschutz. Der
  **Fliesstext derselben Datei** sagt zweifach das Richtige (§§ 49 ff., Abschnitt C). Chef hat das
  amtliche PDF selbst gezogen: «C. Siedlungsentwaesserung» beginnt bei § 49; «§ 13 ff.» ist zudem ein
  Uebertragungsfehler fuer «§§ 14 ff.». **Regel: nach einem Erlass-Sweep prueft eine zweite Instanz
  die ERSETZUNG, nicht das Verschwinden** — ein Sweep, der eine Falschzitierung durch eine andere
  ersetzt, besteht jede grep-Erfolgskontrolle.
- **[korrektur, materiell] Der Drittkanal des Sweeps blieb offen.** `planungsgrundlagen` fuehrte die
  OEREB-Themen 130/131/132 weiter auf **LS 711.1 (EG GSchG)**, `status: established`, ungeflaggt — in
  DERSELBEN Tabelle, in der Thema 190 vorbildlich geflaggt ist. Dritter Fundort:
  `recht-norm-regenwasser-gewaesserraum-zh.md:108`. Nachfolge am Volltext verifiziert und damit
  schaerfer als der Agenten-Vorschlag (der Thema 132 offenlassen wollte): **§ 45 WsG** = Gewaesser-
  schutzbereiche UND Grundwasserschutzareale, **§ 46 WsG** = Grundwasserschutzzonen. Nebenfund mit
  Eigenwert: **§ 48 Abs. 2 WsG** verankert den **Waermenutzungsatlas** gesetzlich.
- **[korrektur, materiell] 70-%-Kurzschluss in zwei energie-Destillaten.** Die 70 % der staedtischen
  WVV wurden als Voraussetzung der Anschlussverfuegung nach § 295 Abs. 2 PBG ausgegeben — der
  amtliche Wortlaut kennt **keine Prozentschwelle**, sondern zwei kumulative Voraussetzungen; der
  **Gleichwertigkeits-Vorbehalt** (der Hebel jeder Einsprache) fehlte ganz. Drei verschiedene
  70-%-Regeln getrennt (WVV Art. 8 lit. a / § 47 g BBV I / AfB-Merkblatt). Lehrreich: das
  Schwesterdestillat **warnt auf Z. 42-43 selbst davor** und zieht den Kurzschluss auf Z. 61-63.
- **[korrektur, materiell] Rueckfall hinter die eigene Chef-Korrektur vom Vortag (7. Fundort des
  Musters).** Das neue Submetering-Destillat verneinte die Befreiung der Zwischenzone
  200'000-500'000 kWh; **§ 48c Abs. 1 lit. c BBV I** befreit schwellenunabhaengig bei freiwilliger
  Zielvereinbarung (KMU-Modell). Genau diese Korrektur hatte der Chef in **Run 16** in
  `planungsgrundlagen` gesetzt und dort markiert. **Eine Korrektur in KB A immunisiert KB B nicht.**
- **[korrektur, materiell] Falscher Kantonskatalog Solarpflicht (2. Auftreten der Fehlerklasse).**
  «60 % der geeigneten Bruttodachflaeche» pauschal fuer BE/BL/AG — AG bleibt bei **20 % aGF**, BE
  kennt gar keine Flaechenschwelle. Der Verifikator fand an der Primaerquelle einen gewichtigeren
  zweiten Fehler: AG schliesst die Befreiung wegen technischer Unmoeglichkeit **ausdruecklich aus** —
  womit die Kernantwort des Destillats fuer AG nicht traegt.
- **[korrektur, materiell] SIA 385/1: die KB hatte die Antwort zwei Tage vor der Frage.** `normen`
  hatte die Nummern-Wiederverwendung (385/1:2000 → **385/9**:2011; 385/1 ab 2011 Trinkwarmwasser) in
  Run 22 aufgeloest, das Therapiebad-Destillat erklaerte sie fuer ungeklaert. **Der Verifikator
  verschaerfte den Befund:** geltend ist laut SIA-Shop **385/9:2023** — das normen-REGISTER speist
  sich aus einem Bestand mit **Stand 25.02.2013** und bildet spaetere Revisionen strukturell nicht ab.
  Waere der Agenten-Vorschlag woertlich uebernommen worden, haette er einen neuen Fassungsfehler
  erzeugt. **Neue Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck».**
- **[korrektur, materiell] § 30a BBV I aus zweiter Hand zitiert.** Das neue SZ-Destillat zog den
  ZH-Wortlaut aus einem energie-Schwesterartikel statt aus `baurecht/raw`: «zumutbar» statt amtlich
  «**tragbar**» (traegt die Behauptung «nahezu wortgleich» zu SZ § 21 kEnV), und der **Ausloese-
  tatbestand** von Abs. 2 fiel weg — ohne ihn erzeugt die ZH↔SZ-Tabelle eine Pflicht, die es fuer
  Bestandsbauten ohne Erneuerung der Kaelteerzeugung nicht gibt. Chef am Original gegengelesen.
- **[WIDERLEGT, wertvollster Nicht-Befund] «Amt fuer Gewaesser SZ existiert nicht»** — gestuetzt auf
  einen hub-internen grep-Negativbefund. Das AfG existiert; SZ **teilt** die Gewaesserschutzfachstelle
  (AfG Abwasser § 17 EGzGSchG / AfU Grundwasser § 29 EGzGSchG). **Die Umsetzung haette die Falsch-
  angabe erst erzeugt.** Regel: «steht nicht in unserer KB» ist nie «gibt es nicht».
- **[WIDERLEGT mit Restbefund] BL-Solarpflicht** — verwechselte Regelungsstufen (Bundespflicht
  Art. 45a EnG gilt; gekippt wurde die kantonale Ausdehnung darunter, das Volks-Nein 8.3.2026 betraf
  eine Verschaerfung). Echter Restbefund bestaetigt: BL steht in Wiki und Quell-Destillat **doppelt**
  → beide ueberholten Zeilen entwertet.
- **[WIDERLEGT] Therapiebad/SIA 380/1 Kat. XII** — nicht derselbe Gegenstand (Gebaeudekategorie vs.
  Raumnutzung SIA 2024). 3 von 10 kassiert (Run 17: 2/10, Run 15: 5/14) — gesunde Quote.
- **[gemeldet, NICHT ausgefuehrt] P1: der WsG-Volltext liegt nirgends im Hub.** Die fuer den
  ZH-Erlassstand fuehrende KB zitiert das WsG an ~14 Stellen und hat es nicht (`find *724.1*` = 0),
  waehrend sie fuer PBG/EnerG/BBV I/HWSchV/AbtrG/EG ZGB je einen amtlichen Volltext fuehrt. In
  `baurecht/wiki/QUESTIONS.md` mit **funktionierender Bezugs-URL** angemeldet (die generische
  zh.ch-`dam`-URL liefert HTML statt PDF — Falle dokumentiert) plus Mindestumfang. Ebenso P2:
  §§ 4-7 EnerG fehlen in `raw/260712_amtlich_zh_energ.md`, weshalb `energie` den Wortlaut selbst
  pflegt. Inventaraufbau gehoert dem Loop, nicht der Meta-Aufsicht.
- **[ESKALATION AN RAPHAEL, unabhaengig verifiziert] Zwei Taktgeber je Loop auf dem Mac Mini.** Der
  energie-Loop traf um 22:37 auf eine laufende Zweitinstanz und trat regelkonform zurueck. Ursache:
  App Scheduled Task **und** launchd-Agent (`ch.jans.training-energie`, `ch.jans.training-plg`)
  feuern 7 Min. versetzt. **Chef-Gegenprobe per ssh: beide Agenten geladen**, plists im Ordner
  (normen unscharf daneben). Genau der von Rule 260727 verbotene Zustand; folgenlos war er nur, weil
  die Dispatches am leeren Kontingent scheiterten. Konfigurationsaenderung → Entscheid Raphael.
- **[ENTSCHEID RAPHAEL, unveraendert offen aus Run 17]** zwei Rule-Aenderungen an `anrede-kontakte.md`
  (generelle Gewichts-Klausel; Felix Staehlin — Karl Waechter AG oder Staehlin AG Sanitaer?).

## 2026-07-27 — Run 17 (Workflow-Fan-out: 5 Lese-Agenten + 10 adversariale Verifikatoren; 8 BESTAETIGT / 2 WIDERLEGT)
- **Verfahren:** Workflow-Tool, 15 Agenten, ~2.17 Mio. Subagent-Token, 256 Tool-Calls, 14:08 Min.
  Zuschnitt auf das **Delta seit Run 16** (26.07., 00:45) — praktisch jede KB hat am 27.07. geschrieben.
  Lese-Agenten ohne Schreibrecht; alle Edits vom Chef selbst. Kollisionsschutz vorab geprueft.
  Bericht: `outputs/2026-07-27_wissens-chef-run17.md`.
- **Ergebnis: 17 Meldungen, 10 verifiziert, 8 BESTAETIGT (5 materiell), 2 WIDERLEGT**, 15 Stellen in
  12 Dateien korrigiert, 2 Rule-Entscheide an Raphael.
- **[korrektur, materiell] Unterdimensionierte Brandschutzbekleidung (planungsgrundlagen).** Der
  PL-03-Wegweiser kehrte die **Kapselungsregel** um: K stand als fixe 30 Minuten mit der Differenz als
  blosser Obergrenze statt als Rechenwert nach unten (Gesamtbauteil minus 30 Min., Untergrenze
  K30-RF1). Folge: bei **REI 90-RF1** sah **K30-RF1** zulaessig aus, wo Tab. 232-2 zwingend **K60-RF1**
  verlangt — ein Fehler, der aus dem Vorprojekt-Grobcheck in eine Ausschreibungsklausel wandern kann.
- **[korrektur, materiell] Wandtraglast auf den falschen Systemtyp verallgemeinert (planungsgrundlagen).**
  q'd,fi stand «durchgehend» je Feuerwiderstandsklasse (20/50 kN/m'), gilt aber nur fuer EINEN der
  sieben Lignum-Systemtypen. Beide Richtungen falsch: Blockbau 50 statt 20 kN/m' (**unsichere
  Ueberschaetzung**), Brettstapel 20 statt 70. `normen` hatte den Fehler in Refuter-Runde 31 bei sich
  laengst korrigiert — in der Abnehmer-KB lief er unbemerkt weiter.
- **[korrektur, materiell, ERGIEBIGSTER BEFUND] Aufgehobener Erlass als geltende Bewilligungsgrundlage
  (baurecht).** Erstmals lag die laut Matrix **fuehrende** KB falsch: `baurecht` fuehrte **§ 8 EG GSchG**
  an 17 Fundorten als geltendes Recht, `energie` behauptete die Abloesung (ungeprueft, aus dem
  AWEL-Glossar). **Der Chef hat das amtliche PDF `724.1_12.12.24_133.pdf` selbst gezogen:** § 126 lit. a
  hebt das EG GSchG auf, Fn. 2 nennt das Inkrafttreten **1.6.2026**, § 44 Abs. 1 lit. a Ziff. 3 erfasst
  die Abwasserenergienutzung neu ausdruecklich. **`energie` hatte recht, `baurecht` zitierte
  aufgehobenes Recht.** Ursache: der WsG-Nachzug aus Buch-Run 50 sweepte nur «HWSchV» und galt seit
  Run 64 als geschlossen — § 126 hebt aber ZWEI Erlasse auf. **Regel: nach dem NACHFOLGE-Erlass sweepen,
  nicht nach dem Erlass, der den Anlass gab.** → 2 Stellen direkt korrigiert, 15 als **Prioritaet (a)
  im ARBEITSREGISTER** angemeldet.
- **[korrektur, materiell] Die einzige gesetzliche Frist des Bauentscheids fehlte ganz
  (auflagebereinigung).** Der Fristen-Artikel listete sechs Einreichungszeitpunkte und keine einzige
  gesetzliche Frist; grep nach «Rechtsmittel/anfechten/Anfechtung/Rechtsschutz» ueber die ganze KB:
  **0 Treffer**. Fehlend die **Rekursfrist 30 Tage** (§ 22 VRG, § 329/§ 316 PBG) — wer Auflagen nur
  «bereinigt», akzeptiert sie faktisch. → Abschnitt eingesetzt + **Frist-Gate vor Schritt 1**
  (abarbeiten ODER anfechten).
- **[korrektur, materiell] Veraltete Quelle mit Vorrang vor geltendem Recht (planungsgrundlagen).**
  **Lignatec 17/2005** (VKF-Ausgabe 2003) wurde ohne Jahr und ohne Vorbehalt **vorrangig vor der
  geltenden VKF-BSR-Tabelle** empfohlen, waehrend `normen` dieselbe Publikation als «VERALTET» fuehrt.
  → Vorrang umgekehrt.
- **[struktur] Handoff ins Leere (baurecht → auflagebereinigung)** ueber die Ausnahmebewilligungs-Linie
  statt § 321 PBG/[[nebenbestimmungen-und-reverse]] → umgehaengt, Gegenverweis gesetzt.
- **[struktur] Rule `normen-referenz` greift beim Schreiben weiterhin nicht — 5. Fundort:** keine der
  fuenf neuen energie-Dateien hatte einen einzigen Verweis nach aussen (grep je 0); dito die neuen
  Lignum-Destillate → Querbezug-Bloecke beidseitig gesetzt, Abnehmer-Block in `grobkosten`.
- **[WIDERLEGT, Positiv-Ergebnis] Beide Befunde zum Wohnbau-Parameter-Set gefallen.** Gesucht wurde
  gezielt dieselbe Fehlerklasse, die beim Healthcare-Set in Run 15/16 zutraf — der Kaveat steht
  vollstaendig im Set, die Bandbreiten-Differenz erklaert sich aus Bezugsgroesse und Scope.
  **Der KB-Loop hat beim zweiten Set richtig gemacht, was er beim ersten falsch gemacht hatte.**
- **[WIRKUNGSNACHWEIS] Die Run-16-Strukturregel greift — erstmals messbar.** Der normen-Loop hat in
  Run 30 zwei der vier ins Arbeitsregister umgehaengten Bring-Schulden tatsaechlich abgearbeitet
  (SIA 491, SN EN 12193 mit Bestandsvermerk). Zwei Runs lang war nichts geschehen, solange sie nur in
  der Fragenliste standen. **Diagnose verifiziert: der Ort der Anmeldung entscheidet.**
  **7. Fundort desselben Musters:** «SIA 181:2020 re-destillieren» stand seit Run 3 — 14 Tage — nur in
  der Fragenliste → als **P1**-Inventar-Zeile nachgetragen.
- **[erledigt] Offener Punkt 1 aus Run 16** (Fassungsbezeichnung «Nachtrag vom 19.4.2021» im
  Grossverbraucher-Destillat, widersprach dem eigenen Quellenverzeichnis) → auf Nachtrag 129
  angeglichen.
- **[ENTSCHEID RAPHAEL, nichts geaendert] Zwei Rule-Aenderungen an `anrede-kontakte.md`:** (1) generelle
  Klausel «Anrede-Stufe folgt dem Gewicht des Anliegens» (dreifach belegt, heilt alle Zeilen zugleich;
  Anlass Besnik) · (2) Felix Staehlin — Karl Waechter AG oder Staehlin AG Sanitaer? Zwei Firmen, ein
  Vorname; Identifikator, der in Anschreiben und Werkvertrag wandert.
- **[verfahren] Neue Chef-Regel:** bei einem Befund, der eine **fuehrende** Quelle korrigiert oder eine
  Sweep-Aktion ausloest, prueft der Chef **selbst am Original** nach — die adversariale Agentenstufe
  allein reicht dafuer nicht. Bei M-3 hat das die Richtung des Befunds umgekehrt.

## 2026-07-26 — Run 16 (Workflow-Fan-out: 5 Lese-Agenten + 10 adversariale Verifikatoren; 10 BESTAETIGT / 0 WIDERLEGT)
- **Verfahren:** Workflow-Tool, 15 Agenten, ~2.06 Mio. Subagent-Token, 250 Tool-Calls, 10:45 Min.
  Zuschnitt bewusst eng auf das **Delta seit Run 15** (25.07., 13:20): fuenf Paare, jedes dort angesetzt,
  wo zwei KBs in den letzten Stunden unabhaengig zum selben Gegenstand geschrieben haben. Kollisionsschutz
  (Rule 260724) vorab und vor den normen-Edits geprueft (Run 29 um 00:02 beendet), Commit pathspec-begrenzt.
  Bericht: `outputs/2026-07-26_wissens-chef-run16.md`.
- **Ergebnis: 15 Meldungen, 10 verifiziert, 10 BESTAETIGT, 0 WIDERLEGT** (Run 15: 5 von 14 kassiert).
  Der Unterschied liegt am Zuschnitt, nicht an der Agentenzahl. **Drei von sechs materiellen Fehlern
  betrafen Material, das keine elf Stunden alt war** — der Chef wirkt hier als unmittelbare zweite Instanz
  ueber dem, was die Nacht-Loops gerade produziert haben.
- **[korrektur, materiell] Falscher Befreiungskatalog im ZH-Energierecht (energie).** Das brandneue
  Grossverbraucher-Destillat schrieb dem Kt. ZH an vier Stellen den **Schwyzer** Katalog zu
  («§§ 6-8/§ 10 EnerG» = § 9 Abs. 4 kEnG SZ). Amtlich: § 13a Abs. 2 EnerG delegiert an die Verordnung,
  **§ 48b Abs. 2 BBV I** nennt §§ 22a, 23, 26, 29 Abs. 2-4, 30a, 45, 45a. Verifier hat das amtliche
  EnerG-PDF von notes.zh.ch gezogen. Analogie ZH/SZ auf die Schwellenwerte eingeschraenkt.
- **[korrektur, materiell] Betriebsoptimierung ZH (planungsgrundlagen).** Fristbeginn stand auf
  «Fertigstellung» statt **Inbetriebsetzung** (§ 13d Abs. 1 EnerG), und die beiden Befreiungstatbestaende
  (Grossverbraucher-Zielvereinbarung, KMU-Modell, § 48c Abs. 1 lit. b/c BBV I) fehlten ganz. **Praxisfolge:**
  Spital/Pflegeheim waere faelschlich in die BO-Pflicht gefallen.
- **[korrektur, materiell] SIA 181 auf den falschen Fall angewandt (energie, 4 Stellen).** 28 dB(A)
  (Tabelle 6, **zwischen** Nutzungseinheiten) war zum Zielmass «im eigenen Schlafzimmer» erklaert worden;
  **innerhalb** der eigenen Einheit gibt Ziff. 0.1.2 nur Empfehlungen (Anhang G 30/25 dB(A)). Fallunterscheidung
  eingesetzt, STWEG-Sonderfall (Ziff. 2.2.2) ergaenzt.
- **[korrektur, materiell] «Wird von keiner Behoerde geprueft» (energie, 2 Stellen)** war eine Verallgemeinerung
  der engeren Destillat-Aussage. SIA 181 Ziff. 0.1.7 unterstellt den abgestrahlten Koerperschall bis zur eidg.
  Erschuetterungsverordnung **direkt dem USG** → praezisiert; die Korrektur macht das Bauherren-Argument staerker.
- **[korrektur, materiell] Uebergabe fuer erledigt erklaert, ohne dass sie ankam (energie → normen).**
  Die SIA-382/1-Schliessung war gegen `normen/wiki/REGISTER.md` verifiziert worden; das gemeldete **Destillat**
  lief unveraendert als `established` mit Stand 2014 und ohne Fassungshinweis — genau das Artefakt, das die
  Rule `normen-referenz` fuer LV/Werkvertrag zieht. Ausgaben-Vorbehalt gesetzt, Schliessung teilweise zurueckgenommen.
- **[korrektur, materiell] Healthcare-Parameter-Set: Zahl bereinigt, Quellenzeiger nicht (entwurfs-referenzen).**
  Die Neufassung v2.0 (25.07., 21:53) hat das beanstandete Band entfernt, aber `quelle_kb: "wissen/grobkosten/"`
  uebernommen — die KB, die Healthcare ausdruecklich ausschliesst. Da `quelle_kb` das einzige maschinenlesbare
  Quellenfeld ist, waeren konsumierende Werkzeuge auf die untersagte Quelle gelenkt worden. Umgestellt auf
  `immobilienbewertung/realwert-sachwert`, m2-NF auf Skill `kostenschaetzung`, grobkosten explizit als
  nicht anwendbar deklariert; JSON schema-valide.
- **[E-2 geschlossen] Der offene Fachentscheid aus Run 15 hat sich erledigt** — nicht durch Raphael, sondern
  durch die Neufassung: v2.0 fuehrt fuer Healthcare gar keine eigenen Kostenzahlen mehr (Muster B6 belegt, dass
  kein externer Jurybericht einen projektspezifischen Kennwert nennt) und verweist deckungsgleich auf die
  fuehrende Quelle. **Verfahrenshinweis:** faktisch wurde damit im KB-Loop die Loeschoption gezogen, die Run 15
  als rueckfragepflichtig markiert hatte. Sachlich begruendet, aber ein Praezedenzfall — Vorschlag im Bericht,
  Sperrvermerke kuenftig maschinenlesbar zu setzen.
- **[struktur, neue Diagnose] Muster 1 «Uebergabe verpufft» zum 5. und 6. Mal — mit der Ursache.** Die vier
  Bring-Schulden, die Run 15 in `normen/wiki/QUESTIONS.md` angemeldet hatte, waren nach Run 28 unberuehrt:
  der Nacht-Loop waehlt seine Arbeit aus dem **Arbeitsregister** (`training/norm-inventar.md`), nicht aus der
  **Fragenliste**. → vier Inventar-Zeilen gesetzt, Registerstatus von «behoben» zurueckgenommen.
  **Verallgemeinerte Regel: eine Uebergabe gehoert in das Arbeitsregister der Empfaenger-KB, nicht nur in
  deren Fragenliste** (praezisiert die Run-8-Regel). Zweiter Fall: energie hatte einen § 273-Korrekturhinweis
  an `baurecht` nur bei sich notiert → in `baurecht/wiki/QUESTIONS.md` zugestellt.
- **[struktur] Weitere Aktionen:** Querbezug-Block `normen` im Koerperschall-Destillat (Rule `normen-referenz`
  greift beim Schreiben weiterhin nicht — 4. Fundort) · ⚠-Ausgaben-Flag SIA 181 2006/+3 dB gegen 2020/+4 dB
  beidseitig · Bring-Schuld zur BBV-I-Verordnungsebene geschlossen · Abnehmer-Block in der fuehrenden
  Healthcare-Kennwertquelle (`immobilienbewertung/realwert-sachwert` kannte seine Abnehmer nicht) ·
  Haupt-INDEX entwurfs-referenzen von den entfallenen v1.0-Quellen befreit · **drei neue Matrix-Zeilen**
  (Energie-Erlassstand ZH → baurecht; Grossverbraucher/Vollzug + SZ-Energierecht → energie;
  Einzelfall-Beweiskette → projekt-lessons).
- **[erst-pruefung] `projekt-lessons`** (nie zuvor im Register, Rotation): KB-eigene Tagging-Regel im einzigen
  Artikel nicht umgesetzt (`links: []`, keine SIA-Phase) und vom Health-Check als «korrekt» abgenommen →
  Frontmatter nachgezogen · Lesson und `auflagebereinigung` dokumentierten **denselben Vorgang** (Auflage II.19,
  Projekt 2619), ohne voneinander zu wissen → bidirektional verlinkt mit Rollentrennung · generische VKF-Werte
  als **abgeleitet** gekennzeichnet (fuehrend bleibt `normen`).
- **[offen, keine Chef-Entscheide]** Fassungsbezeichnung «Nachtrag vom 19.4.2021» im energie-Frontmatter
  (Befund bestaetigt, Verifier-Freigabe zurueckgehalten — Vorschlag im Bericht) · Re-Destillat SIA 181:2020
  (normen) · Health-Check-Pruefliste projekt-lessons um die Tagging-Regel erweitern. **Weiter offen aus
  frueheren Runs:** Private-Kontrolle-Trim energie↔pg (destruktiv, Entscheid Raphael, seit Run 11) ·
  Umlaut-Config-Bug (getrackt).
- **[bewertung] Fuer Raphael steht kein Entscheid an.** Der einzige offene Fachentscheid (E-2) ist erledigt.
  Gemeinsame Lehre aus den zwei staerksten Befunden: **Uebergaben zwischen KBs muessen am Ort ihrer Wirkung
  ueberprueft werden, nicht am Ort ihrer Ankuendigung.**

## 2026-07-25 — Run 15 (Workflow-Fan-out: 6 Lese-Agenten + 14 adversariale Verifikatoren; 9 BESTAETIGT / 5 WIDERLEGT)
- **Verfahren:** erster Lauf nach Aufhebung der Drossel (Rule 260725) wieder mit dem **Workflow-Tool**
  statt inline — 6 parallele Lese-Agenten (baurecht↔pg · normen↔baurecht · energie↔pg · Kennwert-Feld ·
  wettbewerbs-dna↔Healthcare-Kennwerte · **Erst-Pruefung** synobsis↔entwurfs-referenzen), danach je
  gemeldetem Widerspruch/Veraltet-Fall **ein adversarialer Verifikator** mit Widerlegungs-Auftrag.
  20 Agenten, ~2.93 Mio. Subagent-Token, 374 Tool-Calls, 12:52 Min. Kollisionsschutz (Rule 260724) vorab
  geprueft, Commit pathspec-begrenzt. Bericht: `outputs/2026-07-25_wissens-chef-run15.md`.
- **Ergebnis: 14 Meldungen → 9 BESTAETIGT, 5 WIDERLEGT.** Ertragreichster Cross-Lauf bisher; erstmals
  mehrere **materielle** Fehler statt nur Struktur.
- **[korrektur] Rechtsfehler Versickerungspflicht (pg).** `recht-norm-regenwasser-gewaesserraum-zh.md`
  schrieb, nicht verschmutztes Regenwasser muesse nach Art. 7 GSchG **nicht** versickert werden — das
  kehrt die Regel um. Verifier am Fedlex-Volltext (SR 814.20, 2 Konsolidierungen): **Art. 7 Abs. 2 GSchG
  macht die Versickerung zum Regelfall**. Die KB `energie` hatte es richtig; die beiden Artikel zeigten
  nur nie aufeinander. Korrigiert + Fundstelle + bidirektionaler Link.
- **[korrektur] EN-102-Normbasis (pg).** «Basis SIA 380/1:2009» gegen energie «:2016» — Verifier hat das
  Original-PDF geladen (curl+pdftotext): Kopfzeile jeder Seite nennt **Ausgabe 2016**. Ursache: der
  irrefuehrende Dateiname `…3801_2009_2018Dez.pdf`. Zwei Stellen korrigiert, Fallstrick dokumentiert.
- **[korrektur] AWEL-Regenwasser-Richtlinie veraltet.** Die BBV I (LS 700.21, anerkannte Regeln der
  Baukunde) verweist auf die **Ausgabe 2025** («Regenwasser*bewirtschaftung*»); pg destilliert die
  Ausgabe 2005/V2.2 2006. ⚠-Flag + VSA-Nachfolge 2019 nachgefuehrt, kein Trim.
- **[korrektur] Raumtypologie-Schluessel (synobsis).** `CLAUDE.md` nannte «Grosser Raum»/«Skulpturaler»
  statt der Katalog-Schluessel «Grosse Halle»/«Skulptularer Raum» — die dokumentierte `--raumtyp`-Abfrage
  schlug fehl. Korrigiert; der Schreibfehler im **read-only** Quellordner bleibt bewusst stehen (eine
  Bereinigung dort waere destruktiv → Freigabe Raphael, nicht vorgeschlagen).
- **[struktur] Muster 1 «Uebergabe verpufft» zum 4. Mal, neue Richtung:** `normen/wiki/QUESTIONS.md`
  hatte **0 Treffer** fuer «baurecht» — vier von baurecht zitierte Normen (SIA 491, SN EN 12193,
  SN 640 052, SN 641 400) haben in `normen` null Praesenz. Als Block angemeldet, inkl. Gegenrichtung.
- **[struktur] Weitere Aktionen:** SIA-181-Hinlink (Rule normen-referenz) · IVHB-**Teilantwort** zum
  offenen baurecht-Fassungspunkt + reziproke Links · neue baurecht-Luecke «Erleichtertes Bauen im
  Bestand» (§ 220a/§ 357 E-PBG, 0 Treffer in der Recht-KB) angemeldet · **Erst-Verlinkung**
  synobsis ↔ entwurfs-referenzen · **5 neue Matrix-Zeilen** in QUERBEZUEGE.md.
- **[offen fuer Raphael] Drei Fachentscheide, keiner autonom entschieden** (alle mit additivem
  needs-decision-/Sperrvermerk versehen, Werte bleiben bis dahin gueltig):
  **E-1** Flaechenfaktor HNF/GF Regelgeschoss — E1-Entscheid 12.07. sagt 0.70, der fuehrende Artikel
  belegt 0.75; gekoppelt die nachrechenbar falsche Begruendung «4.7 ist Gesamtgebaeude» (3.3/0.70=4.71).
  **E-2** Healthcare-Parameter-Set fuehrt das Wohnbau-Band 850–1050 CHF/m3 GV und beruft sich auf die
  KB, die genau das untersagt; belegt waeren 1053–1420 (BKP 2) → Feld **gesperrt**, nicht geloescht.
  **E-3** Ebmatingen 2400 gegen 855 CHF/m3 GV (Faktor 2.8, moeglicher Einheitenfehler) → ⚠-Flag.
- **[geschlossen] Zwei Altpunkte:** LSV-Novelle 01.04.2026 (Run-14-Flag) — erledigt durch baurecht
  Buch-Run 52 vom 25.07. (Art. 31a LSV aufgehoben, Anhaenge 3/4/5/6 unveraendert). 0,70/0,60-
  Kopplungsformulierung — als **Scheinbefund** widerlegt. **Weiter offen:** Private-Kontrolle-Trim
  energie↔pg (destruktiv, seit Run 11), Umlaut-Config-Bug (getrackt, keine Doppelmeldung).
- **[beobachtung] Gegen-Muster neu:** bei OEREB-Bezugswegen ist die fuehrende Beschaffungs-KB
  (planungsgrundlagen) **aermer** als die zuliefernde Recht-KB (baurecht/QUELLEN.md: OEREBlex-SZ-Kette,
  SG-403-Sperre — 0 Treffer in pg). Die Rollen-Matrix beschreibt hier nicht mehr die Realitaet.

## 2026-07-25 — Synergie-Lauf 02 (Scheduled Task `synergie-lauf-monatlich`; 3 neue Befunde, 3 Status nachgefuehrt, 1 Kante gesetzt)
- [synergie] Zweiter Lauf des Skills `synergie-orchestrator`, gedrosselt (Rule 260714: Inline-Analyse,
  kein Multi-Agent-Fan-out). Delta-Basis: Git-Log des NAS-Repos seit 15.07.2026 + KB-CHANGELOGs.
  Kollisionsschutz nach Rule 260724 vorab geprueft (keine Zweitinstanz auf dem Host), Commit
  pathspec-begrenzt. Bericht: `outputs/2026-07-25_synergie-lauf-02.md`.
- [inventar] Delta stark asymmetrisch: **1 neuer Skill** (`pdf2dwg`), 0 neue Agenten, 0 neue
  Verhaltens-Rules (die neue `auto-verbesserungen-archiv.md` ist eine Kontext-Diaet-Auslagerung) —
  demgegenueber starkes KB-Wachstum (wettbewerbs-dna Etappe 3, entwurfs-referenzen Parameter-Set +
  erster Typologie-Artikel, architekten-synobsis RAUMTYPOLOGIEN, energie ~50 Destillate, baurecht
  Buch-Runs 47–51, spec). Neue Kanten entstehen derzeit zwischen Wissen und Skills, nicht zwischen Skills.
- [befund] **SYN-13** (Typ 3, groesster Hebel): Typologie-Asymmetrie zuungunsten der Kern-Bauaufgabe.
  Bildungsbau ist durchgezogen (25 Quellen → `kennwerte-schulbauten` established → refuter-bestandenes
  Parameter-Set → `typologien/bildung.md`); Healthcare endet trotz 42 HTTP-verifizierter Juryberichte
  (Sweep 23.07.) beim Rohmaterial — `healthcare-neubau-zh.json` unveraendert v1.0 auf CURAVIVA/Wuest/
  eigenen Projekten, kein `typologien/healthcare.md`, 0 Verweise von `healthcare-wirtschaftlichkeit`/
  `kostenschaetzung` auf `wettbewerbs-dna`.
- [befund] **SYN-14** (Typ 1+2): `pdf2dwg` als Insel eingehaengt — kein Contract-Block (einer von nur 4
  der 49 Skills), ausser CLAUDE.md keine eingehende Referenz trotz DXF-Rueckkanal in `volumenstudie`,
  und die Ablage «neben dem Quell-PDF» kollidiert mit Rule `projekt-ablage-stand.md` Z. 21 (CAD-Austausch).
- [befund] **SYN-15** (Typ 3+5): `architekten-synobsis/wiki/RAUMTYPOLOGIEN.md` + `catalog/typology-map.json`
  (24.07., 9 Raumtypologien / 105 Projekte, maschinenlesbar) entstanden vier Tage NACH der SYN-02-Spec
  (20.07.) und sind dort nicht als Quelle vorgesehen — die Parti-/Raumfigur-Ebene fehlt dem MVP.
- [status] **SYN-02** Datenseite aufgeholt (Luecke B5 geschlossen), Codeseite unveraendert
  (`volumen_generator.py` liest weiterhin kein Parameter-Set) · **SYN-04** teilweise geschlossen
  (Hinrichtung dokumentiert, Rueckkopplung offen) · **SYN-10** Kante beidseitig gesetzt, Uebergabe-Format
  offen. Unveraendert offen: SYN-01, SYN-05, SYN-06, SYN-08, SYN-09, SYN-11. Querbefund: `wissen/grobkosten`
  (designierte Kennwerte-Leitquelle) steht weiter auf `emerging` mit leerem `raw/`, waehrend in
  `wettbewerbs-dna` 431 refuter-bestaetigte Kennzahlen entstanden — die Kennwert-Kompetenz waechst
  am vorgesehenen Ort vorbei.
- [aktion] Direkt gesetzt (active-with-flagging, Phase 4): `skills/terminplanung/SKILL.md`
  «Vorgelagert: —» → Verweis auf `auflagebereinigung` (Auflagen-Fristen als Meilenstein-Input).
  Sonst nichts veraendert: keine Skills geloescht/gemergt/parkiert, kein Katalog-Eintrag aktiviert.
- [geschaeftsmodell] Kein neues Service-Paket. ENTWURF: Schaerfung von S5 «Wettbewerbs-Fabrik» auf den
  Schwerpunkt Healthcare — aber erst NACH Abarbeitung von SYN-13, vorher waere es ein Versprechen ohne
  Deckung. Bewusst kein Service rund um `pdf2dwg` (ein einziger Referenzfall).

## 2026-07-24 — Run 14 (5 Lese-Agenten, 5 Paare/Felder; 1 VERALTETES-Verdacht adversarial verifiziert → UNBESTIMMT)
- Gedrosselter Cross-KB-Lauf (Rule 260714): 5 parallele Lese-Agenten (regulaeres Agent-Tool, Hintergrund) am
  frischen Stoff seit Run 13 — baurecht Buch-Run 51 (Anhang 6 LSV), normen Run 19 (Meilenstein «SIA/VKF KOMPLETT»
  + neue Destillate SIA 405/2056 + tote Links), energie Run 87 (FAQ F1–F116), pg Run 58, grobkosten Struktur-Findings,
  firmengruendung-ch (Steuern/Holding, rotierendes Paar). **1 adversarialer Verifier** (LSV-Novelle 01.04.2026).
- **Kern-Ergebnis 1: SIA-181-Scheinwiderspruch aufgeloest (normen ↔ baurecht).** Der Health-Check-24.07.-Befund
  «Meilenstein komplett vs. offene Bring-Schuld SIA 181:2020» ist KEIN Sachwiderspruch: SIA 181 ist P2, SIA 181:2020
  liegt nicht im Bestand (kostenpflichtig); «komplett» = Bestandsabdeckung. Die normen-KB hatte das am selben Tag
  selbst korrekt verdiktet. Kein Eingriff noetig ausser der bereits notierten Formulierungspraezisierung.
- **Kern-Ergebnis 2: Laerm/ES-Rollen-Link baurecht ↔ pg neu gesetzt (frischer Run-51-Stoff).** Der Laerm-Artikel
  hatte keinen reziproken Beschaffungs-/Recht-Link zur pg-Layer-0154-Seite → bidirektional gesetzt analog Abstaende-Muster.
- **Kern-Ergebnis 3: LSV-Novelle-01.04.2026-Verdacht adversarial geprueft → UNBESTIMMT mit Entlastungstendenz.**
  pg-⚠-Vorbehalt behauptet KEINE ES-Grenzwert-Aenderung; baurecht Anhang 3/4/6 (Stand 1.11.2023) NICHT als veraltet
  markiert, stattdessen needs-verification in baurecht/QUESTIONS gesetzt (Fedlex SR 814.41 20260401 gegen 1.11.2023 diffen).
- **6 autonome Aktionen in 3 KBs** (5 additive Cross-Links/Rueckverweise + 1 needs-verification-Flag, keine Loeschung,
  kein Trim): baurecht (Laerm→pg-Querbezug, QUESTIONS-LSV-Flag), planungsgrundlagen (zonenplan→baurecht, ES-Doppelspur→baurecht),
  energie (F116→pg-EN-104). Je KB CHANGELOG protokolliert; QUERBEZUEGE um 5 Paar-Eintraege ergaenzt.
- **Offene Punkte (kein neuer Entscheid fuer Raphael, alle vorgemerkt/Loop):** (1) LSV-Novelle-01.04.2026 vs.
  Anhang 3/4/6 — amtliche Fedlex-Verifikation ausstehend (needs-verification gesetzt). (2) Private-Kontrolle-Trim
  energie↔pg WEITER OFFEN (destruktiv, Entscheid Raphael; seit Run 11). (3) firmengruendung-ch intra-KB-Linkhygiene
  (an den KB-Loop delegiert, Kollisionsschutz). (4) grobkosten-interne 0,70/0,60-Kopplungsformulierung (niederprioritaer,
  KB-intern). Kennwert-Feld (grobkosten/immo/kostenschaetzung) Cross-KB widerspruchsfrei, Guards intakt.
  **Cross-KB-Beobachtung Umlaut-Config-Bug** (ASCII ae/oe/ue in Subagenten-Outputs) unveraendert getrackt — Config-Sache
  (Whitelist-verboten), fuer hub-chef/Raphael, hier nur registriert (keine Doppelmeldung).
  Report: `outputs/2026-07-24_wissens-chef-run14.md`.

## 2026-07-24 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Zweiter Audit dieser KB (Erst-Audit 20.07., seither Runs 10-13). Register (QUERBEZUEGE,
SYNERGIE-REGISTER, CHANGELOG) weiterhin diszipliniert gefuehrt, Stichproben bestanden.
**1 operativer Befund:** normen-Run-19-Meilenstein "SIA/VKF komplett" (24.07., MacBook Pro)
widerspricht dem in QUERBEZUEGE selbst dreimal (Run 11-13) bestaetigten offenen Bring-Schuld-
Posten SIA 181:2020-Re-Destillat (normen/wiki/QUESTIONS.md Z.74-75, weiterhin unerledigt) —
reine Zeitluecke (Run 19 nach Run 13), noch von keinem Wissens-Chef-Lauf gegengeprueft.
Empfehlung an Run 14: Meilenstein-Formulierung praezisieren oder Bring-Schuld schliessen,
bevor der Punkt in eine Pause-Entscheidung fuer `normen-training-nacht` mit einfliesst.
Bekannter Umlaut-Config-Bug (ASCII ae/oe/ue) auch in QUERBEZUEGE.md bestaetigt, keine neue
Meldung. Report: `outputs/2026-07-24_health-check.md`.

## 2026-07-23 — Run 13 (5 Lese-Agenten, 5 Paare/Felder; 2 Widersprueche adversarial verifiziert, beide CONFIRMED)
- Gedrosselter Cross-KB-Lauf (Rule 260714): 5 parallele Lese-Agenten ueber das regulaere Agent-Tool
  (Hintergrund, gleiche Parallelitaet wie Run 10-12) am frischen Stoff seit Run 12 — energie Run 85/86 (Anergienetz
  F109, oberflaechennahe Erdwaerme F110, PV-Marktpreise BFE-2024/Indach-Korrektur), pg Run 57 (Naturgefahren-GIS),
  normen Nachtschicht 23.07., projekt-lessons neuer Artikel `kispi-lbw-rohdichte-800` (EN 520). **Zwei** materielle
  Widersprueche gemeldet → **2 adversariale Verifier**, **beide Verdikt CONFIRMED**.
- **Kern-Ergebnis 1: Indach-«+60 %»-Korrektur (energie-intern, Cross-KB relevant).** Der stale Wert in
  `energie/wiki/pv-solar-technologien.md` widersprach der eigenen Run-86-Korrektur (E-R86c) UND pg
  `energie-pv-eignung-typenwahl`. Verifier bestaetigte: Registerkorrektur wurde nicht in den Wiki-Body gespiegelt.
  Quellentreuer Vorbehalt gesetzt (BFE-2024: kein signif. Aufschlag mehr fuer Standard-Module), Solarziegel-Wert
  erhalten, KEIN Zahlenwert erfunden.
- **Kern-Ergebnis 2: SN 640 066 Ausgabe-Divergenz aufgeloest (normen ↔ baurecht).** baurecht «VSS 40 066 (2011/2019)»
  vs. normen «nur 1996, Nachfolger unbekannt», bei KB-interner Inkonsistenz (`vss-640065-2011` zitiert den neuen Titel
  bereits). Verifier: echte Divergenz + interne Inkonsistenz, aber keine harte Faktenkontradiktion (beide Destillate
  ihrer Ausgabe treu). Aufgeloest ohne unbelegten Jahrgang: normen `ersetzt_durch` Cross-Verweis auf 640065-2011 +
  links + Body; baurecht Herkunfts-Vorbehalt.
- **9 autonome Aktionen in 4 KBs** (2 verifizierte Korrekturen + 5 Cross-Links bidirektional/anker, keine Loeschung):
  energie (Indach-Korrektur, graue-energie→normen, F110→pg, F109→pg), normen (vss-640066 ersetzt_durch+links+body,
  sia-2040→energie), baurecht (fahrzeugabstellplaetze-Vorbehalt, INDEX-Naturgefahren-Anker), planungsgrundlagen
  (naturgefahren §6c → energie reziprok). Je KB CHANGELOG protokolliert; QUERBEZUEGE um 5 Paar-Eintraege ergaenzt.
- **Offene Punkte (kein neuer Entscheid fuer Raphael):** SN-640-066 exaktes Ausgabe-Jahr nur mit amtlicher
  VSS-Quelle verifizierbar (Vorbehalt gesetzt); baurecht Naturgefahren/Gefahrenzonen-Destillat = Bring-Schuld
  (Loop-Arbeit); 4 niederprioritaere baurecht→normen-Links (SIA 380/1, 358, 414/10, 431 — 414/10 mit Ausgabe-Check);
  1 Link Lesson→VKF-BRL 15 niederprioritaer geflaggt. **Cross-KB-Beobachtung: Umlaut-Config-Bug** (ASCII ae/oe/ue)
  jetzt zusaetzlich in immobilienbewertung/spec/grobkosten-Health-Checks (23.07.) bestaetigt — seit Run 12 getrackt,
  Config-Sache (Whitelist-verboten), fuer hub-chef/Raphael, hier nur registriert (keine Doppelmeldung).
  Report: `outputs/2026-07-23_wissens-chef-run13.md`.

## 2026-07-22 — Run 12 (5 Lese-Agenten, 6 Paare/Felder; 1 Widerspruch adversarial verifiziert)
- Gedrosselter Cross-KB-Lauf (Rule 260714): 5 parallele Lese-Agenten über das reguläre Agent-Tool
  (Workflow-Tool headless weiter nicht nutzbar, wie Run 10/11) am frischen Stoff seit Run 11 — auflagebereinigung
  SIA-181-Federführung (22.07.), normen DIN-ersetzt_durch (22.07.) + SIA-500-Follow-up, planungsgrundlagen Run 56,
  firmengruendung-ch neuer Artikel `nachgruendung-anmeldungen`. Ein materieller Widerspruch (SN 640 060) → **1 adversarialer Verifier**, Verdikt **TEILWEISE**.
- **Kern-Ergebnis: SN 640 060 Rollen-Korrektur.** baurecht führte «SN 640 060 existiert nicht / Fehlzitat»;
  adversarial gegen das established normen-Destillat UND baurechts EIGENES Buch-Destillat (Bd. 2 S. 914-915) geprüft —
  Norm existiert real als Grundlagennorm. baurecht auf Rollen-Korrektur (Grundlagen vs. Bedarf 640 065 vs. Geometrie 640 066)
  + Cross-Link nachgezogen, statt Löschung. Der Verifier hat den Melder-Befund korrigiert (nicht «baurecht falsch», sondern «zu absolut»).
- **8 autonome Aktionen in 5 KBs** (nur Links/Präzisierungen/Flags/1 Frontmatter-Feld, keine Löschung):
  baurecht (SN-640-060-Wiki + QUESTIONS + INDEX-SIA-500-Nachzug), normen (sia-181 ersetzt_durch),
  auflagebereinigung (SIA-181-Fassungs-Vorbehalt), planungsgrundlagen (§22-WWG-Inline-Flag + CLT-Querlink),
  energie (private-kontrolle last_updated). Je KB CHANGELOG protokolliert; QUERBEZUEGE um 6 Einträge ergänzt.
- **Offene Punkte (kein neuer Entscheid für Raphael):** SIA-500-Kennwert-Herkunft (baurecht-Loop); § 22 WWG
  Gefahrenbereiche Bring-Schuld in baurecht (Dangling-Delegation von pg); GSchV-41a/41b-Doppelspur (Trim, seit Run 7/8);
  Private-Kontrolle-Rollen-Trim energie↔pg (seit Run 11); SIA-181:2020-Re-Destillat (normen). **Cross-KB-Beobachtung:
  Umlaut-Bug** (ASCII-Ersatz in Haiku/Sonnet-Subagenten-Outputs seit 19.07.) ist in 5 KBs bestätigt — Config-Sache,
  nicht autonom (Whitelist-verboten), für hub-chef/Raphael vorgemerkt; hier nur registriert, keine Doppelmeldung.
  Report: `outputs/2026-07-22_wissens-chef-run12.md`.

## 2026-07-21 — Run 11 (5 Lese-Agenten, 5 Paare; 1 Widerspruch adversarial verifiziert)
- Gedrosselter Cross-KB-Lauf (Rule 260714): 5 parallele Lese-Agenten über das reguläre Agent-Tool
  (Workflow-Tool headless weiter nicht nutzbar) am frischen Stoff seit Run 10 — baurecht Buch-Run 50,
  normen Audit-B, energie Run 83, Zulauf wettbewerbs-dna B5 → entwurfs-referenzen. Ein einziger
  materieller Widerspruch gemeldet → **1 adversarialer Verifier**; Verdikt **TEILWEISE** (Befund präzisiert).
- **Kern-Ergebnis: Run-10-Bring-Schuld geschlossen, verifiziert.** baurecht hat die §§ 2a-2e BVV integriert;
  am raw geprüft fassungsgleich mit energie (Nachtrag 133), 0 Widerspruch, bidirektional verlinkt. Einzig
  eine geringfügige WP-Schwellen-Doppelspur bleibt als Struktur-Punkt (Trim über KB-Grenze = nicht autonom).
- **Adversariale Verifikation zahlte sich aus (normen ↔ baurecht):** Der gemeldete «SN 521 500 abgelöst»-Befund
  wurde zu «Nummer gilt weiter, aber unpräzise Zitierung + Kennwert-Mismatch» korrigiert. SIA 500:2009 regelt
  «1 je 25 **Parkplätze**», baurecht schreibt «1 je 25 **Wohnungen** / 100 m» — Herkunft offen → Bezeichnung
  präzisiert + verlinkt, **Zahlenwert NICHT geraten**, als QUESTIONS-Flag hinterlegt.
- **Aktionen (9 Dateien in 5 KBs, ausschliesslich Links/Präzisierungen/1 Flag):** baurecht (SIA-500-Präzisierung
  + Kennwert-Flag, SIA-181-Link + Fassungsvorbehalt, VSS 40 291 nachgezogen, VKF-BRL 12-15-Link, QUESTIONS-Titel);
  energie (Private-Kontrolle-Querbezug, § 11-Angleichung in wta); planungsgrundlagen (Private-Kontrolle-Rücklink);
  immobilienbewertung (führende Wüest-Quelle verlinkt); wettbewerbs-dna (Schulbau-Drift-Guard).
- **Register QUERBEZUEGE** um 5 datierte Paar-Einträge ergänzt (1 neues Paar: wettbewerbs-dna ↔ entwurfs-referenzen).
- **Offene Punkte für Raphael:** keine neuen Entscheide. Zwei Struktur-/Loop-Punkte (WP-Schwellen-Doppelspur baurecht;
  Private-Kontrolle-Rollen-Trim) + der SIA-500-Kennwert-Flag sind Loop-Arbeit, keine Entscheidung. E1 (Doppelspur
  Energierecht ZH) bleibt unverändert offen. Bericht: `outputs/2026-07-21_wissens-chef-run11.md`.

## 2026-07-20 — Run 10 (4 Lese-Agenten, 4 Paare; 0 Widerspruch → 0 Verifikationsrunde nötig)
- Gedrosselter Cross-KB-Lauf (Rule 260714): 4 parallele Lese-Agenten am frischen Stoff seit Run 9
  (energie Run 81/82, planungsgrundlagen Run 54, auflagebereinigung GVZ-Artikel, kunde-bopp
  Firmenrollen). Workflow-Tool wie in energie Run 82 headless nicht nutzbar → 4 Hintergrund-Agenten
  über das reguläre Agent-Tool (gleiche Parallelität). **Ergebnis: KEIN einziger Widerspruch, kein
  Veraltetes, keine echte Doppelspur** — alle Befunde strukturell (fehlende Cross-Links, eine
  Vollständigkeitslücke). Weil keine Widersprüche gemeldet wurden, entfiel die adversariale
  Verifikationsrunde (nichts zu widerlegen); jeder Befund ist direkt am zitierten file:line-Anker
  verifiziert.
- **§ 2a BVV Wärmepumpen-Meldeverfahren dreiseitig verlinkt (energie ↔ baurecht ↔ planungsgrundlagen):**
  der frische Run-82-Stoff (§ 2a/§ 2c BVV, LS 700.6) war **fassungsgleich** mit baurecht (BVV NT 133,
  EnerG NT 129) und konfliktfrei; einzige Lücke war die Verlinkung. Rollenteilung fixiert: energie =
  Rechtsgrundlage/WP-Weichen, baurecht = Verfahrenstyp-Systematik, planungsgrundlagen = WTA-Formular.
  Dabei **§ 2a BVV ≠ § 2a ABV**-Namensgleichheit in baurecht markiert und die undestillierte
  Meldeverfahren-Systematik als baurecht-QUESTIONS-Bring-Schuld aufgenommen (arbeitsteilig zu energie,
  um eine BVV-Doppelspur analog E1 zu vermeiden).
- **Brandschutz/VKF-Dreieck (normen ↔ planungsgrundlagen ↔ auflagebereinigung) sauber:** der neue
  GVZ-Artikel (auflagebereinigung) spiegelte VKF-BRL-Schwellen ohne normen-Link → Cross-Link auf
  VKF-BRL 20-15/19-15 gesetzt (beide Richtungen), reziproker Backlink zu `brandschutz-auflagen-qss`.
  Die frischen §5ao/§5ap (pg Run 54) schreiben **keine** VKF-Ziffern fort — das wiederkehrende
  «VKF-Wortlaut fortgeschrieben»-Muster trat diesmal nicht auf. 0 Kennwert-Widerspruch.
- **Rotationspaar kunde-bopp ↔ firmengruendung-ch (Erst-Check): legitimes Null-Ergebnis.** Disjunkte
  KBs (Kundenwissen vs. allgemeines Gründungswissen); «Genossenschaft»/«AG» in kunde-bopp reine
  Identifikatoren. Paar aus der prioritären Rotation genommen. Nebenbeobachtung (KB-intern, NICHT
  Cross-KB): firmengruendung-ch hat keinen Genossenschafts-Artikel — nur als Coverage-Notiz vermerkt.
- **7 Dateien in 5 KBs berührt** (energie, planungsgrundlagen, baurecht, auflagebereinigung, normen),
  ausschliesslich Links/Querbezüge + 1 QUESTIONS-Eintrag. Register QUERBEZUEGE um 4 datierte
  Paar-Einträge ergänzt. **Keine neuen offenen Entscheide für Raphael** (E1 bleibt bestehen; das neue
  baurecht-Meldeverfahren-Destillat ist Loop-Arbeit, keine Entscheidung).
  Bericht: `outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Erst-Wissenscheck Phase 1 (Dauerschicht-Zyklus 26, kompakt)
- KB hochaktiv und diszipliniert; Register-Stichproben 3/3 bestanden (SYN-02-Spec-Datei
  existiert, S5/S6 im Katalog, Rollen-Matrix-Ziele vorhanden). Einziger operativer
  Befund: **Wissens-Chef-Run 10 fehlt fuer heute** (mutmasslich Buero-Ausfall bis 09:30)
  — beobachten, ob der Takt am 21.07. selbststaendig greift. Struktur-Abweichung vom
  Metaschema ist als Register-KB dokumentiert und gewollt.
  Report: outputs/2026-07-20_health-check.md

## 2026-07-20 — SYN-02 Spec startklar: Faktenlage nach Limit-Reset verifiziert (Task `syn02-spec-anstoss`)
- Das Wochenlimit ist am 20.07.2026 zurueckgesetzt; der One-Time-Task hat die am 15.07.
  vorbereitete Interview-Grundlage **gegen den heutigen Stand geprueft statt sie zu duplizieren**.
- Ergebnis: **unveraendert gueltig.** Schulbau-B5-Parameter-Set weiterhin ausstehend,
  Param-Sets Healthcare/Wohnen seit 14.07. unberuehrt, `volumen_generator.py` liest weiterhin
  nur CLI-Variantenflags (kein JSON-Set-Import) — die SYN-02-Luecke besteht unveraendert,
  SYN-01 bleibt offen. Keine der Fragen E1–E9 muss neu gestellt werden.
- Gueltigkeits-Check als Abschnitt 7 in `wissen/spec/outputs/2026-07-15_syn-02-typologischer-
  entwurfsprozess-spec-interview/` nachgetragen (kein zweites, fast identisches Dokument).
- Info-Mail an rj@ gesendet: Interview startklar, Start auf Zuruf «Spec SYN-02 starten».
  Kein Interview automatisch gefuehrt, kein Bau begonnen.

## 2026-07-19 — Run 9 (3 Paare am energie-Run-79/80-Stoff; 3 Leser + 13 adversariale Verifier)
- Gedrosselter Lauf (Rule 260714): Workflow-Fan-out mit 3 Lese-Agenten, danach ein Refuter je Befund.
  **16 Befunde gemeldet, 12 CONFIRMED, 4 REFUTED.** Vier Befunde von hoher Schwere.
- **energie ↔ baurecht (erstmals materiell geprueft):** zwei falsche Rechtszuschreibungen aufgedeckt,
  beide bis in die Bauherren-FAQ durchgeschlagen. (1) Die **5-Jahres-Betriebsoptimierung** wurde als
  geltendes ZH-Recht (§ 13d EnerG) gefuehrt — der amtliche Volltext kennt nur die einmalige
  Erstoptimierung «innerhalb dreier Jahre nach Inbetriebsetzung», §§ 48a-48c BBV I enthalten keine
  Periodizitaet; die fuenf Jahre sind **MuKEn-Musterrecht** (Art. 7.4/8.4). (2) Das
  **Fossilfrei-Gebot Neubau** stand durchgehend an **§ 10a EnerG** statt an **§ 11 Abs. 1 EnerG**
  (§ 10a = Effizienz-/Delegationsnorm) — 8 Fundstellen korrigiert. Dazu (3) eine Bring-Schuld
  geschlossen, deren Antwort seit Wochen im Haus lag: der 200'000-kWh-Schwellenwert steht woertlich
  in **§ 48c Abs. 1 lit. a BBV I** (`baurecht/raw/260607_amtlich_zh_bbv1.md`) — die geplante
  AWEL-Anfrage haette nichts Neues erbracht. (4) In `baurecht` selbst die EnerG-Nummerierung vom
  Buchstand 2019 («§§ 8a/9–13») auf Nachtrag 129 nachgefuehrt (§ 13 aufgehoben); § 8a bewusst NICHT
  gestrichen (raw deckt ihn nicht ab → offener Punkt E2).
- **energie ↔ normen:** das am Vortag entstandene Naturdaemmstoff-Destillat behauptete einen
  **Bemessungswert-Zuschlag, den SIA 279:2018 fuer den Regelfall ausdruecklich ausschliesst**
  (Ziff. 3.2.2.1 — kein Zuschlag; Zuschlag nur Ortdaemmstoffe, Ziff. 3.2.2.2). Der als offen
  gefuehrte Punkt «Zuschlagsformel» war eine **Scheinluecke**. Korrigiert, verlinkt,
  RF-Terminologie nach VKF-BRL 13-15 Ziff. 2.1 richtiggestellt, Negativbefund Baustroh praezisiert.
  Ausserdem die **SIA-2024-Bring-Schuld verengt** (freie amtliche Interims-Quelle aus energie Run 80
  ins normen-REGISTER eingetragen).
- **energie ↔ planungsgrundlagen:** VHKA beidseitig verlinkt (bisher null gegenseitige Verweise),
  WDV-Verweis ergaenzt (grep «LS 700.211» in pg: 0 Treffer), EN-120-Zeile auf das energie-Destillat
  gezeigt.
- **VERIFIKATION HAT WIEDER GEWIRKT (4 von 16 widerlegt):** u.a. war «Tabelle 6 der SIA 380/1» keine
  Norm-, sondern eine **Erlass**-Aussage (WDV § 2 Abs. 1 lit. b, vollstaendig belegbar); der
  Vorwurf einer falschen SZ-VHKA-Aussage scheiterte an der eigenen Praemisse (SZ ist bei der
  Minergie-Befreiung **strenger** als ZH); und der Befund «planungsgrundlagen laesst die
  5-Jahres-Pflicht weg» war **genau umgekehrt** richtig — zwei Agenten sind aus entgegengesetzter
  Richtung ueber dieselbe Stelle gestolpert, erst die Verifikation hat die Richtung geklaert.
- **Struktur-Muster, 4. Fundort: «neben der besseren Quelle gebaut».** Run 79 destillierte aus
  Shop-Metadaten und einer DE-Sekundaerquelle, obwohl der Normvolltext im JANS-Bestand lag und
  6 Tage zuvor destilliert worden war — die eigene KB kannte den Weg sogar
  (`energie/wiki/daemmstoffe-lambda.md` verweist darauf). Diesmal blieb es **nicht** bei einem
  fehlenden Link, sondern erzeugte eine fachlich falsche Aussage. Empfehlung: Pflicht-grep nach der
  Norm-/Erlassnummer ueber die anderen KBs, bevor ein Destillat neu angelegt wird.
  **Zweites, neues Muster: «Rechtsanker driftet vom Erlass weg»** — Fachaussage richtig, Paragraf
  oder Geltungsraum falsch; vererbt sich still ueber viele Dateien (8 bzw. 3 Fundstellen).
- **Register entruempelt:** die Sektion «Noch nie gepruefte Paare» war eine Karteileiche — 4 von 6
  Zeilen betrafen laengst gepruefte Paare (energie ↔ baurecht sogar doppelt gefuehrt). Neue Regel
  im Register verankert: ein Paar wandert mit seinem datierten Prueflauf automatisch aus der Liste.
- **1 NEUER OFFENER ENTSCHEID (E1):** Doppelspur Energierecht ZH — `energie` gibt die Fuehrung
  ausdruecklich an `baurecht` ab, fuehrt aber in drei Rechts-Destillaten dieselben ZH-EnerG-§§ auf
  Absatzebene. Heute deckungsgleich; Risiko ist die naechste EnerG-Revision. Trimmen oder bewusst
  belassen? Weiter offen: E2 (§ 8a EnerG), VKF-16-15-Matrix (Run 8), BSR-2022-Volltext (Run 8),
  normen-Dublette Solaranlagen (Run 6), GSchV-Doppelspur (Run 7).
- Bericht: `outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Run 8 (3 Paare am neuen Run-51/52/78/79-Stoff; 3 Leser + 2 adversariale Verifier)
- Gedrosselter Lauf (Rule 260714): schlanker Fan-out mit 3 Lese-Agenten, danach 2 Refuter mit
  Widerlegungsauftrag an den Original-PDFs. **5 Befunde gemeldet, 3 CONFIRMED, 2 REFUTED.**
- **normen ↔ planungsgrundlagen (VKF-BRL 16-15):** die Ausgangsvermutung (Ausgabenstreit 2022 vs.
  2015/2017) war falsch — dahinter aber der schwerste Befund des Laufs: `normen` fuehrte die
  **Personenbelegung Verkauf** (0.5/0.35/0.25 P./m2) als `established` ohne Vorbehalt, obwohl sie
  per **Beschluss TKB 09.06.2021** ersatzlos gestrichen und durch eine Betriebstyp-Matrix ersetzt
  wurde (Fachmaerkte 0.10 · Supermaerkte 0.38/0.15 · hochfrequentierte 0.45/0.21). Am Original
  beidseitig volltext-verifiziert. Der Wert geht in Fluchtwegbreiten ein — Fehlerwirkung bis Faktor 5.
  → Warnkasten + Matrix ins Destillat, Synthese-Zeile umgestellt, REGISTER + Status nachgezogen,
  3 QUESTIONS-Eintraege. Gremiums-Korrektur in pg: **ABSV** statt IOTH (22.03.2017, am Original).
- **planungsgrundlagen ↔ baurecht (OEREB/WWG-Nachlauf):** CONFIRMED — Thema 190 fuehrte
  `LS 724.112 § 15` (HWSchV, aufgehoben 01.06.2026) ungeflaggt, INDEX trug die Repeal-Flags nicht nach.
  → Zeile korrigiert (§ 19 WsG / § 11 WsV), Warnkasten, INDEX nachgezogen, Rueckverweis-Block in
  baurecht (Verlinkung war einseitig). Run 51 selbst: kein Befund.
- **energie ↔ normen (Ψ/MuKEn Modul 7):** CONFIRMED stale — `wiki/innendaemmung` fuehrte den
  Negativbefund zur Massivdecken-Ψ-Zahl weiter, obwohl E93 am selben Tag geschlossen wurde
  (Destillat aktualisiert, Themenartikel nicht mitgezogen). → nachgezogen, Punkt geschlossen,
  Backlink. Flags fuer **SIA 180-C2:2020** und **SIA 2024:2019 vs. 2021+C1:2024**.
- **VERIFIKATION HAT ERNEUT GEWIRKT (2 von 5 widerlegt):** (1) die «LS-724.11-Kollision» ist **kein
  Fehler**, sondern eine amtlich belegte **Nummern-Wiederverwendung** (WWG bis 31.05.2026, WsV ab
  01.06.2026) — statt einer «Korrektur» nur ein klarstellender Vermerk; (2) die Zuschreibung
  «Ψ ≤ 0,20 (SIA 380/1)» ist **sachlich gedeckt** (EN-102-Fusszeile «Basis: Norm SIA 380/1, Ausgabe
  2016»), die normen-Sperre betrifft ihrem Wortlaut nach nur Q_H-/U-Werte und Gebaeudekategorien.
  Ohne diese Stufe waeren zwei korrekte Stellen «wegkorrigiert» worden.
- **Zwei neue Struktur-Muster** (im Register vermerkt): **(A) «Uebergabe verpufft im abgebenden KB»**
  — zwei Fundorte in einem Lauf (16-15-Fassungsflag seit Run 52 nur in pg; SIA-2048-Uebergabe nur in
  energie, grep in normen: 0 Treffer). Regel: Uebergaben gehoeren in die QUESTIONS der EMPFAENGER-KB.
  **(B) «Fassungspflege ist der blinde Fleck der Destillate»** — Verifikationen pruefen gegen dieselbe
  Datei, aus der destilliert wurde, und finden eine juengere Fassung im Bestand strukturell nie.
  Dazu die **dritte Fuehrungs-Umkehr in drei Laeufen** (nach GreenPV/Run 6, SIA 380/1/Run 7).
- **2 NEUE OFFENE ENTSCHEIDE FUER RAPHAEL:** (a) VKF-16-15-Matrix nach `normen` uebernehmen + pg §5am
  auf Fundstellen-Verweis kuerzen (Umstrukturierung ueber KB-Grenzen); (b) Volltext-Destillation der
  2022er-Fassung (Deltas ABSV 2017 + Fehlerkorrektur Ziff. 3.7 ungeprueft, dort zusaetzlich eine
  offene Ungereimtheit Geschoss- vs. Brandabschnittsflaeche). Weiter offen: normen-Dublette
  Solaranlagen (Run 6), GSchV-Doppelspur (Run 7), Bring-Schulden WsG-§/SIA-380-1-Volltext/C2:2020.
- Bericht: `outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-17 — Run 7 (3 Paare am neuen Run-48/76/15-Stoff; 3 Leser + Eigen-Verifikation an den Quellen)
- Gedrosselter Lauf (Rule 260714): schlanker Fan-out mit 3 Lese-Agenten; die adversariale Verifikation
  der Pair-A-Befunde lief nach einem 529-Abbruch des Verifier-Agenten **inline an den Primaerquellen**
  (Zitatstellen + baurecht-raw-Konkordanztabelle) — alle vier CONFIRMED, keine Ueberkorrektur.
- **baurecht ↔ planungsgrundlagen ↔ energie (WWG/HWSchV → WsG/WsV):** die **Run-5-Bring-Schuld ist
  geschlossen** — baurecht hat heute (Buch-Run 48) die Aufhebung von HWSchV **und** WWG per 1.6.2026
  amtlich belegt (Konkordanztabelle). Drei planungsgrundlagen-Artikel hinkten hinterher: falsche
  «§ 22 WWG in Kraft»-Aussage, fehlende Flags, veraltete §-Nummer (§ 15d statt § 15k), entfallenes
  eingedolt-11-m-Mass, 0,5-ha-Fehlzuordnung, ungeflaggte HWSchV. → alle vier autonom korrigiert/geflaggt.
- **normen ↔ energie (SIA 380/1:2016):** 0 Zahlen-Widerspruch; Fuehrungs-Anomalie (normen fuehrt die
  Werte als P1-Blocker «unerschlossen», energie hat sie via EnFK EN-102 established). → bidirektionale
  Querbezuege, P1-Blocker auf die zitierfaehige Norm-Fundstelle relativiert; ein bereits behobener
  Transkriptionsfehler-Hinweis im muken-Destillat auf «erledigt» nachgezogen.
- **normen ↔ baurecht (SIA-Vertrags-/Honorarnormen):** legitimes **Null-Ergebnis** — keine
  Ueberschneidung (baurecht fuehrt keinen Honorar-/Vertragsnorm-Stoff); die zwei normen-Richtigstellungen
  (KBOB statt SIA 2009; VKF-16-15 Ausgabe 2015/Fassung 2017) sind konfliktfrei. 1 optionaler SIA-416-Querlink.
- **Muster (Beobachtung):** planungsgrundlagen schreibt kantonales Erlassrecht (HWSchV/WWG) materiell
  fort, ohne es aus der fuehrenden KB baurecht zu ziehen — analog zum wiederkehrenden normen-referenz-Muster,
  hier fuer Gesetzesrecht. Strukturbefund fuer den Synergie-Orchestrator.
- **Offene Entscheide fuer Raphael:** keine NEUEN. Weiter offen: die Run-6-Dublette in `normen`
  (`vkf-merkblatt-2001-15-solaranlagen` / `vkf-brm-2001-15-solaranlagen`, dieselbe PDF — Merge braucht Freigabe).
  Loop-Bring-Schulden: WsG-§ fuer § 22 WWG, GSchV-Doppelspur-Trim, SIA-380/1-Volltext + C1:2019.
- Bericht: `outputs/2026-07-17_wissens-chef-run7.md`.

## 2026-07-16 — Run 6 (3 Paare am neuen Run-50/73/74-Stoff; Fan-out 3 Leser + 2 adversariale Verifier)
- Geprueft wurde der seit Run 5 (gestern) neu gewachsene Stoff: energie **Run 73/74** (MuKEn-2025-Volltext,
  sommerlicher Waermeschutz SIA 180, Holzfeuerung, BHKW), planungsgrundlagen **Run 50** (GreenPV-
  Schlussbroschuere §6b), normen Mini-Run 30/31. Gedrosselter Lauf (Rule 260714): schlanker Fan-out mit
  3 Lese-Agenten + 2 Refutern statt grossem Workflow.
- **energie ↔ normen ↔ planungsgrundlagen (SIA 180):** 1 echter Sachfehler (V3-Kriterium der Norm
  zugeschrieben statt der Stadt-ZH-Abweichung) + 1 unnoetige Wissensluecke (gtot-Werte lagen in normen
  bereit, energie fuehrte sie als «offener Punkt / Normtext kostenpflichtig») + Verfahrens-Doppelspur
  (EN-ZH/EVEN) + normen-REGISTER-Selbstwiderspruch (SIA 180 «1999/vermutlich» vs. «2014»). → korrigiert,
  Fig.-12-Formeln uebernommen, 2 Querbezug-Bloecke, REGISTER auf «2014 BESTAETIGT».
  **Nebenfund: Korrigenda C2:2020 existiert** (Inhalt offen).
- **energie ↔ baurecht (MuKEn Modul 11):** Luecken beidseitig — energie ohne ZH-Kontext (35 cm gelten in ZH
  seit 1.4.2013) mit unbelegtem «seit 2005»; baurecht `nutzungsziffern` fuehrte die Kappung **gar nicht**,
  obwohl das eigene Buch-Destillat sie kennt. → energie-Zeile skopiert, baurecht-Sektion ergaenzt
  (§§ 256 II/257 III/258 IV/253a PBG, § 12 III ABV), Modul-12-Querbezug gesetzt.
- **energie ↔ planungsgrundlagen (GreenPV):** Doppelspur derselben Studie + **Fuehrungs-Umkehr**
  (planungsgrundlagen hat die Schlussbroschuere 2024 ausgewertet, energie steht auf dem 2022er-Zwischenstand
  mit 3 bereits beantworteten «offenen Punkten»); VKF-Staffel in §6b ohne Cross-Link (**3. Fundort** des
  Musters); Divergenz −14 % (§6) vs. −20 % (§6b). → Aktualitaets-Flag, bidirektionale Querbezuege,
  normen-Querbezug, Divergenz-Flag.
- **VERIFIKATION HAT GEWIRKT:** Der zuerst gemeldete schwerste Befund («100 h/Fig. 4» sei eine falsche
  SIA-180-Zuschreibung) wurde vom Refuter **WIDERLEGT** — er beschaffte die amtliche Stadt-ZH-Wegleitung und
  die HBA-Richtlinie im Volltext: Fig. 4 ist dort eine **bewusste Abweichung**, die Zahlen sind korrekt.
  Ohne diese Stufe waeren amtlich belegte Werte «wegkorrigiert» worden. Ebenso schrumpfte der
  MuKEn-Modul-11-Befund von «Fehler» auf «Praezisierung» (Muster-Ebene nicht widerlegbar).
- **1 OFFENER ENTSCHEID FUER RAPHAEL:** Dublette in `normen` — `vkf-merkblatt-2001-15-solaranlagen` und
  `vkf-brm-2001-15-solaranlagen` destillieren dieselbe PDF. Merge/Loeschung ist destruktiv → nicht autonom.
- Bericht: `outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-15 — Run 5 (gedrosselter Inline-Lauf, Rule 260714; 2 Nahtstellen am neuen Run-46/49/72-Stoff)
- Inline-Pruefung (kein Fan-out, drossel-konform) der seit Run 4 neu gewachsenen ueberschneidungs-
  gefaehrdeten Nahtstellen (energie Run 72 Grundwasser/PV; planungsgrundlagen Run 49 GreenPV/ZSV;
  baurecht Run 46 LSV/Rechtsschutz).
- **energie ↔ planungsgrundlagen (PV-Einmalverguetung):** Doppelspur bestaetigt — planungsgrundlagen
  `energie-betriebsenergie-pv-wirtschaftlichkeit` §1 leitet die EIV-Foerdersystematik nochmals her, die
  energie `pv-einmalverguetung-bund-bfe` (established) fuehrend traegt. 0 Sachwiderspruch (Saetze
  konsistent). → bidirektionale Querbezuege gesetzt; §1-Trim als offen markiert.
- **baurecht/planungsgrundlagen ↔ energie (WWG→WsG):** Veraltet-Cross-KB bestaetigt — beide zitieren das
  ZH-WWG (1991) als geltend, energie belegt primaerquellen die Abloesung durch das WsG (12.12.2022) per
  1.6.2026 (§ 126 WsG). → Aktualitaets-Flags in 2 current-Rechtslage-Wiki-Artikeln (baurecht
  `baureife-und-erschliessung`, planungsgrundlagen `recht-norm-regenwasser-gewaesserraum-zh`); Buecher-
  Destillate quellentreu unangetastet.
- Beide Befunde primaerquellen-/quervergleich-verifiziert. **Offene Punkte (nicht autonom):** (a) §1-Trim
  planungsgrundlagen PV; (b) WsG-Volltext + §-Mapping WWG→WsG, dann current-Rechtslage-§§ nachziehen +
  planungsgrundlagen `kartenportale-naturgefahren-objektschutz` (§ 22 WWG) flaggen. **KEINE offenen
  Entscheide fuer Raphael** (nur Loop-/Bring-Schulden). Bericht: outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — SYN-02 Spec-Interview vorbereitet (Task `syn02-spec-anstoss`)
- Spec-Schritt 1 (Ziel aufdecken) fuer den typologischen KI-Entwurfsprozess vorbereitet:
  Interview-Entwurf mit 9 Schluesselfragen (E1–E9, je mit recherchierter Faktenlage +
  Default-Vorschlag) unter `wissen/spec/outputs/2026-07-15_syn-02-typologischer-
  entwurfsprozess-spec-interview/`.
- Zentraler Befund des Scans: `volumen_generator.py` liest die Parameter-Set-JSONs NICHT
  (nur CLI-Flags geschosse/hoehe/grenzabstand) und baut einen einfachen Quader — genau die
  SYN-02-Luecke; Spannung zu Rule 260627b (gegliederter, ausgerichteter Koerper). Schulbau
  hat die DNA-Prio, aber noch kein Parameter-Set (nur Healthcare/Wohnen v1.0).
- Kurze Info-Mail an rj@ gesendet (Start des Interviews auf Zuruf «Spec SYN-02 starten»).
  KEIN Interview gefuehrt, KEIN Bau begonnen — nur Vorbereitung.

## 2026-07-15 — Entscheide Raphael zu Lauf 01 umgesetzt (Klick-Freigaben)
- **S5 Wettbewerbs-Fabrik** + **S6 Energie-Vorabklaerung** in `services/KATALOG.md`
  aktiviert (SYN-03/SYN-07 → Status «umgesetzt»).
- **SYN-02** freigegeben: Spec-Start nach Limit-Reset; One-Time-Task `syn02-spec-anstoss`
  (20.07.2026 12:15) bereitet das Spec-Interview vor (nur Vorbereitung, Interview
  interaktiv). Pendenz im Fristen-Register vermerkt.
- Scheduled Task `synergie-lauf-monatlich` angelegt (1. des Monats 04:40, Nachtfenster,
  Erstlauf 01.08.2026 — nach dem Reset, drossel-konform).

## 2026-07-15 — Synergie-Orchestrator eingerichtet + Synergie-Lauf 01 (Auftrag Raphael)
- Neuer Skill `skills/synergie-orchestrator/SKILL.md` angelegt (Struktur-Aufsicht: prueft
  alle Harnesse gegenseitig auf Synergien, 6 Pruef-Fragen, Geschaeftsmodell-Ableitung);
  in CLAUDE.md registriert. Abgrenzung zu hub-chef/wissens-chef/harness-review im Contract.
- Neues Register `SYNERGIE-REGISTER.md` in dieser KB: 12 Erstbefunde SYN-01…SYN-12
  (u.a. Kennwerte-Doppelrechnung, Entwurfs-DNA→Volumen-Pipeline-Luecke, 4 Service-
  Kandidaten als Katalog-ENTWUERFE). Laufbericht `outputs/2026-07-15_synergie-lauf-01.md`.
- Geschaeftsmodell-Konzept GM1–GM6 erstellt:
  `docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/` (MD+DOCX+PDF, korrektur-geprueft).
- Gedrosselter Inline-Lauf (Rule 260714, kein Fan-out); KEIN neuer Scheduled Task angelegt.

## 2026-07-14 — Run 4 (3 Paare am neuen Run-48/69-Stoff; gedrosselter Lauf gemaess Rule 260714)
- Fan-out ueber 3 ueberschneidungsgefaehrdete Paare mit dem seit Run 3 neu gewachsenen Stoff
  (planungsgrundlagen Run 48 «Normkonzept BSV 2026»; energie Run 69 «SIA 2024 Gesundheitsbau /
  Fernwaerme / PV / Netto-Null»).
- **normen ↔ energie:** 2 Ausgaben-Divergenzen bestaetigt (SIA 2024: normen 2006 vs. energie 2021;
  SIA 382/1: normen 2014 vs. energie 2025) — energie ist aktuell, normen (fuehrend) ueberholt.
  WebSearch-verifiziert am SIA-Shop. → 2 Flags im normen-REGISTER + 3 Querbezug-Bloecke in energie.
  Offen: 2 Re-Destillate (Bring-Schuld normen).
- **normen ↔ planungsgrundlagen:** 0 Sachwiderspruch; §1a Normkonzept BSV 2026 fuehrt VKF-Primaerstoff
  in der falschen KB (normen fuehrend, aber ohne Destillat). → Fuehrungs-Pointer gesetzt. Offen (heikel):
  normen destilliert, dann §1a-Trim.
- **energie ↔ grobkosten/immo:** Metrik-Ebenen sauber getrennt, 0 Widerspruch. → bidirektionale
  «nicht additiv»-Querbezuege (Doppelzaehlungs-Guard) gesetzt. Bereinigt.
- Alle Editions-Befunde adversarial/extern verifiziert. **Offene Entscheide fuer Raphael: keine** —
  nur 3 Loop-Bring-Schulden (2 Re-Destillate normen + 1 §1a-Trim nach Destillat). Bericht:
  outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Run 2 (Nachverifikation W3 + Paar auflagebereinigung↔baurecht) + E1 entschieden
- E1 (m²↔m³-Faktor) entschieden: kontextabhaengig, Regelgeschoss 0.70 / Gesamtgebaeude 0.60-0.61 (kanonisch fuer die Kostenbruecke), in grobkosten + immobilienbewertung verankert.
- W3 (Baupreisindex-Stand) adversarial WIDERLEGT: grobkosten-Seed legitim; Teuerungs-Check-Verlinkung gesetzt.
- Neues Paar auflagebereinigung↔baurecht: konsistent, 1 Widerspruch (Baubeginn) WIDERLEGT/praezisiert, 4 Backlinks gesetzt.
- Keine offenen Entscheide mehr aus Run 1/2. Bericht: outputs/2026-07-12_wissens-chef-run2.md.

## 2026-07-12 — Run 1 (Erstlauf, Register angelegt)
- KB `koordination` angelegt (CLAUDE.md, QUERBEZUEGE.md, CHANGELOG.md, outputs/).
- Erster Workflow-Fan-out ueber die 5 ueberschneidungsgefaehrdeten KB-Paare
  (baurecht↔planungsgrundlagen, normen↔baurecht, energie↔planungsgrundlagen,
  grobkosten↔immobilienbewertung↔kostenschaetzung-Ref, rotierend twin↔spec).
- Befunde + Aktionen: siehe `outputs/2026-07-12_wissens-chef-run1.md`.
