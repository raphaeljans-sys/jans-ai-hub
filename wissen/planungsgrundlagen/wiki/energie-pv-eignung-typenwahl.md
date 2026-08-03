---
title: PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)
status: established
last_updated: 2026-08-01 (Wartungslauf 02: solarrechner.ch tot, EnergieSchweiz-Nachfolge belegt)
sources: [PL - 04 Energie/Solaranlage (SharePoint), EnergieSchweiz Solarrechner Usermanual (Okt 2022), SolarApp AG "SolarReport" Reckholdern/Willerzell (09.01.2024, vollständiger Bericht Run 42) + MFH Basel (05.11.2022), PVSOL premium 2019 Projekt "PI" Thomas Lueem Partner AG (18.01.2019, Run 42), JANS-Projekt ewzWHH PS 19.36 (Korrespondenz 02/2019), Formular EN-104 (EnDK, Juni 2019), PREFA Solarfolder CH (Stand 09.2023 V5), Datenblatt SI-Saphir M175-M180 (Stand 06/2015, DIBt Z-70.3-204), Eternit Sunskin roof GG-L 195W (solar-home.ch Webshop, Screenshot 17.11.2024), Amt für Umwelt und Energie Basel/jessenvollenweider (2021, Fassaden-PV Schmelzglas), uvek-gis.admin.ch, sonnenverlauf.de, Megasol Datenblatt Hochleistungsmodul M385-HC120-b BF GG U30b Art. 0322.1580 (Version 10/2022, Run 31), PL - 04 Energie/Solaranlage/Dachausstiege (6 Produktfotos, 11/2024, Run 31), Eternit Sunskin roof "Planung + Ausführung" (solar-home.ch/Sunskin, Rev. 01.2022/web, Run 40), UVEK-GIS-Bericht "Wie viel Strom oder Wärme kann mein Dach produzieren?" (uvek-gis.admin.ch/BFE, sonnendach.ch-Druckausgabe, 02.07.2023, Run 40), EnergieSchweiz-Solarrechner-Report "Schlüsseldaten rund um meine Solaranlage" (energieschweiz.ch, Diemtigen, 02.07.2023, Run 40), TEC21 | TRACÉS | archi Dossier 5/2012 "SolaRes Bauen" (PL-04/Solaranlage/_Literatur, Run 40), HSLU T&A "GreenPV" Workshop 2 Foliensatz (20220606_GreenPV - Workshop 2.pdf, 15.06.2022, S. 1-29 von 46, Run 49), HSLU IGE "GreenPV" Schlussbroschüre (502400-greenpv-broschuere-20240827-web.pdf, hslu.ch, 27.08.2024, 47 S. vollständig, Run 50), TEC21 | TRACÉS | archi Dossier 5/2012 "SolaRes Bauen" S. 1-38 vollständig gelesen (Final_Dossier_Solararchitekur_tiefaufgeloest.pdf, 8 weitere Referenzprojekte, Run 65 2026-07-25 Token-Vollgas)]
links: [[energie-uebersicht]], [[energie-pv-brandschutz]], [[energie-energienachweis-zh-formulare]], [[energie-betriebsenergie-pv-wirtschaftlichkeit]], [[kartenportale-geoportale-uebersicht]], [[recht-norm-arbeitshilfen-planungsdetails]]
---

# PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)

Beschaffungs-/Entscheidungs-Artikel der Domäne Energie: **welcher PV-Typ wann** und **wie
Eignung/Ertrag belegt bestimmt wird**, bevor ein konkretes Projekt geplant wird. Bedient vom
Agent `energie-berater`. Physik/U-Werte/Heizwärmebedarf → eigene KB `wissen/energie/`
(`[[u-werte-grenzwerte-ch]]`). **Brandschutz/Naturgefahren Solar → eigener Artikel
`[[energie-pv-brandschutz]]`** (Swissolar-STP zu VKF-BSM 2001-15); Bauteil-Klassen → Skill
`brandschutz`.

## 1 — PV-Typenwahl (Entscheidungsbaum)

Die fünf in PL-04/Solaranlage geführten Bauarten (Ordner A–E) und ihr Entscheidungskriterium:

| # | Typ | Konstruktion | Wählen wenn … | Quelle PL-04 |
|---|---|---|---|---|
| A | **Indach-PV** | dachintegriert, ersetzt die Eindeckung | Neubau/Steildach-Sanierung, gestalterischer Anspruch, Dach ohnehin neu | `Solaranlage/A Indach PV Anlage` |
| B | **Dachziegel-PV** | ziegelförmige Solarmodule | ortsbild-/denkmalsensible Lage, Kernzone, hohe Gestaltungsauflage | `Solaranlage/B Dachziegel PV Anlagen` |
| C | **Transparente PV** | semitransparente Module (z.B. SI-Saphir M175–M180) | Terrassendach, Wintergarten, Vordach — Licht + Strom | `Datenblatt_SI-Saphir_M175-M180.pdf` |
| D | **Fassaden-PV** | vertikal, Teil der Gebäudehülle | Stadt/Hochbau, hoher Fassaden- bei kleinem Dachanteil, Winterertrag (steiler Winkel) | `Solaranlage/D Fassaden PV Anlage` |
| E | **Aufdach / Flachdach** | aufgeständert (Süd- oder Ost/West-/V-Anordnung) | Flachdach, schnelle Nachrüstung, max. kWp pro Fläche | `Solaranlage/E Aufdach Flachdach PV Anlage` |

**Logik kurz:** Dach neu/Steildach + Gestaltung → A (oder B im Schutzbereich). Glasdach/lichtdurchlässig
→ C. Wenig Dach, viel Fassade / Stadt → D. Flachdach, Ertrag maximieren → E (aufgeständert).
Kombination D+E ist bei Hochbauten üblich (Fassade Winter, Dach Sommer).

> ⚠ Hinweis: Die JANS-Typenordner enthalten Referenzbilder/Screenshots **plus** belegte
> Hersteller-Datenblätter/Webshop-Belege — Typ B PREFA Solardachplatte + Eternit Sunskin roof,
> Typ C SI-Saphir Doppelglas, Typ D Fassaden-BIPV (real: AUE Basel). Die daraus gezogenen
> **Flächenleistungen (Wp/m²)** und der **Modul-Preis-Anker** stehen belegt in §1b/§3.

## 1b — Flächenleistung (Wp/m²) je PV-Typ (belegt, D5)

Der planerisch wichtigste Kennwert der frühen Studie ist **nicht** primär CHF/kWp, sondern **wieviel
kWp auf die gegebene Dach-/Fassadenfläche passt** — also die **Flächenleistung Wp/m² verlegte Fläche**.
Sie unterscheidet die Typen stärker als der spez. Ertrag und ist über Hersteller-Datenblätter hart belegbar:

| Typ | Produkt (Beleg) | **Wp/m² verlegt** | Flächenbedarf | Gewicht/Besonderheit | Quelle |
|---|---|---|---|---|---|
| **A/E Standard** mono | kristallines Standardmodul | **~170–200** | ~8 m²/kW (16 m²/kW Dünnschicht) | Referenzband | EN-104 (EnDK 2019) |
| **B Dachintegriert** gross | PREFA Solardachplatte gross (1400×420, 100 Wp/Stk, 1.7 Stk/m²) | **~170** (5.88 m²/kWp) | 5.88 m²/kWp | 12.6 kg/m², ab 17°, **keine Durchdringung/keine PV-Statik** | PREFA Solarfolder 09.2023 |
| **B Dachintegriert** klein | PREFA Solardachplatte klein (700×420, 43 Wp/Stk, 3.4 Stk/m²) | **~146** (6.84 m²/kWp) | 6.84 m²/kWp | 12.6 kg/m², kleinteilig (Ortsbild/Kernzone) | PREFA Solarfolder 09.2023 |
| **B Dachintegriert** (Alternative) | Eternit Sunskin roof GG-L, 195 Wp/Modul | ~150–170 (typ.) | Vollflächen-Integration | Glas-Glas, Aura-2-Systemprofil, 25 J/80 % | solar-home.ch (17.11.2024) |
| **C Transparent** | SI-Saphir M175-M180 Doppelglas (1500×1000, 180 Wp, 40 % Lichtdurchlass) | **~120** (180 Wp / 1.5 m²) | ~8.3 m²/kWp | 30 kg/Modul, **DIBt Z-70.3-204** (Überkopf/Fassade), bifazial bis 210 Wp | Datenblatt SI-Saphir |
| **D Fassade** (vertikal) | BIPV strukturiertes Schmelzglas / Glas-Glas | ~100–150 brutto, **× ~0.6–0.7 Ertragsfaktor** (senkrechter Winkel) | flächenabh. | architektonische Vollintegration | AUE Basel (jessenvollenweider 2021) |
| **A/E Standard bifazial** | Megasol M385-HC120-b BF GG U30b (Glas-Glas, n-type HiR half-cut, CH-Fabrikat) | **~211** (385 Wp / 1.822 m²) | ~4.7 m²/kWp | 23.5 kg/Modul, **bifazialer Mehrertrag +5…+35 %** je nach Untergrund-Albedo (Gras/Ziegel +5–15 %, helles Kies/Sand +15–25 %, Schnee/Eis +25–35 %), lineare Leistungsgarantie 30 J (−0.5 %/J), nicht brennbar (Glas ober-/unterseitig) | Megasol Datenblatt Art. 0322.1580, Version 10/2022 |

