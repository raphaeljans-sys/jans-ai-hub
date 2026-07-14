# QUERBEZUEGE — Register der Cross-KB-Bezuege

Bekannte thematische Ueberschneidungen zwischen den KBs, mit Prueflauf, Befund und Status.
Neueste Pruefung zuoberst je Paar. Gefuehrt vom Wissens-Chef (`wissens-chef`).

## Rollen-/Fuehrungs-Matrix (wer ist fuehrend fuer WAS)

| Thema | Fuehrende KB (Wahrheit) | Zuliefernde KB (verweist dorthin) |
|---|---|---|
| Wald-/Gewaesserabstand, Baulinien, Zonenmasse, Verfahren (Recht) | **baurecht** | planungsgrundlagen (Geodatum/Beschaffung) |
| Geodatum/OEREB/Kataster/Vektorlinien | **planungsgrundlagen** | baurecht (verweist fuer Bezug) |
| Norm-Fundstellen SIA/VKF/VSS (Ziffer/Ausgabe/Kennwert) | **normen** | baurecht (nennt Norm, verweist auf Destillat) |
| Energie-Fachphysik / U-Werte / Grenzwerte / PV-Technologie | **energie** | planungsgrundlagen/energie-* |
| Energienachweis-Verfahren / EVEN / Formulare / Private Kontrolle | **planungsgrundlagen** (energie-*) | energie (verweist fuer Verfahren) |
| Grobkennwerte CHF/m3 GV (BKP 1-5, Wohnbau) | **grobkosten** | immobilienbewertung/realwert |
| Wuest-Ausbaustandard-Tabelle CHF/m2 HNF (Immobilien entwickeln) | **immobilienbewertung** | grobkosten (verweist) |
| Wuest-Kostenbenchmark-Referenz (Median/Quantile) | **skills/kostenschaetzung/referenzen** | grobkosten + immobilienbewertung |
| Spec-Methode (formales Geruest) | **spec** | twin (verweist als Evidenz) |
| Raphaels Arbeitsweise/Denken (Verhaltensevidenz) | **twin** | spec (verweist als Evidenz) |

## Gepruefte Paare

### normen ↔ energie (SIA 2024, SIA 382/1) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Widersprueche. **Veraltetes 2x — der FUEHRENDE KB normen ist ueberholt:** (1) SIA 2024 —
  normen REGISTER Z.266 fuehrt **2006**, energie fuehrt **SIA 2024:2021** (inkl. Korrigenda C1:2024); (2)
  SIA 382/1 — normen REGISTER Z.464 fuehrt **2014**, energie fuehrt **SIA 382/1:2025** (in Kraft seit
  1.2.2025). Beide Editionen **WebSearch-verifiziert am SIA-Shop** (bestaetigt). 3 fehlende «Querbezug KB
  normen»-Bloecke im Run-69-SIA-2024-Stoff (energie nannte SIA-Normen als Prosa ohne normen-Verweis).
  Doppelspur SIA-382/1-Kennwerte (beide KBs, divergierende Ausgabe). «Zu verifizieren»: energie zitiert
  «SIA 384/2 Heizlast» als SIA-2024-Herleitung — benigne historische Zitierung (kein Aktualitaets-Claim).
- **Aktion:** 2 Ausgaben-Flags in normen REGISTER (Z.266 + Z.464, Format analog SIA-181:2020-Flag Run 3);
  3 «Querbezug KB normen»-Bloecke in energie (2× sia-2024, 1× komfortlueftung). **Offen (Bring-Schuld
  normen-Loop):** Re-Destillate SIA 2024:2021 + SIA 382/1:2025 (kostenpflichtiger Volltext SIA-Shop).
  **Status: verlinkt/geflaggt; 2 offene Re-Destillate.**

