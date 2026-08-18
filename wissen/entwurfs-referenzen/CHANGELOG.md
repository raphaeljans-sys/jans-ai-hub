# CHANGELOG — Entwurfs-Referenzen

## 2026-08-18 (Nachtschicht Mac Mini) — Erster Artikel in `entwurfsprinzipien/`: Donald Judd, Trennung Kunst/Funktion

- **Neuer Artikel `wiki/entwurfsprinzipien/trennung-kunst-funktion-judd.md`:** kompiliert aus
  Donald Judds Essay «It's Hard to Find a Good Lamp» (1993, © Judd Foundation), vollstaendig
  gelesen an der Primaerquelle (`/Volumes/daten/03 Bauprodukte_BKP/233 Leuchten und Lampen/
  6 Pendellampe/Judd/`). Kernpunkte: Kunst und Gebrauchsgegenstand sind kategorial verschieden,
  Proportion als «visible reasonableness» statt Dekor, Kritik an Stil-Imitation und an
  Distributions-Oligopolen. Urheberrecht beachtet — nur kurze Zitate mit Quellenangabe, kein
  Volltext-Nachdruck. Erster Artikel des bisher leeren Ordners `entwurfsprinzipien/`
  (Haltung/Diskurs-Achse).
- Herkunft: Cross-KB-Fund der Schluss-Triage `wissen/bauprodukte` vom 15.08.2026 (dort als kein
  Bauprodukt verworfen, `bauprodukte-inventar.md` Z. 165), am 15.08. nur als Promotion-Kandidat
  in `wiki/QUESTIONS.md` vermerkt und dort ausdruecklich als «eigener dedizierter Lauf»
  vorgemerkt — dieser Lauf holt das nach.
- Register nachgezogen: `wiki/entwurfsprinzipien/INDEX.md`, `wiki/INDEX.md` (Sektion
  Entwurfsprinzipien), `wiki/QUESTIONS.md` (Kandidat auf ERLEDIGT gesetzt).

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — `healthcare-neubau-zh.json`: Quellenstand der B4-Quelle nachgezogen

- **`wiki/parameter-sets/healthcare-neubau-zh.json`:** Die Zitatzeile zu
  `wissen/wettbewerbs-dna/wiki/muster/jury-argumente-healthcare.md` fuehrte «8 Quellen,
  25.07.2026». Die Quelle ist am 17.08.2026 gewachsen (Etappe-4-Vertiefung 03, Abschnitt 7
  «Rueckkopplung» aus den eigenen Teilnahmen 2101 KSSG H14 und 2205 Guggerbach): **15 Quellen**.
  Stand nachgezogen, JSON-Validitaet nach dem Edit geprueft. 1/1.
- Die Gegenrichtung (Abnehmer-Vermerk) ist in `wettbewerbs-dna` gesetzt.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-06 (Cross-KB-Lauf Run 27) — `healthcare-neubau-zh.json`: Vorbehalt zum oberen Kosten-Endpunkt nachgetragen

- **`wiki/parameter-sets/healthcare-neubau-zh.json`, Block `kosten_referenz`, Feld `hinweis`:**
  rein additiv ergaenzt. Das Set fuehrte den Kennwertband 826-1'420 CHF/m3 GV (BKP 2) aus
  `wissen/immobilienbewertung/wiki/realwert-sachwert.md` **unqualifiziert** — obwohl der obere
  Endpunkt **1'420** (Averecura) und die Vella-Zeile in der Quelle als **quellenintern nicht
  reproduzierbar** ausgewiesen sind (recompute 1'285 bzw. 1'021; die uebrigen sechs Zeilen
  reproduzieren exakt). Der reproduzierbare **Rohband 826-1'285** ist jetzt genannt, ausdruecklich
  als Rohband und **nicht** als neuer geltender Band (Entscheid Raphael, haengt an der Bereinigung
  des JANS-Original-Blatts; `wissen/immobilienbewertung/wiki/wissensluecken.md` D10). Ebenfalls
  ergaenzt: der Hinweis, dass die Baender auf **BKP 2 (Gebaeude)** bezogen sind.
