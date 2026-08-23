# SIA-Sweep, achtundzwanzigste Fortsetzung — 23.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG und letzter Lauf-Report
zuerst gelesen, dort weitergemacht.

## Eigene Prüfung der Ausgangslage

Der letzte Lauf (27. Fortsetzung) hatte den engeren SIA-Blindzonen-Sweep für erschöpft
erklärt und als nächste Schritte entweder Raphaels Kaufentscheide zu den Bring-Schulden
oder eine Mandatsausweitung über SIA/VKF hinaus (Stations-Split, DIN/VSS/RAL bleibt
Mac Mini) genannt. Diesen Befund unabhängig nachgemessen, nicht blind übernommen (Rule
`auto-verbesserungen` 260729b):

1. `training/norm-inventar.md`: 0 offene `[ ]`-Zeilen (eigener `grep`, nicht nur zitiert).
2. `wiki/REGISTER.md`: alle 59 Zeilen mit «Kein Volltext im Haus» tragen bereits ein
   Produktdatenblatt mit gültig-ab/gültig-bis, samt Beleg (`shop.sia.ch`, abgerufen
   23.08.2026). Nur zwei Zeilen (SIA 381/3, SIA 2001) sind inhaltlich anders gelöst,
   ebenfalls dokumentiert.
3. `wiki/QUESTIONS.md`, Abschnitt N-SIASWEEP-2/-3 (SIA 422, SIA 2025): acht unabhängige
   Quellenarten bereits erschöpft (Shop-Produktseite, zwei amtliche SIA-Kataloge, Espazium,
   SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine, Cloud-weite Dateisuche,
   SNV-Webshop), mit expliziter Empfehlung im Dokument, diese zwei Fragen nicht erneut mit
   denselben Mitteln zu bearbeiten.
4. VKF-Teil der Blindzone: bereits in Run 58 (Fassungsmatrix gegen den Publikationsindex)
   abgeschlossen, keine offene Zeile gefunden.

**Befund: die eigentliche SIA/VKF-Blindzone ist tatsächlich erschöpft.** Statt eine der
beiden vom Vorlauf genannten Sackgassen zu wiederholen, wurde nach einem dritten, noch
nicht bearbeiteten Punkt innerhalb des bestehenden Mandats gesucht.

## Neuer Fund: zwei bfu-Publikationen mit offenem Aktualitäts-Vorbehalt

`wiki/REGISTER.md`, Abschnitt D (Nicht-SIA-Familien), führte bei zwei bfu-Fachdokumentationen
seit Run 38 (30.07.2026) einen unerledigten Vorbehalt: «Glas in der Architektur» (2.006.01,
Bestand 10.2010) und «Treppen» (2.007.01, Bestand 11.2009) — «älteste der Reihe, bei
Verwendung auf eine neuere bfu-Fassung prüfen (nicht im Haus)». Dieser Prüfauftrag war nie
eingelöst worden. Er passt zur Auftragsformel «Produktdatenblätter mit gültig-ab/gültig-bis
beschaffen», nur auf eine bfu- statt SIA-Publikation angewandt, und bfu-Dokumentationen sind
grundsätzlich kostenlos — also ohne Bring-Schuld-Problem lösbar.

**Recherche:** Web-Suche fand für beide Titel Hinweise auf eine 2020er-Neufassung
(«Beatrix Jeannottat, Bern 2020»). Statt Drittseiten-Kopien zu verwenden, die offizielle
bfu-API direkt geprüft: `bfu.ch/api/publications/bfu_2.007.01_treppen.pdf` und die analoge
URL für 2.006.01. Beide PDFs per `curl -L` heruntergeladen (2,2 MB / 2,6 MB), `pdfinfo`
bestätigt CreationDate 04.12.2020, `pdftotext -layout` lieferte sauberen Text (kein Scan).
Titelblatt und Impressum beider Dokumente bestätigen wörtlich: Art.-Nr. 2.007.01 – 12.2020
bzw. 2.006.01 – 12.2020, 1. Auflage 2020, © BFU 2020, kostenlos auf `bestellen.bfu.ch`.