**Bifazial-Ergänzung (Run 31, 2026-07-13):** ein bifaziales Glas-Glas-Modul (z.B. Megasol
M385-HC120-b) liefert an sich schon eine höhere Flächenleistung (**~211 Wp/m²**) als das
generische Standardmodul-Band (~170–200), UND einen **zusätzlichen Mehrertrag von der
Rückseite**, der stark vom Montageuntergrund abhängt (Albedo). Planerisch relevant: bei
**Flachdach mit hellem Kies** oder **freistehender Geländer-/Carport-Montage** (Modul hängt
frei, Rückseite sieht reflektierendes Material) ist Bifazial ein reeller Zusatzertrag von
grob **+15–25 %**; auf dunklem Bitumen/Substrat-Gründach kaum Mehrwert. Dieser Faktor gehört
in die Ertragsschätzung, sobald der Untergrund (Kies-/Substrat-Farbe) bekannt ist — nicht
pauschal ansetzen.

**Kern-Lehren für die Studie:**
- **Transparenz kostet Leistung:** semitransparentes Modul (Typ C, 40 % Lichtdurchlass) liefert mit
  **~120 Wp/m²** nur ~60 % der Flächenleistung eines opaken Standardmoduls (~200 Wp/m²) — der
  Lichtdurchlass wird durch hohen Zellabstand erkauft. Für Pergola/Vordach/Wintergarten bewusst
  einplanen: mehr Fläche für dieselbe kWp.
- **Dachintegriert (Typ B) ~146–170 Wp/m²** liegt leicht unter dem opaken Standardmodul, aber der
  **planerische Gewinn** ist statisch/konstruktiv: **keine Dachdurchdringung, keine separate
  PV-Unterkonstruktions-Statik** (PREFA), Gewicht nur **12.6 kg/m²**, ab **17° (31 %)** Dachneigung.
- **Überkopf/Fassaden-PV braucht die Glas-Bauzulassung:** das SI-Saphir-Modul trägt die **allgemeine
  bauaufsichtliche Zulassung DIBt Z-70.3-204** — bei Pergola/Vordach ist das Modul zugleich
  **Überkopfverglasung** (VSG/absturzsichernde Verglasung, Schnee-/Windlast 7200 Pa) → in der Studie
  als Bauteil der Gebäudehülle behandeln, nicht als reines Anbauteil.

## 1c — Planungsgrenzwerte Dachintegration Typ B (Sunskin roof, belegt, E32/Run 40)

Ergänzend zur Flächenleistung (§1b) liefert die Herstellerdokumentation **Eternit «Sunskin
roof — Planung + Ausführung»** (Rev. 01.2022/web, 67 S., PL-04/`Solaranlage/solar-home.ch/
Sunskin/`) die konkreten **Einsatzgrenzen** eines dachintegrierten Systems (Typ B) — Werte, die
in einer frühen Studie oft übersehen werden, weil sie nicht in der Flächenleistung stecken:

- **Anwendungsbereich:** minimale Dachneigung **10°**, maximale Dachneigung **60°**; Bezugshöhe
  (SIA-Schneelastkarte) bis **2000 m ü. M.** ohne Rücksprache, darüber Abklärung mit dem
  technischen Service des Herstellers.
- **Schneelast-Kopplung an die Konstruktion:** die zulässige **maximale Einsatzhöhe** je
  Modultyp (S/M/L/XS) hängt direkt von der Lattendimensionierung ab — je höher die
  Bezugshöhe, desto mehr Modulhalter/Zwischenlatten und desto kleiner der maximale
  Konterlattenabstand. Beispiel-Bandbreite aus der Bemessungstabelle (Normale Windexposition,
  Dachformbeiwert 0.8): Bezugshöhe ≤ 1000 m → Bemessungswert **Ed ≈ 4.4 kN/m²** (3 Modulhalter),
  Bezugshöhe ≤ 2000 m → **Ed ≈ 16.2 kN/m²** (5 Modulhalter, verstärkte Konterlattung
  50×45/60×45 mm) — die statische Reserve eines Indach-Systems ist **kein pauschaler Wert**,
  sondern muss über die Bezugshöhe der Parzelle (SIA-Schneelastkarte, Postleitzahl-Tool
  `eternit.ch/Tools/Bezugshoehe`) hergeleitet werden.
- **Hinterlüftung als Pflichtbauteil:** freier Querschnitt der Be-/Entlüftungsöffnungen
  mindestens die Hälfte des Durchlüftungsquerschnitts, gleichmässig über Trauf- und
  Firstlänge verteilt; **minimale Höhe des Durchlüftungsraums nach Norm SIA 60 mm**, je nach
  Sparrenlänge/Dachneigung/Bezugshöhe auf bis zu 140 mm ansteigend (Tabelle S. 13). Bei
  Dachdurchdringungen (Dachfenster) muss der unterbrochene Durchlüftungsraum konstruktiv
  umgeleitet werden.
- **Materialkonflikt Dachschiefer/Naturgrau:** die Kombination von Sunskin-roof mit
  unbeschichtetem naturgrauen Faserzement-Dachschiefer kann durch Ausblühungen/Patina zu
  **erheblichen Ertragseinbussen** führen — Herstellerempfehlung: darauf verzichten.
- **Konstruktive Konsequenz für Attika/Absturz:** bei bis zur Traufe montierten Modulen ist dem
  Abrutschen von Schnee (Personenschutz) konstruktiv Rechnung zu tragen — Querbezug zu den
  Absturzsicherungs-Grundsätzen in `[[recht-norm-arbeitshilfen-planungsdetails]]` §3.

Diese Planungsgrenzwerte gelten spezifisch für das Sunskin-System, sind aber als **Grössenordnung
für dachintegrierte Systeme generell** (10–60° Dachneigungsbereich, Hinterlüftung als Pflicht,
Schneelast-Bezugshöhen-Abhängigkeit) übertragbar. Status: `established` (Hersteller-Fachdoku,
Datenstand 01.2022 — Rev. bei Zitat prüfen).

## 2 — Eignung & Ertrag belegt bestimmen (Werkzeuge)

Reihenfolge von grob (Portal, kostenlos) zu fein (professionelle Simulation):

| Werkzeug | Liefert | Endpunkt / Quelle | Datenstand |
|---|---|---|---|
| **sonnendach.ch** (BFE) | Eignung + grober Jahresertrag je Dachfläche der CH | `sonnendach.ch` (geom. Basis swisstopo) | laufend (BFE) |
| **EnergieSchweiz Solarrechner** | Ertrag, Eigenverbrauch, Batterie, **Renditerechner** | **`www.energieschweiz.ch/tools/solarrechner/`** (200, gemessen 01.08.2026) — die frühere Kurzadresse ~~`solarrechner.ch`~~ ist **tot** (kein verwertbares TLS-Zertifikat, `http://` antwortet 436; auch im Browser nicht ladbar) | Usermanual Okt 2022 |
| **uvek-gis.admin.ch** | kartenbasierte Eignung/Ertrag, Layer | `uvek-gis.admin.ch` (Map-Viewer Bund) | laufend |
| **sonnenverlauf.de** | Sonnenstand/Verschattung über Jahr | `sonnenverlauf.de` | laufend |
| **SolarApp AG** | vollständiges "SolarReport"-Vorprojekt (Auslegung + Nutzenanalyse) | `solarapp.ch` (Deitingen SO), Bestellung durch Installateur/Planer | projektweise |
| **PVSOL premium** | professionelle Ertrags-/Verschattungs-Simulation | Desktop (Valentin Software GmbH) | projektweise |

## 2c — SolarApp vs. PVSOL premium: zwei Stufen professioneller Simulation (Run 42, 2026-07-14)

Delta zu §2: die bisher nur als Datenquelle in der Benchmark-Tabelle (§3) zitierten Tools
**SolarApp** und **PVSOL premium** sind zwei unterschiedliche, eigenständige Stufen jenseits der
kostenlosen Bund-Portale (sonnendach.ch/uvek-gis) — beide liefern **mehr als eine
Eignungsklasse**, nämlich eine vollständige Vorprojekt-Auslegung mit Wirtschaftlichkeit.

**SolarApp AG** (`solarapp.ch`, Industriestrasse 3, 4543 Deitingen) liefert auf Bestellung einen
mehrseitigen **"SolarReport — Vorprojekt mit Auslegung und Nutzenanalyse"**: Eigenverbrauch/
Unabhängigkeit, Kennzahlen (installierte Leistung, Modulanzahl, Stromproduktion/Jahr, CO2-
Reduktion), Monatsanalyse, Produktübersicht (Montagesystem/Modul/Wechselrichter), Richtpreis,
Wirtschaftlichkeit inkl. kumulierter Erträge, sowie **Anhang Statikbericht** und **Anhang
Auslegung Montagekomponenten**. Realer Beleg Reckholdern 20 Willerzell (Bericht 09.01.2024,
bereits in §3 als Ertrags-/Kostenbenchmark geführt) liefert zusätzlich die bisher nicht
dokumentierte **Eigenverbrauchs-/Unabhängigkeits-Seite**: Produktion 7'743 kWh/Jahr,
Eigenverbrauch 3'386 kWh, Stromverbrauch Haushalt 14'500 kWh/Jahr → **Unabhängigkeit 53 %**,
Bezug vom Netz 11'114 kWh, Einspeisung ins Netz 4'356 kWh. Alle SolarApp-Berichte tragen den
Vorbehalt "Informationen ohne Gewähr, müssen vom Fachpartner überprüft werden" — Status eines
**Vorprojekts**, kein Ausführungsdokument.

