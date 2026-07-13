---
title: Heizwaermebedarf (SIA 380/1) & Waermeerzeugerleistung (SIA 384/1, 384.201) — Berechnungsverfahren
status: established
last_updated: 2026-07-13
sources: [PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf Berechnung SIA 380_1.pdf (Reader "Energetische Gesamtoptimierung", SIA 380/1 S.104-105), PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf_Berechnung_Beispiel.pdf (dass. S.106-107, Beispiel Büroraum Zürich-Stadt), PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf Kennwert pro EBF.pdf (dass. S.146-147/108-109, SIA 380/1 Anhang A Tab.24/25), PL - 04 Energie/_Heizwaermebedarf/_2781-Ermittlung_der_Wärmeerzeugerleistung.pdf (EnergieSchweiz/BFE + suissetec + Minergie, "Ermittlung der Wärmeerzeugerleistung", Broschüre 6, 12.2015), PL - 04 Energie/_Heizwaermebedarf/U-Wert_Gebäudehülle.pdf (dass. S.88-89, "Grundsätze"), PL - 04 Energie/_Heizwaermebedarf/Betriebsenergie.pdf (dass. S.116, "Graue Energie — Größenordnung"), PL - 04 Energie/U Wert berechnung/EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf (EnFK Vollzugshilfe Dez. 2018), PL - 04 Energie/U Wert berechnung/VoHi_EN02_de.pdf (Vollzugshilfe Feb. 2013), PL - 04 Energie/U Wert berechnung/U-Wert-Berechnung_und_Bauteilekatalog_Neubauten_d[1].pdf (BFE/EnergieSchweiz 2002), PL - 04 Energie/U Wert berechnung/clt/CLT by Stora Enso-Technical documentation - Building physics-2021-DE.pdf (S.14-37 Luftdichtheit/Feuchte)]
links: [[energie-uebersicht]], [[u-werte-grenzwerte-ch]], [[energie-energienachweis-zh-formulare]], [[energie-minergie-referenzprojekt-maison-climat]], [[grobkosten-onepager]]
---

# Heizwaermebedarf (SIA 380/1) & Waermeerzeugerleistung (SIA 384/1, 384.201) — Berechnungsverfahren

Neue Domaene aus dem bisher nie erschlossenen PL-04-Ordner `_Heizwaermebedarf/` (Run 29,
2026-07-13): das eigentliche **Rechenverfahren** hinter dem Heizwaermebedarf (der Zahl, die in
jedem EN-Nachweis/EVEN-Formular auftaucht, → `[[energie-energienachweis-zh-formulare]]`) und die
darauf aufbauende **Dimensionierung des Waermeerzeugers**. Die Quelle ist ein Fachbuch-Reader
"Energetische Gesamtoptimierung" (Seitennummern 88–147 im Original) plus eine EnergieSchweiz/
Minergie/suissetec-Broschüre. Ergaenzt `[[u-werte-grenzwerte-ch]]` (dort die U-Wert-**Grenzwerte**,
hier die **Berechnungskette**, die den U-Wert zur Kennzahl Q_h verarbeitet) — kein Doppel.

## 1 — Heizwaermebedarf Q_h nach SIA 380/1 (Monatsbilanzverfahren)

**Bezeichnungen (SIA 380/1, Klimadaten aus SIA 381/2):**

Q_h = Q_T + Q_V − Q_ug = Q_T + Q_V − η_g · (Q_i + Q_s)  [MJ/m²]

- Q_h: Heizwaermebedarf · Q_T: Transmissionswaermeverluste · Q_V: Lueftungswaermeverluste
- Q_ug: genutzte Waermegewinne · η_g: Ausnutzungsgrad fuer Waermegewinn
- Q_i: interne Waermegewinne · Q_s: solare Waermegewinne

**11-Schritt-Rechenverfahren (Monat fuer Monat, danach ueber 12 Monate zum Jahreswert addiert):**

