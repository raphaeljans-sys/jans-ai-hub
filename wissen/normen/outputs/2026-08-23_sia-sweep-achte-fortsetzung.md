# SIA-Sweep, achte Fortsetzung — N-SIASWEEP-4 geschlossen (Primärquelle), SharePoint unverändert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte
  SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen,
  Register nachführen, Destillate anlegen. Zusätzlich zwei konkrete neue Wege vorgegeben:
  (1) SNV-Webshop `connect.snv.ch` für N-SIASWEEP-2/3/4 (SIA 422, SIA 2021, SIA 2025, GEO405-
  Familie), (2) frischer SharePoint-Abgleich gegen den 140-Dateien-Stand der fünften
  Fortsetzung. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
  beachten.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: sechster QUESTIONS-Lauf), die siebte
  SIA-Sweep-Fortsetzung (`outputs/2026-08-23_sia-sweep-siebte-fortsetzung.md`), der N-SIASWEEP-
  Abschnitt in `wiki/QUESTIONS.md`, und die relevanten Register-Zeilen (SIA 422, 2021, 2025,
  405, 2015, 2016, 2045).

## Ausgangslage

Der eigentliche Sweep-Auftrag (leere Bestand-Abgleich-Zellen in Abschnitt A) ist seit dem
sechsten/siebten Fortsetzungslauf bei 0 von 187 aktiven Zeilen — vollständig, zweifach
reverifiziert. Nicht neu gescannt. Drei Fragen (N-SIASWEEP-2/3/4) waren nach sieben
erschöpften Web-/Dateisystem-Quellenarten unverändert offen.

## Teil 1 — SNV-Webshop (`connect.snv.ch`) als achte Quellenart

**N-SIASWEEP-4 (GEO405-Familie) GESCHLOSSEN, mit echter Primärquelle.** Die Produktseite
`shop.sia.ch/normenwerk/ingenieur/405_2025_d/D/Product` verlinkt eine kostenlose Leseprobe
(PDF, 76 KB, `.../D/DownloadAnhang`), per `curl -L` geladen und mit `pdftotext -layout`
gelesen. Die Leseprobe enthält Titelblatt, Inhaltsverzeichnis, das vollständige Vorwort und
den Abschnitt „Genehmigung und Gültigkeit" — Originalwortlaut:

> «Die Zentralkommission für Informationsmanagement des SIA hat die vorliegende Norm SIA 405
> am 25. Juni 2025 genehmigt. Sie ist gültig ab 1. August 2025. Sie ersetzt die Norm SIA 405
> Geodaten zu Ver- und Entsorgungsleitungen, sowie die Merkblätter SIA 2015 Objekt- und
> Darstellungskataloge zu Ver- und Entsorgungsleitungen, SIA 2016 Datenmodelle zu Ver- und
> Entsorgungsleitungen und SIA 2045 Geodienste, alle Ausgabe 2012.»

Damit ist die seit der zweiten Fortsetzung nur über Sekundärquellen (sogi.ch, SIA-Webinar-
Vorwissen) vermutete GEO405-Konsolidierung **explizit primärquellenbelegt**, mit Datum und
allen vier Vorgängern benannt. Unabhängig zweitbestätigt über `connect.snv.ch/de/
sn-532405-2025` (Status «Aktuell», gültig ab 01.08.2025, «Ersetzt» dieselben vier Vorgänger).
Neues Fachdetail aus dem Vorwort: die Merkblatt-Inhalte wurden in die revidierte Norm SIA 405
oder die **neue Wegleitung SIA 4008** überführt — SIA 4008 ist bislang nicht in dieser KB
geführt (neue Bring-Schuld, nicht weiter recherchiert).

**N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2021/2025) bleiben offen.** Direktabruf von
`connect.snv.ch/de/sn-513422-2009`, `.../sia-2021-merkblatt-2002` und `.../
sia-2025-merkblatt-2012` bestätigt unabhängig exakt dieselben Metadaten wie `shop.sia.ch`
(archiviert, kein Nachfolger benannt) — keine neue Substanz. Einzige Randnotiz: SNV nennt für
SIA 2025:2012 „Valid From: 1 April 2012", das Register/`shop.sia.ch` nannten bisher
01.06.2012 — kleine, ungeklärte Datumsdifferenz ohne Einfluss auf die eigentliche Frage
(Nachfolger weiterhin nicht benannt). Der SNV-Webshop ist damit die achte geprüfte
Quellenart für diese beiden Fragen, weiterhin ohne Fortschritt.

