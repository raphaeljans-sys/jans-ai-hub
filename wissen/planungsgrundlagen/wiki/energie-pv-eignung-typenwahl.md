---
title: PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)
status: established
last_updated: 2026-07-14
sources: [PL - 04 Energie/Solaranlage (SharePoint), EnergieSchweiz Solarrechner Usermanual (Okt 2022), SolarApp-Vorprojekte Reckholdern/Einsiedeln (09.01.2024) + MFH Basel (05.11.2022), JANS-Projekt ewzWHH PS 19.36 (Korrespondenz 02/2019), Formular EN-104 (EnDK, Juni 2019), PREFA Solarfolder CH (Stand 09.2023 V5), Datenblatt SI-Saphir M175-M180 (Stand 06/2015, DIBt Z-70.3-204), Eternit Sunskin roof GG-L 195W (solar-home.ch Webshop, Screenshot 17.11.2024), Amt fuer Umwelt und Energie Basel/jessenvollenweider (2021, Fassaden-PV Schmelzglas), uvek-gis.admin.ch, sonnenverlauf.de, Megasol Datenblatt Hochleistungsmodul M385-HC120-b BF GG U30b Art. 0322.1580 (Version 10/2022, Run 31), PL - 04 Energie/Solaranlage/Dachausstiege (6 Produktfotos, 11/2024, Run 31), Eternit Sunskin roof "Planung + Ausführung" (solar-home.ch/Sunskin, Rev. 01.2022/web, Run 40), UVEK-GIS-Bericht "Wie viel Strom oder Waerme kann mein Dach produzieren?" (uvek-gis.admin.ch/BFE, sonnendach.ch-Druckausgabe, 02.07.2023, Run 40), EnergieSchweiz-Solarrechner-Report "Schluesseldaten rund um meine Solaranlage" (energieschweiz.ch, Diemtigen, 02.07.2023, Run 40), TEC21 | TRACÉS | archi Dossier 5/2012 "SolaRes Bauen" (PL-04/Solaranlage/_Literatur, Run 40)]
links: [[energie-uebersicht]], [[energie-pv-brandschutz]], [[energie-energienachweis-zh-formulare]], [[energie-betriebsenergie-pv-wirtschaftlichkeit]], [[kartenportale-geoportale-uebersicht]], [[recht-norm-arbeitshilfen-planungsdetails]]
---

# PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)

Beschaffungs-/Entscheidungs-Artikel der Domaene Energie: **welcher PV-Typ wann** und **wie
Eignung/Ertrag belegt bestimmt wird**, bevor ein konkretes Projekt geplant wird. Bedient vom
Agent `energie-berater`. Physik/U-Werte/Heizwaermebedarf → eigene KB `wissen/energie/`
(`[[u-werte-grenzwerte-ch]]`). **Brandschutz/Naturgefahren Solar → eigener Artikel
`[[energie-pv-brandschutz]]`** (Swissolar-STP zu VKF-BSM 2001-15); Bauteil-Klassen → Skill
`brandschutz`.

## 1 — PV-Typenwahl (Entscheidungsbaum)

Die fuenf in PL-04/Solaranlage gefuehrten Bauarten (Ordner A–E) und ihr Entscheidungskriterium:

| # | Typ | Konstruktion | Waehlen wenn … | Quelle PL-04 |
|---|---|---|---|---|
| A | **Indach-PV** | dachintegriert, ersetzt die Eindeckung | Neubau/Steildach-Sanierung, gestalterischer Anspruch, Dach ohnehin neu | `Solaranlage/A Indach PV Anlage` |
| B | **Dachziegel-PV** | ziegelfoermige Solarmodule | ortsbild-/denkmalsensible Lage, Kernzone, hohe Gestaltungsauflage | `Solaranlage/B Dachziegel PV Anlagen` |
| C | **Transparente PV** | semitransparente Module (z.B. SI-Saphir M175–M180) | Terrassendach, Wintergarten, Vordach — Licht + Strom | `Datenblatt_SI-Saphir_M175-M180.pdf` |
| D | **Fassaden-PV** | vertikal, Teil der Gebaeudehuelle | Stadt/Hochbau, hoher Fassaden- bei kleinem Dachanteil, Winterertrag (steiler Winkel) | `Solaranlage/D Fassaden PV Anlage` |
| E | **Aufdach / Flachdach** | aufgestaendert (Sued- oder Ost/West-/V-Anordnung) | Flachdach, schnelle Nachruestung, max. kWp pro Flaeche | `Solaranlage/E Aufdach Flachdach PV Anlage` |

**Logik kurz:** Dach neu/Steildach + Gestaltung → A (oder B im Schutzbereich). Glasdach/lichtdurchlaessig
→ C. Wenig Dach, viel Fassade / Stadt → D. Flachdach, Ertrag maximieren → E (aufgestaendert).
Kombination D+E ist bei Hochbauten ueblich (Fassade Winter, Dach Sommer).

