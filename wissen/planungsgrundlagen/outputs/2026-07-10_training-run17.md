# Training Run 17 — KB Planungsgrundlagen · 2026-07-10

**Schwerpunkt-Domaene:** Energie (PL-04, Prioritaet). Rotation Run 16 Kartenportale → Run 17 Energie.
Run 16 hatte Run 17 explizit auf Energie gesetzt (Kandidaten: D5 Typ B/C/D CHF/kWp oder KISPI-EVEN-
Walkthrough). **Connector-Schritt:** nein (Energie hat keinen Connector).

## Ausgangslage / erkannte Luecke

Die Benchmark-Tabelle in [[energie-pv-eignung-typenwahl]] §3 deckte **D5** nur fuer Typ A (Indach-Tile)
+ Typ E (Aufdach) + Flachdach ab; **offen war Typ B/C/D** (Dachziegel/transparent/Fassade). Genau diese
drei Typen haben in PL-04/Solaranlage eigene Ordner mit belegbaren Hersteller-Datenblaettern —
also eine konkrete, hart belegbare Luecke. Zusatz-Erkenntnis beim Lesen: der planerisch wichtigere
Kennwert ist nicht CHF/kWp, sondern die **Flaechenleistung Wp/m²** (bestimmt, wieviel kWp auf die
gegebene Dach-/Fassadenflaeche passt) — und die ist ueber Datenblaetter exakt belegbar.

## Bearbeitete Fragen (Run 17) — Energie/PV Typ B/C/D

1. **Wie viel Leistung bringt ein dachintegriertes Modul pro m² (Typ B)?** → PREFA Solardachplatte
   **gross** 1400×420 mm, 100 Wp/Stk, 1.7 Stk/m² → **~170 Wp/m²** (5.88 m²/kWp); **klein** 700×420 mm,
   43 Wp/Stk, 3.4 Stk/m² → **~146 Wp/m²** (6.84 m²/kWp). 12.6 kg/m², ab 17°. (PREFA Solarfolder 09.2023)
2. **Was ist der konstruktive Vorteil von Typ B ausser Optik?** → **Keine Dachdurchdringung, keine
   separate PV-Unterkonstruktions-Statik** (Integration in die Dachplatte); Gewicht nur 12.6 kg/m².
   Das spart in der Studie eine Statik-Position und die Durchdringungs-/Dichtigkeitsdetails.
3. **Wie viel kostet Transparenz (Typ C)?** → SI-Saphir M175-M180 Doppelglas: 180 Wp auf 1500×1000 mm
   = **~120 Wp/m²** — nur ~60 % eines opaken Standardmoduls (~200 Wp/m²), weil 40 % Lichtdurchlass ueber
   hohen Zellabstand erkauft werden. Fuer Pergola/Vordach → mehr Flaeche fuer dieselbe kWp einplanen.
4. **Was ist die baurechtliche Besonderheit von Ueberkopf-/Fassaden-PV?** → SI-Saphir traegt die
   **allgemeine bauaufsichtliche Zulassung DIBt Z-70.3-204**; bei Pergola/Vordach ist das Modul zugleich
   **Ueberkopfverglasung** (VSG/absturzsichernde Verglasung, 7200 Pa Schnee/Wind) → als Bauteil der
   Gebaeudehuelle behandeln, nicht als reines Anbauteil.
5. **Gibt es einen belegten Preis-Anker fuer BIPV-Module (B/D)?** → Ja: Eternit Sunskin roof GG-L 195W
   = **339 CHF netto/Modul** (solar-home.ch Webshop, Screenshot 17.11.2024, −20 %-Aktion) → **~1'740
   CHF/kWp _nur Modul_** (inkl. Systemprofil, ohne WR/Verkabelung/Montage/Elektro).
