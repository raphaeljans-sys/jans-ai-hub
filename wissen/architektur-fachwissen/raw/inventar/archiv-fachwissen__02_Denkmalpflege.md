---
title: "Inventar Korpus archiv-fachwissen — Sektion 02_Denkmalpflege"
korpus: archiv-fachwissen
sektion: /Volumes/daten/02_Architektur_Archiv/02_Denkmalpflege
last_updated: 2026-08-23
status: established
---

# Inventar: 02_Denkmalpflege

## Kurzbefund

Die Sektion umfasst **156 Dateien** (ohne `.DS_Store`) in fünf Hauptordnern und zwei losen
Wurzeldateien. Es ist der vollständige Studienordner zur ETH-Lehrveranstaltung
**«Bauforschung und Denkmalpflege»** am Institut für Denkmalpflege und Bauforschung (IDB),
Prof. Dr.-Ing. Uta Hassler, aus den Semestern HS 2010 bis HS 2012, ergänzt um eine eigene
Studienarbeit von 2007 und Veranstaltungsprogramme bis 2013. Dateidaten (mtime): 1× 2007,
53× 2010, 61× 2011, 35× 2012, 4× 2013, 2× 2014.

Formatverteilung: 118 PDF, 20 JPG, 6 `Thumbs.db`, 4 TIF, 2 TIFF, 2 INDD, 2 DOCX, 1 PNG,
1 GIF.

Der entscheidende Befund für die Verwertbarkeit: **Rund 60 der 118 PDF sind reine
Bild-Scans ohne Textlayer** (geprüft mit `pdftotext` über die ersten fünf Seiten jeder
Datei; Ausgabe null oder unter 200 Zeichen). Es handelt sich fast durchgehend um
eingescannte Buchkapitel urheberrechtlich geschützter Fachliteratur. Sie sind ohne OCR
nicht maschinell destillierbar und ihrem Charakter nach ohnehin nicht in ein Büro-Wiki
übertragbar.

Der verwertbare Kern liegt woanders und ist substanziell:

1. **Zwei studentische Volltext-Zusammenfassungen** der gesamten Pflichtlektüre, beide mit
   Textlayer und beide gelesen. `zusammenfassung_denkmaltexte_rw.pdf` (24 Seiten, Ramon
   Weber, 2013) fasst 15 Pflichttexte zusammen; `denkmalpflege_zusammenfassungen_texte13.pdf`
   in `03_Vorlesungen/` (19 Seiten, Bob Braun, HS 2011) fasst 13 Texte zusammen. Diese
   beiden Dateien enthalten in destillierter Form genau das, was in den unlesbaren Scans
   steckt.
2. **Vier normative bzw. handwerklich-technische Referenzen**, die unmittelbar in die
   Bürowertschöpfung fliessen: das SIA-Merkblatt 2017, die Trockenmauer-Richtlinie des
   SVTSM, das BABS-Merkblatt zu Naturstein und die Kalk-/Fassungsrezepturen von Glaser.
3. **Eine eigene Arbeit von Raphael Jans** (2007, Haus Jans Luzern) mit einer sauber
   gegliederten Methodik der denkmalpflegerischen Baudokumentation.

Der grosse Rest ist Denkmalpflege-Theorie (Zeitbegriff, kulturelles Gedächtnis,
Authentizität, Wissenschaftstheorie) und altertumskundliche Bauforschung (Parthenon,
Babylon, Steinschnitt). Fachlich hochwertig, aber ohne direkten Bezug zur Büroarbeit.

**Offene Fragen:** (a) Der Verfasser der handschriftlichen Handout-Scans in
`03_Vorlesungen/3 denkmalpfl` und `4 denkmalpfl` ist nicht belegt; die Notizen sind nicht
signiert, ob sie von Raphael stammen, ist offen. (b) Die 60 Scan-PDF sind inhaltlich nicht
geprüft, ihre Zuordnung erfolgte allein über Dateiname, Ordnerkontext und die Quellenliste
`quellenangaben_hs_10_1.pdf`, die alle Pflichttexte bibliografisch auflöst. (c) Die beiden
INDD-Dateien der Studienarbeit wurden nicht geöffnet (kein InDesign in dieser Umgebung);
das zugehörige PDF liegt vor und wurde gelesen.

## Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `02_Literatur/SIA/sia2017.pdf` (10 S., Scan, visuell gelesen) | **P1** | SIA-Merkblatt 2017 «Erhaltungswert von Bauwerken», Ausgabe 2000. Vollständige Bewertungssystematik mit sechs immateriellen und sechs materiellen Kriterien plus Bewertungsmatrix Zustand/Entwicklungspotential. Direkt einsetzbar in `ankaufspruefung`, `nutzungsstrategie`, `immobilienbewertung`, `machbarkeit` bei Bestandsbauten. |
| `02_Literatur/Texte Handapparat PDF/Trockenmauerverband CH Richtlinie_2012_0.pdf` | **P1** | Richtlinie SVTSM 01/2012 mit eigenem Kapitel **Devisierung/Ausschreibung**. Nennt ausdrücklich, dass keine Norm die Trockenmauerqualitäten definiert, und ist als Anhang zum Ausschreibungstext gedacht. Sofort verwertbar im Skill `ausschreibung`. |
| `02_Literatur/Texte für Veranstaltungen/Portmann-Naturstein Oberflaechenbearbeitung.pdf` | **P1** | Merkblatt des Bundesamts für Bevölkerungsschutz, Kulturgüterschutz, Stand 2003. Naturstein, Bearbeitungstechniken, Schweizer Gesteinsvorkommen. Amtliche Quelle, zitierfähig. |
| `02_Literatur/Glaser_Wilhelm/Glaser_Wilhelm_eine_auswahl_traditioneller_fassungstechniken.pdf` | **P1** | Rezepturen und Verarbeitungsregeln für Kalk-, Kalkkasein-, Leim- und Ölanstriche, inkl. Kalkkreislauf, Carbonatisationsdauer und Pigmentlisten. Konkretes Ausführungswissen für Bestandssanierung und Devistexte. |
| `zusammenfassung_denkmaltexte_rw.pdf` (Wurzel, 24 S.) | **P1** | Enthält die vollständige Begriffssystematik Instandhaltung / Instandsetzung / Sanierung / Konservierung / Restaurierung / Renovierung / Rekonstruktion nach Petzet-Mader, jeweils mit den zugehörigen Artikeln der Charta von Venedig im Wortlaut. Das ist die Sprache, in der Denkmalpflegebehörden argumentieren. |
| `01_Arbeiten/Haus_Jans/PDF/120705_Denkmalpflege_Haus_Jans.pdf` | **P1** | Eigene Studienarbeit. Siebenteilige Methodik der Baudokumentation (Recherchenbegründung, historischer Kontext, Monographie, Raumbuch, Baubeschreibung, Würdigung, Archivierungsbestand), verifiziert im Gespräch mit der Denkmalpflege. Als Gliederungsvorlage direkt übernehmbar. |
| `02_Literatur/Exkurs_umbau_Zusammenfassung.pdf` | **P1** | Destillat Hassler/Kohler «Umbau, die Zukunft des Bestandes» mit einem operativen Siebenerkriterienkatalog für Planungsentscheide (Lebenserwartung, Ressourceneffizienz, Reparaturfähigkeit, Demontierbarkeit, Wiederverwendbarkeit, Ungefährlichkeit als Müll, Trennbarkeit). Bauherren-Argumentation Umbau gegen Neubau. |
| `02_Literatur/Hassler_Uta/hassler_altlast_Zusammenfassung.pdf` | **P1** | Destillat «Die Altlast als Denkmal?». Kernthese Minimierung und Verlangsamung der Eingriffe, Warnung vor der «Vergiftung durch Sanierung». Kurz, zitierfähig, direkt in Bauherrengespräche übertragbar. |
| `03_Vorlesungen/denkmalpflege_zusammenfassungen_texte13.pdf` (19 S.) | P2 | Zweite Volltext-Zusammenfassung derselben Pflichtlektüre (Bob Braun, HS 2011). Überschneidet sich thematisch mit der `rw`-Fassung, ergänzt sie aber (Elias, Assmann, Enzensberger ausführlicher). Die im Inhaltsverzeichnis angekündigten Kapitel zu Glaser, SIA 2017 und Schmidt fehlen im Fliesstext. |
| `02_Literatur/Texte für Veranstaltungen/` — Werkstoff- und Steinkonvolut (8 Dateien: Steinbrüche der Schweiz, Das Wüten am Berg, Festgesteine für Bauzwecke, Allgemeine Geologie, Wehrle Steinschnitt, Harres Schule des Steinmetzen, Uhde Stein, Schmidt Bauaufnahme) | P2 | Werkstoffkunde Naturstein und historische Steinbearbeitung. Fachlich nützlich für Bestandsobjekte mit Natursteinfassaden, aber sämtlich Buchscans ohne Textlayer. Destillation nur mit OCR und in Auszügen. |
| `02_Literatur/Texte Handapparat PDF/` — historische Konstruktionslehren (Gottgetreu «Lehrbuch der Hochbau-Konstruktionen» 428 MB, Uhde Bd. 1 Kap. 4, Uhde «Architekturformen des klassischen Alterthums», Dechau Dorfbrücke) | P2 | Historische Konstruktionslehren des 19. Jahrhunderts. Wertvoll beim Verstehen von Bestandskonstruktionen aus der Gründerzeit, aber Grossscans ohne Textlayer. Der Gottgetreu ist mit 428 MB die grösste Datei der Sektion. |
| `02_Literatur/Petze/Petzet_grundsaetze_und_methoden_der_denkmalpflege.pdf` | P2 | Primärquelle zur oben genannten Begriffssystematik. Scan ohne Textlayer; die Zusammenfassung in `zusammenfassung_denkmaltexte_rw.pdf` deckt den Inhalt bereits ab. |
| `02_Literatur/Burra_Charta/Burra.pdf` | P2 | Burra Charta (ICOMOS Australia), internationale Grundlagencharta neben der Charta von Venedig. Scan ohne Textlayer; der aktuelle Wortlaut ist öffentlich verfügbar und sollte bei Bedarf von dort geholt werden. |
| `02_Literatur/Schmidt_Hardwig/Schmidt_bauaufnahme.pdf` · `02_Literatur/Staatsmann_Karl/Staatsmann_vom_aufnehmen_von_architekturen.pdf` | P2 | Methodik der Bauaufnahme. Die vier Grundsätze des wissenschaftlichen Aufnahmeplans nach von Gerkan sind in der `rw`-Zusammenfassung bereits destilliert und für heutige Bestandsaufnahmen brauchbar. |
| `02_Literatur/Hassler_Uta/` — 7 Aufsatzscans (Bauforschung als Konstruktion historischen Wissens, Building Stock, Die Altlast als Denkmal, Altlast 1, Ruinen und Rekonstruktionen, Verschwinden, Umbau/Kohler) | P2 | Der theoretische Unterbau der Bestandsstrategie. Ohne Textlayer; die beiden Zusammenfassungen decken die Kernthesen ab. |
| `02_Literatur/2011_02_bautechnikhistorismus.pdf` | P2 | Tagungsprogramm «Bautechnik im Historismus», ETH 17./18.02.2011, mit Planarchiv-Bezug des Amts für Hochbauten der Stadt Zürich. Nützlich als Themen- und Personenregister für Recherchen zu Zürcher Gründerzeitbauten. |
| `02_Literatur/Bruehlmann/Buehlmann_Cobaltblau.pdf` | P2 | Werkstoffgeschichte und Werkstofftechnologie eines historischen Pigments. Ergänzt Glaser. Scan ohne Textlayer. |
| `00_Algemein/00_Inhaltsverzeichnis/` — Registratur (Ordnerregister ×2, `quellenangaben_hs_10_1.pdf`, `quellenangaben_3.pdf`, Pflichtlektüre-DOCX, Semesterprogramm-DOCX) | P2 | Erschliessungsapparat der Sektion. `quellenangaben_hs_10_1.pdf` löst jeden Pflichttext bibliografisch auf (Autor, Titel, Verlag, Jahr) und ist damit der Schlüssel zu den namenlosen Scans. Für jede spätere Destillation zuerst zu lesen. |
| `04_Veranstalltungen/` — 4 Programme (Freitagskolloquium «Energiepolitiken & Werterhaltung» 26.10.2012, Historismus in Zürich IDB, Programm HS 2012, «Nationalstile?») | P2 | Das Freitagskolloquium verknüpft Denkmalpflege und Energiepolitik (Substanzerhaltung gegen Energieverbrauch, Basels Weg zur 2000-Watt-Gesellschaft). Genau die Spannung, die heute bei jeder Bestandssanierung auftritt. Referenten- und Themenregister. |
| `03_Vorlesungen/3 denkmalpfl/Prüfungsfragen Denkmalpflege Sommer 2010-2.pdf` | P2 | Prüfungsfragen mit Antwortstichworten, darunter die fünf **Grundsätze der Reparatur** (Vorrang der Reparatur, traditionelle Methoden und Materialien, Authentizität, Reversibilität, Beschränkung auf das Notwendigste). Kompakteste Merkform des Kernwissens der Sektion. |
| `02_Literatur/Ein authentisches Stück Baugeschichte - NZZ.ch, 03.10.2012.pdf` | P2 | NZZ-Artikel zur Restaurierung des Silver Tower Frankfurt (Schneider + Schumacher). Fallbeispiel Hochhaussanierung im Bestand mit Erhalt der Originalsubstanz. |
| `03_Vorlesungen/1 denkmalpfl/denkmalpflege bauaufnahme.pdf` | P2 | Vorlesungs-Handout Bauaufnahme. Scan ohne Textlayer. |
| `02_Literatur/` — Theorie-Autorenordner (20 Dateien: Abel, Assmann, Bandinelli, Choay, Cohen, Elias, Enzensberger, Foucault, Groys, Habermas, Lowenthal, Mörsch, Muthesius, Radkau, Rüsen, Suárez Miranda) | P3 | Denkmalpflege- und Geschichtstheorie. Intellektuell der Kern der Vorlesung, für die Büroarbeit ohne direkten Nutzen. Sämtlich Buchscans ohne Textlayer, urheberrechtlich geschützt. Die Kernaussagen stehen ohnehin in den beiden Zusammenfassungen. |
| `02_Literatur/` — lose Einzelstücke (Fernand Pouillon/Andreas Schmid, Martin Berg, Mittelstrass) | P3 | Einzelne Aufsätze und Vorträge ohne erkennbaren Sektionsbezug, ohne Textlayer. |
| `02_Literatur/Texte für Veranstaltungen/` — Antike-Bauforschung (8 Dateien: Korres «Vom Penteli zum Parthenon» ×2, Korres Kuppelstein, Zambas Parthenon Columns, Polonyi, Rice, Kollhoff, Huerta) | P3 | Altertumskundliche Bauforschung und Ingenieurgeschichte. Wissenschaftlich hochwertig, für ein Zürcher Architekturbüro ohne Anwendungsfall. |
| `02_Literatur/Texte Handapparat PDF/` — Huerta, Korres (Zweitfassungen desselben Texts wie in «Texte für Veranstaltungen») | P3 | Formatvarianten, kein Zusatzgehalt. |
| `01_Arbeiten/Haus_Jans/` — 2 INDD-Layoutdateien | P3 | Quelldateien der Studienarbeit. Nicht geöffnet (kein InDesign verfügbar); inhaltlich durch das PDF abgedeckt. Archivwert als Originalsatz. |
| `03_Vorlesungen/1–4 denkmalpfl/` — 29 PDF-Scans handschriftlicher Zusammenfassungen (comp1–5, Mörtelkurs 1–3, epistemische Objekte, kulturelles Gedächtnis, klassische Archäologie, Zickzack, Umbau Zukunft Bestand, praktische Denkmalpflege, Punkt im Raum, über die Zeit, Exactitude) | P3 | Handschriftliche Lernnotizen zu den Pflichttexten, gescannt. Stichprobe `Moertelkurs_1.pdf` visuell gelesen: Kalkkreislauf nach Glaser, inhaltlich redundant zum Glaser-PDF. Verfasser nicht belegt. |
| `00_Algemein/ETH Zürich - Vorlesungsverzeichnis - Lerneinheit.pdf` · `00_Algemein/00_Inhaltsverzeichnis/Leseempfehlungen/101128_Semesterprogramm_Leseempfehlungen.pdf` | P3 | Organisatorisches Beiwerk. Das PDF ist ein Scan der DOCX-Fassung ohne Textlayer. |
| `04_Veranstalltungen/00_Historismus_in_Zuerich/exkursion_20121005.pdf` | P3 | Exkursionsblatt, praktisch textlos (170 Zeichen). |
| `Thumbs.db` (6 Stück in `03_Vorlesungen/`) | **X** | Windows-Systemdateien, kein Inhalt. |
| `denkmalpflege_zusammenfassungen_texte13.pdf` (in der Sektionswurzel) | **X** | **0 Byte.** Leere Hülle; die vollständige Fassung liegt in `03_Vorlesungen/`. |
| `02_Literatur/Petze/Petze_Maeder_rundsaetze_und_methoden_der_denkmalpflege_1.pdf` · `02_Literatur/Hassler_Uta/Hassler_Umbau_die_zukunft_der_Zeit_Baumeister.pdf` | **X** | Bit-identische Dubletten (per `md5` verifiziert; die einzigen zwei exakten Dubletten der ganzen Sektion). |
| `03_Vorlesungen/3+4 denkmalpfl/` — 20 JPG | **X** | Formatdubletten: zu jedem JPG liegt im jeweiligen Unterordner «Neuer Ordner» dieselbe Seite als PDF. Reines Bildmaterial. |
| `00_Algemein/Fotos_Vorlesung/` (4 TIF, je 9,5 MB) · `.../Leseempfehlungen/` (2 TIFF-Bildschirmfotos) · `00_Algemein/E1_grundrissplan.gif` · `02_Literatur/Bildschirmfoto 2012-12-28.png` | **X** | Reines Bildmaterial ohne Text, teils abfotografierte Projektionsfolien ohne Kontext. |
| `00_Algemein/unwichtig/` (3 Dateien) | **X** | Vom Ablegenden selbst als unwichtig bezeichnet; Inhalt (3D-Modeling-Folien, Himmelmann, Reading-Liste) bestätigt das. |
| `00_Algemein/details_nachpruefung.pdf` · `02_Literatur/bestellkarte_bautechnik_des_historismus_.pdf` | **X** | Prüfungsorganisation 2007 und Buchbestellkarte. Ohne Fachgehalt. |