- Begruendung fuer den Eingriff in dieses Set: es ist die Kopie, die `machbarkeit` und
  `healthcare-wirtschaftlichkeit` tatsaechlich lesen. Die beiden Wiki-Seiten zu qualifizieren und
  das Set auszulassen haette ausgerechnet die meistkonsumierte Fassung unqualifiziert gelassen.
- Kein anderes Feld beruehrt, keine Version hochgezaehlt (v2.0 unveraendert), JSON nach dem Edit
  mit `python3 -m json.tool` validiert.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Ein B-Befund: `[[architekten-synobsis]]` im `wiki/INDEX.md` ist ein KB-Name, kein Artikel — als Pfadangabe schreiben. Sonst sauber. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F1 · G0

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Kleinste KB im Bestand (2 Wiki-Dateien: INDEX + QUESTIONS, kein einziger Sachartikel). Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-27 — `wohnen-mfh-urban.json` komplett neu geschrieben (v1.0 → v2.0, Etappe-3-Baustein B5) — damit ALLE DREI Etappe-3-Bauaufgaben vollständig
- **Vollständige Neufassung, rein aus den beiden established Etappe-3-Mustern abgeleitet**
  (`wissen/wettbewerbs-dna/wiki/muster/kennwerte-wohnungsbau.md` B6 + `jury-argumente-
  wohnungsbau.md` B4, beide established 27.07.2026, 8 Quellen trägertyp-gespreizt). Bisherige
  v1.0-Quellen (BWO Wohnungsmarktbericht 2024, SIA 416, Wüest Baukostenindex 2024, BFS
  Gebäudestatistik) ersatzlos entfernt — generisch, nicht aus Etappe-3-Quellen ableitbar.
  Unbelegte externe Referenz "Siedlung Klee (pool Architekten)" aus v1.0 entfernt (nicht
  verifizierbar), ersetzt durch zwei aus B3/B4 belegte Referenzprojekte (Pinarello/Seebahn-
  Höfe, Kandalama/Brisgi-Areal, Architekten-Namen gegen `wiki/extern/`-Artikel verifiziert).
- **Kein `chf_m3_gv_band` gesetzt** (Strukturbefund wie Schulbau/Healthcare: kein einziger
  der 8 Wohnungsbau-Juryberichte nennt ein Gebäudevolumen in m³) — stattdessen neues Feld
  `kosten_referenz.chf_m2_hnf_band` [3500, 3900] (BKP 1–9, Koch-Areal, zwei unabhängige
  Baufelder derselben Auslobung) mit Hinweis auf die eingeschränkte Basis (eine Auslobung,
  Zürich 2018/2019, nicht schweizweiter Median).
  `flaechen.hnf_pro_einheit_m2` [95, 105] für die Nutzeinheit "Wohnung (4.5-Zimmer)" — aus
  zwei unabhängigen, deckungsgleichen Programm-Wohnungsspiegeln (Seebahn-Höfe, Brisgi).
  `gebaeude`-Geometriefelder (Geschosszahl/Erschliessung/Statik/Dachform) bewusst NICHT
  gesetzt (wie bei Healthcare v2.0) — B4/B6 belegen trägertyp-abhängig genuin verschiedene
  Typologien, ein einzelner Enum-Wert wäre erfunden; stattdessen `orientierung_regeln` mit
  der Herleitungsregel je Trägertyp.
- **Zwei-Runden-Refuter-Verifikation:** 1. Durchgang fand 6 Fehler (u.a. Holzbau-Beleg
  fälschlich dem Sieger statt dem 3.-Rang-Projekt Walkeweg zugeschrieben; "belegt in 7 von
  8 Berichten"-Statistik an die falsche Aussage gehängt; Vier-Systeme-Aufzählung nur 3
  Items; scope_hinweis überdehnte "Einzelbeleg" auf privat-institutionell obwohl B4 das
  nicht so kennzeichnet; ein K.o.-Punkt zu kumulierten baurechtlichen Verstössen fehlte
  ganz), alle korrigiert; 2. Durchgang bestätigte alle 6 Korrekturen fehlerfrei. Beide
  Refuter-Agenten liefen direkt über das Agent-Tool (kein Workflow-Tool, konsistent mit der
  in dieser KB wiederholt dokumentierten headless-Review-Blockade des Workflow-Tools).