### normen ↔ planungsgrundlagen (VKF, Normkonzept BSV 2026) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Sachwidersprueche (BSV 2015 geltend, BSV 2026 Zukunft/Inkrafttreten ~2027 — beidseitig
  deckungsgleich; RF-/EI-Klassen konsistent). **Neubefund «Fuehrung in der falschen KB»:** der neue §1a
  (planungsgrundlagen `brandschutz-pl03-wegweiser` Z.137ff, Run 48) fuehrt das VKF-Primaerdokument
  «Normkonzept BSV 2026» (38 Eckpunkte) materiell und unverlinkt; laut Rule `normen-referenz` ist normen
  fuehrend. normen hat die PDF beschafft (CHANGELOG/QUESTIONS), aber **kein Destillat** → Querlink derzeit
  nicht auf einen Zielartikel setzbar. Restbestand RF/EI-Doppelspur im §4 bereits selbst-geflaggt (Run 37
  teilbereinigt).
- **Aktion:** «Querbezug KB normen»-Block in §1a gesetzt (Fuehrung + offener Trim-Hinweis). **Offen (nicht
  autonom, heikel):** normen destilliert Normkonzept BSV 2026 → dann §1a auf Planungs-Framing kuerzen +
  verlinken (Trim = groessere Umstrukturierung). **Status: verlinkt/geflaggt; 1 offener Trim (nach
  normen-Destillat).**

### energie ↔ grobkosten ↔ immobilienbewertung (Run-69 Kostenthemen) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Widersprueche, 0 Doppelspur — **Metrik-Ebenen sauber getrennt**: energie fuehrt
  Komponenten-/Betriebs-/Anschlusskosten (CHF/kWp, Fernwaerme-Anschluss, Rp/kWh), grobkosten/immo fuehren
  aggregierte Erstellungskennwerte (CHF/m3 GV BKP 1-5 / BKP-2-Anteile). Einziger Befund: fehlende
  bidirektionale Querverlinkung + **latentes Doppelzaehlungs-Risiko** (energie-Komponenten sind BKP-23/24/25
  und stecken bereits in den Aggregaten).
- **Aktion:** bidirektionale «nicht additiv»-Querbezuege gesetzt: grobkosten `kennwerte` + immo
  `realwert-sachwert` → energie; energie `fernwaerme-anschlusskosten-zh` + `pv-marktzahlen-kosten-ch-2025`
  → grobkosten/immo (Doppelzaehlungs-Guard). **Status: bereinigt.**

### normen ↔ planungsgrundlagen (Brandschutz VKF) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche (VKF-Kennwerte deckungsgleich). **Doppelspur** (hoch relevant):
  planungsgrundlagen `brandschutz-pl03-wegweiser` fuehrt nach Run 34 VKF-BSR-Ziffern/Kennwerte
  im Wortlaut, obwohl **normen** die fuehrende Norm-Fundstelle ist (Rule `normen-referenz.md`).
  Gebremst durch die bereits vorhandene C1-Arbeitsteilung (delegiert Fach-Detail an Skill
  `brandschutz`), aber ohne Cross-Link zu normen. **Veraltetes:** normen-Destillat
  `vkf-merkblatt-2001-15-solaranlagen` fuehrt Ausgabe 2015; planungsgrundlagen belegt Rev. 2022
  (RF3(cr) statt RF4(cr)).
- **Aktion:** 2 Querbezuege → normen gesetzt (wegweiser + pv-brandschutz); normen-Destillat +
  REGISTER + QUESTIONS mit 2022-Flag annotiert. **Offen (Raphael/Loop):** VKF-Ziffern im Wegweiser
  via normen ziehen statt duplizieren (Trim = grosse Umstrukturierung, NICHT autonom); VKF-Merkblatt
  2022 re-destillieren. **Status: verlinkt/geflaggt; 2 offene Punkte.**

