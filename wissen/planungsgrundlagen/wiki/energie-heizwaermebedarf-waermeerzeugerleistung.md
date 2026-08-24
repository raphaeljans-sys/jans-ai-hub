---
title: Heizwärmebedarf (SIA 380/1) & Wärmeerzeugerleistung (SIA 384/1, 384.201) — Berechnungsverfahren
status: established
last_updated: 2026-07-25
sources: [PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf Berechnung SIA 380_1.pdf (Reader "Energetische Gesamtoptimierung", SIA 380/1 S.104-105), PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf_Berechnung_Beispiel.pdf (dass. S.106-107, Beispiel Büroraum Zürich-Stadt), PL - 04 Energie/_Heizwaermebedarf/Heizwärmebedarf Kennwert pro EBF.pdf (dass. S.146-147/108-109, SIA 380/1 Anhang A Tab.24/25), PL - 04 Energie/_Heizwaermebedarf/_2781-Ermittlung_der_Wärmeerzeugerleistung.pdf (EnergieSchweiz/BFE + suissetec + Minergie, "Ermittlung der Wärmeerzeugerleistung", Broschüre 6, 12.2015), PL - 04 Energie/_Heizwaermebedarf/U-Wert_Gebäudehülle.pdf (dass. S.88-89, "Grundsätze"), PL - 04 Energie/_Heizwaermebedarf/Betriebsenergie.pdf (dass. S.116, "Graue Energie — Größenordnung"), PL - 04 Energie/U Wert berechnung/EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf (EnFK Vollzugshilfe Dez. 2018), PL - 04 Energie/U Wert berechnung/VoHi_EN02_de.pdf (Vollzugshilfe Feb. 2013), PL - 04 Energie/U Wert berechnung/U-Wert-Berechnung_und_Bauteilekatalog_Neubauten_d[1].pdf (BFE/EnergieSchweiz 2002), PL - 04 Energie/U Wert berechnung/clt/CLT by Stora Enso-Technical documentation - Building physics-2021-DE.pdf (S.14-37 Luftdichtheit/Feuchte), PL - 04 Energie/U Wert berechnung/2001_2005_d.pdf (SIA-Merkblatt 2001 Wärmedämmstoffe, Ausgabe 2005, Run 61), PL - 04 Energie/U Wert berechnung/Auswahl_Waermedaemmstoffe.docx (JANS-Notiz 01.11.2023, Run 61), PL - 04 Energie/U Wert berechnung/Energienachweis 380-1 Muster.pdf (Enerhaus-Anwenderkurs, 28.04.2010, Run 61)]
links: [[energie-uebersicht]], [[u-werte-grenzwerte-ch]], [[energie-energienachweis-zh-formulare]], [[energie-minergie-referenzprojekt-maison-climat]], [[grobkosten-onepager]]
---

# Heizwärmebedarf (SIA 380/1) & Wärmeerzeugerleistung (SIA 384/1, 384.201) — Berechnungsverfahren

Neue Domäne aus dem bisher nie erschlossenen PL-04-Ordner `_Heizwaermebedarf/` (Run 29,
2026-07-13): das eigentliche **Rechenverfahren** hinter dem Heizwärmebedarf (der Zahl, die in
jedem EN-Nachweis/EVEN-Formular auftaucht, → `[[energie-energienachweis-zh-formulare]]`) und die
darauf aufbauende **Dimensionierung des Wärmeerzeugers**. Die Quelle ist ein Fachbuch-Reader
"Energetische Gesamtoptimierung" (Seitennummern 88–147 im Original) plus eine EnergieSchweiz/
Minergie/suissetec-Broschüre. Ergänzt `[[u-werte-grenzwerte-ch]]` (dort die U-Wert-**Grenzwerte**,
hier die **Berechnungskette**, die den U-Wert zur Kennzahl Q_h verarbeitet) — kein Doppel.

## 1 — Heizwärmebedarf Q_h nach SIA 380/1 (Monatsbilanzverfahren)

**Bezeichnungen (SIA 380/1, Klimadaten aus SIA 381/2):**

Q_h = Q_T + Q_V − Q_ug = Q_T + Q_V − η_g · (Q_i + Q_s)  [MJ/m²]

- Q_h: Heizwärmebedarf · Q_T: Transmissionswärmeverluste · Q_V: Lüftungswärmeverluste
- Q_ug: genutzte Wärmegewinne · η_g: Ausnutzungsgrad für Wärmegewinn
- Q_i: interne Wärmegewinne · Q_s: solare Wärmegewinne

