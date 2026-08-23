---
title: Interaktive Session (vierte Fortsetzung) — E-R134-2 geschlossen, E-R132-4 als unverifizierter Websuchbefund markiert
datum: 2026-08-23
station: MacBook Pro / Claude Code (interaktiver Auftrag, vierte Fortsetzung derselben Session)
---

# Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Fortsetzung der drei vorangehenden Interaktiv-Sessions desselben
Tages.

# Vorgehen und Rahmenbedingungen dieses Laufs

CHANGELOG und den letzten Output-Report gelesen, dann alle `- [ ]`-Punkte in `QUESTIONS.md`
durchgesehen (27 offene Punkte). Zwei Einschränkungen dieser Session gegenüber früheren Läufen
festgestellt und beim Zuschnitt berücksichtigt:

- **Kein Node/M365-CLI verfügbar** (`node` nicht im `PATH`), damit kein Zugriff auf SharePoint
  PL-02/PL-04 über den gewohnten Connector-Weg.
- **Keine OneDrive-Mounts mit den PL-02/PL-04-Ordnern** in dieser Arbeitsumgebung auffindbar
  (nur die JANS-Standard-Bibliotheken, kein `PL - 02_Recht_Norm`-Pfad).

Damit schieden alle Punkte aus, die laut Prioritätenliste des letzten Laufs (E-R132-2/-3,
E-R129-2/-4, die kWh/kg-Werte zu E-R147-1) reine Dateisichtungsarbeit im PL-02-Korpus verlangt
hätten. Stattdessen zwei KB-intern bzw. per WebSearch/WebFetch lösbare P3/P4-Punkte bearbeitet.

# Bearbeitet

## E-R134-2 (P3) — geschlossen

Frage: Auf welche Fläche bezieht sich die Energiekennzahl 38/30 kWh/m² im undatierten
Minergie/Minergie-P-Vergleichsblatt (`[[minergie-me-vs-me-p-vergleich]]`)? Die Grafik selbst
nennt nur «kWh/m²», ohne die Bezugsfläche zu benennen; EBF war naheliegend, aber unbelegt.

**Ergebnis:** Der Minergie-Glossar (minergie.ch, Eintrag «Energiekennzahl», abgerufen
23.08.2026) definiert die Grösse systemunabhängig vom Einzeldokument als «Mass für die gesamte,
einem Gebäude während eines Jahres netto gelieferte Energie, bezogen auf die Energiebezugsfläche
(kWh/m²)». Die Minergie-Energiekennzahl ist damit immer EBF-bezogen — die Annahme war korrekt,
bleibt aber eine Ableitung aus der allgemeinen Systematik, kein Zitat aus dem Quelldokument
selbst (das nennt die Bezugsfläche weiterhin nicht namentlich). Nur von historischem Interesse,
da der Zahlenwert selbst überholt ist.

Eingearbeitet: `destillate/minergie-me-vs-me-p-vergleich.md` (Offene Punkte, Frontmatter
`last_updated`), `wiki/QUESTIONS.md`.

