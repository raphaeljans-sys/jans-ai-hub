# SIA-Sweep, sechzehnte Fortsetzung — Korrigenda C1/C2 zu SIA 2024 vollständig gelesen, Kategorie-8-Werte identisch

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 12, davor SIA-Sweep
  fünfzehnte Fortsetzung) und `outputs/2026-08-23_sia-sweep-fuenfzehnte-fortsetzung.md`.

## Ausgangslage und Kollisionsprüfung

`ps aux` zu Laufbeginn geprüft: der eigene Prozess läuft über `scripts/claude-run.sh --name
mschub81` (PID 13981/13980/13973). Parallel lief `mschub79` (QUESTIONS-Abarbeitung, PID 11101)
an derselben KB — additive Arbeit an anderen Abschnitten, kein Konkurrent (bestätigt beim
Schreiben, siehe Verifikation unten). Ein dritter, unabhängiger `claude`-Prozess (PID 34776,
Desktop-App) lief ohne erkennbaren Bezug zu dieser KB.

Die fünfzehnte Fortsetzung hatte den Marker-Abgleich von Abschnitt A (266 SIA-Zeilen gegen acht
Direktprüfungs-Marker) auf **0 offene Zeilen** gebracht und explizit festgehalten: aus dieser
Methode ist kein weiterer Sweep-Kandidat mehr bekannt. Eigene, unabhängige Gegenprüfung per
Python-Skript vor Beginn dieses Laufs bestätigt das (0 Zeilen ohne Marker in den Zeilen
141-431). Statt die drei mehrfach erschöpften Zweige (N-SIASWEEP-2/3, Blindzone,
Register-Vervollständigung) ein weiteres Mal ohne neuen Ansatz zu versuchen, wurde der von der
fünfzehnten Fortsetzung selbst offen gelassene, noch nicht erschöpfte Punkt weiterverfolgt: die
neu entdeckte, aber unaufgelöste **zweite Korrigenda C2** zum Merkblatt SIA 2024:2021.

## Methode und Durchbruch

WebFetch der bekannten Hauptproduktseite (`shop.sia.ch/normenwerk/architekt/sia%202024/
d/2021/D/Product`) bestätigte nur die bereits bekannten Metadaten der Korrigenda-Linktexte
(Dateigrössen, keine Daten). WebSearch fand die eigene deutsche Produktseite für die Korrigenda
selbst (`shop.sia.ch/normenwerk/architekt/sia%202024-c2/d/D/Product`), analog zur bereits
bekannten C1-Produktseite. Direkter WebFetch beider Seiten ergab: **Valid From 01.06.2024 (C1)
bzw. 01.06.2025 (C2)**, beide als **kostenlose SRD-Downloads (0.00 CHF)** — keine
Bezahlschranke wie beim Basistext.

Das HTML beider Produktseiten wurde per `curl -A "Mozilla/5.0"` geladen und nach dem
eingebetteten `.../D/DownloadAnhang`-UUID-Link durchsucht (dieselbe Technik, mit der die achte
Fortsetzung bereits die SIA-405-Leseprobe gefunden hatte). Beide PDFs (je 27 Seiten, ~3-4.6 MB)
vollständig heruntergeladen und mit `/opt/homebrew/bin/pdftotext -layout` gelesen — auf dieser
Station ist `pdftotext` nicht im `PATH`, nur unter dem vollen Homebrew-Pfad erreichbar.

## Inhaltliche Befunde

**SIA 2024-C1:2024** (SNR 592024:2021-C1:2024 de): von der SIA-Kommission für
Gebäudetechnik- und Energienormen am **14. Mai 2024** genehmigt, **gültig ab 1. Juni 2024**
(Titelblatt-Wortlaut, primärquellenfest gelesen — nicht mehr nur über den
`energie`-Grundlagenbericht bekannt). Ändert 11 Definitionsziffern (0.2.1.1, 0.2.4, 1.1.2.14,
1.1.4.6, 1.1.4.10, 1.1.4.11, 1.1.5.6, 1.1.6.1, 1.1.6.2, 1.1.6.3, 1.2) und ersetzt vollständig
die Tabellen 4-9 (Energie-/Leistungsbedarf pro Raumnutzung), das Bürobeispiel Ziff. 3.2 und
Anhang A.

**SIA 2024-C2:2025** (SNR 592024:2021-C2:2025 de): von derselben Kommission am **6. Mai 2025**
genehmigt, **gültig ab 1. Juni 2025**. Ändert 3 Definitionsziffern (1.1.2.12 neu, 1.1.6.1 und
1.1.6.3 als erneute Nachkorrektur derselben Formeln, die schon C1 angefasst hatte) und ersetzt
erneut vollständig dieselben Tabellen 4-9 (nicht nur die geänderten Zeilen).