> ⚠ Hinweis: Die JANS-Typenordner enthalten Referenzbilder/Screenshots **plus** belegte
> Hersteller-Datenblaetter/Webshop-Belege — Typ B PREFA Solardachplatte + Eternit Sunskin roof,
> Typ C SI-Saphir Doppelglas, Typ D Fassaden-BIPV (real: AUE Basel). Die daraus gezogenen
> **Flaechenleistungen (Wp/m²)** und der **Modul-Preis-Anker** stehen belegt in §1b/§3.

## 1b — Flaechenleistung (Wp/m²) je PV-Typ (belegt, D5)

Der planerisch wichtigste Kennwert der fruehen Studie ist **nicht** primaer CHF/kWp, sondern **wieviel
kWp auf die gegebene Dach-/Fassadenflaeche passt** — also die **Flaechenleistung Wp/m² verlegte Flaeche**.
Sie unterscheidet die Typen staerker als der spez. Ertrag und ist ueber Hersteller-Datenblaetter hart belegbar:

| Typ | Produkt (Beleg) | **Wp/m² verlegt** | Flaechenbedarf | Gewicht/Besonderheit | Quelle |
|---|---|---|---|---|---|
| **A/E Standard** mono | kristallines Standardmodul | **~170–200** | ~8 m²/kW (16 m²/kW Duennschicht) | Referenzband | EN-104 (EnDK 2019) |
| **B Dachintegriert** gross | PREFA Solardachplatte gross (1400×420, 100 Wp/Stk, 1.7 Stk/m²) | **~170** (5.88 m²/kWp) | 5.88 m²/kWp | 12.6 kg/m², ab 17°, **keine Durchdringung/keine PV-Statik** | PREFA Solarfolder 09.2023 |
| **B Dachintegriert** klein | PREFA Solardachplatte klein (700×420, 43 Wp/Stk, 3.4 Stk/m²) | **~146** (6.84 m²/kWp) | 6.84 m²/kWp | 12.6 kg/m², kleinteilig (Ortsbild/Kernzone) | PREFA Solarfolder 09.2023 |
| **B Dachintegriert** (Alternative) | Eternit Sunskin roof GG-L, 195 Wp/Modul | ~150–170 (typ.) | Vollflaechen-Integration | Glas-Glas, Aura-2-Systemprofil, 25 J/80 % | solar-home.ch (17.11.2024) |
| **C Transparent** | SI-Saphir M175-M180 Doppelglas (1500×1000, 180 Wp, 40 % Lichtdurchlass) | **~120** (180 Wp / 1.5 m²) | ~8.3 m²/kWp | 30 kg/Modul, **DIBt Z-70.3-204** (Ueberkopf/Fassade), bifazial bis 210 Wp | Datenblatt SI-Saphir |
| **D Fassade** (vertikal) | BIPV strukturiertes Schmelzglas / Glas-Glas | ~100–150 brutto, **× ~0.6–0.7 Ertragsfaktor** (senkrechter Winkel) | flaechenabh. | architektonische Vollintegration | AUE Basel (jessenvollenweider 2021) |
| **A/E Standard bifazial** | Megasol M385-HC120-b BF GG U30b (Glas-Glas, n-type HiR half-cut, CH-Fabrikat) | **~211** (385 Wp / 1.822 m²) | ~4.7 m²/kWp | 23.5 kg/Modul, **bifazialer Mehrertrag +5…+35 %** je nach Untergrund-Albedo (Gras/Ziegel +5–15 %, helles Kies/Sand +15–25 %, Schnee/Eis +25–35 %), lineare Leistungsgarantie 30 J (−0.5 %/J), nicht brennbar (Glas ober-/unterseitig) | Megasol Datenblatt Art. 0322.1580, Version 10/2022 |

**Bifazial-Ergaenzung (Run 31, 2026-07-13):** ein bifaziales Glas-Glas-Modul (z.B. Megasol
M385-HC120-b) liefert an sich schon eine hoehere Flaechenleistung (**~211 Wp/m²**) als das
generische Standardmodul-Band (~170–200), UND einen **zusaetzlichen Mehrertrag von der
Rueckseite**, der stark vom Montageuntergrund abhaengt (Albedo). Planerisch relevant: bei
**Flachdach mit hellem Kies** oder **freistehender Gelaender-/Carport-Montage** (Modul haengt
frei, Rueckseite sieht reflektierendes Material) ist Bifazial ein reeller Zusatzertrag von
grob **+15–25 %**; auf dunklem Bitumen/Substrat-Gruendach kaum Mehrwert. Dieser Faktor gehoert
in die Ertragsschaetzung, sobald der Untergrund (Kies-/Substrat-Farbe) bekannt ist — nicht
pauschal ansetzen.

**Kern-Lehren fuer die Studie:**
- **Transparenz kostet Leistung:** semitransparentes Modul (Typ C, 40 % Lichtdurchlass) liefert mit
  **~120 Wp/m²** nur ~60 % der Flaechenleistung eines opaken Standardmoduls (~200 Wp/m²) — der
  Lichtdurchlass wird durch hohen Zellabstand erkauft. Fuer Pergola/Vordach/Wintergarten bewusst
  einplanen: mehr Flaeche fuer dieselbe kWp.
