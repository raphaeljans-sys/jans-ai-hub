# Wissens-Chef — Lauf 1 (Cross-KB-Konsistenz)

Datum: 2026-07-12
Methode: Workflow-Fan-out (5 Analyse-Agenten parallel je KB-Paar) + adversariale Verifikation
je gemeldetem Widerspruch (Refuter an den Originalquellen). 16 Agenten, ~2,26 Mio Tokens,
15/16 erfolgreich (1 Verifikations-Agent am Schema-Retry gescheitert → 1 offene Verifikation).

## Kurzfazit

Das Wissenssystem ist im Kern konsistent. Von 11 gemeldeten Widerspruchs-Verdaechten wurden nach
adversarialer Pruefung **4 bestaetigt** (3 direkt korrigiert, 1 heikel → Raphael), **6 widerlegt**
(darunter der wichtige Fehlalarm §66/§262 Waldabstandslinie), **1 blieb unverifiziert**. Dazu
**8 fehlende Querverlinkungen gesetzt** und **3 Doppelspuren** durch Rollen-/Fuehrungsklaerung
entschaerft. Register `QUERBEZUEGE.md` neu angelegt (inkl. Fuehrungs-Matrix).

## Bestaetigte Befunde — direkt korrigiert (mit Quelle)

**1. baurecht — Gewaesserraum Fliessgewaesser (hoch).** `abstaende-und-hoehen.md` vermischte den
Schutzgebiets-Schwellenwert (natuerliche GSB < 1 m) mit der Normalgebiets-Formel (2,5×+7). Korrekt
nach **GSchV Art. 41a**: Normalgebiet (Abs. 2) GSB < 2 m → 11 m / 2-15 m → 2,5×GSB+7; Schutzgebiet
(Abs. 1) < 1 m → 11 m / 1-5 m → 6×+5 / > 5 m → GSB+30. Beide Regime jetzt getrennt ausgewiesen.
Direkte Baufeld-Relevanz (falscher Schwellenwert beschneidet Machbarkeits-Baufeld). planungsgrundlagen
fuehrte die korrekte Fassung.

**2. baurecht — stehende Gewaesser (niedrig).** 15-m-Regel ohne Flaechenschwelle; **Art. 41b GSchV**
gilt erst ab Wasserflaeche **> 0,5 ha**. Bedingung ergaenzt.

**3. energie — EN-105 Waermerueckgewinnung.** «>= 70 % (>= 75 % mit Bypass)» war falsch; die 75 %
sind die feuchtebezogene Alternative, keine Bypass-Bedingung. Korrekt: **Temperatur-Aenderungsgrad
>= 70 % ODER feuchtebezogen >= 75 %** (EN-105-Formular). planungsgrundlagen fuehrte die korrekte Fassung.

## Widerlegte Fehlalarme (kein Eingriff — Wert der Verifikation)

- **§66 vs §262 Waldabstandslinie** (baurecht): komplementaer — § 66 PBG = Planungslinie, § 262 PBG =
  Bauverbot. Beide Artikel korrekt. (Haette man ungeprueft «korrigiert», waere ein Fehler entstanden.)
- **PV-Ertragsbaender** (energie): verschiedene Dach-Populationen, gleiche Datenbasis.
- **U-Werte** (energie ↔ planungsgrundlagen): inhaltsgleich, kein Widerspruch.
- **Wuest-Kennwerte W1/W4** (grobkosten ↔ immobilienbewertung): verschiedene Wuest-Produkte/Bezugsbasis.
- **twin/spec-Doppelspur**: verschiedene Rollen (Evidenz vs. Methode).

## Gesetzte Querverlinkungen (8)

- baurecht/abstaende-und-hoehen ↔ planungsgrundlagen/kartenportale-baulinien-abstandslinien-zh (Geodatum)
- planungsgrundlagen/recht-norm-abstandsvorschriften-wald-gewaesser → baurecht (fuehrende Rechtsquelle)
- energie/energienachweis-zh → planungsgrundlagen energie-* (Verfahren/EVEN)
- grobkosten/kennwerte ↔ immobilienbewertung/realwert-sachwert (Kennwerte, beide Richtungen)
- baurecht/nutzungsziffern → normen/sia-416-2003
- baurecht/fahrzeugabstellplaetze → normen/vss-merkblatt-veloabstellplaetze-1998
- twin/arbeitsweise ↔ spec/anwendung-jans (beide Richtungen)

## OFFENE ENTSCHEIDE FUER RAPHAEL

**E1 (heikel, Fachentscheid): m²↔m³-Umrechnungsfaktor divergiert.** `grobkosten/kennwerte`
verwendet **HNF ≈ 0.70 × GF**, `immobilienbewertung/realwert-sachwert` fuehrt (dreifach unabhaengig
trianguliert) **≈ 0.60–0.61** fuer das GANZE Gebaeude (inkl. weniger effizientem Sockel/Attika). Der
Verifikations-Agent haelt fuer die m²↔m³-Kostenbruecke den Ganzes-Gebaeude-Faktor (~0.60) fuer besser
belegt. **Betrifft die Umrechnung Grobkosten ↔ Bewertung** — bitte festlegen, welcher Faktor kanonisch
gilt (evtl. Kontext-abhaengig: Regelgeschoss 0.70 vs. Gesamtgebaeude 0.60). Danach den unterlegenen
Wert angleichen. Nicht selbst entschieden, weil fachliche Wertung noetig.

## OFFEN FUER RUN 2

- **V1:** Kennwerte-W3 (Baupreisindex-Stand grobkosten vs. immobilienbewertung/investorenmarkt-makro)
  — Verifikation gescheitert (Schema-Retry-Cap), im naechsten Lauf nachziehen.
- Rotation naechstes Zusatzpaar: auflagebereinigung ↔ baurecht/brandschutz.