**PVSOL premium** (Valentin Software GmbH) ist demgegenüber eine **Desktop-Fachplanersoftware**,
die von TGA-/Elektroplanern für die technische Simulation grosser Anlagen eingesetzt wird — real
belegt am Beispiel eines Elektroingenieurbüros (Thomas Lueem Partner AG, Baar) für eine
**491.4-kWp-Grossanlage** (2'681 m² PV-Fläche, 1'638 Module, 6 Wechselrichter, Klimadaten
Wädenswil). Der Bericht selbst bezeichnet sich explizit als **"rudimentäre Simulation, um die
Wirtschaftlichkeit einzugrenzen — kein Planungsdokument"**. Einordnung: SolarApp bedient
JANS/Bauherrschaft direkt für Kleinanlagen (EFH/MFH) mit fertigem Präsentationsbericht; PVSOL
premium ist das Werkzeug der TGA-Fachplaner-Subunternehmer für Grossanlagen-Voruntersuchungen,
beide Stufen liefern ausdrücklich **kein** Ausführungsdokument.

**Solarrechner-Kennwerte (Usermanual EnergieSchweiz, Okt 2022, S. 2–3):**
- Der Rechner deckt mit **4 Systemvarianten ~90 %** aller CH-Solaranlagen ab (PV mit Eigen-
  verbrauch; PV + Warmwasser/WP; PV + WW + Heizung; Solarwärme).
- Modulfläche↔Leistung (Beispiele S. 3): **26 m² ≈ 4.5 kWp · 39 m² ≈ 6.7 kWp · 52 m² ≈ 8.8 kWp**
  → Faustwert **≈ 5.8–6 m² pro kWp** (kristalline Module, Stand 2022).
- Annahmen Verbrauch: 2.5 kWh Strom/Person·Tag, 50 L Warmwasser/Person·Tag bei 55 °C.

## 2b — Eignungsklassen & Berechnungsmethodik sonnendach.ch/uvek-gis (belegt, E33/Run 40)

Ein realer **UVEK-GIS-Bericht** ("Wie viel Strom oder Wärme kann mein Dach produzieren?",
`uvek-gis.admin.ch/BFE/sonnendach`, Druckausgabe 02.07.2023, Standort Diemtigen) legt die
**Eignungsklassen-Skala** und die Rechenannahmen hinter dem Portal offen — bisher war nur der
Werkzeug-Name dokumentiert (§2-Tabelle), nicht die Methodik dahinter:

- **5-stufige Eignungsklasse** nach mittlerer jährlicher Einstrahlung (Globalstrahlung) auf die
  Dachfläche: **Gering** < 800 kWh/m²·a · **Mittel** 800–999 · **Gut** 1000–1199 · **Sehr gut**
  1200–1399 · **Hervorragend** ≥ 1400 kWh/m²·a. Ein Dach mit 26° Neigung/156° (Südost)-Ausrichtung
  im Beispiel erreicht 1'398 kWh/m²·a → Klasse «Sehr gut» (knapp unter «Hervorragend»).
- **Modul-Wirkungsgrad-Annahme:** das Portal rechnet seit **September 2022 mit 20 %**
  Modulwirkungsgrad (vorher 17 %) — bei Vergleich mit älteren Berichten/Kennwerten diesen
  Versions-Sprung beachten (Ertrag um ~18 % höher gerechnet als vor 09/2022).
- **Performance Ratio 80 %** (System-/Verschattungs-/Temperaturverluste) wird zusätzlich zum
  Modulwirkungsgrad angesetzt.
- **Monetarisierung:** der Stromertrag wird pauschal mit **10 Rp./kWh** vergütet gerechnet — die
  Portal-eigene Herleitung: ein Teil wird eigenverbraucht (Einsparung bis 20 Rp./kWh), der
  überwiegende Rest wird zu unter 10 Rp./kWh eingespeist; der Mischwert 10 Rp./kWh ist explizit
  als **grobe Näherung** deklariert, keine reale Tarif-Zusicherung — bei Wirtschaftlichkeits-
  studien immer durch reale Einspeise-/Eigenverbrauchstarife des lokalen EVU ersetzen.
- **Solarwärme-Modul** (thermische Nutzung, separat vom PV-Ertrag): Heizwärme-/
  Warmwasserbedarf wird **aus dem GWR** (Gebäude- und Wohnungsregister) geschätzt, nicht
  gemessen — bei Gebäuden ohne hinterlegte GWR-Verbrauchsdaten liefert das Portal **keinen**
  Solarwärme-Ertragswert (im Beispielbericht: «keine Verbrauchsdaten bekannt» → Kollektorfläche/
  Speichervolumen bleiben leer). Für eine belastbare Solarwärme-Dimensionierung braucht es
  reale Verbrauchsdaten oder eine Fachberechnung (SIA 380/1, → §3 Detail in
  `[[energie-heizwaermebedarf-waermeerzeugerleistung]]`), das Portal ersetzt das nicht.
- **Ausdrücklicher Vorbehalt der Quelle:** das Portal ersetzt keine Fachberatung, gibt keine
  Auskunft zur Baubewilligungspflicht/-fähigkeit; Solaranlagen auf kantonal/national geschützten
  Kultur-/Naturdenkmälern bedeuten **immer** eine Baubewilligungspflicht (Art. 18a RPG) —
  für die effektive Bewilligungsfrage bleibt der Skill `baurecht` massgebend, das Portal liefert
  nur den energetischen Grössenordnungswert.

Status `established` (amtliche Bundesstelle-Publikation, direkt gelesen). Ergänzt die
Werkzeug-Tabelle in §2 um die dahinterliegenden Zahlen, ohne sie zu verdoppeln.

## 3 — JANS-Benchmark-Tabelle: Ertrag & Kosten je Typ (D5, kompoundierend)

Reale JANS-/PL-04-Belege für die **zwei Faustkennwerte** einer frühen Studie: **spez. Ertrag
(kWh/kWp)** für die Strommenge und **Erstellungskosten (CHF/kWp)** für das Budget. Beide aus
SolarApp-Vorprojekten (PVGIS-basiert) bzw. realer ewz-Korrespondenz — vor Zitat Kontext/Jahr prüfen.

| Projekt / Ort | Jahr | Typ | Leistung | Module | **kWh/kWp** | Invest CHF | **CHF/kWp** | Quelle (PL-04) |
|---|---|---|---|---|---|---|---|---|
| **Reckholdern 20, Einsiedeln SZ** (EFH, Abbruch/Neubau) | 2024 | **A Indach** (MATCH Tile, 32 Wp Solarziegel) | 7.90 kWp | 252 | **981** | 58'198 | **≈ 7'370** | `solarapp.ch/Willerzell/2024-01-09 SolarReport` |
| **MFH Basel** (2 Dachflächen) | 2022 | **E/Aufdach** Standardmodul | 59.93 kWp | 162 | **852** | 135'257 | **≈ 2'255** | `solarapp.ch/Basel/2022-11-05_SolarReport` |
| **ewzWHH Greencity** (PS 19.36) | 2019 | **E Flachdach**, V-Anordnung aufgeständert | — | — | **~850** | — | **~1'600 real / 2'460 Schätzung** | `D Fassaden PV Anlage/190213 E Vorgehen PV.pdf` |
| **Eternit Sunskin roof GG-L** (Modul-Listenpreis, netto) | 2024 | **B/D dachintegriert / Fassade** (195 Wp/Modul, inkl. Systemprofil) | — | — | — | 339/Modul | **≈ 1'740 CHF/kWp _nur Modul_** | `A Indach PV Anlage/Bildschirmfoto 2024-11-17` (solar-home.ch, Aktion −20 % bis 31.12.24) |
| **EFH Baujahr 1957** (Etappensanierung) | 2019 | **PV + Batterie 11.5 kWh + WW-WP-Boiler** (gebündelt) | 14 kWp | — | — | 36'000 gebündelt | **_nicht isolierbar_** (Paket 36'000, −15'000 Förderung/Steuer → ~7 J Amortisation) | `_Betriebsenergie/` (reale Betriebskosten, → [[energie-betriebsenergie-pv-wirtschaftlichkeit]]) |
| **EFH Diemtigen** (EnergieSchweiz-Solarrechner-Musterbericht) | 2023 | **E/Aufdach** Standardmodul, 26° Neigung/−24° Ausrichtung | 6.0 kWp (32 m²) | — | **1'025** (6'148 kWh/a) | 19'140 **schlüsselfertig** | **≈ 3'190 CHF/kWp installiert** | `Solaranlage/energieschweiz.ch/Diemtigen/Photovoltaik-Report_3753_1-24_26_6.0kW.pdf` |