Quelle: [Minergie-Glossar, Eintrag «Energiekennzahl»](https://www.minergie.ch/de/themen/wissenswert/glossar/), abgerufen 23.08.2026.

## E-R132-4 (P4) — Teilbefund, bleibt offen markiert (`[~]`)

Frage: Existieren Auflagen des Stadt-Zürich/ewz/Topten-Merkblatts «Professionelle Beschaffung:
Haushaltgeräte» nach der 3. Auflage (November 2008)?

**Rechercheweg:** WebSearch nach dem Werktitel plus Auflagen-/Jahresangaben, gefolgt von
WebFetch-Versuchen auf mehrere Kandidaten-URLs (stadt-zuerich.ch, topten.ch, Kanton Aargau).

**Ergebnis, ausdrücklich als unverifizierter Sekundärquellen-Fund markiert:** Mehrere
unabhängige Websuchen nennen übereinstimmend eine «4., überarbeitete Auflage, Oktober 2012»
derselben Reihe (gleiche Herausgeberschaft: Amt für Hochbauten Stadt Zürich/Fachstelle
Nachhaltiges Bauen, ewz, Topten Schweiz). **Kein einziger geprüfter Link lieferte jedoch das
Original-PDF** — `stadt-zuerich.ch/.../ewz_ratgeber_haushaltgeraete.pdf` (404),
`topten.ch/private/article/haushaltsgeraete-professionell-beschaffen` (403), die Aargauer
Publikationsliste (404). Damit ist die 4. Auflage 2012 **nicht** primärquellenbelegt und wird
entsprechend nicht als Faktum, sondern als offener Rechercheansatz festgehalten.

**Zusatzfund:** eine eigenständig gebrandete Nachfolgebroschüre «Haushaltgeräte professionell
beschaffen» von **EnergieSchweiz** (PDF-Metadaten-Erstellungsdatum 15.04.2015,
`energieeffizienz.ch/dam/ratgeber/2018-Haushaltgeraete-prof.-beschaffen/...`), die auf einen
Trägerwechsel von der Stadt-Zürich/ewz/Topten-Reihe zu einer national verlegten
EnergieSchweiz-Publikation ab ca. 2015 hindeutet — ebenfalls nicht abschliessend verifiziert
(PDF-Text liess sich technisch nicht vollständig extrahieren).

**Praktische Relevanz weiterhin gering:** alle Effizienzklassen der Reihe sind durch die
Neuskalierung der Energieetikette 2021 ohnehin überholt; brauchbar bleibt nur die
Beschaffungsmechanik (Gesamtkosten über 15 Jahre).

Eingearbeitet: `destillate/topten-haushaltgeraete-liegenschaftenverwaltung.md` (Offene Punkte,
Frontmatter `last_updated`), `wiki/QUESTIONS.md` (Checkbox `[~]`, nicht `[x]`).

# Nicht angefasst

Alle Punkte, die PL-02/PL-04-Dateisichtung verlangen (E-R132-2/-3, E-R131-2, E-R129-2/-4/-5,
E-R134-4, E-R138-2, restliche kWh/kg-Recherche zu E-R147-1) — in dieser Session technisch nicht
erreichbar (kein Node/M365-CLI, keine PL-02-Mounts). E-R148-1 (Normkauf, Entscheid Raphael),
E-R149-4 (Task-Datei harness-blockiert), E-R150-3 (bewusst offen dokumentiert), E-R140-1 (hängt
am selben Normkauf), E-R143-2 (gehört sachlich zur KB `normen`), E-R134-3 (Lambda-Anomalie,
bewusst nicht korrigiert — Quelle wird treu wiedergegeben), E103/E94 (Entscheid Raphael zu
JANS-eigenen Projektdaten nötig), E-S1 (Struktur-/Skill-Frage, keine Recherchefrage), die
Fernwärme-Objektgrössen-Verweigerung (bräuchte interaktive Rechner-Abfragen an realen Adressen).

# Registerpflege

`wiki/QUESTIONS.md` (zwei Punkte bearbeitet: ein `[x]`, ein `[~]`), zwei Destillate der KB
`energie` ergänzt, CHANGELOG-Eintrag gesetzt. Nach jedem Schreibvorgang `git diff --numstat`
geprüft; die Destillat-Edits wurden zwischenzeitlich vom automatischen NAS-Selfcommit
(Commit `b7a6434b`, 18:05 Uhr, Fremd-Commit-Message zu einem parallel laufenden `normen`-Lauf)
miterfasst — Deltas dort (+13/-8 über beide Dateien) decken sich mit den hier vorgenommenen
Ergänzungen, keine unerwarteten Löschungen.

# Priorität für den nächsten Lauf

Der PL-02-Korpus bleibt der grösste Hebel (E-R132-2/-3, E-R129-2/-4, die kWh/kg-Werte zu
E-R147-1) — dafür braucht der nächste Lauf eine Arbeitsumgebung mit Node/M365-CLI oder
gemounteten OneDrive-PL-02-Pfaden. Für einen reinen Web-Lauf ohne Dateizugriff wären als
nächstes E-R134-4 (MFH-Fassung Bauteilvergleich, vermutlich aber ebenfalls PL-02) oder eine
gezielte Suche nach der Original-Quelle der «4. Auflage 2012» (E-R132-4, offen geblieben)
Kandidaten. Unverändert der einzige wirklich werthaltige Engpass: SIA 380/1:2016 (E-R148-1,
Normkauf-Entscheid Raphaels).
