---
title: "Inventar buero-referenzen · 08_Karten_Plaene_Zuerich"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/08_Karten_Plaene_Zuerich
last_updated: 2026-08-23
status: established
dateien_gesichtet: 66
---

# 08_Karten_Plaene_Zuerich

## Kurzbefund

Die Sektion ist ein **reines Kartendaten-Depot, kein Textbestand**. 66 Dateien, rund 0,8 GB,
davon 63 Bilddateien. Es gibt genau drei PDF, alles Übrige ist Raster (TIF), ein
CorelDRAW-Dokument, ein Illustrator-Export und ein Bildkatalog. Für eine Wissensbasis, die von
Text lebt, ist hier fast nichts zu destillieren; der Wert liegt im Bildbestand selbst und in
zwei sehr konkreten technischen Belegen (Georeferenz-Parameter und Nutzungsbestimmungen).

Drei Bestände sind sauber getrennt und je durch Sichtprüfung des Bildinhalts bestätigt:

**1. Übersichtspläne Stadt Zürich, 46 Blätter (`B####_9x.TIF`).** Bitonal (1 bit), je
7000 x 4800 px, CCITT-RLE-komprimiert, `ImageDescription` leer. Sichtprüfung Blatt `B2207_94`
zeigt Käferberg, Waldberg, Limmat und Zürichberg mit einzelnen Gebäudegrundrissen,
Strassennetz und Flurnamen; Blatt `B1906_94` zeigt Oberer Katzensee, Chatzenrüti, Wolfgraben,
also die nordwestliche Ecke ausserhalb der Stadtgrenze. Der Bildinhalt (einzelne Gebäude plus
Flurnamen) verortet die Blätter in der Übersichtsplan-Familie der Ordnung 1:5000; **ein
Massstab ist in keiner Datei hinterlegt** und die Auflösungsangabe der TIF ist der
Platzhalter 72 dpi, also lässt sich das Papierformat aus den Metadaten nicht ableiten. Die
Jahreszahl im Dateinamen (`_94`, `_96`, `_97`) ist der Nachführungsstand: 1994, 1996, 1997.

**2. Farb-Orthofotos GeoZ, 5 Kacheln (`vaz-k###.tif` plus je eine `.tfw`).** Je 3969 x 3969 px,
24 bit RGB, unkomprimiert, 47,3 MB pro Kachel. Die Weltdateien geben Pixelgrösse
**0,125976 m** und den Kachelursprung im 500-m-Raster, damit ist jede Kachel exakt
**500 x 500 m** gross (3969 x 0,125976 = 500,0 m). Sichtprüfung der Kachel `k224` zeigt ein
Villenquartier mit Parkanlage in einwandfreier Qualität. Die fünf Kacheln liegen **nicht
zusammenhängend**, sondern verstreut über das Stadtgebiet, also projektbezogene Einzelbezüge.

**3. Landeskarte 1:25000, 2 Blätter.** `Zuerich 25000.tif` trägt im Kartenrand den Aufdruck
«Landeskarte der Schweiz 1:25000 · Zürich · Blatt 1091», 8981 x 6636 px, 300 dpi, 1 bit
unkomprimiert. `Zuerich-Kloten 25000.tif` ist ein quadratischer Ausschnitt 6496 x 6496 px,
300 dpi, LZW, und zeigt Regensdorf, Rümlang, Flughafen, Wallisellen, Dübendorf, Schlieren;
bei 300 dpi und 1:25000 entspricht das einer Kantenlänge von rund 13,7 km. Beide sind reine
**Schwarzplatten ohne Farbe und ohne Georeferenz**.

**Jahrgang.** Die Dateidaten reichen von 1998 bis 2009, der inhaltliche Schwerpunkt liegt
1994 bis 2002. Die Datierung ist mit Vorsicht zu lesen: `071128_Nutzung_Orthophoto.pdf` trägt
das Datumspräfix 071128, im Dokumentfuss steht aber 28.11.01; Präfix und Dokumentdatum
widersprechen sich, das Präfix dürfte nachträglich gesetzt worden sein.

**Provenienz.** Der Bildkatalog `Katalog.ivc` (iView-MediaPro-Format) enthält die
ursprünglichen Pfade und belegt, dass der Bestand einmal in einem Ordner
«Bibliothek / Uebersichtsplaene Zuerich» auf einem inzwischen abgelösten Büroserver lag. Das
ist die einzige Stelle, an der die Blätter überhaupt benannt werden.

