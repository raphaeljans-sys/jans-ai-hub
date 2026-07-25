---
title: "DIN 1946-6 ↔ SIA 382/1 — Methodenvergleich Lüftungsauslegung Wohnbau"
status: established
last_updated: 2026-07-21
sources: [destillate/din-1946-6-2009.md, destillate/sia-382-1-2014.md]
links: [[synthese-din-vss-ral-fachskills]]
---

# DIN 1946-6 ↔ SIA 382/1 — Methodenvergleich Lüftungsauslegung Wohnbau

Schliesst den offenen Punkt in `wiki/QUESTIONS.md` («din-1946-6-2009 ↔ SIA 382/1
Methodenvergleich weiterhin offen»). Vergleich rein aus den beiden bereits
vollständig gelesenen und verifizierten Destillaten (`din-1946-6-2009.md`,
`sia-382-1-2014.md`) — keine neue Primärquelle nötig.

## Das Wichtigste in 3 Sätzen

DIN 1946-6 ist eine **reine Wohnungslüftungsnorm** mit einer flächenbasierten
4-Stufen-Systematik (Feuchteschutz/Reduziert/Nenn/Intensiv) und festen
Formeln/Tabellenwerten pro Nutzungseinheit; SIA 382/1 ist eine **allgemeine
Lüftungs-/Klimaanlagen-Norm für alle Gebäude mit Personenbelegung** und bemisst
raumweise nach dem **grössten** aus mehreren unabhängigen Kriterien (Personen,
Wärmeabfuhr, Schadstoffverdünnung) resultierenden Luftvolumenstrom. Für den
CH-Energienachweis ist ausschliesslich SIA 382/1 (i.V.m. SIA 180/380/1 und dem
Wohnbau-Merkblatt SIA 2023) massgebend — DIN 1946-6 bleibt in dieser KB
Kontextwissen für Vergleichsprojekte/Bauherren mit deutschem Hintergrund, nie
Bemessungsgrundlage für eine Schweizer Baueingabe.

## 1. Geltungsbereich

| | DIN 1946-6:2009 | SIA 382/1:2014 |
|---|---|---|
| Gebäudetyp | Nur Wohnungen/EFH/vergleichbare Nutzungseinheiten (Ziff. 1) | Alle Gebäude mit Personenbelegung (Büro, Schule, Versammlung, Wohnen usw.), Ziff. 0.1.1/0.1.2 |
| Wohnbau-Sonderfall | Ist die Wohnbau-Norm selbst | Ergänzend Merkblatt SIA 2023 für Wohnbauten (Ziff. 0.1.3) |
| Spezialnutzungen | Nicht geregelt | Spital/Gaststätte/Hallenbad: SIA 382/1 nur soweit Fachnormen nichts regeln (Ziff. 0.1.4) |
| Rechtsverbindlichkeit | Technische Norm, wird in D über EnEV/BRL bauordnungsrechtlich relevant | Technische Norm, in CH über SIA 118/380 vertraglich und über den kantonalen Energienachweis (SIA 380/1) verfahrensrechtlich relevant |

Bereits **methodisch verschieden im Ansatz**: DIN 1946-6 ist eine Spezialnorm für
genau einen Gebäudetyp, SIA 382/1 eine Rahmennorm für alle Gebäudetypen mit dem
Wohnbau als Sonderfall (SIA 2023).

## 2. Bemessungslogik — die zentrale Differenz

**DIN 1946-6 (§ 4.2, § 6.1, Gl. 1-4):** Zweistufiges Verfahren.
1. **Notwendigkeitsprüfung** pro Nutzungseinheit: lüftungstechnische Massnahmen
   sind nur erforderlich, wenn der rechnerische Feuchteschutz-Luftvolumenstrom
   q_v,ges,NE,FL die wirksame Infiltration q_V,inf,wirk **übersteigt**
   (Gl. 1). Beide Grössen werden aus **Gebäudehüllflächen/-dichtheit**
   hergeleitet (Gl. 2/3), nicht aus der tatsächlichen Nutzung.
2. **Bemessung:** Der massgebende Aussenluftvolumenstrom je Betriebsstufe ist
   das **Maximum** aus einem rein **flächenabhängigen** NE-Wert (Tabelle 5,
   Formel f(A_NE)) und der **Summe der raumweisen Pauschalwerte** (Tabelle 6/7,
   z.B. Küche 45 m³/h, Bad 45 m³/h). Personenzahl, tatsächliche Nutzung oder
   CO₂-Konzentration kommen **nicht** als eigenständige Bemessungsgrösse vor.

