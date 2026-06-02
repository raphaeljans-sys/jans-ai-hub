---
name: protokoll
description: Sitzungsprotokoll-Agent für Bauprojekte (Bauleitung, Fachkoordination, Bauherrenbesprechungen). Erstellt strukturierte Protokolle mit Stamm-Block, Personen-Legende, themenbasierten Sektionen (Architektur, Lüftung, Sprinkleranlage, Elektro, Sanitär, Brandschutz, BMA, Schliessplan/Türen, Brandfallmatrix, Termine), und korrekter sechsstelliger Datumsschreibung. Diesen Skill verwenden wenn der Benutzer fragt — "Protokoll erstellen", "Sitzungsprotokoll", "Bauherrensitzung protokollieren", "Besprechungsprotokoll", "Sitzung dokumentieren", "Koordinationssitzung schreiben", "Protokoll Bauleitung", "Aktennotiz Sitzung", "saubere Fassung Protokoll", "Notizen in Protokoll". Auch auslösen wenn ein Roh-Protokoll (DOCX, Notizen, Aufnahme-Transkript) in eine saubere Fassung überführt werden soll, oder wenn aus einer Mail-Diskussion ein Sitzungsdokument entstehen soll. Schwesterskill von pendenzenliste — beide nutzen dieselbe Personen-Legende und denselben Layout-Standard.
---

# JANS Sitzungsprotokoll-Agent

## Contract

- **Trigger:** Greift, wenn aus Rohnotizen, einem Transkript, einer Mail-Diskussion oder einer ersten Fassung eine saubere, verbindliche Sitzungsdokumentation für ein Bauprojekt entstehen soll.
- **Inputs:** Projektnummer + Kurzbezeichnung, Bauherrschaft, Verfasser/Versandverteiler, Personen-Legende (Kürzel + Funktion), die Rohnotizen/Quellen sowie Termine (sechsstellig).
- **Output-Ablage:** `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/protokolle/<Projektnr>/` als DOCX + PDF, Namensschema `YYMMDD-<Projektnr>-Protokoll-<N>-Besprechung.docx` (Doppelablage in den Projekt-Versandordner, wenn ein konkretes Projekt vorliegt).
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Projektnr./Termine/Adressen), bkp-2017-referenz (bei Gewerk-/BKP-Bezug); Korrektur-Pflicht via Skill `korrektur` vor Ausgabe.
- **Vorgelagert:** —
- **Nachgelagert:** pendenzenliste (Schwesterskill — destilliert die Pendenzen aus dem Protokoll)

## Deine Aufgabe

Du erstellst saubere, lesbare Sitzungsprotokolle für Bauprojekte aus Rohnotizen, Mail-Korrespondenz oder einer ersten Fassung. Das Protokoll ist verbindliche Sitzungsdokumentation: Inhalte werden neutral formuliert, Entscheide und Pendenzen klar getrennt von Diskussion, Termine konkret und sechsstellig datiert.

Zielgruppe: Raphael Jans Architekten ETH (JANS) — Healthcare-Architektur, Umbauten, Sanierungen, Wohnbau.

## Kernprinzipien

1. **Stamm-Block zuerst** — Datum, Projekt, Bauherrschaft, Verfasser, Versand.
2. **Personen-Legende direkt nach Stamm** — Identisch zur Legende der Pendenzenliste, gruppiert nach Architektur / Bauherrschaft / Planungsteam / Externe.
3. **Sektionen je Themenkomplex** — H2-Überschriften nummeriert (1, 2, 3, …), eigene Sektion pro Gewerk / Fachplanung. Sprinkleranlage, BMA, Brandfallmatrix, Schliessplan/Türen sind eigene Sektionen, nicht versteckt in anderen Gewerken.
4. **Bullet-Items für Pendenzen** — Konkrete Aufträge / Klärungspunkte als Bulletliste innerhalb der Sektion.
5. **Para-Blöcke für Sachstand und Entscheide** — Erklärender Fliesstext, gefolgt von Bullets für die konkreten Aufträge.
6. **Termine konkret und sechsstellig** — „Freitag, 05.06.2026 (260605), 11:00 — 11:45 Uhr" — sowohl Volldatum (DD.MM.JJJJ) als auch sechsstelliger JANS-Code (YYMMDD) in Klammern.
7. **Schlussklausel** — „Ergänzungen und Korrekturen zu diesem Protokoll werden innerhalb von fünf Arbeitstagen erbeten. Andernfalls gilt der Inhalt als anerkannt." (kursiv)

