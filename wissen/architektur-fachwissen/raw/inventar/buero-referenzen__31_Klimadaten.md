---
title: "Inventar buero-referenzen — 31_Klimadaten"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/31_Klimadaten
last_updated: 2026-08-23
status: established
dateien_gesichtet: 2
dateien_gelesen: 2
---

# Inventar: 31_Klimadaten (Korpus buero-referenzen)

## Kurzbefund

Die Sektion ist **faktisch leer**. Der Ordnername verspricht eine Klimadatensammlung,
tatsächlich liegen **zwei Einzelgrafiken** darin, zusammen 472 KB, verteilt auf drei
Unterordner (`Schweiz/Hydroskript/`, `Schweiz/Sonnenstand_Zuerich/`). Es gibt **kein
einziges Textdokument** — kein PDF, kein DOCX, keine Tabelle, keinen Datensatz. Beide
Dateien wurden geöffnet und inhaltlich gelesen, nicht aus dem Dateinamen gedeutet.

Jahrgang: die Niederschlagskarte stammt vom 19.03.2009, das Sonnenpfad-Diagramm vom
14.04.2011. Der Ordner `Schweiz` wurde zuletzt am 14.04.2011 verändert. Die Sektion ist
seit rund fünfzehn Jahren unberührt und wurde nie zu einer Klimadatenbasis ausgebaut.

Was eine Bürobibliothek unter «Klimadaten» eigentlich bräuchte, fehlt hier vollständig:
keine SIA-2028-Klimadaten, keine MeteoSchweiz-Normwerte, keine Stationsdaten, keine
Heizgradtage, keine Auslegungstemperaturen, keine Schlagregen- oder Windlastangaben.
Wer diese Werte sucht, findet sie in dieser Sektion nicht und muss sie anderswo
beschaffen.

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `Schweiz/Sonnenstand_Zuerich/110414_sonnenpfad_zuerich_solar.jpg` (632x434 px, 83 KB, 14.04.2011) — Sonnenpfad-Diagramm «Solar paths at Zürich (Lat. 47.2°N, long. 8.3°E, alt. 413 m)», sieben Tageskurven vom 22. Juni bis 22. Dezember, Stundenlinien 6h bis 19h, Achsen Azimut -120° bis +120° und Sonnenhöhe 0° bis 90° | **P2** | Inhaltlich brauchbar und **zeitinvariant** — Sonnenstände veralten nicht, anders als jede Klimastatistik. Die drei entwurfsrelevanten Kernwerte sind direkt ablesbar und liessen sich in einen Wiki-Artikel destillieren. Nicht P1, weil das Bild **keine Quellenangabe trägt**: kein Herausgeber, kein Rechenverfahren, kein Zeitbezug der Stundenlinien. Als Beleg in einem ausgehenden Dokument ist es damit nach Rule `identifikatoren-verifizieren` unbrauchbar; die Werte gehören vor Verwendung gegen eine belegte Quelle gestellt. |
| `Schweiz/Hydroskript/Bild 2.png` (602x800 px, 322 KB, 19.03.2009) — Seitenscan (Seite 16) aus einem hydrologischen Skript, «Fig. 2-15: Karte der Jahresniederschlagssummen (Periode 1971–1990) mit zwei Profilschnitten (Daten: Schwarb et al. 2001a)»; Schweizer Karte mit Farbskala 500 bis 3500 mm und zwei Nord-Süd-Profilschnitten mit Relief und Jahresniederschlag | **P3** | Archivwert. Zwei Gründe gegen eine höhere Stufe. Erstens die **Normperiode 1971–1990**: MeteoSchweiz rechnet inzwischen auf 1991–2020, die Karte bildet also einen abgelösten Stand ab. Zweitens die **Ablesegenauigkeit**: eine Landeskarte in dieser Auflösung liefert für einen konkreten Bauplatz keinen verwertbaren Zahlenwert, nur eine Grössenordnung. Dazu ein Seitenscan aus fremdem Skript ohne vollständige Quellenangabe — als Abbildung in einem JANS-Dokument urheberrechtlich heikel. |

Summe: P1 = 0 · P2 = 1 · P3 = 1 · verworfen = 0.

Nichts wurde verworfen. Beide Dateien sind zwar Bildmaterial, tragen aber lesbaren
Fachinhalt (Legenden, Achsen, Zahlenwerte) und fallen damit nicht unter «reines
Bildmaterial ohne Text».

## Was hier für JANS drinsteckt

