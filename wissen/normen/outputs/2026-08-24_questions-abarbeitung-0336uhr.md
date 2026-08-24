# QUESTIONS-Abarbeitung — Lauf 03:36 Uhr (zwei neue Wege für N-SIASWEEP-2/3 getestet)

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. CHANGELOG-Kopf und Report des letzten Laufs zuerst gelesen (SIA-Sweep, 36.
Fortsetzung, `outputs/2026-08-24_sia-sweep-sechsunddreissigste-fortsetzung.md`, sowie die
QUESTIONS-Abarbeitungsläufe 03:17 und 03:30 Uhr desselben Tages).

## Kollisionscheck

`ps aux` vor Arbeitsbeginn geprüft: eigener Prozess (Launcher `mschub539`, PID 86677/86678/86670,
exakt dieser Auftragstext) sowie mehrere fremde Claude-Prozesse (Desktop-App, Sync-Loops) ohne
Bezug zu dieser KB. Kein Sibling-Lauf auf `wissen/normen/`.

## Ausgangslage

Der 03:30-Lauf hatte bestätigt: alle verbleibenden offenen Sektionen in `QUESTIONS.md` hängen an
einer externen Handlung Raphaels (Kauf oder Entscheid) — mit einer Ausnahme: die drei
N-SIASWEEP-Fragen (SIA 422, SIA 2021, SIA 2025 — Rückzugsbegründung/Nachfolger) waren laut der
siebten Fortsetzung des SIA-Sweep mit sieben, laut der achten und neunten mit zehn geprüften
Quellenarten erschöpft, mit der ausdrücklichen Empfehlung, sie nicht erneut mit denselben Mitteln
anzugehen. Diese Empfehlung wurde eingehalten — stattdessen zwei **neue** Wege geprüft, die aus
dem Erfolg der neunten Fortsetzung (SIA 405:2025 wurde über eine kostenlose Leseprobe primärquellenbelegt geschlossen) und aus dem allgemeinen Espazium-ZN-Sitzungsartikel-Genre ableitbar waren.

## Weg 1: Leseproben-Route direkt an SIA 422 getestet — negativ, aber strukturell aufschlussreich

Die Methode, die N-SIASWEEP-4 (GEO405-Familie) in der achten Fortsetzung geschlossen hatte
(kostenloser `DownloadAnhang`-Leseproben-Download auf der `shop.sia.ch`-Produktseite), wurde
bisher nur allgemein über `connect.snv.ch` für SIA 422/2021/2025 geprüft, nicht spezifisch über
den direkten `shop.sia.ch`-Leseproben-Download. Nachgeholt:

- **SIA 422** (`shop.sia.ch/normenwerk/architekt/422_2009_d/D/Product`): Leseprobe vorhanden
  (`DownloadAnhang`, 5 Seiten PDF, per `curl -L` geladen, mit `/opt/homebrew/bin/pdftotext -layout`
  vollständig gelesen). Inhalt: Titelblatt, Inhaltsverzeichnis, die **ursprüngliche**
  Genehmigungsklausel — «Die Zentralkommission für Normen und Ordnungen des SIA hat die
  vorliegende Norm SIA 422 Bauzonenkapazität am 22. November 2007 genehmigt. Sie ist gültig ab
  1. Juni 2009.» Kein Hinweis auf den Rückzug 2024, kein Wasserzeichen, keine Ersetzt-Klausel.
- **SIA 2021** (`shop.sia.ch/normenwerk/architekt/2021_2002_d/D/Product`): Leseprobe nur
  Inhaltsverzeichnis (130 KB), Produktseite selbst unverändert ohne Nachfolgerfeld — geprüft per
  `WebFetch`, keine PDF-Volllektüre nötig, da bereits auf Metadatenebene kein neuer Hinweis.

**Erklärung für das Versagen der Methode:** Die Leseprobe ist die eingefrorene Erstausgabe zum
Publikationszeitpunkt, kein bei Archivierung nachgeführtes Dokument. Bei SIA 405:2025 funktionierte
die Methode, weil die Leseprobe die **neue, ablösende** Norm war und deren eigenes Vorwort die
Ersetzt-Klausel enthielt. SIA 422/2021/2025 haben aber **keinen benannten Nachfolger** — es gibt
keine "neue Norm", deren Leseprobe man stattdessen lesen könnte. Die Methode ist damit für
Rückzüge ohne Nachfolgenorm prinzipiell unanwendbar, nicht nur in diesen drei Fällen. Künftige
Läufe müssen sie hier nicht erneut versuchen.