- **Dachintegriert (Typ B) ~146–170 Wp/m²** liegt leicht unter dem opaken Standardmodul, aber der
  **planerische Gewinn** ist statisch/konstruktiv: **keine Dachdurchdringung, keine separate
  PV-Unterkonstruktions-Statik** (PREFA), Gewicht nur **12.6 kg/m²**, ab **17° (31 %)** Dachneigung.
- **Ueberkopf/Fassaden-PV braucht die Glas-Bauzulassung:** das SI-Saphir-Modul traegt die **allgemeine
  bauaufsichtliche Zulassung DIBt Z-70.3-204** — bei Pergola/Vordach ist das Modul zugleich
  **Ueberkopfverglasung** (VSG/absturzsichernde Verglasung, Schnee-/Windlast 7200 Pa) → in der Studie
  als Bauteil der Gebaeudehuelle behandeln, nicht als reines Anbauteil.

## 1c — Planungsgrenzwerte Dachintegration Typ B (Sunskin roof, belegt, E32/Run 40)

Ergaenzend zur Flaechenleistung (§1b) liefert die Herstellerdokumentation **Eternit «Sunskin
roof — Planung + Ausführung»** (Rev. 01.2022/web, 67 S., PL-04/`Solaranlage/solar-home.ch/
Sunskin/`) die konkreten **Einsatzgrenzen** eines dachintegrierten Systems (Typ B) — Werte, die
in einer fruehen Studie oft uebersehen werden, weil sie nicht in der Flaechenleistung stecken:

- **Anwendungsbereich:** minimale Dachneigung **10°**, maximale Dachneigung **60°**; Bezugshoehe
  (SIA-Schneelastkarte) bis **2000 m ü. M.** ohne Ruecksprache, darueber Abklaerung mit dem
  technischen Service des Herstellers.
- **Schneelast-Kopplung an die Konstruktion:** die zulaessige **maximale Einsatzhoehe** je
  Modultyp (S/M/L/XS) haengt direkt von der Lattendimensionierung ab — je hoeher die
  Bezugshoehe, desto mehr Modulhalter/Zwischenlatten und desto kleiner der maximale
  Konterlattenabstand. Beispiel-Bandbreite aus der Bemessungstabelle (Normale Windexposition,
  Dachformbeiwert 0.8): Bezugshoehe ≤ 1000 m → Bemessungswert **Ed ≈ 4.4 kN/m²** (3 Modulhalter),
  Bezugshoehe ≤ 2000 m → **Ed ≈ 16.2 kN/m²** (5 Modulhalter, verstaerkte Konterlattung
  50×45/60×45 mm) — die statische Reserve eines Indach-Systems ist **kein pauschaler Wert**,
  sondern muss ueber die Bezugshoehe der Parzelle (SIA-Schneelastkarte, Postleitzahl-Tool
  `eternit.ch/Tools/Bezugshoehe`) hergeleitet werden.
- **Hinterlueftung als Pflichtbauteil:** freier Querschnitt der Be-/Entlueftungsoeffnungen
  mindestens die Haelfte des Durchlueftungsquerschnitts, gleichmaessig ueber Trauf- und
  Firstlaenge verteilt; **minimale Hoehe des Durchlueftungsraums nach Norm SIA 60 mm**, je nach
  Sparrenlaenge/Dachneigung/Bezugshoehe auf bis zu 140 mm ansteigend (Tabelle S. 13). Bei
  Dachdurchdringungen (Dachfenster) muss der unterbrochene Durchlueftungsraum konstruktiv
  umgeleitet werden.
- **Materialkonflikt Dachschiefer/Naturgrau:** die Kombination von Sunskin-roof mit
  unbeschichtetem naturgrauen Faserzement-Dachschiefer kann durch Ausbluehungen/Patina zu
  **erheblichen Ertragseinbussen** fuehren — Herstellerempfehlung: darauf verzichten.
- **Konstruktive Konsequenz fuer Attika/Absturz:** bei bis zur Traufe montierten Modulen ist dem
  Abrutschen von Schnee (Personenschutz) konstruktiv Rechnung zu tragen — Querbezug zu den
  Absturzsicherungs-Grundsaetzen in `[[recht-norm-arbeitshilfen-planungsdetails]]` §3.

Diese Planungsgrenzwerte gelten spezifisch fuer das Sunskin-System, sind aber als **Groessenordnung
fuer dachintegrierte Systeme generell** (10–60° Dachneigungsbereich, Hinterlueftung als Pflicht,
Schneelast-Bezugshoehen-Abhaengigkeit) uebertragbar. Status: `established` (Hersteller-Fachdoku,
Datenstand 01.2022 — Rev. bei Zitat pruefen).

## 2 — Eignung & Ertrag belegt bestimmen (Werkzeuge)

Reihenfolge von grob (Portal, kostenlos) zu fein (professionelle Simulation):