**SIA 382/1 (Ziff. 5.3):** Raumweise Bemessung nach **mehreren unabhängigen
Kriterien**, massgebend ist wiederum das Maximum (Ziff. 5.3.1.1/5.3.1.2) —
strukturell dieselbe «Maximum-aus-mehreren-Ansätzen»-Logik wie DIN 1946-6,
aber mit anderen Eingangsgrössen:
- **Personenbezug** nach SIA 2024-Nutzungsstandard, ausgelegt auf den
  1-h-Spitzenwert der Belegung (Ziff. 5.3.2) — DIN 1946-6 kennt diesen Bezug
  gar nicht.
- **Wärmeabfuhr/-zufuhr** über Formel (3)/(4): q = Φ·f_T /(ρ·c_p·|Δθ|) — ein
  physikalischer Lastansatz, den DIN 1946-6 nicht vorsieht (dort rein
  hygienisch/feuchteschutz-getrieben).
- **Schadstoffverdünnung** über Formel (7): q = G/(C_RAL − C_ZUL), je
  Schadstoff separat (Ziff. 5.3.4).
- Untergeordnete Räume: Richtwert 0,5 m³/(h·m²) (Ziff. 5.3.6.2) — strukturell
  vergleichbar mit dem DIN-Flächenansatz, aber als Ausnahme für Nebenräume,
  nicht als Grundprinzip.

**Befund:** DIN 1946-6 bemisst **hüllen-/feuchteschutzgetrieben** (Bautenschutz
als Ausgangspunkt, Komfort/Hygiene sekundär über die höheren Betriebsstufen),
SIA 382/1 bemisst **nutzungs-/lastgetrieben** (Personen, Wärme, Schadstoffe als
gleichrangige Kriterien, Bautenschutz kommt in SIA 382/1 nicht als eigener
Bemessungsfall vor — er wird in der Schweiz separat über SIA 180
Feuchteschutz/Tauwasser abgedeckt). Ein direkter Zahlenvergleich einzelner
Tabellenwerte (z.B. DIN-Tabelle 7 Küche 45 m³/h vs. SIA-Tabelle 14
Küchen-Richtwerte) ist deshalb nur bedingt aussagekräftig, weil die
zugrundeliegende Bemessungsphilosophie unterschiedlich ist — beide Normen
können für denselben Raum unterschiedliche Werte liefern, ohne dass eine der
beiden „falsch" liegt.

## 3. Betriebsstufen / Steuerung

| | DIN 1946-6 | SIA 382/1 |
|---|---|---|
| Stufenmodell | 4 fixe Stufen: Feuchteschutz / Reduziert / Nenn / Intensiv (Ziff. 3.1.9) | Steuerungsarten RAL-C1 (konstant) bis RAL-C6 (Gassensoren CO₂/VOC), Tab. 2; Betriebsart nach Tab. 22 je nach spez. Aussenluft-Volumenstrom (einstufig/zweistufig/stufenlos) |
| Bedarfsführung | Nur als Option («bedarfsgeführte Lüftung», Ziff. 8.1.1), Grundmodell ist zeitunabhängig fix | Ziff. 5.7.6: > 10 m³/(h·m²) verlangt **stufenlose** Regelung, Wohnen/Bettzimmer immer min. 2-stufig — SIA 382/1 macht Bedarfsführung tendenziell verbindlicher |
| Nutzerunterstützung | Explizit geregelt: Feuchteschutz/Reduziert/Nenn ohne Nutzerunterstützung sicherzustellen, Intensiv darf auf Fensteröffnen bauen (Ziff. 5.3.6.3) | Kein direktes Pendant — SIA 382/1 geht von mechanischer Anlage aus, Fensterlüftung wird separat als Systemalternative behandelt (Ziff. 4.2, laut Register in `sia-382-1-2014.md` Kap. 4) |

## 4. Energieeffizienz-Kennwerte

Beide Normen kennen eine Kennzahl für die Ventilator-/Geräteeffizienz, aber
unterschiedlich definiert und nicht direkt umrechenbar ohne Zusatzannahmen:

