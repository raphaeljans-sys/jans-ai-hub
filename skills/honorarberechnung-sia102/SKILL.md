---
name: honorarberechnung-sia102
description: Honorarberechnungs- und Honorarofferten-Agent für Architekturleistungen nach SIA 102. Berechnet Architekten-Honorare anhand der aufwandbestimmenden Bausumme, Phasenanteile, Schwierigkeitsgrad und Anpassungsfaktoren — und formuliert daraus Honorarofferten (Pauschal oder textlich im Mail). Diesen Skill verwenden wenn der Benutzer fragt: "Honorar berechnen", "SIA 102 Honorar", "Honorarofferte erstellen", "Architekturhonorar", "Phasenhonorar", "Phase 4 Honorar", "Phase 5 Honorar", "Ausführungsplanung Honorar", "Bauleitung Honorar", "Honorarsplit nach Phasen", "Honorarsatz Architekt", "aufwandbestimmende Bausumme", "Pauschale Architekt", "Devis Architekt", "Phasenanteile SIA 102", "Honorarberechnung". Gegenstück zum Skill offertenpruefung (dort werden Honorarofferten anderer Planer geprüft) und zum Skill ausschreibung (dort werden Devis für Drittleistungen erstellt).
---

# JANS Honorarberechnungs- und Honorarofferten-Agent — SIA 102

## Contract

- **Trigger:** Greift, wenn ein eigenes Architekturhonorar nach SIA 102 berechnet oder daraus eine Honorarofferte (Pauschal oder textlich im Begleitmail) formuliert werden soll — Phasenhonorar, Phasensplit, aufwandbestimmende Bausumme.
- **Inputs:** Aufwandbestimmende Bausumme, zu offerierende SIA-Phasen, Schwierigkeitsgrad/Anpassungsfaktoren, Projektnummer + Kurzbezeichnung und Adressat der Offerte.
- **Output-Ablage:** `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/honorarofferten/<Projektnr>/` als DOCX + PDF, Namensschema `YYMMDD-<Projektnr>-Honorarofferte-<Phase>.docx` (Doppelablage in den Projekt-Versandordner); bei rein textlicher Honorarofferte im Mail: kein Datei-Output (nur Antwort), ausser explizit ein Dokument verlangt.
- **Abhaengige Rules:** bkp-2017-referenz (Honorar-Codes, Standard 291), dokument-layout-standard, mail-formatierung (Begleitmail/textliche Offerte), umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Projektnr./Adresse/Bausumme); Korrektur-Pflicht via Skill `korrektur` vor Ausgabe.
- **Vorgelagert:** —
- **Nachgelagert:** `honorar-angebotspruefung` (Prüfstufe vor Versand) · `kostenkontrolle`
  (Offertsumme als Vorgabe ins KV-Konto 291 des Projekts, Nachträge erhöhen die Vorgabe) ·
  `logbuch` (Akontotermine ins Fristenregister) · `zahlungsabgleich`/`mahnwesen` (Akonto-Eingänge
  gegen den Leistungsnachweis) · `offertenpruefung` (Gegenstück für fremde Honorarofferten).

## Deine Aufgabe

Du berechnest Honorare für Architekturleistungen nach **SIA 102:2014** (Honorar nach
aufwandbestimmenden Baukosten, Art. 7, oder nach Zeitaufwand, Art. 6) und weist die Ausgabe in
jeder Offerte ausdrücklich aus; SIA 102:2020 kennt die Baukosten-Methode nicht mehr und wird nur
dort genannt, wo die Bauherrschaft sie als Vertragsbestandteil verlangt (dann Honorar als
Festpreis oder Zeitaufwand, ohne Prozentbezug). Die Koeffizienten Z1/Z2 tragen immer Jahrgang
und Quelle (heute: SIA-Publikation, Ablage unter `referenzen/`; die Zahlenwerte stehen nicht im
Normtext, Destillat `wissen/normen/destillate/sia-102-2014.md`, Offene Punkte). Daraus entstehen
Honorarofferten — entweder als formelles PDF/DOCX-Dokument analog zum bestehenden Angebots-Format
(siehe `referenzen/`) oder als textlich in einem Begleitmail formulierte Honorarofferte (z.B. für
ergänzende Phasen).

Zielgruppe: Raphael Jans Architekten ETH (JANS) — Healthcare-Architektur, Wohnbau, Umbauten.

Ergänzt die Skills `offertenpruefung` (Prüfung eingehender Offerten) und `ausschreibung` (Erstellung von Devis für Spezialplaner und Unternehmer).

## Verbindliche BKP-Referenz

Honorarpositionen werden über BKP-2017-Codes (CRB) den Hauptgruppen zugeordnet. Quelle:

- Liste (durchsuchbar): `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md`
- Original-PDF: `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-CRB.pdf`

Standard-Codes Architekten-Honorar:
- `091` Architekt (Honorar Grundstück)
- `191` Architekt (Honorar Vorbereitungsarbeiten)
- **`291` Architekt (Honorar Gebäude)** ← Standard für JANS-Honorarofferten
- `491` Architekt (Honorar Umgebung)
- `991` Architekt (Honorar Ausstattung)

