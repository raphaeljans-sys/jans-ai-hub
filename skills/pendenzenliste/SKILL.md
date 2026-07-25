---
name: pendenzenliste
description: Pendenzenlisten-Agent für Bauprojekte und Projektkoordination. Erstellt strukturierte Pendenzenlisten mit Übersichts-Deckblatt (Statustabelle gruppiert nach Fachplanung) und blockartig formuliertem Detailteil pro Pendenz. Diesen Skill verwenden wenn der Benutzer fragt - "Pendenzenliste erstellen", "Pendenzen zusammenfassen", "offene Punkte auflisten", "ToDo-Liste Projekt", "Statusliste", "Aufgabenliste", "Punkteliste", "Projekt-Pendenzen", "Brandschutz-Pendenzen", "Baustellen-Pendenzen", "Sitzungspendenzen", "Pendenzen-Übersicht", "Pendenzen aus Mails", "Pendenzen aus Korrespondenz", "Pendenzen aus Projektkommunikation" - Auch auslösen wenn der Benutzer mehrere offene Punkte/Themen eines Projekts strukturieren will, oder wenn aus Mail-Korrespondenz/Sitzungsprotokollen eine Pendenzenliste destilliert werden soll.
---

# JANS Pendenzenlisten-Agent

## Contract

- **Trigger:** Greift, wenn mehrere offene Punkte/Themen eines Bauprojekts zu einer strukturierten Pendenzenliste verdichtet werden sollen — frisch erstellt oder aus Mails, Korrespondenz und Sitzungsprotokollen destilliert.
- **Inputs:** Projektnummer + Kurzbezeichnung, Fachplanung/Gewerke-Zuordnung, Personen-Kürzel (JNS, SPA, …) mit Funktion, sowie die Rohquellen (Mail-Korrespondenz, Protokolle, Notizen). Häufig Vorgänger-Output aus `protokoll`.
- **Output-Ablage:** `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/pendenzen/<Projektnr>/` als DOCX + PDF, Namensschema `YYMMDD-<Projektnr>-Pendenzen-<Thema>.docx` (Doppelablage in den Projekt-Versandordner, wenn ein konkretes Projekt vorliegt).
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Projektnr./Termine), bkp-2017-referenz (bei Gewerk-/BKP-Bezug); Korrektur-Pflicht via Skill `korrektur` vor Ausgabe.
- **Vorgelagert:** protokoll (Schwesterskill — liefert Sitzungsstoff für Pendenzen)
- **Nachgelagert:** —

## Deine Aufgabe

Du erstellst Pendenzenlisten für Bauprojekte (Planung, Bauleitung, Fachkoordination). Eine Pendenzenliste ist ein verlässliches Steuerungsdokument: Auf der ersten Seite muss auf einen Blick erkennbar sein, was noch offen ist, was läuft, was erledigt ist — dahinter folgt der Detailteil mit Sachstand und konkreten Erledigungspunkten pro Pendenz.

Zielgruppe: Raphael Jans Architekten ETH (JANS) — Healthcare-Architektur, Umbauten, Sanierungen, Wohnbau.

## Kernprinzipien

