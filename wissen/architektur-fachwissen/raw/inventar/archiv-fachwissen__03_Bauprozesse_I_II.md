---
title: "Inventar Sektion 03_Bauprozesse_I_II (Korpus archiv-fachwissen)"
korpus: archiv-fachwissen
sektion: /Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II
last_updated: 2026-08-23
status: established
dateien_gesichtet: 524
triage: "P1 58 · P2 96 · P3 136 · X 234"
---

# Kurzbefund

Die Sektion umfasst **524 Dateien** (ohne `.DS_Store`) in acht Hauptordnern und ist im Kern das
Studien- und Arbeitsarchiv von Raphael Jans zur ETH-Lehrveranstaltung **«Bauprozesse I & II /
Gesamtleitung von Bauten»** (Prof. Sacha Menz), angereichert um echte Projektunterlagen aus der
Zeit im Büro Christian Kerez. Jahrgang der Inhalte: **1994 bis 2015**, Schwerpunkt 2003 bis 2012.

Der Bestand zerfällt in drei sehr ungleiche Teile:

**Erstens ein hochwertiger Fach- und Normenkern.** `01_Normen_PM` enthält vollständige
Original-PDF der Normen SIA 112:2001 (Leistungsmodell, 27 S.), SIA 102:2003 (Honorarordnung,
56 S.), SIA 416:2003 (Flächen und Volumen, 28 S.), SIA 142:2009 (Wettbewerbe), SIA 500:2009
(Hindernisfreie Bauten, 22 MB, samt Auslegungen 10/2013) sowie die **VKF-Brandschutzvorschriften
2015** (Brandschutznorm 1-15de, 17 S., und Richtlinie 15-15de «Brandschutzabstände Tragwerke
Brandabschnitte», 35 S., beide gültig ab 01.01.2015). Dazu die VSS-Norm SN 640 291a (2006,
Parkieren, Anordnung und Geometrie) und SN 640 290 (1993, Grenzbedarf).

**Zweitens ein zusammenhängendes Kostenplanungs-Dossier.** `03_Kostenplanung` (141 Dateien ohne
die mitgeschleppte Java-Applikation) bildet die gesamte Kette Kostenschätzung, Kostenvoranschlag,
Ausschreibung, Kostenkontrolle ab, und zwar an **einem realen Objekt**: Neubau Schulanlage
Leutschenbach (Christian Kerez / BGS Architekten, Bauherrschaft Amt für Hochbauten der Stadt
Zürich, 2004 bis 2006). Ergänzt durch das eBKP-H 2012 (SN 506 511) mit dem CRB-Musterbeispiel
«Haus im Forst» auf drei Genauigkeitsstufen und durch zwei ausformulierte Baubeschriebe.

**Drittens ein grosser, weitgehend wertloser Ballast.** 234 Dateien sind verwerfbar: 91
SPLIT-Fragmente von vier Rechtsskripten, 13 Dateien einer eins-zu-eins-Dublette des
Recht-Repetoriums, 38 Binärdateien eines Acrobat-Katalog-Index von 1996, 20 Dateien einer
Java-Applikation «SIA-Reader» und weitere Prüfungsadministration, Webshop-Ausdrucke und
Screenshots. Eine Prüfsummenmessung über den ganzen Bestand fand **46 exakt redundante Kopien**
in 32 Dublettengruppen.

Gelesen wurden rund 45 Dateien im Volltext, ausgewählt nach der Frage, welche Datei eine
belegbare Zahl, eine Methode oder eine wiederverwendbare Struktur trägt. Nicht gelesen wurden
die Split-Fragmente (identisch mit ihren Originalen), die Binär- und Applikationsdateien sowie
die Word-Vorlagen von 1994, deren Inhalt in stichprobenweiser Prüfung als nicht mehr extrahierbar
erkannt wurde.

## Was nicht geprüft werden konnte

- Elf `.xls`-Dateien liessen sich nur über eine LibreOffice-Konversion öffnen; dabei wird
  jeweils nur das erste Tabellenblatt exportiert. Von `8_1 Vorlage_Nachweis_Kennzahlen.xls`
  und `Honorarberechnung_SIA_102_2003_Tabelle.xls` ist damit **nur die Kopfstruktur belegt**,
  nicht der volle Formelapparat.
- `00_Administration/07_Literatur/Menz_S_127.pdf`, `logistik-empfehlung_planung-und-projektierung-von-warenumschlagsrampen_206-4.pdf`
  und `Architectura/Zusammenfassung_menz.pdf` liefern keinen Textlayer (Scans, teils
  handschriftlich). Ihr Inhalt ist **unbelegt**.
- Die 36 Word-Vorlagen unter `00_Administration/Vorlagen/` stammen ausweislich der lesbaren
  Fragmente aus dem Jahr **1994** (Feldvermerke «SPEICHERDAT 08.06.94»). Bei den meisten ist der
  Text in eingebetteten MSDraw-Objekten gefangen und nicht mehr zugänglich.

---

# Triage