- **Damit sind alle drei Etappe-3-Ziel-Bauaufgaben (Schulbau, Healthcare, Wohnungsbau)
  vollständig: B1–B6 je established.** Siehe `wissen/wettbewerbs-dna/training/ETAPPE-3.md`.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): Quellenzuweisung v2.0 korrigiert, INDEX nachgezogen
- **[korrektur, materiell] `parameter-sets/healthcare-neubau-zh.json`** hat mit der Neufassung v2.0 (25.07., 21:53) zwar das beanstandete Wohnbau-Band entfernt, die **Quellenzuweisung aber unveraendert uebernommen**: `quelle_kb: "wissen/grobkosten/"` plus Hinweistext «fuer CHF/m3 bzw. CHF/m2 fuehrend bleiben wissen/grobkosten/…». Genau diese Verwendung untersagt `grobkosten` ausdruecklich (Abschnitt «Healthcare / Spezialnutzung»; die KB erklaert sich fuer Healthcare in `CLAUDE.md` insgesamt fuer unzustaendig). Da `quelle_kb` das einzige maschinenlesbare Quellenfeld ist, waeren konsumierende Werkzeuge auf die untersagte Quelle gelenkt worden. → `quelle_kb` auf `wissen/immobilienbewertung/wiki/realwert-sachwert.md` umgestellt, neues Feld `quelle_kb_m2_nf` (Skill `kostenschaetzung`, Wueest) und `quelle_kb_nicht_anwendbar` (grobkosten, mit Begruendung); Zahlenwerte unveraendert, JSON schema-valide geprueft.
- **[korrektur] `wiki/INDEX.md`** beschrieb das Set noch mit den v1.0-Quellen «CURAVIVA/Wueest/JANS 2410+2619/SIA 416», die die Neufassung ersatzlos entfernt hat (der Sub-Index `parameter-sets/INDEX.md` war bereits korrekt). → an den Ist-Zustand angeglichen (v2.0, Herkunft B4/B6, Scope Pflegeheim/Alterszentrum/betreutes Alterswohnen).
- **[hinweis] Verfahren:** Der Sperrvermerk, den Wissens-Chef Run 15 im alten Block gesetzt hatte (Loeschung = rueckfragepflichtig), ist mit der Neufassung gegenstandslos geworden — faktisch wurde damit im KB-Loop die Loeschoption gezogen. Sachlich gut begruendet (B6 Abschnitt 0/8: kein externer Jurybericht nennt einen projektspezifischen Kennwert), verfahrensmaessig im Bericht benannt.
- **[praezisierung]** Das oft zitierte Band **1'053-1'420 CHF/m3 GV** gilt nur fuer die sechs Neubauten ab 2019; das Gesamtband der acht Objekte ist **826-1'420**, der Median ~1'100 gehoert zum Gesamtband. v2.0 zitiert korrekt.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25 — `healthcare-neubau-zh.json` komplett neu geschrieben (v1.0 → v2.0, Etappe-3-Baustein B5)
- **Vollstaendige Neufassung, rein aus den beiden established Etappe-3-Mustern abgeleitet**
  (Muster `wissen/wettbewerbs-dna/wiki/muster/kennwerte-healthcare.md` B6 +
  `jury-argumente-healthcare.md` B4, beide an diesem Tag auf `established` gehoben — B6
  Healthcare damit vollstaendig, vgl. CHANGELOG dortselbst). Bisherige v1.0-Quellen
  (CURAVIVA-Richtwerte, pauschale Wueest-Kostenkennwerte) ersatzlos entfernt — sie liessen
  sich nicht mehr gegen die jetzt established Quellen belegen und widersprachen der
  Etappe-3-Vorgabe "nur belegte Werte aus B4/B6".
