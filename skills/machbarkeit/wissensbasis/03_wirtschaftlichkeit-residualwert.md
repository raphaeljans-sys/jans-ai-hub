# Wirtschaftlichkeit & Residualwert (Studientyp B)

Das Ökonomie-Modul der JANS-Studien — die Dimension, die "darf ich bauen" zu "lohnt es sich"
macht. Bedient durch den Sub-Agent `wirtschaftlichkeit-rechner`. Belege: Ebmatingen
Marktwertanalyse, WOMA Residualwert-Pre-Check-Tool, Niederhasli Controlling Fact Sheet,
Steinhof ROI, WALD Rentabilität.

## Residualwert-Methode (zahlbarer Landwert)
```
   Ertragswert (kapitalisierter Soll-Mietertrag)
   ODER Verkaufserlös (HNF × Verkaufspreis/m²)
 − Erstellungskosten (HNF × CHF/m² inkl. MwSt + Parkplätze)
 − Risiko-/Gewinnanteil (Bautraeger-Marge, 5–8 %; Ebmatingen 8 %)
 = Residualwert VOR Abzügen
 − weitere Abzüge (Altlasten/Schadstoffe/Rückbau; Ebmatingen −CHF 200'000)
 − Diskontierung/Abzinsung (2.5–3 %, je Projektdauer/Gemeinde)
 = RESIDUALWERT NACH ABZÜGEN  = zahlbarer Landwert
```
**Beleg Ebmatingen:** GSF 821 m², HNF 293 m², Erstellungskosten ~CHF 1.74 Mio, Residualwert
nach Abzügen **CHF 2'967'000 = CHF 3'610/m² GSF**; Brutto-/Nettorendite nach Fertigstellung
**2.9 % / 2.5 %**; Wert Liegenschaft mit STWE CHF 4'688'000.
Gegenkontrolle immer über UBS-Fact-Sheet (Baulandpreis/m²) + Makleranalyse.

## Marge-/Controlling-Methode (Ankaufsprüfung, Beleg Niederhasli)
**Controlling Fact Sheet** (Kernprodukt Typ B): Grundstück/Zone · Kaufpreis · baurechtliche
Basis (BZO-Stand, IVHB) · Kostenbasis WKB (CHF, CHF/m² oberirdisch) · Ertragsannahmen
(CHF/m² HNF) · **Marge in CHF und %** · Risiko-Ampel · Empfehlung.
Beleg: Kaufpreis CHF 1.49 Mio, Gesamtkosten WKB CHF 5.61 Mio (2'650/m² oberirdisch), Ertrag
11'000/m² HNF, **Marge 8.1 %**.
Marge = (Verkaufserlös − Gesamtkosten inkl. Land) / Gesamtkosten.

## Sensitivitätstabelle (Pflicht bei Typ B)
Marge gegen die zwei kritischsten Unsicherheiten auffächern:
- **Ausnützungs-Delta** (0 % / −10 % / −20 % realisierbare Fläche) ×
- **Kostenmodell** (A fix / B 70-30 fix-variabel)
→ Marge in CHF und % je Zelle. Zeigt, ab welcher Ausnützungs-/Kostenverschlechterung das
Projekt kippt. (Beleg Niederhasli "Tabelle.docx".)

## ROI-Methode (Variantenvergleich, Beleg Steinhof)
`ROI = (Marktwert − Investitionskosten) / Investitionskosten × 100`
Marktwert über UBS-Fact-Sheet (CHF/m² EW × HNF). Je Variante rechnen.
Beleg: Erweiterung "Erhalt Haus Jans" **12 %** vs. Ersatzneubau **36 %** → quantifiziert den
Preis des Bestandeserhalts.

## Healthcare-Rendite (Beleg WALD)
Bruttorendite = Mietertrag/Investition (~6.8 %); Nettorendite via **Annuität** (BWO-Referenz-
zinssatz 1.75 %, lineare Abschreibung 33 J CURAVIVA, Unterhalt+Verwaltung je 0.5 %) ~1.1 %;
Sensitivität bei 2 % Amortisation → 3.3 %. Pflegeplatzkosten/Monat + Hotellerie-Taxe als Treiber.

## Typische Parameter (Defaults, projektweise verifizieren)
Bautraeger-Marge 5–8 % · Diskontierung 2.5–3 % · Kapitalisierungssatz Grobkosten 3.5 % ·
Geschäftsflächen 5.5 % Bruttorendite · Schadstoff-/Rückbaupauschale fallweise (Bsp. 200k).

## Quellen
Skill `kostenschaetzung` (Kosten), UBS Real Estate Local Fact Sheet (Markt), Wüest-Partner
Businesscase-Kennwerte, Makleranalyse, BWO-Referenzzinssatz/CURAVIVA (Healthcare). Das
WOMA-"Pre-Check-Tool" (XLSX) ist das kanonische Rechenwerkzeug (siehe `referenzen/README.md`).