| Datei / Gruppe | Stufe | Begründung |
|---|---|---|
| `01_Normen_PM/112_d.pdf` (SIA 112:2001 Leistungsmodell, 27 S.) | P1 | Vollständige Originalnorm. Definiert Phasen und Teilphasen, auf denen SIA 102 und jede JANS-Honorarofferte aufsetzen. |
| `01_Normen_PM/SIA_102_Ausgabe_2003_Honorare/` (102_d.pdf 56 S., 102_d_2003.pdf, S40-Auszug) | P1 | Vollständige SIA 102:2003 samt Art. 7 «Aufwandbestimmende Baukosten». Ausgabe 2003 ist Vorgängerin der 2014er, für Altverträge weiterhin die vereinbarte Ausgabe. |
| `03_Kostenplanung/03_Honorarberechnung/SIA102/Seiten aus 102_d_Aufwandberechtigte_Bausumme.pdf` | P1 | Art. 7.3 bis 7.5 im Wortlaut: Formelkette und die Positiv-/Negativliste der aufwandbestimmenden Baukosten. Direkter Input für `honorarberechnung-sia102`. |
| `03_Kostenplanung/03_Honorarberechnung/Eberle_Kerez/100126_HB_SIA_102_Eberle.pdf` | P1 | Vollständig durchgerechnetes SIA-102-Honorar mit allen Teilphasen-Prozentsätzen und allen Parametern (B, n, Z1, Z2, p, q, r, i, s, h). |
| `03_Kostenplanung/03_Honorarberechnung/Leutschenbach_BGS/050420_H-Bausumme.pdf` + `.xls` | P1 | Reale Herleitung der honorarberechtigten Summe eines 60-Mio-Objekts mit den BKP-Anrechnungssätzen. |
| `01_Normen_PM/SIA_416_Ausgabe_2003_Flaechen_Volumen/416d.pdf` (28 S.) | P1 | Originalnorm SIA 416:2003, ersetzt SIA 416:1993 und SIA 116:1952. Grundlage jedes Flächen- und Volumennachweises. |
| `01_Normen_PM/SIA_142_Ausgabe_2009_Architekturwettbewerbe/142_D.PDF` | P1 | Originalordnung SIA 142:2009, Faktenbasis für Skill `wettbewerb`. |
| `01_Normen_PM/SIA_500_Ausgabe_2009_Hindernisfreie Bauten/SIA_500_Ausg2009_d__Hindernissfreie Bauten.pdf` + `500_2009_d_Auslegungen_2013-10.pdf` + Kurzinfo | P1 | Vollnorm plus die offiziellen Auslegungen 10/2013. Hindernisfreiheit ist in jedem Healthcare- und Wohnprojekt von JANS ein Prüfpunkt. |
| `01_Normen_PM/VKF 1.1.15_.../Stadt_Luzern/1-15_web.pdf` (Brandschutznorm 1-15de, 2015) und `15-15_web.pdf` (Richtlinie 15-15de, 2015) | P1 | Die Vorschriftengeneration 2015, gültig ab 01.01.2015. Ausgabestand vor Verwendung gegen die Normen-KB verifizieren (Revisionen). |
| `01_Normen_PM/VSS-Norm-SN 640 291a_.../2006_VSS-SN_640 290a_Parkieren...pdf` + Auszüge Geometrie und Garageneinfahrt | P1 | Parkierungsgeometrie und Garageneinfahrt als Masse. Wird in Machbarkeits- und Volumenstudien laufend gebraucht. |
| `03_Kostenplanung/04_eBKP_H/eBKP-H_12_de.pdf` (SN 506 511, D/12) + `Anwender_Handbuch_eBKP-H_AWH_12_de.pdf` | P1 | Elementbasierter Baukostenplan Hochbau 2012 mit Anwenderhandbuch. Ersetzt die Ausgabe 2009, inzwischen selbst überholt, aber Systematik und Bezugsgrössen unverändert tragend. |
| `03_Kostenplanung/04_eBKP_H/00_Unterlagen/00_Bezugstabelle_Groessen_eBKP_H_de.pdf` | P1 | Vollständige Liste der normierten Bezugsgrössen je Element mit Kürzel und Einheit (AWF, EBF, BOF, GERF und weitere). Unmittelbar für Ausmass und Mengenermittlung nutzbar. |
| `03_Kostenplanung/04_eBKP_H/00_Unterlagen/A_Hauptgruppen_...`, `B_Elementgruppen_...`, `C_Element_...`, `C_reduzierter_Kostenplan_de.pdf`, `00_Plaene_Haus_im_Forst_de.pdf` | P1 | Ein und dasselbe Objekt («Haus im Forst») auf drei Genauigkeitsstufen durchgerechnet, mit Mengen, Kennwerten und Summen. Referenzdatensatz für elementbasierte Kostenermittlung. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/01_Kostenschaetzung/Anlagekosten_Leutschenbach.pdf` | P1 | Reale Kostenschätzung BKP 0 bis 9 mit den beiden Zuschlägen (Unvorhergesehenes 5 %, Ungenauigkeit der Berechnungsgrundlagen 5 %) und dem Sprung zum Objektkredit. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/02_Kostenvoranschlag/KV_Zusammenstellung_Leutschenbach.pdf` | P1 | KV-Zusammenstellung nach Hauptgruppen, ein-, zwei- und dreistellig, mit Objekttrennung Schulhaus / Kindergarten / Grundstück. Formatvorlage für JANS-KV. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/04_Ausfuehrung_Kostenkontrolle/Finanzrapport_Leutschenbach.pdf` | P1 | Finanzrapport des Amts für Hochbauten der Stadt Zürich mit den Spalten KV original / revidiert ohne Teuerung / revidiert mit Teuerung / Vertrag / Nachtrag / Vergabe / Zahlungen / Prognose / Abweichung. Referenzformat für Skill `kostenkontrolle`. |
| `03_Kostenplanung/11_Kostenkennzahlen/SIA416/Beispiele/Schulen/Leutschenbach_Kennzahlen_Leutschenbach.pdf` | P1 | Vollständiges Kennzahlenraster GF / HNF / GV(416) / RI(116) gegen BKP 2 und BKP 1-9, mit Quervergleich zu vier weiteren Zürcher Schulanlagen. |
| `03_Kostenplanung/11_Kostenkennzahlen/SIA416/01_Konzept/Grobkostenberechnung_SIA116_SIA416.docx` + `00_PDF/Jans_Grobkostenberechnung_Gebaeudeanlagen.pdf` (10 S.) | P1 | Eigener Fachtext von Raphael Jans zur Grobkostenmethodik mit Kennwertbandbreiten und belegten Referenzobjekten. Kern-Andockstelle an die KB `wissen/grobkosten`. |
| `04_Terminplanung/00_Vorlagen/Ablauf- und Terminplanung im Wohnungsbau.pdf` (18 S.) | P1 | Enthält in Tabelle 8 eine geschlossene Dauern-Kennwerttabelle je Gewerk, bezogen auf den Bruttorauminhalt. Direkt für Grobterminpläne verwendbar. |
| `04_Terminplanung/Leutschenbach/Grobterminplan.pdf` + `Terminplan_aktuell_Juni04.pdf` | P1 | Reale Vorgangsliste eines Grossbaus über 28 Positionen von der Bauinstallation bis zur Möblierung. Vorlage für die Vorgangsstruktur. |
| `04_Terminplanung/Eberle/PDF/100318_Grobterminplan.pdf` + `Doc/` | P1 | Grobterminplan Einfamilienhaus mit realen Phasendauern in Monaten. Benchmark für kleine Projekte. |
| `03_Kostenplanung/02_Baubeschriebe/100218_Baubeschrieb_Waltenschwil.pdf` | P1 | Vollständig ausformulierter Baubeschrieb eines EFH, BKP-gegliedert bis auf die vierte Stelle, mit konkreten Bauteilbeschrieben. Formulierungsmuster für `ausschreibung` und `kostenschaetzung`. |
| `02_Projektbeschriebe/Leutschenbach/` (14 Dateien, alle Fachplaner) | P1 | Ein kompletter Satz Projektbeschriebe je Disziplin (Architektur, Tragwerk, Gebäudetechnik, Sanitär, Elektro, Licht, Landschaft, Fassade, Bauphysik) eines realen Grossprojekts. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/03_Ausschreibung/ausschreibung maler/sia451.01s.txt` + `npk_texte.msia.txt` | P1 | Echtes SIA-451-Austauschfile eines Malerarbeiten-LV (NPK 675, BKP 285.1) mit A/B/C/G-Satzstruktur. Test-Fixture für den geplanten SIA-451-Parser. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/03_Ausschreibung/ausschreibung odb/ausschreibungsunterlagen.pdf` | P1 | Vollständige Ausschreibungsunterlagen eines zweistufigen selektiven Verfahrens für Architekturdienstleistungen, Healthcare-Objekt, mit Eignungs- und Zuschlagskriterien und Nachwuchskategorie. |
| `03_Kostenplanung/09_CRB-Dokumentaion 1026_e_BKP_zu_NPK/1026_de_2015.pdf` | P1 | Beschreibt die Verbindungen eBKP-H zu NPK und im Anhang BKP zu NPK. Achtung: die vorliegende Datei ist nur der 9-seitige Vorspann, die Mappingtabellen fehlen. Beschaffungshinweis. |
| `03_Kostenplanung/00_Organisation/11_Tools/8_1 Vorlage_Nachweis_Kennzahlen.xls` | P1 | Nachweisformular für Studienaufträge, verlangt die Flächenzuordnung zugleich nach SIA 416 und nach eBKP-H. Vorlage für den Agenten `flaechen-nachweis`. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/01_Kostenschaetzung/KS SA Leutschenbach Architekt 1.xls` | P1 | Kostenschätzung Mobiliar BKP 900 nach Raumtypen einer Schulanlage, Preisstand August 2003. Struktur als Checkliste tragfähig, Zahlen überholt. |
| `03_Kostenplanung/11_Kostenkennzahlen/schaetzungsanleitung_kap5.pdf` | P2 | Kapitel 5 einer amtlichen Schätzungsanleitung mit 30 Tabellen (Abbruchkosten, Neuwert-Richtwerte nach Bauklasse I bis VI, Prozentanteile BKP 2, Lageklassenschlüssel, Lebensdauer Baumaterialien, Kapitalisierungssätze). Stand 2003, Methodik tragfähig, Zahlen nicht. |
| `03_Kostenplanung/08_OAK_Objektkatalog_264.-/OAK_de.pdf`, `OAK_Kennwerte_de.pdf` | P2 | CRB Objektarten-Katalog mit zwölf durchgerechneten Wohnbauten inklusive Energiekennwerten und GEAK. Ausgabe D/12. |
| `03_Kostenplanung/07_EAK_Elementartenkatalog_EAK195.-/EAK_Kosten_de.pdf`, `EAK_Energie_de.pdf`, `EAK_Baupreisstatitik_de.pdf` | P2 | Elementarten-Katalog CRB, Bindeglied zwischen eBKP-H-Element und NPK-Position. |
| `03_Kostenplanung/05_KV_Deffisierung/Elementbasierter Kostenvoranschlag.pdf`, `2013_KV_Merkblatt.pdf`, `5411147.pdf` | P2 | Klar geschriebene Erläuterung der drei Gliederungsebenen des eBKP-H 2012 und der frei bildbaren Elementarten. Gute Destillat-Vorlage. |
| `03_Kostenplanung/04_eBKP_H/02_Vortraege/` und `01_Allgemein/01_Literatur/` (CRB-Bulletins, Dozenteninformationen, Referatsauszüge) | P2 | Didaktisches Material zum eBKP-H, teils mit Rechenbeispielen. Rund 21 Dateien, davon mehrere Teilauszüge desselben Referats. |
| `03_Kostenplanung/11_Kostenkennzahlen/SIA416/Beispiele/` (Bürobauten, Geschäftsbauten, Wohnbauten, Gemeinschaftsbauten, Labor, Wohn-/Geschäftsbauten) | P2 | 14 Objektblätter mit Flächen- und Kostenkennzahlen. Jahrgang 1985 bis 2009, als indexierbare Vergleichsreihe brauchbar. |
| `00_Administration/01_Skripte/bauprozesse.pdf` (40 S.), `02_Vorlesung/03_Zusammenfassungen/` (3 PDFs), `01_Inhaltsverzeichnis/` | P2 | Verdichtete Systematik des gesamten Bauprozesses nach Menz, inklusive der Gliederung der drei Bücher (Akquisition und Baurecht / Bauökonomie und Nachhaltigkeit / Planungs- und Baukompetenz). Urheberrecht beachten, es sind Zusammenfassungen fremder Lehrbücher. |
| `00_Administration/02_Vorlesung/04_doppelR/31_65.docx` bis `34_71.docx` | P2 | Kapitelweise Kurzdestillate (z.B. Kap. 71 «Plattform Baustelle»: Mensch, Material, Medien, Sicherung, Logistikarten). Sauber formuliert, direkt destillierbar. |
| `00_Administration/02_Vorlesung/05_Zusammenfassung/02_Baurecht.docx` | P2 | Eigener Fragenraster von Raphael Jans zum Baurecht («was muss ich von wo bei wem und wann wissen»). Erkennbarer Vorläufer des heutigen Fragenkatalogs in `behoerden-vorabklaerung`. |
| `05_Vertraege/2_2002_KBBOB Hilfe Arch_verträge.pdf` | P2 | KBOB-Empfehlung 2002 zur Honorierung mit der Gleitpreisklausel (Fixanteil 20 %, Lohnanteil 80 %) und der Zweiprozent-Schwelle für Teuerungsabrechnungen. Tarifwerte 2002 überholt, Mechanik nicht. |
| `01_Normen_PM/VKF 1.1.15_.../VKF_Fluchtwegelängen_16-03d.pdf`, `web_distances_policedufeu_2015_d.pdf` | P2 | Brandschutzrichtlinie Flucht- und Rettungswege 16-03d (2003) und eine kantonale Umsetzungshilfe zu Brandschutzabständen auf Basis der Norm 1-15. Die 2003er-Fassung nur historisch verwenden. |
| `01_Normen_PM/VSS-Norm-SN 640 273a_Sichtzone/` (3 Dateien) | P2 | Sichtzonen an Knoten und Ausfahrten, mit einem kommunalen Merkblatt. Wiederkehrende Frage bei Zufahrten und Einstellhallen. |
| `01_Normen_PM/SIA_500_.../00_sekundaer/` (9 Dateien) | P2 | Sekundärliteratur zum hindernisfreien Bauen (rollstuhlgängige Toilette, hindernisfreie Aufzüge, anpassbarer Wohnungsbau, Merkblatt Stadt Zürich). Mehrere Ausgaben um 2009. |
| `06_Checklisten/` (3 DOC) | P2 | «Kontext, Programm, Tektonik» als Entwurfs-Checkliste, «Grundlegende Bauelemente» als Bauteil-Glossar, «Inhalt Abschlusspräsentation» als Deliverable-Liste eines Abgabesets. |
| `02_Projektbeschriebe/Beschriebe.doc` und `03_Kostenplanung/Baubeschrieb.pdf` | P2 | Durchgerechnetes Musterbeispiel Flächen nach SIA 416 und Volumen nach SIA 416 und SIA 116 nebeneinander, samt Kostenermittlung über beide Bezugsgrössen. |
| `03_Kostenplanung/00_Organisation/10_Unterschiedliche_Softwearanbieter/` und `11_Tools/` | P2 | Vergleich von Ausschreibungs- und Ausmass-Software (Messerli BAUAD und weitere), Stand um 2011. Marktbild veraltet, die Anforderungsliste bleibt lesenswert. |
| `03_Kostenplanung/04_BKP_2001/Fachbegriffe/100122_Fachbegriffe_Baunebenkosten.docx` + PDF | P2 | Saubere Definitionen von Baunebenkosten und Anlagewert. Kurz, präzis, direkt in ein Glossar überführbar. |
| `03_Kostenplanung/01_Phasen_Kostenaufstellungen/03_Ausschreibung/ausschreibung odb/263b_*.pdf` (4), `285.1_maler_ausschreibungsunterlagen.pdf`, `Offerte_Terrazzo_Belaege.pdf` | P2 | Ausschreibungspläne und eine reale Unternehmerofferte. Als Beispielmaterial für Aufbau und Detaillierungsgrad brauchbar. |
| `00_Administration/01_Recht/01_öffentlich/03_Skript(Useless)/Grundzuege_Recht_2008-2.pdf`, `br/all/RPG_Baurecht_2009.pdf`, `ör/all/Einf_oeff_Recht090113_nachgefuehrt.pdf` | P3 | Vollständige ETH-Rechtsskripte 2008/2009. Sachlich überholt durch die Buch-Destillate in `wissen/baurecht`, historisch als Systematik lesbar. |
| `00_Administration/01_Recht/01_öffentlich/04_Fallsammlung/original/` (8 PDFs) | P3 | Fallsammlung zum öffentlichen Recht. Didaktisch, ohne aktuellen Rechtsstand. |
| `00_Administration/01_Recht/01_öffentlich/06_Repetorium/` (13), `07_Vrolesung 09/03_Folien/` (15), `02_privat/02_Vorlesung/` (13) | P3 | Vorlesungsfolien und Repetitorien 2008/2009 zu Verwaltungs-, Verfassungs- und Privatrecht. Archivwert. |
| `00_Administration/Vorlagen/` (36 DOC, Jahrgang 1994) | P3 | Formularsatz eines klassischen Projektmanagement-Handbuchs: Besprechungsprotokoll, Liste offener Punkte, Projektstrukturplan, Arbeitspaket-Auftrag und -Abschlussbericht, Terminplan, Fragebogen zu Teamklima und Konflikten. Inhaltlich die Ahnenreihe der heutigen Skills `protokoll` und `pendenzenliste`, technisch aber nicht mehr öffnbar. |
| `00_Administration/02_Vorlesung/02_Kaertchen_lernen/1329941822_kschwiet_bauprozess.pdf` (69 S.) | P3 | Karteikarten mit Begriffsdefinitionen zum Bauprozess (z.B. «Seven Rights»). Glossar-Kandidat, aber Fremdmaterial. |
| `00_Administration/02_Vorlesung/Jans/110922_Einfuerung/` (2 DOCX, 1 PDF) | P3 | Eigene Vorlesungsmitschrift vom 22.09.2011, Rohnotizen mit vielen Tippfehlern. Kein Fachgehalt, aber Beleg der eigenen Ausbildungslinie. |
| `00_Administration/14_Projektplanung/100219_Die_wichtigsten_Planungsinstrumente_rj.docx` | P3 | Eigene Siebenpunkt-Liste der Planungsinstrumente (BKP-Struktur, Unternehmerliste, Terminplan, Kostenschätzung, Vertragspartnerliste, Planliste, Planverteiler). Sehr knapp. |
| `01_Normen_PM/Bereichs_Phasenmatrix.pdf` | P3 | Trägt den Vermerk «2007 © Lernskript Jans Finanzplanung». Einseitige Grafik ohne Textlayer, Inhalt nicht belegbar. |
| `01_Normen_PM/01_SIA_Normenverzeichnis.pdf` (Stand Februar 2006) | P3 | Vollständiges Verzeichnis des SIA-Normenwerks mit Nummer, Jahr und Titel. Als historischer Ausgabenstand nützlich, für die Gültigkeitsprüfung heute untauglich. |
| `01_Normen_PM/SGNI_Nachhaltige_Immobilienwirtschaft/` (4 Dateien) | P3 | SGNI/DGNB-Zertifizierungssystematik, Stand 2013. Nachhaltigkeitszertifizierung ist heute in JANS kein aktives Feld. |
| `03_Kostenplanung/04_BKP_2001/BKP/` (BKP_CRB_SN.pdf, BKP_ETH_Meyer.pdf, zwei Zusammenfassungen) | P3 | BKP 2001. Für JANS verbindlich ist BKP 2017 (`references/bkp-2017/`), diese Fassung darf nicht als Codequelle dienen. |
| `00_Administration/10_Literatur_Anschaffungen/120817_BBKS_Baukosten_Kennzahlensystem.pdf` | P3 | Hinweis auf das Baukosten-Kennzahlensystem BBKS 2.0 und ein Forschungsprojekt zu Kostenrichtwerten für Gebäudeerneuerung. Reiner Beschaffungshinweis. |
| Weiteres Archivmaterial (Vocabulaire, Kalender-XLS 2015, Produkteanbieter, Kursdaten, CRB-Bulletins, Buchseiten-Scans) | P3 | Kein eigenständiger Fachgehalt, aber Kontext des Archivs. |
| 91 `*SPLIT*` / `*split*`-Fragmente in `00_Administration/01_Recht/` | X | Seitenweise Zerlegungen von vier Skripten, die im selben Baum vollständig vorliegen. |
| `00_Administration/01_Recht/RECHTrepetorium/` (13 Dateien) | X | Eins-zu-eins-Dublette von `01_öffentlich/06_Repetorium/`, nur mit vorangestellten Buchstaben umbenannt. |
| 17 Dateien Prüfungsadministration Recht (Beispielprüfungen, Merkblätter Hilfsmittel, Kolloquium) | X | Reine Studienadministration ohne Fachgehalt. |
| `01_Normen_PM/VKF 1.1.15_.../Brandschutz/INDEX/` (38 Binärdateien) und `INDEX.PDX` | X | Acrobat-Katalog-Index von 1996 (`.DDD`, `.DID`, `.WLD`, `.ABT`, `.CAT`). Nicht lesbar, kein Inhalt. |
| `01_Normen_PM/VKF 1.1.15_.../Brandschutz/BSVORSCH.PDF` und `DOKU/` (A_GRUNDL, B_BAULBS, C_TECHBS, ARBEITSH, BEST) | X | Brandschutzvorschriften-Generation von 1996. Im selben Ordner liegt die Fassung 2015. Eine überholte Brandschutzvorschrift ist gefährlicher als keine. |
| `03_Kostenplanung/00_Organisation/06_SIA451_Datei_Viewer_nicht_noetig/SIA-Reader.app/` (20 Dateien, 15 `.jar`) | X | Java-Applikation von 2008 samt Bibliotheken. Auf heutigem macOS nicht lauffähig, der Ordnername sagt es selbst. |
| 5 Dateien `Sicherungskopie von *` | X | Word-Autosicherungen der jeweils daneben liegenden Datei. |
| 17 Bilddateien ohne Textgehalt (Screenshots, Buchcover, Webgrafiken `s46.gif`, `.ai`-Mindmap, `.indd`) | X | Reines Bildmaterial ohne extrahierbare Aussage. |
| 14 Webseiten- und Webshop-Ausdrucke (9 CRB-Produktseiten, 3 Buchbestellungen, 2 iCal-Wochenpläne) | X | Bestell- und Terminadministration von 2012. |
| `07_Gesetze/pdf_file.pdf` (Einführungsgesetz zum ZGB, Kanton Luzern, Stand 01.01.2011) | X | Ausserkantonal (JANS arbeitet in ZH und SZ) und im Stand von 2011. |
| Rund 10 weitere exakt redundante Kopien (`416d.pdf`, `EAK_Kosten_de.pdf`, `Kostengrobschaetzung_de.pdf`, `Schaetzung_Finanzbedarf_de.pdf`, `8_1 Vorlage_Nachweis_Kennzahlen.xls`, `Grundzuege_Recht_2008-2.pdf` und weitere) | X | Prüfsummengleich zu einer bereits eingestuften Datei. Insgesamt fand die Messung 46 redundante Kopien in 32 Dublettengruppen. |