### normen ↔ energie (SIA 380/1, SIA 181, SIA 180, SIA 279) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche. **Veraltetes 2x:** (1) normen REGISTER fuehrt **SIA 181:2006**,
  energie arbeitet mit **SIA 181:2020** (energie aktueller); (2) energie `daemmstoffe-lambda`
  stuetzt sich auf zurueckgezogenes **SIA 2001:2005**, normen fuehrt aktuelles **SIA 279:2018**
  (normen aktueller). 4 fehlende Links (energie nennt SIA-Normen als Prosa ohne normen-Verweis).
- **Aktion:** 4 Querbezuege energie → normen (sia-181/sia-180/sia-279/REGISTER-380-1); zwei energie-
  «Offen»-Punkte (sommerlicher WS, Bemessungswerte) durch Verweis geschlossen; normen REGISTER Z.109
  + QUESTIONS mit SIA-181:2020-Flag. **Offen:** SIA 181:2020 re-destillieren (Bring-Schuld SIA-Shop).
  **Status: verlinkt; 1 offener Punkt (SIA-181:2020-Destillat).**

### energie ↔ baurecht — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche, 0 Doppelspur. 3 fehlende Links an der Verfahrens-/Nachweis-Nahtstelle
  (Energienachweis-Beilagepflicht, § 325a PBG Anzeigeverfahren, Minergie-Vermutung § 4 Abs. 4 BBV I).
- **Aktion:** 3 Querbezuege gesetzt (baubewilligungsverfahren → energie; energienachweis-zh → baurecht
  § 325a; minergie-standards → baurecht Minergie-Vermutung). Rollenteilung Recht=baurecht /
  Nachweisphysik=energie fixiert. **Status: bereinigt.**

### immobilienbewertung ↔ grobkosten (vertieft) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche (E1-Faktor konsistent, nicht erneut geprueft). 1 fehlender Link:
  `residualwertmethode` nutzt Erstellungskosten als groessten Landwert-Hebel, verweist aber nicht
  auf die kanonischen grobkosten-Kennwerte.
- **Aktion:** Querbezug residualwertmethode → grobkosten `kennwerte` (inkl. E1-Faktor). **Status: bereinigt.**

### baurecht ↔ planungsgrundlagen — geprueft 2026-07-12 (Run 1)
- **Befund:** Doppelspur Wald-/Gewaesserabstand (Rechtsmasse in beiden voll gepflegt). 3 Diskrepanzen:
  W1 (Fliessgewaesser-Regime vermischt, hoch) **BESTAETIGT** -> baurecht korrigiert;
  W3 (stehende Gewaesser 0,5-ha-Schwelle fehlte, niedrig) **BESTAETIGT** -> baurecht korrigiert;
  W2 (§66 vs §262 Waldabstandslinie, mittel) **WIDERLEGT** (komplementaer, kein Eingriff).
- **Aktion:** 3 Backlinks gesetzt (beide Richtungen), Rollenteilung fixiert. **Status: bereinigt.**

### normen ↔ baurecht — geprueft 2026-07-12 (Run 1)
- **Befund:** Keine Widersprueche. 3 fehlende Verlinkungen (baurecht nennt SIA 416 / VSS-Velo als
  Prosa ohne Verweis auf die normen-Destillate).
- **Aktion:** 2 Backlinks gesetzt (nutzungsziffern -> sia-416-2003; fahrzeugabstellplaetze ->
  vss-merkblatt-veloabstellplaetze-1998). Offen: aGF-Definition-Detailabgleich SIA 416 ↔ § 254 PBG
  (kein Widerspruch, Kandidat fuer Vertiefung). **Status: weitgehend bereinigt.**

### energie ↔ planungsgrundlagen — geprueft 2026-07-12 (Run 1)
- **Befund:** Doppelte Energie-Ebene. 1 echter Fehler: energie-W1 (EN-105 WRG-Grenzwert falsch
  «>=75 % mit Bypass») **BESTAETIGT** -> energie korrigiert. W2 (PV-Ertragsbaender) + W3 (U-Werte)
  **WIDERLEGT** (verschiedene Bezugsgroessen bzw. inhaltsgleich).
