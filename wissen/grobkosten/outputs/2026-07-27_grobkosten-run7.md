# Grobkosten-Trainingslauf Run 7 (27.07.2026, Station Mac Mini)

## Kollisionscheck

`ps aux | grep grobkosten` zeigte einen Treffer (PID 3919, `claude -p …`). PPID-Abgleich
(`$$`/`$PPID` der eigenen Shell) bestätigte: das ist die eigene Parent-Instanz dieses Laufs,
keine echte Zweitinstanz. Fortgefahren gemäss Rule 260724.

## Ausgangslage

Run 6 (gleicher Tag, vorheriger Lauf) hatte drei Kandidaten identifiziert, aber aus
Kapazitätsgründen nicht extrahiert:
1. Pre-Check-Tool 2305 Wädenswil (`IMMO - 03 KNOW-HOW`, Excel)
2. 2304 Waedenswil Residualwert-Tool (`AR - 03 Studien`, CHF/m³-Kennwert 1'566 vermutet)
3. Langnau Giebelweg 12 (`IMMO - 01 Projekte`, Kosten nur als Annahme vermerkt)

Dieser Lauf hat alle drei vertieft — kein neuer Projektordner gesichtet.

## Vorgehen

Da die Kandidaten 1+2 Excel-Dateien (`.xlsx`) sind und keine Python-Bibliothek für den
Xlsx-Zugriff vorinstalliert war, wurde eine lokale, temporäre venv angelegt
(`/tmp/venv-xlsx-grobkosten`, `pip install openpyxl`) — read-only genutzt, nach Abschluss
des Laufs wieder entfernt. Keine Aenderung an bestehenden Python-Umgebungen.

## Befunde

### 1. Pre-Check-Tool 2305 Wädenswil — extrahiert, NICHT promoviert

GV oi 11'724.48 m³, Baukosten-Feld mit interner Beschriftungs-Inkonsistenz: derselbe Faktor
(1.13) heisst im Eingabefeld «Faktor BKP 2 zu BKP 1-5», im Ausgabefeld (zwei Zeilen darunter,
gleiche Zeile der Rechnung) «Total BKP 1-9». Das ist der bisher direkteste Beleg für die in
Run 6 aufgeworfene Frage 1 — sie wird damit NICHT gelöst, aber konkret verortet: die
Inkonsistenz liegt im JANS-eigenen Tool selbst, nicht in einer Fehlübertragung zwischen
Dokumenten. Eine Auflösung braucht Rücksprache mit Raphael Jans (Tool-Ersteller) — nicht
autonom lösbar. Kennwert (1'380–1'546 CHF/m³, je nach Risikoanteil) bewusst NICHT in
`wiki/kennwerte.md` aufgenommen (Analogie zu Wald Haselstudstrasse).

Details: `raw/2305-waedenswil-precheck.md`.

### 2. Zweite Tool-Instanz (2304 Waedenswil) — geprüft, nicht verwertbar

Eine weitere Kopie desselben Tools unter `AR - 03 Studien/2304 Waedenswil/…` enthält
abweichende Zahlen (GV oi 9'080.064 m³, Total BKP 1-9 12'210'000–13'060'000 CHF) bei leeren
Projektnummer-/-name-Feldern. Nicht sicher demselben Projektstand zuordenbar — keine
Übernahme ohne verifizierte Provenienz (Rule `identifikatoren-verifizieren`).

### 3. Langnau Giebelweg 12 — bestätigt nicht verwertbar

Das Bewertungsdokument (`260603_Bewertung_Giebelweg12_Langnau.md`) weist Erstellungskosten
«≈ CHF 1.9 Mio inkl. Abbruch» explizit als Annahme innerhalb einer Residualwert-/
Entwicklungsszenario-Rechnung aus — keine eigene, BKP-gegliederte Kostenschätzung. GV 1'152 m³
ist zudem das baurechtlich zulässige (BMZ-gedeckelte) Volumen, nicht das Bestandes-Ist.

## Ergebnis

- 1 neuer Roh-Beleg (`raw/2305-waedenswil-precheck.md`), bewusst nicht promoviert.
- 2 Kandidaten abschliessend geschlossen (nicht verwertbar).
- Kein neuer Kennwert in `wiki/kennwerte.md`.
- `QUESTIONS.md` Frage 1 (BKP-1-9-vs-1-5) bleibt offen, jetzt aber mit dem direktesten
  bisherigen Beleg unterlegt und als "nicht autonom lösbar, braucht Rücksprache Raphael"
  markiert.

## Register nachgeführt

`training/quellen-inventar.md` (Run-7-Abschnitt), `wiki/QUESTIONS.md`, `wiki/kennwerte.md`
(Provenienz + Frontmatter-Source), `wiki/INDEX.md`, `raw/_INGESTED.md`, `CHANGELOG.md`.

## Vorschlag für den nächsten Lauf

Alle drei Run-6-Kandidaten sind jetzt abgearbeitet. Aus Run 6 bleibt noch ein unbewerteter
Baustein offen: `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` (Zürcher
Index der Wohnbaukosten 1939-2004, CHF/m³-Bandbreiten nach Bauklasse I-VI) als möglicher
Baustein für die in `training/PROGRAMM.md` Stufe 4 geforderte Teuerungs-Normalisierung — noch
nicht auf Verkettbarkeit mit dem BFS-Baupreisindex (ab 2004) geprüft. Ansonsten: ohne neue
Quelle oder Ereignis-Trigger (neuer Kostenstand aus `kostenkontrolle`) ist das bekannte
Quellenfeld (NAS-Altarchiv, `AR - 01`, `AR - 07`, `IMMO - 01/02/03/05/06`, zweite
SharePoint-Bibliothek) jetzt vollständig gesichtet — ein Run 8 sollte entweder Stufe 4
angehen oder auf einen Ereignis-Trigger warten, statt erneut nach neuen Projektordnern zu
suchen.
