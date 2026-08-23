---
title: "Inventar buero-referenzen / 29_Kostenplanung"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/29_Kostenplanung
last_updated: 2026-08-23
status: established
---

# Inventar: 29_Kostenplanung

## Kurzbefund

Die Sektion ist **fast leer**: zwei Dateien, keine Unterordner, beide JPEG. Der Ordner trägt
seit 2010 dasselbe Änderungsdatum; hinzu kam 2019 eine einzelne Handyaufnahme. Trotz des
ambitionierten Namens ist hier keine Kostenplanungs-Sammlung entstanden, sondern ein
Ablage-Rest. Beide Dateien wurden vollständig gesichtet, also als Bild gelesen und nicht nur
nach Dateinamen gedeutet. **Für die Wissensbasis bleibt aus dieser Sektion nichts übrig.**

Der Grund ist in beiden Fällen ein anderer.

**Erstens eine Dublette.** Die Buchseite `100817_PM_Ruosch_Brandenberger_S148.jpg` ist
inhaltlich erstklassiges Material (Abb. 8.4 «Kostenermittlungskreislauf», Genauigkeitsbänder
je Projektphase). Sie liegt jedoch **byte-identisch** ein zweites Mal in der Nachbarsektion
`18_Projektkostenplanung/00_Organisation/` und ist dort bereits als P1 inventarisiert und
inhaltlich ausgewertet (siehe `buero-referenzen__18_Projektkostenplanung.md`, Abschnitt 5).
Identität geprüft über SHA-256, beide Dateien `39e16ba1…9297b5`. Eine zweite Destillation
würde denselben Inhalt doppelt in die KB tragen; Sektion 18 bleibt die führende Quelle.

**Zweitens ein heikler Fund.** Die zweite Datei ist die Fotoaufnahme einer projektbezogenen
Personalkosten- und Honorarkalkulation eines Dritten. Sie enthält Löhne je Stelle, eine
namentlich bezeichnete Bauherrschaft und Honorarbeträge. Sie fällt damit unter die
Datenschutz-Schranke dieses Inventar-Laufs und wird **nicht inventarisiert und nicht
inhaltlich beschrieben**, also keine Namen, keine Beträge, keine Gegenpartei. Das Inventar
liegt in einem git-verfolgten Repo mit automatischem Push; ein Inventareintrag wäre hier
keine Entschärfung, sondern die Weitergabe.

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `100817_PM_Ruosch_Brandenberger_S148.jpg` | X | Inhaltlich P1-wertig (Genauigkeitsbänder je Phase), aber **byte-identische Dublette** zu `18_Projektkostenplanung/00_Organisation/`, dort bereits P1-inventarisiert und destilliert. Kein zweiter Eintrag; führende Quelle bleibt Sektion 18. |
| `IMG_2264.JPG` | X | **Heikel.** Foto einer projektbezogenen Personalkosten- und Honorarkalkulation eines Dritten mit Lohn- und Honorardaten. Gemäss Datenschutz-Schranke nicht inventarisiert und nicht beschrieben, nur als Fundmeldung geführt. |

Bilanz: 2 gesichtet · P1 0 · P2 0 · P3 0 · verworfen 2.

## Was hier für JANS drinsteckt

**1. Nichts Neues, und das ist der Befund.** Die Sektion trägt keinen eigenen Inhalt zur
Wissensbasis bei. Der einzige fachlich wertvolle Gegenstand ist eine Kopie dessen, was
Sektion 18 schon liefert. Wer später in der Referenzenbibliothek nach «Kostenplanung» sucht,
landet hier in einer Sackgasse und muss nach `18_Projektkostenplanung` weitergehen. Dieser
Verweis ist der eigentliche Ertrag dieses Inventars.

**2. Der Ordnername täuscht über den Inhalt.** `29_Kostenplanung` klingt nach einer Sammlung
und enthält zwei Bilder. Für die weitere Korpus-Arbeit heisst das: In dieser
Referenzenbibliothek sagt der Ordnername nichts über Füllstand oder Substanz aus. Sektionen
sind einzeln zu sichten, bevor ihnen ein Gewicht zugeschrieben wird.

**3. Die Genauigkeitsbänder gelten weiterhin, sind aber bereits belegt.** Die Zuordnung von
Projektphase und erreichbarer Genauigkeit nach Ruosch/Brandenberger (Definition ±10 bis
±25 %, Vorstudien ±10 bis ±15 %, Vorprojekt ±5 bis ±10 %, Bauprojekt ±5 bis ±7 %,
Kostenvoranschlag ±5 %, Ausführung und Bauabrechnung ±0 %) ist die Belegstelle, welche die
Skills `kostenschaetzung` und `grobkosten-onepager` für ihre Bandbreitenangaben brauchen. Sie
ist in Sektion 18 bereits erfasst und wird hier bewusst **nicht** erneut ausgeschrieben, damit
in der KB genau eine Fundstelle existiert. Offen bleibt dort wie hier die genaue Buchausgabe
und das Erscheinungsjahr: Der Scan zeigt Seite 148 und den Kurzbeleg aus dem Dateinamen, mehr
nicht. Vor einer Zitation in einem ausgehenden Dokument ist die Ausgabe zu verifizieren.

**4. Alterungsvorbehalt bei den Normzitaten der Buchseite.** Die Seite nennt neben SIA 416
noch SIA 116. Welche Ausgabe heute gilt, ist vor jeder Verwendung gegen die Normen-KB
`wissen/normen` zu prüfen (Rule `normen-referenz`) und nicht aus der Buchseite zu übernehmen.

**5. Hygiene-Hinweis für die Bibliothek.** In einer Referenzenbibliothek, die als
Fachwissensquelle dient, liegt eine Aufnahme mit Lohn- und Honorardaten Dritter am falschen
Ort. Sie gehört nicht in einen Ordner, den Skills und Loops breit durchsuchen. Der Ordner
selbst bleibt unangetastet (Quelle nur-lesend); eine Verlagerung ist ein Entscheid für
Raphael, kein automatischer Schritt.
