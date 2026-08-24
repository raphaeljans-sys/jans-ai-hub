# QUESTIONS-Abarbeitung — Lauf 03:17 Uhr

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. CHANGELOG-Kopf und Report des letzten Laufs (03:06 Uhr,
`outputs/2026-08-24_questions-abarbeitung-0306uhr.md`) zuerst gelesen.

## Kollisionscheck

`ps aux`: eigener Prozess (PID 77189, exakt dieser Auftragstext) — eigener Lauf, kein
Konkurrent. Kein weiterer Prozess mit Bezug auf `wissen/normen/` gefunden.

## Ausgangslage

Der 03:06-Lauf hatte nach einer Vollständigkeits-Gegenprobe aller 58 `##`-Abschnitte fünf
Sektionen mit offenem Restgehalt bestätigt: Leitplanke Gebäudekategorien I–XII (dauerhafte
Referenz, kein Handlungsbedarf), NIN-Geschirrspüler-Frage (Bring-Schuld Raphael), N60-1
AFC-Synopse-Duplikat (Entscheid Raphael nötig, destruktive Zusammenlegung), N60-2
Methodik-Pflicht-14-Vorschlag (Freigabe Raphael nötig), sowie die Bring-Schulden-Sektion aus der
KB `baurecht` (3 von 4 Punkten Bring-Schuld Raphael, SN 641 400 nach vier Web-Anläufen ohne
Beleg).

## Eigene Gegenprobe

Ein zweiter, unabhängiger Scan aller `##`-Abschnitte (Python, Vergleich Kopfzeile UND
Abschnittstext gegen ✅/GESCHLOSSEN) bestätigte diese fünf Sektionen als tatsächlich offen und
identifizierte keine sechste, bisher übersehene. Weitere vom Skript zunächst als „offen"
markierte Abschnitte erwiesen sich bei Einzelprüfung als historische Run-Berichte ohne
Frage-Charakter (kein Ticket, sondern abgeschlossene Log-Einträge früherer Läufe) — keine
echten offenen Punkte.

## Durchgeführt

Von den fünf verbleibenden Sektionen sind vier entweder dauerhafte Referenz (keine Aktion nötig)
oder explizit an eine Entscheidung/Freigabe/einen Kauf durch Raphael gebunden — eine erneute
Recherche in der Sache selbst hätte nur bereits vierfach (SN 641 400) bzw. zweifach
(NIN-Geschirrspüler) dokumentierte Sackgassen wiederholt. Stattdessen wurde für beide
Bring-Schuld-Punkte der **konkrete nächste Schritt** recherchiert und mit verifizierten
Kontaktdaten unterlegt, damit die Bring-Schuld für Raphael mit einer E-Mail statt mit eigener
Web-Recherche erledigt werden kann:

**1. SN 641 400 (VSS).** Offizielle VSS-Website `vss.ch` per `WebFetch` abgerufen (24.08.2026,
Erstquelle): Kundendienst **info@vss.ch**, Tel. **+41 44 269 40 20**, Sihlquai 255, 8005 Zürich.
Telefonnummer durch unabhängige `WebSearch`-Zweitquelle bestätigt. Ein Versuch, die Norm über
eine Shop-Suchseite (`mobilityplatform.ch/de/vss-shop/search?q=641400`) statt über die
Produkt-URL zu finden, scheiterte erneut mit HTTP 404 (JS-Single-Page-App ohne statische Route,
wie bereits im 03:06-Vorlauf dokumentiert) — kein neuer Web-Weg, bestätigt nur den bekannten
Befund. In `wiki/QUESTIONS.md` als Nachtrag an der Bring-Schulden-Sektion (Zeile ~4415)
ergänzt.

**2. NIN-Geschirrspüler-Frage (Electrosuisse).** Offizielle Kontaktseite
`electrosuisse.ch/de/kontakt/` per `WebFetch` abgerufen (24.08.2026, Erstquelle):
**info@electrosuisse.ch**, Tel. **+41 58 595 11 11**, Hauptsitz Fehraltorf; Kontaktformular mit
Kategorie „Bestellung Produkt / Norm". Eine spezifischere, in der `WebSearch`-Zusammenfassung
genannte Adresse `normenverkauf@electrosuisse.ch` wurde auf der Shop-Seite selbst **nicht**
bestätigt (Gegenprobe per `WebFetch`) und deshalb **nicht** als eigenständig belegte Angabe
übernommen — nur der am Hauptkontakt verifizierte Weg steht jetzt in der Datei. In
`wiki/QUESTIONS.md` als Nachtrag am Abschnitt „260731 — NIN: eigener Stromkreis fuer
Geschirrspueler?" ergänzt.

Beide anderen offenen Punkte (N60-1, N60-2) bleiben unverändert bei Raphael — eine
Zusammenlegung von Destillaten ist destruktiv (Rule `wissens-bibliothekar`, Pause-Pflicht) und
die Methodik-Pflicht-14-Erweiterung bedarf ausdrücklicher Freigabe (Entscheid vom 17.08.2026,
nur MP 13 freigegeben). Die Leitplanke Gebäudekategorien I–XII ist bereits als dauerhafte
Referenz ohne Handlungsbedarf verifiziert und bleibt unverändert.

## Ergebnis

Kein Punkt inhaltlich neu geschlossen — bei allen fünf verbleibenden Sektionen hängt die
Schliessung entweder an Raphaels Entscheidung/Freigabe/Kauf oder ist bereits als dauerhafte
Leitplanke erledigt. Der Ertrag dieses Laufs: zwei der drei Bring-Schuld-Punkte (SN 641 400,
NIN-Geschirrspüler) sind jetzt mit verifizierten Kontaktdaten für den nächsten Schritt
unterlegt, statt nur als „Bring-Schuld" ohne Weg vermerkt zu sein. Damit bestätigt sich der
Befund des 03:06-Laufs: die Datei ist inhaltlich ausgeschöpft, solange keine externe Entscheidung
oder Beschaffung durch Raphael erfolgt.

## Verifikation

`git diff --numstat -- wissen/normen/wiki/QUESTIONS.md`: 16 Zeilen hinzugefügt, 0 gelöscht — rein
additiv, kein bestehender Inhalt verändert oder entfernt. Kein `git`-Schreibbefehl über den
SMB-Mount ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-Cron.