**11-Schritt-Rechenverfahren (Monat für Monat, danach über 12 Monate zum Jahreswert addiert):**

1. **Transmissionswärmeverluste Q_T:** Q_T = (θ_i − θ_e) · t_c · ΣA_th·U · 86'400 / (A_E · 10⁶)
   — θ_i/θ_e Raum-/Aussentemperatur °C, t_c Monatslänge in Tagen, A_th Bauteilfläche m²,
   U U-Wert W/m²K, A_E Energiebezugsfläche m².
2. **Lüftungswärmeverluste Q_V:** analog, mit flächenbezogenem Aussenluft-Volumenstrom V̇/A_E
   [m³/h·m²] und spez. Wärmespeicherfähigkeit Luft ρ_a·c_a.
3. **Interne Wärmegewinne Q_i** = Q_iEl (Elektrizität, mit Reduktionsfaktor f_El) + Q_iP
   (Personen, über Wärmeabgabe/Person W/P × Präsenzzeit h/d × Personenfläche m²/P).
4. **Solare Wärmegewinne Q_s:** Summe über horiz./N/E/S/W der Globalstrahlung × Fensterfläche
   × g-Wert × Abminderungsfaktor Rahmen F_r × Verschattungsfaktor F_s, bezogen auf A_E.
5. **Wärmegewinn/-verlust-Verhaeltnis γ** = (Q_i + Q_s) / (Q_T + Q_V).
6. **Zeitkonstante τ** = (C/A_E) · (θ_0 − θ_e) · t_c / (Q_T + Q_V) [h] — C = effektive
   Wärmespeicherfähigkeit der beheizten Räume pro Kelvin [MJ/K].
7. **Ausnutzungsgrad-Parameter a** = a_0 + τ/τ_0 — a_0 = 1, τ_0 = 15 h für rund um die Uhr
   benutzte Gebäude (sonst SN EN ISO 13790).
8. **Ausnutzungsgrad für Wärmegewinne η_g0** = (1 − γ^a) / (1 − γ^(a+1)) [wenn γ ≠ 1].
9. **Genutzte Wärmegewinne Q_ug** = (Q_i + Q_s) · η_g0.
10. **Heizwärmebedarf Q_h** = Q_T + Q_V − Q_ug [MJ/m²] für den Monat.
11. Werte aller 12 Monate **addieren** → Jahres-Heizwärmebedarf.

### Beispielrechnung (belegt): Büroraum Januar, Zürich-Stadt

Grundfläche 30 m², Südfassade 18 m² (davon 6 m² Fenster Silverstar V 2-fach U=1.15 W/m²K,
g=0.57), Wand-U=0.2 W/m²K, Nutzungskategorie III (Verwaltung):

θ_e Januar Zürich 0.1 °C, θ_i 20 °C → Δθ = 19.9 °C. Q_T = 16.5 MJ/m², Q_V = 12.4 MJ/m²
(Standard-Aussenluftstrom 0.7 m³/h·m²), Q_i = 8.8 MJ/m² (Elektrizitätsverbrauch 80 MJ/m²·a,
Reduktionsfaktor 0.9), Q_s = 8.3 MJ/m² (Globalstrahlung Süd Januar 149 MJ/m², F_r=F_s=0.7),
γ = 0.59, τ = 223 h (Speicherfähigkeit 0.5 MJ/m²K für massive Bauweise/Teppich- o.
Doppelböden), a = 15.9, η_g0 ≈ 1.0 → Q_ug = 17.1 MJ/m² → **Q_h Januar = 11.8 MJ/m² (354 MJ
absolut)**.

## 2 — Gebäudekategorien & Standardnutzungswerte (SIA 380/1 Anhang A, Tab. 24/25)

Für die Berechnung sind je Gebäudekategorie **normierte Standardwerte** vorgegeben (Nutzung
nicht frei annehmbar, sondern Tabellenwert):

| Kat. | Gebäudekategorie | Grenzwert Q_H (A_th/A_E gew.) MJ/m²·a | Zielwert MJ/m²·a |
|---|---|---|---|
| I | Wohnen MFH | 140 | 84 |
| II | Wohnen EFH | 195 | 117 |
| III | Verwaltung | 133 | 80 |
| IV | Schulen | 186 | 112 |
| V | Verkauf | — | — |
| VIII | **Spitäler** (Spitäler, psychiatr. Kliniken, Krankenheime, Altersheime, Rehazentren) | 144 | 86 |
| IX | Industrie | — | — |

