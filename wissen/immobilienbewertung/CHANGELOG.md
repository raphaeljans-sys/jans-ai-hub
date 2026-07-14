# CHANGELOG — KB Immobilienbewertung

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-07-14 — Training-Run 32: Delta-Check (fuenfter Trigger desselben Tages)

- Fuenfter Trigger am selben Tag (nach Run 28 00:38, Run 29 04:51, Run 30 05:44, Run 31 07:32
  Uhr), erneut ausserhalb der Sollfrequenz (Rule 260713: 1x taeglich 02:50). Schlanker Delta-Check
  statt Vollzyklus: Bewertungsordner erneut gelistet, unveraendert (kein neuer JANS-Fall).
  Marktanker nicht erneut per Web geprueft (Run 31 liegt < 4 Std. zurueck, kein Grenznutzen vor
  den naechsten Publikationsterminen 09.2026). D6-Restposten Langnau weiterhin blockiert.
- Oberrieden-Hoehenkorrektur-Erinnerung (Rule `auto-verbesserungen` 260624) zum **fuenften Mal**
  protokolliert — weiterhin nicht korrigiert.
- Trigger-Haeufung (5 Laeufe an einem Kalendertag) jetzt eindeutig bestaetigt — Empfehlung an
  Raphael, die Trigger-Quelle(n) (Scheduled Task vs. VOLLGAS-Runner) zu pruefen, damit Token-
  Einsatz nicht auf reine Bestaetigungs-Delta-Checks faellt.
- Report: `outputs/2026-07-14_training-run32.md`.

## 2026-07-14 — Training-Run 31: D11 geschlossen (ZIW-Index-Faktor 2003→2025)

- Erster produktiver Lauf seit Run 27: die amtliche Reihe **Zuercher Index der Wohnbaupreise**
  (Stadt Zuerich, Basis 01.06.1939=100, Publikationsstand 01.01.2026) per Web gefunden und
  ausgewertet — schliesst die seit Run 18 offene Luecke **D11**. Wert 01.04.2003=899.2, Wert
  01.04.2025=1210.4 → **Index-Faktor 1.346 (+34.6 %)**. Die m3-Neuwert-Richtwerte (Schaetzungs-
  anleitung Tab. 2, Bauklasse I-VI) sind jetzt auf 2025 hochgerechnet in [[realwert-sachwert]]
  eingearbeitet (neue Tabelle + Quellenverweis + History-Eintrag).
- Register aktualisiert: `wiki/wissensluecken.md` (D11 → erledigt), `training/curriculum.md`
  (Stand Run 31), `raw/_INGESTED.md` (neue Quelle ZIW-Reihe).
- Bewertungsordner erneut geprueft: kein neuer JANS-Bewertungsfall (weiterhin 4 bekannte:
  Thalwil 9568, Ebmatingen 3932, Wangen 8855, Langnau 3338). Langnau-BZO-Revision per Web
  bestaetigt unveraendert (kantonale Vorpruefung/Auflage Fruehjahr 2026, Festsetzung erst
  Fruehjahr 2027 — weiterhin nicht rechtskraeftig, keine Aenderung an [[az-gfz-kennwerte]] noetig).
- **Vierte Meldung an Raphael:** die Oberrieden-Hoehenkorrektur (Rule `auto-verbesserungen`
  260624 nennt faelschlich 9.0 m traufseitig; amtlich seit Run 27 belegt sind 8.5 m traufseitig)
  ist weiterhin nicht korrigiert.
- Report: `outputs/2026-07-14_training-run31.md`.

## 2026-07-14 — Training-Run 30: Delta-Check (dritter Trigger desselben Tages)

- Dritter Trigger am selben Tag (nach Run 28, 00:38 Uhr, und Run 29, 04:51 Uhr), erneut ausserhalb
  der Sollfrequenz (Rule 260713: 1x taeglich 02:50). Kurzer Delta-Check: Bewertungsordner
  unveraendert (kein neuer Fall), Marktanker unveraendert (SNB 0.00 %/Referenzzins 1.25 %/
  Durchschnittszinssatz 1.31 % seit 31.03.2026), D6-Restposten Langnau weiterhin blockiert.
  Oberrieden-Hoehenkorrektur-Erinnerung (Rule 260624) zum dritten Mal protokolliert. Kein Ingest,
  keine Wiki-Aenderung.
- Neu vermerkt: die Haeufung von drei Triggern an einem Tag deutet auf eine Ueberlappung von
  Scheduled Task und VOLLGAS-Runner hin — Empfehlung, die Trigger-Quellen zu pruefen.
- Report: `outputs/2026-07-14_training-run30.md`.

## 2026-07-14 — Training-Run 29: Delta-Check (Zusatz-Trigger 4 Std. nach Run 28)

- Zusaetzlicher Scheduled-Task-Trigger ausserhalb der Soll-Frequenz (Rule 260713: 1x taeglich
  02:50; dieser Lauf 04:51). Kurzer Delta-Check statt vollem 10-Themen-Zyklus: Bewertungsordner
  unveraendert (kein neuer Fall), Marktanker unveraendert (SNB 0.00 %/Referenzzins 1.25 %),
  D6-Restposten Langnau weiterhin blockiert. Kein Ingest, keine Wiki-Aenderung.
- Report: `outputs/2026-07-14_training-run29.md`.

## 2026-07-14 — Training-Run 28: schlanker Beobachtungslauf (Rule 260713 Drosselung)

- Kein neuer Ingest: Bewertungsordner geprueft (kein neuer JANS-Fall seit Wangen 8855),
  Marktpuls-Web-Check (SNB 0.00 %/Referenzzins 1.25 % beide unveraendert seit Run 17), D6-
  Restposten Langnau weiterhin blockiert (Revision 2026/27 nicht rechtskraeftig).
- **Wiederholter Hinweis an Raphael:** Rule `auto-verbesserungen` 260624 (Oberrieden-Beispiel
  «9.0 m traufseitig») ist gemaess Run-27-Befund amtlich falsch (8.5 m traufseitig) — Korrektur
  liegt ausserhalb des KB-Mandats, daher hier zum zweiten Mal protokolliert statt selbst
  editiert.
- Report: `outputs/2026-07-14_training-run28.md`. Dieser Loop bleibt gemaess Rule 260713 auf
  Minimalfrequenz (1x taeglich), solange kein neues Rohmaterial oder ein neuer Bewertungsfall
  vorliegt.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): Querbezug zu KB grobkosten
- [link] `residualwertmethode.md`: Querbezug-Block → grobkosten `kennwerte` (kanonische CHF/m³-GV-Kennwerte) inkl. E1-Faktor (0.70 Regelgeschoss / 0.60–0.61 Gesamtgebaeude). Keine Kennwert-Widersprueche (Paar immobilienbewertung↔grobkosten: 0). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Training-Run 27: D6 breit ausgebaut — 8 JANS-Bezugsmärkte via Workflow-Fan-out

- **[[az-gfz-kennwerte]] erweitert von 11 auf 19 Gemeinden.** Multi-Agent-Workflow (8 parallele
  Extraktions-Agenten, Workflow-Autorisierung Rule 260712c; alle 8 `obtainable=true`, 0 Fehler)
  zog je die amtliche BZO-Grundmasse der Wohnzonen: **Niederhasli** (BZO 2024, IVHB, in Kraft
  08.08.2025), **Oberrieden** (BZO 2013/Stand 26.01.2026), **Kilchberg** (BZO 2012/14/15),
  **Horgen** (BZO 2011/16 TR 2021/23), **Küsnacht** (Stand 2019), **Meilen** (BZO 2020 IVHB),
  **Adliswil** (BZO 1995/Stand 2024), **Richterswil** (Stand 2023). Alle mit exakter Quelle
  (Artikel + URL), nichts geraten.
- **Zwei materielle Befunde:** (1) **Niederhasli** (IVHB-Totalrevision 2024) hat die Dichte-
  Kennziffern in den Wohnzonen **ganz abgeschafft** — kein AZ/BMZ/ÜZ, reine Hüllensteuerung
  (Fassadenhöhe + Gebäudemasse + Grünflächenziffer). Das ist eine **vierte Steuerungslogik**;
  die Bezugsgrössen-Tabelle wurde von drei auf vier Modi erweitert. (2) **Oberrieden-Höhen-
  korrektur:** amtlich 8.5 m traufseitig / 13.0 m giebelseitig / 9.0 m Flachdach — die
  Altannahme «9.0 m traufseitig» in Rule `auto-verbesserungen` 260624 ist falsch. **Flag an
  Raphael:** das illustrative Beispiel in Rule 260624 korrigieren (8.5 m trauf statt 9.0 m).
- **Register gepflegt:** INDEX, wissensluecken (D6-Zeile + Section-B + Erledigt), _INGESTED
  (externe amtliche Quellen), curriculum (Stand Run 27). Marktpuls (E7) unverändert (SNB
  0.00 %/Referenzzins 1.25 %), kein neuer JANS-Bewertungsfall. Report:
  `outputs/2026-07-13_training-run27.md`.
- **Kernlektion:** die in Run 23 als «Grossrecherche nötig, nicht in einem Trainingslauf
  leistbar» abgetane D6-Ader ist per Workflow-Fan-out (ein Agent je Gemeinde) effizient
  batchweise zu schliessen — Vorlage für künftige belegpflichtige Batch-Extraktionen.

## 2026-07-13 — Training-Run 26: D6 weiter geschlossen — Muri-AG-Revision 2018/19 + Zollikon bestaetigt

- **[[az-gfz-kennwerte]] aktualisiert:** **Muri AG** von Stand 31.10.2012 auf die **Revision
  2018/2019** (BNO vom 21.06.2018, RRB-genehmigt 27.02.2019) umgestellt — Quelle ist ein
  Bild-PDF ohne Textebene (`pdftotext` liefert 0 Zeichen), **erstmals visuell via Read-Tool
  gelesen statt per OCR/Textschicht**. Ergebnis: die Ausnuetzung wurde deutlich erhoeht
  (W1 0.30→0.35, W2 0.40→0.45, W3 0.50→0.60, WG3 0.60→0.70) und eine neue Hochdichte-Zone
  **W3+ (AZ 0.8, 5 Vollgeschosse, 18 m Gesamthoehe)** eingefuehrt; System von Gebaeudehoehe/
  Firsthoehe auf **Gesamthoehe** (IVHB) umgestellt. Kernzone Bruehl (KB) wurde von der
  Gemeindeversammlung **teilzurueckgewiesen** und ist nicht in Kraft — als Vorbehalt vermerkt.
- **Zollikon bestaetigt aktuell gueltig:** die zitierte 1996-Fassung ist mit dem offiziell
  gefuehrten **Stand 5.4.2013** (konsolidierter Neudruck 19.02.2024, `zollikon.ch/_doc/4980595`,
  echte Textebene) materiell **wertidentisch** — kein stiller Rechtsverlust. Neu erfasst:
  **Zentrumszone (Art. 11)**, BMZ max. 2.70 Flachdach/2.80 Schraegdach, Gebaeudehoehe 13.5 m.
  Eine vom Gemeinderat am 20.08.2025 beschlossene **Teilrevision** ist der Gemeindeversammlung
  vorgelegt (Infoveranstaltung 05.11.2025), aber **noch nicht in Kraft** — Wiedervorlage nach
  Beschluss.