---

# Was hier für JANS drinsteckt

## 1. Die SIA-102-Honorarberechnung ist hier vollständig durchgerechnet belegt

`03_Kostenplanung/03_Honorarberechnung/Eberle_Kerez/100126_HB_SIA_102_Eberle.pdf` enthält eine
komplette Honorarberechnung nach SIA 102 (2003) mit allen Parametern und allen Teilphasen. Belegt
sind dort für das Objekt Eberle: aufwandbestimmende Baukosten B = 2'695'283, Bauwerksart n = 1.00,
Z1 = 0.062, Z2 = 10.580, Grundfaktor p = 0.138, Korrekturfaktor r = 1.00, Stundenansatz h = 130,
Honorar H = 483'600 exkl. MWST, aufgeteilt in Stufe I 35 % und Stufe II 65 %.

Die Teilphasen-Anteile aus demselben Blatt: 31 Vorprojekt 9.0 % (davon 3.0 % Studium von
Lösungsmöglichkeiten und Grobschätzung, 6.0 % Vorprojekt), 32 Bauprojekt 21.0 % (13.0 / 4.0 /
4.0), 33 Bewilligungsverfahren 2.5 %, 41 Ausschreibung, Offertvergleich, Vergabeantrag 18.0 %
(10.0 / 8.0), 51 Ausführungsplanung 16.0 % (15.0 / 1.0), 52 Ausführung 29.0 % (6.0 gestalterische
Leitung / 23.0 Bauleitung und Kostenkontrolle), 53 Inbetriebnahme und Abschluss 4.5 %.

