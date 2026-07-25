# Training-Run 9 — Immobilienbewertung (2026-06-26)

Unbeaufsichtigter Lauf des Lern-Loops (`training/PROGRAMM.md`). Der Wuest-Kurs und alle lesbaren
E-Quellen sind seit Run 6 eingearbeitet; der Loop laeuft im **Aktualisierungs-/Vertiefungs-Modus**.
Schwerpunkt dieses Laufs: die in Run 8 als Naechstes empfohlene Aufgabe **D3 — vollstaendige
JANS-Diskontsatz-Tabelle je Nutzung/Lage/Risiko (real vs. nominal)**, plus Marktpuls-Refresh.

## Ausgangslage

Offen sind nur noch Freigabe-/Bring-Schuld-gebundene Quellen: **D4** (XLSX-Tool-Formeln), **D8**
(`_Kennwerte Jans.docx` + Healthcare-DOCX), **T17** (realer Healthcare-Bewertungsfall) und **D3**
(JANS-Diskontsatz-Faustregeln). D3 war als **D/T** klassiert: der **T-Teil** (Geruest aus belegten
Ankern) ist von Claude schliessbar, nur die persoenlichen JANS-Faustregeln sind Bring-Schuld. Genau
diesen T-Teil hat Run 9 geschlossen.

## Die 10 Themen dieses Laufs (D3-Konsolidierung + Marktpuls)

| # | Thema | Aufgabe | Ziel-Artikel |
|---|---|---|---|
| 1 | **Risikofreies Basisniveau datiert**: 10-j Eidgenoss ~0.32-0.40 % (Juni 2026, Web) | D3/E7 | ertragswert-dcf, investorenmarkt-makro |
| 2 | **Additive Bottom-up-Herleitung** (Basiszins + Illiquiditaet + Lage + Objektrisiko) aus Modell S. 54 | D3 | ertragswert-dcf |
| 3 | **Konsolidierte Diskonttabelle Wohnen** je Lage (2.1-3.3 %) aus WP S. 52/55 zusammengefuehrt | D3 | ertragswert-dcf |
| 4 | **Gewerbe/Geschaeft** (+0.6-1.5 Pp → 2.7-3.8 %) als eigene Zeile | D3 | ertragswert-dcf |
| 5 | **Healthcare-Zeile** (~3.0-4.0 %, *Annahme*) als Bruecke zu healthcare-wirtschaftlichkeit | D3/T17 | ertragswert-dcf |
| 6 | **Real-vs-nominal-Bruecke (Fisher)**: nominal ≈ real + Langfrist-Teuerung ~1.0 % → ~3.1-4.3 % Wohnen | D3 | ertragswert-dcf |
| 7 | **Plausibilisierung top-down ↔ bottom-up** (beide Wege → gleiche Bandbreite) | D3 | ertragswert-dcf |
| 8 | **Sensitivitaets-Leitplanke** −20 Bps → +16 % als Anwendungsregel verankert | D3 | ertragswert-dcf |
| 9 | **Marktpuls-Check** SNB 0.00 % (19.06) + Referenzzins 1.25 % unveraendert | E7/T10 | investorenmarkt-makro |
| 10 | **Abgrenzung belegt vs. Annahme**: Bring-Schuld-Rest sauber markiert + D3 zurueckgestuft | D3 | wissensluecken |

## Was gelernt / konsolidiert wurde (Kerngehalt)

- **D3 war zu 80 % schon belegt — es fehlte die Synthese.** Die Anker lagen verstreut: WP-Empfehlung
  S. 52 (Lagetabelle real), Erfahrungswerte S. 55 (2.1-3.3 % Wohnen / 2.7-3.8 % Gewerbe),
  Risikozuschlagsmodell S. 54 (additiv), JANS-Konvention 2.50/2.70 % (Run 5). Run 9 fuehrt sie zu
  **einer** Tabelle zusammen — top-down (aus Transaktionen) **und** bottom-up (Kapitalmarkt) muenden
  in dieselbe Bandbreite, was die Tabelle gegen sich selbst plausibilisiert.
- **Das risikofreie Basisniveau ist jetzt eine Zahl, nicht «tief».** Run 7 schrieb «Renditen 10-j
  Bundesobligationen tief» ohne Wert. Run 9 belegt **~0.32-0.40 % (Juni 2026)** — nahe null, sogar
  tiefer als im WP-Kursstand Sommer 2023. Damit ist die WP-Logik «kein genereller Aufschlag noetig,
  eher unteres Band» nicht mehr nur Behauptung, sondern aus dem Basiszins hergeleitet.
