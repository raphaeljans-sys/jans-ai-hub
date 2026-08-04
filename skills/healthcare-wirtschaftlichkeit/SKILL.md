---
name: healthcare-wirtschaftlichkeit
description: >-
  Wirtschaftlichkeit von Healthcare-Immobilien (Alters-/Pflegeheim, Betreutes Wohnen, Klinik,
  Reha; Goldstandard 2410 WALD/Averecura): Pflegeplatzkosten/Monat, Hotellerie-/Pensionstaxe,
  Erstellungskosten je Pflegeplatz, Brutto-/Nettorendite via Annuitaet (BWO-Referenzzins,
  CURAVIVA-Abschreibung), Raumprogramm-Verifikation gegen das baurechtlich Moegliche. Trigger:
  Pflegeheim/Klinik Wirtschaftlichkeit, Pflegeplatzkosten, Pensionstaxe, Healthcare Rendite,
  Betreutes Wohnen rechnet sich, CURAVIVA. Spezialisierung von machbarkeit Typ B; nutzt
  kostenschaetzung + Agent wirtschaftlichkeit-rechner.

---

# JANS Healthcare-Wirtschaftlichkeits-Agent

## Contract

- **Trigger:** Greift, sobald die **wirtschaftliche Tragfaehigkeit einer Healthcare-Immobilie** (Pflege-/Altersheim, Betreutes Wohnen, Klinik, Reha) gerechnet oder ein **Raumprogramm (Pflegeplaetze)** gegen das baurechtlich Moegliche verifiziert werden soll. Healthcare-Spezialisierung von `machbarkeit` Typ B.
- **Inputs:** Objekt/Grundstueck (Zone, BMZ/Flaechen), Raumprogramm (Anzahl Pflegeplaetze/Betten, NF-Soll, Stationsgroesse), Betreiber-/Marktannahmen (Pflegetaxe, Pensions-/Hotellerie-Taxe, Belegung), Investitions-/Kostenbasis (CHF/m2 GF Healthcare), Finanzierungsparameter (Zins, Abschreibung). Fehlt Betreiber-/Taxen-Input — nachfragen oder Benchmark mit Quelle setzen.
- **Output-Ablage:** Rentabilitaets-Memo/Bericht DOPPELT — AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/healthcare-wirtschaftlichkeit/<objekt>/` UND Projekt-Ordner. Rechnung als XLSX, Memo DOCX+PDF, `YYMMDD_HC-Rentabilitaet_<Objekt>`.
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Kennwerte/Taxen nie raten), bkp-2017-referenz + Korrektur-Pflicht.
- **Vorgelagert:** machbarkeit (Volumen/Baurecht), kostenschaetzung (Erstellungskosten Healthcare)
- **Nachgelagert:** honorarberechnung-sia102, Vorprojekt; speist die Investorensicht (z.B. Nova Property Fund)

## Deine Aufgabe

Du rechnest die **Wirtschaftlichkeit einer Healthcare-Immobilie** aus Betreiber- und
Investorensicht und verifizierst, ob das **Raumprogramm** (Pflegeplaetze) baurechtlich und
oekonomisch aufgeht. Methode aus dem realen JANS-Projekt 2410 WALD (Grünegg, Pflegeheim,
Auftraggeber Nova Property Fund / Betreiber Tertianum-Averecura). Healthcare ist JANS-
Kernkompetenz — dieser Skill macht die Zahlen dahinter.

```
machbarkeit/kostenschaetzung  →  healthcare-wirtschaftlichkeit  →  Investor-Entscheid (z.B. Nova Fund)
Volumen + Erstellungskosten       Pflegeplatzkosten + Rendite        Bau ja/nein
```

## Wissensbasis & Kennwerte (Beleg 2410 WALD)

Erstellungskosten Healthcare: Skill `kostenschaetzung` + `machbarkeit/wissensbasis/02_kennwerte-kosten.md`.
Zuschlaege: Alterswohnen +10 %, **Pflege +20–25 %** auf den Wohn-Basiskennwert; WALD rechnete
**~CHF 4'000/m2 GF** (**Stand WALD 2024, Bezugsbasis BKP 2 Gebaeude** — Erstellungskosten-Stand
immer auf den Rechnungszeitpunkt teuern).

**Fuehrende Quelle fuer Healthcare-Erstellungskennwerte** (Zeiger, keine Zahlenkopie —
gesetzt 04.08.2026, Wissens-Chef Run 25): `wissen/immobilienbewertung/wiki/realwert-sachwert.md`,
Abschnitt «Healthcare-Kennwerte-Basis erweitert — JANS 8-Objekt-Referenzvergleich» (acht reale
CH-Alters-/Pflegeheime 2011-2025; Primaerblatt «Kennwerte Altersheime Gesundheitszentren.pdf»,
WALD-2410-Arbeitsgrundlagen). Dort stehen die belegten Baender CHF/m2 GF, CHF/m3 GV und
CHF je Pflegezimmer mit Baujahr und Teuerungsnormierung. **Baender immer dort lesen, nie hier
fuehren** — jede Zweitkopie driftet. Der WALD-Anker oben bleibt gueltig: er wurde am
25.07.2026 gegen diese Basis geprueft und bestaetigt (nicht ueberholt).

Drei Vorbehalte, die beim Uebernehmen mitzutragen sind:
- **CHF/Pflegezimmer ist auf ein 24-m2-Standardzimmer normiert** (Zeilenlabel des Blatts «Kosten
  BKP 2 Pflegezimmer 24 m2»), also **nicht** BKP 2 ÷ effektive Zimmerzahl und **nicht** die
  Investition je Pflegeplatz nach Rechenweg-Schritt 7 (die waere BKP 1-5 inkl. Land). Ein
  belegter CHF/Pflegeplatz-Wert in diesem Sinn fehlt im Hub weiterhin — offene Wissensluecke,
  nicht durch Umwidmung der Zimmerwerte schliessen.
- **Reine Heime und Zentren nicht in ein Band werfen:** die Basis weist Zentren mit hohem
  Gemein-/Therapieflaechenanteil (St. Anna) ausdruecklich als Ausreisser aus.
- **Zustaendigkeiten:** CHF/m2 NF fuehrt weiterhin der Skill `kostenschaetzung` (Wüest Partner);
  die KB `grobkosten` ist fuer Healthcare ausdruecklich **nicht** zustaendig.

Finanzierungs-/Rendite-Parameter:
- **Abschreibung 33 Jahre linear** (CURAVIVA-Referenz fuer Pflegebauten).
- **BWO-Referenzzinssatz** (zur Zeit der Studie 1.75 %) fuer die Annuitaet.
- **Unterhalt + Verwaltung je ~0.5 %** der Investition.
- WALD-Beleg: Bruttorendite (Mietertrag/Investition) ~6.8 %, Nettorendite via Annuitaet ~1.1 %,
  Sensitivitaet bei 2 % Amortisation → 3.3 %.
- Ertragstreiber: **Pflegeplatzkosten/Monat** + **Hotellerie-/Pensionstaxe** × Belegung.

## Rechenweg
1. **Raumprogramm-Verifizierung:** Pflegeplaetze × NF/Platz → NF-Soll; gegen baurechtlich
   moegliche NF (BMZ-Auslastung, aus `machbarkeit`) spiegeln → passt das Programm ohne
   Ausnahmebewilligung?
2. **Investition:** GF × Healthcare-Kennwert (CHF/m2 GF) inkl. Zuschlag → Erstellungskosten;
   plus Land/Umgebung.
3. **Ertrag:** (Pflegetaxe + Pensions-/Hotellerie-Taxe) × Plaetze × Belegung × 12 = Jahresertrag.
4. **Bruttorendite** = Jahresertrag / Investition.
5. **Nettorendite** via **Annuitaet** (BWO-Zins, Abschreibung 33 J) minus Unterhalt+Verwaltung.
6. **Sensitivitaet:** Belegung, Taxe, Amortisationssatz auffaechern (Kipp-Schwelle).
7. **Kosten pro Pflegeplatz** als Kennzahl (Investition/Platz, Betriebskosten/Platz/Monat).

Die Kern-Rendite-Rechnung kann an den Agenten `wirtschaftlichkeit-rechner` delegiert werden
(Healthcare-Modus); dieser Skill liefert die Healthcare-Parameter und die Raumprogramm-Verifikation.

## Output

1. **Rentabilitaets-Memo/Bericht** mit: Raumprogramm-Verifizierung (Plaetze/NF vs. baurechtlich) ·
   Investitions-/Kosten je Pflegeplatz · Ertragsrechnung (Taxen × Belegung) · **Brutto-/Nettorendite**
   (Annuitaet) · **Sensitivitaet** (Belegung/Taxe/Amortisation) · Empfehlung · Annahmen & Quellen.
2. **XLSX** der Rechnung; **DOCX+PDF** Memo (`dokument-layout-standard`); doppelte Ablage; `korrektur`.
3. **Compounding:** neue Healthcare-Kennwerte/Taxen-Benchmarks nach
   `machbarkeit/wissensbasis/02_kennwerte-kosten.md` (mit Stand-Datum); kundenspezifisches
   (Nova/SenioResidenz/Tertianum) nach `wissen/kunde-bopp/`.

## Hinweise / Abgrenzung
- **Keine Heimfinanzierungs-/Steuerberatung** — fachliche Wirtschaftlichkeitsrechnung mit Quellen;
  Taxen/Finanzierungsmodell mit Betreiber/Treuhand verifizieren.
- Pflege-Taxen sind kantonal reguliert (Restfinanzierung) — Annahmen mit Stand/Kanton kennzeichnen.
- Erstellungskosten-Stand immer teuern (Baupreisindex).
