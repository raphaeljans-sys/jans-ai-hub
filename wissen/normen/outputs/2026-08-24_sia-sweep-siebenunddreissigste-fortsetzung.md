# SIA-Sweep, 37. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
SIA-Sweep-Laufs (36. Fortsetzung, `outputs/2026-08-24_sia-sweep-sechsunddreissigste-fortsetzung.md`)
zuerst gelesen.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn geprüft: eigener Prozess (PID 88413, exakt dieser Auftragstext,
`--max-budget-usd 25`) sowie ein unabhängiger, aber ebenfalls interaktiver Claude-Desktop-
Prozess ohne Bezug zu dieser KB. Kein Sibling-Lauf mit gleichem oder kollidierendem
Auftragstext auf `wissen/normen` gefunden — beim Schreiben des CHANGELOG-Eintrags zeigte sich
allerdings, dass zwischen meinem ersten Lesen (03:34-Uhr-Report der 36. Fortsetzung war der
jüngste sichtbare Eintrag) und dem Editieren ein weiterer, unabhängiger Lauf («QUESTIONS-
Abarbeitung 0336uhr») den CHANGELOG-Kopf bereits ergänzt hatte. Der Edit wurde korrekt
oberhalb der 36. Fortsetzung und unterhalb dieses fremden Eintrags eingefügt (additiv, siehe
Verifikation unten) — kein Datenverlust, kein Konflikt, da beide Läufe an unterschiedlichen
Stellen derselben append-only-Datei arbeiteten.

## Bestandsaufnahme: der wörtliche SIA-Teilauftrag bleibt gesättigt

Wie in den drei vorangegangenen Fortsetzungen (34./35./36.) bestätigt: 0 offene `[ ]`-Zeilen
mit SIA-Präfix im Inventar, Abschnitt A des Registers vollständig verifiziert. Der sinnvolle
Sweep-Fokus lag seit der 34. Fortsetzung auf dem selbst entdeckten Suva-/EKAS-Bring-Schuld-
Block (Verweisnetz aus 44002.d Kap. 8, Register Abschnitt D). Die 36. Fortsetzung hatte davon
die vierteilige «Ortsfeste Leitern»-Reihe erschlossen und einen Rest von 8 Suva-Titeln + 2
EKAS-Richtlinien zurückgelassen.

## Durchgeführt: alle 8 verbleibenden Suva-Titel + EKAS-Kostenstatus geklärt

### Baumarbeiten (2 Factsheets)
- **33071.d** «Sicher arbeiten auf Bäumen», Stand August 2013 (älteste Publikation dieser
  Bring-Schuld-Reihe). Klettern mit Steigeisen/Seilklettertechnik: doppelte Sicherung in
  Arbeitsposition zwingend, Ausbildung mind. 1 Tag bzw. mehrere Tage.
- **33072.d** «Arbeiten auf der Leiter an Bäumen», Stand November 2022. Sicherung ab **2,0 m**
  Absturzhöhe (strenger als die übliche 3-m-Schwelle bei Dacharbeiten), Ausnahme bis 5 m bei
  kurzer Sicherungsdauer. Neue Cross-Referenz entdeckt: 67156.d (Checkliste Baumkronen).

### Schächte/Gruben/Kanäle (1 Grundlagenpublikation)
- **44062.d** «Sicher arbeiten in Schächten, Gruben und Kanälen», 23 S., Erstausgabe Oktober
  1996, überarbeitete Ausgabe **Juni 2026**. Grenzwert-Tabelle Gasmessung (Sauerstoff
  19-22 %, H2S > 5 ppm etc.), PSAgA-Pflicht ab 5 m Tiefe/80 cm Durchmesser, 20-facher
  Luftwechsel als Belüftungsrichtwert. **Kernbefund: jüngste Suva-Publikation dieser KB
  nach 67150.d** (Juli 2026 > Juni 2026 > alle übrigen).

### Solaranlagen und Anschlageinrichtungen (2 Publikationen mit hohem JANS-Praxisbezug)
- **44095.d** «Sicher zu Energie vom Dach — Solaranlagen», 24 S. inkl. 2 Anhängen,
  Erstausgabe Dezember 2015, überarbeitete Ausgabe Juli 2024. **Asbest-Warnung bei Dächern
  vor 1990** (Faserzement-Wellplatten), Absturzsicherung ab 2,0/3,0 m, 2,5-m-Idealabstand
  Anschlageinrichtung-Absturzkante auf Flachdächern. Fünf neue Cross-Referenzen entdeckt
  (Asbest- und Elektrizitäts-Themenfeld).