**Zentraler Sachbefund, der die eigentliche Bring-Schuld auflöst.** Direkter Zeilenvergleich
der Kategorie-8-Zeilen (8.01 Bettenzimmer, 8.02 Stationszimmer, 8.03 Behandlungsraum) in allen
sechs Tabellen (4, 5, 6, 7, 8, 9) zwischen den beiden vollständigen Textextraktionen:
**zeichenidentisch** in C1 und C2. Die von der KB `energie` zitierten
Kat.-VIII-Elektrizitätskennzahlen (dort Ziff. 4.2.1/4.2.3 im eigenen Grundlagenbericht-Numbering,
VIII.1=36/VIII.2≈30 kWh/m²EBF·a, geschlossen in `energie` Run 80) sind von C2 gegenüber
C1:2024 damit **nicht** betroffen. Nicht geklärt bleibt, ob C1 gegenüber dem Basistext 2021
selbst (weiterhin nicht im Haus) echte Wertänderungen vornahm — nur der Schritt C1→C2 ist
belegt, nicht 2021→C1.

## Neues Destillat und Nachführungen

- `destillate/sia-2024-korrigenda-c1-c2.md` (neu, status `established` — Modell D, beide
  Volltexte vollständig direkt gelesen, kein Kauf nötig, keine separate Refuter-Runde da die
  zentrale Aussage durch direkten Zeilenvergleich der Primärquellen selbstbelegt ist).
- `destillate/sia-2024-2021.md`: die bisherige offene Bring-Schuld («Korrigenda C2 ungeklärt»)
  durch einen Verweis auf das neue Destillat ersetzt, `links`-Frontmatter ergänzt, «Offene
  Punkte» aktualisiert.
- `wiki/REGISTER.md`, Zeile SIA 2024: Abschluss-Absatz ergänzt (reiner Zeilenersatz).
- `destillate/INDEX.md`: neue Zeile für das neue Destillat.
- `wiki/QUESTIONS.md`: additiver Nachtrag beim bestehenden Punkt «Nachfolgeausgaben nicht
  ermittelbar» (SIA 2024), Ursprungswortlaut der fünfzehnten Fortsetzung unangetastet.
- **Cross-KB-Bringschuld an `energie` im selben Lauf ausgeführt** (Rule `wissens-bibliothekar`):
  additiver Nachtrag in `wissen/energie/wiki/QUESTIONS.md` bei Run 80 («SIA-2024-Normstand für
  die Healthcare-EBF-Schwelle (F100)»), mit Verweis auf das neue `normen`-Destillat — damit
  wandert der Befund selbst dorthin, wo er künftig gebraucht wird, statt nur hier zu stehen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

- `destillate/sia-2024-korrigenda-c1-c2.md`: `??` (echte Neuanlage)
- `destillate/sia-2024-2021.md`: 13/12 (zwei gezielte Absatzersetzungen plus ein
  Frontmatter-Link, keine fremden Zeilen betroffen)
- `wiki/REGISTER.md`: 1/1 (reiner Zeilenersatz, ausschliesslich die eigene SIA-2024-Zeile)
- `destillate/INDEX.md`: 1/0 (reine Neuzeile)
- `wiki/QUESTIONS.md`: 66/0 — Diff einzeln gegengelesen: 45 Zeilen stammen vom parallel
  laufenden Lauf `mschub79` (additiver Nachtrag bei einem anderen Abschnitt, IOTH/VKF-Index),
  21 Zeilen sind der eigene Nachtrag bei SIA 2024. Beide Blöcke additiv, korrekt platziert,
  keine Kollision, keine gelöschte Zeile.
- `wissen/energie/wiki/QUESTIONS.md`: 9/0 (rein additiv)
- `CHANGELOG.md`: eigener Eintrag additiv vor dem zwischenzeitlich vom Parallel-Lauf
  eingefügten Eintrag «QUESTIONS-Abarbeitung 13» platziert — beide Einträge sauber gestapelt,
  keine Überschreibung.

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Der Basistext SIA 2024:2021 selbst bleibt kostenpflichtig (CHF 130.–, inkl. Anhang A/F) und
  nicht im Haus — Beschaffung weiterhin Raphaels Entscheid.
- Ob C1 gegenüber der Erstausgabe 2021 echte Wertänderungen an Kategorie 8 vornahm, ist ohne
  den Basistext nicht feststellbar.
- Die Formelkorrektur in C2 Ziff. 1.1.6.1 (gestrichener Schlusszusatz «ohne Berücksichtigung
  der Gleichzeitigkeit») ist nur textlich geprüft; griechische Indizes/Subskripte im
  `pdftotext`-Textlayer teils verstümmelt — bei Bedarf am gerenderten Original nachprüfen.
- Die drei mehrfach erschöpften Sweep-Zweige (N-SIASWEEP-2/3, Blindzone,
  Register-Vervollständigung) erneut nicht angegangen; kein neuer Ansatzpunkt entstanden.
- **Aus der Marker-Abgleich-Methode (Abschnitt A) bleibt weiterhin kein neuer, selbständig
  lösbarer SIA-Sweep-Kandidat bekannt.** Für eine siebzehnte Fortsetzung ohne neue, von aussen
  hinzukommende Bring-Schuld als Ausgangspunkt bräuchte es eine andere Methode als in den
  letzten sechzehn Läufen desselben Tages — Empfehlung: nicht erneut denselben Marker-Scan
  fahren, sondern entweder auf eine neue Bring-Schuld aus einem Fach-Skill warten oder den
  Sweep-Auftrag auf eine andere Norm-Familie (VKF/DIN/VSS/RAL) ausweiten, falls gewünscht.
