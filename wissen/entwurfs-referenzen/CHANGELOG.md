# CHANGELOG — Entwurfs-Referenzen

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
