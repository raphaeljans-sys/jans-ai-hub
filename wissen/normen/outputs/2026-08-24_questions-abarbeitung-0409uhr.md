# QUESTIONS-Abarbeitung — Lauf 04:09 Uhr

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. CHANGELOG-Kopf und Report des letzten Laufs
(`2026-08-24_questions-abarbeitung-ekas-richtlinien.md`, ~04:03 Uhr) zuerst gelesen.

## Kollisionscheck

`ps aux`: eigener Prozess (PID 96377, exakt dieser Auftragstext, gestartet 04:07 Uhr) — eigener
Lauf, kein Konkurrent (gemäss expliziter Anweisung im Prompt). Kein weiterer, fremder
`claude`-Prozess mit Bezug auf `wissen/normen/` aktiv.

## Ausgangslage

Der 03:17-Lauf hatte nach einer unabhängigen Zweitprüfung aller `##`-Abschnitte bestätigt: nur
fünf Sektionen mit echtem Restgehalt, der Rest sind abgeschlossene Run-Logs ohne Frage-Charakter.
Seither wurden zusätzlich die EKAS-Richtlinien 2134/6512 destilliert (Lauf ~03:55-04:02 Uhr) und
eine Kollision mit einem parallelen Prozess entdeckt und vom parallelen Lauf selbst aufgelöst
(~04:05 Uhr, siehe CHANGELOG-Kopf).

## Eigene Gegenprobe

Python-Scan über alle `##`-Abschnitte (Kopfzeile + Body gegen die Marker ✅/GESCHLOSSEN/ERLEDIGT)
bestätigte: ausser bekannten historischen Run-Logs blieben nur die bereits bekannten Sektionen
ohne Schliess-Marker — mit einer Ausnahme, dem EKAS-Kollisionsbefund vom Kopf der Datei
(Zeile 3): die **Kopfzeile** trug weiterhin den Zusatz «ENTSCHEID RAPHAEL nötig», obwohl der
**Fliesstext** bereits (durch den parallelen Lauf selbst, ~04:05 Uhr) dokumentiert, dass sich der
Entscheidbedarf erledigt hat («Damit ENTSCHEID-RAPHAEL-Bedarf entfällt — reine Kenntnisnahme,
kein offener Punkt mehr»). Eine Kopfzeilen-Diskrepanz dieser Art hätte jeden künftigen
Kopf-Scan (wie den eigenen und wie den des 03:17-Laufs) weiterhin fälschlich als offen
gemeldet.

## Durchgeführt

**Kopfzeile korrigiert** (nicht-destruktiv, reine Nachführung des bereits im Fliesstext
dokumentierten Zustands): «ENTSCHEID RAPHAEL nötig» ersetzt durch «✅ GESCHLOSSEN ~04:05 Uhr —
paralleler Lauf hat Duplikate selbst entfernt, ENTSCHEID-RAPHAEL-Bedarf entfällt (Details im
Nachtrag unten)». Kein Inhalt gelöscht, kein Absatz verändert, nur die Kopfzeile.

Alle übrigen sechs verbleibenden offenen Punkte erneut geprüft, keine Änderung des Sachstands
gegenüber dem 03:17-Lauf:

1. **Leitplanke Gebäudekategorien I–XII** — dauerhafte Referenz, kein Handlungsbedarf.
2. **NIN-Geschirrspüler-Frage** (260731) — Bring-Schuld Raphael (Volltext hinter
   `ninonline.electrosuisse.ch`-Bezahlschranke); Kontaktdaten bereits am 24.08. nachgetragen.
3. **N60-1 AFC-Synopse-Duplikat** — Entscheid Raphael nötig (destruktive Zusammenlegung zweier
   `established`-Destillate, Rule `wissens-bibliothekar` verlangt Pause+Rückfrage).
4. **N60-2 Methodik-Pflicht-14-Vorschlag** — Freigabe Raphael nötig (Entscheid vom 17.08.2026
   gibt bisher nur MP 13 frei).
5. **Bring-Schulden aus KB `baurecht`** — SIA 491 und SN EN 12193 sind kostenpflichtige Käufe
   (Bring-Schuld Raphael, Preise verifiziert); SN 641 400 nach vier dokumentierten
   Web-Anläufen ohne Beleg, Kontaktdaten VSS-Kundendienst bereits nachgetragen; SN 640 052 ist
   bereits vollständig geklärt (ausser Kraft, Cross-KB-Vorbehalt gesetzt).
6. **SIA 384/4:2025** und **N41-1 (VSS SN 640 273a)** — Metadaten/Register bereits nachgeführt,
   Volltext-Beschaffung bleibt kostenpflichtige Bring-Schuld Raphael.

Für keinen dieser sechs Punkte gibt es einen weiteren, nicht bereits dokumentierten Web-Weg —
eine erneute Recherche hätte nur bereits mehrfach belegte Sackgassen wiederholt.

## Ergebnis

Ein inhaltlicher Fund (Kopfzeilen-Diskrepanz am EKAS-Kollisionseintrag) korrigiert. Alle übrigen
offenen Punkte sind unverändert entweder dauerhafte Referenz oder explizit an eine Entscheidung,
Freigabe oder einen Kauf durch Raphael gebunden. Die Datei ist damit weiterhin inhaltlich
ausgeschöpft, solange keine externe Handlung Raphaels erfolgt.

## Verifikation

`git diff --numstat -- wissen/normen/wiki/QUESTIONS.md`: 1 Zeile hinzugefügt, 1 Zeile geändert
(Kopfzeile), 0 sonstige Zeilen berührt — rein additiv/lokal begrenzt, kein bestehender Inhalt
gelöscht. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.