6. **Wie kommt man vom Modul-Preis zum System-Preis?** → installierter BIPV-Systempreis ~1.6–2.5×
   Modulpreis → grob **~3'000–4'500 CHF/kWp installiert** — zwischen Standard-Aufdach (~2'255) und
   kleinteiliger Solarziegel-Tile-Loesung (~7'370). Nie Modulpreis als Systempreis zitieren.
7. **Gibt es eine reale Schweizer Fassaden-PV-Referenz (Typ D)?** → **Amt fuer Umwelt und Energie
   Basel** (Spiegelgasse 15, jessenvollenweider, 2021): 8-geschossiger Holzskelettbau mit Fassade aus
   Photovoltaikmodulen aus **strukturiertem Schmelzglas** — Landmark-BIPV-Fassade, als Benchmark eingewoben.
8. **Wie stark faellt der Fassaden-Ertrag ab (Typ D)?** → senkrechter Winkel → **× ~0.6–0.7
   Ertragsfaktor** gegenueber optimaler Dachneigung (dafuer besserer Winterertrag/Selbstverschattungs-
   freiheit) — als Faustfaktor in §1b markiert.

## Was geaendert wurde

- **[[energie-pv-eignung-typenwahl]]:**
  - **NEU §1b** «Flaechenleistung (Wp/m²) je PV-Typ» — belegte Tabelle A/B/C/D mit Quelle je Zeile
    + drei Kern-Lehren (Transparenz kostet Leistung / Typ-B-Konstruktionsvorteil / Ueberkopf =
    Glas-Bauzulassung).
  - **§3** Eternit-Sunskin-Modul-Preis-Zeile ergaenzt + neue Lehre «Modul-Preis vs. Systempreis».
  - §1-Hinweis aktualisiert (jetzt belegte Datenblaetter statt «ueberwiegend Bilder»), Datenstand-
    Abschnitt auf D5-Fortschritt gehoben, Frontmatter (last_updated 2026-07-10 + 5 neue Quellen).
- **Register:** curriculum (NEU E11 [x]), QUESTIONS (D5 ✓ Typ B/C/D), INDEX (Artikel-Zeile),
  raw/_INGESTED (Run-17-Zeile), CHANGELOG.

## Quellen (belegt)

- `PL-04 Energie/Solaranlage/prefa.solar/PREFA_Solarfolder_CH-deutsch.pdf` (Stand 09.2023 V5) —
  Solardachplatte gross/klein Wp/Stk, Stk/m², m²/kWp, 12.6 kg/m², ab 17°, keine Durchdringung/Statik,
  ESTi-Installationsbewilligung, PRONOVO-Foerderung, SENS/vRG.
- `…/Solaranlage/C Transparente PV Anlage/Datenblatt_SI-Saphir_M175-M180.pdf` (Stand 06/2015) —
  180 Wp / 1500×1000 mm, 40 % Lichtdurchlass, DIBt Z-70.3-204, 7200 Pa, 30 kg, bifazial bis 210 Wp;
  Screenshots Pergola-Referenzen (Basler & Hofmann/Electrosuisse, EKZ).
- `…/Solaranlage/A Indach PV Anlage/Bildschirmfoto 2024-11-17…` (solar-home.ch) — Eternit Sunskin roof
  GG-L 195W, **339 CHF netto/Modul**, 25 J auf 80 % power rating, Art. MOSO11030181.
- `…/Solaranlage/D Fassaden PV Anlage/Bildschirmfoto 2022-10-31…` — Amt f. Umwelt+Energie Basel
  (jessenvollenweider 2021, Open House Basel), Fassade aus strukturiertem Schmelzglas-PV.
- `…/Solaranlage/solar-home.ch/Sunskin/…roofPlanungUndAusfuehrung_de.pdf` (Rev. 01.2022) — Aura-2-
  Verlege-/Latteneinteilung, Modulhalter/Plattenauflager (dachintegriertes System).

## Naechster Lauf (Run 18)

Rotation → **Recht/Norm (PL-02)** oder Prioritaets-Vorzug **M2** (Anbindung machbarkeit/
ankaufspruefung/behoerden-vorabklaerung schaerfen — jetzt mit Flaechenleistung Wp/m² als PV-
Dimensionierungs-Baustein). **Energie-Rest fuer spaeter:** (a) realer **KISPI-EVEN-Screenshot-
Walkthrough** (D6-Offen, live-Fall 2619-KISPI), (b) **installierter System-CHF/kWp** fuer Typ B/C/D
aus einer realen JANS-Schlussabrechnung (D5-Offen — bisherige CHF sind Modul-Liste/hergeleitetes Band),
(c) ZH-Ueberfuehrung MuKEn 2025 bei Publikation (E5/D1-Offen).
