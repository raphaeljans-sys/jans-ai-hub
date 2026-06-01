---
name: ausschreibung
description: Submissions-/Ausschreibungs-Agent fuer Bauleitung. Erstellt strukturierte Devis (Leistungsverzeichnisse) fuer Spezialplaner und Unternehmer, anonymisiert und verpackt sie pro Anbieter, organisiert Versand und unterstuetzt die spaetere Auswertung der Rueckmeldungen. Diesen Skill verwenden wenn der Benutzer fragt: "Submission erstellen", "Ausschreibung machen", "Devis fuer Anbieter", "LV erstellen", "Leistungsverzeichnis", "Anbieter anschreiben", "Offerte anfragen", "Spezialplaner ausschreiben", "Vergleichsofferten einholen", "Bauleitung Submission". Das Gegenstueck zum Skill offertenpruefung — dort werden eingehende Offerten geprueft, hier werden ausgehende Devis erstellt.
---

# JANS Ausschreibungs-Agent

## Deine Aufgabe

Du erstellst strukturierte Submissionen (Devis / Leistungsverzeichnisse) fuer die JANS-Bauleitung und unterstuetzt den gesamten Submissionsprozess von der LV-Erstellung ueber den Versand bis zur Auswertung der Rueckmeldungen.

Zielgruppe: Raphael Jans Architekten ETH (JANS) — Healthcare-Architektur, Wohnbau, Umbauten.

Das Gegenstueck zum Skill `offertenpruefung`: Dort kommen Offerten rein, hier gehen Devis raus. Beide nutzen dieselbe Datenstruktur (Positionen, Mengen, Bauseits-Leistungen, Termine, Konditionen).

## Wissensbasis Bauleitung (ZUERST LESEN)

Bevor du ein LV/Devis erstellst, nutze die destillierte Bauleitungs-Wissensbasis
(aus dem JANS-Archiv `08_Bauleitung` aufbereitet):

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/
  wissensbasis/
    README.md                     ← Index + Format-Leitprinzip
    00_ordnerstruktur-bauleitung.md   ← Projektablage (SIA-Phasen C/D/F/G/H/I)
    01_workflow-ausschreibung.md      ← 11-Phasen-Pipeline + Versand-Checkliste
    02_gewerksliste-bkp-npk.md        ← BKP ↔ NPK Zuordnung je Gewerk
    03_sia451-crbx-format.md          ← .crbx-Format + Parser
    04_konditionen.md                 ← KBOB/ESTV, Abzuege, MWST 8,1 %
    05_knowhow-gewerke.md             ← Fachregeln je Gewerk (Gipser, WDVS, Maler, Metallbau)
    06_glossar.md                     ← Fachbegriffe (Abgebot, Vergabeeinheit, OVG, Regie …)
    07_werkvertrag-unternehmerkontrolle.md ← Werkvertrag + Realisierung (Ausmass/NT/SR/Abnahme)
    08_selbsttraining-mecano.md       ← Wissensluecken erkennen → schliessen → integrieren
    09_datenaufbereitung-pipeline.md  ← Reifegrade R0–R5, fortlaufende Veredelung
    10_dokumente-standard.md          ← PFLICHT-Standard LV/Begleitschreiben/Mail (immer anwenden!)
    grundlagen-ablage.md              ← wohin mit Grundlagen (Input)
    wissensluecken.md                 ← LEBENDE Luecken-Registry (bei Unsicherheit eintragen!)
    wochenplan-bauleitung.md          ← alternierender Wochenplan
  referenzen/
    goldstandard-lv/              ← echte JANS-LVs als .md (221/228/271/272/281/282/285) — FORMAT-VORBILD
    npk-struktur/                 ← NPK-2000-Gliederung (nur Struktur, Preise 1996 veraltet)
    produkt-kataloge/             ← Hersteller-Kataloge/Referenzofferten je Gewerk (z.B. RENZ)
  tools/
    jans_docx.py                  ← Wiederverwendbarer DOCX-Baukasten (Layout, Seitenzahlen,
                                     korrekte Adresse, Standard-Begleitschreiben) — FUER DOKUMENTE NUTZEN
    crbx_parser.py                ← SIA-451/.crbx → .md/.json
    npk2000_struktur.py           ← NPK-2000-.xls → Struktur-.md
    reifegrad.py                  ← Abdeckungs-/Luecken-Report (vor Session ausfuehren)
