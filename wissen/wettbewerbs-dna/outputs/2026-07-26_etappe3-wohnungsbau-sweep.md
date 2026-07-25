---
title: Quellen-Sweep Etappe 3 Wohnungsbau (Baustein B1)
status: established
last_updated: 2026-07-26
---

# Quellen-Sweep Etappe 3 Wohnungsbau (Baustein B1)

Dieser Report dokumentiert den Quellen-Sweep fuer die Etappe 3 (Bauaufgabe **Wohnungsbau**,
Prio 3 — nach Abschluss von Schulbau und Healthcare die letzte noch offene Ziel-Bauaufgabe)
der Wettbewerbs-DNA-Wissensbasis. Sechs Scouts (Workflow-Fan-out, general-purpose-Agenten mit
WebSearch/WebFetch + curl-Verifikation) haben parallel nach entschiedenen Schweizer
Wohnungsbau-Wettbewerben mit frei zugaenglichen Juryberichten gesucht:

1. **espazium** — competitions.espazium.ch (Rubrik «Entschiedene Wettbewerbe»), Suchbegriffe
   Wohnsiedlung/Mehrfamilienhaus/Wohnueberbauung/Genossenschaftssiedlung
2. **zuerich** — Stadt Zuerich (Amt fuer Hochbauten, Juryberichte-Publikationen), Kanton Zuerich,
   grosse Zuercher Wohnbaugenossenschaften (ABZ, FGZ, Sonnengarten, bhz u.a.)
3. **bern-basel** — Stadt/Kanton Bern (Immobilien Stadt Bern, Wohnbaugenossenschaften Bern),
   Basel-Stadt (Hochbauamt, media.bs.ch), Basel-Landschaft
4. **luzern-ostschweiz** — Luzern, St. Gallen (Ortsbuergergemeinde), Winterthur, Zug, Thurgau
   (Stadt Kreuzlingen), Graubuenden (Arosa)
5. **weitere-kantone** — Aargau, Solothurn, Bern (kleinere Gemeinden), Graubuenden — Regionen
   ausserhalb der Grossstaedte
6. **genossenschaften-stiftungen** — private/gemeinnuetzige Wohnbautraeger, Pensionskassen als
   Bauherrschaft (UBS, ASGA, NEST, Genfer Kassen), konkurado.ch NUR als Verzeichnis genutzt

**Bilanz:** 61 gemeldete Rohkandidaten, nach Dedup (identische PDF-URL — sechs Wettbewerbe
wurden von zwei Scouts unabhaengig gefunden: Promulins Samedan, Reichenbachstrasse 118 Bern,
Walkeweg Basel 2. Stufe, Graphis Aarau-Rohr, Guggach II Zuerich, Siedlung Vogelsang Winterthur)
verbleiben **55 eindeutige Kandidaten**, davon **52 mit per HTTP verifiziertem, frei
zugaenglichem Jurybericht-PDF** (HTTP 200 + %PDF-Signatur curl-geprueft) und 3 mit unklarem
Zugang (Paywall/Login-Sperre/kein PDF auffindbar). Damit sind die B1-Ziele der Etappe
(>= 15 gepruefte Kandidaten, davon >= 8 frei zugaengliche PDFs) deutlich uebertroffen —
in aehnlicher Groessenordnung wie beim Healthcare-Sweep (48 → 42).

**Dedup gegen Bestand:** Keine Ueberschneidung mit dem bestehenden `raw/`/`wiki/extern/`-Bestand
(reiner Schulbau + Healthcare). Die drei eigenen JANS-Wohnungsbau-Teilnahmen (2205 Zentrum
Guggerbach Davos, 2207 Schliengerweg Basel, 2503 Glockenacker Zuerich-Witikon) sind von allen
Scouts korrekt ausgeschlossen worden und erscheinen nicht in der Liste.

## Subtypen-Abdeckung (54 eindeutige Kandidaten)

- **Genossenschaftlich** (Wohnbaugenossenschaft als Auslober/Traeger): 20 — u.a. Neuwiesen,
  Seebahn-Hoefe, Guet+Espenhof, Goldacker, Grossalbis, Kelchweg, Gesewo Wiesendangen (ZH);
  Via Felsenau, Holliger U1/O3-U3 (BE); Walkeweg-Genossenschaften (BS); Graphis, Vogelsang (AG/ZH);
  Industriestrasse-Kooperation, Hochhuesliweid (LU)