(Tabelle 24, bezogen auf Energiebezugsflächen-Zahl A_th/A_E bei Jahresmitteltemperatur 8.5 °C;
Kategorie **VIII "Spitäler" ist die einschlägige SIA-380/1-Kategorie für Healthcare-Projekte**
— JANS-Relevanz für `[[healthcare-wirtschaftlichkeit]]`/Pflegeheim-Studien.)

**Standardnutzungswerte je Kategorie (Tab. 25, Auszug):**

| Ziff. | Grösse | Wohnen MFH | Wohnen EFH | Verwaltung | Schulen | **Spitäler** |
|---|---|---|---|---|---|---|
| 3.4.1.1 | Innentemperatur θ_i [°C] | 20 | 20 | 20 | 20 | 22 |
| 3.4.1.2 | Personenfläche A_P [m²/P] | 40 | 60 | 20 | 10 | 5 |
| 3.4.1.3 | Wärmeabgabe/Person Q_P [W/P] | 70 | 70 | 70 | 80 | 80 |
| 3.4.1.4 | Präsenzzeit/Tag t_P [h] | 12 | 12 | 6 | 4 | 16 |
| 3.4.1.5 | Elektrizitätsverbrauch/Jahr Q_E [MJ/m²] | 100 | 80 | 80 | 40 | 120 |
| 3.4.1.6 | Reduktionsfaktor Elektrizität f_E [-] | 0.7 | 0.7 | 0.9 | 0.9 | 0.8 |
| 3.4.1.7 | Aussenluft-Volumenstrom V̇/A_E [m³/h·m²] | 0.7 | 0.7 | 0.7 | 0.7 | 1.2 |
| 4.3 | Wärmebedarf Warmwasser/Jahr Q_ww [MJ/m²] | 75 | 50 | 25 | 25 | 200 |

**Praxisrelevanz JANS:** Wer den Heizwärmebedarf eines Vorprojekts abschätzen will (Vorstufe zu
`[[grobkosten-onepager]]`/`[[healthcare-wirtschaftlichkeit]]`), kann diese Tabellenwerte als
Plausibilitäts-Check gegen ein Software-Resultat (SIA-380/1-zertifiziertes Programm, siehe
Formularliste `endk.ch`) heranziehen, statt die 11-Schritt-Rechnung von Hand zu führen.