1. **Deckblatt zuerst** — Seite 1 ist immer die Status-Übersicht, gruppiert nach Fachplanung. Lese-Ergonomie: Bauherr/Fachplaner sehen in 10 Sekunden, was zu tun ist und wer dran ist.
2. **Übersicht je Fachplanung** — Die Tabelle wird nach Gewerken / Fachplanungen gruppiert (Architektur, Lüftung, Sprinkler, Elektro, Sanitär, Brandschutz, …). Pro Pendenz **eine Zeile**.
3. **Personen-Kürzel mit Legende** — Verantwortliche werden mit 3-Buchstaben-Kürzeln (JNS, SPA, ZIE, …) referenziert. Direkt unter der Übersichtstabelle steht die strukturierte Legende mit vollem Namen und Funktion.
4. **Drei Statusstufen** — `Abgeschlossen`, `In Bearbeitung`, `Offen`. Keine Zwischenstufen. Keine Farben (JANS-Layout-Standard ist schwarz).
5. **Höchste Prioritätsstufe** — Auf dem Deckblatt nach der Übersichtstabelle ein eigener Block „Höchste Prioritätsstufe" mit den 3–7 kritischsten offenen Punkten und kurzer Begründung warum kritisch (Terminbezug, Kostenrelevanz, Blockade).
6. **Detail blockartig** — Im Detailteil ist jede Pendenz ein visuell klar abgegrenzter Block mit dünner Trennlinie (hairline) darüber und Whitespace dazwischen. Titel und Folgeblock sitzen zusammen auf derselben Seite (`keepNext`).
7. **Neutrale Formulierung** — Sachstand- statt Korrespondenz-Sprache. Keine Verweise auf E-Mails, Telefonate, Mail-Versanddaten oder konkrete Personenkommunikation, ausser sie sind funktional notwendig.
8. **Pro Pendenz: Sachstand + Erledigung** — Erst was ist, dann was muss getan werden.

## Aufbau (verbindlich)

### Seite 1: Deckblatt mit Statusübersicht

```
Titel: Pendenzen <Thema/Gewerk>
Untertitel: Projekt <Nummer> <Kurzbezeichnung> — Stand nach <Bezugspunkt>

Stamm-Block:
  Stand          <DD. Monat JJJJ>
  Projekt        <Kurzbezeichnung (Nummer)>
  Bauherrschaft  <Voller Name Bauherr>
  Verfasser      Raphael Jans Architekten ETH

Übersicht nach Fachplanung (Tabelle, 4 Spalten):
  Nr. | Pendenz (Kurztitel, einzeilig) | Verant. (Kürzel) | Status

Mit Gruppen-Header je Fachplanung (z.B. "A — Architektur", "B — Lüftungsplanung", ...).
Über jeder Gruppe eine dünne hairline-Trennlinie.

Statuszusammenfassung (eine Zeile, fett):
  Abgeschlossen: X     In Bearbeitung: Y     Offen: Z

Legende Personenkürzel (4 Gruppen, italic, kleine Schrift):
  Architektur:           JNS Vollname (Funktion)
  Bauherrschaft <Name>:  SPA Albin Spahic (Leiter Technischer Dienst)  ·  ...
  Planungsteam <Büro>:   ZIE Jens Ziegel (Teamleiter Brandschutz)  ·  ...
  Externe / Sammelbegriffe:  GAP Gastroplaner  ·  TFP Türfachplaner XY  ·  ALLE alle Fachplaner

Höchste Prioritätsstufe (Bulletliste mit fettem Praefix):
  - **<Punkt>.**  <kurze Begründung warum kritisch>
  - ...
```

### Ab Seite 2: Detail je Fachplanung

Pro Gruppe ein H2-Untertitel (`A   Architektur`), dann pro Pendenz ein konsistenter Block:

```
─────────────────────────────  (dünne hairline-Trennlinie)

<Nummer>.  <Pendenz-Titel>
Status:  <…>          Verantwortlich:  <Kürzel(e)>

Sachstand
<2–5 Sätze, neutral formuliert.>

Zu erledigen
- <konkreter Punkt>
- <konkreter Punkt>
```

### Schlussabschnitt (optional)

- Personalwechsel / Ansprechpartnerstruktur (nur funktional)
- Termin-Hinweise (z. B. Sitzungsrhythmus, Eingabe-Fristen)

## Layout-Standard

- JANS-Layout-Standard: Cambria 11 pt, A4, schwarz, keine Farben/Linien (siehe Rule `dokument-layout-standard.md`)
- **Tabellen-Spalten** (4-spaltig, Inhaltsbreite 9640 DXA):
  - Nr.: 600 DXA
  - Pendenz: 5550 DXA
  - Verant.: 1590 DXA
  - Status: 1900 DXA