- **Stadt/Gemeinde/Kanton** (oeffentliche Bauherrschaft): 15 — u.a. Schuetze-Areal, Imfeldsteig,
  Salzweg (Stadt Zuerich); Viererfeld/Mittelfeld, Eymatt, Freiburgstrasse 121 (Stadt Bern);
  Riehenring, Rankstrasse, Hochbergerstrasse, Burgfelderstrasse (Kanton BS); Promulins (Samedan),
  Waetterweid (Arosa), Erlach, Waldacker/Stadtsaege (Ortsbuergergemeinde St. Gallen)
- **Privat-institutionell** (Pensionskasse/Anlagestiftung/privater Investor): 12 — Dennlerstrasse
  (Pensionskasse UBS), Guggach II (Pensionskasse UBS), Brugg-Umiken (Anlagestiftung Rimmobas),
  Holliger U2 (npg AG), Brunnmatt-Ost/Baelliz Thun (unklar, private Investoren), ASGA
  Stephanshornweg, Claire-Vue Lancy + Les Vernets/PAV Genf (Pensionskassen), NEST Aemet
  (unklar), Korki-Areal Duerrenaesch, Kreuzlingen-Trias (Bernrain/Wolfacker/Bellevue 51)
- **Gemischt-genossenschaftlich/staedtebaulich** (Wohnen dominant + Gewerbe/Park/Kultur):
  7 — Koch-Areal, Stadtsaege St. Gallen, Industriestrasse Luzern, Gleis 11 Solothurn,
  Unterfeld Sued Baar, Les Vernets/PAV Genf
- **Grenzfall Alterswohnen ohne Pflege**: 1 — Felsenrain Zuerich (Stiftung Alterswohnungen der
  Stadt Zuerich; laut Scout-Recherche betreuungsfreies Wohnen ohne Pflegekomponente — bewusst
  NICHT der bereits abgeschlossenen Healthcare-Etappe zugeschlagen, bei B3 Programmtext
  gegenpruefen und Entscheid dokumentieren)
- **Studienauftrag statt klassischer Wettbewerb**: 5 — Korki-Areal Duerrenaesch, Gleis 11
  Solothurn, Wolfacker-Gaissbergpark Kreuzlingen, Bellevue 51 Kreuzlingen (Verfahrensart bei
  B3 im Frontmatter kennzeichnen, analog Healthcare-Praezedenz Widnau)
- **Zugang unklar** (nicht in frei-pdf-Zaehlung): 3 — bern-brunnmatt-ost (Login-Sperre
  konkurado.ch), frutiger-baelliz-thun (HTTP 403), nest-aemet-birmensdorf (kein PDF auffindbar)

## Empfohlener Batch fuer B2/B3 (naechste Folgelaeufe)

Kein PDF wurde in diesem Lauf beschafft (Takt-Regel: ein Baustein je Lauf = B1). Die folgenden
9 Kandidaten sind die empfohlene erste Tranche fuer B2/B3 (je 2-3 pro Folgelauf), gewaehlt fuer
maximale Traeger- und Regionen-Spreizung:

| Slug | Projekt | Ort | Kt | Jahr | Traeger-Typ | PDF-URL |
|---|---|---|---|---|---|---|
| reichenbachstrasse-118-bern | Wohnueberbauung Reichenbachstrasse 118 | Bern | BE | 2017 | Stadt (Immobilien Stadt Bern) | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-05/reichenbachstrasse_118.pdf |
| bern-viererfeld-mittelfeld | Arealentwicklung Viererfeld/Mittelfeld (Los Wohnen) | Bern | BE | 2019 | Stadt/Fonds Boden- und Wohnbaupolitik | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-01/bericht_des_preisgerichts_stadtebaulicher_wettbewerb_viererfeld_mittelfeld.pdf |
| seebahn-hoefe-aussersihl | Wohnsiedlung Seebahnstrasse (Seebahn-Hoefe) | Zuerich-Aussersihl | ZH | 2016 | Genossenschaft (ABZ+BEP) | https://seebahnhoefe.ch/wp-content/uploads/2016/06/Jurybericht_Seebahnstrasse_low.pdf |
| koch-areal-albisrieden-altstetten | Koch-Areal Neubauten und Quartierpark | Zuerich-Albisrieden/Altstetten | ZH | 2019 | Genossenschaft+privat (ABZ+Kraftwerk1+SENN) | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-05/jurybericht_0.pdf |
| walkeweg-basel-genossenschaft-2 | Genossenschaftliches Wohnen am Walkeweg (2. Stufe) | Basel | BS | 2023 | Genossenschaften (Zimmerfrei/Gewona Nord-West) | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-08/basel-walkeweg-jurybericht-2-stufe.pdf |
| guggach-ii-unterstrass | Wohnueberbauung Guggach II | Zuerich-Unterstrass | ZH | ca. 2014 | Pensionskasse der UBS | https://www.planzeit.ch/media/jurybericht_guggach_zuerich_kl.pdf |
| industriestrasse-luzern | Entwicklung Areal Industriestrasse | Luzern | LU | 2018 | Genossenschafts-Kooperation (5 Genossenschaften) | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-06/180614_jurybericht_industriestrasse_medien.pdf |
| waetterweid-arosa | Wohnueberbauung Waetterweid | Arosa | GR | 2023 | Gemeinde | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-09/arosa-wa%CC%88tterweid-jurybericht.pdf |
| brisgi-areal-baden | Projektwettbewerb Brisgi-Areal | Baden | AG | 2016 | Stiftung+Genossenschaft (Wohnbaustiftung Baden) | https://www.wohnbaustiftung-baden.ch/media/pages/dokumente/9035d97ef3-1746170647/jurybericht_projektwettbewerb-brisgi-areal.pdf |

Beim Beschaffen zu beachten: Waetterweid-URL nutzt kombinierendes ä (`a` + `%CC%88` statt
`%C3%A4`, analog Taegermoos-Praezedenz Healthcare-Sweep). Guggach-II-Jahr im PDF-Header nicht
exakt datiert (ca. 2014, Wettbewerb/Preisgericht 11.06.2014 laut Zweitquelle) — bei B3 pruefen.

## Vollstaendige Kandidatenliste (54, dedupliziert)

