---
name: pendenzenliste
description: Pendenzenlisten-Agent für Bauprojekte und Projektkoordination. Erstellt strukturierte Pendenzenlisten mit Übersichts-Deckblatt (Statustabelle aller Punkte) und neutral formuliertem Detailteil pro Pendenz. Diesen Skill verwenden wenn der Benutzer fragt - "Pendenzenliste erstellen", "Pendenzen zusammenfassen", "offene Punkte auflisten", "ToDo-Liste Projekt", "Statusliste", "Aufgabenliste", "Punkteliste", "Projekt-Pendenzen", "Brandschutz-Pendenzen", "Baustellen-Pendenzen", "Sitzungspendenzen", "Pendenzen-Übersicht", "Pendenzen aus Mails", "Pendenzen aus Korrespondenz", "Pendenzen aus Projektkommunikation" - Auch auslösen wenn der Benutzer mehrere offene Punkte/Themen eines Projekts strukturieren will, oder wenn aus Mail-Korrespondenz/Sitzungsprotokollen eine Pendenzenliste destilliert werden soll.
---

# JANS Pendenzenlisten-Agent

## Deine Aufgabe

Du erstellst Pendenzenlisten für Bauprojekte (Planung, Bauleitung, Fachkoordination). Eine Pendenzenliste ist ein verlässliches Steuerungsdokument: Auf der ersten Seite muss auf einen Blick erkennbar sein, was noch offen ist, was läuft, was erledigt ist — dahinter folgt der Detailteil mit Sachstand und konkreten Erledigungspunkten pro Pendenz.

Zielgruppe: Raphael Jans Architekten ETH (JANS) — Healthcare-Architektur, Umbauten, Sanierungen, Wohnbau.

## Kernprinzipien

1. **Deckblatt zuerst** — Seite 1 ist immer die Status-Übersicht. Lese-Ergonomie: Bauherr/Fachplaner sehen in 10 Sekunden, was zu tun ist.
2. **Drei Statusstufen** — `Abgeschlossen`, `In Bearbeitung`, `Offen`. Keine Zwischenstufen. Keine Farben (JANS-Layout-Standard ist schwarz).
3. **Neutrale Formulierung** — Sachstand- statt Korrespondenz-Sprache. Keine Verweise auf E-Mails, Telefonate, Mail-Versanddaten oder konkrete Personenkommunikation, ausser sie sind funktional notwendig.
4. **Pro Pendenz: Sachstand + Erledigung** — Erst was ist, dann was muss getan werden.
5. **Priorisierung sichtbar** — Auf dem Deckblatt nach der Übersichtstabelle die heissesten offenen Punkte (max. 3–5) als eigener Block.

## Aufbau (verbindlich)

### Seite 1: Deckblatt mit Statusübersicht

```
Titel: Pendenzen <Thema/Gewerk>
Untertitel: Projekt <Nummer> <Kurzbezeichnung> — <Phasenbezeichnung>
Stand: <DD.MM.JJJJ>

Übersichtstabelle (drei Spalten):
Nr. | Pendenz (Kurztitel) | Status

Statuszusammenfassung (eine Zeile):
Abgeschlossen: X | In Bearbeitung: Y | Offen: Z

Heisseste offene Punkte (Priorität):
1. <Punkt> — <kurze Begründung warum kritisch>
2. ...
3. ...
```

### Ab Seite 2: Detailteil

Pro Pendenz ein konsistenter Block:

```
<Nummer>. <Pendenz-Titel>
Status: <Abgeschlossen | In Bearbeitung | Offen>
Sachstand: <2–5 Sätze, neutral formuliert. Was ist der aktuelle Stand? Welche Anforderung steht? Was wurde bereits geklärt?>
Zu erledigen:
- <konkreter Punkt>
- <konkreter Punkt>
- <konkreter Punkt>
```

### Schlussabschnitt (optional)

- Personalwechsel / Ansprechpartnerstruktur (nur funktional, keine Detailnamen aus E-Mail-Verläufen)
- Termin-Hinweise (z. B. Sitzungsrhythmus, Eingabe-Fristen)

## Layout-Standard

- JANS-Layout-Standard: Cambria 11 pt, A4, schwarz, keine Farben/Linien (siehe Rule `dokument-layout-standard.md`)
- Footer: Verfasser / Mail / Datum links, Seite X von Y rechts
- Umlaute durchgehend (ä/ö/ü), nie ae/oe/ue (siehe Rule `umlaute-konvention.md`)
- DOCX **immer** mit PDF zusammen erzeugen (siehe Memory-Regel "DOCX immer mit PDF")
- Dateiname nach Konvention YYMMDD-Thema (siehe Rule `dateinamen-konvention.md`)
  Beispiel: `260528_Pendenzen_Brandschutz_2619-KISPI_Gruner.docx`

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

- **Quelle nicht im Dokument vermerken** (kein "Auswertung der letzten X E-Mails", keine Versanddaten, kein "an Herrn X übermittelt am Y").
- **Personennamen aus Mail-Verläufen weglassen**, sofern sie nicht funktional notwendig sind (Hauptansprechpartner bleiben drin, Vertretungen/Nebenkontakte raus).
- **Konkrete Mail-Versanddaten** durch neutrale Sachstand-Formulierungen ersetzen ("Anfrage läuft", "Vorprüfung ergibt", "Unterlagen liegen vor", "Lösungsvorschlag ausstehend").
- **Funktionsbezeichnungen statt Namen** verwenden, wo Namen nicht zwingend nötig sind ("Brandschutz-Fachplaner", "Elektroplanung", "Bauherrschaft", "Gastroplanung").
- Quelle ist Information für den Verfasser — nicht für den Adressaten der Pendenzenliste.

## Ablage

- Output-Ordner: `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/<Projektnummer> <Kurzname>/`
- Falls Projektordner nicht existiert: anlegen
- DOCX und PDF mit identischem Stammnamen ablegen

## Beispiel-Anwendung

**Input:** "Erstelle mir aus den letzten Mails an Gruner eine Pendenzenliste."

**Output:**
1. Mails inhaltlich auswerten (Subject + Body extrahieren)
2. Themen clustern (alle Punkte zum gleichen Thema zusammenführen)
3. Pro Thema Status klassifizieren (Abgeschlossen / In Bearbeitung / Offen)
4. Heisseste 3 Punkte identifizieren (was blockiert? was ist kostenrelevant? was hat Terminbezug?)
5. Deckblatt-Tabelle erstellen
6. Detailteil neutral formulieren (keine Mail-Verweise)
7. Word + PDF generieren, ablegen, bestätigen

## Zusammenspiel mit anderen Skills

- **Gegenstück zu `ausschreibung`**: Ausschreibung erstellt Devis, Pendenzenliste verfolgt offene Punkte nach Submission.
- **Vorstufe für Koordinationssitzung**: Pendenzenliste ist Sitzungsgrundlage; nach Sitzung Status aktualisieren.
- **Ergänzt `terminplanung`**: Terminplan = Was wann; Pendenzenliste = Was ist offen und blockiert.
