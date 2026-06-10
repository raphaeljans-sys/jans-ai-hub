---
title: Residualwertmethode — Landwert aus der Projektentwicklung
status: established
last_updated: 2026-06-09
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1 Projektbewertung, L. Huesser; S. 13-72 vollstaendig eingearbeitet), IMMO-03 Residualwert (Pre-Check-Tool, Residualwert-Tool JANS), IMMO-01 RW Residualwert-Projekte]
links: [[bewertungsverfahren-ueberblick]], [[ertragswert-dcf]], [[lageklasse-landwertanteil]], [[flaechendefinitionen-sia]], [[investorenmarkt-makro]], [[realwert-sachwert]], [[nutzungskonzepte]]
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

## Kanonisches Rechenschema (Wuest Partner)

Das offizielle WP-Schema (Wuest-Kurs S. 19/21): Die zukuenftigen Verkaufserloese und/oder
der Ertragswert (Jahresmietpotenzial kapitalisiert mit marktgerechtem Zinssatz) entsprechen
dem Marktwert per Fertigstellung; davon werden rueckwaerts Investitionen und Projektrisiken
abgezogen.

```
   Ertragswert (per Fertigstellung)
 − Risiko/Gewinn
 − Erstellungskosten
 − Grundstueckskosten (BKP 0 ohne Landpreis)
 = Residualwert (Marktwert aktuell)            (Wuest-Kurs S. 21)
```

Grundsaetze (Wuest-Kurs S. 21):
- **Alle Werte pro m2** rechnen — bei WP standardmaessig in **HNF**; Darstellung pro
  CHF/m2 Grundstuecksflaeche und/oder pro Nutzflaeche.
- Ertragswert per Fertigstellung: Positionierung zwischen **50%- und 90%-Quantil** im
  Preisspektrum der Gemeinde anhand der Mikrolage; Annahme Standard entspricht Mikrolage,
  Zustand entspricht Neubau.
- Erstellungskosten via Benchmarks; **Verhaeltnis BKP 2 zu BKP 1-5 ≈ 85 %**.
- Grundstueckskosten: Annahme erschlossenes, baureifes Bauland, zonenkonforme Nutzung;
  plus Finanzierungs- und Handaenderungskosten.
- Anwendung bei **Neubau- UND Umbauprojekten** (S. 18); der Landwert ist indirekt
  definiert: in einem offenen Markt wird der maximale Nutzen eines Grundstuecks auch sein
  Verkaufspreis («highest and best use», S. 26).

### Abzuege nach dem Residuum (Excel-Tool, S. 60)
- **Abbruchkosten**: Benchmark **CHF 20-40/m3** Bestandsvolumen.
- **Zinsverlust bis Fertigstellung**: ca. **2 % Zins p.a. auf dem Residualwert** ueber die
  Baudauer (Beispiel 3.0 Jahre).
- **Mehrwertabgabe** bei Um-/Aufzonungen: **20-40 % des Planungsmehrwerts** (Ermessen der
  Gemeinde; faellig bei Baustart bzw. Baubewilligung; Landwerte vor/nach Massnahme je per
  Residualwert gerechnet, S. 25).
- Resultat: Bsp. Ertragswert 14.539 Mio − (Erstellung+Risiko) 9.716 Mio = 4.823 Mio vor
  Abzuegen (1'610/m2 GSF) → nach Abzuegen 4.345 Mio (1'450/m2 GSF). Brutto-/Nettorendite
  nach Fertigstellung: 3.1 % / 2.5 % (S. 60).

## Risiko-/Gewinnanteil (Entwicklermarge)

In % der Erstellungskosten (Wuest-Kurs S. 39/40):
- **Wohnen (herkoemmliche MFH-Projekte): 5-8 %**, **Gewerbe: 10-12 %** (Beispielwert 7.0 %).
- Je frueher die Phase, desto hoeher — Richtwerte je Projektstand (S. 40):

| Phase | Wohngebaeude | Geschaeftsgebaeude | typ. Dauer |
|---|---|---|---|
| Land nicht zonenkonform | 15-25 % | 20-30 % | 2-4 J. |
| Bauland zonenkonform | 8-10 % | 10-15 % | — |
| Bauland erschlossen | 8-10 % | 10-15 % | 0-1 J. |
| Gestaltungsplan bewilligt | 6-8 % | 9-12 % | 2 J. |
| Projekt bewilligt | 5-8 % | 8-10 % | 1-2 J. |
| Baufreigabe/Kostensicherheit | 2-5 % | 5-8 % | 2-4 J. |