- **44096.d** «Anschlageinrichtungen auf Dächern wollen geplant sein», 26 S. inkl. 3
  Anhängen, Erstausgabe März 2016, überarbeitete Ausgabe Januar 2022, entstanden mit der
  internationalen D-A-CH-S-Arbeitsgruppe. Vier Ausstattungsklassen nach Nutzungsintensität,
  Flächenkennzahlen der Beispielanordnungen von **5,36 m²** (ideale Anordnung) bis **126,69
  m²** (nicht empfohlene Einzelanschlagpunkt-Lösung).

### Acht lebenswichtige Regeln Anseilschutz (2 Formate desselben Inhalts)
- **88816.d** Instruktionshilfe, 31 S., Erstausgabe Mai 2012, überarbeitete Ausgabe Januar
  2022. Acht Regeln mit Instruktionstipps, Kontrollpunkten und separaten
  Instruktionsnachweis-Formularen je Regel (Pflicht laut EKAS-Richtlinie 6508). Regel 8:
  Rettung innert **10-20 Minuten** mit Mitteln vor Ort.
- **84044.d** Faltprospekt, 12 S., gleiche Ausgabendaten — knappe Mitarbeiter-Kurzfassung,
  inhaltsgleich mit 88816.d, keine zusätzlichen Fakten.

### Hubarbeitsbühnen (2 Checklisten-Teile)
- **67064-1.d** «Teil 1: Planung des Einsatzes», Ausgabe Dezember 2018. 11-Fragen-
  Kontrollraster, Kategorien nach SN EN 280 (1a/1b/3a/3b), Ausleger-Bühnen (1b/3b) brauchen
  Rückhaltesystem für jede Person.
- **67064-2.d** «Teil 2: Kontrolle am Einsatzort», Ausgabe März 2024 (deutlich jünger als
  Teil 1). 16-Fragen-Kontrollraster für die Ausführungsstufe, Anfahrschutz min. 1/3 des
  Raddurchmessers bei mobilen Kategorien.

### Beschaffungsweg

Alle neun über die Produktseite `www.suva.ch/waswo/<Nr>.d` (HTML) mit dem etablierten «PDF
Deutsch»-Dropdown-Link (`sitecorecontenthub.cloud`) beschafft — Python/`re` extrahierte den
Link, `urllib` lud die PDFs, `pymupdf` (`fitz`) extrahierte den Volltext. Bei keinem der
neun trat die Sprachfalle (44078.d, 31. Fortsetzung) oder die HTML-statt-PDF-Falle (32./33.
Fortsetzung) auf; alle neun PDF-Metadatentitel und Volltexte wurden als korrekt deutsch
verifiziert.

### EKAS-Kostenstatus geklärt (zusätzlicher Befund, nicht Teil des Kernauftrags)

Beide EKAS-Richtlinien (2134 Forstarbeiten, 6512 Arbeitsmittel) waren in den Registern der
34./36. Fortsetzung als «Status kostenpflichtig ungeprüft» geführt. Die direkten
`ekas.admin.ch/<nr>.d`-Kurzlinks funktionieren — anders als bei Suva — nicht (sie leiten auf
eine generische Übersichtsseite «Publikationen der EKAS»). Über die eingebettete JSON-
Struktur dieser Seite wurden die tatsächlichen Direktlinks gefunden:
`ekas.admin.ch/fileadmin/Dokumente/Richtlinien/gueltig/02134_d.pdf` (76 Seiten) bzw.
`.../06512_d_2017_01_01.pdf` (32 Seiten) — **beide entgegen der bisherigen Vermutung
kostenlos**. Beide sind aber umfangreiche Rechtsgrundlagen-Dokumente, kein Factsheet-Format,
und wurden in diesem Lauf **nicht** mehr destilliert (Umfang von zusammen 108 Seiten würde
den Lauf erheblich verlängern).

## Neuer, breiterer Cross-Referenzen-Rest

Die neun Destillate selbst nennen 16 weitere, noch nicht destillierte Suva-Titel, die den
ursprünglichen, von 44002.d Kap. 8 ausgehenden Block deutlich erweitern:

