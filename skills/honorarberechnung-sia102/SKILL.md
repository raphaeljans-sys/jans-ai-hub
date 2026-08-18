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
- **Nachgelagert:** offertenpruefung (Gegenstück: dort werden fremde Honorarofferten anderer Planer geprüft)

## Deine Aufgabe

Du berechnest Honorare für Architekturleistungen nach SIA 102:2020 (oder aktuell gültige Auflage) und erstellst daraus Honorarofferten — entweder als formelles PDF/DOCX-Dokument analog zum bestehenden Angebots-Format (siehe `referenzen/`) oder als textlich in einem Begleitmail formulierte Honorarofferte (z.B. für ergänzende Phasen).

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

1. **Aufwandbestimmende Bausumme zuerst** — Ohne klar definierte Bezugsgrösse keine seriöse Berechnung. BKP 1+2 oder definierte Teilsumme festlegen.
2. **Phasenanteile transparent** — Jede Honorarposition wird einer SIA-Phase zugeordnet. Pauschalen ohne Phasenbezug vermeiden.
3. **Schwierigkeitsgrad begründen** — Healthcare/Spital ist Kategorie V (q=1.0-1.1), Bestand/Umbau erhöht den Anpassungsfaktor.
4. **Bandbreite vor Punktwert** — Bei frühen Phasen Honorar-Bandbreite ausweisen, erst bei klarer Aufgabe Pauschale.
5. **Konsistenz zu bestehenden Angeboten** — Wenn ein Vorangebot des gleichen Projekts existiert, neue Phasen auf gleichem Honorar-Niveau halten.

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
`wissen/normen/destillate/sia-102-2020.md`, status `established`, Original S. 1-41 gelesen).
Wer prozentual nach Baukosten rechnet, beruft sich auf **SIA 102:2014, Ziff. 7.7** oder weist
die Werte als bürointerne Konvention aus. Korrigiert 18.08.2026 (Wissens-Chef Run 36, M1-1);
die Prozentwerte selbst blieben unverändert, nur die Herkunftsangabe war falsch.

### Aufteilung Phase 52 (wichtig bei separater Bauleitungs-Submission)
- Architektonische Oberleitung (Architekt): ca. 30-40% von Phase 52 = ca. 6-8% des Gesamthonorars
- Örtliche Bauleitung (kann separat ausgeschrieben werden): ca. 60-70% von Phase 52 = ca. 12-14% des Gesamthonorars

Wenn die örtliche Bauleitung separat vergeben wird, reduziert sich der Architekten-Anteil entsprechend.

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

### Methode 2: Vollformel SIA 102 (für offizielle Honorarofferten)

Honorar H = B × ((Z0 + Z1 × log10(B)) × q × n + a) × i × r × s

Mit:
- B = aufwandbestimmende Baukosten (BKP 1+2)
- Z0, Z1 = Tarifkonstanten (SIA 102 Tabelle)
- q = Schwierigkeitsgrad (Bauwerkkategorie I-VI)
- n = Anpassungsfaktor (typisch 1.0)
- a = Stundenansatz
- i = Teamfaktor
- r = Sonderleistungen (1.0 wenn keine)
- s = Sonderfaktor (1.0 wenn keiner)

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

## Output-Formate

### Format A — Formelles Angebot (DOCX/PDF)

Analog zur bestehenden JANS-Offerte (siehe `referenzen/an-00037.pdf` als Vorbild):
- Briefkopf JANS, Briefadresse Bauherrschaft
- Angebots-Nr. AN-XXXXX (fortlaufend)
- Datum, Gültigkeit, Kundennr., Leistungszeitraum
- Tabelle: Pos / Beschreibung (mit SIA-Phase) / Menge / Einzelpreis / Preis CHF
- Block "Leistungen des Architekten" mit Phasenliste
- Block "Pflichten der Bauherrschaft"
- Total (von Steuer befreit, JANS ist nicht MWST-pflichtig)
- Block "Zahlungsbedingungen" (Akontozahlungen)
- Footer mit Bank/IBAN/BIC

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
2. **Akontozahlungen**: Standard-Zahlungsbedingungen (siehe Vorlage AN-00037):
   - Akonto-Rechnung pro Monat oder pro Phase
   - Rechnungstellung zum letzten Arbeitstag des Monats
   - Zahlungsfrist 20 Tage netto
   - Sistierung bei ausbleibendem Zahlungseingang
   - Einwendungen gegen Rechnung: 5 Kalendertage schriftlich
3. **Pflichten der Bauherrschaft** (Standardblock):
   - Effiziente Projektabwicklung, Zugänglichkeiten gewährleisten
   - Transparente Kommunikation, Zeitplan vorgeben
   - Weitere Fachplaner (Brandschutz, Gebäudetechnik, Elektro) rechtzeitig beauftragen
   - Entscheidungen innert 2-Tages-Frist
4. **Bauleitung**: Wenn die örtliche Bauleitung nicht durch JANS übernommen wird, im Honorar nur die architektonische Oberleitung ausweisen und auf separate Submission der örtlichen Bauleitung hinweisen — JANS unterstützt diese Submission.
5. **Sprache**: Deutsch (Schweiz), "ss" statt "ß", **immer mit Umlauten ä/ö/ü** (gemäss Rule `umlaute-konvention.md`).

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

## Referenzen-Ordner (HÖCHSTE PRIORITÄT)

```
/Volumes/daten/jans-ai-hub/skills/honorarberechnung-sia102/referenzen/
```

Hier gehören hin:
- SIA 102:2020 (Vollordnung Architekten-Leistungen)
- KBOB-Tarife / Tarifempfehlungen
- Bestehende JANS-Honorarofferten (anonymisiert) als Referenz für Honorarsätze
- Marktreports zu Architektenhonoraren (Wuest Partner, FACOMAS, etc.)

## Verknüpfung mit anderen Skills

- `offertenpruefung` — Prüfung eingehender Honorarofferten anderer Planer
- `ausschreibung` — Devis für Drittleistungen (Spezialplaner, Unternehmer, örtliche Bauleitung)
- `kostenschaetzung` — Plausibilitätscheck der aufwandbestimmenden Bausumme
- `terminplanung` — Phasen-Terminierung als Grundlage für Honorar-Akontoplan

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
