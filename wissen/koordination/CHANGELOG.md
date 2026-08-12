# CHANGELOG — KB koordination (Wissens-Chef)

Jede Aktion der Koordinationsinstanz, datiert, neueste zuoberst.
Im Zweifel, was geaendert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-08-13 — Wissens-Chef Run 29 (Cross-KB, 6 Felder, 18 Agenten; erster Versuch am Kontingent gescheitert)

- **Bericht:** `outputs/2026-08-13_wissens-chef-run29.md`. Sechs Felder, 12 gemeldete Befunde, alle
  verifiziert: **0 bestaetigt, 11 gedaempft, 1 widerlegt.** Nach Verifikation keine Schwere «hoch»
  mehr — 3 mittel, 9 tief. 13 Dateien in 5 KBs plus 2 Skills geaendert. 0 Agentenfehler im zweiten
  Anlauf.
- **Zwei Anlaeufe.** Der erste Lauf (08.08.2026, 23:15) brach ab: 10 von 14 Agenten mit «weekly
  limit». Der Wiederaufsatz ueber `resumeFromRunId` am 13.08. lieferte die vier fertigen Melder aus
  dem Cache und fuhr die abgebrochenen neu — **alle Verifikatoren liefen am aktuellen Bestand**,
  die Staleness der zwei gecachten Melder (A, B) ist dadurch geheilt. Dazwischen lagen fuenf Tage
  **ohne Cross-KB-Lauf**; nichts ist in dieser Zeit verfallen.
- **Der einzige substanzielle Sachbefund: dieselbe Passage, zwei Bring-Schulden, eine kam an.**
  `energie` hatte am 25.07.2026 belegt, dass SIA 380/2:2022 sowohl SIA 382/1:2014 als auch
  **SIA 382/2:2011** abloest. Die erste Uebergabe ist am 26.07. in `normen` angekommen
  (`ausgabe_ueberholt` gesetzt). Die zweite nie — und ein frischer Destillier-Lauf hat sie am
  08.08. als «offene Bring-Schuld» **neu formuliert**. Eine verpuffte Uebergabe verschwindet also
  nicht nur, sie kann als Wissensluecke wiedergeboren werden.
  **Am Herausgeber selbst nachgeprueft** statt aus dem fremden Destillat abgeschrieben
  (shop.sia.ch, Produktseite SIA 380/2 (2022): Vorgaenger-Block nennt SIA 2044:2019 und
  SIA 382/2:2011, beide «gueltig bis 31.10.2022», abgerufen 13.08.2026). Gesetzt: `gueltigkeit`-Feld,
  ERGAENZUNG in REGISTER Z. 257 (Stichtagswert unangetastet), QUESTIONS-Nachtraege. Neue Luecke
  N29-1: **SIA 380/2:2022 liegt nicht im Bestand** — die KB fuehrt fuer klimatisierte Gebaeude nur
  noch abgeloesten Stand.
- **Die Nachkontrolle von Run 28 ist vollstaendig bestanden** (Feld E, null Befunde): alle drei
  Korrekturen unveraendert in Kraft, per `git show` gegen Commit `598be5e8` geprueft. Und das
  wiederkehrende Muster «planungsgrundlagen schreibt Gesetzeswortlaut materiell fort» ist an der
  Rechts-Achse **erstmals nicht mehr auffindbar**.
- **Die Verifikationsstufe hat diesmal vor allem Schaden verhindert, nicht Befunde bestaetigt.**
  Vier Melder-Vorschlaege waren aktiv schaedlich und wurden gekippt: eine «Richtigstellung», die
  eine korrekte SIA-180-Aussage in einen Fehler verwandelt haette (die Norm fuehrt 30-70 % in zwei
  Bezuegen, der Artikel meint den richtigen); eine Anreicherung **maschineller .crbx-Abschriften**
  im Goldstandard-LV; ein kopierter Querbezug-Block, der die Fuehrung ueber die
  Minergie-Verfahren stillschweigend abgetreten haette; und ein Eintrag in ein `QUESTIONS.md`,
  das die KB `immobilienbewertung` gar nicht fuehrt (sie fuehrt `wissensluecken.md`) — er haette
  genau das Phantom-Register erzeugt, vor dem Run 28 gewarnt hat. **Zwei Verifikatoren
  widersprachen sich in diesem Punkt; der Hauptprozess hat am Schema-Abschnitt der KB-CLAUDE.md
  entschieden.**
- **Der lehrreichste Befund ist KB-intern und wird als solcher gefuehrt:** Bauherren-FAQ **F219**
  behauptete fuenf Tage lang eine Wissensluecke, die dieselbe KB bereits geschlossen hatte
  («ab welcher Objektgroesse die Impulsberatung kostenpflichtig wird, ist nicht belegt»). Der
  Fehler ist keine veraltete Zahl, sondern eine **falsch gewordene Aussage ueber den eigenen
  Belegstand**: das Destillat wurde nachgefuehrt und «GEKLAERT» abgehakt, der verdichtete Layer
  nicht. Regel in energie/QUESTIONS: ein «GEKLAERT» gilt erst, wenn FAQ, INDEX und Quellenzeilen
  mitgezogen sind.
- **Zwei neue Matrix-Zeilen:** Leitungs-/Kanaldaemmung (gesetzliche Dicken fuehrt `energie`,
  SIA 380/3 liefert nur das Rechenverfahren und setzt ausdruecklich keine Dicken) und
  Minergie-Zertifizierungsverfahren (privat, fuehrt `energie`; `planungsgrundlagen` fuehrt
  ausschliesslich den amtlichen Vollzug — damit kein kuenftiger Lauf die Destillate verschiebt).
- **Ursache des Run-28-P0 abgesichert** (Hauptprozess, 08.08.2026): `skills/wissenscheck/SKILL.md`
  Phase 2 traegt jetzt einen **Schreib-Riegel** — Existenzpruefung vor jedem Anlegen, nie
  ueberschreiben, Titel nie aus der Normnummer raten, Feldnamen sind keine Feldwerte, neue Stubs
  immer `speculative`, unbeaufsichtigt endet der Skill nach Phase 1. Nachgemessen: die drei am
  07.08. wiederhergestellten Destillate stehen unveraendert (137/299/55 Zeilen), **kein
  Wiederholungsfall** — seit dem letzten Lauf gab es in `wissen/` keine einzige Netto-Loeschung
  ueber 30 Zeilen.
- **Beifang:** `skills/twin/tools/build_dna.py` nannte im Docstring noch `rules/jans-dna.md` als
  Schreibziel, obwohl der Code seit 03.08.2026 nach `rules/jans-dna-facetten.md` schreibt (Zeilen
  22-25 dokumentieren es korrekt). Ein Leser haette das Werkzeug in die falsche Richtung
  «repariert». Korrigiert.

## 2026-08-07 — Wissens-Chef Run 28 (Cross-KB, 6 Felder, 30 Agenten)

- **Bericht:** `outputs/2026-08-07_wissens-chef-run28.md`. Sechs Felder, 20 gemeldete Befunde,
  **alle 20 verifiziert — 4 bestaetigt, 16 gedaempft, 0 widerlegt**; danach vier Ausfuehrende mit
  disjunkten Dateimengen, rund 20 Dateien in 6 KBs plus zwei Dateien im Skill-Layer. 0 Agentenfehler.
- **Dimensionierung gemessen:** Zuwachs seit Run 27 per `git log --name-only` — normen 72 Dateien,
  baurecht 43, energie 26, bauprodukte 20, twin 16, immobilienbewertung 6. Fuenf von sechs Feldern
  zielten auf Material, das juenger als 24 Stunden war.
- **Der teuerste Fund — der Reparatur-Lauf hat Wissen geloescht.** Commit `f147dac4` (07.08.2026
  20:54, «Health-Check Rueparatur 260807») legte sechs Stubs fuer tote Backlinks an; **drei davon
  landeten auf Dateinamen, die bereits mit established-Volltext existierten** und ueberschrieben
  ihn: `sia-180-2014.md` (137 Zeilen, Anhaenge A-H), `din-1961-2010.md` (299 Zeilen,
  refuter-verifiziert Mini-Run 14 und 25), `sia-mb-2024-2006.md` (55 Zeilen). **477 Zeilen,
  dreieinhalb Stunden lang unbemerkt.** Vom Hauptprozess selbst am Original nachgemessen, aus
  `f147dac4^` zurueckgeholt, INDEX von drei Falsch-Zeilen bereinigt, eigener Commit.
- **Schwerer als der Datenverlust: der Gegenstand wurde aus der Nummer geraten.** DIN 1961 wurde
  zu «Elektrische Leitungen» (ist **VOB Teil B**), SIA MB 2024 zu «Beton mit
  Recycling-Gesteinskoernungen» (sind die **Standard-Nutzungsbedingungen**; der Betontitel gehoert
  zu SIA 2030). Beide falschen Gegenstaende standen danach als saubere INDEX-Zeile da. Fehlerklasse
  «erfundener Beleg» aus Run 27, eine Ebene hoeher: nicht die Zahl im Artikel, **der Artikel
  selbst**. Dazu ein Phantom-Artikel `destillate/links.md`, weil der Pruefer das Frontmatter-FELD
  `links:` fuer einen toten Backlink hielt.
- **Konvergenz als Qualitaetssignal:** gefunden von **zwei unabhaengigen Feldern zugleich** (B und
  F, fuenf konvergente Befunde) — beide wollten etwas ganz anderes pruefen und stolperten ueber
  dieselbe Luecke. Ergebnis davon, die Felder am gemessenen Zuwachs auszurichten statt an einem Turnus.
- **Teuerster Sachbefund — eine Gegenkontrolle, die keine ist.** Der Skill `machbarkeit` verlangt
  fuer den Residualwert «Gegenkontrolle **immer** ueber UBS-Fact-Sheet». Der Verifikator hat am
  Original-PDF (UBS RE LFS Wangen SZ, S. 13, Quellenverzeichnis) belegt: **die UBS-LFS-Preisdaten
  stammen von Wuest Partner** — die vermeintlich unabhaengige Zweitmeinung ist ein Derivat der
  ersten Quelle. Vorbehalt gesetzt, Werte unveraendert; neue Matrix-Zeile zur Unabhaengigkeit von
  Marktdaten-Zweitquellen.
- **Folgenreichster Praxisbefund:** der Skill `behoerden-vorabklaerung` kannte den **foermlichen
  baurechtlichen Vorentscheid** nicht und sprach vom «verbindlichen Vorbescheid» — einem Begriff,
  den das Gesetz nicht kennt. Nur der foermliche Vorentscheid bindet (ZH §§ 323/324 PBG, SZ § 84
  PBG). Praezisiert, mit zwingender Kantonsangabe.
- **Verfahren — die Quote haelt:** die Befunde tragen, die Aufloesungen nicht. **16 von 20**
  Melder-Aufloesungen von der Verifikation korrigiert, darunter zwei Klassenherabstufungen und eine
  verhinderte vorzeitige Schliessung der Wissensluecke E-122-6. Danach haben **drei von vier
  Ausfuehrenden** die verifizierte Vorlage nochmals am Bestand korrigiert (Einfuegestelle in einem
  mehrzeiligen Bullet, Fett-Span, und ein Verweisziel, das einen Skill an ein tagesdatiertes
  Lauf-Artefakt gebunden haette).