**Zählung:** P1 = 8 · P2 = 39 · P3 = 67 · X = 42 · Summe 156.

## Was hier für JANS drinsteckt

### 1. Das SIA-Merkblatt 2017 ist der wertvollste Einzelfund

`02_Literatur/SIA/sia2017.pdf`, Ausgabe 2000, 10 Seiten, Copyright SIA Zürich. Es liefert
ein fertiges Beurteilungsraster für die Frage «erhalten oder ersetzen», das der Büroarbeit
bisher fehlt. Aufbau: Einleitung, Aufbau und Vorgehen, Ablaufschema, Kriterien, Bewertung.

Die zwölf Kriterien im Wortlaut des Merkblatts:

Immateriell: 1 Situationswert, 2 Historisch-kultureller Wert, 3 Gestalterischer Wert,
4 Handwerklich-technischer Wert, 5 Sozio-kultureller Wert, 6 Emotionaler Wert.

Materiell: A Lage/Standort, B Nutzung, C Bausubstanz, D Gesellschaft, E Wirtschaftlichkeit,
F Umwelt.

Die Bewertungsmatrix trägt zwei Achsen, **Zustand** und **Entwicklungspotential**, je von
«− −» bis «+ +», und stellt die Gewichtung der Kriterien über die Kreisgrösse dar
(sehr wichtig / mässig wichtig / unwichtig). Das Formular führt Bauherr, Objekt,
Konzept-Variante und Bewertende auf, ist also für den Variantenvergleich gebaut.