| Werkzeug | Liefert | Endpunkt / Quelle | Datenstand |
|---|---|---|---|
| **sonnendach.ch** (BFE) | Eignung + grober Jahresertrag je Dachflaeche der CH | `sonnendach.ch` (geom. Basis swisstopo) | laufend (BFE) |
| **EnergieSchweiz Solarrechner** | Ertrag, Eigenverbrauch, Batterie, **Renditerechner** | `solarrechner.ch` / energieschweiz.ch | Usermanual Okt 2022 |
| **uvek-gis.admin.ch** | kartenbasierte Eignung/Ertrag, Layer | `uvek-gis.admin.ch` (Map-Viewer Bund) | laufend |
| **sonnenverlauf.de** | Sonnenstand/Verschattung ueber Jahr | `sonnenverlauf.de` | laufend |
| **PVSOL premium** | professionelle Ertrags-/Verschattungs-Simulation | Desktop (Valentin) | projektweise |

**Solarrechner-Kennwerte (Usermanual EnergieSchweiz, Okt 2022, S. 2–3):**
- Der Rechner deckt mit **4 Systemvarianten ~90 %** aller CH-Solaranlagen ab (PV mit Eigen-
  verbrauch; PV + Warmwasser/WP; PV + WW + Heizung; Solarwaerme).
- Modulflaeche↔Leistung (Beispiele S. 3): **26 m² ≈ 4.5 kWp · 39 m² ≈ 6.7 kWp · 52 m² ≈ 8.8 kWp**
  → Faustwert **≈ 5.8–6 m² pro kWp** (kristalline Module, Stand 2022).
- Annahmen Verbrauch: 2.5 kWh Strom/Person·Tag, 50 L Warmwasser/Person·Tag bei 55 °C.

## 2b — Eignungsklassen & Berechnungsmethodik sonnendach.ch/uvek-gis (belegt, E33/Run 40)

Ein realer **UVEK-GIS-Bericht** ("Wie viel Strom oder Waerme kann mein Dach produzieren?",
`uvek-gis.admin.ch/BFE/sonnendach`, Druckausgabe 02.07.2023, Standort Diemtigen) legt die
**Eignungsklassen-Skala** und die Rechenannahmen hinter dem Portal offen — bisher war nur der
Werkzeug-Name dokumentiert (§2-Tabelle), nicht die Methodik dahinter:

- **5-stufige Eignungsklasse** nach mittlerer jaehrlicher Einstrahlung (Globalstrahlung) auf die
  Dachflaeche: **Gering** < 800 kWh/m²·a · **Mittel** 800–999 · **Gut** 1000–1199 · **Sehr gut**
  1200–1399 · **Hervorragend** ≥ 1400 kWh/m²·a. Ein Dach mit 26° Neigung/156° (Suedost)-Ausrichtung
  im Beispiel erreicht 1'398 kWh/m²·a → Klasse «Sehr gut» (knapp unter «Hervorragend»).
- **Modul-Wirkungsgrad-Annahme:** das Portal rechnet seit **September 2022 mit 20 %**
  Modulwirkungsgrad (vorher 17 %) — bei Vergleich mit aelteren Berichten/Kennwerten diesen
  Versions-Sprung beachten (Ertrag um ~18 % hoeher gerechnet als vor 09/2022).
- **Performance Ratio 80 %** (System-/Verschattungs-/Temperaturverluste) wird zusaetzlich zum
  Modulwirkungsgrad angesetzt.
- **Monetarisierung:** der Stromertrag wird pauschal mit **10 Rp./kWh** verguetet gerechnet — die
  Portal-eigene Herleitung: ein Teil wird eigenverbraucht (Einsparung bis 20 Rp./kWh), der
  ueberwiegende Rest wird zu unter 10 Rp./kWh eingespeist; der Mischwert 10 Rp./kWh ist explizit
  als **grobe Naeherung** deklariert, keine reale Tarif-Zusicherung — bei Wirtschaftlichkeits-
  studien immer durch reale Einspeise-/Eigenverbrauchstarife des lokalen EVU ersetzen.
- **Solarwaerme-Modul** (thermische Nutzung, separat vom PV-Ertrag): Heizwaerme-/
  Warmwasserbedarf wird **aus dem GWR** (Gebaeude- und Wohnungsregister) geschaetzt, nicht
  gemessen — bei Gebaeuden ohne hinterlegte GWR-Verbrauchsdaten liefert das Portal **keinen**
  Solarwaerme-Ertragswert (im Beispielbericht: «keine Verbrauchsdaten bekannt» → Kollektorflaeche/
  Speichervolumen bleiben leer). Fuer eine belastbare Solarwaerme-Dimensionierung braucht es
  reale Verbrauchsdaten oder eine Fachberechnung (SIA 380/1, → §3 Detail in
  `[[energie-heizwaermebedarf-waermeerzeugerleistung]]`), das Portal ersetzt das nicht.
- **Ausdruecklicher Vorbehalt der Quelle:** das Portal ersetzt keine Fachberatung, gibt keine
  Auskunft zur Baubewilligungspflicht/-faehigkeit; Solaranlagen auf kantonal/national geschuetzten
  Kultur-/Naturdenkmaelern bedeuten **immer** eine Baubewilligungspflicht (Art. 18a RPG) —
  fuer die effektive Bewilligungsfrage bleibt der Skill `baurecht` massgebend, das Portal liefert
  nur den energetischen Groessenordnungswert.