- Total **8-10 Jahre bis Fertigstellung** fuer Arealentwicklungen mit Gestaltungsplan.
- Spiegelbildlich steigt der **Landwert durch Planungsfortschritt um total +15 bis +30 %**
  (S. 14): zonenkonform +5-10 %, erschlossen +0-2 %, Gestaltungsplan +2-4 %, Projekt
  bewilligt +2-4 %, Baufreigabe/Kostensicherheit +3-5 %, Projekt erstellt bis +5 %.
- Risikoarten (S. 41): Planungsrisiken (Genehmigung, Einsprachen, Zonenkonformitaet),
  Kostenrisiken (Ueberschreitung, Fertigstellung, Qualitaetsniveau), Marktrisiken
  (Erstvermietung, Marktzyklus, Trend-/Bedarfsveraenderungen).

## Anwendungsfaelle (Wuest-Kurs S. 22-27)

1. **Landwertschaetzung** / Marktwert von Bauland oder Arealen mit altem Bestand.
2. **Baurechtszins-Verhandlungen** (Basis-Landwert via theoretisches Projekt).
3. **Verkauf von Projekten** / Arealueberbauungen (Stichtag vor Baustart: inkl. aller
   Erstellungskosten; Stichtag ab Fertigstellung: wie Fortfuehrungsbewertung, aber mit
   Anfangsleerstand + Vermarktungsrisiko, Dauer bis Fertigstellung diskontiert).
4. **Ausnuetzungsreserven**: Residualwert der Reserve zusaetzlich zum Fortfuehrungswert,
   auf heute diskontiert (Realisierung oft erst in Jahren).
5. **Mehrwertabgabe**-Ermittlung (vor/nach Planungsmassnahme).
6. **Wettbewerbsvergleich/Vorpruefung**: rentabelstes Projekt = hoechster Residualwert =
   «highest and best use».
7. **Portfolio-Strategien**: Fortfuehrung / Teil-/Totalsanierung / Umbau-Umnutzung /
   Erweiterung-Aufstockung / Abriss-Neubau im Szenarienvergleich.

## Eingabegroessen Excel-Tool (WP-Defaults, S. 29-49)

- **Wohnungsmix**: Zielgroessen HNF je Wohnung: 1 Zi 35 / 2 Zi 62 / 3 Zi 88 / 4 Zi 108 /
  5 Zi 130 m2; HNF/GF-Effizienzfaktoren 0.73-0.80, Ziel **HNF-Effizienz ~0.75**
  (kleine Gebaeude tiefer, grosse Volumen hoeher) (S. 30).
- **Erstellungskosten je Wohnungstyp** (BKP 1-5 inkl. Einstellplaetze + MwSt, «all
  inclusive», CHF/m2 HNF): 1 Zi 6'100 / 2 Zi 5'900 / 3 Zi 5'700 / 4 Zi 5'400 / 5 Zi 5'300;
  Mittel Bsp. 5'680 — Kleinwohnungen sind teurer pro m2 (S. 30/31). Benchmarks im Detail:
  [[realwert-sachwert]].
- **Marktmiete** (Beispielprojekt, netto/Monat): 1 Zi 1'100 (= 377 CHF/m2a) / 2 Zi 1'450
  (281) / 3 Zi 1'900 (259) / 4 Zi 2'150 (239) / 5 Zi 2'450 (226); Ø 266 CHF/m2a;
  Einstellplatz 130/Mt., Aussenparkplatz 80/Mt. (S. 42). Plausibilisierung ueber
  Quantile-Einordnung ([[vergleichswert-hedonisch]]).
- **Betriebskosten & Unterhalt** (S. 49, in % des Soll-Ertrags bzw. CHF/m2 HNF):
  Betriebskosten (Verwaltung/Versicherung/Versorgung) **4.5-6.0 %**; Uebriges 0.5 %;
  Liegenschaftssteuer 0-6 % (nur manche Kantone; Promille des Werts, Bemessung erfahrungs-
  gemaess ~70 % des Marktwerts); struktureller Leerstand **1.0-3.5 %** (BFS-Leerwohnungs-
  ziffer der Gemeinde); Instandhaltung **13-16 CHF/m2 HNF**; Instandsetzung **17-25 CHF/m2
  HNF**. Beispiel-Total ~18.7 % des Soll-Ertrags.
