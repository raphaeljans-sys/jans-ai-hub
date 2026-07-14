# Trainingslauf 40 — Kartenportale (PL-01) + Energie (PL-04), Token-Vollgas Fan-out

**Datum:** 2026-07-14 · **Station:** Mac Mini · **Methodik:** Ordner-Abgleich (Fan-out zwei
Agenten parallel, je Domaene) — Quellordner vs. `raw/_INGESTED.md` diffen, echte Neufunde
belegt einarbeiten. Diese Methodik hat in den letzten Laeufen (K27-K33, E27-E31) zuverlaessig
neue Funde geliefert, auch wenn die Domaene scheinbar "erschoepft" war — bestaetigt sich auch
in diesem Lauf.

## Domaene 1 — Kartenportale (PL-01)

**K34 — neue Schutz-Domaene Denkmalpflege/Archaeologie.** Quelle:
`PL-01/CH Schweiz/gisos.bak.admin.ch/gisos.bak.admin.ch.docx` (ISOS-Bund) +
`PL-01/Grundstueckkataster/Wald ZH/Archäologische Zonen und Denkmalschutzobjekte_A3Hoch_1000.pdf`
(GIS-ZH-Druckprodukt, 06.05.2024). Zwei Ebenen: national ISOS (Bundesamt fuer Kultur, nur
Portal-Link belegt, kein Endpunkt getestet) und kantonal ZH (Denkmalschutzobjekte +
archaeologische Zonen, nur ueberkommunale Kompetenz, §§ 203/209/211 PBG als Legende auf dem
Kartenprodukt zitiert). Beim Retest der `maps.zh.ch/wfs/OGDZHWFS`-GetCapabilities wurden zwei
bisher unbekannte, login-freie Layer gefunden und **live verifiziert**:
`ms:ogd-0368_giszhpub_arv_kaz_denkmalschutzobjekte_p` und `ms:ogd-0087_arv_kaz_archzonen_f`.
End-to-End-Test `node geo-zh.mjs --adresse "Haselstudstrasse 2, Wald ZH" --produkt denkmalschutz`
lieferte 4 reale Denkmalschutzobjekte (Ensemble «Montana»/«Zelgli», Baujahr, Einstufung,
RRB-/AREV-Erlassnummern, GVZ-Nr., EGID) → NEU [[kartenportale-denkmalschutz-isos]], Connector
neu um `--produkt denkmalschutz` erweitert und getestet, Status emerging.

**K35 — .gdb-Format (Delta zu K8).** Quelle: `PL-01/Datenformate_Geokartenmaterial/Gdb Format.docx`
(Notiz Raphael Jans, 04.06.2024). ESRI File-Geodatabase fehlte in der 7-Format-Tabelle — kein
Direktimport in JANS-Zielprogramme, Umweg via ArcGIS Pro/QGIS-Plugin OpenFileGDB + Re-Export
.obj/.fbx/.dxf fuer C4D/Rhino/ArchiCAD/AutoCAD/Revit → [[kartenportale-geoportale-uebersicht]]
§Geodaten-Formate, established.

**K36 — Bezirk Einsiedeln «Buero Bauen» (Delta zu K13).** Quelle:
`PL-01/KtSZ Schwyz/einsiedeln.ch/` (Screenshot 16.11.2023). Bestaetigt organisatorisch die
Bezirksverwaltung als zustaendige Baubehoerde und dokumentiert erstmals, dass Baugesuche im
Bezirk Einsiedeln seit **1. Dezember 2022 ausschliesslich ueber eBau** eingereicht werden
koennen — kein Papierweg mehr → [[kartenportale-ebau-sz-baugesuch]] §4b, emerging.

**Geprueft, kein neuer Fund:** `KtSZ Schwyz/ortsplanung.ch` (leer), `Objektschutz/Thalwil`
(leer), `OEREB-Auszug/_Kommunikation/GIS-948` (bereits Quelle des bestehenden Artikels
[[kartenportale-oereb-egrid-bezug]]), `KtLU Luzern/Geoportal` + `Raumdatenpool` (deckt sich mit
bereits als "niedrige Prioritaet" abgeschlossenem K16).