- **Aktion:** Backlink energie -> planungsgrundlagen-Verfahrensartikel; Rollenteilung fixiert
  (Physik=energie, Verfahren=planungsgrundlagen). **Status: bereinigt.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref — geprueft 2026-07-12 (Run 1)
- **Befund:** Kennwerte grundsaetzlich konsistent. W1/W4 (Wuest-Tabellen scheinbar widerspruechlich)
  **WIDERLEGT** (verschiedene Wuest-Produkte/Bezugsbasis). **W2 (m2->m3-Faktor 0.70 grobkosten vs.
  0.60-0.61 immobilienbewertung) BESTAETIGT + HEIKEL** -> **ENTSCHIEDEN 12.07.2026 (E1):** Faktor
  kontextabhaengig — Regelgeschoss 0.70, Gesamtgebaeude 0.60–0.61 (kanonisch fuer m²↔m³-Bruecke),
  in beiden KBs verankert. W3 (Baupreisindex-Stand) unverifiziert (Schema-Retry) -> Run 2 nachziehen.
- **Aktion:** 2 Backlinks (grobkosten ↔ immobilienbewertung) + Bezugsbasis-Warnung + E1-Entscheid.
  **Status: E1 bereinigt; verbleibt 1 offene Verifikation (W3, Run 2).**

### twin ↔ spec — geprueft 2026-07-12 (Run 1, rotierend)
- **Befund:** Konzeptuelle Ueberschneidung Arbeitsweise/Methodik, KEIN Widerspruch (W1 doppelspur
  **WIDERLEGT** — verschiedene Rollen). Mehrere fehlende Querlinks.
- **Aktion:** Backlink beide Richtungen (arbeitsweise ↔ anwendung-jans). **Status: bereinigt.**

### auflagebereinigung ↔ baurecht — geprueft 2026-07-12 (Run 2)
- **Befund:** Inhaltlich konsistent, verschiedene Flughoehen (baurecht = Rechtsnatur/Verfahren,
  auflagebereinigung = operative Umsetzung). 1 Widerspruch W1 (Baubeginn-Definition, niedrig)
  **WIDERLEGT** (nur Praezisionsstufe: umgangssprachl. Spatenstich = jur. Aushubbeginn). 1 Doppelspur
  (Fristen-Phasen = designter Handoff, kein Eingriff). 5 fehlende Backlinks.
- **Aktion:** 4 Backlinks gesetzt (fristenlogik -> nebenbestimmungen + bauausfuehrung; aemter ->
  baubewilligungsverfahren; bauausfuehrung -> fristenlogik) + Baubeginn juristisch praezisiert
  (§ 326 PBG). **Status: bereinigt.**

### W3-Nachverifikation (Baupreisindex) — 2026-07-12 (Run 2)
- **grobkosten Teuerungsstand vs. immobilienbewertung BFS-Index:** adversarial **WIDERLEGT** — Seed
  ±25 % legitim, reale Bauteuerung 2023->2026 ~2-3 %. Teuerungs-Check-Verlinkung gesetzt. **Erledigt.**

## Noch nie gepruefte Paare (Rotation kuenftige Laeufe)
- energie ↔ baurecht (Energienachweis-Pflicht im Bewilligungsverfahren) — Vorschlag Run 3
- kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung (Kunden-Kontext)
- immobilienbewertung ↔ grobkosten (Landwert/Residual ↔ Kennwerte) — vertieft
- energie ↔ baurecht (Energienachweis-Pflicht im Bewilligungsverfahren)
- normen ↔ energie (SIA 380/1, SIA 180/181 ↔ energie U-Werte/Schallschutz)
- architekten-synobsis ↔ entwurfs-referenzen (Referenz-/Entwurfswissen)