**Neu belegt (E34/Run 40): erster installierter System-CHF/kWp-Wert.** Der Diemtigen-Bericht ist
kein realer JANS-Installateur-Schlussbeleg, sondern ein **EnergieSchweiz-Solarrechner-Musterbericht**
("Schlüsseldaten rund um meine Solaranlage", 02.07.2023) — aber mit einer expliziten
**schlüsselfertigen Anlagekosten-Zahl (CHF 19'140 für 6.0 kWp ≈ 3'190 CHF/kWp)**, die die bisher
offene Lücke "installierter System-CHF/kWp" für den **Standard-Aufdach-Typ (E)** erstmals mit
einer konkreten Zahl unterlegt — bislang stand dort nur der hergeleitete Modulpreis-Anker (§3 unten).
Zusätzlich zeigt der Bericht die **Förder-/Steuer-Kaskade** einer Kleinanlage: CHF 2'400 KLEIV
(**≈ 13 %** der Anlagekosten) + CHF 3'486 Steuerabzug (18 %) ⇒ Nettoinvestition CHF 13'254; bei
jährlichem Gewinn CHF 554 (Eigenverbrauchs-Einsparung + Einspeiseerlös − Unterhaltskosten) ergibt
sich eine **Amortisation von 24 Jahren** — deutlich länger als der ewzWHH-Benchmark (§ unten,
19–31 J), weil hier nur der Kleinanlagen-Eigenheim-Fall ohne Batterie/WP-Kopplung gerechnet wird.
Status `established` (amtliche EnergieSchweiz-Publikation, Zahlen direkt aus dem PDF nachgerechnet
konsistent: 19'140/6.0 = 3'190).

**Ergänzung Run 59 (2026-07-25) — Stückliste MFH Basel:** die vollständige Richtpreis-Position
des Basel-SolarReports (bisher nur die Summe CHF 135'257 in der Tabelle oben) enthält eine
markenkonkrete BOM, LV-relevant für BKP 230/232: **Swiss Premium M340-60-b GG LEVEL Dose L**
Module (162 Stk. à CHF 404.30), **Growatt**-Wechselrichter (Modelle MID 25KTL3-X1/MIC 1500TL-X/
MID 22KTL3-X/MIC 2000TL-X + GAK-Anschlusskästen), **LEVEL**-Unterkonstruktion (Schiene/
Schienenhaken/Mittelhaken/Auflage/Seitenhalterung). Zwischensumme Material CHF 86'815 (netto vor
Planung/Verpackung/Montage) — erste marken-/positionskonkrete Kostenaufschlüsselung in dieser KB
jenseits der Pauschalsumme, Quelle `solarapp.ch/Basel/2022-11-05_SolarReport_Version_1-3.pdf`
S. 10-11.

**Lesart der Bandbreite (belegt):**
- **Spez. Ertrag** liegt in ZH/SZ-Lagen belegt bei **~850–980 kWh/kWp** (Dachneigung/Verschattung/
  Standort). Faustwert für Grob-Studie: **~900 kWh/kWp**.
- **CHF/kWp ist stark typabhängig:** kleinteilige **Indach-Solarziegel** (Typ A/B, viele
  Klein-Module à 32 Wp → 252 Stk. für 7.9 kWp) sind mit **~7'000+ CHF/kWp** ein Vielfaches der
  **Standard-Aufdach/-Indach-Module** (Typ E) mit **~2'000–3'200 CHF/kWp** (Basel-Grossanlage
  59.93 kWp ≈ 2'255, Diemtigen-Kleinanlage 6.0 kWp ≈ 3'190 — Skaleneffekt: kleine Anlagen tragen
  proportional mehr Fixkosten pro kWp). Grund: Stückzahl, Montageaufwand, Ästhetik-Aufpreis,
  Anlagengrösse. → In der Studie **nie einen Pauschal-CHF/kWp** über alle Typen ziehen.
- **Förderung** (Pronovo EIV) senkt die Netto-Investition spürbar: Basel CHF 22'861 (~17 %),
  Reckholdern CHF 3'674 (~6 %) — als Abzug, nicht als Ertrag verbuchen.