- **Langnau am Albis:** Zeitplan der BZO 2026/27 gegengeprueft, unveraendert bestaetigt
  (kantonale Vorpruefung/oeffentliche Auflage Fruehjahr 2026, Inkraftsetzung Fruehjahr 2027).
- Register gepflegt: `wissensluecken.md` (D6 von "substanziell" auf "weitgehend geschlossen",
  9 von 11 Gemeinden aktuell), `INDEX.md`, `curriculum.md` (Run-26-Stand + Methoden-Lektion:
  Bild-PDFs kuenftig per Read-Tool visuell statt nur per `pdftotext` pruefen).
- Kein neuer JANS-Bewertungsfall (Bewertungsordner erneut geprueft, weiterhin Wangen 8855 der
  juengste Fall seit Run 6). Marktpuls (E7) erneut unveraendert seit Run 17 (SNB 0.00 %,
  Referenzzins 1.25 %, naechster Publikationstermin 01.09.2026).
- Report: `outputs/2026-07-13_training-run26.md`.

## 2026-07-13 — Training-Run 25: D6 substanziell geschlossen — 7 weitere Gemeinden (Dichte-Kennwerte)

- **[[az-gfz-kennwerte]] massiv erweitert** um 7 Gemeinden, je direkt aus der amtlichen
  BZO/dem Baureglement extrahiert (`curl` + `pdftotext -layout` auf die amtliche PDF; bei
  Wangen SZ Spaltenzuordnung per Zeichenpositions-Alignment verifiziert, Kernzone als
  leftmost-Spalte erkannt):
  - **AZ (Ausnuetzungsziffer):** Maur ZH (nBZO 2023: W1 20/W2 35-45/W3 60 %), Regensdorf ZH
    (BZO 2020: W2A 27/W2B 35/W3 50 %), Wangen SZ (W1 0.25/W2 0.45/W3 0.55/W4 0.70, +GP-Werte),
    Muri AG (Stand 2012: W1 0.3/W2 0.4/W3 0.5).
  - **Baumassenziffer (m3/m2):** Zollikon ZH (BZO 1996: W 1.25-2.60, WG bis 2.90), Wald ZH
    (W 1.1-2.8, WG 2.0-2.8; Geschossaufteilung frei).
  - **Ueberbauungsziffer:** Einsiedeln SZ (Baureglement 2025: W1/W4 20/W2 28/W3 24 %).
  - **Luzern (Stadt):** anderes System — Wohnzonen A-F nach Gesamthoehe + Ueberbauungsziffer
    je Zonenplan-Ordnungsnummer; als System-Beschrieb erfasst, Per-Zonenwerte offen.
  - **Langnau am Albis:** BZO 2005 ausser Kraft (Revision 2026/27), kein in-Kraft-PDF —
    als Status-/Vorbehalt-Eintrag erfasst (JANS-Fall 2621 Giebelweg).
- **Kernbefund (neu):** die Gemeinden regeln Dichte ueber DREI nicht ineinander umrechenbare
  Kennziffern (AZ / Baumassenziffer / Ueberbauungsziffer). Artikel erhielt Uebersichtstabelle
  + explizite Warnung, dass zonenuebergreifende Vergleiche nur bei gleicher Bezugsgroesse
  zulaessig sind; Artikel-Titel/Frontmatter entsprechend generalisiert.
- Register gepflegt: `wissensluecken.md` (D6 auf «niedrig»/substanziell geschlossen, Tabelle B),
  `INDEX.md` (Eintrag aktualisiert), Backlinks `[[az-gfz-kennwerte]]` in 8 Gemeinde-Fact-Sheets
  (zollikon/maur/regensdorf/wald/wangen/einsiedeln/muri/luzern).
- Kein neuer JANS-Bewertungsfall (Bewertungsordner-Stand seit Run 6). Marktpuls unveraendert
  seit Run 17 (kein neuer Publikationstermin, naechster ab 01.09.2026).
- Report: `outputs/2026-07-13_training-run25.md`.

## 2026-07-13 — Training-Run 24: D6-Sackgasse durchbrochen — AZ/GFZ-Kennwerte Thalwil + Waedenswil

- **Neuer Wiki-Artikel [[az-gfz-kennwerte]]:** amtliche Ausnuetzungsziffer-Tabellen
  (Art. 3 Grundmasse) fuer Thalwil (W1-WG4, AZ 30-70 %, inkl. reale vs. statutarische
  AZ +48-82 %) und Waedenswil (W2/30%-WG5/85%, AZ 30-85 %, inkl. Behindertenwohnen-
  Bonus) direkt aus den amtlichen BZO-PDFs extrahiert (`pdftotext -layout` auf den
  lokal zwischengespeicherten WebFetch-Anhang, da WebFetch selbst bei diesen PDFs nur
  Binaerdaten zurueckgibt).
- **Korrektur der Run-23-Einschaetzung:** D6 war als "Grossrecherche noetig, nicht in
  einem Trainingslauf zu leisten" eingestuft. Praxistest zeigt: pro Gemeinde ist es ein
  einzelner, gut handhabbarer Fetch+Extraktions-Schritt — die Grossrecherche liegt im
  Umfang (11 Gemeinden), nicht in der Methode. D6 damit von "Bring-Schuld Raphael" auf
  "D/T, Methode erprobt, 9 Gemeinden offen" neu eingestuft.
- Kein neuer JANS-Bewertungsfall (Bewertungsordner erneut geprueft). Marktpuls
  unveraendert seit Run 17 (kein neuer Publikationstermin) — kein Web-Check noetig.
- Register gepflegt: `wissensluecken.md` (D6-Zeile + Tabelle B), `INDEX.md` (neuer
  Eintrag), Backlinks in `zh-thalwil-8800.md` + `zh-waedenswil-8820.md`.
- Report: `outputs/2026-07-13_training-run24.md`.

## 2026-07-13 — Training-Run 23: sechste Bestaetigung ohne neue Erkenntnis, kein Ingest

- **Kein neuer Ingest, keine neue Verifikation.** Statt eine der fuenf bereits bestandenen
  Verifikationen zu wiederholen, drei konkrete Kandidaten geprueft: (1) Bewertungsordner
  direkt gelistet — kein neuer JANS-Fall seit Wangen 8855 (09.06.); (2) D6 (AZ/GFZ-Kennwerte)
  gegen `wissen/baurecht/wiki/nutzungsziffern.md` geprueft — nur Rechtssystematik, keine
  kompilierte Zonen-Kennwerttabelle vorhanden, hub-weite Suche findet nur duenne
  Einzelwerte (SZ Landhauszone 0.2, Basel-Wettbewerbsfaelle) → D6 bleibt offen, nicht
  erfunden; (3) Marktpuls-Web-Check — SNB 0.00 % und Referenzzins 1.25 % weiterhin
  unveraendert (sechster Check in Folge ohne neuen Wert, naechste Publikation 01.09.2026).
- Report: `outputs/2026-07-13_training-run23.md`. Empfehlung an Raphael verschaerft:
  D6 als eigene Recherche-Grossaufgabe auslagern oder Takt fuer diese KB auf reine
  Marktpuls-Checks reduzieren, bis neues Material/ein neuer Fall eintrifft.

## 2026-07-13 — Training-Run 22: Verifikations-Pass Erfolgsfaktoren + Schwamendingen + Neuwert-Tabellen (Modell D)

- **Fuenfter Lauf in Folge im Verifikations-Modus.** Kein neuer Ingest — drei Komplexe per
  Modell-D-Volltext-Gegenlesung gegen die Original-PDFs geprueft (die beiden von Run 20
  benannten Kandidaten plus ein dritter, selbst identifizierter Komplex).
- **Nachgeprueft & exakt reproduziert:**
  1. DXMA-Aufwertungsgewinn-Tabelle (10 Zeilen, S. 7) + vier Baurecht-Fallbeispiele
     (Breitensteinstrasse, Stampfenbachstrasse, Fabrikstrasse, S. 10/12/14/15) gegen die
     Original-DXMA-Folien → [[erfolgsfaktoren-wettbewerb]].
  2. Schwamendingen-Nutzermix-Quoten (Hortus Conclusus/Low-Tech-Siedlung/Patchwork City,
     S. 138-145) + Wohnungsgroessen + Mietzinseinschaetzung gegen die Original-Wuest-Folien →
     [[nutzungskonzepte]]. Neu ergaenzt: Hortus-Conclusus-Referenzprojekt (reale «Vertikale
     Gartenstadt», Penzel Valier/Robertneun, 1. Rang Studienauftrag 2020).
  3. Tab. 2 (Neuwert-Richtwerte Bauklasse I-VI, EFH/MFH + Grossgewerbe/Industrie) + Tab. 3
     (BKP-Anteile MFH-mittlerer-Standard Baujahr 1985) aus dem Schaetzungsanleitungs-Anhang
     Kapitel 5 → [[realwert-sachwert]].
- **Verdikt:** alle drei Komplexe bestanden, keine Korrektur. Alle drei Artikel bleiben
  `established`, `last_updated` auf 2026-07-13 gesetzt.
- **Zusatzbefund:** der Zuercher Index der Wohnbaukosten (Tab. 4 im selben Anhang) endet im
  Quelldokument bei 01.04.2004 = 907.6 — reicht nicht bis 2026. D11 (m3-Richtwerte aufindexieren)
  bleibt offen; eine aktuelle Fortsetzung der Indexreihe muss separat beschafft werden.
- Bewertungsordner geprueft: weiterhin kein neuer JANS-Fall seit Run 6 (Wangen 8855, 09.06.).
  Marktpuls nicht erneut geprueft (unveraendert seit Run 17, kein neuer Publikationstermin).
- **Befund:** damit sind saemtliche von den Runs 18-21 identifizierten Verifikations-Kandidaten
  abgearbeitet; kein weiterer auto-schliessbarer Kandidat identifiziert. Empfehlung Ruecktaktung
  ins Nachtfenster zum fuenften Mal in Folge, jetzt mit Nachdruck — der Loop erzeugt ohne neues
  Rohmaterial (D1/D2/D5/D6/D7/D9/D10/D11) oder einen neuen JANS-Fall keinen weiteren
  Erkenntnisgewinn mehr.

## 2026-07-13 — Training-Run 21: Verifikations-Pass Nutzungskonzeptions-Kennzahlen S. 123-133 (Modell D)

- **Vierter Lauf in Folge im Verifikations-Modus.** Kein neuer Ingest — Modell-D-Volltext-
  Gegenlesung des Zielgruppensegmentierungs-/Nutzermix-Blocks (Wuest-Kurs S. 123-133) gegen die
  Originalfolien; im Run-20-Report als naechster Verifikations-Kandidat angekuendigt.
- **Nachgeprueft & exakt reproduziert:** Sinus-Milieu-Kennzahlen (Arrivierte 9 % / Ø 47 J / >9'000
  CHF, Postmaterielle 13 % / Ø 45 J / 6'000+, Performer 11 % / Ø 39 J / 9'000+), Best-Ager
  (55-75 / 2.5-4.5 Zi), Expats (Ø 44.2 J / 82 % / 7 Typen, InterNations 2018), Aktive Familien
  (40-50 % / 3.5-5.5 Zi / 30-45 J / ~2 Kinder), Nutzermix Wohnen (20-30/40-50/30-40 %) und
  Geschaeftsflaechen (65/25/10 %). Alle deckungsgleich mit den Folien.