Bei Spezialplaner-Honoraren den entsprechenden Spezialisten-Code aus der Hauptgruppe nutzen (z.B. Brandschutzingenieur Gebäude = 298.5). Nie BKP-Nummern raten. Siehe Rule `bkp-2017-referenz.md`.

## Kernprinzipien

1. **Aufwandbestimmende Baukosten B zuerst, nach Definition** — Ohne klar definierte Bezugsgrösse
   keine seriöse Berechnung. B wird nach dem Abschnitt «Aufwandbestimmende Baukosten B» hergeleitet
   (abgerechnete bzw. geschätzte Baukosten nach Rabatt, exkl. MwSt, BKP 1 bis 4 ohne BKP 5,
   Reduktion bei Fachplanerbeizug je Gewerk) und als eigene Tabelle in der Offerte ausgewiesen.
   Nie pauschal «BKP 1+2» und nie ein Prozent-Richtwert ohne Herleitung (Praxisfall 2619:
   drei verschiedene Bezugsgrössen im selben Büro, Audit 07.09.2026).
2. **Phasenanteile transparent** — Jede Honorarposition wird einer SIA-Phase zugeordnet. Pauschalen ohne Phasenbezug vermeiden.
3. **Schwierigkeitsgrad begründen** — Healthcare/Spital ist Kategorie V (q=1.0-1.1), Bestand/Umbau erhöht den Anpassungsfaktor.
   ⚠ **Korrektur 24.08.2026 (Wissens-Chef Run 41):** Diese Zeile widerspricht der eigenen
   Kategorientabelle weiter unten. Dort ist **Kategorie V (sehr anspruchsvoll) = q 1.15-1.2**
   («Spitäler, Forschungsbauten, denkmalgeschützte Sanierung»); q 1.0-1.1 ist **Kategorie
   III-IV** (Wohnungsbau Standard bzw. Praxen/Pflegeheime). Die Merkzeile hier führt also für
   ein Spital einen um 13-17 % zu tiefen Faktor — mit direkter Geldfolge, weil q multiplikativ
   in den Honorarsatz eingeht und ein zu tiefes q das eigene Angebot unterpreist. **Massgeblich
   ist die Tabelle** im Abschnitt «Schwierigkeitsgrad — Bauwerkkategorien»; deren
   Norm-Vorbehalte (Symbol `n` statt `q`, sieben statt sechs Kategorien, Healthcare-Zuordnung
   der Norm zwei Stufen höher) gelten unverändert und sind weiterhin offener Fachentscheid
   Raphaels.
4. **Bandbreite vor Punktwert** — Bei frühen Phasen Honorar-Bandbreite ausweisen, erst bei klarer Aufgabe Pauschale.
5. **Konsistenz zu bestehenden Angeboten** — Wenn ein Vorangebot des gleichen Projekts existiert, neue Phasen auf gleichem Honorar-Niveau halten.

## Aufwandbestimmende Baukosten B (Definition, verbindlich)

1. **Basis:** die abgerechneten Baukosten des ausgeführten Bauwerks nach Abzug der vertraglich
   vereinbarten Rabatte, exkl. MwSt (SIA 102:2014, Ziff. 7.5.1). In der Offerte ersatzweise die
   Kostenschätzung oder der KV, mit Vermerk «provisorisch, Abrechnung nach Bauabrechnung».
2. **Aufwandbestimmend:** BKP 1 Vorbereitungsarbeiten, BKP 2 Gebäude, BKP 3 Betriebseinrichtungen,
   BKP 4 Umgebung, eingebautes Mobiliar (Ziff. 7.5.13). Katalogmobiliar (BKP 9) zu 50 % (Ziff. 7.5.14).
3. **Nicht aufwandbestimmend:** Honorare und Nebenkosten aller Planer, MwSt, Landerwerb,
   Finanzierungskosten, öffentliche Gebühren (BKP 51), Versicherungen (BKP 53), Wettbewerbskosten
   (Ziff. 7.5.15). BKP 5 gehört deshalb nie pauschal in B.
4. **Reduktion bei Fachplanerbeizug:** je Gewerk ausweisen, nicht als Pauschalprozent. Richtwerte
   (AHB Stadt Zürich, `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`
   §5, bindend nur bei AHB-Aufträgen): Elektro und HLKKS max. 30 % der betroffenen Elemente,
   Fassade 50 %, Grossküchen 50 bis 75 %. Die Norm selbst spricht von einem gewogenen Mittel über
   alle Bauwerksteile (Destillat, Ziff. 7.1.4); **die Wahl der Methode ist offener Fachentscheid
   Raphael** (Audit 07.09.2026, Frage 2).
5. Die Herleitung von B steht als eigene Tabelle in jeder Offerte (Ausgangssumme, Abzüge, Reduktion je
   Gewerk, Ergebnis).

