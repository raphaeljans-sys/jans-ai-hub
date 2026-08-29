---
title: "Wissens-Chef Run 47 — der 112-Artikel-Schub in `architektur-fachwissen` gegen den Hub-Bestand"
datum: 2026-08-29
lauf: 47
zuschnitt: "5 Melder (sonnet) + 15 Refuter (Hauptmodell) = 20 Agenten, 3'440'405 Token, 298 Werkzeugaufrufe, 8,6 Min, 0 Fehler; dazu ein eigener Hauptkontext-Strang"
delta: "210 Commits / 24,5 h seit Run 46 (28.08.2026 23:37)"
ergebnis: "3 bestaetigt, 8 teilweise, 4 widerlegt · 9 Dateien geaendert · 2 Entscheide an Raphael"
---

# Wissens-Chef Run 47

## Ausgangslage

Seit Run 46 sind **112 neue Wiki-Artikel** in `architektur-fachwissen` entstanden, dazu Bewegung in
`normen` (45 Dateien), `baurecht` (31), `twin` (17), `grobkosten`, `energie`, `projekt-lessons`,
`immobilienbewertung`. Die KB ist damit sechs Tage alt und haelt 116 Artikel. Sie ist zugleich die
einzige KB, der die Fuehrungs-Matrix ausdruecklich **verbietet**, Kennwerte, BKP-Codes und
Norm-Fundstellen zu fuehren (Zeile 176, Run 41). Genau dort lag der Pruefschwerpunkt.

## Was gefunden wurde

### 1. «Kein Destillat vorhanden» — zweimal behauptet, zweimal falsch (bestaetigt)

`wiki/fassaden-feuchteschutz-sia-180-...` sagte an zwei Stellen, `normen` fuehre kein SIA-180-Destillat.
`wissen/normen/destillate/sia-180-2014.md` liegt dort seit dem **13.07.2026**, `status: destilliert
VOLLSTAENDIG`, 139 Zeilen. `wiki/uw-wert-berechnung-...` sagte dasselbe fuer **vier Normen zugleich**.

Die Ursache ist belegbar und lehrreich: der destillierende Lauf hat `normen/wiki/` durchsucht
(10 Dateien) und nicht `normen/destillate/` (462 Dateien). Das ist die Fehlerklasse aus Rule
`wege-und-vollmachten` Ziff. 5 — **ein leeres Ergebnis ist zuerst eine Aussage ueber das Werkzeug**.
Es ist der dritte belegte Fundort dieser Klasse (nach `energie` Run 6 und der 380/4-Registerluecke
Run 26) und damit kein Einzelfall, sondern das Standard-Versagen eines Destillat-Laufs, der die
fremde KB nur oberflaechlich absucht.

**Operativ am gefaehrlichsten** war nicht der tote Zeiger, sondern was hinter ihm lag: die
Praxisregel «bei Waermebruecken-Verdacht zuerst den fRsi-Grenzwert **0,75** als Faustregel pruefen»
ist der Stand SIA 180:1999. Nach SIA 180:2014 Ziff. 6.2.2.1 gilt der standortabhaengige Grenzwert
nach Anhang F; der unguenstigste Schweizer Wert liegt bei **0,80 bzw. 0,83**. Die Faustregel liegt
also **zu tief** und stand unmarkiert in einem Artikel, der ausdruecklich fuer Fassadendetails
gedacht ist. Markiert.

### 2. Ueberholte Werte, drei Tage nach ihrer Korrektur reproduziert (teilweise bestaetigt)

`wiki/uw-wert-berechnung-...` (29.08.) gibt die Rahmen-Rechenwerte **1,8 / 2,2 / 2,8 W/m²K** wieder.
Die fuehrende KB `energie` fuehrt genau diese Tabelle in `destillate/enfk-fensterblatt.md`
(`status: established`) seit dem **26.08.2026** mit einem ⛔-Vermerk: geltend sind nach der Ausgabe
2021 **1,4 / 1,9 / 2,5 / 3,3**, und nur noch **fuer aeltere Fenster**. Ebenso sind die Uli-Grenzwerte
1,3 / 1,6 gegen die geltenden **1,0 / 1,3** zu lax.

Hier hat die adversariale Stufe den groesseren Teil der Arbeit geleistet: der Melder hatte den
**falschen Adressaten** (`normen` statt `energie`) und schlug einen Verweis auf ein
`speculative`-Destillat vor, in dem die Werte gar nicht stehen — eine 6-von-60-Seiten-Vorschau. Der
Refuter hat Adressat, Beleg und Aktion korrigiert und den materiell schwereren Befund erst sichtbar
gemacht.

