---
title: "eBKP-H 2012: Musterbeispiel «Haus im Forst» auf drei Genauigkeitsstufen"
status: emerging
last_updated: 2026-08-29
sources: ["/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/04_eBKP_H/00_Unterlagen/A_Hauptgruppen_Schaetzung_Finanzbedarf_de.pdf (CRB, 30.03.2009, Volltext gelesen)", "/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/04_eBKP_H/00_Unterlagen/B_Elementgruppen_Kostengrobschaetzung_de.pdf (CRB, 30.03.2009, Volltext gelesen)", "/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/04_eBKP_H/00_Unterlagen/C_Element_Kostenschaetzung_de.pdf (CRB, 30.03.2009, Volltext gelesen)", "raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md Abschnitt 5", "references/bkp-2017/BKP-2017-Liste.md"]
links: ["[[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]]"]
---

# eBKP-H 2012: Musterbeispiel «Haus im Forst» auf drei Genauigkeitsstufen

## Kontext

Das CRB-Übungsobjekt «Haus im Forst» (30.03.2009) liegt im Archiv dreifach durchgerechnet
vor — auf den drei Genauigkeitsstufen des eBKP-H 2012 (SN 506 511): Hauptgruppen
(«Schätzung Finanzbedarf»), Elementgruppen («Kostengrobschätzung») und Elemente
(«Kostenschätzung»). Alle drei Stufen bilden **dasselbe Objekt** mit steigender
Detaillierung ab, nicht drei verschiedene Gebäude. Das eBKP-H ist ein eigenständiges,
elementbasiertes Klassifikationssystem und **nicht identisch mit BKP 2017**
(Baukostenplan CRB) — die Codes A bis Z dieses Artikels sind eBKP-H-Codes, keine
BKP-2017-Kostengliederungscodes, und dürfen nicht damit verwechselt werden.

## Kernaussage: drei Genauigkeitsstufen desselben Objekts

| Stufe | Bezeichnung | Gliederungstiefe | Total Anlagekosten |
|---|---|---|---|
| A | Schätzung Finanzbedarf | 12 Hauptgruppen (A–Z) | CHF 1'200'200 |
| B | Kostengrobschätzung | Hauptgruppen + Elementgruppen (z. B. C1–C5) | CHF 1'194'800 |
| C | Kostenschätzung | Elementgruppen + Elemente (z. B. C2.1, C2.2) | CHF 1'190'700 |

Der Abstand zwischen den Stufen ist bei diesem Objekt klein: A→B minus CHF 5'400
(−0.45 %), B→C minus CHF 4'100 (−0.34 %). Das ist **kein allgemeiner Genauigkeitsbeweis**
(ein einzelnes Übungsobjekt), zeigt aber sauber, wie sich eine Kostenermittlung von der
groben zur feinen Gliederung verdichtet, ohne die Summe stark zu verschieben.

## Stufe A: Hauptgruppen-Format (Vorlage für `grobkosten-onepager`)

Format: Code, Bezeichnung, Menge, Kennwert, Summe — eine Zeile je Hauptgruppe:

| Code | Bezeichnung | Menge | Kennwert | Summe (CHF) |
|---|---|---|---|---|
| A | Grundstück | — | — | 0 |
| B | Vorbereitung | 1'165 m² | 125 | 145'600 |
| C | Konstruktion Gebäude | 230 m² | 950 | 218'500 |
| D | Technik Gebäude | 230 m² | 425 | 97'800 |
| E | Aussenwandbekleidung Gebäude | 430 m² | 140 | 60'200 |
| F | Bedachung Gebäude | 230 m² | 260 | 59'800 |
| G | Ausbau Gebäude | 230 m² | 650 | 149'500 |
| H | Nutzungsspezifische Anlage | — | — | 0 |
| I | Umgebung Gebäude | 1'060 m² | 145 | 153'700 |
| J | Ausstattung Gebäude | 165 m² | 270 | 44'600 |
| V | Planungskosten | 18.0 % auf 929'700 | — | 167'300 |
| W | Nebenkosten | 230 m² | 80 | 18'400 |
| Z | Mehrwertsteuer | 7.6 % auf 1'115'400 | — | 84'800 |
| **Total** | **Anlagekosten** | | | **1'200'200** |

