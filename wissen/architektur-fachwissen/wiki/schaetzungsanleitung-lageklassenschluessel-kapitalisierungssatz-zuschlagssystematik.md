---
title: "Amtliche Schätzungsanleitung: Lageklassenschlüssel-Methode und Kapitalisierungssatz-Zuschlagssystematik"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/11_Kostenkennzahlen/schaetzungsanleitung_kap5.pdf (Anhang «Schätzungsanleitung», Teil III schätzungstechnische Grundlagen, Kapitel 5 «Tabellen», Dateidatum 16.09.2015, Tabellen datiert um 2003; Tabelle 6/7 S. 7-8 Lageklassenschlüssel, Tabelle 8 S. 9 Landwertanteil, Tabelle 21 S. 31 Kapitalisierungssatz — Kapitalisierungssatz-Basiszins referenziert die Schwyzer Kantonalbank, Dokument vermutlich kantonale amtliche Schätzungsanleitung Kt. Schwyz, Herausgeber im PDF nicht genannt)", "raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md Tabelle P2 Zeile 95"]
links: ["[[ertragswert-dcf]]", "[[residualwertmethode]]"]
---

# Amtliche Schätzungsanleitung: Lageklassenschlüssel-Methode und Kapitalisierungssatz-Zuschlagssystematik

## Kontext

Anhang «Schätzungsanleitung» (Teil III, schätzungstechnische Grundlagen, Kapitel 5) aus dem
Archivordner `03_Bauprozesse_I_II/03_Kostenplanung`. Herausgeber und Kanton stehen nicht im
Dokument selbst; die Kapitalisierungssatz-Tabelle referenziert die **Schwyzer Kantonalbank**
als Basiszins-Quelle, was auf eine amtliche Schätzungsanleitung des Kantons Schwyz
hindeutet (nicht verifiziert — Status deshalb `speculative`). Alle Zahlenwerte (Zinssätze,
Prozentsätze, Kapitalisierungssätze) sind Stand um 2003 und **veraltet**; die beiden
Berechnungsmethoden (Lageklassenschlüssel, Zuschlagssystematik) sind strukturell weiterhin
gebräuchliche Bausteine der amtlichen Realwert-/Ertragswertschätzung und unterscheiden sich
von der Wüst&Partner-DCF-Spread-Methode in [[ertragswert-dcf]] (andere Herleitung des
Kapitalisierungssatzes, kein Widerspruch, zwei parallele Verfahren).

## Lageklassenschlüssel-Methode

Der **Landwertanteil am Neuwert** wird nicht direkt geschätzt, sondern über eine
**Lageklasse (LK)** auf einer Skala 0.1 bis 10.0 hergeleitet, getrennt für Wohnbauten
(Tabelle 6) und Gewerbe ohne Industrie (Tabelle 7):

1. Vier Kriteriengruppen werden je einzeln auf einer Skala 1 bis 10 benotet (Wohnbauten):
   **A** Allgemeine Lage (ländlich bis Grossstadt/Citylage), **B** Individuelle Lage
   (Umgebung, Immissionen, Aussicht, Orientierung des Gebäudes), **C**
   Verkehrserschliessung (Distanzen, ÖV-Angebot, Zufahrt), **D** Marktverhältnisse
   (Nachfrage/Angebot-Verhältnis). Gewerbe (Tabelle 7) verwendet nur drei Kriterien (A/B/C,
   ohne separate Verkehrserschliessung, dafür mit Verkauf/Produktion-Differenzierung unter B).
2. Die vier (bzw. drei) Einzelnoten werden **arithmetisch gemittelt** → Lageklasse mit einer
   Dezimalstelle. Beleg-Beispiel Wohnbauten: A 4.0, B 3.0, C 3.5, D 3.5 → Summe 14.0 : 4 =
   LK 3.5. Beleg-Beispiel Gewerbe: A 4.0, B 3.0, C 2.0 → Summe 9.0 : 3 = LK 3.0.