Beleg: `wissen/normen/destillate/sia-102-2014.md` (status `established`), Ziff. 7.1.4 und 7.5;
Referenzmodell Bauadministration (BBase-Scan 07.09.2026, Abschnitte 03.9 «Begriffe» und 04.4).
Praxisfall 2619 (K-Berechnung 08.05.2026): B aus «BKP 1/2/4/5/9 inkl. MwSt» abzüglich MwSt, davon
70 % «Anteil mit Honorarberechtigung (Richtwert)»; BKP 5 enthält Gebühren und Versicherungen, die
nach Ziff. 7.5.15 nicht in B gehören, der 70 %-Richtwert ist nicht herleitbar.

## Phasenanteile Grundleistungen — bürointerne JANS-Konvention (nicht normativ)

| Phase | Bezeichnung | Anteil |
|---|---|---|
| 11 | Strategische Planung | 0% (selten beauftragt) |
| 21 | Vorstudien (Machbarkeitsstudie, Variantenstudium) | 4% |
| 31 | Vorprojekt | 11% |
| 32 | Bauprojekt | 21% |
| 33 | Bewilligungsverfahren (33.1 Baueingabe, 33.2 Auflagebereinigung, 33.3 Baufreigabe) | 5% |
| 41 | Ausschreibung (Devis, Vergabeantrag) | 18% |
| 51 | Ausführungsprojekt (Werk- und Detailplanung) | 19% |
| 52 | Ausführung (architektonische Oberleitung + örtliche Bauleitung) | 20% |
| 53 | Inbetriebnahme / Abschluss | 2% |
| **Total** | | **100%** |

⚠ **Quelle: bürointerne JANS-Konvention, nicht die Norm.** Hergeleitet aus der
Leistungsanteils-Tabelle **SIA 102:2014, Ziff. 7.7** (dort Basis Phasen 3+4+5 = 100 %:
Vorprojekt 9 %, Bauprojekt 21 %, Bewilligungsverfahren 2.5 %, Ausschreibung 18 %,
Ausführungsprojekt 16 %, Ausführung 29 %, Inbetriebnahme/Abschluss 4.5 %). Die JANS-Tabelle
oben zieht zusätzlich Phase 21 Vorstudien in die 100 % und gewichtet die Ausführung tiefer.

**Nie als SIA-102:2020-Fundstelle zitieren.** Diese Ausgabe endet mit Art. 6 und enthält
weder einen Art. 7 noch eine Anhang-A-Prozenttabelle; eine baukostenabhängige
Prozent-Honorarrechnung ist über SIA 102:2020 **nicht** normativ zu belegen (Beleg:
`wissen/normen/destillate/sia-102-2020.md`, Original S. 1-41 gelesen; Status seit 27.08.2026
`speculative` — die Aussage «kein Art. 7» ist davon **nicht** betroffen, sie wurde in Run 63
am Original der Schlussseiten eigens nachgeprüft und bestätigt).
Wer prozentual nach Baukosten rechnet, beruft sich auf **SIA 102:2014, Ziff. 7.7** oder weist
die Werte als bürointerne Konvention aus. Korrigiert 18.08.2026 (Wissens-Chef Run 36, M1-1);
die Prozentwerte selbst blieben unverändert, nur die Herkunftsangabe war falsch.

### Aufteilung Phase 52 (wichtig bei separater Bauleitungs-Submission)
- Architektonische Oberleitung (Architekt): ca. 30-40% von Phase 52 = ca. 6-8% des Gesamthonorars
- Örtliche Bauleitung (kann separat ausgeschrieben werden): ca. 60-70% von Phase 52 = ca. 12-14% des Gesamthonorars

Wenn die örtliche Bauleitung separat vergeben wird, reduziert sich der Architekten-Anteil entsprechend.

## Methodenwahl (Gate vor jeder Berechnung)

1. **Nach Baukosten nur Phasen 3 bis 5.** Grundleistungen Vorprojekt bis Inbetriebnahme dürfen
   über die aufwandbestimmenden Baukosten gerechnet werden (SIA 102:2014, Ziff. 7.7, Basis
   Phasen 3+4+5 = 100 %; Phasen 1, 2 und 6 sind dort besonders zu vereinbarende Leistungen).
2. **Phasen 1, 2 und 6 sowie alle Zusatzleistungen nach Zeitaufwand**, mit den JANS-Stundenansätzen
   (Abschnitt «Stundenansätze JANS») und einem Kostendach je Position (SIA 102:2014, Ziff. 6.2 und
   7.11). Die JANS-Phasentabelle darf Phase 21 nur als Zeitaufwand-Position führen, nicht als
   Prozent der Bausumme.
3. **Unter CHF 500'000 aufwandbestimmender Bausumme keine SIA-Formel.** Studien, Spezialaufgaben
   und Kleinprojekte werden nach Zeitaufwand offeriert (Richtpreis mit Kostendach). Die Schwelle
   stammt aus dem Referenzmodell und ist bürointern; die Norm selbst nennt den Zeitaufwand als
   geeignet insbesondere unter CHF 100'000 aufwandbestimmender Baukosten (Destillat, Ziff. 6.2).
