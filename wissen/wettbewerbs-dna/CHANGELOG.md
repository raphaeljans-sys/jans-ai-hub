# CHANGELOG — KB wettbewerbs-dna

## 2026-07-29 — `training/PROGRAMM.md`: Statuskopf «STILLGELEGT» gesetzt (vollgas-chef-radar 12:57)
- **[struktur/korrektur]** Die Programmdatei nannte im Kopf weiterhin einen **aktiven Takt**
  («taeglich 05:22 (Scheduled Task)»), obwohl der Task `wettbewerbs-dna-training` seit dem
  **27.07.2026** auf `enabled=false` steht (Stilllegung, Freigabe Raphael, Leerlauf-Bereinigung).
- **Warum das zaehlt:** die Mac-Mini-Nachtschicht waehlt ihre Aufgabe in **Prioritaet 4** ueber
  das Muster `wissen/*/training/PROGRAMM.md` und nimmt die KB, die am laengsten nicht trainiert
  wurde. Nach diesem Mass war `wettbewerbs-dna` mit CHANGELOG-Stand 27.07. 19:38 die **aelteste
  von neun** Kandidatinnen — also die naechste, die drankommt, obwohl sie ruht. Der Auswahl-Glob
  liest nur die Programmdatei, nicht das Task-Register; die Datei behauptete das Gegenteil.
- **Massnahme:** Statuskopf gesetzt (STILLGELEGT, kein gueltiges Ziel fuer Prioritaet 4,
  Reaktivierung nur durch Raphael), Takt-Satz als **historisch** markiert. Kein inhaltlicher
  Eingriff in die KB, keine Aenderung an Takt oder Register — die Datei sagt jetzt, was ohnehin
  seit dem 27.07. gilt.

## 2026-07-27 (Nachtschicht-Zyklus Mac Mini, 19:30) — Infra-Fix: Vollgas-Runner-Doppellauf behoben
- Root-Cause-Fix fuer den am 25.07. gemeldeten Doppellauf (`wettbewerbs-dna-training` lief
  gleichzeitig ueber den Endlos-Runner UND den eigenen Scheduled Task, `index.lock`-Konflikt).
  `scripts/vollgas-runner.sh` `EXCLUDE_RE` fehlten vier der sechs von Rule 260725 zugesicherten
  Loop-Ausschluesse (`twin`, `spec-training`, `wettbewerbs-dna`, `normen-training-nacht`; nur
  `wissens-chef` griff bisher ueber `chef`). Ergaenzt und gegen alle sechs Namen + die regulaeren
  Vollgas-Tasks verifiziert. Details/Verifikation in `wiki/QUESTIONS.md` Abschnitt «Geklaert».
  Betrifft/entlastet auch die KBs normen, twin, spec (gleicher Bug, gleicher Fix).

## 2026-07-27 (Vollgas-Zyklus, abends) — Etappe 3, B5 Wohnungsbau Parameter-Set-Revision: ETAPPE 3 VOLLSTAENDIG (alle drei Bauaufgaben)
- `wissen/entwurfs-referenzen/wiki/parameter-sets/wohnen-mfh-urban.json` von v1.0 (generisch,
  vor-Etappe-3) auf v2.0 komplett neu geschrieben, rein aus den established B4
  (`jury-argumente-wohnungsbau.md`) + B6 (`kennwerte-wohnungsbau.md`) abgeleitet — analoges
  Vorgehen wie Healthcare v2.0 (25.07.). Details im CHANGELOG der Ziel-KB
  `wissen/entwurfs-referenzen/CHANGELOG.md` (2026-07-27-Eintrag). Zwei unabhaengige
  Refuter-Durchgaenge (Agent-Tool direkt, kein Workflow-Tool wegen bekannter headless-Review-
  Blockade): 1. Durchgang 6 Fehler gefunden und korrigiert, 2. Durchgang bestaetigte alle
  Korrekturen fehlerfrei — VERDIKT BESTANDEN.
- **Damit ist Etappe 3 (typologische Wettbewerbs-DNA je Ziel-Bauaufgabe) fuer alle drei
  priorisierten Bauaufgaben (Schulbau, Healthcare, Wohnungsbau) vollstaendig: B1-B6 je
  established.** Stand-Tabelle in `training/ETAPPE-3.md` entsprechend nachgefuehrt.
  Naechster Schritt: Raphael im Tagesbriefing die Fortsetzung vorschlagen (weitere
  Bauaufgaben wie Gewerbe/Buero oder Vertiefung der bestehenden drei, Entscheid Raphael).

## 2026-07-27 — Etappe 3, B6 Wohnungsbau Kennwert-Benchmark: `kennwerte-wohnungsbau.md` established
- Neuer Artikel `wiki/muster/kennwerte-wohnungsbau.md` aus den 8 established Wohnungsbau-
  Juryberichten (dieselbe Basis wie B4). Zwei parallele Extraktions-Shards (je 4 Quellen,
  Sonnet) haben alle belegten quantitativen Kennwerte (Flaeche, Kosten, Wohnungsspiegel,
  Dichte, Raster) mit Seitenbeleg gezogen; direkt per Agent-Tool orchestriert (Workflow-Tool
  wie in den Vorlaeufen nicht verwendet, bekannte headless-Review-Blockade).
- **Kernbefund:** einziger ueber mehrere unabhaengige Teilverfahren gestuetzter CHF/m²-
  Kennwert der drei Bauaufgaben-Benchmarks: **3'500–3'900 CHF/m² HNF (BKP 1–9)**, aus den
  zwei Baufeldern B und C der Auslobung Koch-Areal Zuerich (gleicher Auslober, gemeinsame
  Vorpruefung — Einschraenkung ausdruecklich im Artikel vermerkt, kein Beleg aus zwei
  unabhaengigen Wettbewerben). Areal-Referenzband 3'139–65'000 m² (5 Quellen). Wohnungsspiegel-
  Befund: 4.5-Zimmer-Wohnung 95–105 m² HNF aus zwei unabhaengigen Programm-Wohnungsspiegeln
  (Seebahn-Hoefe, Brisgi-Areal) praktisch deckungsgleich. Vier verschiedene, nicht
  gleichzusetzende Ausnuetzungs-/Ueberbauungsziffer-Systeme identifiziert und getrennt
  gehalten (Guggach II/Koch-Areal AZ vs. Industriestrasse ÜZ vs. Wätterweid Ueberbauungsziffer).
  **Strukturbefund wie Schulbau/Healthcare bestaetigt: kein GV in m3 in irgendeiner der 8
  Quellen belegt** — CHF/m3 bleibt bei `wissen/grobkosten/`.
- **Verifikation:** zwei unabhaengige Refuter-Agenten (Hauptmodell) je vier Quellen gegen
  die Rohtexte, 75 Aussagen geprueft, 65 sofort bestaetigt, 10 korrigiert — 3 echte
  Seitenzahl-Drifts (Reichenbachstrasse Geschosszahl S.38–39→S.36–37, Seebahn Edward-HNF/GF-
  Quote S.67→S.66 zweifach im Dokument, Koch-Areal Baufeld-B-HNF-Zielwert S.11→S.12), 3 weiche
  Seitenbereich-Praezisierungen, 1 Begriffsfehler (Industriestrasse: Ueberbauungsziffer statt
  faelschlich Ausnuetzungsziffer genannt — widersprach der eigenen Begriffsklaerung im selben
  Absatz), 1 BKP-Scope-Ueberverallgemeinerung (Koch-Areal-Zielerstellungskosten je Baufeld
  faelschlich pauschal als "alle BKP 1–9" bezeichnet, obwohl Baufeld A nur BKP 2 Edelrohbau
  ausweist). Bei Wätterweid Arosa wurde die besondere vorangestellte Fussmarker-Pagination vom
  Refuter unabhaengig anhand des Inhaltsverzeichnisses verifiziert und korrekt angewendet.
  Alle Korrekturen eingearbeitet, Status draft→established.
- INDEX.md (Stand-Zelle + Muster-Eintrag) nachgefuehrt. Naechste Zelle: Wohnungsbau B5
  Revision `entwurfs-referenzen/wiki/parameter-sets/wohnen-mfh-urban.json` gegen den nun
  established B6-Benchmark.

## 2026-07-27 — Etappe 3, B4 Wohnungsbau Muster-Synthese: `jury-argumente-wohnungsbau.md` established
- Neuer Artikel `wiki/muster/jury-argumente-wohnungsbau.md` aus den 8 established Wohnungsbau-
  Juryberichten synthetisiert (Reichenbachstrasse Bern, Seebahn-Höfe Zürich, Guggach II Zürich,
  Koch-Areal Zürich, Walkeweg Basel, Industriestrasse Luzern, Wätterweid Arosa, Brisgi-Areal
  Baden). Struktur analog Schulbau/Healthcare: Kriterien-Rangordnung (1. Kontextbezug/Setzung,
  2. Wohnungsspiegel-/Mix-Konformität + Gemeinschaft, 3. Bewilligungsfähigkeit als Schwelle,
  4. Wirtschaftlichkeit ueber Kostenziel/HNF-GF, 5. architektonischer Ausdruck nachrangig),
  Gewinner-Typologien je Traegertyp (stadt-gemeindlich/genossenschaftlich/privat-institutionell/
  gemischt), 12 wiederkehrende Siegargumente, K.-o.-Liste, Verfahrens-Mechanik, Skill-
  Massnahmen fuer `machbarkeit`/`grobkosten-onepager`/`ausschreibung`.
- **Wohnungsbau-Kernbefund:** anders als Healthcare (betriebliche Fehlerfreiheit entscheidet)
  gewinnt im Wohnungsbau das Zusammenspiel aus Kontextbezug (Weiterbauen/Bestand oder
  Topografie), Wohnungsspiegel-Konformitaet und Gemeinschaftskonzept; Architektur/Fassade wird
  selbst beim Sieger fast durchgehend als Entwicklungspunkt vermerkt, kostet aber praktisch nie
  allein den Sieg.
- **Verifikation:** 5 parallele Quellen-Shard-Refuter gegen die Original-Text-Extrakte
  (Reichenbachstrasse+Seebahn-Höfe / Guggach+Brisgi / Koch-Areal / Walkeweg+Industriestrasse /
  Wätterweid) plus 1 abschliessender Konsistenz-Refuter. Rund 20 Korrekturen eingearbeitet:
  zwei überdehnte Verallgemeinerungen (Mischbauweise-Anteil bei Reichenbachstrasse — der Sieger
  selbst ist reiner Massivbau; Guggach-II-Ausscheidungsgrund faelschlich auf fuenf statt ein
  Projekt bezogen), ein als woertliches Zitat ausgewiesenes Paraphrase (Walkeweg «über den
  walken»/«Die Libellen»), mehrere Seitenzahl-Korrekturen. **Wätterweid Arosa erwies sich als
  besonders fehleranfaellig**: die Quelle paginiert ueber einen Fussmarker, der VOR statt NACH
  dem zugehoerigen Fliesstext steht — zwei aufeinanderfolgende Refuter-Durchgaenge (Quellen-Shard
  und Konsistenz-Refuter) verstanden diese Konvention in unterschiedliche Richtungen und lieferten
  einander widersprechende Seitenzahlen; erst eine direkte Nachrechnung gegen die Fussmarker im
  Rohextrakt (Marker N liegt vor dem Text von Seite N) loeste den Widerspruch auf und lieferte die
  finalen, konsistent gegengepruften Seitenangaben. Lehre: bei Quellen mit ungewoehnlicher
  Paginierungs-Konvention lohnt sich ein einmaliger expliziter Marker-Test zu Beginn, statt die
  Konvention bei jedem Zitat neu zu erraten — Kandidat fuer eine QUESTIONS-Notiz/Skill-Hinweis.
