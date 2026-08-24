# SIA-Sweep, 32. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
Laufs (31. Fortsetzung) zuerst gelesen, dort weitergemacht.

## Ausgangslage geprüft

Die 31. Fortsetzung (24.08.2026, früher am Tag) hatte fünf Suva-Publikationen der
Fassadengerüst-Reihe erschlossen (44078.d, 44046.d, 84018.d, 67038.d, 67150.d) und die
verbleibenden neun Factsheets 33001.d/33017.d/33020.d/33021.d/33022.d-33025.d/33029.d als
direkten Fortsetzungspunkt benannt. Verifiziert: `training/norm-inventar.md` weiterhin exakt
5 offene kostenpflichtige SIA/VKF-Bring-Schulden (SIA 491, SN EN 12193, SN 640 052, SN 641 400,
SIA 181:2020) — kein Kaufentscheid seit der 31. Fortsetzung, `logbuch/fristen.md` ohne neuen
SIA-Bezug geprüft.

**Kollisionscheck** (`ps aux`) vor Arbeitsbeginn: eigener Prozess (Skript-Wrapper `mschub516`,
exakt dieser Auftragstext). Ein weiterer Prozess bearbeitet die KB `wissen/energie`
(QUESTIONS-Abarbeitung, anderer Auftragstext, keine Berührung).

## Durchgeführt: neun Suva-Factsheets beschafft, gelesen, destilliert

### Werkzeug-Falle entdeckt: HTML-Produktseite statt PDF