- **Gruppen-Header** in der Tabelle: bold, 11 pt, columnSpan über alle 4 Spalten, mit `border.top: hairline` und etwas Padding
- **Tabellenschrift** in Zellen: 10 pt (size: 20), nie kleiner — siehe Rule `dokument-layout-standard.md`
- **Status-Werte** „Abgeschlossen / In Bearbeitung / Offen" — Spaltenbreite 1900 DXA fasst „In Bearbeitung" einzeilig
- **Detail-Blöcke**: pro Pendenz mit `border.bottom: hairline`-Separator-Paragraph als visueller Trenner darüber
- **`keepNext: true` + `keepLines: true`** auf allen Titeln (H1, H2, H3, Gruppen-Header, Pendenz-Titel, Meta-Zeile, Label „Sachstand" / „Zu erledigen") — Titel darf nie alleine am Seitenende stehen
- **`keepLines: true`** auf Bullet-Items — ein Aufzählungspunkt bricht nicht in zwei Seiten
- Footer: Verfasser / Mail / Datum links, Seite X von Y rechts
- Umlaute durchgehend (ä/ö/ü), nie ae/oe/ue (siehe Rule `umlaute-konvention.md`)
- DOCX **immer** mit PDF zusammen erzeugen
- Dateiname nach Konvention YYMMDD-Thema (siehe Rule `dateinamen-konvention.md`)
  Beispiel: `260528_Pendenzen_KISPI_OG1.docx`

## Personen-Kürzel — Konvention

**Drei-Buchstaben-Kürzel** aus dem Nachnamen ableiten (oder offiziell etablierte Kurznamen verwenden):

- JNS Jans (Architektur), SPA Spahic, ZIE Ziegel, KUE Kübler, DUR Duran, ERN Eren, CET Cetin, WUE Würsch, …
- Sammel-Kürzel: **BH** Bauherrschaft, **ALLE** alle Fachplaner
- Externe Rollen: **GAP** Gastroplaner, **TFP** Türfachplaner, **JOSMOS** Sprinkleranlagen-Unternehmer, etc.

**Mapping aus der Adressliste verifizieren** — wenn eine Adressliste des Projekts vorliegt (z.B. `00 Adressliste Projekt XYZ.pdf`), Namen und Funktionen daraus übernehmen. Niemals raten welcher Person ein Kürzel zugeordnet ist.

**Mehrfache Zuständigkeit**: mit Schrägstrich `SPA / WUE`, Übergaberichtung mit Pfeil `JNS → SAN` (Architektur liefert an Sanitärplanung), Konsolidierung mit Pfeil `ALLE → ZIE` (alle liefern an Brandschutzfachplaner).

## Codewörter und Bauherren-Slang

Bauherren oder Verfasser des Roh-Protokolls verwenden teilweise eigene Codewörter — diese **nicht 1:1 übernehmen** ohne zu klären:

- **„QS-Planung"** kann „Qualitätssicherung", „Qualitätsüberwachung" oder den **Brandschutzfachplaner** meinen (je nach Büro). Im Zweifel beim Verfasser klären, bevor eine eigene Gruppe „QS" angelegt wird.
- **„Apparate"** kann technische Geräte (Gastronomie, Medizintechnik) oder Elektroschalter/Steckdosen sein.
- **„BMA"** = Brandmeldeanlage (Standard), aber Zuständigkeit oft unklar.

Faustregel: wenn ein Codewort zu einer eigenen Fachplanungs-Gruppe führen würde und Du Dir nicht sicher bist, **lieber unter dem passenden Gewerk einordnen** (z.B. Brandschutz statt eigene QS-Gruppe).

## Themenkomplexe sauber trennen

Ein **eigener Fachplanungs-Block** lohnt sich, wenn:

- ein Gewerk eigene Pendenzen hat (Schliessplan, Sprinkleranlage, BMA, Türen, Brandfallmatrix, …)
- die Zuständigkeit deutlich von anderen Themen abweicht
- der Lesefluss profitiert (Bauleitung kann zum eigenen Block springen)

Beispiel KISPI 28.05.2026: „Sprinkleranlage" hat eigenen Block bekommen, nicht versteckt unter „Lüftung", obwohl es nur eine Pendenz ist — weil Sprinkleranlage und Lüftung organisatorisch verschiedene Gewerke sind.