**1. Die Sonnenstände für Zürich, direkt ablesbar.** Aus dem Diagramm (Breite 47.2°N,
Länge 8.3°E, Höhe 413 m) lassen sich die drei Eckwerte der Kulmination ablesen: rund
**66° am 22. Juni**, rund **43° zur Tagundnachtgleiche** (20. März / 23. September) und
rund **20° am 22. Dezember**. Die Kurven für 22. Mai/23. Juli, 20. April/23. August,
21. Februar/23. Oktober und 19. Januar/22. November liegen dazwischen. Das ist die
Grundlage für Verschattungs- und Besonnungsüberlegungen, Auskragungs- und
Storentiefen, sommerlichen Wärmeschutz und die Beurteilung von PV-Verschattung. Die
Werte sind für den Entwurf verwendbar; als **Beleg** in einem ausgehenden Dokument
taugt die Grafik nicht (siehe offene Frage 1).

**2. Der Azimutbereich des Sonnengangs.** Die Achse reicht von -120° bis +120°, und die
Sommerkurve läuft über den ganzen Bereich. Am längsten Tag geht die Sonne in Zürich
also deutlich **nördlich der Ost-West-Achse** auf und unter. Praktische Folge: Ost- und
Westfassaden bekommen im Hochsommer früh und spät flach einfallende Sonne, die mit
horizontalen Bauteilen kaum abzuschatten ist — der bekannte Grund, weshalb der
sommerliche Wärmeschutz an Ost/West über bewegliche Behänge und nicht über Vordächer
gelöst wird. Am 22. Dezember bleibt der Sonnengang dagegen auf einen schmalen Sektor um
Süd beschränkt.

**3. Die Grössenordnung der Jahresniederschläge in der Schweiz.** Die Farbskala der
Karte spannt von **500 mm bis über 3500 mm**; die Profilschnitte zeigen den Anstieg von
den trockenen Tallagen (Wallis, Rhonetal) über das Mittelland bis zu den
Alpennordhang-Maxima. Genannte Bezugspunkte in den Profilen sind unter anderem La Sarine,
Aare (Grenchen), Aare (Bern), Simme (Oberwil), Simme (Lenk), Le Rhône sowie Rhein,
Zürichsee, Muota, Vorderrhein, Ticino, Maggia. Für JANS ist das eine **Orientierung**,
kein Bemessungswert: die Spanne macht anschaulich, dass Dachentwässerung, Abdichtung und
Schlagregenbeanspruchung je nach Bauort um ein Vielfaches auseinanderliegen. Der
Bemessungsregen für ein konkretes Projekt kommt nicht aus dieser Karte.

**4. Die Lücke ist der eigentliche Befund.** Für die neue Wissensbasis ist wichtiger als
der Inhalt der zwei Bilder, was fehlt. Der Ordner `31_Klimadaten` deckt den Bedarf an
Klimadaten **nicht ab** und darf in keinem Skill als Quelle referenziert werden. Was ein
Architekturbüro an dieser Stelle braucht — Auslegungstemperaturen, Heizgradtage,
Klimadatensätze nach SIA 2028, Normwerte MeteoSchweiz 1991–2020, Wind- und
Schneelasten — ist hier nicht vorhanden und muss aus den einschlägigen Quellen bezogen
werden. Der bestehende Hub-Skill `energie` und die KB `wissen/energie` sind die näher
liegenden Anlaufstellen; ob dort Klimadaten hinterlegt sind, wurde im Rahmen dieser
Inventarisierung **nicht geprüft** und ist nicht behauptet.

## Offene Fragen

1. **Zeitbezug der Stundenlinien im Sonnenpfad-Diagramm ist ungeklärt.** Die Grafik
   beschriftet die Stundenlinien mit «6h» bis «19h», nennt aber nirgends, ob es sich um
   Wahre Ortszeit, MEZ oder Sommerzeit handelt. Die Kulmination liegt bei Azimut 0° auf
   der «12h»-Linie, was auf Wahre Ortszeit oder MEZ ohne Sommerzeit deutet — belegt ist
   das nicht. Vor jeder Schattenwurf-Berechnung mit Uhrzeitbezug ist das zu klären, weil
   eine Verwechslung bis zu zwei Stunden Fehler bedeutet.
2. **Herkunft des Sonnenpfad-Diagramms ist unbekannt.** Die EXIF-Daten weisen als
   Software «Paint.NET 2.72» aus, das Bild ist also nachbearbeitet oder beschnitten. Ein
   Urheber, ein Herausgeber oder ein Rechenverfahren sind nicht angegeben.
3. **Das Hydroskript ist nur als eine Seite vorhanden.** Der Ordner heisst
   `Hydroskript`, enthält aber allein die Seite 16. Titel, Autor und Institution des
   Skripts sind aus der vorhandenen Datei nicht ableitbar; die Fussnote nennt lediglich
   die Datenquelle «Schwarb et al. 2001a». Ob der Rest des Skripts anderswo im Archiv
   liegt, wurde nicht untersucht — das läge ausserhalb dieser Sektion.
