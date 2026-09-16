# Konversations-Destillat 16.09.2026

MacBook Pro 21 Sessions · Mac Mini 18 Sessions · Cloud/Dispatch 5 — Fenster 26h (15.09.2026 04:14 bis 16.09.2026 06:14 CEST)

Echte Gespräche: 5 (4 Mac Mini, 1 MacBook Pro). Drei davon zu 2619 KISPI, eines zum
Apple-Speicherplatz, eines zum SharePoint-Speicherpool. Alles andere sind Routine-Läufe
(unten als Summe).
Remote-Tasks (claude.ai/code): keine neuen Ergebnisse im Fenster. Dispatch: 5 Nachtschicht-Zyklen
des Mac Mini, keine Handy-Aufträge.
Bereits gestern destilliert und hier nicht wiederholt: die Verhandlungsposition Honorar
(Session c60f2c33) und die Plattenbestellung Nasszellen LOS 281.63 (Session 09a64869), beide
in `260915-konversationen.md` Block 01 und 02; sie erscheinen im 26-h-Fenster erneut, weil ihre
Sitzungsdateien am 15.09. nochmals angefasst wurden, ohne neuen Inhalt.

## 01 KISPI 2619: Stundenaufteilung Realisierung für A. Spahic, Mail-Entwurf und A4-Onepager (Mac Mini, Session 28e87b48, 15.09. bis 23:01)