- **Modul-Preis-Anker vs. Systempreis:** der Eternit-Sunskin-Listenpreis **~1'740 CHF/kWp ist
  _nur das Modul_** (inkl. Systemprofil, ohne Wechselrichter/Verkabelung/Montage/Elektroanschluss).
  Der **installierte** BIPV-Systempreis liegt erfahrungsgemäss beim **~1.6–2.5-fachen** des
  Modulpreises → grob **~3'000–4'500 CHF/kWp installiert** für dachintegriert/Fassade — deutlich
  über Standard-Aufdach (Typ E ~2'255), aber unter der kleinteiligen Solarziegel-Lösung
  (Typ A/B-Tile ~7'370, Reckholdern). Merksatz: **je kleinteiliger/integrierter/vertikaler, desto
  teurer pro kWp.** Exakten Systempreis nur über Installateur-Offerte, nie den Modulpreis als
  Systempreis zitieren.

### Detail-Lehre Flachdach V-Anordnung (ewzWHH, ewz/Meili Peter Partner/IBG, 13.02.2019)
- **Belegungsdichte ↔ spez. Ertrag** ist ein Zielkonflikt: maximale Belegung senkt kWh/kWp
  (Verschattung Brüstung/Lüftung) — weniger dicht belegt erreicht ~850 kWh/kWp.
- **Wirtschaftlichkeit:** Amortisation 31 J «nicht mehr wirtschaftlich», ohne Förderfaktor ~19 J;
  **techn. Lebensdauer PV 25–30 J** → Amortisation muss klar darunter liegen. Simulation PVSOL.
- **Entwässerung V-Tiefpunkt:** Wasser sammelt sich aufs Substrat → Pflanzenwuchs/Pflege;
  ewz-Empfehlung **50 cm Kiesstreifen statt Substrat** unter dem V-Tiefpunkt.

> **Dimensionierungs-Anker (Eigenstrom-Pflicht Neubau ZH):** die **mindestens** nötige PV-Leistung
> ist **EBF × 10 W/m² (max. 30 kW)**; Flächenbedarf **8 m²/kW** (mono/polykristallin) bzw.
> **16 m²/kW** (Dünnschicht) — Quelle Formular EN-104, Detail in
> `[[energie-energienachweis-zh-formulare]]`.
>
> ⚠ **Flächenkonkurrenz Haustechnik ↔ PV-Pflichtfläche (Wissens-Chef Run 18, 27.07.2026).** Nicht
> davon ausgehen, dass die von Rückkühlern, Lüftungszentralen oder anderer Dachtechnik belegte
> Fläche automatisch von der Pflichtfläche abgezogen werden darf: die kantonalen Vollzugshilfen
> rechnen die **Bruttodachfläche inklusive** kleiner technischer Auf- und Einbauten; ein Abzug
> braucht ein **begründetes Einzelfallgesuch** — und im Kanton Aargau ist «technisch nicht möglich»
> ausdrücklich **kein** Befreiungsgrund. Fachlich führend die KB `energie`:
> `wissen/energie/destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md`. Vor jeder
> Umrechnung die **Bezugsgrösse** prüfen — aGF, Bruttodachfläche und W/m² EBF sind verschiedene
> Modelle und nicht ineinander umrechenbar (der Anker oben ist das ZH-Eigenstrommodell).

## 4 — Wartungszugang Flachdach-PV: Dachausstiege (K29/Run 31, 2026-07-13)

Bisher nicht erschlossener Ordner `Solaranlage/Dachausstiege` (6 Produktfotos, 11/2024) zeigt
einen Planungsaspekt, der bei Flachdach-PV (Typ E) regelmässig vergessen wird: der **dauerhafte
Wartungszugang zum Dach**. Reale Referenzbilder zeigen freistehende **Dachausstiegs-Boxen**
(isoliertes Gehäuse auf Aufkantung/Kies-Bett, Gasdruckfeder-Deckel, Innenleiter) mit
**Fallschutz-Geländer** ringsum montiert, **direkt neben** (nicht unter) dem PV-Modulfeld
positioniert — so bleibt der Ausstieg jederzeit zugänglich, ohne dass Servicepersonal über die
Module steigen muss. Praxis-Punkte für die Planung:

- Position **seitlich/ausserhalb** der PV-Belegungsfläche einplanen, nicht unter Modulreihen.
- **Fallschutz-Geländer** um den offenen Ausstieg als eigenes Bauteil im Werkplan/LV
  berücksichtigen (Absturzsicherung, analog `[[recht-norm-arbeitshilfen-planungsdetails]]` §3
  Absturzsicherungen — dort Gebäude-Attika, hier ein Einzelbauteil auf der Dachfläche).
- Steht i.d.R. auf einer eigenen Aufkantung im Kies-/Attika-Bereich, unabhängig vom
  Gründach-/Substrat-Aufbau.

Kein Hersteller/Normverweis in den Quellbildern identifizierbar (reine Referenzfotos ohne
Beschriftung) — Status `speculative`/Praxishinweis, keine belegte Norm-Anforderung. Ergänzt die
Ausführungsplanung von Flachdach-PV-Anlagen (Typ E), die bisher nur Ertrag/Belegungsdichte
(§«Detail-Lehre Flachdach V-Anordnung») abdeckte.

## 5 — Architektonische Integration: Praxisbeispiele (TEC21-Dossier «SolaRes Bauen», E35/Run 40)

Bisher deckt dieser Artikel PV **technisch/wirtschaftlich** ab (Typenwahl, Flächenleistung,
Ertrag, Kosten) — der bisher unerschlossene Ordner `Solaranlage/_Literatur/` enthält mit dem
**TEC21 | TRACÉS | archi Dossier 5/2012 "SolaRes Bauen"** (25 S., Fachzeitschrift, 3 Sprachen)
eine **gestalterische** Ergänzung: reale Architekturbeispiele, in denen Solartechnik zum
gestaltprаegenden Bauteil wird statt nachträglich aufmontiert zu werden — direkt relevant für
JANS als entwerfendes Büro (nicht nur als Nachweis-/Kostenthema).

**Leitprinzip (Interview Beat Kämpfen, Zürcher Solararchitekt, kämpfen für architektur ag):**
«Jedes Bauelement muss mindestens zwei Funktionen erfüllen.» — Kämpfens Haltung: eine
pragmatische, bescheidene Architektur, die tägliche Bedürfnisse befriedigt, **UND** dabei
Energieeffizienz/Nachhaltigkeit nicht als plakatives Zusatzelement, sondern als selbstverständliche
Randbedingung behandelt. Konkret umgesetzt am Referenzprojekt auf dem Dossier-Titelbild:

- **Plusenergiehaus Zürich Höngg** (2011, Bauherrschaft Silvio/Esther Ponti, Architektur kämpfen
  für architektur ag, Minergie-P-ECO zertifiziert): **Vakuumröhrenkollektoren an der
  Südwest-Fassade** (25 m² Solarthermie) übernehmen gleichzeitig **drei** Funktionen —
  Sichtschutz, Verschattung UND Absturzsicherung der Balkone (statt separates Geländer) — und
  liefern zusammen mit einer Erdsonden-Wärmepumpe die gesamte Heizenergie. **PV-Dach** (74 Module
  3S-Black-Laminat à 235 W ≈ 17.4 kWp) deckt den Gebäudetechnik-Energieverbrauch UND zwei Drittel
  des Haushaltsstroms. Rechnerisch: Gesamtenergieverbrauch (Gebäude 9'031 + Betrieb 9'000 =
  **18'031 kWh/a**) nahezu deckungsgleich mit der Eigenenergieproduktion (Solarthermie 8'694 +
  PV 14'918 = **23'612 kWh/a**, netto plus) — belegtes **Plusenergiehaus** über effektiv
  gemessene/berechnete Werte, nicht nur Label-Anspruch.
- **Umwelt Arena Spreitenbach** (Gewerbe-/Ausstellungsbau, Architektur René Schmid Architekten):
  **5'500 Photovoltaikmodule** (davon **1'000 in Sonderformen gefertigt**) decken die komplette
  schiefwinklig gefaltete Dachfläche bis zur fast bodennahen Traufe — bewusst **auch die nördliche
  und östliche Flanke** eingedeckt, obwohl der Tageslauf der Sonne nicht das primäre
  Gestaltungskriterium war; die Neigungswinkel wurden am Computer so lange simuliert, bis auch die
  Nordost-Flanken einen Strombeitrag lieferten. Ergebnis: Gesamt-Eigenenergieproduktion
  **560'150 kWh/a** gegen einen Gesamtenergiebedarf von **404'941 kWh/a** — Plusenergiebau mit
  deutlicher Reserve, das Solardach ist zugleich das identitätsstiftende Gestaltungselement
  ("Stromlinienform") des gesamten Baus.

**Planerische Lehre für JANS-Studien:** Solarflächen (Dach **und** Fassade) sind nicht per se ein
technisches Anhängsel, sondern können als **mehrfunktionales Bauteil** eingeplant werden — an
Fassaden z.B. gleichzeitig Absturzsicherung/Sichtschutz/Verschattung (spart ein separates
Geländer-/Storen-Gewerk), am Dach als identitätsstiftende Grossform. Das schärft die
Typenwahl-Logik in §1 (D Fassade/A-B Dach) um eine gestalterische Dimension, die rein technische
Wp/m²-Tabellen nicht abbilden.

### 5b — Weitere Referenzprojekte aus demselben Dossier (Run 65, 2026-07-25, Token-Vollgas)

Das vollständige 25-seitige Dossier (bisher nur teilweise ausgewertet, §5 oben) enthält acht
weitere real dokumentierte Bauten mit vollständigen Energiekennwerten — eine Kurzübersicht nach
architektonischer Integrationsstrategie, als Design-Referenzkatalog für Studien-Präsentationen:

- **Swiss Tech Convention Center, EPFL Ecublens VD** (Richter · Dahl Rocha & Associés,
  2011-2014): erste grossmasstäbliche Anwendung **transluzenter, farbiger Grätzel-Zellen**
  (Farbstoffsolarzellen) an einer Glasfassade — Wirkungsgrad niedriger als kristalline Module,
  dafür Doppelfunktion als Sonnenschutz/Ueberhitzungsschutz UND Stromproduktion. Zusätzlich
  opake PV-Dachfläche (400 m²) für Warmwasser-Vorwärmung. Zeigt eine vierte PV-Kategorie neben
  den bereits in §1 geführten Typen A-E: **transluzente Farbstoffzellen als Fassadenglas-Ersatz**.
- **Palazzo deltaZero, Lugano-Paradiso TI** (deAngelis-Mazza architetti, 2008): Gegenbeispiel zur
  «sichtbaren» Umwelt-Arena-Strategie — **unauffällige, rein glaserne Fassade** (Glas-Glas-Module
  in den vertikalen Achsen kaum erkennbar), PV nur auf dem flachen Dach (160.7 m², monokristallin)
  plus eine **opake Solarthermie-Südfassade** (71.9 m², hoher Absorptionsgrad, kombiniert mit 6
  Erdsonden 130 m tief) für Heizung/Warmwasser. Deckt den gesamten Energiebedarf (~25'000 kWh/a)
  über die PV-Anlage — «Differenzial-Null»-Konzept, Minergie-zertifiziert. Lehre: Solarintegration
  muss architektonisch nicht sichtbar sein, um wirtschaftlich/energetisch zu funktionieren.
- **Wohnhochhäuser Sihlweid, Zürich Leimbach** (Harder Haas Partner AG, Sanierung 2012-2013,
  Bestand 1976/1978, 60 m/17-19 Geschosse, 167 Wohnungen bewohnt saniert): PV-Fassade mit
  **amorphen Dünnschichtmodulen an allen vier Himmelsrichtungen** (nicht nur Süd) — Nordfassade
  liefert dank Dünnschicht-Eignung für schwache/diffuse Einstrahlung noch 13 % des
  Fassadenertrags. Deckt rund 30 % des Strombedarfs von 167 Wohnungen. Heizwärmebedarf nach
  Sanierung um 83 % gesenkt bei gleichzeitig +16 % Nettowohnfläche (Balkone von den Ecken in die
  Fassadenmitte verschoben → grosszügigere Küchen). Reales Beispiel für PV-Sanierung im
  bewohnten Zustand ohne vollständige Entmietung.
- **Mehrfamilienhaus Romanshorn TG** (Viridén + Partner AG, Umbau 2012, Bestand 1962): **erster
  Umbau eines Mehrfamilienhauses zum Plusenergiehaus in der Schweiz** — Südwest-/Südost-Fassade
  vollständig mit PV verkleidet, Modulgrösse/Fugenbreiten an die Bestandsfensterraster angepasst
  (keine sichtbare Zäsur Alt/Neu). Jährlicher Stromüberschuss ca. 6'000 kWh, den Mietern nicht
  verrechnet. 200'000 CHF Fördergelder Kt. Thurgau, Investition 7.3 Mio. CHF.
- **CeRN Bursins VD** (atelier niv-o sa/Ivo Frei, 2004-2007, Autobahn-Unterhaltszentrum A1):
  **unverglaste schwarze thermische Kollektoren als Südfassade** (576 m²) fügen sich ins
  Landschaftsbild ein; kombiniert mit PV-Dach (191 m²) und einer Holzfeuerung mit
  Autobahnunterhalts-Schnittgut. Deckt 40 % des Wärmebedarfs solar/passiv. Erstes Westschweizer
  Projekt mit Nachhaltigkeit als Vergabekriterium (1999), CO2-neutral über 40-jährigen
  Lebenszyklus gerechnet, Rückbaumaterial der Vorgängerbauten als Recyclingbeton/-asphalt
  wiederverwendet.
- **Kunstdepot Freiburg i.Br. (D)** (Pfeifer Kuhn Architekten, 2010-2012): PV-Dach deckt den
  Primärenergiebedarf des Depots **und** produziert ~20 % Überschuss (Passivhausstandard-Hülle,
  massiver Stahlbeton-/Kalksandsteinkern für klimastabile Lagerung lichtempfindlicher Kunstwerke).
- **3M Italia Headquarters, Pioltello (I)** (Mario Cucinella Architects, 2008-2010): 105 m langer
  Bürobau mit integrierten PV-Dachpaneelen, Kühldecken-Klimatisierung und Regenwasser-Recycling;
  brise-soleil-Fassade zur solaren Kontrolle.
- **Zwei Plusenergie-Mehrfamilienhäuser, Flims GR** (Andrea Rüedi, 2011): grossflächige
  Solar-Dreifachverglasung an der Südfassade nutzt Wärme direkt UND speichert sie in Holz-Beton-
  Verbunddecken (atmende Materialien, kein zusätzlicher Speicher nötig).

Status **established** für die belegten Kennzahlen (Fachzeitschriften-Primärdaten je Projekt),
Datenstand 2012 (Dossier-Jahrgang) — bei Zitat als historisches Referenzbeispiel kennzeichnen,
analog zum Status-Vermerk am Ende von §5.

Status `emerging` (Fachzeitschriften-Publikation mit Primärdaten je Projekt, aber keine
JANS-eigene Verifikation der Kennzahlen; Datenstand 2012 — bei Zitat der Modul-/Ertragszahlen als
historisches Beispiel kennzeichnen, Flächenleistung selbst hat sich seither deutlich erhöht,
vgl. §1b). **Run 49 (2026-07-15):** GreenPV-Foliensatz S. 1-29 (von 46) ausgewertet → NEU §6
(orientierungsabhängiger Fassaden-PV-Ertrag/-Amortisation Süd/Ost/West/Nord, belegte
Referenzgebäude-Dämmstandards, opak/transparent-Modulkennwerte, Ausblick PV+Begrünungs-
Kombination). **Run 50 (2026-07-16) GELÖST:** die im Workshop-2-Foliensatz noch offene
Restauswertung (S. 30-46) UND der damals nur vermutete Schlussbericht sind überholt — das Projekt
wurde per Web-Recherche als längst **abgeschlossen** identifiziert (Publikation der öffentlichen
Schlussbroschüre 27.08.2024) und volltext ausgewertet → §6 unten vollständig auf die finale
Fassung aktualisiert.

## 6 — Fassaden-PV: Orientierungsabhängiger Ertrag & Amortisation (GreenPV-Studie HSLU, E39/Run 49+50)

**Quelle:** HSLU T&A / IGE + IBI, Forschungsprojekt "GreenPV — Potential Gebäudehülle:
Lösungsansätze zur optimalen Fassadengestaltung mit PV und Begrünungen im Hinblick auf den
Klimawandel", Workshop 2 (15.06.2022), Foliensatz `20220606_GreenPV - Workshop 2.pdf` (46 S.,
`PL - 04 Energie/Solaranlage/_Literatur/`) — bisher als Backlog vermerkt (§Datenstand Run 40),
jetzt S. 1-29 ausgewertet. Trägerschaft: BFE-Forschungsprogramm "Gebäude und Städte" +
Stadt Zürich (Amt für Hochbauten/Grün Stadt Zürich) + Kt. Basel-Stadt + Steiner Lab
Foundation; PV-Branche (3S Solar Plus/Sunage/Ges Gebäude-Energiesysteme) und Fassadenplaner
(Lüchinger+Meyer, gkp Fassadentechnik) im Netzwerk vertreten — belastbare Praxisquelle, kein
Marketingdokument.

**Referenzgebäude-Standard** (für die Simulationen, Stadt Zürich inkl. Hitzeinseleffekt,
Nachbarbebauung mit 45°-Verschattungsregel): "Wohnen Altbau" (Baujahr-Analog 1988,
U-Wert opake Bauteile 0.40 W/m²K, Fenster Ug 1.0/Uw 1.15 W/m²K, Fensteranteil 25 %,
≤4 Geschosse) vs. "Wohnen Neubau" (SIA-180/1-Neubau-Dämmwert 0.17 W/m²K, Fenster Ug 0.7/
Uw 0.85 W/m²K, Fensteranteil 50 %, bis 8 Geschosse) — als Delta-Referenz brauchbar, wenn ein
JANS-Umbau/Neubau grob gegen "Altbau-" oder "Neubau-Dämmstandard" eingeordnet werden soll.

**Orientierungsabhängige Fassadenstrahlung/-ertrag** (Referenz: Südgeneigtes Dach 5°,
Zürich, = 100 %; Wertebereich = 4 Fassadenhöhen-Zonen, oberste bis unterste Geschossreihe):

| Orientierung | Jahresstrahlung (% Dach / kWh/m²a) | Stromertrag opakes Modul 20 % Wirkungsgrad (% Dach / kWh/m²a) | Amortisation graue Energie (Jahre) | Amortisation THG-Emissionen (Jahre) | Amortisation UBP (Jahre) | Max. Fassadentemperatur (°C, medianes Jahr) |
|---|---|---|---|---|---|---|
| **Süd** | 84 % / 865 | 86 % / 155 | 2.3 (Band 2.3-4.2) | 10.5 (Band 10.5-19.3) | 6.1 (Band 6.1-11.1) | 49.8 |
| **Ost** | 70 % / 729 | 76 % / 138 | 2.6 (Band 2.6-4.5) | 11.8 (Band 11.8-20.8) | 6.8 (Band 6.8-12.0) | **50.4** |
| **West** | 57 % / 595 | 59 % / 107 | 3.3 (Band 3.3-5.5) | 15.2 (Band 15.2-25.3) | 8.8 (Band 8.8-14.6) | **52.9 (Maximum)** |
| **Nord** | 35 % / 365 | 37 % / 67 | 5.3 (Band 5.3-9.2) | 24.4 (Band 24.4-41.9) | 14.1 (Band 14.1-24.2) | 37.7 (Minimum) |

Referenzwerte Suddach 5°: Strahlung 1'036 kWh/m²a, Stromertrag 180 kWh/m²a, Amortisation
graue Energie 2 Jahre / THG 9 Jahre / UBP 5.2 Jahre (Systemgrenze PV-Modul selbst, ohne
ersetzte Bauteile gegengerechnet). Jede Fassade zeigt zusätzlich ein **Höhengefälle**
(oberste Geschossreihe am günstigsten, unterste am ungünstigsten — Verschattung durch die
Nachbarbebauung gemäss 45°-Regel), Bandbreite in der Tabelle als Min-Max ausgewiesen.

**Modul-Kennwerte** (für die Simulation angenommen, Herstellerangaben-Niveau 2022): opakes
Modul Wirkungsgrad 20 %, transparentes Modul Wirkungsgrad 14 % bei 30 % Lichtdurchlässigkeit
(Doppelnutzen Energie + Tageslicht/Verschattung), beide NOCT 42±2 °C, Temperaturkoeffizient
Pmpp -0.4 %/°C — Ergänzung zu §1b (Flächenleistung Wp/m² je System).

**Einordnung für JANS:**
- Eine **Fassaden-PV-Anlage rechnet sich energetisch/ökologisch IMMER langsamer als eine
  Dachanlage** (Faktor 1.2-2.7× je nach Orientierung/Indikator) — bei der Typenwahl (§1) ist das
  ein reales Gegenargument zur reinen Flächenmaximierung, besonders bei Nordfassaden (Faktor
  ~2.7× bei THG/UBP) — dort ist eine energetische Nutzung kaum zu rechtfertigen, eher als
  gestalterisches/Verschattungselement prüfen.
- **West schlägt Ost bei der Amortisation nicht, obwohl beide vergleichbare Strahlung haben**:
  West hat die höchste Fassadentemperatur (52.9 °C, Nachmittagssonne + thermische Trägheit
  des Gebäudes) — das beeinflusst zwar hier primär die Amortisationsrechnung nicht direkt
  (Temperaturkoeffizient ist symmetrisch), ist aber ein Warnsignal für Modul-Degradation und
  Wartungsintervalle bei Westfassaden.
- **Kombination PV + Fassadenbegrünung** ist der eigentliche Fokus der GreenPV-Studie
  (Bewertungsraster über Mensch/Gebäude/Stadt&Umwelt: thermisches Wohlbefinden,
  Tageslichtversorgung, Mikroklima/Wärmeinseleffekt, Biodiversität, Luftqualität,
  Attraktivität Aussenraum) — Fassadenbegrünungssysteme (bodengebunden mit Kletterpflanzen,
  Wuchshöhe 15-30 m, Substrattiefe 50-60 cm; ODER wandgebunden modular, max. 30 kg/m²
  wassergesättigt, Wuchshöhe nur 20 cm, immergrün) können mit PV kombiniert werden, wenn
  die Fassade in Zonen aufgeteilt wird (PV wo Ertrag hoch/Süd-Ost, Begrünung wo Ertrag tief/
  Nord). Die Studie selbst war zum Auswertungszeitpunkt (Workshop 2 von geplant 3) noch nicht
  abgeschlossen — quantitative Kombinationsempfehlungen (Katalog/Handlungsempfehlungen)
  standen laut Agenda erst für Workshop 3 an; hier nur die **Referenzdaten**, keine
  abschliessende Empfehlung.

### 6b — Schlussbroschüre GreenPV (HSLU, 27.08.2024) — Run 50, 2026-07-16

**Quelle:** HSLU Institut für Gebäudetechnik und Energie IGE, Broschüre «GreenPV —
Lösungsansätze zur optimalen Fassadengestaltung mit Photovoltaik und Begrünung im Hinblick
auf den Klimawandel» (`502400-greenpv-broschuere-20240827-web.pdf`, hslu.ch, 92 Druckseiten/
47 PDF-Seiten, Autoren Büttner/Domingo Irigoyen/Keiser/Settembrini/Sotnikov/Arnold, Trägerschaft
BFE + Stadt Zürich Amt für Hochbauten + Stadt St. Gallen + Steiner Lab Foundation + ingold +
EPRO Engineering). Das Projekt (Start 12/2021, It. Zeitplan im Workshop-2-Foliensatz bis 12/2022
budgetiert) ist damit **abgeschlossen und öffentlich publiziert** — die in Run 49 offen geführte
Frage nach einem Schlussbericht ist beantwortet, Status neu **established**.

**Take-Home Messages (wortgetreu übernommen, S. 3):**
- PV-Fassaden **heizen sich stärker auf** als die Referenzfassade, dies beeinflusst die PET
  (gefühlte Temperatur) in der Umgebung aber **nicht negativ** (teils sogar leicht positiv) —
  wegen der geringen solaren Ruckstrahlung (tiefe Albedo) und der Stromwandlung.
- Eine unverschattete, nach Süden ausgerichtete PV-Fassadenanlage produziert **im Jahr rund
  20 % weniger Strom** als eine Dachanlage (5° südorientiert), erzeugt aber **im Winter 43 %
  mehr Strom** als die Dachanlage — bestätigt/präzisiert quantitativ die bereits in §6
  dokumentierte Grundaussage "Winterstromproduktion Fassade > Dach".
  > **⚠ Divergenz zu §6 (Wissens-Chef Run 6, 16.07.2026):** Die Winter-Aussage bestätigt §6, der
  > **Jahres**-Minderertrag nicht: die §6-Tabelle (Workshop-2-Foliensatz 2022) führt für Süd
  > **86 % von 180 kWh/m²a = −14 %**, diese Schlussbroschüre **−20 %**. **Massgebend ist die
  > finale Schlussbroschüre vom 27.08.2024 (−20 %)**; der 2022er-Zwischenstand in §6 ist insoweit
  > überholt. Für Berechnungen den −20 %-Wert verwenden. (§6-Tabellenwert bewusst stehen
  > gelassen — Bereinigung wäre Umstrukturierung, nicht autonom.)
- Fassadenbegrünungen rentieren sich **für private Investoren ökonomisch nicht**, aber die
  Allgemeinheit profitiert von den qualitativen Vorteilen (Hitzeminderung, Biodiversität,
  Luftqualität, Lärmreduktion, Regenwasserretention, Attraktivität).
- Eine **gezielte Kombination von Begrünung + PV an der Fassade** senkt mit geringfügigem
  Lebenszykluskosten-Mehraufwand (ca. **9 %** ggü. Referenzfassade) die THGE **um mehr als
  einen Viertel** und reduziert zusätzlich den städtischen Wärmeinseleffekt.

**8 Empfehlungen zur Systemwahl** (S. 6-9, Planungs-Checkliste vor der Gestaltung):
1. **Standort als zentraler Faktor** — Exposition/Verschattung/Lärm/Klima/vorhandene
   Grünflächen erst analysieren, dann Fassadensystem wählen; bei Neubau objektspezifisch
   optimieren, bei Sanierung auf vorhandenes Flächenpotential fokussieren.
2. **Fachleute frühzeitig einbeziehen** (Effizienz/Brandschutz/Unterhalt/Statik/Denkmalschutz),
   auch für Kostenplanung/Wirtschaftlichkeit.
3. **Projektziele klar definieren** (Winterstrom/Gesamtbilanz/Eigenverbrauch bei PV;
   Gesellschaft/Wirtschaft/Umwelt-Mehrwert bei Begrünung), inkl. Abwägung Dach vs. Fassade
   vs. Umgebung.
4. **Geschoss- und fassadenspezifische Planung** — PV primär an unverschatteten Flächen;
   Begrünung schafft den grössten Mehrwert **näher am Menschen** (untere Geschosse, ≤ 4.5 m
   Höhe für Luftqualitäts-Wirkung).
5. **Low-Tech vor High-Tech** — bodengebundene Begrünung/einfache PV-Standardmodule sind i.d.R.
   ökonomisch und ökologisch im Vorteil; High-Tech (Automatisierung/Speicher) nur gezielt
   für Optimierung des Gesamtsystems.
6. **Begrünungen: Potential steigern** über Pflanzen-/Substratwahl (hohes Grünvolumen,
   standortgerechte/einheimische Arten, hohe Pflanzendichte).
7. **PV-Module sinnvoll einsetzen** — Orientierung (Süd > Ost/West), Verschattung vermeiden,
   Nutzungszeiten/künftige Entwicklungen (E-Mobilität, Wärmepumpe) mitdenken.
8. **Kombination der Systeme** — Synergien nutzen (Begrünungs-Verdunstungskühlung steigert
   PV-Effizienz), gestalterische Vorteile für Gebäude/Stadtraum.

**Vorteile Begrünung** (S. 14f.): Lärmreduktion (hoher Schallabsorptionsgrad), Förderung
Biodiversität, Regenwassermanagement (Retention entlastet Kanalnetz), Kühlung durch
Verdunstung (mindert städtischen Wärmeinseleffekt), Verbesserung Luftqualität (Feinstaub/NOx/
SO2-Bindung, CO2/O2), Steigerung Aufenthaltsqualität, sommerlicher Wärmeschutz (natürlicher
Sonnenschutz, winters Blattverlust lässt solare Gewinne zu), langfristiger ökonomischer
Vorteil (bessere Vermietbarkeit/Mietverhältnisse).

**Vorteile PV** (S. 30f.): hohe Eigenverbrauchsquote (Preis-Unabhängigkeit), kein zusätzlicher
Flächenbedarf, Stromproduktion ohne Lärm/Abgase (auch in Siedlungsgebieten einsetzbar),
wartungsarm (nur Wechselrichter ~alle 15 Jahre), langfristig ökonomisch (Amortisation über
Eigenverbrauch + Einspeisevergütung), positive Ökobilanz + Recyclingpotential (**>75 %**
wiederverwertbar, vRG-Rückgabe gesichert), architektonisches Gestaltungsmittel (Farben/
Texturen/Muster/Transparenzgrade). **Ziel Energieperspektiven 2050+ (BFE):** installierte
PV-Leistung in den nächsten 30 Jahren um **Faktor 13** steigern.

**Systemvergleich (+/-), Kurzfassung:**
- **Begrünte Dächer:** + geringer Platzbedarf, kein Bodenanschluss nötig, zusätzliche
  Dämmwirkung; − höhere Investitionskosten als Standarddach, zusätzliche Auflast kann
  statische Verstärkung erfordern (graue CO2-Emissionen).
- **Fassadenbegrünungen:** + kein Bodenanschluss (wandgebunden), architektonisches Element;
  − insbesondere wandgebunden hohe Investitions-/Pflegekosten, hoher Wasser-/Nährstoffbedarf.
- **PV-Dach:** + höhere jährliche Stromproduktion, einfacher Zugang, geringere Kosten/höhere
  Effizienz bei Standardmodulen; − Flächenkonkurrenz mit Aufenthalts-/Technikflächen,
  Hagelrisiko, stärkere Verschmutzung (horizontal).
- **PV-Fassade:** + Winterstromproduktion ohne Verschattung > Dachanlage, bleibt vertikal
  schneefrei, bisher ungenutztes Flächenpotential; − geringeres Jahresertragspotential,
  i.d.R. höhere Investitionskosten, erschwerte Zugänglichkeit für Unterhalt bei hohen
  Fassaden, **fehlende standardisierte Brandschutzanforderungen bei Hochhäusern**.

> **Querbezug KB normen (VKF-Wortlaut — dort führend):** Die nachstehende Höhen-/RF-Staffel gibt
> den GreenPV-Broschüren-Text wieder. Der **amtliche VKF-Quelltext** liegt destilliert in der KB
> `normen` und ist gemäss Rule `normen-referenz` **führend** — von dort ziehen statt hier
> fortzuschreiben: Höhen-Definitionen (geringe Höhe ≤ 11 m / mittlere Höhe ≤ 30 m / Hochhaus
> > 30 m) in `wissen/normen/destillate/vkf-brandschutznorm-2015` bzw.
> `…/vkf-brl-10-15-begriffe-definitionen`; **RF-Staffel Aussenwandbekleidung** (Hochhaus RF1,
> Brandausbreitung max. 2 Geschosse über Brandgeschoss) in `…/vkf-brl-verwendung-baustoffe`
> (Ziff. 3.2.8); Solar-spezifisch `…/vkf-merkblatt-2001-15-solaranlagen`.
> **Achtung:** Die Höhen-Staffel steht **nicht** im Solaranlagen-Merkblatt — nicht dorthin
> verlinken. Fach-Detail Brandschutz Solar führt ohnehin `[[energie-pv-brandschutz]]` (siehe
> Arbeitsteilung im Artikelkopf); dieser §6b sollte mittelfristig auf das Planungs-Framing
> gekürzt werden (**offener Trim**, nicht autonom). Gesetzt: Wissens-Chef Run 6, 16.07.2026.

**Brandschutz (S. 12f., 24f., 36f.):** VKF-Merkblätter (bsvonline.ch) für Solaranlagen UND
Gebäudebegrünungen bilden die Grundlage; Anforderungen steigen mit der Gebäudehöhe:
**geringe Höhe** (bis 11 m, Baustoffe RF3 zulässig, keine Einschränkungen bei PV) —
**mittlere Höhe** (bis 30 m, RF2, Brand auf max. 2 Geschosse über dem Brandherd zu
beschränken, Fassade feuerwehrzugänglich) — **Hochhaus** (>30 m, RF1, individuelles
Brandschutzkonzept mit Brandschutzbehörde abzusprechen, da PV-Fassaden **keiner Standard-
konzept-Kategorie** zugeordnet werden können). Für PV an Fassaden gilt bis 31.12.2024 das
Übergangsdokument «Brandschutz für hinterlüftete Photovoltaikanlagen an Fassaden»
(Swissolar 2023) als Leitfaden, da noch kein Stand-der-Technik-Papier existiert.

**Reales Fallbeispiel PV-Fassade — Sanierung Hochhaus Holenackerstrasse 65, Bern** (Baujahr
1979-1986, Sanierung 2022-2023, Bauherrschaft FAMBAU Genossenschaft): PV-Typ AVANCIS SKALA
135 W (rahmenloses Glas-Glas-Modul), 3 Modulfelder à 162 Module an Südwest-/Südost-Fassade
(Nordfassade ohne Modulfelder mangels Einstrahlung), **Investitionskosten CHF 1.1 Mio ≈
CHF 1'400/m²**. Acht mit der Brandschutzbehörde vereinbarte Schutzziele (Art. 8 Brandschutz-
norm) inkl. Segmentierung nach jedem 2. Geschoss, Fassadenwände ≥ EI 60-RF1, halogenfreie
Kabel Klasse a2 in nicht brennbaren Kabelkanälen — direkt übertragbares Muster für JANS-
PV-Fassaden-Devisierungen an Bestandsbauten.

