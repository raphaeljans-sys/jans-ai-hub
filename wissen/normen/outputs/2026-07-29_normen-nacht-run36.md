# Normen-Training Run 36 (MacBook Pro, 29.07.2026) — SIA/VKF

**Kurzfassung:** Kein neues Grunddestillat (PL-02 weiterhin 0 offene `[ ]`). Dieser Lauf hat
(a) die beiden am 28.07. angemeldeten Cross-KB-Fragen zur VKF-BSR 16-15 geschlossen — dabei stellte
sich heraus, dass **die Frage-Prämisse falsch war**: die vermisste Fundstelle stand längst im
Destillat, die echte Lücke lag in der fehlenden Entscheidungsfigur; (b) die siebte unabhängige
Refuter-Runde für die zwei verbleibenden speculativen Lignum-Destillate gefahren — mit einem
**Trendbruch** bei `lignum-lignatec` (7 Befunde nach vier Runden mit je 1), ausgelöst allein durch
einen Wechsel der Prüfmethode; (c) die drei offenen Bring-Schulden per vollständiger Bestandssuche
als definitiv extern bestätigt.

Alle substanziellen Befunde hat der Hauptprozess **vor** der Übernahme selbst am Original
nachgeprüft (Methodik-Lehre Run 35) — bei den Tabellen mit eigenem 250/300-dpi-Rendering.

---

## 1. Voraussetzungen

- NAS gemountet, `scripts/lauf-gate.sh` mit Exit 0 durchlaufen (Rule 260728).
- Kollisionsschutz (Rule 260724): `ps` vor Beginn — keine zweite Instanz, kein weiterer
  `claude -p`-Prozess auf der Station.
- Zugriffs-Check am Original bestanden: `pdftotext` auf
  `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/16-15_rev2016_flucht_und_rettungswege.pdf`
  liefert Volltext (keine TCC-Blockade, kein Fallback über den M365-Connector nötig).
- Stations-Split eingehalten: ausschliesslich SIA/VKF bzw. VKF-nahe Lignum-Quellen; DIN/VSS/RAL
  nicht angefasst.

## 2. Batch und Verdikte

| # | Aufgabe | Modell | Verdikt |
|---|---|---|---|
| A | BSR 16-15: gewendelte Treppen, Laufbreite, Auftrittsbreite (P1 aus QUESTIONS 28.07.) | Hauptmodell | **beantwortet, mit Korrektur der Lesart** |
| B | BSR 16-15: offene vertikale Verbindung über Schlafnutzung (P2) | Hauptmodell | **beantwortet als «nicht gedeckt»** + Quellenkritik-Fund |
| C | Refuter Runde 7 `lignum-lignatec-brandschutz.md` | Hauptmodell | **BEANSTANDET, 7 Befunde** |
| D | Refuter Runde 7 `lignum-4-1-…feuerwiderstand.md` | Hauptmodell | **BEANSTANDET, 6 Befunde (1 inhaltlich)** |
| E | Bestandssuche SIA 385/9:2023, EN 13487, EN 12102-1 | Sonnet | **alle drei NICHT im Haus (bestätigt)** |

Workflow-Tool: erneut die bewährte Fallback-Variante (fünf parallele Agenten in einem Aufruf) —
wie in Run 28/32/34/35, mit derselben Wirkung und direkter Übergabe der Ergebnisse an die
Richter-Stufe im Hauptkontext.

## 3. Die zwei BSR-16-15-Fragen

### 3.1 Der methodische Kernbefund: die Frage-Prämisse war falsch

Der QUESTIONS-Eintrag vom 28.07. hielt fest, im Destillat `vkf-brl-16-15-flucht-rettungswege.md`
«fehlt eine Ziffer zu gewendelten Treppen bzw. zur Auftrittsbreite». Das trifft nicht zu:

- Die Wertepaare 1.5 m/0.15 m und 1.2 m/0.10 m stehen dort seit dem **17.07.2026** (Abschnitt
  «Anhang-Kennwerte», Anhang zu Ziff. 2.5.1, S. 17).
