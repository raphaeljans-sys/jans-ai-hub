# A-BLIND: `minergie-zertifizierung-workflow` — Reglementsversion 2023.1 gegen 2026.1 geprüft, Prozesskapitel als ungeprüft geflaggt

Datum: 2026-08-24 · Lauf: `claude -p`-Prozess (PID 57407), kein paralleler Sibling-Lauf zu dieser KB
(per `ps -p $$`/Elternprozess-Prüfung verifiziert; parallel liefen nur `normen`- und
`baurecht`-Läufe zu anderen KBs).

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Anschluss an CHANGELOG-Stand k («nächste A-BLIND-Kandidaten:
`minergie-zertifizierung-workflow` (23 Backlinks) und `ecobkp-2026-methodik-und-uebersicht» (24)).

## Vorab-Korrektur der k-Empfehlung

`ecobkp-2026-methodik-und-uebersicht` war laut den Einträgen 2026-08-24i und -24j bereits an
mehreren Vorläufen desselben Tages vollständig geprüft und geschlossen (nur E-R230-2/Raphael
offen). Der k-Lauf hatte offensichtlich nicht den vollen Tagesbestand von `wiki/QUESTIONS.md`
durchsucht, sondern nur den zuletzt gelesenen CHANGELOG-Eintrag — dieselbe Prozessbeobachtung, die
Eintrag j bereits für künftige Läufe festhielt. Nicht erneut bearbeitet; stattdessen
`minergie-zertifizierung-workflow` übernommen.

## Vorgehen

1. `destillate/minergie-zertifizierung-workflow.md` vollständig gelesen (established, Grundlage:
   Minergie-Nachweiskurs 2023, Produktreglement Version **2023.1**).
2. Rückwärtssuche nach neueren Primärquellen in derselben KB: `destillate/minergie-produktreglement-
   2026-1-muken-vergleich.md` (established, datenstand 2026-08-07, Refuter-Panel-verifiziert)
   bestätigt, dass seit 01.01.2026 **Version 2026.1** gilt — das Zertifizierungs-Workflow-Destillat
   zitierte damit eine überholte Version.
3. Geprüft, ob die neuere Quelle die Prozessinhalte (Label-Plattform, Antrags-Checkliste,
   Prüfrunden-Logik) tatsächlich abdeckt: nein — deren `gelesen`-Feld nennt explizit nur Kapitel
   14-17 und ausgewählte Anhänge, **nicht** Kapitel 1-13 (dort wäre die Prozesslogik selbst
   geregelt). Kein direkter Ersatzbeleg vorhanden.
4. `wiki/minergie-standards.md` (Update 15.08.2026) durchsucht: zwei Teilaspekte dort bereits
   unabhängig bestätigt — Nachweis läuft weiterhin über die Label-Plattform (nicht wieder über
   Excel), und die offizielle Ablauf-Seite nennt weiterhin keine Zertifikatsbefristung. Kein
   Widerspruch zu den bisherigen Aussagen im Workflow-Destillat gefunden, aber auch keine
   vollständige Bestätigung der übrigen Prozessdetails (Checkliste, Hilfstools-Liste).

## Ergebnis

Da established bei primärquellenbelegten Aussagen nicht pauschal abgewertet werden soll, wurde die
Einordnung differenziert statt gesenkt: neues Frontmatter-Feld `geltungsbereich` benennt den
Vorbehalt konkret, ein datierter Nachtrag-Absatz in «Offene Punkte» erklärt Fund und offene
Teilfrage, `last_updated` auf 2026-08-24 nachgeführt. `destillate/INDEX.md` erhielt einen
⚠-Vermerk in der Statuszelle.

## Eingearbeitet

- `destillate/minergie-zertifizierung-workflow.md` — Frontmatter `geltungsbereich`, `last_updated`,
  neuer Nachtrag-Absatz.
- `destillate/INDEX.md` — Statuszeile ergänzt.
- `wiki/QUESTIONS.md` — neuer datierter Abschnitt «2026-08-24l» (inkl. Vorab-Korrektur der
  überholten k-Empfehlung).
- `CHANGELOG.md` — Eintrag 2026-08-24l oben angefügt.

## Für den nächsten Lauf

Eine vollständige Prüfung der Kapitel 1-13 des Produktreglements 2026.1 gegen die Antrags-
Checkliste/Hilfstools-Liste in `minergie-zertifizierung-workflow` wäre der naheliegende
Folgeschritt — das ist aber ein neuer Primärquellen-Lesevorgang, kein blosser Abgleich.
A-BLIND-Bestand: 11 von 39 Backlink-Kandidaten jetzt einzeln geprüft, rund 28 verbleiben
(`ecobkp-2026-methodik-und-uebersicht` nicht erneut listen, siehe Vorab-Korrektur). Unverändert
blockiert: E-R230-2 (Raphael vorzulegen), 393/394 (OCR-/Bildlese-Werkzeug nötig), SIA 380/1:2016
(Normkauf).

`git diff --numstat` nach jedem Schreibvorgang geprüft: `destillate/minergie-zertifizierung-
workflow.md` +19/-1, `destillate/INDEX.md` +1/-1, `wiki/QUESTIONS.md` +46/-0, `CHANGELOG.md`
+39/-0 — durchgehend additiv/präzisierend, keine Löschung von Bestand.