Status `established` (amtliche Bundesstelle-Publikation, direkt gelesen). Ergaenzt die
Werkzeug-Tabelle in §2 um die dahinterliegenden Zahlen, ohne sie zu verdoppeln.

## 3 — JANS-Benchmark-Tabelle: Ertrag & Kosten je Typ (D5, kompoundierend)

Reale JANS-/PL-04-Belege fuer die **zwei Faustkennwerte** einer fruehen Studie: **spez. Ertrag
(kWh/kWp)** fuer die Strommenge und **Erstellungskosten (CHF/kWp)** fuer das Budget. Beide aus
SolarApp-Vorprojekten (PVGIS-basiert) bzw. realer ewz-Korrespondenz — vor Zitat Kontext/Jahr pruefen.

| Projekt / Ort | Jahr | Typ | Leistung | Module | **kWh/kWp** | Invest CHF | **CHF/kWp** | Quelle (PL-04) |
|---|---|---|---|---|---|---|---|---|
| **Reckholdern 20, Einsiedeln SZ** (EFH, Abbruch/Neubau) | 2024 | **A Indach** (MATCH Tile, 32 Wp Solarziegel) | 7.90 kWp | 252 | **981** | 58'198 | **≈ 7'370** | `solarapp.ch/Willerzell/2024-01-09 SolarReport` |
| **MFH Basel** (2 Dachflaechen) | 2022 | **E/Aufdach** Standardmodul | 59.93 kWp | 162 | **852** | 135'257 | **≈ 2'255** | `solarapp.ch/Basel/2022-11-05_SolarReport` |
| **ewzWHH Greencity** (PS 19.36) | 2019 | **E Flachdach**, V-Anordnung aufgestaendert | — | — | **~850** | — | **~1'600 real / 2'460 Schaetzung** | `D Fassaden PV Anlage/190213 E Vorgehen PV.pdf` |
| **Eternit Sunskin roof GG-L** (Modul-Listenpreis, netto) | 2024 | **B/D dachintegriert / Fassade** (195 Wp/Modul, inkl. Systemprofil) | — | — | — | 339/Modul | **≈ 1'740 CHF/kWp _nur Modul_** | `A Indach PV Anlage/Bildschirmfoto 2024-11-17` (solar-home.ch, Aktion −20 % bis 31.12.24) |
| **EFH Baujahr 1957** (Etappensanierung) | 2019 | **PV + Batterie 11.5 kWh + WW-WP-Boiler** (gebuendelt) | 14 kWp | — | — | 36'000 gebuendelt | **_nicht isolierbar_** (Paket 36'000, −15'000 Foerderung/Steuer → ~7 J Amortisation) | `_Betriebsenergie/` (reale Betriebskosten, → [[energie-betriebsenergie-pv-wirtschaftlichkeit]]) |
| **EFH Diemtigen** (EnergieSchweiz-Solarrechner-Musterbericht) | 2023 | **E/Aufdach** Standardmodul, 26° Neigung/−24° Ausrichtung | 6.0 kWp (32 m²) | — | **1'025** (6'148 kWh/a) | 19'140 **schluesselfertig** | **≈ 3'190 CHF/kWp installiert** | `Solaranlage/energieschweiz.ch/Diemtigen/Photovoltaik-Report_3753_1-24_26_6.0kW.pdf` |

**Neu belegt (E34/Run 40): erster installierter System-CHF/kWp-Wert.** Der Diemtigen-Bericht ist
kein realer JANS-Installateur-Schlussbeleg, sondern ein **EnergieSchweiz-Solarrechner-Musterbericht**
("Schluesseldaten rund um meine Solaranlage", 02.07.2023) — aber mit einer expliziten
**schluesselfertigen Anlagekosten-Zahl (CHF 19'140 fuer 6.0 kWp ≈ 3'190 CHF/kWp)**, die die bisher
offene Luecke "installierter System-CHF/kWp" fuer den **Standard-Aufdach-Typ (E)** erstmals mit
einer konkreten Zahl unterlegt — bislang stand dort nur der hergeleitete Modulpreis-Anker (§3 unten).
Zusaetzlich zeigt der Bericht die **Foerder-/Steuer-Kaskade** einer Kleinanlage: CHF 2'400 KLEIV
(**≈ 13 %** der Anlagekosten) + CHF 3'486 Steuerabzug (18 %) ⇒ Nettoinvestition CHF 13'254; bei
jaehrlichem Gewinn CHF 554 (Eigenverbrauchs-Einsparung + Einspeiseerloes − Unterhaltskosten) ergibt
sich eine **Amortisation von 24 Jahren** — deutlich laenger als der ewzWHH-Benchmark (§ unten,
19–31 J), weil hier nur der Kleinanlagen-Eigenheim-Fall ohne Batterie/WP-Kopplung gerechnet wird.
Status `established` (amtliche EnergieSchweiz-Publikation, Zahlen direkt aus dem PDF nachgerechnet
konsistent: 19'140/6.0 = 3'190).

**Lesart der Bandbreite (belegt):**
- **Spez. Ertrag** liegt in ZH/SZ-Lagen belegt bei **~850–980 kWh/kWp** (Dachneigung/Verschattung/
  Standort). Faustwert fuer Grob-Studie: **~900 kWh/kWp**.