- **Scope bewusst verengt** auf Pflegeheim/Alterszentrum, Demenz-Sondertyp und betreutes
  Alterswohnen (JANS-Auftragsprofil, vgl. 2410-WALD) — Akutspital/Psychiatrie/gemischter
  Subtyp sind in B4/B6 mit eigenen, teils klar abweichenden Kennwerten belegt und wegen
  B6s Subtyp-Vermischungsverbot bewusst NICHT in dieses Set uebernommen (`healthcare-
  akutspital.json`/`healthcare-psychiatrie.json` bleiben als eigene Sets geplant, INDEX.md).
- **`kosten_referenz.chf_m3_gv_band` bleibt bewusst leer** (kein numerisches Feld) —
  B6 Abschnitt 0/8 weist aus, dass kein einziger der 11 externen Healthcare-Juryberichte
  einen projektspezifischen CHF/m2- oder CHF/m3-Kennwert nennt. Damit ist die GESPERRT-
  Markierung aus Wissens-Chef Run 15 (Eintrag oben) gegenstandslos: das beanstandete Band
  [850,1050] existiert in v2.0 nicht mehr. Der `kosten_referenz.hinweis`-Text nennt
  `wissen/grobkosten/` sowie, spezifisch fuer Alters-/Pflegeheime, den 8-Objekt-
  Referenzvergleich `wissen/immobilienbewertung/wiki/realwert-sachwert.md` (CHF/m3 GV
  826-1'420, Median rund 1'100 BKP 2 — als dritte Quelle im `quellen`-Array deklariert,
  nicht unbelegt vermengt).
- **Refuter-Pruefung bestanden:** unabhaengiger Agent prüfte alle 28 Einzelaussagen des
  neuen JSON gegen B4/B6 wortgenau; 2 kleine Abschnitts-Ungenauigkeiten und 1 unbelegter
  Cross-KB-Verweis gefunden und direkt korrigiert (dritte Quelle sauber deklariert statt
  unbelegt eingemischt). Schema-valide (`validate.py --all` → OK fuer alle drei Sets).
- INDEX.md-Eintrag nachgezogen (Etappe-3-Herkunft + Scope-Praezisierung, analog zum
  bestehenden Eintrag fuer `schule-volksschule-ch.json`).

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): Healthcare-Kostenband GESPERRT + Erst-Verlinkung zu architekten-synobsis
- **`wiki/parameter-sets/healthcare-neubau-zh.json`, Block `kosten_referenz`: `status: GESPERRT` + belegter Hinweis ergaenzt** (nichts geloescht — Loeschung braucht Rueckfrage). Zwei unabhaengig adversarial BESTAETIGTE Befunde: (1) Das gefuehrte Band **[850, 1050] CHF/m3 GV ist das Wohnbau-MFH-Band** der KB `grobkosten` — und beruft sich per `quelle_kb` ausgerechnet auf die KB, die diese Verwendung fuer «Spital, Klinik, Alters-/Pflegeheim, Reha, Praxis» **ausdruecklich untersagt** (`grobkosten/wiki/kennwerte.md:66-68`). (2) Das Band liegt deutlich unter dem belegten Healthcare-Niveau: **1053-1420 CHF/m3 GV** (BKP 2, Median ~1100) aus dem 8-Objekt-Referenzvergleich in `immobilienbewertung/wiki/realwert-sachwert` (fuenf der acht Objekte im Kt. ZH). Wertsetzung = Fachentscheid Raphael. Schema-Validator laeuft unveraendert durch (`validate.py --all` → OK fuer alle drei Sets).
- **Erst-Verlinkung zur KB `architekten-synobsis`** (die beiden KBs kannten sich bis heute nicht, 0 Grep-Treffer in beiden Richtungen): `wiki/typologien/bildung.md` fuehrt neu die synobsis-Quellen (`wiki/THEMEN.md` §1.4 Bildungsbauten, `wiki/RAUMTYPOLOGIEN.md`) — der Artikel war ohne eine einzige Katalog-Quelle kompiliert worden, obwohl der Referenz-Katalog der deklarierte Arbeitsweg dieser KB ist.
- **Kein Systematik-Widerspruch:** synobsis fuehrt Raumfiguren/Parti, diese KB fuehrt Gebaeudenutzungen — zwei Achsen, gleiches Wort. In zwei getrennten Matrix-Zeilen fixiert.
- Offen (Bau-Arbeit, nicht Wissens-Chef): optionales Feld `synobsis_slug` in `referenz_projekte`, damit die woertlich genannten Referenz-Architekten (Boltshauser, Pool) maschinell auf den Katalog zeigen.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 (Nachtschicht-Zyklus Mac Mini ~06:30 — Health-Check + zwei Fixes)
- [health-check] Wissens-Health-Check Phase 1: A1→behoben · B0 · C0 · D0 · E0 · F1→behoben
  · G0. Report: `outputs/2026-07-25_health-check.md`.