- **Register:** `QUERBEZUEGE.md` um **5 Paar-Eintraege**, **2 Matrix-Zeilen** und **3
  Struktur-Muster** (achtes bis zehntes) ergaenzt, dazu datierte Nachtraege an der Beleuchtungs- und
  der Aufzug-Zeile. Die Bezugsgroessen-Divergenz E_vm ist als **KB-interner** Pruefpunkt in
  `normen/wiki/QUESTIONS.md` angemeldet, nicht hier.
- **Keine eigene Mail** (Rule 260803). Ins `logbuch/fristen.md` eingetragen (Rule 260805): der
  **Health-Check-Reparaturlauf laeuft unveraendert weiter** — der Datenverlust ist zurueckgenommen,
  die Ursache nicht. Einziger Punkt dieses Laufs mit Wiederholungsrisiko, Entscheid Raphael.
- **Offene Entscheide fuer Raphael** (Bericht Abschnitt 7): Absicherung oder Stilllegung des
  Reparaturlaufs; Verbleib von `destillate/links.md`; unveraendert T-Regelgeschoss, D10,
  Spektrumskosten-Band, `MAX_AUTO_BYTES` und die Beschaffungs-/Bring-Schulden (N27-2 neu um die
  SIA-387/4-Produktseite erweitert).

## 2026-08-06 — Wissens-Chef Run 27 (Cross-KB, 6 Felder, 28 Agenten)

- **Bericht:** `outputs/2026-08-06_wissens-chef-run27.md`. Sechs Felder, 17 gemeldete Befunde, **alle
  17 verifiziert — 3 bestaetigt, 13 gedaempft, 1 widerlegt**; danach fuenf Ausfuehrende mit disjunkten
  Dateimengen, rund 30 Dateien in 8 KBs plus zwei Dateien im Skill-/Logbuch-Layer.
- **Dimensionierung gemessen:** Zuwachs seit Run 26 per `git log --name-only` — energie 44 Dateien,
  normen 34, twin 18, bauprodukte 10, immobilienbewertung und grobkosten je 3. Die Felder folgten dem
  Zuwachs; vier von sechs zielten auf Material, das juenger als 24 Stunden war.
- **Der teuerste Fund — eine Zahl, die keine Quelle je enthielt.** `bauprodukte` empfahl im Abschnitt
  «Praxisrelevanz fuer JANS» ausdruecklich fuer eine **Leuchtenausschreibung**: «Buerolicht
  typischerweise UGR ≤ 19», zugeschrieben auf S. 82 des ERCO-Ratgebers. Der Verifikator hat das
  Original-PDF geoeffnet: die Seite sagt «in der Regel zwischen 10 und 30» und nennt weder die 19
  noch das Wort Buero. Neue Fehlerklasse im Register: **erfundener Beleg**, abzugrenzen von der
  Quellenluecke — dort ist etwas nachzutragen, hier war etwas zu entfernen. Bemerkenswert ist der
  Ort: das Destillat war sauber, erfunden hat die Anwendungsempfehlung.
