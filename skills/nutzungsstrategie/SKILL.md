---
name: nutzungsstrategie
description: Use-Case-/Nutzungsstrategie-Agent fuer Bestandsliegenschaften (Causa-Methode, destilliert aus JANS-Projekt 2620 Albertstrasse). Vergleicht mehrere Nutzungsszenarien (Status quo / Umbau-Umnutzung / neue Nutzung) im identischen Kriterienraster (Zonenkonformitaet, Bewilligungsfaehigkeit, Brandschutz, Investitionskosten, regulatorisches Risiko, Marktgaengigkeit), prueft den Bestandesschutz (§357 PBG) und leitet eine Empfehlung als zeitliche Sequenz ab. Diesen Skill verwenden wenn der Benutzer fragt: "Nutzungsvergleich", "Umnutzung pruefen", "welche Nutzung lohnt sich", "Szenarienvergleich Nutzung", "Shortstay vs Longstay", "Wohnen oder Gewerbe", "Bestandesschutz", "darf ich die Nutzung aendern", "Causa", "Nutzungsstrategie", "Status quo vs Umbau", "Beherbergung statt Wohnen", "regulatorisches Risiko Nutzung". Schwesterskill zu machbarkeit (dort Volumen/Wirtschaftlichkeit, hier die Nutzungsfrage bei Umnutzung von Bestand) und Vorstufe zu ankaufspruefung/Vorprojekt.
---

# JANS Nutzungsstrategie-Agent (Use-Case / Causa)

## Contract

- **Trigger:** Greift, sobald fuer eine **Bestandsliegenschaft** mehrere **Nutzungsszenarien** verglichen und eine bewilligungs- und marktfaehige Nutzungsstrategie empfohlen werden soll (Umnutzung, Weiterbetrieb vs. Umbau, Wohnen vs. Gewerbe/Beherbergung). Spezialisierung auf den Bestandesschutz §357 PBG und das regulatorische Risiko.
- **Inputs:** Liegenschaft (Adresse, Parzelle, Zone, Wohnanteil), Bestand (Objektspiegel: was ist bewilligt vs. faktisch betrieben), zu pruefende Nutzungsszenarien, massgebende Bauentscheide, hängige BZO-/Zonen-Revisionen. Fehlt der bewilligte Zustand — beim Bauamt/aus Akten klaeren.
- **Output-Ablage:** Nutzungsstrategie-Memo/Bericht DOPPELT — AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/nutzungsstrategie/<objekt>/` UND Projekt-Ordner. DOCX+PDF, Dateiname `YYMMDD_Nutzungsstrategie_<Objekt>_<Ort>`.
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Parzelle/Zone/Bauentscheid), auftrags-dekomposition (mehrere Szenarien) + Korrektur-Pflicht.
- **Vorgelagert:** machbarkeit (Baufeld/Volumen, falls relevant)
- **Nachgelagert:** ankaufspruefung, machbarkeit (Volumen der gewaehlten Variante), Vorprojekt

## Deine Aufgabe

Du beantwortest **"welche Nutzung ist hier rechtlich tragfaehig, wirtschaftlich sinnvoll und
zukunftssicher — und mit welcher Strategie kommt man dahin?"**. Du vergleichst mehrere
**Nutzungsszenarien** im identischen Kriterienraster und gibst eine **gestufte Empfehlung**
(zeitliche Sequenz, nicht Einzelsieger). Die Methode ist aus dem realen JANS-Projekt 2620
Albertstrasse destilliert (Shortstay / Direktvermietung / Beherbergung).

Methodik-Referenz: `skills/machbarkeit/wissensbasis/04_baurecht-bestandesschutz-usecase.md`.
Goldstandard-Vorlagen (2620 MBS, Baurechtsanalyse, Rahmenbedingungen):
`skills/machbarkeit/referenzen/README.md`.

## Vorgehen

1. **Ausgangslage klaeren** — bewilligter Zustand (massgebende Bauentscheide) **vs.** faktisch
   betriebene Nutzung; Zone + Mindest-Wohnanteil; haengige Revision/Initiative.
2. **Szenarien definieren** (typisch 2–3): z.B. Status quo / Umbau-Umnutzung / neue Nutzung.
3. **Fan-out** je Szenario an den Agent `nutzungsszenario-pruefer` (eine Instanz pro Szenario);
   jeder prueft sein Szenario gegen den **identischen Kriterienraster**:
   (a) Zonenkonformitaet/Bewilligungsfaehigkeit · (b) Brandschutz-/Nutzungsanforderungen ·
   (c) Investitionskosten (Umbau + Planung/Reserve) · (d) regulatorisches Risiko/Rechtssicherheit ·
   (e) Marktgaengigkeit/Wohnqualitaet.
4. **Bestandesschutz §357** prufen: schuetzt den Bestand, **kein Freipass**; Verlust bei
   Nutzungsintensivierung/Zusammenlegung/Gesamtgesuch; **Beweislast bei der Eigentuemerschaft**
   → Status quo dokumentieren. Gesuchsstrategie: begrenzter, klar abgegrenzter Umbau (keine
   Gesamtneubeurteilung ausloesen).
5. **Szenario-Verzweigung** bei haengiger Revision: "Revision tritt in Kraft" vs. "Beschwerde
   obsiegt" — Folge je durchrechnen.
6. **Empfehlung als Sequenz** synthetisieren: kurzfristig sichern → robusteste Zielstrategie
   (geringstes regulatorisches Risiko) → Spezialnutzung nur bei klarem Business Case.
   Sanktionskatalog mitliefern (Nutzungsuntersagung, Rueckbau, Busse, Anzeige).

Wirtschaftliche Tiefe je Szenario optional ueber Agent `wirtschaftlichkeit-rechner`;
Rechtsfragen ueber Skill `baurecht`; Brandschutz ueber Skill `brandschutz`.

## Output

1. **Nutzungsstrategie-Memo/Bericht** mit: Ausgangslage (bewilligt vs. faktisch) · Szenarien-
   Vergleichstabelle (Szenario × 5 Kriterien, Ampel) · Bestandesschutz-Wuerdigung ·
   Szenario-Verzweigung Revision · **gestufte Empfehlung (Sequenz)** · Sanktions-/Risikohinweise ·
   Annahmen & Vorbehalte.
2. **Word + PDF** (`dokument-layout-standard`); doppelte Ablage; vor Ausgabe durch `korrektur`.
3. **Compounding:** verallgemeinerbare Muster (z.B. Umnutzungs-Risiko in Zone X) nach
   `wissen/baurecht/`; kundenspezifisches nach `wissen/kunde-bopp/`.

## Hinweise / Abgrenzung
- **Keine verbindliche Rechtsauskunft** — fachliche Einschaetzung mit Quellen; bei heiklen Faellen
  juristische Vorabklaerung (Anwalt) empfehlen und vermerken (Muster 2620 Memorandum).
- Trenne immer "heute tragfaehig" von "Zukunftsrisiko".
- Empfehlung nie als Einzelsieger ohne Zeitachse.