- **Verdikt:** bestanden, keine Korrektur. [[nutzungskonzepte]] bleibt `established`,
  `last_updated` auf 2026-07-13.
- **Anreicherung:** Milieuzugehoerigkeit der Aktiven Familien (Buergerliche Mitte 35 /
  Buergerlich-Gehobene 25 / Adaptiv-Pragmatische 25 / Postmaterielle 15 %) neu in
  [[nutzungskonzepte]] erfasst (war bisher nicht dokumentiert).
- **Leitplanke gewahrt:** die feingliedrige Sinus-Verteilungstabelle (Ingenbohl/Innerschweiz/
  Kt. SZ/Schweiz, Foliennr. 51) ist nur approximativ lesbar → nur qualitativer Befund erfasst
  (Ingenbohl: Adaptiv-Pragmatische + Buergerliche Mitte ueber-, Postmaterielle/Performer/
  Konsumorientierte Basis unterrepraesentiert), keine unsicheren Dezimalwerte uebernommen.
- **Marktpuls (E7) nicht erneut geprueft** — unveraendert seit Run 17 (2026-07-12), kein neuer
  Publikationstermin erreicht.
- **Register gepflegt:** curriculum.md (Stand Run 21), wissensluecken.md (B-Tabelle + Erledigt),
  outputs/2026-07-13_training-run21.md.
- **Empfehlung:** Ruecktaktung ins Nachtfenster zum **vierten Mal in Folge** — vier Verifikations-
  laeufe ohne materiellen Befund; auto-schliessbare Rueckstaende seit Run 16 abgearbeitet.

## 2026-07-13 — Training-Run 20: Verifikations-Pass Lehrstueck «hoeherer Ertrag ≠ hoeherer Landwert» (Modell D)

- **Dritter Lauf in Folge im Verifikations-Modus.** Kein neuer Ingest — Modell-D-Volltext-
  Recompute des Landwert-Lehrstuecks (Wuest-Kurs S. 153-155, in [[residualwertmethode]] seit
  Run 9 dokumentiert, bisher nicht gegen die Original-Folie nachgerechnet).
- **Drei Varianten-Zeilen nachgerechnet:** Office-Homes (Ertragswert 39'845'000 − Erstellung
  30'500'000 = 9'345'000 ≈ 9.3 Mio ✓), Perlenhaeuser (39'249'000 − 29'900'000 = 9'349'000 ≈
  9.3-9.4 Mio, Tabellenwert 9.4 Mio auf Rundungsgrenze), Best-Ager-Community (38'981'000 −
  33'200'000 = 5'781'000 ≈ 5.8 Mio ✓). Formel Landwert = Ertragswert − Erstellung reproduziert
  sich durchgehend.
- **Zusatz-Plausi:** CHF/m2-GSF-Kennwert (880/880/550) impliziert fuer alle drei Varianten ein
  konsistentes Grundstueck (~10.5-10.7k m2 GSF) — bestaetigt die im Lehrstueck vorausgesetzte
  Vergleichbarkeit «gleiches Grundstueck, unterschiedliche Konzepte».
- **Verdikt:** bestanden, keine Korrektur. [[residualwertmethode]] bleibt `established`,
  `last_updated` auf 2026-07-13.
- **Marktpuls (E7) nicht erneut geprueft** — unveraendert seit Run 17 (2026-07-12), kein neuer
  Publikationstermin erreicht; ein taeglicher Web-Check hat keinen Grenznutzen.
- **Empfehlung an Raphael (zum dritten Mal in Folge):** Ruecktaktung des Loops ins Nachtfenster.
  Drei Verifikationslaeufe ohne Befund/Korrektur deuten auf sinkenden Grenznutzen der
  Intensivphase fuer diese spezifische KB hin.
- [edit] [[residualwertmethode]] — Verifikations-Sektion zum Lehrstueck, `last_updated`.
- [edit] `wiki/wissensluecken.md`, `training/curriculum.md` — Run-20-Verifikationsstand.
- [output] `outputs/2026-07-13_training-run20.md`.

## 2026-07-12 — Training-Run 19: Verifikations-Pass Ertragswert-/Residualwert-Kennwerte (Modell D)

- **Zweiter Lauf im Verifikations-Modus** (Fortsetzung Run 18). Kein neuer Ingest — haertet die
  am haeufigsten reproduzierten Rechenwege per **Volltext-Recompute**.