1. **Transmissionswaermeverluste Q_T:** Q_T = (θ_i − θ_e) · t_c · ΣA_th·U · 86'400 / (A_E · 10⁶)
   — θ_i/θ_e Raum-/Aussentemperatur °C, t_c Monatslaenge in Tagen, A_th Bauteilflaeche m²,
   U U-Wert W/m²K, A_E Energiebezugsflaeche m².
2. **Lueftungswaermeverluste Q_V:** analog, mit flaechenbezogenem Aussenluft-Volumenstrom V̇/A_E
   [m³/h·m²] und spez. Waermespeicherfaehigkeit Luft ρ_a·c_a.
3. **Interne Waermegewinne Q_i** = Q_iEl (Elektrizitaet, mit Reduktionsfaktor f_El) + Q_iP
   (Personen, ueber Waermeabgabe/Person W/P × Praesenzzeit h/d × Personenflaeche m²/P).
4. **Solare Waermegewinne Q_s:** Summe ueber horiz./N/E/S/W der Globalstrahlung × Fensterflaeche
   × g-Wert × Abminderungsfaktor Rahmen F_r × Verschattungsfaktor F_s, bezogen auf A_E.
5. **Waermegewinn/-verlust-Verhaeltnis γ** = (Q_i + Q_s) / (Q_T + Q_V).
6. **Zeitkonstante τ** = (C/A_E) · (θ_0 − θ_e) · t_c / (Q_T + Q_V) [h] — C = effektive
   Waermespeicherfaehigkeit der beheizten Raeume pro Kelvin [MJ/K].
7. **Ausnutzungsgrad-Parameter a** = a_0 + τ/τ_0 — a_0 = 1, τ_0 = 15 h fuer rund um die Uhr
   benutzte Gebaeude (sonst SN EN ISO 13790).
8. **Ausnutzungsgrad fuer Waermegewinne η_g0** = (1 − γ^a) / (1 − γ^(a+1)) [wenn γ ≠ 1].
9. **Genutzte Waermegewinne Q_ug** = (Q_i + Q_s) · η_g0.
10. **Heizwaermebedarf Q_h** = Q_T + Q_V − Q_ug [MJ/m²] fuer den Monat.
11. Werte aller 12 Monate **addieren** → Jahres-Heizwaermebedarf.

### Beispielrechnung (belegt): Bueroraum Januar, Zuerich-Stadt

Grundflaeche 30 m², Suedfassade 18 m² (davon 6 m² Fenster Silverstar V 2-fach U=1.15 W/m²K,
g=0.57), Wand-U=0.2 W/m²K, Nutzungskategorie III (Verwaltung):

θ_e Januar Zuerich 0.1 °C, θ_i 20 °C → Δθ = 19.9 °C. Q_T = 16.5 MJ/m², Q_V = 12.4 MJ/m²
(Standard-Aussenluftstrom 0.7 m³/h·m²), Q_i = 8.8 MJ/m² (Elektrizitaetsverbrauch 80 MJ/m²·a,
Reduktionsfaktor 0.9), Q_s = 8.3 MJ/m² (Globalstrahlung Sued Januar 149 MJ/m², F_r=F_s=0.7),
γ = 0.59, τ = 223 h (Speicherfaehigkeit 0.5 MJ/m²K fuer massive Bauweise/Teppich- o.
Doppelboeden), a = 15.9, η_g0 ≈ 1.0 → Q_ug = 17.1 MJ/m² → **Q_h Januar = 11.8 MJ/m² (354 MJ
absolut)**.

## 2 — Gebaeudekategorien & Standardnutzungswerte (SIA 380/1 Anhang A, Tab. 24/25)

Fuer die Berechnung sind je Gebaeudekategorie **normierte Standardwerte** vorgegeben (Nutzung
nicht frei annehmbar, sondern Tabellenwert):

