# SIA-Sweep, dritte Fortsetzung — N-SIASWEEP-2/-3 per offiziellen SIA-Publikationsverzeichnissen datiert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** den SIA-Sweep der KB `wissen/normen` fortsetzen — die im Register
  geführten SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis
  beschaffen, Register nachführen, Destillate anlegen. Rule `normen-referenz`
  (Fundstellenpflicht) und `wissens-bibliothekar` beachten. Hinweis im Auftrag: ein
  `claude`-Prozess mit demselben Lauf-Namen ist der eigene, kein Konkurrent.
- **Vorlauf gelesen:** CHANGELOG (drei SIA-Sweep-Einträge desselben Tages) und der Report
  `outputs/2026-08-23_sia-sweep-fortsetzung2.md`.

## Befund vor der eigenen Arbeit

Die Blindzone (Abschnitt A, SIA-Zeilen ohne Datei im Haus) war laut den beiden Vorläufen
bereits vollständig geschlossen (0 von 259 Zeilen mit leerer Bestand-Abgleich-Spalte). Eigene
Prüfung von `ps aux`: keine zweite `claude`-Instanz an dieser KB, nur der eigene Prozess
(PID 46019, gestartet mit demselben Auftragstext). Die einzig verbliebene, aus dem Auftrag
tatsächlich noch offene Arbeit waren die drei nicht geschlossenen N-SIASWEEP-Fragen (-2, -3,
-4) — beide Vorläufe hatten sie mit frei zugänglichen Quellen (shop.sia.ch-Produktseiten,
Espazium-Artikelsynopsen) bereits ausführlich, aber ohne abschliessende Klärung bearbeitet.

**Zwei parallel laufende, andere Sessions** editieren dieselbe KB (VKF-Fassungssweep,
schliesst im Verlauf dieses Laufs N58-2 und N58-3 in `wiki/QUESTIONS.md`/`wiki/REGISTER.md`).
Nach jedem eigenen Schreibvorgang wurde `git diff` gelesen, nicht nur `--numstat`, um zu
verifizieren, dass die fremden Ergänzungen unangetastet blieben — waren sie in allen drei
Fällen.

## Neue Quellenart: offizielle SIA-Publikationsverzeichnisse als PDF

Die drei vorherigen Läufe stützten sich auf `shop.sia.ch`-Produktseiten (Live-HTML) und
Espazium-Fachartikel (Sekundärquelle, teils mit Datums-/Zuordnungsproblemen). Diese Fortsetzung
fand über eine gezielte Web-Recherche zwei **amtliche PDF-Kataloge** auf der SIA-eigenen
CMS-Domain (`cms.sia.ch`, nicht Shop, nicht Espazium):

- `https://cms.sia.ch/sites/default/files/2024-04/SIA-Publikationen.pdf` — trägt im Dokument
  selbst den Titel «Verzeichnis der Publikationen, Stand: 27.10.2023».
- `https://cms.sia.ch/sites/default/files/2024-05/Inhaltsverzeichnis_Normenwerk.pdf` — Datei
  intern «abo_inhalt_d», Erzeugungsdatum 03.01.2024.

Beide wurden heruntergeladen (`curl -sL`) und lokal mit `/opt/homebrew/bin/pdftotext -layout`
gelesen — **nicht** über WebFetch, dessen Zusammenfassung des binären PDFs beim ersten Versuch
unbrauchbar war («stark komprimiertes Dokument, unlesbare Zeichensequenzen»). `pdftotext` ist
auf dieser Station unter `/opt/homebrew/bin/` installiert, aber nicht im PATH dieser
Bash-Session — mit vollem Pfad aufgerufen.

Beide Kataloge sind **listenartige Momentaufnahmen** («welche Publikation gehört zum
Stichtag zum Verzeichnis, welche Ausgabe») ohne Rückzugsbegründung — sie beantworten «ist die
Norm an diesem Datum noch regulär gelistet», nicht «warum wurde sie zurückgezogen».