| Slug | Projekt | Ort | Kt | Jahr | Auslober/Traeger | Traeger-Typ | Zugang | PDF-URL | Hinweis |
|---|---|---|---|---|---|---|---|---|---|
| neuwiesen-zuerich | Ersatzneubau Wohnsiedlung Neuwiesen | Zuerich | ZH | 2021 | Baugenossenschaft Glattal Zuerich | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-06/neuwiesen-jurybericht.pdf | Verfahren via Amt fuer Hochbauten |
| promulins-samedan | Wohnsiedlung Promulins | Samedan | GR | 2024 | Comuenanza/Buergergemeinde Samedan | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2024-04/promulins-samedan-jurybericht.pdf | 1. Rang «Paluе»; von 2 Scouts unabhaengig gefunden |
| wohnsiedlung-im-gut-zuerich | Wohnsiedlung im Gut, Baufelder A+D | Zuerich | ZH | 2020 | Stadt Zuerich, Amt fuer Hochbauten | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2020-12/wohnsiedlung-im-gut-jurybericht.pdf | - |
| dennlerstrasse-altstetten | Erneuerung Wohnsiedlung Dennlerstrasse | Zuerich-Altstetten | ZH | 2024 | Pensionskasse der UBS | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2024-02/altstetten-dennlerstrasse-jurybericht.pdf | - |
| felsenrain-zuerich | Neubau Siedlung Felsenrain | Zuerich | ZH | 2024 | Stiftung Alterswohnungen der Stadt Zuerich | grenzfall-alterswohnen | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2024-03/zuerich-felsenrain-jurybericht.pdf | Betreuungsfreies Wohnen, keine Pflege bekannt — bei B3 Programmtext gegenpruefen |
| walkeweg-basel-cd | Wohnueberbauung Baufelder C+D (Wiederverwendung), Areal Walkeweg Nord | Basel | BS | 2023 | Kanton Basel-Stadt, Hochbauamt | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-05/basel-walkeweg-jurybericht.pdf | Wohnbauprogramm 1000+ |
| walkeweg-basel-genossenschaft-1 | Genossenschaftliches Wohnen am Walkeweg (1. Stufe) | Basel | BS | 2023 | Genossenschaften Zimmerfrei und Gewona Nord-West | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-08/basel-walkeweg-jurybericht-1-stufe.pdf | zweistufiges Verfahren, Gegenstueck zu 2. Stufe |
| walkeweg-basel-genossenschaft-2 | Genossenschaftliches Wohnen am Walkeweg (2. Stufe) | Basel | BS | 2023 | Genossenschaften Zimmerfrei und Gewona Nord-West | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-08/basel-walkeweg-jurybericht-2-stufe.pdf | Siegerprojekt «Werden & Wandeln»; von 2 Scouts unabhaengig gefunden |
| reichenbachstrasse-118-bern | Wohnueberbauung Reichenbachstrasse 118 | Bern | BE | 2017 | Immobilien Stadt Bern | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-05/reichenbachstrasse_118.pdf | ca. 100 preisguenstige Wohnungen + Bibliothek/Kita; von 2 Scouts unabhaengig gefunden |
| brugg-umiken | Wohnueberbauung Brugg-Umiken | Umiken/Brugg | AG | 2013 | Rimmobas Anlagestiftung | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-10/Jurybericht-Wohnueberbauung-Brugg-Umiken-13-August-2013.pdf | aeltester Kandidat der Liste (2013) |
| siedlung-holliger-o3-u3-bern | Siedlung «Holliger», Baubereiche O3/U3 | Bern | BE | 2019 | FAMBAU Genossenschaft + Baugenossenschaft Bruennen-Eichholz | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-05/190325_bericht_holliger-ds.pdf | ca. 120 gemeinnuetzige Wohnungen + Kita/Laden/Cafe; anderer Baubereich als U1/U2 unten |
| wohnhaus-letzi-zuerich | Wohnhaus Letzi | Zuerich | ZH | 2015 | Planwerkstadt AG | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-04/wohnhaus_letzi-1.pdf | Sieger Armon Semadeni Architekten |
| muertschen-oberseestrasse-rapperswil-jona | Neuueberbauung Muertschen-/Oberseestrasse | Rapperswil-Jona | SG | 2017 | Gebaeudeversicherung Kt. St. Gallen (GVA) | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/competition_import_documents/jurybericht-171018.pdf | seltener Auslobertyp (Gebaeudeversicherung) |
| gesewo-wiesendangen | Gesewo-Haus Wiesendangen | Wiesendangen | ZH | 2024 | Genossenschaft fuer selbstverwaltetes Wohnen (Gesewo) | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2024-06/wiesendangen-gesewo-jurybericht.pdf | kleinere Landgemeinde, 23 Wohnungen |
| guet-espenhof-albisrieden | Ersatzneubau Siedlung Guet und Espenhof | Zuerich-Albisrieden | ZH | 2021 | Gemeinnuetzige Baugenossenschaft Limmattal (GBL) | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-10/Jurybericht-Ersatzneubau-Guet-Espenhof-Zuerich-Albisrieden.pdf | ca. 126 preisguenstige Wohnungen |
| seebahn-hoefe-aussersihl | Wohnsiedlung Seebahnstrasse (Seebahn-Hoefe) | Zuerich-Aussersihl | ZH | 2016 | ABZ + BEP (Konsortium) | genossenschaftlich | frei-pdf | https://seebahnhoefe.ch/wp-content/uploads/2016/06/Jurybericht_Seebahnstrasse_low.pdf | Sieger «Pinarello»; ~350 Wohnungen, Gestaltungsplan-Verfahren |
| guggach-ii-unterstrass | Wohnueberbauung Guggach II | Zuerich-Unterstrass | ZH | ca. 2014 | Pensionskasse der UBS | privat-institutionell | frei-pdf | https://www.planzeit.ch/media/jurybericht_guggach_zuerich_kl.pdf | Sieger «Santorin» (Knapkiewicz & Fickert); von 2 Scouts unabhaengig gefunden |
| schuetze-areal-zuerich-west | Schuetze-Areal | Zuerich-West | ZH | 2024 | Stadt Zuerich, Amt fuer Hochbauten | stadt-gemeinde | frei-pdf | https://www.stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/architekturwettbewerbe/juryberichte/schuetze-areal-jurybericht.pdf | - |
| koch-areal-albisrieden-altstetten | Koch-Areal Neubauten und Quartierpark | Zuerich-Albisrieden/Altstetten | ZH | 2019 | ABZ + Kraftwerk1 + SENN, begleitet Gruen Stadt Zuerich | gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-05/jurybericht_0.pdf | 3 parallele Baufeld-Wettbewerbe + 1 Freiraum-Wettbewerb in einem Bericht |
| imfeldsteig-wipkingen | Wohnbauten Imfeldsteig | Zuerich-Wipkingen | ZH | 2024 | Stadt Zuerich, Amt fuer Hochbauten | stadt-gemeinde | frei-pdf | https://www.stadt-zuerich.ch/content/dam/web/de/aktuell/publikationen/2024/juryberichte/wohnbauten-imfeldsteig-jurybericht-auszug.pdf | nur Auszug/gekuerzte Fassung — bei B3 als Abschnittsbeleg kennzeichnen |
| goldacker-1a-triemli | Wohnsiedlung Goldacker 1A | Zuerich (Triemli) | ZH | 2019 | Baugenossenschaft Sonnengarten | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-10/jurybericht.pdf | 2-stufiger Wettbewerb, 75 Projekte |
| grossalbis-friesenberg | Ersatzneubauten Siedlung Grossalbis | Zuerich-Friesenberg | ZH | 2021 | FGZ (Familienheim-Genossenschaft Zuerich) | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-01/fgz-grossalbis-friesenberg-jurybericht.pdf | Sieger «Im Friesenberg» (Edelaar Mosayebi Inderbitzin) |
| salzweg-altstetten | Wohnsiedlung Salzweg | Zuerich-Altstetten | ZH | 2021 | Stadt Zuerich (Perimeter A) + Baugenossenschaft Zurlinden (Perimeter B) | gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-09/salzweg-jurybericht.pdf | Doppelauftrag Stadt+Genossenschaft, min. 220 Whg |
| kelchweg-altstetten | Ersatzneubau Wohnen am Kelchweg | Zuerich-Altstetten | ZH | 2019 | Baugenossenschaft Halde Zuerich (bhz) | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-12/jurybericht_wohnen_am_kelchweg.pdf | min. 32 Wohnungen |
| bern-via-felsenau-3-etappe | Genossenschaftlicher Wohnungsbau Via Felsenau, 3. Etappe | Bern | BE | 2015 | Wohnbaugenossenschaft Via Felsenau | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2020-11/Jurybericht-Genossenschaftlicher-Wohnungsbau-Via-Felsenau-Bern-2015-11-04.pdf | Sieger «CASA VIA» |
| bern-holliger-u2 | Siedlung Holliger, Baubereich U2 | Bern | BE | 2019 | npg AG fuer nachhaltiges Bauen | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-11/bericht_projektwettbewerb_holliger_u2.pdf | 47 Wohnungen, gemeinschaftsorientiert |
| bern-viererfeld-mittelfeld | Arealentwicklung Viererfeld/Mittelfeld (Los Wohnen) | Bern | BE | 2019 | Fonds fuer Boden- und Wohnbaupolitik / Immobilien Stadt Bern | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-01/bericht_des_preisgerichts_stadtebaulicher_wettbewerb_viererfeld_mittelfeld.pdf | Sieger Wohnen «Ensemble_2»; neues Stadtquartier |
| bern-holliger-u1 | Siedlung Holliger, Baubereich U1 | Bern | BE | 2019 | Baugenossenschaft Aare Bern | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-11/jurybericht_holliger_baubereich_u1.pdf | Sieger «Here comes the sun» |
| bern-eymatt-hinterkappelen | Ueberbauung Eymatt | Hinterkappelen (Wohlen b. Bern) | BE | 2015 | Immobilien Stadt Bern / Fonds Boden- und Wohnbaupolitik | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-02/Jurybericht-Eymatt-Bern-12-06-2015.pdf | Holzbauweise; Standort ausserhalb Stadtgebiet |
| bern-freiburgstrasse-121 | Neubau und Sanierung Freiburgstrasse 121/121a | Bern | BE | 2024 | Immobilien Stadt Bern | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2024-05/bern-freiburgstrasse-121-jurybericht.pdf | Gesamtleistungswettbewerb, Neubau+Sanierung |
| basel-riehenring-120 | Wohnueberbauung Riehenring 120 | Basel | BS | 2026 | Kanton Basel-Stadt | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2026-03/basel-riehenring-120-jurybericht.pdf | Sieger «Im Wandel» |
| basel-rankstrasse-wohnhochhaus | Neubau Wohnhochhaus Rankstrasse | Basel | BS | 2025 | Kanton Basel-Stadt (Hochbauamt) | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2025-06/basel-rankstrasse-wohnhochhaus-jurybericht.pdf | ueber 100 Wohnungen, ca. 88 m Hochhaus |
| basel-hochbergerstrasse-158 | Umbau Hochbergerstrasse 158 | Basel | BS | 2020 | Kanton Basel-Stadt | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2020-11/hochbergerstrasse-158-basel-jurybericht.pdf | Umbau Verwaltungsgebaeude zu Wohnen (Kooperative E45) |
| basel-burgfelderstrasse-251 | Neubau Wohnhaus Burgfelderstrasse 251 | Basel | BS | 2021 | Kanton Basel-Stadt (Hochbauamt) | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2021-08/burgfelderstrasse-jurybericht.pdf | reines Sozialwohnen ohne Pflegekomponente |
| bern-brunnmatt-ost | Wohnueberbauung Brunnmatt-Ost | Bern | BE | 2008 | Emil Merz AG | privat-institutionell | unklar | - | konkurado-Link auf Login-Seite, kein PDF verifizierbar |
| aarau-rohr-graphis | Ersatzneubauten Wohnsiedlung Aarau-Rohr | Aarau (Rohr) | AG | 2013/2014 | Bau- und Wohngenossenschaft Graphis | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-04/rohr-aarau_jurybericht-.pdf | von 2 Scouts unabhaengig gefunden |
| stadtgraben-erlach | Wohnueberbauung Stadtgraben | Erlach | BE | 2023 | Einwohnergemeinde Erlach + Gravure Immobilien AG | gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-12/erlach-stadtgraben-jurybericht.pdf | kommunal-privates PPP, Kleinstadt Bielersee |
| brisgi-areal-baden | Projektwettbewerb Brisgi-Areal | Baden | AG | 2016 | Wohnbaustiftung Baden (Partner Logis Suisse, Graphis) | privat-institutionell | frei-pdf | https://www.wohnbaustiftung-baden.ch/media/pages/dokumente/9035d97ef3-1746170647/jurybericht_projektwettbewerb-brisgi-areal.pdf | preisguenstiger Wohnungsbau, Ausfuehrung ab 2026 |
| korki-areal-duerrenaesch | Studienauftrag Korki-Areal, Dorfmitte | Duerrenaesch | AG | 2023 | Sarudo AG (Familie Sager) | studienauftrag | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-06/du%CC%88rrena%CC%88sch-korki-jurybericht.pdf | ~42 Whg (Eigentum+Miete) + Gewerbe |
| gleis11-solothurn | Studienauftrag Arealentwicklung Gleis 11 | Solothurn | SO | 2025/2026 | AZ Medienhaus AG | studienauftrag-gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2026-03/solothurn-gleis-11-jurybericht.pdf | Wohnen 1.5-5.5-Zi + Buero/Gewerbe, Bestandsdruckerei erhalten |
| gwg-siedlung-vogelsang-winterthur | Siedlung Vogelsang, Schlussbericht | Winterthur | ZH | 2014 | Gemeinnuetzige Wohnbaugenossenschaft Winterthur (GWG) | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2020-04/20160322140306_953_vogelsang_schlussbericht_2014-11-17_lq1.pdf | Sieger «Champs des Oiseaux»; von 2 Scouts unabhaengig gefunden |
| frutiger-baelliz-thun | Studienauftrag Baelliz 53-59 | Thun | BE | 2023 | Frutiger AG Immobilienentwicklung | studienauftrag | unklar | - | curl HTTP 403 trotz sichtbarer espazium-Seite; nicht mit Pensionskasse Frutiger verwechseln |
| asga-stephanshornweg-stgallen | Ueberbauung Stephanshornweg («Smile») | St. Gallen | SG | 2024 | Ortsbuergergemeinde St. Gallen / Siegerkonsortium ASGA Pensionskasse | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2024-09/st-gallen-stephanshornweg-jurybericht.pdf | Randfall: Auslober Grundeigentuemerin, Pensionskasse im Siegerkonsortium |
| ubs-claire-vue-lancy | Quartier de Claire-Vue | Lancy (Genf-Agglo) | GE | 2015 | Caisse de pension d'UBS | privat-institutionell | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2020-11/Rapport-jury-quartier-Claire-Vue-Lancy-octobre-2015.pdf | Romandie-Diversitaet |
| pav-vernets-geneve-consortium | Les Vernets/PAV, concours investisseurs-architectes | Genève | GE | 2014 | Konsortium ENSEMBLE (CPEG, Swiss Life, CIEPP, FVGLS, CODHA, CIGUE u.a.) | gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-05/rapport_du_jury_vernet_2014.pdf | Grossprojekt ca. 1500 Wohnungen, inkl. Genossenschaft CODHA |
| nest-aemet-birmensdorf | Wohnueberbauung Aemet | Birmensdorf | ZH | 2016 | NEST Sammelstiftung | privat-institutionell | unklar | - | kein oeffentlicher Jurybericht-PDF gefunden, nur redaktioneller Artikel |
| waetterweid-arosa | Wohnueberbauung Waetterweid | Arosa | GR | 2023 | Gemeinde Arosa | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2023-09/arosa-wa%CC%88tterweid-jurybericht.pdf | Sieger «Drei Roesli»; URL nutzt kombinierendes ä (%CC%88) |
| waldacker-baufeld-a1-st-gallen | Wohnueberbauung Waldacker, Baufeld A1 | St. Gallen | SG | 2017 | Ortsbuergergemeinde St. Gallen (OBG) | stadt-gemeinde | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-05/waldacker_baufeld_a1_st._gallen.pdf | Sieger «Holts»; 113 Whg Holzbau |
| areal-stadtsaege-st-gallen | Areal Stadtsaege | St. Gallen | SG | 2019 | Ortsbuergergemeinde St. Gallen (OBG) | gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2019-07/003_beurteilungsbericht_stadtsaege_190521.pdf | Sieger «Klafter» (Previs Vorsorge im Team); Wohnen+Gewerbe/Gastro |
| industriestrasse-luzern | Entwicklung Areal Industriestrasse (2-stufig) | Luzern | LU | 2018 | Kooperation Industriestrasse Luzern (5 Genossenschaften) | gemischt | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2018-06/180614_jurybericht_industriestrasse_medien.pdf | 2000-Watt-Holzbau, Wohnen+Gewerbe/Ateliers/Kultur |
| hochhuesliweid-luzern | Neubau Hochhuesliweid | Luzern | LU | 2020 | SBL Wohnbaugenossenschaft Luzern | genossenschaftlich | frei-pdf | https://espazium.s3.eu-central-1.amazonaws.com/files/2020-10/hochhu%CC%88sliweid-jurybericht.pdf | autoarme Wohnsiedlung, Baurechtsparzelle Stadt Luzern |
| bernrain-kreuzlingen | Studienauftrag Bernrain (Bernrain Ost) | Kreuzlingen | TG | Jahr unklar (Republikation 2021) | Chocolat Bernrain AG / ASGA-Genossenschaft | studienauftrag | frei-pdf | https://s.kreuzlingen-5sb.prod.ch.ymc.host/media/03/studienauftrag-bernrain-bericht-beurteilungsgremium.pdf | 83 Whg, 6 Gebaeude; Wettbewerbsjahr bei B3 klaeren |
| wolfacker-gaissbergpark-kreuzlingen | Studienauftrag Areal Wolfacker Ost «Gaissbergpark» | Kreuzlingen | TG | 2010 | Haeberlin AG | studienauftrag | frei-pdf | https://s.kreuzlingen-5sb.prod.ch.ymc.host/media/01/studienauftrag-wolfacker-gaissbergpark-bericht-beurteilungsgremium.pdf | Sieger staedtebaulich Schneider Studer Primas |
| bellevue-51-kreuzlingen | Studienauftrag Bellevue, Grundstueck Nr. 51 | Kreuzlingen | TG | 2011 | privat / Masterplan Areal Bellevue | studienauftrag | frei-pdf | https://s.kreuzlingen-5sb.prod.ch.ymc.host/media/06/studienauftrag-bellevue-51-bericht-beurteilungsgremium.pdf | 3 Wohn-/Geschaeftshaeuser, Sieger Ernst Niklaus Fausch |
| unterfeld-sued-baar | Unterfeld Sued, Baufeld 1A/1B | Baar | ZG | 2022 | Implenia + Gemeinde Baar + 2 Genossenschaften | gemischt | frei-pdf | https://www.unterfeld-sued.ch/wp-content/uploads/2022/08/20220627_Jurybericht_Unterfeld-Sued_BF_1A_1B.pdf | Areal gesamt ~400 Whg + Gewerbe/Buero, Baufeld primaer Wohnen |