## Stufe C: Beispiel der Auflösung bis auf Elementebene

Zur Illustration, wie sich Stufe A/B-Zeilen weiter aufgliedern (Beispiel Hauptgruppe C
Konstruktion Gebäude, Stufe C, Total 217'700):

| Code | Element | Menge | Kennwert | Summe (CHF) |
|---|---|---|---|---|
| C1 | Fundament | 105 m² | 228 | 23'900 |
| C2 | Wandkonstruktion | 515 m² | 237 | 121'800 |
| C3 | Stützenkonstruktion | 9 m | 278 | 2'500 |
| C4 | Decken-, Dachkonstruktion | 370 m² | 175 | 64'600 |
| C5 | Ergänzende Leistung | 5 % auf 98'000 | — | 4'900 |

Jedes Element trägt in der Quelle zusätzlich einen kurzen Klartext-Beschrieb (z. B. C2.1
«Betonwände gemäss statischem Konzept Unter- und Erdgeschoss, Holzelementwände im 1.
Obergeschoss», C2.2 «Backsteinwände im Untergeschoss und Obergeschoss») — die
Kombination aus Kennwert und Kurzbeschrieb ist das übertragbare Formatmuster für eine
eigene elementbasierte Grobkostenermittlung.

## Praxisregel

- Für eine **Zuhanden-Bauherrschaft-Grobkostenschätzung** genügt das Stufe-A-Format
  (12 Zeilen, eine Summe je Hauptgruppe) — das ist exakt das Format, das
  `grobkosten-onepager` braucht.
- Für eine **Kostenschätzung mit Ausschreibungsbezug** ist die Stufe C brauchbar, weil
  jedes Element bereits einen Materialisierungshinweis trägt, der sich in einen
  LV-Positionstitel überführen lässt.
- V «Planungskosten» ist in allen drei Stufen ein Prozentsatz auf die reinen
  Anlagekosten (hier 18.0 %) — ein plausibler Kontrollwert für eine eigene
  Honorar-Kontrollrechnung parallel zur SIA-102-Berechnung, aber ausdrücklich ein
  **Beispielwert dieser Quelle, keine Norm**.

## Warnungen (zwingend vor jeder Übernahme)

1. **Der MWST-Satz von 7.6 % ist Stand 2009 und heute falsch.** Vor jeder Verwendung
   den aktuellen Satz einsetzen.
2. **Kein Preisstand-Bezug ohne Indexierung.** Alle Kennwerte sind auf den 30.03.2009
   datiert (CRB-Übungsobjekt, keine realen Marktpreise) und dürfen nicht ungeprüft in
   ein heutiges Erzeugnis übernommen werden.
3. **eBKP-H ≠ BKP 2017.** Die Codes A bis Z (bzw. A1, B1 … J4) dieses Artikels sind
   eBKP-H-2012-Codes. Für BKP-2017-Kostengliederungen gilt ausschliesslich
   `references/bkp-2017/BKP-2017-Liste.md` (Rule `bkp-2017-referenz`) — die beiden
   Systeme sind nicht direkt austauschbar.
4. Es handelt sich um ein **CRB-Lehr-/Übungsobjekt**, nicht um ein reales JANS-Projekt;
   die Kennwerte sind didaktisch plausibel, aber nicht als Marktbeleg zu zitieren.

## Offene Punkte

- Die vollständige dritte Stufe (Element-Ebene, alle Hauptgruppen bis auf letzte
  Gliederungsstufe) sowie der «reduzierte Kostenplan» (`C_reduzierter_Kostenplan_de.pdf`)
  liegen im Archiv vor, wurden aber aus Aufwandgründen für diesen Artikel nur
  stichprobenweise (Hauptgruppe C) statt vollständig transkribiert.
- Ob CRB dieses «Haus im Forst»-Übungsbeispiel in einer neueren eBKP-H-Ausgabe
  fortführt, ist aus dem Bestand (Stand 2009) nicht zu beantworten.
