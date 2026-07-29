---
title: "KISPI 1171/26: Zuständigkeiten bei Behörden ändern sich unangekündigt — am zuletzt bekannten Kontakt festhalten kostet Zeit"
status: established
last_updated: 2026-07-29
sources: [Logbuch-Journal 24.07./25.07./27.07.2026 (Abschnitte KISPI Auflagebereinigung 1171/26 Lenggstrasse 30, Fristen-Register logbuch/fristen.md), wissen/twin/outputs/2026-07-26_fidelity.md:13-15 (M365-Pull Sent Items rj@, Mail an Furrer/Gantenbein 24.07.2026 15:30, Cc Hottinger + Team-5-Postfach), wissen/twin/raw/_INGESTED.md:176 und :182 (maschineller Sweep-Endpunkt 2026-07-24 15:30:13; im selben Fenster die «Hottinger AfB-Kontaktlisten-Nachfrage»)]
links: [[[sbb-naeherbaurecht-thalwil-2414-vordach]], wissen/auflagebereinigung/wiki/aemter-stadt-zuerich.md, wissen/baurecht/wiki/bauausfuehrung-und-baukontrolle.md, wissen/baurecht/wiki/baubewilligungsverfahren.md]
gewerk: "Bauherrenberatung / Behördenkoordination"
bkp: "n/a (Verfahrensfrage, kein Bau-Gewerk)"
sia_phase: "5 Ausführung (SIA 112) — Auflagebereinigung während laufendem Verfahren"
betroffene_skills: [auflagebereinigung, behoerden-vorabklaerung, baurecht]
---

# KISPI 1171/26: Behörden-Zuständigkeit wechselt mitten im Verfahren, ohne dass man es mitgeteilt bekommt

**Projekt:** 2619 Kinderspital Zürich, Lenggstrasse 30, Bauentscheid 1171/26 (Auflagen
II.1.a–c). **Zeitraum:** 24.07.–27.07.2026.

## Situation

Zwei der drei Auflagen-Adressaten im laufenden Verfahren wechseln während der
Bearbeitung die zuständige Person, ohne dass JANS aktiv informiert wird:

- **UGZ (Umwelt- und Gesundheitsschutz Zürich, Auflage II.1.c):** RJ kontaktiert am
  24.07. gezielt R. Zuercher, den bis dahin bekannten Ansprechpartner. Erst am 27.07.
  14:41 stellt T. Stubbe (UGZ) klar: die Zuständigkeit liegt **wegen der Grösse der
  Einrichtung gar nicht bei Stubbe/Zuercher**, sondern bei Hr. Hansen (in den Ferien),
  Stellvertreter Shyam Zala. Drei Tage lang lief die Anfrage damit an der eigentlich
  zuständigen Stelle vorbei.
- **AFB (Amt für Baubewilligungen, Kreisarchitekt):** das Gebiet Weinegg und damit die
  Lenggstrasse 30 gehört neu zu **AFB Team 5**, Ansprechperson **Linus Furrer**. Die
  bisherige Ansprechperson A. Hottinger führt dieses Gebiet nicht mehr; der Wechsel ist
  **gebietsbezogen**, sie bleibt Kreisarchitektin AfB für ihre übrigen Gebiete (so auch
  weitergeführt in `rules/anrede-kontakte.md`, «Wartstrasse 8 u.a.»). Mitgeteilt wurde
  der Wechsel am **24.07.2026 durch A. Hottinger (AfB) selbst**, jedoch erst auf RJs
  Kontaktstellen-Nachfrage hin; RJ verwendete die neue Zuteilung gleichentags (Mail
  24.07. 15:30 «Guten Tag Herr Furrer (AfB) …», Cc Hottinger und Team-5-Postfach). Von
  sich aus hat das Amt nicht informiert.

## Ursache

Bei grösseren/komplexeren Vorhaben (hier: eine Institution von der Grösse des
Kinderspitals) gelten bei manchen Fachstellen **Sonderzuständigkeiten nach
Fallgrösse** (UGZ), bei anderen **Gebiets-/Team-Zuteilungen**, die sich verwaltungsintern
ändern können (AFB). Beides geschieht ohne proaktive Mitteilung an die Projektbeteiligten
— man erfährt es erst reaktiv, wenn man bei der (inzwischen falschen) Stelle nachfragt
oder zufällig in einer anderen Korrespondenz darauf stösst.

## Konsequenz

Anfragen, die an den zuletzt bekannten Kontakt gerichtet werden, laufen ins Leere oder
verzögern sich um mehrere Tage, bis der tatsächliche Zuständigkeitswechsel auffällt.
Bei fristgebundenen Auflagen (hier: Auflagenbereinigung vor Baubeginn, also auf den
Baubeginn gestellte Nebenbestimmungen nach § 326 lit. a PBG; die schriftliche
**Baufreigabe** des AfB bestätigt im Fall 1171/26 genau diesen Zustand) ist das ein
direkter Terminverlust, der bei einem laufenden, mehrmonatigen Verfahren mit mehreren
Fachstellen leicht mehrfach auftritt.

## Querbezüge (Rechts- und Kategorienanschluss)