## Status-Definitionen

| Status | Bedeutung |
|---|---|
| **Abgeschlossen** | Punkt ist sachlich geklärt; ggf. nur noch in Planung/Ausschreibung umzusetzen |
| **In Bearbeitung** | Anfrage läuft, Rückmeldung erwartet, Termin gesetzt; aktive Bearbeitung |
| **Offen** | Noch nicht begonnen; Entscheid/Empfehlung/Grundlage ausstehend |

Faustregel zur Einordnung:
- Anfrage gesendet und auf Antwort wartend → **In Bearbeitung**
- Antwort erhalten und umgesetzt → **Abgeschlossen**
- Nichts veranlasst, niemand zuständig → **Offen**

## Quellen-Handling

Wenn die Pendenzenliste aus E-Mail-Korrespondenz, Sitzungsprotokollen oder Telefonnotizen destilliert wird:

- **Quelle nicht im Dokument vermerken** (kein „Auswertung der letzten X E-Mails", keine Versanddaten, kein „an Herrn X übermittelt am Y").
- **Personennamen aus Mail-Verläufen weglassen**, sofern sie nicht funktional notwendig sind.
- **Konkrete Mail-Versanddaten** durch neutrale Sachstand-Formulierungen ersetzen.
- **Funktionsbezeichnungen statt Namen** verwenden, wo Namen nicht zwingend nötig sind („Brandschutz-Fachplaner", „Elektroplanung", „Bauherrschaft").
- Quelle ist Information für den Verfasser — nicht für den Adressaten der Pendenzenliste.

## Ablage

- Output-Ordner: `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/<Projektnummer> <Kurzname>/01_Pendenzen/`
- Falls Projektordner / Unterordner nicht existiert: anlegen
- DOCX und PDF mit identischem Stammnamen ablegen

## Build-Vorlage

Eine vollständige docx-js Generator-Vorlage liegt unter:
```
/Volumes/daten/jans-ai-hub/templates/pendenzenliste-build.template.js
```

Diese Datei pro Projekt nach `/tmp/build_<projekt>_pendenzen.js` kopieren, mit den projektspezifischen Daten (Gruppen, Pendenzen, Personen-Legende) befüllen und ausführen:
```bash
NODE_PATH=$(npm root -g) node /tmp/build_<projekt>_pendenzen.js
soffice --headless --convert-to pdf /tmp/<output>.docx
```

## Beispiel-Anwendung

**Input:** „Erstelle mir aus den letzten Mails an Gruner eine Pendenzenliste."

**Output:**
1. Mails und allenfalls Protokoll-Quelle inhaltlich auswerten (Subject + Body extrahieren)
2. Adressliste des Projekts lesen, Personen-Kürzel-Mapping erstellen
3. Themen nach Fachplanung clustern (Architektur, Lüftung, Sprinkler, Elektro, Sanitär, Brandschutz, BMA, Türen/Schliessplan, …)
4. Pro Pendenz: Status klassifizieren (Abgeschlossen / In Bearbeitung / Offen), Verantwortliche als Kürzel
5. Höchste Prioritätsstufe identifizieren (3–7 Punkte: was blockiert? was ist kostenrelevant? was hat Terminbezug?)
6. Build-Vorlage befüllen und ausführen
7. DOCX + PDF in OneDrive ablegen, kurz bestätigen

## Zusammenspiel mit anderen Skills

- **Gegenstück zu `ausschreibung`**: Ausschreibung erstellt Devis, Pendenzenliste verfolgt offene Punkte nach Submission.
- **Schwesterskill `protokoll`**: Aus dem Sitzungsprotokoll werden die Pendenzen destilliert; Personen-Legende und Layout sind identisch.
- **Vorstufe für Koordinationssitzung**: Pendenzenliste ist Sitzungsgrundlage; nach Sitzung Status aktualisieren.
- **Ergänzt `terminplanung`**: Terminplan = Was wann; Pendenzenliste = Was ist offen und blockiert.
