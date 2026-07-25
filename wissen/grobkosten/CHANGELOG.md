# CHANGELOG — wissen/grobkosten

## 2026-07-25 — Trainings-Run 3 (Stufe 2: SharePoint-Drittquelle AR-07 Archiv, zwei Fälle geprüft, keiner verwertbar)
- `training/quellen-inventar.md` erweitert: alle 4 Projektordner unter SharePoint
  `AR - 07 Archiv/01_Projekte/` (abgeschlossene Mandate) geprüft. 2202 Ackersteinstrasse und
  2304 Reckholdern liefern GV+BKP-Material, 1318 Lorraine (Duplikat aus Run 1) und _SCHAFFNER
  ohne verwertbaren Inhalt. Damit sind beide bekannten SharePoint-Quellen (`AR - 01 Projekte`
  Run 2, `AR - 07 Archiv` Run 3) vollständig geprüft.
- **Neue `raw/`-Einträge:** `raw/2202-ackersteinstrasse.md` (vier widersprüchliche
  Kostenstände 2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, kein
  dokumentierter Grund für die Abweichung), `raw/2304-reckholdern.md` (GV 1'715 m³ und
  eBKP-H-Gliederung erstmals gleichzeitig im selben Dokument vorhanden — aber dasselbe
  Dokument nennt widersprüchlich sowohl CHF 2'960'000 als auch CHF 1'800'000, letzteres
  erkennbar aus einer nicht aktualisierten Fremdprojekt-Vorlage mit sachfremder
  Mietrendite-Berechnung).
- **Keine Kennwert-Promotion, kein neuer Einzelfall-Eintrag:** beide Fälle sind nicht nur dünn
  belegt, sondern in sich widersprüchlich — strenger als die Run-2-Bar ("Einzelfall n=1 mit
  Kaveat"). `wiki/kennwerte.md` erhält nur einen transparenten Prüfvermerk unter "Run 3",
  Seed-Werte und die Run-2-Einzelfälle bleiben unverändert.
- Neue Frage in `wiki/QUESTIONS.md`: strukturelles Muster erkannt (Vorlagen mit nicht
  vollständig aktualisierten Vorjahresdaten als Fehlerquelle); Vorschlag für Run 4: gezielt
  nach Schlussabrechnungen in beiden Projektordnern suchen statt neue Projekte zu erschliessen,
  da die bekannten SharePoint-Quellen jetzt ausgeschöpft sind. Lauf-Report:
  `outputs/2026-07-25_grobkosten-run3.md`.

## 2026-07-25 — Trainings-Run 2 (Stufe 1+2: SharePoint-Zweitquelle, erster raw/-Ingest)
- `training/quellen-inventar.md` erweitert: alle 8 aktiven Mandate unter SharePoint
  `AR - 01 Projekte` auf Kostendokumente geprüft (Zweitquelle gemäss Empfehlung aus Run 1).
  3 von 8 liefern auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse); 2619 KISPI bewusst als Healthcare-Scope ausgeschlossen (gehört zu
  Skill `kostenschaetzung`); 4 weitere ohne verwertbares Material (leer/kein Treffer).
