# QUESTIONS architektur-fachwissen


Offene Fragen der Wissensbasis, neueste Blöcke zuoberst nachtragen. Jede Frage nennt, woher
sie stammt und wer sie beantworten kann.

## 260829 — Dritter Destillat-Lauf Korpus 4, Sektion `01_Konstruktion`

Quelle: Lane FACHWISSEN, dritter Destillat-Lauf Korpus 4 `archiv-fachwissen`, alle vier
P1-Gruppen der Sektion `01_Konstruktion` destilliert.

**#37 Sammelvorbehalt: sämtliche Norm-/Kennwertangaben dieser Sektion vor Verwendung gegen
aktuelle Norm-/MuKEn-/EnFK-Fassung prüfen.** Die Sektion trägt durchgehend Norm- und
Datenstände zwischen 1991 und 2010 (SIA 180:1999, SIA 380/1:2009, SIA 331:2008, EnFK-
Fensterblatt Juni 2009, ift-Richtlinie FE-05/1 Mai 2002, AHB-Richtlinie 12.10.2005). Alle
acht in diesem Lauf neu geschriebenen Artikel starten deshalb `status: speculative` und
tragen in «Offene Punkte» den Verweis auf Rule `normen-referenz`. Wer diese Kennwerte in
einem Nachweis oder Devis verwendet, muss sie zwingend zuerst gegen die aktuell gültige
SIA-/EnFK-/MuKEn-Fassung gegenlesen — keiner der acht Artikel ist als Nachweisquelle
freigegeben, nur als Verständnis-/Argumentationsgrundlage.

**#38 ift-Richtlinie FE-05/1 explizit als deutsche Richtlinie markiert, methodisch aber
wertvoll.** [[beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1]] destilliert
die Geländekategorien-Logik I–IV und die «schwächstes Einzelelement bestimmt die
Gesamtklassifizierung»-Regel als übertragbares Denkraster; Windlastzonen und Prüfdruckwerte
selbst sind spezifisch deutsch und nicht auf Schweizer Projekte übertragbar. Offen: ob ein
Schweizer SN-EN-Pendant zu EN 12207/12208/12210 im Hub-Normenbestand verfügbar ist (Skill
`normen` zu befragen, nicht in diesem Lauf geprüft).

**#39 P2 zurückgestellt: Deckenaufbauten-Vergleichsstudie und Lüftungsgrundlagen/CO2-
Kennzahlen.** `02_Bauelemente/04_Decke_Boden/100601_Deckenstruktur_Resarch_Oswald/
ResearchDeckenstruktur.pdf` (Konstruktionshöhen-Vergleich realisierter Bauten, Werte laut
Kurzbefund nur aus Grafiken ablesbar) und die Lüftungs-Foliensätze in
`01_Technische_Inst_I_II/` (Aufgaben der Lüftung, Aussenluftwechselrate/CO2-Kennzahlen,
Healthcare-relevant) wurden in diesem Lauf aus Zeitgründen nicht mehr destilliert, obwohl
im Phase-0-Inventar als lesbar/brauchbar vermerkt. Kandidaten für den nächsten P2-Lauf
dieser Sektion.

**#40 `04_Bauphysik_Energie` und `07_Gebäudehülle`: Restdateien der beiden grössten
P1-Gruppen nicht einzeln destilliert.** In `04_Bauphysik_Energie/04_Standarts_Tabellen_
Merkblatt_Formel/` blieben Mollier-/hx-Diagramm, Wasserdampfsättigungsdruck, SIA-181-
Akustiktabelle, SUVA-Absorptionskoeffizienten und die separate Datei
`Bauphysikalische_Kennwerte_Fensterrahmen.pdf` ungeprüft (inhaltlich vermutlich in den
geschriebenen Uw-Wert-Artikel bereits eingeflossen oder reine Tabellenreferenz ohne
destillierbaren Fliesstext). In `07_Gebäudehülle/01_Lernmaterial/` blieben
`Fassadensysteme_2.pdf`, `Wetterschutz_Klimafassade.pdf` sowie mehrere Gloor-Dateien
(Fassadenbekleidungen, Rohbausituationen, Binder) ungeprüft. Vor einem P2-Lauf dieser
Sektion einzeln gegenlesen, ob dort destillierbarer Neuwert steckt, der über die acht
geschriebenen Artikel hinausgeht.