**Reales Fallbeispiel Fassadenbegrünung — Hauptsitz Sky-Frame, Frauenfeld** (Neubau
Headquarter 2012-2014): Trogsystem ohne Kletterhilfe (vorgefertigte Stahlbecken auf
Tragkonstruktion, «brise soleil»), Südfassade über 3 Stockwerke, 13 bepflanzte Tablare,
64 m × 17 m ≈ **1'100 m² begrünte Fläche**. **Kosten Bepflanzung inkl. Substrat CHF 450'000,
Unterhalt CHF 10-20/m²·a**; Wasserbedarf Vegetationsphase ca. 25-30 l/m²; 2 Pflegedurchgänge/
Jahr à 2 Tage/3-4 Personen für die gesamte Fassade. Lessons-Learned: Pflege in den ersten
zwei Jahren am wichtigsten, Kontrollschächte regelmässig auf Wurzelverstopfung prüfen.

**Checkliste für die Planung** (S. 88-91): 6 SIA-112:2014-Phasen (Strategische Planung →
Vorstudien → Projektierung → Ausschreibung → Realisierung → Bewirtschaftung) mit
Handlungsempfehlungen je Phase für Grundlagen/Zielsetzung/Standort/Gebäude/
Fassadenbegrünung/PV-Fassade/Brandschutz/Umsetzung/Inbetriebnahme/Wartung/Dokumentation —
direkt als Prüfraster für eine JANS-Fassaden-PV-/Begrünungs-Devisierung nutzbar.