| Kat. | Gebaeudekategorie | Grenzwert Q_H (A_th/A_E gew.) MJ/m²·a | Zielwert MJ/m²·a |
|---|---|---|---|
| I | Wohnen MFH | 140 | 84 |
| II | Wohnen EFH | 195 | 117 |
| III | Verwaltung | 133 | 80 |
| IV | Schulen | 186 | 112 |
| V | Verkauf | — | — |
| VIII | **Spitaeler** (Spitaeler, psychiatr. Kliniken, Krankenheime, Altersheime, Rehazentren) | 144 | 86 |
| IX | Industrie | — | — |

(Tabelle 24, bezogen auf Energiebezugsflaechen-Zahl A_th/A_E bei Jahresmitteltemperatur 8.5 °C;
Kategorie **VIII "Spitaeler" ist die einschlaegige SIA-380/1-Kategorie fuer Healthcare-Projekte**
— JANS-Relevanz fuer `[[healthcare-wirtschaftlichkeit]]`/Pflegeheim-Studien.)

**Standardnutzungswerte je Kategorie (Tab. 25, Auszug):**

| Ziff. | Grösse | Wohnen MFH | Wohnen EFH | Verwaltung | Schulen | **Spitaeler** |
|---|---|---|---|---|---|---|
| 3.4.1.1 | Innentemperatur θ_i [°C] | 20 | 20 | 20 | 20 | 22 |
| 3.4.1.2 | Personenflaeche A_P [m²/P] | 40 | 60 | 20 | 10 | 5 |
| 3.4.1.3 | Waermeabgabe/Person Q_P [W/P] | 70 | 70 | 70 | 80 | 80 |
| 3.4.1.4 | Praesenzzeit/Tag t_P [h] | 12 | 12 | 6 | 4 | 16 |
| 3.4.1.5 | Elektrizitaetsverbrauch/Jahr Q_E [MJ/m²] | 100 | 80 | 80 | 40 | 120 |
| 3.4.1.6 | Reduktionsfaktor Elektrizitaet f_E [-] | 0.7 | 0.7 | 0.9 | 0.9 | 0.8 |
| 3.4.1.7 | Aussenluft-Volumenstrom V̇/A_E [m³/h·m²] | 0.7 | 0.7 | 0.7 | 0.7 | 1.2 |
| 4.3 | Waermebedarf Warmwasser/Jahr Q_ww [MJ/m²] | 75 | 50 | 25 | 25 | 200 |

**Praxisrelevanz JANS:** Wer den Heizwaermebedarf eines Vorprojekts abschaetzen will (Vorstufe zu
`[[grobkosten-onepager]]`/`[[healthcare-wirtschaftlichkeit]]`), kann diese Tabellenwerte als
Plausibilitaets-Check gegen ein Software-Resultat (SIA-380/1-zertifiziertes Programm, siehe
Formularliste `endk.ch`) heranziehen, statt die 11-Schritt-Rechnung von Hand zu fuehren.

## 3 — Waermeerzeugerleistung (SIA 384/1, SIA 384.201)

Getrennte Frage von Q_h: **wie gross muss der Kessel/die Waermepumpe sein?** Zwei Wege je nach
Projektphase:

### 3a — Sanierung: aus dem Brennstoffverbrauch (SIA 384/1, Ziff. 4.3.6)

Φ_gen,out,new = (m_an · GCV / t_an) · (η_an,old / η_an,new) · η_gen,new

- m_an: jaehrlicher Brennstoffverbrauch (mehrjaehriges Mittel, kg/m³/l) · GCV: Brennwert
  kWh/kg(m³/l) · t_an: jaehrliche Volllastzeit h (**2300 h** nur Heizung, **2700 h** Heizung+WW,
  bei Standorthoehe >800 m ü.M. **+300 h**) · η_an,old/new: Jahresnutzungsgrad alt/neu ·
  η_gen,new ≈ 0.5 · (1 + η_an,new).
