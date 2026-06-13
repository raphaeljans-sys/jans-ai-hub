# JANS AI Hub — Logbuch & Kontrollinstanz

Die vierte Schicht des Hub neben **Skills** (Fähigkeiten), **Rules** (Verhalten) und
**Wissen** (Wissens-Layer): die **Aufsichts-/Kontroll-Schicht**. Ziel ist, dass der Hub
nicht nur Arbeit ausführt, sondern die **Qualität des Geschäftsalltags** von Raphael Jans
überwacht: was ist offen, was läuft an, welche Frist droht, was wurde zugesagt und ist
noch unerledigt.

## Dateien

| Datei | Inhalt | Wer schreibt |
|---|---|---|
| `LOGBUCH.md` | Append-only Journal: dated Einträge zu Entscheiden, erledigten Dingen, offenen Fäden | Agent `logbuch` (nie von Hand kürzen) |
| `fristen.md` | Zentrales **Fristen- & Pendenzen-Register** (eine Zeile pro Frist/Pendenz, mit Datum/Quelle/Prio/Status) | Agent `logbuch` |
| `README.md` | Diese Beschreibung | — |

## Prinzip

- Der Skill `logbuch` und der Scheduled Task `logbuch-radar` halten beide Dateien aktuell.
- **Quellen**, die der Radar abklopft: Kalender (Outlook/Google), `mahnwesen`/`zahlungsabgleich`
  (Zahlungsfristen, Verzug), `auflagebereinigung` (Behörden-Fristen je Projekt), Mails (M365),
  Projekt-Pendenzen, offene Hub-Pendenzen (`sync-tasks/`), eigene zugesagte Termine.
- Der Radar **meldet proaktiv** drohende Fristen (Standard-Horizont 14 Tage) und schreibt
  täglich einen Logbuch-Eintrag.
- **Termine eintragen** in den Kalender ist eine bestätigte Aktion (kein blindes Schreiben),
  solange nicht ausdrücklich auf Auto-Eintrag gestellt.
- Das Register ist die persistente Gedächtnis-Basis; das Morgen-Briefing (`/morgen`) liest daraus.

Kanonisch auf dem NAS, via Git gesichert.