4. In jeder Offerte steht je Leistung, welche Methode gilt (Dreizeiler «mit Festpreis / nach
   Baukosten / nach Zeitaufwand», siehe Format A).

Beleg für die Regel: Referenzmodell Bauadministration, BBase-Scan 07.09.2026, Abschnitt 03.9;
Norm-Fundstellen aus `wissen/normen/destillate/sia-102-2014.md`.

## Honorarsatz nach SIA 102 — Berechnungsmethoden

### Methode 1: Honorarsatz nach Bausumme (vereinfacht, für Schätzungen)

Bei aufwandbestimmender Bausumme B (BKP 1+2, ohne MWST):

| Bausumme B (CHF) | Honorarsatz Grundleistungen 100% (typisch, q=1.0) |
|---|---|
| 0.5 Mio | 18-22% |
| 1.0 Mio | 16-19% |
| 2.0 Mio | 13-16% |
| 5.0 Mio | 11-13% |
| 10.0 Mio | 9-11% |
| 20.0 Mio | 8-10% |

Kleinere Bausummen haben höheren Prozentsatz (degressive Tarifkurve).

⚠ Offen (Audit 07.09.2026): «BKP 1+2» in der Zeile oben ist die alte Kurzformel; massgeblich ist
die Definition im Abschnitt «Aufwandbestimmende Baukosten B». Die Prozentwerte der Tabelle sind
bürointerne Erfahrungswerte ohne Norm-Fundstelle und gelten nur oberhalb der Schwelle aus der
Methodenwahl.

### Methode 2: Vollformel nach aufwandbestimmenden Baukosten (für offizielle Honorarofferten)

Dreistufig, Symbole wie in der Norm und in BBaseHonorar (belegt durch die K-Berechnung 2619 vom
08.05.2026, `260508_Honorar_SIA102_JANS.pdf`):

```
p  = Z1 + Z2 / ³√B                  Grundfaktor; Z1/Z2 mit Jahrgang und Quelle (z.B. «2018 Median»)
Tm = B × p/100 × n × r × U × i × s   prognostizierter Zeitaufwand in Stunden
H  = Tm × h                          Honorar exkl. MwSt, h = JANS-Stundenansatz (Tarifblatt)
```

Norm-Fundstellen (SIA 102:2014, Destillat `wissen/normen/destillate/sia-102-2014.md`, status
`established`): Ziff. 7.2 schreibt T_m = B × p/100 × n × q/100 × r × U mit q = Leistungsanteil in %
(bei allen Grundleistungen der Phasen 3 bis 5 ist q = 100, dann entfällt der Term); Ziff. 7.3
T_p = T_m × i; Ziff. 7.4 H = T_p × s × h. Die Zahlenwerte Z1/Z2 stehen nicht im Normtext, der SIA
publiziert sie separat (Destillat, Offene Punkte); ohne Jahrgang und Quelle keine Berechnung.

| Faktor | Bedeutung | Bandbreite (Destillat sia-102-2014.md) | Normalfall | Pflichtangabe |
|---|---|---|---|---|
| n | Schwierigkeitsgrad je Baukategorie I bis VII (Ziff. 7.6) | 0.7 bis 1.3 (I=0.7, II=0.8, III=0.9, IV=1.0, V=1.1, VI=1.2, VII=1.3) | je Kategorie | Kategorie und Begründung |
| r | Anpassungsfaktor, zugleich Rabattträger (Ziff. 7.8) | 0.8 bis 1.2 | 1.0 | jede Abweichung, auch nach unten |
| U | Umbau/Unterhalt/Denkmalpflege (Ziff. 7.14) | 1.0 bis 1.5 (ohne Restaurierung 1.0 bis 1.3) | 1.0 bei Neubau | Anteil wiederverwendeter Substanz |
| i | Teamfaktor (Ziff. 7.9) | ohne Vereinbarung 1.0 | 1.0 | nur mit Vereinbarung |
| s | Sonderleistungen (Ziff. 7.10) | 1.0 bis 1.5 | 1.0 | Leistung benennen |

**Faktorprotokoll ist Pflicht:** jede Offerte trägt die fünf Faktoren einzeln mit Begründung und
das Produkt n × r × U × i × s. Ein Nachlass wird über r gezeigt, nie stillschweigend im
Festpreis versteckt (Praxisfall 2619: Festpreis 38 % unter der eigenen Berechnung bei «Rabatt 0.0 %»;
Faktoren n 1.2, r 1.15, U 1.3, i 1.15, s 1.1, Produkt 2.27).

**Plausibilitätsgrenze Faktorprodukt (bürointern, Vorschlag 07.09.2026, Bestätigung Raphael
ausstehend):** bis 1.5 ohne weiteren Kommentar; 1.5 bis 2.0 jede Erhöhung einzeln begründen;
über 2.0 Freigabe Raphael und Gegenrechnung nach Zeitaufwand (Art. 6, Qualifikationskategorien)
als Plausibilisierung. Umbaufaktor U und höherer Schwierigkeitsgrad n für dieselbe Erschwernis
nicht kumulieren.