- **Baumpflege:** 67156.d (Checkliste Baumkronen).
- **Schächte/Rettung:** 44026.d (tragbare Leitern/Tritte), 2153.d (Explosionsschutz), 67061.d
  (Notfallplanung — bereits als Kandidat aus der 34. Fortsetzung bekannt), 67153.d
  (Bauarbeiten am/im/über Wasser), 66089.d (Gefährdungsermittlung Kleinbetriebe).
- **Solar/Asbest:** 33027.d (durchbruchsichere Dachflächen), 33031.d (Faserzementplatten
  entfernen), 33068.d (Installationsarbeiten auf Faserzementdachplatten).
- **Elektrizität/Dächer, weitere Regel-Serien:** 84041.d/88815.d (Neun lebenswichtige Regeln
  Dächer/Fassaden), 84042.d/88814.d (5+5 lebenswichtige Regeln Elektrizität).
- **Hubarbeitsbühnen/Krane:** 88180.d (Kranführer Fahrzeugkrane), 66138.d (Freileitungen).
- **Ausbildung/Motivation:** 66109.d, 66110.d, 66112.d.
- **Ungeklärt:** 33045.d («Factsheet Ortsfeste Leitern» — abweichende Nummer zur bekannten
  33102/33103/33104-Reihe, in 44096.d und 88816.d referenziert, im Original nicht aufgelöst;
  möglicherweise eine Vorgänger- oder Sammelnummer).

## Nachgeführt

- **8 neue Destillate** (`destillate/suva-33071-…md` bis `suva-67064-2-…md`), alle Status
  `established` (am Original vollständig gelesen, keine unabhängige Refuter-Runde).
- `wiki/REGISTER.md` Abschnitt D: 9 neue Tabellenzeilen + Bring-Schuld-Absatz vollständig auf
  «erschlossen» umgestellt, neuer erweiterter Cross-Referenzen-Absatz mit den 16 neuen
  Titeln.
- `destillate/INDEX.md`: 9 neue Zeilen nach der bestehenden `suva-67055`-Zeile.
- `training/norm-inventar.md`: 1 neue additive `[x]`-Log-Zeile.
- `CHANGELOG.md`: neuer Kopf-Eintrag, korrekt oberhalb der 36. Fortsetzung eingefügt.

## Offen für den nächsten Lauf

1. **Beide EKAS-Richtlinien destillieren** (2134, 76 S.; 6512, 32 S.) — jetzt als kostenlos
   verfügbar bestätigt, aber als Rechtsgrundlagen-Dokumente ein eigener, grösserer Lauf.
2. **16-Titel-Cross-Referenzen-Rest**: reicht mit Baumpflege, Solar/Asbest, Hubarbeitsbühnen/
   Krane und Ausbildung spürbar über den ursprünglichen, engen SIA-Teilauftrag hinaus. Vor
   einer weiteren Runde ggf. Rückfrage an Raphael, ob der Sweep-Fokus so weit fortgesetzt
   werden soll — der ursprüngliche, von 44002.d ausgehende Block (Ziff.-5-Liste, neun
   Fassadengerüst-Factsheets, vier Bring-Schuld-Kandidaten, Seil-/Kletter-Reihe,
   Ortsfeste-Leitern-Reihe, dieser 8-Titel-Rest) ist mit diesem Lauf vollständig erschlossen
   und wäre ein naheliegender Abschlusspunkt.
3. 33045.d (ungeklärte Nummer) bei Gelegenheit auflösen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (siehe Shell-Log dieses Laufs):
8 neue Destillate (je 1/0, reine Neuanlage), `destillate/INDEX.md` additiv (9/0),
`wiki/REGISTER.md` additiv (37/14 — Ersatz des alten «noch nicht erschlossen»-Absatzes durch
den neuen «erschlossen»-Absatz plus 9 neue Tabellenzeilen, Diff vollständig gegengelesen,
keine fremde Zeile berührt), `training/norm-inventar.md` additiv (1/0), `CHANGELOG.md`
additiv (79/0, korrekt oberhalb der 36. Fortsetzung und unterhalb eines zwischenzeitlich von
einem Sibling-Lauf ergänzten Eintrags eingefügt). Kein `git`-Schreibbefehl über den SMB-Mount
ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
