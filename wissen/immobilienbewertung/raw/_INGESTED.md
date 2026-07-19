# RAW — Quellen-Register (was liegt vor, wie weit eingearbeitet?)

Grosse Quell-PDFs/Excels bleiben physisch in den SharePoint-`IMMO`-Ordnern (nicht ins Repo
kopiert — zu gross, OneDrive-synchronisiert). Dieses Register verlinkt sie und haelt den
Ingest-Stand fest. Basis-Pfad:
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/`

Legende Status: `offen` (noch nicht gelesen) · `teilweise` (angelesen/quergelesen) ·
`eingearbeitet` (in Wiki-Artikel verdichtet).

**Run 38 (2026-07-19):** kein neuer Ingest — KB saturiert, Bewertungsordner unveraendert
(juengster Wangen 8855), Marktpuls-Stichtag erst 01.09.2026. Delta-Null-Lauf; einziger Delta:
Ruecktaktungs-Pendenz nach `logbuch/fristen.md` ueberfuehrt.

**Run 37 (2026-07-18):** kein neuer Ingest — KB saturiert, kein neuer JANS-Bewertungsfall
(juengster Wangen 8855), Marktpuls-Stichtag erst 01.09.2026. Delta-Null-Lauf.

**Externe amtliche Quellen (Run 24/25, D6 — Dichte-Kennwerte):** die BZO/Baureglemente der
JANS-Bezugsmaerkte liegen NICHT in den IMMO-Ordnern, sondern werden bei Bedarf direkt von der
Gemeinde-/Kantonsseite gezogen (`curl` amtliche PDF → `pdftotext -layout` → Grundmasse-Tabelle).
Eingearbeitet in [[az-gfz-kennwerte]]: Thalwil, Waedenswil (Run 24); Zollikon (oerebdocs docid=1611,
BZO 1996), Maur (maur.ch, nBZO 2023), Wald ZH (wald-zh.ch), Einsiedeln (einsiedeln.ch, Baureglement
2025), Wangen SZ (wangensz.ch), Regensdorf (oerebdocs docid=8897, BZO 2020), Muri AG (muri.ch,
Stand 2012→Run 26 Revision 2018/2019), Luzern (stadtluzern.ch, BZR 2022, System-Beschrieb) — Run 25.
**Run 27:** Niederhasli (niederhasli.ch/_doc/6004822, BZO 2024 IVHB — keine Kennziffer), Oberrieden
(oerebdocs docid=1253, BZO 2013 Stand 26.01.2026), Kilchberg (oerebdocs docid=1184, BZO 2012/14/15,
BMZ), Horgen (oerebdocs docid=1101, BZO 2011/16 TR 2021/23, BMZ), Kuesnacht (kuesnacht.ch 700.1,
Stand 2019, BMZ), Meilen (meilen.ch _docn/2708348, BZO 2020 IVHB, BMZ), Adliswil (adliswil.ch
_docn/51379, BZO 1995 Stand 2024, AZ), Richterswil (richterswil.ch/_doc/4649779, BZO Stand 2023, AZ).
Offen: Langnau am Albis (BZO ausser Kraft, Revision 2026/27).

| Quelle | Pfad (ab IMMO) | Typ | Stand | Status | Ziel-Artikel |
|---|---|---|---|---|---|
| Wuest-Kurs "Immobilien entwickeln" | `03 KNOW-HOW/05 Residualwert/Folien WuestPartner/Immo_02_P23D_Praesentation_Nextcloud.pdf` (236 S.) | PDF | 06.2023 | **eingearbeitet** (S. 1-236, Training-Run 1 am 2026-06-09; Modul 4 = nur Titelblatt, Inhalt im DXMA-PDF) | residualwertmethode, ertragswert-dcf, realwert-sachwert, nutzungskonzepte, investorenmarkt-makro, vergleichswert-hedonisch, bewertungsverfahren-ueberblick |
| DXMA Erfolgsfaktoren | `03 KNOW-HOW/05 Residualwert/Folien DXMA/Immo-02-P23D-Praesentation_Erfolgsfaktoren.pdf` (37 S.) | PDF | 06.2023 | **eingearbeitet** (S. 1-37, Training-Run 2 am 2026-06-10): 6 Faktoren, Aufwertungsgewinn-Prinzip + 10 Referenzfaelle, AZ-Optimierungsformel, A4-Bewertungsblatt | erfolgsfaktoren-wettbewerb, nutzungskonzepte, residualwertmethode |
| Pre-Check-Tool Wuest + JANS | `03 KNOW-HOW/05 Residualwert/Exel Tabelle/{wp,jans}/Immo-02-P23D-Pre-Check_Tool_*.xlsx` | XLSX | 2023/24 | **eingearbeitet** (Run 15 2026-07-08): Zellen ausgelesen (unzip+XML-Parser) — 2 Blaetter Cover + «AZ-HNF Tool»-Engine (HNF-Herleitung aus Planungsziffer: HNF = GF − VF − KF − FF − NNF; Effizienz-Ampel KF/GF 0.18/0.23/0.30; Kompaktheit 1-5; Skalen-/Kostenniveau-Faktoren 0.9-2.1; Hochhausfaktor 1.1). **JANS-Kalibrierung = 2 Zellen: Risiko 7 %→12 %, Diskont 2.4 %→2.45 %; sonst identisch WP.** Residualwert-Kette + Sensitivitaets-Formel RW(δ,Δbps)=(1+δ)·Nettoertrag/(Diskont+Δbps/10000)−Baukosten | residualwertmethode, ertragswert-dcf |
| Residualwert-Tool «Berechnung» Wuest + JANS | `03 KNOW-HOW/05 Residualwert/Exel Tabelle/{wp,jans}/Immo-02-P23D-Residualwert_Projektbewertung.xlsx` | XLSX | 2023/24 | **eingearbeitet** (Run 15 2026-07-08): einblaettriges Lehrtool. **JANS-Datei = formel- UND default-identisch mit WP** (nur Kopfzelle «JANS»). Belegte Kette Soll-Ertrag→Nettoertrag→Ertragswert(/Diskont)→Residualwert−Abzuege; Defaults Diskont 2.5 %/Risiko 7 %/Betriebsk. 5 %/Leerstand 1 %/IH 13/IS 21 CHF-m2HNF; Zeitwert 2 %×3 J; **Gewerbe-Miete = 5.5 % der Erstellungskosten**; Wohnungsmix HNF 35-130/Effizienz 0.73-0.80/BK 6000-5100 CHF-m2HNF/Miete 1100-2450 | residualwertmethode, ertragswert-dcf |
| Kursnotizen (handschriftlich) | `03 KNOW-HOW/05 Residualwert/Kursnotizen/IMG_7064-7067.jpeg` | Foto | 06.2023 | **eingearbeitet** (Run 10 2026-06-28): Anfangsrendite=Mietertrag/Kaufpreis, Residualwert ~30 % Land / 8 % Risikomarge, Mehrwertabgabe Reinbau 25 %, WP-Pre-Check-Tool-Layout (IMG_7067 Fotolayout, D4-Teilbeleg ohne Zahlen) | residualwertmethode, ertragswert-dcf |
| Schaetzungsanleitung Kap. 5 | `03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` (41 S.) | PDF | Stand 2003 | **vollständig eingearbeitet** (Run 2: Tab. 2/3/6/7/8/9/10/11/21/22/23; Run 3 2026-06-12: Tab. 12 Nutzflächen, Tab. 13 Raumeinheiten, Tab. 14/15 Mietkorrektur, Tab. 25-28 Gastgewerbe). Tab. 29/30 Punktierung quergelesen | realwert-sachwert, lageklasse-landwertanteil, ertragswert-dcf, flaechendefinitionen-sia, bewertungsverfahren-ueberblick |
| Hedonik-Beispielreport | `03 KNOW-HOW/05 Hedonistische_Berechnungsweise/Standortinformation_Beispiel_Report.pdf` (13 S., WP Langenthal 21.06.2023) | PDF | 06.2023 | **eingearbeitet** (Run 3 2026-06-12): WP-Standortreport-Aufbau (Quantil-Preisspektren Wohnen/Geschäft + Bauland residualmodelliert + Datengrundlagen-Anhang) → vergleichswert-hedonisch | vergleichswert-hedonisch |
| Abzinsung/Diskontierung | `03 KNOW-HOW/03 Abzinsung/Disskontierung/` | docx+png | 2023 | **eingearbeitet** (Run 10 2026-06-28): `231231_Residualwert und Diskontierung.docx` (R. Jans 31.12.2023) → Diskontsatz-Dekomposition 2.5 %=2.0 %+0.5 %, Betriebskosten-Pauschale 5x0.5 %, Rechenkaskade + Abzinsungsformel W0=Wn/(1+i)^N; `Disskontierung.docx` → Healthcare-Diskontsatz-Anker 4-8 %; `Disskontierung_erklaervideo.docx` = nur studyflix-Link | ertragswert-dcf |
| Flaechenbezeichnung SIA | `03 KNOW-HOW/07 FLÄCHENBEZEICHNUNG/sia/416_2003_dfi.pdf` | PDF | 2003 | **eingearbeitet** (Run 10 2026-06-28): kanonische SIA-416:2003-Hierarchie S. 6-15 (GSF/GF/NGF/NF/HNF/NNF/VF/FF/KF/AGF + Volumen GV/NGV/KV/AKV + Miet-/STWE-Flaechen FSN/FGN + Abgrenzung 0.1 aGF/BGF/EBF nicht SIA-416) → flaechendefinitionen-sia normverankert | flaechendefinitionen-sia |
| UBS Fact Sheets (10 Gemeinden) | `02 UBSFS/` | PDF | 2212-2512 | **alle 10 eingearbeitet** (Run 4 2026-06-14: + Thalwil 7/2024, Muri AG 7/2024, Regensdorf 12/2023, Luzern 12/2023; zuvor Wangen/Zollikon 12/2025, Maur 7/2024, Wald/Wädenswil/Einsiedeln 12/2023). Kompiliert in wiki/marktdaten-gemeinden/. ⚠ 2023/24-Stände > 18 Mt. | datenquellen-registry, vergleichswert-hedonisch, marktdaten-gemeinden/* |
| UBS Swiss Real Estate Bubble Index | `02 UBSFS/srebi-q2-2024-de.pdf` | PDF | Q2-2024 | **eingearbeitet** (Run 4 2026-06-14): Index 0.74 «moderat», 4 Perspektiven + Methodik + regionale Ungleichgewichte → investorenmarkt-makro (T14) | datenquellen-registry, investorenmarkt-makro |
| Flächenkonzeption Wohnen | `06 Kennwerte/WOHNEN Baumasse/Flächenkonzeption Wohnen.pdf` | PDF | 20.10.2024 | **eingearbeitet** (Run 4 2026-06-14): JANS-Flächenfaktoren HNF/GF/Baumasse 0.20/0.33/0.60/0.75 + Wohnungsmix-Benchmark → flaechendefinitionen-sia (T8) | flaechendefinitionen-sia |
| Bueromarkt Zürich (hbre/Savills) | `06 Kennwerte/BUERO/hbre Analyse Zürich Büromarkt 082024.pdf` | PDF | 08.2024 | **eingearbeitet** (Run 4 2026-06-14): Tertiär ZH 500'000→580'000 bis 2050, Flächenbedarf-Trends, Serviced Offices → investorenmarkt-makro | investorenmarkt-makro, datenquellen-registry |
| Marktpreis-Quellen | `04 Marktpreise/` (12 Quellen) | div. | 2011-2026 | teilweise | datenquellen-registry |
| Bodenpreise | `05 Bodenpreise/` | png+pdf | 2023-2025 | teilweise | datenquellen-registry, lageklasse-landwertanteil |
| Kennwerte (Wohnen/Healthcare/Buero) | `06 Kennwerte/` | docx+pdf+png | 2024-2025 | teilweise | datenquellen-registry |
| JANS-Kennwerte-Sammlung (D8) | `06 Kennwerte/_Kennwerte Jans.docx` | DOCX | 25.03.2025 | **eingearbeitet** (Run 16 2026-07-10): schliesst D8 — (1) aGF/GF-Umrechnungsfaktor Altbau 0.8 / Neubau 0.9 → flaechendefinitionen-sia; (2) JANS-Wohn-Erstellungskosten-Kennwert EFH/ZFH: Median 2020 2'900 → indexiert 2025 3'365 CHF/m2 GF BKP 2 (Index 116) → 4'485 CHF/m2 GF BKP 1-5 (BKP2=75 %); TG 42'000/SP; Thalwil-Bohlweg-Rechenbeispiel 950 m2 → 4.6 Mio; HNF-Faktor 7'350 CHF/m2 HNF BKP 1-5 → realwert-sachwert. Pfad TCC-lesbar (keine Freigabe noetig) | flaechendefinitionen-sia, realwert-sachwert |
| JANS-Healthcare-Umbaukostenband | `06 Kennwerte/Healthcare/{Spektrumskosten,Umbaukosten 500K,Umbaukosten_CHF_2500K}.docx` | DOCX | 2025 | **eingearbeitet** (Run 16 2026-07-10): Spitalumbau-Kostenband CHF/m2 NF (Buero→Praxis 2'000-3'000 · Psych.-Normalstation 2'200-3'500 · somatische Normalpflege 3'500-4'500 · Kinder-/Jugend Akut 4'000-5'500 · Intensiv/Spezial 6'500-9'000 · OP-Station ab 10'000) + 2 reale JANS-Faelle (Psychiatrie-Teilumbau 1'100/m2 HNF, Zielkorridor 1'800-2'500; Kispi ZH Paediatrie 4'412/m2 NF) → realwert-sachwert | realwert-sachwert |
| JANS-Quellen-Linkliste | `06 Kennwerte/_Kennwerte_Links.docx` | DOCX | 29.12.2023 | **eingearbeitet** (Run 16 2026-07-10): Benchmark-/Datenquellen-Verzeichnis (ZH Wohnbaupreisindex, werk-material/CRB, keevalue, BFS Baupreise/Mietwohnungen/Leerwohnungen/LIK, GIS ZH, comparis-Mashup, SNB, Wuest Reports/Immo-Monitoring) → in datenquellen-registry gespiegelt | datenquellen-registry |
| Healthcare Baukredit Pflegeheim Herosé | `06 Kennwerte/Healthcare/HEIM/2021-285 Botschaft Pflegeheim Herosé_Neubau_Baukredit.pdf` (19 S., Stadt Aarau) | PDF | 12.2021 | **eingearbeitet** (Run 12 2026-07-02): 116 Zimmer, Anlagekosten 55.8 Mio (BKP-Zusammenstellung), Kennwerte BKP 2 = 1'105 CHF/m3 GV / 3'848 CHF/m2 GF / 346'681 CHF/Zimmer, 4-Heim-Vergleich (337-418k/Zimmer, Taxe 150-180); Annuitaets-Finanzierung (lineare Abschr. 33 J CURAVIVA, kalk. Zins BWO-Referenzzins 1.25 %, KVG-Abzug 6.812 Mio), Hotellerie-Taxe 120→153 CHF/Tag, Spezialfinanzierung Investitionsfonds → schliesst T17 (Kosten-/Annuitaetsseite) | realwert-sachwert, ertragswert-dcf, projektstruktur-deliverables |
| ARTISET Betriebswirtschaftliche Instrumente KVG | `06 Kennwerte/Healthcare/HEIM/Archiset Wirtschaftlichkeit/fachnews_kvg_2023_04...pdf` (2 S.) | PDF | 04.2023 | **eingearbeitet** (Run 12 2026-07-02): standardisierte KVG-Kosten-/Leistungsrechnung (KoRe), Kostentraeger LZP/ToNs/AUEP, leistungserbringende Kostenstellen 210-251 Pflege → Beleg Trennung Pflege (KVG) ↔ Hotellerie/Betreuung (Bewohner) | ertragswert-dcf |
| SenioResidenz AG Geschaeftsbericht 2017 | `06 Kennwerte/Healthcare/HEIM/Pflegeberichte/SenioResidenz_Gesch_Bericht_FINALE-VERSION_19022018.pdf` (40 S.) | PDF | 02.2018 (Stichtag 31.12.2017) | **eingearbeitet** (Run 13 2026-07-04): realer CH-Healthcare-**Investor** (Immobiliengesellschaft, verpachtet an Betreiber) — Seniorenresidenz Presinge GE (61 Betten), Marktwert 21.75 Mio (WP-DCF ueber 100 J), Soll-Miete 1.145 Mio → **impliziter Brutto-Yield ~5.3 %** (Healthcare ~2 Pp ueber Wohnbau), Belehnung 41 %/EK-Quote 54 %/Hypozins 3.3 %. Angewandter Diskontsatz NICHT beziffert. Schliesst T17-Investoren-Seite | ertragswert-dcf, projektstruktur-deliverables |
| BFS Indikatoren der Pflegeheime 2019-2021 | `06 Kennwerte/Healthcare/HEIM/Pflegeberichte/1552-2100.pdf` (7 S., SOMED-Vollerhebung, Mai 2023) | PDF | 05.2023 (Daten 2019-2021) | **eingearbeitet** (Run 13 2026-07-04): amtliche Primaerstatistik — Beherbergungskosten **10'035 CHF/Mt** (2021), Ertragsstruktur Pension 55.4 %/Pflege 42.9 %, KVG-Finanzierung Versicherer 46.8 %/Klient 14.2 %/Kanton 39 %, Belegung 89.6 %, 1.0 VZAe/Platz, 60 % defizitaer, 1'543 Heime/96'758 Plaetze, AG 24 %/Stiftung 29 %, Versorgungsdichte 20.5 je 100 Einw. 80+. ⚠ pandemiegepraegt | ertragswert-dcf |
| NZZ/Curaviva Pflegeplatzkosten | `06 Kennwerte/Healthcare/HEIM/Kennwerte von Alters und Pflegeheime/Pflegeplatzkosten/NZZ Hohe Kosten...pdf` | PDF | 11.2023 | **eingearbeitet** (Run 13 2026-07-04): Kostenstruktur ~10'216 CHF/Mt (Pension 4'124/KVG-Pflege 4'401/Betreuung 1'529/uebrige 162), KVG max 115.20/Tag, Selbstbehalt max 23/Tag, Eigenanteil Ø 175/Tag ≈ 64'000/J, EL-/Verwandtenunterstuetzung — nur Pension/Hotellerie speist die Liegenschaft | ertragswert-dcf |
| Obsan-Bericht 03/2022 Alters-/Langzeitpflege | `06 Kennwerte/Healthcare/HEIM/Pflegeberichte/Obsan_03_2022_BERICHT.pdf` (112 S.) | PDF | 2022 (Daten 2019, Prognose 2040) | **eingearbeitet** (Run 13 2026-07-04): CH-Pflegebedarf-Prognose — Pflegeheime +69.2 %/**+54'335 Betten bis 2040** (~+921 Heime), 80+ +88 %, strukturelle Angebotsluecke (+600 Ist vs. +2'587 Soll Betten/J), Kosten-BIP-Anteil verdoppelt (3.4-4.8 % bis 2045/50). Nachfragetreiber Healthcare-Immobilien | investorenmarkt-makro |
| CRB werk-material Spital-Kostenkennwerte | `04 Marktpreise/crb.ch/Spital_210522_Kostenkennwerte_Referenzprojekte.pdf` (28 S.) | PDF | 22.05.2021 (Preisstand 2020.04 Ostschweiz) | **eingearbeitet** (Run 13 2026-07-04): 2 reale CH-Spital-Referenzobjekte (Frauenklinik KSL **3'426** / USZ-Mehrzweckbau **3'767 CHF/m2 GF**, BKP-gegliedert nach SIA 416) + BKP-Aufgliederung USZ. Kein Pflegeheim/CHF-m3/CHF-Bett. Healthcare-Kostenband ~3'400-3'850+ CHF/m2 GF | realwert-sachwert |
| JANS-Raster «Kennwerte Alters-/Pflegeheime» | `06 Kennwerte/Healthcare/HEIM/Kennwerte von Alters und Pflegeheime/2411_...pdf` (1 S.) | PDF | 27.04.2024 (R. Jans) | **teilweise** (Run 13 2026-07-04): JANS-eigenes **Struktur**-Blatt (Wirtschaftlichkeitsfaktoren Bettzahl/Bauvol.-HNF/HNF-Bett/GF-Bett/Multiplikationsfaktoren, 4 Referenzobjekte Emilienheim + Wald Tertianum) — **leer, ohne Werte**. Nur Systematik erfasst → neue Aufgabe T19 (befuellen). Autorenzeile JANS, aber datenfrei (nicht D8-sensitiv) | projektstruktur-deliverables |
| Emilienheim Kilchberg (Erweiterung) | `06 Kennwerte/Healthcare/HEIM/Kilchberg_...pdf` (6 S., Tages-Anzeiger 29.11.2024) | PDF | 11.2024 | **eingearbeitet** (Run 13 2026-07-04): realer ZH-Entwicklungsfall — Erweiterung ~25 Mio (Angabe ~2019) mit 15 quersubventionierenden Alterswohnungen + 7-gesch. Neubau; Gestaltungsplan (Waldabstand 23→15 m) nach 2.5 J Rekurs rechtskraeftig. Modell «Alterswohnungen finanzieren Pflegebetrieb quer». Medienquelle, keine BKP-Gliederung | projektstruktur-deliverables |
| JANS-Projektfaelle (LB/RW/MA/CS) | `01 Projekte/01 BEWERTUNG PROJEKTE/` | indd+pdf+xlsx | 2024-2026 | **6 Faelle inhaltlich ausgewertet** (Run 5: Thalwil 9568 LB+MA, Ebmatingen 3932 LB, Wangen 2622; **Run 6 2026-06-18: CS Niederhasli Seestrasse 64 250811 5 S. → CS-Deliverable-Methodik (Controlling-Factsheet + Sensitivitaet A/B + Break-Even); LB Langnau Giebelweg 12 260603 2 S. → Bestand-vs-Abbruch-Entscheidlogik; LB Wangen Bahnhofstr. 27 260609 1 S. → Ertragswert-Band/Kaufpreispruefung/Ausbau-Rendite-Impact**) → projektstruktur-deliverables/ertragswert-dcf/vergleichswert-hedonisch. **Befund T16:** kein dedizierter Healthcare-Bewertungsfall im Bewertungsordner (alle Wohnen/MFH/STWE; Wald = Volumen-/Desktopstudie) → Healthcare-Bewertung liegt im Skill `healthcare-wirtschaftlichkeit` (2410 WALD/Nova) | projektstruktur-deliverables, ertragswert-dcf, vergleichswert-hedonisch |

| JANS 8-Objekt-Referenzvergleich Healthcare | `06 Kennwerte/Healthcare/HEIM/.../Kennwerte Altersheime Gesundheitszentren.pdf` (identisch in `AR-03 Studien/2410 WALD/09 Dokumente/Arbeitsgrundlagen/03 Kennwerte Kosten/`) | PDF | 2011-2025 | **eingearbeitet** (Run 14 2026-07-06): JANS-eigenes gefuelltes Referenzblatt — 8 reale CH-Alters-/Pflegeheime (Averecura/Dankensberg/Vella/Trotte/Herosé/Lanzeln/Mathysweg/St.Anna, S-XXL) mit Bettzahl 28-123, GF/GV/HNF (SIA 416), BKP 2 Mio, **CHF/m2 GF 2'623-4'250 (indexiert 3'042-4'485), CHF/m3 GV 826-1'420, CHF/PZ 272'780-780'000**, GF/Bett 90-135, NF/Bett 51-71, Bauvolumen/HNF 4.29-9.71, Hotellerietaxe 150-153 → **befuellt das T19-Raster** | projektstruktur-deliverables, realwert-sachwert, flaechendefinitionen-sia, ertragswert-dcf |
| WALD-Tertianum Richtprojekt Baumassenberechnung | `AR-03 Studien/2410 WALD/09 Dokumente/Arbeitsgrundlagen/02 Kennwerte SIA416 Flaechen/241010 Kennwerte Richtprojekt/2411_WALD_TERTIANUM_Kennwerte Richtprojekt.pdf` | PDF | 2024 | **eingearbeitet** (Run 14 2026-07-06): Gruenegg-Grundstueck 3'507 m2, Baumassen-Varianten V1-V7 (Heim BESTAND 2'700 m3 bis Gestaltungsplan L 13'620 m3), JANS-Approximationsfaktoren GF ≈ 0.33 / NF ≈ 0.20 × Baumasse → «Wald Tertianum Bestand/Szenarios» des T19-Rasters | projektstruktur-deliverables, flaechendefinitionen-sia |
| Crivelli/Filippini/Lunati 2001 «Effizienz der Pflegeheime in der Schweiz» | `06 Kennwerte/Healthcare/HEIM/Kennwerte von Alters und Pflegeheime/Businesscase/20638675.pdf` (43 S., SECO/USI Lugano) | PDF | 06.2001 (Daten ~1998) | **eingearbeitet** (Run 14 2026-07-06): oekonometrische Frontierkostenfunktion 835 CH-Pflegeheime — **optimale Betriebsgroesse 70-80 Betten (SE = 1 bei 79)**, Kostenersparnisse ab ~50 Betten nicht mehr betraechtlich, ~50 % der Heime suboptimal (zu klein); Groessenverteilung **Median 52 / Ø 62 / IQR 33-79 Betten**; mittlere Kosten-Ineffizienz 1.13; keine syst. Effizienzunterschiede for-/non-profit → beantwortet die 3 T19-Fragestellungen. ⚠ Datenstand 1998/2001 (struktureller Befund durabel, absolute Schwellen zu plausibilisieren) | projektstruktur-deliverables, ertragswert-dcf |

| Zuercher Index der Wohnbaupreise (ZIW) 1939-2025 | extern, Web (Stadt Zuerich Statistik, Reproduktion `hev-sz.ch/fileadmin/Files/Dokumente/Statistiken/1.5.pdf`) | PDF | Publikationsstand 01.01.2026 | **eingearbeitet** (Run 31 2026-07-14): volle Reihe 01.06.1939=100 bis 01.04.2025=1210.4, mehrere Rebasierungs-Spalten (1966/1977/1988/1998/2005/2010/2017/2020-2024). Wert 01.04.2003=899.2 → Index-Faktor 2003→2025 = 1.346 → schliesst D11 | realwert-sachwert |

## Naechste Ingest-Schritte (durch Trainingsprogramm)

Der Lern-Loop (`training/PROGRAMM.md`) arbeitet die `offen`/`teilweise`-Quellen systematisch
ab — Prioritaet auf dem 236-seitigen Wuest-Kurs (Curriculum in `training/curriculum.md`).

**Stand Run 8 (2026-06-22):** Der Wuest-Kurs und alle lesbaren E-Quellen sind eingearbeitet; der
Loop laeuft im **Aktualisierungs-/Vertiefungs-Modus**. Run 8 hat keine neue Quelle ingestiert,
sondern die bereits ausgewertete **CS Niederhasli** analytisch zum **CS-Sensitivitaets-Generator**
verallgemeinert (T18, geschlossene Break-Even-Formel, aus den Ist-Zahlen validiert) und den
Mietpuls auf Mai-2026 aktualisiert.

**Stand Run 9 (2026-06-26):** weiter im Vertiefungs-/Aktualisierungs-Modus. Keine SharePoint-Quelle
ingestiert; stattdessen die offene **D3-Aufgabe (T-Teil)** geschlossen — alle belegten Diskontsatz-
Anker zur **konsolidierten JANS-Diskontsatz-Tabelle** zusammengefuehrt (Bottom-up + WP-top-down,
real/nominal). Dafuer **neu per Web** das risikofreie Basisniveau erfasst: **10-j Bundesobligation
~0.32-0.40 % (Juni 2026)** (tradingeconomics/SNB-Datenportal). Marktpuls-Check: SNB 0.00 % /
Referenzzins 1.25 % unveraendert.

**Stand Run 36 (2026-07-17):** **Neuer Ingest (extern, amtlich) + Korrektur.** Bau- und
Zonenreglement der Stadt Luzern vom 17.01.2013, sRSL Nr. 7.1.2.1.1, **Ausgabe vom 01.09.2024**
(`stadtluzern.ch/_docn/5364361/...`, 46 S.) vollstaendig gelesen — **Anhang 1** (Zonen- und
Dichtebestimmungen je Ordnungsnummer) extrahiert: WO Nr. 101–192 UEZ 0.05–0.8, WA Nr. 1–66
UEZ 0.15–1.0, je mit Vollgeschossen/Fassadenhoehe/Gebaeudelaenge/Bauweise. Gegengeprueft gegen
den Geoshop-Spiegel (`geoshop.lu.ch/pdf/luze_BZR.pdf`, Ausgabe 01.08.2024) — Anhang-1-Werte
**inhaltlich identisch** (Diff ueber alle 89 WO-Zeilen: keine Abweichung), nur das Ausgabe-Label
differiert; kanonisch ist die sRSL-Fassung. Zusaetzlich der **Revisions-Entwurf** (neue BZO,
`stadtluzern.ch/_doc/4902088`, Art. 40 Abs. 3 = Quelle der A–F-Systematik) und der **Auflage-Flyer**
(`stadtluzern.ch/_docn/6937858`, 2. Auflage 28.04.–27.05.2026, Genehmigung fruehestens Mitte 2027)
erfasst. **Korrigiert** damit die bisherige Falschangabe im Artikel (Entwurf als geltendes Recht
dargestellt) → [[az-gfz-kennwerte]]. Bewertungsordner unveraendert (6 Faelle, juengster Wangen 8855).
Marktpuls bewusst nicht geprueft (naechster amtlicher Wert 01.09.2026; Drossel-Rule 260714).

**Stand Run 35 (2026-07-15):** **Kein neuer Ingest — minimaler Bestaetigungslauf (2. Trigger/Tag,
nach Run 34 00:58).** Bewertungsordner unveraendert (6 Faelle, juengster Wangen 8855). Marktpuls
bewusst NICHT erneut per Web geprueft (Run 34 < 8 Std. zurueck; naechster amtlicher Wert 01.09.2026;
Drossel-Rule 260714 — Wochenlimit schonen). Keine Artikelaenderung.

**Stand Run 34 (2026-07-15):** **Kein neuer Ingest — Delta-/Marktpuls-Check am neuen Tag.** Erster
Lauf im Soll-Takt nach dem Run-33-Root-Cause-Fix. Bewertungsordner unveraendert (6 Faelle, juengster
Wangen 8855), keine neue Quelle. Marktpuls-Web: Referenzzins 1.25 % / SNB-Leitzins unveraendert
(naechste Publikation 01.09.2026), kein neuer amtlicher Durchschnittszinssatz (KB bleibt 1.31 % per
31.03.2026). Keine Artikelaenderung. Die KB ist saturiert; produktiver Ingest erst wieder bei neuem
JANS-Fall / neuem Rohmaterial einer D-Luecke / neuem amtlichen Marktwert.

**Stand Run 18 (2026-07-12):** **Verifikations-Pass Healthcare-Kennwerte — kein neuer Ingest.**
Erster Lauf im Verifikations-Modus (PFLICHT ab 12.07.). Modell-D-Volltext-Recompute der tragenden
Healthcare-Neuwert-Kennwerte gegen die Quell-Zahlen: **bestanden** = Herose-Einzelanker (3'848/1'105/
346'681, exakt), JANS-Wohn-Kennwert-Kette (2'900×1.16=3'365 → /0.75=4'485 → HNF 7'350) und 6 von 8
Heim-Objekten der 8-Objekt-Tabelle (CHF/m2 GF **und** CHF/m3 GV reproduzieren aus BKP2÷Flaeche).
**beanstandet** = 2 Roh-Zeilen (Averecura 4'250/1'420 vs. recompute 3'981/1'285; Vella-Zeile BKP2
24.5 Mio ÷ 7'150 = 3'427 ≠ Tab. 2'835) → **D10** (Original-Blatt-Bereinigung, Bring-Schuld). CHF/PZ
als 24-m2-normiert bestaetigt. Kernaussage (Neubau-Band ~3'800-4'500 CHF/m2 GF teuerungsbereinigt)
bleibt established; Rohband praezisiert auf 2'623-3'981. Neue Luecke **D11** (m3-Richtwerte 2003
aufindexieren — Index-Faktor 2003→2026 fehlt, nicht geraten). Kein Ingest, Marktpuls unveraendert
seit Run 17. **Ruecktaktung ins Nachtfenster empfohlen** (auto-schliessbarer Rueckstand abgearbeitet).

**Stand Run 19 (2026-07-12):** **Verifikations-Pass Ertragswert-/Residualwert-Kennwerte — kein
neuer Ingest.** Modell-D-Volltext-Recompute: (1) Herosé-Annuitaeten (1'820'000/253'200) reproduzieren
sich fast exakt (Abw. 0.04 %/0.002 %) mit der Standard-Kapitalwiedergewinnungsformel
PMT=P·i/(1−(1+i)^−N) — praeziser als die lineare-Abschreibung-+-Durchschnittszins-Lesart (Abw. ~1.1 %)
→ [[ertragswert-dcf]] praezisiert. (2) DXMA-A4-Rechenbeispiel vollstaendig nachgerechnet: bestanden
bis auf Rundung; Fund — BKP-2-Kosten rechnen auf aGF (810 m2), nicht auf GF (1'050 m2) →
[[residualwertmethode]] klargestellt. (3) Barwert-Verlust-Tabelle S. 69: 5 %/10 %-Zeilen bestehen
(≤1 Pp), 3 %-Zeile weicht wachsend ab (bis 4.2 Pp) → ⚠-Vermerk. Keine neue Luecke, beide Artikel
bleiben established. Kein Ingest, Marktpuls unveraendert. **Ruecktaktung ins Nachtfenster weiterhin
empfohlen** (Grenznutzen des Intensiv-Takts sinkend, da Ingest laengst abgearbeitet).

**Stand Run 17 (2026-07-12):** **Reiner Auffrischungslauf (Marktpuls) — keine neue Quelle, keine
offene auto-schliessbare Luecke.** Der Bewertungsordner (`01 Projekte/01 BEWERTUNG PROJEKTE`) wurde
geprueft: **kein neuer JANS-Bewertungsfall** seit Run 6 (juengster Ordner Wangen 8855, 09.06.). Der
Web-Marktpuls bestaetigt alle Zins-/Preis-Anker als unveraendert (SNB-Leitzins 0.00 %, Referenzzins
1.25 %, Mietindex Mai-2026 133.7 / +2.5 % YoY, Baupreisindex Apr-2026 100.6 / +1.0 % YoY, SREBI Q1-2026
0.69). **Einziger neuer Detailwert: der massgebende Durchschnittszinssatz per 31.03.2026 = 1.31 %**
(von 1.32 % per 31.12.2025) → weiter weg von der Erhoehungsschwelle 1.37 %, Referenzzins-Erhoehungsrisiko
sinkt weiter → [[investorenmarkt-makro]]. Verbleibende Luecke unveraendert: nur **D5** (buerospezifische
Margen-/Finanzierungspraxis, Bring-Schuld Raphael). Naechste erwartete Publikationstermine mit neuem
Signal: Referenzzins 01.09.2026 (Stichtag 30.06.), SREBI Q2-2026 (~09.2026), Baupreisindex Dez-2026.

**Stand Run 16 (2026-07-10):** **D8 geschlossen + Healthcare-Umbau-Kostenband belegt — drei bisher
ungelesene JANS-DOCX ingestiert.** Wie schon bei den `.xlsx`-Tools (Run 15) sind auch die als
freigabegebunden angenommenen Kennwerte-DOCX **TCC-lesbar** (unzip + XML-Parser). (1) `_Kennwerte
Jans.docx` (25.03.2025) schliesst **D8**: der **aGF/GF-Umrechnungsfaktor** (Altbau 0.8 / Neubau 0.9,
→ flaechendefinitionen-sia) und der **indexierte JANS-Wohn-Erstellungskosten-Kennwert EFH/ZFH**
(2'900 Median 2020 → 3'365 BKP 2 / **4'485 CHF/m2 GF BKP 1-5** 2025; TG 42'000/SP; Thalwil-Bohlweg-
Rechenbeispiel; **HNF-Faktor 7'350 CHF/m2 HNF**, → realwert-sachwert). (2) Drei Healthcare-DOCX
(`Spektrumskosten` + `Umbaukosten 500K/2500K`) liefern das **JANS-Spitalumbau-Kostenband CHF/m2 NF**
(6 Stationstypen 2'000-10'000+) mit zwei realen Faellen (Psychiatrie-Teilumbau 1'100 → Zielkorridor
1'800-2'500; Kispi ZH Paediatrie 4'412) → realwert-sachwert. (3) `_Kennwerte_Links.docx` als
Quellen-Linkverzeichnis → datenquellen-registry. Marktpuls-Web-Check: alle Anker unveraendert (SNB
0.00 %, Referenzzins 1.25 %, Mietindex Mai-2026 133.7, Baupreisindex April-2026 100.6). Offen bleibt
nur: D5 (buerospezifische Margen-/Finanzierungspraxis, Bring-Schuld Raphael); Emilienheim-Flaechen-
kennwerte **bestaetigt nicht verfuegbar** (nur Tages-Anzeiger-PDF, keine Kennwertquelle).

**Stand Run 15 (2026-07-08):** **D4 geschlossen — die vier Residualwert-Excel-Tools auf Zellebene
reverse-engineered.** Die bisher als `offen`/freigabegebunden markierten `.xlsx`-Tools (WP + JANS,
je Pre-Check + Residualwert-Berechnung) sind lesbar (TCC-Blockade betrifft diesen SharePoint-Pfad
nicht) und wurden per unzip + XML-Zellparser vollstaendig ausgelesen. Kernbefunde: (1) das
einblaettrige «Residualwert Berechnung»-Tool ist bei JANS **formel- und default-identisch mit WP**
(nur Label); (2) die JANS-Kalibrierung sitzt ausschliesslich im **Pre-Check-Tool** und besteht aus
**genau zwei** geaenderten Zellen (Risiko 7 %→**12 %**, Diskont 2.4 %→**2.45 %**); (3) die
Gewerbe-Miete ist als **5.5 % der Erstellungskosten** kostengekoppelt; (4) die Pre-Check-Engine
leitet die **HNF ohne Grundrisse** aus einer Planungsziffer ab (HNF = GF − VF − KF − FF − NNF,
Effizienz-Ampel KF/GF 0.18/0.23/0.30); (5) die Sensitivitaets-Zellformel bestaetigt exakt den
CS-Break-Even-Generator (T18). Eingearbeitet in [[residualwertmethode]] (neue Sektion «Excel-Tool
Formel-Logik (D4)») + [[ertragswert-dcf]]. Zusaetzlich Marktpuls-Web-Check: Zins-Anker unveraendert,
**BFS-Baupreisindex neu Basis Okt-2025 = 100, April 2026 = 100.6 (+1.0 % YoY)** → [[investorenmarkt-makro]].
Offen bleibt nur D5 (buerospezifische Margen-/Finanzierungspraxis, Bring-Schuld Raphael) + D8
(JANS-Kennwerte-DOCX) + Emilienheim-Flaechenkennwerte.

**Stand Run 14 (2026-07-06):** **T19 geschlossen — JANS-Healthcare-Kennwert-Raster befuellt.** Drei
bisher ungelesene Quellen aus der Healthcare-/WALD-Bibliothek ingestiert: (1) JANS' eigenes gefuelltes
**8-Objekt-Referenzblatt** «Kennwerte Altersheime Gesundheitszentren» (8 reale CH-Heime 2011-2025)
liefert alle Wirtschaftlichkeitsfaktoren des Rasters mit belegten Zahlen (Bettzahl, GF/Bett 90-135,
NF/Bett 51-71, Bauvolumen/HNF 4.3-9.7) UND die erweiterte Kostenbasis (BKP 2 = 2'623-4'250 CHF/m2 GF /
826-1'420 CHF/m3 GV / 273'000-780'000 CHF/PZ); (2) die **WALD-Tertianum-Baumassenberechnung** (Gruenegg,
V1-V7) als «Wald-Tertianum-Bestand/Szenarios»; (3) die **SECO/USI-Effizienzstudie Crivelli 2001** (835
Heime) beantwortet die 3 Fragestellungen (optimale Groesse 70-80 Betten, Schwelle ~50, normale Groesse
Median 52/Ø 62). Damit ist das Healthcare-Kostenband von 1 (Herosé) auf 8 reale Objekte verbreitert
(realwert-sachwert), die Healthcare-Flaechenfaktoren belegt (flaechendefinitionen-sia, HNF/GF ~0.55) und
die Skalen-/Betriebsgroessen-Einordnung in die Ertragsseite eingewoben (ertragswert-dcf). Offen bleibt
(Bring-Schuld): D4 (`.xlsx`-Tool-Formeln), D8 (JANS-Kennwerte-DOCX), Emilienheim-Flaechenkennwerte,
Marktpuls (unveraendert seit Run 13, naechste SNB-/Referenzzins-Publikationen erst 09.2026).

**Stand Run 13 (2026-07-04):** **T17 vollstaendig geschlossen (Investoren-Markt-Seite) — grosser
Healthcare-Vertiefungslauf.** Sieben bisher ungelesene, oeffentliche/Dritt-Quellen aus der
Healthcare-Bibliothek + CRB-Marktpreise + Web ingestiert (parallele Lese-Agenten): (1) **SenioResidenz
AG GB 2017** liefert den lang gesuchten realen CH-Healthcare-**Investor**-Fall (impl. Brutto-Yield
~5.3 %, WP-DCF) → schliesst die T17-Investoren-Seite; (2) **BFS «Indikatoren Pflegeheime 2019-2021»**
+ (3) **NZZ/Curaviva** liefern die Pflegeplatzkosten-Struktur (10'035 CHF/Mt, Pension/Pflege/Betreuung-
Split); (4) **Obsan 03/2022** die Nachfrageprognose (+54'335 Betten bis 2040) → investorenmarkt-makro;
(5) **CRB werk-material Spital** erweitert das Kostenband auf Spital (3'426-3'767 CHF/m2 GF); (6)
das **JANS-Kennwert-Raster 2411** (leer → neue Aufgabe T19) und (7) der reale **ZH-Fall Emilienheim
Kilchberg**. Zusaetzlich Marktpuls-Web-Check (Anker unveraendert) + WP-2026-Segment-Prognose
(Buero +0.5 %/Detailhandel −1.5 %) → **Gewerbe-Feinabstufung** D3-Rest. Noch nicht gelesen (kuenftige
Laeufe): Herosé-Vergleichsheim-Details, SenioResidenz-Nachfolgeberichte, weitere Kennwerte-DOCX
(D8-Freigabe). Weiter offen: D4 (`.xlsx`-Tool-Formeln), D8 (JANS-Kennwerte-DOCX), T19 (Raster befuellen).

**Stand Run 12 (2026-07-02):** **T17 (Healthcare-Bewertungsfall) weitgehend geschlossen.** Aus der
bisher ungelesenen Healthcare-Bibliothek (`06 Kennwerte/Healthcare/HEIM/`, NICHT freigabegebunden —
oeffentliche/Dritt-Dokumente, im Unterschied zu den JANS-DOCX-Kennwerten D8) zwei Quellen
ingestiert: (1) der **oeffentliche Baukredit-Bericht Pflegeheim Herosé Aarau** (13.12.2021) liefert
den lang gesuchten realen CH-Pflegeheim-Anker — Erstellungskosten-Kennwerte (BKP 2 = 3'848 CHF/m2 GF /
1'105 CHF/m3 GV / 346'681 CHF/Zimmer + 4-Heim-Vergleich) und das **Annuitaets-Finanzierungsmodell**
(33 J CURAVIVA / BWO-Referenzzins 1.25 %, KVG-/Hotellerie-Taxen-Trennung, Taxe 120→153 CHF/Tag);
(2) die **ARTISET KVG-KoRe-Fachnews** belegt die standardisierte Betriebskostenrechnung. Damit ist
T17 auf der **Kosten-/Annuitaetsseite belegt**; offen bleibt nur der Investoren-Markt-Diskont (realer
Verkaufs-/Fondsfall). Zusaetzlich der **Run-11-Prozessleck** (undokumentierter 30.06.-Edit,
Health-Check 01.07.) nachgetragen und die drei Health-Check-Findings (Backlinks, Frontmatter) bereinigt.
Noch nicht gelesen (fuer kuenftige Laeufe): Obsan-Bericht 03/2022, SenioResidenz-Geschaeftsbericht,
Herosé-Vergleichsheim-Details.

**Stand Run 10 (2026-06-28):** **drei bisher ungelesene, NICHT freigabegebundene Quellen
ingestiert** (die Freigabe-Sperre betraf nur die `.xlsx`-Tools D4). (1) Raphaels datierte Notiz
`231231_Residualwert und Diskontierung.docx` (31.12.2023) belegt die **JANS-Diskontsatz-
Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung**, die **Betriebskosten-Pauschale
2.5 % (5x0.5 %)** und die komplette **Rechenkaskade + Abzinsungsformel** → schliesst den
Wohnbau-Teil der bisher als Bring-Schuld markierten D3-Faustregeln. (2) `Disskontierung.docx` gibt
einen **Healthcare-Diskontsatz-Anker** (Pflege 4-8 %) → Healthcare-Zeile *speculative*→*emerging*.
(3) Die **kanonische SIA-416:2003-Norm-PDF** verankert `flaechendefinitionen-sia` vollstaendig
(Hierarchie + Volumen + Miet-/STWE-Flaechen + Abgrenzung). Plus Kursnotizen IMG_7064-67. Offen
bleiben nur noch: **D4** (`.xlsx`-Tool-Formeln, Freigabe), **D8** (`_Kennwerte Jans.docx` +
Healthcare-DOCX, Freigabe), **T17** (realer CH-Healthcare-Bewertungsfall), **D3-Rest**
(Gewerbe-Feinabstufung je Mietersegment — Bring-Schuld Raphael).