- Ziff. 3.1 Abs. 3 und Ziff. 3.2.2 Abs. 3 wurden am **28.07.2026** durch Wissens-Chef Run 19
  nachgetragen — teils am selben Tag, an dem die Frage entstand.

**Lehre:** Eine Cross-KB-Frage ist vor dem Eintrag gegen den **aktuellen Stand des Ziel-Destillats**
zu prüfen, nicht gegen die Erinnerung oder den Zitat-Stand der abgebenden KB. Die Frage war
trotzdem produktiv, weil die echte Lücke woanders lag: die Einzelziffern standen verstreut über
vier Abschnitte und ergaben zusammen keine anwendbare Entscheidungsregel.

### 3.2 Antwort A — 1.20 m ist der Ausnahme-, nicht der Regelwert

Am Original (Fassung 01.01.2017, Ziff. 2.4.5 Abs. 3, S. 6) vom Hauptprozess wörtlich nachgelesen:
geradläufige Treppen inkl. Podeste **muss 1.2 m**, gewendelte Treppen **muss 1.5 m bei minimaler
innerer Auftrittsbreite 0.15 m**, «Nutzungsbezogen sind Abweichungen möglich (siehe Ziffer 3)».
Die Absenkung auf **1.2 m/0.10 m** steht in vier Ziffern (3.1 Abs. 2 lit. b, 3.2.2 Abs. 1,
3.3.2 Abs. 1, 3.6.2 Abs. 5), durchgehend in der Modalität «sind zulässig, sofern».

Damit ist die Planervorgabe «gewendelte Treppe min. 1.20 m breit» in dreifacher Hinsicht
unvollständig: sie nennt den Ausnahme- statt den Regelwert, sie lässt die zwingend mitlaufende
innere Auftrittsbreite von 0.10 m weg, und sie belegt die Ausnahmebasis nicht. Für ein Biwak ist
die Basis nicht selbstverständlich: Ziff. 3.1 Abs. 2b ist doppelt versperrt (Schlafnutzungs-
Ausschluss der «Gebäude mit geringen Abmessungen» nach BSN 1-15 Art. 13 Abs. 3 lit. d; und die
Ziffer gilt nur für Treppen, die *mehrere* Nutzungseinheiten erschliessen), und Ziff. 3.6.2 Abs. 5
setzt einen Beherbergungsbetrieb **[c]** voraus, den es unter 20 Personen begrifflich nicht gibt.

**Negativbefund:** Eine Auftrittsbreite «in der **Lauflinie**» ist weder in BSR 16-15de (beide
Fassungen) noch in den Arbeitshilfen 1000-15de/1001-15de geregelt — der Begriff kommt dort nicht
vor. Ebenso wenig ein Steigungskriterium für gewendelte Läufe: die Formeln 2s+a und s+a im Anhang
S. 17 gelten laut Wortlaut nur geradläufig. Die Skizzenseiten wurden zusätzlich als Bild geprüft
(Methodik-Pflicht 4) — kein im Volltext unsichtbarer Zusatzwert.

### 3.3 Antwort B — die offene interne Treppe über Schlafnutzung ist nicht gedeckt

Die vermutete Fundstelle Ziff. 2.5 trägt nicht (dort nur zwei Absätze zu sicher begehbaren
Treppen). Die Verweisungsnorm ist **Ziff. 3.1 Abs. 3**: «Für Treppen innerhalb der Nutzungseinheit
gelten die nutzungsbezogenen Anforderungen» (vom Hauptprozess am Original verifiziert). Der
Entlastungskatalog ist abschliessend — Wohnen (3.2.2 Abs. 3), Büro/Gewerbe/Industrie (3.3.2
Abs. 2), Schulen (3.4.2), Landwirtschaft (3.8 Abs. 2) — und **enthält Beherbergung nicht**, obwohl
Ziff. 3.6 Abs. 3 für Hotelsuiten ausdrücklich die *Tür*-Erleichterung gewährt. Gegenpräjudiz:
Ziff. 3.4.4 Abs. 3 verlangt für Schlafräume auf Galerien/Zwischengeschossen innerhalb der
Nutzungseinheit horizontale **und** vertikale Fluchtwege.

