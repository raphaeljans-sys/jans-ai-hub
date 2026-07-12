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

## Noch nie gepruefte Paare (Rotation kuenftige Laeufe)
- auflagebereinigung ↔ baurecht/brandschutz (Aemter/Fristen/QSS)
- kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung (Kunden-Kontext)
- immobilienbewertung ↔ grobkosten (Landwert/Residual ↔ Kennwerte) — vertieft
- energie ↔ baurecht (Energienachweis-Pflicht im Bewilligungsverfahren)
- normen ↔ energie (SIA 380/1, SIA 180/181 ↔ energie U-Werte/Schallschutz)
- architekten-synobsis ↔ entwurfs-referenzen (Referenz-/Entwurfswissen)