Zwei Definitionen sind wörtlich anschlussfähig an bestehende JANS-Skills. Unter
**C Bausubstanz** nennt das Merkblatt Art und Zustand des Bauwerks und seiner
Infrastruktur, Tragsicherheit und Dauerhaftigkeit, Gliederung der Tragstruktur, Zustand von
Gebäudehülle und Oberflächen, Instandsetzungs- bzw. Erneuerungsbedarf und
Veränderbarkeit, mit dem Hinweis, dass die Tragstruktur generell eine längere Lebensdauer
aufweist als bewitterte Oberflächen oder Innenausbauten. Das ist die Gliederung, nach der
`ankaufspruefung` ihren CapEx-Fahrplan aufbaut. Unter **A Lage** stehen Nutzung und Dichte
der Besiedlung, Baugrund inklusive Altlasten, Exposition, Erschliessung und Immissionen,
Gefährdungspotential (Hochwasser, Lawinen, Erdrutsch) und rechtliche Bestimmungen wie
Baulinien, mit der Feststellung, dass Baugrund, Topographie und Exposition über die Zeit
konstant bleiben, während die übrigen Aspekte durch Nachbarschaft oder Gesetzesrevisionen
verändert werden. Das deckt sich mit dem, was `planungsgrundlagen` ohnehin beschafft.