## 260829 — Zweiter Destillat-Lauf Korpus 4, Sektion `03_Bauprozesse_I_II`

Quelle: Lane FACHWISSEN, zweiter Destillat-Lauf Korpus 4 `archiv-fachwissen`.

**#33 Cross-KB-Fund: Grobkostenmethodik-Fachtext Raphael Jans gehört nach
`wissen/grobkosten`, nicht in diese KB.** `03_Bauprozesse_I_II/03_Kostenplanung/
11_Kostenkennzahlen/SIA416/01_Konzept/Grobkostenberechnung_SIA116_SIA416.docx` (plus
PDF-Fassung `Jans_Grobkostenberechnung_Gebaeudeanlagen.pdf`) ist ein eigener, zitierfähiger
Fachtext mit belegten Kennwertbandbreiten (500–1'500 CHF/m³ Wohnbau), der Divisor-70-Regel
BKP 2 → BKP 1-9 und der Erkenntnis «Kompaktheit schlägt Bauweise» an zwei
Referenzobjekten (Bertoni Lugano, Hirschi Adligenswil, beide 2004). Gehört fachlich in die
KB `wissen/grobkosten`, nicht in `architektur-fachwissen` — dort in einem eigenen Lauf zu
destillieren. Preisstände 1985–2004, nicht ohne Indexierung verwendbar.

**#34 SIA-451-Testfixture liegt bereit, aber ungenutzt.**
`03_Bauprozesse_I_II/03_Kostenplanung/01_Phasen_Kostenaufstellungen/03_Ausschreibung/
ausschreibung maler/sia451.01s.txt` ist ein echtes, unverschlüsseltes SIA-451-Flatfile
(Version 451-92, Messerli BAUAD 2008, Malerarbeiten-LV NPK 675) — eine reale Testdatei mit
bekannter Satzstruktur für den geplanten SIA-451-Parser. Die danebenliegende
`npk_texte.msia.txt` ist bzip2-komprimiert und vermutlich auspackbar (NPK-Volltexte
desselben Projekts). Kein Wiki-Artikel, sondern ein Hinweis für die Entwicklung des
Parsers — Dateien vor weiterer Aufräumung der Sektion sichern.

**#35 Chance für `wissen/normen`: SIA-102:2003 Art. 7.3–7.5 liegt volltextlich im Archiv
vor.** `03_Bauprozesse_I_II/03_Kostenplanung/03_Honorarberechnung/SIA102/Seiten aus
102_d_Aufwandberechtigte_Bausumme.pdf` (© 2003 SIA Zürich) trägt Art. 7.3–7.5 im
Wortlaut (Formelkette Tp = Tm×i, H = Tp×s×h; vollständige Positiv-/Negativliste der
aufwandbestimmenden Baukosten). `wissen/normen/destillate/sia-102-2003.md` ist mit Stand
29.08.2026 noch `status: speculative` ohne Volltext-Destillat. Diese Archiv-Datei wäre eine
gute Quelle für einen künftigen `normen`-Lauf — nicht in `architektur-fachwissen`
destilliert (Abgrenzung Norm-Original, siehe `specs/archiv-fachwissen-spec.md`).

**#36 VSS SN 640 291a (Parkierungsgeometrie) nicht ausgewertet.** Norm-Original, laut Spec
nicht in dieser KB zu destillieren; ob eine methodische Parkplatz-/Garageneinfahrt-Geometrie
bereits in `wissen/normen` oder anderswo im Hub steht, ist offen und für
Machbarkeits-/Volumenstudien laufend relevant.

## 260829 — Erster Destillat-Lauf Korpus 4, Sektion `02_Denkmalpflege`

Quelle: siebter Destillat-Lauf des Tages, Lane FACHWISSEN, erster Lauf für Korpus 4
`archiv-fachwissen` nach der Spec-Stufe.

**#31 Geltungsstand SIA-Merkblatt 2017 «Erhaltungswert von Bauwerken» ungeklärt.** Ausgabe
2000, laut SIA-Konvention drei Jahre gültig und verlängerbar; ob eine Verlängerung,
Nachfolgeausgabe oder Rückzug erfolgt ist, lässt sich aus dem Korpus nicht ableiten. Das
Merkblatt ist mit Stand 29.08.2026 nicht in `wissen/normen/` erfasst (weder Register noch
Inventar). Zu klären über Skill `normen` bzw. direkt beim SIA, bevor der Artikel
[[erhaltungswert-bewertung-sia-merkblatt-2017]] in einem Kundenerzeugnis verwendet wird.

**#32 Fünf Grundsätze der Reparatur (P2, `Prüfungsfragen Denkmalpflege Sommer 2010-2.pdf`)
noch nicht destilliert.** Kompakte Merkform (Vorrang der Reparatur, traditionelle Methoden/
Materialien, Authentizität, Reversibilität, Beschränkung auf das Notwendigste), die die
Begriffskette in [[denkmalpflege-begriffssystematik-charta-von-venedig]] sinnvoll ergänzen
würde. Kandidat für den P2-Lauf dieser Sektion.

## 260829 — Destillat-Marathon Korpus 3 abgeschlossen (P1), Korpus 4 Spec geschrieben

Quelle: neun Destillat-Läufe 29.08.2026, Lane FACHWISSEN. Alle P1-Positionen des Korpus
`buero-referenzen` über sämtliche 23 inventarisierten Sektionen destilliert (46 Wiki-Artikel
seit dem 29.08.2026, davon 37 in diesem Lauf); Spec für Korpus 4 `archiv-fachwissen`
geschrieben.

**#27 P2 von `buero-referenzen` ist komplett offen.** Über alle 23 Sektionen bleibt der
gesamte P2-Bestand unbearbeitet (u. a. Christiaanse-Themenblätter, KCAP-Projektblätter,
Oberflächenbehandlung-Aktennotiz, TERRATON-Herstellerbeschrieb, Lichtkonzept-Brief). Ein
künftiger P2-Lauf ist nicht dringlich, aber nötig, bevor der Korpus im Sinn von
`KORPUS-QUEUE.md` als «erledigt» gelten kann. Wer entscheidet, ob P2 vor oder nach Korpus 4
folgt: Raphael oder der Loop-Betrieb nach Ertragslage.

**#28 Phase 0 von `archiv-fachwissen` ist lückenhaft — drei der ursprünglich 23 geplanten
Sektionen fehlen ganz.** `KORPUS-QUEUE.md` nannte am 23.08.2026 «4 von 23», tatsächlich
liegen am 29.08.2026 bereits 20 Inventardateien vor; unklar bleibt, welche drei Sektionen
noch nie inventarisiert wurden und ob 23 überhaupt die endgültige Sektionszahl des Archivs
ist. Zu klären vor dem letzten Destillat-Lauf dieses Korpus.

**#29 Vier Sektionen von `archiv-fachwissen` (`04_Politik`, `05_Kultur_Gesellschaft_Stil`,
`06_Reisen`, `07_Religion`) sind ungeklärter Natur.** Die Spec `archiv-fachwissen-spec.md`
markiert sie vorsorglich mit einem Privatunterlagen-Vorbehalt (reisejournalartiger
Charakter denkbar), ohne sie im Detail geprüft zu haben — noch nicht einmal alle sind
inventarisiert. Erste inhaltliche Prüfung steht aus.

