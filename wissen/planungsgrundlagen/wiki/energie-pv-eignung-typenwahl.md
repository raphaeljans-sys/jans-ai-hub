---
title: PV/Solar — Typenwahl, Eignung & Ertrag (Planungsgrundlage)
status: established
last_updated: 2026-07-13
sources: [PL - 04 Energie/Solaranlage (SharePoint), EnergieSchweiz Solarrechner Usermanual (Okt 2022), SolarApp-Vorprojekte Reckholdern/Einsiedeln (09.01.2024) + MFH Basel (05.11.2022), JANS-Projekt ewzWHH PS 19.36 (Korrespondenz 02/2019), Formular EN-104 (EnDK, Juni 2019), PREFA Solarfolder CH (Stand 09.2023 V5), Datenblatt SI-Saphir M175-M180 (Stand 06/2015, DIBt Z-70.3-204), Eternit Sunskin roof GG-L 195W (solar-home.ch Webshop, Screenshot 17.11.2024), Amt fuer Umwelt und Energie Basel/jessenvollenweider (2021, Fassaden-PV Schmelzglas), uvek-gis.admin.ch, sonnenverlauf.de, Megasol Datenblatt Hochleistungsmodul M385-HC120-b BF GG U30b Art. 0322.1580 (Version 10/2022, Run 31), PL - 04 Energie/Solaranlage/Dachausstiege (6 Produktfotos, 11/2024, Run 31)]
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

**Lesart der Bandbreite (belegt):**
- **Spez. Ertrag** liegt in ZH/SZ-Lagen belegt bei **~850–980 kWh/kWp** (Dachneigung/Verschattung/
  Standort). Faustwert fuer Grob-Studie: **~900 kWh/kWp**.
- **CHF/kWp ist stark typabhaengig:** kleinteilige **Indach-Solarziegel** (Typ A/B, viele
  Klein-Module à 32 Wp → 252 Stk. fuer 7.9 kWp) sind mit **~7'000+ CHF/kWp** ein Vielfaches der
  **Standard-Aufdach/-Indach-Module** (Typ E) mit **~2'000–2'500 CHF/kWp**. Grund: Stueckzahl,
  Montageaufwand, Aesthetik-Aufpreis. → In der Studie **nie einen Pauschal-CHF/kWp** ueber alle
  Typen ziehen.
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