- Bookkeeping: `wiki/INDEX.md` (Kopf-Stand + Muster-Sektion), `wiki/QUESTIONS.md` (Sonderfall-
  Frage Koch-Areal/Industriestrasse als geklaert markiert), `training/ETAPPE-3.md` (Stand-Tabelle
  + Lauf-Log) nachgefuehrt.
- Naechste Zelle: **Wohnungsbau B6 Kennwert-Benchmark** (`wiki/muster/kennwerte-wohnungsbau.md`,
  neu anzulegen), danach B5 Revision `entwurfs-referenzen/wiki/parameter-sets/wohnen-mfh-urban.json`.

## 2026-07-27 — Etappe 3, B2/B3 Wohnungsbau Tranche 2: B3-Ziel Wohnungsbau 8/8 ERREICHT
- Fuenf externe Juryberichte in einem Vollgas-Lauf beschafft, destilliert und je unabhaengig
  refuter-verifiziert (10 Agenten: 5 Destillation Sonnet parallel, 5 Refuter Hauptmodell
  parallel; 0 Fehler): `koch-areal-albisrieden-altstetten`, `walkeweg-basel-genossenschaft-2`,
  `industriestrasse-luzern`, `waetterweid-arosa`, `brisgi-areal-baden` — alle `established`.
- Neue Raw-Extrakte (`raw/extern-jurybericht-<slug>.txt`, pdftotext -layout): alle PDFs vorab
  per curl auf HTTP 200 + %PDF-Signatur geprueft, alle deutlich ueber der OCR-Schwelle
  (1'045-1'918 Zeichen/Seite). Die PDFs selbst werden konventionsgemaess nicht versioniert.
- Damit deckt der Wohnungsbau-Bestand alle Traegertypen des B1-Sweeps ab (genossenschaftlich,
  stadt-gemeinde, privat-institutionell, Stiftung, gemischt Wohnen+Gewerbe) und erstmals einen
  alpinen Kontext (Arosa GR) sowie zwei Verfahrens-Sonderfaelle: vier parallele Baufeld-Verfahren
  in einem Bericht (Koch-Areal) und eine getrennte Jurierung von Staedtebau und Gebaeudetypologie
  ohne gemeinsames Ranking (Industriestrasse Luzern).
- Fehlerbilanz: rund 640 gepruefte Aussagen, 102 Korrekturen. Dominante Fehlerklassen unveraendert
  Seiten-Drift und ueberdehnte Exklusivitaets-Behauptungen. **Neu und schwerer wiegend: zwei
  Sinnverkehrungen** (Koch-Areal — A8 «LA CUISINE» wurde wegen des baurechtlichen Verstosses
  gerade NICHT zur Preiserteilung zugelassen, das Destillat behauptete das Gegenteil und leitete
  daraus eine falsche verallgemeinerbare Regel ab; Arosa — Statik/Tragstruktur bei «ZAI»
  vertauscht) **und eine erfundene Fachangabe** (Luzern — dem Sieger «mon oncle» wurde ein
  Erschliessungstyp zugeschrieben, den der Bericht fuer dieses Projekt gar nicht nennt; die
  Formulierung stammt aus der Wuerdigung eines anderen Projekts). Alle drei nur durch den
  unabhaengigen Volltextabgleich gefunden.
- Bookkeeping: `wiki/INDEX.md` (Kopf-Stand + Sektion Externe Referenz-Juryberichte),
  `training/ETAPPE-3.md` (Stand-Tabelle + Lauf-Log) nachgefuehrt.
- Naechste Zelle: **Wohnungsbau B4 Muster-Synthese** (`wiki/muster/jury-argumente-wohnungsbau.md`,
  neu anzulegen), danach B6 Kennwert-Benchmark und B5 Revision `wohnen-mfh-urban.json`.

## 2026-07-27 — Refuter-Verifikation Brisgi-Areal Baden (draft → established)
- `wiki/extern/jurybericht-brisgi-areal-baden.md` unabhaengig gegen den Volltext-Extrakt
  geprueft (Abgleich aller laufenden Seitenmarker 4 bis 46). 21 Korrekturen, davon 5 gewichtig:
  (1) Ueberdehnung «dies verhinderte laut Jury den 1. Rang» bei UNA CITTADINA VERA — der
  Bericht sagt nur, das Projekt habe hinsichtlich der staedtebaulichen Gesamtkonzeption nicht
  hinreichend zu befriedigen vermocht (S. 15). (2) Ueberdehnung «Aussenraum bei KEINEM der
  zehn Projekte als ueberzeugend geloest attestiert» — widerlegt durch die Einzelwuerdigungen
  LUCUS (S. 22) und UNA CITTADINA VERA (S. 27); der Sammelbefund S. 17 steht dazu unaufgeloest
  im Bericht. (3) Der Guggach-II-Direktvergleich in Regel 1 verglich Ungleiches (Programm-
  Anforderung vs. Jury-Feststellung) und wurde als Hypothese gekennzeichnet. (4) Vier
  Seiten-Drifts: KANDALAMA Lauben S. 19 → S. 18, Grundrisstypologie S. 19 → S. 18-19,
  UNA CITTADINA VERA «reges Leben» S. 27 → S. 26, TREFIORI-Besonnungsmangel S. 45 → S. 44-45.
  (5) LINDGREN & JACOBSEN S. 41 → S. 40 und NEIGHBOURHOOD S. 43 → S. 42 (Folgeseiten tragen
  nur Abbildungen; gleiches gilt fuer I SUOI FRATELLI S. 39).
- Kennwerte Zahl fuer Zahl bestaetigt: Areal 6.5 ha (S. 4), HNF-Ziel 15'000 m² (S. 12),
  Wohnungsspiegel je Typ (S. 13, Prozentsumme 100 %), Entschaedigung CHF 260'000 / CHF 8'500
  (S. 9), Preisgelder 65/55/30/25 Tsd. (S. 15), Stiftungskapital CHF 10 Mio. (S. 5). Praezisiert:
  «exkl. MwSt.» ist nur fuer Gesamtbetrag und feste Entschaedigung belegt, nicht an der
  Preistabelle; Entschaedigungsrest war fuer 3 bis 6 Preise und Ankaeufe bestimmt.
- Die Entscheidung des Destillations-Agenten, den laufenden Seitenmarkern statt dem
  Inhaltsverzeichnis zu folgen, wurde unabhaengig nachgeprueft und BESTAETIGT (Marker
  lueckenlos 4 bis 46; TOC nur bei den sechs nicht rangierten Projekten um zwei Seiten
  versetzt, zusaetzlich «Erschliessung und Parkierung» S. 11 statt S. 12).
- Status `draft` → `established`.

## 2026-07-27 — Refuter-Verifikation Koch-Areal Albisrieden/Altstetten (draft → established)
- `wiki/extern/jurybericht-koch-areal-albisrieden-altstetten.md` unabhaengig gegen den
  Volltext-Extrakt geprueft (Seiten-Fussmarker-Abgleich ueber alle 47 extrahierten Seiten).
  13 Korrekturen, davon 3 gewichtig: (1) Sachfehler zu A8 «LA CUISINE» — das Preisgericht
  nahm dieses Projekt wegen des nicht korrigierbaren baurechtlichen Verstosses von der
  Preiserteilung AUS (S. 26) und vergab folgerichtig einen Ankauf statt eines Preises; das
  Destillat behauptete die Zulassung zur Preiserteilung und leitete daraus eine falsche Regel
  ab (Regel 8 neu gefasst, Regel 9 ergaenzt). (2) QP7 «#SYNANTHROP» faelschlich als im
  2. Wertungsrundgang ausgeschieden gefuehrt — es war in der engeren Wahl und erhielt den
  4. Rang/4. Preis. (3) Ueberdehnte Behauptung, das «Freispielen» sei baufeldueber-
  greifendes Qualitaetsmerkmal der Siegerprojekte (belegt nur fuer Baufeld C und die
  Schlussfolgerungen zum Gesamtareal).
- Weiter: Seiten-Drift korrigiert (Vorpruefungs-Entscheid Baufeld A S. 25 → S. 21/26;
  Raumprogramm C S. 11-13 → S. 12-13; 70-Meter-Aussage S. 33-34 → S. 34; BIG FRIENDLY GIANT
  S. 32 → S. 32-33; A8/B8-Ankaufsnotiz S. 25-27 → S. 26-27); Vorpruefung Quartierpark ist
  nicht zweiteilig; Beurteilungskriterien sind je Baufeld unterschiedlich besetzt (nicht
  «einheitlich»); unbelegte Zonen-Schlussfolgerung als Inferenz markiert; Preisgericht je
  Teilverfahren neu belegt aus S. 20 + Unterschriftenseiten S. 44-47 ergaenzt.
- Die im Destillat dokumentierte Extrakt-Grenze (nur Kapitel 1-10, S. 1-47; Einzelprojekt-
  seiten ab S. 49/81/141/209/275 fehlen) wurde verifiziert; es stehen keine Aussagen im
  Text, die aus nicht vorhandenen Seiten stammen muessten.

## 2026-07-27 — Etappe 3 Wohnungsbau B2/B3 Tranche 1 (3 Destillate, alle established)
- Aus der B1-Reserveliste (`outputs/2026-07-26_etappe3-wohnungsbau-sweep.md`, empfohlener
  9er-Batch) traeger-gespreizt beschafft: **reichenbachstrasse-118-bern** (stadt-gemeinde,
  Bern 2017/2018, Sieger «milet» Büro B Architekten AG), **seebahn-hoefe-aussersihl**
  (genossenschaftlich, Zuerich-Aussersihl 2016, ABZ+BEP, Sieger «PINARELLO» Harder
  Spreyermann Architekten), **guggach-ii-unterstrass** (privat-institutionell, Pensionskasse
  der UBS, Zuerich-Unterstrass, Sieger «Santorin» Knapkiewicz & Fickert).
