# A-BLIND: `sia-181-schallschutz-anforderungswerte` — Flankenübertragung Holzbau am Lignum-Bericht vertieft, Duplikat-Beinahe-Fehler korrigiert

**Datum:** 2026-08-24 | **Lauf:** Fortsetzung QUESTIONS-Abarbeitung (Wrapper-Prozess, energie-Prompt)

## Auftrag
Weitere offene Fragen aus `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle/Datenstand, in die
Wiki-Artikel einarbeiten. Anschluss an CHANGELOG-Eintrag 24s (`anergienetz-kalte-fernwaerme-ch`),
das eine A-BLIND-Kandidatenliste hinterliess.

## Vorgehen
1. Aus der 24s-Liste `sia-181-schallschutz-anforderungswerte` (20 Backlinks) gewählt: trug seit
   2026-06-24 den offenen Punkt «Flankenübertragung/Anschlussdetails Holzbau (Lignum-Dokumentation)
   noch nicht belegt».
2. Per WebSearch die BFH-Lignum-Publikation gefunden («Schallschutz im Holzbau», Bericht
   Nr. 2712-SB-01, 04.12.2008, 72 S., öffentlich auf lignum.ch), per curl geladen, Volltext via
   `pdftotext -layout` extrahiert und gezielt nach Flankenübertragung/Stoss/dB-Werten durchsucht.
3. **Fehler gemacht und korrigiert:** ein neues Destillat angelegt, ohne vorher `destillate/
   INDEX.md` zu prüfen. Derselbe Bericht war bereits seit 28.06.2026 als `[[lignum-schallschutz-
   holzbau-flankenuebertragung]]` destilliert (S. 1-14 gelesen). Bemerkt, weil der Ziel-Wiki-
   Artikel `wiki/schallschutz-sia181.md` bereits auf genau diesen Dateinamen verlinkte. Duplikat
   sofort gelöscht, stattdessen das bestehende Destillat um die tatsächlich neuen Teile (S. 49-50
   + 64-71, vom bestehenden Destillat noch nicht gelesen) erweitert.

## Fund
Kap. 8 des Berichts ist der **Entwurf** des späteren Bauteilkatalogs — die Rw-/Ln,w-Felder der
Typenblätter sind in dieser 2008er-Fassung leere Formularfelder, der fertige Katalog war laut
Bericht erst für 2010/2013 geplant. Ein konkreter Zahlenwert war trotzdem entnehmbar: abgehängte
Decke ~60 mm bei Kastendecken → **3-6 dB** Verbesserung. Qualitativ ergänzt: Rahmenbau-Aussenwände
reduzieren Flankenübertragung über eine Innenverkleidung mit Installationsebene, während statisch
nötige Aussteifungen sie erhöhen (Zielkonflikt Statik/Akustik); Massivholzplatten-Wände über
entkoppelte Innen-/Aussenverkleidung und steife Gesamtkonstruktion.

**Negativbefund (Werkzeugproblem, keine inhaltliche Klärung):** die aus diesem Projekt
entstandenen fertigen Werke — kostenpflichtige Lignum-Dokumentation (seit Juni 2023) und Online-
Bauteilkatalog (`bauteilkatalog.lignum.ch` seit 2014, heute `lignumdata.ch`) — waren am
24.08.2026 nicht erreichbar (`lignumdata.ch` → HTTP 500, `bauteilkatalog.lignum.ch` → Connection
refused). Ein vollständiger, numerischer Rw-/Ln,w-Katalog je Anschlussdetail bleibt damit offen.

## Geänderte Dateien
- `destillate/lignum-schallschutz-holzbau-flankenuebertragung.md` (+32/-3)
- `destillate/sia-181-schallschutz-anforderungswerte.md` (+20/-4)
- `wiki/schallschutz-sia181.md` (+5/-2)
- `destillate/INDEX.md` (+1/-1)
- `wiki/QUESTIONS.md` (Eintrag 24t)
- `CHANGELOG.md` (Eintrag 24t)

## Prozess-Lehre
Vor dem Anlegen eines neuen Destillats zu einer Quelle, die bereits im Backlink-/Wiki-Kontext
auftaucht, IMMER zuerst `destillate/INDEX.md` bzw. die `sources:`/`links:`-Frontmatter der
referenzierenden Wiki-Artikel grep-prüfen — nicht erst nach dem Schreiben, wie hier geschehen.
Der Fehler wurde vor dem Commit bemerkt und folgenlos korrigiert (kein Datenverlust, kein
doppelter Registereintrag).

## Für den nächsten Lauf
`lignumdata.ch`/`bauteilkatalog.lignum.ch` bei nächster Gelegenheit erneut prüfen. Übrige
A-BLIND-Kandidaten aus 24s unverändert offen: `wpz-buchs-feldmessung-jaz-2016-2019` (25, prüfen ob
als A-BLIND-Fall überhaupt noch offen), `bvv-zh-meldeverfahren-klimaanlagen-waermepumpen` (21, vor
Auswahl prüfen ob wirklich noch offen), `graue-energie-betriebsenergie` (20, bereits mehrfach
gegengeprüft), `fenster-energieetikette-fea-bfe` (20, bereits über Zweitquelle bestätigt),
`minergie-zertifizierung-workflow` (29, laut 24o/24p Prozesskapitel noch offen geflaggt).