- **Erster echter `raw/`-Ingest:** `raw/2414-thalwil.md`, `raw/2515-wartstrasse.md`,
  `raw/2518-grubenackerstrasse.md` neu angelegt. Keiner der drei Fälle erreicht die Bar für
  eine Promotion auf "belegt (n=…)" — Thalwil hat volle BKP-1-6-Kosten (526'300) aber kein
  Gesamt-GV, Wartstrasse hat gar kein GV (Fassaden-Teilprojekt), Grubenackerstrasse hat ein
  Volumen (1'668 m³) ohne SIA-416-Verifikation und ohne BKP-Gliederung.
- `wiki/kennwerte.md`: neuer Abschnitt "Erste reale Datenpunkte (Run 2)" mit den zwei
  brauchbaren Einzelfällen (Thalwil-Teilvolumen 1'600/800 CHF/m³, Grubenackerstrasse
  950-1'050 CHF/m³ unverifiziert) — Seed-Werte bewusst NICHT überschrieben (Regel: bei n=1
  Seed nicht ersetzen). Frontmatter/Provenienz-Abschnitt nachgeführt.
- Neue Frage in `wiki/QUESTIONS.md`: strukturelles Muster erkannt (GV und BKP-Kosten liegen
  bei JANS meist in getrennten Dokumenten, künftige Läufe sollten gezielt beide zusammenführen);
  Vorschlag für Run 3: SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen. Nebenbefund Fehlablage in Grubenackerstrasse-Ordner vermerkt
  (read-only, nicht bereinigt). Lauf-Report: `outputs/2026-07-25_grobkosten-run2.md`.

## 2026-07-25 — Trainings-Run 1 (Stufe 1: Quellen-Inventar 04_Buero/02_Projekte)
- `training/quellen-inventar.md` neu angelegt: alle 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` systematisch auf Kostendokumente geprüft (10 ohne
  jeden Kosten-Treffer, 11 mit "Kosten" im Pfad einzeln auf Dateiebene verifiziert).
- **Ergebnis: 0 auswertbare GV/BKP-1-5-Kostendokumente.** Mehrere Ordner mit vollständig
  suggerierter Phasenkette (Wettbewerb→Kostenfeststellung, z.B. 1602_St_Karli_11,
  1303_Steinhof) sind auf Dateiebene leere Struktur-Schablonen; andere Treffer sind
  Honorarofferten, Möbel-/Umzugs-Preisvergleiche, ein leeres Berechnungs-Template oder
  fachfremdes Material (Details siehe Inventar-Datei).
- `wiki/kennwerte.md` bleibt unverändert auf Status Seed — keine Extraktion möglich, keine
  Verdichtung (Stufe 2/3 dieses Laufs entfällt mangels Material).
- Neue Frage in `wiki/QUESTIONS.md`: SharePoint-Projektordner (aktive Mandate,
  Rule `projekt-ablage-stand`) als Zweitquelle für den nächsten Lauf statt erneuter Prüfung
  des jetzt ausgeschöpften NAS-Altarchivs. Lauf-Report: `outputs/2026-07-25_grobkosten-run1.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): needs-decision zum Flaechenfaktor-Komplex; ein Altpunkt geschlossen
- **needs-decision-Box in `wiki/kennwerte.md`** (additiv, kein Wertwechsel): (a) Die Begruendung «die ~1020 CHF/m3 beruhen auf GV/HNF 4.7 (Gesamtgebaeude), das 0.70 dient nur als Geschoss-Kennwert» ist nachrechenbar falsch — **3.3 / 0.70 = 4.71**, die 4.7 ist regelgeschoss-basiert. Mit Gesamtgebaeude-Faktoren ergaebe sich GV/HNF ~5.0-5.5 und ein Anker von ~870-960 CHF/m3. (b) Gekoppelt: der E1-Regelgeschoss-Wert **0.70** kollidiert mit dem belegten **0.75** in `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Beides adversarial BESTAETIGT, beides Fachentscheid Raphael (Korrektur eines frueheren Wissens-Chef-Entscheids) — der Anker bleibt bis dahin gueltig (oberer Rand des eigenen Bands 850-1050, innerhalb ±25 %).
- **Altpunkt geschlossen:** die seit Run 14 gefuehrte «0,70/0,60-Kopplungsformulierung» in der Wuest-Referenz ist ein **Scheinbefund** — beide Richtwerte sind unabhaengig aus der Quantilstabelle indexiert (4360 CHF/m2 HNF, 2840 CHF/m2 GF), kein Faktor im Spiel; das Quellen-Verhaeltnis wandert selbst von 0,70 (Q1.0) auf 0,60 (Q5.0). Kein Handlungsbedarf.
- **Rollen-Klarstellung (neue Matrix-Zeile):** diese KB fuehrt Healthcare **nicht** — `kennwerte.md:66-68` untersagt die Verwendung ihrer m3-Werte fuer Spital/Klinik/Pflegeheim ausdruecklich. Ein Parameter-Set in `entwurfs-referenzen` hat sich trotzdem darauf berufen (dort gesperrt).
- Ankerzahlen im Kennwert-Feld weiterhin widerspruchsfrei (Delta-Check gefahren). Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Wissens-Health-Check Phase 1: Re-Audit nach dem 24.07.-Fix (Mac Mini Nachtschicht)
- [health-check] A0·B0(**behoben**)·C1(jetzt sauber in QUESTIONS.md getrackt)·D0·E0(Frontmatter-
  Mechanismus jetzt funktionsfähig)·F2(**Teilfix**)·G0 — der 24.07.-Nachziehlauf hat die drei
  Kern-Findings (QUESTIONS.md, raw/_INGESTED.md, Frontmatter+Umlaute in kennwerte.md) verifiziert
  behoben, war aber explizit auf `kennwerte.md` begrenzt: `raw/README.md` und `outputs/README.md`
  bleiben in ae/oe/ue-Umschrift, die beiden ältesten CHANGELOG-Kopfzeilen (`010726`, `070626`)
  weiterhin im alten Datumsformat. Beides kosmetisch, kein inhaltliches Risiko. Report:
  `outputs/2026-07-25_health-check.md`.

## 2026-07-24 — Strukturelle Findings nachgezogen (Mac Mini Nachtschicht, 3 Wochen fällig)
- [struktur] Die drei seit 01.07.2026 offenen und im Health-Check 21.07.2026 dreifach
  bestätigten strukturellen Findings behoben: `wiki/QUESTIONS.md` neu angelegt (Fragen aus dem
  bisherigen INDEX-Block übernommen + HNF/GF-Provenienz-Lücke ergänzt), `raw/_INGESTED.md` neu
  angelegt (raw/ weiterhin nur README, ehrlich als Seed-Basis vermerkt), Frontmatter
  (`title/status/last_updated/sources/links`) in `wiki/kennwerte.md` ergänzt (status `emerging`,
  da an belegte Wüest-Benchmarks angekoppelt aber ohne eigene Realabrechnung).
- [umlaute] `wiki/kennwerte.md` durchgängig auf echte Umlaute ä/ö/ü umgestellt (Rule
  `umlaute-konvention.md` hat Vorrang) — rund 30 Fundstellen; Dateinamen/Backtick-Pfade
  (z.B. `fernwaerme-anschlusskosten-zh`, `kostenschaetzung`) bewusst unverändert gelassen
  (ASCII-Dateinamen-Konvention). `wiki/INDEX.md` redundanten Fragen-Block entfernt, verweist
  jetzt auf `QUESTIONS.md`.
- Kein inhaltlicher Eingriff in die Kennwerte/Tabellen selbst — reine Struktur-/Schreibregel-
  Nacharbeit gemäss Empfehlung aus `outputs/2026-07-21_health-check.md`.

## 2026-07-21 — Wissens-Health-Check Phase 1 (Mac Mini Nachtschicht)
- [health-check] A0·B2·C1offen/3neu-verifiziert·D0·E0·F3·G0 — inhaltlich weiterhin sauber
  (neue Cross-KB-Bezuege aus den Wissens-Chef-Runs 12./14.07. widerspruchsfrei, Quellen
  verifiziert), aber die drei strukturellen Findings vom 01.07. (fehlende `wiki/QUESTIONS.md` +
  `raw/_INGESTED.md`, kein Frontmatter in `kennwerte.md`, Umlaut-Umschrift ae/oe/ue statt
  ä/ö/ü) sind trotz dreimaliger inhaltlicher Bearbeitung unveraendert offen — 3 Wochen
  faellig, Phase 2 fuer diese KB nie gelaufen. Report: outputs/2026-07-21_health-check.md.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug KB energie (Doppelzaehlungs-Guard)
- [link] `wiki/kennwerte.md`: neuer Abschnitt «Querbezug KB energie» — Waermeerzeuger-/PV-/Fernwaerme-Komponentenkosten (CHF/kWp, Anschluss, Rp/kWh) werden in `wissen/energie` gefuehrt, stecken als BKP 23/24/25 bereits in den hier gefuehrten CHF/m3-GV-Kennwerten (BKP 1-5) — **nicht additiv** aufrechnen. Fuehrung m3-GV-Erstellungskennwerte bleibt hier; energie liefert Detail-/Betriebskosten. Kein Widerspruch/Doppelspur. Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Teuerungs-Check verlinkt
- [befund] W3 (Teuerungsstand grobkosten «Wüest 2022/23» vs. aktueller BFS-Baupreisindex) adversarial **WIDERLEGT**: Seed-Basis legitim (Werte explizit Seed ±25 %, Kalibrierquelle transparent, reale Bauteuerung 2023->2026 nur ~2-3 %, weit unter der Spanne). Kein Fehler.
- [link] kennwerte.md: Teuerungs-Check-Note + Verweis auf `immobilienbewertung/wiki/investorenmarkt-makro` (BFS April 2026 = 100.6). Compounding-Verlinkung, keine Wertkorrektur.

## 2026-07-12 — Wissens-Chef Run 1 Nachtrag: E1 entschieden (HNF/GF-Faktor kontextabhaengig)
- [entscheid] Fachentscheid E1 (Raphael 12.07.2026): HNF/GF-Faktor ist kontextabhaengig — **Regelgeschoss 0.70**, **Gesamtgebaeude 0.60–0.61** (inkl. Sockel/Attika/UG). Fuer die m²↔m³-Kostenbruecke ist der Gesamtgebaeude-Faktor 0.60 kanonisch. In kennwerte.md verankert; die ~1'020 CHF/m³-Ankopplung bleibt gueltig (beruht auf GV/HNF 4.7 Gesamtgebaeude). Cross-KB-Fund grobkosten-W2 damit aufgeloest.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Kennwerte-Bruecke zu immobilienbewertung
- [link] kennwerte.md -> `immobilienbewertung/wiki/realwert-sachwert` (und zurueck). Klargestellt: die dortige Wuest-Tabelle «Immobilien entwickeln» S. 37 (ausbaustandard-/lagegestuft) und der hier gefuehrte Wuest-Dimensions-Median sind ZWEI verschiedene Wuest-Produkte mit verschiedener Bezugsbasis — kein Widerspruch (adversarial verifiziert, kennwerte-W1/W4 WIDERLEGT). Vergleich nur basisgleich.
- [offen] Kennwerte-W2 (m2->m3-Umrechnungsfaktor 0.70 in kennwerte vs. 0.60-0.61 dreifach trianguliert in immobilienbewertung) BESTAETIGT + als heikel markiert -> Entscheid Raphael (siehe koordination/outputs/2026-07-12_wissens-chef-run1.md).

## 010726 — Wissens-Health-Check (Phase 1)
- Audit A-G unbeaufsichtigt gelaufen. Inhaltlich sauber (A/C/D/E/G gruen), formal 2 Findings:
  B (QUESTIONS.md + raw/_INGESTED.md fehlen), F (kein Frontmatter, ae/oe/ue statt echter Umlaute,
  CHANGELOG-Datumsformat). Keine falschen Kennwerte, alle Werte korrekt Seed + Provenienz.
- Report: `outputs/2026-07-01_health-check.md`. Phase-2-Fixes offen (nur interaktiv).

## 070626 — KB angelegt (Seed)
- KB `grobkosten` erstellt (raw/ wiki/ outputs/, CLAUDE.md).
- `wiki/kennwerte.md`: Seed-Kennwerte Wohnbau-Neubau CHF/m3 GV (BKP 1-5), Region ZH —
  Erfahrungswerte, kalibriert an Studie 2621 Giebelweg 12 (MFH gehoben 950, Band 850-1050).
  Noch NICHT mit Realabrechnungen belegt (Reife: Seed).
- Zuschlagstabelle (Hang, Baugrund, Standard, Kleinvolumen) + Umrechnung Baumasse→GV.
- Speist Skill `grobkosten-onepager` + Agent `grobkosten-rechner`.
- Naechster Schritt: erste Realwerte (Schlussabrechnung/Offerte) in raw/ → wiki nachfuehren.

## 070626 — Wüest-Benchmarks angekoppelt
- Belegte Wüest-Kostenbenchmarks Wohnbau (CHF/m² HNF/GF, BKP 1–5/2, Stand 2022/23) als Referenz in
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` abgelegt
  (Quelle Wüest Academy P23D S. 32–34 + SIA 2020 + BfS; Visualisierung/Anhang im IMMO-Ordner).
- `wiki/kennwerte.md`: m³-Seed an die m²-Benchmarks angekoppelt (4'800 CHF/m² HNF ≈ 1'020 CHF/m³ GV
  bestaetigt Band 850–1'050). Reife: Seed → «Seed, Wüest-kalibriert».
- Skill `kostenschaetzung` SKILL.md um Wohnbau-Benchmark-Sektion erweitert.