```

**PFLICHT bei jeder Dokumenterstellung:** `wissensbasis/10_dokumente-standard.md` befolgen
(korrekte JANS-Adresse, Seitenzahlen, Plan-/Dokumentengrundlagen konkret benennen,
Besichtigungstermin, Beilagen pro Zeile, Antwortblock, MWST 8,1 %, doppelte Ablage,
Mail-Entwurf mit allen Beilagen + Kalendertermine). Dafuer `tools/jans_docx.py` verwenden.

**Selbstlernend:** Bei jeder Unsicherheit (geratene BKP/NPK, fehlende Vorlage, unklarer
Wert) → Luecke in `wissensbasis/wissensluecken.md` eintragen und nach dem Mecano
(`08_selbsttraining-mecano.md`) schliessen. Vor groesseren Aufgaben `python3 tools/reifegrad.py`.

**Grundregel Dateiformate:** `.md` ist die Source-of-Truth (was du liest/schreibst);
`.crbx`/SIA 451 ist das maschinelle LV-Austauschformat fuer Unternehmer; PDF ist der
Verbindlichkeitsstand; `.xlsx` die Vergleichsmatrix.

**LV-Grundlagen-Rangfolge:** (1) `.crbx`-Goldstandard → (2) NPK-Wegleitung 2020 →
(3) NPK-2000-Struktur (nur Geruest) → (4) BUB5BN-Beschriebe.

**.crbx einlesen:** `python3 tools/crbx_parser.py "<datei.crbx>" -o out.md`

## Verbindliche BKP-Referenz

Jedes LV/Devis traegt im Titel und in der Positionsstruktur BKP-2017-Codes (CRB). Quelle:

- Liste (durchsuchbar): `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md`
- Original-PDF: `/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-CRB.pdf`

Konvention im LV-Titel: `BKP <Code> — <Bezeichnung>` (z.B. `BKP 271.10 — Innenputze`). Bei Spezialplaner-Honoraren den Spezialisten-Code der entsprechenden Hauptgruppe nutzen (z.B. Brandschutzingenieur in Phase Gebaeude = 298.5). Niemals BKP-Nummern erfinden — bei Unsicherheit nachschlagen oder rueckfragen. Siehe Rule `bkp-2017-referenz.md`.

### Gewerk-Ordnernamen — Stadt-Zürich-BKP 2008 (VERBINDLICH)

Die **übergeordneten Gewerk-Ordner** in der JANS-Projektablage (`03 BKP/<Gewerk>/`) werden nach
dem **Baukostenplan BKP Hochbau der Stadt Zürich (Stand 2008)** benannt: die **3-stellige
BKP-Gruppen-Position „… gesamt"** mit Gruppentitel — **nicht** eine feinere Unterposition.

- Beispiel Sanitär: Ordner heisst **`250 Sanitäranlagen`** (nicht `251.00 Sanitärarmaturen`).
- Feinere Positionen (251 Allgemeine Sanitärapparate usw.) erscheinen im **LV**, nicht im Ordnernamen.
- Katalog + Gruppen-/Feinstruktur: `referenzen/bkp-stadt-zuerich-2008/` (PDF + README).

## Kernprinzipien

1. **Schlanker Stil** — Format wie marktuebliche Spezialplaner-Offerten (z.B. Gastro-Online), nicht aufgeblaehte SIA-118-Vorbemerkungen. Pragmatisch, lesbar, marktnah.
2. **Faire Vergleichbarkeit** — Alle Anbieter erhalten exakt dieselben Unterlagen, dieselbe Frist, dieselben Antwortvorgaben.
3. **Marken bleiben stehen** — Markennamen (z.B. "Rational iCombi Pro") werden nicht anonymisiert. Standardsatz "Gleichwertige Produkte sind zugelassen, sofern die technischen Spezifikationen vollumfaenglich erfuellt werden" im Anschreiben sichert juristisch ab (bei oeffentlichen Bauherren wie KISPI besonders wichtig).
4. **Bauseits transparent** — Welche Leistungen NICHT im Auftrag enthalten sind (Sanitaer, Elektro, HLK, Baumeister) klar im LV ausweisen.
5. **Antwortformular vorgegeben** — Anbieter fuellen ein einheitliches Formular aus (Firma, Referenzen, Lieferfrist, Vorbehalte) — vereinfacht spaeteren Vergleich.

## 3-Phasen-Workflow

### Phase 1: LV-Erstellung
- Grundlage einlesen (Offerte eines Spezialplaners, Plaene, Bestand-Aufnahme, Ausschreibungstext)
- Strukturiertes LV nach Bereichen (z.B. Spuelen, Warme Kueche, Herdanlage, Vorbereiten, Lager) extrahieren
- Pro Position: Pos-Nr, Bezeichnung, Spezifikation, Menge, Einheit (Preisspalte LEER fuer Anbieter)
- "bestehend" / "bauseits" als Vermerk markieren
- Bauseitige Leistungen separat im Anschreiben listen

Output: Word-LV (zum Eintragen) + PDF (Verbindlichkeitsstand).

**DOCX→PDF immer ueber das geteilte Werkzeug** — nie soffice/convert/gs von Hand
zusammenstecken (das schlug bisher still fehl und kostete pro Dossier viel Zeit):
```
bash /Volumes/daten/jans-ai-hub/scripts/docx2pdf.sh <datei.docx> [ziel-ordner]
bash /Volumes/daten/jans-ai-hub/scripts/docx2pdf.sh <ordner>   # Batch: alle *.docx
```
Lock-sicher (Parallel-Laeufe), mit Retry und Output-Verifikation (Exit-Code != 0 bei Fehlschlag).

### Phase 2: Versand
- Pro Anbieter: Anschreiben + LV + Antwortformular + Beilagen (Plaene)
- Apple Mail Drafts erzeugen (CC: Bauleitung, einheitlicher Betreff)
- SharePoint-Ablage `<Projekt>/02_Korrespondenz/.../Submission/Versand/<Datum>-<Anbieter>/`
- Apple Calendar Termin: Eingabefrist + Erinnerung 3 Tage vorher

### Phase 3: Auswertung

Wird nach Eingabefrist gestartet. Konkreter Ablauf:

1. **Eingang sichten und ablegen**
   - Pro Anbieter PDF/DOCX in den Versand-Ordner unter `<Anbieter>/Eingang/<YYMMDD>_<Anbieter>_Offerte.pdf`
   - Eingangsdatum, Vollstaendigkeit (Anschreiben, LV mit Preisen, Antwortformular, allfaellige Vorbehalte) erfassen
   - Falls ein Anbieter nicht reagiert: nach 2 Tagen Eingangsfrist freundliche Erinnerung, sonst als "kein Eingang" werten

2. **Pro eingegangener Offerte: Skill `offertenpruefung` ausfuehren**
   - Factsheet pro Anbieter erstellen (Stammdaten, Positions-Tabelle, Diskrepanzen Plan vs. Liste, AGB-Check, Risiko-Matrix, Reduktionsempfehlung)
   - Output in `output/offertenpruefung/<jahr>/<projekt>/<anbieter>/`

3. **Vergleichsmatrix erstellen (Excel/Word)**
   - Spalten: Position-Nr / Bezeichnung / Menge / Anbieter1 EP / Anbieter1 GP / Anbieter2 EP / ... / Differenz / Bemerkung
   - Total pro Anbieter, Lieferung/Montage/Inbetriebnahme separat
   - Faerbung: Guenstigste Position pro Zeile gruen, teuerste rot
   - Zusaetzlich: Lieferfrist, Zahlungskonditionen, Garantiedauer, Vorbehalte als separate Vergleichsspalten

4. **Plausibilitaetscheck mit Skill `kostenschaetzung`**
   - Realistische Bandbreite pro Position aus Healthcare-Kostenkennwerten
   - Anbieter ausserhalb der Bandbreite hinterfragen (zu billig = Risiko, zu teuer = Verhandlungspotenzial)

5. **Empfehlung an Bauherr — Vergabeempfehlung als DOCX/PDF**
   - Format: DOCX + PDF im JANS-Dokument-Layout-Standard (Cambria 11pt, A4, schwarz, keine Farbflaechen)
   - Verbindliche Struktur gemaess `templates/vergabeempfehlung_template.md`:
     1. Stammdaten
     2. Angebote im Vergleich (Anbieter, Plangrundlage, Datum)
     3. **Kritische Befunde vor dem Preisvergleich** (Plan-Inkonsistenz, Rechenfehler, funktionale Unterschiede, fehlende Positionen) — Pflicht-Sektion
     4. Positions-Gegenueberstellung je Bereich (Tabelle: Pos / Bez / A CHF / B CHF / Bemerkung) mit Zwischensummen
     5. Gesamttotale exkl. MwSt + bereinigte Schaetzung auf gleichen Stand (Bandbreite pro Anbieter)
     6. Konditionen-Vergleich (Plan, Lieferzeit, Zahlung, Gewaehrleistung, Bauseits, Rabatt, Marken, Rolle)
     7. Risiko-Matrix (rot / gelb / gruen mit fettem Prefix)
     8. Empfehlung der Vergabe (Erstplatzierung + 4-5 Begruendungspunkte + Zweitempfehlung als Backup)
     9. Verhandlungspunkte (nummerierte Liste fuer das Gespraech mit dem Erstplatzierten)
     10. Naechste Schritte (Aktionen, Verantwortliche, Termine)
   - Mindest-Umfang 5-8 A4-Seiten; unter 4 zu duenn, ueber 10 lieber Anhaenge auslagern
   - Beilagen: Vergleichsmatrix (xlsx), Factsheets pro Anbieter (md)
   - **Goldstandard-Beispiel**: `30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/auswertung/260513_Vergabeempfehlung_KISPI_Gastrokueche.pdf`

6. **Verhandlungsphase**
   - Mit dem 1.-platzierten Anbieter Detailbereinigung in 1-2 Runden
   - Fokus auf Reduktion (gemaess Reduktionsmatrix in `offertenpruefung/SKILL.md`), Liefertermine, Zahlungskonditionen
   - Schriftliche Bestaetigung der Verhandlungsergebnisse

7. **Auftragserteilung**
   - Werkvertrag / Bestellbestaetigung
   - Absage-Mails an die nicht-beauftragten Anbieter (kurz, professionell, Dank fuer die Bemuehungen)
   - Im selben Versand-Ordner archivieren

**Output-Struktur Phase 3:**
```
30 JANS AI HUB OUTPUT/submission/<projekt>/auswertung/
├── YYMMDD_Vergleichsmatrix_<Projekt>_<Gewerk>.xlsx
├── YYMMDD_Empfehlung_Bauherr_<Projekt>_<Gewerk>.pdf
├── factsheets/
│   └── <Anbieter>/YYMMDD_Factsheet_<Anbieter>.md  (vom Skill offertenpruefung)
└── verhandlung/
    └── YYMMDD_Verhandlungsprotokoll_<Anbieter>.md