Für schnelle Pitch-Mails reicht Methode 1; für Vertragsverhandlungen Methode 2.

### Methode 3: Konsistenz-Methode (bei bestehender Vorangebot)

Wenn für dasselbe Projekt bereits ein Honorar für einzelne Phasen offeriert wurde:

1. Bestehendes Honorar / Phasenanteile = abgeleitetes Gesamthonorar
2. Gewünschte neue Phase × ihren Anteil × abgeleitetes Gesamthonorar = neues Phasenhonorar

Beispiel: Bestehende Pauschale 75'000 CHF für Phasen 21+31+32+33 (Anteil 41%)
=> Abgeleitetes Gesamthonorar = 75'000 / 0.41 = 182'927 CHF
=> Phase 41 (18%) = 32'927 CHF (gerundet 33'000)
=> Phase 51 (19%) = 34'756 CHF (gerundet 35'000)

## Schwierigkeitsgrad — Bauwerkkategorien (bürointerne JANS-Skala, nicht die Norm-Skala)

⚠ **Weicht in drei Punkten von SIA 102:2014 ab — vor Verwendung in einer Offerte prüfen**
(festgestellt 18.08.2026, Wissens-Chef Run 36; Werte bewusst unverändert gelassen, offener
Fachentscheid Raphael, siehe Bericht `wissen/koordination/outputs/2026-08-18_wissens-chef-run36.md`):

1. **Symbol:** In SIA 102:2014 heisst der Schwierigkeitsgrad **`n`**; **`q`** ist dort der
   *Leistungsanteil in Prozent* (Ziff. 7.2/7.7). Die Tabelle unten vertauscht die Symbole.
2. **Skala:** Die Norm kennt **sieben** Kategorien I-VII mit `n` = 0.7/0.8/0.9/1.0/1.1/1.2/1.3
   (Ziff. 7.6). Die Tabelle unten führt sechs Kategorien mit anderen Zwischenwerten.
3. **Zuordnung Healthcare:** Die Norm (Ziff. 7.6.5, S. 45-48) ordnet zu — Pflegeheime/Reha/
   Sanatorien und Altersheime **Kat. V**, Arztpraxen/Ärztehäuser **Kat. V**, Krankenhäuser
   generisch **VI**, Bettenhäuser V, Behandlungstrakte und Universitätskliniken **VII**.
   Die JANS-Defaults unten liegen für Pflegeheim und Praxis **zwei Stufen tiefer**.

Beleg: `wissen/normen/destillate/sia-102-2014.md` (status `established`, Zuordnung am Original
S. 45-48 verifiziert). Solange der Fachentscheid offen ist: die Skala unten als bürointern
kennzeichnen, nicht als «nach SIA 102» ausweisen.

**Zweitbeleg aus der Praxis (nachgetragen 24.08.2026, Synergie-Lauf 17):** Das Amt fuer
Hochbauten der Stadt Zuerich rechnet in seinen Projektstandards ebenfalls mit dem Symbol **n**
und der Bandbreite **n = 0.7-1.3** (SIA 102/103/108) — also mit der Norm-Lesart, nicht mit der
Tabelle unten. Dort stehen zudem Faktoren, die dieser Skill nicht fuehrt: Anpassungsfaktor r,
Teamfaktor i, Sonderleistungsfaktor s (1.0, ausserordentlich bis 1.5), Zuschlag
Umbau/Denkmalpflege/unter Betrieb max. 50 % (SIA 102/1) sowie die Reduktionstabelle der
aufwandbestimmenden Baukosten bei Beizug von Fachplanenden (Elektro/HLKKS max. 30 %, Fassade
50 %, Grosskuechen 50-75 %). Fundstelle:
`wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` §5
(«Honorarwesen AHB», status `established`). **Bindend nur bei AHB-Auftraegen** — es ist eine
Bauherren-Vorgabe, kein Norm-Beleg; den Norm-Beleg traegt weiterhin das Destillat oben.

| Kategorie | q | Beispiele |
|---|---|---|
| I (sehr einfach) | 0.7 | Lager, Industriehallen ohne Ausbau |
| II (einfach) | 0.85 | Einfache Wohnbauten, Verwaltungsbauten |
| III (mittel) | 1.0 | Wohnungsbau Standard, Schulhausbau |
| IV (anspruchsvoll) | 1.1 | Praxen, Pflegeheime, gehobener Wohnbau |
| V (sehr anspruchsvoll) | 1.15-1.2 | **Spitäler**, Forschungsbauten, denkmalgeschützte Sanierung |
| VI (aussergewöhnlich) | 1.25 | Klinikneubauten, hochinstallierte Spezialnutzungen |

Healthcare-Defaults JANS:
- Spital-Neubau: q = 1.15-1.2 (Kategorie V)
- Spital-Umbau im Bestand: q = 1.2 (Kategorie V) + Umbau-Zuschlag
- Altersheim / Pflegeheim: q = 1.0-1.1 (Kategorie III-IV)
- Praxis / Ambulatorium: q = 1.0 (Kategorie III)

## Stundenansätze JANS (Tarifblatt, kanonisch in `referenzen/`)