- **Groesster Frankenbetrag:** Der Healthcare-Bandendpunkt 1'420 CHF/m³ GV ist seit dem 12.07. als
  quellenintern nicht reproduzierbar ausgewiesen (recompute 1'285), der Vorbehalt steht aber
  unterhalb des Uebergabe-Blocks und reist nicht mit. Bei 10'000 m³ rund CHF 1.35 Mio zu viel.
  Zwei unabhaengige Nachrechnungen aller acht Zeilen: sechs reproduzieren exakt, Averecura und
  **Vella** weichen ab; reproduzierbarer Rohband 826-1'285.
- **Struktur-Lehre 1 (neu):** **«Sperrklausel mit Bedingung heilt nicht von selbst.»** `bauprodukte`
  verfuegte «Kein weiterer Lauf soll dort danach suchen, solange der Lesestand der KB `energie`
  unveraendert ist». Die Bedingung trat ein, aber niemand las die Klausel erneut — sie wirkt auf
  kuenftige Laeufe und haelt sich aktiv. Eine bedingte Stopp-Anweisung braucht einen benannten
  Waechter, sonst ist sie eine Dauersperre mit hoeflicher Formulierung.
- **Struktur-Lehre 2 (neu):** **Der Nachtlauf ueberholt den Cross-KB-Lauf, waehrend er laeuft.**
  Der Melder mass den ERCO-Lesestand bei 120 Seiten, der Ausfuehrende zwei Stunden spaeter bei 145;
  ein in der Vorlage genanntes Kapitel existiert gar nicht. Ebenso war `ecobkp-2026-ausbau.md`
  juenger als die Bloecke, die seine Abwesenheit beklagten.
- **Verfahren — die dritte Korrekturstufe hat erstmals gegriffen.** Die Quote haelt: die Befunde
  tragen, die Aufloesungen nicht. **Neun von siebzehn** Melder-Aufloesungen wurden von der
  Verifikation korrigiert, zweimal in die Gegenrichtung (der SIA-385/1-Verweis waere auf eine
  abgeloeste Ausgabe gegangen; der Fassungsvorbehalt zur BRL 22-15 waere faelschlich geschlossen
  worden). Und danach haben **vier von fuenf Ausfuehrenden** die verifizierte Vorlage nochmals am
  Bestand korrigiert — darunter ein Sachfehler in der Legionellen-Einordnung (Auslegungsvorgaben
  statt bedingter 3-K-Erleichterung), ein nicht korroborierter Wert («> 3 Tage»), drei falsche
  Datierungen am Wachstums-Riegel und die Reserve, die fuer den Block und nicht fuer die Datei gilt.
- **Der einzige widerlegte Befund** ist zugleich der einzige, dessen Ausfuehrung unzulaessig gewesen
  waere: er wollte eine von Raphael am 29.07.2026 ausdruecklich freigegebene Anrede-Klausel
  relativieren. Der Wissens-Chef relativiert keine Freigabe selbst.
- **Register:** `QUERBEZUEGE.md` um **6 Paar-Eintraege**, **2 Matrix-Zeilen** und **3 Struktur-Muster**
  ergaenzt (fuenftes bis siebtes).
- **Keine eigene Mail** (Rule 260803). Fuer das Tagesbriefing: **kein terminkritischer Punkt.** Der
  Thalwiler Punkt aus Run 25/26 ist heute um 08:39 vom `hub-chef` aufgenommen und als
  Korrekturvorschlag gebaut worden — die Meldekette hat im zweiten Anlauf funktioniert.
- **Offene Entscheide fuer Raphael** (Bericht Abschnitt 7): Ticket T-Regelgeschoss unveraendert,
  D10-Bereinigung des Original-Blatts, Verbleib des Spektrumskosten-Bands, `MAX_AUTO_BYTES`
  (Reserve 38 B), dazu vier Beschaffungs-/Bring-Schulden.

## 2026-08-05 — Wissens-Chef Run 26 (Cross-KB, 5 Felder, 15 Agenten)

- **Bericht:** `outputs/2026-08-05_wissens-chef-run26.md`. Fuenf Felder, 11 gemeldete Befunde,
  **10 verifiziert — 8 bestaetigt, 2 gedaempft, 0 widerlegt**; rund 20 Dateien in 7 KBs plus eine
  Skill-Referenz korrigiert. Lauf 05.08. 23:11 bis 06.08. ca. 00:20 CEST (Datumsgrenze
  ueberschritten; Korrekturvermerke tragen einheitlich das Datum des Laufbeginns).
- **Dimensionierung gemessen:** Zuwachs seit Run 25 per `git log --stat` — energie 28 Dateien
  (Run 124 endete drei Minuten vor Laufbeginn), twin 23, normen 8, projekt-lessons 5, bauprodukte 4,
  grobkosten 3. Die Felder folgten dem Zuwachs, nicht dem Turnus: drei von fuenf zielten auf
  Material, das juenger als 24 Stunden war.
- **Teuerster Fund — das eigene Archiv ist die Fehlerquelle.** Zwei unabhaengige Felder konvergierten
  auf das **VKF-Merkblatt 2001-15 «Solaranlagen»**: beide normen-Destillate fuehrten «Unterdachbahnen
  duerfen aus **RF4 (cr)**» — geltend ist «muessen mindestens aus **RF3 (cr)**». Aus einer Erlaubnis
  wurde eine Pflicht, und RF4(cr) ist die guenstige Standardbahn. **Der Delta stammt aus der Ausgabe
  01.01.2017, nicht 2022** (Zwischenfassung selbst gezogen): der Hausbestand ist neun Jahre ueberholt,
  nicht vier. Zweiter Fall gleicher Wurzel: **BRL 22-15**, Zeile c (Hochhaeuser > 30 m), Spalte B
  2015 = III, geltend II — Anforderung an den inneren Blitzschutz ERHOEHT.
- **Die Ursache ist wichtiger als die zwei Faelle:** Das SharePoint-Archiv haelt fuer beide
  Publikationen an **beiden** Ablageorten byte-identisch nur die Fassung 2015 — beim Blitzschutz im
  Ordner «Brandschutzrichtlinien 2015-17-22». Jeder kuenftige Lauf, der brav «Primaerquelle
  SharePoint» liest, reproduziert den Fehler. Neue Matrix-Zeile: **der Hausbestand ist kein
  Gueltigkeitsbeleg**, der Abgleich gegen den VKG-Endpunkt ist Pflichtschritt vor `established`.
- **Struktur-Lehre 1 (neu):** **Fuehrung heisst Zustaendigkeit, nicht Vorrang der Datenlage.**
  Zweimal in diesem Lauf haette die mechanische Anwendung der Matrix den besseren Stand durch den
  schlechteren ersetzt — beim Blitzschutz waere der einzige Ort im Hub mit dem richtigen
  Hochhaus-Wert entmaterialisiert worden.
- **Struktur-Lehre 2 (neu):** **«Korrektur verpufft im Register»** — Variante des bekannten
  Verpuff-Musters. Run 24 hatte E-122-6 im Artikel richtiggestellt, aber nie im Register; der
  Eintrag schickte den Leser sechs Wochen lang an einer vorhandenen Datei vorbei.
- **Struktur-Lehre 3 (neu):** dasselbe Muster **innerhalb** einer KB. `normen` fuehrte den
  Blitzschutz-Delta seit dem 13.07.2026 in `vkf-brl-aenderungen-2017.md` — die beiden Destillate
  waren nur nie verlinkt. Intra-KB-Blindheit, die kein einzelner Loop sieht.
- **Struktur-Lehre 4 (neu, Verfahren):** **Ein Laufbericht ist kein Meldekanal.** Der
  terminkritische Thalwil-Punkt aus Run 25 war korrekt gefunden, verifiziert und prominent markiert
  — und ist im Tagesbriefing vom 05.08. **nicht angekommen**. Wer eine Frist meldet, schreibt sie ins
  Fristen-Register. Dieser Lauf hat das nachgeholt.
- **Verfahren:** Die Quote bleibt — die Befunde halten, die Aufloesungen nicht. **Fuenf von zehn**
  Melder-Aufloesungen haetten bei mechanischer Ausfuehrung Schaden angerichtet (falsche
  Entmaterialisierungsrichtung, Kopieren einer luechenhaften Fassung in die fuehrende KB, ein falsch
  zitierter Praezedenzfall, ein toter Link, ein Zeiger auf eine nicht destillierte BKP-Position).
  Zweimal hat das **GEDAEMPFT**-Urteil einen Fehleingriff verhindert (Wuest-Faktor, Beleuchtung).
  Auch die Ausfuehrenden haben zweimal gegen die Vorlage gemessen und recht behalten (ERCO-Seitenstand
  95 statt 73; kein toter `-2022`-Backlink).
- **Register:** `QUERBEZUEGE.md` um **6 Paar-Eintraege** und **2 Matrix-Zeilen** ergaenzt.
- **Keine eigene Mail** (Rule 260803). Fuer das Tagesbriefing markiert: **⚠ terminkritisch** —
  Ziffer 4.5 des Begleitbeschriebs 2414 Thalwil, Eingabe **06.08.2026**, fertige Ersetzung liegt im
  Bericht, Freigabe Raphael ausstehend. **Neu gegenueber Run 25:** der damals vorbereitete Ersatztext
  war selbst fehlerhaft (§ 2a **Abs. 1** ABV gilt nur fuer freistehende Kleinbauten, der Veloraum ist
  angebaut → **Abs. 2**) — er haette ein falsches Zitat gegen ein zweites getauscht.
- **Ein offener Entscheid fuer Raphael** (Bericht Abschnitt 7): Ticket T-Regelgeschoss, jetzt mit
  zweiter Facette (Faktor und Bezugsgroesse in der JANS-Richtwert-Tabelle). Dazu zwei
  Beschaffungs-Pendenzen (VKF-Fassungen 2017/2022 in den SharePoint-Bestand) und die weiterhin
  parkierte Duplikat-Frage der beiden Solaranlagen-Destillate.

## 2026-08-04 — Wissens-Chef Run 25 (Cross-KB, 6 Felder, 23 Agenten)

- **Bericht:** `outputs/2026-08-04_wissens-chef-run25.md`. Sechs Felder, 32 gemeldete Befunde,
  **12 verifiziert — 12 bestaetigt, 0 widerlegt**; ueber 30 Dateien in 8 KBs, 4 Skills, 1 Rule
  und 1 Skill-Template korrigiert. Lauf 04.08. 23:11 bis 05.08. 00:00 CEST (Datumsgrenze
  ueberschritten; Korrekturvermerke tragen einheitlich das Datum des Laufbeginns).
- **Dimensionierung gemessen, nicht geschaetzt:** Zuwachs seit Run 24 per `git log --stat` ueber
  `wissen/` (energie Run 123 mit dem eco-bau-/AHB-Korpus, 15 Minuten vor Laufbeginn beendet;
  normen Run 43; baurecht Buch-Run 72; bauprodukte, twin, grobkosten). Kontingent bei Start
  25.8 Mio teuer (MacBook Pro) bei 21 % verstrichener Woche — das traegt sechs Felder statt vier.
- **Teuerster Fund: zwei archivierte Normen, die der Hub als geltend fuehrte.** **SIA 493**
  archiviert seit 30.06.2022, **SIA 430:1993** abgeloest durch SIA 430:2023 (beide am Herausgeber
  verifiziert). Praxisfolge, die den Befund teuer macht: das **JANS-Goldstandard-LV Tueren**
  fuehrt drei NPK-Positionen, die eine Produktedeklaration nach SIA 493 verlangen — ein Nachweis,
  den es seit vier Jahren nicht mehr gibt. Fassungswarnung gesetzt.
- **Struktur-Lehre 1 (neu im Register):** ein **Stichtags-Register wird ergaenzt, nie
  ueberschrieben**. Beide Melder wollten die 2013er-Registerzeilen umstellen; beide Verifikatoren
  lehnten unabhaengig ab — per Stichtag waren die Aussagen richtig, eine Umstellung haette eine
  Rueckdatierung erzeugt.
- **Struktur-Lehre 2 (neu):** `status: established` bezeugt die **Destillier-Treue**, nie die
  **Gueltigkeit**; ein Haus-PDF kann seinen eigenen spaeteren Rueckzug nicht ausweisen. Neues
  Frontmatter-Feld `gueltigkeit` in `normen` eingefuehrt.
- **Struktur-Lehre 3 (neu):** einen **Phantomcode nie mechanisch ersetzen**. 271.10 → 271.0 waere
  im Skill `brandschutz` falsch gewesen — alle vier Stellen bezeichnen das **Trockenbau**-LV
  (richtig 271.1). Der mechanische Fix haette einen Fehler erzeugt, der verifizierbar aussieht.
- **Zweite Phantomcode-Familie gefunden (vorher unbekannt):** «BKP 271.13» im
  Brandschutz-Template ist in Wahrheit eine **buerointerne Los-Nummer** (KISPI `LOS_271.13`) und
  stand an fuenf Stellen im **Dokumenttext** ausgehender Erzeugnisse. Umgestellt; die Regel
  «Los-Nummern sind keine BKP-Codes» ist neu in `rules/bkp-2017-referenz.md` verankert.
- **Ein Attributionsfehler, der aus der Quelle kam:** die Vertragshierarchie «gemaess SIA 118» im
  neuen energie-Artikel stammt woertlich aus der Primaerquelle (HBD OEKO 3.14.C, 29.08.2006) —
  nicht aus einem Abstraktionsfehler des Wiki. An drei Propagationsstellen als Attributionsfehler
  benannt, weil eine blosse «AHB-spezifisch»-Kennzeichnung ihn erneut ableitbar liesse.
- **Erst-Pruefung der eco-BKP-Achse:** `energie` und `bauprodukte` gliedern beide nach BKP und
  kannten einander in **keiner** Richtung (je 0 grep-Treffer), waehrend bauprodukte genau die
  BKP-Positionen als GEBLOCKT fuehrte, die der neue eco-Bestand abdeckt. Verlinkt, mit
  Datierungsvorbehalt Ausgabe 2008; zwei neue Matrix-Zeilen.
- **Verfahren:** die Quote «Aufloesung traegt nicht» bleibt hoch — **11 von 12** Aufloesungen
  mussten korrigiert werden, obwohl **12 von 12** Befunden hielten. Zweimal hat die Verifikation
  den Befund **gedaempft** statt verschaerft (VVEA = Belegpflege statt Fehlerkorrektur;
  planungsgrundlagen-Abschnitt quellenbegrenzt statt mangelhaft) und damit einen Fehleingriff
  verhindert. **Konvergenz zweier unabhaengiger Felder** (SIA 493 in F1+F2, SIA 430 in F2+F3) hat
  sich als staerkstes Vorsortier-Signal erwiesen.
- **Register:** `QUERBEZUEGE.md` um **8 Paar-Eintraege**, **2 Matrix-Zeilen** und die drei neuen
  Struktur-Muster ergaenzt.
- **Keine eigene Mail** (Rule 260803 / Ein-Mail-Prinzip). Fuer das Tagesbriefing markiert:
  **⚠ terminkritisch** — Ziff. 4.5 des versandbereiten Begleitbeschriebs 2414 Thalwil
  (Termin **06.08.2026**) traegt weiterhin einen falschen Satz zu Art. 45 revBZO; fertige
  Zwei-Saetze-Ersetzung liegt vor, braucht Raphaels Freigabe.
- **Zwei offene Entscheide fuer Raphael** (Bericht Abschnitt 10): der hub-weite Teuerungsanker
  fuer die Neuwert-Richtwerte (1.334 gegen 1.346, rund 1 % auf Realwert-Ergebnisse; Empfehlung
  1.346) und die Frage, ob die Doppelfuehrung derselben Fremdtabelle durch einen reinen Verweis
  ersetzt wird. Beide Entscheide aus Run 23/24 sind damit abgeloest bzw. erledigt.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B3 · C0 · D0 · E0 · F2 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Die drei B-Befunde sind Schema-Abweichungen (kein `wiki/`, kein `INDEX.md`, kein `raw/_INGESTED.md`) — als Register-KB nachvollziehbar, aber nirgends festgehalten. Empfehlung: in `CLAUDE.md` ausdruecklich festschreiben, sonst wird es monatlich neu als Fehlbestand gemeldet. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-13 — Synergie-Lauf 04 (Struktur-Aufsicht, Skill `synergie-orchestrator`)

- **Bericht:** `outputs/2026-08-13_synergie-lauf-04.md`. Delta-Basis 01.08. 14:20 – 13.08. 01:05,
  leichtgewichtiger Inline-Lauf ohne Fan-out. Register: SYN-20 bis SYN-22 neu.
- ⚠ **Messfehler im ersten Durchgang, korrigiert:** die Stationsuhr ging zehn Tage nach (`date`
  meldete 03.08. 23:28, real war der 12.08. spaetabends; Beleg: nativer Synology-Log
  `sync-tasks/log/selfcommit-202608.log`, lueckenlos bis `2026-08-13T01:04:27`). Unter der
  schiefen Uhr lieferte `git log --since` **262 statt 1111 Commits** — die Traversierung brach
  ohne Fehlermeldung ab. Die daraus gezogenen Schluesse «Delta duenn» und «Takt zu eng,
  fruehestens 01.09.» sind **zurueckgezogen**. Der Lauf wurde mit dem echten Fenster
  wiederholt: 4 neue Rules, 2 neue Connectoren, 1 neuer Command zusaetzlich zum neuen Skill.
  Verdrahtungs-Gegenprobe: alle korrekt registriert, einzige Fehlstelle `m365-graph.mjs` in
  der Allowlist `.claude/settings.json`.
- **SYN-20 (Typ 1):** der neue Skill `energie` (loest PL-04 ab) ist einseitig verdrahtet —
  er benennt neun Fach-Skills und den Agenten `energie-berater`, aber **0 von 10** nennen ihn
  zurueck. Einzige gesetzte Rueckkante: `planungsgrundlagen` (Z. 29, 65–70). Zweitens fehlten
  alle drei Contract-Pflichtfelder; **im Lauf nachgetragen** (active-with-flagging, mechanisch).
- **Muster statt Einzelfall:** zweiter neuer Skill in Folge ohne Graph-Felder (nach SYN-18,
  `wissens-destillat`); dazu weiterhin vier Skills ganz ohne Contract-Block (SYN-14, nachgemessen).
  Empfehlung: mechanische Contract-Pruefung in `heartbeat`/`wissenscheck` einhaengen.
- **SYN-21 (Typ 1):** Service S6 «Energie-Vorabklaerung» fuehrt in der Pipeline weiterhin den
  Agenten `energie-berater` (PL-04) statt den nun fuehrenden Skill `energie`. Nicht selbst
  geaendert — Katalog ist Produkttext, Freigabe Raphael noetig.
- **SYN-22 (Typ 1):** Nebenwirkung der Grundkontext-Diaet — der DNA-Feinregelsatz liegt seit
  der Diaet-Runde 2 in der nicht importierten `rules/jans-dna-facetten.md`. Vier Konsumenten wurden explizit
  verdrahtet, neun texterzeugende Bausteine (LinkedIn-Strang, `bericht-autor`, `website-content`,
  `marketing`, `protokoll`, `telesales`) haben je 0 Treffer. Keine harte Kappung (die
  Leseanweisung steht im importierten Kern), aber ein Verlaesslichkeitsgefaelle — verschaerft
  SYN-08.
- **Nachgemessen ohne Delta:** SYN-02 (`volumen_generator.py` unveraendert), SYN-13 (Etappe 4
  vertiefte 2408 BIWAK, nicht Healthcare — weiterhin kein `typologien/healthcare.md`).
- **Takt neu TAEGLICH** (Anordnung Raphael 13.08.2026): Task `synergie-lauf-taeglich`, 17:00,
  mit Uhr-Check als erstem Schritt und Frueh-Ausstieg bei strukturellem Nulldelta; der monatliche
  Vorgaenger-Task ist stillgelegt.

## 2026-08-03 — Wissens-Chef Run 24 (Cross-KB-Delta, 12 Agenten)

- **Bericht:** `outputs/2026-08-03_wissens-chef-run24.md`. Vier Felder, 35 gemeldete Befunde,
  **8 verifiziert (7 bestaetigt, 1 widerlegt)**, **9 Dateien in 4 KBs korrigiert**.
- **Bewusst schlank dimensioniert:** Run 23 lag beim Start **22 Minuten** zurueck. Erst gemessen,
  ob Substanz gewachsen ist (ja: `energie` Lauf 122 mit neun AHB-Destillaten um 22:58, `normen`
  mit sieben Destillaten zwischen 22:46 und 23:08), dann vier Felder statt sechs, 12 Agenten statt
  30. Zweiter Grund: das Kontingent lief mit 15.7 % Verbrauch bei 6.7 % verstrichener Woche
  **9 Punkte vor** dem Zeitanteil.
- **Teuerster Fund — die Baurechts-KB fuehrte falsche Gelaenderhoehen.** Regelhoehe und
  Brustungshoehe **vertauscht** (90/100 statt 1 m/90 cm), Kugelprobe 12 cm als «≤ 90 mm», dazu
  eine **frei hinzugefuegte** Hochhaus-Hoehe «110 cm (> 12 m)» mit falscher Fundstellenangabe.
  Zwei unabhaengige Verifikatoren, beide am Original (Buch-Screenshot Shot 649 **und** beide
  Norm-Ausgaben).
- **Die angemeldete Fassungsdivergenz existierte nicht.** `baurecht` hatte den Widerspruch selbst
  bemerkt und als Unterschied SIA 358:1996 ↔ :2010 angemeldet. Beide Originale liegen im Haus und
  wurden gelesen: **identische Masse**. Der Fehler entstand beim Destillieren aus dem Screenshot.
  Waere die Melder-Aufloesung («als Stand-1996-Zitat kennzeichnen») umgesetzt worden, haette die
  KB eine Normhistorie festgeschrieben, die es nie gab.
- **K42-4a geschlossen** — der hoechstprioritaere Leseauftrag aus Run 23, an dem drei KBs hingen.
  SIA 500:2009 **Anhang E, Fig. E.1 (S. 49) / E.2 (S. 51)**: «+ 0.46 (OK Brille)». **46 cm ist
  normbelegt**, die 50 cm sind widerlegt. Am Original-PDF vom Chef selbst gelesen, unabhaengig
  bestaetigt durch das am Vorabend destillierte Procap MB 105.
- **Aus einer Pflicht war eine Komfortstufe geworden:** die Aufzugs-Zeile «erhoehte Anforderung
  1.40 × 1.40 m» in `planungsgrundlagen` — zwingend bei ueber Eck angeordneten Tueren
  (SIA 500 Ziff. 3.7.4, am Original nachgelesen). Praxisfolge: eine nicht wendbare Kabine.
- **Zwei tote Rechtsgrundlagen in frisch destilliertem Bestand:** § 22 WWG (aufgehoben, WsG seit
  01.06.2026, mit geaenderter Zustaendigkeit im Bauverfahren) und Art. 20/20a LRV (aufgehoben seit
  01.01.2022, Pflicht **entfallen**) samt SIA 380/4 (archiviert seit 31.07.2019).
- **Eine Luecke, die keine war** — und ein Verifikator, der die falsche Schliessung verhinderte:
  die EN-12464-1-Tabelle liegt im Bestand, gibt aber den Stand vor 2011 wieder; **E-122-6 bleibt
  deshalb offen** statt mit einer 19 Jahre alten Tabelle geschlossen zu werden.
- **Bewusst nicht eingetragen:** die Zahlen der UGZ-Ausgabe **September 2022** (vom Verifikator im
  Web gefunden, nicht im Hub). Stattdessen Fassungsvorbehalt + Beschaffungsauftrag. Gestrichen
  wurde die belegbar falsche Zusicherung «inhaltlich deckungsgleich, Tabellen unveraendert».
- **Verfahren:** **6 von 8 Aufloesungen** mussten korrigiert werden, obwohl 7 von 8 Befunden
  hielten. Neues Struktur-Muster im Register: «Transkriptionsfehler tarnt sich als
  Fassungsdivergenz» — vor jeder Fassungserklaerung die **eigene Quelle** des abweichenden
  Destillats oeffnen.
- **Register:** `QUERBEZUEGE.md` um 5 Paar-Eintraege und das dritte Struktur-Muster ergaenzt.
- **Keine eigene Mail** (Rule 260803). Ein Punkt fuer das Tagesbriefing markiert: wer zuletzt eine
  Absturzsicherung aus der KB heraus bemessen hat, sollte den Wert gegenpruefen.
- **Kein neuer Entscheid fuer Raphael.** Die beiden aus Run 23 bleiben offen; Entscheid 10.1
  (Grundkontext-Waage) ist durch die DNA-Aufteilung um 23:11 in der Sache weitgehend erledigt.

## 2026-08-03 — Wissens-Chef Run 23 (Cross-KB, 30 Agenten)

- **Bericht:** `outputs/2026-08-03_wissens-chef-run23.md`. Sechs Felder, 46 gemeldete Befunde,
  **24 verifiziert (22 bestaetigt, 2 widerlegt)**, 14 Dateien in 6 KBs korrigiert.
- **Teuerster Fund:** normwidrige Raumbreiten fuer rollstuhlgerechte WC in
  `planungsgrundlagen` (140/160 cm gegen SIA 500 Ziff. 7.2.3.2 min. 1,65 m) — mit ausdruecklicher
  Empfehlung «direkt als Planungsgrundlage fuer Pflegezimmer-Nasszellen». Vorbehalt gesetzt.
- **Zweiter Fund:** `baurecht` fuehrte § 259 PBG in der aufgehobenen Anhang-Fassung als geltendes
  Recht (Wald/Gewaesser «ausser Ansatz») — rechnet die Ausnuetzung zu tief. Fassungs-Weiche gesetzt.
- **Umkehrung des gewohnten Musters:** im Estrich-Feld lagen **alle vier** bestaetigten Befunde im
  **fuehrenden** Bestand (`normen`), die Sekundaerquellen zitierten richtig — der Fugenplan steht in
  SIA 251:2008 unter Ziff. 2.4.9, nicht 2.4.7 (am Norm-PDF und am normeigenen Innenverweis belegt).
- **Ein widerlegter Befund mit Richtungsumkehr:** die Blitzschutz-Meldung haette die geltende Norm
  (SN 414022:2024) durch die zurueckgezogene (SNR 464022:2015) ersetzt.
- **Verfahren:** der Priming-Satz aus Run 22 ist gestrichen; die Quote «Aufloesung traegt nicht»
  bleibt bei 24/24. Sie misst nicht die Melder, sondern die Tiefe des zweiten Blicks — in sechs
  Faellen wurde die Verifikator-Fassung statt der Melder-Fassung umgesetzt.
- **Methodenlehre:** `find -newermt` ist kein Zuwachsmass. 30 der 37 «geaenderten»
  `planungsgrundlagen`-Dateien waren eine reine Umlaut-Sanierung (Commit `d9f9e02f`). Kuenftig
  `git log --stat` mit Diff-Blick als Vorfilter.
- **Selbstaufsicht:** der Befund von `claude-code`, `wissens-chef` liefere seit dem 31.07. nichts,
  haelt in der Sache — Ursache ist das erschoepfte Wochen-Kontingent (Reset 03.08. 12:00), im
  Lauf-Journal fuer jeden Loop beider Stationen belegt. Ein Beweisstueck der Meldung war ein
  Nicht-Signal (dieser Task schreibt nie ins Lauf-Journal). Zwei Pflichtpruefungen dort ergaenzt.
- **Register:** `QUERBEZUEGE.md` um 6 Paar-Eintraege ergaenzt; `spec ↔ claude-code ↔ twin`
  ausgetragen (Erst-Pruefung als Dreieck), zwei neue Paare aufgenommen.
- **Zwei Entscheide fuer Raphael** (Abschnitt 10 des Berichts): der Grundkontext liegt gemessen
  wieder **ueber** dem Vor-Diaet-Wert (115'482 gegen 105'573 B), fast allein durch
  `rules/jans-dna.md` (+17'072 B in fuenf Tagen, 28.1 % des Grundkontexts, groesster Posten) —
  und die aus Run 22 offene Verifikationstiefe der `energie`-Nachtlaeufe.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F0 · G28

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Diese KB hat kein `wiki/`, kein `raw/`, kein `QUESTIONS. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 — Synergie-Lauf 03 (monatlich, Scheduled Task `synergie-lauf-monatlich`)
- **Verfahren:** leichtgewichtig inline, kein Multi-Agent-Fan-out (Drossel-Disziplin,
  `synergie-orchestrator/SKILL.md` Z. 107 ff.). Delta-Basis 26.07.–01.08.2026. Bericht:
  `outputs/2026-08-01_synergie-lauf-03.md`.
- **Messhinweis fuer Folgelaeufe:** Commit `7b4c0777` (25.07. 21:00, «3185 Datei(en)») erfasst
  den ganzen Bestand als Add — `--diff-filter=A --since=2026-07-25` meldet fast jeden Skill
  faelschlich als neu. Delta ab 26.07. gemessen.
- **Inventar-Delta:** 50 Skills (vorher 49); neu `wissens-destillat`, KBs `bauprodukte` +
  `claude-code`, Rules `wissens-ruecklauf` + `rollen-taxonomie` (importiert), Connector
  `hub-setup`; 0 neue Agenten.
- **Vier neue Register-Eintraege:** SYN-16 (KB `bauprodukte` als Insel, null Verweise ausserhalb
  des Erzeugers, zugleich Parallelwissen in `ausschreibung/wissensbasis/05_knowhow-gewerke.md`,
  Ueberschneidung ueber die 37-Sektionen-Queue strukturell absehbar) · SYN-17 (Setup-Fakten
  doppelt in `hub-setup-daten.json` und drei CLAUDE.md-Tabellen; Staende stimmen heute ueberein,
  aber die Kopie liegt im immer geladenen Kontext) · SYN-18 (Contract von `wissens-destillat`
  ohne die Pflichtfelder Abhaengige Rules/Vorgelagert/Nachgelagert) · SYN-19 (7 von 50 Skills
  fehlen im Wegweiser CLAUDE.md, darunter die aktiven Kern-Skills `brandschutz` und
  `honorarberechnung-sia102`).
- **Direkt gesetzt (active-with-flagging):** die drei fehlenden Contract-Felder in
  `skills/wissens-destillat/SKILL.md` (SYN-18, umgesetzt) — mechanische Vervollstaendigung
  gegen `skills/SKILL-CONTRACT.md`, ohne inhaltliche Entscheidung. Sonst nichts ausgefuehrt.
- **Status nachgefuehrt:** SYN-01 (halb geschlossen — `realwert-rechner` und
  `wirtschaftlichkeit-rechner` weiterhin 0 Treffer auf `wissen/grobkosten`) · SYN-02
  (unveraendert nachgemessen, `volumen_generator.py` liest weiterhin kein Parameter-Set) ·
  SYN-06 (teilweise — die neue Rule `wissens-ruecklauf` schafft die allgemeine Pflicht, der
  benannte Kanal nach `wissen/grobkosten/raw/` fehlt weiter) · SYN-14 (unveraendert).
- **Phase 5:** kein neuer Service-ENTWURF; das Delta ist fast vollstaendig infrastruktureller
  Natur, die KB `bauprodukte` mit 8 von 37 Sektionen noch zu duenn fuer ein Leistungsversprechen.
- **[EIGENKORREKTUR am selben Tag, auf Rueckfrage Raphaels nachgemessen] Die Doppelspur-Haelfte
  von SYN-16 traegt nicht.** Der Erstbefund leitete aus «37 Gewerke-Sektionen nach BKP» ab, die
  KB werde zwangslaeufig mit `ausschreibung/wissensbasis/05_knowhow-gewerke.md` kollidieren.
  Messung am Objekt: 272 Metallbau ist im Korpus bereits destilliert, aber
  `05_knowhow-gewerke.md` sagt zu 272 ausschliesslich Ausschreibungsform («funktional
  ausschreiben, Grundlage Architektenplaene») und zu 281/282 nichts; die Datei enthaelt ueber
  alle vier Gewerke keine Produktaussage, 271/226/285 fehlen im Korpus ganz. Die Bestaende sind
  disjunkt, die Rollentrennung wird gelebt. SYN-16 auf **Typ 1** zurueckgestuft, Entscheid
  entfaellt, Kante direkt gesetzt.
  **Lehre:** Ein Doppelspur-Verdacht darf nie aus der Ueberschneidung von Ordnungsbegriffen
  (BKP-Nummern, Gewerkenamen) abgeleitet werden — zwei Bestaende koennen dasselbe Kapitel
  fuehren und trotzdem ueber verschiedene Sachen reden. Vor jedem Typ-2-Befund den Inhalt
  beider Seiten lesen.
- **Zweite Direktsetzung (SYN-16):** `wissen/bauprodukte` in die «Inputs»-Zeile von
  `ausschreibung` (inkl. Abgrenzung gegen `05_knowhow-gewerke.md` und Neutralitaetsvermerk
  Rule 260626), `offertenpruefung` und `kostenschaetzung`.
- **[NACHTRAG gleicher Tag] SYN-17 und SYN-19 durch Raphael freigegeben und umgesetzt.**
  SYN-19: 6 Zeilen in der Skill-Tabelle ergaenzt (`brandschutz`, `honorarberechnung-sia102`,
  `heartbeat`, `tenant-hygiene`, `masterclass`, `telesales`), `email-preferences` als Fussnote.
  Gegenprobe: alle 50 Skills auf Platte sind jetzt in CLAUDE.md erwaehnt, 0 Fehlstellen.
  SYN-17 differenziert wie empfohlen: Netzwerk-Tabelle und M365-Parameter raus, ersetzt durch
  einen Wegweiser auf `node connectors/hub-setup.mjs --alles`; Mail-Konten bewusst als zwei
  Zeilen Verhaltenswissen behalten (Standard-Absender rj@, kein Gmail, Apple Mail), Adressliste
  in die JSON; Zertifikats-Faelligkeit 23.03.2028 bleibt sichtbar, weil Termin und nicht
  Nachschlagewert.
  **Wichtiger Zwischenschritt:** drei M365-Fakten standen NUR in CLAUDE.md (Berechtigungsliste,
  M365-Gruppen-Logik, Verweis auf `docs/referenz/m365-zertifikat-erneuern.md`). Sie wurden
  **vor** dem Entfernen in `hub-setup-daten.json` nachgetragen und der Connector-Output
  nachgemessen. Verlustkontrolle ueber 14 Stichproben (IPs, Drucker, ssh.github.com,
  Mount-URL, App-/Tenant-ID, Zertifikatspfad, Sites.FullControl, Doku-Pfad, Nebenadressen):
  kein Fakt nur noch in CLAUDE.md. Netto trotz 6 neuer Skill-Zeilen 182 Zeichen weniger
  Grundkontext.
- **Offen war fuer Raphael (beide inzwischen erledigt, siehe Nachtrag):** SYN-19 — 7 Skill-Zeilen
  ergaenzen, **Empfehlung ja ohne Vorbehalt** (7 Zeilen Kontext gegen zwei unsichtbare aktive
  Fach-Skills). SYN-17 — **Empfehlung ja, aber differenziert:** Netzwerk-Tabelle und
  M365-Parameter raus (reine Nachschlagedaten; `hub-setup.mjs` liegt git-versioniert im
  SSD-Klon, also auch ohne NAS greifbar — gemessen), Mail-Konten dagegen verdichtet auf zwei
  Zeilen drin lassen, weil Standard-Absender/kein-Gmail/Apple-Mail Verhaltenswissen fuer fast
  jede Session ist. An CLAUDE.md wurde nichts geaendert.

## 2026-07-31 — Run 22 (Workflow-Fan-out: 6 Lese-Agenten + 25 adversariale Verifikatoren; 16 BESTAETIGT / 9 WIDERLEGT)
- **Verfahren:** ein Workflow, 31 Agenten, ~4.83 Mio. Subagent-Token, 516 Tool-Calls, ~18.5 Min.
  Bericht: `outputs/2026-07-31_wissens-chef-run22.md`. **Korrekturen in 15 Dateien in 7 KBs plus der
  Skill-Referenz `kostenschaetzung`**, dazu 18 Vorkommen eines toten Pfades in 11 Dateien. Der Lauf
  stand auf dem Zuwachs seit Run 21: Ruecklauf 2414 Thalwil, VKF-BRL-23-15-Nachtschicht in `normen`
  und `bauprodukte`, energie Run 120 (sieben Destillate, 24 Min. vor Laufbeginn abgeschlossen),
  grobkosten Tab. 522-1, immobilienbewertung Ingest Cluster A-E, projekt-lessons Artikel 5.
- **[SELBSTKRITIK, und das ist der wichtigste Eintrag dieses Laufs] Ich habe die Verifikatoren
  geprimt.** Der Prompt enthielt den Satz, die Aufloesung sei «in den Laeufen 20 und 21 in fast
  ALLEN Faellen nicht tragfaehig» gewesen. Ergebnis: **25 von 25** Urteilen lauteten «traegt nicht»
  — nach 24/24 in Run 21. Diese Quote ist damit **kein Messwert** und wird nicht als solcher
  gefuehrt. Die Gegenvorschlaege waren bei eigener Nachlese am Original ueberwiegend substanziell
  (drei belegte Beispiele im Bericht, Abschnitt 2), aber der Erwartungswert im Prompt faellt fuer
  Run 23 ersatzlos weg. **Regel daraus: einem Verifikator nie die historische Trefferquote nennen,
  gegen die er urteilen soll.**
- **[teuerster Befund] Eine umgedrehte Rechtsschwelle mit direkter Bauherren-Folge.** Der am selben
  Abend erzeugte Wiki-Artikel `energie/wiki/umweltwaerme-gewaesser.md` fuehrte die Schwyzer
  Konzessionsschwelle als «> 50 kW oder **< 4 Wohneinheiten**»; amtlich gilt «in der Regel
  **mindestens vier**» (§ 12 Abs. 2 lit. e/f WRG). Doppelter Fehler, denn zusaetzlich wurde eine
  **Erteilungs**voraussetzung zum **Pflicht**ausloeser gemacht — die Konzessionspflicht selbst ist
  nach § 11 Abs. 2 lit. b WRG groessenunabhaengig. Ein EFH am Zugersee haette daraus «keine
  Konzession noetig» gelesen; richtig ist, dass die Konzession in der Regel **nicht erteilt** wird.
  Der Artikel war der einzige Ausreisser gegen **fuenf** gleichlautende, korrekte Stellen derselben
  KB: der Verdichtungsschritt Destillat → Wiki hat die Aussage gekippt, nicht die Recherche.
- **[STRUKTURMUSTER, sechster Fundort in Folge — erstmals mit falscher SACHAUSSAGE]** «Ein Zugang
  heilt keinen Bestand» war bisher ein Redundanz-Problem. Run 22 zeigt die teure Variante: das neue
  Destillat `aufzug-energieeffizienz-vdi4707` schrieb SIA 2056:2019 «fuenf VDI-4707-Kategorien» zu
  und erklaerte die Frage fuer offen — waehrend `normen` die Norm seit dem 24.07. als `established`
  Volldestillat fuehrt (S. 1-130 gelesen) und dort **vier** Stufen **nach Gebaeudetyp** stehen.
  `grep "4707"` ueber `normen/` liefert genau einen Treffer (Anhang G, informativ). Die
  Sekundaerquellen-Aussage war also nicht bloss unbelegt, sondern falsch, und der Bestand haette sie
  am selben Tag widerlegt.
- **[ORGANISATORISCH, zweiter Beleg nach Run 21] Ein Wissensfehler steuerte wieder einen Auftrag.**
  `baurecht/training/PROGRAMM.md` beauftragte die Beschaffung der **StrAV** — aufgehoben per
  01.06.2020, Nachfolgeerlass seit dem 30.07.2026 in derselben KB, beschafft im Zuge derselben
  Triage, die den Sweep angeordnet hatte. Korrigiert; dabei kam eine echte Luecke zum Vorschein, die
  der falsche Auftrag verdeckt hatte: Vorspruenge/Tueren/Tore an der Strassengrenze haben in der
  VErV **keine** Entsprechung.
- **[mechanisch am wertvollsten] Ein toter Pfad an 18 Stellen in 11 Dateien:** die WsG-/WsV-
  Volltexte heissen `260730_…`, zitiert wurden sie durchgehend als `260728_…`. Die Zeilennummern
  stimmen exakt (drei selbst nachgeprueft) — ein reiner Dateinamen-Datumsfehler, der sich beim
  ersten Zitat einschlich und dann fortpflanzte. Alle lebenden Vorkommen korrigiert, datierte
  Chronik-Eintraege bewusst nicht.
- **[Kennwerte] Die Diagramm-Ablesung war messbar zu ungenau.** Die fuehrende Kostenreferenz fuehrte
  «aus Spread abgelesene» Werte, obwohl die exakte Quantiltabelle seit dem 31.07. im Haus liegt:
  Holzbau oberes Segment **+44.8 % statt +38 %**. Zugleich faellt die in Run 21 gesetzte Erklaerung
  «verschiedene Stichproben» — HNF- und GV-Reihe stammen aus **derselben Studie mit derselben
  Stichprobe**. Die Spreizung bleibt real und ist neu als **Ursachenfrage** angemeldet.
- **[Rotationsliste] Erst-Pruefung `bauprodukte ↔ projekt-lessons`: die Liste hatte die falsche
  Frage.** Die Abgrenzung war nicht ungeklaert, sondern dreifach gesetzt; beide Doppelspur-Befunde
  wurden widerlegt. Der echte Mangel war die fehlende Verlinkung — zwischen einer KB, die ihren
  Trockenbau-Artikel **mangels Quellmaterial blockiert** hat (Korpus-Ordner leer), und dem einzigen
  belegten Praxisfall des Hubs zu genau diesem Gegenstand. Erst-Verlinkung gesetzt.
- **Zwei neue Matrix-Zeilen** (Aufzug-Energiebedarf → `normen`; Primaertabellen/exakte Quantile →
  `immobilienbewertung` liefert, fuehrende Blaetter verwenden). Zwei neue Rotations-Paare.
- **Drei offene Entscheide fuer Raphael** im Bericht, Abschnitt 10 — neu davon nur einer
  (Verifikationstiefe der `energie`-Nachtlaeufe), die beiden anderen sind aus Run 21 uebernommen.

## 2026-07-31 (Nachlauf Run 21) — Entscheid 6.1 umgesetzt: SWKI ist zugeordnet

- **[entscheid Raphael] Die erste Matrix-Zeile mit offener Fuehrung ist wieder geschlossen.** Run 21
  hatte SWKI bewusst als «NICHT ZUGEORDNET» eingetragen, weil die Zuordnung am seit Run 31 offenen
  PL-02-Scope-Entscheid haengt. Die Gegenpruefung des Bestands vor der Empfehlung hat gezeigt, dass
  die Frage kleiner ist als sie aussah: im Haus liegt **genau ein** SWKI-Dokument (VA 103-1), die
  drei weiteren Richtlinien, die `energie` fuehrt, sind gar nicht im Bestand, und `normen` fuehrt seit
  Run 38 mit den neun bfu-Publikationen bereits eine Nicht-SIA-Familie. Der Entscheid war damit keine
  Scope-Frage, sondern die Anwendung der bestehenden Regel.
- **Gesetzt:** Matrix-Zeile in `QUERBEZUEGE.md` (normen fuehrt Fundstelle/Ausgabe/Fassungsstand,
  energie die angewandte Fachaussage) · SWKI-Tabelle in `normen/wiki/REGISTER.md` Abschnitt D mit
  vier Zeilen, ohne Gueltigkeitsaussage fuer die nicht im Haus liegenden Volltexte · zwei Auftraege in
  `normen/wiki/QUESTIONS.md` (VA 103-1 destillieren, Kaufentscheid VA 105-01) · Befund 3 des
  Strukturentscheids entsprechend geschrumpft.
- **[methodisch, notiert] Die Empfehlung stand erst nach der Bestandsmessung.** Die erste Fassung des
  Berichts stellte die Frage als Grundsatzentscheid dar; drei Zahlen aus `training/norm-inventar.md`
  (1 SWKI-PDF im Haus, 28 normrelevante Kern-Dateien von 322, bfu bereits gefuehrt) haben sie zur
  Anwendungsfrage gemacht. **Vor einer Entscheidungsvorlage an Raphael gehoert die Bestandsmessung,
  nicht danach** — sonst legt der Chef eine groessere Frage vor, als der Fall hergibt. Verwandt mit
  der Lehre aus Run 20 (Vorlage nie gegen einen ueberholten Stand).

## 2026-07-30 — Run 21 (Workflow-Fan-out: 6 Lese-Agenten + 24 adversariale Verifikatoren; 19 BESTAETIGT / 5 WIDERLEGT)
- **Verfahren:** zwei Workflows, 37 Agenten, ~6.02 Mio. Subagent-Token, 618 Tool-Calls, ~24 Min.
  Bericht: `outputs/2026-07-30_wissens-chef-run21.md`. **Korrekturen in 40 Dateien in 7 KBs plus drei
  Skill-Dateien** (`massgebendes-terrain`, `stockwerkeigentum`, das Wuest-Referenzblatt in
  `kostenschaetzung`), dazu das Koordinations-Register. Der Lauf stand auf dem Zuwachs seit Run 20: normen-Run 38 (zwei
  bfu-Destillate, Lignatec Tab. 3/4), baurecht Buch-Run 70, die am selben Tag in `grobkosten`
  eingeloeste Holzbau-Bring-Schuld, die zwei neuen `bauprodukte`-Artikel und planungsgrundlagen Run 93.
- **[LEHRE ZUR VERIFIKATION, zweiter Lauf in Folge und diesmal ausnahmslos] In ALLEN 24 verifizierten
  Faellen war die vorgeschlagene KORREKTUR nicht tragfaehig** — auch in den 19, deren Befund stimmte.
  Run 20 hatte das mit 11 von 18 erstmals gemessen; Run 21 zeigt es als Regel, nicht als Ausreisser.
  Die Verifikationsstufe verhindert damit nicht Falschbefunde, sondern **Falschkorrekturen** — das ist
  ihr eigentlicher Ertrag. Drei Beispiele: (a) der Kabinenmass-Fix haette 1'250 durch die Options-Tiefe
  1'460 ersetzt und damit eine Kategorie bestaetigt, die die Standardvariante nicht erfuellt;
  (b) der Parkierungs-Fix haette `planungsgrundlagen` zur geometrie-fuehrenden KB erklaert und so die
  abgeloeste Normausgabe ueber den bereits sauberen `baurecht`-Pfad zurueckgeholt; (c) der
  Giebelweg-Fix haette den Zwischenstand 1'167 m3 als Endstand zementiert (richtig: 1'162 m3).
  **Betriebsregel daraus: kein Cross-KB-Befund wird ohne die zweite Frage umgesetzt — nicht nur
  «stimmt der Befund», sondern «traegt die vorgeschlagene Aufloesung».**
- **[STRUKTURMUSTER, vierter und fuenfter Fundort] «Ein Zugang heilt keinen Bestand» ist jetzt in
  fuenf aufeinanderfolgenden Laeufen belegt** (Run 18 EG GSchG, Run 19 § 19 WsG, Run 20 WsG/WsV,
  Run 21 zweimal). Neu daran ist der **Ursachennachweis** im Aufzugsfall: der Kurator-Report des
  schreibenden Laufs dokumentiert, dass `wissen/normen/` gezielt durchsucht wurde — die Suche war aber
  auf «Barrierefreiheit» verengt, das seit zwei Wochen vorliegende Brandschutz-Destillat blieb
  unentdeckt. Der Bestand wird also nicht ignoriert, sondern **zu eng befragt**. Konsequenz fuer die
  KB-Loops: die Bestandssuche vor einem neuen Artikel laeuft ueber ALLE Gewerke-/Themenachsen des
  Gegenstands, nicht nur ueber die eine, die den Artikel motiviert hat.
- **[NEU UND ORGANISATORISCH RELEVANT] Ein falscher «dauerhaft offen»-Status hatte Steuerungswirkung.**
  Die ueberholte Aussage, die VSS-Parkierungsnormen seien kostenpflichtig und dauerhaft nicht
  beschaffbar, stand siebenmal in `baurecht/wiki/QUESTIONS.md` und war dort **eine der drei
  Begruendungen fuer den Vorschlag, den Loop `baurecht-buch-training` zurueckzutakten** — obwohl die
  Norm seit dem 13.07. im Haus liegt und destilliert ist. Damit ist erstmals belegt, dass
  Wissensfehler nicht nur Inhalte, sondern **Takt- und Ressourcenentscheide** verfaelschen. Alle
  sieben Stellen sind erledigt-markiert, der Ruecktaktungs-Vorschlag traegt einen Korrekturvermerk;
  die Taktung selbst entscheidet Raphael.
- **[ROTATIONSLISTE LEER] Das seit Run 9 haengende Paar `kunde-bopp` ist geprueft** — damit ist die
  Liste «Noch nie geprueft» erstmals abgearbeitet. Der Ertrag rechtfertigt das Vorziehen: die KB
  konservierte einen ueberholten Projektstand, und derselbe ueberholte Stand steckte auch im
  vermeintlich fuehrenden Traeger, dem Skill `massgebendes-terrain`.
- **Sechs neue Zeilen in der Fuehrungsmatrix** (Pflichtparkplatz-Anzahl, Parkierungs-Geometrie,
  Absturzsicherung, Aufzuege, SWKI als **bewusst unzugeordnet**, Projektzahlen). Die SWKI-Zeile ist
  die erste Matrix-Zeile, die eine Fuehrung ausdruecklich OFFEN laesst, weil der Scope-Entscheid bei
  Raphael liegt — der Chef hat sie bewusst nicht gesetzt (Rule `rollen-taxonomie` Regel 3).
- **Drei offene Entscheide fuer Raphael** im Bericht, Abschnitt 6.

## 2026-07-29 (Nachlauf Run 20) — alle drei Entscheide umgesetzt (Freigabe Raphael: Vorgaben A2/B2/C1)
- **[Entscheid A2 umgesetzt] `rules/rollen-taxonomie.md` eingedampft, nicht aus dem Import genommen.**
  Messwerte, Erstmessung und Zielbaender bleiben im schon vorhandenen
  `docs/konzepte/260729-Rollen-Taxonomie/` (lagen dort bereits); die betriebsnahen Regeln
  (Takt-/Drossel-Entscheide, Radar-Auswertung «Kaelte ohne Statuseintrag», Schutzmechanik-Selbsttest,
  Instrumenten-Tabelle) nach `rules/betrieb-chronik.md`, Abschnitt 260729b. Im Import bleibt die
  Kurzregel: Rollenzuordnung, Prototyper-Pruefung, kein eigenmaechtiges Drosseln, Ertrag statt
  Laeufe. **Kein Inhalt geloescht, nur verlagert.** Gemessen: Rule 3'559 → 1'911 B (46 %),
  Grundkontext 96'946 → 95'298 B (~24'236 → ~23'824 Token bei 20 @-Importen). Damit ist der
  Widerspruch geheilt, ohne eine Ausnahmeklausel zu erfinden; die Governance-Frage bleibt separat
  entscheidbar.
- **[Lehre aus dem Zwischenschritt, verallgemeinerbar] Die Dokumentation der Diaet frisst die
  Diaet.** Die erste eingedampfte Fassung sparte nur 874 B, weil sie zwoelf Zeilen Meta-Erklaerung
  einbaute, um dreissig Zeilen Inhalt auszulagern. Die Begruendung des Eingriffs ist selbst
  Vorfall-Chronik und gehoert nach derselben Regel nicht in den Grundkontext. Nach dem Kuerzen
  verdoppelte sich die Ersparnis. **Regel: beim Eindampfen einer importierten Rule gehoert die
  Begruendung ins Konzeptdokument oder CHANGELOG, nie in die Rule.** Festgehalten in
  `docs/konzepte/260729-Rollen-Taxonomie/`, Abschnitt 9.
- **[Entscheid B2 umgesetzt] Vier ueberholte Saetze in zwei Destillaten entfernt, Korrekturkasten
  behalten.** Betroffen: die zwei Fassungen des offenen Punkts zur Konzessions-Rechtsgrundlage im
  Seewasser-Destillat und die zwei Fassungen des falschen Negativbefunds im Eisspeicher-Destillat.
  Jeder Kasten ist dabei **selbsttragend umformuliert** worden («hier stand …»), damit er nicht auf
  einen entfernten Absatz verweist; die Herkunft des Fehlers bleibt damit am Ort lesbar, zusaetzlich
  im CHANGELOG und im Registereintrag. Gegenprobe: keine haengenden «vorstehend»-Bezuege mehr,
  Abschnittsstruktur beider Dateien intakt.
- **[Entscheid C1 umgesetzt] Titel und H1 des Lesson-Artikels geschaerft, Dateiname unveraendert.**
  Neu «… aendern sich ohne proaktive Mitteilung …» statt «unangekuendigt», H1 «… und man erfaehrt es
  nur auf Nachfrage». Der Slug bleibt, damit die Verweise aus zwei Lesson-Artikeln und aus
  `auflagebereinigung` nicht brechen. Gegenprobe: kein Reststand des alten Wortlauts ausserhalb der
  CHANGELOGs.


## 2026-07-29 — Run 20 (Workflow-Fan-out: 5 Lese-Agenten + 20 adversariale Verifikatoren; 18 BESTAETIGT / 7 WIDERLEGT)
- **Verfahren:** zwei Workflows, 37 Agenten, ~5.37 Mio. Subagent-Token, 638 Tool-Calls, 24 Min.
  Bericht: `outputs/2026-07-29_wissens-chef-run20.md`. **79 Korrekturen in 22 Dateien in 9 KBs.**
  Der Lauf stand auf dem Zuwachs seit Run 19: energie-Run 119 (sieben neue Destillate), normen
  Run 36/37, die **neu angelegte KB `claude-code`** und der vierte Lesson-Artikel.
- **[STRUKTURMUSTER, NEU UND TRAGEND] «Ein Zugang heilt keinen Bestand.»** Der WsG-/WsV-Volltext kam
  am 28.07. ins Haus. Die drei Wasser-Destillate, die `energie` am **29.07.** anlegte, benutzen ihn
  nicht: sie stuetzen sich auf ein SVGW-Merkblatt von 2001 und eine AWEL-Planungshilfe oder erklaeren
  die Rechtsgrundlage fuer «nicht gefunden». **Das Seewasser-Destillat legt neben einer bereits
  beantworteten Frage eine neue offene Frage an** — es kennt die Konzessionsdauer nicht, die Run 19
  einen Tag vorher fuer das Schwester-Destillat geklaert hatte, und verlinkt es nicht (0 Treffer).
  Ursache ist mechanisch, nicht nachlaessig: das Curriculum fuehrt die Frage weiter als offen, also
  recherchiert der Loop extern weiter. **Regel daraus: nach dem Zugang eines Erlass-Volltextes gehoert
  ein RUECKWAERTS-Sweep ueber die offenen Punkte der abhaengigen KBs, nicht nur ein Vorwaerts-Destillat.**
  Dritter Fundort dieser Klasse in drei Laeufen (Run 18 EG GSchG, Run 19 § 19 WsG, Run 20 hier).
- **[LEHRE ZUR VERIFIKATION — der eigentliche Ertrag des Laufs] In 11 der 18 bestaetigten Faelle war
  die vorgeschlagene KORREKTUR selbst falsch.** Der Befund stimmte, die Aufloesung haette einen neuen
  Fehler eingebaut. Drei Beispiele: (a) SIA 2032 sollte im Register auf «2020✓ · 2010✗» umgeschrieben
  werden — unzulaessig, weil kein Rueckzugsdatum fuer 2010 belegt ist; das ✗ waere dieselbe ungedeckte
  Gueltigkeitsaussage in die andere Richtung gewesen. (b) Die Diaet-Ersparnis-Zeile in `claude-code`
  sollte «relativiert» werden — falsch, sie misst die Wirkung des Eingriffs am Commit; das
  Wiederanwachsen ist eine andere Groesse. (c) Die verallgemeinernde Lesson-Zeile in
  `projekt-lessons` sollte entschaerft werden — falsch, sie ist auch fuer den zweiten Fall korrekt und
  traegt die ganze Lesson. **Konsequenz: der Verifikations-Schritt darf nicht nur den Befund pruefen,
  sondern muss die vorgeschlagene Aufloesung mitpruefen.** Das war in diesem Lauf erstmals
  ausdruecklich im Auftrag der Verifikatoren und hat sich in 11 Faellen ausgezahlt.
- **[korrektur, materiell, erreichte den Bauherrn] Zwei falsche Negativbefunde in neuen Destillaten.**
  Das Eisspeicher-Destillat erklaerte, es gebe keine Schweizer Primaerquelle zur Bewilligungspflicht
  (§ 92 WsV und § 44 Abs. 1 lit. a Ziff. 3 WsG liegen im Hub) — der Fehler ging ueber **FAQ F187**
  hinaus. Das Seewasser-Destillat liess die Konzessions-Rechtsgrundlage zweimal wortgleich offen
  (§ 68 Abs. 1 lit. c WsG → § 119 Abs. 2 lit. c → § 120 Abs. 1 WsV). Beide korrigiert, die
  KB-eigenen Zuordnungen ausdruecklich als **Subsumtion** gekennzeichnet.
- **[korrektur, materiell] Eine Kernaussage war durch die eigene Datei widerlegt.** «Holzbau
  durchgehend 20-40 % tiefer» steht im Kopf des neuen graue-Energie-Destillats, waehrend dessen
  eigene Tabelle -13 % und dessen eigener Bauherren-Transfer 20-25 % nennt; die 40-%-Obergrenze
  stammte aus einer Zeile, die die Datei selbst als «keine Primaerzahl» entwertet — und deren Rechnung
  zusaetzlich falsch war. Neu: **Median rund 23 %, Planungsgroesse 20-25 %**; «durchgehend» nur noch
  fuer die **Richtung** in der Wueest-Stichprobe. Nachgezogen bis in **INDEX und Curriculum**, weil
  ein Folgelauf die widerlegte Zahl sonst als eigenen Vorbefund wieder einliest.
- **[dritter Fundort KGSchV] Die per 01.01.2022 aufgehobene KGSchV (LS 711.11) stand noch an zwei
  weiteren Stellen ungeflaggt:** in OEREB-Thema 130 (`planungsgrundlagen`, die Angabe, die ans AWEL
  geht) und im energie-Destillat `erdwaermesonden-bewilligung-zh-sz`, dort im Status «established»
  und ausdruecklich als «primaerquellen-verifiziert». **Die Gebuehren-Nachfolge hat der
  Verifikations-Agent am Volltext gefunden** (§ 209 WsV verweist auf dieselbe GebV UR wie der alte
  § 69 KGSchV) — die materielle Aussage bleibt damit gueltig.
- **[LEHRE ZUR NUMMERN-NAEHE] Warum der Run-18-Sweep an OEREB-130 vorbeilief: Praefix.** Gesucht wurde
  `LS 711.1`, und `LS 711.11` enthaelt das als Praefix. Wer eine Zeile abhakt, sobald die gesuchte
  Nummer geflaggt ist, liest ueber den **laengeren Nachbarn mit derselben Wurzel** hinweg. Bei
  LS-Nummern ist die Ziffernfolge ohne Wortgrenze nicht eindeutig (**711.1 ≠ 711.11**), so wie 724.11
  in zwei Zeitperioden zwei verschiedene Erlasse trug. **Erlass-Sweeps ab jetzt auf Wortgrenze und
  jede Nummer der Zeile einzeln.**
- **[ERST-PRUEFUNG `claude-code`] Der Hub widerlegt seine eigene, tagesaktuelle Regel.** Die
  Kontext-Diaet-Regel schliesst Loops, Infrastruktur und Messwerte aus dem @-Import aus; am selben Tag
  wurde `rules/rollen-taxonomie.md` importiert, mit genau diesem Inhalt. **Nicht selbst eingegriffen**
  (Rollen-Taxonomie Regel 4: messen und berichten, nie automatisch durchsetzen) → Entscheid Raphael,
  mit einer dritten Option als Vorzugsvariante. Nebenbefund: das dort gefuehrte Grundkontext-Budget war
  **am eigenen Messtag** zu tief (nachgemessen 20 Importe / 96'946 B / ~24'236 Token statt 19 / 87'398 B).
- **[der ehrliche Teil] 7 von 25 Befunden wurden widerlegt,** darunter zwei Doppelspur-Vorwuerfe gegen
  die neue KB `claude-code`, ein Legionellen-Widerspruch und ein Zeitstempel-Vorwurf. Die Abgrenzung
  von `claude-code` gegen die Rules ist sauber formuliert — dort war kein Befund.
- **[Rueckstand aus der Umsetzung, offen benannt]** Die disjunkte Dateiaufteilung der Schreib-Agenten
  hat alles liegen lassen, was ueber eine Gruppengrenze lief; der Chef hat das sequenziell
  nachgeholt (INDEX-Zeilen, Curriculum-Nachtraege, Bring-Schulden in `baurecht`/`planungsgrundlagen`/
  `spec`, Konsistenz im zweiten Lesson-Artikel). **Kein Agent durfte loeschen** — ueberholte Saetze
  stehen mit datiertem Korrekturkasten daneben statt entfernt. Wenn Raphael die ueberholten Saetze
  wirklich entfernt haben will, braucht das seine Freigabe.
- **[an die fuehrenden KBs uebergeben]** P1 `baurecht`: §§ 95-100 WsG / § 178 WsV im ganzen Hub
  unverarbeitet · K61/K62 `planungsgrundlagen`: KGSchV-Nachfolge, Regenwasser-Nutzungsseite ·
  `normen`: SIA-2032:2020-Destillat fehlt (dangling link), SIA 390/1 nicht erfasst, SIA-500-Korrigenda
  weiter offen · `grobkosten`: Kostenhaelfte der Wueest/Lignum-Studie · `spec`: F-ENV1 Zaehlstaende ·
  `baurecht` unveraendert offen aus Run 19: § 260 Abs. 3 Haupt-/Anhang-Vorbehalt, drei zerstoerte
  Saetze im Naeherbaurechts-Destillat.


## 2026-07-29 — Nachlauf Run 19: drei der vier offenen Entscheide umgesetzt (Freigabe Raphael)
- **[Entscheid A umgesetzt] Rule `anrede-kontakte.md`: generelle Gewichts-Klausel eingesetzt.**
  «Die Notiz-Spalte nennt den Routine-Default. Die Anrede-Stufe folgt zusaetzlich dem **Gewicht des
  konkreten Anliegens**: ein verbindliches Ergebnis oder eine folgenreiche Bitte zieht
  «Geschaetzte/r <Vorname>» auch beim sonst lockersten Du-Kontakt, danach faellt der Faden wieder
  auf den Routine-Opener zurueck.» Dreifach unabhaengig belegt (Stefan Tschopp, Besnik/fsgbau,
  Levi Hiltmann). **Heilt alle Zeilen zugleich** — die Einzelnotizen bleiben als Routine-Default
  gueltig und mussten nicht angepasst werden. Lag seit Run 17 (27.07.) offen.
- **[Entscheid D1 umgesetzt] Die Wurzel der § 19-WsG-Fehlzuordnung ist geschlossen.**
  `baurecht/raw/260717_amtlich_zh_hwschv.md` auf **§ 18 Abs. 1 WsG** korrigiert — als ausdrueckliche
  Ausnahme von der `raw/`-Leitplanke, weil die Tabelle **KB-Autorentext** ist. Zusaetzlich
  **Warnkasten «KB-AUTORENTEXT, NICHT AMTLICHER WORTLAUT»** gesetzt, der den Run-8-Zitierfehler
  benennt. Damit regeneriert sich der Fehler nicht mehr; der Sweep aus Run 19 ist vollstaendig.
- **[Entscheid C1 umgesetzt]** `bauprodukte/.!33499!CHANGELOG.md` (0 Byte) geloescht, vor der
  Loeschung nochmals auf Leere geprueft.
- **[Entscheid B GESCHLOSSEN am 29.07.2026 — Antwort Raphael: Elektro Stählin AG]** Beide
  bisherigen Zuordnungen im Hub waren falsch, auf verschiedene Weise: die Rule fuehrte
  **«Karl Waechter AG»** (Fehlannotation — das ist ein anderer Betrieb, Ansprechpartner dort
  **Mario Di Capua**), das twin-Wiki an fuenf Stellen **«Staehlin AG Sanitaer»** (richtige Firma,
  **falsches Gewerk**). Richtig ist **Elektro Staehlin AG, Zuerich** (Elektroinstallationen,
  BKP 230). Raphaels Antwort wird durch drei unabhaengige Hub-Belege gestuetzt, die vorher niemand
  zusammengezogen hatte: `f.staehlin@staehlin-ag.ch` (`twin/raw/260714-mailbatch-51.md:8`),
  «Index 318, **Staehlin Elektro**» in einer Serie mit BKP 230.00 Elektro
  (`twin/raw/260714-mailbatch-48.md:19`) und «Fall Staehlin-Elektro» in
  `rules/auto-verbesserungen-archiv.md:22`; extern verifiziert (Elektro Staehlin AG, Bolleystrasse,
  8006 Zuerich, gegruendet 1945, Domain `staehlin-ag.ch` — deckungsgleich mit der Mailadresse).
  Korrigiert: Rule-Zeile, fuenf Stellen in `twin/wiki/beziehungsregister.md`, eine in
  `twin/wiki/stimme.md`. **Das Du-Register und alle Stil-Befunde bleiben gueltig** — falsch waren
  nur Firma und Gewerk. Lag seit Run 17 (27.07.) offen.
- **[LEHRE — zweiter Fundort derselben Fehlerklasse in zwei Tagen] Autoren-Annotation in `raw/`
  wird spaeter als Quelle behandelt.** `twin/raw/260714-mailbatch-51.md:8` traegt dieselbe
  Fehlannotation «Felix Staehlin, Karl Waechter AG»; der Mail-Inhalt (die Adresse) ist korrekt, die
  **Zuordnung des Bibliothekars daneben** ist es nicht. Exakt das Muster, das Run 19 einen Tag
  zuvor bei `baurecht/raw/260717_amtlich_zh_hwschv.md` gefunden hat. `raw/` nicht editiert; in
  `twin/wiki/QUESTIONS.md` festgehalten, damit ein kuenftiger Batch die Annotation nicht erneut als
  Beleg liest. **Damit ist die Regel keine Einzelfall-Beobachtung mehr, sondern hub-weit
  belegt:** wo eine `raw/`-Datei neben dem Quellmaterial eigene Zuordnungen fuehrt, sind diese als
  Annotation zu kennzeichnen.
- **[an die Loops, unveraendert]** SIA-500-Korrigenda-Nachzug (~20 Stellen, `normen`) · drei
  grammatisch zerstoerte Saetze im Naeherbaurechts-Destillat (`baurecht`, braucht Buch-Run) ·
  OEREB-Thema 130/KGSchV-Nachfolge (`baurecht`/`planungsgrundlagen`).



## 2026-07-28 — Run 19 (Workflow-Fan-out: 5 Lese-Agenten + 10 adversariale Verifikatoren; 7 BESTAETIGT / 3 WIDERLEGT)
- **Verfahren:** Workflow-Tool, 15 Agenten, ~2.42 Mio. Subagent-Token, 310 Tool-Calls, 20 Min.
  Bericht: `outputs/2026-07-28_wissens-chef-run19.md`. 14 Stellen in 12 Dateien korrigiert.
  **Der Lauf stand auf einer eingeloesten Bring-Schuld:** `baurecht` hat mit Buch-Run 69 den in
  Run 18 als P1 gemeldeten **WsG-/WsV-Volltext** beschafft — damit waren erstmals alle ~60
  WsG-/WsV-Fundstellen des Hubs am amtlichen Wortlaut pruefbar. Genau daraus kommen die zwei
  gewichtigsten Befunde. Die Bring-Schuld-Mechanik hat sich damit erstmals messbar ausgezahlt.
- **[korrektur, materiell, WICHTIGSTER BEFUND — und ein SELBSTBEFUND] Der Gewaesserraum stand
  hub-weit auf § 19 WsG; richtig ist § 18 Abs. 1 WsG.** Das Wort «grundeigentuemerverbindlich»
  steht woertlich und ausschliesslich in § 18 Abs. 1 (Randtitel «b. Festlegung»); § 19 heisst
  «c. Beruecksichtigung der baulichen Gegebenheiten in dicht ueberbauten Gebieten» und regelt die
  **Anpassung** — inhaltlich das Gegenteil. Betroffen war die Rechtsgrundlagen-Spalte von
  **OEREB-Thema 190**, also die Angabe, die aus `planungsgrundlagen` in Behoerdenschreiben ans AWEL
  wandert. Vier Fundorte in drei KBs korrigiert; **§ 19 WsG neu als eigene Aussage** erfasst
  (Abs. 2 = der Hebel bei erheblicher Nutzungseinschraenkung) — er war im Hub nirgends gefuehrt,
  weil er mit der Festlegung verwechselt wurde.
- **[STRUKTURMUSTER, NEU — gewichtiger als der Einzelfehler] Autorentext in `raw/` wird spaeter als
  amtlicher Wortlaut zitiert.** Die Quelle der Verbreitung ist eine **vom KB-Autor geschriebene**
  Konkordanztabelle im Kopf von `baurecht/raw/260717_amtlich_zh_hwschv.md`; der amtliche Teil
  beginnt erst unter «TEIL A». Der Refuter von **Run 8** erklaerte die Zuordnung mit dem Satz
  «steht woertlich in der **amtlichen** Konkordanztabelle» fuer belegt — und behandelte damit
  Autoren-Interpretation als Primaerquelle. Die Datei markiert das im Frontmatter-Feld `umfang`
  selbst; es wurde nur nicht gelesen. **Regel: eine `raw/`-Datei ist nicht als Ganzes amtlich** —
  Autoren-Hilfstabellen (Konkordanz, Mapping, Uebersicht) sind als solche zu kennzeichnen. Der
  Chef fasst `raw/` nicht an → als P1 an `baurecht` uebergeben.
- **[korrektur + fassungsstand, materiell — ergiebigster Einzelbefund] SIA 500: vier Korrigenda,
  eines dem Hub sieben Jahre unbekannt.** C3:2013 aendert die **Bezugsgroesse von Parkplaetzen auf
  Wohnungen** (1 rollstuhlgerechter PP pro 25 **Wohnungen**) plus 100-m-Richtwert; **C4:2019 war im
  Hub nirgends erwaehnt** (aendert Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8, 6.2.2). Der
  Fehler hatte die Destillat-Ebene schon verlassen: `bauprodukte/wiki/bkp-261-aufzuege.md` rechnet
  gegen die Kabinen-Tabelle aus **Ziff. 3.7.3**. **Dritte Variante der Run-8-Regel «Fassungspflege
  ist der blinde Fleck»: auch bei UNVERAENDERTER Ausgabe koennen Korrigenda Ziffern materiell
  aendern — sie tragen keine neue Jahreszahl und sind an der Ausgabe nicht erkennbar.**
- **[korrektur, materiell, bis zum Bauherrn] Konzessionsdauer Grundwasserwaerme: 15-30 Jahre.**
  `energie` fuehrte «kein gesetzlicher Maximalwert» — die eigene Einschraenkung («bevor die WsV
  geprueft ist») war seit dem 28.07. einloesbar: **§ 121 Abs. 1 lit. b WsV** nennt eine Regeldauer
  von **15-30 Jahren**; die kursierenden 40 Jahre gelten fuer **andere Litera**. **Die Stufe war
  das Problem, nicht die Recherche** — gesucht im Gesetz, geregelt in der Verordnung. Auch
  **BAUHERREN-FAQ F77** korrigiert, wo der Fehler den Kunden erreichte. Nebenbefund: die
  100-kW/Minergie-Mindestgroesse steht **nicht** in der WsV → AWEL-Praxis, nicht Verordnungsrecht.
- **[korrektur, materiell] § 47b Abs. 1 BBV I: Erlass und Vollzugshilfe waren vermischt.** Das neue
  Rueckkuehler-Destillat gab 30-%-Technikreserve, Zweckbestimmung und PV-Reduktionsklausel als
  Erlasswortlaut aus. Der Erlass besteht aus **genau zwei Saetzen** (10 W/m² EBF + 70-%-Deckel).
  **Mechanik:** das als «woertlich» ausgewiesene Blockzitat war eine Montage aus zwei Textbloecken;
  weggefallen war genau der Satz, der die Verwechslung verhindert haette. **Regel: Erlasswortlaut
  und Vollzugshilfe nie in dasselbe Blockzitat montieren.**
- **[korrektur, materiell] Gebaeudekategorie: Spital ist VIII, nicht IX (= Industrie).** Der neue
  Therapiekuechen-Report verwechselte sie. Fuer § 41a bleibt das Ergebnis gleich, die Nummer ist
  aber der Rechen-Identifikator: 20 statt 70 kWh/m². Leitplanke mit der Liste I-XII in `normen`.
- **[ERST-PRUEFUNG] `bauprodukte` (neue KB) war im Register unsichtbar — und produzierte prompt den
  erwarteten Fehler.** Keine Zeile in der Fuehrungs-Matrix; `dachbegruenung-systeme` fuehrte die
  Dachbegruenung allein unter **BKP 224** und kannte **SIA 312:2013** gar nicht, obwohl das
  Destillat laengst in `normen` liegt. Die Norm verlangt **224 (Schichtaufbau) / 288 (Vegetation)** —
  wer alles unter 224 ausschreibt, **verliert die Gaertnerleistung aus dem Devis**. Drei
  Fuehrungszeilen ergaenzt, Normabschnitt nachgetragen, beidseitig verlinkt.
- **[korrektur, materiell] Luecke im VKF-Destillat 16-15, gefunden beim Pruefen eines anderen
  Befunds.** Ziff. 3.1 liess die Tatbestandsvoraussetzung «welche mehrere Nutzungseinheiten
  erschliessen» und Abs. 3 weg, Ziff. 3.2.2 den Abs. 3 «An Treppen **innerhalb** der Nutzungseinheit
  werden keine Anforderungen gestellt» — die praktisch haeufigste Konstellation fehlte damit ganz.
  C41 in `planungsgrundlagen` entsprechend neu gefasst: **zuerst die Nutzungseinheit abgrenzen,
  dann die Breite bestimmen.**
- **[WIDERLEGT, 3 von 10 — und zwei davon fanden echte Fehler anderswo]** (a) «70-%-Deckel nur bei
  hohen Bauten sei Falschlesart» — es ist die **amtliche Vollzugslesart**; eine Korrektur haette die
  Vollzugspraxis aus dem Hub entfernt. (b) «Terrazzo durch SN EN 16954:2018 abgedeckt» — falsche
  Leitnorm, einschlaegig ist **SIA 244:2006**; die Umsetzung haette eine falsche Normzuordnung in
  eine brandneue KB gesetzt. (c) «SBB-Lesson erhebt den Einzelfall zur Regel» — kippt an vier
  Gruenden; **der Vorschlag war der gefaehrlichere Teil** (wollte ein «Vorsprungsprivileg § 260
  Abs. 3 PBG» zitieren, das im geltenden PBG-Hauptteil einen anderen Gegenstand hat). Aus dem
  Kipp-Vorgang stammen zwei echte `baurecht`-Meldungen: drei **grammatisch zerstoerte Saetze** im
  Naeherbaurechts-Destillat und ein nicht vollzogener § 260-Sweep im `established`-Leitartikel.
- **[gemeldet, NICHT ausgefuehrt] Loeschung braucht Freigabe:**
  `bauprodukte/.!33499!CHANGELOG.md` ist ein 0-Byte-SMB-Schreibfragment (28.07. 01:37), das echte
  CHANGELOG ist intakt. Kein Datenverlust; Entscheid Raphael.
- **[ENTSCHEID RAPHAEL, unveraendert offen aus Run 17/18]** zwei Rule-Aenderungen an
  `anrede-kontakte.md` (generelle Gewichts-Klausel; Felix Staehlin — Karl Waechter AG oder
  Staehlin AG Sanitaer?).

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
