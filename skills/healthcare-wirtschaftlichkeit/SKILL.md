---
name: healthcare-wirtschaftlichkeit
description: Wirtschaftlichkeits-/Rentabilitaets-Agent fuer Healthcare-Immobilien (Alters-/Pflegeheim, Betreutes Wohnen, Klinik, Reha) — destilliert aus dem JANS-Projekt 2410 WALD/Averecura (Nova Property Fund). Rechnet die Betreiber- und Investorensicht: Pflegeplatzkosten/Monat, Hotellerie-/Pensionstaxe, Erstellungskosten je Pflegeplatz, Brutto-/Nettorendite via Annuitaet (BWO-Referenzzinssatz, CURAVIVA-Abschreibung), und verifiziert das Raumprogramm (Pflegeplaetze/NF) gegen das baurechtlich Moegliche. Diesen Skill verwenden wenn der Benutzer fragt: "Pflegeheim Wirtschaftlichkeit", "Rentabilitaet Altersheim", "Pflegeplatzkosten", "Kosten pro Pflegeplatz", "Hotellerie-Taxe", "Pensionstaxe", "Healthcare Rendite", "Pflegeheim Investitionskosten", "Betreutes Wohnen rechnet sich", "CURAVIVA Abschreibung", "BWO Referenzzinssatz Rendite", "Raumprogramm Pflegeplaetze verifizieren", "Klinik Wirtschaftlichkeit". Spezialisierung des Skills machbarkeit (Studientyp B) auf Healthcare; nutzt kostenschaetzung (Healthcare-Kennwerte) und den Agenten wirtschaftlichkeit-rechner.
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
**~CHF 4'000/m2 GF** (Pflegeheim, älterer Stand → teuern).

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
