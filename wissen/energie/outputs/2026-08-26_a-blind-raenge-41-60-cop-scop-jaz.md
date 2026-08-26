# Energie-Trainingslauf — A-BLIND Ränge 41-60 (Teil 1)

**Datum:** 2026-08-26, ca. 13:30-14:00 CEST (Versuchs-Slot Mac-Mini-Nachtschicht) · **Art:**
manueller Lauf, kein Agent-Fan-out (Budgetgründe) · **Modell-Politik:** alle Schritte im
Hauptkontext (Bash-Zählscript, WebSearch, WebFetch, pdfinfo/pdftotext).

## Ausgangslage

Beide PDF-Korpora sind erschöpft (PL-04 seit Run 150/161, PL-02 seit Run 148). Run 163
(25.08.2026) gab als Auftrag für den nächsten Lauf: A-BLIND auf die Ränge 41-60 mit dem Kriterium
«alternder Datenstand statt fehlender Verifikation». Wegen des harten Nachtschicht-Budgets (5 USD)
wurde die volle 20er-Charge nicht bearbeitet, sondern ein Ranking gebildet und ein Fall vertieft.

## Methode

Backlink-Ranking über ein lokales Python-Zählscript gebildet (zählt `[[slug]]`-Vorkommen über
`wiki/*.md`, `destillate/*.md`, `outputs/*.md`, 336 Slugs gesamt) — kein Subagent nötig, reine
Bash/Python-Mechanik. Ergebnis vollständig in `wiki/QUESTIONS.md` (Eintrag 26.08.2026) hinterlegt,
damit der nächste Lauf nicht neu rechnen muss.

## Ergebnis

| Prüfobjekt | Rang / Backlinks | Befund |
|---|---|---|
| `cop-scop-jaz-waermepumpe-gruenenwald` | 52 / 20 | Datierung geklärt (08.11.2016), Norm-Ausgabe EN 14825:2022 statt 2013 nachgetragen — inhaltlich unverändert tragfähig |
| übrige 19 Positionen (Ränge 41-51, 53-60) | — | grob gesichtet (Datenstand-Feld gelesen), 17 wirken aktuell/kürzlich geprüft, 2 vorgemerkt für nächsten Lauf |

### Der bearbeitete Fall

`cop-scop-jaz-waermepumpe-gruenenwald` erklärt COP/SCOP/JAZ für Wärmepumpen (Quelle: Fachvortrag
Harry Grünenwald, Grünenwald AG, FWS-Tagung) und trug zwei offene Punkte: unklare Datierung des
Foliensatzes und die Frage, ob die zitierte Norm EN 14825:2013 noch die geltende Ausgabe ist.

**Datierung:** das Original-PDF wurde erneut von `fws.ch` geladen (identische URL wie beim
Erstdestillat) und mit `pdfinfo` geprüft — `CreationDate: Tue Nov 8 16:08:34 2016 CET`. Das deckt
sich mit dem Dateinamen `161108-Gruenenwald.pdf`, den fws.ch selbst nach dem Muster JJMMTT vergibt.
Foliensatz damit auf **08.11.2016** datiert.

**Norm-Ausgabe:** eine WebSearch-Recherche (dinmedia.de, iteh.ai, genorma.com) zeigt, dass EN 14825
nach der 2013er-Ausgabe mehrfach revidiert wurde (2016, 2019, aktuell 2022, DIN EN 14825:2023-10).
Eine zweite Suche zu den Referenzklimazonen (Colder/Average/Warmer, Helsinki/Strassburg/Athen)
zeigt, dass diese in der aktuellen Ausgabe unverändert weitergeführt werden — die Kernaussage des
Destillats (SCOP für Schweizer Verhältnisse rund 5-7 % zu günstig, weil mit dem milderen Strassburg
gerechnet) bleibt damit tragfähig. Die Ausgabe EN 14825:2022 selbst wurde **nicht** am
Primärtext geprüft (kostenpflichtige Norm, nicht im Haus) — das Destillat weist das jetzt aus, statt
die 2013er-Fassung stillschweigend als aktuell zu unterstellen.

**Kein propagierter Fehler wie in Run 163** (Fenster-Uf-Tabelle): dieser Fall ist eine reine
Präzisierung, kein Korrekturfund mit Breitenwirkung.

## Für den nächsten Lauf

Zwei vorgemerkte Fälle aus der Restliste: `werkhof29-zirkulaeres-bauen-stroh-lehm` (Marketing-
Dossier 2024, kein bauphysikalisches Datenblatt) und `graue-energie-betriebsenergie`
(undatierte Lehrmittel-Grobwerte). Danach Ränge 61-80 neu ranken (Ranking-Skript siehe
`wiki/QUESTIONS.md`-Eintrag von heute). E-R163-1 (ewz-Fernwärmetarif-Volltext, Geschäft 2025/525)
bleibt unverändert offen, in dieser Session nicht bearbeitet.

Geänderte Dateien: `destillate/cop-scop-jaz-waermepumpe-gruenenwald.md`, `wiki/QUESTIONS.md`,
`CHANGELOG.md`, dieser Report.
