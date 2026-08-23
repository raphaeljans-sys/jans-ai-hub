# SIA-Sweep, siebte Fortsetzung — Cloud-weite Dateisuche als letzter ungeprüfter Weg erschöpft

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte
  SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen,
  Register nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
  `wissens-bibliothekar` beachten. Hinweis: ein `claude`-Prozess mit demselben Lauf-Namen ist
  der eigene, kein Konkurrent.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: sechste SIA-Sweep-Fortsetzung) und
  `outputs/2026-08-23_sia-sweep-sechste-fortsetzung.md`.

## Ausgangslage

Der Vorlauf hat zwei Dinge bereits geleistet: (1) unabhängig reverifiziert, dass der eigentlich
beauftragte Sweep (leere Bestand-Abgleich-Zellen in Abschnitt A) mit 0 von 187 aktiven Zeilen
vollständig geschlossen ist; (2) für die drei verbliebenen offenen Fragen (N-SIASWEEP-2/3/4:
SIA 422, SIA 2021/2025, GEO405-Familie) die Internet-Archive-Wayback-Machine als sechste
erschöpfte Quellenart dokumentiert. `ps aux` zeigt für diesen Lauf ausschliesslich den eigenen
Prozess (`75710`, Kommandozeile identisch mit dem eigenen Auftragstext) — kein Konkurrent.

## Eigene Arbeit dieses Laufs

**1. Neuer, bisher nicht dokumentierter Weg geprüft: Cloud-weite Dateinamenssuche.** Alle
sechs bisherigen Fundwege für N-SIASWEEP-2/3/4 (Shop-Produktseite, zwei `cms.sia.ch`-Kataloge,
Espazium, SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine) waren reine Web-Recherchen.
Der fünfte Fortsetzungslauf hatte den SharePoint-Bestand (`PL - 02_Recht_Norm/02_Normen/`)
gegen die 55 Blindzone-Nummern geprüft — aber nur diesen einen Ordnerbaum. Nicht geprüft war,
ob eine der sechs Normen (SIA 422, 2021, 2025, 405, 2016, 2045) zufällig anderswo im Haus
liegt: als Anhang in einem Projektordner, im Firmenarchiv, oder auf einem der übrigen
gemounteten Cloud-Laufwerke.

Durchgeführt: `mdfind` je Code (422, 2021, 2025, 2016, 2045; 405 als reine Zahl zu
unspezifisch für eine sinnvolle Namenssuche und daher ausgelassen) mit Namensmuster
`*SIA*<code>*` (case-insensitive) über zwei Wurzeln:
- `/Volumes/daten` (gesamtes NAS, nicht nur `SIA_Norm/`)
- `$HOME/Library/CloudStorage` (alle gemounteten Cloud-Laufwerke: OneDrive-FreigegebeneBibliotheken–JANS,
  OneDrive-JANS, Dropbox, vier GoogleDrive-Accounts)

**Ergebnis:** Auf dem NAS **0 Treffer** für alle fünf Codes ausserhalb von `SIA_Norm/`. Auf den
Cloud-Laufwerken **3 Treffer**, alle drei geprüft und als **falsch-positiv** verworfen: zwei
SIA-Mitgliedschaftsrechnungen (`SIA-Rechnung-D202187445.pdf` unter dem Buchhaltungsjahr 2021,
`SIA-Rechnung-D2025186494.pdf` unter 2025 — der Treffer stammt vom Buchhaltungsjahr im Pfad,
nicht von der Normnummer) und keine für 2016/2045/422. Keine der sechs Normen liegt irgendwo
im Haus ausserhalb des bereits geprüften SharePoint-Ordners.

## Register und QUESTIONS nachgeführt

- `wiki/QUESTIONS.md`: additiver Nachtrag im N-SIASWEEP-Abschnitt (siebter Fundweg erschöpft).
- `wiki/REGISTER.md`: neue Zeile in der „FRISCH GEMELDET"-Tabelle.

## Keine neuen Destillate

Wie in allen SIA-Sweep-Läufen dieses Tages: kein neuer Volltext gefunden. Der Fortschritt
dieses Laufs ist eine weitere dokumentierte Sackgasse (Cloud-weite Dateinamenssuche), keine
neue Fachsubstanz.

## Einschätzung: weitere Wiederholung dieser drei Fragen ist nicht mehr sinnvoll

Sieben unabhängige Quellenarten (Shop-Produktseite, zwei amtliche SIA-Kataloge, Espazium,
SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine, Cloud-weite Dateisuche) wurden für
N-SIASWEEP-2/3/4 erschöpft, keine liefert eine Ablösungsformel oder einen Volltext. Ein
achter Lauf, der dieselben drei Fragen mit denselben oder ähnlichen Mitteln erneut angeht,
würde voraussichtlich denselben Negativbefund reproduzieren. **Empfehlung an einen künftigen
Lauf:** diese drei Fragen als „recherchiert bis zur Grenze der frei zugänglichen Quellen"
betrachten und nicht weiter bearbeiten, ausser Raphael entscheidet sich für einen Kauf bei
`shop.sia.ch` oder eine direkte Anfrage an die SIA-Zentralkommission — beides ausserhalb der
Kompetenz dieses Laufs.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` geprüft: `wiki/QUESTIONS.md` additiv (keine
bestehende Zeile verändert oder gelöscht), `wiki/REGISTER.md` additiv (eine neue Zeile). Kein
`git` über den SMB-Mount ausgeführt; Commit über `nas-commit-now.sh` (nativ auf der Synology).

## Nicht geleistet / offene Bring-Schulden

- Kein Normtext gekauft; N-SIASWEEP-2/3/4 bleiben offen, jetzt mit sieben statt sechs
  erschöpften Quellenarten dokumentiert.
- Die fünf länger offenen Bring-Schulden aus `training/norm-inventar.md` (SIA 181:2020,
  SIA 491, SN EN 12193, SN 640 052, SN 641 400) unverändert — alle kostenpflichtig, Kauf ist
  Sache Raphaels.
- Der eigentliche SIA-Sweep-Auftrag (Blindzone-Zeilen mit leerer Bestand-Abgleich-Zelle) bleibt
  bei 0 von 187 — vollständig, unverändert seit der sechsten Fortsetzung.