Vorbehalt: Ausgabe 2000, urheberrechtlich geschützt, Textlayer fehlt. Vor produktiver
Verwendung ist über den Skill `normen` zu klären, ob eine neuere Ausgabe existiert oder das
Merkblatt zurückgezogen wurde. Die Kriterienliste selbst darf nur sinngemäss und mit
Fundstelle wiedergegeben werden.

### 2. Die Begriffssystematik der Denkmalpflege, belegt und mit Charta-Artikeln

Aus `zusammenfassung_denkmaltexte_rw.pdf`, Text 12 (Petzet/Mader, «Grundsätze und Methoden
der Denkmalpflege»), gelesen und geprüft. Die Kette **Instandhaltung → Instandsetzung →
Sanierung → Konservierung → Restaurierung → Renovierung → Rekonstruktion** ist dort mit
Abgrenzungen und den zugehörigen Artikeln der Charta von Venedig 1964 belegt.

Was davon in Behördengesprächen und Baueingaben trägt:

- **Instandhaltung** ist die schonendste Massnahme, Charta von Venedig Art. 4: die Erhaltung
  der Denkmäler erfordert zunächst ihre dauernde Pflege. Der Text schlägt Wartungsverträge
  mit Restauratoren vor, damit Anfangsschäden ohne besonderen Aufwand behoben werden.