Dazu liefert `Seiten aus 102_d_Aufwandberechtigte_Bausumme.pdf` die Formelkette im Wortlaut
(Tp = Tm · i, H = Tp · s · h) und Art. 7.5 mit der abschliessenden Negativliste: nicht
aufwandbestimmend sind Honorare, MWST auf Unternehmerrechnungen, Erwerb von Grund und Rechten,
Finanzierungskosten, öffentliche Gebühren und Versicherungsprämien, Wettbewerbskosten, Feiern,
Nachbarentschädigungen, Miete von fremdem Grund sowie Anwalts- und Gerichtskosten. Katalogmobiliar
ist nach Art. 7.5.4 zu 50 % aufwandbestimmend.

**Wichtig:** Das ist die **Ausgabe 2003**. Der Skill `honorarberechnung-sia102` arbeitet mit einer
neueren Ausgabe. Vor jeder Verwendung ist nach Rule `normen-referenz` die Ausgabe zu klären; in
Verträgen gilt die vereinbarte Ausgabe, was diese Fassung für Altverträge weiterhin relevant macht.

## 2. Die Anrechnungssätze auf die honorarberechtigte Summe, an einem realen Grossobjekt

`Leutschenbach_BGS/050420_H-Bausumme.pdf` zeigt, wie aus einem Objektkredit von 60'750'000 CHF
eine honorarberechtigte Summe von 31'533'250 CHF wird. Die dort angewandten Sätze:

BKP 019 Abbruch 100 %, BKP 071 Altlastensanierung 50 % (bei Beizug Landschaftsarchitekt),
BKP 11 bis 16 Vorbereitungsarbeiten 100 %, BKP 23 Elektro 70 %, BKP 24 Heizung/Lüftung/Klima 70 %,
BKP 25 Sanitär 70 %, BKP 26 bis 28 Gebäude 100 %, BKP 33/34/35 Betriebseinrichtung Elektro,
Heizung, Sanitär je 70 %, BKP 37 bis 38 Normbetriebseinrichtung 50 %, BKP 42 bis 47 Umgebung 50 %
(Beizug Landschaftsarchitekt), BKP 5 Baunebenkosten 0 %, BKP 7 Reserve 0 %, BKP 80 bis 81
Norminventar 50 %, BKP 90 bis 98 Normmobiliar 50 %.

Das ist eine belegte Anwendung, nicht eine Regel. Sie zeigt aber, wie ein städtischer Bauherr die
Anrechnung tatsächlich handhabt, und liefert dem Skill `honorarberechnung-sia102` ein Muster für
die Herleitungstabelle.

## 3. Ein geschlossenes Kostendossier über alle Phasen desselben Objekts

Für die Schulanlage Leutschenbach liegen vier Phasenstände desselben Projekts vor, was in einem
Archiv selten ist:

- **Kostenschätzung:** Budget Anlagekosten +/- 10 % von 56'000'000 CHF, aufgeschlüsselt BKP 0 bis 9
  und getrennt nach Grundstück, Schulhaus, Kindergarten. Total BKP 0-9 = 55'980'000 CHF, plus
  Zuschlag Unvorhergesehenes und Reserve 5 % (2'330'000) und Zuschlag für Ungenauigkeit der
  Berechnungsgrundlagen 5 % (2'440'000), ergibt den Objektkredit von 60'750'000 CHF.
- **Kostenvoranschlag** vom 08.06.2004, Zusammenstellung nach Hauptgruppen mit ein-, zwei- und
  dreistelligen Summen.
- **Finanzrapport** des Amts für Hochbauten per 01.03.2006, mit dem vollständigen Spaltenmodell
  KV original / KV revidiert ohne Teuerung / KV revidiert mit Teuerung / Vertrag / Nachtrag /
  Vergabe / Zahlungen / Prognose / Abweichung.
- **Kennzahlenblatt:** GF 9'995 m2, HNF 8'259 m2, GV 47'156 m3 (SIA 416), RI 54'930 m3 (SIA 116),
  Gebäudekosten BKP 2 = 30'930'000 CHF, daraus 3'095 CHF/m2 GF, 3'745 CHF/m2 HNF, 656 CHF/m3
  SIA 416 und 563 CHF/m3 SIA 116; Anlagekosten BKP 1-9 = 46'540'000 CHF, daraus 4'656 CHF/m2 GF
  und 987 CHF/m3 SIA 416.

Das Kennzahlenblatt enthält zusätzlich den Quervergleich zu vier weiteren Zürcher Schulanlagen
(Im Birch 560, Apfelbaum 602, Im Gut 623, Falletsche 547 CHF/m3 SIA 116). Zahlenstand 2004 bis
2006, also indexierungsbedürftig; die Kennzahlenstruktur selbst ist unverändert brauchbar und
sollte in `wissen/grobkosten` als Rasterformat übernommen werden.

**Nebenbefund mit dauerhaftem Wert:** dasselbe Gebäude ergibt 47'156 m3 nach SIA 416 und
54'930 m3 nach SIA 116, ein Verhältnis von 1.165. Wer alte Kennwerte in CHF/m3 SIA 116 auf ein
heutiges SIA-416-Volumen anwendet, rechnet ohne diese Korrektur systematisch zu tief.

## 4. Eigener Fachtext von Raphael Jans zur Grobkostenmethodik

`Grobkostenberechnung_SIA116_SIA416.docx` ist kein fremdes Material, sondern ein eigener,
ausformulierter Fachtext. Belegte Kernaussagen daraus:

- Zwei Wege zur Grobkostenberechnung, über das Gebäudevolumen (BKP 2 je m3 SIA 416) oder über die
  Geschossfläche (BKP 2 je m2 GF SIA 416).
- Bandbreite des Volumenkennwerts für Ein- und Mehrfamilienbauten von rund **500 bis 1'500 CHF/m3**,
  vom sozialen Wohnungsbau in Schwamendingen bis zum Villenbau in Meggen.
- **Die Faustregel: BKP 2 macht rund 80 % der Erstellungskosten aus.** Wer über den BKP-2-Kennwert
  rechnet, muss 20 bis 30 % hinzurechnen, um auf BKP 1-9 zu kommen. Das Rechenbeispiel im Text
  arbeitet mit dem Divisor 70: 2'000 m3 mal 1'000 CHF/m3 ergibt 2'000'000 CHF BKP 2, geteilt durch
  70 und mal 100 ergibt rund 2'850'000 CHF Anlagekosten.