## Ergebnisse je Frage

**N-SIASWEEP-2 (SIA 422 «Bauzonenkapazität»):** beide Kataloge (27.10.2023 UND 03.01.2024)
führen SIA 422:2009 noch regulär. Der Shop-Befund vom 23.08.2026 (Vorlauf) zeigt sie bereits
archiviert, gültig bis 31.12.2024. Zusammen ergibt das ein Rückzugsfenster **irgendwann im
Jahr 2024, nach dem 03.01.2024** — eine echte Präzisierung gegenüber der bisherigen Spanne
«2019 bis 2024». Kein Nachfolger gefunden; bleibt offen.

**N-SIASWEEP-3, SIA-2025-Hälfte («Begriffe in Bauphysik, Energie- und Gebäudetechnik»):** der
Katalog vom 27.10.2023 führt SIA 2025:2012 noch als käufliche Publikation (CHF 100.00), der
vom 03.01.2024 nicht mehr. Das **bracket-bestätigt das Rückzugsdatum 31.12.2023** (das die
Shop-Produktseite selbst schon nannte) durch zwei unabhängige, amtliche Zweitquellen — und
löst damit die vom Vorlauf offen gelassene Verwechslungsgefahr mit dem **gescheiterten
Rückzugsversuch Ende 2014**: ein direkt abgerufener Espazium-Artikel vom 01.10.2014 belegt,
dass die Zentralkommission für Normen den Revisionsantrag damals ablehnte und die Norm im
Bestand beliess («Den Projektstart zur Revision des Merkblatts SIA 2025 … lehnte die ZN ab»).
Das sind zwei verschiedene Ereignisse (2014 gescheitert, 2023 tatsächlich vollzogen), nicht
eine einzige Meldung mit zwei Lesarten. Die exakte Begründung/ZN-Sitzung des realen
2023er-Rückzugs liess sich trotz mehrerer gezielter Espazium-Suchen und vier
Direkt-Fetches auf Kandidaten-Artikel (Juni 2024, «Beschlüsse der Zentralkommission»,
«Sitzungsergebnisse Zentralkommission», Rückzugsartikel SIA 381/3) nicht auf eine zitierfähige
Primärquelle festmachen — der KI-Websuchindex synthetisiert die Begründung («kein normativer
Charakter mehr, Widerspruch zu SIA 380:2022») konsistent über mehrere Anfragen hinweg, aber
kein direkter Fetch einer Artikel-URL bestätigte sie wörtlich. Bewusst NICHT als Fundstelle
übernommen, nur als unverändert unbelegter Kontext markiert.

**N-SIASWEEP-3, SIA-2021-Hälfte:** in keinem der beiden Kataloge vertreten (weder unter «2021»
noch unter «Glasanteil»/«Tageslicht») — konsistent mit dem bereits bekannten Rückzugsdatum
30.11.2017 (lange vor beiden Stichtagen). Reine Konsistenzprobe, kein neuer Fund.

**N-SIASWEEP-4 (GEO405-Familie, SIA 405:2025):** Gegenprobe ohne Fortschritt bei der
eigentlichen Frage (keine explizite Ablösungsformel gefunden). Beide Kataloge führen SIA 405,
SIA 2015, SIA 2016 und SIA 2045 an beiden Stichtagen noch als vier **eigenständige**
Publikationen — die Konsolidierung zu SIA 405:2025 fand also frühestens nach dem 03.01.2024
statt, passend zum bekannten Gültig-ab-Datum 01.08.2025. **Neuer, ungeklärter Nebenbefund:**
beide amtlichen Kataloge führen SIA 405 mit Ausgabejahr **2012**, während die offizielle
SIA-Webinar-Ankündigung zur neuen Norm wörtlich von «der alten Norm SIA 405:2015» spricht.
Diese Abweichung (2012 vs. 2015) ist nicht aufgelöst — möglich sind eine dem Katalog nicht
nachgetragene Zwischenausgabe 2015, ein Tippfehler auf der Webinar-Seite, oder eine Verwechslung
mit dem gleichnamigen Merkblatt SIA 2015 (unterschiedliche Numerierung: Norm 405 vs.
Merkblatt 2015). Bewusst nicht spekulativ aufgelöst, im QUESTIONS-Eintrag als offener
Nebenpunkt vermerkt.