Status **established** (offiziell publizierte, im Auftrag von Bund + zwei Städten erstellte
Schlusspublikation einer Fachhochschule, mit Autoren-/Kontaktangaben; die Zahlen der
Take-Home-Messages/Fallbeispiele sind wortgetreu bzw. direkt aus der Quelle übernommen).
Weiterhin offen: der zitierte "technische Bericht der Studie" (detailliertere Grundlagen/
Berechnungen, in der Broschüre mehrfach als Fundstelle für Vertiefung referenziert) ist
selbst nicht aufgefunden/gelesen — nur die öffentliche Zusammenfassungs-Broschüre.

## Querbezüge
- **KB energie — GreenPV-Doppelspur (Wissens-Chef Run 6, 16.07.2026):** Dieselbe HSLU-Studie ist
  in der KB `energie` als `destillate/greenpv-fassade-pv-begruenung-hslu` geführt (Workshop-2-
  Foliensatz 15.06.2022, `emerging`). **Für die Zahlen führt derzeit dieser Artikel** (§6/§6b):
  er wertet die **Schlussbroschüre vom 27.08.2024** aus, während das energie-Destillat auf dem
  2022er-Zwischenstand steht und dort mit Aktualitäts-Flag versehen ist. Grundsätzlich ist
  Energie-Fachstoff `energie`-Sache (Führungs-Matrix) — sobald der energie-Loop die Broschüre
  re-destilliert hat, kehrt sich die Führung um und §6/§6b sind auf das Planungs-/Beschaffungs-
  Framing zu kürzen (**offener Trim**, nicht autonom).
