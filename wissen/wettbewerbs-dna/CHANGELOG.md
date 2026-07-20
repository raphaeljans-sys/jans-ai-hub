# CHANGELOG — KB wettbewerbs-dna

## 2026-07-20 — Etappe 3, Baustein B6 Schulbau: Kennwert-Benchmark erstellt (`established`)
- **Neuer Artikel:** `wiki/muster/kennwerte-schulbauten.md` — Referenzbaender fuer
  Flaeche, Programm-Mengen, Kostendach und Vorpruefungs-Toleranzen im Schul-/Bildungsbau.
- **Methodik (Workflow-Fan-out, 49 Agenten):** 25 Quellen (19 externe Juryberichte +
  6 eigene JANS-Quellen aus 2102/2103/2206/2507), je 1 Extraktions-Agent (Sonnet,
  mechanisch) und 1 unabhaengiger Refuter-Agent (Hauptmodell) gegen den Rohtext.
  Bilanz: **436 Kennzahlen geprueft, 431 bestaetigt, 5 verworfen.**
- **Verworfen durch die Refuter:** zwei Spaltenverwechslungen in einer Layout-Tabelle
  (Grossaffoltern: «100 Stk» / «130 Stk» Parkplaetze waren m2-Werte — Nachweis ueber
  Zeichenposition der Spalte), eine Textangabe ohne Zahlwert (Sandgruben), eine nicht
  haltbare Turnhallentyp-Ableitung (Froeschmatt) und ein ungeklaerter Widerspruch im
  Original (Steffisburg, GF Aula EG doppelt belegt). Zahlreiche Fundstellen und Bezuege
  wurden korrigiert, u.a. «Kostendach» → «Zielkosten» (Hausen am Albis: der Text spricht
  ausschliesslich von Zielkosten).
- **Kernbefunde:** HNF/GF **0.52–0.54** aus zwei unabhaengigen Quellen (Kantonsschule
  Wattwil Programm-Soll 0.532, eigene SIA-416-Abgabe 2507 Halden Ist 0.528) — der
  tragfaehigste Kennwert des Laufs; Klassenzimmer **64–75 m2** (75 in zwei Programmen);
  **2 Klassenzimmer je Gruppenraum** (Sursee, Zelgli); **900-m2-GF-Schwelle je Geschoss**
  als brandschutzgetriebener Typologie-Treiber in zwei Kantonen (Muttenz BL, Steffisburg
  BE) — erklaert zahlenmaessig, warum in knappen Arealen der kompakte hoehere Solitaer
  gewinnt; Neubau **1.6–1.8 Mio. CHF je Klassenzimmer** (Sonderschule 2.5, Einzelfall).
- **Methodischer Beleg fuer die Kriterien-Rangordnung:** Die Kostenspreizung zwischen
  Finalisten (16 % Littau, 21 % Stoeckacker, 24 % Heilpaed. Bern) liegt in derselben
  Groessenordnung wie die Genauigkeitstoleranz der Vorpruefung (±20 %, zwei Quellen).
  Kosten koennen deshalb methodisch nicht ranggebend sein — quantitative Stuetze fuer
  These 3 in `muster/jury-argumente-schulbauten.md`.
- **Strukturbefund (negativ, aber wertvoll):** **CHF/m3 GV ist aus dieser Quellengattung
  nicht belegbar** — absolute GV-Werte in 1 von 25 Quellen; Juryberichte fuehren Kosten
  als Kostendach und Volumen nur relativ zur Machbarkeitsstudie. Bleibt bei
  `wissen/grobkosten/`; als Entscheid-Frage in QUESTIONS.md.
- **QUESTIONS.md:** drei neue offene Punkte (CHF/m3-Quellengattung mit Entscheid-Bedarf
  Raphael; GF-Widerspruch 2206 ARCHE 1'792 vs. 1'545 m2 → ARCHE bewusst NICHT ins Band
  aufgenommen; GV/GF-Kennwert auf nur einer Quelle).
- **Stand Etappe 3:** Schulbau B1–B4 und B6 erledigt, **B5 Parameter-Set offen**
  (naechster Lauf). Bewusst nur EIN Baustein je Lauf gemaess Takt-Regel 260714.

## 2026-07-20 — Beobachtung 6 (Dauerschicht-Zyklus 15): 2507 Halden ENTSCHIEDEN, Jurybericht publiziert
- **Hauptbefund:** Der Projektwettbewerb 2507 TKHL Halden (St.Gallen) ist seit
  **02.04.2026 entschieden** — Siegerprojekt **«ZVIERI», Richter Tobler GmbH, Basel**,
  einstimmig, **51 Beiträge** (Medienmitteilung stadt.sg.ch 02.04.2026, 09:30). Der
  **Jurybericht Stand 14.04.2026 ist als PDF auf stadt.sg.ch publiziert** (Wettbewerbe
  Hochbauamt, >10 MB). Die Destillation (raw-Extrakt, Dossier-Ergebnisteil, Rang LIMO,
  Delta-Muster-Erweiterung, Refuter) ist die naechste faellige Lektion; PDF-Download
  braucht Freigabe Raphael (Regel: keine Datei-Downloads ohne Freigabe).
- **Methoden-Korrektur:** Die Beobachtungslaeufe 1–5 pruefen competitions.espazium.ch —
  dort war der Entscheid vom 02.04. bis mindestens 13.07. NICHT sichtbar (Eintrag stand
  weiter unter «Wettbewerbsausschreibungen»). Sekundaerquellen laufen nach; kuenftig
  immer auch die Ausloberin-Website pruefen. In QUESTIONS.md als Methoden-Lehre
  festgehalten.
- **2501 Steinfabrik:** unveraendert (konkurado «Abgeschlossen», kein Jurybericht
  downloadbar, kein Sieger genannt — 6. Pruefung). Lokales OneDrive-Archiv beider
  Projekte ohne neue Dateien seit 20.03.2026.
- **Quellen:** stadt.sg.ch Medienmitteilung 02.04.2026 + Downloadliste Wettbewerbe
  Hochbauamt; konkurado.ch/de/areal-steinfabrik-pfaffikon-sz; WebSearch 20.07.2026.