Der direkte `curl`-Abruf von `www.suva.ch/waswo/<Nr>.D` lieferte bei **allen neun**
Factsheets NICHT das PDF, sondern die HTML-Produktseite (Content-Type `text/html`,
`Content-Length` identisch mit dem, was zuvor als „PDF" abgespeichert wurde) mit
Sprachauswahl-Dropdown. `pymupdf` öffnete diese HTML-Datei anstandslos als 6-seitiges Dokument
(MuPDF rendert HTML-Layout zu Seiten) und lieferte plausibel aussehenden Fliesstext samt
Navigations-/Footer-Rauschen (Cookie-Hinweis, Newsletter-Werbung, Kontaktbereich) — **ohne
Fehlermeldung**. Bemerkt am fehlenden PDF-Metadatentitel (nur `<title>` gesetzt) und am
untypisch kurzen (~2500 Zeichen statt ~4000-6000), werbelastigen Text ohne die erwarteten
technischen Tabellen/Kennwerte.

**Lösung:** Aus der HTML-Struktur (`<li class="dropdown-link">`-Elemente, Linktext «PDF
Deutsch») den echten Downloadlink auf `suva-p-001.sitecorecontenthub.cloud/api/public/content/
<content-id>?...&download=true` extrahiert. Bestätigt per `documentAssetReference`-JSON-Block
im HTML, der die drei Sprachvarianten mit `contenttype: application/pdf` und Seitenzahl
ausweist. Alle neun echten PDFs danach geladen und am PDF-Metadatentitel (Muster „<Nr>.d - Titel
- Suva" bzw. „Titel - Suva") als deutsch verifiziert — keine der neun Publikationen zeigte die
Sprachverwechslungs-Falle der 31. Fortsetzung, diese neue Fallenart betraf stattdessen alle neun
gleichermassen (vermutlich CMS-Migration der Factsheet-Reihe, während die älteren
Merkblatt-PDFs — 44077/44078 etc. — noch direkt am Kurzlink hängen).

### Neun neue Destillate, alle `established`

| Nr. | Titel | Ausgabe | Seiten | Kernwert |
|---|---|---|---|---|
| 33001.d | Sicherheitsanforderung für Auffangnetze | Januar 2022 | 2 | Aufhängepunkt-Kraft 6 kN, Randabstand max. 2,5 m, Netz/Bauteil-Abstand max. 30 cm |
| 33017.d | Seitenschutz — Anforderungen an die Bauteile | September 2022 | 2 | Klassen A/B/C nach SN EN 13374, Prüfkräfte FT1/FT2/FH1/FH2/FD |
| 33020.d | Gerüstbeläge von Fassadengerüsten — Anforderungen | Januar 2022 | 2 | Prüfbedingungen < L/100 und max. 25 mm, Lastklassen-Tabelle 2,0/3,0/4,5 kN/m² |
| 33021.d | Anforderungen an Gerüstbeläge im Spenglergang | Januar 2022 | 2 | 100-kg-Stahlkugel-Prüfung aus 2,50 m, Resttragfähigkeit 150 kg, reine Holzbeläge verboten |
| 33022.d | Dachdeckerschutzwand beim Fassadengerüst | Januar 2022 | 2 | Pflicht ab 30° Dachneigung, Öffnungen max. 100 cm², Rückverankerung ab 2,0 m, Strafrechts-Hinweis |
| 33023.d | Dachfangwände — Dachneigung bis 45° | Januar 2022 | 2 | Mindesthöhe 1,00 m (1,50 m ohne Rohrtraverse), Kugeldurchlässigkeit max. Ø 100 mm |
| 33024.d | Seitenschutz an Fassadengerüsten | September 2022 | 2 | Vermassung nach SN EN 12811-1 Art. 5.5, doppeltes Innengeländer ab 2,0 m, Kabelbinder-Verbot |
| 33025.d | Gerüstzugänge mit Treppen | Januar 2022 | 2 | Zugangsdistanz max. 25 m, Leiterverbot, Treppenklassen A/B, statische Mindestlasten |
| 33029.d | PSAgA im Fassadengerüstbau | Januar 2022 | 2 | TOP-Prinzip, Rettung innert 20 Min., Ausbildungspflicht mind. 1 Tag |

Alle neun vollständig gelesen (PDF-Textlayer, `pymupdf`-Extraktion nach Korrektur der
Werkzeug-Falle, kein Scan), Status `established`, keine unabhängige Refuter-/Zweitrunde
durchgeführt (offener Punkt in jedem Destillat vermerkt, gleiche Einschränkung wie bei der
31. Fortsetzung — Umfang des Laufs liess keine vollständige Adversarial-Verifikation zu).

### Nebenbefund, dokumentiert statt aufgelöst

`suva-33029` (PSAgA) nennt für die betriebsinterne Rettung eines Gestürzten **20 Minuten**,
`suva-44078` (bereits im Bestand, Fassadengerüst-Montage Ziff. 7.3.1) nennt **15-20 Minuten**
für denselben Sachverhalt — beide Werte am jeweiligen Original bestätigt, keine
Widersprüchlichkeit behauptet (überlappende Bandbreite, unterschiedliche Publikationen
derselben Reihe), im neuen Destillat als Beobachtung festgehalten, nicht als Fehler behandelt.

## Nachgeführt

- 9 neue Destillat-Dateien in `destillate/` (siehe Tabelle), alle Frontmatter mit `quelle`,
  `herausgeber`, `ausgabe`, `gelesen`, `status: established`, `verifikation`-Vermerk inkl.
  Werkzeug-Falle.
- `destillate/INDEX.md`: 9 neue Zeilen nach der bestehenden `suva-67150`-Zeile.
- `training/norm-inventar.md`: 1 neue Sammelzeile `[x] 260824` mit vollem Beleg zu allen neun
  Publikationen, nach der bestehenden 67150.d-Zeile.
- `wiki/REGISTER.md` Abschnitt D: 9 neue Tabellenzeilen in der Suva-Publikationstabelle; der
  bisherige Bring-Schuld-Absatz zu den neun Factsheets wurde durch einen ✅-Vermerk ersetzt,
  ergänzt um vier neue, aus den Verweislisten der Factsheets stammende Bring-Schuld-Kandidaten
  (33026.d, 33028.d, 44002.d, 67018.d).
- `CHANGELOG.md`: neuer Kopf-Eintrag oberhalb des bisherigen Kopf-Eintrags (chronologisch
  korrekt eingefügt, dieser unverändert darunter belassen).

## Offen für den nächsten Lauf

1. **Vier neue Bring-Schuld-Kandidaten**, alle kostenlos, alle kurz, gleiche Beschaffungsroute
   (mit der neu entdeckten HTML-Falle rechnen — Content-Type/PDF-Metadatentitel prüfen, nicht
   nur ob `pymupdf` Text liefert): 33026.d (Arbeitsplattformnetze, aus 33001.d referenziert),
   33028.d (Seitenschutz mit Auffangnetzen, aus 33001.d/33022.d referenziert), 44002.d
   (Sicherheit durch Anseilen, aus 33023.d/33029.d referenziert), 67018.d (Checkliste
   Kleinarbeiten auf Dächern, aus 33023.d referenziert). Damit ist die Suva-Fassadengerüst-/
   Dach-Reihe dieser KB praktisch vollständig vernetzt — ein weiterer Fund entstünde nur noch
   über neue Querverweise dieser vier.
2. **84018.d-Aktualität weiterhin ungeklärt** (aus 31. Fortsetzung übernommen, kein
   Aktualitäts-Check auf neuere Fassung durchgeführt).
3. Danach unverändert: Raphaels Kaufentscheide zu den 5 kostenpflichtigen SIA/VKF-Bring-Schulden
   (SIA 491, SN EN 12193, SN 640 052, SN 641 400, SIA 181:2020), oder Rest-Check der übrigen
   bfu-Publikationen (2.003/2.005/2.027/2.032/2.034/2.075) auf neuere Fassungen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: 9 neue Destillat-Dateien (`git status
--porcelain`, alle `??` — kein Bestand überschrieben), `destillate/INDEX.md` 9/0,
`training/norm-inventar.md` 1/0, `wiki/REGISTER.md` 18/4 (9 neue Tabellenzeilen plus
Block-Ersatz des Bring-Schuld-Absatzes; Volltext-Diff geprüft, keine fremde Zeile berührt),
`CHANGELOG.md` 103/0 (reine Ergänzung oberhalb des bestehenden Kopf-Eintrags, dieser
unverändert). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