- **VKF-Norm-Fundstellen** (Höhen-/RF-Staffel in §6b) → KB `normen`, siehe Querbezug-Block dort.
- Wirtschaftlichkeit/Rendite einer Anlage → Skill `healthcare-wirtschaftlichkeit` /
  `wirtschaftlichkeit-rechner` (Annuität, Amortisation).
- Welches Portal liefert die Dach-/Höhengeometrie → `[[kartenportale-geoportale-uebersicht]]`.
- Eigenstromerzeugungs-**Pflicht** (Neubau, MuKEn/EN-104) → `[[energie-energienachweis-zh-formulare]]`
  (EN-104-Detail: EBF × 10 W/m², max 30 kW) bzw. `[[u-werte-grenzwerte-ch]]` (KB energie).
- **Brandschutz/Naturgefahren** der Anlage (Brandmauer-Übergang, RWA-Abstand, Feuerwehr ≥30 kW,
  Hagel/Schnee SIA 261) → `[[energie-pv-brandschutz]]`.

## Datenstand / offen
⚠ Solarrechner-Kennwerte Stand 10/2022; Modulwirkungsgrade steigen → Faustwert m²/kWp periodisch
nachziehen. **D5-Fortschritt 2026-07-10 (Run 17):** die **Flächenleistung Wp/m² je Typ B/C/D ist
jetzt belegt** (§1b — PREFA Solardachplatte 146–170, SI-Saphir transparent ~120, Fassade × 0.6–0.7)
und ein **belegter Modul-Preis-Anker** (Eternit Sunskin ~1'740 CHF/kWp _Modul_, §3) ergänzt.
⚠ Datenstände der Belege: PREFA-Folder **09.2023**, SI-Saphir-Datenblatt **06/2015**, Eternit-Preis
**11/2024 (mit −20 %-Aktion)** → je >18 Mt.; Wp/m² sind stabile Konstruktions-Kennwerte, aber
**Modul-Preise vor Zitat aktuell nachschlagen** (Herstellerpreise fallen). **Weiterhin offen:** ein
belegter **installierter System-CHF/kWp** für Typ B/C/D aus einer realen JANS-Schlussabrechnung (die
CHF-Werte hier sind Modul-Liste bzw. hergeleitetes Band, keine Abrechnung). SolarApp-Werte §3 bleiben
**Vorprojekt-Schätzungen** (PVGIS) → bei realer Schlussabrechnung verifizieren.

**Run 31 (2026-07-13):** Megasol-Bifazial-Datenblatt Datenstand **10/2022** (>18 Mt., vor Zitat
Preisliste/aktuelle Modulgeneration prüfen — Wp/m²-Kennwert selbst ist konstruktionsstabil).
Dachausstiege-Praxishinweis bleibt `speculative` (keine Norm-/Herstellerquelle, reine
Referenzfotos) — bei realem Projekt mit Fallschutz-Fachplaner verifizieren.

**Run 40 (2026-07-14, Ordner-Abgleich E32–E35):** vier bisher nie erschlossene Unterordner
gefunden — (1) `solar-home.ch/Sunskin/` Planungshandbuch liefert die **Einsatzgrenzen** des
dachintegrierten Typs B (§1c: Dachneigung 10–60°, Bezugshöhe/Schneelast-Kopplung, Hinterlüftung
als Pflichtbauteil); (2) `uvek-gis.admin.ch/` Musterbericht legt die **Eignungsklassen-Skala und
Rechenannahmen** hinter sonnendach.ch offen (§2b: 5 Klassen, Wirkungsgrad 20 % seit 09/2022,
Performance Ratio 80 %, 10 Rp./kWh-Näherung); (3) `energieschweiz.ch/Diemtigen/` liefert den
**ersten installierten System-CHF/kWp-Wert** (§3: 3'190 CHF/kWp schlüsselfertig, Typ E
Kleinanlage) — die in Run 17/§Offen als fehlend vermerkte Lücke ist damit **für Typ E teilweise
geschlossen**, für Typ B/C/D (dachintegriert/transparent/Fassade) bleibt sie weiterhin offen; (4)
`_Literatur/` TEC21-Dossier ergänzt die technische Betrachtung um **gestalterische
Praxisbeispiele** (§5). Geprüft, aber **kein Delta** gefunden: `_Literatur/planer_d.pdf` ist
byte-different, aber inhaltsgleich mit dem bereits in [[energie-uebersicht]]/
[[energie-minergie-referenzprojekt-maison-climat]] genutzten `minergiewissen_planer_d_2023_web_
1-231002-143235.pdf` (identischer Titel "Besser planen, besser bauen — Optimieren mit Minergie"),
`Solaranlage/prefa.solar/PREFA_Solarfolder_CH-deutsch.pdf` ist dieselbe Datei wie die bereits in
§1b zitierte PREFA-Solarfolder-Quelle (kein zweiter Kanal), `Solaranlage/energieheld.ch/` und
`Solaranlage/sonnenverlauf.de/` enthalten je nur einen einzelnen, inhaltlich trivialen Website-
Screenshot ohne neue Kennzahl.