## 2026-07-14 — Nachbrenner: Muster `jans-board-dna.md` refuter-verifiziert, `draft` → `established`
- **Anlass:** erneute Ausfuehrung des Nachbrenner-Auftrags (Original-Kontext: Session-
  Limit-Abbruch 12.07.2026 abends). Bestandspruefung ergab: die 8 Original-Schritte sind
  laengst erledigt (siehe Eintraege vom 14.07. weiter unten), ABER `wiki/muster/
  jans-board-dna.md` stand trotz fruehere CHANGELOG-Formulierungen ("Muster jans-board-dna
  ... established") tatsaechlich noch auf `status: draft` — der Artikel selbst vermerkte
  explizit "Status-Hebung erst nach Refuter-Pruefung". Diese Luecke wurde geschlossen.
- **Verifikation:** 9 unabhaengige Refuter-Agenten (parallel, je einer pro Quelle
  board-dna/2101, 2102, 2103, 2205, 2206, 2207, 2408, 2501, 2507), jeder gegen genau
  seine Quelldatei, insgesamt ueber 150 Einzelbehauptungen (Merkmale 1-15 + Teil A1/A2/A3
  + Vorgaben-Liste) geprueft.
- **Ergebnis:** 2101, 2102, 2207, 2408 (ausser Nebenbefund), 2501, 2507 vollstaendig
  bestaetigt; 2103 zwei kleine, nicht korrekturbeduerftige Nuancen (Refuter-Urteil
  "kein grober Fehler"). Vier echte Korrekturen eingearbeitet:
  (1) Merkmal 7 (Plan-first): 2205 faelschlich als Beleg gefuehrt — die Quelle beschreibt
  ein weisses Modellbild als Einstiegsbild VOR dem Schwarzplan; 2205 widerlegt das Muster
  eher, als es zu stuetzen — in die Abgrenzungs-Sektion verschoben.
  (2) Merkmal 9 (Werkplan-Praezision): 2205 (Board 1) zeigt kein 1:50/1:20-Detail;
  Vorbehalt ergaenzt (Boards 2-4 unbelegt), Zaehlung von "6 von 7" auf "6 von 8 (2205 mit
  Vorbehalt)" korrigiert.
  (3) Merkmal 6 (Massstab-Kaskade): "Schwarzplan 1:2500 (2206)" war nicht belegt — die
  Quelle nennt fuer den 2206-Schwarzplan explizit "keinerlei Beschriftung, keine
  Massstabsleiste"; 2206 aus der Liste entfernt, Sonderfall vermerkt. Loest zugleich die
  vom Refuter gefundene Inkonsistenz zum A3-Kernsatz auf ("2206 stuetzt nur Farbcode/
  Fluchtweg/Kennzahl/Alt-Neu-Poche").
  (4) Merkmal 11 (Poche + Alt-Neu): 2408-Zuordnung praezisiert — nur die Schwarzfuellung
  (Beton/Fundament) ist belegt, eine Alt-Neu-Hierarchie ist beim Neubau-Biwak ohne
  Bestand nicht einschlaegig und wird nicht mehr behauptet.
- **Status:** `wiki/muster/jans-board-dna.md` auf `established`, `last_updated:
  2026-07-14` gehoben. `wiki/INDEX.md` nachgefuehrt (Eintrag mit Verifikations-Vermerk).
  Damit sind jetzt alle drei Muster-Artikel der KB (`delta-zum-ersten-rang`,
  `jury-argumente-schulbauten`, `jans-board-dna`) refuter-verifiziert `established`.
- **Keine weitere Aktion:** die laufende B5/B6-Arbeit der Etappe 3 (Parameter-Set +
  Kennwert-Benchmark Schulbau) bleibt Sache des dedizierten Scheduled Task
  `wettbewerbs-dna-training` — hier nicht dupliziert.


## 2026-07-14 — Nachbrenner-Bestandspruefung: alle 8 Original-Schritte bereits erledigt, INDEX-Korrektur
- **Anlass:** erneute Ausfuehrung des einmaligen Nachbrenner-Auftrags (Kontext: Session-
  Limit-Abbruch 12.07.2026 abends). Bestandspruefung ergab: alle 8 Schritte des Original-
  Auftrags sind laengst erledigt und durch Etappe 3 weit ueberholt — 11/11 Teilnahme-Dossiers,
  9/9 moegliche Board-DNA-Analysen (2104/2503 dossier-bedingt ohne Board), 23/23 externe
  Juryberichte established, Muster `jans-board-dna` + `jury-argumente-schulbauten`
  (Basis 23) + `delta-zum-ersten-rang` established, Skill-Massnahmen-Report vorhanden,
  Rang-Diskrepanz 2102/2206 durch Raphael entschieden und belegt (`outputs/2026-07-12_
  rang-klaerung-2102-2206.md`), INDEX/QUESTIONS/CHANGELOG/PROGRAMM durchgehend nachgefuehrt.
- **Korrektur:** `wiki/INDEX.md` Eintrag zu `muster/jury-argumente-schulbauten.md` war
  stehengeblieben bei "Basis 11 von 17" — auf den tatsaechlichen, bereits am 14.07. im
  Artikel selbst dokumentierten Stand "Basis 23" nachgezogen.
- **Keine weitere Aktion:** die laufende B5/B6-Arbeit (Parameter-Set + Kennwert-Benchmark
  Schulbau) sowie Healthcare/Wohnungsbau-Sweeps sind Sache des dedizierten Scheduled Task
  `wettbewerbs-dna-training` (Etappe 3) — hier nicht dupliziert, um konkurrierende Commits
  auf denselben Dateien zu vermeiden.

## 2026-07-14 — Etappe 3 B4: Muster jury-argumente-schulbauten von 11 auf 23 Quellen erweitert
- **Aktion:** `wiki/muster/jury-argumente-schulbauten.md` additiv erweitert (12 neue Berichte:
  Littau-Luzern, Thurgauerstrasse Zuerich, Baetterkinden, Stoeckacker Bern, Zelgli Schlieren,
  Sursee [Volltextbeleg nachgetragen] sowie der Etappe-3-Sweep Hinter Gaerten Riehen,
  Kantonsschule Baden [vertiefend], Kantonsschule Zimmerberg Waedenswil, Niederrohrdorf,
  Oberstufe Schoenau Steffisburg, Ochsenmatt 4 Menzingen). Sektion 3 von 10 auf 12
  Siegargumente erweitert (neu: Adressierung/Eingangssituation; Stufentrennung KG/Primar
  als Rangkiller); Sektion 2 um 3 Typologie-Tabellenzeilen + Pilotprojekt-Fussnote ergaenzt;
  Sektion 4 um neuen K.o.-Punkt Etappierungsverstoss ergaenzt.
- **Verifikation:** Refuter-Welle (5 parallele Quellen-Shard-Pruefer + 1 Konsistenz-Pruefer)
  gegen die Rohextrakte durchgefuehrt. 7 Fehler gefunden und korrigiert (falsche Seitenzahlen
  Thurgauerstrasse S.14→13/S.19→18; Fehlzuordnung Bienenstrasse 7→9 Volumenverdoppelung;
  erfundener Nenner "6 von 10" bei Stoeckacker-Ausschluessen; falsche Zitatzuordnung
  Guignard&Saner→Weyell Zipse bei Riehen; ueberzeichnete Baden-Kostendach-Aussage
  "alle drei Top-Projekte"→nur Haller-Masterplan-Familie; Zelgli faelschlich als
  Turnhallen-Vergleichsquelle genannt [ist reiner Bestandsbau]; "fast wortgleich bei 4
  Projekten" bei Ochsenmatt-Stufentrennung praezisiert auf 2 wortgleiche + 2 sinngemaesse
  Belege). Konsistenz-Check: keine Widersprueche. Status `established`.
- **Damit:** Etappe 3 Baustein B4 Schulbau abgeschlossen; naechster Schritt B5
  (Parameter-Set-Revision) + B6 (Kennwert-Benchmark), siehe `training/ETAPPE-3.md`.

## 2026-07-14 — Nachbrenner: Etappe-3-Schulbau B3-Ziel erreicht (9 Draft-Destillate → established)
- **Auftrag:** Scheduled Task `wettbewerbs-layer-nachbrenner`, Fortsetzung des laufenden
  Etappe-3-Ultra-Laufs Schulbau (`training/ETAPPE-3.md`). Stand-Tabelle zeigte 23
  Destillate in `wiki/extern/`, davon 9 noch `draft`: hinter-gaerten-riehen,
  kantonsschule-baden, niederrohrdorf, oberstufe-schoenau-steffisburg,
  ochsenmatt-4-menzingen, schulhaus-littau-luzern, schulhaus-muhen,
  tagesbetreuung-boppartshof-st-gallen, turnhalle-tagesschule-baetterkinden.
- **Verifikation:** je 1 unabhaengiger Refuter-Agent pro Artikel, parallel gefahren,
  jeder gegen den vollstaendigen `raw/extern-jurybericht-<slug>.txt`-Rohtext:
  - hinter-gaerten-riehen: 60 Aussagen geprueft, 0 Fehler → established.
  - kantonsschule-baden: 30 Aussagen geprueft, 2 Fehler korrigiert (Auslober-Vertretung
    BKS+DFR statt Immobilien Aargau; HNF 3'500 m2 bezieht sich auf beide Neubauten,
    nicht nur MINT-Cluster) → established.
  - niederrohrdorf: 45 Aussagen geprueft, 2 Seitenangaben korrigiert (S. 44 → S. 43,
    zwei Rudi-Zitate) → established.
  - oberstufe-schoenau-steffisburg: 45 Aussagen geprueft (kompletter 2818-Zeilen-Rohtext),
    0 Fehler → established.
  - ochsenmatt-4-menzingen: 45 Aussagen geprueft, 0 Fehler → established.
  - schulhaus-littau-luzern: 25 Aussagen geprueft, 2 Seitenangaben korrigiert (S. 28/30 →
    S. 31 bzw. S. 28-29) → established.
  - schulhaus-muhen: 24 Aussagen geprueft, 0 Fehler → established.
  - tagesbetreuung-boppartshof-st-gallen: 70 Aussagen geprueft (92-seitiger Bericht,
    Kap. 1-11 vollstaendig), 1 Seitenangabe korrigiert (S. 61 → S. 60, Projekt baumboppi,
    zweifach im Artikel) → established.
  - turnhalle-tagesschule-baetterkinden: 35 Aussagen geprueft, 1 Fehler korrigiert
    (Sieger «Faltwerk» faelschlich als «kompaktestes Projekt» bezeichnet — Rohtext sagt
    explizit ueberdurchschnittlich grosses Volumen bei kleiner Grundflaeche; DNA-Regel 1
    praezisiert: Volumen-Typologie ≠ Gebaeudegroesse) → established.
- **Ergebnis:** alle 9 auf `established` gehoben, `last_updated: 2026-07-14`. Damit sind
  **23 von 23 externen Schulbau-Jury-Referenzen established** — das B3-Ziel der Etappe 3
  fuer die Bauaufgabe Schulbau (Prio 1) ist erreicht. Bookkeeping nachgefuehrt: INDEX.md
  (Teilnahmen-/Referenz-Tabellen, Stand-Zeile), `training/ETAPPE-3.md` (Stand-Tabelle B2/B3
  aktualisiert, Lauf-Log-Eintrag «Nachbrenner»).
- **Naechster Schritt (naechster Loop-Lauf):** B4 — Muster `wiki/muster/jury-argumente-
  schulbauten.md` von Basis 11 auf alle 23 ausgewerteten Berichte additiv erweitern
  (Refuter-Welle mit 5 parallelen Quellen-Shard-Refutern + 1 Konsistenz-Refuter gemaess
  ETAPPE-3.md), danach B5 (Parameter-Set-Revision) und B6 (Kennwert-Benchmark).

## 2026-07-14 — Nachbrenner-Task erneut ausgeloest, Bestand bereits vollstaendig (kein Content-Update)
- **Auftrag:** Scheduled Task `wettbewerbs-layer-nachbrenner` (23:05) lief erneut mit dem
  Original-Auftrag vom 12.07.2026 (Vollendung der damals durch das Session-Limit
  abgeschnittenen Arbeiten). Bestand gegen alle 8 Schritte des Auftrags geprueft.
- **Befund:** Alle 8 Schritte bereits durch die Folge-Laeufe vom 13.07.2026 erledigt
  (Lauf 5 + Nachbrenner-Fix jury-argumente-schulbauten): 11/11 destillierbare Dossiers
  `established`, Muster jans-board-dna + jury-argumente-schulbauten + delta-zum-ersten-rang
  established, Referenz-Katalog indexiert, INDEX/QUESTIONS/CHANGELOG/PROGRAMM konsistent,
  Massnahmen-Report vorhanden, Rang-Diskrepanz 2102/2206 durch Raphael bestaetigt und in
  QUESTIONS.md unter "Geklaert" dokumentiert. `git log`/`git status` zeigen keine
  ausstehenden Aenderungen an `wissen/wettbewerbs-dna/`.
- **Konsequenz:** Kein neuer Inhalt erzeugt. Externe Beobachtung 2501/2507 nicht erneut
  durchgefuehrt (bereits 5x ergebnislos geprueft, QUESTIONS.md empfiehlt Taktreduktion).
  Etappe 3 bleibt blockiert auf Raphaels Bauaufgaben-Prioritaeten.

## 2026-07-13 — Nachbrenner: `jury-argumente-schulbauten.md` korrigiert, Zweitlauf BESTANDEN → established
- **Auftrag:** Abarbeitung der 10 Korrekturauflagen aus dem durchgefallenen Refuter-Erstlauf
  (siehe Eintrag weiter unten), danach fokussierter zweiter Refuter-Lauf nur auf die
  geaenderten Stellen.
- **Korrekturen (jede einzeln gegen die Rohquelle in `raw/` verifiziert, siehe Zweitlauf):**
  (1) Fermate (Baden) von der K.-o.-Liste in einen eigenen Absatz «kein K.o., aber teuer:
  Betriebsdistanz» verschoben (2. Rang/2. Preis, nicht Ausschluss); (2) Froeschmatt-Typologiezeile
  von «Kantonsschule» auf «Sekundarschule» korrigiert; (3) Merian-Zitat «kaum einen raeumlichen
  Mehrwert» richtig LAUSCHSICHT (Sieger, Sitzstufenkritik) statt LINK zugeordnet; (4) Muhen
  «Marktplatz» (nicht «Mittelzone») korrekt PAPAGENO (3. Rang) statt dem Sieger zugeordnet, mit
  Hinweis dass die Qualitaet dort nicht zum Sieg reichte; (5) Sandgruben-K.o.-Beispiel korrigiert:
  SANDFISCH ist 3. Rang, kein 1.-Rundgang-Ausscheider — Beleg in die Tageslicht-K.o.-Kategorie
  verschoben; (6) Merian-COMEPURE als Gegenbeispiel reformuliert (4. Rang, nicht ausgeschieden —
  entkraeftet die eigene These eher, als sie zu stuetzen); (7) «15 Berichte» auf «11 aktiv
  ausgewertet von 17 destilliert» korrigiert, die 6 ungenutzten Berichte in «Offene Punkte»
  vermerkt; (8) Steinhof/Schoental-Anspruch eingeloest: Turnhalle-Erhalt-Debatte (Steinhof,
  Argument 3) und Lernlandschaft-Transparenz-Kritik (Schoental, Argument 4) mit Zitaten
  eingearbeitet statt nur dekorativ verlinkt; (9) Bruehl-Solothurn Rang-2/3-Wuerdigung (Spielhaus/
  Bei Zwergen, Elfen und Waldtrollen) direkt gegen `raw/extern-jurybericht-bruehl-solothurn.txt`
  (Zeilen 1040-1180) nachverifiziert und woertlich bestaetigt; (10) Heilpaed.-Bern-KATSURA-Zitat
  bestaetigt (echt, S. 50), Grossaffoltern/Merian als «sinngemaess, nicht wortgleich» bzw. «kein
  Beleg» praezisiert.
- **Zweitlauf (fokussierter Refuter, gegen die Rohquellen):** 9 von 10 Punkten sofort
  BESTAETIGT. Punkt 10 (Heilpaed. Bern «6 ausgeschlossene Projekte») initial mit falscher
  Rundgang-Bezeichnung («2. Wertungsrundgang» statt korrekt «Ausschluss von der Preiserteilung»,
  ein vorgelagerter Abschnitt vor dem 1. Wertungsrundgang) — Bezeichnung korrigiert, die
  Aufteilung 1× Perimeter (UBUNTU) / 5× Baurecht war bereits sachlich richtig. Nach der
  Korrektur eigenstaendig gegen `raw/extern-jurybericht-heilpaedagogische-schule-bern.txt`
  (Zeilen 215-245) nachverifiziert: bestaetigt.
- **Ergebnis:** Status von `draft` auf **`established`** gehoben. Datei
  `wiki/muster/jury-argumente-schulbauten.md`; Verifikations-Hinweis im Artikel-Kopf ergaenzt.

## 2026-07-13 (Lauf 5) — Referenz-Katalog `_Admin/03_Referenzen_WB_Abgaben` indexiert (letzter Endbedingung-Punkt Etappe 2)
- **Auftrag:** Loop-Lauf; lokal + extern kein neues Material fuer die zwei offenen Blocker
  (2501 Steinfabrik: juengste Datei unveraendert 19.03.2026; 2507 Halden: unveraendert
  12.11.2025; externe Pruefung konkurado.ch fuer 2501 erneut ohne downloadbaren Jurybericht).
  Statt eines fuenften reinen Beobachtungslaufs den **letzten offenen Endbedingung-Punkt
  Etappe 2** abgearbeitet: den Bild-/Referenz-Katalog indexiert, der in `training/PROGRAMM.md`
  als Etappe-2-Deliverable genannt, aber nie erstellt worden war.
- **Ergebnis:** Neuer Artikel `wiki/referenz-katalog.md` (Status `established`, da reines
  Direkt-Inventar — keine Jury-Claims zu widerlegen, per Ordner-Listing 13.07.2026 verifiziert):
  indexiert `OneDrive/AR - 02 Wettbewerbe/_Admin/03_Referenzen_WB_Abgaben` (~250 Dateien, 10
  Themen-Ordner) mit Zuordnung je Ordner → speisender Agent (schema-zeichner, plakat-setzer,
  flaechen-nachweis, grobkosten-onepager, volumenstudie). Abgrenzung zu `jans-board-dna`
  (Handschrift der eigenen Abgaben) dokumentiert.
- **Bookkeeping:** INDEX.md (Katalog-Sektion + Kopf), QUESTIONS.md (Endbedingung-Punkt
  geschlossen, 5. Beobachtung vermerkt), PROGRAMM.md (Stand-Tabelle Lauf 5) nachgefuehrt.

## 2026-07-13 — Refuter-Lauf gegen `wiki/muster/jury-argumente-schulbauten.md`: NICHT BESTANDEN
- **Auftrag:** Vor Hebung des Dossiers "Jury-DNA Schul- und Bildungsbauten" (Status `draft`)
  auf `established` wurde ein unabhaengiger Refuter-Lauf durchgefuehrt (5 parallele Agenten,
  Abgleich jeder Zuordnung/Zahl/Zitat gegen die 17 `raw/extern-jurybericht-*.txt`-Extrakte und
  die drei JANS-Teilnahme-Notizen).
- **Verdikt:** NICHT BESTANDEN. Materielle Fehler gefunden: (1) Fermate (Baden) faelschlich als
  "Ausschluss/K.-o." bezeichnet, tatsaechlich 2. Rang/2. Preis; (2) Froeschmatt Pratteln
  faelschlich als "Kantonsschule" kategorisiert, ist eine Sekundarschule; (3) Merian-Zitat
  "reine Zirkulation ohne Mehrwert" faelschlich LINK zugeordnet, gehoert zum Sieger LAUSCHSICHT;
  (4) Muhen-Begriff "Mittelzone" im Original nicht auffindbar/falsch zugeordnet; (5)
  Sandgruben-Beispiel fuer "K.-o. im 1. Rundgang" betrifft tatsaechlich ein Rang-3-Projekt
  (SANDFISCH), keinen 1.-Rundgang-Ausscheider; (6) Merian-COMEPURE als Beleg fuer "kann isoliert
  zum Ausscheiden fuehren" ungeeignet (COMEPURE wurde 4. Rang, nicht ausgeschieden). Zusaetzlich
  strukturelle Ueberzeichnung der Beleglage: Dossier behauptet "15 destillierte Referenzberichte",
  nutzt effektiv nur 11 von 17 verfuegbaren aktiv im Fliesstext (Sursee nur im Frontmatter,
  5 weitere bereits destillierte Berichte komplett ungenutzt); von den drei genannten eigenen
  JANS-Teilnahmen (Muttenz/Steinhof/Schoental) tragen Steinhof und Schoental nur dekorativ
  (Einleitung) bei, ohne Wirkung auf Siegargumente/K.-o.-Liste/Typologietabelle. Vollstaendiger
  Bericht mit allen 10 Korrekturauflagen: `outputs/2026-07-13_refuter-jury-argumente-schulbauten.md`.
- **Positiv:** Mehrheit der geprueften Einzelbelege (u.a. Bruehl 44/68, Faellanden JOAN/TETE-A-TETE,
  Froeschmatt PRATELLUM/INFINITY, Grossaffoltern R2-&gt;R1-Delta, Hausen CONCERTO-Nuechternheit,
  Muhen PAPAGENO/erkaufte Parkplaetze, Muttenz eigener Beitrag) haelt der Gegenprobe wortgetreu
  stand — die Kernthese (Betrieb schlaegt Architektur) bleibt plausibel, das Problem liegt in
  der Praezision einzelner Zuordnungen, nicht im Gesamtbefund.
- **Naechster Schritt:** Die 10 Korrekturauflagen im Refuter-Report abarbeiten, danach fokussierter
  Zweitlauf nur auf die geaenderten Stellen, erst dann Status auf `established`.

## 2026-07-13 — Lauf 4: QUESTIONS-Punkt 2103 Steinhof geklaert (Ausscheidungsgruende nicht rekonstruierbar) + 4. Beobachtung 2501/2507
- **Ausgangslage:** Etappe 2 vollstaendig erreicht (11/11 established); Etappe 3 weiter blockiert
  auf Raphaels Bauaufgaben-Prioritaeten. Statt eines reinen Leerlauf-Beobachtungslaufs wurde ein
  lokal abschliessbarer offener QUESTIONS-Punkt bearbeitet.
- **2103 Steinhof — Ausscheidungsgruende:** Der QUESTIONS-Punkt «evtl. aus 02 Korrespondenz /
  11 Loggbuch rekonstruierbar» wurde abgearbeitet. Befund: `02 Korrespondenz/` enthaelt
  ausschliesslich Abgabe-Logistik (Modellbauer Pfister/Kamerich, Velo-Kurier/swissconnect,
  Konkurado-Eingabe, Geser-DWG) und keine Jury-/Nachbesprechungs-Korrespondenz; `11 Loggbuch/`
  enthaelt nur zwei Entwurfs-/Programm-Dokumente aus der Eingabephase («LogBuch Entwurf
  Steinhofschule.docx» = Konzeptnotizen 30m-Koerper/Doppellichtkerne; «Stichworte
  Wettbewerbsprogramm Steinhofschule.docx» = Programm-Stichworte). Beide datieren vor der Jurierung
  (Abgabe Maerz 2022, Jurybericht 23.05.2022). **Es existiert kein Post-Jury-Debrief im Archiv —
  die konkreten Gruende der Rueckstufung aus der engeren Wahl sind aus dem vorhandenen Material
  definitiv nicht rekonstruierbar.** Punkt von «Offen» nach «Geklaert» verschoben.
- **Beobachtung 2501/2507 (4. Lauf in Folge):** lokal unveraendert kein neues Material
  (OneDrive-Zeitstempel 2501 juengste Datei 19.03.2026, 2507 juengste Datei 12.11.2025 — beide
  identisch zu Lauf 2/3). Kein neuer Jurybericht eingetroffen.
- **Konsequenz:** Ein QUESTIONS-Punkt geschlossen (2103); INDEX/QUESTIONS/PROGRAMM nachgefuehrt.
  Taktreduktions-Empfehlung bleibt bestehen, ist aber in der laufenden VOLLGAS-Intensivphase
  (Regel 260712c) nachrangig: Loops laufen dort bewusst durchgehend; ein Rueckbau auf das
  Nachtfenster ist erst mit der Ruecktaktung (nach bestaetigtem Wissensstand bzw. ab 10.08.2026)
  vorgesehen. Bis dahin fuellt der Loop Leerlaeufe mit lokal abschliessbaren Rest-Fragen (wie hier).

## 2026-07-13 — Beobachtungs-Lauf 3: extern erneut per WebFetch geprueft, weiterhin kein neues Material
- **Ausgangslage:** Etappe 2 unveraendert vollstaendig erreicht (11/11 established); Etappe 3
  weiter blockiert auf Raphaels Bauaufgaben-Prioritaeten. Dritter Beobachtungslauf am selben Tag
  (nach Beobachtung 1 und 2), prueft erneut 2501 Steinfabrik und 2507 TKHL Halden.
- **Befund lokal:** unveraendert kein neues Material (OneDrive-Zeitstempel 2501 juengste Datei
  19.03.2026, 2507 juengste Datei 12.11.2025 — beide identisch zu Lauf 2).
- **Befund extern (WebFetch direkt auf die Seiten, nicht nur Suchindex):** konkurado.ch zeigt fuer
  2501 Steinfabrik im Terminplan den Eintrag «Jurybericht: 14.01.2026» — das ist aber ein
  Planungsdatum aus dem urspruenglichen Verfahrensfahrplan, kein Beleg fuer eine tatsaechliche
  Publikation; das Dokument selbst ist weiterhin nicht verlinkt/downloadbar. competitions.espazium.ch
  fuehrt «Tagesbetreuung und Kindergarten Halden» weiterhin unter «Wettbewerbsausschreibungen»
  (nicht unter den entschiedenen Verfahren), kein Entscheid publiziert.
- **Konsequenz:** Keine Destillationsarbeit. PROGRAMM.md (Stand-Tabelle) und QUESTIONS.md
  (Ausstehende-Juryberichte-Punkt + Loop-Takt-Punkt) nachgefuehrt. Drei ergebnislose
  Beobachtungslaeufe in Folge — die Taktreduktions-Empfehlung an Raphael bleibt offen zur
  Entscheidung, ein vierter Vollcheck kurzfristig ist wenig sinnvoll ohne neues aussen liegendes
  Ereignis (Publikation eines Jury­berichts).

## 2026-07-13 — Beobachtungs-Lauf 2: extern geprueft (konkurado/espazium), weiterhin kein neues Material
- **Ausgangslage:** Etappe 2 unveraendert vollstaendig erreicht (11/11 established); Etappe 3
  weiter blockiert auf Raphaels Bauaufgaben-Prioritaeten. Dieser Lauf prueft erneut, ob 2501
  Steinfabrik oder 2507 TKHL Halden einen Jurybericht erhalten haben — diesmal zusaetzlich zur
  lokalen Archiv-Pruefung auch extern via konkurado.ch und competitions.espazium.ch.
- **Befund lokal:** unveraendert kein neues Material (2507-Jurybericht-Ordner weiterhin leer,
  angelegt 25.11.2025, nie befuellt).
- **Befund extern:** konkurado.ch fuehrt «Areal Steinfabrik Pfaeffikon SZ» als «abgeschlossen»,
  der Jurybericht ist dort aber noch NICHT publiziert; die im Bestand vermerkte Erwartung
  «Ende Maerz 2026» ist damit ueberholt und wurde in QUESTIONS.md korrigiert (kein neues Datum
  ersichtlich). competitions.espazium.ch fuehrt «Tagesbetreuung und Kindergarten Halden» weiterhin
  als laufendes Verfahren (Planabgabe war 30.10.2025), kein Entscheid publiziert.
- **Konsequenz:** Keine Destillationsarbeit. QUESTIONS.md: Datumsangabe 2501 korrigiert, neuer
  Punkt "Loop-Takt" ergaenzt (2. folgenloser Beobachtungslauf am selben Tag — Empfehlung
  Taktreduktion an Raphael verschaerft, siehe naechstes Tagesbriefing/hub-chef).

## 2026-07-13 — Rang-Entscheid Raphael + QUESTIONS-Bereinigung (Session MacBook Pro)
- **Rang-Entscheid:** Raphael hat via Rueckfrage «Belegte Raenge uebernehmen» bestaetigt —
  2102 Muttenz 4. Rang / 3. Preis, 2206 Schoental 3. Rang / 3. Preis sind damit
  festgeschrieben (Grundlage: outputs/2026-07-12_rang-klaerung-2102-2206.md).
- QUESTIONS.md bereinigt: erledigte Punkte (Normen, Kennzahlen 2101/2102/2103,
  B12/Team/MAL-A-GUZZI 2206, Umlaute 2408, 2502 leer) ins Archiv verschoben; offen
  bleiben Bauaufgaben-Prioritaeten (Etappe 3), Druckvorstufen-Standard (neu aufzusetzen),
  SIA 2014, sowie die strukturell unbelegbaren Punkte (2408-Ausscheidungsgrund,
  2101-Einzelkritik) und die ausstehenden Juryberichte 2501/2507.

## 2026-07-13 — Beobachtungs-Lauf: keine neuen Juryberichte, Etappe 3 weiter blockiert
- **Ausgangslage:** Endbedingung Etappe 2 ist seit Lauf 3 (13.07.2026) vollstaendig erreicht;
  naechster Schritt Etappe 3 (konkurado-Erweiterung) ist blockiert, bis Raphael die
  Bauaufgaben-Prioritaeten liefert (offene Frage in QUESTIONS.md). Dieser Lauf prueft daher nur,
  ob die beiden noch ausstehenden Juryberichte (2501 Steinfabrik, angekuendigt Ende Maerz 2026;
  2507 TKHL Halden, seit 12.07.2026 faellig) inzwischen im OneDrive-Archiv eingetroffen sind.
- **Befund:** Kein neues Material. 2501 hat zwar eine Entscheid-Mitteilung des Preisgerichts
  (`02_Korrespondenz/brackpartner.ch/260210 ... Mitteilung Entscheid Preisgericht ...eml`),
  diese ist aber bereits als Quelle im established-Dossier verarbeitet (Rangierung/Preisverteilung
  2. Bearbeitungsstufe). 2507 hat einen vorbereiteten Ordner `90 dokumentation/00 wettbewerb/
  02 jurybericht`, dieser ist jedoch weiterhin leer.
- **Konsequenz:** Kein Dossier-/Status-Update noetig. Keine Destillationsarbeit in diesem Lauf.
  Empfehlung an Raphael (naechstes Tagesbriefing): diesen Loop auf reduzierten Takt (Beobachtung
  statt taeglich mehrfach) umstellen oder pausieren, bis entweder (a) einer der beiden
  Juryberichte eintrifft oder (b) die Bauaufgaben-Prioritaeten fuer Etappe 3 vorliegen.

## 2026-07-13 — Lauf 3: Muster `delta-zum-ersten-rang` auf alle 6 verfuegbaren Dossiers verdichtet, 2502 geklaert
- **Ausgangslage:** Nach dem Nachbrenner-Lauf (Rang-Klaerung 2102/2206) waren zwei Punkte
  der Endbedingung Etappe 2 (Teil 1) noch offen: (a) `muster/delta-zum-ersten-rang.md` deckte
  erst 3 von 6 moeglichen Dossiers ab (Basis-Angabe in INDEX war „6 Dossiers", das Dokument
  selbst zitierte aber nur 2102/2206/2408 — Diskrepanz durch diesen Lauf aufgeloest); (b) die
  Frage, ob der leere Ordner 2502 eine zurueckgezogene/reservierte Teilnahme ist, war ungeklaert.
- **2502 geklaert:** `ls -la` auf den OneDrive-Ordner bestaetigt: reines leeres Verzeichnis
  (Anlagedatum 25.11.2025, keine Dateien). Kein Dossier destillierbar, keine weitere Pruefung
  noetig. INDEX/QUESTIONS entsprechend nachgefuehrt (Status „kein Dossier moeglich" statt
  „pruefen").
- **Muster `delta-zum-ersten-rang.md` von 3 auf alle 6 verfuegbaren Dossiers erweitert:**
  Dossiers 2101 (St.Gallen KSSG), 2103 (Steinhof), 2205 (Guggerbach) neu eingearbeitet — alle
  drei enthalten eine belegte «Delta zum 1. Rang»-Sektion mit woertlichen Jury-Zitaten. Aus
  urspruenglich 6 Einzelbefunden wurden **10 Befunde**: bestehende vertieft (Befund 1 Setzung/
  Konstruktion, Befund 2 Betrieb/Nutzerlogik, Befund 3 Nutzen-Nachweis, Befund 4
  Kennwert-Disziplin, Befund 5 jetzt zweigeteilt — Gliederung bei Mischmassstab VS. Ein-Koerper
  bei homogenem Programm — Befund 6 Weiterbauen/Bestandsschonung); vier neue Befunde ergaenzt
  (7 Staedtebau als Passstueck bei Lueckenschluss, 8 Terrain als Entwurfsgeber, 9 Bestand
  schonen zaehlt doppelt, 10 verbindende Herzstuecke als Siegargument). Explizit dokumentiert:
  fuer die uebrigen 5 Teilnahmen (2104/2207/2501/2503/2507) liegt **kein** Jurybericht im
  Archiv vor — die Verdichtung auf „alle 11" aus der urspruenglichen PROGRAMM-Formulierung war
  strukturell nicht erreichbar; das Dokument benennt das jetzt explizit als Quellenlagen-Grenze,
  nicht als offene Arbeit.
- **Verifikation (Pflicht, Regel 260712):** unabhaengiger Refuter-Agent hat jedes woertliche
  Zitat gegen die sechs Quell-Dossiers gegengelesen (Wortlaut, Seitenzahl, Sieger-/
  Projektzuordnung, Kennzahlen, Deckung der Regel-Verallgemeinerungen durch die Belege).
  **VERDIKT: BESTANDEN** — keine erfundenen Zahlen, keine falschen Seitenverweise, keine
  Fehlzuordnungen; eine woertliche Wortstellungs-Inversion in einem Zitat (Guggerbach Befund 5)
  als sinnwahrende zulaessige Kurzform gewertet, kein Korrekturbedarf. Status von `draft` auf
  `established` gehoben.
- **Nachgefuehrt:** INDEX.md (Stand-Datum, Muster-Eintrag, Stand-Bilanz „11 von 11
  destillierbaren Teilnahmen established", Endbedingung-Vermerk), QUESTIONS.md (2502
  als geklaert markiert), training/PROGRAMM.md (Stand-Tabelle Nachbrenner + dieser Lauf
  ergaenzt, Endbedingung Etappe 2 als vollstaendig erreicht markiert).
- **Naechster Schritt:** Etappe 3 (konkurado-Erweiterung je Ziel-Bauaufgabe) — Bauaufgaben-
  Prioritaeten muessen zuerst bei Raphael abgeholt werden (offene Frage in QUESTIONS.md).
  Dieser Lauf schlaegt vor, das im naechsten Tagesbriefing (hub-chef) anzustossen; der
  taegliche Trainings-Takt kann bis dahin pausieren oder auf Beobachtung der 5 offenen
  Jury-Berichte (v.a. 2501, 2507) reduziert werden.

## 2026-07-13 — Nachbrenner: Rang-Klaerung eingearbeitet, 2102/2206 auf established gehoben
- **Anlass:** Der Volllast-Lauf vom 12.07.2026 endete am Session-Limit (Reset 22:50), bevor
  der bereits erzeugte Report `outputs/2026-07-12_rang-klaerung-2102-2206.md`
  (vollstaendige Rangliste + woertliche Zitate + Querpruefung des Archivs fuer beide
  Faelle) in Dossiers/INDEX/QUESTIONS/PROGRAMM eingearbeitet war. Dieser Nachbrenner-Lauf
  holt das nach.
- **Bestandsaufnahme:** alle 11 Teilnahmen-Dossiers, 17 extern-Notizen (inkl. der neu
  gezaehlten rang-Klaerung als Report, nicht extern), 9 Board-DNA-Analysen und 3
  Muster-Artikel waren bereits vorhanden und lokal committet (`3be5dd08`); Arbeitsbaum
  fuer `wissen/wettbewerbs-dna` sauber (keine unstaged Aenderungen beim Start dieses Laufs).
- **2102 Muttenz + 2206 Schoental auf `established` gehoben:** Die Rang-Klaerung bestaetigt
  in beiden Faellen den bereits dokumentierten Rang zusaetzlich unabhaengig (2206 durch die
  amtliche Verfuegung des Schulrats Altstaetten, die Raphael Jans woertlich «zum dritten
  Rang» gratuliert; 2102 durch die Rang-/Preis-Unterscheidung im Jurybericht) und schliesst
  per Archiv-Querpruefung aus, dass irgendwo ein realer 2. Rang von JANS dokumentiert ist.
  Die Erinnerungs-Diskrepanz mit Raphael («2. Platz» bei beiden) ist damit nicht aufgeloest,
  aber die Beleglage ist eindeutig und zweifach abgesichert — Status-Hebung blockiert die
  offene Kenntnisnahme-Frage nicht laenger. Dossiers, INDEX (Stand-Bilanz jetzt 10
  established, 1 pruefen), QUESTIONS (beide Punkte als «GEKLAERT, Raphael zur
  Kenntnisnahme» markiert) und training/PROGRAMM.md nachgefuehrt.
- **Board-DNA-Luecke 2104/2503 als «nicht anwendbar» dokumentiert:** beide Dossiers wurden
  gegengeprueft — 2104 (Theater Luzern) liegt nur als 1.-Stufe-Abgabe ohne fertiges
  Abgabeboard vor, 2503 (Glockenacker) nur als drei ArchiCAD-Transferdateien ohne
  jedes Planblatt. Kein fehlender Arbeitsschritt, sondern fehlende Quellenlage; im
  INDEX vermerkt statt stillschweigend offen gelassen.
- **Skill-Massnahmen-Report** (`outputs/2026-07-12_massnahmen-skill-wettbewerb.md`, P1–P6)
  war bereits vollstaendig vorhanden; keine Aenderung, Skill `wettbewerb` bleibt gemaess
  Entscheid Raphael unveraendert.
- **Reports-Register in INDEX ergaenzt** um den Rang-Klaerungs-Report (war zuvor nicht
  gelistet).

## 2026-07-12 — Volllast-Abschluss (Session MacBook Pro, spaetabends)
- **Archiv komplett:** die letzten zwei Teilnahmen destilliert + refuter-verifiziert →
  established: 2501 Steinfabrik «SEESTERN» (nicht rangiert, Sieger «ALINGHI»),
  2507 PS Halden «LIMO» (Resultat offen, kein Jurybericht). Damit **11 von 11 Teilnahmen**
  destilliert (2502 leer = pruefen).
- **Draft-Verifikation:** 2104 Theater, 2205 Guggerbach, 2207 Schliengerweg, 2503 Glockenacker
  je Refuter geprueft (alle BESTANDEN, Korrekturen eingearbeitet) → established.
  Stand jetzt: 9 established, 2 draft (nur 2102/2206 wegen Rang-Diskrepanz mit Raphael).
- **Referenz-Verifikationswelle:** 15 externe Jury-Notizen + 9 Board-DNA-Analysen (48 Agenten,
  0 Fehler); 22 von 24 auf established gehoben, Rest-draft nur bei OCR-/Scan-Vorbehalt.
- **Muster-Synthesen (Hauptsession, inline):** `muster/jury-argumente-schulbauten.md`
  (Jury-DNA aus 15+3 Berichten) und `muster/jans-board-dna.md` (9 Board-Analysen, im
  Nachbrenner-Lauf zur reicheren «Plakat-Handschrift» ausgebaut).
- **Normbezug:** SIA 400:2000 destilliert (wissen/normen/), SIA 142/143:2009 bereits vorhanden,
  im INDEX unter «Normbezug» verlinkt. Reports: Generalprobe Muttenz, PDF-Vektor-Pilot,
  Massnahmen-Skill-wettbewerb (M1–M6).
- INDEX komplett neu geschrieben (Registerstand); QUESTIONS um die Rang-Diskrepanzen + neue
  offene Punkte ergaenzt.

## 2026-07-12 — Muster-Artikel `muster/jans-board-dna.md` verdichtet (Fach-Bibliothekar-Lauf)
- **Aktion:** `wiki/muster/jans-board-dna.md` neu geschrieben (Status `draft`) als
  Verdichtung aller neun Board-DNA-Einzelanalysen (2101, 2102, 2103, 2205, 2206, 2207,
  2408, 2501, 2507). Ersetzt einen frueheren, weniger belegten Zwischenstand desselben
  Artikels.
- **Aufbau:** Teil A = verallgemeinerte JANS-Plakat-Handschrift, gegliedert in A0
  durchgaengige Muster (15 belegte Merkmale, je mit den stuetzenden Teilnahmen), A1
  haeufig-aber-nicht-durchgaengig, A2 projekt-spezifische Einzelfaelle, A3 Widersprueche/
  duenne Stellen. Teil B = 14-Punkte-Vorgaben-Checkliste fuer den Agenten `plakat-setzer`
  (Blattarchitektur, Pflichtleisten Kennwort/Massstab/Nord, Dramaturgie gross→klein,
  harte Farbregel, Plangrafik-Standard, Anonymitaet).
- **Staerkste durchgaengige Merkmale:** Querformat (9/9), weisser Fond ohne Rahmen,
  feste Blattarchitektur, Board-Index-Piktogramm (alle Mehr-Board-Sets), Dramaturgie
  gross→klein (9/9), Massstab-Kaskade 1:500/1:200/1:50, monochrome Farbdisziplin mit
  EINEM thesenhaften Akzent, Werkplan-Detail 1:50–1:20 mit Schichtaufbau-Listen,
  Kreis-Nordpfeil, gestufte Massstabsleiste (haeufig).
- **Ehrlich vermerkt:** 2206 = Nachweis-Set (kein Finalplakat), 2205 nur Board 1, 2501
  Plan-only; plan-first-Auftakt und schwere Poche in den 2025er-Boards (2408, 2507)
  schwaecher (moeglicher Stil-Drift). Board 2104 noch nicht analysiert (offener Punkt).
- **Status:** `draft`; Hebung auf `established` erst nach Refuter-Pruefung gegen die
  Original-Boards.

## 2026-07-12 — Lauf 2: Verifikation 2101 + 2103, INDEX-Reconcile (Session MacBook Pro, 23:00)
- **Ausgangslage:** In einem Zwischenlauf (Dossiers erstellt ~19:04–19:11, committet via
  nas-selfcommit 20:00) waren 2101, 2103, 2205, 2503 als Status `draft` angelegt, aber
  INDEX/QUESTIONS/CHANGELOG/PROGRAMM nicht nachgefuehrt und die Verifikation fehlte.
- **Verifikation (Pflicht, Regel 260712):** je ein unabhaengiger Refuter-Agent gegen die
  raw-Extrakte fuer 2101 KSSG und 2103 Steinhof. Beide **VERDIKT: BESTANDEN**, keine
  Diskrepanzen — alle Kern-Behauptungen (Kennwort/Nr., Ausscheiderunde, Team, Sieger,
  Rangfolge, woertliche Jury-Zitate, eigene Kennzahlen) mit Fundstelle belegt:
  - 2101 «LOUISE» Nr. 04, ausgeschieden 2. Rundgang; Sieger Nr. 06 «Insere»
    (Schneider & Schneider, Aarau); Sammelurteil-Zitat 2. Rundgang wortgleich; eigene
    GF 3'417 m2 belegt. → Status **established**.
  - 2103 «Patio in Nobile» Nr. 9, engere Wahl (6 Projekte 1/4/6/9/11/14), im finalen
    Rundgang in den 3. zurueckgestuft; Sieger Nr. 6 «Gigelisuppe» (Huber Waser Muehlebach,
    Luzern) = Weiterbauen/Bestand-Erhalt der Turnhalle; Delta-Zitate wortgleich.
    → Status **established**.
- **INDEX-Reconcile:** Tabelle auf den realen Stand gebracht (2101/2103 established mit
  Resultat; 2205/2503 als draft eingetragen — waren zuvor faelschlich «ausstehend/—»);
  Stand-Bilanz ergaenzt (3 established, 4 draft, 4 ausstehend, 1 pruefen). Muster-Basis
  von 3 auf 6 Dossiers aktualisiert.
- **Bauaufgaben-Breite:** mit 2101 (Spital/Healthcare) und 2103 (Primarschule + Turnhalle,
  Hanglage, Grundsatzfrage Erhalt/Ersatz) sind nun beide Kern-Typologien der JANS-DNA
  belegt. QUESTIONS.md um die offenen Punkte beider Teilnahmen ergaenzt.
- Raw-Extrakte lagen bereits aus dem Zwischenlauf vor (saubere Namen + Quell-Header);
  keine Doppel-Extraktion.

## 2026-07-12 — Seed-Lauf: 3 Dossiers + Muster (Session MacBook Pro)
- Dossiers angelegt (Status draft): wiki/teilnahmen/2102-muttenz.md,
  2206-schoental.md, 2408-biwak-grassen.md; Raw-Extrakte je Teilnahme in raw/.
- **Belegte Resultate weichen von der Erinnerung ab:** 2102 Muttenz «PATIO IM PIANO
  NOBILE» = 4. Rang / 3. Preis (Jurybericht S. 15); 2206 Schoental «ARCHE» = 3. Rang /
  3. Preis (Schlussbericht S. 11, Titelblatt «Entwurf»); 2408 «-Babuschka-» =
  ausgeschieden im 2. Rundgang. Diskrepanzen in QUESTIONS.md, Klaerung bei Raphael.
- Muster-Artikel wiki/muster/delta-zum-ersten-rang.md (6 Befunde + Konsequenz fuer
  den Agenten programm-pruefer); INDEX mit belegten Resultaten nachgefuehrt.
- Verifikations-Runde (3 unabhaengige Refuter-Agenten) abgeschlossen:
  2102 Muttenz BESTANDEN (7 Praezisierungen eingearbeitet: Statik-Fundstelle S. 19
  statt S. 40, Mittagstisch-Beleg S. 22/S. 16, Zitat-Flexionen, Datums-/Seitenkorrekturen);
  2206 Schoental zunaechst DURCHGEFALLEN (Zitier-Praezision), 3 Korrekturen +
  B12-Widerspruchs-Fussnote (GF 1'792 Kopfblock vs. 1'545 Geschosssumme) eingearbeitet;
  2408 BIWAK BESTANDEN (4 Praezisierungen eingearbeitet: Tragwerkselemente-Liste,
  Schneeverfrachtungs-Hypothese entschaerft, 18×32/18-36-Widerspruch vermerkt) —
  Status auf established gehoben. 2102/2206 bleiben draft bis zur Klaerung der
  Rang-Diskrepanz durch Raphael.

## 2026-07-12 — Anlage der KB (Session MacBook Pro)
- KB angelegt (CLAUDE.md, wiki/INDEX.md, wiki/QUESTIONS.md, training/PROGRAMM.md)
  gemaess Spec `wissen/spec/outputs/2026-07-12_wettbewerbs-layer_spec.md`.
- Quelle: Scan `OneDrive/AR - 02 Wettbewerbe/` (12 Teilnahmen, 17'045 Dateien).
- Goldstandard-Vorgabe Raphael: 2. Plaetze 2102 Muttenz + 2206 Schoental.
- Erste Destillationen gestartet: 2102, 2206, 2408.
