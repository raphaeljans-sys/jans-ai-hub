# QUESTIONS-Abarbeitung 8: N-R40-1/N-R40-2 (Aufzugs-Cluster) über öffentliche Behörden-/Verbandsquellen geschlossen

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 7, 23.08.2026) und
`outputs/2026-08-23_questions-abarbeitung7.md`.

## Prozess-Check zuerst

Per `ps aux` geprüft: neben diesem Lauf (identischer Auftragstext, also derselbe Lauf) läuft
ein zweiter, echt unabhängiger `claude`-Prozess mit dem Auftrag «Setze den SIA-Sweep der KB
wissen/normen fort» auf derselben KB. Um Kollision zu vermeiden, wurde bewusst ein anderer
Themenzweig gewählt: statt der von jenem Prozess bearbeiteten P1-Bring-Schulden (SIA 380/1,
SIA 385/1, SIA 266/1, SIA-410-Nachfolgewerke) das seit Run 40 (31.07.2026) offene
Aufzugs-Cluster N-R40-1..4.

## Ausgangslage: zweiter OneDrive-Mount weiterhin defekt

`PL - 02_Recht_Norm/02_Normen/` (zweiter, präfixkollidierender Mount) liefert unverändert
`fts_read: Operation timed out` — geprüft, nicht neu behoben. Der Hauptmount
(`OneDrive-FreigegebeneBibliotheken–JANS`) antwortet, enthält aber `PL - 02_Recht_Norm/` selbst
nicht (Pfad existiert dort nicht). Die drei mount-abhängigen P1-Bring-Schulden bleiben deshalb
für diesen Lauf unbearbeitbar und werden dem parallelen SIA-Sweep-Prozess überlassen.

## N-R40-1: VKF-RL «Aufzugsanlagen 2003» ↔ VKF-BRL 23-15 «Beförderungsanlagen» (2015)

**Befund:** Das 2003er-Original ist nicht im JANS-Bestand, liegt aber weiterhin öffentlich auf
dem VKF-Publikationsportal:
`services2.vkf.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-1714.pdf/content`
(URL per `WebSearch` ermittelt, Inhalt per `WebFetch` + lokalem `pdftotext -layout` gelesen).
Titelblatt/Kolophon: **VKF-BRL 24-03d «Aufzugsanlagen», Ausgabe 26.03.2003, Stand 20.10.2008**,
© VKF/AEAI/AICAA (PDF-Metadaten zusätzlich: Ursprungsdatei «24-03de.docx», erstellt 09.03.2011).

Ziff. 1 Geltungsbereich ist wortgleich (bis auf einen Klammerzusatz) mit Ziff. 1 der bereits
im Haus destillierten `vkf-brl-23-15-befoerderungsanlagen.md`:

- 24-03d, S. 4: «Diese Brandschutzrichtlinie gilt für die Erstellung und den Betrieb von
  Beförderungsanlagen sowie Feuerwehraufzügen.»
- 23-15, Ziff. 1, S. 4: «Gilt für Erstellung und Betrieb von Beförderungsanlagen
  (Aufzugsanlagen, Fahrtreppen und dergleichen) sowie Feuerwehraufzügen.»

Zusätzlich bestätigt die VKF-eigene Übersicht `Zusammenfassung der Änderungen der
teilrevidierten Brandschutzvorschriften VKF, Ausgabe 2015` (VKF, 18.01.2017, öffentlich unter
`services2.vkf.ch/.../BSPUB-1394520214-245.pdf/content`, Inhaltsverzeichnis S. 2), dass die
gesamte BRL-Serie in der Ausgabe 2015 systematisch von der alten Nummerierung (u.a. 24-03) auf
das neue Schema `NN-15` umgestellt wurde (10-15, 12-15, 13-15, 14-15, 15-15, 16-15, 17-15,
20-15, 21-15, 23-15, 25-15, 26-15).

**Ergebnis: 24-03d wurde durch die Ausgabe 2015 als 23-15 «Beförderungsanlagen» abgelöst** —
gleicher Herausgeber, wortgleicher Geltungsbereich, Teil derselben systematischen
Neunummerierung. Kein Einzeldokument mit einer expliziten Ablösungsformel gefunden (die
2017er-Zusammenfassung listet nur die neue Nummerierung, keine Alt-Neu-Tabelle); die Zuordnung
stützt sich auf zwei unabhängige Primärquellen (Originaltext 2003/2008 + VKF-Änderungsübersicht
2017) — als **established** eingestuft.

**Umgesetzt:** `wiki/QUESTIONS.md` N-R40-1 `[x]`; additive Nachträge in
`destillate/vkf-brl-23-15-befoerderungsanlagen.md` (Offene Punkte) und
`destillate/vsa-aufzuege-dokumente-bestimmungen.md` (Offene Punkte).

## N-R40-2: ESBA-Originaltext der Baudirektion Kanton Zürich

**Befund:** Originaltext öffentlich auf `zh.ch` beschafft (kein Kauf, keine
Beschaffungs-Bring-Schuld):
`zh.ch/content/dam/zhweb/bilder-dokumente/themen/planen-bauen/hochbau/planungsgrundlagen/
gebaeudetechnik/dokumente-aufzugsanlagen/200409_rl-bd_erhoehung_der_sicherheit_best_aufzuege_
2008.pdf`, 6 Seiten vollständig per `pdftotext -layout` gelesen. Titelblatt: «Richtlinie der
Baudirektion über die Erhöhung der Sicherheit an bestehenden Aufzügen (ESBA-Richtlinie), Stand
15. Juli 2008», Version V 1.4, rev. 14.01.2020 (laut Kolophon nur grafische Überarbeitung,
Inhalt unverändert).