- **Brennwerte/Nutzungsgrade belegt (Broschüre, Tab. 2.2–2.6):** Stueckholz Weichholz 1'800 /
  Hartholz 2'500 kWh/Rm (η 45–75 %) · Holzschnitzel 750–1'250 kWh/Srm (η 45–75 %) · Pellets
  5.2–5.5 kWh/kg (η 65–75 %) · Heizoel EL 10.5 kWh/l (η 75–95 %) · Erdgas 10.4 kWh/m³ (η 80–95 %).
- **Nur fuer gleichartige Ersatzsysteme** — Systeme nicht mischen; Formel gilt fuer Wohnbauten
  bis ~100 kW Leistungsbedarf (nicht sehr gut gedaemmt, kein hoher Glasanteil, keine
  ausgepraegte Suedhanglage); sonst Messung ueber ~2 Wintermonate + Regressionsgerade
  (Leistungskennlinie), Zuschlag +15 % fuer Solargewinne.

### 3b — Neubauten: Norm-Heizlast (SIA 384.201) + Zuschlaege (SIA 384/1)

Φ_gen,out = Φ_HL + Φ_W + Φ_AS

- Φ_HL Norm-Heizlast nach SIA 384.201 (raumweise Berechnung, aus Transmissions- +
  Lueftungswaermeverlusten bei Norm-Aussentemperatur, kein Wärmefluss zw. beheizten Raeumen
  gerechnet).
- Φ_W Leistungszuschlag Wassererwaermung (Richtwert, aus Wärmebedarf Warmwasser SIA 380/1
  abgeleitet, Verluste ≈25 % + permanent verfuegbarer Erzeuger): **MFH 3 W/m²EBF · EFH 2 W/m²EBF
  · Verwaltung 1 W/m²EBF.**
- Φ_AS Leistung verbundener Systeme (Lueftung, Prozesswaerme) — fallbezogen.
- In der Regel **keine Zuschlaege** zur Norm-Heizlast noetig; Wohnhaeuser: Raumtemperatur bei
  tiefen Aussentemperaturen nicht absenken.

### Kontrollwerte spezifische Heizleistung (Plausibilitaets-Check, Ziff. 3.4)

Spez. Heizleistung = Norm-Heizlast / Energiebezugsflaeche:

| Gebaeudetyp | Kontrollwert |
|---|---|
| Bestehend, schlecht gedaemmt (Wohnen) | 50–70 W/m² |
| Bestehend, gut gedaemmt (Wohnen) | 40–50 W/m² |
| Neubauten nach heutigen Vorschriften | 25–40 W/m² |
| Bestehend, schlecht gedaemmt (Dienstleistung) | 60–80 W/m² |
| **Minergie** | 20–30 W/m² |
| **Minergie-P** | 8–20 W/m² |

Nur ein grobes Kontrollinstrument, ersetzt die Detailrechnung nicht — aber ein schneller
Plausibilitaetstest, ob ein Ingenieur-Resultat "in der richtigen Groessenordnung" liegt.

## 4 — Kurz-Verweise (kein Doppel)

- **U-Werte / Grenzwerte** (opak <0.3, besser <0.2 W/m²K; transparent <1.2 W/m²K je nach
  Verglasungsanteil) → Tiefe in `[[u-werte-grenzwerte-ch]]`. Ergaenzender Grundsatz aus dem
  Reader: kompakte Bauweise + luftdicht + variabler Sonnenschutz + "Energy-Design-Guide"-Tool
  (Professur Bauphysik ETHZ) als Klimaanpassungs-Werkzeug in der Vorprojektphase.