- **Instandsetzung** heisst reparieren statt erneuern, in historischen Materialien und
  Techniken, und zwar ausdrücklich nicht nur aus ästhetischen, sondern aus bauphysikalischen
  Gründen. Das genannte Beispiel, eine Betonplombe im Mauerwerk zerstöre weiter, ist ein
  Argument, das in jeder Bauherrenrunde funktioniert.
- **Reversibilität** ist der durchgehende Grundsatz. Der Text formuliert ihn baupraktisch:
  neue Wände und Nasszellen sind als Möbel zu verstehen, die eingesetzt und wieder
  entfernt werden können.
- **Stileinheit ist kein Restaurierungsziel** (Art. 10). Alle Epochenbeiträge sind zu
  respektieren, eine Aufdeckung nur unter drei kumulativen Bedingungen gerechtfertigt.
- **Ergänzungen müssen unterscheidbar sein** (Art. 12), sich harmonisch einfügen und den
  Wert als Kunst- und Geschichtsdokument nicht verfälschen; sie tragen den Stempel unserer
  Zeit (Art. 9).
- **Art. 11:** das Urteil darüber, was beseitigt werden darf, darf nicht allein vom
  Projektverantwortlichen abhängen. Ein Satz, der bei Konflikten mit der Bauherrschaft die
  Beizugspflicht der Denkmalpflege begründet.

Die fünf **Grundsätze der Reparatur** stehen in kompaktester Form in den Prüfungsfragen
(`03_Vorlesungen/3 denkmalpfl/Prüfungsfragen Denkmalpflege Sommer 2010-2.pdf`): Vorrang der
Reparatur, Reparatur mit traditionellen Methoden und Materialien, Authentizität,
Reversibilität, Beschränkung auf das Notwendigste.

Vorbehalt: Es handelt sich um eine studentische Zusammenfassung, nicht um die Primärquelle.
Für ein ausgehendes Dokument sind die Charta-Artikel am amtlichen Wortlaut zu verifizieren;
die Charta von Venedig ist über ICOMOS frei zugänglich.

### 3. Ausschreibungsreifes Ausführungswissen: Trockenmauer und Kalk

