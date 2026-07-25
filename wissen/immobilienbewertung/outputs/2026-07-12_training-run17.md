# Training-Run 17 — Immobilienbewertung (2026-07-12)

**Modus:** Auffrischung/Marktpuls. Alle auto-schliessbaren Luecken sind seit Run 16 zu
(Wuest-Kurs, alle lesbaren E-Quellen, T-Aufgaben, D4 Excel-Formeln, D8 JANS-Kennwerte-DOCX).
Verbleibend nur **D5** (buerospezifische Margen-/Finanzierungspraxis — echte Bring-Schuld
Raphael, nicht durch den Loop schliessbar). Dieser Lauf ist daher ein ehrlicher **reiner
Aktualisierungslauf**: es wurde keine Quelle erfunden oder gepaddet, sondern der Markt-Stand
verifiziert und ein einziger, real veraenderter Datenwert nachgefuehrt.

## Die 10 Themen dieses Laufs (Verifikation + Nachfuehrung)

1. **Neue reale JANS-Bewertungsfaelle?** Bewertungsordner (`IMMO-01/01 BEWERTUNG PROJEKTE`)
   geprueft → **kein neuer Fall** seit Run 6 (juengster Ordner Wangen 8855, 09.06.2026).
2. **SNB-Leitzins** — unveraendert 0.00 % (Entscheid 19.06.2026 gehalten).
3. **SNB-Inflations-/Konjunkturpfad** — Inflation 0.1 % (Feb) → 0.6 % (Mai), erdoelgetrieben;
   BIP-Prognose ~1 % 2026 / ~1.5 % 2027; Devisenmarkt-Interventionsbereitschaft erhoeht.
4. **Hypothekarischer Referenzzinssatz** — unveraendert 1.25 % (BWO, per 02.06.2026 bestaetigt).
5. **Massgebender Durchschnittszinssatz** — **NEU: 1.31 % per 31.03.2026** (von 1.32 % per
   31.12.2025) → weiter weg von der Erhoehungsschwelle 1.37 %.
6. **SMG/Homegate-Mietindex** — unveraendert Mai-2026 = 133.7 (+2.5 % YoY); regionale YoY-Spitzen
   Nidwalden +7.7 % / Graubuenden +5.9 % / Uri +5.8 %, Staedte-Spitze Stadt Luzern +7.2 %.
7. **BFS-Baupreisindex** — unveraendert April-2026 = 100.6 (+1.0 % YoY); regionale Spitzen
   Tessin +1.4 % / Zentralschweiz +1.3 %; naechste Publikation Dez-2026 (Oktober-Erhebung).
8. **UBS SREBI** — Q2-2026 weiterhin **nicht publiziert**; Q1-2026 = 0.69 «moderat» bleibt Anker
   (Risiko-Hotspots GR-Tourismus / Einsiedeln / Stadt ZH / Nidwalden — beruehren JANS-Maerkte).
9. **Wuest-Partner-Sommerprognose 2026** — bestaetigt: Wohneigentum-Konsolidierung ~+3 %
   (EFH +3.1 % / ETW +2.8 %), keine drastischen Preisrueckgaenge, MFH als Anlage weiterhin gefragt.
10. **Konsistenz-/Registerpflege** — Frontmatter, Logeintrag, curriculum/_INGESTED/wissensluecken/
    CHANGELOG nachgefuehrt.

## Was gelernt / eingearbeitet

### Einziger materieller Datenpunkt: Durchschnittszinssatz 1.31 %

Der von der SNB per Stichtag **31. Maerz 2026** ermittelte, fuer den Referenzzinssatz massgebende
Durchschnittszinssatz aller laufenden Hypothekarforderungen ist gegenueber dem Vorquartal von
**1.32 % auf 1.31 %** gesunken (BWO-Entwicklungstabelle). Bewertungsrelevanz:

- Der geglaettete Satz bewegt sich **weiter weg von der Erhoehungsschwelle 1.37 %** und Richtung
  Mitte des Stabilitaetsbands (1.13–1.37 %).
- Das **Risiko einer Referenzzins-Erhoehung auf 1.50 % in den naechsten Quartalen sinkt weiter** —
  der zwischenzeitlich (Run 6, als der Satz noch nahe 1.37 % notiert war) befuerchtete Aufwaertsdruck
  auf Bestandesmieten ist damit noch unwahrscheinlicher. Fuer die Ertragsbewertung bleibt der
  Bestandes-Cashflow bei 1.25 % Referenz seitwaerts; auf hoeheren Basiswerten entsteht eher
  Senkungs- als Erhoehungspotenzial. → [[investorenmarkt-makro]] / [[ertragswert-dcf]].

Alle uebrigen Anker sind unveraendert (kein Publikationstermin mit neuem Signal seit Run 16).
Der naechste echte Signaltermin ist die **Referenzzins-Publikation 01.09.2026** (Stichtag 30.06.2026).

## Was geaendert (Artikel + Register)

- `wiki/investorenmarkt-makro.md` — Durchschnittszinssatz-Update (1.31 %) in der Referenzzins-
  Marktpuls-Sektion, Run-17-Logeintrag, Frontmatter-Quelle + last_updated 07-10→07-12.
- `raw/_INGESTED.md` — Run-17-Stand-Block (kein neuer Fall, Marktpuls).
- `training/curriculum.md` — E7-Zeile ✓ 2026-07-12.
- `wiki/wissensluecken.md` — Run-17-Erledigt-Zeile + Marktpuls-Stand in der B-Tabelle.
- `CHANGELOG.md` — Run-17-Eintrag (neueste zuoberst).
- `outputs/2026-07-12_training-run17.md` — dieser Report.

## Stand / was als Naechstes

- **Loop weiterhin im Auffrischungs-Modus.** Alle auto-schliessbaren Luecken zu; verbleibend nur
  D5 (Bring-Schuld Raphael). Kein Padding — dieser Lauf hat bewusst nur verifiziert und den einen
  real veraenderten Wert nachgefuehrt.
- **Naechste Laeufe / erwartete Signaltermine:**
  - **01.09.2026** — Referenzzins-Publikation (Stichtag 30.06.2026): ob der Durchschnittszins die
    1.37-%-Schwelle beruehrt (aktuell 1.31 %, Tendenz sinkend → Erhoehung unwahrscheinlich).
  - **~09.2026** — UBS SREBI Q2-2026 (ob der zweite starke Quartalsanstieg sich fortsetzt).
  - **Dez-2026** — BFS-Baupreisindex (Oktober-Erhebung).
  - Jederzeit: neue reale JANS-Bewertungsfaelle, sobald im Bewertungsordner vorhanden.
- **Empfehlung an Raphael:** D5 (uebliche Bautraegermarge %, Finanzierungszins/Laufzeit,
  Vermarktungs-/Reserve-%) bleibt die einzige inhaltliche Luecke, die der Loop nicht selbst
  schliessen kann — ein kurzer Input dazu wuerde die Residualwert-/Machbarkeitsrechnungen praeziser
  auf die JANS-Praxis kalibrieren.