3. **Tabelle 8** (S. 9) bildet die Lageklasse (0.1er-Schritte) nichtlinear-progressiv auf
   einen **Landwertanteil in % des Neuwertes (BKP 2, 4 + 5)** ab: LK 0.1 → 0.63 %, LK 1.0 →
   6.67 %, LK 3.0 → 23.08 %, LK 3.5 → 28.00 % (beide Beleg-Beispiele oben stimmen exakt mit
   der Tabelle überein), LK 5.0 → 45.45 %, LK 10.0 → 166.67 %. Die Kurve steigt deutlich
   überproportional — eine Verdoppelung der Lageklasse mehr als verdoppelt den
   Landwertanteil.

## Kapitalisierungssatz-Zuschlagssystematik

Für Mehrfamilien-, Wohn- und Geschäftshäuser (Tabelle 21, S. 31) setzt sich der
Kapitalisierungssatz zusammen aus:

- **Basiszins**: gewichteter Durchschnittszins der letzten 5 Jahre für variable erste
  Hypotheken der (in diesem Beleg) Schwyzer Kantonalbank.
- **Bewirtschaftungskosten-Zuschlag**, gestaffelt nach drei Elementen und differenziert
  nach Bauweise, Anzahl Wohnungen/Nutzung sowie wirtschaftlichem Alter (vier Altersbänder,
  z. B. Wohnbauten massiv bis 15 Wohnungen: bis 10 J. / bis 30 J. / bis 60 J. / älter):
  - **B/U/V** = Betriebs-, Unterhalts- und Verwaltungskosten (grösster Anteil, z. B.
    Wohnbauten leicht bis 4 Whg.: 1.0–1.4 % bis 10 Jahre, steigt auf 2.3–2.5 % bei älteren
    Bauten).
  - **A** = Abschreibung/Rückstellungen für Instandsetzung (0.5–1.0 %, je nach Bauart
    weitgehend altersunabhängig).
  - **R** = Risiko für Mietzinsausfall (0.0–0.4 %, ebenfalls weitgehend altersunabhängig).
- Geschäft/Gewerbe (gleiche Tabelle, drei Bauartkategorien) liegt in vergleichbarer
  Grössenordnung, mit etwas höheren Altersspannen bei den B/U/V-Zuschlägen (bis 3.0 % bei
  älteren, vorwiegend gewerblich genutzten Massivbauten).

## Praxisregel/Anwendung

- Beide Verfahren sind als **Struktur/Nachschlagelogik** brauchbar (wie eine Lageklasse
  gebildet und in einen Prozentsatz überführt wird; welche Komponenten einen
  Kapitalisierungssatz zusammensetzen), nicht als aktuelle Zahlenquelle — für ein reales
  Gutachten Basiszins und Zuschlagsbänder aktuell neu erheben.
- Die Lageklassenschlüssel-Kriterien (A-D bzw. A-C) eignen sich als **Checkliste** für die
  Lagebeurteilung in einer Machbarkeitsstudie oder einem Kurzgutachten, unabhängig vom
  konkreten Prozentsatz.
- Nicht mit der Kapitalisierungssatz-Herleitung in [[ertragswert-dcf]] vermischen — dort
  wird der Satz aus Marktrenditen plus Objekt-/Segmentzuschlägen (Wüst&Partner-Systematik)
  hergeleitet, hier aus Hypothekarzins plus B/U/V/A/R-Bewirtschaftungszuschlägen. Beide
  Wege können nebeneinander als Plausibilisierung dienen, nie eins zu eins gemischt werden.

## Offene Punkte

- Herausgeber/Kanton/Ausgabejahr der Schätzungsanleitung sind im Dokument selbst nicht
  genannt; der Schwyzer-Kantonalbank-Bezug ist ein Indiz, kein Beleg. Vor einer Verwendung
  in einem Gutachten die Quelle amtlich verifizieren.
- Die vollständige 100-Zeilen-Tabelle 8 (Landwertanteil je Zehntel-Lageklasse) sowie die
  Rentenbarwertfaktoren-Tabelle (S. 29-30, jährlich nachschüssig, Zinssätze 6.5-9.5 %) liegen
  im Quelldokument vollständig vor, wurden hier aber nur mit Eckwerten sinngemäss
  wiedergegeben (Urheberrecht, siehe Korpus-Spec `archiv-fachwissen`).