- [fix] `wiki/typologien/bildung.md`: durchgehender ae/oe/ue-Ersatzschreibungs-Bug (104
  Woerter, u.a. Gebaeude/Groessenordnung/fuer/Schueler/Hoehe/Ortsnamen Schoental-Schoenau-
  Stoeckacker-Faellanden) auf echte Umlaute korrigiert — derselbe bekannte Bug wie bei
  `spec`/`immobilienbewertung`/`planungsgrundlagen`, hier aber klein genug (1 Artikel) fuer
  eine direkte, wortweise Korrektur statt nur Flaggen. `last_updated` auf 2026-07-25 gesetzt.
- [fix] `raw/_INGESTED.md`: veraltete Formulierung *"Seed-Import steht aus"* nachgezogen
  auf den seit 20./23.07. ueberall sonst geltenden Abfrage-Workflow-Wortlaut — war die
  einzige verbliebene Datei mit dem alten Stand, von drei vorherigen Checks uebersehen.
- Keine neue Recherche, keine neuen Kennzahlen — reine Korrektur/Konsistenz.

## 2026-07-24 (Nachtschicht-Zyklus Mac Mini ~04:30 — erster Wiki-Artikel kompiliert)
- [wiki] **`wiki/typologien/bildung.md` neu** — erster echter Wiki-Artikel dieser KB
  (bisher reine Parameter-Set-Sammlung). Kompiliert den seit 21./23.07. offenen
  Promotion-Kandidaten: HNF/GF-Referenzband 0.52–0.54, 900-m²-Geschossflaechen-Schwelle
  als harte Entwurfsregel, Programm-Mengengerueest (Klassenzimmer 64–75 m², Cluster-
  Koernung 3–4, Regelklasse 19–21 Schueler), Materialien/Ausdruck, Kostendach-
  Groessenordnung (1.6–1.8 Mio. CHF je Klassenzimmer Regelschule, rund 2.5 Mio.
  Sonderschule) und 6 Referenzprojekte. Reine Kompilation aus bereits
  refuter-verifizierten Quellen (`parameter-sets/schule-volksschule-ch.json` v1.0 +
  `wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md`, established) — keine neue
  Recherche, keine neuen Kennzahlen erfunden. Zwei offene Punkte bewusst NICHT geloest
  und im Artikel + `QUESTIONS.md` (dort weiterhin bei `wettbewerbs-dna`) vermerkt: der
  GF-Widerspruch 2206 Schoental «ARCHE» (0.655 vs. 0.759 HNF/GF) und der fehlende
  Reha-/Aerztehaus-Subtyp (Gesundheitsbau, nicht Bildungsbau).
- [index] `wiki/INDEX.md` (Sektion Typologien) und `wiki/typologien/INDEX.md` auf den
  neuen Artikel verlinkt.