## Verworfene/nicht bestaetigte Funde (Transparenz, nicht Teil der 54)

- **Wohnueberbauung Goebli, Baar (ZG, 2022):** espazium-S3-Link liefert HTTP 403, keine
  alternative Quelle gefunden.
- **Zofingen Forstacker (AG, 2005), Feldbrunnen Zentrum (SO, 2008), Chuele Brunne Zumikon
  (ZH, 2020):** nur ueber konkurado.ch auffindbar, das auf jede Jurybericht-URL mit Login-
  Redirect antwortet (Paywall gemaess Etappe-3-Vorgabe nie umgangen).
- **Neubau Wohnueberbauung Eichwaldstrasse Luzern** (Wohngenossenschaft Geissenstein-EBG,
  Sieger «Charlotte» 2019): fruehere Quelle geissenstein-ebg.ch nach Domainwechsel auf ebg.lu
  nicht mehr auffindbar.
- **Migros Madretsch Biel, BVK Eichhof-West Kriens:** keine oeffentlich zugaengliche
  Jurybericht-PDF gefunden (nur redaktionelle Artikel bzw. Schwerpunkt Gewerbe/Sozialversicherung
  statt Wohnungsbau).
- **Jubilaeumswettbewerb «100 Jahre Wohnbaugenossenschaften Schweiz»:** kein Architektur-
  Jurycharakter (Ideen-/Sozialprojekt-Preis, keine Bauprojekt-Jurierung) — bewusst nicht
  aufgenommen.