**Trockenmauer** (`Trockenmauerverband CH Richtlinie_2012_0.pdf`, SVTSM, Version 01/2012).
Die Richtlinie sagt selbst, wozu sie dient: als Diskussionsgrundlage mit der Bauherrschaft,
zur genauen Definition des gewünschten Mauerwerks beim Beizug fremder Bauunternehmen und
als Vergleichsmassstab der Qualitätssicherung während und nach dem Bau. Zur Devisierung
hält sie fest, dass **keine Norm die möglichen Qualitäten von Trockenmauerwerk definiert**,
weshalb entweder jedes Mal detailliert beschrieben oder die Richtlinie als Anhang zum
Ausschreibungstext beigelegt werden muss. Die Ausschreibungseinheit ist bei berechneten
Stützmauern das Volumen aus Trapezquerschnitt mal Länge, im Gartenbau die m² Sichtfläche.
Ein weiterer verwertbarer Punkt: bei einschaligem Mauerwerk lässt sich keine Aussage über
die Tragfähigkeit machen, erst der durchgehende Mauerkörper im Verband ergibt eine
Schwergewichtsmauer, die ein Ingenieur berechnen kann. Die Richtlinie nennt ihre
Bezugsdokumente, darunter **SIA 178 Naturstein-Mauerwerk, 1980** und SIA 113 von 1943.

**Kalk und Anstrich** (`Glaser_Wilhelm_...fassungstechniken.pdf`, ergänzt durch die
Kurzfassung in `zusammenfassung_denkmaltexte_rw.pdf`, Text 5). Belegte Verarbeitungsdaten:
Brennen bei 700 bis 900 °C, Löschen exotherm, Sumpfkalk nach längerer Lagerung; die
Carbonatisation läuft nur im feuchten Milieu und dauert bis zur Vollständigkeit
**etwa 30 Tage, bei Mörtel etwa 240 Tage**. Daraus folgt unmittelbar die Ausführungsregel,
die in ein Devis gehört: Kalkanstriche und Kalkputzarbeiten nie in praller Sonne, sondern
bei feuchter Witterung oder mit Feuchthaltung durch nasse Tücher und Gerüsteinhausung.
Sumpfkalk bindet nur 10 bis 20 % Pigmente, für dunkle Anstriche braucht es Kasein als
zweites Bindemittel. Zulässig sind nur kalkechte, alkalibeständige Pigmente; der Text
listet Erd-, Mineral- und organische Pigmente einzeln auf.

Diese Daten sind für die Devisierung von Gipser- und Malerarbeiten am Bestand nützlich.
BKP-Zuordnung wurde bewusst nicht vorgenommen, sie ist bei Verwendung nach Rule
`bkp-2017-referenz` in der offiziellen Liste zu prüfen.

### 4. Eine eigene, verwendbare Gliederung für die Baudokumentation

`01_Arbeiten/Haus_Jans/PDF/120705_Denkmalpflege_Haus_Jans.pdf` hält das Ergebnis einer
Besprechung mit der Denkmalpflege vom 24.04.2007 fest und gliedert die Baudokumentation in
sieben Teile: 1 denkmalpflegerische Recherchenbegründung, 2 historischer Kontext,
3 Monographie (chronologische Ereignisliste mit Umbauten, Renovationen, Erneuerungen),
4 Raumbuch, 5 Baubeschreibung, 6 Würdigung, 7 Archivierungsbestand.

Zwei Punkte sind methodisch brauchbar. Zum **Raumbuch** hält das Dokument fest, es gebe
analytische Auskunft über Raum, Wand/Boden, Zustand, Interpretation und Massnahmen, und es
würden **keine persönlichen Meinungen dokumentiert**. Das ist dieselbe Trennung von Befund
und Bewertung, die JANS in Zustandsberichten und der Ankaufsprüfung ohnehin führt. Zur
**Würdigung** fragt es nach den wertvollen Einzelteilen bis hin zu Türgriff und Heizkörper
und nach den Schlüsselstellen des Objekts: wo etwas gemacht werden sollte und wo nichts
gemacht werden darf. Als Archivquellen nennt es Stadtarchiv (seit 1865 alle Baueingaben),
Bildarchiv ZHB und Familienarchiv.

Ergänzend die vier Grundsätze des wissenschaftlichen Aufnahmeplans nach Armin von Gerkan
(aus der `rw`-Zusammenfassung, Text 14, Schmidt): sorgfältige Darstellung der sichtbaren
Oberflächen, unterschiedliche Darstellung des Baumaterials über Schraffuren,
**unterschiedliche Darstellung der Bauperioden über Farbe**, Bemassung der
Aufnahmezeichnung. Die farbliche Trennung der Bauperioden ist bis heute die Konvention in
Bestandsplänen.