**#30 Christian Kerez erscheint in einer weiteren Sektion.** `03_Bauprozesse_I_II`
(Korpus 4) enthält ein Kostenplanungs-Dossier zum selben Objekt Leutschenbach wie
`18_Projektkostenplanung` (Korpus 3, bereits mit neun Artikeln destilliert). Die
Korpus-4-Spec verlangt eine Duplikatsprüfung gegen `wiki/INDEX.md` vor jedem neuen
Leutschenbach-Artikel; ob darüber hinaus weitere Christian-Kerez-Objekte in noch nicht
inventarisierten Sektionen beider Korpora auftauchen, ist offen.

## 260823 — Inventar Phase 0, 16 Sektionen (Korpora buero-referenzen und archiv-fachwissen)

Quelle aller Punkte: die 16 Inventardateien unter `raw/inventar/`, Lauf vom 23.08.2026.
Zusammenfassung des Laufs: `outputs/2026-08-23_korpus-erschliessung.md`.

### A Steuerung, Entscheid Raphael

**#1 Welche Sektionen werden als nächstes inventarisiert?** Die beiden Korpora umfassen laut
`CLAUDE.md` 32 und 23 Sektionen, zusammen 55. Inventarisiert sind 16, es fehlen 39. Nach der
Queue-Regel in `skills/wissens-destillat/KORPUS-QUEUE.md` ist die Reihenfolge ein Entscheid
Raphaels und kein Loop-Entscheid. Offen ist auch, ob die restlichen Sektionen überhaupt
vollständig erschlossen werden sollen oder nur gezielt.