**Datenschutz.** Nichts Heikles. Keine Verträge, Bewerbungen, Personaldossiers,
Adresssammlungen, Lohn- oder Honorardaten, keine Privatunterlagen. Die drei PDF sind amtliche
Nutzungsbestimmungen beziehungsweise ein generischer Internet-Ausdruck; Personennamen kommen
nicht vor. Zu beachten ist die urheberrechtliche, nicht die datenschutzrechtliche Seite: die
Kartendaten gehören der Stadt Zürich und dürfen nicht ins offene Netz (siehe unten).

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `_Digitale_Daten_…/Nutzung_Orthofoto.pdf` (Fassung 23.07.02) | P1 | Gelesen. Sechs Nutzungsbestimmungen von Geomatik + Vermessung Stadt Zürich zu Orthophotos: Urheber- und Eigentumsrecht bleibt bei GeoZ, auf **jedem** graphischen und digitalen Auszug ist der Vermerk «© Geomatik + Vermessung Stadt Zürich» anzubringen, Weitergabe an Dritte nur projektbezogen oder nach Rücksprache, aus den Daten darf **kein Internetzugriff** geschaffen werden (Download von JPG bis Grösse A5 gestattet), keine Haftung für Folgeschäden aus fehlerhaften Daten oder ungenügendem Nachführungsstand. Direkt anwendbar, sobald ein GeoZ-Bild in einer JANS-Studie erscheint. |
| `*.tfw` (5 Weltdateien) | P2 | Gelesen, alle fünf. Tragen die Georeferenz der Orthofoto-Kacheln in LV03: Pixelgrösse 0,125976 m, Rotation 0, Ursprünge 682500/246500, 682500/247000, 684500/248500, 685000/252000, 685000/252500. Ohne sie sind die 47-MB-TIF geometrisch wertlos. Als Rezept für das Georeferenzieren von Rasterkacheln in LV03 destillierbar. |
| `B####_9x.TIF` (46 Übersichtsplan-Blätter) | P3 | Zwei Blätter visuell geprüft, Metadaten aller Blätter gleich (7000 x 4800 px, 1 bit, CCITT RLE). Flächiger Zeitschnitt des Gebäudebestands 1994/1996/1997. Nicht zu Text destillierbar, aber als Bestandesbeleg wiederverwendbar. **Nicht georeferenziert**, kein Weltdatei-Satz vorhanden. |
| `071128_vaz-k224.tif`, `vaz-k066.tif`, `VAZ-K083.TIF`, `vaz-k285.tif`, `vaz-k309.tif` | P3 | Eine Kachel visuell geprüft, Metadaten aller fünf gleich. Farb-Orthofoto rund 12,6 cm Bodenauflösung, Dateidaten August bis Oktober 1999. Heute durch frei verfügbare, aktuelle Orthofotos ersetzt; Archivwert als Zustand 1999. |
| `Zuerich 25000.tif`, `Zuerich-Kloten 25000.tif` | P3 | Beide visuell geprüft. Landeskarte 1:25000 Blatt 1091 und ein Ausschnitt Zürich–Kloten, 300 dpi bitonal, nur Schwarzplatte, ohne Georeferenz. Heute über swisstopo aktueller und in Farbe verfügbar. |
| `STADT.CDR` | P3 | Header gelesen: CorelDRAW-Dokument Version 10, 61,4 MB. Original der Blattmontage (siehe `Stadt.ai`). Format im Büro nicht mehr zu öffnen; Aufbewahrung nur als Original. |
| `Katalog.ivc` | P3 | Gelesen (Strings). Bildkatalog mit Vorschaubildern, verweist auf einen abgelösten Büroserver. Einziger Beleg der ursprünglichen Ordnerbezeichnung «Uebersichtsplaene Zuerich» und damit die Quelle für die Benennung der 46 Blätter. |
| `071128_Nutzung_Orthophoto.pdf` (Fassung 28.11.01) | P3 | Gelesen. Ältere Fassung derselben Nutzungsbestimmungen. Einziger sachlicher Unterschied zur Fassung 2002: Ziffer 3 verbietet die Weitergabe an Dritte **ausnahmslos**, die Fassung 2002 erlaubt sie projektbezogen oder nach Rücksprache. Belegt die Konditionen, unter denen die 1999er Kacheln bezogen wurden. |
| `Stadt.ai` | X | Gelesen (Struktur vollständig ausgewertet). 405,7 MB PostScript, aus CorelDRAW 10 nach Illustrator 7 exportiert. **Enthält keinerlei Vektorgeometrie und keinen einzigen Textkörper**, sondern genau 46 eingebettete Rasterkacheln zu je 7000 x 4800 px, lückenlos gestossen in einem Raster von 7 Spalten x 10 Zeilen. Es ist also eine 406-MB-Dublette der 46 TIF-Blätter, ohne jeden Mehrwert ausser der Montage. |
| `Info twf Dateiendung.pdf` | X | Gelesen. Ein Ausdruck von einer Dateiendungs-Website, vier Sätze, mitten im Satz abgeschnitten («Spatial location file used to create coordinates i»), mit Tippfehler und einem Hinweis auf Buchempfehlungen bei Amazon. Sachlich wertlos; was eine Weltdatei enthält, steht belegbar in den `.tfw` selbst. |
| `Thumbs.db` (2 Stück), `.DS_Store` | X | Betriebssystem-Artefakte ohne Inhalt. |

