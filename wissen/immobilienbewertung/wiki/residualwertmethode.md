---
title: Residualwertmethode — Landwert aus der Projektentwicklung
status: established
last_updated: 2026-06-03
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1 Projektbewertung, L. Huesser), IMMO-03 Residualwert (Pre-Check-Tool, Residualwert-Tool JANS), IMMO-01 RW Residualwert-Projekte]
links: [[bewertungsverfahren-ueberblick]], [[ertragswert-dcf]], [[lageklasse-landwertanteil]], [[flaechendefinitionen-sia]], [[investorenmarkt-makro]]
---

# Residualwertmethode — Landwert aus der Projektentwicklung

Die **wichtigste Kennzahl der Projektevaluation** ist der **Landwert** — und der zentrale
Lerninhalt des Wuest-Kurses: "Sie lernen den Landwert aus der Entwicklung eines typischen
Mehrfamilienhauses zu berechnen." (Wuest-Kurs S. 2)

## Grundidee

Der Landwert ist das, was **uebrig bleibt** (Residuum), wenn man vom erzielbaren Endwert
des fertigen Projekts alle Kosten und die geforderte Entwickler-/Investorenmarge abzieht:

```
Landwert (zahlbar)  =  Endwert/Verkehrswert des fertigen Projekts
                       − Erstellungskosten (BKP 1–9)
                       − Baunebenkosten / Projektierung / Honorare
                       − Finanzierungskosten waehrend Bau
                       − Vermarktung / Reserven / Risiko
                       − geforderte Marge (Entwickler-/Investorengewinn)
```

- **Endwert** = bei Renditeobjekt der kapitalisierte Ertragswert ([[ertragswert-dcf]]),
  bei Verkauf (STWE/EWG) die Summe der erzielbaren Verkaufspreise (hedonisch,
  [[vergleichswert-hedonisch]]).
- Ergibt der zahlbare Landwert **mehr** als der geforderte Kaufpreis des Bodens → das
  Projekt traegt eine Marge, der Ankauf lohnt sich. Andernfalls nicht.

## Anwendung im JANS-Workflow

- **Tool:** `Immo-02-P23D-Residualwert_Projektbewertung.xlsx` (Wuest-Vorlage, JANS-Variante)
  und das `Pre-Check_Tool` fuer den Schnellcheck. Formel-Logik der Excel-Tools ist noch
  nicht reverse-engineered → `wiki/wissensluecken.md`.
- **Szenarien:** Projekte werden in `hoch/` und `tief/` gerechnet (Best-/Worst-Case) —
  siehe Ordnerstruktur der RW-Projekte. Das ist die Sensitivitaet (CS).
- **Bezug Machbarkeit:** Das Bauvolumen (aGF/m3) kommt aus dem Skill `machbarkeit`; die
  Residualwert-/Wirtschaftlichkeitsrechnung dort (`wirtschaftlichkeit-rechner`) nutzt
  dieselbe Methodik. Diese KB ist die geteilte Faktenbasis.

## Kritische Stellgroessen (Sensitivitaet)

Der Landwert reagiert hebelartig auf:
1. **Erzielbarer Mietzins / Verkaufspreis** (Endwert) — groesster Hebel.
2. **Diskont-/Kapitalisierungssatz** (bei Renditeobjekt) — siehe [[ertragswert-dcf]].
3. **Erstellungskosten** (BKP) — Skill `kostenschaetzung`.
4. **Geforderte Marge** — typischerweise 10-20 % der Anlagekosten (Bautraegergewinn);
   exakte JANS-Bandbreite noch zu belegen → `wiki/wissensluecken.md`.

Weil der Landwert ein **Residuum** ist, wirken kleine Aenderungen der Inputs gross auf das
Resultat — deshalb immer als Bandbreite (hoch/tief), nie als Punktwert ausweisen.

## Offen / zu vertiefen

- Genaue Margen-Bandbreite JANS, Finanzierungsannahmen (Zins/Laufzeit), Vermarktungs-%.
- Reverse-Engineering der Excel-Tool-Logik (Diskontierung Jahr-fuer-Jahr, Terminal Value).
- Curriculum-Lektionen Wuest-Kurs Modul 1 (S. 13 ff.) noch einzuarbeiten.