Der häufige Denkfehler ist die 20-Personen-Weiche: ihr Unterschreiten schaltet nur Ziff. 3.6 ab und
macht die Nutzung **nicht** zu Wohnen. Passt keine Kategorie der Ziff. 3, gilt der allgemeine Teil
(Ziff. 2), der keine Entlastung für interne Treppen kennt; die Zulässigkeit ist dann über
Ziff. 2.1 Abs. 3 (objektbezogene Abstimmung mit der Brandschutzbehörde) herzustellen. Fair
mitgeführt sind die beiden Punkte der Gegenposition (BSR 10-15de nennt Hotelsuiten als
Nutzungseinheit; Ziff. 3.2 ist mit «Wohnen» überschrieben, nicht mit «Wohnung»).

### 3.4 Quellenkritischer Nebenbefund

Der Projektordner `PL - 03 Brandschutz/_Projekte Themen/Treppen innerhalb Nutzungseinheit/` war
bisher nie ausgewertet. Er enthält zwei Seitenauszüge (1001-15 S. 20, 16-15 S. 9, extrahiert
08.03.2025) und `IMG_1515.jpeg` — **den Screenshot einer ChatGPT-Konversation**, nicht die
vermutete Behörden- oder Fachstellenauskunft. Die dort genannten Ziffern sind örtlich korrekt, die
Antwort bezeichnet 1001-15 aber fälschlich als «Richtlinie» (Arbeitshilfe) und verschweigt, dass
beide Fundstellen unter der Überschrift Wohnen/Wohnung stehen — genau die Einschränkung, auf die es
ankommt. Der Ordner dokumentiert damit eine bereits durchgeführte Gegenprüfung einer KI-Aussage am
Original; die Auszüge tragen, der Screenshot nicht. Im Destillat entsprechend gekennzeichnet.

## 4. Siebte Verifikationsrunde

### 4.1 `lignum-lignatec-brandschutz.md` — 7 Befunde, Trendbruch

Konvergenz bisher: 17 → 1 → 1 → 1 → 1 → **7**. Der Sprung hat eine einzige Ursache: der Agent hat
Tabelle 5 erstmals **rechnerisch** aufgenommen (Median-RGB je Zellbox über alle 10 Nutzungszeilen
× 29 Spalten, Klassierung blau/grau/weiss) statt sie visuell zu lesen. Daraus drei Kernbefunde
derselben Wurzel — alle Vorrunden hatten den Geschossblock **1-3** geprüft und das Ergebnis
unzulässig auf den Block **4-8** verallgemeinert:

1. **Aussenwandverkleidung:** im Block 4-8 blau bei Beherbergungsbetrieben [a] **und** bei Bauten
   mit grosser Personenbelegung/Verkaufsgeschäften [c], **grau** (nicht weiss) bei Hotels [b],
   weiss nur bei EFH/REFH. Widersprach den ausdrücklichen Bestätigungen aus Run 32 und Run 34.
2. **Dämmschicht:** blaue Felder gibt es bereits im Block 1-3 (Aussenwand bei [a]) — die
   Formulierung «bei 4-8 Geschossen zusätzlich» suggerierte das Gegenteil.
3. **Bodenbelag Treppenhaus:** im Block 4-8 blau bei [a] und [c]; der Bodenbelag Korridor bleibt
   dort grau.