- [questions] `wiki/QUESTIONS.md`: Promotion-Kandidat auf ERLEDIGT gesetzt.
- Budget-Hinweis: der 23.07.-Lauf hatte diese Kompilation bewusst als zu gross fuer den
  Nachtschicht-Rahmen zurueckgestellt; nach Pruefung war sie reine Kompilation ohne neue
  Quellenrecherche und passte in den 5-USD-Rahmen.

## 2026-07-23 (2. Eintrag, Nachtschicht-Zyklus Mac Mini ~20:30 — Sub-Index-Widerspruch behoben)
- [index] Den im Health-Check ~19:00 gefundenen Widerspruch nachgezogen: die vier Domänen-
  Sub-Indizes (`wiki/typologien|entwurfsprinzipien|architekten|materialien/INDEX.md`)
  behaupteten weiterhin wörtlich einen ausstehenden Roh-Seed-Import aus
  `05_Architekten_Synobsis`, obwohl dieser Weg bereits seit 20.07.2026 als ÜBERHOLT
  gilt (Abfrage-Workflow gegen `architekten-synobsis` statt Roh-Import). Alle vier
  Sub-Indizes sowie die vier entsprechenden Abschnitte im Haupt-`wiki/INDEX.md` auf den
  Abfrage-Workflow-Wortlaut umgestellt (Verweis auf `[[architekten-synobsis]]` +
  CHANGELOG-Datum).
- [questions] `wiki/QUESTIONS.md`: Nachzug im Seed-Import-Abschnitt vermerkt; neuen
  Abschnitt «Promotion-Kandidat» für `typologien/bildung.md` (aus dem Health-Check
  ~19:00) angelegt, damit der Vorschlag nicht nur im CHANGELOG verpufft, sondern als
  offene Aufgabe nachverfolgbar bleibt.
- Keine inhaltliche Recherche, reine Registerpflege/Konsistenz-Fix (Doppelarbeit-Guard:
  bewusst NICHT die grössere Aufgabe — Kompilation von `bildung.md` selbst — begonnen,
  da das ein neuer Wiki-Artikel mit Quellenprüfung wäre und den Nachtschicht-Rahmen
  sprengen würde; bleibt als Promotion-Kandidat offen für einen dedizierten Lauf).

## 2026-07-23 (Wissens-Health-Check, Nachtschicht Mac Mini ~19:00)
- Wissenscheck Phase 1 (aeltestes Audit-Datum, 20.07., 3 Tage): die 20./21.07.-Fixes
  (Haupt-INDEX, QUESTIONS) sind weiterhin korrekt wirksam, alle drei Parameter-Sets
  weiterhin schema-valide (`validate.py` OK). Neuer Fund: die vier Domaenen-Sub-Indizes
  (`architekten/`, `entwurfsprinzipien/`, `materialien/`, `typologien/` je `INDEX.md`)
  behaupten weiterhin woertlich einen ausstehenden Seed-Import, obwohl das Haupt-Register
  dies seit 20.07. als UEBERHOLT fuehrt — Widerspruch zwischen Sub- und Haupt-Register.
  Promotion-Kandidat: `typologien/bildung.md` liesse sich jetzt aus dem bereits
  refuter-verifizierten `schule-volksschule-ch.json` + dem established Benchmark
  `wettbewerbs-dna/kennwerte-schulbauten` kompilieren (erster echter Wiki-Artikel dieser
  KB). Kein neues Seed-Material fuer weitere Parameter-Sets gefunden (bestaetigter
  Nicht-Fund). Keine Phase-2-Aktion (Nachtschicht-Scope, nur Audit). Report:
  `outputs/2026-07-23_health-check.md`.

## 2026-07-21 (2. Eintrag, Nachtschicht-Zyklus Mac Mini ~20:30 — INDEX/QUESTIONS nachgezogen)
- [index] `wiki/INDEX.md` Zeile Schulhaus-Set war noch als «Angekündigt aus wettbewerbs-dna B5»
  formuliert, obwohl das Set laut Eintrag weiter unten (selber Tag) bereits eingetroffen,
  schema-valide und refuter-BESTANDEN ist. Auf denselben Eintrags-Stil wie die anderen beiden
  Parameter-Sets umgestellt (Datei-Link + Kurzbeleg).