1. Stundenansätze kommen aus der eigenen Betriebskostenrechnung (AHV-Lohnsumme plus Zuschläge für
   Personalaufwand, Gemeinkosten, Risiko und Gewinn, geteilt durch die verrechenbare Präsenzzeit),
   nie aus Annahmen. Das Tarifblatt nennt Jahr, Herleitung und Gültigkeit; ohne Tarifblatt
   Platzhalter setzen und nachfragen (Rule `identifikatoren-verifizieren`).
   Aktuelles Blatt: `referenzen/260907-Stundenansaetze-JANS.md` (Stand 10.05.2026, Quelle Offerte
   2619-HOP2 S. 6; die Herleitung aus der Betriebskostenrechnung fehlt, Audit 07.09.2026, Frage 3).
2. Ausweis nach Qualifikationskategorien A bis G, Stufe 1 bis 3, nach **Funktion im Auftrag**
   (SIA 102:2014, Ziff. 6.2.5): Projektleiter Grossprojekte A, Chefarchitekt/Projektleiter A/B,
   leitender Architekt B/C, Architekt C/D, Bautechniker D/E, Zeichner E bis G; Bauleitung und
   Administration analog (Muster: Offerte 2619-HOP2, S. 6). Dazu der Mitteltarif M für
   Stundenabrechnungen.
3. Derselbe Ansatz h in Berechnung und Offerte; weicht der Mitteltarif für Zeitaufwand ab, ist
   das in der Offerte begründet (Praxisfall 2619: h = 135 in der K-Berechnung, Mitteltarif 155 in
   der Offerte, ohne Begründung).
4. Stunden sind Belege: bei Honorar nach Zeitaufwand und für jeden Nachweis werden die Stunden
   je Mitarbeiter, Tag, Phase rapportiert, visiert und fünf Jahre aufbewahrt (Arbeitsrapporte
   nach SIA 102:2014, Ziff. 6.1; Aufbewahrungsfrist nach ArG, Fundstelle zu belegen).

## Output-Formate

### Format A: Honorarofferte als Vertragsurkunde (DOCX/PDF, Muster 2619-HOP2 vom 10.05.2026)

Kopf: Briefkopf JANS (Rule `jans-absenderadresse`), Objekt, Bauherrschaft, Projektverfasser,
Offerten-Nr. (Schema `<Projektnr>-HOP<n>`), Datum, Inhaltsverzeichnis der vier Teile.

Teil 1 Bedingungen und Hinweise: Projekt-Informationen (Projektart, Bauwerksart, Raumprogramm,
Konstruktion, Baubeginn, Bezug) · Ziel und Zweck · Vertragsbestandteile mit Rangfolge (Urkunde,
SIA-Ordnung mit Ausgabe, schweizerisches Recht) · AGB (Leistungszeitraum, Rechnungsstellung,
Zahlungsfrist, Angebotsrahmen) · Zahlungsplan · übertragene und freigegebene Teilphasen ·
Pflichten und Rechte beider Seiten · Vergütung als Dreizeiler «mit Festpreis / nach Baukosten /
nach Zeitaufwand», je mit Kostenbasis · Versicherungen (Personen-, Sach-, Bautenschaden,
Gesellschaft, Selbstbehalt) · Gerichtsstand · Ausfertigung.
Teil 2 Architektenhonorar: Tarifblatt A bis G · Herleitung B und Faktorprotokoll · Zusammenfassung
getrennt nach Grundleistungen (Phasen 3 bis 5, Prozent) und Zusatzleistungen (Phasen 1, 2, 6,
Zeitaufwand) · Nebenkosten 9.x · Total mit ausdrücklichem MwSt-Vermerk (siehe Konventionen).
Teil 3 Leistungsbeschrieb je Teilphase (Grundlagen, Ziele, Leistungen des Auftraggebers,
Leistungen des Architekten, Phasenabschluss); Leerpositionen für nicht beauftragte Leistungen.
Teil 4 Leistungsnachweis und Akontoplan (Abschnitt «Leistungsnachweis und Akontoplan»),
Unterschriftenblock.

Vorlage: anonymisierte Kopie von 2619-HOP2 unter `referenzen/` ablegen (offen; der Ordner enthält
heute nur README.md und das Tarifblatt). Die früher genannten Pfade `referenzen/an-00037.pdf` und
`templates/` existieren nicht (Audit 07.09.2026).

Layout-Standard: `/Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md`

### Format B — Textlich im Begleitmail

Für ergänzende Honorarofferten innerhalb eines Mail-Threads (z.B. wenn Bauherrschaft fragt "Was kosten zusätzliche Phasen?"). Aufbau:

```
Honorarofferte für <Phasen> (gestützt auf SIA 102:<Ausgabe>)
Aufwandbestimmende Bausumme: CHF <B> (BKP 1+2, ohne MWST)
Schwierigkeitsgrad: <q> (Kategorie <Röm>)

Phase <NN> <Bezeichnung>: pauschal CHF <Betrag>
Phase <NN> <Bezeichnung>: pauschal CHF <Betrag>
...
Total <Phasenbereich>: CHF <Total> (von der Steuer befreit)

Zahlungsbedingungen analog Hauptangebot AN-XXXXX.
Gültig bis <Datum>.
```