## Teil 2 — SharePoint-Abgleich `SIA_Norm/`

Frischer Vollabgleich über `connectors/m365-graph.mjs` (Site PL, Drive `02_Recht_Norm`) gegen
den Stand der fünften Fortsetzung (23.08.2026, 140 Dateien in `alle/` + 16 in den sieben
norm-eigenen Unterordnern). **Ergebnis: unverändert.** `SIA_Norm/SIA_Normen/alle/` zeigt
exakt 140 Einträge (Namensliste per Python/JSON-Vergleich geprüft, keine neuen Namen); die
Unterordner SIA 102 (4), SIA 112 (3), SIA 118 (2), SIA 282 (1), SIA 380_1_2016 (1), SIA
385_1_Anlagen für Trinkwasser (2), SIA 416 (1) und Gesamtverzeichnis (2) zeigen ebenfalls
unveränderte Zahlen (16 Dateien total). `lastModifiedDateTime` der jüngsten Datei in `alle/`
ist 07.08.2026 (vor dem letzten Scan vom 23.08.2026); alle Unterordner-Dateien zeigen
18.03.2025. Kein neuer Volltext für SIA 380:2015, SIA 269/8:2017, SIA 4018:2023, SIA
4020:2026 oder eine der 25 in der vierten Fortsetzung genannten Nachfolgenormen — ehrlicher
Negativbefund, keine weitere Zeit auf Spekulation verwendet.

## Register und QUESTIONS nachgeführt

- `wiki/QUESTIONS.md`: Heading N-SIASWEEP-4 auf «GESCHLOSSEN 23.08.2026 (achte Fortsetzung)»
  gesetzt; zwei neue Nachtrag-Blockquotes am Ende des N-SIASWEEP-Abschnitts (Primärquellenfund
  + SharePoint-Negativbefund).
- `wiki/REGISTER.md`: drei neue Zeilen in der „FRISCH GEMELDET"-Tabelle (N-SIASWEEP-4
  geschlossen, SNV-Webshop für -2/-3 ohne Fortschritt, SharePoint unverändert); die sieben
  Zeilen SIA 405, 2015, 2016, 2045, 422, 2021, 2025 im systematischen Teil je um einen
  additiven Nachtrag ergänzt.
- `destillate/INDEX.md`: neue Zeile für `sia-405-2025-vorwort.md`.

## Neues Destillat

`destillate/sia-405-2025-vorwort.md` — **nur Frontmatter/Vorwort/Genehmigungstext** der neuen
SIA 405:2025, `established` für das Gelesene, mit ausdrücklichem Warnhinweis, dass die
materiellen Fachkapitel (0-7, Anhang A/B, 24 Seiten) nicht im Haus sind und separat
beschafft werden müssten. Enthält die vollständige Ersetzt-Klausel, die Vorwort-Begründung
(Merkblatt-Ablösung, Scope-Verengung auf Leitungskataster, LKMap-Konsolidierung 2D/3D) und
die Kommissionsliste als Beleg für die fachverbandliche Abstützung.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat -- wissen/normen/` geprüft:
`wiki/QUESTIONS.md` 49/1 (die eine entfernte Zeile ist die selbst editierte N-SIASWEEP-4-
Überschrift, durch eine erweiterte Fassung ersetzt, kein Inhaltsverlust), `wiki/REGISTER.md`
10/7 (die sieben entfernten Zeilen sind exakt die sieben eigenen Zeilen-Erweiterungen SIA
405/2015/2016/2045/422/2021/2025, Inhalt vollständig erhalten und ergänzt, per `git diff`
zeilenweise gegengeprüft), `destillate/INDEX.md` 1/0 rein additiv. Kein `git` über den
SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 405:2025 gekauft — nur die kostenlose Leseprobe (Frontmatter) gelesen;
  die materiellen Fachkapitel bleiben Bring-Schuld.
- SIA 4008 (neue Wegleitung, im Vorwort von SIA 405:2025 genannt) ist erstmals bekannt, aber
  weder Ausgabejahr noch Bezugsquelle noch Inhalt recherchiert.
- N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2021/2025) bleiben offen — jetzt mit acht statt
  sieben erschöpften Quellenarten dokumentiert; ohne Kauf oder direkte SIA-Anfrage ist kein
  weiterer Fortschritt zu erwarten.
- Der eigentliche SIA-Sweep-Auftrag (Blindzone-Zeilen) bleibt bei 0 von 187 offenen Zeilen —
  unverändert vollständig, in diesem Lauf nicht neu gescannt.
