# KB architektur-fachwissen

Angelegt 23.08.2026 im Vollgas-Lauf (Auftrag Raphael). Ziel-KB der Korpora 3
(`buero-referenzen`, `/Volumes/daten/04_Buero/10_Referenzenbibliothek`, 32 Sektionen) und
4 (`archiv-fachwissen`, `/Volumes/daten/02_Architektur_Archiv`, 23 Sektionen) aus
`skills/wissens-destillat/KORPUS-QUEUE.md`. Beide standen dort seit dem 28.07.2026 auf
«wartet».

## Schreibregeln
- `raw/` nur lesen, nie editieren. `raw/inventar/<sektion>.md` traegt je Sektion **eine**
  Inventardatei; jede Sektion schreibt ausschliesslich ihre eigene Datei (kollisionsfrei
  bei paralleler Bearbeitung).
- `wiki/` ist Claudes Domaene: kompilierte Artikel, `INDEX.md`, `QUESTIONS.md`.
- `outputs/` Reports `JJJJ-MM-TT_titel.md`.
- Jede nicht-triviale Aussage belegt (Datei, Seite/Abschnitt). Nichts raten.
- Schweizer Hochdeutsch, echte Umlaute, ss statt ß.

## Triage-Stufen
`P1` unmittelbar bueroverwertbar · `P2` nuetzlich, spaeter destillieren ·
`P3` Archivwert, nicht destillieren · `X` verwerfen (veraltet, privat, Dublette).

## Grenzen dieser KB (gesetzt 23.08.2026 nach dem Erst-Sweep)

- **Nie erfassen, nicht einmal als Inventar:** Verträge, Bewerbungen und Personaldossiers,
  Adress- und Kontaktsammlungen, Lohn- und Honorardaten, Privatunterlagen. Die Sektionen
  `23_Vertraege` (vom Klassifikator zu Recht gestoppt), `16_Portfolios` (Bewerbungsmappen,
  Inventardatei nachträglich entfernt) und `01_Adressen` sind **dauerhaft ausgeschlossen**.
  Begründung und Fallchronik: Rule `auto-verbesserungen.md`, Eintrag 260823.
- **Projektdaten Dritter** (z. B. die Kostenermittlung der Schulanlage Leutschenbach in
  `18_Projektkostenplanung`: Architekt, Bauherrschaft, Beträge über alle Kostenstufen) dürfen
  **inventarisiert und methodisch ausgewertet** werden — der Kostenermittlungskreislauf ist das
  Lernobjekt. Sie werden aber **nie wörtlich reproduziert** und wandern **nie in ein ausgehendes
  Erzeugnis**: kein Beleg-Zitat mit Gegenpartei und Betrag in Offerte, Bericht oder Mail. In
  Wiki-Artikeln erscheinen sie als **Kennwert mit Quellenverweis**, nicht als Dokumentkopie.
- Das Repo ist privat, aber automatisch gepusht (`nas-selfcommit`, alle 15 Minuten). Was hier
  geschrieben wird, ist binnen einer Viertelstunde versioniert und ausserhalb der Station.