- **Bottom-up reproduziert die WP-Anker.** Mit ~0.35 % Basiszins + ~1.6-1.9 Pp Immobilien-Basisrisiko/
  Illiquiditaet ergibt sich die «beste Lage Wohnen ~2.1 %» (S. 55) — die Illiquiditaetspraemie ist als
  *Annahme* ausgewiesen (rueckgerechnet), die Lage-/Objektzuschlaege sind aus S. 52/55 abgeleitet.
- **Real und nominal sauber getrennt.** Die WP-Saetze sind **real** (real konstante Mieten — CH-Standard).
  Wer nominal rechnet, braucht real + Langfrist-Teuerung; bei SNB-Ziel < 2 % / Ist 0.6 % → ~1.0 %
  Annahme → nominal ~3.1-4.3 % Wohnen. Festgehalten als haeufigster DCF-Fehler («nie mischen»).
- **Was bleibt Bring-Schuld:** Raphaels eigene Faustregeln fuer den Illiquiditaets-/Objektzuschlag, die
  Gewerbe-Feinabstufung je Mietersegment und der Healthcare-Zuschlag (real). Die *belegten* Zeilen sind
  abschliessend; die *Annahme*-Zeilen warten auf Kalibrierung. D3 ist damit von «D/T hoch» auf «D mittel».

## Geaenderte Artikel

- `wiki/ertragswert-dcf.md` → neue Sektion **JANS-Diskontsatz-Tabelle (D3 konsolidiert)** (additive
  Herleitung, konsolidierte Tabelle je Nutzung/Lage, Real-vs-nominal-Bruecke, Sensitivitaets-Leitplanke);
  Frontmatter-Quelle + «Offen/zu vertiefen»-Log ergaenzt; last_updated 2026-06-26.
- `wiki/investorenmarkt-makro.md` → **Rendite 10-j Bundesobligation ~0.32-0.40 % (Juni 2026)** als
  risikofreies Basisniveau ergaenzt; Marktpuls-Check SNB/Referenzzins unveraendert; last_updated 2026-06-26.
- Register: `wissensluecken.md` (D3 T-Teil ✓ + Rueckstufung), `curriculum.md` (E7 laufend Run 9),
  `raw/_INGESTED.md` (Stand Run 9), `CHANGELOG.md` (Run 9 zuoberst).

## Datenstand / Vorbehalte

- 10-j Eidgenoss ~0.32-0.40 % aus Web (tradingeconomics / SNB-Datenportal), Stand 06.2026 — als
  Jahresmittel/Tagesstand bei Anwendung neu pruefen.
- Die WP-Diskontanker sind Stand Sommer 2023; durch das aktuelle Zinsumfeld (Run 9 belegt) weiterhin
  plausibel und am unteren Band. Nichts erfunden: jede belegte Zeile mit Kursseite/Web-Quelle; die
  *Annahme*-Zeilen (Illiquiditaetspraemie, Healthcare-Zuschlag) sind als solche markiert.

## Was als naechstes (Run 10)

- **D3-Rest (Bring-Schuld Raphael):** die JANS-Faustregeln zur Kalibrierung der *Annahme*-Zeilen
  (Illiquiditaets-/Objektzuschlag, Gewerbe-Feinabstufung, Healthcare-Zuschlag real vs. nominal).
- **T17** Healthcare-Bewertungs-Bruecke zu `healthcare-wirtschaftlichkeit` (sobald ein reales
  Pflegeheim-/Klinik-Bewertungs-Deliverable vorliegt).
- **D4 / D8** Freigabe-gebundene Quellen (XLSX-Tool-Formeln, `_Kennwerte Jans.docx` + Healthcare-DOCX).
- **T10 laufend:** naechste Referenzzins-Publikation **01.09.2026** (ob Durchschnittssatz ueber
  1.37 % steigt), SREBI Q2-2026 (~09.2026), BFS-Baupreisindex Apr-2026-Detailwerte nachziehen.

## Quellen (Web, Marktpuls)

- Rendite 10-j Schweizer Bundesobligation (~0.32-0.40 %, Juni 2026): tradingeconomics.com / data.snb.ch
- SNB-Leitzins 0.00 % (Lagebeurteilung/Stand 19.06.2026): raiffeisen.ch / snb.ch
- BWO Hypothekarischer Referenzzinssatz (1.25 %, Stand 06.2026): bwo.admin.ch/referenzzinssatz