### 3. BKP «588» existiert nicht — zum dritten Mal in vier Tagen (teilweise bestaetigt)

`wiki/kostenkennwerte-schulanlage-leutschenbach.md` fuehrt «Umzuege **BKP 588**». Die Gruppe 58
kennt im BKP 2017 nur 580, 581, 582, 583 und 589; eine Position «Umzuege» kennt die Liste nirgends.
«BKP 900» daneben ist dort die **Uebergangsposition** der Gruppe 90 Moebel, nicht eine
Sammelposition «Ausstattung». Fehlerfamilie «271.10» (Rule `bkp-2017-referenz`), nach «274.01» in
Run 46 der dritte Fall binnen vier Tagen.

Das Bemerkenswerte ist die Streuung **innerhalb derselben Sektion**: die Schwesterartikel
`honorarberechtigte-bausumme-anrechenbarkeit` und `baubeschrieb-als-kostentraeger` fuehren einen
vollstaendigen BKP-Warnblock und `references/bkp-2017/BKP-2017-Liste.md` in `sources:` — dieser eine
Artikel nicht. Die KB weiss es an zwei Stellen richtig und an der dritten nicht; dasselbe Muster wie
in Run 46 bei `projekt-lessons`.

Dazu ein zweiter Vorbehalt, im Hauptkontext selbst erhoben und am Register belegt: die Werte
«CHF 547 bis 623 je m³» rechnen nach **SIA 116**. SIA 116:1952 ist zurueckgezogen und wurde 2003
durch SIA 416:2003 ersetzt (`normen/wiki/REGISTER.md`, Abschnitt B). `grobkosten` stellt seinen Band
ausdruecklich auf **GV nach SIA 416**. Der Artikel empfiehlt im selben Absatz, ueber das Volumen zu
rechnen und «die Methodik des Skills `grobkosten-onepager`» zu stuetzen — ohne Umrechnung fuehrt das
zwei verschiedene Volumenbegriffe zusammen.

### 4. Dieselbe AHB-Richtlinie in zwei Fassungen, zwei KBs, null Kanten (teilweise bestaetigt)

`architektur-fachwissen` hat am 29.08. die **Version 2.0 (12.10.2005)** der AHB-Richtlinie
«GT Planungsgrundlagen» destilliert. `energie` fuehrt seit dem 03.08.2026 die **Version 2.1
(Juli 2008)** derselben Richtlinie. Keine der beiden kannte die andere.

Der Melder meldete einen Widerspruch (25 % gegen 40 % erneuerbare Energien). **Der Refuter hat ihn
widerlegt** und dabei am Primaer-PDF nachgelesen: die Richtlinie *zitiert* die «7 Meilenschritte»,
sie setzt sie nicht, und `energie` fuehrt den Zielwert-Vergleich 2006/2008 laengst tabellarisch. Der
naechstliegende Zwilling ist zudem `ahb-zuerich-massstaebe-nachhaltiges-bauen` (Mai 2006, dieselben
sieben Punkte, ebenfalls 25 %) — nicht die beiden 2008er-Dokumente.

Was bleibt, ist trotzdem ein echter Mangel, und zwar ein besonders instruktiver: der afw-Artikel
warnte selbst korrekt, die 25-%-Vorgabe «duerfte seither ueberholt sein» — **der Nachfolgewert lag
die ganze Zeit im Haus**. Das ist die Fehlerklasse, die `energie` am selben Tag in ihrem eigenen
Lauf 167 benannt hat: *das Wissen war da, der Zeiger fehlte.*

Warum ihn niemand sah: die Run-34-Matrixzeile stellt auf den **SharePoint-Ordner** ab, dieser Fall
kommt aus dem **NAS-Archiv**; und die Mehrfach-Destillations-Messung aus Run 35 arbeitet auf
**Dateiebene** — es sind zwei verschiedene PDF derselben Richtlinie. Beide Schutzmechanismen mussten
den Fall verfehlen. Neue Matrixzeile gesetzt, die auf **Herausgeber und Dokument** abstellt statt
auf den Pfad.

### 5. Ein unbekannter GOLD-Bestand fuer den digitalen Zwilling (bestaetigt)