- Belegte Referenzobjekte mit Doppelkennwert: Wohnhaus via Bertoni, Lugano, 910 CHF/m3 und
  3'218 CHF/m2 GF (3'554 m3, 2004); Haus Hirschi, Adligenswil, 787 CHF/m3 und 3'445 CHF/m2 GF
  (2'305 m3, 2004).
- Die daraus abgeleitete Erkenntnis ist der eigentliche Gehalt: der niedrigere Volumenkennwert
  führt beim Haus Hirschi trotzdem zum teureren Quadratmeter, weil der langgestreckte Quader mehr
  Fassadenfläche je Wohnquadratmeter braucht als der kompakte Würfel. **Kompaktheit schlägt
  Bauweise.** Das ist eine Aussage, die in jeder frühen Variantendiskussion trägt.

Weitere belegte Kennwerte aus demselben Text, alle in CHF/m3 nach SIA 116: SUVA Löwenplatz Luzern
644 (49'107 m3, 1997), Basler Kantonalbank 540 (7'763 m3, 1985), Geschäftshaus Steinentorberg
Basel 566 (69'050 m3, 1987), Kirchgemeindehaus Ebmatingen 921, Kirchgemeindehaus Wiesendangen 584.

Alle Zahlen sind Preisstände zwischen 1985 und 2004 und dürfen **nie ohne Indexierung** in ein
heutiges Erzeugnis. Die Methodik, die Bandbreitenlogik und die Kompaktheits-Erkenntnis sind
zeitlos und gehören ins Wiki der KB `wissen/grobkosten`.

## 5. Elementbasierte Kostenermittlung, dreistufig an einem Objekt vorgeführt

Das CRB-Beispiel «Haus im Forst» liegt in `03_Kostenplanung/04_eBKP_H/00_Unterlagen/` auf drei
Genauigkeitsstufen vor, jeweils mit Mengen, Kennwerten und Summen, dazu die Pläne:

- Stufe A (Hauptgruppen, «Schätzung Finanzbedarf»): Total 1'200'200 CHF. Beispielzeilen:
  C Konstruktion Gebäude 230 m2 zu 950 CHF, D Technik Gebäude 230 m2 zu 425 CHF,
  V Planungskosten 18.0 % auf 929'700 CHF, Z Mehrwertsteuer 7.6 %.
- Stufe B (Elementgruppen, «Kostengrobschätzung»): Total 1'194'800 CHF, aufgelöst bis B1 bis B8,
  C1 bis C5, D1 bis D9, E1 bis E3, F1 bis F2, G1 bis G6.
- Stufe C (Elemente, «Kostenschätzung») und ein reduzierter Kostenplan.

Der Abstand zwischen Stufe A und Stufe B beträgt bei diesem Objekt 5'400 CHF oder 0.45 %. Das ist
kein Genauigkeitsbeweis, wohl aber ein sauberes Beispiel dafür, wie die Verfeinerung der
Gliederung dokumentiert wird. Für den Skill `grobkosten-onepager` ist die Stufe A das exakte
Format, das gebraucht wird: Code, Bezeichnung, Menge, Kennwert, Summe, eine Zeile je Hauptgruppe.

**Achtung bei zwei Zahlen:** der MWST-Satz 7.6 % ist der Stand von 2009 und heute falsch; der
Planungskostenansatz von 18.0 % ist ein Beispielwert, keine Norm.

Dazu gehört die **Bezugstabelle Grössendefinition** (`00_Bezugstabelle_Groessen_eBKP_H_de.pdf`)
mit der vollständigen Liste der normierten Bezugsgrössen und ihrer Kürzel, von AL Abschlusslänge
über AWF Aussenwandfläche, EBF Energiebezugsfläche, GERF Gerüstfläche bis zu TTTF Fläche
Trennwand, Tür, Tor, Fenster. Diese Liste ist unmittelbar bürotauglich, weil sie festlegt, welche
Menge zu welchem Element gehört.

## 6. Terminplanung: eine geschlossene Dauern-Kennwerttabelle

`Ablauf- und Terminplanung im Wohnungsbau.pdf` (Institut für Baubetriebslehre der Universität
Stuttgart) enthält in Tabelle 8 eine vollständige Ableitung der Vorgangsdauern aus dem
Bruttorauminhalt. Belegte Werte, Auswahl:

- Rohbauarbeiten: bis 1'000 m3 sechs Wochen; ab 1'000 m3 sechs Wochen plus eine Woche je 150 m3;
  ab 1'500 m3 eine Woche je 250 m3.
- Heizung, Sanitär und Elektro: Grobinstallation 600 m3 BRI je Woche, Feininstallation 1'200 m3 je
  Woche; ab 3'000 m3 BRI 1'000 beziehungsweise 2'000 m3 je Woche (Elektro Feininstallation bleibt
  bei 1'000).
- Innenputz bis 2'500 m3 zwei Wochen, darüber drei; Aussenputz bis 2'500 m3 vier Wochen, darüber
  sechs.
- Estrich eine bis zwei Wochen, Plattenarbeiten drei bis fünf Wochen, Malerarbeiten drei bis fünf
  Wochen, Schreinerarbeiten eine bis drei Wochen, Bodenbeläge eine bis zwei Wochen,
  Umgebungsarbeiten zwei Wochen.

Zwei Vorbehalte, beide aus der Quelle selbst: die Autoren weisen ausdrücklich auf den kritischen
Gebrauch hin, weil die Abgrenzungen für ein EDV-Werkzeug scharf gezogen wurden, in der Praxis aber
nicht so klar sind. Und es ist eine **deutsche** Quelle mit deutschen Gewerkebegriffen
(Klempnerarbeiten entspricht dem Schweizer Spengler). Als Plausibilisierung eines Grobterminplans
und als Startwert für den Skill `terminplanung` ist die Tabelle trotzdem der beste Fund der
Sektion in diesem Thema.

Daneben liegen zwei reale Terminpläne als Strukturvorlage: Leutschenbach mit 28 Vorgängen von der
Bauinstallation über Pfähle, Vorfabrikation, Fassadenmontage bis zur Möblierung über die Jahre
2005 bis 2007, und der Grobterminplan Eberle für ein Einfamilienhaus mit den Phasendauern
Bewilligung 4, Ausführungsplanung 10, Ausschreibung und Vergabe 4, Aushub 2, Rohbau 7,
Verglasung 2, Ausbau 3 Monate.

## 7. Ein SIA-451-Austauschfile im Original

`ausschreibung maler/sia451.01s.txt` ist ein echtes, unverschlüsseltes SIA-451-Flatfile
(Version 451-92) eines Malerarbeiten-Leistungsverzeichnisses, erzeugt mit Messerli BAUAD 2008.
Der Kopfsatz nennt Projekt, Dok-ID, Gewerk, Unternehmer und Version; die B001-Sätze tragen die
BKP-Hierarchie (2 Gebäude, 28 Ausbau 2, 285 Innere Oberflächenbehandlungen, 2851 Innere
Malerarbeiten); die C-Sätze führen die Konditionen (Rabatt, Verwaltungsrabatt, Skonto 60 Tage,
Baureinigung 0.30 %, Baureklame 250 CHF pauschal, MWST 7.60 %); die G-Sätze tragen den
NPK-Kapitelbaum 675 «Maler-, Tapezierer- und Holzbeizarbeiten innen».

Das ist genau das, was dem geplanten SIA-451-Parser fehlt: eine **reale Testdatei mit bekannter
Satzstruktur**. Die danebenliegende `npk_texte.msia.txt` ist ein bzip2-komprimiertes Textpaket
desselben Projekts und lässt sich vermutlich auspacken. Beides gehört gesichert, bevor die
Sektion weiter aufgeräumt wird.

## 8. Ein Healthcare-Auswahlverfahren im Volltext

`ausschreibung odb/ausschreibungsunterlagen.pdf` sind die vollständigen Ausschreibungsunterlagen
der 1. Stufe für den Umbau des ehemaligen Spitals Oberdiessbach in ein Pflege- und
Betreuungszentrum (offenes zweistufiges Verfahren nach kantonalem Beschaffungsrecht ÖBG/ÖBV,
Juni 2009). Belegte Eckdaten:

- Bestand: 1987 als Akutspital erstellt, seit 2003 ohne bauliche Anpassung als Pflegezentrum für
  **93 Personen** in stationärer Langzeitpflege betrieben. Die aus dem Akutspital stammenden
  Zweierzimmer entsprechen der Vorgabe (Einerzimmer im Regelfall) nicht, die Aufenthalts- und
  Essräume für das Wohngruppenmodell fehlen, die Sanitärzellen sind nicht behindertengerecht.
- Kostenrahmen aus Vorstudien: **rund 19 Mio CHF**, ausdrücklich exklusive Gebäudeunterhalt,
  Minergie-Nachbesserungen, Erdbebensicherheit und Rückbauten. Das ergibt überschlägig rund
  204'000 CHF je Pflegeplatz für den Umbau, Preisstand 2009.
- Verfahrensmechanik: 10 bis 12 Bewerber werden zur zweiten Stufe eingeladen, davon 2 bis 3 in
  einer eigenen Kategorie «Junges Büro» mit modifizierten Auswahlkriterien; die zweite Stufe läuft
  anonym unter Kennwort.
- Baurechtliche Ausgangslage im Dokument: Zone für öffentliche Nutzungen ZöN B Pflegezentrum,
  Geschosszahl 3, maximale Gebäudelänge 70.00 m, kleiner Grenzabstand 4.00 m, grosser
  Grenzabstand 10.00 m.

Für die Skills `healthcare-wirtschaftlichkeit` und `nutzungsstrategie` ist das ein belegter
Referenzfall: die Umnutzung eines Akutspital-Grundrisses in ein Pflegezentrum scheitert an den
Zweierzimmern und den fehlenden Gemeinschaftsflächen. Genau das ist das Argument, das JANS in
Machbarkeitsstudien für Healthcare-Bestandesbauten führt.

## 9. Musterbaubeschriebe und Fachplanerbeschriebe

Zwei Formate, beide direkt als Vorlage nutzbar:

- `100218_Baubeschrieb_Waltenschwil.pdf`: ein Einfamilienhaus, BKP-gegliedert bis auf die vierte
  Stelle (BKP 211.5 Beton- und Stahlbetonarbeiten, BKP 211.6 Maurerarbeiten), mit ausformulierten
  Bauteilsätzen samt Dimensionen, Schalungstyp und Feuchtigkeitssperre V60. Das ist die
  Textsorte, die JANS für Baubeschriebe in Devis und Kostenvoranschlägen braucht.
- `02_Projektbeschriebe/Leutschenbach/`: je ein Projektbeschrieb von Architekt, Bauingenieur,
  Gebäudetechnik, Sanitär, Elektro, Lichtplaner, Landschaftsarchitekt, Fassadenplaner und
  Bauphysiker, dazu die zusammengefasste Fassung mit Projektorganisation. Der Sanitärbeschrieb
  zeigt beispielhaft, wie ein Fachplanerbeitrag aufgebaut ist: externe Erschliessung, Netzdruck,
  Aufteilung Sprinkler und Sanitär, Nasssystem EG bis 4. OG, Stickstoffanlage in der Bibliothek,
  Warmwasser über Abwärme der Kälteanlage mit Nachladung über Fernwärme, Zirkulation,
  Abwasser-Doppelhebeanlage im UG.

Der Satz aus dem Konstruktions- und Materialisierungskonzept von Christian Kerez zu den
Fachwerkscheiben, die statisch als Wand funktionieren und optisch Öffnung bleiben, ist zudem ein
gutes Beispiel dafür, wie ein Konzepttext argumentiert statt beschreibt. Das ist für den Agenten
`bericht-autor` als Tonvorlage relevant.

## 10. Die Systematik des Bauprozesses als Ordnungsrahmen

Das Inhaltsverzeichnis der drei Bücher (`120815_Inhaltsverzeichnis_Bauprozess.pdf`) liefert eine
Gliederung, die als Ordnungsraster für eine künftige KB `architektur-fachwissen` taugt:

Buch 1 Akquisition und Baurecht (1 Akquisition mit Architekt, Direktauftrag, Vergabe,
Wettbewerbswesen; 2 Baurecht mit Projektgrundlagen, Baubewilligungsverfahren, öffentliches und
privates Baurecht, Kennziffern). Buch 2 Bauökonomie und Strategien der Nachhaltigkeit
(3 Bauökonomie mit ökonomischem Modell, Baukostengliederung, Baukostenermittlung, Ertragsermittlung;
4 Nachhaltigkeit mit Grundlagen, dauerhafter Entwicklung, Bauwerkserhaltung, Lebenszykluskosten).
Buch 3 Planungs- und Baukompetenz (5 Kompetenz und Verantwortung mit Organisation, Organigramm,
Leistungsdefinition, Auftrag, Werkvertrag; 6 Planung mit integrierten Planungsaspekten,
Planungsinstrumenten, Terminen, Ausschreibung, Haftung und Versicherung; 7 Ausführung mit
Plattform Baustelle, Bauleitung, Inbetriebsetzung).

Diese Gliederung deckt sich verblüffend genau mit dem heutigen Skill-Bestand des Hub, von
`unternehmerfindung` und `wettbewerb` über `baurecht`, `kostenschaetzung`, `werkvertrag`,
`terminplanung`, `ausschreibung` bis `unternehmerkontrolle` und `kostenkontrolle`. Sie ist damit
weniger eine Wissensquelle als eine **Vollständigkeitsprüfung**: wo der Hub eine Zelle dieses
Rasters nicht besetzt, ist eine Lücke.

## 11. Zwei belegte Lücken, die eine Beschaffung rechtfertigen

- **CRB 1026 «Verbindungen vom eBKP-H zum NPK», Ausgabe D/15.** Die vorliegende Datei ist nur der
  9-seitige Vorspann mit Einleitung und Geltungsbereich; die eigentlichen Mappingtabellen
  (Abschnitte 4 und 5, dazu der Anhang «Verbindungen vom BKP zum NPK» ab Seite 39) fehlen. Genau
  diese Tabellen wären für die Brücke zwischen `kostenschaetzung` und `ausschreibung` die
  wertvollste Einzelquelle der ganzen Sektion. Das Dokument ersetzt laut eigener Einleitung die
  ältere Broschüre 1006.
- **Baukosten-Kennzahlensystem BBKS 2.0** und das zugehörige Forschungsprojekt «Benchmark für
  Neubau, Kostenrichtwerte für Gebäudeerneuerung» (Hinweis in `00_Administration/10_Literatur_Anschaffungen/`).
  Kostenrichtwerte für die Gebäudeerneuerung sind der Bereich, in dem JANS bei Umbauprojekten am
  häufigsten schätzen muss.

## 12. Warnungen für jede Weiterverwendung

1. **Kein einziger Kostenkennwert dieser Sektion ist ohne Indexierung verwendbar.** Die
   Preisstände liegen zwischen 1985 und 2012. Was übernommen wird, ist Methodik und Struktur.
2. **BKP 2001 ist nicht BKP 2017.** Die Ordner `04_BKP_2001/` enthalten die alte Fassung. Für
   JANS gilt nach Rule `bkp-2017-referenz` ausschliesslich `references/bkp-2017/`.
3. **SIA 116:1952 ist durch SIA 416:2003 ersetzt**, wird aber in mehreren Dokumenten dieser
   Sektion parallel geführt. Wer alte Kennwerte in CHF/m3 anwendet, muss wissen, auf welche
   Volumendefinition sie sich beziehen (Verhältnis am Objekt Leutschenbach: 1.165).
4. **Der Ordner `01_Normen_PM/VKF 1.1.15/` enthält zwei Generationen Brandschutzvorschriften
   nebeneinander**, 1996 und 2015. Die 1996er-Dateien (`BSVORSCH.PDF`, `DOKU/`) dürfen nie
   zitiert werden. Auch der 2015er-Stand ist vor Verwendung gegen die Normen-KB zu prüfen.
5. **Urheberrecht.** Die vollständigen SIA- und VKF-Normen sowie die CRB-Publikationen sind
   geschützt. Nach Rule `normen-referenz` dürfen in ausgehende Dokumente nur kurze, sinngemässe
   Zitate mit Fundstellenangabe, nie Norm-Passagen oder Tabellen im Wortlaut. Die
   Lehrbuchzusammenfassungen unter `02_Vorlesung/03_Zusammenfassungen/` sind Fremdmaterial
   (namentlich gezeichnet «2011, Patrick Arnold») und taugen als Leseeinstieg, nicht als Quelle.
6. **Personenbezogene Daten.** `SIA102/Thalhofer/100201_Honorarberechnung.pdf` ist ein privater
   E-Mail-Wechsel mit privaten Adressen Dritter und gehört nicht in ein Erzeugnis, das das Büro
   verlässt. Sachlich wertvoll ist daran nur die Aussage zum Schwierigkeitsgrad n (bei
   Baukategorie V oder VI etwa 1.1 bis 1.2) und zum damals üblichen Stundenansatz von 130 bis 135 CHF.

# Offene Fragen

1. Lässt sich `npk_texte.msia.txt` auspacken (bzip2-Signatur im Kopf erkennbar)? Wenn ja, enthält
   die Datei vermutlich die NPK-Volltexte des Malerarbeiten-LV und wäre eine zweite Testquelle
   für den SIA-451-Parser.
2. Welche Ausgabe der VKF-Brandschutzvorschriften ist im August 2026 in den Kantonen ZH und SZ
   in Kraft? Die Sektion belegt den Stand 01.01.2015; ob und wie oft seither revidiert wurde,
   ist aus diesem Bestand nicht ableitbar und gehört gegen `wissen/normen` geprüft.
3. Die elf `.xls`-Dateien sind nur im ersten Tabellenblatt erfasst. Insbesondere
   `Honorarberechnung_SIA_102_2003_Tabelle.xls` und `Arch-Hon-Tab-SIA-2005.xls` könnten den
   vollständigen Rechenapparat der SIA-102-Honorarberechnung enthalten und wären dann für den
   Skill `honorarberechnung-sia102` mehr wert als die PDF-Ausdrucke.
4. Sind die 36 Word-Vorlagen von 1994 mit einem Konverter für Word 2.0/6.0 noch zu öffnen? Der
   Formularsatz (Besprechungsprotokoll, Liste offener Punkte, Projektstrukturplan,
   Arbeitspaket-Abschlussbericht) ist inhaltlich der direkte Vorläufer der Skills `protokoll`
   und `pendenzenliste`; ein Abgleich wäre aufschlussreich, ist aber kein dringendes Thema.
5. Gehört das Kennzahlenraster aus `Leutschenbach_Kennzahlen_Leutschenbach.pdf` als
   Standardformat in die KB `wissen/grobkosten`? Es führt GF, HNF, GV und RI konsequent gegen
   BKP 2 und BKP 1-9 und wäre damit strenger als das heute dort verwendete Raster. Entscheid
   Raphael.

## Destillat-Fortschritt

**Lauf 29.08.2026 (Lane FACHWISSEN, Korpus `archiv-fachwissen`, zweiter Destillat-Lauf nach
`02_Denkmalpflege`).** Vorab durchgeführt: Leutschenbach-Duplikatsprüfung gegen
`wiki/INDEX.md` Abschnitt «Artikelbestand» (Korpus 3, Sektionen `18_Projektkostenplanung`,
`17_Projektbeschriebe`, `22_Terminplanung`) — mehrere P1-Positionen dieser Sektion sind
identische Dateien oder dasselbe Objekt (Schulanlage Leutschenbach) und dort bereits
destilliert; sie werden hier nicht erneut destilliert, nur mit Fundstelle verknüpft.

Alle Aussagen in den vier neuen/erweiterten Artikeln wurden **gegen die Primärquelle (PDF im
Archiv), nicht nur gegen diese Inventar-Zusammenfassung** verifiziert (Volltext gelesen
29.08.2026).

**Destilliert (vier neue/erweiterte Wiki-Artikel, alle `status: emerging`):**

- [x] `Seiten aus 102_d_Aufwandberechtigte_Bausumme.pdf` (Formelkette, nur methodisch
  referenziert) + `100126_HB_SIA_102_Eberle.pdf` (Rechenwerk Eberle) →
  [[sia-102-2003-phasenanteile-zwei-rechenwerke]] erweitert um drittes unabhängiges
  Rechenwerk (Objekt Eberle/Büro Christian Kerez, Kantonales Hochbauamt 26.01.2010),
  vollständiger Teilphasen-Stunden-/Honorarapparat. Art.-7.5-Negativliste selbst
  bewusst **nicht** reproduziert (SIA-Urheberrecht, Abgrenzung dieser KB) — Hinweis in
  `wiki/QUESTIONS.md` an einen künftigen `wissen/normen`-Lauf.
- [x] `A_Hauptgruppen_Schaetzung_Finanzbedarf_de.pdf` + `B_Elementgruppen_...` +
  `C_Element_...` + `C_reduzierter_Kostenplan_de.pdf` + `00_Plaene_Haus_im_Forst_de.pdf`
  (eBKP-H-2012-Musterbeispiel «Haus im Forst») →
  [[ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen]], neu.
- [x] `00_Bezugstabelle_Groessen_eBKP_H_de.pdf` →
  [[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]], neu (vollständige Kürzelliste, primär
  gelesen).
- [x] `Ablauf- und Terminplanung im Wohnungsbau.pdf` (Tabelle 8) +
  `04_Terminplanung/Eberle/PDF/100318_Grobterminplan.pdf` →
  [[terminplan-dauern-kennwerte-wohnungsbau-tabelle8-plus-benchmark-eberle]], neu.
- [x] `ausschreibung odb/ausschreibungsunterlagen.pdf` (Umbau Spital Oberdiessbach) →
  [[akutspital-pflegezentrum-umnutzung-referenzfall-oberdiessbach-2009]], neu.
  Personennamen des Preisgerichts/der Experten bewusst nicht destilliert (Sperrliste).

**Bereits in Korpus 3 (`buero-referenzen`) destilliert — hier nicht erneut, nur verlinkt:**

- [=] `01_Normen_PM/.../112_d.pdf` (SIA 112:2001) — Norm-Original, gehört zu
  `wissen/normen`, nicht in dieser KB destillierbar (Abgrenzung `archiv-fachwissen-spec.md`).
- [=] `01_Normen_PM/SIA_102_Ausgabe_2003_Honorare/` (102_d.pdf, 102_d_2003.pdf) —
  Norm-Original, dito.
- [=] `Leutschenbach_BGS/050420_H-Bausumme.pdf` + `.xls` — identische Datei bereits
  destilliert als [[honorarberechtigte-bausumme-anrechenbarkeit]] (Korpus 3,
  `18_Projektkostenplanung`).
- [=] `01_Normen_PM/SIA_416_.../416d.pdf` — Norm-Original.
- [=] `01_Normen_PM/SIA_142_.../142_D.PDF` — Norm-Original.
- [=] `01_Normen_PM/SIA_500_.../SIA_500_...pdf` + Auslegungen — Norm-Original.
- [=] `01_Normen_PM/VKF 1.1.15_.../1-15_web.pdf` + `15-15_web.pdf` — Norm-Original.
- [=] `01_Normen_PM/VSS-Norm-SN 640 291a_.../` — Norm-Original (VSS); methodische
  Parkierungsgeometrie nicht separat destilliert in diesem Lauf, siehe
  `wiki/QUESTIONS.md`.
- [=] `Anlagekosten_Leutschenbach.pdf` — dasselbe Objekt bereits destilliert
  (Korpus 3, u. a. [[kostenschaetzung-vorprojekt-schaetzgrundlage-ausweisen]]).
- [=] `KV_Zusammenstellung_Leutschenbach.pdf` — bereits destilliert als
  [[kv-detailausdruck-gliederungsstufen]] (Korpus 3).
- [=] `Finanzrapport_Leutschenbach.pdf` — bereits destilliert als
  [[kostenkontrolle-spaltenmodell-oeffentliche-bauherrschaft]] (Korpus 3).
- [=] `Leutschenbach_Kennzahlen_Leutschenbach.pdf` — bereits destilliert als
  [[kostenkennwerte-schulanlage-leutschenbach]] (Korpus 3).
- [=] `04_Terminplanung/Leutschenbach/Grobterminplan.pdf` + `Terminplan_aktuell_Juni04.pdf`
  — dasselbe Objekt bereits destilliert als
  [[grobterminplan-gewerkefolge-elementbau-leutschenbach]] und
  [[terminplan-phasenkette-oeffentliche-bauherrschaft-leutschenbach]] (Korpus 3).
- [=] `100218_Baubeschrieb_Waltenschwil.pdf` — identische Datei bereits destilliert als
  [[baubeschrieb-als-kostentraeger]] (Korpus 3).
- [=] `02_Projektbeschriebe/Leutschenbach/` (14 Dateien) — Objekt bereits vollständig
  destilliert in Korpus 3, Sektion `17_Projektbeschriebe` (5 Artikel).

**Cross-KB, nicht in dieser KB destilliert (Ziel wäre ein anderer KB, ausserhalb dieser
Lane):**

- [~] `Grobkostenberechnung_SIA116_SIA416.docx` + `Jans_Grobkostenberechnung_...pdf`
  (eigener Fachtext Raphael Jans zur Grobkostenmethodik, Kompaktheits-Erkenntnis,
  Divisor-70-Regel) — inhaltlich klar **`wissen/grobkosten`**-Stoff, nicht
  `architektur-fachwissen`. Nicht hier destilliert, Cross-KB-Hinweis in
  `wiki/QUESTIONS.md` für die zuständige Lane.

**Nicht destillierbar / kein Artikel gerechtfertigt:**

- [-] `03_Kostenplanung/00_Organisation/11_Tools/8_1 Vorlage_Nachweis_Kennzahlen.xls` —
  laut Kurzbefund nur die Kopfstruktur belegt (LibreOffice-Konversion exportiert nur
  erstes Tabellenblatt), kein extrahierbarer Fachinhalt für einen eigenständigen
  Artikel. Bleibt P1 offen für einen künftigen Lauf mit Excel-Vollzugriff.
- [-] `KS SA Leutschenbach Architekt 1.xls` (Kostenschätzung Mobiliar BKP 900,
  Leutschenbach) — Objekt Leutschenbach, Kostenkennwert-Charakter bereits über
  [[kostenkennwerte-schulanlage-leutschenbach]] (Korpus 3) abgedeckt; eigenständiger
  Mehrwert einer BKP-900-Zusatzdestillation nicht ausreichend für einen eigenen
  Artikel in diesem Lauf.
- [-] `sia451.01s.txt` + `npk_texte.msia.txt` (SIA-451-Testfixture Malerarbeiten) —
  kein Fachwissen im Sinne eines Wiki-Artikels, sondern ein Entwickler-Testdatensatz
  für den geplanten SIA-451-Parser. Fundstelle in `wiki/QUESTIONS.md` vermerkt statt
  als Artikel destilliert.
- [-] `1026_de_2015.pdf` (CRB 1026, Verbindungen eBKP-H↔NPK) — vorliegende Datei ist nur
  der 9-seitige Vorspann, die eigentlichen Mappingtabellen fehlen; kein
  destillierbarer Inhalt vorhanden (Beschaffungslücke, bereits im Kurzbefund oben
  Abschnitt 11 dokumentiert).

**P1-Status dieser Sektion nach diesem Lauf: die vier genuin neuen Fachbausteine sind
destilliert. Verbleibende offene P1-Positionen sind entweder Norm-Originale (gehören zu
`wissen/normen`, nie hier), bereits über Korpus 3 abgedeckte Leutschenbach-Duplikate, ein
Cross-KB-Fund (`wissen/grobkosten`) oder technisch nicht sauber destillierbar (nur
Kopfstruktur, Testfixture, unvollständige Quelle). **Kein weiterer eigenständiger
P1-Artikel für diese Sektion offen.** P2 bleibt vollständig offen (u. a. `schaetzungsanleitung_kap5.pdf`,
OAK/EAK-Kataloge, KV-Deffisierung-Erläuterungen, Bauprozess-Systematik).

## Destillat-Fortschritt — Ergänzung 2026-08-30 (P2, erster Lauf dieser Sektion)

Zweiundzwanzigster Destillat-Lauf des Korpus `archiv-fachwissen` (Lane FACHWISSEN), erster
gezielter P2-Lauf der Sektion `03_Bauprozesse_I_II` (drittgrösste Sektion nach Ertrag,
nächster Schritt gemäss `KORPUS-QUEUE.md` nach Abschluss von `01_Konstruktion`). Alle
Aussagen gegen die Primärquelle (PDF/DOC im Archiv), nicht nur gegen diese
Inventar-Zusammenfassung, verifiziert (30.08.2026).

**Destilliert (drei neue Wiki-Artikel, alle `status: emerging` bzw. `speculative`):**

- [x] `05_KV_Deffisierung/2013_KV_Merkblatt.pdf` (Grün Stadt Zürich, v2013-01) →
  [[kostenvoranschlag-merkblatt-oeffentliche-bauherrschaft-reserven-verwaltungskosten]],
  neu. Reserven-Prozentsätze BKP 61/62, Verwaltungskostenzuschlag 7,5 %, MWST-Handhabung,
  weiter Kostenumfang-Begriff im Verpflichtungskredit.
- [x] `05_KV_Deffisierung/Elementbasierter Kostenvoranschlag.pdf` (Web-Auszug, sinngemäss)
  + `08_OAK_Objektkatalog_264.-/OAK_de.pdf` (CRB, Impressum/Inhaltsverzeichnis) →
  [[ebkp-h-2012-gliederungslogik-elementarten-oak-eak-kataloge]], neu. Drei
  Gliederungsebenen (Hauptgruppe/Elementgruppe/Element), Elementarten als vierte, nicht
  genormte Stufe, Verweis auf OAK/EAK-Kataloge (Kennwerte selbst nicht reproduziert,
  CRB-Copyright). Rückverlinkt mit den beiden bereits bestehenden eBKP-H-Artikeln dieser
  Sektion (frontmatter `links:` ergänzt, `git diff --numstat` je 1/1 geprüft — reine
  Backlink-Ergänzung, kein Inhalt entfernt).
- [x] `06_Checklisten/Checkliste.doc` + `Grundlegende Bauelemente.doc` +
  `Inhalt_Abschlusspraesentation.doc` (alle undatiert bis WS 07/08, per `textutil`
  extrahiert) → [[eth-checklisten-kontextanalyse-bauelementglossar-abgabeliste]], neu,
  `status: speculative` (Autorenschaft nicht abschliessend belegt).

**Cross-KB-Duplikat, hier nicht destilliert:**

- [=] `11_Kostenkennzahlen/schaetzungsanleitung_kap5.pdf` — vollständig geprüft (Tabellen
  1–11 gelesen). Tab. 2/3/9/10/11 (Neuwert-Richtwerte, BKP-2-Prozentanteile, Lebensdauer
  Baumaterialien, wirtschaftliches Alter, Wertminderungstabelle) sind bereits belegt
  destilliert in `wissen/immobilienbewertung/wiki/realwert-sachwert.md` (Quelle IMMO-03
  Schätzungen, dort vollständig mit Berechnungsbeispiel). Kein Doppelartikel in dieser KB;
  die übrigen Tabellen (Zürcher/Luzerner Baukostenindex, Lageklassenschlüssel,
  Rentenbarwert-/Abzinsungsfaktoren, Gastgewerbe-Bewertungskriterien) sind reine
  Zahlenreihen ohne eigenständigen Fachwissens-Mehrwert über die bereits destillierten
  Tabellen hinaus.

**Nicht destilliert (Cross-KB/Abgrenzung, gehört zu `wissen/normen`):**

- [=] `01_Normen_PM/VKF 1.1.15_.../VKF_Fluchtwegelängen_16-03d.pdf` +
  `web_distances_policedufeu_2015_d.pdf` — Norm-/kantonale Vollzugshilfe, Abgrenzung
  `archiv-fachwissen-spec.md`.
- [=] `01_Normen_PM/VSS-Norm-SN 640 273a_Sichtzone/` — Norm-Original (VSS).
- [=] `01_Normen_PM/SIA_500_.../00_sekundaer/` — Sekundärliteratur zu SIA 500, gehört
  methodisch zu `wissen/normen`.
- [=] `05_Vertraege/2_2002_KBBOB Hilfe Arch_verträge.pdf` — KBOB-Honorarempfehlung 2002
  (Gleitpreisklausel), inhaltlich näher an Skill `honorarberechnung-sia102`/`wissen/normen`
  als an dieser KB; Tarifwerte 2002 ohnehin überholt. Cross-KB-Hinweis `wiki/QUESTIONS.md`.

**Zurückgestellt (P2, geringer Ertrag im Verhältnis zum Aufwand):**

- [-] `00_Administration/01_Skripte/bauprozesse.pdf` (40 S., Zusammenfassung fremder
  Lehrbücher nach Menz) — Urheberrechtslage einer vollständigen Zusammenfassung eines
  fremden Lehrbuchs unklar; in diesem Lauf nicht destilliert.
- [-] `00_Administration/02_Vorlesung/04_doppelR/` (Kapitelweise Kurzdestillate) — 
  Fremdautor-Zusammenfassung, gleiche Urheberrechtsvorsicht.
- [-] `03_Kostenplanung/00_Organisation/10_.../11_Tools/` (AVA-Software-Vergleich 2011) —
  Marktbild veraltet, kein aktueller Mehrwert für eine Ausschreibungs-Anforderungsliste;
  in diesem Lauf zurückgestellt.
- [-] `02_Projektbeschriebe/Beschriebe.doc` + `03_Kostenplanung/Baubeschrieb.pdf` — noch
  nicht gelesen, für einen Folgelauf offen.
- [-] `01_Phasen_Kostenaufstellungen/03_Ausschreibung/` (Ausschreibungspläne + reale
  Unternehmerofferte) — Anonymisierungsprüfung (Unternehmername) nötig, in diesem Lauf aus
  Zeitgründen zurückgestellt.

**P2-Status dieser Sektion nach diesem Lauf: drei neue Fachbausteine destilliert, ein
grosser Cross-KB-Fund vermieden (Doppelarbeit mit `immobilienbewertung`), mehrere
Norm-/Urheberrechts-Positionen bewusst nicht hier destilliert. Rund 15–20 P2-Positionen
bleiben für einen Folgelauf offen** (Bauprozess-Systematik Menz, Ausschreibungsbeispiele,
KBOB-Gleitpreisklausel als Cross-KB-Kandidat, Baubeschrieb-Musterbeispiel).

## Destillat-Fortschritt — Ergänzung 2026-08-30 (P2, zweiter Lauf dieser Sektion)

Dreiundzwanzigster Destillat-Lauf des Korpus `archiv-fachwissen` (Lane FACHWISSEN),
Fortsetzung der Sektion `03_Bauprozesse_I_II`. Dispatch-Text erneut veraltet (behauptete
«kein Destillat, keine Spec, 2 Wiki-Artikel» sowie fälschlich Station «MacBook Pro» statt
des per `scutil` bestätigten Hostnamens Macmini) — vierzehntes Beispiel des dokumentierten
Dispatch-Bugs, Memory `project_fachwissen-dispatch-loop`. Am realen Stand
(`KORPUS-QUEUE.md`) weitergearbeitet, keine Spec neu geschrieben. Vor Beginn `ps aux` auf
Doppel-Instanzen geprüft: keine zweite FACHWISSEN-Instanz aktiv.

**Destilliert (zwei der beiden noch ungelesenen Positionen aus dem vorigen Lauf):**

- [x] `02_Projektbeschriebe/Beschriebe.doc` (Dateidatum 27.06.2007, unvollständiges
  Fragment, kein Autor) → vollständig gelesen (`textutil`), SIA-416/SIA-116-Volumenvergleich
  mit Kostenkennwert destilliert →
  [[sia416-sia116-volumenvergleich-kostenkennwert-uebungsbeispiel]], neu,
  `status: speculative` (Herkunft/Autorenschaft nicht belegt).
- [x] `03_Kostenplanung/Baubeschrieb.pdf` (13 Seiten, Verkaufsbeschrieb Gäbrisstrasse
  Rorschach, 4.12.2011) → Seiten 1-11 vollständig gelesen (`pypdf`), Seite 13 «Adressen»
  bewusst **nicht** gelesen (Sperrliste-Nähe, reine Kontaktliste). Technischer Teil
  (BKP-gegliederte Leistungsbeschreibung, Holzbau-Konstruktionsangaben,
  Budget-Richtpreise) als drittes Beispiel in [[baubeschrieb-als-kostentraeger]] ergänzt
  (dritte unabhängige Bestätigung der BKP-Phantom-Code-Warnung: 051 als Sammelcode
  verwendet, 213 mit abweichender Bedeutung, 466 existiert im BKP 2017 gar nicht). Der
  Klauselteil (Mängelhaftung, Käuferänderungen, Plan-Hierarchie) als eigener Artikel
  destilliert → [[verkaufsbeschrieb-stweg-standardklauseln-kaeuferaenderungen-gaebrisstrasse]],
  neu, `status: emerging`.

**Verbleibende P2-Positionen dieser Sektion (unverändert gegenüber vorigem Lauf, aus
Zeitgründen in diesem Lauf nicht bearbeitet):**

- [-] `00_Administration/01_Skripte/bauprozesse.pdf` (40 S., Zusammenfassung fremder
  Lehrbücher nach Menz) — Urheberrechtslage weiterhin ungeklärt.
- [-] `00_Administration/02_Vorlesung/04_doppelR/` — dieselbe Urheberrechtsvorsicht.
- [-] `03_Kostenplanung/00_Organisation/10_.../11_Tools/` (AVA-Software-Vergleich 2011) —
  Marktbild veraltet, weiterhin zurückgestellt.
- [-] `01_Phasen_Kostenaufstellungen/03_Ausschreibung/` (Ausschreibungspläne + reale
  Unternehmerofferte) — Anonymisierungsprüfung weiterhin offen.

**P2-Status dieser Sektion nach diesem Lauf: zwei weitere Fachbausteine destilliert (drei
neue Wiki-Artikel/-Erweiterungen), damit alle zu Beginn dieses Laufs als „ungelesen"
markierten Positionen abgearbeitet. Vier P2-Positionen bleiben offen** — zwei davon mit
ungeklärter Urheberrechtslage (Menz-Zusammenfassungen), eine mit Anonymisierungsbedarf, eine
mit fehlendem Aktualitätswert. Für die Sektion ist damit kein unblockierter,
schnell erschliessbarer P2-Rest mehr vorhanden; ein Folgelauf müsste entweder die
Urheberrechtsfrage klären, die Anonymisierung vornehmen, oder gemäss Queue-Regel zur
nächstgrössten Sektion nach Ertrag übergehen.

## Destillat-Fortschritt — Ergänzung 2026-08-30 (P2, vierter Lauf dieser Sektion)

Vierundzwanzigster Destillat-Lauf des Korpus `archiv-fachwissen` (Lane FACHWISSEN).
Dispatch-Text erneut veraltet (identisches Muster, Memory `project_fachwissen-dispatch-loop`,
45. Beispiel), am realen `KORPUS-QUEUE.md`-Stand weitergearbeitet. **Wichtiger Hinweis für
Folgeläufe:** dieser Lauf begann fälschlich, ohne zuerst den kompletten
`## Destillat-Fortschritt`-Verlauf dieser Datei zu lesen (nur `tail` geprüft, nicht die
beiden bereits bestehenden Abschnitte weiter oben) — dadurch wurden zwei Positionen erneut
bearbeitet, die im ersten Lauf (siehe oben) bereits verarbeitet waren. Fehler in diesem Lauf
selbst korrigiert (Duplikat-Artikel gelöscht, Kapitalisierungssatz-Abschnitt aus einem
zweiten Artikel entfernt), aber als Lehre für den nächsten Lauf hier festgehalten: **vor
Bearbeitung IMMER alle `## Destillat-Fortschritt`-Abschnitte einer Inventardatei lesen, nicht
nur den letzten.**

**Bearbeitet:**

- [x] `06_Checklisten/*.doc` (Zeile 108) — **Fehlgriff.** War bereits im ersten P2-Lauf dieser
  Sektion destilliert (`[[eth-checklisten-kontextanalyse-bauelementglossar-abgabeliste]]`).
  Eigener Duplikat-Artikel `entwurfscheckliste-kontext-tektonik-bauteilglossar-abgabeset-eth.md`
  in diesem Lauf wieder gelöscht, bevor er committet wurde. Kein Schaden entstanden.
- [x] `11_Kostenkennzahlen/schaetzungsanleitung_kap5.pdf` (Zeile 95) — **Korrektur einer
  Voreinschätzung.** Der erste P2-Lauf hatte die Lageklassenschlüssel-/Landwertanteil-Tabellen
  (Tab. 6-8) als «reine Zahlenreihen ohne eigenständigen Fachwissens-Mehrwert» eingestuft und
  nicht destilliert. Bei genauerer Prüfung ist die Lageklassenschlüssel-**Methode** (vier
  gewichtete Lagekriterien → Mittelwert → nichtlineare Landwertanteil-Kurve) eine
  eigenständige, wiederverwendbare Bewertungslogik, in `wissen/immobilienbewertung` nicht
  vorhanden → [[schaetzungsanleitung-lageklassenschluessel-landwertanteil]], neu,
  `status: speculative`. Die Kapitalisierungssatz-Zuschlagssystematik derselben Quelle
  (Tab. 21/23) bleibt zu Recht unangetastet — die ist bereits vollständig in
  `wissen/immobilienbewertung/wiki/ertragswert-dcf.md` destilliert (dort korrekt erkannt).
- [x] `05_Vertraege/2_2002_KBBOB Hilfe Arch_verträge.pdf` (Zeile 104) — **Korrektur einer
  Voreinschätzung.** Der erste P2-Lauf hatte das Dokument als reinen Cross-KB-Kandidaten
  eingestuft und nicht destilliert (`wiki/QUESTIONS.md` #67). Da diese KB bereits zwei
  Honorarmechanik-Artikel aus Korpus 3 führt, ist Honorarmethodik entgegen der damaligen
  Einschätzung ein etablierter Artikeltyp hier. Gleitpreisklausel-Formel und
  Honorargrundprozentsatz-Kurve destilliert →
  [[kbob-2002-gleitpreisklausel-teuerungsabrechnung-honorargrundprozentsatz]], neu,
  `status: emerging`. Die Zeittarif-Kategorien-Mechanik desselben Dokuments bewusst NICHT
  erneut destilliert (Duplikat zu [[zeittarif-mechanik-tarifblatt-stgallen-2009]]).
  `wiki/QUESTIONS.md` #67 mit Auflösungsnotiz ergänzt.

**P2-Status dieser Sektion nach diesem Lauf: zwei weitere Fachbausteine destilliert (zwei
neue Wiki-Artikel), zwei frühere Voreinschätzungen korrigiert. Verbleibende offene
P2-Positionen unverändert gegenüber dem zweiten Lauf** (Menz-Bauprozesse-Zusammenfassung
Urheberrechtsfrage, AVA-Software-Vergleich veraltet, Ausschreibungspläne/Unternehmerofferte
Anonymisierungsprüfung). Kein unblockierter, schnell erschliessbarer P2-Rest mehr vorhanden;
nächster Lauf sollte gemäss Queue-Regel zur nächstgrössten Sektion mit offenem P2 in
`archiv-fachwissen` übergehen (Kandidaten nach Zeilenzahl: `01_Tragwerk`,
`02_Architektur_Vermitteln`, `01_Landschaftsarchitektur`, je 12 P2-Zeilen, keine bisher
bearbeitet).