Alle drei hat der Hauptprozess **vor Übernahme** am eigenen 300-dpi-Rendering der S. 15 selbst
nachgezählt (Strips Nutzungsspalte × Spaltengruppe nebeneinandergesetzt) und bestätigt. Weitere
Befunde: Tab.-4-Selbstwiderspruch (Treppenhaus REI60(nbb) bereits ab 4 Geschossen, erst bei 7-8
auch der Korridor — am Original S. 13 vom Hauptprozess geklärt), Tab.-3-Verschmelzung zweier
alternativer Konzeptwerte zu einer scheinbar kombinierten Anforderung, fehlende Nutzungszeile
«Bauten mit unbekannter Nutzung» (in Tab. 3/4/5 gemeinsam mit Industrie q>1000), Modalitäts-Härtung
an fünf Stellen («im Normalfall» und viermal «insbesondere» gestrichen — nicht abschliessende
Aufzählungen wurden zu scheinbar abschliessenden; derselbe Fehlertyp wie der Run-35-Befund).

Regressionscheck aller Run-32/33/34/35-Korrekturstellen: **keine Regression**; insbesondere die
frische Run-35-Korrektur an Ziff. 1.2 («meistens») hält.

### 4.2 `lignum-4-1-…feuerwiderstand.md` — 6 Befunde, davon 1 inhaltlich

Konvergenz: 26 → 5 → 1 → 2 → 2 → **6**, aber mit umgekehrtem Vorzeichen: fünf der sechs Befunde
sind Formalien ohne Kennwert-Wirkung. Der eine inhaltliche betrifft Tab. 447-1 (S. 54): bei
Fugenbreite > 5 mm nannte das Destillat pauschal «nur die BSP-Varianten»; Variante D
(80 mm + beidseitig BSP30) trägt in der Zelle jedoch Fussnote 4 «Fugenbreite maximal 5 mm» und ist
dort gerade ausgeschlossen — das Original nennt im Fliesstext ausdrücklich nur die Varianten B
respektive E. Vom Hauptprozess am eigenen 250-dpi-Rendering der S. 54 verifiziert (Fussnote und
Fliesstext im Bild gelesen).

Formale Befunde: Formelzeichen **e_fi** statt «eh» (letzteres existiert in der Publikation nicht),
Fundstelle Kap. 2.1 Fliesstext statt Tab. 210-1, Glossar-Verweise Brandschutzbekleidung ↔
Brandschutzplatte vertauscht, Fussnote 2 in Tab. 462-2 auch bei BSP60-RF1, Frontmatter «40 Seiten»
→ 40 A3-Blätter = 80 gedruckte Seiten.

**Regressionscheck der Run-35-Korrekturen: alle drei zellengenau bestätigt** — Tab. 446-1
(Kopfzeile selbst nachgezählt R30=A+B, EI30=C+D, REI30=E+F+G; Minimum 60 mm) 60-115 mm richtig,
Tab. 446-3 R90 über vier Spalten 120-205 mm richtig, Gesamtbandbreite 60-205 mm richtig; die
Zusatzprüfung Tab. 446-2 (70-155 mm) ebenfalls. Ein offener Punkt geschlossen: die letzte
Variantenspalte von Tab. 447-1 ist bei 250 dpi lesbar (Variante E).

## 5. Methodik-Lehre dieses Laufs

**Eine Runde mit nur noch einem Randbefund ist kein Sättigungsindiz.** Vier aufeinanderfolgende
Runden mit je einem Nuance-Befund hatten bei `lignum-lignatec` den Eindruck erzeugt, die Quelle sei
ausgereizt (Run 35 hielt fest: «Fehlerdichte in den drei Kern-Tabellen seit Run 32 praktisch
null»). Der blosse Wechsel der Aufnahmemethode — rechnerische Farbklassierung statt visueller
Lektüre — förderte in genau dieser viermal bestätigten Tabelle sofort drei Kernbefunde zutage. Die
sinkende Befundzahl mass nicht die Qualität des Destillats, sondern die Reichweite der Prüfmethode.

Konsequenz für die Taktungsfrage (Punkt 2 in Abschnitt 6): das Argument «nur noch Randbefunde,
also abschliessbar» aus den Runs 19/34/35 ist damit **entkräftet**, solange eine Prüfmethode noch
nicht auf alle Tabellen angewandt wurde. Bei `lignum-4-1` gilt das Gegenteil: dort ist die
rechnerische Zellprüfung längst Standard, und die Befunde verlagern sich sichtbar auf Formalien.