Mehrere der neuen Artikel stuetzen sich auf Quellen, die im Frontmatter ausdruecklich als
**«Eigentext Raphael Jans»** bzw. **«Eigenmaterial»** ausgewiesen sind: die Begriffsapparat-Texte
2012, das «Lernskript Jans Typografie» von 2007, die Denkmalpflege-Dokumentation Haus Jans 2012,
dazu die Ordner `00_Ideen/` und `00_Entwurfshaltungen/` 2013–2014.

Das ist vor-Claude-Material aus Raphaels eigener Hand und damit nach dem Echo-Schutz der KB `twin`
genau die Kategorie **GOLD `authentisch`**. `wissen/twin` kannte den Bestand nicht: auf
`02_Architektur_Archiv` und `architektur-fachwissen` je **null** Treffer. Der bisherige Gold-Korpus
des Zwillings ist **Mail-Prosa** aus den Sent Items; dies waere **Fachprosa und Argumentation**
derselben Hand — eine Gattung, fuer die die Facetten `fachsignatur` und `haltung` bisher gar keine
Quelle haben.

**Kein Ingest ausgefuehrt.** Das ist ein Scope-Entscheid Raphaels, kein Bibliothekars-Vollzug (siehe
unten). Frage beidseitig eingetragen.

### 6. Widerlegt (4) — darunter ein positiver Nullbefund

- **Der Run-41-Vorbehalt im SIA-102-Artikel ist intakt.** Der Artikel wurde am 29.08. um ein drittes
  Rechenwerk erweitert und traegt die beiden Vorbehalte woertlich als «uebernommen aus Wissens-Chef
  Run 41». Eine Cross-KB-Korrektur hat eine Erweiterung am selben Tag unbeschaedigt ueberstanden —
  das ist der Beleg, dass diese Loop-Kette traegt.
- Behaupteter Widerspruch in `normen/wiki/synthese-sia-vkf-fachskills.md`: widerlegt.
- Healthcare-Kennwert CHF 204'000/Pflegeplatz: falsche Bezugsgroessen-Gleichsetzung, Kontrast bereits
  gefuehrt.
- Fehlende Kante am Orthofoto-Artikel: widerlegt.
- **`planungsgrundlagen` als «abgeloester Router»: widerlegt** — und zwar an derselben Fehlerklasse
  wie Befund 1, diesmal beim Melder statt beim Destillat-Lauf: die Negativ-Evidenz stuetzte sich auf
  ein Verzeichnis (`planungsgrundlagen/destillate/`), das es gar nicht gibt.

## Ausgefuehrte Aktionen (alle additiv, jede mit `--numstat` gegengemessen)

| Datei | Umfang | Inhalt |
|---|---|---|
| `afw/wiki/fassaden-feuchteschutz-sia-180-…` | +3/−3 | SIA-180-Destillat-Zeiger, Ziffern-Umnummerierung, fRsi-0,75-Warnung |
| `afw/wiki/uw-wert-berechnung-…` | +12/−1 | Fassungs-Kante Uf/Uli zur fuehrenden KB `energie`, Destillat-Behauptung berichtigt |
| `afw/wiki/kostenkennwerte-schulanlage-leutschenbach` | +19/−1 | BKP-Warnung 588/900, SIA-116-Bezugsgroessen-Vorbehalt, `sources:` ergaenzt |
| `afw/wiki/ahb-planungsgrundlagen-richtlinie-…` | +15/−1 | Fassungsfolge V2.0→V2.1 belegt, drei `energie`-Ziele verlinkt |
| `afw/wiki/wettbewerbsverfahren-…` | +7/−1 | Zeiger auf `wettbewerbs-dna` samt Arbeitsteilung |
| `afw/wiki/QUESTIONS.md` | +24/−0 | Block 260829b: #38 Uebergabe twin, #39 Fuehrungsfrage Jury, #40 Kennwert-Grenze |
| `twin/wiki/QUESTIONS.md` | +36/−0 | Block 260829c: GOLD-Kandidaten benannt, drei Vorbehalte |
| `energie/destillate/ahb-zuerich-gt-rl1-…` | +19/−0 | Rueckkante auf die Vorgaengerfassung, materielles Delta |
| `immobilienbewertung/wiki/flaechendefinitionen-sia` | +1/−1 | EBF-Navigationshinweis auf `energie` (ausdruecklich keine Zitierquelle) |

Dazu CHANGELOG-Eintraege in `architektur-fachwissen`, `energie`, `immobilienbewertung`, `twin` sowie
eine neue Matrixzeile und ein Pruefblock in `koordination/QUERBEZUEGE.md`.

## Offene Entscheide fuer Raphael