- **Wallis, Schwyz, Glarus, Appenzell:** trotz breiter Suche (espazium, konkurado, kantonale
  Amtsblaetter) kein freier PDF-Jurybericht zu einem reinen Wohnungsbau-Wettbewerb gefunden —
  diese vier Regionen bleiben in der Wohnungsbau-Etappe unbelegt offen (siehe QUESTIONS).

## Offene Punkte fuer B3/B4 (in QUESTIONS.md gespiegelt)

1. **Felsenrain Zuerich** (Stiftung Alterswohnungen der Stadt Zuerich) ist ein Grenzfall
   zwischen Wohnungsbau und der bereits abgeschlossenen Healthcare-Etappe (Subtyp Alterswohnen
   ohne Pflege war dort Teil des Samples). Entscheid bei B3: falls das Programm keine
   Betreuungs-/Pflegekomponente zeigt, bleibt der Kandidat im Wohnungsbau-Sample.
   Bewilligung bewusst offen gelassen (Rule identifikatoren-verifizieren: nicht raten).
2. **Studienauftrag vs. klassischer Wettbewerb**: 5 Kandidaten sind Studienauftraege (SIA 143)
   statt Projektwettbewerbe (SIA 142) — analog zur Healthcare-Praezedenz (Widnau) werden sie
   im Frontmatter der spaeteren Destillate klar als Studienauftrag gekennzeichnet, nicht
   ausgeschlossen.
3. **Gemischte Nutzung**: 7 Kandidaten kombinieren Wohnen mit Gewerbe/Buero/Kultur/Park.
   Bei B4 (Muster-Synthese) zu entscheiden, ob deren Jury-Argumente unveraendert einfliessen
   oder mit einer Markierung «gemischt» gefuehrt werden (analog Healthcare-Praxis bei
   Thurgauerstrasse/Aesch).
4. **Regionale Luecke**: Wallis, Schwyz, Glarus, Appenzell liefern keinen frei zugaenglichen
   Wohnungsbau-Jurybericht — ähnlich der Schulbau-/Healthcare-Erfahrung, dass kleinere Kantone
   Wettbewerbe seltener oeffentlich als PDF publizieren. Kein Blocker fuer B2/B3 (Ziel bereits
   uebertroffen), aber Wissenslücke fuer die spaetere Muster-Synthese.