## Domaene 2 — Energie (PL-04)

Alle vier Funde eingearbeitet in [[energie-pv-eignung-typenwahl]] (Frontmatter aktualisiert,
vier neue Abschnitte/Erweiterungen).

**E32 — Planungsgrenzwerte dachintegriertes Typ-B-System.** Quelle:
`PL-04/Solaranlage/solar-home.ch/Sunskin/sunskinR_roofPlanungUndAusfuehrung_de.pdf` (Eternit,
Rev. 01.2022, 67 S.). Minimale Dachneigung 10°, maximale 60°, Bezugshoehe bis 2000 m ohne
Ruecksprache; Schneelast-Bemessungswert Ed (~4.4 bis ~16.2 kN/m² je Bezugshoehe) bestimmt die
Lattendimensionierung; Hinterlueftung mit Mindesthoehe 60 mm ist Pflichtbauteil → NEU §1c,
established.

**E33 — Methodik/Skala der PV-Eignungswerkzeuge.** Quelle:
`PL-04/Solaranlage/uvek-gis.admin.ch/uvek_gis_admin_bericht_garagendach.pdf` (BFE/MeteoSchweiz/
swisstopo, 02.07.2023). Belegte 5-stufige Eignungsklassen-Skala (Gering <800 bis Hervorragend
≥1400 kWh/m²·a), Modulwirkungsgrad-Sprung von 17 % auf 20 % seit 09/2022, Performance Ratio
80 %, pauschale 10-Rp./kWh-Monetarisierung als grobe Naeherung → NEU §2b, established.

**E34 — realer installierter System-CHF/kWp-Wert.** Quelle:
`PL-04/Solaranlage/energieschweiz.ch/Diemtigen/Photovoltaik-Report_3753_1-24_26_6.0kW.pdf`
(EnergieSchweiz-Solarrechner-Musterbericht, 02.07.2023). 6.0-kWp-Kleinanlage, CHF 19'140
schluesselfertig ≈ 3'190 CHF/kWp installiert; KLEIV-Anteil ≈ 13 %, Steuerabzug 18 %,
Amortisation 24 Jahre — schliesst die in E11 offen gebliebene Luecke fuer Typ E, fuer Typ B/C/D
bleibt sie offen → neue Tabellenzeile §3, established.