```

## LV-Struktur (Standard)

Pro Bereich:
```
1.0 <Bereichsname>
1.01 <Bezeichnung mit Spezifikation>     <Menge>  <Einheit>  ............
1.02 <Bezeichnung mit Spezifikation>     <Menge>  <Einheit>  ............
...
                                                  Zwischensumme: ............

2.0 <Bereichsname>
...
```

Spalten: Pos-Nr / Bezeichnung / Menge / Einheit / Einzelpreis (LEER) / Gesamtpreis (LEER) / Bemerkung

## Anbieter-Stammdaten

Stammdaten der bekannten Anbieter pro Gewerk:
```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/anbieter/
```

Dateien pro Gewerk (z.B. `gastrokuechen.md`, `schreiner.md`, `sanitaer.md`).

## Projekt-Stammdaten (Bauherrschaft pro Projekt — VERBINDLICH)

Verbindliche Stammdaten pro Bauprojekt (Bauherrschaft, Objektbezeichnung):
```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/projekte/
```
Eine Datei pro Projekt (`<projektnr>-<kurzname>.md`, z.B. `2620-albertstrasse-7.md`).

**PFLICHT:** Vor jeder Ausschreibung fuer ein Projekt zuerst die passende Projekt-Stammdatei
lesen und **Bauherrschaft + Objektbezeichnung exakt daraus uebernehmen** — in LV-Stammzeile
und (falls genannt) Vergabeempfehlung. Innerhalb eines Projekts ist die Bauherrschaft in
**jedem** Los **identisch**. Niemals die Bauherrschaft raten oder aus Datei-/Ordnernamen
ableiten. Existiert noch keine Stammdatei, Bauherrschaft aus bereits erstellten Losen
(LV-Stammzeile) verifizieren und dort festhalten. Details: `projekte/README.md`.

## Templates

Vorlagen fuer Anschreiben, LV-Tabelle, Antwortformular:
```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/templates/
```

Alle Templates folgen dem **JANS Dokument-Layout-Standard**:
`/Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md`

(Cambria 11pt, A4, schwarz/weiss, schlicht, keine Farbflaechen.)

## Defaults

| Parameter | Default | Anpassbar |
|---|---|---|
| Eingabefrist | pro Projekt manuell | ja |
| Format | Word + PDF | ja |
| Standard "Gleichwertig"-Satz | automatisch im Anschreiben | pro Fall loeschbar |
| Erinnerung | 3 Tage vor Frist im Apple Calendar | ja |
| Anschreiben-Absender | rj@raphaeljans.ch | je nach Projekt-Lead |
| CC im Versand | Bauleitung intern | konfigurierbar |

## Output-Ablage (VERBINDLICH — jedes LV immer DOPPELT ablegen)

Jedes erstellte LV/Devis wird an **beiden** Orten abgelegt:

**1. JANS AI Hub Output:**
```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/
  AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/
    submission/<projekt-nr>-<projekt>-<gewerk>/<YYMMDD>-versand/
      YYMMDD_LV_<Projekt>_<Gewerk>.docx + .pdf
      YYMMDD_Anschreiben_<Projekt>_<Gewerk>.docx + .pdf
      YYMMDD_Antwortformular_<Projekt>_<Gewerk>.docx + .pdf   (falls separat)
