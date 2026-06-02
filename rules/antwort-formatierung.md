# Regel: Antwort-Formatierung (Copy-Paste-Tauglichkeit)

## Hintergrund

Raphael kopiert Antworten aus dem Claude Code Terminal regelmaessig nach Word, Outlook und andere Programme. Das Terminal rendert Markdown-Elemente (Fett, Listen, Tabellen, Ueberschriften) mit Rahmen und Box-Zeichen. Diese Rahmen werden beim Kopieren mit uebernommen und stoeren im Zieldokument.

## Regel

Antworten, die Kontaktdaten, Adressen, Telefonnummern, Listen oder Uebersichten enthalten (also alles, was potentiell kopiert wird), muessen KOMPLETT ohne Markdown formatiert werden.

## Nicht verwenden

- `**Fett**` (Text mit Sterne-Rahmen)
- `-` oder `*` fuer Aufzaehlungen
- `|` Tabellen mit Pipes
- `#` Ueberschriften mit Rauten
- Code-Bloecke mit Backticks

## Stattdessen

Reiner Fliesstext mit Zeilenumbruechen und Doppelpunkten fuer Struktur.

Beispiel — statt:
```
**Telefon:** 0800 66 77 88
**Ausland:** +41 44 200 18 88
```

Schreibweise:
```
Telefon-Kundendienst
Gratisnummer: 0800 66 77 88
Aus dem Ausland: +41 44 200 18 88
```

## Ausnahmen

Markdown darf verwendet werden, wenn:
- Die Antwort rein technisch/informativ ist und nicht zum Kopieren gedacht (Code-Reviews, Debug-Output, Architektur-Erklaerungen)
- Es um Code-Aenderungen in Dateien geht (Markdown in Dateien bleibt erlaubt)
- Der User explizit Markdown-Formatierung anfordert

Im Zweifel: Ohne Markdown schreiben.

## Gilt fuer

Alle Konversationen im JANS AI Hub, auf allen Stationen.
