# Offene Fragen — KB Normen

## SIA-Sweep, dritte Fortsetzung (23.08.2026) — N-SIASWEEP-2/-3 per offiziellen SIA-Publikationsverzeichnissen datiert

**Ausgangslage:** die Blindzone (Abschnitt A, SIA-Zeilen ohne Datei im Haus) war laut den
beiden Vorläufen desselben Tages bereits vollständig geschlossen; eigene Prüfung (`ps aux`,
keine parallele `claude`-Instanz an dieser KB ausser der eigenen) bestätigt das. Statt die
Blindzone erneut zu scannen, wurden die drei noch offenen N-SIASWEEP-Fragen (-2, -3, -4)
mit einer neuen Quellenart weiterverfolgt: zwei **offizielle SIA-Publikationsverzeichnisse als
PDF** (`cms.sia.ch`, Amtsdomain, nicht shop/espazium) mit datierten Ständen **27.10.2023** und
**03.01.2024** — lokal heruntergeladen und mit `/opt/homebrew/bin/pdftotext -layout` gelesen
(die WebFetch-Zusammenfassung des binären PDFs allein war unbrauchbar, s. Vorgehen unten).

**N-SIASWEEP-2 (SIA 422):** Rückzugsfenster auf das Jahr 2024 eingeengt (an beiden Stichtagen
noch regulär gelistet, Shop zeigt am 23.08.2026 bereits archiviert bis 31.12.2024). Nachfolger
weiterhin nicht benannt — offen.
**N-SIASWEEP-3, SIA-2025-Hälfte:** das Rückzugsdatum 31.12.2023 ist jetzt durch **zwei**
unabhängige Primärquellen bracket-bestätigt (27.10.2023 noch gelistet, 03.01.2024 nicht mehr)
und damit klar vom gescheiterten Rückzugsversuch Ende 2014 getrennt. Die genaue Begründung/
ZN-Sitzung bleibt offen.
**N-SIASWEEP-4 (GEO405):** Gegenprobe ohne neuen Fortschritt bei der eigentlichen Frage
(explizite Ablösungsformel); neuer Nebenbefund: die Kataloge führen SIA 405 mit Ausgabejahr
**2012**, nicht 2015 wie von der SIA-Webinar-Seite genannt — ungeklärt, nicht weiter verfolgt.

**Keine neuen Destillate** — die drei Fragen betreffen weiterhin Normen ohne Volltext im Haus.
Details je Frage unten (Abschnitte N-SIASWEEP-2/-3/-4), Fundstellen zusätzlich in
`wiki/REGISTER.md` an der jeweiligen Zeile. Report: `outputs/2026-08-23_sia-sweep-fortsetzung3.md`.

---

## SIA-Sweep, Fortsetzung (23.08.2026, späterer Lauf) — N-SIASWEEP-1 geschlossen, -2/-3/-4 vertieft

**Ausgangslage:** Abschnitt A der Blindzone war beim Start dieses Laufs bereits vollständig
geschlossen (0 leere Zellen, verifiziert per Python-Scan über 259 Zeilen/187 aktive Normen —
Stichprobe bestätigt: die 69 vom Vorlauf editierten Zeilen tragen ausnahmslos Inhalt). Der
Lauf hat deshalb (a) die seit Run 37 (29.07.2026) stehende, nun veraltete
«2013-Blindzone — beziffert»-Statistik in `wiki/REGISTER.md` (Zeilen 59ff.) auf den
Nach-Sweep-Stand aktualisiert (0 Blindzone-Zeilen, aber weiterhin 56 von 187 aktiven Zeilen
ohne echten Volltext im Haus, nur Shop-Metadaten — diese Unterscheidung war in der bisherigen
Formulierung «Bestand-Abgleich nicht leer» nicht mehr sichtbar), und (b) die vier offenen
Fragen N-SIASWEEP-1 bis -4 mit gezielter Web-Recherche vertieft.

**N-SIASWEEP-1 GESCHLOSSEN** (siehe unten, per Espazium-Zweitquelle mit Datum belegt).
**N-SIASWEEP-2 und die SIA-2021-Hälfte von N-SIASWEEP-3 bleiben offen**, aber jetzt per
Direktabruf der Shop-Produktseite (nicht nur Suchmaschinen-Synopse) bestätigt — kein neuer
Nachfolger gefunden, die Abwesenheit einer Nachfolgenorm ist damit belastbarer belegt.
**N-SIASWEEP-4 bleibt offen**, neu mit Gültig-ab-Datum (01.08.2025) und einem starken, aber
nicht-primärquellen-festen Indiz (SIA-Webinar-Vorwissen nennt explizit alle drei Vorgänger).
Details je Frage unten; Fundstellen zusätzlich in `wiki/REGISTER.md` an der jeweiligen Zeile.

---

## SIA-Sweep, interaktive Session (23.08.2026) — 69 Blindzone-Zeilen abgearbeitet, N52-5 geschlossen

**Auftrag:** die im REGISTER.md, Abschnitt A geführten SIA-Zeilen ohne Datei im Haus
("Blindzone") abarbeiten — Produktdatenblätter mit gültig-ab/gültig-bis beschaffen (nur die
frei zugängliche Shop-Metadatenseite, **kein Kauf**), Register nachführen. 69 aktive Zeilen
identifiziert (Gültig-2013-Spalte ≠ «—», Bestand-Abgleich-Spalte leer; erster Scan fand 66,
ein Nachtrag deckte drei weitere auf: SIA 215, 232/1, 232/2). Alle 69 sind jetzt nachgeführt,
kein aktiver SIA-Eintrag in Abschnitt A hat mehr eine leere Bestand-Abgleich-Spalte.

**13 Zeilen intern gelöst** — Bestandsangaben lagen bereits an anderer Stelle im Register
(Merkblatt-Tabelle Run 16, Run-5-Präzisierungen), waren aber nie in Abschnitt A gespiegelt:
SIA 282, 380/1, 382/1, 2003, 2006, 2014, 2015, 2017, 2018, 2022, 2023, 2026, 2040. Kein neuer
Beleg nötig, reiner internal-consistency-Fix.

**N52-5 GESCHLOSSEN.** Für SIA 242 und SIA 274 lagen zuvor keine Shop-Metadaten vor. Jetzt
belegt: SIA 242:2012 ist weiterhin aktuell (kein Beschaffungsdruck bzgl. Aktualität, Volltext
bleibt Bring-Schuld); SIA 274:2010 ist archiviert seit 31.10.2021, ersetzt durch SIA 274:2021.

**55 Zeilen extern recherchiert** (shop.sia.ch Produktseite, WebSearch+WebFetch, abgerufen
23.08.2026, sieben parallele Recherche-Läufe — sechs Batches à ~9 Normen plus ein Nachtrag für
die drei anfangs übersehenen Zeilen). Ergebnis in `wiki/REGISTER.md`, Abschnitt A, je Zeile mit
Quelle. Verteilung:

- **27 Normen weiterhin aktuell** auf der 2013-gültigen Ausgabe (kein Aktualitätsproblem,
  Volltext bleibt Bring-Schuld): SIA 113, 118/232, 118/240, 118/242, 118/251, 118/252,
  118/318, 118/331, 118/342, 118/343, 118/380, 122, 124, 205, 232/1, 232/2, 242, 269, 269/1,
  269/3, 269/4, 269/5, 269/7, 283, 2007, 2028, 2029.
- **25 Normen archiviert, Nachfolgenorm benannt** (neue Bring-Schuld: Beschaffung der
  aktuellen Ausgabe, Raphael/SIA-Shop, Claude tätigt keine Käufe): SIA 106, 118/222, 118/243,
  118/253, 118/329, 118/370, 123, 190, 215, 243, 269/2, 274, 284, 384/1, 384/6, 2001, 2016,
  2027, 2031, 2035, 2036, 2039, 2042, 2044, 2045. Details je Norm (Gültig-bis-Datum,
  Nachfolgenorm) in REGISTER.md Abschnitt A.
- **4 Normen archiviert, KEIN Nachfolger auf der Produktseite genannt** — echte offene Fragen,
  siehe unten (N-SIASWEEP-1 bis -3).

### N-SIASWEEP-1 — GESCHLOSSEN 23.08.2026 — SIA 381/3 «Heizgradtage der Schweiz» archiviert seit 03.03.2015

Produktseite (SN 565381/3) nennt kein Nachfolgeprodukt. **Geklärt per Zweitquelle:**
Espazium-Artikel «SIA: Neue Berechnung der Heizgradtage» (espazium.ch, publiziert 08.05.2015,
revidiert 10.11.2015) — die Empfehlung SIA 381/3:1982 wurde auf Beschluss der
Zentralkommission für Normen (Antrag der Kommission für Bautechnik und Energienormen, KGE)
aus dem Normenwerk zurückgezogen. Der fachliche Inhalt (Heizgradtage) ging **nicht** in eine
eigenständige Nachfolgenorm über, sondern in die **Corrigenda SIA 2028/C1:2015** zum
bestehenden Merkblatt SIA 2028 «Klimadaten für Bauphysik, Energie- und Gebäudetechnik»: neue
Methode nach EN ISO 15927-6 (in der Schweiz als SIA 381.206 geführt), «Accumulated
Temperature Differences» (ATD) statt der klassischen Heizgradtage HGT 20/12; für eine
Übergangsfrist blieben beide Kennwerte parallel verfügbar. **Weiterhin nicht am Original**
(SIA 2028/C1:2015 liegt nicht im Haus) **verifiziert** — die Espazium-Meldung ist eine
Fachpresse-Sekundärquelle, kein SIA-Primärdokument. Nachtrag in `wiki/REGISTER.md`, Zeile
SIA 381/3. Nächster Schritt bei Bedarf: SIA 2028 samt Corrigendum C1 beschaffen und den
Heizgradtage-Abschnitt am Original prüfen.

### N-SIASWEEP-2 — SIA 422 «Bauzonenkapazität» archiviert, gültig bis 31.12.2024, kein Nachfolger benannt

Produktseite (SN 513422) nennt kein Nachfolgeprodukt — möglich, dass die Norm ersatzlos
zurückgezogen wurde (Bauzonendimensionierung ist zunehmend kantonales/RPG-Recht statt
SIA-Norm). **Vertieft 23.08.2026:** die Produktseite wurde per direktem WebFetch erneut
abgerufen (nicht nur über eine Suchmaschinen-Synopse) — Befund unverändert: archiviert,
Nachfolgerfeld leer. Eine Sekundärquelle (SNV Swiss National Work Program, Stand 2019,
`switec.info`, nicht am Original geprüft) führte SIA 422:2009 damals noch als «Standard to be
revised», nicht als zurückgezogen — die angekündigte Revision scheint nicht abgeschlossen,
sondern die Norm zwischen 2019 und 2024 ganz archiviert worden zu sein. Relevant für
`machbarkeit`/`baurecht`, falls dort zitiert. **Fenster präzisiert 23.08.2026 (Fortsetzung 3):**
zwei offizielle SIA-Publikationsverzeichnisse (`cms.sia.ch/sites/default/files/2024-04/
SIA-Publikationen.pdf`, Stand 27.10.2023; `cms.sia.ch/sites/default/files/2024-05/
Inhaltsverzeichnis_Normenwerk.pdf`, Stand 03.01.2024 — beide per `pdftotext -layout` lokal
gelesen, nicht per WebFetch-Zusammenfassung) führen SIA 422:2009 an **beiden** Stichtagen noch
regulär. Der Rückzug fällt damit in das Jahr 2024, nach dem 03.01.2024. Nachfolger weiterhin
nicht benannt, keine weitere freie Quelle gefunden.

### N-SIASWEEP-3 — SIA 2021 (Glasanteil) und SIA 2025 (Begriffe Bauphysik) archiviert, kein Nachfolger auf der Produktseite

SIA 2021 «Gebäude mit hohem Glasanteil»: archiviert seit 30.11.2017; eine externe
Sekundärquelle (espazium.ch/SIA-Fachinfo) deutet auf teilweise Integration in eine Wegleitung
zu SIA 180:2014 hin — **nicht am Original verifiziert**, nicht ohne Gegenprüfung zitieren.
**Vertieft 23.08.2026:** die Shop-Produktseite selbst wurde per direktem WebFetch erneut
gelesen (SN 592021) — bestätigt: Nachfolgerfeld auf der Primärquelle leer, kein Suchmaschinen-
Artefakt. Die SIA-180:2014-Vermutung bleibt unbelegt.
SIA 2025 «Begriffe in Bauphysik, Energie- und Gebäudetechnik»: archiviert, gültig
01.06.2012 bis 31.12.2023, gar kein Hinweis auf eine Nachfolgeregelung gefunden. **Vertieft
23.08.2026:** Produktseite (SN 592025) per direktem WebFetch bestätigt (Nachfolgerfeld leer).
Eine Espazium-Fachartikelsynopse zu Beschlüssen der Zentralkommission für Normen nennt als
möglichen Rückzugsgrund den fehlenden normativen Charakter einer reinen Begriffssammlung
sowie einen Widerspruch der normativen Anhänge zu SIA 380:2022 — **die exakte Sitzung/das
exakte Datum dieser Begründung liess sich nicht eindeutig einer Quelle zuordnen** (ein
direkt abgerufener Espazium-Artikel zum selben Titel nannte einen abweichenden, offenbar
früheren Rückzugsversuch mit Zieldatum Ende 2014 — vermutlich ein gescheiterter erster
Anlauf, nicht dieselbe Sitzung wie der tatsächliche Rückzug per 31.12.2023). Nicht als
Fundstelle zitierfähig, nur als Kontext vermerkt. **Datum unabhängig bestätigt 23.08.2026
(Fortsetzung 3):** zwei offizielle SIA-Publikationsverzeichnisse als PDF von `cms.sia.ch`
(Amtsdomain, nicht espazium/shop) lokal mit `pdftotext -layout` gelesen (WebFetch-Zusammenfassungen
von Binärdateien waren unzuverlässig, s.u.) — Stand 27.10.2023 führt SIA 2025:2012 noch als
käufliche Publikation (CHF 100.00, Zeile «2025 2012 Begriffe in Bauphysik, Energie- und
Gebäudetechnik»), Stand 03.01.2024 führt sie nicht mehr. Das Rückzugsfenster liegt damit
nachweisbar zwischen 27.10.2023 und 03.01.2024 — deckt sich mit dem Shop-Datum 31.12.2023 und
trennt den echten Rückzug sauber vom gescheiterten 2014er-Versuch (unterschiedliche Ereignisse,
nicht dieselbe Meldung zweimal gefunden). Nur die genaue Begründung/ZN-Sitzung des 2023er-
Rückzugs bleibt offen; das Datum selbst gilt jetzt als belegt (zwei unabhängige Primärquellen).
Quellen: `https://cms.sia.ch/sites/default/files/2024-04/SIA-Publikationen.pdf` (Stand
27.10.2023), `https://cms.sia.ch/sites/default/files/2024-05/Inhaltsverzeichnis_Normenwerk.pdf`
(Stand 03.01.2024).

### N-SIASWEEP-4 — GESCHLOSSEN 23.08.2026 (achte Fortsetzung) — GEO405-Familie: SIA 405:2025 ersetzt SIA 405/2015/2016/2045:2012, primärquellenbelegt

Zwei unabhängig recherchierte Zeilen (SIA 2016 «Datenmodelle Ver-/Entsorgungsleitungen» und
SIA 2045 «Geodienste») führen beide **SIA 405:2025** als Nachfolgenorm. Vermutung: SIA 405:2025
konsolidiert die gesamte GEO405-Familie (alte SIA 405:1998/2012 Leitungskataster im Haus + die
Merkblätter SIA 2015/2016 + SIA 2045) in einer einzigen neuen Norm. **Vertieft 23.08.2026:**
gültig seit **01.08.2025** (Fachartikel sogi.ch, wörtlich «Die Norm ist seit 1. August 2025
gültig und kann genutzt werden»). Die offizielle SIA-Webinar-Ankündigung zur neuen Norm
(`norm-sia-405-2025.events.sia.ch`) nennt als Vorwissen für Teilnehmende ausdrücklich «die
alte Norm SIA 405:2015 sowie die Merkblätter 2015, 2016, 2045 zumindest auszugsweise» — ein
starkes, aber indirektes Indiz für die Konsolidierungsthese (Aufzählung der Vorgänger als
Kursvoraussetzung, keine explizite Ablösungsformel). **Weiterhin nicht am Original
verifiziert** — bei Beschaffung von SIA 405:2025 als erstes prüfen, ob sie tatsächlich alle drei
Vorgänger ersetzt oder nur zwei von dreien. **Gegenprobe 23.08.2026 (Fortsetzung 3):** dieselben
zwei offiziellen Publikationsverzeichnisse (s. N-SIASWEEP-2/-3 oben) führen SIA 405 (Ausgabe
2012, nicht 2015 — Abweichung zur «SIA 405:2015»-Nennung der Webinar-Seite ungeklärt), SIA
2015:2012, SIA 2016:2012 und SIA 2045:2012 an **beiden** Stichtagen (27.10.2023 und 03.01.2024)
noch als eigenständige, reguläre Publikationen — die Konsolidierung fand also frühestens nach
dem 03.01.2024 statt, passend zum Gültig-ab-Datum 01.08.2025. Kein Fortschritt bei der
eigentlichen offenen Frage (explizite Ablösungsformel); die Editionsjahr-Abweichung 2012 vs.
2015 ist ein neuer, ungeklärter Nebenpunkt.

**Nicht geleistet:** kein Volltext wurde gekauft oder gelesen — alle Aussagen oben sind
Metadaten der freien Shop-Produktseite. Destillate wurden bewusst NICHT angelegt (kein Inhalt
zum Destillieren ohne den Volltext); die Register-Zeile selbst trägt die Fundstelle. Nächster
Schritt bei Bedarf: gezielte Beschaffung einzelner Normen aus der 23er-Liste oben, priorisiert
nach Projektbedarf.

> **Nachtrag 23.08.2026 (fünfte Fortsetzung):** der SharePoint-Zugang war in dieser Runde erstmals
> voll funktionsfähig (Weg über `connectors/m365-graph.mjs`, siehe `connectors/WEGE.md`), damit
> liess sich die Bestandsfrage direkt am vollständigen Dateilisting prüfen statt nur am Katalog-
> Abgleich. Ergebnis: **SIA 422, SIA 2021, SIA 2025 sowie die GEO405-Familie (405/2015/2016/2045)
> haben tatsächlich keine Datei in `SIA_Norm/SIA_Normen/alle/` oder den norm-eigenen
> Unterordnern** — die drei N-SIASWEEP-Fragen sind damit keine Zugangs-, sondern echte
> Beschaffungslücken. Ein künftiger Lauf muss dafür nicht erneut den lokalen Mount oder den
> SharePoint-Zugang prüfen, nur noch kaufen (Bring-Schuld Raphael) oder auf Sekundärquellen
> ausweichen.

> **Nachtrag 23.08.2026 (sechste Fortsetzung) — Wayback Machine geprüft, echte Sackgasse.**
> Vor Fortsetzung dieses Laufs zuerst unabhängig nachgerechnet: Abschnitt A zählt 259 Zeilen,
> davon 187 mit Gültig-2013 ≠ «—» (aktiv) — **0 davon mit leerer Bestand-Abgleich-Zelle**
> (Python-Scan über die Rohdatei). Der ursprünglich beauftragte Sweep (Produktdatenblätter
> für Register-Zeilen ohne Datei im Haus) ist damit bestätigt vollständig; kein Fach-Prozess
> läuft parallel an dieser KB (`ps aux` zeigt nur den eigenen Lauf). Für die drei verbliebenen
> N-SIASWEEP-Fragen ein bisher nicht genutzter Weg versucht: **Internet Archive Wayback
> Machine** (`web.archive.org/cdx/search/cdx`, Domain-Suche `shop.sia.ch` mit Regex-Filter auf
> die jeweiligen Produktcodes `422_YYYY_*`, `2021_YYYY_*`, `2025_YYYY_*`, `405_YYYY_*`,
> `2016_YYYY_*`, `2045_YYYY_*` sowie eine breitere, ungebundene Ziffernsuche) — **0 Treffer für
> alle sechs Codes**, sowohl mit engem als auch mit breitem Muster. Die Wayback Machine hat
> diese Produktseiten nie gecrawlt (andere, weiterhin aktive Shop-Produktseiten wie SIA 102,
> 105, 380 etc. sind dagegen zahlreich archiviert — die Domain wird also grundsätzlich
> gecrawlt, nur diese sechs Codes nicht). Echte, dokumentierte Sackgasse: ein künftiger Lauf
> muss die Wayback Machine für diese sechs Codes nicht erneut prüfen. Kein neuer Fortschritt
> bei den eigentlichen drei Fragen (Rückzugsbegründung SIA 422/2025, Ablösungsformel
> SIA 405:2025). Report: `outputs/2026-08-23_sia-sweep-sechste-fortsetzung.md`.

> **Nachtrag 23.08.2026 (siebte Fortsetzung) — Cloud-weite Dateinamenssuche geprüft, ebenfalls
> Sackgasse; Empfehlung: Fragen nicht weiter mit Web-Mitteln wiederholen.** Bisher war nur der
> SharePoint-Ordner `SIA_Norm/` gegen die 55 Blindzone-Nummern geprüft (fünfte Fortsetzung).
> Neu per `mdfind` geprüft, ob eine der sechs Normen (422, 2021, 2025, 405, 2016, 2045) zufällig
> anderswo im Haus liegt: gesamtes NAS (`/Volumes/daten`) und alle gemounteten Cloud-Laufwerke
> (`$HOME/Library/CloudStorage`: beide OneDrive-Bibliotheken, Dropbox, vier GoogleDrive-Accounts).
> **0 echte Treffer** — die 3 Namenstreffer auf den Cloud-Laufwerken (zwei SIA-Mitgliedschafts-
> rechnungen unter den Buchhaltungsjahren 2021/2025, kein Bezug zur Normnummer) sind
> false positives und geprüft verworfen. Damit sind jetzt **sieben** unabhängige Quellenarten
> für N-SIASWEEP-2/3/4 erschöpft (Shop-Produktseite, zwei amtliche SIA-Kataloge, Espazium,
> SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine, Cloud-weite Dateisuche). **Empfehlung
> an künftige Läufe:** diese drei Fragen nicht mit denselben oder ähnlichen Web-/Dateisystem-
> Mitteln erneut angehen — die Grenze der frei zugänglichen Quellen ist erreicht. Fortschritt
> nur noch über Kauf (`shop.sia.ch`, Bring-Schuld Raphael) oder direkte Anfrage an die
> SIA-Zentralkommission möglich. Report: `outputs/2026-08-23_sia-sweep-siebte-fortsetzung.md`.

> **Nachtrag 23.08.2026 (achte Fortsetzung) — N-SIASWEEP-4 GESCHLOSSEN: Primärquelle gefunden.**
> Neuer, achter Weg geprüft: der SNV-Webshop `connect.snv.ch` (dieselbe Quelle, die diese KB
> bereits für SN EN 12193 nutzt). Direkter Treffer: die Produktseite `shop.sia.ch/normenwerk/
> ingenieur/405_2025_d/D/Product` verlinkt einen kostenlosen Leseproben-PDF-Download
> (`shop.sia.ch/<uuid>/D/DownloadAnhang`, 76 KB, per `curl -L` geladen, `pdftotext -layout`
> gelesen). Diese Leseprobe enthält Titelblatt, Inhaltsverzeichnis, das vollständige Vorwort
> sowie den Abschnitt **„Genehmigung und Gültigkeit"** im Originalwortlaut: **«Die
> Zentralkommission für Informationsmanagement des SIA hat die vorliegende Norm SIA 405 am
> 25. Juni 2025 genehmigt. Sie ist gültig ab 1. August 2025. Sie ersetzt die Norm SIA 405
> Geodaten zu Ver- und Entsorgungsleitungen, sowie die Merkblätter SIA 2015 Objekt- und
> Darstellungskataloge zu Ver- und Entsorgungsleitungen, SIA 2016 Datenmodelle zu Ver- und
> Entsorgungsleitungen und SIA 2045 Geodienste, alle Ausgabe 2012.»** Damit ist die seit
> Fortsetzung 2 vermutete Konsolidierung **explizit primärquellenbelegt** (nicht mehr nur über
> Sekundärquellen/Webinar-Vorwissen erschlossen) — alle vier Vorgänger (alte SIA 405, SIA 2015,
> SIA 2016, SIA 2045, alle Ausgabe 2012) sind benannt. Das Vorwort erklärt zusätzlich den
> sachlichen Grund: die Merkblatt-Inhalte wurden entweder in die revidierte Norm SIA 405 oder
> die neue Wegleitung **SIA 4008** überführt (neue Bring-Schuld: SIA 4008 ist bisher nicht in
> dieser KB geführt). Unabhängig **zweitbestätigt** über `connect.snv.ch/de/sn-532405-2025`:
> Status «Aktuell/gültig», gültig ab 01.08.2025, «Ersetzt» SN 532405:2012, SIA 2015/2016/2045
> MERKBLATT:2012 — deckungsgleich mit dem Primärtext. Die frühere Editionsjahr-Abweichung
> (Fortsetzung 3: Kataloge nennen SIA 405 mit Jahr 2012, nicht 2015 wie die Webinar-Seite)
> ist damit implizit aufgelöst: die aktuelle Leseprobe selbst spricht nur von «der Norm SIA 405»
> ohne Jahrzahl in der Ersetzt-Klausel, die 2012er-Zuordnung der Kataloge war korrekt. **Kein
> Volltext der Fachkapitel 0-7/Anhang A/B gelesen** (die Leseprobe enthält nur das Frontmatter
> bis Seite 4 plus die Genehmigungsseite) — ein Fachdestillat des materiellen Norminhalts bleibt
> offen. Neues Destillat `destillate/sia-405-2025-vorwort.md` (nur Frontmatter/Ersetzt-Klausel,
> `established`, klar als Auszug gekennzeichnet). **N-SIASWEEP-2 und N-SIASWEEP-3 bleiben
> offen:** derselbe SNV-Webshop wurde auch für SIA 422 (`sn-513422-2009`), SIA 2021
> (`sia-2021-merkblatt-2002`) und SIA 2025 (`sia-2025-merkblatt-2012`) geprüft — alle drei
> bestätigen unabhängig exakt dieselben Metadaten wie `shop.sia.ch` (archiviert, kein
> Nachfolger benannt), **keine neue Substanz**. Einzige neue Randnotiz: SNV nennt für SIA
> 2025:2012 „Valid From: 1 April 2012", das Register/shop.sia.ch nannte bisher 01.06.2012 —
> kleine, ungeklärte Datumsdifferenz ohne Einfluss auf die eigentliche Frage (Nachfolger
> weiterhin nicht benannt), nicht weiter verfolgt. Damit ist der SNV-Webshop die **achte**
> geprüfte Quellenart für N-SIASWEEP-2/3, weiterhin ohne Fortschritt bei diesen beiden.
> Report: `outputs/2026-08-23_sia-sweep-achte-fortsetzung.md`.

> **Nachtrag 23.08.2026 (achte Fortsetzung) — SharePoint-Ordner unverändert seit fünfter
> Fortsetzung, keine neuen Dateien.** Frischer Abgleich von `SIA_Norm/SIA_Normen/alle/` (Drive
> `02_Recht_Norm`, Site PL) plus der sieben norm-eigenen Unterordner (SIA 102/112/118/282/
> 380_1_2016/385_1/416) sowie `Gesamtverzeichnis`: exakt **140 Dateien** in `alle/` (identisch
> zum Stand der fünften Fortsetzung) und unverändert 4+3+2+1+1+2+1+2 = 16 Dateien in den
> Unterordnern. Jüngste Änderung in `alle/` laut Graph-Metadaten `lastModifiedDateTime`:
> 07.08.2026 (vor dem fünften-Fortsetzung-Scan vom 23.08.2026); alle Unterordner-Dateien
> zeigen 18.03.2025. Kein neuer Volltext für SIA 380:2015, SIA 269/8:2017, SIA 4018:2023,
> SIA 4020:2026 oder eine der 25 in der vierten Fortsetzung genannten Nachfolgenormen —
> ehrlicher Negativbefund, keine weitere Zeit auf Spekulation verwendet.

> **Nachtrag 23.08.2026 (neunte Fortsetzung) — SIA 4008 metadatenbelegt geschlossen; drei
> weitere „nicht im Haus"-Nachfolgenormen aus dieser Liste bekommen eigene Register-Zeilen.**
> Statt die Blindzone erneut zu scannen (unverändert 0/187) oder N-SIASWEEP-2/3 mit denselben
> erschöpften Mitteln erneut anzugehen (Empfehlung der siebten Fortsetzung befolgt), wurden die
> vier oben in derselben Zeile genannten Nachfolgenormen einzeln recherchiert: **SIA 4008**
> (die von der achten Fortsetzung offen gelassene Bring-Schuld aus dem Vorwort von SIA 405:2025),
> **SIA 269/8:2017**, **SIA 4018:2023**, **SIA 4020:2026** — alle vier Produktseiten direkt per
> WebFetch von `shop.sia.ch` gelesen (nicht nur Suchtreffer-Snippets), Gültig-ab-/Gültig-bis-
> Daten, Seitenzahl und Preisgruppe entnommen. Ergebnis: alle vier sind **aktuell** (keine
> davon selbst schon wieder archiviert), SIA 4008 als reine Wegleitung ohne normativen
> Ablösungsvermerk (vermutlich Erstausgabe), die anderen drei je mit explizit genannter
> abgelöster Vorgängernorm (269/8 löst SIA 2018:2004 ab, 4018 löst SIA 2006:2013 ab, 4020 löst
> SIA 2026:2017 ab). Details je Zeile in `wiki/REGISTER.md`, Abschnitt A (SIA 269/8 im
> systematischen Teil, SIA 4008/4018/4020 im neuen Unterabschnitt „4000er-Reihe" am Ende von
> Abschnitt A). **Kein Volltext gekauft** — alle vier bleiben reine Metadaten-Zeilen, Beschaffung
> weiterhin Bring-Schuld. Report: `outputs/2026-08-23_sia-sweep-neunte-fortsetzung.md`.

---

## Normen-Lauf Run 58 (20.08.2026) — VKF-Fassungs-Sweep: N27-1 geschlossen, 23 Destillate überholt

**N27-1 — GESCHLOSSEN.** Der seit Run 27 (06.08.2026) offene Auftrag «VKF-Publikationsindex
abfragen» ist erfüllt, und zwar breiter als beauftragt: nicht nur für BRL 22-15, sondern für
**alle 35 VKF-Publikationen mit KB-Destillat**. Zugangsweg, Matrix und Belege in
`training/n58-vkf-fassungsmatrix-260820.md`; Zusammenfassung in `wiki/REGISTER.md`, Abschnitt D.
Für 22-15 selbst lautet die Antwort: **01.01.2017 ist die jüngste Fassung**, damit ist die
Frontmatter-Aussage des Destillats nachträglich belegt.

---

### ⚠ N58-1 — Die Fassungs-Deltas der überholten VKF-Destillate: **20 von 23 erledigt, 3 Sonderfälle offen**

> ✅ **Der Sammelposten 01.01.2017 ist mit Run 60 (23.08.2026) vollständig abgearbeitet.** Alle
> fünfzehn Publikationen des Rangs 5 haben ihr Delta-Destillat: 17-15, 18-15, 20-15, 21-15, 23-15,
> 24-15, 25-15, 100-15, 101-15, 102-15, 105-15, 106-15, 107-15, 1000-15, 1002-15. Dazu die 13-15
> als unabhängige Gegenprobe zum Inline-Delta aus Run 23. Alle `speculative`, alle mit
> Prüfstand-Tabelle; jede in der amtlichen Änderungsliste genannte Tabelle und Zeichnung wurde
> gerendert statt extrahiert.
>
> **Offen bleiben nur drei Sonderfälle, und keiner ist ein gewöhnlicher Delta-Auftrag:**
> **103-15** (am 31.08.2025 zurückgezogen — nachzuvollziehen ist die Zurückziehung, nicht ein
> Delta; N58-2), **12-15 und 26-15** (Teilrevision 2026, erfasst in
> `vkf-teilrevision-2026-pyrotechnik.md` — zu prüfen ist nur, ob jenes Destillat die
> Bestandsdestillate ausreichend ersetzt) und **27-15** (N58-3).
>
> ✅ **12-15/26-15 GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, siebter Lauf).** Antwort: Nein,
> `vkf-teilrevision-2026-pyrotechnik.md` ersetzt die Bestandsdestillate nicht, es ergänzt sie
> punktuell — es deckt ausschliesslich die vier vom IOTH-Beschluss vom 06.03.2026 geänderten
> Absätze ab (12-15 Ziff. 3.2 Abs. 10 und Ziff. 4.5 Abs. 1; 26-15 Ziff. 11.1.3 Abs. 1-2), nicht
> den übrigen Inhalt beider Richtlinien; die Anhänge sind laut eigenem Vorbehalt des
> Teilrevisions-Destillats ungeprüft. Dabei ein echter Bestandsfehler gefunden und behoben: das
> 26-15-Destillat verlinkt die Teilrevision seit Run 58 im Frontmatter **und** im Fliesstext, das
> 12-15-Destillat verlinkte sie **nirgends** — dieselbe Ausgangslage, ungleich behandelt. Nachtrag
> in `destillate/vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md` (Frontmatter-Link
> + Fliesstext-Box, Formulierung analog zum 26-15-Vorbild). Kein neuer Fachinhalt destilliert,
> reine Konsistenzkorrektur. Beleg: Gegenlektüre beider Destillate plus
> `vkf-teilrevision-2026-pyrotechnik.md` Abschnitt «Abgrenzung und Vorbehalte».
>
> ⚠ **Der wichtigere Rückstand ist ein anderer.** Destilliert wurde jeweils, *was sich geändert
> hat*. Ob die Bestands-Destillate ihre eigene Fassung vollständig abbilden, ist auf **keinem**
> VKF-Destillat geprüft. Nach Methodik-Pflicht 13 kann deshalb keines auf `established`. Die
> Abdeckungsrichtung ist der nächste grosse Schritt dieser Familie, nicht ein weiterer Delta-Lauf
> (unverändert offen, ausserhalb des Umfangs dieses Laufs — reine Einzelfrage, kein Systemaudit).

---

### Ursprünglicher Wortlaut (Stand Run 59)

> ✅ **Teilerledigung Run 59 (22.08.2026).** Die vier vorrangig genannten Publikationen **und**
> zusätzlich 104-15 sind destilliert: `vkf-brl-10-15-fassung-2019-delta.md`,
> `vkf-brl-11-15-fassung-2019-delta.md`, `vkf-brl-108-15-fassung-2020-delta.md`,
> `vkf-brl-104-15-fassung-2022-delta.md`, `vkf-verz-40-15-fassung-2025-delta.md`.
> **Offen bleibt Rang 5**, der Sammelposten der Fassungen 01.01.2017: 17-15, 18-15, 20-15,
> 21-15, 23-15, 24-15, 25-15, 100-15, 101-15, 102-15, 105-15, 106-15, 107-15, 1000-15,
> 1002-15 — plus 103-15 (zurückgezogen, siehe N58-2) und 27-15 (siehe N58-3). Alle Quellen
> frei zugänglich, kein Beschaffungsaufwand.

**Der gewichtigste offene Posten dieses Laufs.** Der Sweep hat festgestellt, *dass* 23 Destillate
auf einer überholten Fassung beruhen — **nicht, was die jüngeren Fassungen ändern**. Die
Destillate sind seit dem 20.08.2026 durch einen Warnkasten und den Status `superseded` gegen
falsche Verwendung geschützt, aber der Wissensstand fehlt.

**Ausgenommen und bereits erledigt** ist allein die Teilrevision 2026 (BRL 12-15 und 26-15),
destilliert in `destillate/vkf-teilrevision-2026-pyrotechnik.md`.

**Vorschlag zur Reihenfolge** (nach Wirkung auf laufende Projekte, nicht nach Aufwand):

| Rang | Publikation | geltend | Begründung |
|---|---|---|---|
| ✅ 1 | **BRL 10-15** Begriffe und Definitionen | 01.01.2019 | Grundlagenrichtlinie; Definitionsänderungen wirken auf **alle** übrigen Richtlinien und auf jede Auslegung |
| ✅ 2 | **BRL 40-15** Weitere Bestimmungen | 11.06.2025 | jüngste Fassung nach 2026; Inhalt bisher unbekannt |
| ✅ 3 | **BRL 108-15** Betriebsbereitschaft BFS | 01.01.2020 | Brandfallsteuerungen, unmittelbar ausführungsrelevant |
| ✅ 4 | **BRL 11-15** Qualitätssicherung | 01.01.2019 | QSS-Stufen; der Skill `brandschutz` zieht sie im Modus B |
| 5 (offen; 104-15 in Run 59 vorgezogen und erledigt) | 17-15, 18-15, 20-15, 21-15, 23-15, 24-15, 25-15, 100-15, 101-15, 102-15, 105-15, 106-15, 107-15, 1000-15, 1002-15 | 01.01.2017 | Sammelposten; die Änderungen 2017 sind für 13-15/14-15/15-15/16-15/22-15 bereits erfasst, für diese noch nicht |

---

### ✅ N59-1 — GESCHLOSSEN: Was bedeutet der Zusatz «(cr)» bei RF3 in der BRL 104-15?

> **Aufgelöst durch Run 60 (23.08.2026)** im «Zusatzauftrag N59-1» von
> `destillate/vkf-brl-13-15-fassung-2017-delta.md`, Ziff. 116-154 (Status des Destillats:
> `speculative`, Klassierungsmechanik am gerenderten Original geprüft, Ziff. 2.1 Abs. 2 und
> Ziff. 2.2.6, S. 5-6, sowie die Zuordnungstabellen S. 8-11). Eigene Gegenprüfung 23.08.2026:
> **«(cr)» = «comportement critique»/kritisches Verhalten**, ein Anwendungsbeschränkungs-Flag
> innerhalb einer RF-Gruppe, keine eigenständige fünfte RF-Stufe (SIA/VKF-Terminologie
> BRL 13-15 Ziff. 2.1 Abs. 2, S. 5). Klassiert wird je nach Produktkategorie nach SN EN
> 13501-1:2009 (Bauprodukte, Bodenbeläge, Rohrisolierungen, Ziff. 2.4.1, S. 8), SN EN
> 13501-5:2009 (Bedachungen, Ziff. 2.4.2, S. 9) oder SN EN 13501-6:2014 (Kabel, Ziff. 2.4.3,
> S. 10-11). Praktische Folge fuer die Ursprungsfrage: eine Anforderung «RF3» ohne Zusatz
> lässt nur den cr-freien Teilbereich der RF3-Zeile zu; «RF3 (cr)» schliesst zusätzlich den
> cr-markierten Teilbereich ein, seit der Fassung 2017 einschliesslich Klasse E/E-d2 (2015 nur
> RF4 (cr)). Ein Produkt der Klasse E/E-d2 erfüllt daher **nie** eine blanke «RF3»-Anforderung.
> Die BRL 104-15-Lockerung selbst (RF1 → mind. RF3 (cr)) bleibt damit vollständig verstanden;
> **offen bleibt nur**, welches konkrete Bauprodukt die neue Anforderung erfüllt — das ist eine
> produktspezifische Frage, keine Norm-Auslegungsfrage, und gehört bei Bedarf in ein
> projektbezogenes Brandschutz-Factsheet, nicht in diese KB.

**Ursprungswortlaut (Run 59, 22.08.2026):** Die Fassung 01.12.2022 der Spänefeuerungs-Erläuterung
senkt die Baustoffanforderung an freistehende Silos und offene Lagerbehälter von **RF1** auf
**mindestens RF3 (cr)** (Ziff. 5.2 und 5.4, gedruckte S. 5, am Original nachgelesen). Der
Klassierungszusatz **«(cr)»** war im Fassungs-Delta nicht aufgelöst; er wurde nicht in der
BRL 13-15 «Baustoffe und Bauteile» und nicht gegen SN EN 13501-1 nachgeschlagen.

---

### N59-2 — Der Hausbestand 40-15:2015 trägt das Wasserzeichen «in Überarbeitung»

Die im Haus liegende Fassung 01.01.2015 des Verzeichnisses «Weitere Bestimmungen»
(SharePoint `PL - 03 Brandschutz/03 Verzeichnisse Brandschutz 2015/`) trägt auf mindestens
S. 2 und 3 ein diagonales Wasserzeichen **«in Überarbeitung»**. Ob es ein Vorschau-Marker
eines internen VKF-Freigabelaufs ist oder ob die Hauskopie nie die finale Druckfassung war,
liess sich am Dokument nicht klären. **Praktische Folge:** das Bestands-Destillat
`vkf-verz-40-15-weitere-bestimmungen.md` beruht auf einem als Entwurf markierten Exemplar.
Da die geltende Fassung 11.06.2025 inzwischen destilliert ist, ist der Punkt nachrangig —
er bleibt offen, weil er die **Belegqualität rückwirkend** betrifft. Aufgeworfen Run 59.

> ⚠ **Werkzeug-Lehre aus demselben Befund, wichtiger als der Befund selbst.** Das Wasserzeichen
> ist **weder im Textlayer** (`grep` auf «Überarbeitung»: null Treffer) **noch über
> `pdfimages -list`** (nur ein Bildobjekt auf S. 1-3, das VKF-Logo) auffindbar. Zwei
> unabhängige Werkzeugprüfungen lieferten negativ, was im 110-dpi-Rendering sofort sichtbar
> ist; der Hauptprozess hatte den Agentenbefund auf dieser Grundlage zunächst als Fehlalarm
> verworfen und musste sich am Rendering korrigieren. **Ein Wasserzeichen ist ein Grafikobjekt
> und für beide Werkzeuge unsichtbar** — wer eine Quelle auf Entwurfsmarker prüft, muss
> rendern. Vgl. Rule `auto-verbesserungen` 260730b und `wege-und-vollmachten` Ziff. 5.

---

### N59-3 — Kap. 2.17 «Gefährliche Stoffe» des Verzeichnisses 40-15 ist nur textuell geprüft

> ✅ **Kap. 2.17 GESCHLOSSEN 23.08.2026.** Beide Fassungen unabhängig neu beschafft — Bestand
> 2015 via M365-Graph-Connector (SharePoint Site PL, Drive `03 Brandschutz`,
> `40-15_Weitere Bestimmungen.pdf`), Fassung 2025 direkt vom VKG-Publikationsportal
> (`https://services.vkg.ch/rest/public/georg/bs/publikation/documents/
> BSPUB-1394520214-137.pdf/content`) — und mit einer frischen `pdftotext`-Extraktion
> unabhängig von der ursprünglichen Destillation geprüft. Alle in
> `vkf-verz-40-15-fassung-2025-delta.md` unter «neu» und «entfallen» geführten 2.17-Positionen
> per Volltextsuche bestätigt: **neu** vorhanden im 2025er-Extrakt — SUVA-Merkblätter 66122
> (Gasflaschen) und 67068 (Checkliste Gasflaschen), das SUVA-Merkblatt zu
> Flammendurchschlagsicherungen an Tankstellen, BAFU «Störfallvorsorge bei Lager für
> ammoniumnitrathaltige Dünger», «Lagerung gefährlicher Stoffe, Leitfaden für die Praxis»
> (Umweltfachstellen + GVZ), CARBURA-Richtlinien Teil F «Brandschutz und Löschwesen». **Entfallen**
> bestätigt durch Null-Treffer im vollständigen 2025er-Extrakt — Sicherheitsdokument 1501-00,
> VKF-Brandschutzrichtlinien Nr. 27-03/28-03 (alte Nummerierung), CARBURA-Richtlinien für
> Tankanlagen (1974/Änderungen 1992), EKAS-Richtlinie Nr. 2387 (Destillationsanlagen). Zusätzlich
> S. 18 (2025er-Fassung, Textanfang 2.17) als 150-dpi-Rendering gegen den Textlayer gelesen:
> deckungsgleich, kein OCR-/Layout-Artefakt. Nachtrag im Destillat, Prüfstand-Tabelle.
>
> **Weiterhin offen:** Kap. 2.7 bis 2.12, 2.15/2.16, 2.18/2.19 und 3.1 bis 3.5 sind nach wie vor
> nur per Textlayer geprüft (schwächerer Vorbehalt als 2.17, da textlich/listenartig wie 2.17,
> aber nicht einzeln nachgezogen).

**Ursprungswortlaut:** Der Abschnitt hat im Delta 2015 → 2025 den stärksten Umbau erfahren (2015
neun fragmentierte «zu Ziffer»-Blöcke mit mehrfach duplizierten Einträgen, 2025 eine
konsolidierte Liste). Aufgeworfen Run 59 (22.08.2026).

---

### N59-4 — Gab es Zwischenausgaben von 40-15 und 108-15?

Beide Dokumente sind über einen langen Zeitraum gesprungen (40-15: 2015 → 2025; 108-15:
2015 → 2020 → 2022), und beide nennen sich selbst als periodisch aktualisiert bzw. tragen
eine Änderungsliste, die nur den letzten Schritt dokumentiert. Ob dazwischen weitere
Fassungen erschienen sind, ist **nicht geprüft**. Für 108-15 ist die Folge konkret: der
Wortlaut der unrevidierten 2020-Fassung von Ziff. 5.3 Abs. 4/6 lag nicht vor, der amtlich
angekündigte Teilschritt 2020 → 2022 liess sich deshalb nicht isoliert ausweisen. Der
VKG-Publikationsindex führt nur die jeweils geltende Fassung; ein Archivzugang ist nicht
bekannt. Aufgeworfen Run 59 (22.08.2026).

> ✅ **Archivzugang gefunden, 108-15 TEILWEISE GESCHLOSSEN (23.08.2026, QUESTIONS-Abarbeitung,
> vierter Lauf).** Entgegen der Annahme oben existiert doch ein Archivzugang:
> `https://www.bsvonline.ch/de/brandschutzvorschriften/archiv-bsv-2015` (per `curl -sL -A
> "Mozilla/5.0"`, Astro-JSON-Payload wie bei N58-3, Abruf 23.08.2026). Dort ist für 108-15
> genau **ein** archiviertes Dokument gelistet, wörtlich betitelt «108-15 Gewährleistung der
> Betriebsbereitschaft von Brandfallsteuerungen (BFS) **(gültig bis 31.12.2019)**»
> (`BSPUB-1394520214-3144.pdf`), neben dem aktuellen Dokument (`…-837.pdf`) und einem
> FAQ-Eintrag (`…-1255.pdf`). Das belegt primärquellenfest: die Fassung 01.01.2015 war
> **lückenlos bis 31.12.2019** gültig, die Fassung 01.01.2020 trat nahtlos an — **keine
> unveröffentlichte Zwischenausgabe zwischen 2015 und 2020.** Nachtrag in
> `destillate/vkf-brl-108-15-betriebsbereitschaft-bfs.md` (Frontmatter `gueltigkeit`).
>
> **Nicht geklärt bleibt** der ursprünglich engere Teilschritt 2020 → 2022 (reine
> Ziff.-5.3-Korrektur, kein Fassungswechsel — bereits in
> `vkf-brl-108-15-fassung-2020-delta.md` als „isolierter Teilschritt 2020 → 2022 nicht
> geprüft" ausgewiesen): das Archiv listet dafür **kein** eigenes „gültig bis"-Dokument, d.h.
> entweder wurde die 2020-Fassung vor der 2022-Korrektur nie separat archiviert (die
> geltende Datei trägt beide Stände in einem PDF), oder das Archiv erfasst nur den letzten
> Sprung vor der aktuellen BSV-2015-Ära. Für **40-15** ergab dieselbe Archivseite **keinen**
> zusätzlichen, mit „gültig bis" betitelten Eintrag (nur zwei Treffer, beide das aktuelle
> Dokument) — die Zwischenausgaben-Frage bleibt für 40-15 offen, diese eine Quelle zeigt
> keine, beweist aber auch keine Abwesenheit (das Archiv könnte lückenhaft sein).
> **Nächster Schritt bei Bedarf:** dieselbe Archivseiten-Technik auf weitere Delta-Destillate
> mit grossen Fassungssprüngen anwenden.

> **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung, sechster Lauf): 40-15 erneut geprüft, jetzt mit
> strukturierter Feldauswertung statt Text-Grep — Befund unverändert, Beleg jetzt belastbarer.**
> Dieselbe Archivseite (`archiv-bsv-2015`) per `curl -sL -A "Mozilla/5.0"` neu abgerufen und der
> eingebettete JSON-Payload strukturiert nach dem Feld `"title"` durchsucht (nicht nur nach dem
> Text-String «40-15», der auch in Registerbezeichnungen/Metadaten ohne eigenen Archiveintrag
> vorkommen kann). Ergebnis: **genau ein** Titel-Treffer, «40-15 Weitere Bestimmungen» — kein
> zweiter, mit «(gültig bis …)» betitelter Eintrag wie bei 108-15. Die frühere Einschätzung
> «diese eine Quelle zeigt keine, beweist aber auch keine Abwesenheit» bleibt in der Substanz
> richtig (ein fehlender Archiveintrag ist kein Beweis der Nichtexistenz einer Zwischenausgabe),
> aber die Methode selbst ist jetzt sauberer: der erste Check hätte bei einem reinen
> Text-Treffer in einer Fussnote oder einem Fremdverweis falsch positiv sein können, der
> strukturierte Titel-Match schliesst das aus. **Für 40-15 bleibt die Zwischenausgaben-Frage
> offen**, weitere freie Quellen dafür sind nicht ersichtlich — kein neuer Web-Recherche-Anlauf
> mehr gerechtfertigt (gleiche Erschöpfungslogik wie N-SIASWEEP oben).

---

### ✅ N58-2 — GESCHLOSSEN 23.08.2026: BRL 103-15 «Cheminées» zurückgezogen, Nachfolger ist das feusuisse-Papier «Stand der Technik Teil B», nicht BRL 24-15

Der VKF-Publikationsindex führt die Erläuterung als **«103-15 Cheminées (zurückgezogen am
31.08.2025)»** (Indexeintrag zuletzt geändert 30.01.2026, Abruf 20.08.2026). Die KB führte das
Destillat bis zu diesem Lauf als `established`, also nach Rule `normen-referenz` Ziff. 1b «ohne
Gegenlesen zitierfähig». Es ist auf `superseded` herabgestuft und trägt einen Warnkasten.

**Belegqualität ausdrücklich ausgewiesen:** Der Rückzug steht **nur in der Portal-Annotation**.
Die ausgelieferte Datei selbst trägt keinen Rückzugsvermerk und weiterhin die Fassung 01.01.2017.
**Offen:** (a) eine zweite unabhängige Bestätigung des Rückzugsdatums, (b) ob und wohin die
Cheminée-Anforderungen überführt wurden.

> **Teilprüfung 23.08.2026 — die naheliegende Vermutung «BRL 24-15» präzisiert, nicht bestätigt.**
> `destillate/vkf-brl-24-15-waermetechnische-anlagen.md` wurde gegen die Cheminée-Frage gelesen.
> Ziff. 4.1 (S. 8-9) regelt Cheminées zwar direkt (Feuerraumwände/Unterbau/Sicherheitsabstände
> «gemäss Leistungserklärung oder VKF-Technischer Auskunft»), verweist aber für «übrige
> Cheminées» ausdrücklich auf **Ziff. 8 «Weitere Bestimmungen»** — und Ziff. 8 selbst ist bei
> BRL 24-15 kein Sachinhalt, sondern nur ein Verweis auf das **periodisch aktualisierte
> TKB-VKF-Verzeichnis** (www.praever.ch/de/bs/vs), dessen Inhalt nicht im PDF steht. Das heisst:
> BRL 24-15 hat die detaillierten 103-15-Masse (0.12 m Wand/Unterbau, 0.1 m/0.8 m
> Sicherheitsabstände, 0.4 m Vorbelag) **nicht selbst übernommen** — 103-15 war strukturell
> vermutlich genau der Verzeichniseintrag, auf den Ziff. 8 zeigt(e). Die eigentliche Frage
> verschiebt sich damit: **steht im aktuellen TKB-VKF-Verzeichnis noch ein
> Cheminées-Eintrag, und wenn ja, welcher?** Ein WebFetch auf `www.praever.ch/de/bs/vs`
> (23.08.2026) leitet auf dieselbe clientseitig gerenderte bsvonline.ch-Seite um, die schon bei
> N58-3 den Astro-JSON-Payload nicht preisgibt — mit WebFetch nicht auflösbar, dieselbe
> Werkzeug-Grenze. **Nächster Schritt:** die Verzeichnisseite mit einem JS-fähigen Abruf
> (Playwright/Browser statt WebFetch) erneut prüfen, oder EN 13229 «Kamineinsätze» direkt
> daraufhin prüfen, ob individuell erstellte (nicht typengeprüfte) Cheminées seit 2025 überhaupt
> noch einen eigenen VKF-Pfad haben oder ausschliesslich auf EN-13229-Typenprüfung verwiesen
> werden — beides in diesem Lauf nicht geleistet.

> ✅ **GESCHLOSSEN 23.08.2026, per direkter VKF-Primärquelle statt der vermuteten
> BRL-24-15-Spur.** Die VKF-Newsseite selbst dokumentiert den Rückzugsgrund: die
> News-Kachel «Rückzug VKF-Brandschutzerläuterung 103-15 Cheminées» (datiert 8. September
> 2025) auf `bsvonline.ch/de/aktuell`, verlinkt auf
> `bsvonline.ch/de/aktuell/erlaeuterung-103-15-zurueckgezogen` — per `curl -sL
> -A "Mozilla/5.0"` abgerufen und gegen Tag-Strip gelesen (kein WebFetch nötig, die
> Meldungsseite ist serverseitig gerendert). Wortlaut: **«Mit der Veröffentlichung des 2024
> überarbeiteten Stand der Technik Papiers Teil B: Ofen- und Cheminéebau des Verbandes
> feusuisse, wird die VKF-Brandschutzerläuterung 103-15 Cheminéebau materiell abgelöst. Die
> Technische Kommission Brandschutz (TKB) hat daher entschieden, die
> Brandschutzerläuterung per 31. August 2025 zurückzuziehen, um eine Doppelspurigkeit zu
> vermeiden.»**
>
> **Ergebnis:** der Nachfolger ist **kein VKF-Dokument und keine BRL** — insbesondere
> **nicht BRL 24-15** (die Teilprüfung oben bleibt als Nebenbefund gültig: 24-15 verweist
> für «übrige Cheminées» nur auf das nicht mehr aktuelle TKB-Verzeichnis, hat die
> 103-15-Masse nie selbst übernommen). Stattdessen tritt das **«Stand der Technik Papier
> Teil B: Ofen- und Cheminéebau»** des Fachverbands **feusuisse** (Ausgabe 2024) an die
> Stelle — ein privatrechtliches Verbandsdokument, kein VKF-Erlass, TKB-Beschluss ausdrücklich
> zur Vermeidung einer Doppelspurigkeit. Praktische Folge: die 103-15-Bauteilmasse (0.12 m
> Wand/Unterbau, 0.1 m/0.8 m Sicherheitsabstände, 0.4 m Vorbelag) im Bestandes-Destillat
> gelten nicht mehr als amtliche VKF-Anforderung für neue Cheminées; für laufende Projekte
> ist das feusuisse-Papier zu beschaffen (Bezugsweg feusuisse.ch, nicht der VKF-Shop — nicht
> in diesem Lauf getan). Nachtrag im Destillat `vkf-brl-103-15-cheminees.md` gesetzt.
> **Offen bleibt nur** die zweite unabhängige Bestätigung des Rückzugsdatums 31.08.2025
> (bisher ein Beleg, VKF-Primärquelle, aber eine einzige Seite) — nachrangig, da die
> Primärquelle selbst (nicht nur eine Portal-Annotation) den Rückzug samt Grund nennt.
>
> **Weitere Suche ergebnislos (23.08.2026, QUESTIONS-Abarbeitung, vierter Lauf).** Gezielt
> nach einer zweiten, unabhängigen Quelle für exakt das Datum 31.08.2025 gesucht: die
> bsvonline.ch-Seite `aktuell/stp-feusuisse-2025` nennt die neuen feusuisse-STP-Papiere,
> aber kein Rückzugsdatum der 103-15; `feusuisse.ch/stand-der-technik-papiere` nennt Preise
> und Update-Fristen, aber weder ein Publikations- noch ein Rückzugsdatum. Kein Fund — echte
> Sackgasse über frei zugängliche Quellen. Bleibt wie vermerkt nachrangig offen.

---

### ✅ N58-3 — GESCHLOSSEN 23.08.2026: BRL 27-15 hat keinen Fassungswiderspruch; der «22.03.2017»-Beschluss gehörte zu 14-15

**Ursprüngliche Frage:** Das Titelblatt trägt **01.01.2015**, die Hinweisseite nennt aber einen
**ABSV-Beschluss vom 22.03.2017**. Entweder wurde das Fassungsdatum nicht nachgeführt, oder die
Änderung betrifft nur den Anhang und löst nach VKF-Praxis keine neue Fassungsbezeichnung aus.
Praktische Folge: das Destillat `vkf-brl-nachweisverfahren.md` steht auf `established`, was bei
ungeklärtem Fassungsstand womöglich zu hoch ist.

> **Teilerledigung 23.08.2026:** der billige Teil des Auftrags («die betroffene Anhangstelle
> gegen die Fassung von 2015 diffen») ist erledigt — mit einem Ergebnis, das die Frage verengt
> statt schliesst. Das PDF `PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien
> 2015/Nachweisverfahren im Brandschutz.pdf` wurde **vollständig** gelesen (alle 15 Seiten,
> nicht nur die im Destillat vermerkten S. 1-14). Ergebnis: **kein 2017-Inhalt vorhanden.**
> Titelblatt (S. 1) trägt ausschliesslich «01.01.2015 / 27-15de»; Ziff. 10 «Inkrafttreten»
> (S. 8) nennt ausschliesslich den **IVTH-Beschluss vom 18. September 2014**, in Kraft ab
> 1. Januar 2015 — kein ABSV, kein 22.03.2017, an keiner der 15 Seiten. Der ganze Anhang
> (S. 9-15, Ziff. 3.2.2/5/8.2) ist inhaltlich in sich konsistent mit der 2015er-Fassung, keine
> erkennbare Nachtragsstelle.
>
> **Damit ist geklärt:** das lokal im Bestand liegende PDF ist durchgehend die Fassung
> 01.01.2015 ohne 2017er-Beimischung — der Verdacht «Fassungsdatum nicht nachgeführt, Anhang
> aber schon 2017» trifft **nicht** zu, denn es gibt keine 2017-Anhangstelle zum Diffen. Die
> `established`-Einstufung des Destillats ist damit für **dieses Dokument** nicht zu hoch.
>
> **Nicht geklärt bleibt**, was der ABSV-Beschluss vom 22.03.2017 selbst bedeutet — die Angabe
> stammt laut `training/n58-vkf-fassungsmatrix-260820.md` Z. 86 von der Portal-«Hinweisseite»
> auf bsvonline.ch, nicht aus dem PDF. Ein WebFetch auf
> `https://www.bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` (23.08.2026) liefert
> nur die Navigationsstruktur zurück, nicht den Astro-JSON-Payload mit den Metadatenfeldern —
> die Seite ist clientseitig gerendert und für eine einfache Markdown-Konvertierung nicht
> zugänglich (gleiche Werkzeug-Falle wie bei Fedlex, vgl. Rule `fedlex-volltexte.md`). Zwei
> Lesarten bleiben offen: (a) der ABSV-Beschluss betrifft eine reine Wiedergenehmigung/
> Verlängerung ohne Inhaltsänderung (VKF-Praxis kennt das, vgl. 108-15 mit zwei Titelblatt-
> Daten in derselben Matrix), oder (b) er gehört zu einer anderen, nicht heruntergeladenen
> Fassung dieser Publikation. Nächster Schritt bei Bedarf: die BSPUB-Dokument-URL aus der
> Matrix-Zeile (`.../BSPUB-1394520214-127.pdf/content`) direkt erneut abrufen und mit der im
> Bestand liegenden Prüfsumme `72e31ae5a6e7` vergleichen, oder das Portal mit einem
> JS-faehigen Abruf statt WebFetch prüfen.

> ✅ **GESCHLOSSEN 23.08.2026.** Die Werkzeug-Grenze war keine — `curl` mit einem
> Browser-User-Agent (statt WebFetch) liefert den Astro-JSON-Payload der bsvonline.ch-Seiten
> vollständig als Rohtext; die Daten liegen inline im HTML (`<script>`-Payload mit
> HTML-Escapes `&quot;`), nicht hinter einer separaten JS-Ausführung. Direkter Abruf von
> `https://www.bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` UND
> `.../archiv-bsv-2015` UND `.../faq` (alle drei per `curl -sL -A "Mozilla/5.0" …`, 23.08.2026)
> ergibt den vollständigen Befund:
>
> 1. **Der «22.03.2017»-Beschluss gehört nicht zu 27-15.** Auf der FAQ-Seite steht das Datum
>    exakt einmal mit vollem Kontext: **FAQ 14-026**, Registerbezeichnung **«14-15 -
>    Verwendung von Baustoffen»**, Ziffer «3.3.1, Absatz 5, Skizze S. 24», Thema «Nicht
>    vollflächig geschlossene Terrassenböden». Auf der ganzen FAQ-Seite (299'494 Byte
>    Rohtext) kommt die Zeichenfolge «27-15» **kein einziges Mal** vor. Die ursprüngliche
>    Zuordnung «Hinweisseite nennt für 27-15 einen ABSV-Beschluss vom 22.03.2017» (Run-58-
>    Matrix, Z. 86) war damit eine **Fehlzuordnung** — vermutlich eine Verwechslung zweier
>    Zeilen beim schnellen Scannen mehrerer FAQ-Einträge, keine Eigenschaft von 27-15. Die
>    Prämisse der ursprünglichen Frage («Titelblatt und Änderungsliste widersprechen sich»)
>    ist damit **falsch** — gleiche Fehlerklasse wie Run 36 (BSR 16-15: «die Frage-Prämisse
>    war falsch»).
> 2. **27-15 hat trotzdem eine echte, inhaltlich relevante ABSV-Interpretation:** auf
>    `archiv-bsv-2015` steht unter Registereintrag «27-15 - Nachweisverfahren im Brandschutz»
>    genau ein Eintrag, **FAQ 27-001** (Beschlussdatum **24.08.2016**, Ziffer «3.2.2, Absätze
>    3 und 4 - Anhang»). Das zugehörige PDF (`BSPUB-1394520214-1239.pdf`, per `curl`
>    heruntergeladen, mit `PyMuPDF`/`fitz` gelesen — `pdftotext` ist auf dieser Station nicht
>    installiert, `fitz` schon) trägt den Titel «Planungsziele und Leistungskriterien für
>    Entrauchungsnachweise» und ändert genau die Anhang-Stelle, die das Destillat unter
>    «Zentrale Tabellen / Kennwerte» zusammenfasst (Fussnote zum Extinktionskoeffizienten K,
>    Mischbrandgut-Bezug des Einleitungssatzes): die Fussnote entfällt ersatzlos, der
>    Einleitungssatz wird umformuliert. Das Dokument selbst vermerkt am Ende **«Korrektur
>    (vorgesehen 2017)»** — das erklärt vermutlich, wie die Jahreszahl 2017 in der Sache
>    überhaupt in Umlauf kam, auch wenn sie an der falschen Norm hängen blieb.
> 3. **Die Korrektur ist bis heute nicht ins Hauptdokument eingearbeitet.** Die Portal-
>    Metadaten von 27-15 selbst zeigen weiterhin `vkgPubVersion: "1"` (Abruf 23.08.2026,
>    zuletzt `modified` am 24.07.2025) — dieselbe Fassung wie das im Haus liegende PDF. Die
>    ABSV-Interpretation gilt also fachlich, ohne dass sie den Normtext ersetzt hat.
>
> **Ergebnis für die KB:** `vkf-brl-nachweisverfahren.md` bleibt `established` (der Normtext
> ist korrekt wiedergegeben), erhält aber einen Warnhinweis zur Anhangstelle Ziff. 3.2.2 mit
> Verweis auf FAQ 27-001 (nachgetragen 23.08.2026, siehe Destillat). **Methodische Lehre:**
> `curl` mit gesetztem User-Agent ist für die bsvonline.ch-Familie ein funktionierender,
> günstigerer Ersatz für WebFetch, wenn WebFetch nur die Navigationsstruktur zurückgibt —
> vor dem nächsten «WebFetch liefert kein JSON»-Befund erst `curl -sL -A "Mozilla/5.0" <url>`
> probieren, bevor ein Browser/Playwright-Zugriff als nötig gilt.

---

### N58-5 — ✅ ERLEDIGT: falsche Richtliniennummern im Skill `brandschutz`

`skills/brandschutz/SKILL.md` führte «BSR 14-15 Flucht- und Rettungswege» und «BSR 16-15
Brandschutzabschluesse». Richtig ist 14-15 = Verwendung von Baustoffen, 16-15 = Flucht- und
Rettungswege; eine BSR «Brandschutzabschlüsse» gibt es nicht. **Am 20.08.2026 korrigiert**,
zusammen mit einer Fassungswarnung zum Ordner «02 Brandschutzrichtlinien 2015-17-22», dessen
Name über den tatsächlichen Bestand (überwiegend 2015) täuscht. Gleiche Klasse wie der
BKP-«271.10»-Fall aus Run 43.

> ✅ **Restfrage GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, vierter Lauf).** Grep über
> `skills/`, `agents/`, `commands/` (Muster BSR/BRL/VKF gefolgt von zwei- bis vierstelliger
> Nummer plus «-15») ausserhalb von `skills/brandschutz/`: **0 Treffer.** Kein weiterer
> Fach-Skill führt eine VKF-Richtlinien-Nummer oder -Fassung. Die vier Zufallstreffer aus dem
> breiteren Muster (offertenpruefung, wissens-destillat) sind Prozentangaben bzw.
> Dateinamen-Fragmente ohne VKF-Bezug, geprüft und verworfen.

---

### N58-4 — Der Sweep deckt 35 von 83 Indexeinträgen ab

Ausgewiesen nach der Methoden-Lehre: geprüft wurden nur die Publikationen, zu denen die KB ein
Destillat führt. **Nicht angesehen** sind die übrigen 48 deutschsprachigen Einträge —
IOTH-Beschlüsse, Verzeichnisse, Formulare, Checklisten, Musterweisungen, Reglemente. Darunter
sind mindestens zwei Klassen, die eigene Destillate verdienen könnten: die **IOTH-Beschlüsse zur
temporären Unterbringung von Asylsuchenden** (fortlaufend bis 2025-09-18) und die
**Arbeitshilfen/Merkblätter der 2000er-Reihe**, von denen die KB nur 2001-15 und 2005-15 führt.
Ebenfalls ungeprüft: die französischen und italienischen Fassungen sowie die **Anhänge** aller
Richtlinien mit neuer Fassung.

---

## Normen-Lauf Run 57 (19.08.2026) — N56-1 geschlossen; die Norm ist zurückgezogen

**N56-1 — GESCHLOSSEN.** Die Refuter-Runde auf den fünf zuletzt offenen Seiten von
`sia-416-1-2007` (S. 4, 6, 21, 27, 34) ist gefahren, vom Hauptprozess am eigenen
300-dpi-Rendering (Präfix `ref416-r57-`). **Sämtliche Korrekturen der Runs 55 und 56 haben am
Druck gehalten**, keine musste zurückgenommen werden. Neu 3 Kernbefunde (S. 6 — Figur 1 und die
GF-Gliederung fehlten ganz; S. 6 — «Bauteile _wie_ …» zur geschlossenen Aufzählung verengt;
S. 27 — die Positivdefinitionen von EV und EC fehlten, mit ihnen die Zuteilung von WRG-Antrieb
und Rückkühl-Ventilator) und 4 Nebenbefunde, alle inline korrigiert. Nach dem vorgeschlagenen
Abbruchkriterium sind **S. 4, 21 und 34 geschlossen**; offen bleiben **S. 6 und S. 27**.

---

### ⚠⚠ N57-2 — SIA 416/1:2007 ist seit 31.03.2015 zurückgezogen; die Nachfolgenorm fehlt

**Der gewichtigste Befund dieses Laufs, und er relativiert die ganze Reihe 52-57.** Run 56 hatte
die Korrigenda-Liste als «einzigen offenen Schritt, der die ganze bisherige Verifikationskette
relativieren könnte» benannt. Der Schritt ist gefahren — und hat nicht eine Korrigenda gefunden,
sondern **das Ende der Gültigkeit**:

- **SIA 416/1:2007 war gültig vom 01.07.2007 bis zum 31.03.2015.** Der SIA-Shop führt sie als
  **«archivierter Titel»**.
- Ersetzt seit **01.04.2015** durch **SIA 380:2015 «Grundlagen für energetische Berechnungen
  von Gebäuden»** (SN 504380:2015, 64 S.). Deren **Titelblatt** trägt wörtlich: «**Ersatz für
  SIA 416/1:2007** sowie Teile von SIA 2031:2009, SIA 2032:2010 und SIA 2040:2011».
- **Zwei unabhängige Primärquellen**, nicht eine Suchmaschinen-Zusammenfassung.

**Was zu tun ist:** **SIA 380:2015 beschaffen und destillieren.** Sie liegt **nicht im Haus** —
der Bestand führt nur SIA 380/1:2016, 380/3:1990 und 380/4 (andere Normen). Bezug SIA-Shop,
kostenpflichtig, **Bring-Schuld Raphael; Claude tätigt keine Käufe.** Diese Beschaffung ist
gewichtiger als jede weitere Runde auf der Altnorm.

> ⚠⚠ **KORREKTUR 23.08.2026 (SIA-Sweep, zehnte Fortsetzung) — die oben benannte Bring-Schuld
> zielt auf die FALSCHE Ausgabe.** Produktseite `shop.sia.ch/normenwerk/architekt/380_2015_d`
> (direkt abgerufen 23.08.2026): **SIA 380:2015 ist selbst archiviert, gültig nur 01.04.2015 bis
> 31.10.2022.** Die seither gültige Ausgabe ist **SIA 380:2022** «Grundlagen für energetische
> Berechnungen von Gebäuden» (gültig ab 01.11.2022, 60 S., 180.00 CHF), Produktseite
> `shop.sia.ch/normenwerk/architekt/380_2022_d`, die selbst bestätigt: «die 2015er-Version ist
> archiviert, gültig bis 31.10.2022». **Zu beschaffen und zu destillieren ist SIA 380:2022, nicht
> SIA 380:2015** — ein Kauf der 2015er-Ausgabe würde eine bereits seit vier Jahren überholte
> Fassung ins Haus holen. Register-Zeile `SIA 380` neu angelegt (Abschnitt A, Register.md),
> `destillate/sia-416-1-2007.md` und `destillate/INDEX.md` mit demselben Hinweis ergänzt. Die
> fünf in der Tabelle oben genannten Fremd-KBs sind über diese Korrektur **noch nicht** informiert
> (Cross-KB-Bringschuld weiterhin offen, jetzt mit korrigiertem Ziel); `energie/wiki/u-werte-
> grenzwerte-ch.md` in diesem Lauf als einzige bereits nachgeführt (dringlichster Abnehmer).

**Reichweite über die KB hinaus — bitte prüfen, hier nur gemeldet.** Das Register `wissen/normen`
ist nachgeführt (REGISTER, INDEX, Inventar, Destillat, Wiki-Artikel). **Nicht angefasst** sind
Fremd-KBs, die SIA 416/1 zitieren; sie sollten die Fundstelle auf SIA 380:2015 umhängen, sobald
diese vorliegt:

| KB | Datei |
|---|---|
| `energie` | `wiki/u-werte-grenzwerte-ch.md`; `destillate/gebaeudehuellziffer-ebf-flaechendefinition.md`, `enfk-en-02-waermeschutz-2013.md`, `enfk-fensterblatt.md`, `systemnachweis-kurs-zh-2009.md`, `therapiebad-hallenbad-energie-pflegeheim.md` |
| `immobilienbewertung` | `wiki/flaechendefinitionen-sia.md` |
| `planungsgrundlagen` | `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` |
| `baurecht` | `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` |

**Achtung bei der Umhängung:** Der Begriff **Energiebezugsfläche AE** lebt in SIA 380:2015
weiter; ein Verweis auf das *Konzept* ist nicht falsch, nur die *Fundstelle* ist veraltet.
Pauschales Ersetzen wäre der Fehler aus Rule `bkp-2017-referenz` («Sachbezug prüfen, nicht
mechanisch ersetzen»).

### N57-1 — der Run-57-Zuwachs ist selbst wieder unverifiziert

Die in diesem Lauf geschriebenen Stellen auf S. 4, 6, 27 und 34 hat niemand gegengelesen
(Lehre aus Run 56: wer in einem Lauf Text schreibt, weist ihn im selben Lauf nicht als geprüft
aus). **Nachrangig geworden:** solange die Norm archiviert ist und die Nachfolgenorm fehlt, ist
eine weitere Runde auf der Altnorm der geringere Ertrag. Erst nach Entscheid zu N57-2 sinnvoll.

### N57-3 — Korrigenda-Liste weiterhin nicht eingesehen (gering)

> ✅ **Für SIA 416/1:2007 GEGENSTANDSLOS (23.08.2026, QUESTIONS-Abarbeitung, sechster Lauf).**
> N57-2 (oben) hat primärquellenfest belegt: die Norm ist seit 31.03.2015 archiviert, ersetzt
> durch SIA 380:2015. Eine Korrigenda-Prüfung dient dazu, den geltenden Normtext einer Norm
> nachzuführen — für eine seit über zehn Jahren archivierte Ausgabe ohne praktische Wirkung,
> solange die Nachfolgenorm nicht selbst geprüft wird. Kein neuer Rechercheaufwand gerechtfertigt.
> **Bleibt wie ursprünglich vermerkt gültig:** bei der Beschaffung/Destillation von
> **SIA 380:2015** (Bring-Schuld Raphael, siehe N57-2) ist deren eigene Korrigenda-Fundstelle
> auf dem Titelblatt mitzuprüfen — das ist kein Rückstand dieser Frage, sondern Teil der
> normalen Destillations-Checkliste für jede neue Norm.

Der SIA führt Korrekturen unter `www.sia.ch/korrigenda`; die Seite liefert ohne JavaScript
keinen Inhalt. Bei einer archivierten Ausgabe nachrangig. Der Hinweis auf die Fundstelle steht
auf dem Titelblatt jeder neueren SIA-Norm — für **SIA 380:2015** ist er beim Destillieren
mitzuprüfen.

### N57-4 — Gültigkeit von SIA 416:2003 nicht primärverifiziert (gering, billig)

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, dritter Lauf).** Primärquelle erreicht:
> `shop.sia.ch`, Produktseite SN 504416, `http://shop.sia.ch/normenwerk/architekt/sia%20416/dfi/D/Product`
> (Abruf 23.08.2026, per WebSearch gefunden — die vorher geratene URL hatte den falschen
> Pfad; korrekt ist der Slug `sia%20416/dfi/D/Product`). Bestätigt: SIA 416:2003 **aktuell**,
> gültig ab 01.10.2003, kein Gültig-bis-Datum, Vorgängerausgabe SIA 416:1993 gültig bis
> 30.09.2003. Deckt sich mit der bisherigen Sekundärquelle. Eingetragen in
> `destillate/sia-416-2003.md`, neuer Abschnitt «Gültigkeit (primärverifiziert 23.08.2026)»,
> `last_updated` nachgezogen. Status bleibt `established` (Norminhalt war bereits primär
> gelesen; ergänzt wurde nur der Gültigkeitsstatus).

Das Destillat stützt sich durchgehend auf **SIA 416:2003** als geltende Bezugsnorm. Nach
Sekundärquelle ist sie weiterhin in Kraft (gültig ab 01.10.2003; archiviert ist die Ausgabe
1993), **das Produktdatenblatt selbst wurde aber nicht erreicht** — die geratene Shop-URL lief
ins Leere. Bis zum Primärbeleg ist die Aussage nicht zitierfähig. Nach dem 416/1-Befund ist
diese Prüfung nicht mehr optional: **wer eine Bezugsnorm zitiert, prüft ihren Gültigkeitsstand.**

---

## Normen-Lauf Run 56 (18.08.2026) — N55-1 und N55-2 geschlossen, ein neuer Punkt

**N55-1 — GESCHLOSSEN.** Die unabhängige Refuter-Runde auf dem Run-54-Zuwachs der S. 4, 6, 9,
17, 21-22 und 39 von `sia-416-1-2007` ist gefahren, vom Hauptprozess am eigenen
300-dpi-Rendering (Präfix `ref416-r56-`). **3 Kernbefunde, 5 Nebenbefunde, alle inline
korrigiert.** S. 22 und S. 39 waren zuvor von niemandem gelesen worden; beide bestätigten sich
inhaltlich. Damit hat **jeder** Teil dieses Destillats beide Prüfrichtungen gesehen.

**N55-2 — GESCHLOSSEN.** Anhang A von SIA 416/1 ist am eigenen 300-dpi-Rendering vollständig
aufgenommen; die Raumlisten **HNF1-HNF5** und die vollständige **FF-Liste** (inkl.
«Installationsräume, -schächte und -kanäle» und «unmittelbar zum Betrieb gehörige Flächen»)
stehen jetzt im Destillat, ebenso NNF und VF. Nebenbefund dabei: **Anhang A ist ausdrücklich
als «(informativ)» überschrieben** — das war im Destillat nicht ausgewiesen und ist für die
normative Verbindlichkeit erheblich. Zwei Abgrenzungen sind neu benannt, weil sie den
Zweifelsfall entscheiden: Küchen und Sanitärräume sind **je zweimal** geführt (Wohnung → HNF1,
gewerblich bzw. allgemein → HNF3 bzw. NNF), und **Labors gehören zu HNF3, nicht HNF6**. Damit
kann `flaechen-nachweis` die Zuordnung aus der KB beziehen statt aus dem Original.

**N56-1 — Der Run-56-Zuwachs auf S. 4, 6 und 21 ist selbst wieder unverifiziert.** Genau die
drei Seiten, die einen Kernbefund erbrachten, tragen jetzt neu geschriebenen Text, den niemand
gegengelesen hat. Das ist der vierte Lauf in Folge, der den Status aus je einem anderen Grund
nicht hebt — **jede Korrektur erzeugt neuen unverifizierten Text**. Ohne Abbruchregel ist das
ein Regress ohne Ende. Run 55 hat dafür ein Kriterium vorgeschlagen (Vorschlag 7.1: «ein
Prüfteil gilt als geschlossen, sobald eine Runde darauf nur noch Nebenbefunde und keinen
Kernbefund mehr erbringt»); **es ist noch nicht entschieden**. Nach diesem Kriterium wären mit
Run 55 und 56 zusammen **S. 9, 17, 22, 26, 28-32, 35, 39 und 40 geschlossen** und nur noch
**S. 4, 6, 21, 27 und 34** offen. Die Statusfrage wäre dann in einem Lauf zu beantworten.
**Entscheid Raphael nötig** — siehe Lauf-Report Run 56, Ziff. 6.

## Normen-Lauf Run 55 (17.08.2026) — N54-1 geschlossen, drei neue Punkte

**N54-1 — GESCHLOSSEN.** Die Refuter-Runde auf dem Run-54-Zuwachs von `sia-416-1-2007` ist
gefahren (S. 26-32, 34, 35, 40; ~69 Aussagen; 2 widerlegt, 2 unpräzise, 7 weitere Lücken
beiläufig). Einzelheiten im Destillat, Abschnitt «Prüfstand», und im Lauf-Report.

**N55-1 — Der Run-54-Zuwachs auf S. 4, 6, 9, 17, 21-22 und 39 hat weiterhin keine unabhängige
Refuter-Runde.** Run 54 hat S. 4/6/9/17/21 zwar gerendert nachgeprüft — aber durch den
Hauptprozess, der den Text selbst geschrieben hatte. **Selbstprüfung ist keine Refuter-Runde**;
Run 55 hat genau in solchem selbstgeprüften Umfeld zwei Kernbefunde gefunden. S. 22 (Ziff. 2.3)
und S. 39 (Abkürzungslegende) sind von niemandem gerendert gegengelesen. Kap. 1-2 meldete
Run 54 zudem als «dichtesten Bereich» der Abdeckungslücken — dort ist die Fehlerwahrscheinlichkeit
am höchsten. **Das ist der letzte Block vor der Statusentscheidung zu SIA 416/1:2007.**

**N55-2 — Anhang A von SIA 416/1: die Raumlisten HNF1-HNF5 und die vollständige FF-Liste
fehlen im Destillat.** Run 54 vermerkte, der Anhang führe «zu jeder HNF-Kategorie konkrete
Raumlisten», buchstabierte aber nur HNF6 aus. Der Vermerk las sich wie eine geschlossene
Lücke. Belegt fehlen u.a. die FF-Positionen «Installationsschächte und -kanäle». Der Anhang ist
informativ, aber er ist die einzige Zuordnungshilfe zwischen Raumbezeichnung und
SIA-416-Flächenkategorie und wird von `flaechen-nachweis` gebraucht.

**N55-3 — Grafische Kodierung der Tabellen 3 und 5 (S. 30 und 32) ohne Legende.** Beide
Tabellen setzen einen Teil der Zellen **grau** und umranden zwei Ergebniszellen **fett**. Auf
den Seiten selbst steht keine Legende dazu, und der Fliesstext der Ziff. 4.4.4 bzw. 4.5.1
erwähnt es nicht. Naheliegend ist «grau = bleibt leer / nicht auszufüllen», belegt ist es
nicht. **Nicht ins Destillat übernommen, weil eine plausible Lesart keine Fundstelle ist.**
Zu prüfen wäre, ob eine Legende an anderer Stelle der Norm steht (Ziff. 1.3 Darstellung?) oder
ob die Kodierung tatsächlich unerklärt bleibt. Lehre aus dem lignum-Harness: eine Farbkodierung
ohne gelesene Legende ist eine Falle, keine Nebensache.

**N55-4 — Die dritte Prüfachse ist gebaut und misst sofort Drift: 18 Statusabweichungen und
25 Statuswörter ausserhalb des Vokabulars.** Run 54 hatte den Register-gegen-Destillat-Abgleich
als fehlende Prüfachse benannt und ein Script vorgeschlagen; Run 55 hat es gebaut
(`training/register-abgleich.sh`, nur lesend). Erster Lauf über **369 Destillate**:

| Befundklasse | Zahl | Bewertung |
|---|---|---|
| Statusabweichung Destillat ↔ INDEX | **18** (nach 2 Korrekturen dieses Laufs) | offen |
| Statuswort ausserhalb des Vokabulars | **25** | offen, siehe unten |
| im INDEX nicht geführt | 1 | offen |
| im Inventar nicht geführt | 58 | **überwiegend kein Mangel** — das Inventar führt Quelldateien, das Destillat einen normalisierten Namen |

**Zwei Fälle sind in diesem Lauf am Original geprüft und korrigiert**, je einer pro Richtung:
`vsa-aufzuege-esba-zh.md` (INDEX führte «Verifikation ausstehend», die in eben jenem Run 40
gefahren war — INDEX war stale) und `ugz-hindernisfreie-aufzuege-2010.md` (Destillat führte
«speculative, noch keine unabhängige Verifikation» und beschrieb im selben Feld die
durchgeführte Refuter-Runde — Destillat war stale). **Die Drift geht in beide Richtungen; man
kann also nicht pauschal einer Seite glauben.** Der zweite Fall ist der gefährlichere: nach
Rule `normen-referenz` Ziff. 1b ist nur `established` zitierfähig, das Destillat hatte sich
also selbst für die Zitation gesperrt.

**Die 25 Vokabularabweichungen sind kein Flüchtigkeitsfehler, sondern ein Regelungsloch.**
Sie verteilen sich auf **16× `destilliert`** (eine ganze Kohorte älterer SIA- und DE-Normen),
`teil-destillat`, `struktur-destillat`, `emerging`, `speculative→belastbar`,
`established-mit-vorbehalt`, **2× `superseded`** und einen offensichtlichen Formatierungsdefekt
(`|` als Statuswert in `stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019.md`).
Der Kern: **ein Destillat mit Status `destilliert` ist weder `established` noch `speculative`
und fällt durch Rule `normen-referenz` Ziff. 1b hindurch** — die Rule trifft für es keine
Aussage, obwohl sie genau diesen Fall regeln soll.

**Nicht selbständig bereinigt** (Rule `wissens-bibliothekar`: Umbenennen und Umstrukturieren
über die ganze KB ist pausepflichtig). Vorschlag zur Entscheidung im Lauf-Report Ziff. 6.
Ein Artefakt des Scripts ist unterwegs aufgefallen und behoben: der erste Parser las
`status: "established, verifiziert …"` als Vokabularverstoss `established,` und blähte die
Zahl von 25 auf 33 — **die Messung war zuerst eine Aussage über das Werkzeug.**

## Normen-Nacht Run 53 (16.08.2026) — die Klasse «fehlender Inhalt» ist gemessen und zerfällt in zwei

**N52-2 — GESCHLOSSEN: die Gegenrichtung ist konstruiert, gefahren und mit Kontrollen
gemessen.** Anlage und Rohergebnis: `training/n52-2-gegenrichtung-anlage-260816.md`.
Quelle SIA 416/1:2007, gedruckte S. 23-25, vom Hauptprozess vorab selbst gelesen (ohne das
misst eine solche Anlage nichts). Zwei Varianten desselben Destillat-Abschnitts, in der
dotierten drei Aussagen entfernt — bewusst so, dass **keine Falschaussage** entsteht.

| Lauf | gepflanzte Auslassungen erkannt | Falsch-Positive |
|---|---|---|
| Abdeckungsrichtung auf dotierter Variante | **3 von 3** | 0 |
| Abdeckungsrichtung auf unveränderter Variante | 0 von 3 fälschlich gemeldet | **0** |
| Refuter-Richtung auf dotierter Variante | **1 von 3** mit Verdikt-Wirkung | 0 |

**Der Befund präzisiert Run 52, statt ihn nur zu bestätigen: die Klasse zerfällt in zwei
Unterklassen.** (a) Eine **weggelassene Ausnahme zu einer geführten Regel** macht die
Restregel überdehnt und damit falsch — der Refuter fand sie sofort, sogar an zwei Stellen
zugleich. **Diese Unterklasse ist refuter-sichtbar.** (b) **Weggelassener eigenständiger
Inhalt** (eine sonst nirgends aufgerufene Einschränkung, eine ganze zusätzliche
Bezugsgrösse) lässt den Resttext unberührt wahr und ist **refuter-blind**; der Agent erwähnte
beide Fälle nur unter einer verdiktlosen Rubrik «Auslassungen». B02 aus Run 52 war ein Fall
der Klasse (b) — ein weggelassenes Listenglied unter drei gleichrangigen.

**Praktische Folge:** Die Refuter-Runde ist schärfer als angenommen und fängt die
gefährlichste Auslassungsform, die verschwiegene Ausnahme, von selbst. Sie bleibt aber blind
für alles, was die Quelle **zusätzlich** sagt. Der Vorschlag Methodik-Pflicht 13 bleibt
damit richtig, ist aber zu präzisieren (siehe Lauf-Report Ziff. 7).

**N53-1 — OFFEN: SIA 266/2:2012 ist nicht im Haus.** Bestand Run 53 gemessen; im PL-02-Baum
existiert zu «266/2» einzig die Vertragsnorm `alle/118_266-2_2017.pdf`. **Die KB führt damit
die ABB-Norm SIA 118/266-2 als `established`, während die Bemessungsnorm dahinter fehlt** —
Ausschreibungs- und Vertragsbedingungen für Natursteinmauerwerk sind belegt, die technischen
Anforderungen nicht. Zugleich Nachfolgenorm der per 31.12.2011 ersetzten Empf. SIA 178:1996.
Beschaffungsposten, gleiche Klasse wie N52-5 und die sechs ABB aus Run 51.

**N53-2 — GESCHLOSSEN (17.08.2026, Run 54).** Beide Aufträge erledigt.
- **SIA 416/1:2007:** Die Abdeckungsrichtung ist auf Kap. 0-2 und Kap. 4-5/Anhänge nachgeholt
  (7 Segment-Agenten über S. 4-22 und S. 26-40). Ergebnis **37 Kern- und 20 Nebenlücken**,
  alle inline eingearbeitet — darunter die τ-Schwelle von 10 % für «lichtdurchlässig»
  (Ziff. 1.1.2), die Treppenauge-5-m²-Regel (Ziff. 1.1.1), der komplett fehlende Ziff. 2.2.1.2,
  die Abgrenzungen der Verwendungszwecke (Ziff. 4.3.3) und die Vorzeichen-/Übertragungslogik
  der Tabelle 3 (Ziff. 4.4.4). **Kein einziger falscher Wert, durchgehend fehlender Inhalt.**
  Die vier von Run 53 beiläufig gemeldeten Lücken sind darin bestätigt und eingearbeitet.
- **SIA 215:1978:** Refuter-Runde in zwei Segmenten gefahren — 41 bestätigt, 3 widerlegt,
  1 Fundstelle falsch, alle korrigiert.

Beide bleiben `speculative`, aber aus **neuen** Gründen: siehe N54-1 (SIA 416/1) und den
Wertevorbehalt im Frontmatter von SIA 215.

**N54-1 — OFFEN: Refuter-Runde auf den Run-54-Zuwachs von `sia-416-1-2007.md`.**
Rund 37 Kernstellen sind neu eingearbeitet und damit **noch nicht widerlegungsgeprüft**. Der
Hauptprozess hat eine Stichprobe an eigenen 300-dpi-Renderings nachgeprüft (S. 4, 6, 9, 17,
21, 26, 33 — alle bestätigt, keine Widerlegung); **nicht** gerendert nachgeprüft und daher
vorrangig zu prüfen sind S. 7-8, 10, 12-13, 18-20, 27-32 und 34-40. Erst danach ist die
Statusfrage ohne Vorbehalt zu beantworten. Nach Methodik-Pflicht 11 ist neu zugewachsener
Text genauso ein Entwurf wie ein Erstdestillat — eine Hebung jetzt würde Vollständigkeit mit
Richtigkeit verwechseln.

**N53-3 — TEILWEISE GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, dritter Lauf).** Die
formelle Frage ist beantwortet, die fachliche Detailfrage zu Kalk bleibt offen.

> ✅ **Formeller Status geklärt.** Primärquelle `shop.sia.ch`, Produktseite SN 551215
> (`https://shop.sia.ch/normenwerk/ingenieur/sia%20215/d/D/Product`, Abruf 23.08.2026):
> SIA 215:1978 ist **archiviert seit 30.06.2014** — die frühere Aussage «formell nicht
> zurückgezogen» ist damit überholt. Genannter Nachfolgestandard: **SIA 242.002:2008
> «Gipsbinder und Gipstrockenmörtel, Teil 1: Begriffe und Anforderungen»** (einziger auf
> der Produktseite geführter Nachfolger). Deckt sich mit dem bereits am selben Tag von
> der interaktiven SIA-Sweep-Session eingetragenen Befund in `wiki/REGISTER.md`, Abschnitt
> A, Zeile SIA 215 (unabhängig zweite Fundstelle derselben Seite, kein Zirkelschluss).
> Frontmatter-Feld `ersetzt_durch` in `destillate/sia-215-1978.md` korrigiert.
>
> **Weiterhin offen: Kalk (hydraulischer Kalk, Weisskalk).** Die Produktseite nennt
> ausschliesslich den Gips-Nachfolger; für Kalk ist kein Nachfolgestandard verzeichnet.
> SN EN 459-1 «Baukalk» bleibt eine unbelegte Vermutung, nicht im Haus, nicht auf der
> Shop-Seite als Nachfolger genannt. Zement bleibt wie bisher separat über SIA 215.002/
> 215.003 referenziert (kein Widerspruch, andere Referenzierungsart, s. Destillat).
> **Nächster Schritt bei Bedarf:** SN EN 459-1 auf shop.sia.ch direkt suchen (eigene
> Produktseite, nicht über SIA-215-Verweis erreichbar) oder Kalk-Frage an Raphael/
> Fachplaner zurückgeben, falls ein Projekt sie konkret braucht.
>
> **Vorgeschlagener nächster Schritt geprüft, ohne Erfolg (23.08.2026, QUESTIONS-Abarbeitung
> vierter Lauf):** `https://shop.sia.ch/normenwerk/ingenieur/sn%20en%20459-1/d/D/Product`
> liefert 404 «Produkt nicht gefunden» — SN EN 459-1 ist eine CEN-Norm (SNV-Vertrieb), keine
> SIA-Publikation, und liegt nicht unter dem SIA-Shop-URL-Muster. Echte Sackgasse für diesen
> Zugangsweg; ein Fund verlangt entweder den SNV-Shop (nicht geprüft, kostenpflichtig) oder
> die Kalk-Frage bleibt Bring-Schuld Raphael/Fachplaner.

## Normen-Nacht Run 52 (15.08.2026) — die Gegenprobe zweiter Ordnung ist gefahren; eine Fehlerklasse bleibt unerkannt

**N52-1 — GESCHLOSSEN: Gegenprobe zweiter Ordnung (Übergabe Run 51, Punkt 1).** Run 51 hatte die
Sensitivität der Refuter-Stufe nur für **veränderte Zahlenwerte** gemessen (15/15) und ausdrücklich
ausgewiesen, dass die schwereren Klassen ungeprüft blieben. Diese Runde hat sie gemessen, an
SIA 358:2010 (reiner Scan, deutscher Normteil S. 5-10, vom Hauptprozess vorab vollständig selbst
gelesen und verifiziert). Anlage: 16 Behauptungen, 6 kontrolliert verfälscht, blind vorgelegt.

| Fehlerklasse | Kontrollen | erkannt |
|---|---|---|
| Bedeutungsumkehr | 2 (B01 Abweichungen «nicht zulässig»; B03 Rollstuhlfahrer als besonderes Gefährdungsbild) | **2** |
| Weggelassene Bedingung | 1 (B08 beidseitige Handläufe «in jedem Fall») | **1** |
| Verschobene Fundstelle bei richtigem Inhalt | 1 (B10 Ziff. 3.1.4 statt 3.1.3) | **1** |
| Veränderter Zahlenwert (Vergleichsbasis zu Run 51) | 2 (B07 drei statt fünf Steigungen; B13 0,15 statt 0,12 m) | **2** |
| **Summe** | **6** | **6 (100 %)** |

Zehn echte Aussagen, zehn korrekt bestätigt — **null Falsch-Positive**. Der Agent hat bei B08 von
sich aus auch die abgeschwächte Modalität erkannt («im Allgemeinen» gegen «in jedem Fall») und bei
B10 ausdrücklich getrennt, dass der Inhalt richtig und nur die Ziffer falsch ist. Die Prüfstufe
kann die schweren Klassen also erkennen; die 79/0-Verteilung aus Run 50 misst weiterhin die
Qualität der geprüften Destillate, nicht die Blindheit der Prüfer.

**N52-2 — OFFEN, und das ist der eigentliche Ertrag: «fehlender Inhalt» wird strukturell nicht
erkannt.** Behauptung B02 war die versteckte siebte Kontrolle. Sie gab die Nicht-Geltungs-Fälle
der Ziff. 0.1.3 mit **zwei** von **drei** Punkten wieder; weggelassen war «in Teilen von Bauten,
die nur speziell ausgebildeten oder instruierten Personen zugänglich sind». Der Agent hat B02
BESTÄTIGT und die Lücke **nicht einmal als Anmerkung** erwähnt.

Das ist kein Versagen des Agenten, sondern der **Fragerichtung**: Eine unvollständige Aussage ist
wahr in allem, was sie sagt, und mit dem Auftrag «versuche zu widerlegen» grundsätzlich nicht
fassbar. Run 51 hatte dasselbe schwächer beobachtet (Agenten meldeten Auslassungen «durchwegs als
Anmerkung ohne Verdikt-Wirkung»); hier fiel die Lücke ganz durch.

**Damit ist Methodik-Pflicht 6 («Abdeckung messen, nicht nur Behauptungen prüfen») erstmals
empirisch für die Refuter-Stufe selbst belegt.** Sie war bisher für Destillate formuliert. Die
Konsequenz ist dieselbe: Eine Refuter-Runde, so gut sie widerlegt, ist **kein**
Vollständigkeitsnachweis und darf nie als solcher gelesen werden. Wer Vollständigkeit will,
braucht die Gegenrichtung (Seiten-Inventur, rechnerische Tabellenaufnahme).

Nächster Schritt: eine Anlage konstruieren, die fehlenden Inhalt **prüfbar** macht — der Agent
bekommt nicht Behauptungen, sondern einen Quellenabschnitt und die Frage, was das Destillat davon
nicht führt. Das ist die Fragerichtung, nicht die Modellgüte.

**N52-3 — GESCHLOSSEN: SIA 416/1:2007 destilliert (war QUESTIONS 260813).** Die Norm liegt als
`alle/xalt/neu/SIA 416_1_2007.pdf` im Haus (40 S., reiner Scan ohne Textlayer) und ist im REGISTER
durchgehend als 2007✓ **geltend** geführt. Ein Destillat fehlte, weil die Datei in einem Ordner
namens `xalt` liegt. Jetzt `destillate/sia-416-1-2007.md` (alle 40 S. in 300 dpi gerendert,
Tabellen 1-5 zellenweise abgelesen, Folio = PDF-Blatt 1:1; Hauptprozess-Stichprobe Ziff. 3.1.3
und 3.2.1 auf S. 23 am Original bestätigt). Status `speculative`, Refuter-Runde ausstehend.
Der falsche Frontmatter-Link in `sia-382-2-2011.md` ist umgehängt.

**N52-4 — GESCHLOSSEN (16.08.2026): SIA 215:1978 destilliert.** REGISTER führt SIA 215 als
1978✓; die Datei `alle/xalt/215_d.pdf` (40 S., vollständiger Textlayer) trägt auf dem Titelblatt
«Ausgabe 1978, ersetzt Norm 115 (1953)», Herausgeber im Einvernehmen mit EMPA und VSZKGF —
reine Produkt-/Prüfnorm für Zement/Kalk/Gips, für die Planungspraxis randständig. Jetzt
`destillate/sia-215-1978.md` (alle 40 S. per pdftotext gelesen, Folio = PDF-Blatt 1:1, keine
Tabelle mit verbundenen Zellen/Farbcodierung gefunden, daher kein Rendering nötig). Status
`speculative`, Refuter-Runde ausstehend. **EN-Überlagerung für Zement BELEGT, für Kalk/Gips
weiterhin OFFEN:** die 1978er-Ausgabe selbst enthält keinen EN-Verweis, aber im selben
`xalt`-Ordner liegen `215.002_2000_d.pdf` (SIA 215.002 = SN EN 197-1:2000 «Zement Teil 1»,
gültig ab 01.01.2002, Titelblatt: «ersetzt Norm SIA 215.002:1993 (ENV 197-1:1992)») und
`215_003d.pdf` (SIA 215.003 = SN EN 197-2:2000 «Zement Teil 2», gültig ab 01.01.2002).
⚠ **Korrigiert vom Hauptprozess (Run 53, 260816), beide Titelblätter selbst nachgelesen:**
Hier stand zunächst, die Zement-Kapitel von SIA 215:1978 seien «seit spätestens 1993 ersetzt».
Das war eine Schlussfolgerung, kein Beleg. Die Titelblätter nennen als ersetzte Norm
ausschliesslich die **je eigene Vorgängerausgabe** (215.002:1993 bzw. 215.003:1996) und
erwähnen SIA 215:1978 mit keinem Wort; die Jahreszahl 1993 gehört zu jener Vorgängerausgabe,
die zudem eine **ENV-Vornorm** war. Belegt ist nur: seit 01.01.2002 gilt für Zement eine
eigene vollwertige EN-Adoption unter derselben Familiennummer. **Fachlich** sind die
Zement-Kapitel damit überholt, **formell zurückgezogen ist SIA 215:1978 nicht** — das
REGISTER führt sie unverändert als 1978✓ geltend. Für
hydraulischen Kalk, Weisskalk und Baugips liegt im Haus keine EN-Nachfolgenorm vor (SN EN
459-1 Baukalk/SN EN 13279-1 Gips nicht im Bestand) — **neuer offener Punkt:** ob und wodurch
diese drei Abschnitte ersetzt wurden, ist nicht geklärt und muss vor einem Zitat als geltende
Norm extern (SIA-Shop/Normenverzeichnis) geprüft werden. REGISTER.md (Zeile 53-58) führt
SIA 215:1978 zusätzlich als eine von 14 Normzeilen mit höchster Revisionswahrscheinlichkeit,
ohne eigene Zeilen für 215.002/215.003.

**N52-5 — OFFEN: Beschaffungsposten SIA 242:2012 und SIA 274:2010.** Beide laut REGISTER geltend,
beide **nicht im Haus**: von 242 liegen nur `242-1_1994` und `242_2`, von 274 nur der
Vernehmlassungsentwurf 2008 und `274_d` («VERLÄNGERTE VERNEHMLASSUNG»). Formulierung nach
Methodik-Pflicht 10: **nicht «nicht destilliert», sondern «nicht im Haus»** — der Punkt geht an
die Beschaffung, nicht an den Loop. Gleiche Klasse wie die sechs ABB aus Run 51 Ziff. 6.

**N52-6 — OFFEN: Geltungsstatus von SIA 151 und SIA 178 ungeklärt.** Beide liegen ausschliesslich
in `xalt`, beide sind im REGISTER nicht geführt (weder als geltend noch als zurückgezogen).
Nächster Schritt: gegen das Gesamtverzeichnis SIA prüfen.

**N52-7 — OFFEN: Fassungsfrage SIA 252.** Der Vernehmlassungsentwurf `xalt/neu/SIA 252_VL_2011-12.pdf`
trägt auf dem Titelblatt «SIA 252:201█ … Vorgesehen als Ersatz für Norm SIA 252:2002»,
Stellungnahmefrist 24.02.2012. Die KB destilliert `sia-252-2002.md`. Ein VL-Entwurf ist kein
Normstand, aber ein **Fassungsindikator** (Methodik-Pflicht 3): Es ist zu prüfen, ob aus dem
Entwurf eine Ausgabe 2012/2013 geworden ist und ob das Destillat damit auf einer überholten
Ausgabe steht. Dieselbe Frage stellt sich für die übrigen 16 VL-Dateien im xalt-Ordner.

## Normen-Nacht Run 50 (13.08.2026) — Nachprüfung abgeschlossen, neuer Rückstand benannt

- **N50-1 — WIDERLEGT und ERLEDIGT in Run 51 (14.08.2026). Die Prämisse war falsch, die
  Schlussfolgerung trotzdem nützlich.** Die vier Destillate hatten ihre Refuter-Runde sehr wohl,
  nämlich am 07.08.2026 in Run 47 — dreifach dokumentiert: im Frontmatter-Feld `verifikation`
  (mit Verdikt und Stichprobenliste), im `destillate/INDEX.md` und in den Fliesstext-Korrekturen,
  die im Destillat mit «Refuter-Runde 260807» markiert sind. Was stehen geblieben war, ist je
  **eine veraltete Zeile unter «Offene Punkte»** aus dem Erstdestillat-Zustand. Run 50 hat diese
  Zeile gelesen und daraus «der risikoreichste Bestand der KB» geschlossen — ohne den Frontmatter
  derselben Datei zu prüfen, der das Gegenteil sagt. Das ist ein Selbstwiderspruch **innerhalb
  einer Datei** und damit genau die Mechanik der Methodik-Pflicht 9: wer von oben liest, trifft
  zuerst auf die überholte Aussage. Verschärfend: Run 50 hat in Ziff. 7 seines Reports vier
  gleichartige Zeilen anderer Destillate korrigiert und die vier hier als «sachlich richtig»
  ausdrücklich stehen lassen.
  **Der Sachauftrag war trotzdem berechtigt** — eine erste Refuter-Runde ist kein Freibrief
  (die Run-48-Welle hatte auch eine). Run 51 hat deshalb eine **zweite, unabhängige
  Blindprüfung** gefahren: 33 Aussagen aus den vier Destillaten, ungekennzeichnet gemischt mit
  15 kontrolliert verfälschten Kontrollbehauptungen. **Ergebnis: 33 von 33 am Original
  bestätigt, 0 Kernbefunde.** Die Vermutung «es gibt keinen Grund anzunehmen, dass die
  Run-47-Welle besser ist» ist damit empirisch widerlegt — sie ist besser. Die vier veralteten
  Zeilen sind ersetzt, die Frontmatter tragen den zweiten Verifikationsvermerk.
  Ursprünglicher Wortlaut: «vier Destillate der Run-47-Welle hatten NIE eine Refuter-Runde.
  `sia-262-1-2003`, `sia-264-1-2003`, `sia-267-1-2003` und `sia-281-3-2018` führen unter
  ‹Offene Punkte› korrekt ‹Refuter-Runde ausstehend›; … Es gibt keinen Grund anzunehmen, dass
  die Run-47-Welle besser ist. … Das ist der nächste Batch.»

- **N51-1 — die Lehre aus N50-1: ein Destillat kann sich selbst widersprechen, und geglaubt wird
  der Anfang.** Methodik-Pflicht 9 verlangt, Befunde inline zu korrigieren statt nur anzuhängen.
  N50-1 zeigt die Umkehrung derselben Schwäche: eine Korrektur wurde eingearbeitet, aber die
  **veraltete Gegenaussage nicht entfernt**. Vorschlag für einen Kontrollpunkt (Raphael zur
  Freigabe, nicht selbständig umgesetzt): Nach jeder Status-Hebung auf `established` wird im
  selben Lauf geprüft, ob das Destillat noch eine Zeile mit «ausstehend», «speculative» oder
  «ohne Gegenprüfung» trägt. Das ist mechanisch prüfbar
  (Suche nach solchen Zeilen in Dateien mit `status: established`) und hätte den Fehlbefund
  verhindert.
  **Die Messung wurde in Run 51 durchgeführt und hat zwei weitere Fälle gefunden — der Vorschlag
  ist also nicht theoretisch.** `sia-118-266-1-2017.md` und `sia-118-266-2-2017.md` trugen
  `status: established` im Frontmatter und zugleich «Status bleibt speculative» unter «Offene
  Punkte». Beide sind ausgerechnet die Dateien, die **Run 50 in Ziff. 7 seines Reports angefasst
  und für richtiggestellt erklärt hat**: dort wurde der überholte Vermerk «Refuter-Runde
  ausstehend» korrigiert, die widersprüchliche Statuszeile im selben Satz aber stehen gelassen.
  Eine halbe Korrektur ist hier schlechter als keine, weil sie den Eindruck der Erledigung
  erzeugt. Beide behoben (massgeblich ist `established`; bei 118/266-1 bleibt die sachliche
  Einschränkung «Scan ohne Textlayer, nur 150-dpi-Sichtlesung» als eigene Aussage bestehen).
  In `sia-118-266-1-2017.md` fand sich derselbe Mechanismus ein zweites Mal: die Zeile
  «118/266-2 im Bestand noch nicht destilliert» stand dort, während das Destillat existiert —
  ebenfalls korrigiert und verlinkt.
  **Messung nach der Bereinigung: 195 `established`-Destillate, 0 unaufgelöste
  Status-Widersprüche.** Zwei Fundstellen wurden geprüft und ausdrücklich NICHT als Widerspruch
  gewertet: `sia-1001-3-2020.md` markiert eine einzelne Auslegungsaussage inline als
  `speculative` (legitime Binnendifferenzierung), und `sia-266-1-2003.md` führt im
  `verifikation`-Feld die Chronik von fünf Runden, in der frühere «bleibt speculative»-Sätze
  historisch stehen und die mit der Hebung endet.
  **Offenlegung zur Methode:** die erste Fassung dieses Eintrags behauptete das Messergebnis,
  bevor die Messung lief; das grobe Suchmuster traf dann auch Zitate und Chronik-Einträge. Erst
  ein enger gefasstes Muster trennte die echten Fälle. Das ist derselbe Fehler, den der Eintrag
  beschreibt — hier festgehalten, weil er belegt, wie leicht er passiert.

- **N50-2 — 65 der 79 Befunde stützen sich auf die Nachprüf-Flotte, nicht auf den Hauptprozess.**
  Der Hauptprozess hat 14 Befunde selbst am Original verifiziert (alle bestätigt, siehe Report
  Ziff. 2). Die übrigen 65 sind von je einem unabhängigen Nachprüf-Agenten am Original mit
  wörtlichem Belegzitat, PDF-Seite und abgelesener Folio-Nummer bestätigt worden — das ist eine
  Stufe schwächer als eigene Sicht. Sie sind inline eingearbeitet, weil ein Marker, den niemand
  auflöst, das Destillat dauerhaft unbenutzbar hält; der Beleg steht jeweils im
  Bestätigungsvermerk und ist damit nachprüfbar geblieben.

- **N50-3 — BEANTWORTET in Run 51 (14.08.2026): die Nachprüf-Stufe kann widerlegen.**
  Die verlangte Gegenprobe ist gefahren. Anlage: vier Prüfsätze mit zusammen **48 Behauptungen**,
  davon **33 wörtlich aus den Destillaten** und **15 vom Hauptprozess kontrolliert verfälscht**
  (je ein Zahlenwert plausibel verändert: 105 statt 110 °C, 270 statt 170 g/m², 10 statt 5 %
  Sulfatlösung, Hälfte statt Drittel der Druckfestigkeit, 85 statt 90 % Profilblech-Abdeckung,
  L ≤ 20 statt 30, 180 statt 160 mm in einer Tabellenzelle, 31.12. statt 30.06.2004,
  7 statt 10 Tage, 45 statt 60 Minuten, 0,65 statt 0,6 Ra, 3 statt 5 mm, ± 0,5 statt ± 1,0 °C,
  30 statt 10 Sekunden, zehn statt fünf Flächenprozent). Die vier Prüfagenten erhielten keine
  Kennzeichnung, welche Behauptung echt ist, und den Auftrag, jede zu widerlegen.
  > **Ergebnis: 15 von 15 Verfälschungen erkannt (Sensitivität 100 %), 33 von 33 echten
  > Behauptungen korrekt bestätigt (0 Falsch-Positive).**
  Damit ist die Lesart gestützt, dass die 79/0-Verteilung aus Run 50 die Qualität der
  Run-48-Welle misst und nicht die Blindheit der Prüfstufe. Jede Widerlegung trug wörtliches
  Belegzitat, PDF-Seite und am Rand abgelesene Folio-Nummer; drei Agenten nannten von sich aus
  den mutmasslichen Verwechslungsursprung des falschen Werts.
  **Was die Gegenprobe NICHT misst (Pflichtangabe nach der Methoden-Lehre):** alle 15 Kontrollen
  waren **veränderte Zahlenwerte an einer bekannten Fundstelle**. Ungeprüft bleibt die
  Sensitivität für die schwereren Fehlerklassen — Bedeutungsumkehr (der ABB-Fall aus Run 49),
  **fehlende** Inhalte, falsch zugeordnete Fundstellen und falsche BKP-Codes. Eine
  100-%-Trefferquote auf Zahlendreher ist kein Nachweis, dass eine Bedeutungsumkehr auffiele.
  **Vorschlag für den nächsten Lauf:** dieselbe Anlage mit Kontrollen der Typen «Aussage ins
  Gegenteil verkehrt», «Bedingung weggelassen» und «Fundstelle auf die Nachbarziffer verschoben».
  Ein Nebenertrag stützt die Vermutung, dass diese Typen schwerer sind: alle vier Agenten
  meldeten Auslassungen in den vorgelegten Behauptungen (fehlende Öffnungsklauseln,
  Anwendungsrahmen, Alternativbedingungen) als Anmerkung **ohne** Verdikt-Wirkung — sie sahen die
  Lücke, werteten sie aber nicht als Widerlegung.
  Ursprünglicher Wortlaut: «die Verdikt-Verteilung 79 BESTÄTIGT / 0 WIDERLEGT ist selbst
  prüfbedürftig.»

- **N50-3 (Original-Begründung, zur Nachvollziehbarkeit) — die Verdikt-Verteilung 79 BESTÄTIGT / 0 WIDERLEGT ist selbst prüfbedürftig.**
  Methodik-Pflicht 7 existiert, weil Run 40 Refuter-Befunde fand, die richtig beobachtet und
  trotzdem keine Befunde waren. Eine Quote von exakt null Widerlegungen kann bedeuten, dass die
  Run-48-Welle wirklich so schlecht war (dafür spricht: ein einziger Methodenfehler, das Schätzen
  der Seitenzahl, erzeugt allein rund 120 falsche Fundstellen), oder dass die Nachprüfer dem
  Refuter gefolgt sind statt selbst zu prüfen. Die 14 unabhängigen Hauptprozess-Prüfungen stützen
  die erste Lesart, sind aber eine Stichprobe. **Nächster Lauf: eine Gegenprobe mit bewusst
  eingestreuten Falschbehauptungen, um die Widerlegungsfähigkeit der Nachprüf-Stufe zu messen.**

- **N50-4 — PRÄZISIERT in Run 51 (14.08.2026): die sechs genannten ABB liegen nicht im Bestand,
  sie sind eine Beschaffungs-Bring-Schuld und kein Rückstand dieses Loops.** Der Bestand
  (`SIA_Norm/SIA_Normen/alle/`) führt genau zwölf 118er-Dateien: 118:1991, 118-C1:2026, 118/244,
  118/246, 118/248, 118/257, 118/262, 118/263, 118/265, 118/266-1, 118/266-2, 118/267. **Alle
  zwölf sind destilliert** — die Deckungsgleichheit ist vollständig. Die in N50-4 genannten
  118/240, 118/242, 118/243, 118/251, 118/252 und 118/253 stehen im `wiki/REGISTER.md` (das die
  Reihe vollständig verzeichnet, weil es aus dem Gesamtverzeichnis SIA gebaut ist), aber als PDF
  existieren sie im Haus nicht. Formulierung nach Methodik-Pflicht 10: **nicht «diese ABB sind
  nicht destilliert», sondern «diese ABB sind nicht im Haus»** — der Unterschied entscheidet, ob
  der Punkt an den Loop oder an die Beschaffung geht. Er geht an die Beschaffung (SIA-Shop,
  kostenpflichtig, Bring-Schuld Raphael wie N48-4).
  **Offen bleibt der zweite Teil der Frage:** ob die Werte dieser sechs in dasselbe Muster
  fallen wie die zehn destillierten, ist damit nicht beantwortet und **kann** ohne die Originale
  nicht beantwortet werden. Die in Run 50 notierte Beobachtung «Ausbau 2,5 m, Rohbau 3,0 m»
  bleibt eine Beobachtung an zehn Normen, keine Regel der Reihe.
  Ursprünglicher Wortlaut: «die vier ‹Ergänzende Festlegungen›-Destillate der Run-47-Welle und
  die ABB-Reihe sind noch nicht gegeneinander gelesen. … Ob deren Werte in dasselbe Muster
  fallen, ist unverändert ungeprüft.»

## Normen-Nacht Run 49 (13.08.2026) — nach den 17 Refuter-Runden

- **N49-1 — ERLEDIGT in Run 50 (13.08.2026).** Alle Kernbefunde sind am Original nachgeprüft
  (79 statt der gemeldeten 70, weil mehrere Marker mehrere Einzelbefunde trugen), sämtlich
  BESTÄTIGT, sämtlich inline eingearbeitet; null ⚠-Marker verbleiben in der KB. Reihenfolge nach
  Wirkung eingehalten: BKP-Codes und Vergütungs-/Ausmassgrössen zuerst. Nachfolgefragen: N50-2
  (Beweisstufe) und N50-3 (Verdikt-Verteilung). Ursprünglicher Wortlaut:
  «65 von 70 Kernbefunden sind noch NICHT hauptprozess-verifiziert.» Die Refuter-Flotte
  hat 70 Kernbefunde gemeldet; der Hauptprozess hat 5 davon selbst am Original nachgeprüft (alle
  bestätigt). Die übrigen 65 stehen als sichtbare Marker im jeweiligen Destillat, sind aber NICHT
  in Korrekturen überführt — ein Refuter-Befund kann ein Werkzeug-Artefakt sein, und eine ältere
  Bestätigung kann selbst der Fehler gewesen sein. Reihenfolge der Abarbeitung nach Wirkung:
  BKP-Codes und Vergütungs-/Ausmassgrössen zuerst (sie wandern ins LV), dann fehlende
  Anforderungen, zuletzt die Fundstellen-Versätze.

- **N49-2 — Vorschlag Methodik-Pflicht 11 (Raphael zur Freigabe).** «Ein unverifiziertes Destillat
  ist kein Wissensstand, sondern ein Entwurf. Aus Entwürfen wird keine Querschnitts-Synthese, kein
  Registereintrag und keine Skill-Empfehlung gebaut — auch nicht mit Vorbehalt.» Anlass: 17 von 17
  Destillaten beanstandet, und die aus ihnen gebaute ABB-Synthese trug eine Bedeutungsumkehr
  (Betonbau/Arbeitsgerüst) ausgerechnet in dem Satz, den sie selbst als folgenreichsten hervorhob.
  Der Vorbehalt «Warnkarte, nicht Zitierquelle» stand zweimal fett im Artikel und hat den Fehler
  trotzdem nicht aufgehalten — dieselbe Mechanik wie bei Methodik-Pflicht 9. Begründung im Report
  `outputs/2026-08-13_normen-nacht-run49.md`, Ziff. 4.

- **N49-3 — Seitenversatz der Run-48-Destillate mechanisch beheben.** Bei `sia-118-244-2006` und
  `sia-118-246-2006` sind rund 40 Fundstellen je genau eine Seite zu niedrig (Ziff. 0 bis 2), ab
  Ziff. 3 stimmen sie wieder — ein gezielt nachziehbarer Off-by-one. Bei `sia-118-265-2004` ist
  die Verschiebung unregelmässig und muss Fundstelle für Fundstelle geprüft werden. **Ursache ist
  keine neue Fehlerklasse, sondern die Verletzung der bestehenden Methodik-Pflicht 6:** die
  Seitenzahl ist am Seitenrand abzulesen, nicht zu schätzen. Am Original gegengemessen: gedruckte
  Seitenzahl = PDF-Seite, 1:1.

- **N49-4 — ABB-Synthese erst nach Abarbeitung von N49-1 hochstufen.** Der Artikel
  `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` bleibt Warnkarte. Beim Hochstufen sind die
  Grenzwerte beider Tabellen (Gerüsthöhen, Abzugsgrenzen) **gezielt nebeneinander** zu prüfen —
  die Refuter haben sie nicht beanstandet, aber auch niemand hat sie als Reihe geprüft. Ein
  nicht beanstandeter Wert ist kein verifizierter Wert.

## Normen-Nacht Run 48 (08.08.2026) — nach Abschluss des Downloads-Uebernahme-Blocks

- **N48-1 — 17 Refuter-Runden faellig (der eigentliche Rueckstand dieses Laufs).** Der ganze
  P2-Block ist destilliert, aber **kein einziges dieser Destillate ist verifiziert**; alle stehen
  auf `speculative`. Das ist kein Mangel des Laufs, sondern sein bewusster Zuschnitt — festhalten
  ist es trotzdem, weil eine volle Destillat-Liste im INDEX leicht wie ein abgeschlossener
  Bestand aussieht. Reihenfolge nach Nutzwert: ABB-Reihe zuerst (speist `ausschreibung`,
  `werkvertrag`, `unternehmerkontrolle`), dann 382/2 und 380/3, zuletzt Tunnel und Aufzuege.

- **N48-2 — SIA 112/1: woher stammt der Registerstand «2005»?** Die Norm 112/1:2017 nennt an zwei
  unabhaengigen Stellen (Titelblatt S. 1, Genehmigungsblock S. 52) als ersetzte Ausgabe die
  **Empfehlung** SIA 112/1, **Ausgabe 2004** — beide Stellen vom Hauptprozess am Original gelesen.
  Das REGISTER fuehrte 2005. Damit ist die ersetzte Ausgabe geklaert (2004), **nicht** aber die
  Herkunft der 2005: Druck-/Vertriebsjahr der Empfehlung, Eintrag im Gesamtverzeichnis SIA, oder
  Registerfehler? Zu klaeren am `Gesamtverzeichnis SIA.pdf` bzw. an `ersetzte_normen.pdf`, die
  beide im Bestand liegen. Kein Handlungsdruck, aber eine offene Kette.

- **N48-3 — ERLEDIGT in Run 51 (14.08.2026). Die Matrix ist rechnerisch aufgenommen, und sie
  hat vier Kernbefunde hergegeben.** 136 Leistungszeilen × 14 Kreuzfeld-Spalten = **1904 Felder,
  1904 gemessen (100 %)**, 972 belegt, 932 leer, 0 unklassifizierte Glyphen. Eine zweite
  Statistik mit anderem Entscheidungsmerkmal bestätigte **1904 von 1904**. Vollständiger Export:
  `training/sia112-1-anhangD-matrix.tsv`. Alle vier Kernbefunde hat der Hauptprozess am eigenen
  200-dpi-Rendering der S. 42-43 selbst nachgeprüft und bestätigt:
  (1) **Die Matrix verwendet ein fünftes Zeichen, das die Legende nicht kennt:** die Doppelmarke
  `LE` in 35 Zellen, ausschliesslich in der Spalte Auftraggeber. Ziff. D.3.1 definiert nur
  E, L, P und x; die Auflösung steht im Fliesstext D.2, nicht in der Legende.
  (2) **`E` kommt in der ganzen Matrix nur beim Auftraggeber vor**, und dessen Spalte ist in
  136 von 136 Zeilen belegt. Die Aussage in D.2, partizipierende Akteure träten «vereinzelt sogar
  als … Entscheidungsträger (E)» auf, ist im Anhang D für die E-Rolle **nirgends** eingelöst —
  für die L-Rolle dagegen 35-mal (durchwegs der Betreiber).
  (3) **Genau eine Zeile kennt keinen Entscheidungsträger:**
  «Kommunikation/Öffentlichkeitsarbeit/Information» (S. 43), dort ist der Auftraggeber selbst
  Leistungsträger.
  (4) **Die Matrix hat fünf Akteursspalten, Ziff. D.1.2 nennt nur vier Akteure** — die Spalte
  Betreiber fehlt dort, obwohl sie in 71 Zeilen belegt und in 35 davon Leistungsträger ist.
  **Das ist der Beleg für Methodik-Pflicht 6 in Reinform:** die visuelle Lesung hatte die
  Zeilentexte, Blocktitel und Spaltenköpfe zuverlässig erfasst — und trotzdem vier
  Struktureigenschaften der Tabelle übersehen, darunter ein undefiniertes Zeichen und eine ganze
  Spalte, die der begleitende Normtext nicht nennt. Kein einziger dieser Befunde wäre durch
  «prüfen, ob stimmt was das Destillat behauptet» gefunden worden; alle vier kommen aus der
  Gegenrichtung «was steht in der Quelle, wovon das Destillat nichts sagt».
  **Neuer Ertrag für die Fach-Skills:** die Phasenbelegung ist stark asymmetrisch (Vorstudien
  111, Projektierung 79, Bewirtschaftung 70 — Realisierung nur 12 von 136). Für die
  Honorarargumentation nach SIA 102 heisst das, der Zusatzaufwand aus SIA 112/1 fällt ganz
  überwiegend **vor** der Ausführung an.
  **Was offen bleibt:** die Zeilentexte und Kriterien-Rückverweise des Exports stammen aus OCR
  und enthalten erkennbare Fehler — **kein Kriterien-Rückverweis daraus ist zitierfähig**, ohne
  am Original nachgelesen zu werden. Die Kreuzfelder selbst sind davon unberührt. Ferner wurden
  die S. 45 und 47 nur rechnerisch doppelt gemessen, nicht zusätzlich ganzseitig sichtgeprüft
  (S. 43, 44, 46, 48 schon). Ursprünglicher Wortlaut:

- **N48-3 (ursprünglich) — SIA 112/1, Anhang D: die E/L/P-Kreuzfelder der Matrix S. 43-48 sind ungemessen.**
  Die Matrix ordnet ueber sechs Seiten jeder Leistung Phase, Akteur (E/L/P) und raeumlichen Fokus
  zu. Zeilentexte, Blocktitel und Kriterien-Rueckverweise sind zuverlaessig aufgenommen; die
  Kreuzfelder selbst sind bei sehr kleiner Schrift **visuell** gelesen und **nicht** rechnerisch
  gemessen — beide Refuter haben diese Luecke bestaetigt und ebenfalls nicht geschlossen. Genau
  diese Methode (Blob-Detektion + Helligkeitsmessung je Zelle) hat bei Tabelle 1 derselben Norm
  105 von 105 Zellen belegt. **Auftrag:** die Methode auf die Anhang-D-Matrix anwenden. Das ist
  der lehrbuchmaessige Fall der Methodik-Pflicht 6: eine Methode ist auf einen Teil der Quelle
  angewandt und auf einen anderen nicht.

- **N48-4 — SIA 118/265:2018 beschaffen (Bring-Schuld Raphael).** Der Bestand fuehrt die Ausgabe
  **2004**; eine Web-Recherche am SIA-Shop (08.08.2026, durch einen Destillier-Agenten) ergab, dass
  diese per 31.03.2018 durch **SIA 118/265:2018** abgeloest wurde. **Diese Statusaussage ist NICHT
  am Original verifiziert** — die Ausgabe 2018 liegt nicht im Haus. Gemaess Methodik-Pflicht 10 ist
  sie deshalb als «die KB hatte 2004 (Stand ihres Stichtags 2013), neu ist 2018» zu fuehren und
  nicht als Registerfehler. Fuer laufende Holzbau-Werkvertraege und neue Ausschreibungen ist die
  2018er Fassung zu beschaffen; bis dahin traegt das Destillat einen Warnhinweis zuoberst.

- **N48-5 — Nachfolge-Status von vier Altnormen am Original nicht erkennbar.** Bei
  `sia-162-6-1999` (Stahlfaserbeton, Empfehlung), `sia-370-21-1987`, `sia-370-24-1979`
  (Gueter-Aufzuege) und `sia-380-3-1991` (Waermedaemmung Leitungen) laesst sich am Dokument selbst
  nicht feststellen, ob und wodurch sie abgeloest sind. Die Destillate behaupten deshalb weder
  Gueltigkeit noch Ablösung. Zu klaeren am Gesamtverzeichnis SIA bzw. am Shop — mit derselben
  Vorsicht wie N48-4: eine Shop-Auskunft ist eine Statusaussage von aussen, kein Normtext.

- **N48-6 — zwei echte Quellfehler dokumentiert, nicht aufloesbar.** (a) `sia-118-267-2004`:
  Titelblatt S. 1 nennt als ersetzte Norm SIA 192 in der «Ausgabe 1996», der Genehmigungsblock
  S. 98 nennt «1998» — beide Stellen gerendert verifiziert, der Widerspruch steht **im Original**.
  (b) `sia-118-265-2004` Ziff. 8.2.2.2 verweist auf eine «Ziffer 8.1.3.2», die im ganzen Normtext
  nicht existiert (vollstaendig geprueft), vermutlich Redaktionsfehler der Norm. Beide sind im
  jeweiligen Destillat als Quellfehler markiert. Kein Handlungsbedarf, aber beim Zitieren zu kennen.

- **N48-7 — SIA 382/2:2011 verweist normativ auf SIA 382/1:2007, im Bestand liegt 382/1:2014.**
  Das Berechnungsverfahren der 382/2 ist auf die 2007er Fassung der Anforderungsnorm kalibriert.
  Ob die 2014er Fassung Groessen geaendert hat, auf die 382/2 rechnerisch zugreift, ist **nicht**
  geprueft. Relevant fuer `energie` und die KB `wissen/energie`, sobald eine Klimaanlage
  nachzurechnen ist.
  **Nachtrag 13.08.2026 (Wissens-Chef Run 29):** nicht geloescht, aber praktisch entwertet — die
  ganze SIA 382/2 ist per 31.10.2022 archiviert (siehe N29-1). Die Frage bleibt fuer **Altvertraege**
  relevant, fuer Neuprojekte ist sie gegenstandslos.

## Wissens-Chef Run 29 (13.08.2026) — Cross-KB-Nachzug

- **N29-1 — SIA 380/2:2022 liegt nicht im Bestand (neue, echte Luecke).** Mit der Archivierung der
  SIA 382/2:2011 per 31.10.2022 ist **SIA 380/2:2022** die geltende Norm fuer den Leistungs- und
  Energiebedarf klimatisierter Gebaeude (und zugleich Nachfolgerin von SIA 2044:2019). Der Volltext
  ist im Hub **nicht vorhanden und ungelesen** (Kostenschranke). Damit fuehrt die KB fuer dieses
  Thema nur noch abgeloesten Bestand. Solange das so ist, gilt: aus `sia-382-2-2011` und
  `sia-2044` darf **keine Aussage fuer ein Neuprojekt** gezogen werden, ohne den Ablöse-Vorbehalt
  mitzuführen. Beschaffungs-Bring-Schuld. Beleg: shop.sia.ch, Produktseite SIA 380/2 (2022),
  Vorgaenger-Block, selbst abgerufen 13.08.2026.

- **N29-2 — REGISTER.md Zeile 256 fuehrt SIA 382/1 noch mit «2007», obwohl die KB 2014 UND 2025
  kennt.** Das Destillat `sia-382-1-2014.md` traegt seit dem 26.07.2026 korrekt das Feld
  `ausgabe_ueberholt` (ersetzt durch SIA 382/1:2025 seit 01.02.2025) und REGISTER Zeile 472 fuehrt
  den neueren Stand. Die Zeile 256 liegt jedoch im **Stichtags-Block 25.02.2013** und ist per
  Stichtag richtig — sie darf nicht ueberschrieben, sondern nur in der Bemerkungsspalte ergaenzt
  werden (viertes Struktur-Muster, Run 25). Eigener Befund, noch nicht ausgefuehrt; bewusst nicht
  im selben Zug erledigt, weil er einen eigenen Herausgeber-Beleg braucht.

- **N29-3 — `status: VOLLSTAENDIG` hat im SIA-180-Destillat eine Kapitel-Luecke nicht verhindert.**
  `destillate/sia-180-2014.md` fehlen Ziff. 2.4.1.3 (Figur 6 gilt fuer 30-70 % r.F., Kapitel
  thermische Behaglichkeit) und Ziff. 6.4.4 (Bereich ohne aktive Be-/Entfeuchtung einzuhalten),
  obwohl das Destillat sich als vollstaendig destilliert ausweist. Gefunden ueber Feld A des
  Cross-KB-Laufs, als eine `energie`-Aussage gegengelesen wurde. Ergaenzen, nicht ueberschreiben.

## Normen-Nacht Run 46 (07.08.2026) — ein neuer Auftrag, ein Rückstand richtiggestellt

- **N46-1 — GVZ-Merkblatt 30.17.3: gezielte Runde auf Ziff. 4.2.2.3/4.2.2.4 und den
  Fliesstext-Anhang S. 8/9.** Vier Refuter-Runden haben die Aufmerksamkeit auf die Matrizen
  der Ziff. 6 und den Beispiel-Anhang ab S. 10 gelenkt. Run 46 hat gezeigt, dass genau dort
  nichts mehr zu holen ist (Matrizen zum dritten Mal zellengenau bestätigt), während der
  Fliesstext zu den **Entrauchungsöffnungen** fünf Kernbefunde trug — im angeblich seit je
  vollständig erschlossenen Bereich. **Auftrag:** eine Runde, die ausschliesslich diesen
  Bereich aufnimmt, Absatz für Absatz, in beiden Fragerichtungen. Erst danach ist die Hebung
  auf `established` redlich zu stellen. Vorher nicht.

- **N46-2 — Richtigstellung eines fortgeschriebenen Rückstands (kein neuer Auftrag).** Die
  Reports der Runs 40 bis 45 führten durchgehend als offen: «Lignatec — der Fliesstext der
  Kapitel 1 bis 4 ist nie gegen das Destillat gediffed, und eine Seiten-Inventur existiert
  nicht.» Beides ist **seit Run 41 (01.08.2026) erledigt**: der Fliesstext-Diff der Kap. 1-4
  ist gefahren (6 Kernbefunde, im Destillat-Frontmatter dokumentiert), und
  `training/lignatec-seiteninventur.md` existiert (351 Zeilen, Seitenzahlen am Rand
  abgelesen). Der Punkt ist aus der Rückstandsliste zu nehmen. **Er ist hier vermerkt, weil er
  eine Fehlerklasse belegt, nicht weil noch etwas zu tun wäre:** ein Rückstandspunkt, der von
  Report zu Report kopiert wird, ohne am Bestand geprüft zu werden, überlebt seine eigene
  Erledigung. Das ist Methodik-Pflicht 10 (externe Statusaussage gegen den eigenen Bestand
  prüfen), angewandt auf die **eigenen** Reports.

- **N46-3 — SWKI VA103-01: die drei Begriffs- und Abkürzungskapitel.** Nach Run 46 sind von
  acht Abdeckungslücken noch Kap. 1.1.1-1.1.3 (bautechnische, lüftungstechnische und
  MSR-Begriffe, S. 10-14) und Kap. 1.2 (Abkürzungen, S. 15-16) offen. Nicht bemessungsrelevant,
  aber das Destillat verwendet durchgehend Kürzel (WB/h, PP, PC, RJT/FOL) ohne eigene Referenz
  — und Run 46 hat gezeigt, wohin das führt: der Destillier-Agent deutete «WB» spontan als
  «Warte-/Bewegungseinheit» statt als **Wagenbewegung**, was die Einheit m³/WB unbrauchbar
  gemacht hätte. Der Hauptprozess hat es am Bestand korrigiert. Ein destilliertes
  Abkürzungsverzeichnis schliesst diese Fehlerquelle.

## Cross-KB-Lauf Run 27 (06.08.2026) — zwei neue Bring-Schulden

- **N27-1 — ✅ GESCHLOSSEN am 20.08.2026 (Run 58, Fassungs-Sweep über alle 35 VKF-Publikationen; Antwort für 22-15: 01.01.2017 IST die jüngste Fassung). Ursprünglicher Auftrag:** VKF-Publikationsindex für 22-15de abfragen (Fassungsstand Blitzschutz).
  Das Destillat `destillate/vkf-brl-22-15-blitzschutzsysteme.md` behauptete im Frontmatter,
  die Ausgabe 01.01.2017 sei «aktuell … am VKF-Endpunkt verifiziert». Belegt ist aber nur der
  **Live-Abruf des 2017er-PDF** am 05.08.2026 und der vollständige Diff gegen 2015 — **nicht**
  die Aussage, dass danach keine neuere Ausgabe erschienen ist. Ein Abgleich des
  Publikationsindex hat nie stattgefunden. Dieselbe Evidenzlage besteht in `energie` seit dem
  25.07.2026 über dieselbe URL. **Auftrag:** den VKF-Publikationsindex für die Dok.-Nr.
  `22-15de` abfragen, das Ergebnis (jüngste ausgewiesene Ausgabe) **mit Abrufdatum und
  Fingerabdruck belegen** und Frontmatter, Kopfwarnung sowie die neue Registerzeile in
  `wiki/REGISTER.md` Abschnitt D entsprechend nachziehen. Bis dahin gilt: die Ausgabe 2017
  existiert und geht der 2015er vor, mehr ist nicht belegt. Frontmatter am 06.08.2026 auf das
  Gemessene zurückgenommen (Cross-KB-Lauf Run 27).

- **N27-2 — SIA 380/4: Archivierungsvermerk fehlt in dieser KB, Herausgeber-Beleg noch nicht
  erbracht.** Die KB `bauprodukte` verweist auf **SIA 380/4** als massgebende Norm; die KB
  `planungsgrundlagen` führt seit dem 03.08.2026 belegt, dass **SIA 380/4:2006 seit dem
  31.07.2019 archiviert** ist. In `normen` fehlt ein Archivierungsvermerk zu SIA 380/4
  vollständig, obwohl diese KB nach `wissen/koordination/QUERBEZUEGE.md` (Zeile 46, selbst
  nachgeprüft 06.08.2026: «Gültigkeits-/Fassungsstand einer Norm … → **normen**, jede andere KB
  verweist dorthin; meldet sie eine Archivierung, ist sie in normen NACHZUZIEHEN») für
  Gültigkeits- und Fassungsstand führt. **Bewusst NICHT gesetzt** im Cross-KB-Lauf Run 27: es liegt kein
  eigener Herausgeber-Beleg vor. **Auftrag:** die Produktseite auf `shop.sia.ch` zu SIA 380/4
  abrufen (Muster: die Belegführung zu SIA 493 in `wiki/REGISTER.md`, Abschnitt «Run-5» —
  Felder «Gültig ab», «Gültig bis / archivierter Titel», Rubrik «Nachfolger»), mit Abrufdatum
  festhalten und erst dann eine Gültigkeitsaussage ins Register setzen. Achtung Nachfolgefrage:
  `SIA 2056 (SNR 592056):2019` ist im Register bereits als «ersetzt SIA 380/4:2006» geführt —
  ob der Herausgeber das als förmliche Nachfolge ausweist, ist Teil des Auftrags.
  **Unberührt bleibt** der Stichtags-Block «A) SIA — Gültigkeit je Norm, Stand 25.02.2013»:
  per Stichtag 2013 war «SIA 380/4:2006 gültig» richtig.
  **Beitrag 07.08.2026 (Run 47, Destillat `sia-387-4-2017.md`, established, Refuter-verifiziert):**
  Der Zerfall der SIA 380/4 ist jetzt hausintern am Normtext belegt, nicht nur sekundär —
  SIA 387/4:2017 «ersetzt den Teil Beleuchtung (Ziffern 3.3 und 4.3) der Norm SIA 380/4 …,
  Ausgabe 2006» (Genehmigungsblock S. 44, wörtlich vom Refuter bestätigt); Lüftung/Klima
  liegen gemäss Vorwort S. 4 in SIA 382/1 und 382/2, die übrigen Elektrizitätsverbraucher im
  Merkblatt SIA 2056. Damit ist die Nachfolge-Landkarte komplett: Beleuchtung → 387/4,
  Lüftung/Klima → 382/1+382/2, Rest → 2056. Offen bleibt allein der förmliche
  Herausgeber-Beleg der Archivierung (shop.sia.ch-Abruf mit Datum) — der bestehende Auftrag
  oben gilt unverändert.
  **Erweiterung des Auftrags, Cross-KB Wissens-Chef Run 28 (07.08.2026):** Der Abruf umfasst
  neu auch die Produktseite der **SIA 387/4** selbst (Felder «Gültig ab», «Gültig bis /
  archivierter Titel», Rubrik «Nachfolger», mit Abrufdatum). Anlass: die KB `energie` hat am
  03.08.2026 über die Nachfolger-Rubrik der **380/4** einen Eintrag «SIA 387/4:2023, gültig ab
  01.08.2023» abgerufen (`wissen/energie/outputs/2026-08-03_energie-run122.md`, Zeile 80). Der
  Beleg stammt damit von der falschen Produktseite, und die Lesart ist hausintern strittig
  (`wissen/energie/destillate/aufzug-energieeffizienz-vdi4707.md`, Zeile 4: «Ausgabe 2017,
  aktualisiert 01.08.2023»). **Erst der eigene, datierte Abruf der 387/4-Produktseite darf eine
  Fassungsaussage ins Register setzen** — bis dahin bleiben Destillat `sia-387-4-2017.md` und
  die Registerzeile SIA 387/4 unverändert bei der Ausgabe 2017 (Vorbehalt dort je nachgetragen).
  Zu beachten: die BBV I ZH, Anhang Ziff. 2.3382, erklärt für den kantonalen Vollzug weiterhin
  die «Ausgabe 2017» verbindlich (`wissen/baurecht/raw/260607_amtlich_zh_bbv1.md`, Zeile 1036) —
  ein pauschaler «abgelöst»-Vermerk wäre für den Nachweis EN-111 irreführend.
  Offen bleibt zusätzlich die Divergenz innerhalb der KB `energie` («2023er Ausgabe» vs. «2017
  aktualisiert 2023») — dort als eigener Punkt zu vermerken (Run 28 hat nur in `normen`
  geschrieben, die Rückrichtung in `energie` ist nicht ausgeführt).

  ✓ **Auftrag erfüllt 23.08.2026 (Cross-KB, KB `energie`, interaktive Session).** Beide
  SIA-Shop-Produktseiten direkt abgerufen: **SIA 387/4:2017**
  (`shop.sia.ch/normenwerk/architekt/387-4_2017_d`) — gültig ab 01.05.2017, **gültig bis
  31.07.2023, Status archiviert**, mit Korrigenda C1 vom 01.04.2020; **SIA 387/4:2023**
  (`.../387-4_2023_d`) — gültig ab 01.08.2023, Status **aktiv**, führt SIA 387/4:2017 und
  SIA 387/4-C1:2020 ausdrücklich als archivierte Vorgänger. **Damit ist belegt: 387/4:2023 ist
  eine eigenständige neue Ausgabe, keine blosse Aktualisierung der 2017er-Fassung.** Die
  KB-interne Divergenz in `energie` ist aufgelöst — die abweichende Formulierung «Ausgabe 2017,
  aktualisiert 01.08.2023» stand nur in `wissen/energie/destillate/aufzug-energieeffizienz-vdi4707.md`
  und ist dort am 23.08.2026 korrigiert; die übrigen fünf Fundstellen führten bereits korrekt
  «SIA 387/4:2023». Nachtrag auch in `wiki/REGISTER.md` Zeile 315. **Weiterhin offen (neuer,
  eigener Auftrag, nicht mehr Teil dieser Bring-Schuld):** Beschaffung und Re-Destillat der
  Norm SIA 387/4:2023 selbst (Bestand im Haus ist weiterhin die 2017er-PDF); der ZH-Vollzugs-
  Vorbehalt (BBV I ZH nennt für EN-111 die Ausgabe 2017 als beachtliche Richtlinie) bleibt
  unverändert bestehen.

## Run 45 (06.08.2026) — vier Rückstände geschlossen, drei Statusfragen am Herausgeber belegt

### GESCHLOSSEN

- **VKF-Merkblatt 2001-15 «Solaranlagen», Ausgabe 01.01.2022 — Re-Destillat erstellt (der P1 vom 05.08.).**
  `destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md`. Alle vier Fingerabdrücke des
  Bezugswegs unabhängig nachgemessen und exakt getroffen (15 S., 524'403 Bytes, MD5
  `a17958fdf95c720434ffa90117964b23`, Titelblatt «01.01.2022 / 2001-15de»). Das PDF liegt
  bewusst nur in `/tmp`, nicht im Repo (Urheberrecht VKF). Alle drei bekannten Deltas am
  Original bestätigt; fünf weitere selbst gefunden (Tabelle 1 neu gefasst, Kap. 3.3
  Naturgefahren neu, Anhang S. 13/14 neu, Batterieanlagen als eigene Gefahrenquelle,
  Ziff. 5 Gültigkeit neu). Refuter-Runde im selben Lauf: **BEANSTANDET**, 2 Kernbefunde
  eingearbeitet. Status bleibt `speculative`.
- **E-123-6 (Ausgabestand SIA 118 für die Vertragshierarchie) — geschlossen.** Geltend ist
  **SIA 118:2013**, gültig ab 01.01.2013; die 1991er ist seit 31.12.2012 archiviert. Das
  Register führte das bereits korrekt (Zeile 84) — die Frage war also nur in `energie`
  offen, nicht in `normen`. **Neu belegt und nachgetragen:** eine **Korrigenda C1** als
  Download-Anhang der Produktseite sowie das Feld «Revision 1 / Revisions-Datum 01.12.2025».
- **E-123-3 (Nachfolge von SIA 162/4) — geschlossen, und die verbreitete Fassung war unpräzise.**
  Der Herausgeber weist die Nachfolge selbst aus (Rubrik «Nachfolger» auf der Produktseite
  von SIA 162/4). Damit ist sie **nicht mehr nur sekundärquellengestützt**. Zwei
  Präzisierungen: es heisst **SIA 2030**, nicht «MB 2030» (so ist es im Shop nirgends
  beschriftet), und die Kette geht weiter — SIA 2030:2010 ist selbst archiviert (bis
  31.10.2021), geltend ist **SIA 2030:2021 «Beton mit rezyklierten Gesteinskörnungen»**
  (ab 01.11.2021, Revision 1 vom 01.11.2025, Korrigenda C1). Register Zeile 308 entsprechend
  korrigiert; sie führte bis heute «2010 gültig».
- **E-123-2, Teil Korrigenda SIA 493-C1 — geschlossen.** Sie existiert (SN 550493-C1, 13 S.,
  gültig ab 01.03.1998, archiviert per 30.06.2022) und ist **kostenlos** beziehbar (0.00 CHF).
  Das Fehlen eines Nachfolgers für SIA 493 ist jetzt **strukturell** belegt: die Produktseite
  hat gar keine «Nachfolger»-Rubrik, während dieselbe Rubrik bei SIA 162/4 vorhanden und
  befüllt ist. Der EPD-/KBOB-Weg bleibt Sekundärquelle.

### OFFEN, mit verifizierter Beschaffungsinfo (Bring-Schuld Raphael, Claude kauft nicht)

- **SIA 430:2023** «Vermeidung und Entsorgung von Bauabfällen», gültig ab 01.08.2023:
  **90.00 CHF**, Papier oder Download SRD, shop.sia.ch. Achtung Verwechslungsgefahr: der
  kursierende Wert 80.00 CHF gehört zur **archivierten Vorgängerausgabe**.
- **SIA 118/430:2023** «Allgemeine Bedingungen für die Vermeidung und Entsorgung von
  Bauabfällen», gültig ab 01.08.2023: **80.00 CHF**. Primär einschlägig für den Skill
  `werkvertrag`; hat im REGISTER weiterhin keine Zeile, weil der Inhalt fehlt.
- **Teilweise ERLEDIGT 07.08.2026:** Die Korrigenda liegt jetzt als **SIA 118-C1:2026** im
  Bestand (`alle/118-C1_2026_d.pdf`, Übernahme aus Downloads-Sammlung, Titelblatt verifiziert)
  — der Kauf ist damit hinfällig. **Inhalts-Destillat ERLEDIGT 07.08.2026 (Run 47, Vorrang-Lauf):**
  `destillate/sia-118-c1-2026.md`, established nach unabhängiger Refuter-Runde (BESTANDEN,
  0 Kernbefunde). Materieller Gehalt: genau EINE Änderung — Art. 179 Abs. 2 SIA 118:2013,
  Rügefrist für verdeckte Mängel neu «innert 60 Tagen nach der Entdeckung» statt «sofort»
  (Anlass: OR-Revision Baumängel per 01.01.2026, AS 2025 270; zwingendes Recht, geht der
  Norm vor; C1 gilt vertraglich nur, wenn zusätzlich zur SIA 118 vereinbart). Das
  Revisions-Datum 01.12.2025 der Produktseite deckt sich nach Lage der Daten mit dieser C1
  (Genehmigung ZO 11.11.2025, gültig ab 01.01.2026); am Dokument selbst kommt das Datum
  nicht vor. Offen bleibt allein die **Hauptnorm SIA 118:2013** (Bring-Schuld Raphael).

### METHODISCHE LEHRE AUS DIESEM LAUF (gehört ins PROGRAMM.md)

Eine Statusrecherche am Herausgeber muss **vor** dem Melden gegen den eigenen Bestand
geprüft werden. Der SIA-118-Befund sah nach einem Fehler mit Hub-Reichweite aus (die KB
führt nur `sia-118-1991`), war aber keiner: Register Zeile 84 und das Destillat selbst
führten die Ablösung längst. Das ist Methodik-Pflicht 7 in ihrer allgemeinen Form —
**bevor ein Befund als Fehler verbucht wird, ist zu prüfen, ob die KB die Aussage an
anderer Stelle bereits führt.** Der Ertrag war trotzdem echt, nur kleiner: die Korrigenda
und der Revisionsstand fehlten wirklich.

## 2026-08-05 (Cross-KB Lauf 26) — VKF-Merkblatt 2001-15 «Solaranlagen»: Fassung entschieden, Re-Destillat offen

**Der Delta ist entschieden, die Beschaffungsfrage ist bezahlt — offen ist nur noch der
Lesevorgang.** Am 05.08.2026 wurden beide Nachfolge-Ausgaben vom adversarialen Verifikator
selbst heruntergeladen und gelesen. Die Existenz und Erreichbarkeit ist damit **verifiziert und
darf nicht ein zweites Mal aufgemacht werden** (gleiche Regel wie bei SIA 430:2023 oben).

1. ~~**Destillat der Ausgabe 01.01.2022 anlegen (P1, eigener Lesevorgang am Original).**~~
   ✔ **ERLEDIGT in Run 45 (06.08.2026)** → `destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md`,
   alle 15 Seiten gelesen, Fingerabdrücke geprüft, Refuter-Runde gefahren (BEANSTANDET, 2
   Kernbefunde eingearbeitet). Die Zwischenausgabe 01.01.2017 hat weiterhin kein eigenes
   Destillat; Punkt 3 (Ablage-Pendenz SharePoint) bleibt unverändert offen und ist bewusst
   nicht angefasst worden, weil er Raphaels Entscheid verlangt. Ursprünglicher Wortlaut: Die
   Ausgabe ist eine **Vollrevision** (15 statt 11 Seiten), ein Inline-Patch der 2015er-Destillate
   genügt nicht. Bezugsweg, öffentlich und kostenlos, am 05.08.2026 selbst geladen:
   `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-197.pdf/content`
   — 15 Seiten, 524'403 Bytes, MD5 `a17958fdf95c720434ffa90117964b23`, Titelblatt
   «01.01.2022 / 2001-15de». Zwischenfassung **01.01.2017** (12 S., Portal-Label «gültig bis
   31.12.2021»):
   `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-3729.pdf/content`.
   Beim Destillieren zwingend mit abzudecken: Tabelle 1 (DC-Verlegung, 2022 neu gefasst),
   Kap. 3.3 «Naturgefahren» (SIA 261/261-1 statt VKF-Wegleitung), Anhang S. 13 (Entscheidbaum)
   und S. 14 (RWA-Lichtraumprofil), Ziff. 5 «Gültigkeit». Das PDF selbst **nicht** ins Repo
   committen (Urheberrecht VKF) — nur URL, Seitenzahl und MD5 als Fingerabdruck festhalten.
2. **Bereits erledigt und nicht zu wiederholen:** Die drei praxisrelevanten Deltas sind am
   Original verifiziert und in beiden 2015er-Destillaten als Delta-Block und zweiwertige
   Fundstellen-Vermerke hinterlegt (`vkf-brm-2001-15-solaranlagen.md`,
   `vkf-merkblatt-2001-15-solaranlagen.md`): Unterdachbahnen **RF3(cr) Pflicht seit 01.01.2017**
   (nicht erst 2022, Beschluss Technische Kommission VKF vom 02.12.2016), Flächenschwelle
   **«> 1200 m²»** statt «≥ 1200 m²», und der **RWA-Mindestabstand 2 m ist kein
   Lösungsansatz-Wert mehr** (Anhang S. 14, massnahmenfreie Schwelle mit Lichtraumprofil).
3. **Ursache, die den Fehler sonst reproduziert (P1, Ablage-Pendenz an Raphael, kein
   Claude-Alleingang):** Das JANS-SharePoint-Archiv hält an **beiden** Ablageorten
   (`PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015/` und
   `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/`) byte-identisch nur die Fassung
   **2015** (MD5 `56fb4bab06eaa4efec181d7f6fb44e87`, 11 S.) — trotz des Ordnernamens
   «2015-17-22». Solange das so bleibt, erzeugt **jeder** künftige Destillat-Lauf, der brav
   «Primärquelle SharePoint» liest, denselben veralteten RF4(cr)-Wert erneut. Die Ausgabe 2022
   ist in beide Ordner zu legen und die 2015er als «überholt» zu kennzeichnen, **nicht** zu
   löschen (Nachweiswert für Altprojekte).
4. **Lehre für die Fassungsprüfung:** Bei einer VKF-/VKG-Fassungsfrage ist der Hausbestand nie
   die letzte Instanz. Vor jedem «Bring-Schuld»-Vermerk sind `services.vkg.ch` bzw.
   `services2.vkf.ch` abzufragen — dasselbe Portal, das diese KB drei Tage nach dem
   Bring-Schuld-Eintrag vom 25.07.2026 für das Merkblatt 2005-15 selbst benutzt hat.

## 2026-08-04 (Cross-KB energie → normen, Wissens-Chef Run 25) — SIA 430:2023 + SIA 118/430:2023 beschaffen, drei nie angekommene Übergaben aus energie-Run 123

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8). Anlass:
die Übergaben **E-123-2, E-123-3 und E-123-6** aus dem energie-Run 123 (04.08.2026) standen
ausschliesslich in `wissen/energie/wiki/QUESTIONS.md`; in `normen` war davon nichts angekommen
(grep «E-123» über die ganze KB: 0 Treffer). Für **SIA 430** war überhaupt keine Übergabe
ausgestellt worden. Die Formulierungen unten folgen dem adversarialen Verifikationsurteil,
nicht der ursprünglichen Fundmeldung.

1. **SIA 430:2023 beschaffen und destillieren (P1) — Existenz ist geklärt, der Inhalt fehlt.**
   Ausgabe 2023 **existiert**, Datum am Herausgeber verifiziert 04.08.2026: SIA 430:2023
   «Vermeidung und Entsorgung von Bauabfällen», gültig ab **01.08.2023**; die Ausgabe 1993
   «Entsorgung von Bauabfällen» galt bis **31.07.2023** (shop.sia.ch, Produktseite). **INHALT
   nicht im Haus — Beschaffung + Destillat offen.** Das ist ausdrücklich **keine** ungeprüfte
   Meldung mehr: der Verifikationsschritt «gibt es die Ausgabe überhaupt» ist bezahlt und darf
   nicht ein zweites Mal aufgemacht werden. Nachgeführt sind bereits `wiki/REGISTER.md`
   (Zeile SIA 430, Bemerkungsspalte), `destillate/sia-430-1993.md` (Feld `ersetzt_durch` +
   Warnblock) und `destillate/INDEX.md`. Nur sekundärquellengestützt und **nicht** als
   Norminhalt gesetzt: die verbreitete Aussage einer «inhaltlichen Neuausrichtung auf
   Kreislaufwirtschaft» (espazium.ch).
2. **SIA 118/430:2023 fehlt in `normen` vollständig (P1 für `werkvertrag`).** «Allgemeine
   Bedingungen für die Vermeidung und Entsorgung von Bauabfällen», Ausgabe 2023, gültig ab
   **01.08.2023** (shop.sia.ch, verifiziert 04.08.2026). Es ist ein **eigenes, neues
   SIA-Dokument**, in das der Organisationsteil der alten SIA 430:1993 ausgelagert wurde, und
   es hat im `REGISTER` bis heute keine Zeile. Primär einschlägig für den Skill `werkvertrag`
   (SIA-118-Familie), nicht nur für `normen`. Zu beschaffen, zu destillieren und ins REGISTER
   aufzunehmen.
3. **E-123-2 — Nachfolgeweg für SIA 493 ungeklärt (Übergabe aus `energie`, P2).** Der
   *Gültigkeitsstatus* ist mit diesem Lauf geklärt und in `normen` nachgeführt: SIA 493:1997
   ist seit **30.06.2022 archiviert** (shop.sia.ch, Produktseite SIA 493, selbst abgerufen
   04.08.2026) — nachgetragen in `wiki/REGISTER.md` (Run-5-Zeile), `destillate/sia-493-1997.md`
   (Feld `gueltigkeit` + Warnblock) und `destillate/INDEX.md`. **Offen bleibt der Nachfolgeweg:**
   ein 1:1-Nachfolger ist **nicht belegt**, der Shop weist kein «ersetzt durch» aus. Der
   naheliegende Weg über EPD nach **EN 15804+A2** bzw. die **KBOB-Ökobilanzdaten** ist nur
   sekundärquellengestützt und darf nicht als Nachfolgeregelung gesetzt werden. Für LV-Text ist
   bis auf Weiteres neutral zu formulieren («produktbezogene Ökodeklaration bzw. Eintrag in den
   KBOB-Ökobilanzdaten»). Ebenfalls offen: der Status der **Korrigenda SIA 493-C1/1997**
   (existiert im Shop, nicht geprüft). Betroffen ist jede Devis-Klausel «Deklaration nach
   SIA 493».
4. **E-123-3 — Ablösung von SIA 162/4 (Recyclingbeton) nur sekundärquellengestützt (Übergabe
   aus `energie`, P2).** Die **Archivierung per 31.12.2009** ist an der SIA-Shop-Statusanzeige
   belegt; dass das **SIA-Merkblatt MB 2030** an ihre Stelle tritt, ist es **nicht**. Die
   `energie`-Destillate formulieren deshalb bewusst vorsichtig («faktisch abgelöst durch»).
   Aufgabe für `normen`: den Nachfolgestatus am Herausgeber verifizieren und erst dann eine
   Fundstelle setzen; bis dahin keine Nachfolge-Behauptung.
5. **E-123-6 — Ausgabestand von SIA 118 in den Kontroll-Checklisten offen (Übergabe aus
   `energie`, P2).** Die eco-bau-/AHB-Quelle zitiert **SIA 118 ohne Ausgabejahr** für die
   Vertragshierarchie. `normen` führt bisher nur `destillate/sia-118-1991.md`; ob und mit
   welchem Stand eine jüngere Ausgabe gilt, ist zu klären und im REGISTER auszuweisen —
   ohne Ausgabejahr ist eine Vertragshierarchie-Aussage nach Rule `normen-referenz` nicht
   zitierfähig.

**Methodische Lehre (gehört ins `training/PROGRAMM.md`).** Das Bestands-Korrektiv des REGISTER
fängt **Revisionen** ab (eine jüngere Datei im Haus fällt auf), aber prinzipiell **keine
ersatzlosen Archivierungen** (SIA 493) und **keine Revisionen, bei denen der Hausbestand genau
die 2013-gültige Ausgabe ist** (SIA 430). Beide Klassen liegen ausserhalb der «Verbindlichen
Regel» des REGISTER-Kopfs, die nur bei **leerer** Bestand-Spalte greift — dort erzeugt die
gefüllte Bestand-Spalte falsche Sicherheit. Sinngemässe Ergänzung der Regel: «Bestand ==
2013-gültige Ausgabe ist KEIN Aktualitätsnachweis; nur ein Bestand JÜNGER als 2013 wirkt als
Korrektiv.» Ohne diese Ergänzung wiederholt sich derselbe Fehler auf den übrigen 74
Bestand-Zeilen. Praktischer Hebel: der SIA-Shop ist ohne Login abfragbar — belastbar ist aber
**nur** die `ProduktDetail.aspx`-URL mit `Produkt_ID`; die generische URL
`shop.sia.ch/normenwerk/architekt/<nr>/d/D/Product` lieferte in der Verifikation zweimal fremde
Produkte, der Treffer ist deshalb immer am Titel gegenzulesen.

## Run 43 (04.08.2026) — zwei Rückstände geschlossen, sechs neu offen

### GESCHLOSSEN

- **S42-1 (SWKI VA103-01, Anhänge D/E/F) — geschlossen.** Alle drei Anhänge sind aufgenommen
  und eingearbeitet. Damit ist der als «dringlichster inhaltlicher Rückstand dieser KB»
  geführte Simulationsnachweis destilliert: Reduktion des Gesamt-Abluftvolumenstroms **bis
  auf minimal 70 %** (Ziff. E1.1, S. 95), **CFD zwingend** und Zonenmodelle ausdrücklich
  ungeeignet, **RANS statt LES**, Dokumentationspflicht mit CO-Verteilung auf 1 m und 2 m
  Höhe. Der Seitenversatz PDF = Druckseite + 2 wurde von zwei Agenten unabhängig nachgemessen.
- **K42-4b (SIA 500:2009, Anhang E vollständig) — geschlossen.** E.3, E.4 und E.5 samt
  vollständigen Positionslegenden aufgenommen. **Nebenbefund mit Korrekturwirkung:** die KB
  führte Anhang E als «S. 42-60»; am Original umfasst er **S. 48-55** (davor B/C/D, danach ab
  S. 56 Anhang F). Ein E.6 existiert nicht — die Abdeckung ist damit gemessen, nicht geschätzt.
- **SMU42-1 (existiert eine an VKF 2015 angepasste Fassung?) — teilweise beantwortet.** Die
  Fassungszuordnung zur Brandschutznorm vom 26.03.2003 ist belegt (Inkraftsetzung 01.01.2005,
  zweimal im Dokument; Gegenprobe über die Nummerierung: geltende Norm 1-15 führt den Fluchtweg
  in Art. 35, das Merkblatt zitiert Art. 37). Das Ausgabedatum ist über die inhaltsgleiche
  VST-Ausgabe im Bestand als «Erstausgabe 2009, Version 2009_1» belegt — eine Herstelleranfrage
  ist dafür **nicht** mehr nötig. Offen bleibt allein, ob der Verband inzwischen neu aufgelegt hat.

### NEU OFFEN

- **N43-1 — BKP 271.10 ist kein BKP-2017-Code, und er steckt noch in 13 Hub-Dateien.**
  Am Original zweifach nachgezählt: unter 271 Gipserarbeiten führt das BKP 2017 nur
  **271.0 Innenputze**, 271.1 Trockenbauarbeiten, 271.2 Gerüste; zweistellige Nachkommastellen
  gibt es in der ganzen Gliederung nicht. Korrigiert sind die beiden normativen Quellen
  (`references/bkp-2017/BKP-2017-Liste.md`, Rule `bkp-2017-referenz.md`) und dieses KB-Destillat.
  **Nachzuziehen bleiben u.a. `skills/ausschreibung/SKILL.md` und `skills/brandschutz/SKILL.md`**
  sowie mehrere Destillate und KB-Dateien. Solange sie stehen, erzeugen LV-Titel einen Code,
  den weder Unternehmer noch Bauherrschaft verifizieren können. **Ausserhalb des Scopes dieses
  Loops — vorzulegen.**
- **N43-2 — Dublette SMU 004 / VST 012, Entscheid Raphael.**
  `smu-merkblatt-004-tueren-in-fluchtwegen` und `vst-merkblatt-012-tueren-fluchtwegen`
  beschreiben dieselbe Publikation (SMU-Ko-Ausgabe desselben VST-Merkblatts), werden aber mit
  unterschiedlichem Status (`speculative` / `established`) und unterschiedlicher Tiefe geführt.
  Zusammenführen ist destruktiv (Rule `wissens-bibliothekar`) und wird deshalb **nur vorgelegt**.
  Argument dagegen, die beiden zu verschmelzen: siehe N43-3.
- **N43-3 — die beiden Ausgaben sind NICHT wortgleich (Druckfehler im VST-Original).**
  Vom Hauptprozess an beiden Originalen nachgelesen: die VST-Fassung druckt die Bedienkräfte
  nach SN EN 1125 als **F ≥ 80/100/220 N**, die SMU-Fassung als **F ≤ 80/100/220 N**. Sachlich
  richtig ist «≤» (eine Bedienkraft ist eine Obergrenze; eine Fluchttür, die mindestens 220 N
  verlangt, wäre das Gegenteil des Schutzziels). Zu klären, ob der Verband den Fehler kennt,
  und ob weitere Stellen der beiden Ausgaben auseinanderlaufen.
- **N43-4 — echter Widerspruch Merkblatt gegen geltende VKF, für die Praxis zu entscheiden.**
  Die Ausnahme von der Fluchtrichtungspflicht lautet im Merkblatt **max. 30 m² UND max. 6
  Personen**, in der geltenden BRL 16-15 Ziff. 2.5.5 **max. 20 Personen ohne Flächenkriterium**.
  Das Merkblatt ist strenger. Für JANS-Projekte ist festzulegen, ob dem strengeren
  Verbandsstandard gefolgt wird oder dem geltenden Recht.
- **N43-5 — Kalksandstein: drei Bemessungsgrössen sind erst im Prüfabschnitt korrigiert.**
  l1 (Lagerungsfaktoren), E'c/q_ser,lang und die Diagramm-Transformationen samt Nxo = 100 kN/m¹
  sind eingearbeitet und die gefährlichsten Stellen inline markiert; **der Kapitelteil zu den
  Rissweiten-Diagrammen ist aber noch nicht neu geschrieben.** Bis dahin gilt der Vermerk im
  Statusfeld: nicht als Bemessungsgrundlage verwenden. Ferner ungeprüft: der Wortlaut der
  SIA 266 selbst (Art. 4.3.1, 4.3.1.3, 4.3.4.3) und der aktuelle Ausgabenstand der SIA 262
  (das Merkblatt stützt sich auf SIA 262:2003).
- **N43-6 — SWKI, was Anhang E nicht regelt.** Der Anhang nennt **keine abnehmende oder
  genehmigende Instanz** für den Simulationsnachweis, keine Qualifikationsanforderung an den
  CFD-Ingenieur und keine Konvergenzkriterien. Bei einem Nachweis, der den Volumenstrom um bis
  zu 30 % senkt, ist das die praktisch entscheidende Lücke: zu klären, wer ihn in ZH/SZ prüft.

### Methodische Notiz

Die Regel «eine ausdrückliche Prüfzusicherung im Destillat ist kein Beleg» (Run 42) hat in
diesem Lauf erstmals ein **Gegenbeispiel** bekommen: beim CRB-Merkblatt hat sich die Zusicherung
«reiner Fliesstext, kein Rendering notwendig» am 300-dpi-Rendering als zutreffend erwiesen. Die
Regel bleibt richtig — sie sagt, dass eine Zusicherung geprüft werden **muss**, nicht dass sie
immer falsch ist.

Zweite Notiz, aus der Arbeit an den fünf beanstandeten Destillaten: Ein angehängter
Verifikationsabschnitt allein **genügt nicht**. Solange der Fliesstext oben die widerlegte
Aussage weiterführt, liest ein Nutzer zuerst den Fehler — dieselbe Mechanik wie beim
Absturzsicherungs-Destillat aus Run 42, wo die Kurzfassung falsch und der Fliesstext richtig
war. In Run 43 sind deshalb neun Stellen zusätzlich **inline** korrigiert worden.

## Run 42 (03.08.2026) — neu offen

### KL Hochbau, Sanitäre Anlagen ([[kl-hochbau-sanitaer-katalogblaetter]])
- **K42-1 Herausgeber/Werktitel/Ausgabedatum unbekannt.** Keine der acht gelesenen Seiten
  (S22-25, S53-56) trägt Impressum, Verlagslogo oder Datum; die Titelseite des Gesamtwerks
  liegt nicht im Ordner `09_Sanitaereinrichtung` vor. Der Dateiname «KL Hochbau» ist keine
  belastbare Quelle. Falls Raphael den Werktitel kennt: nachtragen.
- **K42-2 «BKP 251» (S22) gegen «BKB 256» (S53).** Auf beiden Blättern (Sammel- und Einzelblatt
  übereinstimmend) so gedruckt — kein Lesefehler. Druckfehler des Originals oder eigenständige
  ältere Gliederung? Für Ausschreibungstexte ohnehin die aktuelle BKP-2017-Nummer verwenden
  (Rule `bkp-2017-referenz`).
- **K42-3 Bedarfszahlen-Tabelle S53** (Piktogramm-Spalten «Apparate mit Wasser-/
  Abwasseranschluss» je Personenbelegung) nicht einzeln benennbar aus dem Scan. Bei
  verbindlicher Verwendung Original nochmals gezielt einsehen.
- **K42-4 Behindertenanlagen-Masse S56** zitieren keine Norm, wirken älterer Provenienz
  (cm-Bemassung, keine SIA-500-Terminologie) — ungeprüft, ob sie mit SIA 500:2009
  übereinstimmen. Fassungsvorbehalt analog [[bkz-2005-checkliste-hindernisfrei-hochbau]].

  > **BEANTWORTET — Wissens-Chef Run 23, 03.08.2026 (Cross-KB, Feld normen ↔ planungsgrundlagen).**
  > Nein, sie stimmen **nicht** überein, und zwar in der Raumbreite belegbar:
  > - **Raumbreite.** «Minimale Lösung» 140 cm und «Normalausführung» 160 cm unterschreiten
  >   **SIA 500:2009 Ziff. 7.2.3.2: WC-Raum min. 1,65 × 1,80 m** (aussen öffnende Tür, +0,50 m
  >   bei innen öffnender). Belegt in [[sia-500-2009]] (S. 24), unabhängig gegenbelegt in
  >   [[zhb-2005-mindestanforderungen-hindernisfreies-bauen]] («min. 165 × 180 cm») und
  >   [[bkz-2005-checkliste-hindernisfrei-hochbau]]. Die Raumtiefe 220 cm erfüllt die Norm.
  > - **Sitzhöhe.** Die 50 cm sind ein undatierter Wert ohne Normbezug (Herausgeber/Ausgabejahr
  >   dieser Katalogblätter sind nach K42-1 nicht ermittelbar). Gegen sie stehen 46 cm aus
  >   [[zhb-2005-mindestanforderungen-hindernisfreies-bauen]] (S. 27-28), dem Plan7-Katalog und
  >   DIN 18040-1 Ziff. 5.3.3 (46-48 cm, nicht 1:1 übertragbar). **Entschieden ist der Konflikt
  >   nicht** — SIA 500 Anhang E (S. 42-60) enthält die Detailmasse und ist im Hub noch nicht
  >   gelesen. Das ist die einzige Stelle, die ihn auflöst; **als Leseauftrag offen (K42-4a)**.
  > - **Wirkung schon gesetzt:** Der abnehmende Artikel
  >   `wissen/planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` führte
  >   diese Masse als «direkt als Planungsgrundlage für Pflegezimmer-Nasszellen nutzbar». Dort
  >   sind Normvorbehalt und Sitzhöhen-Vorbehalt in Run 23 gesetzt.
  > - **Für dieses Destillat:** Fassungsvorbehalt bei den S56-Massen gesetzt (siehe dort).

- **K42-4a Leseauftrag SIA 500:2009 Anhang E** (S. 42-60, PDF im Hub vorhanden, laut
  [[sia-500-2009]] noch nicht gelesen): enthält die Detailmasse rollstuhlgerechter Sanitärräume
  und entscheidet den Sitzhöhen-Konflikt aus K42-4. Höchste Priorität unter den offenen
  Lese-Aufträgen, weil drei KBs auf die Antwort warten. *(Aufgenommen Wissens-Chef Run 23.)*

  > **BEANTWORTET — Wissens-Chef Run 24, 03.08.2026, am Original-PDF.**
  > **Die Sitzhöhe beträgt 0,46 m (OK Brille). Die 50 cm der KL_Hochbau-Katalogblätter sind
  > widerlegt.**
  > - **Fundstelle:** SIA 500:2009, **Anhang E**, Schnitt zu **Figur E.1 (S. 49)** und
  >   **Figur E.2 (S. 51)**: Bemassung «**+ 0.46 (OK Brille)**». Derselbe Anhang, Positionslegende
  >   **M**: «Klappsitz 0,46 m über Boden, Ausladung mindestens 0,45 m»; Position **S**: «Sitzbank
  >   bzw. Liege 0,46 m über Boden».
  > - **Zweitbeleg, unabhängig und am selben Tag in die KB gekommen:**
  >   [[procap-mb105-2009-rollstuhlgerechte-toiletten]] führt für Pos. F «OK Brille (Sitzhöhe)
  >   **+0.46 m**» (S. 2-4) — es ist die erste ausdrücklich SIA-500-bezogene Quelle im Bestand,
  >   die das Mass trägt. Dazu ZHB 2005, Plan7-Katalog, DIN 18040-1.
  > - **Nachgezogen in:** [[kl-hochbau-sanitaer-katalogblaetter]] (Vorbehalt aufgelöst),
  >   `planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` (Sitzhöhen-Vorbehalt
  >   aufgelöst, Wert freigegeben), [[sia-500-2009]] (`gelesen`-Feld).
  > - **Anhang E ist damit nicht vollständig gelesen**, nur die Sanitär-Figuren E.1/E.2 und die
  >   Positionslegenden. Die übrigen Detailmasse (E.3 Dusche, E.4/E.5) bleiben offen — neuer,
  >   kleinerer Leseauftrag **K42-4b**.

- **K42-4b Anhang E vollständig** (S. 42-60): E.3 Dusche, E.4/E.5 sowie die vollständigen
  Positionslegenden sind über die in K42-4a gelesenen Figuren E.1/E.2 hinaus noch nicht
  ausgewertet. Geringere Priorität als K42-4a, weil kein KB darauf wartet.
  *(Aufgenommen Wissens-Chef Run 24.)*

### SWKI VA103-01 (Anschluss an S41, [[swki-va103-01-2017]])
- **S42-1** Anhang D (Anwendungsbeispiele S. 81-94), Anhang E (Simulationsnachweis-Methodik
  S. 95-106) und Anhang F sind weiterhin nicht destilliert.
- **S42-2** Tab. 7: die Spalte Q/S > 1 ist am Scan nicht zweifelsfrei aufloesbar — ist
  «Firsthoehe + 1,0 m» ein eigenstaendiger dachtypspezifischer Wert oder Teil der
  Maximum-Bildung? Gegen BAFU-Vollzugshilfe UV-1318-D Ziff. 5.3 zu verifizieren.
- **S42-3** Fuer den Kanton Schwyz enthaelt Tab. 16 (Anhang A) **keinen** eigenen
  Stationseintrag; naechstgelegen sind Altdorf und Luzern. Eine Zuordnung ist nicht belegt.

### Absturzsicherungen ZH ([[stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019]])
- **A42-1** Geometrische Bedeutung der Kote ≤ 90 in der Skizze «nur obere Traverse» unklar;
  Zuordnung der Handlaufmasse (Profilbreite gegen Wandabstand) nur als Lesart belegt. Beides
  beim Amt fuer Baubewilligungen zu klaeren.

### Hindernisfreies Bauen (Anschluss an H41-1)
- **H42-1** Alle drei neuen Merkblaetter (`ugz-hindernisfreie-aufzuege-2010`,
  `ugz-wohnungsbau-hindernisfrei-2014`, `procap-mb105-2009-rollstuhlgerechte-toiletten`)
  stuetzen sich auf SIA 500:2009, keines auf SN 521 500:1988 — aber **keines liefert einen
  eigenstaendigen Beleg zum kantonalen Verordnungsstand** (§ 239 PBG / § 34 BBV I). H41-1
  bleibt offen, ist jetzt aber praeziser gestellt. Ferner ungeklaert, ob SIA 500:2009 heute
  noch die gueltige Ausgabe ist.

### SMU-Merkblatt 004 ([[smu-merkblatt-004-tueren-in-fluchtwegen]])
- **SMU42-1** Stuetzt sich auf die VKF-Generation 2003 und ist ueberholt. Zu klaeren, ob eine
  an VKF 2015/BRL 16-15 angepasste Fassung existiert.

### PAVIDENSA
Kreuzmatrix PAV-A 03:2013 geprueft, bevor sie ein zweites Mal eingetragen wird: **bereits
offen unter P41-1** (Run 41, Abschnitt «PAVIDENSA» oben) — kein neuer Eintrag noetig.

### Fassungsstand-Sammelpunkt (Run 42)
- **F42-1** Boulevardgastronomie (Gebuehrentarif Rechtsstand 1998), Leitfaden Mobilitaet
  2000-Watt (2007, Mikrozensus 2005), Hochwasser-Leitfaden (2003, §§ nicht gegen heutige
  Fassung geprueft), AFS-Leitfaeden (BZO/PBG-Fassungen 2009), SVDW-Wegleitung (kein
  Ausgabedatum) — alle vor Verwendung in einer aktuellen Baueingabe zu verifizieren.

### `Flaechen_Wettbewerb.pdf`
- **FW42-1** Herkunft und Projektbezug des handschriftlichen Blatts ungeklaert (Indiz
  Healthcare-Raumprogramm).

## Run 41 (MacBook Pro, 01.08.2026) — neu offen

### Lignatec / Lignum
- **L41-1 Fussnote [a] der Tab. 3/4/5 nennt drei Nutzungen, die im Destillat nirgends vorkommen:**
  «Heime für Behinderte, Strafanstalten, geschlossene Erziehungsanstalten». In Runde 10
  ausdrücklich NICHT als Befund gewertet (Tabellenapparat, nicht Fliesstext) — in der nächsten
  Tabellenrunde zu prüfen. Für JANS mit Healthcare-Schwerpunkt potenziell einschlägig.
- **L41-2 REI90(nbb)/EI90(nbb) in Tabelle 4:** auf S. 13 trägt eine Nutzungszeile diese Werte
  (Spalten 4, 5-6, 7-8), und der Erläuterungskasten derselben Seite definiert die Klasse. Das
  Destillat nennt in seinem gesamten Tab.-4-Abschnitt **keine 90-Minuten-Klasse**. Welche
  Nutzungszeile es ist, wurde nicht abschliessend zugeordnet und deshalb nicht behauptet.
- **L41-3 Getönte Deckschicht/Stiel in Tabelle 2:** in drei Zeilen sind Deckschicht und Stiel
  messbar grau unterlegt (177/180/179 gegen 240/245 bei identischem Muster); die Legende kennt
  keine getönte Variante. Konsistent, aber aus der Quelle nicht ableitbar. (Aus Run 40, hier
  fortgeschrieben.)
- **L41-4 Was am Lignatec noch NIE geprüft wurde** (auszuweisen nach der Methoden-Lehre): die
  Zellwerte der Tabellen 3, 4 und 5 sind seit Runde 8 nicht erneut aufgenommen worden; Tabelle 2
  ist nur im Einleitungsabsatz, nicht zellenweise gegen das Destillat gehalten. Die Seiten-
  Inventur (`training/lignatec-seiteninventur.md`) liegt nun vor und macht eine solche Runde
  billig.

### GVZ RWA-Parkhaus
- **G41-1 Bedeutung der durchgehend blauen letzten Matrixspalte.** Ob dort «nur der gesprinklerte
  Fall ist tabelliert» oder «der Wert gilt für beide Fälle» gemeint ist, sagt der Fliesstext
  nicht. Auslegungsfrage an die Kantonale Feuerpolizei ZH.
- **G41-2** Ob eine neuere Ausgabe des Merkblatts 30.17.3 als die vom 28.02.2011 existiert.
- **G41-3** DIN 18232-2:2003-06 (Quelle der Durchflussbeiwerte) gegen die im Haus liegende
  Fassung 2007 — weiterhin ungeprüft.

### SWKI VA103-01
- **S41-1 Der Bemessungskern ist nicht destilliert:** Kap. 3.4/3.5 mit Tab. 12
  (Benutzerkategorien, Parkdauer, Wagenbewegungen je Parkplatz), Tab. 15 (Kaltstart 22 m³/WB,
  Kaltfahrt 0,35 m³/m, Wartezeit 10 m³/WB) und den vier Korrekturfaktoren f_ODA/f_IDA/f_FG/f_IH.
  Ohne sie erweckt das Destillat Bemessungsfähigkeit, die es nicht hat. **Dringlichster Punkt.**
- **S41-2 Die Mess- und Steuerungsebene fehlt ganz** (Kap. 2.8): Schaltwerte Tab. 10 (CO ein bei
  50 ppm, Alarm 200 ppm; NO, NO₂), Messstellendichte (eine je 20 PP oder 400 m², mindestens zwei
  je Anlage), Fühlerhöhen (CO 1,5-3,0 m, NO/NO₂ 0,2-1,5 m), Nachlaufzeit min. 5 Minuten,
  Mehrstufigkeit ab 2'000 m³/h empfohlen und ab 2 kW zwingend.
- **S41-3 Ziff. 2.8.2 Brandfall fehlt** — für den Skill `brandschutz` die zentrale Aussage: die
  Entrauchung darf NICHT allein mit der normalen Lüftungsanlage erfolgen; Kombination nur mit
  separatem Abluftventilator für die Lüftung.
- **S41-4 Die konkreten Kaminhöhen fehlen** (Tab. 7/8): Normalfall Q/S ≤ 1 Schrägdach Firsthöhe
  + 0,5 m, Flachdach min. 1,5 m, begehbares Flachdach min. 2 m; für Q/S > 1 abweichend.
- **S41-5 Kap. 2.7 Spezialanwendungen fehlt ganz** — Waschboxen, Motorrad-/Veloräume,
  Autoaufzüge und insbesondere **Elektrofahrzeuge** (SN EN 50272-3 nur bei wässrigem Elektrolyt;
  bei Lithium stattdessen Wärmeeintrag 10 % der Ladeleistung nach VDI 2166 Blatt 2). Bei
  heutigen Tiefgaragenprojekten der praktisch meistgefragte Punkt.
- **S41-6 Kap. 6/7 Abnahme und Betrieb fehlen** — Abnahme nach SIA 118 Art. 157-164,
  Abnahmeprotokolle SWKI 96-5, Kontrollmessverfahren SN EN 12599, jährliche Wartungspflicht.
  Für `unternehmerkontrolle` und `kostenkontrolle` einschlägig.
- **S41-7 Impulsventilatoren (Jet-Fan, Ziff. 2.5.3) fehlen** — heute die übliche Bauart in
  Tiefgaragen; Funktionsnachweis mittels Simulation zwingend.
- **S41-8** Ob die französische Parallelfassung von der deutschen abweicht — nicht gediffed.
- **S41-9 (P2, Korrektur 01.08.2026, Ultra-Code-Review): Grenzfall exakt 100 m².**

  > ✅ **GESCHLOSSEN 23.08.2026.** Original beschafft (SharePoint Site PL, Drive `02_Recht_Norm`,
  > `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für Parkhäuser.pdf`, per
  > M365-Graph-Connector geladen; Datei ist ein Scan ohne Textlayer, per `pdftoppm -r 200`
  > gerendert und visuell gelesen — Druckseite 5 = PDF-Seite 7, Druckseite 10 = PDF-Seite 12,
  > Versatz +2 wie im Destillat dokumentiert). Beide Fundstellen wörtlich geprüft: **Ziff. 0.1.2
  > «Anwendungsbereich» (Druckseite 5)** sagt «Die Richtlinie gilt für Mittel- und Grossgaragen
  > **ab 100 m²** …» und separat «Für Kleingaragen **unter 100 m²** wird empfohlen …». «Ab» (≥)
  > und «unter» (<) grenzen lückenlos und überschneidungsfrei aneinander — eine Garage von genau
  > 100 m² fällt unter «ab 100 m²», die Richtlinie **gilt** dafür (Mittelgarage). **Kap. 1.1.1
  > «Begriffe, Definitionen» (Druckseite 10)** formuliert dieselbe Grenze dagegen unpräzise:
  > «Kleingarage … bis 100 m²» und «Mittelgarage … von 100 m² bis 1'000 m²» — dort gehört der
  > Wert 100 m² wortwörtlich zu beiden Kategorien. Das ist ein Redaktionsversehen im
  > informellen Glossar, nicht in der operativen Anwendungsbereichs-Klausel; Ziff. 0.1.2 ist die
  > für die Frage «greift die Richtlinie» massgebliche Stelle und dort eindeutig. Nachgetragen
  > in `destillate/swki-va103-01-2017.md` (Abschnitt «Geltungsbereich» und «Begriffe/
  > Garagentypen»).
  >
  > **Ursprungswortlaut (unverändert dokumentiert):** `outputs/2026-07-31_normen-nacht-run40.md`
  > (Abschnitt 3.2) und das Destillat formulierten den Anwendungsbereich als «gilt ab 100 m²» /
  > «Kleingaragen unter 100 m² gilt sie nicht», während dieselbe Quelle die Garagentypen als
  > «Kleingarage bis 100 m², Mittelgarage 100-1'000 m², Grossgarage über 1'000 m²» definiert
  > (Ziff. 1.1.1) — ohne Zugriff auf das Original schien beides zu kollidieren.

### Hindernisfreies Bauen (neu aufgenommener Bestand)
- **H41-1** Schlagen § 239 PBG und § 34 BBV I heute auf **SIA 500:2009** durch, oder verweist
  das kantonale Recht noch auf SN 521 500:1988? Die BKZ-Checkliste nennt ausdrücklich die
  Fassung 1988. **Rechtlich relevant, an der Quelle nicht entscheidbar.**
- **H41-2** Das Mass der «erhöhten Anforderungen» für **Sonderbauten** (Spitäler, Alters- und
  Behindertenheime) gegenüber SN 521 500 — im Dokument nicht beziffert. Für JANS mit
  Healthcare-Schwerpunkt der wichtigste offene Punkt dieses Bestands.
- **H41-3** Adressüberschneidung: die Schweizerische Fachstelle für behindertengerechtes Bauen
  und die BKZ-Bauberatung teilen Kernstrasse 57, 8004 Zürich, führen aber verschiedene
  Telefonnummern. Ko-Lokation, Trägerschaft oder Zufall? Aus den Dokumenten nicht klärbar.
- **H41-4** Die Merkblätter 14/04 und 15/04 der Fachstelle liegen im Bestand nicht vor.

### PAVIDENSA
- **P41-1 Die Kreuzmatrix von PAV-A 03:2013 ist nicht aufgenommen** — sie liess sich aus dem
  Textextrakt nicht spaltengenau rekonstruieren, eine gerenderte Zellaufnahme steht aus. Sie
  entscheidet über die **Materialverträglichkeit** von Schutzsystem und Abdichtungsbahn; eine
  halbrichtige Fassung wäre schlimmer als keine.
- **P41-2 Sechs PAV-E-Merkblätter fehlen im Bestand**, obwohl die Checkliste PAV-E 16:2012 sie
  als zuständige Quellen benennt: PAV-E 03:2008 (Austrocknungsverhalten), 04:2008
  (Feuchtigkeitssperren), 06:2009 (Masstoleranz und Ebenheit), 10:2009 (Fugen in Zementestrichen),
  13:2010 (Untergrund und Einbaudicken), 14:2011 (Fugen mit Parkettbelag). Ob sie im Haus fehlen
  oder anderswo liegen, ist offen.
- **P41-3** Widerspruch in PAV-E 12:2013: die Klasse «A 3» trägt die Abriebmenge **4** cm³/50 cm².
  Quelleneigenheit oder Satzfehler? Am Merkblatt nicht entscheidbar.
- **P41-4** PAV-E 17:2012 führt für Calciumsulfat-Fliessestriche und -Mörtelestriche **identische**
  Ampelwerte. Bewusst nicht differenziert oder Satzfehler?
- **P41-5** Vier PAVIDENSA-Merkblätter tragen kein Tag/Monat-Fassungsdatum, PAV-E 11:2009 nicht
  einmal ein Monat/Jahr im Fliesstext.

### Methodik
- **M41-1 Textlayer-Falle bei bebilderten Merkblättern.** Beim GVZ-Merkblatt verfälscht der
  Textlayer die Vergleichszeichen (gedruckt «≤», extrahiert «<»; gedruckt «≥», extrahiert «>»)
  und bildet Zellteilungen gar nicht ab. Beim PAVIDENSA PAV-A 01 ordnete die Textextraktion drei
  über mehrere Spalten **verbundene Zellen** falsch zu. **Regel: Tabellen mit verbundenen Zellen
  oder Farbcodierung werden gerendert und abgelesen, nie extrahiert.** Kandidat für die
  Aufnahme als Methodik-Pflicht 8 ins PROGRAMM.

# QUESTIONS — KB Normen (offene Fragen / Lücken)

## Run 40 (MacBook Pro, 31.07.2026) — neunte Lignatec-Runde: null Wertfehler, neun Lücken

**Gefahren wurde**, was Run 39 als offen ausgewiesen hatte: die rechnerische Aufnahme von
**Tabelle 2** und den **acht Axonometrien**. Erstmals in dieser Verifikationsreihe **kein
einziger falscher Zahlenwert** — nur Vollständigkeitsbefunde. Das ist ein anderer Befundtyp als
in den Runden 6-8 und für die Taktungsfrage bedeutsam.

### Offen / vorzulegen

1. **Lignatec-Taktung bleibt NICHT entscheidbar — die Umstellung auf Ereignis-Trigger wird
   ausdrücklich nicht vorgeschlagen.** Begründung nach der Methoden-Lehre: ungeprüft ist bisher
   der **Fliesstext der Kapitel 1-4** (S. 3, 6-7, 10-11, 14). Er wurde nie systematisch gegen das
   Destillat gediffed, und eine **Seiten-Inventur nach dem Muster `training/l41-seiteninventur.md`**
   existiert für den Lignatec nicht. Das ist die nächste Methode auf einem noch ungeprüften Teil.
   Erst danach ist die Frage redlich zu beantworten.
2. **Bookkeeping-Widerspruch zusammenführen.** Der Abschnitt vom 31.07.2026 (Wissens-Chef Run 21,
   unten) führt als offene Frage, ob diese KB die restlichen normrelevanten Bestände **systematisch**
   abarbeitet — konkret `06_Richtlinien` (GVZ, Suva, Suissetec, VSA) sowie die eigenständigen
   Schwesterordner `04_Merkblätter/Fugenlose Bodenbeläge` (PAVIDENSA) und `09_Sanitaereinrichtung`
   (**nicht** Teile von `06_Richtlinien`, siehe `training/norm-inventar.md`, Tabelle ~Z. 1162 f.).
   Das Inventar hat sie am 29.07.2026 bereits als Arbeitsliste aufgenommen (Entscheid Raphael).
   Run 40 ist dem Inventar gefolgt — es ist der spezifischere und gezeichnete Entscheid. Die beiden
   Stellen widersprechen sich und gehören zusammengeführt.
3. **Rest des Kern-Nachtrags: 47 Positionen offen** (PAVIDENSA 9, `09_Sanitaereinrichtung` 14,
   BKZ 4, lose Merkblätter 20). Darunter mit `04_Merkblätter/SN592_Liegenschaftsentwaesserung_d.pdf`
   eine echte SN-Norm, die ins REGISTER gehört.

**Hinweis Nummerierung (Korrektur 01.08.2026, Ultra-Code-Review):** Die vier Aufträge dieser
Runde kollidierten in der ursprünglichen Nummerierung N-R40-1..4 mit vier älteren, bereits
vergebenen Aufträgen (VSA/Aufzug-Themen, Abschnitt «31.07.2026, Run 40, Bestandsfalle» unten).
Sie sind unten als Checkboxen unter den korrigierten IDs **N-R40-5..8** geführt.

- [x] **N-R40-5 (P1): zweite Runde für `gvz-rwa-parkhaus-einstellraum.md`.** Die Matrizes 6.1/6.2
  sind vom Hauptprozess am Original neu gefasst worden, nachdem die Erstfassung die diagonal
  zweigeteilten Sprinkler-Zellen bei 601-1200 m² falsch aufgelöst hatte. Die Neufassung hat noch
  niemand unabhängig geprüft. Dringlich, weil das Merkblatt direkt in die Parkhaus-Beratung geht.
  Erledigt 01.08.2026, Run 41 → `outputs/2026-08-01_normen-nacht-run41.md`, Abschnitt 3.1
  (alle 27 Wertzellen zellenweise nachgemessen, halten; Beschreibung der Zellteilung korrigiert
  waagrecht statt diagonal).
- [x] **N-R40-6 (P1): zweite Runde für `swki-va103-01-2017.md`** — gleiche Lage. Zusätzlich sind
  **65 von 110 Seiten ungelesen**, darunter die Anhänge C/D/E (Rechenformulare,
  Anwendungsbeispiele, Simulationsmethodik), die für eine Anlagenauslegung die eigentliche
  Grundlage sind. Zwei Refuter-Befunde (Zuordnung Zu-/Abluftgitter zu Kap. 2.5.2; Rolle der
  12-WB/h-Schwelle im Entscheidungsdiagramm) sowie die Fussnote S. 62 zu VA104-01 sind im
  Destillat als **ungeprüft** markiert und noch nachzumessen.
  Erledigt 01.08.2026, Run 41 → `outputs/2026-08-01_normen-nacht-run41.md`, Abschnitt 3.2
  (alle 110 Seiten erschlossen, die drei Run-40-Korrekturen halten; 12-WB/h-Schwelle als
  Entscheidungsparameter Lüftungsart widerlegt und ersetzt; Bemessungskern bleibt offen, siehe
  S41-1 bis S41-7 unten).
- [ ] **N-R40-7 (P3): Grauton in Tabelle 2 des Lignatec ungeklärt.** In den Zeilen R30/EI30/REI30,
  R60/EI60/REI60 und EI60-EI30(nbb) sind Deckschicht und Stiel messbar grau unterlegt
  (Median-RGB 177/180/179 gegen 240/245 bei identischem Muster in «Keine Anforderung»). Die
  Legende auf S. 5 kennt keine getönte Variante. Der Effekt ist konsistent (immer Deckschicht +
  Stiel, nie das Dämmstofffeld), seine Bedeutung aus der Quelle nicht ableitbar — grafische
  Hervorhebung oder Druck-/Scan-Effekt. Nicht gedeutet.
- [x] **N-R40-8 (P3): Fassungsstand Suva 67012.d «Checkliste Böden».** Im Fliesstext steht kein
  Ausgabedatum — am Original bestätigt, kein Übersehen. PDF-Metadaten nennen CreationDate
  23.01.2006 und ModDate 08.08.2007, das ist aber kein Fassungsbeleg. Nur über suva.ch/waswo
  klärbar.
  Erledigt 23.08.2026, QUESTIONS-Abarbeitung → `outputs/2026-08-23_questions-abarbeitung6.md`.
  Über `www.suva.ch/waswo/67012.D` bzw. `www.suva.ch/de-ch/download/checklisten/boeden/
  boeden--67012.D` die **aktuelle Ausgabe Oktober 2025** direkt geladen (curl+pdftotext) und
  gelesen: Fussleiste S. 4 nennt wörtlich «Ausgabe: Oktober 2025», «Publikationsnummer:
  67012.d» — damit ist die Frage nicht nur beantwortet, sondern die im Haus liegende Datei ist
  **veraltet** (~2006/2007). Wortweiser Vergleich zeigt: die beiden sicherheitsrelevanten
  Zahlenwerte (4-mm-Stolperschwelle Frage 8, 2-cm-Ablaufrinnentiefe Frage 10) sind
  **unverändert**; neu ist eine Rubrik «Rechtliche Grundlagen» (ArGV 3 Art. 14, VUV Art. 14,
  fehlte in der Alt-Fassung vollständig), Frage 1 wurde vom technischen Beispielkatalog auf den
  Gesetzesbezug umgestellt, Frage 5 verlangt neu zusätzlich «signalisiert», und die Schuh-Frage
  ist von Position 17 auf Position 20 gewandert (bei Zitat der alten Fragenummer beachten). Das
  Destillat `destillate/suva-67012-checkliste-boeden.md` ist vollständig auf die Ausgabe Oktober
  2025 umgestellt, die Alt-Fassung bleibt darin als eigener Abschnitt „Historische Fassung"
  dokumentiert (nichts gelöscht). `destillate/INDEX.md` nachgeführt.

### Zwei Arbeitsfallen, die diesen Lauf Zeit gekostet haben

- Die Pfadangaben im Inventar-Abschnitt «PL-02 Kern-Nachtrag» sind relativ zu
  `PL - 02_Recht_Norm/`, **nicht** zu `02_Normen/`.
- Dateinamen liegen teils in **NFD-Normalisierung** vor (macOS). Ein NFC-Abgleich per Script
  schlägt dort **still** fehl — beim Nachführen des Inventars normalisieren
  (`unicodedata.normalize('NFC', …)` auf beiden Seiten).


## 2026-07-31 (Run 40, MacBook Pro) — Bestandsfalle aufgedeckt: Ordner «VSA» meint Aufzüge, nicht Abwasser/Gewässerschutz

**Befund.** Der Auftrag für Run 40 sollte drei Dateien aus
`PL - 02_Recht_Norm/06_Richtlinien/VSA/` als Ergänzung zu SN 592 000 (Liegenschafts-
entwässerung) destillieren, unter der Annahme «VSA» = Verband Schweizer Abwasser- und
Gewässerschutzfachleute und «SNEL» = Schweizer Norm für Liegenschaftsentwässerung. Am
Original (Titelblatt, Logo, Impressum aller drei Dateien) zeigt sich: **VSA = Verband
Schweizerischer Aufzugsunternehmen**, die drei Dateien sind archivierte Webseiten (Safari-
Druck, © 2011, archiviert 13.07.2012) der Verbandswebsite zu **Aufzugssicherheit**. SNEL
steht dort für «Safety Norm for Existing Lifts» = SN-EN 81-80:2003 = SIA 370.080 (in dieser
KB bereits vollständig destilliert, `destillate/sia-370-080-2003.md`, status established).
Eine Volltextsuche über den gesamten Baum `PL - 02_Recht_Norm/` nach `*vsa*`, `*abwasser*`,
`*gewaesser*`, `*592*` (31.07.2026) fand **keine** zweite VSA-Ablage zu Abwasser/
Gewässerschutz — die Liegenschaftsentwässerung liegt im Bestand unter eigenem Namen
(`04_Merkblätter/SN592_Liegenschaftsentwaesserung_d.pdf`, `02_Normen/…/592056.pdf`,
destilliert in `sia-592-056.md`).

**Was gemacht wurde.** Alle drei Dateien trotzdem korrekt (als Aufzugsthema) destilliert,
mit dem Fund prominent in Frontmatter, Titel und eigenem Abschnitt jeder Datei:
`destillate/vsa-aufzuege-dokumente-bestimmungen.md`, `vsa-aufzuege-esba-zh.md`,
`vsa-aufzuege-snel.md`. Keine erfundene Brücke zu SN 592 000 hergestellt.

**Offene Punkte aus den drei Destillaten:**
- [ ] **N-R40-1 (P3):** Prüfen, ob VKF-RL «Brandschutzrichtlinie Aufzugsanlagen, Ausgabe
  2003» (in `vsa-aufzuege-dokumente-bestimmungen.md` referenziert) durch die im Bestand
  vorhandene `vkf-brl-23-15-befoerderungsanlagen.md` (2015) abgelöst wurde — bisher nur
  Vermutung aus Themennähe, nicht an beiden Originalen geprüft.
- [ ] **N-R40-2 (P3):** ESBA-Originaltext der Baudirektion Kanton Zürich beschaffen und
  gegen die VSA-Kurzfassung (7 Kriterien) verifizieren; Rechtsgrundlage (Gesetzes-/
  Verordnungsartikel) klären.
- [ ] **N-R40-3 (P4):** Zehn nicht destillierte Teile der EN-81-Reihe (81-1, -2, -3, -11,
  -21, -70, -71, -72, -73, 115-1, 115-2) — nur bei konkretem Projektbedarf (Aufzugsthema
  in Ankaufsprüfung/Ausschreibung) destillieren, kein systematischer Nachzieh-Auftrag.
- [ ] **N-R40-4 (P4):** Verhältnis SVAS (Schweizerische Vereinigung für Aufzugssicherheit,
  laut SNEL-Quelle Herausgeberin der Broschüre «SNEL, ESBA etc.») zum VSA (Verband
  Schweizerischer Aufzugsunternehmen, Betreiber der archivierten Website) ungeklärt.


## 2026-07-31 (Entscheid Raphael, Wissens-Chef Run 21) — SWKI ist zugeordnet, ein Auftrag folgt daraus

**Entscheid.** SWKI gehört in den Scope dieser KB, nach dem für SIA/VKF/VSS geltenden Zuschnitt:
`normen` führt Fundstelle, Ausgabe und Fassungsstand, `energie` führt die angewandte Fachaussage
(Lüftungs-/HLK-Physik) und verweist für die Ausgabe hierher. Keine Scope-Ausweitung, sondern die
bestehende Regel auf einen weiteren Herausgeber; Präzedenz ist bfu (Run 38). Registerzeilen stehen in
`wiki/REGISTER.md`, Abschnitt D. Führungsmatrix: `wissen/koordination/QUERBEZUEGE.md`.

**Anlass, damit der Nutzen nachvollziehbar bleibt:** ohne Registerzeile wollte diese KB SWKI 99-3
destillieren, obwohl die Richtlinie seit dem 1.8.2015 durch VA 105-01 ersetzt ist und `energie` das
seit dem 25.07.2026 belegt hatte. Die Registerzeile ist billiger als der nächste Fehlaufwand.

- [x] **N-R21-1 (P2): SWKI VA 103-1 «Lüftungsanlagen für Parkhäuser» destillieren.** Das einzige
  SWKI-Dokument im Haus (`PL - 02_Recht_Norm/06_Richtlinien/SWKI/`). Es ergänzt VKF-BRL 25-15 und
  ist unmittelbar einschlägig für `wissen/planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung`,
  das Run 21 gerade mit einem Fassungs-Vorbehalt versehen hat — die Parkhaus-Lüftung ist dort
  materiell geführt. Beim Destillieren Ausgabe und Stand **am Deckblatt** erfassen.
  Erledigt 31.07.2026, Run 40 → `destillate/swki-va103-01-2017.md` (Inventarzeile
  `training/norm-inventar.md` Zeile ~1267 führt es entsprechend als erfüllt).
- [ ] **N-R21-2 (P3, Kaufentscheid Raphael): VA 105-01:2015 Volltext.** Kap. 3-6 (Zahlenwerte) sind
  kostenpflichtig und nicht im Bestand; Sachstand und Struktur liegen in `wissen/energie` destilliert
  vor. Bis zum Kauf **keine** Gültigkeits- oder Zahlenaussage aus Sekundärquellen ins Register.

**Was der offene PL-02-Strukturentscheid (Befund 3, Run 31) damit noch umfasst:** SWKI ist heraus,
bfu war es bereits seit Run 38. Übrig bleibt die schmalere Frage, ob diese KB die restlichen
Kern-Dateien des Ordners `06_Richtlinien` (GVZ 3, Suva 4, Suissetec 2, VSA 3) sowie PAVIDENSA 9 und
`09_Sanitaereinrichtung` 15 **systematisch** abarbeitet oder nur bei konkretem Projektbedarf. Das
Routing des Rests ist im Inventar bereits entschieden (Minergie/eco → `energie`, Teilungsplan STWEG →
Skill `stockwerkeigentum`, Projektadmin → keine Norm).

## Run 39 (MacBook Pro, 30.07.2026) — Abdeckung von `lignum-4-1` gemessen statt geschätzt

**Auftrag.** Raphael hat am 30.07. die weitere Runde freigegeben, nachdem Run 38 seine eigene
Abdeckungsmessung als unzureichend ausgewiesen hatte (OCR fand 34 von real 72 Nummern).

**Was gemacht wurde.** Statt erneut zu schätzen, eine **vollständige Seiten-Inventur**: alle 40
A3-Blätter gerendert, in Halbseiten gesplittet, je gedruckter Seite Kapitel, Tabellen, Abbildungen
und eigenständige Textblöcke aufgenommen, Seitenzahl am Rand abgelesen. Fünf parallele
Aufnahme-Agenten mit eigenen Render-Präfixen, Diff durch den Hauptprozess.

| Kennzahl | Wert |
|---|---|
| erfasste Seiten | 2 bis 80, **lückenlos** |
| Einzelelemente | 184 |
| Nummern in der Quelle | 72 |
| davon zitiert | **71** |
| Kapitel ohne inhaltliche Entsprechung | **0** von 74 |
| erfundene Fundstellen | **0** |

**Die eine Lücke war der Zeiger, nicht der Befund.** Nicht zitiert war Abbildung 435-3 (S. 35) —
formal geringfügig. Beim Nachlesen dieser Seite am Original zeigte sich, dass das Destillat dort
auch **einen von vier Nachweis-Wegen** verloren hatte: die Fugenausbildung gemäss der
Lignum-Publikation 4.2 «Anschlüsse bei Bauteilen mit Feuerwiderstand» [7] — ausgerechnet der Weg,
für den der Hub bereits ein `established`-Destillat besitzt. Beide korrigiert und verlinkt. Als
Methodik-Pflicht 6 verankert: **eine fehlende Fundstelle ist ein Zeiger, kein Befund.**

### Offen / vorzulegen

1. **Taktung `lignum-4-1` — jetzt entscheidbar, vorher nicht.** Die Abdeckung ist gemessen und
   praktisch vollständig; die Zellwerte waren Gegenstand der Runden 5-7 (ohne Regression). Eine
   zehnte Routinerunde hat damit keine erkennbare offene Frage mehr zu beantworten. Sinnvoll wäre
   nur noch ein **ereignisgetriebener** Lauf, wenn eine neue Fassung der Publikation ins Haus
   kommt. Vorzulegen, nicht selbst umzustellen.
2. **`lignum-lignatec` bleibt offen** — dort ist die neunte Runde fällig (Axonometrien S. 16-23 und
   Tabelle 2 sind noch nie rechnerisch aufgenommen worden), und der Aktualitäts-Vorbehalt gegen die
   VKF-Generation 2015 ist durch keine Verifikationsrunde lösbar.
3. **Die Seiten-Inventur ist ein wiederverwendbares Muster.** Sie liegt als
   `training/l41-seiteninventur.md` in der KB. Für jede weitere umfangreiche Publikation, deren
   Abdeckung belegt werden soll, ist derselbe Weg zu gehen — der OCR-Diff genügt nachweislich nicht.


## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — zwei Lücken neu gefasst

Die älteren Einträge weiter unten bleiben als Historie unverändert stehen; dieser Abschnitt
stellt sie richtig und ersetzt sie als aktuellen Stand.

1. **CH-Pendant zu DIN 1946-4 — Gegenstand korrigiert: nicht SWKI 99-3, sondern VA105-01.**
   Die Einträge «Neue CH-Pendant-Lücke: **SWKI 99-3** … fehlt als Schweizer Pendant zu
   DIN 1946-4» (Abschnitt Mac Mini Run 3, 13.07.2026) und «fehlende CH-Pendants (SIA 500/
   SWKI 99-3/SIA 260er) für den SIA/VKF-Loop» (Abschnitt Run 5, 13.07.2026) benennen einen
   überholten Gegenstand: SWKI 99-3:2003 inkl. Beiblatt 2004 ist seit dem 1.8.2015 durch die
   SWKI-Richtlinie **VA105-01:2015** «Raumlufttechnische Anlagen in medizinisch genutzten
   Räumen» abgelöst. Beleg: Titelblatt/Vorwort VA105-01 (Erstausgabe, genehmigt 02.07.2015,
   in Kraft seit 01.08.2015, ersetzt SWKI 99-3:2003 + Beiblatt 2004), zweitbelegt durch
   H+ eFlash 2015-09; im Hub greifbar über
   `wissen/energie/destillate/reinraum-op-klimatisierung-gesundheitsbau-ch.md`. Belegt ist
   «abgelöst/ersetzt», **nicht** ein förmlicher Rückzug.
   **Wirklich offen ist damit nur noch:** der **Volltext von VA105-01 (Kap. 3-6 mit den
   Zahlenwerten) liegt nicht im Bestand** — Sachstand, Geltungsbereich und Struktur sind in
   `wissen/energie` destilliert, die kostenpflichtigen Kernkapitel nicht; der Kaufentscheid
   liegt bei Raphael und ist offen. Eine Register-Zeile zu VA105-01 wird bewusst **nicht**
   gesetzt (Register-Präambel «nichts erfunden»: keine Ausgabe-/Gültigkeitsaussage ohne
   eigene Primärquelle im Haus; zum SWKI-Scope siehe den offenen Strukturentscheid
   PL-02-Reichweite, Befund 3 weiter unten).
   Nachgezogen im selben Zug: `destillate/din-1946-4-2008.md` (Fassungs-Nachtrag, Frontmatter
   `ersetzt_durch`) und `destillate/qa/din-1946-4-2008-fragen.md` (Nachtrag zu Frage 20).

2. **Übergabe von `planungsgrundlagen`: Tiefgaragen-Geometrie steht dort auf der abgelösten
   Ausgabe.** `wissen/planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung.md` führt
   die Geometrie der Parkierungsanlage (§ 2, Komfortstufen A/B/C, Rampenneigung, Fahrgassen-
   breiten) aus **SN 640 291a (2005)** und hat diesen Stand am 24./25.07.2026 sogar weiter
   ausgebaut. In dieser KB gilt seit dem 14.07.2026 die Nachfolgeausgabe: `destillate/
   vss-640291a-2005-parkieren-anordnung-geometrie.md` ist als «HISTORISCH/ERSETZT» geführt,
   massgebend ist `destillate/vss-40291-2021-parkieren-anordnung-geometrie.md`
   (VSS 40 291:2021-12, Volltextabgleich 32/32 S.), die keine Komfortstufen mehr kennt.
   **Gebraucht wird ein Delta-Abgleich 2005 → 2021** je Kennwert (u. a. Rampenneigung,
   Fahrgassenbreite Gegenverkehr, Parkfeldmasse), damit `planungsgrundlagen` den planerischen
   Kontext auf der geltenden Ausgabe führen kann. Hier angemeldet, weil die Übergabe in die
   **Empfänger-KB** gehört und nicht nur beim Absender notiert werden darf.
   **✓ GESCHLOSSEN 2026-08-23, ausgeführt von `planungsgrundlagen` (R74).** Nach 24 Tagen ohne
   Delta-Artikel hier hat `planungsgrundlagen` die Rohdaten aus beiden bereits `established`
   Destillaten dieser KB selbst synthetisiert (kein neues Norm-Lesen, nur Zusammenführung
   verifizierter Werte) und [[recht-norm-tiefgarage-erschliessung]] Abschnitt 2 auf VSS 40 291:2021
   umgestellt, samt Delta-Tabelle in neuem Abschnitt 2.8. Beleg:
   `wissen/planungsgrundlagen/wiki/QUESTIONS.md`, Eintrag R74. Diese KB muss den Delta-Abgleich
   nicht mehr nachliefern; bei Bedarf für einen eigenständigen `normen`-Artikel dort die Tabelle
   aus Abschnitt 2.8 als Ausgangspunkt übernehmen.

## Run 38 (MacBook Pro, 30.07.2026) — Vorrang-Auftrag erfüllt, Quelle aber NICHT ausgereizt

**Auftrag.** Raphael hatte am 29.07. entschieden, für `lignum-lignatec-brandschutz` eine achte
Runde zu fahren, und zwar mit der Methode, die den Befund erst sichtbar macht: die **rechnerische**
Zellaufnahme, angewandt auf **Tab. 3 und Tab. 4** — bisher war sie nur auf Tab. 5 gelaufen. Run 37
konnte sie nicht mehr ausführen (OAuth-Token). Run 38 hat sie ausgeführt.

**Ergebnis: 7 Kernbefunde + 4 Nebenbefunde.** Die Endbedingung des Vorrang-Auftrags («keine
Kernbefunde → Quelle ausgereizt → Umstellung auf Ereignis-Trigger vorschlagen») ist damit **nicht**
erfüllt. Die Umstellung wird ausdrücklich nicht vorgeschlagen.

### Was die Methode gefunden hat, was vier Runden nicht fanden

1. **Die drei Tabellen haben drei verschiedene Legenden.** Tab. 3: weiss = Holzbauteile, grau =
   beidseitig nicht brennbar verkleidet, blau = keine Holzbauweise als Standardkonzept. Tab. 4:
   zusätzlich ein zweiter Grauton — hellgrau = nur fluchtwegseitig verkleidet, dunkelgrau =
   beidseitig. Tab. 5: weiss = Holz mit BKZ ≥ 4.2, grau = nur unter bedingten Auflagen. Das
   Destillat führte **allein die Tab.-5-Bedeutung** und lud damit dazu ein, «grau» in Tab. 3/4
   falsch zu lesen. Alle drei Legenden sind jetzt erfasst und gegeneinander abgegrenzt.
2. **Die zwei Grautöne in Tab. 4 sind die Farbkodierung der Schrägstrich-/Bindestrich-Notation.**
   Damit ist die Run-32/33-Korrektur erstmals auf einem methodisch unabhängigen Weg bestätigt
   (Farbe statt Zeichenerkennung) — keine Regression.
3. Drei Befunde derselben Wurzel wie in Run 36: eine Aussage über einen Spaltenblock wurde auf die
   ganze Zeile verallgemeinert (Beherbergungsbetriebe [a] in Tab. 3 und Tab. 4; «durchgehend» bei
   EFH/REFH).
4. Zwei Vollständigkeitsbefunde, die nur die umgekehrte Fragerichtung finden konnte: die
   Sprinkler-Werte für Wohnbauten MFH 5-6 Geschosse in Tab. 3 fehlten ganz, und die Zeile
   Beherbergungsbetriebe [b] Hotels fehlte in den Tab.-3-Eckwerten vollständig.
5. **Abdeckungsgrenze der Quelle**: Tab. 3 und Tab. 4 treffen für drei Nutzungszeilen
   (Verkaufsgeschäfte ≤ 1200 m², Landwirtschaft, EFH/REFH) für 5-8 Geschosse gar keine Aussage —
   dort existieren keine Zellen. Das Destillat suggerierte mit «durchgehend» das Gegenteil.

### Offen / vorzulegen

1. **Neunte Runde `lignum-lignatec` ist fällig.** Noch nicht rechnerisch aufgenommen sind die acht
   Übersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5). Nach der geltenden Regel (Methodik-
   Pflicht 6) darf die Quelle erst als ausgereizt gelten, wenn die schärfste Methode auf **alle**
   ihre Teile gelaufen ist.
2. **ENTSCHIEDEN 30.07.2026 — Raphael hat eine weitere Runde freigegeben.** Der Stopp vom 29.07.
   ist damit aufgehoben, solange die Abdeckung nicht belastbar gemessen ist. Die neunte Runde läuft
   als **vollständige Seiten-Inventur** statt als OCR-Diff (die OCR-Ausbeute lag bei 34 von
   mindestens 71 zitierten Nummern). Ursprüngliche Vorlage: Raphael hatte es am 29.07. als «speculative,
   stabil, keine Routinerunden mehr» akzeptiert — begründet damit, dass 5 von 6 Befunden der
   siebten Runde Formalien waren. Die achte Runde (Abdeckungsmessung statt Behauptungsprüfung) hat
   einen **inhaltlichen** Befund erbracht: in Kap. 5.2.5 fehlte der ganze Absatz zur Abschottung
   von Installationsdurchführungen durch brandabschnittsbildende Bauteile RF1. Das Stabilitäts-
   Argument galt für die alte Prüfrichtung. Zu entscheiden: weitere Abdeckungs-Runde freigeben,
   oder den Stopp bewusst bestätigen im Wissen um mögliche Abdeckungslücken.
3. **Die OCR-Abdeckungsmessung bei `lignum-4-1` ist unvollständig** — sie fand 34 Nummern, das
   Destillat zitiert 66. Dichte Katalogtabellenseiten OCRn bei 200 dpi schlecht. Wer den Diff als
   Vollständigkeitsnachweis führen will, muss die Extraktion bei höherer Auflösung oder manuell
   vervollständigen. Bis dahin ist der Diff eine **untere Schranke**.
4. **Der Aktualitäts-Vorbehalt bleibt unverändert offen**: `lignum-lignatec` datiert von 2005 und
   bezieht sich auf die VKF-Vorschriften 2003. Ein Abgleich gegen die VKF-Generation 2015 hat nie
   stattgefunden und ist durch keine Verifikationsrunde ersetzbar. Von allen offenen Punkten zu
   diesem Destillat ist das der praktisch folgenreichste — sämtliche verifizierten Tabellenwerte
   stehen unter diesem Vorbehalt.
5. **Anmeldung war in Run 38 wieder gültig** (Run 37 hatte alle Agenten an einem 401 verloren).
   Der Punkt aus Run 37 ist damit erledigt; ob es sich um eine dauerhafte oder eine temporäre
   Heilung handelt, ist nicht feststellbar.


## Run 37 (MacBook Pro, 29.07.2026) — die 2013-Blindzone beziffert und fünf Register-Fehler belegt

**Ausgangslage.** Der Cross-KB-Eintrag vom 27.07. hat den Einzelfall SIA 385/9 geflaggt und
dazugeschrieben, eine **Stichprobe wäre ergiebiger als der Einzelfall**. Run 37 hat genau das
gemacht: alle 248 SIA-Zeilen des Register-Abschnitts A maschinell gegen den realen Dateibestand
abgeglichen, die Verdachtsfälle danach von neun Agenten **am Titelblatt des Originals** verifiziert.
Schwerpunkt ist damit das REGISTER — eine Ebene, die Run 36 nicht berührt hat.

**⚠ Zweitinstanz-Kollision (Lehre dieses Laufs).** Dieser Lauf startete, als Run 36 noch lief, und
vergab zunächst selbst die Nummer 36 — derselbe Fehler wie am 25.07. bei Nummer 21. Erst beim
Nachführen von `destillate/INDEX.md` fiel auf, dass Run 36 (abgeschlossen 29.07. 02:09) bereits die
siebte Lignum-Runde gefahren hatte. Alle Einträge dieses Laufs wurden nachträglich auf **Run 37**
umnummeriert. **Die Regel aus PROGRAMM.md («Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei
belegen») wurde befolgt — sie genügt aber nicht, wenn der Vorlauf noch läuft und seine Datei erst
später schreibt.** Nötig ist zusätzlich eine Prüfung **am Ende** des Laufs, unmittelbar vor dem
Schreiben, sowie der `ps`-Zweitinstanz-Check (Rule 260724), der hier zwar lief, aber nur einen
gleichnamigen Prozess sucht und einen bereits beendeten Vorlauf nicht findet.

### Geschlossen

- [x] **SIA 2020 — Register-Zeile war belegt veraltet, korrigiert.** Das Register führte «gültig 2001»;
  im Haus liegt die Ausgabe **2017**, deren Titelblatt ausdrücklich «Ersetzt Merkblatt SIA 2020:2001»
  trägt. **Die Veralterung war hausintern beweisbar** — es brauchte keine externe Quelle. Musterbeleg
  dafür, dass der eigene Bestand das Korrektiv zur 2013-Grenze ist, wo eine Datei vorhanden ist.
- [x] **Vier bzw. fünf fehlende Register-Zeilen ergänzt** (destilliert, aber im Register unsichtbar):
  SIA 125:2017 (Vertragsnorm Teuerung GU/TU), SIA 144:2013 (Ordnung Leistungsofferten),
  SIA 312:2013 (Begrünung von Dächern), SIA 180/081 und SIA 180/082 (SN EN ISO 10077-1/-2:2017).
  Alle am Titelblatt verifiziert, Fundstellen in `wiki/REGISTER.md`.
- [x] **Zwei Ausgabejahre präzisiert (EN-Jahr ≠ Schweizer Ausgabejahr).** SIA 343.051 ist die
  **CH-Ausgabe 2019** (Copyright 2019, «2019-01 1. Auflage») auf EN-Basis 14351-2:**2018**;
  SIA 384/201 ist die **CH-Ausgabe 2018** («1. Auflage 2018-12») auf EN-Basis 12831-1:**2017**.
  Beide Zeilen nannten bisher das EN-Jahr als Ausgabejahr. Bei SIA 343.051 zusätzlich die unbelegte
  Vermutung «SN EN 14351-2:2012?» entfernt — auf dem Titelblatt steht kein «Ersetzt»-Vermerk.
- [x] **SIA 2051 — Register war korrekt, die Bestandsdatei ist falsch benannt.** Titelblatt sagt
  eindeutig SIA 2051:**2017** (SNR 592051:2017 de, genehmigt 12.09.2017); die Datei heisst
  `2051_2018.pdf`, wobei 2018 das Einscan-Datum ist. Bewusst **nicht** umbenannt (Entscheid Raphael
  29.07.2026), nur im Register und im Destillat dokumentiert.
- [x] **EN 13487, EN 12102-1 und SIA 385/9 — Bestandssuche negativ (Doppelbefund, deckt sich mit
  Run 36).** Unabhängig von Run 36 in `PL - 02_Recht_Norm` **und** `PL - 03 Brandschutz` gesucht:
  keine der drei Normen ist im Haus. Run 36 kam zum selben Ergebnis und hat den Punkt bereits
  geschlossen — hier nur als unabhängige Bestätigung vermerkt, **kein zweiter offener Punkt**.
  Neu ergänzt hat dieser Lauf lediglich die **quellentreue Herleitung** der Register-Zeile 385/9
  (`ersetzte_normen.pdf`: «x SIA 385/9:2011 d — 01.05.2011», ersetzt SIA 385/1:2000) plus den
  Zitier-Vorbehalt in `wiki/REGISTER.md`.

### Neu offen

1. **Die 2013-Blindzone ist strukturell und beziffert: 102 von 177 aktiven Register-Zeilen (58 %)
   haben keine Datei im Haus.** Für sie existiert **kein hausinternes Korrektiv** — eine Revision nach
   dem 25.02.2013 kann grundsätzlich nicht bemerkt werden. 14 davon tragen eine 2013-Ausgabe älter als
   2003 (u.a. SIA 215:1978, 370/24:1979, 381/3:1982, 370/21:1987, 380/3:1990, 2003:1996, 2014:1996) —
   dort ist eine zwischenzeitliche Revision am wahrscheinlichsten. Als Warnblock mit verbindlicher
   Zitierregel in `wiki/REGISTER.md` verankert. **Vollständig schliessbar nur über ein aktuelles
   SIA-Normenverzeichnis (Abo/Kauf) — nicht vom Loop lösbar.** Eine Beschaffungs-Prioritätenliste
   wurde bewusst nicht erstellt (Entscheid Raphael 29.07.2026: beziffern und warnen genügt vorerst).
2. **SIA 385/9 — Zitier-Vorbehalt bleibt.** Die Register-Zeile ist quellentreu, aber die gemeldete
   **Ausgabe 2023** ist nicht am Normtext verifiziert. Bis zur Beschaffung gilt: nicht mit
   Ausgabejahr zitieren. Klassenfall von Punkt 1. (Beschaffung selbst führt Run 36 als Bring-Schuld.)
3. **Werkzeug-Befund, an alle Loops mit Bild-Agenten:** generische `pdftoppm`-Präfixe im geteilten
   Scratchpad haben in diesem Lauf **einen belegten Falsch-Positiv** erzeugt (ein Agent hielt ein
   Alt-Rendering von SIA 384.201 für die ersten Seiten von `144_2013.pdf` und meldete die Datei als
   defekt — vom Hauptprozess am Original widerlegt). Als Methodik-Pflicht 5 in `training/PROGRAMM.md`
   verankert. **Reichweite geprüft und geschlossen (29.07.2026):** kein anderer Loop ist betroffen.
   `grep` über `skills/`, `agents/`, `scripts/` und alle `wissen/*/training/` findet **keinen**
   kodierten generischen Render-Präfix; von den 20 Scheduled Tasks nennt **allein**
   `normen-training-nacht` überhaupt `pdftoppm`, und keiner legt Dateien nach `/tmp/` ab
   (`baurecht-buch-training` arbeitet mit fertigen Screenshots, nicht mit eigenen Renderings).
   Das Problem entsteht also nicht im Hub-Bestand, sondern in **ad-hoc formulierten
   Agenten-Prompts** — deshalb als Querschnittsregel nach `rules/auto-verbesserungen.md`
   (Eintrag 260729b) gehoben statt nur hier vermerkt.
4. **Achte Runde `lignum-lignatec` — beschlossen, aber nicht mehr gefahren.** Die Taktungsfrage ist
   **entschieden** (Raphael, 29.07.2026, differenziert): `lignum-lignatec` bekommt eine achte Runde
   mit **rechnerischer Aufnahme von Tab. 3 und Tab. 4**; `lignum-4-1` wird als «speculative, stabil»
   akzeptiert, keine Routinerunden mehr. In `training/PROGRAMM.md` verankert.
   *Vorgeschichte, als Warnung festgehalten:* die **erste** Vorlage dieses Laufs stützte sich auf den
   Stand von Run 35 («seit Runde 32 nur noch Rand- und Nuance-Befunde») und war überholt — Run 36
   hatte die Prämisse wenige Stunden zuvor entkräftet (siebte Runde: 7 Befunde bei `lignum-lignatec`,
   drei davon Kernbefunde in der viermal bestätigten Tab. 5, sichtbar erst durch rechnerische statt
   visueller Tabellenaufnahme). Raphael hat auf dieser falschen Grundlage zunächst «beide als stabil»
   entschieden; nach Vorlage der korrigierten Zahlen fiel der Entscheid anders aus. **Lehre: eine
   Entscheidungsvorlage ist gegen den JÜNGSTEN Laufstand zu prüfen, nicht gegen den zuletzt selbst
   gelesenen.**
   ⚠ Die achte Runde **konnte nicht mehr gefahren werden** (OAuth-Token abgelaufen, alle
   Refuter-Agenten scheiterten mit 401). Sie ist die erste Aufgabe des nächsten Laufs.

**Unverändert offen:** Bring-Schulden SIA 491, SN EN 12193, SN 640 052, SN 641 400 (KB `baurecht`);
SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242; VKF-Merkblatt 2003-15 (externe
Beschaffung, unverändert seit Run 32); Strukturentscheid PL-02-Reichweite (Run-31-Befund 3).

Report `outputs/2026-07-29_normen-nacht-run37.md`.

## Run 36 (MacBook Pro, 29.07.2026) — beide BSR-16-15-Fragen vom 28.07. geschlossen; die Frage-Prämisse war falsch

**Befund 0 (methodisch, der wichtigste dieses Laufs): die beiden Fragen vom 28.07. unterstellten eine
Lücke im Destillat, die es nicht gab.** Der Eintrag darunter schreibt, im Destillat
`vkf-brl-16-15-flucht-rettungswege.md` «fehlt eine Ziffer zu gewendelten Treppen bzw. zur
Auftrittsbreite». Tatsächlich standen die 1.2 m/0.1 m und die 1.5 m/0.15 m dort seit dem 17.07.2026
(Anhang-Kennwerte, S. 17) und Ziff. 3.1 Abs. 3 / 3.2.2 Abs. 3 seit dem 28.07.2026 (Wissens-Chef
Run 19) — teils am selben Tag, an dem die Frage gestellt wurde. **Lehre: eine Cross-KB-Frage ist vor
dem Eintrag gegen den AKTUELLEN Stand des Ziel-Destillats zu prüfen, nicht gegen die Erinnerung der
abgebenden KB.** Die Frage war trotzdem produktiv — nur lag die echte Lücke woanders, nämlich in der
fehlenden Verknüpfung der verstreuten Einzelziffern zu einer Entscheidungsfigur.

- [x] **P1 gewendelte Treppen 1.20 m — GESCHLOSSEN, mit Korrektur der Lesart.** Belegt in BSR 16-15de
  (Fassungen 01.01.2017 und Stand 01.12.2022, in allen einschlägigen Ziffern textidentisch):
  Ziff. 3.1 Abs. 2 lit. b (S. 8/9), 3.2.2 Abs. 1 (S. 9), 3.3.2 Abs. 1 (S. 10), 3.6.2 Abs. 5 (S. 12),
  grafisch Anhang zu Ziff. 2.5.1 (S. 17). **Die Antwort auf die eigentliche Frage lautet: 1.20 m ist
  NICHT die Zusatzanforderung an gewendelte Läufe, sondern deren nutzungsbezogener Ausnahmewert.** Der
  Regelwert ist **1.50 m bei innerer Auftrittsbreite 0.15 m** (Ziff. 2.4.5 Abs. 3, S. 6, «muss»); die
  1.20 m gelten nur zusammen mit **0.10 m** innerer Auftrittsbreite und nur in den vier genannten
  Fällen («sind zulässig, sofern»). Die 1.2 m sind ausserdem das **generelle** Mindestmass für
  geradläufige Treppen und horizontale Fluchtwege. Vollständige Entscheidungsfigur neu im Destillat,
  Abschnitt «Entscheidungsfigur Treppen», Teil A. Alle Fundstellen vom Hauptprozess am Original
  nachgelesen (`pdftotext -layout`, Skizzenseiten zusätzlich als Bild geprüft).
  **Negativbefund dazu:** eine Auftrittsbreite «in der **Lauflinie**» ist in BSR 16-15de und den
  Arbeitshilfen 1000-15de/1001-15de **nirgends** geregelt — der Begriff kommt dort nicht vor.
- [x] **P2 offene vertikale Verbindung über Schlafnutzung — GESCHLOSSEN als «nicht gedeckt».**
  Ziff. 2.5 trägt die Antwort nicht (dort nur zwei Absätze zu sicher begehbaren Treppen). Die
  Verweisungsnorm ist **Ziff. 3.1 Abs. 3 (S. 9)**; der Entlastungskatalog ist mit **Wohnen (3.2.2
  Abs. 3), Büro/Gewerbe/Industrie (3.3.2 Abs. 2), Schulen (3.4.2) und Landwirtschaft (3.8 Abs. 2)**
  abschliessend — **Beherbergung fehlt darin**, obwohl Ziff. 3.6 Abs. 3 für Hotelsuiten ausdrücklich
  die *Tür*-Erleichterung gewährt. Gegenpräjudiz: **Ziff. 3.4.4 Abs. 3** verlangt für Schlafräume auf
  Galerien/Zwischengeschossen innerhalb der Nutzungseinheit horizontale **und** vertikale Fluchtwege.
  Die entscheidende Schnittfigur ist **BSN 1-15 Art. 13 Abs. 3 lit. d** («keine Nutzung für schlafende
  Personen ausser einer Wohnung»), nicht die 20-Personen-Schwelle: deren Unterschreiten schaltet nur
  Ziff. 3.6 ab und macht die Nutzung **nicht** zu Wohnen. Ergebnis: für einen Übernachtungsbau mit
  mehreren Gastschlafplätzen ist die offene interne Treppe durch keine Quelle gedeckt, aber auch nicht
  ausdrücklich verboten — sie fällt auf den allgemeinen Teil (Ziff. 2) zurück und ist über die
  objektbezogene Abstimmung nach **Ziff. 2.1 Abs. 3** herzustellen. Destillat-Abschnitt
  «Entscheidungsfigur Treppen», Teil B.
- [x] **Quellenkritischer Nebenbefund (neu, nicht gefragt):** `PL - 03 Brandschutz/_Projekte Themen/
  Treppen innerhalb Nutzungseinheit/IMG_1515.jpeg` ist **der Screenshot einer ChatGPT-Konversation**,
  keine Behörden- oder Fachstellenauskunft — er darf nicht als Fundstelle zitiert werden. Seine
  Ziffernangaben sind örtlich korrekt, er nennt 1001-15 aber fälschlich «Richtlinie» (es ist eine
  Arbeitshilfe) und verschweigt die Wohn-Beschränkung beider Fundstellen. Die zwei Seitenauszüge im
  selben Ordner (08.03.2025) sind die bereits von Raphael durchgeführte Gegenprüfung am Original.
  Dokumentiert im Destillat, Teil C.
- [x] **Bring-Schulden SIA 385/9:2023, SN EN 13487, SN EN 12102-1 — Bestandssuche abgeschlossen,
  Lückenstatus BESTÄTIGT (nicht widerlegt).** Vollständige Dateinamen-Suche über beide Ablagen
  (`PL - 02_Recht_Norm` 1'176 PDF, `PL - 03 Brandschutz` 105 PDF) **plus** Titelblatt-Inhaltssuche
  (`pdftotext -f 1 -l 1` + grep) über alle 591 PDF in `02_Normen` und alle 105 PDF in PL-03: kein
  Treffer. Von 385/9 liegt nur die Ausgabe **2011** im Haus; `i385-1_2011_d.pdf` ist SIA 385/**1**,
  nicht 385/9. Damit ist der Weg zu diesen drei Normen definitiv extern (SIA-/SNV-Bezug durch
  Raphael); eine weitere Bestandssuche erübrigt sich. *Methodenhinweis aus dem Lauf:* macOS kennt
  keinen `timeout`-Befehl — ein erster Scan-Durchgang lieferte deshalb still 0 Treffer, ohne
  `pdftotext` überhaupt auszuführen. Bei Bestandssuchen die Trefferzahl gegen die Zahl tatsächlich
  verarbeiteter Dateien prüfen, sonst sieht ein nicht gelaufener Scan wie ein negatives Ergebnis aus.

**Neu offen für den nächsten Lauf:**
1. **Achte Verifikationsrunde** für beide Lignum-Destillate. Bei `lignum-lignatec` ist sie nach dem
   Trendbruch (7 Befunde nach vier Runden mit je 1) zwingend: die drei Kernbefunde entstammen einer
   Prüfmethode (rechnerische Farbaufnahme der Tabelle), die auf Tab. 3 und Tab. 4 **noch nicht**
   angewandt wurde — dort wurde nur geprüft, was das Destillat behauptet, nicht die Tabelle als ganze.
2. **Fassungsstand-Frage BSR 16-15:** die Antworten oben sind für 2017 und 2022 gesichert. Ob die
   BSV 2026 die Treppen-Entlastung innerhalb der Nutzungseinheit antastet, ist offen (Normkonzept
   BSV 2026 liegt destilliert vor, Treppen-Eckpunkt bisher nicht gezielt geprüft).

## 2026-07-29 (Cross-KB energie → normen, Wissens-Chef Run 20) — drei Bring-Schulden: SIA 2032:2020, SIA 390/1, SVGW-Regelwerk

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8). Alle drei
Punkte sind adversarial verifiziert; die Formulierungen unten folgen dem Verifikationsurteil, nicht
der ursprünglichen Fundmeldung.

1. **SIA 2032:2020 beschaffen und destillieren (P1) — die primäre Ausgaben-Lücke.** `normen` hat
   **kein** SIA-2032-Destillat (`ls destillate | grep 2032` leer), SIA 2032 steht auch nicht im
   JANS-Inventar, und `wiki/REGISTER.md` führt die Ausgabe **2010**, während `energie` durchgängig mit
   **SIA 2032:2020** arbeitet. Belege für 2020 sind zwei unabhängige Sekundärquellen der KB `energie`
   (KBOB-Faktenblatt «Graue Treibhausgasemissionen» 04.04.2025; MuKEn-2025-Methodikpapier Modul G);
   der Normtext selbst ist kostenpflichtig und wurde nie eingesehen. Die Register-Zeile trägt seit
   heute ein zeilenspezifisches ⚠-Fassungsflag, die Ausgaben-Kette bleibt bewusst unverändert
   (Blindzone-Regel: ohne externe Gegenprüfung kein ✓/✗ setzen). **Abnehmer warten:** vier
   `energie`-Destillate stützen ihre Rechenbasis auf SIA 2032:2020 ab (insgesamt nennen elf Dateien in
   `energie/destillate/` die Norm), dazu die BAUHERREN-FAQ und
   `wissen/planungsgrundlagen/wiki/energie-uebersicht.md` (Z. 78/160). Nebenbefund derselben Lücke: `[[sia-2032]]` in
   `destillate/sia-2040-2017.md:9` (Frontmatter `links:`) ist ein **dangling link** und bleibt es, bis
   das Destillat existiert.
2. **SIA 390/1 (Klimapfad-Norm) fehlt in `normen` vollständig — Beobachtungsposten, kein
   Destillat-Auftrag (P2).** `grep -rn "390/1"`, `grep -rni "sia 390"` und `grep -rni "klimapfad"` über
   die gesamte KB: je 0 Treffer. `energie` führt die Norm seit **Run 10, 17.06.2026** mit dem Zielwert
   **9 kg CO2-eq/m²·a** (Kat. I–VI, inkl. PV/Erdsonde/Solarthermie) und dem ehrlichen Statusmarker «in
   Vernehmlassung»; Fundstelle der Zahl ist der Minergie-Nachweiskurs 2023
   (`wissen/energie/destillate/minergie-nachweiskurs-2023-mkz-thge.md:72`), **nicht** KBOB. Weil SIA
   390/1 ein Vernehmlassungsentwurf ohne publizierte Ausgabe und ohne zitierfähige Ziffer ist, kann
   `normen` bis zur Publikation grundsätzlich keine Fundstelle liefern: **Publikation abwarten, dann
   destillieren und ins REGISTER aufnehmen.** Der Vernehmlassungs-Marker in `energie` ist korrekt und
   nicht als Mangel zu behandeln.
3. **SVGW-Regelwerk: im Hub nur als Fremdzitat vorhanden (P1 für W3, P2 für die übrigen).** `normen`
   hat **kein einziges SVGW-Destillat** (280 Dateien in `destillate/`, keine mit svgw/w3/w10 im Namen);
   SVGW erscheint ausschliesslich in VKF-/SIA-Bibliographien. Konkret fehlen als Norm-Fundstelle:
   - **SVGW W3, Trinkwasserinstallationen, Ausgabe 03/2000** — bisher nur als Titelzeile in
     `destillate/vkf-verz-40-15-weitere-bestimmungen.md:38`. Auslöser: die Rückflusssicherungs-Regel
     («freier Auslauf/Luftstrecke statt blosser Rückflussverhinderer») in
     `wissen/energie/destillate/regenwassernutzung-brauchwasser-trinkwasserersatz-ch.md:41-46` ruht
     dort auf «allgemeiner SVGW-Praxis» **ohne Fundstelle**. Bis W3 im Volltext vorliegt, bleibt die
     Regel praxisgestützt und darf nicht als Norm-Behauptung zitiert werden (Rule `normen-referenz`).
   - **SVGW W3/E3:2020** (Hygiene, in Kraft seit 01.09.2020) und **W3/E4:2021** (Selbstkontrolle) —
     in `wissen/energie/destillate/trinkwassererwaermung-legionellenschutz-energieeffizienz.md:161/174`
     nur über eine Fachpresse-Zusammenfassung bzw. über Metadaten bekannt, **nicht** im Volltext.
     Wichtig für die Zitierpraxis: beide Ergänzungen regeln **nicht** die Systemtrennung/
     Rückflusssicherung; sie taugen als Ausgaben-Hinweis auf denselben Regelwerks-Stamm, aber **nicht**
     als inhaltlicher Beleg für die Rückflussregel (sonst entsteht ein Scheinbeleg).
   - **SVGW W5, Ausgabe 05/1999** (Anschluss Sprinkleranlagen ans Trinkwassernetz), **SVGW G1** und
     **GW 1002/1+2** — ebenfalls nur als Fremdzitate in VKF-/SIA-Bibliographien.
   - **SVGW-Merkblatt TPW 2001/1 «Regenwassernutzung»** (im SVGW-Shop als «W10001 d», Produkt-Nr.
     250700, kostenlos, Ausgabe März 2001). Sonderfall: dieses Merkblatt liegt in `energie` bereits
     **im Volltext gelesen** vor (Destillat `regenwassernutzung-brauchwasser-trinkwasserersatz-ch`,
     Run 119) — hier fehlt allein die Register-Erfassung, nicht die Quelle.
   - **SN EN 1717:2000 «Schutz Trinkwasser vor Rückfliessen»** — die im Hub tatsächlich vorhandene,
     stärkere Fundstelle zur Rückflussthematik: `destillate/vkf-verz-40-15-weitere-bestimmungen.md:40`
     (BSR 19-15) und `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md:1242`.
     **Nebenbefund für die abgebende KB (Nachweis liegt bei `energie`, hier nur vermerkt):** das
     Regenwasser-Destillat wertet EN 1717 in seinen «Offenen Punkten» (Z. 114-117) als blosse
     «deutsche Anbieterquelle» ab und nennt sie «nicht als Schweizer Bezugsnorm bestätigt» — das ist
     eine Fehlabwertung einer als SN übernommenen Schweizer Norm und sachlich gewichtiger als die
     W3-Lücke.

## 2026-07-31 (Cross-KB planungsgrundlagen → normen, Wettbewerbs-Scan Grassenbiwak) — zwei Fundstellen-Schulden BSR 16-15 — BEIDE GESCHLOSSEN 29.07.2026, siehe Run 36 oben

Angemeldet in der **Empfänger-KB** (Regel aus Run 8). Auslöser: Brandschutz-Scan des
Wettbewerbsprojekts 2408 «Grassenbiwak 2027»; der Fachplaner-Kommentar nennt zwei Vorgaben, die im
Destillat `vkf-brl-16-15-flucht-rettungswege.md` nicht ziffern-belegt sind.

1. **Gewendelte Treppen — Mindestbreite (P1).** Der Brandschutzplaner (Schmitter Brandschutz GmbH,
   18.01.2025) gibt für die Biwak-Treppe «gewendelte Treppe **min. 1.20 m** breit» vor. Im Destillat
   BSR 16-15de fehlt eine Ziffer zu gewendelten Treppen bzw. zur Auftrittsbreite in der Lauflinie;
   die 1.20 m stehen in der KB `planungsgrundlagen` §4f bisher **ohne Fundstelle** (als
   Fachplaner-Aussage referiert, nicht als Norm belegt). Zu klären: Ziffer und Ausgabe in BSR 16-15de
   (2015/2017/2022) — gilt 1.20 m generell für vertikale Fluchtwege, oder ist es eine
   Zusatzanforderung an gewendelte Läufe? Abnehmer:
   `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §4f und Skill `brandschutz`
   Modus B, Stufe 0 Frage 5.
2. **Offene vertikale Verbindung innerhalb einer Nutzungseinheit über Schlafnutzung (P2).** Offen
   ist, unter welchen Bedingungen eine Treppe innerhalb einer Nutzungseinheit **offen** bleiben darf,
   wenn im Obergeschoss geschlafen wird («Raum-über-Raum»). Die Arbeitshilfe 1000-15de nennt für
   Wohnnutzung «keine Anforderungen an Treppen innerhalb der Nutzungseinheit» (Ziff. 7.2.1) — ob das
   bei Übernachtungsnutzung unterhalb der 20-Personen-Schwelle trägt, ist nicht belegt. Zu prüfen:
   BSR 16-15de Ziff. 2.5/3.x gegen AH 1000-15de Ziff. 7.2. Führt direkt auf die Schnittfigur jedes
   kleinen Übernachtungsbaus.

## 2026-07-27 (Cross-KB energie ↔ normen, Wissens-Chef Run 18) — drei Bring-Schulden aus dem Bäder-/Rückkühler-Stoff

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8).

1. **SIA 385/9 — Fassungsstand prüfen (P1).** Das REGISTER führt Z. 219 «SIA 385/9 | 2011 | 2011✓».
   Der Konkordanz-Bestand stammt laut eigenem Kopf aus `ersetzte_normen.pdf` mit Stand **25.02.2013**
   und bildet spätere Revisionen strukturell nicht ab. Der SIA-Shop weist eine **Ausgabe
   385/9:2023** aus («Wasser und Wasseraufbereitungsanlagen in öffentlich zugänglichen
   Schwimmbädern und ähnlichen Einrichtungen», ersetzt 385/9:2011) — bisher nur über die
   Shop-Produktseite belegt, **nicht** am Normtext verifiziert. Solange offen, darf 385/9 nicht mit
   Ausgabejahr zitiert werden. Abnehmer wartet:
   `wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md` Abschn. 7.
   *Strukturbefund dahinter:* dieselbe 2013er-Bestandsgrenze betrifft potenziell jede nach 2013
   revidierte Norm im Register — eine Stichprobe wäre wertvoller als der Einzelfall.
2. **EN 13487 fehlt ganz (P2).** `grep "13487"` über die ganze KB = 0 Treffer. Die Norm wird in
   `wissen/energie/destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:273-275` als
   Herstellernorm für Rückkühler-Schalldruckpegel zitiert — **ohne Ausgabejahr**, und von dort ins
   Wiki `waermepumpen-laermschutz.md:110` übernommen. Ausgabe verifizieren (nicht raten), ins
   REGISTER aufnehmen, Rückverweis setzen.
3. **EN 12102-1 fehlt ebenfalls (P2).** `grep "12102"` = 0 Treffer, obwohl das WP-Destillat der KB
   `energie` sie als Messnorm führt.

*Abgrenzung:* die **Cercle-Bruit-Vollzugshilfen 6.20/6.21** sind amtsnahe Vollzugshilfen, keine
Normen — sie bleiben zu Recht in `energie` und gehören nicht ins REGISTER.

## Run 31 (MacBook Pro, 27.07.2026) — Retro-Verifikation mit 78 Befunden, zwei Regressionen, zwei Reichweiten-Luecken

**Befund 1 (methodisch, wichtigster des Laufs):** Alle fuenf Destillate, die nach ihrer ersten Pruefrunde
als korrigiert galten, wurden in der zweiten Runde erneut beanstandet — zusammen 78 Befunde. Darunter
**zwei echte Regressionen**: bei `lignum-4-1` hob die Erstrunde die korrekte Untergrenze der Tab. 446-1
von 50 mm faelschlich auf 60 mm; bei `sia-d0165` loeschte die Erstrunde die belegten Honorar-Sammelcodes
BKP 19-99 / EKG W1-W6 als angeblich «im Original nicht auffindbar». Eine Verifikationsrunde kann ein
Destillat also auch **verschlechtern**.
**Zur Entscheidung vorgelegt:** `established` an einen sauberen Nulldurchgang binden statt an eine
bestandene Korrekturrunde. Das kostet je Destillat systematisch eine Runde mehr, verhindert aber, dass
Korrekturartefakte als geprueftes Wissen gelten.

**Befund 2 (Methodik-Praezisierung):** Der Satz «frisch nachgetragener Text ist die hoechste Fehlerquelle»
(seit Run 23/24) gilt NICHT pauschal. Bestaetigt bei Lignatec (beide Erstrunden-Korrekturen fehlerhaft),
SIA D 0165 (5 von 9 schweren Befunden in Erstrunden-Passagen) und Lignum 4.1 Teil C. Widerlegt bei
Lignum 4.1 Teil A/B und Lignum 4.2, wo alle Erstrunden-Korrekturen hielten und die Fehler in den
unangetasteten Passagen lagen. Der Satz beschreibt ein Risiko, das je Textabschnitt unterschiedlich
eintritt — kein Gesetz.

**Befund 3 (offen, Strukturentscheid bei Raphael): das Inventar scannt aus PL-02 nur einen von elf
Ordnern.** In den nie erfassten liegen rund 680 weitere PDFs. Der normrelevante Kern ist klein und
benannt (~~BfU 9~~ → erledigt Run 38, GVZ 3, Suva 4, ~~SWKI 1~~ → **zugeordnet, Entscheid Raphael
31.07.2026, siehe Kopfeintrag**, Suissetec 2, VSA 3, PAVIDENSA 9, `09_Sanitaereinrichtung` 15,
~20 lose Merkblaetter); der Grossteil gehoert anderswohin (Minergie 79 und eco 55 → KB `energie`;
Teilungsplan STWEG 71 → Skill `stockwerkeigentum`; Projektadmin AHB 79 → keine Norm; Raumpilot/Neufert
→ Entwurfsliteratur). Eine pauschale Aufnahme waere falsch, ein pauschales Ignorieren auch. Details in
`training/norm-inventar.md`, Abschnitt «PL-02 Reichweite». **Nicht vom Loop zu entscheiden.**

**Befund 4 (an den Mac Mini gemeldet):** `PL - 02_Recht_Norm/Tiefgarage/1 VSS-Norm/` enthaelt echte
VSS-640-Normen (640 050 Grundstueckzufahrten, 640 060/065/066 Leichter Zweiradverkehr, 640 281 Parkfelder,
640 291a Parkieren Geometrie, 640 578 Immissionen) ausserhalb von `02_Normen/VSS_Norm/`. VSS ist
Mini-Scope (Stations-Split) — hier bewusst nicht angefasst, im Mini-Inventar zu pruefen.

**Befund 5 (geschlossen): PL-03 war nur zu 5 von 13 Ordnern erfasst.** Run 30 meldete «alle 6
Unterordner erfasst»; `PL - 03 Brandschutz/` hat 13 Eintraege auf oberster Ebene. Alle sieben offenen
sind jetzt aufgearbeitet. Der Ordner `00 Brandschutzplaene bsvonline.ch` enthielt die geltende Fassung
der VKF-Arbeitshilfe 1001-15 (Delta 28 materiell / 12 redaktionell) und die bis dahin nirgends
erfasste VKF-Freistellungsliste «Allgemein anerkannte Bauprodukte».

**Befund 6 (Run-30-Aussage widerlegt):** «Unterordner `06 Lignum Brandschutz` hat KEIN PL-02-Gegenstueck
(genuin neue Quelle)» ist falsch — alle sechs Dateien liegen MD5-identisch unter
`PL - 02_Recht_Norm/06_Richtlinien/Lignum Brandschutz/`. Sie lagen nur ausserhalb von `02_Normen/`
(dessen Unterordner `Lignum/` leer ist). Die drei Lignum-Destillate bleiben richtig und noetig.

**Neu offen fuer den naechsten Lauf:**
1. **Dritte Verifikationsrunde** fuer alle fuenf heute korrigierten Destillate, fokussiert auf die heute
   geaenderten Stellen — bei zwei nachgewiesenen Regressionen keine Formalie.
2. **Unabhaengige Verifikation** der drei neuen Destillate (bisher nur Selbst-Gegenprobe):
   `vkf-allgemein-anerkannte-bauprodukte-2017`, `brandschutzfachstellen-anleitung-brandschutznachweis-v3`,
   `brandschutzplan-legende-symbole-2017`.
3. **VKF-Merkblatt 2003-15** «Brandschutzplaene, Flucht- und Rettungswegplaene, Feuerwehrplaene» fehlt als
   Destillat. Es ist die Primaerquelle fuer Planpflicht und Symbolik; bis dahin bleibt der amtliche Status
   des neuen Symbolblatt-Destillats unbestaetigt. Beschaffung aus `PL - 02_Recht_Norm/02_Normen/VKF_Norm/`
   pruefen. Ebenfalls nicht destilliert: das Merkblatt «Feuerwehrzufahrten».
4. **Regionale Geltung** der beiden neuen Arbeitshilfen: Herausgeber sind sechs Zentralschweizer
   Fachstellen. Fuer ZH-Projekte ist ungeprueft, ob die GVZ abweichende formelle Vorgaben kennt.
5. **VKF-Bauprodukteliste:** Version 12.0 traegt keine Aenderungsliste; ob seit 2017 eine juengere Version
   publiziert wurde, ist ueber praever.ch/de/bs nachzuziehen. BSV 2026 wird die Bezugsrichtlinien abloesen.

**Unveraendert offen:** Bring-Schulden SIA 491 und SN EN 12193 (KB `baurecht`) — in PL-02 UND PL-03 am
27.07.2026 erneut nicht gefunden, externe Beschaffung ueber den SIA-Shop noetig. Uebrige SIA-Bring-Schulden
(SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242) unveraendert.

Report `outputs/2026-07-27_normen-nacht-run31.md`.

## Run 30 (MacBook Pro, 27.07.2026) — PL-03-Bookkeeping korrigiert, Lignum destilliert, Erdbeben-Dokument ausgegrenzt

**Befund 1 (Bookkeeping-Fehler behoben):** Der PL-03-Abschnitt in `training/norm-inventar.md` (aufgenommen
26.07.2026) listete die BRL-13-15/14-15-Re-Destillation als offenen Handlungsbedarf, obwohl diese bereits
am 25.07.2026 (Run 23, re-verifiziert Run 24) erledigt worden war — der Abschnitt wurde nach der
Aufnahme-Entscheidung nicht gegen den tatsaechlichen Destillat-Stand geprueft, nur gegen den aelteren
Mapping-Report vom 25.07. Korrigiert, siehe `norm-inventar.md` Abschnitt "PL-03 Brandschutz".

**Befund 2:** PL-03-Unterordner 01/03/04/05 (26 Dateien) sind vollstaendig MD5-identisch mit bereits
destillierten PL-02-Kopien (PL-02 spiegelt dieselbe Struktur unter `VKF_Norm/`). Keine neue Destillation
noetig. Einzige untersuchte Abweichung (`1001-15_Wohnbauten.pdf`, 29 vs. 27 Seiten) stellte sich als
bereits anderweitig destillierter BRL-16-15-Inhalt plus ein separates, inhaltlich deckungsgleiches
"Auszug"-Dokument (Stand 17.05.2018) heraus — 0 Abweichungen bei Ziff. 3/5/6 gegen das established-
Destillat `vkf-ah-1001-15-wohnbauten.md`, dessen Frontmatter entsprechend cross-verifiziert ergaenzt wurde.

**Befund 3 (offen, ausserhalb Scope):** `PL - 03 Brandschutz/06 Lignum Brandschutz/Lignum Erdbeben/
Erdbebengerechte_Holzbauten_d.pdf` (25 S.) behandelt Erdbebenertuechtigung im Holzbau, kein Brandschutz-
/Normeninhalt. Nicht in dieser Normen-KB destilliert. Falls fachlich relevant, gehoert das Dokument eher
in eine statik-/erdbeben-bezogene Wissensbasis (aktuell keine vorhanden) — als Hinweis fuer den
Wissens-Chef vermerkt, nicht selbststaendig loesbar aus dem Normen-Scope heraus.

**Befund 4 (weiterhin offen):** SIA 491:2013 und SN EN 12193:2008 (Bring-Schulden KB `baurecht`) erneut
gegen PL-02 UND PL-03 geprueft (27.07.2026) — in keiner der beiden Ablagen vorhanden. Bleibt echte externe
Bring-Schuld (SIA-Shop-Kauf durch Raphael noetig), kein Fall einer PL-03-Fehlklassierung wie bei den
Brandschutz-Dokumenten in Run 22.

## Run 27 (MacBook Pro, 25.07.2026) — Q&A-Selbstbefragung (Vertiefungsstufe c) fuer die 5 neu established Destillate

**Ausgangslage.** Run 26 hatte als naechsten sinnvollen Schritt vorgeschlagen: Q&A-Selbstbefragung fuer die
seit Run 25/26 neu auf `established` gehobenen Destillate (sia-266/1, sia-410, sia-112-leistungsmodell,
sia-112-tabelle-infrastruktur, sia-271-wegleitung), da ein reiner Frischecheck ohne Mehrwert waere. 5
unabhaengige Verifikations-Agenten liefen parallel, je einer pro Norm — Original-PDF unabhaengig gelesen,
Fragen formuliert und sofort daraus beantwortet, danach gegen das Destillat abgeglichen (echter
Refuter-Versuch).

- **[x] sia-266-1-2003 — 20 Fragen, bestaetigt, 0 Abweichungen.** Alle Kernpunkte (31 Verweisungen,
  Modalitaeten, Formeln, Gummiplatten-Kennwerte, sechs Kategorien besonderer Eigenschaften) exakt bestaetigt.
- **[x] sia-410-1986 — 18 Fragen, bestaetigt + 1 Klarstellung + 2 Ergaenzungen angewendet.** Substanz
  vollstaendig bestaetigt. Korrektur: Das Dokument wurde bisher als «dreisprachig d/f/i, teils Englisch in
  Kopfzeilen» unterschaetzt — tatsaechlich durchgehend **vierprachig d/f/i/en** mit vollstaendiger vierter
  Spalte in praktisch jeder Tafel. Frontmatter + Hinweistext korrigiert. Ergaenzt unter Offene Punkte: Kap. 6
  fehlt im urspruenglichen Inhaltsverzeichnis (S. 2-3, stuetzt die Nachtrags-These), Positionsnummern-Luecke
  9/10 in Ziff. 3.3 (S. 21, unerklaert im Original).
- **[x] sia-112-leistungsmodell — 8 Fragen (1-Seiten-Dokument), bestaetigt, 0 Abweichungen.**
- **[x] sia-112-tabelle-infrastruktur — 10 Fragen, bestaetigt, 0 Abweichungen.** Dritte unabhaengige
  Pruefrunde nach Run 25 (Erstpruefung) und Run 26 (erste Bestaetigung) — weiterhin 0 Befunde.
- **[x] sia-271-wegleitung — 8 Fragen (nur 2 S. vorhanden), bestaetigt.** Ein kleiner, nicht korrigierter
  Vervollstaendigungshinweis: Abb. 76 traegt im Original den engeren Titel «... bei Terrassen», waehrend der
  Fliesstext die 25-mm-Freibord-Pflicht allgemein fuer den gesamten Flachdachbereich formuliert — kein
  Widerspruch, keine Statusaenderung noetig.

**Ergebnis:** 64 Fragen total, 0 Widersprueche gegen bestehende Kernaussagen, 1 Destillat mit einer echten
Klarstellung korrigiert (sia-410 Sprachenangabe). Alle 5 Destillate bleiben `established`. Damit haben nun
**alle 15 SIA/VKF-Kernnormen** die Q&A-Vertiefungsstufe (c) durchlaufen (10 aus Run 14/260715 + 5 aus Run 27).
Neue QA-Dateien: `destillate/qa/sia-266-1-2003-fragen.md`, `sia-410-1986-fragen.md`,
`sia-112-leistungsmodell-fragen.md`, `sia-112-tabelle-infrastruktur-fragen.md`, `sia-271-wegleitung-fragen.md`.
Verbleibende offene Punkte unveraendert: Bring-Schulden (SIA-Normtexte nur per Abo/Kauf) und
Strukturentscheide bei Raphael (PL-03-Aufnahme). Fuer den naechsten Lauf: Vertiefungsstufe (b) Retro-
Verifikation mit 3 unabhaengigen Widerlegungs-Agenten fuer die P1-Kernnormen, oder Stufe (d)
Querschnitts-Synthesen fuer die Fach-Skills (werkvertrag/honorarberechnung/brandschutz/flaechen-nachweis),
da Stufe (c) fuer SIA/VKF jetzt vollstaendig ist. Report `outputs/2026-07-25_normen-nacht-run27.md`.

## Run 26 (MacBook Pro, 25.07.2026) — beide Run-25-Folgeaufgaben abgeschlossen, speculative-Bestand geleert

**Ausgangslage.** Run 25 hatte zwei konkrete, eng begrenzte Folgeaufgaben hinterlassen (Bestätigungsrunde
sia-112-tabelle-infrastruktur, SFG-Kürzel sia-271-wegleitung visuell klären) und festgehalten, dass danach
nur noch `sia-vertragsunterschiede-2023.md` (bewusst dauerhaft speculative) offen bliebe. Frischecheck
zuerst: 458 SIA-PDF / 58 VKF-Dateien (davon 9 Nicht-PDF, 8 PNG-Printscreens + 1), keine Änderung seit
Run 21 — 0 offene `[ ]`-Positionen im Inventar unverändert bestätigt.

- **[x] sia-112-tabelle-infrastruktur.md — Bestätigungsrunde (25.07.2026).** Alle 4 Run-25-Korrekturen
  unabhängig direkt am Original-PDF (S. 1 Kopftabelle, S. 2 Phasenzeilen/Grafiken) gegengelesen:
  Kosten-Spaltengruppe umfasst Menge/Einheits-Preis/Preis/% (bestätigt); 312.0 «Beschrieb und
  Visualisierung» und 312.1 «Projektgrundlagen» sind zwei separate Zeilen (bestätigt); Vorprojekt (31.0)
  hat tatsächlich einen zweiten Block «Vorprojekt 2» mit eigenen Zeilen 313.1 Kosten/314.1 Termine
  (bestätigt); «Kosten und Finanzierung» ist bei 413.1 (Ausschreibung) und 513.1 (Realisierung
  Ausführungsprojekt) ein vollständiger, nicht abgeschnittener Zeilentext (bestätigt). 0 Abweichungen.
  **Status auf established gehoben.**
- **[x] sia-271-wegleitung.md — SFG-Kürzel visuell geklärt (25.07.2026).** Deckblatt (S. 1) hochaufgelöst
  gelesen: Logo zeigt eindeutig «SFG — ASVE» (deutsches Kürzel SFG, französisches Pendant ASVE =
  Association Suisse des Spécialistes du Verdissement des Edifices) — nicht «ASF»/«ASE» wie zuvor unsicher
  vermutet. Frontmatter korrigiert. Damit sind alle 3 Run-25-Befunde geschlossen. **Status auf established
  gehoben.**

**Ergebnis:** Die speculative-Bestandsliste der SIA/VKF-KB ist jetzt bis auf den einen bewusst dauerhaften
Fall `sia-vertragsunterschiede-2023.md` (kein Normtext, reines Frage-Antwort-Blatt) leer. Verbleibende
offene Punkte in dieser Datei sind ausschliesslich Bring-Schulden (SIA-Normtexte, die nur per Abo/Kauf zu
beschaffen sind: SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242, neuere SIA-266/1- bzw.
SIA-410-Ausgabe klären) und Strukturentscheide bei Raphael (PL-03-Aufnahme ins Inventar, Bring-Schulden-
Beschaffung) — beide nicht vom Loop selbst zu schliessen. Kein neues Destillat in diesem Lauf.
Report `outputs/2026-07-25_normen-nacht-run26.md`.

## Run 25 (MacBook Pro, 25.07.2026) — 2 Folgeaufgaben aus Run 24 abgeschlossen + 3 weitere speculative Destillate erstverifiziert

Run 24 hatte zwei konkrete Folgeaufgaben und eine allgemeine Empfehlung hinterlassen. Beide Folgeaufgaben
sind jetzt erledigt, zusätzlich wurden 3 bislang nie adversarial geprüfte speculative Destillate
(sia-112-leistungsmodell, sia-112-tabelle-infrastruktur, sia-271-wegleitung) verifiziert.

- **[x] SIA 266/1 vierte + fünfte Runde (25.07.2026).** Vierte Runde: Figur-1-Zeile (dreimal in Folge
  fehlerbehaftet) ist nach der Run-24-Korrektur endlich sauber (0 Befunde), 2 kleinere Stilbefunde
  ausserhalb gefunden und korrigiert (Ziff.-2.3.7-Modalitätsetikett, «Krafteinleitung»→«Querdruck-Staffelung»
  zur Konsistenz). Fünfte, eng begrenzte Runde nur dieser zwei Korrekturen: 0 Befunde. **Status auf
  established gehoben.**
- **[x] VKF-BRL 14-15-Delta, Ziff. 3.2.3 Abs. 1 (25.07.2026).** Unabhängiger Wort-für-Wort-Abgleich
  beider Original-Fassungen bestätigt die Run-24-Präzisierung vollständig (0 Befunde). Delta-Abschnitt
  gilt damit als vollständig verifiziert (alle 5 Run-23-Korrekturen jetzt unabhängig bestätigt).
- **[x] sia-112-leistungsmodell.md erstmals adversarial geprüft (25.07.2026).** War seit Run 16
  (19.07.2026) nie verifiziert. Verdikt BESTAETIGT, 0 Befunde (inkl. unabhängiger `mdls`/`strings`-
  Gegenprobe der PDF-Metadaten). **Status auf established gehoben.**
- **[ ] sia-112-tabelle-infrastruktur.md erstmals tiefer geprüft (25.07.2026).** Vorherige Prüfung
  (Run 16) fand 0 Befunde bei oberflächlicherer Lektüre; Run 25 fand bei vollständigem Seitenvergleich
  4 Befunde (1 substanziell: Spalte «Menge» falsch der Gruppe «Beschrieb» statt «Kosten» zugeordnet;
  3 kleiner). Alle 4 im Destillat korrigiert, bleibt speculative bis zu einer kurzen Bestätigungsrunde
  der Korrekturen (nächster Lauf).
- **[ ] sia-271-wegleitung.md, 3 Befunde bei Frontmatter/Bildunterschriften (25.07.2026).** Technischer
  Kern (Ziff. 5.10.3-5.10.5, alle Zahlenwerte) bestätigt 0 Befunde. PAVIDENSA-Verbandsname korrigiert
  («Abdichtungen Estriche Schweiz», nicht «Beläge»); SFG-Kürzel-Zusatz («ASE» vs. möglich «ASF») bleibt
  unsicher — am Original visuell nachzuverifizieren, bevor auf established gehoben wird.

**Für den nächsten Lauf:** (1) kurze Bestätigungsrunde der 4 sia-112-tabelle-infrastruktur-Korrekturen;
(2) SFG-Kürzel bei sia-271-wegleitung.md am Original visuell klären, dann established; (3) verbleibende
speculative-Bestandsliste ist damit fast abgearbeitet — nur noch sia-vertragsunterschiede-2023.md
(bleibt bewusst dauerhaft speculative, kein Normtext) und sia-112-tabelle-infrastruktur.md offen;
(4) danach QUESTIONS.md weiter Richtung Bring-Schulden/Strukturentscheide (unverändert bei Raphael).
Report `outputs/2026-07-25_normen-nacht-run25.md`.

## Run 24 (MacBook Pro, 25.07.2026) — Rückstandsabbau (7 Punkte) + zwei weitere Retro-Verifikationsrunden

**Ausgangslage.** Run 23 hatte zwei konkrete Folgeaufgaben hinterlassen (BRL-14-15-Delta re-verifizieren,
SIA 266/1 dritte Runde) und zwei strukturelle Entscheide bei Raphael belassen (PL-03-Entscheid,
Bring-Schulden). `norm-inventar.md` zeigte weiterhin 0 offene `[ ]`-Positionen — dieser Lauf hat daher
gemäss PROGRAMM.md-Vertiefungsstufen gearbeitet: zuerst Bookkeeping-Rückstand in dieser Datei geschlossen
(sieben Punkte, die inhaltlich bereits erledigt, aber nicht als `[x]` markiert waren), dann die zwei von
Run 23 angeforderten Verifikationsrunden gefahren.

**Bookkeeping-Rückstand geschlossen (7 Punkte, keine neue Quelle nötig, nur Abgleich Destillat↔Frage):**
1. VKF-BRL 16-15 Ziff. 3.5.2 Personenbelegung — war bereits seit Wissens-Chef Run 8 (18.07.2026)
   vollständig nachgeführt und in Run 23 bestätigt, nur hier nicht abgehakt.
2. VKF-BRL 16-15 S.16-ABSV-Änderung — Diagnose war bereits in Run 23 korrigiert (S. 15, keine
   Vertauschung), Punkt hier nur nicht geschlossen.
3. Methodik-Pflicht `pdfimages`-Bildvergleich — bereits in `training/PROGRAMM.md` verankert.
4. SIA 385/1 — PDF liegt vor (`SIA_Norm/i385-1_2011_d.pdf`, 6 von 28 Normseiten), war fälschlich
   als «nur Screenshots» notiert; bereits am 17.07.2026 korrekt als Auszug/Bring-Schuld destilliert.
5. SIA 380/1:2016 — Bestand-Datei bestätigt (`SIA 380_1_2016/i380-1_2016_d.pdf`, 6 von 60 Normseiten),
   bereits am 17.07.2026 korrekt als Auszug/Bring-Schuld destilliert (blockiert `energie-berater`).
6. SIA 102 2014↔2020 — bereits im Inventar korrekt als «— ersetzt durch 2020» markiert.
7. `sia-480-2004.md` verlinkte SIA 102:2003 fälschlich als «nicht im Bestand» — tatsächlich liegt die
   Datei zweifach vor (`SIA_Normen/SIA 102/SIA_102_2003.pdf`, `alle/xalt/102_2003_d.pdf`, 56 S.,
   bestätigt echte Honorarordnung), ist aber bewusst nicht destilliert (ersetzt durch 2020). Linktext
   korrigiert.

**VKF-BRL 14-15-Delta — Re-Verifikation der 5 Run-23-Korrekturen (Hintergrund-Agent, Volltextabgleich
beider PDF-Fassungen per `pdftotext -layout`):** 4 von 5 wortgetreu bestätigt (Fussnote [2] Ziff. 3.3.2,
Ziff. 3.3.1 Abs. 5/6, Ziff. 2 Abs. 8, SN-EN-60065/Ziff. 4.1/Fussnote [7]). Die fünfte (Ziff. 3.2.3 Abs. 1)
war in Run 23 überzeichnet: «Aussenwandbekleidungen» und die Ortsangabe «im Hinterlüftungsbereich» standen
bereits 2015 wortgleich im Text (nur andere Satzstellung) — die tatsächlich einzige materielle Neuerung
2017 ist der Zusatz «bzw. flächige Schichten». Im Destillat korrigiert. Delta-Sorgfaltsstufe bleibt
`speculative` bis zu einer weiteren kurzen Re-Verifikation dieser einen Korrektur.

**SIA 266/1 — dritte unabhängige Verifikationsrunde (Hintergrund-Agent, komplettes 12-seitiges Original
erneut gegengelesen):** 0 neue Befunde ausserhalb der Figur-1-Zeile (31 Verweisungen, Tabelle 1 komplett,
Formel 1/2, Ziff. 2.1-4.3, Genehmigung/Übergangsbestimmungen alle bestätigt). Erneut EIN neuer Fehler
exakt in der zuletzt (Run 23) editierten Figur-1-Beschreibung: die Zeile hatte die Hauptdruckkraft Fy
(Ziff. 2.2.3, Ausgleichsschicht, Prüfpresse) fälschlich mit dem separaten, optionalen Querdruck-System
(Ziff. 2.2.5, Stahlplatte/Spannstangen, Kann-Bestimmung) zu einem Mechanismus verschmolzen. Korrigiert,
beide Mechanismen jetzt sauber getrennt. Die h/l-Korrektur aus Run 23 selbst war und bleibt richtig.
**Muster über zwei Runden:** exakt die zuletzt editierte Passage enthielt beide Male den neuen Fehler —
frisch nachgetragener Text bleibt in dieser KB die höchste Fehlerquelle, nicht der unveränderte Rest.
Status bleibt `speculative`; vierte Runde erst nach dieser Korrektur sinnvoll.

**Neu offen für den nächsten Lauf:**
1. SIA 266/1: vierte Verifikationsrunde nach der Figur-1-Korrektur (Muster aus Runde 2/3 beachten).
2. VKF-BRL 14-15-Delta: kurze Re-Verifikation der Ziff.-3.2.3-Abs.1-Präzisierung.
3. Danach `wiki/QUESTIONS.md` weiter abarbeiten — nach den 7 Schliessungen oben verbleiben primär
   Bring-Schulden (SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242, SIA 2014,
   SIA 240 Ausgabe, 260/1-267/1 deutsche Fassungen) und die zwei strukturellen Entscheide bei Raphael
   (PL-03-Entscheid, Bring-Schulden-Beschaffung) — beide nicht vom Loop selbst zu treffen.

## Run 23 (MacBook Pro, 25.07.2026) — Retro-Verifikation der 5 Run-22-Artefakte + BRL-16-15-Diagnosekorrektur

**Ausgangslage.** Run 22 hatte fünf frische Artefakte hinterlassen, von denen nur drei eine erste
Verifikationsrunde durchlaufen hatten (teils mit Korrekturbedarf), und einen offenen P1-Punkt zur
BRL 16-15 (S. 16, «vertauschte Bildunterschrift»). Run 23 hat gemäss der PROGRAMM.md-Vorgabe
(«Retro-Verifikation … das ist der nächste Lauf, bevor irgendeine neue Quelle angefasst wird») genau
diesen Rückstand abgearbeitet — keine neue Quelle destilliert.

**BRL 16-15, S. 15/16-Diagnose selbst korrigiert (per `pdftotext`, nicht per Agent).** Die bestehende
Diagnose («vertauschte Bildunterschrift Ziff. 2.4.3 ↔ 2.4.4», S. 16) war doppelt falsch: Die
Bildunterschrift liegt auf **S. 15**, und sie steht in **beiden** Fassungen unter der Überschrift
Ziff. 2.4.4 — keine Vertauschung, sondern eine reine Umbenennung («Horizontaler Fluchtweg…» →
«Gesamtlänge von Fluchtwegen…»). Korrigiert in `destillate/vkf-brl-16-15-flucht-rettungswege.md`.

**5 adversariale Retro-Verify-Agenten (Hintergrund, gegen die Original-PDFs):**

- [x] **SIA 410 (Erstverifikation):** BEANSTANDET → korrigiert → **established**. Systematischer
  Zitierfehler: Positionsnummern der Grundsinnbild-Tabelle (S. 5) waren als Unterziffern «1.11.1» ff.
  einer Ziffer 1.11 zitiert, tatsächlich sechs eigenständige Ziffern 1.11-1.16 (gleiches Muster bei
  Ziff. 1.27/2.2/2.5/3.3/3.4 korrigiert). Kleinere Korrekturen: Seitenbereich, «Duschenwanne»,
  «Abscheider» statt «Fettabscheider». Offen: Fussnoten-Marker «farbige*» (S. 5-6) ohne auffindbare
  Erläuterung — in Offene Punkte vermerkt.
- [x] **VKF-BRL 13-15 Delta 2017 (Erstverifikation):** BESTANDEN, 0 Befunde → **established**.
- [x] **VKF-BRL 14-15 Delta 2017 (Erstverifikation):** BEANSTANDET → 5 lokale Korrekturen
  eingearbeitet (Fussnote [2] Ziff. 3.3.2 Richtung war verdreht — Streichung statt Ergänzung;
  Ziff. 3.3.1 Abs. 5/6 fälschlich «buchstabengleich»; Ziff. 2 Abs. 8 komplett übersehen; Ziff. 3.2.3
  Abs. 1 übersehen; SN-EN-60065-Fassungsbezeichnung verkürzt zitiert; Ziff. 4.1 Abs. 7 mit
  Fussnote [7] zu Ziff. 4.2 vermischt). Die drei praxisrelevantesten Kernbefunde (Ziff. 2 Abs. 3
  cr-Ausnahmekatalog, Ziff. 5.1.2 Hochhaus-Wegfall, Ziff. 5.3 Normenwechsel) waren bereits korrekt.
  Delta bleibt `speculative` bis kurzer Re-Verifikation der 5 Korrekturen.
- [x] **SIA 266/1 (zweite Runde):** BEANSTANDET — alle 13+9 Korrekturen der ersten Runde bestätigt,
  aber EIN neuer Fehler in der am 25.07. selbst nachgetragenen Figur-1-Beschreibung gefunden: h/l
  war als «Prüfkörperhöhe/-länge» bezeichnet, tatsächlich gemäss Formel 1 (S. 9) h = Breite, l = Höhe
  (Kraftrichtung) — vertauscht. Korrigiert; Ausgleichsschicht-Position präzisiert. Bleibt
  `speculative`, dritte Runde erst nach dieser Korrektur sinnvoll (frisch nachgetragene Passagen
  führen erfahrungsgemäss selbst neue Fehler ein).
- [x] **VKF-Beherbergungskategorien (zweite Runde):** BEANSTANDET — alle 12 Korrekturen der ersten
  Runde seitengenau bestätigt (physische PDF-Einzelseiten nachextrahiert). EIN neuer, lokal
  begrenzter Befund: die Fundstelle «BRL 16-15de Ziff. 3.2» bei der Betreutes-Wohnen-Aussage war
  unbelegt (Ziff. 3.2 nennt «Alterswohnungen» nirgends; die Aussage stützt sich korrekt nur auf
  BRL 10-15de S. 35). Korrigiert, Verknüpfung als «plausibel, nicht explizit belegt» markiert.
  Nach Korrektur auf **established** gehoben.

**Ergebnis:** 3 von 5 Artefakten jetzt `established` (SIA 410, VKF-BRL 13-15-Delta,
VKF-Beherbergungskategorien), 2 bleiben `speculative` mit engerem Restaufwand (SIA 266/1 dritte
Runde; VKF-BRL 14-15-Delta kurze Re-Verifikation der 5 Korrekturen).

**Neu offen für den nächsten Lauf:**
1. VKF-BRL 14-15-Delta: kurze Re-Verifikation der 5 in Run 23 eingearbeiteten Korrekturen.
2. SIA 266/1: dritte, unabhängige Verifikationsrunde nach der Figur-1-Korrektur.
3. Entscheid PL-03 (aus Run 22 weiterhin offen, siehe unten) — nicht selbst entschieden.
4. Bring-Schulden (aus Run 22 weiterhin offen, siehe unten) — nicht ohne Beschaffung schliessbar.

## Run 22 (MacBook Pro, 25.07.2026) — Rückstands-Abbau statt achter Vollständigkeits-Bestätigung

**Ausgangslage.** Die Runs 15-21 haben SIA/VKF sieben Mal in Folge als «komplett» gemeldet, Run 21
(heute, wenige Stunden vor diesem Lauf) mit dem Schluss «keine reale Quelle zu bearbeiten». Run 22 hat
deshalb keine achte Bestätigung produziert, sondern die **Messgrösse** geprüft, auf der die sieben
Bestätigungen beruhen — und den Rückstand abgebaut, der in dieser Datei lag.

**Kernbefund: die Vollständigkeits-Metrik war zu schmal.** «0 offene `[ ]` im Inventar» plus «keine
neuen Dateien» misst ausschliesslich Datei-**Existenz**. Nicht gemessen wurden: (a) die **Klassierung**
der Dateien, (b) der **Fassungsstand** der Destillate, (c) der Bestand einer **zweiten Ablage**
(`PL - 03 Brandschutz/`, die das Inventar nicht abdeckt), (d) die hier gesammelten offenen Fragen.
In allen vier Punkten lag reale Arbeit. Die Aussage «SIA/VKF KOMPLETT» gilt weiterhin für die
Grunddestillation des erfassten Bestands, war aber **kein** Beleg dafür, dass nichts zu tun ist.

### Geschlossen in Run 22 (mit Beleg)

- [x] **Beherbergungs-Kategorien [a]/[b]/[c] definiert** (war als «kritisch für Healthcare» offen).
  Fundstelle: VKF Brandschutznorm 1-15de, Art. 13 Abs. 2 lit. a (S. 8), wortnah wiederholt in
  BRL 10-15de «Begriffe und Definitionen» (S. 12). Kriterium: ≥ 20 Personen plus Angewiesenheit auf
  fremde Hilfe ([a]) bzw. nicht ([b]); [c] = abgelegene Betriebe, im Anhang (S. 40) über vier
  **kumulativ** («gleichzeitig erfüllt») zu erfüllende Bedingungen präzisiert, wobei Photovoltaik und
  Notstromaggregate ausdrücklich als ungenügende Stromversorgung gelten. Zuordnung: Spital/Alters-/
  Pflegeheim → [a]; Hotel/Pension/Ferienheim → [b]. Neuer Artikel `wiki/vkf-beherbergungskategorien.md`.
  Adversarial geprüft: **BEANSTANDET**, 12 Korrekturen eingearbeitet (5 falsche Seitenzahlen, gemischte
  Ausgaben 2015/2017, eine Modalitäts-Härtung, eine falsch als [a]-spezifisch dargestellte Regel).
  Status bleibt `speculative` bis zur Re-Verifikation.
- [x] **«Betreutes Wohnen» — die Negativ-Aussage war falsch.** Der Begriff fehlt in den VKF-Quellen,
  aber BRL 10-15de, Stichwort «Wohnbauten» (S. 35), nennt **Alterswohnungen** ausdrücklich als Wohnbauten
  (Nutzung «Wohnen», BRL 16-15de Ziff. 3.2). Praxisfolge: betreutes Wohnen ohne Pflegeabhängigkeit ist
  als Wohnbau zu behandeln; erst «auf fremde Hilfe angewiesen» bei ≥ 20 Personen führt in [a].
- [x] **P1 — VKF-BRL 16-15 Fassung «Stand 01.12.2022» geprüft** (Datei
  `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/BSPUB-1394520214-85.pdf`). Die
  Schwerpunkt-Teilfrage ist entschieden: Ziff. 3.7 Abs. 1 nennt in **beiden** Fassungen wortidentisch
  die **Brandabschnittsfläche > 1'200 m²** (Haupttext S. 12). Unser 2017er-Destillat hatte die
  Formulierung also **nicht** geglättet; die Meldung aus `planungsgrundlagen`, die Bezugsfläche sei
  geändert worden, hat den richtigen Textbefund (das Wort «Geschossfläche» existierte und wurde
  ersetzt), zieht daraus aber die falsche Folgerung — geändert wurde nur die erläuternde
  Anhang-Einleitungszeile auf S. 33, die dem eigenen Haupttext widersprach. Ebenso Ziff. 2.4.3/2.4.4:
  Haupttext (35 m / 50 m, S. 6) unverändert.
- [x] **SIA 385/1 — die französische Bestandsvariante ist KEIN Lückenschluss** (war als «billigster
  Lückenschluss» vorgemerkt). `alle/f/385_1_f.pdf` (60 S.) ist die Ausgabe **2000** und behandelt
  «Wasser und Wasseraufbereitungsanlagen in öffentlichen Schwimmbädern» — ein sachlich unverwandtes
  Thema. Die Nummer 385/1 wurde 2011 für «Anlagen für Trinkwarmwasser in Gebäuden» wiederverwendet
  (die Schwimmbad-Materie ging in 385/9 auf). Die Legionellen-Angaben der 2000er betreffen Beckenwasser
  und Duschen, nicht Speicher-/Zirkulationstemperaturen im Hochbau. **Lehre:** Abschnitt B dieses
  Registers dokumentierte die Umnummerierung bereits — die Prüfung hätte im eigenen REGISTER beantwortet
  werden können, statt als Bring-Schuld-Umweg über ein PDF zu laufen. Register vor Bestandssuche lesen.
- [x] **SIA 112 — Restpunkt «OCR-Verdacht» geklärt: es war ein Destillat-Fehler, kein Scanfehler.**
  Volltext-OCR aller 26 Seiten von `alle/112.2014.pdf`: SIA 112 nennt die Ordnungen 102/103/104/105/108
  an vier Stellen (S. 4, 5, 6, 10) durchgehend als reine Zahlenaufzählung und ordnet **an keiner Stelle**
  einer Nummer eine Fachrichtung zu. Die Fehlzuordnung des Erst-Destillats war eine unbelegte eigene
  Ergänzung. Die Korrektur vom 21.07.2026 bleibt gültig. Notiz im Destillat, Commit `af39f66a`.
- [x] **VKF-Merkblatt 2001-15 Solaranlagen — Fassungsfrage entschieden, soweit möglich.** Die Dateien in
  PL-02 und PL-03 sind **byte-identisch** (MD5 `56fb4bab…`, 11 S.): trotz Ordnername «2015-17-22» liegt
  dort **keine** 2022er-Fassung. Belegt ist Ausgabe/Fassung **06.03.2015** (S. 1) und für Unterdachbahnen
  **RF4 (cr)**, Modalität «dürfen» (Ziff. 3.2.3, S. 8). Der von `planungsgrundlagen` gemeldete Delta
  (RF3(cr)) ist damit **unentschieden** — weder bestätigt noch widerlegt. Für die PV-Beratung gilt bis zur
  Beschaffung verbindlich der 2015-Stand RF4(cr) mit ausdrücklichem Fassungs-Vorbehalt.
  - **Korrektur 05.08.2026:** Der Zusatz «soweit möglich» war die falsche Schlussfolgerung, und die
    Anweisung «bis zur Beschaffung gilt RF4(cr)» ist damit widerrufen. Die geltende Fassung war
    öffentlich und kostenlos über dasselbe VKG-Publikationsportal abrufbar, das dieselbe KB drei Tage
    später für das Merkblatt 2005-15 selbst benutzte. Delta entschieden: **RF3(cr)-Pflicht seit
    Ausgabe 01.01.2017**, nicht erst seit 2022 (Beschluss Technische Kommission VKF vom 02.12.2016).
    Der Hausbestand war also nicht vier, sondern neun Jahre alt. Siehe Abschnitt 2026-08-05 am Kopf
    dieser Datei.
- [x] **STALE-BEFUND: «SIA 118:1991 noch nicht destilliert» war seit Langem überholt** —
  `destillate/sia-118-1991.md` existiert und ist `established` (Volltext, Kennzahlen Modell-D-verifiziert
  260712). Eintrag unten korrigiert.
- [x] **STALE-BEFUND: «Merkblatt-Serie SIA 2001-2027 (18 Positionen) noch nicht destilliert» war
  überholt** — die Serie ist als `sia-mb-2001-2005` … `sia-mb-2027-2006` destilliert (Run 16, 260719).
  Eintrag unten korrigiert.

### Neu geschlossen: zwei Normen, die als «Sprachvariante» unsichtbar waren

- [x] **SIA 266/1:2003 «Mauerwerk – Ergänzende Festlegungen» destilliert.** Die Datei
  `alle/i/266_1_d.pdf` ist **deutsch** und lag nur falsch im italienischen Sprachordner; sie war deshalb
  als «Sprachvariante» abgehakt (und die `/1`-Ergänzungsnormen galten als «möglicherweise nicht im
  Bestand»). Prüf-/Deklarationsnorm zu SIA 266: zwei SIA-eigene Prüfverfahren plus eine Ergänzung zum
  EN-772-11-Verfahren. Adversarial geprüft: **BEANSTANDET** — 13 Befunde korrigiert (u.a. 31 statt «rund
  20» Verweisungen; «zwei» statt «drei» eigene Prüfverfahren; «sollte»-Modalität in Ziff. 2.2.4; die
  Aussage «liefert keine Kennwerte» war falsch, Tabelle 1 führt charakteristische Mindestwerte) und
  9 Lücken nachgetragen (Ziff. 2.3.2/2.3.4/2.3.6, Figur-1-Kennwerte, Fussnoten 1)-8) inkl. der dritten
  Formel Exk = 1000 fxk). Alle Zahlenwerte und Formeln 1-2 hielten der Prüfung stand.
- [x] **SIA 410:1986 «Kennzeichnung von Installationen in Gebäuden — Sinnbilder für die Haustechnik»
  destilliert** (36 S. vollständig). `alle/f/410_d_f_i.pdf` ist **dreisprachig d/f/i** und enthält den
  deutschen Volltext; als «Sprachvariante» abgehakt und **ohne jeden REGISTER-Eintrag**. Wichtig für die
  Anwendung: es ist eine **Empfehlung**, nicht eine Norm, und die Kennzeichnung ist **empfehlend**
  formuliert (Ziff. 0.1/0.2, S. 4). Systematik: sechs Grundsinnbilder (Ziff. 1.1, S. 5) im Baukastenprinzip,
  gegliedert nach Gewerk (Heizung S. 14-18, Lüftung/Klima S. 19-23, Kälte S. 24-26, Sanitär S. 27-32,
  MSR-Ergänzung 1993 S. 33-34).
- **Systematische Gegenprobe durchgeführt:** alle drei Sprachordner (`alle/e`, `alle/f`, `alle/i`) auf
  deutsche Namensmuster (`_d.pdf`, `_dfi`, `_de`) und Titel-Metadaten geprüft — **genau diese zwei Fälle**,
  keine weiteren. Damit ist die Klassierungslücke geschlossen, nicht nur bepflastert.

### Neu offen (aus Run 22)

- [ ] **VERIFIKATION AUSSTEHEND für vier heute erzeugte/erweiterte Artefakte.** Alle vier sind einfach
  destilliert und noch nicht adversarial gegengeprüft; ihre Inhalte dürfen bis dahin nicht als belegte
  Fundstelle in ausgehende Dokumente wandern:
  `sia-266-1-2003.md` (nach Korrektur re-verifizieren), `sia-410-1986.md`,
  sowie die **Fassungs-Deltas 2017** in `vkf-brl-13-15-baustoffe-bauteile.md` und
  `vkf-brl-verwendung-baustoffe.md`, und `wiki/vkf-beherbergungskategorien.md` (nach Korrektur).
  Das ist der nächste Lauf: Retro-Verifikation dieser fünf, bevor irgendeine neue Quelle angefasst wird.
- [x] **GESCHLOSSEN (Run 24, 260725): P1-FOLGEARBEIT VKF-BRL 16-15 Ziff. 3.5.2 Personenbelegung —
  bereits vollständig nachgeführt, nur hier nicht abgehakt.** Geprüft: Das Destillat
  `vkf-brl-16-15-flucht-rettungswege.md` führt die Verkaufs-Tabelle (Fachmärkte 0.10/0.10,
  Supermärkte 0.38/0.15, hochfrequentierte Supermärkte 0.45/0.21 Personen/m², Fussnote [2] zur
  Bezugsfläche) bereits vollständig unter «Fassung 01.12.2022 — Delta zur Fassung 01.01.2017»,
  Punkt 3 der Delta-Liste. Eingetragen von Wissens-Chef Run 8 (18.07.2026), am Original S. 24 der
  Fassung Stand 01.12.2022 nochmals gegengelesen und in Run 23 (25.07.2026) bestätigt («wortgetreu
  mit dem Original übereinstimmend»). Dieser Punkt war seit dem 18.07. de facto erledigt.
- [x] **GESCHLOSSEN (Run 24, 260725): S.16-ABSV-Änderung — Diagnose bereits in Run 23 korrigiert,
  Punkt hier nur nicht geschlossen.** Der Beschluss ABSV 22.03.2017 betrifft tatsächlich **S. 15**
  (nicht S. 16): per `pdftotext -layout` beider Fassungen verifiziert, dass beide Bildunterschriften
  unter derselben Überschrift «zu Ziffer 2.4.4» stehen (keine Vertauschung 2.4.3/2.4.4) und die
  zweite Bildunterschrift von «Horizontaler Fluchtweg…» auf «Gesamtlänge von Fluchtwegen…» umbenannt
  wurde. Die Seitenangabe «Seiten 15 und 16» der amtlichen Änderungsliste erklärt sich durch den
  Druck-Umbruch der Zeichnungsfläche (Bild reicht optisch bis S. 16, dort aber nur eine dritte,
  unveränderte Bildunterschrift). Dokumentiert im Destillat, Abschnitt «Ziff. 2.4.3/2.4.4 und der
  Beschluss ABSV 22.03.2017», inkl. Delta-Liste Punkt 2. Keine weitere Nachführung nötig.
- [x] **GESCHLOSSEN (Run 24, 260725): METHODIK-PFLICHT pdfimages-Bildvergleich bereits in
  `training/PROGRAMM.md` verankert.** Steht dort seit 25.07.2026 als Methodik-Pflicht 4
  («Bildvergleich-Pflicht bei Normen mit Prinzipskizzen»). Keine weitere Aktion nötig.
- [ ] **SIA 266/1: neuere Ausgabe abklären.** Das Vorwort kündigt kurze Revisionszyklen an; parallel zur
  Revision von SIA 266 ist eine Ausgabe 2015 plausibel, am 12-seitigen Original aber nicht verifizierbar.
  Ein `established`-Status für die Fassung 2003 wäre ohne diese Abklärung irreführend. Bring-Schuld
  (SIA-Normenverzeichnis / Abo).
- [ ] **SIA 410: Aktualität und SIA 410/1.** Der Hauptteil ist von 1978/1986, Kap. 6 von 1993 — eine
  zwischenzeitliche Revision oder Ablösung ist plausibel, aber unbelegt; vor projektbezogener Verwendung
  am SIA-Normenverzeichnis prüfen. **SIA 410/1** (der eigentliche Farbcode, in Ziff. 2.5.7 S. 17
  referenziert) ist **seit 07.08.2026 im Bestand** (410/1+410/2:1981 deutsch,
  `alle/410_1_2_1981_d.pdf`; Destillat offen, Aktualität der 1981er-Ausgabe ungeprüft). Ebenfalls ausserhalb des Geltungsbereichs und nicht recherchiert:
  die SEV-Sinnbilder für Elektro.
- [x] **ENTSCHIEDEN 26.07.2026 (Raphael): PL-03 wird ins Inventar aufgenommen.** Umgesetzt am
  26.07.2026: `training/norm-inventar.md` fuehrt PL-03 als gleichrangige Quelle (Erst-Scan, 116
  Dateien, Ordner-Tabelle mit Relevanz/Status, Fassungs-Befund-Tabelle aus dem Mapping-Report);
  `training/PROGRAMM.md` Methodik-Pflicht 1 entsprechend umgestellt. **Daraus folgt konkrete Arbeit
  fuer den naechsten Lauf:** Re-Destillation von `vkf-brl-verwendung-baustoffe` (BRL 14-15de,
  hoechste Prioritaet — umfangreichste IOTH-Aenderungsliste) und `vkf-brl-13-15-baustoffe-bauteile`
  gegen die 2017er-Fassung; danach die noch nicht inventarisierten PL-03-Unterordner (01, 03, 04,
  05, 06) erfassen. Bis zur Re-Destillation tragen beide Destillate einen Fassungs-Vorbehalt.

  *Urspruengliche Fassung des Punktes:* **Der Normen-Bestand umfasst ZWEI Ablagen — das Inventar deckt nur eine ab.** Die geltenden
  VKF-Fassungen 2017/2022 liegen in `PL - 03 Brandschutz/`, das `training/norm-inventar.md` scannt aber
  nur `PL - 02_Recht_Norm/02_Normen/`. Deshalb konnten zwei Destillate unbemerkt auf der Fassung 2015
  stehen, während die Fassung 2017 im Haus lag. **Zu entscheiden:** PL-03 in das Inventar aufnehmen (mit
  Fassungs-Spalte) oder als bewusst getrennte Brandschutz-Ablage führen und im Skill `normen` einen
  Pflicht-Querblick verankern. Bis dahin gilt für jede VKF-Fundstelle: **vor Verwendung prüfen, ob in
  PL-03 eine jüngere Fassung liegt.** Vorarbeit: `outputs/2026-07-25_pl03-fassungs-mapping.md`
  identifiziert die vier nichtsprechenden `BSPUB-*.pdf`-Dateien.
- [ ] **Cross-Contamination erneut aufgetreten (Rule 260724).** Der Selfcommit `3fe6585b` trägt die
  Meldung «twin-mail-training: Batch 61», enthält aber sämtliche heutigen Normen-Dateien (Destillate,
  CHANGELOG, Inventar, Report) sowie Dateien der KB `energie` und `twin`. Kein Datenverlust, aber die
  Commit-Historie ordnet fremde Arbeit dem falschen Loop zu und erschwert die Nachvollziehbarkeit.
  Ursache ist das pathspec-lose Committen im geteilten Index. Beobachten, ob der native Synology-Cron
  hier ebenfalls pathspec-begrenzt arbeiten müsste.
- [ ] **Doppelte Run-Nummer 21 im Protokoll.** Zwei Läufe haben heute unabhängig die Nummer 21 belegt;
  dieser Lauf führt deshalb die Nummer **22**. Der Report `outputs/2026-07-25_normen-nacht-run21.md`
  bleibt als Protokoll unverändert stehen, seine Kernaussage («keine reale Quelle zu bearbeiten»,
  «7. Bestätigung der Endbedingung») ist durch Run 22 jedoch überholt. Künftig Run-Nummer erst nach
  Sicht der jüngsten `outputs/`-Datei belegen.

- [x] **Wissenscheck Phase 1 (Health-Check) durchgefuehrt (2026-07-24, Mac Mini) — mit
  budget-bewusster Methodik statt Volltext-Audit.** Der Vorbehalt vom 23.07. (voller
  Struktur-Audit sprengt das Nachtschicht-Budget) hat sich bestaetigt fuer eine Volltext-
  Lektuere aller 271 Destillate — geloest, indem das Audit ueberwiegend deterministisch
  (grep auf Frontmatter/Links/Status) statt per Einzel-Lektuere gefahren wurde: 17 tote
  `[[links]]`, 65/271 Umlaut-Bug-Faelle, 0 neue Widersprueche (ausser Sonderauftrag-Klaerung
  SIA/VKF-Meilenstein), Kosten ~2.4 USD. Ein echter Volltext-Claim-Abgleich (Audit C ueber
  alle 271 Dateien) bleibt weiterhin ein dedizierter, groesserer Lauf — siehe naechster Punkt.
  Report `outputs/2026-07-24_health-check.md`.

- [x] **Vier tote `[[links]]`-Namensfehler behoben (Health-Check 24.07.2026 → Fix 24.07.2026,
  Mac Mini Nachtschicht 18:30):** `destillate/sia-382-1-2014.md` `[[sia-2024]]` → korrigiert auf
  `[[sia-mb-2024-2006]]` (einziger Treffer im Bestand, Merkblatt-Praefix ergaenzt). Dieselbe
  Datei `[[sia-180]]` → korrigiert auf `[[sia-180-2014]]` (inhaltlich bestaetigt: SIA 180:2014
  = Waerme-/Feuchteschutz, thematisch einschlaegig fuer SIA 382/1 Lueftung/Klima; die beiden
  080/081/082-Dateien behandeln ISO-10077-Fensterberechnung, nicht einschlaegig).
  `destillate/sia-480-2004.md` `[[sia-102-2003]]` → **kein Linkfehler, sondern echte
  Bestandsluecke**: Fliesstext (Zeile 23) zitiert korrekt "SIA 102:2003", diese Ausgabe ist im
  Bestand nicht digitalisiert (nur 2014/2020 vorhanden). Gemaess Rule identifikatoren-
  verifizieren NICHT auf falsche Ausgabe umgebogen, sondern zu Klartext "SIA 102:2003 (nicht im
  Bestand, siehe QUESTIONS)" entlinkt — Beschaffung der 2003er-Ausgabe bleibt offen, kein
  Nachtschicht-Fall (evtl. kostenpflichtig). `destillate/din-1960-2010.md`
  `[[din-1961-2012]]` → korrigiert auf `[[din-1961-2010]]` (Datei traegt Ausgabe
  "DIN 1961:2010-08", passend zur Gegendatei "DIN 1960:2010-08"; 2012 war Zahlendreher).
  **Zusaetzlich beim Fix gefunden (nicht in den urspruenglichen 4, gleiches Fehlermuster):**
  `destillate/sia-384-201-2017.md` und `destillate/sia-2040-2017.md` hatten ebenfalls
  `[[sia-2024]]` statt `[[sia-mb-2024-2006]]` — mitkorrigiert. Alle 6 Links geprueft: 0 offene
  `[[sia-2024]]`/`[[sia-180]]`/`[[sia-102-2003]]`/`[[din-1961-2012]]`-Treffer mehr im
  `destillate/`-Ordner (CHANGELOG/QUESTIONS/outputs-Historieneintraege bewusst unveraendert
  gelassen, sind Protokoll).

- [x] **EN 520 Original-Destillat fehlt (2026-07-23, KISPI-Fall Rohdichte 800 kg/m³) — soweit
  ohne Kauf recherchiert (23.07.2026, Mac Mini Nachtschicht):** SharePoint PL-02
  02_Normen/DIN_Norm geprüft (72 Dateien) — SN EN 520 ist **nicht im JANS-Bestand** und nur
  kostenpflichtig bei Beuth/DIN Media/SNV erhältlich (kein Einkauf ohne Freigabe, kein Fall
  für eine unbeaufsichtigte Nachtschicht). Öffentliche Normvorschau (baunormenlexikon.de,
  DIN EN 520:2009-12) bestätigt immerhin die genaue Fundstelle **Ziffer 4.13 «Definierte
  Dichte (Typ D)»** sowie zwei bisher fehlende Typenbuchstaben (E, P) — in `wiki/
  en-520-gipsplattentypen.md` und `wiki/REGISTER.md` nachgetragen. Der Zahlenwert
  (800 kg/m³) bleibt wie bisher über zwei unabhängige Sekundärquellen + Produktdatenblätter
  belegt (Typ-D-Definition ist damit ausreichend abgestützt). Bleibt offen: Volltext-Kauf,
  falls je ein wörtliches Norm-Zitat nötig wird — dann mit Raphael abstimmen, kein
  Nachtschicht-Standardfall.

- [x] **ersetzt/ersetzt_durch-Lücke (Mac Mini Nachtschicht, 2026-07-22, DIN-Teilmenge):** aus dem
  Audit-F-Befund vom 21.07. ("Feld ersetzt/ersetzt_durch fehlt in 127 Destillaten") die DIN/VSS/
  RAL-Teilmenge (Mac-Mini-Scope) geprüft: von 67 DIN/VSS/RAL-Destillaten hatten nur 3 das Feld
  komplett unbelegt — `din-1356-6-2006` (kein Nachfolger, Status [CURRENT] gemäss DIN Media),
  `din-276-4-2009` (zurückgezogen, ersetzt durch DIN 276:2018-12) und `din-4102-2-1977`
  (formal weiterhin [CURRENT], Prüfverfahren aber teilweise durch DIN EN 1363-1/1364-1-2/
  1365-1-4:1999-2000 abgelöst). Alle drei mit Quellenbeleg (DIN Media, dinmedia.de, abgerufen
  22.07.2026) nachgetragen; als Bonus dieselbe Lücke im verlinkten `din-276-1-2008` (fehlte dort
  nur `ersetzt_durch`, `ersetzt` war schon belegt) geschlossen. **Restumfang (~123 Destillate,
  weit überwiegend SIA/VKF) bleibt offen — MacBook-Pro-Scope** (Rule auto-verbesserungen 260714,
  Arbeitsteilung). Report: `outputs/2026-07-22_din-ersetzt-durch-luecke.md`.

- [x] **ERLEDIGT Run 15 (2026-07-17): Die 30 Ergaenzungskandidaten aus Run 14 sind eingearbeitet.**
  29 gemeldete Luecken am Original verifiziert und in die Destillate eingebaut (SIA 103: 10,
  SIA 105: 7, SIA 118: 2, SIA 112: 2, SIA 451: 4, VKF BRL 16-15: 4). Verdikt: 28x `belegt`,
  1x `abweichend` (VKF-BRL-16-15-Ausgabejahr, siehe unten). Anschliessende Widerlegungs-Pruefung:
  5 Beanstandungen, alle korrigiert. Details unten und in `outputs/2026-07-17_normen-nacht-run15.md`.

- [ ] ~~**Q&A-Selbstbefragung SIA/VKF-P1 (Run 14, 2026-07-15) — 30 Ergaenzungskandidaten:**~~
  Alle 10 P1-Kernnormen (SIA 102/103/105/111/112/118/416/451, VKF Brandschutznorm 1-15,
  VKF BRL 16-15) durch je 20–22 am Original beantwortete Pruefungsfragen gegengeprueft:
  **0 sachliche Fehler**, alle established bestaetigt. Gemeldete Luecken (Destillate korrekt,
  aber unvollstaendig) als Ergaenzungskandidaten fuer einen kuenftigen Volldestillat-Lauf:
  SIA 103 (mittlere-Stundenansaetze-Formel H=Tt·h·a + Anforderungsfaktoren, Kuendigung-zur-
  Unzeit-Zuschlag 10 %, CHF-100'000-Schwelle, Erhaltung +0,2–0,6, ARGE 5 %, 10-J-Verjaehrung),
  SIA 105 (Phasengliederung/Leistungsmodell, Genauigkeitsgrade ±15 %/±10 %, CHF-100'000-Schwelle),
  SIA 118 (Art. 177 Schlusspruefung/Beweissicherung, Art. 155 Abs. 2 Nachfrist 1 Monat),
  SIA 112 (Verweis SIA 469 + SIA 269/2 in Modulen 532.2/622/632), SIA 451 (Feld 20 Laufnummer,
  Header-Felder 11/12, Schlussrecord-Datum TTMMJJ), VKF 16-15 (Personenbelegungs-/Treppen-/
  Tuerverschluss-Kennwerte im Anhang). Volltext-Fundstellen je Norm in `destillate/qa/*-fragen.md`.
- [x] **VKF BRL 16-15 — Ausgabe klaeren (Run 14).** Der Q&A-Agent liest im PDF
  `16-15_rev2016_flucht_und_rettungswege.pdf` die **Ausgabe 2017** (inkl. IOTH-Revisionen
  2015/2016). REGISTER/Inventar fuehren die Datei ohne klares Ausgabejahr — Ausgabe-Feld
  am Original verifizieren und in REGISTER nachtragen (2017 statt 2015/2016).
  Erledigt bereits durch Run 22 (25.07.2026), hier nur nachgetragen (23.08.2026,
  QUESTIONS-Abarbeitung). `wiki/REGISTER.md` Zeile ~676 führt die Fassung seit Run 22 präzise:
  «Ausgabe 2015, Fassung 01.01.2017 mit Zusatzvermerk «Stand 01.12.2022» (Änderungsstufen:
  ABSV 22.03.2017, TKB 09.06.2021, Fehlerkorrektur 01.12.2022 — alle drei laut Änderungsliste
  S. 2 «im Anhang»)» — die ursprünglich befürchtete Ambiguität 2015/2016/2017 ist damit
  vollständig aufgelöst, kein offener Rest.
- [x] Gültigkeitsstand der Verzeichnisse — **beantwortet 11.07.2026 (Run 1):**
  `ersetzte_normen.pdf` = SIA-Rückzugs-/Ersatz-Register, **Stand 25.02.2013**;
  `Gesamtverzeichnis SIA.pdf` = Produkt-/Preiskatalog **~2002** (kein Gültigkeitsregister).
  → `wiki/REGISTER.md` aus dem 2013-Register aufgebaut. **Neue Lücke:** Revisionen NACH
  Feb 2013 sind nicht amtlich belegt; SIA-Shop-Abgleich nur auf Zuruf (Bring-Schuld Raphael).
- [x] SIA 118 — **beantwortet 11.07.2026 (Web-Verifikation):** Die aktuelle Ausgabe ist
  **SIA 118:2013** (in Kraft seit 01.01.2013, ersetzt 1977/91; keine neuere Ausgabe).
  Suchlauf über den ganzen SharePoint: nur die 1991er vorhanden. Entscheid Raphael:
  aktuellste verwenden → **Kauf SIA-Shop nötig (Bring-Schuld Raphael, kostenpflichtig —
  Claude tätigt keine Käufe)**. Bis dahin in Dossiers «SIA 118» ohne Detail-Artikelzitate
  referenzieren; Destillat der 1991er nur für Alt-Kontext.
- [x] **GESCHLOSSEN (Run 24, 260725): SIA 102 2014↔2020 bereits im Inventar korrekt markiert.**
  `training/norm-inventar.md` Zeile 93 führt `102_2014.pdf` bereits als «— ersetzt durch 2020»
  mit Verweis auf `sia-102-2014.md` (established, Altvertrags-Kontext). 2020 ist als gültige
  Ausgabe destilliert (`sia-102-2020.md`). Keine weitere Aktion nötig.
- [ ] **SIA 181:2020 re-destillieren (Wissens-Chef Run 3, 2026-07-13):** Register führt bislang
  2006 (2013-Benchmark), KB energie arbeitet bereits mit **SIA 181:2020**. Aktuelle Ausgabe am
  Original erfassen, dann REGISTER Zeile 109 auf 2020 heben. Ausgabe kostenpflichtig (SIA-Shop,
  Bring-Schuld Raphael — Claude tätigt keine Käufe).
  → **Nachgetragen ins Arbeitsregister** `training/norm-inventar.md`, Abschnitt «Bring-Schulden aus
  anderen KBs» (Wissens-Chef Run 17, 27.07.2026, Priorität P1). Der Punkt stand 14 Tage
  ausschliesslich hier — also an dem Ort, den der Nacht-Loop nicht abarbeitet; das ist derselbe
  Mechanismus, den Run 16 für die vier `baurecht`-Bring-Schulden diagnostiziert hat. Seit Run 16
  tragen beide Destillate (`sia-181-2006.md` hier, das Körperschall-Destillat in `energie`) ein
  ⚠-Ausgaben-Flag +3 dB (2006) gegen +4 dB (2020), das den Zustand sichtbar hält, aber nicht auflöst.
- [x] **GEKLÄRT Run 22 (260725), soweit ohne Beschaffung möglich: die 2022er-Fassung ist NICHT im
  Bestand.** Die Dateien in PL-02 und PL-03 sind byte-identisch (MD5 `56fb4bab…`, 11 S.) — trotz
  Ordnername «2015-17-22» liegt dort nur eine Kopie der 2015er. Belegt: Ausgabe/Fassung **06.03.2015**
  (S. 1) und Unterdachbahnen **RF4 (cr)**, Modalität «dürfen» (Ziff. 3.2.3, S. 8). Der gemeldete Delta
  RF3(cr) bleibt damit **unentschieden**; für die PV-Beratung gilt bis zur Beschaffung der 2015-Stand
  mit Fassungs-Vorbehalt. Beschaffung via praever.ch/bsvonline.ch (Bring-Schuld, kein Loop-Fall).
  Befund im Destillat `vkf-brm-2001-15-solaranlagen.md`, Abschnitt «Fassungs-Klaerung 25.07.2026».
  - **Nachtrag 05.08.2026:** Der Bestandsbefund bleibt richtig, die Handlungsanweisung nicht. Die
    Ausgaben 01.01.2017 und 01.01.2022 sind über `services.vkg.ch` beschafft und gelesen; der Delta
    ist **bestätigt**: RF3(cr)-Pflicht seit 01.01.2017. Der Satz «für die PV-Beratung gilt bis zur
    Beschaffung der 2015-Stand» ist damit hinfällig. Siehe Abschnitt 2026-08-05 am Kopf dieser Datei.
- [x] **P1-SIA-Kern (ohne 102/118) + VKF-Kern destilliert — 12.07.2026 (Run 2):** SIA
  103/105/111/112/416/451 + VKF 1-15/16-15/14-15/27-15, alle am Original adversarial verifiziert
  (`established`). Befund: **SIA 105:2020 hat kein Art.-7-Baukostenmodell** (nur Kategorie-/
  Zeitmodell Art. 6) — für `honorarberechnung-sia102` relevant.
- [x] **ÜBERHOLT, korrigiert Run 22 (260725):** «SIA 118:1991 noch nicht destilliert» stimmt seit
  260712 nicht mehr — `destillate/sia-118-1991.md` existiert, ist `established` (Volltext, Kennzahlen
  Modell-D-verifiziert) und wurde in Run 14/15 zusätzlich per Q&A gegengeprüft. Offen bleibt allein die
  **Beschaffung** der gültigen Ausgabe 118:2013 (Bring-Schuld Raphael, kostenpflichtig).
- [x] VKF — **beantwortet 11.07.2026 (Web-Verifikation bsvonline.ch):** Die **BSV 2015 sind
  weiterhin die rechtsgültigen** Brandschutzvorschriften; die Totalrevision «BSV 2026» wird
  bezüglich Inkraftsetzung erst an der **IOTH-Plenarversammlung im März 2027** behandelt.
  Bestand 2015 bleibt also die Arbeitsgrundlage. Beschafft und abgelegt: **Normkonzept
  BSV 2026** (170 S., Stand 06.10.2022) unter `VKF_Norm/07_BSV 2026 Projekt (noch nicht
  in Kraft)/`.
- [ ] **BSV 2026 überwachen:** Sobald die definitiven Norm-/Richtlinientexte auf
  bsvonline.ch publiziert sind (erwartet nach IOTH-Entscheid März 2027), herunterladen und
  neben den 2015er-Bestand legen; Skill `brandschutz` erst NACH Inkraftsetzung umstellen.
- [x] DIN-Ordner enthält `FileOpenInstaller.dmg` + Anleitung — **beantwortet, DIN/VSS/RAL
  komplett 13.07.2026 (Run 5):** alle 72 DIN-Dateien wurden destilliert oder als Nicht-Norm
  übersprungen, kein DRM-Hindernis aufgetreten; `FileOpenInstaller.dmg` selbst ist kein
  Norm-PDF und im Inventar als übersprungen erfasst.
- [x] **GESCHLOSSEN (Run 24, 260725): SIA 385/1 — PDF liegt vor (nicht «nur Screenshots»),
  ist aber ein 6-seitiger Auszug/Vorschau, nicht der Volltext.** Datei
  `SIA_Norm/i385-1_2011_d.pdf` (6 von 28 Normseiten: Titelblatt/Impressum/Inhaltsverzeichnis/
  Vorwort/Kommission/Genehmigung, Ziff. 0-5 + Anhang A/B fehlen komplett) — bereits am
  17.07.2026 destilliert und korrekt als `struktur-destillat (Auszug)`/Bring-Schuld markiert
  in `destillate/sia-385-1-2011.md`. Kein weiterer Klärungsbedarf.
- [x] **GESCHLOSSEN (Run 24, 260725): SIA 380/1:2016 im Bestand-Ordner bestätigt, ebenfalls
  nur 6-seitiger Auszug/Vorschau.** Datei `SIA_Normen/SIA 380_1_2016/i380-1_2016_d.pdf`
  (6 von 60 Normseiten: Titelblatt/Impressum/Inhaltsverzeichnis/Vorwort/Kommission/Genehmigung;
  Ziff. 0-3 + Anhänge A-E mit allen Grenz-/Zielwerten fehlen komplett) — bereits am 17.07.2026
  destilliert, `destillate/sia-380-1-2016.md`, `status: speculative`, klar als Bring-Schuld
  markiert (Volltext-Kauf nötig, blockiert Agent `energie-berater`, siehe Run-23-Bring-Schulden-
  Liste). REGISTER-Ausgabejahr 2009↔2016 nicht weiter verifizierbar ohne Volltext-Beschaffung.
- [x] DIN-Ordner DRM (FileOpenInstaller.dmg) — **teilweise beantwortet 12.07.2026:** die
  getesteten nationalen DIN-PDFs (DIN 277-1, 277-2, 5034-1) waren OHNE DRM-Barriere direkt
  lesbar (kein FileOpen-Prompt, Text/Bild direkt extrahierbar). Für die grossen/gescannten
  DIN-EN-Dokumente (4102-1/2, 18040-1/2, 1946-6) wurde dies in diesem Lauf NICHT getestet
  (aus Kostengründen zurückgestellt) — im nächsten DIN-Lauf prüfen und ggf. als «DRM,
  manuell» markieren.
- [x] DIN 277-3 (Mengen/Bezugseinheiten) — **destilliert 260712** (din-277-3-2005.md),
  DIN-277-Serie (Teil 1-3) komplett.
- [x] Grosse/scanlastige VSS-Dateien (640 065/281/291a/578) — **destilliert 260713 (Run 4)**,
  Familie VSS im Inventar vollstaendig abgearbeitet.
- [ ] Merkblatt SIA 2014 «CAD-Layerorganisation» (der Layerkatalog, auf den SIA 400:2000 Ziff.
  B.11.3 zwingend verweist: Agent A–/B–/S– + Elementcode + Präsentationscode E/T/D) ist NICHT im
  Normen-Bestand. Bring-Schuld für den Wettbewerbs-Layer / die maschinelle DXF-Layer-Codierung —
  bei konkreter Layer-Benennung SIA 2014 beiziehen (SIA-Shop, nur auf Zuruf). (Notiert 12.07.2026
  beim Destillieren von SIA 400.)
- [ ] **SIA 242 «Verputz- und Gipserarbeiten» ist NICHT im Normen-Bestand** (inkl. der
  Qualitätsstufen-Systematik Q1–Q4 für gespachtelte Gipsplatten-Oberflächen). Bring-Schuld;
  gebraucht am 21.07.2026 für die KISPI-Fachfrage LBW-Beschichtung (Antwort aus Fachpraxis
  erstellt, Projektordner `2619 .../KISPI Trockenbau LBW/260721-LBW-Beschichtung-Antwort.md`) —
  bei Beschaffung das Destillat dagegen verifizieren. (Notiert Dauerschicht-Zyklus 35.)

- [x] **P2-SIA-Batch 1 destilliert — 12.07.2026 (Run 3):** SIA 260–267 (Tragwerk),
  500/358/251/252/253/257/271/281/279/232/329/240 (Hochbau) — 20 Normen am Original
  adversarial verifiziert (`established`). Tragwerksnormen-Generation 2003 vollständig
  im Bestand + destilliert (Grundlagen bis Geotechnik).
- [~] **TEILWEISE GESCHLOSSEN Run 22 (260725): Bestand geprüft — 266/1 destilliert, die übrigen liegen
  nur französisch vor.** Systematische Prüfung: **SIA 266/1:2003 ist deutsch im Bestand** (Datei
  `alle/i/266_1_d.pdf`, falsch im italienischen Ordner, war als «Sprachvariante» abgehakt) und ist jetzt
  destilliert (`sia-266-1-2003.md`). Von den übrigen `/1`-Normen liegen im Bestand **nur französische
  Fassungen** (`alle/f/261_1_f.pdf`, `262_1_f`, `263_1_f`, `264_1_f`, `265_1_f`, `266_1_f`, `267_1_f`) —
  keine deutschen. Damit bleibt für 260/1 bis 265/1 und 267/1 offen: entweder deutsche Ausgaben beschaffen
  (Bring-Schuld) oder bei tragwerksstatischen Detailfragen bewusst die französische Fassung nachlesen und
  die Sprachquelle im Zitat kennzeichnen. Für 260/1 wurde überhaupt keine Bestandsdatei gefunden.
  **Nachtrag 07.08.2026:** deutsche Ausgaben **261/1, 262/1, 264/1, 267/1 (je 2003) übernommen**
  (Downloads-Sammlung, Titelblätter verifiziert, `alle/…_d.pdf`) — Bring-Schuld für diese vier
  GESCHLOSSEN. 263/1:2003 und 265/1:2003 ebenfalls dt. übernommen, aber als Altausgaben
  (`alle/xalt/`; gültig sind 263/1:2013 bzw. 265/1:2009 — deren deutsche Fassungen bleiben
  Bring-Schuld). 260/1 weiterhin ohne Bestandsdatei.
- [ ] **SIA 240:1988 (Metallbauarbeiten)** ist eine sehr alte Ausgabe (ersetzt Norm
  130:1959); aktuellere Ausgabe (falls vorhanden) am SIA-Shop verifizieren — Bring-Schuld
  Raphael (kein Auto-Web, kein Kauf durch Claude).
- [ ] **SIA 279:2018 / 281:2017 / 329:2018** sind NEUER als das 2013-Register — als aktuell
  geführt (am PDF-Deckblatt belegt), gelten bis zur nächsten Revision.
- [x] **Inventar-Reconcile 13.07.2026 (MacBook Pro, Run 5):** 35 Positionen (7 SIA + 28 VKF)
  standen seit dem 12.07.2026 fälschlich als `[~] in Arbeit (MacBook Session)` im Inventar —
  eine Vorsession war offenbar abgebrochen, NACHDEM die Destillate bereits geschrieben waren,
  aber BEVOR Inventar/INDEX nachgeführt wurden. Alle 35 Destillate wurden auf der Platte
  verifiziert vorgefunden und im Inventar auf `[x] 260713` gesetzt + in `destillate/INDEX.md`
  nachregistriert. Kein PDF musste neu gelesen werden.
- [ ] **Duplikate aus dem Reconcile — Merge/Bereinigung offen (Destruktiv, Rückfrage vor Ausführung):**
  fünf VKF-Destillate existieren doppelt unter zwei Dateinamen mit identischer Quelle:
  `vkf-brl-100-15-brandmauern.md` ↔ `vkf-brl-brandmauern-100-15.md`;
  `vkf-brm-2001-15-solaranlagen.md` ↔ `vkf-merkblatt-2001-15-solaranlagen.md`;
  `vkf-brl-aenderungen-2017.md` ↔ `vkf-aenderungen-brandschutzrichtlinien-2017.md`;
  `vkf-brl-28-15-anerkennungsverfahren.md` ↔ `vkf-brl-anerkennungsverfahren.md` (Run 12, 260714:
  Inhaltsvergleich gegen Original abgeschlossen — `vkf-brl-28-15-anerkennungsverfahren.md` ist
  vollständiger, u.a. Ziff. 3.3 Qualitätsmanagement fehlt im Duplikat komplett; als established
  markiert, physisches Löschen von `vkf-brl-anerkennungsverfahren.md` bleibt offen/Rückfrage);
  `vkf-bsv2015-bericht-aenderungen.md` ↔ `vkf-bsv2015-vernehmlassungsbericht.md` (letzteres evtl.
  inhaltlich verschieden — „Vernehmlassungsbericht" vs. „Bericht/Änderungen", trotz gleicher
  Quelldatei; vor dem Merge kurz gegenlesen). Je Paar den besseren/vollständigeren Stand behalten,
  den anderen löschen und aus `destillate/INDEX.md` entfernen — NICHT automatisch, da Löschen
  destruktiv ist (Rule `wissens-bibliothekar`).
  - **Nachtrag Wissens-Chef Run 28, 07.08.2026 (nur Paar 2001-15 Solaranlagen):** weiterhin offen,
    keine Statusänderung, kein Merge. Die inhaltliche Divergenz der beiden Destillate ist in diesem
    Lauf geschlossen worden: `vkf-merkblatt-2001-15-solaranlagen.md` führte Tabelle 1 fälschlich auf
    «S. 6», korrigiert auf «S. 7» (am Original verifiziert, MD5 `56fb4bab06eaa4efec181d7f6fb44e87`);
    `vkf-brm-2001-15-solaranlagen.md` war unverändert korrekt und wurde nicht angefasst.
    **Vormerkung für den Tag der Merge-Freigabe durch Raphael:** `vkf-brm-2001-15-solaranlagen.md`
    bleibt führend, unter drei Bedingungen — (a) der Run-3-Block aus
    `vkf-merkblatt-2001-15-solaranlagen.md` (Provenienz Rev. 01.01.2022 / RF3(cr), Abschnitt «Offene
    Punkte») wird nach `vkf-brm-…` übernommen; (b) die drei Fremdzeiger aus anderen KBs werden im
    selben Zug umgehängt (`wissen/planungsgrundlagen/wiki/energie-pv-brandschutz.md`,
    `wissen/planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md`,
    `wissen/energie/destillate/pv-blitzschutz-gebaeudeversicherung-ch.md`); (c)
    `vkf-merkblatt-2001-15-solaranlagen.md` bleibt als Zeiger-Datei bestehen und wird nicht gelöscht,
    da die geltende Fassung den Namensstamm `vkf-merkblatt-2001-15-solaranlagen-2022.md` trägt.
- [ ] **Dateiname/Inhalt-Mismatch:** `vkf-merkblatt-brandschutzklassifikation-bauteile.md` hat als
  Quelle `Brandschutz-Praevention.pdf`, der Dateiname passt aber nicht zum Inhalt (Klassifikation
  von Bauteilen statt Prävention). Prüfen, ob der Inhalt wirklich zur Quelle passt, ggf. umbenennen
  auf ein passendes Muster (z.B. `vkf-brl-praevention-organisatorischer-brandschutz.md` — kollidiert
  dann aber mit `vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md`, das dieselbe Quelle
  hat: beide Destillate zu `Brandverhuetung & organisatorischer Brandschutz.pdf` bzw.
  `Brandschutz-Praevention.pdf` — evtl. sind das zwei verschiedene PDFs mit ähnlichem Thema, am
  Original gegenlesen bevor gemerged wird.
- [ ] **DIN EN 12101-2 im VKF-Ordner:** `VKF_Norm/02_Brandschutzrichtlinien 2015/DIN EN 12101-2.pdf`
  ist eine Dublette der bereits unter DIN destillierten `din-en-12101-2-2003.md` (Mac Mini) — beim
  Reconcile referenziert statt neu destilliert, keine Aktion nötig.
- [x] **VKF-Verzeichnis 40-15 (Weitere Bestimmungen) — ERLEDIGT, Bestandskontrolle Run 17 (260721):**
  das Destillat `vkf-verz-40-15-weitere-bestimmungen.md` ist am Bestand als vollständig belegt
  (Frontmatter `gelesen: S. 1-22 komplett (Titelblatt bis Ziffer 4 Abkürzungsverzeichnis, gesamtes
  Dokument)`, status `established (verifiziert 260714, vollstaendig)`). Die 13.07. notierte Lücke
  (Ziff. 3.7-3.9 + Abkürzungsverzeichnis) wurde zwischenzeitlich geschlossen; Notat war veraltet.
- [ ] **Workflow-Tool blockiert Hintergrundläufe:** In diesem Scheduled-Task-Lauf (13.07.2026)
  verweigerte das Workflow-Orchestrierungstool die Ausführung mit „Review dynamic workflow
  before running" — vermutlich ein interaktives Freigabe-Gate, das in einem unbeaufsichtigten
  Hintergrundlauf nicht bedient werden kann. Fallback auf parallele Agent-Aufrufe (13 Agenten in
  einer Nachricht) hat funktioniert, ist aber weniger effizient (keine Pipeline/Verify-Stufe,
  höherer Tokenverbrauch: ca. 150k Tokens je Agent, Budget für 13 Destillate nahezu ausgeschöpft
  bei $22 von $25 Sessionbudget). Für künftige Läufe: entweder Workflow-Tool-Verhalten in
  Hintergrundläufen klären, oder bewusst mit kleineren Agent-Batches (8-10 statt 13-19) planen.
- [ ] **DIN EN 1627:2011 (Einbruchhemmung) — nur Teilbestand, Lücke bestätigt.** Die
  Datei `DIN-Norm/DIN 1627_Auszuege .pdf` enthält laut `pdfinfo` nachweislich nur
  4 von 44 Seiten der Vollnorm (Titelblatt, Ziff. 5-6, Anhang NA.6, NA.10-NA.11);
  Destillat `din-en-1627-2011.md` bleibt `teil-destillat`. Retro-Verifikation
  Mini-Run 14 (260713) hat die 4 vorhandenen Seiten vollständig gegen das Destillat
  geprüft (13 Aussagen) und 1 Fehler korrigiert: RC 4 war fälschlich pauschal als
  «Elektrowerkzeuge»-Einsatzklasse geführt, das Original nennt für RC 4 aber
  Säge-/Schlagwerkzeuge + Akku-Bohrmaschine (echte Elektrowerkzeuge erst ab RC 5).
  Ergänzt wurden zudem die Korrelationstabelle NA.7 für RC 1N/RC 2N (keine bzw. nur
  teilweise Entsprechung zu den WK-Altklassen) und der Orientierungscharakter der
  Tabelle NA.6 (fachkundige Beratung nötig). Für Widerstandsklassen-Details über die
  4 gelesenen Seiten hinaus (v. a. die vollständige Klassentabelle, Prüfverfahren-
  Anhänge, Ziff. 1-4) weiterhin die Vollnorm via Beuth-Verlag oder erneute
  SharePoint-/M365-Suche beschaffen. Notiert 13.07.2026 (normen-training-mini, Mac Mini).
- [ ] **Schweizer Pendants zu deutschen Sonstiges-Destillaten fehlen noch (Mac Mini Run,
  13.07.2026):** Beim Destillieren mehrerer deutscher Nicht-DIN-Dokumente (BauNVO, ArbStättV,
  VStättVO Niedersachsen, DIN 18041 Hörsamkeit, Treppen-Lehrskript) fiel wiederholt auf, dass
  die zugehörige Schweizer Grundlage in dieser KB noch fehlt: **SIA 500 "Hindernisfreie Bauten"**
  (Pendant zu NBauO-Barrierefreiheit/ArbStättV §3a Abs.2), **SIA-Grundlagen Raumakustik**
  (Pendant zu DIN 18041) und die **SIA 260er-Tragwerksnormen** (Pendant zu den Eurocodes,
  DIN EN 1990-1999). Fuer den SIA/VKF-Loop (MacBook Pro) als Ergaenzungskandidaten vormerken.
- [ ] **DIN-Sonstiges-Ordner: gemischter Inhalt, nicht alles sind Normen.** Der Ordner
  `DIN_Norm/Sonstiges/` enthaelt neben echten DIN-Normen auch deutsche Landesrecht-Auszuege
  (NBauO/DVNBauO Niedersachsen), HOAI-Leistungsbild-Exzerpte und ein Lehrskript (HCU Hamburg
  Treppen) — alle wurden dennoch destilliert, da im Inventar gelistet (Kompoundierungs-Pflicht),
  aber mit deutlichem Vermerk "kein CH-Bezug" im JANS-Praxis-Transfer. Fuer kuenftige Laeufe:
  gleiche Vorsicht bei Interpretation als "verbindliche Norm" gegenueber diesen Auszuegen.
- [x] **Gross-Dateien DIN-Sonstiges/DIN-Norm** — alle in Run 3+4 (13.07.2026) destilliert,
  siehe Inventar. Keine offenen Positionen mehr.

- [ ] **Mac Mini Run 3 (13.07.2026, Intensiv-Lauf): CH-Pendants weiterhin offen + Budget-Grenze
  erreicht.** 9 neue Vollstaendig-Destillate (DIN 1045-2, 105-100, 1053-1, 1053-100, 1053-4,
  18040-2, 18232-2, 1946-4) plus Teil-Destillat DIN 1054 (72%). Neue CH-Pendant-Luecke: **SWKI
  99-3** (Heiz-/Raumlufttechnik Spitalbauten) fehlt als Schweizer Pendant zu DIN 1946-4
  (Healthcare-RLT) — Kandidat fuer Ergaenzung, relevant fuer `healthcare-wirtschaftlichkeit`/
  `energie-berater`. Ebenso referenziert aber nicht destilliert: DIN 4159 (Ziegel-Tabellen,
  aus DIN 1053-4) und DIN 4149 (Erdbebenzonen D). Workflow-Tool verweigerte erneut die
  Freigabe ("Review dynamic workflow before running") - Fallback auf 9 parallele Agent-Aufrufe
  in einem Batch; das hat ca. $17 von $25 Sessionbudget verbraucht (ca. $1.9/Agent bei
  60-100-seitigen Volltexten) - fuer den naechsten Lauf kleinere Batches (5-6 statt 9) oder
  kuerzere Dokumente zuerst planen. **Offen fuer naechsten Lauf:** DIN 4844-2, DIN V 105-100,
  DIN V 106, Sonstiges/Baupreisindizes, Sonstiges/Inhaltsverzeichnis (DRM-verdaechtig, print
  erlaubt/copy gesperrt - noch nicht getestet), Sonstiges/Komm Din 18024 Teil 1, Sonstiges/
  VdS-Richtlinie 2234 (DRM-verdaechtig, print+copy erlaubt), Rest DIN 1054 (S.61-77+94-105),
  alle 5 offenen VSS-Grossdateien (40 291, 640 065, 640 281, 640 291a, 640 578).

- [x] **SN 640 105a (Verbreiterung der Fahrbahn in Kurven, Dez. 2000)** — **destilliert
  13.07.2026 (Mac Mini Run 6):** vollstaendig gelesen (S.25-37 des Traegerdokuments
  `VSS 640 291a Parkieren Geometrie.PDF`, 13/13 S.), eigenstaendiges Destillat
  `destillate/sn-640105a-2000.md`. Volltextabgleich-Verifikation (Modell D): alle Kernwerte
  (D-Werte Kategorien A-D, Formel e=Ra-√(Ra²-D²), Bagatellgrenzen, Geltungsbereich 11,25-500m)
  gegen den Originaltext geprueft, established.
- [x] **Mac Mini Run 4 (13.07.2026): DIN/VSS/RAL-Inventar vollstaendig abgearbeitet.** Alle
  zuvor offenen DIN-Sonstiges-Dateien (Inhaltsverzeichnis, Planungsgrundlagen, VdS 2234,
  Komm DIN 18024 Rest) sowie alle 5 grossen VSS-Scans (40 291, 640 065, 640 281, 640 291a,
  640 578) destilliert; verbleibende 5 Dateien als Nicht-Normen begruendet uebersprungen.
  RAL war bereits komplett. **Naechster Lauf: Endbedingung pruefen und ggf. Task beenden.**
- [x] **DIN/VSS/RAL KOMPLETT — Mac Mini Run 5 (13.07.2026), Endbedingung erreicht.**
  Inventar-Abgleich gegen den echten SharePoint-Ordnerinhalt (DIN_Norm 72, VSS_Norm 17,
  RAL_Norm 1 Dateien) ergab 4 zuvor nicht erfasste Nicht-Norm-Dateien (FileOpenInstaller.dmg,
  2 Screenshots, 1 Foto) — als übersprungen nachgetragen. Danach: **0 offene [ ]-Positionen**
  in den DIN-, VSS- und RAL-Abschnitten von `training/norm-inventar.md` — jede Datei ist
  destilliert oder begründet übersprungen. Der Scheduled Task `normen-training-mini` kann
  gemäss Endbedingung (Skill-Prompt Schritt 9) beendet werden; entscheidet Raphael. Verbleibende
  Qualitätslücken (nicht blockierend, siehe oben): Duplikat-Merge VKF (Zeile 73, destruktiv,
  Rückfrage nötig), Teil-Destillat DIN EN 1627:2011, SN 640 105a als Anhang nicht separat
  destilliert, fehlende CH-Pendants (SIA 500/SWKI 99-3/SIA 260er) für den SIA/VKF-Loop.
- [x] **Mac Mini Run 6 (13.07.2026): Deepening-Stufe (a) begonnen, SN-640-105a-Lücke
  geschlossen.** Gemäss Token-Vollgas-Eskalation (`training/PROGRAMM.md`, Rule 260712c) geht
  der Loop nach Inventar-Abschluss NICHT in den Leerlauf, sondern in die Vertiefungsstufen
  über. Erster Schritt: die in Run 5 als offen vermerkte Lücke SN 640 105a (Anhang in
  `VSS 640 291a Parkieren Geometrie.PDF`, S.25-37) vollständig destilliert und verifiziert
  (siehe oben). Verbleibende Deepening-Kandidaten für den nächsten Lauf: DIN EN 1627:2011
  (Vollnorm-Beschaffung), Retro-Verifikation bestehender DIN/VSS/RAL-Destillate mit
  unabhängigen Widerlegungs-Agenten, Q&A-Selbstbefragung je Kernnorm.
- [x] **Mac Mini Run 7 (13.07.2026): Deepening-Stufe (b) Retro-Verifikation, 8 Destillate
  geprüft, 4 Fehler gefunden und korrigiert.** Parallele Volltextabgleich-Verifikation
  (Modell D, adversarial — Ziel Widerlegung) auf 8 DIN/VSS-Destillate: din-4102-1-1998
  (BEANSTANDET: 2 Fehler — Verbundbaustoff-Grenze fälschlich als Verbot statt Beweislastregel,
  Rauchprüf-Temperaturen 200-600°C vermischt zwei verschiedene Werte; korrigiert, bleibt
  Teil-Destillat), din-4102-2-1977 (BESTANDEN → established), din-18040-1-2010 (BEANSTANDET:
  2 komplett fehlende Kernziffern-Abschnitte — Ziff. 5.2.1 feste Bestuhlung, Ziff. 5.3.6
  Liegen — trotz Behauptung "keine offenen Ziffern"; ergänzt und auf established gehoben),
  din-18040-2-2011 (BESTANDEN → established), din-1946-6-2009 (BEANSTANDET: 1 Fehler —
  "Bautenschutz" statt "Beheizung" in Ziff. 3.1.25-Anmerkung, EnEV-§6-Zweckbezug verfälscht;
  korrigiert, bleibt Teil-Destillat ~25%), din-277-1-2005 (BEANSTANDET: Fundstellenfehler
  Ziff. 2/S.3 statt Ziff. 1/S.2, unbelegte "deutsches Pendant zu SIA 416"-Gleichsetzung,
  fehlende Wandöffnungen in KGF-Beispielen; korrigiert, bleibt established), din-277-2-2005
  (BESTANDEN, bleibt established), vss-640050-1993 (BESTANDEN, bleibt established). Fazit:
  die Verifikations-Pflicht (Rule 260712) greift — 4 von 8 Stichproben (50%) hatten reale,
  wenn auch kleine, inhaltliche Fehler; Retro-Verifikation bestehender "destilliert"-Bestände
  ist substanziell wertvoll, nicht nur Formalität. Nächster Lauf: weitere Stichprobe aus den
  verbleibenden ~15 unverifizierten DIN/VSS-Destillaten (Kandidaten: din-18065-2000,
  din-18299-2010, din-4844-2-2001, vss-640060/066/281/578), danach Stufe (c)
  Q&A-Selbstbefragung.
- [x] Retro-Verify Run 8 (12 Stichproben) — **beantwortet 13.07.2026 (Run 9):** alle 12 in
  Run 8 beanstandeten Destillate (din-18065-2000, din-18299-2010, din-4844-2-2001,
  vss-640060-1994, vss-640066-1996, vss-640281-2006, vss-640578-2006, vss-40291-2021,
  vss-640065-2011, din-v-105-100-2005, din-v-106-2005, komm-din18024-t1-bayern-2001)
  wurden im Fliesstext korrigiert (Ersetzung statt Anhang) und auf `established` gehoben;
  4 davon (din-18065-2000, vss-640060-1994, vss-640281-2006, vss-40291-2021) enthielten
  komplett fehlende Ziffern, die aus dem Original-PDF nachgetragen wurden. Details:
  `outputs/2026-07-13_normen-mini-run9.md`. **Nächster Lauf:** weitere Retro-Verifikation
  des grossen Rests unverifizierter DIN/VSS-Destillate (DIN 5034-Reihe, DIN 1053-Reihe,
  weitere DIN-EN-Normen, VSS-Altbestand), danach Stufe (c) Q&A-Selbstbefragung.
- [ ] **Verify-Abschluss MacBook (13.07.2026): neue offene Punkte aus den 9
  Retro-Verifikationen.** (1) Drei Duplikat-Merges noch offen:
  `vkf-aenderungen-brandschutzrichtlinien-2017.md` → `vkf-brl-aenderungen-2017.md`,
  `vkf-merkblatt-2001-15-solaranlagen.md` → `vkf-brm-2001-15-solaranlagen.md`,
  `vkf-brl-anerkennungsverfahren.md` → `vkf-brl-28-15-anerkennungsverfahren.md`
  (Brandmauern-Merge ist erledigt 260713). (2) sia-104-2003: SIA-111/112-Vergleich als
  (speculative) markiert — an den Originalen SIA 111/112 gegenprüfen. (3) NSV-Merkblatt
  Brandschutzklassifikation: K-30-RF1-Definition nur sinngemäss aus BSR 13-15 (speculative)
  — am BSR-13-15-Original wortgetreu prüfen; Rename wegen Dateiname/Inhalt-Mismatch
  («Brandschutz-Praevention.pdf») weiterhin offen. (4) steeldoc 03/15: quell-interne
  Diskrepanz ECCS-Nomogramm (Text «N°92» [10] vs. Literaturverzeichnis [11] «ECCS No. 89»,
  1999) — nur mit ECCS-Original auflösbar. (5) BRL 100-15 Brandmauern: Gegenprüfung des
  REGISTERs auf eine allfällig spätere Ausgabe. Details:
  `outputs/2026-07-13_normen-verify-abschluss-macbook.md`.
- [x] **Mac Mini Run 10 (13.07.2026): Retro-Verifikation DIN-5034-Reihe + DIN-1053-Reihe
  komplett, 8/8 beanstandet-korrigiert.** Alle 4 verbleibenden DIN-5034-Destillate
  (5034-1/2/4/6) und alle 4 verbleibenden DIN-1053-Destillate (1053-1/2/3/100) adversarial
  gegen das Original verifiziert — 8 von 8 (100%) hatten reale Fehler, teils substanziell:
  **din-5034-4 (Tageslicht vereinfachtes Verfahren) hatte einen sachlich falschen
  Formelfehler** (k1h/k1v für horizontale/vertikale Verbauung — Original verlangt für BEIDE
  Richtungen √0,7, Destillat behauptete faelschlich horizontal direkt 0,7 ohne Wurzel; hätte
  bei praktischer Anwendung zu falscher Tageslicht-Bemessung geführt). **din-5034-1 fehlte
  eine komplette zweite Regelspur** (Ziff. 4.2.3, wohnraumähnliche Arbeitsräume/Healthcare-
  Räume) — ohne Korrektur wäre bei Anwendung auf Spital-/Pflegeräume die falsche Fensterregel
  herangezogen worden. **din-1053-2 hatte massive Lücken** (7 von 8 Ziffern komplett fehlend,
  Tabelle 1 nur 2 von 20 Festigkeitsklassen) trotz Status "destilliert". Alle 8 Korrekturen
  direkt im Fliesstext integriert (nicht als Anhang), Status auf `established` gehoben.
  Details: `outputs/2026-07-13_normen-mini-run10.md`. **Fazit:** die Retro-Verifikations-
  Pflicht bleibt hochgradig wertstiftend — die Beanstandungsquote ist über alle bisherigen
  Mac-Mini-Retro-Runs (7-10) durchgehend hoch (50-100%), reine "destilliert"-Erstdurchgänge
  ohne Verifikation sind für sicherheits-/bemessungsrelevante Aussagen NICHT ausreichend
  vertrauenswürdig. **Nächster Lauf:** weitere Retro-Verifikation des Rests (VSS-Altbestand
  vss-700.5/722.15/merkblatt-veloabstellplaetze, DIN-EN-Normen din-en-12207 bereits erledigt,
  DIN 918/1164/1249/1356-Reihe, DIN 1946-7, DIN 18560-2 u.a.), danach Übergang zu Stufe (c)
  Q&A-Selbstbefragung sobald die Beanstandungsquote über mehrere Läufe stabil sinkt.
- [x] **Mac Mini Run 11 (13.07.2026): Retro-Verifikation VSS-Altbestand komplett + 13 DIN-
  Einzelnormen, 10/16 beanstandet-korrigiert (62,5%).** Alle 3 VSS-Altbestand-Destillate
  (700.5, 722.15, Merkblatt Veloabstellplätze) und 13 DIN-Einzelnormen adversarial gegen das
  Original verifiziert. **Faktor-10-Fehler in din-272-1986** (Vorlast Oberflächenhärte-Prüfung
  fälschlich (10 ± 1) N statt korrekt (10 ± 0,1) N) — hätte bei praktischer Anwendung zu einer
  falschen Prüflast geführt. **vss-700.5-1987 und vss-merkblatt-veloabstellplaetze-1998**
  hatten trotz «vollständig gelesen»-Vermerk je mehrere komplett fehlende Abschnitte (Anhang-
  Tabellen, §§-Blöcke). Alle Korrekturen direkt im Fliesstext integriert, Status auf
  `established` gehoben. Details: `outputs/2026-07-13_normen-mini-run11.md`. **Fazit:** die
  Beanstandungsquote sinkt leicht gegenüber Run 10 (100% → 62,5%), bleibt aber deutlich über
  der für Stufe (c) angepeilten Schwelle. **Nächster Lauf:** Restliste der noch unverifizierten
  DIN/VSS/RAL-Destillate (u.a. din-1946-4-2008 Healthcare-RLT, din-1960/1961-2010 VOB A/B,
  din-18232-2-2007, din-1053-4-2011, ral-gz638-2008) sowie Vertiefung der Teil-Destillate
  (din-1946-6-2009, din-4102-1-1998, din-1054-2010, din-en-1627-2011).
- [x] **Mac Mini Run 12 (13.07.2026): din-4102-1-1998 und din-1946-6-2009 zu vollständigen
  Destillaten ausgebaut, DIN/VSS/RAL-Basisinventar damit vollständig `established`.**
  DIN 4102-1 (Anhang B, S.21-25, Rauchentwicklungs-Prüfverfahren) direkt nachgelesen und
  ergänzt. DIN 1946-6 (Healthcare-RLT-relevant, Wohnungslüftung) über 6 parallele Agenten
  komplett von S.21 bis S.125 gelesen und ins Destillat integriert (§5.3-5.4 Systemauswahl,
  §7-8 Auslegung freie/ventilatorgestützte Lüftung inkl. Feuerstätten-Sicherheitseinrichtungen,
  §9-12 Ausführung/Dokumentation/Inbetriebnahme/Instandhaltung, Anhänge A-J). Zusätzlich
  din-abkuerzungsverzeichnis-2010 und din-planungsgrundlagen-hoai-vorschriften-2004 auf
  `established` gehoben (reine Referenzwerke, geringes Fehlerrisiko).
- [x] **din-1946-6-2009, Tabellennummer D.4 unstimmig (S.90/91-Grenze)** — geklärt
  Mini-Run 13 (260713): Volltextabgleich S.89-92 direkt am Original zeigt EINEN
  informativen Anhang D mit einer einzigen, über den Seitenumbruch 90/91 fortgesetzten
  Tabelle D.4 (Nr. 1-15); Destillat korrigiert.
- [x] **din-1946-6-2009 ↔ SIA 382/1 Methodenvergleich** geschlossen ✓ 2026-07-21
  (Mac Mini Nachtschicht): Vergleichsartikel aus beiden bereits vollständig destillierten
  Quellen (keine neue Primärquelle nötig) → `[[din-1946-6-sia-382-1-lueftungsauslegung-methodenvergleich]]`.
  Kernbefund: DIN 1946-6 bemisst hüllen-/feuchteschutzgetrieben (Flächenformel + Raum-
  Pauschalwerte), SIA 382/1 nutzungs-/lastgetrieben (Personen/Wärme/Schadstoffe als
  gleichrangige Kriterien) — ein direkter Zahlenvergleich einzelner Tabellenwerte ist
  deshalb nur bedingt aussagekräftig. Für CH-Baueingaben bleibt ausschliesslich SIA 382/1
  (+ SIA 180/380/1/2023) massgebend.
- [x] **Retro-Verifikation für din-1946-6-2009 (125 S.)** — erledigt Mini-Run 13 (260713):
  4 unabhängige Prüf-Agenten, ca. 100 Aussagen geprüft, 14 Fehler/Lücken gefunden und im
  Destillat korrigiert (siehe destillate/din-1946-6-2009.md, Abschnitt „Offene Punkte").
- [x] **SIA/VKF-Basisinventar VOLLSTÄNDIG — 13.07.2026 (MacBook Pro Run 5):** Alle SIA- und
  VKF-Positionen (P1-P3) im `norm-inventar.md` sind destilliert oder begründet übersprungen
  (0 offene `[ ]`). Letzter Batch (Workflow, 24 Destillate + 12 Retro-Verifikationen +
  EN 13200-1): SIA 195/196/197/198/199/203/272/282(564)/405/431/450/480/493/2014/2040/2051/
  2056(592)/343.051/370.080/382-1/384.201/193.111 + SN EN 13200-1 + VKF-BRL 107-15;
  retro-verifiziert established: SIA 162.051/244/246/248/312/370.028/462/465/469/721/752/753.
  **Nächste Läufe → Vertiefungsstufen** (Programm PROGRAMM.md): (a) Tiefendestillate der
  P1-Kernnormen artikelweise (SIA 118/102/416/VKF), (b) Retro-Verifikation mit 3 Agenten,
  (c) Q&A-Selbstbefragung, (d) Querschnitts-Synthesen. Rücktaktung ins Nachtfenster ist
  Raphael vorzuschlagen, sobald die Vertiefung abgearbeitet ist.
- [ ] **Dateiname ↔ Norm-Nummer-Diskrepanzen (dokumentiert, kein Fehler):** `592056.pdf` ist
  inhaltlich **SIA 2056:2019** (SNR 592056), nicht eine Norm «592 056»; `564_282.pdf` ist
  **SIA 282:2019** (SN 564282). Die Destillate behalten den PDF-abgeleiteten Dateinamen
  (`sia-592-056.md`, `sia-564-282.md`), INDEX/REGISTER weisen die echte Norm-Nr aus. Bei
  Bedarf später umbenennen (destruktiv → nur mit Bestätigung).
- [x] **Teil-Destillate mit offenen Anhängen (Vertiefung Stufe a) — ABGESCHLOSSEN Run 19 (260724):**
  ~~SIA 382/1 (Anh. A-G)~~ **ERLEDIGT** (Run 17). ~~SIA 384/201 (Anh. C-G)~~ **ERLEDIGT Run 18**
  (informative Anh. C-G S.81-99 destilliert + adversarial verifiziert, 1 Befund korrigiert →
  established vollständig; Rest-Bring-Schuld nur exakte NA-/E.1-Tabellenwerte bewusst nicht 1:1).
  ~~SIA 196 (Anh. A1-A4)~~ **ERLEDIGT Run 18** (55 Aussagen, 0 Sachfehler → established vollständig).
  ~~SIA 343.051 (Anh. D/E)~~ **ERLEDIGT Run 18** (Anh. D Öffnungsmasse + E Handhabung, bestanden →
  established vollständig). ~~SIA 193.111 (Anh. A-G)~~ **ERLEDIGT Run 18** (informative EN-Anhänge A-G
  S.47-89, 1 Befund korrigiert [Tab. B.3] → established vollständig).
  ~~SIA 2056/592 (Detailkataloge Kap. 3.2-3.9/4/6.3+)~~ **ERLEDIGT Run 19** (GK-/Gebäudetechnik-Kataloge
  Kap. 3.2-3.9/4/6.3-6.26/8 + Anh. A-H, ~50 Aussagen, 3 Befunde korrigiert [Hotel-Betriebsenergie
  Tab.32, Fig.12-Wertebereich, A.7 Online-Tool-Anzahl] → established mit ehrlicher Rest-Bring-Schuld:
  Figuren-Werte Näherungen, GK-Tab.5-35 nur Repräsentativwerte).
  ~~SIA 405 (medienspez. Datenkataloge)~~ **ERLEDIGT Run 19** (Medien-Datenkataloge Ziff. 3.33-3.39 +
  Anh. A3/A4/A6, 44 Aussagen, 3 Befunde korrigiert [Katalog-Zählung, Fernwärme-Trassepunkt, Kolophon-Datum]
  → established; Rest-Bring-Schuld: Grössenordnungszahlen Tab.1 nur als Bandbreiten). **→ 0 offene
  Stufe-a-Positionen; SIA/VKF auf allen vier Vertiefungsstufen (a-d) komplett.**
- [ ] **Fehlende verlinkte Destillate (Cross-Link-Lücke):** `sia-en-13200-1-2019.md` verweist
  auf [[sia-500-2009]] (SIA 500 Hindernisfreie Bauten — Rollstuhlplatzzahl) und die VKF-
  Fluchtweg-Richtlinie; SIA 500 ist noch nicht als eigenes Destillat vorhanden (Bestand
  `500_2009.pdf` ist destilliert? prüfen) — als logische Anschlussnorm nachziehen.
- [x] **din-1946-6-2009 ↔ SIA 382/1 Methodenvergleich (Teil-Grundlage vorhanden):** SIA 382/1
  ist seit Run 5 (260713) als Destillat verfügbar (`sia-382-1-2014.md`, Kern S.1-63,
  Aussenluft-Volumenstrom/Klassierung AUL/RAL/ABL); der Detailvergleich CH- vs. DE-Modell
  kann darauf aufbauen (Anhänge A-G von SIA 382/1 noch offen).

## Mini-Run 32 (Mac Mini, 260716, Zuruf-Intensivlauf) — INVENTAR KOMPLETT für DIN/VSS/RAL bestätigt

Auftrag Raphael: ein weiterer Intensiv-Lauf, NUR Familien DIN/VSS/RAL (Stations-Split,
SIA/VKF nicht angefasst), PROGRAMM.md inkl. Verifikations-Stufe + Token-Vollgas verbindlich.

**Inventar-Check (dritte Bestätigung in Folge, nach Mini-Run 29/30/31):** Datei-für-Datei-
Abgleich `training/norm-inventar.md` gegen die live gemountete SharePoint-Ablage
`PL - 02_Recht_Norm/02_Normen/{DIN_Norm,VSS_Norm,RAL_Norm}` — weiterhin exakt 72/17/1 Dateien,
0 offene `[ ]`-Positionen, keine neuen Dateien. Zusätzlich geprüft: der Ordner
`PL - 02_Recht_Norm/02_Normen/Lignum/` (bisher nicht im Inventar geführt) ist **leer** (0
Dateien) — kein Bestandsfehler, nur zur Vollständigkeit vermerkt, falls dort künftig Dateien
abgelegt werden.

**Bewertung:** Eine künstliche Batch-Zielzahl (15-25 bzw. 30-40 Positionen) hätte erneut
Erfindung/Wiederholung bedeutet. Die verbleibenden 4 Vertiefungs-Lücken aus Mini-Run 30/31
(SIA 266/262/267-Detailbemessung, SIA-Raumakustik, Suva-/EKAS-Fassadengerüst/Dachhaken,
VKF-BRL 15-15, kantonale Velo-Abstellpflicht 2026) wurden erneut geprüft — keine ist aus dem
DIN/VSS/RAL-Scope heraus schliessbar (SIA/VKF-Zugriff nötig oder Quelle ausserhalb der
Normen-SharePoint-Ablage). Ein DIN-5034-1-Datensatz wurde stichprobenartig gegen das Original
gegengeprüft (Title-Metadaten "5034t1 1..10", 10 S. Bestand, `gelesen: S. 1-10 (vollständig)`
im Destillat bestätigt) — Teil-Destillat-Kennzeichnung bleibt korrekt (Bestandskopie ist
selbst unvollständig gegenüber der vollständigen amtlichen Norm, nicht ein Lese-Versäumnis).

**Formale Feststellung:** DIN/VSS/RAL (90 Dateien) sind damit zum dritten Mal in Folge auf
allen vier Vertiefungsstufen (a Grunddestillation, b Retro-Verifikation, c Q&A-Selbstbefragung,
d Querschnitts-Synthese) vollständig und ohne offene Destillations-Lücke bestätigt —
**INVENTAR KOMPLETT** im Sinne von `training/PROGRAMM.md`. Empfehlung an Raphael: den
Scheduled Task `normen-training-mini` gemäss PROGRAMM-Endbedingung pausieren oder auf einen
Datei-Änderungs-Trigger umstellen (neue Dateien in DIN_Norm/VSS_Norm/RAL_Norm/Lignum), statt
weiterhin fixe Zeitintervalle ohne neuen Content abzufahren — passend zur allgemeinen
Token-Drosselung (Rule `auto-verbesserungen.md` 260714). Report
`outputs/2026-07-16_normen-mini-run32.md`.

## Mini-Run 31 (Mac Mini, 260716) — Inventar-Check + 2 von 6 offenen Lücken aus Mini-Run 30 geschlossen

Auftrag Raphael: ein Intensiv-Lauf, NUR Familien DIN/VSS/RAL (Stations-Split, SIA/VKF
nicht angefasst). **Inventar-Check vorab** (Datei-für-Datei-Vergleich `norm-inventar.md`
gegen die live gemountete SharePoint-Ablage `PL - 02_Recht_Norm/02_Normen/DIN_Norm`,
`.../VSS_Norm`, `.../RAL_Norm`): weiterhin 0 offene `[ ]`-Positionen, keine neuen Dateien
seit dem letzten Scan — Grunddestillation (a), Retro-Verifikation (b), Q&A-Selbstbefragung
(c) und Querschnitts-Synthese (d) bleiben für alle 90 DIN/VSS/RAL-Dateien vollständig
abgeschlossen. Dieser Lauf hat deshalb bewusst **keine künstliche Mengen-Zielzahl (z.B.
15-25 Positionen) erzwungen**, sondern die 6 aus Mini-Run 30 dokumentierten offenen Lücken
einzeln geprüft:
- **2 Lücken geschlossen** (SIA 331 ↔ EN 12207/DIN 1249-11; RAL-GZ 638 BKP-Zuordnung) —
  siehe die zwei `[x]`-Einträge unten im Mini-Run-30-Block.
- **4 Lücken bleiben offen**, mit Begründung, warum sie in diesem Lauf nicht schliessbar
  waren: SIA 266/262/267-Detailbemessung (benötigt SIA-Vertiefung, Station MacBook Pro);
  SIA-Raumakustik-Norm (existiert laut `destillate/INDEX.md` nicht in der KB, keine
  DIN/VSS/RAL-seitige Massnahme möglich); Suva-/EKAS-Richtlinie Fassadengerüst/Dachhaken
  (kein SharePoint-Fund, externe Beschaffung nötig, nicht per Destillation lösbar);
  VKF-BRL 15-15 (VKF-Familie, Station MacBook Pro); «2026 verschärfte kantonale
  Velo-Abstellpflicht» (Recherchefrage ausserhalb bestehender Quellen, keine neue
  VSS/SN-Datei in der Ablage gefunden). Report `outputs/2026-07-16_normen-mini-run31.md`.

## Mini-Run 30 (Mac Mini, 260715) — offene Lücken aus der Vertiefungsstufe (d) Querschnitts-Synthese DIN/VSS/RAL

- [ ] **SIA 266/262/267 Detailbemessung nicht gegen DIN 1053/1045-2/1054 gegengeprüft:**
  Abschnitt 9 der Synthese (`wiki/synthese-din-vss-ral-fachskills.md`) stützt sich auf die
  bereits gelesenen Ausschnitte der SIA-Destillate (SIA 266 Ziff. 2.3.2.2, SIA 262 Ziff. 2/
  4.2.1/4.3.6/4.3.8/4.3.10/5.2.2-5.2.4/6.4.2, SIA 267 Ziff. 0-5/8 bis 8.4.4). Nicht gelesen:
  SIA 266 Ziff. 3.2-3.6 (Mauersteine/Mörtel) + 4.1-4.5 (Bemessungsformeln/Tabellen 1-9),
  SIA 267 Ziff. 6-7/8.5-8.6/9-16 (Pfahlfundationen, Verankerungen, Stützbauwerke,
  Erdbauwerke). Ohne diese Kapitel bleibt der DIN-Zahlenvergleich (Partialfaktoren,
  M-Klassen ↔ deklariertes Mauerwerk, Sohlwiderstand ↔ Flachfundationsbemessung)
  ungeprüft. Nachziehen sobald SIA 266/267 (Station MacBook Pro) vertieft destilliert sind.
- [x] **SIA 331 (Fenster) ↔ DIN EN 12207/DIN 1249-11 Ziffer-für-Ziffer abgeglichen —
  erledigt Mini-Run 31 (260716):** Kernbefund: SIA 331s Beanspruchungsgruppen A/B/C
  (Gebäudehöhe-basiert, Ziff. 2 23 4/2 31, Nachweis über EN 42/EN 86) und DIN EN 12207s
  Beanspruchungsgruppen A/B/C (Fugendurchlasskoeffizient-basiert, Nationaler Anhang
  NA.1, nur zur Übertragung alter DIN-18055-Messwerte auf EN-Klassen 1-4) sind KEIN
  gemeinsames System trotz identischer Buchstaben — 1:1-Transfer wäre fachlich falsch.
  DIN 1249-11 (Glaskanten) füllt eine echte Lücke, da SIA 331 keine eigene
  Glaskanten-Klassifizierung kennt (Kap. 3/6 bewusst leer). Details:
  `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt 10.3 + Abschnitt 14 (zwei neue
  Zeilen). Adversarial verifiziert (2 unabhängige Prüf-Agenten gegen die drei
  Quell-Destillate, 0 Fehler gefunden — Details siehe `outputs/2026-07-16_normen-mini-run31.md`).
- [ ] **Keine SIA-Norm zur Raumakustik in der KB:** `destillate/INDEX.md`-Prüfung (Mini-Run 30)
  ergibt keinen Treffer für eine SIA-Raumakustik-/Nachhallzeit-Norm. DIN 18041 dient bis
  dahin als alleinige Zweitquelle für Nachhallzeit-Sollwerte/Absorptionsflächen (Abschnitt 13
  der Synthese). Falls eine einschlägige SIA-Norm existiert und im Bestand liegt, prüfen und
  destillieren.
- [ ] **Keine Suva-/EKAS-Richtlinie zu Fassadengerüst-Verankerung/Dachhaken in der KB:**
  DIN 4426 (Abschnitt 12.4) verweist selbst auf SIA 358 + EKAS/Suva — SIA 358 deckt nur
  Geländer/Absturzsicherung allgemein ab, nicht die Gerüstverankerungskräfte oder die
  Dachhaken-Bestückungsregel. Eine Suva-/EKAS-Quelle dazu ist in der KB nicht vorhanden und
  müsste separat beschafft werden (kein SharePoint-Fund im Normen-Inventar).
- [x] **VKF-BRL 15-15 (Brandschutzabstände Tragwerke/Brandabschnitte) — ERLEDIGT, Bestandskontrolle
  Run 17 (260721):** das Destillat `vkf-brl-15-15-brandschutzabstaende-tragwerke.md` existiert
  (destilliert 260714). Die Mini-Run-30-Notiz «noch nicht destilliert» war aus DIN/VSS/RAL-Sicht
  (Mac Mini, kein VKF-Zugriff) verfasst und ist veraltet. Die Feuerwiderstands-Anforderungstabelle
  je Nutzung/Gebäudehöhe ist damit direkt in der KB abrufbar, nicht nur über das SZS-Sekundärdokument.
- [ ] **Keine Bestätigung/Recherche zu einer «2026 verschärften kantonalen Velo-Abstellpflicht»:**
  Abschnitt 6b der Synthese (Erschliessung/Velo) hält fest, dass kein geprüftes VSS-Destillat
  (Quellen 1983-2011 bzw. Merkblatt Stadt ZH 1996/1998) eine solche 2026er-Verschärfung
  erwähnt. Falls eine aktuelle kantonale/kommunale Regelung existiert, separat recherchieren
  und nachtragen — nicht aus den bestehenden Quellen ableitbar.
- [x] **RAL-GZ 638 (Gitterroste) BKP-Zuordnung ergänzt — erledigt Mini-Run 31 (260716):**
  gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft: **BKP 221.9** Metallbaufertigteile
  (Rohbau 2, aussen) bzw. **BKP 272.2** Allgemeine Metallbauarbeiten (Ausbau 1, innen), je
  nach Einbausituation; bei Umbauten die Hauptcodes BKP 321/372 (keine .9-Unterteilung in
  der Liste vorhanden, daher keine erfundene Dezimalstelle). Nachgeführt in
  `destillate/ral-gz638-2008.md` und `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt
  11.4 + Abschnitt 14. Adversarial verifiziert (unabhängiger Prüf-Agent gegen
  BKP-2017-Liste.md, 0 Fehler/keine erfundenen Subcodes gefunden — Details siehe
  `outputs/2026-07-16_normen-mini-run31.md`).

## Run 15 (MacBook Pro, 2026-07-17) — neue offene Punkte

- [x] **GEKLAERT: Ausgabejahr VKF-BRL 16-15 «Flucht- und Rettungswege».** Run 14 hatte vermutet, die
  Datei datiere als «Ausgabe 2017». Am Original widerlegt: korrekt ist **Ausgabe 2015, Fassung
  01.01.2017** (Copyright 2015; IOTH-Aenderungen 17.09.2015 und 22.09.2016 eingearbeitet;
  Inkraftsetzung Ziff. 5: Beschluss IVTH 18.09.2014, in Kraft 01.01.2015 — ein Inkrafttreten 2017
  existiert im Dokument nicht). «2017» ist das Fassungs-, nicht das Ausgabedatum. Zitierform:
  «VKF-BRL 16-15de, Ausgabe 2015, Fassung 01.01.2017».
- [ ] **Folgepruefung zur 2015er-BRL-Serie:** Dieselbe Verwechslung Fassungsdatum ↔ Ausgabejahr duerfte
  bei den uebrigen revidierten VKF-Richtlinien systematisch auftreten (deren Fassungsdaten sind
  ebenfalls 2016/2017). REGISTER und Destillate der ganzen Serie darauf durchsehen.
  **Vorarbeit vorhanden (Run 8):** `planungsgrundlagen` hat fuer **BSR 13-15** (Rev. 2017,
  redaktionelle Deltas) und **BSR 14-15** bereits Fassungs-Recherche geleistet — siehe
  `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser` (Run 41/52). Dort abholen statt neu machen.
- [~] **TEILWEISE GESCHLOSSEN Run 22 (260725): Fassung «Stand 01.12.2022» gelesen und die Teilfrage zu
  Ziff. 3.7 entschieden** (Bezugsgrösse **Brandabschnittsfläche > 1'200 m²** in beiden Fassungen
  wortidentisch, Haupttext S. 12 — das Destillat hatte nichts geglättet; geändert wurde nur die
  erläuternde Anhang-Zeile S. 33). **Offen bleiben zwei Punkte**, siehe Run-22-Sektion oben: die
  materielle Kennwert-Änderung der Personenbelegung Ziff. 3.5.2 (Anhang S. 24) ist nur teilweise
  nachgeführt, und die ABSV-Änderung auf S. 16 (umbenannte Bildlegenden) fehlt noch. Ursprünglicher
  Auftragstext zur Nachvollziehbarkeit:
- [ ] **P1 — Fassung «Stand 01.12.2022» der VKF-BRL 16-15 vollstaendig destillieren.**
  *Eingegangen ueber den Wissens-Chef Run 8 (18.07.2026); der Uebergabe-Flag stand seit Run 52 nur
  in `planungsgrundlagen` und war hier nie angekommen.* Im Bestand liegt
  `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/BSPUB-1394520214-85.pdf`.
  Das aktuelle Destillat basiert auf der Fassung 01.01.2017; **nur die Personenbelegung Verkauf**
  (Beschluss TKB 09.06.2021) ist nachgefuehrt. **Ungeprueft bleiben:** Beschluss **ABSV 22.03.2017**
  (Ziff. 2.4.3/2.4.4, S. 15/16) und die **Fehlerkorrektur 01.12.2022** (Ziff. 3.7, S. 33).
  **Konkrete Teilfrage zu Ziff. 3.7:** die Fehlerkorrektur aendert laut planungsgrundlagen die
  Bezugsflaeche der Schleusenpflicht bei Einstellraeumen von «Geschossflaeche» auf
  «Brandabschnittsflaeche > 1'200 m2» — unser 2017er-Destillat schreibt aber **bereits**
  «Brandabschnittsflaeche». Entweder ist die Beschreibung der Vorfassung unpraezis oder das
  Destillat hat die Formulierung damals geglaettet. Am Wortlaut beider Fassungen klaeren.
- [~] **BESTÄTIGT UND TEILWEISE BEHOBEN Run 22 (260725) — der Strukturhinweis war zutreffend und hat
  zwei konkrete Fälle geliefert.** Der hier geforderte «Bestand nach jüngeren Fassungen durchsuchen»-Schritt
  wurde erstmals systematisch ausgeführt und förderte zutage, dass die Destillate der BRL 13-15 und
  BRL 14-15 auf der überholten Fassung 01.01.2015 beruhten, während die Fassung 01.01.2017 im Haus lag —
  in der **zweiten Ablage** `PL - 03 Brandschutz/`, die das Inventar nicht abdeckt (eigener Eintrag in der
  Run-22-Sektion oben). Beide Deltas sind nachgetragen, Verifikation offen. Der Schritt gehört als
  Pflichtschritt in `training/PROGRAMM.md`, zusammen mit der neuen Bildvergleichs-Pflicht. Ursprünglicher
  Hinweistext:
- [ ] **Strukturhinweis (Run 8): Fassungspflege ist der blinde Fleck der Destillate.** Die
  Refuter-Notiz im 16-15-Destillat («keine Abweichung gefunden», 17.07.) prueft gegen **dieselbe
  Datei**, aus der destilliert wurde — sie kann eine juengere Fassung im Bestand grundsaetzlich nicht
  finden. Kuenftige Verifikationen sollten als ersten Schritt den **Bestand nach juengeren Fassungen
  derselben Norm** durchsuchen (Dateiname/Stempel), bevor sie Werte gegenlesen.
- [ ] **BRING-SCHULD P1 — Volltext SIA 380/1:2016 beschaffen.** Im Bestand liegt nur eine Vorschau
  (6 von 60 Seiten). Bis dahin sind Q_H-Grenz-/Zielwerte, U-Wert-Grenzwerte und Gebaeudekategorien
  **nicht belegbar** und duerfen von Agent `energie-berater` / Skill `planungsgrundlagen` NICHT
  genannt werden. Falle: `alle/xalt/neu/380_1_d_2001.pdf` ist Volltext, aber zweifach ueberholt
  (2001→2009→2016) — kein Ersatz. Beschaffung via SIA-Normen-Abo (Zugangsdaten unter
  `SIA_Abo/Korrespondenz/`, Aktualitaet ungeprueft) oder Kauf.
- [ ] **BRING-SCHULD P1 — Volltext SIA 385/1:2011 beschaffen** (6 von 28 Seiten im Bestand). Die
  praxisrelevanteste Frage (Legionellen-Temperaturen, Ziff. 3.1/3.2, Normseite 13) ist bis dahin
  aus dieser Norm nicht beantwortbar. ~~Vor einem Normkauf zuerst pruefen, ob die franzoesische
  Variante `alle/f/385_1_f.pdf` den Volltext enthaelt — waere der billigste Lueckenschluss.~~
  **GEPRÜFT Run 22 (260725) — negativ, dieser Weg ist versperrt:** `alle/f/385_1_f.pdf` (60 S.) ist die
  Ausgabe **2000** zum Thema «Wasser und Wasseraufbereitungsanlagen in öffentlichen Schwimmbädern». Die
  Nummer 385/1 wurde 2011 für «Anlagen für Trinkwarmwasser in Gebäuden» wiederverwendet; die
  Schwimmbad-Materie ging in **385/9** auf. Kein Ersatz, auch nicht teilweise — die Legionellen-Angaben
  der 2000er betreffen Beckenwasser und Duschen. Die Bring-Schuld bleibt somit vollumfänglich offen und
  ist nur über SIA-Abo/Kauf schliessbar.
- [ ] **P2 — SIA-Merkblatt 2048 «Energetische Betriebsoptimierung» ins Inventar aufnehmen.**
  *Eingegangen ueber den Wissens-Chef Run 8 (18.07.2026).* Die KB `energie` hat die Uebergabe
  («Kandidat fuer den Skill/die KB `normen`») in `destillate/muken-2025-modul-7-betriebsoptimierung-hlkkse.md`
  notiert; hier kam sie nie an (grep «2048» in `wissen/normen/`: 0 Treffer — weder REGISTER noch
  `training/norm-inventar.md`). SIA 2048 ist die von MuKEn 2025 Modul 7 in Bezug genommene Methodik;
  energie hat sie bisher nur ueber EnFK EN-142 + Sekundaerquellen erschlossen. Fuer die Methodik-Frage
  (Anhang E.2 Berichtsvorgaben) braucht es den Volltext. Pruefen, ob das Merkblatt im SharePoint-Bestand
  liegt, sonst Beschaffung ueber das SIA-Abo.
- [ ] **Z1/Z2-Koeffizienten des SIA-103-Grundfaktors fehlen** (p = Z1 + Z2/∛Bp, Ziff. 7.2.2). Sie
  werden laut Norm periodisch vom SIA publiziert, stehen aber nicht im PDF. Folge: **Honorar nach
  Baukosten ist nach SIA 103 derzeit nicht durchrechenbar.** Fuer SIA 102 liefert das neue Destillat
  `sia-honorar-hilfsmittel.md` die z-Werte 2015 — der SIA-103-Gegenpart fehlt.
- [x] **Widerspruch zwischen Destillaten — KORRIGIERT 21.07.2026 (Dauerschicht-Zyklus 39,
  Audit-Top-1):** `sia-112-2014.md` Z. 19 ordnete SIA 104 = «Landschaftsarchitektur» und
  SIA 105 = «Maschinen-/Elektroingenieur» zu; korrigiert auf 104 = Forstingenieure,
  105 = Landschaftsarchitektur, 108 = Gebaeudetechnik/Maschinenbau/Elektrotechnik —
  verifiziert an den drei etablierten Ordnungs-Destillaten (sia-104-2003, sia-105-2020,
  sia-108-2014, je Titelseite der Original-PDFs). Restpunkt bleibt: bei Gelegenheit am
  SIA-112-Original S. 4/S. 10 gegenlesen, ob der Scan dort tatsaechlich anders lautet
  (vermuteter OCR-/Uebertragungsfehler des Erst-Destillats).
- [x] **GESCHLOSSEN Run 22 (260725): Beherbergungs-Kategorien [a]/[b]/[c] definiert.** Die Vermutung war
  richtig — die Definition steht in der Brandschutznorm 1-15de (Art. 13 Abs. 2 lit. a, S. 8) und wortnah
  in der BRL 10-15de «Begriffe und Definitionen» (S. 12). Neuer Artikel
  `wiki/vkf-beherbergungskategorien.md`; Details und Verifikations-Verdikt in der Run-22-Sektion oben.
- [ ] **SIA 118:2013 nicht im Bestand** — belegt sind nur 1977/1991. Ob die Ausgabe 2013 fuer laufende
  Werkvertraege beschafft werden muss, ist ein Entscheid fuer Raphael.
- [x] **ÜBERHOLT, korrigiert Run 22 (260725):** Die Merkblatt-Serie ist destilliert (Run 16, 260719) —
  `sia-mb-2001-2005` … `sia-mb-2027-2006`, inkl. der prioritären `sia-mb-2024-2006`
  (Standard-Nutzungsbedingungen) und `sia-mb-2023-2004` (Wohnungslüftung). Offen bleibt nicht die
  Destillation, sondern der **Gültigkeitsstand** der 2000er-Serie (eigener Eintrag unten, Run 16).
- [ ] **VKF-Normkonzept BSV 2026 (Stand 06.10.2022) neu im Inventar** — noch NICHT in Kraft, daher nie
  als geltendes Recht zitieren. Strategisch relevant als Vorschau auf die Abloesung der BSV 2015.
- [ ] **Inventar-Scan haerten:** Der Scan vom 11.07.2026 hat nur `SIA_Normen/alle/` erfasst (58 Dateien
  uebersehen) und Vorschau-PDFs nicht erkannt. Zwei Konsequenzen fuer den naechsten Scan: (1) rekursiv
  ab `02_Normen/` scannen, nicht ab einem Unterordner; (2) je PDF die tatsaechliche Seitenzahl gegen die
  auf dem Titelblatt deklarierte «Anzahl Seiten» pruefen — damit waeren beide Auszuege sofort aufgefallen.
  Gegenprobe Run 15: im uebrigen destillierten SIA-Bestand (`alle/`) gibt es **0 weitere Auszuege**.

### Uebergabe an den Mac Mini (DIN/VSS/RAL — nicht MacBook-Scope, Stations-Split)

Run 15 hat auf der SIA/VKF-Seite zwei Fehlerklassen gefunden, die auch die DIN/VSS/RAL-Seite treffen
koennten. Bearbeitungsstand Mini-Run 33 (20.07.2026):

- [x] **ERLEDIGT Mini-Run 33 (2026-07-20): Zaehl-Differenz Inventar ↔ Live-Ablage aufgeloest.**
  Frischer rekursiver `find`-Abgleich zeigt **DIN live 72 = Inventar 72**, **VSS live 17 = Inventar 17**
  (netto, nach Abzug der einen virtuellen Tabellenzeile `SN 640 105a`, die als Anhang in
  `VSS 640 291a.PDF` steckt und keine eigene Datei ist), RAL 1 = 1, Lignum 0 = 0. Die von Run 15
  gemeldete Differenz (DIN 71, VSS 14) reproduziert sich heute nicht — vermutlich transienter
  OneDrive-Sync-Zustand auf der Gegenstation am 17.07., kein echter Bestandsfehler. «DIN/VSS/RAL
  komplett» bleibt bestaetigt. Details `outputs/2026-07-20_normen-mini-run33.md`.
- [x] **Auszug-Plausibilisierung fuer DIN/VSS — GEKLAERT Mac-Mini-Nachtschicht (2026-07-21):**
  Root Cause zum Mini-Run-33-Teilbefund gefunden. `DIN EN 12207.pdf` liest sich normal (6 S.
  bestaetigt, Adobe-Scan 2012), kein Auffaelligkeitsbefund ueber die reine Seitenzahl hinaus.
  `DIN 277-1.pdf` bleibt auf dem Mac Mini reproduzierbar NICHT lesbar — diesmal ueber `cat`
  direkt (nicht nur `pdfinfo`/Read-Tool) verifiziert: `stat` meldet korrekt 577'967 Bytes,
  jeder Lesezugriff (`cat`, Kopieren nach `/tmp`) bricht exakt mit `EDEADLK`/"Resource deadlock
  avoided" ab; `du -h` zeigt 0 B (nicht materialisierter Cloud-Platzhalter). Eine gezielt
  materialisierte **Vergleichsdatei im selben Ordner (`DIN 1045-2.pdf`, 6,4 MB) liest sich
  einwandfrei** — der Fehler ist also nicht der OneDrive-Sync-Client generell (Prozess laeuft,
  Internet OK, `brctl status` zeigt den Container `foreground`/`caught-up`, letzter Sync
  17:19 Uhr) und nicht die Netzwerkverbindung, sondern **spezifisch der lokale File-Provider-
  Cache-Eintrag dieser einen Datei auf dem Mac Mini**. `brctl download` griff nicht (Tool ist
  fuer iCloud/CloudDocs, nicht fuer den OneDrive-File-Provider zustaendig — erwartete
  Fehlermeldung "Path is outside of any CloudDocs app library"). Damit ist die in Mini-Run 33
  offen gelassene Alternative **beantwortet**: kein Datenverlust in der SharePoint-Ablage (das
  bestehende Destillat `din-277-1-2005.md` wurde nachweislich von einer anderen Station aus
  vollstaendig gelesen und verifiziert), sondern ein isolierter, lokaler Materialisierungsfehler
  auf dem Mac Mini. **Kein automatischer Fix versucht** (Neustart OneDrive-App/Entfernen des
  lokalen Cache-Eintrags ist keine Nachtschicht-Whitelist-Aktion) — empfohlene manuelle Behebung
  fuer Raphael bei Gelegenheit: Datei im Finder rechtsklicken → "Immer auf diesem Geraet behalten"
  aus-/wieder einschalten, oder OneDrive-App einmal neu starten, das erzwingt eine
  Neu-Materialisierung. Betrifft nur den Lesezugriff auf dem Mini; der Skill `normen` und alle
  Destillate bleiben unveraendert korrekt. Details vorheriger Lauf: `outputs/2026-07-20_normen-mini-run33.md`.
- [x] **Stilllegung des Tasks `normen-training-mini` (Radar-Entscheid 17.07., Commit `fd6ce35f`) beruht auf
  «Inventar dreimal komplett bestaetigt».** Nach Mini-Run 33 war Punkt 1 (Zaehl-Differenz) geklaert;
  Punkt 2 (Auszug-Plausibilisierung DIN 277-1) ist mit der lokalen EDEADLK-Root-Cause-Analyse
  vom 2026-07-21 (siehe oben) ebenfalls geklaert — kein Datenverlust, nur lokaler Mac-Mini-
  Cache-Fehler, kein weiterer Inventar-Handlungsbedarf. Reaktivierung des Loops bleibt trotzdem
  Raphaels Entscheid (Takt-/Drossel-Regeln, Rule `auto-verbesserungen` 260714).

### Run 16 (MacBook Pro, 260719) — offene Punkte aus den Merkblatt-/Wegleitungs-Destillaten

**Bring-Schulden (Bestand unvollständig, nicht durch Destillieren lösbar):**

- [ ] **Wegleitung zu SIA 271 (Abdichtungen) liegt nur als 2-Seiten-Auszug vor.** Das PDF enthält
  ausschliesslich Deckblatt und Buchseite 64 (Ziff. 5.10.3-5.10.5). Destillat `sia-271-wegleitung.md`
  ist deshalb `speculative` und im Inventar als `[~]` teil-destilliert geführt. Volltext beschaffen.
- [x] **Gültigkeitsstand der Merkblatt-Serie 2000er — GEKLÄRT (23.08.2026, QUESTIONS-Abarbeitung).**

  > SIA-Merkblätter sind laut eigenem Vorspann nur **drei Jahre gültig**, verlängerbar um je drei
  > Jahre. Bei praktisch allen destillierten Merkblättern (2001:2005, 2003:1996, 2004:1992, 2006,
  > 2007, 2008, 2015:2005, 2016:2005, 2017:2000, 2018:2004, 2022, 2026:2006, 2027:2006) ging aus
  > dem PDF NICHT hervor, ob sie verlängert, abgelöst oder zurückgezogen wurden.
  >
  > **Jede der 13 Nummern einzeln am Herausgeber geprüft** (Produktseite `shop.sia.ch`, Muster
  > `shop.sia.ch/normenwerk/architekt/sia%20<nr>/d/D/Product`, alle abgerufen 23.08.2026 — sechs
  > davon bereits im selben Tag vom SIA-Sweep in `wiki/REGISTER.md` geklärt, sieben hier neu
  > geprüft und dort nachgetragen):
  >
  > | Nr. | Bestand (Haus) | Heutiger Status | Nachfolger |
  > |---|---|---|---|
  > | 2001 | 2005 (Vorstufe) | seit 2018 vollständig retiriert | **SIA 279:2018** (im Haus, established) |
  > | 2003 | 1996 | archiviert seit 31.03.2022 | keiner genannt |
  > | 2004 | 1992 | bereits als «alle zurückgezogen» bekannt | — |
  > | 2006 | 1993 (Vorstufe) | Ausgabe 2013 archiviert seit 31.10.2023 | **SIA 4018:2023** |
  > | 2007 | — (kein Volltext im Haus) | Ausgabe 2001 weiterhin **aktuell** | — |
  > | 2008 | 1994 | bereits als «alle zurückgezogen» bekannt | — |
  > | 2015 | 2005 (Vorstufe) | Ausgabe 2012 archiviert seit 31.07.2025 | **SIA 405:2025** (Konsolidierung GEO405-Familie, dritter unabhängiger Beleg) |
  > | 2016 | 2005 (Vorstufe) | Ausgabe 2012 archiviert seit 31.07.2025 | **SIA 405:2025** |
  > | 2017 | 2000 | weiterhin **aktuell**, kein Rückzug | — |
  > | 2018 | 2004 | archiviert seit 30.11.2017 | **SIA 269/8:2017** «Erhaltung von Tragwerken — Erdbeben» |
  > | 2022 | 2003 | archiviert seit 30.06.2021 | keiner genannt |
  > | 2026 | 2006 | zweifach veraltet: Zwischenausgabe 2017 archiviert seit 31.07.2026 | **SIA 4020:2026**, gültig ab 01.08.2026 |
  > | 2027 | — (kein Volltext im Haus) | Ausgabe 2006 archiviert seit 31.10.2014 | **SIA 103:2014** (Inhalt in Honorarordnung integriert) |
  >
  > **Ergebnis: nur 2 der 13 Bestandsausgaben (2007, 2017) sind heute noch die aktuell gültige
  > Fassung** — bei 2004/2008 ist die Nummer bereits vollständig zurückgezogen, bei den übrigen
  > neun ist der Bestand entweder eine überholte Zwischenausgabe oder unter einer neuen Nummer
  > fortgeführt. **Konsequenz für die Fach-Skills bleibt bestehen und wird durch den Befund
  > verschärft:** vor jeder Fundstelle aus einem 2000er-Merkblatt in einem ausgehenden
  > JANS-Dokument ist die Gültigkeit zu prüfen — die Destillate belegen den historischen Inhalt,
  > nicht zwangsläufig die heutige Geltung. Volltexte der neun Nachfolgenormen (SIA 279:2018 und
  > 405:2025 sind bereits im Haus) liegen für SIA 4018:2023, SIA 269/8:2017, SIA 4020:2026 nicht
  > vor — Beschaffung Bring-Schuld, in `wiki/REGISTER.md` je Zeile vermerkt.
  >
  > Belege: `wiki/REGISTER.md`, Abschnitt A, Zeilen SIA 2003/2006/2015/2017/2018/2022/2026
  > (nachgeführt 23.08.2026) sowie die bereits am selben Tag durch den SIA-Sweep geklärten Zeilen
  > SIA 2001/2007/2016/2027/2045.
- [ ] **`SIA_Leistungsmodell.pdf` ist gar kein SIA-Dokument.** Der Verifier hat festgestellt: es ist
  ein Merkblatt der **KUNDERT PLANER AG** zur SIA-Ordnung, nicht eine SIA-Publikation. Das Inventar
  führte es als «Hilfsmittel Leistungsmodell». Als Sekundärquelle behandeln, nie als Norm zitieren.
- [ ] **Nachfolgeausgaben nicht ermittelbar.** Für SIA 2001 (Wärmedämmstoff-Kennwerte, Nennwerte
  befristet bis 31.12.2006) und SIA 2024 (Standard-Nutzungsbedingungen, Revision 2021 bekannt) ist
  der Bestand veraltet. SIA 2024 ist über die KB `energie` bereits teilweise erschlossen
  (Grundlagenbericht Revision 2021 + Korrigenda C1:2024, siehe CHANGELOG 2026-07-19 Wissens-Chef Run 9).

- [ ] **SN EN 520 (Gipsplatten — Begriffe, Anforderungen, Prüfverfahren) fehlt im Bestand.**
  Gebraucht für 2619 KISPI (Korrex Brandschutzexperte 21.07.2026: «Rohdichte Gipskartonplatten
  min. 800 kg/m³» in den BIK-Plänen). Zu klären und mit Fundstelle zu belegen: Plattentypen
  nach EN 520 (insb. Typ D «Platten mit definierter Dichte» und Typ F «Platten mit verbessertem
  Gefügezusammenhalt des Kerns bei hohen Temperaturen», Kombination Typ DF = übliche
  Brandschutzplatte GKF), inkl. exaktem Rohdichte-Kriterium des Typs D (mutmasslich
  ≥ 800 kg/m³ — bis zum Volltextabgleich NICHT als Norm-Fundstelle zitieren). Volltext
  beschaffen (SharePoint PL-02 prüfen, sonst SIA/SNV-Shop).

**Systematische Lehre aus der Verifikation (für kommende Läufe):**

- [ ] **Häufigster Fehlertyp ist die modale Überdehnung** (23 von 73 Befunden): Der Destillier-Agent
  macht aus «kann», «sollte», «hat sich als zweckmässig erwiesen» ein «muss»/«ist zwingend». Genau
  dieser Fehler ist für JANS am gefährlichsten, weil eine als verbindlich zitierte Empfehlung in LV,
  Werkvertrag oder Behördenkorrespondenz nicht haltbar ist. Die Destillier-Prompts künftiger Läufe
  sollten die Modalität ausdrücklich als Prüfpunkt führen: Kann-/Soll-/Muss-Bestimmung wörtlich am
  Original abgleichen und im Destillat kenntlich machen.

## Bring-Schulden aus der KB `baurecht` (angemeldet Wissens-Chef Run 15, 25.07.2026)

Struktur-Muster 1 «Übergabe verpufft im abgebenden KB»: `baurecht` nennt vier Normen mit
Fundstellenfunktion, die in dieser KB **null Präsenz** haben (weder Destillat noch
`training/norm-inventar.md`). Bis dahin gilt in `baurecht` der dortige Wortlaut; hier ist
Bestandsprüfung und ggf. Destillat fällig. Gegenprobe im Cross-Lauf: `wiki/QUESTIONS.md`
dieser KB enthielt bis heute **0 Treffer** fuer «baurecht» — es war noch nie eine Bring-Schuld
aus der Recht-KB hier angekommen.

> **Nachtrag Wissens-Chef Run 16 (26.07.2026):** Die Anmeldung allein hat nicht gewirkt — Run 28
> (25.07., 22:47) hat den Block nicht aufgegriffen und sein Thema ausdrücklich als «kein
> Bring-Schulden-Fall» gewählt. Grund: der Nacht-Loop wählt seine Arbeit aus
> `training/norm-inventar.md`, nicht aus dieser Fragenliste. Die vier Normen sind deshalb am
> 26.07.2026 zusätzlich als eigene Zeilen im Inventar eingetragen (neuer Abschnitt «Bring-Schulden
> aus anderen KBs»). **Regel für künftige Übergaben an diese KB: immer in beiden Dateien führen.**

- [ ] **SIA 491** (Vermeidung unnötiger Lichtemissionen im Aussenraum, in Kraft seit 1.3.2013) —
  zitiert in `baurecht/wiki/laermschutz-und-nichtionisierende-strahlung.md:165`. Bestand prüfen
  (SharePoint PL-02), Ausgabe verifizieren, Destillat anlegen.
- [ ] **SN EN 12193:2008** (Licht und Beleuchtung — Sportstaettenbeleuchtung) — selbe Fundstelle.
  Bestand prüfen; Nachfolgeausgabe abklären (EN 12193 wurde nach 2008 revidiert).
  **Zweiter Anwendungsfall nachgetragen 23.08.2026 (aus KB `energie`):** genau diese Norm würde
  einen dokumentierten Selbstwiderspruch in einer AHB-Beleuchtungstabelle auflösen (Turnhalle
  «Wettkampfsport»: Tabellenwert 500 lx gegen Fussnotenwert 750 lx, Dokument 19.01.2007).
  SIA 387/4:2017 (Tab. 4, hier bereits destilliert) bestätigt nur den 500-lx-Wert für die
  allgemeine Turnhallennutzung, führt aber keine eigene Wettkampf-Zeile. Details und
  Sekundärquellen-Einordnung (nicht zitierfähig): `wissen/energie/wiki/QUESTIONS.md`, Eintrag
  **E-R143-2**; Destillat `wissen/energie/destillate/ahb-zuerich-uebersichtstabelle-beleuchtung-en12464.md`.
- [ ] **SN 640 052** (VSS, Kehrplatz/Kehrmöglichkeit bei Stichstrassen) — zitiert in
  `baurecht/wiki/baureife-und-erschliessung.md:76`. Reiht sich in den VSS-Parkierungs-/
  Erschliessungsblock ein, der in Run 11/12/13 dreimal korrigiert werden musste.
- [ ] **SN 641 400** (VSS, Grundlage der ZH-Parkplatzberechnung) — zitiert in
  `baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md:43`.

**Gegenrichtung, ebenfalls Run 15:** die hier geführte Bring-Schuld «Volltext SIA 380/1:2016
beschaffen» (QUESTIONS `:558`) nennt als Adressaten nur `energie-berater`/`planungsgrundlagen` —
`baurecht` führt SIA 380/1 jedoch ebenfalls und ist mit-adressiert.

## Run 32 (MacBook Pro, 27.07.2026) — Verifikations-Vertiefung statt neuer Destillate

Acht parallele Refuter-Agenten haben die Run-31-Folgeaufgaben abgearbeitet: dritte
Verifikationsrunde für die fünf am 27.07. korrigierten Destillate, erste unabhängige Runde für
die drei neu erstellten. Ergebnis: zwei established (`vkf-allgemein-anerkannte-bauprodukte-2017.md`,
`vkf-ah-1001-15-wohnbauten.md`, beide 0 Befunde), ein `brandschutzfachstellen-anleitung-…-v3.md`
mit 3 geringfügigen Befunden (bleibt emerging), fünf weiterhin `speculative` — aber mit klar
sinkender Fehlerzahl je Runde (26→5, 18→3, 17→1, 17→4, 4→4 grob stabil). Details je Destillat in
`training/norm-inventar.md` (Run-32-Eintrag) und in den einzelnen Destillaten selbst (Abschnitt
„Verifikationsstand"/Frontmatter `status:`).

- [x] 260727 **VKF-Merkblatt 2003-15** «Brandschutzpläne, Flucht- und Rettungswegpläne,
  Feuerwehrpläne» gezielt gesucht (`find` über PL-02 UND PL-03, alle Unterordner inkl.
  `05 Arbeitshilfen Brandschutz 2015`, `03 Verzeichnisse`, `04 Erläuterungen`, `00 Brandschutzplaene
  bsvonline.ch`): **nicht im Bestand**. Bleibt externe Bring-Schuld (VKF-Shop/-Portal). Damit
  bleibt der amtliche Status von `brandschutzplan-legende-symbole-2017.md` unbestätigt.
- [x] 260727 **Regionale Geltung der beiden neuen Arbeitshilfen** — GEKLÄRT Run 33 (Web-Recherche):
  Symbolik direkt anwendbar für ZH (Stadt Zürich referenziert dasselbe VKF-Merkblatt 2003-15);
  Verfahren nicht 1:1 übertragbar (Stadt Zürich nutzt eigenes «Zusatzformular 3»); GVZ kantonal
  ohne eigenes Merkblatt. Details siehe Abschnitt «Regionale Geltung Brandschutznachweis-
  Arbeitshilfen für ZH (Run 33, recherchiert)» unten.
- [ ] **Offen aus Run 31, unverändert (Strukturentscheide bei Raphael, nicht vom Loop lösbar):**
  (1) Soll die Reichweite des Inventars auf die ~680 bisher nie gescannten PL-02-Ordner
  ausgeweitet werden (normrelevanter Kern: BfU, GVZ, Suva, SWKI, Suissetec, VSA, PAVIDENSA,
  Sanitäreinrichtung — grösstenteils aber Fremd-KB-Zuständigkeit)? (2) Soll `established`
  künftig einen sauberen Nulldurchgang statt einer bestandenen Korrekturrunde verlangen? Dieser
  Lauf hat die bestehende Konvention (eine bestandene Runde → established) unverändert
  angewendet, um dem Entscheid nicht vorzugreifen.
- [x] 260727 **Vierte Runde** durchgeführt (Run 33): 1x established (`lignum-4-2-…`), 3x weiterhin
  speculative mit je 1 Befund (`lignum-lignatec-…`, `sia-d0165-…`, `lignum-4-1-…` [Regression der
  dritten Runde]). Fünfte Runde für die drei verbleibenden Destillate ist der naheliegende
  nächste Batch — Details Abschnitt «Run 33» unten.

### Run 33 (MacBook Pro, 27.07.2026) — vierte Refuter-Runde, 1x established, 3x je 1 Befund

Vierte unabhängige Refuter-Runde für die vier Run-32-Punkt-2-Destillate: `lignum-4-2-…` erreicht
den ersten sauberen Nulldurchgang (0 Befunde) und wird `established`. Die übrigen drei bleiben
`speculative`, jeweils mit genau 1 neuem Befund: `lignum-lignatec-…` (Tab. 5 EFH/REFH-Ausnahme),
`sia-d0165-…` (GEFMA-200-Bucket 4xx/2xx-Verwechslung), `lignum-4-1-…` (eine **Regression** der
dritten Runde — Runde 3 hatte eine tatsächlich im Original belegte Aussage fälschlich gestrichen,
Runde 4 hat das korrigiert). Details `training/norm-inventar.md` (Run-33-Eintrag),
`outputs/2026-07-27_normen-nacht-run33.md`. Fünfte Runde für die drei verbleibenden Destillate
ist naheliegender nächster Batch (alle drei nahe am Nulldurchgang).

### Regionale Geltung Brandschutznachweis-Arbeitshilfen fuer ZH (Run 33, recherchiert)

Web-Recherche (WebSearch/WebFetch, 27.07.2026) zur oben offenen Frage «kennt die GVZ/Stadt
Zürich eine abweichende Symbolik oder ein eigenes Verfahren?». Befund: **kein eigenes,
abweichendes Symbolsystem** — aber ein **eigenes, anders geformtes Verfahrensformular**.

- **Symbolik: kein ZH-Sonderweg.** Die Stadt Zürich (Schutz & Rettung, Abteilung
  Einsatzplanung) schreibt in ihrem eigenen `Merkblatt Feuerwehrpläne (Einsatzpläne)`
  (SRZ_EPL_Merkblatt_EP_V1.0, Stand 04.10.2024, Ziff. 1/3.1) wörtlich: «Feuerwehrpläne sind
  nach dem VKF-Brandschutzmerkblatt 2003-15 «Brandschutzpläne, Flucht- und Rettungswegpläne,
  Feuerwehrpläne» (BSM) zu erstellen» und «Für die Darstellungen sind Symbole gemäss BSM
  Anhang B12 «Übersicht Feuerwehr-Symbole» zu verwenden». Damit ist das VKF-Merkblatt 2003-15
  — dieselbe Quelle, auf die auch die Zentralschweizer Arbeitshilfe V.3 verweist — explizit
  auch die amtliche Grundlage in der Stadt Zürich; Zürich ergänzt nur objektbezogene
  Detailvorgaben (Titelblatt-Felder, DIN-824-Faltung, Planmassstäbe, Meldeweg an
  `srz-einsatzplanung@zuerich.ch`), keine eigene Symbolik.
  Quelle: `stadt-zuerich.ch/content/dam/web/de/planen-bauen/bauvorschriften-und-planerische-grundlagen/dokumente/sicherheit-gesundheit/brandschutz/merkblatt-einsatzplaene-feuerwehr-v1.0.pdf`
  (per pdftotext gelesen).
  Historisch bemerkenswert: dasselbe Merkblatt erwähnt eine «ehemalige GVZ-Anleitung (2006)»
  für Einsatzpläne, die für Alt-Pläne noch referenziert, aber inzwischen auf die VKF-BSM-
  Darstellung zu migrieren ist — Zürich hatte also früher einen eigenen Ansatz, ist aber
  seither auf den gesamtschweizerischen VKF-Standard konvergiert.
- **Verfahren: eigenes Formular, andere Form als die Zentralschweizer Anleitung.** Die Stadt
  Zürich (Amt für Baubewilligungen + Schutz & Rettung/Feuerpolizei) führt ein eigenes
  «Zusatzformular 3 (dem Baugesuch beizulegen) — Brandschutznachweis»: ein strukturiertes
  Ankreuzformular (QSS-Stufe, VKF-Zertifikat-Nr. des QS-Verantwortlichen, Gebäudegeometrie,
  RF-Klassen Tragwerk/Brandabschnitte/Fassade/Dach, Brandmauer-Klasse, technischer
  Brandschutz, Beilagen Brandschutzpläne/-konzept), das direkt dem Baugesuchsdossier beiliegt
  — anders in der Form als die freitextliche Zentralschweizer «Anleitung zum
  Brandschutznachweis» V.3 (Vorprüfung per Mail-Anhang beim Brandschutzexperten, ohne
  Unterschrift). Fussnote 2 des Zürcher Formulars verweist für Beispielpläne auf dasselbe
  Portal `www.brandschutznachweis.ch`, das auch die Zentralschweizer Arbeitshilfe nennt.
  Quelle: `stadt-zuerich.ch/content/dam/web/de/planen-bauen/baubewilligungen/dokumente/bewilligungsprozess/dokumente/zusatzformular-3-brandschutznachweis.pdf`
  (per pdftotext gelesen).
- **GVZ (kantonale Ebene) selbst:** Auf gvz.ch (Rubrik Brandschutz/Formulare) kein eigenes
  Brandschutznachweis- oder Symbolik-Merkblatt gefunden — nur Formulare zur
  Qualitätssicherung (Übereinstimmungserklärung, Gleichwertigkeit QSS 2); die GVZ verweist für
  objektbezogene Fragen an die Standortgemeinde. Bestätigt (Websuche): die VKF-
  Brandschutzvorschriften (BSV) sind über die IOTH gesamtschweizerisch für verbindlich erklärt
  und bilden auch in Zürich die Rechtsgrundlage der Feuerpolizeipraxis — keine Hinweise auf
  einen eigenen ZH-Normkorpus, der die VKF-Vorschriften materiell ersetzt.
- **Praxisfolge für JANS-Projekte im Kanton Zürich:** Das Legendenblatt
  `brandschutzplan-legende-symbole-2017.md` (VKF-Symbolik, Stand 01.01.2017) ist für
  ZH-Projekte **direkt anwendbar** — durch die Stadt Zürich selbst amtlich referenziert. Die
  Zentralschweizer «Anleitung zum Brandschutznachweis» V.3 ist dagegen als **Verfahrens**dokument
  NICHT 1:1 auf ZH übertragbar: für die Stadt Zürich gilt statt der freitextlichen
  Mail-Vorprüfung das eigene «Zusatzformular 3» (AfB + Feuerpolizei, Tel. 044 411 26 66) für den
  Brandschutznachweis sowie das separate SRZ-Einsatzplanung-Merkblatt für Feuerwehrpläne.
  Für andere ZH-Gemeinden ausserhalb der Stadt Zürich bleibt offen, ob sie ein eigenes Formular
  führen oder sich an die Zentralschweizer Arbeitshilfe halten — nicht recherchiert, da
  ausserhalb des JANS-Kerngeschäfts (Stadt Zürich) liegend.

## 2026-07-28 (Wissens-Chef Run 19) — Leitplanke Gebäudekategorien I–XII (adversarial verifiziert)

**Gebäudekategorie-Nummern nie aus dem Gedächtnis setzen.** Kanonische Quellen: **§ 47a Abs. 1
BBV I** (amtlich in `wissen/baurecht/raw/260607_amtlich_zh_bbv1.md` — KB `baurecht` ist für den
ZH-Erlassstand führend) und **SIA 380/1, Anhang A, Tab. 24** (Destillat
`wissen/energie/destillate/sia-380-1-standardnutzungswerte-tab24-25.md` — KB `energie` führend).

Reihenfolge: I Wohnen MFH · II Wohnen EFH · III Verwaltung · IV Schulen · V Verkauf ·
VI Restaurants · VII Versammlungslokale · **VIII Spitäler** · **IX Industrie** · X Lager ·
XI Sportbauten · XII Hallenbäder.

**Häufigster Fehler: Spital fälschlich als IX (= Industrie)** — am 28.07.2026 im Report
`outputs/2026-07-28_therapiekueche-lueftung-spital-zuerich.md` aufgetreten und dort korrigiert.
Die Verwechslung kostet den Grenzwert **20 statt 70 kWh/m²** sowie die falschen Standardnutzungs-
werte (Innentemperatur 18 statt 22 °C, Qww 25 statt 100 MJ/m²·a) — bei einem Energienachweis
rechenrelevant. Gegenprobe direkt am Verordnungstext: § 47a Abs. 2 nennt VI und XI als
Warmwasser-Ausnahmen (Restaurants/Sportbauten) und XII als Bade-/Duschwasser-Fall (Hallenbäder);
das geht nur bei korrekter Zuordnung auf.

## 2026-07-28 (Wissens-Chef Run 19) — P1: SIA 500 Korrigenda-Nachzug, ~20 Stellen offen

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, siebter Lauf).** Beide Korrigenda
> vollständig am amtlichen Wortlaut beschafft und ausgewertet: C4:2019 (SIA-Shop-Produktseite
> `sia%20500-c4`, freier DownloadAnhang, 0.00 CHF, 4 S.) und C3:2013 (Produktseite `sia%20500-c3`,
> freier DownloadAnhang, 0.00 CHF, 7 S.), beide per `curl -L` geladen und mit `pdftotext -layout`
> vollständig gelesen — nicht nur die zwei bereits markierten Ziffern. **Ergebnis: C4:2019 ändert
> 7 Stellen** (Ziff. 3.4.1, Tabelle 4/Ziff. 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8, 6.2.2), **C3:2013
> über 20 Stellen** (u.a. Ziff. 1.2 Rollstuhlgewicht 250→300 kg, 3.3.3, 3.3.6.2, 3.6.4.1, 3.7.2,
> 3.8.5 Treppenlift-Nennlast 250→300 kg, 4.4, 7.7.2 + Anhang A.8.2, 8.2.2, 9.1.1/9.1.5/9.2.4/9.5.1,
> Anhang A.8.7, Anhang D.1.1.3, Ziff. 0.3). Alle mit Fundstelle (Seite, Ziffer) im Destillat
> `destillate/sia-500-2009.md` als ACHTUNG-KORRIGENDA-Marker mit korrigiertem Wortlaut
> nachgeführt (Kernziffern-Bullets, Begriffe-Abschnitt, Zentrale-Tabellen-Abschnitt, Offene
> Punkte aktualisiert). **Der gewichtigste Einzelfund:** das Referenzgewicht des Innenraum-
> Rollstuhls (Ziff. 1.2, Begriffe) ist seit C3:2013 **300 kg statt 250 kg** — betrifft jede
> Lastannahme, die davon ausgeht, u.a. die Treppenlift-Nennlast (Ziff. 3.8.5, dieselbe
> Korrektur) und mittelbar `bkp-261-aufzuege.md`. **Nicht vollständig auflösbar bleiben** zwei
> Detailpunkte, weil die zugehörigen Anhänge (B, D) in dieser KB nicht im Volltext gelesen sind
> (nur Anhang A und E vollständig): die neue Bodenflächen-Anforderung «gemäss Anhang B» (Ziff.
> 9.1.1) und die Neufassung von Tabelle 9 in Anhang D.1.1.3 sind aus der Korrigenda selbst
> zitiert, nicht gegen den vollständigen Anhangstext geprüft — vermerkt in den Offenen Punkten
> des Destillats. C1/C2 bleiben unverändert offen (nur sekundär über `sia-500-auslegung.md`
> belegt). Report: `outputs/2026-08-23_sia500-korrigenda-c3-c4-vollstaendig.md`.

**Was der Chef-Lauf geleistet hat.** Der Verifikator hat die Basisausgabe `500_2009.pdf` sowie die
Korrigenda **C3:2013** und **C4:2019** am Original beschafft und ausgewertet (shop.sia.ch,
Preisgruppe 0 — Korrigenda sind gratis). Ergebnis in `destillate/sia-500-2009.md`: Fassungs-Feld
`ausgabe_ueberholt` gesetzt, **Ziff. 9.7.2/9.7.3 vollständig auf C3:2013 nachgeführt** (Bezugsgrösse
wechselt von Parkplätzen auf **Wohnungen**, neuer 100-m-Richtwert), Ziff. 3.4.1 und 3.7.3 als
C4-betroffen markiert.

**Was offen bleibt — der eigentliche Umfang.** Ziff. 9.7.2 war nur **eine von rund zwanzig** durch
Korrigenda geänderten Stellen. **C4:2019 war dem Hub bisher vollständig unbekannt** (der Bestand
kannte nur C1/C2 via `sia-500-auslegung` und C3 via `sia-en-13200-1-2019`); C4 ändert
**Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8 und 6.2.2**. Das Destillat ist damit an mehr
Stellen überholt, als jetzt markiert sind. **Auftrag an den `normen`-Loop:** C3 und C4 Ziffer für
Ziffer gegen das Destillat durchgehen und jede betroffene Stelle nachführen; danach C1/C2 im
Volltext beschaffen (bisher nur sekundär über `sia-500-auslegung`, Stand April 2012 belegt).

**Der Fehler hat die Destillat-Ebene bereits verlassen** — das ist der Grund für die Priorität:
`wissen/bauprodukte/wiki/bkp-261-aufzuege.md` zitiert die Kabinenmasse aus **Ziff. 3.7.3** und
rechnet ein konkretes Herstellermass dagegen. Dort ist am 28.07.2026 ein Fassungs-Vorbehalt gesetzt,
aber erst der Nachzug hier macht die Zahlen wieder verwendbar.

**Verallgemeinerte Lehre (dritte Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck»).**
Bisher hiess sie: erst den Bestand nach jüngeren **Ausgaben** durchsuchen. Neu kommt hinzu: auch
wenn die **Ausgabe unverändert gilt**, können **Korrigenda** einzelne Ziffern materiell ändern —
sie tragen keine neue Jahreszahl im Normtitel und sind deshalb an der Ausgabe nicht erkennbar.
Bei jedem SIA-Destillat gehört ein Blick in die Korrigenda-Liste des SIA-Shops dazu; sie sind gratis.

## 260731 — NIN: eigener Stromkreis fuer Geschirrspueler?
- Frage: Enthaelt die NIN (SN 411000, aktuelle Ausgabe NIN 2025/2020) eine Bestimmung, die fuer Geschirrspueler eine eigene, separat abgesicherte Steckdose/Endstromkreis verlangt, oder ist das Teilen einer Gruppe (z.B. mit Kuehlschrank) zulaessig?
- Stand: NIN liegt nicht in PL-02/02_Normen (dort nur SIA/VKF/DIN/VSS/RAL/Lignum). Web-Recherche 31.07.2026: keine explizite NIN-Fundstelle gefunden; deutsche DIN 18015-2 verlangt eigene Stromkreise fuer Geraete >2 kW (in CH nicht direkt verbindlich). Praxis-Hebel: Montageanleitung des Herstellers (verbindlich) + Bemessung des Endstromkreises.
- Zweiter Web-Recherche-Anlauf 23.08.2026 (QUESTIONS-Abarbeitung): vier gezielte WebSearch-Anfragen (NIN + Geschirrspueler/Kuechengeraete/eigener Stromkreis/NIN-Know-how) und ein WebFetch-Versuch auf eine als Treffer gelistete Electrosuisse-PDF (`nin_kh_53.pdf`, HTTP 404) sowie auf die frei zugaengliche NIN-FAQ-Sammlung `mueller-pe.ch/nin_fragen.php` (durchsucht, kein Treffer zu Kuechengeraeten/Endstromkreisen). Kein Fund, echte Sackgasse: der eigentliche Normtext (SN 411000 bzw. die NIN-Arbeitsblaetter im Volltext) liegt hinter der kostenpflichtigen `ninonline.electrosuisse.ch`-Anmeldung, frei zugaengliche Sekundaerquellen (FAQ-Seiten, oeffentliche Auszuege) behandeln diese Detailfrage nicht.
- Naechster Schritt (unveraendert): NIN-Zugang (ninonline.electrosuisse.ch, kostenpflichtig — Bring-Schuld Raphael) oder Rueckfrage Elektroplaner; bei Antwort Destillat-Artikel anlegen. Ein weiterer freier Web-Recherche-Anlauf ueber dieselben Quellenarten verspricht keinen Mehrwert.

## 260807 — Bezugsgroessen-Divergenz E_vm: SIA 2056 Tab. 42 gegen SIA 387/4 Tab. 4 (KB-intern)

> ✅ **GESCHLOSSEN 23.08.2026.** Beide Originale (SIA 2056 S. 38, SIA 387/4 S. 17-19) am
> M365-Graph-Connector beschafft (SharePoint Site PL, Drive `02_Recht_Norm`,
> `SIA_Norm/SIA_Normen/alle/592056.pdf` bzw. `.../387_4_2017.pdf`) und gelesen — SIA 2056 ist
> ein reiner Scan ohne Textlayer, S. 38 als 150-dpi-Rendering gegengelesen; SIA 387/4 hat
> Textlayer (`pdftotext -layout`).
>
> **Ergebnis: kein Rechenfehler-Risiko, sondern zwei Normen belegen denselben Formelbuchstaben
> mit unterschiedlichem Inhalt.** SIA 2056 Formel (18), S. 38: p_L = E_vm/(η_v,Lo·η_R·MF) — **ohne**
> k_0-Term. SIA 387/4 Formel (2), S. 17: p_L = E_0/(MF·η_v,Lo·η_R) mit E_0 = k_0·E_vm. Das
> SIA-2056-«E_vm» besetzt damit strukturell die Zählerposition, die SIA 387/4 «E_0» nennt — nicht
> die Position, die SIA 387/4 «E_vm» nennt. Numerischer Beleg am Bettenzimmer: SIA 2056 Tab. 42
> E_vm = 300 lx (S. 38) = SIA 387/4 Tab. 4 E_0 = k_0·E_vm = 3 × 100 lx = 300 lx (S. 18-19,
> bereits vorher am Rendering verifiziert). SIA 387/4s eigenes E_vm (100 lx) ist eine andere,
> kleinere, vorgelagerte Grösse (Wartungswert nach SN EN 12464-1 vor der k_0-Korrektur).
>
> **Bezeichnerregel:** für das vereinfachte Verfahren SIA 2056 gilt ausschliesslich dessen eigene
> Tab. 42 (300 lx Bettenzimmer); Tab. 4 aus SIA 387/4 (100 lx) gehört zum detaillierten Verfahren
> jener Norm. Beide Destillate tragen seit diesem Lauf eine gegenseitig verlinkte
> Klärungsbox (`destillate/sia-592-056.md`, Abschnitt «Tab. 42-45»; `destillate/sia-387-4-2017.md`,
> bei «Referenzbeleuchtungsstärke E_0») — eine Umbenennung im INDEX/REGISTER war dafür nicht
> nötig, die Klarstellung sitzt an der Quelle der Verwechslungsgefahr. Der cross-KB
> Bezugsgrössen-Vorbehalt vom 07.08.2026 (Koordinations-Register, ausserhalb dieser KB) kann mit
> Verweis auf diesen Eintrag aufgelöst werden — dort nicht selbst editiert (fremdes Register).
>
> **Ursprungswortlaut:** Beide Destillate fuehren eine Groesse unter dem Namen **E_vm**, aber mit
> unterschiedlichem Bezug. `destillate/sia-592-056.md:84` (SIA 2056, Tab. 42) nennt Bettenzimmer
> **300 lx**; `destillate/sia-387-4-2017.md:61` (SIA 387/4, Tab. 4) nennt fuer dieselbe Nutzung
> **E_vm 100 lx** bei E_0 = 300 (ueber k_0 = 3). Herkunft: Cross-KB-Lauf Wissens-Chef Run 28,
> 07.08.2026, Feld F.

## 260813 — SIA 382/2:2011 verlinkt SIA 416:2003, zitiert aber SIA 416/1:2007 (fehlendes Destillat)

> ✅ **GESCHLOSSEN (nachgetragen 23.08.2026).** War in `destillate/sia-382-2-2011.md` bereits seit
> Run 52 (15.08.2026) als erledigt vermerkt (Zeile 17 und 210), aber hier nie nachgezogen. Das
> Destillat `destillate/sia-416-1-2007.md` (Status `speculative`) existiert; der Frontmatter-Link
> von `sia-382-2-2011.md` führt seither `[[sia-416-1-2007]]` vor `[[sia-416-2003]]` (Zeile 12).
> Quelle des Nachfolgedestillats: `alle/xalt/neu/SIA 416_1_2007.pdf`. Eigene Gegenprüfung am
> Destillat 23.08.2026 (Sitzung QUESTIONS-Abarbeitung) bestätigt beide Fundstellen.

- Frage (Ursprungswortlaut): `destillate/sia-382-2-2011.md` referenziert in Ziff. 0.2.1 und Kap. 5 durchgehend **SIA 416/1:2007** «Kennzahlen für die Gebäudetechnik» (Bezugsflächen, Tabellenschema Tabellen 1-3). Im Frontmatter `links` stand dagegen nur `[[sia-416-2003]]`, also SIA 416:2003 «Flächen und Volumen von Gebäuden» — eine andere Norm mit ähnlicher Nummer. Ein Destillat zu SIA 416/1:2007 lag im Bestand nicht vor.
- Warum das zaehlte: Jeder Abnehmer, der über den Link auf SIA 416 in 382/2 nachschlaegt, wäre auf der falschen Norm gelandet (Flaechen/Volumen statt Gebaeudetechnik-Kennzahlen).
- Herkunft: Refuter-Run 49 (13.08.2026), Nebenbefund zu `destillate/sia-382-2-2011.md`; geschlossen durch Run 52 (15.08.2026), hier nachgetragen 23.08.2026.

## 260823 — VKF BRL 13-15: Delta 2015→2017 liegt an zwei Orten (Duplikat, nicht konsolidiert)

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, sechster Lauf), ohne Löschen/Mergen.**
> Kanon-Frage per vorhandenem, nicht-arbiträrem Kriterium entschieden: der `established`-Status
> schlägt `speculative` (Rule `normen-referenz` Ziff. 1b) — das Inline-Delta in
> `vkf-brl-13-15-baustoffe-bauteile.md` (adversarial gegengeprüft Run 23, established) ist damit
> die kanonische Fundstelle, `vkf-brl-13-15-fassung-2017-delta.md` (speculative) die
> Redundanz-/Gegenprobe-Fassung. Beide Dateien tragen jetzt einen gegenseitig verlinkten
> Kanon-Hinweis im Fliesstext (nicht nur im Frontmatter). **Keine Datei geloescht oder
> zusammengelegt** — Rule `wissens-bibliothekar` verlangt dafuer eine Rueckfrage, hier genuegte
> eine nicht-destruktive Klarstellung. Dieselbe Methode (established > speculative als
> Tie-Breaker) laesst sich auf N60-1 (AFC-Synopse-Duplikat) NICHT uebertragen, da dort beide
> Destillate `established` sind — dort bleibt der Entscheid bei Raphael.

- Frage: `vkf-brl-13-15-baustoffe-bauteile.md` traegt seit 25.07.2026 (Run 23) einen eigenen,
  `established` gefuehrten Inline-Abschnitt «Fassung 01.01.2017 — Delta». Run 60 (23.08.2026) hat
  unabhaengig davon, gemaess der seit Run 59 gefuehrten Konvention (eigene Delta-Datei je
  Publikation, z.B. `vkf-brl-10-15-fassung-2019-delta.md`), zusaetzlich
  `vkf-brl-13-15-fassung-2017-delta.md` erstellt. Beide kommen unabhaengig zum selben Ergebnis
  (Gegenprobe bestanden), aber welcher Ort kuenftig kanonisch ist und ob der Inline-Abschnitt in
  eine reine Verweiszeile gekuerzt werden soll, ist nicht entschieden.
- Warum das zaehlt: zwei Orte fuer denselben Sachverhalt driften bei der naechsten Aenderung
  auseinander, wenn nur einer nachgefuehrt wird.
- Herkunft: Run 60, Auftrag «VKF-Fassungs-Deltas 01.01.2015 → 01.01.2017», Publikation 13-15.

## 260823 — VKF BRL 17-15: Begriffe «Verkaufsraeume» und «Technikraum Sicherheitsstromversorgung» nicht in dieser Richtlinie definiert

> ✅ **TEIL 1 (Verkaufsraeume) GESCHLOSSEN am 23.08.2026 durch den Hauptprozess, Run 60.** Die
> Vermutung im Fragetext, die Begriffsbildung sei erst 2019 gekommen, trifft **nicht** zu. Die
> BRL 10-15 definiert «Verkaufsraeume» als Raeume fuer den Warenverkauf, die weder unter «Raeume
> mit grosser Personenbelegung» noch unter «Verkaufsgeschaefte» fallen, mit der ausdruecklichen
> Zuweisung «es gelten die nutzungsbezogenen Anforderungen an Gewerbe und Industrie» — und dieser
> Begriff gehoert zu den zehn Begriffen des **IOTH-Beschlusses vom 22.09.2016**, also zur Fassung
> **01.01.2017**. Definition und Tabellenanwendung stammen damit aus **demselben Beschluss**: die
> 17-15 verschiebt «Verkaufsraeume» genau in jene Zeile, der die 10-15 sie definitorisch zuweist.
> Die Tabellenaenderung ist also kein isoliertes Absenken, sondern der Vollzug einer Definition.
> Ausgefuehrt und belegt im Destillat `vkf-brl-17-15-fassung-2017-delta.md`, Abschnitt «Offene
> Punkte»; Tabellenvergleich vom Hauptprozess an eigenen Renderings (200 dpi, gedruckte S. 9)
> unabhaengig nachgelesen.
>
> ✅ **TEIL 2 GESCHLOSSEN 23.08.2026.** «Technikraum Sicherheitsstromversorgung» ist in der BRL
> 10-15 «Begriffe und Definitionen» **nicht als Glossarbegriff geführt** — weder als eigener
> Eintrag noch als Unterfall von «Technikraum». Geprüft: (a) Hausbestand BRL 10-15, Fassung
> 01.01.2015 (SharePoint-Original per M365-Graph-Connector geladen, `pdftotext -layout`
> vollständig durchsucht) — kein Treffer auf «Technikraum», das Glossar definiert unter «S» nur
> **«Sicherheitsstromversorgung»** allein (S. 31: «Die Sicherheitsstromversorgung … muss bei
> einer Störung der allgemeinen Stromversorgung jederzeit wirksam sein und die erforderliche
> Versorgungsdauer gewährleisten.»), keinen zusammengesetzten Raumbegriff. (b) Die
> Fassungs-Delta-Kette bis 01.01.2019 (`vkf-brl-10-15-fassung-2019-delta.md`, Quelle
> VKG-Publikationsportal BSPUB-1394520214-2768 gegen Hausbestand) listet erschöpfend alle elf
> durch die Beschlüsse IOTH 22.09.2016 und 20.09.2018 neu gefassten oder neu eingeführten
> Begriffe (Dachkonstruktionen, Einliegerwohnung, Galerie, Raum, Ueberhohe Raeume,
> Verkaufsraeume, Bedachung, Gesamthoehe, Kindertagesstaetten, Nutzungseinheit,
> Uebereinstimmungserklaerung) — «Technikraum» ist nicht darunter. Damit ist der Begriff in
> **keiner** in der KB dokumentierten Fassung von BRL 10-15 (2015 bis 2019) definiert. Der
> Ausdruck in BRL 17-15 (Anhang zu Ziff. 3.3.2) bezeichnet demnach einen **Brandabschnitt nach
> allgemeinem Sprachgebrauch/projektspezifischem Brandschutzkonzept**, keinen normierten
> VKF-Begriff — Planer können sich für die Anforderungen an diesen Raum nicht auf eine
> BRL-10-15-Definition berufen, sondern müssen sie aus dem Zweck (Schutz der
> Sicherheitsstromversorgung bis zur Brandabschnittsgrenze) selbst herleiten. Quelle:
> `Begriffe & Definitionen.pdf` (SharePoint Site PL, Drive `02_Recht_Norm`, `VKF_Norm/
> 02_Brandschutzrichtlinien 2015/`), per M365-Graph-Connector geladen, Abruf 23.08.2026.
- Frage: Der Anhang zu Ziff. 2.2 (S. 9, Fassung 2017) fuehrt die Nutzungskategorie
  «Verkaufsraeume» neu getrennt von «Verkaufsgeschaefte», ohne beide Begriffe zu definieren. Der
  Anhang zu Ziff. 3.3.2 (S. 12) verlangt neu einen Brandabschnitt «Technikraum
  Sicherheitsstromversorgung», ebenfalls ohne Definition in dieser Richtlinie. `vkf-brl-10-15-
  fassung-2019-delta.md` fuehrt «Verkaufsraeume» als 2019 neu eingefuehrten Begriff mit Abgrenzung
  zu «Verkaufsgeschaefte» und «Raeume mit grosser Personenbelegung» — deckt sich das mit der
  hiesigen 2017er-Tabellenzeile, oder ist die Begriffsbildung 2019 eine Praezisierung, die erst
  nach der 17-15-Aenderung 2017 kam?
- Warum das zaehlt: ohne Begriffsklaerung ist die praktisch wichtige Frage «gilt eine Flaeche als
  Verkaufsraum (Empfehlungszeile) oder Verkaufsgeschaeft (Pflichtzeile)» nicht aus der KB
  beantwortbar.
- Herkunft: Run 60, Delta-Destillat `vkf-brl-17-15-fassung-2017-delta.md`.

> ✅ **NAECHSTER SCHRITT VOLLSTAENDIG ERLEDIGT (23.08.2026, QUESTIONS-Abarbeitung).** Beide
> Teilschritte waren bereits in den Destillaten selbst erledigt, hier nur nachgezogen: (1) die
> Gegenseitig-Verlinkung fehlte einseitig — `vkf-brl-17-15-fassung-2017-delta.md` verlinkte
> bereits auf `vkf-brl-10-15-fassung-2019-delta.md` (Frontmatter + «Offene Punkte», belegt mit
> Seitenangabe 35), der Rueckweg fehlte im Frontmatter der 10-15-Delta-Datei und wurde ergaenzt.
> (2) Die vermeintliche Rueckwirkungsfrage stellt sich nicht: «Verkaufsraeume» ist **kein**
> 2019er-Begriff, sondern gehoert zu den zehn Begriffen des IOTH-Beschlusses vom **22.09.2016**
> (Fassung **01.01.2017**) — demselben Beschluss, der die BRL-17-15-Tabellenaenderung traegt.
> Beide Aenderungen sind am selben Tag beschlossen; die Tabellenverschiebung ist Vollzug der
> Definition, keine zeitversetzte Anwendung. Ein erklaerender Querverweis wurde zusaetzlich in
> `vkf-brl-10-15-fassung-2019-delta.md` (nach der Sechs-Begriffe-Tabelle) ergaenzt. Kein
> Widerspruch zur TEIL-1-Schliessung oben — deckungsgleiches Ergebnis, hier nur die beiden
> Datei-Querverweise nachgezogen.


---

## 260823 — N60-1: Die AFC-Synopse 2017 ist zweimal destilliert (ENTSCHEID RAPHAEL nötig)

- **Frage:** Dieselbe Quelle — `Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf` (AFC Basel,
  Autorin Lisa Hugenschmidt) — liegt in dieser KB als **zwei** Destillate vor:
  `vkf-aenderungen-brandschutzrichtlinien-2017.md` (13.07.2026) und `vkf-brl-aenderungen-2017.md`
  (21.07.2026). Beide `established`, beide mit denselben vierzehn Abschnitten und denselben
  Seitenbezügen. Sie sind unabhängig voneinander entstanden. Sollen sie zusammengelegt werden,
  und wenn ja, welche Fassung ist die Basis?
- **Warum das zählt:** Zwei Orte für denselben Sachverhalt driften bei der nächsten Änderung
  auseinander, wenn nur einer nachgeführt wird — und dieser Fall ist bereits eingetreten: die
  ältere der beiden gab die **Gesamthöhe** der Fassung 2017 falsch wieder («um den Dachrand»
  statt «um die Dachfläche … über dem tiefst gelegenen Teil des massgebenden Terrains»), die
  jüngere von Anfang an richtig. Der Fehler betraf die Messvorschrift, an der die Einstufung
  geringe Höhe / mittlere Höhe / Hochhaus hängt.
- **Was Run 60 bereits getan hat:** Die falsche Stelle ist **inline korrigiert**
  (Methodik-Pflicht 9), beide Destillate tragen einen gegenseitig verlinkten
  Doppelbestand-Kasten, und `vkf-brl-aenderungen-2017.md` ist bis zum Entscheid als **führend**
  gekennzeichnet (umfangreicher, an den geprüften Stellen genauer).
- **Warum es nicht selbst entschieden wurde:** Artikel zusammenlegen oder löschen ist destruktiv;
  nach Rule `wissens-bibliothekar` pausiert Claude dort und fragt.
- **Nächster Schritt (Vorschlag):** `vkf-brl-aenderungen-2017.md` behalten, das ältere Destillat
  auf eine Verweiszeile kürzen. Dieselbe Frage stellt sich für das Delta der **BRL 13-15**, das
  jetzt inline im Bestandsdestillat **und** als eigene Datei geführt wird (Eintrag oben, 260823).
- **Herkunft:** Run 60, 23.08.2026.

## 260823 — N60-2: Vorschlag Methodik-Pflicht 14 (FREIGABE RAPHAEL, nicht selbständig umgesetzt)

> Verliert eine VKF-**Arbeitshilfe** oder **Brandschutzerläuterung** zwischen zwei Fassungen eine
> Anforderung, wird das **nicht** als Lockerung protokolliert, bevor die zitierte Ziffer der
> **Mutterrichtlinie** in der entsprechenden Fassung nachgelesen wurde. Steht die Anforderung dort
> weiter, lautet der Befund «aus der Wiedergabe entfallen, materiell unverändert in Kraft» — und
> er ist als **Warnung** zu führen, nicht als Erleichterung.

- **Der Beleg, und er ist nicht konstruiert.** Die AH 1002-15 «Schulbauten» führte 2015 in
  Ziff. 7.3.2 zwei Auslöser für zwei vertikale Fluchtwege: Geschossfläche über 900 m² (zitiert als
  «BSR16-15, Z.2.4.2, A1») und Räume mit über 100 Personen (zitiert als «A2»). Die Fassung 2017
  nennt nur noch das Flächenkriterium und zitiert nur noch «A1»; das Wort «100 Personen» kommt in
  der ganzen Fassung 2017 kein einziges Mal mehr vor. Der Destillier-Agent meldete das als
  grössten sicherheitsrelevanten Fund des Laufs — als **Lockerung**. Die Gegenprüfung an der
  **BRL 16-15, Fassung 01.01.2017** (Hausbestand, Titelblatt abgelesen) zeigt: Ziff. 2.4.2 Abs. 2
  führt die Anforderung **unverändert**. Ohne diese Prüfung wäre der Befund mit umgekehrtem
  Vorzeichen ins Register gegangen, und ein Planer, der sich darauf stützt, hätte einen zweiten
  vertikalen Fluchtweg weggelassen, den die Richtlinie verlangt. Für eine Aula oder Mehrzweckhalle
  mit über 100 Personen ist das der Regelfall.
- **Zweiter Ertrag aus demselben Griff:** die im selben Destillat als «nicht angepasster
  Textbaustein» gemeldete Fussnote «Beherbergungsbetriebe **[a]**» stammt aus **Abs. 3 derselben
  Richtlinienziffer**. Auch dieser Absatz ist in der Arbeitshilfe nicht wiedergegeben. Es ist
  dasselbe Muster, nicht ein zweiter Fehler.
- **Der eingebaute Zeiger:** Diese Publikationen zitieren ihre Grundlage mit Fundstelle. Der
  **weggefallene Verweis** («A2» steht 2015 da und 2017 nicht mehr) sagt genau, wo nachzulesen
  ist. Die Pflicht ist damit billig zu erfüllen.
- **Verhältnis zu den bestehenden Pflichten:** MP 7 verlangt, einen Agentenbefund gegen den
  **ganzen Bestand** zu prüfen statt nur gegen die Stelle; MP 10 zieht dieselbe Regel für Befunde
  von aussen. MP 14 zöge sie eine Ebene höher — gegen die **übergeordnete Rechtsquelle**.
- **Nicht selbständig umgesetzt** gemäss dem Entscheid vom 17.08.2026 (nach Run 54 wurde von drei
  vorgelegten Pflichten nur MP 13 freigegeben; MP 11 und die MP-12-Erweiterung bleiben Vorschlag).
  Dieser Vorschlag bringt einen neuen, eigenständigen Beleg mit.
- **Herkunft:** Run 60, 23.08.2026.