## Register und Fragen nachgeführt

`wiki/REGISTER.md`: die drei betroffenen Tabellenzeilen (SIA 422, SIA 2025, und die
GEO405-Gegenprobe im Fliesstext von N-SIASWEEP-4) um die neue Quelle ergänzt, ohne die
bestehenden Belege zu löschen — reine Ergänzung.
`wiki/QUESTIONS.md`: neuer Kopfabschnitt (dieser Lauf) plus Ergänzungen in den drei
betroffenen Unterabschnitten N-SIASWEEP-2/-3/-4. Kein Eintrag geschlossen (anders als N-1 im
Vorlauf) — die neue Quellenart bracket-bestätigt Daten, ersetzt aber keine fehlende
Nachfolger-/Begründungsangabe.

## Keine neuen Destillate

Wie in allen drei Vorläufen: für SIA 422, SIA 2025, SIA 2021 liegt weiterhin kein Volltext im
Haus vor — es gibt nichts zu destillieren. Die beiden neu gefundenen amtlichen Kataloge wurden
bewusst NICHT nach KB-Konvention (`raw/_INGESTED.md`) abgelegt — sie sind Web-Funde wie die
bereits zitierten shop.sia.ch-Seiten, keine SharePoint-Quelle, und werden wie diese direkt per
URL in `REGISTER.md`/`QUESTIONS.md` zitiert.

## Verifikation

Nach jedem Schreibvorgang `git diff` (nicht nur `--numstat`) geprüft — bei zwei Edits waren
parallele fremde Ergänzungen in derselben Datei sichtbar (VKF-Sweep), in allen Fällen
additiv und unangetastet neben der eigenen Änderung. Eigene Änderungen: `REGISTER.md` 12
hinzugefügt/10 entfernt (zwei Tabellenzeilen ersetzt, reine Ergänzung, keine Kürzung des
Bestandstexts), `QUESTIONS.md` 130 hinzugefügt/6 entfernt (neuer Kopfabschnitt plus drei
Ergänzungen, keine Streichung fremden oder eigenen Vorlauftexts). Commit über
`nas-commit-now.sh` (nativ auf der Synology), nicht per direktem `git` über den SMB-Mount.

## Nicht geleistet / offene Bring-Schulden

- Kein Normtext gekauft oder gelesen.
- Die drei verbliebenen N-SIASWEEP-Fragen sind weiterhin **nicht geschlossen** — präziser
  datiert (N-SIASWEEP-2/-3), aber ohne benannten Nachfolger (N-SIASWEEP-2) bzw. ohne
  zitierfähige Begründung (N-SIASWEEP-3) bzw. ohne explizite Ablösungsformel (N-SIASWEEP-4).
- Die 56 Zeilen mit reinem Shop-Metadatenstand (kein Volltext im Haus, Blindzone-Statistik in
  `REGISTER.md`) sind durch diesen Lauf nicht reduziert worden — die zwei neu gefundenen
  amtlichen Kataloge datieren Rückzüge, ersetzen aber keinen Volltext.
- Naheliegender nächster Schritt für einen künftigen Lauf: die beiden amtlichen
  PDF-Kataloge sind Momentaufnahmen des GESAMTEN Normenwerks (nicht nur der drei hier
  bearbeiteten Zeilen) — ein systematischer Abgleich aller 56 «Kein Volltext im Haus»-Zeilen
  gegen diese zwei Stichtage könnte weitere Rückzugsfenster ohne Kauf/Web-Einzelrecherche je
  Norm eingrenzen. In diesem Lauf aus Zeit-/Fokusgründen nur für die drei offenen Fragen
  genutzt, nicht flächendeckend.