Verteilung: **P1 1 · P2 5 · P3 56 · X 4** von 66 gesichteten Dateien.

## Was hier für JANS drinsteckt

**1. Eine Lizenzregel, die heute noch greift.** Sobald ein Orthofoto oder ein Planauszug der
Stadt Zürich in einer Machbarkeitsstudie, einem Wettbewerbsbeitrag oder einer Präsentation
erscheint, verlangen die Nutzungsbestimmungen von GeoZ den Vermerk
«© Geomatik + Vermessung Stadt Zürich» auf **jedem** graphischen und digitalen Auszug, und sie
verbieten, aus den Daten einen Internetzugriff zu schaffen. Das trifft unmittelbar den
Studio-Weg des Hub, bei dem Studien als Link auf einem Webserver ausgeliefert werden: ein
GeoZ-Bild gehört dort nicht ungeprüft hinein. Die Bestimmungen datieren von 2001 und 2002, die
Bezugslage hat sich seither geändert; die Regel ist deshalb als Beleg für die damalige
Lizenzkette zu lesen und vor Wiederverwendung eines dieser Bilder am heutigen Stand zu
verifizieren, nicht blind fortzuschreiben.

**2. Ein sauberes Georeferenz-Muster für LV03.** Die fünf Weltdateien zeigen dasselbe Schema:
Pixelgrösse 0,125976 m, keine Rotation, negativer y-Schritt, Ursprung auf einem 500-m-Raster
in LV03-Koordinaten. Daraus folgt direkt die Rechnung 3969 px x 0,125976 m = 500,0 m
Kachelkante. Wer im Hub eine Rasterkarte oder einen Planscan geometrisch korrekt unter eine
Volumenstudie legen will, hat hier ein belegtes, funktionierendes Beispiel samt Zahlen. Für
den Skill `volumenstudie` und den Connector-Weg `planungsgrundlagen` ist das die brauchbarste
Einzelaussage der ganzen Sektion.

**3. Ein flächiger Bestandes-Zeitschnitt 1994 bis 1997.** 46 Blätter decken das Stadtgebiet
lückenlos ab und zeigen Gebäudegrundrisse und Flurnamen im Zustand Mitte der 1990er-Jahre.
Bei Umbauprojekten, Bestandesschutzfragen und Aufstockungen ist die Frage «was stand damals
dort» wiederkehrend; heutige Geoportale liefern den aktuellen Stand, nicht den von 1994. Der
Bestand ist damit nicht Wissen, aber Beweismaterial. Zwei Einschränkungen sind zu nennen: die
Blätter sind **nicht georeferenziert** (kein Weltdatei-Satz vorhanden, er müsste über
Passpunkte hergestellt werden), und der Massstab ist nirgends dokumentiert.

**4. Eine Aufräum-Erkenntnis mit Zahl.** `Stadt.ai` ist mit 405,7 MB die grösste Datei der
Sektion und enthält nachweislich nichts als die 46 bereits vorhandenen Rasterkacheln,
montiert. Zusammen mit `STADT.CDR` (61,4 MB) liegen rund **467 MB Dublette** auf dem NAS, das
sind etwa 58 % des Sektionsvolumens. Ob gelöscht wird, entscheidet Raphael; die Feststellung
ist belegt und die Quellblätter bleiben davon unberührt.

**5. Was hier ausdrücklich NICHT drin ist.** Kein Zonenplan, keine Baulinien, kein
Kataster, kein OEREB-Auszug, keine Nutzungsplanung, keine Schutzobjekte. Die Sektion trägt
Topografie und Gebäudegeometrie, sie trägt kein Baurecht. Wer hier nach planungsrechtlichen
Grundlagen sucht, sucht am falschen Ort und gehört zum Skill `planungsgrundlagen`
beziehungsweise `baurecht`.

## Offene Punkte

- Massstab und Blattschnitt-Systematik der 46 Übersichtsplan-Blätter sind nicht belegt. Die
  Ziffernpaare im Dateinamen laufen über 19 bis 28 (Zeile) und 04 bis 10 (Spalte), was zum
  Montage-Raster 7 x 10 mit 46 belegten Feldern passt; welcher amtlichen Blattnummerierung
  das entspricht, geht aus keiner Datei hervor.
- Ob die Nutzungsbestimmungen von 2002 heute noch die geltende Fassung sind, ist offen und
  vor jeder Wiederverwendung eines GeoZ-Bildes zu prüfen.

## Destillat-Fortschritt

- 2026-08-29: `_Digitale_Daten_…/Nutzung_Orthofoto.pdf` (gemeinsam mit dem P1-Fund derselben
  Dokumentfamilie aus `buero-referenzen__08_Karten_Plaene_Weltweit.md`) →
  `wiki/orthofoto-nutzungsbestimmungen-stadt-zuerich-zwei-fassungen.md`

Einzige P1-Position der Sektion destilliert. P2 (Georeferenz-Muster der fünf
Orthofoto-Weltdateien) bleibt offen für einen späteren Lauf.
