# Submittenten-Qualifizierungskriterien (Ranking-Matrix)

Schliesst Wissensluecke **L10** des Bauleitungs-Harness. Grundlage fuer das Ranking im
Skill `unternehmerfindung`. Ziel: aus dem Kandidatenpool die bestgeeigneten Unternehmer
fuer ein konkretes Gewerk + Bauort + Bauaufgabe begruendet auswaehlen.

## Score-Gewichtung (Summe 100)

| # | Kriterium | Gewicht | Was zaehlt |
|---|---|---|---|
| 1 | **Bewaehrung / Beziehung** | 40 | Status `empfohlen`, gute Erfahrung in JANS-Projekten, Bestand-Unternehmer, Empfehlung durch Planer |
| 2 | **Gewerk-Fit + Firmengroesse** | 30 | Spezialisierung passt zum LV; Betriebsgroesse passt zum Auftragsvolumen; Healthcare-/Sonderkompetenz |
| 3 | **Naehe zum Bauort** | 20 | Distanz Firmensitz ↔ Bauobjekt; gleiche Stadt/Region; Anfahrt/Reaktionszeit |
| 4 | **Referenzen / Zertifikate** | 10 | GAV-Konformitaet, VKF (Brandschutz), SUVA, Herstellerzert., Referenzobjekte |

**Ausschluss (K.O.):** Status `warnung` (negative Erfahrung / "nie wieder") → nicht einladen.
Transparent in der Shortlist als "ausgeschlossen, weil …" vermerken, nicht stillschweigend weglassen.

## Bewertung je Kriterium (0–3 Punkte, dann × Gewicht/3)

### 1. Bewaehrung / Beziehung
- 3 = Bestand-Unternehmer, mehrfach bewaehrt bei JANS
- 2 = Status `empfohlen` (Empfehlung Planer/Dritte) oder einmal gut zusammengearbeitet
- 1 = `stammliste` ohne Wertung / `beworben`
- 0 = nur `vorschlag_dritter` ohne weitere Info / unbekannt

### 2. Gewerk-Fit + Firmengroesse
- 3 = Kernspezialist fuer genau dieses Gewerk **und** Groesse passt zum Volumen
- 2 = passt fachlich, Groesse grob passend
- 1 = Generalist / Randkompetenz, oder Groesse fraglich (zu klein/zu gross)
- 0 = Gewerk passt nicht wirklich (z.B. Holzbau-Zimmerei fuer Innenausbau-Schreinerlos)

### 3. Naehe zum Bauort (PLZ als Proxis)
- 3 = gleiche Stadt / gleiches PLZ-Gebiet wie Bauort
- 2 = gleiche Region / Nachbargemeinde (≈ < 20 km)
- 1 = gleicher Kanton / erweiterte Region (≈ < 50 km)
- 0 = ueberregional / weit entfernt (Anfahrt relevant)

### 4. Referenzen / Zertifikate
- 3 = einschlaegige Zertifikate **und** vergleichbare Referenzobjekte nachgewiesen
- 2 = relevante Zertifikate oder Referenzen vorhanden
- 1 = Standard (GAV-Betrieb, keine Besonderheiten)
- 0 = keine Angaben / Zweifel

## Anwendung

1. Kandidaten aus allen Quellen sammeln, nach Firma+Ort deduplizieren.
2. `warnung`-Kandidaten ausschliessen (mit Begruendung notieren).
3. Je Kandidat die vier Kriterien bepunkten, Score berechnen, absteigend sortieren.
4. Shortlist von **3–5** waehlen — immer mit mindestens einem bewaehrten Bestand-Unternehmer
   **und** Alternativen, damit echter Wettbewerb entsteht (nicht nur "der Liebling").
5. Bei < 3 brauchbaren Kandidaten nahe dem Bauort: regionale Web-Recherche ausloesen,
   Neufunde als `unverifiziert` aufnehmen und das in der Shortlist kennzeichnen.

## Bauaufgaben-Modulatoren (passen die Auswahl an)

- **Healthcare / Spital in Betrieb** → Erfahrung mit Betrieb unter Vollbetrieb, Hygiene,
  Etappierung; Firmengroesse mit Reserve.
- **Denkmalschutz / Bestand** → Referenzen an historischer Substanz wichtiger als Preis.
- **Brandschutz (EI30/EI60, BMA)** → VKF-Anerkennung / Fachzertifikat ist Pflichtkriterium
  (Querverweis Skill `brandschutz`).
- **Sehr kleines Los** → lokaler Kleinbetrieb bevorzugt (Grossfirma offeriert ungern/teuer).
- **Oeffentliche Beschaffung (IVoeB/BoeB)** → andere Logik (SIMAP, Eignungskriterien formal);
  Querverweis Wissensluecke L11 / Skill `baurecht`.

## Pflege

Neue Erfahrungswerte (bewaehrt / Reklamation) zuruek in die Stammdaten/Overlays speisen:
Status `stammliste` → `empfohlen` bzw. `warnung` aktualisieren. So steigt der Reifegrad der
DB mit jedem Projekt (R1 → R2 → …).