- **CHF/kWp ist stark typabhaengig:** kleinteilige **Indach-Solarziegel** (Typ A/B, viele
  Klein-Module à 32 Wp → 252 Stk. fuer 7.9 kWp) sind mit **~7'000+ CHF/kWp** ein Vielfaches der
  **Standard-Aufdach/-Indach-Module** (Typ E) mit **~2'000–3'200 CHF/kWp** (Basel-Grossanlage
  59.93 kWp ≈ 2'255, Diemtigen-Kleinanlage 6.0 kWp ≈ 3'190 — Skaleneffekt: kleine Anlagen tragen
  proportional mehr Fixkosten pro kWp). Grund: Stueckzahl, Montageaufwand, Aesthetik-Aufpreis,
  Anlagengroesse. → In der Studie **nie einen Pauschal-CHF/kWp** ueber alle Typen ziehen.
- **Foerderung** (Pronovo EIV) senkt die Netto-Investition spuerbar: Basel CHF 22'861 (~17 %),
  Reckholdern CHF 3'674 (~6 %) — als Abzug, nicht als Ertrag verbuchen.
- **Modul-Preis-Anker vs. Systempreis:** der Eternit-Sunskin-Listenpreis **~1'740 CHF/kWp ist
  _nur das Modul_** (inkl. Systemprofil, ohne Wechselrichter/Verkabelung/Montage/Elektroanschluss).
  Der **installierte** BIPV-Systempreis liegt erfahrungsgemaess beim **~1.6–2.5-fachen** des
  Modulpreises → grob **~3'000–4'500 CHF/kWp installiert** fuer dachintegriert/Fassade — deutlich
  ueber Standard-Aufdach (Typ E ~2'255), aber unter der kleinteiligen Solarziegel-Loesung
  (Typ A/B-Tile ~7'370, Reckholdern). Merksatz: **je kleinteiliger/integrierter/vertikaler, desto
  teurer pro kWp.** Exakten Systempreis nur ueber Installateur-Offerte, nie den Modulpreis als
  Systempreis zitieren.

### Detail-Lehre Flachdach V-Anordnung (ewzWHH, ewz/Meili Peter Partner/IBG, 13.02.2019)
- **Belegungsdichte ↔ spez. Ertrag** ist ein Zielkonflikt: maximale Belegung senkt kWh/kWp
  (Verschattung Bruestung/Lueftung) — weniger dicht belegt erreicht ~850 kWh/kWp.
- **Wirtschaftlichkeit:** Amortisation 31 J «nicht mehr wirtschaftlich», ohne Foerderfaktor ~19 J;
  **techn. Lebensdauer PV 25–30 J** → Amortisation muss klar darunter liegen. Simulation PVSOL.
- **Entwaesserung V-Tiefpunkt:** Wasser sammelt sich aufs Substrat → Pflanzenwuchs/Pflege;
  ewz-Empfehlung **50 cm Kiesstreifen statt Substrat** unter dem V-Tiefpunkt.

> **Dimensionierungs-Anker (Eigenstrom-Pflicht Neubau ZH):** die **mindestens** noetige PV-Leistung
> ist **EBF × 10 W/m² (max. 30 kW)**; Flaechenbedarf **8 m²/kW** (mono/polykristallin) bzw.
> **16 m²/kW** (Duennschicht) — Quelle Formular EN-104, Detail in
> `[[energie-energienachweis-zh-formulare]]`.

## 4 — Wartungszugang Flachdach-PV: Dachausstiege (K29/Run 31, 2026-07-13)

Bisher nicht erschlossener Ordner `Solaranlage/Dachausstiege` (6 Produktfotos, 11/2024) zeigt
einen Planungsaspekt, der bei Flachdach-PV (Typ E) regelmaessig vergessen wird: der **dauerhafte
Wartungszugang zum Dach**. Reale Referenzbilder zeigen freistehende **Dachausstiegs-Boxen**
(isoliertes Gehaeuse auf Aufkantung/Kies-Bett, Gasdruckfeder-Deckel, Innenleiter) mit
**Fallschutz-Gelaender** ringsum montiert, **direkt neben** (nicht unter) dem PV-Modulfeld
positioniert — so bleibt der Ausstieg jederzeit zugaenglich, ohne dass Servicepersonal ueber die
Module steigen muss. Praxis-Punkte fuer die Planung:

- Position **seitlich/ausserhalb** der PV-Belegungsflaeche einplanen, nicht unter Modulreihen.
- **Fallschutz-Gelaender** um den offenen Ausstieg als eigenes Bauteil im Werkplan/LV
  beruecksichtigen (Absturzsicherung, analog `[[recht-norm-arbeitshilfen-planungsdetails]]` §3
  Absturzsicherungen — dort Gebaeude-Attika, hier ein Einzelbauteil auf der Dachflaeche).
- Steht i.d.R. auf einer eigenen Aufkantung im Kies-/Attika-Bereich, unabhaengig vom
  Gruendach-/Substrat-Aufbau.

Kein Hersteller/Normverweis in den Quellbildern identifizierbar (reine Referenzfotos ohne
Beschriftung) — Status `speculative`/Praxishinweis, keine belegte Norm-Anforderung. Ergaenzt die
Ausfuehrungsplanung von Flachdach-PV-Anlagen (Typ E), die bisher nur Ertrag/Belegungsdichte
(§«Detail-Lehre Flachdach V-Anordnung») abdeckte.

## 5 — Architektonische Integration: Praxisbeispiele (TEC21-Dossier «SolaRes Bauen», E35/Run 40)

Bisher deckt dieser Artikel PV **technisch/wirtschaftlich** ab (Typenwahl, Flaechenleistung,
Ertrag, Kosten) — der bisher unerschlossene Ordner `Solaranlage/_Literatur/` enthaelt mit dem
**TEC21 | TRACÉS | archi Dossier 5/2012 "SolaRes Bauen"** (25 S., Fachzeitschrift, 3 Sprachen)
eine **gestalterische** Ergaenzung: reale Architekturbeispiele, in denen Solartechnik zum
gestaltprаegenden Bauteil wird statt nachtraeglich aufmontiert zu werden — direkt relevant fuer
JANS als entwerfendes Buero (nicht nur als Nachweis-/Kostenthema).

**Leitprinzip (Interview Beat Kämpfen, Zuercher Solararchitekt, kämpfen für architektur ag):**
«Jedes Bauelement muss mindestens zwei Funktionen erfuellen.» — Kämpfens Haltung: eine
pragmatische, bescheidene Architektur, die taegliche Beduerfnisse befriedigt, **UND** dabei
Energieeffizienz/Nachhaltigkeit nicht als plakatives Zusatzelement, sondern als selbstverstaendliche
Randbedingung behandelt. Konkret umgesetzt am Referenzprojekt auf dem Dossier-Titelbild:

- **Plusenergiehaus Zuerich Höngg** (2011, Bauherrschaft Silvio/Esther Ponti, Architektur kämpfen
  für architektur ag, Minergie-P-ECO zertifiziert): **Vakuumroehrenkollektoren an der
  Suedwest-Fassade** (25 m² Solarthermie) uebernehmen gleichzeitig **drei** Funktionen —
  Sichtschutz, Verschattung UND Absturzsicherung der Balkone (statt separates Gelaender) — und
  liefern zusammen mit einer Erdsonden-Waermepumpe die gesamte Heizenergie. **PV-Dach** (74 Module
  3S-Black-Laminat à 235 W ≈ 17.4 kWp) deckt den Gebaeudetechnik-Energieverbrauch UND zwei Drittel
  des Haushaltsstroms. Rechnerisch: Gesamtenergieverbrauch (Gebaeude 9'031 + Betrieb 9'000 =
  **18'031 kWh/a**) nahezu deckungsgleich mit der Eigenenergieproduktion (Solarthermie 8'694 +
  PV 14'918 = **23'612 kWh/a**, netto plus) — belegtes **Plusenergiehaus** ueber effektiv
  gemessene/berechnete Werte, nicht nur Label-Anspruch.
- **Umwelt Arena Spreitenbach** (Gewerbe-/Ausstellungsbau, Architektur René Schmid Architekten):
  **5'500 Photovoltaikmodule** (davon **1'000 in Sonderformen gefertigt**) decken die komplette
  schiefwinklig gefaltete Dachflaeche bis zur fast bodennahen Traufe — bewusst **auch die noerdliche
  und oestliche Flanke** eingedeckt, obwohl der Tageslauf der Sonne nicht das primaere
  Gestaltungskriterium war; die Neigungswinkel wurden am Computer so lange simuliert, bis auch die
  Nordost-Flanken einen Strombeitrag lieferten. Ergebnis: Gesamt-Eigenenergieproduktion
  **560'150 kWh/a** gegen einen Gesamtenergiebedarf von **404'941 kWh/a** — Plusenergiebau mit
  deutlicher Reserve, das Solardach ist zugleich das identitaetsstiftende Gestaltungselement
  ("Stromlinienform") des gesamten Baus.

**Planerische Lehre fuer JANS-Studien:** Solarflaechen (Dach **und** Fassade) sind nicht per se ein
technisches Anhaengsel, sondern koennen als **mehrfunktionales Bauteil** eingeplant werden — an
Fassaden z.B. gleichzeitig Absturzsicherung/Sichtschutz/Verschattung (spart ein separates
Gelaender-/Storen-Gewerk), am Dach als identitaetsstiftende Grossform. Das schaerft die
Typenwahl-Logik in §1 (D Fassade/A-B Dach) um eine gestalterische Dimension, die rein technische
Wp/m²-Tabellen nicht abbilden.

Status `emerging` (Fachzeitschriften-Publikation mit Primaerdaten je Projekt, aber keine
JANS-eigene Verifikation der Kennzahlen; Datenstand 2012 — bei Zitat der Modul-/Ertragszahlen als
historisches Beispiel kennzeichnen, Flaechenleistung selbst hat sich seither deutlich erhoeht,
vgl. §1b). Nicht gelesen: der 46-seitige Workshop-Foliensatz `20220606_GreenPV - Workshop 2.pdf`
(Fassadenbegruenung + PV, Klimaanpassung, 15.06.2022) im selben Ordner — als Backlog fuer einen
kuenftigen Lauf vermerkt.

## Querbezuege
- Wirtschaftlichkeit/Rendite einer Anlage → Skill `healthcare-wirtschaftlichkeit` /
  `wirtschaftlichkeit-rechner` (Annuitaet, Amortisation).
- Welches Portal liefert die Dach-/Hoehengeometrie → `[[kartenportale-geoportale-uebersicht]]`.
- Eigenstromerzeugungs-**Pflicht** (Neubau, MuKEn/EN-104) → `[[energie-energienachweis-zh-formulare]]`
  (EN-104-Detail: EBF × 10 W/m², max 30 kW) bzw. `[[u-werte-grenzwerte-ch]]` (KB energie).
- **Brandschutz/Naturgefahren** der Anlage (Brandmauer-Uebergang, RWA-Abstand, Feuerwehr ≥30 kW,
  Hagel/Schnee SIA 261) → `[[energie-pv-brandschutz]]`.

## Datenstand / offen
⚠ Solarrechner-Kennwerte Stand 10/2022; Modulwirkungsgrade steigen → Faustwert m²/kWp periodisch
nachziehen. **D5-Fortschritt 2026-07-10 (Run 17):** die **Flaechenleistung Wp/m² je Typ B/C/D ist
jetzt belegt** (§1b — PREFA Solardachplatte 146–170, SI-Saphir transparent ~120, Fassade × 0.6–0.7)
und ein **belegter Modul-Preis-Anker** (Eternit Sunskin ~1'740 CHF/kWp _Modul_, §3) ergaenzt.
⚠ Datenstaende der Belege: PREFA-Folder **09.2023**, SI-Saphir-Datenblatt **06/2015**, Eternit-Preis
**11/2024 (mit −20 %-Aktion)** → je >18 Mt.; Wp/m² sind stabile Konstruktions-Kennwerte, aber
**Modul-Preise vor Zitat aktuell nachschlagen** (Herstellerpreise fallen). **Weiterhin offen:** ein
belegter **installierter System-CHF/kWp** fuer Typ B/C/D aus einer realen JANS-Schlussabrechnung (die
CHF-Werte hier sind Modul-Liste bzw. hergeleitetes Band, keine Abrechnung). SolarApp-Werte §3 bleiben
**Vorprojekt-Schaetzungen** (PVGIS) → bei realer Schlussabrechnung verifizieren.

**Run 31 (2026-07-13):** Megasol-Bifazial-Datenblatt Datenstand **10/2022** (>18 Mt., vor Zitat
Preisliste/aktuelle Modulgeneration pruefen — Wp/m²-Kennwert selbst ist konstruktionsstabil).
Dachausstiege-Praxishinweis bleibt `speculative` (keine Norm-/Herstellerquelle, reine
Referenzfotos) — bei realem Projekt mit Fallschutz-Fachplaner verifizieren.

**Run 40 (2026-07-14, Ordner-Abgleich E32–E35):** vier bisher nie erschlossene Unterordner
gefunden — (1) `solar-home.ch/Sunskin/` Planungshandbuch liefert die **Einsatzgrenzen** des
dachintegrierten Typs B (§1c: Dachneigung 10–60°, Bezugshoehe/Schneelast-Kopplung, Hinterlueftung
als Pflichtbauteil); (2) `uvek-gis.admin.ch/` Musterbericht legt die **Eignungsklassen-Skala und
Rechenannahmen** hinter sonnendach.ch offen (§2b: 5 Klassen, Wirkungsgrad 20 % seit 09/2022,
Performance Ratio 80 %, 10 Rp./kWh-Naeherung); (3) `energieschweiz.ch/Diemtigen/` liefert den
**ersten installierten System-CHF/kWp-Wert** (§3: 3'190 CHF/kWp schluesselfertig, Typ E
Kleinanlage) — die in Run 17/§Offen als fehlend vermerkte Luecke ist damit **fuer Typ E teilweise
geschlossen**, fuer Typ B/C/D (dachintegriert/transparent/Fassade) bleibt sie weiterhin offen; (4)
`_Literatur/` TEC21-Dossier ergaenzt die technische Betrachtung um **gestalterische
Praxisbeispiele** (§5). Geprueft, aber **kein Delta** gefunden: `_Literatur/planer_d.pdf` ist
byte-different, aber inhaltsgleich mit dem bereits in [[energie-uebersicht]]/
[[energie-minergie-referenzprojekt-maison-climat]] genutzten `minergiewissen_planer_d_2023_web_
1-231002-143235.pdf` (identischer Titel "Besser planen, besser bauen — Optimieren mit Minergie"),
`Solaranlage/prefa.solar/PREFA_Solarfolder_CH-deutsch.pdf` ist dieselbe Datei wie die bereits in
§1b zitierte PREFA-Solarfolder-Quelle (kein zweiter Kanal), `Solaranlage/energieheld.ch/` und
`Solaranlage/sonnenverlauf.de/` enthalten je nur einen einzelnen, inhaltlich trivialen Website-
Screenshot ohne neue Kennzahl.