## Materieller Befund, nicht nur Formalie

Beide Ausgaben sind nicht blosse Neudrucke, sondern vollständig umstrukturiert (24 statt
8 Seiten) — und enthalten praxisrelevante Änderungen gegenüber den Vorfassungen:

- **Treppen:** Handlauf-Höhe 85–90 cm (statt 80–90 cm), Durchmesser 3,5–4,5 cm (statt
  4–5 cm); neuer, konkret bezifferter Absturzhöhen-Schwellenwert für Geländerpflicht
  (ab 1,00 m innen, ab 40 cm Prüfschwelle/1,00 m Randaufbordung aussen) — löst eine in der
  2009er-Fassung explizit offen gelassene Frage.
- **Glas in der Architektur:** die SIA-358-Vorgabe wird jetzt wörtlich mit Zahl zitiert
  (Floatglas ab 1,0 m Höhe zulässig, darunter Sicherheitsglas-Pflicht) — löst ebenfalls eine
  in der 2010er-Fassung explizit offen gelassene Frage. Markierungen auf Glaselementen neu
  bemasst (50 % Transparenz erhalten, Markierungsabstand max. 10 cm).

Beide Dokumente vollständig gelesen (nicht nur Impressum/Metadaten) und destilliert:
`destillate/bfu-treppen-2020.md`, `destillate/bfu-glas-in-der-architektur-2020.md`.
Status `speculative` — anders als die 2026-07-30 destillierten Vorfassungen fand in diesem
Lauf keine unabhängige Refuter-Runde statt; bei Verwendung in einem Deliverable die
Zahlenwerte gegen das Original gegenprüfen.

**Alte Destillate nicht gelöscht** (kein destruktiver Eingriff ohne Rückfrage, Rule
`wissens-bibliothekar`): `bfu-treppen.md` und `bfu-glas-in-der-architektur.md` erhielten
einen Überholt-Vermerk mit Querverweis auf die neue Ausgabe und bleiben als historischer
Stand/für Altprojekte lesbar.

## Nachgeführt

- `destillate/INDEX.md`: zwei neue Zeilen, zwei bestehende Zeilen mit Überholt-Vermerk.
- `wiki/REGISTER.md`: bfu-Tabellenzeilen (Bestand jetzt «beide», Bemerkung mit Fundstelle)
  und der anschliessende Zitier-Vorbehalt-Absatz auf «geschlossen» gesetzt.
- `CHANGELOG.md`: Eintrag mit vollem Befund.

## Offen für den nächsten Lauf

- Die übrigen bfu-Publikationen der Tabelle (2.003 Geländer/Brüstungen, 2.005 Türen/Tore,
  2.027/2.032 Bodenbeläge, 2.034 Sicherheit im Wohnungsbau, 2.075 rechtliche Aspekte) haben
  denselben Alters-Vorbehalt nie erhalten — ein Aktualitäts-Check gegen bfu.ch steht dort
  noch aus (2.003 hat zwar zwei Fassungen im Haus, aber auch dort nicht gegen den
  aktuellsten bfu-Stand geprüft).
- N-SIASWEEP-2/-3 (SIA 422, SIA 2025) bleiben wie empfohlen unangetastet — acht Quellenarten
  erschöpft, Fortschritt nur noch über Kauf oder direkte SIA-Anfrage.
- Die eigentliche SIA/VKF-Blindzone bleibt erschöpft; weiterer Fortschritt dort weiterhin nur
  über Raphaels Kaufentscheide (Bring-Schulden-Einkaufsliste, 24. Fortsetzung) oder eine
  Mandatsausweitung.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (zwei neue Destillate additiv, drei
bestehende Dateien mit reinen Ergänzungen ohne Streichung fremder Zeilen — Einzelwerte im
Bash-Log dieses Laufs). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über
den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
