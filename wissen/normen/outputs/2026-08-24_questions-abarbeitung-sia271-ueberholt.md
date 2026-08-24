# QUESTIONS-Abarbeitung, 24.08.2026 — SIA 271 seit 2021 überholt

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established`-Destillate zitierfähig. CHANGELOG-Kopf und Report des
letzten Laufs (sechste unabhängige Sättigungsverifikation SIA-Sweep, ~06:20 Uhr) zuerst gelesen.

## Ausgangslage

Der SIA-Sweep des `training/norm-inventar.md` hat sechsfach unabhängig bestätigt: 0 offene
Inventarzeilen, 59 Register-Zeilen «Kein Volltext im Haus» — ausschliesslich Bring-Schuld
Raphael. Die verbleibenden 33 `[ ]`-Positionen in `wiki/QUESTIONS.md` sind fast vollständig
entweder Bring-Schulden (Normenkauf), Strukturentscheide Raphael oder bereits geschlossen und
nur nicht als `[x]` markiert.

## Befund

Bei der Prüfung der Bring-Schuld «Wegleitung zu SIA 271 liegt nur als 2-Seiten-Auszug vor» (Run
16, 260719) wurde beim Web-Recherche-Umweg über das Bestellformular der aktuellen Wegleitung
(gebäudehülle.swiss) sichtbar, dass diese sich auf **«Norm SIA 271:2021»** bezieht — Anlass, den
bislang unbelegten Registerstatus der Basisnorm zu prüfen.

**Direkt bei shop.sia.ch verifiziert:** SIA 271:2021 «Abdichtungen von Hochbauten», gültig ab
01.11.2021 (Revision 2 vom 27.02.2024), ist die aktuelle Ausgabe. **Die im Haus liegende Ausgabe
2007 ist seit 31.10.2021 archiviert.** `wiki/REGISTER.md` führte SIA 271:2007 an zwei Stellen
(Zeilen aus frühen 2013-Register-Vergleichs-Scans) mit «gilt» — korrekt bezogen auf 2013, aber
seither nie gegen den aktuellen SIA-Stand nachgeführt und damit heute irreführend.

## Nachgeführt

- `destillate/sia-271-2007.md` — Vorbehalt «überholt seit 2021» in «Offene Punkte» ergänzt,
  Status bleibt `established` für den 2007er-Inhalt, gilt aber nicht mehr als aktuelle Norm.
- `destillate/sia-271-wegleitung.md` — Bestellangaben zur 2022er-Wegleitung ergänzt; Norm-Bezug
  des im Haus liegenden 2-Seiten-Fragments (2007er oder 2021er Wegleitung?) bleibt ungeklärt,
  da kein Ausgabejahr im Scan.
- `wiki/QUESTIONS.md` — Nachtrag im Run-16-Abschnitt.
- `wiki/REGISTER.md` — zwei Zeilen SIA 271 mit ⚠-Vermerk und Fundstelle ergänzt.

Alle Änderungen additiv (Ursprungswortlaut erhalten), `git diff --numstat` nach jedem
Schreibvorgang geprüft.

## Praxisfolge

Jede JANS-Verwendung von SIA 271 sollte ab sofort den Vorbehalt «Ausgabe 2007, seit 01.11.2021
durch SIA 271:2021 ersetzt» tragen, bis der aktuelle Volltext im Haus ist. Volltext SIA 271:2021
bleibt Bring-Schuld Raphael (shop.sia.ch).

## Sonstige geprüfte Punkte ohne Nacharbeit

- **SN 641 400** (VSS, ZH-Parkplatzberechnung): vierter dokumentierter Web-Anlauf ohne Treffer
  bereits vorhanden — kein fünfter Anlauf gefahren, Web-Weg ausgeschöpft, nächster Schritt ist
  eine ausgehende Anfrage beim VSS-Kundendienst (keine unbeaufsichtigte Recherche mehr).
- SIA 491, SN EN 12193, SIA 2014 (CAD-Layerorganisation), DIN EN 1627 Vollnorm, SIA 118:2013,
  VKF-Merkblatt 2003-15: bestätigt kostenpflichtig, keine freien Quellen gefunden — Bring-Schuld
  Raphael, unverändert.
- Cross-Contamination-Commit (260724) und doppelte Run-Nummer 21: stale Betriebs-/Prozessnotizen
  ohne Norm-Fundstellenbezug, keine QUESTIONS-Sachfragen im Sinne dieses Auftrags.