- **Graue Energie — Groessenordnungs-Faustregel** (Reader S.116, generische Prozentverteilung,
  nicht projektspezifisch): bei gut gedaemmtem **Massivbau** entfallen auf Tragstruktur 49 % /
  Waermedaemmung+Fenster+Tueren 17 % / Haustechnik 18 % / Innenausbau 7 % / Baustelle 9 % der
  Grauen Energie; bei **Holzleichtbau** Tragstruktur 40 % / Huelle 27 % / Haustechnik 20 % /
  Innenausbau 9 % / Baustelle 4 %. Faustregel: die "energierelevanten" Bauteile (Daemmung/
  Fenster/Haustechnik) machen nur **5–7.5 %** der Gesamtenergie eines Gebaeudes ueber 50 Jahre
  aus — eine Verdoppelung ihres Aufwands kann trotzdem den Gesamt-Energieverbrauch um bis 40 %
  senken (Rechenbeispiel im Original). Tiefe Methodik/ZH-Grenzwert → KB `wissen/energie`
  `[[graue-energie]]` und `[[energie-uebersicht]]` §Graue Energie (kein Doppel, hier nur die
  Faustregel als Ergaenzung).

## 5 — Vollzugshilfen EN-102/VoHi-EN02 + Bauteilkatalog + CLT-Luftdichtheit (Run 34, 2026-07-13)

Ordner `PL - 04 Energie/U Wert berechnung/` — bisher nur teilweise erschlossen (nur CLT-Waermeschutz-
Kapitel, E13). Vier weitere Dateien ausgewertet:

**EN-102-d «Waermeschutz von Gebaeuden», Vollzugshilfe Dez. 2018 (Basis SIA 380/1:2009), EnFK/
AG MuKEn** — konkretisiert SIA 380/1 fuer den behoerdlichen Vollzug (interkantonal harmonisiert,
nicht ZH-spezifisch). Delta zur bestehenden Grenzwerttabelle: (a) **separate Umbau/Umnutzung-
Grenzwerte** (opake Bauteile 0.25 statt 0.17 W/m²K Neubau; Systemnachweis 1.5-facher Neubau-
Grenzwert), bisher nicht erfasst; (b) **Waermebruecken-Grenzwerte** Typ 1/2/3/5/6 (Ψ-/χ-Werte);
(c) **Kapitel 8 Sommerlicher Waermeschutz** (g-Wert-Diagramme nach Orientierung, Windwiderstands-
klassen SIA 342, Verfahren 1-3 nach SIA 180) — komplett neu gegenueber der bereits dokumentierten
Winterlichen Formelkette.

**VoHi_EN02 «Waermeschutz von Gebaeuden», Vollzugshilfe Feb. 2013 (Vorgaenger von EN-102-d)** —
kein eigenstaendiges Delta (durch EN-102-d ersetzt, MJ/m² statt kWh/m², U-Wert-Grenzen weniger
streng 0.20 statt 0.17); nur fuer Altbauten mit Baubewilligung vor 2018 relevant. Einzige noch
brauchbare Zusatzregel: 3-fach-Waermeschutzverglasung mit Ug≤0.9 gilt automatisch als U=1.3
erfuellend (Vereinfachungsregel, vermutlich implizit weitergefuehrt).

**«U-Wert-Berechnung und Bauteilekatalog — Neubauten» (BFE/EnergieSchweiz, Kurt Marti, 2002,
Ablösung der 1988er-Ausgabe)** — ECHTES Delta: keine reinen Grenzwerte, sondern ein **Katalog
konkreter Referenz-Schichtaufbauten** (Kap. 4, S. 25-64): Boeden B1-B21, Waende W1-W7i, dazu
Daecher/Decken, je als Schnittzeichnung mit benannten Schichten (z. B. Innenputz/Backstein/
Waermedaemmung/Aussenputz; Bodenbelag/Zementueberzug/Trittschalldaemmung/Beton) UND U-Wert-Lookup-
Tabelle nach Daemmschichtdicke (6-24 cm) x λ-Wert (0.020-0.050 W/mK), inkl. hinterlueftete
Fassaden mit Waermebrueckenzuschlag. Publikation von 2002 (Grenzwerte seither verschaerft), aber
die **Konstruktionslogik/Schichtfolgen bleiben als Vorprojekt-Referenzbibliothek gueltig** — direkt
nuetzlich fuer schnelle Bauteilaufbau-Vorschlaege, wenn noch kein Fachplaner beauftragt ist.