## 6. Nachgeführt

- `destillate/vkf-brl-16-15-flucht-rettungswege.md`: neuer Abschnitt «Entscheidungsfigur Treppen»
  (Teile A/B/C), `last_updated`.
- `destillate/lignum-lignatec-brandschutz.md`: 7 Korrekturen, Status-Frontmatter, `last_updated`.
- `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`: 6 Korrekturen, ein offener
  Punkt geschlossen, Status-Frontmatter, `last_updated`.
- `destillate/INDEX.md`: drei Zeilen nachgeführt.
- `wiki/QUESTIONS.md`: neuer Run-36-Kopfeintrag, beide 28.07.-Fragen als geschlossen markiert,
  Bring-Schulden-Punkt mit dem Suchergebnis abgeschlossen.
- `training/norm-inventar.md`: neuer Run-36-Eintrag oben.
- `CHANGELOG.md` (KB normen) und `CHANGELOG.md` (KB planungsgrundlagen): je ein Kopfeintrag.
- Cross-KB: `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §4f — datierter
  Nachtrag mit der normseitigen Einordnung, Vorbehalt am Fachplaner-Bullet, `last_updated`.

## 7. Offen

1. **Achte Runde `lignum-lignatec`** — nach dem Trendbruch nicht optional: die rechnerische
   Tabellenaufnahme wurde bisher nur auf Tab. 5 angewandt. Tab. 3 und Tab. 4 sind bislang nur
   daraufhin geprüft, was das Destillat behauptet, nicht als ganze Tabelle. Genau diese Asymmetrie
   hat die drei heutigen Kernbefunde erzeugt.
2. **Achte Runde `lignum-4-1`** — geringere Dringlichkeit (5 von 6 Befunden formal, keine
   Regression, Kernwerte über zwei Runden stabil).
3. **Empfehlung an Raphael (Wiederholung aus Run 19/34/35, weiterhin unbeantwortet) — mit einer
   Korrektur:** der bisherige Vorschlag, die verbleibenden Lignum-Reste als «speculative, stabil»
   zu akzeptieren, stützte sich auf die sinkende Befundzahl. Dieser Lauf zeigt, dass diese Zahl die
   Prüfmethode misst, nicht die Qualität. **Neue Empfehlung: mindestens die achte Runde für
   `lignum-lignatec` mit rechnerischer Aufnahme von Tab. 3 und Tab. 4 abwarten**, bevor über
   Rücktaktung entschieden wird. Danach ist die Datenlage belastbar. Die Entscheidung bleibt bei
   Raphael (Taktungs-, nicht Qualitätsfrage).
4. **BSV 2026 und die Treppen-Entlastung:** ob die Totalrevision den Entlastungskatalog für Treppen
   innerhalb der Nutzungseinheit antastet, ist offen. Das Normkonzept BSV 2026 liegt destilliert
   vor (38 Eckpunkte), wurde aber nie gezielt auf diesen Punkt geprüft — lohnender nächster
   Vertiefungsschritt mit direktem Projektbezug.
5. **Bring-Schulden endgültig extern:** SIA 491, SN EN 12193, SN 640 052, SN 641 400 (KB
   `baurecht`) sowie neu abschliessend belegt SIA 385/9:2023, SN EN 13487, SN EN 12102-1. Für die
   letzten drei ist die Bestandssuche erschöpft; nur Beschaffung durch Raphael hilft weiter.
6. **VKF-Merkblatt 2003-15** unverändert extern zu beschaffen (seit Run 32).

**Keine «SIA/VKF KOMPLETT»-Neumeldung** — die Grunddestillation ist seit Run 19 komplett; dieser
Lauf hat zwei offene Wissensfragen mit direktem Projektbezug geschlossen und gezeigt, dass die
Vertiefungsstufe (b) bei einer der beiden Restpositionen noch nicht ausgereizt ist.