**Re-Check ohne Delta (E44, Run 63, 2026-07-25):** die bisher nie gezielt gelesene Datei
`PL - 04 Energie/_Heizwaermebedarf/_Wärmebedarf Warmwasser SIA 380_1.pdf` ist **byte-identisch**
dieselbe Doppelseite «Tabelle 24/25» wie oben bereits vollständig erfasst (Reader "Energetische
Gesamtoptimierung" S. 108/109) — bestätigter Nicht-Fund, kein neuer Berechnungsweg für Q_ww über
die Tab.-25-Zeile 4.3 hinaus.

## 3 — Wärmeerzeugerleistung (SIA 384/1, SIA 384.201)

Getrennte Frage von Q_h: **wie gross muss der Kessel/die Wärmepumpe sein?** Zwei Wege je nach
Projektphase:

### 3a — Sanierung: aus dem Brennstoffverbrauch (SIA 384/1, Ziff. 4.3.6)

Φ_gen,out,new = (m_an · GCV / t_an) · (η_an,old / η_an,new) · η_gen,new

- m_an: jährlicher Brennstoffverbrauch (mehrjähriges Mittel, kg/m³/l) · GCV: Brennwert
  kWh/kg(m³/l) · t_an: jährliche Volllastzeit h (**2300 h** nur Heizung, **2700 h** Heizung+WW,
  bei Standorthöhe >800 m ü.M. **+300 h**) · η_an,old/new: Jahresnutzungsgrad alt/neu ·
  η_gen,new ≈ 0.5 · (1 + η_an,new).
- **Brennwerte/Nutzungsgrade belegt (Broschüre, Tab. 2.2–2.6):** Stückholz Weichholz 1'800 /
  Hartholz 2'500 kWh/Rm (η 45–75 %) · Holzschnitzel 750–1'250 kWh/Srm (η 45–75 %) · Pellets
  5.2–5.5 kWh/kg (η 65–75 %) · Heizöl EL 10.5 kWh/l (η 75–95 %) · Erdgas 10.4 kWh/m³ (η 80–95 %).
- **Nur für gleichartige Ersatzsysteme** — Systeme nicht mischen; Formel gilt für Wohnbauten
  bis ~100 kW Leistungsbedarf (nicht sehr gut gedämmt, kein hoher Glasanteil, keine
  ausgeprägte Südhanglage); sonst Messung über ~2 Wintermonate + Regressionsgerade
  (Leistungskennlinie), Zuschlag +15 % für Solargewinne.

### 3b — Neubauten: Norm-Heizlast (SIA 384.201) + Zuschläge (SIA 384/1)

Φ_gen,out = Φ_HL + Φ_W + Φ_AS

- Φ_HL Norm-Heizlast nach SIA 384.201 (raumweise Berechnung, aus Transmissions- +
  Lüftungswärmeverlusten bei Norm-Aussentemperatur, kein Wärmefluss zw. beheizten Räumen
  gerechnet).
- Φ_W Leistungszuschlag Wassererwärmung (Richtwert, aus Wärmebedarf Warmwasser SIA 380/1
  abgeleitet, Verluste ≈25 % + permanent verfügbarer Erzeuger): **MFH 3 W/m²EBF · EFH 2 W/m²EBF
  · Verwaltung 1 W/m²EBF.**
- Φ_AS Leistung verbundener Systeme (Lüftung, Prozesswärme) — fallbezogen.
- In der Regel **keine Zuschläge** zur Norm-Heizlast nötig; Wohnhäuser: Raumtemperatur bei
  tiefen Aussentemperaturen nicht absenken.

### Kontrollwerte spezifische Heizleistung (Plausibilitäts-Check, Ziff. 3.4)

Spez. Heizleistung = Norm-Heizlast / Energiebezugsfläche:

| Gebäudetyp | Kontrollwert |
|---|---|
| Bestehend, schlecht gedämmt (Wohnen) | 50–70 W/m² |
| Bestehend, gut gedämmt (Wohnen) | 40–50 W/m² |
| Neubauten nach heutigen Vorschriften | 25–40 W/m² |
| Bestehend, schlecht gedämmt (Dienstleistung) | 60–80 W/m² |
| **Minergie** | 20–30 W/m² |
| **Minergie-P** | 8–20 W/m² |

Nur ein grobes Kontrollinstrument, ersetzt die Detailrechnung nicht — aber ein schneller
Plausibilitätstest, ob ein Ingenieur-Resultat "in der richtigen Grössenordnung" liegt.

## 4 — Kurz-Verweise (kein Doppel)

- **U-Werte / Grenzwerte** (opak <0.3, besser <0.2 W/m²K; transparent <1.2 W/m²K je nach
  Verglasungsanteil) → Tiefe in `[[u-werte-grenzwerte-ch]]`. Ergänzender Grundsatz aus dem
  Reader: kompakte Bauweise + luftdicht + variabler Sonnenschutz + "Energy-Design-Guide"-Tool
  (Professur Bauphysik ETHZ) als Klimaanpassungs-Werkzeug in der Vorprojektphase.
- **Graue Energie — Grössenordnungs-Faustregel** (Reader S.116, generische Prozentverteilung,
  nicht projektspezifisch): bei gut gedämmtem **Massivbau** entfallen auf Tragstruktur 49 % /
  Wärmedämmung+Fenster+Türen 17 % / Haustechnik 18 % / Innenausbau 7 % / Baustelle 9 % der
  Grauen Energie; bei **Holzleichtbau** Tragstruktur 40 % / Hülle 27 % / Haustechnik 20 % /
  Innenausbau 9 % / Baustelle 4 %. Faustregel: die "energierelevanten" Bauteile (Dämmung/
  Fenster/Haustechnik) machen nur **5–7.5 %** der Gesamtenergie eines Gebäudes über 50 Jahre
  aus — eine Verdoppelung ihres Aufwands kann trotzdem den Gesamt-Energieverbrauch um bis 40 %
  senken (Rechenbeispiel im Original). Tiefe Methodik/ZH-Grenzwert → KB `wissen/energie`
  `[[graue-energie]]` und `[[energie-uebersicht]]` §Graue Energie (kein Doppel, hier nur die
  Faustregel als Ergänzung).

## 5 — Vollzugshilfen EN-102/VoHi-EN02 + Bauteilkatalog + CLT-Luftdichtheit (Run 34, 2026-07-13)

Ordner `PL - 04 Energie/U Wert berechnung/` — bisher nur teilweise erschlossen (nur CLT-Wärmeschutz-
Kapitel, E13). Vier weitere Dateien ausgewertet:

**EN-102-d «Wärmeschutz von Gebäuden», Vollzugshilfe Dez. 2018 (Basis SIA 380/1:2016), EnFK/
AG MuKEn** — konkretisiert SIA 380/1 für den behördlichen Vollzug (interkantonal harmonisiert,
nicht ZH-spezifisch). *(Korrektur Wissens-Chef Run 15, 25.07.2026: hier stand bis dahin «Basis
SIA 380/1:2009». Der SharePoint-Dateiname `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf` ist
irreführend — die Kopfzeile jeder Seite des PDF nennt «Ausgabe Dezember 2018 (Basis: Norm
SIA 380/1, Ausgabe 2016)». Führend für diese Vollzugshilfe ist die KB `wissen/energie`:
`destillate/enfk-en-102-waermeschutz-2018.md`.)* Delta zur bestehenden Grenzwerttabelle: (a) **separate Umbau/Umnutzung-
Grenzwerte** (opake Bauteile 0.25 statt 0.17 W/m²K Neubau; Systemnachweis 1.5-facher Neubau-
Grenzwert), bisher nicht erfasst; (b) **Wärmebrücken-Grenzwerte** Typ 1/2/3/5/6 (Ψ-/χ-Werte);
(c) **Kapitel 8 Sommerlicher Wärmeschutz** (g-Wert-Diagramme nach Orientierung, Windwiderstands-
klassen SIA 342, Verfahren 1-3 nach SIA 180) — komplett neu gegenüber der bereits dokumentierten
Winterlichen Formelkette.

> ⚠ **Editionsklärung EN-102, 24.08.2026 (Wissens-Chef Run 42, Quelle KB `energie`).** Diese
> §5-Auswertung stützt sich auf die **Vorauflage Dezember 2018**. Geltend ist die **Ausgabe
> Januar 2020** (Basis unverändert SIA 380/1:2016). Die Dez.-2018-Fassung war **kein Irrtum und
> keine Verwechslung mit EN-112 «Kühlräume»** — sie ist eine echte Vorauflage von EN-102 selbst;
> beide Ausgaben liegen nebeneinander vor (TG-Spiegel = Dez. 2018, energiehub-gebaeude.ch =
> Jan. 2020). Der Volltext-Diff zeigt: **Kapitel 2, 5, 6 und 7 sind wortgleich, kein einziger
> U-Wert- und kein Q_H,li-Grenzwert ist betroffen** — die Umbau- und Wärmebrückenwerte oben
> bleiben gültig. Geändert hat sich **ausschliesslich Kapitel 8**, also genau das oben unter
> Delta (c) zusammengefasste: **(8.1)** eine automatische Sonnenschutzsteuerung ist nur bei
> **eingebauter Kältemaschine** Pflicht; **Free-Cooling** über Erdsonde oder Grundwasser sowie
> das blosse Betreiben von Umwälz- und Förderpumpen gelten **nicht** als aktive Kühlung;
> **(8.4)** die im Ablaufdiagramm genannten Punkte sind ausdrücklich «Vereinfachungen»,
> Massstab bleibt der volle SIA-180-Nachweis. Führend: `wissen/energie/destillate/enfk-en-102-waermeschutz-2018.md`,
> Abschnitt «Zwei Ausgaben — Editionsklärung», und `wissen/energie/destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md`
> (Bauherren-Antwort F258). **Nicht** auf `wissen/energie/outputs/2026-08-24_en-102-ausgabedatum-korrektur.md`
> abstellen — jenes Dokument trägt die von der eigenen KB zurückgezogene EN-112-Begründung.

**VoHi_EN02 «Wärmeschutz von Gebäuden», Vollzugshilfe Feb. 2013 (Vorgänger von EN-102-d)** —
kein eigenständiges Delta (durch EN-102-d ersetzt, MJ/m² statt kWh/m², U-Wert-Grenzen weniger
streng 0.20 statt 0.17); nur für Altbauten mit Baubewilligung vor 2018 relevant. Einzige noch
brauchbare Zusatzregel: 3-fach-Wärmeschutzverglasung mit Ug≤0.9 gilt automatisch als U=1.3
erfüllend (Vereinfachungsregel, vermutlich implizit weitergeführt).

**«U-Wert-Berechnung und Bauteilekatalog — Neubauten» (BFE/EnergieSchweiz, Kurt Marti, 2002,
Ablösung der 1988er-Ausgabe)** — ECHTES Delta: keine reinen Grenzwerte, sondern ein **Katalog
konkreter Referenz-Schichtaufbauten** (Kap. 4, S. 25-64): Böden B1-B21, Wände W1-W7i, dazu
Dächer/Decken, je als Schnittzeichnung mit benannten Schichten (z. B. Innenputz/Backstein/
Wärmedämmung/Aussenputz; Bodenbelag/Zementueberzug/Trittschalldaemmung/Beton) UND U-Wert-Lookup-
Tabelle nach Dämmschichtdicke (6-24 cm) x λ-Wert (0.020-0.050 W/mK), inkl. hinterlüftete
Fassaden mit Wärmebrückenzuschlag. Publikation von 2002 (Grenzwerte seither verschärft), aber
die **Konstruktionslogik/Schichtfolgen bleiben als Vorprojekt-Referenzbibliothek gültig** — direkt
nützlich für schnelle Bauteilaufbau-Vorschläge, wenn noch kein Fachplaner beauftragt ist.

**CLT-Luftdichtheit/Feuchte (Stora-Enso-Dokumentation, Ergänzung zu E13, S.14-37 nach dem bereits
bekannten Wärmeschutz-Kapitel S.4-13):**
- **Luftdichtheit:** CLT-Platten sind ab **3-schichtigem Aufbau von sich aus luftdicht**
  (TU-Graz-Prüfung 2013/14 nach ÖNORM EN 12114, Plattenstösse ausserhalb des messbaren
  Volumenstrom-Bereichs) — eine zusätzliche Luftdichtheitsfolie ist in der Regel NICHT nötig,
  nur ein komprimierbares Dichtungsband an den Plattenstössen. Massgeblich ist der **n50-Wert**
  (Blower-Door): ohne RLT-Anlage 3/h, mit RLT-Anlage 1.5/h, Passivhaus 0.6/h (ÖNORM B 8110-1).
- **Feuchte:** CLT ist luftdicht, aber NICHT dampfdicht — die **Leimfugen** wirken als eigentliche
  Dampfbremse (sd-Wert = Fichtenvollholz gleicher Stärke + 26 mm Zuschlag/Lage, Quelle
  Holzforschung Austria 2008). CLT verhält sich als **feuchtevariable Dampfbremse** (diffusions-
  offener im Sommer, dichter im Winter) — reguliert aktiv die Raumluftfeuchte. Konstruktionsregel:
  sd-Wert zur Aussenfläche hin **5-10 m niedriger** als zur Konstruktionsmitte (Beispielaufbau
  hinterlüftete Fassade: Gipskarton sd=0.273 m, CLT sd=3.9 m, Aussendämmung sd=0.25 m,
  diffusionsoffene Folie sd≤0.3 m — von innen nach aussen konsequent dichter zu dünner).

**JANS-Praxisrelevanz:** bei CLT-Projekten (z. B. Biwak Grassen, E14) ist die Luftdichtheits-
Erleichterung (keine zusätzliche Folie nötig ab 3-Schicht-CLT) eine direkte Kosten-/Detail-
Vereinfachung gegenüber Holzrahmenbau; die sd-Wert-Regel (Aussenseite dünner/dichter als
Innenseite) ist beim Fassadenaufbau-Vorprojekt zu prüfen, um Tauwasserausfall zu vermeiden.

## 6 — SIA-Merkblatt 2001 Wärmedämmstoffe + JANS-Dammstoff-Auswahl + Enerhaus-Musterformular (Run 61, 2026-07-25)

Drei letzte, bisher nicht erschlossene Dateien im Ordner `U Wert berechnung/` ausgewertet:

- **SIA-Merkblatt 2001 «Wärmedämmstoffe», Ausgabe 2005** (Bemessungswerte der Wärmeleitfähigkeit
  λ_D je Dämmstoff-Typ von Herstellern/Lieferanten). **⚠ Status historisch/überholt:** die
  im Merkblatt bestätigten Nennwerte «gelten bis zum 31.12.2006» (Ziff. 0.7) — die konkreten
  Zahlenwerte sind **nicht mehr aktuell** und dürfen nicht zitiert werden. **Bleibender Wert:**
  die **methodische Definitionsebene** (Ziff. 1) ist normativ unverändert relevant — Definition
  λ (Wärmeleitfähigkeit, W/mK), ρ (Rohdichte), μ (Diffusionswiderstandszahl), c (spezifische
  Wärmekapazität), sowie das **Brandkennziffer-System BKZ** (erste Ziffer Brennbarkeitsgrad 3-6,
  zweite Ziffer Qualmgrad 1-3, «6q» = quasi nicht brennbar, Quelle VKF). Für aktuelle
  Bemessungswerte gilt SN EN 12524 bzw. die deklarierten Herstellerwerte nach SN EN ISO 10456
  (SIA 279) — nicht dieses Merkblatt.
- **`Auswahl_Waermedaemmstoffe.docx` (JANS-eigene Notiz, Raphael Jans, 01.11.2023):** knappe
  reale Produktwahl als Bauteil-Faustregel — **Boden gegen Erdreich:** Flumroc Dämmplatte DUO;
  **Wand gegen Aussenklima:** Flumroc Dämmplatte DUO/3 oder Flumroc Dämmplatte 1 (Typ H 105).
  Einzelner, knapper JANS-Praxis-Beleg (kein Herstellerdatenblatt mit λ-Wert angehängt) —
  Status `speculative` als Produktwahl-Anker, kein belegter Kennwert.
- **Enerhaus-380/1-Anwenderkurs-Musterformular (Software Enerhaus V3.2, Ausgabe 28.04.2010,
  Datensatz «Hans Willeinhaus», fiktives Übungsbeispiel):** kein realer JANS-Fall, sondern ein
  Software-Schulungsmuster — aber **strukturell nützlich als Formularvorlage**: zeigt den
  vollständigen Aufbau eines SIA-380/1-Systemnachweises (Gebäudehüllzahl A_th/A_E, Grenzwert
  vs. Projektwert vs. effektiver Heizwärmebedarf je MJ/m² und kWh/m², Bauteiltabelle mit
  Nr./Bezeichnung/U-Wert/Fläche/Verlust in MJ/kWh/%, separate Fenster/Türen-Tabelle,
  Energiebilanz-Zeile Q_T/Q_V/Q_i/Q_s/η_g/Q_h/Q_h,li/H). Nützlich als Format-Checkliste, welche
  Felder ein vollständiger EN-Nachweis mindestens enthalten muss — nicht als Kennwert-Quelle.

Alle drei Funde ergänzen §5 (Vollzugshilfen), ohne die dortigen aktuellen Grenzwerte zu
verändern. `U Wert berechnung/` damit vollständig ausgewertet (inkl. `clt/`- und
`Grassen Biwak/`-Unterordner aus E13/E14); einzige verbleibende Datei `WERKHOF29_Dossier_
Erstvermietung.pdf` (31 S., Vermietungsdossier ohne Energie-/U-Wert-Bezug) ist themenfremd
abgelegt — kein Rechercheaufwand.

## Datenstand / offen
- Quelle ist ein anonymer Fachbuch-Reader ohne durchgehend erkennbaren Titel/Autor auf den
  gescannten Seiten (Kapitel-Kopfzeile "ENERGETISCHE GESAMTOPTIMIERUNG", Seitennummern
  88–147) — vermutlich ein Kurs-/Weiterbildungs-Skript. Für eine formelle Zitierung im
  Kundendokument die **Original-SIA-Normen** (SIA 380/1:2009/2016, SIA 384/1:2009,
  SIA 384.201:2003) referenzieren, nicht den Reader.
- Gebäudekategorie-Tabelle (Tab. 24) hier nur teilweise abgetippt (Kat. VI/VII/X-XII nicht
  einzeln erfasst, nur die JANS-relevanten I/II/III/IV/VIII/IX) — bei Bedarf Screenshot erneut
  konsultieren.
- Verifikation: Formeln + Beispielrechnung wortgleich am Original nachgerechnet (Q_h Beispiel
  11.8 MJ/m² stimmt mit den Zwischenwerten Q_T/Q_V/Q_ug überein: 16.5+12.4−17.1=11.8) →
  Status `established`.