- **Fristbegriff:** «vor Baufreigabe» ist der operativ verlangte Vorgang, aber kein
  Wortlaut-Begriff des PBG. Amtlich massgeblich ist § 326 lit. a PBG (alle auf den
  Baubeginn gestellten Nebenbestimmungen erfüllt); die schriftliche Baufreigabe ist die
  praktische Bestätigung dieses Zustands. Geführt in
  `wissen/baurecht/wiki/bauausfuehrung-und-baukontrolle` (Fassungshinweis Modell D,
  Run 30). Die Frist-**Kategorie** dieser Auflagen II.1 a) bis c) heisst im geführten
  Raster «vor Baubeginn, an AfB»:
  `wissen/auflagebereinigung/wiki/fristenlogik-bauentscheid-zh`.
- **Adressat/Zuständigkeit:** führend für «welches Amt ist Adressat je Deliverable» ist
  `wissen/auflagebereinigung/wiki/aemter-stadt-zuerich`. Den verfahrensrechtlichen
  Kontext dazu (welches Organ als Baubehörde entscheidet) führt
  `wissen/baurecht/wiki/baubewilligungsverfahren`, amtlich § 318 PBG: «Die örtliche
  Baubehörde entscheidet über Baugesuche, soweit durch Verordnung nichts anderes
  bestimmt ist.»
  **Abgrenzung, ausdrücklich:** § 318 PBG und die Delegationsordnung des Gemeindegesetzes
  sind **nicht** die Rechtsgrundlage der hier beschriebenen Vorgänge. Die AFB-Gebiets- und
  Teamzuteilung sowie die UGZ-Sonderzuständigkeit nach Fallgrösse sind
  **verwaltungsinterne Fallzuteilung innerhalb einer bereits zuständigen Stelle**, keine
  Delegation im Rechtssinn. Der Verweis dient als Kontext- und Adressat-Anker, nicht als
  Rechtsbeleg (eigene Subsumtion, nicht amtlich bestätigt).

## Verallgemeinerbare Lesson

Bei jedem Verfahren, das sich über mehrere Monate oder mehrere Auflagen-/Fachstellen
zieht — besonders bei grossen/speziellen Institutionen (Spital, Heim, öffentliche
Einrichtung), wo Sonderzuständigkeiten nach Fallgrösse möglich sind —: die aktuelle
Zuständigkeit **aktiv verifizieren, statt am zuletzt bekannten Ansprechpartner
festzuhalten**. Praktisch heisst das: bei jeder neuen Verfahrensphase oder nach
längerer Pause eine aktuelle Kontaktstellenliste beim Amt anfordern (wie im Fall am
24.07. bei A. Hottinger geschehen) und diese Liste projektbezogen
ablegen und pflegen, statt sich auf E-Mail-Verlauf/Gedächtnis zu verlassen. Eine kurze
Rückfrage «ist X weiterhin zuständig?» vor einer wichtigen fristgebundenen Eingabe ist
günstiger als der Terminverlust durch eine falsch adressierte Anfrage.

> **Korrektur Wissens-Chef Run 20, 29.07.2026.** Die Chronologie des AFB-Wechsels war
> falsch datiert und in der Ursache falsch zugeschrieben. Belegt am harten Primärbeleg
> (M365-Pull Sent Items rj@, `wissen/twin/outputs/2026-07-26_fidelity.md:13-15`, sowie
> maschineller Sweep-Endpunkt `wissen/twin/raw/_INGESTED.md:176` und `:182`): RJ
> adressierte L. Furrer (AfB) am **24.07.2026 um 15:30:13** und setzte dabei A. Hottinger
> und das Team-5-Postfach ins Cc. Im selben Mailfenster (23.07. 21:42 bis 24.07. 15:30)
> liegt die «Hottinger AfB-Kontaktlisten-Nachfrage», und zwar **vor** der Furrer-Mail. Der
> AFB-Wechsel war also am 24.07. bekannt und in Gebrauch, nicht erst am 27.07., und die
> Information kam **vom Amt selbst** (Kreisarchitektin Hottinger, AfB). Der frühere
> Halbsatz «nicht durch eine Mitteilung des Amts» ist damit widerlegt und gestrichen;
> ebenso das Datum «25.07.» in der Lesson (am 25.07. existiert kein authentischer
> rj@-Ausgang, `_INGESTED.md:178`) und der Zusatz «erst nachträglich».
> **Unangetastet bleibt die Ursachen-Aussage «ohne proaktive Mitteilung … man erfährt es
> erst reaktiv»:** sie gilt auch für die AFB, weil die Zuteilung nur deshalb bekannt
> wurde, weil RJ bei der inzwischen für dieses Gebiet falschen Stelle nachfragte. Erst am
> 27.07. 14:41 sichtbar wurde allein die UGZ-Sonderzuständigkeit nach Fallgrösse.
> Ergänzt wurden zudem der Rechts- und Kategorienanschluss (§ 326 lit. a PBG statt des
> unnormierten «vor Baufreigabe», § 318 PBG nur als Kontext-Anker) und die bidirektionale
> Verlinkung nach `wissen/auflagebereinigung/wiki/aemter-stadt-zuerich.md`.