⚠ **Ausgabe im Kopf bewusst setzen, nicht «2020» einsetzen.** Dieser Baustein rechnet über
aufwandbestimmende Bausumme und Schwierigkeitsgrad, also nach der **Baukosten-Methode** — die
in SIA 102:**2020** nicht mehr existiert (die Ordnung endet mit Art. 6). Wer diesen Baustein
verwendet, stützt sich entweder auf **SIA 102:2014, Art. 7** (dann so schreiben und im Vertrag
vereinbaren) oder weist das Honorar als Pauschale ohne Norm-Prozentbezug aus. Eine Offerte,
die «gestützt auf SIA 102:2020» sagt und zugleich Baukosten-Prozente ausweist, behauptet eine
Norm-Deckung, die es nicht gibt. Vermerk 18.08.2026 (Wissens-Chef Run 36, M1-1).

⚠ Offen (Audit 07.09.2026): «BKP 1+2» und «von der Steuer befreit» im Baustein oben sind der alte
Wortlaut; B nach dem Abschnitt «Aufwandbestimmende Baukosten B» herleiten, MwSt-Status nach dem
Vermerk unter «Verbindliche Konventionen JANS» ausdrücklich nennen.

### Format C — Honorar-Bandbreite (früh)

Für Akquise-Phase mit unklarer Aufgabe:

```
Honorar-Schätzung Architekturleistungen (SIA 102 Phasen <Bereich>)
Aufwandbestimmende Bausumme: CHF <Min> bis <Max>
Honorarsatz: <Min%> bis <Max%>
Honorar-Bandbreite: CHF <Min> bis <Max>
```

## Verbindliche Konventionen JANS

1. **MWST**: JANS ist nicht MWST-pflichtig — alle Honorare als "von Steuer befreit" auszeichnen.
   ⚠ Offen (Audit 07.09.2026): die K-Berechnung vom 08.05.2026 rechnet 8.1 % MwSt, die Offerte
   2619-HOP2 ist «exkl. MwSt», das bexio-Angebot AN-00037 «von Steuer befreit»; Entscheid Raphael
   ausstehend, bis dahin in jeder Offerte den MwSt-Status ausdrücklich nennen.
2. **Akontozahlungen**: Standard-Zahlungsbedingungen (siehe Vorlage AN-00037):
   - Akonto-Rechnung pro Monat oder pro Phase
   - Rechnungstellung zum letzten Arbeitstag des Monats
   - Zahlungsfrist 20 Tage netto
     ⚠ Offen (Audit 07.09.2026): die Offerte 2619-HOP2 vom 10.05.2026 nennt 14 Tage; Entscheid
     Raphael ausstehend (Frage 3), bis dahin die Frist in jeder Offerte ausdrücklich nennen.
   - Sistierung bei ausbleibendem Zahlungseingang
   - Einwendungen gegen Rechnung: 5 Kalendertage schriftlich
3. **Pflichten der Bauherrschaft** (Standardblock):
   - Effiziente Projektabwicklung, Zugänglichkeiten gewährleisten
   - Transparente Kommunikation, Zeitplan vorgeben
   - Weitere Fachplaner (Brandschutz, Gebäudetechnik, Elektro) rechtzeitig beauftragen
   - Entscheidungen innert 2-Tages-Frist
4. **Bauleitung**: Wenn die örtliche Bauleitung nicht durch JANS übernommen wird, im Honorar nur die architektonische Oberleitung ausweisen und auf separate Submission der örtlichen Bauleitung hinweisen — JANS unterstützt diese Submission.
5. **Sprache**: Deutsch (Schweiz), "ss" statt "ß", **immer mit Umlauten ä/ö/ü** (gemäss Rule `umlaute-konvention.md`).

## Leistungsnachweis und Akontoplan (Pflicht ab Vertragsabschluss)

1. Jede Offerte enthält den Leistungsnachweis als Tabelle: Teilphase, Leistungsanteil in %,
   Honorar, erledigt in %, erledigte Leistung CHF, Akonto bezahlt, Guthaben. Beim Versand der
   Offerte steht «erledigt» auf 0 % (Muster: Offerte 2619-HOP2, S. 16 bis 17).
2. Jede Akontorechnung trägt den nachgeführten Leistungsnachweis als Beilage; das Guthaben ist
   der Rechnungsbetrag. Akonto folgt dem Leistungsstand, nicht dem Kalender (Modalität aus der
   Praxis 2619-HOP2 S. 4: Abschlagszahlungen von mindestens 90 % der erbrachten Leistung bei
   Festpreis, bei Zeitaufwand offene Abrechnung zu 100 %).
3. Die Prozentwerte des Nachweises sind die Soll/Ist-Grundlage der Nachkalkulation: Soll = Anteil
   × Honorar, Ist = rapportierte Stunden × Ansatz. Abweichungen über 20 % je Phase gehen als
   Lesson in `wissen/projekt-lessons`.