**E35 — architektonische PV-Integrationsbeispiele.** Quelle:
`PL-04/Solaranlage/_Literatur/Final_Dossier_Solararchitekur_tiefaufgeloest.pdf`
(TEC21/TRACÉS/archi Dossier 5/2012 "SolaRes Bauen", 25 S.). Leitprinzip Beat Kaempfen ("jedes
Bauelement muss mindestens zwei Funktionen erfuellen"), belegt an zwei realen Projekten —
Plusenergiehaus Zuerich Hoengg (Vakuumroehrenkollektoren als Sichtschutz/Verschattung/
Absturzsicherung zugleich) und Umwelt Arena Spreitenbach (5'500 PV-Module, davon 1'000
Sonderformen, Plusenergiebau 560'150 vs. 404'941 kWh/a) → NEU §5, emerging (Datenstand 2012,
Fachzeitschrift ohne JANS-eigene Verifikation).

**Geprueft, kein neuer Inhalt:** `_Literatur/planer_d.pdf` (inhaltsgleich mit bereits ingested
minergiewissen-PDF), `prefa.solar/PREFA_Solarfolder_CH-deutsch.pdf` (Dopplung zur bereits in
§1b zitierten Referenz), `energieheld.ch/` + `sonnenverlauf.de/` (triviale Website-Screenshots
ohne Kennzahl), `prefa.solar/PREFA_Farbsortiment_CH-de.pdf` (Farbkarte), `pv sol premium/
Projekt_PI_PV_SIM_01.pdf` (reine PVSOL-Simulationsausgabe ohne neue uebertragbare Kennzahl).

**Backlog fuer kuenftigen Lauf:** `Solaranlage/_Literatur/20220606_GreenPV - Workshop 2.pdf`
(46 S. Workshop-Foliensatz Fassadenbegruenung + PV) und `wissen.minergie.ch/
pvopti_MFH_Nachweiskurs-230921-173146.xlsb` (PV-Optimierungs-Tool als xlsb, nicht ohne Weiteres
textuell auslesbar).

## Verifikations-Stufe (Pflicht seit 12.07.2026)

Beide Agenten haben vor Uebernahme gegen die Originalquelle geprueft. Kartenportale-Agent hat
zusaetzlich den neuen Connector-Endpunkt `--produkt denkmalschutz` end-to-end mit einem realen
Adress-Beispiel getestet (nicht nur `GetCapabilities` gelesen, sondern `GetFeature` an einer
echten Parzelle mit 4 Treffern verifiziert), bevor der Fund als "established/getestet"
dokumentiert wurde. Energie-Agent hat Herstellerdatenblatt/amtlichen Bericht direkt gelesen
(Seitenzahlen-Beleg), keine unbelegten Kennwerte uebernommen.

## Register aktualisiert

- `training/curriculum.md`: K34-K36 (Domaene 1) + E32-E35 (Domaene 2) neu angehaengt.
- `wiki/QUESTIONS.md`: neuer Eintrag oben in Sektion A (K34-K36) und Sektion D (D23, E32-E35).
- `wiki/INDEX.md`: neue Zeile [[kartenportale-denkmalschutz-isos]]; Zeilen
  [[kartenportale-geoportale-uebersicht]], [[kartenportale-ebau-sz-baugesuch]],
  [[energie-pv-eignung-typenwahl]] um die neuen Funde ergaenzt.
- `raw/_INGESTED.md`: sieben neue Zeilen (fuenf "eingearbeitet", zwei "geprueft, kein neuer
  Inhalt"-Sammelzeilen).
- Wiki-Artikel: NEU [[kartenportale-denkmalschutz-isos]] (emerging); geaendert
  [[kartenportale-geoportale-uebersicht]] (§Geodaten-Formate), [[kartenportale-ebau-sz-baugesuch]]
  (§4b), [[energie-pv-eignung-typenwahl]] (§1c/§2b/§3/§5).
- Connector: `skills/planungsgrundlagen/connectors/geo-zh.mjs` — neues Feature
  `--produkt denkmalschutz`, getestet.

## Was als naechstes

- **Kartenportale:** ISOS-Bundesteil (gisos.bak.admin.ch) noch nicht endpunktseitig erschlossen
  — nur der Portal-Link ist belegt; kommunale Denkmalschutz-Inventare (unterhalb der
  kantonalen Ebene) sind ebenfalls offen. Backlog aus fruaheren Laeufen (SubmissionEnergie-AHB-
  Unterordner, Recht/Norm) bleibt fuer die naechste Recht/Norm-Runde bestehen.
- **Energie:** Typ B/C/D-Systempreis (CHF/kWp installiert) bleibt eine echte Luecke —
  faellt an, sobald eine reale JANS-Schlussabrechnung vorliegt (analog D9 fuer den MFH-/ZEV-Fall).
  Zwei Dateien im Backlog (GreenPV-Workshop-PDF, xlsb-Optimierungstool) fuer den naechsten Lauf.
- **Rotation:** naechster Lauf turnusgemaess Recht/Norm + Brandschutz (Domaenen 3+4), sofern
  nicht ein konkreter neuer Hinweis eine fruehere Wiederholung von Kartenportale/Energie
  rechtfertigt. Die Ordner-Abgleich-Methodik bleibt der zuverlaessigste Weg, auch in scheinbar
  erschoepften Domaenen neue Substanz zu finden — vierter Lauf in Folge (K27-K36, E27-E35) mit
  echten Neufunden.