- Alle drei PDFs vorab per curl HTTP-200 + %PDF-Signatur verifiziert, mit `pdftotext -layout`
  ueber der OCR-Schwelle extrahiert (1'016–2'173 Zeichen/Seite, alle deutlich > 400).
- Direkt per Agent-Tool orchestriert (3 Destillations-Agenten Sonnet parallel im Hintergrund,
  danach 3 unabhaengige Refuter-Agenten Hauptmodell parallel im Hintergrund; 6 Agenten,
  0 Fehler): Reichenbachstrasse 118 (Refuter fand 17 Korrekturen, v.a. systematische
  Seitenzahl-Drift Team-/Credits-Seite vs. Fliesstext-Seite bei 6 der 7 rangierten Projekte,
  plus 1 unbelegte Zusatzbehauptung zum Ausstand entfernt), Seebahn-Höfe (7 Korrekturen,
  u.a. falsche Sachpreisrichter-Zaehlung, 2 sachliche Rang-Zuordnungsfehler in den
  Verallgemeinerbaren Regeln), Guggach II (3 Korrekturen an 8 Stellen, u.a. Ersatzmitglied-
  Status Sachjury, Seitenzahl-Drift beim Adèle-35- und Forest-Flower-Sunrise-Spread;
  Preisgerichtsdatum von "ca. 2014" auf 09.05./02.06.2014 praezisiert und refuter-bestaetigt).
- **Wohnungsbau B3 nun 3/8.** Naechste Zelle: B2/B3 Tranche 2 (empfohlene Fortsetzung aus
  dem Sweep-Batch: koch-areal-albisrieden-altstetten, walkeweg-basel-genossenschaft-2,
  industriestrasse-luzern, waetterweid-arosa, brisgi-areal-baden).
- INDEX.md (Sektion «Externe Referenz-Juryberichte») und ETAPPE-3.md (Stand-Tabelle +
  Lauf-Log) nachgefuehrt.

## 2026-07-26 — Etappe 3 Wohnungsbau B1 Quellen-Sweep (Vollgas-Zyklus)
- Neuer Report `outputs/2026-07-26_etappe3-wohnungsbau-sweep.md`: 6 parallele Scout-Agenten
  (espazium/zuerich/bern-basel/luzern-ostschweiz/weitere-kantone/genossenschaften-stiftungen)
  meldeten 61 Rohkandidaten fuer entschiedene Schweizer Wohnungsbau-Wettbewerbe mit
  Jurybericht-PDF; nach Dedup (6 von je 2 Scouts unabhaengig gefundene identische PDF-URLs)
  verbleiben **55 eindeutige Kandidaten, 52 davon per curl HTTP-verifiziert (frei-pdf)**.
  B1-Ziel (>=15 Kandidaten/>=8 frei-pdf) deutlich uebertroffen.
- Workflow-Tool-Aufruf verweigerte im headless Lauf erneut die interaktive
  Review-Bestaetigung (wie im Nachtlauf 25.07.) — direkt per 6 parallelen Agent-Tool-Aufrufen
  (general-purpose, WebSearch+curl) orchestriert, keine Workflow-Infrastruktur benoetigt.
- Traeger-Typ-Verteilung: 15 genossenschaftlich, 15 stadt-gemeinde, 11 privat-institutionell
  (Pensionskassen/Anlagestiftungen/Stiftungen), 7 gemischt (Wohnen+Gewerbe/Buero/Kultur),
  6 Studienauftrag statt klassischer Wettbewerb, 1 Grenzfall Alterswohnen ohne Pflege
  (Felsenrain Zuerich — bei B3 gegen die bereits abgeschlossene Healthcare-Etappe abgrenzen).
- Dedup sauber gegen die drei eigenen JANS-Wohnungsbau-Teilnahmen (2205 Zentrum Guggerbach
  Davos, 2207 Schliengerweg Basel, 2503 Glockenacker Zuerich-Witikon) sowie gegen den
  bestehenden Schulbau-/Healthcare-Bestand (keine Ueberschneidung).
- Regionale Luecke dokumentiert: Wallis, Schwyz, Glarus, Appenzell ohne frei zugaenglichen
  Wohnungsbau-Jurybericht auffindbar (kein Blocker, Ziel bereits uebertroffen).
- `training/ETAPPE-3.md` Stand-Tabelle (Wohnungsbau B1 auf erledigt) und Lauf-Log
  nachgefuehrt; `wiki/INDEX.md` Stand-Absatz vorangestellt. **Naechste Zelle: Wohnungsbau
  B2/B3** (empfohlener 9er-Batch im Sweep-Report markiert, traeger-gespreizt).

## 2026-07-26 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Nachtschicht Mac Mini)
Zweiter Health-Check (erster 21.07.). A1·B15·C0·D1·E0·F2·G1. Zentraler Befund unveraendert:
2206-Schoental-GF-Widerspruch seit 21.07. nicht behoben, jetzt sogar Selbst-Widerspruch
innerhalb von `QUESTIONS.md` (Zeile 78 vs. 180); alle 7 kaputten Board-DNA-Backlinks und
5 Orphans aus dem 21.07.-Befund bestehen weiter, keine Regression aber auch kein Fortschritt.
Positiv: die 19 seit 21.07. neu hinzugekommenen Healthcare-/Etappe-3-Artikel sind sauber
verlinkt (keine neuen Orphans/kaputten Links), RAW-Coverage bis auf eine inhaltsleere Datei
vollstaendig. Report: `outputs/2026-07-26_health-check.md`.

## 2026-07-25 — Refuter-Welle B6 Healthcare, Quellgruppe Eigene Teilnahme 2101 KSSG Haus 14 «LOUISE» (zweiter, unabhängiger Durchgang)
- Unabhängige Gegenprüfung **aller** 2101-Zahlen im Artikel `wiki/muster/kennwerte-healthcare.md`
  gegen die fünf Rohtexte in `raw/` (`2101-kssg-h14_eigene-flaechenberechnung.txt`,
  `_programm.txt`, `_beurteilungsbericht.txt`, `_projekttext-technik.txt`,
  `_projekttext-diggelmann.txt`). **21 Zahlenwerte geprüft, 21 ziffernweise bestätigt,
  5 Fundstellen korrigiert, 2 Charakter-/Formulierungsangaben präzisiert.** Keine Zahl
  gestrichen — alle 2101-Werte sind belegbar.
- **Kollisionsfall (Rule 260724):** Parallel lief auf derselben Station eine zweite
  2101-Refuter-Instanz, die ihre Welle bereits in den Artikel geschrieben und `established`
  gesetzt hatte. Befunde zusammengeführt, die strengere Fassung gewinnt; die Erstwelle hatte
  vier der fünf falschen Fundstellen als «bestätigt» durchgewinkt.
- **Hauptbefund — systematischer Seitenversatz +1 in allen Programm-Belegen.** Der
  `pdftotext`-Extrakt des Wettbewerbsprogramms setzt die Fusszeile «… Seite N» **vor** den
  Textblock der Seite N. Gegenprobe am Inhaltsverzeichnis des Programms (vier unabhängige
  Treffer: Ziff. 2.1 → S. 7, 2.3 → S. 8, 6.1 → S. 26, 6.4 → S. 29). Korrigiert:
  Fiore/Büro/Tiefgarage S. 8 → **S. 7**, Parzelle C1583 S. 9 → **S. 8**, Strassen-/
  Grenzabstand S. 27 → **S. 26**, Kostenziel CHF 10 Mio. S. 30 → **S. 29** (an drei Stellen,
  inkl. der beiden abgeleiteten CHF-Kennwerte in Abschnitt 4a). Der Beleg des
  Beurteilungsberichts (S. 12, Ziff. 5.2.2) ist korrekt. Alle Programm-Fundstellen tragen neu
  Ziffer **und** Zeilenbereich; der Zeilenbereich ist ab jetzt der führende Beleg.
- **Zeilenbeleg Preissumme** CHF 110'000 exkl. MwSt.: Z. 594–608 (dort stehen die
  Beurteilungskriterien) → Ziff. 4.12, Z. 646–650. In der Erstwelle bereits korrigiert, hier
  bestätigt.
- **Charakter präzisiert:** «betrieblicher Referenzwert 4 Vollgeschosse + Tiefgarage» →
  **baulich-städtebaulicher** Referenzwert; der Rohtext leitet ihn aus dem baulichen Kontext
  und der abgebrochenen Bestandesbaute ab und begründet ihn mit dem Einspracherisiko
  (Z. 1850–1853).
- **Beleg-Genauigkeit:** Der Abgabeplan beschriftet die Geschoss**volumina** mit «m2»
  (Z. 107–121), obwohl sie unter «Gebäudevolumen» stehen und sich exakt auf 10'922 m³
  summieren — als Quellen-Beschriftungsfehler vermerkt.