- [questions] `wiki/QUESTIONS.md`: Koordinationspunkt «Namens-Abstimmung Schulhaus-Set» auf
  [x] erledigt gesetzt (war durch den Zulauf bereits faktisch geloest, aber nicht abgehakt).
  Erneut per `validate.py` gegen das Schema geprueft: OK.

## 2026-07-21 (Zulauf aus wettbewerbs-dna B5 — Schulhaus-Set eingetroffen)
- [parameter-set] `wiki/parameter-sets/schule-volksschule-ch.json` NEU eingetroffen aus dem
  Task `wettbewerbs-dna-training` (Etappe 3, Baustein B5). Abgeleitet ausschliesslich aus den
  established Mustern `kennwerte-schulbauten.md` (B6) + `jury-argumente-schulbauten.md` (B4).
  Schema-validiert (validate.py OK) und durch einen unabhaengigen Refuter-Agenten Wert fuer
  Wert gegen die Quellen geprueft: VERDIKT BESTANDEN, kein erfundener Kennwert; 2 Praezisierungen
  eingearbeitet (geschosse_min 3→1 wegen belegtem Dorf-Fall Grossaffoltern; Regelklasse-Fundstelle
  geschaerft). `chf_m3_gv_band` bewusst NICHT gesetzt (aus Schul-Juryberichten strukturell nicht
  belegbar — bleibt bei `wissen/grobkosten/`; QUESTIONS wettbewerbs-dna).
- [index] parameter-sets/INDEX.md: Set unter «Vorhandene» gefuehrt; geplantes `bildung-schulhaus.json`
  gestrichen (durch dieses Set unter dem abgestimmten Namen realisiert, vgl. Koordinationspunkt
  CHANGELOG 2026-07-20). Damit die am 20.07. offene Namens-Abstimmung geschlossen.

## 2026-07-20 (2. Eintrag, Phase-2-Fixes aus dem Erst-Audit, Dauerschicht-Zyklus 25)
- [index] Haupt-INDEX: wohnen-mfh-urban ergaenzt, [[...]]-Links auf JSONs durch relative
  Links ersetzt (Konvention), Ankuendigung schule-volksschule-ch.json aus wettbewerbs-dna B5.
- [questions] Seed-Import-Sektion als UEBERHOLT geschlossen (architekten-synobsis deckt
  die Quelle; Abfrage-Workflow dokumentiert); NEU: Koordinationspunkt Namens-Abstimmung
  Schulhaus-Set (B5 liefert schule-volksschule-ch.json statt bildung-schulhaus.json).
- [entscheid] Schulhaus-Set NICHT hier gebaut — Doppelarbeit-Guard: wettbewerbs-dna B5
  (naechster Lauf des dedizierten Tasks) leitet es selbst aus kennwerte-schulbauten ab;
  diese KB validiert es beim Eintreffen gegen das Schema.

## 2026-07-20
- Erst-Wissenscheck Phase 1 (Dauerschicht-Zyklus 24): Geruest sauber (Schema-Validierung
  beider Parameter-Sets OK), aber KB schlafend seit Anlage. Befunde: INDEX-Luecke
  (wohnen-mfh-urban fehlt im Haupt-INDEX), [[...]]-Konvention auf JSON, **Seed-Import
  aus 05_Architekten_Synobsis ist UEBERHOLT** (KB architekten-synobsis deckt das mit
  Katalog+Vektorindex+Themenregister ab → Abfrage-Workflow statt Roh-Import),
  Compounding-Kandidat bildung-schulhaus.json aus wettbewerbs-dna-Benchmark
  kennwerte-schulbauten (heute established). Voller Report:
  outputs/2026-07-20_health-check.md

## 2026-06-18
- KB angelegt: Ordnerstruktur, CLAUDE.md, JSON-Schema, Beispiel-Parameter-Set
- Seed-Import steht aus (NAS-Ordner 05_Architekten_Synobsis → raw/)