4. Ablage: Nachweis als XLSX neben der Offerte (`YYMMDD-<Projektnr>-Leistungsnachweis.xlsx`),
   nachgeführt bei jeder Rechnung.

Beleg: Referenzmodell Bauadministration (BBase-Scan 07.09.2026, Abschnitte 04.3 und 05.15).

## Output-Ablage

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/
  AR - 01 Projekte/<projekt-nr>_<projekt>/
    00_Admin/1 Angebote/
      AN-XXXXX_<Phasenbereich>.docx + .pdf
```

Dateinamen-Konvention nach JANS-Rule (YYMMDD).

## Templates

```
/Volumes/daten/jans-ai-hub/skills/honorarberechnung-sia102/templates/
```

Vorlagen für:
- Honorarofferte formell (DOCX, analog AN-00037)
- Honorar-Berechnungstabelle (XLSX)
- Mail-Block "Textlich formulierte Honorarofferte"

⚠ Offen (Audit 07.09.2026): der Ordner `templates/` existiert nicht, keine der drei Vorlagen ist
vorhanden. Bis sie nachgeliefert sind, gilt Format A mit dem Muster 2619-HOP2 als Vorlage.

## Referenzen-Ordner (HÖCHSTE PRIORITÄT)

```
/Volumes/daten/jans-ai-hub/skills/honorarberechnung-sia102/referenzen/
```

Hier gehören hin:
- SIA 102:2020 (Vollordnung Architekten-Leistungen)
- KBOB-Tarife / Tarifempfehlungen
- Bestehende JANS-Honorarofferten (anonymisiert) als Referenz für Honorarsätze
- Marktreports zu Architektenhonoraren (Wuest Partner, FACOMAS, etc.)

⚠ Angepasst 07.09.2026 (Audit, Lücke 7): massgebliche Ausgabe ist **SIA 102:2014** (Art. 7,
Baukosten-Methode); SIA 102:2020 nur als Vertragsbestandteil auf Verlangen der Bauherrschaft.
Details und Inhalt des Ordners: `referenzen/README.md`.

## Verknüpfung mit anderen Skills

- `offertenpruefung` — Prüfung eingehender Honorarofferten anderer Planer
- `ausschreibung` — Devis für Drittleistungen (Spezialplaner, Unternehmer, örtliche Bauleitung)
- `kostenschaetzung` — Plausibilitätscheck der aufwandbestimmenden Bausumme
- `terminplanung` — Phasen-Terminierung als Grundlage für Honorar-Akontoplan
- `kostenkontrolle` — Offertsumme als Vorgabe ins KV-Konto 291 des Projekts; Nachträge erhöhen die Vorgabe
- `logbuch` — Akontotermine des Zahlungsplans ins Fristenregister
- `zahlungsabgleich` / `mahnwesen` — Akonto-Eingänge gegen den Leistungsnachweis
- Buchungslogik analog Referenzmodell: **Vorgabe** = Offerte/Vertrag, **Aufwand** = rapportierte
  Stunden × Tarif, **Abrechnung** = Akonto und Schlussrechnung; die drei Werte je Phase im
  Leistungsnachweis nebeneinander.
- Prüfraster Bauadministration: `/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`,
  Prinzipien 04.1 bis 04.6 und 04.42; Audit-Stand in `15_bauleitung-training-register.md`.

## Wichtige Hinweise

- **Niemals Honorar OHNE Bezugsgrösse offerieren** — Aufwandbestimmende Bausumme oder klare Pauschal-Aufgabe ist Voraussetzung.
- **Keine Phase ohne Preis ODER Preismechanismus** — vor dem Versand jede Phase der Offerte
  durchzählen. Steht die Bausumme noch nicht fest (typisch bei Phase 52 Realisierung/Bauleitung),
  gehört statt eines Strichs der Berechnungsmodus in die Offerte: Prozentsatz der Bausumme nach
  SIA 102, Stundenansatz mit Kostendach, oder ausdrücklicher Verweis auf eine Nachofferte nach
  Vorliegen der Ausschreibungsergebnisse. Belegter Eigenfall:
  `wissen/projekt-lessons/wiki/lorrainestrasse-2011-realisierungsphase-honorar-unpreist.md`
  (Offerte 18.11.2011 — vier Phasen bepreist, die fünfte offen; `status: emerging`, ein Beleg).
- **Bei Bestand/Umbau Zuschlag** — Umbau-Faktor 1.15-1.3 auf das Honorar oder höherer Schwierigkeitsgrad.
- **Bei öffentlichen Bauherren** (Spitäler, Kanton, Gemeinden) — IVoeB/BoeB beachten, formelle Offerte sehr sauber strukturieren.
- **Änderungen vorbehalten** — Standardklausel: "Bei wesentlicher Änderung der aufwandbestimmenden Bausumme wird das Honorar entsprechend angepasst."
- **Sprache**: Deutsch (Schweiz), Schweizer Hochdeutsch mit Umlauten ä/ö/ü.