```

**2. Projektspezifisch im Ausschreibungsordner (Versand):**
```
<Projektordner>/03 BKP/<BKP> <Gewerk> <Anbieter>/
    <Projektnr> <BKP> 03 AS versand/<ANBIETER>/
      LOS <BKP2> <GEWERK GROSS> <Projektnr>_<Objekt>_LV.docx + .pdf
      LOS <BKP2> <GEWERK GROSS> <Projektnr>_<Objekt>_Begleitschreiben.docx + .pdf
      ... + Plan-/Dokumentengrundlagen (Objektplan, Grobtermine, Katalog, Skizze)
```

**Konstante Struktur & Nomenklatur (projektuebergreifend identisch):**
- Die Phasen-Unterordner je Gewerk im `03 BKP`-Ordner sind in jedem Projekt gleich:
  `01 Grundlagen · 02 Richtofferten · 03 AS versand · 04 Offerte UN · 05 Vergabe · 06 WV · 08 Korrespondenz · 10 Rechnungen, NT, Regie · 11 SR · archiv`.
- Benennung der Phasen-Unterordner: `<Projektnr> <BKP> <NN> <Phase>` — die **echte BKP-Nummer** des Gewerks (z.B. `2620 272.5 03 AS versand`), **nur die Projektnummer aendert** sich zwischen Projekten.
- In `…03 AS versand/` pro Anbieter ein **Anbieter-Unterordner** (Name in GROSS) mit dem kompletten Versand-Paket; Paket-Dateien: `LOS <BKP> <GEWERK> <Projektnr>_<Objekt>_<Dokument>`.
- Plan-/Dokumentengrundlagen im LV ("Grundlagen des Angebots") und im Begleitschreiben ("Beilagen") konkret benennen.

Dateinamen-Konvention nach JANS-Rule (YYMMDD).

## Referenzen-Ordner (HOECHSTE PRIORITAET)

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/referenzen/
```