**E1 — Die Kennwert-Grenze der KB `architektur-fachwissen` traegt nicht mehr.**
Die Matrixzeile aus Run 41 spricht ihr «**keine** Kennwerte, **keine** BKP-Codes und **keine**
Norm-Fundstellen» zu. Der Bestand vom 29.08. fuehrt faktisch CHF/m²-GF- und CHF/m³-Kennwerte,
Uf-/Uli-Werte, SIA-102-Phasenanteile und BKP-Codes — **ueberwiegend sauber gehedgt als datierter
historischer Zeitstand**, eine Kategorie, welche die Matrixzeile nicht kennt. Zwei Refuter haben das
unabhaengig voneinander als eigenen, groesseren Befund markiert. Zwei Wege: die Zeile nachschaerfen
(«darf historische Kennwerte als datiertes Zeitdokument fuehren, nie als Ansatz» — das Muster
existiert bereits fuer `bauprodukte`) oder die betroffenen Artikel umhaengen. Das ist eine
Fuehrungsfrage und wurde **nicht** selbst entschieden.

**E2 — Soll der Eigentext-Stratum 2007–2014 als GOLD in den Zwilling?**
Belegt vorhanden, dem Zwilling unbekannt, inhaltlich eine Gattung, die ihm fehlt. Dagegen sprechen
drei Dinge, die mitgehen muessen: es ist **destillierter** Text (als Stilquelle taugt nur das
Original), der Stratum ist 12–19 Jahre alt, und nicht jede Datei in diesen Ordnern ist Eigentext —
die Gewichtung muss je Datei am Original erfolgen.

**Nachrichtlich, kein Entscheid:** die KB verweist **25-mal nach aussen**, und von sieben geprueften
Ziel-KBs verwies vor diesem Lauf **keine einzige** zurueck. Bei 116 Artikeln nach sechs Tagen ist das
eine gemessene Einbahnstrasse — dasselbe Muster, das Run 34 am AHB-Ordner beschrieb, jetzt KB-weit.
Vier Rueckkanten sind mit diesem Lauf gesetzt.

## Betriebsnotizen

- Waehrend der Pruefung lief ein **Destillat-Schreiblauf in derselben KB** (mtimes 22:00 bis 23:15,
  Dateien erschienen zwischen zwei greps). Alle Eingriffe daher an **Ankertexten** statt an
  Zeilennummern, jede Datei einzeln mit `git diff --numstat` gegengemessen (Rule
  `auto-verbesserungen` 260811). Kein Bestandsverlust.
- Der eigene Vorfilter zaehlte zunaechst **51 Nennungen «BKP 201»**. Das war ein **Messartefakt**:
  `BKP [0-9]{3}` trifft das Praefix von «BKP-2017-Liste.md». Real sind es null. Selbst korrigiert,
  bevor ein Agent darauf angesetzt wurde — Rule `betrieb-chronik` 260829: *ein auffaelliges Muster
  ist zuerst eine Aussage ueber das Instrument.*
- Der 15-Minuten-Selfcommit hat Teile dieser Aenderungen in die Commits fremder Laeufe eingebucht
  (`2a9f37399`, `3f4e58a4a`). Inhalt vollstaendig verifiziert; nur die Commit-Zuordnung ist unscharf.
- **Der Push nach GitHub ist blockiert** — nicht durch diesen Lauf verursacht. Die Sync-Kette
  NAS → GitHub steht seit dem 29.08.2026 22:05; `energie-training` Run 167 hat den P1 um 23:0x
  korrekt registriert. Eigene Messung um 23:4x: **42 Commits nur auf dem NAS, 19 nur auf GitHub**
  (Run 167 mass um 23:03 noch 31/13 — die Divergenz waechst im Takt der laufenden Loops). Der
  **Commit auf der Synology laeuft sauber durch** (Run 47 = `f5d2a459f`, NAS-Arbeitsbaum danach
  sauber, keine Konfliktmarker); allein der Abgleich mit GitHub scheitert. Die sieben Konfliktdateien
  sind alle vom Bautyp «neueste zuoberst» — es kollidiert die Schreibweise, nicht der Inhalt.
  **Nicht selbst aufgeloest:** das hiesse, in einem unbeaufsichtigten Lauf ueber fremde,
  unbestaetigte Arbeit anderer Laeufe zu urteilen (Rule `interaktive-eingriffe`, Rule
  `auto-verbesserungen` 260811 Punkt 3). Datierter Nachtrag am bestehenden Vorgang in
  `logbuch/fristen.md` gesetzt, kein neuer Vorgang eroeffnet.