**Kern und Entscheide.** Raphael suchte zuerst die Rohdatei des letzten Honorarangebots an
Albin Spahic. Sie ist ein InDesign-Dokument, `2619_HOP2_JANS.indd`, gespeichert am 07.09.2026
um 15:48, acht Minuten vor dem Versand der Mail vom 07.09.2026 15:56 (Betreff «2619 KISPI,
Honorarofferte 2619-HOP2 Architekturleistungen Phase II», Anhang `2619_HOP2_JANS.pdf`,
Festpreis CHF 105'000 exkl. MwSt.), abgelegt unter
`AR - 01 Projekte/2619_KINDERSPITAL/00_Admin/1 Angebote/260510 Angebot Phase II/`.

Daraus entstanden drei Erzeugnisse:

Erstens ein **Mail-Entwurf an albin.spahic@kispi.uzh.ch** in Apple Mail (Konto rj I JANS,
Ordner Entwürfe), Betreff «2619 KISPI, Honorarofferte 2619-HOP2 und Stundenaufteilung
Realisierung per 15.09.2026», mit drei Anhängen (Offerte HOP2 und die beiden Stundenlisten
`2606-08` und `2609-12`). Die Stunden sind entlang der Offerten-Positionen gegliedert, damit
keine Widersprüche zur Offerte entstehen: Bauteile (Pos. 4.11, 4.12, 5.11, 5.21) rund 280 h,
davon Nasszellen 70, Innere Verglasungen 55, Leichtbauwände 50, Türen 30, Brandschutz Fluchtweg
ST/IK 25, Therapieküche 25, Integration technische Komponenten 15, allgemeine Details 10;
Behörden (Pos. 4.11) rund 35 h; Organisation (Pos. 5.11) rund 90 h. **Total 405 h**, gerechnet
aus 405.5 h laut den Stundenlisten (Juni 85, Juli 93, August 159, September 68.5).

Zweitens das **Ablage-Paket** nach Dateinamen-Konvention im selben Ordner:
`260915-2619-HOP2-Stundenaufteilung-Mail-Spahic/` mit MD, DOCX, PDF und den beiden
Stundenlisten als Kopie.

Drittens ein **A4-Onepager** `260915-2619-HOP2-Stundenaufteilung-A4.pdf` (Quelle als HTML
daneben, gerendert mit Chrome headless, Cambria, A4, Rand 20 mm), bewusst auf fünf Sekunden
Lesezeit gebaut: Kennzahl 405 h gross, ein proportional geteilter Balken 280 h Bauteile 69 %,
90 h Organisation 22 %, 35 h Behörden 9 %, darunter Detailbalken und eine Zeitleiste «Ab heute
bis Bezug 01.12.2026 und danach».

Auf Nachfrage kam das **Restbudget** dazu: Festpreis CHF 100'000 exkl. Spesen und MwSt. zum
Tarifansatz der Offerte CHF 155/h ergibt 645 h Zeitbudget, davon 405 h investiert und
**240 h verbleibend**. Die 240 h sind per Annahme auf die fünf Positionen verteilt: 100 h, 80 h,
20 h, 15 h, 25 h. Budget je Position aus der Offerte: 4.11 129 h, 4.12 129 h, 5.11 232 h,
5.21 97 h, 5.31 19 h, 5.32 16 h, 5.33 23 h. Zuletzt liess Raphael den Text bei Pos. 5.21 ändern:
statt «Gestalterische Leitung Bemusterungen» neu «Koordination Ausführungspläne mit Unternehmer»,
«Werkplankontrolle», «Ausführungskontrolle».

**Offene Punkte und Folgeaktionen.** (a) Der **Tarifansatz ist nicht entschieden**: die Offerte
rechnet mit CHF 155/h, die Stundenlisten führen CHF 160/h. Bis zum Entscheid rechnet das Blatt
mit 155/h und 645 h Budget. (b) Der Mail-Entwurf liegt unversandt in Apple Mail; ob und wann er
rausgeht, ist Raphaels Entscheid. (c) Als Hub-Befund notiert: `md2docx.py` läuft mit dem
System-Python nicht (python-docx fehlt), wohl aber mit `~/.venvs/jansdocx/bin/python3`.

**Radar-relevant: ja.** Der Entwurf ist unversandt und hängt unmittelbar an der Honorarsitzung
vom **Montag 21.09.2026, 13:30 bis 14:30 CEST**. Betrifft die Register-Punkte «NEU 14.09.2026 —
Honorarsitzung vom 14.09. ohne Abschluss; Folgesitzung 21.09.2026» und den Nachtrag vom
15.09. 06:2x zur Verhandlungsposition. Der offene Tarifentscheid 155 gegen 160 wirkt direkt auf
die dort genannte Untergrenze von CHF 165'000.

## 02 KISPI 2619: Metalldecken Therapieküche und WC, neues LOS 283.10 (Mac Mini, Session 7a6b20e0, 15.09. bis 22:15)

**Kern und Entscheide.** Raphael muss für die Therapieküche und die WC Metalldecken einplanen und
liess dafür ein eigenes Los eröffnen sowie die Originalgrundlagen von der Truninger-Plattform
beschaffen. Ziel ist, die Decke entlang der Planvorlagen von Herzog und de Meuron aufzubauen,
mit allen Deckeninstallationen: Revisionsklappen, Sprinkler, Deckenleuchten, allenfalls
Rauchmelder, BMA-Sensoren und Lüftungsauslässe.

Angelegt wurde `LOS_283.10 Metalldecken Therapiekueche WC` in der geteilten Bibliothek
`JANS - 2619-KISPI - Dokumente/2 Umbauprojekt Neu PPTS BKP/`, mit dem üblichen Aufbau
(00 Grundlagen Bestand, 01 Projektplaene Umbau PPTS, 03 Offerten Abgebote Vergabe,
08 Korrespondenz, 10 Rechnungen NT Regie) und dem internen Spiegel unter
`AR - 01 Projekte/2619_KINDERSPITAL/03_BKP/`. BKP 2017: **283.1 Deckenbekleidungen aus Metall**,
bürointerne Los-Nummer LOS_283.10. Beschafft wurden 101 Dateien, darunter der HdM-Deckenspiegel
OG1 Sektor 41 (S-ARC_3641, auch die von Röösli gestempelte Fassung), Deckenhöhen und Leuchten,
die Übersicht Deckenstruktur und Raumhöhen OG1 sowie HdM-Details der Metallkonstruktion.

**Offene Punkte und Folgeaktionen.** Das NAS war während dieser Session nicht gemountet
(App-Neustart), darum liefen weder der Korrektur-Harness noch der Wissens-Rücklauf über die
Erzeugnisse. Die Unterlagen sind für die Besprechung der Deckenauslässe mit dem Lüftungsplaner
vorbereitet.

**Radar-relevant: ja.** Der Termin ist **heute, Mittwoch 16.09.2026 13:00**, Vor-Ort-Termin
Lüftungstechnik mit Gruner und LSH, Haupteingang Bereich A, 1. Gebäude, Lenggstrasse 30.
Betrifft den Register-Punkt «NEU 15.09.2026, 06:5x — Vor-Ort-Termin Lüftungstechnik Mittwoch
16.09.2026 13:00» samt dem Nachtrag des Hub-Chefs, der den Kalendereintrag gesetzt hat. Neu ist,
dass die Deckengrundlagen für diesen Termin bereitliegen.

## 03 Apple-Speicherplatz: Fotomediathek nach OneDrive, Upload blieb stehen (Mac Mini, Session a5388010, 15.09. bis 22:45)

**Kern und Entscheide.** Ausgangspunkt war die Aufforderung von Apple, ein grösseres
iCloud-Abo zu lösen. Raphaels eigener Vorschlag wurde zur Linie: die Fotos in den OneDrive-Pool
verschieben, in iCloud nichts mehr belegen, die Synchronisation aber erhalten.

Erledigt am 15.09.: WhatsApp-Backup aus iCloud gelöscht, Konto von 43,2 auf 31,4 GB; iCloud Drive
bereinigt (zwei Zips und eine Firmware in den Papierkorb unter
`~/.Trash/260915-iCloud-Drive-Aufraeumen`, lokal noch 28 MB); vollständiger Export der Mediathek
mit osxphotos 0.76.1 nach `OneDrive-JANS/06_Fotos-Archiv/`, **10'856 Dateien, 27 GB, Exit 0**;
Verifikation aller 9'653 Objekte gegen das Original, MD5-Stichprobe 80 von 80 identisch. Bericht:
`06_Fotos-Archiv/_Verifikation/260915-Export-Bericht.md`.

Zwei Feststellungen aus dem Bericht, die bleiben: Der lokale Ordner «OneDrive-JANS» gehört zum
M365-Benutzer **admin@raphaeljans.onmicrosoft.com**, nicht zu rj@raphaeljans.ch; für den
Kamera-Upload am iPhone ist dasselbe Konto zu wählen, sonst entstehen zwei Ablagen. Und fünf
Live-Photo-Videoclips vom Juni 2025 fehlen auch in iCloud, die Standbilder sind vorhanden.

**Offene Punkte und Folgeaktionen.** Der **Upload in die Cloud blieb stehen**. Um 18:33 lagen
5'408 Dateien in der Cloud, um 22:30 erst 5'596 von 10'856. Der OneDrive-Client rechnete mit 90
bis 200 % CPU, ohne nennenswert hochzuladen; Leitung (666 Mbit/s Upload) und Speicher sind nicht
die Ursache. Um 20:01 gingen eine Hinweis-Mail an rj@ und eine Push-Nachricht mit der Empfehlung
raus, den Client neu zu starten; den Neustart hat Claude nach der Regel vom 14.08. (Cloud-Sync
bedient Raphael selbst) nicht ausgeführt.

**Eigene Gegenmessung heute 16.09. um 06:2x:** Der angekündigte Abschluss-Wächter läuft **nicht
mehr** (kein Prozess, kein launchd-Job auf dem Mac Mini), und der Export-Bericht ist seit
15.09. 20:01 unverändert. Die zugesagte Freigabe-Mail mit DOCX und PDF wird also nicht kommen,
und auch die für 08:35 angekündigte Warnmail nicht. Der Stand muss von Hand nachgemessen werden.

**Radar-relevant: ja.** Es steht die ausdrückliche Auflage «bis zur Freigabe-Mail nichts in
iCloud löschen», und die Freigabe kann mangels Wächter nicht mehr von allein kommen. Kein
bestehender Register-Punkt deckt das ab.

## 04 M365-Speicherpool: Versionsrichtlinie JANS.PROJEKTE gesetzt, Trim ausgelöst (MacBook Pro, Session b370c118, 15.09. 17:1x bis 17:49)

**Kern und Entscheide.** Der Synergie-Lauf 36 hatte den Punkt vorbereitet (Befund SYN-86): der
Tenant steht seit spätestens 27.07. auf «Automatisch», das wirkt aber nur auf neue Bibliotheken;
die sieben Bibliotheken von JANS.PROJEKTE standen weiter manuell auf 500 Versionen. Auf die
Frage «muss ich etwas für dich machen?» kam genau dieser eine Punkt zurück, Raphael antwortete
mit dem Stichwort «Versionsrichtlinie jetzt».

Erledigt am 15.09. um 17:28: Die bestehenden Bibliotheken von JANS.PROJEKTE stehen jetzt auf
«Automatisch». Der Befehl ging nur mit Raphaels eigener Anmeldung (rj@raphaeljans.ch); mit dem
App-Zugang ohne Login verweigert Microsoft ihn, das steht neu als Sackgasse in `WEGE.md`. Die
Umstellung läuft bei Microsoft als Hintergrund-Job und kann bis zu 24 Stunden dauern.
Anschliessend hat Raphael den **Trim** ausgelöst (behält die letzten fünf Versionen je Datei,
löscht endgültig am Papierkorb vorbei); Microsoft hat den Auftrag angenommen. Zum Vergleich:
derselbe Trim brachte am 13.08. rund 109 GB zurück. Ausgangslage 14.09.: **917.67 GB belegt,
87.07 %**. Commits `8343cf5c7` und `e9525b771`.

**Offene Punkte und Folgeaktionen.** Der Stand des Trim-Jobs lässt sich mit dem App-Zugang nicht
abfragen. Der Hygiene-Lauf misst ab 15.09. 17:30 die belegte Speichermenge und prüft zusätzlich,
ob die Bibliotheken nicht mehr auf «manuell 500» stehen.

**Radar-relevant: nein.** Reine Hub-Infrastruktur ohne Aussenwirkung, von Raphael selbst
abgeschlossen; die Kontrolle läuft automatisch weiter (Rule 260803, Hub-Interna sind kein
Sendegrund).

## 05 Doppelläufe auf dem MacBook Pro abgeschaltet (Mac Mini, Session 6317fa4e, 15.09. 13:4x)

**Kern und Entscheide.** Der Vollgas-Radar hatte drei doppelt laufende Scheduled Tasks gemeldet.
Raphael hat `vollgas-chef-radar`, `vollgas-fruehwarnung` und `heartbeat-daily` auf dem MacBook
Pro in der App abgeschaltet und das gemeldet («ich habe es gemacht»); die Fassungen auf dem Mac
Mini laufen weiter und decken alles ab. Nachtrag im Radar-Protokoll, Commit `bee65b160`. Die zwei
verpassten Wochenläufe (`bauleitung-training`, `claude-abo-auslastung`) werden bewusst nicht
nachgeholt.

**Offene Punkte und Folgeaktionen.** Der Nachweis kommt über die Termine: bleibt nach 13:32 ein
Lauf dieser drei Tasks auf dem MacBook Pro aus, ist das Abschalten bestätigt.

**Radar-relevant: nein.** Hub-Betrieb, von Raphael erledigt.

## Routine-Läufe (Summe)

34 Routine-Läufe ohne Benutzer-Eingabe, ohne Besonderheiten: Lern-Loops (normen, twin, energie,
bauprodukte, auflagebereinigung, spec), Vollgas-Radar und Frühwarnung, Nachtschicht-Zyklen des
Mac Mini, Heartbeat, Morgenbriefings. Zwei Ergebnisse, die über die reine Mechanik hinausgehen
und hier nur als Notiz stehen:

Erstens **twin Batch 121** (MacBook Pro, bis 16.09. 04:06, Commit `2afb9d79b`): Am 15.09. gingen
innerhalb von 33 Minuten zwei Mails an zwei Du-Kontakte hinaus, um 17:47 über Outlook Mobile mit
«Hoi Fabian,» und «Freundliche Grüsse», um 18:20 über Apple Mail mit «Geschätzter Albin» und
getipptem «Lieber Gruss, Raphael». Damit ist «Lieber Gruss zu Du, Freundliche Grüsse zu Sie» als
Registerregel widerlegt, der Gruss hängt am **Kanal**. Das berührt `rules/jans-dna.md`; der
Rule-Wortlaut wurde nicht angefasst, der Befund liegt im Twin-Wiki.

Zweitens **normen Run 86** (MacBook Pro, bis 16.09. 02:03, Commit `87daaf4db`): vollständige
Seiten-Inventur der Lignum-Dokumentation Brandschutz 4.2, 63 von 63 gedruckten Seiten, 26
Kernlücken und rund 20 Nebenlücken bei null falschen Werten. Drei Lücken sind planungsrelevant,
unter anderem, dass in anrechenbaren Estrich- und Betonschichten keine Installationen geführt
werden dürfen (Kap. 5.2.2).