**#2 Wo landen Entwurfs- und Referenzbestände?** Drei grosse P2- und P3-Bestände zielen nicht
auf diese KB, sondern auf bestehende: die 287 Seminarreise-Reader (`02_Bibliothek`), das
quellenannotierte Innenraum-Bildarchiv mit 136 Aufnahmen (`01_Innenarchitektur`) und der
Publikations-Andruck mit sechs Schweizer Einfamilienhäusern (`19_Puplikationen`). Naheliegend
wären `wissen/entwurfs-referenzen` und `wissen/architekten-synobsis`. Die Abgrenzung ist zu
bestätigen, bevor destilliert wird, sonst entsteht dasselbe Wissen zweimal.

**#6 Ersetzt das Kennzahlenraster Leutschenbach das heutige Raster in `wissen/grobkosten`?**
Das Blatt führt GF, HNF, GV nach SIA 416 und RI nach SIA 116 konsequent gegen BKP 2 und
BKP 1 bis 9 und ist damit strenger als das dort heute verwendete Format. Die Frage stellt
bereits das Inventar `archiv-fachwissen__03_Bauprozesse_I_II.md` (offene Frage 5) und markiert
sie als Entscheid Raphael.
> **Nachtrag Wissens-Chef Run 41, 23./24.08.2026 — die Schulbau-Kennwert-Achse existiert bereits.**
> Vor einer Destillation des Leutschenbach-Rasters (Report 05.6) sind zwei bestehende Bestände
> gegenzulesen, sonst entsteht dasselbe Wissen ein drittes Mal:
> `wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (`established`, 20.07.2026,
> 25 belegte Quellen) und `wissen/entwurfs-referenzen/wiki/parameter-sets/schule-volksschule-ch.json`.
> Der erstgenannte Artikel hält ausdrücklich fest, dass für **CHF/m³** die KB
> `wissen/grobkosten` führend bleibt. Die Frage «ersetzt das Raster jenes in `grobkosten`?» ist
> damit falsch geschnitten: zu entscheiden ist, ob das Leutschenbach-Blatt die **Methode**
> (Kostenermittlungskreislauf, Gliederung gegen BKP 2 und BKP 1-9) beisteuert — Kennwerte
> selbst bleiben bei den in der Fuehrungs-Matrix genannten KBs.


**#15 Aufbewahrung der Bewerbungsunterlagen 2007 bis 2010.** In `16_Portfolios` und in
`02_Bibliothek/06_Portfolios/` liegen Bewerbungsdossiers Dritter mit Geburtsdaten,
Privatadressen, Passfotos, Zeugniskopien und in einem Fall Angaben zu Eltern und Geschwistern.
Ob dafür eine Aufbewahrungsgrundlage besteht, ist ungeklärt. Entscheid Raphael; das Inventar
hat die Quellordner nicht angefasst.

**#16 Welches Projekt zeigt `diplom_ho3.tif`?** Einzige Datei der Sektion `14_Modellfotos`.
Der Dateiname deutet auf eine Diplomarbeit, das Kürzel «ho» ist ungeklärt, das Bild trägt
weder Text noch Titelfeld. Nur Raphael kann das auflösen. Ohne Auflösung bleibt das Bild
unbeschriftet und ist nicht publizierbar. Offen ist zusätzlich, ob es aus der
Referenzenbibliothek in die Werk- und Portfolio-Ablage gehört.

### B Beleglücken, vor jeder Zitierung nach aussen zu schliessen

**#3b Die BGS-Honorarblatt-Tabelle (20.04.2005) enthält BKP-Codes, die es im BKP 2017 nicht
gibt — Wissens-Chef Run 41, 23./24.08.2026.** Die Inventare
`raw/inventar/buero-referenzen__18_Projektkostenplanung.md` und
`raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` führen dieselbe Tabelle und leiten sie
mit «der Aufbau ist unmittelbar übertragbar» ein. Gegen `references/bkp-2017/BKP-2017-Liste.md`
gemessen: **«019»** heisst dort «Übriges» unter 01 Grundstücks-/Baurechtserwerb, nicht Abbruch
(Abbruch ist **112.1**); ein Code **«071» existiert im BKP 2017 überhaupt nicht**. Die Codes
stammen aus einer BKP-Altausgabe. Vor jeder Übernahme in einen Honorar- oder Kostenkontext ist
jeder Code einzeln gegen die BKP-2017-Liste zu mappen — sachbezogen nach der bezeichneten
Leistung, nicht mechanisch (Rule `bkp-2017-referenz`, Korrektur 04.08.2026). Die Inventardateien
selbst bleiben unangetastet (`raw/` wird nie editiert).

> **Nachtrag Lane FACHWISSEN, 29.08.2026 (Destillat-Lauf `18_Projektkostenplanung`) — ein
> dritter Phantom-Code.** Beim Schreiben von `wiki/honorarberechtigte-bausumme-anrechenbarkeit.md`
> zusätzlich gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft: Dieselbe BGS-Tabelle
> (20.04.2005) führt auch **«80–81» für Norminventar**. Im BKP 2017 ist die Hauptgruppe 8
> jedoch bewusst unbesetzt («Reserve», keine Untergruppen). Auch dieser Code ist also kein
> gültiger BKP-2017-Verweis. Der neue Artikel führt deshalb primär die Kostengruppen-
> Bezeichnung und das Anrechenbarkeits-Prinzip (100/70/50/0 %), die historischen Codes nur
> als Beleg-Zitat mit Warnhinweis.


**#3 Bibliografische Fundstelle der Genauigkeitstabelle.** Belegt ist die Buchseite 148 mit
Abb. 8.4 «Kostenermittlungskreislauf» und der Kurzbeleg «PM Ruosch Brandenberger» aus dem
Dateinamen. Ausgabe und Erscheinungsjahr des Werks sind aus dem Bestand nicht belegbar. Die
Tabelle ist der erste Destillat-Kandidat (Report 05.1) und braucht die vollständige
Fundstelle, bevor sie in ein ausgehendes Dokument fliesst.

**#4 Gelten die SIA-102-Phasenanteile unverändert in Ausgabe 2014?** Zwei unabhängige
Rechenwerke belegen dieselben Anteile (Vorprojekt 9 Prozent, Bauprojekt 21, Bewilligung 2,5,
Ausschreibung 18, Ausführungsplanung 16, Ausführung 29, Abschluss 4,5), beide nach Ausgabe
2003. Ob die Anteile in SIA 102:2014 unverändert gelten, sagt keine Datei beider Korpora. Am
Original prüfen über den Skill `normen`, bevor sie in eine Honorarofferte fliessen.
> **Nachtrag Wissens-Chef Run 41, 23./24.08.2026 — zur Hälfte beantwortet, ohne neue Beschaffung.**
> Der Fragetext bleibt stehen; er ist als Aussage über die zwei Korpora korrekt. Im Hub ist die
> operativ entscheidende Hälfte aber belegt: `wissen/normen/destillate/sia-102-2014.md`
> (`status: established`, verifiziert 260714, S. 1-58 komplett gelesen), **Ziff. 7.7**, führt
> genau diese sieben Anteile — Vorprojekt 9 %, Bauprojekt 21 %, Bewilligungsverfahren 2,5 %,
> Ausschreibung 18 %, Ausführungsprojekt 16 %, Ausführung 29 %, Abschluss 4,5 %, Basis
> Phasen 3+4+5 = 100 %. Die Ausgabe **2014 führt sie also**; ein zweiter Verifikationslauf
> gegen dasselbe PDF ist nicht nötig.
> **Drei Vorbehalte, die mitwandern müssen:**
> (1) Offen bleibt die andere Hälfte der Frage — «unverändert gegenüber 2003». Das Destillat
> `sia-102-2003.md` trägt `status: speculative` und kann die Kontinuitätsaussage nicht stützen.
> (2) SIA 102:2014 ist durch **SIA 102:2020** abgelöst, und 2020 kennt die
> Baukosten-Prozentmethode nicht mehr (die Ordnung endet nach Art. 6). Eine Verwendung ist
> immer als «nach SIA 102:2014, Ziff. 7.7» oder als bürointerne Konvention auszuweisen —
> **nie** als SIA-102:2020-Fundstelle.
> (3) **Nicht** auf `skills/honorarberechnung-sia102` verweisen: dessen Haupttabelle führt eine
> bürointerne JANS-Konvention mit **abweichenden** Werten (Vorprojekt 11 %, Bewilligung 5 %,
> Ausführungsprojekt 19 %, Ausführung 20 %, dazu Vorstudien 4 % innerhalb der 100 %). Führend
> ist nach der Fuehrungs-Matrix (`wissen/koordination/QUERBEZUEGE.md`) allein `normen`.


**#5 Es fehlt ein belegter Indexpfad auf heute.** Sämtliche Kostenkennwerte beider Korpora
haben Preisstände zwischen 1985 und 2012. Keine Sektion enthält einen Indexpfad. Ohne ihn
bleibt jeder destillierte Kennwert ein historischer Datenpunkt und darf in keiner
Kostenaussage verwendet werden.

**#7 Welche Konstruktionslehre Hochbau ist die Quelle der Sanitär-Masstabellen?** Der Scan in
`12_Masse` trägt keinen sichtbaren Titel; Autor, Verlag und Ausgabejahr sind unbelegt. Die
MD/MI/MK-Tabelle ist Destillat-Kandidat (Report 05.5). Zusätzlich: die Seitenköpfe nennen
«BKP 251» und «BKB 256» aus einem älteren BKP-Stand, beide vor Verwendung gegen
`references/bkp-2017/BKP-2017-Liste.md` zu prüfen.

**#8 Welche Neufert-Ausgabe ist der 638-seitige Scan?** Der Scan von 2001 nennt weder Auflage
noch Erscheinungsjahr der Vorlage. Vor jeder Verwendung als Referenz zu klären, sonst wird ein
überholter Massstandard zitiert. Damit verbunden: lohnt sich eine OCR-Stufe, oder ist im Büro
eine neuere Ausgabe physisch vorhanden?

**#9 Woher stammt die Definition der Baunebenkosten?** Das Blatt in `18_Projektkostenplanung`
definiert Baunebenkosten, Anlagewert und Anlagekosten präzise, nennt aber keine Quelle.
Vermutlich ein Bewertungsglossar; die Herkunft ist nachzutragen, bevor die Definition zitiert
wird.

**#10 Welche VKF-Ausgabe ist im August 2026 in ZH und SZ in Kraft?** Der Bestand belegt den
Stand 01.01.2015 (Brandschutznorm 1-15de, Richtlinie 15-15de). Ob und wie oft seither revidiert
wurde, ist aus beiden Korpora nicht ableitbar und gehört gegen `wissen/normen` geprüft.
Achtung: im selben Ordner liegt die Generation von 1996 daneben, sie darf nie zitiert werden.

### C Rechte, Personendaten, Zugangsdaten

**#11 Dürfen SEALS-Bestände in die KB?** Die INSA-PDF und die Archithese- und
Werk-Bauen-Wohnen-Scans tragen die Auflage «für nicht-kommerzielle Zwecke in Lehre, Forschung
und für die private Nutzung frei» sowie ein Verbot der Speicherung auf anderen Servern. Für
ein Architekturbüro ist «nicht-kommerziell» nicht selbstverständlich gegeben. Empfehlung bis
zur Klärung: nur Verweis mit DOI 10.5169/seals-10931 in die KB, keine Datei.

**#12 Encyclopedia of Interior Design: OCR und Urheberrecht.** Die 44 Lexikonseiten
(Hrsg. Joanna Banham) sind Buchseiten eines kommerziellen Verlagswerks ohne Textebene. Vor
einer Destillation ist zu entscheiden, ob OCR gefahren wird und wie mit dem Urheberrecht
umgegangen wird.

**#13 Rechtestatus der gta-Diathek-Bilder.** Ein Teil des Innenraum-Bildarchivs in
`01_Innenarchitektur` stammt erkennbar aus der digitalen Diathek des gta der ETH. Diese
Aufnahmen sind lizenzgebunden und dürfen nicht ungeprüft in ausgehende Präsentationen.

**#14 Ist `02_Bibliothek/03_Zeitschriften/Hochparterre/Passwort.docx` noch aktiv?** Die Datei
wurde bewusst nicht geöffnet. Sie sollte von Raphael geprüft und, falls sie echte
Zugangsdaten enthält, in den Passwortmanager überführt werden. In keine KB, keinen Index und
kein Destillat.

**#23 Die leere Werkstoffliste-Vorlage trägt einen veralteten Briefkopf.** Die aktuellste
Fassung (13.03.2015) führt «Dorfbachweg 5, 8049 Zürich» und «mail@raphaeljans.ch». Gültig
ist Grubenstrasse 37, 8045 Zürich, rj@raphaeljans.ch. Die Vorlage ist erst nach Korrektur des
Kopfs wiederverwendbar; offen ist, ob eine korrigierte Fassung angelegt werden soll und wo sie
liegt.

### D Technisch offen und Beschaffung

**#17 Welche El-Croquis-Ausgabe und welches Projekt zeigen die drei Scans?** Die Seiten 196 bis
201 in `19_Puplikationen` tragen weder Titelseite noch Impressum noch Textebene. Das gezeigte
Forschungs- und Bürogebäude ist nicht identifizierbar; die abgelesenen Raumflächen sind
darum nicht zitierfähig. Wer die Zuordnung braucht, muss das Original-Heft beiziehen.

**#18 Existiert der fertige Band zu `schede2.pdf`?** Die Datei ist ein Layout-Andruck mit
Bildplatzhaltern, Blindtext und Redaktionsnotizen, Seiten 88 bis 151. Falls der fertige Band
greifbar ist, ersetzt er diesen Stand vollständig, weil dort Fotos, Legenden und Impressum
vorhanden wären.

**#19 Zeitbezug und Herkunft des Sonnenpfad-Diagramms.** Die Stundenlinien sind mit «6h» bis
«19h» beschriftet, ohne Angabe, ob Wahre Ortszeit, MEZ oder Sommerzeit gemeint ist; eine
Verwechslung bedeutet bis zu zwei Stunden Fehler in jeder Schattenwurf-Berechnung. Ein Urheber,
ein Herausgeber oder ein Rechenverfahren sind nicht angegeben, die EXIF-Daten weisen eine
Nachbearbeitung aus. Die abgelesenen Kulminationshöhen sind für den Entwurf verwendbar, als
Beleg taugt die Grafik nicht.

**#20 CRB 1026 «Verbindungen vom eBKP-H zum NPK», Ausgabe D/15, beschaffen?** Im Bestand liegt
nur der neunseitige Vorspann, die Mappingtabellen (Abschnitte 4 und 5 sowie der Anhang
«Verbindungen vom BKP zum NPK») fehlen. Genau diese Tabellen wären die Brücke zwischen
`kostenschaetzung` und `ausschreibung` und der wertvollste einzelne Zukauf aus diesem Befund.

**#21 Lässt sich `npk_texte.msia.txt` auspacken?** Die Datei liegt neben dem echten
SIA-451-Austauschfile und trägt eine bzip2-Signatur im Kopf. Wenn ja, enthält sie vermutlich
die NPK-Volltexte desselben Malerarbeiten-LV und wäre eine zweite Testquelle für den
geplanten SIA-451-Parser. Beide Dateien gehören gesichert, bevor die Sektion aufgeräumt wird.

**#22 Der Formelapparat der Honorartabellen ist ungelesen.** Die `.xls`-Dateien wurden über
LibreOffice konvertiert, wobei nur das erste Tabellenblatt exportiert wird. Von
`Honorarberechnung_SIA_102_2003_Tabelle.xls`, `Arch-Hon-Tab-SIA-2005.xls` und
`8_1 Vorlage_Nachweis_Kennzahlen.xls` ist nur die Kopfstruktur belegt. Sie könnten den
vollständigen Rechenapparat enthalten und wären dann für `honorarberechnung-sia102` mehr
wert als die PDF-Ausdrucke. Dasselbe gilt für die sieben `.xls` der Werkstoffliste in
`10_Modellbauen`, deren allfällige Rechenlogik (Mengensummen, Zuschnittoptimierung) ungeprüft
ist.

**#24 Hat JANS an einem der beiden Wettbewerbsverfahren von 2009 teilgenommen?** Die Sektion
`25_Wettbewerb` enthält ausschliesslich Veranstalterunterlagen, keine Eingabepläne, keine
Erläuterungsberichte, keine Juryberichte. Ob es sich um eine Bewerbung, eine Teilnahme oder um
Anschauungsmaterial handelt, ist nicht belegt. Ebenfalls offen: es fehlt in beiden Fällen der
Bericht des Preisgerichts, also genau das Glied, das sagt, was gewonnen hat.

**#25 `02_Bibliothek/08_Scans_Fotos_PDF/00_unklar/` ist ungeprüft.** 98 Dateien ohne Zuordnung,
darunter Archithese-Hefte 1980 bis 1997 und Werk Bauen Wohnen 1994 bis 2012. Im Inventar wurde
nur die Dateiliste ausgewertet; ob dort fachlich Verwertbares steckt, liesse sich nur durch
Einzelsichtung klären.

**#26 Sind die 36 Word-Vorlagen von 1994 noch zu öffnen?** Der Formularsatz
(Besprechungsprotokoll, Liste offener Punkte, Projektstrukturplan, Arbeitspaket-Auftrag und
-Abschlussbericht) ist inhaltlich der direkte Vorläufer der Skills `protokoll` und
`pendenzenliste`. Der Text steckt in eingebetteten MSDraw-Objekten und ist mit heutigen
Werkzeugen nicht zugänglich. Ein Abgleich wäre aufschlussreich, ist aber nicht dringend.