### 5. Umbau gegen Neubau: die Argumente sind hier belegt vorhanden

Aus `Exkurs_umbau_Zusammenfassung.pdf` (Hassler/Kohler, Baumeister 4/1998) und
`hassler_altlast_Zusammenfassung.pdf`:

- Gebäude überdauern im Schnitt rund **80 Jahre**, auch nachdem in der zweiten Hälfte des
  20. Jahrhunderts das Haus als Langzeitprodukt aufgegeben wurde.
- Die Umbaulösung ist «konkurrenzlos günstig», sowohl im Material- als auch im
  Energieverbrauch, gegenüber Recycling und «ökologischem Bauen».
- Sieben Kriterien sollen jedem Planungsentscheid zugrunde liegen: Lebenserwartung der
  baulichen und technischen Anlagen, Ressourceneffizienz über lange Zeitdauer,
  Reparaturfähigkeit, Demontierbarkeit, Wiederverwendbarkeit der Teile, Ungefährlichkeit
  der Konstruktion als Müll, Trennbarkeit und Deponierbarkeit.
- Die Warnung vor der «Vergiftung durch Sanierung»: durch Sanierung entstehen kurzlebige
  Konstruktionen, nicht reparierbare Ersatzteile verdrängen potenziell langlebige,
  reparaturfähige Teile.

Das Freitagskolloquium vom 26.10.2012 («Energiepolitiken & Werterhaltung», IDB gemeinsam
mit der Konferenz der Schweizer Denkmalpflegerinnen und Denkmalpfleger und ICOMOS Schweiz,
Eröffnungsbeitrag Uta Hassler «Substanzerhaltung und Energieverbrauch») zeigt, dass diese
Spannung zwischen Denkmalpflege und Energievorschriften schon damals institutionell
verhandelt wurde. Für die Schnittstelle zum Skill `energie` bei geschützten Objekten ist
das ein brauchbarer Anker, aber nur ein Programm, kein Inhalt.

### 6. Was die Sektion nicht hergibt

Kein Schweizer Denkmalschutzrecht. Weder das kantonale Natur- und Heimatschutzgesetz noch
Inventarrecht, Schutzabklärung, kommunale Inventare oder der Ablauf einer
Unterschutzstellung kommen vor. Die Sektion ist theoriegetrieben und international
ausgerichtet; die schweizerische Verfahrensseite fehlt vollständig und muss für Projekte
mit Schutzobjekten anderswo beschafft werden.

Keine Kostenkennwerte für Denkmalpflege-Massnahmen. Kein einziger CHF-Betrag, kein
Zuschlagsfaktor für denkmalpflegerische Auflagen.

Keine aktuellen Normen ausser dem SIA-Merkblatt 2017 von 2000. Alle genannten Normen
(SIA 113 von 1943, SIA 178 von 1980) stammen aus der zitierten Trockenmauer-Richtlinie und
sind mit hoher Wahrscheinlichkeit überholt.

### 7. Empfehlung für die Destillation

Mit den acht P1-Dateien beginnen; sie tragen praktisch den gesamten Bürowert und sind alle
gelesen. Aus ihnen entstehen sinnvoll drei Wiki-Artikel: Erhaltungswert-Bewertung nach
SIA 2017, Begriffssystematik der Denkmalpflege mit Charta-Bezügen, und Kalk/Naturstein als
Ausführungswissen für Bestandssanierungen.

Die P2-Scans lohnen die OCR nur gezielt: die Steinbearbeitungs- und Werkstofftexte, falls
ein konkretes Natursteinobjekt ansteht. Die Theorie-Scans (P3) sollten gar nicht destilliert
werden, weder aus Nutzen- noch aus Urheberrechtsgründen; beide Zusammenfassungs-PDF decken
ihren Gehalt ab.

Vor jeder Destillation ist `00_Algemein/00_Inhaltsverzeichnis/Quellenangaben/quellenangaben_hs_10_1.pdf`
zu lesen, weil es zu jedem Scan die vollständige bibliografische Angabe liefert. Ohne diese
Datei sind die Dateinamen der Scans nicht sauber auflösbar.