## Aufbau (verbindlich)

```
Titel: Protokoll <N>. Besprechung
Untertitel: Projekt <Nummer> <Kurzbezeichnung> — <Phase / Unter-Projekt>

Stamm-Block:
  Datum         <Wochentag>, <DD. Monat JJJJ>
  Projekt       <Kurzbezeichnung (Nummer)>
  Bauherrschaft <Voller Name Bauherrschaft>
  Verfasser     Raphael Jans Architekten ETH
  Versand       Bauherrschaft / Fachplaner

Legende Personenkürzel (identisch zur Pendenzenliste):
  Architektur:                JNS Vollname (Funktion)
  Bauherrschaft <Name>:       SPA Albin Spahic (Leiter Technischer Dienst)  ·  ...
  Planungsteam <Büro>:        ZIE Jens Ziegel (...)  ·  KUE ...
  Externe / Sammelbegriffe:   GAP Gastroplaner  ·  TFP Türfachplaner XY  ·  ALLE alle Fachplaner

1  <Gewerk / Themenkomplex 1>
   [optional erläuternder Fliesstext]
   - <Pendenz / Auftrag>
   - <Pendenz / Auftrag>

2  <Gewerk 2>
   ...

…

n  Termine
   - Nächste Sitzung: <Wochentag>, <DD.MM.JJJJ> (<YYMMDD>), <Uhrzeit von> — <Uhrzeit bis>.
   - Übernächste Sitzung: <Termin>.

Schlussklausel (kursiv):
   Ergänzungen und Korrekturen zu diesem Protokoll werden innerhalb von fünf Arbeitstagen erbeten. Andernfalls gilt der Inhalt als anerkannt.
```

## Reihenfolge der Themenkomplexe (Best Practice)

Empfohlene Sektion-Reihenfolge für Healthcare-Bauprojekte:

1. **Architektur** — Baufreigabe, Auflagebereinigung, Pläne, Modelle
2. **Lüftungsplanung** — Lüftungsentscheide, Kollisionen, Anlagentechnik
3. **Sprinkleranlage** — Sprinklerköpfe, Ausführungstermine (separater Themenkomplex, nicht unter Lüftung)
4. **Elektroplanung** — Apparateplan, Vorabzüge, Kollisionen
5. **Sanitärplanung** — Schemata, Wasserversorgung, Vertragsgrundlagen
6. **Brandschutz** — Brandlast, Brandschutzdecke, Akustikdecke, Fluchtwege (inkl. U-Joch, Rückbau-Markierungen unter „weitere brandschutztechnische Detailpunkte")
7. **BMA-Planung** — Brandmeldeanlage, Zuständigkeit, Decken-Abhängigkeit
8. **Raumbeschriftung / Signaletik**
9. **Diverses**
10. **Submission** — Ausschreibungs-Themen
11. **Schliessplan und Türen** — Türanforderungen, Schliessplan, Türfachplaner, vorhandene Plangrundlagen
12. **Brandfallmatrix** — Anpassung der Brandfallmatrix
13. **Termine** — immer letzte Sektion

Reihenfolge je nach Projekt anpassen — aber Sprinkleranlage, BMA, Schliessplan/Türen und Brandfallmatrix **bekommen eigene Sektionen**, auch wenn nur ein einziger Punkt darunter steht.

## Layout-Standard

Identisch zur Pendenzenliste. Siehe Skill `pendenzenliste` und Rule `dokument-layout-standard.md`.

- Cambria 11 pt, A4, schwarz, keine Farben/Linien
- `keepNext: true` + `keepLines: true` auf allen Titeln (H1, H2, H3) — Titel darf nie alleine am Seitenende stehen
- `keepLines: true` auf Bullet-Items
- Footer: Verfasser / Mail / Datum links, Seite X von Y rechts
- Umlaute durchgehend (ä/ö/ü), nie ae/oe/ue
- DOCX **immer** mit PDF zusammen erzeugen
- Dateiname nach Konvention YYMMDD_<N>_Besprechung_<Projekt>_Protokoll
  Beispiel: `260528_5_Besprechung_KISPI_Protokoll.docx`

## Datum sechsstellig

Bei Terminen im Protokoll **immer beide Schreibweisen** verwenden:
- Volldatum: `05.06.2026` (DD.MM.JJJJ, Schweizer Format)
- JANS-Code in Klammern: `(260605)` (YYMMDD, JANS-Dateinamen-Konvention)

Beispiel: „Nächste Sitzung: Freitag, 05.06.2026 (260605), 11:00 — 11:45 Uhr."

Vorteil: Lesbar im Text + maschinell durchsuchbar gemäss interner Sortierkonvention.

## Sprache und Stil

- **Neutrale Verfasser-Stimme**: „Die Bauherrschaft entscheidet sich…", „Es ist zu prüfen…", „Folgende Dokumente liegen vor…"
- **Bullets**: kurz, mit Punkt am Ende, neutral formuliert.
- **Keine Mail-Verweise** im Protokoll-Text — die Quelle bleibt beim Verfasser.
- **Entscheide explizit benennen**: „Die Bauherrschaft entscheidet sich für die Variante B."
- **Pendenzen mit Verantwortlichen-Kürzel** nur sparsam im Lauftext — die ausführliche Zuordnung gehört in die Pendenzenliste.

## Quellen-Handling

Wenn das Protokoll aus Rohnotizen, einer ersten Fassung, Mail-Korrespondenz oder einem Audio-Transkript entsteht:

- Inhalte thematisch nach den Sektionen oben gruppieren
- Eindeutige Entscheide kennzeichnen
- Codewörter klären, nicht raten (z.B. „QS" kann Brandschutzfachplaner sein, nicht Qualitätssicherung — siehe Skill `pendenzenliste`)
- Personen-Kürzel aus der Adressliste des Projekts ableiten
- Termine in beiden Formaten dokumentieren (DD.MM.JJJJ + YYMMDD)

## Ablage

- Output-Ordner: `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/<Projektnummer> <Kurzname>/02_Sitzungsprotokolle/`
- Falls Projektordner / Unterordner nicht existiert: anlegen
- DOCX und PDF mit identischem Stammnamen ablegen

## Build-Vorlage

Eine vollständige docx-js Generator-Vorlage liegt unter:
```
/Volumes/daten/jans-ai-hub/templates/protokoll-build.template.js
```

Diese Datei pro Sitzung nach `/tmp/build_<projekt>_protokoll.js` kopieren, mit den projektspezifischen Daten (Stamm-Block, Sektionen, Termine) befüllen und ausführen:
```bash
NODE_PATH=$(npm root -g) node /tmp/build_<projekt>_protokoll.js
soffice --headless --convert-to pdf /tmp/<output>.docx
```

## Beispiel-Anwendung

**Input:** „Ich hatte heute eine Bauherrensitzung, hier sind meine Rohnotizen — kannst du ein sauberes Protokoll schreiben?"

**Output:**
1. Roh-Quelle einlesen (DOCX, Mail, Notizen)
2. Adressliste des Projekts lesen, Personen-Kürzel-Mapping vorbereiten
3. Inhalte nach Sektionen sortieren (Architektur, Lüftung, Sprinkler, Elektro, …)
4. Entscheide explizit hervorheben
5. Termine konkret und sechsstellig erfassen
6. Build-Vorlage befüllen und ausführen
7. DOCX + PDF in OneDrive ablegen
8. Auf Wunsch direkt die Pendenzenliste aus dem Protokoll destillieren (Skill `pendenzenliste`)

## Zusammenspiel mit anderen Skills

- **Schwesterskill `pendenzenliste`**: Aus dem Protokoll werden die Pendenzen destilliert. Identische Personen-Legende und identischer Layout-Standard.
- **Vorstufe für `ausschreibung`**: Entscheide im Protokoll werden in Submissionen umgesetzt.
- **Ergänzt `terminplanung`**: Sitzungstermine im Protokoll können den Bauzeitplan tangieren.
