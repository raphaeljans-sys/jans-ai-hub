---
title: Realwert / Sachwert — Bodenwert plus Gebaeude-Zeitwert
status: emerging
last_updated: 2026-06-03
sources: [IMMO-03 Schaetzungen (schaetzungsanleitung_kap5.pdf), IMMO-06 Kennwerte, IMMO-01 LB Liegenschaftsbewertung-Projekte]
links: [[bewertungsverfahren-ueberblick]], [[lageklasse-landwertanteil]], [[flaechendefinitionen-sia]], [[datenquellen-registry]]
---

# Realwert / Sachwert — Bodenwert plus Gebaeude-Zeitwert

Der Realwert (Sachwert) bildet ab, was die **Substanz** heute wert ist:

```
Realwert  =  Bodenwert (Landwert)
           + Gebaeude-Zeitwert  (= Neuwert − Alterswertminderung)
           + Aussenanlagen / Baunebenkosten
           (± Umweltfaktoren / Marktanpassung)
```

## Bausteine

### Bodenwert (Landwert)
Aus Vergleichswert (Bodenpreise, [[datenquellen-registry]]) oder ueber den
**Landwertanteil am Neuwert** nach Lageklasse: [[lageklasse-landwertanteil]].

### Neuwert (Gebaeude)
Was es kosten wuerde, das Gebaeude heute neu zu erstellen — flaechen- bzw. volumenbasiert
(aGF/BGF/m3, [[flaechendefinitionen-sia]]) mal Kostenkennwert je Nutzung und Standard
(BKP). Kennwerte: Skill `kostenschaetzung` und `IMMO - 06 Kennwerte` (Wohnen/Healthcare/
Buero). Zeitindexierung ueber Baupreisindex (BFS / Zuercher Wohnbaukosten-Index).

Die Schaetzungsanleitung Kap. 5 (`IMMO-03 Schaetzungen`) enthaelt generische
Neuwert-Richtwerte nach Bauklasse und Abbruchkosten nach Bauart — die genauen Tabellenwerte
sind noch zu extrahieren und zu verifizieren → `wiki/wissensluecken.md`.

### Alterswertminderung
Abzug fuer Alter/Abnutzung des Gebaeudes (lineare oder Ross/Heidecke-aehnliche Methoden,
ueber die Restnutzungsdauer). Bei aufgeschobenem Unterhalt zusaetzlicher Sanierungsabschlag
— dieser kommt aus der TDD (Skill `ankaufspruefung`).

## Wann Realwert fuehrt

- Selbstgenutzte EFH (Sachwertanteil), Spezialimmobilien ohne Mietmarkt, Versicherungswert.
- Bei Renditeobjekten dient er als **Plausibilisierung** des Ertragswerts, fuehrt selten.

## Offen / zu vertiefen

- Neuwert-Kennwerte je Nutzung/Standard (CHF/m2 aGF, CHF/m3) als belegte Tabelle.
- Alterswertminderungs-Methode und Restnutzungsdauern je Bauteil festschreiben.
- Verknuepfung Sanierungsstau (TDD) → Abschlag formalisieren.