- **Diskontierung**: siehe [[ertragswert-dcf]] (WP-Empfehlung Neubau-Wohnbau Sommer 2023:
  2.2-2.9 %).

## Sensitivitaet (Excel-Tool, S. 61/62)

Automatisierte Tabelle: Diskontierung in Basispunkten (±5 bis ±30 Bps) × Nettoertrag
(±10/15 %) × struktureller Leerstand (±50/100 %) × Erstellungskosten (±10/20 %).
**Merkzahl: −20 Bps Diskontierung erhoehen den Marktwert bereits um ~16 %** — im
Tiefzinsumfeld reagiert der Wert extrem auf kleine Diskontierungs-Aenderungen.

## Pre-Check-Tool (Beta, S. 65/66)

Fuer **rechnerische Machbarkeitsstudien ohne Grundrisse**: Ausnuetzungsberechnung anhand
Planungsziffern (AZ, GFZ, UeZ, BMZ oder Gebaeudegrundflaeche GGF), Wohnungsmix-Tool,
Flaecheneffizienz HNF/GF, Baukostenschaetzung via Benchmarks/Skaleneffekte, Residualwert-/
Landwertschaetzung. Anwendung lizenzpflichtig (WP).

## Lehrstueck: hoeherer Ertrag ≠ hoeherer Landwert (S. 153-155)

Varianten-Vergleich auf identischem Grundstueck (GF je 8'760 m2):

| Variante | Einheiten | HNF Wohnen | Ertrag p.a. | Bruttorendite | Erstellung (inkl. R/G) | Landwert |
|---|---|---|---|---|---|---|
| «Office-Homes» | 69 | 5'760 m2 | 1.58 Mio (222/m2) | ~4.0 % | 30.5 Mio (4'770/m2 HNF) | **~9.3 Mio** (880/m2 GSF) |
| «Perlenhaeuser» | 57 | 6'620 m2 | 1.61 Mio (220/m2) | ~4.1 % | 29.9 Mio (4'520/m2 HNF) | **~9.4 Mio** (880/m2 GSF) |
| «Best-Ager-Community» | 76 | 6'340 m2 | 1.71 Mio (246/m2) | ~4.4 % | 33.2 Mio (5'230/m2 HNF) | **~5.8 Mio** (550/m2 GSF) |

Die ertragsstaerkste Variante hat den **tiefsten** Landwert, weil die Erstellungskosten
ueberproportional steigen — Flaecheneffizienz und Kostendisziplin schlagen Mietertrag.
(Nutzungskonzept-Herleitung dieser Varianten: [[nutzungskonzepte]].)

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
4. **Geforderte Marge** — WP-Richtwerte belegt: Wohnen 5-8 %, Gewerbe 10-12 % der
   Erstellungskosten, je Projektphase 2-25 % (Tabelle oben, Wuest-Kurs S. 39/40).
   JANS-eigene Praxisbandbreite weiterhin zu dokumentieren → `wiki/wissensluecken.md` (D5).

Weil der Landwert ein **Residuum** ist, wirken kleine Aenderungen der Inputs gross auf das
Resultat — deshalb immer als Bandbreite (hoch/tief), nie als Punktwert ausweisen.

## Offen / zu vertiefen

- JANS-eigene Margen-/Finanzierungspraxis (Zins/Laufzeit, Vermarktungs-%) — WP-Richtwerte
  sind jetzt belegt, die buerospezifische Kalibrierung fehlt (D5).
- Reverse-Engineering der Excel-Tool-Logik (Zellformeln; die Eingabe-/Resultatstruktur ist
  ueber die Kursfolien S. 29-66 dokumentiert, die Formeln selbst noch nicht) (D4).
- ✓ 2026-06-09: Wuest-Kurs Modul 1 (S. 13-72) vollstaendig eingearbeitet (Lauf 1 des
  Trainings; Schema, Risiko-/Gewinnrichtwerte, Abzuege, Tool-Defaults, Sensitivitaet).