- **Herosé-Annuitaeten** (1'820'000 Hotellerie-Taxe / 253'200 Pflege-Abschreibung): Standard-
  Kapitalwiedergewinnungsformel PMT=P·i/(1−(1+i)^−N) trifft beide auf ≤0.04 % — praeziser als
  die zunaechst nahegelegte lineare-Abschreibung-+-Durchschnittszins-Lesart (Abw. ~1.1 %).
  Formel-Beschreibung in [[ertragswert-dcf]] praezisiert.
- **DXMA-A4-Rechenbeispiel** (Ertragswert Miete/STWE, Investition, Landwert): vollstaendig
  nachgerechnet, bestanden bis auf Rundung. Fund: **BKP-2-Kosten rechnen auf aGF (810 m2), nicht
  auf GF (1'050 m2)** — bisher nicht explizit; jetzt in [[residualwertmethode]] klargestellt.
  DXMA-«80 %-Aufschlag» = BKP2/0.8 (abweichend von der 85 %-Regel des Wuest-Hauptschemas, zwei
  belegte Quellen-Konventionen).
- **Barwert-Verlust-Tabelle** (Wuest-Kurs S. 69): 5 %/10 %-Zeilen bestehen (≤1 Pp Abweichung),
  3 %-Zeile weicht wachsend ab (1.4 Pp bei 10 J → 4.2 Pp bei 50 J) → ⚠-Vermerk in
  [[ertragswert-dcf]], Status bleibt established.
- **Verdikt:** keine neue Luecke, keine Herabstufung. Beide Artikel bleiben `established`,
  `last_updated` auf 2026-07-12.
- [edit] [[ertragswert-dcf]] — Annuitaetenformel-Praezisierung, Barwert-Verlust-⚠-Vermerk,
  `last_updated`, «Offen»-Sektion.
- [edit] [[residualwertmethode]] — DXMA-Recompute-Sektion, aGF/GF-Klarstellung, `last_updated`,
  «Offen»-Sektion.
- [edit] `wiki/wissensluecken.md`, `raw/_INGESTED.md`, `training/curriculum.md`, `wiki/INDEX.md`
  — Run-19-Verifikationsstand.
- [output] `outputs/2026-07-12_training-run19.md`.

## 2026-07-12 — Wissens-Chef Run 1 Nachtrag: E1 entschieden (HNF/GF-Faktor kontextabhaengig)
- [entscheid] Fachentscheid E1 (Raphael 12.07.2026) Hub-weit verankert: Gesamtgebaeude 0.60–0.61 (m²↔m³-Bruecke), Regelgeschoss 0.70. In realwert-sachwert.md als Entscheid-Box gesetzt; grobkosten verweist hierher. Der Faktor war in dieser KB bereits latent beidseitig genutzt (Z.96 /0.70 Geschoss, Z.156 0.61 Gesamtgebaeude).

## 2026-07-12 — Training-Run 18: Verifikations-Pass Healthcare-Kennwerte (Modell D)

- **Erster Lauf im Verifikations-Modus** (PFLICHT-Stufe ab 12.07., Rule auto-verbesserungen 260712).
  Kein neuer Ingest — der auto-schliessbare Rueckstand ist seit Run 16 abgearbeitet, Run 17 war
  Marktpuls. Dieser Lauf haertet die meistgenutzten Kennwerte per **Volltext-Recompute** (BKP2 ÷
  Flaeche/Zimmer gegen die Quell-Zahlen).
- **Bestanden:** Herose-Einzelanker (BKP2/GF 3'848, /GV 1'105, /Zimmer 346'681 — exakt); JANS-Wohn-
  Kennwert-Kette (2'900×1.16=3'365 → /0.75=4'485 → HNF 7'350, rundungsgenau); 6 von 8 Heim-Objekten
  der 8-Objekt-Tabelle (Dankensberg/Trotte/Herose/Lanzeln/Mathysweg/St.Anna, CHF/m2 GF **und** CHF/m3 GV);
  USZ-BKP-Teilsumme plausibel; CHF/Pflegezimmer als 24-m2-normiert bestaetigt.
- **Beanstandet:** Averecura (Tab. 4'250/1'420 vs. recompute 3'981/1'285) + Vella-Zeile (BKP2 24.5 Mio ÷
  7'150 = 3'427 ≠ Tab. 2'835) → quellenintern inkonsistente Roh-Zeilen im Original-Blatt → neue Luecke
  **D10** (Bring-Schuld Blatt-Bereinigung). Zusaetzlich neue Luecke **D11** (m3-Richtwerte 2003
  aufindexieren — Index-Faktor 2003→2026 fehlt, nicht geraten).
- **Verdikt:** tragende Kennwerte bleiben `established`; Neubau-Band **~3'800-4'500 CHF/m2 GF**
  (teuerungsbereinigt) unveraendert, reproduzierbarer Rohband praezisiert auf **2'623-3'981**.
- [edit] [[realwert-sachwert]] — `last_updated` 07-10→07-12; m3-2003-Flag → D11 verlinkt; Verifikations-
  Verdikt in «Offen / zu vertiefen»; die bestehende (dangling) Run-18-Notiz jetzt durch unabhaengigen
  Recompute belegt + D10-Verweis aufgeloest.
- [edit] `wiki/wissensluecken.md` — D10 + D11 in Tabelle A; B-Sektion auf Verifikations-Modus; Run-18-
  Erledigt-Eintrag; Ruecktaktungs-Empfehlung.
- [edit] `raw/_INGESTED.md`, `training/curriculum.md`, `wiki/INDEX.md` — Run-18-Verifikationsstand.
- [output] `outputs/2026-07-12_training-run18.md`.
- **Empfehlung:** Ruecktaktung des Loops ins Nachtfenster (auto-schliessbarer Rueckstand abgearbeitet;
  naechstes externes Signal ab 01.09.2026). Entscheid Raphael, nicht stillschweigend umgesetzt.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Kennwerte-Bruecke zu grobkosten
- [link] [[realwert-sachwert]] -> `grobkosten/wiki/kennwerte` als fuehrende m3-GV-Grobkennwerte-DB (Ankerwert ~1'020 CHF/m3 GV Wohnbau ZH). Bezugsbasis-Warnung ergaenzt (Ausbaustandard-Tabelle S.37 vs. Dimensions-Median = verschiedene Wuest-Produkte).
- [offen] m2->m3-Faktor-Diskrepanz (grobkosten 0.70 vs. hier 0.60-0.61) -> heikler Fachentscheid Raphael (siehe koordination-Report).

## 2026-07-12 — Training-Run 17: Auffrischungslauf Marktpuls (keine offene Luecke)

- **Reiner Aktualisierungslauf** — alle auto-schliessbaren Luecken sind seit Run 16 zu; verbleibend
  nur D5 (Bring-Schuld Raphael). Keine neue Quelle ingestiert.
- **Bewertungsordner geprueft** (`IMMO-01/01 BEWERTUNG PROJEKTE`): **kein neuer JANS-Bewertungsfall**
  seit Run 6 (juengster Ordner Wangen 8855, 09.06.2026) → keine neue reale Fallauswertung.
- **Marktpuls-Web-Check (12.07.2026):** alle Zins-/Preis-Anker **unveraendert** — SNB-Leitzins 0.00 %
  (Entscheid 19.06.2026; Inflation 0.1 % Feb → 0.6 % Mai, erdoelgetrieben; BIP ~1 % 2026 / ~1.5 % 2027),
  Referenzzins 1.25 % (BWO, naechste Publ. 01.09.2026), SMG/Homegate-Mietindex Mai-2026 133.7 (+2.5 % YoY),
  BFS-Baupreisindex April-2026 100.6 (+1.0 % YoY), UBS SREBI Q1-2026 0.69 «moderat» (Q2 noch nicht publ.),
  WP-Sommerprognose 2026 Wohneigentum ~+3 % (EFH +3.1 % / ETW +2.8 %).
- **Einziger neuer Detailwert:** massgebender **Durchschnittszinssatz per 31.03.2026 = 1.31 %** (von
  1.32 % per 31.12.2025) → driftet weiter weg von der Erhoehungsschwelle 1.37 %; Risiko einer
  Referenzzins-Erhoehung auf 1.50 % sinkt weiter.
- **`wiki/investorenmarkt-makro.md`** (07-12, established): Durchschnittszinssatz-Update in der
  Referenzzins-Marktpuls-Sektion + Run-17-Logeintrag + Frontmatter-Quelle/last_updated 07-10→07-12.
- Register gepflegt: `raw/_INGESTED.md` (Run-17-Stand-Block), `training/curriculum.md` (E7 ✓ 07-12),
  `wiki/wissensluecken.md` (Run-17-Erledigt-Zeile), `outputs/2026-07-12_training-run17.md`.

## 2026-07-10 — Training-Run 16: D8 geschlossen — JANS-Kennwerte-DOCX + Healthcare-Umbaukosten

- **D8 geschlossen** (die letzte auto-schliessbare Daten-Luecke): Wie schon bei den `.xlsx`-Tools
  (Run 15) sind auch die als freigabegebunden angenommenen Kennwerte-**DOCX** TCC-lesbar
  (unzip + XML-Parser). Drei bisher ungelesene JANS-DOCX aus `IMMO-06 Kennwerte` ingestiert.
  10 Themen dieses Laufs: (1) aGF/GF-Umrechnungsfaktor, (2) JANS-Wohn-Erstellungskosten-Kennwert
  EFH/ZFH indexiert, (3) BKP2→BKP1-5-Herleitung + TG-Ansatz, (4) Thalwil-Bohlweg-Rechenbeispiel +
  HNF-Faktor, (5) Healthcare-Spitalumbau-Kostenband CHF/m2 NF, (6) realer Fall Psychiatrie-Teilumbau,
  (7) realer Fall Kispi ZH Paediatrie, (8) `_Kennwerte_Links.docx` Quellenverzeichnis, (9) Emilienheim-
  Gap-Bestaetigung, (10) Marktpuls-Web-Check.
- **`wiki/flaechendefinitionen-sia.md`** (07-10, established): neuer **JANS-Umrechnungsfaktor aGF ↔ GF**
  (Altbau **0.8** / Neubau **0.9**) in der aGF/BGF-Abgrenzungssektion — Faustwert, um aus der
  baurechtlich anrechenbaren Flaeche die geometrische GF fuer Volumen-/Kostenrechnung abzuleiten.
  Frontmatter last_updated 07-06→07-10, Quelle `_Kennwerte Jans.docx` ergaenzt.
- **`wiki/realwert-sachwert.md`** (07-10, established): zwei neue Sektionen. (a) **«JANS-Erstellungskosten-
  Kennwert Wohnen (EFH/ZFH)»** — belegte indexierte Herleitung Median 2020 2'900 → 2025 **3'365 CHF/m2
  GF BKP 2** (Index 116) → BKP2=75 % → **4'485 CHF/m2 GF BKP 1-5**; TG **42'000 CHF/SP**; Worked example
  Thalwil Bohlweg 1 (950 m2 GF → 4.6 Mio inkl. TG; **HNF-Faktor 7'350 CHF/m2 HNF BKP 1-5**). Aktueller
  datierter JANS-Ansatzwert, ergaenzt die WP-Benchmarks (Stand 2021-2023). (b) **«Healthcare-Umbau-
  Kostenband (JANS Spektrumskosten, CHF/m2 NF)»** — 6-stufiges Spitalumbau-Band (Buero→Praxis 2'000-3'000
  bis OP-Station ab 10'000) + 2 reale JANS-Einordnungsfaelle (Psychiatrie-Teilumbau ~1'100/m2 HNF →
  Zielkorridor 1'800-2'500; Kispi ZH Paediatrie 4'412/m2 NF). Trennt Umbau (NF) sauber vom Neubau (GF).
  Frontmatter + Offen-Log aktualisiert.
- **`wiki/datenquellen-registry.md`** (07-10, established): `_Kennwerte Jans.docx` + Healthcare-Umbaukosten
  von «offen/DOCX» auf **eingearbeitet**; neue Zeile **`_Kennwerte_Links.docx`** (JANS-Quellen-Linkliste,
  in die Nutzungsregel gespiegelt). Healthcare-Zeile auf «Neubau- UND Umbaukennwerte belegt».
- **`wiki/investorenmarkt-makro.md`** (07-10, established): **Marktpuls-Web-Check Run 16** — alle Anker
  unveraendert (SNB-Leitzins 0.00 %, Referenzzins 1.25 %, SARON 0.78 %, Festhypothek 5 J ab 1.11 %/10 J
  ab 1.41 %, Mietindex Mai-2026 133.7 +2.5 % YoY, Baupreisindex April-2026 100.6). Kein neuer
  Publikationstermin seit Run 15.
- **Register:** `raw/_INGESTED.md` (3 DOCX-Zeilen + Stand-Run-16-Block), `wiki/wissensluecken.md`
  (D8 durchgestrichen/erledigt + Emilienheim-Gap bestaetigt nicht verfuegbar; nur noch D5 offen),
  `training/curriculum.md` (E5 ✓ vollstaendig), `wiki/INDEX.md` (realwert-sachwert + flaechendefinitionen-sia).
  Lern-Report `outputs/2026-07-10_training-run16.md`.
- **Status:** Alle T-Aufgaben, der Wuest-Kurs, alle lesbaren E-Quellen, **D4 und D8** eingearbeitet.
  Offen nur noch **D5** (buerospezifische Margen-/Finanzierungspraxis — echte Bring-Schuld Raphael,
  nicht durch den Loop schliessbar) + laufender Marktpuls (naechste Publikationen 01.09.2026).

## 2026-07-08 — Training-Run 15: D4 geschlossen — Excel-Residualwert-Tools reverse-engineered

- **D4 geschlossen** (die letzte hoch-priorisierte Daten-/Formel-Luecke): Die vier Residualwert-
  Excel-Tools (`05 Residualwert/Exel Tabelle/{wp,jans}/`, je Pre-Check + «Residualwert Berechnung»)
  wurden per **unzip + XML-Zellparser** auf Zellebene ausgelesen. Der SharePoint-Pfad ist entgegen
  der Freigabe-Annahme TCC-lesbar (keine Freigabe noetig). 10 Themen dieses Laufs: (1-2) WP
  Pre-Check-Engine + Residualwert-Kette, (3) HNF-Herleitung ohne Grundrisse, (4) Betriebskosten-
  Parameterset, (5) Diskont-Empfehlungen, (6) Gewerbe-5.5-%-Regel, (7) JANS-Kalibrierungs-Delta,
  (8) Sensitivitaets-Formel = CS-Break-Even-Generator, (9) JANS- vs WP-Vergleich, (10) Marktpuls.
- **`wiki/residualwertmethode.md`** (07-08, established): neue Sektion **«Excel-Tool Formel-Logik
  (D4 — reverse-engineered aus den Zellen)»** — zwei Tool-Familien dokumentiert. Einblatt-Tool
  «Residualwert Berechnung»: JANS = **formel- und default-identisch mit WP** (nur Kopfzelle). Belegte
  Rechenkette Soll-Ertrag→Nettoertrag→Ertragswert(=Nettoertrag/Diskont)→Residualwert−Abzuege→Wert
  n. Fertigstellung/Brutto-/Nettorendite; Defaults Diskont 2.5 %/Risiko 7 %/Betriebsk. 5 %/Leerstand
  1 %/IH 13/IS 21 CHF-m2HNF/Zeitwert 2 %×3 J; **Gewerbe-Miete = 5.5 % der Erstellungskosten**.
  Pre-Check-Tool: **«AZ-HNF Tool»-Engine leitet HNF ohne Grundrisse aus einer Planungsziffer ab**
  (HNF = GF − VF − KF − FF − NNF; Effizienz-Ampel KF/GF 0.18/0.23/0.30; Kompaktheit 1-5; Skalen-/
  Kostenniveau-Faktoren 0.9-2.1; Hochhausfaktor 1.1). **JANS-Kalibrierung = genau 2 Zellen** (Risiko
  7 %→12 %, Diskont 2.4 %→2.45 %). Sensitivitaets-Zellformel bestaetigt den T18-Break-Even-Generator.
  Frontmatter last_updated 06-10→07-08; «Offen»/Tool-Bullet aktualisiert (D4 ✓).
- **`wiki/ertragswert-dcf.md`** (07-08, established): neue Diskont-/Risiko-Kalibrierungs-Notiz (D4
  vollstaendig geschlossen) — JANS-Pre-Check-Defaults 12 %/2.45 % vs WP 7 %/2.4 % vs gelebte Praxis
  8 %/2.70 %; Ertragswert = Nettoertrag/Diskontierung aus Zellen bestaetigt. last_updated 07-06→07-08.
- **`wiki/investorenmarkt-makro.md`** (07-08, established): **Marktpuls-Web-Check Run 15** —
  SNB-Leitzins 0.00 % + Referenzzins 1.25 % unveraendert (BWO-Bestaetigung 02.03.2026, erwartet bis
  Ende 2026 / keine Aenderung vor Mitte 2027). **Neu: BFS-Baupreisindex auf Basis Okt-2025 = 100
  umgestellt, erster Stand April 2026 = 100.6 (+1.0 % YoY)** → Bauteuerung moderat. last_updated
  07-04→07-08; Baupreisindex-Zeile + Marktpuls-Log + Quellen ergaenzt.
- **Register:** `raw/_INGESTED.md` (4 XLSX offen→eingearbeitet + Stand-Run-15-Block), `wiki/
  wissensluecken.md` (D4 durchgestrichen/erledigt + Erledigt-Eintrag), `training/curriculum.md`
  (E2 ✓), `wiki/INDEX.md` (residualwertmethode-Zeile). Lern-Report `outputs/2026-07-08_training-run15.md`.
- **Status:** Alle T-Aufgaben, der Wuest-Kurs, alle lesbaren E-Quellen **und D4** eingearbeitet.
  Offen nur noch: D5 (buerospezifische Margen-/Finanzierungspraxis, Bring-Schuld Raphael), D8
  (JANS-Kennwerte-DOCX, Freigabe), Emilienheim-Flaechenkennwerte, laufender Marktpuls.

## 2026-07-06 — Training-Run 14: T19 geschlossen — JANS-Healthcare-Kennwert-Raster befuellt

- **T19 geschlossen** (die letzte offene T-Aufgabe). Drei bisher ungelesene Quellen aus der
  Healthcare-/WALD-Bibliothek ingestiert und synthetisiert: JANS' eigenes gefuelltes **8-Objekt-
  Referenzblatt** «Kennwerte Altersheime Gesundheitszentren» (8 reale CH-Heime 2011-2025), die
  **WALD-Tertianum-Baumassenberechnung** (Richtprojekt, V1-V7) und die **SECO/USI-Effizienzstudie
  Crivelli/Filippini/Lunati 2001** (835 CH-Pflegeheime).
- **`wiki/projektstruktur-deliverables.md`** (07-06, established): T19-Raster-Bullet von
  «Arbeitsstand/leer» auf **befuellt** — Wirtschaftlichkeitsfaktoren-Tabelle (Bettzahl 28-123,
  **GF/Bett 90-135 m2** sinkend mit Groesse, **NF/Bett 51-71 m2**, **Bauvolumen/HNF 4.3-9.7**), die
  3 Fragestellungen belegt beantwortet (**optimale Betriebsgroesse 70-80 Betten**, SE = 1 bei 79;
  Schwelle ~50; normale Groesse Median 52/Ø 62), Referenzobjekte identifiziert (Wald = Averecura
  28 PZ; Szenarios = Baumassen V1-V7).
- **`wiki/realwert-sachwert.md`** (07-06, established): Healthcare-Kostenband von 1 (Herosé) auf
  **8 reale Objekte** verbreitert — neue Tabelle mit **BKP 2 = 2'623-4'250 CHF/m2 GF (indexiert
  3'042-4'485), 826-1'420 CHF/m3 GV, 273'000-780'000 CHF/PZ**; Healthcare-Neubauansatz auf
  **~3'850-4'500 CHF/m2 GF** praezisiert.
- **`wiki/flaechendefinitionen-sia.md`** (07-06, established): neue Sektion **JANS-Flaechenfaktoren
  Healthcare** — HNF/GF **~0.43-0.61 (Ø ~0.55)**, GF/Baumasse ~0.29-0.33, Bauvolumen/HNF 4.3-9.7;
  belegt aus dem 8-Objekt-Set, kontrastiert mit Wohnen (0.60-0.75).
- **`wiki/ertragswert-dcf.md`** (07-06, established): Betriebsgroessen-/Skaleneffizienz-Befund
  (Crivelli 2001) in die Healthcare-Ertragsseite eingewoben (Optimum 70-80 Betten, ~50 % zu klein →
  Tragfaehigkeitsrisiko bei knappen Margen).
- **Register:** `_INGESTED.md` (3 neue Quellen + Stand Run 14), `wissensluecken.md` (T19 → Erledigt,
  **keine offenen T-Aufgaben mehr**), `curriculum.md` (E10 ✓ + E7-Marktpuls 07-06), `INDEX.md`
  (4 Artikelbeschreibungen). Marktpuls-Web-Check: SNB 0.00 % / Referenzzins 1.25 % **unveraendert**
  (naechste Publikationstermine erst 09.2026).
- **Ausblick:** Loop weiter im Aktualisierungs-/Vertiefungs-Modus. Naechste Kandidaten bei Freigabe:
  D4 (`.xlsx`-Tool-Formeln), D8 (JANS-Kennwerte-DOCX), Emilienheim-Flaechenkennwerte; sonst Marktpuls.

## 2026-07-04 — Training-Run 13: Healthcare-Vertiefung — T17 vollstaendig geschlossen (Investoren-Markt-Seite)

- **T17 vollstaendig geschlossen** (Kosten- UND Investoren-Markt-Seite). Grosser Healthcare-
  Vertiefungslauf: sieben bisher ungelesene oeffentliche/Dritt-Quellen aus der Healthcare-Bibliothek
  + CRB-Marktpreise + Web, parallel via vier Lese-Agenten distilliert, zentral synthetisiert.
- **`wiki/ertragswert-dcf.md`** (07-04, established): (1) neue Sektion **Healthcare-Investoren-Markt-
  Diskont** aus **SenioResidenz AG GB 2017** (reiner Healthcare-Immobilien-Investor, WP-DCF): Marktwert
  21.75 Mio / Soll-Miete 1.145 Mio → **impliziter Brutto-Yield ~5.3 %** (Healthcare ~2 Pp ueber Wohnbau),
  Belehnung 40-60 %; angewandter Diskontsatz im Bericht nicht beziffert (unsicher). (2) Neue Sektion
  **Pflegeplatzkosten-Struktur** (BFS «Indikatoren Pflegeheime 2019-2021»: 10'035 CHF/Mt, Ertrag
  Pension 55 %/Pflege 43 %, Belegung 90 %, 60 % defizitaer; NZZ/Curaviva: Pension 4'124/KVG-Pflege
  4'401/Betreuung 1'529 CHF/Mt — nur Hotellerie speist die Liegenschaft). (3) **D3-Healthcare-Zeile**
  von *emerging* auf **belegt** gehoben. (4) **Gewerbe-Feinabstufung** je Mietersegment (Segment-
  Reihenfolge belegt aus WP-2026-Prognose Buero +0.5 %/Detailhandel −1.5 %) — D3-Rest praezisiert.
- **`wiki/investorenmarkt-makro.md`** (07-04, established): neue Sektion **Healthcare-Immobiliennachfrage
  (Obsan 03/2022)** — Pflegebett-Bedarf +69.2 %/**+54'335 Betten bis 2040** (~+921 Heime), 80+ +88 %,
  strukturelle Angebotsluecke (+600 Ist vs. +2'587 Soll Betten/J), Kosten-BIP-Anteil verdoppelt
  (3.4-4.8 % bis 2045/50). Marktpuls-Web-Check 07.2026: **alle Zins-Anker unveraendert**; neu WP-2026-
  Segment-Prognose Geschaeftsflaechen.
- **`wiki/realwert-sachwert.md`** (07-04, established): neue Sektion **Healthcare-Kostenband erweitert
  auf Spital** — CRB werk-material (Frauenklinik KSL 3'426 / USZ-Mehrzweckbau 3'767 CHF/m2 GF +
  BKP-Aufgliederung USZ, Preisstand 2020.04 Ostschweiz). Healthcare-Neubau-Kostenband **~3'400-3'850+
  CHF/m2 GF** (Pflegeheim unten, Spital oben).
- **`wiki/projektstruktur-deliverables.md`** (07-04): Healthcare-Bruecke auf **T17 geschlossen**
  erweitert (Investoren-Marktwert SenioResidenz, Operating-Benchmarks BFS, **JANS-Kennwert-Raster 2411**
  als Arbeitsstand + realer ZH-Fall Emilienheim Kilchberg).
- **Register:** `raw/_INGESTED.md` (7 neue Quellen-Zeilen + Stand Run 13), `curriculum.md` (E9
  Healthcare vollstaendig, E7 Marktpuls), `wissensluecken.md` (T17 → Erledigt; neue Aufgabe **T19**
  JANS-Kennwert-Raster befuellen), `INDEX.md` (4 Deskriptoren). Output `outputs/2026-07-04_training-run13.md`.

## 2026-07-02 — Training-Run 12: Healthcare-Bewertungsbruecke (T17 belegt) + Health-Check-Cleanup

- **T17 (Healthcare-Bewertungsfall) auf der Kosten-/Annuitaetsseite geschlossen** ueber die bisher
  ungelesene, oeffentliche Healthcare-Bibliothek (`IMMO-06/Healthcare/HEIM`; nicht D8-freigabe-
  gebunden, da Dritt-/oeffentliche Dokumente): der **Baukredit-Bericht Neubau Pflegeheim Herosé
  Aarau** (Stadtrat Aarau, Botschaft GV 2018-2021/285, 13.12.2021, 116 Zimmer, 55.8 Mio).
- **`wiki/realwert-sachwert.md`** (07-02, established): neue Sektion **Healthcare-Neubau-
  Erstellungskosten-Benchmark** — BKP-Zusammenstellung (55.8 Mio), Kennwerte BKP 2 = **1'105 CHF/m3
  GV / 3'848 CHF/m2 GF / 346'681 CHF/Zimmer**, **Vier-Heim-Vergleich** (Herosé/Suhrhard/Blumenrain
  Zollikon/Obere Muehle Lenzburg: 337-418k CHF/Zimmer, Taxe 150-180). Bestaetigt Healthcare-Zuschlag
  +20-25 % (~3'850-4'000 CHF/m2 GF).
- **`wiki/ertragswert-dcf.md`** (07-02, established): neue Sektion **Healthcare-Ertragsmodell — realer
  CH-Fall Herosé** — kostenbasiertes Taxensystem, **Annuitaets-Finanzierung** (lineare Abschreibung
  **33 J** nach CURAVIVA Handbuch Anlagebuchhaltung V2019, kalk. Zins = **BWO-Referenzzins 1.25 %**),
  KVG-Abzug 6.812 Mio, Annuitaet/Bett/Tag 43.75+6.08, **Hotellerie-Taxe 120→153 CHF/Tag**,
  Spezialfinanzierung ueber Investitionsfonds, KoRe-Kostentraeger (ARTISET). Healthcare-Diskontzeile
  der D3-Tabelle: Kosten-/Annuitaetsseite **belegt** (statt *emerging*/Annahme), Investoren-Markt-
  Diskont bleibt offen.
- **`wiki/projektstruktur-deliverables.md`** (07-02): neue Sektion **Healthcare-Bewertung — Bruecke
  zum Skill `healthcare-wirtschaftlichkeit`** (drei durable Regeln: Erstellungskosten +20-25 %,
  kostenbasierter Ertragswert via Annuitaet, Deliverable ueber Schwester-Skill).
- **Run-11-Prozessleck nachgetragen** (Health-Check-Finding E): `ertragswert-dcf.md` `last_updated`
  30.06.→07-02, Run-11-Eintrag (10-j Eidgenoss 0.24-0.40 %) in der Offen-Sektion protokolliert,
  Output `outputs/2026-06-30_training-run11.md` angelegt.
- **Health-Check-Findings B/F bereinigt:** 2 falsche `[[Backlinks]]` → Klartext
  (`[[healthcare-wirtschaftlichkeit]]`→Skill in `zh-wald-8636`; `[[outputs/…]]`→Report in
  `sz-wangen-8854`); Frontmatter vereinheitlicht (`zh-thalwil` `plz: 8136`→**8800**; `kanton:`
  Zuerich→**Zürich** in langnau/zollikon); INDEX `nutzungskonzepte` *emerging*→**established**.
- **Marktpuls (Web, 02.07.):** alle Anker unveraendert — SNB 0.00 %, Referenzzins 1.25 % (naechste
  Publ. 01.09.2026), Mietindex Mai-2026 133.7 (+2.5 % YoY), 10-j Eidgenoss ~0.35 %. → [[investorenmarkt-makro]].
- Register: `raw/_INGESTED.md` (2 neue Quellen + Stand Run 12), `curriculum.md` (E9 Healthcare ✓,
  E7 Marktpuls), `wissensluecken.md` (T17 reframed + Erledigt), `datenquellen-registry.md` (Healthcare-
  Zeile), `INDEX.md` (Deskriptoren). Output `outputs/2026-07-02_training-run12.md`.

## 2026-06-30 — Training-Run 11: Marktpuls 10-j Eidgenoss (nachtraeglich protokolliert)

- **`wiki/ertragswert-dcf.md`**: risikofreies Basisniveau der JANS-Diskontsatz-Tabelle (D3) auf
  **10-j Eidgenoss 0.24-0.40 % (Juni 2026, Ende Juni sinkend auf 0.24 %)** aktualisiert (Web,
  tradingeconomics/SNB-Datenportal). **Prozessleck:** Run 11 fuehrte `last_updated`/CHANGELOG/Output
  nicht nach (vom Health-Check 01.07. gemeldet, Finding E) — **nachtraeglich mit Run 12 protokolliert**
  (dieser Eintrag + `outputs/2026-06-30_training-run11.md`). Kein weiterer inhaltlicher Edit.

## 2026-07-01 — Wissens-Health-Check (Phase 1, unbeaufsichtigt)

- Audit A-G ueber 26 Wiki-Artikel + Outputs + `_INGESTED`/`training`. Befund: gesunde, sehr gut
  belegte KB (kein ß, keine Deko-Symbole, Quellenpflicht + Stand durchgaengig, keine Orphans,
  INDEX vollstaendig). 3 echte Findings: (1) **Run 11 vom 30.06. hat `ertragswert-dcf.md`
  editiert, aber `last_updated`/CHANGELOG/Output nicht nachgefuehrt** (Prozessleck wie Run 7);
  (2) **2 formal falsche `[[Backlinks]]`** — `[[healthcare-wirtschaftlichkeit]]` (Skill, in
  `zh-wald-8636`) + `[[outputs/2026-06-09_...]]` (in `sz-wangen-8854`); (3) minor Frontmatter-
  Inkonsistenzen (`kanton:` Zuerich/Zürich, Thalwil `plz: 8136` statt 8800; `nutzungskonzepte`
  INDEX *emerging* vs. Frontmatter *established*). Keine Aktionen ausgefuehrt (Phase 2 offen).
  Report: `outputs/2026-07-01_health-check.md`.

## 2026-06-28 — Training-Run 10: drei ungelesene Quellen ingestiert (D3-Wohnbau-Faustregel belegt + SIA 416 normverankert)

- **`wiki/ertragswert-dcf.md`** (06-28, established): zwei neue belegte Sektionen aus Raphaels
  datierter Notiz `231231_Residualwert und Diskontierung.docx` (31.12.2023) — **JANS-Diskontsatz-
  Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung** (schliesst die Wohnbau-Faustregel
  von D3), **Betriebskosten-Pauschale 2.5 %=5x0.5 %** (Verwaltung/Versicherung/Versorgung,
  Instandhaltung, Instandsetzung, Leerstand, Liegenschaftssteuer), belegte **Rechenkaskade**
  Residualwert←Ertragswert←Nettoertrag←Mietertrag (worked example Einsiedeln 287 CHF/m2 × 300 m2)
  + **Abzinsungsformel** W0=Wn/(1+i)^N. Aus `Disskontierung.docx` neue Sektion **Healthcare-
  Diskontsatz-Anker** (Pflege 4-8 %, JANS-Arbeitsnotiz, sauber als nominal/europaeisch eingeordnet)
  → Healthcare-Zeile der konsolidierten Tabelle von *speculative* auf *emerging*.
- **`wiki/flaechendefinitionen-sia.md`** (06-28, established): **vollstaendig auf die kanonische
  SIA-416:2003-Norm verankert** (Quelle: Norm-PDF S. 6-15) — Hierarchie GSF/GF/NGF/NF/HNF/NNF/VF/FF/
  KF/AGF mit Codier-Ziffern + normgetreue Definitionen, Wohnungsbau-Beispiele NNF/VF/FF, Volumen
  GV/NGV/KV/AKV (GV ohne Zu-/Abzuege, Bezug CHF/m3-Kennwerte), Miet-/STWE-Flaechen FSN/FGN (Bruecke
  `stockwerkeigentum`) und die wichtige **Abgrenzung Norm 0.1**: aGF/BGF (Ausnuetzung), Baumassen-
  Volumen und Energiebezugsflaeche sind **keine** SIA-416-Begriffe, sondern baurechtlich/energetisch.
- Kursnotizen IMG_7064-67 ausgewertet (Anfangsrendite=Mietertrag/Kaufpreis, 30 % Landanteil /
  8 % Risikomarge, WP-Pre-Check-Tool-Layout als D4-Teilbeleg ohne Zahlen).
- Register: `raw/_INGESTED.md` (drei Quellen → eingearbeitet, Stand Run 10), `curriculum.md`
  (neu E8 ✓), `wissensluecken.md` (D3 → «niedrig», Erledigt-Eintrag), `INDEX.md` (Deskriptoren),
  Output `outputs/2026-06-28_training-run10.md`. Marktpuls unveraendert seit Run 9 (06-26).

## 2026-06-26 — Training-Run 9: JANS-Diskontsatz-Tabelle konsolidiert (D3 T-Teil) + Marktpuls

- **`wiki/ertragswert-dcf.md`** (06-26, → established): neue Sektion **JANS-Diskontsatz-Tabelle (D3
  konsolidiert)** — alle bisher verstreuten Diskontsatz-Anker (WP S. 52/55, Risikozuschlagsmodell
  S. 54, JANS-Konvention 2.50/2.70 %) zu **einer** additiven Bottom-up-Herleitung zusammengefuehrt:
  risikofreier Basiszins **10-j Eidgenoss ~0.35 % (Juni 2026, Web)** + Illiquiditaets-/Lage-/
  Objektzuschlag, gegen den WP-top-down-Satz plausibilisiert (beide Wege → gleiche Bandbreite).
  Konsolidierte Tabelle je Nutzung/Lage (Wohnen 2.1-3.3 %, Gewerbe 2.7-3.8 %, Healthcare
  ~3.0-4.0 % *Annahme*) + **Real-vs-nominal-Bruecke (Fisher**, Langfrist-Teuerung ~1.0 % → nominal
  ~3.1-4.3 % Wohnen) + Sensitivitaets-Leitplanke −20 Bps → +16 %. Belegte Zeilen abschliessend; die
  JANS-Faustregeln (Illiquiditaets-/Objektzuschlag, Gewerbe-Feinabstufung, Healthcare-Zuschlag)
  bleiben als *Annahme* markierte Bring-Schuld (Healthcare → T17).
- **`wiki/investorenmarkt-makro.md`** (06-26): Marktpuls-Refresh — **Rendite 10-j Bundesobligation
  ~0.32-0.40 % (Juni 2026)** neu als risikofreies Basisniveau erfasst; Web-Check bestaetigt
  **SNB-Leitzins 0.00 % (19.06) + Referenzzins 1.25 %** unveraendert gegenueber Run 8.
- Register: `wissensluecken.md` (D3 T-Teil ✓, D3 von «D/T hoch» auf «D mittel» zurueckgestuft),
  `curriculum.md` (E7 laufend Run 9), `raw/_INGESTED.md` (Stand Run 9), Output
  `outputs/2026-06-26_training-run9.md`.

## 2026-06-22 — Training-Run 8: CS-Sensitivitaets-Generator formalisiert (T18) + Mietpuls 05.2026

- **`wiki/projektstruktur-deliverables.md`** (06-22, → established): neue Sektion **CS-Sensitivitaets-
  Generator (T18)** — die Niederhasli-Zwei-Modell-Tabelle als **ein verallgemeinertes Rechen-Schema**
  formalisiert: `Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]` mit Ertrags-/Kosten-Elastizitaet α/β und
  **geschlossener Break-Even-Formel `δ* = (K0−E0)/(E0·α−K0·β)`**. Uebertragen auf vier Werttreiber
  (Ausnuetzung/Mietzins α1β0 → δ\*=−M0; Leerstand; Baukosten α0β1 → γ\*=+M0/(1−M0)). Aus den
  Niederhasli-Ist-Zahlen rechnerisch validiert: **BE_A = −8.1 % (= −M0) bestaetigt; BE_B auf −11.6 %
  praezisiert** (frueher per Auge ~−13 %); **effektive Kosten-Elastizitaet β ≈ 0.33** (nicht 0.30,
  «70/30» ist gerundet). Tornado-Sensitivitaet `dM/dδ=(1−M0)(α−β)`, Modellwahl-Regel A/B =
  RW-`tief`/`hoch`, 3-Zeilen-Rezept fuer neues CS. CS-Glossar um die Generator-Formel ergaenzt.
- **`wiki/investorenmarkt-makro.md`** (06-22): Mietpuls-Refresh — **SMG/Homegate-Mietindex Mai 2026
  133.7 (+2.5 % YoY)**, realisierte Mieten ueber der +0.7-%-Prognose; Gesamtjahr 2025 +2.3 %; Hotspot
  Stadt Luzern +7.2 %. Web-Check bestaetigt Referenzzins 1.25 % stabil + SREBI Q1-2026 0.69 als
  aktuellen Anker (gegenueber Run 7 unveraendert).
- Register: `wissensluecken.md` (T18 ✓), `curriculum.md` (E7 laufend Run 8; Run 7 nachgetragen),
  `_INGESTED.md` (T18-Formalisierung vermerkt). Report: `outputs/2026-06-22_training-run8.md`.

## 2026-06-20 — Training-Run 7: Marktpuls 06.2026 + Diskontsatz-Methodik (T10/D3) [Report nachgetragen]

Run 7 lief am 20.06.2026, editierte zwei Artikel und wurde per `nas-selfcommit` gesichert, hinterliess
aber **keinen Output-Report und keinen CHANGELOG-Eintrag** — hier nachgetragen (Run 8):

- **`wiki/investorenmarkt-makro.md`** (06-20): Marktpuls 06.2026 — **SNB-Lagebeurteilung 18.06.2026
  Leitzins 0.00 % gehalten** (Inflation 0.6 % Mai, erdoelgetrieben/Kerninflation verhalten, BIP
  ~1 %/~1.5 %); **Referenzzins per 01.06.2026 bei 1.25 % bestaetigt** — der befuerchtete Sprung auf
  1.50 % ist NICHT eingetreten (Durchschnittssatz unter Schwelle 1.37 %); **WP-Prognose 2026**
  (Transaktionspreise EW +2.8 % / EFH +3.1 %, Bauinvestitionen +5.3 %); SREBI Q2-2026 noch nicht publiziert.
- **`wiki/ertragswert-dcf.md`** (06-20, D3-Teilantwort): **Diskontsatz-Methodik der Bewertungshaeuser**
  (gemeindespezifisch aus Transaktionen + Plausibilisierung ueber 10-j Bundesobligation, IAZI/WP) +
  **Marktkontext 2026** (SNB 0 % / Referenzzins 1.25 % → WP-2023-Diskontanker bleiben plausibel, eher
  unteres Band). Offen bleibt die vollstaendige JANS-Tabelle je Nutzung/Lage/Risiko (Bring-Schuld D3).

## 2026-06-18 — Training-Run 6: CS- und LB-Deliverable-Methodik aus realen Faellen (T15/T16/T10)

- **`wiki/projektstruktur-deliverables.md`** (06-18): drei neue Methodik-Sektionen aus realen
  Deliverables — **CS Controlling & Sensitivitaet** (Niederhasli, 250811): Controlling-Factsheet-
  Felderschema (Plausibilitaets-Check einer Fremdstudie) + **Sensitivitaetsanalyse mit Zwei-
  Kostenmodell-Logik** (A fix / B 70/30, Δ Ausnuetzung 0/−10/−20 % → Marge + Break-Even ~−8 %/−13 %)
  + Fazit/Empfehlung; **«Bestand halten vs. Abbruch+Neubau»** (Langnau 3338): Vergleichswert-Bestand
  ↔ Residual-Landwert, BMZ-Deckelung; **«Renditeobjekt-Kaufpreispruefung»** (Wangen): Ertragswert-
  Band + impl. Bruttorendite-Pruefung. CS-Kuerzel-Glossar geschaerft.
- **`wiki/ertragswert-dcf.md`** (06-18): **Ertragswert-Band ueber 3 Kapitalisierungssaetze**
  (4.75/5.00/5.25 %) + **Kaufpreispruefung** (Angebot → impl. Bruttorendite vs. 4.5-%-Schwelle →
  Verhandlungsrichtung) + **Ausbau-/Umnutzungs-Rendite-Impact** (Mietuplift kapitalisiert vs.
  Investition; STWE-Einzelverkauf als Hebel; Grob-KV Umbau = Neubau-Median × Umbau-Anteil + SIA-102-
  Honorar-Grobansatz) — alles aus LB Wangen Bahnhofstr. 27.
- **`wiki/vergleichswert-hedonisch.md`** (06-18): **Entscheidlogik Bestand halten vs. Abbruch**
  (A Bestandeswert hedonisch ↔ B Entwicklungs-Landwert residual; volumengedeckelte BMZ-Zone),
  belegt aus LB Langnau; Datenquelle Popety.io bei fehlendem UBS-FS.
- **`wiki/investorenmarkt-makro.md`** (06-18): **Marktpuls-Update** — UBS SREBI **Q1-2026 0.69**
  «moderat» (Hotspots GR/Einsiedeln/Stadt ZH/Nidwalden, loest Q4-25-Anker 0.48 ab); Referenzzins-
  **Durchschnittssatz 1.31 % nahe Erhoehungsschwelle 1.37 %** → moegliche Trendwende auf 1.50 %.
- Register gepflegt: `_INGESTED.md` (6 Faelle ausgewertet, E6 vollstaendig), `curriculum.md`
  (E6 ✓ vollstaendig, E7 laufend), `wissensluecken.md` (T15 ✓, T16 teilweise ✓; neu T17 Healthcare-
  Bruecke, T18 CS-Generator). Befund: kein Healthcare-Bewertungsfall im Bewertungsordner.
- Report: `outputs/2026-06-18_training-run6.md`.

## 2026-06-16 — Training-Run 5: reale JANS-Faelle quantitativ ausgewertet (T9b/T7b/T10/D4)

- **`wiki/projektstruktur-deliverables.md`** (→ established, 06-16): **Quantitative Kennwert-
  Benchmark-Tabelle** aus 3 ausgewerteten Faellen (Thalwil 9568 LB+MA, Ebmatingen 3932 LB,
  Wangen 2622) — HNF-Faktor (57-80 %), ME/STWE-Kaufpreis-Quantil je Lage, Erstellungskosten
  (CHF/HNF, CHF/m3), Residualer Landwert, ROE-Befund; dazu **MA-Wertanker-Synthese** (4 Boden-
  wert-Anker Residualwert/UBS-FS-Mittel/UBS-FS-Top → Marktwert + Entwicklergewinn-Gegenrechnung).
- **`wiki/ertragswert-dcf.md`** (06-16): **JANS-Bewertungskonvention** belegt — Kapitalisierung
  Mietobjekt 2.50 %/40 J, Diskontierung Residualwert 2.70 %, Risiko/Gewinn 8 %, Baukosten-
  abschlag −5 %, Bruttoanfangsrendite-Schwelle 4.5 % (Geschaeft 5.5 %), ROE-Ampel; **Residual-
  wert-Tool-Struktur** reverse-engineered aus MA Thalwil S. 9 (adressiert D4 teilweise).
- **`wiki/vergleichswert-hedonisch.md`** (06-16): **T7b** Zu-/Abschlagslogik Median → Objekt
  als 6-Schritt-Checkliste + JANS-Quantil-Praxisanker (Premium Q90 / Schnitt Q50-60, Bauland
  nach Lageklasse Schlecht/Mittel/Top).
- **`wiki/investorenmarkt-makro.md`** (06-16): **Marktpuls 06.2026** — Angebotsmieten 2026
  +0.7 % (nach +6 % 2024), Bestandesmieten −0.8 %, UBS SREBI Q4-2025 0.48 «moderat» (staerkster
  Quartalsanstieg seit 1989), EFH +4.1 % YoY, BFS Baupreisindex Okt-2025 116.2.
- **`wiki/realwert-sachwert.md`** (→ established, 06-16): Baupreisindex-2025-Update + JANS-
  Praxisbeleg (WP-S.37-Kennwerttabelle = gelebter JANS-Kostenkennwert, MA Thalwil 6'000/HNF).
- Register gepflegt: `_INGESTED.md` (3 Faelle ausgewertet), `curriculum.md` (E6 weitgehend,
  E7 fortgeschritten), `wissensluecken.md` (T9b/T7b ✓, T10/D4 teilweise; neu T15/T16).
- Report: `outputs/2026-06-16_training-run5.md`.

## 2026-06-15 — UBS-FS Langnau am Albis 8135 (12/2025) kompiliert

- **Neu `wiki/marktdaten-gemeinden/zh-langnau-am-albis-8135.md`** — UBS Real Estate Local
  Fact Sheet Langnau am Albis (ZH), 12/2025, Daten 2025-Q3. EFH-Median 12'549 CHF/m²
  (~1.27x Kt. ZH), EW-Median 11'358, Mietmedian 279 CHF/m²/Jahr, Bauland Top 4'451 CHF/m².
  MS Zimmerberg — Faktenbasis fuer **Fall 2621 Giebelweg 12** (FS liegt auch im Studienordner).
- README + INDEX ergaenzt; Zaehler auf **11 kompilierte UBS-FS**.
- Quelldatei in `IMMO - 02 UBSFS/` von doppelter Endung `.pdf.pdf` auf `.pdf` korrigiert.

## 2026-06-15 — Gutachten-Produkt «besser als WP» (Phase 1): Standard + Qualitaetsprofil + Aufnahmeblatt

- **Entscheid Raphael (2 Frage-Runden):** signiertes Experten-Gutachten mit Besichtigung, methodisch
  SVS/SVKG-konform, Datenbasis UBS-FS/Wüest-Benchmarks (aktiv) + Inserate-Proxy, alle 4 Objekttypen
  (Start EFH/EWG am Fall Bahnhofstrasse 27 Wangen), als ausgebauter Skill → DOCX/PDF. Benchmark:
  WP-Hedonic-Beispielbericht Langenthal (9 Seiten, vollständig analysiert).
- **Neu `wiki/svs-svkg-standard.md`** — Gutachten-Aufbau (11 Pflichtteile), Marktwert-Definition,
  Marktwertbereinigungen, Disclaimer/Haftung. **Wording-Regel verankert** (Methode statt SVKG-Titel;
  Dauerregel `rules/auto-verbesserungen.md` 260615).
- **Neu `wiki/qualitaetsprofil-raster.md`** — Standard/Zustand/Mikrolage-Skalen 1–5 aus dem WP-Bericht
  übernommen, aber durch Augenschein gefüllt; Sanierungsstau je Bauteil = Realwert-Abschlag.
- **Neu (Skill) `tools/aufnahmeblatt.md`** — iPhone-taugliches Besichtigungs-Aufnahmeblatt + Foto-Konvention.
- **Neu (Skill) `KONZEPT-WP-UEBERLEGEN.md`** — Pflichtenheft + Gap-Analyse WP vs. JANS + 4-Phasen-Bauplan.
- **SKILL.md** um Sektion «Gutachten-Standard & Besichtigung» ergänzt; INDEX neue Rubrik «Gutachten-Produkt».
- **Phase 2 Generator erledigt (15.06.2026):** `tools/build_gutachten.py` (JSON → DOCX, Titelblatt
  mit grosser Marktwert-Kennzahl, Qualitätsprofil-Balken 1–5, Tabellen, Glossar; venv
  `~/.venvs/jansdocx`, Baukasten `jans_docx.py`). **Pilot Wangen** durchgespielt: aktenbasierter
  Gutachten-Entwurf (4 S., Marktwert Halten 2.6–2.8 Mio) + Aufnahmeblatt-Formular (2 S.) gebaut,
  gerendert, im Projektordner 2622 + AI-Hub-Output abgelegt. Offen: Karten-Block via `geo-zh.mjs`;
  Finalisierung nach Besichtigung 19.06. (Ist-Mieten/GVA/KV) durch `korrektur`.

## 2026-06-14 — Training-Run 4: alle 10 UBS-FS + SREBI + Hedonik-Modellfamilie + JANS-Flächenfaktoren (10 Themen)

- **Alle 10 UBS Fact Sheets kompiliert** (E4/T7 abgeschlossen): 4 neue Gemeinde-Artikel
  `zh-thalwil-8800`, `ag-muri-5630`, `zh-regensdorf-8105`, `lu-luzern-6000` (Quantile EFH/EW/
  Miete/Bauland/Geschäft + Preis-Miet-Verhältnis, alle ⚠ > 18 Mt.) → `marktdaten-gemeinden/`;
  README + INDEX nachgeführt. Befund: Premium-Seelage ZH (Thalwil EFH-Median 15'384) ↔ ländlich
  (Muri AG 7'978) = Faktor ~2 allein über die Lage.
- **Hedonik-Modellfamilie belegt** (T7): Wüest/IAZI/Fahrländer/PriceHubble, Methodenkern
  (Regression, ~70 Kriterien, >20'000 Handänderungen/Jahr, UBS-Modell 1999 mit WP), Einsatz-
  grenze nur EFH/EW → `vergleichswert-hedonisch.md`.
- **UBS SREBI Bubble Index Q2-2024** (T14): Index 0.74 «moderat», 4 Perspektiven (Fundament
  1.73/Dynamik 0.17/Kosten 0.47/Umfeld -0.81), Methodik, regionale Ungleichgewichte (ZH/Genf/
  Lausanne/Zug) → `investorenmarkt-makro.md`.
- **Marktpuls 06.2026** (T10 teilweise): Referenzzinssatz 1.25 % (seit 09.2025), SNB-Leitzins
  0 % → `investorenmarkt-makro.md`. **Büromarkt ZH** (hbre/Savills 2024): Tertiär 500'000→580'000
  bis 2050, Serviced Offices → ebd.
- **JANS-Flächenfaktoren Wohnen** (T8): HNF/Baumasse 0.20, GF/Baumasse 0.33, HNF/GF 0.60 (ganzes
  Gebäude) / 0.75 (Regelgeschoss) + Wohnungsmix-Benchmark, aus Flächenkonzeption Wohnen
  (R. Jans 20.10.2024) → `flaechendefinitionen-sia.md` (Platzhalter «zu verifizieren» ersetzt).
- **Reale JANS-Bewertungsfälle** (T9): Referenz-Benchmark-Register (Thalwil 9568 LB+RW+MA,
  Ebmatingen 3932 LB+RW tief/hoch, Langnau/Wangen/Niederhasli) → `projektstruktur-deliverables.md`.
- Register: `_INGESTED.md`, `curriculum.md` (E4 ✓, E5/E6/E7 teilweise), `wissensluecken.md`
  (T7/T8/T9/T14 ✓, T10 teilweise), `INDEX.md`. Report `outputs/2026-06-14_training-run4.md`.

## 2026-06-12 — Training-Run 3: Mietwert-Korrektur + Gastgewerbe + Hedonik + 4 Marktblätter (10 Themen)

- **Schätzungsanleitung Kap. 5 vollständig erschlossen** (E3 abgeschlossen): Tab. 12
  Nutzflächen + Tab. 13 Raumeinheiten → `flaechendefinitionen-sia.md`; Tab. 14 (Punktesystem
  Wohnlage + Bauweise/Alter/Heizung) + Tab. 15 (Kriterienraster ±9 %) Mietwertberechnung sowie
  Tab. 25-28 Gastgewerbe-Umsatzmiete → `ertragswert-dcf.md` (T13 erledigt).
- **Hedonik-Methodik belegt** (E4/T7 teilweise): WP-Standortreport-Aufbau (Beispiel Langenthal
  21.06.2023 — Quantil-Preisspektren Wohnen/Geschäft, residualmodellierte Baulandpreise,
  Datengrundlagen-Anhang) + UBS-FS-Glossar-Methodik (Quantil-Definition, 11-Kriterien-
  Standort-Rating, BFS-Gemeindetypen, MS-Region, Datenquellen) → `vergleichswert-hedonisch.md`
  (emerging → **established**) + `marktdaten-gemeinden/README.md`.
- **4 neue Gemeinde-Marktblätter** (von 2 auf 6 Gemeinden): `zh-maur-8124` (7/2024),
  `zh-wald-8636` (12/2023, **Healthcare-Standort** 29.7 % Gesundheits-Beschäftigung →
  Projekt 2410), `zh-waedenswil-8820` (12/2023), `sz-einsiedeln-8840` (12/2023) — je
  vollständige Quantil-Tabellen EFH/EW/Miete/Bauland/Geschäft + Preis-Miet-Verhältnis. Alle
  mit ⚠ (Stand > 18 Mt.).
- `ertragswert-dcf.md` status established (Mietwert/Gastro); `INDEX` Statusbumps
  (ertragswert-dcf + vergleichswert-hedonisch → established) + 4 Gemeinden ergänzt.
- Register gepflegt: curriculum (E3 vollständig, E4 teilweise), _INGESTED (Schätzungsanleitung
  vollständig, Hedonik-Report + 6 UBS-FS eingearbeitet), wissensluecken (T13 ✓, T7 teilweise,
  neu T14 SREBI). Report `outputs/2026-06-12_training-run3.md`.

## 2026-06-10 — Training-Run 2: DXMA-Erfolgsfaktoren + Schaetzungsanleitung (10 Themen)

- Quellen vollstaendig eingearbeitet: **DXMA-Erfolgsfaktoren-Folien** (37 S., 06.2023) und
  **Schaetzungsanleitung Kap. 5** (Tabellen-Anhang). Damit ist Modul 4 des Wuest-Curriculums
  geschlossen (E1) und die zentrale Schaetzungs-Tabellenquelle erschlossen (E3).
- `erfolgsfaktoren-wettbewerb.md` neu aufgebaut (emerging → **established**): sechs DXMA-
  Faktoren (Baurecht/Nutzung/Baukosten/Mikrolage/Vermarktung/Bewertung), Aufwertungsgewinn-
  Prinzip («Gewinn liegt im Einkauf», Wissensasymmetrie) + 10 belegte Referenzfaelle,
  **AZ-Optimierungsformel** (UG/DG-Anrechnung, Split-Zone; Breitenstein/Stampfenbach/
  Fabrikstrasse), Baukosten-Effizienz (Pfaeffikon), Verweis A4-Bewertungsblatt.
- `lageklasse-landwertanteil.md` (speculative → **established**): Lageklassenschluessel
  Wohnen/Gewerbe (Tab. 6/7) + vollstaendige Landwertanteil-Tabelle LK→% (Tab. 8) — T5 erfuellt.
- `realwert-sachwert.md`: CHF/m3-Neuwert-Richtwerte Bauklasse I-VI (Tab. 2), BKP-Anteile
  (Tab. 3), Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter Tab. 10,
  Wertminderung Tab. 11) — T6 vollstaendig + T12 erfuellt.
- `residualwertmethode.md`: **DXMA-Marktwertschaetzung auf einem A4-Blatt** (5 Bloecke,
  belegtes Rechenbeispiel) als schlanke Operationalisierung eingearbeitet.
- `nutzungskonzepte.md`: DXMA-Fallbeispiele (MinMax, Ueber-Gaerten/volumenbasiert, Tiny
  Houses, RRR+RRR, performativ, Gotthardstrasse).
- `bewertungsverfahren-ueberblick.md`: Realwert-/Ertragswert-Gewichtung je Objektart
  (Tab. 22, Mittelwertmethode) — T11; `ertragswert-dcf.md`: Kapitalisierungssatz-Aufbau
  B/U/V/A/R (Tab. 21/23).
- Register gepflegt: INDEX, _INGESTED, curriculum (E1 ✓, E3 ✓), wissensluecken (T4/T5/T6/
  T11/T12 erledigt, neue Luecke T13 Mietkorrektur/Gastgewerbe). Report
  `outputs/2026-06-10_training-run2.md`.

## 2026-06-09 — Referenzfall Bahnhofstrasse 27 Wangen SZ bewertet (Compounding)

- Erster vollstaendig bewerteter JANS-Fall in der KB: gemischtes MFH Wangen SZ, Kaufpreispruefung
  3.1 Mio vs. Bankschaetzung 2.8 Mio → Marktwert JANS 2.6–2.8 Mio (3.1 als Renditekauf ~10 % zu hoch).
- Report `outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md` mit uebertragbaren Benchmarks:
  Brutto-Kapitalisierungssatz gemischtes MFH periphere SZ-Gemeinde ~5.0 %; Umbaukennwerte
  ~1'800 (leicht) / ~3'200 (mit Baueingabe) CHF/m² HNF; Honoraransaetze klein-Umbau ~10/15 %;
  Mietansaetze Wangen (Wohnen Altbau ~235–255, Gewerbe ~200 CHF/m²/J).
- `wiki/marktdaten-gemeinden/sz-wangen-8854.md`: "Anwendungshinweis (offen)" → "Referenzfall
  (bewertet)" mit verlinkten Kennwerten.
- Deliverable (A4 PDF im JANS-LB-Stil) im Projektordner AR-03 Studien/2622 + AI-Hub-Output.
- **Nachtrag:** Lageklasse-Befund (ÖREB Parz. 25): Objekt = **«Mittel»** (Bauland 2'702 CHF/m²,
  Bahnhof/zentral + ÖV vs. Laerm/ES III/kein Aussichtsbonus). In Report + Wangen-Marktblatt
  festgehalten; als Infopoint ins A4-Deliverable aufgenommen (Landwert 751×2'702 ≈ 2.03 Mio).

## 2026-06-09 — UBS Fact Sheets Wangen (SZ) + Zollikon (ZH) eingearbeitet

- Zwei neue UBS Real Estate Local Fact Sheets (12/2025, Daten 2025-Q3) aus
  `IMMO - 02 UBSFS` kompiliert und als maschinenlesbare Marktdaten-Blaetter abgelegt:
  - `wiki/marktdaten-gemeinden/sz-wangen-8854.md` (Wangen SZ, BFS 1349) — EFH-Median
    10'690, EW-Median 9'616, Miete-Median 265 CHF/m²/Jahr.
  - `wiki/marktdaten-gemeinden/zh-zollikon-8125.md` (Zollikon ZH, BFS 0161) — EFH-Median
    19'514, EW-Median 20'000, Miete-Median 388 CHF/m²/Jahr.
- Neuer Sammel-Index `wiki/marktdaten-gemeinden/README.md` (Lesehilfe UBS-FS-Spaltenlogik).
- `wiki/INDEX.md` um Sektion "Marktdaten Gemeinden" erweitert.
- `datenquellen-registry.md`: UBS-FS-Zeile auf 10 Gemeinden / Stand 2212-2512 aktualisiert,
  Verweis auf kompilierte Blaetter; **UBS Swiss Real Estate Bubble Index Q2-2024**
  (`srebi-q2-2024-de.pdf`) als Makro-Quelle neu registriert (Status offen).
- `raw/_INGESTED.md`: UBS-FS-Zeile auf "teilweise — Wangen/Zollikon eingearbeitet" gesetzt.
- Im Wangen-Blatt **Anwendungshinweis** zum erwarteten Folgefall *Bahnhofstrasse 27, Wangen
  SZ* (Plausibilisierung Verkaufspreis 3.1 Mio. vs. Bankschaetzung 2.8 Mio.) hinterlegt —
  Bewertung noch nicht durchgefuehrt.

## 2026-06-03 — KB angelegt (Seed aus IMMO-Sammlung)

- KB `immobilienbewertung` erstellt nach Meta-Schema (`wissen/WISSEN-CLAUDE.md`).
- `CLAUDE.md` (KB-Schema, Fokus-Bereiche, Quellen-Hierarchie) geschrieben.
- Struktur `raw/ wiki/ outputs/ training/` angelegt.
- **Seed-Artikel** im `wiki/` aus der ersten Sichtung der Ordner `IMMO - 01` bis
  `IMMO - 06` und der Wuest-Partner-Praesentation "Immobilien entwickeln" (21.06.2023,
  236 Seiten):
  - `bewertungsverfahren-ueberblick` (established)
  - `residualwertmethode` (established)
  - `ertragswert-dcf` (emerging)
  - `vergleichswert-hedonisch` (emerging)
  - `realwert-sachwert` (emerging)
  - `flaechendefinitionen-sia` (established)
  - `lageklasse-landwertanteil` (emerging)
  - `nutzungskonzepte` (emerging)
  - `investorenmarkt-makro` (emerging)
  - `erfolgsfaktoren-wettbewerb` (emerging)
  - `datenquellen-registry` (established)
  - `projektstruktur-deliverables` (established)
- `wiki/INDEX.md` und `wiki/wissensluecken.md` angelegt; 20+ Wissensluecken aus der
  Datenquellen-Pruefung erfasst (veraltete UBS-FS, CRB-OAK 2011, Bodenpreise nur als
  Screenshots, Ausnuetzungsziffer-Ordner leer, Diskontsatz-Herleitung undokumentiert,
  Excel-Residualwert-Logik nicht reverse-engineered).
- `training/PROGRAMM.md` (Lern-Loop alle 2 Tage, 10 Themen/Lauf) und
  `training/curriculum.md` (Lektionsplan aus dem 236-seitigen Wuest-Kurs) angelegt.
- `raw/_INGESTED.md` als Quellen-Register angelegt.

## 2026-06-10
- Referenzfall Bahnhofstrasse 27 Wangen SZ: Bankschaetzung von 2.8 auf **2.9 Mio** korrigiert
  (Quelle: Mail David Chaled 09.06.2026, PS im Thread «Bahnhofstrasse 27»). Kaufpreisempfehlung
  JANS 3.0 Mio ergaenzt. Datei: outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md
- Sitzungspraesentation 11.06.2026 (6 Folien, JANS-CI monochrom) erstellt; Ablage Studie 2622
  (02_Korrespondenz/260611_Sitzung Chaled) + AI Hub Output immobilienbewertung/2622-bahnhofstrasse-27