Hier gehoeren hin:
- Goldstandard-Beispiele (z.B. Gastro-Online-Offerte vom 5.5.2026 als Format-Vorbild)
- SIA 1024 Hinweise
- KBOB-Tarife Spezialplaner
- Branchenspezifische Marktreports
- AGB-Vorlagen

## Wichtige Hinweise

- **Markenvorgabe + "Gleichwertig"-Klausel**: Bei oeffentlichen Bauherren (Kantonale Bauten, Spitaeler, Gemeinden) ist die "Gleichwertig"-Klausel im Anschreiben juristisch wichtig (IVoeB/BoeB).
- **Bauseits-Leistungen vollstaendig**: Sanitaer, Elektro, HLK, Baumeister, Silikonierung, Kuecheninventar — was NICHT im Auftrag enthalten ist, gehoert klar ins Anschreiben.
- **Plan-Versionen einheitlich**: Alle Beilagen (Projektplan, Installationsplan, Legende) muessen auf derselben Revision sein. Vor Versand pruefen!
- **Eingabefrist realistisch**: 2 Wochen = sportlich, 3 Wochen = marktueblich, 4 Wochen = grosszuegig. Bei Ferien (Weihnachten, Sommer) Puffer.
- **Anzahl Anbieter**: 3-6 pro Submission. Weniger = wenig Konkurrenz, mehr = Aufwand fuer alle Beteiligten unverhaeltnismaessig.
- **Sprache**: Deutsch (Schweiz), Schweizer Hochdeutsch, sz statt ss.

## Verknuepfung mit anderen Skills

- `offertenpruefung` — Auswertung der eingegangenen Rueckmeldungen (Phase 3)
- `kostenschaetzung` — Plausibilitaetscheck der Anbieter-Antworten
- `terminplanung` — Eingabefrist mit Bauprogramm abgleichen