**CLT-Luftdichtheit/Feuchte (Stora-Enso-Dokumentation, Ergaenzung zu E13, S.14-37 nach dem bereits
bekannten Waermeschutz-Kapitel S.4-13):**
- **Luftdichtheit:** CLT-Platten sind ab **3-schichtigem Aufbau von sich aus luftdicht**
  (TU-Graz-Pruefung 2013/14 nach OeNORM EN 12114, Plattenstoesse ausserhalb des messbaren
  Volumenstrom-Bereichs) — eine zusaetzliche Luftdichtheitsfolie ist in der Regel NICHT noetig,
  nur ein komprimierbares Dichtungsband an den Plattenstoessen. Massgeblich ist der **n50-Wert**
  (Blower-Door): ohne RLT-Anlage 3/h, mit RLT-Anlage 1.5/h, Passivhaus 0.6/h (OeNORM B 8110-1).
- **Feuchte:** CLT ist luftdicht, aber NICHT dampfdicht — die **Leimfugen** wirken als eigentliche
  Dampfbremse (sd-Wert = Fichtenvollholz gleicher Staerke + 26 mm Zuschlag/Lage, Quelle
  Holzforschung Austria 2008). CLT verhaelt sich als **feuchtevariable Dampfbremse** (diffusions-
  offener im Sommer, dichter im Winter) — reguliert aktiv die Raumluftfeuchte. Konstruktionsregel:
  sd-Wert zur Aussenflaeche hin **5-10 m niedriger** als zur Konstruktionsmitte (Beispielaufbau
  hinterlueftete Fassade: Gipskarton sd=0.273 m, CLT sd=3.9 m, Aussendaemmung sd=0.25 m,
  diffusionsoffene Folie sd≤0.3 m — von innen nach aussen konsequent dichter zu duenner).

**JANS-Praxisrelevanz:** bei CLT-Projekten (z. B. Biwak Grassen, E14) ist die Luftdichtheits-
Erleichterung (keine zusaetzliche Folie noetig ab 3-Schicht-CLT) eine direkte Kosten-/Detail-
Vereinfachung gegenueber Holzrahmenbau; die sd-Wert-Regel (Aussenseite duenner/dichter als
Innenseite) ist beim Fassadenaufbau-Vorprojekt zu pruefen, um Tauwasserausfall zu vermeiden.

## Datenstand / offen
- Quelle ist ein anonymer Fachbuch-Reader ohne durchgehend erkennbaren Titel/Autor auf den
  gescannten Seiten (Kapitel-Kopfzeile "ENERGETISCHE GESAMTOPTIMIERUNG", Seitennummern
  88–147) — vermutlich ein Kurs-/Weiterbildungs-Skript. Fuer eine formelle Zitierung im
  Kundendokument die **Original-SIA-Normen** (SIA 380/1:2009/2016, SIA 384/1:2009,
  SIA 384.201:2003) referenzieren, nicht den Reader.
- Gebaeudekategorie-Tabelle (Tab. 24) hier nur teilweise abgetippt (Kat. VI/VII/X-XII nicht
  einzeln erfasst, nur die JANS-relevanten I/II/III/IV/VIII/IX) — bei Bedarf Screenshot erneut
  konsultieren.
- Verifikation: Formeln + Beispielrechnung wortgleich am Original nachgerechnet (Q_h Beispiel
  11.8 MJ/m² stimmt mit den Zwischenwerten Q_T/Q_V/Q_ug ueberein: 16.5+12.4−17.1=11.8) →
  Status `established`.