**Sieben Kriterien wortgleich verifiziert** (Ziff. 2.2, Tabelle S. 5) — die bestehende
VSA-Kurzfassung in `vsa-aufzuege-esba-zh.md` stimmt für alle 7 Punkte exakt mit dem Original
überein, keine Abweichung gefunden.

**Verhältnis ESBA ↔ SN EN 81-80 (SNEL) jetzt belegt, vorher unbelegte Vermutung:** Ziff. 1.4/2.1
des Originals beschreibt den Filterungsprozess: die 74 Gefährdungspunkte der SN EN 81-80:2003
werden nach fünf Kriterien gefiltert (Sicherheit im Mittelpunkt, wirtschaftlich vertretbar,
technisch realisierbar, vernünftiger Zeitrahmen, SIA-Wegleitung 370/101 (1985) grundsätzlich
bereits erfüllt). Ziff. 2.2 nennt die explizite Zuordnungstabelle ESBA-Nr. → EN-81-80-Nr.:
**1→3 (teilweise), 2→27, 3→38, 4→40, 5→46, 6→56, 7→71.**

**Rechtsgrundlage geklärt** (Ziff. 1.1-1.3, 3.4-3.5, 4.1): Besondere Bauverordnung I (BBV I)
vom 06.05.1981, letzte Änderung 12.12.2001 — §§ 32/33 (periodische Kontrollen, Anpassung
bestehender Aufzugsanlagen), § 3 (Ausnahmebewilligung). Vor 2001 erklärte die BBV I die
SIA-Wegleitung 370/101 (1985) für verbindlich (Anhang); mit der Änderung 2001 fiel dieser
Anhang ersatzlos weg, wodurch eine Regelungslücke entstand — die ESBA-Richtlinie 2008 füllt sie,
indem sie SN EN 81-80:2003 kantonal umsetzt. Für den Umbau zur Behebung der 7 Punkte ist gemäss
Ziff. 3.4 ein Baugesuch mit technischen Unterlagen nach BBV I § 32 einzureichen. Ziel-Zeithorizont
im Original: ca. 2018 (10 Jahre nach 2008), unverändert gegenüber der VSA-Zusammenfassung von
2011.

**Umgesetzt:** `wiki/QUESTIONS.md` N-R40-2 `[x]`; additiver Nachtrag in
`destillate/vsa-aufzuege-esba-zh.md` (Offene Punkte + Frontmatter `status`/`last_updated`).

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

| Datei | + | - |
|---|---|---|
| `wiki/QUESTIONS.md` | 135 | 12 |
| `destillate/vkf-brl-23-15-befoerderungsanlagen.md` | 13 | 0 |
| `destillate/vsa-aufzuege-dokumente-bestimmungen.md` | 11 | 0 |
| `destillate/vsa-aufzuege-esba-zh.md` | 34 | 2 |
| `CHANGELOG.md` | 241 | 0 |

Die 2 Löschzeilen in `vsa-aufzuege-esba-zh.md` sind die bewusste Ersetzung der Frontmatter-Felder
`status`/`last_updated` (per `git diff` gegengelesen, kein Textverlust). Die 12 Löschzeilen in
`wiki/QUESTIONS.md` bestehen aus 2 eigenen (`[ ]`→`[x]` bei N-R40-1/N-R40-2, technisch als
Zeilenersatz gezählt) und 10 fremden, bereits vor diesem Lauf vom parallelen SIA-Sweep-Prozess
geschriebenen Schliessungen (SIA 266/1, SIA 410) — per `git diff` (nicht nur `--numstat`)
Zeile für Zeile gegengelesen, keine Kollision, kein eigener Textverlust. Kein
`git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / weiterhin offen

- **P1-Bring-Schulden SIA 380/1, SIA 385/1, SIA 266/1, SIA-410-Nachfolgewerke:** bleiben beim
  parallel laufenden SIA-Sweep-Prozess bzw. sind Kaufentscheide Raphaels (Rule «Grenzen»).
- **N-R40-3 (P4):** bewusst nicht bearbeitet — der Eintrag selbst schliesst einen
  systematischen Nachzieh-Auftrag aus.
- **N-R40-4 (P4):** Verhältnis SVAS↔VSA weiterhin ungeklärt, keine neue Quelle gefunden.
- **«Dateiname/Inhalt-Mismatch» (`vkf-merkblatt-brandschutzklassifikation-bauteile.md`):**
  geprüft, aber blockiert — Quelldatei `Brandschutz-Praevention.pdf` liegt nur unter dem
  defekten zweiten OneDrive-Mount; `mdfind` fand keinen lokal indizierten Treffer. Der
  Vergleich mit `vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md` zeigt aber
  bereits anhand der Frontmatter beider Destillate (unterschiedlicher Dateiname, Herausgeber,
  Seitenumfang 1 vs. 16), dass es sich um zwei tatsächlich verschiedene PDFs handelt — die im
  Eintrag befürchtete Merge-Notwendigkeit besteht nicht, eine abschliessende Bestätigung am
  Original bleibt aber offen.
