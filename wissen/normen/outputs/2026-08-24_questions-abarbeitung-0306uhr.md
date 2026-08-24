# QUESTIONS-Abarbeitung — Lauf 03:06 Uhr

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` zitierfähig.
CHANGELOG-Kopf und Report des letzten Laufs (02:54 Uhr,
`outputs/2026-08-24_questions-abarbeitung-verifikation-0254uhr.md`) zuerst gelesen.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn: eigener Prozess (Skript-Wrapper `mschub524`, PID 61165/61164/61156,
exakt dieser Auftragstext) — das ist der eigene Lauf, kein Konkurrent. Parallel liefen
`mschub523` (KB `baurecht`, Reglemente-Queue, fremde Datei) und `mschub522` (KB `energie`, eigene
QUESTIONS.md, andere KB). Kein Dateikonflikt auf `wissen/normen/`.

## Ausgangslage

Der 02:54-Lauf hatte den dritten identischen Verifikationsdurchlauf in Folge gemeldet: `wiki/
QUESTIONS.md` seit 00:19:53 Uhr unverändert, genau vier `##`-Abschnitte ohne Schliess-Marker auf
der Überschriftzeile (Leitplanke Gebäudekategorien I–XII, NIN-Geschirrspüler-Frage, N60-1
AFC-Synopse-Duplikat, N60-2 Methodik-Pflicht-14-Vorschlag) — alle drei bereits als Bring-Schuld
Raphaels bzw. dauerhafte Leitplanke ohne weiteren Handlungsbedarf eingestuft.

## Durchgeführt

**1. Vollständigkeits-Gegenprobe des bisherigen Filters.** Der bisherige Filter prüft nur die
Überschriftzeile selbst auf einen Schliess-Marker. Eine Kontrolle aller 58 `##`-Abschnitte der
Datei (`grep -n "^## "`) gegen eine zweite `grep`-Suche nach `✅`/`GESCHLOSSEN` **innerhalb** jedes
Abschnitts deckte eine fünfte, bisher übersehene offene Sektion auf: **„Bring-Schulden aus der KB
`baurecht`" (Zeile 4415, angemeldet Wissens-Chef Run 15, 25.07.2026)**. Die Überschrift trug
keinen Schliess-Marker, obwohl 3 der 4 dortigen Checkbox-Punkte bereits mehrfach bearbeitet waren
— der bisherige Filter hatte die Sektion deshalb in keinem der vier Vorläufer-Läufe erfasst,
weder als offen gemeldet noch als geschlossen erkannt. Das ist eine reine
Filter-Lücke/Datenqualitätsfrage der QUESTIONS-Buchführung, kein neuer Sachverhalt.

**2. Status je Checkbox-Punkt geprüft** (Belege bereits vorhanden, hier nur konsolidiert, keine
neue Recherche nötig): SIA 491 (nicht im Haus, CHF 90.00, Bring-Schuld Raphael), SN EN 12193
(nicht im Haus, aktuell gültige Ausgabe 2019, CHF 134.00/115.00, Bring-Schuld Raphael), SN 640 052
(✅ vollständig geklärt: ausser Kraft seit 31.03.2019, Cross-KB-Vorbehalt in `baurecht` bereits per
Commit gesetzt, kein weiterer Handlungsbedarf), SN 641 400 (weiterhin ungeklärt).

**3. Vierter Anlauf zu SN 641 400** (VSS, Grundlage der ZH-Parkplatzberechnung, Nachfolgenorm
unbekannt): `WebSearch` „SN 641 400 VSS Norm Parkplatzberechnung Nachfolgenorm ersetzt durch"
sowie gezielter `WebFetch` auf die ParkingSwiss-Normenübersicht
(`parkingswiss.ch/.../d_ParkingGuideline-05_V1.2025_Parkierungsnormen_2.pdf`) und die
Wikipedia-Liste „Liste der Normen für das Strassen- und Verkehrswesen in der Schweiz". Ergebnis:
**kein zitierfähiger Beleg.** Die WebSearch-eigene Zusammenfassung nannte ungeprüft SN 640281 als
Nachfolgenorm, aber weder das PDF (grösstenteils bildbasiert, nicht durchsuchbar) noch die
Wikipedia-Liste enthalten „SN 641 400" überhaupt — die Behauptung ist eine Suchmaschinen-Synthese
ohne Primärquelle und wird nach Rule `identifikatoren-verifizieren`/`normen-referenz` **nicht**
übernommen. Ein dritter Fetch-Versuch (VCS-Verkehrs-PDF) scheiterte an einem TLS-
Zertifikatsfehler des Hosts (CDN-Mismatch, kein Inhalt gelesen). Vierter erfolgloser, aber
dokumentierter Anlauf in Folge (23.08. Run-15-Nachtrag, 23.08. zweiter Anlauf, 23.08.
QUESTIONS-Abarbeitung 19, jetzt 24.08.) — der Weg über VSS-Kundendienst oder ein gedrucktes/
älteres VSS-Normenverzeichnis mit Ablösungstabelle bleibt der einzig offene, nicht per Web
gangbare nächste Schritt.

**4. `wiki/QUESTIONS.md` nachgeführt:** Überschriftzeile 4415 mit Statusmarker versehen (⚠ 3 von 4
Bring-Schuld Raphael, 1 geschlossen), am Sektionsende ein Status-Zusammenfassungs-Absatz ergänzt
(vier Checkbox-Punkte einzeln bilanziert, Zitiersperre für SN 640281 begründet, Filter-Lücke
benannt). Kein bestehender Absatz gelöscht oder umformuliert — reiner Anhang.

## Ergebnis

Kein Punkt inhaltlich neu geschlossen (SN 641 400 bleibt Bring-Schuld, kein Web-Zugangsweg
gefunden). Der Ertrag dieses Laufs ist die **korrigierte Buchführung**: die zuvor vom
Verifikations-Filter übersehene fünfte Sektion ist jetzt korrekt als „3 Bring-Schuld / 1
geschlossen" ausgewiesen statt unsichtbar zu bleiben. Damit bestätigt sich zugleich, dass die
vier bereits vom 02:54-Lauf benannten Abschnitte weiterhin korrekt sind — insgesamt bleiben nach
diesem Lauf **fünf** Sektionen mit offenem Restgehalt in der Datei, vier davon Bring-Schulden/
Leitplanken/Freigabepflichten ohne Handlungsspielraum in dieser Session, eine (SN 641 400) mit
demselben Status wie zuvor.

## Verifikation

`git diff --numstat -- wissen/normen/wiki/QUESTIONS.md`: 25 Zeilen hinzugefügt, 1 Zeile geändert
(Überschrift Zeile 4415) — rein additiv, kein bestehender Inhalt gelöscht oder verfälscht. Kein
`git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-
Cron.