## Weg 2: Fünf weitere ZN-Sitzungsartikel gezielt auf das Rückzugsfenster geprüft — negativ

Das Rückzugsfenster für SIA 2025 ist bereits zweifach primärquellenbelegt auf 27.10.2023 bis
03.01.2024 eingegrenzt (zwei amtliche SIA-Publikationsverzeichnisse, Fortsetzung 3). Espazium
veröffentlicht regelmässig Berichte einzelner ZN-Sitzungen («Aus der X-ten Sitzung der
Zentralkommission für Normen») — dieses Genre war bisher nur stichprobenartig, nicht gezielt auf
das Zeitfenster hin durchsucht. Geprüft:

| Artikel | Sitzungsdatum | Rückzug genannt | SIA 422/2025 erwähnt? |
|---|---|---|---|
| «Fünf neue Normen, ein Rückzug» (espazium) | 06.06.2024 | SIA 2031:2016 (GEAK-Überschneidung) | Nein |
| «SIA: Beschlüsse der Zentralkommission für Normen» (espazium) | 09.09.2014 | Ablehnung Revisionsprojekt SIA 2025 (der bekannte gescheiterte 2014er-Anlauf) | SIA 2025 ja (keine neue Substanz), SIA 422 nein |
| «SIA: Beschlüsse zu Normen» (espazium) | 03.03.2015 | SIA 381/3 (bereits als N-SIASWEEP-1 geschlossen bekannt) | Nein |
| «SIA: Sitzungsergebnisse Zentralkommission Normen» (espazium) | 15.11.2016 | keiner (nur Gültigkeitsverlängerungen) | Nein |
| sia.ch-Artikel „…vierten-sitzung…-2" (Wayback-Snapshot 03.06.2023) | ca. Anfang 2023 | SIA V118/274:2010, SIA 370/21:1987 | Nein |

Eine WebSearch-Synopse verwies auf eine **vierte Sitzung 2023 am 07.12.2023** («15 Beschlüsse,
davon ein Rückzug») — genau im belegten Zeitfenster und damit die wahrscheinlichste Fundstelle für
die SIA-2025-Begründung. Die zugehörige Artikel-URL liess sich jedoch nicht auflösen: `sia.ch`-
Artikelseiten sind clientseitig (JS) gerendert — sowohl `WebFetch` als auch ein direkter `curl`
lieferten nur eine ~3,4 KB grosse leere Hülle ohne Fliesstext (dieselbe bereits dokumentierte
Grenze wie bei den SIA-Webinar-Seiten). Espazium verwendet für dieses Artikel-Genre zusätzlich
über Jahre hinweg wiederkehrende, generische Titel («SIA: Beschlüsse zu Normen» u.ä.), sodass
Suchtreffer nicht zuverlässig die jüngste Fassung liefern, sondern ältere gleichnamige Artikel
(2014-2016) an oberster Stelle zurückgeben.

## Ergebnis

Kein inhaltlicher Fortschritt bei den beiden eigentlichen offenen Fragen (Rückzugsgrund SIA 422,
ZN-Sitzung/Begründung des SIA-2025-Rückzugs). Zwei genuin neue Wege sind jetzt aber ebenfalls
geprüft und als Sackgasse dokumentiert (Leseproben-Route strukturell erklärt, nicht nur getestet;
fünf weitere ZN-Sitzungsartikel gezielt auf das Zeitfenster geprüft). Damit sind zehn unabhängige
Quellenarten für N-SIASWEEP-2/3 erschöpft. Nachtrag additiv in `wiki/QUESTIONS.md` nach dem
Block der neunten Fortsetzung eingefügt (kein bestehender Text verändert oder gelöscht).

Die übrigen in den Läufen 03:17/03:30 bestätigten offenen Sektionen (Leitplanke
Gebäudekategorien, NIN-Geschirrspüler, SIA 430/118-430, SIA 491, SN EN 12193, SIA 384/4:2025,
SN 640 273a, SN 641 400, N60-1, N60-2) wurden in diesem Lauf nicht erneut geprüft — sie hängen
unverändert an einer Handlung Raphaels (Kauf oder Entscheid), dritt- bzw. viertfach bestätigt.

## Verifikation

`git diff --numstat -- wissen/normen/wiki/QUESTIONS.md`: 40 Zeilen hinzugefügt, 0 entfernt — ein
additiver Blockquote-Nachtrag nach dem bestehenden Block der neunten Fortsetzung, kein sonstiger
Inhalt berührt. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron.