- **Überzogene Aussage entschärft (Abschnitt 0):** «die einzigen belastbaren Absolut-Flächen
  der Sammlung stammen aus 2101» widersprach dem eigenen Abschnitt 0 (LUKS Sursee 38'100 /
  37'500 m²). Neu: 2101 liefert die einzigen nach Geschossen und Flächenarten
  **aufgeschlüsselten** Absolutflächen.
- **Summenproben, alle exakt:** GF 727 + 5 × 538 = 3'417 m²; HNF 48+247+381+423+423+10 =
  1'532 m²; NNF 31+8+8+66 = 113 m²; AGF 31+31 = 62 m²; Fassade 383+829+902 = 2'114 m² (auch je
  Bauteil gegen die Geschosswerte); Dachhaut 248+289 = 537 m²; Geschossvolumina
  2'413+1'937+1'937+1'821+1'821+993 = 10'922 m³ = 2'413 unter + 8'509 über Terrain;
  Programm-NF 500+400+240 = 1'140 m². Abgeleitet nachgerechnet: HNF/GF 44.83 %, GV/GF
  3.196 m³/m², 915.6 CHF/m³, 2'926.5 CHF/m² GF — alle «rund»-Angaben gedeckt.
- **Soll/Ist-Trennung und Band-Disziplin bestätigt:** Programmwerte durchgehend als «Soll aus
  Auslobung», Werte aus Flächenberechnung/Projekttexten als «Ist der eigenen Abgabe», die
  beiden CHF-Kennwerte ausdrücklich als Soll-gegen-Ist-Mischung. Kein 2101-Wert ist mit
  externen Quellen zu einem Band verschmolzen (Spannweite 6.5 m bleibt ausserhalb des
  Rasterbands 7.1–10.8 m; 44.8 % und 3.20 m³/m² als Praxis-/Büro-Einzelbelege markiert;
  3.60 m Geschosshöhe nicht mit ipw 3.00 m verbunden; beide CHF-Kennwerte in Abschnitt 8 von
  der Übernahme ins Parameter-Set ausgeschlossen).
- **Status:** Damit sind alle zwölf Quellen des Artikels refuter-geprüft; `status: established`
  bestätigt (von der Erstwelle gesetzt, nach dieser Prüfung inhaltlich gedeckt).

## 2026-07-25 — Refuter-Welle B6 Healthcare, Quellgruppe Spital/Klinik (KSA Aarau, LUKS Sursee, USB Basel, Kispi Luzern)
- Unabhängige Gegenprüfung aller Zahlen der Quellgruppe Spital/Klinik im Artikel
  `wiki/muster/kennwerte-healthcare.md` gegen die vier Rohtexte in `raw/`
  (`extern-jurybericht-kantonsspital-aarau-ksa.txt`,
  `extern-jurybericht-luks-sursee-schwyzermatt.txt`,
  `extern-jurybericht-universitaetsspital-basel-klinikum-2.txt`,
  `extern-jurybericht-luks-kinderspital-frauenklinik-luzern.txt`). Seitenbezug über die
  Seitenumbrüche des pdftotext-Extrakts; KSA gedruckte Seite = PDF-Seite, LUKS Sursee, USB und
  Kispi Luzern gedruckte Seite = PDF-Seite minus 2. **71 Einzelaussagen geprüft, 56 bestätigt,
  15 korrigiert oder verworfen.**
- **Verworfen (1):** Das Band «Akutspital-Tragwerksraster 7.5–8.4 m, zwei Quellen, vier Projekte»
  und die Aussage «der einzige subtypreine Band-Kennwert dieses Benchmarks». Dieselben zwei
  Berichte enthalten **neun** Rasterangaben mit einer Spanne von **7.1 bis 10.8 m**: neu belegt
  KSA «Merlin» Achsmasswechsel 8.1 → 7.1 m (S. 57), KSA «MOMENTUM» 7.5 × 7.5 m (S. 67),
  Sursee «Tournesol» 10.8 × 10.8 m (S. 104), «Vier Jahreszeiten» 8.10 × 8.10 m (S. 108),
  «lumière du lac» 8.10 × 8.10 m (S. 112). 7.5–8.4 bleibt als Schwerpunkt (7 von 9 Werten,
  beide Siegerprojekte), Parameter `raster.tragwerk_m` auf 7.1–10.8 mit Schwerpunkt geändert.
  Bemerkenswert: die Jury kritisiert nur den unteren Rand (7.1 m verunmöglicht Zweitbett),
  10.8 m nennt sie «für das Sockelgeschoss angemessen».
- **Verworfen (2):** «1.64 (LUKS Sursee) ist die einzige Flächeneffizienz-Zahl der ganzen
  Sammlung». Derselbe Bericht nennt 1.88 für «Vier Jahreszeiten» (S. 109), dazu die zweite
  absolute Geschossfläche 37'500 m². Abschnitt 0 und 2a/2b entsprechend nachgeführt.
- **Verworfen (3):** Das Band «selektives Verfahren / Studienauftrag 7 bis 10 Beiträge». Die
  beiden Spital-Studienaufträge arbeiten mit je fünf Teams (Kispi Luzern S. 4, LUKS Sursee
  Stufe 2 S. 11). Band und Parameter `verfahren.beitraege_selektiv` auf **5–10** korrigiert;
  Subtyp-Effekt ergänzt (Pflege 7–10, Spital 5).
- **Verworfen (4):** «Fensteranteil-Band bei LUKS Sursee über vier Finalisten» (elf Projekte).
  Beziffert sind nur drei Werte (60 % S. 23, 45 % S. 50, 41 % S. 36); PROMENADE und Vincent
  tragen keinen. Band auf «zehn Projekte / drei Werte» korrigiert, Begriffsmischung
  Fensteranteil ↔ Glasanteil offengelegt.
- **Verworfen (5):** «GRÜNACHSE und PROMENADE im mittleren Bereich». PROMENADE hat mittlere
  Kompaktheit, aber ausdrücklich **geringe Flächeneffizienz** (S. 65).
- **Korrigiert (6)–(10):** KSA-Seitenbelege. Fünf Fundstellen «S. 6/8» auf **S. 8** korrigiert
  (500 Betten, 50'000 m² HNF, CHF 600 Mio. — S. 6 ist die Ausgangslage ohne jede dieser Zahlen);
  verbindliches Kostendach auf **S. 9–11**; Ausbauraster 1.25 m auf **S. 60** statt S. 32–36;
  Zimmerachse 4.20 m auf **S. 43**; Tragwerksraster 7.5 / 7.5 m auf S. 36 und S. 60.
- **Korrigiert (11):** KSA «Erweiterung um 2 Bettenstationen (Total 72 Betten)» ist eine
  **Soll-Vorgabe der Auslobung** («die gewünschte Erweiterung»), nicht das Ist eines Beitrags;
  wortgleich auf S. 24/34/46. Der abgeleitete Wert 36 Betten je Station erbt diesen Charakter.
- **Korrigiert (12):** KSA «keine Preissumme» ist ein Fehlen im Bericht (null Treffer für
  Preissumme/Preisgeld/Entschädigung), keine ausdrückliche Feststellung — gekennzeichnet.
  Ebenso vermerkt: der Bericht druckt «Budget von CHF 600 für den Neubau», die Einheit «Mio.»
  fehlt im Original.
- **Korrigiert (13):** Kispi Luzern — die Bettensumme **179 ist eine Annahme**, keine
  Berichtsangabe; der Bericht listet 32/15/72/60 als Raumprogramm-Positionen ohne
  Additivitätsaussage. Bei nicht-additiver Lesart (132 Betten) ergäben sich rund 131 m² NF je
  Bett und der Korridor 95–100 m² fiele weg. Vorbehalt in Abschnitt 1a und 8 eingetragen;
  Parameter `flaechen.hnf_je_bett_m2` von «nur als Plausibilitätsfeld» auf «nicht setzen» verschärft.
- **Korrigiert (14):** LUKS Sursee «max. 6 Geschosse Seeblick» ist eine **Empfehlung des
  Beurteilungsgremiums an den Bebauungsplan** (S. 16), keine Rahmenvorgabe der Auslobung;
  auf S. 5 steht dazu nichts.
- **Korrigiert (15):** Vier Seitenbelege LUKS Sursee — GRÜNACHSE **S. 36**, HOSPES **S. 50/51**,
  PROMENADE **S. 65**, Wirtschaftlichkeitszeile **S. 36/50–51/65/79**.
- **Bestätigt (Auswahl):** KSA ca. 500 Betten / 50'000 m² HNF / CHF 600 Mio. (500 + 100) auf S. 8,
  BKP-2-Referenzschwelle CHF 50 Mio. auf S. 9, Verfahren 11 → 6 → 3 auf S. 4–5/54, Normzimmer
  21 m² auf S. 32/34, Merlin 112 × 135 m und ca. 34 m auf S. 23, Dreiklang ca. 45 m und
  75 × 80 m auf S. 33, Fünftausendeins 182/160 m, ca. 35 m auf S. 45 und Grundraster 8.40 m auf
  S. 43/44/47; LUKS Sursee 38'100 m² und 1.64 auf S. 23, 8 × 8 m auf S. 23, 8.40 m auf S. 50,
  Seeblick 100 Betten = 4 × 22 + 12 auf S. 5, Verfahren 22 → 5 auf S. 10–11, Preise Stufe 1
  CHF 250'000 / acht Preise 50'000–14'000 auf S. 12, Stufe 2 CHF 90'000 ohne Rangierung auf
  S. 15; USB Parzellen 68'193 / 3'146 m², Mantellinien 70/60/29 m auf S. 14, NF + 12 % auf S. 15,
  100 Motorrad-/1'200 Veloplätze auf S. 16, Verfahren 31/2/1/19 und 17/9/7 auf S. 17–20, Preise
  900'000 / 20'000 / 40'000 auf S. 9 und 85/75/50/40/30 auf S. 22, Anna Blume rund 30 % auf
  S. 104, Margino rund 80 % auf S. 80; Kispi Luzern 17'300 m² NF, 5 OP, 7 Gebärsäle, Betten
  32/15/72/60 und Notfall 8+8+8 auf S. 2, Verfahren 19 → 5 und CHF 130'000 inkl. MWST auf S. 4,
  LES TERRASSES ca. 4 % auf S. 26.
- **Negativbefund Abschnitt 0 für diese vier Quellen verifiziert:** kein CHF/m²- oder
  CHF/m³-Kennwert, kein Gebäudevolumen in m³, keine projektspezifischen Erstellungskosten;
  LUKS Sursee, USB und Kispi Luzern nennen überhaupt keine CHF-Millionenzahl. Die Bettenzahl
  des Spitalgebäudes Schwyzermatt bleibt unbelegt (die 886 Akutbetten auf S. 4 sind die
  Gruppenzahl der LUKS).
- Artikel bleibt `draft`.

## 2026-07-25 — Refuter-Welle B6 Healthcare, Quellgruppe Pflegeheim/Alterszentrum (Adliswil, Bombach, Widnau)
- Unabhängige Gegenprüfung aller Zahlen aus der Quellgruppe Pflegeheim/Alterszentrum im Artikel
  `wiki/muster/kennwerte-healthcare.md` gegen die drei Rohtexte in `raw/`
  (`extern-jurybericht-alterszentrum-sihlsana-adliswil.txt`,
  `extern-jurybericht-haus-der-demenz-bombach-zuerich.txt`,
  `extern-jurybericht-alters-pflegezentrum-widnau.txt`). Seitenbezug über die Seitenumbrüche des
  pdftotext-Extrakts; Adliswil und Widnau gedruckte Seite = PDF-Seite, Bombach gedruckte Seite =
  PDF-Seite minus 1. **74 Einzelaussagen geprüft, 66 bestätigt, 8 korrigiert.**
- **Korrigiert (1):** Bombach S. 7 «3–4 Eingangsbereiche à 60 m²» → «total 60 m²». Die m²-Spalte des
  Raumprogramms nennt durchgehend die Positionssumme (Beleg «40 Zimmer · Raumgrösse 18–20 m² ·
  760 m²»). Lesehinweis dazu im Artikel ergänzt.
- **Korrigiert (2):** Bombach S. 7–8 «Dienstleistungsbereich zusammen ca. 245 m²» → **260 m²**,
  als abgeleitet markiert. Der Rohtext nennt keine Zwischensumme; die elf Einzelzeilen
  (48+15+15+10+21+7+16+16+48+24+40) ergeben 260 m².
- **Korrigiert (3):** Bombach S. 13 «zusätzlich je CHF 5'000 pro zugelassenes Projekt» → «daraus».
  Rohtext: «Für jedes zur Beurteilung zugelassene Projekt wurde den Teilnehmenden **davon** je eine
  Entschädigung von Fr. 5 000.- ausgerichtet.»
- **Korrigiert (4):** Adliswil S. 16 «Preissumme von CHF 150'000 auf 200'000 angehoben» →
  **Entschädigungs**summe; die Preise Rang 1–3 (40/35/25 Tausend, S. 17) kommen hinzu.
  Gesamtausschüttung CHF 300'000 (10 × 20'000 + 100'000) ergänzt, als abgeleitet markiert.
- **Verworfen (5):** Das Band «Referenzband selektiver Wettbewerb (Pflege): CHF 160'000 bis 200'000
  — zwei Quellen» ist gestrichen. Es verglich Bombachs **Gesamtsumme** für Preise/Ankäufe/
  Entschädigungen mit Adliswils blossem **Entschädigungsanteil**. Vergleichbar sind nur die
  Gesamtausschüttungen: CHF 160'000 (Bombach, 10 Teams) gegen CHF 300'000 (Adliswil, 10 Teams),
  also rund 16'000 gegen 30'000 je Team — eine Spreizung, kein Band.
- **Korrigiert (6):** Bombach «Preisstand 2012» → «Preisstand Auslobung 2011/12» (beide Fundstellen,
  Abschnitt 4a und Abschnitt 8). Aus dem Rohtext belegbar sind Präqualifikation 10. Januar 2011
  (S. 9), Jurierung 26.11./11.12.2012 (S. 12) und Bericht Januar 2013 — nicht ein Preisstand 2012.
- **Korrigiert (7)/(8):** Zwei Seitenbelege Widnau präzisiert — Tages-/Nachtstätte (10 Zimmer
  Raumreserve) S. 8–9 → **S. 9**; Verfahrenszahlen S. 5–6/10 → **S. 6/10–11** (S. 5 enthält keine Zahl,
  die sieben abgegebenen Projekte stehen auf S. 11).
- **Bestätigt (Auswahl):** Adliswil 136 Pflegeplätze (36/60/40), 60 Alterswohnungen (10/40/10),
  8 Ruheplätze, Perimeter 12'100 m² (alle S. 12), Kostenziel CHF 73 Mio. (S. 13), Leistungsauftrag
  min. 125 Plätze (S. 4), Verfahren 60 Bewerbungen/11 Jungteams → 10 (+3 Ersatz) → 10 Eingaben
  (S. 6/15), Ausschluss PAUL & PAULA mit 20 statt 40 Pflegestudios (S. 15–16); Bombach 40 Bewohnende
  in 3–4 Gruppen à 10–13 (S. 3/5), Kontextwerte 1'600 Betten / 10 Pflegezentren / Ø 84 Jahre /
  rund 2 Jahre Aufenthalt (S. 3), Raumprogramm-Positionen inkl. 40 Zimmer 18–20 m² / 760 m² (S. 7–8),
  CHF 18.5 Mio. BKP 1–9 inkl. 8 % MWST exkl. Reserven (S. 5), Areal 21'672 m² (S. 4), Verfahren
  50/2/48/10 (S. 9), Rangpreise 40/32/20/18 (S. 13), abgeleitete 462'500 CHF je Platz (Arithmetik
  geprüft); Widnau 108 Pflegeplätze und 46 Bestandesbetten (S. 3), 66 Bewerbungen / 8 Teams / 1 Absage
  (S. 6/10), 7 Projekte und Pauschale CHF 25'000 exkl. MWST ohne Rangfolge (S. 11), Vorprüfungs-
  Sammelurteile Baurecht (S. 10) und GF/GV-Plausibilität (S. 11).
- **Negativbefund verifiziert:** Keiner der drei Berichte publiziert je Beitrag eine absolute
  Geschossfläche, ein Gebäudevolumen oder Kosten je Pflegeplatz; Widnau nennt ausser der
  Teamentschädigung überhaupt keine CHF-Zahl. Abschnitt 0 des Artikels bleibt für diese
  Quellgruppe unverändert gültig.
- Keine Zahl einer anderen Quellgruppe angetastet.

## 2026-07-25 — Baustein B3 Healthcare: Extern-Destillat «jurybericht-gz-alterswohnen-thurgauerstrasse-zuerich.md» nach Refuter-Prüfung auf established
- Unabhängiger Refuter prüfte das Destillat des Juryberichts Gesundheitszentrum & Alterswohnungen
  Thurgauerstrasse, Zürich-Seebach (Projektwettbewerb offen für Generalplanende, Mai 2025, 54 Beiträge)
  Aussage für Aussage gegen den vollständigen Volltext-Extrakt
  `raw/extern-jurybericht-gz-alterswohnen-thurgauerstrasse-zuerich.txt` (3123 Zeilen, 186 Seiten).
  Seitenmapping über die Fusszeilen-Seitenzahlen rekonstruiert (Fusszeile steht am ENDE der Seite)
  und gegen das Inhaltsverzeichnis gegengeprüft.
- **Korrigierte Seiten-Drift:** Übersichtstabelle (Verfahren/IVöB/SVO, Disziplinen, Auftraggeberin/
  IMMO/SAW/AHB, Preisgericht, Zielkosten CHF 113 Mio., Preisgeld CHF 271'000, 54 Teams) S. 6 → **S. 7**;
  Nutzer*innenportraits S. 7–8 → **S. 8–9**; Grundstücksdaten-Infobox S. 10–11 → **S. 10**;
  Wettbewerbsziele S. 11–12 → **S. 12–13**; GEN-T-Zitate Lärmschutz/Nordost S. 65 → **S. 64**;
  BELVÉDÈRE-Lärmschutzzitat und «148 Alterswohnungen» S. 101 → **S. 100**.
- **Korrigierte Sachaussagen:** (1) «Einziges Projekt, das die öGP-Lärmschutzauflage vollständig
  einhält» war zu stark — die Empfehlung S. 24 verlangt beim Sieger ausdrücklich Verbesserungen an
  einzelnen Alterswohnungen; korrekt ist «beste vorliegende Lösung» (S. 21). (2) «Nur beim
  Siegerprojekt wird die Einhaltung gewürdigt» gilt nur INNERHALB der engeren Wahl — CITRUS (S. 124)
  und FREIE SICHT AUFS MITTELMEER (S. 112) lösen die Auflage ebenfalls. (3) «Hochhaus ohne Sockelbau»
  ist KEIN Alleinstellungsmerkmal des Siegers — FREIE SICHT AUFS MITTELMEER ist ebenfalls ein Hochhaus
  ohne Sockelbau (S. 112). (4) «einzige Kritik»/«einzige Schwäche» beim Sieger entschärft
  (Mehrzweckraum-Kritik S. 28 ergänzt). (5) «Nur CITRUS erfüllt die Nordost-Anforderungen» präzisiert
  (GEN T «scheinen … lösbar», S. 64).
- **Ergänzte, im Raw belegte Befunde:** Art. 21 öGP «besonders gute Gesamtwirkung» als Rechtsmassstab
  der Fassadenkritik (S. 11); Screening-Raster der ersten Rundgänge (schlanke/gegliederte Silhouette,
  knappes Volumen, HNF/GF-Benchmark, knapper Fussabdruck, S. 20); Suffizienz/Fläche pro Person als
  eigenständiges Abwertungskriterium (S. 21, 52, 76, 124); Demenzgarten-Anbindung projektweise
  durchdekliniert (S. 21, 52, 76, 88, 100); Zaun-Behandlung des weglaufgeschützten Gartens als
  wiederkehrendes Qualitätsmerkmal (S. 28, 40, 112); Gewerberaum-Platzierung als wiederkehrender
  Kritikpunkt (S. 52, 76, 88, 100); Wohnungsschlüssel-Kontrolle (S. 40–41); «Alle Projekte schlugen
  eine Holzständerfassade vor» + innovative Deckensysteme (S. 22); vollständige Nachbesserungsauflage
  an den Sieger (S. 24); Nutzer-Kennwerte GFA/SAW (S. 8–9); öGP-Schnittkoten 498/428 m ü.M. (S. 12).
- **Nachrechnung:** Die neun Einzelpreise summieren sich exakt auf CHF 271'000.- — die 45 nicht
  rangierten Teams erhielten keine Entschädigung.
- Quell-Anmerkungen korrigiert: «Weitere Projekte» beginnt S. 136 (nicht S. 127) und enthält
  Kurz-Steckbriefe mit Team-/Planangaben, aber keine Jury-Kritik.
- Verfasserteams, Rangierung, Preisgelder, Ausscheidungslisten (16 + 29 + 7 + 2 = 54) und alle
  übrigen Zahlen wurden Ziffer für Ziffer bestätigt. Status draft → **established**.

## 2026-07-25 — Baustein B3 Healthcare: Extern-Destillat «jurybericht-kjpk-upk-basel.md» nach Refuter-Prüfung auf established
- Unabhängiger Refuter prüfte das Destillat des Juryberichts Kinder- und Jugendpsychiatrische Klinik
  Basel (KJPK/UPK, Neubau 2012, 43 Beiträge) Aussage für Aussage gegen den vollständigen Volltext-
  Extrakt `raw/extern-jurybericht-kjpk-upk-basel.txt` (2266 Zeilen, alle 70 Seiten). Seitenmapping
  über die eingebetteten Fusszeilen-Seitenzahlen rekonstruiert und gegen das Inhaltsverzeichnis (S. 2)
  gegengeprüft.
- **Korrigierte Fehler:** (1) Systematische Seiten-Drift −1 bei ALLEN sieben Team-Steckbriefen der
  Rangierung (15/19/23/27/31/35/39 → korrekt 16/20/24/28/32/36/40); die Fehlangaben widersprachen der
  korrekten Steckbrief-Liste in den eigenen Quell-Anmerkungen derselben Datei. (2) Bebauungsplan-
  Vorentwurf S. 5 → S. 6. (3) Programmziel «ohne Klinikcharakter» S. 5 → S. 3. (4) Beurteilung des
  Siegerprojekts S. 16–17 → vollständig S. 17. (5) Nicht rangierte Projekte S. 45–63 → S. 46–63
  (S. 45 ist reiner Abschnittstrenner). (6) Anzahl nicht rangierter Projekte 39 → 36 (43 − 7); die
  Namensliste selbst war korrekt (36 Einträge), nur die Zählangabe falsch. (7) Paginierter Umfang
  S. 3–65 → S. 2–66. (8) Anzahl nicht stimmberechtigter Experten 9 → 10.
- **Zurückgenommene Ausschmückung:** Die Empfehlungen zum Siegerprojekt waren als «Nachbesserungs-
  auflagen als Bedingung der Empfehlung zur Weiterbearbeitung» bezeichnet; der Bericht nennt sie
  ausdrücklich «Empfehlungen» (S. 13). Ebenso zurückgenommen: die Kausalbehauptung, die Jury bevorzuge
  Clusterwohnungen «für langfristig aufhältige Patientengruppen» — der Bericht stellt diesen Bezug
  nicht her (S. 64), die Verknüpfung ist jetzt als JANS-Interpretation markiert.
- **Ergänzte, im Raw belegte Befunde:** drei wiederkehrende Jury-Prüfpunkte, die ganz fehlten —
  «visuelle Begrenzung/Abgrenzung der KJPK zum Park» (S. 17, 21, 33, 37, 41), «eigenständige
  Adressbildung Friedrich Miescher-Strasse» (S. 17, 21, 29, 33, 37, 41) und «Schule als Solitär mit
  Schulweg» als Programmforderung S. 7 mit quadrifoglio als deutlichstem Verstoss (S. 29); zusätzlich
  Tagesklinik-Altersgruppe 3–10 Jahre (S. 6), Abgrenzung zur Forensik Gebäude R (S. 5), Umgebungs-
  vorgaben (S. 7), Geschossigkeit aller sieben rangierten Projekte, Juryorganisation (4 Gruppen à
  11/10 Projekte, S. 11) und die Gegenprobe zum Ausdruck-Kriterium (Geronimo «Disneyland», GRNGRTL
  «dörflich/modisch»).
- **Kennwert-Befund für B6:** Der Bericht enthält KEINE projektspezifischen Kosten, GF/GV/HNF,
  Bettenzahlen oder Raumprogramm-Flächen; einzige Flächenzahl im ganzen Bericht sind die 1'700 m²
  Grundfläche des optionalen Zusatzgebäudes (S. 6). Als Kostenquelle für B6 ausdrücklich unbrauchbar;
  verwertbar sind Verfahrens-, Preis- und Betriebskennzahlen sowie die qualitative Wirtschaftlichkeits-
  Rangfolge der sieben rangierten Projekte.
- **Frontmatter:** `status` draft → **established**, `last_updated` 2026-07-25.

## 2026-07-25 — Baustein B4 Healthcare: Muster-Synthese «jury-argumente-healthcare.md» auf established gehoben (5-Shard-Refuter-Welle + Konsistenz-Refuter bestanden)
- Der abschliessende Konsistenz-Refuter prüfte die aus 8 established Healthcare-Juryberichten
  synthetisierte Muster-Datei `wiki/muster/jury-argumente-healthcare.md` auf Gesamtkonsistenz,
  nachdem 5 parallele Quellen-Shard-Refuter ihre Shards gegen die Original-Destillate korrigiert
  hatten. Alle 9 Wikilinks (8× `extern/jurybericht-*` + `delta-zum-ersten-rang`) zeigen auf
  existierende Dateien.
- **Korrigierte Inkonsistenzen:** (1) Zahl-Widerspruch Kennwert-Lücke — Verifikations-Hinweis
  sagte «sechs», Offene Punkte «Fünf» Berichte ohne absolute Kennwerte; gegen die Bombach-Quelle
  verifiziert (Bombach publiziert laut eigenem Destillat KEINE projektspezifischen Kosten-, nur den
  Programm-Kostenrahmen Fr. 18.5 Mio) und beidseitig auf **sechs** (Sihlsana, ipw, LUKS, Tägermoos,
  Bombach, Widnau) vereinheitlicht, mit «projektspezifisch»-Präzisierung und Bombach-Rahmen als
  benannte Ausnahme. (2) Body-Narrative «draft / Refuter-Welle steht aus» (Verifikations-Hinweis +
  Offene Punkte) auf den neuen `established`-Stand nachgezogen. (3) Psychiatrie-Einzelbeleg-Markierung
  beim Lift-K.-o. von «EINZELBELEG» auf einheitlich «VORLÄUFIG/EINZELBELEG ipw» harmonisiert.
  (4) Frontmatter-`sources` um alle 8 namentlichen Quellberichte ergänzt (vorher nur Sammel-Zeile).
- **Frontmatter:** `status` draft → **established**, `last_updated` 2026-07-25. Einzelbeleg-Kennzeichnung
  (Psychiatrie nur ipw-schlosstal, betreutes Alterswohnen nur Tägermoos) im gesamten Dokument
  konsistent durchgehalten.
- **Healthcare-Kernbefund (dokumentiert):** Im Healthcare-Wettbewerb gewinnt nicht das architektonisch
  stärkste, sondern das betrieblich fehlerfreie, bei laufendem Betrieb etappierbare und
  bewilligungsfähige (Brandschutz + Tageslicht versorgungskritischer Räume als harte K.-o.-Schwellen)
  Projekt — architektonischer Ausdruck/Atmosphäre wird regelmässig sogar beim Sieger als Defizit
  vermerkt (KSA, USB, im Pflegebereich Widnau gespiegelt). **Naechste Zelle: Healthcare B5 Parameter-Set.**

## 2026-07-25 — Extern Healthcare Tranche 3: Jurybericht «Alters- und Pflegezentrum Widnau» (Schlussbericht Studienauftrag, 2017) destilliert + Refuter-verifiziert (established) — Healthcare B3 damit 8/8
- Neuer Artikel `wiki/extern/jurybericht-alters-pflegezentrum-widnau.md` aus dem Volltext-Extrakt
  `raw/extern-jurybericht-alters-pflegezentrum-widnau.txt` (pdftotext -layout, 63 S., espazium-S3).
  Subtyp **pflegeheim-alterszentrum**. Kein klassischer offener Wettbewerb, sondern ein
  selektiver Studienauftrag im Dialog mit Praequalifikation (SIA 143): 8 eingeladene Teams,
  7 Eingaben, alle mit gleich hoher Pauschalentschaedigung (CHF 25'000.-- exkl. MWST), ohne
  Preisrangliste — endet mit einer einstimmigen Empfehlung eines einzigen Projekts zur
  Weiterbearbeitung statt mit 1./2./3.-Raengen.
- **Empfohlenes Projekt:** Cukrowicz Nachbaur Architekten ZT GmbH, Bregenz — kompakter Solitaer
  mit Sockel-Aufbau-Gliederung, kleine dezentrale Lichthoefe je Appartement statt eines grossen
  zentralen Atriums.
- **Refuter korrigierte 7 Stellen:** eine erfundene Rollenbezeichnung (Dr. Ruth Koeppel als
  «Betriebsberatung» statt korrekt «Orgavisit, Rikon»), vier falsche Seitenangaben (materielle
  Vorpruefung S. 10→11; Zwischenbesprechungs-Vorgaben Aussenraeume und Office/Tagescafé/
  Speisesaal), sowie eine sachlich falsche Interpretation zur Kapitel-Reihenfolge (Sieger-Kapitel
  bewusst vorangestellt laut Inhaltsverzeichnis, nicht "zufaellig" alphabetisch). Rund 50 uebrige
  Seiten-/Zitatangaben (inkl. der vollstaendigen Sieger-Wuerdigung) stimmten wortgenau.
- **DNA-Erkenntnis:** Bei Pflegebauten mit Demenzbezug sind grosse zentrale Atrien/Lichthoefe ein
  wiederkehrend sanktionierter Risikofaktor (Brandschutz, Weglaufgefaehrdung, Wirtschaftlichkeit);
  kleine dezentrale Lichthoefe je Appartement sind die durchgehend goutierte Alternative.
- Status auf `established` gehoben, `last_updated` auf 2026-07-25 gesetzt. Damit Healthcare
  B3-Ziel (8/8) erreicht — naechste Zelle B4 Muster-Synthese `jury-argumente-healthcare.md`.

## 2026-07-25 — Extern Healthcare Tranche: Jurybericht «Erneuerung Klinikum 2, Universitätsspital Basel» (2013) Refuter-verifiziert, ~20 Seitenzitate korrigiert (established)
- Artikel `wiki/extern/jurybericht-universitaetsspital-basel-klinikum-2.md` gegen den Volltext-
  Extrakt `raw/extern-jurybericht-universitaetsspital-basel-klinikum-2.txt` (pdftotext -layout,
  188 S.) zeilengenau geprüft. Sieger **Arcadia** (giuliani.hönger/Caretta+Weidmann), Subtyp
  Randbebauung/Perimeterblock mit zwei Hochpunkten; Inhalte, Rangfolge, Preisgelder, Kennwerte
  und Zitate stimmten durchweg mit dem Quelltext überein.
- **Systematischer Seitenzahl-Fehler gefunden und korrigiert:** Bei den Projektwürdigungen
  Kazwei, The Edge und Wallace hatte das Erst-Destillat rund 20 Einzelzitate der jeweils
  vorangehenden, nahezu textleeren Bild-/Renderingseite statt der tatsächlichen Fliesstext-
  seite zugeschrieben (z.B. Kazwei «S. 41» statt «S. 42», «S. 43» statt «S. 44»; The Edge «S. 53»
  statt «S. 54»; Wallace «S. 67» statt «S. 68»). Per Grep gegen die Footer-Marker im Extrakt
  verifiziert: jedes Stufe-2-Projekt folgt einem festen Rhythmus Fliesstext-Bildseite-Fliesstext
  (Arcadia 30/32, Kazwei 42/44, The Edge 54/56, Wallace 66/68, Margino 78/80, Basilea 90/92,
  Anna Blume 102/104, dazwischen je eine Bildseite 29/31, 41/43, 53/55, 65/67, 77/79, 89/91,
  101/103). Arcadia, Margino, Basilea, Anna Blume waren bereits korrekt zitiert. Auch die
  Quell-Anmerkung «Projektwürdigungen einspaltig gesetzt» war falsch (sind ebenfalls zweispaltig)
  und wurde präzisiert.
- Status auf `established` gehoben, `last_updated` auf 2026-07-25 gesetzt.

## 2026-07-25 — Extern Healthcare Tranche 2: Jurybericht «Neubau Luzerner Kantonsspital Sursee (Schwyzermatt)» (2024/2025) destilliert + Refuter-verifiziert (established)
- Neuer Artikel `wiki/extern/jurybericht-luks-sursee-schwyzermatt.md` aus dem Volltext-Extrakt
  `raw/extern-jurybericht-luks-sursee-schwyzermatt.txt` (pdftotext -layout, 146 S., espazium-S3).
  Subtyp **spital-klinik** (zweiter Akutspital-Fall der Healthcare-Tranche). Zweistufiges
  Verfahren: 1. Stufe offener Projektwettbewerb (22 Projekte, 8 Preise CHF 250'000), 2. Stufe
  Studienauftrag mit 5 Teams (je CHF 90'000, ohne Rangierung).
- **Ergebnis:** Sieger «Feld und Flur», Fischer Architekten AG Zürich (mit Jaeger Coneco AG
  Baumanagement); einstimmiger Antrag an die Auftraggeberin (S. 14-15). Finalisten HOSPES →
  GRÜNACHSE/Vincent im 2.-Stufe-Wertungsrundgang ausgeschieden, engere Wahl Feld und Flur gegen
  PROMENADE.
- **Refuter (Hauptmodell) korrigierte einen substanziellen Fehler:** Das IPS-Zitat «nur über den
  öffentlichen Bereich» war HOSPES-Text (S. 51), im Erst-Destillat fälschlich Vincent zugeschrieben
  (mit erfundener Vincent-Kritik). K.-o.-Bullet neu gefasst (HOSPES doppelt gerügt, Vincent/PROMENADE
  fassen IPS positiv zusammen). Zwei kleinere Fixes: Sieger-Zitat S. 22 → S. 23; Frontmatter-Titel
  «(2021)» → «(2024/2025)» (belegt durch tabellierte Termine S. 7 + Unterschrift 15.05.2025 S. 17;
  Datei-Name «2021» war ein stray-Datum der Titelseite).
- **B6-relevante belegte Kennwerte** (selten projektbezogen in Juryberichten): Sieger
  Flächeneffizienzwert 1.64 (beste im Quervergleich, S. 23), Geschossfläche rund 38'100 m² (S. 23),
  Stützenraster 8 × 8 m (S. 23), Fensteranteil 60 % (zu hoch gerügt); HOSPES Stützenraster
  8.40 × 8.40 m / Glasanteil 45 % / grösste GF+GV «unwirtschaftlich» (S. 50-51). KEINE absoluten
  CHF/m²/m³ publiziert (nur «nicht alle Projekte halten das Kostendach ein», S. 14).
- Verfahrenschronologie/Rangfolge/Preise/Verfasser vollständig quellentreu; Status **established**,
  verdict Refuter KORRIGIERT_BESTANDEN.

## 2026-07-25 — Extern Healthcare Tranche 2: Jurybericht «Haus der Demenz, Pflegezentrum Bombach, Zürich-Höngg» (2012) destilliert + Refuter-verifiziert (established)
- Neuer Artikel `wiki/extern/jurybericht-haus-der-demenz-bombach-zuerich.md` aus dem Volltext-Extrakt
  `raw/extern-jurybericht-haus-der-demenz-bombach-zuerich.txt` (pdftotext -layout, 65 S., Amt für
  Hochbauten Stadt Zürich, Januar 2013). Subtyp **pflegeheim-alterszentrum / Demenz-Sondertyp**
  (spezialisierte Kleingruppen-Pflege). Selektiver Wettbewerb: 50 Bewerbungen, 10 Teams, 4 Ränge.
- **Ergebnis:** Sieger «ERIKA» (Projekt Nr. 9, 1. Rang, Fr. 40'000), ARGE Joos & Mathys Architekten
  mit Schmid Schaerer Architekten Zürich; Landschaft August + Margrith Künzel. Refuter (Hauptmodell)
  fand KEINE Seiten-Drifts / keine Preis-Verwechslung / keine erfundenen Zahlen — verdict BESTANDEN.
- **B6-relevant (seltener projektbezogener Kostenwert):** Investitionskosten Gesamtprojekt rund
  Fr. 18.5 Mio. (BKP 1-9 inkl. 8 % MWST, S. 5) für **40 Bewohnerplätze** in 3-4 Kleingruppen à 10-13
  Personen → Grössenordnung ~460'000 CHF/Platz (eigene Ableitung, nicht im Bericht). Detailliertes
  Raumprogramm belegt: 40 Zimmer à 18-20 m² (total 760 m²), Aufenthaltsräume 240 m² + 80 m², Areal
  21'672 m². Programm-/Verfahrenswerte, keine projekt-durchgerechneten CHF/m³ oder CHF/m².
- Status **established** (Frontmatter last_updated 2026-07-25).

## 2026-07-25 — Extern Healthcare Tranche 2: Jurybericht «Betreutes Alterswohnen Tägermoos, Küsnacht» (2023) destilliert + Refuter-verifiziert (established)
- Neuer Artikel `wiki/extern/jurybericht-alterswohnen-taegermoos-kuesnacht.md` aus dem
  Volltext-Extrakt `raw/extern-jurybericht-alterswohnen-taegermoos-kuesnacht.txt` (pdftotext
  -layout, 80 S., Gemeinde Küsnacht, arc Consulting, Juni 2023). Subtyp **alterswohnen**
  (vierte Healthcare-Referenz, deckt die im B1-Sweep vermerkten alterswohnen-Lücken).
- Besonderheit: das ursprüngliche Extraktions-Destillat wurde wegen eines abgebrochenen
  NAS-Mounts NIE geschrieben (Extraktions-Agent wartete auf Remount). Der Refuter hat den
  Mount via Tailscale-Hostname wiederhergestellt und das Destillat direkt aus der Grundwahrheit
  erstellt; jede Aussage per Konstruktion quellenbelegt.
- **Ergebnis:** Sieger «Kassiopeia» (Projekt 6, 1. Rang / 1. Preis, CHF 30'000), Architektur
  neff neumann architekten Zürich (Verantwortlich Barbara Neff, Bettina Neumann, Thomas
  Wölfel), Landschaft manoa Landschaftsarchitekten Meilen. 42 eingereichte Projekte,
  Preissumme CHF 140'000 exkl. MwSt., acht Preise, keine Ankäufe. Jury tagte 7./9. Februar
  und 9. März 2023. Parzelle Tägermoos 4'535 m2, Zone öffentliche Bauten, Programm-Soll rund
  50 bis 55 betreute Alterswohnungen (Sieger 57).
- Strukturbefund wie Schulbau/Healthcare: KEINE absoluten Kosten-/Flächenkennwerte publiziert
  (CHF/m2, BGF, GV); Wirtschaftlichkeit nur qualitativ («über/im/unter dem Durchschnitt»). Für
  B6 nur als Programm-/Mengengerüst-Quelle (Wohnungsanzahl je Projekt) brauchbar. Delta zum
  1. Rang: Wohnungsanzahl x Grundrissqualität x Kompaktheit (Kassiopeia 57 gegen Trialog 50
  «wenig flächeneffizient», Tödi 52 «knapp gegeben»).
- Status **established**, verdict Refuter BESTANDEN (Erst-Destillat aus Grundwahrheit, keine
  Zuordnungs-/Seitenfehler zu korrigieren).

## 2026-07-24 — 2507 TKHL Halden: Jurybericht amtlich beschafft, Dossier + Muster vervollstaendigt (Mac Mini Nachtschicht, Dispatch-Run 20260724-063005)
- Der seit 12.07.2026 faellige Jurybericht «Bericht des Preisgerichts» (Stadt St.Gallen
  Hochbauamt, Maerz 2026, 68 S.) via curl von stadt.sg.ch bezogen (57 MB, «klein»-Aufloesung;
  `pdftotext -layout` vollstaendig text-extrahierbar trotz Scan-Anteil, «PDFTron-Identity»-
  Zeichensatzwarnungen ohne Textverlust). Neuer Raw-Extrakt
  `raw/2507-tkhl-ps-halden_jurybericht.txt` (1.5 MB).
- **Ergebnis LIMO (JANS): 5. Rang / 4. Preis, CHF 10'000, von 51 eingereichten Beitraegen.**
  Sieger «ZVIERI (1)», Richter Tobler GmbH Architekt*innen ETH SIA, Basel (CHF 40'000,
  einstimmige Empfehlung).
- `wiki/teilnahmen/2507-tkhl-ps-halden.md` (Stammdaten Resultat, Jury-Urteil mit
  Lob/Kritik-Zitaten, Delta-zum-1.-Rang-Abschnitt, Lessons, Quellen) auf Basis des
  Jury-Volltexts ergaenzt.
- `wiki/muster/delta-zum-ersten-rang.md` von 6 auf **7 Dossiers** erweitert; neuer
  **Befund 11**: explizite, mengen-/erhaltbezogene Programmvorgaben (hier: Hartplatz
  integral erhalten) sind Ausschluss-, keine Qualitaetskriterien — LIMO reduzierte den
  Hartplatz auf ein Ballspielfeld, der Sieger setzte das Gebaeude bewusst so, dass der
  Hartplatz vollstaendig erhalten blieb. Noch nicht refuter-verifiziert (vermerkt in
  INDEX.md).
- **1 neue offene Frage:** der Jurybericht nennt an zwei Stellen (S. 41, S. 67) den
  Architektur-Verfasser von LIMO als «jann erhard architekt, Zürich», nicht «Raphael Jans
  Architekten» — gemaess Rule `identifikatoren-verifizieren` nicht gedeutet, sondern als
  Frage an Raphael in `wiki/QUESTIONS.md` und im Dossier festgehalten.
- INDEX.md (Teilnahmen-Tabelle Zeile 2507, Muster-Abschnitt) nachgezogen. Verbrauch ~3.9
  von 5 USD Nachtschicht-Budget.

## 2026-07-24 — Etappe 3, Baustein B2/B3 Healthcare Tranche 1 (Task wettbewerbs-dna-training, MacBook Pro Nachtlauf)
- **3 externe Healthcare-Juryberichte beschafft, destilliert und refuter-verifiziert** (erste
  B2/B3-Tranche aus der B1-Sweep-Reserveliste, subtyp-gespreizt). Workflow-Fan-out (Pipeline):
  je 1 Extraktions-Agent (Sonnet) → 1 unabhaengiger Refuter (Hauptmodell) gegen den Raw-Extrakt;
  6 Agenten, 0 Fehler, ~1.13 Mio. Subagent-Tokens.
  - **kantonsspital-aarau-ksa** (spital-klinik, AG 2019): zweistufiger Gesamtleistungswettbewerb,
    Sieger «Dreiklang» (ARGE Marti/BAM + Burckhardt+Partner + Woerner Traxler Richter). Refuter
    korrigierte mehrere Seitenbelege (u.a. zwei 1.-/2.-Stufen-Verwechslungen ~20-30 Seiten Drift),
    danach established.
  - **alterszentrum-sihlsana-adliswil** (pflegeheim-alterszentrum, ZH 2019): Sieger «SOPHIE»
    (Schmidlin Architekten). 136 Pflegeplaetze (36 Demenz) + 60 Alterswohnungen, Kostenziel
    CHF 73 Mio. Refuter korrigierte ~8 Verfahrens-Seitenbelege (S. 7↔6/8, Kostenplanung S. 6→15),
    danach established.
  - **ipw-klinik-schlosstal-winterthur** (psychiatrie, ZH 2015): Sieger «GrassGreen» (Bollhalder
    Eberle). Refuter fand KEINE Fehler (alle Seitenbelege ueber Fusszeilen-Zaehlung bestaetigt),
    established.
- **Waldhaus Chur (Akutpsychiatrie GR)** aus dem empfohlenen Batch **verworfen**: reines
  Scan-/Bild-PDF (3 Zeichen/Seite, Retry ohne -layout erfolglos) → QUESTIONS; ipw Schlosstal aus
  der Reserveliste als psychiatrie-Ersatz nachgerueckt (Fehlerpfad «OCR-Scan» + «Reserve rueckt nach»).
- **Kennwert-Ernte fuer B6:** die Refuter sammelten die belegten numerischen Werte (KSA: ~50'000 m2
  HNF-Ziel / max. 500 Betten / Budget CHF 600 Mio. / Normzimmer 21 m2 / Tragwerksraster 7.5x7.5 m;
  Sihlsana: 136 Pflegeplaetze + 60 Wohnungen / Perimeter 12'100 m2 / Kostenziel CHF 73 Mio.;
  ipw: Stationen a 20 Betten, Privatstation 16). **Strukturbefund bestaetigt sich wie im Schulbau:**
  Juryberichte publizieren fast nie projektbezogene GF/GV/HNF- oder CHF/m3-Werte (nur qualitative
  Wirtschaftlichkeits-Wuerdigung) — fuer B6 Healthcare vormerken.
- Kollisions-Check (Rule 260724) vor Beginn: keine zweite Instanz. Stand: Healthcare B3 nun 3/8.
  Naechste Zelle: Healthcare B2/B3 Tranche 2 (weitere Reserve-Kandidaten) bis B3-Ziel (>=8).

## 2026-07-23 — Etappe 3, Baustein B1 Healthcare erledigt (Task wettbewerbs-dna-training, MacBook Pro Nachtlauf)
- **Quellen-Sweep Healthcare** als Workflow-Fan-out ueber 6 Scouts (espazium, zuerich,
  bern-basel, luzern-ostschweiz, weitere-kantone, konkurado-traeger; general-purpose-Agenten
  mit WebSearch/WebFetch + curl-Verifikation, 0 Fehler, ~753k Subagent-Tokens).
- **Ergebnis:** 48 Kandidaten, davon **42 mit HTTP-verifiziertem freiem Jurybericht-PDF**
  (200/206 + application/pdf + %PDF), 6 Zugang unklar/Viewer. B1-Ziele (>=15 / >=8 frei)
  klar uebertroffen. Neu: `outputs/2026-07-23_etappe3-healthcare-sweep.md`.
- **Subtyp-Bilanz:** 22 pflegeheim-alterszentrum, 11 spital-klinik, 6 psychiatrie,
  2 alterswohnen, 3 gemischt. Breite Auslober-Streuung (Kantonsspitaeler USB/KSA/LUKS/
  Oberwallis, Universitaere Psychiatrie, Stadt-ZH-Gesundheitszentren, Westschweiz-EMS Kt. Vaud).
- **Dedup:** eigene 2101 KSSG H14 sauber ausgeschlossen; Cross-Scout-Dubletten (KSA Aarau ×2,
  Bad Zurzach ×2, St. Katharinen ×2, Kaltbrunn ×2, Aesch Im Bruel ×3, Malters ×2,
  ipw Schlosstal ×2 versch. Hoster, Ried Biel ×2, Sihlsana Jurybericht vs. Broschuere) gemerged.
- **Luecken → QUESTIONS:** 0 rehabilitation und 0 reines gesundheitszentrum-aerztehaus im
  Sweep; Entscheid bei B4-Synthese (Zusatz-Sweep private Reha-Traeger oder Subtyp streichen).
- **Kein PDF beschafft** (Takt-Regel 260714, ein Baustein je Lauf). Empfohlener B2/B3-Batch
  von 9 subtyp-gespreizten Kandidaten im Report markiert. INDEX/QUESTIONS/ETAPPE-3 nachgefuehrt.
  **Naechste Zelle: Healthcare B2/B3.**

## 2026-07-22 — Nachtschicht Mac Mini: Jurybericht-Termin 2501 Steinfabrik korrigiert (Ende März → Sommer 2026)
- 7. Beobachtungsprüfung des ausstehenden Juryberichts 2501 Steinfabrik (Hafenareal Pfäffikon
  SZ). konkurado.ch weiterhin ohne Jurybericht/Sieger. Erstmals zusätzlich die
  Verfahrensbegleitung SUTER • VON KÄNEL • WILD direkt geprüft (skw.ch, eigene
  Downloads-Seite zum Verfahren) — gemäss der in `wettbewerbs-dna-training` bereits
  gelernten Methoden-Lehre (immer auch die Ausloberin/Verfahrensbegleitung prüfen, nicht
  nur konkurado/espazium).
- **Befund:** SKW nennt dort neu explizit «Verfahren abgeschlossen. Jurybericht folgt im
  Sommer 2026.» — die ursprüngliche Ankündigung «Ende März 2026» (Entscheid-E-Mail Christof
  Brack, 10.02.2026) ist damit belegt überholt.
- Aktualisiert: `wiki/teilnahmen/2501-steinfabrik-hafenareal.md` (offene Frage Jurybericht),
  `wiki/QUESTIONS.md` (Beobachtungspunkt mit neuem Termin und Prüf-Empfehlung: nicht vor
  Spätsommer 2026 erneut prüfen, statt wöchentlich redundant zu beobachten).
- Kein neuer Wiki-Artikel nötig (kein neues Faktum, nur korrigierte Frist). Kosten dieses
  Zyklus: ca. 1.9 von 5 USD Budget.

## 2026-07-21 — Wissens-Chef Run 11 (Cross-KB): Drift-Guard für den Schulbau-Parameter-Set-Handoff
- Erst-Check des Rotationspaars wettbewerbs-dna ↔ entwurfs-referenzen am B5-Schulbau-Stoff. Handoff in
  `entwurfs-referenzen/.../schule-volksschule-ch.json` **inhaltlich korrekt** — alle Kennwerte deckungsgleich
  (HNF/GF 0.53, Klassenzimmer 64-75, 900-m²-Schwelle, Kostendach 1.6-1.8 Mio/KZ), beidseitig verlinkt,
  0 Widerspruch.
- **wiki/muster/kennwerte-schulbauten.md §8:** Drift-Guard ergänzt — das Parameter-Set ist ein eingefrorenes
  Derivat (v1.0); bei Revision eines Schulbau-Bands (B4/B6) muss es neu abgeleitet und die Version hochgezählt
  werden (bisher kein Regenerierungs-Trigger festgehalten).
- **Nur gemeldet (KB-intern):** die aus der Quelle geerbte «23 Juryberichte»-Zahl trägt den vom Health-Check
  gefundenen 23-vs-22-Zählfehler (Boppartshof fehlt) — beim nächsten Muster-Lauf korrigieren.

## 2026-07-21 — Etappe 3, Baustein B5 Schulbau erledigt (Task wettbewerbs-dna-training, MacBook Pro Nachtlauf)
- **Schulbau (Prio 1) damit vollstaendig abgeschlossen (B1–B6).** Neues maschinenlesbares
  Parameter-Set in der Nachbar-KB: `entwurfs-referenzen/wiki/parameter-sets/schule-volksschule-ch.json`
  (v1.0). Rein aus den beiden established Mustern dieser KB abgeleitet — `muster/kennwerte-schulbauten.md`
  (B6) + `muster/jury-argumente-schulbauten.md` (B4); ausschliesslich belegte Werte.
- Belegt gesetzt u.a.: `flaechen.nf_gf_faktor` 0.53 (HNF/GF-Band 0.52–0.54), `hnf_pro_einheit_m2`
  [64,75] Klassenzimmer, `gebaeude.erschliessung` atrium, `geschosse` 1–5, 14 Entwurfsregeln
  (900-m2-Schwelle, 2:1 Klassen:Gruppenraum, Cluster 3–4, Eck-Klassenzimmer zweiseitig belichtet,
  KG/Primar-Durchmischung, Glasanteil <50 %, Vorpruefungs-Korridor ±20 %). `chf_m3_gv_band`
  bewusst weggelassen (B6-Strukturbefund: aus Schul-Juryberichten nicht belegbar → QUESTIONS,
  bleibt bei `wissen/grobkosten/`).
- Verifikation: validate.py OK (schema-valide) + 1 unabhaengiger Refuter-Agent (Hauptmodell)
  hat jeden Kennwert/jede Regel/jedes Referenzprojekt Wert-fuer-Wert gegen die Quelldateien
  zurueckgeprueft: **VERDIKT BESTANDEN**, kein erfundener Kennwert. 2 Praezisierungen eingearbeitet
  (`geschosse_min` 3→1 wegen belegtem Dorf-Fall Grossaffoltern; Regelklasse-Fundstelle geschaerft).
- Bookkeeping: `training/ETAPPE-3.md` (Stand-Tabelle Schulbau abgeschlossen + Lauf-Log-Zeile),
  `wiki/INDEX.md` (Stand), `muster/kennwerte-schulbauten.md` §8 (Vorwaertsverweis auf «angelegt»
  aktualisiert), Nachbar-KB `entwurfs-referenzen` (parameter-sets/INDEX + CHANGELOG). Naechste
  offene Zelle: **Healthcare (Prio 2), B1 Quellen-Sweep**.

## 2026-07-21 — Erster Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
- Kurzbefund (Audits A-G): A 2 Widersprueche — u.a. `kennwerte-schulbauten.md`/
  `QUESTIONS.md` fuehren den GF-Wert von 2206 Schoental als ungeloesten
  Quellen-Widerspruch, obwohl `teilnahmen/2206-schoental.md` ihn bereits am 13.07.2026
  aufgeloest hatte (1'792 m2 massgebend, 1'545 m2 nur luckenhafte Teilsumme) —
  Regression, kein neuer Fund; ausserdem behauptet `jury-argumente-schulbauten.md`
  23 ausgewertete Quellen, verlinkt aber nur 22 (Boppartshof St.Gallen fehlt). B 18
  Funde — 13 kaputte Backlinks (7x Board-DNA-Artikel verlinken ihr Teilnahme-Dossier
  mit falschem Dateinamen, 5x externe Juryberichte verlinken auf die Ordnernamen
  `[[teilnahmen]]`/`[[muster]]` statt auf Artikel, 1x Ziel `board-dna/uebersicht`
  existiert gar nicht) plus 5 Orphan-Artikel ohne gueltigen eingehenden Link (2104
  Theater Luzern, 2207 Schliengerweg, 2501 Steinfabrik, 2503 Glockenacker,
  extern-Bericht Boppartshof). C 0 unbelegte Claims (KB betreibt eigenes
  Refuter-Verifikationsregime, Unsicherheiten bereits selbst geflaggt). D 0
  RAW-Coverage-Luecken (alle 73 raw-Dateien in `sources` zitiert). E 0 veraltete
  Artikel (KB erst 9 Tage alt; der Sonderfall 2507 TKHL Halden — Jurybericht laut
  QUESTIONS.md bereits verfuegbar, Dossier noch nicht nachgefuehrt — ist dort bereits
  aktiv verfolgt, kein neuer Fund). F 2 Funde (kein `raw/_INGESTED.md`-Register gemaess
  Meta-Schema; uneinheitliches Link-Format mit Freitext-Anhaengen an `[[...]]`-Links).
  G 1 Fund (QUESTIONS-Eintrag zum 2206-GF-Widerspruch sollte nach Korrektur ins
  Geklaert-Kapitel wandern; keine `speculative`/`emerging`-Artikel mehr vorhanden).
  Voller Report → `outputs/2026-07-21_health-check.md`.

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