- **DIN 1946-6:** spezifische Leistungsaufnahme **P_SPI = P_E / q_v** (Gl. 26,
  Ziff. 9.2.7) für die «E»-Kennzeichnung (Energie-Ausführung).
- **SIA 382/1:** **SFP** (spez. Ventilatorleistung, Tab. 19-21) für
  Zentralanlagen bzw. **SPI** (spez. Geräteleistung Kompaktgeräte, Ziff. 5.7.5)
  mit explizitem Grenzwert **SPI ≤ 0,35 W/(m³/h)** für Wohnungslüftungsgeräte
  (Zielwert ≤ 0,28).

Der SIA-SPI-Grenzwert (≤ 0,35 W/(m³/h)) ist eine konkrete, prüfbare Vorgabe;
das DIN-P_SPI ist nur eine Definitionsgleichung ohne Grenzwert im vorliegenden
Destillat-Auszug — ein Zahlenvergleich beider Kennwerte ist nicht ohne
Rückgriff auf die vollständige DIN-4719-Produktnorm möglich (dort liegen die
DIN-seitigen Grenzwerte, nicht in 1946-6 selbst).

## 5. Wärmerückgewinnung

- **DIN 1946-6:** Gleichwertigkeitsnachweis über GLW ≥ 1 gegen eine
  Referenzanlage mit η'WÜT = 80 %, P_el,Vent = 0,45 W/(m³·h⁻¹) (Ziff. 8.4,
  Gl. 25) — ein **Vergleichsverfahren**, kein absoluter Mindestwert.
- **SIA 382/1:** **Absoluter Mindestwert** Jahresnutzungsgrad ≥ 75 % bzw.
  Temperatur-Änderungsgrad ≥ 70 % (Ziff. 5.10.2/5.10.3), für
  Wohnungslüftungsgeräte Temperaturverhältnis zuluftseitig ≥ 75 %.

SIA 382/1 setzt damit eine direkte Prozentgrenze, DIN 1946-6 verlangt
stattdessen Gleichwertigkeit zu einem fiktiven Referenzsystem — beide Ansätze
führen in der Praxis zu ähnlich hohen WRG-Anforderungen (durchgehend im Bereich
70-80 %), sind aber messtechnisch/nachweistechnisch nicht identisch.

## 6. Praxisfolge für JANS

- **Für Schweizer Baueingaben/Energienachweise bleibt SIA 382/1 (+ SIA 180/380/1
  + SIA 2023 für Wohnbauten) die einzig massgebende Grundlage** — DIN 1946-6
  darf nicht als Ersatz oder Referenz gegenüber einer CH-Behörde zitiert werden.
- **Nützlich wird DIN 1946-6** bei Projekten mit deutscher Bauherrschaft/
  Investorenreporting (Auslegungslogik erklären) oder als Kontrollrechnung,
  wenn ein deutsches Planungsbüro/Lieferant DIN-Werte liefert und diese gegen
  die SIA-Anforderungen zu plausibilisieren sind — dann mit dem obigen
  Philosophie-Unterschied (hüllengetrieben vs. lastgetrieben) argumentieren,
  nicht mit direktem 1:1-Zahlenvergleich.
- **Bereits genutzt:** Der Skill `planungsgrundlagen`/Agent `energie-berater`
  zieht für CH-Projekte ohnehin `wissen/energie/wiki/komfortlueftung-wrg-sia382-luftwechsel.md`
  (SIA 382/1-Grenzwerte) — dieser Artikel ergänzt dort nur die Begründung, warum
  ein DIN-Vergleichswert aus einer Bauherren-/Lieferantenunterlage abweichen
  kann, ohne dass eine der beiden Quellen falsch ist.

## Offene Punkte

- Kein Zahlenvergleich der konkreten Tabellenwerte (DIN Tab. 5-7 vs. SIA
  Tab. 14) durchgeführt — beide Destillate referenzieren die Originaltabellen
  nur sinngemäss (Urheberrecht); ein Zahlenvergleich müsste am Original beider
  Normen erfolgen und wäre ohnehin nur mit Vorbehalt aussagekräftig (siehe
  Abschnitt 2).
- DIN-4719-Produktnorm (Grenzwerte P_SPI/P_E) nicht im Bestand — für einen
  vollständigen Effizienz-Zahlenvergleich fehlt diese Quelle.
